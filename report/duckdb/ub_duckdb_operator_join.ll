inline.NumInlined: 13952
inline.NumDeleted: 6687
begin_hunk_0_@_ZNK6duckdb10unique_ptrINS_21JoinFilterGlobalStateESt14default_deleteIS1_ELb1EEdeEv:bb.a
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

_ZN6duckdb10unique_ptrINS_21JoinFilterGlobalStateESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb16PhysicalHashJoin15PrepareFinalizeERNS_13ClientContextERNS_15GlobalSinkStateE(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(81) %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 2 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(1088) ptr @_ZNK6duckdb10unique_ptrINS_13JoinHashTableESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 168 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 176 ; 2 uses
  %i.f = tail call noundef i64 @_ZNK6duckdb13JoinHashTable12GetTotalSizeERKNS_6vectorINS_10unique_ptrIS0_St14default_deleteIS0_ELb1EEELb1ESaIS5_EEERmSA_(ptr noundef nonnull align 8 dereferenceable(1088) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 160 ; 2 uses
  store i64 %i.f, ptr %i.g, align 8, !tbaa !1195
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb15ArenaLinkedListISt17reference_wrapperINS_16PhysicalOperatorEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 noundef 0)
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !271
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 1016
  %i.m = load i64, ptr %i.l, align 8, !tbaa !1239
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.o = load i64, ptr %i.n, align 8, !tbaa !1302
  %i.p = tail call fastcc noundef i64 @_ZN6duckdbL31GetPartitioningSpaceRequirementERNS_13ClientContextERKNS_6vectorINS_11LogicalTypeELb1ESaIS3_EEEmm(ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef %i.m, i64 noundef %i.o)
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 184 ; 2 uses
  store i64 %i.p, ptr %i.q, align 8, !tbaa !1303
  %i.r = load i64, ptr %i.d, align 8, !tbaa !1304
  %i.s = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_13JoinHashTableESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.t = load i64, ptr %i.e, align 8, !tbaa !1305
  %i.u = uitofp i64 %i.t to double
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 1008
  %i.w = load double, ptr %i.v, align 8, !tbaa !1306
  %i.x = fmul double %i.w, %i.u
  %i.y = fptoui double %i.x to i64
  %i.z = tail call noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.y)
  %i.aa = tail call noundef i64 @llvm.umax.i64(i64 %i.z, i64 16384)
  %i.ab = shl i64 %i.aa, 3
  %i.ac = add i64 %i.ab, %i.r
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 3 uses
  %i.ae = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_20TemporaryMemoryStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ad)
  %i.af = load i64, ptr %i.q, align 8, !tbaa !1303
  %i.ag = add i64 %i.ac, %i.af
  tail call void @_ZN6duckdb20TemporaryMemoryState21SetMinimumReservationEm(ptr noundef nonnull align 8 dereferenceable(40) %i.ae, i64 noundef %i.ag)
  %i.ah = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_20TemporaryMemoryStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ad)
  %i.ai = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb15ArenaLinkedListISt17reference_wrapperINS_16PhysicalOperatorEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 noundef 0)
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !271 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 48 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !694 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 56 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !694 ; 2 uses
  %.not12.i = icmp eq ptr %i.al, %i.an
  br i1 %.not12.i, label %_ZN6duckdbL13GetTupleWidthERKNS_6vectorINS_11LogicalTypeELb1ESaIS1_EEERb.exit, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre.i = load ptr, ptr %i.am, align 8, !tbaa !168
  %.pre15.i = load ptr, ptr %i.ak, align 8, !tbaa !272
  br label %_ZN6duckdbL13GetTupleWidthERKNS_6vectorINS_11LogicalTypeELb1ESaIS1_EEERb.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.014.i = phi i64 [ %i.ar, %.lr.ph.i ], [ 0, %bb.a ]
  %.sroa.09.013.i = phi ptr [ %i.au, %.lr.ph.i ], [ %i.al, %bb.a ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i, i64 1 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !696
  %i.aq = tail call noundef i64 @_ZN6duckdb13GetTypeIdSizeENS_12PhysicalTypeE(i8 noundef zeroext %i.ap)
  %i.ar = add i64 %i.aq, %.014.i                  ; 2 uses
  %i.as = load i8, ptr %i.ao, align 1, !tbaa !696
  %i.at = tail call noundef zeroext i1 @_ZN6duckdb18TypeIsConstantSizeENS_12PhysicalTypeE(i8 noundef zeroext %i.as) ; 0 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %i.au, %i.an
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i

_ZN6duckdbL13GetTupleWidthERKNS_6vectorINS_11LogicalTypeELb1ESaIS1_EEERb.exit: ; preds = %bb.a, %._crit_edge.loopexit.i
  %i.av = phi ptr [ %i.al, %bb.a ], [ %.pre15.i, %._crit_edge.loopexit.i ]
  %i.aw = phi ptr [ %i.al, %bb.a ], [ %.pre.i, %._crit_edge.loopexit.i ]
  %.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.ar, %._crit_edge.loopexit.i ]
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.av to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = sdiv exact i64 %i.az, 24
  %i.bb = add nsw i64 %i.ba, 7
  %i.bc = lshr i64 %i.bb, 3
  %i.bd = tail call noundef i64 @_ZN6duckdb13GetTypeIdSizeENS_12PhysicalTypeE(i8 noundef zeroext 8)
  %i.be = add i64 %i.bd, %.0.lcssa.i
  %i.bf = add i64 %i.be, %i.bc
  tail call void @_ZN6duckdb20TemporaryMemoryState25SetMaterializationPenaltyEm(ptr noundef nonnull align 8 dereferenceable(40) %i.ah, i64 noundef %i.bf)
  %i.bg = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_20TemporaryMemoryStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ad)
  %i.bh = load i64, ptr %i.g, align 8, !tbaa !1195
  tail call void @_ZN6duckdb20TemporaryMemoryState16SetRemainingSizeEm(ptr noundef nonnull align 8 dereferenceable(40) %i.bg, i64 noundef %i.bh)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(1088) ptr @_ZNK6duckdb10unique_ptrINS_13JoinHashTableESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.147", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1116   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_13JoinHashTableESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !67

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.46, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
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
  %i.e = load ptr, ptr %1, align 8, !tbaa !70     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #29
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

_ZN6duckdb10unique_ptrINS_13JoinHashTableESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

declare noundef i64 @_ZNK6duckdb13JoinHashTable12GetTotalSizeERKNS_6vectorINS_10unique_ptrIS0_St14default_deleteIS0_ELb1EEELb1ESaIS5_EEERmSA_(ptr noundef nonnull align 8 dereferenceable(1088), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i64 @_ZN6duckdbL31GetPartitioningSpaceRequirementERNS_13ClientContextERKNS_6vectorINS_11LogicalTypeELb1ESaIS3_EEEmm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb13BufferManager16GetBufferManagerERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %0) ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !694    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !694  ; 2 uses
  %.not12.i = icmp eq ptr %i.b, %i.d
  br i1 %.not12.i, label %_ZN6duckdbL13GetTupleWidthERKNS_6vectorINS_11LogicalTypeELb1ESaIS1_EEERb.exit, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !168
  %.pre15.i = load ptr, ptr %1, align 8, !tbaa !272
  %i.e = select i1 %4, i64 1, i64 3
  br label %_ZN6duckdbL13GetTupleWidthERKNS_6vectorINS_11LogicalTypeELb1ESaIS1_EEERb.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.0 = phi i1 [ %4, %.lr.ph.i ], [ true, %bb.a ]
  %.014.i = phi i64 [ %i.i, %.lr.ph.i ], [ 0, %bb.a ]
  %.sroa.09.013.i = phi ptr [ %i.l, %.lr.ph.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i, i64 1 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !696
  %i.h = tail call noundef i64 @_ZN6duckdb13GetTypeIdSizeENS_12PhysicalTypeE(i8 noundef zeroext %i.g)
  %i.i = add i64 %i.h, %.014.i                    ; 2 uses
  %i.j = load i8, ptr %i.f, align 1, !tbaa !696
  %i.k = tail call noundef zeroext i1 @_ZN6duckdb18TypeIsConstantSizeENS_12PhysicalTypeE(i8 noundef zeroext %i.j)
  %4 = and i1 %.0, %i.k                           ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %i.l, %i.d
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i

_ZN6duckdbL13GetTupleWidthERKNS_6vectorINS_11LogicalTypeELb1ESaIS1_EEERb.exit: ; preds = %bb.a, %._crit_edge.loopexit.i
  %.1 = phi i64 [ 1, %bb.a ], [ %i.e, %._crit_edge.loopexit.i ]
  %i.m = phi ptr [ %i.b, %bb.a ], [ %.pre15.i, %._crit_edge.loopexit.i ]
  %i.n = phi ptr [ %i.b, %bb.a ], [ %.pre.i, %._crit_edge.loopexit.i ]
  %.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.i, %._crit_edge.loopexit.i ]
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = sdiv exact i64 %i.q, 24
  %i.s = add nsw i64 %i.r, 7
  %i.t = lshr i64 %i.s, 3
  %i.u = tail call noundef i64 @_ZN6duckdb13GetTypeIdSizeENS_12PhysicalTypeE(i8 noundef zeroext 8)
  %i.v = add i64 %i.u, %.0.lcssa.i
  %i.w = add i64 %i.v, %i.t
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !63
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 120
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef i64 %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.ab = udiv i64 %i.aa, %i.w                    ; 2 uses
  %i.ac = add i64 %i.ab, 1
  %i.ad = add i64 %i.ab, 2049
  %i.ae = udiv i64 %i.ad, %i.ac
  %spec.select = add i64 %i.ae, %.1
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !63
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 112
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = tail call noundef i64 %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.aj = shl i64 %3, %2
  %i.ak = mul i64 %spec.select, %i.aj
  %i.al = mul i64 %i.ak, %i.ai
  ret i64 %i.al
}

declare void @_ZN6duckdb20TemporaryMemoryState21SetMinimumReservationEm(ptr noundef nonnull align 8 dereferenceable(40), i64 noundef) local_unnamed_addr #6

declare void @_ZN6duckdb20TemporaryMemoryState25SetMaterializationPenaltyEm(ptr noundef nonnull align 8 dereferenceable(40), i64 noundef) local_unnamed_addr #6

declare void @_ZN6duckdb20TemporaryMemoryState16SetRemainingSizeEm(ptr noundef nonnull align 8 dereferenceable(40), i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb23HashJoinGlobalSinkState16ScheduleFinalizeERNS_8PipelineERNS_5EventE(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(224) %1, ptr noundef nonnull align 8 dereferenceable(113) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::shared_ptr.1354", align 16 ; 8 uses
  %4 = alloca %"class.duckdb::shared_ptr.1358", align 16 ; 4 uses
  %5 = alloca %"class.duckdb::shared_ptr.1362", align 16 ; 8 uses
  %6 = alloca %"class.duckdb::shared_ptr.1358", align 16 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_13JoinHashTableESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 856
  %i.d = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb19TupleDataCollection5CountEv(ptr noundef nonnull align 8 dereferenceable(192) %i.d)
  %i.f = load i64, ptr %i.e, align 8, !tbaa !68
  %i.g = icmp eq i64 %i.f, 0
  %i.h = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_13JoinHashTableESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 465
  store i8 1, ptr %i.i, align 1, !tbaa !1307
  br label %bb.ai

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb13JoinHashTable20AllocatePointerTableEv(ptr noundef nonnull align 8 dereferenceable(1088) %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @_ZN6duckdb15make_shared_ptrINS_22HashJoinTableInitEventEJRNS_8PipelineERNS_23HashJoinGlobalSinkStateEEEENS_10shared_ptrIT_Lb1EEEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::shared_ptr.1354") align 8 %3, ptr noundef nonnull align 8 dereferenceable(224) %1, ptr noundef nonnull align 8 dereferenceable(264) %0)
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !59   ; 2 uses
  %i.m = load <2 x ptr>, ptr %3, align 16, !tbaa !850
  store <2 x ptr> %i.m, ptr %4, align 16, !tbaa !850
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_5EventELb1EEC2INS_22HashJoinTableInitEventETnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERKNS0_IS6_Lb1EEE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !66
  %.not.i.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load i32, ptr %i.n, align 4, !tbaa !3
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.n, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_5EventELb1EEC2INS_22HashJoinTableInitEventETnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERKNS0_IS6_Lb1EEE.exit

bb.f:                                             ; preds = %bb.d
  %i.r = atomicrmw volatile add ptr %i.n, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_5EventELb1EEC2INS_22HashJoinTableInitEventETnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERKNS0_IS6_Lb1EEE.exit

_ZN6duckdb10shared_ptrINS_5EventELb1EEC2INS_22HashJoinTableInitEventETnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERKNS0_IS6_Lb1EEE.exit: ; preds = %bb.c, %bb.e, %bb.f
  invoke void @_ZN6duckdb5Event11InsertEventENS_10shared_ptrIS0_Lb1EEE(ptr noundef nonnull align 8 dereferenceable(113) %2, ptr noundef nonnull %4)
          to label %bb.g unwind label %bb.aj

bb.g:                                             ; preds = %_ZN6duckdb10shared_ptrINS_5EventELb1EEC2INS_22HashJoinTableInitEventETnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERKNS0_IS6_Lb1EEE.exit
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !59   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10shared_ptrINS_5EventELb1EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !60
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !62
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !63
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #30, !inline_history !1308
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !63
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #30, !inline_history !1308
  br label %_ZN6duckdb10shared_ptrINS_5EventELb1EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !66
  %.not.i.i.i.i11 = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i11, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.m, label %_ZN6duckdb10shared_ptrINS_5EventELb1EED2Ev.exit, !prof !67

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #30
  br label %_ZN6duckdb10shared_ptrINS_5EventELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_5EventELb1EED2Ev.exit:  ; preds = %bb.g, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  invoke void @_ZN6duckdb15make_shared_ptrINS_21HashJoinFinalizeEventEJRNS_8PipelineERNS_23HashJoinGlobalSinkStateEEEENS_10shared_ptrIT_Lb1EEEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::shared_ptr.1362") align 8 %5, ptr noundef nonnull align 8 dereferenceable(224) %1, ptr noundef nonnull align 8 dereferenceable(264) %0)
          to label %bb.n unwind label %bb.ak

bb.n:                                             ; preds = %_ZN6duckdb10shared_ptrINS_5EventELb1EED2Ev.exit
  %i.ai = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_22HashJoinTableInitEventELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.o unwind label %bb.al

bb.o:                                             ; preds = %bb.n
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ak = load <2 x ptr>, ptr %5, align 16, !tbaa !850
  store ptr null, ptr %i.aj, align 8, !tbaa !59
  store <2 x ptr> %i.ak, ptr %6, align 16, !tbaa !850
  store ptr null, ptr %5, align 16, !tbaa !1309
  invoke void @_ZN6duckdb5Event11InsertEventENS_10shared_ptrIS0_Lb1EEE(ptr noundef nonnull align 8 dereferenceable(113) %i.ai, ptr noundef nonnull %6)
          to label %bb.p unwind label %bb.am

bb.p:                                             ; preds = %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !59 ; 8 uses
  %.not.i.i.i12 = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i12, label %_ZN6duckdb10shared_ptrINS_5EventELb1EED2Ev.exit16, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 4 uses
  %i.ao = load atomic i64, ptr %i.an acquire, align 8 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 4294967297
  %i.aq = trunc i64 %i.ao to i32                  ; 2 uses
  br i1 %i.ap, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.an, align 8, !tbaa !60
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  store i32 0, ptr %i.ar, align 4, !tbaa !62
  %i.as = load ptr, ptr %i.am, align 8, !tbaa !63
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #30, !inline_history !1308
  %i.av = load ptr, ptr %i.am, align 8, !tbaa !63
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #30, !inline_history !1308
  br label %_ZN6duckdb10shared_ptrINS_5EventELb1EED2Ev.exit16

bb.s:                                             ; preds = %bb.q
  %i.ay = load i8, ptr @__libc_single_threaded, align 1, !tbaa !66
  %.not.i.i.i.i13 = icmp eq i8 %i.ay, 0
  br i1 %.not.i.i.i.i13, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.az = add nsw i32 %i.aq, -1
  store i32 %i.az, ptr %i.an, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i14
end_hunk_0
