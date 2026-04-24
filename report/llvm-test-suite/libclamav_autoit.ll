inline.NumInlined: 47
inline.NumDeleted: 9
begin_hunk_0
; Function Attrs: nounwind uwtable
define dso_local range(i32 -123, 2) i32 @cli_scanautoit(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [600 x i8], align 16              ; 32 uses
  %i.b = alloca [1024 x i8], align 16             ; 9 uses
  %i.c = alloca [300 x i8], align 16              ; 33 uses
  %i.d = alloca [1024 x i8], align 16             ; 9 uses
end_hunk_0
begin_hunk_1_@cli_scanautoit:bb.a
.lr.ph.preheader.i.i49:                           ; preds = %bb.dj
  %i.amp = call i32 @llvm.umin.i32(i32 %i.amb, i32 20) ; 2 uses
  %i.amq = zext nneg i32 %i.amp to i64
  br label %.lr.ph.i.i50

.lr.ph.i.i50:                                     ; preds = %bb.dm, %.lr.ph.preheader.i.i49
  %indvars.iv.i.i51 = phi i64 [ 0, %.lr.ph.preheader.i.i49 ], [ %indvars.iv.next.i.i54, %bb.dm ] ; 2 uses
  %.045.i.i52 = phi i32 [ 0, %.lr.ph.preheader.i.i49 ], [ %i.amy, %bb.dm ]
  %i.amr = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i.i51 ; 2 uses
  %i.ams = load i8, ptr %i.amr, align 2, !tbaa !8
  %.not43.i.i53 = icmp eq i8 %i.ams, 0
  br i1 %.not43.i.i53, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %.lr.ph.i.i50
  %i.amt = getelementptr inbounds nuw i8, ptr %i.amr, i64 1
  %i.amu = load i8, ptr %i.amt, align 1, !tbaa !8
  %i.amv = icmp eq i8 %i.amu, 0
  %i.amw = zext i1 %i.amv to i32
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %.lr.ph.i.i50
  %i.amx = phi i32 [ 0, %.lr.ph.i.i50 ], [ %i.amw, %bb.dl ]
  %i.amy = add i32 %i.amx, %.045.i.i52            ; 2 uses
  %indvars.iv.next.i.i54 = add nuw nsw i64 %indvars.iv.i.i51, 2 ; 2 uses
  %3 = icmp samesign ult i64 %indvars.iv.next.i.i54, %i.amq
  br i1 %3, label %.lr.ph.i.i50, label %._crit_edge.i.i55, !llvm.loop !36

._crit_edge.i.i55:                                ; preds = %bb.dm
  %i.amz = shl i32 %i.amy, 2
  %.not42.i.i56 = icmp ult i32 %i.amz, %i.amp
  br i1 %.not42.i.i56, label %u2a.exit.i48, label %.lr.ph49.preheader.i.i41

end_hunk_1
begin_hunk_2_@cli_scanautoit:bb.a
.lr.ph.preheader.i327.i:                          ; preds = %bb.du
  %i.apt = call i32 @llvm.umin.i32(i32 %i.apa, i32 20) ; 2 uses
  %i.apu = zext nneg i32 %i.apt to i64
  br label %.lr.ph.i328.i

.lr.ph.i328.i:                                    ; preds = %bb.dx, %.lr.ph.preheader.i327.i
  %indvars.iv.i329.i = phi i64 [ 0, %.lr.ph.preheader.i327.i ], [ %indvars.iv.next.i332.i, %bb.dx ] ; 2 uses
  %.045.i330.i = phi i32 [ 0, %.lr.ph.preheader.i327.i ], [ %i.aqc, %bb.dx ]
  %i.apv = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i329.i ; 2 uses
  %i.apw = load i8, ptr %i.apv, align 2, !tbaa !8
  %.not43.i331.i = icmp eq i8 %i.apw, 0
  br i1 %.not43.i331.i, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %.lr.ph.i328.i
  %i.apx = getelementptr inbounds nuw i8, ptr %i.apv, i64 1
  %i.apy = load i8, ptr %i.apx, align 1, !tbaa !8
  %i.apz = icmp eq i8 %i.apy, 0
  %i.aqa = zext i1 %i.apz to i32
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %.lr.ph.i328.i
  %i.aqb = phi i32 [ 0, %.lr.ph.i328.i ], [ %i.aqa, %bb.dw ]
  %i.aqc = add i32 %i.aqb, %.045.i330.i           ; 2 uses
  %indvars.iv.next.i332.i = add nuw nsw i64 %indvars.iv.i329.i, 2 ; 2 uses
  %4 = icmp samesign ult i64 %indvars.iv.next.i332.i, %i.apu
  br i1 %4, label %.lr.ph.i328.i, label %._crit_edge.i333.i, !llvm.loop !36

._crit_edge.i333.i:                               ; preds = %bb.dx
  %i.aqd = shl i32 %i.aqc, 2
  %.not42.i334.i = icmp ult i32 %i.aqd, %i.apt
  br i1 %.not42.i334.i, label %u2a.exit344.i, label %.lr.ph49.preheader.i335.i

end_hunk_2
