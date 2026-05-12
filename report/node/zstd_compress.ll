inline.NumInlined: 840
inline.NumDeleted: 178
begin_hunk_0_@ZSTD_seqToCodes:bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !206
  %i.ag = trunc nuw nsw i32 %i.s to i8
  %1 = sub nuw nsw i8 31, %i.ag
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv
  store i8 %1, ptr %i.ah, align 1, !tbaa !206
  %i.ai = icmp ugt i16 %i.u, 127
end_hunk_0
begin_hunk_1_@ZSTD_loadCEntropy:bb.a
  %i.cn = trunc nuw i64 %i.cl to i32
  %i.co = add nuw i32 %i.cn, 131072
  %i.cp = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.co, i1 true)
  %4 = sub nuw nsw i32 31, %i.cp
  %.078 = select i1 %i.cm, i32 %4, i32 31         ; 3 uses
  %i.cq = load i32, ptr %i.b, align 4, !tbaa !5
  %i.cr = icmp ult i32 %i.cq, %.078
end_hunk_1
begin_hunk_2_@ZSTD_convertBlockSequences:bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !224
  %i.bb = icmp eq i32 %i.ay, 0                    ; 5 uses
  %i.bc = load i32, ptr %i.aw, align 4, !tbaa !222 ; 5 uses
  %i.bd = add i32 %i.bc, 3                        ; 2 uses
  %i.be = icmp ne i32 %i.bc, %i.av
end_hunk_2
begin_hunk_3_@ZSTD_convertBlockSequences:bb.a
  br i1 %i.bh, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %5 = select i1 %i.bb, i32 2, i32 3
  br label %ZSTD_finalizeOffBase.exit

bb.p:                                             ; preds = %bb.n
end_hunk_3
begin_hunk_4_@ZSTD_convertBlockSequences:bb.a
  br label %bb.r

ZSTD_finalizeOffBase.exit:                        ; preds = %bb.k, %bb.m, %bb.o, %bb.p
  %.0.i = phi i32 [ %i.bg, %bb.m ], [ %5, %bb.o ], [ 1, %bb.k ], [ %i.bd, %bb.p ] ; 2 uses
  %i.bk = icmp ugt i32 %i.ay, 65535
  br i1 %i.bk, label %bb.q, label %bb.r, !prof !377

end_hunk_4
begin_hunk_5_@ZSTD_buildSequencesStatistics:bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv.i
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !206
  %i.am = trunc nuw nsw i32 %i.y to i8
  %11 = sub nuw nsw i8 31, %i.am
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.i
  store i8 %11, ptr %i.an, align 1, !tbaa !206
  %i.ao = icmp ugt i16 %i.aa, 127
end_hunk_5
begin_hunk_6_@ZSTD_transferSequences_wBlockDelim:bb.a

bb.i:                                             ; preds = %.critedge3
  %i.as = icmp eq i32 %i.ap, 0                    ; 5 uses
  %i.at = load i32, ptr %i.ak, align 4, !tbaa !222 ; 6 uses
  %i.au = add i32 %i.at, 3                        ; 3 uses
  %i.av = icmp ne i32 %i.at, %i.aj
end_hunk_6
begin_hunk_7_@ZSTD_transferSequences_wBlockDelim:bb.a
  br i1 %i.ay, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %8 = select i1 %i.as, i32 2, i32 3
  br label %ZSTD_finalizeOffBase.exit.thread

bb.n:                                             ; preds = %bb.l
end_hunk_7
begin_hunk_8_@ZSTD_transferSequences_wBlockDelim:bb.a
  br i1 %i.bb, label %.sink.split.i, label %ZSTD_finalizeOffBase.exit.thread

ZSTD_finalizeOffBase.exit.thread:                 ; preds = %bb.n, %bb.i, %bb.m, %bb.k, %ZSTD_finalizeOffBase.exit
  %.0.i146 = phi i32 [ %i.au, %ZSTD_finalizeOffBase.exit ], [ %i.ax, %bb.k ], [ 1, %bb.i ], [ %8, %bb.m ], [ 3, %bb.n ] ; 3 uses
  %not. = xor i1 %i.as, true
  %i.bc = sext i1 %not. to i32
  %i.bd = add nsw i32 %.0.i146, %i.bc             ; 3 uses
end_hunk_8
begin_hunk_9_@ZSTD_transferSequences_noDelim:bb.a
  %.1121 = phi i32 [ 0, %bb.h ], [ %.0120239, %.thread ]
  %.3129 = sub i32 %.0126238, %.pn                ; 2 uses
  %i.ba = icmp eq i32 %.1140, 0                   ; 5 uses
  %i.bb = add i32 %.sroa.0.0.copyload, 3          ; 3 uses
  %i.bc = icmp ne i32 %.sroa.0.0.copyload, %i.ai
  %or.cond210.not = select i1 %i.ba, i1 true, i1 %i.bc
end_hunk_9
begin_hunk_10_@ZSTD_transferSequences_noDelim:bb.a
  br i1 %i.bf, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %8 = select i1 %i.ba, i32 2, i32 3
  br label %ZSTD_finalizeOffBase.exit.thread

bb.r:                                             ; preds = %bb.p
end_hunk_10
begin_hunk_11_@ZSTD_transferSequences_noDelim:bb.a
  br i1 %i.bi, label %.sink.split.i, label %ZSTD_finalizeOffBase.exit.thread

ZSTD_finalizeOffBase.exit.thread:                 ; preds = %bb.r, %bb.m, %bb.q, %bb.o, %ZSTD_finalizeOffBase.exit
  %.0.i186 = phi i32 [ %i.bb, %ZSTD_finalizeOffBase.exit ], [ %i.be, %bb.o ], [ 1, %bb.m ], [ %8, %bb.q ], [ 3, %bb.r ] ; 3 uses
  %not. = xor i1 %i.ba, true
  %i.bj = sext i1 %not. to i32
  %i.bk = add nsw i32 %.0.i186, %i.bj             ; 3 uses
end_hunk_11
