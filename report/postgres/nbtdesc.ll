Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/nbtdesc?download=true
begin_hunk_0
@.str.26 = private unnamed_addr constant [11 x i8] c", deleted:\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c", updated: [\00", align 1
@.str.28 = private unnamed_addr constant [32 x i8] c"{ off: %u, nptids: %u, ptids: [\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"] }\00", align 1
@switch.table.btree_identify = private unnamed_addr constant [16 x ptr] [ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.20, ptr @.str.18, ptr @.str.24, ptr @.str.25, ptr null], align 8

; Function Attrs: nounwind uwtable
define dso_local void @btree_desc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8              ; 30 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.f = load i8, ptr %i.e, align 8
  %i.g = lshr i8 %i.f, 4
  switch i8 %i.g, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.b
    i8 2, label %bb.b
    i8 5, label %bb.b
    i8 3, label %bb.c
    i8 4, label %bb.c
    i8 6, label %bb.d
    i8 12, label %bb.e
    i8 7, label %bb.g
    i8 11, label %bb.i
    i8 9, label %bb.j
    i8 8, label %bb.j
    i8 10, label %bb.k
    i8 13, label %bb.l
    i8 14, label %bb.m
    i8 15, label %bb.n
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.h = load i16, ptr %i.d, align 2
  %i.i = zext i16 %i.h to i32
  tail call void (ptr, ptr, ...) @appendStringInfo(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %i.i) #3
  br label %bb.n

bb.c:                                             ; preds = %bb.a, %bb.a
  %i.j = load i32, ptr %i.d, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.l = load i16, ptr %i.k, align 4
  %i.m = zext i16 %i.l to i32
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 6
  %i.o = load i16, ptr %i.n, align 2
  %i.p = zext i16 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.r = load i16, ptr %i.q, align 4
  %i.s = zext i16 %i.r to i32
  tail call void (ptr, ptr, ...) @appendStringInfo(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %i.j, i32 noundef %i.m, i32 noundef %i.p, i32 noundef %i.s) #3
  br label %bb.n

bb.d:                                             ; preds = %bb.a
  %i.t = load i16, ptr %i.d, align 2
  %i.u = zext i16 %i.t to i32
  tail call void (ptr, ptr, ...) @appendStringInfo(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %i.u) #3
  br label %bb.n

bb.e:                                             ; preds = %bb.a
  %i.v = load i16, ptr %i.d, align 2
  %i.w = zext i16 %i.v to i32
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 2 uses
  %i.y = load i16, ptr %i.x, align 2
  %i.z = zext i16 %i.y to i32
  tail call void (ptr, ptr, ...) @appendStringInfo(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef %i.w, i32 noundef %i.z) #3
  %i.aa = load ptr, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 135
  %i.ac = load i8, ptr %i.ab, align 1, !range !4, !noundef !5
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.ae = tail call ptr @XLogRecGetBlockData(ptr noundef nonnull %1, i8 noundef zeroext 0, ptr noundef null) #3
  %i.af = load i16, ptr %i.d, align 2
  %i.ag = load i16, ptr %i.x, align 2
  tail call fastcc void @delvacuum_desc(ptr noundef %0, ptr noundef %i.ae, i16 noundef zeroext %i.af, i16 noundef zeroext %i.ag)
  br label %bb.n

bb.g:                                             ; preds = %bb.a
  %i.ah = load i32, ptr %i.d, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.aj = load i16, ptr %i.ai, align 4
  %i.ak = zext i16 %i.aj to i32
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 6 ; 2 uses
  %i.am = load i16, ptr %i.al, align 2
  %i.an = zext i16 %i.am to i32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ap = load i8, ptr %i.ao, align 4, !range !4, !noundef !5
  %i.aq = trunc nuw i8 %i.ap to i1
  %i.ar = select i1 %i.aq, i32 84, i32 70
  tail call void (ptr, ptr, ...) @appendStringInfo(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %i.ah, i32 noundef %i.ak, i32 noundef %i.an, i32 noundef %i.ar) #3
  %i.as = load ptr, ptr %i.a, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 135
  %i.au = load i8, ptr %i.at, align 1, !range !4, !noundef !5
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.aw = tail call ptr @XLogRecGetBlockData(ptr noundef nonnull %1, i8 noundef zeroext 0, ptr noundef null) #3
  %i.ax = load i16, ptr %i.ai, align 4
  %i.ay = load i16, ptr %i.al, align 2
  tail call fastcc void @delvacuum_desc(ptr noundef %0, ptr noundef %i.aw, i16 noundef zeroext %i.ax, i16 noundef zeroext %i.ay)
  br label %bb.n

bb.i:                                             ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.bg = load i32, ptr %i.bf, align 4
  tail call void (ptr, ptr, ...) @appendStringInfo(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %i.ba, i32 noundef %i.bc, i32 noundef %i.be, i32 noundef %i.bg) #3
  br label %bb.n

bb.j:                                             ; preds = %bb.a, %bb.a
  %i.bh = load i32, ptr %i.d, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.bj = load i32, ptr %i.bi, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bl = load i32, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bn = load i64, ptr %i.bm, align 8            ; 2 uses
  %i.bo = lshr i64 %i.bn, 32
  %i.bp = trunc nuw i64 %i.bo to i32
  %i.bq = trunc i64 %i.bn to i32
  tail call void (ptr, ptr, ...) @appendStringInfo(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %i.bh, i32 noundef %i.bj, i32 noundef %i.bl, i32 noundef %i.bp, i32 noundef %i.bq) #3
  %i.br = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.bs = load i32, ptr %i.br, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.bu = load i32, ptr %i.bt, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.bw = load i32, ptr %i.bv, align 8
  tail call void (ptr, ptr, ...) @appendStringInfo(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %i.bs, i32 noundef %i.bu, i32 noundef %i.bw) #3
  br label %bb.n

bb.k:                                             ; preds = %bb.a
  %i.bx = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.by = load i32, ptr %i.bx, align 4
  tail call void (ptr, ptr, ...) @appendStringInfo(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %i.by) #3
  br label %bb.n

bb.l:                                             ; preds = %bb.a
  %i.bz = load i32, ptr %i.d, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.cb = load i32, ptr %i.ca, align 4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.cd = load i32, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.cf = load i64, ptr %i.ce, align 8            ; 2 uses
  %i.cg = lshr i64 %i.cf, 32
  %i.ch = trunc nuw i64 %i.cg to i32
  %i.ci = trunc i64 %i.cf to i32
  %i.cj = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ck = load i8, ptr %i.cj, align 8, !range !4, !noundef !5
  %i.cl = trunc nuw i8 %i.ck to i1
  %i.cm = select i1 %i.cl, i32 84, i32 70
  tail call void (ptr, ptr, ...) @appendStringInfo(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %i.bz, i32 noundef %i.cb, i32 noundef %i.cd, i32 noundef %i.ch, i32 noundef %i.ci, i32 noundef %i.cm) #3
  br label %bb.n

bb.m:                                             ; preds = %bb.a
  %i.cn = tail call ptr @XLogRecGetBlockData(ptr noundef nonnull %1, i8 noundef zeroext 0, ptr noundef null) #3
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 20
  %i.cp = load i32, ptr %i.co, align 4
  tail call void (ptr, ptr, ...) @appendStringInfo(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %i.cp) #3
  br label %bb.n

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.n:                                             ; preds = %bb.g, %bb.h, %bb.e, %bb.f, %bb.a, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.d, %bb.c, %bb.b
  ret void
}

declare void @appendStringInfo(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @delvacuum_desc(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3) unnamed_addr #0 {
bb.a:
  tail call void @appendStringInfoString(ptr noundef %0, ptr noundef nonnull @.str.26) #3
  %i.a = zext i16 %2 to i32
  tail call void @array_desc(ptr noundef %0, ptr noundef %1, i64 noundef 2, i32 noundef %i.a, ptr noundef nonnull @offset_elem_desc, ptr noundef null) #3
  tail call void @appendStringInfoString(ptr noundef %0, ptr noundef nonnull @.str.27) #3
  %i.b = zext i16 %2 to i64
  %i.c = shl nuw nsw i64 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %i.c ; 2 uses
  %.not = icmp eq i16 %3, 0
  br i1 %.not, label %._crit_edge42, label %.lr.ph41

.lr.ph41:                                         ; preds = %bb.a
  %i.e = zext i16 %3 to i64
  %i.f = zext i16 %3 to i64
  %i.g = shl nuw nsw i64 %i.f, 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.g
  %i.i = add nuw nsw i64 %i.e, 4294967295
  %4 = and i64 %i.i, 4294967295
  %wide.trip.count = zext i16 %3 to i64
  br label %bb.b

._crit_edge42:                                    ; preds = %bb.g, %bb.a
  tail call void @appendStringInfoChar(ptr noundef %0, i8 noundef signext 93) #3
  ret void

bb.b:                                             ; preds = %.lr.ph41, %bb.g
  %indvars.iv45 = phi i64 [ 0, %.lr.ph41 ], [ %indvars.iv.next46, %bb.g ] ; 3 uses
  %.03538 = phi ptr [ %i.h, %.lr.ph41 ], [ %i.ae, %bb.g ] ; 7 uses
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv45
  %i.k = load i16, ptr %i.j, align 2
  %i.l = zext i16 %i.k to i32
  %i.m = load i16, ptr %.03538, align 2
  %i.n = zext i16 %i.m to i32
  tail call void (ptr, ptr, ...) @appendStringInfo(ptr noundef %0, ptr noundef nonnull @.str.28, i32 noundef %i.l, i32 noundef %i.n) #3
  %i.o = load i16, ptr %.03538, align 2
  %.not43 = icmp eq i16 %i.o, 0
  br i1 %.not43, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %.03538, i64 2
  br label %bb.c

._crit_edge:                                      ; preds = %bb.e, %bb.b
  tail call void @appendStringInfoString(ptr noundef %0, ptr noundef nonnull @.str.31) #3
  %5 = icmp samesign ult i64 %indvars.iv45, %4
  br i1 %5, label %bb.f, label %bb.g

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %indvars.iv
  %i.r = load i16, ptr %i.q, align 2
  %i.s = zext i16 %i.r to i32
  tail call void (ptr, ptr, ...) @appendStringInfo(ptr noundef %0, ptr noundef nonnull @.str.29, i32 noundef %i.s) #3
  %i.t = load i16, ptr %.03538, align 2
  %i.u = zext i16 %i.t to i32                     ; 2 uses
  %i.v = add nsw i32 %i.u, -1
  %i.w = sext i32 %i.v to i64
  %i.x = icmp slt i64 %indvars.iv, %i.w
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @appendStringInfoString(ptr noundef %0, ptr noundef nonnull @.str.30) #3
  %.pre = load i16, ptr %.03538, align 2
  %.pre48 = zext i16 %.pre to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pre-phi = phi i32 [ %.pre48, %bb.d ], [ %i.u, %bb.c ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.y = zext nneg i32 %.pre-phi to i64
  %i.z = icmp samesign ult i64 %indvars.iv.next, %i.y
  br i1 %i.z, label %bb.c, label %._crit_edge, !llvm.loop !6

bb.f:                                             ; preds = %._crit_edge
  tail call void @appendStringInfoString(ptr noundef %0, ptr noundef nonnull @.str.30) #3
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  %i.aa = getelementptr inbounds nuw i8, ptr %.03538, i64 2
  %i.ab = load i16, ptr %.03538, align 2
  %i.ac = zext i16 %i.ab to i64
  %i.ad = shl nuw nsw i64 %i.ac, 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ad
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next46, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge42, label %bb.b, !llvm.loop !7
}

declare ptr @XLogRecGetBlockData(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef ptr @btree_identify(i8 noundef zeroext %0) local_unnamed_addr #2 {
switch.lookup:
  %i.a = lshr i8 %0, 4
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.btree_identify, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  ret ptr %switch.load
}

declare void @appendStringInfoString(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @array_desc(ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @offset_elem_desc(ptr noundef, ptr noundef, ptr noundef) #1

declare void @appendStringInfoChar(ptr noundef, i8 noundef signext) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{i8 0, i8 2}
!5 = !{}
!6 = distinct !{!6, !8}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
end_hunk_0
