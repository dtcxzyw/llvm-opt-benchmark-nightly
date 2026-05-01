inline.NumInlined: 14
inline.NumDeleted: 2
begin_hunk_0_@submacroblock_mode_decision:bb.a
  %i.c = alloca [5 x i32], align 16               ; 10 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 3 uses
  %i.f = alloca [3 x i32], align 8                ; 6 uses
  %i.g = alloca i16, align 2                      ; 3 uses
  %i.h = alloca i8, align 1                       ; 9 uses
  %i.i = alloca [2 x i8], align 2                 ; 10 uses
end_hunk_0
begin_hunk_1_@submacroblock_mode_decision:bb.a
  %i.ag = and i32 %6, 2                           ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aj = load <2 x i32>, ptr %i.ai, align 8      ; 2 uses
  %i.ak = sitofp <2 x i32> %i.aj to <2 x double>
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.am = load i32, ptr %i.al, align 8            ; 4 uses
  %i.an = sitofp i32 %i.am to double
end_hunk_1
begin_hunk_2_@submacroblock_mode_decision:bb.a
  %i.ch = sext i32 %i.cg to i64
  %i.ci = or i32 %i.p, 7
  %i.cj = sext i32 %i.ci to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.bu
end_hunk_2
begin_hunk_3_@submacroblock_mode_decision:bb.a
  br i1 %i.ev, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store <2 x i32> %i.aj, ptr %i.f, align 8, !tbaa !4
  br label %bb.w

bb.v:                                             ; preds = %bb.t
end_hunk_3
