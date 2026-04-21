begin_hunk_0_@chacha20_cipher:bb.a
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.j = zext nneg i32 %i.e to i64                ; 8 uses
  %i.k = add i64 %3, -1
  %i.l = sub nuw nsw i64 63, %i.j
  %umin = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.l) ; 3 uses
  %i.m = add nuw nsw i64 %umin, 1                 ; 5 uses
  %min.iters.check = icmp samesign ult i64 %umin, 3
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
end_hunk_0
begin_hunk_1_@chacha20_cipher:bb.a
  %i.q = sub i64 %i.o, %i.p
  %diff.check121 = icmp ult i64 %i.q, 32
  %conflict.rdx = or i1 %diff.check, %diff.check121
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check122 = icmp samesign ult i64 %umin, 31
  br i1 %min.iters.check122, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.m, 28
  %n.vec = and i64 %i.m, 96                       ; 6 uses
  %4 = add nuw nsw i64 %n.vec, %i.j               ; 2 uses
  %i.r = getelementptr i8, ptr %1, i64 %n.vec     ; 2 uses
  %i.s = sub i64 %3, %n.vec                       ; 2 uses
  %i.t = getelementptr i8, ptr %2, i64 %n.vec     ; 2 uses
  %i.u = getelementptr i8, ptr %2, i64 16
  %wide.load = load <16 x i8>, ptr %2, align 1, !tbaa !9
  %wide.load123 = load <16 x i8>, ptr %i.u, align 1, !tbaa !9
end_hunk_1
begin_hunk_2_@chacha20_cipher:bb.a
  store <16 x i8> %i.x, ptr %1, align 1, !tbaa !9
  store <16 x i8> %i.y, ptr %i.z, align 1, !tbaa !9
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %vector.body
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %scalar.ph.preheader, label %vec.epilog.ph, !prof !18

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec131 = and i64 %i.m, 124                   ; 6 uses
  %5 = add nuw nsw i64 %n.vec131, %i.j            ; 2 uses
  %6 = getelementptr i8, ptr %1, i64 %n.vec131    ; 2 uses
  %7 = sub i64 %3, %n.vec131                      ; 2 uses
  %8 = getelementptr i8, ptr %2, i64 %n.vec131    ; 2 uses
  %invariant.gep = getelementptr i8, ptr %i.i, i64 %i.j
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index132 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next137, %vec.epilog.vector.body ] ; 4 uses
  %next.gep133 = getelementptr i8, ptr %1, i64 %index132
  %next.gep134 = getelementptr i8, ptr %2, i64 %index132
  %wide.load135 = load <4 x i8>, ptr %next.gep134, align 1, !tbaa !9
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index132
  %wide.load136 = load <4 x i8>, ptr %gep, align 1, !tbaa !9
  %9 = xor <4 x i8> %wide.load136, %wide.load135
  store <4 x i8> %9, ptr %next.gep133, align 1, !tbaa !9
  %index.next137 = add nuw i64 %index132, 4       ; 2 uses
  %10 = icmp eq i64 %index.next137, %n.vec131
  br i1 %10, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !19

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n138 = icmp eq i64 %i.m, %n.vec131
  br i1 %cmp.n138, label %._crit_edge.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.j, %.lr.ph ], [ %i.j, %vector.memcheck ], [ %4, %vec.epilog.iter.check ], [ %5, %vec.epilog.middle.block ]
  %.06884.ph = phi ptr [ %1, %.lr.ph ], [ %1, %vector.memcheck ], [ %i.r, %vec.epilog.iter.check ], [ %6, %vec.epilog.middle.block ]
  %.07083.ph = phi i64 [ %3, %.lr.ph ], [ %3, %vector.memcheck ], [ %i.s, %vec.epilog.iter.check ], [ %7, %vec.epilog.middle.block ]
  %.07382.ph = phi ptr [ %2, %.lr.ph ], [ %2, %vector.memcheck ], [ %i.t, %vec.epilog.iter.check ], [ %8, %vec.epilog.middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
end_hunk_2
begin_hunk_3_@chacha20_cipher:bb.a
  %i.ah = icmp ne i64 %i.ag, 0
  %i.ai = icmp samesign ult i64 %indvars.iv, 63
  %i.aj = and i1 %i.ah, %i.ai
  br i1 %i.aj, label %scalar.ph, label %._crit_edge.loopexit, !llvm.loop !23

._crit_edge.loopexit:                             ; preds = %scalar.ph, %vec.epilog.middle.block, %vector.body
  %.lcssa120 = phi ptr [ %8, %vec.epilog.middle.block ], [ %i.t, %vector.body ], [ %i.aa, %scalar.ph ]
  %indvars.iv.next.lcssa = phi i64 [ %5, %vec.epilog.middle.block ], [ %4, %vector.body ], [ %indvars.iv.next, %scalar.ph ]
  %.lcssa119 = phi ptr [ %6, %vec.epilog.middle.block ], [ %i.r, %vector.body ], [ %i.af, %scalar.ph ]
  %.lcssa118 = phi i64 [ %7, %vec.epilog.middle.block ], [ %i.s, %vector.body ], [ %i.ag, %scalar.ph ]
  %i.ak = trunc nuw nsw i64 %indvars.iv.next.lcssa to i32
  br label %._crit_edge

end_hunk_3
begin_hunk_4_@chacha20_cipher:bb.a

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not79 = icmp eq i64 %i.bi, 0
  br i1 %.not79, label %._crit_edge96, label %bb.f, !llvm.loop !24

._crit_edge96:                                    ; preds = %bb.h, %bb.e
  %.275.lcssa = phi ptr [ %.174, %bb.e ], [ %i.bj, %bb.h ] ; 8 uses
end_hunk_4
begin_hunk_5_@chacha20_cipher:bb.a
  store <8 x i8> %i.by, ptr %i.ca, align 1, !tbaa !9
  %index.next147 = add nuw i64 %index142, 16      ; 2 uses
  %i.cb = icmp eq i64 %index.next147, %n.vec140
  br i1 %i.cb, label %middle.block148, label %vector.body141, !llvm.loop !25

middle.block148:                                  ; preds = %vector.body141
  %cmp.n149 = icmp eq i64 %wide.trip.count, %n.vec140
end_hunk_5
begin_hunk_6_@chacha20_cipher:bb.a

vec.epilog.iter.check.a:                          ; preds = %middle.block148
  %min.epilog.iters.check.a = icmp eq i64 %n.mod.vf139, 0
  br i1 %min.epilog.iters.check.a, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph.a, !prof !26

vec.epilog.ph.a:                                  ; preds = %vector.main.loop.iter.check.a, %vec.epilog.iter.check.a
  %vec.epilog.resume.val.a = phi i64 [ %n.vec140, %vec.epilog.iter.check.a ], [ 0, %vector.main.loop.iter.check.a ]
end_hunk_6
begin_hunk_7_@chacha20_cipher:bb.a
  store <4 x i8> %i.ce, ptr %i.cf, align 1, !tbaa !9
  %index.next155 = add nuw i64 %index152, 4       ; 2 uses
  %i.cg = icmp eq i64 %index.next155, %n.vec151
  br i1 %i.cg, label %vec.epilog.middle.block.a, label %vec.epilog.vector.body.a, !llvm.loop !27

vec.epilog.middle.block.a:                        ; preds = %vec.epilog.vector.body.a
  %cmp.n156 = icmp eq i64 %wide.trip.count, %n.vec151
end_hunk_7
begin_hunk_8_@chacha20_cipher:bb.a
  %indvars.iv.next107.prol = add nuw nsw i64 %indvars.iv106.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !28

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv106.unr = phi i64 [ %indvars.iv106.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next107.prol, %vec.epilog.scalar.ph.prol ]
end_hunk_8
begin_hunk_9_@chacha20_cipher:bb.a
  store i8 %i.dl, ptr %i.dm, align 1, !tbaa !9
  %indvars.iv.next107.3 = add nuw nsw i64 %indvars.iv106, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next107.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !30

.loopexit:                                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block.a, %middle.block148
  store i32 %i.av, ptr %i.d, align 8, !tbaa !10
end_hunk_9
begin_hunk_10_@llvm.umin.i64
!15 = !{!"p1 omnipotent char", !13, i64 0}
!16 = !{!"p1 _ZTS17prov_cipher_hw_st", !13, i64 0}
!17 = !{!"p1 _ZTS15ossl_lib_ctx_st", !13, i64 0}
!18 = !{!"branch_weights", i32 4, i32 28}
!19 = distinct !{!19, !20, !21, !22}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!"llvm.loop.isvectorized", i32 1}
!22 = !{!"llvm.loop.unroll.runtime.disable"}
!23 = distinct !{!23, !20, !21}
!24 = distinct !{!24, !20}
!25 = distinct !{!25, !20, !21, !22}
!26 = !{!"branch_weights", i32 4, i32 12}
!27 = distinct !{!27, !20, !21, !22}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.unroll.disable"}
!30 = distinct !{!30, !20, !21}
end_hunk_10
