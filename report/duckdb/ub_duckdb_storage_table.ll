inline.NumInlined: 22010
inline.NumDeleted: 8913
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 650
loop-unroll.NumUnrolled: 660
begin_hunk_0_@_ZN6duckdb10ColumnData14UpdateInternalENS_15TransactionDataERNS_9DataTableEmRNS_6VectorEPlmS5_m:bb.a
          to label %.noexc unwind label %bb.e     ; 3 uses

.noexc:                                           ; preds = %bb.c
  invoke void @_ZN6duckdb13UpdateSegmentC1ERNS_10ColumnDataE(ptr noundef nonnull align 8 dereferenceable(352) %i.e, ptr noundef nonnull align 8 dereferenceable(296) %0)
          to label %_ZN6duckdb9make_uniqINS_13UpdateSegmentEJRNS_10ColumnDataEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.d, !noalias !1131

bb.d:                                             ; preds = %.noexc
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #39, !noalias !1131
  br label %.body

_ZN6duckdb9make_uniqINS_13UpdateSegmentEJRNS_10ColumnDataEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %.noexc
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !990  ; 3 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !990
  %.not.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb13UpdateSegmentESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb13UpdateSegmentEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb13UpdateSegmentEEclEPS1_.exit.i.i.i.i.i: ; preds = %_ZN6duckdb9make_uniqINS_13UpdateSegmentEJRNS_10ColumnDataEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  tail call void @_ZN6duckdb13UpdateSegmentD1Ev(ptr noundef nonnull align 8 dead_on_return(352) dereferenceable(352) %i.g) #37
  tail call void @_ZdlPv(ptr noundef nonnull %i.g) #39
  br label %_ZNSt10unique_ptrIN6duckdb13UpdateSegmentESt14default_deleteIS1_EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt10unique_ptrIN6duckdb13UpdateSegmentESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN6duckdb9make_uniqINS_13UpdateSegmentEJRNS_10ColumnDataEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit, %_ZNKSt14default_deleteIN6duckdb13UpdateSegmentEEclEPS1_.exit.i.i.i.i.i, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.i = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13UpdateSegmentESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb13UpdateSegmentESt14default_deleteIS1_EED2Ev.exit
  invoke void @_ZN6duckdb13UpdateSegment6UpdateENS_15TransactionDataERNS_9DataTableEmRNS_6VectorEPlmS5_m(ptr noundef nonnull align 8 dereferenceable(352) %i.i, ptr noundef nonnull byval(%"struct.duckdb::TransactionData") align 8 %1, ptr noundef nonnull align 8 dereferenceable(124) %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef %5, i64 noundef %6, ptr noundef nonnull align 8 dereferenceable(104) %7, i64 noundef %8)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.j = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #37 ; 0 uses
  ret void

bb.h:                                             ; preds = %bb.f, %_ZNSt10unique_ptrIN6duckdb13UpdateSegmentESt14default_deleteIS1_EED2Ev.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.d, %bb.h
  %.pn = phi { ptr, i32 } [ %i.k, %bb.h ], [ %i.h, %bb.e ], [ %i.f, %bb.d ]
  %i.l = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #37 ; 0 uses
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb13UpdateSegment6UpdateENS_15TransactionDataERNS_9DataTableEmRNS_6VectorEPlmS5_m(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef byval(%"struct.duckdb::TransactionData") align 8 %1, ptr noundef nonnull align 8 dereferenceable(124) %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef %5, i64 noundef %6, ptr noundef nonnull align 8 dereferenceable(104) %7, i64 noundef %8) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"struct.duckdb::UndoBufferPointer", align 8 ; 7 uses
  %10 = alloca %"struct.duckdb::UndoBufferReference", align 8 ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %12 = alloca %"class.std::allocator.17", align 1 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %13 = alloca %"struct.duckdb::SelectionVector", align 8 ; 8 uses
  %14 = alloca %"class.duckdb::unique_ptr.923", align 8 ; 6 uses
  %15 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %16 = alloca %"struct.duckdb::SelectionVector", align 8 ; 19 uses
  %17 = alloca %"struct.duckdb::UndoBufferPointer", align 8 ; 6 uses
  %18 = alloca %"struct.duckdb::UndoBufferReference", align 8 ; 8 uses
  %19 = alloca %"struct.duckdb::UndoBufferReference", align 8 ; 13 uses
  %20 = alloca %"class.duckdb::optional_ptr.1451", align 8 ; 27 uses
  %21 = alloca %"struct.duckdb::UndoBufferReference", align 8 ; 7 uses
  %22 = alloca %"struct.duckdb::UndoBufferReference", align 8 ; 8 uses
  %23 = alloca %"struct.duckdb::UndoBufferReference", align 8 ; 10 uses
  %24 = alloca %"struct.duckdb::UndoBufferReference", align 8 ; 11 uses
  %25 = alloca %"class.duckdb::optional_ptr.1451", align 8 ; 17 uses
  %26 = alloca %"struct.duckdb::UndoBufferReference", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #37
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN6duckdb11StorageLock16GetExclusiveLockEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.923") align 8 %14, ptr noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #37
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %15)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %4, i64 noundef %6, ptr noundef nonnull align 8 dereferenceable(73) %15)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.d = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #37 ; 2 uses
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.d) #40
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1134
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = invoke noundef i64 %i.f(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(128) %i.g, ptr noundef nonnull align 8 dereferenceable(73) %15, i64 noundef %6, ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %bb.e unwind label %bb.i       ; 20 uses

bb.e:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.i = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #37 ; 0 uses
  %i.j = icmp eq i64 %i.h, 0
  br i1 %i.j, label %bb.fi, label %bb.j

bb.f:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.gc

bb.g:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.gb

bb.h:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #37 ; 0 uses
  br label %.body

bb.j:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %5, ptr %i.a, align 8, !tbaa !312
  %.not5961.i.not = icmp eq i64 %i.h, 1
  %.pre305 = load ptr, ptr %16, align 8, !tbaa !152 ; 4 uses
  br i1 %.not5961.i.not, label %.loopexit295, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j
  %.not.i.i130 = icmp eq ptr %.pre305, null
  br i1 %.not.i.i130, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit50.us.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit50.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit50.us.i: ; preds = %.lr.ph.i, %bb.k
  %.03762.us.i = phi i64 [ %i.t, %bb.k ], [ 1, %.lr.ph.i ] ; 2 uses
  %i.p = getelementptr [8 x i8], ptr %5, i64 %.03762.us.i ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !24
  %i.r = getelementptr i8, ptr %i.p, i64 -8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !24
  %.not.us.i = icmp sgt i64 %i.q, %i.s
  br i1 %.not.us.i, label %bb.k, label %.split.us.i

bb.k:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit50.us.i
  %i.t = add nuw i64 %.03762.us.i, 1              ; 2 uses
  %exitcond74.not.i = icmp eq i64 %i.t, %i.h
  br i1 %exitcond74.not.i, label %.loopexit295.thread, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit50.us.i, !llvm.loop !1135

.loopexit295.thread:                              ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

bb.l:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit50.i
  %i.u = add nuw i64 %.03762.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.u, %i.h
  br i1 %exitcond.not.i, label %.loopexit295.thread349, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit50.i, !llvm.loop !1135

.loopexit295.thread349:                           ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ap

_ZNK6duckdb15SelectionVector9get_indexEm.exit50.i: ; preds = %.lr.ph.i, %bb.l
  %.03762.i = phi i64 [ %i.u, %bb.l ], [ 1, %.lr.ph.i ] ; 2 uses
  %i.v = getelementptr [4 x i8], ptr %.pre305, i64 %.03762.i ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 -4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !3
  %i.y = zext i32 %i.x to i64
  %i.z = load i32, ptr %i.v, align 4, !tbaa !3
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !24
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.y
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !24
  %.not.i = icmp sgt i64 %i.ac, %i.ae
  br i1 %.not.i, label %bb.l, label %.split.us.i

.split.us.i:                                      ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit50.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit50.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #37
  %i.af = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %13, i64 noundef range(i64 1, 0) %i.h)
          to label %_ZN6duckdb15SelectionVectorC2Em.exit.preheader.i unwind label %bb.m

_ZN6duckdb15SelectionVectorC2Em.exit.preheader.i: ; preds = %.split.us.i
  %i.ag = load ptr, ptr %16, align 8, !tbaa !152  ; 8 uses
  %.not.i51.i = icmp eq ptr %i.ag, null
  %i.ah = load ptr, ptr %13, align 8, !tbaa !152  ; 26 uses
  %min.iters.check367 = icmp ult i64 %i.h, 8      ; 2 uses
  br i1 %.not.i51.i, label %_ZN6duckdb15SelectionVectorC2Em.exit.us.i.preheader, label %_ZN6duckdb15SelectionVectorC2Em.exit.i.preheader

_ZN6duckdb15SelectionVectorC2Em.exit.i.preheader: ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit.preheader.i
  %27 = ptrtoaddr ptr %i.ah to i64
  %i.ai = ptrtoaddr ptr %i.ag to i64
  %i.aj = sub i64 %i.ai, %27
  %diff.check = icmp ugt i64 %i.aj, -32
  %or.cond = select i1 %min.iters.check367, i1 true, i1 %diff.check
  br i1 %or.cond, label %_ZN6duckdb15SelectionVectorC2Em.exit.i.preheader382, label %vector.ph

vector.ph:                                        ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit.i.preheader
  %n.vec = and i64 %i.h, -8                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %wide.load = load <4 x i32>, ptr %i.ak, align 4, !tbaa !3
  %wide.load365 = load <4 x i32>, ptr %i.al, align 4, !tbaa !3
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %index ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store <4 x i32> %wide.load, ptr %i.am, align 4, !tbaa !3
  store <4 x i32> %wide.load365, ptr %i.an, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !1136

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %.split65.us.i, label %_ZN6duckdb15SelectionVectorC2Em.exit.i.preheader382

_ZN6duckdb15SelectionVectorC2Em.exit.i.preheader382: ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit.i.preheader, %middle.block
  %.04263.i.ph = phi i64 [ 0, %_ZN6duckdb15SelectionVectorC2Em.exit.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.h, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb15SelectionVectorC2Em.exit.i.prol.loopexit, label %_ZN6duckdb15SelectionVectorC2Em.exit.i.prol

_ZN6duckdb15SelectionVectorC2Em.exit.i.prol:      ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit.i.preheader382, %_ZN6duckdb15SelectionVectorC2Em.exit.i.prol
  %.04263.i.prol = phi i64 [ %i.as, %_ZN6duckdb15SelectionVectorC2Em.exit.i.prol ], [ %.04263.i.ph, %_ZN6duckdb15SelectionVectorC2Em.exit.i.preheader382 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZN6duckdb15SelectionVectorC2Em.exit.i.prol ], [ 0, %_ZN6duckdb15SelectionVectorC2Em.exit.i.preheader382 ]
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.04263.i.prol
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !3
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.04263.i.prol
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !3
  %i.as = add nuw i64 %.04263.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZN6duckdb15SelectionVectorC2Em.exit.i.prol.loopexit, label %_ZN6duckdb15SelectionVectorC2Em.exit.i.prol, !llvm.loop !1137

_ZN6duckdb15SelectionVectorC2Em.exit.i.prol.loopexit: ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit.i.prol, %_ZN6duckdb15SelectionVectorC2Em.exit.i.preheader382
  %.04263.i.unr = phi i64 [ %.04263.i.ph, %_ZN6duckdb15SelectionVectorC2Em.exit.i.preheader382 ], [ %i.as, %_ZN6duckdb15SelectionVectorC2Em.exit.i.prol ]
  %i.at = sub i64 %.04263.i.ph, %i.h
  %i.au = icmp ugt i64 %i.at, -4
  br i1 %i.au, label %.split65.us.i, label %_ZN6duckdb15SelectionVectorC2Em.exit.i

_ZN6duckdb15SelectionVectorC2Em.exit.us.i.preheader: ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit.preheader.i
  br i1 %min.iters.check367, label %_ZN6duckdb15SelectionVectorC2Em.exit.us.i.preheader381, label %vector.ph368

vector.ph368:                                     ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit.us.i.preheader
  %n.vec370 = and i64 %i.h, -8                    ; 3 uses
  br label %vector.body371

vector.body371:                                   ; preds = %vector.body371, %vector.ph368
  %index372 = phi i64 [ 0, %vector.ph368 ], [ %index.next373, %vector.body371 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph368 ], [ %vec.ind.next, %vector.body371 ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %index372 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store <4 x i32> %vec.ind, ptr %i.av, align 4, !tbaa !3
  store <4 x i32> %step.add, ptr %i.aw, align 4, !tbaa !3
  %index.next373 = add nuw i64 %index372, 8       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.ax = icmp eq i64 %index.next373, %n.vec370
  br i1 %i.ax, label %middle.block374, label %vector.body371, !llvm.loop !1138

middle.block374:                                  ; preds = %vector.body371
  %cmp.n375 = icmp eq i64 %i.h, %n.vec370
  br i1 %cmp.n375, label %.split65.us.i, label %_ZN6duckdb15SelectionVectorC2Em.exit.us.i.preheader381

_ZN6duckdb15SelectionVectorC2Em.exit.us.i.preheader381: ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit.us.i.preheader, %middle.block374
  %.04263.us.i.ph = phi i64 [ 0, %_ZN6duckdb15SelectionVectorC2Em.exit.us.i.preheader ], [ %n.vec370, %middle.block374 ]
  br label %_ZN6duckdb15SelectionVectorC2Em.exit.us.i

_ZN6duckdb15SelectionVectorC2Em.exit.us.i:        ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit.us.i.preheader381, %_ZN6duckdb15SelectionVectorC2Em.exit.us.i
  %.04263.us.i = phi i64 [ %i.ba, %_ZN6duckdb15SelectionVectorC2Em.exit.us.i ], [ %.04263.us.i.ph, %_ZN6duckdb15SelectionVectorC2Em.exit.us.i.preheader381 ] ; 3 uses
  %i.ay = trunc i64 %.04263.us.i to i32
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.04263.us.i
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !3
  %i.ba = add nuw i64 %.04263.us.i, 1             ; 2 uses
  %exitcond76.not.i = icmp eq i64 %i.ba, %i.h
  br i1 %exitcond76.not.i, label %.split65.us.i, label %_ZN6duckdb15SelectionVectorC2Em.exit.us.i, !llvm.loop !1139

bb.m:                                             ; preds = %.split.us.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.af) #37
  br label %.body

.split65.us.i:                                    ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit.i.prol.loopexit, %_ZN6duckdb15SelectionVectorC2Em.exit.i, %_ZN6duckdb15SelectionVectorC2Em.exit.us.i, %middle.block, %middle.block374
  %.idx.i = shl nuw nsw i64 %i.h, 2
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx.i ; 3 uses
  %i.bd = ptrtoint ptr %i.ah to i64
  %i.be = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.h, i1 true)
  %i.bf = shl nuw nsw i64 %i.be, 1
  %i.bg = xor i64 %i.bf, 126
  call fastcc void @"_ZSt16__introsort_loopIPjlN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL19SortSelectionVectorERNS4_15SelectionVectorEmPlE3$_0EEEvT_SA_T0_T1_"(ptr noundef nonnull %i.ah, ptr noundef nonnull %i.bc, i64 noundef %i.bg, ptr nonnull readonly %i.a)
  %i.bh = icmp ugt i64 %i.h, 16
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.ah, i64 4 ; 2 uses
  br i1 %i.bh, label %.preheader.i.i, label %.lr.ph.i20.i.i.i.i

.preheader.i.i:                                   ; preds = %.split65.us.i, %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i.i.i.i.i
  %.021.i.idx.i.i.i.i = phi i64 [ %.021.i.add.i.i.i.i, %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i.i.i.i.i ], [ 4, %.split65.us.i ] ; 4 uses
  %.pn20.i.i.i.i.i = phi ptr [ %.021.i.ptr.i.i.i.i, %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i.i.i.i.i ], [ %i.ah, %.split65.us.i ] ; 3 uses
  %.021.i.ptr.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.021.i.idx.i.i.i.i ; 4 uses
  %.0.val.i.i.i.i.i = load i32, ptr %.021.i.ptr.i.i.i.i, align 4, !tbaa !3 ; 2 uses
  %.val17.i.i.i.i.i = load i32, ptr %i.ah, align 4, !tbaa !3 ; 2 uses
  %i.bi = zext i32 %.0.val.i.i.i.i.i to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.bi
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !24 ; 3 uses
  %i.bl = zext i32 %.val17.i.i.i.i.i to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !24
  %i.bo = icmp slt i64 %i.bk, %i.bn
  br i1 %i.bo, label %bb.n, label %bb.q

bb.n:                                             ; preds = %.preheader.i.i
  %i.bp = icmp samesign ugt i64 %.021.i.idx.i.i.i.i, 4
  br i1 %i.bp, label %bb.o, label %bb.p, !prof !432

bb.o:                                             ; preds = %bb.n
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(1) %i.ah, i64 %.021.i.idx.i.i.i.i, i1 false)
  br label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.bq = getelementptr inbounds nuw i8, ptr %.pn20.i.i.i.i.i, i64 4
  store i32 %.val17.i.i.i.i.i, ptr %i.bq, align 4, !tbaa !3
  br label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i.i.i.i.i

bb.q:                                             ; preds = %.preheader.i.i
  %.0.val13.i.i.i.i.i.i = load i32, ptr %.pn20.i.i.i.i.i, align 4, !tbaa !3 ; 2 uses
  %i.br = zext i32 %.0.val13.i.i.i.i.i.i to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.br
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !24
  %i.bu = icmp slt i64 %i.bk, %i.bt
  br i1 %i.bu, label %.lr.ph.i.i.i.i.i.i, label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.q, %.lr.ph.i.i.i.i.i.i
  %.0.val16.i.i.i.i.i.i = phi i32 [ %.0.val.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.0.val13.i.i.i.i.i.i, %bb.q ]
  %.015.i.i.i.i.i.i = phi ptr [ %.0.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.pn20.i.i.i.i.i, %bb.q ] ; 3 uses
  %.0914.i.i.i.i.i.i = phi ptr [ %.015.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.021.i.ptr.i.i.i.i, %bb.q ]
  store i32 %.0.val16.i.i.i.i.i.i, ptr %.0914.i.i.i.i.i.i, align 4, !tbaa !3
  %.0.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.015.i.i.i.i.i.i, i64 -4 ; 2 uses
  %.0.val.i.i.i.i.i.i = load i32, ptr %.0.i.i.i.i.i.i, align 4, !tbaa !3 ; 2 uses
  %i.bv = zext i32 %.0.val.i.i.i.i.i.i to i64
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.bv
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !24
  %i.by = icmp slt i64 %i.bk, %i.bx
  br i1 %i.by, label %.lr.ph.i.i.i.i.i.i, label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i.i.i.i.i, !llvm.loop !1140

_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.q, %bb.p, %bb.o
  %.sink.i.i.i.i.i = phi ptr [ %i.ah, %bb.p ], [ %i.ah, %bb.o ], [ %.021.i.ptr.i.i.i.i, %bb.q ], [ %.015.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  store i32 %.0.val.i.i.i.i.i, ptr %.sink.i.i.i.i.i, align 4, !tbaa !3
  %.021.i.add.i.i.i.i = add nuw nsw i64 %.021.i.idx.i.i.i.i, 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.021.i.add.i.i.i.i, 64
  br i1 %.not.i.i.i.i.i, label %"_ZSt16__insertion_sortIPjN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL19SortSelectionVectorERNS4_15SelectionVectorEmPlE3$_0EEEvT_SA_T0_.exit.i.i.i.i", label %.preheader.i.i, !llvm.loop !1141

"_ZSt16__insertion_sortIPjN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL19SortSelectionVectorERNS4_15SelectionVectorEmPlE3$_0EEEvT_SA_T0_.exit.i.i.i.i": ; preds = %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i.i.i.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %"_ZSt25__unguarded_linear_insertIPjN9__gnu_cxx5__ops14_Val_comp_iterIZN6duckdbL19SortSelectionVectorERNS4_15SelectionVectorEmPlE3$_0EEEvT_T0_.exit.i.i.i.i.i", %"_ZSt16__insertion_sortIPjN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL19SortSelectionVectorERNS4_15SelectionVectorEmPlE3$_0EEEvT_SA_T0_.exit.i.i.i.i"
  %.08.i.i.i.i.i = phi ptr [ %i.cm, %"_ZSt25__unguarded_linear_insertIPjN9__gnu_cxx5__ops14_Val_comp_iterIZN6duckdbL19SortSelectionVectorERNS4_15SelectionVectorEmPlE3$_0EEEvT_T0_.exit.i.i.i.i.i" ], [ %i.bz, %"_ZSt16__insertion_sortIPjN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL19SortSelectionVectorERNS4_15SelectionVectorEmPlE3$_0EEEvT_SA_T0_.exit.i.i.i.i" ] ; 5 uses
  %i.ca = load i32, ptr %.08.i.i.i.i.i, align 4, !tbaa !3 ; 2 uses
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.cb
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !24 ; 2 uses
  %.012.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.08.i.i.i.i.i, i64 -4 ; 2 uses
  %.0.val13.i.i11.i.i.i.i = load i32, ptr %.012.i.i.i.i.i.i, align 4, !tbaa !3 ; 2 uses
  %i.ce = zext i32 %.0.val13.i.i11.i.i.i.i to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.ce
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !24
  %i.ch = icmp slt i64 %i.cd, %i.cg
  br i1 %i.ch, label %.lr.ph.i.i13.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIPjN9__gnu_cxx5__ops14_Val_comp_iterIZN6duckdbL19SortSelectionVectorERNS4_15SelectionVectorEmPlE3$_0EEEvT_T0_.exit.i.i.i.i.i"

.lr.ph.i.i13.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i13.i.i.i.i
  %.0.val16.i.i14.i.i.i.i = phi i32 [ %.0.val.i.i18.i.i.i.i, %.lr.ph.i.i13.i.i.i.i ], [ %.0.val13.i.i11.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %.015.i.i15.i.i.i.i = phi ptr [ %.0.i.i17.i.i.i.i, %.lr.ph.i.i13.i.i.i.i ], [ %.012.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %.0914.i.i16.i.i.i.i = phi ptr [ %.015.i.i15.i.i.i.i, %.lr.ph.i.i13.i.i.i.i ], [ %.08.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  store i32 %.0.val16.i.i14.i.i.i.i, ptr %.0914.i.i16.i.i.i.i, align 4, !tbaa !3
  %.0.i.i17.i.i.i.i = getelementptr inbounds i8, ptr %.015.i.i15.i.i.i.i, i64 -4 ; 2 uses
  %.0.val.i.i18.i.i.i.i = load i32, ptr %.0.i.i17.i.i.i.i, align 4, !tbaa !3 ; 2 uses
  %i.ci = zext i32 %.0.val.i.i18.i.i.i.i to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.ci
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !24
  %i.cl = icmp slt i64 %i.cd, %i.ck
  br i1 %i.cl, label %.lr.ph.i.i13.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIPjN9__gnu_cxx5__ops14_Val_comp_iterIZN6duckdbL19SortSelectionVectorERNS4_15SelectionVectorEmPlE3$_0EEEvT_T0_.exit.i.i.i.i.i", !llvm.loop !1140

"_ZSt25__unguarded_linear_insertIPjN9__gnu_cxx5__ops14_Val_comp_iterIZN6duckdbL19SortSelectionVectorERNS4_15SelectionVectorEmPlE3$_0EEEvT_T0_.exit.i.i.i.i.i": ; preds = %.lr.ph.i.i13.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.09.lcssa.i.i.i.i.i.i = phi ptr [ %.08.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.015.i.i15.i.i.i.i, %.lr.ph.i.i13.i.i.i.i ]
  store i32 %i.ca, ptr %.09.lcssa.i.i.i.i.i.i, align 4, !tbaa !3
  %i.cm = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i12.i.i.i.i = icmp eq ptr %i.cm, %i.bc
  br i1 %.not.i12.i.i.i.i, label %.lr.ph68.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1142
end_hunk_0
begin_hunk_1_@_ZN6duckdb18RowGroupCollection12UpdateColumnENS_15TransactionDataERNS_9DataTableERNS_6VectorERKNS_6vectorImLb1ESaImEEERNS_9DataChunkE:bb.a
bb.s:                                             ; preds = %.noexc35
  %i.bk = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.bl = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorINS_10shared_ptrINS_10ColumnDataELb1EEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i64 noundef %i.bc)
          to label %.noexc37 unwind label %bb.ad

.noexc37:                                         ; preds = %bb.s
  %i.bm = invoke noundef nonnull align 8 dereferenceable(296) ptr @_ZNK6duckdb10shared_ptrINS_10ColumnDataELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bl)
          to label %_ZNK6duckdb8RowGroup9GetColumnEm.exit.i unwind label %bb.ad

_ZNK6duckdb8RowGroup9GetColumnEm.exit.i:          ; preds = %.noexc37, %bb.r
  %i.bn = phi ptr [ %i.bj, %bb.r ], [ %i.bm, %.noexc37 ]
  invoke void @_ZN6duckdb10ColumnData19MergeIntoStatisticsERNS_14BaseStatisticsE(ptr noundef nonnull align 8 dereferenceable(296) %i.bn, ptr noundef nonnull align 8 dereferenceable(128) %i.bg)
          to label %_ZN6duckdb8RowGroup19MergeIntoStatisticsEmRNS_14BaseStatisticsE.exit unwind label %bb.ad

_ZN6duckdb8RowGroup19MergeIntoStatisticsEmRNS_14BaseStatisticsE.exit: ; preds = %_ZNK6duckdb8RowGroup9GetColumnEm.exit.i
  %i.bo = load ptr, ptr %9, align 8, !tbaa !2668  ; 3 uses
  %.not.i40 = icmp eq ptr %i.bo, null
  br i1 %.not.i40, label %_ZNSt10unique_ptrIN6duckdb19TableStatisticsLockESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb19TableStatisticsLockEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb19TableStatisticsLockEEclEPS1_.exit.i: ; preds = %_ZN6duckdb8RowGroup19MergeIntoStatisticsEmRNS_14BaseStatisticsE.exit
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !2670, !nonnull !70, !align !145
  %i.bq = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.bp) #37 ; 0 uses
  call void @_ZdlPv(ptr noundef nonnull %i.bo) #39
  br label %_ZNSt10unique_ptrIN6duckdb19TableStatisticsLockESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb19TableStatisticsLockESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN6duckdb8RowGroup19MergeIntoStatisticsEmRNS_14BaseStatisticsE.exit, %_ZNKSt14default_deleteIN6duckdb19TableStatisticsLockEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  %i.br = load i64, ptr %i.p, align 8, !tbaa !1225
  %i.bs = icmp ult i64 %storemerge.i.lcssa, %i.br
  br i1 %i.bs, label %bb.f, label %bb.t, !llvm.loop !3351

bb.t:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb19TableStatisticsLockESt14default_deleteIS1_EED2Ev.exit
  %i.bt = load ptr, ptr %i.f, align 8, !tbaa !93  ; 8 uses
  %.not.i.i.i41 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i41, label %_ZN6duckdb10shared_ptrINS_19RowGroupSegmentTreeELb1EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 4 uses
  %i.bv = load atomic i64, ptr %i.bu acquire, align 8 ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 4294967297
  %i.bx = trunc i64 %i.bv to i32                  ; 2 uses
  br i1 %i.bw, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.bu, align 8, !tbaa !94
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  store i32 0, ptr %i.by, align 4, !tbaa !96
  %i.bz = load ptr, ptr %i.bt, align 8, !tbaa !12
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(16) %i.bt) #37, !inline_history !2941
  %i.cc = load ptr, ptr %i.bt, align 8, !tbaa !12
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8
  call void %i.ce(ptr noundef nonnull align 8 dereferenceable(16) %i.bt) #37, !inline_history !2941
  br label %_ZN6duckdb10shared_ptrINS_19RowGroupSegmentTreeELb1EED2Ev.exit

bb.w:                                             ; preds = %bb.u
  %i.cf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98
  %.not.i.i.i.i = icmp eq i8 %i.cf, 0
  br i1 %.not.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cg = add nsw i32 %i.bx, -1
  store i32 %i.cg, ptr %i.bu, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.ch = atomicrmw volatile add ptr %i.bu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i.i = phi i32 [ %i.bx, %bb.x ], [ %i.ch, %bb.y ]
  %i.ci = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ci, label %bb.z, label %_ZN6duckdb10shared_ptrINS_19RowGroupSegmentTreeELb1EED2Ev.exit, !prof !99

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bt) #37
  br label %_ZN6duckdb10shared_ptrINS_19RowGroupSegmentTreeELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_19RowGroupSegmentTreeELb1EED2Ev.exit: ; preds = %bb.t, %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  ret void

bb.aa:                                            ; preds = %.noexc24, %.noexc23, %.noexc, %bb.g, %bb.f
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ab:                                            ; preds = %_ZNK6duckdb11SegmentNodeINS_8RowGroupEE7GetNodeEv.exit, %bb.i, %._crit_edge75, %bb.j
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ac:                                            ; preds = %.noexc31, %bb.k
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ad:                                            ; preds = %_ZNK6duckdb8RowGroup9GetColumnEm.exit.i, %.noexc37, %bb.s, %bb.r, %bb.q, %.noexc33, %bb.p, %_ZN6duckdb15TableStatistics8GetStatsERNS_19TableStatisticsLockEm.exit, %bb.o, %bb.n
  %i.cm = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6duckdb19TableStatisticsLockESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #37
  br label %.body

.body:                                            ; preds = %bb.ac, %bb.m, %bb.ad
  %.pn = phi { ptr, i32 } [ %i.cm, %bb.ad ], [ %i.cl, %bb.ac ], [ %i.ba, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ab, %.body, %bb.aa
  %.pn.pn.pn = phi { ptr, i32 } [ %i.cj, %bb.aa ], [ %.pn, %.body ], [ %i.ck, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  call void @_ZN6duckdb10shared_ptrINS_19RowGroupSegmentTreeELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb18RowGroupCollection21InitializeVacuumStateERNS_25CollectionCheckpointStateERNS_11VacuumStateE(ptr noundef nonnull align 8 dereferenceable(217) %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) initializes((0, 1)) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb::BlockIdDropper", align 8 ; 5 uses
  %4 = alloca %"struct.duckdb::BlockIdDropper", align 8 ; 5 uses
  %5 = alloca %"class.duckdb::optional_ptr.62", align 8 ; 5 uses
  %6 = alloca %"class.duckdb::optional_ptr.62", align 8 ; 6 uses
  %7 = alloca %"struct.duckdb::CheckpointOptions", align 8 ; 6 uses
  %8 = alloca %"class.duckdb::vector.1993", align 8 ; 11 uses
  %9 = alloca %"class.duckdb::SegmentTree<duckdb::RowGroup, true>::SegmentNodeIterationHelper::SegmentIterator", align 8 ; 8 uses
  %i.a = alloca i64, align 8                      ; 8 uses
  %10 = alloca %"class.duckdb::optional_idx", align 8 ; 6 uses
  %11 = alloca %"class.duckdb::optional_ptr.897", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3352, !nonnull !70, !align !145 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = load ptr, ptr %i.e, align 8
  call void %i.f(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::CheckpointOptions") align 8 %7, ptr noundef nonnull align 8 dereferenceable(49) %i.c)
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !2680
  %i.i = icmp ne i32 %i.h, 1                      ; 2 uses
  %i.j = zext i1 %i.i to i8
  store i8 %i.j, ptr %2, align 8, !tbaa !3382
  br i1 %i.i, label %bb.b, label %bb.bg

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = call noundef ptr @_ZNK6duckdb10shared_ptrINS_13DataTableInfoELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.k) ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 128 ; 2 uses
  %i.n = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(72) %i.m) #37 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i, label %_ZNK6duckdb14TableIndexList5EmptyEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZSt20__throw_system_errori(i32 noundef %i.n) #40
  unreachable

_ZNK6duckdb14TableIndexList5EmptyEv.exit:         ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 168
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 176
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !3390
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !3391
  %i.s = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(72) %i.m) #37 ; 0 uses
  %i.t = icmp eq ptr %i.q, %i.r
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 3 uses
  %i.v = zext i1 %i.t to i8
  store i8 %i.v, ptr %i.u, align 1, !tbaa !3392
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !3393
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !3394
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 4 uses
  %i.ae = icmp ugt i64 %i.ad, 9223372036854775800
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK6duckdb14TableIndexList5EmptyEv.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.205) #40
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %_ZNK6duckdb14TableIndexList5EmptyEv.exit
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 6 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !3395
  %i.ah = load ptr, ptr %i.w, align 8, !tbaa !3396 ; 7 uses
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64               ; 4 uses
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = icmp ult i64 %i.ak, %i.ad
  br i1 %i.al, label %_ZNSt12_Vector_baseIN6duckdb12optional_idxESaIS1_EE11_M_allocateEm.exit.i, label %bb.g

_ZNSt12_Vector_baseIN6duckdb12optional_idxESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !3397 ; 4 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = sub i64 %i.ao, %i.aj
  %i.aq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #38
          to label %.noexc81 unwind label %bb.i   ; 7 uses

.noexc81:                                         ; preds = %_ZNSt12_Vector_baseIN6duckdb12optional_idxESaIS1_EE11_M_allocateEm.exit.i
  %.not10.i.i.i.i.i = icmp eq ptr %i.ah, %i.an
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc81
  %i.ar = ptrtoaddr ptr %i.aq to i64
  %12 = ptrtoint ptr %i.an to i64
  %i.as = sub i64 %12, %i.aj
  %i.at = add i64 %i.as, -8                       ; 2 uses
  %i.au = lshr i64 %i.at, 3
  %i.av = add nuw nsw i64 %i.au, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.at, 72
  %i.aw = sub i64 %i.aj, %i.ar
  %diff.check = icmp ugt i64 %i.aw, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader234, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.av, 4611686018427387900     ; 3 uses
  %i.ax = shl i64 %n.vec, 3                       ; 2 uses
  %i.ay = getelementptr i8, ptr %i.aq, i64 %i.ax
  %i.az = getelementptr i8, ptr %i.ah, i64 %i.ax
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ba = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aq, i64 %i.ba ; 2 uses
  %next.gep190 = getelementptr i8, ptr %i.ah, i64 %i.ba ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3398)
  call void @llvm.experimental.noalias.scope.decl(metadata !3401)
  %i.bb = getelementptr i8, ptr %next.gep190, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep190, align 8, !tbaa !24, !alias.scope !3401, !noalias !3398
  %wide.load191 = load <2 x i64>, ptr %i.bb, align 8, !tbaa !24, !alias.scope !3401, !noalias !3398
  %i.bc = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !24, !alias.scope !3398, !noalias !3401
  store <2 x i64> %wide.load191, ptr %i.bc, align 8, !tbaa !24, !alias.scope !3398, !noalias !3401
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !3403

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i.i.preheader234

.lr.ph.i.i.i.i.i.preheader234:                    ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ay, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.preheader ], [ %i.az, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader234, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader234 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader234 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3398)
  call void @llvm.experimental.noalias.scope.decl(metadata !3401)
  %i.be = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !24, !alias.scope !3401, !noalias !3398
  store i64 %i.be, ptr %.012.i.i.i.i.i, align 8, !tbaa !24, !alias.scope !3398, !noalias !3401
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.bf, %i.an
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !3404

_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc81
  %.not.i8.i = icmp eq ptr %i.ah, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN6duckdb12optional_idxESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.ah) #39
  br label %_ZNSt12_Vector_baseIN6duckdb12optional_idxESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseIN6duckdb12optional_idxESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.f, %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.aq, ptr %i.w, align 8, !tbaa !3396
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ap
  store ptr %i.bh, ptr %i.am, align 8, !tbaa !3397
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ad
  store ptr %i.bi, ptr %i.af, align 8, !tbaa !3395
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt12_Vector_baseIN6duckdb12optional_idxESaIS1_EE13_M_deallocateEPS1_m.exit.i, %bb.e
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !3405, !nonnull !70, !align !145 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  %i.bl = invoke ptr @_ZNK6duckdb11SegmentTreeINS_8RowGroupELb1EE14GetRootSegmentEv(ptr noundef nonnull align 8 dereferenceable(88) %i.bk)
          to label %bb.h unwind label %bb.j       ; 2 uses

bb.h:                                             ; preds = %bb.g
  store ptr %i.bk, ptr %9, align 8, !tbaa !3221, !alias.scope !3406
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !1282, !alias.scope !3406
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr null, ptr %i.bn, align 8, !tbaa !842, !alias.scope !3406
  %.not138156 = icmp eq ptr %i.bl, null
  br i1 %.not138156, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.bo = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bp = load i64, ptr @_ZN6duckdb18MAX_TRANSACTION_IDE, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 6 uses
  %i.bt = load i64, ptr @_ZN6duckdb24COLUMN_IDENTIFIER_ROW_IDE, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 112
  br label %bb.l

bb.i:                                             ; preds = %_ZNSt12_Vector_baseIN6duckdb12optional_idxESaIS1_EE11_M_allocateEm.exit.i, %bb.d
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.j:                                             ; preds = %bb.g
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.k:                                             ; preds = %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE12emplace_backIJEEEvDpOT_.exit.thread
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.l:                                             ; preds = %.lr.ph, %_ZN6duckdb11SegmentTreeINS_8RowGroupELb1EE19BaseSegmentIteratorppEv.exit
  invoke void @_ZNK6duckdb12optional_ptrINS_11SegmentNodeINS_8RowGroupEEELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bm)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bz = load ptr, ptr %i.bm, align 8, !tbaa !2318 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = invoke noundef nonnull align 8 dereferenceable(218) ptr @_ZNK6duckdb10shared_ptrINS_8RowGroupELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ca)
          to label %_ZNK6duckdb11SegmentNodeINS_8RowGroupEE7GetNodeEv.exit unwind label %bb.q ; 14 uses

_ZNK6duckdb11SegmentNodeINS_8RowGroupEE7GetNodeEv.exit: ; preds = %bb.m
  %i.cc = load i64, ptr %i.bo, align 8, !tbaa !2681 ; 2 uses
  %i.cd = icmp eq i64 %i.cc, %i.bp
  br i1 %i.cd, label %_ZNK6duckdb8RowGroup24ShouldCheckpointRowGroupEm.exit.thread, label %bb.n

bb.n:                                             ; preds = %_ZNK6duckdb11SegmentNodeINS_8RowGroupEE7GetNodeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 136
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !2367
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 144
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !2367
  %i.ci = icmp eq ptr %i.cf, %i.ch
  br i1 %i.ci, label %_ZNK6duckdb8RowGroup22GetVersionInfoIfLoadedEv.exit.i, label %_ZNK6duckdb8RowGroup18HasUnloadedDeletesEv.exit.i.i

_ZNK6duckdb8RowGroup18HasUnloadedDeletesEv.exit.i.i: ; preds = %bb.n
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cb, i64 192
  %i.ck = load atomic i8, ptr %i.cj seq_cst, align 8, !range !263, !noundef !70
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %_ZNK6duckdb8RowGroup22GetVersionInfoIfLoadedEv.exit.i, label %_ZNK6duckdb8RowGroup24ShouldCheckpointRowGroupEm.exit.thread134

_ZNK6duckdb8RowGroup22GetVersionInfoIfLoadedEv.exit.i: ; preds = %_ZNK6duckdb8RowGroup18HasUnloadedDeletesEv.exit.i.i, %bb.n
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cn = load atomic i64, ptr %i.cm seq_cst, align 8 ; 2 uses
  %i.co = inttoptr i64 %i.cn to ptr
  store ptr %i.co, ptr %6, align 8
  %.not.i89 = icmp eq i64 %i.cn, 0
  br i1 %.not.i89, label %_ZNK6duckdb8RowGroup24ShouldCheckpointRowGroupEm.exit.thread134, label %bb.o

bb.o:                                             ; preds = %_ZNK6duckdb8RowGroup22GetVersionInfoIfLoadedEv.exit.i
  invoke void @_ZNK6duckdb12optional_ptrINS_17RowVersionManagerELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %.noexc90 unwind label %bb.r

.noexc90:                                         ; preds = %bb.o
  %i.cp = load ptr, ptr %6, align 8, !tbaa !2580
  %i.cq = load atomic i64, ptr %i.cb seq_cst, align 8
  %i.cr = invoke noundef zeroext i1 @_ZN6duckdb17RowVersionManager24ShouldCheckpointRowGroupEmm(ptr noundef nonnull align 8 dereferenceable(336) %i.cp, i64 noundef %i.cc, i64 noundef %i.cq)
          to label %_ZNK6duckdb8RowGroup24ShouldCheckpointRowGroupEm.exit unwind label %bb.r

_ZNK6duckdb8RowGroup24ShouldCheckpointRowGroupEm.exit.thread134: ; preds = %_ZNK6duckdb8RowGroup18HasUnloadedDeletesEv.exit.i.i, %_ZNK6duckdb8RowGroup22GetVersionInfoIfLoadedEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %_ZNK6duckdb8RowGroup24ShouldCheckpointRowGroupEm.exit.thread

_ZNK6duckdb8RowGroup24ShouldCheckpointRowGroupEm.exit: ; preds = %.noexc90
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br i1 %i.cr, label %_ZNK6duckdb8RowGroup24ShouldCheckpointRowGroupEm.exit.thread, label %bb.ao

bb.p:                                             ; preds = %bb.l
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.q:                                             ; preds = %bb.m
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.r:                                             ; preds = %.noexc90, %bb.o
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

_ZNK6duckdb8RowGroup24ShouldCheckpointRowGroupEm.exit.thread: ; preds = %_ZNK6duckdb11SegmentNodeINS_8RowGroupEE7GetNodeEv.exit, %_ZNK6duckdb8RowGroup24ShouldCheckpointRowGroupEm.exit.thread134, %_ZNK6duckdb8RowGroup24ShouldCheckpointRowGroupEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.cv = invoke ptr @_ZN6duckdb8RowGroup14GetVersionInfoEv(ptr noundef nonnull align 8 dereferenceable(218) %i.cb)
          to label %.noexc94 unwind label %.loopexit.split-lp141 ; 2 uses

.noexc94:                                         ; preds = %_ZNK6duckdb8RowGroup24ShouldCheckpointRowGroupEm.exit.thread
  store ptr %i.cv, ptr %5, align 8
  %.not.i92 = icmp eq ptr %i.cv, null
  %i.cw = load atomic i64, ptr %i.cb seq_cst, align 8 ; 2 uses
  br i1 %.not.i92, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.noexc94
  invoke void @_ZNK6duckdb12optional_ptrINS_17RowVersionManagerELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc95 unwind label %.loopexit.split-lp141

.noexc95:                                         ; preds = %bb.s
end_hunk_1
begin_hunk_2_@_ZN6duckdb9Exception25ConstructMessageRecursiveIlJRKlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RSt6vectorINS_20ExceptionFormatValueESaISD_EERKT_DpOT0_:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !926  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1639
  %.not.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %5, i64 32, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 3 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !116
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !35   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 4 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.m = load i64, ptr %i.l, align 8, !tbaa !117  ; 3 uses
  %i.n = icmp ult i64 %i.m, 16
  call void @llvm.assume(i1 %i.n)
  %i.o = add nuw nsw i64 %i.m, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.h, ptr noundef nonnull align 8 dereferenceable(1) %i.j, i64 %i.o, i1 false)
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  store ptr %i.i, ptr %i.f, align 8, !tbaa !35
  %i.p = load i64, ptr %i.j, align 8, !tbaa !98
  store i64 %i.p, ptr %i.h, align 8, !tbaa !98
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !117
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.q = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.m, %bb.c ]
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 %i.q, ptr %i.s, align 8, !tbaa !117
  store ptr %i.j, ptr %i.g, align 8, !tbaa !35
  store i64 0, ptr %i.r, align 8, !tbaa !117
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !926
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  store ptr %i.u, ptr %i.b, align 8, !tbaa !926
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

bb.d:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.c, ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit unwind label %bb.e

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.d
  %.phi.trans.insert9 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %.pre10 = load ptr, ptr %.phi.trans.insert9, align 8, !tbaa !35 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.w = icmp eq ptr %.pre10, %i.v
  br i1 %i.w, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit
  call void @_ZdlPv(ptr noundef %.pre10) #39
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

_ZN6duckdb20ExceptionFormatValueD2Ev.exit:        ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  call void @_ZN6duckdb9Exception25ConstructMessageRecursiveIlJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %4)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !35   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.z) #39
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit8

_ZN6duckdb20ExceptionFormatValueD2Ev.exit8:       ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  resume { ptr, i32 } %i.x
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb9Exception25ConstructMessageRecursiveIlJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.duckdb::ExceptionFormatValue", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.a = load i64, ptr %3, align 8, !tbaa !24, !noalias !5304
  call void @_ZN6duckdb20ExceptionFormatValueC1El(ptr noundef nonnull align 8 dereferenceable(64) %4, i64 noundef %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !926  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1639
  %.not.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %4, i64 32, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 3 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !116
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !35   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 4 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.m = load i64, ptr %i.l, align 8, !tbaa !117  ; 3 uses
  %i.n = icmp ult i64 %i.m, 16
  call void @llvm.assume(i1 %i.n)
  %i.o = add nuw nsw i64 %i.m, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.h, ptr noundef nonnull align 8 dereferenceable(1) %i.j, i64 %i.o, i1 false)
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  store ptr %i.i, ptr %i.f, align 8, !tbaa !35
  %i.p = load i64, ptr %i.j, align 8, !tbaa !98
  store i64 %i.p, ptr %i.h, align 8, !tbaa !98
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !117
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.q = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.m, %bb.c ]
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 %i.q, ptr %i.s, align 8, !tbaa !117
  store ptr %i.j, ptr %i.g, align 8, !tbaa !35
  store i64 0, ptr %i.r, align 8, !tbaa !117
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !926
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  store ptr %i.u, ptr %i.b, align 8, !tbaa !926
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

bb.d:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.c, ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit unwind label %bb.e

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.d
  %.phi.trans.insert8 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.pre9 = load ptr, ptr %.phi.trans.insert8, align 8, !tbaa !35 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.w = icmp eq ptr %.pre9, %i.v
  br i1 %i.w, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit
  call void @_ZdlPv(ptr noundef %.pre9) #39
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

_ZN6duckdb20ExceptionFormatValueD2Ev.exit:        ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  call void @_ZN6duckdb9Exception25ConstructMessageRecursiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorINS_20ExceptionFormatValueESaISA_EE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !35   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.z) #39
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit7

_ZN6duckdb20ExceptionFormatValueD2Ev.exit7:       ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  resume { ptr, i32 } %i.x
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3397 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !3396   ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6duckdb12optional_idxESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.164) #40
  unreachable

_ZNKSt6vectorIN6duckdb12optional_idxESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #38 ; 9 uses
  %i.q = ptrtoaddr ptr %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.s = load i64, ptr %2, align 8, !tbaa !24
  invoke void @_ZN6duckdb12optional_idxC2Em(ptr noundef nonnull align 8 dereferenceable(8) %i.r, i64 noundef %i.s)
          to label %_ZNSt16allocator_traitsISaIN6duckdb12optional_idxEEE9constructIS1_JRmEEEvRS2_PT_DpOT0_.exit unwind label %bb.e

_ZNSt16allocator_traitsISaIN6duckdb12optional_idxEEE9constructIS1_JRmEEEvRS2_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN6duckdb12optional_idxESaIS1_EE12_M_check_lenEmPKc.exit
  %.not10.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt16allocator_traitsISaIN6duckdb12optional_idxEEE9constructIS1_JRmEEEvRS2_PT_DpOT0_.exit
  %3 = ptrtoint ptr %1 to i64
  %i.t = sub i64 %3, %i.e
  %i.u = add i64 %i.t, -8                         ; 2 uses
  %i.v = lshr i64 %i.u, 3
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.u, 72
  %i.x = sub i64 %i.e, %i.q
  %diff.check = icmp ugt i64 %i.x, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader70, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.w, 4611686018427387900      ; 3 uses
  %i.y = shl i64 %n.vec, 3                        ; 2 uses
  %i.z = getelementptr i8, ptr %i.p, i64 %i.y     ; 2 uses
  %i.aa = getelementptr i8, ptr %i.c, i64 %i.y
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.ab ; 2 uses
  %next.gep47 = getelementptr i8, ptr %i.c, i64 %i.ab ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5307)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5310)
  %i.ac = getelementptr i8, ptr %next.gep47, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep47, align 8, !tbaa !24, !alias.scope !5310, !noalias !5307
  %wide.load48 = load <2 x i64>, ptr %i.ac, align 8, !tbaa !24, !alias.scope !5310, !noalias !5307
  %i.ad = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !24, !alias.scope !5307, !noalias !5310
  store <2 x i64> %wide.load48, ptr %i.ad, align 8, !tbaa !24, !alias.scope !5307, !noalias !5310
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !5312

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i.preheader70

.lr.ph.i.i.i.i.preheader70:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.i.preheader ], [ %i.z, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.i.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader70, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader70 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader70 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5307)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5310)
  %i.af = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !24, !alias.scope !5310, !noalias !5307
  store i64 %i.af, ptr %.012.i.i.i.i, align 8, !tbaa !24, !alias.scope !5307, !noalias !5310
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ag, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !5313

_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNSt16allocator_traitsISaIN6duckdb12optional_idxEEE9constructIS1_JRmEEEvRS2_PT_DpOT0_.exit
  %.0.lcssa.i.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaIN6duckdb12optional_idxEEE9constructIS1_JRmEEEvRS2_PT_DpOT0_.exit ], [ %i.z, %middle.block ], [ %i.ah, %.lr.ph.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i51 = ptrtoaddr ptr %.0.lcssa.i.i.i.i to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8 ; 5 uses
  %.not10.i.i.i.i26 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i.i26, label %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32, label %.lr.ph.i.i.i.i27.preheader

.lr.ph.i.i.i.i27.preheader:                       ; preds = %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %4 = ptrtoint ptr %1 to i64
  %i.aj = sub i64 %i.d, %4
  %i.ak = add i64 %i.aj, -8                       ; 2 uses
  %i.al = lshr i64 %i.ak, 3
  %i.am = add nuw nsw i64 %i.al, 1                ; 2 uses
  %min.iters.check54 = icmp ult i64 %i.ak, 104
  br i1 %min.iters.check54, label %.lr.ph.i.i.i.i27.preheader69, label %vector.memcheck50

vector.memcheck50:                                ; preds = %.lr.ph.i.i.i.i27.preheader
  %i.an = sub i64 %.0.lcssa.i.i.i.i51, %i.m
  %i.ao = add i64 %i.an, 7
  %diff.check52 = icmp ult i64 %i.ao, 31
  br i1 %diff.check52, label %.lr.ph.i.i.i.i27.preheader69, label %vector.ph55

vector.ph55:                                      ; preds = %vector.memcheck50
  %n.vec57 = and i64 %i.am, 4611686018427387900   ; 3 uses
  %i.ap = shl i64 %n.vec57, 3                     ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ai, i64 %i.ap  ; 2 uses
  %i.ar = getelementptr i8, ptr %1, i64 %i.ap
  br label %vector.body58

vector.body58:                                    ; preds = %vector.body58, %vector.ph55
  %index59 = phi i64 [ 0, %vector.ph55 ], [ %index.next64, %vector.body58 ] ; 2 uses
  %i.as = shl i64 %index59, 3                     ; 2 uses
  %next.gep60 = getelementptr i8, ptr %i.ai, i64 %i.as ; 2 uses
  %next.gep61 = getelementptr i8, ptr %1, i64 %i.as ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5314)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5317)
  %i.at = getelementptr i8, ptr %next.gep61, i64 16
  %wide.load62 = load <2 x i64>, ptr %next.gep61, align 8, !tbaa !24, !alias.scope !5317, !noalias !5314
  %wide.load63 = load <2 x i64>, ptr %i.at, align 8, !tbaa !24, !alias.scope !5317, !noalias !5314
  %i.au = getelementptr i8, ptr %next.gep60, i64 16
  store <2 x i64> %wide.load62, ptr %next.gep60, align 8, !tbaa !24, !alias.scope !5314, !noalias !5317
  store <2 x i64> %wide.load63, ptr %i.au, align 8, !tbaa !24, !alias.scope !5314, !noalias !5317
  %index.next64 = add nuw i64 %index59, 4         ; 2 uses
  %i.av = icmp eq i64 %index.next64, %n.vec57
  br i1 %i.av, label %middle.block65, label %vector.body58, !llvm.loop !5319

middle.block65:                                   ; preds = %vector.body58
  %cmp.n66 = icmp eq i64 %i.am, %n.vec57
  br i1 %cmp.n66, label %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32, label %.lr.ph.i.i.i.i27.preheader69

.lr.ph.i.i.i.i27.preheader69:                     ; preds = %vector.memcheck50, %.lr.ph.i.i.i.i27.preheader, %middle.block65
  %.012.i.i.i.i28.ph = phi ptr [ %i.ai, %vector.memcheck50 ], [ %i.ai, %.lr.ph.i.i.i.i27.preheader ], [ %i.aq, %middle.block65 ]
  %.0911.i.i.i.i29.ph = phi ptr [ %1, %vector.memcheck50 ], [ %1, %.lr.ph.i.i.i.i27.preheader ], [ %i.ar, %middle.block65 ]
  br label %.lr.ph.i.i.i.i27

.lr.ph.i.i.i.i27:                                 ; preds = %.lr.ph.i.i.i.i27.preheader69, %.lr.ph.i.i.i.i27
  %.012.i.i.i.i28 = phi ptr [ %i.ay, %.lr.ph.i.i.i.i27 ], [ %.012.i.i.i.i28.ph, %.lr.ph.i.i.i.i27.preheader69 ] ; 2 uses
  %.0911.i.i.i.i29 = phi ptr [ %i.ax, %.lr.ph.i.i.i.i27 ], [ %.0911.i.i.i.i29.ph, %.lr.ph.i.i.i.i27.preheader69 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5314)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5317)
  %i.aw = load i64, ptr %.0911.i.i.i.i29, align 8, !tbaa !24, !alias.scope !5317, !noalias !5314
  store i64 %i.aw, ptr %.012.i.i.i.i28, align 8, !tbaa !24, !alias.scope !5314, !noalias !5317
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i29, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i28, i64 8 ; 2 uses
  %.not.i.i.i.i30 = icmp eq ptr %i.ax, %i.b
  br i1 %.not.i.i.i.i30, label %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32, label %.lr.ph.i.i.i.i27, !llvm.loop !5320

_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32: ; preds = %.lr.ph.i.i.i.i27, %middle.block65, %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i.i31 = phi ptr [ %i.ai, %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.aq, %middle.block65 ], [ %i.ay, %.lr.ph.i.i.i.i27 ]
  %.not.i33 = icmp eq ptr %i.c, null
  br i1 %.not.i33, label %_ZNSt12_Vector_baseIN6duckdb12optional_idxESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #39
  br label %_ZNSt12_Vector_baseIN6duckdb12optional_idxESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6duckdb12optional_idxESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32, %bb.c
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %0, align 8, !tbaa !3396
  store ptr %.0.lcssa.i.i.i.i31, ptr %i.a, align 8, !tbaa !3397
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ba, ptr %i.az, align 8, !tbaa !3395
  ret void

bb.d:                                             ; preds = %bb.e
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.e:                                             ; preds = %_ZNKSt6vectorIN6duckdb12optional_idxESaIS1_EE12_M_check_lenEmPKc.exit
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  %i.be = tail call ptr @__cxa_begin_catch(ptr %i.bd) #37 ; 0 uses
  tail call void @_ZdlPv(ptr noundef nonnull %i.p) #39
  invoke void @__cxa_rethrow() #40
          to label %bb.h unwind label %bb.d

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.bb

bb.g:                                             ; preds = %bb.d
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  tail call void @__clang_call_terminate(ptr %i.bg) #41
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb10VacuumTaskD0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !348  ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb4TaskD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 3 uses
  %i.d = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98
  %.not.i.i.i.i.i.i = icmp eq i8 %i.d, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %i.c, align 4, !tbaa !3    ; 2 uses
  %i.f = add nsw i32 %i.e, -1
  store i32 %i.f, ptr %i.c, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.g = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.e, %bb.c ], [ %i.g, %bb.d ]
  %i.h = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.h, label %bb.e, label %_ZN6duckdb4TaskD2Ev.exit

bb.e:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #37, !inline_history !5321
  br label %_ZN6duckdb4TaskD2Ev.exit

_ZN6duckdb4TaskD2Ev.exit:                         ; preds = %bb.a, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.e
  tail call void @_ZdlPv(ptr noundef nonnull %0) #39
  ret void
}

declare noundef zeroext i8 @_ZN6duckdb16BaseExecutorTask7ExecuteENS_17TaskExecutionModeE(ptr noundef nonnull align 8 dereferenceable(40), i8 noundef zeroext) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb4Task10DescheduleEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr %i.c, ptr %1, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i64 41, ptr %i.a, align 8, !tbaa !24
  %i.d = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.d, ptr %1, align 8, !tbaa !35
  %i.e = load i64, ptr %i.a, align 8, !tbaa !24   ; 3 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !98
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(41) %i.d, ptr noundef nonnull align 1 dereferenceable(41) @.str.210, i64 41, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.e, ptr %i.f, align 8, !tbaa !117
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e
  store i8 0, ptr %i.g, align 1, !tbaa !98
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %.noexc
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #40
          to label %bb.e unwind label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.noexc.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br label %bb.c

bb.b:                                             ; preds = %bb.a, %.noexc
  %.0 = phi i1 [ false, %bb.a ], [ true, %.noexc ] ; 2 uses
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !35     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.c
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  call void @_ZdlPv(ptr noundef %i.j) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br i1 %.0, label %bb.c, label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br i1 %.0, label %bb.c, label %bb.d

end_hunk_2
