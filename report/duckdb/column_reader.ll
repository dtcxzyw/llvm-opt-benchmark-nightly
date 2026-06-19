inline.NumInlined: 4822
inline.NumDeleted: 2510
begin_hunk_0_@_ZN6duckdb21TemplatedColumnReaderItNS_31TemplatedParquetValueConversionIjEEED2Ev:bb.a
_ZN6duckdb10shared_ptrINS_16ResizeableBufferELb1EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  tail call void @_ZN6duckdb12ColumnReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(512) dereferenceable(512) %0) #27
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6duckdb21TemplatedColumnReaderItNS_31TemplatedParquetValueConversionIjEEED0Ev(ptr noundef nonnull align 8 dereferenceable(528) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN6duckdb21TemplatedColumnReaderItNS_31TemplatedParquetValueConversionIjEEEE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !206  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb21TemplatedColumnReaderItNS_31TemplatedParquetValueConversionIjEEED2Ev.exit, label %bb.b

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
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !781
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !781
  br label %_ZN6duckdb21TemplatedColumnReaderItNS_31TemplatedParquetValueConversionIjEEED2Ev.exit

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
  br i1 %i.q, label %bb.g, label %_ZN6duckdb21TemplatedColumnReaderItNS_31TemplatedParquetValueConversionIjEEED2Ev.exit, !prof !212

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !782
  br label %_ZN6duckdb21TemplatedColumnReaderItNS_31TemplatedParquetValueConversionIjEEED2Ev.exit

_ZN6duckdb21TemplatedColumnReaderItNS_31TemplatedParquetValueConversionIjEEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  tail call void @_ZN6duckdb12ColumnReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(512) dereferenceable(528) %0) #27, !inline_history !782
  tail call void @_ZdlPv(ptr noundef nonnull %0) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK6duckdb21TemplatedColumnReaderItNS_31TemplatedParquetValueConversionIjEEE20SupportsDirectFilterEv(ptr noundef nonnull align 8 dereferenceable(528) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb21TemplatedColumnReaderItNS_31TemplatedParquetValueConversionIjEEE9PlainSkipERNS_10ByteBufferEPhm(ptr noundef nonnull align 8 dereferenceable(528) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !381
  %i.e = icmp ne i64 %i.d, 0
  %i.f = icmp ne ptr %2, null
  %or.cond.i = and i1 %i.f, %i.e
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_31TemplatedParquetValueConversionIjEELb1EEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3)
  br label %_ZN6duckdb12ColumnReader18PlainSkipTemplatedINS_31TemplatedParquetValueConversionIjEEEEvRNS_10ByteBufferEPKhm.exit

bb.c:                                             ; preds = %bb.a
  %i.g = shl i64 %3, 2                            ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !388  ; 2 uses
  %.not.i.i = icmp ugt i64 %i.g, %i.i
  br i1 %.not.i.i, label %bb.d, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_31TemplatedParquetValueConversionIjEELb0EEEvRNS_10ByteBufferEPKhm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull @.str.39)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #29
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.j) #27
  resume { ptr, i32 } %i.k

_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_31TemplatedParquetValueConversionIjEELb0EEEvRNS_10ByteBufferEPKhm.exit.i: ; preds = %bb.c
  %i.l = sub nuw i64 %i.i, %i.g
  store i64 %i.l, ptr %i.h, align 8, !tbaa !388
  %i.m = load ptr, ptr %1, align 8, !tbaa !385
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.g
  store ptr %i.n, ptr %1, align 8, !tbaa !385
  br label %_ZN6duckdb12ColumnReader18PlainSkipTemplatedINS_31TemplatedParquetValueConversionIjEEEEvRNS_10ByteBufferEPKhm.exit

_ZN6duckdb12ColumnReader18PlainSkipTemplatedINS_31TemplatedParquetValueConversionIjEEEEvRNS_10ByteBufferEPKhm.exit: ; preds = %bb.b, %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_31TemplatedParquetValueConversionIjEELb0EEEvRNS_10ByteBufferEPKhm.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb21TemplatedColumnReaderItNS_31TemplatedParquetValueConversionIjEEE5PlainERNS_10ByteBufferEPhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(528) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb12ColumnReader14PlainTemplatedItNS_31TemplatedParquetValueConversionIjEEEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader14PlainTemplatedItNS_31TemplatedParquetValueConversionIjEEEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) local_unnamed_addr #0 comdat align 2 {
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
  tail call void @_ZN6duckdb12ColumnReader21PlainTemplatedDefinesItNS_31TemplatedParquetValueConversionIjEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesItNS_31TemplatedParquetValueConversionIjEELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

bb.c:                                             ; preds = %bb.a
  %i.g = shl i64 %3, 2                            ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !388
  %.not.i = icmp ugt i64 %i.g, %i.i
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeItEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !754  ; 6 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.l = add i64 %4, %3                           ; 2 uses
  %i.m = icmp ult i64 %4, %i.l
  br i1 %i.m, label %.lr.ph.i.i, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesItNS_31TemplatedParquetValueConversionIjEELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

.lr.ph.i.i:                                       ; preds = %bb.d
  %.promoted.i.i = load ptr, ptr %1, align 8      ; 8 uses
  %.promoted18.i.i = load i64, ptr %i.h, align 8, !tbaa !388 ; 3 uses
  %min.iters.check = icmp ult i64 %3, 20
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %scevgep = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.n = shl i64 %4, 1
  %scevgep14 = getelementptr i8, ptr %i.k, i64 %i.n ; 2 uses
  %i.o = add i64 %4, %3
  %i.p = shl i64 %i.o, 1
  %scevgep15 = getelementptr i8, ptr %i.k, i64 %i.p ; 2 uses
  %scevgep16 = getelementptr i8, ptr %.promoted.i.i, i64 %i.g ; 2 uses
  %bound0 = icmp ult ptr %1, %scevgep15
  %bound1 = icmp ult ptr %scevgep14, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound017 = icmp ult ptr %1, %scevgep16
  %bound118 = icmp ult ptr %.promoted.i.i, %scevgep
  %found.conflict19 = and i1 %bound017, %bound118
  %conflict.rdx = or i1 %found.conflict, %found.conflict19
  %bound020 = icmp ult ptr %scevgep14, %scevgep16
  %bound121 = icmp ult ptr %.promoted.i.i, %scevgep15
  %found.conflict22 = and i1 %bound020, %bound121
  %conflict.rdx23 = or i1 %conflict.rdx, %found.conflict22
  br i1 %conflict.rdx23, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, -4                         ; 4 uses
  %i.q = add i64 %4, %n.vec
  %i.r = shl i64 %n.vec, 2
  %i.s = getelementptr i8, ptr %.promoted.i.i, i64 %i.r
  %i.t = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.promoted18.i.i, i64 0
  %i.u = getelementptr [2 x i8], ptr %i.k, i64 %4
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ %i.t, %vector.ph ], [ %i.y, %vector.body ]
  %vec.phi24 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.z, %vector.body ]
  %i.v = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %.promoted.i.i, i64 %i.v ; 2 uses
  %i.w = getelementptr i8, ptr %.promoted.i.i, i64 %i.v
  %i.x = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep, align 1, !alias.scope !783
  %wide.load26 = load <2 x i32>, ptr %i.x, align 1, !alias.scope !783
  %i.y = add <2 x i64> %vec.phi, splat (i64 -4)   ; 2 uses
  %i.z = add <2 x i64> %vec.phi24, splat (i64 -4) ; 2 uses
  %6 = getelementptr i8, ptr %i.w, i64 16
  %i.aa = trunc <2 x i32> %wide.load to <2 x i16>
  %i.ab = trunc <2 x i32> %wide.load26 to <2 x i16>
  %i.ac = getelementptr [2 x i8], ptr %i.u, i64 %index ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store <2 x i16> %i.aa, ptr %i.ac, align 2, !tbaa !786, !alias.scope !787, !noalias !783
  store <2 x i16> %i.ab, ptr %i.ad, align 2, !tbaa !786, !alias.scope !787, !noalias !783
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !789

middle.block:                                     ; preds = %vector.body
  store ptr %6, ptr %1, align 8, !tbaa !385, !alias.scope !792, !noalias !794
  %bin.rdx = add <2 x i64> %i.z, %i.y
  %i.af = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  store i64 %i.af, ptr %i.h, align 8, !tbaa !388, !alias.scope !792, !noalias !794
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesItNS_31TemplatedParquetValueConversionIjEELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.ph = phi i64 [ %.promoted18.i.i, %vector.memcheck ], [ %.promoted18.i.i, %.lr.ph.i.i ], [ %i.af, %middle.block ] ; 2 uses
  %.017.i.i.ph = phi i64 [ %4, %vector.memcheck ], [ %4, %.lr.ph.i.i ], [ %i.q, %middle.block ] ; 5 uses
  %.ph28 = phi ptr [ %.promoted.i.i, %vector.memcheck ], [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.s, %middle.block ] ; 3 uses
  %i.ag = add i64 %4, %3                          ; 2 uses
  %i.ah = sub i64 %i.ag, %.017.i.i.ph
  %.neg = add i64 %.017.i.i.ph, 1
  %xtraiter = and i64 %i.ah, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %.0.copyload.i.i.i.i.i.i.prol = load i32, ptr %.ph28, align 1
  %i.ai = add i64 %.ph, -4                        ; 2 uses
  store i64 %i.ai, ptr %i.h, align 8, !tbaa !388
  %i.aj = getelementptr inbounds nuw i8, ptr %.ph28, i64 4 ; 2 uses
  store ptr %i.aj, ptr %1, align 8, !tbaa !385
  %i.ak = trunc i32 %.0.copyload.i.i.i.i.i.i.prol to i16
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %.017.i.i.ph
  store i16 %i.ak, ptr %i.al, align 2, !tbaa !786
  %i.am = add nuw i64 %.017.i.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.ai, %scalar.ph.prol ]
  %.017.i.i.unr = phi i64 [ %.017.i.i.ph, %scalar.ph.preheader ], [ %i.am, %scalar.ph.prol ]
  %.unr30 = phi ptr [ %.ph28, %scalar.ph.preheader ], [ %i.aj, %scalar.ph.prol ]
  %i.an = icmp eq i64 %i.ag, %.neg
  br i1 %i.an, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesItNS_31TemplatedParquetValueConversionIjEELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ao = phi i64 [ %i.au, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 2 uses
  %.017.i.i = phi i64 [ %i.az, %scalar.ph ], [ %.017.i.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.ap = phi ptr [ %i.av, %scalar.ph ], [ %.unr30, %scalar.ph.prol.loopexit ] ; 3 uses
  %.0.copyload.i.i.i.i.i.i = load i32, ptr %i.ap, align 1
  %i.aq = add i64 %i.ao, -4
  store i64 %i.aq, ptr %i.h, align 8, !tbaa !388
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 4 ; 2 uses
  store ptr %i.ar, ptr %1, align 8, !tbaa !385
  %i.as = trunc i32 %.0.copyload.i.i.i.i.i.i to i16
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %.017.i.i
  store i16 %i.as, ptr %i.at, align 2, !tbaa !786
  %.0.copyload.i.i.i.i.i.i.1 = load i32, ptr %i.ar, align 1
  %i.au = add i64 %i.ao, -8                       ; 2 uses
  store i64 %i.au, ptr %i.h, align 8, !tbaa !388
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  store ptr %i.av, ptr %1, align 8, !tbaa !385
  %i.aw = trunc i32 %.0.copyload.i.i.i.i.i.i.1 to i16
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %.017.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  store i16 %i.aw, ptr %i.ay, align 2, !tbaa !786
  %i.az = add nuw i64 %.017.i.i, 2                ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.az, %i.l
  br i1 %exitcond.not.i.i.1, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesItNS_31TemplatedParquetValueConversionIjEELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit, label %scalar.ph, !llvm.loop !795

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalItNS_31TemplatedParquetValueConversionIjEELb0ELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesItNS_31TemplatedParquetValueConversionIjEELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

_ZN6duckdb12ColumnReader21PlainTemplatedDefinesItNS_31TemplatedParquetValueConversionIjEELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.e, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader21PlainTemplatedDefinesItNS_31TemplatedParquetValueConversionIjEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = shl i64 %3, 2
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !388
  %.not = icmp ugt i64 %i.a, %i.c
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !796)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeItEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5), !noalias !796
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !754, !noalias !796
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5), !noalias !796
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.g = add i64 %4, %3                           ; 2 uses
  %i.h = icmp ult i64 %4, %i.g
  br i1 %i.h, label %.lr.ph.i, label %_ZN6duckdb12ColumnReader22PlainTemplatedInternalItNS_31TemplatedParquetValueConversionIjEELb1ELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 64
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i
  %.014.i = phi i64 [ %4, %.lr.ph.i ], [ %i.ag, %bb.g ] ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %.014.i
  %i.l = load i8, ptr %i.k, align 1, !tbaa !211, !alias.scope !796
  %i.m = zext i8 %i.l to i64
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !275, !noalias !796, !nonnull !193, !align !194
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load i64, ptr %i.o, align 8, !tbaa !381, !noalias !796
  %.not.i = icmp eq i64 %i.p, %i.m
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !463, !noalias !796 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %bb.e, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i

bb.e:                                             ; preds = %bb.d
  %i.r = load i64, ptr %i.j, align 8, !tbaa !470, !noalias !796
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 noundef %i.r), !noalias !796
  %.pre.i.i = load ptr, ptr %i.f, align 8, !tbaa !463, !noalias !796
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i: ; preds = %bb.e, %bb.d
  %i.s = phi ptr [ %.pre.i.i, %bb.e ], [ %i.q, %bb.d ]
  %i.t = lshr i64 %.014.i, 6
  %i.u = and i64 %.014.i, 63
  %i.v = shl nuw i64 1, %i.u
  %i.w = xor i64 %i.v, -1
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.t ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !281, !noalias !796
  %i.z = and i64 %i.y, %i.w
  store i64 %i.z, ptr %i.x, align 8, !tbaa !281, !noalias !796
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr %1, align 8, !tbaa !385, !noalias !796 ; 2 uses
  %.0.copyload.i.i.i.i.i = load i32, ptr %i.aa, align 1, !noalias !796
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !388, !noalias !796
  %i.ac = add i64 %i.ab, -4
  store i64 %i.ac, ptr %i.b, align 8, !tbaa !388, !noalias !796
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  store ptr %i.ad, ptr %1, align 8, !tbaa !385, !noalias !796
  %i.ae = trunc i32 %.0.copyload.i.i.i.i.i to i16
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %.014.i
  store i16 %i.ae, ptr %i.af, align 2, !tbaa !786, !noalias !796
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i
  %i.ag = add i64 %.014.i, 1                      ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ag, %i.g
  br i1 %exitcond.not.i, label %_ZN6duckdb12ColumnReader22PlainTemplatedInternalItNS_31TemplatedParquetValueConversionIjEELb1ELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit, label %bb.c, !llvm.loop !799

bb.h:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalItNS_31TemplatedParquetValueConversionIjEELb1ELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader22PlainTemplatedInternalItNS_31TemplatedParquetValueConversionIjEELb1ELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

_ZN6duckdb12ColumnReader22PlainTemplatedInternalItNS_31TemplatedParquetValueConversionIjEELb1ELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit: ; preds = %bb.g, %bb.b, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalItNS_31TemplatedParquetValueConversionIjEELb1ELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noalias noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeItEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !754
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.d = add i64 %4, %3                           ; 2 uses
  %i.e = icmp ult i64 %4, %i.d
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.i, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %.014 = phi i64 [ %4, %.lr.ph ], [ %i.ag, %bb.i ] ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %.014
  %i.j = load i8, ptr %i.i, align 1, !tbaa !211
  %i.k = zext i8 %i.j to i64
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load i64, ptr %i.m, align 8, !tbaa !381
  %.not = icmp eq i64 %i.n, %i.k
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !463  ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %bb.d, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.d:                                             ; preds = %bb.c
  %i.p = load i64, ptr %i.g, align 8, !tbaa !470
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %i.p)
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !463
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.c, %bb.d
  %i.q = phi ptr [ %.pre.i, %bb.d ], [ %i.o, %bb.c ]
  %i.r = lshr i64 %.014, 6
end_hunk_0
begin_hunk_1_@_ZN6duckdb21TemplatedColumnReaderIsNS_31TemplatedParquetValueConversionIiEEED2Ev:bb.a
_ZN6duckdb10shared_ptrINS_16ResizeableBufferELb1EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  tail call void @_ZN6duckdb12ColumnReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(512) dereferenceable(512) %0) #27
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6duckdb21TemplatedColumnReaderIsNS_31TemplatedParquetValueConversionIiEEED0Ev(ptr noundef nonnull align 8 dereferenceable(528) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN6duckdb21TemplatedColumnReaderIsNS_31TemplatedParquetValueConversionIiEEEE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !206  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb21TemplatedColumnReaderIsNS_31TemplatedParquetValueConversionIiEEED2Ev.exit, label %bb.b

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
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !861
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !861
  br label %_ZN6duckdb21TemplatedColumnReaderIsNS_31TemplatedParquetValueConversionIiEEED2Ev.exit

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
  br i1 %i.q, label %bb.g, label %_ZN6duckdb21TemplatedColumnReaderIsNS_31TemplatedParquetValueConversionIiEEED2Ev.exit, !prof !212

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !862
  br label %_ZN6duckdb21TemplatedColumnReaderIsNS_31TemplatedParquetValueConversionIiEEED2Ev.exit

_ZN6duckdb21TemplatedColumnReaderIsNS_31TemplatedParquetValueConversionIiEEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  tail call void @_ZN6duckdb12ColumnReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(512) dereferenceable(528) %0) #27, !inline_history !862
  tail call void @_ZdlPv(ptr noundef nonnull %0) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK6duckdb21TemplatedColumnReaderIsNS_31TemplatedParquetValueConversionIiEEE20SupportsDirectFilterEv(ptr noundef nonnull align 8 dereferenceable(528) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb21TemplatedColumnReaderIsNS_31TemplatedParquetValueConversionIiEEE9PlainSkipERNS_10ByteBufferEPhm(ptr noundef nonnull align 8 dereferenceable(528) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !381
  %i.e = icmp ne i64 %i.d, 0
  %i.f = icmp ne ptr %2, null
  %or.cond.i = and i1 %i.f, %i.e
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_31TemplatedParquetValueConversionIiEELb1EEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3)
  br label %_ZN6duckdb12ColumnReader18PlainSkipTemplatedINS_31TemplatedParquetValueConversionIiEEEEvRNS_10ByteBufferEPKhm.exit

bb.c:                                             ; preds = %bb.a
  %i.g = shl i64 %3, 2                            ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !388  ; 2 uses
  %.not.i.i = icmp ugt i64 %i.g, %i.i
  br i1 %.not.i.i, label %bb.d, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_31TemplatedParquetValueConversionIiEELb0EEEvRNS_10ByteBufferEPKhm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull @.str.39)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #29
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.j) #27
  resume { ptr, i32 } %i.k

_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_31TemplatedParquetValueConversionIiEELb0EEEvRNS_10ByteBufferEPKhm.exit.i: ; preds = %bb.c
  %i.l = sub nuw i64 %i.i, %i.g
  store i64 %i.l, ptr %i.h, align 8, !tbaa !388
  %i.m = load ptr, ptr %1, align 8, !tbaa !385
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.g
  store ptr %i.n, ptr %1, align 8, !tbaa !385
  br label %_ZN6duckdb12ColumnReader18PlainSkipTemplatedINS_31TemplatedParquetValueConversionIiEEEEvRNS_10ByteBufferEPKhm.exit

_ZN6duckdb12ColumnReader18PlainSkipTemplatedINS_31TemplatedParquetValueConversionIiEEEEvRNS_10ByteBufferEPKhm.exit: ; preds = %bb.b, %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_31TemplatedParquetValueConversionIiEELb0EEEvRNS_10ByteBufferEPKhm.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb21TemplatedColumnReaderIsNS_31TemplatedParquetValueConversionIiEEE5PlainERNS_10ByteBufferEPhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(528) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb12ColumnReader14PlainTemplatedIsNS_31TemplatedParquetValueConversionIiEEEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader14PlainTemplatedIsNS_31TemplatedParquetValueConversionIiEEEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) local_unnamed_addr #0 comdat align 2 {
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
  tail call void @_ZN6duckdb12ColumnReader21PlainTemplatedDefinesIsNS_31TemplatedParquetValueConversionIiEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesIsNS_31TemplatedParquetValueConversionIiEELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

bb.c:                                             ; preds = %bb.a
  %i.g = shl i64 %3, 2                            ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !388
  %.not.i = icmp ugt i64 %i.g, %i.i
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIsEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !754  ; 6 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.l = add i64 %4, %3                           ; 2 uses
  %i.m = icmp ult i64 %4, %i.l
  br i1 %i.m, label %.lr.ph.i.i, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesIsNS_31TemplatedParquetValueConversionIiEELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

.lr.ph.i.i:                                       ; preds = %bb.d
  %.promoted.i.i = load ptr, ptr %1, align 8      ; 8 uses
  %.promoted18.i.i = load i64, ptr %i.h, align 8, !tbaa !388 ; 3 uses
  %min.iters.check = icmp ult i64 %3, 20
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %scevgep = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.n = shl i64 %4, 1
  %scevgep14 = getelementptr i8, ptr %i.k, i64 %i.n ; 2 uses
  %i.o = add i64 %4, %3
  %i.p = shl i64 %i.o, 1
  %scevgep15 = getelementptr i8, ptr %i.k, i64 %i.p ; 2 uses
  %scevgep16 = getelementptr i8, ptr %.promoted.i.i, i64 %i.g ; 2 uses
  %bound0 = icmp ult ptr %1, %scevgep15
  %bound1 = icmp ult ptr %scevgep14, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound017 = icmp ult ptr %1, %scevgep16
  %bound118 = icmp ult ptr %.promoted.i.i, %scevgep
  %found.conflict19 = and i1 %bound017, %bound118
  %conflict.rdx = or i1 %found.conflict, %found.conflict19
  %bound020 = icmp ult ptr %scevgep14, %scevgep16
  %bound121 = icmp ult ptr %.promoted.i.i, %scevgep15
  %found.conflict22 = and i1 %bound020, %bound121
  %conflict.rdx23 = or i1 %conflict.rdx, %found.conflict22
  br i1 %conflict.rdx23, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, -4                         ; 4 uses
  %i.q = add i64 %4, %n.vec
  %i.r = shl i64 %n.vec, 2
  %i.s = getelementptr i8, ptr %.promoted.i.i, i64 %i.r
  %i.t = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.promoted18.i.i, i64 0
  %i.u = getelementptr [2 x i8], ptr %i.k, i64 %4
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ %i.t, %vector.ph ], [ %i.y, %vector.body ]
  %vec.phi24 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.z, %vector.body ]
  %i.v = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %.promoted.i.i, i64 %i.v ; 2 uses
  %i.w = getelementptr i8, ptr %.promoted.i.i, i64 %i.v
  %i.x = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep, align 1, !alias.scope !863
  %wide.load26 = load <2 x i32>, ptr %i.x, align 1, !alias.scope !863
  %i.y = add <2 x i64> %vec.phi, splat (i64 -4)   ; 2 uses
  %i.z = add <2 x i64> %vec.phi24, splat (i64 -4) ; 2 uses
  %6 = getelementptr i8, ptr %i.w, i64 16
  %i.aa = trunc <2 x i32> %wide.load to <2 x i16>
  %i.ab = trunc <2 x i32> %wide.load26 to <2 x i16>
  %i.ac = getelementptr [2 x i8], ptr %i.u, i64 %index ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store <2 x i16> %i.aa, ptr %i.ac, align 2, !tbaa !786, !alias.scope !866, !noalias !863
  store <2 x i16> %i.ab, ptr %i.ad, align 2, !tbaa !786, !alias.scope !866, !noalias !863
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !868

middle.block:                                     ; preds = %vector.body
  store ptr %6, ptr %1, align 8, !tbaa !385, !alias.scope !869, !noalias !871
  %bin.rdx = add <2 x i64> %i.z, %i.y
  %i.af = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  store i64 %i.af, ptr %i.h, align 8, !tbaa !388, !alias.scope !869, !noalias !871
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesIsNS_31TemplatedParquetValueConversionIiEELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.ph = phi i64 [ %.promoted18.i.i, %vector.memcheck ], [ %.promoted18.i.i, %.lr.ph.i.i ], [ %i.af, %middle.block ] ; 2 uses
  %.017.i.i.ph = phi i64 [ %4, %vector.memcheck ], [ %4, %.lr.ph.i.i ], [ %i.q, %middle.block ] ; 5 uses
  %.ph28 = phi ptr [ %.promoted.i.i, %vector.memcheck ], [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.s, %middle.block ] ; 3 uses
  %i.ag = add i64 %4, %3                          ; 2 uses
  %i.ah = sub i64 %i.ag, %.017.i.i.ph
  %.neg = add i64 %.017.i.i.ph, 1
  %xtraiter = and i64 %i.ah, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %.0.copyload.i.i.i.i.i.i.prol = load i32, ptr %.ph28, align 1
  %i.ai = add i64 %.ph, -4                        ; 2 uses
  store i64 %i.ai, ptr %i.h, align 8, !tbaa !388
  %i.aj = getelementptr inbounds nuw i8, ptr %.ph28, i64 4 ; 2 uses
  store ptr %i.aj, ptr %1, align 8, !tbaa !385
  %i.ak = trunc i32 %.0.copyload.i.i.i.i.i.i.prol to i16
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %.017.i.i.ph
  store i16 %i.ak, ptr %i.al, align 2, !tbaa !786
  %i.am = add nuw i64 %.017.i.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.ai, %scalar.ph.prol ]
  %.017.i.i.unr = phi i64 [ %.017.i.i.ph, %scalar.ph.preheader ], [ %i.am, %scalar.ph.prol ]
  %.unr30 = phi ptr [ %.ph28, %scalar.ph.preheader ], [ %i.aj, %scalar.ph.prol ]
  %i.an = icmp eq i64 %i.ag, %.neg
  br i1 %i.an, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesIsNS_31TemplatedParquetValueConversionIiEELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ao = phi i64 [ %i.au, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 2 uses
  %.017.i.i = phi i64 [ %i.az, %scalar.ph ], [ %.017.i.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.ap = phi ptr [ %i.av, %scalar.ph ], [ %.unr30, %scalar.ph.prol.loopexit ] ; 3 uses
  %.0.copyload.i.i.i.i.i.i = load i32, ptr %i.ap, align 1
  %i.aq = add i64 %i.ao, -4
  store i64 %i.aq, ptr %i.h, align 8, !tbaa !388
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 4 ; 2 uses
  store ptr %i.ar, ptr %1, align 8, !tbaa !385
  %i.as = trunc i32 %.0.copyload.i.i.i.i.i.i to i16
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %.017.i.i
  store i16 %i.as, ptr %i.at, align 2, !tbaa !786
  %.0.copyload.i.i.i.i.i.i.1 = load i32, ptr %i.ar, align 1
  %i.au = add i64 %i.ao, -8                       ; 2 uses
  store i64 %i.au, ptr %i.h, align 8, !tbaa !388
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  store ptr %i.av, ptr %1, align 8, !tbaa !385
  %i.aw = trunc i32 %.0.copyload.i.i.i.i.i.i.1 to i16
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %.017.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  store i16 %i.aw, ptr %i.ay, align 2, !tbaa !786
  %i.az = add nuw i64 %.017.i.i, 2                ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.az, %i.l
  br i1 %exitcond.not.i.i.1, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesIsNS_31TemplatedParquetValueConversionIiEELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit, label %scalar.ph, !llvm.loop !872

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalIsNS_31TemplatedParquetValueConversionIiEELb0ELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesIsNS_31TemplatedParquetValueConversionIiEELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

_ZN6duckdb12ColumnReader21PlainTemplatedDefinesIsNS_31TemplatedParquetValueConversionIiEELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.e, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader21PlainTemplatedDefinesIsNS_31TemplatedParquetValueConversionIiEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = shl i64 %3, 2
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !388
  %.not = icmp ugt i64 %i.a, %i.c
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !873)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIsEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5), !noalias !873
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !754, !noalias !873
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5), !noalias !873
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.g = add i64 %4, %3                           ; 2 uses
  %i.h = icmp ult i64 %4, %i.g
  br i1 %i.h, label %.lr.ph.i, label %_ZN6duckdb12ColumnReader22PlainTemplatedInternalIsNS_31TemplatedParquetValueConversionIiEELb1ELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 64
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i
  %.014.i = phi i64 [ %4, %.lr.ph.i ], [ %i.ag, %bb.g ] ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %.014.i
  %i.l = load i8, ptr %i.k, align 1, !tbaa !211, !alias.scope !873
  %i.m = zext i8 %i.l to i64
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !275, !noalias !873, !nonnull !193, !align !194
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load i64, ptr %i.o, align 8, !tbaa !381, !noalias !873
  %.not.i = icmp eq i64 %i.p, %i.m
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !463, !noalias !873 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %bb.e, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i

bb.e:                                             ; preds = %bb.d
  %i.r = load i64, ptr %i.j, align 8, !tbaa !470, !noalias !873
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 noundef %i.r), !noalias !873
  %.pre.i.i = load ptr, ptr %i.f, align 8, !tbaa !463, !noalias !873
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i: ; preds = %bb.e, %bb.d
  %i.s = phi ptr [ %.pre.i.i, %bb.e ], [ %i.q, %bb.d ]
  %i.t = lshr i64 %.014.i, 6
  %i.u = and i64 %.014.i, 63
  %i.v = shl nuw i64 1, %i.u
  %i.w = xor i64 %i.v, -1
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.t ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !281, !noalias !873
  %i.z = and i64 %i.y, %i.w
  store i64 %i.z, ptr %i.x, align 8, !tbaa !281, !noalias !873
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr %1, align 8, !tbaa !385, !noalias !873 ; 2 uses
  %.0.copyload.i.i.i.i.i = load i32, ptr %i.aa, align 1, !noalias !873
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !388, !noalias !873
  %i.ac = add i64 %i.ab, -4
  store i64 %i.ac, ptr %i.b, align 8, !tbaa !388, !noalias !873
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  store ptr %i.ad, ptr %1, align 8, !tbaa !385, !noalias !873
  %i.ae = trunc i32 %.0.copyload.i.i.i.i.i to i16
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %.014.i
  store i16 %i.ae, ptr %i.af, align 2, !tbaa !786, !noalias !873
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i
  %i.ag = add i64 %.014.i, 1                      ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ag, %i.g
  br i1 %exitcond.not.i, label %_ZN6duckdb12ColumnReader22PlainTemplatedInternalIsNS_31TemplatedParquetValueConversionIiEELb1ELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit, label %bb.c, !llvm.loop !876

bb.h:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalIsNS_31TemplatedParquetValueConversionIiEELb1ELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader22PlainTemplatedInternalIsNS_31TemplatedParquetValueConversionIiEELb1ELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

_ZN6duckdb12ColumnReader22PlainTemplatedInternalIsNS_31TemplatedParquetValueConversionIiEELb1ELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit: ; preds = %bb.g, %bb.b, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalIsNS_31TemplatedParquetValueConversionIiEELb1ELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noalias noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIsEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !754
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.d = add i64 %4, %3                           ; 2 uses
  %i.e = icmp ult i64 %4, %i.d
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.i, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %.014 = phi i64 [ %4, %.lr.ph ], [ %i.ag, %bb.i ] ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %.014
  %i.j = load i8, ptr %i.i, align 1, !tbaa !211
  %i.k = zext i8 %i.j to i64
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load i64, ptr %i.m, align 8, !tbaa !381
  %.not = icmp eq i64 %i.n, %i.k
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !463  ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %bb.d, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.d:                                             ; preds = %bb.c
  %i.p = load i64, ptr %i.g, align 8, !tbaa !470
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %i.p)
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !463
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.c, %bb.d
  %i.q = phi ptr [ %.pre.i, %bb.d ], [ %i.o, %bb.c ]
  %i.r = lshr i64 %.014, 6
end_hunk_1
begin_hunk_2_@_ZN6duckdb21TemplatedColumnReaderIsNS_31TemplatedParquetValueConversionIlEEED2Ev:bb.a

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
define linkonce_odr hidden void @_ZN6duckdb21TemplatedColumnReaderIsNS_31TemplatedParquetValueConversionIlEEED0Ev(ptr noundef nonnull align 8 dereferenceable(528) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN6duckdb21TemplatedColumnReaderIsNS_31TemplatedParquetValueConversionIlEEEE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !206  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb21TemplatedColumnReaderIsNS_31TemplatedParquetValueConversionIlEEED2Ev.exit, label %bb.b

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
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !1293
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !1293
  br label %_ZN6duckdb21TemplatedColumnReaderIsNS_31TemplatedParquetValueConversionIlEEED2Ev.exit

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
  br i1 %i.q, label %bb.g, label %_ZN6duckdb21TemplatedColumnReaderIsNS_31TemplatedParquetValueConversionIlEEED2Ev.exit, !prof !212

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !1294
  br label %_ZN6duckdb21TemplatedColumnReaderIsNS_31TemplatedParquetValueConversionIlEEED2Ev.exit

_ZN6duckdb21TemplatedColumnReaderIsNS_31TemplatedParquetValueConversionIlEEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  tail call void @_ZN6duckdb12ColumnReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(512) dereferenceable(528) %0) #27, !inline_history !1294
  tail call void @_ZdlPv(ptr noundef nonnull %0) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK6duckdb21TemplatedColumnReaderIsNS_31TemplatedParquetValueConversionIlEEE20SupportsDirectFilterEv(ptr noundef nonnull align 8 dereferenceable(528) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb21TemplatedColumnReaderIsNS_31TemplatedParquetValueConversionIlEEE9PlainSkipERNS_10ByteBufferEPhm(ptr noundef nonnull align 8 dereferenceable(528) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !381
  %i.e = icmp ne i64 %i.d, 0
  %i.f = icmp ne ptr %2, null
  %or.cond.i = and i1 %i.f, %i.e
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_31TemplatedParquetValueConversionIlEELb1EEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3)
  br label %_ZN6duckdb12ColumnReader18PlainSkipTemplatedINS_31TemplatedParquetValueConversionIlEEEEvRNS_10ByteBufferEPKhm.exit

bb.c:                                             ; preds = %bb.a
  %i.g = shl i64 %3, 3                            ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !388  ; 2 uses
  %.not.i.i = icmp ugt i64 %i.g, %i.i
  br i1 %.not.i.i, label %bb.d, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_31TemplatedParquetValueConversionIlEELb0EEEvRNS_10ByteBufferEPKhm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull @.str.39)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #29
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.j) #27
  resume { ptr, i32 } %i.k

_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_31TemplatedParquetValueConversionIlEELb0EEEvRNS_10ByteBufferEPKhm.exit.i: ; preds = %bb.c
  %i.l = sub nuw i64 %i.i, %i.g
  store i64 %i.l, ptr %i.h, align 8, !tbaa !388
  %i.m = load ptr, ptr %1, align 8, !tbaa !385
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.g
  store ptr %i.n, ptr %1, align 8, !tbaa !385
  br label %_ZN6duckdb12ColumnReader18PlainSkipTemplatedINS_31TemplatedParquetValueConversionIlEEEEvRNS_10ByteBufferEPKhm.exit

_ZN6duckdb12ColumnReader18PlainSkipTemplatedINS_31TemplatedParquetValueConversionIlEEEEvRNS_10ByteBufferEPKhm.exit: ; preds = %bb.b, %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_31TemplatedParquetValueConversionIlEELb0EEEvRNS_10ByteBufferEPKhm.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb21TemplatedColumnReaderIsNS_31TemplatedParquetValueConversionIlEEE5PlainERNS_10ByteBufferEPhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(528) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb12ColumnReader14PlainTemplatedIsNS_31TemplatedParquetValueConversionIlEEEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader14PlainTemplatedIsNS_31TemplatedParquetValueConversionIlEEEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) local_unnamed_addr #0 comdat align 2 {
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
  tail call void @_ZN6duckdb12ColumnReader21PlainTemplatedDefinesIsNS_31TemplatedParquetValueConversionIlEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesIsNS_31TemplatedParquetValueConversionIlEELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

bb.c:                                             ; preds = %bb.a
  %i.g = shl i64 %3, 3                            ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !388
  %.not.i = icmp ugt i64 %i.g, %i.i
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIsEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !754  ; 6 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.l = add i64 %4, %3                           ; 2 uses
  %i.m = icmp ult i64 %4, %i.l
  br i1 %i.m, label %.lr.ph.i.i, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesIsNS_31TemplatedParquetValueConversionIlEELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

.lr.ph.i.i:                                       ; preds = %bb.d
  %.promoted.i.i = load ptr, ptr %1, align 8      ; 8 uses
  %.promoted18.i.i = load i64, ptr %i.h, align 8, !tbaa !388 ; 3 uses
  %min.iters.check = icmp ult i64 %3, 32
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %scevgep = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.n = shl i64 %4, 1
  %scevgep14 = getelementptr i8, ptr %i.k, i64 %i.n ; 2 uses
  %i.o = add i64 %4, %3
  %i.p = shl i64 %i.o, 1
  %scevgep15 = getelementptr i8, ptr %i.k, i64 %i.p ; 2 uses
  %scevgep16 = getelementptr i8, ptr %.promoted.i.i, i64 %i.g ; 2 uses
  %bound0 = icmp ult ptr %1, %scevgep15
  %bound1 = icmp ult ptr %scevgep14, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound017 = icmp ult ptr %1, %scevgep16
  %bound118 = icmp ult ptr %.promoted.i.i, %scevgep
  %found.conflict19 = and i1 %bound017, %bound118
  %conflict.rdx = or i1 %found.conflict, %found.conflict19
  %bound020 = icmp ult ptr %scevgep14, %scevgep16
  %bound121 = icmp ult ptr %.promoted.i.i, %scevgep15
  %found.conflict22 = and i1 %bound020, %bound121
  %conflict.rdx23 = or i1 %conflict.rdx, %found.conflict22
  br i1 %conflict.rdx23, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, -4                         ; 4 uses
  %i.q = add i64 %4, %n.vec
  %i.r = shl i64 %n.vec, 3
  %i.s = getelementptr i8, ptr %.promoted.i.i, i64 %i.r
  %i.t = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.promoted18.i.i, i64 0
  %i.u = getelementptr [2 x i8], ptr %i.k, i64 %4
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ %i.t, %vector.ph ], [ %i.y, %vector.body ]
  %vec.phi24 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.z, %vector.body ]
  %i.v = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %.promoted.i.i, i64 %i.v ; 2 uses
  %i.w = getelementptr i8, ptr %.promoted.i.i, i64 %i.v
  %i.x = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 1, !alias.scope !1295
  %wide.load26 = load <2 x i64>, ptr %i.x, align 1, !alias.scope !1295
  %i.y = add <2 x i64> %vec.phi, splat (i64 -8)   ; 2 uses
  %i.z = add <2 x i64> %vec.phi24, splat (i64 -8) ; 2 uses
  %6 = getelementptr i8, ptr %i.w, i64 32
  %i.aa = trunc <2 x i64> %wide.load to <2 x i16>
  %i.ab = trunc <2 x i64> %wide.load26 to <2 x i16>
  %i.ac = getelementptr [2 x i8], ptr %i.u, i64 %index ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store <2 x i16> %i.aa, ptr %i.ac, align 2, !tbaa !786, !alias.scope !1298, !noalias !1295
  store <2 x i16> %i.ab, ptr %i.ad, align 2, !tbaa !786, !alias.scope !1298, !noalias !1295
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !1300

middle.block:                                     ; preds = %vector.body
  store ptr %6, ptr %1, align 8, !tbaa !385, !alias.scope !1301, !noalias !1303
  %bin.rdx = add <2 x i64> %i.z, %i.y
  %i.af = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  store i64 %i.af, ptr %i.h, align 8, !tbaa !388, !alias.scope !1301, !noalias !1303
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesIsNS_31TemplatedParquetValueConversionIlEELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.ph = phi i64 [ %.promoted18.i.i, %vector.memcheck ], [ %.promoted18.i.i, %.lr.ph.i.i ], [ %i.af, %middle.block ] ; 2 uses
  %.017.i.i.ph = phi i64 [ %4, %vector.memcheck ], [ %4, %.lr.ph.i.i ], [ %i.q, %middle.block ] ; 5 uses
  %.ph28 = phi ptr [ %.promoted.i.i, %vector.memcheck ], [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.s, %middle.block ] ; 3 uses
  %i.ag = add i64 %4, %3                          ; 2 uses
  %i.ah = sub i64 %i.ag, %.017.i.i.ph
  %.neg = add i64 %.017.i.i.ph, 1
  %xtraiter = and i64 %i.ah, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %.0.copyload.i.i.i.i.i.i.prol = load i64, ptr %.ph28, align 1
  %i.ai = add i64 %.ph, -8                        ; 2 uses
  store i64 %i.ai, ptr %i.h, align 8, !tbaa !388
  %i.aj = getelementptr inbounds nuw i8, ptr %.ph28, i64 8 ; 2 uses
  store ptr %i.aj, ptr %1, align 8, !tbaa !385
  %i.ak = trunc i64 %.0.copyload.i.i.i.i.i.i.prol to i16
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %.017.i.i.ph
  store i16 %i.ak, ptr %i.al, align 2, !tbaa !786
  %i.am = add nuw i64 %.017.i.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.ai, %scalar.ph.prol ]
  %.017.i.i.unr = phi i64 [ %.017.i.i.ph, %scalar.ph.preheader ], [ %i.am, %scalar.ph.prol ]
  %.unr30 = phi ptr [ %.ph28, %scalar.ph.preheader ], [ %i.aj, %scalar.ph.prol ]
  %i.an = icmp eq i64 %i.ag, %.neg
  br i1 %i.an, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesIsNS_31TemplatedParquetValueConversionIlEELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ao = phi i64 [ %i.au, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 2 uses
  %.017.i.i = phi i64 [ %i.az, %scalar.ph ], [ %.017.i.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.ap = phi ptr [ %i.av, %scalar.ph ], [ %.unr30, %scalar.ph.prol.loopexit ] ; 3 uses
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.ap, align 1
  %i.aq = add i64 %i.ao, -8
  store i64 %i.aq, ptr %i.h, align 8, !tbaa !388
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  store ptr %i.ar, ptr %1, align 8, !tbaa !385
  %i.as = trunc i64 %.0.copyload.i.i.i.i.i.i to i16
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %.017.i.i
  store i16 %i.as, ptr %i.at, align 2, !tbaa !786
  %.0.copyload.i.i.i.i.i.i.1 = load i64, ptr %i.ar, align 1
  %i.au = add i64 %i.ao, -16                      ; 2 uses
  store i64 %i.au, ptr %i.h, align 8, !tbaa !388
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  store ptr %i.av, ptr %1, align 8, !tbaa !385
  %i.aw = trunc i64 %.0.copyload.i.i.i.i.i.i.1 to i16
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %.017.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  store i16 %i.aw, ptr %i.ay, align 2, !tbaa !786
  %i.az = add nuw i64 %.017.i.i, 2                ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.az, %i.l
  br i1 %exitcond.not.i.i.1, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesIsNS_31TemplatedParquetValueConversionIlEELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit, label %scalar.ph, !llvm.loop !1304

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalIsNS_31TemplatedParquetValueConversionIlEELb0ELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesIsNS_31TemplatedParquetValueConversionIlEELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

_ZN6duckdb12ColumnReader21PlainTemplatedDefinesIsNS_31TemplatedParquetValueConversionIlEELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.e, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader21PlainTemplatedDefinesIsNS_31TemplatedParquetValueConversionIlEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = shl i64 %3, 3
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !388
  %.not = icmp ugt i64 %i.a, %i.c
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1305)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIsEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5), !noalias !1305
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !754, !noalias !1305
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5), !noalias !1305
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.g = add i64 %4, %3                           ; 2 uses
  %i.h = icmp ult i64 %4, %i.g
  br i1 %i.h, label %.lr.ph.i, label %_ZN6duckdb12ColumnReader22PlainTemplatedInternalIsNS_31TemplatedParquetValueConversionIlEELb1ELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 64
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i
  %.014.i = phi i64 [ %4, %.lr.ph.i ], [ %i.ag, %bb.g ] ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %.014.i
  %i.l = load i8, ptr %i.k, align 1, !tbaa !211, !alias.scope !1305
  %i.m = zext i8 %i.l to i64
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !275, !noalias !1305, !nonnull !193, !align !194
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load i64, ptr %i.o, align 8, !tbaa !381, !noalias !1305
  %.not.i = icmp eq i64 %i.p, %i.m
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !463, !noalias !1305 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %bb.e, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i

bb.e:                                             ; preds = %bb.d
  %i.r = load i64, ptr %i.j, align 8, !tbaa !470, !noalias !1305
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 noundef %i.r), !noalias !1305
  %.pre.i.i = load ptr, ptr %i.f, align 8, !tbaa !463, !noalias !1305
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i: ; preds = %bb.e, %bb.d
  %i.s = phi ptr [ %.pre.i.i, %bb.e ], [ %i.q, %bb.d ]
  %i.t = lshr i64 %.014.i, 6
  %i.u = and i64 %.014.i, 63
  %i.v = shl nuw i64 1, %i.u
  %i.w = xor i64 %i.v, -1
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.t ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !281, !noalias !1305
  %i.z = and i64 %i.y, %i.w
  store i64 %i.z, ptr %i.x, align 8, !tbaa !281, !noalias !1305
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr %1, align 8, !tbaa !385, !noalias !1305 ; 2 uses
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.aa, align 1, !noalias !1305
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !388, !noalias !1305
  %i.ac = add i64 %i.ab, -8
  store i64 %i.ac, ptr %i.b, align 8, !tbaa !388, !noalias !1305
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.ad, ptr %1, align 8, !tbaa !385, !noalias !1305
  %i.ae = trunc i64 %.0.copyload.i.i.i.i.i to i16
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %.014.i
  store i16 %i.ae, ptr %i.af, align 2, !tbaa !786, !noalias !1305
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i
  %i.ag = add i64 %.014.i, 1                      ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ag, %i.g
  br i1 %exitcond.not.i, label %_ZN6duckdb12ColumnReader22PlainTemplatedInternalIsNS_31TemplatedParquetValueConversionIlEELb1ELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit, label %bb.c, !llvm.loop !1308

bb.h:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalIsNS_31TemplatedParquetValueConversionIlEELb1ELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader22PlainTemplatedInternalIsNS_31TemplatedParquetValueConversionIlEELb1ELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

_ZN6duckdb12ColumnReader22PlainTemplatedInternalIsNS_31TemplatedParquetValueConversionIlEELb1ELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit: ; preds = %bb.g, %bb.b, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalIsNS_31TemplatedParquetValueConversionIlEELb1ELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noalias noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIsEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !754
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.d = add i64 %4, %3                           ; 2 uses
  %i.e = icmp ult i64 %4, %i.d
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.i, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %.014 = phi i64 [ %4, %.lr.ph ], [ %i.ag, %bb.i ] ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %.014
  %i.j = load i8, ptr %i.i, align 1, !tbaa !211
  %i.k = zext i8 %i.j to i64
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load i64, ptr %i.m, align 8, !tbaa !381
  %.not = icmp eq i64 %i.n, %i.k
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !463  ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %bb.d, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.d:                                             ; preds = %bb.c
  %i.p = load i64, ptr %i.g, align 8, !tbaa !470
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %i.p)
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !463
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.c, %bb.d
  %i.q = phi ptr [ %.pre.i, %bb.d ], [ %i.o, %bb.c ]
  %i.r = lshr i64 %.014, 6
end_hunk_2
begin_hunk_3_@_ZN6duckdb21TemplatedColumnReaderIiNS_31TemplatedParquetValueConversionIlEEED2Ev:bb.a
_ZN6duckdb10shared_ptrINS_16ResizeableBufferELb1EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  tail call void @_ZN6duckdb12ColumnReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(512) dereferenceable(512) %0) #27
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6duckdb21TemplatedColumnReaderIiNS_31TemplatedParquetValueConversionIlEEED0Ev(ptr noundef nonnull align 8 dereferenceable(528) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN6duckdb21TemplatedColumnReaderIiNS_31TemplatedParquetValueConversionIlEEEE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !206  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb21TemplatedColumnReaderIiNS_31TemplatedParquetValueConversionIlEEED2Ev.exit, label %bb.b

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
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !1311
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !1311
  br label %_ZN6duckdb21TemplatedColumnReaderIiNS_31TemplatedParquetValueConversionIlEEED2Ev.exit

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
  br i1 %i.q, label %bb.g, label %_ZN6duckdb21TemplatedColumnReaderIiNS_31TemplatedParquetValueConversionIlEEED2Ev.exit, !prof !212

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !1312
  br label %_ZN6duckdb21TemplatedColumnReaderIiNS_31TemplatedParquetValueConversionIlEEED2Ev.exit

_ZN6duckdb21TemplatedColumnReaderIiNS_31TemplatedParquetValueConversionIlEEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  tail call void @_ZN6duckdb12ColumnReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(512) dereferenceable(528) %0) #27, !inline_history !1312
  tail call void @_ZdlPv(ptr noundef nonnull %0) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK6duckdb21TemplatedColumnReaderIiNS_31TemplatedParquetValueConversionIlEEE20SupportsDirectFilterEv(ptr noundef nonnull align 8 dereferenceable(528) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb21TemplatedColumnReaderIiNS_31TemplatedParquetValueConversionIlEEE9PlainSkipERNS_10ByteBufferEPhm(ptr noundef nonnull align 8 dereferenceable(528) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !381
  %i.e = icmp ne i64 %i.d, 0
  %i.f = icmp ne ptr %2, null
  %or.cond.i = and i1 %i.f, %i.e
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_31TemplatedParquetValueConversionIlEELb1EEEvRNS_10ByteBufferEPKhm(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3)
  br label %_ZN6duckdb12ColumnReader18PlainSkipTemplatedINS_31TemplatedParquetValueConversionIlEEEEvRNS_10ByteBufferEPKhm.exit

bb.c:                                             ; preds = %bb.a
  %i.g = shl i64 %3, 3                            ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !388  ; 2 uses
  %.not.i.i = icmp ugt i64 %i.g, %i.i
  br i1 %.not.i.i, label %bb.d, label %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_31TemplatedParquetValueConversionIlEELb0EEEvRNS_10ByteBufferEPKhm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull @.str.39)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #29
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.j) #27
  resume { ptr, i32 } %i.k

_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_31TemplatedParquetValueConversionIlEELb0EEEvRNS_10ByteBufferEPKhm.exit.i: ; preds = %bb.c
  %i.l = sub nuw i64 %i.i, %i.g
  store i64 %i.l, ptr %i.h, align 8, !tbaa !388
  %i.m = load ptr, ptr %1, align 8, !tbaa !385
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.g
  store ptr %i.n, ptr %1, align 8, !tbaa !385
  br label %_ZN6duckdb12ColumnReader18PlainSkipTemplatedINS_31TemplatedParquetValueConversionIlEEEEvRNS_10ByteBufferEPKhm.exit

_ZN6duckdb12ColumnReader18PlainSkipTemplatedINS_31TemplatedParquetValueConversionIlEEEEvRNS_10ByteBufferEPKhm.exit: ; preds = %bb.b, %_ZN6duckdb12ColumnReader25PlainSkipTemplatedDefinesINS_31TemplatedParquetValueConversionIlEELb0EEEvRNS_10ByteBufferEPKhm.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb21TemplatedColumnReaderIiNS_31TemplatedParquetValueConversionIlEEE5PlainERNS_10ByteBufferEPhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(528) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb12ColumnReader14PlainTemplatedIiNS_31TemplatedParquetValueConversionIlEEEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader14PlainTemplatedIiNS_31TemplatedParquetValueConversionIlEEEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) local_unnamed_addr #0 comdat align 2 {
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
  tail call void @_ZN6duckdb12ColumnReader21PlainTemplatedDefinesIiNS_31TemplatedParquetValueConversionIlEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesIiNS_31TemplatedParquetValueConversionIlEELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

bb.c:                                             ; preds = %bb.a
  %i.g = shl i64 %3, 3                            ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !388
  %.not.i = icmp ugt i64 %i.g, %i.i
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIiEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !754  ; 6 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.l = add i64 %4, %3                           ; 2 uses
  %i.m = icmp ult i64 %4, %i.l
  br i1 %i.m, label %.lr.ph.i.i, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesIiNS_31TemplatedParquetValueConversionIlEELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

.lr.ph.i.i:                                       ; preds = %bb.d
  %.promoted.i.i = load ptr, ptr %1, align 8      ; 8 uses
  %.promoted18.i.i = load i64, ptr %i.h, align 8, !tbaa !388 ; 3 uses
  %min.iters.check = icmp ult i64 %3, 20
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %scevgep = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.n = shl i64 %4, 2
  %scevgep14 = getelementptr i8, ptr %i.k, i64 %i.n ; 2 uses
  %i.o = add i64 %4, %3
  %i.p = shl i64 %i.o, 2
  %scevgep15 = getelementptr i8, ptr %i.k, i64 %i.p ; 2 uses
  %scevgep16 = getelementptr i8, ptr %.promoted.i.i, i64 %i.g ; 2 uses
  %bound0 = icmp ult ptr %1, %scevgep15
  %bound1 = icmp ult ptr %scevgep14, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound017 = icmp ult ptr %1, %scevgep16
  %bound118 = icmp ult ptr %.promoted.i.i, %scevgep
  %found.conflict19 = and i1 %bound017, %bound118
  %conflict.rdx = or i1 %found.conflict, %found.conflict19
  %bound020 = icmp ult ptr %scevgep14, %scevgep16
  %bound121 = icmp ult ptr %.promoted.i.i, %scevgep15
  %found.conflict22 = and i1 %bound020, %bound121
  %conflict.rdx23 = or i1 %conflict.rdx, %found.conflict22
  br i1 %conflict.rdx23, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, -4                         ; 4 uses
  %i.q = add i64 %4, %n.vec
  %i.r = shl i64 %n.vec, 3
  %i.s = getelementptr i8, ptr %.promoted.i.i, i64 %i.r
  %i.t = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.promoted18.i.i, i64 0
  %i.u = getelementptr [4 x i8], ptr %i.k, i64 %4
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ %i.t, %vector.ph ], [ %i.y, %vector.body ]
  %vec.phi24 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.z, %vector.body ]
  %i.v = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %.promoted.i.i, i64 %i.v ; 2 uses
  %i.w = getelementptr i8, ptr %.promoted.i.i, i64 %i.v
  %i.x = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 1, !alias.scope !1313
  %wide.load26 = load <2 x i64>, ptr %i.x, align 1, !alias.scope !1313
  %i.y = add <2 x i64> %vec.phi, splat (i64 -8)   ; 2 uses
  %i.z = add <2 x i64> %vec.phi24, splat (i64 -8) ; 2 uses
  %6 = getelementptr i8, ptr %i.w, i64 32
  %i.aa = trunc <2 x i64> %wide.load to <2 x i32>
  %i.ab = trunc <2 x i64> %wide.load26 to <2 x i32>
  %i.ac = getelementptr [4 x i8], ptr %i.u, i64 %index ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store <2 x i32> %i.aa, ptr %i.ac, align 4, !tbaa !3, !alias.scope !1316, !noalias !1313
  store <2 x i32> %i.ab, ptr %i.ad, align 4, !tbaa !3, !alias.scope !1316, !noalias !1313
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !1318

middle.block:                                     ; preds = %vector.body
  store ptr %6, ptr %1, align 8, !tbaa !385, !alias.scope !1319, !noalias !1321
  %bin.rdx = add <2 x i64> %i.z, %i.y
  %i.af = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  store i64 %i.af, ptr %i.h, align 8, !tbaa !388, !alias.scope !1319, !noalias !1321
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesIiNS_31TemplatedParquetValueConversionIlEELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.ph = phi i64 [ %.promoted18.i.i, %vector.memcheck ], [ %.promoted18.i.i, %.lr.ph.i.i ], [ %i.af, %middle.block ] ; 2 uses
  %.017.i.i.ph = phi i64 [ %4, %vector.memcheck ], [ %4, %.lr.ph.i.i ], [ %i.q, %middle.block ] ; 5 uses
  %.ph28 = phi ptr [ %.promoted.i.i, %vector.memcheck ], [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.s, %middle.block ] ; 3 uses
  %i.ag = add i64 %4, %3                          ; 2 uses
  %i.ah = sub i64 %i.ag, %.017.i.i.ph
  %.neg = add i64 %.017.i.i.ph, 1
  %xtraiter = and i64 %i.ah, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %.0.copyload.i.i.i.i.i.i.prol = load i64, ptr %.ph28, align 1
  %i.ai = add i64 %.ph, -8                        ; 2 uses
  store i64 %i.ai, ptr %i.h, align 8, !tbaa !388
  %i.aj = getelementptr inbounds nuw i8, ptr %.ph28, i64 8 ; 2 uses
  store ptr %i.aj, ptr %1, align 8, !tbaa !385
  %i.ak = trunc i64 %.0.copyload.i.i.i.i.i.i.prol to i32
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.017.i.i.ph
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !3
  %i.am = add nuw i64 %.017.i.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.ai, %scalar.ph.prol ]
  %.017.i.i.unr = phi i64 [ %.017.i.i.ph, %scalar.ph.preheader ], [ %i.am, %scalar.ph.prol ]
  %.unr30 = phi ptr [ %.ph28, %scalar.ph.preheader ], [ %i.aj, %scalar.ph.prol ]
  %i.an = icmp eq i64 %i.ag, %.neg
  br i1 %i.an, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesIiNS_31TemplatedParquetValueConversionIlEELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ao = phi i64 [ %i.au, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 2 uses
  %.017.i.i = phi i64 [ %i.az, %scalar.ph ], [ %.017.i.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.ap = phi ptr [ %i.av, %scalar.ph ], [ %.unr30, %scalar.ph.prol.loopexit ] ; 3 uses
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.ap, align 1
  %i.aq = add i64 %i.ao, -8
  store i64 %i.aq, ptr %i.h, align 8, !tbaa !388
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  store ptr %i.ar, ptr %1, align 8, !tbaa !385
  %i.as = trunc i64 %.0.copyload.i.i.i.i.i.i to i32
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.017.i.i
  store i32 %i.as, ptr %i.at, align 4, !tbaa !3
  %.0.copyload.i.i.i.i.i.i.1 = load i64, ptr %i.ar, align 1
  %i.au = add i64 %i.ao, -16                      ; 2 uses
  store i64 %i.au, ptr %i.h, align 8, !tbaa !388
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  store ptr %i.av, ptr %1, align 8, !tbaa !385
  %i.aw = trunc i64 %.0.copyload.i.i.i.i.i.i.1 to i32
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.017.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  store i32 %i.aw, ptr %i.ay, align 4, !tbaa !3
  %i.az = add nuw i64 %.017.i.i, 2                ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.az, %i.l
  br i1 %exitcond.not.i.i.1, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesIiNS_31TemplatedParquetValueConversionIlEELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit, label %scalar.ph, !llvm.loop !1322

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalIiNS_31TemplatedParquetValueConversionIlEELb0ELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesIiNS_31TemplatedParquetValueConversionIlEELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

_ZN6duckdb12ColumnReader21PlainTemplatedDefinesIiNS_31TemplatedParquetValueConversionIlEELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.e, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader21PlainTemplatedDefinesIiNS_31TemplatedParquetValueConversionIlEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = shl i64 %3, 3
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !388
  %.not = icmp ugt i64 %i.a, %i.c
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1323)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIiEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5), !noalias !1323
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !754, !noalias !1323
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5), !noalias !1323
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.g = add i64 %4, %3                           ; 2 uses
  %i.h = icmp ult i64 %4, %i.g
  br i1 %i.h, label %.lr.ph.i, label %_ZN6duckdb12ColumnReader22PlainTemplatedInternalIiNS_31TemplatedParquetValueConversionIlEELb1ELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 64
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i
  %.014.i = phi i64 [ %4, %.lr.ph.i ], [ %i.ag, %bb.g ] ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %.014.i
  %i.l = load i8, ptr %i.k, align 1, !tbaa !211, !alias.scope !1323
  %i.m = zext i8 %i.l to i64
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !275, !noalias !1323, !nonnull !193, !align !194
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load i64, ptr %i.o, align 8, !tbaa !381, !noalias !1323
  %.not.i = icmp eq i64 %i.p, %i.m
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !463, !noalias !1323 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %bb.e, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i

bb.e:                                             ; preds = %bb.d
  %i.r = load i64, ptr %i.j, align 8, !tbaa !470, !noalias !1323
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 noundef %i.r), !noalias !1323
  %.pre.i.i = load ptr, ptr %i.f, align 8, !tbaa !463, !noalias !1323
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i: ; preds = %bb.e, %bb.d
  %i.s = phi ptr [ %.pre.i.i, %bb.e ], [ %i.q, %bb.d ]
  %i.t = lshr i64 %.014.i, 6
  %i.u = and i64 %.014.i, 63
  %i.v = shl nuw i64 1, %i.u
  %i.w = xor i64 %i.v, -1
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.t ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !281, !noalias !1323
  %i.z = and i64 %i.y, %i.w
  store i64 %i.z, ptr %i.x, align 8, !tbaa !281, !noalias !1323
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr %1, align 8, !tbaa !385, !noalias !1323 ; 2 uses
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.aa, align 1, !noalias !1323
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !388, !noalias !1323
  %i.ac = add i64 %i.ab, -8
  store i64 %i.ac, ptr %i.b, align 8, !tbaa !388, !noalias !1323
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.ad, ptr %1, align 8, !tbaa !385, !noalias !1323
  %i.ae = trunc i64 %.0.copyload.i.i.i.i.i to i32
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.014.i
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !3, !noalias !1323
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i
  %i.ag = add i64 %.014.i, 1                      ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ag, %i.g
  br i1 %exitcond.not.i, label %_ZN6duckdb12ColumnReader22PlainTemplatedInternalIiNS_31TemplatedParquetValueConversionIlEELb1ELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit, label %bb.c, !llvm.loop !1326

bb.h:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalIiNS_31TemplatedParquetValueConversionIlEELb1ELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  br label %_ZN6duckdb12ColumnReader22PlainTemplatedInternalIiNS_31TemplatedParquetValueConversionIlEELb1ELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

_ZN6duckdb12ColumnReader22PlainTemplatedInternalIiNS_31TemplatedParquetValueConversionIlEELb1ELb0EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit: ; preds = %bb.g, %bb.b, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalIiNS_31TemplatedParquetValueConversionIlEELb1ELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noalias noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIiEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !754
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.d = add i64 %4, %3                           ; 2 uses
  %i.e = icmp ult i64 %4, %i.d
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.i, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %.014 = phi i64 [ %4, %.lr.ph ], [ %i.ag, %bb.i ] ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %.014
  %i.j = load i8, ptr %i.i, align 1, !tbaa !211
  %i.k = zext i8 %i.j to i64
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !275, !nonnull !193, !align !194
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load i64, ptr %i.m, align 8, !tbaa !381
  %.not = icmp eq i64 %i.n, %i.k
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !463  ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %bb.d, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.d:                                             ; preds = %bb.c
  %i.p = load i64, ptr %i.g, align 8, !tbaa !470
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %i.p)
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !463
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.c, %bb.d
  %i.q = phi ptr [ %.pre.i, %bb.d ], [ %i.o, %bb.c ]
  %i.r = lshr i64 %.014, 6
end_hunk_3
