begin_hunk_0
  %a307.us = fptosi <8 x float> %i.fs to <8 x i32>
  %a306.us = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %b309, <8 x i32> %a307.us)
  %i.ft = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %a306.us, <8 x i32> zeroinitializer)
  %0 = sub <8 x i32> %i.ft, %i.bqr
  %i.fu = add nsw <8 x i32> %0, splat (i32 256)   ; 8 uses
  %i.fv = extractelement <8 x i32> %i.fu, i64 0
  %i.fw = sext i32 %i.fv to i64
  %i.fx = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.fw
end_hunk_0
begin_hunk_1
  %a309.us = fptosi <8 x float> %i.ho to <8 x i32>
  %a308.us = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %b309, <8 x i32> %a309.us)
  %i.hp = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %a308.us, <8 x i32> zeroinitializer)
  %1 = sub <8 x i32> %i.hp, %i.bqr
  %i.hq = add nsw <8 x i32> %1, splat (i32 256)   ; 8 uses
  %i.hr = extractelement <8 x i32> %i.hq, i64 0
  %i.hs = sext i32 %i.hr to i64
  %i.ht = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.hs
end_hunk_1
begin_hunk_2
  %a311.us = fptosi <8 x float> %i.jk to <8 x i32>
  %a310.us = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %b309, <8 x i32> %a311.us)
  %i.jl = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %a310.us, <8 x i32> zeroinitializer)
  %2 = sub <8 x i32> %i.jl, %i.bqr
  %i.jm = add nsw <8 x i32> %2, splat (i32 256)   ; 8 uses
  %i.jn = extractelement <8 x i32> %i.jm, i64 0
  %i.jo = sext i32 %i.jn to i64
  %i.jp = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.jo
end_hunk_2
begin_hunk_3
  %a313.us = fptosi <8 x float> %i.li to <8 x i32>
  %a312.us = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %b309, <8 x i32> %a313.us)
  %i.lj = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %a312.us, <8 x i32> zeroinitializer)
  %3 = sub <8 x i32> %i.lj, %i.bqr
  %i.lk = add nsw <8 x i32> %3, splat (i32 256)   ; 8 uses
  %i.ll = extractelement <8 x i32> %i.lk, i64 0
  %i.lm = sext i32 %i.ll to i64
  %i.ln = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.lm
end_hunk_3
begin_hunk_4
  %a315.us = fptosi <8 x float> %i.nh to <8 x i32>
  %a314.us = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %b309, <8 x i32> %a315.us)
  %i.ni = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %a314.us, <8 x i32> zeroinitializer)
  %4 = sub <8 x i32> %i.ni, %i.bqr
  %i.nj = add nsw <8 x i32> %4, splat (i32 256)   ; 8 uses
  %i.nk = extractelement <8 x i32> %i.nj, i64 0
  %i.nl = sext i32 %i.nk to i64
  %i.nm = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.nl
end_hunk_4
begin_hunk_5
  %a317.us = fptosi <8 x float> %i.pd to <8 x i32>
  %a316.us = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %b309, <8 x i32> %a317.us)
  %i.pe = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %a316.us, <8 x i32> zeroinitializer)
  %5 = sub <8 x i32> %i.pe, %i.bqr
  %i.pf = add nsw <8 x i32> %5, splat (i32 256)   ; 8 uses
  %i.pg = extractelement <8 x i32> %i.pf, i64 0
  %i.ph = sext i32 %i.pg to i64
  %i.pi = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.ph
end_hunk_5
begin_hunk_6
  %a319.us = fptosi <8 x float> %i.qz to <8 x i32>
  %a318.us = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %b309, <8 x i32> %a319.us)
  %i.ra = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %a318.us, <8 x i32> zeroinitializer)
  %6 = sub <8 x i32> %i.ra, %i.bqr
  %i.rb = add nsw <8 x i32> %6, splat (i32 256)   ; 8 uses
  %i.rc = extractelement <8 x i32> %i.rb, i64 0
  %i.rd = sext i32 %i.rc to i64
  %i.re = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.rd
end_hunk_6
begin_hunk_7
  %a321.us = fptosi <8 x float> %i.sx to <8 x i32>
  %a320.us = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %b309, <8 x i32> %a321.us)
  %i.sy = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %a320.us, <8 x i32> zeroinitializer)
  %7 = sub <8 x i32> %i.sy, %i.bqr
  %i.sz = add nsw <8 x i32> %7, splat (i32 256)   ; 8 uses
  %i.ta = extractelement <8 x i32> %i.sz, i64 0
  %i.tb = sext i32 %i.ta to i64
  %i.tc = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.tb
end_hunk_7
begin_hunk_8
  %a323.us = fptosi <8 x float> %i.uv to <8 x i32>
  %a322.us = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %b309, <8 x i32> %a323.us)
  %i.uw = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %a322.us, <8 x i32> zeroinitializer)
  %8 = sub <8 x i32> %i.uw, %i.bqr
  %i.ux = add nsw <8 x i32> %8, splat (i32 256)   ; 8 uses
  %i.uy = extractelement <8 x i32> %i.ux, i64 0
  %i.uz = sext i32 %i.uy to i64
  %i.va = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.uz
end_hunk_8
begin_hunk_9
  %a325.us = fptosi <8 x float> %i.wr to <8 x i32>
  %a324.us = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %b309, <8 x i32> %a325.us)
  %i.ws = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %a324.us, <8 x i32> zeroinitializer)
  %9 = sub <8 x i32> %i.ws, %i.bqr
  %i.wt = add nsw <8 x i32> %9, splat (i32 256)   ; 8 uses
  %i.wu = extractelement <8 x i32> %i.wt, i64 0
  %i.wv = sext i32 %i.wu to i64
  %i.ww = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.wv
end_hunk_9
begin_hunk_10
  %a327.us = fptosi <8 x float> %i.yn to <8 x i32>
  %a326.us = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %b309, <8 x i32> %a327.us)
  %i.yo = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %a326.us, <8 x i32> zeroinitializer)
  %10 = sub <8 x i32> %i.yo, %i.bqr
  %i.yp = add nsw <8 x i32> %10, splat (i32 256)  ; 8 uses
  %i.yq = extractelement <8 x i32> %i.yp, i64 0
  %i.yr = sext i32 %i.yq to i64
  %i.ys = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.yr
end_hunk_10
begin_hunk_11
  %a329.us = fptosi <8 x float> %i.aal to <8 x i32>
  %a328.us = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %b309, <8 x i32> %a329.us)
  %i.aam = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %a328.us, <8 x i32> zeroinitializer)
  %11 = sub <8 x i32> %i.aam, %i.bqr
  %i.aan = add nsw <8 x i32> %11, splat (i32 256) ; 8 uses
  %i.aao = extractelement <8 x i32> %i.aan, i64 0
  %i.aap = sext i32 %i.aao to i64
  %i.aaq = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.aap
end_hunk_11
begin_hunk_12
  %a331.us = fptosi <8 x float> %i.acl to <8 x i32>
  %a330.us = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %b309, <8 x i32> %a331.us)
  %i.acm = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %a330.us, <8 x i32> zeroinitializer)
  %12 = sub <8 x i32> %i.acm, %i.bqr
  %i.acn = add nsw <8 x i32> %12, splat (i32 256) ; 8 uses
  %i.aco = extractelement <8 x i32> %i.acn, i64 0
  %i.acp = sext i32 %i.aco to i64
  %i.acq = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.acp
end_hunk_12
begin_hunk_13
  %a333.us = fptosi <8 x float> %i.aeh to <8 x i32>
  %a332.us = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %b309, <8 x i32> %a333.us)
  %i.aei = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %a332.us, <8 x i32> zeroinitializer)
  %13 = sub <8 x i32> %i.aei, %i.bqr
  %i.aej = add nsw <8 x i32> %13, splat (i32 256) ; 8 uses
  %i.aek = extractelement <8 x i32> %i.aej, i64 0
  %i.ael = sext i32 %i.aek to i64
  %i.aem = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.ael
end_hunk_13
begin_hunk_14
  %a335.us = fptosi <8 x float> %i.agd to <8 x i32>
  %a334.us = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %b309, <8 x i32> %a335.us)
  %i.age = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %a334.us, <8 x i32> zeroinitializer)
  %14 = sub <8 x i32> %i.age, %i.bqr
  %i.agf = add nsw <8 x i32> %14, splat (i32 256) ; 8 uses
  %i.agg = extractelement <8 x i32> %i.agf, i64 0
  %i.agh = sext i32 %i.agg to i64
  %i.agi = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.agh
end_hunk_14
begin_hunk_15
  %a337.us = fptosi <8 x float> %i.aib to <8 x i32>
  %a336.us = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %b309, <8 x i32> %a337.us)
  %i.aic = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %a336.us, <8 x i32> zeroinitializer)
  %15 = sub <8 x i32> %i.aic, %i.bqr
  %i.aid = add nsw <8 x i32> %15, splat (i32 256) ; 8 uses
  %i.aie = extractelement <8 x i32> %i.aid, i64 0
  %i.aif = sext i32 %i.aie to i64
  %i.aig = getelementptr inbounds [4 x i8], ptr %f0.host, i64 %i.aif
end_hunk_15
begin_hunk_16
  %i.bqr = shufflevector <8 x i32> %i.bqq, <8 x i32> poison, <8 x i32> zeroinitializer ; 16 uses
  %i.bqs = insertelement <8 x float> poison, float %t1992.s.us, i64 0
  %i.bqt = shufflevector <8 x float> %i.bqs, <8 x float> poison, <8 x i32> zeroinitializer ; 32 uses
  br label %"for f4.s0.v3.v3.us"

"end for f4.s0.v6.loopexit.us":                   ; preds = %"end for f4.s0.v3.v32.us"
end_hunk_16
begin_hunk_17
  %i.ja = mul i32 %i.iz, %i.hs
  %i.jb = sub i32 %i.ja, %f75.v3.min_realized
  %i.jc = add nsw i32 %t2241.us, %i.ic
  %t2248.us.a = mul nsw i32 %i.jc, %i.hz
  %i.jd = sub nsw i32 %i.ix, %i.ib
  %t2250.us = mul nsw i32 %i.jd, %i.hz
  %i.je = add i32 %t2241.us, %i.ih
  %t2255.us = mul nsw i32 %i.je, %i.ig            ; 4 uses
  %i.jf = sub nsw i32 %i.ix, %f8.v4.min_realized
  %t2260.us = mul nsw i32 %i.jf, %i.ig            ; 4 uses
  %i.jg = sext i32 %t2250.us to i64               ; 4 uses
  %i.jh = sext i32 %t2248.us.a to i64             ; 4 uses
  %i.ji = sub nsw i64 %indvars.iv490.a, %i.ip
  %i.jj = mul nsw i64 %i.ji, %i.io
  %invariant.gep336.us = getelementptr [4 x i8], ptr %i.dx, i64 %i.jj
  %0 = trunc i64 %indvars.iv490.a to i32
  %1 = sub i32 %0, %f7.v4.min_realized
  %2 = mul i32 %1, %f7.stride.1
  br label %"for f129.s0.v3.v3.us"

"for f129.s0.v3.v3.us":                           ; preds = %"for f129.s0.v4.us", %"for f129.s0.v3.v3.us"
end_hunk_17
begin_hunk_18
  %i.ju = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %a826.us, <4 x i32> zeroinitializer) ; 2 uses
  %i.jv = uitofp nneg <4 x i32> %i.ju to <4 x float>
  %t2246.us = fsub <4 x float> %t2244.us, %i.jv   ; 2 uses
  %3 = sub nsw i32 %f129.s0.v3.v363.base.us, %f7.v3.min_realized
  %t2251.us = add nsw i32 %3, %2                  ; 2 uses
  %t2253.us = sub nsw <4 x i32> %i.ju, %i.if      ; 3 uses
  %t2257.us = mul nsw <4 x i32> %t2253.us, %i.ij  ; 4 uses
  %i.jw = add nsw <4 x i32> %t2253.us, splat (i32 1) ; 2 uses
end_hunk_18
begin_hunk_19
  %i.ahd = mul i32 %i.ahc, %i.agk
  %i.ahe = sub i32 %i.ahd, %f74.v3.min_realized
  %i.ahf = add nsw i32 %t2279.us, %i.agl
  %t2286.us.a = mul nsw i32 %i.ahf, %i.dq
  %i.ahg = sub nsw i32 %i.aha, %i.hp
  %t2288.us = mul nsw i32 %i.ahg, %i.dq
  %i.ahh = add i32 %t2279.us, %i.agm
  %i.ahi = mul nsw i32 %i.ahh, %f7.stride.1       ; 4 uses
  %i.ahj = sub nsw i32 %i.aha, %f7.v4.min_realized
  %i.ahk = mul nsw i32 %i.ahj, %f7.stride.1       ; 4 uses
  %i.ahl = sext i32 %t2288.us to i64              ; 4 uses
  %i.ahm = sext i32 %t2286.us.a to i64            ; 4 uses
  %i.ahn = sub nsw i64 %indvars.iv494.a, %i.ags
  %i.aho = mul nsw i64 %i.ahn, %i.agr
  %invariant.gep340.us = getelementptr [4 x i8], ptr %i.ex, i64 %i.aho
  %4 = trunc i64 %indvars.iv494.a to i32
  %5 = sub i32 %4, %f6.v4.min_realized
  %6 = mul i32 %5, %f6.stride.1
  br label %"for f128.s0.v3.v3.us"

"for f128.s0.v3.v3.us":                           ; preds = %"for f128.s0.v4.us", %"for f128.s0.v3.v3.us"
end_hunk_19
begin_hunk_20
  %i.ahz = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %a835.us, <4 x i32> zeroinitializer) ; 2 uses
  %i.aia = uitofp nneg <4 x i32> %i.ahz to <4 x float>
  %t2284.us = fsub <4 x float> %t2282.us, %i.aia  ; 2 uses
  %7 = sub nsw i32 %f128.s0.v3.v343.base.us, %f6.v3.min_realized
  %t2289.us = add nsw i32 %7, %6                  ; 2 uses
  %t2291.us = sub nsw <4 x i32> %i.ahz, %i.if     ; 3 uses
  %i.aib = sub nsw i32 %t2280.us, %f7.v3.min_realized ; 2 uses
  %t2294.us = add nsw i32 %i.aib, %i.ahi
end_hunk_20
begin_hunk_21
  %i.bex = mul i32 %i.bew, %i.bef
  %i.bey = sub i32 %i.bex, %f73.v3.min_realized
  %i.bez = add nsw i32 %t2317.us, %i.beg
  %t2324.us.a = mul nsw i32 %i.bez, %i.eq
  %i.bfa = sub nsw i32 %i.beu, %i.agh
  %t2326.us = mul nsw i32 %i.bfa, %i.eq
  %i.bfb = add i32 %t2317.us, %i.beh
  %i.bfc = mul nsw i32 %i.bfb, %f6.stride.1       ; 4 uses
  %i.bfd = sub nsw i32 %i.beu, %f6.v4.min_realized
  %i.bfe = mul nsw i32 %i.bfd, %f6.stride.1       ; 4 uses
  %i.bff = sext i32 %t2326.us to i64              ; 4 uses
  %i.bfg = sext i32 %t2324.us.a to i64            ; 4 uses
  %i.bfh = sub nsw i64 %indvars.iv498, %i.ben
  %i.bfi = mul nsw i64 %i.bfh, %i.bem
  %invariant.gep345.us = getelementptr [4 x i8], ptr %i.gj, i64 %i.bfi
  %8 = trunc i64 %indvars.iv498 to i32
  %9 = sub i32 %8, %f5.v4.min_realized
  %10 = mul i32 %9, %f5.stride.1
  br label %"for f127.s0.v3.v3.us"

"for f127.s0.v3.v3.us":                           ; preds = %"for f127.s0.v4.us", %"for f127.s0.v3.v3.us"
end_hunk_21
begin_hunk_22
  %i.bft = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %a844.us, <4 x i32> zeroinitializer) ; 2 uses
  %i.bfu = uitofp nneg <4 x i32> %i.bft to <4 x float>
  %t2322.us = fsub <4 x float> %t2320.us, %i.bfu  ; 2 uses
  %11 = sub nsw i32 %f127.s0.v3.v323.base.us, %f5.v3.min_realized
  %t2327.us = add nsw i32 %11, %10                ; 2 uses
  %t2329.us = sub nsw <4 x i32> %i.bft, %i.if     ; 3 uses
  %i.bfv = sub nsw i32 %t2318.us, %f6.v3.min_realized ; 2 uses
  %t2332.us = add nsw i32 %i.bfv, %i.bfc
end_hunk_22
begin_hunk_23
  %i.ccs = mul i32 %i.ccr, %i.cca
  %i.cct = sub i32 %i.ccs, %f72.v3.min_realized
  %i.ccu = add nsw i32 %t2355.us, %i.ccb
  %t2362.us.a = mul nsw i32 %i.ccu, %i.fu
  %i.ccv = sub nsw i32 %i.ccp, %f127.v4.min_realized
  %t2364.us = mul nsw i32 %i.ccv, %i.fu
  %i.ccw = add i32 %t2355.us, %i.ccc
  %i.ccx = mul nsw i32 %i.ccw, %f5.stride.1       ; 4 uses
  %i.ccy = sub nsw i32 %i.ccp, %f5.v4.min_realized
  %i.ccz = mul nsw i32 %i.ccy, %f5.stride.1       ; 4 uses
  %i.cda = sext i32 %t2364.us to i64              ; 4 uses
  %i.cdb = sext i32 %t2362.us.a to i64            ; 4 uses
  %i.cdc = sub nsw i64 %indvars.iv502, %i.cci
  %i.cdd = mul nsw i64 %i.cdc, %i.cch
  %invariant.gep350.us = getelementptr [4 x i8], ptr %i.hm, i64 %i.cdd
  %12 = trunc i64 %indvars.iv502 to i32
  %13 = sub i32 %12, %f4.v4.min_realized
  %14 = mul i32 %13, %f4.stride.1
  br label %"for f126.s0.v3.v3.us"

"for f126.s0.v3.v3.us":                           ; preds = %"for f126.s0.v4.us", %"for f126.s0.v3.v3.us"
end_hunk_23
begin_hunk_24
  %i.cdo = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %a853.us, <4 x i32> zeroinitializer) ; 2 uses
  %i.cdp = uitofp nneg <4 x i32> %i.cdo to <4 x float>
  %t2360.us = fsub <4 x float> %t2358.us, %i.cdp  ; 2 uses
  %15 = sub nsw i32 %f126.s0.v3.v303.base.us, %f4.v3.min_realized
  %t2365.us = add nsw i32 %15, %14                ; 2 uses
  %t2367.us = sub nsw <4 x i32> %i.cdo, %i.if     ; 3 uses
  %i.cdq = sub nsw i32 %t2356.us, %f5.v3.min_realized ; 2 uses
  %t2370.us = add nsw i32 %i.cdq, %i.ccx
end_hunk_24
begin_hunk_25
  %i.dyt = insertelement <8 x i32> poison, i32 %input.min.0, i64 0
  %b886 = shufflevector <8 x i32> %i.dyt, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.dyu = sext i32 %i.gl to i64                  ; 2 uses
  br label %"for local_laplacian.s0.v3.v3"

"for local_laplacian.s0.v3.v3":                   ; preds = %"end for local_laplacian.s0.v5", %"for local_laplacian.s0.v3.v3.preheader"
end_hunk_25
begin_hunk_26
  %a882 = tail call i32 @llvm.smin.i32(i32 %b885, i32 %a883)
  %i.eit = tail call i32 @llvm.smax.i32(i32 %a882, i32 %b1146)
  %i.eiu = mul nsw i32 %i.eit, %input.stride.2
  %.scalar = add i32 %i.eiu, %i.dyp
  %.scalar521 = sub i32 %.scalar, %i.dyn
  %i.eiv = insertelement <8 x i32> poison, i32 %.scalar521, i64 0
  %i.eiw = shufflevector <8 x i32> %i.eiv, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.eix = add <8 x i32> %i.eiw, %i.dzc           ; 8 uses
  %i.eiy = extractelement <8 x i32> %i.eix, i64 0
end_hunk_26
begin_hunk_27
  %invariant.gep404 = getelementptr [4 x i8], ptr %f2.host, i64 %i.nfc
  %i.nfd = trunc i64 %i.eky to i32
  %i.nfe = mul i32 %input.stride.1, %i.nfd
  br label %"for local_laplacian.s0.v3.v384"

"for local_laplacian.s0.v3.v384":                 ; preds = %"for local_laplacian.s0.v3.v384.preheader", %"end for local_laplacian.s0.v589"
end_hunk_27
begin_hunk_28
  %a1016 = tail call i32 @llvm.smin.i32(i32 %b1019.pre-phi, i32 %a1017)
  %i.nfz = tail call i32 @llvm.smax.i32(i32 %a1016, i32 %b1146)
  %i.nga = mul nsw i32 %i.nfz, %input.stride.2
  %.scalar522 = add i32 %i.nga, %i.nfe
  %.scalar523 = sub i32 %.scalar522, %.pre-phi546
  %i.ngb = insertelement <8 x i32> poison, i32 %.scalar523, i64 0
  %i.ngc = shufflevector <8 x i32> %i.ngb, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ngd = add <8 x i32> %i.ngc, %i.nfm           ; 8 uses
  %i.nge = extractelement <8 x i32> %i.ngd, i64 0
end_hunk_28
begin_hunk_29
  %invariant.gep412 = getelementptr [4 x i8], ptr %f2.host, i64 %i.nio
  %i.nip = trunc i64 %i.eky to i32
  %i.niq = mul i32 %input.stride.1, %i.nip
  br label %"for local_laplacian.s0.v3.v3102"

"for local_laplacian.s0.v594":                    ; preds = %"for local_laplacian.s0.v594", %"for local_laplacian.s0.v594.preheader"
end_hunk_29
begin_hunk_30
  %a1040 = tail call i32 @llvm.smin.i32(i32 %b1019.pre-phi, i32 %a1041)
  %i.nlc = tail call i32 @llvm.smax.i32(i32 %a1040, i32 %b1146)
  %i.nld = mul nsw i32 %i.nlc, %input.stride.2
  %.scalar524 = add i32 %i.nld, %i.niq
  %.scalar525 = sub i32 %.scalar524, %.pre-phi546
  %i.nle = insertelement <8 x i32> poison, i32 %.scalar525, i64 0
  %i.nlf = shufflevector <8 x i32> %i.nle, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.nlg = add <8 x i32> %i.nlf, %i.nky           ; 8 uses
  %i.nlh = extractelement <8 x i32> %i.nlg, i64 0
end_hunk_30
begin_hunk_31
  %i.nvs = mul i32 %i.nvr, %i.nre
  %i.nvt = sub i32 %i.nvs, %f75.v3.min_realized
  %i.nvu = add nsw i32 %t2863.us, %i.nro
  %t2870.us.a = mul nsw i32 %i.nvu, %i.nrl
  %i.nvv = sub nsw i32 %i.nvp, %i.nrn
  %t2872.us = mul nsw i32 %i.nvv, %i.nrl
  %i.nvw = add i32 %t2863.us, %i.nrt
  %t2877.us = mul nsw i32 %i.nvw, %i.nrs          ; 4 uses
  %i.nvx = sub nsw i32 %i.nvp, %f8.v4.min_realized
  %t2882.us = mul nsw i32 %i.nvx, %i.nrs          ; 4 uses
  %i.nvy = sext i32 %t2872.us to i64              ; 4 uses
  %i.nvz = sext i32 %t2870.us.a to i64            ; 4 uses
  %i.nwa = sub nsw i64 %indvars.iv, %i.nsd
  %i.nwb = mul nsw i64 %i.nwa, %i.nsa
  %invariant.gep.us = getelementptr [4 x i8], ptr %i.nni, i64 %i.nwb
  %16 = trunc i64 %indvars.iv to i32
  %17 = sub i32 %16, %f7.v4.min_realized
  %18 = mul i32 %17, %f7.stride.1
  br label %"for f129.s0.v3.v3148.us"

"for f129.s0.v3.v3148.us":                        ; preds = %"for f129.s0.v4145.us", %"for f129.s0.v3.v3148.us"
end_hunk_31
begin_hunk_32
  %i.nwm = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %a1088.us, <4 x i32> zeroinitializer) ; 2 uses
  %i.nwn = uitofp nneg <4 x i32> %i.nwm to <4 x float>
  %t2868.us = fsub <4 x float> %t2866.us, %i.nwn  ; 2 uses
  %19 = sub nsw i32 %f129.s0.v3.v363.base151.us, %f7.v3.min_realized
  %t2873.us = add nsw i32 %19, %18                ; 2 uses
  %t2875.us = sub nsw <4 x i32> %i.nwm, %i.nrr    ; 3 uses
  %t2879.us = mul nsw <4 x i32> %t2875.us, %i.nrv ; 4 uses
  %i.nwo = add nsw <4 x i32> %t2875.us, splat (i32 1) ; 2 uses
end_hunk_32
begin_hunk_33
  %i.oti = mul i32 %i.oth, %i.nsh
  %i.otj = sub i32 %i.oti, %f74.v3.min_realized
  %i.otk = add nsw i32 %t2901.us, %i.nsi
  %t2908.us.a = mul nsw i32 %i.otk, %i.dq
  %i.otl = sub nsw i32 %i.otf, %i.nsc
  %t2910.us = mul nsw i32 %i.otl, %i.dq
  %i.otm = add i32 %t2901.us, %i.nsj
  %i.otn = mul nsw i32 %i.otm, %f7.stride.1       ; 4 uses
  %i.oto = sub nsw i32 %i.otf, %f7.v4.min_realized
  %i.otp = mul nsw i32 %i.oto, %f7.stride.1       ; 4 uses
  %i.otq = sext i32 %t2910.us to i64              ; 4 uses
  %i.otr = sext i32 %t2908.us.a to i64            ; 4 uses
  %i.ots = sub nsw i64 %indvars.iv475, %i.nsr
  %i.ott = mul nsw i64 %i.ots, %i.nso
  %invariant.gep.us320 = getelementptr [4 x i8], ptr %i.nof, i64 %i.ott
  %20 = trunc i64 %indvars.iv475 to i32
  %21 = sub i32 %20, %f6.v4.min_realized
  %22 = mul i32 %21, %f6.stride.1
  br label %"for f128.s0.v3.v3158.us"

"for f128.s0.v3.v3158.us":                        ; preds = %"for f128.s0.v4155.us", %"for f128.s0.v3.v3158.us"
end_hunk_33
begin_hunk_34
  %i.oue = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %a1097.us, <4 x i32> zeroinitializer) ; 2 uses
  %i.ouf = uitofp nneg <4 x i32> %i.oue to <4 x float>
  %t2906.us = fsub <4 x float> %t2904.us, %i.ouf  ; 2 uses
  %23 = sub nsw i32 %f128.s0.v3.v343.base161.us, %f6.v3.min_realized
  %t2911.us = add nsw i32 %23, %22                ; 2 uses
  %t2913.us = sub nsw <4 x i32> %i.oue, %i.nrr    ; 3 uses
  %i.oug = sub nsw i32 %t2902.us, %f7.v3.min_realized ; 2 uses
  %t2916.us = add nsw i32 %i.oug, %i.otn
end_hunk_34
begin_hunk_35
  %i.pqs = mul i32 %i.pqr, %i.nsv
  %i.pqt = sub i32 %i.pqs, %f73.v3.min_realized
  %i.pqu = add nsw i32 %t2939.us, %i.nsw
  %t2946.us.a = mul nsw i32 %i.pqu, %i.nny
  %i.pqv = sub nsw i32 %i.pqp, %i.nsq
  %t2948.us = mul nsw i32 %i.pqv, %i.nny
  %i.pqw = add i32 %t2939.us, %i.nsx
  %i.pqx = mul nsw i32 %i.pqw, %f6.stride.1       ; 4 uses
  %i.pqy = sub nsw i32 %i.pqp, %f6.v4.min_realized
  %i.pqz = mul nsw i32 %i.pqy, %f6.stride.1       ; 4 uses
  %i.pra = sext i32 %t2948.us to i64              ; 4 uses
  %i.prb = sext i32 %t2946.us.a to i64            ; 4 uses
  %i.prc = sub nsw i64 %indvars.iv479, %i.ntd
  %i.prd = mul nsw i64 %i.prc, %i.ntc
  %invariant.gep.us324 = getelementptr [4 x i8], ptr %i.npr, i64 %i.prd
  %24 = trunc i64 %indvars.iv479 to i32
  %25 = sub i32 %24, %f5.v4.min_realized
  %26 = mul i32 %25, %f5.stride.1
  br label %"for f127.s0.v3.v3168.us"

"for f127.s0.v3.v3168.us":                        ; preds = %"for f127.s0.v4165.us", %"for f127.s0.v3.v3168.us"
end_hunk_35
begin_hunk_36
  %i.pro = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %a1106.us, <4 x i32> zeroinitializer) ; 2 uses
  %i.prp = uitofp nneg <4 x i32> %i.pro to <4 x float>
  %t2944.us = fsub <4 x float> %t2942.us, %i.prp  ; 2 uses
  %27 = sub nsw i32 %f127.s0.v3.v323.base171.us, %f5.v3.min_realized
  %t2949.us = add nsw i32 %27, %26                ; 2 uses
  %t2951.us = sub nsw <4 x i32> %i.pro, %i.nrr    ; 3 uses
  %i.prq = sub nsw i32 %t2940.us, %f6.v3.min_realized ; 2 uses
  %t2954.us = add nsw i32 %i.prq, %i.pqx
end_hunk_36
begin_hunk_37
  %i.qob = mul i32 %i.qoa, %i.nti
  %i.qoc = sub i32 %i.qob, %f72.v3.min_realized
  %i.qod = add nsw i32 %t2977.us, %i.ntj
  %t2984.us.a = mul nsw i32 %i.qod, %i.npc
  %i.qoe = sub nsw i32 %i.qny, %f127.v4.min_realized124
  %t2986.us = mul nsw i32 %i.qoe, %i.npc
  %i.qof = add i32 %t2977.us, %i.ntk
  %i.qog = mul nsw i32 %i.qof, %f5.stride.1       ; 4 uses
  %i.qoh = sub nsw i32 %i.qny, %f5.v4.min_realized
  %i.qoi = mul nsw i32 %i.qoh, %f5.stride.1       ; 4 uses
  %i.qoj = sext i32 %t2986.us to i64              ; 4 uses
  %i.qok = sext i32 %t2984.us.a to i64            ; 4 uses
  %i.qol = sub nsw i64 %indvars.iv483, %i.ntq
  %i.qom = mul nsw i64 %i.qol, %i.ntp
  %invariant.gep.us328 = getelementptr [4 x i8], ptr %i.nqu, i64 %i.qom
  %28 = trunc i64 %indvars.iv483 to i32
  %29 = sub i32 %28, %f4.v4.min_realized
  %30 = mul i32 %29, %f4.stride.1
  br label %"for f126.s0.v3.v3178.us"

"for f126.s0.v3.v3178.us":                        ; preds = %"for f126.s0.v4175.us", %"for f126.s0.v3.v3178.us"
end_hunk_37
begin_hunk_38
  %i.qox = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %a1115.us, <4 x i32> zeroinitializer) ; 2 uses
  %i.qoy = uitofp nneg <4 x i32> %i.qox to <4 x float>
  %t2982.us = fsub <4 x float> %t2980.us, %i.qoy  ; 2 uses
  %31 = sub nsw i32 %f126.s0.v3.v303.base181.us, %f4.v3.min_realized
  %t2987.us = add nsw i32 %31, %30                ; 2 uses
  %t2989.us = sub nsw <4 x i32> %i.qox, %i.nrr    ; 3 uses
  %i.qoz = sub nsw i32 %t2978.us, %f5.v3.min_realized ; 2 uses
  %t2992.us = add nsw i32 %i.qoz, %i.qog
end_hunk_38
begin_hunk_39
  %a1146 = tail call i32 @llvm.smin.i32(i32 %b1149, i32 %i.nvf)
  %i.sir = tail call i32 @llvm.smax.i32(i32 %a1146, i32 %b1148)
  %i.sis = mul nsw i32 %i.sir, %input.stride.1
  br label %"for local_laplacian.s0.v3.v3195"

"for local_laplacian.s0.v3.v3195":                ; preds = %"for local_laplacian.s0.v3.v3195.preheader", %"end for local_laplacian.s0.v5200"
end_hunk_39
begin_hunk_40
  %a1144 = tail call i32 @llvm.smin.i32(i32 %b1147, i32 %a1145)
  %i.sje = tail call i32 @llvm.smax.i32(i32 %a1144, i32 %b1146)
  %i.sjf = mul nsw i32 %i.sje, %input.stride.2
  %.scalar526 = add i32 %i.sjf, %i.sis
  %.scalar527 = sub i32 %.scalar526, %i.nut
  %i.sjg = insertelement <8 x i32> poison, i32 %.scalar527, i64 0
  %i.sjh = shufflevector <8 x i32> %i.sjg, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.sji = add <8 x i32> %i.sjh, %i.sja           ; 8 uses
  %i.sjj = extractelement <8 x i32> %i.sji, i64 0
end_hunk_40
