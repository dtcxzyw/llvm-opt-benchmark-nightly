inline.NumInlined: 14179
inline.NumDeleted: 6830
begin_hunk_0_@_ZN6duckdb9RLESelectINS_9hugeint_tEEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERKNS_15SelectionVectorEm:bb.a
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !461
  %i.z = load i64, ptr %i.q, align 8, !tbaa !1677
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.z
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.aa, i64 16, i1 false), !tbaa.struct !617
  %i.ab = load i64, ptr %i.o, align 8, !tbaa !1678
  %i.ac = add i64 %i.ab, 2048                     ; 2 uses
  store i64 %i.ac, ptr %i.o, align 8, !tbaa !1678
  %i.ad = load i64, ptr %i.q, align 8, !tbaa !1677 ; 2 uses
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.ad
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !670
  %i.ag = zext i16 %i.af to i64
  %.not.i45 = icmp ult i64 %i.ac, %i.ag
  br i1 %.not.i45, label %_ZN6duckdbL15RLEScanConstantINS_9hugeint_tEEEvRNS_12RLEScanStateIT_EEPtPS3_mRNS_6VectorE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ah = add i64 %i.ad, 1
  store i64 %i.ah, ptr %i.q, align 8, !tbaa !1677
  br label %_ZN6duckdbL15RLEScanConstantINS_9hugeint_tEEEvRNS_12RLEScanStateIT_EEPtPS3_mRNS_6VectorE.exit.sink.split

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_9hugeint_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %3)
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !461
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %3, i8 noundef zeroext 0)
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN6duckdb12RLEScanStateINS_9hugeint_tEE12SkipInternalEPtm.exit56, %bb.d
  %.042.lcssa = phi i64 [ 0, %bb.d ], [ %i.bb, %_ZN6duckdb12RLEScanStateINS_9hugeint_tEE12SkipInternalEPtm.exit56 ]
  %i.ak = sub i64 %2, %.042.lcssa                 ; 2 uses
  %.not9.i = icmp eq i64 %i.ak, 0
  br i1 %.not9.i, label %_ZN6duckdbL15RLEScanConstantINS_9hugeint_tEEEvRNS_12RLEScanStateIT_EEPtPS3_mRNS_6VectorE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge
  %.promoted.i = load i64, ptr %i.q, align 8, !tbaa !1677
  %.promoted11.i = load i64, ptr %i.o, align 8, !tbaa !1678
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %.lr.ph.i
  %i.al = phi i64 [ %.promoted11.i, %.lr.ph.i ], [ %i.av, %bb.g ] ; 2 uses
  %i.am = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.aw, %bb.g ] ; 3 uses
  %.010.i = phi i64 [ %i.ak, %.lr.ph.i ], [ %i.as, %bb.g ] ; 2 uses
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.am
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !670
  %i.ap = zext i16 %i.ao to i64                   ; 2 uses
  %i.aq = sub i64 %i.ap, %i.al
  %i.ar = tail call noundef i64 @llvm.umin.i64(i64 %.010.i, i64 %i.aq) ; 2 uses
  %i.as = sub i64 %.010.i, %i.ar                  ; 2 uses
  %i.at = add i64 %i.ar, %i.al                    ; 2 uses
  %.not8.i = icmp ult i64 %i.at, %i.ap
  br i1 %.not8.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = add i64 %i.am, 1                        ; 2 uses
  store i64 %i.au, ptr %i.q, align 8, !tbaa !1677
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.av = phi i64 [ 0, %bb.f ], [ %i.at, %bb.e ]  ; 2 uses
  %i.aw = phi i64 [ %i.au, %bb.f ], [ %i.am, %bb.e ]
  %.not.i46 = icmp eq i64 %i.as, 0
  br i1 %.not.i46, label %_ZN6duckdbL15RLEScanConstantINS_9hugeint_tEEEvRNS_12RLEScanStateIT_EEPtPS3_mRNS_6VectorE.exit.sink.split, label %bb.e, !llvm.loop !1679

.lr.ph:                                           ; preds = %bb.d, %_ZN6duckdb12RLEScanStateINS_9hugeint_tEE12SkipInternalEPtm.exit56
  %.04164 = phi i64 [ %i.bz, %_ZN6duckdb12RLEScanStateINS_9hugeint_tEE12SkipInternalEPtm.exit56 ], [ 0, %bb.d ] ; 4 uses
  %.04263 = phi i64 [ %i.bb, %_ZN6duckdb12RLEScanStateINS_9hugeint_tEE12SkipInternalEPtm.exit56 ], [ 0, %bb.d ] ; 2 uses
  %i.ax = load ptr, ptr %4, align 8, !tbaa !439   ; 2 uses
  %.not.i47 = icmp eq ptr %i.ax, null
  br i1 %.not.i47, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %.04164
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !3
  %i.ba = zext i32 %i.az to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %.lr.ph, %bb.h
  %i.bb = phi i64 [ %i.ba, %bb.h ], [ %.04164, %.lr.ph ] ; 4 uses
  %i.bc = icmp ult i64 %i.bb, %.04263
  br i1 %i.bc, label %bb.i, label %bb.o

bb.i:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.bd = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.57, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.j unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_throw(ptr nonnull %i.bd, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.s unwind label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.i
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0 = phi i1 [ false, %bb.k ], [ true, %bb.j ]  ; 2 uses
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bg = load ptr, ptr %6, align 8, !tbaa !63    ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  call void @_ZdlPv(ptr noundef %i.bg) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br i1 %.0, label %bb.m, label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br i1 %.0, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn60 = phi { ptr, i32 } [ %i.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.bd) #30
  br label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn59 = phi { ptr, i32 } [ %.pn60, %bb.m ], [ %i.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn59

bb.o:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.bj = sub nuw i64 %i.bb, %.04263              ; 2 uses
  %.not9.i48 = icmp eq i64 %i.bj, 0
  %.pre = load i64, ptr %i.q, align 8, !tbaa !1677 ; 2 uses
  br i1 %.not9.i48, label %_ZN6duckdb12RLEScanStateINS_9hugeint_tEE12SkipInternalEPtm.exit56, label %.lr.ph.i49

.lr.ph.i49:                                       ; preds = %bb.o
  %.promoted11.i51 = load i64, ptr %i.o, align 8, !tbaa !1678
  br label %bb.p

bb.p:                                             ; preds = %bb.r, %.lr.ph.i49
  %i.bk = phi i64 [ %.promoted11.i51, %.lr.ph.i49 ], [ %i.bu, %bb.r ] ; 2 uses
  %i.bl = phi i64 [ %.pre, %.lr.ph.i49 ], [ %i.bv, %bb.r ] ; 3 uses
  %.010.i52 = phi i64 [ %i.bj, %.lr.ph.i49 ], [ %i.br, %bb.r ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.bl
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !670
  %i.bo = zext i16 %i.bn to i64                   ; 2 uses
  %i.bp = sub i64 %i.bo, %i.bk
  %i.bq = tail call noundef i64 @llvm.umin.i64(i64 %.010.i52, i64 %i.bp) ; 2 uses
  %i.br = sub i64 %.010.i52, %i.bq                ; 2 uses
  %i.bs = add i64 %i.bq, %i.bk                    ; 2 uses
  %.not8.i53 = icmp ult i64 %i.bs, %i.bo
  br i1 %.not8.i53, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bt = add i64 %i.bl, 1                        ; 2 uses
  store i64 %i.bt, ptr %i.q, align 8, !tbaa !1677
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bu = phi i64 [ 0, %bb.q ], [ %i.bs, %bb.p ]  ; 2 uses
  %i.bv = phi i64 [ %i.bt, %bb.q ], [ %i.bl, %bb.p ] ; 2 uses
  %.not.i54 = icmp eq i64 %i.br, 0
  br i1 %.not.i54, label %._crit_edge.i55, label %bb.p, !llvm.loop !1679

._crit_edge.i55:                                  ; preds = %bb.r
  store i64 %i.bu, ptr %i.o, align 8, !tbaa !1678
  br label %_ZN6duckdb12RLEScanStateINS_9hugeint_tEE12SkipInternalEPtm.exit56

_ZN6duckdb12RLEScanStateINS_9hugeint_tEE12SkipInternalEPtm.exit56: ; preds = %bb.o, %._crit_edge.i55
  %i.bw = phi i64 [ %.pre, %bb.o ], [ %i.bv, %._crit_edge.i55 ]
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.bw
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %.04164
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.by, ptr noundef nonnull align 8 dereferenceable(16) %i.bx, i64 16, i1 false), !tbaa.struct !617
  %i.bz = add nuw i64 %.04164, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bz, %5
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1681

_ZN6duckdbL15RLEScanConstantINS_9hugeint_tEEEvRNS_12RLEScanStateIT_EEPtPS3_mRNS_6VectorE.exit.sink.split: ; preds = %bb.g, %bb.c
  %.lcssa.sink = phi i64 [ 0, %bb.c ], [ %i.av, %bb.g ]
  store i64 %.lcssa.sink, ptr %i.o, align 8, !tbaa !1678
  br label %_ZN6duckdbL15RLEScanConstantINS_9hugeint_tEEEvRNS_12RLEScanStateIT_EEPtPS3_mRNS_6VectorE.exit

_ZN6duckdbL15RLEScanConstantINS_9hugeint_tEEEvRNS_12RLEScanStateIT_EEPtPS3_mRNS_6VectorE.exit: ; preds = %_ZN6duckdbL15RLEScanConstantINS_9hugeint_tEEEvRNS_12RLEScanStateIT_EEPtPS3_mRNS_6VectorE.exit.sink.split, %._crit_edge, %bb.b
  ret void

bb.s:                                             ; preds = %bb.k
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb9RLEFilterINS_9hugeint_tEEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERNS_15SelectionVectorERmRKNS_11TableFilterERNS_16TableFilterStateE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(284) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(9) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.duckdb::Vector", align 8    ; 8 uses
  %9 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %10 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 9 uses
  %11 = alloca %"struct.duckdb::SelectionVector", align 8 ; 8 uses
  %12 = alloca %"struct.duckdb::SelectionVector", align 8 ; 17 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.std::allocator", align 1   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.b = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_16SegmentScanStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  tail call void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !455
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !456
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.h = load i64, ptr %i.g, align 8, !tbaa !460
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.l = load i32, ptr %i.k, align 8, !tbaa !1675
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.m ; 3 uses
  %i.o = add nsw i64 %i.m, -8
  %i.p = lshr i64 %i.o, 4                         ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 5 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1096
  %.not182 = icmp eq ptr %i.r, null
  br i1 %.not182, label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit, label %bb.ad

_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.a
  %i.s = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.p) #33, !noalias !1682 ; 2 uses
  store ptr %i.s, ptr %i.q, align 8, !tbaa !1096
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.s, i8 0, i64 %i.p, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %i.t)
  invoke void @_ZN6duckdb6VectorC1ENS_11LogicalTypeEPh(ptr noundef nonnull align 8 dereferenceable(104) %8, ptr noundef nonnull %9, ptr noundef nonnull %i.j)
          to label %bb.b unwind label %bb.w

bb.b:                                             ; preds = %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %10)
          to label %bb.c unwind label %bb.x

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %8, i64 noundef %i.p, ptr noundef nonnull align 8 dereferenceable(73) %10)
          to label %bb.d unwind label %bb.y

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 3 uses
  store i64 %i.p, ptr %i.u, align 8, !tbaa !1685
  %i.v = invoke noundef i64 @_ZN6duckdb13ColumnSegment15FilterSelectionERNS_15SelectionVectorERNS_6VectorERNS_19UnifiedVectorFormatERKNS_11TableFilterERNS_16TableFilterStateEmRm(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(104) %8, ptr noundef nonnull align 8 dereferenceable(73) %10, ptr noundef nonnull align 8 dereferenceable(9) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.u)
          to label %.preheader186 unwind label %bb.z ; 0 uses

.preheader186:                                    ; preds = %bb.d
  %i.w = load i64, ptr %i.u, align 8, !tbaa !1685 ; 5 uses
  %.not217 = icmp eq i64 %i.w, 0
  br i1 %.not217, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader186
  %i.x = load ptr, ptr %11, align 8, !tbaa !439   ; 6 uses
  %.not.i153 = icmp eq ptr %i.x, null
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !1096 ; 6 uses
  br i1 %.not.i153, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader: ; preds = %.lr.ph
  %xtraiter = and i64 %i.w, 3                     ; 3 uses
  %i.z = icmp ult i64 %i.w, 4
  br i1 %i.z, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %unroll_iter = and i64 %i.w, -4
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader: ; preds = %.lr.ph
  call void @llvm.memset.p0.i64(ptr align 1 %i.y, i8 1, i64 %i.w, i1 false), !tbaa !43
  br label %._crit_edge

._crit_edge.loopexit.unr-lcssa:                   ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader: ; preds = %._crit_edge.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %.0121195.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %i.db, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod304 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod304)
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil

_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader
  %.0121195.epil = phi i64 [ %i.ae, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil ], [ %.0121195.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader ]
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.0121195.epil
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !3
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ac
  store i8 1, ptr %i.ad, align 1, !tbaa !43
  %i.ae = add nuw i64 %.0121195.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil, !llvm.loop !1686

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader, %.preheader186
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !234 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 4 uses
  %i.ai = load atomic i64, ptr %i.ah acquire, align 8 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 4294967297
  %i.ak = trunc i64 %i.ai to i32                  ; 2 uses
  br i1 %i.aj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.ah, align 8, !tbaa !235
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  store i32 0, ptr %i.al, align 4, !tbaa !237
  %i.am = load ptr, ptr %i.ag, align 8, !tbaa !48
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #30, !inline_history !241
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !48
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #30, !inline_history !241
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.as = load i8, ptr @__libc_single_threaded, align 1, !tbaa !239
  %.not.i.i.i.i.i151 = icmp eq i8 %i.as, 0
  br i1 %.not.i.i.i.i.i151, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = add nsw i32 %i.ak, -1
  store i32 %i.at, ptr %i.ah, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.au = atomicrmw volatile add ptr %i.ah, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i = phi i32 [ %i.ak, %bb.h ], [ %i.au, %bb.i ]
  %i.av = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.av, label %bb.j, label %_ZN6duckdb15SelectionVectorD2Ev.exit, !prof !67

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #30
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

_ZN6duckdb15SelectionVectorD2Ev.exit:             ; preds = %._crit_edge, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !234 ; 8 uses
  %.not.i.i.i.i.i152 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i.i152, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 4 uses
  %i.az = load atomic i64, ptr %i.ay acquire, align 8 ; 2 uses
  %i.ba = icmp eq i64 %i.az, 4294967297
  %i.bb = trunc i64 %i.az to i32                  ; 2 uses
  br i1 %i.ba, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.ay, align 8, !tbaa !235
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  store i32 0, ptr %i.bc, align 4, !tbaa !237
  %i.bd = load ptr, ptr %i.ax, align 8, !tbaa !48
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #30, !inline_history !238
  %i.bg = load ptr, ptr %i.ax, align 8, !tbaa !48
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #30, !inline_history !238
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.m:                                             ; preds = %bb.k
  %i.bj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !239
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bj, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bk = add nsw i32 %i.bb, -1
  store i32 %i.bk, ptr %i.ay, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bl = atomicrmw volatile add ptr %i.ay, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bb, %bb.n ], [ %i.bl, %bb.o ]
  %i.bm = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.bm, label %bb.p, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !67

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #30
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.l, %_ZN6duckdb15SelectionVectorD2Ev.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !234 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 4 uses
  %i.bq = load atomic i64, ptr %i.bp acquire, align 8 ; 2 uses
  %i.br = icmp eq i64 %i.bq, 4294967297
  %i.bs = trunc i64 %i.bq to i32                  ; 2 uses
  br i1 %i.br, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.bp, align 8, !tbaa !235
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  store i32 0, ptr %i.bt, align 4, !tbaa !237
  %i.bu = load ptr, ptr %i.bo, align 8, !tbaa !48
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #30, !inline_history !240
  %i.bx = load ptr, ptr %i.bo, align 8, !tbaa !48
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8
  call void %i.bz(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #30, !inline_history !240
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.s:                                             ; preds = %bb.q
  %i.ca = load i8, ptr @__libc_single_threaded, align 1, !tbaa !239
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.ca, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cb = add nsw i32 %i.bs, -1
  store i32 %i.cb, ptr %i.bp, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.u:                                             ; preds = %bb.s
  %i.cc = atomicrmw volatile add ptr %i.bp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.bs, %bb.t ], [ %i.cc, %bb.u ]
  %i.cd = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.cd, label %bb.v, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !67

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #30
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %bb.ad

bb.w:                                             ; preds = %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #30
  br label %bb.ac

bb.x:                                             ; preds = %bb.b
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.y:                                             ; preds = %bb.c
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.z:                                             ; preds = %bb.d
  %i.ch = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb15SelectionVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %bb.aa

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new
  %.0121195 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %i.db, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 5 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %niter.next.3, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ]
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.0121195
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !3
  %i.ck = zext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ck
  store i8 1, ptr %i.cl, align 1, !tbaa !43
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.0121195
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !3
  %i.cp = zext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.cp
  store i8 1, ptr %i.cq, align 1, !tbaa !43
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.0121195
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !3
  %i.cu = zext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.cu
  store i8 1, ptr %i.cv, align 1, !tbaa !43
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.0121195
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 12
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !3
  %i.cz = zext i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.cz
  store i8 1, ptr %i.da, align 1, !tbaa !43
  %i.db = add nuw i64 %.0121195, 4                ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, !llvm.loop !1687

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ch, %bb.z ], [ %i.cg, %bb.y ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %10) #30
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.x
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.aa ], [ %i.cf, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %8) #30
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.w
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.ab ], [ %i.ce, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %common.resume

bb.ad:                                            ; preds = %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, %bb.a
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !1685
  %i.de = icmp eq i64 %i.dd, 0
  br i1 %i.de, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i64 0, ptr %5, align 8, !tbaa !21
  br label %bb.bt

bb.af:                                            ; preds = %bb.ad
  call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_9hugeint_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %3)
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !461 ; 7 uses
  call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %3, i8 noundef zeroext 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  %i.dh = load i64, ptr %5, align 8, !tbaa !21
  %i.di = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.di, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %12, i64 noundef %i.dh)
          to label %_ZN6duckdb15SelectionVectorC2Em.exit unwind label %bb.ag

common.resume:                                    ; preds = %bb.ac, %bb.bu, %bb.ag
  %common.resume.op = phi { ptr, i32 } [ %i.dj, %bb.ag ], [ %.pn146.pn.pn, %bb.bu ], [ %.pn.pn.pn.pn.pn, %bb.ac ]
  resume { ptr, i32 } %common.resume.op

bb.ag:                                            ; preds = %bb.af
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.di) #30
  br label %common.resume

_ZN6duckdb15SelectionVectorC2Em.exit:             ; preds = %bb.af
  %i.dk = load ptr, ptr %4, align 8, !tbaa !439
  %.not183 = icmp eq ptr %i.dk, null
  %i.dl = load i64, ptr %5, align 8, !tbaa !21    ; 5 uses
  %.not219 = icmp eq i64 %i.dl, 0                 ; 2 uses
  br i1 %.not183, label %bb.ah, label %.preheader185

.preheader185:                                    ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit
  br i1 %.not219, label %._crit_edge200, label %.lr.ph199

.lr.ph199:                                        ; preds = %.preheader185
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  br label %bb.ao

bb.ah:                                            ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit
  br i1 %.not219, label %_ZN6duckdb12RLEScanStateINS_9hugeint_tEE12SkipInternalEPtm.exit, label %.lr.ph210

.lr.ph210:                                        ; preds = %bb.ah
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 4 uses
  %.pre234 = load i64, ptr %i.do, align 8, !tbaa !1677
  %.pre235 = load i64, ptr %i.dp, align 8, !tbaa !1678
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph210, %.loopexit
  %i.dq = phi i64 [ %.pre235, %.lr.ph210 ], [ 0, %.loopexit ] ; 4 uses
  %i.dr = phi i64 [ %.pre234, %.lr.ph210 ], [ %i.ga, %.loopexit ] ; 4 uses
  %.0123208 = phi i64 [ 0, %.lr.ph210 ], [ %.4127, %.loopexit ] ; 6 uses
  %.0133206 = phi i64 [ 0, %.lr.ph210 ], [ %i.fz, %.loopexit ] ; 10 uses
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.dr
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !670
  %i.du = zext i16 %i.dt to i64                   ; 3 uses
  %i.dv = sub i64 %i.du, %i.dq                    ; 5 uses
  %i.dw = sub nuw i64 %i.dl, %.0133206            ; 5 uses
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.dr
  %.sroa.0.0.copyload = load <2 x i64>, ptr %i.dx, align 8 ; 6 uses
  %i.dy = icmp ugt i64 %i.dv, %i.dw
  %i.dz = load ptr, ptr %i.q, align 8, !tbaa !1096
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.dr
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !43, !range !54, !noundef !55
  %i.ec = trunc nuw i8 %i.eb to i1                ; 2 uses
  br i1 %i.dy, label %bb.aj, label %bb.ak, !prof !67

bb.aj:                                            ; preds = %bb.ai
  %i.ed = icmp ne i64 %i.dl, %.0133206
  %or.cond = and i1 %i.ed, %i.ec
  br i1 %or.cond, label %.lr.ph214.preheader, label %.thread

.lr.ph214.preheader:                              ; preds = %bb.aj
  %.neg = add i64 %.0133206, 1
  %xtraiter314 = and i64 %i.dw, 1
  %i.ee = icmp eq i64 %i.dl, %.neg
  br i1 %i.ee, label %.lr.ph214.epil.preheader, label %.lr.ph214.preheader.new

.lr.ph214.preheader.new:                          ; preds = %.lr.ph214.preheader
  %unroll_iter319 = and i64 %i.dw, -2
  br label %.lr.ph214

.lr.ph214:                                        ; preds = %.lr.ph214, %.lr.ph214.preheader.new
  %.0110213 = phi i64 [ 0, %.lr.ph214.preheader.new ], [ %i.es, %.lr.ph214 ] ; 3 uses
  %.1124212 = phi i64 [ %.0123208, %.lr.ph214.preheader.new ], [ %i.er, %.lr.ph214 ] ; 3 uses
  %niter320 = phi i64 [ 0, %.lr.ph214.preheader.new ], [ %niter320.next.1, %.lr.ph214 ]
  %i.ef = add i64 %.0110213, %.0133206            ; 2 uses
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %i.dg, i64 %i.ef
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.eg, align 8
  %i.eh = trunc i64 %i.ef to i32
  %i.ei = load ptr, ptr %12, align 8, !tbaa !439
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %.1124212
  store i32 %i.eh, ptr %i.ej, align 4, !tbaa !3
  %i.ek = or disjoint i64 %.0110213, 1
  %i.el = add i64 %i.ek, %.0133206                ; 2 uses
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %i.dg, i64 %i.el
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.em, align 8
  %i.en = trunc i64 %i.el to i32
  %i.eo = load ptr, ptr %12, align 8, !tbaa !439
  %i.ep = getelementptr [4 x i8], ptr %i.eo, i64 %.1124212
  %i.eq = getelementptr i8, ptr %i.ep, i64 4
  store i32 %i.en, ptr %i.eq, align 4, !tbaa !3
  %i.er = add i64 %.1124212, 2                    ; 3 uses
  %i.es = add nuw i64 %.0110213, 2                ; 2 uses
  %niter320.next.1 = add i64 %niter320, 2         ; 2 uses
  %niter320.ncmp.1 = icmp eq i64 %niter320.next.1, %unroll_iter319
  br i1 %niter320.ncmp.1, label %.thread.loopexit.unr-lcssa, label %.lr.ph214, !llvm.loop !1688

.thread.loopexit.unr-lcssa:                       ; preds = %.lr.ph214
  %lcmp.mod316.not = icmp eq i64 %xtraiter314, 0
  br i1 %lcmp.mod316.not, label %.thread.loopexit, label %.lr.ph214.epil.preheader

.lr.ph214.epil.preheader:                         ; preds = %.thread.loopexit.unr-lcssa, %.lr.ph214.preheader
  %.0110213.epil.init = phi i64 [ 0, %.lr.ph214.preheader ], [ %i.es, %.thread.loopexit.unr-lcssa ]
  %.1124212.epil.init = phi i64 [ %.0123208, %.lr.ph214.preheader ], [ %i.er, %.thread.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod318 = trunc i64 %i.dw to i1
  call void @llvm.assume(i1 %lcmp.mod318)
  %i.et = add i64 %.0110213.epil.init, %.0133206  ; 2 uses
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr %i.dg, i64 %i.et
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.eu, align 8
  %i.ev = trunc i64 %i.et to i32
  %i.ew = load ptr, ptr %12, align 8, !tbaa !439
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %.1124212.epil.init
  store i32 %i.ev, ptr %i.ex, align 4, !tbaa !3
  %i.ey = add i64 %.1124212.epil.init, 1
  br label %.thread.loopexit

.thread.loopexit:                                 ; preds = %.thread.loopexit.unr-lcssa, %.lr.ph214.epil.preheader
  %.lcssa = phi i64 [ %i.er, %.thread.loopexit.unr-lcssa ], [ %i.ey, %.lr.ph214.epil.preheader ]
  %.pre237 = load i64, ptr %i.dp, align 8, !tbaa !1678
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.aj
  %i.ez = phi i64 [ %i.dq, %bb.aj ], [ %.pre237, %.thread.loopexit ]
  %.2125 = phi i64 [ %.0123208, %bb.aj ], [ %.lcssa, %.thread.loopexit ]
  %i.fa = add i64 %i.ez, %i.dw
  store i64 %i.fa, ptr %i.dp, align 8, !tbaa !1678
  br label %_ZN6duckdb12RLEScanStateINS_9hugeint_tEE12SkipInternalEPtm.exit

bb.ak:                                            ; preds = %bb.ai
  %i.fb = icmp ne i64 %i.dq, %i.du
  %or.cond216 = and i1 %i.fb, %i.ec
  br i1 %or.cond216, label %.lr.ph204.preheader, label %.loopexit

.lr.ph204.preheader:                              ; preds = %bb.ak
  %xtraiter305 = and i64 %i.dv, 1
  %i.fc = add nsw i64 %i.du, -1
  %i.fd = icmp eq i64 %i.dq, %i.fc
  br i1 %i.fd, label %.lr.ph204.epil.preheader, label %.lr.ph204.preheader.new

.lr.ph204.preheader.new:                          ; preds = %.lr.ph204.preheader
  %unroll_iter310 = and i64 %i.dv, -2
  br label %.lr.ph204

.lr.ph204:                                        ; preds = %.lr.ph204, %.lr.ph204.preheader.new
  %.0109203 = phi i64 [ 0, %.lr.ph204.preheader.new ], [ %i.fr, %.lr.ph204 ] ; 3 uses
  %.3126202 = phi i64 [ %.0123208, %.lr.ph204.preheader.new ], [ %i.fq, %.lr.ph204 ] ; 3 uses
  %niter311 = phi i64 [ 0, %.lr.ph204.preheader.new ], [ %niter311.next.1, %.lr.ph204 ]
  %i.fe = add i64 %.0109203, %.0133206            ; 2 uses
  %i.ff = getelementptr inbounds nuw [16 x i8], ptr %i.dg, i64 %i.fe
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.ff, align 8
  %i.fg = trunc i64 %i.fe to i32
  %i.fh = load ptr, ptr %12, align 8, !tbaa !439
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %.3126202
  store i32 %i.fg, ptr %i.fi, align 4, !tbaa !3
  %i.fj = or disjoint i64 %.0109203, 1
  %i.fk = add i64 %i.fj, %.0133206                ; 2 uses
  %i.fl = getelementptr inbounds nuw [16 x i8], ptr %i.dg, i64 %i.fk
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.fl, align 8
  %i.fm = trunc i64 %i.fk to i32
  %i.fn = load ptr, ptr %12, align 8, !tbaa !439
  %i.fo = getelementptr [4 x i8], ptr %i.fn, i64 %.3126202
  %i.fp = getelementptr i8, ptr %i.fo, i64 4
  store i32 %i.fm, ptr %i.fp, align 4, !tbaa !3
  %i.fq = add i64 %.3126202, 2                    ; 3 uses
  %i.fr = add nuw i64 %.0109203, 2                ; 2 uses
  %niter311.next.1 = add i64 %niter311, 2         ; 2 uses
  %niter311.ncmp.1 = icmp eq i64 %niter311.next.1, %unroll_iter310
  br i1 %niter311.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph204, !llvm.loop !1689

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph204
  %lcmp.mod307.not = icmp eq i64 %xtraiter305, 0
  br i1 %lcmp.mod307.not, label %.loopexit.loopexit, label %.lr.ph204.epil.preheader

.lr.ph204.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph204.preheader
  %.0109203.epil.init = phi i64 [ 0, %.lr.ph204.preheader ], [ %i.fr, %.loopexit.loopexit.unr-lcssa ]
  %.3126202.epil.init = phi i64 [ %.0123208, %.lr.ph204.preheader ], [ %i.fq, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod309 = trunc i64 %i.dv to i1
  call void @llvm.assume(i1 %lcmp.mod309)
  %i.fs = add i64 %.0109203.epil.init, %.0133206  ; 2 uses
  %i.ft = getelementptr inbounds nuw [16 x i8], ptr %i.dg, i64 %i.fs
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.ft, align 8
  %i.fu = trunc i64 %i.fs to i32
  %i.fv = load ptr, ptr %12, align 8, !tbaa !439
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %.3126202.epil.init
  store i32 %i.fu, ptr %i.fw, align 4, !tbaa !3
  %i.fx = add i64 %.3126202.epil.init, 1
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph204.epil.preheader
  %.lcssa290 = phi i64 [ %i.fq, %.loopexit.loopexit.unr-lcssa ], [ %i.fx, %.lr.ph204.epil.preheader ]
  %.pre236 = load i64, ptr %i.do, align 8, !tbaa !1677
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.ak
  %i.fy = phi i64 [ %i.dr, %bb.ak ], [ %.pre236, %.loopexit.loopexit ]
  %.4127 = phi i64 [ %.0123208, %bb.ak ], [ %.lcssa290, %.loopexit.loopexit ] ; 2 uses
  %i.fz = add i64 %i.dv, %.0133206                ; 2 uses
  %i.ga = add i64 %i.fy, 1                        ; 2 uses
  store i64 %i.ga, ptr %i.do, align 8, !tbaa !1677
  store i64 0, ptr %i.dp, align 8, !tbaa !1678
  %i.gb = icmp ult i64 %i.fz, %i.dl
  br i1 %i.gb, label %bb.ai, label %_ZN6duckdb12RLEScanStateINS_9hugeint_tEE12SkipInternalEPtm.exit

._crit_edge200:                                   ; preds = %bb.ba, %.preheader185
  %.7130.lcssa = phi i64 [ 0, %.preheader185 ], [ %.8131, %bb.ba ] ; 2 uses
  %.0108.lcssa = phi i64 [ 0, %.preheader185 ], [ %i.gv, %bb.ba ]
  %i.gc = sub i64 %2, %.0108.lcssa                ; 2 uses
  %.not9.i = icmp eq i64 %i.gc, 0
  br i1 %.not9.i, label %_ZN6duckdb12RLEScanStateINS_9hugeint_tEE12SkipInternalEPtm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge200
  %i.gd = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %.promoted.i = load i64, ptr %i.gd, align 8, !tbaa !1677
  %.promoted11.i = load i64, ptr %i.ge, align 8, !tbaa !1678
  br label %bb.al

bb.al:                                            ; preds = %bb.an, %.lr.ph.i
  %i.gf = phi i64 [ %.promoted11.i, %.lr.ph.i ], [ %i.gp, %bb.an ] ; 2 uses
  %i.gg = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.gq, %bb.an ] ; 3 uses
  %.010.i = phi i64 [ %i.gc, %.lr.ph.i ], [ %i.gm, %bb.an ] ; 2 uses
  %i.gh = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.gg
  %i.gi = load i16, ptr %i.gh, align 2, !tbaa !670
  %i.gj = zext i16 %i.gi to i64                   ; 2 uses
  %i.gk = sub i64 %i.gj, %i.gf
  %i.gl = call noundef i64 @llvm.umin.i64(i64 %.010.i, i64 %i.gk) ; 2 uses
  %i.gm = sub i64 %.010.i, %i.gl                  ; 2 uses
  %i.gn = add i64 %i.gl, %i.gf                    ; 2 uses
  %.not8.i = icmp ult i64 %i.gn, %i.gj
  br i1 %.not8.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.go = add i64 %i.gg, 1                        ; 2 uses
  store i64 %i.go, ptr %i.gd, align 8, !tbaa !1677
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.gp = phi i64 [ 0, %bb.am ], [ %i.gn, %bb.al ] ; 2 uses
  %i.gq = phi i64 [ %i.go, %bb.am ], [ %i.gg, %bb.al ]
  %.not.i154 = icmp eq i64 %i.gm, 0
  br i1 %.not.i154, label %._crit_edge.i, label %bb.al, !llvm.loop !1679

._crit_edge.i:                                    ; preds = %bb.an
  store i64 %i.gp, ptr %i.ge, align 8, !tbaa !1678
  br label %_ZN6duckdb12RLEScanStateINS_9hugeint_tEE12SkipInternalEPtm.exit

bb.ao:                                            ; preds = %.lr.ph199, %bb.ba
  %.0107198 = phi i64 [ 0, %.lr.ph199 ], [ %i.ib, %bb.ba ] ; 3 uses
  %.0108197 = phi i64 [ 0, %.lr.ph199 ], [ %i.gv, %bb.ba ] ; 2 uses
  %.7130196 = phi i64 [ 0, %.lr.ph199 ], [ %.8131, %bb.ba ] ; 3 uses
  %i.gr = load ptr, ptr %4, align 8, !tbaa !439   ; 2 uses
  %.not.i155 = icmp eq ptr %i.gr, null
  br i1 %.not.i155, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit156, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %.0107198
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !3
  %i.gu = zext i32 %i.gt to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit156

_ZNK6duckdb15SelectionVector9get_indexEm.exit156: ; preds = %bb.ap, %bb.ao
  %i.gv = phi i64 [ %i.gu, %bb.ap ], [ %.0107198, %bb.ao ] ; 6 uses
  %i.gw = icmp ult i64 %i.gv, %.0108197
  br i1 %i.gw, label %bb.aq, label %bb.av

bb.aq:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit156
  %i.gx = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.58, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.ar unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.gx, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.as unwind label %bb.at

bb.as:                                            ; preds = %bb.ar
  invoke void @__cxa_throw(ptr nonnull %i.gx, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.bv unwind label %bb.at

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.aq
  %i.gy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br label %bb.au

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.0 = phi i1 [ false, %bb.as ], [ true, %bb.ar ] ; 2 uses
  %i.gz = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ha = load ptr, ptr %13, align 8, !tbaa !63   ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.hc = icmp eq ptr %i.ha, %i.hb
  br i1 %i.hc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.at
  call void @_ZdlPv(ptr noundef %i.ha) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br i1 %.0, label %bb.au, label %bb.bu

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br i1 %.0, label %bb.au, label %bb.bu

bb.au:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn146181 = phi { ptr, i32 } [ %i.gy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.gz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.gz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.gx) #30
  br label %bb.bu

bb.av:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit156
  %i.hd = sub nuw i64 %i.gv, %.0108197            ; 2 uses
  %.not9.i157 = icmp eq i64 %i.hd, 0
  %.pre = load i64, ptr %i.dm, align 8, !tbaa !1677 ; 2 uses
  br i1 %.not9.i157, label %_ZN6duckdb12RLEScanStateINS_9hugeint_tEE12SkipInternalEPtm.exit165, label %.lr.ph.i158

.lr.ph.i158:                                      ; preds = %bb.av
  %.promoted11.i160 = load i64, ptr %i.dn, align 8, !tbaa !1678
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ay, %.lr.ph.i158
  %i.he = phi i64 [ %.promoted11.i160, %.lr.ph.i158 ], [ %i.ho, %bb.ay ] ; 2 uses
  %i.hf = phi i64 [ %.pre, %.lr.ph.i158 ], [ %i.hp, %bb.ay ] ; 3 uses
  %.010.i161 = phi i64 [ %i.hd, %.lr.ph.i158 ], [ %i.hl, %bb.ay ] ; 2 uses
  %i.hg = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.hf
  %i.hh = load i16, ptr %i.hg, align 2, !tbaa !670
  %i.hi = zext i16 %i.hh to i64                   ; 2 uses
  %i.hj = sub i64 %i.hi, %i.he
  %i.hk = call noundef i64 @llvm.umin.i64(i64 %.010.i161, i64 %i.hj) ; 2 uses
  %i.hl = sub i64 %.010.i161, %i.hk               ; 2 uses
  %i.hm = add i64 %i.hk, %i.he                    ; 2 uses
  %.not8.i162 = icmp ult i64 %i.hm, %i.hi
  br i1 %.not8.i162, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hn = add i64 %i.hf, 1                        ; 2 uses
  store i64 %i.hn, ptr %i.dm, align 8, !tbaa !1677
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.ho = phi i64 [ 0, %bb.ax ], [ %i.hm, %bb.aw ] ; 2 uses
  %i.hp = phi i64 [ %i.hn, %bb.ax ], [ %i.hf, %bb.aw ] ; 2 uses
  %.not.i163 = icmp eq i64 %i.hl, 0
  br i1 %.not.i163, label %._crit_edge.i164, label %bb.aw, !llvm.loop !1679

._crit_edge.i164:                                 ; preds = %bb.ay
  store i64 %i.ho, ptr %i.dn, align 8, !tbaa !1678
  br label %_ZN6duckdb12RLEScanStateINS_9hugeint_tEE12SkipInternalEPtm.exit165

_ZN6duckdb12RLEScanStateINS_9hugeint_tEE12SkipInternalEPtm.exit165: ; preds = %bb.av, %._crit_edge.i164
  %i.hq = phi i64 [ %.pre, %bb.av ], [ %i.hp, %._crit_edge.i164 ] ; 2 uses
  %i.hr = load ptr, ptr %i.q, align 8, !tbaa !1096
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 %i.hq
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !43, !range !54, !noundef !55
  %i.hu = trunc nuw i8 %i.ht to i1
  br i1 %i.hu, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %_ZN6duckdb12RLEScanStateINS_9hugeint_tEE12SkipInternalEPtm.exit165
  %i.hv = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.hq
  %i.hw = getelementptr inbounds nuw [16 x i8], ptr %i.dg, i64 %i.gv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hw, ptr noundef nonnull align 8 dereferenceable(16) %i.hv, i64 16, i1 false), !tbaa.struct !617
  %i.hx = trunc i64 %i.gv to i32
  %i.hy = load ptr, ptr %12, align 8, !tbaa !439
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %.7130196
  store i32 %i.hx, ptr %i.hz, align 4, !tbaa !3
  %i.ia = add i64 %.7130196, 1
  br label %bb.ba

bb.ba:                                            ; preds = %_ZN6duckdb12RLEScanStateINS_9hugeint_tEE12SkipInternalEPtm.exit165, %bb.az
  %.8131 = phi i64 [ %i.ia, %bb.az ], [ %.7130196, %_ZN6duckdb12RLEScanStateINS_9hugeint_tEE12SkipInternalEPtm.exit165 ] ; 2 uses
  %i.ib = add nuw i64 %.0107198, 1                ; 2 uses
  %i.ic = load i64, ptr %5, align 8, !tbaa !21
  %i.id = icmp ult i64 %i.ib, %i.ic
  br i1 %i.id, label %bb.ao, label %._crit_edge200, !llvm.loop !1690

_ZN6duckdb12RLEScanStateINS_9hugeint_tEE12SkipInternalEPtm.exit: ; preds = %.loopexit, %bb.ah, %._crit_edge.i, %._crit_edge200, %.thread
  %.9132 = phi i64 [ %.7130.lcssa, %._crit_edge.i ], [ %.2125, %.thread ], [ %.7130.lcssa, %._crit_edge200 ], [ 0, %bb.ah ], [ %.4127, %.loopexit ] ; 2 uses
  %i.ie = load i64, ptr %5, align 8, !tbaa !21
  %.not = icmp eq i64 %.9132, %i.ie
  br i1 %.not, label %bb.bm, label %bb.bb

bb.bb:                                            ; preds = %_ZN6duckdb12RLEScanStateINS_9hugeint_tEE12SkipInternalEPtm.exit
  %i.if = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ig = icmp eq ptr %4, %12
  br i1 %i.ig, label %_ZN6duckdb15SelectionVector10InitializeERKS0_.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ih = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !234 ; 2 uses
  %i.ij = load <2 x ptr>, ptr %i.di, align 8, !tbaa !443
  %.not.i.i.i.i.i.i166 = icmp eq ptr %i.ii, null
  br i1 %.not.i.i.i.i.i.i166, label %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ii, i64 8 ; 3 uses
  %i.il = load i8, ptr @__libc_single_threaded, align 1, !tbaa !239
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.il, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.im = load i32, ptr %i.ik, align 4, !tbaa !3
  %i.in = add nsw i32 %i.im, 1
  store i32 %i.in, ptr %i.ik, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i

bb.bf:                                            ; preds = %bb.bd
  %i.io = atomicrmw volatile add ptr %i.ik, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i

_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i: ; preds = %bb.bf, %bb.be, %bb.bc
  %i.ip = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !234 ; 8 uses
  store <2 x ptr> %i.ij, ptr %i.if, align 8, !tbaa !443
  %.not.i.i.i.i.i167 = icmp eq ptr %i.iq, null
  br i1 %.not.i.i.i.i.i167, label %_ZN6duckdb15SelectionVector10InitializeERKS0_.exit, label %bb.bg

bb.bg:                                            ; preds = %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 8 ; 4 uses
  %i.is = load atomic i64, ptr %i.ir acquire, align 8 ; 2 uses
  %i.it = icmp eq i64 %i.is, 4294967297
  %i.iu = trunc i64 %i.is to i32                  ; 2 uses
  br i1 %i.it, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  store i32 0, ptr %i.ir, align 8, !tbaa !235
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iq, i64 12
  store i32 0, ptr %i.iv, align 4, !tbaa !237
  %i.iw = load ptr, ptr %i.iq, align 8, !tbaa !48
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  %i.iy = load ptr, ptr %i.ix, align 8
  call void %i.iy(ptr noundef nonnull align 8 dereferenceable(16) %i.iq) #30, !inline_history !1104
  %i.iz = load ptr, ptr %i.iq, align 8, !tbaa !48
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 24
  %i.jb = load ptr, ptr %i.ja, align 8
  call void %i.jb(ptr noundef nonnull align 8 dereferenceable(16) %i.iq) #30, !inline_history !1104
  br label %_ZN6duckdb15SelectionVector10InitializeERKS0_.exit

bb.bi:                                            ; preds = %bb.bg
  %i.jc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !239
  %.not.i.i.i.i5.i.i = icmp eq i8 %i.jc, 0
  br i1 %.not.i.i.i.i5.i.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.jd = add nsw i32 %i.iu, -1
  store i32 %i.jd, ptr %i.ir, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i168

bb.bk:                                            ; preds = %bb.bi
  %i.je = atomicrmw volatile add ptr %i.ir, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i168

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i168: ; preds = %bb.bk, %bb.bj
  %.0.i.i.i.i.i.i.i169 = phi i32 [ %i.iu, %bb.bj ], [ %i.je, %bb.bk ]
  %i.jf = icmp eq i32 %.0.i.i.i.i.i.i.i169, 1
  br i1 %i.jf, label %bb.bl, label %_ZN6duckdb15SelectionVector10InitializeERKS0_.exit, !prof !67

bb.bl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i168
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.iq) #30
  br label %_ZN6duckdb15SelectionVector10InitializeERKS0_.exit

_ZN6duckdb15SelectionVector10InitializeERKS0_.exit: ; preds = %bb.bb, %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i, %bb.bh, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i168, %bb.bl
  %i.jg = load ptr, ptr %12, align 8, !tbaa !439
  store ptr %i.jg, ptr %4, align 8, !tbaa !439
  store i64 %.9132, ptr %5, align 8, !tbaa !21
  br label %bb.bm

bb.bm:                                            ; preds = %_ZN6duckdb15SelectionVector10InitializeERKS0_.exit, %_ZN6duckdb12RLEScanStateINS_9hugeint_tEE12SkipInternalEPtm.exit
  %i.jh = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !234 ; 8 uses
  %.not.i.i.i.i170 = icmp eq ptr %i.ji, null
  br i1 %.not.i.i.i.i170, label %_ZN6duckdb15SelectionVectorD2Ev.exit174, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 8 ; 4 uses
  %i.jk = load atomic i64, ptr %i.jj acquire, align 8 ; 2 uses
  %i.jl = icmp eq i64 %i.jk, 4294967297
  %i.jm = trunc i64 %i.jk to i32                  ; 2 uses
  br i1 %i.jl, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  store i32 0, ptr %i.jj, align 8, !tbaa !235
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ji, i64 12
  store i32 0, ptr %i.jn, align 4, !tbaa !237
  %i.jo = load ptr, ptr %i.ji, align 8, !tbaa !48
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 16
  %i.jq = load ptr, ptr %i.jp, align 8
  call void %i.jq(ptr noundef nonnull align 8 dereferenceable(16) %i.ji) #30, !inline_history !241
  %i.jr = load ptr, ptr %i.ji, align 8, !tbaa !48
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 24
  %i.jt = load ptr, ptr %i.js, align 8
  call void %i.jt(ptr noundef nonnull align 8 dereferenceable(16) %i.ji) #30, !inline_history !241
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit174

bb.bp:                                            ; preds = %bb.bn
  %i.ju = load i8, ptr @__libc_single_threaded, align 1, !tbaa !239
  %.not.i.i.i.i.i171 = icmp eq i8 %i.ju, 0
  br i1 %.not.i.i.i.i.i171, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.jv = add nsw i32 %i.jm, -1
  store i32 %i.jv, ptr %i.jj, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i172

end_hunk_0
begin_hunk_1_@_ZN6duckdb16RLECompressStateINS_9hugeint_tELb1EE10WriteValueES1_tb:bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  store i8 1, ptr %i.aa, align 8, !tbaa !575
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ab = zext i16 %3 to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = call noundef ptr @_ZNK6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ac)
  %i.ae = atomicrmw add ptr %i.ad, i64 %i.ab seq_cst, align 8 ; 0 uses
  %i.af = load i64, ptr %i.j, align 8, !tbaa !1691
  %i.ag = load i64, ptr %i.f, align 8, !tbaa !1694
  %i.ah = icmp eq i64 %i.af, %i.ag
  br i1 %i.ah, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZN6duckdb16RLECompressStateINS_9hugeint_tELb1EE12FlushSegmentEv(ptr noundef nonnull align 8 dereferenceable(128) %0)
  call void @_ZN6duckdb16RLECompressStateINS_9hugeint_tELb1EE18CreateEmptySegmentEv(ptr noundef nonnull align 8 dereferenceable(128) %0)
  store i64 0, ptr %i.j, align 8, !tbaa !1691
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb16RLECompressStateINS_9hugeint_tELb1EE12FlushSegmentEv(ptr noundef nonnull align 8 dereferenceable(128) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.duckdb::unique_ptr.183", align 8 ; 4 uses
  %2 = alloca %"class.duckdb::BufferHandle", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1691 ; 2 uses
  %i.c = shl i64 %i.b, 1                          ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1694
  %i.f = shl i64 %i.e, 4
  %i.g = shl i64 %i.b, 4
  %i.h = or disjoint i64 %i.g, 8                  ; 3 uses
  %i.i = add i64 %i.h, %i.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !455
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !456  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.h
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull align 1 %i.q, i64 %i.c, i1 false)
  store i64 %i.h, ptr %i.n, align 1
  tail call void @_ZN6duckdb12BufferHandle7DestroyEv(ptr noundef nonnull align 8 dereferenceable(24) %i.j)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1695, !nonnull !55, !align !133
  %i.t = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZN6duckdb24ColumnDataCheckpointData18GetCheckpointStateEv(ptr noundef nonnull align 8 dereferenceable(40) %i.s) ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !218
  store i64 %i.v, ptr %1, align 8, !tbaa !218
  store ptr null, ptr %i.u, align 8, !tbaa !218
  call void @_ZN6duckdb12BufferHandleC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.j) #30
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !48
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.y = load ptr, ptr %i.x, align 8
  invoke void %i.y(ptr noundef nonnull align 8 dereferenceable(88) %i.t, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef %i.i)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #30
  %i.z = load ptr, ptr %1, align 8, !tbaa !218    ; 3 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb13ColumnSegmentESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i: ; preds = %bb.b
  call void @_ZN6duckdb13ColumnSegmentD1Ev(ptr noundef nonnull align 8 dereferenceable(240) %i.z) #30
  call void @_ZdlPv(ptr noundef nonnull %i.z) #32
  br label %_ZNSt10unique_ptrIN6duckdb13ColumnSegmentESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb13ColumnSegmentESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i
  ret void

bb.c:                                             ; preds = %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #30
  call void @_ZNSt10unique_ptrIN6duckdb13ColumnSegmentESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #30
  resume { ptr, i32 } %i.aa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb12RLEScanStateINS_9hugeint_tEEC2ERNS_13ColumnSegmentE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(240) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::BufferHandle", align 8 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb12RLEScanStateINS_9hugeint_tEEE, i64 16), ptr %0, align 8, !tbaa !48
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @_ZN6duckdb12BufferHandleC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !248
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb13BufferManager16GetBufferManagerERNS_16DatabaseInstanceE(ptr noundef nonnull align 1 %i.d)
          to label %bb.b unwind label %bb.e       ; 2 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !48
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.i = load ptr, ptr %i.h, align 8
  invoke void %i.i(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::BufferHandle") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.j = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb12BufferHandleaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2) #30 ; 0 uses
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  invoke void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !455
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !456
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.q = load i64, ptr %i.p, align 8, !tbaa !460
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.q
  %.0.copyload.i = load i64, ptr %i.r, align 1
  %i.s = trunc i64 %.0.copyload.i to i32
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.s, ptr %i.t, align 8, !tbaa !1675
  ret void

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.u, %bb.e ], [ %i.v, %bb.f ]
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !1096 ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.w) #32
  br label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.g, %_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #30
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb12RLEScanStateINS_9hugeint_tEED2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb12RLEScanStateINS_9hugeint_tEEE, i64 16), ptr %0, align 8, !tbaa !48
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1096 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #32
  br label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #30
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb12RLEScanStateINS_9hugeint_tEED0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb12RLEScanStateINS_9hugeint_tEEE, i64 16), ptr %0, align 8, !tbaa !48
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1096 ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN6duckdb12RLEScanStateINS_9hugeint_tEED2Ev.exit, label %_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i

_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i: ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #32, !inline_history !1680
  br label %_ZN6duckdb12RLEScanStateINS_9hugeint_tEED2Ev.exit

_ZN6duckdb12RLEScanStateINS_9hugeint_tEED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #30, !inline_history !1680
  tail call void @_ZdlPv(ptr noundef nonnull %0) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb22RLEScanPartialInternalINS_9hugeint_tELb1EEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(284) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.b = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_16SegmentScanStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  tail call void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !455
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !456
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.h = load i64, ptr %i.g, align 8, !tbaa !460
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.l = load i32, ptr %i.k, align 8, !tbaa !1675
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.m ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 8 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !1678
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 7 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1677
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.r
  %i.t = load i16, ptr %i.s, align 2, !tbaa !670
  %i.u = zext i16 %i.t to i64
  %.not.i = icmp eq i64 %2, 2048
  %i.v = sub i64 %i.u, %i.p
  %i.w = icmp ugt i64 %i.v, 2047
  %.0.i = and i1 %.not.i, %i.w
  br i1 %.0.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %3, i8 noundef zeroext 2)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_9hugeint_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %3)
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !461
  %i.z = load i64, ptr %i.q, align 8, !tbaa !1677
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.z
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.aa, i64 16, i1 false), !tbaa.struct !617
  %i.ab = load i64, ptr %i.o, align 8, !tbaa !1678
  %i.ac = add i64 %i.ab, 2048                     ; 2 uses
  store i64 %i.ac, ptr %i.o, align 8, !tbaa !1678
  %i.ad = load i64, ptr %i.q, align 8, !tbaa !1677 ; 2 uses
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.ad
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !670
  %i.ag = zext i16 %i.af to i64
  %.not.i54 = icmp ult i64 %i.ac, %i.ag
  br i1 %.not.i54, label %_ZN6duckdbL15RLEScanConstantINS_9hugeint_tEEEvRNS_12RLEScanStateIT_EEPtPS3_mRNS_6VectorE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ah = add i64 %i.ad, 1
  store i64 %i.ah, ptr %i.q, align 8, !tbaa !1677
  store i64 0, ptr %i.o, align 8, !tbaa !1678
  br label %_ZN6duckdbL15RLEScanConstantINS_9hugeint_tEEEvRNS_12RLEScanStateIT_EEPtPS3_mRNS_6VectorE.exit

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_9hugeint_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %3)
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !461 ; 2 uses
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %3, i8 noundef zeroext 0)
  %i.ak = add i64 %4, %2                          ; 4 uses
  %i.al = icmp ult i64 %4, %i.ak
  br i1 %i.al, label %.lr.ph62.preheader, label %_ZN6duckdbL15RLEScanConstantINS_9hugeint_tEEEvRNS_12RLEScanStateIT_EEPtPS3_mRNS_6VectorE.exit

.lr.ph62.preheader:                               ; preds = %bb.d
  %.pre = load i64, ptr %i.q, align 8, !tbaa !1677
  %.pre69 = load i64, ptr %i.o, align 8, !tbaa !1678
  br label %.lr.ph62

.lr.ph62:                                         ; preds = %.lr.ph62.preheader, %._crit_edge
  %i.am = phi i64 [ 0, %._crit_edge ], [ %.pre69, %.lr.ph62.preheader ] ; 4 uses
  %i.an = phi i64 [ %i.ca, %._crit_edge ], [ %.pre, %.lr.ph62.preheader ] ; 3 uses
  %.04960 = phi i64 [ %i.bz, %._crit_edge ], [ %4, %.lr.ph62.preheader ] ; 6 uses
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.an
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !670
  %i.aq = zext i16 %i.ap to i64                   ; 3 uses
  %i.ar = sub i64 %i.aq, %i.am                    ; 4 uses
  %i.as = sub nuw i64 %i.ak, %.04960              ; 4 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.an
  %.sroa.0.0.copyload = load <2 x i64>, ptr %i.at, align 8 ; 10 uses
  %i.au = icmp ugt i64 %i.ar, %i.as
  br i1 %i.au, label %.preheader, label %.preheader57, !prof !67

.preheader57:                                     ; preds = %.lr.ph62
  %.not = icmp eq i64 %i.am, %i.aq
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader57
  %i.av = getelementptr [16 x i8], ptr %i.aj, i64 %.04960 ; 5 uses
  %xtraiter = and i64 %i.ar, 3                    ; 3 uses
  %i.aw = sub i64 %i.am, %i.aq
  %i.ax = icmp ugt i64 %i.aw, -4
  br i1 %i.ax, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.ar, -4
  br label %bb.g

.preheader:                                       ; preds = %.lr.ph62
  %.not65 = icmp eq i64 %i.ak, %.04960
  br i1 %.not65, label %.thread, label %.lr.ph64

.lr.ph64:                                         ; preds = %.preheader
  %i.ay = getelementptr [16 x i8], ptr %i.aj, i64 %.04960 ; 5 uses
  %i.az = add i64 %4, %2
  %xtraiter92 = and i64 %i.as, 3                  ; 3 uses
  %i.ba = sub i64 %.04960, %i.az
  %i.bb = icmp ugt i64 %i.ba, -4
  br i1 %i.bb, label %.epil.preheader89, label %.lr.ph64.new

.lr.ph64.new:                                     ; preds = %.lr.ph64
  %unroll_iter96 = and i64 %i.as, -4
  br label %bb.f

.thread.loopexit.unr-lcssa:                       ; preds = %bb.f
  %lcmp.mod94.not = icmp eq i64 %xtraiter92, 0
  br i1 %lcmp.mod94.not, label %.thread.loopexit, label %.epil.preheader89

.epil.preheader89:                                ; preds = %.thread.loopexit.unr-lcssa, %.lr.ph64
  %.04863.epil.init = phi i64 [ 0, %.lr.ph64 ], [ %i.bn, %.thread.loopexit.unr-lcssa ]
  %lcmp.mod95 = icmp ne i64 %xtraiter92, 0
  tail call void @llvm.assume(i1 %lcmp.mod95)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader89
  %.04863.epil = phi i64 [ %.04863.epil.init, %.epil.preheader89 ], [ %i.bd, %bb.e ] ; 2 uses
  %epil.iter93 = phi i64 [ 0, %.epil.preheader89 ], [ %epil.iter93.next, %bb.e ]
  %i.bc = getelementptr [16 x i8], ptr %i.ay, i64 %.04863.epil
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.bc, align 8
  %i.bd = add nuw i64 %.04863.epil, 1
  %epil.iter93.next = add i64 %epil.iter93, 1     ; 2 uses
  %epil.iter93.cmp.not = icmp eq i64 %epil.iter93.next, %xtraiter92
  br i1 %epil.iter93.cmp.not, label %.thread.loopexit, label %bb.e, !llvm.loop !1698

.thread.loopexit:                                 ; preds = %bb.e, %.thread.loopexit.unr-lcssa
  %.pre71 = load i64, ptr %i.o, align 8, !tbaa !1678
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %.preheader
  %i.be = phi i64 [ %.pre71, %.thread.loopexit ], [ %i.am, %.preheader ]
  %i.bf = add i64 %i.be, %i.as
  store i64 %i.bf, ptr %i.o, align 8, !tbaa !1678
  br label %_ZN6duckdbL15RLEScanConstantINS_9hugeint_tEEEvRNS_12RLEScanStateIT_EEPtPS3_mRNS_6VectorE.exit

bb.f:                                             ; preds = %bb.f, %.lr.ph64.new
  %.04863 = phi i64 [ 0, %.lr.ph64.new ], [ %i.bn, %bb.f ] ; 5 uses
  %niter97 = phi i64 [ 0, %.lr.ph64.new ], [ %niter97.next.3, %bb.f ]
  %i.bg = getelementptr [16 x i8], ptr %i.ay, i64 %.04863
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.bg, align 8
  %i.bh = getelementptr [16 x i8], ptr %i.ay, i64 %.04863
  %i.bi = getelementptr i8, ptr %i.bh, i64 16
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.bi, align 8
  %i.bj = getelementptr [16 x i8], ptr %i.ay, i64 %.04863
  %i.bk = getelementptr i8, ptr %i.bj, i64 32
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.bk, align 8
  %i.bl = getelementptr [16 x i8], ptr %i.ay, i64 %.04863
  %i.bm = getelementptr i8, ptr %i.bl, i64 48
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.bm, align 8
  %i.bn = add nuw i64 %.04863, 4                  ; 2 uses
  %niter97.next.3 = add i64 %niter97, 4           ; 2 uses
  %niter97.ncmp.3 = icmp eq i64 %niter97.next.3, %unroll_iter96
  br i1 %niter97.ncmp.3, label %.thread.loopexit.unr-lcssa, label %bb.f, !llvm.loop !1699

bb.g:                                             ; preds = %bb.g, %.lr.ph.new
  %.059 = phi i64 [ 0, %.lr.ph.new ], [ %i.bv, %bb.g ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.g ]
  %i.bo = getelementptr [16 x i8], ptr %i.av, i64 %.059
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.bo, align 8
  %i.bp = getelementptr [16 x i8], ptr %i.av, i64 %.059
  %i.bq = getelementptr i8, ptr %i.bp, i64 16
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.bq, align 8
  %i.br = getelementptr [16 x i8], ptr %i.av, i64 %.059
  %i.bs = getelementptr i8, ptr %i.br, i64 32
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.bs, align 8
  %i.bt = getelementptr [16 x i8], ptr %i.av, i64 %.059
  %i.bu = getelementptr i8, ptr %i.bt, i64 48
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.bu, align 8
  %i.bv = add nuw i64 %.059, 4                    ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.g, !llvm.loop !1700

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.059.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.bv, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod88 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod88)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %.059.epil = phi i64 [ %.059.epil.init, %.epil.preheader ], [ %i.bx, %bb.h ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.h ]
  %i.bw = getelementptr [16 x i8], ptr %i.av, i64 %.059.epil
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.bw, align 8
  %i.bx = add nuw i64 %.059.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit, label %bb.h, !llvm.loop !1701

._crit_edge.loopexit:                             ; preds = %bb.h, %._crit_edge.loopexit.unr-lcssa
  %.pre70 = load i64, ptr %i.q, align 8, !tbaa !1677
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader57
  %i.by = phi i64 [ %.pre70, %._crit_edge.loopexit ], [ %i.an, %.preheader57 ]
  %i.bz = add i64 %i.ar, %.04960                  ; 2 uses
  %i.ca = add i64 %i.by, 1                        ; 2 uses
  store i64 %i.ca, ptr %i.q, align 8, !tbaa !1677
  store i64 0, ptr %i.o, align 8, !tbaa !1678
  %i.cb = icmp ult i64 %i.bz, %i.ak
  br i1 %i.cb, label %.lr.ph62, label %_ZN6duckdbL15RLEScanConstantINS_9hugeint_tEEEvRNS_12RLEScanStateIT_EEPtPS3_mRNS_6VectorE.exit

_ZN6duckdbL15RLEScanConstantINS_9hugeint_tEEEvRNS_12RLEScanStateIT_EEPtPS3_mRNS_6VectorE.exit: ; preds = %._crit_edge, %bb.d, %.thread, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb22RLEScanPartialInternalINS_9hugeint_tELb0EEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(284) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.b = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_16SegmentScanStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  tail call void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !455
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !456
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.h = load i64, ptr %i.g, align 8, !tbaa !460
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.l = load i32, ptr %i.k, align 8, !tbaa !1675
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_9hugeint_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %3)
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !461  ; 2 uses
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %3, i8 noundef zeroext 0)
  %i.s = add i64 %4, %2                           ; 4 uses
  %i.t = icmp ult i64 %4, %i.s
  br i1 %i.t, label %.lr.ph61.preheader, label %.loopexit

.lr.ph61.preheader:                               ; preds = %bb.a
  %.pre = load i64, ptr %i.p, align 8, !tbaa !1677
  %.pre68 = load i64, ptr %i.o, align 8, !tbaa !1678
  br label %.lr.ph61

.lr.ph61:                                         ; preds = %.lr.ph61.preheader, %._crit_edge
  %i.u = phi i64 [ 0, %._crit_edge ], [ %.pre68, %.lr.ph61.preheader ] ; 4 uses
  %i.v = phi i64 [ %i.bi, %._crit_edge ], [ %.pre, %.lr.ph61.preheader ] ; 3 uses
  %.04959 = phi i64 [ %i.bh, %._crit_edge ], [ %4, %.lr.ph61.preheader ] ; 6 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.v
  %i.x = load i16, ptr %i.w, align 2, !tbaa !670
  %i.y = zext i16 %i.x to i64                     ; 3 uses
  %i.z = sub i64 %i.y, %i.u                       ; 4 uses
  %i.aa = sub nuw i64 %i.s, %.04959               ; 4 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.v
  %.sroa.0.0.copyload = load <2 x i64>, ptr %i.ab, align 8 ; 10 uses
  %i.ac = icmp ugt i64 %i.z, %i.aa
  br i1 %i.ac, label %.preheader, label %.preheader56, !prof !67

.preheader56:                                     ; preds = %.lr.ph61
  %.not = icmp eq i64 %i.u, %i.y
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader56
  %i.ad = getelementptr [16 x i8], ptr %i.r, i64 %.04959 ; 5 uses
  %xtraiter = and i64 %i.z, 3                     ; 3 uses
  %i.ae = sub i64 %i.u, %i.y
  %i.af = icmp ugt i64 %i.ae, -4
  br i1 %i.af, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.z, -4
  br label %bb.d

.preheader:                                       ; preds = %.lr.ph61
  %.not64 = icmp eq i64 %i.s, %.04959
  br i1 %.not64, label %.thread, label %.lr.ph63

.lr.ph63:                                         ; preds = %.preheader
  %i.ag = getelementptr [16 x i8], ptr %i.r, i64 %.04959 ; 5 uses
  %i.ah = add i64 %4, %2
  %xtraiter91 = and i64 %i.aa, 3                  ; 3 uses
  %i.ai = sub i64 %.04959, %i.ah
  %i.aj = icmp ugt i64 %i.ai, -4
  br i1 %i.aj, label %.epil.preheader88, label %.lr.ph63.new

.lr.ph63.new:                                     ; preds = %.lr.ph63
  %unroll_iter95 = and i64 %i.aa, -4
  br label %bb.c

.thread.loopexit.unr-lcssa:                       ; preds = %bb.c
  %lcmp.mod93.not = icmp eq i64 %xtraiter91, 0
  br i1 %lcmp.mod93.not, label %.thread.loopexit, label %.epil.preheader88

.epil.preheader88:                                ; preds = %.thread.loopexit.unr-lcssa, %.lr.ph63
  %.04862.epil.init = phi i64 [ 0, %.lr.ph63 ], [ %i.av, %.thread.loopexit.unr-lcssa ]
  %lcmp.mod94 = icmp ne i64 %xtraiter91, 0
  tail call void @llvm.assume(i1 %lcmp.mod94)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader88
  %.04862.epil = phi i64 [ %.04862.epil.init, %.epil.preheader88 ], [ %i.al, %bb.b ] ; 2 uses
  %epil.iter92 = phi i64 [ 0, %.epil.preheader88 ], [ %epil.iter92.next, %bb.b ]
  %i.ak = getelementptr [16 x i8], ptr %i.ag, i64 %.04862.epil
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.ak, align 8
  %i.al = add nuw i64 %.04862.epil, 1
  %epil.iter92.next = add i64 %epil.iter92, 1     ; 2 uses
  %epil.iter92.cmp.not = icmp eq i64 %epil.iter92.next, %xtraiter91
  br i1 %epil.iter92.cmp.not, label %.thread.loopexit, label %bb.b, !llvm.loop !1702

.thread.loopexit:                                 ; preds = %bb.b, %.thread.loopexit.unr-lcssa
  %.pre70 = load i64, ptr %i.o, align 8, !tbaa !1678
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %.preheader
  %i.am = phi i64 [ %.pre70, %.thread.loopexit ], [ %i.u, %.preheader ]
  %i.an = add i64 %i.am, %i.aa
  store i64 %i.an, ptr %i.o, align 8, !tbaa !1678
  br label %.loopexit

bb.c:                                             ; preds = %bb.c, %.lr.ph63.new
  %.04862 = phi i64 [ 0, %.lr.ph63.new ], [ %i.av, %bb.c ] ; 5 uses
  %niter96 = phi i64 [ 0, %.lr.ph63.new ], [ %niter96.next.3, %bb.c ]
  %i.ao = getelementptr [16 x i8], ptr %i.ag, i64 %.04862
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.ao, align 8
  %i.ap = getelementptr [16 x i8], ptr %i.ag, i64 %.04862
  %i.aq = getelementptr i8, ptr %i.ap, i64 16
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.aq, align 8
  %i.ar = getelementptr [16 x i8], ptr %i.ag, i64 %.04862
  %i.as = getelementptr i8, ptr %i.ar, i64 32
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.as, align 8
  %i.at = getelementptr [16 x i8], ptr %i.ag, i64 %.04862
  %i.au = getelementptr i8, ptr %i.at, i64 48
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.au, align 8
  %i.av = add nuw i64 %.04862, 4                  ; 2 uses
  %niter96.next.3 = add i64 %niter96, 4           ; 2 uses
  %niter96.ncmp.3 = icmp eq i64 %niter96.next.3, %unroll_iter95
  br i1 %niter96.ncmp.3, label %.thread.loopexit.unr-lcssa, label %bb.c, !llvm.loop !1703

bb.d:                                             ; preds = %bb.d, %.lr.ph.new
  %.058 = phi i64 [ 0, %.lr.ph.new ], [ %i.bd, %bb.d ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.d ]
  %i.aw = getelementptr [16 x i8], ptr %i.ad, i64 %.058
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.aw, align 8
  %i.ax = getelementptr [16 x i8], ptr %i.ad, i64 %.058
  %i.ay = getelementptr i8, ptr %i.ax, i64 16
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.ay, align 8
  %i.az = getelementptr [16 x i8], ptr %i.ad, i64 %.058
  %i.ba = getelementptr i8, ptr %i.az, i64 32
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.ba, align 8
  %i.bb = getelementptr [16 x i8], ptr %i.ad, i64 %.058
  %i.bc = getelementptr i8, ptr %i.bb, i64 48
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.bc, align 8
  %i.bd = add nuw i64 %.058, 4                    ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.d, !llvm.loop !1704

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.058.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.bd, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod87 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod87)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %.058.epil = phi i64 [ %.058.epil.init, %.epil.preheader ], [ %i.bf, %bb.e ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.be = getelementptr [16 x i8], ptr %i.ad, i64 %.058.epil
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.be, align 8
  %i.bf = add nuw i64 %.058.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit, label %bb.e, !llvm.loop !1705

._crit_edge.loopexit:                             ; preds = %bb.e, %._crit_edge.loopexit.unr-lcssa
  %.pre69 = load i64, ptr %i.p, align 8, !tbaa !1677
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader56
  %i.bg = phi i64 [ %.pre69, %._crit_edge.loopexit ], [ %i.v, %.preheader56 ]
  %i.bh = add i64 %i.z, %.04959                   ; 2 uses
  %i.bi = add i64 %i.bg, 1                        ; 2 uses
  store i64 %i.bi, ptr %i.p, align 8, !tbaa !1677
  store i64 0, ptr %i.o, align 8, !tbaa !1678
  %i.bj = icmp ult i64 %i.bh, %i.s
  br i1 %i.bj, label %.lr.ph61, label %.loopexit

.loopexit:                                        ; preds = %._crit_edge, %bb.a, %.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb14RLEInitAnalyzeINS_10uhugeint_tEEENS_10unique_ptrINS_12AnalyzeStateESt14default_deleteIS3_ELb1EEERNS_10ColumnDataENS_12PhysicalTypeE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.121") align 8 %0, ptr noundef nonnull align 8 dereferenceable(296) %1, i8 noundef zeroext %2) #1 comdat personality ptr @__gxx_personality_v0 {
_ZNSt10unique_ptrIN6duckdb15RLEAnalyzeStateINS0_10uhugeint_tEEESt14default_deleteIS3_EED2Ev.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !86, !nonnull !55, !align !133
  %i.c = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #33, !noalias !1706 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = ptrtoint ptr %i.b to i64
  store i64 %i.e, ptr %i.d, align 8, !tbaa !137, !noalias !1706
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb15RLEAnalyzeStateINS_10uhugeint_tEEE, i64 16), ptr %i.c, align 8, !tbaa !48, !noalias !1706
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr null, ptr %i.g, align 8, !tbaa !1709, !noalias !1706
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %i.f, i8 0, i64 26, i1 false), !noalias !1706
  store i8 1, ptr %i.h, align 8, !tbaa !1712, !noalias !1706
  store ptr %i.c, ptr %0, align 8, !tbaa !142
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6duckdb10RLEAnalyzeINS_10uhugeint_tEEEbRNS_12AnalyzeStateERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2) #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %3)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.b unwind label %bb.o

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_10uhugeint_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %_ZN6duckdb19UnifiedVectorFormat7GetDataINS_10uhugeint_tEEEPKT_RKS0_.exit unwind label %bb.p

_ZN6duckdb19UnifiedVectorFormat7GetDataINS_10uhugeint_tEEEPKT_RKS0_.exit: ; preds = %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !429
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6duckdb19UnifiedVectorFormat7GetDataINS_10uhugeint_tEEEPKT_RKS0_.exit
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  br label %bb.q

._crit_edge:                                      ; preds = %_ZN6duckdb8RLEStateINS_10uhugeint_tEE6UpdateINS_14EmptyRLEWriterEEEvPKS1_RNS_12ValidityMaskEm.exit, %_ZN6duckdb19UnifiedVectorFormat7GetDataINS_10uhugeint_tEEEPKT_RKS0_.exit
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !234  ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.j, align 8, !tbaa !235
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !237
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !48
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #30, !inline_history !238
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !48
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #30, !inline_history !238
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.e:                                             ; preds = %bb.c
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !239
  %.not.i.i.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.m, %bb.f ], [ %i.w, %bb.g ]
  %i.x = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.x, label %bb.h, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !67

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #30
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.d, %._crit_edge
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !234  ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 4 uses
  %i.ab = load atomic i64, ptr %i.aa acquire, align 8 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 4294967297
  %i.ad = trunc i64 %i.ab to i32                  ; 2 uses
  br i1 %i.ac, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.aa, align 8, !tbaa !235
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  store i32 0, ptr %i.ae, align 4, !tbaa !237
  %i.af = load ptr, ptr %i.z, align 8, !tbaa !48
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #30, !inline_history !240
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !48
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #30, !inline_history !240
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.al = load i8, ptr @__libc_single_threaded, align 1, !tbaa !239
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.al, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = add nsw i32 %i.ad, -1
  store i32 %i.am, ptr %i.aa, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.m:                                             ; preds = %bb.k
  %i.an = atomicrmw volatile add ptr %i.aa, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.ad, %bb.l ], [ %i.an, %bb.m ]
  %i.ao = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.ao, label %bb.n, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !67

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #30
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret i1 true

bb.o:                                             ; preds = %bb.a
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.p:                                             ; preds = %bb.b
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.q:                                             ; preds = %.lr.ph, %_ZN6duckdb8RLEStateINS_10uhugeint_tEE6UpdateINS_14EmptyRLEWriterEEEvPKS1_RNS_12ValidityMaskEm.exit
  %.01117 = phi i64 [ 0, %.lr.ph ], [ %i.bw, %_ZN6duckdb8RLEStateINS_10uhugeint_tEE6UpdateINS_14EmptyRLEWriterEEEvPKS1_RNS_12ValidityMaskEm.exit ] ; 3 uses
  %i.ar = load ptr, ptr %3, align 8, !tbaa !438
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !439 ; 2 uses
  %.not.i = icmp eq ptr %i.as, null
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %.01117
  %i.au = load i32, ptr %i.at, align 4, !tbaa !3
  %i.av = zext i32 %i.au to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.r, %bb.q
  %i.aw = phi i64 [ %i.av, %bb.r ], [ %.01117, %bb.q ] ; 3 uses
  %i.ax = load ptr, ptr %i.d, align 8, !tbaa !11  ; 2 uses
  %.not.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.ay = lshr i64 %i.aw, 6
  %i.az = and i64 %i.aw, 63
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.ay
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !21
  %i.bc = shl nuw i64 1, %i.az
  %i.bd = and i64 %i.bb, %i.bc
  %.not9.i = icmp eq i64 %i.bd, 0
  br i1 %.not9.i, label %bb.x, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.be = load i8, ptr %i.f, align 8, !tbaa !1712, !range !54, !noundef !55
  %i.bf = trunc nuw i8 %i.be to i1
end_hunk_1
begin_hunk_2_@_ZN6duckdb9RLESelectINS_10uhugeint_tEEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERKNS_15SelectionVectorEm:bb.a
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !461
  %i.z = load i64, ptr %i.q, align 8, !tbaa !1727
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.z
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.aa, i64 16, i1 false), !tbaa.struct !617
  %i.ab = load i64, ptr %i.o, align 8, !tbaa !1728
  %i.ac = add i64 %i.ab, 2048                     ; 2 uses
  store i64 %i.ac, ptr %i.o, align 8, !tbaa !1728
  %i.ad = load i64, ptr %i.q, align 8, !tbaa !1727 ; 2 uses
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.ad
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !670
  %i.ag = zext i16 %i.af to i64
  %.not.i45 = icmp ult i64 %i.ac, %i.ag
  br i1 %.not.i45, label %_ZN6duckdbL15RLEScanConstantINS_10uhugeint_tEEEvRNS_12RLEScanStateIT_EEPtPS3_mRNS_6VectorE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ah = add i64 %i.ad, 1
  store i64 %i.ah, ptr %i.q, align 8, !tbaa !1727
  br label %_ZN6duckdbL15RLEScanConstantINS_10uhugeint_tEEEvRNS_12RLEScanStateIT_EEPtPS3_mRNS_6VectorE.exit.sink.split

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10uhugeint_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %3)
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !461
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %3, i8 noundef zeroext 0)
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN6duckdb12RLEScanStateINS_10uhugeint_tEE12SkipInternalEPtm.exit56, %bb.d
  %.042.lcssa = phi i64 [ 0, %bb.d ], [ %i.bb, %_ZN6duckdb12RLEScanStateINS_10uhugeint_tEE12SkipInternalEPtm.exit56 ]
  %i.ak = sub i64 %2, %.042.lcssa                 ; 2 uses
  %.not9.i = icmp eq i64 %i.ak, 0
  br i1 %.not9.i, label %_ZN6duckdbL15RLEScanConstantINS_10uhugeint_tEEEvRNS_12RLEScanStateIT_EEPtPS3_mRNS_6VectorE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge
  %.promoted.i = load i64, ptr %i.q, align 8, !tbaa !1727
  %.promoted11.i = load i64, ptr %i.o, align 8, !tbaa !1728
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %.lr.ph.i
  %i.al = phi i64 [ %.promoted11.i, %.lr.ph.i ], [ %i.av, %bb.g ] ; 2 uses
  %i.am = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.aw, %bb.g ] ; 3 uses
  %.010.i = phi i64 [ %i.ak, %.lr.ph.i ], [ %i.as, %bb.g ] ; 2 uses
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.am
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !670
  %i.ap = zext i16 %i.ao to i64                   ; 2 uses
  %i.aq = sub i64 %i.ap, %i.al
  %i.ar = tail call noundef i64 @llvm.umin.i64(i64 %.010.i, i64 %i.aq) ; 2 uses
  %i.as = sub i64 %.010.i, %i.ar                  ; 2 uses
  %i.at = add i64 %i.ar, %i.al                    ; 2 uses
  %.not8.i = icmp ult i64 %i.at, %i.ap
  br i1 %.not8.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = add i64 %i.am, 1                        ; 2 uses
  store i64 %i.au, ptr %i.q, align 8, !tbaa !1727
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.av = phi i64 [ 0, %bb.f ], [ %i.at, %bb.e ]  ; 2 uses
  %i.aw = phi i64 [ %i.au, %bb.f ], [ %i.am, %bb.e ]
  %.not.i46 = icmp eq i64 %i.as, 0
  br i1 %.not.i46, label %_ZN6duckdbL15RLEScanConstantINS_10uhugeint_tEEEvRNS_12RLEScanStateIT_EEPtPS3_mRNS_6VectorE.exit.sink.split, label %bb.e, !llvm.loop !1729

.lr.ph:                                           ; preds = %bb.d, %_ZN6duckdb12RLEScanStateINS_10uhugeint_tEE12SkipInternalEPtm.exit56
  %.04164 = phi i64 [ %i.bz, %_ZN6duckdb12RLEScanStateINS_10uhugeint_tEE12SkipInternalEPtm.exit56 ], [ 0, %bb.d ] ; 4 uses
  %.04263 = phi i64 [ %i.bb, %_ZN6duckdb12RLEScanStateINS_10uhugeint_tEE12SkipInternalEPtm.exit56 ], [ 0, %bb.d ] ; 2 uses
  %i.ax = load ptr, ptr %4, align 8, !tbaa !439   ; 2 uses
  %.not.i47 = icmp eq ptr %i.ax, null
  br i1 %.not.i47, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %.04164
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !3
  %i.ba = zext i32 %i.az to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %.lr.ph, %bb.h
  %i.bb = phi i64 [ %i.ba, %bb.h ], [ %.04164, %.lr.ph ] ; 4 uses
  %i.bc = icmp ult i64 %i.bb, %.04263
  br i1 %i.bc, label %bb.i, label %bb.o

bb.i:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.bd = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.57, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.j unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_throw(ptr nonnull %i.bd, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.s unwind label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.i
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0 = phi i1 [ false, %bb.k ], [ true, %bb.j ]  ; 2 uses
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bg = load ptr, ptr %6, align 8, !tbaa !63    ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  call void @_ZdlPv(ptr noundef %i.bg) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br i1 %.0, label %bb.m, label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br i1 %.0, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn60 = phi { ptr, i32 } [ %i.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.bd) #30
  br label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn59 = phi { ptr, i32 } [ %.pn60, %bb.m ], [ %i.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn59

bb.o:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.bj = sub nuw i64 %i.bb, %.04263              ; 2 uses
  %.not9.i48 = icmp eq i64 %i.bj, 0
  %.pre = load i64, ptr %i.q, align 8, !tbaa !1727 ; 2 uses
  br i1 %.not9.i48, label %_ZN6duckdb12RLEScanStateINS_10uhugeint_tEE12SkipInternalEPtm.exit56, label %.lr.ph.i49

.lr.ph.i49:                                       ; preds = %bb.o
  %.promoted11.i51 = load i64, ptr %i.o, align 8, !tbaa !1728
  br label %bb.p

bb.p:                                             ; preds = %bb.r, %.lr.ph.i49
  %i.bk = phi i64 [ %.promoted11.i51, %.lr.ph.i49 ], [ %i.bu, %bb.r ] ; 2 uses
  %i.bl = phi i64 [ %.pre, %.lr.ph.i49 ], [ %i.bv, %bb.r ] ; 3 uses
  %.010.i52 = phi i64 [ %i.bj, %.lr.ph.i49 ], [ %i.br, %bb.r ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.bl
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !670
  %i.bo = zext i16 %i.bn to i64                   ; 2 uses
  %i.bp = sub i64 %i.bo, %i.bk
  %i.bq = tail call noundef i64 @llvm.umin.i64(i64 %.010.i52, i64 %i.bp) ; 2 uses
  %i.br = sub i64 %.010.i52, %i.bq                ; 2 uses
  %i.bs = add i64 %i.bq, %i.bk                    ; 2 uses
  %.not8.i53 = icmp ult i64 %i.bs, %i.bo
  br i1 %.not8.i53, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bt = add i64 %i.bl, 1                        ; 2 uses
  store i64 %i.bt, ptr %i.q, align 8, !tbaa !1727
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bu = phi i64 [ 0, %bb.q ], [ %i.bs, %bb.p ]  ; 2 uses
  %i.bv = phi i64 [ %i.bt, %bb.q ], [ %i.bl, %bb.p ] ; 2 uses
  %.not.i54 = icmp eq i64 %i.br, 0
  br i1 %.not.i54, label %._crit_edge.i55, label %bb.p, !llvm.loop !1729

._crit_edge.i55:                                  ; preds = %bb.r
  store i64 %i.bu, ptr %i.o, align 8, !tbaa !1728
  br label %_ZN6duckdb12RLEScanStateINS_10uhugeint_tEE12SkipInternalEPtm.exit56

_ZN6duckdb12RLEScanStateINS_10uhugeint_tEE12SkipInternalEPtm.exit56: ; preds = %bb.o, %._crit_edge.i55
  %i.bw = phi i64 [ %.pre, %bb.o ], [ %i.bv, %._crit_edge.i55 ]
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.bw
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %.04164
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.by, ptr noundef nonnull align 8 dereferenceable(16) %i.bx, i64 16, i1 false), !tbaa.struct !617
  %i.bz = add nuw i64 %.04164, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bz, %5
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1731

_ZN6duckdbL15RLEScanConstantINS_10uhugeint_tEEEvRNS_12RLEScanStateIT_EEPtPS3_mRNS_6VectorE.exit.sink.split: ; preds = %bb.g, %bb.c
  %.lcssa.sink = phi i64 [ 0, %bb.c ], [ %i.av, %bb.g ]
  store i64 %.lcssa.sink, ptr %i.o, align 8, !tbaa !1728
  br label %_ZN6duckdbL15RLEScanConstantINS_10uhugeint_tEEEvRNS_12RLEScanStateIT_EEPtPS3_mRNS_6VectorE.exit

_ZN6duckdbL15RLEScanConstantINS_10uhugeint_tEEEvRNS_12RLEScanStateIT_EEPtPS3_mRNS_6VectorE.exit: ; preds = %_ZN6duckdbL15RLEScanConstantINS_10uhugeint_tEEEvRNS_12RLEScanStateIT_EEPtPS3_mRNS_6VectorE.exit.sink.split, %._crit_edge, %bb.b
  ret void

bb.s:                                             ; preds = %bb.k
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb9RLEFilterINS_10uhugeint_tEEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERNS_15SelectionVectorERmRKNS_11TableFilterERNS_16TableFilterStateE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(284) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(9) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.duckdb::Vector", align 8    ; 8 uses
  %9 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %10 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 9 uses
  %11 = alloca %"struct.duckdb::SelectionVector", align 8 ; 8 uses
  %12 = alloca %"struct.duckdb::SelectionVector", align 8 ; 17 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.std::allocator", align 1   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.b = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_16SegmentScanStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  tail call void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !455
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !456
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.h = load i64, ptr %i.g, align 8, !tbaa !460
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.l = load i32, ptr %i.k, align 8, !tbaa !1725
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.m ; 3 uses
  %i.o = add nsw i64 %i.m, -8
  %i.p = lshr i64 %i.o, 4                         ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 5 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1096
  %.not182 = icmp eq ptr %i.r, null
  br i1 %.not182, label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit, label %bb.ad

_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.a
  %i.s = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.p) #33, !noalias !1732 ; 2 uses
  store ptr %i.s, ptr %i.q, align 8, !tbaa !1096
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.s, i8 0, i64 %i.p, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %i.t)
  invoke void @_ZN6duckdb6VectorC1ENS_11LogicalTypeEPh(ptr noundef nonnull align 8 dereferenceable(104) %8, ptr noundef nonnull %9, ptr noundef nonnull %i.j)
          to label %bb.b unwind label %bb.w

bb.b:                                             ; preds = %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %10)
          to label %bb.c unwind label %bb.x

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %8, i64 noundef %i.p, ptr noundef nonnull align 8 dereferenceable(73) %10)
          to label %bb.d unwind label %bb.y

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 3 uses
  store i64 %i.p, ptr %i.u, align 8, !tbaa !1735
  %i.v = invoke noundef i64 @_ZN6duckdb13ColumnSegment15FilterSelectionERNS_15SelectionVectorERNS_6VectorERNS_19UnifiedVectorFormatERKNS_11TableFilterERNS_16TableFilterStateEmRm(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(104) %8, ptr noundef nonnull align 8 dereferenceable(73) %10, ptr noundef nonnull align 8 dereferenceable(9) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.u)
          to label %.preheader186 unwind label %bb.z ; 0 uses

.preheader186:                                    ; preds = %bb.d
  %i.w = load i64, ptr %i.u, align 8, !tbaa !1735 ; 5 uses
  %.not217 = icmp eq i64 %i.w, 0
  br i1 %.not217, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader186
  %i.x = load ptr, ptr %11, align 8, !tbaa !439   ; 6 uses
  %.not.i153 = icmp eq ptr %i.x, null
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !1096 ; 6 uses
  br i1 %.not.i153, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader: ; preds = %.lr.ph
  %xtraiter = and i64 %i.w, 3                     ; 3 uses
  %i.z = icmp ult i64 %i.w, 4
  br i1 %i.z, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %unroll_iter = and i64 %i.w, -4
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader: ; preds = %.lr.ph
  call void @llvm.memset.p0.i64(ptr align 1 %i.y, i8 1, i64 %i.w, i1 false), !tbaa !43
  br label %._crit_edge

._crit_edge.loopexit.unr-lcssa:                   ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader: ; preds = %._crit_edge.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %.0121195.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %i.db, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod304 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod304)
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil

_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader
  %.0121195.epil = phi i64 [ %i.ae, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil ], [ %.0121195.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader ]
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.0121195.epil
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !3
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ac
  store i8 1, ptr %i.ad, align 1, !tbaa !43
  %i.ae = add nuw i64 %.0121195.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil, !llvm.loop !1736

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader, %.preheader186
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !234 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 4 uses
  %i.ai = load atomic i64, ptr %i.ah acquire, align 8 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 4294967297
  %i.ak = trunc i64 %i.ai to i32                  ; 2 uses
  br i1 %i.aj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.ah, align 8, !tbaa !235
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  store i32 0, ptr %i.al, align 4, !tbaa !237
  %i.am = load ptr, ptr %i.ag, align 8, !tbaa !48
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #30, !inline_history !241
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !48
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #30, !inline_history !241
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.as = load i8, ptr @__libc_single_threaded, align 1, !tbaa !239
  %.not.i.i.i.i.i151 = icmp eq i8 %i.as, 0
  br i1 %.not.i.i.i.i.i151, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = add nsw i32 %i.ak, -1
  store i32 %i.at, ptr %i.ah, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.au = atomicrmw volatile add ptr %i.ah, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i = phi i32 [ %i.ak, %bb.h ], [ %i.au, %bb.i ]
  %i.av = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.av, label %bb.j, label %_ZN6duckdb15SelectionVectorD2Ev.exit, !prof !67

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #30
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

_ZN6duckdb15SelectionVectorD2Ev.exit:             ; preds = %._crit_edge, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !234 ; 8 uses
  %.not.i.i.i.i.i152 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i.i152, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 4 uses
  %i.az = load atomic i64, ptr %i.ay acquire, align 8 ; 2 uses
  %i.ba = icmp eq i64 %i.az, 4294967297
  %i.bb = trunc i64 %i.az to i32                  ; 2 uses
  br i1 %i.ba, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.ay, align 8, !tbaa !235
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  store i32 0, ptr %i.bc, align 4, !tbaa !237
  %i.bd = load ptr, ptr %i.ax, align 8, !tbaa !48
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #30, !inline_history !238
  %i.bg = load ptr, ptr %i.ax, align 8, !tbaa !48
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #30, !inline_history !238
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.m:                                             ; preds = %bb.k
  %i.bj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !239
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bj, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bk = add nsw i32 %i.bb, -1
  store i32 %i.bk, ptr %i.ay, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bl = atomicrmw volatile add ptr %i.ay, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bb, %bb.n ], [ %i.bl, %bb.o ]
  %i.bm = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.bm, label %bb.p, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !67

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #30
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.l, %_ZN6duckdb15SelectionVectorD2Ev.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !234 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 4 uses
  %i.bq = load atomic i64, ptr %i.bp acquire, align 8 ; 2 uses
  %i.br = icmp eq i64 %i.bq, 4294967297
  %i.bs = trunc i64 %i.bq to i32                  ; 2 uses
  br i1 %i.br, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.bp, align 8, !tbaa !235
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  store i32 0, ptr %i.bt, align 4, !tbaa !237
  %i.bu = load ptr, ptr %i.bo, align 8, !tbaa !48
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #30, !inline_history !240
  %i.bx = load ptr, ptr %i.bo, align 8, !tbaa !48
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8
  call void %i.bz(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #30, !inline_history !240
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.s:                                             ; preds = %bb.q
  %i.ca = load i8, ptr @__libc_single_threaded, align 1, !tbaa !239
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.ca, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cb = add nsw i32 %i.bs, -1
  store i32 %i.cb, ptr %i.bp, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.u:                                             ; preds = %bb.s
  %i.cc = atomicrmw volatile add ptr %i.bp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.bs, %bb.t ], [ %i.cc, %bb.u ]
  %i.cd = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.cd, label %bb.v, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !67

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #30
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %bb.ad

bb.w:                                             ; preds = %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #30
  br label %bb.ac

bb.x:                                             ; preds = %bb.b
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.y:                                             ; preds = %bb.c
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.z:                                             ; preds = %bb.d
  %i.ch = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb15SelectionVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %bb.aa

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new
  %.0121195 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %i.db, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 5 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %niter.next.3, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ]
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.0121195
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !3
  %i.ck = zext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ck
  store i8 1, ptr %i.cl, align 1, !tbaa !43
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.0121195
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !3
  %i.cp = zext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.cp
  store i8 1, ptr %i.cq, align 1, !tbaa !43
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.0121195
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !3
  %i.cu = zext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.cu
  store i8 1, ptr %i.cv, align 1, !tbaa !43
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.0121195
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 12
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !3
  %i.cz = zext i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.cz
  store i8 1, ptr %i.da, align 1, !tbaa !43
  %i.db = add nuw i64 %.0121195, 4                ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, !llvm.loop !1737

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ch, %bb.z ], [ %i.cg, %bb.y ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %10) #30
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.x
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.aa ], [ %i.cf, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %8) #30
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.w
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.ab ], [ %i.ce, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %common.resume

bb.ad:                                            ; preds = %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, %bb.a
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !1735
  %i.de = icmp eq i64 %i.dd, 0
  br i1 %i.de, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i64 0, ptr %5, align 8, !tbaa !21
  br label %bb.bt

bb.af:                                            ; preds = %bb.ad
  call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10uhugeint_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %3)
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !461 ; 7 uses
  call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %3, i8 noundef zeroext 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  %i.dh = load i64, ptr %5, align 8, !tbaa !21
  %i.di = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.di, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %12, i64 noundef %i.dh)
          to label %_ZN6duckdb15SelectionVectorC2Em.exit unwind label %bb.ag

common.resume:                                    ; preds = %bb.ac, %bb.bu, %bb.ag
  %common.resume.op = phi { ptr, i32 } [ %i.dj, %bb.ag ], [ %.pn146.pn.pn, %bb.bu ], [ %.pn.pn.pn.pn.pn, %bb.ac ]
  resume { ptr, i32 } %common.resume.op

bb.ag:                                            ; preds = %bb.af
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.di) #30
  br label %common.resume

_ZN6duckdb15SelectionVectorC2Em.exit:             ; preds = %bb.af
  %i.dk = load ptr, ptr %4, align 8, !tbaa !439
  %.not183 = icmp eq ptr %i.dk, null
  %i.dl = load i64, ptr %5, align 8, !tbaa !21    ; 5 uses
  %.not219 = icmp eq i64 %i.dl, 0                 ; 2 uses
  br i1 %.not183, label %bb.ah, label %.preheader185

.preheader185:                                    ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit
  br i1 %.not219, label %._crit_edge200, label %.lr.ph199

.lr.ph199:                                        ; preds = %.preheader185
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  br label %bb.ao

bb.ah:                                            ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit
  br i1 %.not219, label %_ZN6duckdb12RLEScanStateINS_10uhugeint_tEE12SkipInternalEPtm.exit, label %.lr.ph210

.lr.ph210:                                        ; preds = %bb.ah
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 4 uses
  %.pre234 = load i64, ptr %i.do, align 8, !tbaa !1727
  %.pre235 = load i64, ptr %i.dp, align 8, !tbaa !1728
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph210, %.loopexit
  %i.dq = phi i64 [ %.pre235, %.lr.ph210 ], [ 0, %.loopexit ] ; 4 uses
  %i.dr = phi i64 [ %.pre234, %.lr.ph210 ], [ %i.ga, %.loopexit ] ; 4 uses
  %.0123208 = phi i64 [ 0, %.lr.ph210 ], [ %.4127, %.loopexit ] ; 6 uses
  %.0133206 = phi i64 [ 0, %.lr.ph210 ], [ %i.fz, %.loopexit ] ; 10 uses
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.dr
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !670
  %i.du = zext i16 %i.dt to i64                   ; 3 uses
  %i.dv = sub i64 %i.du, %i.dq                    ; 5 uses
  %i.dw = sub nuw i64 %i.dl, %.0133206            ; 5 uses
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.dr
  %.sroa.0.0.copyload = load <2 x i64>, ptr %i.dx, align 8 ; 6 uses
  %i.dy = icmp ugt i64 %i.dv, %i.dw
  %i.dz = load ptr, ptr %i.q, align 8, !tbaa !1096
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.dr
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !43, !range !54, !noundef !55
  %i.ec = trunc nuw i8 %i.eb to i1                ; 2 uses
  br i1 %i.dy, label %bb.aj, label %bb.ak, !prof !67

bb.aj:                                            ; preds = %bb.ai
  %i.ed = icmp ne i64 %i.dl, %.0133206
  %or.cond = and i1 %i.ed, %i.ec
  br i1 %or.cond, label %.lr.ph214.preheader, label %.thread

.lr.ph214.preheader:                              ; preds = %bb.aj
  %.neg = add i64 %.0133206, 1
  %xtraiter314 = and i64 %i.dw, 1
  %i.ee = icmp eq i64 %i.dl, %.neg
  br i1 %i.ee, label %.lr.ph214.epil.preheader, label %.lr.ph214.preheader.new

.lr.ph214.preheader.new:                          ; preds = %.lr.ph214.preheader
  %unroll_iter319 = and i64 %i.dw, -2
  br label %.lr.ph214

.lr.ph214:                                        ; preds = %.lr.ph214, %.lr.ph214.preheader.new
  %.0110213 = phi i64 [ 0, %.lr.ph214.preheader.new ], [ %i.es, %.lr.ph214 ] ; 3 uses
  %.1124212 = phi i64 [ %.0123208, %.lr.ph214.preheader.new ], [ %i.er, %.lr.ph214 ] ; 3 uses
  %niter320 = phi i64 [ 0, %.lr.ph214.preheader.new ], [ %niter320.next.1, %.lr.ph214 ]
  %i.ef = add i64 %.0110213, %.0133206            ; 2 uses
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %i.dg, i64 %i.ef
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.eg, align 8
  %i.eh = trunc i64 %i.ef to i32
  %i.ei = load ptr, ptr %12, align 8, !tbaa !439
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %.1124212
  store i32 %i.eh, ptr %i.ej, align 4, !tbaa !3
  %i.ek = or disjoint i64 %.0110213, 1
  %i.el = add i64 %i.ek, %.0133206                ; 2 uses
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %i.dg, i64 %i.el
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.em, align 8
  %i.en = trunc i64 %i.el to i32
  %i.eo = load ptr, ptr %12, align 8, !tbaa !439
  %i.ep = getelementptr [4 x i8], ptr %i.eo, i64 %.1124212
  %i.eq = getelementptr i8, ptr %i.ep, i64 4
  store i32 %i.en, ptr %i.eq, align 4, !tbaa !3
  %i.er = add i64 %.1124212, 2                    ; 3 uses
  %i.es = add nuw i64 %.0110213, 2                ; 2 uses
  %niter320.next.1 = add i64 %niter320, 2         ; 2 uses
  %niter320.ncmp.1 = icmp eq i64 %niter320.next.1, %unroll_iter319
  br i1 %niter320.ncmp.1, label %.thread.loopexit.unr-lcssa, label %.lr.ph214, !llvm.loop !1738

.thread.loopexit.unr-lcssa:                       ; preds = %.lr.ph214
  %lcmp.mod316.not = icmp eq i64 %xtraiter314, 0
  br i1 %lcmp.mod316.not, label %.thread.loopexit, label %.lr.ph214.epil.preheader

.lr.ph214.epil.preheader:                         ; preds = %.thread.loopexit.unr-lcssa, %.lr.ph214.preheader
  %.0110213.epil.init = phi i64 [ 0, %.lr.ph214.preheader ], [ %i.es, %.thread.loopexit.unr-lcssa ]
  %.1124212.epil.init = phi i64 [ %.0123208, %.lr.ph214.preheader ], [ %i.er, %.thread.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod318 = trunc i64 %i.dw to i1
  call void @llvm.assume(i1 %lcmp.mod318)
  %i.et = add i64 %.0110213.epil.init, %.0133206  ; 2 uses
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr %i.dg, i64 %i.et
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.eu, align 8
  %i.ev = trunc i64 %i.et to i32
  %i.ew = load ptr, ptr %12, align 8, !tbaa !439
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %.1124212.epil.init
  store i32 %i.ev, ptr %i.ex, align 4, !tbaa !3
  %i.ey = add i64 %.1124212.epil.init, 1
  br label %.thread.loopexit

.thread.loopexit:                                 ; preds = %.thread.loopexit.unr-lcssa, %.lr.ph214.epil.preheader
  %.lcssa = phi i64 [ %i.er, %.thread.loopexit.unr-lcssa ], [ %i.ey, %.lr.ph214.epil.preheader ]
  %.pre237 = load i64, ptr %i.dp, align 8, !tbaa !1728
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.aj
  %i.ez = phi i64 [ %i.dq, %bb.aj ], [ %.pre237, %.thread.loopexit ]
  %.2125 = phi i64 [ %.0123208, %bb.aj ], [ %.lcssa, %.thread.loopexit ]
  %i.fa = add i64 %i.ez, %i.dw
  store i64 %i.fa, ptr %i.dp, align 8, !tbaa !1728
  br label %_ZN6duckdb12RLEScanStateINS_10uhugeint_tEE12SkipInternalEPtm.exit

bb.ak:                                            ; preds = %bb.ai
  %i.fb = icmp ne i64 %i.dq, %i.du
  %or.cond216 = and i1 %i.fb, %i.ec
  br i1 %or.cond216, label %.lr.ph204.preheader, label %.loopexit

.lr.ph204.preheader:                              ; preds = %bb.ak
  %xtraiter305 = and i64 %i.dv, 1
  %i.fc = add nsw i64 %i.du, -1
  %i.fd = icmp eq i64 %i.dq, %i.fc
  br i1 %i.fd, label %.lr.ph204.epil.preheader, label %.lr.ph204.preheader.new

.lr.ph204.preheader.new:                          ; preds = %.lr.ph204.preheader
  %unroll_iter310 = and i64 %i.dv, -2
  br label %.lr.ph204

.lr.ph204:                                        ; preds = %.lr.ph204, %.lr.ph204.preheader.new
  %.0109203 = phi i64 [ 0, %.lr.ph204.preheader.new ], [ %i.fr, %.lr.ph204 ] ; 3 uses
  %.3126202 = phi i64 [ %.0123208, %.lr.ph204.preheader.new ], [ %i.fq, %.lr.ph204 ] ; 3 uses
  %niter311 = phi i64 [ 0, %.lr.ph204.preheader.new ], [ %niter311.next.1, %.lr.ph204 ]
  %i.fe = add i64 %.0109203, %.0133206            ; 2 uses
  %i.ff = getelementptr inbounds nuw [16 x i8], ptr %i.dg, i64 %i.fe
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.ff, align 8
  %i.fg = trunc i64 %i.fe to i32
  %i.fh = load ptr, ptr %12, align 8, !tbaa !439
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %.3126202
  store i32 %i.fg, ptr %i.fi, align 4, !tbaa !3
  %i.fj = or disjoint i64 %.0109203, 1
  %i.fk = add i64 %i.fj, %.0133206                ; 2 uses
  %i.fl = getelementptr inbounds nuw [16 x i8], ptr %i.dg, i64 %i.fk
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.fl, align 8
  %i.fm = trunc i64 %i.fk to i32
  %i.fn = load ptr, ptr %12, align 8, !tbaa !439
  %i.fo = getelementptr [4 x i8], ptr %i.fn, i64 %.3126202
  %i.fp = getelementptr i8, ptr %i.fo, i64 4
  store i32 %i.fm, ptr %i.fp, align 4, !tbaa !3
  %i.fq = add i64 %.3126202, 2                    ; 3 uses
  %i.fr = add nuw i64 %.0109203, 2                ; 2 uses
  %niter311.next.1 = add i64 %niter311, 2         ; 2 uses
  %niter311.ncmp.1 = icmp eq i64 %niter311.next.1, %unroll_iter310
  br i1 %niter311.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph204, !llvm.loop !1739

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph204
  %lcmp.mod307.not = icmp eq i64 %xtraiter305, 0
  br i1 %lcmp.mod307.not, label %.loopexit.loopexit, label %.lr.ph204.epil.preheader

.lr.ph204.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph204.preheader
  %.0109203.epil.init = phi i64 [ 0, %.lr.ph204.preheader ], [ %i.fr, %.loopexit.loopexit.unr-lcssa ]
  %.3126202.epil.init = phi i64 [ %.0123208, %.lr.ph204.preheader ], [ %i.fq, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod309 = trunc i64 %i.dv to i1
  call void @llvm.assume(i1 %lcmp.mod309)
  %i.fs = add i64 %.0109203.epil.init, %.0133206  ; 2 uses
  %i.ft = getelementptr inbounds nuw [16 x i8], ptr %i.dg, i64 %i.fs
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.ft, align 8
  %i.fu = trunc i64 %i.fs to i32
  %i.fv = load ptr, ptr %12, align 8, !tbaa !439
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %.3126202.epil.init
  store i32 %i.fu, ptr %i.fw, align 4, !tbaa !3
  %i.fx = add i64 %.3126202.epil.init, 1
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph204.epil.preheader
  %.lcssa290 = phi i64 [ %i.fq, %.loopexit.loopexit.unr-lcssa ], [ %i.fx, %.lr.ph204.epil.preheader ]
  %.pre236 = load i64, ptr %i.do, align 8, !tbaa !1727
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.ak
  %i.fy = phi i64 [ %i.dr, %bb.ak ], [ %.pre236, %.loopexit.loopexit ]
  %.4127 = phi i64 [ %.0123208, %bb.ak ], [ %.lcssa290, %.loopexit.loopexit ] ; 2 uses
  %i.fz = add i64 %i.dv, %.0133206                ; 2 uses
  %i.ga = add i64 %i.fy, 1                        ; 2 uses
  store i64 %i.ga, ptr %i.do, align 8, !tbaa !1727
  store i64 0, ptr %i.dp, align 8, !tbaa !1728
  %i.gb = icmp ult i64 %i.fz, %i.dl
  br i1 %i.gb, label %bb.ai, label %_ZN6duckdb12RLEScanStateINS_10uhugeint_tEE12SkipInternalEPtm.exit

._crit_edge200:                                   ; preds = %bb.ba, %.preheader185
  %.7130.lcssa = phi i64 [ 0, %.preheader185 ], [ %.8131, %bb.ba ] ; 2 uses
  %.0108.lcssa = phi i64 [ 0, %.preheader185 ], [ %i.gv, %bb.ba ]
  %i.gc = sub i64 %2, %.0108.lcssa                ; 2 uses
  %.not9.i = icmp eq i64 %i.gc, 0
  br i1 %.not9.i, label %_ZN6duckdb12RLEScanStateINS_10uhugeint_tEE12SkipInternalEPtm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge200
  %i.gd = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %.promoted.i = load i64, ptr %i.gd, align 8, !tbaa !1727
  %.promoted11.i = load i64, ptr %i.ge, align 8, !tbaa !1728
  br label %bb.al

bb.al:                                            ; preds = %bb.an, %.lr.ph.i
  %i.gf = phi i64 [ %.promoted11.i, %.lr.ph.i ], [ %i.gp, %bb.an ] ; 2 uses
  %i.gg = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.gq, %bb.an ] ; 3 uses
  %.010.i = phi i64 [ %i.gc, %.lr.ph.i ], [ %i.gm, %bb.an ] ; 2 uses
  %i.gh = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.gg
  %i.gi = load i16, ptr %i.gh, align 2, !tbaa !670
  %i.gj = zext i16 %i.gi to i64                   ; 2 uses
  %i.gk = sub i64 %i.gj, %i.gf
  %i.gl = call noundef i64 @llvm.umin.i64(i64 %.010.i, i64 %i.gk) ; 2 uses
  %i.gm = sub i64 %.010.i, %i.gl                  ; 2 uses
  %i.gn = add i64 %i.gl, %i.gf                    ; 2 uses
  %.not8.i = icmp ult i64 %i.gn, %i.gj
  br i1 %.not8.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.go = add i64 %i.gg, 1                        ; 2 uses
  store i64 %i.go, ptr %i.gd, align 8, !tbaa !1727
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.gp = phi i64 [ 0, %bb.am ], [ %i.gn, %bb.al ] ; 2 uses
  %i.gq = phi i64 [ %i.go, %bb.am ], [ %i.gg, %bb.al ]
  %.not.i154 = icmp eq i64 %i.gm, 0
  br i1 %.not.i154, label %._crit_edge.i, label %bb.al, !llvm.loop !1729

._crit_edge.i:                                    ; preds = %bb.an
  store i64 %i.gp, ptr %i.ge, align 8, !tbaa !1728
  br label %_ZN6duckdb12RLEScanStateINS_10uhugeint_tEE12SkipInternalEPtm.exit

bb.ao:                                            ; preds = %.lr.ph199, %bb.ba
  %.0107198 = phi i64 [ 0, %.lr.ph199 ], [ %i.ib, %bb.ba ] ; 3 uses
  %.0108197 = phi i64 [ 0, %.lr.ph199 ], [ %i.gv, %bb.ba ] ; 2 uses
  %.7130196 = phi i64 [ 0, %.lr.ph199 ], [ %.8131, %bb.ba ] ; 3 uses
  %i.gr = load ptr, ptr %4, align 8, !tbaa !439   ; 2 uses
  %.not.i155 = icmp eq ptr %i.gr, null
  br i1 %.not.i155, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit156, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %.0107198
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !3
  %i.gu = zext i32 %i.gt to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit156

_ZNK6duckdb15SelectionVector9get_indexEm.exit156: ; preds = %bb.ap, %bb.ao
  %i.gv = phi i64 [ %i.gu, %bb.ap ], [ %.0107198, %bb.ao ] ; 6 uses
  %i.gw = icmp ult i64 %i.gv, %.0108197
  br i1 %i.gw, label %bb.aq, label %bb.av

bb.aq:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit156
  %i.gx = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.58, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.ar unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.gx, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.as unwind label %bb.at

bb.as:                                            ; preds = %bb.ar
  invoke void @__cxa_throw(ptr nonnull %i.gx, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.bv unwind label %bb.at

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.aq
  %i.gy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br label %bb.au

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.0 = phi i1 [ false, %bb.as ], [ true, %bb.ar ] ; 2 uses
  %i.gz = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ha = load ptr, ptr %13, align 8, !tbaa !63   ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.hc = icmp eq ptr %i.ha, %i.hb
  br i1 %i.hc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.at
  call void @_ZdlPv(ptr noundef %i.ha) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br i1 %.0, label %bb.au, label %bb.bu

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br i1 %.0, label %bb.au, label %bb.bu

bb.au:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn146181 = phi { ptr, i32 } [ %i.gy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.gz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.gz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.gx) #30
  br label %bb.bu

bb.av:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit156
  %i.hd = sub nuw i64 %i.gv, %.0108197            ; 2 uses
  %.not9.i157 = icmp eq i64 %i.hd, 0
  %.pre = load i64, ptr %i.dm, align 8, !tbaa !1727 ; 2 uses
  br i1 %.not9.i157, label %_ZN6duckdb12RLEScanStateINS_10uhugeint_tEE12SkipInternalEPtm.exit165, label %.lr.ph.i158

.lr.ph.i158:                                      ; preds = %bb.av
  %.promoted11.i160 = load i64, ptr %i.dn, align 8, !tbaa !1728
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ay, %.lr.ph.i158
  %i.he = phi i64 [ %.promoted11.i160, %.lr.ph.i158 ], [ %i.ho, %bb.ay ] ; 2 uses
  %i.hf = phi i64 [ %.pre, %.lr.ph.i158 ], [ %i.hp, %bb.ay ] ; 3 uses
  %.010.i161 = phi i64 [ %i.hd, %.lr.ph.i158 ], [ %i.hl, %bb.ay ] ; 2 uses
  %i.hg = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.hf
  %i.hh = load i16, ptr %i.hg, align 2, !tbaa !670
  %i.hi = zext i16 %i.hh to i64                   ; 2 uses
  %i.hj = sub i64 %i.hi, %i.he
  %i.hk = call noundef i64 @llvm.umin.i64(i64 %.010.i161, i64 %i.hj) ; 2 uses
  %i.hl = sub i64 %.010.i161, %i.hk               ; 2 uses
  %i.hm = add i64 %i.hk, %i.he                    ; 2 uses
  %.not8.i162 = icmp ult i64 %i.hm, %i.hi
  br i1 %.not8.i162, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hn = add i64 %i.hf, 1                        ; 2 uses
  store i64 %i.hn, ptr %i.dm, align 8, !tbaa !1727
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.ho = phi i64 [ 0, %bb.ax ], [ %i.hm, %bb.aw ] ; 2 uses
  %i.hp = phi i64 [ %i.hn, %bb.ax ], [ %i.hf, %bb.aw ] ; 2 uses
  %.not.i163 = icmp eq i64 %i.hl, 0
  br i1 %.not.i163, label %._crit_edge.i164, label %bb.aw, !llvm.loop !1729

._crit_edge.i164:                                 ; preds = %bb.ay
  store i64 %i.ho, ptr %i.dn, align 8, !tbaa !1728
  br label %_ZN6duckdb12RLEScanStateINS_10uhugeint_tEE12SkipInternalEPtm.exit165

_ZN6duckdb12RLEScanStateINS_10uhugeint_tEE12SkipInternalEPtm.exit165: ; preds = %bb.av, %._crit_edge.i164
  %i.hq = phi i64 [ %.pre, %bb.av ], [ %i.hp, %._crit_edge.i164 ] ; 2 uses
  %i.hr = load ptr, ptr %i.q, align 8, !tbaa !1096
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 %i.hq
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !43, !range !54, !noundef !55
  %i.hu = trunc nuw i8 %i.ht to i1
  br i1 %i.hu, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %_ZN6duckdb12RLEScanStateINS_10uhugeint_tEE12SkipInternalEPtm.exit165
  %i.hv = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.hq
  %i.hw = getelementptr inbounds nuw [16 x i8], ptr %i.dg, i64 %i.gv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hw, ptr noundef nonnull align 8 dereferenceable(16) %i.hv, i64 16, i1 false), !tbaa.struct !617
  %i.hx = trunc i64 %i.gv to i32
  %i.hy = load ptr, ptr %12, align 8, !tbaa !439
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %.7130196
  store i32 %i.hx, ptr %i.hz, align 4, !tbaa !3
  %i.ia = add i64 %.7130196, 1
  br label %bb.ba

bb.ba:                                            ; preds = %_ZN6duckdb12RLEScanStateINS_10uhugeint_tEE12SkipInternalEPtm.exit165, %bb.az
  %.8131 = phi i64 [ %i.ia, %bb.az ], [ %.7130196, %_ZN6duckdb12RLEScanStateINS_10uhugeint_tEE12SkipInternalEPtm.exit165 ] ; 2 uses
  %i.ib = add nuw i64 %.0107198, 1                ; 2 uses
  %i.ic = load i64, ptr %5, align 8, !tbaa !21
  %i.id = icmp ult i64 %i.ib, %i.ic
  br i1 %i.id, label %bb.ao, label %._crit_edge200, !llvm.loop !1740

_ZN6duckdb12RLEScanStateINS_10uhugeint_tEE12SkipInternalEPtm.exit: ; preds = %.loopexit, %bb.ah, %._crit_edge.i, %._crit_edge200, %.thread
  %.9132 = phi i64 [ %.7130.lcssa, %._crit_edge.i ], [ %.2125, %.thread ], [ %.7130.lcssa, %._crit_edge200 ], [ 0, %bb.ah ], [ %.4127, %.loopexit ] ; 2 uses
  %i.ie = load i64, ptr %5, align 8, !tbaa !21
  %.not = icmp eq i64 %.9132, %i.ie
  br i1 %.not, label %bb.bm, label %bb.bb

bb.bb:                                            ; preds = %_ZN6duckdb12RLEScanStateINS_10uhugeint_tEE12SkipInternalEPtm.exit
  %i.if = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ig = icmp eq ptr %4, %12
  br i1 %i.ig, label %_ZN6duckdb15SelectionVector10InitializeERKS0_.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ih = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !234 ; 2 uses
  %i.ij = load <2 x ptr>, ptr %i.di, align 8, !tbaa !443
  %.not.i.i.i.i.i.i166 = icmp eq ptr %i.ii, null
  br i1 %.not.i.i.i.i.i.i166, label %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ii, i64 8 ; 3 uses
  %i.il = load i8, ptr @__libc_single_threaded, align 1, !tbaa !239
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.il, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.im = load i32, ptr %i.ik, align 4, !tbaa !3
  %i.in = add nsw i32 %i.im, 1
  store i32 %i.in, ptr %i.ik, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i

bb.bf:                                            ; preds = %bb.bd
  %i.io = atomicrmw volatile add ptr %i.ik, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i

_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i: ; preds = %bb.bf, %bb.be, %bb.bc
  %i.ip = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !234 ; 8 uses
  store <2 x ptr> %i.ij, ptr %i.if, align 8, !tbaa !443
  %.not.i.i.i.i.i167 = icmp eq ptr %i.iq, null
  br i1 %.not.i.i.i.i.i167, label %_ZN6duckdb15SelectionVector10InitializeERKS0_.exit, label %bb.bg

bb.bg:                                            ; preds = %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 8 ; 4 uses
  %i.is = load atomic i64, ptr %i.ir acquire, align 8 ; 2 uses
  %i.it = icmp eq i64 %i.is, 4294967297
  %i.iu = trunc i64 %i.is to i32                  ; 2 uses
  br i1 %i.it, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  store i32 0, ptr %i.ir, align 8, !tbaa !235
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iq, i64 12
  store i32 0, ptr %i.iv, align 4, !tbaa !237
  %i.iw = load ptr, ptr %i.iq, align 8, !tbaa !48
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  %i.iy = load ptr, ptr %i.ix, align 8
  call void %i.iy(ptr noundef nonnull align 8 dereferenceable(16) %i.iq) #30, !inline_history !1104
  %i.iz = load ptr, ptr %i.iq, align 8, !tbaa !48
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 24
  %i.jb = load ptr, ptr %i.ja, align 8
  call void %i.jb(ptr noundef nonnull align 8 dereferenceable(16) %i.iq) #30, !inline_history !1104
  br label %_ZN6duckdb15SelectionVector10InitializeERKS0_.exit

bb.bi:                                            ; preds = %bb.bg
  %i.jc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !239
  %.not.i.i.i.i5.i.i = icmp eq i8 %i.jc, 0
  br i1 %.not.i.i.i.i5.i.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.jd = add nsw i32 %i.iu, -1
  store i32 %i.jd, ptr %i.ir, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i168

bb.bk:                                            ; preds = %bb.bi
  %i.je = atomicrmw volatile add ptr %i.ir, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i168

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i168: ; preds = %bb.bk, %bb.bj
  %.0.i.i.i.i.i.i.i169 = phi i32 [ %i.iu, %bb.bj ], [ %i.je, %bb.bk ]
  %i.jf = icmp eq i32 %.0.i.i.i.i.i.i.i169, 1
  br i1 %i.jf, label %bb.bl, label %_ZN6duckdb15SelectionVector10InitializeERKS0_.exit, !prof !67

bb.bl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i168
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.iq) #30
  br label %_ZN6duckdb15SelectionVector10InitializeERKS0_.exit

_ZN6duckdb15SelectionVector10InitializeERKS0_.exit: ; preds = %bb.bb, %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i, %bb.bh, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i168, %bb.bl
  %i.jg = load ptr, ptr %12, align 8, !tbaa !439
  store ptr %i.jg, ptr %4, align 8, !tbaa !439
  store i64 %.9132, ptr %5, align 8, !tbaa !21
  br label %bb.bm

bb.bm:                                            ; preds = %_ZN6duckdb15SelectionVector10InitializeERKS0_.exit, %_ZN6duckdb12RLEScanStateINS_10uhugeint_tEE12SkipInternalEPtm.exit
  %i.jh = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !234 ; 8 uses
  %.not.i.i.i.i170 = icmp eq ptr %i.ji, null
  br i1 %.not.i.i.i.i170, label %_ZN6duckdb15SelectionVectorD2Ev.exit174, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 8 ; 4 uses
  %i.jk = load atomic i64, ptr %i.jj acquire, align 8 ; 2 uses
  %i.jl = icmp eq i64 %i.jk, 4294967297
  %i.jm = trunc i64 %i.jk to i32                  ; 2 uses
  br i1 %i.jl, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  store i32 0, ptr %i.jj, align 8, !tbaa !235
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ji, i64 12
  store i32 0, ptr %i.jn, align 4, !tbaa !237
  %i.jo = load ptr, ptr %i.ji, align 8, !tbaa !48
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 16
  %i.jq = load ptr, ptr %i.jp, align 8
  call void %i.jq(ptr noundef nonnull align 8 dereferenceable(16) %i.ji) #30, !inline_history !241
  %i.jr = load ptr, ptr %i.ji, align 8, !tbaa !48
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 24
  %i.jt = load ptr, ptr %i.js, align 8
  call void %i.jt(ptr noundef nonnull align 8 dereferenceable(16) %i.ji) #30, !inline_history !241
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit174

bb.bp:                                            ; preds = %bb.bn
  %i.ju = load i8, ptr @__libc_single_threaded, align 1, !tbaa !239
  %.not.i.i.i.i.i171 = icmp eq i8 %i.ju, 0
  br i1 %.not.i.i.i.i.i171, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.jv = add nsw i32 %i.jm, -1
  store i32 %i.jv, ptr %i.jj, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i172

end_hunk_2
begin_hunk_3_@_ZN6duckdb16RLECompressStateINS_10uhugeint_tELb1EE10WriteValueES1_tb:bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  store i8 1, ptr %i.aa, align 8, !tbaa !575
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ab = zext i16 %3 to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = call noundef ptr @_ZNK6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ac)
  %i.ae = atomicrmw add ptr %i.ad, i64 %i.ab seq_cst, align 8 ; 0 uses
  %i.af = load i64, ptr %i.j, align 8, !tbaa !1741
  %i.ag = load i64, ptr %i.f, align 8, !tbaa !1744
  %i.ah = icmp eq i64 %i.af, %i.ag
  br i1 %i.ah, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZN6duckdb16RLECompressStateINS_10uhugeint_tELb1EE12FlushSegmentEv(ptr noundef nonnull align 8 dereferenceable(128) %0)
  call void @_ZN6duckdb16RLECompressStateINS_10uhugeint_tELb1EE18CreateEmptySegmentEv(ptr noundef nonnull align 8 dereferenceable(128) %0)
  store i64 0, ptr %i.j, align 8, !tbaa !1741
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb16RLECompressStateINS_10uhugeint_tELb1EE12FlushSegmentEv(ptr noundef nonnull align 8 dereferenceable(128) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.duckdb::unique_ptr.183", align 8 ; 4 uses
  %2 = alloca %"class.duckdb::BufferHandle", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1741 ; 2 uses
  %i.c = shl i64 %i.b, 1                          ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1744
  %i.f = shl i64 %i.e, 4
  %i.g = shl i64 %i.b, 4
  %i.h = or disjoint i64 %i.g, 8                  ; 3 uses
  %i.i = add i64 %i.h, %i.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !455
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !456  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.h
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull align 1 %i.q, i64 %i.c, i1 false)
  store i64 %i.h, ptr %i.n, align 1
  tail call void @_ZN6duckdb12BufferHandle7DestroyEv(ptr noundef nonnull align 8 dereferenceable(24) %i.j)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1745, !nonnull !55, !align !133
  %i.t = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZN6duckdb24ColumnDataCheckpointData18GetCheckpointStateEv(ptr noundef nonnull align 8 dereferenceable(40) %i.s) ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !218
  store i64 %i.v, ptr %1, align 8, !tbaa !218
  store ptr null, ptr %i.u, align 8, !tbaa !218
  call void @_ZN6duckdb12BufferHandleC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.j) #30
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !48
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.y = load ptr, ptr %i.x, align 8
  invoke void %i.y(ptr noundef nonnull align 8 dereferenceable(88) %i.t, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef %i.i)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #30
  %i.z = load ptr, ptr %1, align 8, !tbaa !218    ; 3 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb13ColumnSegmentESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i: ; preds = %bb.b
  call void @_ZN6duckdb13ColumnSegmentD1Ev(ptr noundef nonnull align 8 dereferenceable(240) %i.z) #30
  call void @_ZdlPv(ptr noundef nonnull %i.z) #32
  br label %_ZNSt10unique_ptrIN6duckdb13ColumnSegmentESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb13ColumnSegmentESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i
  ret void

bb.c:                                             ; preds = %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #30
  call void @_ZNSt10unique_ptrIN6duckdb13ColumnSegmentESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #30
  resume { ptr, i32 } %i.aa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb12RLEScanStateINS_10uhugeint_tEEC2ERNS_13ColumnSegmentE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(240) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::BufferHandle", align 8 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb12RLEScanStateINS_10uhugeint_tEEE, i64 16), ptr %0, align 8, !tbaa !48
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @_ZN6duckdb12BufferHandleC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !248
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb13BufferManager16GetBufferManagerERNS_16DatabaseInstanceE(ptr noundef nonnull align 1 %i.d)
          to label %bb.b unwind label %bb.e       ; 2 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !48
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.i = load ptr, ptr %i.h, align 8
  invoke void %i.i(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::BufferHandle") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.j = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb12BufferHandleaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2) #30 ; 0 uses
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  invoke void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !455
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !456
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.q = load i64, ptr %i.p, align 8, !tbaa !460
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.q
  %.0.copyload.i = load i64, ptr %i.r, align 1
  %i.s = trunc i64 %.0.copyload.i to i32
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.s, ptr %i.t, align 8, !tbaa !1725
  ret void

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.u, %bb.e ], [ %i.v, %bb.f ]
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !1096 ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.w) #32
  br label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.g, %_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #30
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb12RLEScanStateINS_10uhugeint_tEED2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb12RLEScanStateINS_10uhugeint_tEEE, i64 16), ptr %0, align 8, !tbaa !48
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1096 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #32
  br label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #30
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb12RLEScanStateINS_10uhugeint_tEED0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb12RLEScanStateINS_10uhugeint_tEEE, i64 16), ptr %0, align 8, !tbaa !48
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1096 ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN6duckdb12RLEScanStateINS_10uhugeint_tEED2Ev.exit, label %_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i

_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i: ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #32, !inline_history !1730
  br label %_ZN6duckdb12RLEScanStateINS_10uhugeint_tEED2Ev.exit

_ZN6duckdb12RLEScanStateINS_10uhugeint_tEED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #30, !inline_history !1730
  tail call void @_ZdlPv(ptr noundef nonnull %0) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb22RLEScanPartialInternalINS_10uhugeint_tELb1EEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(284) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.b = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_16SegmentScanStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  tail call void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !455
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !456
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.h = load i64, ptr %i.g, align 8, !tbaa !460
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.l = load i32, ptr %i.k, align 8, !tbaa !1725
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.m ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 8 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !1728
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 7 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1727
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.r
  %i.t = load i16, ptr %i.s, align 2, !tbaa !670
  %i.u = zext i16 %i.t to i64
  %.not.i = icmp eq i64 %2, 2048
  %i.v = sub i64 %i.u, %i.p
  %i.w = icmp ugt i64 %i.v, 2047
  %.0.i = and i1 %.not.i, %i.w
  br i1 %.0.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %3, i8 noundef zeroext 2)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10uhugeint_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %3)
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !461
  %i.z = load i64, ptr %i.q, align 8, !tbaa !1727
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.z
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.aa, i64 16, i1 false), !tbaa.struct !617
  %i.ab = load i64, ptr %i.o, align 8, !tbaa !1728
  %i.ac = add i64 %i.ab, 2048                     ; 2 uses
  store i64 %i.ac, ptr %i.o, align 8, !tbaa !1728
  %i.ad = load i64, ptr %i.q, align 8, !tbaa !1727 ; 2 uses
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.ad
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !670
  %i.ag = zext i16 %i.af to i64
  %.not.i54 = icmp ult i64 %i.ac, %i.ag
  br i1 %.not.i54, label %_ZN6duckdbL15RLEScanConstantINS_10uhugeint_tEEEvRNS_12RLEScanStateIT_EEPtPS3_mRNS_6VectorE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ah = add i64 %i.ad, 1
  store i64 %i.ah, ptr %i.q, align 8, !tbaa !1727
  store i64 0, ptr %i.o, align 8, !tbaa !1728
  br label %_ZN6duckdbL15RLEScanConstantINS_10uhugeint_tEEEvRNS_12RLEScanStateIT_EEPtPS3_mRNS_6VectorE.exit

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10uhugeint_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %3)
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !461 ; 2 uses
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %3, i8 noundef zeroext 0)
  %i.ak = add i64 %4, %2                          ; 4 uses
  %i.al = icmp ult i64 %4, %i.ak
  br i1 %i.al, label %.lr.ph62.preheader, label %_ZN6duckdbL15RLEScanConstantINS_10uhugeint_tEEEvRNS_12RLEScanStateIT_EEPtPS3_mRNS_6VectorE.exit

.lr.ph62.preheader:                               ; preds = %bb.d
  %.pre = load i64, ptr %i.q, align 8, !tbaa !1727
  %.pre69 = load i64, ptr %i.o, align 8, !tbaa !1728
  br label %.lr.ph62

.lr.ph62:                                         ; preds = %.lr.ph62.preheader, %._crit_edge
  %i.am = phi i64 [ 0, %._crit_edge ], [ %.pre69, %.lr.ph62.preheader ] ; 4 uses
  %i.an = phi i64 [ %i.ca, %._crit_edge ], [ %.pre, %.lr.ph62.preheader ] ; 3 uses
  %.04960 = phi i64 [ %i.bz, %._crit_edge ], [ %4, %.lr.ph62.preheader ] ; 6 uses
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.an
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !670
  %i.aq = zext i16 %i.ap to i64                   ; 3 uses
  %i.ar = sub i64 %i.aq, %i.am                    ; 4 uses
  %i.as = sub nuw i64 %i.ak, %.04960              ; 4 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.an
  %.sroa.0.0.copyload = load <2 x i64>, ptr %i.at, align 8 ; 10 uses
  %i.au = icmp ugt i64 %i.ar, %i.as
  br i1 %i.au, label %.preheader, label %.preheader57, !prof !67

.preheader57:                                     ; preds = %.lr.ph62
  %.not = icmp eq i64 %i.am, %i.aq
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader57
  %i.av = getelementptr [16 x i8], ptr %i.aj, i64 %.04960 ; 5 uses
  %xtraiter = and i64 %i.ar, 3                    ; 3 uses
  %i.aw = sub i64 %i.am, %i.aq
  %i.ax = icmp ugt i64 %i.aw, -4
  br i1 %i.ax, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.ar, -4
  br label %bb.g

.preheader:                                       ; preds = %.lr.ph62
  %.not65 = icmp eq i64 %i.ak, %.04960
  br i1 %.not65, label %.thread, label %.lr.ph64

.lr.ph64:                                         ; preds = %.preheader
  %i.ay = getelementptr [16 x i8], ptr %i.aj, i64 %.04960 ; 5 uses
  %i.az = add i64 %4, %2
  %xtraiter92 = and i64 %i.as, 3                  ; 3 uses
  %i.ba = sub i64 %.04960, %i.az
  %i.bb = icmp ugt i64 %i.ba, -4
  br i1 %i.bb, label %.epil.preheader89, label %.lr.ph64.new

.lr.ph64.new:                                     ; preds = %.lr.ph64
  %unroll_iter96 = and i64 %i.as, -4
  br label %bb.f

.thread.loopexit.unr-lcssa:                       ; preds = %bb.f
  %lcmp.mod94.not = icmp eq i64 %xtraiter92, 0
  br i1 %lcmp.mod94.not, label %.thread.loopexit, label %.epil.preheader89

.epil.preheader89:                                ; preds = %.thread.loopexit.unr-lcssa, %.lr.ph64
  %.04863.epil.init = phi i64 [ 0, %.lr.ph64 ], [ %i.bn, %.thread.loopexit.unr-lcssa ]
  %lcmp.mod95 = icmp ne i64 %xtraiter92, 0
  tail call void @llvm.assume(i1 %lcmp.mod95)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader89
  %.04863.epil = phi i64 [ %.04863.epil.init, %.epil.preheader89 ], [ %i.bd, %bb.e ] ; 2 uses
  %epil.iter93 = phi i64 [ 0, %.epil.preheader89 ], [ %epil.iter93.next, %bb.e ]
  %i.bc = getelementptr [16 x i8], ptr %i.ay, i64 %.04863.epil
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.bc, align 8
  %i.bd = add nuw i64 %.04863.epil, 1
  %epil.iter93.next = add i64 %epil.iter93, 1     ; 2 uses
  %epil.iter93.cmp.not = icmp eq i64 %epil.iter93.next, %xtraiter92
  br i1 %epil.iter93.cmp.not, label %.thread.loopexit, label %bb.e, !llvm.loop !1748

.thread.loopexit:                                 ; preds = %bb.e, %.thread.loopexit.unr-lcssa
  %.pre71 = load i64, ptr %i.o, align 8, !tbaa !1728
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %.preheader
  %i.be = phi i64 [ %.pre71, %.thread.loopexit ], [ %i.am, %.preheader ]
  %i.bf = add i64 %i.be, %i.as
  store i64 %i.bf, ptr %i.o, align 8, !tbaa !1728
  br label %_ZN6duckdbL15RLEScanConstantINS_10uhugeint_tEEEvRNS_12RLEScanStateIT_EEPtPS3_mRNS_6VectorE.exit

bb.f:                                             ; preds = %bb.f, %.lr.ph64.new
  %.04863 = phi i64 [ 0, %.lr.ph64.new ], [ %i.bn, %bb.f ] ; 5 uses
  %niter97 = phi i64 [ 0, %.lr.ph64.new ], [ %niter97.next.3, %bb.f ]
  %i.bg = getelementptr [16 x i8], ptr %i.ay, i64 %.04863
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.bg, align 8
  %i.bh = getelementptr [16 x i8], ptr %i.ay, i64 %.04863
  %i.bi = getelementptr i8, ptr %i.bh, i64 16
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.bi, align 8
  %i.bj = getelementptr [16 x i8], ptr %i.ay, i64 %.04863
  %i.bk = getelementptr i8, ptr %i.bj, i64 32
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.bk, align 8
  %i.bl = getelementptr [16 x i8], ptr %i.ay, i64 %.04863
  %i.bm = getelementptr i8, ptr %i.bl, i64 48
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.bm, align 8
  %i.bn = add nuw i64 %.04863, 4                  ; 2 uses
  %niter97.next.3 = add i64 %niter97, 4           ; 2 uses
  %niter97.ncmp.3 = icmp eq i64 %niter97.next.3, %unroll_iter96
  br i1 %niter97.ncmp.3, label %.thread.loopexit.unr-lcssa, label %bb.f, !llvm.loop !1749

bb.g:                                             ; preds = %bb.g, %.lr.ph.new
  %.059 = phi i64 [ 0, %.lr.ph.new ], [ %i.bv, %bb.g ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.g ]
  %i.bo = getelementptr [16 x i8], ptr %i.av, i64 %.059
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.bo, align 8
  %i.bp = getelementptr [16 x i8], ptr %i.av, i64 %.059
  %i.bq = getelementptr i8, ptr %i.bp, i64 16
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.bq, align 8
  %i.br = getelementptr [16 x i8], ptr %i.av, i64 %.059
  %i.bs = getelementptr i8, ptr %i.br, i64 32
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.bs, align 8
  %i.bt = getelementptr [16 x i8], ptr %i.av, i64 %.059
  %i.bu = getelementptr i8, ptr %i.bt, i64 48
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.bu, align 8
  %i.bv = add nuw i64 %.059, 4                    ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.g, !llvm.loop !1750

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.059.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.bv, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod88 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod88)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %.059.epil = phi i64 [ %.059.epil.init, %.epil.preheader ], [ %i.bx, %bb.h ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.h ]
  %i.bw = getelementptr [16 x i8], ptr %i.av, i64 %.059.epil
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.bw, align 8
  %i.bx = add nuw i64 %.059.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit, label %bb.h, !llvm.loop !1751

._crit_edge.loopexit:                             ; preds = %bb.h, %._crit_edge.loopexit.unr-lcssa
  %.pre70 = load i64, ptr %i.q, align 8, !tbaa !1727
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader57
  %i.by = phi i64 [ %.pre70, %._crit_edge.loopexit ], [ %i.an, %.preheader57 ]
  %i.bz = add i64 %i.ar, %.04960                  ; 2 uses
  %i.ca = add i64 %i.by, 1                        ; 2 uses
  store i64 %i.ca, ptr %i.q, align 8, !tbaa !1727
  store i64 0, ptr %i.o, align 8, !tbaa !1728
  %i.cb = icmp ult i64 %i.bz, %i.ak
  br i1 %i.cb, label %.lr.ph62, label %_ZN6duckdbL15RLEScanConstantINS_10uhugeint_tEEEvRNS_12RLEScanStateIT_EEPtPS3_mRNS_6VectorE.exit

_ZN6duckdbL15RLEScanConstantINS_10uhugeint_tEEEvRNS_12RLEScanStateIT_EEPtPS3_mRNS_6VectorE.exit: ; preds = %._crit_edge, %bb.d, %.thread, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb22RLEScanPartialInternalINS_10uhugeint_tELb0EEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(284) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.b = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_16SegmentScanStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  tail call void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !455
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !456
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.h = load i64, ptr %i.g, align 8, !tbaa !460
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.l = load i32, ptr %i.k, align 8, !tbaa !1725
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10uhugeint_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %3)
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !461  ; 2 uses
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %3, i8 noundef zeroext 0)
  %i.s = add i64 %4, %2                           ; 4 uses
  %i.t = icmp ult i64 %4, %i.s
  br i1 %i.t, label %.lr.ph61.preheader, label %.loopexit

.lr.ph61.preheader:                               ; preds = %bb.a
  %.pre = load i64, ptr %i.p, align 8, !tbaa !1727
  %.pre68 = load i64, ptr %i.o, align 8, !tbaa !1728
  br label %.lr.ph61

.lr.ph61:                                         ; preds = %.lr.ph61.preheader, %._crit_edge
  %i.u = phi i64 [ 0, %._crit_edge ], [ %.pre68, %.lr.ph61.preheader ] ; 4 uses
  %i.v = phi i64 [ %i.bi, %._crit_edge ], [ %.pre, %.lr.ph61.preheader ] ; 3 uses
  %.04959 = phi i64 [ %i.bh, %._crit_edge ], [ %4, %.lr.ph61.preheader ] ; 6 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.v
  %i.x = load i16, ptr %i.w, align 2, !tbaa !670
  %i.y = zext i16 %i.x to i64                     ; 3 uses
  %i.z = sub i64 %i.y, %i.u                       ; 4 uses
  %i.aa = sub nuw i64 %i.s, %.04959               ; 4 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.v
  %.sroa.0.0.copyload = load <2 x i64>, ptr %i.ab, align 8 ; 10 uses
  %i.ac = icmp ugt i64 %i.z, %i.aa
  br i1 %i.ac, label %.preheader, label %.preheader56, !prof !67

.preheader56:                                     ; preds = %.lr.ph61
  %.not = icmp eq i64 %i.u, %i.y
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader56
  %i.ad = getelementptr [16 x i8], ptr %i.r, i64 %.04959 ; 5 uses
  %xtraiter = and i64 %i.z, 3                     ; 3 uses
  %i.ae = sub i64 %i.u, %i.y
  %i.af = icmp ugt i64 %i.ae, -4
  br i1 %i.af, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.z, -4
  br label %bb.d

.preheader:                                       ; preds = %.lr.ph61
  %.not64 = icmp eq i64 %i.s, %.04959
  br i1 %.not64, label %.thread, label %.lr.ph63

.lr.ph63:                                         ; preds = %.preheader
  %i.ag = getelementptr [16 x i8], ptr %i.r, i64 %.04959 ; 5 uses
  %i.ah = add i64 %4, %2
  %xtraiter91 = and i64 %i.aa, 3                  ; 3 uses
  %i.ai = sub i64 %.04959, %i.ah
  %i.aj = icmp ugt i64 %i.ai, -4
  br i1 %i.aj, label %.epil.preheader88, label %.lr.ph63.new

.lr.ph63.new:                                     ; preds = %.lr.ph63
  %unroll_iter95 = and i64 %i.aa, -4
  br label %bb.c

.thread.loopexit.unr-lcssa:                       ; preds = %bb.c
  %lcmp.mod93.not = icmp eq i64 %xtraiter91, 0
  br i1 %lcmp.mod93.not, label %.thread.loopexit, label %.epil.preheader88

.epil.preheader88:                                ; preds = %.thread.loopexit.unr-lcssa, %.lr.ph63
  %.04862.epil.init = phi i64 [ 0, %.lr.ph63 ], [ %i.av, %.thread.loopexit.unr-lcssa ]
  %lcmp.mod94 = icmp ne i64 %xtraiter91, 0
  tail call void @llvm.assume(i1 %lcmp.mod94)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader88
  %.04862.epil = phi i64 [ %.04862.epil.init, %.epil.preheader88 ], [ %i.al, %bb.b ] ; 2 uses
  %epil.iter92 = phi i64 [ 0, %.epil.preheader88 ], [ %epil.iter92.next, %bb.b ]
  %i.ak = getelementptr [16 x i8], ptr %i.ag, i64 %.04862.epil
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.ak, align 8
  %i.al = add nuw i64 %.04862.epil, 1
  %epil.iter92.next = add i64 %epil.iter92, 1     ; 2 uses
  %epil.iter92.cmp.not = icmp eq i64 %epil.iter92.next, %xtraiter91
  br i1 %epil.iter92.cmp.not, label %.thread.loopexit, label %bb.b, !llvm.loop !1752

.thread.loopexit:                                 ; preds = %bb.b, %.thread.loopexit.unr-lcssa
  %.pre70 = load i64, ptr %i.o, align 8, !tbaa !1728
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %.preheader
  %i.am = phi i64 [ %.pre70, %.thread.loopexit ], [ %i.u, %.preheader ]
  %i.an = add i64 %i.am, %i.aa
  store i64 %i.an, ptr %i.o, align 8, !tbaa !1728
  br label %.loopexit

bb.c:                                             ; preds = %bb.c, %.lr.ph63.new
  %.04862 = phi i64 [ 0, %.lr.ph63.new ], [ %i.av, %bb.c ] ; 5 uses
  %niter96 = phi i64 [ 0, %.lr.ph63.new ], [ %niter96.next.3, %bb.c ]
  %i.ao = getelementptr [16 x i8], ptr %i.ag, i64 %.04862
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.ao, align 8
  %i.ap = getelementptr [16 x i8], ptr %i.ag, i64 %.04862
  %i.aq = getelementptr i8, ptr %i.ap, i64 16
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.aq, align 8
  %i.ar = getelementptr [16 x i8], ptr %i.ag, i64 %.04862
  %i.as = getelementptr i8, ptr %i.ar, i64 32
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.as, align 8
  %i.at = getelementptr [16 x i8], ptr %i.ag, i64 %.04862
  %i.au = getelementptr i8, ptr %i.at, i64 48
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.au, align 8
  %i.av = add nuw i64 %.04862, 4                  ; 2 uses
  %niter96.next.3 = add i64 %niter96, 4           ; 2 uses
  %niter96.ncmp.3 = icmp eq i64 %niter96.next.3, %unroll_iter95
  br i1 %niter96.ncmp.3, label %.thread.loopexit.unr-lcssa, label %bb.c, !llvm.loop !1753

bb.d:                                             ; preds = %bb.d, %.lr.ph.new
  %.058 = phi i64 [ 0, %.lr.ph.new ], [ %i.bd, %bb.d ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.d ]
  %i.aw = getelementptr [16 x i8], ptr %i.ad, i64 %.058
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.aw, align 8
  %i.ax = getelementptr [16 x i8], ptr %i.ad, i64 %.058
  %i.ay = getelementptr i8, ptr %i.ax, i64 16
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.ay, align 8
  %i.az = getelementptr [16 x i8], ptr %i.ad, i64 %.058
  %i.ba = getelementptr i8, ptr %i.az, i64 32
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.ba, align 8
  %i.bb = getelementptr [16 x i8], ptr %i.ad, i64 %.058
  %i.bc = getelementptr i8, ptr %i.bb, i64 48
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.bc, align 8
  %i.bd = add nuw i64 %.058, 4                    ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.d, !llvm.loop !1754

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.058.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.bd, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod87 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod87)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %.058.epil = phi i64 [ %.058.epil.init, %.epil.preheader ], [ %i.bf, %bb.e ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.be = getelementptr [16 x i8], ptr %i.ad, i64 %.058.epil
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.be, align 8
  %i.bf = add nuw i64 %.058.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit, label %bb.e, !llvm.loop !1755

._crit_edge.loopexit:                             ; preds = %bb.e, %._crit_edge.loopexit.unr-lcssa
  %.pre69 = load i64, ptr %i.p, align 8, !tbaa !1727
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader56
  %i.bg = phi i64 [ %.pre69, %._crit_edge.loopexit ], [ %i.v, %.preheader56 ]
  %i.bh = add i64 %i.z, %.04959                   ; 2 uses
  %i.bi = add i64 %i.bg, 1                        ; 2 uses
  store i64 %i.bi, ptr %i.p, align 8, !tbaa !1727
  store i64 0, ptr %i.o, align 8, !tbaa !1728
  %i.bj = icmp ult i64 %i.bh, %i.s
  br i1 %i.bj, label %.lr.ph61, label %.loopexit

.loopexit:                                        ; preds = %._crit_edge, %bb.a, %.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb14RLEInitAnalyzeIhEENS_10unique_ptrINS_12AnalyzeStateESt14default_deleteIS2_ELb1EEERNS_10ColumnDataENS_12PhysicalTypeE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.121") align 8 %0, ptr noundef nonnull align 8 dereferenceable(296) %1, i8 noundef zeroext %2) #1 comdat personality ptr @__gxx_personality_v0 {
_ZNSt10unique_ptrIN6duckdb15RLEAnalyzeStateIhEESt14default_deleteIS2_EED2Ev.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !86, !nonnull !55, !align !133
  %i.c = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #33, !noalias !1756 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = ptrtoint ptr %i.b to i64
  store i64 %i.e, ptr %i.d, align 8, !tbaa !137, !noalias !1756
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb15RLEAnalyzeStateIhEE, i64 16), ptr %i.c, align 8, !tbaa !48, !noalias !1756
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %i.f, align 8, !tbaa !1759, !noalias !1756
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i8 0, ptr %i.g, align 8, !tbaa !1761, !noalias !1756
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 26
  store i16 0, ptr %i.h, align 2, !tbaa !1762, !noalias !1756
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %i.i, align 8, !tbaa !1763, !noalias !1756
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i8 1, ptr %i.j, align 8, !tbaa !1764, !noalias !1756
  store ptr %i.c, ptr %0, align 8, !tbaa !142
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6duckdb10RLEAnalyzeIhEEbRNS_12AnalyzeStateERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2) #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %3)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.b unwind label %bb.ak

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIhEEvv(ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %_ZN6duckdb19UnifiedVectorFormat7GetDataIhEEPKT_RKS0_.exit unwind label %bb.al

_ZN6duckdb19UnifiedVectorFormat7GetDataIhEEPKT_RKS0_.exit: ; preds = %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !429  ; 9 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6duckdb19UnifiedVectorFormat7GetDataIhEEPKT_RKS0_.exit
  %i.c = load ptr, ptr %3, align 8, !tbaa !438
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !439  ; 4 uses
  %.not.i = icmp eq ptr %i.d, null                ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 26 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !11   ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 28 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 13 uses
  br i1 %.not.i.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %.promoted = load i8, ptr %i.i, align 8, !tbaa !1764
  %i.k = trunc nuw i8 %.promoted to i1            ; 2 uses
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.peel, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.peel

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.peel: ; preds = %.lr.ph.split.us
  %i.l = load i32, ptr %i.d, align 4, !tbaa !3
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  br i1 %i.k, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.peel
  %i.n = load i8, ptr %i.j, align 8, !tbaa !1761
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.m ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !239   ; 2 uses
  %i.q = icmp eq i8 %i.n, %i.p
  %i.r = load i16, ptr %i.h, align 2, !tbaa !1762 ; 2 uses
  br i1 %i.q, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i16.us.peel = icmp eq i16 %i.r, 0
  br i1 %.not.i16.us.peel, label %.thread.i.us.peel, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load i64, ptr %i.e, align 8, !tbaa !1759
  %i.t = add i64 %i.s, 1
  store i64 %i.t, ptr %i.e, align 8, !tbaa !1759
  %.pre.i.us.peel = load i8, ptr %i.o, align 1, !tbaa !239
  br label %.thread.i.us.peel

.thread.i.us.peel:                                ; preds = %bb.e, %bb.d
  %i.u = phi i8 [ %.pre.i.us.peel, %bb.e ], [ %i.p, %bb.d ]
  store i8 %i.u, ptr %i.j, align 8, !tbaa !1761
  store i16 1, ptr %i.h, align 2, !tbaa !1762
  br label %_ZN6duckdb8RLEStateIhE6UpdateINS_14EmptyRLEWriterEEEvPKhRNS_12ValidityMaskEm.exit.us.peel

bb.f:                                             ; preds = %bb.c
  %i.v = add i16 %i.r, 1                          ; 2 uses
  store i16 %i.v, ptr %i.h, align 2, !tbaa !1762
  br label %bb.h

bb.g:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.peel
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.m
  %i.x = load i8, ptr %i.w, align 1, !tbaa !239
  store i8 %i.x, ptr %i.j, align 8, !tbaa !1761
  %i.y = load i64, ptr %i.e, align 8, !tbaa !1759
  %i.z = add i64 %i.y, 1
  store i64 %i.z, ptr %i.e, align 8, !tbaa !1759
  %i.aa = load i16, ptr %i.h, align 2, !tbaa !1762
  %i.ab = add i16 %i.aa, 1                        ; 2 uses
  store i16 %i.ab, ptr %i.h, align 2, !tbaa !1762
  store i8 0, ptr %i.i, align 8, !tbaa !1764
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ac = phi i16 [ %i.ab, %bb.g ], [ %i.v, %bb.f ]
  %i.ad = icmp eq i16 %i.ac, -1
  br i1 %i.ad, label %bb.i, label %_ZN6duckdb8RLEStateIhE6UpdateINS_14EmptyRLEWriterEEEvPKhRNS_12ValidityMaskEm.exit.us.peel

bb.i:                                             ; preds = %bb.h
  store i16 0, ptr %i.h, align 2, !tbaa !1762
  %i.ae = load i64, ptr %i.e, align 8, !tbaa !1759
  %i.af = add i64 %i.ae, 1
  store i64 %i.af, ptr %i.e, align 8, !tbaa !1759
  br label %_ZN6duckdb8RLEStateIhE6UpdateINS_14EmptyRLEWriterEEEvPKhRNS_12ValidityMaskEm.exit.us.peel

_ZN6duckdb8RLEStateIhE6UpdateINS_14EmptyRLEWriterEEEvPKhRNS_12ValidityMaskEm.exit.us.peel: ; preds = %bb.i, %bb.h, %.thread.i.us.peel
  %exitcond20.not.peel = icmp eq i64 %2, 1
  br i1 %exitcond20.not.peel, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.peel: ; preds = %.lr.ph.split.us
  br i1 %i.k, label %bb.n, label %bb.j

bb.j:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.peel
  %i.ag = load i8, ptr %i.j, align 8, !tbaa !1761
  %i.ah = load i8, ptr %i.b, align 1, !tbaa !239  ; 2 uses
  %i.ai = icmp eq i8 %i.ag, %i.ah
  %i.aj = load i16, ptr %i.h, align 2, !tbaa !1762 ; 2 uses
  br i1 %i.ai, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not.i16.us.us.peel = icmp eq i16 %i.aj, 0
  br i1 %.not.i16.us.us.peel, label %.thread.i.us.us.peel, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = load i64, ptr %i.e, align 8, !tbaa !1759
  %i.al = add i64 %i.ak, 1
  store i64 %i.al, ptr %i.e, align 8, !tbaa !1759
  %.pre.i.us.us.peel = load i8, ptr %i.b, align 1, !tbaa !239
  br label %.thread.i.us.us.peel

.thread.i.us.us.peel:                             ; preds = %bb.l, %bb.k
  %i.am = phi i8 [ %.pre.i.us.us.peel, %bb.l ], [ %i.ah, %bb.k ]
  store i8 %i.am, ptr %i.j, align 8, !tbaa !1761
  store i16 1, ptr %i.h, align 2, !tbaa !1762
  br label %_ZN6duckdb8RLEStateIhE6UpdateINS_14EmptyRLEWriterEEEvPKhRNS_12ValidityMaskEm.exit.us.us.peel

bb.m:                                             ; preds = %bb.j
  %i.an = add i16 %i.aj, 1                        ; 2 uses
  store i16 %i.an, ptr %i.h, align 2, !tbaa !1762
  br label %bb.o

bb.n:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.peel
  %i.ao = load i8, ptr %i.b, align 1, !tbaa !239
  store i8 %i.ao, ptr %i.j, align 8, !tbaa !1761
  %i.ap = load i64, ptr %i.e, align 8, !tbaa !1759
  %i.aq = add i64 %i.ap, 1
  store i64 %i.aq, ptr %i.e, align 8, !tbaa !1759
  %i.ar = load i16, ptr %i.h, align 2, !tbaa !1762
  %i.as = add i16 %i.ar, 1                        ; 2 uses
  store i16 %i.as, ptr %i.h, align 2, !tbaa !1762
  store i8 0, ptr %i.i, align 8, !tbaa !1764
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.at = phi i16 [ %i.as, %bb.n ], [ %i.an, %bb.m ]
  %i.au = icmp eq i16 %i.at, -1
  br i1 %i.au, label %bb.p, label %_ZN6duckdb8RLEStateIhE6UpdateINS_14EmptyRLEWriterEEEvPKhRNS_12ValidityMaskEm.exit.us.us.peel

bb.p:                                             ; preds = %bb.o
  store i16 0, ptr %i.h, align 2, !tbaa !1762
  %i.av = load i64, ptr %i.e, align 8, !tbaa !1759
  %i.aw = add i64 %i.av, 1
  store i64 %i.aw, ptr %i.e, align 8, !tbaa !1759
  br label %_ZN6duckdb8RLEStateIhE6UpdateINS_14EmptyRLEWriterEEEvPKhRNS_12ValidityMaskEm.exit.us.us.peel

_ZN6duckdb8RLEStateIhE6UpdateINS_14EmptyRLEWriterEEEvPKhRNS_12ValidityMaskEm.exit.us.us.peel: ; preds = %bb.p, %bb.o, %.thread.i.us.us.peel
  %exitcond21.not.peel = icmp eq i64 %2, 1
  br i1 %exitcond21.not.peel, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us: ; preds = %_ZN6duckdb8RLEStateIhE6UpdateINS_14EmptyRLEWriterEEEvPKhRNS_12ValidityMaskEm.exit.us.us.peel, %_ZN6duckdb8RLEStateIhE6UpdateINS_14EmptyRLEWriterEEEvPKhRNS_12ValidityMaskEm.exit.us.us
  %.01117.us.us = phi i64 [ %i.bj, %_ZN6duckdb8RLEStateIhE6UpdateINS_14EmptyRLEWriterEEEvPKhRNS_12ValidityMaskEm.exit.us.us ], [ 1, %_ZN6duckdb8RLEStateIhE6UpdateINS_14EmptyRLEWriterEEEvPKhRNS_12ValidityMaskEm.exit.us.us.peel ] ; 2 uses
  %i.ax = load i8, ptr %i.j, align 8, !tbaa !1761
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 %.01117.us.us ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !239 ; 2 uses
  %i.ba = icmp eq i8 %i.ax, %i.az
  %i.bb = load i16, ptr %i.h, align 2, !tbaa !1762 ; 2 uses
  br i1 %i.ba, label %bb.s, label %bb.q
end_hunk_3
