inline.NumInlined: 3
begin_hunk_0_@QRiterate:bb.a
  br i1 %i.jd, label %.critedge2.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader151.25, %.preheader151.31, %.preheader151.24, %.preheader151.38, %.preheader151.23, %.preheader151.33, %.preheader151.22, %.preheader151.39, %.preheader151.21, %.preheader151.30, %.preheader151.20, %.preheader151.40, %.preheader151.19, %.preheader151.35, %.preheader151.18, %.preheader151.41, %.preheader151.17, %.preheader151.29, %.preheader151.16, %.preheader151.42, %.preheader151.15, %.preheader151.32, %.preheader151.14, %.preheader151.43, %.preheader151.13, %.preheader151.28, %.preheader151.12, %.preheader151.44, %.preheader151.11, %.preheader151.36, %.preheader151.10, %.preheader151.45, %.preheader151.9, %.preheader151.27, %.preheader151.8, %.preheader151.46, %.preheader151.7, %.preheader151.34, %.preheader151.6, %.preheader151.47, %.preheader151.5, %.preheader151.26, %.preheader151.4, %.preheader151.48, %.preheader151.3, %.preheader151.37, %.preheader151.2, %.preheader151.49, %.preheader151.1, %.preheader151.preheader
  %.0127.lcssa.ph = phi i64 [ 25, %.preheader151.25 ], [ 19, %.preheader151.31 ], [ 26, %.preheader151.24 ], [ 12, %.preheader151.38 ], [ 27, %.preheader151.23 ], [ 17, %.preheader151.33 ], [ 28, %.preheader151.22 ], [ 11, %.preheader151.39 ], [ 29, %.preheader151.21 ], [ 20, %.preheader151.30 ], [ 30, %.preheader151.20 ], [ 10, %.preheader151.40 ], [ 31, %.preheader151.19 ], [ 15, %.preheader151.35 ], [ 32, %.preheader151.18 ], [ 9, %.preheader151.41 ], [ 33, %.preheader151.17 ], [ 21, %.preheader151.29 ], [ 34, %.preheader151.16 ], [ 8, %.preheader151.42 ], [ 35, %.preheader151.15 ], [ 18, %.preheader151.32 ], [ 36, %.preheader151.14 ], [ 7, %.preheader151.43 ], [ 37, %.preheader151.13 ], [ 22, %.preheader151.28 ], [ 38, %.preheader151.12 ], [ 6, %.preheader151.44 ], [ 39, %.preheader151.11 ], [ 14, %.preheader151.36 ], [ 40, %.preheader151.10 ], [ 5, %.preheader151.45 ], [ 41, %.preheader151.9 ], [ 23, %.preheader151.27 ], [ 42, %.preheader151.8 ], [ 4, %.preheader151.46 ], [ 43, %.preheader151.7 ], [ 16, %.preheader151.34 ], [ 44, %.preheader151.6 ], [ 3, %.preheader151.47 ], [ 45, %.preheader151.5 ], [ 24, %.preheader151.26 ], [ 46, %.preheader151.4 ], [ 2, %.preheader151.48 ], [ 47, %.preheader151.3 ], [ 13, %.preheader151.37 ], [ 48, %.preheader151.2 ], [ 1, %.preheader151.49 ], [ 49, %.preheader151.1 ], [ 50, %.preheader151.preheader ] ; 6 uses
  %2 = phi i32 [ 25, %.preheader151.25 ], [ 19, %.preheader151.31 ], [ 26, %.preheader151.24 ], [ 12, %.preheader151.38 ], [ 27, %.preheader151.23 ], [ 17, %.preheader151.33 ], [ 28, %.preheader151.22 ], [ 11, %.preheader151.39 ], [ 29, %.preheader151.21 ], [ 20, %.preheader151.30 ], [ 30, %.preheader151.20 ], [ 10, %.preheader151.40 ], [ 31, %.preheader151.19 ], [ 15, %.preheader151.35 ], [ 32, %.preheader151.18 ], [ 9, %.preheader151.41 ], [ 33, %.preheader151.17 ], [ 21, %.preheader151.29 ], [ 34, %.preheader151.16 ], [ 8, %.preheader151.42 ], [ 35, %.preheader151.15 ], [ 18, %.preheader151.32 ], [ 36, %.preheader151.14 ], [ 7, %.preheader151.43 ], [ 37, %.preheader151.13 ], [ 22, %.preheader151.28 ], [ 38, %.preheader151.12 ], [ 6, %.preheader151.44 ], [ 39, %.preheader151.11 ], [ 14, %.preheader151.36 ], [ 40, %.preheader151.10 ], [ 5, %.preheader151.45 ], [ 41, %.preheader151.9 ], [ 23, %.preheader151.27 ], [ 42, %.preheader151.8 ], [ 4, %.preheader151.46 ], [ 43, %.preheader151.7 ], [ 16, %.preheader151.34 ], [ 44, %.preheader151.6 ], [ 3, %.preheader151.47 ], [ 45, %.preheader151.5 ], [ 24, %.preheader151.26 ], [ 46, %.preheader151.4 ], [ 2, %.preheader151.48 ], [ 47, %.preheader151.3 ], [ 13, %.preheader151.37 ], [ 48, %.preheader151.2 ], [ 1, %.preheader151.49 ], [ 49, %.preheader151.1 ], [ 50, %.preheader151.preheader ] ; 3 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv171 = phi i64 [ %.0127.lcssa.ph, %.lr.ph.preheader ], [ %indvars.iv.next172, %bb.e ] ; 6 uses
  %i.je = getelementptr [8 x i8], ptr %0, i64 %indvars.iv171
  %i.jf = getelementptr i8, ptr %i.je, i64 -8
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !10
end_hunk_0
begin_hunk_1_@QRiterate:bb.a
  %i.jl = trunc nuw nsw i64 %indvars.iv171 to i32 ; 2 uses
  %sext = shl i64 %indvars.iv171, 32
  %i.jm = ashr exact i64 %sext, 32
  %i.jn = icmp sgt i32 %2, %i.jl
  br i1 %i.jn, label %.lr.ph166.preheader, label %.backedge

.lr.ph166.preheader:                              ; preds = %bb.e, %.critedge2
  %i.jo = phi i64 [ %i.jm, %.critedge2 ], [ 0, %bb.e ] ; 12 uses
  %.1129.lcssa.ph190 = phi i32 [ %i.jl, %.critedge2 ], [ 0, %bb.e ]
  %.in = add nsw i32 %2, -1
  %i.jp = zext i32 %.in to i64                    ; 4 uses
  %i.jq = getelementptr inbounds [8 x i8], ptr %0, i64 %i.jo ; 2 uses
  %i.jr = getelementptr i8, ptr %i.jq, i64 8
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !10
end_hunk_1
begin_hunk_2_@QRiterate:bb.a
  %i.jv = load ptr, ptr %i.jq, align 8, !tbaa !10
  %i.jw = getelementptr inbounds [8 x i8], ptr %i.jv, i64 %i.jo
  %i.jx = load double, ptr %i.jw, align 8, !tbaa !8
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0127.lcssa.ph
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !10 ; 2 uses
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %.0127.lcssa.ph
  %i.kb = load double, ptr %i.ka, align 8, !tbaa !8 ; 2 uses
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %i.jp
  %i.kd = load double, ptr %i.kc, align 8, !tbaa !8 ; 2 uses
  %i.ke = fmul double %i.kd, %i.kd                ; 2 uses
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.jp
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !10
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.kg, i64 %i.jp
  %i.ki = load double, ptr %i.kh, align 8, !tbaa !8
  %i.kj = fsub double %i.ki, %i.kb
  %i.kk = fmul double %i.kj, 5.000000e-01         ; 4 uses
end_hunk_2
begin_hunk_3_@QRiterate:bb.a
  %.0125164 = phi double [ %i.ju, %.lr.ph166.preheader ], [ %.1126, %bb.l ] ; 5 uses
  %i.kx = add i32 %i.kw, %indvar
  %i.ky = sext i32 %i.kx to i64
  %smin200 = tail call i64 @llvm.smin.i64(i64 %i.ky, i64 %.0127.lcssa.ph)
  %smax201 = tail call i64 @llvm.smax.i64(i64 %i.jo, i64 %smin200)
  %smax202 = tail call i64 @llvm.smax.i64(i64 %smax201, i64 %indvars.iv174)
  %i.kz = add i64 %smax202, 1
end_hunk_3
begin_hunk_4_@QRiterate:bb.a
  %i.lb = shl i64 %smax, 3                        ; 2 uses
  %i.lc = add i32 %i.ku, %indvar
  %i.ld = sext i32 %i.lc to i64
  %smin = tail call i64 @llvm.smin.i64(i64 %i.ld, i64 %.0127.lcssa.ph)
  %smax194 = tail call i64 @llvm.smax.i64(i64 %i.jo, i64 %smin)
  %smax195 = tail call i64 @llvm.smax.i64(i64 %smax194, i64 %indvars.iv174)
  %i.le = shl i64 %smax195, 3                     ; 2 uses
end_hunk_4
begin_hunk_5_@QRiterate:bb.a
  %i.lv = tail call i32 @llvm.smax.i32(i32 %i.lu, i32 %.1129.lcssa.ph190)
  %i.lw = add nsw i64 %indvars.iv181, 2           ; 2 uses
  %i.lx = trunc nsw i64 %i.lw to i32
  %i.ly = tail call i32 @llvm.smin.i32(i32 %2, i32 %i.lx) ; 3 uses
  %.not157 = icmp sgt i32 %i.lv, %i.ly
  br i1 %.not157, label %._crit_edge, label %.lr.ph159

end_hunk_5
begin_hunk_6_@QRiterate:bb.a
  br i1 %exitcond.not.i, label %ApplyRGivens.exit, label %bb.j, !llvm.loop !13

ApplyRGivens.exit:                                ; preds = %bb.j
  %i.nt = icmp slt i64 %indvars.iv181, %i.jp
  br i1 %i.nt, label %bb.k, label %bb.l

bb.k:                                             ; preds = %ApplyRGivens.exit
end_hunk_6
begin_hunk_7_@QRiterate:bb.a
  %.1126 = phi double [ %i.ob, %bb.k ], [ %.0125164, %ApplyRGivens.exit ]
  %.1 = phi double [ %i.nx, %bb.k ], [ %.0165, %ApplyRGivens.exit ]
  %indvars.iv.next175 = add nsw i64 %indvars.iv174, 1
  %exitcond184.not = icmp eq i64 %indvars.iv.next182, %.0127.lcssa.ph
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond184.not, label %.backedge, label %.lr.ph166, !llvm.loop !27

end_hunk_7
