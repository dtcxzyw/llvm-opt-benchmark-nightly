inline.NumInlined: 76
inline.NumDeleted: 47
begin_hunk_0_@DoAssignIteration:bb.a
.lr.ph.preheader:                                 ; preds = %LoadAssignArrayWithRand.exit.thread, %LoadAssignArrayWithRand.exit
  %i.ea = phi i64 [ %i.dy, %LoadAssignArrayWithRand.exit.thread ], [ %i.dz, %LoadAssignArrayWithRand.exit ]
  %i.eb = getelementptr inbounds nuw i8, ptr %i.a, i64 192 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.a, i64 194
  %i.ed = getelementptr inbounds nuw i8, ptr %i.a, i64 196
  %i.ee = getelementptr inbounds nuw i8, ptr %i.a, i64 198
  %i.ef = getelementptr inbounds nuw i8, ptr %i.a, i64 200 ; 2 uses
  br label %.lr.ph

end_hunk_0
begin_hunk_1_@DoAssignIteration:bb.a

scalar.ph22:                                      ; preds = %pred.store.continue58
  %bin.rdx = add <8 x i16> %predphi61, %predphi59
  %i.rw = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx)
  %2 = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %i.rw, i64 0
  %gep.i19.i.a = getelementptr inbounds nuw i8, ptr %invariant.gep.i18.i, i64 19392
  %3 = getelementptr inbounds nuw i8, ptr %invariant.gep.i18.i, i64 19594
  %4 = getelementptr inbounds nuw i8, ptr %invariant.gep.i18.i, i64 19796
  %5 = getelementptr inbounds nuw i8, ptr %invariant.gep.i18.i, i64 19998
  %6 = load i16, ptr %gep.i19.i.a, align 2, !tbaa !91
  %i.rx = load i16, ptr %3, align 2, !tbaa !91
  %7 = load i16, ptr %4, align 2, !tbaa !91
  %i.ry = load i16, ptr %5, align 2, !tbaa !91
  %8 = insertelement <4 x i16> poison, i16 %6, i64 0
  %9 = insertelement <4 x i16> %8, i16 %i.rx, i64 1
  %10 = insertelement <4 x i16> %9, i16 %7, i64 2
  %11 = insertelement <4 x i16> %10, i16 %i.ry, i64 3
  %12 = icmp eq <4 x i16> %11, splat (i16 1)      ; 2 uses
  %wide.load66 = load <4 x i16>, ptr %i.eb, align 16, !tbaa !91
  %13 = icmp ne <4 x i16> %wide.load66, splat (i16 1) ; 2 uses
  %14 = select <4 x i1> %12, <4 x i1> %13, <4 x i1> zeroinitializer ; 4 uses
  %15 = extractelement <4 x i1> %14, i64 0
  br i1 %15, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %scalar.ph22
  store i16 1, ptr %i.eb, align 16, !tbaa !91
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %scalar.ph22
  %16 = extractelement <4 x i1> %14, i64 1
  br i1 %16, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  store i16 1, ptr %i.ec, align 2, !tbaa !91
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %17 = extractelement <4 x i1> %14, i64 2
  br i1 %17, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  store i16 1, ptr %i.ed, align 4, !tbaa !91
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %18 = extractelement <4 x i1> %14, i64 3
  br i1 %18, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  store i16 1, ptr %i.ee, align 2, !tbaa !91
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %narrow99 = select <4 x i1> %12, <4 x i1> %13, <4 x i1> zeroinitializer
  %predphi75 = zext <4 x i1> %narrow99 to <4 x i16>
  %predphi76 = add <4 x i16> %2, %predphi75
  %19 = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %predphi76) ; 2 uses
  %gep.i19.i.4 = getelementptr inbounds nuw i8, ptr %invariant.gep.i18.i, i64 20200
  %i.rz = load i16, ptr %gep.i19.i.4, align 2, !tbaa !91
  %i.sa = icmp ne i16 %i.rz, 1
end_hunk_1
begin_hunk_2_@DoAssignIteration:bb.a

bb.ck:                                            ; preds = %bb.cj
  store i16 1, ptr %i.ef, align 8, !tbaa !91
  %i.sc = add i16 %19, 1
  br label %.loopexit112.i.i

.loopexit112.i.i:                                 ; preds = %bb.cj, %bb.ck, %.preheader115.i.i
  %.3.i13.i = phi i16 [ %.0130.i.i, %.preheader115.i.i ], [ %i.sc, %bb.ck ], [ %19, %bb.cj ] ; 2 uses
  %indvars.iv.next158.i.i = add nuw nsw i64 %indvars.iv157.i.i, 1 ; 2 uses
  %exitcond159.not.i.i = icmp eq i64 %indvars.iv.next158.i.i, 101
  br i1 %exitcond159.not.i.i, label %bb.cl, label %.preheader115.i.i, !llvm.loop !98
end_hunk_2
begin_hunk_3_@llvm.vector.reduce.add.v8i16
declare i16 @llvm.vector.reduce.add.v8i16(<8 x i16>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.add.v4i16(<4 x i16>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.smin.v2i64(<2 x i64>, <2 x i64>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
end_hunk_3
