Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/longobject?download=true
inline.NumInlined: 732
inline.NumDeleted: 98
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 53
loop-unroll.NumUnrolled: 59
begin_hunk_0_@long_to_decimal_string_internal:bb.a
  %i.alx = insertelement <4 x ptr> %i.alw, ptr %i.alm, i64 3
  %i.aly = getelementptr i8, <4 x ptr> %i.alx, <4 x i64> <i64 -12, i64 -16, i64 -20, i64 -24>
  %scevgep621 = getelementptr i8, ptr %i.alk, i64 -20
  %scevgep620 = getelementptr i8, ptr %i.ali, i64 -16
  %scevgep619 = getelementptr i8, ptr %i.alg, i64 -12
  %i.alz = getelementptr i8, ptr %scevgep619, i64 %i.alh
  %i.ama = getelementptr i8, ptr %scevgep620, i64 %i.alj
  %i.amb = getelementptr i8, ptr %scevgep621, i64 %i.all
  %i.amc = getelementptr i8, ptr %scevgep622, i64 %i.aln
  %scevgep623 = getelementptr i8, ptr %i.alo, i64 -28 ; 2 uses
  %i.amd = getelementptr i8, ptr %scevgep623, i64 %i.alp
  %scevgep624 = getelementptr i8, ptr %i.alq, i64 -32 ; 2 uses
  %i.ame = getelementptr i8, ptr %scevgep624, i64 %i.alr
  %i.amf = insertelement <8 x ptr> poison, ptr %i.alt, i64 0
  %i.amg = insertelement <8 x ptr> %i.amf, ptr %i.als, i64 1
  %i.amh = insertelement <8 x ptr> %i.amg, ptr %i.alz, i64 2
  %i.ami = insertelement <8 x ptr> %i.amh, ptr %i.ama, i64 3
  %i.amj = insertelement <8 x ptr> %i.ami, ptr %i.amb, i64 4
  %i.amk = insertelement <8 x ptr> %i.amj, ptr %i.amc, i64 5
  %i.aml = insertelement <8 x ptr> %i.amk, ptr %i.amd, i64 6
  %i.amm = insertelement <8 x ptr> %i.aml, ptr %i.ame, i64 7
  %i.amn = insertelement <8 x ptr> poison, ptr %scevgep618, i64 0
  %i.amo = insertelement <8 x ptr> %i.amn, ptr %scevgep614, i64 1
  %i.amp = shufflevector <4 x ptr> %i.aly, <4 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.amq = shufflevector <8 x ptr> %i.amo, <8 x ptr> %i.amp, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison>
  %i.amr = insertelement <8 x ptr> %i.amq, ptr %scevgep623, i64 6
  %i.ams = insertelement <8 x ptr> %i.amr, ptr %scevgep624, i64 7
  %i.amt = icmp ugt <8 x ptr> %i.amm, %i.ams
  %i.amu = getelementptr i8, ptr %.pn, i64 %i.alb
  %scevgep625 = getelementptr i8, ptr %i.amu, i64 -36 ; 2 uses
  %i.amv = sub i64 0, %mul.result616
  %i.amw = getelementptr i8, ptr %scevgep625, i64 %i.amv
  %i.amx = icmp ugt ptr %i.amw, %scevgep625
  %i.amy = bitcast <8 x i1> %i.amt to i8
  %i.amz = icmp ne i8 %i.amy, 0
  %op.rdx = or i1 %mul.overflow617, %i.amz
  %op.rdx746 = or i1 %op.rdx, %i.amx
  br i1 %op.rdx746, label %.lr.ph408.preheader778, label %vector.memcheck634

vector.memcheck634:                               ; preds = %vector.scevcheck612
  %i.ana = shl i64 %.0235.lcssa, 2
  %i.anb = tail call i64 @llvm.umax.i64(i64 %.0236.lcssa, i64 1)
  %.neg744 = mul i64 %i.anb, -36
  %i.anc = getelementptr i8, ptr %.pn, i64 %.neg744
  %i.and = getelementptr i8, ptr %i.anc, i64 %i.ana
  %i.ane = getelementptr i8, ptr %i.and, i64 36
  %bound0635 = icmp ult ptr %i.im, %.0
  %bound1636 = icmp ult ptr %i.ane, %i.jq
  %found.conflict637 = and i1 %bound0635, %bound1636
  br i1 %found.conflict637, label %.lr.ph408.preheader778, label %vector.ph638

vector.ph638:                                     ; preds = %vector.memcheck634
  %n.vec639 = and i64 %.2238, 9223372036854775804 ; 4 uses
  %i.anf = mul i64 %n.vec639, -36
  %i.ang = getelementptr i8, ptr %.0, i64 %i.anf  ; 2 uses
  br label %vector.body640

vector.body640:                                   ; preds = %vector.body640, %vector.ph638
  %index641 = phi i64 [ 0, %vector.ph638 ], [ %index.next647, %vector.body640 ] ; 3 uses
  %i.anh = mul i64 %index641, -36                 ; 4 uses
  %next.gep642 = getelementptr i8, ptr %.0, i64 %i.anh ; 4 uses
  %i.ani = getelementptr i8, ptr %.0, i64 %i.anh  ; 5 uses
  %i.anj = getelementptr i8, ptr %.0, i64 %i.anh  ; 4 uses
  %i.ank = getelementptr i8, ptr %.0, i64 %i.anh  ; 5 uses
  %i.anl = getelementptr [4 x i8], ptr %i.im, i64 %index641
  %wide.load646 = load <4 x i32>, ptr %i.anl, align 4, !tbaa !26, !alias.scope !433, !noalias !434 ; 8 uses
  %wide.load646.frozen = freeze <4 x i32> %wide.load646 ; 2 uses
  %i.anm = udiv <4 x i32> %wide.load646.frozen, splat (i32 10) ; 2 uses
  %i.ann = mul <4 x i32> %i.anm, splat (i32 10)
  %.decomposed815 = sub <4 x i32> %wide.load646.frozen, %i.ann
  %i.ano = or disjoint <4 x i32> %.decomposed815, splat (i32 48) ; 4 uses
  %i.anp = getelementptr i8, ptr %i.ani, i64 -40
  %i.anq = getelementptr i8, ptr %i.ank, i64 -112
  %i.anr = urem <4 x i32> %i.anm, splat (i32 10)
  %i.ans = or disjoint <4 x i32> %i.anr, splat (i32 48) ; 4 uses
  %i.ant = getelementptr i8, ptr %next.gep642, i64 -8
  %i.anu = getelementptr i8, ptr %i.anj, i64 -80
  %i.anv = shufflevector <4 x i32> %i.ans, <4 x i32> %i.ano, <2 x i32> <i32 0, i32 4>
  store <2 x i32> %i.anv, ptr %i.ant, align 4, !tbaa !26, !alias.scope !434
  %i.anw = shufflevector <4 x i32> %i.ans, <4 x i32> %i.ano, <2 x i32> <i32 2, i32 6>
  store <2 x i32> %i.anw, ptr %i.anu, align 4, !tbaa !26, !alias.scope !434
  %i.anx = udiv <4 x i32> %wide.load646, splat (i32 100)
  %i.any = urem <4 x i32> %i.anx, splat (i32 10)
  %i.anz = or disjoint <4 x i32> %i.any, splat (i32 48) ; 4 uses
  %i.aoa = getelementptr i8, ptr %i.ani, i64 -48
  %i.aob = getelementptr i8, ptr %i.ank, i64 -120
  %i.aoc = shufflevector <4 x i32> %i.anz, <4 x i32> %i.ans, <2 x i32> <i32 1, i32 5>
  store <2 x i32> %i.aoc, ptr %i.aoa, align 4, !tbaa !26, !alias.scope !434
  %i.aod = shufflevector <4 x i32> %i.anz, <4 x i32> %i.ans, <2 x i32> <i32 3, i32 7>
  store <2 x i32> %i.aod, ptr %i.aob, align 4, !tbaa !26, !alias.scope !434
  %i.aoe = udiv <4 x i32> %wide.load646, splat (i32 1000)
  %i.aof = urem <4 x i32> %i.aoe, splat (i32 10)
  %i.aog = or disjoint <4 x i32> %i.aof, splat (i32 48) ; 4 uses
  %i.aoh = getelementptr i8, ptr %next.gep642, i64 -16
  %i.aoi = getelementptr i8, ptr %i.anj, i64 -88
  %i.aoj = shufflevector <4 x i32> %i.aog, <4 x i32> %i.anz, <2 x i32> <i32 0, i32 4>
  store <2 x i32> %i.aoj, ptr %i.aoh, align 4, !tbaa !26, !alias.scope !434
  %i.aok = shufflevector <4 x i32> %i.aog, <4 x i32> %i.anz, <2 x i32> <i32 2, i32 6>
  store <2 x i32> %i.aok, ptr %i.aoi, align 4, !tbaa !26, !alias.scope !434
  %i.aol = udiv <4 x i32> %wide.load646, splat (i32 10000)
  %i.aom = urem <4 x i32> %i.aol, splat (i32 10)
  %i.aon = or disjoint <4 x i32> %i.aom, splat (i32 48) ; 4 uses
  %i.aoo = getelementptr i8, ptr %i.ani, i64 -56
  %i.aop = getelementptr i8, ptr %i.ank, i64 -128
  %i.aoq = shufflevector <4 x i32> %i.aon, <4 x i32> %i.aog, <2 x i32> <i32 1, i32 5>
  store <2 x i32> %i.aoq, ptr %i.aoo, align 4, !tbaa !26, !alias.scope !434
  %i.aor = shufflevector <4 x i32> %i.aon, <4 x i32> %i.aog, <2 x i32> <i32 3, i32 7>
  store <2 x i32> %i.aor, ptr %i.aop, align 4, !tbaa !26, !alias.scope !434
  %i.aos = udiv <4 x i32> %wide.load646, splat (i32 100000)
  %i.aot = trunc nuw <4 x i32> %i.aos to <4 x i16>
  %i.aou = urem <4 x i16> %i.aot, splat (i16 10)
  %i.aov = or disjoint <4 x i16> %i.aou, splat (i16 48)
  %i.aow = zext nneg <4 x i16> %i.aov to <4 x i32> ; 4 uses
  %i.aox = getelementptr i8, ptr %next.gep642, i64 -24
  %i.aoy = getelementptr i8, ptr %i.anj, i64 -96
  %i.aoz = shufflevector <4 x i32> %i.aow, <4 x i32> %i.aon, <2 x i32> <i32 0, i32 4>
  store <2 x i32> %i.aoz, ptr %i.aox, align 4, !tbaa !26, !alias.scope !434
  %i.apa = shufflevector <4 x i32> %i.aow, <4 x i32> %i.aon, <2 x i32> <i32 2, i32 6>
  store <2 x i32> %i.apa, ptr %i.aoy, align 4, !tbaa !26, !alias.scope !434
  %i.apb = udiv <4 x i32> %wide.load646, splat (i32 1000000)
  %i.apc = trunc nuw nsw <4 x i32> %i.apb to <4 x i16>
  %i.apd = urem <4 x i16> %i.apc, splat (i16 10)
  %i.ape = or disjoint <4 x i16> %i.apd, splat (i16 48)
  %i.apf = zext nneg <4 x i16> %i.ape to <4 x i32> ; 4 uses
  %i.apg = getelementptr i8, ptr %i.ani, i64 -64
  %i.aph = getelementptr i8, ptr %i.ank, i64 -136
  %i.api = shufflevector <4 x i32> %i.apf, <4 x i32> %i.aow, <2 x i32> <i32 1, i32 5>
  store <2 x i32> %i.api, ptr %i.apg, align 4, !tbaa !26, !alias.scope !434
  %i.apj = shufflevector <4 x i32> %i.apf, <4 x i32> %i.aow, <2 x i32> <i32 3, i32 7>
  store <2 x i32> %i.apj, ptr %i.aph, align 4, !tbaa !26, !alias.scope !434
  %i.apk = udiv <4 x i32> %wide.load646, splat (i32 10000000)
  %i.apl = trunc nuw nsw <4 x i32> %i.apk to <4 x i16>
  %i.apm = urem <4 x i16> %i.apl, splat (i16 10)
  %i.apn = or disjoint <4 x i16> %i.apm, splat (i16 48)
  %i.apo = zext nneg <4 x i16> %i.apn to <4 x i32> ; 4 uses
  %i.app = getelementptr i8, ptr %next.gep642, i64 -32
  %i.apq = getelementptr i8, ptr %i.anj, i64 -104
  %i.apr = shufflevector <4 x i32> %i.apo, <4 x i32> %i.apf, <2 x i32> <i32 0, i32 4>
  store <2 x i32> %i.apr, ptr %i.app, align 4, !tbaa !26, !alias.scope !434
  %i.aps = shufflevector <4 x i32> %i.apo, <4 x i32> %i.apf, <2 x i32> <i32 2, i32 6>
  store <2 x i32> %i.aps, ptr %i.apq, align 4, !tbaa !26, !alias.scope !434
  %i.apt = udiv <4 x i32> %wide.load646, splat (i32 100000000)
  %i.apu = trunc nuw nsw <4 x i32> %i.apt to <4 x i8>
  %i.apv = urem <4 x i8> %i.apu, splat (i8 10)
  %i.apw = or disjoint <4 x i8> %i.apv, splat (i8 48)
  %i.apx = zext nneg <4 x i8> %i.apw to <4 x i32> ; 4 uses
  %i.apy = getelementptr i8, ptr %i.ani, i64 -72
  %i.apz = getelementptr i8, ptr %i.ank, i64 -144
  %i.aqa = shufflevector <4 x i32> %i.ano, <4 x i32> %i.apx, <2 x i32> <i32 1, i32 4>
  store <2 x i32> %i.aqa, ptr %i.anp, align 4, !tbaa !26, !alias.scope !434
  %i.aqb = shufflevector <4 x i32> %i.apx, <4 x i32> %i.apo, <2 x i32> <i32 1, i32 5>
  store <2 x i32> %i.aqb, ptr %i.apy, align 4, !tbaa !26, !alias.scope !434
  %i.aqc = shufflevector <4 x i32> %i.ano, <4 x i32> %i.apx, <2 x i32> <i32 3, i32 6>
  store <2 x i32> %i.aqc, ptr %i.anq, align 4, !tbaa !26, !alias.scope !434
  %i.aqd = shufflevector <4 x i32> %i.apx, <4 x i32> %i.apo, <2 x i32> <i32 3, i32 7>
  store <2 x i32> %i.aqd, ptr %i.apz, align 4, !tbaa !26, !alias.scope !434
  %index.next647 = add nuw i64 %index641, 4       ; 2 uses
  %i.aqe = icmp eq i64 %index.next647, %n.vec639
  br i1 %i.aqe, label %middle.block648, label %vector.body640, !llvm.loop !419

middle.block648:                                  ; preds = %vector.body640
  %cmp.n649 = icmp eq i64 %.2238, %n.vec639
  br i1 %cmp.n649, label %._crit_edge409, label %.lr.ph408.preheader778

.lr.ph408.preheader778:                           ; preds = %vector.memcheck634, %vector.scevcheck612, %.lr.ph408.preheader, %middle.block648
  %.1407.ph = phi ptr [ %.0, %vector.memcheck634 ], [ %.0, %vector.scevcheck612 ], [ %.0, %.lr.ph408.preheader ], [ %i.ang, %middle.block648 ]
  %.4234406.ph = phi i64 [ 0, %vector.memcheck634 ], [ 0, %vector.scevcheck612 ], [ 0, %.lr.ph408.preheader ], [ %n.vec639, %middle.block648 ]
  br label %.lr.ph408

.lr.ph408:                                        ; preds = %.lr.ph408.preheader778, %.lr.ph408
  %.1407 = phi ptr [ %i.arg, %.lr.ph408 ], [ %.1407.ph, %.lr.ph408.preheader778 ] ; 5 uses
  %.4234406 = phi i64 [ %i.arh, %.lr.ph408 ], [ %.4234406.ph, %.lr.ph408.preheader778 ] ; 2 uses
  %i.aqf = getelementptr [4 x i8], ptr %i.im, i64 %.4234406
  %i.aqg = load i32, ptr %i.aqf, align 4, !tbaa !26 ; 6 uses
  %i.aqh = urem i32 %i.aqg, 10
  %i.aqi = or disjoint i32 %i.aqh, 48
  %i.aqj = getelementptr i8, ptr %.1407, i64 -4
  store i32 %i.aqi, ptr %i.aqj, align 4, !tbaa !26
  %i.aqk = getelementptr i8, ptr %.1407, i64 -20
  %i.aql = insertelement <4 x i32> poison, i32 %i.aqg, i64 0
  %i.aqm = shufflevector <4 x i32> %i.aql, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aqn = udiv <4 x i32> %i.aqm, <i32 10000, i32 1000, i32 100, i32 10>
  %i.aqo = urem <4 x i32> %i.aqn, splat (i32 10)
  %i.aqp = or disjoint <4 x i32> %i.aqo, splat (i32 48)
  store <4 x i32> %i.aqp, ptr %i.aqk, align 4, !tbaa !26
  %i.aqq = udiv i32 %i.aqg, 100000
  %.lhs.trunc469 = trunc nuw i32 %i.aqq to i16
  %i.aqr = urem i16 %.lhs.trunc469, 10
  %i.aqs = or disjoint i16 %i.aqr, 48
  %i.aqt = zext nneg i16 %i.aqs to i32
  %i.aqu = getelementptr i8, ptr %.1407, i64 -24
  store i32 %i.aqt, ptr %i.aqu, align 4, !tbaa !26
  %i.aqv = getelementptr i8, ptr %.1407, i64 -32
  %i.aqw = udiv i32 %i.aqg, 1000000
  %.lhs.trunc471 = trunc nuw nsw i32 %i.aqw to i16
  %i.aqx = udiv i32 %i.aqg, 10000000
  %.lhs.trunc473 = trunc nuw nsw i32 %i.aqx to i16
  %i.aqy = insertelement <2 x i16> poison, i16 %.lhs.trunc473, i64 0
  %i.aqz = insertelement <2 x i16> %i.aqy, i16 %.lhs.trunc471, i64 1
  %i.ara = urem <2 x i16> %i.aqz, splat (i16 10)
  %5 = trunc nuw nsw <2 x i16> %i.ara to <2 x i8>
  %6 = or disjoint <2 x i8> %5, splat (i8 48)
  %i.arb = zext nneg <2 x i8> %6 to <2 x i32>
  store <2 x i32> %i.arb, ptr %i.aqv, align 4, !tbaa !26
  %i.arc = udiv i32 %i.aqg, 100000000
  %.lhs.trunc475 = trunc nuw nsw i32 %i.arc to i8
  %i.ard = urem i8 %.lhs.trunc475, 10
  %i.are = or disjoint i8 %i.ard, 48
  %i.arf = zext nneg i8 %i.are to i32
  %i.arg = getelementptr i8, ptr %.1407, i64 -36  ; 3 uses
  store i32 %i.arf, ptr %i.arg, align 4, !tbaa !26
  %i.arh = add nuw nsw i64 %.4234406, 1           ; 2 uses
  %exitcond435.not = icmp eq i64 %i.arh, %.2238
  br i1 %exitcond435.not, label %._crit_edge409, label %.lr.ph408, !llvm.loop !420

._crit_edge409:                                   ; preds = %.lr.ph408, %middle.block648, %_PyUnicode_DATA.exit336
  %.4234.lcssa = phi i64 [ 0, %_PyUnicode_DATA.exit336 ], [ %.2238, %middle.block648 ], [ %.2238, %.lr.ph408 ]
  %.1.lcssa = phi ptr [ %.0, %_PyUnicode_DATA.exit336 ], [ %i.ang, %middle.block648 ], [ %i.arg, %.lr.ph408 ]
  %i.ari = getelementptr [4 x i8], ptr %i.im, i64 %.4234.lcssa
  %i.arj = load i32, ptr %i.ari, align 4, !tbaa !26
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cm, %._crit_edge409
  %.7 = phi i32 [ %i.arj, %._crit_edge409 ], [ %i.arn, %bb.cm ] ; 3 uses
  %.3 = phi ptr [ %.1.lcssa, %._crit_edge409 ], [ %i.arm, %bb.cm ] ; 2 uses
  %i.ark = urem i32 %.7, 10
  %i.arl = or disjoint i32 %i.ark, 48
  %i.arm = getelementptr i8, ptr %.3, i64 -4      ; 2 uses
  store i32 %i.arl, ptr %i.arm, align 4, !tbaa !26
  %i.arn = udiv i32 %.7, 10
  %.not261 = icmp ult i32 %.7, 10
  br i1 %.not261, label %bb.cn, label %bb.cm, !llvm.loop !421

bb.cn:                                            ; preds = %bb.cm
  br i1 %i.h, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.aro = getelementptr i8, ptr %.3, i64 -8
  store i32 45, ptr %i.aro, align 4, !tbaa !26
  br label %bb.cp

bb.cp:                                            ; preds = %bb.bt, %bb.bu, %bb.cd, %bb.ce, %bb.cn, %bb.co, %bb.bg, %bb.bh
  %.not260343 = phi i1 [ true, %bb.bt ], [ true, %bb.bu ], [ true, %bb.cd ], [ true, %bb.ce ], [ true, %bb.cn ], [ true, %bb.co ], [ false, %bb.bg ], [ false, %bb.bh ]
  %.0239341 = phi ptr [ %.0239342355, %bb.bt ], [ %.0239342355, %bb.bu ], [ %.0239342355, %bb.cd ], [ %.0239342355, %bb.ce ], [ %.0239342355, %bb.cn ], [ %.0239342355, %bb.co ], [ null, %bb.bg ], [ null, %bb.bh ]
  %i.arp = load i32, ptr %i.ij, align 8, !tbaa !182 ; 2 uses
  %.not.i.i337 = icmp sgt i32 %i.arp, -1
  br i1 %.not.i.i337, label %bb.cq, label %_Py_DECREF_INT.exit

bb.cq:                                            ; preds = %bb.cp
  %i.arq = add nsw i32 %i.arp, -1                 ; 2 uses
  store i32 %i.arq, ptr %i.ij, align 8, !tbaa !182
  %.not9.i.i = icmp eq i32 %i.arq, 0
  br i1 %.not9.i.i, label %bb.cr, label %_Py_DECREF_INT.exit

bb.cr:                                            ; preds = %bb.cq
  %i.arr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !197 ; 2 uses
  %.not10.i.i = icmp eq ptr %i.arr, null
  br i1 %.not10.i.i, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ars = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !198
  %i.art = tail call i32 %i.arr(ptr noundef nonnull %i.ij, i32 noundef 1, ptr noundef %i.ars) #16, !inline_history !3 ; 0 uses
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %i.aru = getelementptr i8, ptr %i.ij, i64 16
  %.val6.i.i.i = load i64, ptr %i.aru, align 8, !tbaa !185 ; 2 uses
  %i.arv = and i64 %.val6.i.i.i, 4
  %.not.i.i.i338 = icmp eq i64 %i.arv, 0
  br i1 %.not.i.i.i338, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  tail call void @_Py_SetImmortal(ptr noundef nonnull %i.ij) #16
  br label %_Py_DECREF_INT.exit

bb.cv:                                            ; preds = %bb.ct
  %i.arw = icmp ugt i64 %.val6.i.i.i, 15
  br i1 %i.arw, label %bb.cy, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.arx = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.ary = load ptr, ptr %i.arx, align 8, !tbaa !173 ; 2 uses
  %i.arz = getelementptr i8, ptr %i.ary, i64 11208 ; 2 uses
  %i.asa = load i64, ptr %i.arz, align 8, !tbaa !178 ; 2 uses
  %or.cond.i.i.i.i.i = icmp ult i64 %i.asa, 100
  br i1 %or.cond.i.i.i.i.i, label %_PyFreeList_Push.exit.i.i.i.i, label %bb.cx

_PyFreeList_Push.exit.i.i.i.i:                    ; preds = %bb.cw
  %i.asb = getelementptr i8, ptr %i.ary, i64 11200 ; 2 uses
  %i.asc = load ptr, ptr %i.asb, align 8, !tbaa !176
  store ptr %i.asc, ptr %i.ij, align 8, !tbaa !177
  store ptr %i.ij, ptr %i.asb, align 8, !tbaa !176
  %i.asd = add nuw nsw i64 %i.asa, 1
  store i64 %i.asd, ptr %i.arz, align 8, !tbaa !178
  br label %_Py_DECREF_INT.exit

bb.cx:                                            ; preds = %bb.cw
  tail call void @PyObject_Free(ptr noundef nonnull %i.ij) #16
  br label %_Py_DECREF_INT.exit

bb.cy:                                            ; preds = %bb.cv
  tail call void @PyObject_Free(ptr noundef nonnull %i.ij) #16
  br label %_Py_DECREF_INT.exit

_Py_DECREF_INT.exit:                              ; preds = %bb.cp, %bb.cq, %bb.cu, %_PyFreeList_Push.exit.i.i.i.i, %bb.cx, %bb.cy
  br i1 %.not258, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %_Py_DECREF_INT.exit
  %i.ase = getelementptr i8, ptr %2, i64 32       ; 2 uses
  %i.asf = load i64, ptr %i.ase, align 8, !tbaa !288
  %i.asg = add i64 %i.asf, %.0235.lcssa
  store i64 %i.asg, ptr %i.ase, align 8, !tbaa !288
  br label %pylong_int_to_decimal_string.exit

bb.da:                                            ; preds = %_Py_DECREF_INT.exit
  br i1 %.not260343, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.ash = load ptr, ptr %4, align 8, !tbaa !289
  %i.asi = getelementptr i8, ptr %i.ash, i64 %.0235.lcssa
  store ptr %i.asi, ptr %4, align 8, !tbaa !289
  br label %pylong_int_to_decimal_string.exit

bb.dc:                                            ; preds = %bb.da
  store ptr %.0239341, ptr %1, align 8, !tbaa !171
  br label %pylong_int_to_decimal_string.exit

pylong_int_to_decimal_string.exit:                ; preds = %bb.be, %bb.bd, %bb.bc, %bb.ba, %bb.az, %bb.ay, %bb.av, %bb.au, %bb.at, %bb.ah, %bb.ag, %bb.af, %Py_XDECREF.exit.sink.split.i, %bb.ad, %Py_DECREF.exit57.i, %bb.z, %bb.y, %Py_DECREF.exit59.i, %bb.h, %bb.cz, %bb.dc, %bb.db, %Py_DECREF.exit281, %.thread, %.critedge, %bb.c
  %.5 = phi i32 [ -1, %bb.c ], [ 0, %bb.cz ], [ -1, %.critedge ], [ %.0.ph.i, %Py_XDECREF.exit.sink.split.i ], [ -1, %bb.ah ], [ -1, %.thread ], [ -1, %bb.av ], [ -1, %bb.ba ], [ -1, %Py_DECREF.exit281 ], [ 0, %bb.db ], [ 0, %bb.dc ], [ 0, %bb.ad ], [ -1, %bb.h ], [ -1, %Py_DECREF.exit59.i ], [ -1, %bb.y ], [ -1, %bb.z ], [ 0, %Py_DECREF.exit57.i ], [ -1, %bb.af ], [ -1, %bb.ag ], [ -1, %bb.at ], [ -1, %bb.au ], [ -1, %bb.ay ], [ -1, %bb.az ], [ -1, %bb.bc ], [ -1, %bb.bd ], [ -1, %bb.be ]
  ret i32 %.5
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @long_format_binary(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef range(i32 11, 10) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr noundef %4, ptr noundef %5, ptr nofree noundef captures(none) %6) unnamed_addr #0 !guid !443 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val276 = load ptr, ptr %i.b, align 8, !tbaa !181
  %i.c = getelementptr i8, ptr %.val276, i64 168
  %.val277 = load i64, ptr %i.c, align 8, !tbaa !194
  %i.d = and i64 %.val277, 16777216
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.c, label %switch.lookup

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str.2, i32 noundef 2342) #16
  br label %bb.bs

switch.lookup:                                    ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 16
  %.val = load i64, ptr %i.e, align 8, !tbaa !185 ; 3 uses
  %i.f = lshr i64 %.val, 3                        ; 10 uses
  %i.g = and i64 %.val, 3
  %i.h = icmp eq i64 %i.g, 2                      ; 5 uses
  %i.i = sext i32 %1 to i64
  %i.j = getelementptr i8, ptr @switch.table.long_format_binary, i64 %i.i
  %switch.gep = getelementptr i8, ptr %i.j, i64 -2
  %switch.load = load i8, ptr %switch.gep, align 1 ; 6 uses
  %switch.ext = zext i8 %switch.load to i32       ; 9 uses
  %i.k = icmp eq i64 %i.f, 0                      ; 5 uses
  br i1 %i.k, label %bb.f, label %bb.d

bb.d:                                             ; preds = %switch.lookup
  %i.l = icmp ult i64 %.val, 2459565876494606888
  br i1 %i.l, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  %i.m = add nsw i64 %i.f, -1                     ; 2 uses
  %i.n = mul nuw nsw i64 %i.m, 30
  %i.o = getelementptr i8, ptr %0, i64 24
  %i.p = getelementptr [4 x i8], ptr %i.o, i64 %i.m
  %i.q = load i32, ptr %i.p, align 4, !tbaa !26
  %i.r = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.q, i1 false)
  %i.s = sub nuw nsw i32 32, %i.r
  %i.t = zext nneg i32 %i.s to i64
  %i.u = zext i1 %i.h to i64
  %i.v = add nsw i32 %switch.ext, -1
  %i.w = zext nneg i32 %i.v to i64
  %i.x = add nuw nsw i64 %i.n, %i.w
  %i.y = add nuw nsw i64 %i.x, %i.t
  %i.z = zext i8 %switch.load to i64
  %i.aa = udiv i64 %i.y, %i.z
  %i.ab = add nuw nsw i64 %i.aa, %i.u
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !171
  tail call void @PyErr_SetString(ptr noundef %i.ac, ptr noundef nonnull @.str.42) #16
  br label %bb.bs

bb.f:                                             ; preds = %.thread, %switch.lookup
  %.1237 = phi i64 [ %i.ab, %.thread ], [ 1, %switch.lookup ] ; 2 uses
  %.not267 = icmp eq i32 %2, 0                    ; 5 uses
  %i.ad = add nuw i64 %.1237, 2
  %spec.select = select i1 %.not267, i64 %.1237, i64 %i.ad ; 12 uses
  %.not268 = icmp eq ptr %4, null                 ; 5 uses
  br i1 %.not268, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr i8, ptr %4, i64 20
end_hunk_0
