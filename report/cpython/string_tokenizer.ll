inline.NumInlined: 2
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden ptr @_PyTokenizer_FromString(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 7 uses
  %i.b = tail call ptr @_PyTokenizer_tok_new() #9 ; 25 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.ag, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.d = tail call ptr @_PyTokenizer_translate_newlines(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %i.b) #9 ; 3 uses
  %i.e = getelementptr i8, ptr %i.b, i64 2832     ; 3 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !11
  %i.f = icmp eq ptr %i.d, null
  br i1 %i.f, label %decode_str.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.b, i64 2816     ; 5 uses
  store ptr null, ptr %i.g, align 8, !tbaa !17
  %i.h = getelementptr i8, ptr %i.b, i64 2824     ; 3 uses
  store ptr %i.d, ptr %i.h, align 8, !tbaa !18
  %i.i = tail call i32 @_PyTokenizer_check_bom(ptr noundef nonnull @buf_getc, ptr noundef nonnull @buf_ungetc, ptr noundef nonnull @buf_setreadl, ptr noundef nonnull %i.b) #9
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = tail call ptr @_PyTokenizer_error_ret(ptr noundef nonnull %i.b) #9
  br label %decode_str.exit

bb.e:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !18   ; 2 uses
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !17   ; 2 uses
  %.not87.i = icmp eq ptr %i.l, null
  br i1 %.not87.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = tail call ptr @_PyTokenizer_translate_into_utf8(ptr noundef %i.k, ptr noundef nonnull %i.l) #9 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = tail call ptr @_PyTokenizer_error_ret(ptr noundef nonnull %i.b) #9
  br label %decode_str.exit

bb.h:                                             ; preds = %bb.f
  %i.p = tail call ptr @PyBytes_AsString(ptr noundef nonnull %i.m) #9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.075.i = phi ptr [ %i.m, %bb.h ], [ null, %bb.e ] ; 2 uses
  %.062.i = phi ptr [ %i.p, %bb.h ], [ %i.k, %bb.e ] ; 7 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %bb.i
  %.066.i = phi i32 [ 0, %bb.i ], [ %.167.i, %bb.l ] ; 3 uses
  %.064.i = phi ptr [ %.062.i, %bb.i ], [ %i.t, %bb.l ] ; 3 uses
  %i.q = load i8, ptr %.064.i, align 1, !tbaa !19
  switch i8 %i.q, label %bb.l [
    i8 0, label %bb.m
    i8 10, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.r = zext nneg i32 %.066.i to i64
  %i.s = getelementptr [8 x i8], ptr %i.a, i64 %i.r
  store ptr %.064.i, ptr %i.s, align 8, !tbaa !20
  %.not88.i = icmp eq i32 %.066.i, 0
  br i1 %.not88.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  %.167.i = phi i32 [ 1, %bb.k ], [ %.066.i, %bb.j ]
  %i.t = getelementptr i8, ptr %.064.i, i64 1
  br label %bb.j

bb.m:                                             ; preds = %bb.k, %bb.j
  store ptr null, ptr %i.g, align 8, !tbaa !17
  %i.u = load ptr, ptr %i.a, align 16, !tbaa !20  ; 3 uses
  %.not89.i = icmp eq ptr %i.u, null
  %i.v = getelementptr i8, ptr %i.b, i64 512      ; 5 uses
  br i1 %.not89.i, label %.sink.split.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 1, ptr %i.v, align 8, !tbaa !21
  %i.w = ptrtoint ptr %i.u to i64                 ; 2 uses
  %i.x = ptrtoint ptr %.062.i to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = tail call i32 @_PyTokenizer_check_coding_spec(ptr noundef %.062.i, i64 noundef %i.y, ptr noundef nonnull %i.b, ptr noundef nonnull @buf_setreadl) #9
  %.not90.i = icmp eq i32 %i.z, 0
  br i1 %.not90.i, label %decode_str.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aa = load ptr, ptr %i.g, align 8, !tbaa !17  ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.p, label %.thread100.i

.thread100.i:                                     ; preds = %bb.o
  store i32 0, ptr %i.v, align 8, !tbaa !21
  br label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.ac = getelementptr i8, ptr %i.b, i64 2752
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !22
  %i.ae = icmp ne i32 %i.ad, 2
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.ah = icmp ne ptr %i.ag, null
  %or.cond.i = select i1 %i.ae, i1 %i.ah, i1 false
  br i1 %or.cond.i, label %bb.q, label %.sink.split.i

bb.q:                                             ; preds = %bb.p
  store i32 2, ptr %i.v, align 8, !tbaa !21
  %i.ai = getelementptr i8, ptr %i.u, i64 1
  %i.aj = ptrtoint ptr %i.ag to i64
  %i.ak = sub i64 %i.aj, %i.w
  %i.al = tail call i32 @_PyTokenizer_check_coding_spec(ptr noundef %i.ai, i64 noundef %i.ak, ptr noundef nonnull %i.b, ptr noundef nonnull @buf_setreadl) #9
  %.not91.i = icmp eq i32 %i.al, 0
  br i1 %.not91.i, label %decode_str.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.pr.pre.i = load ptr, ptr %i.g, align 8, !tbaa !17 ; 2 uses
  store i32 0, ptr %i.v, align 8, !tbaa !21
  %.not92.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not92.i, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r, %.thread100.i
  %i.am = phi ptr [ %i.aa, %.thread100.i ], [ %.pr.pre.i, %bb.r ]
  %i.an = tail call ptr @_PyTokenizer_translate_into_utf8(ptr noundef %.062.i, ptr noundef nonnull %i.am) #9 ; 3 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.t, label %.thread102.i

bb.t:                                             ; preds = %bb.s
  %i.ap = tail call ptr @_PyTokenizer_error_ret(ptr noundef nonnull %i.b) #9
  br label %decode_str.exit

.thread102.i:                                     ; preds = %bb.s
  %i.aq = getelementptr i8, ptr %i.an, i64 32
  br label %bb.x

.sink.split.i:                                    ; preds = %bb.p, %bb.m
  store i32 0, ptr %i.v, align 8, !tbaa !21
  br label %bb.u

bb.u:                                             ; preds = %.sink.split.i, %bb.r
  %i.ar = tail call i32 @_PyTokenizer_ensure_utf8(ptr noundef %.062.i, ptr noundef nonnull %i.b, i32 noundef 1) #9
  %.not93.i = icmp eq i32 %i.ar, 0
  br i1 %.not93.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.as = tail call ptr @_PyTokenizer_error_ret(ptr noundef nonnull %i.b) #9
  br label %decode_str.exit

bb.w:                                             ; preds = %bb.u
  %.not94.i = icmp eq ptr %.075.i, null
  br i1 %.not94.i, label %Py_DECREF.exit.thread.i, label %bb.x

bb.x:                                             ; preds = %bb.w, %.thread102.i
  %.163107.i = phi ptr [ %i.aq, %.thread102.i ], [ %.062.i, %bb.w ]
  %.176106.i = phi ptr [ %i.an, %.thread102.i ], [ %.075.i, %bb.w ] ; 6 uses
  %i.at = tail call ptr @_PyTokenizer_translate_newlines(ptr noundef %.163107.i, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %i.b) #9 ; 5 uses
  %.not95.i = icmp eq ptr %i.at, null
  br i1 %.not95.i, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.au = load i32, ptr %.176106.i, align 8, !tbaa !19 ; 2 uses
  %.not.i96.i = icmp sgt i32 %i.au, -1
  br i1 %.not.i96.i, label %bb.z, label %Py_DECREF.exit.i

bb.z:                                             ; preds = %bb.y
  %i.av = add nsw i32 %i.au, -1                   ; 2 uses
  store i32 %i.av, ptr %.176106.i, align 8, !tbaa !19
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.aa, label %Py_DECREF.exit.i

bb.aa:                                            ; preds = %bb.z
  tail call void @_Py_Dealloc(ptr noundef nonnull %.176106.i) #9
  br label %Py_DECREF.exit.i

bb.ab:                                            ; preds = %bb.x
  %i.ax = load ptr, ptr %i.e, align 8, !tbaa !11
  tail call void @PyMem_Free(ptr noundef %i.ax) #9
  store ptr %i.at, ptr %i.e, align 8, !tbaa !11
  %i.ay = load i32, ptr %.176106.i, align 8, !tbaa !19 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.ay, -1
  br i1 %.not.i.i, label %bb.ac, label %Py_DECREF.exit.thread.i

bb.ac:                                            ; preds = %bb.ab
  %i.az = add nsw i32 %i.ay, -1                   ; 2 uses
  store i32 %i.az, ptr %.176106.i, align 8, !tbaa !19
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.ad, label %Py_DECREF.exit.thread.i

bb.ad:                                            ; preds = %bb.ac
  tail call void @_Py_Dealloc(ptr noundef nonnull %.176106.i) #9
  br label %Py_DECREF.exit.thread.i

Py_DECREF.exit.i:                                 ; preds = %bb.aa, %bb.z, %bb.y
  %i.bb = tail call ptr @_PyTokenizer_error_ret(ptr noundef nonnull %i.b) #9
  br label %decode_str.exit

Py_DECREF.exit.thread.i:                          ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.w
  %.3.i = phi ptr [ %.062.i, %bb.w ], [ %i.at, %bb.ad ], [ %i.at, %bb.ac ], [ %i.at, %bb.ab ] ; 2 uses
  store ptr %.3.i, ptr %i.h, align 8, !tbaa !18
  %i.bc = getelementptr i8, ptr %i.b, i64 2800
  store ptr null, ptr %i.bc, align 8, !tbaa !23
  br label %decode_str.exit

decode_str.exit.thread:                           ; preds = %bb.n, %bb.b, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.ae

decode_str.exit:                                  ; preds = %bb.d, %bb.g, %bb.t, %bb.v, %Py_DECREF.exit.i, %Py_DECREF.exit.thread.i
  %.1.i = phi ptr [ %i.j, %bb.d ], [ %i.o, %bb.g ], [ %i.ap, %bb.t ], [ %.3.i, %Py_DECREF.exit.thread.i ], [ %i.bb, %Py_DECREF.exit.i ], [ %i.as, %bb.v ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.bd = icmp eq ptr %.1.i, null
  br i1 %i.bd, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %decode_str.exit.thread, %decode_str.exit
  tail call void @_PyTokenizer_Free(ptr noundef nonnull %i.b) #9
  br label %bb.ag

bb.af:                                            ; preds = %decode_str.exit
  %i.be = getelementptr i8, ptr %i.b, i64 16
  store ptr %.1.i, ptr %i.be, align 8, !tbaa !24
  %i.bf = getelementptr i8, ptr %i.b, i64 8
  store ptr %.1.i, ptr %i.bf, align 8, !tbaa !25
  store ptr %.1.i, ptr %i.b, align 8, !tbaa !26
  %i.bg = getelementptr i8, ptr %i.b, i64 48
  store ptr %.1.i, ptr %i.bg, align 8, !tbaa !27
  %i.bh = getelementptr i8, ptr %i.b, i64 2848
  store ptr @tok_underflow_string, ptr %i.bh, align 8, !tbaa !28
  br label %bb.ag

bb.ag:                                            ; preds = %bb.a, %bb.af, %bb.ae
  %.0 = phi ptr [ %i.b, %bb.af ], [ null, %bb.ae ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @_PyTokenizer_tok_new() local_unnamed_addr #2

declare void @_PyTokenizer_Free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 2) i32 @tok_underflow_string(ptr noundef captures(none) %0) #3 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 3 uses
  %i.c = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.b, i32 noundef 10) #10 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.c, i64 1
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %strlen = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) ; 2 uses
  %strchr = getelementptr inbounds i8, ptr %i.b, i64 %strlen
  %i.e = icmp eq i64 %strlen, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %0, i64 64
  store i32 11, ptr %i.f, align 8, !tbaa !29
  br label %bb.g

bb.e:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ %strchr, %bb.c ]
  %i.g = getelementptr i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !30
  %i.i = icmp eq ptr %i.h, null
  %i.j = getelementptr i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !25   ; 2 uses
  br i1 %i.i, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %bb.e
  store ptr %i.k, ptr %0, align 8, !tbaa !26
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.e, %bb.f
  %i.l = getelementptr i8, ptr %0, i64 2776
  store ptr %i.k, ptr %i.l, align 8, !tbaa !31
  %i.m = getelementptr i8, ptr %0, i64 512        ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !21
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.m, align 8, !tbaa !21
  %i.p = getelementptr i8, ptr %0, i64 524
  store i32 0, ptr %i.p, align 4, !tbaa !32
  store ptr %.0, ptr %i.a, align 8, !tbaa !24
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.d
  %.016 = phi i32 [ 1, %._crit_edge ], [ 0, %bb.d ]
  ret i32 %.016
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare ptr @_PyTokenizer_translate_newlines(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @_PyTokenizer_check_bom(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 256) i32 @buf_getc(ptr noundef captures(none) %0) #3 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 2824       ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 1
  store ptr %i.c, ptr %i.a, align 8, !tbaa !18
  %i.d = load i8, ptr %i.b, align 1, !tbaa !19
  %i.e = zext i8 %i.d to i32
  ret i32 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @buf_ungetc(i32 %0, ptr noundef captures(none) %1) #5 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 2824       ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr i8, ptr %i.b, i64 -1
  store ptr %i.c, ptr %i.a, align 8, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef i32 @buf_setreadl(ptr noundef writeonly captures(none) initializes((2816, 2824)) %0, ptr noundef %1) #6 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 2816
  store ptr %1, ptr %i.a, align 8, !tbaa !17
  ret i32 1
}

declare ptr @_PyTokenizer_error_ret(ptr noundef) local_unnamed_addr #2

declare ptr @_PyTokenizer_translate_into_utf8(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PyBytes_AsString(ptr noundef) local_unnamed_addr #2

declare i32 @_PyTokenizer_check_coding_spec(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @_PyTokenizer_ensure_utf8(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @PyMem_Free(ptr noundef) local_unnamed_addr #2

declare void @_Py_Dealloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr captures(none)) local_unnamed_addr #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }

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
!11 = !{!12, !13, i64 2832}
!12 = !{!"tok_state", !13, i64 0, !13, i64 8, !13, i64 16, !8, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !8, i64 64, !15, i64 72, !8, i64 80, !8, i64 84, !9, i64 88, !8, i64 488, !8, i64 492, !13, i64 496, !13, i64 504, !8, i64 512, !8, i64 516, !8, i64 520, !8, i64 524, !8, i64 528, !9, i64 532, !9, i64 732, !9, i64 1532, !16, i64 2336, !16, i64 2344, !9, i64 2352, !8, i64 2752, !8, i64 2756, !13, i64 2760, !8, i64 2768, !13, i64 2776, !13, i64 2784, !16, i64 2792, !16, i64 2800, !16, i64 2808, !13, i64 2816, !13, i64 2824, !13, i64 2832, !8, i64 2840, !8, i64 2844, !14, i64 2848, !8, i64 2856, !9, i64 2864, !8, i64 18464, !8, i64 18468, !8, i64 18472, !8, i64 18476}
!13 = !{!"p1 omnipotent char", !14, i64 0}
!14 = !{!"any pointer", !9, i64 0}
!15 = !{!"p1 _ZTS8_IO_FILE", !14, i64 0}
!16 = !{!"p1 _ZTS7_object", !14, i64 0}
!17 = !{!12, !13, i64 2816}
!18 = !{!12, !13, i64 2824}
!19 = !{!9, !9, i64 0}
!20 = !{!13, !13, i64 0}
!21 = !{!12, !8, i64 512}
!22 = !{!12, !8, i64 2752}
!23 = !{!12, !16, i64 2800}
!24 = !{!12, !13, i64 16}
!25 = !{!12, !13, i64 8}
!26 = !{!12, !13, i64 0}
!27 = !{!12, !13, i64 48}
!28 = !{!12, !14, i64 2848}
!29 = !{!12, !8, i64 64}
!30 = !{!12, !13, i64 56}
!31 = !{!12, !13, i64 2776}
!32 = !{!12, !8, i64 524}
end_hunk_0
