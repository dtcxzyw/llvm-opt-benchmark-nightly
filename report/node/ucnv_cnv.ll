begin_hunk_0_@ucnv_fromUWriteBytes_78:bb.a
  %i.c = ptrtoaddr ptr %1 to i64
  %i.d = ptrtoint ptr %4 to i64                   ; 2 uses
  %i.e = load ptr, ptr %3, align 8
  %.fr = freeze ptr %i.e                          ; 15 uses
  %i.f = ptrtoint ptr %.fr to i64                 ; 4 uses
  %i.g = icmp eq ptr %5, null
  br i1 %i.g, label %bb.c, label %bb.b
end_hunk_0
begin_hunk_1_@ucnv_fromUWriteBytes_78:bb.a
  %i.al = add i64 %i.ak, %i.b
  %i.am = add nsw i32 %2, -1
  %i.an = zext i32 %i.am to i64
  %umin99 = tail call i64 @llvm.umin.i64(i64 %i.al, i64 %i.an) ; 2 uses
  %i.ao = add nuw nsw i64 %umin99, 1              ; 2 uses
  %min.iters.check101 = icmp samesign ult i64 %umin99, 31
  %i.ap = sub i64 %i.f, %i.c
  %diff.check = icmp ult i64 %i.ap, 32
  %or.cond = or i1 %min.iters.check101, %diff.check
  br i1 %or.cond, label %.lr.ph53.preheader153, label %vector.ph102

vector.ph102:                                     ; preds = %.lr.ph53.preheader.a
  %n.vec104 = and i64 %i.ao, 8589934560           ; 5 uses
  %i.aq = getelementptr i8, ptr %.fr, i64 %n.vec104 ; 2 uses
  %i.ar = getelementptr i8, ptr %1, i64 %n.vec104 ; 2 uses
  %.cast105 = trunc i64 %n.vec104 to i32
end_hunk_1
begin_hunk_2_@ucnv_fromUWriteBytes_78:bb.a
  store <16 x i8> %wide.load111, ptr %i.au, align 1
  %index.next112 = add nuw i64 %index107, 32      ; 2 uses
  %i.av = icmp eq i64 %index.next112, %n.vec104
  br i1 %i.av, label %middle.block113, label %vector.body106, !llvm.loop !17

middle.block113:                                  ; preds = %vector.body106
  %cmp.n114 = icmp eq i64 %i.ao, %n.vec104
  br i1 %cmp.n114, label %.loopexit41, label %.lr.ph53.preheader153

.lr.ph53.preheader153:                            ; preds = %.lr.ph53.preheader.a, %middle.block113
  %.02951.ph = phi ptr [ %.fr, %.lr.ph53.preheader.a ], [ %i.aq, %middle.block113 ]
  %.03050.ph = phi ptr [ %1, %.lr.ph53.preheader.a ], [ %i.ar, %middle.block113 ]
  %.03449.ph = phi i32 [ %2, %.lr.ph53.preheader.a ], [ %i.as, %middle.block113 ]
  br label %.lr.ph53

.lr.ph53:                                         ; preds = %.lr.ph53.preheader153, %.lr.ph53
end_hunk_2
begin_hunk_3_@ucnv_fromUWriteBytes_78:bb.a
  %i.ba = icmp samesign ugt i32 %.03449, 1
  %i.bb = icmp ult ptr %i.ay, %4
  %i.bc = select i1 %i.ba, i1 %i.bb, i1 false
  br i1 %i.bc, label %.lr.ph53, label %.loopexit41, !llvm.loop !18

.lr.ph:                                           ; preds = %.lr.ph.preheader156, %.lr.ph
  %.045 = phi ptr [ %i.bg, %.lr.ph ], [ %.045.ph, %.lr.ph.preheader156 ] ; 2 uses
end_hunk_3
begin_hunk_4_@ucnv_fromUWriteBytes_78:bb.a
  %i.bi = icmp samesign ugt i32 %.13542, 1
  %i.bj = icmp ult ptr %i.bf, %4
  %i.bk = select i1 %i.bi, i1 %i.bj, i1 false
  br i1 %i.bk, label %.lr.ph, label %._crit_edge, !llvm.loop !19

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %.preheader
  %.135.lcssa = phi i32 [ %2, %.preheader ], [ %i.ac, %middle.block ], [ %i.bh, %.lr.ph ]
end_hunk_4
begin_hunk_5_@ucnv_fromUWriteBytes_78:bb.a
  store ptr %.0.lcssa, ptr %5, align 8
  br label %.loopexit41

.loopexit41:                                      ; preds = %.lr.ph53, %middle.block113, %bb.c, %._crit_edge
  %.236 = phi i32 [ %.135.lcssa, %._crit_edge ], [ %2, %bb.c ], [ %i.as, %middle.block113 ], [ %i.az, %.lr.ph53 ] ; 9 uses
  %.232 = phi ptr [ %.131.lcssa, %._crit_edge ], [ %1, %bb.c ], [ %i.ar, %middle.block113 ], [ %i.aw, %.lr.ph53 ] ; 7 uses
  %.2 = phi ptr [ %.1.lcssa, %._crit_edge ], [ %.fr, %bb.c ], [ %i.aq, %middle.block113 ], [ %i.ay, %.lr.ph53 ]
  %.232119 = ptrtoaddr ptr %.232 to i64
  store ptr %.2, ptr %3, align 8
  %i.bl = icmp sgt i32 %.236, 0
end_hunk_5
begin_hunk_6_@ucnv_fromUWriteBytes_78:bb.a
  store <16 x i8> %wide.load133, ptr %i.bw, align 1
  %index.next134 = add nuw i64 %index129, 32      ; 2 uses
  %i.bx = icmp eq i64 %index.next134, %n.vec126
  br i1 %i.bx, label %middle.block135, label %vector.body128, !llvm.loop !20

middle.block135:                                  ; preds = %vector.body128
  %cmp.n136 = icmp eq i64 %n.vec126, %i.bp
end_hunk_6
begin_hunk_7_@ucnv_fromUWriteBytes_78:bb.a

vec.epilog.iter.check.a:                          ; preds = %middle.block135
  %min.epilog.iters.check.a = icmp eq i64 %n.mod.vf125, 0
  br i1 %min.epilog.iters.check.a, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph.a, !prof !21

vec.epilog.ph.a:                                  ; preds = %vector.main.loop.iter.check.a, %vec.epilog.iter.check.a
  %vec.epilog.resume.val.a = phi i64 [ %n.vec126, %vec.epilog.iter.check.a ], [ 0, %vector.main.loop.iter.check.a ]
end_hunk_7
begin_hunk_8_@ucnv_fromUWriteBytes_78:bb.a
  store <4 x i8> %wide.load146, ptr %next.gep145, align 1
  %index.next147 = add nuw i64 %index143, 4       ; 2 uses
  %i.cb = icmp eq i64 %index.next147, %n.vec141
  br i1 %i.cb, label %vec.epilog.middle.block, label %vec.epilog.vector.body.a, !llvm.loop !22

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body.a
  %cmp.n148 = icmp eq i64 %n.vec141, %i.bp
end_hunk_8
begin_hunk_9_@ucnv_fromUWriteBytes_78:bb.a
  store i8 %i.cd, ptr %.3, align 1
  %i.cf = add nsw i32 %.337, -1
  %i.cg = icmp samesign ugt i32 %.337, 1
  br i1 %i.cg, label %vec.epilog.scalar.ph, label %.loopexit, !llvm.loop !23

.loopexit:                                        ; preds = %vec.epilog.scalar.ph, %middle.block135, %vec.epilog.middle.block, %bb.d
  store i32 15, ptr %7, align 4
end_hunk_9
begin_hunk_10_@ucnv_toUWriteUChars_78:bb.a
  %i.p = icmp samesign ugt i32 %.03449, 1
  %i.q = icmp ult ptr %i.n, %4
  %i.r = select i1 %i.p, i1 %i.q, i1 false
  br i1 %i.r, label %.lr.ph53, label %.loopexit41, !llvm.loop !24

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.045 = phi ptr [ %i.v, %.lr.ph ], [ %i.d, %.preheader ] ; 2 uses
end_hunk_10
begin_hunk_11_@ucnv_toUWriteUChars_78:bb.a
  %i.x = icmp samesign ugt i32 %.13542, 1
  %i.y = icmp ult ptr %i.u, %4
  %i.z = select i1 %i.x, i1 %i.y, i1 false
  br i1 %i.z, label %.lr.ph, label %._crit_edge, !llvm.loop !25

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.135.lcssa = phi i32 [ %2, %.preheader ], [ %i.w, %.lr.ph ]
end_hunk_11
begin_hunk_12_@ucnv_toUWriteUChars_78:bb.a
  store <8 x i16> %wide.load86, ptr %i.an, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ae
end_hunk_12
begin_hunk_13_@ucnv_toUWriteUChars_78:bb.a

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !27

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
end_hunk_13
begin_hunk_14_@ucnv_toUWriteUChars_78:bb.a
  store <4 x i16> %wide.load95, ptr %next.gep94, align 2
  %index.next96 = add nuw i64 %index92, 4         ; 2 uses
  %i.aw = icmp eq i64 %index.next96, %n.vec90
  br i1 %i.aw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !28

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n97 = icmp eq i64 %n.vec90, %i.ae
end_hunk_14
begin_hunk_15_@ucnv_toUWriteUChars_78:bb.a
  store i16 %i.ay, ptr %.3, align 2
  %i.ba = add nsw i32 %.337, -1
  %i.bb = icmp samesign ugt i32 %.337, 1
  br i1 %i.bb, label %vec.epilog.scalar.ph, label %.loopexit, !llvm.loop !29

.loopexit:                                        ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.d
  store i32 15, ptr %7, align 4
end_hunk_15
begin_hunk_16_@llvm.umin.i64
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = distinct !{!17, !14, !15, !16}
!18 = distinct !{!18, !14, !15}
!19 = distinct !{!19, !14, !15}
!20 = distinct !{!20, !14, !15, !16}
!21 = !{!"branch_weights", i32 4, i32 28}
!22 = distinct !{!22, !14, !15, !16}
!23 = distinct !{!23, !14, !15}
!24 = distinct !{!24, !14}
!25 = distinct !{!25, !14}
!26 = distinct !{!26, !14, !15, !16}
!27 = !{!"branch_weights", i32 4, i32 12}
!28 = distinct !{!28, !14, !15, !16}
!29 = distinct !{!29, !14, !15}
end_hunk_16
