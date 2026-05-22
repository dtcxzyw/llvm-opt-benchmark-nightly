inline.NumInlined: 2492
inline.NumDeleted: 282
begin_hunk_0_@_ZNK2v88internal11interpreter20BytecodeArrayBuilder15RegisterIsValidENS1_8RegisterE:bb.a
  %i.c = sub nuw nsw i32 -9, %1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.e = load i16, ptr %i.d, align 8
  %i.f = zext i16 %i.e to i32
  %i.g = icmp samesign ult i32 %i.c, %i.f
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.i = load i32, ptr %i.h, align 4
  %i.j = icmp slt i32 %1, %i.i
  br i1 %i.j, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.l = load i32, ptr %i.k, align 8
  %i.m = icmp slt i32 %1, %i.l
  br label %bb.g

.fold.split:                                      ; preds = %bb.a, %bb.a
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %.fold.split, %bb.e, %bb.c, %bb.d, %bb.f
  %.0 = phi i1 [ false, %bb.a ], [ true, %bb.e ], [ %i.g, %bb.d ], [ %i.m, %bb.f ], [ true, %.fold.split ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal11interpreter20BytecodeArrayBuilder19RegisterListIsValidENS1_12RegisterListE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(480) %0, i64 %1) local_unnamed_addr #7 align 2 {
bb.a:
  %.sroa.012.0.extract.trunc = trunc i64 %1 to i32
  %.sroa.3.0.extract.shift = lshr i64 %1, 32
  %.sroa.3.0.extract.trunc = trunc nuw i64 %.sroa.3.0.extract.shift to i32 ; 2 uses
  %.not.not23 = icmp sgt i32 %.sroa.3.0.extract.trunc, 0
  br i1 %.not.not23, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.b = load i32, ptr %i.a, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.d = load i32, ptr %i.c, align 8
  %.fr = freeze i32 %i.d
  %invariant.smax = tail call i32 @llvm.smax.i32(i32 %i.b, i32 %.fr)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.f = load i16, ptr %i.e, align 8
  %i.g = zext i16 %i.f to i32
  %invariant.op = sub nuw nsw i32 -9, %i.g
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNK2v88internal11interpreter20BytecodeArrayBuilder15RegisterIsValidENS1_8RegisterE.exit.thread
  %.0624 = phi i32 [ 0, %.lr.ph ], [ %i.l, %_ZNK2v88internal11interpreter20BytecodeArrayBuilder15RegisterIsValidENS1_8RegisterE.exit.thread ] ; 2 uses
  %i.h = add nsw i32 %.0624, %.sroa.012.0.extract.trunc ; 5 uses
  switch i32 %i.h, label %bb.c [
    i32 2147483647, label %.critedge
    i32 -6, label %_ZNK2v88internal11interpreter20BytecodeArrayBuilder15RegisterIsValidENS1_8RegisterE.exit.thread
    i32 -5, label %_ZNK2v88internal11interpreter20BytecodeArrayBuilder15RegisterIsValidENS1_8RegisterE.exit.thread
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = icmp samesign ult i32 %i.h, -8
  %i.k = icmp samesign ugt i32 %i.h, %invariant.op
  %or.cond34 = select i1 %i.j, i1 %i.k, i1 false
  br i1 %or.cond34, label %_ZNK2v88internal11interpreter20BytecodeArrayBuilder15RegisterIsValidENS1_8RegisterE.exit.thread, label %.critedge

bb.e:                                             ; preds = %bb.c
  %or.cond = icmp slt i32 %i.h, %invariant.smax
  br i1 %or.cond, label %_ZNK2v88internal11interpreter20BytecodeArrayBuilder15RegisterIsValidENS1_8RegisterE.exit.thread, label %.critedge

_ZNK2v88internal11interpreter20BytecodeArrayBuilder15RegisterIsValidENS1_8RegisterE.exit.thread: ; preds = %bb.d, %bb.b, %bb.b, %bb.e
  %i.l = add nuw nsw i32 %.0624, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.l, %.sroa.3.0.extract.trunc
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !1109

.critedge:                                        ; preds = %_ZNK2v88internal11interpreter20BytecodeArrayBuilder15RegisterIsValidENS1_8RegisterE.exit.thread, %bb.b, %bb.d, %bb.e, %bb.a
  %.2 = phi i1 [ true, %bb.a ], [ false, %bb.b ], [ false, %bb.e ], [ true, %_ZNK2v88internal11interpreter20BytecodeArrayBuilder15RegisterIsValidENS1_8RegisterE.exit.thread ], [ false, %bb.d ]
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 -2147483648, 2147483642) i32 @_ZN2v88internal11interpreter20BytecodeArrayBuilder23GetInputRegisterOperandENS1_8RegisterE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(480) %0, i32 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @_ZN2v88internal11interpreter25BytecodeRegisterOptimizer16GetInputRegisterENS1_8RegisterE(ptr noundef nonnull align 8 dereferenceable(200) %i.b, i32 %1) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0 = phi i32 [ %1, %bb.a ], [ %i.c, %bb.b ]
  %i.d = sub nsw i32 -7, %.sroa.0.0
  ret i32 %i.d
}

declare i32 @_ZN2v88internal11interpreter25BytecodeRegisterOptimizer16GetInputRegisterENS1_8RegisterE(ptr noundef nonnull align 8 dereferenceable(200), i32) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 -2147483648, 2147483642) i32 @_ZN2v88internal11interpreter20BytecodeArrayBuilder24GetOutputRegisterOperandENS1_8RegisterE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(480) %0, i32 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal11interpreter25BytecodeRegisterOptimizer21PrepareOutputRegisterENS1_8RegisterE(ptr noundef nonnull align 8 dereferenceable(200) %i.b, i32 %1) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = sub nsw i32 -7, %1
  ret i32 %i.c
}

declare void @_ZN2v88internal11interpreter25BytecodeRegisterOptimizer21PrepareOutputRegisterENS1_8RegisterE(ptr noundef nonnull align 8 dereferenceable(200), i32) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 -2147483648, 2147483642) i32 @_ZN2v88internal11interpreter20BytecodeArrayBuilder29GetInputOutputRegisterOperandENS1_8RegisterE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(480) %0, i32 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal11interpreter25BytecodeRegisterOptimizer21PrepareOutputRegisterENS1_8RegisterE(ptr noundef nonnull align 8 dereferenceable(200) %i.b, i32 %1) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = sub nsw i32 -7, %1
  ret i32 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 -2147483648, 2147483642) i32 @_ZN2v88internal11interpreter20BytecodeArrayBuilder27GetInputRegisterListOperandENS1_12RegisterListE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(480) %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @_ZN2v88internal11interpreter25BytecodeRegisterOptimizer20GetInputRegisterListENS1_12RegisterListE(ptr noundef nonnull align 8 dereferenceable(200) %i.b, i64 %1) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.02.0.in = phi i64 [ %1, %bb.a ], [ %i.c, %bb.b ]
  %spec.select.i6 = tail call i64 @llvm.umax.i64(i64 %.sroa.02.0.in, i64 4294967296)
  %spec.select.i = trunc i64 %spec.select.i6 to i32
  %i.d = sub nsw i32 -7, %spec.select.i
  ret i32 %i.d
}

declare i64 @_ZN2v88internal11interpreter25BytecodeRegisterOptimizer20GetInputRegisterListENS1_12RegisterListE(ptr noundef nonnull align 8 dereferenceable(200), i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 -2147483648, 2147483642) i32 @_ZN2v88internal11interpreter20BytecodeArrayBuilder28GetOutputRegisterListOperandENS1_12RegisterListE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(480) %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal11interpreter25BytecodeRegisterOptimizer25PrepareOutputRegisterListENS1_12RegisterListE(ptr noundef nonnull align 8 dereferenceable(200) %i.b, i64 %1) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %spec.select.i2 = tail call i64 @llvm.umax.i64(i64 %1, i64 4294967296)
  %spec.select.i = trunc i64 %spec.select.i2 to i32
  %i.c = sub nsw i32 -7, %spec.select.i
  ret i32 %i.c
}

declare void @_ZN2v88internal11interpreter25BytecodeRegisterOptimizer25PrepareOutputRegisterListENS1_12RegisterListE(ptr noundef nonnull align 8 dereferenceable(200), i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11interpreter20BytecodeArrayBuilder31EmitFunctionStartSourcePositionEi(ptr noundef nonnull align 8 dereferenceable(480) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  tail call void @_ZN2v88internal11interpreter19BytecodeArrayWriter30SetFunctionEntrySourcePositionEi(ptr noundef nonnull align 8 dereferenceable(144) %i.a, i32 noundef %1) #11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 456
  store i8 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 460
  store i32 %1, ptr %i.c, align 4
  ret void
}

declare void @_ZN2v88internal11interpreter19BytecodeArrayWriter30SetFunctionEntrySourcePositionEi(ptr noundef nonnull align 8 dereferenceable(144), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal11interpreterlsERSoRKNS1_20BytecodeArrayBuilder13ToBooleanModeE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %1, align 4
  switch i32 %i.a, label %bb.c [
    i32 1, label %bb.d
    i32 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #12
  unreachable

bb.d:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ 16, %bb.b ], [ 14, %bb.a ]
  %.str.2.sink = phi ptr [ @.str.2, %bb.b ], [ @.str.1, %bb.a ]
  %2 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %.str.2.sink, i64 noundef %.sink) #11 ; 0 uses
  ret ptr %0
}

declare void @_ZN2v88internal11interpreter25BytecodeRegisterOptimizer16RegisterTransferEPNS2_12RegisterInfoES4_(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN2v88internal11interpreter25BytecodeRegisterOptimizer11MaterializeEPNS2_12RegisterInfoE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal11interpreter25BytecodeRegisterOptimizer14BytecodeWriterD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal11interpreter22RegisterTransferWriterD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #12
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal11interpreter22RegisterTransferWriter8EmitLdarENS1_8RegisterE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::interpreter::BytecodeNode", align 4 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = sub nsw i32 -7, %1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.d = add i32 %1, 134
  %or.cond.i.i = icmp ult i32 %i.d, 256
  %i.e = add i32 %1, 32774
  %or.cond3.i.i = icmp ult i32 %i.e, 65536
  %..i.i = select i1 %or.cond3.i.i, i8 2, i8 4
  %.0.i.i = select i1 %or.cond.i.i, i8 1, i8 %..i.i
  store i8 11, ptr %2, align 4, !alias.scope !1111
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 1, ptr %i.f, align 4, !alias.scope !1111
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i8 %.0.i.i, ptr %i.g, align 4, !alias.scope !1111
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  store i64 -4294967296, ptr %i.h, align 4, !alias.scope !1111
  %.sroa.29.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  store i8 1, ptr %.sroa.29.0..sroa_idx.i.i.i, align 4, !alias.scope !1111
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.c, ptr %i.i, align 4, !alias.scope !1111
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 468 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  %i.l = load i8, ptr %i.k, align 4
  %.not.i.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i.i, label %_ZN2v88internal11interpreter20BytecodeArrayBuilder13OutputLdarRawENS1_8RegisterE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.28.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 476
  %.sroa.28.0.copyload.i.i.i = load i8, ptr %.sroa.28.0..sroa_idx.i.i.i, align 4
  %.sroa.07.0.copyload.i.i.i = load i64, ptr %i.k, align 4
  store i64 %.sroa.07.0.copyload.i.i.i, ptr %i.h, align 4
  store i8 %.sroa.28.0.copyload.i.i.i, ptr %.sroa.29.0..sroa_idx.i.i.i, align 4
  store i8 0, ptr %i.k, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 472
  store i32 -1, ptr %i.m, align 4
  br label %_ZN2v88internal11interpreter20BytecodeArrayBuilder13OutputLdarRawENS1_8RegisterE.exit

_ZN2v88internal11interpreter20BytecodeArrayBuilder13OutputLdarRawENS1_8RegisterE.exit: ; preds = %bb.a, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 304
  call void @_ZN2v88internal11interpreter19BytecodeArrayWriter5WriteEPNS1_12BytecodeNodeE(ptr noundef nonnull align 8 dereferenceable(144) %i.n, ptr noundef nonnull %2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal11interpreter22RegisterTransferWriter8EmitStarENS1_8RegisterE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::interpreter::BytecodeNode", align 4 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %or.cond.i.i = icmp ugt i32 %1, 15
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  br i1 %or.cond.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = trunc nuw nsw i32 %1 to i8
  %i.d = sub nuw nsw i8 -46, %i.c
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = sub nsw i32 -7, %1
  %i.f = add i32 %1, 134
  %or.cond.i4.i = icmp ult i32 %i.f, 256
  %i.g = add i32 %1, 32774
  %or.cond3.i.i = icmp ult i32 %i.g, 65536
  %..i.i = select i1 %or.cond3.i.i, i8 2, i8 4
  %.0.i.i = select i1 %or.cond.i4.i, i8 1, i8 %..i.i
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.e, ptr %i.h, align 4, !alias.scope !1114
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink2 = phi i8 [ 26, %bb.c ], [ %i.d, %bb.b ]
  %.sink = phi i32 [ 1, %bb.c ], [ 0, %bb.b ]
  %.sink.i = phi i8 [ %.0.i.i, %bb.c ], [ 1, %bb.b ]
  store i8 %.sink2, ptr %2, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %.sink, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i8 %.sink.i, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  store i64 -4294967296, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  store i8 1, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 468 ; 3 uses
  %i.o = load i8, ptr %i.n, align 4
  %.not.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i, label %_ZN2v88internal11interpreter20BytecodeArrayBuilder13OutputStarRawENS1_8RegisterE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.28.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 476
  %.sroa.28.0.copyload.i.i.i = load i8, ptr %.sroa.28.0..sroa_idx.i.i.i, align 4
  %.sroa.07.0.copyload.i.i.i = load i64, ptr %i.n, align 4
  store i64 %.sroa.07.0.copyload.i.i.i, ptr %i.l, align 4
  store i8 %.sroa.28.0.copyload.i.i.i, ptr %i.m, align 4
  store i8 0, ptr %i.n, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 472
  store i32 -1, ptr %i.p, align 4
  br label %_ZN2v88internal11interpreter20BytecodeArrayBuilder13OutputStarRawENS1_8RegisterE.exit

_ZN2v88internal11interpreter20BytecodeArrayBuilder13OutputStarRawENS1_8RegisterE.exit: ; preds = %bb.d, %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 304
  call void @_ZN2v88internal11interpreter19BytecodeArrayWriter5WriteEPNS1_12BytecodeNodeE(ptr noundef nonnull align 8 dereferenceable(144) %i.q, ptr noundef nonnull %2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal11interpreter22RegisterTransferWriter7EmitMovENS1_8RegisterES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 %1, i32 %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::interpreter::BytecodeNode", align 4 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = sub nsw i32 -7, %1
  %i.d = sub nsw i32 -7, %2
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.e = add i32 %1, 134
  %or.cond.i.i = icmp ult i32 %i.e, 256
  %i.f = add i32 %1, 32774
  %or.cond3.i.i = icmp ult i32 %i.f, 65536
  %i.g = add i32 %2, 134
  %or.cond.i3.i = icmp ult i32 %i.g, 256
  %i.h = add i32 %2, 32774
  %or.cond3.i4.i = icmp ult i32 %i.h, 65536
  %..i5.i = select i1 %or.cond3.i4.i, i8 2, i8 4
  %.0.i6.i = select i1 %or.cond.i3.i, i8 1, i8 %..i5.i ; 2 uses
  %i.i = tail call i8 @llvm.umax.i8(i8 %.0.i6.i, i8 2)
  %i.j = select i1 %or.cond3.i.i, i8 %i.i, i8 4
  %.sroa.speculated.i = select i1 %or.cond.i.i, i8 %.0.i6.i, i8 %i.j
  store i8 27, ptr %3, align 4, !alias.scope !1117
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i8 %.sroa.speculated.i, ptr %i.k, align 4, !alias.scope !1117
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store i64 -4294967296, ptr %i.l, align 4, !alias.scope !1117
  %.sroa.29.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  store i8 1, ptr %.sroa.29.0..sroa_idx.i.i.i, align 4, !alias.scope !1117
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.c, ptr %i.m, align 4, !alias.scope !1117
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.d, ptr %i.n, align 4, !alias.scope !1117
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 12
  store <4 x i32> <i32 0, i32 0, i32 0, i32 2>, ptr %i.o, align 4, !alias.scope !1117
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 468 ; 3 uses
  %i.q = load i8, ptr %i.p, align 4
  %.not.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i, label %_ZN2v88internal11interpreter20BytecodeArrayBuilder12OutputMovRawENS1_8RegisterES3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.28.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 476
  %.sroa.28.0.copyload.i.i.i = load i8, ptr %.sroa.28.0..sroa_idx.i.i.i, align 4
  %.sroa.07.0.copyload.i.i.i = load i64, ptr %i.p, align 4
  store i64 %.sroa.07.0.copyload.i.i.i, ptr %i.l, align 4
  store i8 %.sroa.28.0.copyload.i.i.i, ptr %.sroa.29.0..sroa_idx.i.i.i, align 4
  store i8 0, ptr %i.p, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 472
  store i32 -1, ptr %i.r, align 4
  br label %_ZN2v88internal11interpreter20BytecodeArrayBuilder12OutputMovRawENS1_8RegisterES3_.exit

_ZN2v88internal11interpreter20BytecodeArrayBuilder12OutputMovRawENS1_8RegisterES3_.exit: ; preds = %bb.a, %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 304
  call void @_ZN2v88internal11interpreter19BytecodeArrayWriter5WriteEPNS1_12BytecodeNodeE(ptr noundef nonnull align 8 dereferenceable(144) %i.s, ptr noundef nonnull %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  ret void
}

declare void @_ZN2v88internal11interpreter25BytecodeRegisterOptimizerC1EPNS0_4ZoneEPNS1_25BytecodeRegisterAllocatorEiiPNS2_14BytecodeWriterE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
end_hunk_0
