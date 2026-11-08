Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/jsonfuncs?download=true
inline.NumInlined: 240
inline.NumDeleted: 44
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@populate_recordset_object_field_end:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @populate_recordset_object_start(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %1 = alloca %struct.HASHCTL, align 8            ; 6 uses
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #14 ; 0 uses
  %i.f = tail call i32 @errcode(i32 noundef 50856066) #13 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.84, ptr noundef %i.h) #13 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 4226, ptr noundef nonnull @__func__.populate_recordset_object_start) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = icmp sgt i32 %i.c, 1
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 64, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 80, ptr %i.l, align 8
  %i.m = load ptr, ptr @CurrentMemoryContext, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %i.m, ptr %i.n, align 8
  %i.o = call ptr @hash_create(ptr noundef nonnull @.str.77, i64 noundef 100, ptr noundef nonnull %1, i32 noundef 1048) #13
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.o, ptr %i.p, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @populate_recordset_object_end(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %1 = alloca %struct.JsObject, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp sgt i32 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %1, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.f, ptr %i.g, align 8
  call fastcc void @populate_recordset_record(ptr noundef nonnull %0, ptr noundef %1)
  %i.h = load ptr, ptr %i.e, align 8
  tail call void @hash_destroy(ptr noundef %i.h) #13
  store ptr null, ptr %i.e, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @populate_recordset_record(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.HeapTupleData, align 8      ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8              ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 4 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.b

._crit_edge.i:                                    ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = load i32, ptr %i.h, align 4              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.k = load i32, ptr %i.j, align 8              ; 2 uses
  %.not16.i = icmp eq i32 %i.i, %i.k
  br i1 %.not16.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.m = load i32, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  %i.o = load i32, ptr %i.n, align 4
  %.not17.i = icmp eq i32 %i.m, %i.o
  br i1 %.not17.i, label %update_cached_tupdesc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i
  %i.p = phi i32 [ %.pre.i, %._crit_edge.i ], [ %i.i, %bb.c ], [ %i.k, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  %i.r = load i32, ptr %i.q, align 4
  %i.s = tail call ptr @lookup_rowtype_tupdesc(i32 noundef %i.p, i32 noundef %i.r) #13 ; 3 uses
  %i.t = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not18.i = icmp eq ptr %i.t, null
  br i1 %.not18.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @FreeTupleDesc(ptr noundef nonnull %i.t) #13
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.u = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %i.e, ptr @CurrentMemoryContext, align 8
  %i.v = tail call ptr @CreateTupleDescCopy(ptr noundef %i.s) #13 ; 2 uses
  store ptr %i.v, ptr %i.f, align 8
  store ptr %i.u, ptr @CurrentMemoryContext, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %i.x = load i32, ptr %i.w, align 4
  %i.y = icmp sgt i32 %i.x, -1
  br i1 %i.y, label %bb.g, label %update_cached_tupdesc.exit

bb.g:                                             ; preds = %bb.f
  tail call void @DecrTupleDescRefCount(ptr noundef nonnull %i.s) #13
  %.pre = load ptr, ptr %i.f, align 8
  br label %update_cached_tupdesc.exit

update_cached_tupdesc.exit:                       ; preds = %bb.c, %bb.f, %bb.g
  %i.z = phi ptr [ %i.g, %bb.c ], [ %i.v, %bb.f ], [ %.pre, %bb.g ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = load ptr, ptr %i.d, align 8
  %i.ad = tail call fastcc ptr @populate_record(ptr noundef %i.z, ptr noundef nonnull %i.c, ptr noundef %i.ab, ptr noundef %i.ac, ptr noundef %1, ptr noundef null) ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = icmp eq i32 %i.af, 67
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %update_cached_tupdesc.exit
  %i.ah = tail call i64 @HeapTupleHeaderGetDatum(ptr noundef %i.ad) #13
  %i.ai = load i32, ptr %i.b, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.ak = load ptr, ptr %i.d, align 8
  %i.al = tail call zeroext i1 @domain_check_safe(i64 noundef %i.ah, i1 noundef zeroext false, i32 noundef %i.ai, ptr noundef nonnull %i.aj, ptr noundef %i.ak, ptr noundef null) #13 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %update_cached_tupdesc.exit
  %.val = load i32, ptr %i.ad, align 4
  %i.am = lshr i32 %.val, 2
  store i32 %i.am, ptr %2, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i16 -1, ptr %i.an, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 6
  store i16 -1, ptr %i.ao, align 2
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i16 0, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 0, ptr %i.aq, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.ad, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.at = load ptr, ptr %i.as, align 8
  call void @tuplestore_puttuple(ptr noundef %i.at, ptr noundef nonnull %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret void
}

declare void @appendStringInfoChar(ptr noundef, i8 noundef signext) local_unnamed_addr #2

declare void @appendStringInfoString(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @push_path(ptr noundef nonnull %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, ptr noundef %5) unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.JsonbValue, align 8         ; 4 uses
  %7 = alloca %struct.JsonbValue, align 8         ; 6 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = sub i32 %4, %1                           ; 2 uses
  %i.c = sext i32 %i.b to i64
  %i.d = tail call ptr @palloc0_mul(i64 noundef 4, i64 noundef %i.c) #13 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %.04448 = add i32 %1, 1                         ; 2 uses
  %i.e = icmp slt i32 %.04448, %4
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %.04449 = phi i32 [ %.04448, %.lr.ph ], [ %.044, %bb.h ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %8 = sext i32 %.04449 to i64                    ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %3, i64 %8
  %i.i = load i8, ptr %i.h, align 1, !range !7, !noundef !8
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds [8 x i8], ptr %2, i64 %8
  %i.l = load i64, ptr %i.k, align 8
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = call ptr @text_to_cstring(ptr noundef %i.m) #13 ; 4 uses
  %i.o = tail call ptr @__errno_location() #15    ; 2 uses
  store i32 0, ptr %i.o, align 4
  %i.p = call i32 @strtoint(ptr noundef %i.n, ptr noundef nonnull %i.a, i32 noundef 10) #13 ; 2 uses
  %i.q = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.n
  br i1 %i.r, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load i8, ptr %i.q, align 1
  %.not = icmp eq i8 %i.s, 0
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = load i32, ptr %i.o, align 4
  %.not47 = icmp eq i32 %i.t, 0
  br i1 %.not47, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  store i32 1, ptr %7, align 8
  store ptr %i.n, ptr %i.g, align 8
  %i.u = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.n) #16
  %i.v = trunc i64 %i.u to i32
  store i32 %i.v, ptr %i.f, align 8
  call void @pushJsonbValue(ptr noundef nonnull %0, i32 noundef 6, ptr noundef null) #13
  call void @pushJsonbValue(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %7) #13
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @pushJsonbValue(ptr noundef nonnull %0, i32 noundef 4, ptr noundef null) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  store i32 0, ptr %6, align 8
  %i.w = icmp sgt i32 %i.p, 0
  br i1 %i.w, label %.lr.ph.i, label %push_null_elements.exit

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i
  %.01.i = phi i32 [ %i.x, %.lr.ph.i ], [ %i.p, %bb.g ] ; 2 uses
  %i.x = add nsw i32 %.01.i, -1
  call void @pushJsonbValue(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull %6) #13
  %i.y = icmp samesign ugt i32 %.01.i, 1
  br i1 %i.y, label %.lr.ph.i, label %push_null_elements.exit, !llvm.loop !0

push_null_elements.exit:                          ; preds = %.lr.ph.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %push_null_elements.exit
  %.sink = phi i32 [ 17, %bb.f ], [ 16, %push_null_elements.exit ]
  %i.z = sub i32 %.04449, %1
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.aa
  store i32 %.sink, ptr %i.ab, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %.044 = add nsw i32 %.04449, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %.044, %4
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !56

.critedge:                                        ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %.loopexit

.loopexit:                                        ; preds = %bb.h, %bb.a, %.critedge
  %i.ac = add i32 %i.b, -1
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = icmp eq i32 %i.af, 16
  %. = select i1 %i.ag, i32 3, i32 2
  call void @pushJsonbValue(ptr noundef nonnull %0, i32 noundef %., ptr noundef %5) #13
  %.050 = add i32 %4, -1                          ; 2 uses
  %i.ah = icmp sgt i32 %.050, %1
  br i1 %i.ah, label %.lr.ph52, label %._crit_edge

.lr.ph52:                                         ; preds = %.loopexit, %bb.i
  %.051 = phi i32 [ %.0, %bb.i ], [ %.050, %.loopexit ] ; 3 uses
  %9 = sext i32 %.051 to i64
  %i.ai = getelementptr inbounds i8, ptr %3, i64 %9
  %i.aj = load i8, ptr %i.ai, align 1, !range !7, !noundef !8
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %.lr.ph52
  %i.al = sub i32 %.051, %1
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = icmp eq i32 %i.ao, 17
  %.67 = select i1 %i.ap, i32 7, i32 5
  call void @pushJsonbValue(ptr noundef nonnull %0, i32 noundef %.67, ptr noundef null) #13
  %.0 = add nsw i32 %.051, -1                     ; 2 uses
  %i.aq = icmp sgt i32 %.0, %1
  br i1 %i.aq, label %.lr.ph52, label %._crit_edge, !llvm.loop !57

._crit_edge:                                      ; preds = %bb.i, %.lr.ph52, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  ret void
}

declare void @escape_json_text(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind willreturn memory(none) }
attributes #16 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !{!0, !9}
!1 = distinct !{!1, !9}
!2 = distinct !{null}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!7 = !{i8 0, i8 2}
!8 = !{}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.peeled.count", i32 1}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !9, !10}
!13 = distinct !{!13, !9}
!14 = distinct !{!14, !9}
!15 = distinct !{null}
!16 = distinct !{!16, !9}
!17 = distinct !{!17, !9}
!18 = distinct !{null}
!19 = distinct !{!19, !9}
!20 = distinct !{!20, !9}
!21 = distinct !{!21, !9, !10}
!22 = distinct !{!22, !9, !10}
!23 = distinct !{!23, !9, !10}
!24 = distinct !{!24, !9, !10}
!25 = distinct !{null}
!26 = distinct !{null, null}
!27 = distinct !{!27, !9}
!28 = distinct !{null}
!29 = distinct !{!29, !9, !10}
!30 = distinct !{!30, !9}
!31 = distinct !{!31, !9}
!32 = distinct !{!32, !9}
!33 = distinct !{!33, !9}
!34 = distinct !{!34, !9}
!35 = distinct !{!35, !9}
!36 = distinct !{!36, !9}
!37 = distinct !{!37, !9}
!38 = distinct !{!38, !9}
!39 = distinct !{!39, !9}
!40 = distinct !{!40, !9}
!41 = distinct !{!41, !9}
!42 = distinct !{!42, !9}
!43 = distinct !{!43, !9}
!44 = distinct !{!44, !9}
!45 = distinct !{!45, !9}
!46 = distinct !{!46, !9}
!47 = distinct !{!47, !11}
!48 = distinct !{!48, !9}
!49 = distinct !{!49, !11}
!50 = distinct !{!50, !11}
!51 = distinct !{!51, !11}
!52 = distinct !{!52, !9}
!53 = distinct !{!53, !9}
!54 = distinct !{!54, !11}
!55 = distinct !{!55, !9}
!56 = distinct !{!56, !9}
!57 = distinct !{!57, !9}
end_hunk_0
