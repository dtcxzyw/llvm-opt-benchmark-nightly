inline.NumInlined: 372
inline.NumDeleted: 69
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@frozenset___contains__:bb.a
  %spec.store.select.i.i = select i1 %i.au, i64 590923713, i64 %i.at
  br label %_PyObject_HashFast.exit.thread.i

_PyObject_HashFast.exit.thread.i:                 ; preds = %frozenset_hash_impl.exit.i, %_PyObject_HashFast.exit.i, %bb.b
  %.0.i = phi i64 [ %spec.store.select.i.i, %frozenset_hash_impl.exit.i ], [ %i.c, %_PyObject_HashFast.exit.i ], [ %.val8.i.i, %bb.b ] ; 3 uses
  %i.av = getelementptr i8, ptr %0, i64 40
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !22
  %i.ax = getelementptr i8, ptr %0, i64 32
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !24 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.p, %_PyObject_HashFast.exit.thread.i
  %.025.i.i = phi i64 [ %.0.i, %_PyObject_HashFast.exit.thread.i ], [ %i.bl, %bb.p ]
  %.pn.i.i = phi i64 [ %.0.i, %_PyObject_HashFast.exit.thread.i ], [ %i.bo, %bb.p ]
  %.024.i.i = and i64 %.pn.i.i, %i.ay             ; 3 uses
  %i.az = getelementptr [16 x i8], ptr %i.aw, i64 %.024.i.i
  %i.ba = add i64 %.024.i.i, 9
  %.not.i22.i = icmp ugt i64 %i.ba, %i.ay
  %i.bb = select i1 %.not.i22.i, i32 0, i32 9
  br label %bb.m

bb.m:                                             ; preds = %set_compare_frozenset.exit.thread28.i, %bb.l
  %.026.i23.i = phi ptr [ %i.az, %bb.l ], [ %i.bj, %set_compare_frozenset.exit.thread28.i ] ; 3 uses
  %.0.i.i = phi i32 [ %i.bb, %bb.l ], [ %i.bk, %set_compare_frozenset.exit.thread28.i ] ; 2 uses
  %i.bc = load ptr, ptr %.026.i23.i, align 8, !tbaa !27 ; 3 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %set_do_lookup.exit.thread.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.be = icmp eq ptr %i.bc, %1
  br i1 %i.be, label %set_do_lookup.exit.thread.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = getelementptr i8, ptr %.026.i23.i, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !25
  %i.bh = icmp eq i64 %i.bg, %.0.i
  br i1 %i.bh, label %set_compare_frozenset.exit.i, label %set_compare_frozenset.exit.thread28.i

set_compare_frozenset.exit.i:                     ; preds = %bb.o
  %i.bi = tail call i32 @PyObject_RichCompareBool(ptr noundef nonnull %i.bc, ptr noundef %1, i32 noundef 2) #12, !inline_history !153 ; 3 uses
  %cond.i = icmp eq i32 %i.bi, 0
  br i1 %cond.i, label %set_compare_frozenset.exit.thread28.i, label %set_do_lookup.exit.i

set_compare_frozenset.exit.thread28.i:            ; preds = %set_compare_frozenset.exit.i, %bb.o
  %i.bj = getelementptr i8, ptr %.026.i23.i, i64 16
  %i.bk = add nsw i32 %.0.i.i, -1
  %.not30.i.i = icmp eq i32 %.0.i.i, 0
  br i1 %.not30.i.i, label %bb.p, label %bb.m, !llvm.loop !89

bb.p:                                             ; preds = %set_compare_frozenset.exit.thread28.i
  %i.bl = lshr i64 %.025.i.i, 5                   ; 2 uses
  %i.bm = mul i64 %.024.i.i, 5
  %i.bn = add nuw nsw i64 %i.bl, 1
  %i.bo = add i64 %i.bn, %i.bm
  br label %bb.l

set_do_lookup.exit.i:                             ; preds = %set_compare_frozenset.exit.i
  %i.bp = icmp slt i32 %i.bi, 0
  br i1 %i.bp, label %frozenset___contains___impl.exit, label %set_do_lookup.exit.thread.i

set_do_lookup.exit.thread.i:                      ; preds = %bb.n, %bb.m, %set_do_lookup.exit.i
  %.027.i33.i = phi i32 [ %i.bi, %set_do_lookup.exit.i ], [ 0, %bb.m ], [ 1, %bb.n ]
  %i.bq = zext nneg i32 %.027.i33.i to i64
  %i.br = tail call ptr @PyBool_FromLong(i64 noundef %i.bq) #12, !inline_history !153
  br label %frozenset___contains___impl.exit

frozenset___contains___impl.exit:                 ; preds = %bb.g, %bb.h, %bb.i, %bb.j, %set_do_lookup.exit.i, %set_do_lookup.exit.thread.i
  %.1.i = phi ptr [ null, %bb.j ], [ null, %bb.g ], [ null, %bb.h ], [ null, %bb.i ], [ %i.br, %set_do_lookup.exit.thread.i ], [ null, %set_do_lookup.exit.i ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal ptr @frozenset_copy(ptr nofree noundef captures(address, ret: address, provenance) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !11 ; 3 uses
  %.not.i = icmp eq ptr %.val.i, @PyFrozenSet_Type
  br i1 %.not.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.c = icmp ugt i32 %i.b, -1073741825
  br i1 %i.c, label %frozenset_copy_impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %i.b, 1
  store i32 %i.d, ptr %0, align 8, !tbaa !21
  br label %frozenset_copy_impl.exit

bb.d:                                             ; preds = %bb.a
  %.not4.i = icmp eq ptr %.val.i, @PySet_Type
  br i1 %.not4.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i32 @PyType_IsSubtype(ptr noundef %.val.i, ptr noundef nonnull @PySet_Type) #12, !inline_history !154
  %.not.i8.i.i = icmp eq i32 %i.e, 0
  %PyFrozenSet_Type.PySet_Type.i.i.i = select i1 %.not.i8.i.i, ptr @PyFrozenSet_Type, ptr @PySet_Type
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i.i.i = phi ptr [ %PyFrozenSet_Type.PySet_Type.i.i.i, %bb.e ], [ @PySet_Type, %bb.d ] ; 2 uses
  %i.f = getelementptr i8, ptr %.0.i.i.i, i64 304
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !75
  %i.h = tail call ptr %i.g(ptr noundef nonnull %.0.i.i.i, i64 noundef 0) #12, !inline_history !155 ; 13 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %frozenset_copy_impl.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr i8, ptr %i.h, i64 16
  %i.k = getelementptr i8, ptr %i.h, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  store i64 7, ptr %i.k, align 8, !tbaa !24
  %i.l = getelementptr i8, ptr %i.h, i64 64
  %i.m = getelementptr i8, ptr %i.h, i64 40
  store ptr %i.l, ptr %i.m, align 8, !tbaa !22
  %i.n = getelementptr i8, ptr %i.h, i64 48
  store i64 -1, ptr %i.n, align 8, !tbaa !70
  %i.o = getelementptr i8, ptr %i.h, i64 56
  store i64 0, ptr %i.o, align 8, !tbaa !77
  %i.p = getelementptr i8, ptr %i.h, i64 192
  store ptr null, ptr %i.p, align 8, !tbaa !51
  %i.q = tail call fastcc i32 @set_merge_lock_held(ptr noundef nonnull %i.h, ptr noundef nonnull readonly %0), !inline_history !156
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.h, label %frozenset_copy_impl.exit

bb.h:                                             ; preds = %bb.g
  %i.s = load i32, ptr %i.h, align 8, !tbaa !21   ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.s, -1
  br i1 %.not.i.i.i, label %bb.i, label %frozenset_copy_impl.exit

bb.i:                                             ; preds = %bb.h
  %i.t = add nsw i32 %i.s, -1                     ; 2 uses
  store i32 %i.t, ptr %i.h, align 8, !tbaa !21
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.j, label %frozenset_copy_impl.exit

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.h) #12, !inline_history !156
  br label %frozenset_copy_impl.exit

frozenset_copy_impl.exit:                         ; preds = %bb.b, %bb.c, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j
  %.0.i = phi ptr [ %0, %bb.c ], [ %0, %bb.b ], [ null, %bb.j ], [ %i.h, %bb.g ], [ null, %bb.h ], [ null, %bb.i ], [ null, %bb.f ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @make_new_frozenset(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, @PyFrozenSet_Type
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 304
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !75
  %i.c = tail call ptr %i.b(ptr noundef %0, i64 noundef 0) #12, !inline_history !76 ; 14 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %make_new_set.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %i.c, i64 16
  %i.f = getelementptr i8, ptr %i.c, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store i64 7, ptr %i.f, align 8, !tbaa !24
  %i.g = getelementptr i8, ptr %i.c, i64 64
  %i.h = getelementptr i8, ptr %i.c, i64 40
  store ptr %i.g, ptr %i.h, align 8, !tbaa !22
  %i.i = getelementptr i8, ptr %i.c, i64 48
  store i64 -1, ptr %i.i, align 8, !tbaa !70
  %i.j = getelementptr i8, ptr %i.c, i64 56
  store i64 0, ptr %i.j, align 8, !tbaa !77
  %i.k = getelementptr i8, ptr %i.c, i64 192
  store ptr null, ptr %i.k, align 8, !tbaa !51
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %make_new_set.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = tail call fastcc i32 @set_update_local(ptr noundef nonnull %i.c, ptr noundef nonnull %1), !inline_history !76
  %.not19.i = icmp eq i32 %i.l, 0
  br i1 %.not19.i, label %make_new_set.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load i32, ptr %i.c, align 8, !tbaa !21   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.m, -1
  br i1 %.not.i.i, label %bb.f, label %make_new_set.exit

bb.f:                                             ; preds = %bb.e
  %i.n = add nsw i32 %i.m, -1                     ; 2 uses
  store i32 %i.n, ptr %i.c, align 8, !tbaa !21
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.g, label %make_new_set.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #12, !inline_history !76
  br label %make_new_set.exit

bb.h:                                             ; preds = %bb.a
  %.not15 = icmp eq ptr %1, null
  br i1 %.not15, label %.split, label %bb.j

.split:                                           ; preds = %bb.h
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @PyFrozenSet_Type, i64 304), align 8, !tbaa !75
  %i.q = tail call ptr %i.p(ptr noundef nonnull @PyFrozenSet_Type, i64 noundef 0) #12, !inline_history !76 ; 9 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %make_new_set.exit, label %bb.i

bb.i:                                             ; preds = %.split
  %i.s = getelementptr i8, ptr %i.q, i64 16
  %i.t = getelementptr i8, ptr %i.q, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  store i64 7, ptr %i.t, align 8, !tbaa !24
  %i.u = getelementptr i8, ptr %i.q, i64 64
  %i.v = getelementptr i8, ptr %i.q, i64 40
  store ptr %i.u, ptr %i.v, align 8, !tbaa !22
  %i.w = getelementptr i8, ptr %i.q, i64 48
  store i64 -1, ptr %i.w, align 8, !tbaa !70
  %i.x = getelementptr i8, ptr %i.q, i64 56
  store i64 0, ptr %i.x, align 8, !tbaa !77
  %i.y = getelementptr i8, ptr %i.q, i64 192
  store ptr null, ptr %i.y, align 8, !tbaa !51
  br label %make_new_set.exit19

bb.j:                                             ; preds = %bb.h
  %i.z = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.z, align 8, !tbaa !11
  %.not27 = icmp eq ptr %.val, @PyFrozenSet_Type
  br i1 %.not27, label %bb.o, label %.split12

.split12:                                         ; preds = %bb.j
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @PyFrozenSet_Type, i64 304), align 8, !tbaa !75
  %i.ab = tail call ptr %i.aa(ptr noundef nonnull @PyFrozenSet_Type, i64 noundef 0) #12, !inline_history !76 ; 13 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %make_new_set.exit, label %bb.k

bb.k:                                             ; preds = %.split12
  %i.ad = getelementptr i8, ptr %i.ab, i64 16
  %i.ae = getelementptr i8, ptr %i.ab, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  store i64 7, ptr %i.ae, align 8, !tbaa !24
  %i.af = getelementptr i8, ptr %i.ab, i64 64
  %i.ag = getelementptr i8, ptr %i.ab, i64 40
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !22
  %i.ah = getelementptr i8, ptr %i.ab, i64 48
  store i64 -1, ptr %i.ah, align 8, !tbaa !70
  %i.ai = getelementptr i8, ptr %i.ab, i64 56
  store i64 0, ptr %i.ai, align 8, !tbaa !77
  %i.aj = getelementptr i8, ptr %i.ab, i64 192
  store ptr null, ptr %i.aj, align 8, !tbaa !51
  %i.ak = tail call fastcc i32 @set_update_local(ptr noundef nonnull %i.ab, ptr noundef nonnull %1), !inline_history !76
  %.not19.i21 = icmp eq i32 %i.ak, 0
  br i1 %.not19.i21, label %make_new_set.exit19, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = load i32, ptr %i.ab, align 8, !tbaa !21 ; 2 uses
  %.not.i.i22 = icmp sgt i32 %i.al, -1
  br i1 %.not.i.i22, label %bb.m, label %make_new_set.exit

bb.m:                                             ; preds = %bb.l
  %i.am = add nsw i32 %i.al, -1                   ; 2 uses
  store i32 %i.am, ptr %i.ab, align 8, !tbaa !21
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.n, label %make_new_set.exit

bb.n:                                             ; preds = %bb.m
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ab) #12, !inline_history !76
  br label %make_new_set.exit

bb.o:                                             ; preds = %bb.j
  %i.ao = load i32, ptr %1, align 8, !tbaa !21    ; 2 uses
  %i.ap = icmp ugt i32 %i.ao, -1073741825
  br i1 %i.ap, label %make_new_set.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aq = add nuw i32 %i.ao, 1
  store i32 %i.aq, ptr %1, align 8, !tbaa !21
  br label %make_new_set.exit

make_new_set.exit19:                              ; preds = %bb.i, %bb.k
  %phi.call = phi ptr [ %i.q, %bb.i ], [ %i.ab, %bb.k ] ; 2 uses
  tail call fastcc void @_PyFrozenSet_MaybeUntrack(ptr noundef %phi.call)
  br label %make_new_set.exit

make_new_set.exit:                                ; preds = %bb.m, %bb.l, %bb.n, %.split12, %.split, %bb.p, %bb.o, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %make_new_set.exit19
  %.0 = phi ptr [ %1, %bb.p ], [ null, %bb.g ], [ %phi.call, %make_new_set.exit19 ], [ null, %bb.b ], [ %i.c, %bb.c ], [ %i.c, %bb.d ], [ null, %bb.e ], [ null, %bb.f ], [ %1, %bb.o ], [ null, %.split ], [ null, %.split12 ], [ null, %bb.n ], [ null, %bb.l ], [ null, %bb.m ]
  ret ptr %.0
}

declare i32 @PyObject_IS_GC(ptr noundef) local_unnamed_addr #2

declare void @_Py_TriggerGC(ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind uwtable
define internal void @dummy_dealloc(ptr nofree readnone captures(none) %0) #8 {
bb.a:
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.dummy_dealloc, ptr noundef nonnull @.str.42) #13
  unreachable
}

; Function Attrs: nounwind uwtable
define internal ptr @dummy_repr(ptr nofree readnone captures(none) %0) #0 {
bb.a:
  %i.a = tail call ptr @PyUnicode_FromString(ptr noundef nonnull @.str.43) #12
  ret ptr %i.a
}

; Function Attrs: noreturn
declare void @_Py_FatalErrorFunc(ptr noundef, ptr noundef) local_unnamed_addr #9

declare ptr @PyUnicode_FromString(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }

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
!11 = !{!12, !13, i64 8}
!12 = !{!"_object", !9, i64 0, !13, i64 8}
!13 = !{!"p1 _ZTS11_typeobject", !14, i64 0}
!14 = !{!"any pointer", !9, i64 0}
!15 = !{!16, !17, i64 24}
!16 = !{!"", !12, i64 0, !17, i64 16, !17, i64 24, !18, i64 32}
!17 = !{!"long", !9, i64 0}
!18 = !{!"_PyUnicodeObject_state", !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"p1 _ZTS7_object", !14, i64 0}
!21 = !{!9, !9, i64 0}
!22 = !{!23, !14, i64 40}
!23 = !{!"", !12, i64 0, !17, i64 16, !17, i64 24, !17, i64 32, !14, i64 40, !17, i64 48, !17, i64 56, !9, i64 64, !20, i64 192}
!24 = !{!23, !17, i64 32}
!25 = !{!26, !17, i64 8}
!26 = !{!"", !20, i64 0, !17, i64 8}
!27 = !{!26, !20, i64 0}
!28 = !{!16, !17, i64 16}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!23, !17, i64 24}
!32 = !{!23, !17, i64 16}
!33 = !{!34, !17, i64 8}
!34 = !{!"", !17, i64 0, !17, i64 8}
!35 = !{!34, !17, i64 0}
!36 = !{!37, !37, i64 0}
!37 = !{!"p1 _ZTS3_is", !14, i64 0}
!38 = !{!39, !8, i64 28}
!39 = !{!"_gc_runtime_state", !8, i64 0, !8, i64 4, !40, i64 8, !9, i64 32, !40, i64 80, !9, i64 104, !8, i64 224, !41, i64 232, !20, i64 240, !20, i64 248, !17, i64 256, !17, i64 264, !8, i64 272, !8, i64 276}
!40 = !{!"gc_generation", !34, i64 0, !8, i64 16, !8, i64 20}
!41 = !{!"p1 _ZTS19_PyInterpreterFrame", !14, i64 0}
!42 = !{!39, !17, i64 256}
!43 = !{!44, !14, i64 16}
!44 = !{!"", !12, i64 0, !14, i64 16, !17, i64 24, !17, i64 32, !17, i64 40}
!45 = !{!44, !17, i64 24}
!46 = !{!44, !17, i64 32}
!47 = distinct !{!47, !30}
!48 = !{!44, !17, i64 40}
!49 = distinct !{!49, !30}
!50 = distinct !{null}
!51 = !{!23, !20, i64 192}
!52 = distinct !{!52, !30}
!53 = !{!54, !14, i64 320}
!54 = !{!"_typeobject", !55, i64 0, !56, i64 24, !17, i64 32, !17, i64 40, !14, i64 48, !17, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !14, i64 104, !14, i64 112, !14, i64 120, !14, i64 128, !14, i64 136, !14, i64 144, !14, i64 152, !14, i64 160, !17, i64 168, !56, i64 176, !14, i64 184, !14, i64 192, !14, i64 200, !17, i64 208, !14, i64 216, !14, i64 224, !57, i64 232, !58, i64 240, !59, i64 248, !13, i64 256, !20, i64 264, !14, i64 272, !14, i64 280, !17, i64 288, !14, i64 296, !14, i64 304, !14, i64 312, !14, i64 320, !14, i64 328, !20, i64 336, !20, i64 344, !20, i64 352, !14, i64 360, !20, i64 368, !14, i64 376, !8, i64 384, !14, i64 392, !14, i64 400, !9, i64 408, !60, i64 410}
!55 = !{!"PyVarObject", !12, i64 0, !17, i64 16}
!56 = !{!"p1 omnipotent char", !14, i64 0}
!57 = !{!"p1 _ZTS11PyMethodDef", !14, i64 0}
!58 = !{!"p1 _ZTS11PyMemberDef", !14, i64 0}
!59 = !{!"p1 _ZTS11PyGetSetDef", !14, i64 0}
!60 = !{!"short", !9, i64 0}
!61 = distinct !{null}
!62 = !{!54, !56, i64 24}
!63 = distinct !{!63, !30}
!64 = !{!65, !66, i64 24}
!65 = !{!"", !55, i64 0, !66, i64 24, !17, i64 32}
!66 = !{!"p2 _ZTS7_object", !67, i64 0}
!67 = !{!"any p2 pointer", !14, i64 0}
!68 = distinct !{!68, !30}
!69 = distinct !{!69, !30}
!70 = !{!23, !17, i64 48}
!71 = distinct !{!71, !30}
!72 = !{ptr @set_richcompare}
!73 = !{!39, !8, i64 272}
!74 = !{!39, !8, i64 24}
!75 = !{!54, !14, i64 304}
!76 = distinct !{null}
!77 = !{!23, !17, i64 56}
!78 = !{!54, !14, i64 296}
!79 = distinct !{!79, !30}
!80 = distinct !{null}
!81 = !{!14, !14, i64 0}
!82 = !{!17, !17, i64 0}
!83 = distinct !{!83, !30}
!84 = distinct !{!84, !30}
!85 = distinct !{!85, !30}
!86 = distinct !{!86, !30}
!87 = !{i64 0, i64 8, !21, i64 8, i64 8, !88, i64 16, i64 8, !81, i64 24, i64 8, !82, i64 32, i64 8, !82, i64 40, i64 8, !82}
!88 = !{!13, !13, i64 0}
!89 = distinct !{!89, !30}
!90 = distinct !{!90, !30}
!91 = distinct !{ptr @set_copy, null, ptr @make_new_set_basetype}
!92 = distinct !{ptr @set_copy, null, ptr @make_new_set_basetype, null}
!93 = distinct !{ptr @set_copy, null}
!94 = distinct !{null}
!95 = !{ptr @make_new_set_basetype}
end_hunk_0
