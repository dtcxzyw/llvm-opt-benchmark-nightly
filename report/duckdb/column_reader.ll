inline.NumInlined: 4822
inline.NumDeleted: 2510
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 44
begin_hunk_0_@_ZN6duckdb21TemplatedColumnReaderIfNS_30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEEEED2Ev:bb.a

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !207
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !209
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !210
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !210
  br label %_ZN6duckdb10shared_ptrINS_16ResizeableBufferELb1EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !211
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
  br i1 %i.q, label %bb.g, label %_ZN6duckdb10shared_ptrINS_16ResizeableBufferELb1EED2Ev.exit, !prof !212

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27
  br label %_ZN6duckdb10shared_ptrINS_16ResizeableBufferELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_16ResizeableBufferELb1EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  tail call void @_ZN6duckdb12ColumnReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(512) dereferenceable(512) %0) #27
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6duckdb20CallbackColumnReaderItfXadL_ZNS_16Float16ToFloat32ERKtEEED0Ev(ptr noundef nonnull align 8 dereferenceable(528) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN6duckdb21TemplatedColumnReaderIfNS_30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEEEEE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !206  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb21TemplatedColumnReaderIfNS_30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !207
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !209
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !886
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !886
  br label %_ZN6duckdb21TemplatedColumnReaderIfNS_30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEEEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !211
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
  br i1 %i.q, label %bb.g, label %_ZN6duckdb21TemplatedColumnReaderIfNS_30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEEEED2Ev.exit, !prof !212

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !887
  br label %_ZN6duckdb21TemplatedColumnReaderIfNS_30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEEEED2Ev.exit

_ZN6duckdb21TemplatedColumnReaderIfNS_30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEEEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  tail call void @_ZN6duckdb12ColumnReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(512) dereferenceable(528) %0) #27, !inline_history !887
  tail call void @_ZdlPv(ptr noundef nonnull %0) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK6duckdb21TemplatedColumnReaderIfNS_30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEEEE20SupportsDirectFilterEv(ptr noundef nonnull align 8 dereferenceable(528) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb21TemplatedColumnReaderIfNS_30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEEEE9PlainSkipERNS_10ByteBufferEPhm(ptr noundef nonnull align 8 dereferenceable(528) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb12ColumnReader18PlainSkipTemplatedINS_30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEEEEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb21TemplatedColumnReaderIfNS_30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEEEE5PlainERNS_10ByteBufferEPhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(528) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb12ColumnReader14PlainTemplatedIfNS_30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEEEEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6duckdb21TemplatedColumnReaderIfNS_30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(528) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN6duckdb21TemplatedColumnReaderIfNS_30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEEEEE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !206  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb21TemplatedColumnReaderIfNS_30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !207
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !209
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !886
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !886
  br label %_ZN6duckdb21TemplatedColumnReaderIfNS_30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEEEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !211
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
  br i1 %i.q, label %bb.g, label %_ZN6duckdb21TemplatedColumnReaderIfNS_30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEEEED2Ev.exit, !prof !212

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !887
  br label %_ZN6duckdb21TemplatedColumnReaderIfNS_30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEEEED2Ev.exit

_ZN6duckdb21TemplatedColumnReaderIfNS_30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEEEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  tail call void @_ZN6duckdb12ColumnReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(512) dereferenceable(528) %0) #27, !inline_history !887
  tail call void @_ZdlPv(ptr noundef nonnull %0) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader18PlainSkipTemplatedINS_30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEEEEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !381
  %i.e = icmp ne i64 %i.d, 0
  %i.f = icmp ne ptr %2, null
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEEELb1EEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3)
  br label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEEELb0EEEvRNS_10ByteBufferEPKhm.exit

bb.c:                                             ; preds = %bb.a
  %i.g = shl i64 %3, 1                            ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !389  ; 6 uses
  %.not.i = icmp ugt i64 %i.g, %i.i
  %.not11.i = icmp eq i64 %3, 0                   ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %.not11.i, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEEELb0EEEvRNS_10ByteBufferEPKhm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %.promoted.i.i = load ptr, ptr %1, align 8
  %i.j = sub i64 %i.i, %i.g
  %scevgep.i.i = getelementptr i8, ptr %.promoted.i.i, i64 %i.g
  store i64 %i.j, ptr %i.h, align 8, !tbaa !389
  store ptr %scevgep.i.i, ptr %1, align 8, !tbaa !386
  br label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEEELb0EEEvRNS_10ByteBufferEPKhm.exit

bb.e:                                             ; preds = %bb.c
  br i1 %.not11.i, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEEELb0EEEvRNS_10ByteBufferEPKhm.exit, label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %bb.e
  %.promoted.i9.i = load ptr, ptr %1, align 8     ; 3 uses
  %i.k = lshr i64 %i.i, 1
  %i.l = add i64 %3, -1
  %umin13 = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.l) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %umin13, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i8.i
  %i.m = add nuw i64 %umin13, 1                   ; 2 uses
  %n.mod.vf = and i64 %i.m, 3                     ; 2 uses
  %i.n = icmp eq i64 %n.mod.vf, 0
  %i.o = select i1 %i.n, i64 4, i64 %n.mod.vf
  %n.vec = sub i64 %i.m, %i.o                     ; 4 uses
  %i.p = shl i64 %n.vec, 1
  %i.q = sub i64 %i.i, %i.p
  %i.r = shl i64 %n.vec, 1
  %i.s = getelementptr i8, ptr %.promoted.i9.i, i64 %i.r
  %i.t = add i64 %i.i, -2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %i.u = phi i64 [ %i.t, %vector.ph ], [ %i.x, %vector.body ] ; 2 uses
  %pointer.phi = phi ptr [ %.promoted.i9.i, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %i.v = add i64 %i.u, -6
  %i.w = getelementptr i8, ptr %pointer.phi, i64 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = add i64 %i.u, -8
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 8
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %scalar.ph.preheader.loopexit, label %vector.body, !llvm.loop !888

scalar.ph.preheader.loopexit:                     ; preds = %vector.body
  store i64 %i.v, ptr %i.h, align 8, !tbaa !389
  store ptr %i.w, ptr %1, align 8, !tbaa !386
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %scalar.ph.preheader.loopexit, %.lr.ph.i8.i
  %.ph = phi i64 [ %i.i, %.lr.ph.i8.i ], [ %i.q, %scalar.ph.preheader.loopexit ]
  %.08.i.i.ph = phi i64 [ 0, %.lr.ph.i8.i ], [ %n.vec, %scalar.ph.preheader.loopexit ]
  %.ph18 = phi ptr [ %.promoted.i9.i, %.lr.ph.i8.i ], [ %i.s, %scalar.ph.preheader.loopexit ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_ZN6duckdb30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i
  %i.z = phi i64 [ %i.ad, %_ZN6duckdb30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.08.i.i = phi i64 [ %i.af, %_ZN6duckdb30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i ], [ %.08.i.i.ph, %scalar.ph.preheader ]
  %i.aa = phi ptr [ %i.ae, %_ZN6duckdb30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i ], [ %.ph18, %scalar.ph.preheader ]
  %.not.i.i.i.i.i = icmp ult i64 %i.z, 2
  br i1 %.not.i.i.i.i.i, label %bb.f, label %_ZN6duckdb30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i

bb.f:                                             ; preds = %scalar.ph
  %i.ab = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull @.str.39)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.ab, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #29
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ab) #27
  resume { ptr, i32 } %i.ac

_ZN6duckdb30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i: ; preds = %scalar.ph
  %i.ad = add i64 %i.z, -2                        ; 2 uses
  store i64 %i.ad, ptr %i.h, align 8, !tbaa !389
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 2 ; 2 uses
  store ptr %i.ae, ptr %1, align 8, !tbaa !386
  %i.af = add nuw i64 %.08.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.af, %3
  br i1 %exitcond.not.i.i, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEEELb0EEEvRNS_10ByteBufferEPKhm.exit, label %scalar.ph, !llvm.loop !889

_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEEELb0EEEvRNS_10ByteBufferEPKhm.exit: ; preds = %_ZN6duckdb30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i.i, %bb.e, %.lr.ph.i.i, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEEELb1EEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = shl i64 %3, 1
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !389  ; 4 uses
  %.not = icmp ugt i64 %i.a, %i.c
  %.not14 = icmp eq i64 %3, 0                     ; 2 uses
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !890)
  br i1 %.not14, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %.promoted.i = load ptr, ptr %1, align 8, !noalias !890 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !275, !noalias !890, !nonnull !193, !align !194
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !381, !noalias !890 ; 3 uses
  %xtraiter = and i64 %3, 1
  %i.h = icmp eq i64 %3, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %3, -2
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.new
  %i.i = phi i64 [ %i.c, %.lr.ph.i.new ], [ %i.x, %bb.g ] ; 2 uses
  %.08.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.z, %bb.g ] ; 3 uses
  %i.j = phi ptr [ %.promoted.i, %.lr.ph.i.new ], [ %i.y, %bb.g ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.g ]
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i
  %i.l = load i8, ptr %i.k, align 1, !tbaa !211, !alias.scope !890
  %i.m = zext i8 %i.l to i64
  %.not.i = icmp eq i64 %i.g, %i.m
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = add i64 %i.i, -2                         ; 2 uses
  store i64 %i.n, ptr %i.b, align 8, !tbaa !389, !noalias !890
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 2 ; 2 uses
  store ptr %i.o, ptr %1, align 8, !tbaa !386, !noalias !890
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = phi i64 [ %i.i, %bb.c ], [ %i.n, %bb.d ] ; 2 uses
  %i.q = phi ptr [ %i.j, %bb.c ], [ %i.o, %bb.d ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !211, !alias.scope !890
  %i.u = zext i8 %i.t to i64
  %.not.i.1 = icmp eq i64 %i.g, %i.u
  br i1 %.not.i.1, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = add i64 %i.p, -2                         ; 2 uses
  store i64 %i.v, ptr %i.b, align 8, !tbaa !389, !noalias !890
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 2 ; 2 uses
  store ptr %i.w, ptr %1, align 8, !tbaa !386, !noalias !890
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = phi i64 [ %i.p, %bb.e ], [ %i.v, %bb.f ] ; 2 uses
  %i.y = phi ptr [ %i.q, %bb.e ], [ %i.w, %bb.f ] ; 2 uses
  %i.z = add nuw i64 %.08.i, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit.loopexit25.unr-lcssa, label %bb.c, !llvm.loop !893

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !894)
  br i1 %.not14, label %_ZN6duckdb12ColumnReader26PlainSkipTemplatedInternalINS_30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEEELb1ELb0EEEvRNS_10ByteBufferEPKhmm.exit, label %.lr.ph.i8

.lr.ph.i8:                                        ; preds = %bb.h
  %.promoted.i9 = load ptr, ptr %1, align 8, !noalias !894
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !275, !noalias !894, !nonnull !193, !align !194
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !381, !noalias !894
  br label %bb.i

bb.i:                                             ; preds = %bb.n, %.lr.ph.i8
  %i.ae = phi i64 [ %i.c, %.lr.ph.i8 ], [ %i.an, %bb.n ] ; 3 uses
  %.08.i11 = phi i64 [ 0, %.lr.ph.i8 ], [ %i.ap, %bb.n ] ; 2 uses
  %i.af = phi ptr [ %.promoted.i9, %.lr.ph.i8 ], [ %i.ao, %bb.n ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %.08.i11
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !211, !alias.scope !894
  %i.ai = zext i8 %i.ah to i64
  %.not.i12 = icmp eq i64 %i.ad, %i.ai
  br i1 %.not.i12, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i.i = icmp ult i64 %i.ae, 2
  br i1 %.not.i.i.i.i, label %bb.k, label %_ZN6duckdb30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i

bb.k:                                             ; preds = %bb.j
  %i.aj = tail call ptr @__cxa_allocate_exception(i64 16) #27, !noalias !894 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull @.str.39)
          to label %bb.l unwind label %bb.m, !noalias !894

bb.l:                                             ; preds = %bb.k
  tail call void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #29, !noalias !894
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.aj) #27, !noalias !894
  resume { ptr, i32 } %i.ak

_ZN6duckdb30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i: ; preds = %bb.j
  %i.al = add i64 %i.ae, -2                       ; 2 uses
  store i64 %i.al, ptr %i.b, align 8, !tbaa !389, !noalias !894
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 2 ; 2 uses
  store ptr %i.am, ptr %1, align 8, !tbaa !386, !noalias !894
  br label %bb.n

bb.n:                                             ; preds = %_ZN6duckdb30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i, %bb.i
  %i.an = phi i64 [ %i.ae, %bb.i ], [ %i.al, %_ZN6duckdb30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i ]
  %i.ao = phi ptr [ %i.af, %bb.i ], [ %i.am, %_ZN6duckdb30CallbackParquetValueConversionItfXadL_ZNS_16Float16ToFloat32ERKtEEE9PlainSkipILb1EEEvRNS_10ByteBufferERNS_12ColumnReaderE.exit.i ]
  %i.ap = add nuw i64 %.08.i11, 1                 ; 2 uses
  %exitcond.not.i13 = icmp eq i64 %i.ap, %3
end_hunk_0
