inline.NumInlined: 334
inline.NumDeleted: 192
begin_hunk_0_@_ZN6Assimp11HMPImporter19InternReadFile_HMP7Ev:bb.a
_ZN10aiVector3tIfEdVEf.exit.i.us:                 ; preds = %_ZN10aiVector3tIfEdVEf.exit.i.us.preheader, %_ZN10aiVector3tIfEdVEf.exit.i.us
  %.04459.us = phi i32 [ %i.fc, %_ZN10aiVector3tIfEdVEf.exit.i.us ], [ %.04459.us.ph, %_ZN10aiVector3tIfEdVEf.exit.i.us.preheader ] ; 2 uses
  %.158.us = phi ptr [ %i.fb, %_ZN10aiVector3tIfEdVEf.exit.i.us ], [ %.158.us.ph, %_ZN10aiVector3tIfEdVEf.exit.i.us.preheader ] ; 4 uses
  %.14857.us = phi ptr [ %i.fa, %_ZN10aiVector3tIfEdVEf.exit.i.us ], [ %.14857.us.ph, %_ZN10aiVector3tIfEdVEf.exit.i.us.preheader ] ; 5 uses
  %.15056.us = phi ptr [ %i.ez, %_ZN10aiVector3tIfEdVEf.exit.i.us ], [ %.15056.us.ph, %_ZN10aiVector3tIfEdVEf.exit.i.us.preheader ] ; 4 uses
  %i.ed = uitofp i32 %.04459.us to float
  %i.ee = load float, ptr %i.bc, align 1
end_hunk_0
begin_hunk_1_@_ZN6Assimp11HMPImporter19InternReadFile_HMP7Ev:bb.a
  %i.er = getelementptr inbounds nuw i8, ptr %.158.us, i64 2
  %i.es = load i8, ptr %i.er, align 1
  %i.et = sitofp i8 %i.es to float
  %1 = fmul nnan float %i.et, 7.812500e-03        ; 4 uses
  store float %1, ptr %.14857.us, align 4
  %i.eu = getelementptr inbounds nuw i8, ptr %.158.us, i64 3
  %2 = load i8, ptr %i.eu, align 1
  %3 = sitofp i8 %2 to float
  %4 = fmul nnan float %3, 7.812500e-03           ; 3 uses
  %5 = getelementptr inbounds nuw i8, ptr %.14857.us, i64 4
  %6 = getelementptr inbounds nuw i8, ptr %.14857.us, i64 8
  %i.ev = fmul nnan float %4, %4
  %i.ew = tail call float @llvm.fmuladd.f32(float %1, float %1, float %i.ev)
  %i.ex = fadd float %i.ew, 1.000000e+00
  %sqrt.i.i.us = tail call noundef float @llvm.sqrt.f32(float %i.ex)
  %i.ey = fdiv float 1.000000e+00, %sqrt.i.i.us   ; 3 uses
  %7 = fmul float %1, %i.ey
  store float %7, ptr %.14857.us, align 4
  %8 = fmul float %4, %i.ey
  store float %8, ptr %5, align 4
  store float %i.ey, ptr %6, align 4
  %i.ez = getelementptr inbounds nuw i8, ptr %.15056.us, i64 12 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.14857.us, i64 12 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.158.us, i64 4 ; 2 uses
end_hunk_1
