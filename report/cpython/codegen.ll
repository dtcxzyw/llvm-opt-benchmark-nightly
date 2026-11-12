Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/codegen?download=true
inline.NumInlined: 724
inline.NumDeleted: 94
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@pattern_helper_sequence_subscr:bb.a
  %i.j = load i32, ptr %i.i, align 8, !tbaa !384
  %i.k = icmp eq i32 %i.j, 7
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !341
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
  %i.aa = load i32, ptr %i.s, align 8, !tbaa !341 ; 2 uses
  %.not.i72 = icmp sgt i32 %i.aa, -1
  br i1 %.not.i72, label %bb.k, label %Py_DECREF.exit73

bb.k:                                             ; preds = %codegen_addop_load_const.exit
  %i.ab = add nsw i32 %i.aa, -1                   ; 2 uses
  store i32 %i.ab, ptr %i.s, align 8, !tbaa !341
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
  %i.ap = load i32, ptr %i.ah, align 8, !tbaa !341 ; 2 uses
  %.not.i = icmp sgt i32 %i.ap, -1
  br i1 %.not.i, label %bb.q, label %Py_DECREF.exit

bb.q:                                             ; preds = %codegen_addop_load_const.exit77
  %i.aq = add nsw i32 %i.ap, -1                   ; 2 uses
  store i32 %i.aq, ptr %i.ah, align 8, !tbaa !341
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
  %i.ay = load i32, ptr %i.g, align 8, !tbaa !390
  store i32 1, ptr %i.g, align 8, !tbaa !390
  %i.az = tail call fastcc i32 @codegen_pattern(ptr noundef %0, ptr noundef nonnull %i.i, ptr noundef nonnull %5), !inline_history !8
  %i.ba = icmp eq i32 %i.az, -1
  br i1 %i.ba, label %.loopexit, label %codegen_pattern_subpattern.exit

codegen_pattern_subpattern.exit:                  ; preds = %bb.u
  store i32 %i.ay, ptr %i.g, align 8, !tbaa !390
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.e, %codegen_pattern_subpattern.exit
  %i.bb = add nuw nsw i64 %.05484, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bb, %i.e
  br i1 %exitcond.not, label %.critedge70.loopexit, label %bb.c, !llvm.loop !625

.critedge70.loopexit:                             ; preds = %.critedge
  %.pre = load i64, ptr %i.a, align 8, !tbaa !432
  %i.bc = add i64 %.pre, -1
  br label %.critedge70

.critedge70:                                      ; preds = %bb.a, %.critedge70.loopexit, %bb.b
  %i.bd = phi i64 [ %i.bc, %.critedge70.loopexit ], [ %i.b, %bb.b ], [ %i.b, %bb.a ]
  store i64 %i.bd, ptr %i.a, align 8, !tbaa !432
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
define internal fastcc noundef range(i32 -1, 1) i32 @pattern_helper_sequence_unpack(ptr noundef %0, i64 %1, i64 %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef nonnull captures(none) %4) unnamed_addr #3 !guid !629 {
bb.a:
  %i.a = icmp eq ptr %3, null                     ; 2 uses
  br i1 %i.a, label %._crit_edge.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %3, align 8, !tbaa !346    ; 7 uses
  %.not52.i = icmp sgt i64 %i.b, 0
  br i1 %.not52.i, label %.lr.ph.i, label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.c = getelementptr i8, ptr %3, i64 16         ; 2 uses
  br label %.outer.i.split

.outer.i.split.us:                                ; preds = %.thread60.i, %bb.c
  %.03254.i.us = phi i64 [ %i.g, %bb.c ], [ %i.v, %.thread60.i ] ; 2 uses
  %i.d = getelementptr [8 x i8], ptr %i.c, i64 %.03254.i.us
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !431
  %i.f = load i32, ptr %i.e, align 8, !tbaa !384
  %.not50 = icmp eq i32 %i.f, 6
  br i1 %.not50, label %codegen_pattern_unpack_helper.exit, label %bb.c

bb.c:                                             ; preds = %.outer.i.split.us
  %i.g = add nuw nsw i64 %.03254.i.us, 1          ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.g, %i.b
  br i1 %exitcond.not.i.us, label %._crit_edge.i, label %.outer.i.split.us, !llvm.loop !627

.outer.i.split:                                   ; preds = %.lr.ph.i, %bb.g
  %.03254.i = phi i64 [ %i.u, %bb.g ], [ 0, %.lr.ph.i ] ; 6 uses
  %i.h = getelementptr [8 x i8], ptr %i.c, i64 %.03254.i
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !431
  %i.j = load i32, ptr %i.i, align 8, !tbaa !384
  %.not.not = icmp eq i32 %i.j, 6
  br i1 %.not.not, label %bb.d, label %bb.g

bb.d:                                             ; preds = %.outer.i.split
  %i.k = icmp samesign ugt i64 %.03254.i, 255
  br i1 %i.k, label %codegen_pattern_unpack_helper.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = xor i64 %.03254.i, -1
  %i.m = add nsw i64 %i.b, %i.l                   ; 2 uses
  %i.n = icmp sgt i64 %i.m, 8388606
  br i1 %i.n, label %codegen_pattern_unpack_helper.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.p = shl nsw i64 %i.m, 8
  %i.q = or disjoint i64 %i.p, %.03254.i
  %i.r = trunc nsw i64 %i.q to i32
  %i.s = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.o, i32 noundef 118, i32 noundef %i.r, i64 %1, i64 %2) #10
  %i.t = icmp eq i32 %i.s, -1
  br i1 %i.t, label %codegen_pattern_unpack_helper.exit.thread, label %.thread60.i

bb.g:                                             ; preds = %.outer.i.split
  %i.u = add nuw nsw i64 %.03254.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.u, %i.b
  br i1 %exitcond.not.i, label %._crit_edge.thread.i, label %.outer.i.split, !llvm.loop !627

.thread60.i:                                      ; preds = %bb.f
  %i.v = add nuw nsw i64 %.03254.i, 1             ; 2 uses
  %exitcond.not62.i = icmp eq i64 %i.v, %i.b
  br i1 %exitcond.not62.i, label %._crit_edge.i, label %.outer.i.split.us

._crit_edge.thread.i:                             ; preds = %bb.g, %bb.b, %bb.a
  %i.w = phi i64 [ 0, %bb.a ], [ %i.b, %bb.b ], [ %i.b, %bb.g ]
  %i.x = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.y = trunc i64 %i.w to i32
  %i.z = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.x, i32 noundef 119, i32 noundef %i.y, i64 %1, i64 %2) #10
  %i.aa = icmp eq i32 %i.z, -1                    ; 2 uses
  %brmerge = or i1 %i.aa, %i.a
  %.mux = sext i1 %i.aa to i32
  br i1 %brmerge, label %codegen_pattern_unpack_helper.exit.thread, label %._crit_edge.i

codegen_pattern_unpack_helper.exit:               ; preds = %.outer.i.split.us, %bb.d, %bb.e
  %.str.256.sink = phi ptr [ @.str.256, %bb.d ], [ @.str.256, %bb.e ], [ @.str.257, %.outer.i.split.us ]
  %i.ab = tail call i32 (ptr, i64, i64, ptr, ...) @_PyCompile_Error(ptr noundef %0, i64 %1, i64 %2, ptr noundef nonnull %.str.256.sink) #10
  %i.ac = icmp eq i32 %i.ab, -1
  br i1 %i.ac, label %codegen_pattern_unpack_helper.exit.thread, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %._crit_edge.thread.i, %codegen_pattern_unpack_helper.exit, %.thread60.i
  %i.ad = load i64, ptr %3, align 8, !tbaa !346   ; 3 uses
  %i.ae = getelementptr i8, ptr %4, i64 32        ; 4 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !432
  %i.ag = add i64 %i.af, %i.ad
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !432
  %.not2245 = icmp sgt i64 %i.ad, 0
  br i1 %.not2245, label %.lr.ph, label %codegen_pattern_unpack_helper.exit.thread

.lr.ph:                                           ; preds = %._crit_edge.i
  %i.ah = getelementptr i8, ptr %3, i64 16
  %i.ai = getelementptr i8, ptr %4, i64 8         ; 3 uses
  %.pre = load i32, ptr %i.ai, align 8, !tbaa !390
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.i
  %.01846 = phi i64 [ 0, %.lr.ph ], [ %i.ap, %bb.i ] ; 2 uses
  %i.aj = load i64, ptr %i.ae, align 8, !tbaa !432
  %i.ak = add i64 %i.aj, -1
  store i64 %i.ak, ptr %i.ae, align 8, !tbaa !432
  %i.al = getelementptr [8 x i8], ptr %i.ah, i64 %.01846
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !431
  store i32 1, ptr %i.ai, align 8, !tbaa !390
  %i.an = tail call fastcc i32 @codegen_pattern(ptr noundef %0, ptr noundef %i.am, ptr noundef nonnull %4), !inline_history !8
  %i.ao = icmp eq i32 %i.an, -1
  br i1 %i.ao, label %codegen_pattern_unpack_helper.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 %.pre, ptr %i.ai, align 8, !tbaa !390
  %i.ap = add nuw nsw i64 %.01846, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ap, %i.ad
  br i1 %exitcond.not, label %codegen_pattern_unpack_helper.exit.thread, label %bb.h, !llvm.loop !628

codegen_pattern_unpack_helper.exit.thread:        ; preds = %bb.h, %bb.i, %._crit_edge.thread.i, %bb.f, %._crit_edge.i, %codegen_pattern_unpack_helper.exit
  %.4 = phi i32 [ -1, %bb.f ], [ -1, %codegen_pattern_unpack_helper.exit ], [ %.mux, %._crit_edge.thread.i ], [ 0, %._crit_edge.i ], [ -1, %bb.h ], [ 0, %bb.i ]
  ret i32 %.4
}

declare ptr @PySet_New(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc i32 @codegen_pattern_helper_store_name(ptr noundef %0, i64 %1, i64 %2, ptr noundef %3, ptr nofree noundef nonnull readonly captures(none) %4) unnamed_addr #3 !guid !630 {
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
  %i.e = load ptr, ptr %4, align 8, !tbaa !389
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
  %i.i = load i64, ptr %i.h, align 8, !tbaa !432
  %i.j = load ptr, ptr %4, align 8, !tbaa !389
  %i.k = getelementptr i8, ptr %i.j, i64 16
  %.val = load i64, ptr %i.k, align 8, !tbaa !361
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
  %i.u = load ptr, ptr %4, align 8, !tbaa !389
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
define internal fastcc i32 @validate_kwd_attrs(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #3 !guid !632 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %.loopexit43, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8, !tbaa !346    ; 4 uses
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
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !343  ; 2 uses
  %i.f = add nuw nsw i64 %.03648, 1               ; 4 uses
  %.not45 = icmp slt i64 %i.f, %i.b
  br i1 %.not45, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.03246 = phi i64 [ %i.v, %bb.d ], [ %i.f, %bb.c ] ; 3 uses
  %i.g = getelementptr [8 x i8], ptr %i.c, i64 %.03246
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !343
  %i.i = tail call i32 @PyUnicode_Compare(ptr noundef %i.e, ptr noundef %i.h) #10
  %.not.not = icmp eq i32 %i.i, 0
  br i1 %.not.not, label %.thread41, label %bb.d

.thread41:                                        ; preds = %.lr.ph
  %i.j = getelementptr i8, ptr %2, i64 16
  %i.k = getelementptr [8 x i8], ptr %i.j, i64 %.03246
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !431  ; 4 uses
  %i.m = getelementptr i8, ptr %i.l, i64 40
  %i.n = load i32, ptr %i.m, align 8, !tbaa !385
  %.sroa.0.0.insert.ext = zext i32 %i.n to i64
  %i.o = getelementptr i8, ptr %i.l, i64 48
  %i.p = load i32, ptr %i.o, align 8, !tbaa !386
  %.sroa.0.4.insert.ext = zext i32 %i.p to i64
  %.sroa.0.4.insert.shift = shl nuw i64 %.sroa.0.4.insert.ext, 32
  %.sroa.0.4.insert.insert = or disjoint i64 %.sroa.0.4.insert.shift, %.sroa.0.0.insert.ext
  %i.q = getelementptr i8, ptr %i.l, i64 44
  %i.r = load i32, ptr %i.q, align 4, !tbaa !387
  %.sroa.5.8.insert.ext = zext i32 %i.r to i64
  %i.s = getelementptr i8, ptr %i.l, i64 52
  %i.t = load i32, ptr %i.s, align 4, !tbaa !388
  %.sroa.5.12.insert.ext = zext i32 %i.t to i64
  %.sroa.5.12.insert.shift = shl nuw i64 %.sroa.5.12.insert.ext, 32
  %.sroa.5.12.insert.insert = or disjoint i64 %.sroa.5.12.insert.shift, %.sroa.5.8.insert.ext
  %i.u = tail call i32 (ptr, i64, i64, ptr, ...) @_PyCompile_Error(ptr noundef %0, i64 %.sroa.0.4.insert.insert, i64 %.sroa.5.12.insert.insert, ptr noundef nonnull @.str.266, ptr noundef %i.e) #10
  br label %.loopexit43

bb.d:                                             ; preds = %.lr.ph
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
  %i.gh = load i32, ptr %i.cq, align 8, !tbaa !336
  %i.gi = getelementptr i8, ptr %7, i64 48
  %i.gj = load i32, ptr %i.gi, align 8, !tbaa !337
  %i.gk = load i32, ptr %i.cu, align 4, !tbaa !338
  %i.gl = getelementptr i8, ptr %7, i64 52
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !339
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
define internal fastcc range(i32 -1, 1) i32 @restore_inlined_comprehension_locals(ptr noundef %0, i64 %1, i64 %2, ptr nofree noundef nonnull readonly captures(none) %3) unnamed_addr #3 !guid !709 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !452
  %i.b = getelementptr i8, ptr %i.a, i64 16
  %.val = load i64, ptr %i.b, align 8, !tbaa !361 ; 2 uses
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
  br i1 %i.i, label %.lr.ph, label %._crit_edge21, !llvm.loop !708

.lr.ph:                                           ; preds = %.preheader.preheader, %.preheader
  %.020 = phi i64 [ %.0, %.preheader ], [ %.019, %.preheader.preheader ] ; 3 uses
  %i.j = load ptr, ptr %3, align 8, !tbaa !452
  %i.k = tail call ptr @PyList_GetItem(ptr noundef %i.j, i64 noundef %.020) #10 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %._crit_edge21, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.m = tail call ptr @_PyCompile_Metadata(ptr noundef %0) #10
  %i.n = getelementptr i8, ptr %i.m, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !373
  %i.p = tail call fastcc i32 @codegen_addop_name(ptr noundef %0, i64 %1, i64 %2, i32 noundef 266, ptr noundef %i.o, ptr noundef nonnull %i.k)
  %i.q = icmp eq i32 %i.p, -1
  br i1 %i.q, label %._crit_edge, label %.preheader, !llvm.loop !708

._crit_edge:                                      ; preds = %bb.b
  br label %._crit_edge21, !llvm.loop !708

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
define internal fastcc i32 @unpack_helper(ptr noundef %0, i64 %1, i64 %2, ptr nofree noundef readonly captures(address_is_null) %3) unnamed_addr #3 !guid !711 {
bb.a:
  %i.a = icmp eq ptr %3, null
  br i1 %i.a, label %._crit_edge.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %3, align 8, !tbaa !346    ; 6 uses
  %.not52 = icmp sgt i64 %i.b, 0
  br i1 %.not52, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.b
  %i.c = getelementptr i8, ptr %3, i64 16
  br label %.outer

.outer:                                           ; preds = %.thread60, %.lr.ph
  %.03254.ph = phi i64 [ %i.w, %.thread60 ], [ 0, %.lr.ph ]
  %i.d = phi i1 [ true, %.thread60 ], [ false, %.lr.ph ]
  %i.e = phi i1 [ false, %.thread60 ], [ true, %.lr.ph ]
  br label %bb.c

bb.c:                                             ; preds = %.outer, %bb.j
  %.03254 = phi i64 [ %i.v, %bb.j ], [ %.03254.ph, %.outer ] ; 6 uses
  %i.f = getelementptr [8 x i8], ptr %i.c, i64 %.03254
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !375
  %i.h = load i32, ptr %i.g, align 8, !tbaa !340
  %i.i = icmp ne i32 %i.h, 25                     ; 2 uses
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
  br i1 %i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = tail call i32 (ptr, i64, i64, ptr, ...) @_PyCompile_Error(ptr noundef %0, i64 %1, i64 %2, ptr noundef nonnull @.str.297) #10
  br label %.thread46

bb.j:                                             ; preds = %bb.h
  %i.v = add nuw nsw i64 %.03254, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.v, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !710

.thread60:                                        ; preds = %bb.g
  %i.w = add nuw nsw i64 %.03254, 1               ; 2 uses
  %exitcond.not62 = icmp eq i64 %i.w, %i.b
  br i1 %exitcond.not62, label %._crit_edge.thread64, label %.outer, !llvm.loop !710

._crit_edge:                                      ; preds = %bb.j
  br i1 %i.e, label %._crit_edge.thread, label %._crit_edge.thread64

._crit_edge.thread:                               ; preds = %bb.a, %bb.b, %._crit_edge
  %i.x = phi i64 [ %i.b, %._crit_edge ], [ %i.b, %bb.b ], [ 0, %bb.a ]
  %i.y = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.z = trunc i64 %i.x to i32
  %i.aa = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.y, i32 noundef 119, i32 noundef %i.z, i64 %1, i64 %2) #10
  %i.ab = icmp eq i32 %i.aa, -1
  br i1 %i.ab, label %.thread46, label %._crit_edge.thread64

._crit_edge.thread64:                             ; preds = %.thread60, %._crit_edge.thread, %._crit_edge
  br label %.thread46

.thread46:                                        ; preds = %bb.g, %bb.i, %bb.f, %._crit_edge.thread, %._crit_edge.thread64
  %.338 = phi i32 [ 0, %._crit_edge.thread64 ], [ -1, %._crit_edge.thread ], [ %i.n, %bb.f ], [ %i.u, %bb.i ], [ -1, %bb.g ]
  ret i32 %.338
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

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

!0 = distinct !{!0, !351}
!1 = distinct !{!1, !351}
!2 = distinct !{!2, !351}
!3 = distinct !{null}
!4 = distinct !{!4, !351}
!5 = distinct !{!5, !351}
!6 = distinct !{!6, !351}
!7 = distinct !{!7, !351}
!8 = distinct !{null}
!9 = distinct !{null}
!10 = distinct !{null}
!11 = distinct !{!11, !351}
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
!23 = !{i64 -817484709537621138}
!24 = !{i64 -9016730649446447809}
!25 = !{i64 -6707186916855492471}
!26 = !{i64 2482928398969741605}
!27 = !{i64 1234251876134908169}
!28 = !{i64 1134608018186702751}
!29 = !{i64 -8322285408286036734}
!30 = !{i64 6958211280765234471}
!31 = !{i64 2227002702373672736}
!32 = !{i64 -8316837945704194461}
!33 = !{i64 5851244721876212804}
!34 = !{i64 2721075157957369843}
!35 = !{i64 6529126093346654205}
!36 = !{i64 7867432901668063500}
!37 = !{i64 8532906493769930435}
!38 = !{i64 -4131048405787217355}
!39 = !{i64 -4285047792673694859}
!40 = !{i64 -8723480772343906858}
!41 = !{i64 6252389377166086581}
!42 = !{i64 5567719060872471253}
!43 = !{i64 -6514528429584282558}
!44 = !{i64 -5739781060740283862}
!45 = !{i64 -8873296437747517103}
!46 = !{i64 3499422100038497120}
!47 = !{i64 -5747942411489902161}
!48 = !{i64 7943131505423987922}
!49 = !{i64 -7430581814670765791}
!50 = !{i64 -2153261044390122956}
!51 = !{i64 7214047665173896781}
!52 = !{i64 2025299741986379323}
!53 = !{i64 -8468126068330269896}
!54 = !{i64 -6062800756445228917}
!55 = !{i64 -7581128859118737885}
!56 = !{i64 4118029805453019015}
!57 = !{i64 -4844909553479343360}
!58 = !{i64 1392999246904057253}
!59 = !{i64 5043982274927277818}
!60 = !{i64 -9185244311996612528}
!61 = !{i64 -4644579725833511346}
!62 = !{i64 5117959009609959536}
!63 = !{i64 -3938996477284774639}
!64 = !{i64 -9086763818919899371}
!65 = !{i64 -3727542258120001205}
!66 = !{i64 7534610594328499621}
!67 = !{i64 3418737121293658772}
!68 = !{i64 -8461830934795490449}
!69 = !{i64 -4527647166537576946}
!70 = !{i64 -3977054037517431234}
!71 = !{i64 -4876520908343534138}
!72 = !{i64 463374063682351240}
!73 = !{i64 -1551339337215183679}
!74 = !{i64 -4586448619458144424}
!75 = !{i64 1490769937675267821}
!76 = !{i64 -7101021737604335812}
!77 = !{i64 5626651947794332870}
!78 = !{i64 -4421718452122081224}
!79 = !{i64 1758795354691707031}
!80 = !{i64 -6903623852031665548}
!81 = !{i64 5906508511255771366}
!82 = !{i64 5564141024742989818}
!83 = !{i64 -3241223765768606863}
!84 = !{i64 4355740230754105354}
!85 = !{i64 -8338208580766743723}
!86 = !{i64 -8666349200544168997}
!87 = !{i64 -2971586985270348890}
!88 = !{i64 -9181252251173451454}
!89 = !{i64 3860027061592291685}
!90 = !{i64 4481139809444615712}
!91 = !{i64 1454835083948893433}
!92 = !{i64 3484910055038139625}
!93 = !{i64 -38918460887526652}
!94 = !{i64 8330233405646846748}
!95 = !{i64 -4682417140272545547}
!96 = !{i64 6585222512694419501}
!97 = !{i64 -4071082764788738828}
!98 = !{i64 8699592758785559604}
!99 = !{i64 5425436016957489938}
!100 = !{i64 -9107913366183533787}
!101 = !{i64 916302556793827211}
!102 = !{i64 -2736625643423799044}
!103 = !{i64 7665015516280383684}
!104 = !{i64 7892468415018447543}
!105 = !{i64 -6807504956863128185}
!106 = !{i64 -901571322885655801}
!107 = !{i64 -916028951146770174}
!108 = !{i64 7949210014408795945}
!109 = !{i64 -6662825243845733185}
!110 = !{i64 -5039384200432156836}
!111 = !{i64 -7438322296628931043}
!112 = !{i64 -1911707153034219091}
!113 = !{i64 -7711067839808677805}
!114 = !{i64 3323886291019923704}
!115 = !{i64 -2688976998518584849}
!116 = !{i64 7748234653544166619}
!117 = !{i64 443259010032515634}
!118 = !{i64 -7005931752356289156}
!119 = !{i64 1988239597762005384}
!120 = !{i64 9103173883157264696}
!121 = !{i64 -66557505327875173}
!122 = !{i64 2079271406714114323}
!123 = !{i64 4830776460500722909}
!124 = !{i64 -3664824750617593923}
!125 = !{i64 2783388856693376260}
!126 = !{i64 -5432328881842257275}
!127 = !{i64 -747712591156407787}
!128 = !{i64 -2879210456263285899}
!129 = !{i64 7607063338215668474}
!130 = !{i64 5586712539940413295}
!131 = !{i64 5999399589415095318}
!132 = !{i64 -4321620430473307340}
!133 = !{i64 6859890521304846161}
!134 = !{i64 476659057712773424}
!135 = !{i64 -3205026981587645090}
!136 = !{i64 -7388277074385917389}
!137 = !{i64 -272086974440857615}
end_hunk_1
