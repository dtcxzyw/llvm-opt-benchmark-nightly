begin_hunk_0_@lzf_decompress:bb.a

.lr.ph:                                           ; preds = %bb.a, %.loopexit
  %.0148218 = phi ptr [ %.35, %.loopexit ], [ %0, %bb.a ] ; 4 uses
  %.0158217 = phi ptr [ %.45, %.loopexit ], [ %2, %bb.a ] ; 69 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0148218, i64 1 ; 36 uses
  %i.d = load i8, ptr %.0148218, align 1, !tbaa !13 ; 3 uses
  %i.e = zext i8 %i.d to i32                      ; 3 uses
end_hunk_0
begin_hunk_1_@lzf_decompress:bb.a
  br label %.thread

bb.ar:                                            ; preds = %bb.ap, %bb.ao
  %.32 = phi ptr [ %i.dm, %bb.ap ], [ %i.c, %bb.ao ] ; 7 uses
  %.0139 = phi i32 [ %i.dp, %bb.ap ], [ %i.dk, %bb.ao ] ; 5 uses
  %i.dr = load i8, ptr %.32, align 1, !tbaa !13
  %i.ds = zext i8 %i.dr to i64                    ; 2 uses
  %i.dt = sub nuw nsw i64 %i.di, %i.ds            ; 2 uses
  %i.du = getelementptr inbounds i8, ptr %.0158217, i64 %i.dt ; 33 uses
  %i.dv = zext nneg i32 %.0139 to i64
  %i.dw = getelementptr inbounds nuw i8, ptr %.0158217, i64 %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 2
end_hunk_1
begin_hunk_2_@lzf_decompress:bb.a
  ]

bb.aw:                                            ; preds = %bb.av
  %i.ec = add nuw nsw i32 %.0139, 2               ; 5 uses
  %i.ed = zext nneg i32 %i.ec to i64              ; 8 uses
  %i.ee = add nsw i64 %i.dt, %i.ed
  %.not205 = icmp sgt i64 %i.ee, 0
  br i1 %.not205, label %.preheader.preheader.a, label %bb.ax

.preheader.preheader.a:                           ; preds = %bb.aw
  %min.iters.check = icmp ult i32 %.0139, 2
  br i1 %min.iters.check, label %.preheader.preheader229, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.preheader.a
end_hunk_2
begin_hunk_3_@lzf_decompress:bb.a
  %.neg = shl nuw nsw i64 %i.eh, 8
  %i.ei = add nuw nsw i64 %.neg, %i.ef
  %diff.check = icmp samesign ult i64 %i.ei, 32
  br i1 %diff.check, label %.preheader.preheader229, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check225 = icmp ult i32 %.0139, 30
  br i1 %min.iters.check225, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ed, 28
  %n.vec = and i64 %i.ed, 2147483616              ; 12 uses
  %i.ej = getelementptr i8, ptr %.0158217, i64 %n.vec ; 2 uses
  %.cast = trunc nuw nsw i64 %n.vec to i32
  %i.ek = sub i32 %i.ec, %.cast
end_hunk_3
begin_hunk_4_@lzf_decompress:bb.a
  store <16 x i8> %wide.load, ptr %.0158217, align 1, !tbaa !13
  store <16 x i8> %wide.load226, ptr %i.en, align 1, !tbaa !13
  %i.eo = icmp eq i64 %n.vec, 32
  br i1 %i.eo, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %next.gep.1 = getelementptr i8, ptr %.0158217, i64 32
end_hunk_4
begin_hunk_5_@lzf_decompress:bb.a
  store <16 x i8> %wide.load.1, ptr %next.gep.1, align 1, !tbaa !13
  store <16 x i8> %wide.load226.1, ptr %i.eq, align 1, !tbaa !13
  %i.er = icmp eq i64 %n.vec, 64
  br i1 %i.er, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %next.gep.2 = getelementptr i8, ptr %.0158217, i64 64
end_hunk_5
begin_hunk_6_@lzf_decompress:bb.a
  store <16 x i8> %wide.load.2, ptr %next.gep.2, align 1, !tbaa !13
  store <16 x i8> %wide.load226.2, ptr %i.et, align 1, !tbaa !13
  %i.eu = icmp eq i64 %n.vec, 96
  br i1 %i.eu, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %next.gep.3 = getelementptr i8, ptr %.0158217, i64 96
end_hunk_6
begin_hunk_7_@lzf_decompress:bb.a
  store <16 x i8> %wide.load.3, ptr %next.gep.3, align 1, !tbaa !13
  store <16 x i8> %wide.load226.3, ptr %i.ew, align 1, !tbaa !13
  %i.ex = icmp eq i64 %n.vec, 128
  br i1 %i.ex, label %middle.block, label %vector.body.4

vector.body.4:                                    ; preds = %vector.body.3
  %next.gep.4 = getelementptr i8, ptr %.0158217, i64 128
end_hunk_7
begin_hunk_8_@lzf_decompress:bb.a
  store <16 x i8> %wide.load.4, ptr %next.gep.4, align 1, !tbaa !13
  store <16 x i8> %wide.load226.4, ptr %i.ez, align 1, !tbaa !13
  %i.fa = icmp eq i64 %n.vec, 160
  br i1 %i.fa, label %middle.block, label %vector.body.5

vector.body.5:                                    ; preds = %vector.body.4
  %next.gep.5 = getelementptr i8, ptr %.0158217, i64 160
end_hunk_8
begin_hunk_9_@lzf_decompress:bb.a
  store <16 x i8> %wide.load.5, ptr %next.gep.5, align 1, !tbaa !13
  store <16 x i8> %wide.load226.5, ptr %i.fc, align 1, !tbaa !13
  %i.fd = icmp eq i64 %n.vec, 192
  br i1 %i.fd, label %middle.block, label %vector.body.6

vector.body.6:                                    ; preds = %vector.body.5
  %next.gep.6 = getelementptr i8, ptr %.0158217, i64 192
end_hunk_9
begin_hunk_10_@lzf_decompress:bb.a
  store <16 x i8> %wide.load.6, ptr %next.gep.6, align 1, !tbaa !13
  store <16 x i8> %wide.load226.6, ptr %i.ff, align 1, !tbaa !13
  %i.fg = icmp eq i64 %n.vec, 224
  br i1 %i.fg, label %middle.block, label %vector.body.7

vector.body.7:                                    ; preds = %vector.body.6
  %next.gep.7 = getelementptr i8, ptr %.0158217, i64 224
end_hunk_10
begin_hunk_11_@lzf_decompress:bb.a
  %i.fi = getelementptr i8, ptr %.0158217, i64 240
  store <16 x i8> %wide.load.7, ptr %next.gep.7, align 1, !tbaa !13
  store <16 x i8> %wide.load226.7, ptr %i.fi, align 1, !tbaa !13
  br label %middle.block

middle.block:                                     ; preds = %vector.body.7, %vector.body.6, %vector.body.5, %vector.body.4, %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %n.vec, %i.ed
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.preheader.preheader229, label %vec.epilog.ph, !prof !14

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec231 = and i64 %i.ed, 2147483644           ; 5 uses
  %4 = getelementptr i8, ptr %.0158217, i64 %n.vec231 ; 2 uses
  %.cast232 = trunc nuw nsw i64 %n.vec231 to i32
  %5 = sub i32 %i.ec, %.cast232
  %6 = getelementptr i8, ptr %i.du, i64 %n.vec231
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index233 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next237, %vec.epilog.vector.body ] ; 3 uses
  %next.gep234 = getelementptr i8, ptr %.0158217, i64 %index233
  %next.gep235 = getelementptr i8, ptr %i.du, i64 %index233
  %wide.load236 = load <4 x i8>, ptr %next.gep235, align 1, !tbaa !13
  store <4 x i8> %wide.load236, ptr %next.gep234, align 1, !tbaa !13
  %index.next237 = add nuw i64 %index233, 4       ; 2 uses
  %7 = icmp eq i64 %index.next237, %n.vec231
  br i1 %7, label %middle.block.a, label %vec.epilog.vector.body, !llvm.loop !15

middle.block.a:                                   ; preds = %vec.epilog.vector.body
  %cmp.n.a = icmp eq i64 %n.vec231, %i.ed
  br i1 %cmp.n.a, label %.loopexit, label %.preheader.preheader229

.preheader.preheader229:                          ; preds = %vector.memcheck, %.preheader.preheader.a, %vec.epilog.iter.check, %middle.block.a
  %.32190.ph = phi ptr [ %.0158217, %.preheader.preheader.a ], [ %.0158217, %vector.memcheck ], [ %i.ej, %vec.epilog.iter.check ], [ %4, %middle.block.a ] ; 2 uses
  %.1140.ph = phi i32 [ %i.ec, %.preheader.preheader.a ], [ %i.ec, %vector.memcheck ], [ %i.ek, %vec.epilog.iter.check ], [ %5, %middle.block.a ] ; 4 uses
  %.0.ph = phi ptr [ %i.du, %.preheader.preheader.a ], [ %i.du, %vector.memcheck ], [ %i.el, %vec.epilog.iter.check ], [ %6, %middle.block.a ] ; 2 uses
  %i.fj = add nsw i32 %.1140.ph, -1
  %xtraiter = and i32 %.1140.ph, 7                ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
end_hunk_11
begin_hunk_12_@lzf_decompress:bb.a
  %i.fn = add nsw i32 %.1140.prol, -1             ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !19

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader229
  %.lcssa.unr = phi ptr [ poison, %.preheader.preheader229 ], [ %i.fm, %.preheader.prol ]
end_hunk_12
begin_hunk_13_@lzf_decompress:bb.a
  store i8 %i.gm, ptr %i.gk, align 1, !tbaa !13
  %i.go = add nsw i32 %.1140, -8                  ; 2 uses
  %.not206.7 = icmp eq i32 %i.go, 0
  br i1 %.not206.7, label %.loopexit, label %.preheader, !llvm.loop !21

bb.ay:                                            ; preds = %bb.av
  %i.gp = getelementptr inbounds nuw i8, ptr %i.du, i64 1
end_hunk_13
begin_hunk_14_@lzf_decompress:bb.a
default.unreachable:                              ; preds = %bb.f
  unreachable

.loopexit:                                        ; preds = %.preheader.prol.loopexit, %.preheader, %middle.block, %middle.block.a, %bb.ax, %bb.bg, %bb.al
  %.45 = phi ptr [ %i.fp, %bb.ax ], [ %i.hu, %bb.bg ], [ %i.de, %bb.al ], [ %4, %middle.block.a ], [ %i.ej, %middle.block ], [ %.lcssa.unr, %.preheader.prol.loopexit ], [ %i.gn, %.preheader ] ; 2 uses
  %.32.pn = phi ptr [ %.32, %bb.ax ], [ %.32, %bb.bg ], [ %.31, %bb.al ], [ %.32, %middle.block.a ], [ %.32, %middle.block ], [ %.32, %.preheader ], [ %.32, %.preheader.prol.loopexit ]
  %.35 = getelementptr inbounds nuw i8, ptr %.32.pn, i64 1 ; 2 uses
  %i.hv = icmp ult ptr %.35, %i.a
  br i1 %i.hv, label %.lr.ph, label %._crit_edge, !llvm.loop !22

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.0158.lcssa = phi ptr [ %2, %bb.a ], [ %.45, %.loopexit ]
end_hunk_14
begin_hunk_15_@llvm.memcpy.p0.p0.i64
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!11, !11, i64 0}
!14 = !{!"branch_weights", i32 4, i32 28}
!15 = distinct !{!15, !16, !17, !18}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = !{!"llvm.loop.unroll.runtime.disable"}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.unroll.disable"}
!21 = distinct !{!21, !16, !17}
!22 = distinct !{!22, !16}
end_hunk_15
