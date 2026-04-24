inline.NumInlined: 999
inline.NumDeleted: 129
begin_hunk_0_@bary_mul_toom3:bb.a
  %i.mi = getelementptr [4 x i8], ptr %i.ab, i64 %i.ly
  store i32 %i.mh, ptr %i.mi, align 4, !tbaa !7
  %i.mj = ashr i64 %i.mg, 32                      ; 3 uses
  %i.mk = add nuw i64 %.06278.i.i683, 2           ; 2 uses
  %niter3408.next.1 = add i64 %niter3408, 2       ; 2 uses
  %niter3408.ncmp.1 = icmp eq i64 %niter3408.next.1, %unroll_iter3407
  br i1 %niter3408.ncmp.1, label %._crit_edge.i.i686.loopexit.unr-lcssa, label %.lr.ph.i.i682, !llvm.loop !48
end_hunk_0
begin_hunk_1_@bary_mul_toom3:bb.a
  store i32 %i.asg, ptr %i.ash, align 4, !tbaa !7
  %i.asi = ashr i64 %i.asf, 32                    ; 2 uses
  %i.asj = add nuw i64 %.06278.i.i1115, 2         ; 2 uses
  %niter3533.next.1 = add i64 %niter3533, 2       ; 2 uses
  %niter3533.ncmp.1 = icmp eq i64 %niter3533.next.1, %i.j
  br i1 %niter3533.ncmp.1, label %.lr.ph.i.i1114.epil, label %.lr.ph.i.i1114, !llvm.loop !48

end_hunk_1
begin_hunk_2_@bary_mul_toom3:bb.a
  store i32 %i.auf, ptr %i.aug, align 4, !tbaa !7
  %i.auh = lshr i64 %i.aue, 32                    ; 2 uses
  %i.aui = add nuw i64 %.05779.i.i1166, 2         ; 2 uses
  %niter3526.next.1 = add i64 %niter3526, 2       ; 2 uses
  %niter3526.ncmp.1 = icmp eq i64 %niter3526.next.1, %i.j
  br i1 %niter3526.ncmp.1, label %.lr.ph.i.i1165.epil, label %.lr.ph.i.i1165, !llvm.loop !34

end_hunk_2
begin_hunk_3_@bary_mul_toom3:bb.a
  store i32 %i.avx, ptr %i.avy, align 4, !tbaa !7
  %i.avz = ashr i64 %i.avw, 32                    ; 2 uses
  %i.awa = add nuw i64 %.06278.i.i1200, 2         ; 2 uses
  %niter3546.next.1 = add i64 %niter3546, 2       ; 2 uses
  %niter3546.ncmp.1 = icmp eq i64 %niter3546.next.1, %i.j
  br i1 %niter3546.ncmp.1, label %.lr.ph.i.i1199.epil, label %.lr.ph.i.i1199, !llvm.loop !48

end_hunk_3
begin_hunk_4_@bary_mul_toom3:bb.a
  store i32 %i.axw, ptr %i.axx, align 4, !tbaa !7
  %i.axy = lshr i64 %i.axv, 32                    ; 2 uses
  %i.axz = add nuw i64 %.05779.i.i1251, 2         ; 2 uses
  %niter3539.next.1 = add i64 %niter3539, 2       ; 2 uses
  %niter3539.ncmp.1 = icmp eq i64 %niter3539.next.1, %i.j
  br i1 %niter3539.ncmp.1, label %.lr.ph.i.i1250.epil, label %.lr.ph.i.i1250, !llvm.loop !34

end_hunk_4
begin_hunk_5_@bary_mul_toom3:bb.a
  store i32 %i.bel, ptr %i.beg, align 4, !tbaa !7
  %i.bem = ashr i64 %i.bek, 32                    ; 2 uses
  %i.ben = add nuw i64 %.06278.i.i1368, 2         ; 2 uses
  %niter3563.next.1 = add i64 %niter3563, 2       ; 2 uses
  %niter3563.ncmp.1 = icmp eq i64 %niter3563.next.1, %i.j
  br i1 %niter3563.ncmp.1, label %.lr.ph.i.i1367.epil, label %.lr.ph.i.i1367, !llvm.loop !48

end_hunk_5
begin_hunk_6_@bary_mul_toom3:bb.a
  store i32 %i.bgk, ptr %i.bgf, align 4, !tbaa !7
  %i.bgl = lshr i64 %i.bgj, 32                    ; 2 uses
  %i.bgm = add nuw i64 %.05779.i.i1419, 2         ; 2 uses
  %niter3555.next.1 = add i64 %niter3555, 2       ; 2 uses
  %niter3555.ncmp.1 = icmp eq i64 %niter3555.next.1, %i.j
  br i1 %niter3555.ncmp.1, label %.lr.ph.i.i1418.epil, label %.lr.ph.i.i1418, !llvm.loop !34

end_hunk_6
begin_hunk_7_@bary_mul_toom3:bb.a
  store i32 %i.bks, ptr %i.bkk, align 4, !tbaa !7
  %i.bkt = lshr i64 %i.bkr, 32                    ; 2 uses
  %i.bku = add nuw i64 %.05779.i.i1479, 2         ; 2 uses
  %niter3576.next.1 = add i64 %niter3576, 2       ; 2 uses
  %niter3576.ncmp.1 = icmp eq i64 %niter3576.next.1, %i.j
  br i1 %niter3576.ncmp.1, label %.lr.ph.i.i1478.epil, label %.lr.ph.i.i1478, !llvm.loop !34

end_hunk_7
begin_hunk_8_@bary_mul_toom3:bb.a
  store i32 %i.blo, ptr %i.blg, align 4, !tbaa !7
  %i.blp = ashr i64 %i.bln, 32                    ; 2 uses
  %i.blq = add nuw i64 %.06278.i.i1510, 2         ; 2 uses
  %niter3570.next.1 = add i64 %niter3570, 2       ; 2 uses
  %niter3570.ncmp.1 = icmp eq i64 %niter3570.next.1, %i.j
  br i1 %niter3570.ncmp.1, label %.lr.ph.i.i1509.epil, label %.lr.ph.i.i1509, !llvm.loop !48

end_hunk_8
begin_hunk_9_@bary_mul_toom3:bb.a
  store i32 %i.bqp, ptr %i.bqh, align 4, !tbaa !7
  %i.bqq = ashr i64 %i.bqo, 32                    ; 2 uses
  %i.bqr = add nuw i64 %.06278.i.i1639, 2         ; 2 uses
  %niter3589.next.1 = add i64 %niter3589, 2       ; 2 uses
  %niter3589.ncmp.1 = icmp eq i64 %niter3589.next.1, %i.j
  br i1 %niter3589.ncmp.1, label %.lr.ph.i.i1638.epil, label %.lr.ph.i.i1638, !llvm.loop !48

end_hunk_9
begin_hunk_10_@bary_mul_toom3:bb.a
  store i32 %i.bsl, ptr %i.bsd, align 4, !tbaa !7
  %i.bsm = lshr i64 %i.bsk, 32                    ; 2 uses
  %i.bsn = add nuw i64 %.05779.i.i1690, 2         ; 2 uses
  %niter3582.next.1 = add i64 %niter3582, 2       ; 2 uses
  %niter3582.ncmp.1 = icmp eq i64 %niter3582.next.1, %i.j
  br i1 %niter3582.ncmp.1, label %.lr.ph.i.i1689.epil, label %.lr.ph.i.i1689, !llvm.loop !34

end_hunk_10
