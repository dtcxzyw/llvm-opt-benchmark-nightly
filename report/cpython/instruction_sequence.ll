inline.NumInlined: 24
inline.NumDeleted: 13
begin_hunk_0_@_PyInstructionSequence_Addop:bb.a
  store ptr %i.o, ptr %i.a, align 8, !tbaa !30
  %i.p = load i32, ptr %i.c, align 8, !tbaa !24
  store i32 %i.p, ptr %i.d, align 8, !tbaa !40
  %i.q = load i32, ptr %i.j, align 4, !tbaa !27   ; 3 uses
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr %i.j, align 4, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  %i.s = icmp eq i32 %i.q, -1
  br i1 %i.s, label %bb.c, label %bb.b

bb.b:                                             ; preds = %instr_sequence_next_inst.exit
  %i.t = sext i32 %i.q to i64
  %i.u = getelementptr [44 x i8], ptr %i.o, i64 %i.t ; 4 uses
  store i32 %1, ptr %i.u, align 4, !tbaa !31
  %i.v = getelementptr i8, ptr %i.u, i64 4
  store i32 %2, ptr %i.v, align 4, !tbaa !37
  %i.w = getelementptr i8, ptr %i.u, i64 8
  store i64 %3, ptr %i.w, align 4
  %.sroa.2.0..sroa_idx = getelementptr i8, ptr %i.u, i64 16
  store i64 %4, ptr %.sroa.2.0..sroa_idx, align 4
  br label %bb.c

bb.c:                                             ; preds = %instr_sequence_next_inst.exit.thread, %instr_sequence_next_inst.exit, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -1, %instr_sequence_next_inst.exit ], [ -1, %instr_sequence_next_inst.exit.thread ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @_PyInstructionSequence_InsertInstruction(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 %4, i64 %5) local_unnamed_addr #1 {
bb.a:
  %6 = alloca %struct._Py_c_array_t, align 8      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  %i.a = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30
  store ptr %i.b, ptr %6, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !40
  store i32 %i.e, ptr %i.c, align 8, !tbaa !24
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 0, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 44, ptr %i.g, align 8, !tbaa !25
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 100, ptr %i.h, align 8, !tbaa !26
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i32 0, ptr %i.i, align 4
  %i.j = getelementptr i8, ptr %0, i64 28         ; 3 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !27
  %i.l = add i32 %i.k, 1
  %i.m = call i32 @_Py_CArray_EnsureCapacity(ptr noundef nonnull %6, i32 noundef %i.l) #7
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %instr_sequence_next_inst.exit.thread, label %instr_sequence_next_inst.exit

instr_sequence_next_inst.exit.thread:             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  br label %.loopexit

instr_sequence_next_inst.exit:                    ; preds = %bb.a
  %i.o = load ptr, ptr %6, align 8, !tbaa !21     ; 2 uses
  store ptr %i.o, ptr %i.a, align 8, !tbaa !30
  %i.p = load i32, ptr %i.c, align 8, !tbaa !24
  store i32 %i.p, ptr %i.d, align 8, !tbaa !40
  %i.q = load i32, ptr %i.j, align 4, !tbaa !27   ; 4 uses
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr %i.j, align 4, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  %i.s = icmp eq i32 %i.q, -1
  br i1 %i.s, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %instr_sequence_next_inst.exit
  %.02632 = add i32 %i.q, -1                      ; 2 uses
  %.not33 = icmp slt i32 %.02632, %1
  br i1 %.not33, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !30
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.t = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.o, %.preheader ]
  %i.u = sext i32 %1 to i64
  %i.v = getelementptr [44 x i8], ptr %i.t, i64 %i.u ; 4 uses
  store i32 %2, ptr %i.v, align 4, !tbaa !31
  %i.w = getelementptr i8, ptr %i.v, i64 4
  store i32 %3, ptr %i.w, align 4, !tbaa !37
  %i.x = getelementptr i8, ptr %i.v, i64 8
  store i64 %4, ptr %i.x, align 4
  %.sroa.2.0..sroa_idx = getelementptr i8, ptr %i.v, i64 16
  store i64 %5, ptr %.sroa.2.0..sroa_idx, align 4
  %i.y = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !19   ; 2 uses
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph38, label %.loopexit

.lr.ph38:                                         ; preds = %._crit_edge
  %i.ab = getelementptr i8, ptr %0, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !20
  br label %bb.b

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.02635 = phi i32 [ %.026, %.lr.ph ], [ %.02632, %.preheader ] ; 3 uses
  %.026.in34 = phi i32 [ %.02635, %.lr.ph ], [ %i.q, %.preheader ]
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !30  ; 2 uses
  %i.ae = sext i32 %.026.in34 to i64
  %i.af = getelementptr [44 x i8], ptr %i.ad, i64 %i.ae
  %i.ag = sext i32 %.02635 to i64
  %i.ah = getelementptr [44 x i8], ptr %i.ad, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.af, ptr noundef nonnull align 4 dereferenceable(44) %i.ah, i64 44, i1 false), !tbaa.struct !41
  %.026 = add i32 %.02635, -1                     ; 2 uses
  %.not = icmp slt i32 %.026, %1
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !42

bb.b:                                             ; preds = %.lr.ph38, %bb.d
  %i.ai = phi i32 [ %i.z, %.lr.ph38 ], [ %i.am, %bb.d ]
  %indvars.iv = phi i64 [ 0, %.lr.ph38 ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.aj = getelementptr [4 x i8], ptr %i.ac, i64 %indvars.iv ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !7  ; 2 uses
  %.not30 = icmp slt i32 %i.ak, %1
  br i1 %.not30, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.al = add i32 %i.ak, 1
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !7
  %.pre40 = load i32, ptr %i.y, align 8, !tbaa !19
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.am = phi i32 [ %i.ai, %bb.b ], [ %.pre40, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.an = sext i32 %i.am to i64
  %i.ao = icmp slt i64 %indvars.iv.next, %i.an
  br i1 %i.ao, label %bb.b, label %.loopexit, !llvm.loop !43

.loopexit:                                        ; preds = %bb.d, %._crit_edge, %instr_sequence_next_inst.exit.thread, %instr_sequence_next_inst.exit
  %.025 = phi i32 [ -1, %instr_sequence_next_inst.exit ], [ -1, %instr_sequence_next_inst.exit.thread ], [ 0, %._crit_edge ], [ 0, %bb.d ]
  ret i32 %.025
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_PyInstructionSequence_GetInstruction(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct._PyInstruction) align 4 captures(none) initializes((0, 44)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.c = sext i32 %2 to i64
  %i.d = getelementptr [44 x i8], ptr %i.b, i64 %i.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %0, ptr noundef nonnull align 4 dereferenceable(44) %i.d, i64 44, i1 false), !tbaa.struct !41
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden noundef i32 @_PyInstructionSequence_SetAnnotationsCode(ptr nofree noundef writeonly captures(none) initializes((64, 72)) %0, ptr noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64
  store ptr %1, ptr %i.a, align 8, !tbaa !44
  ret i32 0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @_PyInstructionSequence_AddNested(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @PyList_New(i64 noundef 0) #7 ; 3 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !45
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi ptr [ %i.d, %bb.b ], [ %i.b, %bb.a ]
  %i.g = tail call i32 @PyList_Append(ptr noundef nonnull %i.f, ptr noundef %1) #7
  %.lobit = ashr i32 %i.g, 31
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ %.lobit, %bb.c ]
  ret i32 %.0
}

declare ptr @PyList_New(i64 noundef) local_unnamed_addr #4

declare i32 @PyList_Append(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden void @PyInstructionSequence_Fini(ptr nofree noundef captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 4 uses
  %.not.i14 = icmp eq ptr %i.b, null
  br i1 %.not.i14, label %Py_XDECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.b, align 8, !tbaa !46   ; 2 uses
  %.not.i.i = icmp slt i32 %i.c, 0
  br i1 %.not.i.i, label %Py_XDECREF.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  store i32 %i.d, ptr %i.b, align 8, !tbaa !46
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %Py_XDECREF.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #7
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.f = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20
  tail call void @PyMem_Free(ptr noundef %i.g) #7
  store ptr null, ptr %i.f, align 8, !tbaa !20
  %i.h = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !30
  tail call void @PyMem_Free(ptr noundef %i.i) #7
  store ptr null, ptr %i.h, align 8, !tbaa !30
  %i.j = getelementptr i8, ptr %0, i64 64         ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !44   ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %Py_DECREF.exit, label %bb.e

bb.e:                                             ; preds = %Py_XDECREF.exit
  tail call void @PyInstructionSequence_Fini(ptr noundef nonnull %i.k)
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !47   ; 4 uses
  %.not13 = icmp eq ptr %i.l, null
  br i1 %.not13, label %Py_DECREF.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr null, ptr %i.j, align 8, !tbaa !47
  %i.m = load i32, ptr %i.l, align 8, !tbaa !46   ; 2 uses
  %.not.i = icmp slt i32 %i.m, 0
  br i1 %.not.i, label %Py_DECREF.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = add nsw i32 %i.m, -1                     ; 2 uses
  store i32 %i.n, ptr %i.l, align 8, !tbaa !46
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.h, label %Py_DECREF.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.l) #7
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %Py_XDECREF.exit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @_PyInstructionSequence_New() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @_PyObject_GC_New(ptr noundef nonnull @_PyInstructionSequence_Type) #7, !inline_history !48 ; 7 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %inst_seq_create.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %i.d = getelementptr i8, ptr %i.a, i64 40
  store ptr null, ptr %i.d, align 8, !tbaa !20
  %i.e = getelementptr i8, ptr %i.a, i64 48
  store i32 0, ptr %i.e, align 8, !tbaa !19
  %i.f = getelementptr i8, ptr %i.a, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.c, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  tail call void @PyObject_GC_Track(ptr noundef nonnull %i.a) #7, !inline_history !48
  br label %inst_seq_create.exit

inst_seq_create.exit:                             ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal void @inst_seq_dealloc(ptr noundef %0) #1 {
bb.a:
  tail call void @PyObject_GC_UnTrack(ptr noundef %0) #7
  tail call void @PyInstructionSequence_Fini(ptr noundef %0)
  tail call void @PyObject_GC_Del(ptr noundef %0) #7
  ret void
}

declare ptr @PyObject_GenericGetAttr(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind uwtable
define internal i32 @inst_seq_traverse(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 %1(ptr noundef nonnull %i.b, ptr noundef %2) #7 ; 2 uses
  %.not20 = icmp eq i32 %i.c, 0
  br i1 %.not20, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = getelementptr i8, ptr %0, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !44   ; 2 uses
  %.not21 = icmp eq ptr %i.e, null
  br i1 %.not21, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 %1(ptr noundef nonnull %i.e, ptr noundef %2) #7 ; 2 uses
  %.not22 = icmp eq i32 %i.f, 0
  br i1 %.not22, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  %.3 = phi i32 [ 0, %bb.e ], [ %i.f, %bb.d ], [ %i.c, %bb.b ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @inst_seq_clear(ptr nofree noundef captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %Py_DECREF.exit14, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !49
  %i.c = load i32, ptr %i.b, align 8, !tbaa !46   ; 2 uses
  %.not.i13 = icmp slt i32 %i.c, 0
  br i1 %.not.i13, label %Py_DECREF.exit14, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  store i32 %i.d, ptr %i.b, align 8, !tbaa !46
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %Py_DECREF.exit14

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #7
  br label %Py_DECREF.exit14

Py_DECREF.exit14:                                 ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.f = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !47   ; 4 uses
  %.not12 = icmp eq ptr %i.g, null
  br i1 %.not12, label %Py_DECREF.exit, label %bb.e

bb.e:                                             ; preds = %Py_DECREF.exit14
  store ptr null, ptr %i.f, align 8, !tbaa !47
  %i.h = load i32, ptr %i.g, align 8, !tbaa !46   ; 2 uses
  %.not.i = icmp slt i32 %i.h, 0
  br i1 %.not.i, label %Py_DECREF.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = add nsw i32 %i.h, -1                     ; 2 uses
  store i32 %i.i, ptr %i.g, align 8, !tbaa !46
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.g) #7
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.g, %bb.f, %bb.e, %Py_DECREF.exit14
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal ptr @inst_seq_new(ptr nofree noundef readonly captures(address) %0, ptr noundef %1, ptr noundef %2) #1 {
bb.a:
  %i.a = icmp eq ptr %0, @_PyInstructionSequence_Type
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 296        ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50   ; 2 uses
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyInstructionSequence_Type, i64 296), align 8, !tbaa !50 ; 2 uses
  %i.e = icmp ne ptr %i.c, %i.d
  %i.f = icmp eq ptr %1, null
  %or.cond = or i1 %i.f, %i.e
  br i1 %or.cond, label %.thread20, label %.thread21

bb.c:                                             ; preds = %bb.a
  %.old1 = icmp eq ptr %1, null
  br i1 %.old1, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @_PyArg_NoPositional(ptr noundef nonnull @.str.19, ptr noundef nonnull %1) #7
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %inst_seq_new_impl.exit, label %.thread

.thread21:                                        ; preds = %bb.b
  %i.h = tail call i32 @_PyArg_NoPositional(ptr noundef nonnull @.str.19, ptr noundef nonnull %1) #7
  %.not22 = icmp eq i32 %i.h, 0
  br i1 %.not22, label %inst_seq_new_impl.exit, label %.thread21..thread20_crit_edge

.thread21..thread20_crit_edge:                    ; preds = %.thread21
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !50
  %.pre24 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyInstructionSequence_Type, i64 296), align 8, !tbaa !50
  br label %.thread20

.thread20:                                        ; preds = %.thread21..thread20_crit_edge, %bb.b
  %i.i = phi ptr [ %.pre24, %.thread21..thread20_crit_edge ], [ %i.d, %bb.b ]
  %i.j = phi ptr [ %.pre, %.thread21..thread20_crit_edge ], [ %i.c, %bb.b ]
  %i.k = icmp ne ptr %i.j, %i.i
  %i.l = icmp eq ptr %2, null
  %or.cond4 = or i1 %i.l, %i.k
  br i1 %or.cond4, label %bb.f, label %bb.e

.thread:                                          ; preds = %bb.c, %bb.d
  %.old3 = icmp eq ptr %2, null
  br i1 %.old3, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.thread20, %.thread
  %i.m = tail call i32 @_PyArg_NoKeywords(ptr noundef nonnull @.str.19, ptr noundef nonnull %2) #7
  %.not19 = icmp eq i32 %i.m, 0
  br i1 %.not19, label %inst_seq_new_impl.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread, %.thread20
  %i.n = tail call ptr @_PyObject_GC_New(ptr noundef nonnull @_PyInstructionSequence_Type) #7, !inline_history !58 ; 7 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %inst_seq_new_impl.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr i8, ptr %i.n, i64 16
  %i.q = getelementptr i8, ptr %i.n, i64 40
  store ptr null, ptr %i.q, align 8, !tbaa !20
  %i.r = getelementptr i8, ptr %i.n, i64 48
  store i32 0, ptr %i.r, align 8, !tbaa !19
  %i.s = getelementptr i8, ptr %i.n, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.p, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  tail call void @PyObject_GC_Track(ptr noundef nonnull %i.n) #7, !inline_history !58
  br label %inst_seq_new_impl.exit

inst_seq_new_impl.exit:                           ; preds = %bb.g, %bb.f, %.thread21, %bb.e, %bb.d
  %.0 = phi ptr [ null, %.thread21 ], [ null, %bb.e ], [ null, %bb.d ], [ null, %bb.f ], [ %i.n, %bb.g ]
  ret ptr %.0
}

declare void @_Py_Dealloc(ptr noundef) local_unnamed_addr #4

declare ptr @_PyObject_GC_New(ptr noundef) local_unnamed_addr #4

declare void @PyObject_GC_Track(ptr noundef) local_unnamed_addr #4

declare void @PyObject_GC_UnTrack(ptr noundef) local_unnamed_addr #4

declare void @PyObject_GC_Del(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal noundef ptr @InstructionSequenceType_addop(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #1 {
bb.a:
  %4 = alloca %struct._Py_c_array_t, align 8      ; 11 uses
  %5 = alloca %struct._Py_c_array_t, align 8      ; 11 uses
  %i.a = alloca [6 x ptr], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = icmp eq ptr %3, null
  %i.c = icmp eq i64 %2, 6
  %or.cond3 = and i1 %i.c, %i.b
  %i.d = icmp ne ptr %1, null
  %or.cond5 = and i1 %i.d, %or.cond3
  br i1 %or.cond5, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @InstructionSequenceType_addop._parser, i32 noundef 6, i32 noundef 6, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #7 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %InstructionSequenceType_addop_impl.exit, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ %1, %bb.a ]   ; 6 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !49
  %i.h = call i32 @PyLong_AsInt(ptr noundef %i.g) #7 ; 3 uses
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.thread
  %i.j = call ptr @PyErr_Occurred() #7
  %.not37 = icmp eq ptr %i.j, null
  br i1 %.not37, label %bb.d, label %InstructionSequenceType_addop_impl.exit

bb.d:                                             ; preds = %bb.c, %.thread
  %i.k = getelementptr i8, ptr %i.f, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !49
  %i.m = call i32 @PyLong_AsInt(ptr noundef %i.l) #7 ; 3 uses
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = call ptr @PyErr_Occurred() #7
  %.not38 = icmp eq ptr %i.o, null
  br i1 %.not38, label %bb.f, label %InstructionSequenceType_addop_impl.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.p = getelementptr i8, ptr %i.f, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !49
  %i.r = call i32 @PyLong_AsInt(ptr noundef %i.q) #7 ; 3 uses
  %i.s = icmp eq i32 %i.r, -1
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = call ptr @PyErr_Occurred() #7
  %.not39 = icmp eq ptr %i.t, null
  br i1 %.not39, label %bb.h, label %InstructionSequenceType_addop_impl.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.u = getelementptr i8, ptr %i.f, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !49
  %i.w = call i32 @PyLong_AsInt(ptr noundef %i.v) #7 ; 3 uses
  %i.x = icmp eq i32 %i.w, -1
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.y = call ptr @PyErr_Occurred() #7
  %.not40 = icmp eq ptr %i.y, null
  br i1 %.not40, label %bb.j, label %InstructionSequenceType_addop_impl.exit

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.z = getelementptr i8, ptr %i.f, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !49
  %i.ab = call i32 @PyLong_AsInt(ptr noundef %i.aa) #7 ; 3 uses
  %i.ac = icmp eq i32 %i.ab, -1
  br i1 %i.ac, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ad = call ptr @PyErr_Occurred() #7
  %.not41 = icmp eq ptr %i.ad, null
  br i1 %.not41, label %bb.l, label %InstructionSequenceType_addop_impl.exit

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ae = getelementptr i8, ptr %i.f, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !49
  %i.ag = call i32 @PyLong_AsInt(ptr noundef %i.af) #7 ; 2 uses
  %i.ah = icmp eq i32 %i.ag, -1
  br i1 %i.ah, label %bb.m, label %.split

.split:                                           ; preds = %bb.l
  %.sroa.0.0.insert.ext.i = zext i32 %i.r to i64
  %.sroa.0.4.insert.ext.i = zext i32 %i.w to i64
  %.sroa.0.4.insert.shift.i = shl nuw i64 %.sroa.0.4.insert.ext.i, 32
  %.sroa.0.4.insert.insert.i = or disjoint i64 %.sroa.0.4.insert.shift.i, %.sroa.0.0.insert.ext.i
  %.sroa.5.8.insert.ext.i = zext i32 %i.ab to i64
  %.sroa.5.12.insert.ext.i = zext i32 %i.ag to i64
  %.sroa.5.12.insert.shift.i = shl nuw i64 %.sroa.5.12.insert.ext.i, 32
  %.sroa.5.12.insert.insert.i = or disjoint i64 %.sroa.5.12.insert.shift.i, %.sroa.5.8.insert.ext.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  %i.ai = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !30
  store ptr %i.aj, ptr %5, align 8, !tbaa !21
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.al = getelementptr i8, ptr %0, i64 24        ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !40
end_hunk_0
begin_hunk_1_@InstructionSequenceType_use_label:bb.a
bb.f:                                             ; preds = %InstructionSequenceType_use_label_impl.exit, %InstructionSequenceType_use_label_impl.exit28, %bb.d, %bb.b
  %.0 = phi ptr [ null, %bb.d ], [ null, %bb.b ], [ %i.ag, %InstructionSequenceType_use_label_impl.exit ], [ %i.be, %InstructionSequenceType_use_label_impl.exit28 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @InstructionSequenceType_add_nested(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #1 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = icmp eq ptr %3, null
  %i.c = icmp eq i64 %2, 1
  %or.cond3 = and i1 %i.c, %i.b
  %i.d = icmp ne ptr %1, null
  %or.cond5 = and i1 %i.d, %or.cond3
  br i1 %or.cond5, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @InstructionSequenceType_add_nested._parser, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #7 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %InstructionSequenceType_add_nested_impl.exit, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ %1, %bb.a ]
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !49   ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %.val5.i = load ptr, ptr %i.h, align 8, !tbaa !59 ; 2 uses
  %.not.i = icmp eq ptr %.val5.i, @_PyInstructionSequence_Type
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.thread
  %i.i = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !49
  %i.j = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.i, ptr noundef nonnull @.str.16, ptr noundef %.val5.i) #7, !inline_history !60 ; 0 uses
  br label %InstructionSequenceType_add_nested_impl.exit

bb.d:                                             ; preds = %.thread
  %i.k = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !45   ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.e, label %_PyInstructionSequence_AddNested.exit.i

bb.e:                                             ; preds = %bb.d
  %i.n = call ptr @PyList_New(i64 noundef 0) #7, !inline_history !60 ; 3 uses
  store ptr %i.n, ptr %i.k, align 8, !tbaa !45
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_PyInstructionSequence_AddNested.exit.thread.i, label %_PyInstructionSequence_AddNested.exit.i

_PyInstructionSequence_AddNested.exit.i:          ; preds = %bb.e, %bb.d
  %i.p = phi ptr [ %i.n, %bb.e ], [ %i.l, %bb.d ]
  %i.q = call i32 @PyList_Append(ptr noundef nonnull %i.p, ptr noundef nonnull %i.g) #7, !inline_history !60
  %.fr.i = freeze i32 %i.q
  %i.r = icmp slt i32 %.fr.i, 0
  br i1 %i.r, label %_PyInstructionSequence_AddNested.exit.thread.i, label %InstructionSequenceType_add_nested_impl.exit

_PyInstructionSequence_AddNested.exit.thread.i:   ; preds = %_PyInstructionSequence_AddNested.exit.i, %bb.e
  br label %InstructionSequenceType_add_nested_impl.exit

InstructionSequenceType_add_nested_impl.exit:     ; preds = %_PyInstructionSequence_AddNested.exit.thread.i, %_PyInstructionSequence_AddNested.exit.i, %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ null, %_PyInstructionSequence_AddNested.exit.thread.i ], [ @_Py_NoneStruct, %_PyInstructionSequence_AddNested.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @InstructionSequenceType_get_nested(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56
  %.val = load ptr, ptr %i.a, align 8, !tbaa !45  ; 5 uses
  %i.b = icmp eq ptr %.val, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyList_New(i64 noundef 0) #7
  br label %InstructionSequenceType_get_nested_impl.exit

bb.c:                                             ; preds = %bb.a
  %i.d = load i32, ptr %.val, align 8, !tbaa !46  ; 2 uses
  %i.e = icmp ugt i32 %i.d, -1073741825
  br i1 %i.e, label %InstructionSequenceType_get_nested_impl.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = add nuw i32 %i.d, 1
  store i32 %i.f, ptr %.val, align 8, !tbaa !46
  br label %InstructionSequenceType_get_nested_impl.exit

InstructionSequenceType_get_nested_impl.exit:     ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %.val, %bb.c ], [ %.val, %bb.d ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @InstructionSequenceType_get_instructions(ptr nofree noundef captures(none) %0, ptr nofree readnone captures(none) %1) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_PyInstructionSequence_ApplyLabelMap.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 28
  %i.e = load i32, ptr %i.d, align 4, !tbaa !27   ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.g = getelementptr i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !30
  %wide.trip.count.i.i = zext nneg i32 %i.e to i64
  br label %bb.b

._crit_edge.i.i:                                  ; preds = %bb.f, %.preheader.i.i
  tail call void @PyMem_Free(ptr noundef nonnull %i.b) #7
  store ptr null, ptr %i.a, align 8, !tbaa !20
  %i.i = getelementptr i8, ptr %0, i64 48
  store i32 0, ptr %i.i, align 8, !tbaa !19
  br label %_PyInstructionSequence_ApplyLabelMap.exit.i

bb.b:                                             ; preds = %bb.f, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.f ] ; 2 uses
  %i.j = getelementptr [44 x i8], ptr %i.h, i64 %indvars.iv.i.i ; 3 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !31   ; 2 uses
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr [8 x i8], ptr @_PyOpcode_opcode_metadata, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !35
  %.fr26.i.i = freeze i32 %i.o
  %i.p = and i32 %.fr26.i.i, 8
  %.not.i32.i = icmp ne i32 %i.p, 0
  %i.q = add i32 %i.k, -263
  %i.r = icmp ult i32 %i.q, 3
  %or.cond.i.i = or i1 %i.r, %.not.i32.i
  br i1 %or.cond.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr i8, ptr %i.j, i64 4        ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !37
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr [4 x i8], ptr %i.b, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !7
  store i32 %i.w, ptr %i.s, align 4, !tbaa !37
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.x = getelementptr i8, ptr %i.j, i64 24       ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !38   ; 2 uses
  %i.z = icmp sgt i32 %i.y, -1
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aa = zext nneg i32 %i.y to i64
  %i.ab = getelementptr [4 x i8], ptr %i.b, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !7
  store i32 %i.ac, ptr %i.x, align 4, !tbaa !38
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !39

_PyInstructionSequence_ApplyLabelMap.exit.i:      ; preds = %._crit_edge.i.i, %bb.a
  %i.ad = tail call ptr @PyList_New(i64 noundef 0) #7 ; 7 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %InstructionSequenceType_get_instructions_impl.exit, label %.preheader.i

.preheader.i:                                     ; preds = %_PyInstructionSequence_ApplyLabelMap.exit.i
  %i.af = getelementptr i8, ptr %0, i64 28        ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !27
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph.i, label %InstructionSequenceType_get_instructions_impl.exit

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ai = getelementptr i8, ptr %0, i64 16
  br label %bb.h

bb.g:                                             ; preds = %Py_DECREF.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.aj = load i32, ptr %i.af, align 4, !tbaa !27
  %i.ak = sext i32 %i.aj to i64
  %i.al = icmp slt i64 %indvars.iv.next.i, %i.ak
  br i1 %i.al, label %bb.h, label %InstructionSequenceType_get_instructions_impl.exit, !llvm.loop !61

bb.h:                                             ; preds = %bb.g, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.g ] ; 2 uses
  %i.am = load ptr, ptr %i.ai, align 8, !tbaa !30
  %i.an = getelementptr [44 x i8], ptr %i.am, i64 %indvars.iv.i ; 6 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 8
  %.sroa.0.0.copyload.i = load i32, ptr %i.ao, align 4, !tbaa !7 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr i8, ptr %i.an, i64 12
  %.sroa.5.0.copyload.i = load i32, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !7 ; 2 uses
  %.sroa.7.0..sroa_idx.i = getelementptr i8, ptr %i.an, i64 16
  %.sroa.7.0.copyload.i = load i32, ptr %.sroa.7.0..sroa_idx.i, align 4, !tbaa !7 ; 2 uses
  %.sroa.9.0..sroa_idx.i = getelementptr i8, ptr %i.an, i64 20
  %.sroa.9.0.copyload.i = load i32, ptr %.sroa.9.0..sroa_idx.i, align 4, !tbaa !7 ; 2 uses
  %i.ap = load i32, ptr %i.an, align 4, !tbaa !31 ; 3 uses
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr [8 x i8], ptr @_PyOpcode_opcode_metadata, i64 %i.aq
  %i.as = getelementptr i8, ptr %i.ar, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !35
  %.not.i = trunc nuw i32 %i.at to i1
  br i1 %.not.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr i8, ptr %i.an, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !37
  %i.aw = tail call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.17, i32 noundef %i.ap, i32 noundef %i.av, i32 noundef %.sroa.0.0.copyload.i, i32 noundef %.sroa.5.0.copyload.i, i32 noundef %.sroa.7.0.copyload.i, i32 noundef %.sroa.9.0.copyload.i) #7
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ax = tail call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.18, i32 noundef %i.ap, ptr noundef nonnull @_Py_NoneStruct, i32 noundef %.sroa.0.0.copyload.i, i32 noundef %.sroa.5.0.copyload.i, i32 noundef %.sroa.7.0.copyload.i, i32 noundef %.sroa.9.0.copyload.i) #7
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.025.i = phi ptr [ %i.aw, %bb.i ], [ %i.ax, %bb.j ] ; 5 uses
  %i.ay = icmp eq ptr %.025.i, null
  br i1 %i.ay, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = tail call i32 @PyList_Append(ptr noundef nonnull %i.ad, ptr noundef nonnull %.025.i) #7
  %i.ba = load i32, ptr %.025.i, align 8, !tbaa !46 ; 2 uses
  %.not.i.i = icmp slt i32 %i.ba, 0
  br i1 %.not.i.i, label %Py_DECREF.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bb = add nsw i32 %i.ba, -1                   ; 2 uses
  store i32 %i.bb, ptr %.025.i, align 8, !tbaa !46
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.n, label %Py_DECREF.exit.i

bb.n:                                             ; preds = %bb.m
  tail call void @_Py_Dealloc(ptr noundef nonnull %.025.i) #7
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.n, %bb.m, %bb.l
  %.not30.i = icmp eq i32 %i.az, 0
  br i1 %.not30.i, label %bb.g, label %bb.o

bb.o:                                             ; preds = %Py_DECREF.exit.i, %bb.k
  %i.bd = load i32, ptr %i.ad, align 8, !tbaa !46 ; 2 uses
  %.not.i.i.i = icmp slt i32 %i.bd, 0
  br i1 %.not.i.i.i, label %InstructionSequenceType_get_instructions_impl.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.be = add nsw i32 %i.bd, -1                   ; 2 uses
  store i32 %i.be, ptr %i.ad, align 8, !tbaa !46
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.q, label %InstructionSequenceType_get_instructions_impl.exit

bb.q:                                             ; preds = %bb.p
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ad) #7
  br label %InstructionSequenceType_get_instructions_impl.exit

InstructionSequenceType_get_instructions_impl.exit: ; preds = %bb.g, %_PyInstructionSequence_ApplyLabelMap.exit.i, %.preheader.i, %bb.o, %bb.p, %bb.q
  %.0.i = phi ptr [ null, %bb.q ], [ null, %_PyInstructionSequence_ApplyLabelMap.exit.i ], [ null, %bb.o ], [ null, %bb.p ], [ %i.ad, %.preheader.i ], [ %i.ad, %bb.g ]
  ret ptr %.0.i
}

declare ptr @_PyArg_UnpackKeywords(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @PyLong_AsInt(ptr noundef) local_unnamed_addr #4

declare ptr @PyErr_Occurred() local_unnamed_addr #4

declare ptr @PyLong_FromLong(i64 noundef) local_unnamed_addr #4

declare ptr @PyErr_Format(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

declare ptr @Py_BuildValue(ptr noundef, ...) local_unnamed_addr #4

declare i32 @_PyArg_NoPositional(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @_PyArg_NoKeywords(ptr noundef, ptr noundef) local_unnamed_addr #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !8, i64 32}
!12 = !{!"instruction_sequence", !13, i64 0, !15, i64 16, !8, i64 24, !8, i64 28, !8, i64 32, !16, i64 40, !8, i64 48, !17, i64 56, !18, i64 64}
!13 = !{!"_object", !9, i64 0, !14, i64 8}
!14 = !{!"p1 _ZTS11_typeobject", !15, i64 0}
!15 = !{!"any pointer", !9, i64 0}
!16 = !{!"p1 int", !15, i64 0}
!17 = !{!"p1 _ZTS7_object", !15, i64 0}
!18 = !{!"p1 _ZTS20instruction_sequence", !15, i64 0}
!19 = !{!12, !8, i64 48}
!20 = !{!12, !16, i64 40}
!21 = !{!22, !15, i64 0}
!22 = !{!"", !15, i64 0, !8, i64 8, !23, i64 16, !8, i64 24}
!23 = !{!"long", !9, i64 0}
!24 = !{!22, !8, i64 8}
!25 = !{!22, !23, i64 16}
!26 = !{!22, !8, i64 24}
!27 = !{!12, !8, i64 28}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{!12, !15, i64 16}
!31 = !{!32, !8, i64 0}
!32 = !{!"", !8, i64 0, !8, i64 4, !33, i64 8, !34, i64 24, !8, i64 36, !8, i64 40}
!33 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12}
!34 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8}
!35 = !{!36, !8, i64 4}
!36 = !{!"opcode_metadata", !9, i64 0, !9, i64 1, !8, i64 4}
!37 = !{!32, !8, i64 4}
!38 = !{!34, !8, i64 0}
!39 = distinct !{!39, !29}
!40 = !{!12, !8, i64 24}
!41 = !{i64 0, i64 4, !7, i64 4, i64 4, !7, i64 8, i64 4, !7, i64 12, i64 4, !7, i64 16, i64 4, !7, i64 20, i64 4, !7, i64 24, i64 4, !7, i64 28, i64 4, !7, i64 32, i64 4, !7, i64 36, i64 4, !7, i64 40, i64 4, !7}
!42 = distinct !{!42, !29}
!43 = distinct !{!43, !29}
!44 = !{!12, !18, i64 64}
!45 = !{!12, !17, i64 56}
!46 = !{!9, !9, i64 0}
!47 = !{!18, !18, i64 0}
!48 = distinct !{null}
!49 = !{!17, !17, i64 0}
!50 = !{!51, !15, i64 296}
!51 = !{!"_typeobject", !52, i64 0, !53, i64 24, !23, i64 32, !23, i64 40, !15, i64 48, !23, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !15, i64 104, !15, i64 112, !15, i64 120, !15, i64 128, !15, i64 136, !15, i64 144, !15, i64 152, !15, i64 160, !23, i64 168, !53, i64 176, !15, i64 184, !15, i64 192, !15, i64 200, !23, i64 208, !15, i64 216, !15, i64 224, !54, i64 232, !55, i64 240, !56, i64 248, !14, i64 256, !17, i64 264, !15, i64 272, !15, i64 280, !23, i64 288, !15, i64 296, !15, i64 304, !15, i64 312, !15, i64 320, !15, i64 328, !17, i64 336, !17, i64 344, !17, i64 352, !15, i64 360, !17, i64 368, !15, i64 376, !8, i64 384, !15, i64 392, !15, i64 400, !9, i64 408, !57, i64 410}
!52 = !{!"PyVarObject", !13, i64 0, !23, i64 16}
!53 = !{!"p1 omnipotent char", !15, i64 0}
!54 = !{!"p1 _ZTS11PyMethodDef", !15, i64 0}
!55 = !{!"p1 _ZTS11PyMemberDef", !15, i64 0}
!56 = !{!"p1 _ZTS11PyGetSetDef", !15, i64 0}
!57 = !{!"short", !9, i64 0}
!58 = distinct !{null, null}
!59 = !{!13, !14, i64 8}
!60 = distinct !{null}
!61 = distinct !{!61, !29}
end_hunk_1
