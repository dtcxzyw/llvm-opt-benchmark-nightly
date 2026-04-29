inline.NumInlined: 5130
inline.NumDeleted: 1400
begin_hunk_0_@_ZN5arrow8internal29ConvertColumnsToTensorVisitorItE5VisitINS_9Int16TypeEEENS_6StatusERKT_:bb.a

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.al, 12
  %n.vec = and i64 %i.al, -16                     ; 5 uses
  %i.ap = shl i64 %n.vec, 1
  %i.aq = getelementptr i8, ptr %.promoted, i64 %i.ap ; 2 uses
  %4 = shl i64 %n.vec, 1
  %i.ar = getelementptr i8, ptr %i.n, i64 %4
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.promoted, i64 %offset.idx ; 2 uses
  %offset.idx29 = shl i64 %index, 1
  %next.gep30 = getelementptr i8, ptr %i.n, i64 %offset.idx29 ; 2 uses
  %i.as = getelementptr i8, ptr %next.gep30, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep30, align 2, !tbaa !273
  %wide.load31 = load <8 x i16>, ptr %i.as, align 2, !tbaa !273
end_hunk_0
begin_hunk_1_@_ZN5arrow8internal29ConvertColumnsToTensorVisitorItE5VisitINS_9Int16TypeEEENS_6StatusERKT_:bb.a

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec34 = and i64 %i.al, -4                    ; 4 uses
  %i.av = shl i64 %n.vec34, 1
  %i.aw = getelementptr i8, ptr %.promoted, i64 %i.av ; 2 uses
  %5 = shl i64 %n.vec34, 1
  %i.ax = getelementptr i8, ptr %i.n, i64 %5
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index35 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next39, %vec.epilog.vector.body ] ; 3 uses
  %i.ay = shl i64 %index35, 1
  %next.gep36.a = getelementptr i8, ptr %.promoted, i64 %i.ay
  %6 = shl i64 %index35, 1
  %next.gep37 = getelementptr i8, ptr %i.n, i64 %6
  %wide.load38 = load <4 x i16>, ptr %next.gep37, align 2, !tbaa !273
  store <4 x i16> %wide.load38, ptr %next.gep36.a, align 2, !tbaa !273
  %index.next39 = add nuw i64 %index35, 4         ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN5arrow8internal29ConvertColumnsToTensorVisitorIjE5VisitINS_9Int32TypeEEENS_6StatusERKT_:bb.a
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.al, 9223372036854775800     ; 4 uses
  %i.ap = shl i64 %n.vec, 2
  %i.aq = getelementptr i8, ptr %.promoted, i64 %i.ap ; 2 uses
  %4 = shl i64 %n.vec, 2
  %i.ar = getelementptr i8, ptr %i.n, i64 %4
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.promoted, i64 %offset.idx ; 2 uses
  %offset.idx28 = shl i64 %index, 2
  %next.gep29 = getelementptr i8, ptr %i.n, i64 %offset.idx28 ; 2 uses
  %i.as = getelementptr i8, ptr %next.gep29, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep29, align 4, !tbaa !3
  %wide.load30 = load <4 x i32>, ptr %i.as, align 4, !tbaa !3
end_hunk_2
begin_hunk_3_@_ZN5arrow8internal29ConvertColumnsToTensorVisitorIjE5VisitINS_9FloatTypeEEENS_6StatusERKT_:bb.a
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph21
  %n.vec = and i64 %i.ak, 9223372036854775800     ; 4 uses
  %i.al = shl i64 %n.vec, 2
  %i.am = getelementptr i8, ptr %.promoted, i64 %i.al ; 2 uses
  %4 = shl i64 %n.vec, 2
  %i.an = getelementptr i8, ptr %i.m, i64 %4
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.promoted, i64 %offset.idx ; 2 uses
  %offset.idx27 = shl i64 %index, 2
  %next.gep28 = getelementptr i8, ptr %i.m, i64 %offset.idx27 ; 2 uses
  %i.ao = getelementptr i8, ptr %next.gep28, i64 16
  %wide.load = load <4 x float>, ptr %next.gep28, align 4, !tbaa !310
  %wide.load29 = load <4 x float>, ptr %i.ao, align 4, !tbaa !310
end_hunk_3
begin_hunk_4_@_ZN5arrow8internal29ConvertColumnsToTensorVisitorImE5VisitINS_9Int64TypeEEENS_6StatusERKT_:bb.a
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.al, 4611686018427387900     ; 4 uses
  %i.ap = shl i64 %n.vec, 3
  %i.aq = getelementptr i8, ptr %.promoted, i64 %i.ap ; 2 uses
  %4 = shl i64 %n.vec, 3
  %i.ar = getelementptr i8, ptr %i.n, i64 %4
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %.promoted, i64 %offset.idx ; 2 uses
  %offset.idx28 = shl i64 %index, 3
  %next.gep29 = getelementptr i8, ptr %i.n, i64 %offset.idx28 ; 2 uses
  %i.as = getelementptr i8, ptr %next.gep29, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep29, align 8, !tbaa !14
  %wide.load30 = load <2 x i64>, ptr %i.as, align 8, !tbaa !14
end_hunk_4
begin_hunk_5_@_ZN5arrow8internal29ConvertColumnsToTensorVisitorIsE5VisitINS_10UInt16TypeEEENS_6StatusERKT_:bb.a

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.al, 12
  %n.vec = and i64 %i.al, -16                     ; 5 uses
  %i.ap = shl i64 %n.vec, 1
  %i.aq = getelementptr i8, ptr %.promoted, i64 %i.ap ; 2 uses
  %4 = shl i64 %n.vec, 1
  %i.ar = getelementptr i8, ptr %i.n, i64 %4
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.promoted, i64 %offset.idx ; 2 uses
  %offset.idx29 = shl i64 %index, 1
  %next.gep30 = getelementptr i8, ptr %i.n, i64 %offset.idx29 ; 2 uses
  %i.as = getelementptr i8, ptr %next.gep30, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep30, align 2, !tbaa !273
  %wide.load31 = load <8 x i16>, ptr %i.as, align 2, !tbaa !273
end_hunk_5
begin_hunk_6_@_ZN5arrow8internal29ConvertColumnsToTensorVisitorIsE5VisitINS_10UInt16TypeEEENS_6StatusERKT_:bb.a

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec34 = and i64 %i.al, -4                    ; 4 uses
  %i.av = shl i64 %n.vec34, 1
  %i.aw = getelementptr i8, ptr %.promoted, i64 %i.av ; 2 uses
  %5 = shl i64 %n.vec34, 1
  %i.ax = getelementptr i8, ptr %i.n, i64 %5
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index35 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next39, %vec.epilog.vector.body ] ; 3 uses
  %i.ay = shl i64 %index35, 1
  %next.gep36.a = getelementptr i8, ptr %.promoted, i64 %i.ay
  %6 = shl i64 %index35, 1
  %next.gep37 = getelementptr i8, ptr %i.n, i64 %6
  %wide.load38 = load <4 x i16>, ptr %next.gep37, align 2, !tbaa !273
  store <4 x i16> %wide.load38, ptr %next.gep36.a, align 2, !tbaa !273
  %index.next39 = add nuw i64 %index35, 4         ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN5arrow8internal29ConvertColumnsToTensorVisitorIsE5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_:bb.a

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.al, 12
  %n.vec = and i64 %i.al, -16                     ; 5 uses
  %i.ap = shl i64 %n.vec, 1
  %i.aq = getelementptr i8, ptr %.promoted, i64 %i.ap ; 2 uses
  %4 = shl i64 %n.vec, 1
  %i.ar = getelementptr i8, ptr %i.n, i64 %4
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.promoted, i64 %offset.idx ; 2 uses
  %offset.idx29 = shl i64 %index, 1
  %next.gep30 = getelementptr i8, ptr %i.n, i64 %offset.idx29 ; 2 uses
  %i.as = getelementptr i8, ptr %next.gep30, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep30, align 2, !tbaa !273
  %wide.load31 = load <8 x i16>, ptr %i.as, align 2, !tbaa !273
end_hunk_7
begin_hunk_8_@_ZN5arrow8internal29ConvertColumnsToTensorVisitorIsE5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_:bb.a

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec34 = and i64 %i.al, -4                    ; 4 uses
  %i.av = shl i64 %n.vec34, 1
  %i.aw = getelementptr i8, ptr %.promoted, i64 %i.av ; 2 uses
  %5 = shl i64 %n.vec34, 1
  %i.ax = getelementptr i8, ptr %i.n, i64 %5
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index35 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next39, %vec.epilog.vector.body ] ; 3 uses
  %i.ay = shl i64 %index35, 1
  %next.gep36.a = getelementptr i8, ptr %.promoted, i64 %i.ay
  %6 = shl i64 %index35, 1
  %next.gep37 = getelementptr i8, ptr %i.n, i64 %6
  %wide.load38 = load <4 x i16>, ptr %next.gep37, align 2, !tbaa !273
  store <4 x i16> %wide.load38, ptr %next.gep36.a, align 2, !tbaa !273
  %index.next39 = add nuw i64 %index35, 4         ; 2 uses
end_hunk_8
begin_hunk_9_@_ZN5arrow8internal29ConvertColumnsToTensorVisitorIiE5VisitINS_10UInt32TypeEEENS_6StatusERKT_:bb.a
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.al, 9223372036854775800     ; 4 uses
  %i.ap = shl i64 %n.vec, 2
  %i.aq = getelementptr i8, ptr %.promoted, i64 %i.ap ; 2 uses
  %4 = shl i64 %n.vec, 2
  %i.ar = getelementptr i8, ptr %i.n, i64 %4
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.promoted, i64 %offset.idx ; 2 uses
  %offset.idx28 = shl i64 %index, 2
  %next.gep29 = getelementptr i8, ptr %i.n, i64 %offset.idx28 ; 2 uses
  %i.as = getelementptr i8, ptr %next.gep29, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep29, align 4, !tbaa !3
  %wide.load30 = load <4 x i32>, ptr %i.as, align 4, !tbaa !3
end_hunk_9
begin_hunk_10_@_ZN5arrow8internal29ConvertColumnsToTensorVisitorIiE5VisitINS_9FloatTypeEEENS_6StatusERKT_:bb.a
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph21
  %n.vec = and i64 %i.ak, 9223372036854775800     ; 4 uses
  %i.al = shl i64 %n.vec, 2
  %i.am = getelementptr i8, ptr %.promoted, i64 %i.al ; 2 uses
  %4 = shl i64 %n.vec, 2
  %i.an = getelementptr i8, ptr %i.m, i64 %4
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.promoted, i64 %offset.idx ; 2 uses
  %offset.idx27 = shl i64 %index, 2
  %next.gep28 = getelementptr i8, ptr %i.m, i64 %offset.idx27 ; 2 uses
  %i.ao = getelementptr i8, ptr %next.gep28, i64 16
  %wide.load = load <4 x float>, ptr %next.gep28, align 4, !tbaa !310
  %wide.load29 = load <4 x float>, ptr %i.ao, align 4, !tbaa !310
end_hunk_10
begin_hunk_11_@_ZN5arrow8internal29ConvertColumnsToTensorVisitorIlE5VisitINS_10UInt64TypeEEENS_6StatusERKT_:bb.a
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.al, 4611686018427387900     ; 4 uses
  %i.ap = shl i64 %n.vec, 3
  %i.aq = getelementptr i8, ptr %.promoted, i64 %i.ap ; 2 uses
  %4 = shl i64 %n.vec, 3
  %i.ar = getelementptr i8, ptr %i.n, i64 %4
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %.promoted, i64 %offset.idx ; 2 uses
  %offset.idx28 = shl i64 %index, 3
  %next.gep29 = getelementptr i8, ptr %i.n, i64 %offset.idx28 ; 2 uses
  %i.as = getelementptr i8, ptr %next.gep29, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep29, align 8, !tbaa !14
  %wide.load30 = load <2 x i64>, ptr %i.as, align 8, !tbaa !14
end_hunk_11
begin_hunk_12_@_ZN5arrow8internal29ConvertColumnsToTensorVisitorIfE5VisitINS_9Int32TypeEEENS_6StatusERKT_:bb.a
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph21
  %n.vec = and i64 %i.ak, 9223372036854775800     ; 4 uses
  %i.al = shl i64 %n.vec, 2
  %i.am = getelementptr i8, ptr %.promoted, i64 %i.al ; 2 uses
  %4 = shl i64 %n.vec, 2
  %i.an = getelementptr i8, ptr %i.m, i64 %4
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.promoted, i64 %offset.idx ; 2 uses
  %offset.idx27 = shl i64 %index, 2
  %next.gep28 = getelementptr i8, ptr %i.m, i64 %offset.idx27 ; 2 uses
  %i.ao = getelementptr i8, ptr %next.gep28, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep28, align 4, !tbaa !3
  %wide.load29 = load <4 x i32>, ptr %i.ao, align 4, !tbaa !3
end_hunk_12
begin_hunk_13_@_ZN5arrow8internal29ConvertColumnsToTensorVisitorIfE5VisitINS_10UInt32TypeEEENS_6StatusERKT_:bb.a
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph21
  %n.vec = and i64 %i.ak, 9223372036854775800     ; 4 uses
  %i.al = shl i64 %n.vec, 2
  %i.am = getelementptr i8, ptr %.promoted, i64 %i.al ; 2 uses
  %4 = shl i64 %n.vec, 2
  %i.an = getelementptr i8, ptr %i.m, i64 %4
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.promoted, i64 %offset.idx ; 2 uses
  %offset.idx27 = shl i64 %index, 2
  %next.gep28 = getelementptr i8, ptr %i.m, i64 %offset.idx27 ; 2 uses
  %i.ao = getelementptr i8, ptr %next.gep28, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep28, align 4, !tbaa !3
  %wide.load29 = load <4 x i32>, ptr %i.ao, align 4, !tbaa !3
end_hunk_13
begin_hunk_14_@_ZN5arrow8internal29ConvertColumnsToTensorVisitorIdE5VisitINS_10UInt64TypeEEENS_6StatusERKT_:bb.a
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph21
  %n.vec = and i64 %i.ak, 4611686018427387900     ; 4 uses
  %i.al = shl i64 %n.vec, 3
  %i.am = getelementptr i8, ptr %.promoted, i64 %i.al ; 2 uses
  %4 = shl i64 %n.vec, 3
  %i.an = getelementptr i8, ptr %i.m, i64 %4
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %.promoted, i64 %offset.idx ; 2 uses
  %offset.idx27 = shl i64 %index, 3
  %next.gep28 = getelementptr i8, ptr %i.m, i64 %offset.idx27 ; 2 uses
  %i.ao = getelementptr i8, ptr %next.gep28, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep28, align 8, !tbaa !14
  %wide.load29 = load <2 x i64>, ptr %i.ao, align 8, !tbaa !14
end_hunk_14
