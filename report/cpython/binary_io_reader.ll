inline.NumInlined: 62
inline.NumDeleted: 19
begin_hunk_0_@invoke_progress_callback:bb.a
; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i64 @decode_varint_u64(ptr noundef readonly captures(none) %0, ptr noundef nonnull captures(none) %1, i64 noundef %2) unnamed_addr #8 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !43     ; 16 uses
  %i.b = icmp ult i64 %i.a, %2
  br i1 %i.b, label %bb.b, label %.critedge.preheader, !prof !89

.critedge.preheader:                              ; preds = %bb.b, %bb.a
  %umax = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %2) ; 8 uses
  %exitcond.not.not = icmp ult i64 %i.a, %2
  br i1 %exitcond.not.not, label %.critedge.preheader.thread, label %.critedge.preheader.a

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 %i.a       ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !27
  %i.e = icmp sgt i8 %i.d, -1
  br i1 %i.e, label %bb.c, label %.critedge.preheader, !prof !89

bb.c:                                             ; preds = %bb.b
  %3 = add nuw i64 %i.a, 1
  store i64 %3, ptr %1, align 8, !tbaa !43
  %i.f = load i8, ptr %i.c, align 1, !tbaa !27
  %i.g = zext i8 %i.f to i64
  br label %.thread

.critedge.preheader.thread:                       ; preds = %.critedge.preheader
  %4 = add nuw i64 %i.a, 1                        ; 3 uses
  %i.h = getelementptr i8, ptr %0, i64 %i.a
  %i.i = load i8, ptr %i.h, align 1, !tbaa !27    ; 2 uses
  %i.j = and i8 %i.i, 127
end_hunk_0
begin_hunk_1_@decode_varint_u64:bb.a
  br i1 %i.l, label %bb.d, label %.critedge.1

bb.d:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %.critedge.preheader.thread
  %.lcssa38 = phi i64 [ %4, %.critedge.preheader.thread ], [ %i.m, %bb.e ], [ %i.u, %bb.f ], [ %i.ac, %bb.g ], [ %i.ak, %bb.h ], [ %i.as, %bb.i ], [ %i.ba, %bb.j ], [ %i.bi, %bb.k ], [ %i.bq, %bb.l ], [ %i.by, %bb.m ]
  %.lcssa = phi i64 [ %i.k, %.critedge.preheader.thread ], [ %i.s, %bb.e ], [ %i.aa, %bb.f ], [ %i.ai, %bb.g ], [ %i.aq, %bb.h ], [ %i.ay, %bb.i ], [ %i.bg, %bb.j ], [ %i.bo, %bb.k ], [ %i.bw, %bb.l ], [ %i.cd, %bb.m ]
  store i64 %.lcssa38, ptr %1, align 8, !tbaa !43
  br label %.thread

.critedge.1:                                      ; preds = %.critedge.preheader.thread
  %exitcond.1.not = icmp eq i64 %2, %4
  br i1 %exitcond.1.not, label %.critedge.preheader.a, label %bb.e

bb.e:                                             ; preds = %.critedge.1
  %i.m = add i64 %i.a, 2                          ; 3 uses
  %i.n = getelementptr i8, ptr %0, i64 %4
  %i.o = load i8, ptr %i.n, align 1, !tbaa !27    ; 2 uses
  %i.p = and i8 %i.o, 127
  %i.q = zext nneg i8 %i.p to i64
end_hunk_1
begin_hunk_2_@decode_varint_u64:bb.a
  br i1 %i.t, label %bb.d, label %.critedge.2

.critedge.2:                                      ; preds = %bb.e
  %exitcond.2.not = icmp eq i64 %i.m, %umax
  br i1 %exitcond.2.not, label %.critedge.preheader.a, label %bb.f

bb.f:                                             ; preds = %.critedge.2
  %i.u = add i64 %i.a, 3                          ; 3 uses
  %i.v = getelementptr i8, ptr %0, i64 %i.m
  %i.w = load i8, ptr %i.v, align 1, !tbaa !27    ; 2 uses
  %i.x = and i8 %i.w, 127
end_hunk_2
begin_hunk_3_@decode_varint_u64:bb.a
  br i1 %i.ab, label %bb.d, label %.critedge.3

.critedge.3:                                      ; preds = %bb.f
  %exitcond.3.not = icmp eq i64 %i.u, %umax
  br i1 %exitcond.3.not, label %.critedge.preheader.a, label %bb.g

bb.g:                                             ; preds = %.critedge.3
  %i.ac = add i64 %i.a, 4                         ; 3 uses
  %i.ad = getelementptr i8, ptr %0, i64 %i.u
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !27  ; 2 uses
  %i.af = and i8 %i.ae, 127
end_hunk_3
begin_hunk_4_@decode_varint_u64:bb.a
  br i1 %i.aj, label %bb.d, label %.critedge.4

.critedge.4:                                      ; preds = %bb.g
  %exitcond.4.not = icmp eq i64 %i.ac, %umax
  br i1 %exitcond.4.not, label %.critedge.preheader.a, label %bb.h

bb.h:                                             ; preds = %.critedge.4
  %i.ak = add i64 %i.a, 5                         ; 3 uses
  %i.al = getelementptr i8, ptr %0, i64 %i.ac
  %i.am = load i8, ptr %i.al, align 1, !tbaa !27  ; 2 uses
  %i.an = and i8 %i.am, 127
end_hunk_4
begin_hunk_5_@decode_varint_u64:bb.a
  br i1 %i.ar, label %bb.d, label %.critedge.5

.critedge.5:                                      ; preds = %bb.h
  %exitcond.5.not = icmp eq i64 %i.ak, %umax
  br i1 %exitcond.5.not, label %.critedge.preheader.a, label %bb.i

bb.i:                                             ; preds = %.critedge.5
  %i.as = add i64 %i.a, 6                         ; 3 uses
  %i.at = getelementptr i8, ptr %0, i64 %i.ak
  %i.au = load i8, ptr %i.at, align 1, !tbaa !27  ; 2 uses
  %i.av = and i8 %i.au, 127
end_hunk_5
begin_hunk_6_@decode_varint_u64:bb.a
  br i1 %i.az, label %bb.d, label %.critedge.6

.critedge.6:                                      ; preds = %bb.i
  %exitcond.6.not = icmp eq i64 %i.as, %umax
  br i1 %exitcond.6.not, label %.critedge.preheader.a, label %bb.j

bb.j:                                             ; preds = %.critedge.6
  %i.ba = add i64 %i.a, 7                         ; 3 uses
  %i.bb = getelementptr i8, ptr %0, i64 %i.as
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !27  ; 2 uses
  %i.bd = and i8 %i.bc, 127
end_hunk_6
begin_hunk_7_@decode_varint_u64:bb.a
  br i1 %i.bh, label %bb.d, label %.critedge.7

.critedge.7:                                      ; preds = %bb.j
  %exitcond.7.not = icmp eq i64 %i.ba, %umax
  br i1 %exitcond.7.not, label %.critedge.preheader.a, label %bb.k

bb.k:                                             ; preds = %.critedge.7
  %i.bi = add i64 %i.a, 8                         ; 3 uses
  %i.bj = getelementptr i8, ptr %0, i64 %i.ba
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !27  ; 2 uses
  %i.bl = and i8 %i.bk, 127
end_hunk_7
begin_hunk_8_@decode_varint_u64:bb.a
  br i1 %i.bp, label %bb.d, label %.critedge.8

.critedge.8:                                      ; preds = %bb.k
  %exitcond.8.not = icmp eq i64 %i.bi, %umax
  br i1 %exitcond.8.not, label %.critedge.preheader.a, label %bb.l

bb.l:                                             ; preds = %.critedge.8
  %i.bq = add i64 %i.a, 9                         ; 3 uses
  %i.br = getelementptr i8, ptr %0, i64 %i.bi
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !27  ; 2 uses
  %i.bt = and i8 %i.bs, 127
end_hunk_8
begin_hunk_9_@decode_varint_u64:bb.a
  br i1 %i.bx, label %bb.d, label %.critedge.9

.critedge.9:                                      ; preds = %bb.l
  %exitcond.9.not = icmp eq i64 %i.bq, %umax
  br i1 %exitcond.9.not, label %.critedge.preheader.a, label %bb.m

bb.m:                                             ; preds = %.critedge.9
  %i.by = add i64 %i.a, 10
  %i.bz = getelementptr i8, ptr %0, i64 %i.bq
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !27  ; 2 uses
  %i.cb = zext i8 %i.ca to i64
end_hunk_9
begin_hunk_10_@decode_varint_u64:bb.a
  tail call void @PyErr_SetString(ptr noundef %i.cf, ptr noundef nonnull @.str.60) #12
  br label %.thread

.critedge.preheader.a:                            ; preds = %.critedge.9, %.critedge.8, %.critedge.7, %.critedge.6, %.critedge.5, %.critedge.4, %.critedge.3, %.critedge.2, %.critedge.1, %.critedge.preheader
  %i.cg = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !19
  tail call void @PyErr_SetString(ptr noundef %i.cg, ptr noundef nonnull @.str.60) #12
  br label %.thread
end_hunk_10
begin_hunk_11_@PyLong_FromUnsignedLong
declare ptr @PyLong_FromUnsignedLong(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_11
