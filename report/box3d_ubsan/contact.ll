Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/contact?download=true
inline.NumInlined: 65
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@b3Contact_GetData:bb.a
  %i.bj = and i64 %i.bi, 7, !nosanitize !9
  %i.bk = icmp eq i64 %i.bj, 0, !nosanitize !9
  %i.bl = and i1 %i.an, %i.bk
  br i1 %i.bl, label %bb.o, label %bb.n, !prof !11, !nosanitize !9

bb.n:                                             ; preds = %bb.m
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @6, i64 %i.bi) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.o:                                             ; preds = %bb.m
  %i.bm = load i32, ptr %i.aj, align 8, !tbaa !85 ; 2 uses
  %i.bn = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.bm, i32 1), !nosanitize !9 ; 2 uses
  %i.bo = extractvalue { i32, i1 } %i.bn, 1, !nosanitize !9
  br i1 %i.bo, label %bb.p, label %bb.q, !prof !10, !nosanitize !9

bb.p:                                             ; preds = %bb.o
  %i.bp = zext nneg i32 %i.bm to i64, !nosanitize !9
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @7, i64 %i.bp, i64 1) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.q:                                             ; preds = %bb.o
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aj, i64 196
  %i.br = extractvalue { i32, i1 } %i.bn, 0, !nosanitize !9
  %i.bs = load i16, ptr %i.bq, align 4, !tbaa !86
  %.sroa.321.0.insert.ext = zext i16 %i.bs to i64
  %.sroa.321.0.insert.shift = shl nuw i64 %.sroa.321.0.insert.ext, 48
  %.sroa.019.0.insert.ext = zext i32 %i.br to i64
  %i.bt = or disjoint i64 %.sroa.321.0.insert.shift, %.sroa.019.0.insert.ext
  %.sroa.019.0.insert.insert = or disjoint i64 %i.bt, %.sroa.022.sroa.3.0.insert.shift
  store i64 %.sroa.019.0.insert.insert, ptr %i.bh, align 4
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bv = ptrtoint ptr %i.ax to i64, !nosanitize !9 ; 2 uses
  %i.bw = and i64 %i.bv, 7, !nosanitize !9
  %i.bx = icmp eq i64 %i.bw, 0, !nosanitize !9
  br i1 %i.bx, label %bb.s, label %bb.r, !prof !11, !nosanitize !9

bb.r:                                             ; preds = %bb.q
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @8, i64 %i.bv) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.s:                                             ; preds = %bb.q
  %i.by = load i32, ptr %i.ax, align 8, !tbaa !85 ; 2 uses
  %i.bz = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.by, i32 1), !nosanitize !9 ; 2 uses
  %i.ca = extractvalue { i32, i1 } %i.bz, 1, !nosanitize !9
  br i1 %i.ca, label %bb.t, label %bb.u, !prof !10, !nosanitize !9

bb.t:                                             ; preds = %bb.s
  %i.cb = zext nneg i32 %i.by to i64, !nosanitize !9
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @9, i64 %i.cb, i64 1) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.u:                                             ; preds = %bb.s
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ax, i64 196
  %i.cd = extractvalue { i32, i1 } %i.bz, 0, !nosanitize !9
  %i.ce = load i16, ptr %i.cc, align 4, !tbaa !86
  %.sroa.3.0.insert.ext = zext i16 %i.ce to i64
  %.sroa.3.0.insert.shift = shl nuw i64 %.sroa.3.0.insert.ext, 48
  %.sroa.0.0.insert.ext = zext i32 %i.cd to i64
  %i.cf = or disjoint i64 %.sroa.3.0.insert.shift, %.sroa.0.0.insert.ext
  %.sroa.0.0.insert.insert = or disjoint i64 %i.cf, %.sroa.022.sroa.3.0.insert.shift
  store i64 %.sroa.0.0.insert.insert, ptr %i.bu, align 4
  %i.cg = getelementptr inbounds nuw i8, ptr %i.z, i64 80
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !87 ; 2 uses
  %i.ci = icmp sgt i32 %i.ch, 0
  br i1 %i.ci, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cj = getelementptr inbounds nuw i8, ptr %i.z, i64 72
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cl = load ptr, ptr %i.cj, align 8, !tbaa !88
  store ptr %i.cl, ptr %i.ck, align 8, !tbaa !139
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %.sink = phi i32 [ %i.ch, %bb.v ], [ 0, %bb.u ]
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.sink, ptr %i.cm, align 8, !tbaa !140
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @b3GetWorld(i32 noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_type_mismatch_v1_abort(ptr, i64) local_unnamed_addr #3

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_pointer_overflow_abort(ptr, i64, i64) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #5

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_add_overflow_abort(ptr, i64, i64) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden void @b3InitializeContactRegisters() local_unnamed_addr #0 !func_sanitize !141 {
bb.a:
  %.b = load i1, ptr @s_initialized, align 1
  br i1 %.b, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not18.i = icmp ult i64 add (i64 ptrtoint (ptr @s_registers to i64), i64 60), ptrtoint (ptr @s_registers to i64), !nosanitize !9
  br i1 %.not18.i, label %bb.c, label %bb.d, !prof !10, !nosanitize !9

bb.c:                                             ; preds = %bb.b
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @136, i64 ptrtoint (ptr @s_registers to i64), i64 add (i64 ptrtoint (ptr @s_registers to i64), i64 60)) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.d:                                             ; preds = %bb.b
  %.not20.i = icmp ult i64 add (i64 ptrtoint (ptr getelementptr inbounds nuw (i8, ptr @s_registers, i64 60) to i64), i64 10), ptrtoint (ptr getelementptr inbounds nuw (i8, ptr @s_registers, i64 60) to i64), !nosanitize !9
  br i1 %.not20.i, label %bb.e, label %b3AddType.exit, !prof !10, !nosanitize !9

bb.e:                                             ; preds = %bb.d
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @137, i64 ptrtoint (ptr getelementptr inbounds nuw (i8, ptr @s_registers, i64 60) to i64), i64 add (i64 ptrtoint (ptr getelementptr inbounds nuw (i8, ptr @s_registers, i64 60) to i64), i64 10)) #8, !nosanitize !9
  unreachable, !nosanitize !9

b3AddType.exit:                                   ; preds = %bb.d
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @s_registers, i64 70), align 2, !tbaa !90
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @s_registers, i64 71), align 1, !tbaa !91
  %.not20.i2 = icmp ult i64 add (i64 ptrtoint (ptr @s_registers to i64), i64 10), ptrtoint (ptr @s_registers to i64), !nosanitize !9
  br i1 %.not20.i2, label %bb.f, label %b3AddType.exit4, !prof !10, !nosanitize !9

bb.f:                                             ; preds = %b3AddType.exit
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @137, i64 ptrtoint (ptr @s_registers to i64), i64 add (i64 ptrtoint (ptr @s_registers to i64), i64 10)) #8, !nosanitize !9
  unreachable, !nosanitize !9

b3AddType.exit4:                                  ; preds = %b3AddType.exit
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @s_registers, i64 10), align 2, !tbaa !90
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @s_registers, i64 11), align 1, !tbaa !91
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @s_registers, i64 60), align 4, !tbaa !90
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @s_registers, i64 61), align 1, !tbaa !91
  store i8 1, ptr @s_registers, align 16, !tbaa !90
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @s_registers, i64 1), align 1, !tbaa !91
  tail call fastcc void @b3AddType(i32 noundef 1, i32 noundef 5)
  %.not18.i8 = icmp ult i64 add (i64 ptrtoint (ptr @s_registers to i64), i64 12), ptrtoint (ptr @s_registers to i64), !nosanitize !9
  br i1 %.not18.i8, label %bb.g, label %bb.h, !prof !10, !nosanitize !9

bb.g:                                             ; preds = %b3AddType.exit4
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @136, i64 ptrtoint (ptr @s_registers to i64), i64 add (i64 ptrtoint (ptr @s_registers to i64), i64 12)) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.h:                                             ; preds = %b3AddType.exit4
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @s_registers, i64 12), align 4, !tbaa !90
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @s_registers, i64 13), align 1, !tbaa !91
  %.not26.i = icmp ult i64 add (i64 ptrtoint (ptr @s_registers to i64), i64 2), ptrtoint (ptr @s_registers to i64), !nosanitize !9
  br i1 %.not26.i, label %bb.i, label %b3AddType.exit11, !prof !10, !nosanitize !9

bb.i:                                             ; preds = %bb.h
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @141, i64 ptrtoint (ptr @s_registers to i64), i64 add (i64 ptrtoint (ptr @s_registers to i64), i64 2)) #8, !nosanitize !9
  unreachable, !nosanitize !9

b3AddType.exit11:                                 ; preds = %bb.h
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @s_registers, i64 2), align 2, !tbaa !90
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @s_registers, i64 3), align 1, !tbaa !91
  tail call fastcc void @b3AddType(i32 noundef 1, i32 noundef 3)
  tail call fastcc void @b3AddType(i32 noundef 3, i32 noundef 5)
  %.not18.i13 = icmp ult i64 add (i64 ptrtoint (ptr @s_registers to i64), i64 36), ptrtoint (ptr @s_registers to i64), !nosanitize !9
  br i1 %.not18.i13, label %bb.j, label %bb.k, !prof !10, !nosanitize !9

bb.j:                                             ; preds = %b3AddType.exit11
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @136, i64 ptrtoint (ptr @s_registers to i64), i64 add (i64 ptrtoint (ptr @s_registers to i64), i64 36)) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.k:                                             ; preds = %b3AddType.exit11
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @s_registers, i64 36), align 4, !tbaa !90
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @s_registers, i64 37), align 1, !tbaa !91
  %.not26.i16 = icmp ult i64 add (i64 ptrtoint (ptr @s_registers to i64), i64 6), ptrtoint (ptr @s_registers to i64), !nosanitize !9
  br i1 %.not26.i16, label %bb.l, label %bb.m, !prof !10, !nosanitize !9

bb.l:                                             ; preds = %bb.k
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @141, i64 ptrtoint (ptr @s_registers to i64), i64 add (i64 ptrtoint (ptr @s_registers to i64), i64 6)) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.m:                                             ; preds = %bb.k
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @s_registers, i64 6), align 2, !tbaa !90
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @s_registers, i64 7), align 1, !tbaa !91
  %.not20.i22 = icmp ult i64 add (i64 ptrtoint (ptr getelementptr inbounds nuw (i8, ptr @s_registers, i64 36) to i64), i64 6), ptrtoint (ptr getelementptr inbounds nuw (i8, ptr @s_registers, i64 36) to i64), !nosanitize !9
  br i1 %.not20.i22, label %bb.n, label %b3AddType.exit24, !prof !10, !nosanitize !9

bb.n:                                             ; preds = %bb.m
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @137, i64 ptrtoint (ptr getelementptr inbounds nuw (i8, ptr @s_registers, i64 36) to i64), i64 add (i64 ptrtoint (ptr getelementptr inbounds nuw (i8, ptr @s_registers, i64 36) to i64), i64 6)) #8, !nosanitize !9
  unreachable, !nosanitize !9

b3AddType.exit24:                                 ; preds = %bb.m
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @s_registers, i64 42), align 2, !tbaa !90
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @s_registers, i64 43), align 1, !tbaa !91
  tail call fastcc void @b3AddType(i32 noundef 4, i32 noundef 5)
  %.not18.i26 = icmp ult i64 add (i64 ptrtoint (ptr @s_registers to i64), i64 48), ptrtoint (ptr @s_registers to i64), !nosanitize !9
  br i1 %.not18.i26, label %bb.o, label %bb.p, !prof !10, !nosanitize !9

bb.o:                                             ; preds = %b3AddType.exit24
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @136, i64 ptrtoint (ptr @s_registers to i64), i64 add (i64 ptrtoint (ptr @s_registers to i64), i64 48)) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.p:                                             ; preds = %b3AddType.exit24
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @s_registers, i64 48), align 16, !tbaa !90
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @s_registers, i64 49), align 1, !tbaa !91
  %.not26.i29 = icmp ult i64 add (i64 ptrtoint (ptr @s_registers to i64), i64 8), ptrtoint (ptr @s_registers to i64), !nosanitize !9
  br i1 %.not26.i29, label %bb.q, label %b3AddType.exit31, !prof !10, !nosanitize !9

bb.q:                                             ; preds = %bb.p
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @141, i64 ptrtoint (ptr @s_registers to i64), i64 add (i64 ptrtoint (ptr @s_registers to i64), i64 8)) #8, !nosanitize !9
  unreachable, !nosanitize !9

b3AddType.exit31:                                 ; preds = %bb.p
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @s_registers, i64 8), align 8, !tbaa !90
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @s_registers, i64 9), align 1, !tbaa !91
  tail call fastcc void @b3AddType(i32 noundef 4, i32 noundef 3)
  tail call fastcc void @b3AddType(i32 noundef 2, i32 noundef 5)
  %.not18.i33 = icmp ult i64 add (i64 ptrtoint (ptr @s_registers to i64), i64 24), ptrtoint (ptr @s_registers to i64), !nosanitize !9
  br i1 %.not18.i33, label %bb.r, label %bb.s, !prof !10, !nosanitize !9

bb.r:                                             ; preds = %b3AddType.exit31
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @136, i64 ptrtoint (ptr @s_registers to i64), i64 add (i64 ptrtoint (ptr @s_registers to i64), i64 24)) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.s:                                             ; preds = %b3AddType.exit31
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @s_registers, i64 24), align 8, !tbaa !90
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @s_registers, i64 25), align 1, !tbaa !91
  %.not26.i36 = icmp ult i64 add (i64 ptrtoint (ptr @s_registers to i64), i64 4), ptrtoint (ptr @s_registers to i64), !nosanitize !9
  br i1 %.not26.i36, label %bb.t, label %b3AddType.exit38, !prof !10, !nosanitize !9

bb.t:                                             ; preds = %bb.s
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @141, i64 ptrtoint (ptr @s_registers to i64), i64 add (i64 ptrtoint (ptr @s_registers to i64), i64 4)) #8, !nosanitize !9
  unreachable, !nosanitize !9

b3AddType.exit38:                                 ; preds = %bb.s
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @s_registers, i64 4), align 4, !tbaa !90
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @s_registers, i64 5), align 1, !tbaa !91
  tail call fastcc void @b3AddType(i32 noundef 2, i32 noundef 3)
  store i1 true, ptr @s_initialized, align 1
  br label %bb.u

bb.u:                                             ; preds = %b3AddType.exit38, %bb.a
  ret void
}

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_load_invalid_value_abort(ptr, i64) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @b3AddType(i32 noundef range(i32 0, 6) %0, i32 noundef range(i32 0, 6) %1) unnamed_addr #0 !func_sanitize !142 {
bb.a:
  %i.a = zext nneg i32 %0 to i64, !nosanitize !9  ; 4 uses
  %i.b = mul nuw nsw i64 %i.a, 12
  %i.c = add i64 %i.b, ptrtoint (ptr @s_registers to i64), !nosanitize !9 ; 3 uses
  %.not = icmp eq i64 %i.c, 0, !nosanitize !9
  %.not18 = icmp ult i64 %i.c, ptrtoint (ptr @s_registers to i64), !nosanitize !9
  br i1 %.not18, label %bb.b, label %bb.c, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @136, i64 ptrtoint (ptr @s_registers to i64), i64 %i.c) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw [12 x i8], ptr @s_registers, i64 %i.a ; 2 uses
  %i.e = zext nneg i32 %1 to i64, !nosanitize !9  ; 4 uses
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.e ; 2 uses
  %i.g = shl nuw nsw i64 %i.e, 1
  %i.h = ptrtoint ptr %i.d to i64, !nosanitize !9 ; 4 uses
  %i.i = add i64 %i.g, %i.h, !nosanitize !9       ; 3 uses
  %.not19 = icmp eq i64 %i.i, 0, !nosanitize !9
  %.not20 = icmp ult i64 %i.i, %i.h, !nosanitize !9
  br i1 %.not20, label %bb.d, label %bb.e, !prof !10, !nosanitize !9

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @137, i64 %i.h, i64 %i.i) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.e:                                             ; preds = %bb.c
  store i8 1, ptr %i.f, align 2, !tbaa !90
  br i1 %.not, label %bb.f, label %bb.g, !prof !10, !nosanitize !9

bb.f:                                             ; preds = %bb.e
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @138, i64 ptrtoint (ptr @s_registers to i64), i64 0) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.g:                                             ; preds = %bb.e
  br i1 %.not19, label %bb.h, label %bb.i, !prof !10, !nosanitize !9

bb.h:                                             ; preds = %bb.g
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @139, i64 %i.h, i64 0) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.i:                                             ; preds = %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store i8 1, ptr %i.j, align 1, !tbaa !91
  %.not22 = icmp eq i32 %0, %1
  br i1 %.not22, label %bb.s, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.k = mul nuw nsw i64 %i.e, 12
  %i.l = add i64 %i.k, ptrtoint (ptr @s_registers to i64), !nosanitize !9 ; 3 uses
  %.not23 = icmp eq i64 %i.l, 0, !nosanitize !9
  %.not24 = icmp ult i64 %i.l, ptrtoint (ptr @s_registers to i64), !nosanitize !9
  br i1 %.not24, label %bb.k, label %bb.l, !prof !10, !nosanitize !9

bb.k:                                             ; preds = %bb.j
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @140, i64 ptrtoint (ptr @s_registers to i64), i64 %i.l) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.l:                                             ; preds = %bb.j
  %i.m = getelementptr inbounds nuw [12 x i8], ptr @s_registers, i64 %i.e ; 2 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %i.a ; 2 uses
  %i.o = shl nuw nsw i64 %i.a, 1
  %i.p = ptrtoint ptr %i.m to i64, !nosanitize !9 ; 4 uses
  %i.q = add i64 %i.o, %i.p, !nosanitize !9       ; 3 uses
  %.not25 = icmp eq i64 %i.q, 0, !nosanitize !9
  %.not26 = icmp ult i64 %i.q, %i.p, !nosanitize !9
  br i1 %.not26, label %bb.m, label %bb.n, !prof !10, !nosanitize !9

bb.m:                                             ; preds = %bb.l
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @141, i64 %i.p, i64 %i.q) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.n:                                             ; preds = %bb.l
  store i8 1, ptr %i.n, align 2, !tbaa !90
  br i1 %.not23, label %bb.o, label %bb.p, !prof !10, !nosanitize !9

bb.o:                                             ; preds = %bb.n
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @142, i64 ptrtoint (ptr @s_registers to i64), i64 0) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.p:                                             ; preds = %bb.n
  br i1 %.not25, label %bb.q, label %bb.r, !prof !10, !nosanitize !9

bb.q:                                             ; preds = %bb.p
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @143, i64 %i.p, i64 0) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.r:                                             ; preds = %bb.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store i8 0, ptr %i.r, align 1, !tbaa !91
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.i
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @b3CreateContact(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 !func_sanitize !143 {
bb.a:
  %4 = alloca %struct.b3ChildShape, align 8       ; 4 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.v, %bb.a
  %.tr214 = phi ptr [ %1, %bb.a ], [ %.tr215, %bb.v ] ; 13 uses
  %.tr215 = phi ptr [ %2, %bb.a ], [ %.tr214, %bb.v ] ; 13 uses
  %i.a = icmp ne ptr %.tr214, null, !nosanitize !9
  %i.b = ptrtoint ptr %.tr214 to i64, !nosanitize !9 ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !9
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !9
  %i.e = and i1 %i.a, %i.d, !nosanitize !9
  br i1 %i.e, label %bb.c, label %bb.b, !prof !11, !nosanitize !9

bb.b:                                             ; preds = %tailrecurse
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @12, i64 %i.b) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %tailrecurse
  %i.f = getelementptr inbounds nuw i8, ptr %.tr214, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !92   ; 3 uses
  %i.h = icmp ne ptr %.tr215, null, !nosanitize !9
  %i.i = ptrtoint ptr %.tr215 to i64, !nosanitize !9 ; 2 uses
  %i.j = and i64 %i.i, 7, !nosanitize !9
  %i.k = icmp eq i64 %i.j, 0, !nosanitize !9
  %i.l = and i1 %i.h, %i.k, !nosanitize !9
  br i1 %i.l, label %bb.e, label %bb.d, !prof !11, !nosanitize !9

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @14, i64 %i.i) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.tr215, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !92   ; 3 uses
  %i.o = zext i32 %i.g to i64, !nosanitize !9     ; 3 uses
  %i.p = icmp ult i32 %i.g, 6
  br i1 %i.p, label %bb.g, label %bb.f, !prof !11, !nosanitize !9

bb.f:                                             ; preds = %bb.e
  tail call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @16, i64 %i.o) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.g:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw [12 x i8], ptr @s_registers, i64 %i.o ; 2 uses
  %i.r = mul nuw nsw i64 %i.o, 12
  %i.s = add i64 %i.r, ptrtoint (ptr @s_registers to i64), !nosanitize !9 ; 3 uses
  %.not = icmp eq i64 %i.s, 0, !nosanitize !9
  %.not188 = icmp ult i64 %i.s, ptrtoint (ptr @s_registers to i64), !nosanitize !9
  br i1 %.not188, label %bb.h, label %bb.i, !prof !10, !nosanitize !9

bb.h:                                             ; preds = %bb.g
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @17, i64 ptrtoint (ptr @s_registers to i64), i64 %i.s) #8, !nosanitize !9
  unreachable, !nosanitize !9

end_hunk_0
