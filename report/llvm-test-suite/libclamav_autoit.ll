inline.NumInlined: 47
inline.NumDeleted: 9
begin_hunk_0
; Function Attrs: nounwind uwtable
define dso_local range(i32 -123, 2) i32 @cli_scanautoit(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [600 x i8], align 16              ; 36 uses
  %i.b = alloca [1024 x i8], align 16             ; 9 uses
  %i.c = alloca [300 x i8], align 16              ; 33 uses
  %i.d = alloca [1024 x i8], align 16             ; 9 uses
end_hunk_0
begin_hunk_1_@cli_scanautoit:bb.a
.lr.ph.preheader.i.i49:                           ; preds = %bb.dj
  %i.amp = call i32 @llvm.umin.i32(i32 %i.amb, i32 20) ; 2 uses
  %i.amq = zext nneg i32 %i.amp to i64
  %3 = add nsw i64 %i.amq, -2                     ; 3 uses
  %4 = lshr exact i64 %3, 1
  %5 = add nuw i64 %4, 1                          ; 2 uses
  %6 = icmp eq i64 %3, 0
  br i1 %6, label %.lr.ph.i.i50.epil.preheader, label %.lr.ph.preheader.i.i49.new

.lr.ph.preheader.i.i49.new:                       ; preds = %.lr.ph.preheader.i.i49
  %unroll_iter = and i64 %5, -2
  br label %.lr.ph.i.i50

.lr.ph.i.i50:                                     ; preds = %bb.dm, %.lr.ph.preheader.i.i49.new
  %indvars.iv.i.i51 = phi i64 [ 0, %.lr.ph.preheader.i.i49.new ], [ %indvars.iv.next.i.i54.1, %bb.dm ] ; 3 uses
  %.045.i.i52 = phi i32 [ 0, %.lr.ph.preheader.i.i49.new ], [ %i.amy, %bb.dm ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i49.new ], [ %indvars.iv.next.i.i54, %bb.dm ]
  %i.amr = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i.i51 ; 2 uses
  %i.ams = load i8, ptr %i.amr, align 4, !tbaa !8
  %.not43.i.i53 = icmp eq i8 %i.ams, 0
  br i1 %.not43.i.i53, label %.lr.ph.i.i50.1, label %7

7:                                                ; preds = %.lr.ph.i.i50
  %8 = getelementptr inbounds nuw i8, ptr %i.amr, i64 1
  %9 = load i8, ptr %8, align 1, !tbaa !8
  %10 = icmp eq i8 %9, 0
  %11 = zext i1 %10 to i32
  br label %.lr.ph.i.i50.1

.lr.ph.i.i50.1:                                   ; preds = %7, %.lr.ph.i.i50
  %12 = phi i32 [ 0, %.lr.ph.i.i50 ], [ %11, %7 ]
  %13 = add i32 %12, %.045.i.i52
  %14 = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i.i51 ; 2 uses
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 2
  %16 = load i8, ptr %15, align 2, !tbaa !8
  %.not43.i.i53.1 = icmp eq i8 %16, 0
  br i1 %.not43.i.i53.1, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %.lr.ph.i.i50.1
  %i.amt = getelementptr inbounds nuw i8, ptr %14, i64 3
  %i.amu = load i8, ptr %i.amt, align 1, !tbaa !8
  %i.amv = icmp eq i8 %i.amu, 0
  %i.amw = zext i1 %i.amv to i32
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %.lr.ph.i.i50.1
  %i.amx = phi i32 [ 0, %.lr.ph.i.i50.1 ], [ %i.amw, %bb.dl ]
  %i.amy = add i32 %i.amx, %13                    ; 3 uses
  %indvars.iv.next.i.i54.1 = add nuw nsw i64 %indvars.iv.i.i51, 4 ; 2 uses
  %indvars.iv.next.i.i54 = add nuw nsw i64 %niter, 2 ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %indvars.iv.next.i.i54, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.i.i55.unr-lcssa, label %.lr.ph.i.i50, !llvm.loop !36

._crit_edge.i.i55.unr-lcssa:                      ; preds = %bb.dm
  %17 = and i64 %3, 2
  %lcmp.mod.not.not = icmp eq i64 %17, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i50.epil.preheader, label %._crit_edge.i.i55

.lr.ph.i.i50.epil.preheader:                      ; preds = %._crit_edge.i.i55.unr-lcssa, %.lr.ph.preheader.i.i49
  %indvars.iv.i.i51.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i49 ], [ %indvars.iv.next.i.i54.1, %._crit_edge.i.i55.unr-lcssa ]
  %.045.i.i52.epil.init = phi i32 [ 0, %.lr.ph.preheader.i.i49 ], [ %i.amy, %._crit_edge.i.i55.unr-lcssa ]
  %lcmp.mod789 = trunc i64 %5 to i1
  call void @llvm.assume(i1 %lcmp.mod789)
  %18 = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i.i51.epil.init ; 2 uses
  %19 = load i8, ptr %18, align 2, !tbaa !8
  %.not43.i.i53.epil = icmp eq i8 %19, 0
  br i1 %.not43.i.i53.epil, label %._crit_edge.i.i55.epilog-lcssa, label %20

20:                                               ; preds = %.lr.ph.i.i50.epil.preheader
  %21 = getelementptr inbounds nuw i8, ptr %18, i64 1
  %22 = load i8, ptr %21, align 1, !tbaa !8
  %23 = icmp eq i8 %22, 0
  %24 = zext i1 %23 to i32
  br label %._crit_edge.i.i55.epilog-lcssa

._crit_edge.i.i55.epilog-lcssa:                   ; preds = %20, %.lr.ph.i.i50.epil.preheader
  %25 = phi i32 [ 0, %.lr.ph.i.i50.epil.preheader ], [ %24, %20 ]
  %26 = add i32 %25, %.045.i.i52.epil.init
  br label %._crit_edge.i.i55

._crit_edge.i.i55:                                ; preds = %._crit_edge.i.i55.unr-lcssa, %._crit_edge.i.i55.epilog-lcssa
  %.lcssa726 = phi i32 [ %i.amy, %._crit_edge.i.i55.unr-lcssa ], [ %26, %._crit_edge.i.i55.epilog-lcssa ]
  %i.amz = shl i32 %.lcssa726, 2
  %.not42.i.i56 = icmp ult i32 %i.amz, %i.amp
  br i1 %.not42.i.i56, label %u2a.exit.i48, label %.lr.ph49.preheader.i.i41

end_hunk_1
begin_hunk_2_@cli_scanautoit:bb.a
.lr.ph.preheader.i327.i:                          ; preds = %bb.du
  %i.apt = call i32 @llvm.umin.i32(i32 %i.apa, i32 20) ; 2 uses
  %i.apu = zext nneg i32 %i.apt to i64
  %27 = add nsw i64 %i.apu, -2                    ; 3 uses
  %28 = lshr exact i64 %27, 1
  %29 = add nuw i64 %28, 1                        ; 2 uses
  %30 = icmp eq i64 %27, 0
  br i1 %30, label %.lr.ph.i328.i.epil.preheader, label %.lr.ph.preheader.i327.i.new

.lr.ph.preheader.i327.i.new:                      ; preds = %.lr.ph.preheader.i327.i
  %unroll_iter800 = and i64 %29, -2
  br label %.lr.ph.i328.i

.lr.ph.i328.i:                                    ; preds = %bb.dx, %.lr.ph.preheader.i327.i.new
  %indvars.iv.i329.i = phi i64 [ 0, %.lr.ph.preheader.i327.i.new ], [ %indvars.iv.next.i332.i.1, %bb.dx ] ; 3 uses
  %.045.i330.i = phi i32 [ 0, %.lr.ph.preheader.i327.i.new ], [ %i.aqc, %bb.dx ]
  %niter801 = phi i64 [ 0, %.lr.ph.preheader.i327.i.new ], [ %indvars.iv.next.i332.i, %bb.dx ]
  %i.apv = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i329.i ; 2 uses
  %i.apw = load i8, ptr %i.apv, align 4, !tbaa !8
  %.not43.i331.i = icmp eq i8 %i.apw, 0
  br i1 %.not43.i331.i, label %.lr.ph.i328.i.1, label %31

31:                                               ; preds = %.lr.ph.i328.i
  %32 = getelementptr inbounds nuw i8, ptr %i.apv, i64 1
  %33 = load i8, ptr %32, align 1, !tbaa !8
  %34 = icmp eq i8 %33, 0
  %35 = zext i1 %34 to i32
  br label %.lr.ph.i328.i.1

.lr.ph.i328.i.1:                                  ; preds = %31, %.lr.ph.i328.i
  %36 = phi i32 [ 0, %.lr.ph.i328.i ], [ %35, %31 ]
  %37 = add i32 %36, %.045.i330.i
  %38 = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i329.i ; 2 uses
  %39 = getelementptr inbounds nuw i8, ptr %38, i64 2
  %40 = load i8, ptr %39, align 2, !tbaa !8
  %.not43.i331.i.1 = icmp eq i8 %40, 0
  br i1 %.not43.i331.i.1, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %.lr.ph.i328.i.1
  %i.apx = getelementptr inbounds nuw i8, ptr %38, i64 3
  %i.apy = load i8, ptr %i.apx, align 1, !tbaa !8
  %i.apz = icmp eq i8 %i.apy, 0
  %i.aqa = zext i1 %i.apz to i32
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %.lr.ph.i328.i.1
  %i.aqb = phi i32 [ 0, %.lr.ph.i328.i.1 ], [ %i.aqa, %bb.dw ]
  %i.aqc = add i32 %i.aqb, %37                    ; 3 uses
  %indvars.iv.next.i332.i.1 = add nuw nsw i64 %indvars.iv.i329.i, 4 ; 2 uses
  %indvars.iv.next.i332.i = add nuw nsw i64 %niter801, 2 ; 2 uses
  %niter801.ncmp.1.not = icmp eq i64 %indvars.iv.next.i332.i, %unroll_iter800
  br i1 %niter801.ncmp.1.not, label %._crit_edge.i333.i.unr-lcssa, label %.lr.ph.i328.i, !llvm.loop !36

._crit_edge.i333.i.unr-lcssa:                     ; preds = %bb.dx
  %41 = and i64 %27, 2
  %lcmp.mod797.not.not = icmp eq i64 %41, 0
  br i1 %lcmp.mod797.not.not, label %.lr.ph.i328.i.epil.preheader, label %._crit_edge.i333.i

.lr.ph.i328.i.epil.preheader:                     ; preds = %._crit_edge.i333.i.unr-lcssa, %.lr.ph.preheader.i327.i
  %indvars.iv.i329.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i327.i ], [ %indvars.iv.next.i332.i.1, %._crit_edge.i333.i.unr-lcssa ]
  %.045.i330.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i327.i ], [ %i.aqc, %._crit_edge.i333.i.unr-lcssa ]
  %lcmp.mod799 = trunc i64 %29 to i1
  call void @llvm.assume(i1 %lcmp.mod799)
  %42 = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i329.i.epil.init ; 2 uses
  %43 = load i8, ptr %42, align 2, !tbaa !8
  %.not43.i331.i.epil = icmp eq i8 %43, 0
  br i1 %.not43.i331.i.epil, label %._crit_edge.i333.i.epilog-lcssa, label %44

44:                                               ; preds = %.lr.ph.i328.i.epil.preheader
  %45 = getelementptr inbounds nuw i8, ptr %42, i64 1
  %46 = load i8, ptr %45, align 1, !tbaa !8
  %47 = icmp eq i8 %46, 0
  %48 = zext i1 %47 to i32
  br label %._crit_edge.i333.i.epilog-lcssa

._crit_edge.i333.i.epilog-lcssa:                  ; preds = %44, %.lr.ph.i328.i.epil.preheader
  %49 = phi i32 [ 0, %.lr.ph.i328.i.epil.preheader ], [ %48, %44 ]
  %50 = add i32 %49, %.045.i330.i.epil.init
  br label %._crit_edge.i333.i

._crit_edge.i333.i:                               ; preds = %._crit_edge.i333.i.unr-lcssa, %._crit_edge.i333.i.epilog-lcssa
  %.lcssa727 = phi i32 [ %i.aqc, %._crit_edge.i333.i.unr-lcssa ], [ %50, %._crit_edge.i333.i.epilog-lcssa ]
  %i.aqd = shl i32 %.lcssa727, 2
  %.not42.i334.i = icmp ult i32 %i.aqd, %i.apt
  br i1 %.not42.i334.i, label %u2a.exit344.i, label %.lr.ph49.preheader.i335.i

end_hunk_2
