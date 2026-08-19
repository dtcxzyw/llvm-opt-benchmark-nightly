inline.NumInlined: 25
inline.NumDeleted: 16
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@tsvectorsend:bb.a

.loopexit:                                        ; preds = %bb.e, %bb.c
  %i.bs = getelementptr inbounds nuw i8, ptr %.034, i64 4
  %i.bt = add nuw nsw i32 %.02733, 1              ; 2 uses
  %i.bu = load i32, ptr %i.f, align 4             ; 2 uses
  %i.bv = icmp slt i32 %i.bt, %i.bu
  br i1 %i.bv, label %.lr.ph, label %._crit_edge, !llvm.loop !37

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %i.bw = call ptr @pq_endtypsend(ptr noundef nonnull %1) #8
  %i.bx = ptrtoint ptr %i.bw to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  ret i64 %i.bx
}

declare void @pq_begintypsend(ptr noundef) local_unnamed_addr #3

declare void @pq_sendtext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @pq_endtypsend(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i64 @tsvectorrecv(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr                 ; 5 uses
  %i.d = tail call i32 @pq_getmsgint(ptr noundef %i.c, i32 noundef 4) #8 ; 5 uses
  %i.e = icmp ugt i32 %i.d, 268435455
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #10 ; 0 uses
  %i.g = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.6) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 462, ptr noundef nonnull @__func__.tsvectorrecv) #8
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = shl nuw nsw i32 %i.d, 2
  %narrow = add nuw nsw i32 %i.h, 8               ; 2 uses
  %i.i = zext nneg i32 %narrow to i64             ; 2 uses
  %i.j = shl nuw nsw i64 %i.i, 1                  ; 2 uses
  %i.k = tail call ptr @palloc0(i64 noundef %i.j) #8 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i32 %i.d, ptr %i.l, align 4
  %.not144 = icmp eq i32 %i.d, 0
  br i1 %.not144, label %._crit_edge140.thread, label %.lr.ph139

._crit_edge140.thread:                            ; preds = %bb.c
  store i32 32, ptr %i.k, align 4
  br label %bb.r

.lr.ph139:                                        ; preds = %bb.c
  %i.m = or disjoint i64 %i.i, 2
  %wide.trip.count154 = zext nneg i32 %i.d to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph139, %bb.p
  %indvars.iv152 = phi i64 [ 0, %.lr.ph139 ], [ %indvars.iv.next153, %bb.p ] ; 3 uses
  %.088137 = phi i1 [ false, %.lr.ph139 ], [ %.1, %bb.p ] ; 2 uses
  %.089136 = phi i64 [ %i.j, %.lr.ph139 ], [ %.190.lcssa, %bb.p ] ; 3 uses
  %.091135 = phi i32 [ 0, %.lr.ph139 ], [ %.2, %bb.p ] ; 3 uses
  %.094133 = phi ptr [ %i.k, %.lr.ph139 ], [ %.195.lcssa, %bb.p ] ; 2 uses
  %i.n = tail call ptr @pq_getmsgstring(ptr noundef %i.c) #8 ; 2 uses
  %i.o = tail call i32 @pq_getmsgint(ptr noundef %i.c, i32 noundef 2) #8 ; 3 uses
  %i.p = trunc i32 %i.o to i16
  %i.q = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.n) #9 ; 4 uses
  %i.r = icmp ugt i64 %i.q, 2047
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #10 ; 0 uses
  %i.t = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.7) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 484, ptr noundef nonnull @__func__.tsvectorrecv) #8
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.u = icmp sgt i32 %.091135, 1048575
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #10 ; 0 uses
  %i.w = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.8) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 487, ptr noundef nonnull @__func__.tsvectorrecv) #8
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.x = and i32 %i.o, 65535                      ; 4 uses
  %i.y = icmp samesign ugt i32 %i.x, 256
  br i1 %i.y, label %bb.i, label %.preheader

.preheader:                                       ; preds = %bb.h
  %i.z = sext i32 %.091135 to i64                 ; 2 uses
  %i.aa = add nsw i64 %i.q, %i.z                  ; 5 uses
  %i.ab = add nsw i64 %i.aa, 1
  %i.ac = and i64 %i.ab, -2                       ; 3 uses
  %.mask = shl i32 %i.o, 1
  %i.ad = and i32 %.mask, 131070
  %i.ae = zext nneg i32 %i.ad to i64              ; 2 uses
  %i.af = add nuw nsw i64 %i.m, %i.ae
  %i.ag = add nsw i64 %i.af, %i.ac                ; 2 uses
  %.not124 = icmp ult i64 %i.ag, %.089136
  br i1 %.not124, label %._crit_edge, label %.lr.ph

bb.i:                                             ; preds = %bb.h
  %i.ah = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #10 ; 0 uses
  %i.ai = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.9) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 490, ptr noundef nonnull @__func__.tsvectorrecv) #8
  unreachable

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.190126 = phi i64 [ %i.aj, %.lr.ph ], [ %.089136, %.preheader ]
  %.195125 = phi ptr [ %i.ak, %.lr.ph ], [ %.094133, %.preheader ]
  %i.aj = shl i64 %.190126, 1                     ; 4 uses
  %i.ak = tail call ptr @repalloc(ptr noundef %.195125, i64 noundef %i.aj) #8 ; 2 uses
  %.not = icmp ult i64 %i.ag, %i.aj
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !38

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.195.lcssa = phi ptr [ %.094133, %.preheader ], [ %i.ak, %.lr.ph ] ; 8 uses
  %.190.lcssa = phi i64 [ %.089136, %.preheader ], [ %i.aj, %.lr.ph ]
  %.not103 = icmp ne i32 %i.x, 0                  ; 2 uses
  %i.al = zext i1 %.not103 to i32
  %i.am = getelementptr inbounds nuw i8, ptr %.195.lcssa, i64 8 ; 6 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv152 ; 4 uses
  %i.ao = trunc nuw nsw i64 %i.q to i32
  %i.ap = shl nuw nsw i32 %i.ao, 1
  %i.aq = or disjoint i32 %i.ap, %i.al
  %i.ar = shl i32 %.091135, 12
  %i.as = or disjoint i32 %i.aq, %i.ar
  store i32 %i.as, ptr %i.an, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %.195.lcssa, i64 4 ; 5 uses
  %i.au = load i32, ptr %i.at, align 4
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.av
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %i.z
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ax, ptr nonnull align 1 %i.n, i64 %i.q, i1 false)
  %.not104 = icmp eq i64 %indvars.iv152, 0
  br i1 %.not104, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.ay = getelementptr i8, ptr %i.an, i64 -4
  %i.az = load i32, ptr %i.at, align 4
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.ba ; 2 uses
  %i.bc = load i32, ptr %i.an, align 4            ; 2 uses
  %i.bd = lshr i32 %i.bc, 12
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.be
  %i.bg = lshr i32 %i.bc, 1
  %i.bh = and i32 %i.bg, 2047
  %i.bi = load i32, ptr %i.ay, align 4            ; 2 uses
  %i.bj = lshr i32 %i.bi, 12
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bk
  %i.bm = lshr i32 %i.bi, 1
  %i.bn = and i32 %i.bm, 2047
  %i.bo = tail call i32 @tsCompareString(ptr noundef nonnull %i.bf, i32 noundef %i.bh, ptr noundef nonnull %i.bl, i32 noundef %i.bn, i1 noundef zeroext false) #8
  %i.bp = icmp slt i32 %i.bo, 1
  %spec.select = select i1 %i.bp, i1 true, i1 %.088137
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge
  %.1 = phi i1 [ %.088137, %._crit_edge ], [ %spec.select, %bb.j ] ; 2 uses
  br i1 %.not103, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %.not105 = icmp eq i64 %i.aa, %i.ac
  br i1 %.not105, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bq = load i32, ptr %i.at, align 4
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.br
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 %i.aa
  store i8 0, ptr %i.bt, align 1
  %sext = shl i64 %i.ac, 32
  %i.bu = ashr exact i64 %sext, 32
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.192 = phi i64 [ %i.bu, %bb.m ], [ %i.aa, %bb.l ] ; 2 uses
  %i.bv = load i32, ptr %i.at, align 4
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.bw
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 %.192
  store i16 %i.p, ptr %i.by, align 1
  %i.bz = load i32, ptr %i.at, align 4
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.ca
  %i.cc = load i32, ptr %i.an, align 4            ; 2 uses
  %i.cd = lshr i32 %i.cc, 12
  %i.ce = lshr i32 %i.cc, 1
  %i.cf = and i32 %i.ce, 2047
  %i.cg = add nuw nsw i32 %i.cd, 1
  %narrow106 = add nuw nsw i32 %i.cg, %i.cf
  %i.ch = and i32 %narrow106, 4194302
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 2 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.x to i64
  %i.cl = tail call i32 @pq_getmsgint(ptr noundef %i.c, i32 noundef 2) #8
  %i.cm = trunc i32 %i.cl to i16
  store i16 %i.cm, ptr %i.ck, align 2
  %exitcond.peel.not = icmp eq i32 %i.x, 1
  br i1 %exitcond.peel.not, label %.loopexit150, label %.peel.next.a

.peel.next.a:                                     ; preds = %bb.n, %bb.o
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.o ], [ 1, %bb.n ] ; 2 uses
  %i.cn = tail call i32 @pq_getmsgint(ptr noundef %i.c, i32 noundef 2) #8 ; 2 uses
  %i.co = trunc i32 %i.cn to i16
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %i.ck, i64 %indvars.iv ; 2 uses
  store i16 %i.co, ptr %i.cp, align 2
  %i.cq = and i32 %i.cn, 16383
  %i.cr = getelementptr i8, ptr %i.cp, i64 -2
  %i.cs = load i16, ptr %i.cr, align 2
  %i.ct = and i16 %i.cs, 16383
  %i.cu = zext nneg i16 %i.ct to i32
  %.not108 = icmp samesign ugt i32 %i.cq, %i.cu
  br i1 %.not108, label %bb.o, label %.loopexit

.loopexit:                                        ; preds = %.peel.next.a
  %i.cv = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #10 ; 0 uses
  %i.cw = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.10) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 541, ptr noundef nonnull @__func__.tsvectorrecv) #8
  unreachable

bb.o:                                             ; preds = %.peel.next.a
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit150, label %.peel.next.a, !llvm.loop !39

.loopexit150:                                     ; preds = %bb.o, %bb.n
  %i.cx = add nuw nsw i64 %i.ae, 2
  %i.cy = add nsw i64 %i.cx, %.192
  br label %bb.p

bb.p:                                             ; preds = %.loopexit150, %bb.k
  %.2.in = phi i64 [ %i.cy, %.loopexit150 ], [ %i.aa, %bb.k ]
  %.2 = trunc i64 %.2.in to i32                   ; 2 uses
  %indvars.iv.next153 = add nuw nsw i64 %indvars.iv152, 1 ; 2 uses
  %exitcond155.not = icmp eq i64 %indvars.iv.next153, %wide.trip.count154
  br i1 %exitcond155.not, label %._crit_edge140, label %bb.d, !llvm.loop !41

._crit_edge140:                                   ; preds = %bb.p
  %i.cz = add i32 %narrow, %.2
  %i.da = shl i32 %i.cz, 2
  store i32 %i.da, ptr %.195.lcssa, align 4
  br i1 %.1, label %bb.q, label %bb.r

bb.q:                                             ; preds = %._crit_edge140
  %i.db = getelementptr inbounds nuw i8, ptr %.195.lcssa, i64 8 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.195.lcssa, i64 4
  %i.dd = load i32, ptr %i.dc, align 4
  %i.de = sext i32 %i.dd to i64                   ; 2 uses
  %i.df = getelementptr inbounds [4 x i8], ptr %i.db, i64 %i.de
  tail call void @qsort_arg(ptr noundef nonnull %i.db, i64 noundef %i.de, i64 noundef 4, ptr noundef nonnull @compareentry, ptr noundef nonnull %i.df) #8
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge140.thread, %bb.q, %._crit_edge140
  %.094.lcssa168 = phi ptr [ %i.k, %._crit_edge140.thread ], [ %.195.lcssa, %bb.q ], [ %.195.lcssa, %._crit_edge140 ]
  %i.dg = ptrtoint ptr %.094.lcssa168 to i64
  ret i64 %i.dg
}

declare i32 @pq_getmsgint(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @pq_getmsgstring(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal i32 @compareentry(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #2 {
bb.a:
  %i.a = load i32, ptr %0, align 4                ; 2 uses
  %i.b = lshr i32 %i.a, 12
  %i.c = zext nneg i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 %i.c
  %i.e = lshr i32 %i.a, 1
  %i.f = and i32 %i.e, 2047
  %i.g = load i32, ptr %1, align 4                ; 2 uses
  %i.h = lshr i32 %i.g, 12
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %i.i
  %i.k = lshr i32 %i.g, 1
  %i.l = and i32 %i.k, 2047
  %i.m = tail call i32 @tsCompareString(ptr noundef %i.d, i32 noundef %i.f, ptr noundef %i.j, i32 noundef %i.l, i1 noundef zeroext false) #8
  ret i32 %i.m
}

declare void @qsort_arg(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #5

declare void @pg_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @pg_detoast_datum(ptr noundef) local_unnamed_addr #3

declare void @enlargeStringInfo(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #6

declare i32 @tsCompareString(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }
attributes #10 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = !{i8 0, i8 2}
!8 = !{}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5, !15, !16}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = !{!"branch_weights", i32 4, i32 28}
!18 = distinct !{!18, !5, !15, !16}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.unroll.disable"}
!21 = distinct !{!21, !5, !15}
!22 = distinct !{!22, !5}
!23 = distinct !{!23, !5}
!24 = !{!25}
!25 = distinct !{!25, !26, !"pq_writeint32: argument 0"}
!26 = distinct !{!26, !"pq_writeint32"}
!27 = !{!28}
!28 = distinct !{!28, !29, !"pq_writeint8: argument 0"}
!29 = distinct !{!29, !"pq_writeint8"}
!30 = !{!31}
!31 = distinct !{!31, !32, !"pq_writeint16: argument 0"}
!32 = distinct !{!32, !"pq_writeint16"}
!33 = !{!34}
!34 = distinct !{!34, !35, !"pq_writeint16: argument 0"}
!35 = distinct !{!35, !"pq_writeint16"}
!36 = distinct !{!36, !5}
!37 = distinct !{!37, !5}
!38 = distinct !{!38, !5}
!39 = distinct !{!39, !5, !40}
!40 = !{!"llvm.loop.peeled.count", i32 1}
!41 = distinct !{!41, !5}
end_hunk_0
