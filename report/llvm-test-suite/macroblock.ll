inline.NumInlined: 47
inline.NumDeleted: 9
begin_hunk_0_@terminate_macroblock:bb.a
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !10
  %i.gm = icmp slt i32 %i.gl, 1
  %or.cond = or i1 %i.ag, %i.gm
  br i1 %or.cond, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gn = getelementptr inbounds nuw i8, ptr %i.c, i64 112
end_hunk_0
begin_hunk_1_@terminate_macroblock:bb.a
bb.ad:                                            ; preds = %bb.ac
  store i32 1, ptr %1, align 4, !tbaa !4
  store i32 1, ptr %0, align 4, !tbaa !4
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad, %bb.ab
  %i.gq = load i32, ptr %1, align 4, !tbaa !4     ; 2 uses
  %i.gr = icmp eq i32 %i.gq, 0
  br i1 %i.gr, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.gs = load ptr, ptr @img, align 8, !tbaa !8
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 12
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !10 ; 2 uses
end_hunk_1
begin_hunk_2_@terminate_macroblock:bb.a
  %.pre149 = load ptr, ptr @input, align 8, !tbaa !8
  br label %.loopexit

.preheader:                                       ; preds = %bb.ai
  %i.hb = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.hc = load i32, ptr %i.hb, align 8, !tbaa !84 ; 5 uses
  %i.hd = icmp sgt i32 %i.hc, 0
end_hunk_2
