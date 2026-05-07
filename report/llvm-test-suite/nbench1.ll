inline.NumInlined: 76
inline.NumDeleted: 47
begin_hunk_0_@DoAssignIteration:bb.a
  %i.qh = insertelement <8 x i16> %i.qg, i16 %i.pz, i64 7
  %i.qi = icmp eq <8 x i16> %i.pr, splat (i16 1)  ; 2 uses
  %i.qj = icmp eq <8 x i16> %i.qh, splat (i16 1)  ; 2 uses
  %i.qk = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index25 ; 3 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 16
  %wide.load27 = load <8 x i16>, ptr %i.qk, align 16, !tbaa !91
  %wide.load28 = load <8 x i16>, ptr %i.ql, align 16, !tbaa !91
  %i.qm = icmp ne <8 x i16> %wide.load27, splat (i16 1) ; 2 uses
end_hunk_0
begin_hunk_1_@DoAssignIteration:bb.a
  br i1 %i.qr, label %pred.store.if29, label %pred.store.continue30

pred.store.if29:                                  ; preds = %pred.store.continue
  %i.qs = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.nx
  store i16 1, ptr %i.qs, align 2, !tbaa !91
  br label %pred.store.continue30

end_hunk_1
begin_hunk_2_@DoAssignIteration:bb.a
  br i1 %i.qt, label %pred.store.if31, label %pred.store.continue32

pred.store.if31:                                  ; preds = %pred.store.continue30
  %i.qu = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ny
  store i16 1, ptr %i.qu, align 4, !tbaa !91
  br label %pred.store.continue32

end_hunk_2
begin_hunk_3_@DoAssignIteration:bb.a
  br i1 %i.qv, label %pred.store.if33, label %pred.store.continue34

pred.store.if33:                                  ; preds = %pred.store.continue32
  %i.qw = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.nz
  store i16 1, ptr %i.qw, align 2, !tbaa !91
  br label %pred.store.continue34

end_hunk_3
begin_hunk_4_@DoAssignIteration:bb.a
  br i1 %i.qx, label %pred.store.if35, label %pred.store.continue36

pred.store.if35:                                  ; preds = %pred.store.continue34
  %i.qy = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.oa
  store i16 1, ptr %i.qy, align 8, !tbaa !91
  br label %pred.store.continue36

end_hunk_4
begin_hunk_5_@DoAssignIteration:bb.a
  br i1 %i.qz, label %pred.store.if37, label %pred.store.continue38

pred.store.if37:                                  ; preds = %pred.store.continue36
  %i.ra = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ob
  store i16 1, ptr %i.ra, align 2, !tbaa !91
  br label %pred.store.continue38

end_hunk_5
begin_hunk_6_@DoAssignIteration:bb.a
  br i1 %i.rb, label %pred.store.if39, label %pred.store.continue40

pred.store.if39:                                  ; preds = %pred.store.continue38
  %i.rc = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.oc
  store i16 1, ptr %i.rc, align 4, !tbaa !91
  br label %pred.store.continue40

end_hunk_6
begin_hunk_7_@DoAssignIteration:bb.a
  br i1 %i.rd, label %pred.store.if41, label %pred.store.continue42

pred.store.if41:                                  ; preds = %pred.store.continue40
  %i.re = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.od
  store i16 1, ptr %i.re, align 2, !tbaa !91
  br label %pred.store.continue42

end_hunk_7
begin_hunk_8_@DoAssignIteration:bb.a
  br i1 %i.rf, label %pred.store.if43, label %pred.store.continue44

pred.store.if43:                                  ; preds = %pred.store.continue42
  %i.rg = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.oe
  store i16 1, ptr %i.rg, align 16, !tbaa !91
  br label %pred.store.continue44

end_hunk_8
begin_hunk_9_@DoAssignIteration:bb.a
  br i1 %i.rh, label %pred.store.if45, label %pred.store.continue46

pred.store.if45:                                  ; preds = %pred.store.continue44
  %i.ri = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.of
  store i16 1, ptr %i.ri, align 2, !tbaa !91
  br label %pred.store.continue46

end_hunk_9
begin_hunk_10_@DoAssignIteration:bb.a
  br i1 %i.rj, label %pred.store.if47, label %pred.store.continue48

pred.store.if47:                                  ; preds = %pred.store.continue46
  %i.rk = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.og
  store i16 1, ptr %i.rk, align 4, !tbaa !91
  br label %pred.store.continue48

end_hunk_10
begin_hunk_11_@DoAssignIteration:bb.a
  br i1 %i.rl, label %pred.store.if49, label %pred.store.continue50

pred.store.if49:                                  ; preds = %pred.store.continue48
  %i.rm = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.oh
  store i16 1, ptr %i.rm, align 2, !tbaa !91
  br label %pred.store.continue50

end_hunk_11
begin_hunk_12_@DoAssignIteration:bb.a
  br i1 %i.rn, label %pred.store.if51, label %pred.store.continue52

pred.store.if51:                                  ; preds = %pred.store.continue50
  %i.ro = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.oi
  store i16 1, ptr %i.ro, align 8, !tbaa !91
  br label %pred.store.continue52

end_hunk_12
begin_hunk_13_@DoAssignIteration:bb.a
  br i1 %i.rp, label %pred.store.if53, label %pred.store.continue54

pred.store.if53:                                  ; preds = %pred.store.continue52
  %i.rq = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.oj
  store i16 1, ptr %i.rq, align 2, !tbaa !91
  br label %pred.store.continue54

end_hunk_13
begin_hunk_14_@DoAssignIteration:bb.a
  br i1 %i.rr, label %pred.store.if55, label %pred.store.continue56

pred.store.if55:                                  ; preds = %pred.store.continue54
  %i.rs = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ok
  store i16 1, ptr %i.rs, align 4, !tbaa !91
  br label %pred.store.continue56

end_hunk_14
begin_hunk_15_@DoAssignIteration:bb.a
  br i1 %i.rt, label %pred.store.if57, label %pred.store.continue58

pred.store.if57:                                  ; preds = %pred.store.continue56
  %i.ru = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ol
  store i16 1, ptr %i.ru, align 2, !tbaa !91
  br label %pred.store.continue58

end_hunk_15
