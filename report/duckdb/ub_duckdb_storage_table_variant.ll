inline.NumInlined: 2616
inline.NumDeleted: 1278
begin_hunk_0_@_ZN6duckdb21VariantShreddingStats6UpdateERNS_6VectorEm:bb.a
    i8 29, label %bb.av
    i8 20, label %_ZN6duckdb14VariantVisitorINS_12_GLOBAL__N_119VariantStatsVisitorEvE5VisitIJRNS_21VariantShreddingStatsEmEEEvRKNS_24UnifiedVariantVectorDataEmjDpOT_.exit
    i8 21, label %_ZN6duckdb14VariantVisitorINS_12_GLOBAL__N_119VariantStatsVisitorEvE5VisitIJRNS_21VariantShreddingStatsEmEEEvRKNS_24UnifiedVariantVectorDataEmjDpOT_.exit
    i8 26, label %_ZN6duckdb14VariantVisitorINS_12_GLOBAL__N_119VariantStatsVisitorEvE5VisitIJRNS_21VariantShreddingStatsEmEEEvRKNS_24UnifiedVariantVectorDataEmjDpOT_.exit
    i8 22, label %_ZN6duckdb14VariantVisitorINS_12_GLOBAL__N_119VariantStatsVisitorEvE5VisitIJRNS_21VariantShreddingStatsEmEEEvRKNS_24UnifiedVariantVectorDataEmjDpOT_.exit
    i8 23, label %_ZN6duckdb14VariantVisitorINS_12_GLOBAL__N_119VariantStatsVisitorEvE5VisitIJRNS_21VariantShreddingStatsEmEEEvRKNS_24UnifiedVariantVectorDataEmjDpOT_.exit
    i8 24, label %_ZN6duckdb14VariantVisitorINS_12_GLOBAL__N_119VariantStatsVisitorEvE5VisitIJRNS_21VariantShreddingStatsEmEEEvRKNS_24UnifiedVariantVectorDataEmjDpOT_.exit
    i8 25, label %_ZN6duckdb14VariantVisitorINS_12_GLOBAL__N_119VariantStatsVisitorEvE5VisitIJRNS_21VariantShreddingStatsEmEEEvRKNS_24UnifiedVariantVectorDataEmjDpOT_.exit
    i8 27, label %_ZN6duckdb14VariantVisitorINS_12_GLOBAL__N_119VariantStatsVisitorEvE5VisitIJRNS_21VariantShreddingStatsEmEEEvRKNS_24UnifiedVariantVectorDataEmjDpOT_.exit
  ]

bb.h:                                             ; preds = %.noexc16, %.noexc16, %.noexc16, %.noexc16, %.noexc16
  %i.t = invoke { i64, ptr } @_ZN6duckdb12VariantUtils16DecodeStringDataERKNS_24UnifiedVariantVectorDataEmj(ptr noundef nonnull align 8 dereferenceable(160) %10, i64 noundef %.043, i32 noundef 0)
          to label %.noexc17 unwind label %.loopexit ; 0 uses

.noexc17:                                         ; preds = %bb.h
  switch i8 %i.h, label %bb.i [
    i8 16, label %_ZN6duckdb14VariantVisitorINS_12_GLOBAL__N_119VariantStatsVisitorEvE5VisitIJRNS_21VariantShreddingStatsEmEEEvRKNS_24UnifiedVariantVectorDataEmjDpOT_.exit
    i8 17, label %_ZN6duckdb14VariantVisitorINS_12_GLOBAL__N_119VariantStatsVisitorEvE5VisitIJRNS_21VariantShreddingStatsEmEEEvRKNS_24UnifiedVariantVectorDataEmjDpOT_.exit
    i8 31, label %_ZN6duckdb14VariantVisitorINS_12_GLOBAL__N_119VariantStatsVisitorEvE5VisitIJRNS_21VariantShreddingStatsEmEEEvRKNS_24UnifiedVariantVectorDataEmjDpOT_.exit
    i8 33, label %_ZN6duckdb14VariantVisitorINS_12_GLOBAL__N_119VariantStatsVisitorEvE5VisitIJRNS_21VariantShreddingStatsEmEEEvRKNS_24UnifiedVariantVectorDataEmjDpOT_.exit
    i8 32, label %_ZN6duckdb14VariantVisitorINS_12_GLOBAL__N_119VariantStatsVisitorEvE5VisitIJRNS_21VariantShreddingStatsEmEEEvRKNS_24UnifiedVariantVectorDataEmjDpOT_.exit
  ]

bb.i:                                             ; preds = %.noexc17
  %i.u = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.23, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.j unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.thread.i.i

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  invoke void @_ZN6duckdb8EnumUtil8ToStringINS_18VariantLogicalTypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, i8 noundef zeroext %i.h)
          to label %bb.k unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN6duckdb17InternalExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  invoke void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %bb.o unwind label %bb.m

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.thread.i.i: ; preds = %bb.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split.i.i

bb.m:                                             ; preds = %bb.l, %bb.k
  %.0.i.i = phi i1 [ false, %bb.l ], [ true, %bb.k ] ; 2 uses
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.x = load ptr, ptr %8, align 8, !tbaa !46     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.m
  call void @_ZdlPv(ptr noundef %i.x) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.aa = load ptr, ptr %6, align 8, !tbaa !46    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.j
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.ae = load ptr, ptr %6, align 8, !tbaa !46    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %.sink.split.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.thread.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  call void @_ZdlPv(ptr noundef %i.ae) #26
  br label %.sink.split.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  call void @_ZdlPv(ptr noundef %i.aa) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br i1 %.0.i.i, label %bb.n, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br i1 %.0.i.i, label %bb.n, label %.body

.sink.split.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.thread.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.thread.i.i
  %.pn.pn4.ph.i.i = phi { ptr, i32 } [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.thread.i.i ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.thread.i.i ], [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.n

bb.n:                                             ; preds = %.sink.split.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i.i
  %.pn.pn4.i.i = phi { ptr, i32 } [ %i.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i.i ], [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i.i ], [ %.pn.pn4.ph.i.i, %.sink.split.i.i ]
  call void @__cxa_free_exception(ptr %i.u) #24
  br label %.body

bb.o:                                             ; preds = %bb.l
  unreachable

bb.p:                                             ; preds = %.noexc16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.ah = invoke { i64, ptr } @_ZN6duckdb12VariantUtils17DecodeDecimalDataERKNS_24UnifiedVariantVectorDataEmj(ptr noundef nonnull align 8 dereferenceable(160) %10, i64 noundef %.043, i32 noundef 0)
          to label %.noexc29 unwind label %.loopexit ; 2 uses

.noexc29:                                         ; preds = %bb.p
  %i.ai = extractvalue { i64, ptr } %i.ah, 0      ; 7 uses
  store i64 %i.ai, ptr %3, align 8
  %i.aj = extractvalue { i64, ptr } %i.ah, 1
  store ptr %i.aj, ptr %i.d, align 8
  %i.ak = trunc i64 %i.ai to i32                  ; 8 uses
  %i.al = icmp ugt i32 %i.ak, 38
  %i.am = lshr i64 %i.ai, 32
  %i.an = trunc nuw i64 %i.am to i32              ; 4 uses
  br i1 %i.al, label %bb.q, label %bb.w

bb.q:                                             ; preds = %.noexc29
  %i.ao = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.24, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.r unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN6duckdb17InternalExceptionC2IJRjEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  invoke void @__cxa_throw(ptr nonnull %i.ao, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %bb.at unwind label %bb.t

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.q
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.u

bb.t:                                             ; preds = %bb.s, %bb.r
  %.031.i = phi i1 [ false, %bb.s ], [ true, %bb.r ] ; 2 uses
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ar = load ptr, ptr %4, align 8, !tbaa !46    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.t
  call void @_ZdlPv(ptr noundef %i.ar) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br i1 %.031.i, label %bb.u, label %bb.v

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br i1 %.031.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn48.i = phi { ptr, i32 } [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.ao) #24
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn47.i = phi { ptr, i32 } [ %.pn48.i, %bb.u ], [ %i.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %.body

bb.w:                                             ; preds = %.noexc29
  %i.au = icmp samesign ugt i32 %i.ak, 18
  br i1 %i.au, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %bb.w
  %i.av = invoke noundef nonnull align 8 dereferenceable(368) ptr @_ZN6duckdb6vectorINS_22VariantColumnStatsDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0)
          to label %.noexc32 unwind label %.loopexit ; 6 uses

.noexc32:                                         ; preds = %bb.x
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 128
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !7
  %.not.i.i = icmp eq i64 %i.ax, 1
  br i1 %.not.i.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.noexc32
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 280
  store i64 %i.ai, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 288
  store i8 1, ptr %i.az, align 8, !tbaa !28
  br label %.noexc18

bb.z:                                             ; preds = %.noexc32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 288 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !28, !range !47, !noundef !78
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.aa, label %.noexc18

bb.aa:                                            ; preds = %bb.z
  %11 = getelementptr inbounds nuw i8, ptr %i.av, i64 280
  %12 = load i32, ptr %11, align 8, !tbaa !70
  %.not15.i.i = icmp eq i32 %12, %i.ak
  %i.bd = getelementptr inbounds nuw i8, ptr %i.av, i64 284
  %i.be = load i32, ptr %i.bd, align 4
  %.not16.i.i = icmp eq i32 %i.be, %i.an
  %or.cond.i.i = select i1 %.not15.i.i, i1 %.not16.i.i, i1 false
  br i1 %or.cond.i.i, label %.noexc18, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i8 0, ptr %i.ba, align 8, !tbaa !28
  br label %.noexc18

bb.ac:                                            ; preds = %bb.w
  %i.bf = icmp samesign ugt i32 %i.ak, 9
  br i1 %i.bf, label %bb.ad, label %bb.ai

bb.ad:                                            ; preds = %bb.ac
  %i.bg = invoke noundef nonnull align 8 dereferenceable(368) ptr @_ZN6duckdb6vectorINS_22VariantColumnStatsDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0)
          to label %.noexc33 unwind label %.loopexit ; 6 uses

.noexc33:                                         ; preds = %bb.ad
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 128
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !7
  %.not.i34.i = icmp eq i64 %i.bi, 1
  br i1 %.not.i34.i, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.noexc33
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 280
  store i64 %i.ai, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 288
  store i8 1, ptr %i.bk, align 8, !tbaa !28
  br label %.noexc18

bb.af:                                            ; preds = %.noexc33
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 288 ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 8, !tbaa !28, !range !47, !noundef !78
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %bb.ag, label %.noexc18

bb.ag:                                            ; preds = %bb.af
  %13 = getelementptr inbounds nuw i8, ptr %i.bg, i64 280
  %14 = load i32, ptr %13, align 8, !tbaa !70
  %.not15.i35.i = icmp eq i32 %14, %i.ak
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 284
  %i.bp = load i32, ptr %i.bo, align 4
  %.not16.i36.i = icmp eq i32 %i.bp, %i.an
  %or.cond.i37.i = select i1 %.not15.i35.i, i1 %.not16.i36.i, i1 false
  br i1 %or.cond.i37.i, label %.noexc18, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store i8 0, ptr %i.bl, align 8, !tbaa !28
  br label %.noexc18

bb.ai:                                            ; preds = %bb.ac
  %i.bq = invoke noundef nonnull align 8 dereferenceable(368) ptr @_ZN6duckdb6vectorINS_22VariantColumnStatsDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0)
          to label %.noexc34 unwind label %.loopexit ; 11 uses

.noexc34:                                         ; preds = %bb.ai
  %i.br = icmp samesign ugt i32 %i.ak, 4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 128
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !7
  %.not.i38.i = icmp eq i64 %i.bt, 1              ; 2 uses
  br i1 %i.br, label %bb.aj, label %bb.ao

bb.aj:                                            ; preds = %.noexc34
  br i1 %.not.i38.i, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 280
  store i64 %i.ai, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 288
  store i8 1, ptr %i.bv, align 8, !tbaa !28
  br label %.noexc18

bb.al:                                            ; preds = %bb.aj
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 288 ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 8, !tbaa !28, !range !47, !noundef !78
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.am, label %.noexc18

bb.am:                                            ; preds = %bb.al
  %15 = getelementptr inbounds nuw i8, ptr %i.bq, i64 280
  %16 = load i32, ptr %15, align 8, !tbaa !70
  %.not15.i40.i = icmp eq i32 %16, %i.ak
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bq, i64 284
  %i.ca = load i32, ptr %i.bz, align 4
  %.not16.i40.i = icmp eq i32 %i.ca, %i.an
  %or.cond.i42.i = select i1 %.not15.i40.i, i1 %.not16.i40.i, i1 false
  br i1 %or.cond.i42.i, label %.noexc18, label %bb.an

bb.an:                                            ; preds = %bb.am
  store i8 0, ptr %i.bw, align 8, !tbaa !28
  br label %.noexc18

bb.ao:                                            ; preds = %.noexc34
  br i1 %.not.i38.i, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bq, i64 280
  store i64 %i.ai, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bq, i64 288
  store i8 1, ptr %i.cc, align 8, !tbaa !28
  br label %.noexc18

bb.aq:                                            ; preds = %bb.ao
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bq, i64 288 ; 2 uses
  %i.ce = load i8, ptr %i.cd, align 8, !tbaa !28, !range !47, !noundef !78
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %bb.ar, label %.noexc18

bb.ar:                                            ; preds = %bb.aq
  %17 = getelementptr inbounds nuw i8, ptr %i.bq, i64 280
  %18 = load i32, ptr %17, align 8, !tbaa !70
  %.not15.i45.i = icmp eq i32 %18, %i.ak
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bq, i64 284
  %i.ch = load i32, ptr %i.cg, align 4
  %.not16.i44.i = icmp eq i32 %i.ch, %i.an
  %or.cond.i47.i = select i1 %.not15.i45.i, i1 %.not16.i44.i, i1 false
  br i1 %or.cond.i47.i, label %.noexc18, label %bb.as

bb.as:                                            ; preds = %bb.ar
  store i8 0, ptr %i.cd, align 8, !tbaa !28
  br label %.noexc18

bb.at:                                            ; preds = %bb.s
  unreachable

.noexc18:                                         ; preds = %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ab, %bb.aa, %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %_ZN6duckdb14VariantVisitorINS_12_GLOBAL__N_119VariantStatsVisitorEvE5VisitIJRNS_21VariantShreddingStatsEmEEEvRKNS_24UnifiedVariantVectorDataEmjDpOT_.exit

bb.au:                                            ; preds = %.noexc16
  %i.ci = invoke i64 @_ZN6duckdb12VariantUtils16DecodeNestedDataERKNS_24UnifiedVariantVectorDataEmj(ptr noundef nonnull align 8 dereferenceable(160) %10, i64 noundef %.043, i32 noundef 0)
          to label %.noexc27 unwind label %.loopexit ; 2 uses

.noexc27:                                         ; preds = %bb.au
  %.sroa.0.0.extract.trunc.i24 = trunc i64 %i.ci to i32
  %.sroa.4.0.extract.shift.i25 = lshr i64 %i.ci, 32
  %.sroa.4.0.extract.trunc.i26 = trunc nuw i64 %.sroa.4.0.extract.shift.i25 to i32
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_119VariantStatsVisitor10VisitArrayERKNS_24UnifiedVariantVectorDataEmRKNS_17VariantNestedDataERNS_21VariantShreddingStatsEm(ptr noundef nonnull align 8 dereferenceable(160) %10, i64 noundef %.043, i32 %.sroa.0.0.extract.trunc.i24, i32 %.sroa.4.0.extract.trunc.i26, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0)
          to label %_ZN6duckdb14VariantVisitorINS_12_GLOBAL__N_119VariantStatsVisitorEvE5VisitIJRNS_21VariantShreddingStatsEmEEEvRKNS_24UnifiedVariantVectorDataEmjDpOT_.exit unwind label %.loopexit

bb.av:                                            ; preds = %.noexc16
  %i.cj = invoke i64 @_ZN6duckdb12VariantUtils16DecodeNestedDataERKNS_24UnifiedVariantVectorDataEmj(ptr noundef nonnull align 8 dereferenceable(160) %10, i64 noundef %.043, i32 noundef 0)
          to label %.noexc22 unwind label %.loopexit ; 2 uses

.noexc22:                                         ; preds = %bb.av
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.cj to i32
  %.sroa.4.0.extract.shift.i = lshr i64 %i.cj, 32
  %.sroa.4.0.extract.trunc.i = trunc nuw i64 %.sroa.4.0.extract.shift.i to i32
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_119VariantStatsVisitor11VisitObjectERKNS_24UnifiedVariantVectorDataEmRKNS_17VariantNestedDataERNS_21VariantShreddingStatsEm(ptr noundef nonnull align 8 dereferenceable(160) %10, i64 noundef %.043, i32 %.sroa.0.0.extract.trunc.i, i32 %.sroa.4.0.extract.trunc.i, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0)
          to label %_ZN6duckdb14VariantVisitorINS_12_GLOBAL__N_119VariantStatsVisitorEvE5VisitIJRNS_21VariantShreddingStatsEmEEEvRKNS_24UnifiedVariantVectorDataEmjDpOT_.exit unwind label %.loopexit

bb.aw:                                            ; preds = %.noexc16
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_119VariantStatsVisitor12VisitDefaultENS_18VariantLogicalTypeEPKhRNS_21VariantShreddingStatsEm(i8 noundef zeroext %i.h)
          to label %.noexc21 unwind label %.loopexit.split-lp

.noexc21:                                         ; preds = %bb.aw
  unreachable

_ZN6duckdb14VariantVisitorINS_12_GLOBAL__N_119VariantStatsVisitorEvE5VisitIJRNS_21VariantShreddingStatsEmEEEvRKNS_24UnifiedVariantVectorDataEmjDpOT_.exit: ; preds = %.noexc18, %.noexc17, %.noexc17, %.noexc17, %.noexc17, %.noexc17, %.noexc16, %.noexc16, %.noexc16, %.noexc16, %.noexc16, %.noexc16, %.noexc16, %.noexc16, %.noexc16, %.noexc16, %.noexc16, %.noexc16, %.noexc16, %.noexc16, %.noexc16, %.noexc16, %.noexc16, %.noexc16, %.noexc16, %.noexc16, %.noexc16, %.noexc16, %.noexc16, %.noexc16, %.noexc16, %.noexc16, %.noexc, %.noexc27, %.noexc22
  %i.ck = add nuw i64 %.043, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ck, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !79

.loopexit:                                        ; preds = %bb.f, %bb.g, %.noexc13, %.noexc14, %.noexc15, %bb.h, %bb.av, %.noexc22, %bb.au, %.noexc27, %bb.p, %bb.x, %bb.ad, %bb.ai
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.aw
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i.i, %bb.v, %bb.e
  %.pn = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i.i ], [ %.pn.pn4.i.i, %bb.n ], [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i.i ], [ %.pn47.i, %bb.v ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.ax

bb.ax:                                            ; preds = %.body, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.e, %bb.d ]
  call void @_ZN6duckdb28RecursiveUnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %common.resume
}

declare void @_ZN6duckdb6Vector24RecursiveToUnifiedFormatERS0_mRNS_28RecursiveUnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104), i64 noundef, ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #3

declare void @_ZN6duckdb24UnifiedVariantVectorDataC1ERKNS_28RecursiveUnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb28RecursiveUnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !80   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !83   ; 2 uses
  %.not.i1 = icmp eq ptr %i.c, %i.e
  br i1 %.not.i1, label %_ZSt8_DestroyIPN6duckdb28RecursiveUnifiedVectorFormatEEvT_S3_.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0.i2 = phi ptr [ %i.f, %.lr.ph ], [ %i.c, %bb.a ] ; 2 uses
  tail call void @_ZN6duckdb28RecursiveUnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %.0.i2) #24, !inline_history !84
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i2, i64 128 ; 2 uses
  %.not.i = icmp eq ptr %i.f, %i.e
  br i1 %.not.i, label %_ZSt8_DestroyIPN6duckdb28RecursiveUnifiedVectorFormatEEvT_S3_.exit.i.loopexit, label %.lr.ph, !llvm.loop !85

_ZSt8_DestroyIPN6duckdb28RecursiveUnifiedVectorFormatEEvT_S3_.exit.i.loopexit: ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !80
  br label %_ZSt8_DestroyIPN6duckdb28RecursiveUnifiedVectorFormatEEvT_S3_.exit.i

_ZSt8_DestroyIPN6duckdb28RecursiveUnifiedVectorFormatEEvT_S3_.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb28RecursiveUnifiedVectorFormatEEvT_S3_.exit.i.loopexit, %bb.a
  %i.g = phi ptr [ %.pre, %_ZSt8_DestroyIPN6duckdb28RecursiveUnifiedVectorFormatEEvT_S3_.exit.i.loopexit ], [ %i.c, %bb.a ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6duckdb28RecursiveUnifiedVectorFormatESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6duckdb28RecursiveUnifiedVectorFormatEEvT_S3_.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.g) #26, !inline_history !86
  br label %_ZNSt6vectorIN6duckdb28RecursiveUnifiedVectorFormatESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb28RecursiveUnifiedVectorFormatESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb28RecursiveUnifiedVectorFormatEEvT_S3_.exit.i, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !87   ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN6duckdb28RecursiveUnifiedVectorFormatESaIS1_EED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.j, align 8, !tbaa !88
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !90
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !91
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #24, !inline_history !93
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !91
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #24, !inline_history !93
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.e:                                             ; preds = %bb.c
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !77
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
  br i1 %i.x, label %bb.h, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !64

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #24
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.d, %_ZNSt6vectorIN6duckdb28RecursiveUnifiedVectorFormatESaIS1_EED2Ev.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !87   ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 4 uses
  %i.ab = load atomic i64, ptr %i.aa acquire, align 8 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 4294967297
  %i.ad = trunc i64 %i.ab to i32                  ; 2 uses
  br i1 %i.ac, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.aa, align 8, !tbaa !88
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  store i32 0, ptr %i.ae, align 4, !tbaa !90
  %i.af = load ptr, ptr %i.z, align 8, !tbaa !91
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #24, !inline_history !94
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !91
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #24, !inline_history !94
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.al = load i8, ptr @__libc_single_threaded, align 1, !tbaa !77
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
  br i1 %i.ao, label %bb.n, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !64

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #24
end_hunk_0
begin_hunk_1_@_ZN6duckdb14VariantVisitorINS_12_GLOBAL__N_119VariantStatsVisitorEvE5VisitIJRNS_21VariantShreddingStatsERmEEEvRKNS_24UnifiedVariantVectorDataEmjDpOT_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.23, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.thread.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  invoke void @_ZN6duckdb8EnumUtil8ToStringINS_18VariantLogicalTypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, i8 noundef zeroext %i.c)
          to label %bb.f unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN6duckdb17InternalExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %bb.k unwind label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.thread.i: ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0.i = phi i1 [ false, %bb.g ], [ true, %bb.f ] ; 2 uses
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.s = load ptr, ptr %7, align 8, !tbaa !46     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.h
  call void @_ZdlPv(ptr noundef %i.s) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.v = load ptr, ptr %5, align 8, !tbaa !46     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.z = load ptr, ptr %5, align 8, !tbaa !46     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %.sink.split.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  call void @_ZdlPv(ptr noundef %i.z) #26
  br label %.sink.split.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @_ZdlPv(ptr noundef %i.v) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br i1 %.0.i, label %bb.i, label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br i1 %.0.i, label %bb.i, label %bb.j

.sink.split.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.thread.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.thread.i
  %.pn.pn4.ph.i = phi { ptr, i32 } [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.thread.i ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.thread.i ], [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.i

bb.i:                                             ; preds = %.sink.split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i
  %.pn.pn4.i = phi { ptr, i32 } [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i ], [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i ], [ %.pn.pn4.ph.i, %.sink.split.i ]
  call void @__cxa_free_exception(ptr %i.p) #24
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i
  %.pn.pn3.i = phi { ptr, i32 } [ %.pn.pn4.i, %bb.i ], [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i ]
  resume { ptr, i32 } %.pn.pn3.i

bb.k:                                             ; preds = %bb.g
  unreachable

bb.l:                                             ; preds = %bb.b
  tail call fastcc void @_ZN6duckdb14VariantVisitorINS_12_GLOBAL__N_119VariantStatsVisitorEvE12VisitDecimalIJRNS_21VariantShreddingStatsERmEEEvRKNS_24UnifiedVariantVectorDataEmjDpOT_(ptr noundef nonnull align 8 dereferenceable(160) %0, i64 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
  br label %_ZN6duckdb14VariantVisitorINS_12_GLOBAL__N_119VariantStatsVisitorEvE11VisitStringIJRNS_21VariantShreddingStatsERmEEEvNS_18VariantLogicalTypeERKNS_24UnifiedVariantVectorDataEmjDpOT_.exit

bb.m:                                             ; preds = %bb.b
  tail call fastcc void @_ZN6duckdb14VariantVisitorINS_12_GLOBAL__N_119VariantStatsVisitorEvE10VisitArrayIJRNS_21VariantShreddingStatsERmEEEvRKNS_24UnifiedVariantVectorDataEmjDpOT_(ptr noundef nonnull align 8 dereferenceable(160) %0, i64 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
  br label %_ZN6duckdb14VariantVisitorINS_12_GLOBAL__N_119VariantStatsVisitorEvE11VisitStringIJRNS_21VariantShreddingStatsERmEEEvNS_18VariantLogicalTypeERKNS_24UnifiedVariantVectorDataEmjDpOT_.exit

bb.n:                                             ; preds = %bb.b
  tail call fastcc void @_ZN6duckdb14VariantVisitorINS_12_GLOBAL__N_119VariantStatsVisitorEvE11VisitObjectIJRNS_21VariantShreddingStatsERmEEEvRKNS_24UnifiedVariantVectorDataEmjDpOT_(ptr noundef nonnull align 8 dereferenceable(160) %0, i64 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
  br label %_ZN6duckdb14VariantVisitorINS_12_GLOBAL__N_119VariantStatsVisitorEvE11VisitStringIJRNS_21VariantShreddingStatsERmEEEvNS_18VariantLogicalTypeERKNS_24UnifiedVariantVectorDataEmjDpOT_.exit

bb.o:                                             ; preds = %bb.b
  tail call fastcc void @_ZN6duckdb12_GLOBAL__N_119VariantStatsVisitor12VisitDefaultENS_18VariantLogicalTypeEPKhRNS_21VariantShreddingStatsEm(i8 noundef zeroext %i.c)
  unreachable

_ZN6duckdb14VariantVisitorINS_12_GLOBAL__N_119VariantStatsVisitorEvE11VisitStringIJRNS_21VariantShreddingStatsERmEEEvNS_18VariantLogicalTypeERKNS_24UnifiedVariantVectorDataEmjDpOT_.exit: ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.a, %bb.l, %bb.m, %bb.n
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdb14VariantVisitorINS_12_GLOBAL__N_119VariantStatsVisitorEvE12VisitDecimalIJRNS_21VariantShreddingStatsERmEEEvRKNS_24UnifiedVariantVectorDataEmjDpOT_(ptr noundef nonnull align 8 dereferenceable(160) %0, i64 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::VariantDecimalData", align 8 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::allocator.5", align 1  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.a = tail call { i64, ptr } @_ZN6duckdb12VariantUtils17DecodeDecimalDataERKNS_24UnifiedVariantVectorDataEmj(ptr noundef nonnull align 8 dereferenceable(160) %0, i64 noundef %1, i32 noundef %2) ; 2 uses
  %i.b = extractvalue { i64, ptr } %i.a, 0        ; 3 uses
  store i64 %i.b, ptr %5, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.d = extractvalue { i64, ptr } %i.a, 1
  store ptr %i.d, ptr %i.c, align 8
  %i.e = trunc i64 %i.b to i32                    ; 12 uses
  %i.f = icmp ugt i32 %i.e, 38
  %i.g = lshr i64 %i.b, 32
  %i.h = trunc nuw i64 %i.g to i32                ; 8 uses
  br i1 %i.f, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.24, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRjEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 4 dereferenceable(4) %5)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %bb.ae unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.031 = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.l = load ptr, ptr %6, align 8, !tbaa !46     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.l) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br i1 %.031, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br i1 %.031, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn48 = phi { ptr, i32 } [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.i) #24
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn47 = phi { ptr, i32 } [ %.pn48, %bb.f ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  resume { ptr, i32 } %.pn47

bb.h:                                             ; preds = %bb.a
  %i.o = icmp samesign ugt i32 %i.e, 18
  br i1 %i.o, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.p = load i64, ptr %4, align 8, !tbaa !7
  %i.q = tail call noundef nonnull align 8 dereferenceable(368) ptr @_ZN6duckdb6vectorINS_22VariantColumnStatsDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.p) ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 128
  %i.s = load i64, ptr %i.r, align 8, !tbaa !7
  %.not.i = icmp eq i64 %i.s, 1
  br i1 %.not.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 280
  store i32 %i.e, ptr %i.t, align 8, !tbaa !70
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 284
  store i32 %i.h, ptr %i.u, align 4, !tbaa !71
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 288
  store i8 1, ptr %i.v, align 8, !tbaa !28
  br label %_ZN6duckdb12_GLOBAL__N_119VariantStatsVisitor12VisitDecimalINS_9hugeint_tEEEvT_jjRNS_21VariantShreddingStatsEm.exit

bb.k:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 288 ; 2 uses
  %i.x = load i8, ptr %i.w, align 8, !tbaa !28, !range !47, !noundef !78
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.l, label %_ZN6duckdb12_GLOBAL__N_119VariantStatsVisitor12VisitDecimalINS_9hugeint_tEEEvT_jjRNS_21VariantShreddingStatsEm.exit

bb.l:                                             ; preds = %bb.k
  %8 = getelementptr inbounds nuw i8, ptr %i.q, i64 280
  %9 = load i32, ptr %8, align 8, !tbaa !70
  %.not15.i = icmp eq i32 %9, %i.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 284
  %i.aa = load i32, ptr %i.z, align 4
  %.not16.i = icmp eq i32 %i.aa, %i.h
  %or.cond.i = select i1 %.not15.i, i1 %.not16.i, i1 false
  br i1 %or.cond.i, label %_ZN6duckdb12_GLOBAL__N_119VariantStatsVisitor12VisitDecimalINS_9hugeint_tEEEvT_jjRNS_21VariantShreddingStatsEm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i8 0, ptr %i.w, align 8, !tbaa !28
  br label %_ZN6duckdb12_GLOBAL__N_119VariantStatsVisitor12VisitDecimalINS_9hugeint_tEEEvT_jjRNS_21VariantShreddingStatsEm.exit

bb.n:                                             ; preds = %bb.h
  %i.ab = icmp samesign ugt i32 %i.e, 9
  br i1 %i.ab, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  %i.ac = load i64, ptr %4, align 8, !tbaa !7
  %i.ad = tail call noundef nonnull align 8 dereferenceable(368) ptr @_ZN6duckdb6vectorINS_22VariantColumnStatsDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.ac) ; 7 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 128
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !7
  %.not.i34 = icmp eq i64 %i.af, 1
  br i1 %.not.i34, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 280
  store i32 %i.e, ptr %i.ag, align 8, !tbaa !70
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 284
  store i32 %i.h, ptr %i.ah, align 4, !tbaa !71
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 288
  store i8 1, ptr %i.ai, align 8, !tbaa !28
  br label %_ZN6duckdb12_GLOBAL__N_119VariantStatsVisitor12VisitDecimalINS_9hugeint_tEEEvT_jjRNS_21VariantShreddingStatsEm.exit

bb.q:                                             ; preds = %bb.o
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 288 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !28, !range !47, !noundef !78
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.r, label %_ZN6duckdb12_GLOBAL__N_119VariantStatsVisitor12VisitDecimalINS_9hugeint_tEEEvT_jjRNS_21VariantShreddingStatsEm.exit

bb.r:                                             ; preds = %bb.q
  %10 = getelementptr inbounds nuw i8, ptr %i.ad, i64 280
  %11 = load i32, ptr %10, align 8, !tbaa !70
  %.not15.i35 = icmp eq i32 %11, %i.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 284
  %i.an = load i32, ptr %i.am, align 4
  %.not16.i36 = icmp eq i32 %i.an, %i.h
  %or.cond.i37 = select i1 %.not15.i35, i1 %.not16.i36, i1 false
  br i1 %or.cond.i37, label %_ZN6duckdb12_GLOBAL__N_119VariantStatsVisitor12VisitDecimalINS_9hugeint_tEEEvT_jjRNS_21VariantShreddingStatsEm.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i8 0, ptr %i.aj, align 8, !tbaa !28
  br label %_ZN6duckdb12_GLOBAL__N_119VariantStatsVisitor12VisitDecimalINS_9hugeint_tEEEvT_jjRNS_21VariantShreddingStatsEm.exit

bb.t:                                             ; preds = %bb.n
  %i.ao = icmp samesign ugt i32 %i.e, 4
  %i.ap = load i64, ptr %4, align 8, !tbaa !7
  %i.aq = tail call noundef nonnull align 8 dereferenceable(368) ptr @_ZN6duckdb6vectorINS_22VariantColumnStatsDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.ap) ; 13 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 128
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !7
  %.not.i38 = icmp eq i64 %i.as, 1                ; 2 uses
  br i1 %i.ao, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  br i1 %.not.i38, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 280
  store i32 %i.e, ptr %i.at, align 8, !tbaa !70
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 284
  store i32 %i.h, ptr %i.au, align 4, !tbaa !71
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 288
  store i8 1, ptr %i.av, align 8, !tbaa !28
  br label %_ZN6duckdb12_GLOBAL__N_119VariantStatsVisitor12VisitDecimalINS_9hugeint_tEEEvT_jjRNS_21VariantShreddingStatsEm.exit

bb.w:                                             ; preds = %bb.u
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 288 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 8, !tbaa !28, !range !47, !noundef !78
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.x, label %_ZN6duckdb12_GLOBAL__N_119VariantStatsVisitor12VisitDecimalINS_9hugeint_tEEEvT_jjRNS_21VariantShreddingStatsEm.exit

bb.x:                                             ; preds = %bb.w
  %12 = getelementptr inbounds nuw i8, ptr %i.aq, i64 280
  %13 = load i32, ptr %12, align 8, !tbaa !70
  %.not15.i40 = icmp eq i32 %13, %i.e
  %i.az = getelementptr inbounds nuw i8, ptr %i.aq, i64 284
  %i.ba = load i32, ptr %i.az, align 4
  %.not16.i40 = icmp eq i32 %i.ba, %i.h
  %or.cond.i42 = select i1 %.not15.i40, i1 %.not16.i40, i1 false
  br i1 %or.cond.i42, label %_ZN6duckdb12_GLOBAL__N_119VariantStatsVisitor12VisitDecimalINS_9hugeint_tEEEvT_jjRNS_21VariantShreddingStatsEm.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  store i8 0, ptr %i.aw, align 8, !tbaa !28
  br label %_ZN6duckdb12_GLOBAL__N_119VariantStatsVisitor12VisitDecimalINS_9hugeint_tEEEvT_jjRNS_21VariantShreddingStatsEm.exit

bb.z:                                             ; preds = %bb.t
  br i1 %.not.i38, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aq, i64 280
  store i32 %i.e, ptr %i.bb, align 8, !tbaa !70
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aq, i64 284
  store i32 %i.h, ptr %i.bc, align 4, !tbaa !71
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aq, i64 288
  store i8 1, ptr %i.bd, align 8, !tbaa !28
  br label %_ZN6duckdb12_GLOBAL__N_119VariantStatsVisitor12VisitDecimalINS_9hugeint_tEEEvT_jjRNS_21VariantShreddingStatsEm.exit

bb.ab:                                            ; preds = %bb.z
  %i.be = getelementptr inbounds nuw i8, ptr %i.aq, i64 288 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 8, !tbaa !28, !range !47, !noundef !78
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.ac, label %_ZN6duckdb12_GLOBAL__N_119VariantStatsVisitor12VisitDecimalINS_9hugeint_tEEEvT_jjRNS_21VariantShreddingStatsEm.exit

bb.ac:                                            ; preds = %bb.ab
  %14 = getelementptr inbounds nuw i8, ptr %i.aq, i64 280
  %15 = load i32, ptr %14, align 8, !tbaa !70
  %.not15.i45 = icmp eq i32 %15, %i.e
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aq, i64 284
  %i.bi = load i32, ptr %i.bh, align 4
  %.not16.i44 = icmp eq i32 %i.bi, %i.h
  %or.cond.i47 = select i1 %.not15.i45, i1 %.not16.i44, i1 false
  br i1 %or.cond.i47, label %_ZN6duckdb12_GLOBAL__N_119VariantStatsVisitor12VisitDecimalINS_9hugeint_tEEEvT_jjRNS_21VariantShreddingStatsEm.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store i8 0, ptr %i.be, align 8, !tbaa !28
  br label %_ZN6duckdb12_GLOBAL__N_119VariantStatsVisitor12VisitDecimalINS_9hugeint_tEEEvT_jjRNS_21VariantShreddingStatsEm.exit

_ZN6duckdb12_GLOBAL__N_119VariantStatsVisitor12VisitDecimalINS_9hugeint_tEEEvT_jjRNS_21VariantShreddingStatsEm.exit: ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.y, %bb.x, %bb.w, %bb.v, %bb.s, %bb.r, %bb.q, %bb.p, %bb.m, %bb.l, %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret void

bb.ae:                                            ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdb14VariantVisitorINS_12_GLOBAL__N_119VariantStatsVisitorEvE10VisitArrayIJRNS_21VariantShreddingStatsERmEEEvRKNS_24UnifiedVariantVectorDataEmjDpOT_(ptr noundef nonnull align 8 dereferenceable(160) %0, i64 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4) unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call i64 @_ZN6duckdb12VariantUtils16DecodeNestedDataERKNS_24UnifiedVariantVectorDataEmj(ptr noundef nonnull align 8 dereferenceable(160) %0, i64 noundef %1, i32 noundef %2) ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i64 %i.a to i32
  %.sroa.4.0.extract.shift = lshr i64 %i.a, 32
  %.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.4.0.extract.shift to i32
  %i.b = load i64, ptr %4, align 8, !tbaa !7
  tail call fastcc void @_ZN6duckdb12_GLOBAL__N_119VariantStatsVisitor10VisitArrayERKNS_24UnifiedVariantVectorDataEmRKNS_17VariantNestedDataERNS_21VariantShreddingStatsEm(ptr noundef nonnull align 8 dereferenceable(160) %0, i64 noundef %1, i32 %.sroa.0.0.extract.trunc, i32 %.sroa.4.0.extract.trunc, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.b)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdb14VariantVisitorINS_12_GLOBAL__N_119VariantStatsVisitorEvE11VisitObjectIJRNS_21VariantShreddingStatsERmEEEvRKNS_24UnifiedVariantVectorDataEmjDpOT_(ptr noundef nonnull align 8 dereferenceable(160) %0, i64 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4) unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call i64 @_ZN6duckdb12VariantUtils16DecodeNestedDataERKNS_24UnifiedVariantVectorDataEmj(ptr noundef nonnull align 8 dereferenceable(160) %0, i64 noundef %1, i32 noundef %2) ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i64 %i.a to i32
  %.sroa.4.0.extract.shift = lshr i64 %i.a, 32
  %.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.4.0.extract.shift to i32
  %i.b = load i64, ptr %4, align 8, !tbaa !7
  tail call fastcc void @_ZN6duckdb12_GLOBAL__N_119VariantStatsVisitor11VisitObjectERKNS_24UnifiedVariantVectorDataEmRKNS_17VariantNestedDataERNS_21VariantShreddingStatsEm(ptr noundef nonnull align 8 dereferenceable(160) %0, i64 noundef %1, i32 %.sroa.0.0.extract.trunc, i32 %.sroa.4.0.extract.trunc, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.b)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdb12_GLOBAL__N_119VariantStatsVisitor11VisitObjectERKNS_24UnifiedVariantVectorDataEmRKNS_17VariantNestedDataERNS_21VariantShreddingStatsEm(ptr noundef nonnull align 8 dereferenceable(160) %0, i64 noundef %1, i32 %.0.val, i32 %.4.val, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = zext i32 %.0.val to i64
  %.not = icmp eq i32 %.0.val, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = zext i32 %.4.val to i64
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.03 = phi i64 [ 0, %.lr.ph ], [ %i.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.g = add nuw nsw i64 %.03, %i.d               ; 2 uses
  %i.h = call noundef i32 @_ZNK6duckdb24UnifiedVariantVectorData12GetKeysIndexEmm(ptr noundef nonnull align 8 dereferenceable(160) %0, i64 noundef %1, i64 noundef %i.g)
  %i.i = zext i32 %i.h to i64
  %i.j = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb24UnifiedVariantVectorData6GetKeyEmm(ptr noundef nonnull align 8 dereferenceable(160) %0, i64 noundef %1, i64 noundef %i.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !625)
  %i.k = load i32, ptr %i.j, align 8, !tbaa !77, !noalias !625 ; 4 uses
  %i.l = icmp ult i32 %i.k, 13
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !noalias !625
  %i.p = select i1 %i.l, ptr %i.m, ptr %i.o       ; 2 uses
  %i.q = zext i32 %i.k to i64                     ; 2 uses
  store ptr %i.e, ptr %4, align 8, !tbaa !75, !alias.scope !625
  %i.r = icmp eq ptr %i.p, null
  br i1 %i.r, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %bb.b
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.19) #25
  unreachable

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24, !noalias !625
  store i64 %i.q, ptr %i.a, align 8, !tbaa !7, !noalias !625
  %i.s = icmp ugt i32 %i.k, 15
  br i1 %i.s, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.c
  %i.t = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.t, ptr %4, align 8, !tbaa !46, !alias.scope !625
  %i.u = load i64, ptr %i.a, align 8, !tbaa !7, !noalias !625
  store i64 %i.u, ptr %i.e, align 8, !tbaa !77, !alias.scope !625
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.c
  %i.v = phi ptr [ %i.t, %.noexc.i.i ], [ %i.e, %bb.c ] ; 2 uses
  switch i32 %i.k, label %bb.e [
    i32 1, label %bb.d
    i32 0, label %_ZNK6duckdb8string_t9GetStringB5cxx11Ev.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.w = load i8, ptr %i.m, align 4, !tbaa !77, !noalias !625
  store i8 %i.w, ptr %i.v, align 1, !tbaa !77
  br label %_ZNK6duckdb8string_t9GetStringB5cxx11Ev.exit

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr nonnull align 1 %i.p, i64 %i.q, i1 false)
  br label %_ZNK6duckdb8string_t9GetStringB5cxx11Ev.exit

_ZNK6duckdb8string_t9GetStringB5cxx11Ev.exit:     ; preds = %._crit_edge.i.i.i, %bb.d, %bb.e
  %i.x = load i64, ptr %i.a, align 8, !tbaa !7, !noalias !625 ; 2 uses
  store i64 %i.x, ptr %i.f, align 8, !tbaa !76, !alias.scope !625
  %i.y = load ptr, ptr %4, align 8, !tbaa !46, !alias.scope !625
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.x
  store i8 0, ptr %i.z, align 1, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !625
  %i.aa = invoke noundef nonnull align 8 dereferenceable(368) ptr @_ZN6duckdb21VariantShreddingStats16GetOrCreateFieldEmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZNK6duckdb8string_t9GetStringB5cxx11Ev.exit
  %i.ab = load ptr, ptr %4, align 8, !tbaa !46    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.e
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.ab) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.ad = load i64, ptr %i.aa, align 8, !tbaa !27
  store i64 %i.ad, ptr %i.b, align 8, !tbaa !7
  %i.ae = call noundef i32 @_ZNK6duckdb24UnifiedVariantVectorData14GetValuesIndexEmm(ptr noundef nonnull align 8 dereferenceable(160) %0, i64 noundef %1, i64 noundef %i.g)
  call fastcc void @_ZN6duckdb14VariantVisitorINS_12_GLOBAL__N_119VariantStatsVisitorEvE5VisitIJRNS_21VariantShreddingStatsERmEEEvRKNS_24UnifiedVariantVectorDataEmjDpOT_(ptr noundef nonnull align 8 dereferenceable(160) %0, i64 noundef %1, i32 noundef %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %i.af = add nuw nsw i64 %.03, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.af, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !628

bb.g:                                             ; preds = %_ZNK6duckdb8string_t9GetStringB5cxx11Ev.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = load ptr, ptr %4, align 8, !tbaa !46    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.e
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.ah) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  resume { ptr, i32 } %i.ag
}

declare void @_ZN6duckdb17VariantNormalizer9VisitNullERNS_22VariantNormalizerStateE(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #3

declare void @_ZN6duckdb17VariantNormalizer12VisitBooleanEbRNS_22VariantNormalizerStateE(i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #3

declare void @_ZN6duckdb17VariantNormalizer10VisitFloatEfRNS_22VariantNormalizerStateE(float noundef, ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #3

declare void @_ZN6duckdb17VariantNormalizer11VisitDoubleEdRNS_22VariantNormalizerStateE(double noundef, ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #3

declare void @_ZN6duckdb17VariantNormalizer9VisitUUIDENS_9hugeint_tERNS_22VariantNormalizerStateE(i64, i64, ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #3

declare void @_ZN6duckdb17VariantNormalizer9VisitDateENS_6date_tERNS_22VariantNormalizerStateE(i32, ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #3

declare void @_ZN6duckdb17VariantNormalizer13VisitIntervalENS_10interval_tERNS_22VariantNormalizerStateE(i64, i64, ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb14VariantVisitorINS_17VariantNormalizerEvE11VisitStringIJRNS_22VariantNormalizerStateEEEEvNS_18VariantLogicalTypeERKNS_24UnifiedVariantVectorDataEmjDpOT_(i8 noundef zeroext %0, ptr noundef nonnull align 8 dereferenceable(160) %1, i64 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(104) %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::string_t", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::allocator.5", align 1  ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.a = tail call { i64, ptr } @_ZN6duckdb12VariantUtils16DecodeStringDataERKNS_24UnifiedVariantVectorDataEmj(ptr noundef nonnull align 8 dereferenceable(160) %1, i64 noundef %2, i32 noundef %3) ; 2 uses
  %i.b = extractvalue { i64, ptr } %i.a, 0
  store i64 %i.b, ptr %5, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.d = extractvalue { i64, ptr } %i.a, 1
  store ptr %i.d, ptr %i.c, align 8
  switch i8 %0, label %bb.g [
    i8 16, label %bb.b
    i8 17, label %bb.c
    i8 31, label %bb.d
    i8 33, label %bb.e
    i8 32, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  call void @_ZN6duckdb17VariantNormalizer11VisitStringERKNS_8string_tERNS_22VariantNormalizerStateE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(104) %4)
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  call void @_ZN6duckdb17VariantNormalizer9VisitBlobERKNS_8string_tERNS_22VariantNormalizerStateE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(104) %4)
  br label %bb.n

bb.d:                                             ; preds = %bb.a
  call void @_ZN6duckdb17VariantNormalizer11VisitBignumERKNS_8string_tERNS_22VariantNormalizerStateE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(104) %4)
  br label %bb.n
end_hunk_1
