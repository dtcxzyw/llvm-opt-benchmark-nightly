inline.NumInlined: 11
inline.NumDeleted: 8
begin_hunk_0_@save_marker:bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  br label %bb.l

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.o
  %.2127.lcssa = phi i32 [ %.1126152, %bb.o ], [ %4, %vec.epilog.middle.block ], [ %i.ci, %middle.block ], [ %i.cq, %.lr.ph ] ; 2 uses
  %.2122.lcssa = phi ptr [ %.1121153, %bb.o ], [ %3, %vec.epilog.middle.block ], [ %i.ch, %middle.block ], [ %i.co, %.lr.ph ]
  %.5116.lcssa = phi ptr [ %.4115, %bb.o ], [ %2, %vec.epilog.middle.block ], [ %i.cg, %middle.block ], [ %i.cm, %.lr.ph ] ; 2 uses
  %.5.lcssa = phi i64 [ %.4.fr, %bb.o ], [ %1, %vec.epilog.middle.block ], [ %i.cf, %middle.block ], [ %i.cp, %.lr.ph ] ; 2 uses
  %i.bq = icmp ult i32 %.2127.lcssa, %.0124
  br i1 %i.bq, label %bb.l, label %._crit_edge.thread189, !llvm.loop !119

bb.l:                                             ; preds = %.lr.ph156, %.loopexit
  %.3155 = phi i64 [ %.2, %.lr.ph156 ], [ %.5.lcssa, %.loopexit ] ; 3 uses
  %.3114154 = phi ptr [ %.2113, %.lr.ph156 ], [ %.5116.lcssa, %.loopexit ] ; 2 uses
  %.1121153 = phi ptr [ %.0120, %.lr.ph156 ], [ %.2122.lcssa, %.loopexit ] ; 7 uses
  %.1126152 = phi i32 [ %.0125, %.lr.ph156 ], [ %.2127.lcssa, %.loopexit ] ; 7 uses
  %.1121153207 = ptrtoaddr ptr %.1121153 to i64
  store ptr %.3114154, ptr %i.f, align 8, !tbaa !39
  store i64 %.3155, ptr %i.h, align 8, !tbaa !41
end_hunk_0
begin_hunk_1_@save_marker:bb.a
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l
  %.4115 = phi ptr [ %i.bu, %bb.n ], [ %.3114154, %bb.l ] ; 7 uses
  %.4 = phi i64 [ %i.bv, %bb.n ], [ %.3155, %bb.l ]
  %.4.fr = freeze i64 %.4                         ; 6 uses
  %i.bw = icmp ult i32 %.1126152, %.0124
  %i.bx = icmp ne i64 %.4.fr, 0
  %i.by = and i1 %i.bw, %i.bx
end_hunk_1
begin_hunk_2_@save_marker:bb.a
  %i.ca = xor i32 %.1126152, -1
  %i.cb = add i32 %.0124, %i.ca
  %i.cc = zext i32 %i.cb to i64
  %umin = tail call i64 @llvm.umin.i64(i64 %i.bz, i64 %i.cc) ; 3 uses
  %i.cd = add nuw nsw i64 %umin, 1                ; 5 uses
  %min.iters.check = icmp samesign ult i64 %umin, 3
  %i.ce = sub i64 %.1121153207, %.4115208
  %diff.check = icmp ult i64 %i.ce, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %.lr.ph.preheader.a
  %min.iters.check209 = icmp samesign ult i64 %umin, 31
  br i1 %min.iters.check209, label %.lr.ph.preheader214, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.cd, 28
  %n.vec = and i64 %i.cd, 8589934560              ; 7 uses
  %i.cf = sub i64 %.4.fr, %n.vec                  ; 2 uses
  %i.cg = getelementptr i8, ptr %.4115, i64 %n.vec ; 2 uses
  %i.ch = getelementptr i8, ptr %.1121153, i64 %n.vec ; 2 uses
end_hunk_2
begin_hunk_3_@save_marker:bb.a
  store <16 x i8> %wide.load210, ptr %i.ck, align 1, !tbaa !36
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %middle.block, label %vector.body, !llvm.loop !120

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cd, %n.vec
  br i1 %cmp.n, label %.loopexit, label %middle.block.a

middle.block.a:                                   ; preds = %middle.block
  %cmp.n.a = icmp eq i64 %n.mod.vf, 0
  br i1 %cmp.n.a, label %.lr.ph.preheader, label %.lr.ph.preheader214, !prof !123

.lr.ph.preheader214:                              ; preds = %vector.main.loop.iter.check, %middle.block.a
  %.5148.ph.a = phi i64 [ %n.vec, %middle.block.a ], [ 0, %vector.main.loop.iter.check ]
  %n.vec216 = and i64 %i.cd, 8589934588           ; 6 uses
  %1 = sub i64 %.4.fr, %n.vec216                  ; 2 uses
  %2 = getelementptr i8, ptr %.4115, i64 %n.vec216 ; 2 uses
  %3 = getelementptr i8, ptr %.1121153, i64 %n.vec216 ; 2 uses
  %.cast217 = trunc i64 %n.vec216 to i32
  %4 = add i32 %.1126152, %.cast217               ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %.lr.ph.preheader214
  %index218 = phi i64 [ %.5148.ph.a, %.lr.ph.preheader214 ], [ %index.next222, %vec.epilog.vector.body ] ; 3 uses
  %next.gep219 = getelementptr i8, ptr %.4115, i64 %index218
  %next.gep220 = getelementptr i8, ptr %.1121153, i64 %index218
  %wide.load221 = load <4 x i8>, ptr %next.gep219, align 1, !tbaa !36
  store <4 x i8> %wide.load221, ptr %next.gep220, align 1, !tbaa !36
  %index.next222 = add nuw i64 %index218, 4       ; 2 uses
  %5 = icmp eq i64 %index.next222, %n.vec216
  br i1 %5, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !124

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n223 = icmp eq i64 %i.cd, %n.vec216
  br i1 %cmp.n223, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.preheader.a, %middle.block.a, %vec.epilog.middle.block
  %.5148.ph = phi i64 [ %.4.fr, %.lr.ph.preheader.a ], [ %i.cf, %middle.block.a ], [ %1, %vec.epilog.middle.block ]
  %.5116147.ph = phi ptr [ %.4115, %.lr.ph.preheader.a ], [ %i.cg, %middle.block.a ], [ %2, %vec.epilog.middle.block ]
  %.2122146.ph = phi ptr [ %.1121153, %.lr.ph.preheader.a ], [ %i.ch, %middle.block.a ], [ %3, %vec.epilog.middle.block ]
  %.2127145.ph = phi i32 [ %.1126152, %.lr.ph.preheader.a ], [ %i.ci, %middle.block.a ], [ %4, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.5148 = phi i64 [ %i.cp, %.lr.ph ], [ %.5148.ph, %.lr.ph.preheader ]
  %.5116147 = phi ptr [ %i.cm, %.lr.ph ], [ %.5116147.ph, %.lr.ph.preheader ] ; 2 uses
  %.2122146 = phi ptr [ %i.co, %.lr.ph ], [ %.2122146.ph, %.lr.ph.preheader ] ; 2 uses
  %.2127145 = phi i32 [ %i.cq, %.lr.ph ], [ %.2127145.ph, %.lr.ph.preheader ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.5116147, i64 1 ; 2 uses
  %i.cn = load i8, ptr %.5116147, align 1, !tbaa !36
  %i.co = getelementptr inbounds nuw i8, ptr %.2122146, i64 1 ; 2 uses
end_hunk_3
begin_hunk_4_@save_marker:bb.a
  %i.cr = icmp ult i32 %i.cq, %.0124
  %i.cs = icmp ne i64 %i.cp, 0
  %i.ct = select i1 %i.cr, i1 %i.cs, i1 false
  br i1 %i.ct, label %.lr.ph, label %.loopexit, !llvm.loop !125

._crit_edge.thread189:                            ; preds = %.loopexit, %bb.k
  %.3.lcssa200 = phi i64 [ %.2, %bb.k ], [ %.5.lcssa, %.loopexit ]
  %.3114.lcssa199 = phi ptr [ %.2113, %bb.k ], [ %.5116.lcssa, %.loopexit ]
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !126
  %i.cw = icmp eq ptr %i.cv, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 568
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !127 ; 2 uses
  br i1 %i.cw, label %._crit_edge163, label %bb.p

bb.p:                                             ; preds = %._crit_edge.thread189
  %i.cx = getelementptr inbounds nuw i8, ptr %.pre, i64 120 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !128 ; 2 uses
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %._crit_edge163, label %bb.q

._crit_edge163:                                   ; preds = %._crit_edge.thread189, %bb.p
  %i.da = getelementptr inbounds nuw i8, ptr %.pre, i64 120
  store ptr %.0128, ptr %i.da, align 8, !tbaa !128
  store ptr %.0128, ptr %i.cu, align 8, !tbaa !126
  br label %bb.r

bb.q:                                             ; preds = %bb.p
  store ptr %.0128, ptr %i.cy, align 8, !tbaa !112
  store ptr %.0128, ptr %i.cx, align 8, !tbaa !128
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge163
end_hunk_4
begin_hunk_5_@get_sof:bb.a

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 316
  store i32 %1, ptr %i.m, align 4, !tbaa !130
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !127
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  store i32 %2, ptr %i.p, align 4, !tbaa !131
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i32 %3, ptr %i.q, align 8, !tbaa !132
  %i.r = icmp eq i64 %i.e, 0
  br i1 %i.r, label %bb.d, label %bb.f

end_hunk_5
begin_hunk_6_@get_sof:bb.a
  %i.av = load i8, ptr %.2159, align 1, !tbaa !36
  %i.aw = zext i8 %i.av to i32
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i32 %i.aw, ptr %i.ax, align 8, !tbaa !133
  %i.ay = icmp eq i64 %i.at, 0
  br i1 %i.ay, label %bb.m, label %bb.o

end_hunk_6
begin_hunk_7_@get_sof:bb.a
  %i.bh = zext i8 %i.bg to i32
  %i.bi = shl nuw nsw i32 %i.bh, 8                ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 5 uses
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !134
  %i.bk = icmp eq i64 %i.be, 0
  br i1 %i.bk, label %bb.p, label %bb.r

end_hunk_7
begin_hunk_8_@get_sof:bb.a
bb.q:                                             ; preds = %bb.p
  %i.bo = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.bp = load i64, ptr %i.d, align 8, !tbaa !41
  %.pre = load i32, ptr %i.bj, align 4, !tbaa !134
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o
end_hunk_8
begin_hunk_9_@get_sof:bb.a
  %i.bt = load i8, ptr %.4161, align 1, !tbaa !36
  %i.bu = zext i8 %i.bt to i32
  %i.bv = add i32 %i.bq, %i.bu
  store i32 %i.bv, ptr %i.bj, align 4, !tbaa !134
  %i.bw = icmp eq i64 %i.br, 0
  br i1 %i.bw, label %bb.s, label %bb.u

end_hunk_9
begin_hunk_10_@get_sof:bb.a
  %i.cf = zext i8 %i.ce to i32
  %i.cg = shl nuw nsw i32 %i.cf, 8                ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  store i32 %i.cg, ptr %i.ch, align 8, !tbaa !135
  %i.ci = icmp eq i64 %i.cc, 0
  br i1 %i.ci, label %bb.v, label %bb.x

end_hunk_10
begin_hunk_11_@get_sof:bb.a
bb.w:                                             ; preds = %bb.v
  %i.cm = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.cn = load i64, ptr %i.d, align 8, !tbaa !41
  %.pre204 = load i32, ptr %i.ch, align 8, !tbaa !135
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
end_hunk_11
begin_hunk_12_@get_sof:bb.a
  %i.cr = load i8, ptr %.6163, align 1, !tbaa !36
  %i.cs = zext i8 %i.cr to i32
  %i.ct = add i32 %i.co, %i.cs
  store i32 %i.ct, ptr %i.ch, align 8, !tbaa !135
  %i.cu = icmp eq i64 %i.cp, 0
  br i1 %i.cu, label %bb.y, label %bb.aa

end_hunk_12
begin_hunk_13_@get_sof:bb.a
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 564
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !7
  store i32 %i.dh, ptr %i.df, align 4, !tbaa !3
  %i.di = load i32, ptr %i.ch, align 8, !tbaa !135
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 48
  store i32 %i.di, ptr %i.dj, align 4, !tbaa !3
  %i.dk = load i32, ptr %i.bj, align 4, !tbaa !134
  %i.dl = getelementptr inbounds nuw i8, ptr %i.de, i64 52
  store i32 %i.dk, ptr %i.dl, align 4, !tbaa !3
  %i.dm = load i32, ptr %i.dc, align 8, !tbaa !81
end_hunk_13
begin_hunk_14_@get_sof:bb.a
  %i.dp = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !37
  tail call void %i.dq(ptr noundef nonnull %0, i32 noundef 1) #7
  %i.dr = load i32, ptr %i.bj, align 4, !tbaa !134
  %i.ds = icmp eq i32 %i.dr, 0
  br i1 %i.ds, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dt = load i32, ptr %i.ch, align 8, !tbaa !135
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %bb.ad, label %bb.ac

end_hunk_14
begin_hunk_15_@get_sof:bb.a
  %.0169198 = phi i32 [ 0, %.lr.ph ], [ %i.gk, %bb.as ] ; 2 uses
  %.0170197 = phi ptr [ %i.ep, %.lr.ph ], [ %i.gl, %bb.as ] ; 7 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.0170197, i64 4
  store i32 %.0169198, ptr %i.et, align 4, !tbaa !136
  %i.eu = icmp eq i64 %.8200, 0
  br i1 %i.eu, label %bb.ak, label %bb.am

end_hunk_15
begin_hunk_16_@get_sof:bb.a
  %i.fl = zext i8 %i.fk to i32                    ; 2 uses
  %i.fm = lshr i32 %i.fl, 4
  %i.fn = getelementptr inbounds nuw i8, ptr %.0170197, i64 8 ; 2 uses
  store i32 %i.fm, ptr %i.fn, align 8, !tbaa !137
  %i.fo = and i32 %i.fl, 15
  %i.fp = getelementptr inbounds nuw i8, ptr %.0170197, i64 12 ; 2 uses
  store i32 %i.fo, ptr %i.fp, align 4, !tbaa !138
  %i.fq = icmp eq i64 %i.fi, 0
  br i1 %i.fq, label %bb.aq, label %bb.as

end_hunk_16
begin_hunk_17_@get_sof:bb.a
  %i.fv = load i8, ptr %.11168, align 1, !tbaa !36
  %i.fw = zext i8 %i.fv to i32
  %i.fx = getelementptr inbounds nuw i8, ptr %.0170197, i64 16 ; 2 uses
  store i32 %i.fw, ptr %i.fx, align 8, !tbaa !139
  %i.fy = load ptr, ptr %0, align 8, !tbaa !32    ; 6 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 44
  %i.ga = load i32, ptr %.0170197, align 8, !tbaa !82
  store i32 %i.ga, ptr %i.fz, align 4, !tbaa !3
  %i.gb = load i32, ptr %i.fn, align 8, !tbaa !137
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fy, i64 48
  store i32 %i.gb, ptr %i.gc, align 4, !tbaa !3
  %i.gd = load i32, ptr %i.fp, align 4, !tbaa !138
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fy, i64 52
  store i32 %i.gd, ptr %i.ge, align 4, !tbaa !3
  %i.gf = load i32, ptr %i.fx, align 8, !tbaa !139
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fy, i64 56
  store i32 %i.gf, ptr %i.gg, align 4, !tbaa !3
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fy, i64 40
end_hunk_17
begin_hunk_18_@get_sof:bb.a
  %.8 = add i64 %.11, -1                          ; 2 uses
  %i.gm = load i32, ptr %i.dc, align 8, !tbaa !81
  %i.gn = icmp slt i32 %i.gk, %i.gm
  br i1 %i.gn, label %bb.aj, label %._crit_edge, !llvm.loop !140

._crit_edge:                                      ; preds = %bb.as, %bb.ai
  %.8165.lcssa = phi ptr [ %.8165195, %bb.ai ], [ %.8165, %bb.as ]
end_hunk_18
begin_hunk_19_@llvm.umin.i64
!120 = distinct !{!120, !47, !121, !122}
!121 = !{!"llvm.loop.isvectorized", i32 1}
!122 = !{!"llvm.loop.unroll.runtime.disable"}
!123 = !{!"branch_weights", i32 4, i32 28}
!124 = distinct !{!124, !47, !121, !122}
!125 = distinct !{!125, !47, !121}
!126 = !{!8, !19, i64 400}
!127 = !{!8, !21, i64 568}
!128 = !{!129, !19, i64 120}
!129 = !{!"jpeg_decomp_master", !10, i64 0, !10, i64 8, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !5, i64 32, !5, i64 72, !4, i64 112, !4, i64 116, !19, i64 120}
!130 = !{!8, !4, i64 316}
!131 = !{!129, !4, i64 20}
!132 = !{!8, !4, i64 320}
!133 = !{!8, !4, i64 296}
!134 = !{!8, !4, i64 52}
!135 = !{!8, !4, i64 48}
!136 = !{!83, !4, i64 4}
!137 = !{!83, !4, i64 8}
!138 = !{!83, !4, i64 12}
!139 = !{!83, !4, i64 16}
!140 = distinct !{!140, !47}
end_hunk_19
