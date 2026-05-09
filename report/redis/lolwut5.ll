inline.NumInlined: 4
inline.NumDeleted: 3
begin_hunk_0_@lwDrawSchotter
define dso_local ptr @lwDrawSchotter(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = shl nsw i32 %0, 1                        ; 2 uses
  %i.b = icmp sgt i32 %0, 2                       ; 2 uses
  %i.c = select i1 %i.b, i32 4, i32 0             ; 2 uses
  %i.d = sub nsw i32 %i.a, %i.c
  %i.e = sitofp i32 %i.d to float
  %i.f = sitofp i32 %1 to float
  %i.g = fdiv float %i.e, %i.f                    ; 9 uses
  %i.h = sitofp i32 %2 to float                   ; 4 uses
  %i.i = uitofp nneg i32 %i.c to float
  %i.j = tail call float @llvm.fmuladd.f32(float %i.g, float %i.h, float %i.i)
  %i.k = fptosi float %i.j to i32
  %i.l = tail call ptr @lwCreateCanvas(i32 noundef %i.a, i32 noundef %i.k, i32 noundef 0) #6 ; 3 uses
end_hunk_0
begin_hunk_1_@lwDrawSchotter:bb.a
  br i1 %i.m, label %.preheader.lr.ph, label %._crit_edge57

.preheader.lr.ph:                                 ; preds = %bb.a
  %3 = select i1 %i.b, i32 2, i32 0
  %i.n = icmp sgt i32 %1, 0
  %i.o = fmul float %i.g, 5.000000e-01            ; 3 uses
  %i.p = uitofp nneg i32 %3 to float              ; 3 uses
  br i1 %i.n, label %.preheader.us, label %._crit_edge57

.preheader.us:                                    ; preds = %.preheader.lr.ph, %._crit_edge.us
end_hunk_1
