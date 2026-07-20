inline.NumInlined: 9971
inline.NumDeleted: 4725
loop-unroll.NumCompletelyUnrolled: 55
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 92
begin_hunk_0_@_ZN6duckdb25StandardColumnWriterStateIaiNS_19ParquetCastOperatorEEC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm:bb.a
  %i.x = invoke noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.g unwind label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.z = load i64, ptr %i.y, align 8, !tbaa !752
  %i.aa = invoke noundef i64 @_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl(i64 noundef %i.z)
          to label %_ZN6duckdb11NumericCastImlvEET_T0_.exit unwind label %bb.j

_ZN6duckdb11NumericCastImlvEET_T0_.exit:          ; preds = %bb.f
  %i.ab = udiv i64 %i.aa, 5
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %_ZN6duckdb11NumericCastImlvEET_T0_.exit
  %i.ac = phi i64 [ %i.ab, %_ZN6duckdb11NumericCastImlvEET_T0_.exit ], [ %i.x, %bb.e ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !765
  invoke void @_ZN6duckdb19PrimitiveDictionaryIaiNS_19ParquetCastOperatorEEC2ERNS_9AllocatorEmm(ptr noundef nonnull align 8 dereferenceable(153) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 noundef %i.ac, i64 noundef %i.ae)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i32 0, ptr %i.af, align 8, !tbaa !583
  ret void

bb.i:                                             ; preds = %_ZN6duckdb26PrimitiveColumnWriterStateC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.f, %bb.g, %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.j ], [ %i.ag, %bb.i ]
  call void @_ZN6duckdb26PrimitiveColumnWriterStateD2Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) #25
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !412    ; 2 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.33, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !22     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.f) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn10 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.c) #25
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret i64 %i.a

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn9 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn10, %bb.f ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn9

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb19PrimitiveDictionaryIaiNS_19ParquetCastOperatorEEC2ERNS_9AllocatorEmm(ptr noundef nonnull align 8 dereferenceable(153) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !766
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.a, align 8, !tbaa !767
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 0, ptr %i.b, align 8, !tbaa !667
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = shl i64 %2, 1
  %i.e = tail call noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.d) ; 3 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !739
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = add i64 %i.e, -1
  store i64 %i.g, ptr %i.f, align 8, !tbaa !768
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %3, ptr %i.h, align 8, !tbaa !769
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !770, !nonnull !78, !align !79 ; 2 uses
  %i.k = shl i64 %i.e, 3                          ; 2 uses
  %i.l = tail call noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 noundef %i.k), !noalias !771
  tail call void @_ZN6duckdb13AllocatedDataC1ERNS_9AllocatorEPhm(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef %i.l, i64 noundef %i.k)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !770, !nonnull !78, !align !79 ; 2 uses
  %i.o = load i64, ptr %i.c, align 8, !tbaa !739
  %i.p = shl i64 %i.o, 2                          ; 2 uses
  %i.q = invoke noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 noundef %i.p)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.a
  invoke void @_ZN6duckdb13AllocatedDataC1ERNS_9AllocatorEPhm(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef %i.q, i64 noundef %i.p)
          to label %_ZN6duckdb9Allocator8AllocateEm.exit unwind label %bb.c

_ZN6duckdb9Allocator8AllocateEm.exit:             ; preds = %.noexc
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !197
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.v = load i64, ptr %i.u, align 8, !tbaa !774
  invoke void @_ZN6duckdb12MemoryStreamC1EPhm(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef %i.t, i64 noundef %i.v)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN6duckdb9Allocator8AllocateEm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !197  ; 10 uses
  store ptr %i.y, ptr %i.w, align 8, !tbaa !740
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  store i8 0, ptr %i.z, align 8, !tbaa !668
  %i.aa = load i64, ptr %i.c, align 8, !tbaa !739 ; 4 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZN6duckdb19PrimitiveDictionaryIaiNS_19ParquetCastOperatorEE5ClearEv.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %xtraiter = and i64 %i.aa, 7                    ; 3 uses
  %i.ab = icmp ult i64 %i.aa, 8
  br i1 %i.ab, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.aa, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.03.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.as, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.03.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store i32 -1, ptr %i.ad, align 4, !tbaa !741
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.03.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store i32 -1, ptr %i.af, align 4, !tbaa !741
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.03.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  store i32 -1, ptr %i.ah, align 4, !tbaa !741
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.03.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 28
  store i32 -1, ptr %i.aj, align 4, !tbaa !741
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.03.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 36
  store i32 -1, ptr %i.al, align 4, !tbaa !741
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.03.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 44
  store i32 -1, ptr %i.an, align 4, !tbaa !741
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.03.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 52
  store i32 -1, ptr %i.ap, align 4, !tbaa !741
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.03.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 60
  store i32 -1, ptr %i.ar, align 4, !tbaa !741
  %i.as = add nuw i64 %.03.i, 8                   ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN6duckdb19PrimitiveDictionaryIaiNS_19ParquetCastOperatorEE5ClearEv.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !775

_ZN6duckdb19PrimitiveDictionaryIaiNS_19ParquetCastOperatorEE5ClearEv.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb19PrimitiveDictionaryIaiNS_19ParquetCastOperatorEE5ClearEv.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN6duckdb19PrimitiveDictionaryIaiNS_19ParquetCastOperatorEE5ClearEv.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.03.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.as, %_ZN6duckdb19PrimitiveDictionaryIaiNS_19ParquetCastOperatorEE5ClearEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod8 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod8)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.03.i.epil = phi i64 [ %i.av, %.lr.ph.i.epil ], [ %.03.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.03.i.epil
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  store i32 -1, ptr %i.au, align 4, !tbaa !741
  %i.av = add nuw i64 %.03.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN6duckdb19PrimitiveDictionaryIaiNS_19ParquetCastOperatorEE5ClearEv.exit, label %.lr.ph.i.epil, !llvm.loop !776

_ZN6duckdb19PrimitiveDictionaryIaiNS_19ParquetCastOperatorEE5ClearEv.exit: ; preds = %_ZN6duckdb19PrimitiveDictionaryIaiNS_19ParquetCastOperatorEE5ClearEv.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.b
  store i32 0, ptr %i.b, align 8, !tbaa !667
  store i8 0, ptr %i.z, align 8, !tbaa !668
  ret void

bb.c:                                             ; preds = %.noexc, %bb.a
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %_ZN6duckdb9Allocator8AllocateEm.exit
  %i.ax = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.m) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.ax, %bb.d ], [ %i.aw, %bb.c ]
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.i) #25
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6duckdb25StandardColumnWriterStateIaiNS_19ParquetCastOperatorEED2Ev(ptr noundef nonnull align 8 dereferenceable(380) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb25StandardColumnWriterStateIaiNS_19ParquetCastOperatorEEE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  tail call void @_ZN6duckdb12MemoryStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #25
  tail call void @_ZN6duckdb26PrimitiveColumnWriterStateD2Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6duckdb25StandardColumnWriterStateIaiNS_19ParquetCastOperatorEED0Ev(ptr noundef nonnull align 8 dereferenceable(380) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb25StandardColumnWriterStateIaiNS_19ParquetCastOperatorEEE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  tail call void @_ZN6duckdb12MemoryStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #25, !inline_history !778
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #25, !inline_history !778
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #25, !inline_history !778
  tail call void @_ZN6duckdb26PrimitiveColumnWriterStateD2Ev(ptr noundef nonnull align 8 dereferenceable(380) %0) #25, !inline_history !778
  tail call void @_ZdlPv(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10unique_ptrIN6duckdb18ParquetBloomFilterESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !730    ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !731  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNKSt14default_deleteIN6duckdb18ParquetBloomFilterEEclEPS1_.exit, label %_ZNKSt14default_deleteIN6duckdb16ResizeableBufferEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN6duckdb16ResizeableBufferEEclEPS1_.exit.i.i.i: ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #25
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #24
  br label %_ZNKSt14default_deleteIN6duckdb18ParquetBloomFilterEEclEPS1_.exit

_ZNKSt14default_deleteIN6duckdb18ParquetBloomFilterEEclEPS1_.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIN6duckdb16ResizeableBufferEEclEPS1_.exit.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #24
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt14default_deleteIN6duckdb18ParquetBloomFilterEEclEPS1_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6duckdb20PageWriteInformationESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !779    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !780  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6duckdb20PageWriteInformationES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN6duckdb20PageWriteInformationEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.o, %_ZSt8_DestroyIN6duckdb20PageWriteInformationEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 520
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.d) #25
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 472
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !781  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb21ColumnWriterPageStateESt14default_deleteIS1_EED2Ev.exit.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb21ColumnWriterPageStateEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb21ColumnWriterPageStateEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.f) #25, !inline_history !782
  br label %_ZNSt10unique_ptrIN6duckdb21ColumnWriterPageStateESt14default_deleteIS1_EED2Ev.exit.i.i.i.i

_ZNSt10unique_ptrIN6duckdb21ColumnWriterPageStateESt14default_deleteIS1_EED2Ev.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb21ColumnWriterPageStateEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 464
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !715  ; 3 uses
  %.not.i1.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i1.i.i.i.i, label %_ZSt8_DestroyIN6duckdb20PageWriteInformationEEvPT_.exit.i.i, label %_ZNKSt14default_deleteIN6duckdb12MemoryStreamEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb12MemoryStreamEEclEPS1_.exit.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6duckdb21ColumnWriterPageStateESt14default_deleteIS1_EED2Ev.exit.i.i.i.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(48) %i.k) #25, !inline_history !783
  br label %_ZSt8_DestroyIN6duckdb20PageWriteInformationEEvPT_.exit.i.i

_ZSt8_DestroyIN6duckdb20PageWriteInformationEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb12MemoryStreamEEclEPS1_.exit.i.i.i.i.i, %_ZNSt10unique_ptrIN6duckdb21ColumnWriterPageStateESt14default_deleteIS1_EED2Ev.exit.i.i.i.i
  tail call void @_ZN14duckdb_parquet10PageHeaderD1Ev(ptr noundef nonnull align 8 dereferenceable(544) %.05.i.i) #25
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 544 ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6duckdb20PageWriteInformationES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !784

_ZSt8_DestroyIPN6duckdb20PageWriteInformationES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN6duckdb20PageWriteInformationEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !779
  br label %_ZSt8_DestroyIPN6duckdb20PageWriteInformationES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN6duckdb20PageWriteInformationES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN6duckdb20PageWriteInformationES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.p = phi ptr [ %.pr, %_ZSt8_DestroyIPN6duckdb20PageWriteInformationES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.p, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN6duckdb20PageWriteInformationESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6duckdb20PageWriteInformationES1_EvT_S3_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.p) #24
  br label %_ZNSt12_Vector_baseIN6duckdb20PageWriteInformationESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN6duckdb20PageWriteInformationESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb20PageWriteInformationES1_EvT_S3_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6duckdb26PrimitiveColumnWriterStateD2Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb26PrimitiveColumnWriterStateE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !730  ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb18ParquetBloomFilterESt14default_deleteIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !731  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb18ParquetBloomFilterEEclEPS1_.exit.i, label %_ZNKSt14default_deleteIN6duckdb16ResizeableBufferEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN6duckdb16ResizeableBufferEEclEPS1_.exit.i.i.i.i: ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.d) #25
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #24
  br label %_ZNKSt14default_deleteIN6duckdb18ParquetBloomFilterEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb18ParquetBloomFilterEEclEPS1_.exit.i: ; preds = %_ZNKSt14default_deleteIN6duckdb16ResizeableBufferEEclEPS1_.exit.i.i.i.i, %bb.b
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #24
  br label %_ZNSt10unique_ptrIN6duckdb18ParquetBloomFilterESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb18ParquetBloomFilterESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN6duckdb18ParquetBloomFilterEEclEPS1_.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !724  ; 3 uses
  %.not.i1 = icmp eq ptr %i.f, null
  br i1 %.not.i1, label %_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb22ColumnWriterStatisticsEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb22ColumnWriterStatisticsEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb18ParquetBloomFilterESt14default_deleteIS1_EED2Ev.exit
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.f) #25, !inline_history !785
  br label %_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb18ParquetBloomFilterESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb22ColumnWriterStatisticsEEclEPS1_.exit.i
end_hunk_0
begin_hunk_1_@_ZN6duckdb25StandardColumnWriterStateIsiNS_19ParquetCastOperatorEEC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm:bb.a
  store i64 %3, ptr %i.d, align 8, !tbaa !747
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, i8 0, i64 72, i1 false)
  %i.g = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #28
          to label %_ZN6duckdb26PrimitiveColumnWriterStateC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm.exit unwind label %bb.b ; 3 uses

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @_ZNSt10unique_ptrIN6duckdb18ParquetBloomFilterESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #25
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !724  ; 3 uses
  %.not.i6.i = icmp eq ptr %i.k, null
  br i1 %.not.i6.i, label %_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN6duckdb22ColumnWriterStatisticsEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb22ColumnWriterStatisticsEEclEPS1_.exit.i.i: ; preds = %bb.b
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.k) #25, !inline_history !748
  br label %_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN6duckdb22ColumnWriterStatisticsEEclEPS1_.exit.i.i, %bb.b
  tail call void @_ZNSt6vectorIN6duckdb20PageWriteInformationESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #25
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !749  ; 2 uses
  %.not.i.i.i7.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i7.i, label %_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.o) #24
  br label %_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i

common.resume:                                    ; preds = %bb.k, %_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.h, %_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i ], [ %.pn, %bb.k ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i: ; preds = %bb.c, %_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i
  tail call void @_ZN6duckdb17ColumnWriterStateD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(192) %0) #25
  br label %common.resume

_ZN6duckdb26PrimitiveColumnWriterStateC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm.exit: ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !749
  store ptr %i.r, ptr %i.q, align 8, !tbaa !750
  store ptr %i.r, ptr %i.p, align 8, !tbaa !751
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb25StandardColumnWriterStateIsiNS_19ParquetCastOperatorEEE, i64 16), ptr %0, align 8, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.s, i8 0, i64 20, i1 false)
  %i.u = load ptr, ptr %1, align 8, !tbaa !193, !nonnull !78, !align !79
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb15BufferAllocator3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %i.u)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %_ZN6duckdb26PrimitiveColumnWriterStateC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.sroa.0.0.copyload.i = load i64, ptr %i.w, align 8, !tbaa !191 ; 2 uses
  %.not = icmp eq i64 %.sroa.0.0.copyload.i, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %.sroa.0.0.copyload.i, ptr %4, align 8
  %i.x = invoke noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.g unwind label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.z = load i64, ptr %i.y, align 8, !tbaa !752
  %i.aa = invoke noundef i64 @_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl(i64 noundef %i.z)
          to label %_ZN6duckdb11NumericCastImlvEET_T0_.exit unwind label %bb.j

_ZN6duckdb11NumericCastImlvEET_T0_.exit:          ; preds = %bb.f
  %i.ab = udiv i64 %i.aa, 5
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %_ZN6duckdb11NumericCastImlvEET_T0_.exit
  %i.ac = phi i64 [ %i.ab, %_ZN6duckdb11NumericCastImlvEET_T0_.exit ], [ %i.x, %bb.e ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !765
  invoke void @_ZN6duckdb19PrimitiveDictionaryIsiNS_19ParquetCastOperatorEEC2ERNS_9AllocatorEmm(ptr noundef nonnull align 8 dereferenceable(153) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 noundef %i.ac, i64 noundef %i.ae)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i32 0, ptr %i.af, align 8, !tbaa !875
  ret void

bb.i:                                             ; preds = %_ZN6duckdb26PrimitiveColumnWriterStateC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.f, %bb.g, %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.j ], [ %i.ag, %bb.i ]
  call void @_ZN6duckdb26PrimitiveColumnWriterStateD2Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) #25
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb19PrimitiveDictionaryIsiNS_19ParquetCastOperatorEEC2ERNS_9AllocatorEmm(ptr noundef nonnull align 8 dereferenceable(153) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !766
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.a, align 8, !tbaa !920
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 0, ptr %i.b, align 8, !tbaa !883
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = shl i64 %2, 1
  %i.e = tail call noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.d) ; 3 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !914
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = add i64 %i.e, -1
  store i64 %i.g, ptr %i.f, align 8, !tbaa !921
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %3, ptr %i.h, align 8, !tbaa !922
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !923, !nonnull !78, !align !79 ; 2 uses
  %i.k = shl i64 %i.e, 3                          ; 2 uses
  %i.l = tail call noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 noundef %i.k), !noalias !924
  tail call void @_ZN6duckdb13AllocatedDataC1ERNS_9AllocatorEPhm(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef %i.l, i64 noundef %i.k)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !923, !nonnull !78, !align !79 ; 2 uses
  %i.o = load i64, ptr %i.c, align 8, !tbaa !914
  %i.p = shl i64 %i.o, 2                          ; 2 uses
  %i.q = invoke noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 noundef %i.p)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.a
  invoke void @_ZN6duckdb13AllocatedDataC1ERNS_9AllocatorEPhm(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef %i.q, i64 noundef %i.p)
          to label %_ZN6duckdb9Allocator8AllocateEm.exit unwind label %bb.c

_ZN6duckdb9Allocator8AllocateEm.exit:             ; preds = %.noexc
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !197
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.v = load i64, ptr %i.u, align 8, !tbaa !774
  invoke void @_ZN6duckdb12MemoryStreamC1EPhm(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef %i.t, i64 noundef %i.v)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN6duckdb9Allocator8AllocateEm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !197  ; 10 uses
  store ptr %i.y, ptr %i.w, align 8, !tbaa !915
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  store i8 0, ptr %i.z, align 8, !tbaa !884
  %i.aa = load i64, ptr %i.c, align 8, !tbaa !914 ; 4 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZN6duckdb19PrimitiveDictionaryIsiNS_19ParquetCastOperatorEE5ClearEv.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %xtraiter = and i64 %i.aa, 7                    ; 3 uses
  %i.ab = icmp ult i64 %i.aa, 8
  br i1 %i.ab, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.aa, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.03.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.as, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.03.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store i32 -1, ptr %i.ad, align 4, !tbaa !916
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.03.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store i32 -1, ptr %i.af, align 4, !tbaa !916
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.03.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  store i32 -1, ptr %i.ah, align 4, !tbaa !916
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.03.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 28
  store i32 -1, ptr %i.aj, align 4, !tbaa !916
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.03.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 36
  store i32 -1, ptr %i.al, align 4, !tbaa !916
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.03.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 44
  store i32 -1, ptr %i.an, align 4, !tbaa !916
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.03.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 52
  store i32 -1, ptr %i.ap, align 4, !tbaa !916
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.03.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 60
  store i32 -1, ptr %i.ar, align 4, !tbaa !916
  %i.as = add nuw i64 %.03.i, 8                   ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN6duckdb19PrimitiveDictionaryIsiNS_19ParquetCastOperatorEE5ClearEv.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !927

_ZN6duckdb19PrimitiveDictionaryIsiNS_19ParquetCastOperatorEE5ClearEv.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb19PrimitiveDictionaryIsiNS_19ParquetCastOperatorEE5ClearEv.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN6duckdb19PrimitiveDictionaryIsiNS_19ParquetCastOperatorEE5ClearEv.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.03.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.as, %_ZN6duckdb19PrimitiveDictionaryIsiNS_19ParquetCastOperatorEE5ClearEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod8 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod8)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.03.i.epil = phi i64 [ %i.av, %.lr.ph.i.epil ], [ %.03.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.03.i.epil
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  store i32 -1, ptr %i.au, align 4, !tbaa !916
  %i.av = add nuw i64 %.03.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN6duckdb19PrimitiveDictionaryIsiNS_19ParquetCastOperatorEE5ClearEv.exit, label %.lr.ph.i.epil, !llvm.loop !928

_ZN6duckdb19PrimitiveDictionaryIsiNS_19ParquetCastOperatorEE5ClearEv.exit: ; preds = %_ZN6duckdb19PrimitiveDictionaryIsiNS_19ParquetCastOperatorEE5ClearEv.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.b
  store i32 0, ptr %i.b, align 8, !tbaa !883
  store i8 0, ptr %i.z, align 8, !tbaa !884
  ret void

bb.c:                                             ; preds = %.noexc, %bb.a
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %_ZN6duckdb9Allocator8AllocateEm.exit
  %i.ax = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.m) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.ax, %bb.d ], [ %i.aw, %bb.c ]
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.i) #25
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6duckdb25StandardColumnWriterStateIsiNS_19ParquetCastOperatorEED2Ev(ptr noundef nonnull align 8 dereferenceable(380) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb25StandardColumnWriterStateIsiNS_19ParquetCastOperatorEEE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  tail call void @_ZN6duckdb12MemoryStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #25
  tail call void @_ZN6duckdb26PrimitiveColumnWriterStateD2Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6duckdb25StandardColumnWriterStateIsiNS_19ParquetCastOperatorEED0Ev(ptr noundef nonnull align 8 dereferenceable(380) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb25StandardColumnWriterStateIsiNS_19ParquetCastOperatorEEE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  tail call void @_ZN6duckdb12MemoryStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #25, !inline_history !929
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #25, !inline_history !929
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #25, !inline_history !929
  tail call void @_ZN6duckdb26PrimitiveColumnWriterStateD2Ev(ptr noundef nonnull align 8 dereferenceable(380) %0) #25, !inline_history !929
  tail call void @_ZdlPv(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb19PrimitiveDictionaryIsiNS_19ParquetCastOperatorEE6InsertILb1EEEvs(ptr noundef nonnull align 8 dereferenceable(153) %0, i16 noundef signext %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !884, !range !250, !noundef !78
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_ZNK6duckdb19PrimitiveDictionaryIsiNS_19ParquetCastOperatorEE6LookupERKs.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sext i16 %1 to i64
  %i.f = and i64 %i.e, 4294967295
  %i.g = mul i64 %i.f, -2960836687051489901       ; 2 uses
  %i.h = lshr i64 %i.g, 32
  %i.i = xor i64 %i.h, %i.g
  %i.j = mul i64 %i.i, -2960836687051489901       ; 2 uses
  %i.k = lshr i64 %i.j, 32
  %i.l = xor i64 %i.k, %i.j
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load i64, ptr %i.m, align 8, !tbaa !921  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !915  ; 2 uses
  %.07.i = and i64 %i.n, %i.l                     ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.07.i ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !916
  %i.t = icmp eq i32 %i.s, -1
  br i1 %i.t, label %.loopexit, label %.lr.ph.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.u = add i64 %.08.i, 1
  %.0.i = and i64 %i.u, %i.n                      ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.0.i ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !916
  %i.y = icmp eq i32 %i.x, -1
  br i1 %i.y, label %.loopexit, label %.lr.ph.i, !llvm.loop !930

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.z = phi ptr [ %i.v, %bb.c ], [ %i.q, %bb.b ]
  %.08.i = phi i64 [ %.0.i, %bb.c ], [ %.07.i, %bb.b ]
  %i.aa = load i16, ptr %i.z, align 4, !tbaa !931
  %.not.i.not = icmp eq i16 %i.aa, %1
  br i1 %.not.i.not, label %_ZNK6duckdb19PrimitiveDictionaryIsiNS_19ParquetCastOperatorEE6LookupERKs.exit, label %bb.c

.loopexit:                                        ; preds = %bb.c, %bb.b
  %.lcssa.i.ph = phi ptr [ %i.q, %bb.b ], [ %i.v, %bb.c ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.lcssa.i.ph, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !883
  %i.ae = add i32 %i.ad, 1
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !920
  %i.ai = icmp ult i64 %i.ah, %i.af
  br i1 %i.ai, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.aj = sext i16 %1 to i32
  store i32 %i.aj, ptr %i.a, align 4, !tbaa !3
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.al = tail call noundef i64 @_ZNK6duckdb12MemoryStream11GetPositionEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ak)
  %i.am = add i64 %i.al, 4
  %i.an = tail call noundef i64 @_ZNK6duckdb12MemoryStream11GetCapacityEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ak)
  %.not = icmp ugt i64 %i.am, %i.an
  br i1 %.not, label %_ZN6duckdb19PrimitiveDictionaryIsiNS_19ParquetCastOperatorEE11AddToTargetIsTnNSt9enable_ifIXntsr3std7is_sameIT_NS_8string_tEEE5valueEiE4typeELi0EEEbRKs.exit, label %bb.f

_ZN6duckdb19PrimitiveDictionaryIsiNS_19ParquetCastOperatorEE11AddToTargetIsTnNSt9enable_ifIXntsr3std7is_sameIT_NS_8string_tEEE5valueEiE4typeELi0EEEbRKs.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb19PrimitiveDictionaryIsiNS_19ParquetCastOperatorEE11AddToTargetIsTnNSt9enable_ifIXntsr3std7is_sameIT_NS_8string_tEEE5valueEiE4typeELi0EEEbRKs.exit, %.loopexit
  store i8 1, ptr %i.b, align 8, !tbaa !884
  br label %_ZNK6duckdb19PrimitiveDictionaryIsiNS_19ParquetCastOperatorEE6LookupERKs.exit

bb.f:                                             ; preds = %bb.d
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !15
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i64 noundef 4), !inline_history !932
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  store i16 %1, ptr %.lcssa.i.ph, align 4, !tbaa !931
  %i.aq = load i32, ptr %i.ac, align 8, !tbaa !883 ; 2 uses
  %i.ar = add i32 %i.aq, 1
  store i32 %i.ar, ptr %i.ac, align 8, !tbaa !883
  store i32 %i.aq, ptr %i.ab, align 4, !tbaa !916
  br label %_ZNK6duckdb19PrimitiveDictionaryIsiNS_19ParquetCastOperatorEE6LookupERKs.exit

_ZNK6duckdb19PrimitiveDictionaryIsiNS_19ParquetCastOperatorEE6LookupERKs.exit: ; preds = %.lr.ph.i, %bb.e, %bb.f, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIsEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !394
  %i.e = icmp eq i8 %i.d, 5
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.35, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 5, ptr %i.a, align 1, !tbaa !797
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.g = load i8, ptr %i.c, align 1, !tbaa !394
  store i8 %i.g, ptr %i.b, align 1, !tbaa !797
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
end_hunk_1
begin_hunk_2_@_ZN6duckdb25StandardColumnWriterStateIiiNS_19ParquetCastOperatorEEC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm:bb.a
  store i64 %3, ptr %i.d, align 8, !tbaa !747
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, i8 0, i64 72, i1 false)
  %i.g = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #28
          to label %_ZN6duckdb26PrimitiveColumnWriterStateC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm.exit unwind label %bb.b ; 3 uses

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @_ZNSt10unique_ptrIN6duckdb18ParquetBloomFilterESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #25
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !724  ; 3 uses
  %.not.i6.i = icmp eq ptr %i.k, null
  br i1 %.not.i6.i, label %_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN6duckdb22ColumnWriterStatisticsEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb22ColumnWriterStatisticsEEclEPS1_.exit.i.i: ; preds = %bb.b
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.k) #25, !inline_history !748
  br label %_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN6duckdb22ColumnWriterStatisticsEEclEPS1_.exit.i.i, %bb.b
  tail call void @_ZNSt6vectorIN6duckdb20PageWriteInformationESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #25
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !749  ; 2 uses
  %.not.i.i.i7.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i7.i, label %_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.o) #24
  br label %_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i

common.resume:                                    ; preds = %bb.k, %_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.h, %_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i ], [ %.pn, %bb.k ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i: ; preds = %bb.c, %_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i
  tail call void @_ZN6duckdb17ColumnWriterStateD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(192) %0) #25
  br label %common.resume

_ZN6duckdb26PrimitiveColumnWriterStateC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm.exit: ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !749
  store ptr %i.r, ptr %i.q, align 8, !tbaa !750
  store ptr %i.r, ptr %i.p, align 8, !tbaa !751
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb25StandardColumnWriterStateIiiNS_19ParquetCastOperatorEEE, i64 16), ptr %0, align 8, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.s, i8 0, i64 20, i1 false)
  %i.u = load ptr, ptr %1, align 8, !tbaa !193, !nonnull !78, !align !79
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb15BufferAllocator3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %i.u)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %_ZN6duckdb26PrimitiveColumnWriterStateC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.sroa.0.0.copyload.i = load i64, ptr %i.w, align 8, !tbaa !191 ; 2 uses
  %.not = icmp eq i64 %.sroa.0.0.copyload.i, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %.sroa.0.0.copyload.i, ptr %4, align 8
  %i.x = invoke noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.g unwind label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.z = load i64, ptr %i.y, align 8, !tbaa !752
  %i.aa = invoke noundef i64 @_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl(i64 noundef %i.z)
          to label %_ZN6duckdb11NumericCastImlvEET_T0_.exit unwind label %bb.j

_ZN6duckdb11NumericCastImlvEET_T0_.exit:          ; preds = %bb.f
  %i.ab = udiv i64 %i.aa, 5
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %_ZN6duckdb11NumericCastImlvEET_T0_.exit
  %i.ac = phi i64 [ %i.ab, %_ZN6duckdb11NumericCastImlvEET_T0_.exit ], [ %i.x, %bb.e ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !765
  invoke void @_ZN6duckdb19PrimitiveDictionaryIiiNS_19ParquetCastOperatorEEC2ERNS_9AllocatorEmm(ptr noundef nonnull align 8 dereferenceable(153) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 noundef %i.ac, i64 noundef %i.ae)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i32 0, ptr %i.af, align 8, !tbaa !973
  ret void

bb.i:                                             ; preds = %_ZN6duckdb26PrimitiveColumnWriterStateC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.f, %bb.g, %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.j ], [ %i.ag, %bb.i ]
  call void @_ZN6duckdb26PrimitiveColumnWriterStateD2Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) #25
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb19PrimitiveDictionaryIiiNS_19ParquetCastOperatorEEC2ERNS_9AllocatorEmm(ptr noundef nonnull align 8 dereferenceable(153) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !766
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.a, align 8, !tbaa !1018
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 0, ptr %i.b, align 8, !tbaa !981
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = shl i64 %2, 1
  %i.e = tail call noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.d) ; 3 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !1012
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = add i64 %i.e, -1
  store i64 %i.g, ptr %i.f, align 8, !tbaa !1019
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %3, ptr %i.h, align 8, !tbaa !1020
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !1021, !nonnull !78, !align !79 ; 2 uses
  %i.k = shl i64 %i.e, 3                          ; 2 uses
  %i.l = tail call noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 noundef %i.k), !noalias !1022
  tail call void @_ZN6duckdb13AllocatedDataC1ERNS_9AllocatorEPhm(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef %i.l, i64 noundef %i.k)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !1021, !nonnull !78, !align !79 ; 2 uses
  %i.o = load i64, ptr %i.c, align 8, !tbaa !1012
  %i.p = shl i64 %i.o, 2                          ; 2 uses
  %i.q = invoke noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 noundef %i.p)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.a
  invoke void @_ZN6duckdb13AllocatedDataC1ERNS_9AllocatorEPhm(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef %i.q, i64 noundef %i.p)
          to label %_ZN6duckdb9Allocator8AllocateEm.exit unwind label %bb.c

_ZN6duckdb9Allocator8AllocateEm.exit:             ; preds = %.noexc
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !197
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.v = load i64, ptr %i.u, align 8, !tbaa !774
  invoke void @_ZN6duckdb12MemoryStreamC1EPhm(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef %i.t, i64 noundef %i.v)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN6duckdb9Allocator8AllocateEm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !197  ; 10 uses
  store ptr %i.y, ptr %i.w, align 8, !tbaa !1013
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  store i8 0, ptr %i.z, align 8, !tbaa !982
  %i.aa = load i64, ptr %i.c, align 8, !tbaa !1012 ; 4 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZN6duckdb19PrimitiveDictionaryIiiNS_19ParquetCastOperatorEE5ClearEv.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %xtraiter = and i64 %i.aa, 7                    ; 3 uses
  %i.ab = icmp ult i64 %i.aa, 8
  br i1 %i.ab, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.aa, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.03.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.as, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.03.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store i32 -1, ptr %i.ad, align 4, !tbaa !1014
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.03.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store i32 -1, ptr %i.af, align 4, !tbaa !1014
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.03.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  store i32 -1, ptr %i.ah, align 4, !tbaa !1014
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.03.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 28
  store i32 -1, ptr %i.aj, align 4, !tbaa !1014
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.03.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 36
  store i32 -1, ptr %i.al, align 4, !tbaa !1014
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.03.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 44
  store i32 -1, ptr %i.an, align 4, !tbaa !1014
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.03.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 52
  store i32 -1, ptr %i.ap, align 4, !tbaa !1014
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.03.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 60
  store i32 -1, ptr %i.ar, align 4, !tbaa !1014
  %i.as = add nuw i64 %.03.i, 8                   ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN6duckdb19PrimitiveDictionaryIiiNS_19ParquetCastOperatorEE5ClearEv.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !1025

_ZN6duckdb19PrimitiveDictionaryIiiNS_19ParquetCastOperatorEE5ClearEv.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb19PrimitiveDictionaryIiiNS_19ParquetCastOperatorEE5ClearEv.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN6duckdb19PrimitiveDictionaryIiiNS_19ParquetCastOperatorEE5ClearEv.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.03.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.as, %_ZN6duckdb19PrimitiveDictionaryIiiNS_19ParquetCastOperatorEE5ClearEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod8 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod8)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.03.i.epil = phi i64 [ %i.av, %.lr.ph.i.epil ], [ %.03.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.03.i.epil
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  store i32 -1, ptr %i.au, align 4, !tbaa !1014
  %i.av = add nuw i64 %.03.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN6duckdb19PrimitiveDictionaryIiiNS_19ParquetCastOperatorEE5ClearEv.exit, label %.lr.ph.i.epil, !llvm.loop !1026

_ZN6duckdb19PrimitiveDictionaryIiiNS_19ParquetCastOperatorEE5ClearEv.exit: ; preds = %_ZN6duckdb19PrimitiveDictionaryIiiNS_19ParquetCastOperatorEE5ClearEv.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.b
  store i32 0, ptr %i.b, align 8, !tbaa !981
  store i8 0, ptr %i.z, align 8, !tbaa !982
  ret void

bb.c:                                             ; preds = %.noexc, %bb.a
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %_ZN6duckdb9Allocator8AllocateEm.exit
  %i.ax = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.m) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.ax, %bb.d ], [ %i.aw, %bb.c ]
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.i) #25
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6duckdb25StandardColumnWriterStateIiiNS_19ParquetCastOperatorEED2Ev(ptr noundef nonnull align 8 dereferenceable(380) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb25StandardColumnWriterStateIiiNS_19ParquetCastOperatorEEE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  tail call void @_ZN6duckdb12MemoryStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #25
  tail call void @_ZN6duckdb26PrimitiveColumnWriterStateD2Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6duckdb25StandardColumnWriterStateIiiNS_19ParquetCastOperatorEED0Ev(ptr noundef nonnull align 8 dereferenceable(380) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb25StandardColumnWriterStateIiiNS_19ParquetCastOperatorEEE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  tail call void @_ZN6duckdb12MemoryStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #25, !inline_history !1027
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #25, !inline_history !1027
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #25, !inline_history !1027
  tail call void @_ZN6duckdb26PrimitiveColumnWriterStateD2Ev(ptr noundef nonnull align 8 dereferenceable(380) %0) #25, !inline_history !1027
  tail call void @_ZdlPv(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb19PrimitiveDictionaryIiiNS_19ParquetCastOperatorEE6InsertILb1EEEvi(ptr noundef nonnull align 8 dereferenceable(153) %0, i32 noundef %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !982, !range !250, !noundef !78
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_ZNK6duckdb19PrimitiveDictionaryIiiNS_19ParquetCastOperatorEE6LookupERKi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = zext i32 %1 to i64
  %i.f = mul i64 %i.e, -2960836687051489901       ; 2 uses
  %i.g = lshr i64 %i.f, 32
  %i.h = xor i64 %i.g, %i.f
  %i.i = mul i64 %i.h, -2960836687051489901       ; 2 uses
  %i.j = lshr i64 %i.i, 32
  %i.k = xor i64 %i.j, %i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !1019 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1013 ; 2 uses
  %.07.i = and i64 %i.m, %i.k                     ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.07.i ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !1014
  %i.s = icmp eq i32 %i.r, -1
  br i1 %i.s, label %.loopexit, label %.lr.ph.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.t = add i64 %.08.i, 1
  %.0.i = and i64 %i.t, %i.m                      ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.0.i ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !1014
  %i.x = icmp eq i32 %i.w, -1
  br i1 %i.x, label %.loopexit, label %.lr.ph.i, !llvm.loop !1028

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.y = phi ptr [ %i.u, %bb.c ], [ %i.p, %bb.b ]
  %.08.i = phi i64 [ %.0.i, %bb.c ], [ %.07.i, %bb.b ]
  %i.z = load i32, ptr %i.y, align 4, !tbaa !1029
  %.not.i.not = icmp eq i32 %i.z, %1
  br i1 %.not.i.not, label %_ZNK6duckdb19PrimitiveDictionaryIiiNS_19ParquetCastOperatorEE6LookupERKi.exit, label %bb.c

.loopexit:                                        ; preds = %bb.c, %bb.b
  %.lcssa.i.ph = phi ptr [ %i.p, %bb.b ], [ %i.u, %bb.c ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.lcssa.i.ph, i64 4
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !981
  %i.ad = add i32 %i.ac, 1
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !1018
  %i.ah = icmp ult i64 %i.ag, %i.ae
  br i1 %i.ah, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 %1, ptr %i.a, align 4, !tbaa !3
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.aj = tail call noundef i64 @_ZNK6duckdb12MemoryStream11GetPositionEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ai)
  %i.ak = add i64 %i.aj, 4
  %i.al = tail call noundef i64 @_ZNK6duckdb12MemoryStream11GetCapacityEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ai)
  %.not = icmp ugt i64 %i.ak, %i.al
  br i1 %.not, label %_ZN6duckdb19PrimitiveDictionaryIiiNS_19ParquetCastOperatorEE11AddToTargetIiTnNSt9enable_ifIXntsr3std7is_sameIT_NS_8string_tEEE5valueEiE4typeELi0EEEbRKi.exit, label %bb.f

_ZN6duckdb19PrimitiveDictionaryIiiNS_19ParquetCastOperatorEE11AddToTargetIiTnNSt9enable_ifIXntsr3std7is_sameIT_NS_8string_tEEE5valueEiE4typeELi0EEEbRKi.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb19PrimitiveDictionaryIiiNS_19ParquetCastOperatorEE11AddToTargetIiTnNSt9enable_ifIXntsr3std7is_sameIT_NS_8string_tEEE5valueEiE4typeELi0EEEbRKi.exit, %.loopexit
  store i8 1, ptr %i.b, align 8, !tbaa !982
  br label %_ZNK6duckdb19PrimitiveDictionaryIiiNS_19ParquetCastOperatorEE6LookupERKi.exit

bb.f:                                             ; preds = %bb.d
  %i.am = load ptr, ptr %i.ai, align 8, !tbaa !15
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i64 noundef 4), !inline_history !1030
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  store i32 %1, ptr %.lcssa.i.ph, align 4, !tbaa !1029
  %i.ao = load i32, ptr %i.ab, align 8, !tbaa !981 ; 2 uses
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.ab, align 8, !tbaa !981
  store i32 %i.ao, ptr %i.aa, align 4, !tbaa !1014
  br label %_ZNK6duckdb19PrimitiveDictionaryIiiNS_19ParquetCastOperatorEE6LookupERKi.exit

_ZNK6duckdb19PrimitiveDictionaryIiiNS_19ParquetCastOperatorEE6LookupERKi.exit: ; preds = %.lr.ph.i, %bb.e, %bb.f, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIiEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !394
  %i.e = icmp eq i8 %i.d, 7
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.35, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 7, ptr %i.a, align 1, !tbaa !797
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.g = load i8, ptr %i.c, align 1, !tbaa !394
  store i8 %i.g, ptr %i.b, align 1, !tbaa !797
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
end_hunk_2
begin_hunk_3_@_ZN6duckdb25StandardColumnWriterStateIllNS_19ParquetCastOperatorEEC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm:bb.a
  store i64 %3, ptr %i.d, align 8, !tbaa !747
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, i8 0, i64 72, i1 false)
  %i.g = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #28
          to label %_ZN6duckdb26PrimitiveColumnWriterStateC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm.exit unwind label %bb.b ; 3 uses

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @_ZNSt10unique_ptrIN6duckdb18ParquetBloomFilterESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #25
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !724  ; 3 uses
  %.not.i6.i = icmp eq ptr %i.k, null
  br i1 %.not.i6.i, label %_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN6duckdb22ColumnWriterStatisticsEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb22ColumnWriterStatisticsEEclEPS1_.exit.i.i: ; preds = %bb.b
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.k) #25, !inline_history !748
  br label %_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN6duckdb22ColumnWriterStatisticsEEclEPS1_.exit.i.i, %bb.b
  tail call void @_ZNSt6vectorIN6duckdb20PageWriteInformationESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #25
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !749  ; 2 uses
  %.not.i.i.i7.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i7.i, label %_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.o) #24
  br label %_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i

common.resume:                                    ; preds = %bb.k, %_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.h, %_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i ], [ %.pn, %bb.k ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i: ; preds = %bb.c, %_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i
  tail call void @_ZN6duckdb17ColumnWriterStateD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(192) %0) #25
  br label %common.resume

_ZN6duckdb26PrimitiveColumnWriterStateC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm.exit: ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !749
  store ptr %i.r, ptr %i.q, align 8, !tbaa !750
  store ptr %i.r, ptr %i.p, align 8, !tbaa !751
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb25StandardColumnWriterStateIllNS_19ParquetCastOperatorEEE, i64 16), ptr %0, align 8, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.s, i8 0, i64 20, i1 false)
  %i.u = load ptr, ptr %1, align 8, !tbaa !193, !nonnull !78, !align !79
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb15BufferAllocator3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %i.u)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %_ZN6duckdb26PrimitiveColumnWriterStateC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.sroa.0.0.copyload.i = load i64, ptr %i.w, align 8, !tbaa !191 ; 2 uses
  %.not = icmp eq i64 %.sroa.0.0.copyload.i, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %.sroa.0.0.copyload.i, ptr %4, align 8
  %i.x = invoke noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.g unwind label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.z = load i64, ptr %i.y, align 8, !tbaa !752
  %i.aa = invoke noundef i64 @_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl(i64 noundef %i.z)
          to label %_ZN6duckdb11NumericCastImlvEET_T0_.exit unwind label %bb.j

_ZN6duckdb11NumericCastImlvEET_T0_.exit:          ; preds = %bb.f
  %i.ab = udiv i64 %i.aa, 5
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %_ZN6duckdb11NumericCastImlvEET_T0_.exit
  %i.ac = phi i64 [ %i.ab, %_ZN6duckdb11NumericCastImlvEET_T0_.exit ], [ %i.x, %bb.e ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !765
  invoke void @_ZN6duckdb19PrimitiveDictionaryIllNS_19ParquetCastOperatorEEC2ERNS_9AllocatorEmm(ptr noundef nonnull align 8 dereferenceable(153) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 noundef %i.ac, i64 noundef %i.ae)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i32 0, ptr %i.af, align 8, !tbaa !1071
  ret void

bb.i:                                             ; preds = %_ZN6duckdb26PrimitiveColumnWriterStateC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.f, %bb.g, %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.j ], [ %i.ag, %bb.i ]
  call void @_ZN6duckdb26PrimitiveColumnWriterStateD2Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) #25
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb19PrimitiveDictionaryIllNS_19ParquetCastOperatorEEC2ERNS_9AllocatorEmm(ptr noundef nonnull align 8 dereferenceable(153) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !766
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.a, align 8, !tbaa !1116
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 0, ptr %i.b, align 8, !tbaa !1079
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = shl i64 %2, 1
  %i.e = tail call noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.d) ; 3 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !1110
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = add i64 %i.e, -1
  store i64 %i.g, ptr %i.f, align 8, !tbaa !1117
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %3, ptr %i.h, align 8, !tbaa !1118
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !1119, !nonnull !78, !align !79 ; 2 uses
  %i.k = shl i64 %i.e, 4                          ; 2 uses
  %i.l = tail call noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 noundef %i.k), !noalias !1120
  tail call void @_ZN6duckdb13AllocatedDataC1ERNS_9AllocatorEPhm(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef %i.l, i64 noundef %i.k)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !1119, !nonnull !78, !align !79 ; 2 uses
  %i.o = load i64, ptr %i.c, align 8, !tbaa !1110
  %i.p = shl i64 %i.o, 3                          ; 2 uses
  %i.q = invoke noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 noundef %i.p)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.a
  invoke void @_ZN6duckdb13AllocatedDataC1ERNS_9AllocatorEPhm(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef %i.q, i64 noundef %i.p)
          to label %_ZN6duckdb9Allocator8AllocateEm.exit unwind label %bb.c

_ZN6duckdb9Allocator8AllocateEm.exit:             ; preds = %.noexc
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !197
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.v = load i64, ptr %i.u, align 8, !tbaa !774
  invoke void @_ZN6duckdb12MemoryStreamC1EPhm(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef %i.t, i64 noundef %i.v)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN6duckdb9Allocator8AllocateEm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !197  ; 10 uses
  store ptr %i.y, ptr %i.w, align 8, !tbaa !1111
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  store i8 0, ptr %i.z, align 8, !tbaa !1080
  %i.aa = load i64, ptr %i.c, align 8, !tbaa !1110 ; 4 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZN6duckdb19PrimitiveDictionaryIllNS_19ParquetCastOperatorEE5ClearEv.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %xtraiter = and i64 %i.aa, 7                    ; 3 uses
  %i.ab = icmp ult i64 %i.aa, 8
  br i1 %i.ab, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.aa, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.03.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.as, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.03.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i32 -1, ptr %i.ad, align 8, !tbaa !1112
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.03.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store i32 -1, ptr %i.af, align 8, !tbaa !1112
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.03.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  store i32 -1, ptr %i.ah, align 8, !tbaa !1112
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.03.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  store i32 -1, ptr %i.aj, align 8, !tbaa !1112
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.03.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 72
  store i32 -1, ptr %i.al, align 8, !tbaa !1112
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.03.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 88
  store i32 -1, ptr %i.an, align 8, !tbaa !1112
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.03.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 104
  store i32 -1, ptr %i.ap, align 8, !tbaa !1112
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.03.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 120
  store i32 -1, ptr %i.ar, align 8, !tbaa !1112
  %i.as = add nuw i64 %.03.i, 8                   ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN6duckdb19PrimitiveDictionaryIllNS_19ParquetCastOperatorEE5ClearEv.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !1123

_ZN6duckdb19PrimitiveDictionaryIllNS_19ParquetCastOperatorEE5ClearEv.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb19PrimitiveDictionaryIllNS_19ParquetCastOperatorEE5ClearEv.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN6duckdb19PrimitiveDictionaryIllNS_19ParquetCastOperatorEE5ClearEv.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.03.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.as, %_ZN6duckdb19PrimitiveDictionaryIllNS_19ParquetCastOperatorEE5ClearEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod8 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod8)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.03.i.epil = phi i64 [ %i.av, %.lr.ph.i.epil ], [ %.03.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.03.i.epil
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i32 -1, ptr %i.au, align 8, !tbaa !1112
  %i.av = add nuw i64 %.03.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN6duckdb19PrimitiveDictionaryIllNS_19ParquetCastOperatorEE5ClearEv.exit, label %.lr.ph.i.epil, !llvm.loop !1124

_ZN6duckdb19PrimitiveDictionaryIllNS_19ParquetCastOperatorEE5ClearEv.exit: ; preds = %_ZN6duckdb19PrimitiveDictionaryIllNS_19ParquetCastOperatorEE5ClearEv.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.b
  store i32 0, ptr %i.b, align 8, !tbaa !1079
  store i8 0, ptr %i.z, align 8, !tbaa !1080
  ret void

bb.c:                                             ; preds = %.noexc, %bb.a
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %_ZN6duckdb9Allocator8AllocateEm.exit
  %i.ax = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.m) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.ax, %bb.d ], [ %i.aw, %bb.c ]
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.i) #25
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6duckdb25StandardColumnWriterStateIllNS_19ParquetCastOperatorEED2Ev(ptr noundef nonnull align 8 dereferenceable(380) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb25StandardColumnWriterStateIllNS_19ParquetCastOperatorEEE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  tail call void @_ZN6duckdb12MemoryStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #25
  tail call void @_ZN6duckdb26PrimitiveColumnWriterStateD2Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6duckdb25StandardColumnWriterStateIllNS_19ParquetCastOperatorEED0Ev(ptr noundef nonnull align 8 dereferenceable(380) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb25StandardColumnWriterStateIllNS_19ParquetCastOperatorEEE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  tail call void @_ZN6duckdb12MemoryStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #25, !inline_history !1125
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #25, !inline_history !1125
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #25, !inline_history !1125
  tail call void @_ZN6duckdb26PrimitiveColumnWriterStateD2Ev(ptr noundef nonnull align 8 dereferenceable(380) %0) #25, !inline_history !1125
  tail call void @_ZdlPv(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb19PrimitiveDictionaryIllNS_19ParquetCastOperatorEE6InsertILb1EEEvl(ptr noundef nonnull align 8 dereferenceable(153) %0, i64 noundef %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !1080, !range !250, !noundef !78
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_ZNK6duckdb19PrimitiveDictionaryIllNS_19ParquetCastOperatorEE6LookupERKl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = lshr i64 %1, 32
  %i.f = xor i64 %i.e, %1
  %i.g = mul i64 %i.f, -2960836687051489901       ; 2 uses
  %i.h = lshr i64 %i.g, 32
  %i.i = xor i64 %i.h, %i.g
  %i.j = mul i64 %i.i, -2960836687051489901       ; 2 uses
  %i.k = lshr i64 %i.j, 32
  %i.l = xor i64 %i.k, %i.j
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load i64, ptr %i.m, align 8, !tbaa !1117 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1111 ; 2 uses
  %.07.i = and i64 %i.n, %i.l                     ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %.07.i ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !1112
  %i.t = icmp eq i32 %i.s, -1
  br i1 %i.t, label %.loopexit, label %.lr.ph.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.u = add i64 %.08.i, 1
  %.0.i = and i64 %i.u, %i.n                      ; 2 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %.0.i ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !1112
  %i.y = icmp eq i32 %i.x, -1
  br i1 %i.y, label %.loopexit, label %.lr.ph.i, !llvm.loop !1126

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.z = phi ptr [ %i.v, %bb.c ], [ %i.q, %bb.b ]
  %.08.i = phi i64 [ %.0.i, %bb.c ], [ %.07.i, %bb.b ]
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !1127
  %.not.i.not = icmp eq i64 %i.aa, %1
  br i1 %.not.i.not, label %_ZNK6duckdb19PrimitiveDictionaryIllNS_19ParquetCastOperatorEE6LookupERKl.exit, label %bb.c

.loopexit:                                        ; preds = %bb.c, %bb.b
  %.lcssa.i.ph = phi ptr [ %i.q, %bb.b ], [ %i.v, %bb.c ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.lcssa.i.ph, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !1079
  %i.ae = add i32 %i.ad, 1
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !1116
  %i.ai = icmp ult i64 %i.ah, %i.af
  br i1 %i.ai, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %1, ptr %i.a, align 8, !tbaa !191
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.ak = tail call noundef i64 @_ZNK6duckdb12MemoryStream11GetPositionEv(ptr noundef nonnull align 8 dereferenceable(48) %i.aj)
  %i.al = add i64 %i.ak, 8
  %i.am = tail call noundef i64 @_ZNK6duckdb12MemoryStream11GetCapacityEv(ptr noundef nonnull align 8 dereferenceable(48) %i.aj)
  %.not = icmp ugt i64 %i.al, %i.am
  br i1 %.not, label %_ZN6duckdb19PrimitiveDictionaryIllNS_19ParquetCastOperatorEE11AddToTargetIlTnNSt9enable_ifIXntsr3std7is_sameIT_NS_8string_tEEE5valueEiE4typeELi0EEEbRKl.exit, label %bb.f

_ZN6duckdb19PrimitiveDictionaryIllNS_19ParquetCastOperatorEE11AddToTargetIlTnNSt9enable_ifIXntsr3std7is_sameIT_NS_8string_tEEE5valueEiE4typeELi0EEEbRKl.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb19PrimitiveDictionaryIllNS_19ParquetCastOperatorEE11AddToTargetIlTnNSt9enable_ifIXntsr3std7is_sameIT_NS_8string_tEEE5valueEiE4typeELi0EEEbRKl.exit, %.loopexit
  store i8 1, ptr %i.b, align 8, !tbaa !1080
  br label %_ZNK6duckdb19PrimitiveDictionaryIllNS_19ParquetCastOperatorEE6LookupERKl.exit

bb.f:                                             ; preds = %bb.d
  %i.an = load ptr, ptr %i.aj, align 8, !tbaa !15
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 8), !inline_history !1128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  store i64 %1, ptr %.lcssa.i.ph, align 8, !tbaa !1127
  %i.ap = load i32, ptr %i.ac, align 8, !tbaa !1079 ; 2 uses
  %i.aq = add i32 %i.ap, 1
  store i32 %i.aq, ptr %i.ac, align 8, !tbaa !1079
  store i32 %i.ap, ptr %i.ab, align 8, !tbaa !1112
  br label %_ZNK6duckdb19PrimitiveDictionaryIllNS_19ParquetCastOperatorEE6LookupERKl.exit

_ZNK6duckdb19PrimitiveDictionaryIllNS_19ParquetCastOperatorEE6LookupERKl.exit: ; preds = %.lr.ph.i, %bb.e, %bb.f, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !394
  %i.e = icmp eq i8 %i.d, 9
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.35, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 9, ptr %i.a, align 1, !tbaa !797
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.g = load i8, ptr %i.c, align 1, !tbaa !394
  store i8 %i.g, ptr %i.b, align 1, !tbaa !797
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
end_hunk_3
begin_hunk_4_@_ZN6duckdb25StandardColumnWriterStateINS_10dtime_tz_tElNS_21ParquetTimeTZOperatorEEC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm:bb.a
  store i64 %3, ptr %i.d, align 8, !tbaa !747
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, i8 0, i64 72, i1 false)
  %i.g = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #28
          to label %_ZN6duckdb26PrimitiveColumnWriterStateC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm.exit unwind label %bb.b ; 3 uses

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @_ZNSt10unique_ptrIN6duckdb18ParquetBloomFilterESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #25
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !724  ; 3 uses
  %.not.i6.i = icmp eq ptr %i.k, null
  br i1 %.not.i6.i, label %_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN6duckdb22ColumnWriterStatisticsEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb22ColumnWriterStatisticsEEclEPS1_.exit.i.i: ; preds = %bb.b
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.k) #25, !inline_history !748
  br label %_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN6duckdb22ColumnWriterStatisticsEEclEPS1_.exit.i.i, %bb.b
  tail call void @_ZNSt6vectorIN6duckdb20PageWriteInformationESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #25
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !749  ; 2 uses
  %.not.i.i.i7.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i7.i, label %_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.o) #24
  br label %_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i

common.resume:                                    ; preds = %bb.k, %_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.h, %_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i ], [ %.pn, %bb.k ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i: ; preds = %bb.c, %_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i
  tail call void @_ZN6duckdb17ColumnWriterStateD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(192) %0) #25
  br label %common.resume

_ZN6duckdb26PrimitiveColumnWriterStateC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm.exit: ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !749
  store ptr %i.r, ptr %i.q, align 8, !tbaa !750
  store ptr %i.r, ptr %i.p, align 8, !tbaa !751
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb25StandardColumnWriterStateINS_10dtime_tz_tElNS_21ParquetTimeTZOperatorEEE, i64 16), ptr %0, align 8, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.s, i8 0, i64 20, i1 false)
  %i.u = load ptr, ptr %1, align 8, !tbaa !193, !nonnull !78, !align !79
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb15BufferAllocator3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %i.u)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %_ZN6duckdb26PrimitiveColumnWriterStateC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.sroa.0.0.copyload.i = load i64, ptr %i.w, align 8, !tbaa !191 ; 2 uses
  %.not = icmp eq i64 %.sroa.0.0.copyload.i, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %.sroa.0.0.copyload.i, ptr %4, align 8
  %i.x = invoke noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.g unwind label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.z = load i64, ptr %i.y, align 8, !tbaa !752
  %i.aa = invoke noundef i64 @_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl(i64 noundef %i.z)
          to label %_ZN6duckdb11NumericCastImlvEET_T0_.exit unwind label %bb.j

_ZN6duckdb11NumericCastImlvEET_T0_.exit:          ; preds = %bb.f
  %i.ab = udiv i64 %i.aa, 5
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %_ZN6duckdb11NumericCastImlvEET_T0_.exit
  %i.ac = phi i64 [ %i.ab, %_ZN6duckdb11NumericCastImlvEET_T0_.exit ], [ %i.x, %bb.e ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !765
  invoke void @_ZN6duckdb19PrimitiveDictionaryINS_10dtime_tz_tElNS_21ParquetTimeTZOperatorEEC2ERNS_9AllocatorEmm(ptr noundef nonnull align 8 dereferenceable(153) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 noundef %i.ac, i64 noundef %i.ae)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i32 0, ptr %i.af, align 8, !tbaa !1169
  ret void

bb.i:                                             ; preds = %_ZN6duckdb26PrimitiveColumnWriterStateC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.f, %bb.g, %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.j ], [ %i.ag, %bb.i ]
  call void @_ZN6duckdb26PrimitiveColumnWriterStateD2Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) #25
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb19PrimitiveDictionaryINS_10dtime_tz_tElNS_21ParquetTimeTZOperatorEEC2ERNS_9AllocatorEmm(ptr noundef nonnull align 8 dereferenceable(153) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !766
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.a, align 8, !tbaa !1209
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 0, ptr %i.b, align 8, !tbaa !1177
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = shl i64 %2, 1
  %i.e = tail call noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.d) ; 3 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !1202
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = add i64 %i.e, -1
  store i64 %i.g, ptr %i.f, align 8, !tbaa !1210
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %3, ptr %i.h, align 8, !tbaa !1211
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !1212, !nonnull !78, !align !79 ; 2 uses
  %i.k = shl i64 %i.e, 4                          ; 2 uses
  %i.l = tail call noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 noundef %i.k), !noalias !1213
  tail call void @_ZN6duckdb13AllocatedDataC1ERNS_9AllocatorEPhm(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef %i.l, i64 noundef %i.k)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !1212, !nonnull !78, !align !79 ; 2 uses
  %i.o = load i64, ptr %i.c, align 8, !tbaa !1202
  %i.p = shl i64 %i.o, 3                          ; 2 uses
  %i.q = invoke noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 noundef %i.p)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.a
  invoke void @_ZN6duckdb13AllocatedDataC1ERNS_9AllocatorEPhm(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef %i.q, i64 noundef %i.p)
          to label %_ZN6duckdb9Allocator8AllocateEm.exit unwind label %bb.c

_ZN6duckdb9Allocator8AllocateEm.exit:             ; preds = %.noexc
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !197
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.v = load i64, ptr %i.u, align 8, !tbaa !774
  invoke void @_ZN6duckdb12MemoryStreamC1EPhm(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef %i.t, i64 noundef %i.v)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN6duckdb9Allocator8AllocateEm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !197  ; 10 uses
  store ptr %i.y, ptr %i.w, align 8, !tbaa !1203
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  store i8 0, ptr %i.z, align 8, !tbaa !1178
  %i.aa = load i64, ptr %i.c, align 8, !tbaa !1202 ; 4 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZN6duckdb19PrimitiveDictionaryINS_10dtime_tz_tElNS_21ParquetTimeTZOperatorEE5ClearEv.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %xtraiter = and i64 %i.aa, 7                    ; 3 uses
  %i.ab = icmp ult i64 %i.aa, 8
  br i1 %i.ab, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.aa, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.03.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.as, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.03.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i32 -1, ptr %i.ad, align 8, !tbaa !1204
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.03.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store i32 -1, ptr %i.af, align 8, !tbaa !1204
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.03.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  store i32 -1, ptr %i.ah, align 8, !tbaa !1204
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.03.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  store i32 -1, ptr %i.aj, align 8, !tbaa !1204
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.03.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 72
  store i32 -1, ptr %i.al, align 8, !tbaa !1204
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.03.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 88
  store i32 -1, ptr %i.an, align 8, !tbaa !1204
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.03.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 104
  store i32 -1, ptr %i.ap, align 8, !tbaa !1204
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.03.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 120
  store i32 -1, ptr %i.ar, align 8, !tbaa !1204
  %i.as = add nuw i64 %.03.i, 8                   ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN6duckdb19PrimitiveDictionaryINS_10dtime_tz_tElNS_21ParquetTimeTZOperatorEE5ClearEv.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !1216

_ZN6duckdb19PrimitiveDictionaryINS_10dtime_tz_tElNS_21ParquetTimeTZOperatorEE5ClearEv.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb19PrimitiveDictionaryINS_10dtime_tz_tElNS_21ParquetTimeTZOperatorEE5ClearEv.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN6duckdb19PrimitiveDictionaryINS_10dtime_tz_tElNS_21ParquetTimeTZOperatorEE5ClearEv.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.03.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.as, %_ZN6duckdb19PrimitiveDictionaryINS_10dtime_tz_tElNS_21ParquetTimeTZOperatorEE5ClearEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod8 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod8)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.03.i.epil = phi i64 [ %i.av, %.lr.ph.i.epil ], [ %.03.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.03.i.epil
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i32 -1, ptr %i.au, align 8, !tbaa !1204
  %i.av = add nuw i64 %.03.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN6duckdb19PrimitiveDictionaryINS_10dtime_tz_tElNS_21ParquetTimeTZOperatorEE5ClearEv.exit, label %.lr.ph.i.epil, !llvm.loop !1217

_ZN6duckdb19PrimitiveDictionaryINS_10dtime_tz_tElNS_21ParquetTimeTZOperatorEE5ClearEv.exit: ; preds = %_ZN6duckdb19PrimitiveDictionaryINS_10dtime_tz_tElNS_21ParquetTimeTZOperatorEE5ClearEv.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.b
  store i32 0, ptr %i.b, align 8, !tbaa !1177
  store i8 0, ptr %i.z, align 8, !tbaa !1178
  ret void

bb.c:                                             ; preds = %.noexc, %bb.a
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %_ZN6duckdb9Allocator8AllocateEm.exit
  %i.ax = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.m) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.ax, %bb.d ], [ %i.aw, %bb.c ]
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.i) #25
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6duckdb25StandardColumnWriterStateINS_10dtime_tz_tElNS_21ParquetTimeTZOperatorEED2Ev(ptr noundef nonnull align 8 dereferenceable(380) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb25StandardColumnWriterStateINS_10dtime_tz_tElNS_21ParquetTimeTZOperatorEEE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  tail call void @_ZN6duckdb12MemoryStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #25
  tail call void @_ZN6duckdb26PrimitiveColumnWriterStateD2Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6duckdb25StandardColumnWriterStateINS_10dtime_tz_tElNS_21ParquetTimeTZOperatorEED0Ev(ptr noundef nonnull align 8 dereferenceable(380) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb25StandardColumnWriterStateINS_10dtime_tz_tElNS_21ParquetTimeTZOperatorEEE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  tail call void @_ZN6duckdb12MemoryStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #25, !inline_history !1218
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #25, !inline_history !1218
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #25, !inline_history !1218
  tail call void @_ZN6duckdb26PrimitiveColumnWriterStateD2Ev(ptr noundef nonnull align 8 dereferenceable(380) %0) #25, !inline_history !1218
  tail call void @_ZdlPv(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb19PrimitiveDictionaryINS_10dtime_tz_tElNS_21ParquetTimeTZOperatorEE6InsertILb1EEEvS1_(ptr noundef nonnull align 8 dereferenceable(153) %0, i64 %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !1178, !range !250, !noundef !78
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_ZNK6duckdb19PrimitiveDictionaryINS_10dtime_tz_tElNS_21ParquetTimeTZOperatorEE6LookupERKS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i64 @_ZN6duckdb4HashINS_10dtime_tz_tEEEmT_(i64 %1)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !1210 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1203 ; 2 uses
  %.07.i = and i64 %i.g, %i.e                     ; 2 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %.07.i ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !1204
  %i.m = icmp eq i32 %i.l, -1
  br i1 %i.m, label %.loopexit, label %.lr.ph.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.n = add i64 %.08.i, 1
  %.0.i = and i64 %i.n, %i.g                      ; 2 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %.0.i ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !1204
  %i.r = icmp eq i32 %i.q, -1
  br i1 %i.r, label %.loopexit, label %.lr.ph.i, !llvm.loop !1219

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.s = phi ptr [ %i.o, %bb.c ], [ %i.j, %bb.b ]
  %.08.i = phi i64 [ %.0.i, %bb.c ], [ %.07.i, %bb.b ]
  %i.t = load i64, ptr %i.s, align 8, !tbaa !1220
  %.not.i.not = icmp eq i64 %i.t, %1
  br i1 %.not.i.not, label %_ZNK6duckdb19PrimitiveDictionaryINS_10dtime_tz_tElNS_21ParquetTimeTZOperatorEE6LookupERKS1_.exit, label %bb.c

.loopexit:                                        ; preds = %bb.c, %bb.b
  %.lcssa.i.ph = phi ptr [ %i.j, %bb.b ], [ %i.o, %bb.c ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.lcssa.i.ph, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !1177
  %i.x = add i32 %i.w, 1
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !1209
  %i.ab = icmp ult i64 %i.aa, %i.y
  br i1 %i.ab, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.ac = lshr i64 %1, 24
  store i64 %i.ac, ptr %i.a, align 8, !tbaa !191
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.ae = tail call noundef i64 @_ZNK6duckdb12MemoryStream11GetPositionEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ad)
  %i.af = add i64 %i.ae, 8
  %i.ag = tail call noundef i64 @_ZNK6duckdb12MemoryStream11GetCapacityEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ad)
  %.not = icmp ugt i64 %i.af, %i.ag
  br i1 %.not, label %_ZN6duckdb19PrimitiveDictionaryINS_10dtime_tz_tElNS_21ParquetTimeTZOperatorEE11AddToTargetIS1_TnNSt9enable_ifIXntsr3std7is_sameIT_NS_8string_tEEE5valueEiE4typeELi0EEEbRKS1_.exit, label %bb.f

_ZN6duckdb19PrimitiveDictionaryINS_10dtime_tz_tElNS_21ParquetTimeTZOperatorEE11AddToTargetIS1_TnNSt9enable_ifIXntsr3std7is_sameIT_NS_8string_tEEE5valueEiE4typeELi0EEEbRKS1_.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb19PrimitiveDictionaryINS_10dtime_tz_tElNS_21ParquetTimeTZOperatorEE11AddToTargetIS1_TnNSt9enable_ifIXntsr3std7is_sameIT_NS_8string_tEEE5valueEiE4typeELi0EEEbRKS1_.exit, %.loopexit
  store i8 1, ptr %i.b, align 8, !tbaa !1178
  br label %_ZNK6duckdb19PrimitiveDictionaryINS_10dtime_tz_tElNS_21ParquetTimeTZOperatorEE6LookupERKS1_.exit

bb.f:                                             ; preds = %bb.d
  %i.ah = load ptr, ptr %i.ad, align 8, !tbaa !15
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 8), !inline_history !1221
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  store i64 %1, ptr %.lcssa.i.ph, align 8, !tbaa !191
  %i.aj = load i32, ptr %i.v, align 8, !tbaa !1177 ; 2 uses
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr %i.v, align 8, !tbaa !1177
  store i32 %i.aj, ptr %i.u, align 8, !tbaa !1204
  br label %_ZNK6duckdb19PrimitiveDictionaryINS_10dtime_tz_tElNS_21ParquetTimeTZOperatorEE6LookupERKS1_.exit

_ZNK6duckdb19PrimitiveDictionaryINS_10dtime_tz_tElNS_21ParquetTimeTZOperatorEE6LookupERKS1_.exit: ; preds = %.lr.ph.i, %bb.e, %bb.f, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10dtime_tz_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !394
  %i.e = icmp eq i8 %i.d, 9
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.35, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 9, ptr %i.a, align 1, !tbaa !797
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.g = load i8, ptr %i.c, align 1, !tbaa !394
  store i8 %i.g, ptr %i.b, align 1, !tbaa !797
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
end_hunk_4
begin_hunk_5_@_ZN6duckdb25StandardColumnWriterStateINS_9hugeint_tEdNS_22ParquetHugeintOperatorEEC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm:bb.a
  store i64 %3, ptr %i.d, align 8, !tbaa !747
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, i8 0, i64 72, i1 false)
  %i.g = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #28
          to label %_ZN6duckdb26PrimitiveColumnWriterStateC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm.exit unwind label %bb.b ; 3 uses

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @_ZNSt10unique_ptrIN6duckdb18ParquetBloomFilterESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #25
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !724  ; 3 uses
  %.not.i6.i = icmp eq ptr %i.k, null
  br i1 %.not.i6.i, label %_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN6duckdb22ColumnWriterStatisticsEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb22ColumnWriterStatisticsEEclEPS1_.exit.i.i: ; preds = %bb.b
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.k) #25, !inline_history !748
  br label %_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN6duckdb22ColumnWriterStatisticsEEclEPS1_.exit.i.i, %bb.b
  tail call void @_ZNSt6vectorIN6duckdb20PageWriteInformationESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #25
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !749  ; 2 uses
  %.not.i.i.i7.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i7.i, label %_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.o) #24
  br label %_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i

common.resume:                                    ; preds = %bb.k, %_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.h, %_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i ], [ %.pn, %bb.k ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i: ; preds = %bb.c, %_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i
  tail call void @_ZN6duckdb17ColumnWriterStateD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(192) %0) #25
  br label %common.resume

_ZN6duckdb26PrimitiveColumnWriterStateC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm.exit: ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !749
  store ptr %i.r, ptr %i.q, align 8, !tbaa !750
  store ptr %i.r, ptr %i.p, align 8, !tbaa !751
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb25StandardColumnWriterStateINS_9hugeint_tEdNS_22ParquetHugeintOperatorEEE, i64 16), ptr %0, align 8, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.s, i8 0, i64 20, i1 false)
  %i.u = load ptr, ptr %1, align 8, !tbaa !193, !nonnull !78, !align !79
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb15BufferAllocator3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %i.u)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %_ZN6duckdb26PrimitiveColumnWriterStateC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.sroa.0.0.copyload.i = load i64, ptr %i.w, align 8, !tbaa !191 ; 2 uses
  %.not = icmp eq i64 %.sroa.0.0.copyload.i, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %.sroa.0.0.copyload.i, ptr %4, align 8
  %i.x = invoke noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.g unwind label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.z = load i64, ptr %i.y, align 8, !tbaa !752
  %i.aa = invoke noundef i64 @_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl(i64 noundef %i.z)
          to label %_ZN6duckdb11NumericCastImlvEET_T0_.exit unwind label %bb.j

_ZN6duckdb11NumericCastImlvEET_T0_.exit:          ; preds = %bb.f
  %i.ab = udiv i64 %i.aa, 5
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %_ZN6duckdb11NumericCastImlvEET_T0_.exit
  %i.ac = phi i64 [ %i.ab, %_ZN6duckdb11NumericCastImlvEET_T0_.exit ], [ %i.x, %bb.e ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !765
  invoke void @_ZN6duckdb19PrimitiveDictionaryINS_9hugeint_tEdNS_22ParquetHugeintOperatorEEC2ERNS_9AllocatorEmm(ptr noundef nonnull align 8 dereferenceable(153) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 noundef %i.ac, i64 noundef %i.ae)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i32 0, ptr %i.af, align 8, !tbaa !1261
  ret void

bb.i:                                             ; preds = %_ZN6duckdb26PrimitiveColumnWriterStateC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.f, %bb.g, %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.j ], [ %i.ag, %bb.i ]
  call void @_ZN6duckdb26PrimitiveColumnWriterStateD2Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) #25
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb19PrimitiveDictionaryINS_9hugeint_tEdNS_22ParquetHugeintOperatorEEC2ERNS_9AllocatorEmm(ptr noundef nonnull align 8 dereferenceable(153) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !766
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.a, align 8, !tbaa !1305
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 0, ptr %i.b, align 8, !tbaa !1269
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = shl i64 %2, 1
  %i.e = tail call noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.d) ; 3 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !1298
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = add i64 %i.e, -1
  store i64 %i.g, ptr %i.f, align 8, !tbaa !1306
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %3, ptr %i.h, align 8, !tbaa !1307
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !1308, !nonnull !78, !align !79 ; 2 uses
  %i.k = mul i64 %i.e, 24                         ; 2 uses
  %i.l = tail call noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 noundef %i.k), !noalias !1309
  tail call void @_ZN6duckdb13AllocatedDataC1ERNS_9AllocatorEPhm(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef %i.l, i64 noundef %i.k)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !1308, !nonnull !78, !align !79 ; 2 uses
  %i.o = load i64, ptr %i.c, align 8, !tbaa !1298
  %i.p = shl i64 %i.o, 3                          ; 2 uses
  %i.q = invoke noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 noundef %i.p)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.a
  invoke void @_ZN6duckdb13AllocatedDataC1ERNS_9AllocatorEPhm(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef %i.q, i64 noundef %i.p)
          to label %_ZN6duckdb9Allocator8AllocateEm.exit unwind label %bb.c

_ZN6duckdb9Allocator8AllocateEm.exit:             ; preds = %.noexc
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !197
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.v = load i64, ptr %i.u, align 8, !tbaa !774
  invoke void @_ZN6duckdb12MemoryStreamC1EPhm(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef %i.t, i64 noundef %i.v)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN6duckdb9Allocator8AllocateEm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !197  ; 10 uses
  store ptr %i.y, ptr %i.w, align 8, !tbaa !1299
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  store i8 0, ptr %i.z, align 8, !tbaa !1270
  %i.aa = load i64, ptr %i.c, align 8, !tbaa !1298 ; 4 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZN6duckdb19PrimitiveDictionaryINS_9hugeint_tEdNS_22ParquetHugeintOperatorEE5ClearEv.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %xtraiter = and i64 %i.aa, 7                    ; 3 uses
  %i.ab = icmp ult i64 %i.aa, 8
  br i1 %i.ab, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.aa, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.03.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.as, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.03.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i32 -1, ptr %i.ad, align 8, !tbaa !1300
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.03.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  store i32 -1, ptr %i.af, align 8, !tbaa !1300
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.03.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  store i32 -1, ptr %i.ah, align 8, !tbaa !1300
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.03.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 88
  store i32 -1, ptr %i.aj, align 8, !tbaa !1300
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.03.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 112
  store i32 -1, ptr %i.al, align 8, !tbaa !1300
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.03.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 136
  store i32 -1, ptr %i.an, align 8, !tbaa !1300
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.03.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 160
  store i32 -1, ptr %i.ap, align 8, !tbaa !1300
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.03.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 184
  store i32 -1, ptr %i.ar, align 8, !tbaa !1300
  %i.as = add nuw i64 %.03.i, 8                   ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN6duckdb19PrimitiveDictionaryINS_9hugeint_tEdNS_22ParquetHugeintOperatorEE5ClearEv.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !1312

_ZN6duckdb19PrimitiveDictionaryINS_9hugeint_tEdNS_22ParquetHugeintOperatorEE5ClearEv.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb19PrimitiveDictionaryINS_9hugeint_tEdNS_22ParquetHugeintOperatorEE5ClearEv.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN6duckdb19PrimitiveDictionaryINS_9hugeint_tEdNS_22ParquetHugeintOperatorEE5ClearEv.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.03.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.as, %_ZN6duckdb19PrimitiveDictionaryINS_9hugeint_tEdNS_22ParquetHugeintOperatorEE5ClearEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod8 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod8)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.03.i.epil = phi i64 [ %i.av, %.lr.ph.i.epil ], [ %.03.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.03.i.epil
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i32 -1, ptr %i.au, align 8, !tbaa !1300
  %i.av = add nuw i64 %.03.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN6duckdb19PrimitiveDictionaryINS_9hugeint_tEdNS_22ParquetHugeintOperatorEE5ClearEv.exit, label %.lr.ph.i.epil, !llvm.loop !1313

_ZN6duckdb19PrimitiveDictionaryINS_9hugeint_tEdNS_22ParquetHugeintOperatorEE5ClearEv.exit: ; preds = %_ZN6duckdb19PrimitiveDictionaryINS_9hugeint_tEdNS_22ParquetHugeintOperatorEE5ClearEv.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.b
  store i32 0, ptr %i.b, align 8, !tbaa !1269
  store i8 0, ptr %i.z, align 8, !tbaa !1270
  ret void

bb.c:                                             ; preds = %.noexc, %bb.a
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %_ZN6duckdb9Allocator8AllocateEm.exit
  %i.ax = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.m) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.ax, %bb.d ], [ %i.aw, %bb.c ]
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.i) #25
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6duckdb25StandardColumnWriterStateINS_9hugeint_tEdNS_22ParquetHugeintOperatorEED2Ev(ptr noundef nonnull align 8 dereferenceable(380) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb25StandardColumnWriterStateINS_9hugeint_tEdNS_22ParquetHugeintOperatorEEE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  tail call void @_ZN6duckdb12MemoryStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #25
  tail call void @_ZN6duckdb26PrimitiveColumnWriterStateD2Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6duckdb25StandardColumnWriterStateINS_9hugeint_tEdNS_22ParquetHugeintOperatorEED0Ev(ptr noundef nonnull align 8 dereferenceable(380) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb25StandardColumnWriterStateINS_9hugeint_tEdNS_22ParquetHugeintOperatorEEE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  tail call void @_ZN6duckdb12MemoryStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #25, !inline_history !1314
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #25, !inline_history !1314
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #25, !inline_history !1314
  tail call void @_ZN6duckdb26PrimitiveColumnWriterStateD2Ev(ptr noundef nonnull align 8 dereferenceable(380) %0) #25, !inline_history !1314
  tail call void @_ZdlPv(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb19PrimitiveDictionaryINS_9hugeint_tEdNS_22ParquetHugeintOperatorEE6InsertILb1EEEvS1_(ptr noundef nonnull align 8 dereferenceable(153) %0, i64 %1, i64 %2) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %3 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  store i64 %1, ptr %3, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !1270, !range !250, !noundef !78
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef i64 @_ZN6duckdb4HashINS_9hugeint_tEEEmT_(i64 %1, i64 %2)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !1306
  %i.j = and i64 %i.i, %i.g                       ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1299 ; 2 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.j ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load i32, ptr %i.n, align 8, !tbaa !1300
  %i.p = icmp eq i32 %i.o, -1
  br i1 %i.p, label %_ZNK6duckdb19PrimitiveDictionaryINS_9hugeint_tEdNS_22ParquetHugeintOperatorEE6LookupERKS1_.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.q = phi ptr [ %i.v, %bb.c ], [ %i.m, %bb.b ]
  %.07.i = phi i64 [ %i.u, %bb.c ], [ %i.j, %bb.b ] ; 3 uses
  %i.r = call noundef zeroext i1 @_ZNK6duckdb9hugeint_tneERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %3)
  %.pre.pre.i = load ptr, ptr %i.k, align 8, !tbaa !1299 ; 4 uses
  br i1 %i.r, label %bb.c, label %_ZNK6duckdb19PrimitiveDictionaryINS_9hugeint_tEdNS_22ParquetHugeintOperatorEE6LookupERKS1_.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.s = load i64, ptr %i.h, align 8, !tbaa !1306
  %i.t = add i64 %.07.i, 1
  %i.u = and i64 %i.s, %i.t                       ; 3 uses
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %.pre.pre.i, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i32, ptr %i.w, align 8, !tbaa !1300
  %i.y = icmp eq i32 %i.x, -1
  br i1 %i.y, label %_ZNK6duckdb19PrimitiveDictionaryINS_9hugeint_tEdNS_22ParquetHugeintOperatorEE6LookupERKS1_.exit.thread, label %.lr.ph.i, !llvm.loop !1315

_ZNK6duckdb19PrimitiveDictionaryINS_9hugeint_tEdNS_22ParquetHugeintOperatorEE6LookupERKS1_.exit.thread: ; preds = %bb.c, %bb.b
  %.ph = phi ptr [ %i.l, %bb.b ], [ %.pre.pre.i, %bb.c ]
  %.0.lcssa.i.ph = phi i64 [ %i.j, %bb.b ], [ %i.u, %bb.c ]
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %.ph, i64 %.0.lcssa.i.ph
  br label %bb.d

_ZNK6duckdb19PrimitiveDictionaryINS_9hugeint_tEdNS_22ParquetHugeintOperatorEE6LookupERKS1_.exit: ; preds = %.lr.ph.i
  %.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw [24 x i8], ptr %.pre.pre.i, i64 %.07.i
  %.phi.trans.insert7.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.phi.trans.insert, i64 16
  %.pre.pre = load i32, ptr %.phi.trans.insert7.phi.trans.insert, align 8, !tbaa !1300
  %i.aa = icmp eq i32 %.pre.pre, -1
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %.pre.pre.i, i64 %.07.i
  br i1 %i.aa, label %bb.d, label %bb.h

bb.d:                                             ; preds = %_ZNK6duckdb19PrimitiveDictionaryINS_9hugeint_tEdNS_22ParquetHugeintOperatorEE6LookupERKS1_.exit.thread, %_ZNK6duckdb19PrimitiveDictionaryINS_9hugeint_tEdNS_22ParquetHugeintOperatorEE6LookupERKS1_.exit
  %i.ac = phi ptr [ %i.z, %_ZNK6duckdb19PrimitiveDictionaryINS_9hugeint_tEdNS_22ParquetHugeintOperatorEE6LookupERKS1_.exit.thread ], [ %i.ab, %_ZNK6duckdb19PrimitiveDictionaryINS_9hugeint_tEdNS_22ParquetHugeintOperatorEE6LookupERKS1_.exit ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !1269
  %i.ag = add i32 %i.af, 1
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !1305
  %i.ak = icmp ult i64 %i.aj, %i.ah
  br i1 %i.ak, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %.sroa.0.0.copyload.i4 = load i64, ptr %3, align 8, !tbaa !191
  %.sroa.2.0.copyload.i6 = load i64, ptr %i.c, align 8, !tbaa !191
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !1316
  %i.al = call noundef zeroext i1 @_ZN6duckdb7Hugeint7TryCastIdEEbNS_9hugeint_tERT_(i64 %.sroa.0.0.copyload.i4, i64 %.sroa.2.0.copyload.i6, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.am = load double, ptr %i.a, align 8, !tbaa !1316
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  store double %i.am, ptr %i.b, align 8, !tbaa !1316
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.ao = call noundef i64 @_ZNK6duckdb12MemoryStream11GetPositionEv(ptr noundef nonnull align 8 dereferenceable(48) %i.an)
  %i.ap = add i64 %i.ao, 8
  %i.aq = call noundef i64 @_ZNK6duckdb12MemoryStream11GetCapacityEv(ptr noundef nonnull align 8 dereferenceable(48) %i.an)
  %.not = icmp ugt i64 %i.ap, %i.aq
  br i1 %.not, label %_ZN6duckdb19PrimitiveDictionaryINS_9hugeint_tEdNS_22ParquetHugeintOperatorEE11AddToTargetIS1_TnNSt9enable_ifIXntsr3std7is_sameIT_NS_8string_tEEE5valueEiE4typeELi0EEEbRKS1_.exit, label %bb.g

_ZN6duckdb19PrimitiveDictionaryINS_9hugeint_tEdNS_22ParquetHugeintOperatorEE11AddToTargetIS1_TnNSt9enable_ifIXntsr3std7is_sameIT_NS_8string_tEEE5valueEiE4typeELi0EEEbRKS1_.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %bb.f

bb.f:                                             ; preds = %_ZN6duckdb19PrimitiveDictionaryINS_9hugeint_tEdNS_22ParquetHugeintOperatorEE11AddToTargetIS1_TnNSt9enable_ifIXntsr3std7is_sameIT_NS_8string_tEEE5valueEiE4typeELi0EEEbRKS1_.exit, %bb.d
  store i8 1, ptr %i.d, align 8, !tbaa !1270
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ar = load ptr, ptr %i.an, align 8, !tbaa !15
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 8), !inline_history !1317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !1318
  %i.at = load i32, ptr %i.ae, align 8, !tbaa !1269 ; 2 uses
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr %i.ae, align 8, !tbaa !1269
  store i32 %i.at, ptr %i.ad, align 8, !tbaa !1300
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %_ZNK6duckdb19PrimitiveDictionaryINS_9hugeint_tEdNS_22ParquetHugeintOperatorEE6LookupERKS1_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_9hugeint_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !394
  %i.e = icmp eq i8 %i.d, -52
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
end_hunk_5
begin_hunk_6_@_ZN6duckdb25StandardColumnWriterStateINS_10uhugeint_tEdNS_23ParquetUhugeintOperatorEEC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm:bb.a
  store i64 %3, ptr %i.d, align 8, !tbaa !747
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, i8 0, i64 72, i1 false)
  %i.g = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #28
          to label %_ZN6duckdb26PrimitiveColumnWriterStateC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm.exit unwind label %bb.b ; 3 uses

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @_ZNSt10unique_ptrIN6duckdb18ParquetBloomFilterESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #25
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !724  ; 3 uses
  %.not.i6.i = icmp eq ptr %i.k, null
  br i1 %.not.i6.i, label %_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN6duckdb22ColumnWriterStatisticsEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb22ColumnWriterStatisticsEEclEPS1_.exit.i.i: ; preds = %bb.b
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.k) #25, !inline_history !748
  br label %_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN6duckdb22ColumnWriterStatisticsEEclEPS1_.exit.i.i, %bb.b
  tail call void @_ZNSt6vectorIN6duckdb20PageWriteInformationESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #25
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !749  ; 2 uses
  %.not.i.i.i7.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i7.i, label %_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.o) #24
  br label %_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i

common.resume:                                    ; preds = %bb.k, %_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.h, %_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i ], [ %.pn, %bb.k ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i: ; preds = %bb.c, %_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i
  tail call void @_ZN6duckdb17ColumnWriterStateD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(192) %0) #25
  br label %common.resume

_ZN6duckdb26PrimitiveColumnWriterStateC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm.exit: ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !749
  store ptr %i.r, ptr %i.q, align 8, !tbaa !750
  store ptr %i.r, ptr %i.p, align 8, !tbaa !751
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb25StandardColumnWriterStateINS_10uhugeint_tEdNS_23ParquetUhugeintOperatorEEE, i64 16), ptr %0, align 8, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.s, i8 0, i64 20, i1 false)
  %i.u = load ptr, ptr %1, align 8, !tbaa !193, !nonnull !78, !align !79
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb15BufferAllocator3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %i.u)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %_ZN6duckdb26PrimitiveColumnWriterStateC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.sroa.0.0.copyload.i = load i64, ptr %i.w, align 8, !tbaa !191 ; 2 uses
  %.not = icmp eq i64 %.sroa.0.0.copyload.i, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %.sroa.0.0.copyload.i, ptr %4, align 8
  %i.x = invoke noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.g unwind label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.z = load i64, ptr %i.y, align 8, !tbaa !752
  %i.aa = invoke noundef i64 @_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl(i64 noundef %i.z)
          to label %_ZN6duckdb11NumericCastImlvEET_T0_.exit unwind label %bb.j

_ZN6duckdb11NumericCastImlvEET_T0_.exit:          ; preds = %bb.f
  %i.ab = udiv i64 %i.aa, 5
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %_ZN6duckdb11NumericCastImlvEET_T0_.exit
  %i.ac = phi i64 [ %i.ab, %_ZN6duckdb11NumericCastImlvEET_T0_.exit ], [ %i.x, %bb.e ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !765
  invoke void @_ZN6duckdb19PrimitiveDictionaryINS_10uhugeint_tEdNS_23ParquetUhugeintOperatorEEC2ERNS_9AllocatorEmm(ptr noundef nonnull align 8 dereferenceable(153) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 noundef %i.ac, i64 noundef %i.ae)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i32 0, ptr %i.af, align 8, !tbaa !1358
  ret void

bb.i:                                             ; preds = %_ZN6duckdb26PrimitiveColumnWriterStateC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.f, %bb.g, %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.j ], [ %i.ag, %bb.i ]
  call void @_ZN6duckdb26PrimitiveColumnWriterStateD2Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) #25
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb19PrimitiveDictionaryINS_10uhugeint_tEdNS_23ParquetUhugeintOperatorEEC2ERNS_9AllocatorEmm(ptr noundef nonnull align 8 dereferenceable(153) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !766
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.a, align 8, !tbaa !1402
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 0, ptr %i.b, align 8, !tbaa !1366
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = shl i64 %2, 1
  %i.e = tail call noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.d) ; 3 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !1395
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = add i64 %i.e, -1
  store i64 %i.g, ptr %i.f, align 8, !tbaa !1403
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %3, ptr %i.h, align 8, !tbaa !1404
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !1405, !nonnull !78, !align !79 ; 2 uses
  %i.k = mul i64 %i.e, 24                         ; 2 uses
  %i.l = tail call noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 noundef %i.k), !noalias !1406
  tail call void @_ZN6duckdb13AllocatedDataC1ERNS_9AllocatorEPhm(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef %i.l, i64 noundef %i.k)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !1405, !nonnull !78, !align !79 ; 2 uses
  %i.o = load i64, ptr %i.c, align 8, !tbaa !1395
  %i.p = shl i64 %i.o, 3                          ; 2 uses
  %i.q = invoke noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 noundef %i.p)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.a
  invoke void @_ZN6duckdb13AllocatedDataC1ERNS_9AllocatorEPhm(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef %i.q, i64 noundef %i.p)
          to label %_ZN6duckdb9Allocator8AllocateEm.exit unwind label %bb.c

_ZN6duckdb9Allocator8AllocateEm.exit:             ; preds = %.noexc
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !197
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.v = load i64, ptr %i.u, align 8, !tbaa !774
  invoke void @_ZN6duckdb12MemoryStreamC1EPhm(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef %i.t, i64 noundef %i.v)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN6duckdb9Allocator8AllocateEm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !197  ; 10 uses
  store ptr %i.y, ptr %i.w, align 8, !tbaa !1396
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  store i8 0, ptr %i.z, align 8, !tbaa !1367
  %i.aa = load i64, ptr %i.c, align 8, !tbaa !1395 ; 4 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZN6duckdb19PrimitiveDictionaryINS_10uhugeint_tEdNS_23ParquetUhugeintOperatorEE5ClearEv.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %xtraiter = and i64 %i.aa, 7                    ; 3 uses
  %i.ab = icmp ult i64 %i.aa, 8
  br i1 %i.ab, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.aa, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.03.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.as, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.03.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i32 -1, ptr %i.ad, align 8, !tbaa !1397
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.03.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  store i32 -1, ptr %i.af, align 8, !tbaa !1397
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.03.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  store i32 -1, ptr %i.ah, align 8, !tbaa !1397
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.03.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 88
  store i32 -1, ptr %i.aj, align 8, !tbaa !1397
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.03.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 112
  store i32 -1, ptr %i.al, align 8, !tbaa !1397
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.03.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 136
  store i32 -1, ptr %i.an, align 8, !tbaa !1397
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.03.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 160
  store i32 -1, ptr %i.ap, align 8, !tbaa !1397
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.03.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 184
  store i32 -1, ptr %i.ar, align 8, !tbaa !1397
  %i.as = add nuw i64 %.03.i, 8                   ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN6duckdb19PrimitiveDictionaryINS_10uhugeint_tEdNS_23ParquetUhugeintOperatorEE5ClearEv.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !1409

_ZN6duckdb19PrimitiveDictionaryINS_10uhugeint_tEdNS_23ParquetUhugeintOperatorEE5ClearEv.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb19PrimitiveDictionaryINS_10uhugeint_tEdNS_23ParquetUhugeintOperatorEE5ClearEv.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN6duckdb19PrimitiveDictionaryINS_10uhugeint_tEdNS_23ParquetUhugeintOperatorEE5ClearEv.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.03.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.as, %_ZN6duckdb19PrimitiveDictionaryINS_10uhugeint_tEdNS_23ParquetUhugeintOperatorEE5ClearEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod8 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod8)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.03.i.epil = phi i64 [ %i.av, %.lr.ph.i.epil ], [ %.03.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.03.i.epil
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i32 -1, ptr %i.au, align 8, !tbaa !1397
  %i.av = add nuw i64 %.03.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN6duckdb19PrimitiveDictionaryINS_10uhugeint_tEdNS_23ParquetUhugeintOperatorEE5ClearEv.exit, label %.lr.ph.i.epil, !llvm.loop !1410

_ZN6duckdb19PrimitiveDictionaryINS_10uhugeint_tEdNS_23ParquetUhugeintOperatorEE5ClearEv.exit: ; preds = %_ZN6duckdb19PrimitiveDictionaryINS_10uhugeint_tEdNS_23ParquetUhugeintOperatorEE5ClearEv.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.b
  store i32 0, ptr %i.b, align 8, !tbaa !1366
  store i8 0, ptr %i.z, align 8, !tbaa !1367
  ret void

bb.c:                                             ; preds = %.noexc, %bb.a
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %_ZN6duckdb9Allocator8AllocateEm.exit
  %i.ax = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.m) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.ax, %bb.d ], [ %i.aw, %bb.c ]
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.i) #25
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6duckdb25StandardColumnWriterStateINS_10uhugeint_tEdNS_23ParquetUhugeintOperatorEED2Ev(ptr noundef nonnull align 8 dereferenceable(380) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb25StandardColumnWriterStateINS_10uhugeint_tEdNS_23ParquetUhugeintOperatorEEE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  tail call void @_ZN6duckdb12MemoryStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #25
  tail call void @_ZN6duckdb26PrimitiveColumnWriterStateD2Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6duckdb25StandardColumnWriterStateINS_10uhugeint_tEdNS_23ParquetUhugeintOperatorEED0Ev(ptr noundef nonnull align 8 dereferenceable(380) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb25StandardColumnWriterStateINS_10uhugeint_tEdNS_23ParquetUhugeintOperatorEEE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  tail call void @_ZN6duckdb12MemoryStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #25, !inline_history !1411
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #25, !inline_history !1411
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #25, !inline_history !1411
  tail call void @_ZN6duckdb26PrimitiveColumnWriterStateD2Ev(ptr noundef nonnull align 8 dereferenceable(380) %0) #25, !inline_history !1411
  tail call void @_ZdlPv(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb19PrimitiveDictionaryINS_10uhugeint_tEdNS_23ParquetUhugeintOperatorEE6InsertILb1EEEvS1_(ptr noundef nonnull align 8 dereferenceable(153) %0, i64 %1, i64 %2) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %3 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 5 uses
  store i64 %1, ptr %3, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !1367, !range !250, !noundef !78
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef i64 @_ZN6duckdb4HashINS_10uhugeint_tEEEmT_(i64 %1, i64 %2)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !1403
  %i.j = and i64 %i.i, %i.g                       ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1396 ; 2 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.j ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load i32, ptr %i.n, align 8, !tbaa !1397
  %i.p = icmp eq i32 %i.o, -1
  br i1 %i.p, label %_ZNK6duckdb19PrimitiveDictionaryINS_10uhugeint_tEdNS_23ParquetUhugeintOperatorEE6LookupERKS1_.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.q = phi ptr [ %i.v, %bb.c ], [ %i.m, %bb.b ]
  %.07.i = phi i64 [ %i.u, %bb.c ], [ %i.j, %bb.b ] ; 3 uses
  %i.r = call noundef zeroext i1 @_ZNK6duckdb10uhugeint_tneERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %3)
  %.pre.pre.i = load ptr, ptr %i.k, align 8, !tbaa !1396 ; 4 uses
  br i1 %i.r, label %bb.c, label %_ZNK6duckdb19PrimitiveDictionaryINS_10uhugeint_tEdNS_23ParquetUhugeintOperatorEE6LookupERKS1_.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.s = load i64, ptr %i.h, align 8, !tbaa !1403
  %i.t = add i64 %.07.i, 1
  %i.u = and i64 %i.s, %i.t                       ; 3 uses
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %.pre.pre.i, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i32, ptr %i.w, align 8, !tbaa !1397
  %i.y = icmp eq i32 %i.x, -1
  br i1 %i.y, label %_ZNK6duckdb19PrimitiveDictionaryINS_10uhugeint_tEdNS_23ParquetUhugeintOperatorEE6LookupERKS1_.exit.thread, label %.lr.ph.i, !llvm.loop !1412

_ZNK6duckdb19PrimitiveDictionaryINS_10uhugeint_tEdNS_23ParquetUhugeintOperatorEE6LookupERKS1_.exit.thread: ; preds = %bb.c, %bb.b
  %.ph = phi ptr [ %i.l, %bb.b ], [ %.pre.pre.i, %bb.c ]
  %.0.lcssa.i.ph = phi i64 [ %i.j, %bb.b ], [ %i.u, %bb.c ]
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %.ph, i64 %.0.lcssa.i.ph
  br label %bb.d

_ZNK6duckdb19PrimitiveDictionaryINS_10uhugeint_tEdNS_23ParquetUhugeintOperatorEE6LookupERKS1_.exit: ; preds = %.lr.ph.i
  %.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw [24 x i8], ptr %.pre.pre.i, i64 %.07.i
  %.phi.trans.insert7.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.phi.trans.insert, i64 16
  %.pre.pre = load i32, ptr %.phi.trans.insert7.phi.trans.insert, align 8, !tbaa !1397
  %i.aa = icmp eq i32 %.pre.pre, -1
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %.pre.pre.i, i64 %.07.i
  br i1 %i.aa, label %bb.d, label %bb.h

bb.d:                                             ; preds = %_ZNK6duckdb19PrimitiveDictionaryINS_10uhugeint_tEdNS_23ParquetUhugeintOperatorEE6LookupERKS1_.exit.thread, %_ZNK6duckdb19PrimitiveDictionaryINS_10uhugeint_tEdNS_23ParquetUhugeintOperatorEE6LookupERKS1_.exit
  %i.ac = phi ptr [ %i.z, %_ZNK6duckdb19PrimitiveDictionaryINS_10uhugeint_tEdNS_23ParquetUhugeintOperatorEE6LookupERKS1_.exit.thread ], [ %i.ab, %_ZNK6duckdb19PrimitiveDictionaryINS_10uhugeint_tEdNS_23ParquetUhugeintOperatorEE6LookupERKS1_.exit ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !1366
  %i.ag = add i32 %i.af, 1
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !1402
  %i.ak = icmp ult i64 %i.aj, %i.ah
  br i1 %i.ak, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %.sroa.0.0.copyload.i4 = load i64, ptr %3, align 8, !tbaa !191
  %.sroa.2.0.copyload.i6 = load i64, ptr %i.c, align 8, !tbaa !191
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !1316
  %i.al = call noundef zeroext i1 @_ZN6duckdb8Uhugeint7TryCastIdEEbNS_10uhugeint_tERT_(i64 %.sroa.0.0.copyload.i4, i64 %.sroa.2.0.copyload.i6, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.am = load double, ptr %i.a, align 8, !tbaa !1316
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  store double %i.am, ptr %i.b, align 8, !tbaa !1316
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.ao = call noundef i64 @_ZNK6duckdb12MemoryStream11GetPositionEv(ptr noundef nonnull align 8 dereferenceable(48) %i.an)
  %i.ap = add i64 %i.ao, 8
  %i.aq = call noundef i64 @_ZNK6duckdb12MemoryStream11GetCapacityEv(ptr noundef nonnull align 8 dereferenceable(48) %i.an)
  %.not = icmp ugt i64 %i.ap, %i.aq
  br i1 %.not, label %_ZN6duckdb19PrimitiveDictionaryINS_10uhugeint_tEdNS_23ParquetUhugeintOperatorEE11AddToTargetIS1_TnNSt9enable_ifIXntsr3std7is_sameIT_NS_8string_tEEE5valueEiE4typeELi0EEEbRKS1_.exit, label %bb.g

_ZN6duckdb19PrimitiveDictionaryINS_10uhugeint_tEdNS_23ParquetUhugeintOperatorEE11AddToTargetIS1_TnNSt9enable_ifIXntsr3std7is_sameIT_NS_8string_tEEE5valueEiE4typeELi0EEEbRKS1_.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %bb.f

bb.f:                                             ; preds = %_ZN6duckdb19PrimitiveDictionaryINS_10uhugeint_tEdNS_23ParquetUhugeintOperatorEE11AddToTargetIS1_TnNSt9enable_ifIXntsr3std7is_sameIT_NS_8string_tEEE5valueEiE4typeELi0EEEbRKS1_.exit, %bb.d
  store i8 1, ptr %i.d, align 8, !tbaa !1367
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ar = load ptr, ptr %i.an, align 8, !tbaa !15
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 8), !inline_history !1413
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !1318
  %i.at = load i32, ptr %i.ae, align 8, !tbaa !1366 ; 2 uses
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr %i.ae, align 8, !tbaa !1366
  store i32 %i.at, ptr %i.ad, align 8, !tbaa !1397
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %_ZNK6duckdb19PrimitiveDictionaryINS_10uhugeint_tEdNS_23ParquetUhugeintOperatorEE6LookupERKS1_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10uhugeint_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !394
  %i.e = icmp eq i8 %i.d, -53
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
end_hunk_6
begin_hunk_7_@_ZN6duckdb25StandardColumnWriterStateIllNS_26ParquetTimestampNSOperatorEEC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm:bb.a
  store i64 %3, ptr %i.d, align 8, !tbaa !747
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, i8 0, i64 72, i1 false)
  %i.g = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #28
          to label %_ZN6duckdb26PrimitiveColumnWriterStateC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm.exit unwind label %bb.b ; 3 uses

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @_ZNSt10unique_ptrIN6duckdb18ParquetBloomFilterESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #25
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !724  ; 3 uses
  %.not.i6.i = icmp eq ptr %i.k, null
  br i1 %.not.i6.i, label %_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN6duckdb22ColumnWriterStatisticsEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb22ColumnWriterStatisticsEEclEPS1_.exit.i.i: ; preds = %bb.b
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.k) #25, !inline_history !748
  br label %_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN6duckdb22ColumnWriterStatisticsEEclEPS1_.exit.i.i, %bb.b
  tail call void @_ZNSt6vectorIN6duckdb20PageWriteInformationESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #25
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !749  ; 2 uses
  %.not.i.i.i7.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i7.i, label %_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.o) #24
  br label %_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i

common.resume:                                    ; preds = %bb.k, %_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.h, %_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i ], [ %.pn, %bb.k ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i: ; preds = %bb.c, %_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i
  tail call void @_ZN6duckdb17ColumnWriterStateD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(192) %0) #25
  br label %common.resume

_ZN6duckdb26PrimitiveColumnWriterStateC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm.exit: ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !749
  store ptr %i.r, ptr %i.q, align 8, !tbaa !750
  store ptr %i.r, ptr %i.p, align 8, !tbaa !751
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb25StandardColumnWriterStateIllNS_26ParquetTimestampNSOperatorEEE, i64 16), ptr %0, align 8, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.s, i8 0, i64 20, i1 false)
  %i.u = load ptr, ptr %1, align 8, !tbaa !193, !nonnull !78, !align !79
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb15BufferAllocator3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %i.u)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %_ZN6duckdb26PrimitiveColumnWriterStateC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.sroa.0.0.copyload.i = load i64, ptr %i.w, align 8, !tbaa !191 ; 2 uses
  %.not = icmp eq i64 %.sroa.0.0.copyload.i, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %.sroa.0.0.copyload.i, ptr %4, align 8
  %i.x = invoke noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.g unwind label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.z = load i64, ptr %i.y, align 8, !tbaa !752
  %i.aa = invoke noundef i64 @_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl(i64 noundef %i.z)
          to label %_ZN6duckdb11NumericCastImlvEET_T0_.exit unwind label %bb.j

_ZN6duckdb11NumericCastImlvEET_T0_.exit:          ; preds = %bb.f
  %i.ab = udiv i64 %i.aa, 5
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %_ZN6duckdb11NumericCastImlvEET_T0_.exit
  %i.ac = phi i64 [ %i.ab, %_ZN6duckdb11NumericCastImlvEET_T0_.exit ], [ %i.x, %bb.e ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !765
  invoke void @_ZN6duckdb19PrimitiveDictionaryIllNS_26ParquetTimestampNSOperatorEEC2ERNS_9AllocatorEmm(ptr noundef nonnull align 8 dereferenceable(153) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 noundef %i.ac, i64 noundef %i.ae)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i32 0, ptr %i.af, align 8, !tbaa !1453
  ret void

bb.i:                                             ; preds = %_ZN6duckdb26PrimitiveColumnWriterStateC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.f, %bb.g, %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.j ], [ %i.ag, %bb.i ]
  call void @_ZN6duckdb26PrimitiveColumnWriterStateD2Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) #25
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb19PrimitiveDictionaryIllNS_26ParquetTimestampNSOperatorEEC2ERNS_9AllocatorEmm(ptr noundef nonnull align 8 dereferenceable(153) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !766
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.a, align 8, !tbaa !1493
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 0, ptr %i.b, align 8, !tbaa !1461
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = shl i64 %2, 1
  %i.e = tail call noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.d) ; 3 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !1487
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = add i64 %i.e, -1
  store i64 %i.g, ptr %i.f, align 8, !tbaa !1494
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %3, ptr %i.h, align 8, !tbaa !1495
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !1496, !nonnull !78, !align !79 ; 2 uses
  %i.k = shl i64 %i.e, 4                          ; 2 uses
  %i.l = tail call noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 noundef %i.k), !noalias !1497
  tail call void @_ZN6duckdb13AllocatedDataC1ERNS_9AllocatorEPhm(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef %i.l, i64 noundef %i.k)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !1496, !nonnull !78, !align !79 ; 2 uses
  %i.o = load i64, ptr %i.c, align 8, !tbaa !1487
  %i.p = shl i64 %i.o, 3                          ; 2 uses
  %i.q = invoke noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 noundef %i.p)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.a
  invoke void @_ZN6duckdb13AllocatedDataC1ERNS_9AllocatorEPhm(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef %i.q, i64 noundef %i.p)
          to label %_ZN6duckdb9Allocator8AllocateEm.exit unwind label %bb.c

_ZN6duckdb9Allocator8AllocateEm.exit:             ; preds = %.noexc
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !197
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.v = load i64, ptr %i.u, align 8, !tbaa !774
  invoke void @_ZN6duckdb12MemoryStreamC1EPhm(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef %i.t, i64 noundef %i.v)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN6duckdb9Allocator8AllocateEm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !197  ; 10 uses
  store ptr %i.y, ptr %i.w, align 8, !tbaa !1488
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  store i8 0, ptr %i.z, align 8, !tbaa !1462
  %i.aa = load i64, ptr %i.c, align 8, !tbaa !1487 ; 4 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZN6duckdb19PrimitiveDictionaryIllNS_26ParquetTimestampNSOperatorEE5ClearEv.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %xtraiter = and i64 %i.aa, 7                    ; 3 uses
  %i.ab = icmp ult i64 %i.aa, 8
  br i1 %i.ab, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.aa, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.03.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.as, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.03.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i32 -1, ptr %i.ad, align 8, !tbaa !1489
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.03.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store i32 -1, ptr %i.af, align 8, !tbaa !1489
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.03.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  store i32 -1, ptr %i.ah, align 8, !tbaa !1489
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.03.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  store i32 -1, ptr %i.aj, align 8, !tbaa !1489
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.03.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 72
  store i32 -1, ptr %i.al, align 8, !tbaa !1489
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.03.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 88
  store i32 -1, ptr %i.an, align 8, !tbaa !1489
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.03.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 104
  store i32 -1, ptr %i.ap, align 8, !tbaa !1489
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.03.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 120
  store i32 -1, ptr %i.ar, align 8, !tbaa !1489
  %i.as = add nuw i64 %.03.i, 8                   ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN6duckdb19PrimitiveDictionaryIllNS_26ParquetTimestampNSOperatorEE5ClearEv.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !1500

_ZN6duckdb19PrimitiveDictionaryIllNS_26ParquetTimestampNSOperatorEE5ClearEv.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb19PrimitiveDictionaryIllNS_26ParquetTimestampNSOperatorEE5ClearEv.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN6duckdb19PrimitiveDictionaryIllNS_26ParquetTimestampNSOperatorEE5ClearEv.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.03.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.as, %_ZN6duckdb19PrimitiveDictionaryIllNS_26ParquetTimestampNSOperatorEE5ClearEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod8 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod8)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.03.i.epil = phi i64 [ %i.av, %.lr.ph.i.epil ], [ %.03.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.03.i.epil
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i32 -1, ptr %i.au, align 8, !tbaa !1489
  %i.av = add nuw i64 %.03.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN6duckdb19PrimitiveDictionaryIllNS_26ParquetTimestampNSOperatorEE5ClearEv.exit, label %.lr.ph.i.epil, !llvm.loop !1501

_ZN6duckdb19PrimitiveDictionaryIllNS_26ParquetTimestampNSOperatorEE5ClearEv.exit: ; preds = %_ZN6duckdb19PrimitiveDictionaryIllNS_26ParquetTimestampNSOperatorEE5ClearEv.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.b
  store i32 0, ptr %i.b, align 8, !tbaa !1461
  store i8 0, ptr %i.z, align 8, !tbaa !1462
  ret void

bb.c:                                             ; preds = %.noexc, %bb.a
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %_ZN6duckdb9Allocator8AllocateEm.exit
  %i.ax = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.m) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.ax, %bb.d ], [ %i.aw, %bb.c ]
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.i) #25
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6duckdb25StandardColumnWriterStateIllNS_26ParquetTimestampNSOperatorEED2Ev(ptr noundef nonnull align 8 dereferenceable(380) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb25StandardColumnWriterStateIllNS_26ParquetTimestampNSOperatorEEE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  tail call void @_ZN6duckdb12MemoryStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #25
  tail call void @_ZN6duckdb26PrimitiveColumnWriterStateD2Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6duckdb25StandardColumnWriterStateIllNS_26ParquetTimestampNSOperatorEED0Ev(ptr noundef nonnull align 8 dereferenceable(380) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb25StandardColumnWriterStateIllNS_26ParquetTimestampNSOperatorEEE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  tail call void @_ZN6duckdb12MemoryStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #25, !inline_history !1502
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #25, !inline_history !1502
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #25, !inline_history !1502
  tail call void @_ZN6duckdb26PrimitiveColumnWriterStateD2Ev(ptr noundef nonnull align 8 dereferenceable(380) %0) #25, !inline_history !1502
  tail call void @_ZdlPv(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb19PrimitiveDictionaryIllNS_26ParquetTimestampNSOperatorEE6InsertILb1EEEvl(ptr noundef nonnull align 8 dereferenceable(153) %0, i64 noundef %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !1462, !range !250, !noundef !78
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_ZNK6duckdb19PrimitiveDictionaryIllNS_26ParquetTimestampNSOperatorEE6LookupERKl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = lshr i64 %1, 32
  %i.f = xor i64 %i.e, %1
  %i.g = mul i64 %i.f, -2960836687051489901       ; 2 uses
  %i.h = lshr i64 %i.g, 32
  %i.i = xor i64 %i.h, %i.g
  %i.j = mul i64 %i.i, -2960836687051489901       ; 2 uses
  %i.k = lshr i64 %i.j, 32
  %i.l = xor i64 %i.k, %i.j
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load i64, ptr %i.m, align 8, !tbaa !1494 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1488 ; 2 uses
  %.07.i = and i64 %i.n, %i.l                     ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %.07.i ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !1489
  %i.t = icmp eq i32 %i.s, -1
  br i1 %i.t, label %.loopexit, label %.lr.ph.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.u = add i64 %.08.i, 1
  %.0.i = and i64 %i.u, %i.n                      ; 2 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %.0.i ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !1489
  %i.y = icmp eq i32 %i.x, -1
  br i1 %i.y, label %.loopexit, label %.lr.ph.i, !llvm.loop !1503

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.z = phi ptr [ %i.v, %bb.c ], [ %i.q, %bb.b ]
  %.08.i = phi i64 [ %.0.i, %bb.c ], [ %.07.i, %bb.b ]
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !1504
  %.not.i.not = icmp eq i64 %i.aa, %1
  br i1 %.not.i.not, label %_ZNK6duckdb19PrimitiveDictionaryIllNS_26ParquetTimestampNSOperatorEE6LookupERKl.exit, label %bb.c

.loopexit:                                        ; preds = %bb.c, %bb.b
  %.lcssa.i.ph = phi ptr [ %i.q, %bb.b ], [ %i.v, %bb.c ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.lcssa.i.ph, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !1461
  %i.ae = add i32 %i.ad, 1
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !1493
  %i.ai = icmp ult i64 %i.ah, %i.af
  br i1 %i.ai, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %1, ptr %i.a, align 8, !tbaa !191
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.ak = tail call noundef i64 @_ZNK6duckdb12MemoryStream11GetPositionEv(ptr noundef nonnull align 8 dereferenceable(48) %i.aj)
  %i.al = add i64 %i.ak, 8
  %i.am = tail call noundef i64 @_ZNK6duckdb12MemoryStream11GetCapacityEv(ptr noundef nonnull align 8 dereferenceable(48) %i.aj)
  %.not = icmp ugt i64 %i.al, %i.am
  br i1 %.not, label %_ZN6duckdb19PrimitiveDictionaryIllNS_26ParquetTimestampNSOperatorEE11AddToTargetIlTnNSt9enable_ifIXntsr3std7is_sameIT_NS_8string_tEEE5valueEiE4typeELi0EEEbRKl.exit, label %bb.f

_ZN6duckdb19PrimitiveDictionaryIllNS_26ParquetTimestampNSOperatorEE11AddToTargetIlTnNSt9enable_ifIXntsr3std7is_sameIT_NS_8string_tEEE5valueEiE4typeELi0EEEbRKl.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb19PrimitiveDictionaryIllNS_26ParquetTimestampNSOperatorEE11AddToTargetIlTnNSt9enable_ifIXntsr3std7is_sameIT_NS_8string_tEEE5valueEiE4typeELi0EEEbRKl.exit, %.loopexit
  store i8 1, ptr %i.b, align 8, !tbaa !1462
  br label %_ZNK6duckdb19PrimitiveDictionaryIllNS_26ParquetTimestampNSOperatorEE6LookupERKl.exit

bb.f:                                             ; preds = %bb.d
  %i.an = load ptr, ptr %i.aj, align 8, !tbaa !15
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 8), !inline_history !1505
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  store i64 %1, ptr %.lcssa.i.ph, align 8, !tbaa !1504
  %i.ap = load i32, ptr %i.ac, align 8, !tbaa !1461 ; 2 uses
  %i.aq = add i32 %i.ap, 1
  store i32 %i.aq, ptr %i.ac, align 8, !tbaa !1461
  store i32 %i.ap, ptr %i.ab, align 8, !tbaa !1489
  br label %_ZNK6duckdb19PrimitiveDictionaryIllNS_26ParquetTimestampNSOperatorEE6LookupERKl.exit

_ZNK6duckdb19PrimitiveDictionaryIllNS_26ParquetTimestampNSOperatorEE6LookupERKl.exit: ; preds = %.lr.ph.i, %bb.e, %bb.f, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb23StandardWriterPageStateIllNS_26ParquetTimestampNSOperatorEEC2EmmN14duckdb_parquet8Encoding4typeERKNS_19PrimitiveDictionaryIllS1_EE(ptr noundef nonnull align 8 dereferenceable(39176) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(153) %4) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb23StandardWriterPageStateIllNS_26ParquetTimestampNSOperatorEEE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %3, ptr %i.a, align 8, !tbaa !1473
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 0, ptr %i.b, align 4, !tbaa !1476
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %1, ptr %i.c, align 8, !tbaa !804
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.d, align 8, !tbaa !805
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 18496
  store i8 0, ptr %i.e, align 8, !tbaa !1479
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 18504
  store i64 %1, ptr %i.f, align 8, !tbaa !804
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 18512
  store i64 0, ptr %i.g, align 8, !tbaa !805
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 36984
  store i64 %2, ptr %i.h, align 8, !tbaa !806
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 36992 ; 2 uses
  tail call void @_ZN6duckdb13AllocatedDataC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 37016 ; 2 uses
  store ptr null, ptr %i.j, align 8, !tbaa !807
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 37024
  store i8 0, ptr %i.k, align 8, !tbaa !1480
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 37032
  store i64 %1, ptr %i.l, align 8, !tbaa !718
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 37040
  store i64 8, ptr %i.m, align 8, !tbaa !719
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 37048
  store i64 0, ptr %i.n, align 8, !tbaa !808
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 37056
  invoke void @_ZN6duckdb13AllocatedDataC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.o)
end_hunk_7
begin_hunk_8_@_ZN6duckdb25StandardColumnWriterStateIllNS_25ParquetTimestampSOperatorEEC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm:bb.a
  store i64 %3, ptr %i.d, align 8, !tbaa !747
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, i8 0, i64 72, i1 false)
  %i.g = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #28
          to label %_ZN6duckdb26PrimitiveColumnWriterStateC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm.exit unwind label %bb.b ; 3 uses

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @_ZNSt10unique_ptrIN6duckdb18ParquetBloomFilterESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #25
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !724  ; 3 uses
  %.not.i6.i = icmp eq ptr %i.k, null
  br i1 %.not.i6.i, label %_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN6duckdb22ColumnWriterStatisticsEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb22ColumnWriterStatisticsEEclEPS1_.exit.i.i: ; preds = %bb.b
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.k) #25, !inline_history !748
  br label %_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN6duckdb22ColumnWriterStatisticsEEclEPS1_.exit.i.i, %bb.b
  tail call void @_ZNSt6vectorIN6duckdb20PageWriteInformationESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #25
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !749  ; 2 uses
  %.not.i.i.i7.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i7.i, label %_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.o) #24
  br label %_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i

common.resume:                                    ; preds = %bb.k, %_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.h, %_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i ], [ %.pn, %bb.k ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i: ; preds = %bb.c, %_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i
  tail call void @_ZN6duckdb17ColumnWriterStateD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(192) %0) #25
  br label %common.resume

_ZN6duckdb26PrimitiveColumnWriterStateC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm.exit: ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !749
  store ptr %i.r, ptr %i.q, align 8, !tbaa !750
  store ptr %i.r, ptr %i.p, align 8, !tbaa !751
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb25StandardColumnWriterStateIllNS_25ParquetTimestampSOperatorEEE, i64 16), ptr %0, align 8, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.s, i8 0, i64 20, i1 false)
  %i.u = load ptr, ptr %1, align 8, !tbaa !193, !nonnull !78, !align !79
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb15BufferAllocator3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %i.u)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %_ZN6duckdb26PrimitiveColumnWriterStateC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.sroa.0.0.copyload.i = load i64, ptr %i.w, align 8, !tbaa !191 ; 2 uses
  %.not = icmp eq i64 %.sroa.0.0.copyload.i, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %.sroa.0.0.copyload.i, ptr %4, align 8
  %i.x = invoke noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.g unwind label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.z = load i64, ptr %i.y, align 8, !tbaa !752
  %i.aa = invoke noundef i64 @_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl(i64 noundef %i.z)
          to label %_ZN6duckdb11NumericCastImlvEET_T0_.exit unwind label %bb.j

_ZN6duckdb11NumericCastImlvEET_T0_.exit:          ; preds = %bb.f
  %i.ab = udiv i64 %i.aa, 5
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %_ZN6duckdb11NumericCastImlvEET_T0_.exit
  %i.ac = phi i64 [ %i.ab, %_ZN6duckdb11NumericCastImlvEET_T0_.exit ], [ %i.x, %bb.e ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !765
  invoke void @_ZN6duckdb19PrimitiveDictionaryIllNS_25ParquetTimestampSOperatorEEC2ERNS_9AllocatorEmm(ptr noundef nonnull align 8 dereferenceable(153) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 noundef %i.ac, i64 noundef %i.ae)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i32 0, ptr %i.af, align 8, !tbaa !1546
  ret void

bb.i:                                             ; preds = %_ZN6duckdb26PrimitiveColumnWriterStateC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.f, %bb.g, %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.j ], [ %i.ag, %bb.i ]
  call void @_ZN6duckdb26PrimitiveColumnWriterStateD2Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) #25
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb19PrimitiveDictionaryIllNS_25ParquetTimestampSOperatorEEC2ERNS_9AllocatorEmm(ptr noundef nonnull align 8 dereferenceable(153) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !766
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.a, align 8, !tbaa !1586
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 0, ptr %i.b, align 8, !tbaa !1554
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = shl i64 %2, 1
  %i.e = tail call noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.d) ; 3 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !1580
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = add i64 %i.e, -1
  store i64 %i.g, ptr %i.f, align 8, !tbaa !1587
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %3, ptr %i.h, align 8, !tbaa !1588
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !1589, !nonnull !78, !align !79 ; 2 uses
  %i.k = shl i64 %i.e, 4                          ; 2 uses
  %i.l = tail call noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 noundef %i.k), !noalias !1590
  tail call void @_ZN6duckdb13AllocatedDataC1ERNS_9AllocatorEPhm(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef %i.l, i64 noundef %i.k)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !1589, !nonnull !78, !align !79 ; 2 uses
  %i.o = load i64, ptr %i.c, align 8, !tbaa !1580
  %i.p = shl i64 %i.o, 3                          ; 2 uses
  %i.q = invoke noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 noundef %i.p)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.a
  invoke void @_ZN6duckdb13AllocatedDataC1ERNS_9AllocatorEPhm(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef %i.q, i64 noundef %i.p)
          to label %_ZN6duckdb9Allocator8AllocateEm.exit unwind label %bb.c

_ZN6duckdb9Allocator8AllocateEm.exit:             ; preds = %.noexc
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !197
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.v = load i64, ptr %i.u, align 8, !tbaa !774
  invoke void @_ZN6duckdb12MemoryStreamC1EPhm(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef %i.t, i64 noundef %i.v)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN6duckdb9Allocator8AllocateEm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !197  ; 10 uses
  store ptr %i.y, ptr %i.w, align 8, !tbaa !1581
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  store i8 0, ptr %i.z, align 8, !tbaa !1555
  %i.aa = load i64, ptr %i.c, align 8, !tbaa !1580 ; 4 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZN6duckdb19PrimitiveDictionaryIllNS_25ParquetTimestampSOperatorEE5ClearEv.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %xtraiter = and i64 %i.aa, 7                    ; 3 uses
  %i.ab = icmp ult i64 %i.aa, 8
  br i1 %i.ab, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.aa, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.03.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.as, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.03.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i32 -1, ptr %i.ad, align 8, !tbaa !1582
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.03.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store i32 -1, ptr %i.af, align 8, !tbaa !1582
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.03.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  store i32 -1, ptr %i.ah, align 8, !tbaa !1582
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.03.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  store i32 -1, ptr %i.aj, align 8, !tbaa !1582
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.03.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 72
  store i32 -1, ptr %i.al, align 8, !tbaa !1582
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.03.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 88
  store i32 -1, ptr %i.an, align 8, !tbaa !1582
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.03.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 104
  store i32 -1, ptr %i.ap, align 8, !tbaa !1582
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.03.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 120
  store i32 -1, ptr %i.ar, align 8, !tbaa !1582
  %i.as = add nuw i64 %.03.i, 8                   ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN6duckdb19PrimitiveDictionaryIllNS_25ParquetTimestampSOperatorEE5ClearEv.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !1593

_ZN6duckdb19PrimitiveDictionaryIllNS_25ParquetTimestampSOperatorEE5ClearEv.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb19PrimitiveDictionaryIllNS_25ParquetTimestampSOperatorEE5ClearEv.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN6duckdb19PrimitiveDictionaryIllNS_25ParquetTimestampSOperatorEE5ClearEv.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.03.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.as, %_ZN6duckdb19PrimitiveDictionaryIllNS_25ParquetTimestampSOperatorEE5ClearEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod8 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod8)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.03.i.epil = phi i64 [ %i.av, %.lr.ph.i.epil ], [ %.03.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.03.i.epil
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i32 -1, ptr %i.au, align 8, !tbaa !1582
  %i.av = add nuw i64 %.03.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN6duckdb19PrimitiveDictionaryIllNS_25ParquetTimestampSOperatorEE5ClearEv.exit, label %.lr.ph.i.epil, !llvm.loop !1594

_ZN6duckdb19PrimitiveDictionaryIllNS_25ParquetTimestampSOperatorEE5ClearEv.exit: ; preds = %_ZN6duckdb19PrimitiveDictionaryIllNS_25ParquetTimestampSOperatorEE5ClearEv.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.b
  store i32 0, ptr %i.b, align 8, !tbaa !1554
  store i8 0, ptr %i.z, align 8, !tbaa !1555
  ret void

bb.c:                                             ; preds = %.noexc, %bb.a
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %_ZN6duckdb9Allocator8AllocateEm.exit
  %i.ax = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.m) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.ax, %bb.d ], [ %i.aw, %bb.c ]
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.i) #25
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6duckdb25StandardColumnWriterStateIllNS_25ParquetTimestampSOperatorEED2Ev(ptr noundef nonnull align 8 dereferenceable(380) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb25StandardColumnWriterStateIllNS_25ParquetTimestampSOperatorEEE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  tail call void @_ZN6duckdb12MemoryStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #25
  tail call void @_ZN6duckdb26PrimitiveColumnWriterStateD2Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6duckdb25StandardColumnWriterStateIllNS_25ParquetTimestampSOperatorEED0Ev(ptr noundef nonnull align 8 dereferenceable(380) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb25StandardColumnWriterStateIllNS_25ParquetTimestampSOperatorEEE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  tail call void @_ZN6duckdb12MemoryStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #25, !inline_history !1595
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #25, !inline_history !1595
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #25, !inline_history !1595
  tail call void @_ZN6duckdb26PrimitiveColumnWriterStateD2Ev(ptr noundef nonnull align 8 dereferenceable(380) %0) #25, !inline_history !1595
  tail call void @_ZdlPv(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb19PrimitiveDictionaryIllNS_25ParquetTimestampSOperatorEE6InsertILb1EEEvl(ptr noundef nonnull align 8 dereferenceable(153) %0, i64 noundef %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !1555, !range !250, !noundef !78
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_ZNK6duckdb19PrimitiveDictionaryIllNS_25ParquetTimestampSOperatorEE6LookupERKl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = lshr i64 %1, 32
  %i.f = xor i64 %i.e, %1
  %i.g = mul i64 %i.f, -2960836687051489901       ; 2 uses
  %i.h = lshr i64 %i.g, 32
  %i.i = xor i64 %i.h, %i.g
  %i.j = mul i64 %i.i, -2960836687051489901       ; 2 uses
  %i.k = lshr i64 %i.j, 32
  %i.l = xor i64 %i.k, %i.j
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load i64, ptr %i.m, align 8, !tbaa !1587 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1581 ; 2 uses
  %.07.i = and i64 %i.n, %i.l                     ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %.07.i ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !1582
  %i.t = icmp eq i32 %i.s, -1
  br i1 %i.t, label %.loopexit, label %.lr.ph.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.u = add i64 %.08.i, 1
  %.0.i = and i64 %i.u, %i.n                      ; 2 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %.0.i ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !1582
  %i.y = icmp eq i32 %i.x, -1
  br i1 %i.y, label %.loopexit, label %.lr.ph.i, !llvm.loop !1596

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.z = phi ptr [ %i.v, %bb.c ], [ %i.q, %bb.b ]
  %.08.i = phi i64 [ %.0.i, %bb.c ], [ %.07.i, %bb.b ]
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !1597
  %.not.i.not = icmp eq i64 %i.aa, %1
  br i1 %.not.i.not, label %_ZNK6duckdb19PrimitiveDictionaryIllNS_25ParquetTimestampSOperatorEE6LookupERKl.exit, label %bb.c

.loopexit:                                        ; preds = %bb.c, %bb.b
  %.lcssa.i.ph = phi ptr [ %i.q, %bb.b ], [ %i.v, %bb.c ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.lcssa.i.ph, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !1554
  %i.ae = add i32 %i.ad, 1
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !1586
  %i.ai = icmp ult i64 %i.ah, %i.af
  br i1 %i.ai, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.aj = tail call noundef i64 @_ZN6duckdb9Timestamp32FromEpochSecondsPossiblyInfiniteEl(i64 noundef %1)
  store i64 %i.aj, ptr %i.a, align 8, !tbaa !191
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.al = tail call noundef i64 @_ZNK6duckdb12MemoryStream11GetPositionEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ak)
  %i.am = add i64 %i.al, 8
  %i.an = tail call noundef i64 @_ZNK6duckdb12MemoryStream11GetCapacityEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ak)
  %.not = icmp ugt i64 %i.am, %i.an
  br i1 %.not, label %_ZN6duckdb19PrimitiveDictionaryIllNS_25ParquetTimestampSOperatorEE11AddToTargetIlTnNSt9enable_ifIXntsr3std7is_sameIT_NS_8string_tEEE5valueEiE4typeELi0EEEbRKl.exit, label %bb.f

_ZN6duckdb19PrimitiveDictionaryIllNS_25ParquetTimestampSOperatorEE11AddToTargetIlTnNSt9enable_ifIXntsr3std7is_sameIT_NS_8string_tEEE5valueEiE4typeELi0EEEbRKl.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb19PrimitiveDictionaryIllNS_25ParquetTimestampSOperatorEE11AddToTargetIlTnNSt9enable_ifIXntsr3std7is_sameIT_NS_8string_tEEE5valueEiE4typeELi0EEEbRKl.exit, %.loopexit
  store i8 1, ptr %i.b, align 8, !tbaa !1555
  br label %_ZNK6duckdb19PrimitiveDictionaryIllNS_25ParquetTimestampSOperatorEE6LookupERKl.exit

bb.f:                                             ; preds = %bb.d
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !15
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 8), !inline_history !1598
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  store i64 %1, ptr %.lcssa.i.ph, align 8, !tbaa !1597
  %i.aq = load i32, ptr %i.ac, align 8, !tbaa !1554 ; 2 uses
  %i.ar = add i32 %i.aq, 1
  store i32 %i.ar, ptr %i.ac, align 8, !tbaa !1554
  store i32 %i.aq, ptr %i.ab, align 8, !tbaa !1582
  br label %_ZNK6duckdb19PrimitiveDictionaryIllNS_25ParquetTimestampSOperatorEE6LookupERKl.exit

_ZNK6duckdb19PrimitiveDictionaryIllNS_25ParquetTimestampSOperatorEE6LookupERKl.exit: ; preds = %.lr.ph.i, %bb.e, %bb.f, %bb.a
  ret void
}

declare i64 @_ZN6duckdb9Timestamp32FromEpochSecondsPossiblyInfiniteEl(i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb23StandardWriterPageStateIllNS_25ParquetTimestampSOperatorEEC2EmmN14duckdb_parquet8Encoding4typeERKNS_19PrimitiveDictionaryIllS1_EE(ptr noundef nonnull align 8 dereferenceable(39176) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(153) %4) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb23StandardWriterPageStateIllNS_25ParquetTimestampSOperatorEEE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %3, ptr %i.a, align 8, !tbaa !1566
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 0, ptr %i.b, align 4, !tbaa !1569
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %1, ptr %i.c, align 8, !tbaa !804
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.d, align 8, !tbaa !805
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 18496
  store i8 0, ptr %i.e, align 8, !tbaa !1572
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 18504
  store i64 %1, ptr %i.f, align 8, !tbaa !804
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 18512
  store i64 0, ptr %i.g, align 8, !tbaa !805
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 36984
  store i64 %2, ptr %i.h, align 8, !tbaa !806
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 36992 ; 2 uses
  tail call void @_ZN6duckdb13AllocatedDataC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 37016 ; 2 uses
  store ptr null, ptr %i.j, align 8, !tbaa !807
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 37024
  store i8 0, ptr %i.k, align 8, !tbaa !1573
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 37032
  store i64 %1, ptr %i.l, align 8, !tbaa !718
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 37040
  store i64 8, ptr %i.m, align 8, !tbaa !719
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 37048
end_hunk_8
begin_hunk_9_@_ZN6duckdb25StandardColumnWriterStateIhiNS_19ParquetCastOperatorEEC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm:bb.a
  store i64 %3, ptr %i.d, align 8, !tbaa !747
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, i8 0, i64 72, i1 false)
  %i.g = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #28
          to label %_ZN6duckdb26PrimitiveColumnWriterStateC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm.exit unwind label %bb.b ; 3 uses

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @_ZNSt10unique_ptrIN6duckdb18ParquetBloomFilterESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #25
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !724  ; 3 uses
  %.not.i6.i = icmp eq ptr %i.k, null
  br i1 %.not.i6.i, label %_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN6duckdb22ColumnWriterStatisticsEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb22ColumnWriterStatisticsEEclEPS1_.exit.i.i: ; preds = %bb.b
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.k) #25, !inline_history !748
  br label %_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN6duckdb22ColumnWriterStatisticsEEclEPS1_.exit.i.i, %bb.b
  tail call void @_ZNSt6vectorIN6duckdb20PageWriteInformationESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #25
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !749  ; 2 uses
  %.not.i.i.i7.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i7.i, label %_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.o) #24
  br label %_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i

common.resume:                                    ; preds = %bb.k, %_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.h, %_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i ], [ %.pn, %bb.k ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i: ; preds = %bb.c, %_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i
  tail call void @_ZN6duckdb17ColumnWriterStateD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(192) %0) #25
  br label %common.resume

_ZN6duckdb26PrimitiveColumnWriterStateC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm.exit: ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !749
  store ptr %i.r, ptr %i.q, align 8, !tbaa !750
  store ptr %i.r, ptr %i.p, align 8, !tbaa !751
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb25StandardColumnWriterStateIhiNS_19ParquetCastOperatorEEE, i64 16), ptr %0, align 8, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.s, i8 0, i64 20, i1 false)
  %i.u = load ptr, ptr %1, align 8, !tbaa !193, !nonnull !78, !align !79
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb15BufferAllocator3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %i.u)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %_ZN6duckdb26PrimitiveColumnWriterStateC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.sroa.0.0.copyload.i = load i64, ptr %i.w, align 8, !tbaa !191 ; 2 uses
  %.not = icmp eq i64 %.sroa.0.0.copyload.i, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %.sroa.0.0.copyload.i, ptr %4, align 8
  %i.x = invoke noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.g unwind label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.z = load i64, ptr %i.y, align 8, !tbaa !752
  %i.aa = invoke noundef i64 @_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl(i64 noundef %i.z)
          to label %_ZN6duckdb11NumericCastImlvEET_T0_.exit unwind label %bb.j

_ZN6duckdb11NumericCastImlvEET_T0_.exit:          ; preds = %bb.f
  %i.ab = udiv i64 %i.aa, 5
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %_ZN6duckdb11NumericCastImlvEET_T0_.exit
  %i.ac = phi i64 [ %i.ab, %_ZN6duckdb11NumericCastImlvEET_T0_.exit ], [ %i.x, %bb.e ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !765
  invoke void @_ZN6duckdb19PrimitiveDictionaryIhiNS_19ParquetCastOperatorEEC2ERNS_9AllocatorEmm(ptr noundef nonnull align 8 dereferenceable(153) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 noundef %i.ac, i64 noundef %i.ae)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i32 0, ptr %i.af, align 8, !tbaa !1639
  ret void

bb.i:                                             ; preds = %_ZN6duckdb26PrimitiveColumnWriterStateC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.f, %bb.g, %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.j ], [ %i.ag, %bb.i ]
  call void @_ZN6duckdb26PrimitiveColumnWriterStateD2Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) #25
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb19PrimitiveDictionaryIhiNS_19ParquetCastOperatorEEC2ERNS_9AllocatorEmm(ptr noundef nonnull align 8 dereferenceable(153) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !766
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.a, align 8, !tbaa !1684
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 0, ptr %i.b, align 8, !tbaa !1647
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = shl i64 %2, 1
  %i.e = tail call noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.d) ; 3 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !1678
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = add i64 %i.e, -1
  store i64 %i.g, ptr %i.f, align 8, !tbaa !1685
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %3, ptr %i.h, align 8, !tbaa !1686
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !1687, !nonnull !78, !align !79 ; 2 uses
  %i.k = shl i64 %i.e, 3                          ; 2 uses
  %i.l = tail call noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 noundef %i.k), !noalias !1688
  tail call void @_ZN6duckdb13AllocatedDataC1ERNS_9AllocatorEPhm(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef %i.l, i64 noundef %i.k)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !1687, !nonnull !78, !align !79 ; 2 uses
  %i.o = load i64, ptr %i.c, align 8, !tbaa !1678
  %i.p = shl i64 %i.o, 2                          ; 2 uses
  %i.q = invoke noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 noundef %i.p)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.a
  invoke void @_ZN6duckdb13AllocatedDataC1ERNS_9AllocatorEPhm(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef %i.q, i64 noundef %i.p)
          to label %_ZN6duckdb9Allocator8AllocateEm.exit unwind label %bb.c

_ZN6duckdb9Allocator8AllocateEm.exit:             ; preds = %.noexc
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !197
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.v = load i64, ptr %i.u, align 8, !tbaa !774
  invoke void @_ZN6duckdb12MemoryStreamC1EPhm(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef %i.t, i64 noundef %i.v)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN6duckdb9Allocator8AllocateEm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !197  ; 10 uses
  store ptr %i.y, ptr %i.w, align 8, !tbaa !1679
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  store i8 0, ptr %i.z, align 8, !tbaa !1648
  %i.aa = load i64, ptr %i.c, align 8, !tbaa !1678 ; 4 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZN6duckdb19PrimitiveDictionaryIhiNS_19ParquetCastOperatorEE5ClearEv.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %xtraiter = and i64 %i.aa, 7                    ; 3 uses
  %i.ab = icmp ult i64 %i.aa, 8
  br i1 %i.ab, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.aa, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.03.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.as, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.03.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store i32 -1, ptr %i.ad, align 4, !tbaa !1680
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.03.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store i32 -1, ptr %i.af, align 4, !tbaa !1680
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.03.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  store i32 -1, ptr %i.ah, align 4, !tbaa !1680
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.03.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 28
  store i32 -1, ptr %i.aj, align 4, !tbaa !1680
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.03.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 36
  store i32 -1, ptr %i.al, align 4, !tbaa !1680
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.03.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 44
  store i32 -1, ptr %i.an, align 4, !tbaa !1680
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.03.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 52
  store i32 -1, ptr %i.ap, align 4, !tbaa !1680
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.03.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 60
  store i32 -1, ptr %i.ar, align 4, !tbaa !1680
  %i.as = add nuw i64 %.03.i, 8                   ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN6duckdb19PrimitiveDictionaryIhiNS_19ParquetCastOperatorEE5ClearEv.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !1691

_ZN6duckdb19PrimitiveDictionaryIhiNS_19ParquetCastOperatorEE5ClearEv.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb19PrimitiveDictionaryIhiNS_19ParquetCastOperatorEE5ClearEv.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN6duckdb19PrimitiveDictionaryIhiNS_19ParquetCastOperatorEE5ClearEv.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.03.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.as, %_ZN6duckdb19PrimitiveDictionaryIhiNS_19ParquetCastOperatorEE5ClearEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod8 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod8)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.03.i.epil = phi i64 [ %i.av, %.lr.ph.i.epil ], [ %.03.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.03.i.epil
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  store i32 -1, ptr %i.au, align 4, !tbaa !1680
  %i.av = add nuw i64 %.03.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN6duckdb19PrimitiveDictionaryIhiNS_19ParquetCastOperatorEE5ClearEv.exit, label %.lr.ph.i.epil, !llvm.loop !1692

_ZN6duckdb19PrimitiveDictionaryIhiNS_19ParquetCastOperatorEE5ClearEv.exit: ; preds = %_ZN6duckdb19PrimitiveDictionaryIhiNS_19ParquetCastOperatorEE5ClearEv.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.b
  store i32 0, ptr %i.b, align 8, !tbaa !1647
  store i8 0, ptr %i.z, align 8, !tbaa !1648
  ret void

bb.c:                                             ; preds = %.noexc, %bb.a
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %_ZN6duckdb9Allocator8AllocateEm.exit
  %i.ax = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.m) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.ax, %bb.d ], [ %i.aw, %bb.c ]
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.i) #25
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6duckdb25StandardColumnWriterStateIhiNS_19ParquetCastOperatorEED2Ev(ptr noundef nonnull align 8 dereferenceable(380) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb25StandardColumnWriterStateIhiNS_19ParquetCastOperatorEEE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  tail call void @_ZN6duckdb12MemoryStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #25
  tail call void @_ZN6duckdb26PrimitiveColumnWriterStateD2Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6duckdb25StandardColumnWriterStateIhiNS_19ParquetCastOperatorEED0Ev(ptr noundef nonnull align 8 dereferenceable(380) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb25StandardColumnWriterStateIhiNS_19ParquetCastOperatorEEE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  tail call void @_ZN6duckdb12MemoryStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #25, !inline_history !1693
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #25, !inline_history !1693
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #25, !inline_history !1693
  tail call void @_ZN6duckdb26PrimitiveColumnWriterStateD2Ev(ptr noundef nonnull align 8 dereferenceable(380) %0) #25, !inline_history !1693
  tail call void @_ZdlPv(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb19PrimitiveDictionaryIhiNS_19ParquetCastOperatorEE6InsertILb1EEEvh(ptr noundef nonnull align 8 dereferenceable(153) %0, i8 noundef zeroext %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !1648, !range !250, !noundef !78
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_ZNK6duckdb19PrimitiveDictionaryIhiNS_19ParquetCastOperatorEE6LookupERKh.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = zext i8 %1 to i64
  %i.f = mul i64 %i.e, -2960836687051489901       ; 2 uses
  %i.g = lshr i64 %i.f, 32
  %i.h = xor i64 %i.g, %i.f
  %i.i = mul i64 %i.h, -2960836687051489901       ; 2 uses
  %i.j = lshr i64 %i.i, 32
  %i.k = xor i64 %i.j, %i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !1685 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1679 ; 2 uses
  %.07.i = and i64 %i.m, %i.k                     ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.07.i ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !1680
  %i.s = icmp eq i32 %i.r, -1
  br i1 %i.s, label %.loopexit, label %.lr.ph.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.t = add i64 %.08.i, 1
  %.0.i = and i64 %i.t, %i.m                      ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.0.i ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !1680
  %i.x = icmp eq i32 %i.w, -1
  br i1 %i.x, label %.loopexit, label %.lr.ph.i, !llvm.loop !1694

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.y = phi ptr [ %i.u, %bb.c ], [ %i.p, %bb.b ]
  %.08.i = phi i64 [ %.0.i, %bb.c ], [ %.07.i, %bb.b ]
  %i.z = load i8, ptr %i.y, align 4, !tbaa !1695
  %.not.i.not = icmp eq i8 %i.z, %1
  br i1 %.not.i.not, label %_ZNK6duckdb19PrimitiveDictionaryIhiNS_19ParquetCastOperatorEE6LookupERKh.exit, label %bb.c

.loopexit:                                        ; preds = %bb.c, %bb.b
  %.lcssa.i.ph = phi ptr [ %i.p, %bb.b ], [ %i.u, %bb.c ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.lcssa.i.ph, i64 4
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !1647
  %i.ad = add i32 %i.ac, 1
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !1684
  %i.ah = icmp ult i64 %i.ag, %i.ae
  br i1 %i.ah, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.ai = zext i8 %1 to i32
  store i32 %i.ai, ptr %i.a, align 4, !tbaa !3
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.ak = tail call noundef i64 @_ZNK6duckdb12MemoryStream11GetPositionEv(ptr noundef nonnull align 8 dereferenceable(48) %i.aj)
  %i.al = add i64 %i.ak, 4
  %i.am = tail call noundef i64 @_ZNK6duckdb12MemoryStream11GetCapacityEv(ptr noundef nonnull align 8 dereferenceable(48) %i.aj)
  %.not = icmp ugt i64 %i.al, %i.am
  br i1 %.not, label %_ZN6duckdb19PrimitiveDictionaryIhiNS_19ParquetCastOperatorEE11AddToTargetIhTnNSt9enable_ifIXntsr3std7is_sameIT_NS_8string_tEEE5valueEiE4typeELi0EEEbRKh.exit, label %bb.f

_ZN6duckdb19PrimitiveDictionaryIhiNS_19ParquetCastOperatorEE11AddToTargetIhTnNSt9enable_ifIXntsr3std7is_sameIT_NS_8string_tEEE5valueEiE4typeELi0EEEbRKh.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb19PrimitiveDictionaryIhiNS_19ParquetCastOperatorEE11AddToTargetIhTnNSt9enable_ifIXntsr3std7is_sameIT_NS_8string_tEEE5valueEiE4typeELi0EEEbRKh.exit, %.loopexit
  store i8 1, ptr %i.b, align 8, !tbaa !1648
  br label %_ZNK6duckdb19PrimitiveDictionaryIhiNS_19ParquetCastOperatorEE6LookupERKh.exit

bb.f:                                             ; preds = %bb.d
  %i.an = load ptr, ptr %i.aj, align 8, !tbaa !15
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i64 noundef 4), !inline_history !1696
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  store i8 %1, ptr %.lcssa.i.ph, align 4, !tbaa !1695
  %i.ap = load i32, ptr %i.ab, align 8, !tbaa !1647 ; 2 uses
  %i.aq = add i32 %i.ap, 1
  store i32 %i.aq, ptr %i.ab, align 8, !tbaa !1647
  store i32 %i.ap, ptr %i.aa, align 4, !tbaa !1680
  br label %_ZNK6duckdb19PrimitiveDictionaryIhiNS_19ParquetCastOperatorEE6LookupERKh.exit

_ZNK6duckdb19PrimitiveDictionaryIhiNS_19ParquetCastOperatorEE6LookupERKh.exit: ; preds = %.lr.ph.i, %bb.e, %bb.f, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !394
  %i.e = add i8 %i.d, -1
  %i.f = icmp ult i8 %i.e, 2
  br i1 %i.f, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.35, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 2, ptr %i.a, align 1, !tbaa !797
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.h = load i8, ptr %i.c, align 1, !tbaa !394
  store i8 %i.h, ptr %i.b, align 1, !tbaa !797
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
end_hunk_9
begin_hunk_10_@_ZN6duckdb25StandardColumnWriterStateItiNS_19ParquetCastOperatorEEC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm:bb.a
  store i64 %3, ptr %i.d, align 8, !tbaa !747
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, i8 0, i64 72, i1 false)
  %i.g = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #28
          to label %_ZN6duckdb26PrimitiveColumnWriterStateC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm.exit unwind label %bb.b ; 3 uses

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @_ZNSt10unique_ptrIN6duckdb18ParquetBloomFilterESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #25
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !724  ; 3 uses
  %.not.i6.i = icmp eq ptr %i.k, null
  br i1 %.not.i6.i, label %_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN6duckdb22ColumnWriterStatisticsEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb22ColumnWriterStatisticsEEclEPS1_.exit.i.i: ; preds = %bb.b
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.k) #25, !inline_history !748
  br label %_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN6duckdb22ColumnWriterStatisticsEEclEPS1_.exit.i.i, %bb.b
  tail call void @_ZNSt6vectorIN6duckdb20PageWriteInformationESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #25
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !749  ; 2 uses
  %.not.i.i.i7.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i7.i, label %_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.o) #24
  br label %_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i

common.resume:                                    ; preds = %bb.k, %_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.h, %_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i ], [ %.pn, %bb.k ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i: ; preds = %bb.c, %_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i
  tail call void @_ZN6duckdb17ColumnWriterStateD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(192) %0) #25
  br label %common.resume

_ZN6duckdb26PrimitiveColumnWriterStateC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm.exit: ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !749
  store ptr %i.r, ptr %i.q, align 8, !tbaa !750
  store ptr %i.r, ptr %i.p, align 8, !tbaa !751
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb25StandardColumnWriterStateItiNS_19ParquetCastOperatorEEE, i64 16), ptr %0, align 8, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.s, i8 0, i64 20, i1 false)
  %i.u = load ptr, ptr %1, align 8, !tbaa !193, !nonnull !78, !align !79
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb15BufferAllocator3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %i.u)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %_ZN6duckdb26PrimitiveColumnWriterStateC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.sroa.0.0.copyload.i = load i64, ptr %i.w, align 8, !tbaa !191 ; 2 uses
  %.not = icmp eq i64 %.sroa.0.0.copyload.i, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %.sroa.0.0.copyload.i, ptr %4, align 8
  %i.x = invoke noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.g unwind label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.z = load i64, ptr %i.y, align 8, !tbaa !752
  %i.aa = invoke noundef i64 @_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl(i64 noundef %i.z)
          to label %_ZN6duckdb11NumericCastImlvEET_T0_.exit unwind label %bb.j

_ZN6duckdb11NumericCastImlvEET_T0_.exit:          ; preds = %bb.f
  %i.ab = udiv i64 %i.aa, 5
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %_ZN6duckdb11NumericCastImlvEET_T0_.exit
  %i.ac = phi i64 [ %i.ab, %_ZN6duckdb11NumericCastImlvEET_T0_.exit ], [ %i.x, %bb.e ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !765
  invoke void @_ZN6duckdb19PrimitiveDictionaryItiNS_19ParquetCastOperatorEEC2ERNS_9AllocatorEmm(ptr noundef nonnull align 8 dereferenceable(153) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 noundef %i.ac, i64 noundef %i.ae)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i32 0, ptr %i.af, align 8, !tbaa !1737
  ret void

bb.i:                                             ; preds = %_ZN6duckdb26PrimitiveColumnWriterStateC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.f, %bb.g, %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.j ], [ %i.ag, %bb.i ]
  call void @_ZN6duckdb26PrimitiveColumnWriterStateD2Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) #25
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb19PrimitiveDictionaryItiNS_19ParquetCastOperatorEEC2ERNS_9AllocatorEmm(ptr noundef nonnull align 8 dereferenceable(153) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !766
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.a, align 8, !tbaa !1782
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 0, ptr %i.b, align 8, !tbaa !1745
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = shl i64 %2, 1
  %i.e = tail call noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.d) ; 3 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !1776
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = add i64 %i.e, -1
  store i64 %i.g, ptr %i.f, align 8, !tbaa !1783
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %3, ptr %i.h, align 8, !tbaa !1784
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !1785, !nonnull !78, !align !79 ; 2 uses
  %i.k = shl i64 %i.e, 3                          ; 2 uses
  %i.l = tail call noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 noundef %i.k), !noalias !1786
  tail call void @_ZN6duckdb13AllocatedDataC1ERNS_9AllocatorEPhm(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef %i.l, i64 noundef %i.k)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !1785, !nonnull !78, !align !79 ; 2 uses
  %i.o = load i64, ptr %i.c, align 8, !tbaa !1776
  %i.p = shl i64 %i.o, 2                          ; 2 uses
  %i.q = invoke noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 noundef %i.p)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.a
  invoke void @_ZN6duckdb13AllocatedDataC1ERNS_9AllocatorEPhm(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef %i.q, i64 noundef %i.p)
          to label %_ZN6duckdb9Allocator8AllocateEm.exit unwind label %bb.c

_ZN6duckdb9Allocator8AllocateEm.exit:             ; preds = %.noexc
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !197
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.v = load i64, ptr %i.u, align 8, !tbaa !774
  invoke void @_ZN6duckdb12MemoryStreamC1EPhm(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef %i.t, i64 noundef %i.v)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN6duckdb9Allocator8AllocateEm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !197  ; 10 uses
  store ptr %i.y, ptr %i.w, align 8, !tbaa !1777
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  store i8 0, ptr %i.z, align 8, !tbaa !1746
  %i.aa = load i64, ptr %i.c, align 8, !tbaa !1776 ; 4 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZN6duckdb19PrimitiveDictionaryItiNS_19ParquetCastOperatorEE5ClearEv.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %xtraiter = and i64 %i.aa, 7                    ; 3 uses
  %i.ab = icmp ult i64 %i.aa, 8
  br i1 %i.ab, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.aa, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.03.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.as, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.03.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store i32 -1, ptr %i.ad, align 4, !tbaa !1778
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.03.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store i32 -1, ptr %i.af, align 4, !tbaa !1778
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.03.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  store i32 -1, ptr %i.ah, align 4, !tbaa !1778
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.03.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 28
  store i32 -1, ptr %i.aj, align 4, !tbaa !1778
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.03.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 36
  store i32 -1, ptr %i.al, align 4, !tbaa !1778
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.03.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 44
  store i32 -1, ptr %i.an, align 4, !tbaa !1778
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.03.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 52
  store i32 -1, ptr %i.ap, align 4, !tbaa !1778
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.03.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 60
  store i32 -1, ptr %i.ar, align 4, !tbaa !1778
  %i.as = add nuw i64 %.03.i, 8                   ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN6duckdb19PrimitiveDictionaryItiNS_19ParquetCastOperatorEE5ClearEv.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !1789

_ZN6duckdb19PrimitiveDictionaryItiNS_19ParquetCastOperatorEE5ClearEv.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb19PrimitiveDictionaryItiNS_19ParquetCastOperatorEE5ClearEv.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN6duckdb19PrimitiveDictionaryItiNS_19ParquetCastOperatorEE5ClearEv.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.03.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.as, %_ZN6duckdb19PrimitiveDictionaryItiNS_19ParquetCastOperatorEE5ClearEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod8 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod8)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.03.i.epil = phi i64 [ %i.av, %.lr.ph.i.epil ], [ %.03.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.03.i.epil
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  store i32 -1, ptr %i.au, align 4, !tbaa !1778
  %i.av = add nuw i64 %.03.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN6duckdb19PrimitiveDictionaryItiNS_19ParquetCastOperatorEE5ClearEv.exit, label %.lr.ph.i.epil, !llvm.loop !1790

_ZN6duckdb19PrimitiveDictionaryItiNS_19ParquetCastOperatorEE5ClearEv.exit: ; preds = %_ZN6duckdb19PrimitiveDictionaryItiNS_19ParquetCastOperatorEE5ClearEv.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.b
  store i32 0, ptr %i.b, align 8, !tbaa !1745
  store i8 0, ptr %i.z, align 8, !tbaa !1746
  ret void

bb.c:                                             ; preds = %.noexc, %bb.a
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %_ZN6duckdb9Allocator8AllocateEm.exit
  %i.ax = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.m) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.ax, %bb.d ], [ %i.aw, %bb.c ]
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.i) #25
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6duckdb25StandardColumnWriterStateItiNS_19ParquetCastOperatorEED2Ev(ptr noundef nonnull align 8 dereferenceable(380) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb25StandardColumnWriterStateItiNS_19ParquetCastOperatorEEE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  tail call void @_ZN6duckdb12MemoryStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #25
  tail call void @_ZN6duckdb26PrimitiveColumnWriterStateD2Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6duckdb25StandardColumnWriterStateItiNS_19ParquetCastOperatorEED0Ev(ptr noundef nonnull align 8 dereferenceable(380) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb25StandardColumnWriterStateItiNS_19ParquetCastOperatorEEE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  tail call void @_ZN6duckdb12MemoryStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #25, !inline_history !1791
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #25, !inline_history !1791
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #25, !inline_history !1791
  tail call void @_ZN6duckdb26PrimitiveColumnWriterStateD2Ev(ptr noundef nonnull align 8 dereferenceable(380) %0) #25, !inline_history !1791
  tail call void @_ZdlPv(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb19PrimitiveDictionaryItiNS_19ParquetCastOperatorEE6InsertILb1EEEvt(ptr noundef nonnull align 8 dereferenceable(153) %0, i16 noundef zeroext %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !1746, !range !250, !noundef !78
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_ZNK6duckdb19PrimitiveDictionaryItiNS_19ParquetCastOperatorEE6LookupERKt.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = zext i16 %1 to i64
  %i.f = mul i64 %i.e, -2960836687051489901       ; 2 uses
  %i.g = lshr i64 %i.f, 32
  %i.h = xor i64 %i.g, %i.f
  %i.i = mul i64 %i.h, -2960836687051489901       ; 2 uses
  %i.j = lshr i64 %i.i, 32
  %i.k = xor i64 %i.j, %i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !1783 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1777 ; 2 uses
  %.07.i = and i64 %i.m, %i.k                     ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.07.i ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !1778
  %i.s = icmp eq i32 %i.r, -1
  br i1 %i.s, label %.loopexit, label %.lr.ph.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.t = add i64 %.08.i, 1
  %.0.i = and i64 %i.t, %i.m                      ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.0.i ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !1778
  %i.x = icmp eq i32 %i.w, -1
  br i1 %i.x, label %.loopexit, label %.lr.ph.i, !llvm.loop !1792

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.y = phi ptr [ %i.u, %bb.c ], [ %i.p, %bb.b ]
  %.08.i = phi i64 [ %.0.i, %bb.c ], [ %.07.i, %bb.b ]
  %i.z = load i16, ptr %i.y, align 4, !tbaa !1793
  %.not.i.not = icmp eq i16 %i.z, %1
  br i1 %.not.i.not, label %_ZNK6duckdb19PrimitiveDictionaryItiNS_19ParquetCastOperatorEE6LookupERKt.exit, label %bb.c

.loopexit:                                        ; preds = %bb.c, %bb.b
  %.lcssa.i.ph = phi ptr [ %i.p, %bb.b ], [ %i.u, %bb.c ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.lcssa.i.ph, i64 4
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !1745
  %i.ad = add i32 %i.ac, 1
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !1782
  %i.ah = icmp ult i64 %i.ag, %i.ae
  br i1 %i.ah, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.ai = zext i16 %1 to i32
  store i32 %i.ai, ptr %i.a, align 4, !tbaa !3
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.ak = tail call noundef i64 @_ZNK6duckdb12MemoryStream11GetPositionEv(ptr noundef nonnull align 8 dereferenceable(48) %i.aj)
  %i.al = add i64 %i.ak, 4
  %i.am = tail call noundef i64 @_ZNK6duckdb12MemoryStream11GetCapacityEv(ptr noundef nonnull align 8 dereferenceable(48) %i.aj)
  %.not = icmp ugt i64 %i.al, %i.am
  br i1 %.not, label %_ZN6duckdb19PrimitiveDictionaryItiNS_19ParquetCastOperatorEE11AddToTargetItTnNSt9enable_ifIXntsr3std7is_sameIT_NS_8string_tEEE5valueEiE4typeELi0EEEbRKt.exit, label %bb.f

_ZN6duckdb19PrimitiveDictionaryItiNS_19ParquetCastOperatorEE11AddToTargetItTnNSt9enable_ifIXntsr3std7is_sameIT_NS_8string_tEEE5valueEiE4typeELi0EEEbRKt.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb19PrimitiveDictionaryItiNS_19ParquetCastOperatorEE11AddToTargetItTnNSt9enable_ifIXntsr3std7is_sameIT_NS_8string_tEEE5valueEiE4typeELi0EEEbRKt.exit, %.loopexit
  store i8 1, ptr %i.b, align 8, !tbaa !1746
  br label %_ZNK6duckdb19PrimitiveDictionaryItiNS_19ParquetCastOperatorEE6LookupERKt.exit

bb.f:                                             ; preds = %bb.d
  %i.an = load ptr, ptr %i.aj, align 8, !tbaa !15
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i64 noundef 4), !inline_history !1794
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  store i16 %1, ptr %.lcssa.i.ph, align 4, !tbaa !1793
  %i.ap = load i32, ptr %i.ab, align 8, !tbaa !1745 ; 2 uses
  %i.aq = add i32 %i.ap, 1
  store i32 %i.aq, ptr %i.ab, align 8, !tbaa !1745
  store i32 %i.ap, ptr %i.aa, align 4, !tbaa !1778
  br label %_ZNK6duckdb19PrimitiveDictionaryItiNS_19ParquetCastOperatorEE6LookupERKt.exit

_ZNK6duckdb19PrimitiveDictionaryItiNS_19ParquetCastOperatorEE6LookupERKt.exit: ; preds = %.lr.ph.i, %bb.e, %bb.f, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb14ConstantVector16VerifyVectorTypeItEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !394
  %i.e = icmp eq i8 %i.d, 4
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.35, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 4, ptr %i.a, align 1, !tbaa !797
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.g = load i8, ptr %i.c, align 1, !tbaa !394
  store i8 %i.g, ptr %i.b, align 1, !tbaa !797
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
end_hunk_10
begin_hunk_11_@_ZN6duckdb25StandardColumnWriterStateIjjNS_19ParquetCastOperatorEEC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm:bb.a
  store i64 %3, ptr %i.d, align 8, !tbaa !747
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, i8 0, i64 72, i1 false)
  %i.g = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #28
          to label %_ZN6duckdb26PrimitiveColumnWriterStateC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm.exit unwind label %bb.b ; 3 uses

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @_ZNSt10unique_ptrIN6duckdb18ParquetBloomFilterESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #25
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !724  ; 3 uses
  %.not.i6.i = icmp eq ptr %i.k, null
  br i1 %.not.i6.i, label %_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN6duckdb22ColumnWriterStatisticsEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb22ColumnWriterStatisticsEEclEPS1_.exit.i.i: ; preds = %bb.b
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.k) #25, !inline_history !748
  br label %_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN6duckdb22ColumnWriterStatisticsEEclEPS1_.exit.i.i, %bb.b
  tail call void @_ZNSt6vectorIN6duckdb20PageWriteInformationESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #25
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !749  ; 2 uses
  %.not.i.i.i7.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i7.i, label %_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.o) #24
  br label %_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i

common.resume:                                    ; preds = %bb.k, %_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.h, %_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i ], [ %.pn, %bb.k ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i: ; preds = %bb.c, %_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i
  tail call void @_ZN6duckdb17ColumnWriterStateD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(192) %0) #25
  br label %common.resume

_ZN6duckdb26PrimitiveColumnWriterStateC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm.exit: ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !749
  store ptr %i.r, ptr %i.q, align 8, !tbaa !750
  store ptr %i.r, ptr %i.p, align 8, !tbaa !751
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb25StandardColumnWriterStateIjjNS_19ParquetCastOperatorEEE, i64 16), ptr %0, align 8, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.s, i8 0, i64 20, i1 false)
  %i.u = load ptr, ptr %1, align 8, !tbaa !193, !nonnull !78, !align !79
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb15BufferAllocator3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %i.u)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %_ZN6duckdb26PrimitiveColumnWriterStateC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.sroa.0.0.copyload.i = load i64, ptr %i.w, align 8, !tbaa !191 ; 2 uses
  %.not = icmp eq i64 %.sroa.0.0.copyload.i, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %.sroa.0.0.copyload.i, ptr %4, align 8
  %i.x = invoke noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.g unwind label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.z = load i64, ptr %i.y, align 8, !tbaa !752
  %i.aa = invoke noundef i64 @_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl(i64 noundef %i.z)
          to label %_ZN6duckdb11NumericCastImlvEET_T0_.exit unwind label %bb.j

_ZN6duckdb11NumericCastImlvEET_T0_.exit:          ; preds = %bb.f
  %i.ab = udiv i64 %i.aa, 5
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %_ZN6duckdb11NumericCastImlvEET_T0_.exit
  %i.ac = phi i64 [ %i.ab, %_ZN6duckdb11NumericCastImlvEET_T0_.exit ], [ %i.x, %bb.e ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !765
  invoke void @_ZN6duckdb19PrimitiveDictionaryIjjNS_19ParquetCastOperatorEEC2ERNS_9AllocatorEmm(ptr noundef nonnull align 8 dereferenceable(153) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 noundef %i.ac, i64 noundef %i.ae)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i32 0, ptr %i.af, align 8, !tbaa !1835
  ret void

bb.i:                                             ; preds = %_ZN6duckdb26PrimitiveColumnWriterStateC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.f, %bb.g, %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.j ], [ %i.ag, %bb.i ]
  call void @_ZN6duckdb26PrimitiveColumnWriterStateD2Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) #25
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb19PrimitiveDictionaryIjjNS_19ParquetCastOperatorEEC2ERNS_9AllocatorEmm(ptr noundef nonnull align 8 dereferenceable(153) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !766
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.a, align 8, !tbaa !1880
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 0, ptr %i.b, align 8, !tbaa !1843
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = shl i64 %2, 1
  %i.e = tail call noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.d) ; 3 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !1874
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = add i64 %i.e, -1
  store i64 %i.g, ptr %i.f, align 8, !tbaa !1881
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %3, ptr %i.h, align 8, !tbaa !1882
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !1883, !nonnull !78, !align !79 ; 2 uses
  %i.k = shl i64 %i.e, 3                          ; 2 uses
  %i.l = tail call noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 noundef %i.k), !noalias !1884
  tail call void @_ZN6duckdb13AllocatedDataC1ERNS_9AllocatorEPhm(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef %i.l, i64 noundef %i.k)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !1883, !nonnull !78, !align !79 ; 2 uses
  %i.o = load i64, ptr %i.c, align 8, !tbaa !1874
  %i.p = shl i64 %i.o, 2                          ; 2 uses
  %i.q = invoke noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 noundef %i.p)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.a
  invoke void @_ZN6duckdb13AllocatedDataC1ERNS_9AllocatorEPhm(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef %i.q, i64 noundef %i.p)
          to label %_ZN6duckdb9Allocator8AllocateEm.exit unwind label %bb.c

_ZN6duckdb9Allocator8AllocateEm.exit:             ; preds = %.noexc
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !197
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.v = load i64, ptr %i.u, align 8, !tbaa !774
  invoke void @_ZN6duckdb12MemoryStreamC1EPhm(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef %i.t, i64 noundef %i.v)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN6duckdb9Allocator8AllocateEm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !197  ; 10 uses
  store ptr %i.y, ptr %i.w, align 8, !tbaa !1875
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  store i8 0, ptr %i.z, align 8, !tbaa !1844
  %i.aa = load i64, ptr %i.c, align 8, !tbaa !1874 ; 4 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZN6duckdb19PrimitiveDictionaryIjjNS_19ParquetCastOperatorEE5ClearEv.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %xtraiter = and i64 %i.aa, 7                    ; 3 uses
  %i.ab = icmp ult i64 %i.aa, 8
  br i1 %i.ab, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.aa, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.03.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.as, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.03.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store i32 -1, ptr %i.ad, align 4, !tbaa !1876
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.03.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store i32 -1, ptr %i.af, align 4, !tbaa !1876
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.03.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  store i32 -1, ptr %i.ah, align 4, !tbaa !1876
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.03.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 28
  store i32 -1, ptr %i.aj, align 4, !tbaa !1876
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.03.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 36
  store i32 -1, ptr %i.al, align 4, !tbaa !1876
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.03.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 44
  store i32 -1, ptr %i.an, align 4, !tbaa !1876
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.03.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 52
  store i32 -1, ptr %i.ap, align 4, !tbaa !1876
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.03.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 60
  store i32 -1, ptr %i.ar, align 4, !tbaa !1876
  %i.as = add nuw i64 %.03.i, 8                   ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN6duckdb19PrimitiveDictionaryIjjNS_19ParquetCastOperatorEE5ClearEv.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !1887

_ZN6duckdb19PrimitiveDictionaryIjjNS_19ParquetCastOperatorEE5ClearEv.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb19PrimitiveDictionaryIjjNS_19ParquetCastOperatorEE5ClearEv.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN6duckdb19PrimitiveDictionaryIjjNS_19ParquetCastOperatorEE5ClearEv.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.03.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.as, %_ZN6duckdb19PrimitiveDictionaryIjjNS_19ParquetCastOperatorEE5ClearEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod8 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod8)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.03.i.epil = phi i64 [ %i.av, %.lr.ph.i.epil ], [ %.03.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.03.i.epil
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  store i32 -1, ptr %i.au, align 4, !tbaa !1876
  %i.av = add nuw i64 %.03.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN6duckdb19PrimitiveDictionaryIjjNS_19ParquetCastOperatorEE5ClearEv.exit, label %.lr.ph.i.epil, !llvm.loop !1888

_ZN6duckdb19PrimitiveDictionaryIjjNS_19ParquetCastOperatorEE5ClearEv.exit: ; preds = %_ZN6duckdb19PrimitiveDictionaryIjjNS_19ParquetCastOperatorEE5ClearEv.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.b
  store i32 0, ptr %i.b, align 8, !tbaa !1843
  store i8 0, ptr %i.z, align 8, !tbaa !1844
  ret void

bb.c:                                             ; preds = %.noexc, %bb.a
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %_ZN6duckdb9Allocator8AllocateEm.exit
  %i.ax = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.m) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.ax, %bb.d ], [ %i.aw, %bb.c ]
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.i) #25
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6duckdb25StandardColumnWriterStateIjjNS_19ParquetCastOperatorEED2Ev(ptr noundef nonnull align 8 dereferenceable(380) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb25StandardColumnWriterStateIjjNS_19ParquetCastOperatorEEE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  tail call void @_ZN6duckdb12MemoryStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #25
  tail call void @_ZN6duckdb26PrimitiveColumnWriterStateD2Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6duckdb25StandardColumnWriterStateIjjNS_19ParquetCastOperatorEED0Ev(ptr noundef nonnull align 8 dereferenceable(380) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb25StandardColumnWriterStateIjjNS_19ParquetCastOperatorEEE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  tail call void @_ZN6duckdb12MemoryStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #25, !inline_history !1889
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #25, !inline_history !1889
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #25, !inline_history !1889
  tail call void @_ZN6duckdb26PrimitiveColumnWriterStateD2Ev(ptr noundef nonnull align 8 dereferenceable(380) %0) #25, !inline_history !1889
  tail call void @_ZdlPv(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb19PrimitiveDictionaryIjjNS_19ParquetCastOperatorEE6InsertILb1EEEvj(ptr noundef nonnull align 8 dereferenceable(153) %0, i32 noundef %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !1844, !range !250, !noundef !78
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_ZNK6duckdb19PrimitiveDictionaryIjjNS_19ParquetCastOperatorEE6LookupERKj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = zext i32 %1 to i64
  %i.f = mul i64 %i.e, -2960836687051489901       ; 2 uses
  %i.g = lshr i64 %i.f, 32
  %i.h = xor i64 %i.g, %i.f
  %i.i = mul i64 %i.h, -2960836687051489901       ; 2 uses
  %i.j = lshr i64 %i.i, 32
  %i.k = xor i64 %i.j, %i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !1881 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1875 ; 2 uses
  %.07.i = and i64 %i.m, %i.k                     ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.07.i ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !1876
  %i.s = icmp eq i32 %i.r, -1
  br i1 %i.s, label %.loopexit, label %.lr.ph.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.t = add i64 %.08.i, 1
  %.0.i = and i64 %i.t, %i.m                      ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.0.i ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !1876
  %i.x = icmp eq i32 %i.w, -1
  br i1 %i.x, label %.loopexit, label %.lr.ph.i, !llvm.loop !1890

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.y = phi ptr [ %i.u, %bb.c ], [ %i.p, %bb.b ]
  %.08.i = phi i64 [ %.0.i, %bb.c ], [ %.07.i, %bb.b ]
  %i.z = load i32, ptr %i.y, align 4, !tbaa !1891
  %.not.i.not = icmp eq i32 %i.z, %1
  br i1 %.not.i.not, label %_ZNK6duckdb19PrimitiveDictionaryIjjNS_19ParquetCastOperatorEE6LookupERKj.exit, label %bb.c

.loopexit:                                        ; preds = %bb.c, %bb.b
  %.lcssa.i.ph = phi ptr [ %i.p, %bb.b ], [ %i.u, %bb.c ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.lcssa.i.ph, i64 4
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !1843
  %i.ad = add i32 %i.ac, 1
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !1880
  %i.ah = icmp ult i64 %i.ag, %i.ae
  br i1 %i.ah, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 %1, ptr %i.a, align 4, !tbaa !3
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.aj = tail call noundef i64 @_ZNK6duckdb12MemoryStream11GetPositionEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ai)
  %i.ak = add i64 %i.aj, 4
  %i.al = tail call noundef i64 @_ZNK6duckdb12MemoryStream11GetCapacityEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ai)
  %.not = icmp ugt i64 %i.ak, %i.al
  br i1 %.not, label %_ZN6duckdb19PrimitiveDictionaryIjjNS_19ParquetCastOperatorEE11AddToTargetIjTnNSt9enable_ifIXntsr3std7is_sameIT_NS_8string_tEEE5valueEiE4typeELi0EEEbRKj.exit, label %bb.f

_ZN6duckdb19PrimitiveDictionaryIjjNS_19ParquetCastOperatorEE11AddToTargetIjTnNSt9enable_ifIXntsr3std7is_sameIT_NS_8string_tEEE5valueEiE4typeELi0EEEbRKj.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb19PrimitiveDictionaryIjjNS_19ParquetCastOperatorEE11AddToTargetIjTnNSt9enable_ifIXntsr3std7is_sameIT_NS_8string_tEEE5valueEiE4typeELi0EEEbRKj.exit, %.loopexit
  store i8 1, ptr %i.b, align 8, !tbaa !1844
  br label %_ZNK6duckdb19PrimitiveDictionaryIjjNS_19ParquetCastOperatorEE6LookupERKj.exit

bb.f:                                             ; preds = %bb.d
  %i.am = load ptr, ptr %i.ai, align 8, !tbaa !15
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i64 noundef 4), !inline_history !1892
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  store i32 %1, ptr %.lcssa.i.ph, align 4, !tbaa !1891
  %i.ao = load i32, ptr %i.ab, align 8, !tbaa !1843 ; 2 uses
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.ab, align 8, !tbaa !1843
  store i32 %i.ao, ptr %i.aa, align 4, !tbaa !1876
  br label %_ZNK6duckdb19PrimitiveDictionaryIjjNS_19ParquetCastOperatorEE6LookupERKj.exit

_ZNK6duckdb19PrimitiveDictionaryIjjNS_19ParquetCastOperatorEE6LookupERKj.exit: ; preds = %.lr.ph.i, %bb.e, %bb.f, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIjEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !394
  %i.e = icmp eq i8 %i.d, 6
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.35, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 6, ptr %i.a, align 1, !tbaa !797
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.g = load i8, ptr %i.c, align 1, !tbaa !394
  store i8 %i.g, ptr %i.b, align 1, !tbaa !797
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
end_hunk_11
begin_hunk_12_@_ZN6duckdb25StandardColumnWriterStateImmNS_19ParquetCastOperatorEEC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm:bb.a
  store i64 %3, ptr %i.d, align 8, !tbaa !747
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, i8 0, i64 72, i1 false)
  %i.g = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #28
          to label %_ZN6duckdb26PrimitiveColumnWriterStateC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm.exit unwind label %bb.b ; 3 uses

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @_ZNSt10unique_ptrIN6duckdb18ParquetBloomFilterESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #25
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !724  ; 3 uses
  %.not.i6.i = icmp eq ptr %i.k, null
  br i1 %.not.i6.i, label %_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN6duckdb22ColumnWriterStatisticsEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb22ColumnWriterStatisticsEEclEPS1_.exit.i.i: ; preds = %bb.b
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.k) #25, !inline_history !748
  br label %_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN6duckdb22ColumnWriterStatisticsEEclEPS1_.exit.i.i, %bb.b
  tail call void @_ZNSt6vectorIN6duckdb20PageWriteInformationESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #25
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !749  ; 2 uses
  %.not.i.i.i7.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i7.i, label %_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.o) #24
  br label %_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i

common.resume:                                    ; preds = %bb.k, %_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.h, %_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i ], [ %.pn, %bb.k ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i: ; preds = %bb.c, %_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i
  tail call void @_ZN6duckdb17ColumnWriterStateD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(192) %0) #25
  br label %common.resume

_ZN6duckdb26PrimitiveColumnWriterStateC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm.exit: ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !749
  store ptr %i.r, ptr %i.q, align 8, !tbaa !750
  store ptr %i.r, ptr %i.p, align 8, !tbaa !751
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb25StandardColumnWriterStateImmNS_19ParquetCastOperatorEEE, i64 16), ptr %0, align 8, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.s, i8 0, i64 20, i1 false)
  %i.u = load ptr, ptr %1, align 8, !tbaa !193, !nonnull !78, !align !79
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb15BufferAllocator3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %i.u)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %_ZN6duckdb26PrimitiveColumnWriterStateC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.sroa.0.0.copyload.i = load i64, ptr %i.w, align 8, !tbaa !191 ; 2 uses
  %.not = icmp eq i64 %.sroa.0.0.copyload.i, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %.sroa.0.0.copyload.i, ptr %4, align 8
  %i.x = invoke noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.g unwind label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.z = load i64, ptr %i.y, align 8, !tbaa !752
  %i.aa = invoke noundef i64 @_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl(i64 noundef %i.z)
          to label %_ZN6duckdb11NumericCastImlvEET_T0_.exit unwind label %bb.j

_ZN6duckdb11NumericCastImlvEET_T0_.exit:          ; preds = %bb.f
  %i.ab = udiv i64 %i.aa, 5
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %_ZN6duckdb11NumericCastImlvEET_T0_.exit
  %i.ac = phi i64 [ %i.ab, %_ZN6duckdb11NumericCastImlvEET_T0_.exit ], [ %i.x, %bb.e ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !765
  invoke void @_ZN6duckdb19PrimitiveDictionaryImmNS_19ParquetCastOperatorEEC2ERNS_9AllocatorEmm(ptr noundef nonnull align 8 dereferenceable(153) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 noundef %i.ac, i64 noundef %i.ae)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i32 0, ptr %i.af, align 8, !tbaa !1933
  ret void

bb.i:                                             ; preds = %_ZN6duckdb26PrimitiveColumnWriterStateC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.f, %bb.g, %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.j ], [ %i.ag, %bb.i ]
  call void @_ZN6duckdb26PrimitiveColumnWriterStateD2Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) #25
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb19PrimitiveDictionaryImmNS_19ParquetCastOperatorEEC2ERNS_9AllocatorEmm(ptr noundef nonnull align 8 dereferenceable(153) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !766
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.a, align 8, !tbaa !1978
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 0, ptr %i.b, align 8, !tbaa !1941
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = shl i64 %2, 1
  %i.e = tail call noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.d) ; 3 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !1972
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = add i64 %i.e, -1
  store i64 %i.g, ptr %i.f, align 8, !tbaa !1979
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %3, ptr %i.h, align 8, !tbaa !1980
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !1981, !nonnull !78, !align !79 ; 2 uses
  %i.k = shl i64 %i.e, 4                          ; 2 uses
  %i.l = tail call noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 noundef %i.k), !noalias !1982
  tail call void @_ZN6duckdb13AllocatedDataC1ERNS_9AllocatorEPhm(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef %i.l, i64 noundef %i.k)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !1981, !nonnull !78, !align !79 ; 2 uses
  %i.o = load i64, ptr %i.c, align 8, !tbaa !1972
  %i.p = shl i64 %i.o, 3                          ; 2 uses
  %i.q = invoke noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 noundef %i.p)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.a
  invoke void @_ZN6duckdb13AllocatedDataC1ERNS_9AllocatorEPhm(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef %i.q, i64 noundef %i.p)
          to label %_ZN6duckdb9Allocator8AllocateEm.exit unwind label %bb.c

_ZN6duckdb9Allocator8AllocateEm.exit:             ; preds = %.noexc
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !197
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.v = load i64, ptr %i.u, align 8, !tbaa !774
  invoke void @_ZN6duckdb12MemoryStreamC1EPhm(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef %i.t, i64 noundef %i.v)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN6duckdb9Allocator8AllocateEm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !197  ; 10 uses
  store ptr %i.y, ptr %i.w, align 8, !tbaa !1973
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  store i8 0, ptr %i.z, align 8, !tbaa !1942
  %i.aa = load i64, ptr %i.c, align 8, !tbaa !1972 ; 4 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZN6duckdb19PrimitiveDictionaryImmNS_19ParquetCastOperatorEE5ClearEv.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %xtraiter = and i64 %i.aa, 7                    ; 3 uses
  %i.ab = icmp ult i64 %i.aa, 8
  br i1 %i.ab, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.aa, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.03.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.as, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.03.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i32 -1, ptr %i.ad, align 8, !tbaa !1974
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.03.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store i32 -1, ptr %i.af, align 8, !tbaa !1974
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.03.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  store i32 -1, ptr %i.ah, align 8, !tbaa !1974
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.03.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  store i32 -1, ptr %i.aj, align 8, !tbaa !1974
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.03.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 72
  store i32 -1, ptr %i.al, align 8, !tbaa !1974
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.03.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 88
  store i32 -1, ptr %i.an, align 8, !tbaa !1974
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.03.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 104
  store i32 -1, ptr %i.ap, align 8, !tbaa !1974
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.03.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 120
  store i32 -1, ptr %i.ar, align 8, !tbaa !1974
  %i.as = add nuw i64 %.03.i, 8                   ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN6duckdb19PrimitiveDictionaryImmNS_19ParquetCastOperatorEE5ClearEv.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !1985

_ZN6duckdb19PrimitiveDictionaryImmNS_19ParquetCastOperatorEE5ClearEv.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb19PrimitiveDictionaryImmNS_19ParquetCastOperatorEE5ClearEv.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN6duckdb19PrimitiveDictionaryImmNS_19ParquetCastOperatorEE5ClearEv.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.03.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.as, %_ZN6duckdb19PrimitiveDictionaryImmNS_19ParquetCastOperatorEE5ClearEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod8 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod8)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.03.i.epil = phi i64 [ %i.av, %.lr.ph.i.epil ], [ %.03.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.03.i.epil
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i32 -1, ptr %i.au, align 8, !tbaa !1974
  %i.av = add nuw i64 %.03.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN6duckdb19PrimitiveDictionaryImmNS_19ParquetCastOperatorEE5ClearEv.exit, label %.lr.ph.i.epil, !llvm.loop !1986

_ZN6duckdb19PrimitiveDictionaryImmNS_19ParquetCastOperatorEE5ClearEv.exit: ; preds = %_ZN6duckdb19PrimitiveDictionaryImmNS_19ParquetCastOperatorEE5ClearEv.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.b
  store i32 0, ptr %i.b, align 8, !tbaa !1941
  store i8 0, ptr %i.z, align 8, !tbaa !1942
  ret void

bb.c:                                             ; preds = %.noexc, %bb.a
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %_ZN6duckdb9Allocator8AllocateEm.exit
  %i.ax = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.m) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.ax, %bb.d ], [ %i.aw, %bb.c ]
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.i) #25
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6duckdb25StandardColumnWriterStateImmNS_19ParquetCastOperatorEED2Ev(ptr noundef nonnull align 8 dereferenceable(380) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb25StandardColumnWriterStateImmNS_19ParquetCastOperatorEEE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  tail call void @_ZN6duckdb12MemoryStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #25
  tail call void @_ZN6duckdb26PrimitiveColumnWriterStateD2Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6duckdb25StandardColumnWriterStateImmNS_19ParquetCastOperatorEED0Ev(ptr noundef nonnull align 8 dereferenceable(380) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb25StandardColumnWriterStateImmNS_19ParquetCastOperatorEEE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  tail call void @_ZN6duckdb12MemoryStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #25, !inline_history !1987
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #25, !inline_history !1987
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #25, !inline_history !1987
  tail call void @_ZN6duckdb26PrimitiveColumnWriterStateD2Ev(ptr noundef nonnull align 8 dereferenceable(380) %0) #25, !inline_history !1987
  tail call void @_ZdlPv(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb19PrimitiveDictionaryImmNS_19ParquetCastOperatorEE6InsertILb1EEEvm(ptr noundef nonnull align 8 dereferenceable(153) %0, i64 noundef %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !1942, !range !250, !noundef !78
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_ZNK6duckdb19PrimitiveDictionaryImmNS_19ParquetCastOperatorEE6LookupERKm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = lshr i64 %1, 32
  %i.f = xor i64 %i.e, %1
  %i.g = mul i64 %i.f, -2960836687051489901       ; 2 uses
  %i.h = lshr i64 %i.g, 32
  %i.i = xor i64 %i.h, %i.g
  %i.j = mul i64 %i.i, -2960836687051489901       ; 2 uses
  %i.k = lshr i64 %i.j, 32
  %i.l = xor i64 %i.k, %i.j
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load i64, ptr %i.m, align 8, !tbaa !1979 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1973 ; 2 uses
  %.07.i = and i64 %i.n, %i.l                     ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %.07.i ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !1974
  %i.t = icmp eq i32 %i.s, -1
  br i1 %i.t, label %.loopexit, label %.lr.ph.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.u = add i64 %.08.i, 1
  %.0.i = and i64 %i.u, %i.n                      ; 2 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %.0.i ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !1974
  %i.y = icmp eq i32 %i.x, -1
  br i1 %i.y, label %.loopexit, label %.lr.ph.i, !llvm.loop !1988

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.z = phi ptr [ %i.v, %bb.c ], [ %i.q, %bb.b ]
  %.08.i = phi i64 [ %.0.i, %bb.c ], [ %.07.i, %bb.b ]
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !1989
  %.not.i.not = icmp eq i64 %i.aa, %1
  br i1 %.not.i.not, label %_ZNK6duckdb19PrimitiveDictionaryImmNS_19ParquetCastOperatorEE6LookupERKm.exit, label %bb.c

.loopexit:                                        ; preds = %bb.c, %bb.b
  %.lcssa.i.ph = phi ptr [ %i.q, %bb.b ], [ %i.v, %bb.c ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.lcssa.i.ph, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !1941
  %i.ae = add i32 %i.ad, 1
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !1978
  %i.ai = icmp ult i64 %i.ah, %i.af
  br i1 %i.ai, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %1, ptr %i.a, align 8, !tbaa !191
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.ak = tail call noundef i64 @_ZNK6duckdb12MemoryStream11GetPositionEv(ptr noundef nonnull align 8 dereferenceable(48) %i.aj)
  %i.al = add i64 %i.ak, 8
  %i.am = tail call noundef i64 @_ZNK6duckdb12MemoryStream11GetCapacityEv(ptr noundef nonnull align 8 dereferenceable(48) %i.aj)
  %.not = icmp ugt i64 %i.al, %i.am
  br i1 %.not, label %_ZN6duckdb19PrimitiveDictionaryImmNS_19ParquetCastOperatorEE11AddToTargetImTnNSt9enable_ifIXntsr3std7is_sameIT_NS_8string_tEEE5valueEiE4typeELi0EEEbRKm.exit, label %bb.f

_ZN6duckdb19PrimitiveDictionaryImmNS_19ParquetCastOperatorEE11AddToTargetImTnNSt9enable_ifIXntsr3std7is_sameIT_NS_8string_tEEE5valueEiE4typeELi0EEEbRKm.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb19PrimitiveDictionaryImmNS_19ParquetCastOperatorEE11AddToTargetImTnNSt9enable_ifIXntsr3std7is_sameIT_NS_8string_tEEE5valueEiE4typeELi0EEEbRKm.exit, %.loopexit
  store i8 1, ptr %i.b, align 8, !tbaa !1942
  br label %_ZNK6duckdb19PrimitiveDictionaryImmNS_19ParquetCastOperatorEE6LookupERKm.exit

bb.f:                                             ; preds = %bb.d
  %i.an = load ptr, ptr %i.aj, align 8, !tbaa !15
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 8), !inline_history !1990
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  store i64 %1, ptr %.lcssa.i.ph, align 8, !tbaa !1989
  %i.ap = load i32, ptr %i.ac, align 8, !tbaa !1941 ; 2 uses
  %i.aq = add i32 %i.ap, 1
  store i32 %i.aq, ptr %i.ac, align 8, !tbaa !1941
  store i32 %i.ap, ptr %i.ab, align 8, !tbaa !1974
  br label %_ZNK6duckdb19PrimitiveDictionaryImmNS_19ParquetCastOperatorEE6LookupERKm.exit

_ZNK6duckdb19PrimitiveDictionaryImmNS_19ParquetCastOperatorEE6LookupERKm.exit: ; preds = %.lr.ph.i, %bb.e, %bb.f, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !394
  %i.e = icmp eq i8 %i.d, 8
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.35, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 8, ptr %i.a, align 1, !tbaa !797
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.g = load i8, ptr %i.c, align 1, !tbaa !394
  store i8 %i.g, ptr %i.b, align 1, !tbaa !797
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
end_hunk_12
begin_hunk_13_@_ZN6duckdb25StandardColumnWriterStateINS_14float_na_equalEfNS_21FloatingPointOperatorEEC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm:bb.a
  store i64 %3, ptr %i.d, align 8, !tbaa !747
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, i8 0, i64 72, i1 false)
  %i.g = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #28
          to label %_ZN6duckdb26PrimitiveColumnWriterStateC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm.exit unwind label %bb.b ; 3 uses

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @_ZNSt10unique_ptrIN6duckdb18ParquetBloomFilterESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #25
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !724  ; 3 uses
  %.not.i6.i = icmp eq ptr %i.k, null
  br i1 %.not.i6.i, label %_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN6duckdb22ColumnWriterStatisticsEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb22ColumnWriterStatisticsEEclEPS1_.exit.i.i: ; preds = %bb.b
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.k) #25, !inline_history !748
  br label %_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN6duckdb22ColumnWriterStatisticsEEclEPS1_.exit.i.i, %bb.b
  tail call void @_ZNSt6vectorIN6duckdb20PageWriteInformationESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #25
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !749  ; 2 uses
  %.not.i.i.i7.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i7.i, label %_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.o) #24
  br label %_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i

common.resume:                                    ; preds = %bb.k, %_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.h, %_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i ], [ %.pn, %bb.k ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i: ; preds = %bb.c, %_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i
  tail call void @_ZN6duckdb17ColumnWriterStateD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(192) %0) #25
  br label %common.resume

_ZN6duckdb26PrimitiveColumnWriterStateC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm.exit: ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !749
  store ptr %i.r, ptr %i.q, align 8, !tbaa !750
  store ptr %i.r, ptr %i.p, align 8, !tbaa !751
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb25StandardColumnWriterStateINS_14float_na_equalEfNS_21FloatingPointOperatorEEE, i64 16), ptr %0, align 8, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.s, i8 0, i64 20, i1 false)
  %i.u = load ptr, ptr %1, align 8, !tbaa !193, !nonnull !78, !align !79
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb15BufferAllocator3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %i.u)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %_ZN6duckdb26PrimitiveColumnWriterStateC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.sroa.0.0.copyload.i = load i64, ptr %i.w, align 8, !tbaa !191 ; 2 uses
  %.not = icmp eq i64 %.sroa.0.0.copyload.i, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %.sroa.0.0.copyload.i, ptr %4, align 8
  %i.x = invoke noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.g unwind label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.z = load i64, ptr %i.y, align 8, !tbaa !752
  %i.aa = invoke noundef i64 @_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl(i64 noundef %i.z)
          to label %_ZN6duckdb11NumericCastImlvEET_T0_.exit unwind label %bb.j

_ZN6duckdb11NumericCastImlvEET_T0_.exit:          ; preds = %bb.f
  %i.ab = udiv i64 %i.aa, 5
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %_ZN6duckdb11NumericCastImlvEET_T0_.exit
  %i.ac = phi i64 [ %i.ab, %_ZN6duckdb11NumericCastImlvEET_T0_.exit ], [ %i.x, %bb.e ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !765
  invoke void @_ZN6duckdb19PrimitiveDictionaryINS_14float_na_equalEfNS_21FloatingPointOperatorEEC2ERNS_9AllocatorEmm(ptr noundef nonnull align 8 dereferenceable(153) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 noundef %i.ac, i64 noundef %i.ae)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i32 0, ptr %i.af, align 8, !tbaa !2031
  ret void

bb.i:                                             ; preds = %_ZN6duckdb26PrimitiveColumnWriterStateC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.f, %bb.g, %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.j ], [ %i.ag, %bb.i ]
  call void @_ZN6duckdb26PrimitiveColumnWriterStateD2Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) #25
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb19PrimitiveDictionaryINS_14float_na_equalEfNS_21FloatingPointOperatorEEC2ERNS_9AllocatorEmm(ptr noundef nonnull align 8 dereferenceable(153) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !766
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.a, align 8, !tbaa !2075
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 0, ptr %i.b, align 8, !tbaa !2040
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = shl i64 %2, 1
  %i.e = tail call noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.d) ; 3 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !2068
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = add i64 %i.e, -1
  store i64 %i.g, ptr %i.f, align 8, !tbaa !2076
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %3, ptr %i.h, align 8, !tbaa !2077
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !2078, !nonnull !78, !align !79 ; 2 uses
  %i.k = shl i64 %i.e, 3                          ; 2 uses
  %i.l = tail call noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 noundef %i.k), !noalias !2079
  tail call void @_ZN6duckdb13AllocatedDataC1ERNS_9AllocatorEPhm(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef %i.l, i64 noundef %i.k)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !2078, !nonnull !78, !align !79 ; 2 uses
  %i.o = load i64, ptr %i.c, align 8, !tbaa !2068
  %i.p = shl i64 %i.o, 2                          ; 2 uses
  %i.q = invoke noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 noundef %i.p)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.a
  invoke void @_ZN6duckdb13AllocatedDataC1ERNS_9AllocatorEPhm(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef %i.q, i64 noundef %i.p)
          to label %_ZN6duckdb9Allocator8AllocateEm.exit unwind label %bb.c

_ZN6duckdb9Allocator8AllocateEm.exit:             ; preds = %.noexc
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !197
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.v = load i64, ptr %i.u, align 8, !tbaa !774
  invoke void @_ZN6duckdb12MemoryStreamC1EPhm(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef %i.t, i64 noundef %i.v)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN6duckdb9Allocator8AllocateEm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !197  ; 10 uses
  store ptr %i.y, ptr %i.w, align 8, !tbaa !2069
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  store i8 0, ptr %i.z, align 8, !tbaa !2041
  %i.aa = load i64, ptr %i.c, align 8, !tbaa !2068 ; 4 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZN6duckdb19PrimitiveDictionaryINS_14float_na_equalEfNS_21FloatingPointOperatorEE5ClearEv.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %xtraiter = and i64 %i.aa, 7                    ; 3 uses
  %i.ab = icmp ult i64 %i.aa, 8
  br i1 %i.ab, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.aa, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.03.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.as, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.03.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store i32 -1, ptr %i.ad, align 4, !tbaa !2070
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.03.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store i32 -1, ptr %i.af, align 4, !tbaa !2070
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.03.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  store i32 -1, ptr %i.ah, align 4, !tbaa !2070
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.03.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 28
  store i32 -1, ptr %i.aj, align 4, !tbaa !2070
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.03.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 36
  store i32 -1, ptr %i.al, align 4, !tbaa !2070
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.03.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 44
  store i32 -1, ptr %i.an, align 4, !tbaa !2070
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.03.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 52
  store i32 -1, ptr %i.ap, align 4, !tbaa !2070
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.03.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 60
  store i32 -1, ptr %i.ar, align 4, !tbaa !2070
  %i.as = add nuw i64 %.03.i, 8                   ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN6duckdb19PrimitiveDictionaryINS_14float_na_equalEfNS_21FloatingPointOperatorEE5ClearEv.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !2082

_ZN6duckdb19PrimitiveDictionaryINS_14float_na_equalEfNS_21FloatingPointOperatorEE5ClearEv.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb19PrimitiveDictionaryINS_14float_na_equalEfNS_21FloatingPointOperatorEE5ClearEv.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN6duckdb19PrimitiveDictionaryINS_14float_na_equalEfNS_21FloatingPointOperatorEE5ClearEv.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.03.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.as, %_ZN6duckdb19PrimitiveDictionaryINS_14float_na_equalEfNS_21FloatingPointOperatorEE5ClearEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod8 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod8)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.03.i.epil = phi i64 [ %i.av, %.lr.ph.i.epil ], [ %.03.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.03.i.epil
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  store i32 -1, ptr %i.au, align 4, !tbaa !2070
  %i.av = add nuw i64 %.03.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN6duckdb19PrimitiveDictionaryINS_14float_na_equalEfNS_21FloatingPointOperatorEE5ClearEv.exit, label %.lr.ph.i.epil, !llvm.loop !2083

_ZN6duckdb19PrimitiveDictionaryINS_14float_na_equalEfNS_21FloatingPointOperatorEE5ClearEv.exit: ; preds = %_ZN6duckdb19PrimitiveDictionaryINS_14float_na_equalEfNS_21FloatingPointOperatorEE5ClearEv.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.b
  store i32 0, ptr %i.b, align 8, !tbaa !2040
  store i8 0, ptr %i.z, align 8, !tbaa !2041
  ret void

bb.c:                                             ; preds = %.noexc, %bb.a
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %_ZN6duckdb9Allocator8AllocateEm.exit
  %i.ax = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.m) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.ax, %bb.d ], [ %i.aw, %bb.c ]
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.i) #25
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6duckdb25StandardColumnWriterStateINS_14float_na_equalEfNS_21FloatingPointOperatorEED2Ev(ptr noundef nonnull align 8 dereferenceable(380) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb25StandardColumnWriterStateINS_14float_na_equalEfNS_21FloatingPointOperatorEEE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  tail call void @_ZN6duckdb12MemoryStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #25
  tail call void @_ZN6duckdb26PrimitiveColumnWriterStateD2Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6duckdb25StandardColumnWriterStateINS_14float_na_equalEfNS_21FloatingPointOperatorEED0Ev(ptr noundef nonnull align 8 dereferenceable(380) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb25StandardColumnWriterStateINS_14float_na_equalEfNS_21FloatingPointOperatorEEE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  tail call void @_ZN6duckdb12MemoryStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #25, !inline_history !2084
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #25, !inline_history !2084
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #25, !inline_history !2084
  tail call void @_ZN6duckdb26PrimitiveColumnWriterStateD2Ev(ptr noundef nonnull align 8 dereferenceable(380) %0) #25, !inline_history !2084
  tail call void @_ZdlPv(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb19PrimitiveDictionaryINS_14float_na_equalEfNS_21FloatingPointOperatorEE6InsertILb1EEEvS1_(ptr noundef nonnull align 8 dereferenceable(153) %0, float %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = alloca float, align 4                    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !2041, !range !250, !noundef !78
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_ZNK6duckdb19PrimitiveDictionaryINS_14float_na_equalEfNS_21FloatingPointOperatorEE6LookupERKS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = fcmp uno float %1, 0.000000e+00
  %..i.i = select i1 %i.e, float +qnan, float %1
  %i.f = tail call noundef i64 @_ZN6duckdb4HashIfEEmT_(float noundef %..i.i)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !2076 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !2069 ; 2 uses
  %.07.i = and i64 %i.h, %i.f                     ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.07.i ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !2070
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.o = fcmp ord float %1, 0.000000e+00
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.p = add i64 %.08.i, 1
  %.0.i = and i64 %i.p, %i.h                      ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.0.i ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !2070
  %i.t = icmp eq i32 %i.s, -1
  br i1 %i.t, label %.loopexit, label %bb.d, !llvm.loop !2085

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %i.u = phi ptr [ %i.k, %.lr.ph.i ], [ %i.q, %bb.c ]
  %.08.i = phi i64 [ %.07.i, %.lr.ph.i ], [ %.0.i, %bb.c ]
  %i.v = load float, ptr %i.u, align 4, !tbaa !2086 ; 2 uses
  %i.w = fcmp ord float %i.v, 0.000000e+00
  %or.cond.i.not4.i.i = select i1 %i.w, i1 true, i1 %i.o
  %i.x = fcmp une float %i.v, %1
  %.0.i.not.i.i = select i1 %or.cond.i.not4.i.i, i1 %i.x, i1 false
  br i1 %.0.i.not.i.i, label %bb.c, label %_ZNK6duckdb19PrimitiveDictionaryINS_14float_na_equalEfNS_21FloatingPointOperatorEE6LookupERKS1_.exit

.loopexit:                                        ; preds = %bb.c, %bb.b
  %.lcssa.i.ph = phi ptr [ %i.k, %bb.b ], [ %i.q, %bb.c ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.lcssa.i.ph, i64 4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !2040
  %i.ab = add i32 %i.aa, 1
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !2075
  %i.af = icmp ult i64 %i.ae, %i.ac
  br i1 %i.af, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store float %1, ptr %i.a, align 4, !tbaa !2036
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.ah = tail call noundef i64 @_ZNK6duckdb12MemoryStream11GetPositionEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ag)
  %i.ai = add i64 %i.ah, 4
  %i.aj = tail call noundef i64 @_ZNK6duckdb12MemoryStream11GetCapacityEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ag)
  %.not = icmp ugt i64 %i.ai, %i.aj
  br i1 %.not, label %_ZN6duckdb19PrimitiveDictionaryINS_14float_na_equalEfNS_21FloatingPointOperatorEE11AddToTargetIS1_TnNSt9enable_ifIXntsr3std7is_sameIT_NS_8string_tEEE5valueEiE4typeELi0EEEbRKS1_.exit, label %bb.g

_ZN6duckdb19PrimitiveDictionaryINS_14float_na_equalEfNS_21FloatingPointOperatorEE11AddToTargetIS1_TnNSt9enable_ifIXntsr3std7is_sameIT_NS_8string_tEEE5valueEiE4typeELi0EEEbRKS1_.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.f

bb.f:                                             ; preds = %_ZN6duckdb19PrimitiveDictionaryINS_14float_na_equalEfNS_21FloatingPointOperatorEE11AddToTargetIS1_TnNSt9enable_ifIXntsr3std7is_sameIT_NS_8string_tEEE5valueEiE4typeELi0EEEbRKS1_.exit, %.loopexit
  store i8 1, ptr %i.b, align 8, !tbaa !2041
  br label %_ZNK6duckdb19PrimitiveDictionaryINS_14float_na_equalEfNS_21FloatingPointOperatorEE6LookupERKS1_.exit

bb.g:                                             ; preds = %bb.e
  %i.ak = load ptr, ptr %i.ag, align 8, !tbaa !15
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i64 noundef 4), !inline_history !2087
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  store float %1, ptr %.lcssa.i.ph, align 4, !tbaa !2036
  %i.am = load i32, ptr %i.z, align 8, !tbaa !2040 ; 2 uses
  %i.an = add i32 %i.am, 1
  store i32 %i.an, ptr %i.z, align 8, !tbaa !2040
  store i32 %i.am, ptr %i.y, align 4, !tbaa !2070
  br label %_ZNK6duckdb19PrimitiveDictionaryINS_14float_na_equalEfNS_21FloatingPointOperatorEE6LookupERKS1_.exit

_ZNK6duckdb19PrimitiveDictionaryINS_14float_na_equalEfNS_21FloatingPointOperatorEE6LookupERKS1_.exit: ; preds = %bb.d, %bb.f, %bb.g, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_14float_na_equalEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !394
  %i.e = icmp eq i8 %i.d, 11
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.35, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 11, ptr %i.a, align 1, !tbaa !797
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.g = load i8, ptr %i.c, align 1, !tbaa !394
  store i8 %i.g, ptr %i.b, align 1, !tbaa !797
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.i unwind label %bb.e

end_hunk_13
begin_hunk_14_@_ZN6duckdb25StandardColumnWriterStateINS_15double_na_equalEdNS_21FloatingPointOperatorEEC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm:bb.a
  store i64 %3, ptr %i.d, align 8, !tbaa !747
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, i8 0, i64 72, i1 false)
  %i.g = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #28
          to label %_ZN6duckdb26PrimitiveColumnWriterStateC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm.exit unwind label %bb.b ; 3 uses

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @_ZNSt10unique_ptrIN6duckdb18ParquetBloomFilterESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #25
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !724  ; 3 uses
  %.not.i6.i = icmp eq ptr %i.k, null
  br i1 %.not.i6.i, label %_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN6duckdb22ColumnWriterStatisticsEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb22ColumnWriterStatisticsEEclEPS1_.exit.i.i: ; preds = %bb.b
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.k) #25, !inline_history !748
  br label %_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN6duckdb22ColumnWriterStatisticsEEclEPS1_.exit.i.i, %bb.b
  tail call void @_ZNSt6vectorIN6duckdb20PageWriteInformationESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #25
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !749  ; 2 uses
  %.not.i.i.i7.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i7.i, label %_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.o) #24
  br label %_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i

common.resume:                                    ; preds = %bb.k, %_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.h, %_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i ], [ %.pn, %bb.k ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i: ; preds = %bb.c, %_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i
  tail call void @_ZN6duckdb17ColumnWriterStateD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(192) %0) #25
  br label %common.resume

_ZN6duckdb26PrimitiveColumnWriterStateC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm.exit: ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !749
  store ptr %i.r, ptr %i.q, align 8, !tbaa !750
  store ptr %i.r, ptr %i.p, align 8, !tbaa !751
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb25StandardColumnWriterStateINS_15double_na_equalEdNS_21FloatingPointOperatorEEE, i64 16), ptr %0, align 8, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.s, i8 0, i64 20, i1 false)
  %i.u = load ptr, ptr %1, align 8, !tbaa !193, !nonnull !78, !align !79
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb15BufferAllocator3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %i.u)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %_ZN6duckdb26PrimitiveColumnWriterStateC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.sroa.0.0.copyload.i = load i64, ptr %i.w, align 8, !tbaa !191 ; 2 uses
  %.not = icmp eq i64 %.sroa.0.0.copyload.i, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %.sroa.0.0.copyload.i, ptr %4, align 8
  %i.x = invoke noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.g unwind label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.z = load i64, ptr %i.y, align 8, !tbaa !752
  %i.aa = invoke noundef i64 @_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl(i64 noundef %i.z)
          to label %_ZN6duckdb11NumericCastImlvEET_T0_.exit unwind label %bb.j

_ZN6duckdb11NumericCastImlvEET_T0_.exit:          ; preds = %bb.f
  %i.ab = udiv i64 %i.aa, 5
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %_ZN6duckdb11NumericCastImlvEET_T0_.exit
  %i.ac = phi i64 [ %i.ab, %_ZN6duckdb11NumericCastImlvEET_T0_.exit ], [ %i.x, %bb.e ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !765
  invoke void @_ZN6duckdb19PrimitiveDictionaryINS_15double_na_equalEdNS_21FloatingPointOperatorEEC2ERNS_9AllocatorEmm(ptr noundef nonnull align 8 dereferenceable(153) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 noundef %i.ac, i64 noundef %i.ae)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i32 0, ptr %i.af, align 8, !tbaa !2131
  ret void

bb.i:                                             ; preds = %_ZN6duckdb26PrimitiveColumnWriterStateC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.f, %bb.g, %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.j ], [ %i.ag, %bb.i ]
  call void @_ZN6duckdb26PrimitiveColumnWriterStateD2Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) #25
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb19PrimitiveDictionaryINS_15double_na_equalEdNS_21FloatingPointOperatorEEC2ERNS_9AllocatorEmm(ptr noundef nonnull align 8 dereferenceable(153) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !766
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.a, align 8, !tbaa !2174
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 0, ptr %i.b, align 8, !tbaa !2139
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = shl i64 %2, 1
  %i.e = tail call noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.d) ; 3 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !2167
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = add i64 %i.e, -1
  store i64 %i.g, ptr %i.f, align 8, !tbaa !2175
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %3, ptr %i.h, align 8, !tbaa !2176
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !2177, !nonnull !78, !align !79 ; 2 uses
  %i.k = shl i64 %i.e, 4                          ; 2 uses
  %i.l = tail call noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 noundef %i.k), !noalias !2178
  tail call void @_ZN6duckdb13AllocatedDataC1ERNS_9AllocatorEPhm(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef %i.l, i64 noundef %i.k)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !2177, !nonnull !78, !align !79 ; 2 uses
  %i.o = load i64, ptr %i.c, align 8, !tbaa !2167
  %i.p = shl i64 %i.o, 3                          ; 2 uses
  %i.q = invoke noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 noundef %i.p)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.a
  invoke void @_ZN6duckdb13AllocatedDataC1ERNS_9AllocatorEPhm(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef %i.q, i64 noundef %i.p)
          to label %_ZN6duckdb9Allocator8AllocateEm.exit unwind label %bb.c

_ZN6duckdb9Allocator8AllocateEm.exit:             ; preds = %.noexc
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !197
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.v = load i64, ptr %i.u, align 8, !tbaa !774
  invoke void @_ZN6duckdb12MemoryStreamC1EPhm(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef %i.t, i64 noundef %i.v)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN6duckdb9Allocator8AllocateEm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !197  ; 10 uses
  store ptr %i.y, ptr %i.w, align 8, !tbaa !2168
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  store i8 0, ptr %i.z, align 8, !tbaa !2140
  %i.aa = load i64, ptr %i.c, align 8, !tbaa !2167 ; 4 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZN6duckdb19PrimitiveDictionaryINS_15double_na_equalEdNS_21FloatingPointOperatorEE5ClearEv.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %xtraiter = and i64 %i.aa, 7                    ; 3 uses
  %i.ab = icmp ult i64 %i.aa, 8
  br i1 %i.ab, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.aa, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.03.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.as, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.03.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i32 -1, ptr %i.ad, align 8, !tbaa !2169
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.03.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store i32 -1, ptr %i.af, align 8, !tbaa !2169
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.03.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  store i32 -1, ptr %i.ah, align 8, !tbaa !2169
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.03.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  store i32 -1, ptr %i.aj, align 8, !tbaa !2169
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.03.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 72
  store i32 -1, ptr %i.al, align 8, !tbaa !2169
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.03.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 88
  store i32 -1, ptr %i.an, align 8, !tbaa !2169
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.03.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 104
  store i32 -1, ptr %i.ap, align 8, !tbaa !2169
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.03.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 120
  store i32 -1, ptr %i.ar, align 8, !tbaa !2169
  %i.as = add nuw i64 %.03.i, 8                   ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN6duckdb19PrimitiveDictionaryINS_15double_na_equalEdNS_21FloatingPointOperatorEE5ClearEv.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !2181

_ZN6duckdb19PrimitiveDictionaryINS_15double_na_equalEdNS_21FloatingPointOperatorEE5ClearEv.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb19PrimitiveDictionaryINS_15double_na_equalEdNS_21FloatingPointOperatorEE5ClearEv.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN6duckdb19PrimitiveDictionaryINS_15double_na_equalEdNS_21FloatingPointOperatorEE5ClearEv.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.03.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.as, %_ZN6duckdb19PrimitiveDictionaryINS_15double_na_equalEdNS_21FloatingPointOperatorEE5ClearEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod8 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod8)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.03.i.epil = phi i64 [ %i.av, %.lr.ph.i.epil ], [ %.03.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.03.i.epil
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i32 -1, ptr %i.au, align 8, !tbaa !2169
  %i.av = add nuw i64 %.03.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN6duckdb19PrimitiveDictionaryINS_15double_na_equalEdNS_21FloatingPointOperatorEE5ClearEv.exit, label %.lr.ph.i.epil, !llvm.loop !2182

_ZN6duckdb19PrimitiveDictionaryINS_15double_na_equalEdNS_21FloatingPointOperatorEE5ClearEv.exit: ; preds = %_ZN6duckdb19PrimitiveDictionaryINS_15double_na_equalEdNS_21FloatingPointOperatorEE5ClearEv.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.b
  store i32 0, ptr %i.b, align 8, !tbaa !2139
  store i8 0, ptr %i.z, align 8, !tbaa !2140
  ret void

bb.c:                                             ; preds = %.noexc, %bb.a
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %_ZN6duckdb9Allocator8AllocateEm.exit
  %i.ax = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.m) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.ax, %bb.d ], [ %i.aw, %bb.c ]
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.i) #25
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6duckdb25StandardColumnWriterStateINS_15double_na_equalEdNS_21FloatingPointOperatorEED2Ev(ptr noundef nonnull align 8 dereferenceable(380) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb25StandardColumnWriterStateINS_15double_na_equalEdNS_21FloatingPointOperatorEEE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  tail call void @_ZN6duckdb12MemoryStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #25
  tail call void @_ZN6duckdb26PrimitiveColumnWriterStateD2Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6duckdb25StandardColumnWriterStateINS_15double_na_equalEdNS_21FloatingPointOperatorEED0Ev(ptr noundef nonnull align 8 dereferenceable(380) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb25StandardColumnWriterStateINS_15double_na_equalEdNS_21FloatingPointOperatorEEE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  tail call void @_ZN6duckdb12MemoryStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #25, !inline_history !2183
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #25, !inline_history !2183
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #25, !inline_history !2183
  tail call void @_ZN6duckdb26PrimitiveColumnWriterStateD2Ev(ptr noundef nonnull align 8 dereferenceable(380) %0) #25, !inline_history !2183
  tail call void @_ZdlPv(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb19PrimitiveDictionaryINS_15double_na_equalEdNS_21FloatingPointOperatorEE6InsertILb1EEEvS1_(ptr noundef nonnull align 8 dereferenceable(153) %0, double %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !2140, !range !250, !noundef !78
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_ZNK6duckdb19PrimitiveDictionaryINS_15double_na_equalEdNS_21FloatingPointOperatorEE6LookupERKS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = fcmp uno double %1, 0.000000e+00
  %..i.i = select i1 %i.e, double +qnan, double %1
  %i.f = tail call noundef i64 @_ZN6duckdb4HashIdEEmT_(double noundef %..i.i)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !2175 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !2168 ; 2 uses
  %.07.i = and i64 %i.h, %i.f                     ; 2 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %.07.i ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !2169
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.o = fcmp ord double %1, 0.000000e+00
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.p = add i64 %.08.i, 1
  %.0.i = and i64 %i.p, %i.h                      ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %.0.i ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !2169
  %i.t = icmp eq i32 %i.s, -1
  br i1 %i.t, label %.loopexit, label %bb.d, !llvm.loop !2184

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %i.u = phi ptr [ %i.k, %.lr.ph.i ], [ %i.q, %bb.c ]
  %.08.i = phi i64 [ %.07.i, %.lr.ph.i ], [ %.0.i, %bb.c ]
  %i.v = load double, ptr %i.u, align 8, !tbaa !2185 ; 2 uses
  %i.w = fcmp ord double %i.v, 0.000000e+00
  %or.cond.i.not4.i.i = select i1 %i.w, i1 true, i1 %i.o
  %i.x = fcmp une double %i.v, %1
  %.0.i.not.i.i = select i1 %or.cond.i.not4.i.i, i1 %i.x, i1 false
  br i1 %.0.i.not.i.i, label %bb.c, label %_ZNK6duckdb19PrimitiveDictionaryINS_15double_na_equalEdNS_21FloatingPointOperatorEE6LookupERKS1_.exit

.loopexit:                                        ; preds = %bb.c, %bb.b
  %.lcssa.i.ph = phi ptr [ %i.k, %bb.b ], [ %i.q, %bb.c ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.lcssa.i.ph, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !2139
  %i.ab = add i32 %i.aa, 1
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !2174
  %i.af = icmp ult i64 %i.ae, %i.ac
  br i1 %i.af, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store double %1, ptr %i.a, align 8, !tbaa !1316
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.ah = tail call noundef i64 @_ZNK6duckdb12MemoryStream11GetPositionEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ag)
  %i.ai = add i64 %i.ah, 8
  %i.aj = tail call noundef i64 @_ZNK6duckdb12MemoryStream11GetCapacityEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ag)
  %.not = icmp ugt i64 %i.ai, %i.aj
  br i1 %.not, label %_ZN6duckdb19PrimitiveDictionaryINS_15double_na_equalEdNS_21FloatingPointOperatorEE11AddToTargetIS1_TnNSt9enable_ifIXntsr3std7is_sameIT_NS_8string_tEEE5valueEiE4typeELi0EEEbRKS1_.exit, label %bb.g

_ZN6duckdb19PrimitiveDictionaryINS_15double_na_equalEdNS_21FloatingPointOperatorEE11AddToTargetIS1_TnNSt9enable_ifIXntsr3std7is_sameIT_NS_8string_tEEE5valueEiE4typeELi0EEEbRKS1_.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.f

bb.f:                                             ; preds = %_ZN6duckdb19PrimitiveDictionaryINS_15double_na_equalEdNS_21FloatingPointOperatorEE11AddToTargetIS1_TnNSt9enable_ifIXntsr3std7is_sameIT_NS_8string_tEEE5valueEiE4typeELi0EEEbRKS1_.exit, %.loopexit
  store i8 1, ptr %i.b, align 8, !tbaa !2140
  br label %_ZNK6duckdb19PrimitiveDictionaryINS_15double_na_equalEdNS_21FloatingPointOperatorEE6LookupERKS1_.exit

bb.g:                                             ; preds = %bb.e
  %i.ak = load ptr, ptr %i.ag, align 8, !tbaa !15
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 8), !inline_history !2186
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  store double %1, ptr %.lcssa.i.ph, align 8, !tbaa !1316
  %i.am = load i32, ptr %i.z, align 8, !tbaa !2139 ; 2 uses
  %i.an = add i32 %i.am, 1
  store i32 %i.an, ptr %i.z, align 8, !tbaa !2139
  store i32 %i.am, ptr %i.y, align 8, !tbaa !2169
  br label %_ZNK6duckdb19PrimitiveDictionaryINS_15double_na_equalEdNS_21FloatingPointOperatorEE6LookupERKS1_.exit

_ZNK6duckdb19PrimitiveDictionaryINS_15double_na_equalEdNS_21FloatingPointOperatorEE6LookupERKS1_.exit: ; preds = %bb.d, %bb.f, %bb.g, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_15double_na_equalEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !394
  %i.e = icmp eq i8 %i.d, 12
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.35, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 12, ptr %i.a, align 1, !tbaa !797
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.g = load i8, ptr %i.c, align 1, !tbaa !394
  store i8 %i.g, ptr %i.b, align 1, !tbaa !797
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.i unwind label %bb.e

end_hunk_14
begin_hunk_15_@_ZN6duckdb25StandardColumnWriterStateINS_8string_tES1_NS_19ParquetBlobOperatorEEC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm:bb.a
  store i64 %3, ptr %i.d, align 8, !tbaa !747
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, i8 0, i64 72, i1 false)
  %i.g = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #28
          to label %_ZN6duckdb26PrimitiveColumnWriterStateC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm.exit unwind label %bb.b ; 3 uses

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @_ZNSt10unique_ptrIN6duckdb18ParquetBloomFilterESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #25
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !724  ; 3 uses
  %.not.i6.i = icmp eq ptr %i.k, null
  br i1 %.not.i6.i, label %_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN6duckdb22ColumnWriterStatisticsEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb22ColumnWriterStatisticsEEclEPS1_.exit.i.i: ; preds = %bb.b
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.k) #25, !inline_history !748
  br label %_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN6duckdb22ColumnWriterStatisticsEEclEPS1_.exit.i.i, %bb.b
  tail call void @_ZNSt6vectorIN6duckdb20PageWriteInformationESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #25
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !749  ; 2 uses
  %.not.i.i.i7.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i7.i, label %_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.o) #24
  br label %_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i

common.resume:                                    ; preds = %bb.k, %_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.h, %_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i ], [ %.pn, %bb.k ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i: ; preds = %bb.c, %_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i
  tail call void @_ZN6duckdb17ColumnWriterStateD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(192) %0) #25
  br label %common.resume

_ZN6duckdb26PrimitiveColumnWriterStateC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm.exit: ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !749
  store ptr %i.r, ptr %i.q, align 8, !tbaa !750
  store ptr %i.r, ptr %i.p, align 8, !tbaa !751
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb25StandardColumnWriterStateINS_8string_tES1_NS_19ParquetBlobOperatorEEE, i64 16), ptr %0, align 8, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.s, i8 0, i64 20, i1 false)
  %i.u = load ptr, ptr %1, align 8, !tbaa !193, !nonnull !78, !align !79
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb15BufferAllocator3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %i.u)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %_ZN6duckdb26PrimitiveColumnWriterStateC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.sroa.0.0.copyload.i = load i64, ptr %i.w, align 8, !tbaa !191 ; 2 uses
  %.not = icmp eq i64 %.sroa.0.0.copyload.i, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %.sroa.0.0.copyload.i, ptr %4, align 8
  %i.x = invoke noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.g unwind label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.z = load i64, ptr %i.y, align 8, !tbaa !752
  %i.aa = invoke noundef i64 @_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl(i64 noundef %i.z)
          to label %_ZN6duckdb11NumericCastImlvEET_T0_.exit unwind label %bb.j

_ZN6duckdb11NumericCastImlvEET_T0_.exit:          ; preds = %bb.f
  %i.ab = udiv i64 %i.aa, 5
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %_ZN6duckdb11NumericCastImlvEET_T0_.exit
  %i.ac = phi i64 [ %i.ab, %_ZN6duckdb11NumericCastImlvEET_T0_.exit ], [ %i.x, %bb.e ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !765
  invoke void @_ZN6duckdb19PrimitiveDictionaryINS_8string_tES1_NS_19ParquetBlobOperatorEEC2ERNS_9AllocatorEmm(ptr noundef nonnull align 8 dereferenceable(153) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 noundef %i.ac, i64 noundef %i.ae)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i32 0, ptr %i.af, align 8, !tbaa !2230
  ret void

bb.i:                                             ; preds = %_ZN6duckdb26PrimitiveColumnWriterStateC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.f, %bb.g, %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.j ], [ %i.ag, %bb.i ]
  call void @_ZN6duckdb26PrimitiveColumnWriterStateD2Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) #25
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb19PrimitiveDictionaryINS_8string_tES1_NS_19ParquetBlobOperatorEEC2ERNS_9AllocatorEmm(ptr noundef nonnull align 8 dereferenceable(153) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !766
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.a, align 8, !tbaa !2276
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 0, ptr %i.b, align 8, !tbaa !2239
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = shl i64 %2, 1
  %i.e = tail call noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.d) ; 3 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !2269
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = add i64 %i.e, -1
  store i64 %i.g, ptr %i.f, align 8, !tbaa !2277
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i64 %3, ptr %i.h, align 8, !tbaa !2278
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !2279, !nonnull !78, !align !79 ; 2 uses
  %i.k = mul i64 %i.e, 24                         ; 2 uses
  %i.l = tail call noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 noundef %i.k), !noalias !2280
  tail call void @_ZN6duckdb13AllocatedDataC1ERNS_9AllocatorEPhm(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef %i.l, i64 noundef %i.k)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !2279, !nonnull !78, !align !79 ; 2 uses
  %i.o = load i64, ptr %i.h, align 8, !tbaa !2278
  %i.p = tail call noundef i64 @llvm.umin.i64(i64 %i.o, i64 1048576) ; 2 uses
  %i.q = invoke noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 noundef %i.p)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.a
  invoke void @_ZN6duckdb13AllocatedDataC1ERNS_9AllocatorEPhm(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef %i.q, i64 noundef %i.p)
          to label %_ZN6duckdb9Allocator8AllocateEm.exit unwind label %bb.c

_ZN6duckdb9Allocator8AllocateEm.exit:             ; preds = %.noexc
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !197
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.v = load i64, ptr %i.u, align 8, !tbaa !774
  invoke void @_ZN6duckdb12MemoryStreamC1EPhm(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef %i.t, i64 noundef %i.v)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN6duckdb9Allocator8AllocateEm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !197  ; 10 uses
  store ptr %i.y, ptr %i.w, align 8, !tbaa !2270
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  store i8 0, ptr %i.z, align 8, !tbaa !2240
  %i.aa = load i64, ptr %i.c, align 8, !tbaa !2269 ; 4 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZN6duckdb19PrimitiveDictionaryINS_8string_tES1_NS_19ParquetBlobOperatorEE5ClearEv.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %xtraiter = and i64 %i.aa, 7                    ; 3 uses
  %i.ab = icmp ult i64 %i.aa, 8
  br i1 %i.ab, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.aa, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.03.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.as, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.03.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i32 -1, ptr %i.ad, align 8, !tbaa !2271
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.03.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  store i32 -1, ptr %i.af, align 8, !tbaa !2271
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.03.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  store i32 -1, ptr %i.ah, align 8, !tbaa !2271
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.03.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 88
  store i32 -1, ptr %i.aj, align 8, !tbaa !2271
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.03.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 112
  store i32 -1, ptr %i.al, align 8, !tbaa !2271
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.03.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 136
  store i32 -1, ptr %i.an, align 8, !tbaa !2271
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.03.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 160
  store i32 -1, ptr %i.ap, align 8, !tbaa !2271
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.03.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 184
  store i32 -1, ptr %i.ar, align 8, !tbaa !2271
  %i.as = add nuw i64 %.03.i, 8                   ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN6duckdb19PrimitiveDictionaryINS_8string_tES1_NS_19ParquetBlobOperatorEE5ClearEv.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !2283

_ZN6duckdb19PrimitiveDictionaryINS_8string_tES1_NS_19ParquetBlobOperatorEE5ClearEv.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb19PrimitiveDictionaryINS_8string_tES1_NS_19ParquetBlobOperatorEE5ClearEv.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN6duckdb19PrimitiveDictionaryINS_8string_tES1_NS_19ParquetBlobOperatorEE5ClearEv.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.03.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.as, %_ZN6duckdb19PrimitiveDictionaryINS_8string_tES1_NS_19ParquetBlobOperatorEE5ClearEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod8 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod8)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.03.i.epil = phi i64 [ %i.av, %.lr.ph.i.epil ], [ %.03.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.03.i.epil
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i32 -1, ptr %i.au, align 8, !tbaa !2271
  %i.av = add nuw i64 %.03.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN6duckdb19PrimitiveDictionaryINS_8string_tES1_NS_19ParquetBlobOperatorEE5ClearEv.exit, label %.lr.ph.i.epil, !llvm.loop !2284

_ZN6duckdb19PrimitiveDictionaryINS_8string_tES1_NS_19ParquetBlobOperatorEE5ClearEv.exit: ; preds = %_ZN6duckdb19PrimitiveDictionaryINS_8string_tES1_NS_19ParquetBlobOperatorEE5ClearEv.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.b
  store i32 0, ptr %i.b, align 8, !tbaa !2239
  store i8 0, ptr %i.z, align 8, !tbaa !2240
  ret void

bb.c:                                             ; preds = %.noexc, %bb.a
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %_ZN6duckdb9Allocator8AllocateEm.exit
  %i.ax = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.m) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.ax, %bb.d ], [ %i.aw, %bb.c ]
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.i) #25
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6duckdb25StandardColumnWriterStateINS_8string_tES1_NS_19ParquetBlobOperatorEED2Ev(ptr noundef nonnull align 8 dereferenceable(380) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb25StandardColumnWriterStateINS_8string_tES1_NS_19ParquetBlobOperatorEEE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  tail call void @_ZN6duckdb12MemoryStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #25
  tail call void @_ZN6duckdb26PrimitiveColumnWriterStateD2Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6duckdb25StandardColumnWriterStateINS_8string_tES1_NS_19ParquetBlobOperatorEED0Ev(ptr noundef nonnull align 8 dereferenceable(380) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb25StandardColumnWriterStateINS_8string_tES1_NS_19ParquetBlobOperatorEEE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  tail call void @_ZN6duckdb12MemoryStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #25, !inline_history !2285
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #25, !inline_history !2285
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #25, !inline_history !2285
  tail call void @_ZN6duckdb26PrimitiveColumnWriterStateD2Ev(ptr noundef nonnull align 8 dereferenceable(380) %0) #25, !inline_history !2285
  tail call void @_ZdlPv(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb19PrimitiveDictionaryINS_8string_tES1_NS_19ParquetBlobOperatorEE6InsertILb1EEEvS1_(ptr noundef nonnull align 8 dereferenceable(153) %0, i64 %1, ptr %2) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %3 = alloca %"struct.duckdb::string_t", align 8 ; 4 uses
  store i64 %1, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !2240, !range !250, !noundef !78
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = ptrtoint ptr %2 to i64
  br i1 %i.d, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef i64 @_ZN6duckdb4HashINS_8string_tEEEmT_(i64 %1, ptr %2)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !2277 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !2270 ; 2 uses
  %.07.i = and i64 %i.h, %i.f                     ; 2 uses
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %.07.i ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !2271
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %_ZNK6duckdb19PrimitiveDictionaryINS_8string_tES1_NS_19ParquetBlobOperatorEE6LookupERKS1_.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.o = and i64 %1, 4294967295
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i
  %i.p = phi ptr [ %i.k, %.lr.ph.i ], [ %i.x, %bb.g ] ; 4 uses
  %.08.i = phi i64 [ %.07.i, %.lr.ph.i ], [ %.0.i, %bb.g ]
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.p, align 1 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.0.copyload.i.i.i.i.i, %1
  %i.q = trunc i64 %.0.copyload.i.i.i.i.i to i32
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.0.copyload.i13.i.i.i.i = load i64, ptr %i.r, align 1 ; 2 uses
  %i.s = icmp eq i64 %.0.copyload.i13.i.i.i.i, %i.e
  %i.t = inttoptr i64 %.0.copyload.i13.i.i.i.i to ptr
  br i1 %i.s, label %_ZNK6duckdb19PrimitiveDictionaryINS_8string_tES1_NS_19ParquetBlobOperatorEE6LookupERKS1_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = icmp ult i32 %i.q, 13
  br i1 %i.u, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %i.t, ptr %2, i64 %i.o)
  %i.v = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.v, label %_ZNK6duckdb19PrimitiveDictionaryINS_8string_tES1_NS_19ParquetBlobOperatorEE6LookupERKS1_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  %i.w = add i64 %.08.i, 1
  %.0.i = and i64 %i.w, %i.h                      ; 2 uses
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %.0.i ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load i32, ptr %i.y, align 8, !tbaa !2271
  %i.aa = icmp eq i32 %i.z, -1
  br i1 %i.aa, label %_ZNK6duckdb19PrimitiveDictionaryINS_8string_tES1_NS_19ParquetBlobOperatorEE6LookupERKS1_.exit, label %bb.c, !llvm.loop !2286

_ZNK6duckdb19PrimitiveDictionaryINS_8string_tES1_NS_19ParquetBlobOperatorEE6LookupERKS1_.exit: ; preds = %bb.d, %bb.f, %bb.g
  %.lcssa.i.ph = phi ptr [ %i.p, %bb.f ], [ %i.p, %bb.d ], [ %i.x, %bb.g ] ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.lcssa.i.ph, i64 16
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !2271
  %i.ab = icmp eq i32 %.pre, -1
  br i1 %i.ab, label %_ZNK6duckdb19PrimitiveDictionaryINS_8string_tES1_NS_19ParquetBlobOperatorEE6LookupERKS1_.exit.thread, label %bb.k

_ZNK6duckdb19PrimitiveDictionaryINS_8string_tES1_NS_19ParquetBlobOperatorEE6LookupERKS1_.exit.thread: ; preds = %bb.b, %_ZNK6duckdb19PrimitiveDictionaryINS_8string_tES1_NS_19ParquetBlobOperatorEE6LookupERKS1_.exit
  %.lcssa.i5 = phi ptr [ %.lcssa.i.ph, %_ZNK6duckdb19PrimitiveDictionaryINS_8string_tES1_NS_19ParquetBlobOperatorEE6LookupERKS1_.exit ], [ %i.k, %bb.b ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.lcssa.i5, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !2239
  %i.af = add i32 %i.ae, 1
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !2276
  %i.aj = icmp ult i64 %i.ai, %i.ag
  br i1 %i.aj, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNK6duckdb19PrimitiveDictionaryINS_8string_tES1_NS_19ParquetBlobOperatorEE6LookupERKS1_.exit.thread
  %i.ak = call noundef zeroext i1 @_ZN6duckdb19PrimitiveDictionaryINS_8string_tES1_NS_19ParquetBlobOperatorEE11AddToTargetIS1_TnNSt9enable_ifIXsr3std7is_sameIT_S1_EE5valueEiE4typeELi0EEEbRS1_(ptr noundef nonnull align 8 dereferenceable(153) %0, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br i1 %i.ak, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNK6duckdb19PrimitiveDictionaryINS_8string_tES1_NS_19ParquetBlobOperatorEE6LookupERKS1_.exit.thread
  store i8 1, ptr %i.b, align 8, !tbaa !2240
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.lcssa.i5, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !2287
  %i.al = load i32, ptr %i.ad, align 8, !tbaa !2239 ; 2 uses
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr %i.ad, align 8, !tbaa !2239
  store i32 %i.al, ptr %i.ac, align 8, !tbaa !2271
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %_ZNK6duckdb19PrimitiveDictionaryINS_8string_tES1_NS_19ParquetBlobOperatorEE6LookupERKS1_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !394
  %i.e = icmp eq i8 %i.d, -56
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.35, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 -56, ptr %i.a, align 1, !tbaa !797
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
end_hunk_15
begin_hunk_16_@_ZN6duckdb25StandardColumnWriterStateINS_8string_tES1_NS_23ParquetGeometryOperatorEEC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm:bb.a
  store i64 %3, ptr %i.d, align 8, !tbaa !747
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, i8 0, i64 72, i1 false)
  %i.g = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #28
          to label %_ZN6duckdb26PrimitiveColumnWriterStateC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm.exit unwind label %bb.b ; 3 uses

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @_ZNSt10unique_ptrIN6duckdb18ParquetBloomFilterESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #25
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !724  ; 3 uses
  %.not.i6.i = icmp eq ptr %i.k, null
  br i1 %.not.i6.i, label %_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN6duckdb22ColumnWriterStatisticsEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb22ColumnWriterStatisticsEEclEPS1_.exit.i.i: ; preds = %bb.b
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.k) #25, !inline_history !748
  br label %_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN6duckdb22ColumnWriterStatisticsEEclEPS1_.exit.i.i, %bb.b
  tail call void @_ZNSt6vectorIN6duckdb20PageWriteInformationESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #25
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !749  ; 2 uses
  %.not.i.i.i7.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i7.i, label %_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.o) #24
  br label %_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i

common.resume:                                    ; preds = %bb.k, %_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.h, %_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i ], [ %.pn, %bb.k ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i: ; preds = %bb.c, %_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i
  tail call void @_ZN6duckdb17ColumnWriterStateD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(192) %0) #25
  br label %common.resume

_ZN6duckdb26PrimitiveColumnWriterStateC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm.exit: ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !749
  store ptr %i.r, ptr %i.q, align 8, !tbaa !750
  store ptr %i.r, ptr %i.p, align 8, !tbaa !751
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb25StandardColumnWriterStateINS_8string_tES1_NS_23ParquetGeometryOperatorEEE, i64 16), ptr %0, align 8, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.s, i8 0, i64 20, i1 false)
  %i.u = load ptr, ptr %1, align 8, !tbaa !193, !nonnull !78, !align !79
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb15BufferAllocator3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %i.u)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %_ZN6duckdb26PrimitiveColumnWriterStateC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.sroa.0.0.copyload.i = load i64, ptr %i.w, align 8, !tbaa !191 ; 2 uses
  %.not = icmp eq i64 %.sroa.0.0.copyload.i, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %.sroa.0.0.copyload.i, ptr %4, align 8
  %i.x = invoke noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.g unwind label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.z = load i64, ptr %i.y, align 8, !tbaa !752
  %i.aa = invoke noundef i64 @_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl(i64 noundef %i.z)
          to label %_ZN6duckdb11NumericCastImlvEET_T0_.exit unwind label %bb.j

_ZN6duckdb11NumericCastImlvEET_T0_.exit:          ; preds = %bb.f
  %i.ab = udiv i64 %i.aa, 5
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %_ZN6duckdb11NumericCastImlvEET_T0_.exit
  %i.ac = phi i64 [ %i.ab, %_ZN6duckdb11NumericCastImlvEET_T0_.exit ], [ %i.x, %bb.e ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !765
  invoke void @_ZN6duckdb19PrimitiveDictionaryINS_8string_tES1_NS_23ParquetGeometryOperatorEEC2ERNS_9AllocatorEmm(ptr noundef nonnull align 8 dereferenceable(153) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 noundef %i.ac, i64 noundef %i.ae)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i32 0, ptr %i.af, align 8, !tbaa !2351
  ret void

bb.i:                                             ; preds = %_ZN6duckdb26PrimitiveColumnWriterStateC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.f, %bb.g, %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.j ], [ %i.ag, %bb.i ]
  call void @_ZN6duckdb26PrimitiveColumnWriterStateD2Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) #25
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb19PrimitiveDictionaryINS_8string_tES1_NS_23ParquetGeometryOperatorEEC2ERNS_9AllocatorEmm(ptr noundef nonnull align 8 dereferenceable(153) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !766
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.a, align 8, !tbaa !2398
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 0, ptr %i.b, align 8, !tbaa !2360
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = shl i64 %2, 1
  %i.e = tail call noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.d) ; 3 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !2392
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = add i64 %i.e, -1
  store i64 %i.g, ptr %i.f, align 8, !tbaa !2399
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i64 %3, ptr %i.h, align 8, !tbaa !2400
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !2401, !nonnull !78, !align !79 ; 2 uses
  %i.k = mul i64 %i.e, 24                         ; 2 uses
  %i.l = tail call noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 noundef %i.k), !noalias !2402
  tail call void @_ZN6duckdb13AllocatedDataC1ERNS_9AllocatorEPhm(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef %i.l, i64 noundef %i.k)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !2401, !nonnull !78, !align !79 ; 2 uses
  %i.o = load i64, ptr %i.h, align 8, !tbaa !2400
  %i.p = tail call noundef i64 @llvm.umin.i64(i64 %i.o, i64 1048576) ; 2 uses
  %i.q = invoke noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 noundef %i.p)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.a
  invoke void @_ZN6duckdb13AllocatedDataC1ERNS_9AllocatorEPhm(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef %i.q, i64 noundef %i.p)
          to label %_ZN6duckdb9Allocator8AllocateEm.exit unwind label %bb.c

_ZN6duckdb9Allocator8AllocateEm.exit:             ; preds = %.noexc
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !197
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.v = load i64, ptr %i.u, align 8, !tbaa !774
  invoke void @_ZN6duckdb12MemoryStreamC1EPhm(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef %i.t, i64 noundef %i.v)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN6duckdb9Allocator8AllocateEm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !197  ; 10 uses
  store ptr %i.y, ptr %i.w, align 8, !tbaa !2393
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  store i8 0, ptr %i.z, align 8, !tbaa !2361
  %i.aa = load i64, ptr %i.c, align 8, !tbaa !2392 ; 4 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZN6duckdb19PrimitiveDictionaryINS_8string_tES1_NS_23ParquetGeometryOperatorEE5ClearEv.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %xtraiter = and i64 %i.aa, 7                    ; 3 uses
  %i.ab = icmp ult i64 %i.aa, 8
  br i1 %i.ab, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.aa, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.03.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.as, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.03.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i32 -1, ptr %i.ad, align 8, !tbaa !2394
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.03.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  store i32 -1, ptr %i.af, align 8, !tbaa !2394
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.03.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  store i32 -1, ptr %i.ah, align 8, !tbaa !2394
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.03.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 88
  store i32 -1, ptr %i.aj, align 8, !tbaa !2394
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.03.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 112
  store i32 -1, ptr %i.al, align 8, !tbaa !2394
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.03.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 136
  store i32 -1, ptr %i.an, align 8, !tbaa !2394
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.03.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 160
  store i32 -1, ptr %i.ap, align 8, !tbaa !2394
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.03.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 184
  store i32 -1, ptr %i.ar, align 8, !tbaa !2394
  %i.as = add nuw i64 %.03.i, 8                   ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN6duckdb19PrimitiveDictionaryINS_8string_tES1_NS_23ParquetGeometryOperatorEE5ClearEv.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !2405

_ZN6duckdb19PrimitiveDictionaryINS_8string_tES1_NS_23ParquetGeometryOperatorEE5ClearEv.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb19PrimitiveDictionaryINS_8string_tES1_NS_23ParquetGeometryOperatorEE5ClearEv.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN6duckdb19PrimitiveDictionaryINS_8string_tES1_NS_23ParquetGeometryOperatorEE5ClearEv.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.03.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.as, %_ZN6duckdb19PrimitiveDictionaryINS_8string_tES1_NS_23ParquetGeometryOperatorEE5ClearEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod8 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod8)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.03.i.epil = phi i64 [ %i.av, %.lr.ph.i.epil ], [ %.03.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.03.i.epil
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i32 -1, ptr %i.au, align 8, !tbaa !2394
  %i.av = add nuw i64 %.03.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN6duckdb19PrimitiveDictionaryINS_8string_tES1_NS_23ParquetGeometryOperatorEE5ClearEv.exit, label %.lr.ph.i.epil, !llvm.loop !2406

_ZN6duckdb19PrimitiveDictionaryINS_8string_tES1_NS_23ParquetGeometryOperatorEE5ClearEv.exit: ; preds = %_ZN6duckdb19PrimitiveDictionaryINS_8string_tES1_NS_23ParquetGeometryOperatorEE5ClearEv.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.b
  store i32 0, ptr %i.b, align 8, !tbaa !2360
  store i8 0, ptr %i.z, align 8, !tbaa !2361
  ret void

bb.c:                                             ; preds = %.noexc, %bb.a
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %_ZN6duckdb9Allocator8AllocateEm.exit
  %i.ax = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.m) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.ax, %bb.d ], [ %i.aw, %bb.c ]
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.i) #25
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6duckdb25StandardColumnWriterStateINS_8string_tES1_NS_23ParquetGeometryOperatorEED2Ev(ptr noundef nonnull align 8 dereferenceable(380) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb25StandardColumnWriterStateINS_8string_tES1_NS_23ParquetGeometryOperatorEEE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  tail call void @_ZN6duckdb12MemoryStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #25
  tail call void @_ZN6duckdb26PrimitiveColumnWriterStateD2Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6duckdb25StandardColumnWriterStateINS_8string_tES1_NS_23ParquetGeometryOperatorEED0Ev(ptr noundef nonnull align 8 dereferenceable(380) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb25StandardColumnWriterStateINS_8string_tES1_NS_23ParquetGeometryOperatorEEE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  tail call void @_ZN6duckdb12MemoryStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #25, !inline_history !2407
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #25, !inline_history !2407
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #25, !inline_history !2407
  tail call void @_ZN6duckdb26PrimitiveColumnWriterStateD2Ev(ptr noundef nonnull align 8 dereferenceable(380) %0) #25, !inline_history !2407
  tail call void @_ZdlPv(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb19PrimitiveDictionaryINS_8string_tES1_NS_23ParquetGeometryOperatorEE6InsertILb1EEEvS1_(ptr noundef nonnull align 8 dereferenceable(153) %0, i64 %1, ptr %2) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %3 = alloca %"struct.duckdb::string_t", align 8 ; 4 uses
  store i64 %1, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !2361, !range !250, !noundef !78
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = ptrtoint ptr %2 to i64
  br i1 %i.d, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef i64 @_ZN6duckdb4HashINS_8string_tEEEmT_(i64 %1, ptr %2)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !2399 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !2393 ; 2 uses
  %.07.i = and i64 %i.h, %i.f                     ; 2 uses
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %.07.i ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !2394
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %_ZNK6duckdb19PrimitiveDictionaryINS_8string_tES1_NS_23ParquetGeometryOperatorEE6LookupERKS1_.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.o = and i64 %1, 4294967295
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i
  %i.p = phi ptr [ %i.k, %.lr.ph.i ], [ %i.x, %bb.g ] ; 4 uses
  %.08.i = phi i64 [ %.07.i, %.lr.ph.i ], [ %.0.i, %bb.g ]
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.p, align 1 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.0.copyload.i.i.i.i.i, %1
  %i.q = trunc i64 %.0.copyload.i.i.i.i.i to i32
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.0.copyload.i13.i.i.i.i = load i64, ptr %i.r, align 1 ; 2 uses
  %i.s = icmp eq i64 %.0.copyload.i13.i.i.i.i, %i.e
  %i.t = inttoptr i64 %.0.copyload.i13.i.i.i.i to ptr
  br i1 %i.s, label %_ZNK6duckdb19PrimitiveDictionaryINS_8string_tES1_NS_23ParquetGeometryOperatorEE6LookupERKS1_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = icmp ult i32 %i.q, 13
  br i1 %i.u, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %i.t, ptr %2, i64 %i.o)
  %i.v = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.v, label %_ZNK6duckdb19PrimitiveDictionaryINS_8string_tES1_NS_23ParquetGeometryOperatorEE6LookupERKS1_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  %i.w = add i64 %.08.i, 1
  %.0.i = and i64 %i.w, %i.h                      ; 2 uses
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %.0.i ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load i32, ptr %i.y, align 8, !tbaa !2394
  %i.aa = icmp eq i32 %i.z, -1
  br i1 %i.aa, label %_ZNK6duckdb19PrimitiveDictionaryINS_8string_tES1_NS_23ParquetGeometryOperatorEE6LookupERKS1_.exit, label %bb.c, !llvm.loop !2408

_ZNK6duckdb19PrimitiveDictionaryINS_8string_tES1_NS_23ParquetGeometryOperatorEE6LookupERKS1_.exit: ; preds = %bb.d, %bb.f, %bb.g
  %.lcssa.i.ph = phi ptr [ %i.p, %bb.f ], [ %i.p, %bb.d ], [ %i.x, %bb.g ] ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.lcssa.i.ph, i64 16
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !2394
  %i.ab = icmp eq i32 %.pre, -1
  br i1 %i.ab, label %_ZNK6duckdb19PrimitiveDictionaryINS_8string_tES1_NS_23ParquetGeometryOperatorEE6LookupERKS1_.exit.thread, label %bb.k

_ZNK6duckdb19PrimitiveDictionaryINS_8string_tES1_NS_23ParquetGeometryOperatorEE6LookupERKS1_.exit.thread: ; preds = %bb.b, %_ZNK6duckdb19PrimitiveDictionaryINS_8string_tES1_NS_23ParquetGeometryOperatorEE6LookupERKS1_.exit
  %.lcssa.i5 = phi ptr [ %.lcssa.i.ph, %_ZNK6duckdb19PrimitiveDictionaryINS_8string_tES1_NS_23ParquetGeometryOperatorEE6LookupERKS1_.exit ], [ %i.k, %bb.b ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.lcssa.i5, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !2360
  %i.af = add i32 %i.ae, 1
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !2398
  %i.aj = icmp ult i64 %i.ai, %i.ag
  br i1 %i.aj, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNK6duckdb19PrimitiveDictionaryINS_8string_tES1_NS_23ParquetGeometryOperatorEE6LookupERKS1_.exit.thread
  %i.ak = call noundef zeroext i1 @_ZN6duckdb19PrimitiveDictionaryINS_8string_tES1_NS_23ParquetGeometryOperatorEE11AddToTargetIS1_TnNSt9enable_ifIXsr3std7is_sameIT_S1_EE5valueEiE4typeELi0EEEbRS1_(ptr noundef nonnull align 8 dereferenceable(153) %0, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br i1 %i.ak, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNK6duckdb19PrimitiveDictionaryINS_8string_tES1_NS_23ParquetGeometryOperatorEE6LookupERKS1_.exit.thread
  store i8 1, ptr %i.b, align 8, !tbaa !2361
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.lcssa.i5, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !2287
  %i.al = load i32, ptr %i.ad, align 8, !tbaa !2360 ; 2 uses
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr %i.ad, align 8, !tbaa !2360
  store i32 %i.al, ptr %i.ac, align 8, !tbaa !2394
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %_ZNK6duckdb19PrimitiveDictionaryINS_8string_tES1_NS_23ParquetGeometryOperatorEE6LookupERKS1_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN6duckdb19PrimitiveDictionaryINS_8string_tES1_NS_23ParquetGeometryOperatorEE11AddToTargetIS1_TnNSt9enable_ifIXsr3std7is_sameIT_S1_EE5valueEiE4typeELi0EEEbRS1_(ptr noundef nonnull align 8 dereferenceable(153) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %2 = alloca %"class.duckdb::AllocatedData", align 8 ; 8 uses
  %3 = alloca %"class.duckdb::MemoryStream", align 8 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 9 uses
  %i.c = tail call noundef i64 @_ZNK6duckdb12MemoryStream11GetPositionEv(ptr noundef nonnull align 8 dereferenceable(48) %i.b)
  %i.d = load i32, ptr %1, align 8, !tbaa !14
  %i.e = zext i32 %i.d to i64
  %i.f = add i64 %i.c, 4
  %i.g = add i64 %i.f, %i.e                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !774  ; 2 uses
  %i.k = icmp ugt i64 %i.g, %i.j
  br i1 %i.k, label %.preheader, label %bb.o

.preheader:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load i64, ptr %i.l, align 8, !tbaa !2400 ; 2 uses
  br label %bb.b

end_hunk_16
begin_hunk_17_@_ZN6duckdb25StandardColumnWriterStateINS_8string_tES1_NS_21ParquetStringOperatorEEC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm:bb.a
  store i64 %3, ptr %i.d, align 8, !tbaa !747
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, i8 0, i64 72, i1 false)
  %i.g = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #28
          to label %_ZN6duckdb26PrimitiveColumnWriterStateC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm.exit unwind label %bb.b ; 3 uses

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @_ZNSt10unique_ptrIN6duckdb18ParquetBloomFilterESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #25
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !724  ; 3 uses
  %.not.i6.i = icmp eq ptr %i.k, null
  br i1 %.not.i6.i, label %_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN6duckdb22ColumnWriterStatisticsEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb22ColumnWriterStatisticsEEclEPS1_.exit.i.i: ; preds = %bb.b
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.k) #25, !inline_history !748
  br label %_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN6duckdb22ColumnWriterStatisticsEEclEPS1_.exit.i.i, %bb.b
  tail call void @_ZNSt6vectorIN6duckdb20PageWriteInformationESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #25
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !749  ; 2 uses
  %.not.i.i.i7.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i7.i, label %_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.o) #24
  br label %_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i

common.resume:                                    ; preds = %bb.k, %_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.h, %_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i ], [ %.pn, %bb.k ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i: ; preds = %bb.c, %_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i
  tail call void @_ZN6duckdb17ColumnWriterStateD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(192) %0) #25
  br label %common.resume

_ZN6duckdb26PrimitiveColumnWriterStateC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm.exit: ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !749
  store ptr %i.r, ptr %i.q, align 8, !tbaa !750
  store ptr %i.r, ptr %i.p, align 8, !tbaa !751
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb25StandardColumnWriterStateINS_8string_tES1_NS_21ParquetStringOperatorEEE, i64 16), ptr %0, align 8, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.s, i8 0, i64 20, i1 false)
  %i.u = load ptr, ptr %1, align 8, !tbaa !193, !nonnull !78, !align !79
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb15BufferAllocator3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %i.u)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %_ZN6duckdb26PrimitiveColumnWriterStateC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.sroa.0.0.copyload.i = load i64, ptr %i.w, align 8, !tbaa !191 ; 2 uses
  %.not = icmp eq i64 %.sroa.0.0.copyload.i, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %.sroa.0.0.copyload.i, ptr %4, align 8
  %i.x = invoke noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.g unwind label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.z = load i64, ptr %i.y, align 8, !tbaa !752
  %i.aa = invoke noundef i64 @_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl(i64 noundef %i.z)
          to label %_ZN6duckdb11NumericCastImlvEET_T0_.exit unwind label %bb.j

_ZN6duckdb11NumericCastImlvEET_T0_.exit:          ; preds = %bb.f
  %i.ab = udiv i64 %i.aa, 5
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %_ZN6duckdb11NumericCastImlvEET_T0_.exit
  %i.ac = phi i64 [ %i.ab, %_ZN6duckdb11NumericCastImlvEET_T0_.exit ], [ %i.x, %bb.e ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !765
  invoke void @_ZN6duckdb19PrimitiveDictionaryINS_8string_tES1_NS_21ParquetStringOperatorEEC2ERNS_9AllocatorEmm(ptr noundef nonnull align 8 dereferenceable(153) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 noundef %i.ac, i64 noundef %i.ae)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i32 0, ptr %i.af, align 8, !tbaa !2483
  ret void

bb.i:                                             ; preds = %_ZN6duckdb26PrimitiveColumnWriterStateC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.f, %bb.g, %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.j ], [ %i.ag, %bb.i ]
  call void @_ZN6duckdb26PrimitiveColumnWriterStateD2Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) #25
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb19PrimitiveDictionaryINS_8string_tES1_NS_21ParquetStringOperatorEEC2ERNS_9AllocatorEmm(ptr noundef nonnull align 8 dereferenceable(153) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !766
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.a, align 8, !tbaa !2524
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 0, ptr %i.b, align 8, !tbaa !2492
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = shl i64 %2, 1
  %i.e = tail call noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.d) ; 3 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !2518
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = add i64 %i.e, -1
  store i64 %i.g, ptr %i.f, align 8, !tbaa !2525
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i64 %3, ptr %i.h, align 8, !tbaa !2526
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !2527, !nonnull !78, !align !79 ; 2 uses
  %i.k = mul i64 %i.e, 24                         ; 2 uses
  %i.l = tail call noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 noundef %i.k), !noalias !2528
  tail call void @_ZN6duckdb13AllocatedDataC1ERNS_9AllocatorEPhm(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef %i.l, i64 noundef %i.k)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !2527, !nonnull !78, !align !79 ; 2 uses
  %i.o = load i64, ptr %i.h, align 8, !tbaa !2526
  %i.p = tail call noundef i64 @llvm.umin.i64(i64 %i.o, i64 1048576) ; 2 uses
  %i.q = invoke noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 noundef %i.p)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.a
  invoke void @_ZN6duckdb13AllocatedDataC1ERNS_9AllocatorEPhm(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef %i.q, i64 noundef %i.p)
          to label %_ZN6duckdb9Allocator8AllocateEm.exit unwind label %bb.c

_ZN6duckdb9Allocator8AllocateEm.exit:             ; preds = %.noexc
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !197
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.v = load i64, ptr %i.u, align 8, !tbaa !774
  invoke void @_ZN6duckdb12MemoryStreamC1EPhm(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef %i.t, i64 noundef %i.v)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN6duckdb9Allocator8AllocateEm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !197  ; 10 uses
  store ptr %i.y, ptr %i.w, align 8, !tbaa !2519
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  store i8 0, ptr %i.z, align 8, !tbaa !2493
  %i.aa = load i64, ptr %i.c, align 8, !tbaa !2518 ; 4 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZN6duckdb19PrimitiveDictionaryINS_8string_tES1_NS_21ParquetStringOperatorEE5ClearEv.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %xtraiter = and i64 %i.aa, 7                    ; 3 uses
  %i.ab = icmp ult i64 %i.aa, 8
  br i1 %i.ab, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.aa, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.03.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.as, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.03.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i32 -1, ptr %i.ad, align 8, !tbaa !2520
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.03.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  store i32 -1, ptr %i.af, align 8, !tbaa !2520
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.03.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  store i32 -1, ptr %i.ah, align 8, !tbaa !2520
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.03.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 88
  store i32 -1, ptr %i.aj, align 8, !tbaa !2520
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.03.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 112
  store i32 -1, ptr %i.al, align 8, !tbaa !2520
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.03.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 136
  store i32 -1, ptr %i.an, align 8, !tbaa !2520
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.03.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 160
  store i32 -1, ptr %i.ap, align 8, !tbaa !2520
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.03.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 184
  store i32 -1, ptr %i.ar, align 8, !tbaa !2520
  %i.as = add nuw i64 %.03.i, 8                   ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN6duckdb19PrimitiveDictionaryINS_8string_tES1_NS_21ParquetStringOperatorEE5ClearEv.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !2531

_ZN6duckdb19PrimitiveDictionaryINS_8string_tES1_NS_21ParquetStringOperatorEE5ClearEv.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb19PrimitiveDictionaryINS_8string_tES1_NS_21ParquetStringOperatorEE5ClearEv.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN6duckdb19PrimitiveDictionaryINS_8string_tES1_NS_21ParquetStringOperatorEE5ClearEv.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.03.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.as, %_ZN6duckdb19PrimitiveDictionaryINS_8string_tES1_NS_21ParquetStringOperatorEE5ClearEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod8 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod8)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.03.i.epil = phi i64 [ %i.av, %.lr.ph.i.epil ], [ %.03.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.03.i.epil
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i32 -1, ptr %i.au, align 8, !tbaa !2520
  %i.av = add nuw i64 %.03.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN6duckdb19PrimitiveDictionaryINS_8string_tES1_NS_21ParquetStringOperatorEE5ClearEv.exit, label %.lr.ph.i.epil, !llvm.loop !2532

_ZN6duckdb19PrimitiveDictionaryINS_8string_tES1_NS_21ParquetStringOperatorEE5ClearEv.exit: ; preds = %_ZN6duckdb19PrimitiveDictionaryINS_8string_tES1_NS_21ParquetStringOperatorEE5ClearEv.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.b
  store i32 0, ptr %i.b, align 8, !tbaa !2492
  store i8 0, ptr %i.z, align 8, !tbaa !2493
  ret void

bb.c:                                             ; preds = %.noexc, %bb.a
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %_ZN6duckdb9Allocator8AllocateEm.exit
  %i.ax = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.m) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.ax, %bb.d ], [ %i.aw, %bb.c ]
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.i) #25
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6duckdb25StandardColumnWriterStateINS_8string_tES1_NS_21ParquetStringOperatorEED2Ev(ptr noundef nonnull align 8 dereferenceable(380) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb25StandardColumnWriterStateINS_8string_tES1_NS_21ParquetStringOperatorEEE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  tail call void @_ZN6duckdb12MemoryStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #25
  tail call void @_ZN6duckdb26PrimitiveColumnWriterStateD2Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6duckdb25StandardColumnWriterStateINS_8string_tES1_NS_21ParquetStringOperatorEED0Ev(ptr noundef nonnull align 8 dereferenceable(380) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb25StandardColumnWriterStateINS_8string_tES1_NS_21ParquetStringOperatorEEE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  tail call void @_ZN6duckdb12MemoryStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #25, !inline_history !2533
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #25, !inline_history !2533
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #25, !inline_history !2533
  tail call void @_ZN6duckdb26PrimitiveColumnWriterStateD2Ev(ptr noundef nonnull align 8 dereferenceable(380) %0) #25, !inline_history !2533
  tail call void @_ZdlPv(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb19PrimitiveDictionaryINS_8string_tES1_NS_21ParquetStringOperatorEE6InsertILb1EEEvS1_(ptr noundef nonnull align 8 dereferenceable(153) %0, i64 %1, ptr %2) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %3 = alloca %"struct.duckdb::string_t", align 8 ; 4 uses
  store i64 %1, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !2493, !range !250, !noundef !78
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = ptrtoint ptr %2 to i64
  br i1 %i.d, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef i64 @_ZN6duckdb4HashINS_8string_tEEEmT_(i64 %1, ptr %2)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !2525 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !2519 ; 2 uses
  %.07.i = and i64 %i.h, %i.f                     ; 2 uses
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %.07.i ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !2520
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %_ZNK6duckdb19PrimitiveDictionaryINS_8string_tES1_NS_21ParquetStringOperatorEE6LookupERKS1_.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.o = and i64 %1, 4294967295
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i
  %i.p = phi ptr [ %i.k, %.lr.ph.i ], [ %i.x, %bb.g ] ; 4 uses
  %.08.i = phi i64 [ %.07.i, %.lr.ph.i ], [ %.0.i, %bb.g ]
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.p, align 1 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.0.copyload.i.i.i.i.i, %1
  %i.q = trunc i64 %.0.copyload.i.i.i.i.i to i32
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.0.copyload.i13.i.i.i.i = load i64, ptr %i.r, align 1 ; 2 uses
  %i.s = icmp eq i64 %.0.copyload.i13.i.i.i.i, %i.e
  %i.t = inttoptr i64 %.0.copyload.i13.i.i.i.i to ptr
  br i1 %i.s, label %_ZNK6duckdb19PrimitiveDictionaryINS_8string_tES1_NS_21ParquetStringOperatorEE6LookupERKS1_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = icmp ult i32 %i.q, 13
  br i1 %i.u, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %i.t, ptr %2, i64 %i.o)
  %i.v = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.v, label %_ZNK6duckdb19PrimitiveDictionaryINS_8string_tES1_NS_21ParquetStringOperatorEE6LookupERKS1_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  %i.w = add i64 %.08.i, 1
  %.0.i = and i64 %i.w, %i.h                      ; 2 uses
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %.0.i ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load i32, ptr %i.y, align 8, !tbaa !2520
  %i.aa = icmp eq i32 %i.z, -1
  br i1 %i.aa, label %_ZNK6duckdb19PrimitiveDictionaryINS_8string_tES1_NS_21ParquetStringOperatorEE6LookupERKS1_.exit, label %bb.c, !llvm.loop !2534

_ZNK6duckdb19PrimitiveDictionaryINS_8string_tES1_NS_21ParquetStringOperatorEE6LookupERKS1_.exit: ; preds = %bb.d, %bb.f, %bb.g
  %.lcssa.i.ph = phi ptr [ %i.p, %bb.f ], [ %i.p, %bb.d ], [ %i.x, %bb.g ] ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.lcssa.i.ph, i64 16
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !2520
  %i.ab = icmp eq i32 %.pre, -1
  br i1 %i.ab, label %_ZNK6duckdb19PrimitiveDictionaryINS_8string_tES1_NS_21ParquetStringOperatorEE6LookupERKS1_.exit.thread, label %bb.k

_ZNK6duckdb19PrimitiveDictionaryINS_8string_tES1_NS_21ParquetStringOperatorEE6LookupERKS1_.exit.thread: ; preds = %bb.b, %_ZNK6duckdb19PrimitiveDictionaryINS_8string_tES1_NS_21ParquetStringOperatorEE6LookupERKS1_.exit
  %.lcssa.i5 = phi ptr [ %.lcssa.i.ph, %_ZNK6duckdb19PrimitiveDictionaryINS_8string_tES1_NS_21ParquetStringOperatorEE6LookupERKS1_.exit ], [ %i.k, %bb.b ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.lcssa.i5, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !2492
  %i.af = add i32 %i.ae, 1
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !2524
  %i.aj = icmp ult i64 %i.ai, %i.ag
  br i1 %i.aj, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNK6duckdb19PrimitiveDictionaryINS_8string_tES1_NS_21ParquetStringOperatorEE6LookupERKS1_.exit.thread
  %i.ak = call noundef zeroext i1 @_ZN6duckdb19PrimitiveDictionaryINS_8string_tES1_NS_21ParquetStringOperatorEE11AddToTargetIS1_TnNSt9enable_ifIXsr3std7is_sameIT_S1_EE5valueEiE4typeELi0EEEbRS1_(ptr noundef nonnull align 8 dereferenceable(153) %0, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br i1 %i.ak, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNK6duckdb19PrimitiveDictionaryINS_8string_tES1_NS_21ParquetStringOperatorEE6LookupERKS1_.exit.thread
  store i8 1, ptr %i.b, align 8, !tbaa !2493
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.lcssa.i5, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !2287
  %i.al = load i32, ptr %i.ad, align 8, !tbaa !2492 ; 2 uses
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr %i.ad, align 8, !tbaa !2492
  store i32 %i.al, ptr %i.ac, align 8, !tbaa !2520
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %_ZNK6duckdb19PrimitiveDictionaryINS_8string_tES1_NS_21ParquetStringOperatorEE6LookupERKS1_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN6duckdb19PrimitiveDictionaryINS_8string_tES1_NS_21ParquetStringOperatorEE11AddToTargetIS1_TnNSt9enable_ifIXsr3std7is_sameIT_S1_EE5valueEiE4typeELi0EEEbRS1_(ptr noundef nonnull align 8 dereferenceable(153) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %2 = alloca %"class.duckdb::AllocatedData", align 8 ; 8 uses
  %3 = alloca %"class.duckdb::MemoryStream", align 8 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 9 uses
  %i.c = tail call noundef i64 @_ZNK6duckdb12MemoryStream11GetPositionEv(ptr noundef nonnull align 8 dereferenceable(48) %i.b)
  %i.d = load i32, ptr %1, align 8, !tbaa !14
  %i.e = zext i32 %i.d to i64
  %i.f = add i64 %i.c, 4
  %i.g = add i64 %i.f, %i.e                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !774  ; 2 uses
  %i.k = icmp ugt i64 %i.g, %i.j
  br i1 %i.k, label %.preheader, label %bb.o

.preheader:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load i64, ptr %i.l, align 8, !tbaa !2526 ; 2 uses
  br label %bb.b

end_hunk_17
begin_hunk_18_@_ZN6duckdb25StandardColumnWriterStateINS_9hugeint_tENS_21ParquetUUIDTargetTypeENS_19ParquetUUIDOperatorEEC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm:bb.a
  store i64 %3, ptr %i.d, align 8, !tbaa !747
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, i8 0, i64 72, i1 false)
  %i.g = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #28
          to label %_ZN6duckdb26PrimitiveColumnWriterStateC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm.exit unwind label %bb.b ; 3 uses

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @_ZNSt10unique_ptrIN6duckdb18ParquetBloomFilterESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #25
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !724  ; 3 uses
  %.not.i6.i = icmp eq ptr %i.k, null
  br i1 %.not.i6.i, label %_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN6duckdb22ColumnWriterStatisticsEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb22ColumnWriterStatisticsEEclEPS1_.exit.i.i: ; preds = %bb.b
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.k) #25, !inline_history !748
  br label %_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN6duckdb22ColumnWriterStatisticsEEclEPS1_.exit.i.i, %bb.b
  tail call void @_ZNSt6vectorIN6duckdb20PageWriteInformationESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #25
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !749  ; 2 uses
  %.not.i.i.i7.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i7.i, label %_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.o) #24
  br label %_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i

common.resume:                                    ; preds = %bb.k, %_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.h, %_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i ], [ %.pn, %bb.k ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i: ; preds = %bb.c, %_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i
  tail call void @_ZN6duckdb17ColumnWriterStateD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(192) %0) #25
  br label %common.resume

_ZN6duckdb26PrimitiveColumnWriterStateC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm.exit: ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !749
  store ptr %i.r, ptr %i.q, align 8, !tbaa !750
  store ptr %i.r, ptr %i.p, align 8, !tbaa !751
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb25StandardColumnWriterStateINS_9hugeint_tENS_21ParquetUUIDTargetTypeENS_19ParquetUUIDOperatorEEE, i64 16), ptr %0, align 8, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.s, i8 0, i64 20, i1 false)
  %i.u = load ptr, ptr %1, align 8, !tbaa !193, !nonnull !78, !align !79
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb15BufferAllocator3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %i.u)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %_ZN6duckdb26PrimitiveColumnWriterStateC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.sroa.0.0.copyload.i = load i64, ptr %i.w, align 8, !tbaa !191 ; 2 uses
  %.not = icmp eq i64 %.sroa.0.0.copyload.i, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %.sroa.0.0.copyload.i, ptr %4, align 8
  %i.x = invoke noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.g unwind label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.z = load i64, ptr %i.y, align 8, !tbaa !752
  %i.aa = invoke noundef i64 @_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl(i64 noundef %i.z)
          to label %_ZN6duckdb11NumericCastImlvEET_T0_.exit unwind label %bb.j

_ZN6duckdb11NumericCastImlvEET_T0_.exit:          ; preds = %bb.f
  %i.ab = udiv i64 %i.aa, 5
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %_ZN6duckdb11NumericCastImlvEET_T0_.exit
  %i.ac = phi i64 [ %i.ab, %_ZN6duckdb11NumericCastImlvEET_T0_.exit ], [ %i.x, %bb.e ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !765
  invoke void @_ZN6duckdb19PrimitiveDictionaryINS_9hugeint_tENS_21ParquetUUIDTargetTypeENS_19ParquetUUIDOperatorEEC2ERNS_9AllocatorEmm(ptr noundef nonnull align 8 dereferenceable(153) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 noundef %i.ac, i64 noundef %i.ae)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i32 0, ptr %i.af, align 8, !tbaa !2582
  ret void

bb.i:                                             ; preds = %_ZN6duckdb26PrimitiveColumnWriterStateC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.f, %bb.g, %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.j ], [ %i.ag, %bb.i ]
  call void @_ZN6duckdb26PrimitiveColumnWriterStateD2Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) #25
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb19PrimitiveDictionaryINS_9hugeint_tENS_21ParquetUUIDTargetTypeENS_19ParquetUUIDOperatorEEC2ERNS_9AllocatorEmm(ptr noundef nonnull align 8 dereferenceable(153) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !766
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.a, align 8, !tbaa !2624
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 0, ptr %i.b, align 8, !tbaa !2590
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = shl i64 %2, 1
  %i.e = tail call noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.d) ; 3 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !2618
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = add i64 %i.e, -1
  store i64 %i.g, ptr %i.f, align 8, !tbaa !2625
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %3, ptr %i.h, align 8, !tbaa !2626
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !2627, !nonnull !78, !align !79 ; 2 uses
  %i.k = mul i64 %i.e, 24                         ; 2 uses
  %i.l = tail call noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 noundef %i.k), !noalias !2628
  tail call void @_ZN6duckdb13AllocatedDataC1ERNS_9AllocatorEPhm(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef %i.l, i64 noundef %i.k)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !2627, !nonnull !78, !align !79 ; 2 uses
  %i.o = load i64, ptr %i.c, align 8, !tbaa !2618
  %i.p = shl i64 %i.o, 4                          ; 2 uses
  %i.q = invoke noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 noundef %i.p)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.a
  invoke void @_ZN6duckdb13AllocatedDataC1ERNS_9AllocatorEPhm(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef %i.q, i64 noundef %i.p)
          to label %_ZN6duckdb9Allocator8AllocateEm.exit unwind label %bb.c

_ZN6duckdb9Allocator8AllocateEm.exit:             ; preds = %.noexc
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !197
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.v = load i64, ptr %i.u, align 8, !tbaa !774
  invoke void @_ZN6duckdb12MemoryStreamC1EPhm(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef %i.t, i64 noundef %i.v)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN6duckdb9Allocator8AllocateEm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !197  ; 10 uses
  store ptr %i.y, ptr %i.w, align 8, !tbaa !2619
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  store i8 0, ptr %i.z, align 8, !tbaa !2591
  %i.aa = load i64, ptr %i.c, align 8, !tbaa !2618 ; 4 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZN6duckdb19PrimitiveDictionaryINS_9hugeint_tENS_21ParquetUUIDTargetTypeENS_19ParquetUUIDOperatorEE5ClearEv.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %xtraiter = and i64 %i.aa, 7                    ; 3 uses
  %i.ab = icmp ult i64 %i.aa, 8
  br i1 %i.ab, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.aa, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.03.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.as, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.03.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i32 -1, ptr %i.ad, align 8, !tbaa !2620
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.03.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  store i32 -1, ptr %i.af, align 8, !tbaa !2620
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.03.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  store i32 -1, ptr %i.ah, align 8, !tbaa !2620
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.03.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 88
  store i32 -1, ptr %i.aj, align 8, !tbaa !2620
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.03.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 112
  store i32 -1, ptr %i.al, align 8, !tbaa !2620
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.03.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 136
  store i32 -1, ptr %i.an, align 8, !tbaa !2620
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.03.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 160
  store i32 -1, ptr %i.ap, align 8, !tbaa !2620
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.03.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 184
  store i32 -1, ptr %i.ar, align 8, !tbaa !2620
  %i.as = add nuw i64 %.03.i, 8                   ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN6duckdb19PrimitiveDictionaryINS_9hugeint_tENS_21ParquetUUIDTargetTypeENS_19ParquetUUIDOperatorEE5ClearEv.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !2631

_ZN6duckdb19PrimitiveDictionaryINS_9hugeint_tENS_21ParquetUUIDTargetTypeENS_19ParquetUUIDOperatorEE5ClearEv.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb19PrimitiveDictionaryINS_9hugeint_tENS_21ParquetUUIDTargetTypeENS_19ParquetUUIDOperatorEE5ClearEv.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN6duckdb19PrimitiveDictionaryINS_9hugeint_tENS_21ParquetUUIDTargetTypeENS_19ParquetUUIDOperatorEE5ClearEv.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.03.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.as, %_ZN6duckdb19PrimitiveDictionaryINS_9hugeint_tENS_21ParquetUUIDTargetTypeENS_19ParquetUUIDOperatorEE5ClearEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod8 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod8)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.03.i.epil = phi i64 [ %i.av, %.lr.ph.i.epil ], [ %.03.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.03.i.epil
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i32 -1, ptr %i.au, align 8, !tbaa !2620
  %i.av = add nuw i64 %.03.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN6duckdb19PrimitiveDictionaryINS_9hugeint_tENS_21ParquetUUIDTargetTypeENS_19ParquetUUIDOperatorEE5ClearEv.exit, label %.lr.ph.i.epil, !llvm.loop !2632

_ZN6duckdb19PrimitiveDictionaryINS_9hugeint_tENS_21ParquetUUIDTargetTypeENS_19ParquetUUIDOperatorEE5ClearEv.exit: ; preds = %_ZN6duckdb19PrimitiveDictionaryINS_9hugeint_tENS_21ParquetUUIDTargetTypeENS_19ParquetUUIDOperatorEE5ClearEv.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.b
  store i32 0, ptr %i.b, align 8, !tbaa !2590
  store i8 0, ptr %i.z, align 8, !tbaa !2591
  ret void

bb.c:                                             ; preds = %.noexc, %bb.a
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %_ZN6duckdb9Allocator8AllocateEm.exit
  %i.ax = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.m) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.ax, %bb.d ], [ %i.aw, %bb.c ]
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.i) #25
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6duckdb25StandardColumnWriterStateINS_9hugeint_tENS_21ParquetUUIDTargetTypeENS_19ParquetUUIDOperatorEED2Ev(ptr noundef nonnull align 8 dereferenceable(380) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb25StandardColumnWriterStateINS_9hugeint_tENS_21ParquetUUIDTargetTypeENS_19ParquetUUIDOperatorEEE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  tail call void @_ZN6duckdb12MemoryStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #25
  tail call void @_ZN6duckdb26PrimitiveColumnWriterStateD2Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6duckdb25StandardColumnWriterStateINS_9hugeint_tENS_21ParquetUUIDTargetTypeENS_19ParquetUUIDOperatorEED0Ev(ptr noundef nonnull align 8 dereferenceable(380) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb25StandardColumnWriterStateINS_9hugeint_tENS_21ParquetUUIDTargetTypeENS_19ParquetUUIDOperatorEEE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  tail call void @_ZN6duckdb12MemoryStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #25, !inline_history !2633
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #25, !inline_history !2633
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #25, !inline_history !2633
  tail call void @_ZN6duckdb26PrimitiveColumnWriterStateD2Ev(ptr noundef nonnull align 8 dereferenceable(380) %0) #25, !inline_history !2633
  tail call void @_ZdlPv(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb19PrimitiveDictionaryINS_9hugeint_tENS_21ParquetUUIDTargetTypeENS_19ParquetUUIDOperatorEE6InsertILb1EEEvS1_(ptr noundef nonnull align 8 dereferenceable(153) %0, i64 %1, i64 %2) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %3 = alloca %"struct.duckdb::ParquetUUIDTargetType", align 16 ; 4 uses
  %4 = alloca %"struct.duckdb::ParquetUUIDTargetType", align 16 ; 5 uses
  %5 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  store i64 %1, ptr %5, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !2591, !range !250, !noundef !78
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i64 @_ZN6duckdb4HashINS_9hugeint_tEEEmT_(i64 %1, i64 %2)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !2625
  %i.h = and i64 %i.g, %i.e                       ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !2619 ; 2 uses
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.h ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !2620
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %_ZNK6duckdb19PrimitiveDictionaryINS_9hugeint_tENS_21ParquetUUIDTargetTypeENS_19ParquetUUIDOperatorEE6LookupERKS1_.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.o = phi ptr [ %i.t, %bb.c ], [ %i.k, %bb.b ]
  %.07.i = phi i64 [ %i.s, %bb.c ], [ %i.h, %bb.b ] ; 3 uses
  %i.p = call noundef zeroext i1 @_ZNK6duckdb9hugeint_tneERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %5)
  %.pre.pre.i = load ptr, ptr %i.i, align 8, !tbaa !2619 ; 4 uses
  br i1 %i.p, label %bb.c, label %_ZNK6duckdb19PrimitiveDictionaryINS_9hugeint_tENS_21ParquetUUIDTargetTypeENS_19ParquetUUIDOperatorEE6LookupERKS1_.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.q = load i64, ptr %i.f, align 8, !tbaa !2625
  %i.r = add i64 %.07.i, 1
  %i.s = and i64 %i.q, %i.r                       ; 3 uses
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %.pre.pre.i, i64 %i.s ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load i32, ptr %i.u, align 8, !tbaa !2620
  %i.w = icmp eq i32 %i.v, -1
  br i1 %i.w, label %_ZNK6duckdb19PrimitiveDictionaryINS_9hugeint_tENS_21ParquetUUIDTargetTypeENS_19ParquetUUIDOperatorEE6LookupERKS1_.exit.thread, label %.lr.ph.i, !llvm.loop !2634

_ZNK6duckdb19PrimitiveDictionaryINS_9hugeint_tENS_21ParquetUUIDTargetTypeENS_19ParquetUUIDOperatorEE6LookupERKS1_.exit.thread: ; preds = %bb.c, %bb.b
  %.ph = phi ptr [ %i.j, %bb.b ], [ %.pre.pre.i, %bb.c ]
  %.0.lcssa.i.ph = phi i64 [ %i.h, %bb.b ], [ %i.s, %bb.c ]
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %.ph, i64 %.0.lcssa.i.ph
  br label %bb.d

_ZNK6duckdb19PrimitiveDictionaryINS_9hugeint_tENS_21ParquetUUIDTargetTypeENS_19ParquetUUIDOperatorEE6LookupERKS1_.exit: ; preds = %.lr.ph.i
  %.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw [24 x i8], ptr %.pre.pre.i, i64 %.07.i
  %.phi.trans.insert7.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.phi.trans.insert, i64 16
  %.pre.pre = load i32, ptr %.phi.trans.insert7.phi.trans.insert, align 8, !tbaa !2620
  %i.y = icmp eq i32 %.pre.pre, -1
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %.pre.pre.i, i64 %.07.i
  br i1 %i.y, label %bb.d, label %bb.h

bb.d:                                             ; preds = %_ZNK6duckdb19PrimitiveDictionaryINS_9hugeint_tENS_21ParquetUUIDTargetTypeENS_19ParquetUUIDOperatorEE6LookupERKS1_.exit.thread, %_ZNK6duckdb19PrimitiveDictionaryINS_9hugeint_tENS_21ParquetUUIDTargetTypeENS_19ParquetUUIDOperatorEE6LookupERKS1_.exit
  %i.aa = phi ptr [ %i.x, %_ZNK6duckdb19PrimitiveDictionaryINS_9hugeint_tENS_21ParquetUUIDTargetTypeENS_19ParquetUUIDOperatorEE6LookupERKS1_.exit.thread ], [ %i.z, %_ZNK6duckdb19PrimitiveDictionaryINS_9hugeint_tENS_21ParquetUUIDTargetTypeENS_19ParquetUUIDOperatorEE6LookupERKS1_.exit ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !2590
  %i.ae = add i32 %i.ad, 1
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !2624
  %i.ai = icmp ult i64 %i.ah, %i.af
  br i1 %i.ai, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %.sroa.0.0.copyload.i4 = load i64, ptr %5, align 8, !tbaa !191
  %.sroa.2.0.copyload.i6 = load i64, ptr %i.a, align 8, !tbaa !191
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZN6duckdb8BaseUUID6ToBlobENS_9hugeint_tEPh(i64 %.sroa.0.0.copyload.i4, i64 %.sroa.2.0.copyload.i6, ptr noundef nonnull %3)
  %i.aj = load <2 x i64>, ptr %3, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  store <2 x i64> %i.aj, ptr %4, align 16
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.al = call noundef i64 @_ZNK6duckdb12MemoryStream11GetPositionEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ak)
  %i.am = add i64 %i.al, 16
  %i.an = call noundef i64 @_ZNK6duckdb12MemoryStream11GetCapacityEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ak)
  %.not = icmp ugt i64 %i.am, %i.an
  br i1 %.not, label %_ZN6duckdb19PrimitiveDictionaryINS_9hugeint_tENS_21ParquetUUIDTargetTypeENS_19ParquetUUIDOperatorEE11AddToTargetIS1_TnNSt9enable_ifIXntsr3std7is_sameIT_NS_8string_tEEE5valueEiE4typeELi0EEEbRKS1_.exit, label %bb.g

_ZN6duckdb19PrimitiveDictionaryINS_9hugeint_tENS_21ParquetUUIDTargetTypeENS_19ParquetUUIDOperatorEE11AddToTargetIS1_TnNSt9enable_ifIXntsr3std7is_sameIT_NS_8string_tEEE5valueEiE4typeELi0EEEbRKS1_.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.f

bb.f:                                             ; preds = %_ZN6duckdb19PrimitiveDictionaryINS_9hugeint_tENS_21ParquetUUIDTargetTypeENS_19ParquetUUIDOperatorEE11AddToTargetIS1_TnNSt9enable_ifIXntsr3std7is_sameIT_NS_8string_tEEE5valueEiE4typeELi0EEEbRKS1_.exit, %bb.d
  store i8 1, ptr %i.b, align 8, !tbaa !2591
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !15
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef nonnull align 1 dereferenceable(16) %4, i64 noundef 16), !inline_history !2635
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !1318
  %i.aq = load i32, ptr %i.ac, align 8, !tbaa !2590 ; 2 uses
  %i.ar = add i32 %i.aq, 1
  store i32 %i.ar, ptr %i.ac, align 8, !tbaa !2590
  store i32 %i.aq, ptr %i.ab, align 8, !tbaa !2620
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %_ZNK6duckdb19PrimitiveDictionaryINS_9hugeint_tENS_21ParquetUUIDTargetTypeENS_19ParquetUUIDOperatorEE6LookupERKS1_.exit, %bb.a
  ret void
}

declare void @_ZN6duckdb8BaseUUID6ToBlobENS_9hugeint_tEPh(i64, i64, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN6duckdb22ColumnWriterStatisticsD2Ev(ptr nofree nonnull readnone align 8 captures(none) dead_on_return(8) %0) unnamed_addr #2 align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6duckdb19UUIDStatisticsStateD0Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #24
  ret void
}

end_hunk_18
begin_hunk_19_@_ZN6duckdb25StandardColumnWriterStateINS_10interval_tENS_25ParquetIntervalTargetTypeENS_23ParquetIntervalOperatorEEC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm:bb.a
  store i64 %3, ptr %i.d, align 8, !tbaa !747
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, i8 0, i64 72, i1 false)
  %i.g = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #28
          to label %_ZN6duckdb26PrimitiveColumnWriterStateC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm.exit unwind label %bb.b ; 3 uses

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @_ZNSt10unique_ptrIN6duckdb18ParquetBloomFilterESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #25
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !724  ; 3 uses
  %.not.i6.i = icmp eq ptr %i.k, null
  br i1 %.not.i6.i, label %_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN6duckdb22ColumnWriterStatisticsEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb22ColumnWriterStatisticsEEclEPS1_.exit.i.i: ; preds = %bb.b
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.k) #25, !inline_history !748
  br label %_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN6duckdb22ColumnWriterStatisticsEEclEPS1_.exit.i.i, %bb.b
  tail call void @_ZNSt6vectorIN6duckdb20PageWriteInformationESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #25
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !749  ; 2 uses
  %.not.i.i.i7.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i7.i, label %_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.o) #24
  br label %_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i

common.resume:                                    ; preds = %bb.k, %_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.h, %_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i ], [ %.pn, %bb.k ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EED2Ev.exit.i: ; preds = %bb.c, %_ZNSt10unique_ptrIN6duckdb22ColumnWriterStatisticsESt14default_deleteIS1_EED2Ev.exit.i
  tail call void @_ZN6duckdb17ColumnWriterStateD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(192) %0) #25
  br label %common.resume

_ZN6duckdb26PrimitiveColumnWriterStateC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm.exit: ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !749
  store ptr %i.r, ptr %i.q, align 8, !tbaa !750
  store ptr %i.r, ptr %i.p, align 8, !tbaa !751
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb25StandardColumnWriterStateINS_10interval_tENS_25ParquetIntervalTargetTypeENS_23ParquetIntervalOperatorEEE, i64 16), ptr %0, align 8, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.s, i8 0, i64 20, i1 false)
  %i.u = load ptr, ptr %1, align 8, !tbaa !193, !nonnull !78, !align !79
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb15BufferAllocator3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %i.u)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %_ZN6duckdb26PrimitiveColumnWriterStateC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.sroa.0.0.copyload.i = load i64, ptr %i.w, align 8, !tbaa !191 ; 2 uses
  %.not = icmp eq i64 %.sroa.0.0.copyload.i, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %.sroa.0.0.copyload.i, ptr %4, align 8
  %i.x = invoke noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.g unwind label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.z = load i64, ptr %i.y, align 8, !tbaa !752
  %i.aa = invoke noundef i64 @_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl(i64 noundef %i.z)
          to label %_ZN6duckdb11NumericCastImlvEET_T0_.exit unwind label %bb.j

_ZN6duckdb11NumericCastImlvEET_T0_.exit:          ; preds = %bb.f
  %i.ab = udiv i64 %i.aa, 5
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %_ZN6duckdb11NumericCastImlvEET_T0_.exit
  %i.ac = phi i64 [ %i.ab, %_ZN6duckdb11NumericCastImlvEET_T0_.exit ], [ %i.x, %bb.e ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !765
  invoke void @_ZN6duckdb19PrimitiveDictionaryINS_10interval_tENS_25ParquetIntervalTargetTypeENS_23ParquetIntervalOperatorEEC2ERNS_9AllocatorEmm(ptr noundef nonnull align 8 dereferenceable(153) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 noundef %i.ac, i64 noundef %i.ae)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i32 0, ptr %i.af, align 8, !tbaa !2678
  ret void

bb.i:                                             ; preds = %_ZN6duckdb26PrimitiveColumnWriterStateC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.f, %bb.g, %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.j ], [ %i.ag, %bb.i ]
  call void @_ZN6duckdb26PrimitiveColumnWriterStateD2Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) #25
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb19PrimitiveDictionaryINS_10interval_tENS_25ParquetIntervalTargetTypeENS_23ParquetIntervalOperatorEEC2ERNS_9AllocatorEmm(ptr noundef nonnull align 8 dereferenceable(153) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !766
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.a, align 8, !tbaa !2718
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 0, ptr %i.b, align 8, !tbaa !2686
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = shl i64 %2, 1
  %i.e = tail call noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.d) ; 3 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !2711
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = add i64 %i.e, -1
  store i64 %i.g, ptr %i.f, align 8, !tbaa !2719
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %3, ptr %i.h, align 8, !tbaa !2720
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !2721, !nonnull !78, !align !79 ; 2 uses
  %i.k = mul i64 %i.e, 24                         ; 2 uses
  %i.l = tail call noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 noundef %i.k), !noalias !2722
  tail call void @_ZN6duckdb13AllocatedDataC1ERNS_9AllocatorEPhm(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef %i.l, i64 noundef %i.k)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !2721, !nonnull !78, !align !79 ; 2 uses
  %i.o = load i64, ptr %i.c, align 8, !tbaa !2711
  %i.p = mul i64 %i.o, 12                         ; 2 uses
  %i.q = invoke noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 noundef %i.p)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.a
  invoke void @_ZN6duckdb13AllocatedDataC1ERNS_9AllocatorEPhm(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef %i.q, i64 noundef %i.p)
          to label %_ZN6duckdb9Allocator8AllocateEm.exit unwind label %bb.c

_ZN6duckdb9Allocator8AllocateEm.exit:             ; preds = %.noexc
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !197
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.v = load i64, ptr %i.u, align 8, !tbaa !774
  invoke void @_ZN6duckdb12MemoryStreamC1EPhm(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef %i.t, i64 noundef %i.v)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN6duckdb9Allocator8AllocateEm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !197  ; 10 uses
  store ptr %i.y, ptr %i.w, align 8, !tbaa !2712
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  store i8 0, ptr %i.z, align 8, !tbaa !2687
  %i.aa = load i64, ptr %i.c, align 8, !tbaa !2711 ; 4 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZN6duckdb19PrimitiveDictionaryINS_10interval_tENS_25ParquetIntervalTargetTypeENS_23ParquetIntervalOperatorEE5ClearEv.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %xtraiter = and i64 %i.aa, 7                    ; 3 uses
  %i.ab = icmp ult i64 %i.aa, 8
  br i1 %i.ab, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.aa, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.03.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.as, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.03.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i32 -1, ptr %i.ad, align 8, !tbaa !2713
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.03.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  store i32 -1, ptr %i.af, align 8, !tbaa !2713
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.03.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  store i32 -1, ptr %i.ah, align 8, !tbaa !2713
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.03.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 88
  store i32 -1, ptr %i.aj, align 8, !tbaa !2713
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.03.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 112
  store i32 -1, ptr %i.al, align 8, !tbaa !2713
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.03.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 136
  store i32 -1, ptr %i.an, align 8, !tbaa !2713
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.03.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 160
  store i32 -1, ptr %i.ap, align 8, !tbaa !2713
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.03.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 184
  store i32 -1, ptr %i.ar, align 8, !tbaa !2713
  %i.as = add nuw i64 %.03.i, 8                   ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN6duckdb19PrimitiveDictionaryINS_10interval_tENS_25ParquetIntervalTargetTypeENS_23ParquetIntervalOperatorEE5ClearEv.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !2725

_ZN6duckdb19PrimitiveDictionaryINS_10interval_tENS_25ParquetIntervalTargetTypeENS_23ParquetIntervalOperatorEE5ClearEv.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb19PrimitiveDictionaryINS_10interval_tENS_25ParquetIntervalTargetTypeENS_23ParquetIntervalOperatorEE5ClearEv.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN6duckdb19PrimitiveDictionaryINS_10interval_tENS_25ParquetIntervalTargetTypeENS_23ParquetIntervalOperatorEE5ClearEv.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.03.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.as, %_ZN6duckdb19PrimitiveDictionaryINS_10interval_tENS_25ParquetIntervalTargetTypeENS_23ParquetIntervalOperatorEE5ClearEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod8 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod8)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.03.i.epil = phi i64 [ %i.av, %.lr.ph.i.epil ], [ %.03.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.03.i.epil
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i32 -1, ptr %i.au, align 8, !tbaa !2713
  %i.av = add nuw i64 %.03.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN6duckdb19PrimitiveDictionaryINS_10interval_tENS_25ParquetIntervalTargetTypeENS_23ParquetIntervalOperatorEE5ClearEv.exit, label %.lr.ph.i.epil, !llvm.loop !2726

_ZN6duckdb19PrimitiveDictionaryINS_10interval_tENS_25ParquetIntervalTargetTypeENS_23ParquetIntervalOperatorEE5ClearEv.exit: ; preds = %_ZN6duckdb19PrimitiveDictionaryINS_10interval_tENS_25ParquetIntervalTargetTypeENS_23ParquetIntervalOperatorEE5ClearEv.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.b
  store i32 0, ptr %i.b, align 8, !tbaa !2686
  store i8 0, ptr %i.z, align 8, !tbaa !2687
  ret void

bb.c:                                             ; preds = %.noexc, %bb.a
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %_ZN6duckdb9Allocator8AllocateEm.exit
  %i.ax = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.m) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.ax, %bb.d ], [ %i.aw, %bb.c ]
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.i) #25
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6duckdb25StandardColumnWriterStateINS_10interval_tENS_25ParquetIntervalTargetTypeENS_23ParquetIntervalOperatorEED2Ev(ptr noundef nonnull align 8 dereferenceable(380) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb25StandardColumnWriterStateINS_10interval_tENS_25ParquetIntervalTargetTypeENS_23ParquetIntervalOperatorEEE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  tail call void @_ZN6duckdb12MemoryStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #25
  tail call void @_ZN6duckdb26PrimitiveColumnWriterStateD2Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6duckdb25StandardColumnWriterStateINS_10interval_tENS_25ParquetIntervalTargetTypeENS_23ParquetIntervalOperatorEED0Ev(ptr noundef nonnull align 8 dereferenceable(380) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb25StandardColumnWriterStateINS_10interval_tENS_25ParquetIntervalTargetTypeENS_23ParquetIntervalOperatorEEE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  tail call void @_ZN6duckdb12MemoryStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #25, !inline_history !2727
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #25, !inline_history !2727
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #25, !inline_history !2727
  tail call void @_ZN6duckdb26PrimitiveColumnWriterStateD2Ev(ptr noundef nonnull align 8 dereferenceable(380) %0) #25, !inline_history !2727
  tail call void @_ZdlPv(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb19PrimitiveDictionaryINS_10interval_tENS_25ParquetIntervalTargetTypeENS_23ParquetIntervalOperatorEE6InsertILb1EEEvS1_(ptr noundef nonnull align 8 dereferenceable(153) %0, i64 %1, i64 %2) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %3 = alloca %"struct.duckdb::ParquetIntervalTargetType", align 8 ; 6 uses
  %.sroa.0.sroa.0.0.extract.trunc = trunc i64 %1 to i32
  %.sroa.0.sroa.5.0.extract.shift = lshr i64 %1, 32
  %.sroa.0.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.0.sroa.5.0.extract.shift to i32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !2687, !range !250, !noundef !78
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @_ZN6duckdb4HashINS_10interval_tEEEmT_(i64 %1, i64 %2)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !2719 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2712 ; 2 uses
  %.010.i = and i64 %i.f, %i.d                    ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.010.i ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !2713
  %i.l = icmp eq i32 %i.k, -1
  br i1 %i.l, label %_ZNK6duckdb19PrimitiveDictionaryINS_10interval_tENS_25ParquetIntervalTargetTypeENS_23ParquetIntervalOperatorEE6LookupERKS1_.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.m = sdiv i64 %2, 86400000000                 ; 2 uses
  %sext = shl i64 %1, 32
  %i.n = ashr exact i64 %sext, 32
  %.neg.i10.i.i.i = mul nsw i64 %i.m, -86400000000
  %i.o = add i64 %.neg.i10.i.i.i, %2
  %i.p = ashr i64 %1, 32
  %i.q = add nsw i64 %i.m, %i.p                   ; 2 uses
  %i.r = sdiv i64 %i.q, 30                        ; 2 uses
  %.neg16.i11.i.i.i = mul nsw i64 %i.r, -30
  %i.s = add nsw i64 %.neg16.i11.i.i.i, %i.q
  %i.t = add nsw i64 %i.r, %i.n
  br label %bb.c

bb.c:                                             ; preds = %_ZNK6duckdb10interval_tneERKS0_.exit.thread.i, %.lr.ph.i
  %i.u = phi ptr [ %i.i, %.lr.ph.i ], [ %i.ao, %_ZNK6duckdb10interval_tneERKS0_.exit.thread.i ] ; 5 uses
  %.011.i = phi i64 [ %.010.i, %.lr.ph.i ], [ %.0.i, %_ZNK6duckdb10interval_tneERKS0_.exit.thread.i ]
  %i.v = load i32, ptr %i.u, align 8, !tbaa !2728 ; 2 uses
  %i.w = icmp eq i32 %i.v, %.sroa.0.sroa.0.0.extract.trunc
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !2729 ; 2 uses
  %i.z = icmp eq i32 %i.y, %.sroa.0.sroa.5.0.extract.trunc
  %or.cond21.i.i.i = select i1 %i.w, i1 %i.z, i1 false
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !2730 ; 3 uses
  %i.ac = icmp eq i64 %i.ab, %2
  %or.cond.i = select i1 %or.cond21.i.i.i, i1 %i.ac, i1 false
  br i1 %or.cond.i, label %_ZNK6duckdb19PrimitiveDictionaryINS_10interval_tENS_25ParquetIntervalTargetTypeENS_23ParquetIntervalOperatorEE6LookupERKS1_.exit, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.c
  %i.ad = sdiv i64 %i.ab, 86400000000             ; 2 uses
  %i.ae = sext i32 %i.y to i64
  %i.af = add nsw i64 %i.ad, %i.ae                ; 2 uses
  %i.ag = sdiv i64 %i.af, 30                      ; 2 uses
  %.neg16.i.i.i.i = mul nsw i64 %i.ag, -30
  %i.ah = add nsw i64 %.neg16.i.i.i.i, %i.af
  %i.ai = sext i32 %i.v to i64
  %i.aj = add nsw i64 %i.ag, %i.ai
  %i.ak = icmp eq i64 %i.aj, %i.t
  %i.al = icmp eq i64 %i.ah, %i.s
  %or.cond.i.i.i = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %or.cond.i.i.i, label %_ZNK6duckdb10interval_tneERKS0_.exit.i, label %_ZNK6duckdb10interval_tneERKS0_.exit.thread.i

_ZNK6duckdb10interval_tneERKS0_.exit.i:           ; preds = %._crit_edge.i.i.i
  %.neg.i.i.i.i = mul nsw i64 %i.ad, -86400000000
  %i.am = add i64 %.neg.i.i.i.i, %i.ab
  %.not.i = icmp eq i64 %i.am, %i.o
  br i1 %.not.i, label %_ZNK6duckdb19PrimitiveDictionaryINS_10interval_tENS_25ParquetIntervalTargetTypeENS_23ParquetIntervalOperatorEE6LookupERKS1_.exit, label %_ZNK6duckdb10interval_tneERKS0_.exit.thread.i

_ZNK6duckdb10interval_tneERKS0_.exit.thread.i:    ; preds = %_ZNK6duckdb10interval_tneERKS0_.exit.i, %._crit_edge.i.i.i
  %i.an = add i64 %.011.i, 1
  %.0.i = and i64 %i.an, %i.f                     ; 2 uses
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.0.i ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !2713
  %i.ar = icmp eq i32 %i.aq, -1
  br i1 %i.ar, label %_ZNK6duckdb19PrimitiveDictionaryINS_10interval_tENS_25ParquetIntervalTargetTypeENS_23ParquetIntervalOperatorEE6LookupERKS1_.exit, label %bb.c, !llvm.loop !2731

_ZNK6duckdb19PrimitiveDictionaryINS_10interval_tENS_25ParquetIntervalTargetTypeENS_23ParquetIntervalOperatorEE6LookupERKS1_.exit: ; preds = %bb.c, %_ZNK6duckdb10interval_tneERKS0_.exit.i, %_ZNK6duckdb10interval_tneERKS0_.exit.thread.i
  %.lcssa.i.ph = phi ptr [ %i.u, %bb.c ], [ %i.ao, %_ZNK6duckdb10interval_tneERKS0_.exit.thread.i ], [ %i.u, %_ZNK6duckdb10interval_tneERKS0_.exit.i ] ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.lcssa.i.ph, i64 16
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !2713
  %i.as = icmp eq i32 %.pre, -1
  br i1 %i.as, label %_ZNK6duckdb19PrimitiveDictionaryINS_10interval_tENS_25ParquetIntervalTargetTypeENS_23ParquetIntervalOperatorEE6LookupERKS1_.exit.thread, label %bb.g

_ZNK6duckdb19PrimitiveDictionaryINS_10interval_tENS_25ParquetIntervalTargetTypeENS_23ParquetIntervalOperatorEE6LookupERKS1_.exit.thread: ; preds = %bb.b, %_ZNK6duckdb19PrimitiveDictionaryINS_10interval_tENS_25ParquetIntervalTargetTypeENS_23ParquetIntervalOperatorEE6LookupERKS1_.exit
  %.lcssa.i23 = phi ptr [ %.lcssa.i.ph, %_ZNK6duckdb19PrimitiveDictionaryINS_10interval_tENS_25ParquetIntervalTargetTypeENS_23ParquetIntervalOperatorEE6LookupERKS1_.exit ], [ %i.i, %bb.b ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.lcssa.i23, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !2686
  %i.aw = add i32 %i.av, 1
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !2718
  %i.ba = icmp ult i64 %i.az, %i.ax
  br i1 %i.ba, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK6duckdb19PrimitiveDictionaryINS_10interval_tENS_25ParquetIntervalTargetTypeENS_23ParquetIntervalOperatorEE6LookupERKS1_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.bb = tail call { i64, i32 } @_ZN6duckdb23ParquetIntervalOperator9OperationINS_10interval_tENS_25ParquetIntervalTargetTypeEEET0_T_(i64 %1, i64 %2) ; 2 uses
  %.fca.0.extract.i = extractvalue { i64, i32 } %i.bb, 0
  %.fca.1.extract.i = extractvalue { i64, i32 } %i.bb, 1
  store i64 %.fca.0.extract.i, ptr %3, align 8
  %.sroa.2.0..sroa_idx.i4 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.fca.1.extract.i, ptr %.sroa.2.0..sroa_idx.i4, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.bd = tail call noundef i64 @_ZNK6duckdb12MemoryStream11GetPositionEv(ptr noundef nonnull align 8 dereferenceable(48) %i.bc)
  %i.be = add i64 %i.bd, 12
  %i.bf = tail call noundef i64 @_ZNK6duckdb12MemoryStream11GetCapacityEv(ptr noundef nonnull align 8 dereferenceable(48) %i.bc)
  %.not = icmp ugt i64 %i.be, %i.bf
  br i1 %.not, label %_ZN6duckdb19PrimitiveDictionaryINS_10interval_tENS_25ParquetIntervalTargetTypeENS_23ParquetIntervalOperatorEE11AddToTargetIS1_TnNSt9enable_ifIXntsr3std7is_sameIT_NS_8string_tEEE5valueEiE4typeELi0EEEbRKS1_.exit, label %bb.f

_ZN6duckdb19PrimitiveDictionaryINS_10interval_tENS_25ParquetIntervalTargetTypeENS_23ParquetIntervalOperatorEE11AddToTargetIS1_TnNSt9enable_ifIXntsr3std7is_sameIT_NS_8string_tEEE5valueEiE4typeELi0EEEbRKS1_.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb19PrimitiveDictionaryINS_10interval_tENS_25ParquetIntervalTargetTypeENS_23ParquetIntervalOperatorEE11AddToTargetIS1_TnNSt9enable_ifIXntsr3std7is_sameIT_NS_8string_tEEE5valueEiE4typeELi0EEEbRKS1_.exit, %_ZNK6duckdb19PrimitiveDictionaryINS_10interval_tENS_25ParquetIntervalTargetTypeENS_23ParquetIntervalOperatorEE6LookupERKS1_.exit.thread
  store i8 1, ptr %i.a, align 8, !tbaa !2687
  br label %bb.g

end_hunk_19
