inline.NumInlined: 233
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 131
loop-unroll.NumUnrolled: 135
begin_hunk_0_@_ZN4ncnnL29unpack_output_tile_dequantizeERKNS_3MatES2_RS0_iiiiiS2_ffi:bb.a
bb.do:                                            ; preds = %.thread3486.i
  %i.amx = fmul fast <4 x float> %.43319.i, %i.bv
  %i.amy = fmul fast <4 x float> %.43313.i, %i.bv
  %i.amz = fmul fast <4 x float> %.43307.i, %i.bv
  %i.ana = fmul fast <4 x float> %.43301.i, %i.bv
  %i.anb = fmul fast <4 x float> %.43295.i, %i.bv
  %i.anc = fmul fast <4 x float> %.43289.i, %i.bv
  %i.and = fmul fast <4 x float> %.43283.i, %i.bv
  %i.ane = fmul fast <4 x float> %.43277.i, %i.bv
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %.thread3486.i
  %.53320.i = phi nsz <4 x float> [ %i.amx, %bb.do ], [ %.43319.i, %.thread3486.i ] ; 8 uses
  %.53314.i = phi nsz <4 x float> [ %i.amy, %bb.do ], [ %.43313.i, %.thread3486.i ] ; 8 uses
  %.53308.i = phi nsz <4 x float> [ %i.amz, %bb.do ], [ %.43307.i, %.thread3486.i ] ; 8 uses
  %.53302.i = phi nsz <4 x float> [ %i.ana, %bb.do ], [ %.43301.i, %.thread3486.i ] ; 8 uses
  %.53296.i = phi nsz <4 x float> [ %i.anb, %bb.do ], [ %.43295.i, %.thread3486.i ] ; 8 uses
  %.53290.i = phi nsz <4 x float> [ %i.anc, %bb.do ], [ %.43289.i, %.thread3486.i ] ; 8 uses
  %.53284.i = phi nsz <4 x float> [ %i.and, %bb.do ], [ %.43283.i, %.thread3486.i ] ; 8 uses
  %.53278.i = phi nsz <4 x float> [ %i.ane, %bb.do ], [ %.43277.i, %.thread3486.i ] ; 8 uses
  br i1 %.not2029.i, label %bb.dv, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  switch i32 %i.c, label %bb.du [
    i32 8, label %bb.dr
    i32 4, label %bb.ds
    i32 1, label %bb.dt
  ]

bb.dr:                                            ; preds = %bb.dq
  %i.anf = shufflevector <4 x float> %.53320.i, <4 x float> %.53314.i, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ang = shufflevector <4 x float> %.53308.i, <4 x float> %.53302.i, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.anh = shufflevector <4 x float> %.53320.i, <4 x float> %.53314.i, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ani = shufflevector <4 x float> %.53308.i, <4 x float> %.53302.i, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.anj = shufflevector <4 x float> %i.anf, <4 x float> %i.ang, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ank = shufflevector <4 x float> %i.ang, <4 x float> %i.anf, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.anl = shufflevector <4 x float> %i.anh, <4 x float> %i.ani, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.anm = shufflevector <4 x float> %i.ani, <4 x float> %i.anh, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.ann = shufflevector <4 x float> %.53296.i, <4 x float> %.53290.i, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ano = shufflevector <4 x float> %.53284.i, <4 x float> %.53278.i, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.anp = shufflevector <4 x float> %.53296.i, <4 x float> %.53290.i, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.anq = shufflevector <4 x float> %.53284.i, <4 x float> %.53278.i, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.anr = shufflevector <4 x float> %i.ann, <4 x float> %i.ano, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ans = shufflevector <4 x float> %i.ano, <4 x float> %i.ann, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.ant = shufflevector <4 x float> %i.anp, <4 x float> %i.anq, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.anu = shufflevector <4 x float> %i.anq, <4 x float> %i.anp, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  store <4 x float> %i.anj, ptr %.119443750.i, align 16, !tbaa !116
  %i.anv = getelementptr inbounds nuw i8, ptr %.119443750.i, i64 16
  store <4 x float> %i.anr, ptr %i.anv, align 16, !tbaa !116
  %i.anw = getelementptr inbounds nuw i8, ptr %.119443750.i, i64 32
  store <4 x float> %i.ank, ptr %i.anw, align 16, !tbaa !116
  %i.anx = getelementptr inbounds nuw i8, ptr %.119443750.i, i64 48
  store <4 x float> %i.ans, ptr %i.anx, align 16, !tbaa !116
  %i.any = getelementptr inbounds nuw i8, ptr %.119443750.i, i64 64
  store <4 x float> %i.anl, ptr %i.any, align 16, !tbaa !116
  %i.anz = getelementptr inbounds nuw i8, ptr %.119443750.i, i64 80
  store <4 x float> %i.ant, ptr %i.anz, align 16, !tbaa !116
  %i.aoa = getelementptr inbounds nuw i8, ptr %.119443750.i, i64 96
  store <4 x float> %i.anm, ptr %i.aoa, align 16, !tbaa !116
  %i.aob = getelementptr inbounds nuw i8, ptr %.119443750.i, i64 112
  store <4 x float> %i.anu, ptr %i.aob, align 16, !tbaa !116
  br label %bb.du

bb.ds:                                            ; preds = %bb.dq
  %i.aoc = shufflevector <4 x float> %.53320.i, <4 x float> %.53314.i, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.aod = shufflevector <4 x float> %.53308.i, <4 x float> %.53302.i, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.aoe = shufflevector <4 x float> %.53320.i, <4 x float> %.53314.i, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.aof = shufflevector <4 x float> %.53308.i, <4 x float> %.53302.i, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.aog = shufflevector <4 x float> %i.aoc, <4 x float> %i.aod, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.aoh = shufflevector <4 x float> %i.aod, <4 x float> %i.aoc, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.aoi = shufflevector <4 x float> %i.aoe, <4 x float> %i.aof, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.aoj = shufflevector <4 x float> %i.aof, <4 x float> %i.aoe, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.aok = shufflevector <4 x float> %.53296.i, <4 x float> %.53290.i, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.aol = shufflevector <4 x float> %.53284.i, <4 x float> %.53278.i, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.aom = shufflevector <4 x float> %.53296.i, <4 x float> %.53290.i, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.aon = shufflevector <4 x float> %.53284.i, <4 x float> %.53278.i, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.aoo = shufflevector <4 x float> %i.aok, <4 x float> %i.aol, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.aop = shufflevector <4 x float> %i.aol, <4 x float> %i.aok, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.aoq = shufflevector <4 x float> %i.aom, <4 x float> %i.aon, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.aor = shufflevector <4 x float> %i.aon, <4 x float> %i.aom, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  store <4 x float> %i.aog, ptr %.119443750.i, align 16, !tbaa !116
  %i.aos = getelementptr inbounds nuw i8, ptr %.119443750.i, i64 16
  store <4 x float> %i.aoh, ptr %i.aos, align 16, !tbaa !116
  %i.aot = getelementptr inbounds nuw i8, ptr %.119443750.i, i64 32
  store <4 x float> %i.aoi, ptr %i.aot, align 16, !tbaa !116
  %i.aou = getelementptr inbounds nuw i8, ptr %.119443750.i, i64 48
  store <4 x float> %i.aoj, ptr %i.aou, align 16, !tbaa !116
  %i.aov = getelementptr inbounds nuw i8, ptr %.119443750.i, i64 %.idx2056.i ; 4 uses
  store <4 x float> %i.aoo, ptr %i.aov, align 16, !tbaa !116
  %i.aow = getelementptr inbounds nuw i8, ptr %i.aov, i64 16
  store <4 x float> %i.aop, ptr %i.aow, align 16, !tbaa !116
  %i.aox = getelementptr inbounds nuw i8, ptr %i.aov, i64 32
  store <4 x float> %i.aoq, ptr %i.aox, align 16, !tbaa !116
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aov, i64 48
  store <4 x float> %i.aor, ptr %i.aoy, align 16, !tbaa !116
  br label %bb.du

bb.dt:                                            ; preds = %bb.dq
  store <4 x float> %.53320.i, ptr %.119443750.i, align 1, !tbaa !116
  %i.aoz = getelementptr inbounds nuw [4 x i8], ptr %.119443750.i, i64 %i.l
  store <4 x float> %.53314.i, ptr %i.aoz, align 1, !tbaa !116
  %i.apa = getelementptr inbounds nuw i8, ptr %.119443750.i, i64 %.idx2054.i
  store <4 x float> %.53308.i, ptr %i.apa, align 1, !tbaa !116
  %i.apb = getelementptr inbounds nuw i8, ptr %.119443750.i, i64 %.idx2055.i
  store <4 x float> %.53302.i, ptr %i.apb, align 1, !tbaa !116
  %i.apc = getelementptr inbounds nuw i8, ptr %.119443750.i, i64 %.idx2056.i
  store <4 x float> %.53296.i, ptr %i.apc, align 1, !tbaa !116
  %i.apd = getelementptr inbounds nuw i8, ptr %.119443750.i, i64 %.idx2057.i
  store <4 x float> %.53290.i, ptr %i.apd, align 1, !tbaa !116
  %i.ape = getelementptr inbounds nuw i8, ptr %.119443750.i, i64 %.idx2058.i
  store <4 x float> %.53284.i, ptr %i.ape, align 1, !tbaa !116
  %i.apf = getelementptr inbounds nuw i8, ptr %.119443750.i, i64 %.idx2059.i
  store <4 x float> %.53278.i, ptr %i.apf, align 1, !tbaa !116
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds, %bb.dr, %bb.dq
  %i.apg = getelementptr inbounds nuw i8, ptr %.119443750.i, i64 %.idx2060.i
  br label %bb.dx

bb.dv:                                            ; preds = %bb.dp
  switch i32 %i.c, label %bb.dx [
    i32 4, label %.thread3497.i
    i32 1, label %bb.dw
  ]

.thread3497.i:                                    ; preds = %bb.dv
  store <4 x float> %.53320.i, ptr %.119443750.i, align 16, !tbaa !116
  %i.aph = getelementptr inbounds nuw i8, ptr %.119443750.i, i64 16
  store <4 x float> %.53314.i, ptr %i.aph, align 16, !tbaa !116
  %i.api = getelementptr inbounds nuw i8, ptr %.119443750.i, i64 32
  store <4 x float> %.53308.i, ptr %i.api, align 16, !tbaa !116
  %i.apj = getelementptr inbounds nuw i8, ptr %.119443750.i, i64 48
  store <4 x float> %.53302.i, ptr %i.apj, align 16, !tbaa !116
  %i.apk = getelementptr inbounds nuw i8, ptr %.119443750.i, i64 64
  store <4 x float> %.53296.i, ptr %i.apk, align 16, !tbaa !116
  %i.apl = getelementptr inbounds nuw i8, ptr %.119443750.i, i64 80
  store <4 x float> %.53290.i, ptr %i.apl, align 16, !tbaa !116
  %i.apm = getelementptr inbounds nuw i8, ptr %.119443750.i, i64 96
  store <4 x float> %.53284.i, ptr %i.apm, align 16, !tbaa !116
  %i.apn = getelementptr inbounds nuw i8, ptr %.119443750.i, i64 112
  store <4 x float> %.53278.i, ptr %i.apn, align 16, !tbaa !116
  %i.apo = getelementptr inbounds nuw i8, ptr %.119443750.i, i64 128
  br label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  %i.app = shufflevector <4 x float> %.53320.i, <4 x float> %.53314.i, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.apq = shufflevector <4 x float> %.53308.i, <4 x float> %.53302.i, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.apr = shufflevector <4 x float> %.53320.i, <4 x float> %.53314.i, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.aps = shufflevector <4 x float> %.53308.i, <4 x float> %.53302.i, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.apt = shufflevector <4 x float> %i.app, <4 x float> %i.apq, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.apu = shufflevector <4 x float> %i.apq, <4 x float> %i.app, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.apv = shufflevector <4 x float> %i.apr, <4 x float> %i.aps, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.apw = shufflevector <4 x float> %i.aps, <4 x float> %i.apr, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.apx = shufflevector <4 x float> %.53296.i, <4 x float> %.53290.i, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.apy = shufflevector <4 x float> %.53284.i, <4 x float> %.53278.i, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.apz = shufflevector <4 x float> %.53296.i, <4 x float> %.53290.i, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.aqa = shufflevector <4 x float> %.53284.i, <4 x float> %.53278.i, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.aqb = shufflevector <4 x float> %i.apx, <4 x float> %i.apy, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.aqc = shufflevector <4 x float> %i.apy, <4 x float> %i.apx, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.aqd = shufflevector <4 x float> %i.apz, <4 x float> %i.aqa, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.aqe = shufflevector <4 x float> %i.aqa, <4 x float> %i.apz, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  store <4 x float> %i.apt, ptr %.119443750.i, align 1, !tbaa !116
  %i.aqf = getelementptr inbounds nuw i8, ptr %.119443750.i, i64 16
  store <4 x float> %i.aqb, ptr %i.aqf, align 1, !tbaa !116
  %i.aqg = getelementptr inbounds nuw [4 x i8], ptr %.119443750.i, i64 %i.l ; 2 uses
  store <4 x float> %i.apu, ptr %i.aqg, align 1, !tbaa !116
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.aqg, i64 16
  store <4 x float> %i.aqc, ptr %i.aqh, align 1, !tbaa !116
  %i.aqi = getelementptr inbounds nuw i8, ptr %.119443750.i, i64 %.idx2054.i ; 2 uses
  store <4 x float> %i.apv, ptr %i.aqi, align 1, !tbaa !116
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.aqi, i64 16
  store <4 x float> %i.aqd, ptr %i.aqj, align 1, !tbaa !116
  %i.aqk = getelementptr inbounds nuw i8, ptr %.119443750.i, i64 %.idx2055.i ; 2 uses
  store <4 x float> %i.apw, ptr %i.aqk, align 1, !tbaa !116
  %i.aql = getelementptr inbounds nuw i8, ptr %i.aqk, i64 16
  store <4 x float> %i.aqe, ptr %i.aql, align 1, !tbaa !116
  %i.aqm = getelementptr inbounds nuw i8, ptr %.119443750.i, i64 32
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %.thread3497.i, %bb.dv, %bb.du
  %.31946.i = phi ptr [ %i.apg, %bb.du ], [ %i.aqm, %bb.dw ], [ %.119443750.i, %bb.dv ], [ %i.apo, %.thread3497.i ] ; 2 uses
  %i.aqn = getelementptr inbounds nuw i8, ptr %.618593751.i, i64 128 ; 2 uses
  %i.aqo = add nuw nsw i32 %.019563749.i, 8       ; 2 uses
  %i.aqp = or disjoint i32 %i.aqo, 7
  %i.aqq = icmp slt i32 %i.aqp, %7
  br i1 %i.aqq, label %.lr.ph3753.i, label %.preheader3687.i, !llvm.loop !733

.preheader3686.i:                                 ; preds = %bb.er, %.preheader3687.i
  %.83329.lcssa.i = phi <4 x float> [ %.33324.lcssa.i, %.preheader3687.i ], [ %.113332.i, %bb.er ] ; 2 uses
  %.11957.lcssa.i = phi i32 [ %.01956.lcssa.i, %.preheader3687.i ], [ %i.avc, %bb.er ] ; 3 uses
  %.41947.lcssa.i = phi ptr [ %.11944.lcssa.i, %.preheader3687.i ], [ %.61949.i, %bb.er ] ; 2 uses
  %.71860.lcssa.i = phi ptr [ %.61859.lcssa.i, %.preheader3687.i ], [ %i.avb, %bb.er ] ; 2 uses
  %.28.lcssa.i = phi ptr [ %.24.lcssa.i, %.preheader3687.i ], [ %.31.i, %bb.er ] ; 2 uses
  %i.aqr = or disjoint i32 %.11957.lcssa.i, 1
  %i.aqs = icmp slt i32 %i.aqr, %7
  br i1 %i.aqs, label %.lr.ph3775.i, label %.preheader3685.i

.lr.ph3764.i:                                     ; preds = %.preheader3687.i, %bb.er
  %.283763.i = phi ptr [ %.31.i, %bb.er ], [ %.24.lcssa.i, %.preheader3687.i ] ; 14 uses
  %.718603762.i = phi ptr [ %i.avb, %bb.er ], [ %.61859.lcssa.i, %.preheader3687.i ] ; 5 uses
  %.419473761.i = phi ptr [ %.61949.i, %bb.er ], [ %.11944.lcssa.i, %.preheader3687.i ] ; 18 uses
  %.119573760.i = phi i32 [ %i.avc, %bb.er ], [ %.01956.lcssa.i, %.preheader3687.i ]
  %.833293759.i = phi <4 x float> [ %.113332.i, %bb.er ], [ %.33324.lcssa.i, %.preheader3687.i ] ; 12 uses
  %i.aqt = load <4 x i32>, ptr %.718603762.i, align 16, !tbaa !116
  %i.aqu = sitofp fast <4 x i32> %i.aqt to <4 x float> ; 2 uses
  %i.aqv = getelementptr inbounds nuw i8, ptr %.718603762.i, i64 16
  %i.aqw = load <4 x i32>, ptr %i.aqv, align 16, !tbaa !116
  %i.aqx = getelementptr inbounds nuw i8, ptr %.718603762.i, i64 32
  %i.aqy = load <4 x i32>, ptr %i.aqx, align 16, !tbaa !116
  %i.aqz = sitofp fast <4 x i32> %i.aqy to <4 x float> ; 2 uses
  %i.ara = getelementptr inbounds nuw i8, ptr %.718603762.i, i64 48
  %i.arb = load <4 x i32>, ptr %i.ara, align 16, !tbaa !116
  %i.arc = sitofp <4 x i32> %i.aqw to <4 x float>
  %i.ard = shufflevector <4 x float> %i.arc, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %i.are = sitofp <4 x i32> %i.arb to <4 x float>
  %i.arf = shufflevector <4 x float> %i.are, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %i.arg = shufflevector <4 x float> %i.aqu, <4 x float> %i.arf, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.arh = shufflevector <4 x float> %i.aqu, <4 x float> %i.arf, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ari = shufflevector <4 x float> %i.aqz, <4 x float> %i.ard, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.arj = shufflevector <4 x float> %i.aqz, <4 x float> %i.ard, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ark = shufflevector <4 x float> %i.arg, <4 x float> %i.ari, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.arl = shufflevector <4 x float> %i.arg, <4 x float> %i.ari, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.arm = shufflevector <4 x float> %i.arj, <4 x float> %i.arh, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.arn = shufflevector <4 x float> %i.arj, <4 x float> %i.arh, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.aro = shufflevector <4 x float> %i.arl, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.arp = shufflevector <4 x float> %i.arn, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.arq = fmul fast <4 x float> %i.agc, %i.ark   ; 7 uses
  %i.arr = fmul fast <4 x float> %i.aro, %i.agc   ; 7 uses
  %i.ars = fmul fast <4 x float> %i.agc, %i.arm   ; 7 uses
  %i.art = fmul fast <4 x float> %i.arp, %i.agc   ; 7 uses
  %.not2038.i = icmp eq ptr %.283763.i, null
  br i1 %.not2038.i, label %.thread3512.i, label %bb.dy

bb.dy:                                            ; preds = %.lr.ph3764.i
  br i1 %i.bk, label %.thread3499.i, label %bb.dz

.thread3499.i:                                    ; preds = %bb.dy
  %i.aru = fadd fast <4 x float> %i.arq, %.833293759.i
  %i.arv = fadd fast <4 x float> %i.arr, %.833293759.i
  %i.arw = fadd fast <4 x float> %i.ars, %.833293759.i
  %i.arx = fadd fast <4 x float> %i.art, %.833293759.i
  br label %.thread3512.i

bb.dz:                                            ; preds = %bb.dy
  br i1 %or.cond11.i, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  %i.ary = fadd fast <4 x float> %i.arq, %.833293759.i
  %i.arz = fadd fast <4 x float> %i.arr, %.833293759.i
  %i.asa = fadd fast <4 x float> %i.ars, %.833293759.i
  %i.asb = fadd fast <4 x float> %i.art, %.833293759.i
  br label %.thread3512.i

bb.eb:                                            ; preds = %bb.dz
  switch i32 %3, label %.thread3512.i [
    i32 3, label %bb.ec
    i32 4, label %bb.ei
  ]

bb.ec:                                            ; preds = %bb.eb
  %i.asc = load <4 x float>, ptr %.283763.i, align 1, !tbaa !116 ; 3 uses
  br i1 %i.br, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.asd = getelementptr inbounds nuw i8, ptr %.283763.i, i64 16
  %i.ase = load <4 x float>, ptr %i.asd, align 1, !tbaa !116
  %i.asf = getelementptr inbounds nuw i8, ptr %.283763.i, i64 32
  %i.asg = load <4 x float>, ptr %i.asf, align 1, !tbaa !116
  %i.ash = getelementptr inbounds nuw i8, ptr %.283763.i, i64 48
  %i.asi = load <4 x float>, ptr %i.ash, align 1, !tbaa !116
  br label %bb.ef

bb.ee:                                            ; preds = %bb.ec
  %i.asj = getelementptr inbounds nuw [4 x i8], ptr %.283763.i, i64 %i.u
  %i.ask = load <4 x float>, ptr %i.asj, align 1, !tbaa !116 ; 2 uses
  %i.asl = getelementptr inbounds nuw i8, ptr %.283763.i, i64 %.idx2047.i
  %i.asm = load <4 x float>, ptr %i.asl, align 1, !tbaa !116 ; 2 uses
  %i.asn = getelementptr inbounds nuw i8, ptr %.283763.i, i64 %.idx2048.i
  %i.aso = load <4 x float>, ptr %i.asn, align 1, !tbaa !116 ; 2 uses
  %i.asp = shufflevector <4 x float> %i.asc, <4 x float> %i.ask, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.asq = shufflevector <4 x float> %i.asm, <4 x float> %i.aso, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.asr = shufflevector <4 x float> %i.asc, <4 x float> %i.ask, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ass = shufflevector <4 x float> %i.asm, <4 x float> %i.aso, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ast = shufflevector <4 x float> %i.asp, <4 x float> %i.asq, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.asu = shufflevector <4 x float> %i.asq, <4 x float> %i.asp, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.asv = shufflevector <4 x float> %i.asr, <4 x float> %i.ass, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.asw = shufflevector <4 x float> %i.ass, <4 x float> %i.asr, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ed
  %.sink4012.i = phi i64 [ 16, %bb.ee ], [ 64, %bb.ed ]
  %.93330.i = phi nsz <4 x float> [ %i.ast, %bb.ee ], [ %i.asc, %bb.ed ] ; 4 uses
  %.03231.i = phi nsz <4 x float> [ %i.asu, %bb.ee ], [ %i.ase, %bb.ed ] ; 2 uses
  %.03230.i = phi nsz <4 x float> [ %i.asv, %bb.ee ], [ %i.asg, %bb.ed ] ; 2 uses
  %.03229.i = phi nsz <4 x float> [ %i.asw, %bb.ee ], [ %i.asi, %bb.ed ] ; 2 uses
  %i.asx = getelementptr inbounds nuw i8, ptr %.283763.i, i64 %.sink4012.i ; 2 uses
  br i1 %i.bs, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  %i.asy = fadd fast <4 x float> %.93330.i, %i.arq
  %i.asz = fadd fast <4 x float> %.03231.i, %i.arr
  %i.ata = fadd fast <4 x float> %.03230.i, %i.ars
  %i.atb = fadd fast <4 x float> %.03229.i, %i.art
  br label %.thread3512.i

bb.eh:                                            ; preds = %bb.ef
  %i.atc = fmul fast <4 x float> %.93330.i, %i.bp
  %i.atd = fadd fast <4 x float> %i.atc, %i.arq
  %i.ate = fmul fast <4 x float> %.03231.i, %i.bp
  %i.atf = fadd fast <4 x float> %i.ate, %i.arr
  %i.atg = fmul fast <4 x float> %.03230.i, %i.bp
  %i.ath = fadd fast <4 x float> %i.atg, %i.ars
  %i.ati = fmul fast <4 x float> %.03229.i, %i.bp
  %i.atj = fadd fast <4 x float> %i.ati, %i.art
  br label %.thread3512.i

bb.ei:                                            ; preds = %bb.eb
  %i.atk = load <4 x float>, ptr %.283763.i, align 4, !tbaa !68
  %i.atl = fmul fast <4 x float> %i.atk, %i.ce    ; 4 uses
  %i.atm = shufflevector <4 x float> %i.atl, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.atn = shufflevector <4 x float> %i.atl, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ato = shufflevector <4 x float> %i.atl, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.atp = shufflevector <4 x float> %i.atl, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.atq = fadd fast <4 x float> %i.atm, %i.arq
  %i.atr = fadd fast <4 x float> %i.atn, %i.arr
  %i.ats = fadd fast <4 x float> %i.ato, %i.ars
  %i.att = fadd fast <4 x float> %i.atp, %i.art
  %i.atu = getelementptr inbounds nuw i8, ptr %.283763.i, i64 16
  br label %.thread3512.i

.thread3512.i:                                    ; preds = %bb.ei, %bb.eh, %bb.eg, %bb.eb, %bb.ea, %.thread3499.i, %.lr.ph3764.i
  %.113332.i = phi nsz <4 x float> [ %.833293759.i, %.lr.ph3764.i ], [ %i.atm, %bb.ei ], [ %.833293759.i, %bb.eb ], [ %.93330.i, %bb.eg ], [ %.93330.i, %bb.eh ], [ %.833293759.i, %.thread3499.i ], [ %.833293759.i, %bb.ea ] ; 2 uses
  %.43254.i = phi nsz <4 x float> [ %i.arq, %.lr.ph3764.i ], [ %i.atq, %bb.ei ], [ %i.arq, %bb.eb ], [ %i.asy, %bb.eg ], [ %i.atd, %bb.eh ], [ %i.aru, %.thread3499.i ], [ %i.ary, %bb.ea ] ; 2 uses
  %.43248.i = phi nsz <4 x float> [ %i.arr, %.lr.ph3764.i ], [ %i.atr, %bb.ei ], [ %i.arr, %bb.eb ], [ %i.asz, %bb.eg ], [ %i.atf, %bb.eh ], [ %i.arv, %.thread3499.i ], [ %i.arz, %bb.ea ] ; 2 uses
  %.43242.i = phi nsz <4 x float> [ %i.ars, %.lr.ph3764.i ], [ %i.ats, %bb.ei ], [ %i.ars, %bb.eb ], [ %i.ata, %bb.eg ], [ %i.ath, %bb.eh ], [ %i.arw, %.thread3499.i ], [ %i.asa, %bb.ea ] ; 2 uses
  %.43236.i = phi nsz <4 x float> [ %i.art, %.lr.ph3764.i ], [ %i.att, %bb.ei ], [ %i.art, %bb.eb ], [ %i.atb, %bb.eg ], [ %i.atj, %bb.eh ], [ %i.arx, %.thread3499.i ], [ %i.asb, %bb.ea ] ; 2 uses
  %.31.i = phi ptr [ null, %.lr.ph3764.i ], [ %i.atu, %bb.ei ], [ %.283763.i, %bb.eb ], [ %i.asx, %bb.eg ], [ %i.asx, %bb.eh ], [ %.283763.i, %.thread3499.i ], [ %.283763.i, %bb.ea ] ; 2 uses
  br i1 %i.bt, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %.thread3512.i
  %i.atv = fmul fast <4 x float> %.43254.i, %i.bv
  %i.atw = fmul fast <4 x float> %.43248.i, %i.bv
  %i.atx = fmul fast <4 x float> %.43242.i, %i.bv
  %i.aty = fmul fast <4 x float> %.43236.i, %i.bv
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %.thread3512.i
  %.53255.i = phi nsz <4 x float> [ %i.atv, %bb.ej ], [ %.43254.i, %.thread3512.i ] ; 6 uses
  %.53249.i = phi nsz <4 x float> [ %i.atw, %bb.ej ], [ %.43248.i, %.thread3512.i ] ; 6 uses
  %.53243.i = phi nsz <4 x float> [ %i.atx, %bb.ej ], [ %.43242.i, %.thread3512.i ] ; 6 uses
  %.53237.i = phi nsz <4 x float> [ %i.aty, %bb.ej ], [ %.43236.i, %.thread3512.i ] ; 6 uses
  br i1 %.not2029.i, label %bb.ep, label %bb.el

bb.el:                                            ; preds = %bb.ek
  switch i32 %i.c, label %bb.eo [
    i32 4, label %bb.em
    i32 1, label %12
  ]

bb.em:                                            ; preds = %bb.el
  %i.atz = shufflevector <4 x float> %.53255.i, <4 x float> %.53249.i, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.aua = shufflevector <4 x float> %.53243.i, <4 x float> %.53237.i, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.aub = shufflevector <4 x float> %.53255.i, <4 x float> %.53249.i, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.auc = shufflevector <4 x float> %.53243.i, <4 x float> %.53237.i, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.aud = shufflevector <4 x float> %i.atz, <4 x float> %i.aua, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.aue = shufflevector <4 x float> %i.aua, <4 x float> %i.atz, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.auf = shufflevector <4 x float> %i.aub, <4 x float> %i.auc, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.aug = shufflevector <4 x float> %i.auc, <4 x float> %i.aub, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  store <4 x float> %i.aud, ptr %.419473761.i, align 16, !tbaa !116
  %i.auh = getelementptr inbounds nuw i8, ptr %.419473761.i, i64 16
  store <4 x float> %i.aue, ptr %i.auh, align 16, !tbaa !116
  br label %bb.en

12:                                               ; preds = %bb.el
  store <4 x float> %.53255.i, ptr %.419473761.i, align 1, !tbaa !116
  %13 = getelementptr inbounds nuw [4 x i8], ptr %.419473761.i, i64 %i.l
  store <4 x float> %.53249.i, ptr %13, align 1, !tbaa !116
  br label %bb.en

bb.en:                                            ; preds = %12, %bb.em
  %.sink4019.i = phi i64 [ 32, %bb.em ], [ %.idx2054.i, %12 ]
  %.sink4017.i = phi <4 x float> [ %i.auf, %bb.em ], [ %.53243.i, %12 ]
  %.sink4016.i = phi i64 [ 48, %bb.em ], [ %.idx2055.i, %12 ]
  %.sink4014.i = phi <4 x float> [ %i.aug, %bb.em ], [ %.53237.i, %12 ]
  %i.aui = getelementptr inbounds nuw i8, ptr %.419473761.i, i64 %.sink4019.i
  store <4 x float> %.sink4017.i, ptr %i.aui, align 1, !tbaa !116
  %i.auj = getelementptr inbounds nuw i8, ptr %.419473761.i, i64 %.sink4016.i
  store <4 x float> %.sink4014.i, ptr %i.auj, align 1, !tbaa !116
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.el
  %i.auk = getelementptr inbounds nuw i8, ptr %.419473761.i, i64 %.idx2056.i
  br label %bb.er

bb.ep:                                            ; preds = %bb.ek
  switch i32 %i.c, label %bb.er [
    i32 4, label %.thread3519.i
    i32 1, label %bb.eq
  ]

.thread3519.i:                                    ; preds = %bb.ep
  store <4 x float> %.53255.i, ptr %.419473761.i, align 16, !tbaa !116
  %i.aul = getelementptr inbounds nuw i8, ptr %.419473761.i, i64 16
  store <4 x float> %.53249.i, ptr %i.aul, align 16, !tbaa !116
  %i.aum = getelementptr inbounds nuw i8, ptr %.419473761.i, i64 32
  store <4 x float> %.53243.i, ptr %i.aum, align 16, !tbaa !116
  %i.aun = getelementptr inbounds nuw i8, ptr %.419473761.i, i64 48
  store <4 x float> %.53237.i, ptr %i.aun, align 16, !tbaa !116
  %i.auo = getelementptr inbounds nuw i8, ptr %.419473761.i, i64 64
  br label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %i.aup = shufflevector <4 x float> %.53255.i, <4 x float> %.53249.i, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.auq = shufflevector <4 x float> %.53243.i, <4 x float> %.53237.i, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.aur = shufflevector <4 x float> %.53255.i, <4 x float> %.53249.i, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.aus = shufflevector <4 x float> %.53243.i, <4 x float> %.53237.i, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.aut = shufflevector <4 x float> %i.aup, <4 x float> %i.auq, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.auu = shufflevector <4 x float> %i.auq, <4 x float> %i.aup, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.auv = shufflevector <4 x float> %i.aur, <4 x float> %i.aus, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.auw = shufflevector <4 x float> %i.aus, <4 x float> %i.aur, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  store <4 x float> %i.aut, ptr %.419473761.i, align 1, !tbaa !116
  %i.aux = getelementptr inbounds nuw [4 x i8], ptr %.419473761.i, i64 %i.l
  store <4 x float> %i.auu, ptr %i.aux, align 1, !tbaa !116
  %i.auy = getelementptr inbounds nuw i8, ptr %.419473761.i, i64 %.idx2054.i
  store <4 x float> %i.auv, ptr %i.auy, align 1, !tbaa !116
  %i.auz = getelementptr inbounds nuw i8, ptr %.419473761.i, i64 %.idx2055.i
  store <4 x float> %i.auw, ptr %i.auz, align 1, !tbaa !116
  %i.ava = getelementptr inbounds nuw i8, ptr %.419473761.i, i64 16
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %.thread3519.i, %bb.ep, %bb.eo
  %.61949.i = phi ptr [ %i.auk, %bb.eo ], [ %i.ava, %bb.eq ], [ %.419473761.i, %bb.ep ], [ %i.auo, %.thread3519.i ] ; 2 uses
  %i.avb = getelementptr inbounds nuw i8, ptr %.718603762.i, i64 64 ; 2 uses
  %i.avc = add nuw nsw i32 %.119573760.i, 4       ; 3 uses
  %i.avd = or disjoint i32 %i.avc, 3
  %i.ave = icmp slt i32 %i.avd, %7
  br i1 %i.ave, label %.lr.ph3764.i, label %.preheader3686.i, !llvm.loop !734

.preheader3685.i:                                 ; preds = %bb.fg, %.preheader3686.i
  %.123333.lcssa.i = phi <4 x float> [ %.83329.lcssa.i, %.preheader3686.i ], [ %.153336.i, %bb.fg ]
  %.21958.lcssa.i = phi i32 [ %.11957.lcssa.i, %.preheader3686.i ], [ %i.axw, %bb.fg ] ; 2 uses
  %.71950.lcssa.i = phi ptr [ %.41947.lcssa.i, %.preheader3686.i ], [ %.91952.i, %bb.fg ]
  %.81861.lcssa.i = phi ptr [ %.71860.lcssa.i, %.preheader3686.i ], [ %i.axv, %bb.fg ] ; 2 uses
  %.32.lcssa.i = phi ptr [ %.28.lcssa.i, %.preheader3686.i ], [ %.35.i, %bb.fg ] ; 2 uses
  %i.avf = icmp slt i32 %.21958.lcssa.i, %7
  br i1 %i.avf, label %.lr.ph3786.i, label %._crit_edge3787.i

.lr.ph3775.i:                                     ; preds = %.preheader3686.i, %bb.fg
  %.323774.i = phi ptr [ %.35.i, %bb.fg ], [ %.28.lcssa.i, %.preheader3686.i ] ; 14 uses
  %.818613773.i = phi ptr [ %i.axv, %bb.fg ], [ %.71860.lcssa.i, %.preheader3686.i ] ; 3 uses
  %.719503772.i = phi ptr [ %.91952.i, %bb.fg ], [ %.41947.lcssa.i, %.preheader3686.i ] ; 13 uses
  %.219583771.i = phi i32 [ %i.axw, %bb.fg ], [ %.11957.lcssa.i, %.preheader3686.i ]
  %.1233333770.i = phi <4 x float> [ %.153336.i, %bb.fg ], [ %.83329.lcssa.i, %.preheader3686.i ] ; 8 uses
  %i.avg = load <4 x i32>, ptr %.818613773.i, align 16, !tbaa !116
  %i.avh = getelementptr inbounds nuw i8, ptr %.818613773.i, i64 16
  %i.avi = load <4 x i32>, ptr %i.avh, align 16, !tbaa !116
  %i.avj = sitofp <4 x i32> %i.avg to <4 x float>
  %i.avk = shufflevector <4 x float> %i.avj, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  %i.avl = sitofp <4 x i32> %i.avi to <4 x float>
  %i.avm = shufflevector <4 x float> %i.avl, <4 x float> poison, <4 x i32> <i32 1, i32 3, i32 2, i32 0> ; 2 uses
  %i.avn = shufflevector <4 x float> %i.avk, <4 x float> %i.avm, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.avo = shufflevector <4 x float> %i.avm, <4 x float> %i.avk, <4 x i32> <i32 3, i32 6, i32 2, i32 7>
  %i.avp = fmul fast <4 x float> %i.avn, %i.agc   ; 7 uses
  %i.avq = fmul fast <4 x float> %i.avo, %i.agc   ; 7 uses
  %.not2036.i = icmp eq ptr %.323774.i, null
  br i1 %.not2036.i, label %.thread3530.i, label %bb.es

bb.es:                                            ; preds = %.lr.ph3775.i
  br i1 %i.bk, label %.thread3521.i, label %bb.et

.thread3521.i:                                    ; preds = %bb.es
  %i.avr = fadd fast <4 x float> %i.avp, %.1233333770.i
  %i.avs = fadd fast <4 x float> %i.avq, %.1233333770.i
  br label %.thread3530.i

bb.et:                                            ; preds = %bb.es
  br i1 %or.cond11.i, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  %i.avt = fadd fast <4 x float> %i.avp, %.1233333770.i
  %i.avu = fadd fast <4 x float> %i.avq, %.1233333770.i
  br label %.thread3530.i

bb.ev:                                            ; preds = %bb.et
  switch i32 %3, label %.thread3530.i [
    i32 3, label %bb.ew
    i32 4, label %bb.fc
  ]

bb.ew:                                            ; preds = %bb.ev
  br i1 %i.br, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  %i.avv = load <4 x float>, ptr %.323774.i, align 1, !tbaa !116
  %i.avw = getelementptr inbounds nuw i8, ptr %.323774.i, i64 16
  %i.avx = load <4 x float>, ptr %i.avw, align 1, !tbaa !116
  br label %bb.ez

bb.ey:                                            ; preds = %bb.ew
  %i.avy = load float, ptr %.323774.i, align 4, !tbaa !68
  %i.avz = getelementptr inbounds nuw [4 x i8], ptr %.323774.i, i64 %i.u ; 2 uses
  %i.awa = load float, ptr %i.avz, align 4, !tbaa !68
  %i.awb = getelementptr inbounds nuw i8, ptr %.323774.i, i64 %.idx2047.i ; 2 uses
  %i.awc = load float, ptr %i.awb, align 4, !tbaa !68
  %i.awd = getelementptr inbounds nuw i8, ptr %.323774.i, i64 %.idx2048.i ; 2 uses
  %i.awe = load float, ptr %i.awd, align 4, !tbaa !68
  %i.awf = insertelement <4 x float> poison, float %i.avy, i64 0
  %i.awg = insertelement <4 x float> %i.awf, float %i.awa, i64 1
  %i.awh = insertelement <4 x float> %i.awg, float %i.awc, i64 2
  %i.awi = insertelement <4 x float> %i.awh, float %i.awe, i64 3
  %i.awj = getelementptr inbounds nuw i8, ptr %.323774.i, i64 4
  %i.awk = load float, ptr %i.awj, align 4, !tbaa !68
  %i.awl = getelementptr i8, ptr %i.avz, i64 4
  %i.awm = load float, ptr %i.awl, align 4, !tbaa !68
  %i.awn = getelementptr inbounds nuw i8, ptr %i.awb, i64 4
  %i.awo = load float, ptr %i.awn, align 4, !tbaa !68
  %i.awp = getelementptr i8, ptr %i.awd, i64 4
  %i.awq = load float, ptr %i.awp, align 4, !tbaa !68
  %i.awr = insertelement <4 x float> poison, float %i.awk, i64 0
  %i.aws = insertelement <4 x float> %i.awr, float %i.awm, i64 1
  %i.awt = insertelement <4 x float> %i.aws, float %i.awo, i64 2
  %i.awu = insertelement <4 x float> %i.awt, float %i.awq, i64 3
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.ex
  %.sink4013.i = phi i64 [ 8, %bb.ey ], [ 32, %bb.ex ]
  %.133334.i = phi nsz <4 x float> [ %i.awi, %bb.ey ], [ %i.avv, %bb.ex ] ; 4 uses
  %.03215.i = phi nsz <4 x float> [ %i.awu, %bb.ey ], [ %i.avx, %bb.ex ] ; 2 uses
  %i.awv = getelementptr inbounds nuw i8, ptr %.323774.i, i64 %.sink4013.i ; 2 uses
  br i1 %i.bs, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %bb.ez
  %i.aww = fadd fast <4 x float> %.133334.i, %i.avp
  %i.awx = fadd fast <4 x float> %.03215.i, %i.avq
  br label %.thread3530.i

bb.fb:                                            ; preds = %bb.ez
  %i.awy = fmul fast <4 x float> %.133334.i, %i.bp
  %i.awz = fadd fast <4 x float> %i.awy, %i.avp
  %i.axa = fmul fast <4 x float> %.03215.i, %i.bp
  %i.axb = fadd fast <4 x float> %i.axa, %i.avq
  br label %.thread3530.i

bb.fc:                                            ; preds = %bb.ev
  %i.axc = load <2 x float>, ptr %.323774.i, align 4, !tbaa !68
  %i.axd = fmul fast <2 x float> %i.axc, %i.cg    ; 2 uses
  %i.axe = shufflevector <2 x float> %i.axd, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.axf = shufflevector <2 x float> %i.axd, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.axg = fadd fast <4 x float> %i.axe, %i.avp
  %i.axh = fadd fast <4 x float> %i.axf, %i.avq
  %i.axi = getelementptr inbounds nuw i8, ptr %.323774.i, i64 8
  br label %.thread3530.i

.thread3530.i:                                    ; preds = %bb.fc, %bb.fb, %bb.fa, %bb.ev, %bb.eu, %.thread3521.i, %.lr.ph3775.i
  %.153336.i = phi nsz <4 x float> [ %.1233333770.i, %.lr.ph3775.i ], [ %i.axe, %bb.fc ], [ %.1233333770.i, %bb.ev ], [ %.133334.i, %bb.fa ], [ %.133334.i, %bb.fb ], [ %.1233333770.i, %.thread3521.i ], [ %.1233333770.i, %bb.eu ] ; 2 uses
  %.43226.i = phi nsz <4 x float> [ %i.avp, %.lr.ph3775.i ], [ %i.axg, %bb.fc ], [ %i.avp, %bb.ev ], [ %i.aww, %bb.fa ], [ %i.awz, %bb.fb ], [ %i.avr, %.thread3521.i ], [ %i.avt, %bb.eu ]
  %.43220.i = phi nsz <4 x float> [ %i.avq, %.lr.ph3775.i ], [ %i.axh, %bb.fc ], [ %i.avq, %bb.ev ], [ %i.awx, %bb.fa ], [ %i.axb, %bb.fb ], [ %i.avs, %.thread3521.i ], [ %i.avu, %bb.eu ]
  %.35.i = phi ptr [ null, %.lr.ph3775.i ], [ %i.axi, %bb.fc ], [ %.323774.i, %bb.ev ], [ %i.awv, %bb.fa ], [ %i.awv, %bb.fb ], [ %.323774.i, %.thread3521.i ], [ %.323774.i, %bb.eu ] ; 2 uses
  %.53227.i = fmul reassoc nnan nsz arcp contract afn <4 x float> %.43226.i, %i.bw ; 6 uses
  %.53221.i = fmul reassoc nnan nsz arcp contract afn <4 x float> %.43220.i, %i.bw ; 6 uses
  br i1 %.not2029.i, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %.thread3530.i
  store <4 x float> %.53227.i, ptr %.719503772.i, align 1, !tbaa !116
  %i.axj = getelementptr inbounds nuw [4 x i8], ptr %.719503772.i, i64 %i.l
  store <4 x float> %.53221.i, ptr %i.axj, align 1, !tbaa !116
  %i.axk = getelementptr inbounds nuw i8, ptr %.719503772.i, i64 %.idx2054.i
  br label %bb.fg

bb.fe:                                            ; preds = %.thread3530.i
  switch i32 %i.c, label %bb.fg [
    i32 4, label %.thread3535.i
    i32 1, label %bb.ff
  ]

.thread3535.i:                                    ; preds = %bb.fe
  store <4 x float> %.53227.i, ptr %.719503772.i, align 16, !tbaa !116
  %i.axl = getelementptr inbounds nuw i8, ptr %.719503772.i, i64 16
  store <4 x float> %.53221.i, ptr %i.axl, align 16, !tbaa !116
  %i.axm = getelementptr inbounds nuw i8, ptr %.719503772.i, i64 32
  br label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  %.sroa.02275.0.vec.extract.i = extractelement <4 x float> %.53227.i, i64 0
  store float %.sroa.02275.0.vec.extract.i, ptr %.719503772.i, align 4, !tbaa !68
  %.sroa.72276.16.vec.extract.i = extractelement <4 x float> %.53221.i, i64 0
  %i.axn = getelementptr inbounds nuw i8, ptr %.719503772.i, i64 4
  store float %.sroa.72276.16.vec.extract.i, ptr %i.axn, align 4, !tbaa !68
  %i.axo = getelementptr inbounds nuw [4 x i8], ptr %.719503772.i, i64 %i.l
  %i.axp = shufflevector <4 x float> %.53227.i, <4 x float> %.53221.i, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.axp, ptr %i.axo, align 4, !tbaa !68
end_hunk_0
begin_hunk_1_@_ZN4ncnnL31unpack_output_tile_fp32_to_bf16ERKNS_3MatES2_RS0_iiiiiffii:bb.a
  %i.bga = shufflevector <8 x i16> %i.bfg, <8 x i16> %i.bfm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bgb = shufflevector <8 x i16> %i.bfs, <8 x i16> %i.bfy, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bgc = shufflevector <8 x i16> %i.bfg, <8 x i16> %i.bfm, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bgd = shufflevector <8 x i16> %i.bfs, <8 x i16> %i.bfy, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bge = bitcast <8 x i16> %i.bga to <4 x i32>  ; 2 uses
  %i.bgf = bitcast <8 x i16> %i.bgb to <4 x i32>  ; 2 uses
  %i.bgg = shufflevector <4 x i32> %i.bge, <4 x i32> %i.bgf, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.bgh = bitcast <4 x i32> %i.bgg to <2 x i64>  ; 2 uses
  %i.bgi = bitcast <8 x i16> %i.bgc to <4 x i32>  ; 2 uses
  %i.bgj = bitcast <8 x i16> %i.bgd to <4 x i32>  ; 2 uses
  %i.bgk = shufflevector <4 x i32> %i.bgi, <4 x i32> %i.bgj, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.bgl = shufflevector <4 x i32> %i.bge, <4 x i32> %i.bgf, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.bgm = bitcast <4 x i32> %i.bgl to <2 x i64>  ; 2 uses
  %i.bgn = shufflevector <4 x i32> %i.bgi, <4 x i32> %i.bgj, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.bgo = extractelement <2 x i64> %i.bgh, i64 0
  store i64 %i.bgo, ptr %.127841840, align 1, !tbaa !116
  %i.bgp = getelementptr inbounds nuw i8, ptr %.127841840, i64 8
  %i.bgq = bitcast <4 x i32> %i.bgk to <2 x double> ; 2 uses
  %i.bgr = extractelement <2 x double> %i.bgq, i64 0
  store double %i.bgr, ptr %i.bgp, align 1, !tbaa !116
  %i.bgs = getelementptr inbounds nuw i8, ptr %.127841840, i64 16
  %i.bgt = extractelement <2 x i64> %i.bgh, i64 1
  store i64 %i.bgt, ptr %i.bgs, align 1, !tbaa !116
  %i.bgu = getelementptr inbounds nuw i8, ptr %.127841840, i64 24
  %i.bgv = extractelement <2 x double> %i.bgq, i64 1
  store double %i.bgv, ptr %i.bgu, align 1, !tbaa !116
  %i.bgw = getelementptr inbounds nuw i8, ptr %.127841840, i64 32
  %i.bgx = extractelement <2 x i64> %i.bgm, i64 0
  store i64 %i.bgx, ptr %i.bgw, align 1, !tbaa !116
  %i.bgy = getelementptr inbounds nuw i8, ptr %.127841840, i64 40
  %i.bgz = bitcast <4 x i32> %i.bgn to <2 x double> ; 2 uses
  %i.bha = extractelement <2 x double> %i.bgz, i64 0
  store double %i.bha, ptr %i.bgy, align 1, !tbaa !116
  %i.bhb = getelementptr inbounds nuw i8, ptr %.127841840, i64 48
  %i.bhc = extractelement <2 x i64> %i.bgm, i64 1
  store i64 %i.bhc, ptr %i.bhb, align 1, !tbaa !116
  %i.bhd = getelementptr inbounds nuw i8, ptr %.127841840, i64 56
  %i.bhe = extractelement <2 x double> %i.bgz, i64 1
  store double %i.bhe, ptr %i.bhd, align 1, !tbaa !116
  br label %bb.fo

bb.fm:                                            ; preds = %bb.fl
  %i.bhf = shufflevector <8 x i16> %i.bfg, <8 x i16> %i.bfm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bhg = shufflevector <8 x i16> %i.bfs, <8 x i16> %i.bfy, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bhh = bitcast <8 x i16> %i.bhf to <4 x i32>  ; 2 uses
  %i.bhi = bitcast <8 x i16> %i.bhg to <4 x i32>  ; 2 uses
  %i.bhj = shufflevector <4 x i32> %i.bhh, <4 x i32> %i.bhi, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.bhk = bitcast <4 x i32> %i.bhj to <2 x i64>
  %i.bhl = shufflevector <4 x i32> %i.bhh, <4 x i32> %i.bhi, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.bhm = bitcast <4 x i32> %i.bhl to <2 x i64>
  %i.bhn = extractelement <2 x i64> %i.bhk, i64 0
  store i64 %i.bhn, ptr %.127841840, align 1, !tbaa !116
  %i.bho = getelementptr inbounds nuw i8, ptr %.127841840, i64 8
  %i.bhp = bitcast <4 x i32> %i.bhj to <2 x double>
  %i.bhq = extractelement <2 x double> %i.bhp, i64 1
  store double %i.bhq, ptr %i.bho, align 1, !tbaa !116
  %i.bhr = getelementptr inbounds nuw i8, ptr %.127841840, i64 16
  %i.bhs = extractelement <2 x i64> %i.bhm, i64 0
  store i64 %i.bhs, ptr %i.bhr, align 1, !tbaa !116
  %i.bht = getelementptr inbounds nuw i8, ptr %.127841840, i64 24
  %i.bhu = bitcast <4 x i32> %i.bhl to <2 x double>
  %i.bhv = extractelement <2 x double> %i.bhu, i64 1
  store double %i.bhv, ptr %i.bht, align 1, !tbaa !116
  %i.bhw = shufflevector <8 x i16> %i.bfg, <8 x i16> %i.bfm, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bhx = shufflevector <8 x i16> %i.bfs, <8 x i16> %i.bfy, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bhy = bitcast <8 x i16> %i.bhw to <4 x i32>  ; 2 uses
  %i.bhz = bitcast <8 x i16> %i.bhx to <4 x i32>  ; 2 uses
  %i.bia = shufflevector <4 x i32> %i.bhy, <4 x i32> %i.bhz, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.bib = bitcast <4 x i32> %i.bia to <2 x i64>
  %i.bic = shufflevector <4 x i32> %i.bhy, <4 x i32> %i.bhz, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.bid = bitcast <4 x i32> %i.bic to <2 x i64>
  %i.bie = getelementptr inbounds nuw i8, ptr %.127841840, i64 %.idx2985 ; 4 uses
  %i.bif = extractelement <2 x i64> %i.bib, i64 0
  store i64 %i.bif, ptr %i.bie, align 1, !tbaa !116
  %i.big = getelementptr inbounds nuw i8, ptr %i.bie, i64 8
  %i.bih = bitcast <4 x i32> %i.bia to <2 x double>
  %i.bii = extractelement <2 x double> %i.bih, i64 1
  store double %i.bii, ptr %i.big, align 1, !tbaa !116
  %i.bij = getelementptr inbounds nuw i8, ptr %i.bie, i64 16
  %i.bik = extractelement <2 x i64> %i.bid, i64 0
  store i64 %i.bik, ptr %i.bij, align 1, !tbaa !116
  %i.bil = getelementptr inbounds nuw i8, ptr %i.bie, i64 24
  %i.bim = bitcast <4 x i32> %i.bic to <2 x double>
  %i.bin = extractelement <2 x double> %i.bim, i64 1
  store double %i.bin, ptr %i.bil, align 1, !tbaa !116
  br label %bb.fo

bb.fn:                                            ; preds = %bb.fl
  %i.bio = extractelement <2 x i64> %i.bfh, i64 0
  store i64 %i.bio, ptr %.127841840, align 1, !tbaa !116
  %i.bip = getelementptr inbounds nuw [2 x i8], ptr %.127841840, i64 %i.k
  %i.biq = extractelement <2 x i64> %i.bfn, i64 0
  store i64 %i.biq, ptr %i.bip, align 1, !tbaa !116
  %i.bir = getelementptr inbounds nuw i8, ptr %.127841840, i64 %.idx2983
  %i.bis = extractelement <2 x i64> %i.bft, i64 0
  store i64 %i.bis, ptr %i.bir, align 1, !tbaa !116
  %i.bit = getelementptr inbounds nuw i8, ptr %.127841840, i64 %.idx2984
  %i.biu = extractelement <2 x i64> %i.bfz, i64 0
  store i64 %i.biu, ptr %i.bit, align 1, !tbaa !116
  %i.biv = getelementptr inbounds nuw i8, ptr %.127841840, i64 %.idx2985
  %i.biw = bitcast <8 x i16> %i.bfg to <2 x double>
  %i.bix = extractelement <2 x double> %i.biw, i64 1
  store double %i.bix, ptr %i.biv, align 1, !tbaa !116
  %i.biy = getelementptr inbounds nuw i8, ptr %.127841840, i64 %.idx2986
  %i.biz = bitcast <8 x i16> %i.bfm to <2 x double>
  %i.bja = extractelement <2 x double> %i.biz, i64 1
  store double %i.bja, ptr %i.biy, align 1, !tbaa !116
  %i.bjb = getelementptr inbounds nuw i8, ptr %.127841840, i64 %.idx2987
  %i.bjc = bitcast <8 x i16> %i.bfs to <2 x double>
  %i.bjd = extractelement <2 x double> %i.bjc, i64 1
  store double %i.bjd, ptr %i.bjb, align 1, !tbaa !116
  %i.bje = getelementptr inbounds nuw i8, ptr %.127841840, i64 %.idx2988
  %i.bjf = bitcast <8 x i16> %i.bfy to <2 x double>
  %i.bjg = extractelement <2 x double> %i.bjf, i64 1
  store double %i.bjg, ptr %i.bje, align 1, !tbaa !116
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fl, %.thread1553, %bb.fm, %bb.fn
  %i.bjh = getelementptr inbounds nuw i8, ptr %.127841840, i64 %.idx2989
  br label %bb.fr

bb.fp:                                            ; preds = %bb.fk
  switch i32 %i.b, label %bb.fr [
    i32 4, label %.thread1558
    i32 1, label %bb.fq
  ]

.thread1558:                                      ; preds = %bb.fp
  %i.bji = shufflevector <2 x i64> %i.bfh, <2 x i64> %i.bfn, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %i.bji, ptr %.127841840, align 1, !tbaa !116
  %i.bjj = getelementptr inbounds nuw i8, ptr %.127841840, i64 16
  %i.bjk = shufflevector <2 x i64> %i.bft, <2 x i64> %i.bfz, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %i.bjk, ptr %i.bjj, align 1, !tbaa !116
  %i.bjl = getelementptr inbounds nuw i8, ptr %.127841840, i64 32
  %i.bjm = bitcast <8 x i16> %i.bfg to <2 x double>
  %i.bjn = bitcast <8 x i16> %i.bfm to <2 x double>
  %i.bjo = shufflevector <2 x double> %i.bjm, <2 x double> %i.bjn, <2 x i32> <i32 1, i32 3>
  store <2 x double> %i.bjo, ptr %i.bjl, align 1, !tbaa !116
  %i.bjp = getelementptr inbounds nuw i8, ptr %.127841840, i64 48
  %i.bjq = bitcast <8 x i16> %i.bfs to <2 x double>
  %i.bjr = bitcast <8 x i16> %i.bfy to <2 x double>
  %i.bjs = shufflevector <2 x double> %i.bjq, <2 x double> %i.bjr, <2 x i32> <i32 1, i32 3>
  store <2 x double> %i.bjs, ptr %i.bjp, align 1, !tbaa !116
  %i.bjt = getelementptr inbounds nuw i8, ptr %.127841840, i64 64
  br label %bb.fr

bb.fq:                                            ; preds = %bb.fp
  %i.bju = shufflevector <8 x i16> %i.bfg, <8 x i16> %i.bfm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bjv = shufflevector <8 x i16> %i.bfs, <8 x i16> %i.bfy, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bjw = shufflevector <8 x i16> %i.bfg, <8 x i16> %i.bfm, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bjx = shufflevector <8 x i16> %i.bfs, <8 x i16> %i.bfy, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bjy = bitcast <8 x i16> %i.bju to <4 x i32>  ; 2 uses
  %i.bjz = bitcast <8 x i16> %i.bjv to <4 x i32>  ; 2 uses
  %i.bka = shufflevector <4 x i32> %i.bjy, <4 x i32> %i.bjz, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.bkb = bitcast <4 x i32> %i.bka to <2 x i64>  ; 2 uses
  %i.bkc = bitcast <8 x i16> %i.bjw to <4 x i32>  ; 2 uses
  %i.bkd = bitcast <8 x i16> %i.bjx to <4 x i32>  ; 2 uses
  %i.bke = shufflevector <4 x i32> %i.bkc, <4 x i32> %i.bkd, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.bkf = bitcast <4 x i32> %i.bke to <2 x i64>  ; 2 uses
  %i.bkg = shufflevector <4 x i32> %i.bjy, <4 x i32> %i.bjz, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.bkh = bitcast <4 x i32> %i.bkg to <2 x i64>  ; 2 uses
  %i.bki = shufflevector <4 x i32> %i.bkc, <4 x i32> %i.bkd, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.bkj = bitcast <4 x i32> %i.bki to <2 x i64>  ; 2 uses
  %i.bkk = shufflevector <2 x i64> %i.bkb, <2 x i64> %i.bkf, <2 x i32> <i32 0, i32 2>
  %i.bkl = shufflevector <2 x i64> %i.bkb, <2 x i64> %i.bkf, <2 x i32> <i32 1, i32 3>
  %i.bkm = shufflevector <2 x i64> %i.bkh, <2 x i64> %i.bkj, <2 x i32> <i32 0, i32 2>
  %i.bkn = shufflevector <2 x i64> %i.bkh, <2 x i64> %i.bkj, <2 x i32> <i32 1, i32 3>
  store <2 x i64> %i.bkk, ptr %.127841840, align 1, !tbaa !116
  %i.bko = getelementptr inbounds nuw [2 x i8], ptr %.127841840, i64 %i.k
  store <2 x i64> %i.bkl, ptr %i.bko, align 1, !tbaa !116
  %i.bkp = getelementptr inbounds nuw i8, ptr %.127841840, i64 %.idx2983
  store <2 x i64> %i.bkm, ptr %i.bkp, align 1, !tbaa !116
  %i.bkq = getelementptr inbounds nuw i8, ptr %.127841840, i64 %.idx2984
  store <2 x i64> %i.bkn, ptr %i.bkq, align 1, !tbaa !116
  %i.bkr = getelementptr inbounds nuw i8, ptr %.127841840, i64 16
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fp, %bb.fi, %.thread1558, %.thread1551, %bb.fo, %bb.fq, %bb.fh, %bb.fj
  %.32811 = phi ptr [ %i.bdn, %bb.fh ], [ %i.bfb, %bb.fj ], [ %.128091839, %bb.fi ], [ %.128091839, %bb.fp ], [ %.128091839, %bb.fq ], [ %.128091839, %bb.fo ], [ %i.bdv, %.thread1551 ], [ %.128091839, %.thread1558 ] ; 2 uses
  %.42787 = phi ptr [ %.127841840, %bb.fh ], [ %.127841840, %bb.fj ], [ %.127841840, %bb.fi ], [ %.127841840, %bb.fp ], [ %i.bkr, %bb.fq ], [ %i.bjh, %bb.fo ], [ %.127841840, %.thread1551 ], [ %i.bjt, %.thread1558 ] ; 2 uses
  %i.bks = add nuw nsw i32 %.028211838, 8         ; 2 uses
  %i.bkt = or disjoint i32 %i.bks, 7
  %i.bku = icmp slt i32 %i.bkt, %6
  br i1 %i.bku, label %.lr.ph1843, label %.preheader1774, !llvm.loop !1239

.preheader1773:                                   ; preds = %bb.gt, %.preheader1774
  %.81363.lcssa = phi <4 x float> [ %.31358.lcssa, %.preheader1774 ], [ %.111366, %bb.gt ] ; 2 uses
  %.12822.lcssa = phi i32 [ %.02821.lcssa, %.preheader1774 ], [ %i.bqx, %bb.gt ] ; 3 uses
  %.42812.lcssa = phi ptr [ %.12809.lcssa, %.preheader1774 ], [ %.62814, %bb.gt ] ; 2 uses
  %.52788.lcssa = phi ptr [ %.12784.lcssa, %.preheader1774 ], [ %.82791, %bb.gt ] ; 2 uses
  %.72692.lcssa = phi ptr [ %.62691.lcssa, %.preheader1774 ], [ %i.ble, %bb.gt ] ; 2 uses
  %.28.lcssa = phi ptr [ %.24.lcssa, %.preheader1774 ], [ %.31, %bb.gt ] ; 2 uses
  %i.bkv = or disjoint i32 %.12822.lcssa, 1
  %i.bkw = icmp slt i32 %i.bkv, %6
  br i1 %i.bkw, label %.lr.ph1869, label %.preheader1772

.lr.ph1856:                                       ; preds = %.preheader1774, %bb.gt
  %.281855 = phi ptr [ %.31, %bb.gt ], [ %.24.lcssa, %.preheader1774 ] ; 14 uses
  %.726921854 = phi ptr [ %i.ble, %bb.gt ], [ %.62691.lcssa, %.preheader1774 ] ; 5 uses
  %.527881853 = phi ptr [ %.82791, %bb.gt ], [ %.12784.lcssa, %.preheader1774 ] ; 20 uses
  %.428121852 = phi ptr [ %.62814, %bb.gt ], [ %.12809.lcssa, %.preheader1774 ] ; 22 uses
  %.128221851 = phi i32 [ %i.bqx, %bb.gt ], [ %.02821.lcssa, %.preheader1774 ]
  %.813631850 = phi <4 x float> [ %.111366, %bb.gt ], [ %.31358.lcssa, %.preheader1774 ] ; 12 uses
  %i.bkx = load <4 x float>, ptr %.726921854, align 16, !tbaa !116 ; 2 uses
  %i.bky = getelementptr inbounds nuw i8, ptr %.726921854, i64 16
  %i.bkz = load <4 x float>, ptr %i.bky, align 16, !tbaa !116 ; 2 uses
  %i.bla = getelementptr inbounds nuw i8, ptr %.726921854, i64 32
  %i.blb = load <4 x float>, ptr %i.bla, align 16, !tbaa !116 ; 2 uses
  %i.blc = getelementptr inbounds nuw i8, ptr %.726921854, i64 48
  %i.bld = load <4 x float>, ptr %i.blc, align 16, !tbaa !116 ; 2 uses
  %i.ble = getelementptr inbounds nuw i8, ptr %.726921854, i64 64 ; 2 uses
  %i.blf = shufflevector <4 x float> %i.bkx, <4 x float> %i.bld, <4 x i32> <i32 0, i32 7, i32 1, i32 4> ; 2 uses
  %i.blg = shufflevector <4 x float> %i.bkx, <4 x float> %i.bld, <4 x i32> <i32 2, i32 5, i32 3, i32 6> ; 2 uses
  %i.blh = shufflevector <4 x float> %i.blb, <4 x float> %i.bkz, <4 x i32> <i32 0, i32 7, i32 1, i32 4> ; 2 uses
  %i.bli = shufflevector <4 x float> %i.blb, <4 x float> %i.bkz, <4 x i32> <i32 2, i32 5, i32 3, i32 6> ; 2 uses
  %i.blj = shufflevector <4 x float> %i.blf, <4 x float> %i.blh, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 7 uses
  %i.blk = shufflevector <4 x float> %i.blf, <4 x float> %i.blh, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.bll = shufflevector <4 x float> %i.bli, <4 x float> %i.blg, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 7 uses
  %i.blm = shufflevector <4 x float> %i.bli, <4 x float> %i.blg, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.bln = shufflevector <4 x float> %i.blk, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 7 uses
  %i.blo = shufflevector <4 x float> %i.blm, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 7 uses
  %.not2962 = icmp eq ptr %.281855, null
  br i1 %.not2962, label %.thread1573, label %bb.fs

bb.fs:                                            ; preds = %.lr.ph1856
  br i1 %i.bf, label %.thread1560, label %bb.ft

.thread1560:                                      ; preds = %bb.fs
  %i.blp = fadd fast <4 x float> %.813631850, %i.blj
  %i.blq = fadd fast <4 x float> %i.bln, %.813631850
  %i.blr = fadd fast <4 x float> %.813631850, %i.bll
  %i.bls = fadd fast <4 x float> %i.blo, %.813631850
  br label %.thread1573

bb.ft:                                            ; preds = %bb.fs
  br i1 %or.cond11, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %bb.ft
  %i.blt = fadd fast <4 x float> %.813631850, %i.blj
  %i.blu = fadd fast <4 x float> %i.bln, %.813631850
  %i.blv = fadd fast <4 x float> %.813631850, %i.bll
  %i.blw = fadd fast <4 x float> %i.blo, %.813631850
  br label %.thread1573

bb.fv:                                            ; preds = %bb.ft
  switch i32 %2, label %.thread1573 [
    i32 3, label %bb.fw
    i32 4, label %bb.gc
  ]

bb.fw:                                            ; preds = %bb.fv
  %i.blx = load <4 x float>, ptr %.281855, align 1, !tbaa !116 ; 3 uses
  br i1 %i.bn, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  %i.bly = getelementptr inbounds nuw i8, ptr %.281855, i64 16
  %i.blz = load <4 x float>, ptr %i.bly, align 1, !tbaa !116
  %i.bma = getelementptr inbounds nuw i8, ptr %.281855, i64 32
  %i.bmb = load <4 x float>, ptr %i.bma, align 1, !tbaa !116
  %i.bmc = getelementptr inbounds nuw i8, ptr %.281855, i64 48
  %i.bmd = load <4 x float>, ptr %i.bmc, align 1, !tbaa !116
  br label %bb.fz

bb.fy:                                            ; preds = %bb.fw
  %i.bme = getelementptr inbounds nuw [4 x i8], ptr %.281855, i64 %i.t
  %i.bmf = load <4 x float>, ptr %i.bme, align 1, !tbaa !116 ; 2 uses
  %i.bmg = getelementptr inbounds nuw i8, ptr %.281855, i64 %.idx2976
  %i.bmh = load <4 x float>, ptr %i.bmg, align 1, !tbaa !116 ; 2 uses
  %i.bmi = getelementptr inbounds nuw i8, ptr %.281855, i64 %.idx2977
  %i.bmj = load <4 x float>, ptr %i.bmi, align 1, !tbaa !116 ; 2 uses
  %i.bmk = shufflevector <4 x float> %i.blx, <4 x float> %i.bmf, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.bml = shufflevector <4 x float> %i.bmh, <4 x float> %i.bmj, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.bmm = shufflevector <4 x float> %i.blx, <4 x float> %i.bmf, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.bmn = shufflevector <4 x float> %i.bmh, <4 x float> %i.bmj, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.bmo = shufflevector <4 x float> %i.bmk, <4 x float> %i.bml, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bmp = shufflevector <4 x float> %i.bml, <4 x float> %i.bmk, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.bmq = shufflevector <4 x float> %i.bmm, <4 x float> %i.bmn, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bmr = shufflevector <4 x float> %i.bmn, <4 x float> %i.bmm, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %bb.fx
  %.sink2194 = phi i64 [ 16, %bb.fy ], [ 64, %bb.fx ]
  %.91364 = phi nsz <4 x float> [ %i.bmo, %bb.fy ], [ %i.blx, %bb.fx ] ; 4 uses
  %.01277 = phi nsz <4 x float> [ %i.bmp, %bb.fy ], [ %i.blz, %bb.fx ] ; 2 uses
  %.01276 = phi nsz <4 x float> [ %i.bmq, %bb.fy ], [ %i.bmb, %bb.fx ] ; 2 uses
  %.01275 = phi nsz <4 x float> [ %i.bmr, %bb.fy ], [ %i.bmd, %bb.fx ] ; 2 uses
  %i.bms = getelementptr inbounds nuw i8, ptr %.281855, i64 %.sink2194 ; 2 uses
  br i1 %i.bo, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %bb.fz
  %i.bmt = fadd fast <4 x float> %.91364, %i.blj
  %i.bmu = fadd fast <4 x float> %.01277, %i.bln
  %i.bmv = fadd fast <4 x float> %.01276, %i.bll
  %i.bmw = fadd fast <4 x float> %.01275, %i.blo
  br label %.thread1573

bb.gb:                                            ; preds = %bb.fz
  %i.bmx = fmul fast <4 x float> %.91364, %i.bl
  %i.bmy = fadd fast <4 x float> %i.bmx, %i.blj
  %i.bmz = fmul fast <4 x float> %.01277, %i.bl
  %i.bna = fadd fast <4 x float> %i.bmz, %i.bln
  %i.bnb = fmul fast <4 x float> %.01276, %i.bl
  %i.bnc = fadd fast <4 x float> %i.bnb, %i.bll
  %i.bnd = fmul fast <4 x float> %.01275, %i.bl
  %i.bne = fadd fast <4 x float> %i.bnd, %i.blo
  br label %.thread1573

bb.gc:                                            ; preds = %bb.fv
  %i.bnf = load <4 x float>, ptr %.281855, align 4, !tbaa !68
  %i.bng = fmul fast <4 x float> %i.bnf, %i.ca    ; 4 uses
  %i.bnh = shufflevector <4 x float> %i.bng, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bni = shufflevector <4 x float> %i.bng, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bnj = shufflevector <4 x float> %i.bng, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.bnk = shufflevector <4 x float> %i.bng, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.bnl = fadd fast <4 x float> %i.bnh, %i.blj
  %i.bnm = fadd fast <4 x float> %i.bni, %i.bln
  %i.bnn = fadd fast <4 x float> %i.bnj, %i.bll
  %i.bno = fadd fast <4 x float> %i.bnk, %i.blo
  %i.bnp = getelementptr inbounds nuw i8, ptr %.281855, i64 16
  br label %.thread1573

.thread1573:                                      ; preds = %bb.fv, %bb.fu, %.thread1560, %bb.gb, %bb.ga, %bb.gc, %.lr.ph1856
  %.111366 = phi nsz <4 x float> [ %.813631850, %.lr.ph1856 ], [ %i.bnh, %bb.gc ], [ %.813631850, %bb.fv ], [ %.91364, %bb.ga ], [ %.91364, %bb.gb ], [ %.813631850, %.thread1560 ], [ %.813631850, %bb.fu ] ; 2 uses
  %.41300 = phi nsz <4 x float> [ %i.blj, %.lr.ph1856 ], [ %i.bnl, %bb.gc ], [ %i.blj, %bb.fv ], [ %i.bmt, %bb.ga ], [ %i.bmy, %bb.gb ], [ %i.blp, %.thread1560 ], [ %i.blt, %bb.fu ] ; 2 uses
  %.41294 = phi nsz <4 x float> [ %i.bln, %.lr.ph1856 ], [ %i.bnm, %bb.gc ], [ %i.bln, %bb.fv ], [ %i.bmu, %bb.ga ], [ %i.bna, %bb.gb ], [ %i.blq, %.thread1560 ], [ %i.blu, %bb.fu ] ; 2 uses
  %.41288 = phi nsz <4 x float> [ %i.bll, %.lr.ph1856 ], [ %i.bnn, %bb.gc ], [ %i.bll, %bb.fv ], [ %i.bmv, %bb.ga ], [ %i.bnc, %bb.gb ], [ %i.blr, %.thread1560 ], [ %i.blv, %bb.fu ] ; 2 uses
  %.41282 = phi nsz <4 x float> [ %i.blo, %.lr.ph1856 ], [ %i.bno, %bb.gc ], [ %i.blo, %bb.fv ], [ %i.bmw, %bb.ga ], [ %i.bne, %bb.gb ], [ %i.bls, %.thread1560 ], [ %i.blw, %bb.fu ] ; 2 uses
  %.31 = phi ptr [ null, %.lr.ph1856 ], [ %i.bnp, %bb.gc ], [ %.281855, %bb.fv ], [ %i.bms, %bb.ga ], [ %i.bms, %bb.gb ], [ %.281855, %.thread1560 ], [ %.281855, %bb.fu ] ; 2 uses
  br i1 %i.bp, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %.thread1573
  %i.bnq = fmul fast <4 x float> %.41300, %i.br
  %i.bnr = fmul fast <4 x float> %.41294, %i.br
  %i.bns = fmul fast <4 x float> %.41288, %i.br
  %i.bnt = fmul fast <4 x float> %.41282, %i.br
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %.thread1573
  %.51301 = phi nsz <4 x float> [ %i.bnq, %bb.gd ], [ %.41300, %.thread1573 ] ; 7 uses
  %.51295 = phi nsz <4 x float> [ %i.bnr, %bb.gd ], [ %.41294, %.thread1573 ] ; 7 uses
  %.51289 = phi nsz <4 x float> [ %i.bns, %bb.gd ], [ %.41288, %.thread1573 ] ; 7 uses
  %.51283 = phi nsz <4 x float> [ %i.bnt, %bb.gd ], [ %.41282, %.thread1573 ] ; 7 uses
  br i1 %i.bs, label %bb.gf, label %bb.gm

bb.gf:                                            ; preds = %bb.ge
  br i1 %.not2950, label %bb.gk, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  switch i32 %i.b, label %bb.gj [
    i32 4, label %bb.gh
    i32 1, label %11
  ]

bb.gh:                                            ; preds = %bb.gg
  %i.bnu = shufflevector <4 x float> %.51301, <4 x float> %.51295, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.bnv = shufflevector <4 x float> %.51289, <4 x float> %.51283, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.bnw = shufflevector <4 x float> %.51301, <4 x float> %.51295, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.bnx = shufflevector <4 x float> %.51289, <4 x float> %.51283, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.bny = shufflevector <4 x float> %i.bnu, <4 x float> %i.bnv, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bnz = shufflevector <4 x float> %i.bnv, <4 x float> %i.bnu, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.boa = shufflevector <4 x float> %i.bnw, <4 x float> %i.bnx, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bob = shufflevector <4 x float> %i.bnx, <4 x float> %i.bnw, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  store <4 x float> %i.bny, ptr %.428121852, align 16, !tbaa !116
  %i.boc = getelementptr inbounds nuw i8, ptr %.428121852, i64 16
  store <4 x float> %i.bnz, ptr %i.boc, align 16, !tbaa !116
  br label %bb.gi

11:                                               ; preds = %bb.gg
  store <4 x float> %.51301, ptr %.428121852, align 1, !tbaa !116
  %12 = getelementptr inbounds nuw [4 x i8], ptr %.428121852, i64 %i.k
  store <4 x float> %.51295, ptr %12, align 1, !tbaa !116
  br label %bb.gi

bb.gi:                                            ; preds = %11, %bb.gh
  %.sink2201 = phi i64 [ 32, %bb.gh ], [ %.idx2985, %11 ]
  %.sink2199 = phi <4 x float> [ %i.boa, %bb.gh ], [ %.51289, %11 ]
  %.sink2198 = phi i64 [ 48, %bb.gh ], [ %.idx2987, %11 ]
  %.sink2196 = phi <4 x float> [ %i.bob, %bb.gh ], [ %.51283, %11 ]
  %i.bod = getelementptr inbounds nuw i8, ptr %.428121852, i64 %.sink2201
  store <4 x float> %.sink2199, ptr %i.bod, align 1, !tbaa !116
  %i.boe = getelementptr inbounds nuw i8, ptr %.428121852, i64 %.sink2198
  store <4 x float> %.sink2196, ptr %i.boe, align 1, !tbaa !116
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gi, %bb.gg
  %i.bof = getelementptr inbounds nuw i8, ptr %.428121852, i64 %.idx2989
  br label %bb.gt

bb.gk:                                            ; preds = %bb.gf
  switch i32 %i.b, label %bb.gt [
    i32 4, label %.thread1580
    i32 1, label %bb.gl
  ]

.thread1580:                                      ; preds = %bb.gk
  store <4 x float> %.51301, ptr %.428121852, align 1, !tbaa !116
  %i.bog = getelementptr inbounds nuw i8, ptr %.428121852, i64 16
  store <4 x float> %.51295, ptr %i.bog, align 1, !tbaa !116
  %i.boh = getelementptr inbounds nuw i8, ptr %.428121852, i64 32
  store <4 x float> %.51289, ptr %i.boh, align 1, !tbaa !116
  %i.boi = getelementptr inbounds nuw i8, ptr %.428121852, i64 48
  store <4 x float> %.51283, ptr %i.boi, align 1, !tbaa !116
  %i.boj = getelementptr inbounds nuw i8, ptr %.428121852, i64 64
  br label %bb.gt

bb.gl:                                            ; preds = %bb.gk
  %i.bok = shufflevector <4 x float> %.51301, <4 x float> %.51295, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.bol = shufflevector <4 x float> %.51289, <4 x float> %.51283, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.bom = shufflevector <4 x float> %.51301, <4 x float> %.51295, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.bon = shufflevector <4 x float> %.51289, <4 x float> %.51283, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.boo = shufflevector <4 x float> %i.bok, <4 x float> %i.bol, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bop = shufflevector <4 x float> %i.bol, <4 x float> %i.bok, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.boq = shufflevector <4 x float> %i.bom, <4 x float> %i.bon, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bor = shufflevector <4 x float> %i.bon, <4 x float> %i.bom, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  store <4 x float> %i.boo, ptr %.428121852, align 1, !tbaa !116
  %i.bos = getelementptr inbounds nuw [4 x i8], ptr %.428121852, i64 %i.k
  store <4 x float> %i.bop, ptr %i.bos, align 1, !tbaa !116
  %i.bot = getelementptr inbounds nuw i8, ptr %.428121852, i64 %.idx2985
  store <4 x float> %i.boq, ptr %i.bot, align 1, !tbaa !116
  %i.bou = getelementptr inbounds nuw i8, ptr %.428121852, i64 %.idx2987
  store <4 x float> %i.bor, ptr %i.bou, align 1, !tbaa !116
  %i.bov = getelementptr inbounds nuw i8, ptr %.428121852, i64 16
  br label %bb.gt

bb.gm:                                            ; preds = %bb.ge
  %i.bow = bitcast <4 x float> %.51301 to <4 x i32>
  %i.box = lshr <4 x i32> %i.bow, splat (i32 16)
  %i.boy = bitcast <4 x float> %.51289 to <4 x i32>
  %i.boz = lshr <4 x i32> %i.boy, splat (i32 16)
  %i.bpa = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.box, <4 x i32> %i.boz) ; 7 uses
  %i.bpb = bitcast <8 x i16> %i.bpa to <2 x i64>  ; 2 uses
  %i.bpc = bitcast <4 x float> %.51295 to <4 x i32>
  %i.bpd = lshr <4 x i32> %i.bpc, splat (i32 16)
  %i.bpe = bitcast <4 x float> %.51283 to <4 x i32>
  %i.bpf = lshr <4 x i32> %i.bpe, splat (i32 16)
  %i.bpg = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bpd, <4 x i32> %i.bpf) ; 7 uses
  %i.bph = bitcast <8 x i16> %i.bpg to <2 x i64>  ; 2 uses
  br i1 %.not2950, label %bb.gr, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  switch i32 %i.b, label %bb.gq [
    i32 4, label %bb.go
    i32 1, label %bb.gp
  ]

bb.go:                                            ; preds = %bb.gn
  %i.bpi = shufflevector <8 x i16> %i.bpa, <8 x i16> %i.bpg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bpj = shufflevector <8 x i16> %i.bpa, <8 x i16> %i.bpg, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bpk = bitcast <8 x i16> %i.bpi to <4 x i32>  ; 2 uses
  %i.bpl = bitcast <8 x i16> %i.bpj to <4 x i32>  ; 2 uses
  %i.bpm = shufflevector <4 x i32> %i.bpk, <4 x i32> %i.bpl, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.bpn = shufflevector <4 x i32> %i.bpk, <4 x i32> %i.bpl, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x i32> %i.bpm, ptr %.527881853, align 1, !tbaa !116
  %i.bpo = getelementptr inbounds nuw i8, ptr %.527881853, i64 16
  store <4 x i32> %i.bpn, ptr %i.bpo, align 1, !tbaa !116
  br label %bb.gq

bb.gp:                                            ; preds = %bb.gn
  %i.bpp = extractelement <2 x i64> %i.bpb, i64 0
  store i64 %i.bpp, ptr %.527881853, align 1, !tbaa !116
  %i.bpq = getelementptr inbounds nuw [2 x i8], ptr %.527881853, i64 %i.k
  %i.bpr = extractelement <2 x i64> %i.bph, i64 0
  store i64 %i.bpr, ptr %i.bpq, align 1, !tbaa !116
  %i.bps = getelementptr inbounds nuw i8, ptr %.527881853, i64 %.idx2983
  %i.bpt = bitcast <8 x i16> %i.bpa to <2 x double>
  %i.bpu = extractelement <2 x double> %i.bpt, i64 1
  store double %i.bpu, ptr %i.bps, align 1, !tbaa !116
  %i.bpv = getelementptr inbounds nuw i8, ptr %.527881853, i64 %.idx2984
  %i.bpw = bitcast <8 x i16> %i.bpg to <2 x double>
  %i.bpx = extractelement <2 x double> %i.bpw, i64 1
  store double %i.bpx, ptr %i.bpv, align 1, !tbaa !116
  br label %bb.gq

bb.gq:                                            ; preds = %bb.go, %bb.gn, %bb.gp
  %i.bpy = getelementptr inbounds nuw i8, ptr %.527881853, i64 %.idx2985
  br label %bb.gt

bb.gr:                                            ; preds = %bb.gm
  switch i32 %i.b, label %bb.gt [
    i32 4, label %.thread1582
    i32 1, label %bb.gs
  ]

.thread1582:                                      ; preds = %bb.gr
  %i.bpz = shufflevector <2 x i64> %i.bpb, <2 x i64> %i.bph, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %i.bpz, ptr %.527881853, align 1, !tbaa !116
  %i.bqa = getelementptr inbounds nuw i8, ptr %.527881853, i64 16
  %i.bqb = bitcast <8 x i16> %i.bpa to <2 x double>
  %i.bqc = bitcast <8 x i16> %i.bpg to <2 x double>
  %i.bqd = shufflevector <2 x double> %i.bqb, <2 x double> %i.bqc, <2 x i32> <i32 1, i32 3>
  store <2 x double> %i.bqd, ptr %i.bqa, align 1, !tbaa !116
  %i.bqe = getelementptr inbounds nuw i8, ptr %.527881853, i64 32
  br label %bb.gt

bb.gs:                                            ; preds = %bb.gr
  %i.bqf = shufflevector <8 x i16> %i.bpa, <8 x i16> %i.bpg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bqg = shufflevector <8 x i16> %i.bpa, <8 x i16> %i.bpg, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bqh = bitcast <8 x i16> %i.bqf to <4 x i32>  ; 2 uses
  %i.bqi = bitcast <8 x i16> %i.bqg to <4 x i32>  ; 2 uses
  %i.bqj = shufflevector <4 x i32> %i.bqh, <4 x i32> %i.bqi, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.bqk = bitcast <4 x i32> %i.bqj to <2 x i64>
  %i.bql = shufflevector <4 x i32> %i.bqh, <4 x i32> %i.bqi, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.bqm = bitcast <4 x i32> %i.bql to <2 x i64>
  %i.bqn = extractelement <2 x i64> %i.bqk, i64 0
  store i64 %i.bqn, ptr %.527881853, align 1, !tbaa !116
  %i.bqo = getelementptr inbounds nuw [2 x i8], ptr %.527881853, i64 %i.k
  %i.bqp = bitcast <4 x i32> %i.bqj to <2 x double>
  %i.bqq = extractelement <2 x double> %i.bqp, i64 1
  store double %i.bqq, ptr %i.bqo, align 1, !tbaa !116
  %i.bqr = getelementptr inbounds nuw i8, ptr %.527881853, i64 %.idx2983
  %i.bqs = extractelement <2 x i64> %i.bqm, i64 0
  store i64 %i.bqs, ptr %i.bqr, align 1, !tbaa !116
  %i.bqt = getelementptr inbounds nuw i8, ptr %.527881853, i64 %.idx2984
  %i.bqu = bitcast <4 x i32> %i.bql to <2 x double>
  %i.bqv = extractelement <2 x double> %i.bqu, i64 1
  store double %i.bqv, ptr %i.bqt, align 1, !tbaa !116
  %i.bqw = getelementptr inbounds nuw i8, ptr %.527881853, i64 8
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gr, %bb.gk, %.thread1582, %.thread1580, %bb.gq, %bb.gs, %bb.gj, %bb.gl
  %.62814 = phi ptr [ %i.bof, %bb.gj ], [ %i.bov, %bb.gl ], [ %.428121852, %bb.gk ], [ %.428121852, %bb.gr ], [ %.428121852, %bb.gs ], [ %.428121852, %bb.gq ], [ %i.boj, %.thread1580 ], [ %.428121852, %.thread1582 ] ; 2 uses
  %.82791 = phi ptr [ %.527881853, %bb.gj ], [ %.527881853, %bb.gl ], [ %.527881853, %bb.gk ], [ %.527881853, %bb.gr ], [ %i.bqw, %bb.gs ], [ %i.bpy, %bb.gq ], [ %.527881853, %.thread1580 ], [ %i.bqe, %.thread1582 ] ; 2 uses
  %i.bqx = add nuw nsw i32 %.128221851, 4         ; 3 uses
  %i.bqy = or disjoint i32 %i.bqx, 3
  %i.bqz = icmp slt i32 %i.bqy, %6
  br i1 %i.bqz, label %.lr.ph1856, label %.preheader1773, !llvm.loop !1240

.preheader1772:                                   ; preds = %bb.ht, %.preheader1773
  %.121367.lcssa = phi <4 x float> [ %.81363.lcssa, %.preheader1773 ], [ %.151370, %bb.ht ]
  %.22823.lcssa = phi i32 [ %.12822.lcssa, %.preheader1773 ], [ %i.buz, %bb.ht ] ; 2 uses
  %.72815.lcssa = phi ptr [ %.42812.lcssa, %.preheader1773 ], [ %.92817, %bb.ht ]
  %.92792.lcssa = phi ptr [ %.52788.lcssa, %.preheader1773 ], [ %.122795, %bb.ht ]
  %.82693.lcssa = phi ptr [ %.72692.lcssa, %.preheader1773 ], [ %i.bre, %bb.ht ] ; 2 uses
  %.32.lcssa = phi ptr [ %.28.lcssa, %.preheader1773 ], [ %.35, %bb.ht ] ; 2 uses
  %i.bra = icmp slt i32 %.22823.lcssa, %6
  br i1 %i.bra, label %.lr.ph1882, label %._crit_edge1883

.lr.ph1869:                                       ; preds = %.preheader1773, %bb.ht
  %.321868 = phi ptr [ %.35, %bb.ht ], [ %.28.lcssa, %.preheader1773 ] ; 14 uses
  %.826931867 = phi ptr [ %i.bre, %bb.ht ], [ %.72692.lcssa, %.preheader1773 ] ; 3 uses
  %.927921866 = phi ptr [ %.122795, %bb.ht ], [ %.52788.lcssa, %.preheader1773 ] ; 20 uses
  %.728151865 = phi ptr [ %.92817, %bb.ht ], [ %.42812.lcssa, %.preheader1773 ] ; 22 uses
  %.228231864 = phi i32 [ %i.buz, %bb.ht ], [ %.12822.lcssa, %.preheader1773 ]
  %.1213671863 = phi <4 x float> [ %.151370, %bb.ht ], [ %.81363.lcssa, %.preheader1773 ] ; 8 uses
  %i.brb = load <4 x float>, ptr %.826931867, align 16, !tbaa !116 ; 2 uses
  %i.brc = getelementptr inbounds nuw i8, ptr %.826931867, i64 16
  %i.brd = load <4 x float>, ptr %i.brc, align 16, !tbaa !116 ; 2 uses
  %i.bre = getelementptr inbounds nuw i8, ptr %.826931867, i64 32 ; 2 uses
  %i.brf = shufflevector <4 x float> %i.brb, <4 x float> %i.brd, <4 x i32> <i32 0, i32 5, i32 2, i32 7> ; 7 uses
  %i.brg = shufflevector <4 x float> %i.brd, <4 x float> %i.brb, <4 x i32> <i32 0, i32 5, i32 2, i32 7> ; 7 uses
  %.not2959 = icmp eq ptr %.321868, null
  br i1 %.not2959, label %.thread1593, label %bb.gu

bb.gu:                                            ; preds = %.lr.ph1869
  br i1 %i.bf, label %.thread1584, label %bb.gv

.thread1584:                                      ; preds = %bb.gu
  %i.brh = fadd fast <4 x float> %i.brf, %.1213671863
  %i.bri = fadd fast <4 x float> %i.brg, %.1213671863
  br label %.thread1593

bb.gv:                                            ; preds = %bb.gu
  br i1 %or.cond11, label %bb.gw, label %bb.gx

bb.gw:                                            ; preds = %bb.gv
  %i.brj = fadd fast <4 x float> %i.brf, %.1213671863
  %i.brk = fadd fast <4 x float> %i.brg, %.1213671863
  br label %.thread1593

bb.gx:                                            ; preds = %bb.gv
  switch i32 %2, label %.thread1593 [
    i32 3, label %bb.gy
    i32 4, label %bb.he
  ]

bb.gy:                                            ; preds = %bb.gx
  br i1 %i.bn, label %bb.gz, label %bb.ha

bb.gz:                                            ; preds = %bb.gy
  %i.brl = load <4 x float>, ptr %.321868, align 1, !tbaa !116
  %i.brm = getelementptr inbounds nuw i8, ptr %.321868, i64 16
  %i.brn = load <4 x float>, ptr %i.brm, align 1, !tbaa !116
  br label %bb.hb

bb.ha:                                            ; preds = %bb.gy
end_hunk_1
