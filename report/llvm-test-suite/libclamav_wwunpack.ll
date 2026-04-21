inline.NumInlined: 35
inline.NumDeleted: 4
begin_hunk_0_@wwunpack:bb.a
  %i.ap = icmp ugt i32 %i.aj, 1
  br label %bb.i

thread-pre-split.i:                               ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %middle.block.a, %bb.bb, %bb.t, %bb.m
  %.0198.ph.i = phi ptr [ %i.bg, %bb.t ], [ %i.az, %bb.m ], [ %i.ee, %bb.bb ], [ %9, %middle.block.a ], [ %i.mm, %middle.block ], [ %.lcssa289.unr, %.lr.ph.i.prol.loopexit ], [ %i.nw, %.lr.ph.i ]
  %.pr.i = load i32, ptr %i.b, align 4, !tbaa !4
  %.pre.i = load i8, ptr %i.d, align 1, !tbaa !11
  br label %bb.i
end_hunk_0
begin_hunk_1_@wwunpack:bb.a
bb.i:                                             ; preds = %thread-pre-split.i, %bb.h
  %i.aq = phi i8 [ %.pre.i, %thread-pre-split.i ], [ 32, %bb.h ]
  %i.ar = phi i32 [ %.pr.i, %thread-pre-split.i ], [ %.val.i.i, %bb.h ] ; 2 uses
  %.0198.i = phi ptr [ %.0198.ph.i, %thread-pre-split.i ], [ %i.af, %bb.h ] ; 19 uses
  %i.as = shl i32 %i.ar, 1                        ; 4 uses
  store i32 %i.as, ptr %i.b, align 4, !tbaa !4
  %i.at = add i8 %i.aq, -1                        ; 6 uses
end_hunk_1
begin_hunk_2_@wwunpack:bb.a
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.cx
  %.0201.i = phi i16 [ %i.mb, %bb.ev ], [ %i.il, %bb.cx ] ; 8 uses
  %i.mc = icmp eq i16 %.0201.i, 0
  %i.md = zext i16 %.0201.i to i32
  %.not271.i = icmp ult i32 %i.aj, %i.md
end_hunk_2
begin_hunk_3_@wwunpack:bb.a

bb.ex:                                            ; preds = %bb.ew
  %i.mf = zext nneg i32 %i.ik to i64
  %i.mg = sub nsw i64 0, %i.mf                    ; 12 uses
  %i.mh = getelementptr inbounds i8, ptr %.0198.i, i64 %i.mg ; 2 uses
  %.not272.i = icmp ult ptr %i.mh, %i.af
  br i1 %.not272.i, label %getbits.exit.thread, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.mi = zext i16 %.0201.i to i64                ; 7 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mh, i64 %i.mi ; 2 uses
  %.not273.i = icmp ule ptr %i.mj, %i.ao
  %i.mk = icmp ugt ptr %i.mj, %i.af
end_hunk_3
begin_hunk_4_@wwunpack:bb.a
  br i1 %or.cond507.i, label %.lr.ph.i.preheader.a, label %getbits.exit.thread

.lr.ph.i.preheader.a:                             ; preds = %bb.ey
  %min.iters.check = icmp ult i16 %.0201.i, 4
  %diff.check = icmp samesign ult i32 %i.ik, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader288, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %.lr.ph.i.preheader.a
  %min.iters.check286 = icmp ult i16 %.0201.i, 32
  br i1 %min.iters.check286, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.mi, 28
  %n.vec = and i64 %i.mi, 65504                   ; 5 uses
  %i.mm = getelementptr i8, ptr %.0198.i, i64 %n.vec ; 2 uses
  %.cast = trunc nuw i64 %n.vec to i16
  %i.mn = sub i16 %.0201.i, %.cast
end_hunk_4
begin_hunk_5_@wwunpack:bb.a
  store <16 x i8> %wide.load286, ptr %i.mq, align 1, !tbaa !11
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.mr = icmp eq i64 %index.next, %n.vec
  br i1 %i.mr, label %middle.block, label %vector.body, !llvm.loop !12

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.mi
  br i1 %cmp.n, label %thread-pre-split.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader288, label %vec.epilog.ph, !prof !16

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec290 = and i64 %i.mi, 65532                ; 4 uses
  %9 = getelementptr i8, ptr %.0198.i, i64 %n.vec290 ; 2 uses
  %.cast291 = trunc nuw i64 %n.vec290 to i16
  %10 = sub i16 %.0201.i, %.cast291
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index292 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next295, %vec.epilog.vector.body ] ; 2 uses
  %next.gep293 = getelementptr i8, ptr %.0198.i, i64 %index292 ; 2 uses
  %11 = getelementptr inbounds i8, ptr %next.gep293, i64 %i.mg
  %wide.load294 = load <4 x i8>, ptr %11, align 1, !tbaa !11
  store <4 x i8> %wide.load294, ptr %next.gep293, align 1, !tbaa !11
  %index.next295 = add nuw i64 %index292, 4       ; 2 uses
  %12 = icmp eq i64 %index.next295, %n.vec290
  br i1 %12, label %middle.block.a, label %vec.epilog.vector.body, !llvm.loop !17

middle.block.a:                                   ; preds = %vec.epilog.vector.body
  %cmp.n.a = icmp eq i64 %n.vec290, %i.mi
  br i1 %cmp.n.a, label %thread-pre-split.i, label %.lr.ph.i.preheader288

.lr.ph.i.preheader288:                            ; preds = %.lr.ph.i.preheader.a, %vec.epilog.iter.check, %middle.block.a
  %.2200504.i.ph = phi ptr [ %.0198.i, %.lr.ph.i.preheader.a ], [ %i.mm, %vec.epilog.iter.check ], [ %9, %middle.block.a ] ; 2 uses
  %.1202503.i.ph = phi i16 [ %.0201.i, %.lr.ph.i.preheader.a ], [ %i.mn, %vec.epilog.iter.check ], [ %10, %middle.block.a ] ; 4 uses
  %i.ms = add i16 %.1202503.i.ph, -1
  %xtraiter = and i16 %.1202503.i.ph, 7           ; 2 uses
  %lcmp.mod.not = icmp eq i16 %xtraiter, 0
end_hunk_5
begin_hunk_6_@wwunpack:bb.a
  %i.mw = getelementptr inbounds nuw i8, ptr %.2200504.i.prol, i64 1 ; 3 uses
  %prol.iter.next = add i16 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i16 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !18

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader288
  %.lcssa289.unr = phi ptr [ poison, %.lr.ph.i.preheader288 ], [ %i.mw, %.lr.ph.i.prol ]
end_hunk_6
begin_hunk_7_@wwunpack:bb.a
  store i8 %i.nv, ptr %i.ns, align 1, !tbaa !11
  %i.nw = getelementptr inbounds nuw i8, ptr %.2200504.i, i64 8 ; 2 uses
  %.not276.i.7 = icmp eq i16 %i.nt, 0
  br i1 %.not276.i.7, label %thread-pre-split.i, label %.lr.ph.i, !llvm.loop !20

getbits.exit.thread:                              ; preds = %bb.ep, %bb.eo, %bb.er, %bb.es, %bb.ea, %bb.ej, %bb.ei, %bb.ef, %bb.ee, %bb.eb, %bb.cb, %bb.cz, %bb.cd, %bb.ce, %bb.de, %bb.bs, %bb.bt, %bb.bn, %bb.bo, %bb.bg, %bb.du, %bb.bi, %bb.bj, %bb.cn, %bb.as, %bb.cv, %bb.au, %bb.av, %bb.dn, %bb.ag, %bb.ah, %bb.ck, %bb.aj, %bb.ak, %bb.cu, %bb.ax, %bb.ay, %bb.az, %bb.ba, %bb.y, %bb.dd, %bb.aa, %bb.ab, %bb.dw, %bb.o, %bb.p, %bb.dx, %bb.eu, %bb.ex, %bb.ey, %bb.x, %bb.ca, %bb.r, %bb.s, %bb.k, %bb.l, %bb.j, %bb.da, %bb.cs, %bb.bf, %bb.ar, %bb.dt, %bb.ew, %bb.cr, %bb.cj, %bb.dk, %bb.dj, %bb.dm, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
end_hunk_7
begin_hunk_8_@wwunpack:bb.a
  store i32 %i.pc, ptr %i.pa, align 1
  %i.pd = getelementptr inbounds nuw i8, ptr %.1153, i64 40 ; 2 uses
  %.not108 = icmp eq i16 %i.os, 0
  br i1 %.not108, label %._crit_edge, label %bb.fb, !llvm.loop !21

._crit_edge:                                      ; preds = %bb.fb, %bb.fa
  %.1.lcssa = phi ptr [ %i.oq, %bb.fa ], [ %i.pd, %bb.fb ]
end_hunk_8
begin_hunk_9_@llvm.fshl.i32
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.isvectorized", i32 1}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
!16 = !{!"branch_weights", i32 4, i32 28}
!17 = distinct !{!17, !13, !14, !15}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = distinct !{!20, !13, !14}
!21 = distinct !{!21, !13}
end_hunk_9
