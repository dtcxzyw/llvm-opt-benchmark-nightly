inline.NumInlined: 242
inline.NumDeleted: 11
begin_hunk_0_@EPZSSubPelBlockMotionSearch:bb.a
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.an = phi i1 [ false, %bb.d ], [ false, %bb.c ], [ %i.am, %bb.e ] ; 3 uses
  %i.ao = add nsw i32 %i.z, %2
  %i.ap = sext i32 %i.ao to i64                   ; 5 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr @listX, i64 %i.ap
end_hunk_0
begin_hunk_1_@EPZSSubPelBlockMotionSearch:bb.a
  %i.bc = sub nsw i32 %i.bb, %i.g
  %i.bd = shl i32 %i.bc, 2                        ; 2 uses
  %i.be = add i32 %i.bd, 160
  %spec.select444 = select i1 %i.an, i32 3, i32 0 ; 2 uses
  %12 = add nuw nsw i32 %spec.select444, 1        ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !4  ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.au, i64 6448
end_hunk_1
begin_hunk_2_@EPZSSubPelBlockMotionSearch:bb.a
.lr.ph:                                           ; preds = %bb.n
  %i.dl = getelementptr inbounds nuw i8, ptr %7, i64 2
  %i.dm = getelementptr inbounds nuw i8, ptr %6, i64 2
  %i.dn = zext nneg i32 %12 to i64
  %i.do = getelementptr inbounds nuw [8 x i8], ptr @computeUniPred, i64 %i.dn
  %i.dp = sext i32 %i.l to i64
  br label %bb.o
end_hunk_2
begin_hunk_3_@EPZSSubPelBlockMotionSearch:bb.a
  %.0243.lcssa403411 = phi i32 [ %.0243.lcssa403, %.critedge ], [ %.1244, %bb.u ], [ %.1244, %bb.x ], [ %.1244, %bb.v ], [ %.0243.lcssa401, %bb.z ], [ %.0243.lcssa401, %bb.aa ], [ %.0243.lcssa401, %bb.ab ], [ %.0243.lcssa401, %bb.ac ], [ %.1244, %bb.w ]
  %i.ge = getelementptr inbounds nuw i8, ptr %7, i64 2
  %i.gf = getelementptr inbounds nuw i8, ptr %6, i64 2
  %i.gg = zext nneg i32 %12 to i64
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr @computeUniPred, i64 %i.gg
  %i.gi = zext nneg i32 %.0240306414 to i64
  %.pre382 = load ptr, ptr @mvbits, align 8, !tbaa !145
end_hunk_3
begin_hunk_4_@EPZSSubPelBlockMotionSearch:bb.a
bb.al:                                            ; preds = %bb.aj, %bb.ak
  %storemerge285 = phi i32 [ 1, %bb.ak ], [ 0, %bb.aj ]
  store i32 %storemerge285, ptr @ref_access_method, align 4, !tbaa !4
  %13 = add nuw nsw i32 %spec.select444, 2        ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !4  ; 2 uses
  %i.ir = icmp slt i32 %i.ie, 5
end_hunk_4
begin_hunk_5_@EPZSSubPelBlockMotionSearch:bb.a
.lr.ph353:                                        ; preds = %bb.al
  %i.is = getelementptr inbounds nuw i8, ptr %7, i64 2
  %i.it = getelementptr inbounds nuw i8, ptr %6, i64 2
  %i.iu = zext nneg i32 %13 to i64
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr @computeUniPred, i64 %i.iu
  %i.iw = sext i32 %i.ie to i64
  br label %bb.am
end_hunk_5
begin_hunk_6_@EPZSSubPelBlockMotionSearch:bb.a
  %.6.lcssa431440 = phi i32 [ %.6.lcssa431, %.critedge327 ], [ %.7, %bb.as ], [ %.7, %bb.av ], [ %.7, %bb.at ], [ %.6.lcssa429, %bb.aw ], [ %.6.lcssa429, %bb.ax ], [ %.6.lcssa429, %bb.ay ], [ %.6.lcssa429, %bb.az ], [ %.7, %bb.au ]
  %i.ll = getelementptr inbounds nuw i8, ptr %7, i64 2
  %i.lm = getelementptr inbounds nuw i8, ptr %6, i64 2
  %i.ln = zext nneg i32 %13 to i64
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr @computeUniPred, i64 %i.ln
  %i.lp = zext nneg i32 %.1241318443 to i64
  %.pre385 = load ptr, ptr @mvbits, align 8, !tbaa !145
end_hunk_6
