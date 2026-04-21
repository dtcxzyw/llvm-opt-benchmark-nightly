begin_hunk_0_@chacha20_cipher:bb.a
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.j = zext nneg i32 %i.e to i64                ; 6 uses
  %i.k = add i64 %3, -1
  %i.l = sub nuw nsw i64 63, %i.j
  %umin = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.l) ; 2 uses
  %i.m = add nuw nsw i64 %umin, 1                 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %umin, 31
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
end_hunk_0
begin_hunk_1_@chacha20_cipher:bb.a
  %i.q = sub i64 %i.o, %i.p
  %diff.check121 = icmp ult i64 %i.q, 32
  %conflict.rdx = or i1 %diff.check, %diff.check121
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck
  %n.vec = and i64 %i.m, 96                       ; 5 uses
  %i.r = getelementptr i8, ptr %2, i64 %n.vec     ; 2 uses
  %i.s = sub i64 %3, %n.vec                       ; 2 uses
  %i.t = getelementptr i8, ptr %1, i64 %n.vec     ; 2 uses
  %4 = add nuw nsw i64 %n.vec, %i.j               ; 2 uses
  %i.u = getelementptr i8, ptr %2, i64 16
  %wide.load = load <16 x i8>, ptr %2, align 1, !tbaa !9
  %wide.load123 = load <16 x i8>, ptr %i.u, align 1, !tbaa !9
end_hunk_1
begin_hunk_2_@chacha20_cipher:bb.a
  store <16 x i8> %i.x, ptr %1, align 1, !tbaa !9
  store <16 x i8> %i.y, ptr %i.z, align 1, !tbaa !9
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %vector.body
  %indvars.iv.ph = phi i64 [ %i.j, %vector.memcheck ], [ %i.j, %.lr.ph ], [ %4, %vector.body ]
  %.06884.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph ], [ %i.t, %vector.body ]
  %.07083.ph = phi i64 [ %3, %vector.memcheck ], [ %3, %.lr.ph ], [ %i.s, %vector.body ]
  %.07382.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph ], [ %i.r, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
end_hunk_2
begin_hunk_3_@chacha20_cipher:bb.a
  %i.ah = icmp ne i64 %i.ag, 0
  %i.ai = icmp samesign ult i64 %indvars.iv, 63
  %i.aj = and i1 %i.ah, %i.ai
  br i1 %i.aj, label %scalar.ph, label %._crit_edge.loopexit, !llvm.loop !18

._crit_edge.loopexit:                             ; preds = %scalar.ph, %vector.body
  %.lcssa120 = phi ptr [ %i.r, %vector.body ], [ %i.aa, %scalar.ph ]
  %indvars.iv.next.lcssa = phi i64 [ %4, %vector.body ], [ %indvars.iv.next, %scalar.ph ]
  %.lcssa119 = phi ptr [ %i.t, %vector.body ], [ %i.af, %scalar.ph ]
  %.lcssa118 = phi i64 [ %i.s, %vector.body ], [ %i.ag, %scalar.ph ]
  %i.ak = trunc nuw nsw i64 %indvars.iv.next.lcssa to i32
  br label %._crit_edge

end_hunk_3
begin_hunk_4_@chacha20_cipher:bb.a

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not79 = icmp eq i64 %i.bi, 0
  br i1 %.not79, label %._crit_edge96, label %bb.f, !llvm.loop !21

._crit_edge96:                                    ; preds = %bb.h, %bb.e
  %.275.lcssa = phi ptr [ %.174, %bb.e ], [ %i.bj, %bb.h ] ; 8 uses
end_hunk_4
begin_hunk_5_@chacha20_cipher:bb.a
  store <8 x i8> %i.by, ptr %i.ca, align 1, !tbaa !9
  %index.next147 = add nuw i64 %index142, 16      ; 2 uses
  %i.cb = icmp eq i64 %index.next147, %n.vec140
  br i1 %i.cb, label %middle.block148, label %vector.body141, !llvm.loop !22

middle.block148:                                  ; preds = %vector.body141
  %cmp.n149 = icmp eq i64 %wide.trip.count, %n.vec140
end_hunk_5
begin_hunk_6_@chacha20_cipher:bb.a

vec.epilog.iter.check.a:                          ; preds = %middle.block148
  %min.epilog.iters.check.a = icmp eq i64 %n.mod.vf139, 0
  br i1 %min.epilog.iters.check.a, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph.a, !prof !24

vec.epilog.ph.a:                                  ; preds = %vector.main.loop.iter.check.a, %vec.epilog.iter.check.a
  %vec.epilog.resume.val.a = phi i64 [ %n.vec140, %vec.epilog.iter.check.a ], [ 0, %vector.main.loop.iter.check.a ]
end_hunk_6
begin_hunk_7_@chacha20_cipher:bb.a
  store <4 x i8> %i.ce, ptr %i.cf, align 1, !tbaa !9
  %index.next155 = add nuw i64 %index152, 4       ; 2 uses
  %i.cg = icmp eq i64 %index.next155, %n.vec151
  br i1 %i.cg, label %vec.epilog.middle.block.a, label %vec.epilog.vector.body.a, !llvm.loop !25

vec.epilog.middle.block.a:                        ; preds = %vec.epilog.vector.body.a
  %cmp.n156 = icmp eq i64 %wide.trip.count, %n.vec151
end_hunk_7
begin_hunk_8_@chacha20_cipher:bb.a
  %indvars.iv.next107.prol = add nuw nsw i64 %indvars.iv106.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !26

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv106.unr = phi i64 [ %indvars.iv106.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next107.prol, %vec.epilog.scalar.ph.prol ]
end_hunk_8
begin_hunk_9_@chacha20_cipher:bb.a
  store i8 %i.dl, ptr %i.dm, align 1, !tbaa !9
  %indvars.iv.next107.3 = add nuw nsw i64 %indvars.iv106, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next107.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !28

.loopexit:                                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block.a, %middle.block148
  store i32 %i.av, ptr %i.d, align 8, !tbaa !10
end_hunk_9
begin_hunk_10_@llvm.umin.i64
!15 = !{!"p1 omnipotent char", !13, i64 0}
!16 = !{!"p1 _ZTS17prov_cipher_hw_st", !13, i64 0}
!17 = !{!"p1 _ZTS15ossl_lib_ctx_st", !13, i64 0}
!18 = distinct !{!18, !19, !20}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!"llvm.loop.isvectorized", i32 1}
!21 = distinct !{!21, !19}
!22 = distinct !{!22, !19, !20, !23}
!23 = !{!"llvm.loop.unroll.runtime.disable"}
!24 = !{!"branch_weights", i32 4, i32 12}
!25 = distinct !{!25, !19, !20, !23}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.unroll.disable"}
!28 = distinct !{!28, !19, !20}
end_hunk_10
