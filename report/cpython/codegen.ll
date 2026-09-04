Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/codegen?download=true
inline.NumInlined: 724
inline.NumDeleted: 94
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@pattern_helper_sequence_subscr:bb.a
  %i.j = load i32, ptr %i.i, align 8, !tbaa !79
  %i.k = icmp eq i32 %i.j, 7
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !36
  %.not = icmp eq ptr %i.m, null
  %i.n = icmp eq i64 %.05484, %4
  %or.cond = or i1 %i.n, %.not
  br i1 %or.cond, label %.critedge, label %bb.f

bb.e:                                             ; preds = %bb.c
  %.old = icmp eq i64 %.05484, %4
  br i1 %.old, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.o = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.p = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.o, i32 noundef 59, i32 noundef 1, i64 %1, i64 %2) #10
  %i.q = icmp eq i32 %i.p, -1
  br i1 %i.q, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = icmp slt i64 %.05484, %4
  br i1 %i.r, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.s = tail call ptr @PyLong_FromSsize_t(i64 noundef %.05484) #10 ; 5 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = tail call i64 @_PyCompile_AddConst(ptr noundef %0, ptr noundef nonnull %i.s) #10 ; 2 uses
  %i.v = icmp slt i64 %i.u, 0
  br i1 %i.v, label %codegen_addop_load_const.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.x = trunc i64 %i.u to i32
  %i.y = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.w, i32 noundef 82, i32 noundef %i.x, i64 %1, i64 %2) #10
  %i.z = icmp ne i32 %i.y, -1
  br label %codegen_addop_load_const.exit

codegen_addop_load_const.exit:                    ; preds = %bb.i, %bb.j
  %.0.i = phi i1 [ false, %bb.i ], [ %i.z, %bb.j ]
  %i.aa = load i32, ptr %i.s, align 8, !tbaa !36  ; 2 uses
  %.not.i72 = icmp sgt i32 %i.aa, -1
  br i1 %.not.i72, label %bb.k, label %Py_DECREF.exit73

bb.k:                                             ; preds = %codegen_addop_load_const.exit
  %i.ab = add nsw i32 %i.aa, -1                   ; 2 uses
  store i32 %i.ab, ptr %i.s, align 8, !tbaa !36
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.l, label %Py_DECREF.exit73

bb.l:                                             ; preds = %bb.k
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.s) #10
  br label %Py_DECREF.exit73

Py_DECREF.exit73:                                 ; preds = %codegen_addop_load_const.exit, %bb.k, %bb.l
  br i1 %.0.i, label %bb.t, label %.loopexit

bb.m:                                             ; preds = %bb.g
  %i.ad = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.ae = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.ad, i32 noundef 18, i32 noundef 0, i64 %1, i64 %2) #10
  %i.af = icmp eq i32 %i.ae, -1
  br i1 %i.af, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ag = sub nuw nsw i64 %i.e, %.05484
  %i.ah = tail call ptr @PyLong_FromSsize_t(i64 noundef %i.ag) #10 ; 5 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aj = tail call i64 @_PyCompile_AddConst(ptr noundef %0, ptr noundef nonnull %i.ah) #10 ; 2 uses
  %i.ak = icmp slt i64 %i.aj, 0
  br i1 %i.ak, label %codegen_addop_load_const.exit77, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.am = trunc i64 %i.aj to i32
  %i.an = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.al, i32 noundef 82, i32 noundef %i.am, i64 %1, i64 %2) #10
  %i.ao = icmp ne i32 %i.an, -1
  br label %codegen_addop_load_const.exit77

codegen_addop_load_const.exit77:                  ; preds = %bb.o, %bb.p
  %.0.i76 = phi i1 [ false, %bb.o ], [ %i.ao, %bb.p ]
  %i.ap = load i32, ptr %i.ah, align 8, !tbaa !36 ; 2 uses
  %.not.i = icmp sgt i32 %i.ap, -1
  br i1 %.not.i, label %bb.q, label %Py_DECREF.exit

bb.q:                                             ; preds = %codegen_addop_load_const.exit77
  %i.aq = add nsw i32 %i.ap, -1                   ; 2 uses
  store i32 %i.aq, ptr %i.ah, align 8, !tbaa !36
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.r, label %Py_DECREF.exit

bb.r:                                             ; preds = %bb.q
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ah) #10
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %codegen_addop_load_const.exit77, %bb.q, %bb.r
  br i1 %.0.i76, label %bb.s, label %.loopexit

bb.s:                                             ; preds = %Py_DECREF.exit
  %i.as = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.at = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.as, i32 noundef 44, i32 noundef 10, i64 %1, i64 %2) #10
  %i.au = icmp eq i32 %i.at, -1
  br i1 %i.au, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %Py_DECREF.exit73, %bb.s
  %i.av = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.aw = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.av, i32 noundef 44, i32 noundef 26, i64 %1, i64 %2) #10
  %i.ax = icmp eq i32 %i.aw, -1
  br i1 %i.ax, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ay = load i32, ptr %i.g, align 8, !tbaa !85
  store i32 1, ptr %i.g, align 8, !tbaa !85
  %i.az = tail call fastcc i32 @codegen_pattern(ptr noundef %0, ptr noundef nonnull %i.i, ptr noundef nonnull %5), !inline_history !8
  %i.ba = icmp eq i32 %i.az, -1
  br i1 %i.ba, label %.loopexit, label %codegen_pattern_subpattern.exit

codegen_pattern_subpattern.exit:                  ; preds = %bb.u
  store i32 %i.ay, ptr %i.g, align 8, !tbaa !85
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.e, %codegen_pattern_subpattern.exit
  %i.bb = add nuw nsw i64 %.05484, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bb, %i.e
  br i1 %exitcond.not, label %.critedge70.loopexit, label %bb.c, !llvm.loop !270

.critedge70.loopexit:                             ; preds = %.critedge
  %.pre = load i64, ptr %i.a, align 8, !tbaa !127
  %i.bc = add i64 %.pre, -1
  br label %.critedge70

.critedge70:                                      ; preds = %bb.a, %.critedge70.loopexit, %bb.b
  %i.bd = phi i64 [ %i.bc, %.critedge70.loopexit ], [ %i.b, %bb.b ], [ %i.b, %bb.a ]
  store i64 %i.bd, ptr %i.a, align 8, !tbaa !127
  %i.be = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.bf = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.be, i32 noundef 31, i32 noundef 0, i64 %1, i64 %2) #10
  %i.bg = icmp eq i32 %i.bf, -1
  %.71 = sext i1 %i.bg to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.u, %bb.f, %Py_DECREF.exit, %bb.h, %bb.m, %Py_DECREF.exit73, %bb.t, %bb.n, %bb.s, %.critedge70
  %.6 = phi i32 [ %.71, %.critedge70 ], [ -1, %bb.s ], [ -1, %bb.n ], [ -1, %bb.t ], [ -1, %Py_DECREF.exit73 ], [ -1, %bb.m ], [ -1, %bb.h ], [ -1, %Py_DECREF.exit ], [ -1, %bb.f ], [ -1, %bb.u ]
  ret i32 %.6
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef range(i32 -1, 1) i32 @pattern_helper_sequence_unpack(ptr noundef %0, i64 %1, i64 %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef nonnull captures(none) %4) unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %3, null                     ; 2 uses
  br i1 %i.a, label %._crit_edge.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %3, align 8, !tbaa !41     ; 7 uses
  %.not52.i = icmp sgt i64 %i.b, 0
  br i1 %.not52.i, label %.lr.ph.i, label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.c = getelementptr i8, ptr %3, i64 16         ; 2 uses
  br label %.outer.i.split.split

.outer.i.split.us:                                ; preds = %.thread60.i, %bb.c
  %.03254.i.us = phi i64 [ %i.h, %bb.c ], [ %i.w, %.thread60.i ] ; 2 uses
  %i.d = getelementptr [8 x i8], ptr %i.c, i64 %.03254.i.us
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !126
  %i.f = load i32, ptr %i.e, align 8, !tbaa !79
  %i.g = icmp eq i32 %i.f, 6
  br i1 %i.g, label %codegen_pattern_unpack_helper.exit, label %bb.c

bb.c:                                             ; preds = %.outer.i.split.us
  %i.h = add nuw nsw i64 %.03254.i.us, 1          ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.h, %i.b
  br i1 %exitcond.not.i.us, label %._crit_edge.i, label %.outer.i.split.us, !llvm.loop !271

.outer.i.split.split:                             ; preds = %.lr.ph.i, %bb.g
  %.03254.i = phi i64 [ %i.v, %bb.g ], [ 0, %.lr.ph.i ] ; 6 uses
  %i.i = getelementptr [8 x i8], ptr %i.c, i64 %.03254.i
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !126
  %i.k = load i32, ptr %i.j, align 8, !tbaa !79
  %.not.not = icmp eq i32 %i.k, 6
  br i1 %.not.not, label %bb.d, label %bb.g

bb.d:                                             ; preds = %.outer.i.split.split
  %i.l = icmp samesign ugt i64 %.03254.i, 255
  br i1 %i.l, label %codegen_pattern_unpack_helper.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = xor i64 %.03254.i, -1
  %i.n = add nsw i64 %i.b, %i.m                   ; 2 uses
  %i.o = icmp sgt i64 %i.n, 8388606
  br i1 %i.o, label %codegen_pattern_unpack_helper.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.q = shl nsw i64 %i.n, 8
  %i.r = or disjoint i64 %i.q, %.03254.i
  %i.s = trunc i64 %i.r to i32
  %i.t = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.p, i32 noundef 118, i32 noundef %i.s, i64 %1, i64 %2) #10
  %i.u = icmp eq i32 %i.t, -1
  br i1 %i.u, label %codegen_pattern_unpack_helper.exit.thread, label %.thread60.i

bb.g:                                             ; preds = %.outer.i.split.split
  %i.v = add nuw nsw i64 %.03254.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.v, %i.b
  br i1 %exitcond.not.i, label %._crit_edge.thread.i, label %.outer.i.split.split, !llvm.loop !271

.thread60.i:                                      ; preds = %bb.f
  %i.w = add nuw nsw i64 %.03254.i, 1             ; 2 uses
  %exitcond.not62.i = icmp eq i64 %i.w, %i.b
  br i1 %exitcond.not62.i, label %._crit_edge.i, label %.outer.i.split.us

._crit_edge.thread.i:                             ; preds = %bb.g, %bb.b, %bb.a
  %i.x = phi i64 [ 0, %bb.a ], [ %i.b, %bb.b ], [ %i.b, %bb.g ]
  %i.y = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.z = trunc i64 %i.x to i32
  %i.aa = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.y, i32 noundef 119, i32 noundef %i.z, i64 %1, i64 %2) #10
  %i.ab = icmp eq i32 %i.aa, -1                   ; 2 uses
  %brmerge = or i1 %i.ab, %i.a
  %.mux = sext i1 %i.ab to i32
  br i1 %brmerge, label %codegen_pattern_unpack_helper.exit.thread, label %._crit_edge.i

codegen_pattern_unpack_helper.exit:               ; preds = %.outer.i.split.us, %bb.d, %bb.e
  %.str.256.sink = phi ptr [ @.str.256, %bb.d ], [ @.str.256, %bb.e ], [ @.str.257, %.outer.i.split.us ]
  %i.ac = tail call i32 (ptr, i64, i64, ptr, ...) @_PyCompile_Error(ptr noundef %0, i64 %1, i64 %2, ptr noundef nonnull %.str.256.sink) #10
  %i.ad = icmp eq i32 %i.ac, -1
  br i1 %i.ad, label %codegen_pattern_unpack_helper.exit.thread, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %._crit_edge.thread.i, %codegen_pattern_unpack_helper.exit, %.thread60.i
  %i.ae = load i64, ptr %3, align 8, !tbaa !41    ; 3 uses
  %i.af = getelementptr i8, ptr %4, i64 32        ; 4 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !127
  %i.ah = add i64 %i.ag, %i.ae
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !127
  %.not2245 = icmp sgt i64 %i.ae, 0
  br i1 %.not2245, label %.lr.ph, label %codegen_pattern_unpack_helper.exit.thread

.lr.ph:                                           ; preds = %._crit_edge.i
  %i.ai = getelementptr i8, ptr %3, i64 16
  %i.aj = getelementptr i8, ptr %4, i64 8         ; 3 uses
  %.pre = load i32, ptr %i.aj, align 8, !tbaa !85
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.i
  %.01846 = phi i64 [ 0, %.lr.ph ], [ %i.aq, %bb.i ] ; 2 uses
  %i.ak = load i64, ptr %i.af, align 8, !tbaa !127
  %i.al = add i64 %i.ak, -1
  store i64 %i.al, ptr %i.af, align 8, !tbaa !127
  %i.am = getelementptr [8 x i8], ptr %i.ai, i64 %.01846
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !126
  store i32 1, ptr %i.aj, align 8, !tbaa !85
  %i.ao = tail call fastcc i32 @codegen_pattern(ptr noundef %0, ptr noundef %i.an, ptr noundef nonnull %4), !inline_history !8
  %i.ap = icmp eq i32 %i.ao, -1
  br i1 %i.ap, label %codegen_pattern_unpack_helper.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 %.pre, ptr %i.aj, align 8, !tbaa !85
  %i.aq = add nuw nsw i64 %.01846, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.aq, %i.ae
  br i1 %exitcond.not, label %codegen_pattern_unpack_helper.exit.thread, label %bb.h, !llvm.loop !272

codegen_pattern_unpack_helper.exit.thread:        ; preds = %bb.h, %bb.i, %._crit_edge.thread.i, %bb.f, %._crit_edge.i, %codegen_pattern_unpack_helper.exit
  %.4 = phi i32 [ -1, %bb.f ], [ -1, %codegen_pattern_unpack_helper.exit ], [ %.mux, %._crit_edge.thread.i ], [ 0, %._crit_edge.i ], [ -1, %bb.h ], [ 0, %bb.i ]
  ret i32 %.4
}

declare ptr @PySet_New(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc i32 @codegen_pattern_helper_store_name(ptr noundef %0, i64 %1, i64 %2, ptr noundef %3, ptr nofree noundef nonnull readonly captures(none) %4) unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %3, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.c = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.b, i32 noundef 31, i32 noundef 0, i64 %1, i64 %2) #10
  %i.d = icmp eq i32 %i.c, -1
  %. = sext i1 %i.d to i32
  br label %codegen_pattern_helper_rotate.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %4, align 8, !tbaa !84
  %i.f = tail call i32 @PySequence_Contains(ptr noundef %i.e, ptr noundef nonnull %3) #10 ; 2 uses
  switch i32 %i.f, label %bb.d [
    i32 -1, label %codegen_pattern_helper_rotate.exit.thread
    i32 0, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 (ptr, i64, i64, ptr, ...) @_PyCompile_Error(ptr noundef %0, i64 %1, i64 %2, ptr noundef nonnull @.str.263, ptr noundef nonnull %3) #10
  br label %codegen_pattern_helper_rotate.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %4, i64 32
  %i.i = load i64, ptr %i.h, align 8, !tbaa !127
  %i.j = load ptr, ptr %4, align 8, !tbaa !84
  %i.k = getelementptr i8, ptr %i.j, i64 16
  %.val = load i64, ptr %i.k, align 8, !tbaa !56
  %i.l = add i64 %i.i, 1
  %i.m = add i64 %i.l, %.val                      ; 2 uses
  %i.n = icmp sgt i64 %i.m, 1
  br i1 %i.n, label %.lr.ph, label %codegen_pattern_helper_rotate.exit

bb.f:                                             ; preds = %.lr.ph
  %i.o = add nsw i64 %.0.i22, -1
  %i.p = icmp sgt i64 %.0.i22, 2
  br i1 %i.p, label %.lr.ph, label %codegen_pattern_helper_rotate.exit, !llvm.loop !7

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %.0.i22 = phi i64 [ %i.o, %bb.f ], [ %i.m, %bb.e ] ; 3 uses
  %i.q = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.r = trunc i64 %.0.i22 to i32
  %i.s = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.q, i32 noundef 117, i32 noundef %i.r, i64 %1, i64 %2) #10
  %i.t = icmp eq i32 %i.s, -1
  br i1 %i.t, label %codegen_pattern_helper_rotate.exit.thread, label %bb.f, !llvm.loop !7

codegen_pattern_helper_rotate.exit:               ; preds = %bb.f, %bb.e
  %i.u = load ptr, ptr %4, align 8, !tbaa !84
  %i.v = tail call i32 @PyList_Append(ptr noundef %i.u, ptr noundef nonnull %3) #10
  %i.w = icmp eq i32 %i.v, -1
  %.20 = sext i1 %i.w to i32
  br label %codegen_pattern_helper_rotate.exit.thread

codegen_pattern_helper_rotate.exit.thread:        ; preds = %.lr.ph, %bb.d, %bb.c, %codegen_pattern_helper_rotate.exit, %bb.b
  %.2 = phi i32 [ %., %bb.b ], [ %i.f, %bb.c ], [ %i.g, %bb.d ], [ %.20, %codegen_pattern_helper_rotate.exit ], [ -1, %.lr.ph ]
  ret i32 %.2
}

declare i32 @PySet_Contains(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @PySet_Add(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @PySequence_Contains(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @PyList_Append(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc i32 @validate_kwd_attrs(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %.loopexit43, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8, !tbaa !41     ; 4 uses
  %.not3947 = icmp sgt i64 %i.b, 0
  br i1 %.not3947, label %.lr.ph49, label %.loopexit43

.lr.ph49:                                         ; preds = %bb.b
  %i.c = getelementptr i8, ptr %1, i64 16         ; 2 uses
  br label %bb.c

.loopexit:                                        ; preds = %bb.d, %bb.c
  %exitcond52.not = icmp eq i64 %i.f, %i.b
  br i1 %exitcond52.not, label %.loopexit43, label %bb.c

bb.c:                                             ; preds = %.lr.ph49, %.loopexit
  %.03648 = phi i64 [ 0, %.lr.ph49 ], [ %i.f, %.loopexit ] ; 2 uses
  %i.d = getelementptr [8 x i8], ptr %i.c, i64 %.03648
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !38   ; 2 uses
  %i.f = add nuw nsw i64 %.03648, 1               ; 4 uses
  %.not45 = icmp slt i64 %i.f, %i.b
  br i1 %.not45, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.03246 = phi i64 [ %i.v, %bb.d ], [ %i.f, %bb.c ] ; 3 uses
  %i.g = getelementptr [8 x i8], ptr %i.c, i64 %.03246
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !38
  %i.i = tail call i32 @PyUnicode_Compare(ptr noundef %i.e, ptr noundef %i.h) #10
  %.not.not = icmp eq i32 %i.i, 0
  br i1 %.not.not, label %.thread41, label %bb.d

.thread41:                                        ; preds = %.lr.ph
  %i.j = getelementptr i8, ptr %2, i64 16
  %i.k = getelementptr [8 x i8], ptr %i.j, i64 %.03246
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !126  ; 4 uses
  %i.m = getelementptr i8, ptr %i.l, i64 40
  %i.n = load i32, ptr %i.m, align 8, !tbaa !80
  %.sroa.0.0.insert.ext = zext i32 %i.n to i64
  %i.o = getelementptr i8, ptr %i.l, i64 48
  %i.p = load i32, ptr %i.o, align 8, !tbaa !81
  %.sroa.0.4.insert.ext = zext i32 %i.p to i64
  %.sroa.0.4.insert.shift = shl nuw i64 %.sroa.0.4.insert.ext, 32
  %.sroa.0.4.insert.insert = or disjoint i64 %.sroa.0.4.insert.shift, %.sroa.0.0.insert.ext
  %i.q = getelementptr i8, ptr %i.l, i64 44
  %i.r = load i32, ptr %i.q, align 4, !tbaa !82
  %.sroa.5.8.insert.ext = zext i32 %i.r to i64
  %i.s = getelementptr i8, ptr %i.l, i64 52
  %i.t = load i32, ptr %i.s, align 4, !tbaa !83
  %.sroa.5.12.insert.ext = zext i32 %i.t to i64
  %.sroa.5.12.insert.shift = shl nuw i64 %.sroa.5.12.insert.ext, 32
  %.sroa.5.12.insert.insert = or disjoint i64 %.sroa.5.12.insert.shift, %.sroa.5.8.insert.ext
  %i.u = tail call i32 (ptr, i64, i64, ptr, ...) @_PyCompile_Error(ptr noundef %0, i64 %.sroa.0.4.insert.insert, i64 %.sroa.5.12.insert.insert, ptr noundef nonnull @.str.266, ptr noundef %i.e) #10
  br label %.loopexit43

bb.d:                                             ; preds = %.lr.ph
  %i.v = add nuw i64 %.03246, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.v, %i.b
end_hunk_0
begin_hunk_1_@codegen_sync_comprehension_generator:bb.a
  %i.fv = add i32 %.1211, 1
  %i.fw = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.fu, i32 noundef 107, i32 noundef %i.fv, i64 %.sroa.014.4.insert.insert, i64 %.sroa.19.12.insert.insert) #10
  %i.fx = icmp eq i32 %i.fw, -1
  br i1 %i.fx, label %.critedge236, label %bb.bg

bb.ba:                                            ; preds = %bb.z
  %i.fy = icmp eq ptr %7, null
  %i.fz = tail call fastcc i32 @codegen_visit_expr(ptr noundef %0, ptr noundef nonnull %6)
  %i.ga = icmp eq i32 %i.fz, -1                   ; 2 uses
  br i1 %i.fy, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  br i1 %i.ga, label %.critedge236, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gb = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.gc = add i32 %.1211, 1
  %i.gd = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.gb, i32 noundef 67, i32 noundef %i.gc, i64 %.sroa.014.4.insert.insert, i64 %.sroa.19.12.insert.insert) #10
  %i.ge = icmp eq i32 %i.gd, -1
  br i1 %i.ge, label %.critedge236, label %bb.bg

bb.bd:                                            ; preds = %bb.ba
  br i1 %i.ga, label %.critedge236, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gf = tail call fastcc i32 @codegen_visit_expr(ptr noundef %0, ptr noundef nonnull %7)
  %i.gg = icmp eq i32 %i.gf, -1
  br i1 %i.gg, label %.critedge236, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gh = load i32, ptr %i.cq, align 8, !tbaa !31
  %i.gi = getelementptr i8, ptr %7, i64 48
  %i.gj = load i32, ptr %i.gi, align 8, !tbaa !32
  %i.gk = load i32, ptr %i.cu, align 4, !tbaa !33
  %i.gl = getelementptr i8, ptr %7, i64 52
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !34
  %.sroa.014.0.insert.ext28 = zext i32 %i.gh to i64
  %.sroa.014.4.insert.ext32 = zext i32 %i.gj to i64
  %.sroa.014.4.insert.shift33 = shl nuw i64 %.sroa.014.4.insert.ext32, 32
  %.sroa.014.4.insert.insert35 = or disjoint i64 %.sroa.014.4.insert.shift33, %.sroa.014.0.insert.ext28 ; 2 uses
  %.sroa.19.8.insert.ext49 = zext i32 %i.gk to i64
  %.sroa.19.12.insert.ext53 = zext i32 %i.gm to i64
  %.sroa.19.12.insert.shift54 = shl nuw i64 %.sroa.19.12.insert.ext53, 32
  %.sroa.19.12.insert.insert56 = or disjoint i64 %.sroa.19.12.insert.shift54, %.sroa.19.8.insert.ext49 ; 2 uses
  %i.gn = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.go = add i32 %.1211, 1
  %i.gp = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.gn, i32 noundef 98, i32 noundef %i.go, i64 %.sroa.014.4.insert.insert35, i64 %.sroa.19.12.insert.insert56) #10
  %i.gq = icmp eq i32 %i.gp, -1
  br i1 %i.gq, label %.critedge236, label %bb.bg

default.unreachable268:                           ; preds = %bb.z
  unreachable

bb.bg:                                            ; preds = %bb.y, %bb.bc, %bb.bf, %bb.ax, %bb.az, %bb.as, %bb.au, %bb.am, %bb.ap
  %.sroa.19.0 = phi i64 [ %.sroa.19.12.insert.insert, %bb.am ], [ %.sroa.19.12.insert.insert, %bb.ap ], [ %.sroa.19.12.insert.insert, %bb.as ], [ %.sroa.19.12.insert.insert, %bb.au ], [ %.sroa.19.12.insert.insert, %bb.ax ], [ %.sroa.19.12.insert.insert, %bb.az ], [ %.sroa.19.12.insert.insert, %bb.bc ], [ %.sroa.19.12.insert.insert56, %bb.bf ], [ %.sroa.19.12.insert.insert, %bb.y ]
  %.sroa.014.0 = phi i64 [ %.sroa.014.4.insert.insert, %bb.am ], [ %.sroa.014.4.insert.insert, %bb.ap ], [ %.sroa.014.4.insert.insert, %bb.as ], [ %.sroa.014.4.insert.insert, %bb.au ], [ %.sroa.014.4.insert.insert, %bb.ax ], [ %.sroa.014.4.insert.insert, %bb.az ], [ %.sroa.014.4.insert.insert, %bb.bc ], [ %.sroa.014.4.insert.insert35, %bb.bf ], [ %.sroa.014.4.insert.insert, %bb.y ]
  %i.gr = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.gs = tail call i32 @_PyInstructionSequence_UseLabel(ptr noundef %i.gr, i32 noundef %i.e) #10
  %i.gt = icmp eq i32 %i.gs, -1
  br i1 %i.gt, label %.critedge236, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  br i1 %i.bi, label %bb.bm, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gu = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.gv = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.gu, i32 noundef 257, i32 noundef %.sroa.0105.4247, i64 %.sroa.014.0, i64 %.sroa.19.0) #10
  %i.gw = icmp eq i32 %i.gv, -1
  br i1 %i.gw, label %.critedge236, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gx = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.gy = tail call i32 @_PyInstructionSequence_UseLabel(ptr noundef %i.gx, i32 noundef %i.h) #10
  %i.gz = icmp eq i32 %i.gy, -1
  br i1 %i.gz, label %.critedge236, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ha = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.hb = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.ha, i32 noundef 9, i32 noundef 0, i64 -1, i64 -1) #10
  %i.hc = icmp eq i32 %i.hb, -1
  br i1 %i.hc, label %.critedge236, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hd = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.he = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.hd, i32 noundef 30, i32 noundef 0, i64 -1, i64 -1) #10
  %i.hf = icmp eq i32 %i.he, -1
  br i1 %i.hf, label %.critedge236, label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bh
  br label %.critedge236

.critedge236:                                     ; preds = %.lr.ph, %bb.b, %bb.f, %.thread249, %bb.m, %bb.n, %.critedge, %bb.bm, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.bb, %bb.bc, %bb.bd, %bb.be, %bb.bf, %bb.bg, %bb.bi, %bb.bj, %bb.bk, %bb.bl, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.al, %bb.ab, %codegen_comprehension_generator.exit, %.critedge.thread, %bb.k, %bb.c, %bb.a
  %.14 = phi i32 [ -1, %bb.a ], [ -1, %bb.b ], [ -1, %bb.c ], [ -1, %bb.ab ], [ -1, %bb.n ], [ -1, %.critedge ], [ -1, %bb.f ], [ -1, %.thread249 ], [ -1, %bb.m ], [ -1, %bb.k ], [ -1, %codegen_comprehension_generator.exit ], [ -1, %bb.be ], [ -1, %bb.bf ], [ 0, %bb.bm ], [ -1, %bb.bg ], [ -1, %bb.bi ], [ -1, %bb.bj ], [ -1, %bb.bk ], [ -1, %bb.am ], [ -1, %bb.bl ], [ -1, %bb.an ], [ -1, %bb.ao ], [ -1, %bb.ap ], [ -1, %bb.ar ], [ -1, %bb.as ], [ -1, %bb.at ], [ -1, %bb.au ], [ -1, %bb.aw ], [ -1, %bb.ax ], [ -1, %bb.ay ], [ -1, %bb.az ], [ -1, %bb.bb ], [ -1, %bb.bc ], [ -1, %bb.bd ], [ -1, %bb.ak ], [ -1, %bb.aj ], [ -1, %bb.ai ], [ -1, %bb.ah ], [ -1, %bb.ag ], [ -1, %bb.af ], [ -1, %bb.ae ], [ -1, %bb.ad ], [ -1, %bb.ac ], [ -1, %bb.al ], [ -1, %.critedge.thread ], [ -1, %.lr.ph ]
  ret i32 %.14
}

declare i32 @_PyCompile_RevertInlinedComprehensionScopes(ptr noundef, i64, i64, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @restore_inlined_comprehension_locals(ptr noundef %0, i64 %1, i64 %2, ptr nofree noundef nonnull readonly captures(none) %3) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !147
  %i.b = getelementptr i8, ptr %i.a, i64 16
  %.val = load i64, ptr %i.b, align 8, !tbaa !56  ; 2 uses
  %i.c = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.d = trunc i64 %.val to i32
  %i.e = add i32 %i.d, 1
  %i.f = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.c, i32 noundef 117, i32 noundef %i.e, i64 %1, i64 %2) #10
  %i.g = icmp eq i32 %i.f, -1
  br i1 %i.g, label %._crit_edge21, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %.019 = add i64 %.val, -1                       ; 2 uses
  %i.h = icmp sgt i64 %.019, -1
  br i1 %i.h, label %.lr.ph, label %._crit_edge21

.preheader:                                       ; preds = %bb.b
  %.0 = add nsw i64 %.020, -1
  %i.i = icmp sgt i64 %.020, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge21, !llvm.loop !317

.lr.ph:                                           ; preds = %.preheader.preheader, %.preheader
  %.020 = phi i64 [ %.0, %.preheader ], [ %.019, %.preheader.preheader ] ; 3 uses
  %i.j = load ptr, ptr %3, align 8, !tbaa !147
  %i.k = tail call ptr @PyList_GetItem(ptr noundef %i.j, i64 noundef %.020) #10 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %._crit_edge21, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.m = tail call ptr @_PyCompile_Metadata(ptr noundef %0) #10
  %i.n = getelementptr i8, ptr %i.m, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !68
  %i.p = tail call fastcc i32 @codegen_addop_name(ptr noundef %0, i64 %1, i64 %2, i32 noundef 266, ptr noundef %i.o, ptr noundef nonnull %i.k)
  %i.q = icmp eq i32 %i.p, -1
  br i1 %i.q, label %._crit_edge, label %.preheader, !llvm.loop !317

._crit_edge:                                      ; preds = %bb.b
  br label %._crit_edge21, !llvm.loop !317

._crit_edge21:                                    ; preds = %.lr.ph, %.preheader, %.preheader.preheader, %._crit_edge, %bb.a
  %.1 = phi i32 [ -1, %bb.a ], [ -1, %._crit_edge ], [ 0, %.preheader.preheader ], [ 0, %.preheader ], [ -1, %.lr.ph ]
  ret i32 %.1
}

declare ptr @PyList_GetItem(ptr noundef, i64 noundef) local_unnamed_addr #4

declare i32 @_PyUnicode_EqualToASCIIString(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @_PyCompile_GetRefType(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @PyType_IsSubtype(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @PySlice_New(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc i32 @unpack_helper(ptr noundef %0, i64 %1, i64 %2, ptr nofree noundef readonly captures(address_is_null) %3) unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %3, null
  br i1 %i.a, label %._crit_edge.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %3, align 8, !tbaa !41     ; 6 uses
  %.not52 = icmp sgt i64 %i.b, 0
  br i1 %.not52, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.b
  %i.c = getelementptr i8, ptr %3, i64 16
  br label %.outer

.outer:                                           ; preds = %.thread60, %.lr.ph
  %.03254.ph = phi i64 [ %i.x, %.thread60 ], [ 0, %.lr.ph ]
  %i.d = phi i1 [ true, %.thread60 ], [ false, %.lr.ph ]
  %i.e = phi i1 [ false, %.thread60 ], [ true, %.lr.ph ]
  br label %bb.c

bb.c:                                             ; preds = %.outer, %bb.j
  %.03254 = phi i64 [ %i.w, %bb.j ], [ %.03254.ph, %.outer ] ; 6 uses
  %i.f = getelementptr [8 x i8], ptr %i.c, i64 %.03254
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !70
  %i.h = load i32, ptr %i.g, align 8, !tbaa !35   ; 2 uses
  %i.i = icmp ne i32 %i.h, 25
  %or.cond = or i1 %i.i, %i.d
  br i1 %or.cond, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp samesign ugt i64 %.03254, 255
  br i1 %i.j, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = xor i64 %.03254, -1
  %i.l = add nsw i64 %i.b, %i.k                   ; 2 uses
  %i.m = icmp sgt i64 %i.l, 8388606
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.n = tail call i32 (ptr, i64, i64, ptr, ...) @_PyCompile_Error(ptr noundef %0, i64 %1, i64 %2, ptr noundef nonnull @.str.296) #10
  br label %.thread46

bb.g:                                             ; preds = %bb.e
  %i.o = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.p = shl nsw i64 %i.l, 8
  %i.q = or disjoint i64 %i.p, %.03254
  %i.r = trunc i64 %i.q to i32
  %i.s = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.o, i32 noundef 118, i32 noundef %i.r, i64 %1, i64 %2) #10
  %i.t = icmp eq i32 %i.s, -1
  br i1 %i.t, label %.thread46, label %.thread60

bb.h:                                             ; preds = %bb.c
  %i.u = icmp eq i32 %i.h, 25
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.v = tail call i32 (ptr, i64, i64, ptr, ...) @_PyCompile_Error(ptr noundef %0, i64 %1, i64 %2, ptr noundef nonnull @.str.297) #10
  br label %.thread46

bb.j:                                             ; preds = %bb.h
  %i.w = add nuw nsw i64 %.03254, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !318

.thread60:                                        ; preds = %bb.g
  %i.x = add nuw nsw i64 %.03254, 1               ; 2 uses
  %exitcond.not62 = icmp eq i64 %i.x, %i.b
  br i1 %exitcond.not62, label %._crit_edge.thread64, label %.outer, !llvm.loop !318

._crit_edge:                                      ; preds = %bb.j
  br i1 %i.e, label %._crit_edge.thread, label %._crit_edge.thread64

._crit_edge.thread:                               ; preds = %bb.a, %bb.b, %._crit_edge
  %i.y = phi i64 [ %i.b, %._crit_edge ], [ %i.b, %bb.b ], [ 0, %bb.a ]
  %i.z = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.aa = trunc i64 %i.y to i32
  %i.ab = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.z, i32 noundef 119, i32 noundef %i.aa, i64 %1, i64 %2) #10
  %i.ac = icmp eq i32 %i.ab, -1
  br i1 %i.ac, label %.thread46, label %._crit_edge.thread64

._crit_edge.thread64:                             ; preds = %.thread60, %._crit_edge.thread, %._crit_edge
  br label %.thread46

.thread46:                                        ; preds = %bb.g, %bb.i, %bb.f, %._crit_edge.thread, %._crit_edge.thread64
  %.338 = phi i32 [ 0, %._crit_edge.thread64 ], [ -1, %._crit_edge.thread ], [ %i.n, %bb.f ], [ %i.v, %bb.i ], [ -1, %bb.g ]
  ret i32 %.338
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}
!llvm.errno.tbaa = !{!22}

!0 = distinct !{!0, !46}
!1 = distinct !{!1, !46}
!2 = distinct !{!2, !46}
!3 = distinct !{null}
!4 = distinct !{!4, !46}
!5 = distinct !{!5, !46}
!6 = distinct !{!6, !46}
!7 = distinct !{!7, !46}
!8 = distinct !{null}
!9 = distinct !{null}
!10 = distinct !{null}
!11 = distinct !{!11, !46}
!12 = !{i32 7, !"Dwarf Version", i32 5}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 8, !"PIC Level", i32 2}
!15 = !{i32 7, !"PIE Level", i32 2}
!16 = !{i32 7, !"uwtable", i32 2}
!17 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!18 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!19 = !{!"Simple C/C++ TBAA"}
!20 = !{!"omnipotent char", !19, i64 0}
!21 = !{!"int", !20, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!"any pointer", !20, i64 0}
!24 = !{!"long", !20, i64 0}
!25 = !{!"", !23, i64 0, !21, i64 8, !24, i64 16, !21, i64 24}
!26 = !{!25, !24, i64 16}
!27 = !{!25, !21, i64 24}
!28 = !{!25, !23, i64 0}
!29 = !{!25, !21, i64 8}
!30 = !{!"_expr", !21, i64 0, !20, i64 8, !21, i64 40, !21, i64 44, !21, i64 48, !21, i64 52}
!31 = !{!30, !21, i64 40}
!32 = !{!30, !21, i64 48}
!33 = !{!30, !21, i64 44}
!34 = !{!30, !21, i64 52}
!35 = !{!30, !21, i64 0}
!36 = !{!20, !20, i64 0}
!37 = !{!"p1 _ZTS7_object", !23, i64 0}
!38 = !{!37, !37, i64 0}
!39 = !{!"any p2 pointer", !23, i64 0}
!40 = !{!"", !24, i64 0, !39, i64 8, !20, i64 16}
!41 = !{!40, !24, i64 0}
!42 = !{!"", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !24, i64 64, !24, i64 72, !24, i64 80, !21, i64 88}
!43 = !{!42, !37, i64 24}
!44 = !{!"p1 _ZTS5_stmt", !23, i64 0}
!45 = !{!44, !44, i64 0}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!"p1 _ZTS11_typeobject", !23, i64 0}
!48 = !{!"_object", !20, i64 0, !47, i64 8}
!49 = !{!"p1 omnipotent char", !23, i64 0}
!50 = !{!"", !21, i64 0, !21, i64 4, !21, i64 8, !21, i64 12}
!51 = !{!"p1 _ZTS15_symtable_entry", !23, i64 0}
!52 = !{!"p1 _ZTS8symtable", !23, i64 0}
!53 = !{!"_symtable_entry", !48, i64 0, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !21, i64 72, !49, i64 80, !21, i64 88, !21, i64 92, !21, i64 92, !21, i64 92, !21, i64 96, !21, i64 100, !21, i64 100, !21, i64 100, !21, i64 100, !21, i64 100, !21, i64 100, !21, i64 100, !21, i64 100, !21, i64 101, !21, i64 101, !21, i64 101, !21, i64 101, !21, i64 101, !21, i64 101, !21, i64 104, !50, i64 108, !51, i64 128, !52, i64 136}
!54 = !{!53, !37, i64 32}
!55 = !{!"PyVarObject", !48, i64 0, !24, i64 16}
!56 = !{!55, !24, i64 16}
!57 = !{!"p2 _ZTS7_object", !39, i64 0}
!58 = !{!"", !55, i64 0, !57, i64 24, !24, i64 32}
!59 = !{!58, !57, i64 24}
!60 = !{!"_stmt", !21, i64 0, !20, i64 8, !21, i64 64, !21, i64 68, !21, i64 72, !21, i64 76}
!61 = !{!60, !21, i64 64}
!62 = !{!60, !21, i64 72}
!63 = !{!60, !21, i64 68}
!64 = !{!60, !21, i64 76}
!65 = !{!42, !37, i64 48}
!66 = !{!53, !21, i64 72}
!67 = !{!24, !24, i64 0}
!68 = !{!42, !37, i64 32}
!69 = !{!"p1 _ZTS5_expr", !23, i64 0}
!70 = !{!69, !69, i64 0}
!71 = !{!"_PyUnicodeObject_state", !21, i64 0, !21, i64 0, !21, i64 0, !21, i64 0, !21, i64 0}
!72 = !{!"", !48, i64 0, !24, i64 16, !24, i64 24, !71, i64 32}
!73 = !{!72, !24, i64 16}
!74 = !{!42, !37, i64 40}
!75 = !{!"", !37, i64 0, !21, i64 8, !23, i64 16, !24, i64 24, !24, i64 32}
!76 = !{!75, !23, i64 16}
!77 = !{!"p1 _ZTS8_pattern", !23, i64 0}
!78 = !{!"_pattern", !21, i64 0, !20, i64 8, !21, i64 40, !21, i64 44, !21, i64 48, !21, i64 52}
!79 = !{!78, !21, i64 0}
!80 = !{!78, !21, i64 40}
!81 = !{!78, !21, i64 48}
!82 = !{!78, !21, i64 44}
!83 = !{!78, !21, i64 52}
!84 = !{!75, !37, i64 0}
!85 = !{!75, !21, i64 8}
!86 = !{!75, !24, i64 24}
!87 = !{!48, !47, i64 8}
!88 = !{!"p1 _ZTS11PyMethodDef", !23, i64 0}
!89 = !{!"p1 _ZTS11PyMemberDef", !23, i64 0}
!90 = !{!"p1 _ZTS11PyGetSetDef", !23, i64 0}
!91 = !{!"short", !20, i64 0}
!92 = !{!"_typeobject", !55, i64 0, !49, i64 24, !24, i64 32, !24, i64 40, !23, i64 48, !24, i64 56, !23, i64 64, !23, i64 72, !23, i64 80, !23, i64 88, !23, i64 96, !23, i64 104, !23, i64 112, !23, i64 120, !23, i64 128, !23, i64 136, !23, i64 144, !23, i64 152, !23, i64 160, !24, i64 168, !49, i64 176, !23, i64 184, !23, i64 192, !23, i64 200, !24, i64 208, !23, i64 216, !23, i64 224, !88, i64 232, !89, i64 240, !90, i64 248, !47, i64 256, !37, i64 264, !23, i64 272, !23, i64 280, !24, i64 288, !23, i64 296, !23, i64 304, !23, i64 312, !23, i64 320, !23, i64 328, !37, i64 336, !37, i64 344, !37, i64 352, !23, i64 360, !37, i64 368, !23, i64 376, !21, i64 384, !23, i64 392, !23, i64 400, !20, i64 408, !91, i64 410}
!93 = !{!92, !24, i64 168}
!94 = !{!91, !91, i64 0}
!95 = !{!23, !23, i64 0}
!96 = !{!"p1 _ZTS4_arg", !23, i64 0}
!97 = !{!"_arguments", !23, i64 0, !23, i64 8, !96, i64 16, !23, i64 24, !23, i64 32, !96, i64 40, !23, i64 48}
!98 = !{!97, !23, i64 48}
!99 = !{!97, !23, i64 24}
!100 = !{!97, !23, i64 32}
!101 = !{!42, !24, i64 64}
!102 = !{!97, !23, i64 8}
!103 = !{!96, !96, i64 0}
!104 = !{!"_arg", !37, i64 0, !69, i64 8, !37, i64 16, !21, i64 24, !21, i64 28, !21, i64 32, !21, i64 36}
!105 = !{!104, !37, i64 0}
!106 = !{!97, !23, i64 0}
!107 = !{!42, !24, i64 72}
!108 = !{!42, !24, i64 80}
!109 = !{!"p1 _ZTS19_PyCoMonitoringData", !23, i64 0}
!110 = !{!"PyCodeObject", !55, i64 0, !37, i64 24, !37, i64 32, !37, i64 40, !21, i64 48, !21, i64 52, !21, i64 56, !21, i64 60, !21, i64 64, !21, i64 68, !21, i64 72, !21, i64 76, !21, i64 80, !21, i64 84, !21, i64 88, !21, i64 92, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !23, i64 152, !23, i64 160, !24, i64 168, !109, i64 176, !24, i64 184, !21, i64 192, !23, i64 200, !20, i64 208}
!111 = !{!110, !37, i64 96}
!112 = !{!"p1 _ZTS8_keyword", !23, i64 0}
!113 = !{!112, !112, i64 0}
!114 = !{!"_keyword", !37, i64 0, !69, i64 8, !21, i64 16, !21, i64 20, !21, i64 24, !21, i64 28}
!115 = !{!114, !37, i64 0}
!116 = !{!114, !21, i64 16}
!117 = !{!114, !21, i64 24}
!118 = !{!114, !21, i64 20}
!119 = !{!114, !21, i64 28}
!120 = !{!114, !69, i64 8}
!121 = !{!"", !21, i64 0}
!122 = !{!"", !21, i64 0, !121, i64 4, !50, i64 8, !121, i64 24, !23, i64 32}
!123 = !{!122, !21, i64 0}
!124 = !{!122, !23, i64 32}
!125 = !{!92, !49, i64 24}
!126 = !{!77, !77, i64 0}
!127 = !{!75, !24, i64 32}
!128 = !{!"p1 _ZTS14_excepthandler", !23, i64 0}
!129 = !{!128, !128, i64 0}
!130 = !{!"_excepthandler", !21, i64 0, !20, i64 8, !21, i64 32, !21, i64 36, !21, i64 40, !21, i64 44}
!131 = !{!130, !21, i64 32}
!132 = !{!130, !21, i64 40}
!133 = !{!130, !21, i64 36}
end_hunk_1
