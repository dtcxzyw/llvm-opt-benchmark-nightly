inline.NumInlined: 76
inline.NumDeleted: 47
begin_hunk_0_@DoAssignIteration:bb.a
.lr.ph.preheader:                                 ; preds = %LoadAssignArrayWithRand.exit.thread, %LoadAssignArrayWithRand.exit
  %i.ea = phi i64 [ %i.dy, %LoadAssignArrayWithRand.exit.thread ], [ %i.dz, %LoadAssignArrayWithRand.exit ]
  %i.eb = getelementptr inbounds nuw i8, ptr %i.a, i64 192 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.a, i64 194 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.a, i64 196 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.a, i64 198 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.a, i64 200 ; 2 uses
  br label %.lr.ph

end_hunk_0
begin_hunk_1_@DoAssignIteration:bb.a

scalar.ph22:                                      ; preds = %pred.store.continue58
  %bin.rdx = add <8 x i16> %predphi61, %predphi59
  %i.rw = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx) ; 2 uses
  %gep.i19.i.a = getelementptr inbounds nuw i8, ptr %invariant.gep.i18.i, i64 19392
  %i.rx = load i16, ptr %gep.i19.i.a, align 2, !tbaa !91
  %2 = icmp ne i16 %i.rx, 1
  %i.ry = load i16, ptr %i.eb, align 16
  %.not103.i.i = icmp eq i16 %i.ry, 1
  %or.cond = select i1 %2, i1 true, i1 %.not103.i.i
  br i1 %or.cond, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %scalar.ph22
  store i16 1, ptr %i.eb, align 16, !tbaa !91
  %3 = add i16 %i.rw, 1
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %scalar.ph22
  %.2.i.i = phi i16 [ %3, %bb.cc ], [ %i.rw, %scalar.ph22 ] ; 2 uses
  %gep.i19.i.1 = getelementptr inbounds nuw i8, ptr %invariant.gep.i18.i, i64 19594
  %4 = load i16, ptr %gep.i19.i.1, align 2, !tbaa !91
  %5 = icmp ne i16 %4, 1
  %6 = load i16, ptr %i.ec, align 2
  %.not103.i.i.1 = icmp eq i16 %6, 1
  %or.cond88 = select i1 %5, i1 true, i1 %.not103.i.i.1
  br i1 %or.cond88, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  store i16 1, ptr %i.ec, align 2, !tbaa !91
  %7 = add i16 %.2.i.i, 1
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %.2.i.i.1 = phi i16 [ %7, %bb.ce ], [ %.2.i.i, %bb.cd ] ; 2 uses
  %gep.i19.i.2 = getelementptr inbounds nuw i8, ptr %invariant.gep.i18.i, i64 19796
  %8 = load i16, ptr %gep.i19.i.2, align 2, !tbaa !91
  %9 = icmp ne i16 %8, 1
  %10 = load i16, ptr %i.ed, align 4
  %.not103.i.i.2 = icmp eq i16 %10, 1
  %or.cond89 = select i1 %9, i1 true, i1 %.not103.i.i.2
  br i1 %or.cond89, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  store i16 1, ptr %i.ed, align 4, !tbaa !91
  %11 = add i16 %.2.i.i.1, 1
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.2.i.i.2 = phi i16 [ %11, %bb.cg ], [ %.2.i.i.1, %bb.cf ] ; 2 uses
  %gep.i19.i.3 = getelementptr inbounds nuw i8, ptr %invariant.gep.i18.i, i64 19998
  %12 = load i16, ptr %gep.i19.i.3, align 2, !tbaa !91
  %13 = icmp ne i16 %12, 1
  %14 = load i16, ptr %i.ee, align 2
  %.not103.i.i.3 = icmp eq i16 %14, 1
  %or.cond90 = select i1 %13, i1 true, i1 %.not103.i.i.3
  br i1 %or.cond90, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  store i16 1, ptr %i.ee, align 2, !tbaa !91
  %15 = add i16 %.2.i.i.2, 1
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %.2.i.i.3 = phi i16 [ %15, %bb.ci ], [ %.2.i.i.2, %bb.ch ] ; 2 uses
  %gep.i19.i.4 = getelementptr inbounds nuw i8, ptr %invariant.gep.i18.i, i64 20200
  %i.rz = load i16, ptr %gep.i19.i.4, align 2, !tbaa !91
  %i.sa = icmp ne i16 %i.rz, 1
end_hunk_1
begin_hunk_2_@DoAssignIteration:bb.a

bb.ck:                                            ; preds = %bb.cj
  store i16 1, ptr %i.ef, align 8, !tbaa !91
  %i.sc = add i16 %.2.i.i.3, 1
  br label %.loopexit112.i.i

.loopexit112.i.i:                                 ; preds = %bb.cj, %bb.ck, %.preheader115.i.i
  %.3.i13.i = phi i16 [ %.0130.i.i, %.preheader115.i.i ], [ %i.sc, %bb.ck ], [ %.2.i.i.3, %bb.cj ] ; 2 uses
  %indvars.iv.next158.i.i = add nuw nsw i64 %indvars.iv157.i.i, 1 ; 2 uses
  %exitcond159.not.i.i = icmp eq i64 %indvars.iv.next158.i.i, 101
  br i1 %exitcond159.not.i.i, label %bb.cl, label %.preheader115.i.i, !llvm.loop !98
end_hunk_2
begin_hunk_3_@llvm.vector.reduce.add.v8i16
declare i16 @llvm.vector.reduce.add.v8i16(<8 x i16>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.smin.v2i64(<2 x i64>, <2 x i64>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
end_hunk_3
