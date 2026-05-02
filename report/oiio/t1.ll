inline.NumInlined: 305
inline.NumDeleted: 36
begin_hunk_0_@opj_t1_dec_sigpass_step_mqc:bb.a

.loopexit:                                        ; preds = %bb.am, %bb.ad, %bb.an
  %.5 = phi i32 [ %i.gr, %bb.an ], [ %.3, %bb.ad ], [ %.4, %bb.am ] ; 2 uses
  %i.gs = xor i32 %.5, %i.ds                      ; 2 uses
  %.not198 = icmp eq i32 %.5, %i.ds
  %i.gt = sub nsw i32 0, %3
  %i.gu = select i1 %.not198, i32 %3, i32 %i.gt
end_hunk_0
begin_hunk_1_@opj_t1_dec_sigpass_step_mqc:bb.a
  %i.he = load i32, ptr %i.cv, align 4, !tbaa !3
  %i.hf = or i32 %i.he, %i.hd
  store i32 %i.hf, ptr %i.cv, align 4, !tbaa !3
  %7 = icmp ne i32 %4, 0
  %8 = trunc nuw i32 %6 to i1
  %or.cond = select i1 %7, i1 true, i1 %8
  br i1 %or.cond, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.loopexit
  %i.hg = zext i32 %5 to i64
  %i.hh = sub nsw i64 0, %i.hg
  br label %bb.aq

bb.ap:                                            ; preds = %.loopexit
  %i.hi = icmp eq i32 %4, 3
  br i1 %i.hi, label %9, label %bb.ar

9:                                                ; preds = %bb.ap
  %10 = zext i32 %5 to i64
  br label %bb.aq

bb.aq:                                            ; preds = %9, %bb.ao
  %.sink259 = phi i64 [ %i.hh, %bb.ao ], [ %10, %9 ]
  %.sink258 = phi i32 [ 31, %bb.ao ], [ 18, %9 ]
  %.sink257 = phi i32 [ 65536, %bb.ao ], [ 2, %9 ]
  %.sink248 = phi i32 [ 131072, %bb.ao ], [ 4, %9 ]
  %.sink242 = phi i32 [ 32768, %bb.ao ], [ 1, %9 ]
  %i.hj = getelementptr inbounds [4 x i8], ptr %1, i64 %.sink259 ; 4 uses
  %i.hk = shl i32 %i.gs, %.sink258
  %i.hl = or disjoint i32 %i.hk, %.sink257
  %i.hm = load i32, ptr %i.hj, align 4, !tbaa !3
  %i.hn = or i32 %i.hm, %i.hl
  store i32 %i.hn, ptr %i.hj, align 4, !tbaa !3
  %i.ho = getelementptr inbounds i8, ptr %i.hj, i64 -4 ; 2 uses
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !3
  %i.hq = or i32 %i.hp, %.sink248
  store i32 %i.hq, ptr %i.ho, align 4, !tbaa !3
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hj, i64 4 ; 2 uses
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !3
  %i.ht = or i32 %i.hs, %.sink242
  store i32 %i.ht, ptr %i.hr, align 4, !tbaa !3
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %.loopexit202
  %i.hu = shl i32 2097152, %i.b
  %i.hv = load i32, ptr %1, align 4, !tbaa !3
  %i.hw = or i32 %i.hv, %i.hu
end_hunk_1
begin_hunk_2_@opj_t1_dec_clnpass_step:bb.a
  %i.gm = getelementptr inbounds nuw i8, ptr @lut_spb, i64 %i.dk
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !48
  %i.go = zext i8 %i.gn to i32                    ; 2 uses
  %i.gp = xor i32 %.5, %i.go                      ; 2 uses
  %.not194 = icmp eq i32 %.5, %i.go
  %i.gq = sub nsw i32 0, %3
  %i.gr = select i1 %.not194, i32 %3, i32 %i.gq
end_hunk_2
begin_hunk_3_@opj_t1_dec_clnpass_step:bb.a
  %i.hb = load i32, ptr %i.cs, align 4, !tbaa !3
  %i.hc = or i32 %i.hb, %i.ha
  store i32 %i.hc, ptr %i.cs, align 4, !tbaa !3
  %6 = icmp ne i32 %4, 0
  %7 = trunc nuw i32 %5 to i1
  %or.cond = select i1 %6, i1 true, i1 %7
  br i1 %or.cond, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.loopexit
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 232
end_hunk_3
begin_hunk_4_@opj_t1_dec_clnpass_step:bb.a
  %i.hf = add i32 %i.he, 2
  %i.hg = zext i32 %i.hf to i64
  %i.hh = sub nsw i64 0, %i.hg
  br label %bb.ap

bb.ao:                                            ; preds = %.loopexit
  %i.hi = icmp eq i32 %4, 3
  br i1 %i.hi, label %8, label %bb.aq

8:                                                ; preds = %bb.ao
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 232
  %10 = load i32, ptr %9, align 8, !tbaa !107
  %11 = add i32 %10, 2
  %12 = zext i32 %11 to i64
  br label %bb.ap

bb.ap:                                            ; preds = %8, %bb.an
  %.sink255 = phi i64 [ %i.hh, %bb.an ], [ %12, %8 ]
  %.sink254 = phi i32 [ 31, %bb.an ], [ 18, %8 ]
  %.sink253 = phi i32 [ 65536, %bb.an ], [ 2, %8 ]
  %.sink244 = phi i32 [ 131072, %bb.an ], [ 4, %8 ]
  %.sink238 = phi i32 [ 32768, %bb.an ], [ 1, %8 ]
  %i.hj = getelementptr inbounds [4 x i8], ptr %1, i64 %.sink255 ; 4 uses
  %i.hk = shl i32 %i.gp, %.sink254
  %i.hl = or disjoint i32 %i.hk, %.sink253
  %i.hm = load i32, ptr %i.hj, align 4, !tbaa !3
  %i.hn = or i32 %i.hm, %i.hl
  store i32 %i.hn, ptr %i.hj, align 4, !tbaa !3
  %i.ho = getelementptr inbounds i8, ptr %i.hj, i64 -4 ; 2 uses
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !3
  %i.hq = or i32 %i.hp, %.sink244
  store i32 %i.hq, ptr %i.ho, align 4, !tbaa !3
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hj, i64 4 ; 2 uses
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !3
  %i.ht = or i32 %i.hs, %.sink238
  store i32 %i.ht, ptr %i.hr, align 4, !tbaa !3
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.loopexit198, %bb.ao, %bb.a
  ret void
}

end_hunk_4
