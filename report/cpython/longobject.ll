inline.NumInlined: 732
inline.NumDeleted: 98
begin_hunk_0_@_PyLong_FromByteArray:bb.a
  %i.b = getelementptr i8, ptr %0, i64 %1
  %i.c = getelementptr i8, ptr %i.b, i64 -1       ; 2 uses
  %.079 = select i1 %.not, ptr %0, ptr %i.c       ; 2 uses
  %.078.neg = select i1 %.not, i64 -1, i64 1      ; 2 uses
  %.078 = select i1 %.not, i64 1, i64 -1
  %.073 = select i1 %.not, ptr %i.c, ptr %0       ; 2 uses
  %.not88 = icmp eq i32 %3, 0
  br i1 %.not88, label %.thread, label %bb.c
end_hunk_0
begin_hunk_1_@_PyLong_FromByteArray:bb.a

bb.e:                                             ; preds = %bb.d
  %i.i = add nuw i64 %.07594, 1                   ; 2 uses
  %i.j = getelementptr i8, ptr %.07495, i64 %.078
  %exitcond.not = icmp eq i64 %i.i, %1
  br i1 %exitcond.not, label %bb.f, label %bb.d, !llvm.loop !48

end_hunk_1
begin_hunk_2_@_PyLong_FromByteArray:bb.a
  %.168.us = phi i64 [ %i.ai, %bb.g ], [ %i.ab, %.lr.ph.split.us ] ; 2 uses
  %.1.us = phi i32 [ %i.aj, %bb.g ], [ %i.ac, %.lr.ph.split.us ] ; 2 uses
  %i.ak = add nuw i64 %.07197.us, 1               ; 2 uses
  %i.al = getelementptr i8, ptr %.065101.us, i64 %.078.neg
  %exitcond110.not.a = icmp eq i64 %i.ak, %.080
  br i1 %exitcond110.not.a, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !49

end_hunk_2
begin_hunk_3_@_PyLong_FromByteArray:bb.a
  %.168 = phi i64 [ %i.bb, %bb.i ], [ %i.au, %.lr.ph.split ] ; 2 uses
  %.1 = phi i32 [ %i.bc, %bb.i ], [ %i.av, %.lr.ph.split ] ; 2 uses
  %i.bd = add nuw i64 %.07197, 1                  ; 2 uses
  %i.be = getelementptr i8, ptr %.065101, i64 %.078.neg
  %exitcond109.not = icmp eq i64 %i.bd, %.080
  br i1 %exitcond109.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !49

end_hunk_3
begin_hunk_4_@long_format_binary:bb.a
  unreachable

bb.h:                                             ; preds = %bb.d, %bb.f, %bb.e
  %.0239 = phi i64 [ 1, %bb.f ], [ 3, %bb.e ], [ 4, %bb.d ] ; 5 uses
  %.0239.a = phi i32 [ 1, %bb.f ], [ 3, %bb.e ], [ 4, %bb.d ] ; 9 uses
  %i.i = icmp eq i64 %i.f, 0                      ; 5 uses
  br i1 %i.i, label %bb.k, label %bb.i

end_hunk_4
begin_hunk_5_@long_format_binary:bb.a
  %i.u = zext nneg i32 %i.t to i64
  %i.v = add nuw nsw i64 %i.l, %i.u
  %i.w = add nuw nsw i64 %i.v, %i.r
  %i.x = udiv i64 %i.w, %.0239
  %i.y = add nuw nsw i64 %i.x, %i.s
  br label %bb.k

end_hunk_5
begin_hunk_6_@long_format_binary:bb.a
.preheader342:                                    ; preds = %.critedge.thread326
  %i.au = getelementptr i8, ptr %0, i64 24
  %i.av = add nuw nsw i32 %1, 255
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = add nsw i64 %i.f, -1
  br label %bb.t

end_hunk_6
begin_hunk_7_@long_format_binary:bb.a
  %.1247 = phi ptr [ %.0246355, %bb.t ], [ %i.bm, %bb.u ]
  %.1245 = phi i64 [ %i.be, %bb.t ], [ %i.bo, %bb.u ] ; 2 uses
  %.1243 = phi i32 [ %i.bf, %bb.t ], [ %i.bn, %bb.u ]
  %i.bh = and i64 %.1245, %i.aw
  %i.bi = trunc i64 %i.bh to i8                   ; 2 uses
  %i.bj = icmp slt i8 %i.bi, 10
  %i.bk = select i1 %i.bj, i8 48, i8 87
end_hunk_7
begin_hunk_8_@long_format_binary:bb.a
  %i.bm = getelementptr i8, ptr %.1247, i64 -1    ; 4 uses
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !24
  %i.bn = sub i32 %.1243, %.0239.a                ; 3 uses
  %i.bo = lshr i64 %.1245, %.0239                 ; 3 uses
  %i.bp = icmp sge i32 %i.bn, %.0239.a
  %i.bq = icmp ne i64 %i.bo, 0
  %.in275 = select i1 %i.bg, i1 %i.bp, i1 %i.bq
end_hunk_8
begin_hunk_9_@long_format_binary:bb.a
.preheader338:                                    ; preds = %_PyUnicode_DATA.exit286
  %i.co = getelementptr i8, ptr %0, i64 24
  %i.cp = add nuw nsw i32 %1, 255
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = add nsw i64 %i.f, -1
  br label %bb.ak

end_hunk_9
begin_hunk_10_@long_format_binary:bb.a
  %.2235 = phi ptr [ %.1234363, %bb.ak ], [ %i.dg, %bb.al ]
  %.1232 = phi i64 [ %i.cy, %bb.ak ], [ %i.di, %bb.al ] ; 2 uses
  %.1230 = phi i32 [ %i.cz, %bb.ak ], [ %i.dh, %bb.al ]
  %i.db = and i64 %.1232, %i.cq
  %i.dc = trunc i64 %i.db to i8                   ; 2 uses
  %i.dd = icmp slt i8 %i.dc, 10
  %i.de = select i1 %i.dd, i8 48, i8 87
end_hunk_10
begin_hunk_11_@long_format_binary:bb.a
  %i.dg = getelementptr i8, ptr %.2235, i64 -1    ; 4 uses
  store i8 %i.df, ptr %i.dg, align 1, !tbaa !24
  %i.dh = sub i32 %.1230, %.0239.a                ; 3 uses
  %i.di = lshr i64 %.1232, %.0239                 ; 3 uses
  %i.dj = icmp sge i32 %i.dh, %.0239.a
  %i.dk = icmp ne i64 %i.di, 0
  %.in274 = select i1 %i.da, i1 %i.dj, i1 %i.dk
end_hunk_11
begin_hunk_12_@long_format_binary:bb.a
.preheader340:                                    ; preds = %_PyUnicode_DATA.exit302
  %i.eb = getelementptr i8, ptr %0, i64 24
  %i.ec = add nuw nsw i32 %1, 255
  %i.ed = zext nneg i32 %i.ec to i64
  %i.ee = add nsw i64 %i.f, -1
  br label %bb.ay

end_hunk_12
begin_hunk_13_@long_format_binary:bb.a
  %.2221 = phi ptr [ %.1220359, %bb.ay ], [ %i.eu, %bb.az ]
  %.1218 = phi i64 [ %i.el, %bb.ay ], [ %i.ew, %bb.az ] ; 2 uses
  %.1216 = phi i32 [ %i.em, %bb.ay ], [ %i.ev, %bb.az ]
  %i.eo = and i64 %.1218, %i.ed
  %i.ep = trunc i64 %i.eo to i8                   ; 2 uses
  %i.eq = icmp slt i8 %i.ep, 10
  %i.er = select i1 %i.eq, i8 48, i8 87
end_hunk_13
begin_hunk_14_@long_format_binary:bb.a
  %i.eu = getelementptr i8, ptr %.2221, i64 -2    ; 4 uses
  store i16 %i.et, ptr %i.eu, align 2, !tbaa !159
  %i.ev = sub i32 %.1216, %.0239.a                ; 3 uses
  %i.ew = lshr i64 %.1218, %.0239                 ; 3 uses
  %i.ex = icmp sge i32 %i.ev, %.0239.a
  %i.ey = icmp ne i64 %i.ew, 0
  %.in272 = select i1 %i.en, i1 %i.ex, i1 %i.ey
end_hunk_14
begin_hunk_15_@long_format_binary:bb.a
.preheader:                                       ; preds = %_PyUnicode_DATA.exit318
  %i.fp = getelementptr i8, ptr %0, i64 24
  %i.fq = add nuw nsw i32 %1, 255
  %i.fr = zext nneg i32 %i.fq to i64
  %i.fs = add nsw i64 %i.f, -1
  br label %bb.bm

end_hunk_15
begin_hunk_16_@long_format_binary:bb.a
  %.2 = phi ptr [ %.1212367, %bb.bm ], [ %i.gi, %bb.bn ]
  %.1210 = phi i64 [ %i.fz, %bb.bm ], [ %i.gk, %bb.bn ] ; 2 uses
  %.1208 = phi i32 [ %i.ga, %bb.bm ], [ %i.gj, %bb.bn ]
  %i.gc = and i64 %.1210, %i.fr
  %i.gd = trunc i64 %i.gc to i8                   ; 2 uses
  %i.ge = icmp slt i8 %i.gd, 10
  %i.gf = select i1 %i.ge, i8 48, i8 87
end_hunk_16
begin_hunk_17_@long_format_binary:bb.a
  %i.gi = getelementptr i8, ptr %.2, i64 -4       ; 4 uses
  store i32 %i.gh, ptr %i.gi, align 4, !tbaa !7
  %i.gj = sub i32 %.1208, %.0239.a                ; 3 uses
  %i.gk = lshr i64 %.1210, %.0239                 ; 3 uses
  %i.gl = icmp sge i32 %i.gj, %.0239.a
  %i.gm = icmp ne i64 %i.gk, 0
  %.in = select i1 %i.gb, i1 %i.gl, i1 %i.gm
end_hunk_17
