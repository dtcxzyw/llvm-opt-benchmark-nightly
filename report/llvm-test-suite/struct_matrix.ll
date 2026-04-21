inline.NumInlined: 4
begin_hunk_0_@hypre_StructMatrixInitializeShell:bb.a
  br label %.lr.ph178

.preheader171:                                    ; preds = %.loopexit, %bb.d
  %.sroa.0.0 = phi i32 [ 0, %bb.d ], [ %.sroa.0.2, %.loopexit ]
  %.sroa.6.0 = phi i32 [ 0, %bb.d ], [ %.sroa.6.2, %.loopexit ]
  %.sroa.9.0 = phi i32 [ 0, %bb.d ], [ %.sroa.9.2, %.loopexit ]
  %.sroa.12.0 = phi i32 [ 0, %bb.d ], [ %.sroa.12.2, %.loopexit ]
  %.sroa.15.0 = phi i32 [ 0, %bb.d ], [ %.sroa.15.2, %.loopexit ]
  %.sroa.18.0 = phi i32 [ 0, %bb.d ], [ %.sroa.18.2, %.loopexit ]
  %1 = load i32, ptr %i.z, align 4, !tbaa !4
  %2 = add nsw i32 %1, %.sroa.0.0
  store i32 %2, ptr %i.z, align 4, !tbaa !4
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 3 uses
  %3 = load i32, ptr %i.ae, align 4, !tbaa !4
  %4 = add nsw i32 %3, %.sroa.6.0
  store i32 %4, ptr %i.ae, align 4, !tbaa !4
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %5 = load i32, ptr %i.af, align 4, !tbaa !4
  %6 = add nsw i32 %5, %.sroa.9.0
  store i32 %6, ptr %i.af, align 4, !tbaa !4
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %8 = load i32, ptr %7, align 4, !tbaa !4
  %9 = add nsw i32 %8, %.sroa.12.0
  store i32 %9, ptr %7, align 4, !tbaa !4
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !4
  %i.ai = add nsw i32 %i.ah, %.sroa.15.0
end_hunk_0
begin_hunk_1_@hypre_StructMatrixInitializeShell:bb.a
  br i1 %i.ao, label %bb.e, label %bb.g

.lr.ph178:                                        ; preds = %.lr.ph178.preheader, %.loopexit
  %.sroa.0.1 = phi i32 [ 0, %.lr.ph178.preheader ], [ %.sroa.0.2, %.loopexit ] ; 2 uses
  %.sroa.6.1 = phi i32 [ 0, %.lr.ph178.preheader ], [ %.sroa.6.2, %.loopexit ] ; 2 uses
  %.sroa.9.1 = phi i32 [ 0, %.lr.ph178.preheader ], [ %.sroa.9.2, %.loopexit ] ; 2 uses
  %.sroa.12.1 = phi i32 [ 0, %.lr.ph178.preheader ], [ %.sroa.12.2, %.loopexit ] ; 2 uses
  %.sroa.15.1 = phi i32 [ 0, %.lr.ph178.preheader ], [ %.sroa.15.2, %.loopexit ] ; 2 uses
  %.sroa.18.1 = phi i32 [ 0, %.lr.ph178.preheader ], [ %.sroa.18.2, %.loopexit ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph178.preheader ], [ %indvars.iv.next, %.loopexit ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !4
  %i.ar = icmp sgt i32 %i.aq, -1
  br i1 %i.ar, label %.preheader172, label %.loopexit

.preheader172:                                    ; preds = %.lr.ph178
  %i.as = getelementptr inbounds nuw [12 x i8], ptr %i.aa, i64 %indvars.iv ; 3 uses
  %10 = load i32, ptr %i.as, align 4, !tbaa !4    ; 2 uses
  %11 = sub nsw i32 0, %10
  %. = call i32 @llvm.smax.i32(i32 %.sroa.0.1, i32 %11)
  %12 = call i32 @llvm.smax.i32(i32 %.sroa.6.1, i32 %10)
  %13 = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %14 = load i32, ptr %13, align 4, !tbaa !4      ; 2 uses
  %15 = sub nsw i32 0, %14
  %..1 = call i32 @llvm.smax.i32(i32 %.sroa.9.1, i32 %15)
  %16 = call i32 @llvm.smax.i32(i32 %.sroa.12.1, i32 %14)
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load i32, ptr %i.at, align 4, !tbaa !4  ; 2 uses
  %i.av = sub nsw i32 0, %i.au
  %..2 = call i32 @llvm.smax.i32(i32 %.sroa.15.1, i32 %i.av)
  %i.aw = call i32 @llvm.smax.i32(i32 %.sroa.18.1, i32 %i.au)
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader172, %.lr.ph178
  %.sroa.0.2 = phi i32 [ %., %.preheader172 ], [ %.sroa.0.1, %.lr.ph178 ] ; 2 uses
  %.sroa.6.2 = phi i32 [ %12, %.preheader172 ], [ %.sroa.6.1, %.lr.ph178 ] ; 2 uses
  %.sroa.9.2 = phi i32 [ %..1, %.preheader172 ], [ %.sroa.9.1, %.lr.ph178 ] ; 2 uses
  %.sroa.12.2 = phi i32 [ %16, %.preheader172 ], [ %.sroa.12.1, %.lr.ph178 ] ; 2 uses
  %.sroa.15.2 = phi i32 [ %..2, %.preheader172 ], [ %.sroa.15.1, %.lr.ph178 ] ; 2 uses
  %.sroa.18.2 = phi i32 [ %i.aw, %.preheader172 ], [ %.sroa.18.1, %.lr.ph178 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader171, label %.lr.ph178, !llvm.loop !41
end_hunk_1
begin_hunk_2_@fwrite
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

end_hunk_2
