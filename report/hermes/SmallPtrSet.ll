begin_hunk_0
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !3  ; 3 uses
  %i.bj = load i32, ptr %i.ao, align 4, !tbaa !3  ; 3 uses
  %i.bk = tail call i32 @llvm.umin.i32(i32 %i.bi, i32 %i.bj) ; 3 uses
  %i.bl = zext i32 %i.bk to i64                   ; 4 uses
  %.idx44 = shl nuw nsw i64 %i.bl, 3              ; 5 uses
  %i.bm = getelementptr i8, ptr %i.d, i64 %.idx44 ; 2 uses
  %.not8.i = icmp eq i32 %i.bk, 0
end_hunk_0
begin_hunk_1
bb.o:                                             ; preds = %_ZSt11swap_rangesIPPKvS2_ET0_T_S4_S3_.exit
  %i.cc = load ptr, ptr %0, align 8, !tbaa !21
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.idx44 ; 2 uses
  %2 = zext i32 %i.bj to i64
  %i.ce = load ptr, ptr %1, align 8, !tbaa !21
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.bl ; 2 uses
  %3 = sub nsw i64 %2, %i.bl                      ; 3 uses
  %4 = icmp sgt i64 %3, 1
  br i1 %4, label %bb.p, label %5, !prof !14

bb.p:                                             ; preds = %bb.o
  %gepdiff49 = shl nuw nsw i64 %3, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.cf, ptr align 8 %i.cd, i64 %gepdiff49, i1 false)
  br label %_ZSt4copyIPPKvS2_ET0_T_S4_S3_.exit39

5:                                                ; preds = %bb.o
  %6 = icmp eq i64 %3, 1
  br i1 %6, label %bb.q, label %_ZSt4copyIPPKvS2_ET0_T_S4_S3_.exit39

bb.q:                                             ; preds = %5
  %i.cg = load ptr, ptr %i.cd, align 8, !tbaa !16
  store ptr %i.cg, ptr %i.cf, align 8, !tbaa !16
  br label %_ZSt4copyIPPKvS2_ET0_T_S4_S3_.exit39
end_hunk_1
begin_hunk_2
  store ptr %i.co, ptr %i.ck, align 8, !tbaa !16
  br label %_ZSt4copyIPPKvS2_ET0_T_S4_S3_.exit39

_ZSt4copyIPPKvS2_ET0_T_S4_S3_.exit39:             ; preds = %bb.u, %bb.t, %bb.s, %bb.q, %5, %bb.p
  %i.cp = load i32, ptr %i.ao, align 4, !tbaa !3
  %i.cq = load i32, ptr %i.bh, align 4, !tbaa !3
  store i32 %i.cq, ptr %i.ao, align 4, !tbaa !3
end_hunk_2
