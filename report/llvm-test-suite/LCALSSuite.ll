inline.NumInlined: 1878
inline.NumDeleted: 548
begin_hunk_0_@_Z22defineLoopSuiteRunInfoRKSt6vectorI13LoopVariantIDSaIS0_EEPbdd:bb.a
  %i.px = fptosi double %i.pw to i32
  %i.py = add nsw i32 %i.px, 3                    ; 4 uses
  %i.pz = mul nsw i32 %i.py, %i.py                ; 2 uses
  %i.qa = mul nsw i32 %i.pz, %i.py                ; 2 uses
  %i.qb = add nsw i32 %i.qa, -1
  %i.qc = add i32 %i.pz, %i.py
  %i.qd = shl i32 %i.qc, 1
  %reass.sub1437.neg = sub i32 %i.qa, %i.qd
  %i.qe = add i32 %reass.sub1437.neg, -2
  %i.qf = load ptr, ptr %i.io, align 8, !tbaa !85 ; 2 uses
  store i32 %i.qe, ptr %i.qf, align 4, !tbaa !4
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 4
end_hunk_0
begin_hunk_1_@_Z22defineLoopSuiteRunInfoRKSt6vectorI13LoopVariantIDSaIS0_EEPbdd:bb.a
  %i.tp = add nsw i32 %i.to, 3                    ; 4 uses
  %i.tq = mul nsw i32 %i.tp, %i.tp                ; 2 uses
  %i.tr = mul nsw i32 %i.tq, %i.tp
  %i.ts = add i32 %i.tq, %i.tp                    ; 2 uses
  %43 = sub i32 %i.tr, %i.ts
  %i.tt = add i32 %43, -2                         ; 2 uses
  %44 = sub i32 %i.tt, %i.ts
  %i.tu = load ptr, ptr %i.io, align 8, !tbaa !85 ; 2 uses
  store i32 %44, ptr %i.tu, align 4, !tbaa !4
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 4
  %i.tw = insertelement <2 x double> poison, double %i.tm, i64 0
  %i.tx = shufflevector <2 x double> %i.tw, <2 x double> poison, <2 x i32> zeroinitializer
end_hunk_1
