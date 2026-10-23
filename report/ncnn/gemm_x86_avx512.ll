Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gemm_x86_avx512?download=true
inline.NumInlined: 238
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 209
loop-unroll.NumUnrolled: 213
begin_hunk_0_@_ZN4ncnnL30transpose_pack_A_tile_quantizeERKNS_3MatERS0_iiiiS2_:bb.a
  %i.aow = load float, ptr %i.aov, align 4, !tbaa !69
  %i.aox = insertelement <16 x float> poison, float %i.aow, i64 0
  %i.aoy = shufflevector <16 x float> %i.aox, <16 x float> poison, <16 x i32> zeroinitializer
  %i.aoz = fmul fast <16 x float> %i.aoy, %i.aof  ; 2 uses
  %i.apa = getelementptr i8, ptr %i.aov, i64 4
  %i.apb = load float, ptr %i.apa, align 4, !tbaa !69
  %i.apc = insertelement <16 x float> poison, float %i.apb, i64 0
  %i.apd = shufflevector <16 x float> %i.apc, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ape = fmul fast <16 x float> %i.apd, %i.aoh  ; 2 uses
  %i.apf = getelementptr i8, ptr %i.aov, i64 8
  %i.apg = load float, ptr %i.apf, align 4, !tbaa !69
  %i.aph = insertelement <16 x float> poison, float %i.apg, i64 0
  %i.api = shufflevector <16 x float> %i.aph, <16 x float> poison, <16 x i32> zeroinitializer
  %i.apj = fmul fast <16 x float> %i.api, %i.aoj  ; 2 uses
  %i.apk = getelementptr i8, ptr %i.aov, i64 12
  %i.apl = load float, ptr %i.apk, align 4, !tbaa !69
  %i.apm = insertelement <16 x float> poison, float %i.apl, i64 0
  %i.apn = shufflevector <16 x float> %i.apm, <16 x float> poison, <16 x i32> zeroinitializer
  %i.apo = fmul fast <16 x float> %i.apn, %i.aol  ; 2 uses
  %i.app = getelementptr i8, ptr %i.aov, i64 16
  %i.apq = load float, ptr %i.app, align 4, !tbaa !69
  %i.apr = insertelement <16 x float> poison, float %i.apq, i64 0
  %i.aps = shufflevector <16 x float> %i.apr, <16 x float> poison, <16 x i32> zeroinitializer
  %i.apt = fmul fast <16 x float> %i.aps, %i.aon  ; 2 uses
  %i.apu = getelementptr i8, ptr %i.aov, i64 20
  %i.apv = load float, ptr %i.apu, align 4, !tbaa !69
  %i.apw = insertelement <16 x float> poison, float %i.apv, i64 0
  %i.apx = shufflevector <16 x float> %i.apw, <16 x float> poison, <16 x i32> zeroinitializer
  %i.apy = fmul fast <16 x float> %i.apx, %i.aop  ; 2 uses
  %i.apz = getelementptr i8, ptr %i.aov, i64 24
  %i.aqa = load float, ptr %i.apz, align 4, !tbaa !69
  %i.aqb = insertelement <16 x float> poison, float %i.aqa, i64 0
  %i.aqc = shufflevector <16 x float> %i.aqb, <16 x float> poison, <16 x i32> zeroinitializer
  %i.aqd = fmul fast <16 x float> %i.aqc, %i.aor  ; 2 uses
  %i.aqe = getelementptr i8, ptr %i.aov, i64 28
  %i.aqf = load float, ptr %i.aqe, align 4, !tbaa !69
  %i.aqg = insertelement <16 x float> poison, float %i.aqf, i64 0
  %i.aqh = shufflevector <16 x float> %i.aqg, <16 x float> poison, <16 x i32> zeroinitializer
  %i.aqi = fmul fast <16 x float> %i.aqh, %i.aot  ; 2 uses
  %i.aqj = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.aoz)
  %i.aqk = fadd fast <16 x float> %i.aqj, %i.aoz
  %i.aql = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.aqk, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.aqm = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.aql, <16 x i8> zeroinitializer, i16 -1)
  %i.aqn = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.aqm, <16 x i8> splat (i8 -127))
  %i.aqo = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.ape)
  %i.aqp = fadd fast <16 x float> %i.aqo, %i.ape
  %i.aqq = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.aqp, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.aqr = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.aqq, <16 x i8> zeroinitializer, i16 -1)
  %i.aqs = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.aqr, <16 x i8> splat (i8 -127))
  %i.aqt = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.apj)
  %i.aqu = fadd fast <16 x float> %i.aqt, %i.apj
  %i.aqv = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.aqu, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.aqw = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.aqv, <16 x i8> zeroinitializer, i16 -1)
  %i.aqx = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.aqw, <16 x i8> splat (i8 -127))
  %i.aqy = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.apo)
  %i.aqz = fadd fast <16 x float> %i.aqy, %i.apo
  %i.ara = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.aqz, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.arb = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.ara, <16 x i8> zeroinitializer, i16 -1)
  %i.arc = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.arb, <16 x i8> splat (i8 -127))
  %i.ard = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.apt)
  %i.are = fadd fast <16 x float> %i.ard, %i.apt
  %i.arf = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.are, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.arg = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.arf, <16 x i8> zeroinitializer, i16 -1)
  %i.arh = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.arg, <16 x i8> splat (i8 -127))
  %i.ari = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.apy)
  %i.arj = fadd fast <16 x float> %i.ari, %i.apy
  %i.ark = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.arj, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.arl = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.ark, <16 x i8> zeroinitializer, i16 -1)
  %i.arm = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.arl, <16 x i8> splat (i8 -127))
  %i.arn = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.aqd)
  %i.aro = fadd fast <16 x float> %i.arn, %i.aqd
  %i.arp = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.aro, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.arq = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.arp, <16 x i8> zeroinitializer, i16 -1)
  %i.arr = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.arq, <16 x i8> splat (i8 -127))
  %i.ars = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.aqi)
  %i.art = fadd fast <16 x float> %i.ars, %i.aqi
  %i.aru = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.art, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.arv = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.aru, <16 x i8> zeroinitializer, i16 -1)
  %i.arw = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.arv, <16 x i8> splat (i8 -127))
  %i.arx = bitcast <16 x i8> %i.aqn to <8 x i16>  ; 2 uses
  %i.ary = bitcast <16 x i8> %i.aqs to <8 x i16>  ; 2 uses
  %i.arz = shufflevector <8 x i16> %i.arx, <8 x i16> %i.ary, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.asa = shufflevector <8 x i16> %i.arx, <8 x i16> %i.ary, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.asb = bitcast <16 x i8> %i.aqx to <8 x i16>  ; 2 uses
  %i.asc = bitcast <16 x i8> %i.arc to <8 x i16>  ; 2 uses
  %i.asd = shufflevector <8 x i16> %i.asb, <8 x i16> %i.asc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ase = shufflevector <8 x i16> %i.asb, <8 x i16> %i.asc, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.asf = bitcast <16 x i8> %i.arh to <8 x i16>  ; 2 uses
  %i.asg = bitcast <16 x i8> %i.arm to <8 x i16>  ; 2 uses
  %i.ash = shufflevector <8 x i16> %i.asf, <8 x i16> %i.asg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.asi = shufflevector <8 x i16> %i.asf, <8 x i16> %i.asg, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.asj = bitcast <16 x i8> %i.arr to <8 x i16>  ; 2 uses
  %i.ask = bitcast <16 x i8> %i.arw to <8 x i16>  ; 2 uses
  %i.asl = shufflevector <8 x i16> %i.asj, <8 x i16> %i.ask, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.asm = shufflevector <8 x i16> %i.asj, <8 x i16> %i.ask, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.asn = bitcast <8 x i16> %i.arz to <4 x i32>  ; 2 uses
  %i.aso = bitcast <8 x i16> %i.asd to <4 x i32>  ; 2 uses
  %i.asp = shufflevector <4 x i32> %i.asn, <4 x i32> %i.aso, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.asq = shufflevector <4 x i32> %i.asn, <4 x i32> %i.aso, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.asr = bitcast <8 x i16> %i.asa to <4 x i32>  ; 2 uses
  %i.ass = bitcast <8 x i16> %i.ase to <4 x i32>  ; 2 uses
  %i.ast = shufflevector <4 x i32> %i.asr, <4 x i32> %i.ass, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.asu = shufflevector <4 x i32> %i.asr, <4 x i32> %i.ass, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.asv = bitcast <8 x i16> %i.ash to <4 x i32>  ; 2 uses
  %i.asw = bitcast <8 x i16> %i.asl to <4 x i32>  ; 2 uses
  %i.asx = shufflevector <4 x i32> %i.asv, <4 x i32> %i.asw, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.asy = shufflevector <4 x i32> %i.asv, <4 x i32> %i.asw, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.asz = bitcast <8 x i16> %i.asi to <4 x i32>  ; 2 uses
  %i.ata = bitcast <8 x i16> %i.asm to <4 x i32>  ; 2 uses
  %i.atb = shufflevector <4 x i32> %i.asz, <4 x i32> %i.ata, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.atc = shufflevector <4 x i32> %i.asz, <4 x i32> %i.ata, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.atd = shufflevector <4 x i32> %i.asq, <4 x i32> %i.asy, <8 x i32> <i32 0, i32 1, i32 4, i32 5, i32 2, i32 3, i32 6, i32 7>
  %i.ate = shufflevector <4 x i32> %i.asp, <4 x i32> %i.asx, <16 x i32> <i32 0, i32 1, i32 4, i32 5, i32 2, i32 3, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.atf = shufflevector <8 x i32> %i.atd, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.atg = shufflevector <16 x i32> %i.ate, <16 x i32> %i.atf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ath = shufflevector <4 x i32> %i.asu, <4 x i32> %i.atc, <8 x i32> <i32 0, i32 1, i32 4, i32 5, i32 2, i32 3, i32 6, i32 7>
  %i.ati = shufflevector <4 x i32> %i.ast, <4 x i32> %i.atb, <16 x i32> <i32 0, i32 1, i32 4, i32 5, i32 2, i32 3, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.atj = shufflevector <8 x i32> %i.ath, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.atk = shufflevector <16 x i32> %i.ati, <16 x i32> %i.atj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  store <16 x i32> %i.atg, ptr %.111320.i, align 64, !tbaa !90
  %i.atl = getelementptr inbounds nuw i8, ptr %.111320.i, i64 64
  store <16 x i32> %i.atk, ptr %i.atl, align 64, !tbaa !90
  %i.atm = getelementptr inbounds nuw i8, ptr %.111320.i, i64 128 ; 3 uses
  %i.atn = getelementptr inbounds nuw i8, ptr %.08131319.i, i64 %.idx873.i
  %i.ato = add nuw nsw i32 %.08211318.i, 16       ; 2 uses
  %i.atp = or disjoint i32 %i.ato, 15
  %i.atq = icmp slt i32 %i.atp, %5
  br i1 %i.atq, label %.lr.ph1321.i, label %.loopexit1270.i.loopexit17, !llvm.loop !1116

.loopexit1270.i.loopexit17:                       ; preds = %.lr.ph1321.i
  %indvars.iv.next1530.i = add nuw nsw i64 %indvars.iv1529.i, 8 ; 3 uses
  %i.atr = icmp slt i64 %indvars.iv.next1530.i, %invariant.op.i
  br i1 %i.atr, label %.lr.ph1321.i.preheader, label %.preheader1268.loopexit.i, !llvm.loop !1107

.preheader1262.loopexit.i:                        ; preds = %.loopexit1264.i.us, %.loopexit1264.i.preheader
  %.us-phi58 = phi ptr [ %.10.lcssa.i, %.loopexit1264.i.preheader ], [ %.29.i.us, %.loopexit1264.i.us ]
  %.us-phi59 = phi i64 [ %i.adi, %.loopexit1264.i.preheader ], [ %indvars.iv.next1534.i.us, %.loopexit1264.i.us ]
  %i.ats = trunc nuw nsw i64 %.us-phi59 to i32
  br label %.preheader1262.i

.preheader1262.i:                                 ; preds = %.preheader1262.loopexit.i, %.preheader1268.i
  %.2787.lcssa.i = phi i32 [ %.1786.lcssa.i, %.preheader1268.i ], [ %i.ats, %.preheader1262.loopexit.i ] ; 3 uses
  %.20.lcssa.i = phi ptr [ %.10.lcssa.i, %.preheader1268.i ], [ %.us-phi58, %.preheader1262.loopexit.i ] ; 3 uses
  %i.att = or disjoint i32 %.2787.lcssa.i, 1
  %i.atu = icmp slt i32 %i.att, %3
  br i1 %i.atu, label %.lr.ph1427.i, label %.preheader1254.i

.lr.ph1427.i:                                     ; preds = %.preheader1262.i
  %i.atv = sext i32 %4 to i64
  %i.atw = mul i64 %i.n, %i.atv
  %i.atx = icmp sgt i32 %5, 15
  %.idx865.i = shl i64 %i.n, 6
  %i.aty = icmp sgt i32 %5, 7
  %.idx864.i = shl i64 %i.n, 5
  %i.atz = icmp sgt i32 %5, 3                     ; 2 uses
  %.idx863.i = shl i64 %i.n, 4                    ; 2 uses
  %.idx860.i = shl i64 %i.n, 3                    ; 2 uses
  %.idx861.i = mul i64 %i.n, 12
  %i.aua = and i32 %5, -4
  %i.aub = sext i32 %.2787.lcssa.i to i64         ; 4 uses
  %i.auc = sext i32 %3 to i64
  %i.aud = sext i32 %2 to i64
  %i.aue = sext i32 %i.e to i64
  %invariant.op1639.i = add nsw i64 %i.auc, -1    ; 2 uses
  %i.auf = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.e)
  %i.aug = icmp eq i32 %i.auf, 1
  %i.auh = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.e, i1 true)
  br i1 %i.aug, label %.split1640.i.us, label %.loopexit1257.i.preheader

.loopexit1257.i.preheader:                        ; preds = %.lr.ph1427.i
  %i.aui = add nsw i64 %i.aub, 2
  %smax111 = tail call i64 @llvm.smax.i64(i64 %invariant.op1639.i, i64 %i.aui)
  %i.auj = xor i64 %i.aub, -1
  %i.auk = add nsw i64 %smax111, %i.auj
  %i.aul = and i64 %i.auk, -2
  %i.aum = add i64 %i.aul, %i.aub
  %i.aun = add i64 %i.aum, 2
  br label %.preheader1254.loopexit.i

.split1640.i.us:                                  ; preds = %.lr.ph1427.i, %.loopexit1257.i.us
  %indvars.iv1537.i.us = phi i64 [ %indvars.iv.next1538.i.us, %.loopexit1257.i.us ], [ %i.aub, %.lr.ph1427.i ] ; 2 uses
  %.301426.i.us = phi ptr [ %.40.i.us, %.loopexit1257.i.us ], [ %.20.lcssa.i, %.lr.ph1427.i ] ; 9 uses
  %i.auo = load ptr, ptr %0, align 8, !tbaa !25
  %i.aup = getelementptr inbounds nuw [4 x i8], ptr %i.auo, i64 %i.atw
  %i.auq = add nsw i64 %indvars.iv1537.i.us, %i.aud ; 5 uses
  %i.aur = mul nsw i64 %i.auq, %i.aue
  %i.aus = getelementptr inbounds [4 x i8], ptr %i.aup, i64 %i.aur ; 5 uses
  switch i32 %i.auh, label %.loopexit1257.i.us [
    i32 4, label %bb.u
    i32 3, label %bb.t
    i32 2, label %bb.s
    i32 0, label %bb.r
  ]

bb.r:                                             ; preds = %.split1640.i.us
  %i.aut = load ptr, ptr %6, align 8, !tbaa !25
  %i.auu = getelementptr [4 x i8], ptr %i.aut, i64 %i.auq ; 2 uses
  %i.auv = load float, ptr %i.auu, align 4, !tbaa !69 ; 2 uses
  %i.auw = getelementptr i8, ptr %i.auu, i64 4
  %i.aux = load float, ptr %i.auw, align 4, !tbaa !69 ; 2 uses
  %i.auy = insertelement <4 x float> poison, float %i.auv, i64 0 ; 2 uses
  %7 = shufflevector <4 x float> %i.auy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.auz = insertelement <4 x float> poison, float %i.aux, i64 0 ; 2 uses
  %8 = shufflevector <4 x float> %i.auz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ava = shufflevector <4 x float> %i.auy, <4 x float> %i.auz, <4 x i32> <i32 0, i32 0, i32 4, i32 4>
  br i1 %i.atz, label %.lr.ph1409.i.us, label %.preheader1258.i.us

.lr.ph1409.i.us:                                  ; preds = %bb.r, %.lr.ph1409.i.us
  %.371408.i.us = phi ptr [ %i.awg, %.lr.ph1409.i.us ], [ %.301426.i.us, %bb.r ] ; 2 uses
  %.08241407.i.us = phi i32 [ %i.awi, %.lr.ph1409.i.us ], [ 0, %bb.r ]
  %.68471406.i.us = phi ptr [ %i.awh, %.lr.ph1409.i.us ], [ %i.aus, %bb.r ] ; 5 uses
  %i.avb = load i64, ptr %.68471406.i.us, align 1, !tbaa !90
  %i.avc = insertelement <2 x i64> poison, i64 %i.avb, i64 0
  %i.avd = bitcast <2 x i64> %i.avc to <4 x float>
  %i.ave = getelementptr inbounds nuw [4 x i8], ptr %.68471406.i.us, i64 %i.n
  %i.avf = load i64, ptr %i.ave, align 1, !tbaa !90
  %i.avg = insertelement <2 x i64> poison, i64 %i.avf, i64 0
  %i.avh = bitcast <2 x i64> %i.avg to <4 x float>
  %i.avi = getelementptr inbounds nuw i8, ptr %.68471406.i.us, i64 %.idx860.i
  %i.avj = load i64, ptr %i.avi, align 1, !tbaa !90
  %i.avk = insertelement <2 x i64> poison, i64 %i.avj, i64 0
  %i.avl = bitcast <2 x i64> %i.avk to <4 x float>
  %i.avm = getelementptr inbounds nuw i8, ptr %.68471406.i.us, i64 %.idx861.i
  %i.avn = load i64, ptr %i.avm, align 1, !tbaa !90
  %i.avo = insertelement <2 x i64> poison, i64 %i.avn, i64 0
  %i.avp = bitcast <2 x i64> %i.avo to <4 x float>
  %i.avq = shufflevector <4 x float> %i.avd, <4 x float> %i.avh, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.avr = shufflevector <4 x float> %i.avl, <4 x float> %i.avp, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %9 = shufflevector <4 x float> %i.avq, <4 x float> %i.avr, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %10 = shufflevector <4 x float> %i.avq, <4 x float> %i.avr, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.avs = fmul fast <4 x float> %7, %9           ; 2 uses
  %i.avt = fmul fast <4 x float> %8, %10          ; 2 uses
  %11 = shufflevector <4 x float> %i.avs, <4 x float> %i.avt, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %12 = shufflevector <4 x float> %i.avs, <4 x float> %i.avt, <4 x i32> <i32 2, i32 3, i32 6, i32 7> ; 2 uses
  %i.avu = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %11)
  %i.avv = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %12)
  %i.avw = fadd fast <4 x float> %i.avu, %11
  %i.avx = fadd fast <4 x float> %i.avv, %12
  %i.avy = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.avw)
  %i.avz = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.avx)
  %i.awa = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.avy, <4 x i32> %i.avz)
  %i.awb = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.awa, <8 x i16> splat (i16 -127))
  %i.awc = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.awb, <8 x i16> splat (i16 127))
  %i.awd = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.awc, <8 x i16> poison)
  %i.awe = bitcast <16 x i8> %i.awd to <2 x i64>
  %i.awf = extractelement <2 x i64> %i.awe, i64 0
  store i64 %i.awf, ptr %.371408.i.us, align 8, !tbaa !111
  %i.awg = getelementptr inbounds nuw i8, ptr %.371408.i.us, i64 8 ; 2 uses
  %i.awh = getelementptr inbounds nuw i8, ptr %.68471406.i.us, i64 %.idx863.i ; 2 uses
  %i.awi = add nuw nsw i32 %.08241407.i.us, 4     ; 2 uses
  %i.awj = or disjoint i32 %i.awi, 3
  %i.awk = icmp slt i32 %i.awj, %5
  br i1 %i.awk, label %.lr.ph1409.i.us, label %.preheader1258.i.us, !llvm.loop !1117

.preheader1258.i.us:                              ; preds = %.lr.ph1409.i.us, %bb.r
  %.6847.lcssa.i.us = phi ptr [ %i.aus, %bb.r ], [ %i.awh, %.lr.ph1409.i.us ] ; 2 uses
  %.0824.lcssa.i.us = phi i32 [ 0, %bb.r ], [ %i.aua, %.lr.ph1409.i.us ] ; 3 uses
  %.37.lcssa.i.us = phi ptr [ %.301426.i.us, %bb.r ], [ %i.awg, %.lr.ph1409.i.us ] ; 2 uses
  %i.awl = or disjoint i32 %.0824.lcssa.i.us, 1
  %i.awm = icmp slt i32 %i.awl, %5
  br i1 %i.awm, label %.lr.ph1416.i.us, label %.preheader1256.i.us

.lr.ph1416.i.us:                                  ; preds = %.preheader1258.i.us, %.lr.ph1416.i.us
  %.381415.i.us = phi ptr [ %i.axf, %.lr.ph1416.i.us ], [ %.37.lcssa.i.us, %.preheader1258.i.us ] ; 2 uses
  %.18251414.i.us = phi i32 [ %i.axh, %.lr.ph1416.i.us ], [ %.0824.lcssa.i.us, %.preheader1258.i.us ]
  %.78481413.i.us = phi ptr [ %i.axg, %.lr.ph1416.i.us ], [ %.6847.lcssa.i.us, %.preheader1258.i.us ] ; 3 uses
  %i.awn = load i64, ptr %.78481413.i.us, align 1, !tbaa !90
  %i.awo = insertelement <2 x i64> poison, i64 %i.awn, i64 0
  %i.awp = bitcast <2 x i64> %i.awo to <4 x float>
  %i.awq = getelementptr inbounds nuw [4 x i8], ptr %.78481413.i.us, i64 %i.n
  %i.awr = load i64, ptr %i.awq, align 1, !tbaa !90
  %i.aws = insertelement <2 x i64> poison, i64 %i.awr, i64 0
  %i.awt = bitcast <2 x i64> %i.aws to <4 x float>
  %i.awu = shufflevector <4 x float> %i.awp, <4 x float> %i.awt, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.awv = fmul fast <4 x float> %i.awu, %i.ava   ; 2 uses
  %i.aww = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.awv)
  %i.awx = fadd fast <4 x float> %i.aww, %i.awv
  %i.awy = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.awx)
  %i.awz = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.awy, <4 x i32> poison)
  %i.axa = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.awz, <8 x i16> <i16 -127, i16 -127, i16 -127, i16 -127, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.axb = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.axa, <8 x i16> <i16 127, i16 127, i16 127, i16 127, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.axc = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.axb, <8 x i16> poison)
  %i.axd = bitcast <16 x i8> %i.axc to <4 x i32>
  %i.axe = extractelement <4 x i32> %i.axd, i64 0
  store i32 %i.axe, ptr %.381415.i.us, align 4, !tbaa !51
  %i.axf = getelementptr inbounds nuw i8, ptr %.381415.i.us, i64 4 ; 2 uses
  %i.axg = getelementptr inbounds nuw i8, ptr %.78481413.i.us, i64 %.idx860.i ; 2 uses
  %i.axh = add nuw nsw i32 %.18251414.i.us, 2     ; 3 uses
  %i.axi = or disjoint i32 %i.axh, 1
  %i.axj = icmp slt i32 %i.axi, %5
  br i1 %i.axj, label %.lr.ph1416.i.us, label %.preheader1256.i.us, !llvm.loop !1118

.preheader1256.i.us:                              ; preds = %.lr.ph1416.i.us, %.preheader1258.i.us
  %.7848.lcssa.i.us = phi ptr [ %.6847.lcssa.i.us, %.preheader1258.i.us ], [ %i.axg, %.lr.ph1416.i.us ]
  %.1825.lcssa.i.us = phi i32 [ %.0824.lcssa.i.us, %.preheader1258.i.us ], [ %i.axh, %.lr.ph1416.i.us ] ; 2 uses
  %.38.lcssa.i.us = phi ptr [ %.37.lcssa.i.us, %.preheader1258.i.us ], [ %i.axf, %.lr.ph1416.i.us ] ; 2 uses
  %i.axk = icmp slt i32 %.1825.lcssa.i.us, %5
  br i1 %i.axk, label %.lr.ph1423.i.us, label %.loopexit1257.i.us

.lr.ph1423.i.us:                                  ; preds = %.preheader1256.i.us, %.lr.ph1423.i.us
  %.391422.i.us = phi ptr [ %i.axv, %.lr.ph1423.i.us ], [ %.38.lcssa.i.us, %.preheader1256.i.us ] ; 3 uses
  %.28261421.i.us = phi i32 [ %i.axx, %.lr.ph1423.i.us ], [ %.1825.lcssa.i.us, %.preheader1256.i.us ]
  %.88491420.i.us = phi ptr [ %i.axw, %.lr.ph1423.i.us ], [ %.7848.lcssa.i.us, %.preheader1256.i.us ] ; 3 uses
  %i.axl = load float, ptr %.88491420.i.us, align 4, !tbaa !69
  %i.axm = fmul fast float %i.axl, %i.auv
  %i.axn = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.axm)
  %i.axo = fptosi float %i.axn to i32
  %spec.select.i8801247.i.us = tail call i32 @llvm.smax.i32(i32 %i.axo, i32 -127)
  %.0.i8811248.i.us = tail call i32 @llvm.smin.i32(i32 %spec.select.i8801247.i.us, i32 127)
  %.0.i881.i.us = trunc nsw i32 %.0.i8811248.i.us to i8
  store i8 %.0.i881.i.us, ptr %.391422.i.us, align 1, !tbaa !90
  %i.axp = getelementptr inbounds nuw i8, ptr %.88491420.i.us, i64 4
  %i.axq = load float, ptr %i.axp, align 4, !tbaa !69
  %i.axr = fmul fast float %i.axq, %i.aux
  %i.axs = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.axr)
  %i.axt = fptosi float %i.axs to i32
  %spec.select.i8781249.i.us = tail call i32 @llvm.smax.i32(i32 %i.axt, i32 -127)
  %.0.i8791250.i.us = tail call i32 @llvm.smin.i32(i32 %spec.select.i8781249.i.us, i32 127)
  %.0.i879.i.us = trunc nsw i32 %.0.i8791250.i.us to i8
  %i.axu = getelementptr inbounds nuw i8, ptr %.391422.i.us, i64 1
  store i8 %.0.i879.i.us, ptr %i.axu, align 1, !tbaa !90
  %i.axv = getelementptr inbounds nuw i8, ptr %.391422.i.us, i64 2 ; 2 uses
  %i.axw = getelementptr inbounds nuw [4 x i8], ptr %.88491420.i.us, i64 %i.n
  %i.axx = add nuw nsw i32 %.28261421.i.us, 1     ; 2 uses
  %exitcond1536.not.i.us = icmp eq i32 %i.axx, %5
  br i1 %exitcond1536.not.i.us, label %.loopexit1257.i.us, label %.lr.ph1423.i.us, !llvm.loop !1119

bb.s:                                             ; preds = %.split1640.i.us
  %i.axy = load ptr, ptr %6, align 8, !tbaa !25
  %i.axz = getelementptr [4 x i8], ptr %i.axy, i64 %i.auq ; 2 uses
  %i.aya = load float, ptr %i.axz, align 4, !tbaa !69
  %i.ayb = insertelement <4 x float> poison, float %i.aya, i64 0
  %13 = shufflevector <4 x float> %i.ayb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ayc = getelementptr i8, ptr %i.axz, i64 4
  %i.ayd = load float, ptr %i.ayc, align 4, !tbaa !69
  %i.aye = insertelement <4 x float> poison, float %i.ayd, i64 0
  %14 = shufflevector <4 x float> %i.aye, <4 x float> poison, <4 x i32> zeroinitializer
  br i1 %i.atz, label %.lr.ph1403.i.us, label %.loopexit1257.i.us

.lr.ph1403.i.us:                                  ; preds = %bb.s, %.lr.ph1403.i.us
  %.351402.i.us = phi ptr [ %i.ayv, %.lr.ph1403.i.us ], [ %.301426.i.us, %bb.s ] ; 2 uses
  %.08371401.i.us = phi i32 [ %i.ayx, %.lr.ph1403.i.us ], [ 0, %bb.s ]
  %.48451400.i.us = phi ptr [ %i.ayw, %.lr.ph1403.i.us ], [ %i.aus, %bb.s ] ; 3 uses
  %i.ayf = load <4 x float>, ptr %.48451400.i.us, align 16, !tbaa !90
  %i.ayg = getelementptr inbounds nuw i8, ptr %.48451400.i.us, i64 16
  %i.ayh = load <4 x float>, ptr %i.ayg, align 16, !tbaa !90
  %15 = fmul fast <4 x float> %i.ayf, %13         ; 2 uses
  %i.ayi = fmul fast <4 x float> %i.ayh, %14      ; 2 uses
  %16 = shufflevector <4 x float> %15, <4 x float> %i.ayi, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %17 = shufflevector <4 x float> %15, <4 x float> %i.ayi, <4 x i32> <i32 2, i32 3, i32 6, i32 7> ; 2 uses
  %i.ayj = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %16)
  %i.ayk = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %17)
  %i.ayl = fadd fast <4 x float> %i.ayj, %16
  %i.aym = fadd fast <4 x float> %i.ayk, %17
  %i.ayn = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ayl)
  %i.ayo = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aym)
  %i.ayp = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ayn, <4 x i32> %i.ayo)
  %i.ayq = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ayp, <8 x i16> splat (i16 -127))
  %i.ayr = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ayq, <8 x i16> splat (i16 127))
  %i.ays = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ayr, <8 x i16> poison)
  %i.ayt = bitcast <16 x i8> %i.ays to <2 x i64>
  %i.ayu = extractelement <2 x i64> %i.ayt, i64 0
  store i64 %i.ayu, ptr %.351402.i.us, align 8, !tbaa !111
  %i.ayv = getelementptr inbounds nuw i8, ptr %.351402.i.us, i64 8 ; 2 uses
  %i.ayw = getelementptr inbounds nuw i8, ptr %.48451400.i.us, i64 %.idx863.i
  %i.ayx = add nuw nsw i32 %.08371401.i.us, 4     ; 2 uses
  %i.ayy = or disjoint i32 %i.ayx, 3
  %i.ayz = icmp slt i32 %i.ayy, %5
  br i1 %i.ayz, label %.lr.ph1403.i.us, label %.loopexit1257.i.us, !llvm.loop !1120

bb.t:                                             ; preds = %.split1640.i.us
  %i.aza = load ptr, ptr %6, align 8, !tbaa !25
  %i.azb = getelementptr [4 x i8], ptr %i.aza, i64 %i.auq ; 2 uses
  %i.azc = load float, ptr %i.azb, align 4, !tbaa !69
  %i.azd = insertelement <8 x float> poison, float %i.azc, i64 0
  %i.aze = shufflevector <8 x float> %i.azd, <8 x float> poison, <8 x i32> zeroinitializer
  %i.azf = getelementptr i8, ptr %i.azb, i64 4
  %i.azg = load float, ptr %i.azf, align 4, !tbaa !69
  %i.azh = insertelement <8 x float> poison, float %i.azg, i64 0
  %i.azi = shufflevector <8 x float> %i.azh, <8 x float> poison, <8 x i32> zeroinitializer
  br i1 %i.aty, label %.lr.ph1397.i.us, label %.loopexit1257.i.us

.lr.ph1397.i.us:                                  ; preds = %bb.t, %.lr.ph1397.i.us
  %.331396.i.us = phi ptr [ %i.baf, %.lr.ph1397.i.us ], [ %.301426.i.us, %bb.t ] ; 2 uses
  %.08381395.i.us = phi i32 [ %i.bah, %.lr.ph1397.i.us ], [ 0, %bb.t ]
  %.28431394.i.us = phi ptr [ %i.bag, %.lr.ph1397.i.us ], [ %i.aus, %bb.t ] ; 3 uses
  %i.azj = load <8 x float>, ptr %.28431394.i.us, align 32, !tbaa !90
  %i.azk = getelementptr inbounds nuw i8, ptr %.28431394.i.us, i64 32
  %i.azl = load <8 x float>, ptr %i.azk, align 32, !tbaa !90
  %i.azm = fmul fast <8 x float> %i.azj, %i.aze   ; 2 uses
  %i.azn = fmul fast <8 x float> %i.azl, %i.azi   ; 2 uses
  %i.azo = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.azm)
  %i.azp = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.azn)
  %i.azq = fadd fast <8 x float> %i.azo, %i.azm
  %i.azr = fadd fast <8 x float> %i.azp, %i.azn
  %i.azs = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.azq)
  %i.azt = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.azr)
  %i.azu = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.azs, <8 x i32> %i.azt)
  %i.azv = bitcast <16 x i16> %i.azu to <4 x i64>
  %i.azw = shufflevector <4 x i64> %i.azv, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.azx = bitcast <4 x i64> %i.azw to <16 x i16>
  %i.azy = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.azx, <16 x i16> splat (i16 -127))
  %i.azz = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.azy, <16 x i16> splat (i16 127))
  %i.baa = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.azz, <16 x i16> poison)
  %i.bab = bitcast <32 x i8> %i.baa to <8 x i32>
  %i.bac = shufflevector <8 x i32> %i.bab, <8 x i32> poison, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.bad = bitcast <4 x i32> %i.bac to <8 x i16>
  %i.bae = shufflevector <8 x i16> %i.bad, <8 x i16> poison, <8 x i32> <i32 0, i32 2, i32 1, i32 3, i32 4, i32 6, i32 5, i32 7>
  store <8 x i16> %i.bae, ptr %.331396.i.us, align 16, !tbaa !90
  %i.baf = getelementptr inbounds nuw i8, ptr %.331396.i.us, i64 16 ; 2 uses
  %i.bag = getelementptr inbounds nuw i8, ptr %.28431394.i.us, i64 %.idx864.i
  %i.bah = add nuw nsw i32 %.08381395.i.us, 8     ; 2 uses
  %i.bai = or disjoint i32 %i.bah, 7
  %i.baj = icmp slt i32 %i.bai, %5
  br i1 %i.baj, label %.lr.ph1397.i.us, label %.loopexit1257.i.us, !llvm.loop !1121

bb.u:                                             ; preds = %.split1640.i.us
  %i.bak = load ptr, ptr %6, align 8, !tbaa !25
  %i.bal = getelementptr [4 x i8], ptr %i.bak, i64 %i.auq ; 2 uses
  %i.bam = load float, ptr %i.bal, align 4, !tbaa !69
  %i.ban = insertelement <16 x float> poison, float %i.bam, i64 0
  %i.bao = shufflevector <16 x float> %i.ban, <16 x float> poison, <16 x i32> zeroinitializer
  %i.bap = getelementptr i8, ptr %i.bal, i64 4
  %i.baq = load float, ptr %i.bap, align 4, !tbaa !69
  %i.bar = insertelement <16 x float> poison, float %i.baq, i64 0
  %i.bas = shufflevector <16 x float> %i.bar, <16 x float> poison, <16 x i32> zeroinitializer
  br i1 %i.atx, label %.lr.ph1391.i.us, label %.loopexit1257.i.us

.lr.ph1391.i.us:                                  ; preds = %bb.u, %.lr.ph1391.i.us
  %.311390.i.us = phi ptr [ %i.bbn, %.lr.ph1391.i.us ], [ %.301426.i.us, %bb.u ] ; 3 uses
  %.08401389.i.us = phi i32 [ %i.bbp, %.lr.ph1391.i.us ], [ 0, %bb.u ]
  %.08411388.i.us = phi ptr [ %i.bbo, %.lr.ph1391.i.us ], [ %i.aus, %bb.u ] ; 3 uses
  %i.bat = load <16 x float>, ptr %.08411388.i.us, align 64, !tbaa !90
  %i.bau = getelementptr inbounds nuw i8, ptr %.08411388.i.us, i64 64
  %i.bav = load <16 x float>, ptr %i.bau, align 64, !tbaa !90
  %i.baw = fmul fast <16 x float> %i.bat, %i.bao  ; 2 uses
  %i.bax = fmul fast <16 x float> %i.bav, %i.bas  ; 2 uses
  %i.bay = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.baw)
  %i.baz = fadd fast <16 x float> %i.bay, %i.baw
  %i.bba = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.baz, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.bbb = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.bba, <16 x i8> zeroinitializer, i16 -1)
  %i.bbc = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.bbb, <16 x i8> splat (i8 -127))
  %i.bbd = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float 5.000000e-01), <16 x float> %i.bax)
  %i.bbe = fadd fast <16 x float> %i.bbd, %i.bax
  %i.bbf = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.bbe, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.bbg = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %i.bbf, <16 x i8> zeroinitializer, i16 -1)
  %i.bbh = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.bbg, <16 x i8> splat (i8 -127))
  %i.bbi = bitcast <16 x i8> %i.bbc to <8 x i16>  ; 2 uses
  %i.bbj = bitcast <16 x i8> %i.bbh to <8 x i16>  ; 2 uses
  %i.bbk = shufflevector <8 x i16> %i.bbi, <8 x i16> %i.bbj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bbl = shufflevector <8 x i16> %i.bbi, <8 x i16> %i.bbj, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x i16> %i.bbk, ptr %.311390.i.us, align 16, !tbaa !90
  %i.bbm = getelementptr inbounds nuw i8, ptr %.311390.i.us, i64 16
  store <8 x i16> %i.bbl, ptr %i.bbm, align 16, !tbaa !90
  %i.bbn = getelementptr inbounds nuw i8, ptr %.311390.i.us, i64 32 ; 2 uses
  %i.bbo = getelementptr inbounds nuw i8, ptr %.08411388.i.us, i64 %.idx865.i
  %i.bbp = add nuw nsw i32 %.08401389.i.us, 16    ; 2 uses
  %i.bbq = or disjoint i32 %i.bbp, 15
  %i.bbr = icmp slt i32 %i.bbq, %5
  br i1 %i.bbr, label %.lr.ph1391.i.us, label %.loopexit1257.i.us, !llvm.loop !1122

.loopexit1257.i.us:                               ; preds = %.lr.ph1423.i.us, %.lr.ph1403.i.us, %.lr.ph1397.i.us, %.lr.ph1391.i.us, %bb.u, %bb.t, %bb.s, %.preheader1256.i.us, %.split1640.i.us
  %.40.i.us = phi ptr [ %.301426.i.us, %.split1640.i.us ], [ %.38.lcssa.i.us, %.preheader1256.i.us ], [ %i.ayv, %.lr.ph1403.i.us ], [ %i.baf, %.lr.ph1397.i.us ], [ %.301426.i.us, %bb.s ], [ %i.bbn, %.lr.ph1391.i.us ], [ %.301426.i.us, %bb.t ], [ %.301426.i.us, %bb.u ], [ %i.axv, %.lr.ph1423.i.us ] ; 2 uses
  %indvars.iv.next1538.i.us = add nuw nsw i64 %indvars.iv1537.i.us, 2 ; 3 uses
  %i.bbs = icmp slt i64 %indvars.iv.next1538.i.us, %invariant.op1639.i
  br i1 %i.bbs, label %.split1640.i.us, label %.preheader1254.loopexit.i, !llvm.loop !1123

.preheader1254.loopexit.i:                        ; preds = %.loopexit1257.i.us, %.loopexit1257.i.preheader
  %.us-phi60 = phi ptr [ %.20.lcssa.i, %.loopexit1257.i.preheader ], [ %.40.i.us, %.loopexit1257.i.us ]
  %.us-phi61 = phi i64 [ %i.aun, %.loopexit1257.i.preheader ], [ %indvars.iv.next1538.i.us, %.loopexit1257.i.us ]
  %i.bbt = trunc nsw i64 %.us-phi61 to i32
  br label %.preheader1254.i

.preheader1254.i:                                 ; preds = %.preheader1254.loopexit.i, %.preheader1262.i
  %.3788.lcssa.i = phi i32 [ %.2787.lcssa.i, %.preheader1262.i ], [ %i.bbt, %.preheader1254.loopexit.i ] ; 2 uses
  %.30.lcssa.i = phi ptr [ %.20.lcssa.i, %.preheader1262.i ], [ %.us-phi60, %.preheader1254.loopexit.i ]
  %i.bbu = icmp slt i32 %.3788.lcssa.i, %3
  br i1 %i.bbu, label %.lr.ph1462.i, label %_ZN4ncnnL34transpose_pack_A_tile_fp32_to_int8ERKNS_3MatERS0_iiiiS2_.exit

.lr.ph1462.i:                                     ; preds = %.preheader1254.i
  %i.bbv = sext i32 %4 to i64
  %i.bbw = mul i64 %i.n, %i.bbv
  %i.bbx = icmp sgt i32 %5, 15
  %.idx858.i = shl i64 %i.n, 6                    ; 2 uses
  %i.bby = icmp sgt i32 %5, 7
  %.idx857.i = shl i64 %i.n, 5                    ; 2 uses
  %i.bbz = icmp sgt i32 %5, 3                     ; 2 uses
  %.idx856.i = shl i64 %i.n, 4                    ; 2 uses
  %i.bca = trunc i64 %i.n to i32
  %i.bcb = insertelement <4 x i32> poison, i32 %i.bca, i64 0
  %i.bcc = shufflevector <4 x i32> %i.bcb, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bcd = mul <4 x i32> %i.bcc, <i32 0, i32 1, i32 2, i32 3>
  %i.bce = and i32 %5, -4
  %i.bcf = sext i32 %2 to i64
  %i.bcg = sext i32 %i.e to i64
  %wide.trip.count.i = sext i32 %3 to i64
  %i.bch = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.e)
  %i.bci = icmp eq i32 %i.bch, 1
  %i.bcj = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.e, i1 true)
  br i1 %i.bci, label %.split1641.i.preheader, label %_ZN4ncnnL34transpose_pack_A_tile_fp32_to_int8ERKNS_3MatERS0_iiiiS2_.exit

.split1641.i.preheader:                           ; preds = %.lr.ph1462.i
  %i.bck = sext i32 %.3788.lcssa.i to i64
  %i.bcl = add i32 %5, -8                         ; 2 uses
  %i.bcm = lshr i32 %i.bcl, 3                     ; 2 uses
  %i.bcn = add nuw nsw i32 %i.bcm, 1              ; 2 uses
  %i.bco = add i32 %5, -16                        ; 2 uses
  %i.bcp = lshr i32 %i.bco, 4                     ; 2 uses
  %i.bcq = add nuw nsw i32 %i.bcp, 1              ; 2 uses
  %xtraiter262 = and i32 %5, 1
  %lcmp.mod263.not = icmp eq i32 %xtraiter262, 0
  %i.bcr = icmp eq i32 %i.bcm, 0
  %unroll_iter = and i32 %i.bcn, 1073741822
  %i.bcs = and i32 %i.bcl, 8
  %lcmp.mod265.not.not = icmp eq i32 %i.bcs, 0
  %lcmp.mod267 = trunc i32 %i.bcn to i1
  %i.bct = icmp eq i32 %i.bcp, 0
  %unroll_iter272 = and i32 %i.bcq, 536870910
  %i.bcu = and i32 %i.bco, 16
  %lcmp.mod269.not.not = icmp eq i32 %i.bcu, 0
  %lcmp.mod271 = trunc i32 %i.bcq to i1
  br label %.split1641.i

.split1641.i:                                     ; preds = %.split1641.i.preheader, %.loopexit.i
  %indvars.iv1541.i = phi i64 [ %indvars.iv.next1542.i, %.loopexit.i ], [ %i.bck, %.split1641.i.preheader ] ; 2 uses
  %.411461.i = phi ptr [ %.50.i, %.loopexit.i ], [ %.30.lcssa.i, %.split1641.i.preheader ] ; 11 uses
  %i.bcv = load ptr, ptr %0, align 8, !tbaa !25
  %i.bcw = getelementptr inbounds nuw [4 x i8], ptr %i.bcv, i64 %i.bbw
  %i.bcx = add nsw i64 %indvars.iv1541.i, %i.bcf  ; 2 uses
  %i.bcy = mul nsw i64 %i.bcx, %i.bcg
  %i.bcz = getelementptr inbounds [4 x i8], ptr %i.bcw, i64 %i.bcy ; 7 uses
  %i.bda = load ptr, ptr %6, align 8, !tbaa !25
  %i.bdb = getelementptr inbounds nuw [4 x i8], ptr %i.bda, i64 %i.bcx
  %i.bdc = load float, ptr %i.bdb, align 4, !tbaa !69 ; 7 uses
  switch i32 %i.bcj, label %.loopexit.i [
    i32 4, label %bb.v
    i32 3, label %bb.w
    i32 2, label %bb.x
    i32 0, label %bb.y
  ]

bb.v:                                             ; preds = %.split1641.i
  %i.bdd = insertelement <16 x float> poison, float %i.bdc, i64 0
  %i.bde = shufflevector <16 x float> %i.bdd, <16 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  br i1 %i.bbx, label %.lr.ph1433.i.preheader, label %.loopexit.i

.lr.ph1433.i.preheader:                           ; preds = %bb.v
  br i1 %i.bct, label %.lr.ph1433.i.epil.preheader, label %.lr.ph1433.i

.lr.ph1433.i:                                     ; preds = %.lr.ph1433.i.preheader, %.lr.ph1433.i
  %.421432.i = phi ptr [ %i.bdv, %.lr.ph1433.i ], [ %.411461.i, %.lr.ph1433.i.preheader ] ; 3 uses
  %.08001430.i = phi ptr [ %i.bdw, %.lr.ph1433.i ], [ %i.bcz, %.lr.ph1433.i.preheader ] ; 2 uses
  %niter273 = phi i32 [ %niter273.next.1, %.lr.ph1433.i ], [ 0, %.lr.ph1433.i.preheader ]
  %i.bdf = load <16 x float>, ptr %.08001430.i, align 64, !tbaa !90
end_hunk_0
begin_hunk_1_@_ZN4ncnnL20pack_A_tile_quantizeERKNS_3MatERS0_iiiiS2_:bb.a
  %i.ut = load <4 x float>, ptr %.4470704.i, align 16, !tbaa !90
  %i.uu = getelementptr inbounds nuw i8, ptr %.4470704.i, i64 %.idx491.i
  %i.uv = load <4 x float>, ptr %i.uu, align 16, !tbaa !90
  %i.uw = shufflevector <4 x float> %i.ut, <4 x float> %i.uv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ux = fmul fast <8 x float> %i.uw, %i.qm      ; 2 uses
  %i.uy = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.ux)
  %i.uz = fadd fast <8 x float> %i.uy, %i.ux
  %i.va = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.uz)
  %i.vb = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.256(<8 x i32> %i.va, <16 x i8> zeroinitializer, i8 -1)
  %i.vc = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.vb, <16 x i8> <i8 -127, i8 -127, i8 -127, i8 -127, i8 -127, i8 -127, i8 -127, i8 -127, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>)
  %i.vd = bitcast <16 x i8> %i.vc to <2 x i64>
  %i.ve = extractelement <2 x i64> %i.vd, i64 0
  store i64 %i.ve, ptr %.18705.i, align 8, !tbaa !111
  %i.vf = getelementptr inbounds nuw i8, ptr %.18705.i, i64 8
  %i.vg = getelementptr inbounds nuw i8, ptr %.4470704.i, i64 16 ; 2 uses
  %i.vh = load <4 x float>, ptr %i.vg, align 16, !tbaa !90
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vg, i64 %.idx491.i
  %i.vj = load <4 x float>, ptr %i.vi, align 16, !tbaa !90
  %i.vk = shufflevector <4 x float> %i.vh, <4 x float> %i.vj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.vl = fmul fast <8 x float> %i.vk, %i.qm      ; 2 uses
  %i.vm = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.vl)
  %i.vn = fadd fast <8 x float> %i.vm, %i.vl
  %i.vo = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.vn)
  %i.vp = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.256(<8 x i32> %i.vo, <16 x i8> zeroinitializer, i8 -1)
  %i.vq = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.vp, <16 x i8> <i8 -127, i8 -127, i8 -127, i8 -127, i8 -127, i8 -127, i8 -127, i8 -127, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>)
  %i.vr = bitcast <16 x i8> %i.vq to <2 x i64>
  %i.vs = extractelement <2 x i64> %i.vr, i64 0
  store i64 %i.vs, ptr %i.vf, align 8, !tbaa !111
  %i.vt = getelementptr inbounds nuw i8, ptr %.18705.i, i64 16 ; 2 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %.4470704.i, i64 32
  %i.vv = add nuw nsw i32 %.1479703.i, 2          ; 2 uses
  %exitcond858.not.i.1 = icmp eq i32 %i.vv, %5
  br i1 %exitcond858.not.i.1, label %.loopexit608.i, label %.lr.ph706.i, !llvm.loop !1147

.preheader609.i:                                  ; preds = %bb.k
  br i1 %i.jl, label %.lr.ph712.i, label %.preheader607.i

.preheader607.i:                                  ; preds = %.lr.ph712.i, %.preheader609.i
  %.0480.lcssa.i = phi i32 [ 0, %.preheader609.i ], [ %i.jq, %.lr.ph712.i ] ; 4 uses
  %.6472.lcssa.i = phi ptr [ %i.qi, %.preheader609.i ], [ %i.xh, %.lr.ph712.i ] ; 3 uses
  %.20.lcssa.i = phi ptr [ %.13722.i, %.preheader609.i ], [ %i.xg, %.lr.ph712.i ] ; 4 uses
  %i.vw = icmp slt i32 %.0480.lcssa.i, %5
  br i1 %i.vw, label %.lr.ph719.i.preheader, label %.loopexit608.i

.lr.ph719.i.preheader:                            ; preds = %.preheader607.i
  %.neg330 = or disjoint i32 %.0480.lcssa.i, 1
  br i1 %lcmp.mod317.not, label %.lr.ph719.i.prol.loopexit, label %.lr.ph719.i.prol

.lr.ph719.i.prol:                                 ; preds = %.lr.ph719.i.preheader
  %i.vx = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %.6472.lcssa.i, <8 x i32> %i.jp, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.vy = fmul fast <8 x float> %i.vx, %i.qm      ; 2 uses
  %i.vz = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.vy)
  %i.wa = fadd fast <8 x float> %i.vz, %i.vy
  %i.wb = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.wa)
  %i.wc = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.256(<8 x i32> %i.wb, <16 x i8> zeroinitializer, i8 -1)
  %i.wd = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.wc, <16 x i8> <i8 -127, i8 -127, i8 -127, i8 -127, i8 -127, i8 -127, i8 -127, i8 -127, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>)
  %i.we = bitcast <16 x i8> %i.wd to <2 x i64>
  %i.wf = extractelement <2 x i64> %i.we, i64 0
  store i64 %i.wf, ptr %.20.lcssa.i, align 8, !tbaa !111
  %i.wg = getelementptr inbounds nuw i8, ptr %.20.lcssa.i, i64 8 ; 2 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %.6472.lcssa.i, i64 4
  %i.wi = or disjoint i32 %.0480.lcssa.i, 1
  br label %.lr.ph719.i.prol.loopexit

.lr.ph719.i.prol.loopexit:                        ; preds = %.lr.ph719.i.prol, %.lr.ph719.i.preheader
  %.lcssa290.unr = phi ptr [ poison, %.lr.ph719.i.preheader ], [ %i.wg, %.lr.ph719.i.prol ]
  %.21718.i.unr = phi ptr [ %.20.lcssa.i, %.lr.ph719.i.preheader ], [ %i.wg, %.lr.ph719.i.prol ]
  %.7473717.i.unr = phi ptr [ %.6472.lcssa.i, %.lr.ph719.i.preheader ], [ %i.wh, %.lr.ph719.i.prol ]
  %.1481716.i.unr = phi i32 [ %.0480.lcssa.i, %.lr.ph719.i.preheader ], [ %i.wi, %.lr.ph719.i.prol ]
  %i.wj = icmp eq i32 %5, %.neg330
  br i1 %i.wj, label %.loopexit608.i, label %.lr.ph719.i

.lr.ph712.i:                                      ; preds = %.preheader609.i, %.lr.ph712.i
  %.20711.i = phi ptr [ %i.xg, %.lr.ph712.i ], [ %.13722.i, %.preheader609.i ] ; 2 uses
  %.6472710.i = phi ptr [ %i.xh, %.lr.ph712.i ], [ %i.qi, %.preheader609.i ] ; 3 uses
  %.0480709.i = phi i32 [ %i.xi, %.lr.ph712.i ], [ 0, %.preheader609.i ]
  %i.wk = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %.6472710.i, <8 x i32> %i.jp, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.wl = getelementptr inbounds nuw i8, ptr %.6472710.i, i64 4
  %i.wm = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.wl, <8 x i32> %i.jp, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.wn = fmul fast <8 x float> %i.wk, %i.qm      ; 2 uses
  %i.wo = fmul fast <8 x float> %i.wm, %i.qm      ; 2 uses
  %i.wp = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.wn)
  %i.wq = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.wo)
  %i.wr = fadd fast <8 x float> %i.wp, %i.wn
  %i.ws = fadd fast <8 x float> %i.wq, %i.wo
  %i.wt = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.wr)
  %i.wu = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ws)
  %i.wv = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.wt, <8 x i32> %i.wu)
  %i.ww = bitcast <16 x i16> %i.wv to <4 x i64>
  %i.wx = shufflevector <4 x i64> %i.ww, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.wy = bitcast <4 x i64> %i.wx to <16 x i16>
  %i.wz = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.wy, <16 x i16> splat (i16 -127))
  %i.xa = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.wz, <16 x i16> splat (i16 127))
  %i.xb = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.xa, <16 x i16> poison)
  %i.xc = bitcast <32 x i8> %i.xb to <8 x i32>
  %i.xd = shufflevector <8 x i32> %i.xc, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.xe = bitcast <4 x i32> %i.xd to <16 x i8>
  %i.xf = shufflevector <16 x i8> %i.xe, <16 x i8> poison, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %i.xf, ptr %.20711.i, align 16, !tbaa !90
  %i.xg = getelementptr inbounds nuw i8, ptr %.20711.i, i64 16 ; 2 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %.6472710.i, i64 8 ; 2 uses
  %i.xi = add nuw nsw i32 %.0480709.i, 2          ; 2 uses
  %i.xj = or disjoint i32 %i.xi, 1
  %i.xk = icmp slt i32 %i.xj, %5
  br i1 %i.xk, label %.lr.ph712.i, label %.preheader607.i, !llvm.loop !1148

.lr.ph719.i:                                      ; preds = %.lr.ph719.i.prol.loopexit, %.lr.ph719.i
  %.21718.i = phi ptr [ %i.yf, %.lr.ph719.i ], [ %.21718.i.unr, %.lr.ph719.i.prol.loopexit ] ; 3 uses
  %.7473717.i = phi ptr [ %i.yg, %.lr.ph719.i ], [ %.7473717.i.unr, %.lr.ph719.i.prol.loopexit ] ; 3 uses
  %.1481716.i = phi i32 [ %i.yh, %.lr.ph719.i ], [ %.1481716.i.unr, %.lr.ph719.i.prol.loopexit ]
  %i.xl = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %.7473717.i, <8 x i32> %i.jp, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.xm = fmul fast <8 x float> %i.xl, %i.qm      ; 2 uses
  %i.xn = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.xm)
  %i.xo = fadd fast <8 x float> %i.xn, %i.xm
  %i.xp = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.xo)
  %i.xq = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.256(<8 x i32> %i.xp, <16 x i8> zeroinitializer, i8 -1)
  %i.xr = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.xq, <16 x i8> <i8 -127, i8 -127, i8 -127, i8 -127, i8 -127, i8 -127, i8 -127, i8 -127, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>)
  %i.xs = bitcast <16 x i8> %i.xr to <2 x i64>
  %i.xt = extractelement <2 x i64> %i.xs, i64 0
  store i64 %i.xt, ptr %.21718.i, align 8, !tbaa !111
  %i.xu = getelementptr inbounds nuw i8, ptr %.21718.i, i64 8
  %i.xv = getelementptr inbounds nuw i8, ptr %.7473717.i, i64 4
  %i.xw = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.xv, <8 x i32> %i.jp, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.xx = fmul fast <8 x float> %i.xw, %i.qm      ; 2 uses
  %i.xy = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.xx)
  %i.xz = fadd fast <8 x float> %i.xy, %i.xx
  %i.ya = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.xz)
  %i.yb = tail call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.256(<8 x i32> %i.ya, <16 x i8> zeroinitializer, i8 -1)
  %i.yc = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.yb, <16 x i8> <i8 -127, i8 -127, i8 -127, i8 -127, i8 -127, i8 -127, i8 -127, i8 -127, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>)
  %i.yd = bitcast <16 x i8> %i.yc to <2 x i64>
  %i.ye = extractelement <2 x i64> %i.yd, i64 0
  store i64 %i.ye, ptr %i.xu, align 8, !tbaa !111
  %i.yf = getelementptr inbounds nuw i8, ptr %.21718.i, i64 16 ; 2 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %.7473717.i, i64 8
  %i.yh = add nuw nsw i32 %.1481716.i, 2          ; 2 uses
  %exitcond859.not.i.1 = icmp eq i32 %i.yh, %5
  br i1 %exitcond859.not.i.1, label %.loopexit608.i, label %.lr.ph719.i, !llvm.loop !1149

.loopexit608.i:                                   ; preds = %.lr.ph719.i.prol.loopexit, %.lr.ph719.i, %.lr.ph706.i.prol.loopexit, %.lr.ph706.i, %.lr.ph693.i.prol.loopexit, %.lr.ph693.i, %.preheader607.i, %.preheader610.i, %.preheader613.i, %bb.k
  %.22.i = phi ptr [ %.13722.i, %bb.k ], [ %.20.lcssa.i, %.preheader607.i ], [ %i.sw, %.lr.ph693.i ], [ %i.vt, %.lr.ph706.i ], [ %.17.lcssa.i, %.preheader610.i ], [ %.14.lcssa.i, %.preheader613.i ], [ %.lcssa296.unr, %.lr.ph693.i.prol.loopexit ], [ %.lcssa293.unr, %.lr.ph706.i.prol.loopexit ], [ %.lcssa290.unr, %.lr.ph719.i.prol.loopexit ], [ %i.yf, %.lr.ph719.i ] ; 2 uses
  %indvars.iv.next861.i = add nuw nsw i64 %indvars.iv860.i, 8 ; 3 uses
  %i.yi = icmp slt i64 %indvars.iv.next861.i, %invariant.op.i
  br i1 %i.yi, label %bb.k, label %.preheader606.loopexit.i, !llvm.loop !1150

.preheader599.loopexit.i:                         ; preds = %.loopexit601.i.us54, %.loopexit601.i.us, %.loopexit601.i.preheader
  %.us-phi48 = phi ptr [ %.13.lcssa.i, %.loopexit601.i.preheader ], [ %.29.i.us, %.loopexit601.i.us ], [ %.29.i.us55, %.loopexit601.i.us54 ]
  %.us-phi49 = phi i64 [ %i.kp, %.loopexit601.i.preheader ], [ %indvars.iv.next866.i.us, %.loopexit601.i.us ], [ %indvars.iv.next866.i.us56, %.loopexit601.i.us54 ]
  %i.yj = trunc nuw nsw i64 %.us-phi49 to i32
  br label %.preheader599.i

.preheader599.i:                                  ; preds = %.preheader599.loopexit.i, %.preheader606.i
  %.2438.lcssa.i = phi i32 [ %.1437.lcssa.i, %.preheader606.i ], [ %i.yj, %.preheader599.loopexit.i ] ; 3 uses
  %.23.lcssa.i = phi ptr [ %.13.lcssa.i, %.preheader606.i ], [ %.us-phi48, %.preheader599.loopexit.i ] ; 2 uses
  %i.yk = or disjoint i32 %.2438.lcssa.i, 1
  %i.yl = icmp slt i32 %i.yk, %3
  br i1 %i.yl, label %.lr.ph777.i, label %.preheader596.i

.lr.ph777.i:                                      ; preds = %.preheader599.i
  %i.ym = sext i32 %4 to i64
  %i.yn = icmp sgt i32 %5, 3
  %i.yo = and i32 %5, -4
  %i.yp = sext i32 %.2438.lcssa.i to i64
  %i.yq = sext i32 %3 to i64
  %i.yr = sext i32 %2 to i64
  %invariant.op943.i = add nsw i64 %i.yq, -1
  %i.ys = shl nuw nsw i64 %i.n, 2                 ; 2 uses
  br label %bb.l

.preheader596.loopexit.i:                         ; preds = %._crit_edge.i
  %i.yt = trunc nsw i64 %indvars.iv.next870.i to i32
  br label %.preheader596.i

.preheader596.i:                                  ; preds = %.preheader596.loopexit.i, %.preheader599.i
  %.3439.lcssa.i = phi i32 [ %.2438.lcssa.i, %.preheader599.i ], [ %i.yt, %.preheader596.loopexit.i ] ; 2 uses
  %.30.lcssa.i = phi ptr [ %.23.lcssa.i, %.preheader599.i ], [ %.33.lcssa.i, %.preheader596.loopexit.i ]
  %i.yu = icmp slt i32 %.3439.lcssa.i, %3
  br i1 %i.yu, label %.lr.ph796.i, label %_ZN4ncnnL24pack_A_tile_fp32_to_int8ERKNS_3MatERS0_iiiiS2_.exit

.lr.ph796.i:                                      ; preds = %.preheader596.i
  %i.yv = sext i32 %4 to i64
  %i.yw = icmp sgt i32 %5, 3
  %i.yx = and i32 %5, -4
  %i.yy = sext i32 %.3439.lcssa.i to i64
  %i.yz = sext i32 %2 to i64
  %wide.trip.count.i = sext i32 %3 to i64
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge.i, %.lr.ph777.i
  %indvars.iv869.i = phi i64 [ %i.yp, %.lr.ph777.i ], [ %indvars.iv.next870.i, %._crit_edge.i ] ; 2 uses
  %.30776.i = phi ptr [ %.23.lcssa.i, %.lr.ph777.i ], [ %.33.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.za = load ptr, ptr %0, align 8, !tbaa !25
  %i.zb = add nsw i64 %indvars.iv869.i, %i.yr     ; 2 uses
  %i.zc = mul i64 %i.zb, %i.n
  %i.zd = getelementptr inbounds nuw [4 x i8], ptr %i.za, i64 %i.zc
  %i.ze = getelementptr inbounds [4 x i8], ptr %i.zd, i64 %i.ym ; 2 uses
  %i.zf = load ptr, ptr %6, align 8, !tbaa !25
  %i.zg = getelementptr [4 x i8], ptr %i.zf, i64 %i.zb ; 2 uses
  %i.zh = load float, ptr %i.zg, align 4, !tbaa !69 ; 4 uses
  %i.zi = getelementptr i8, ptr %i.zg, i64 4
  %i.zj = load float, ptr %i.zi, align 4, !tbaa !69 ; 4 uses
  %i.zk = insertelement <4 x float> poison, float %i.zh, i64 0 ; 2 uses
  %7 = shufflevector <4 x float> %i.zk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.zl = insertelement <4 x float> poison, float %i.zj, i64 0 ; 2 uses
  %8 = shufflevector <4 x float> %i.zl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.zm = shufflevector <4 x float> %i.zk, <4 x float> %i.zl, <4 x i32> <i32 0, i32 0, i32 4, i32 4>
  br i1 %i.yn, label %.lr.ph759.i, label %.preheader598.i

.preheader598.i:                                  ; preds = %.lr.ph759.i, %bb.l
  %.0457.lcssa.i = phi ptr [ %i.ze, %bb.l ], [ %i.aag, %.lr.ph759.i ] ; 2 uses
  %.0454.lcssa.i = phi i32 [ 0, %bb.l ], [ %i.yo, %.lr.ph759.i ] ; 3 uses
  %.31.lcssa.i = phi ptr [ %.30776.i, %bb.l ], [ %i.aaf, %.lr.ph759.i ] ; 2 uses
  %i.zn = or disjoint i32 %.0454.lcssa.i, 1
  %i.zo = icmp slt i32 %i.zn, %5
  br i1 %i.zo, label %.lr.ph766.i, label %.preheader597.i

.lr.ph759.i:                                      ; preds = %bb.l, %.lr.ph759.i
  %.31758.i = phi ptr [ %i.aaf, %.lr.ph759.i ], [ %.30776.i, %bb.l ] ; 2 uses
  %.0454757.i = phi i32 [ %i.aah, %.lr.ph759.i ], [ 0, %bb.l ]
  %.0457756.i = phi ptr [ %i.aag, %.lr.ph759.i ], [ %i.ze, %bb.l ] ; 3 uses
  %i.zp = load <4 x float>, ptr %.0457756.i, align 1, !tbaa !90
  %i.zq = getelementptr inbounds nuw [4 x i8], ptr %.0457756.i, i64 %i.n
  %i.zr = load <4 x float>, ptr %i.zq, align 1, !tbaa !90
  %9 = fmul fast <4 x float> %i.zp, %7            ; 2 uses
  %i.zs = fmul fast <4 x float> %i.zr, %8         ; 2 uses
  %10 = shufflevector <4 x float> %9, <4 x float> %i.zs, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %11 = shufflevector <4 x float> %9, <4 x float> %i.zs, <4 x i32> <i32 2, i32 3, i32 6, i32 7> ; 2 uses
  %i.zt = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %10)
  %i.zu = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %11)
  %i.zv = fadd fast <4 x float> %i.zt, %10
  %i.zw = fadd fast <4 x float> %i.zu, %11
  %i.zx = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.zv)
  %i.zy = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.zw)
  %i.zz = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.zx, <4 x i32> %i.zy)
  %i.aaa = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.zz, <8 x i16> splat (i16 -127))
  %i.aab = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.aaa, <8 x i16> splat (i16 127))
  %i.aac = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.aab, <8 x i16> poison)
  %i.aad = bitcast <16 x i8> %i.aac to <2 x i64>
  %i.aae = extractelement <2 x i64> %i.aad, i64 0
  store i64 %i.aae, ptr %.31758.i, align 8, !tbaa !111
  %i.aaf = getelementptr inbounds nuw i8, ptr %.31758.i, i64 8 ; 2 uses
  %i.aag = getelementptr inbounds nuw i8, ptr %.0457756.i, i64 16 ; 2 uses
  %i.aah = add nuw nsw i32 %.0454757.i, 4         ; 2 uses
  %i.aai = or disjoint i32 %i.aah, 3
  %i.aaj = icmp slt i32 %i.aai, %5
  br i1 %i.aaj, label %.lr.ph759.i, label %.preheader598.i, !llvm.loop !1151

.preheader597.i:                                  ; preds = %.lr.ph766.i, %.preheader598.i
  %.1458.lcssa.i = phi ptr [ %.0457.lcssa.i, %.preheader598.i ], [ %i.acu, %.lr.ph766.i ] ; 10 uses
  %.1455.lcssa.i = phi i32 [ %.0454.lcssa.i, %.preheader598.i ], [ %i.acv, %.lr.ph766.i ] ; 7 uses
  %.32.lcssa.i = phi ptr [ %.31.lcssa.i, %.preheader598.i ], [ %i.act, %.lr.ph766.i ] ; 10 uses
  %i.aak = icmp slt i32 %.1455.lcssa.i, %5
  br i1 %i.aak, label %iter.check, label %._crit_edge.i

iter.check:                                       ; preds = %.preheader597.i
  %i.aal = xor i32 %.1455.lcssa.i, -1
  %i.aam = add i32 %5, %i.aal                     ; 3 uses
  %i.aan = zext i32 %i.aam to i64
  %i.aao = add nuw nsw i64 %i.aan, 1              ; 5 uses
  %min.iters.check = icmp ult i32 %i.aam, 3
  br i1 %min.iters.check, label %.lr.ph773.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %.32.lcssa.i, i64 2
  %i.aap = xor i32 %.1455.lcssa.i, -1
  %i.aaq = add i32 %5, %i.aap
  %i.aar = zext i32 %i.aaq to i64                 ; 2 uses
  %i.aas = shl nuw nsw i64 %i.aar, 1
  %scevgep191 = getelementptr i8, ptr %scevgep, i64 %i.aas ; 2 uses
  %scevgep192 = getelementptr i8, ptr %.1458.lcssa.i, i64 %i.ys
  %i.aat = getelementptr i8, ptr %.1458.lcssa.i, i64 %i.ys
  %scevgep193 = getelementptr i8, ptr %i.aat, i64 4
  %i.aau = shl nuw nsw i64 %i.aar, 2              ; 2 uses
  %scevgep194 = getelementptr i8, ptr %scevgep193, i64 %i.aau
  %scevgep195 = getelementptr i8, ptr %.1458.lcssa.i, i64 4
  %scevgep196 = getelementptr i8, ptr %scevgep195, i64 %i.aau
  %bound0 = icmp ult ptr %.32.lcssa.i, %scevgep194
  %bound1 = icmp ult ptr %scevgep192, %scevgep191
  %found.conflict = and i1 %bound0, %bound1
  %bound0197 = icmp ult ptr %.32.lcssa.i, %scevgep196
  %bound1198 = icmp ult ptr %.1458.lcssa.i, %scevgep191
  %found.conflict199 = and i1 %bound0197, %bound1198
  %conflict.rdx = or i1 %found.conflict, %found.conflict199
  br i1 %conflict.rdx, label %.lr.ph773.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check200 = icmp ult i32 %i.aam, 15
  br i1 %min.iters.check200, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aav = and i64 %i.aao, 12
  %n.vec = and i64 %i.aao, 8589934576             ; 6 uses
  %i.aaw = shl nuw nsw i64 %n.vec, 1
  %i.aax = getelementptr i8, ptr %.32.lcssa.i, i64 %i.aaw ; 2 uses
  %i.aay = trunc i64 %n.vec to i32
  %i.aaz = add i32 %.1455.lcssa.i, %i.aay
  %i.aba = shl nuw nsw i64 %n.vec, 2
  %i.abb = getelementptr i8, ptr %.1458.lcssa.i, i64 %i.aba
  %broadcast.splatinsert = insertelement <16 x float> poison, float %i.zh, i64 0
  %broadcast.splatinsert201 = insertelement <16 x float> poison, float %i.zj, i64 0
  %i.abc = shufflevector <16 x float> %broadcast.splatinsert, <16 x float> %broadcast.splatinsert201, <32 x i32> <i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 16>
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.abd = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.32.lcssa.i, i64 %i.abd
  %i.abe = shl i64 %index, 2
  %next.gep203 = getelementptr i8, ptr %.1458.lcssa.i, i64 %i.abe ; 2 uses
  %wide.load = load <16 x float>, ptr %next.gep203, align 4, !tbaa !69, !alias.scope !1169
  %i.abf = getelementptr inbounds nuw [4 x i8], ptr %next.gep203, i64 %i.n
  %wide.load204 = load <16 x float>, ptr %i.abf, align 4, !tbaa !69, !alias.scope !1170
  %i.abg = shufflevector <16 x float> %wide.load, <16 x float> %wide.load204, <32 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.abh = fmul fast <32 x float> %i.abg, %i.abc
  %i.abi = tail call fast <32 x float> @llvm.round.v32f32(<32 x float> %i.abh)
  %i.abj = fptosi <32 x float> %i.abi to <32 x i32>
  %i.abk = tail call <32 x i32> @llvm.smax.v32i32(<32 x i32> %i.abj, <32 x i32> splat (i32 -127))
  %i.abl = tail call <32 x i32> @llvm.smin.v32i32(<32 x i32> %i.abk, <32 x i32> splat (i32 127))
  %interleaved.vec = trunc nsw <32 x i32> %i.abl to <32 x i8>
  store <32 x i8> %interleaved.vec, ptr %next.gep, align 1, !tbaa !90, !alias.scope !1171, !noalias !1172
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.abm = icmp eq i64 %index.next, %n.vec
  br i1 %i.abm, label %middle.block, label %vector.body, !llvm.loop !1156

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aao, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aav, 0
  br i1 %min.epilog.iters.check, label %.lr.ph773.i.preheader, label %vec.epilog.ph, !prof !92

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec207 = and i64 %i.aao, 8589934588          ; 5 uses
  %i.abn = shl nuw nsw i64 %n.vec207, 1
  %i.abo = getelementptr i8, ptr %.32.lcssa.i, i64 %i.abn ; 2 uses
  %i.abp = trunc i64 %n.vec207 to i32
  %i.abq = add i32 %.1455.lcssa.i, %i.abp
  %i.abr = shl nuw nsw i64 %n.vec207, 2
  %i.abs = getelementptr i8, ptr %.1458.lcssa.i, i64 %i.abr
  %broadcast.splatinsert208 = insertelement <4 x float> poison, float %i.zh, i64 0
  %broadcast.splatinsert210 = insertelement <4 x float> poison, float %i.zj, i64 0
  %i.abt = shufflevector <4 x float> %broadcast.splatinsert208, <4 x float> %broadcast.splatinsert210, <8 x i32> <i32 0, i32 4, i32 0, i32 4, i32 0, i32 4, i32 0, i32 4>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index212 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next218, %vec.epilog.vector.body ] ; 3 uses
  %i.abu = shl i64 %index212, 1
  %next.gep213 = getelementptr i8, ptr %.32.lcssa.i, i64 %i.abu
  %i.abv = shl i64 %index212, 2
  %next.gep214 = getelementptr i8, ptr %.1458.lcssa.i, i64 %i.abv ; 2 uses
  %wide.load215 = load <4 x float>, ptr %next.gep214, align 4, !tbaa !69, !alias.scope !1169
  %i.abw = getelementptr inbounds nuw [4 x i8], ptr %next.gep214, i64 %i.n
  %wide.load216 = load <4 x float>, ptr %i.abw, align 4, !tbaa !69, !alias.scope !1170
  %i.abx = shufflevector <4 x float> %wide.load215, <4 x float> %wide.load216, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.aby = fmul fast <8 x float> %i.abx, %i.abt
  %i.abz = tail call fast <8 x float> @llvm.round.v8f32(<8 x float> %i.aby)
  %i.aca = fptosi <8 x float> %i.abz to <8 x i32>
  %i.acb = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.aca, <8 x i32> splat (i32 -127))
  %i.acc = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.acb, <8 x i32> splat (i32 127))
  %interleaved.vec217 = trunc nsw <8 x i32> %i.acc to <8 x i8>
  store <8 x i8> %interleaved.vec217, ptr %next.gep213, align 1, !tbaa !90, !alias.scope !1171, !noalias !1172
  %index.next218 = add nuw i64 %index212, 4       ; 2 uses
  %i.acd = icmp eq i64 %index.next218, %n.vec207
  br i1 %i.acd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1157

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n219 = icmp eq i64 %i.aao, %n.vec207
  br i1 %cmp.n219, label %._crit_edge.i, label %.lr.ph773.i.preheader

.lr.ph773.i.preheader:                            ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.33772.i.ph = phi ptr [ %.32.lcssa.i, %iter.check ], [ %.32.lcssa.i, %vector.memcheck ], [ %i.aax, %vec.epilog.iter.check ], [ %i.abo, %vec.epilog.middle.block ]
  %.2456771.i.ph = phi i32 [ %.1455.lcssa.i, %iter.check ], [ %.1455.lcssa.i, %vector.memcheck ], [ %i.aaz, %vec.epilog.iter.check ], [ %i.abq, %vec.epilog.middle.block ]
  %.2459770.i.ph = phi ptr [ %.1458.lcssa.i, %iter.check ], [ %.1458.lcssa.i, %vector.memcheck ], [ %i.abb, %vec.epilog.iter.check ], [ %i.abs, %vec.epilog.middle.block ]
  br label %.lr.ph773.i

.lr.ph766.i:                                      ; preds = %.preheader598.i, %.lr.ph766.i
  %.32765.i = phi ptr [ %i.act, %.lr.ph766.i ], [ %.31.lcssa.i, %.preheader598.i ] ; 2 uses
  %.1455764.i = phi i32 [ %i.acv, %.lr.ph766.i ], [ %.0454.lcssa.i, %.preheader598.i ]
  %.1458763.i = phi ptr [ %i.acu, %.lr.ph766.i ], [ %.0457.lcssa.i, %.preheader598.i ] ; 3 uses
  %i.ace = load i64, ptr %.1458763.i, align 1, !tbaa !90
  %i.acf = insertelement <2 x i64> poison, i64 %i.ace, i64 0
  %i.acg = getelementptr inbounds nuw [4 x i8], ptr %.1458763.i, i64 %i.n
  %i.ach = load i64, ptr %i.acg, align 1, !tbaa !90
  %.uncasted.i = insertelement <2 x i64> %i.acf, i64 %i.ach, i64 1
  %i.aci = bitcast <2 x i64> %.uncasted.i to <4 x float>
  %i.acj = fmul fast <4 x float> %i.zm, %i.aci    ; 2 uses
  %i.ack = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.acj)
  %i.acl = fadd fast <4 x float> %i.ack, %i.acj
  %i.acm = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.acl)
  %i.acn = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.acm, <4 x i32> poison)
  %i.aco = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.acn, <8 x i16> <i16 -127, i16 -127, i16 -127, i16 -127, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.acp = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.aco, <8 x i16> <i16 127, i16 127, i16 127, i16 127, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.acq = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.acp, <8 x i16> poison)
  %i.acr = bitcast <16 x i8> %i.acq to <4 x i32>
  %i.acs = extractelement <4 x i32> %i.acr, i64 0
  store i32 %i.acs, ptr %.32765.i, align 4, !tbaa !51
  %i.act = getelementptr inbounds nuw i8, ptr %.32765.i, i64 4 ; 2 uses
  %i.acu = getelementptr inbounds nuw i8, ptr %.1458763.i, i64 8 ; 2 uses
  %i.acv = add nuw nsw i32 %.1455764.i, 2         ; 3 uses
  %i.acw = or disjoint i32 %i.acv, 1
  %i.acx = icmp slt i32 %i.acw, %5
  br i1 %i.acx, label %.lr.ph766.i, label %.preheader597.i, !llvm.loop !1158

.lr.ph773.i:                                      ; preds = %.lr.ph773.i.preheader, %.lr.ph773.i
  %.33772.i = phi ptr [ %i.adi, %.lr.ph773.i ], [ %.33772.i.ph, %.lr.ph773.i.preheader ] ; 3 uses
  %.2456771.i = phi i32 [ %i.adk, %.lr.ph773.i ], [ %.2456771.i.ph, %.lr.ph773.i.preheader ]
  %.2459770.i = phi ptr [ %i.adj, %.lr.ph773.i ], [ %.2459770.i.ph, %.lr.ph773.i.preheader ] ; 3 uses
  %i.acy = load float, ptr %.2459770.i, align 4, !tbaa !69
  %i.acz = fmul fast float %i.acy, %i.zh
  %i.ada = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.acz)
  %i.adb = fptosi float %i.ada to i32
  %spec.select.i502592.i = tail call i32 @llvm.smax.i32(i32 %i.adb, i32 -127)
  %.0.i503593.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i502592.i, i32 127)
  %.0.i503.i = trunc nsw i32 %.0.i503593.i to i8
  store i8 %.0.i503.i, ptr %.33772.i, align 1, !tbaa !90
  %i.adc = getelementptr inbounds nuw [4 x i8], ptr %.2459770.i, i64 %i.n
  %i.add = load float, ptr %i.adc, align 4, !tbaa !69
  %i.ade = fmul fast float %i.add, %i.zj
  %i.adf = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.ade)
  %i.adg = fptosi float %i.adf to i32
  %spec.select.i500594.i = tail call i32 @llvm.smax.i32(i32 %i.adg, i32 -127)
  %.0.i501595.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i500594.i, i32 127)
  %.0.i501.i = trunc nsw i32 %.0.i501595.i to i8
  %i.adh = getelementptr inbounds nuw i8, ptr %.33772.i, i64 1
  store i8 %.0.i501.i, ptr %i.adh, align 1, !tbaa !90
  %i.adi = getelementptr inbounds nuw i8, ptr %.33772.i, i64 2 ; 2 uses
  %i.adj = getelementptr inbounds nuw i8, ptr %.2459770.i, i64 4
  %i.adk = add nuw nsw i32 %.2456771.i, 1         ; 2 uses
end_hunk_1
