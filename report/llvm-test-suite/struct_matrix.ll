inline.NumInlined: 4
begin_hunk_0_@hypre_StructMatrixInitializeShell:bb.a
  br label %.lr.ph178

.preheader171:                                    ; preds = %.loopexit, %bb.d
  %.sroa.15.0 = phi i32 [ 0, %bb.d ], [ %.sroa.15.2.a, %.loopexit ]
  %.sroa.18.0 = phi i32 [ 0, %bb.d ], [ %.sroa.18.2.a, %.loopexit ]
  %1 = phi <4 x i32> [ zeroinitializer, %bb.d ], [ %8, %.loopexit ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 96
  %2 = load <4 x i32>, ptr %i.z, align 4, !tbaa !4
  %3 = add nsw <4 x i32> %2, %1
  store <4 x i32> %3, ptr %i.z, align 4, !tbaa !4
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !4
  %i.ai = add nsw i32 %i.ah, %.sroa.15.0
end_hunk_0
begin_hunk_1_@hypre_StructMatrixInitializeShell:bb.a
  br i1 %i.ao, label %bb.e, label %bb.g

.lr.ph178:                                        ; preds = %.lr.ph178.preheader, %.loopexit
  %.sroa.15.1.a = phi i32 [ 0, %.lr.ph178.preheader ], [ %.sroa.15.2.a, %.loopexit ] ; 2 uses
  %.sroa.18.1.a = phi i32 [ 0, %.lr.ph178.preheader ], [ %.sroa.18.2.a, %.loopexit ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph178.preheader ], [ %indvars.iv.next, %.loopexit ] ; 3 uses
  %4 = phi <4 x i32> [ zeroinitializer, %.lr.ph178.preheader ], [ %8, %.loopexit ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !4
  %i.ar = icmp sgt i32 %i.aq, -1
  br i1 %i.ar, label %.preheader172, label %.loopexit

.preheader172:                                    ; preds = %.lr.ph178
  %i.as = getelementptr inbounds nuw [12 x i8], ptr %i.aa, i64 %indvars.iv ; 2 uses
  %5 = load <2 x i32>, ptr %i.as, align 4, !tbaa !4
  %6 = shufflevector <2 x i32> %5, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %7 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %4, <4 x i32> %6)
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load i32, ptr %i.at, align 4, !tbaa !4  ; 2 uses
  %i.av = sub nsw i32 0, %i.au
  %..2 = call i32 @llvm.smax.i32(i32 %.sroa.15.1.a, i32 %i.av)
  %i.aw = call i32 @llvm.smax.i32(i32 %.sroa.18.1.a, i32 %i.au)
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader172, %.lr.ph178
  %.sroa.15.2.a = phi i32 [ %..2, %.preheader172 ], [ %.sroa.15.1.a, %.lr.ph178 ] ; 2 uses
  %.sroa.18.2.a = phi i32 [ %i.aw, %.preheader172 ], [ %.sroa.18.1.a, %.lr.ph178 ] ; 2 uses
  %8 = phi <4 x i32> [ %7, %.preheader172 ], [ %4, %.lr.ph178 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader171, label %.lr.ph178, !llvm.loop !41
end_hunk_1
begin_hunk_2_@fwrite
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

end_hunk_2
