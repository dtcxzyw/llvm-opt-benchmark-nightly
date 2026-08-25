Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_parquet_readers?download=true
inline.NumInlined: 2343
inline.NumDeleted: 1199
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN6duckdb19DecimalColumnReaderIsLb1EED0Ev:bb.a

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !347
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !349
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !559
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !559
  br label %_ZN6duckdb21TemplatedColumnReaderIsNS_29DecimalParquetValueConversionIsLb1EEEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN6duckdb21TemplatedColumnReaderIsNS_29DecimalParquetValueConversionIsLb1EEEED2Ev.exit, !prof !265

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !560
  br label %_ZN6duckdb21TemplatedColumnReaderIsNS_29DecimalParquetValueConversionIsLb1EEEED2Ev.exit

_ZN6duckdb21TemplatedColumnReaderIsNS_29DecimalParquetValueConversionIsLb1EEEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  tail call void @_ZN6duckdb12ColumnReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(512) dereferenceable(528) %0) #21, !inline_history !560
  tail call void @_ZdlPv(ptr noundef nonnull %0) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK6duckdb21TemplatedColumnReaderIsNS_29DecimalParquetValueConversionIsLb1EEEE20SupportsDirectFilterEv(ptr noundef nonnull align 8 dereferenceable(528) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb21TemplatedColumnReaderIsNS_29DecimalParquetValueConversionIsLb1EEEE9PlainSkipERNS_10ByteBufferEPhm(ptr noundef nonnull align 8 dereferenceable(528) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb12ColumnReader18PlainSkipTemplatedINS_29DecimalParquetValueConversionIsLb1EEEEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb21TemplatedColumnReaderIsNS_29DecimalParquetValueConversionIsLb1EEEE5PlainERNS_10ByteBufferEPhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(528) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb12ColumnReader14PlainTemplatedIsNS_29DecimalParquetValueConversionIsLb1EEEEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb21TemplatedColumnReaderIsNS_29DecimalParquetValueConversionIsLb1EEEED0Ev(ptr noundef nonnull align 8 dereferenceable(528) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN6duckdb21TemplatedColumnReaderIsNS_29DecimalParquetValueConversionIsLb1EEEEE, i64 16), ptr %0, align 8, !tbaa !46
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !346  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb21TemplatedColumnReaderIsNS_29DecimalParquetValueConversionIsLb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !347
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !349
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !559
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !559
  br label %_ZN6duckdb21TemplatedColumnReaderIsNS_29DecimalParquetValueConversionIsLb1EEEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN6duckdb21TemplatedColumnReaderIsNS_29DecimalParquetValueConversionIsLb1EEEED2Ev.exit, !prof !265

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !560
  br label %_ZN6duckdb21TemplatedColumnReaderIsNS_29DecimalParquetValueConversionIsLb1EEEED2Ev.exit

_ZN6duckdb21TemplatedColumnReaderIsNS_29DecimalParquetValueConversionIsLb1EEEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  tail call void @_ZN6duckdb12ColumnReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(512) dereferenceable(528) %0) #21, !inline_history !560
  tail call void @_ZdlPv(ptr noundef nonnull %0) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb10shared_ptrINS_16ResizeableBufferELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !346  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN6duckdb16ResizeableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !347
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !349
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !561
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !561
  br label %_ZNSt12__shared_ptrIN6duckdb16ResizeableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN6duckdb16ResizeableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !265

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21
  br label %_ZNSt12__shared_ptrIN6duckdb16ResizeableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6duckdb16ResizeableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb12ColumnReader18PlainSkipTemplatedINS_29DecimalParquetValueConversionIsLb1EEEEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88, !nonnull !40, !align !156 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !338  ; 2 uses
  %i.e = icmp ne i64 %i.d, 0
  %i.f = icmp ne ptr %2, null
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !562)
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_29DecimalParquetValueConversionIsLb1EEELb1EEEvRNS_10ByteBufferEPKhm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %.promoted.i.i = load ptr, ptr %1, align 8, !noalias !562
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted9.i.i = load i64, ptr %i.h, align 8, !noalias !562
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %.lr.ph.i.i
  %4 = phi i64 [ %.promoted9.i.i, %.lr.ph.i.i ], [ %5, %bb.h ] ; 3 uses
  %.08.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.t, %bb.h ] ; 2 uses
  %i.i = phi ptr [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.s, %bb.h ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !7, !alias.scope !562
  %i.l = zext i8 %i.k to i64
  %.not.i.i = icmp eq i64 %i.d, %i.l
  br i1 %.not.i.i, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.m = load i32, ptr %i.g, align 8, !tbaa !384, !noalias !562
  %i.n = zext i32 %i.m to i64                     ; 3 uses
  %.not.i.i.i.i.i = icmp ult i64 %4, %i.n
  br i1 %.not.i.i.i.i.i, label %bb.e, label %_ZN6duckdb29DecimalParquetValueConversionIsLb1EE9PlainSkipILb0EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.o = tail call ptr @__cxa_allocate_exception(i64 16) #21, !noalias !562 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull @.str.25)
          to label %bb.f unwind label %bb.g, !noalias !562

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #24, !noalias !562
  unreachable

common.resume:                                    ; preds = %bb.m, %bb.g
  %.sink = phi ptr [ %i.aa, %bb.m ], [ %i.o, %bb.g ]
  %common.resume.op = phi { ptr, i32 } [ %i.ab, %bb.m ], [ %i.p, %bb.g ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #21
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6duckdb29DecimalParquetValueConversionIsLb1EE9PlainSkipILb0EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i: ; preds = %bb.d
  %i.q = sub nuw i64 %4, %i.n                     ; 2 uses
  store i64 %i.q, ptr %i.h, align 8, !tbaa !332, !noalias !562
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.n ; 2 uses
  store ptr %i.r, ptr %1, align 8, !tbaa !331, !noalias !562
  br label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb29DecimalParquetValueConversionIsLb1EE9PlainSkipILb0EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i, %bb.c
  %5 = phi i64 [ %4, %bb.c ], [ %i.q, %_ZN6duckdb29DecimalParquetValueConversionIsLb1EE9PlainSkipILb0EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i ]
  %i.s = phi ptr [ %i.i, %bb.c ], [ %i.r, %_ZN6duckdb29DecimalParquetValueConversionIsLb1EE9PlainSkipILb0EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i ]
  %i.t = add nuw i64 %.08.i.i, 1                  ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.t, %3
  br i1 %exitcond.not.i.i, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_29DecimalParquetValueConversionIsLb1EEELb1EEEvRNS_10ByteBufferEPKhm.exit, label %bb.c, !llvm.loop !565

bb.i:                                             ; preds = %bb.a
  %.not.i8 = icmp eq i64 %3, 0
  br i1 %.not.i8, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_29DecimalParquetValueConversionIsLb1EEELb1EEEvRNS_10ByteBufferEPKhm.exit, label %.lr.ph.i.i9

.lr.ph.i.i9:                                      ; preds = %bb.i
  %.promoted.i.i10 = load ptr, ptr %1, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.v = load i32, ptr %i.u, align 8, !tbaa !384
  %i.w = zext i32 %i.v to i64                     ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted9.i.i11 = load i64, ptr %i.x, align 8, !tbaa !332
  br label %bb.j

bb.j:                                             ; preds = %_ZN6duckdb29DecimalParquetValueConversionIsLb1EE9PlainSkipILb0EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i14, %.lr.ph.i.i9
  %i.y = phi i64 [ %.promoted9.i.i11, %.lr.ph.i.i9 ], [ %i.ac, %_ZN6duckdb29DecimalParquetValueConversionIsLb1EE9PlainSkipILb0EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i14 ] ; 2 uses
  %.08.i.i12 = phi i64 [ 0, %.lr.ph.i.i9 ], [ %i.ae, %_ZN6duckdb29DecimalParquetValueConversionIsLb1EE9PlainSkipILb0EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i14 ]
  %i.z = phi ptr [ %.promoted.i.i10, %.lr.ph.i.i9 ], [ %i.ad, %_ZN6duckdb29DecimalParquetValueConversionIsLb1EE9PlainSkipILb0EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i14 ]
  %.not.i.i.i.i.i13 = icmp ult i64 %i.y, %i.w
  br i1 %.not.i.i.i.i.i13, label %bb.k, label %_ZN6duckdb29DecimalParquetValueConversionIsLb1EE9PlainSkipILb0EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i14

bb.k:                                             ; preds = %bb.j
  %i.aa = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull @.str.25)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @__cxa_throw(ptr nonnull %i.aa, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #24
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6duckdb29DecimalParquetValueConversionIsLb1EE9PlainSkipILb0EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i14: ; preds = %bb.j
  %i.ac = sub nuw i64 %i.y, %i.w                  ; 2 uses
  store i64 %i.ac, ptr %i.x, align 8, !tbaa !332
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.w ; 2 uses
  store ptr %i.ad, ptr %1, align 8, !tbaa !331
  %i.ae = add nuw i64 %.08.i.i12, 1               ; 2 uses
  %exitcond.not.i.i15 = icmp eq i64 %i.ae, %3
  br i1 %exitcond.not.i.i15, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_29DecimalParquetValueConversionIsLb1EEELb1EEEvRNS_10ByteBufferEPKhm.exit, label %bb.j, !llvm.loop !566

_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_29DecimalParquetValueConversionIsLb1EEELb1EEEvRNS_10ByteBufferEPKhm.exit: ; preds = %_ZN6duckdb29DecimalParquetValueConversionIsLb1EE9PlainSkipILb0EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i14, %bb.h, %bb.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb12ColumnReader14PlainTemplatedIsNS_29DecimalParquetValueConversionIsLb1EEEEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88, !nonnull !40, !align !156
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !338
  %i.e = icmp ne i64 %i.d, 0
  %i.f = icmp ne ptr %2, null
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !567)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIsEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5), !noalias !567
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !304, !noalias !567
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5), !noalias !567
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.j = add i64 %4, %3                           ; 2 uses
  %i.k = icmp ult i64 %4, %i.j
  br i1 %i.k, label %.lr.ph.i.i, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesIsNS_29DecimalParquetValueConversionIsLb1EEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 64
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.i
  %.014.i.i = phi i64 [ %4, %.lr.ph.i.i ], [ %i.ae, %bb.g ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 %.014.i.i
  %i.n = load i8, ptr %i.m, align 1, !tbaa !7, !alias.scope !567
  %i.o = zext i8 %i.n to i64
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !88, !noalias !567, !nonnull !40, !align !156
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load i64, ptr %i.q, align 8, !tbaa !338, !noalias !567
  %.not.i.i = icmp eq i64 %i.r, %i.o
  br i1 %.not.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !340, !noalias !567 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %bb.e, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.t = load i64, ptr %i.l, align 8, !tbaa !341, !noalias !567
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef %i.t), !noalias !567
  %.pre.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !340, !noalias !567
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i: ; preds = %bb.e, %bb.d
  %i.u = phi ptr [ %.pre.i.i.i, %bb.e ], [ %i.s, %bb.d ]
  %i.v = lshr i64 %.014.i.i, 6
  %i.w = and i64 %.014.i.i, 63
  %i.x = shl nuw i64 1, %i.w
  %i.y = xor i64 %i.x, -1
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.v ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !300, !noalias !567
  %i.ab = and i64 %i.aa, %i.y
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !300, !noalias !567
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.ac = tail call noundef signext i16 @_ZN6duckdb29DecimalParquetValueConversionIsLb1EE9PlainReadILb0EEEsRNS_10ByteBufferERNS_12ColumnReaderE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(512) %0), !noalias !567
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %.014.i.i
  store i16 %i.ac, ptr %i.ad, align 2, !tbaa !570, !noalias !567
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i
  %i.ae = add i64 %.014.i.i, 1                    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ae, %i.j
  br i1 %exitcond.not.i.i, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesIsNS_29DecimalParquetValueConversionIsLb1EEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit, label %bb.c, !llvm.loop !571

bb.h:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIsEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !304
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.ah = add i64 %4, %3                          ; 2 uses
  %i.ai = icmp ult i64 %4, %i.ah
  br i1 %i.ai, label %.lr.ph.i.i12, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesIsNS_29DecimalParquetValueConversionIsLb1EEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

.lr.ph.i.i12:                                     ; preds = %bb.h, %.lr.ph.i.i12
  %.017.i.i = phi i64 [ %i.al, %.lr.ph.i.i12 ], [ %4, %bb.h ] ; 2 uses
  %i.aj = tail call noundef signext i16 @_ZN6duckdb29DecimalParquetValueConversionIsLb1EE9PlainReadILb0EEEsRNS_10ByteBufferERNS_12ColumnReaderE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(512) %0)
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %.017.i.i
  store i16 %i.aj, ptr %i.ak, align 2, !tbaa !570
  %i.al = add i64 %.017.i.i, 1                    ; 2 uses
  %exitcond.not.i.i13 = icmp eq i64 %i.al, %i.ah
  br i1 %exitcond.not.i.i13, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesIsNS_29DecimalParquetValueConversionIsLb1EEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit, label %.lr.ph.i.i12, !llvm.loop !572

_ZN6duckdb12ColumnReader21PlainTemplatedDefinesIsNS_29DecimalParquetValueConversionIsLb1EEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit: ; preds = %.lr.ph.i.i12, %bb.g, %bb.h, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef signext i16 @_ZN6duckdb29DecimalParquetValueConversionIsLb1EE9PlainReadILb0EEEsRNS_10ByteBufferERNS_12ColumnReaderE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(512) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88, !nonnull !40, !align !156 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.d = load i32, ptr %i.c, align 8, !tbaa !384
  %i.e = zext i32 %i.d to i64                     ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !332
  %.not.i = icmp ult i64 %i.g, %i.e
  br i1 %.not.i, label %bb.b, label %_ZNK6duckdb10ByteBuffer9availableEm.exit

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull @.str.25)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #24
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.d
  %.sink = phi ptr [ %i.m, %bb.g ], [ %i.h, %bb.d ]
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.i, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #21
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNK6duckdb10ByteBuffer9availableEm.exit:         ; preds = %bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !331
  %i.k = tail call noundef signext i16 @_ZN6duckdb19ParquetDecimalUtils16ReadDecimalValueIsEET_PKhmRKNS_19ParquetColumnSchemaE(ptr noundef %i.j, i64 noundef %i.e, ptr noundef nonnull align 8 dereferenceable(157) %i.b)
  %i.l = load i64, ptr %i.f, align 8, !tbaa !332  ; 2 uses
  %.not.i.i = icmp ult i64 %i.l, %i.e
  br i1 %.not.i.i, label %bb.e, label %_ZN6duckdb10ByteBuffer3incEm.exit

bb.e:                                             ; preds = %_ZNK6duckdb10ByteBuffer9availableEm.exit
  %i.m = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull @.str.25)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #24
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

end_hunk_0
begin_hunk_1_@_ZN6duckdb21TemplatedColumnReaderIiNS_29DecimalParquetValueConversionIiLb1EEEED2Ev:bb.a
  store i32 0, ptr %i.c, align 8, !tbaa !347
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !349
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !558
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !558
  br label %_ZN6duckdb10shared_ptrINS_16ResizeableBufferELb1EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN6duckdb10shared_ptrINS_16ResizeableBufferELb1EED2Ev.exit, !prof !265

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21
  br label %_ZN6duckdb10shared_ptrINS_16ResizeableBufferELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_16ResizeableBufferELb1EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  tail call void @_ZN6duckdb12ColumnReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(512) dereferenceable(512) %0) #21
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb19DecimalColumnReaderIiLb1EED0Ev(ptr noundef nonnull align 8 dereferenceable(528) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN6duckdb21TemplatedColumnReaderIiNS_29DecimalParquetValueConversionIiLb1EEEEE, i64 16), ptr %0, align 8, !tbaa !46
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !346  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb21TemplatedColumnReaderIiNS_29DecimalParquetValueConversionIiLb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !347
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !349
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !578
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !578
  br label %_ZN6duckdb21TemplatedColumnReaderIiNS_29DecimalParquetValueConversionIiLb1EEEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN6duckdb21TemplatedColumnReaderIiNS_29DecimalParquetValueConversionIiLb1EEEED2Ev.exit, !prof !265

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !579
  br label %_ZN6duckdb21TemplatedColumnReaderIiNS_29DecimalParquetValueConversionIiLb1EEEED2Ev.exit

_ZN6duckdb21TemplatedColumnReaderIiNS_29DecimalParquetValueConversionIiLb1EEEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  tail call void @_ZN6duckdb12ColumnReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(512) dereferenceable(528) %0) #21, !inline_history !579
  tail call void @_ZdlPv(ptr noundef nonnull %0) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK6duckdb21TemplatedColumnReaderIiNS_29DecimalParquetValueConversionIiLb1EEEE20SupportsDirectFilterEv(ptr noundef nonnull align 8 dereferenceable(528) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb21TemplatedColumnReaderIiNS_29DecimalParquetValueConversionIiLb1EEEE9PlainSkipERNS_10ByteBufferEPhm(ptr noundef nonnull align 8 dereferenceable(528) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb12ColumnReader18PlainSkipTemplatedINS_29DecimalParquetValueConversionIiLb1EEEEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb21TemplatedColumnReaderIiNS_29DecimalParquetValueConversionIiLb1EEEE5PlainERNS_10ByteBufferEPhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(528) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb12ColumnReader14PlainTemplatedIiNS_29DecimalParquetValueConversionIiLb1EEEEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb21TemplatedColumnReaderIiNS_29DecimalParquetValueConversionIiLb1EEEED0Ev(ptr noundef nonnull align 8 dereferenceable(528) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN6duckdb21TemplatedColumnReaderIiNS_29DecimalParquetValueConversionIiLb1EEEEE, i64 16), ptr %0, align 8, !tbaa !46
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !346  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb21TemplatedColumnReaderIiNS_29DecimalParquetValueConversionIiLb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !347
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !349
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !578
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !578
  br label %_ZN6duckdb21TemplatedColumnReaderIiNS_29DecimalParquetValueConversionIiLb1EEEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN6duckdb21TemplatedColumnReaderIiNS_29DecimalParquetValueConversionIiLb1EEEED2Ev.exit, !prof !265

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !579
  br label %_ZN6duckdb21TemplatedColumnReaderIiNS_29DecimalParquetValueConversionIiLb1EEEED2Ev.exit

_ZN6duckdb21TemplatedColumnReaderIiNS_29DecimalParquetValueConversionIiLb1EEEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  tail call void @_ZN6duckdb12ColumnReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(512) dereferenceable(528) %0) #21, !inline_history !579
  tail call void @_ZdlPv(ptr noundef nonnull %0) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb12ColumnReader18PlainSkipTemplatedINS_29DecimalParquetValueConversionIiLb1EEEEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88, !nonnull !40, !align !156 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !338  ; 2 uses
  %i.e = icmp ne i64 %i.d, 0
  %i.f = icmp ne ptr %2, null
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !580)
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_29DecimalParquetValueConversionIiLb1EEELb1EEEvRNS_10ByteBufferEPKhm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %.promoted.i.i = load ptr, ptr %1, align 8, !noalias !580
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted9.i.i = load i64, ptr %i.h, align 8, !noalias !580
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %.lr.ph.i.i
  %4 = phi i64 [ %.promoted9.i.i, %.lr.ph.i.i ], [ %5, %bb.h ] ; 3 uses
  %.08.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.t, %bb.h ] ; 2 uses
  %i.i = phi ptr [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.s, %bb.h ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !7, !alias.scope !580
  %i.l = zext i8 %i.k to i64
  %.not.i.i = icmp eq i64 %i.d, %i.l
  br i1 %.not.i.i, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.m = load i32, ptr %i.g, align 8, !tbaa !384, !noalias !580
  %i.n = zext i32 %i.m to i64                     ; 3 uses
  %.not.i.i.i.i.i = icmp ult i64 %4, %i.n
  br i1 %.not.i.i.i.i.i, label %bb.e, label %_ZN6duckdb29DecimalParquetValueConversionIiLb1EE9PlainSkipILb0EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.o = tail call ptr @__cxa_allocate_exception(i64 16) #21, !noalias !580 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull @.str.25)
          to label %bb.f unwind label %bb.g, !noalias !580

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #24, !noalias !580
  unreachable

common.resume:                                    ; preds = %bb.m, %bb.g
  %.sink = phi ptr [ %i.aa, %bb.m ], [ %i.o, %bb.g ]
  %common.resume.op = phi { ptr, i32 } [ %i.ab, %bb.m ], [ %i.p, %bb.g ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #21
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6duckdb29DecimalParquetValueConversionIiLb1EE9PlainSkipILb0EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i: ; preds = %bb.d
  %i.q = sub nuw i64 %4, %i.n                     ; 2 uses
  store i64 %i.q, ptr %i.h, align 8, !tbaa !332, !noalias !580
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.n ; 2 uses
  store ptr %i.r, ptr %1, align 8, !tbaa !331, !noalias !580
  br label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb29DecimalParquetValueConversionIiLb1EE9PlainSkipILb0EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i, %bb.c
  %5 = phi i64 [ %4, %bb.c ], [ %i.q, %_ZN6duckdb29DecimalParquetValueConversionIiLb1EE9PlainSkipILb0EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i ]
  %i.s = phi ptr [ %i.i, %bb.c ], [ %i.r, %_ZN6duckdb29DecimalParquetValueConversionIiLb1EE9PlainSkipILb0EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i ]
  %i.t = add nuw i64 %.08.i.i, 1                  ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.t, %3
  br i1 %exitcond.not.i.i, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_29DecimalParquetValueConversionIiLb1EEELb1EEEvRNS_10ByteBufferEPKhm.exit, label %bb.c, !llvm.loop !583

bb.i:                                             ; preds = %bb.a
  %.not.i8 = icmp eq i64 %3, 0
  br i1 %.not.i8, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_29DecimalParquetValueConversionIiLb1EEELb1EEEvRNS_10ByteBufferEPKhm.exit, label %.lr.ph.i.i9

.lr.ph.i.i9:                                      ; preds = %bb.i
  %.promoted.i.i10 = load ptr, ptr %1, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.v = load i32, ptr %i.u, align 8, !tbaa !384
  %i.w = zext i32 %i.v to i64                     ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted9.i.i11 = load i64, ptr %i.x, align 8, !tbaa !332
  br label %bb.j

bb.j:                                             ; preds = %_ZN6duckdb29DecimalParquetValueConversionIiLb1EE9PlainSkipILb0EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i14, %.lr.ph.i.i9
  %i.y = phi i64 [ %.promoted9.i.i11, %.lr.ph.i.i9 ], [ %i.ac, %_ZN6duckdb29DecimalParquetValueConversionIiLb1EE9PlainSkipILb0EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i14 ] ; 2 uses
  %.08.i.i12 = phi i64 [ 0, %.lr.ph.i.i9 ], [ %i.ae, %_ZN6duckdb29DecimalParquetValueConversionIiLb1EE9PlainSkipILb0EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i14 ]
  %i.z = phi ptr [ %.promoted.i.i10, %.lr.ph.i.i9 ], [ %i.ad, %_ZN6duckdb29DecimalParquetValueConversionIiLb1EE9PlainSkipILb0EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i14 ]
  %.not.i.i.i.i.i13 = icmp ult i64 %i.y, %i.w
  br i1 %.not.i.i.i.i.i13, label %bb.k, label %_ZN6duckdb29DecimalParquetValueConversionIiLb1EE9PlainSkipILb0EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i14

bb.k:                                             ; preds = %bb.j
  %i.aa = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull @.str.25)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @__cxa_throw(ptr nonnull %i.aa, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #24
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6duckdb29DecimalParquetValueConversionIiLb1EE9PlainSkipILb0EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i14: ; preds = %bb.j
  %i.ac = sub nuw i64 %i.y, %i.w                  ; 2 uses
  store i64 %i.ac, ptr %i.x, align 8, !tbaa !332
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.w ; 2 uses
  store ptr %i.ad, ptr %1, align 8, !tbaa !331
  %i.ae = add nuw i64 %.08.i.i12, 1               ; 2 uses
  %exitcond.not.i.i15 = icmp eq i64 %i.ae, %3
  br i1 %exitcond.not.i.i15, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_29DecimalParquetValueConversionIiLb1EEELb1EEEvRNS_10ByteBufferEPKhm.exit, label %bb.j, !llvm.loop !584

_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_29DecimalParquetValueConversionIiLb1EEELb1EEEvRNS_10ByteBufferEPKhm.exit: ; preds = %_ZN6duckdb29DecimalParquetValueConversionIiLb1EE9PlainSkipILb0EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i14, %bb.h, %bb.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb12ColumnReader14PlainTemplatedIiNS_29DecimalParquetValueConversionIiLb1EEEEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88, !nonnull !40, !align !156
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !338
  %i.e = icmp ne i64 %i.d, 0
  %i.f = icmp ne ptr %2, null
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !585)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIiEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5), !noalias !585
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !304, !noalias !585
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5), !noalias !585
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.j = add i64 %4, %3                           ; 2 uses
  %i.k = icmp ult i64 %4, %i.j
  br i1 %i.k, label %.lr.ph.i.i, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesIiNS_29DecimalParquetValueConversionIiLb1EEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 64
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.i
  %.014.i.i = phi i64 [ %4, %.lr.ph.i.i ], [ %i.ae, %bb.g ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 %.014.i.i
  %i.n = load i8, ptr %i.m, align 1, !tbaa !7, !alias.scope !585
  %i.o = zext i8 %i.n to i64
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !88, !noalias !585, !nonnull !40, !align !156
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load i64, ptr %i.q, align 8, !tbaa !338, !noalias !585
  %.not.i.i = icmp eq i64 %i.r, %i.o
  br i1 %.not.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !340, !noalias !585 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %bb.e, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.t = load i64, ptr %i.l, align 8, !tbaa !341, !noalias !585
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef %i.t), !noalias !585
  %.pre.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !340, !noalias !585
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i: ; preds = %bb.e, %bb.d
  %i.u = phi ptr [ %.pre.i.i.i, %bb.e ], [ %i.s, %bb.d ]
  %i.v = lshr i64 %.014.i.i, 6
  %i.w = and i64 %.014.i.i, 63
  %i.x = shl nuw i64 1, %i.w
  %i.y = xor i64 %i.x, -1
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.v ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !300, !noalias !585
  %i.ab = and i64 %i.aa, %i.y
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !300, !noalias !585
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.ac = tail call noundef i32 @_ZN6duckdb29DecimalParquetValueConversionIiLb1EE9PlainReadILb0EEEiRNS_10ByteBufferERNS_12ColumnReaderE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(512) %0), !noalias !585
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.014.i.i
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !3, !noalias !585
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i
  %i.ae = add i64 %.014.i.i, 1                    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ae, %i.j
  br i1 %exitcond.not.i.i, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesIiNS_29DecimalParquetValueConversionIiLb1EEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit, label %bb.c, !llvm.loop !588

bb.h:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIiEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !304
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.ah = add i64 %4, %3                          ; 2 uses
  %i.ai = icmp ult i64 %4, %i.ah
  br i1 %i.ai, label %.lr.ph.i.i12, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesIiNS_29DecimalParquetValueConversionIiLb1EEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

.lr.ph.i.i12:                                     ; preds = %bb.h, %.lr.ph.i.i12
  %.017.i.i = phi i64 [ %i.al, %.lr.ph.i.i12 ], [ %4, %bb.h ] ; 2 uses
  %i.aj = tail call noundef i32 @_ZN6duckdb29DecimalParquetValueConversionIiLb1EE9PlainReadILb0EEEiRNS_10ByteBufferERNS_12ColumnReaderE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(512) %0)
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.017.i.i
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !3
  %i.al = add i64 %.017.i.i, 1                    ; 2 uses
  %exitcond.not.i.i13 = icmp eq i64 %i.al, %i.ah
  br i1 %exitcond.not.i.i13, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesIiNS_29DecimalParquetValueConversionIiLb1EEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit, label %.lr.ph.i.i12, !llvm.loop !589

_ZN6duckdb12ColumnReader21PlainTemplatedDefinesIiNS_29DecimalParquetValueConversionIiLb1EEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit: ; preds = %.lr.ph.i.i12, %bb.g, %bb.h, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN6duckdb29DecimalParquetValueConversionIiLb1EE9PlainReadILb0EEEiRNS_10ByteBufferERNS_12ColumnReaderE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(512) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88, !nonnull !40, !align !156 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.d = load i32, ptr %i.c, align 8, !tbaa !384
  %i.e = zext i32 %i.d to i64                     ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !332
  %.not.i = icmp ult i64 %i.g, %i.e
  br i1 %.not.i, label %bb.b, label %_ZNK6duckdb10ByteBuffer9availableEm.exit

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull @.str.25)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #24
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.d
  %.sink = phi ptr [ %i.m, %bb.g ], [ %i.h, %bb.d ]
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.i, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #21
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNK6duckdb10ByteBuffer9availableEm.exit:         ; preds = %bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !331
  %i.k = tail call noundef i32 @_ZN6duckdb19ParquetDecimalUtils16ReadDecimalValueIiEET_PKhmRKNS_19ParquetColumnSchemaE(ptr noundef %i.j, i64 noundef %i.e, ptr noundef nonnull align 8 dereferenceable(157) %i.b)
  %i.l = load i64, ptr %i.f, align 8, !tbaa !332  ; 2 uses
  %.not.i.i = icmp ult i64 %i.l, %i.e
  br i1 %.not.i.i, label %bb.e, label %_ZN6duckdb10ByteBuffer3incEm.exit

bb.e:                                             ; preds = %_ZNK6duckdb10ByteBuffer9availableEm.exit
  %i.m = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull @.str.25)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #24
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

end_hunk_1
begin_hunk_2_@_ZN6duckdb21TemplatedColumnReaderIlNS_29DecimalParquetValueConversionIlLb1EEEED2Ev:bb.a
  store i32 0, ptr %i.c, align 8, !tbaa !347
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !349
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !558
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !558
  br label %_ZN6duckdb10shared_ptrINS_16ResizeableBufferELb1EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN6duckdb10shared_ptrINS_16ResizeableBufferELb1EED2Ev.exit, !prof !265

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21
  br label %_ZN6duckdb10shared_ptrINS_16ResizeableBufferELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_16ResizeableBufferELb1EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  tail call void @_ZN6duckdb12ColumnReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(512) dereferenceable(512) %0) #21
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb19DecimalColumnReaderIlLb1EED0Ev(ptr noundef nonnull align 8 dereferenceable(528) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN6duckdb21TemplatedColumnReaderIlNS_29DecimalParquetValueConversionIlLb1EEEEE, i64 16), ptr %0, align 8, !tbaa !46
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !346  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb21TemplatedColumnReaderIlNS_29DecimalParquetValueConversionIlLb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !347
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !349
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !591
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !591
  br label %_ZN6duckdb21TemplatedColumnReaderIlNS_29DecimalParquetValueConversionIlLb1EEEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN6duckdb21TemplatedColumnReaderIlNS_29DecimalParquetValueConversionIlLb1EEEED2Ev.exit, !prof !265

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !592
  br label %_ZN6duckdb21TemplatedColumnReaderIlNS_29DecimalParquetValueConversionIlLb1EEEED2Ev.exit

_ZN6duckdb21TemplatedColumnReaderIlNS_29DecimalParquetValueConversionIlLb1EEEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  tail call void @_ZN6duckdb12ColumnReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(512) dereferenceable(528) %0) #21, !inline_history !592
  tail call void @_ZdlPv(ptr noundef nonnull %0) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK6duckdb21TemplatedColumnReaderIlNS_29DecimalParquetValueConversionIlLb1EEEE20SupportsDirectFilterEv(ptr noundef nonnull align 8 dereferenceable(528) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb21TemplatedColumnReaderIlNS_29DecimalParquetValueConversionIlLb1EEEE9PlainSkipERNS_10ByteBufferEPhm(ptr noundef nonnull align 8 dereferenceable(528) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb12ColumnReader18PlainSkipTemplatedINS_29DecimalParquetValueConversionIlLb1EEEEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb21TemplatedColumnReaderIlNS_29DecimalParquetValueConversionIlLb1EEEE5PlainERNS_10ByteBufferEPhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(528) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb12ColumnReader14PlainTemplatedIlNS_29DecimalParquetValueConversionIlLb1EEEEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb21TemplatedColumnReaderIlNS_29DecimalParquetValueConversionIlLb1EEEED0Ev(ptr noundef nonnull align 8 dereferenceable(528) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN6duckdb21TemplatedColumnReaderIlNS_29DecimalParquetValueConversionIlLb1EEEEE, i64 16), ptr %0, align 8, !tbaa !46
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !346  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb21TemplatedColumnReaderIlNS_29DecimalParquetValueConversionIlLb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !347
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !349
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !591
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !591
  br label %_ZN6duckdb21TemplatedColumnReaderIlNS_29DecimalParquetValueConversionIlLb1EEEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN6duckdb21TemplatedColumnReaderIlNS_29DecimalParquetValueConversionIlLb1EEEED2Ev.exit, !prof !265

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !592
  br label %_ZN6duckdb21TemplatedColumnReaderIlNS_29DecimalParquetValueConversionIlLb1EEEED2Ev.exit

_ZN6duckdb21TemplatedColumnReaderIlNS_29DecimalParquetValueConversionIlLb1EEEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  tail call void @_ZN6duckdb12ColumnReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(512) dereferenceable(528) %0) #21, !inline_history !592
  tail call void @_ZdlPv(ptr noundef nonnull %0) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb12ColumnReader18PlainSkipTemplatedINS_29DecimalParquetValueConversionIlLb1EEEEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88, !nonnull !40, !align !156 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !338  ; 2 uses
  %i.e = icmp ne i64 %i.d, 0
  %i.f = icmp ne ptr %2, null
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !593)
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_29DecimalParquetValueConversionIlLb1EEELb1EEEvRNS_10ByteBufferEPKhm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %.promoted.i.i = load ptr, ptr %1, align 8, !noalias !593
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted9.i.i = load i64, ptr %i.h, align 8, !noalias !593
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %.lr.ph.i.i
  %4 = phi i64 [ %.promoted9.i.i, %.lr.ph.i.i ], [ %5, %bb.h ] ; 3 uses
  %.08.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.t, %bb.h ] ; 2 uses
  %i.i = phi ptr [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.s, %bb.h ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !7, !alias.scope !593
  %i.l = zext i8 %i.k to i64
  %.not.i.i = icmp eq i64 %i.d, %i.l
  br i1 %.not.i.i, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.m = load i32, ptr %i.g, align 8, !tbaa !384, !noalias !593
  %i.n = zext i32 %i.m to i64                     ; 3 uses
  %.not.i.i.i.i.i = icmp ult i64 %4, %i.n
  br i1 %.not.i.i.i.i.i, label %bb.e, label %_ZN6duckdb29DecimalParquetValueConversionIlLb1EE9PlainSkipILb0EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.o = tail call ptr @__cxa_allocate_exception(i64 16) #21, !noalias !593 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull @.str.25)
          to label %bb.f unwind label %bb.g, !noalias !593

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #24, !noalias !593
  unreachable

common.resume:                                    ; preds = %bb.m, %bb.g
  %.sink = phi ptr [ %i.aa, %bb.m ], [ %i.o, %bb.g ]
  %common.resume.op = phi { ptr, i32 } [ %i.ab, %bb.m ], [ %i.p, %bb.g ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #21
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6duckdb29DecimalParquetValueConversionIlLb1EE9PlainSkipILb0EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i: ; preds = %bb.d
  %i.q = sub nuw i64 %4, %i.n                     ; 2 uses
  store i64 %i.q, ptr %i.h, align 8, !tbaa !332, !noalias !593
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.n ; 2 uses
  store ptr %i.r, ptr %1, align 8, !tbaa !331, !noalias !593
  br label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb29DecimalParquetValueConversionIlLb1EE9PlainSkipILb0EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i, %bb.c
  %5 = phi i64 [ %4, %bb.c ], [ %i.q, %_ZN6duckdb29DecimalParquetValueConversionIlLb1EE9PlainSkipILb0EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i ]
  %i.s = phi ptr [ %i.i, %bb.c ], [ %i.r, %_ZN6duckdb29DecimalParquetValueConversionIlLb1EE9PlainSkipILb0EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i ]
  %i.t = add nuw i64 %.08.i.i, 1                  ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.t, %3
  br i1 %exitcond.not.i.i, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_29DecimalParquetValueConversionIlLb1EEELb1EEEvRNS_10ByteBufferEPKhm.exit, label %bb.c, !llvm.loop !596

bb.i:                                             ; preds = %bb.a
  %.not.i8 = icmp eq i64 %3, 0
  br i1 %.not.i8, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_29DecimalParquetValueConversionIlLb1EEELb1EEEvRNS_10ByteBufferEPKhm.exit, label %.lr.ph.i.i9

.lr.ph.i.i9:                                      ; preds = %bb.i
  %.promoted.i.i10 = load ptr, ptr %1, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.v = load i32, ptr %i.u, align 8, !tbaa !384
  %i.w = zext i32 %i.v to i64                     ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted9.i.i11 = load i64, ptr %i.x, align 8, !tbaa !332
  br label %bb.j

bb.j:                                             ; preds = %_ZN6duckdb29DecimalParquetValueConversionIlLb1EE9PlainSkipILb0EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i14, %.lr.ph.i.i9
  %i.y = phi i64 [ %.promoted9.i.i11, %.lr.ph.i.i9 ], [ %i.ac, %_ZN6duckdb29DecimalParquetValueConversionIlLb1EE9PlainSkipILb0EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i14 ] ; 2 uses
  %.08.i.i12 = phi i64 [ 0, %.lr.ph.i.i9 ], [ %i.ae, %_ZN6duckdb29DecimalParquetValueConversionIlLb1EE9PlainSkipILb0EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i14 ]
  %i.z = phi ptr [ %.promoted.i.i10, %.lr.ph.i.i9 ], [ %i.ad, %_ZN6duckdb29DecimalParquetValueConversionIlLb1EE9PlainSkipILb0EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i14 ]
  %.not.i.i.i.i.i13 = icmp ult i64 %i.y, %i.w
  br i1 %.not.i.i.i.i.i13, label %bb.k, label %_ZN6duckdb29DecimalParquetValueConversionIlLb1EE9PlainSkipILb0EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i14

bb.k:                                             ; preds = %bb.j
  %i.aa = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull @.str.25)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @__cxa_throw(ptr nonnull %i.aa, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #24
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6duckdb29DecimalParquetValueConversionIlLb1EE9PlainSkipILb0EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i14: ; preds = %bb.j
  %i.ac = sub nuw i64 %i.y, %i.w                  ; 2 uses
  store i64 %i.ac, ptr %i.x, align 8, !tbaa !332
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.w ; 2 uses
  store ptr %i.ad, ptr %1, align 8, !tbaa !331
  %i.ae = add nuw i64 %.08.i.i12, 1               ; 2 uses
  %exitcond.not.i.i15 = icmp eq i64 %i.ae, %3
  br i1 %exitcond.not.i.i15, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_29DecimalParquetValueConversionIlLb1EEELb1EEEvRNS_10ByteBufferEPKhm.exit, label %bb.j, !llvm.loop !597

_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_29DecimalParquetValueConversionIlLb1EEELb1EEEvRNS_10ByteBufferEPKhm.exit: ; preds = %_ZN6duckdb29DecimalParquetValueConversionIlLb1EE9PlainSkipILb0EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i14, %bb.h, %bb.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb12ColumnReader14PlainTemplatedIlNS_29DecimalParquetValueConversionIlLb1EEEEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88, !nonnull !40, !align !156
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !338
  %i.e = icmp ne i64 %i.d, 0
  %i.f = icmp ne ptr %2, null
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !598)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5), !noalias !598
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !304, !noalias !598
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5), !noalias !598
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.j = add i64 %4, %3                           ; 2 uses
  %i.k = icmp ult i64 %4, %i.j
  br i1 %i.k, label %.lr.ph.i.i, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesIlNS_29DecimalParquetValueConversionIlLb1EEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 64
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.i
  %.014.i.i = phi i64 [ %4, %.lr.ph.i.i ], [ %i.ae, %bb.g ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 %.014.i.i
  %i.n = load i8, ptr %i.m, align 1, !tbaa !7, !alias.scope !598
  %i.o = zext i8 %i.n to i64
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !88, !noalias !598, !nonnull !40, !align !156
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load i64, ptr %i.q, align 8, !tbaa !338, !noalias !598
  %.not.i.i = icmp eq i64 %i.r, %i.o
  br i1 %.not.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !340, !noalias !598 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %bb.e, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.t = load i64, ptr %i.l, align 8, !tbaa !341, !noalias !598
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef %i.t), !noalias !598
  %.pre.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !340, !noalias !598
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i: ; preds = %bb.e, %bb.d
  %i.u = phi ptr [ %.pre.i.i.i, %bb.e ], [ %i.s, %bb.d ]
  %i.v = lshr i64 %.014.i.i, 6
  %i.w = and i64 %.014.i.i, 63
  %i.x = shl nuw i64 1, %i.w
  %i.y = xor i64 %i.x, -1
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.v ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !300, !noalias !598
  %i.ab = and i64 %i.aa, %i.y
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !300, !noalias !598
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.ac = tail call noundef i64 @_ZN6duckdb29DecimalParquetValueConversionIlLb1EE9PlainReadILb0EEElRNS_10ByteBufferERNS_12ColumnReaderE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(512) %0), !noalias !598
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.014.i.i
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !300, !noalias !598
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i
  %i.ae = add i64 %.014.i.i, 1                    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ae, %i.j
  br i1 %exitcond.not.i.i, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesIlNS_29DecimalParquetValueConversionIlLb1EEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit, label %bb.c, !llvm.loop !601

bb.h:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !304
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.ah = add i64 %4, %3                          ; 2 uses
  %i.ai = icmp ult i64 %4, %i.ah
  br i1 %i.ai, label %.lr.ph.i.i12, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesIlNS_29DecimalParquetValueConversionIlLb1EEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

.lr.ph.i.i12:                                     ; preds = %bb.h, %.lr.ph.i.i12
  %.017.i.i = phi i64 [ %i.al, %.lr.ph.i.i12 ], [ %4, %bb.h ] ; 2 uses
  %i.aj = tail call noundef i64 @_ZN6duckdb29DecimalParquetValueConversionIlLb1EE9PlainReadILb0EEElRNS_10ByteBufferERNS_12ColumnReaderE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(512) %0)
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %.017.i.i
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !300
  %i.al = add i64 %.017.i.i, 1                    ; 2 uses
  %exitcond.not.i.i13 = icmp eq i64 %i.al, %i.ah
  br i1 %exitcond.not.i.i13, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesIlNS_29DecimalParquetValueConversionIlLb1EEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit, label %.lr.ph.i.i12, !llvm.loop !602

_ZN6duckdb12ColumnReader21PlainTemplatedDefinesIlNS_29DecimalParquetValueConversionIlLb1EEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit: ; preds = %.lr.ph.i.i12, %bb.g, %bb.h, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN6duckdb29DecimalParquetValueConversionIlLb1EE9PlainReadILb0EEElRNS_10ByteBufferERNS_12ColumnReaderE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(512) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88, !nonnull !40, !align !156 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.d = load i32, ptr %i.c, align 8, !tbaa !384
  %i.e = zext i32 %i.d to i64                     ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !332
  %.not.i = icmp ult i64 %i.g, %i.e
  br i1 %.not.i, label %bb.b, label %_ZNK6duckdb10ByteBuffer9availableEm.exit

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull @.str.25)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #24
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.d
  %.sink = phi ptr [ %i.m, %bb.g ], [ %i.h, %bb.d ]
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.i, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #21
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNK6duckdb10ByteBuffer9availableEm.exit:         ; preds = %bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !331
  %i.k = tail call noundef i64 @_ZN6duckdb19ParquetDecimalUtils16ReadDecimalValueIlEET_PKhmRKNS_19ParquetColumnSchemaE(ptr noundef %i.j, i64 noundef %i.e, ptr noundef nonnull align 8 dereferenceable(157) %i.b)
  %i.l = load i64, ptr %i.f, align 8, !tbaa !332  ; 2 uses
  %.not.i.i = icmp ult i64 %i.l, %i.e
  br i1 %.not.i.i, label %bb.e, label %_ZN6duckdb10ByteBuffer3incEm.exit

bb.e:                                             ; preds = %_ZNK6duckdb10ByteBuffer9availableEm.exit
  %i.m = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull @.str.25)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #24
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

end_hunk_2
begin_hunk_3_@_ZN6duckdb21TemplatedColumnReaderINS_9hugeint_tENS_29DecimalParquetValueConversionIS1_Lb1EEEED2Ev:bb.a
  store i32 0, ptr %i.c, align 8, !tbaa !347
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !349
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !558
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !558
  br label %_ZN6duckdb10shared_ptrINS_16ResizeableBufferELb1EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN6duckdb10shared_ptrINS_16ResizeableBufferELb1EED2Ev.exit, !prof !265

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21
  br label %_ZN6duckdb10shared_ptrINS_16ResizeableBufferELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_16ResizeableBufferELb1EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  tail call void @_ZN6duckdb12ColumnReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(512) dereferenceable(512) %0) #21
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb19DecimalColumnReaderINS_9hugeint_tELb1EED0Ev(ptr noundef nonnull align 8 dereferenceable(528) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN6duckdb21TemplatedColumnReaderINS_9hugeint_tENS_29DecimalParquetValueConversionIS1_Lb1EEEEE, i64 16), ptr %0, align 8, !tbaa !46
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !346  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb21TemplatedColumnReaderINS_9hugeint_tENS_29DecimalParquetValueConversionIS1_Lb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !347
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !349
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !604
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !604
  br label %_ZN6duckdb21TemplatedColumnReaderINS_9hugeint_tENS_29DecimalParquetValueConversionIS1_Lb1EEEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN6duckdb21TemplatedColumnReaderINS_9hugeint_tENS_29DecimalParquetValueConversionIS1_Lb1EEEED2Ev.exit, !prof !265

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !605
  br label %_ZN6duckdb21TemplatedColumnReaderINS_9hugeint_tENS_29DecimalParquetValueConversionIS1_Lb1EEEED2Ev.exit

_ZN6duckdb21TemplatedColumnReaderINS_9hugeint_tENS_29DecimalParquetValueConversionIS1_Lb1EEEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  tail call void @_ZN6duckdb12ColumnReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(512) dereferenceable(528) %0) #21, !inline_history !605
  tail call void @_ZdlPv(ptr noundef nonnull %0) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK6duckdb21TemplatedColumnReaderINS_9hugeint_tENS_29DecimalParquetValueConversionIS1_Lb1EEEE20SupportsDirectFilterEv(ptr noundef nonnull align 8 dereferenceable(528) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb21TemplatedColumnReaderINS_9hugeint_tENS_29DecimalParquetValueConversionIS1_Lb1EEEE9PlainSkipERNS_10ByteBufferEPhm(ptr noundef nonnull align 8 dereferenceable(528) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb12ColumnReader18PlainSkipTemplatedINS_29DecimalParquetValueConversionINS_9hugeint_tELb1EEEEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb21TemplatedColumnReaderINS_9hugeint_tENS_29DecimalParquetValueConversionIS1_Lb1EEEE5PlainERNS_10ByteBufferEPhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(528) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb12ColumnReader14PlainTemplatedINS_9hugeint_tENS_29DecimalParquetValueConversionIS2_Lb1EEEEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb21TemplatedColumnReaderINS_9hugeint_tENS_29DecimalParquetValueConversionIS1_Lb1EEEED0Ev(ptr noundef nonnull align 8 dereferenceable(528) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN6duckdb21TemplatedColumnReaderINS_9hugeint_tENS_29DecimalParquetValueConversionIS1_Lb1EEEEE, i64 16), ptr %0, align 8, !tbaa !46
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !346  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb21TemplatedColumnReaderINS_9hugeint_tENS_29DecimalParquetValueConversionIS1_Lb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !347
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !349
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !604
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !604
  br label %_ZN6duckdb21TemplatedColumnReaderINS_9hugeint_tENS_29DecimalParquetValueConversionIS1_Lb1EEEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN6duckdb21TemplatedColumnReaderINS_9hugeint_tENS_29DecimalParquetValueConversionIS1_Lb1EEEED2Ev.exit, !prof !265

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !605
  br label %_ZN6duckdb21TemplatedColumnReaderINS_9hugeint_tENS_29DecimalParquetValueConversionIS1_Lb1EEEED2Ev.exit

_ZN6duckdb21TemplatedColumnReaderINS_9hugeint_tENS_29DecimalParquetValueConversionIS1_Lb1EEEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  tail call void @_ZN6duckdb12ColumnReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(512) dereferenceable(528) %0) #21, !inline_history !605
  tail call void @_ZdlPv(ptr noundef nonnull %0) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb12ColumnReader18PlainSkipTemplatedINS_29DecimalParquetValueConversionINS_9hugeint_tELb1EEEEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88, !nonnull !40, !align !156 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !338  ; 2 uses
  %i.e = icmp ne i64 %i.d, 0
  %i.f = icmp ne ptr %2, null
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !606)
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_29DecimalParquetValueConversionINS_9hugeint_tELb1EEELb1EEEvRNS_10ByteBufferEPKhm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %.promoted.i.i = load ptr, ptr %1, align 8, !noalias !606
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted9.i.i = load i64, ptr %i.h, align 8, !noalias !606
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %.lr.ph.i.i
  %4 = phi i64 [ %.promoted9.i.i, %.lr.ph.i.i ], [ %5, %bb.h ] ; 3 uses
  %.08.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.t, %bb.h ] ; 2 uses
  %i.i = phi ptr [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.s, %bb.h ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !7, !alias.scope !606
  %i.l = zext i8 %i.k to i64
  %.not.i.i = icmp eq i64 %i.d, %i.l
  br i1 %.not.i.i, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.m = load i32, ptr %i.g, align 8, !tbaa !384, !noalias !606
  %i.n = zext i32 %i.m to i64                     ; 3 uses
  %.not.i.i.i.i.i = icmp ult i64 %4, %i.n
  br i1 %.not.i.i.i.i.i, label %bb.e, label %_ZN6duckdb29DecimalParquetValueConversionINS_9hugeint_tELb1EE9PlainSkipILb0EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.o = tail call ptr @__cxa_allocate_exception(i64 16) #21, !noalias !606 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull @.str.25)
          to label %bb.f unwind label %bb.g, !noalias !606

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #24, !noalias !606
  unreachable

common.resume:                                    ; preds = %bb.m, %bb.g
  %.sink = phi ptr [ %i.aa, %bb.m ], [ %i.o, %bb.g ]
  %common.resume.op = phi { ptr, i32 } [ %i.ab, %bb.m ], [ %i.p, %bb.g ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #21
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6duckdb29DecimalParquetValueConversionINS_9hugeint_tELb1EE9PlainSkipILb0EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i: ; preds = %bb.d
  %i.q = sub nuw i64 %4, %i.n                     ; 2 uses
  store i64 %i.q, ptr %i.h, align 8, !tbaa !332, !noalias !606
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.n ; 2 uses
  store ptr %i.r, ptr %1, align 8, !tbaa !331, !noalias !606
  br label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb29DecimalParquetValueConversionINS_9hugeint_tELb1EE9PlainSkipILb0EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i, %bb.c
  %5 = phi i64 [ %4, %bb.c ], [ %i.q, %_ZN6duckdb29DecimalParquetValueConversionINS_9hugeint_tELb1EE9PlainSkipILb0EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i ]
  %i.s = phi ptr [ %i.i, %bb.c ], [ %i.r, %_ZN6duckdb29DecimalParquetValueConversionINS_9hugeint_tELb1EE9PlainSkipILb0EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i ]
  %i.t = add nuw i64 %.08.i.i, 1                  ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.t, %3
  br i1 %exitcond.not.i.i, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_29DecimalParquetValueConversionINS_9hugeint_tELb1EEELb1EEEvRNS_10ByteBufferEPKhm.exit, label %bb.c, !llvm.loop !609

bb.i:                                             ; preds = %bb.a
  %.not.i8 = icmp eq i64 %3, 0
  br i1 %.not.i8, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_29DecimalParquetValueConversionINS_9hugeint_tELb1EEELb1EEEvRNS_10ByteBufferEPKhm.exit, label %.lr.ph.i.i9

.lr.ph.i.i9:                                      ; preds = %bb.i
  %.promoted.i.i10 = load ptr, ptr %1, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.v = load i32, ptr %i.u, align 8, !tbaa !384
  %i.w = zext i32 %i.v to i64                     ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted9.i.i11 = load i64, ptr %i.x, align 8, !tbaa !332
  br label %bb.j

bb.j:                                             ; preds = %_ZN6duckdb29DecimalParquetValueConversionINS_9hugeint_tELb1EE9PlainSkipILb0EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i14, %.lr.ph.i.i9
  %i.y = phi i64 [ %.promoted9.i.i11, %.lr.ph.i.i9 ], [ %i.ac, %_ZN6duckdb29DecimalParquetValueConversionINS_9hugeint_tELb1EE9PlainSkipILb0EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i14 ] ; 2 uses
  %.08.i.i12 = phi i64 [ 0, %.lr.ph.i.i9 ], [ %i.ae, %_ZN6duckdb29DecimalParquetValueConversionINS_9hugeint_tELb1EE9PlainSkipILb0EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i14 ]
  %i.z = phi ptr [ %.promoted.i.i10, %.lr.ph.i.i9 ], [ %i.ad, %_ZN6duckdb29DecimalParquetValueConversionINS_9hugeint_tELb1EE9PlainSkipILb0EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i14 ]
  %.not.i.i.i.i.i13 = icmp ult i64 %i.y, %i.w
  br i1 %.not.i.i.i.i.i13, label %bb.k, label %_ZN6duckdb29DecimalParquetValueConversionINS_9hugeint_tELb1EE9PlainSkipILb0EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i14

bb.k:                                             ; preds = %bb.j
  %i.aa = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull @.str.25)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @__cxa_throw(ptr nonnull %i.aa, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #24
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6duckdb29DecimalParquetValueConversionINS_9hugeint_tELb1EE9PlainSkipILb0EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i14: ; preds = %bb.j
  %i.ac = sub nuw i64 %i.y, %i.w                  ; 2 uses
  store i64 %i.ac, ptr %i.x, align 8, !tbaa !332
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.w ; 2 uses
  store ptr %i.ad, ptr %1, align 8, !tbaa !331
  %i.ae = add nuw i64 %.08.i.i12, 1               ; 2 uses
  %exitcond.not.i.i15 = icmp eq i64 %i.ae, %3
  br i1 %exitcond.not.i.i15, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_29DecimalParquetValueConversionINS_9hugeint_tELb1EEELb1EEEvRNS_10ByteBufferEPKhm.exit, label %bb.j, !llvm.loop !610

_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_29DecimalParquetValueConversionINS_9hugeint_tELb1EEELb1EEEvRNS_10ByteBufferEPKhm.exit: ; preds = %_ZN6duckdb29DecimalParquetValueConversionINS_9hugeint_tELb1EE9PlainSkipILb0EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i14, %bb.h, %bb.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb12ColumnReader14PlainTemplatedINS_9hugeint_tENS_29DecimalParquetValueConversionIS2_Lb1EEEEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88, !nonnull !40, !align !156
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !338
  %i.e = icmp ne i64 %i.d, 0
  %i.f = icmp ne ptr %2, null
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !611)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_9hugeint_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5), !noalias !611
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !304, !noalias !611
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5), !noalias !611
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.j = add i64 %4, %3                           ; 2 uses
  %i.k = icmp ult i64 %4, %i.j
  br i1 %i.k, label %.lr.ph.i.i, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_9hugeint_tENS_29DecimalParquetValueConversionIS2_Lb1EEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 64
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.i
  %.014.i.i = phi i64 [ %4, %.lr.ph.i.i ], [ %i.ag, %bb.g ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 %.014.i.i
  %i.n = load i8, ptr %i.m, align 1, !tbaa !7, !alias.scope !611
  %i.o = zext i8 %i.n to i64
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !88, !noalias !611, !nonnull !40, !align !156
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load i64, ptr %i.q, align 8, !tbaa !338, !noalias !611
  %.not.i.i = icmp eq i64 %i.r, %i.o
  br i1 %.not.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !340, !noalias !611 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %bb.e, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.t = load i64, ptr %i.l, align 8, !tbaa !341, !noalias !611
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef %i.t), !noalias !611
  %.pre.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !340, !noalias !611
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i: ; preds = %bb.e, %bb.d
  %i.u = phi ptr [ %.pre.i.i.i, %bb.e ], [ %i.s, %bb.d ]
  %i.v = lshr i64 %.014.i.i, 6
  %i.w = and i64 %.014.i.i, 63
  %i.x = shl nuw i64 1, %i.w
  %i.y = xor i64 %i.x, -1
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.v ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !300, !noalias !611
  %i.ab = and i64 %i.aa, %i.y
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !300, !noalias !611
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.ac = tail call { i64, i64 } @_ZN6duckdb29DecimalParquetValueConversionINS_9hugeint_tELb1EE9PlainReadILb0EEES1_RNS_10ByteBufferERNS_12ColumnReaderE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(512) %0), !noalias !611 ; 2 uses
  %i.ad = extractvalue { i64, i64 } %i.ac, 0
  %i.ae = extractvalue { i64, i64 } %i.ac, 1
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.014.i.i ; 2 uses
  store i64 %i.ad, ptr %i.af, align 8, !tbaa !300, !noalias !611
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 %i.ae, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !300, !noalias !611
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i
  %i.ag = add i64 %.014.i.i, 1                    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ag, %i.j
  br i1 %exitcond.not.i.i, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_9hugeint_tENS_29DecimalParquetValueConversionIS2_Lb1EEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit, label %bb.c, !llvm.loop !614

bb.h:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_9hugeint_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !304
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.aj = add i64 %4, %3                          ; 2 uses
  %i.ak = icmp ult i64 %4, %i.aj
  br i1 %i.ak, label %.lr.ph.i.i12, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_9hugeint_tENS_29DecimalParquetValueConversionIS2_Lb1EEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

.lr.ph.i.i12:                                     ; preds = %bb.h, %.lr.ph.i.i12
  %.017.i.i = phi i64 [ %i.ap, %.lr.ph.i.i12 ], [ %4, %bb.h ] ; 2 uses
  %i.al = tail call { i64, i64 } @_ZN6duckdb29DecimalParquetValueConversionINS_9hugeint_tELb1EE9PlainReadILb0EEES1_RNS_10ByteBufferERNS_12ColumnReaderE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(512) %0) ; 2 uses
  %i.am = extractvalue { i64, i64 } %i.al, 0
  %i.an = extractvalue { i64, i64 } %i.al, 1
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %.017.i.i ; 2 uses
  store i64 %i.am, ptr %i.ao, align 8, !tbaa !300
  %.sroa.4.0..sroa_idx.i.i13 = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 %i.an, ptr %.sroa.4.0..sroa_idx.i.i13, align 8, !tbaa !300
  %i.ap = add i64 %.017.i.i, 1                    ; 2 uses
  %exitcond.not.i.i14 = icmp eq i64 %i.ap, %i.aj
  br i1 %exitcond.not.i.i14, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_9hugeint_tENS_29DecimalParquetValueConversionIS2_Lb1EEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit, label %.lr.ph.i.i12, !llvm.loop !615

_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_9hugeint_tENS_29DecimalParquetValueConversionIS2_Lb1EEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit: ; preds = %.lr.ph.i.i12, %bb.g, %bb.h, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { i64, i64 } @_ZN6duckdb29DecimalParquetValueConversionINS_9hugeint_tELb1EE9PlainReadILb0EEES1_RNS_10ByteBufferERNS_12ColumnReaderE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(512) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88, !nonnull !40, !align !156 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.d = load i32, ptr %i.c, align 8, !tbaa !384
  %i.e = zext i32 %i.d to i64                     ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !332
  %.not.i = icmp ult i64 %i.g, %i.e
  br i1 %.not.i, label %bb.b, label %_ZNK6duckdb10ByteBuffer9availableEm.exit

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull @.str.25)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #24
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.d
  %.sink = phi ptr [ %i.m, %bb.g ], [ %i.h, %bb.d ]
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.i, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #21
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNK6duckdb10ByteBuffer9availableEm.exit:         ; preds = %bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !331
  %i.k = tail call { i64, i64 } @_ZN6duckdb19ParquetDecimalUtils16ReadDecimalValueINS_9hugeint_tEEET_PKhmRKNS_19ParquetColumnSchemaE(ptr noundef %i.j, i64 noundef %i.e, ptr noundef nonnull align 8 dereferenceable(157) %i.b)
  %i.l = load i64, ptr %i.f, align 8, !tbaa !332  ; 2 uses
  %.not.i.i = icmp ult i64 %i.l, %i.e
  br i1 %.not.i.i, label %bb.e, label %_ZN6duckdb10ByteBuffer3incEm.exit

bb.e:                                             ; preds = %_ZNK6duckdb10ByteBuffer9availableEm.exit
  %i.m = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull @.str.25)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
end_hunk_3
begin_hunk_4_@_ZN6duckdb21TemplatedColumnReaderIdNS_29DecimalParquetValueConversionIdLb1EEEED2Ev:bb.a
  store i32 0, ptr %i.c, align 8, !tbaa !347
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !349
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !558
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !558
  br label %_ZN6duckdb10shared_ptrINS_16ResizeableBufferELb1EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN6duckdb10shared_ptrINS_16ResizeableBufferELb1EED2Ev.exit, !prof !265

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21
  br label %_ZN6duckdb10shared_ptrINS_16ResizeableBufferELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_16ResizeableBufferELb1EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  tail call void @_ZN6duckdb12ColumnReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(512) dereferenceable(512) %0) #21
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb19DecimalColumnReaderIdLb1EED0Ev(ptr noundef nonnull align 8 dereferenceable(528) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN6duckdb21TemplatedColumnReaderIdNS_29DecimalParquetValueConversionIdLb1EEEEE, i64 16), ptr %0, align 8, !tbaa !46
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !346  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb21TemplatedColumnReaderIdNS_29DecimalParquetValueConversionIdLb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !347
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !349
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !622
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !622
  br label %_ZN6duckdb21TemplatedColumnReaderIdNS_29DecimalParquetValueConversionIdLb1EEEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN6duckdb21TemplatedColumnReaderIdNS_29DecimalParquetValueConversionIdLb1EEEED2Ev.exit, !prof !265

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !623
  br label %_ZN6duckdb21TemplatedColumnReaderIdNS_29DecimalParquetValueConversionIdLb1EEEED2Ev.exit

_ZN6duckdb21TemplatedColumnReaderIdNS_29DecimalParquetValueConversionIdLb1EEEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  tail call void @_ZN6duckdb12ColumnReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(512) dereferenceable(528) %0) #21, !inline_history !623
  tail call void @_ZdlPv(ptr noundef nonnull %0) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK6duckdb21TemplatedColumnReaderIdNS_29DecimalParquetValueConversionIdLb1EEEE20SupportsDirectFilterEv(ptr noundef nonnull align 8 dereferenceable(528) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb21TemplatedColumnReaderIdNS_29DecimalParquetValueConversionIdLb1EEEE9PlainSkipERNS_10ByteBufferEPhm(ptr noundef nonnull align 8 dereferenceable(528) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb12ColumnReader18PlainSkipTemplatedINS_29DecimalParquetValueConversionIdLb1EEEEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb21TemplatedColumnReaderIdNS_29DecimalParquetValueConversionIdLb1EEEE5PlainERNS_10ByteBufferEPhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(528) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb12ColumnReader14PlainTemplatedIdNS_29DecimalParquetValueConversionIdLb1EEEEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb21TemplatedColumnReaderIdNS_29DecimalParquetValueConversionIdLb1EEEED0Ev(ptr noundef nonnull align 8 dereferenceable(528) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN6duckdb21TemplatedColumnReaderIdNS_29DecimalParquetValueConversionIdLb1EEEEE, i64 16), ptr %0, align 8, !tbaa !46
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !346  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb21TemplatedColumnReaderIdNS_29DecimalParquetValueConversionIdLb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !347
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !349
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !622
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !622
  br label %_ZN6duckdb21TemplatedColumnReaderIdNS_29DecimalParquetValueConversionIdLb1EEEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN6duckdb21TemplatedColumnReaderIdNS_29DecimalParquetValueConversionIdLb1EEEED2Ev.exit, !prof !265

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !623
  br label %_ZN6duckdb21TemplatedColumnReaderIdNS_29DecimalParquetValueConversionIdLb1EEEED2Ev.exit

_ZN6duckdb21TemplatedColumnReaderIdNS_29DecimalParquetValueConversionIdLb1EEEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  tail call void @_ZN6duckdb12ColumnReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(512) dereferenceable(528) %0) #21, !inline_history !623
  tail call void @_ZdlPv(ptr noundef nonnull %0) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb12ColumnReader18PlainSkipTemplatedINS_29DecimalParquetValueConversionIdLb1EEEEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88, !nonnull !40, !align !156 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !338  ; 2 uses
  %i.e = icmp ne i64 %i.d, 0
  %i.f = icmp ne ptr %2, null
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !624)
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_29DecimalParquetValueConversionIdLb1EEELb1EEEvRNS_10ByteBufferEPKhm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %.promoted.i.i = load ptr, ptr %1, align 8, !noalias !624
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted9.i.i = load i64, ptr %i.h, align 8, !noalias !624
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %.lr.ph.i.i
  %4 = phi i64 [ %.promoted9.i.i, %.lr.ph.i.i ], [ %5, %bb.h ] ; 3 uses
  %.08.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.t, %bb.h ] ; 2 uses
  %i.i = phi ptr [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.s, %bb.h ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !7, !alias.scope !624
  %i.l = zext i8 %i.k to i64
  %.not.i.i = icmp eq i64 %i.d, %i.l
  br i1 %.not.i.i, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.m = load i32, ptr %i.g, align 8, !tbaa !384, !noalias !624
  %i.n = zext i32 %i.m to i64                     ; 3 uses
  %.not.i.i.i.i.i = icmp ult i64 %4, %i.n
  br i1 %.not.i.i.i.i.i, label %bb.e, label %_ZN6duckdb29DecimalParquetValueConversionIdLb1EE9PlainSkipILb0EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.o = tail call ptr @__cxa_allocate_exception(i64 16) #21, !noalias !624 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull @.str.25)
          to label %bb.f unwind label %bb.g, !noalias !624

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #24, !noalias !624
  unreachable

common.resume:                                    ; preds = %bb.m, %bb.g
  %.sink = phi ptr [ %i.aa, %bb.m ], [ %i.o, %bb.g ]
  %common.resume.op = phi { ptr, i32 } [ %i.ab, %bb.m ], [ %i.p, %bb.g ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #21
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6duckdb29DecimalParquetValueConversionIdLb1EE9PlainSkipILb0EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i: ; preds = %bb.d
  %i.q = sub nuw i64 %4, %i.n                     ; 2 uses
  store i64 %i.q, ptr %i.h, align 8, !tbaa !332, !noalias !624
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.n ; 2 uses
  store ptr %i.r, ptr %1, align 8, !tbaa !331, !noalias !624
  br label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb29DecimalParquetValueConversionIdLb1EE9PlainSkipILb0EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i, %bb.c
  %5 = phi i64 [ %4, %bb.c ], [ %i.q, %_ZN6duckdb29DecimalParquetValueConversionIdLb1EE9PlainSkipILb0EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i ]
  %i.s = phi ptr [ %i.i, %bb.c ], [ %i.r, %_ZN6duckdb29DecimalParquetValueConversionIdLb1EE9PlainSkipILb0EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i ]
  %i.t = add nuw i64 %.08.i.i, 1                  ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.t, %3
  br i1 %exitcond.not.i.i, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_29DecimalParquetValueConversionIdLb1EEELb1EEEvRNS_10ByteBufferEPKhm.exit, label %bb.c, !llvm.loop !627

bb.i:                                             ; preds = %bb.a
  %.not.i8 = icmp eq i64 %3, 0
  br i1 %.not.i8, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_29DecimalParquetValueConversionIdLb1EEELb1EEEvRNS_10ByteBufferEPKhm.exit, label %.lr.ph.i.i9

.lr.ph.i.i9:                                      ; preds = %bb.i
  %.promoted.i.i10 = load ptr, ptr %1, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.v = load i32, ptr %i.u, align 8, !tbaa !384
  %i.w = zext i32 %i.v to i64                     ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted9.i.i11 = load i64, ptr %i.x, align 8, !tbaa !332
  br label %bb.j

bb.j:                                             ; preds = %_ZN6duckdb29DecimalParquetValueConversionIdLb1EE9PlainSkipILb0EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i14, %.lr.ph.i.i9
  %i.y = phi i64 [ %.promoted9.i.i11, %.lr.ph.i.i9 ], [ %i.ac, %_ZN6duckdb29DecimalParquetValueConversionIdLb1EE9PlainSkipILb0EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i14 ] ; 2 uses
  %.08.i.i12 = phi i64 [ 0, %.lr.ph.i.i9 ], [ %i.ae, %_ZN6duckdb29DecimalParquetValueConversionIdLb1EE9PlainSkipILb0EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i14 ]
  %i.z = phi ptr [ %.promoted.i.i10, %.lr.ph.i.i9 ], [ %i.ad, %_ZN6duckdb29DecimalParquetValueConversionIdLb1EE9PlainSkipILb0EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i14 ]
  %.not.i.i.i.i.i13 = icmp ult i64 %i.y, %i.w
  br i1 %.not.i.i.i.i.i13, label %bb.k, label %_ZN6duckdb29DecimalParquetValueConversionIdLb1EE9PlainSkipILb0EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i14

bb.k:                                             ; preds = %bb.j
  %i.aa = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull @.str.25)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @__cxa_throw(ptr nonnull %i.aa, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #24
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6duckdb29DecimalParquetValueConversionIdLb1EE9PlainSkipILb0EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i14: ; preds = %bb.j
  %i.ac = sub nuw i64 %i.y, %i.w                  ; 2 uses
  store i64 %i.ac, ptr %i.x, align 8, !tbaa !332
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.w ; 2 uses
  store ptr %i.ad, ptr %1, align 8, !tbaa !331
  %i.ae = add nuw i64 %.08.i.i12, 1               ; 2 uses
  %exitcond.not.i.i15 = icmp eq i64 %i.ae, %3
  br i1 %exitcond.not.i.i15, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_29DecimalParquetValueConversionIdLb1EEELb1EEEvRNS_10ByteBufferEPKhm.exit, label %bb.j, !llvm.loop !628

_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_29DecimalParquetValueConversionIdLb1EEELb1EEEvRNS_10ByteBufferEPKhm.exit: ; preds = %_ZN6duckdb29DecimalParquetValueConversionIdLb1EE9PlainSkipILb0EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i14, %bb.h, %bb.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb12ColumnReader14PlainTemplatedIdNS_29DecimalParquetValueConversionIdLb1EEEEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88, !nonnull !40, !align !156
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !338
  %i.e = icmp ne i64 %i.d, 0
  %i.f = icmp ne ptr %2, null
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !629)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5), !noalias !629
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !304, !noalias !629
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5), !noalias !629
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.j = add i64 %4, %3                           ; 2 uses
  %i.k = icmp ult i64 %4, %i.j
  br i1 %i.k, label %.lr.ph.i.i, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesIdNS_29DecimalParquetValueConversionIdLb1EEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 64
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.i
  %.014.i.i = phi i64 [ %4, %.lr.ph.i.i ], [ %i.ae, %bb.g ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 %.014.i.i
  %i.n = load i8, ptr %i.m, align 1, !tbaa !7, !alias.scope !629
  %i.o = zext i8 %i.n to i64
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !88, !noalias !629, !nonnull !40, !align !156
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load i64, ptr %i.q, align 8, !tbaa !338, !noalias !629
  %.not.i.i = icmp eq i64 %i.r, %i.o
  br i1 %.not.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !340, !noalias !629 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %bb.e, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.t = load i64, ptr %i.l, align 8, !tbaa !341, !noalias !629
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef %i.t), !noalias !629
  %.pre.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !340, !noalias !629
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i: ; preds = %bb.e, %bb.d
  %i.u = phi ptr [ %.pre.i.i.i, %bb.e ], [ %i.s, %bb.d ]
  %i.v = lshr i64 %.014.i.i, 6
  %i.w = and i64 %.014.i.i, 63
  %i.x = shl nuw i64 1, %i.w
  %i.y = xor i64 %i.x, -1
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.v ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !300, !noalias !629
  %i.ab = and i64 %i.aa, %i.y
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !300, !noalias !629
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.ac = tail call noundef double @_ZN6duckdb29DecimalParquetValueConversionIdLb1EE9PlainReadILb0EEEdRNS_10ByteBufferERNS_12ColumnReaderE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(512) %0), !noalias !629
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.014.i.i
  store double %i.ac, ptr %i.ad, align 8, !tbaa !632, !noalias !629
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i
  %i.ae = add i64 %.014.i.i, 1                    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ae, %i.j
  br i1 %exitcond.not.i.i, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesIdNS_29DecimalParquetValueConversionIdLb1EEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit, label %bb.c, !llvm.loop !634

bb.h:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !304
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.ah = add i64 %4, %3                          ; 2 uses
  %i.ai = icmp ult i64 %4, %i.ah
  br i1 %i.ai, label %.lr.ph.i.i12, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesIdNS_29DecimalParquetValueConversionIdLb1EEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

.lr.ph.i.i12:                                     ; preds = %bb.h, %.lr.ph.i.i12
  %.017.i.i = phi i64 [ %i.al, %.lr.ph.i.i12 ], [ %4, %bb.h ] ; 2 uses
  %i.aj = tail call noundef double @_ZN6duckdb29DecimalParquetValueConversionIdLb1EE9PlainReadILb0EEEdRNS_10ByteBufferERNS_12ColumnReaderE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(512) %0)
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %.017.i.i
  store double %i.aj, ptr %i.ak, align 8, !tbaa !632
  %i.al = add i64 %.017.i.i, 1                    ; 2 uses
  %exitcond.not.i.i13 = icmp eq i64 %i.al, %i.ah
  br i1 %exitcond.not.i.i13, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesIdNS_29DecimalParquetValueConversionIdLb1EEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit, label %.lr.ph.i.i12, !llvm.loop !635

_ZN6duckdb12ColumnReader21PlainTemplatedDefinesIdNS_29DecimalParquetValueConversionIdLb1EEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit: ; preds = %.lr.ph.i.i12, %bb.g, %bb.h, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZN6duckdb29DecimalParquetValueConversionIdLb1EE9PlainReadILb0EEEdRNS_10ByteBufferERNS_12ColumnReaderE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(512) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88, !nonnull !40, !align !156 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.d = load i32, ptr %i.c, align 8, !tbaa !384  ; 2 uses
  %i.e = zext i32 %i.d to i64                     ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !332  ; 2 uses
  %.not.i = icmp ult i64 %i.g, %i.e
  br i1 %.not.i, label %bb.b, label %_ZNK6duckdb10ByteBuffer9availableEm.exit

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull @.str.25)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #24
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.h) #21
  resume { ptr, i32 } %i.i

_ZNK6duckdb10ByteBuffer9availableEm.exit:         ; preds = %bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !331    ; 3 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !7     ; 2 uses
  %i.l = icmp slt i8 %i.k, 0
  %.not.i8 = icmp eq i32 %i.d, 0
  br i1 %.not.i8, label %._crit_edge36.i, label %.lr.ph35.i

.lr.ph35.i:                                       ; preds = %_ZNK6duckdb10ByteBuffer9availableEm.exit
  %.lobit.i = ashr i8 %i.k, 7                     ; 8 uses
  br label %.lr.ph.i

._crit_edge36.i:                                  ; preds = %._crit_edge.i, %_ZNK6duckdb10ByteBuffer9availableEm.exit
  %.029.lcssa.i = phi double [ 0.000000e+00, %_ZNK6duckdb10ByteBuffer9availableEm.exit ], [ %i.r, %._crit_edge.i ] ; 2 uses
  br i1 %i.l, label %bb.l, label %bb.m

.lr.ph.i:                                         ; preds = %._crit_edge.i, %.lr.ph35.i
  %indvars.iv.i = phi i64 [ %i.e, %.lr.ph35.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 8 uses
  %.02833.i = phi i64 [ 0, %.lr.ph35.i ], [ %i.s, %._crit_edge.i ] ; 2 uses
  %.02932.i = phi double [ 0.000000e+00, %.lr.ph35.i ], [ %i.r, %._crit_edge.i ]
  %i.m = getelementptr i8, ptr %i.j, i64 %.02833.i ; 8 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !7
  %i.o = xor i8 %i.n, %.lobit.i
  %exitcond.not.i = icmp ult i64 %indvars.iv.i, 2
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.e

._crit_edge.i:                                    ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %.lr.ph.i
end_hunk_4
