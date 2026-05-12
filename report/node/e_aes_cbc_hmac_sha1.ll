inline.NumInlined: 18
inline.NumDeleted: 6
begin_hunk_0_@aesni_cbc_hmac_sha1_ctrl:bb.a

._crit_edge335.loopexit.peel.begin.i:             ; preds = %bb.aw
  %i.ob = icmp eq i64 %i.nf, %i.ne
  %i.oc = select i1 %i.ob, i32 %.0298.i, i32 %.0297.i ; 6 uses
  %i.od = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.nf ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 8
  %i.of = load i32, ptr %i.oe, align 8, !tbaa !52
end_hunk_0
begin_hunk_1_@aesni_cbc_hmac_sha1_ctrl:bb.a
  %i.qi = getelementptr inbounds nuw i8, ptr %i.c, i64 472 ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.c, i64 473 ; 2 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.c, i64 474 ; 2 uses
  %invariant.op = sub i32 21, %.1303.i
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ay, %.lr.ph346.split.i
end_hunk_1
begin_hunk_2_@aesni_cbc_hmac_sha1_ctrl:bb.a
  %.0295344.i = phi ptr [ %i.gq, %.lr.ph346.split.i ], [ %scevgep387.i, %bb.ay ] ; 7 uses
  %.0304342.i = phi i32 [ 0, %.lr.ph346.split.i ], [ %i.sk, %bb.ay ]
  %i.ql = icmp eq i64 %indvars.iv388.i, %i.ne
  %i.qm = select i1 %i.ql, i32 %.0298.i, i32 %.0297.i ; 4 uses
  %i.qn = getelementptr inbounds nuw [40 x i8], ptr %6, i64 %indvars.iv388.i ; 4 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 8 ; 2 uses
  %i.qp = load ptr, ptr %i.qo, align 8, !tbaa !48
end_hunk_2
begin_hunk_3_@aesni_cbc_hmac_sha1_ctrl:bb.a
  %i.rp = getelementptr inbounds nuw i8, ptr %i.qw, i64 16
  store i32 %i.ro, ptr %i.rp, align 4, !tbaa !5
  %i.rq = getelementptr i8, ptr %i.qw, i64 20
  %.not.i154 = sub i32 11, %i.qm
  %i.rr = and i32 %.not.i154, 15                  ; 3 uses
  %i.rs = trunc nuw nsw i32 %i.rr to i8
  %i.rt = zext nneg i32 %i.rr to i64              ; 2 uses
  %i.ru = add nuw nsw i64 %i.rt, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.rq, i8 %i.rs, i64 %i.ru, i1 false), !tbaa !10
  %scevgep.i = getelementptr i8, ptr %.0295344.i, i64 21
  %i.rv = getelementptr i8, ptr %scevgep.i, i64 %i.qv
  %scevgep387.i = getelementptr i8, ptr %i.rv, i64 %i.rt ; 7 uses
  %8 = add i32 %i.rr, %i.qm                       ; 3 uses
  %.reass.i.reass.reass = add i32 %8, %invariant.op
  %i.rw = lshr i32 %.reass.i.reass.reass, 4
  %i.rx = getelementptr inbounds nuw i8, ptr %i.qn, i64 16
  store i32 %i.rw, ptr %i.rx, align 8, !tbaa !56
  %i.ry = add i32 %8, 37                          ; 2 uses
  %i.rz = load i8, ptr %i.qi, align 4, !tbaa !10
  store i8 %i.rz, ptr %.0295344.i, align 1, !tbaa !10
  %i.sa = load i8, ptr %i.qj, align 1, !tbaa !10
end_hunk_3
begin_hunk_4_@aesni_cbc_hmac_sha1_ctrl:bb.a
  %i.sh = trunc i32 %i.ry to i8
  %i.si = getelementptr inbounds nuw i8, ptr %.0295344.i, i64 4
  store i8 %i.sh, ptr %i.si, align 1, !tbaa !10
  %i.sj = add i32 %.0304342.i, 42
  %i.sk = add i32 %i.sj, %8                       ; 2 uses
  %indvars.iv.next389.i = add nuw nsw i64 %indvars.iv388.i, 1 ; 2 uses
  %exitcond392.not.i = icmp eq i64 %indvars.iv.next389.i, %i.nf
  br i1 %exitcond392.not.i, label %._crit_edge347.loopexit.peel.begin.i, label %bb.ay, !llvm.loop !78
end_hunk_4
begin_hunk_5_@aesni_cbc_hmac_sha1_ctrl:bb.a
  %i.tn = getelementptr inbounds nuw i8, ptr %i.su, i64 16
  store i32 %i.tm, ptr %i.tn, align 4, !tbaa !5
  %i.to = getelementptr i8, ptr %i.su, i64 20
  %.not.peel.i = sub i32 11, %i.oc
  %i.tp = and i32 %.not.peel.i, 15                ; 3 uses
  %i.tq = trunc nuw nsw i32 %i.tp to i8
  %narrow.i = add nuw nsw i32 %i.tp, 1
  %i.tr = zext nneg i32 %narrow.i to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.to, i8 %i.tq, i64 %i.tr, i1 false), !tbaa !10
  %9 = add i32 %i.tp, %i.oc                       ; 3 uses
  %reass.sub.peel.i = add i32 %9, 21
  %i.ts = sub i32 %reass.sub.peel.i, %.1303.i
  %i.tt = lshr i32 %i.ts, 4
  %i.tu = getelementptr inbounds nuw i8, ptr %i.sl, i64 16
  store i32 %i.tt, ptr %i.tu, align 8, !tbaa !56
  %i.tv = add i32 %9, 37                          ; 2 uses
  %i.tw = load i8, ptr %i.qi, align 4, !tbaa !10
  store i8 %i.tw, ptr %scevgep387.i, align 1, !tbaa !10
  %i.tx = load i8, ptr %i.qj, align 1, !tbaa !10
end_hunk_5
begin_hunk_6_@aesni_cbc_hmac_sha1_ctrl:bb.a
  %i.ue = trunc i32 %i.tv to i8
  %i.uf = getelementptr inbounds nuw i8, ptr %scevgep387.i, i64 4
  store i8 %i.ue, ptr %i.uf, align 1, !tbaa !10
  %i.ug = add i32 %9, 42
  %i.uh = add i32 %i.ug, %i.sk
  br label %._crit_edge347.i

end_hunk_6
