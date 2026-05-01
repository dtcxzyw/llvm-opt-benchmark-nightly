inline.NumInlined: 17
begin_hunk_0_@sgrep:bb.a

iter.check:                                       ; preds = %._crit_edge.i95
  %wide.trip.count.i = zext nneg i32 %i.j to i64  ; 9 uses
  %min.iters.check = icmp ult i32 %i.j, 4
  br i1 %min.iters.check, label %.lr.ph52.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
end_hunk_0
begin_hunk_1_@sgrep:bb.a
  br i1 %min.iters.check130, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %wide.trip.count.i, 12
  %n.vec = and i64 %wide.trip.count.i, 2147483632 ; 3 uses
  %wide.load = load <16 x i8>, ptr %0, align 1, !tbaa !8 ; 2 uses
  %i.gu = icmp eq <16 x i8> %wide.load, splat (i8 94)
end_hunk_1
begin_hunk_2_@sgrep:bb.a

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec162 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue172.a, %vec.epilog.ph
  %index163 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next173, %pred.store.continue172.a ] ; 5 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 %index163 ; 2 uses
  %wide.load164 = load <4 x i8>, ptr %i.ic, align 1, !tbaa !8 ; 2 uses
  %4 = icmp eq <4 x i8> %wide.load164, splat (i8 94)
  %5 = icmp eq <4 x i8> %wide.load164, splat (i8 36)
  %6 = or <4 x i1> %4, %5                         ; 4 uses
  %i.id = extractelement <4 x i1> %6, i64 0
  br i1 %i.id, label %pred.store.if165.a, label %pred.store.continue166.a

pred.store.if165.a:                               ; preds = %vec.epilog.vector.body
  store i8 10, ptr %i.ic, align 1, !tbaa !8
  br label %pred.store.continue166.a

pred.store.continue166.a:                         ; preds = %pred.store.if165.a, %vec.epilog.vector.body
  %i.ie = extractelement <4 x i1> %6, i64 1
  br i1 %i.ie, label %pred.store.if167.a, label %pred.store.continue168.a

pred.store.if167.a:                               ; preds = %pred.store.continue166.a
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 %index163
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 1
  store i8 10, ptr %i.ig, align 1, !tbaa !8
  br label %pred.store.continue168.a

pred.store.continue168.a:                         ; preds = %pred.store.if167.a, %pred.store.continue166.a
  %i.ih = extractelement <4 x i1> %6, i64 2
  br i1 %i.ih, label %pred.store.if169.a, label %pred.store.continue170.a

pred.store.if169.a:                               ; preds = %pred.store.continue168.a
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 %index163
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 2
  store i8 10, ptr %i.ij, align 1, !tbaa !8
  br label %pred.store.continue170.a

pred.store.continue170.a:                         ; preds = %pred.store.if169.a, %pred.store.continue168.a
  %i.ik = extractelement <4 x i1> %6, i64 3
  br i1 %i.ik, label %pred.store.if171.a, label %pred.store.continue172.a

pred.store.if171.a:                               ; preds = %pred.store.continue170.a
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 %index163
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 3
  store i8 10, ptr %i.im, align 1, !tbaa !8
  br label %pred.store.continue172.a

pred.store.continue172.a:                         ; preds = %pred.store.if171.a, %pred.store.continue170.a
  %index.next173 = add nuw i64 %index163, 4       ; 2 uses
  %i.in = icmp eq i64 %index.next173, %n.vec162
  br i1 %i.in, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !102

end_hunk_2
begin_hunk_3_@llvm.assume
!98 = distinct !{!98, !15}
!99 = distinct !{!99, !15, !23, !24}
!100 = distinct !{!100, !57}
!101 = !{!"branch_weights", i32 4, i32 12}
!102 = distinct !{!102, !15, !23, !24}
!103 = distinct !{!103, !15, !24, !23}
!104 = distinct !{!104, !15}
end_hunk_3
