begin_hunk_0_@chacha20_cipher:bb.a

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check122 = icmp samesign ult i64 %umin, 31
  br i1 %min.iters.check122, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.m, 28
  %n.vec = and i64 %i.m, 96                       ; 7 uses
  %4 = add nuw nsw i64 %n.vec, %i.j               ; 2 uses
  %5 = getelementptr i8, ptr %1, i64 %n.vec       ; 2 uses
  %6 = sub i64 %3, %n.vec                         ; 2 uses
  %7 = getelementptr i8, ptr %2, i64 %n.vec       ; 2 uses
  %invariant.gep = getelementptr i8, ptr %i.i, i64 %i.j
  br label %vector.ph.a

vector.ph.a:                                      ; preds = %vector.ph.a, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.ph.a ] ; 4 uses
  %i.r = getelementptr i8, ptr %1, i64 %index     ; 2 uses
  %i.s = getelementptr i8, ptr %2, i64 %index     ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 16
  %wide.load = load <16 x i8>, ptr %i.s, align 1, !tbaa !9
  %wide.load124 = load <16 x i8>, ptr %i.t, align 1, !tbaa !9
  %i.u = getelementptr i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load125 = load <16 x i8>, ptr %i.u, align 1, !tbaa !9
  %wide.load126 = load <16 x i8>, ptr %i.v, align 1, !tbaa !9
  %i.w = xor <16 x i8> %wide.load125, %wide.load
  %i.x = xor <16 x i8> %wide.load126, %wide.load124
  %i.y = getelementptr i8, ptr %i.r, i64 16
  store <16 x i8> %i.w, ptr %i.r, align 1, !tbaa !9
  store <16 x i8> %i.x, ptr %i.y, align 1, !tbaa !9
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %cmp.n.a = icmp eq i64 %index.next, %n.vec
  br i1 %cmp.n.a, label %middle.block, label %vector.ph.a, !llvm.loop !18

middle.block:                                     ; preds = %vector.ph.a
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !22

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
end_hunk_0
begin_hunk_1_@chacha20_cipher:bb.a
  store <4 x i8> %i.ad, ptr %next.gep133, align 1, !tbaa !9
  %index.next137 = add nuw i64 %index132, 4       ; 2 uses
  %i.ae = icmp eq i64 %index.next137, %n.vec131
  br i1 %i.ae, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !23

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n138 = icmp eq i64 %i.m, %n.vec131
end_hunk_1
begin_hunk_2_@chacha20_cipher:bb.a

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.j, %iter.check ], [ %i.j, %vector.memcheck ], [ %4, %vec.epilog.iter.check ], [ %i.z, %vec.epilog.middle.block ]
  %.06884.ph = phi ptr [ %1, %iter.check ], [ %1, %vector.memcheck ], [ %5, %vec.epilog.iter.check ], [ %i.aa, %vec.epilog.middle.block ]
  %.07083.ph = phi i64 [ %3, %iter.check ], [ %3, %vector.memcheck ], [ %6, %vec.epilog.iter.check ], [ %i.ab, %vec.epilog.middle.block ]
  %.07382.ph = phi ptr [ %2, %iter.check ], [ %2, %vector.memcheck ], [ %7, %vec.epilog.iter.check ], [ %i.ac, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
end_hunk_2
begin_hunk_3_@chacha20_cipher:bb.a
  %i.am = icmp ne i64 %i.al, 0
  %i.an = icmp samesign ult i64 %indvars.iv, 63
  %i.ao = and i1 %i.am, %i.an
  br i1 %i.ao, label %vec.epilog.scalar.ph, label %._crit_edge.loopexit, !llvm.loop !24

._crit_edge.loopexit:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa120 = phi ptr [ %i.ac, %vec.epilog.middle.block ], [ %7, %middle.block ], [ %i.af, %vec.epilog.scalar.ph ]
  %indvars.iv.next.lcssa = phi i64 [ %i.z, %vec.epilog.middle.block ], [ %4, %middle.block ], [ %indvars.iv.next, %vec.epilog.scalar.ph ]
  %.lcssa119 = phi ptr [ %i.aa, %vec.epilog.middle.block ], [ %5, %middle.block ], [ %i.ak, %vec.epilog.scalar.ph ]
  %.lcssa118 = phi i64 [ %i.ab, %vec.epilog.middle.block ], [ %6, %middle.block ], [ %i.al, %vec.epilog.scalar.ph ]
  %i.ap = trunc nuw nsw i64 %indvars.iv.next.lcssa to i32
  br label %._crit_edge

end_hunk_3
begin_hunk_4_@chacha20_cipher:bb.a

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not79 = icmp eq i64 %i.bn, 0
  br i1 %.not79, label %._crit_edge96, label %bb.f, !llvm.loop !25

._crit_edge96:                                    ; preds = %bb.h, %bb.e
  %.275.lcssa = phi ptr [ %.174, %bb.e ], [ %i.bo, %bb.h ] ; 8 uses
end_hunk_4
begin_hunk_5_@chacha20_cipher:bb.a
  store <8 x i8> %i.cd, ptr %i.cf, align 1, !tbaa !9
  %index.next161 = add nuw i64 %index156, 16      ; 2 uses
  %i.cg = icmp eq i64 %index.next161, %n.vec154
  br i1 %i.cg, label %middle.block162, label %vector.body155, !llvm.loop !26

middle.block162:                                  ; preds = %vector.body155
  %cmp.n163 = icmp eq i64 %wide.trip.count, %n.vec154
end_hunk_5
begin_hunk_6_@chacha20_cipher:bb.a

vec.epilog.iter.check167:                         ; preds = %middle.block162
  %min.epilog.iters.check168 = icmp eq i64 %n.mod.vf153, 0
  br i1 %min.epilog.iters.check168, label %vec.epilog.scalar.ph166.preheader, label %vec.epilog.ph169, !prof !27

vec.epilog.ph169:                                 ; preds = %vector.main.loop.iter.check150, %vec.epilog.iter.check167
  %vec.epilog.resume.val164 = phi i64 [ %n.vec154, %vec.epilog.iter.check167 ], [ 0, %vector.main.loop.iter.check150 ]
end_hunk_6
begin_hunk_7_@chacha20_cipher:bb.a
  store <4 x i8> %i.cj, ptr %i.ck, align 1, !tbaa !9
  %index.next176 = add nuw i64 %index173, 4       ; 2 uses
  %i.cl = icmp eq i64 %index.next176, %n.vec171
  br i1 %i.cl, label %vec.epilog.middle.block177, label %vec.epilog.vector.body172, !llvm.loop !28

vec.epilog.middle.block177:                       ; preds = %vec.epilog.vector.body172
  %cmp.n178 = icmp eq i64 %wide.trip.count, %n.vec171
end_hunk_7
begin_hunk_8_@chacha20_cipher:bb.a
  %indvars.iv.next107.prol = add nuw nsw i64 %indvars.iv106.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph166.prol.loopexit, label %vec.epilog.scalar.ph166.prol, !llvm.loop !29

vec.epilog.scalar.ph166.prol.loopexit:            ; preds = %vec.epilog.scalar.ph166.prol, %vec.epilog.scalar.ph166.preheader
  %indvars.iv106.unr = phi i64 [ %indvars.iv106.ph, %vec.epilog.scalar.ph166.preheader ], [ %indvars.iv.next107.prol, %vec.epilog.scalar.ph166.prol ]
end_hunk_8
begin_hunk_9_@chacha20_cipher:bb.a
  store i8 %i.dq, ptr %i.dr, align 1, !tbaa !9
  %indvars.iv.next107.3 = add nuw nsw i64 %indvars.iv106, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next107.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit, label %vec.epilog.scalar.ph166, !llvm.loop !31

.loopexit:                                        ; preds = %vec.epilog.scalar.ph166.prol.loopexit, %vec.epilog.scalar.ph166, %vec.epilog.middle.block177, %middle.block162
  store i32 %i.ba, ptr %i.d, align 8, !tbaa !10
end_hunk_9
begin_hunk_10_@llvm.umin.i64
!15 = !{!"p1 omnipotent char", !13, i64 0}
!16 = !{!"p1 _ZTS17prov_cipher_hw_st", !13, i64 0}
!17 = !{!"p1 _ZTS15ossl_lib_ctx_st", !13, i64 0}
!18 = distinct !{!18, !19, !20, !21}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!"llvm.loop.isvectorized", i32 1}
!21 = !{!"llvm.loop.unroll.runtime.disable"}
!22 = !{!"branch_weights", i32 4, i32 28}
!23 = distinct !{!23, !19, !20, !21}
!24 = distinct !{!24, !19, !20}
!25 = distinct !{!25, !19}
!26 = distinct !{!26, !19, !20, !21}
!27 = !{!"branch_weights", i32 4, i32 12}
!28 = distinct !{!28, !19, !20, !21}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.unroll.disable"}
!31 = distinct !{!31, !19, !20}
end_hunk_10
