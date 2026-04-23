inline.NumInlined: 28
inline.NumDeleted: 13
begin_hunk_0_@make_table:.preheader106.preheader
.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv143.prol = phi i64 [ %indvars.iv.next144.prol, %.lr.ph.prol ], [ %indvars.iv141.lcssa, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.dz = trunc i64 %indvars.iv143.prol to i32
  %6 = sub i32 16, %i.dz
  %7 = shl nuw nsw i32 1, %6
  %i.ea = trunc nuw nsw i32 %7 to i16
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv143.prol
  store i16 %i.ea, ptr %i.eb, align 2, !tbaa !8
  %indvars.iv.next144.prol = add nuw nsw i64 %indvars.iv143.prol, 1 ; 2 uses
end_hunk_0
begin_hunk_1_@make_table:.preheader106.preheader

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv143 = phi i64 [ %indvars.iv.next144.3, %.lr.ph ], [ %indvars.iv143.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.ey = trunc i64 %indvars.iv143 to i32
  %8 = sub i32 16, %i.ey
  %9 = shl nuw nsw i32 1, %8
  %i.ez = trunc nuw nsw i32 %9 to i16
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv143
  store i16 %i.ez, ptr %i.fa, align 2, !tbaa !8
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1 ; 2 uses
  %i.fb = trunc i64 %indvars.iv.next144 to i32
  %10 = sub i32 16, %i.fb
  %11 = shl nuw nsw i32 1, %10
  %i.fc = trunc nuw nsw i32 %11 to i16
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next144
  store i16 %i.fc, ptr %i.fd, align 2, !tbaa !8
  %indvars.iv.next144.1 = add nuw nsw i64 %indvars.iv143, 2 ; 2 uses
  %i.fe = trunc i64 %indvars.iv.next144.1 to i32
  %12 = sub i32 16, %i.fe
  %13 = shl nuw nsw i32 1, %12
  %i.ff = trunc nuw nsw i32 %13 to i16
  %i.fg = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next144.1
  store i16 %i.ff, ptr %i.fg, align 2, !tbaa !8
  %indvars.iv.next144.2 = add nuw nsw i64 %indvars.iv143, 3 ; 2 uses
  %i.fh = trunc i64 %indvars.iv.next144.2 to i32
  %14 = sub i32 16, %i.fh
  %15 = shl nuw nsw i32 1, %14
  %i.fi = trunc nuw nsw i32 %15 to i16
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next144.2
  store i16 %i.fi, ptr %i.fj, align 2, !tbaa !8
  %indvars.iv.next144.3 = add nuw nsw i64 %indvars.iv143, 4 ; 2 uses
end_hunk_1
begin_hunk_2_@make_table:.preheader106.preheader
  br i1 %.not99.7, label %.loopexit104, label %.lr.ph115, !llvm.loop !85

.loopexit104:                                     ; preds = %.lr.ph115.prol.loopexit, %.lr.ph115, %middle.block, %vec.epilog.middle.block, %bb.b, %._crit_edge
  %16 = xor i32 %3, 15
  %17 = shl nuw nsw i32 1, %16
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 2074 ; 2 uses
  br label %bb.c
end_hunk_2
begin_hunk_3_@make_table:.preheader106.preheader
bb.h:                                             ; preds = %bb.g, %.lr.ph124
  %i.ir = phi i16 [ %i.iq, %bb.g ], [ %i.ik, %.lr.ph124 ]
  %.2 = phi i32 [ %i.ip, %bb.g ], [ %.183121, %.lr.ph124 ] ; 2 uses
  %i.is = and i32 %.090119, %17
  %.not102 = icmp eq i32 %i.is, 0
  %i.it = zext i16 %i.ir to i64
  %. = select i1 %.not102, ptr %i.hf, ptr %i.hg
end_hunk_3
