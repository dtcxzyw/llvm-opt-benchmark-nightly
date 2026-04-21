inline.NumInlined: 552
inline.NumDeleted: 106
begin_hunk_0_@_ZN14btQuantizedBvh17calcSplittingAxisEii:bb.a
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bt = load float, ptr %i.bs, align 8          ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bw = load float, ptr %i.bv, align 8
end_hunk_0
begin_hunk_1_@_ZN14btQuantizedBvh17calcSplittingAxisEii:bb.a
  %i.cd = insertelement <2 x float> poison, float %.sroa.0113.0.lcssa.ph, i64 0
  %i.ce = shufflevector <2 x float> %i.cd, <2 x float> %i.bj, <2 x i32> <i32 0, i32 2>
  %i.cf = fmul <2 x float> %i.cc, %i.ce           ; 2 uses
  %i.cg = load <4 x float>, ptr %i.bu, align 4    ; 2 uses
  %i.ch = load <4 x float>, ptr %i.bx, align 4
  %i.ci = sext i32 %1 to i64                      ; 2 uses
  %wide.trip.count187 = sext i32 %2 to i64        ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN14btQuantizedBvh17calcSplittingAxisEii:bb.a

_ZNK14btQuantizedBvh10getAabbMinEi.exit45.us.preheader: ; preds = %.lr.ph152
  %i.cj = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.bt, i64 1
  %i.ck = shufflevector <4 x float> %i.cj, <4 x float> %i.cg, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.cl = insertelement <4 x float> <float -0.000000e+00, float poison, float poison, float poison>, float %i.bw, i64 1
  %3 = shufflevector <4 x float> %i.cl, <4 x float> %i.ch, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %4 = insertelement <4 x float> <float -0.000000e+00, float poison, float poison, float poison>, float %i.bt, i64 1
  %i.cm = shufflevector <4 x float> %4, <4 x float> %i.cg, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.cn = shufflevector <2 x float> %i.cf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.co = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %i.cn, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.cp = insertelement <4 x float> %i.co, float %i.ca, i64 3
end_hunk_2
begin_hunk_3_@_ZN14btQuantizedBvh17calcSplittingAxisEii:bb.a
  %i.dc = shufflevector <2 x i16> %i.da, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dd = uitofp <4 x i16> %i.dc to <4 x float>
  %i.de = shufflevector <4 x float> %i.db, <4 x float> %i.dd, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.df = fdiv <4 x float> %i.ck, %i.de
  %i.dg = fadd <4 x float> %i.df, %3
  %i.dh = load <2 x i16>, ptr %i.cz, align 2, !tbaa !50
  %i.di = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.cy, i64 1
  %i.dj = shufflevector <2 x i16> %i.dh, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dk = uitofp <4 x i16> %i.dj to <4 x float>
  %i.dl = shufflevector <4 x float> %i.di, <4 x float> %i.dk, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.dm = fdiv <4 x float> %i.cm, %i.dl
  %i.dn = fadd <4 x float> %i.dm, %3
  %i.do = fadd <4 x float> %i.dg, %i.dn
  %i.dp = fmul <4 x float> %i.do, <float -0.000000e+00, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>
  %i.dq = fsub <4 x float> %i.dp, %i.cp           ; 2 uses
end_hunk_3
