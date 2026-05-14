inline.NumInlined: 20082
inline.NumDeleted: 9324
begin_hunk_0_@_ZNK6duckdb14BlockAllocator12FreeInternalEm:bb.a

._crit_edge:                                      ; preds = %bb.r, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEvT_S7_.exit
  %.024.lcssa = phi i32 [ %i.ay, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEvT_S7_.exit ], [ %.125, %bb.r ]
  %i.ba = getelementptr i8, ptr %.sroa.0.4, i64 %.pre115
  %i.bb = getelementptr i8, ptr %i.ba, i64 -4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !3
  invoke void @_ZNK6duckdb14BlockAllocator20FreeContiguousBlocksEjj(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %.024.lcssa, i32 noundef %i.bc)
          to label %bb.s unwind label %bb.n

bb.n:                                             ; preds = %bb.t, %bb.s, %._crit_edge
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.thread89

.lr.ph:                                           ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEvT_S7_.exit, %bb.r
  %.023110 = phi i64 [ %i.bm, %bb.r ], [ 1, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEvT_S7_.exit ] ; 2 uses
  %.024109 = phi i32 [ %.125, %bb.r ], [ %i.ay, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEvT_S7_.exit ] ; 2 uses
  %i.be = getelementptr [4 x i8], ptr %.sroa.0.4, i64 %.023110 ; 3 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 -4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !3  ; 2 uses
  %i.bh = load i32, ptr %i.be, align 4, !tbaa !3
  %i.bi = add i32 %i.bh, -1
  %i.bj = icmp eq i32 %i.bg, %i.bi
  br i1 %i.bj, label %bb.r, label %bb.p

bb.o:                                             ; preds = %bb.p
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %.thread89

bb.p:                                             ; preds = %.lr.ph
  invoke void @_ZNK6duckdb14BlockAllocator20FreeContiguousBlocksEjj(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %.024109, i32 noundef %i.bg)
          to label %bb.q unwind label %bb.o

bb.q:                                             ; preds = %bb.p
  %i.bl = load i32, ptr %i.be, align 4, !tbaa !3
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph, %bb.q
  %.125 = phi i32 [ %i.bl, %bb.q ], [ %.024109, %.lr.ph ] ; 2 uses
  %i.bm = add nuw i64 %.023110, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.bm, %.pre117
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1231

bb.s:                                             ; preds = %._crit_edge
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !1203
  %i.bp = invoke noundef ptr @_ZN17duckdb_moodycamel15ConcurrentQueueIjNS_28ConcurrentQueueDefaultTraitsEE28get_or_add_implicit_producerEv(ptr noundef nonnull align 8 dereferenceable(612) %i.bo)
          to label %.noexc40 unwind label %bb.n   ; 2 uses

.noexc40:                                         ; preds = %bb.s
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %_ZN17duckdb_moodycamel15ConcurrentQueueIjNS_28ConcurrentQueueDefaultTraitsEE12enqueue_bulkIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEEbT_m.exit.thread, label %bb.t

bb.t:                                             ; preds = %.noexc40
  %i.br = invoke noundef zeroext i1 @_ZN17duckdb_moodycamel15ConcurrentQueueIjNS_28ConcurrentQueueDefaultTraitsEE16ImplicitProducer12enqueue_bulkILNS2_14AllocationModeE0EN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEEbT0_m(ptr noundef nonnull align 8 dereferenceable(104) %i.bp, ptr nonnull %.sroa.0.4, i64 noundef %.pre117)
          to label %_ZN17duckdb_moodycamel15ConcurrentQueueIjNS_28ConcurrentQueueDefaultTraitsEE12enqueue_bulkIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEEbT_m.exit.thread unwind label %bb.n ; 0 uses

_ZN17duckdb_moodycamel15ConcurrentQueueIjNS_28ConcurrentQueueDefaultTraitsEE12enqueue_bulkIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEEbT_m.exit: ; preds = %.thread, %bb.e
  %.not.i.i.i = icmp eq ptr %.sroa.0.3, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %_ZN17duckdb_moodycamel15ConcurrentQueueIjNS_28ConcurrentQueueDefaultTraitsEE12enqueue_bulkIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEEbT_m.exit.thread

_ZN17duckdb_moodycamel15ConcurrentQueueIjNS_28ConcurrentQueueDefaultTraitsEE12enqueue_bulkIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEEbT_m.exit.thread: ; preds = %.noexc40, %bb.t, %_ZN17duckdb_moodycamel15ConcurrentQueueIjNS_28ConcurrentQueueDefaultTraitsEE12enqueue_bulkIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEEbT_m.exit
  %.sroa.0.188 = phi ptr [ %.sroa.0.3, %_ZN17duckdb_moodycamel15ConcurrentQueueIjNS_28ConcurrentQueueDefaultTraitsEE12enqueue_bulkIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEEbT_m.exit ], [ %.sroa.0.4, %bb.t ], [ %.sroa.0.4, %.noexc40 ]
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0.188) #44
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZN17duckdb_moodycamel15ConcurrentQueueIjNS_28ConcurrentQueueDefaultTraitsEE12enqueue_bulkIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEEbT_m.exit, %_ZN17duckdb_moodycamel15ConcurrentQueueIjNS_28ConcurrentQueueDefaultTraitsEE12enqueue_bulkIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEEbT_m.exit.thread
  ret void

.loopexit:                                        ; preds = %bb.d, %bb.c
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.loopexit.split-lp:                               ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i52, %bb.h, %.noexc38, %bb.m
  %.sroa.0.0.ph.ph = phi ptr [ %.sroa.0.3, %bb.h ], [ %.sroa.0.3, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i52 ], [ %.sroa.0.4, %.noexc38 ], [ %.sroa.0.4, %bb.m ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %.sroa.0.0.ph = phi ptr [ %.sroa.0.3, %.loopexit ], [ %.sroa.0.0.ph.ph, %.loopexit.split-lp ] ; 2 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i42 = icmp eq ptr %.sroa.0.0.ph, null
  br i1 %.not.i.i.i42, label %_ZNSt6vectorIjSaIjEED2Ev.exit43, label %.thread89

.thread89:                                        ; preds = %bb.n, %bb.o, %bb.u
  %.pn.pn.pn94 = phi { ptr, i32 } [ %lpad.phi, %bb.u ], [ %i.bk, %bb.o ], [ %i.bd, %bb.n ]
  %.sroa.0.293 = phi ptr [ %.sroa.0.0.ph, %bb.u ], [ %.sroa.0.4, %bb.o ], [ %.sroa.0.4, %bb.n ]
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0.293) #44
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit43

_ZNSt6vectorIjSaIjEED2Ev.exit43:                  ; preds = %bb.u, %.thread89
  %.pn.pn.pn95 = phi { ptr, i32 } [ %lpad.phi, %bb.u ], [ %.pn.pn.pn94, %.thread89 ]
  resume { ptr, i32 } %.pn.pn.pn95
}

declare void @_ZN6duckdb9Allocator8FlushAllEv() local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb14BlockAllocator20FreeContiguousBlocksEjj(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator.56", align 1 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load atomic ptr, ptr %i.a monotonic, align 8
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1185 ; 2 uses
  %i.f = mul i64 %i.e, %i.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.f
  %reass.sub = sub i32 %2, %1
  %i.h = add i32 %reass.sub, 1
  %i.i = zext i32 %i.h to i64
  %i.j = mul i64 %i.e, %i.i
  %i.k = tail call i32 @madvise(ptr noundef %i.g, i64 noundef %i.j, i32 noundef 4) #24
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZN6duckdbL14OnDeallocationEPhm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.236, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #47
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !82     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.p) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn11.i = phi { ptr, i32 } [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.m) #24
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn10.i = phi { ptr, i32 } [ %.pn11.i, %bb.f ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn10.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdbL14OnDeallocationEPhm.exit:             ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6duckdb11DataPointerC2ENS_14BaseStatisticsE(ptr noundef nonnull align 8 dereferenceable(176) initializes((16, 32)) %0, ptr noundef nonnull %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -1, ptr %i.a, align 8, !tbaa !821
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.b, align 8, !tbaa !823
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.c, align 4, !tbaa !824
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN6duckdb14BaseStatisticsC1EOS0_(ptr noundef nonnull align 8 dereferenceable(128) %i.d, ptr noundef nonnull align 8 dereferenceable(128) %1) #24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr null, ptr %i.e, align 8, !tbaa !1232
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6duckdb14BaseStatisticsC1EOS0_(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6duckdb11DataPointerC2EOS0_(ptr noundef nonnull align 8 dereferenceable(176) initializes((16, 32)) %0, ptr noundef nonnull align 8 dereferenceable(176) %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store i64 -1, ptr %i.a, align 8, !tbaa !821
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.b, align 8, !tbaa !823
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.c, align 4, !tbaa !824
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @_ZN6duckdb14BaseStatisticsC1EOS0_(ptr noundef nonnull align 8 dereferenceable(128) %i.d, ptr noundef nonnull align 8 dereferenceable(128) %i.e) #24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 5 uses
  store ptr null, ptr %i.f, align 8, !tbaa !1232
  %i.g = load i64, ptr %0, align 8, !tbaa !70
  %i.h = load i64, ptr %1, align 8, !tbaa !70
  store i64 %i.h, ptr %0, align 8, !tbaa !70
  store i64 %i.g, ptr %1, align 8, !tbaa !70
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.i, align 8, !tbaa !70
  %i.l = load i64, ptr %i.j, align 8, !tbaa !70
  store i64 %i.l, ptr %i.i, align 8, !tbaa !70
  store i64 %i.k, ptr %i.j, align 8, !tbaa !70
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.sroa.0.0.copyload = load <16 x i8>, ptr %i.a, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 16, i1 false), !tbaa.struct !883
  store <16 x i8> %.sroa.0.0.copyload, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.p = load i8, ptr %i.n, align 8, !tbaa !1235
  %i.q = load i8, ptr %i.o, align 8, !tbaa !1235
  store i8 %i.q, ptr %i.n, align 8, !tbaa !1235
  store i8 %i.p, ptr %i.o, align 8, !tbaa !1235
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 4 uses
  %i.s = load i64, ptr %i.f, align 8, !tbaa !1237
  %i.t = inttoptr i64 %i.s to ptr
  store ptr null, ptr %i.f, align 8, !tbaa !1237
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !1237
  store ptr null, ptr %i.r, align 8, !tbaa !1237
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !1237 ; 3 uses
  store ptr %i.u, ptr %i.f, align 8, !tbaa !1237
  %.not.i.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb10unique_ptrINS_18ColumnSegmentStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i, label %_ZNKSt14default_deleteIN6duckdb18ColumnSegmentStateEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb18ColumnSegmentStateEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %bb.a
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !45
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.v) #24, !inline_history !1238
  br label %_ZN6duckdb10unique_ptrINS_18ColumnSegmentStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i

_ZN6duckdb10unique_ptrINS_18ColumnSegmentStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i: ; preds = %_ZNKSt14default_deleteIN6duckdb18ColumnSegmentStateEEclEPS1_.exit.i.i.i.i.i.i, %bb.a
  %i.z = load ptr, ptr %i.r, align 8, !tbaa !1237 ; 3 uses
  store ptr %i.t, ptr %i.r, align 8, !tbaa !1237
  %.not.i.i.i.i.i4.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i4.i, label %_ZSt4swapIN6duckdb10unique_ptrINS0_18ColumnSegmentStateESt14default_deleteIS2_ELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS9_ESt18is_move_assignableIS9_EEE5valueEvE4typeERS9_SI_.exit, label %_ZNKSt14default_deleteIN6duckdb18ColumnSegmentStateEEclEPS1_.exit.i.i.i.i.i5.i

_ZNKSt14default_deleteIN6duckdb18ColumnSegmentStateEEclEPS1_.exit.i.i.i.i.i5.i: ; preds = %_ZN6duckdb10unique_ptrINS_18ColumnSegmentStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !45
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.z) #24, !inline_history !1238
  br label %_ZSt4swapIN6duckdb10unique_ptrINS0_18ColumnSegmentStateESt14default_deleteIS2_ELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS9_ESt18is_move_assignableIS9_EEE5valueEvE4typeERS9_SI_.exit

_ZSt4swapIN6duckdb10unique_ptrINS0_18ColumnSegmentStateESt14default_deleteIS2_ELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS9_ESt18is_move_assignableIS9_EEE5valueEvE4typeERS9_SI_.exit: ; preds = %_ZN6duckdb10unique_ptrINS_18ColumnSegmentStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i, %_ZNKSt14default_deleteIN6duckdb18ColumnSegmentStateEEclEPS1_.exit.i.i.i.i.i5.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull align 8 dereferenceable(176) ptr @_ZN6duckdb11DataPointeraSEOS0_(ptr noundef nonnull returned align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(176) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::BaseStatistics", align 8 ; 5 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !70
  %i.b = load i64, ptr %1, align 8, !tbaa !70
  store i64 %i.b, ptr %0, align 8, !tbaa !70
  store i64 %i.a, ptr %1, align 8, !tbaa !70
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.c, align 8, !tbaa !70
  %i.f = load i64, ptr %i.d, align 8, !tbaa !70
  store i64 %i.f, ptr %i.c, align 8, !tbaa !70
  store i64 %i.e, ptr %i.d, align 8, !tbaa !70
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.sroa.0.0.copyload = load <16 x i8>, ptr %i.g, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !883
  store <16 x i8> %.sroa.0.0.copyload, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.k = load i8, ptr %i.i, align 8, !tbaa !1235
  %i.l = load i8, ptr %i.j, align 8, !tbaa !1235
  store i8 %i.l, ptr %i.i, align 8, !tbaa !1235
  store i8 %i.k, ptr %i.j, align 8, !tbaa !1235
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @_ZN6duckdb14BaseStatisticsC1EOS0_(ptr noundef nonnull align 8 dereferenceable(128) %2, ptr noundef nonnull align 8 dereferenceable(128) %i.m) #24
  %i.o = call noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb14BaseStatisticsaSEOS0_(ptr noundef nonnull align 8 dereferenceable(128) %i.m, ptr noundef nonnull align 8 dereferenceable(128) %i.n) #24 ; 0 uses
  %i.p = call noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb14BaseStatisticsaSEOS0_(ptr noundef nonnull align 8 dereferenceable(128) %i.n, ptr noundef nonnull align 8 dereferenceable(128) %2) #24 ; 0 uses
  call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 4 uses
  %i.s = load i64, ptr %i.q, align 8, !tbaa !1237
  %i.t = inttoptr i64 %i.s to ptr
  store ptr null, ptr %i.q, align 8, !tbaa !1237
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !1237
  store ptr null, ptr %i.r, align 8, !tbaa !1237
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !1237 ; 3 uses
  store ptr %i.u, ptr %i.q, align 8, !tbaa !1237
  %.not.i.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb10unique_ptrINS_18ColumnSegmentStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i, label %_ZNKSt14default_deleteIN6duckdb18ColumnSegmentStateEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb18ColumnSegmentStateEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %bb.a
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !45
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.v) #24, !inline_history !1238
  br label %_ZN6duckdb10unique_ptrINS_18ColumnSegmentStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i

_ZN6duckdb10unique_ptrINS_18ColumnSegmentStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i: ; preds = %_ZNKSt14default_deleteIN6duckdb18ColumnSegmentStateEEclEPS1_.exit.i.i.i.i.i.i, %bb.a
  %i.z = load ptr, ptr %i.r, align 8, !tbaa !1237 ; 3 uses
  store ptr %i.t, ptr %i.r, align 8, !tbaa !1237
  %.not.i.i.i.i.i4.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i4.i, label %_ZSt4swapIN6duckdb10unique_ptrINS0_18ColumnSegmentStateESt14default_deleteIS2_ELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS9_ESt18is_move_assignableIS9_EEE5valueEvE4typeERS9_SI_.exit, label %_ZNKSt14default_deleteIN6duckdb18ColumnSegmentStateEEclEPS1_.exit.i.i.i.i.i5.i

_ZNKSt14default_deleteIN6duckdb18ColumnSegmentStateEEclEPS1_.exit.i.i.i.i.i5.i: ; preds = %_ZN6duckdb10unique_ptrINS_18ColumnSegmentStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !45
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.z) #24, !inline_history !1238
  br label %_ZSt4swapIN6duckdb10unique_ptrINS0_18ColumnSegmentStateESt14default_deleteIS2_ELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS9_ESt18is_move_assignableIS9_EEE5valueEvE4typeERS9_SI_.exit

_ZSt4swapIN6duckdb10unique_ptrINS0_18ColumnSegmentStateESt14default_deleteIS2_ELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS9_ESt18is_move_assignableIS9_EEE5valueEvE4typeERS9_SI_.exit: ; preds = %_ZN6duckdb10unique_ptrINS_18ColumnSegmentStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i, %_ZNKSt14default_deleteIN6duckdb18ColumnSegmentStateEEclEPS1_.exit.i.i.i.i.i5.i
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb18ColumnSegmentState11DeserializeERNS_12DeserializerE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.1349") align 8 %0, ptr noundef nonnull align 8 dereferenceable(632) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::optional_ptr.1358", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator.56", align 1 ; 5 uses
  %i.a = tail call noundef zeroext i8 @_ZN6duckdb12Deserializer3GetINS_15CompressionTypeEEET_v(ptr noundef nonnull align 8 dereferenceable(632) %1)
  %i.b = tail call noundef nonnull align 8 dereferenceable(1560) ptr @_ZN6duckdb12Deserializer3GetIRNS_16DatabaseInstanceEEET_v(ptr noundef nonnull align 8 dereferenceable(632) %1)
  %i.c = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb12Deserializer3GetIRKNS_11LogicalTypeEEET_v(ptr noundef nonnull align 8 dereferenceable(632) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.d = tail call noundef nonnull align 8 dereferenceable(1360) ptr @_ZN6duckdb8DBConfig9GetConfigERNS_16DatabaseInstanceE(ptr noundef nonnull align 8 dereferenceable(1560) %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !1239
  %i.g = tail call ptr @_ZNK6duckdb8DBConfig25TryGetCompressionFunctionENS_15CompressionTypeENS_12PhysicalTypeE(ptr noundef nonnull align 8 dereferenceable(1360) %i.d, i8 noundef zeroext %i.a, i8 noundef zeroext %i.f) ; 2 uses
  store ptr %i.g, ptr %2, align 8
  %.not16 = icmp eq ptr %i.g, null
  br i1 %.not16, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZNK6duckdb12optional_ptrIKNS_19CompressionFunctionELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.h = load ptr, ptr %2, align 8, !tbaa !1240
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 168
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1243
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.54, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6duckdb22SerializationExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTIN6duckdb22SerializationExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #47
          to label %bb.j unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i1 [ false, %bb.e ], [ true, %bb.d ]  ; 2 uses
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.n = load ptr, ptr %3, align 8, !tbaa !82     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.n) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br i1 %.0, label %bb.g, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br i1 %.0, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn15 = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.k) #24
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn14 = phi { ptr, i32 } [ %.pn15, %bb.g ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %.pn14

bb.i:                                             ; preds = %bb.b
  call void @_ZNK6duckdb12optional_ptrIKNS_19CompressionFunctionELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.q = load ptr, ptr %2, align 8, !tbaa !1240
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 168
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1243
  call void %i.s(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr.1349") align 8 %0, ptr noundef nonnull align 8 dereferenceable(632) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void

bb.j:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i8 @_ZN6duckdb12Deserializer3GetINS_15CompressionTypeEEET_v(ptr noundef nonnull align 8 dereferenceable(632) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.56", align 1 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !1246 ; 3 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !1246
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %bb.b, label %_ZN6duckdb17SerializationData14AssertNotEmptyImEEvRKSt5stackIT_St5dequeIS3_SaIS3_EEE.exit.i

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.328, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #47
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !82     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.i) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn9.i.i = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.f) #24
  br label %bb.g

end_hunk_0
