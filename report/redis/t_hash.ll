begin_hunk_0
inline.NumInlined: 167
inline.NumDeleted: 15
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
end_hunk_0
begin_hunk_1
  br label %hashTypeGetMinExpire.exit

hashTypeGetMinExpire.exit:                        ; preds = %.critedge.thread, %bb.s, %bb.u, %bb.v
  %.2.i = phi i64 [ 281474976710656, %bb.u ], [ %i.be, %bb.s ], [ 281474976710656, %.critedge.thread ], [ %i.bi, %bb.v ]
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 %.2.i, ptr %i.bj, align 8, !tbaa !68
  ret void
end_hunk_1
begin_hunk_2
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.m, %bb.l, %bb.i, %bb.g, %bb.b, %bb.j, %bb.h
  %.2 = phi i64 [ 281474976710656, %bb.g ], [ %i.r, %bb.j ], [ 281474976710656, %bb.i ], [ 281474976710656, %bb.e ], [ 281474976710656, %bb.l ], [ %i.q, %bb.h ], [ 281474976710656, %bb.b ], [ %i.w, %bb.m ]
  ret i64 %.2
}

end_hunk_2
begin_hunk_3
  %i.bi = call i32 @ebAdd(ptr noundef nonnull %i.bh, ptr noundef nonnull @hashFieldExpireBucketsType, ptr noundef %.255, i64 noundef %2) #14 ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.q, %bb.l, %bb.m, %bb.n, %bb.g, %bb.d, %bb.s, %bb.v, %bb.c, %bb.i, %bb.a
  %.3 = phi i32 [ -2, %bb.a ], [ 0, %bb.i ], [ 0, %bb.c ], [ 2, %bb.s ], [ 1, %bb.v ], [ 1, %bb.g ], [ 1, %bb.d ], [ 0, %bb.q ], [ 0, %bb.l ], [ 0, %bb.m ], [ 1, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.3
}
end_hunk_3
begin_hunk_4
  br label %hashTypeGetMinExpire.exit

hashTypeGetMinExpire.exit:                        ; preds = %bb.g, %bb.h, %bb.j, %bb.k
  %.2.i = phi i64 [ 281474976710656, %bb.j ], [ %i.ai, %bb.h ], [ 281474976710656, %bb.g ], [ %i.an, %bb.k ] ; 6 uses
  %i.ao = load i64, ptr %i.y, align 8, !tbaa !124 ; 3 uses
  %i.ap = icmp ugt i64 %i.ao, %.2.i
  %i.aq = sub nuw i64 %i.ao, %.2.i
end_hunk_4
begin_hunk_5

bb.aq:                                            ; preds = %bb.m
  %i.dr = tail call i64 @llvm.umin.i64(i64 %1, i64 %.1.i) ; 2 uses
  %.not196 = icmp eq i32 %2, 0                    ; 5 uses
  br i1 %.not196, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
end_hunk_5
begin_hunk_6
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.fa = shl i64 %.1.i, 4
  %i.fb = tail call noalias ptr @zmalloc(i64 noundef %i.fa) #16 ; 6 uses
  call void @dictInitIterator(ptr noundef nonnull %4, ptr noundef %i.ez) #14
  %i.fc = call ptr @dictNext(ptr noundef nonnull %4) #14 ; 2 uses
  %.not200233 = icmp eq ptr %i.fc, null
end_hunk_6
begin_hunk_7
  br i1 %.not244, label %._crit_edge243, label %.lr.ph242

.lr.ph242:                                        ; preds = %._crit_edge237, %.preheader230
  %.0176.lcssa257 = phi i64 [ %i.fp, %.preheader230 ], [ %.1.i, %._crit_edge237 ] ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 28
  br i1 %.not196, label %.critedge209.us, label %.lr.ph242.split

.critedge209.us:                                  ; preds = %.lr.ph242, %sdslen.exit226.us
  %.1185241.us = phi i64 [ %28, %sdslen.exit226.us ], [ 0, %.lr.ph242 ] ; 2 uses
  %6 = getelementptr inbounds nuw [16 x i8], ptr %i.fb, i64 %.1185241.us
  %7 = load ptr, ptr %6, align 8, !tbaa !180      ; 6 uses
  %8 = getelementptr i8, ptr %7, i64 -1
  %.val.i224.us = load i8, ptr %8, align 1, !tbaa !73 ; 2 uses
  %9 = and i8 %.val.i224.us, 7
  switch i8 %9, label %sdslen.exit226.us [
    i8 0, label %25
    i8 1, label %21
    i8 2, label %17
    i8 3, label %13
    i8 4, label %10
  ]

10:                                               ; preds = %.critedge209.us
  %11 = getelementptr inbounds i8, ptr %7, i64 -17
  %12 = load i64, ptr %11, align 1, !tbaa !13
  br label %sdslen.exit226.us

13:                                               ; preds = %.critedge209.us
  %14 = getelementptr inbounds i8, ptr %7, i64 -9
  %15 = load i32, ptr %14, align 1, !tbaa !9
  %16 = zext i32 %15 to i64
  br label %sdslen.exit226.us

17:                                               ; preds = %.critedge209.us
  %18 = getelementptr inbounds i8, ptr %7, i64 -5
  %19 = load i16, ptr %18, align 1, !tbaa !74
  %20 = zext i16 %19 to i64
  br label %sdslen.exit226.us

21:                                               ; preds = %.critedge209.us
  %22 = getelementptr inbounds i8, ptr %7, i64 -3
  %23 = load i8, ptr %22, align 1, !tbaa !73
  %24 = zext i8 %23 to i64
  br label %sdslen.exit226.us

25:                                               ; preds = %.critedge209.us
  %26 = lshr i8 %.val.i224.us, 3
  %27 = zext nneg i8 %26 to i64
  br label %sdslen.exit226.us

sdslen.exit226.us:                                ; preds = %25, %21, %17, %13, %10, %.critedge209.us
  %.0.i225.us = phi i64 [ %12, %10 ], [ %27, %25 ], [ %24, %21 ], [ %20, %17 ], [ %16, %13 ], [ 0, %.critedge209.us ]
  call void @addReplyBulkCBuffer(ptr noundef nonnull %0, ptr noundef nonnull %7, i64 noundef %.0.i225.us) #14
  %28 = add nuw i64 %.1185241.us, 1               ; 2 uses
  %exitcond247.not = icmp eq i64 %28, %.0176.lcssa257
  br i1 %exitcond247.not, label %._crit_edge243, label %.critedge209.us, !llvm.loop !182

.lr.ph240:                                        ; preds = %._crit_edge237, %.lr.ph240
  %.0176238 = phi i64 [ %i.fp, %.lr.ph240 ], [ %.1.i, %._crit_edge237 ] ; 2 uses
end_hunk_7
begin_hunk_8
  %i.fo = getelementptr inbounds nuw [16 x i8], ptr %i.fb, i64 %i.fn
  %i.fp = add i64 %.0176238, -1                   ; 5 uses
  %i.fq = getelementptr inbounds nuw [16 x i8], ptr %i.fb, i64 %i.fp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fo, ptr noundef nonnull align 8 dereferenceable(16) %i.fq, i64 16, i1 false), !tbaa.struct !183
  %i.fr = icmp ugt i64 %i.fp, %.0
  br i1 %i.fr, label %.lr.ph240, label %.preheader230, !llvm.loop !184

.lr.ph242.split:                                  ; preds = %.lr.ph242, %sdslen.exit223
  %.1185241 = phi i64 [ %i.hc, %sdslen.exit223 ], [ 0, %.lr.ph242 ] ; 2 uses
  %i.fs = load i32, ptr %i.fk, align 4, !tbaa !165
  %i.ft = icmp sgt i32 %i.fs, 2
  br i1 %i.ft, label %bb.bf, label %bb.bg
end_hunk_8
begin_hunk_9
  call void @addReplyArrayLen(ptr noundef nonnull %0, i64 noundef 2) #14
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %.lr.ph242.split
  %i.fu = getelementptr inbounds nuw [16 x i8], ptr %i.fb, i64 %.1185241 ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !180 ; 6 uses
  %i.fw = getelementptr i8, ptr %i.fv, i64 -1
  %.val.i218 = load i8, ptr %i.fw, align 1, !tbaa !73 ; 2 uses
  %i.fx = and i8 %.val.i218, 7
  switch i8 %i.fx, label %bb.bm [
    i8 0, label %bb.bh
    i8 1, label %bb.bi
    i8 2, label %bb.bj
end_hunk_9
begin_hunk_10
bb.bh:                                            ; preds = %bb.bg
  %i.fy = lshr i8 %.val.i218, 3
  %i.fz = zext nneg i8 %i.fy to i64
  br label %bb.bm

bb.bi:                                            ; preds = %bb.bg
  %i.ga = getelementptr inbounds i8, ptr %i.fv, i64 -3
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !73
  %i.gc = zext i8 %i.gb to i64
  br label %bb.bm

bb.bj:                                            ; preds = %bb.bg
  %i.gd = getelementptr inbounds i8, ptr %i.fv, i64 -5
  %i.ge = load i16, ptr %i.gd, align 1, !tbaa !74
  %i.gf = zext i16 %i.ge to i64
  br label %bb.bm

bb.bk:                                            ; preds = %bb.bg
  %i.gg = getelementptr inbounds i8, ptr %i.fv, i64 -9
  %i.gh = load i32, ptr %i.gg, align 1, !tbaa !9
  %i.gi = zext i32 %i.gh to i64
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bg
  %i.gj = getelementptr inbounds i8, ptr %i.fv, i64 -17
  %i.gk = load i64, ptr %i.gj, align 1, !tbaa !13
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg
  %.0.i219 = phi i64 [ %i.gk, %bb.bl ], [ %i.fz, %bb.bh ], [ %i.gc, %bb.bi ], [ %i.gf, %bb.bj ], [ %i.gi, %bb.bk ], [ 0, %bb.bg ]
  call void @addReplyBulkCBuffer(ptr noundef nonnull %0, ptr noundef nonnull %i.fv, i64 noundef %.0.i219) #14
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !185 ; 6 uses
  %i.gn = getelementptr i8, ptr %i.gm, i64 -1
  %.val.i221 = load i8, ptr %i.gn, align 1, !tbaa !73 ; 2 uses
  %i.go = and i8 %.val.i221, 7
  switch i8 %i.go, label %sdslen.exit223 [
    i8 0, label %bb.bn
    i8 1, label %bb.bo
    i8 2, label %bb.bp
end_hunk_10
begin_hunk_11
bb.bn:                                            ; preds = %bb.bm
  %i.gp = lshr i8 %.val.i221, 3
  %i.gq = zext nneg i8 %i.gp to i64
  br label %sdslen.exit223

bb.bo:                                            ; preds = %bb.bm
  %i.gr = getelementptr inbounds i8, ptr %i.gm, i64 -3
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !73
  %i.gt = zext i8 %i.gs to i64
  br label %sdslen.exit223

bb.bp:                                            ; preds = %bb.bm
  %i.gu = getelementptr inbounds i8, ptr %i.gm, i64 -5
  %i.gv = load i16, ptr %i.gu, align 1, !tbaa !74
  %i.gw = zext i16 %i.gv to i64
  br label %sdslen.exit223

bb.bq:                                            ; preds = %bb.bm
  %i.gx = getelementptr inbounds i8, ptr %i.gm, i64 -9
  %i.gy = load i32, ptr %i.gx, align 1, !tbaa !9
  %i.gz = zext i32 %i.gy to i64
  br label %sdslen.exit223

bb.br:                                            ; preds = %bb.bm
  %i.ha = getelementptr inbounds i8, ptr %i.gm, i64 -17
  %i.hb = load i64, ptr %i.ha, align 1, !tbaa !13
  br label %sdslen.exit223

sdslen.exit223:                                   ; preds = %bb.bm, %bb.bn, %bb.bo, %bb.bp, %bb.bq, %bb.br
  %.0.i222 = phi i64 [ %i.hb, %bb.br ], [ %i.gq, %bb.bn ], [ %i.gt, %bb.bo ], [ %i.gw, %bb.bp ], [ %i.gz, %bb.bq ], [ 0, %bb.bm ]
  call void @addReplyBulkCBuffer(ptr noundef nonnull %0, ptr noundef nonnull %i.gm, i64 noundef %.0.i222) #14
  %i.hc = add nuw i64 %.1185241, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.hc, %.0176.lcssa257
  br i1 %exitcond.not, label %._crit_edge243, label %.lr.ph242.split, !llvm.loop !182

._crit_edge243:                                   ; preds = %sdslen.exit223, %sdslen.exit226.us, %.preheader230
  call void @zfree(ptr noundef nonnull %i.fb) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %.loopexit
end_hunk_11
begin_hunk_12
  br label %hashTypeGetMinExpire.exit

hashTypeGetMinExpire.exit:                        ; preds = %bb.a, %bb.b, %bb.d, %bb.e
  %.2.i = phi i64 [ 281474976710656, %bb.d ], [ %i.f, %bb.b ], [ 281474976710656, %bb.a ], [ %i.k, %bb.e ]
  %i.l = tail call i64 @commandTimeSnapshot() #14
  %.not = icmp slt i64 %.2.i, %i.l
  br i1 %.not, label %bb.f, label %bb.i
end_hunk_12
begin_hunk_13
!177 = distinct !{!177, !100}
!178 = distinct !{!178, !100}
!179 = distinct !{!179, !100}
!180 = !{!181, !32, i64 0}
!181 = !{!"FieldValPair", !32, i64 0, !32, i64 8}
!182 = distinct !{!182, !100}
!183 = !{i64 0, i64 8, !95, i64 8, i64 8, !95}
!184 = distinct !{!184, !100}
!185 = !{!181, !32, i64 8}
!186 = distinct !{!186, !100}
!187 = distinct !{!187, !100}
!188 = !{!70, !71, i64 216}
end_hunk_13
