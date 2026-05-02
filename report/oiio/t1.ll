inline.NumInlined: 305
inline.NumDeleted: 36
begin_hunk_0_@opj_t1_dec_sigpass_step_mqc:bb.a

.loopexit:                                        ; preds = %bb.am, %bb.ad, %bb.an
  %.5 = phi i32 [ %i.gr, %bb.an ], [ %.3, %bb.ad ], [ %.4, %bb.am ] ; 2 uses
  %i.gs = xor i32 %.5, %i.ds                      ; 3 uses
  %.not198 = icmp eq i32 %.5, %i.ds
  %i.gt = sub nsw i32 0, %3
  %i.gu = select i1 %.not198, i32 %3, i32 %i.gt
end_hunk_0
begin_hunk_1_@opj_t1_dec_sigpass_step_mqc:bb.a
  %i.he = load i32, ptr %i.cv, align 4, !tbaa !3
  %i.hf = or i32 %i.he, %i.hd
  store i32 %i.hf, ptr %i.cv, align 4, !tbaa !3
  %7 = or i32 %6, %4
  %or.cond.not = icmp eq i32 %7, 0
  br i1 %or.cond.not, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.loopexit
  %i.hg = zext i32 %5 to i64
  %i.hh = sub nsw i64 0, %i.hg
  %8 = getelementptr inbounds [4 x i8], ptr %1, i64 %i.hh ; 4 uses
  %9 = shl i32 %i.gs, 31
  %10 = or disjoint i32 %9, 65536
  %11 = load i32, ptr %8, align 4, !tbaa !3
  %12 = or i32 %11, %10
  store i32 %12, ptr %8, align 4, !tbaa !3
  %13 = getelementptr inbounds i8, ptr %8, i64 -4 ; 2 uses
  %14 = load i32, ptr %13, align 4, !tbaa !3
  %15 = or i32 %14, 131072
  store i32 %15, ptr %13, align 4, !tbaa !3
  %16 = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  %17 = load i32, ptr %16, align 4, !tbaa !3
  %18 = or i32 %17, 32768
  store i32 %18, ptr %16, align 4, !tbaa !3
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.loopexit
  %i.hi = icmp eq i32 %4, 3
  br i1 %i.hi, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %19 = zext i32 %5 to i64
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %19 ; 4 uses
  %i.hk = shl i32 %i.gs, 18
  %i.hl = or disjoint i32 %i.hk, 2
  %i.hm = load i32, ptr %i.hj, align 4, !tbaa !3
  %i.hn = or i32 %i.hm, %i.hl
  store i32 %i.hn, ptr %i.hj, align 4, !tbaa !3
  %i.ho = getelementptr inbounds i8, ptr %i.hj, i64 -4 ; 2 uses
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !3
  %i.hq = or i32 %i.hp, 4
  store i32 %i.hq, ptr %i.ho, align 4, !tbaa !3
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hj, i64 4 ; 2 uses
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !3
  %i.ht = or i32 %i.hs, 1
  store i32 %i.ht, ptr %i.hr, align 4, !tbaa !3
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq, %.loopexit202
  %i.hu = shl i32 2097152, %i.b
  %i.hv = load i32, ptr %1, align 4, !tbaa !3
  %i.hw = or i32 %i.hv, %i.hu
end_hunk_1
begin_hunk_2_@opj_t1_dec_clnpass_step:bb.a
  %i.gm = getelementptr inbounds nuw i8, ptr @lut_spb, i64 %i.dk
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !48
  %i.go = zext i8 %i.gn to i32                    ; 2 uses
  %i.gp = xor i32 %.5, %i.go                      ; 3 uses
  %.not194 = icmp eq i32 %.5, %i.go
  %i.gq = sub nsw i32 0, %3
  %i.gr = select i1 %.not194, i32 %3, i32 %i.gq
end_hunk_2
begin_hunk_3_@opj_t1_dec_clnpass_step:bb.a
  %i.hb = load i32, ptr %i.cs, align 4, !tbaa !3
  %i.hc = or i32 %i.hb, %i.ha
  store i32 %i.hc, ptr %i.cs, align 4, !tbaa !3
  %6 = or i32 %5, %4
  %or.cond.not = icmp eq i32 %6, 0
  br i1 %or.cond.not, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %.loopexit
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 232
end_hunk_3
begin_hunk_4_@opj_t1_dec_clnpass_step:bb.a
  %i.hf = add i32 %i.he, 2
  %i.hg = zext i32 %i.hf to i64
  %i.hh = sub nsw i64 0, %i.hg
  %7 = getelementptr inbounds [4 x i8], ptr %1, i64 %i.hh ; 4 uses
  %8 = shl i32 %i.gp, 31
  %9 = or disjoint i32 %8, 65536
  %10 = load i32, ptr %7, align 4, !tbaa !3
  %11 = or i32 %10, %9
  store i32 %11, ptr %7, align 4, !tbaa !3
  %12 = getelementptr inbounds i8, ptr %7, i64 -4 ; 2 uses
  %13 = load i32, ptr %12, align 4, !tbaa !3
  %14 = or i32 %13, 131072
  store i32 %14, ptr %12, align 4, !tbaa !3
  %15 = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %16 = load i32, ptr %15, align 4, !tbaa !3
  %17 = or i32 %16, 32768
  store i32 %17, ptr %15, align 4, !tbaa !3
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.loopexit
  %i.hi = icmp eq i32 %4, 3
  br i1 %i.hi, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 232
  %19 = load i32, ptr %18, align 8, !tbaa !107
  %20 = add i32 %19, 2
  %21 = zext i32 %20 to i64
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %21 ; 4 uses
  %i.hk = shl i32 %i.gp, 18
  %i.hl = or disjoint i32 %i.hk, 2
  %i.hm = load i32, ptr %i.hj, align 4, !tbaa !3
  %i.hn = or i32 %i.hm, %i.hl
  store i32 %i.hn, ptr %i.hj, align 4, !tbaa !3
  %i.ho = getelementptr inbounds i8, ptr %i.hj, i64 -4 ; 2 uses
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !3
  %i.hq = or i32 %i.hp, 4
  store i32 %i.hq, ptr %i.ho, align 4, !tbaa !3
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hj, i64 4 ; 2 uses
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !3
  %i.ht = or i32 %i.hs, 1
  store i32 %i.ht, ptr %i.hr, align 4, !tbaa !3
  br label %bb.aq

bb.aq:                                            ; preds = %.loopexit198, %bb.ao, %bb.ap, %bb.a
  ret void
}

end_hunk_4
