Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/softmax_x86_fma?download=true
inline.NumInlined: 26
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN4ncnnL7softmaxEPfiimiS0_S0_:bb.a

bb.g:                                             ; preds = %._crit_edge708.i, %.lr.ph710.i
  %indvars.iv745.i = phi i64 [ 0, %.lr.ph710.i ], [ %indvars.iv.next746.i, %._crit_edge708.i ] ; 2 uses
  %i.anu = mul i64 %indvars.iv745.i, %3
  %i.anv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.anu ; 2 uses
  br i1 %i.a, label %.lr.ph693.i, label %.preheader620.i

.preheader620.i:                                  ; preds = %.lr.ph693.i, %bb.g
  %.0335.lcssa.i = phi ptr [ %i.anv, %bb.g ], [ %i.apk, %.lr.ph693.i ] ; 2 uses
  %.0332.lcssa.i = phi ptr [ %6, %bb.g ], [ %i.apl, %.lr.ph693.i ] ; 2 uses
  %.0329.lcssa.i = phi i32 [ 0, %bb.g ], [ %i.anp, %.lr.ph693.i ] ; 3 uses
  %i.anw = or disjoint i32 %.0329.lcssa.i, 3
  %i.anx = icmp slt i32 %i.anw, %4
  br i1 %i.anx, label %.lr.ph700.i, label %.preheader.i64

.lr.ph693.i:                                      ; preds = %bb.g, %.lr.ph693.i
  %.0329691.i = phi i32 [ %i.apm, %.lr.ph693.i ], [ 0, %bb.g ]
  %.0332690.i = phi ptr [ %i.apl, %.lr.ph693.i ], [ %6, %bb.g ] ; 9 uses
  %.0335689.i = phi ptr [ %i.apk, %.lr.ph693.i ], [ %i.anv, %bb.g ] ; 6 uses
  %i.any = load <8 x float>, ptr %.0335689.i, align 1, !tbaa !61
  %i.anz = getelementptr inbounds nuw i8, ptr %.0335689.i, i64 32 ; 2 uses
  %i.aoa = load <8 x float>, ptr %i.anz, align 1, !tbaa !61
  %i.aob = getelementptr inbounds nuw i8, ptr %.0335689.i, i64 64 ; 2 uses
  %i.aoc = load <8 x float>, ptr %i.aob, align 1, !tbaa !61
  %i.aod = getelementptr inbounds nuw i8, ptr %.0335689.i, i64 96 ; 2 uses
  %i.aoe = load <8 x float>, ptr %i.aod, align 1, !tbaa !61
  %i.aof = load float, ptr %.0332690.i, align 4, !tbaa !65
  %i.aog = insertelement <4 x float> poison, float %i.aof, i64 0
  %i.aoh = getelementptr inbounds nuw i8, ptr %.0332690.i, i64 4
  %i.aoi = load float, ptr %i.aoh, align 4, !tbaa !65
  %i.aoj = insertelement <4 x float> poison, float %i.aoi, i64 0
  %i.aok = shufflevector <4 x float> %i.aog, <4 x float> %i.aoj, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.aol = fmul fast <8 x float> %i.aok, %i.any
  %i.aom = getelementptr inbounds nuw i8, ptr %.0332690.i, i64 8
  %i.aon = load float, ptr %i.aom, align 4, !tbaa !65
  %i.aoo = insertelement <4 x float> poison, float %i.aon, i64 0
  %i.aop = getelementptr inbounds nuw i8, ptr %.0332690.i, i64 12
  %i.aoq = load float, ptr %i.aop, align 4, !tbaa !65
  %i.aor = insertelement <4 x float> poison, float %i.aoq, i64 0
  %i.aos = shufflevector <4 x float> %i.aoo, <4 x float> %i.aor, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.aot = fmul fast <8 x float> %i.aos, %i.aoa
  %i.aou = getelementptr inbounds nuw i8, ptr %.0332690.i, i64 16
  %i.aov = load float, ptr %i.aou, align 4, !tbaa !65
  %i.aow = insertelement <4 x float> poison, float %i.aov, i64 0
  %i.aox = getelementptr inbounds nuw i8, ptr %.0332690.i, i64 20
  %i.aoy = load float, ptr %i.aox, align 4, !tbaa !65
  %i.aoz = insertelement <4 x float> poison, float %i.aoy, i64 0
  %i.apa = shufflevector <4 x float> %i.aow, <4 x float> %i.aoz, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.apb = fmul fast <8 x float> %i.apa, %i.aoc
  %i.apc = getelementptr inbounds nuw i8, ptr %.0332690.i, i64 24
  %i.apd = load float, ptr %i.apc, align 4, !tbaa !65
  %i.ape = insertelement <4 x float> poison, float %i.apd, i64 0
  %i.apf = getelementptr inbounds nuw i8, ptr %.0332690.i, i64 28
  %i.apg = load float, ptr %i.apf, align 4, !tbaa !65
  %i.aph = insertelement <4 x float> poison, float %i.apg, i64 0
  %i.api = shufflevector <4 x float> %i.ape, <4 x float> %i.aph, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.apj = fmul fast <8 x float> %i.api, %i.aoe
  store <8 x float> %i.aol, ptr %.0335689.i, align 1, !tbaa !61
  store <8 x float> %i.aot, ptr %i.anz, align 1, !tbaa !61
  store <8 x float> %i.apb, ptr %i.aob, align 1, !tbaa !61
  store <8 x float> %i.apj, ptr %i.aod, align 1, !tbaa !61
  %i.apk = getelementptr inbounds nuw i8, ptr %.0335689.i, i64 128 ; 2 uses
  %i.apl = getelementptr inbounds nuw i8, ptr %.0332690.i, i64 32 ; 2 uses
  %i.apm = add nuw nsw i32 %.0329691.i, 8         ; 2 uses
  %i.apn = or disjoint i32 %i.apm, 7
  %i.apo = icmp slt i32 %i.apn, %4
  br i1 %i.apo, label %.lr.ph693.i, label %.preheader620.i, !llvm.loop !126

.preheader.i64:                                   ; preds = %.lr.ph700.i, %.preheader620.i
  %.1336.lcssa.i = phi ptr [ %.0335.lcssa.i, %.preheader620.i ], [ %i.arb, %.lr.ph700.i ] ; 2 uses
  %.1333.lcssa.i = phi ptr [ %.0332.lcssa.i, %.preheader620.i ], [ %i.arc, %.lr.ph700.i ] ; 2 uses
  %.1330.lcssa.i = phi i32 [ %.0329.lcssa.i, %.preheader620.i ], [ %i.ard, %.lr.ph700.i ] ; 5 uses
  %i.app = icmp slt i32 %.1330.lcssa.i, %4
  br i1 %i.app, label %.lr.ph707.i.preheader, label %._crit_edge708.i

.lr.ph707.i.preheader:                            ; preds = %.preheader.i64
  %i.apq = sub i32 %4, %.1330.lcssa.i
  %xtraiter630 = and i32 %i.apq, 3                ; 2 uses
  %lcmp.mod631.not = icmp eq i32 %xtraiter630, 0
  br i1 %lcmp.mod631.not, label %.lr.ph707.i.prol.loopexit, label %.lr.ph707.i.prol

.lr.ph707.i.prol:                                 ; preds = %.lr.ph707.i.preheader, %.lr.ph707.i.prol
  %.2331706.i.prol = phi i32 [ %i.apy, %.lr.ph707.i.prol ], [ %.1330.lcssa.i, %.lr.ph707.i.preheader ]
  %.2334705.i.prol = phi ptr [ %i.apx, %.lr.ph707.i.prol ], [ %.1333.lcssa.i, %.lr.ph707.i.preheader ] ; 2 uses
  %.2337704.i.prol = phi ptr [ %i.apw, %.lr.ph707.i.prol ], [ %.1336.lcssa.i, %.lr.ph707.i.preheader ] ; 3 uses
  %prol.iter632 = phi i32 [ %prol.iter632.next, %.lr.ph707.i.prol ], [ 0, %.lr.ph707.i.preheader ]
  %i.apr = load <4 x float>, ptr %.2337704.i.prol, align 1, !tbaa !61
  %i.aps = load float, ptr %.2334705.i.prol, align 4, !tbaa !65
  %i.apt = insertelement <4 x float> poison, float %i.aps, i64 0
  %i.apu = shufflevector <4 x float> %i.apt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.apv = fmul fast <4 x float> %i.apu, %i.apr
  store <4 x float> %i.apv, ptr %.2337704.i.prol, align 1, !tbaa !61
  %i.apw = getelementptr inbounds nuw i8, ptr %.2337704.i.prol, i64 16 ; 2 uses
  %i.apx = getelementptr inbounds nuw i8, ptr %.2334705.i.prol, i64 4 ; 2 uses
  %i.apy = add nuw nsw i32 %.2331706.i.prol, 1    ; 2 uses
  %prol.iter632.next = add i32 %prol.iter632, 1   ; 2 uses
  %prol.iter632.cmp.not = icmp eq i32 %prol.iter632.next, %xtraiter630
  br i1 %prol.iter632.cmp.not, label %.lr.ph707.i.prol.loopexit, label %.lr.ph707.i.prol, !llvm.loop !127

.lr.ph707.i.prol.loopexit:                        ; preds = %.lr.ph707.i.prol, %.lr.ph707.i.preheader
  %.2331706.i.unr = phi i32 [ %.1330.lcssa.i, %.lr.ph707.i.preheader ], [ %i.apy, %.lr.ph707.i.prol ]
  %.2334705.i.unr = phi ptr [ %.1333.lcssa.i, %.lr.ph707.i.preheader ], [ %i.apx, %.lr.ph707.i.prol ]
  %.2337704.i.unr = phi ptr [ %.1336.lcssa.i, %.lr.ph707.i.preheader ], [ %i.apw, %.lr.ph707.i.prol ]
  %i.apz = sub i32 %.1330.lcssa.i, %4
  %i.aqa = icmp ugt i32 %i.apz, -4
  br i1 %i.aqa, label %._crit_edge708.i, label %.lr.ph707.i

.lr.ph700.i:                                      ; preds = %.preheader620.i, %.lr.ph700.i
  %.1330699.i = phi i32 [ %i.ard, %.lr.ph700.i ], [ %.0329.lcssa.i, %.preheader620.i ]
  %.1333698.i = phi ptr [ %i.arc, %.lr.ph700.i ], [ %.0332.lcssa.i, %.preheader620.i ] ; 5 uses
  %.1336697.i = phi ptr [ %i.arb, %.lr.ph700.i ], [ %.0335.lcssa.i, %.preheader620.i ] ; 6 uses
  %i.aqb = load <4 x float>, ptr %.1336697.i, align 1, !tbaa !61
  %i.aqc = getelementptr inbounds nuw i8, ptr %.1336697.i, i64 16 ; 2 uses
  %i.aqd = load <4 x float>, ptr %i.aqc, align 1, !tbaa !61
  %i.aqe = getelementptr inbounds nuw i8, ptr %.1336697.i, i64 32 ; 2 uses
  %i.aqf = load <4 x float>, ptr %i.aqe, align 1, !tbaa !61
  %i.aqg = getelementptr inbounds nuw i8, ptr %.1336697.i, i64 48 ; 2 uses
  %i.aqh = load <4 x float>, ptr %i.aqg, align 1, !tbaa !61
  %i.aqi = load float, ptr %.1333698.i, align 4, !tbaa !65
  %i.aqj = insertelement <4 x float> poison, float %i.aqi, i64 0
  %i.aqk = shufflevector <4 x float> %i.aqj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aql = fmul fast <4 x float> %i.aqk, %i.aqb
  %i.aqm = getelementptr inbounds nuw i8, ptr %.1333698.i, i64 4
  %i.aqn = load float, ptr %i.aqm, align 4, !tbaa !65
  %i.aqo = insertelement <4 x float> poison, float %i.aqn, i64 0
  %i.aqp = shufflevector <4 x float> %i.aqo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aqq = fmul fast <4 x float> %i.aqp, %i.aqd
  %i.aqr = getelementptr inbounds nuw i8, ptr %.1333698.i, i64 8
  %i.aqs = load float, ptr %i.aqr, align 4, !tbaa !65
  %i.aqt = insertelement <4 x float> poison, float %i.aqs, i64 0
  %i.aqu = shufflevector <4 x float> %i.aqt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aqv = fmul fast <4 x float> %i.aqu, %i.aqf
  %i.aqw = getelementptr inbounds nuw i8, ptr %.1333698.i, i64 12
  %i.aqx = load float, ptr %i.aqw, align 4, !tbaa !65
  %i.aqy = insertelement <4 x float> poison, float %i.aqx, i64 0
  %i.aqz = shufflevector <4 x float> %i.aqy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ara = fmul fast <4 x float> %i.aqz, %i.aqh
  store <4 x float> %i.aql, ptr %.1336697.i, align 1, !tbaa !61
  store <4 x float> %i.aqq, ptr %i.aqc, align 1, !tbaa !61
  store <4 x float> %i.aqv, ptr %i.aqe, align 1, !tbaa !61
  store <4 x float> %i.ara, ptr %i.aqg, align 1, !tbaa !61
  %i.arb = getelementptr inbounds nuw i8, ptr %.1336697.i, i64 64 ; 2 uses
  %i.arc = getelementptr inbounds nuw i8, ptr %.1333698.i, i64 16 ; 2 uses
  %i.ard = add nuw nsw i32 %.1330699.i, 4         ; 3 uses
  %i.are = or disjoint i32 %i.ard, 3
  %i.arf = icmp slt i32 %i.are, %4
  br i1 %i.arf, label %.lr.ph700.i, label %.preheader.i64, !llvm.loop !128

.lr.ph707.i:                                      ; preds = %.lr.ph707.i.prol.loopexit, %.lr.ph707.i
  %.2331706.i = phi i32 [ %i.asi, %.lr.ph707.i ], [ %.2331706.i.unr, %.lr.ph707.i.prol.loopexit ]
  %.2334705.i = phi ptr [ %i.ash, %.lr.ph707.i ], [ %.2334705.i.unr, %.lr.ph707.i.prol.loopexit ] ; 5 uses
  %.2337704.i = phi ptr [ %i.asg, %.lr.ph707.i ], [ %.2337704.i.unr, %.lr.ph707.i.prol.loopexit ] ; 6 uses
  %i.arg = load <4 x float>, ptr %.2337704.i, align 1, !tbaa !61
  %i.arh = load float, ptr %.2334705.i, align 4, !tbaa !65
  %i.ari = insertelement <4 x float> poison, float %i.arh, i64 0
  %i.arj = shufflevector <4 x float> %i.ari, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ark = fmul fast <4 x float> %i.arj, %i.arg
  store <4 x float> %i.ark, ptr %.2337704.i, align 1, !tbaa !61
  %i.arl = getelementptr inbounds nuw i8, ptr %.2337704.i, i64 16 ; 2 uses
  %i.arm = getelementptr inbounds nuw i8, ptr %.2334705.i, i64 4
  %i.arn = load <4 x float>, ptr %i.arl, align 1, !tbaa !61
  %i.aro = load float, ptr %i.arm, align 4, !tbaa !65
  %i.arp = insertelement <4 x float> poison, float %i.aro, i64 0
  %i.arq = shufflevector <4 x float> %i.arp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.arr = fmul fast <4 x float> %i.arq, %i.arn
  store <4 x float> %i.arr, ptr %i.arl, align 1, !tbaa !61
  %i.ars = getelementptr inbounds nuw i8, ptr %.2337704.i, i64 32 ; 2 uses
  %i.art = getelementptr inbounds nuw i8, ptr %.2334705.i, i64 8
  %i.aru = load <4 x float>, ptr %i.ars, align 1, !tbaa !61
  %i.arv = load float, ptr %i.art, align 4, !tbaa !65
  %i.arw = insertelement <4 x float> poison, float %i.arv, i64 0
  %i.arx = shufflevector <4 x float> %i.arw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ary = fmul fast <4 x float> %i.arx, %i.aru
  store <4 x float> %i.ary, ptr %i.ars, align 1, !tbaa !61
  %i.arz = getelementptr inbounds nuw i8, ptr %.2337704.i, i64 48 ; 2 uses
  %i.asa = getelementptr inbounds nuw i8, ptr %.2334705.i, i64 12
  %i.asb = load <4 x float>, ptr %i.arz, align 1, !tbaa !61
  %i.asc = load float, ptr %i.asa, align 4, !tbaa !65
  %i.asd = insertelement <4 x float> poison, float %i.asc, i64 0
  %i.ase = shufflevector <4 x float> %i.asd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.asf = fmul fast <4 x float> %i.ase, %i.asb
  store <4 x float> %i.asf, ptr %i.arz, align 1, !tbaa !61
  %i.asg = getelementptr inbounds nuw i8, ptr %.2337704.i, i64 64
  %i.ash = getelementptr inbounds nuw i8, ptr %.2334705.i, i64 16
  %i.asi = add nuw nsw i32 %.2331706.i, 4         ; 2 uses
  %exitcond744.not.i.3 = icmp eq i32 %i.asi, %4
  br i1 %exitcond744.not.i.3, label %._crit_edge708.i, label %.lr.ph707.i, !llvm.loop !129

._crit_edge708.i:                                 ; preds = %.lr.ph707.i.prol.loopexit, %.lr.ph707.i, %.preheader.i64
  %indvars.iv.next746.i = add nuw nsw i64 %indvars.iv745.i, 1 ; 2 uses
  %exitcond749.not.i = icmp eq i64 %indvars.iv.next746.i, %wide.trip.count748.i
  br i1 %exitcond749.not.i, label %_ZN4ncnnL13softmax_pack8EPfimiS0_S0_.exit, label %bb.g, !llvm.loop !130

bb.h:                                             ; preds = %._crit_edge
  %i.asj = icmp sgt i32 %1, 0                     ; 2 uses
  br i1 %i.asj, label %.lr.ph269.i, label %.preheader245.i

.lr.ph269.i:                                      ; preds = %bb.h
  %i.ask = and i32 %4, -8                         ; 3 uses
  %wide.trip.count.i82 = zext nneg i32 %1 to i64  ; 2 uses
  %i.asl = add i32 %4, -8                         ; 2 uses
  %i.asm = lshr i32 %i.asl, 3
  %i.asn = add nuw nsw i32 %i.asm, 1              ; 2 uses
  %xtraiter589 = and i32 %i.asn, 3                ; 3 uses
  %i.aso = icmp ult i32 %i.asl, 24
  %unroll_iter595 = and i32 %i.asn, 1073741820
  %lcmp.mod591.not = icmp eq i32 %xtraiter589, 0
  %lcmp.mod594 = icmp ne i32 %xtraiter589, 0
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge.i85, %.lr.ph269.i
  %indvars.iv.i83 = phi i64 [ 0, %.lr.ph269.i ], [ %indvars.iv.next.i86, %._crit_edge.i85 ] ; 2 uses
  %i.asp = mul i64 %indvars.iv.i83, %3
  %i.asq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.asp ; 3 uses
  br i1 %i.a, label %.lr.ph.i90.preheader, label %.preheader250.i

.lr.ph.i90.preheader:                             ; preds = %bb.i
  br i1 %i.aso, label %.lr.ph.i90.epil.preheader, label %.lr.ph.i90

.preheader250.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i90
  br i1 %lcmp.mod591.not, label %.preheader250.i, label %.lr.ph.i90.epil.preheader

.lr.ph.i90.epil.preheader:                        ; preds = %.preheader250.i.loopexit.unr-lcssa, %.lr.ph.i90.preheader
  %.0139253.i.epil.init = phi ptr [ %i.asq, %.lr.ph.i90.preheader ], [ %i.atq, %.preheader250.i.loopexit.unr-lcssa ]
  %.0140252.i.epil.init = phi ptr [ %5, %.lr.ph.i90.preheader ], [ %i.atr, %.preheader250.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod594)
  br label %.lr.ph.i90.epil

.lr.ph.i90.epil:                                  ; preds = %.lr.ph.i90.epil, %.lr.ph.i90.epil.preheader
  %.0139253.i.epil = phi ptr [ %i.asu, %.lr.ph.i90.epil ], [ %.0139253.i.epil.init, %.lr.ph.i90.epil.preheader ] ; 2 uses
  %.0140252.i.epil = phi ptr [ %i.asv, %.lr.ph.i90.epil ], [ %.0140252.i.epil.init, %.lr.ph.i90.epil.preheader ] ; 3 uses
  %epil.iter590 = phi i32 [ %epil.iter590.next, %.lr.ph.i90.epil ], [ 0, %.lr.ph.i90.epil.preheader ]
  %i.asr = load <8 x float>, ptr %.0139253.i.epil, align 1, !tbaa !61
  %i.ass = load <8 x float>, ptr %.0140252.i.epil, align 1, !tbaa !61
  %i.ast = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ass, <8 x float> nofpclass(nan inf) %i.asr)
  store <8 x float> %i.ast, ptr %.0140252.i.epil, align 1, !tbaa !61
  %i.asu = getelementptr inbounds nuw i8, ptr %.0139253.i.epil, i64 32 ; 2 uses
  %i.asv = getelementptr inbounds nuw i8, ptr %.0140252.i.epil, i64 32 ; 2 uses
  %epil.iter590.next = add i32 %epil.iter590, 1   ; 2 uses
  %epil.iter590.cmp.not = icmp eq i32 %epil.iter590.next, %xtraiter589
  br i1 %epil.iter590.cmp.not, label %.preheader250.i, label %.lr.ph.i90.epil, !llvm.loop !131

.preheader250.i:                                  ; preds = %.preheader250.i.loopexit.unr-lcssa, %.lr.ph.i90.epil, %bb.i
  %.0143.lcssa.i = phi i32 [ 0, %bb.i ], [ %i.ask, %.lr.ph.i90.epil ], [ %i.ask, %.preheader250.i.loopexit.unr-lcssa ] ; 3 uses
  %.0140.lcssa.i = phi ptr [ %5, %bb.i ], [ %i.atr, %.preheader250.i.loopexit.unr-lcssa ], [ %i.asv, %.lr.ph.i90.epil ] ; 2 uses
  %.0139.lcssa.i = phi ptr [ %i.asq, %bb.i ], [ %i.atq, %.preheader250.i.loopexit.unr-lcssa ], [ %i.asu, %.lr.ph.i90.epil ] ; 2 uses
  %i.asw = or disjoint i32 %.0143.lcssa.i, 3
  %i.asx = icmp slt i32 %i.asw, %4
  br i1 %i.asx, label %.lr.ph259.i, label %.preheader249.i

.lr.ph.i90:                                       ; preds = %.lr.ph.i90.preheader, %.lr.ph.i90
  %.0139253.i = phi ptr [ %i.atq, %.lr.ph.i90 ], [ %i.asq, %.lr.ph.i90.preheader ] ; 5 uses
  %.0140252.i = phi ptr [ %i.atr, %.lr.ph.i90 ], [ %5, %.lr.ph.i90.preheader ] ; 6 uses
  %niter596 = phi i32 [ %niter596.next.3, %.lr.ph.i90 ], [ 0, %.lr.ph.i90.preheader ]
  %i.asy = load <8 x float>, ptr %.0139253.i, align 1, !tbaa !61
  %i.asz = load <8 x float>, ptr %.0140252.i, align 1, !tbaa !61
  %i.ata = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.asz, <8 x float> nofpclass(nan inf) %i.asy)
  store <8 x float> %i.ata, ptr %.0140252.i, align 1, !tbaa !61
  %i.atb = getelementptr inbounds nuw i8, ptr %.0139253.i, i64 32
  %i.atc = getelementptr inbounds nuw i8, ptr %.0140252.i, i64 32 ; 2 uses
  %i.atd = load <8 x float>, ptr %i.atb, align 1, !tbaa !61
  %i.ate = load <8 x float>, ptr %i.atc, align 1, !tbaa !61
  %i.atf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ate, <8 x float> nofpclass(nan inf) %i.atd)
  store <8 x float> %i.atf, ptr %i.atc, align 1, !tbaa !61
  %i.atg = getelementptr inbounds nuw i8, ptr %.0139253.i, i64 64
  %i.ath = getelementptr inbounds nuw i8, ptr %.0140252.i, i64 64 ; 2 uses
  %i.ati = load <8 x float>, ptr %i.atg, align 1, !tbaa !61
  %i.atj = load <8 x float>, ptr %i.ath, align 1, !tbaa !61
  %i.atk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.atj, <8 x float> nofpclass(nan inf) %i.ati)
  store <8 x float> %i.atk, ptr %i.ath, align 1, !tbaa !61
  %i.atl = getelementptr inbounds nuw i8, ptr %.0139253.i, i64 96
  %i.atm = getelementptr inbounds nuw i8, ptr %.0140252.i, i64 96 ; 2 uses
  %i.atn = load <8 x float>, ptr %i.atl, align 1, !tbaa !61
  %i.ato = load <8 x float>, ptr %i.atm, align 1, !tbaa !61
  %i.atp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ato, <8 x float> nofpclass(nan inf) %i.atn)
  store <8 x float> %i.atp, ptr %i.atm, align 1, !tbaa !61
  %i.atq = getelementptr inbounds nuw i8, ptr %.0139253.i, i64 128 ; 3 uses
  %i.atr = getelementptr inbounds nuw i8, ptr %.0140252.i, i64 128 ; 3 uses
  %niter596.next.3 = add i32 %niter596, 4         ; 2 uses
  %niter596.ncmp.3.not = icmp eq i32 %niter596.next.3, %unroll_iter595
  br i1 %niter596.ncmp.3.not, label %.preheader250.i.loopexit.unr-lcssa, label %.lr.ph.i90, !llvm.loop !132

.preheader249.i:                                  ; preds = %.lr.ph259.i, %.preheader250.i
  %.1144.lcssa.i = phi i32 [ %.0143.lcssa.i, %.preheader250.i ], [ %i.avw, %.lr.ph259.i ] ; 7 uses
  %.1141.lcssa.i = phi ptr [ %.0140.lcssa.i, %.preheader250.i ], [ %i.avv, %.lr.ph259.i ] ; 8 uses
  %.1.lcssa.i84 = phi ptr [ %.0139.lcssa.i, %.preheader250.i ], [ %i.avu, %.lr.ph259.i ] ; 8 uses
  %i.ats = icmp slt i32 %.1144.lcssa.i, %4
  br i1 %i.ats, label %iter.check373, label %._crit_edge.i85

iter.check373:                                    ; preds = %.preheader249.i
  %7 = xor i32 %.1144.lcssa.i, -1
  %8 = add i32 %4, %7                             ; 3 uses
  %i.att = zext i32 %8 to i64
  %i.atu = add nuw nsw i64 %i.att, 1              ; 5 uses
  %min.iters.check354 = icmp ult i32 %8, 3
  br i1 %min.iters.check354, label %.lr.ph266.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check373
  %i.atv = xor i32 %.1144.lcssa.i, -1
  %i.atw = add i32 %4, %i.atv
  %i.atx = zext i32 %i.atw to i64
  %i.aty = shl nuw nsw i64 %i.atx, 2
  %i.atz = add nuw nsw i64 %i.aty, 4              ; 2 uses
  %i.aua = getelementptr i8, ptr %.1141.lcssa.i, i64 %i.atz
  %i.aub = getelementptr i8, ptr %.1.lcssa.i84, i64 %i.atz
  %bound0 = icmp ult ptr %.1141.lcssa.i, %i.aub
  %bound1 = icmp ult ptr %.1.lcssa.i84, %i.aua
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph266.i.preheader, label %vector.main.loop.iter.check355

vector.main.loop.iter.check355:                   ; preds = %vector.memcheck
  %min.iters.check356 = icmp ult i32 %8, 31
  br i1 %min.iters.check356, label %vec.epilog.ph377, label %vector.ph357

vector.ph357:                                     ; preds = %vector.main.loop.iter.check355
  %i.auc = and i64 %i.atu, 28
  %n.vec358 = and i64 %i.atu, 8589934560          ; 5 uses
  %i.aud = shl nuw nsw i64 %n.vec358, 2           ; 2 uses
  %i.aue = getelementptr i8, ptr %.1.lcssa.i84, i64 %i.aud
  %i.auf = getelementptr i8, ptr %.1141.lcssa.i, i64 %i.aud
  %i.aug = trunc i64 %n.vec358 to i32
  %i.auh = add i32 %.1144.lcssa.i, %i.aug
  br label %vector.body359

vector.body359:                                   ; preds = %vector.ph357, %vector.body359
  %index360 = phi i64 [ 0, %vector.ph357 ], [ %index.next370, %vector.body359 ] ; 2 uses
  %i.aui = shl i64 %index360, 2                   ; 2 uses
  %next.gep361 = getelementptr i8, ptr %.1.lcssa.i84, i64 %i.aui ; 4 uses
  %next.gep362 = getelementptr i8, ptr %.1141.lcssa.i, i64 %i.aui ; 5 uses
  %i.auj = getelementptr i8, ptr %next.gep362, i64 32 ; 2 uses
  %i.auk = getelementptr i8, ptr %next.gep362, i64 64 ; 2 uses
  %i.aul = getelementptr i8, ptr %next.gep362, i64 96 ; 2 uses
  %wide.load = load <8 x float>, ptr %next.gep362, align 4, !tbaa !65, !alias.scope !166, !noalias !167 ; 2 uses
  %wide.load363 = load <8 x float>, ptr %i.auj, align 4, !tbaa !65, !alias.scope !166, !noalias !167 ; 2 uses
  %wide.load364 = load <8 x float>, ptr %i.auk, align 4, !tbaa !65, !alias.scope !166, !noalias !167 ; 2 uses
  %wide.load365 = load <8 x float>, ptr %i.aul, align 4, !tbaa !65, !alias.scope !166, !noalias !167 ; 2 uses
  %i.aum = getelementptr i8, ptr %next.gep361, i64 32
  %i.aun = getelementptr i8, ptr %next.gep361, i64 64
  %i.auo = getelementptr i8, ptr %next.gep361, i64 96
  %wide.load366 = load <8 x float>, ptr %next.gep361, align 4, !tbaa !65, !alias.scope !167 ; 2 uses
  %wide.load367 = load <8 x float>, ptr %i.aum, align 4, !tbaa !65, !alias.scope !167 ; 2 uses
  %wide.load368 = load <8 x float>, ptr %i.aun, align 4, !tbaa !65, !alias.scope !167 ; 2 uses
  %wide.load369 = load <8 x float>, ptr %i.auo, align 4, !tbaa !65, !alias.scope !167 ; 2 uses
  %i.aup = fcmp fast olt <8 x float> %wide.load, %wide.load366
  %i.auq = fcmp fast olt <8 x float> %wide.load363, %wide.load367
  %i.aur = fcmp fast olt <8 x float> %wide.load364, %wide.load368
  %i.aus = fcmp fast olt <8 x float> %wide.load365, %wide.load369
  %i.aut = select <8 x i1> %i.aup, <8 x float> %wide.load366, <8 x float> %wide.load
  %i.auu = select <8 x i1> %i.auq, <8 x float> %wide.load367, <8 x float> %wide.load363
  %i.auv = select <8 x i1> %i.aur, <8 x float> %wide.load368, <8 x float> %wide.load364
  %i.auw = select <8 x i1> %i.aus, <8 x float> %wide.load369, <8 x float> %wide.load365
  store <8 x float> %i.aut, ptr %next.gep362, align 4, !tbaa !65, !alias.scope !166, !noalias !167
  store <8 x float> %i.auu, ptr %i.auj, align 4, !tbaa !65, !alias.scope !166, !noalias !167
  store <8 x float> %i.auv, ptr %i.auk, align 4, !tbaa !65, !alias.scope !166, !noalias !167
  store <8 x float> %i.auw, ptr %i.aul, align 4, !tbaa !65, !alias.scope !166, !noalias !167
  %index.next370 = add nuw i64 %index360, 32      ; 2 uses
  %i.aux = icmp eq i64 %index.next370, %n.vec358
  br i1 %i.aux, label %middle.block371, label %vector.body359, !llvm.loop !136

middle.block371:                                  ; preds = %vector.body359
  %cmp.n372 = icmp eq i64 %i.atu, %n.vec358
  br i1 %cmp.n372, label %._crit_edge.i85, label %vec.epilog.iter.check374

vec.epilog.iter.check374:                         ; preds = %middle.block371
  %min.epilog.iters.check376 = icmp eq i64 %i.auc, 0
  br i1 %min.epilog.iters.check376, label %.lr.ph266.i.preheader, label %vec.epilog.ph377, !prof !69

vec.epilog.ph377:                                 ; preds = %vector.main.loop.iter.check355, %vec.epilog.iter.check374
  %vec.epilog.resume.val378 = phi i64 [ %n.vec358, %vec.epilog.iter.check374 ], [ 0, %vector.main.loop.iter.check355 ]
  %n.vec379 = and i64 %i.atu, 8589934588          ; 4 uses
  %i.auy = shl nuw nsw i64 %n.vec379, 2           ; 2 uses
  %i.auz = getelementptr i8, ptr %.1.lcssa.i84, i64 %i.auy
  %i.ava = getelementptr i8, ptr %.1141.lcssa.i, i64 %i.auy
  %i.avb = trunc i64 %n.vec379 to i32
  %i.avc = add i32 %.1144.lcssa.i, %i.avb
  br label %vec.epilog.vector.body380

vec.epilog.vector.body380:                        ; preds = %vec.epilog.vector.body380, %vec.epilog.ph377
  %index381 = phi i64 [ %vec.epilog.resume.val378, %vec.epilog.ph377 ], [ %index.next386, %vec.epilog.vector.body380 ] ; 2 uses
  %i.avd = shl i64 %index381, 2                   ; 2 uses
  %next.gep382 = getelementptr i8, ptr %.1.lcssa.i84, i64 %i.avd
  %next.gep383 = getelementptr i8, ptr %.1141.lcssa.i, i64 %i.avd ; 2 uses
  %wide.load384 = load <4 x float>, ptr %next.gep383, align 4, !tbaa !65, !alias.scope !166, !noalias !167 ; 2 uses
  %wide.load385 = load <4 x float>, ptr %next.gep382, align 4, !tbaa !65, !alias.scope !167 ; 2 uses
  %i.ave = fcmp fast olt <4 x float> %wide.load384, %wide.load385
  %i.avf = select <4 x i1> %i.ave, <4 x float> %wide.load385, <4 x float> %wide.load384
  store <4 x float> %i.avf, ptr %next.gep383, align 4, !tbaa !65, !alias.scope !166, !noalias !167
  %index.next386 = add nuw i64 %index381, 4       ; 2 uses
  %i.avg = icmp eq i64 %index.next386, %n.vec379
  br i1 %i.avg, label %vec.epilog.middle.block387, label %vec.epilog.vector.body380, !llvm.loop !137

vec.epilog.middle.block387:                       ; preds = %vec.epilog.vector.body380
  %cmp.n388 = icmp eq i64 %i.atu, %n.vec379
  br i1 %cmp.n388, label %._crit_edge.i85, label %.lr.ph266.i.preheader

.lr.ph266.i.preheader:                            ; preds = %iter.check373, %vector.memcheck, %vec.epilog.iter.check374, %vec.epilog.middle.block387
  %.2265.i.ph = phi ptr [ %.1.lcssa.i84, %iter.check373 ], [ %.1.lcssa.i84, %vector.memcheck ], [ %i.aue, %vec.epilog.iter.check374 ], [ %i.auz, %vec.epilog.middle.block387 ] ; 2 uses
  %.2142264.i.ph = phi ptr [ %.1141.lcssa.i, %iter.check373 ], [ %.1141.lcssa.i, %vector.memcheck ], [ %i.auf, %vec.epilog.iter.check374 ], [ %i.ava, %vec.epilog.middle.block387 ] ; 2 uses
  %.2145263.i.ph = phi i32 [ %.1144.lcssa.i, %iter.check373 ], [ %.1144.lcssa.i, %vector.memcheck ], [ %i.auh, %vec.epilog.iter.check374 ], [ %i.avc, %vec.epilog.middle.block387 ] ; 4 uses
  %i.avh = sub i32 %4, %.2145263.i.ph
  %xtraiter597 = and i32 %i.avh, 3                ; 2 uses
  %lcmp.mod598.not = icmp eq i32 %xtraiter597, 0
  br i1 %lcmp.mod598.not, label %.lr.ph266.i.prol.loopexit, label %.lr.ph266.i.prol

.lr.ph266.i.prol:                                 ; preds = %.lr.ph266.i.preheader, %.lr.ph266.i.prol
  %.2265.i.prol = phi ptr [ %i.avm, %.lr.ph266.i.prol ], [ %.2265.i.ph, %.lr.ph266.i.preheader ] ; 2 uses
  %.2142264.i.prol = phi ptr [ %i.avn, %.lr.ph266.i.prol ], [ %.2142264.i.ph, %.lr.ph266.i.preheader ] ; 3 uses
  %.2145263.i.prol = phi i32 [ %i.avo, %.lr.ph266.i.prol ], [ %.2145263.i.ph, %.lr.ph266.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph266.i.prol ], [ 0, %.lr.ph266.i.preheader ]
  %i.avi = load float, ptr %.2142264.i.prol, align 4, !tbaa !65 ; 2 uses
  %i.avj = load float, ptr %.2265.i.prol, align 4, !tbaa !65 ; 2 uses
  %i.avk = fcmp fast olt float %i.avi, %i.avj
  %i.avl = select i1 %i.avk, float %i.avj, float %i.avi
  store float %i.avl, ptr %.2142264.i.prol, align 4, !tbaa !65
  %i.avm = getelementptr inbounds nuw i8, ptr %.2265.i.prol, i64 4 ; 2 uses
  %i.avn = getelementptr inbounds nuw i8, ptr %.2142264.i.prol, i64 4 ; 2 uses
  %i.avo = add nuw nsw i32 %.2145263.i.prol, 1    ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter597
  br i1 %prol.iter.cmp.not, label %.lr.ph266.i.prol.loopexit, label %.lr.ph266.i.prol, !llvm.loop !138

.lr.ph266.i.prol.loopexit:                        ; preds = %.lr.ph266.i.prol, %.lr.ph266.i.preheader
  %.2265.i.unr = phi ptr [ %.2265.i.ph, %.lr.ph266.i.preheader ], [ %i.avm, %.lr.ph266.i.prol ]
  %.2142264.i.unr = phi ptr [ %.2142264.i.ph, %.lr.ph266.i.preheader ], [ %i.avn, %.lr.ph266.i.prol ]
  %.2145263.i.unr = phi i32 [ %.2145263.i.ph, %.lr.ph266.i.preheader ], [ %i.avo, %.lr.ph266.i.prol ]
  %i.avp = sub i32 %.2145263.i.ph, %4
  %i.avq = icmp ugt i32 %i.avp, -4
  br i1 %i.avq, label %._crit_edge.i85, label %.lr.ph266.i

.lr.ph259.i:                                      ; preds = %.preheader250.i, %.lr.ph259.i
  %.1258.i = phi ptr [ %i.avu, %.lr.ph259.i ], [ %.0139.lcssa.i, %.preheader250.i ] ; 2 uses
  %.1141257.i = phi ptr [ %i.avv, %.lr.ph259.i ], [ %.0140.lcssa.i, %.preheader250.i ] ; 3 uses
  %.1144256.i = phi i32 [ %i.avw, %.lr.ph259.i ], [ %.0143.lcssa.i, %.preheader250.i ]
  %i.avr = load <4 x float>, ptr %.1258.i, align 1, !tbaa !61
  %i.avs = load <4 x float>, ptr %.1141257.i, align 1, !tbaa !61
  %i.avt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.avs, <4 x float> nofpclass(nan inf) %i.avr)
  store <4 x float> %i.avt, ptr %.1141257.i, align 1, !tbaa !61
  %i.avu = getelementptr inbounds nuw i8, ptr %.1258.i, i64 16 ; 2 uses
  %i.avv = getelementptr inbounds nuw i8, ptr %.1141257.i, i64 16 ; 2 uses
  %i.avw = add nuw nsw i32 %.1144256.i, 4         ; 3 uses
  %i.avx = or disjoint i32 %i.avw, 3
  %i.avy = icmp slt i32 %i.avx, %4
  br i1 %i.avy, label %.lr.ph259.i, label %.preheader249.i, !llvm.loop !139

.lr.ph266.i:                                      ; preds = %.lr.ph266.i.prol.loopexit, %.lr.ph266.i
  %.2265.i = phi ptr [ %i.awv, %.lr.ph266.i ], [ %.2265.i.unr, %.lr.ph266.i.prol.loopexit ] ; 5 uses
  %.2142264.i = phi ptr [ %i.aww, %.lr.ph266.i ], [ %.2142264.i.unr, %.lr.ph266.i.prol.loopexit ] ; 6 uses
  %.2145263.i = phi i32 [ %i.awx, %.lr.ph266.i ], [ %.2145263.i.unr, %.lr.ph266.i.prol.loopexit ]
  %i.avz = load float, ptr %.2142264.i, align 4, !tbaa !65 ; 2 uses
  %i.awa = load float, ptr %.2265.i, align 4, !tbaa !65 ; 2 uses
  %i.awb = fcmp fast olt float %i.avz, %i.awa
  %i.awc = select i1 %i.awb, float %i.awa, float %i.avz
  store float %i.awc, ptr %.2142264.i, align 4, !tbaa !65
  %i.awd = getelementptr inbounds nuw i8, ptr %.2265.i, i64 4
  %i.awe = getelementptr inbounds nuw i8, ptr %.2142264.i, i64 4 ; 2 uses
  %i.awf = load float, ptr %i.awe, align 4, !tbaa !65 ; 2 uses
  %i.awg = load float, ptr %i.awd, align 4, !tbaa !65 ; 2 uses
  %i.awh = fcmp fast olt float %i.awf, %i.awg
  %i.awi = select i1 %i.awh, float %i.awg, float %i.awf
  store float %i.awi, ptr %i.awe, align 4, !tbaa !65
  %i.awj = getelementptr inbounds nuw i8, ptr %.2265.i, i64 8
  %i.awk = getelementptr inbounds nuw i8, ptr %.2142264.i, i64 8 ; 2 uses
  %i.awl = load float, ptr %i.awk, align 4, !tbaa !65 ; 2 uses
  %i.awm = load float, ptr %i.awj, align 4, !tbaa !65 ; 2 uses
  %i.awn = fcmp fast olt float %i.awl, %i.awm
  %i.awo = select i1 %i.awn, float %i.awm, float %i.awl
  store float %i.awo, ptr %i.awk, align 4, !tbaa !65
  %i.awp = getelementptr inbounds nuw i8, ptr %.2265.i, i64 12
  %i.awq = getelementptr inbounds nuw i8, ptr %.2142264.i, i64 12 ; 2 uses
  %i.awr = load float, ptr %i.awq, align 4, !tbaa !65 ; 2 uses
  %i.aws = load float, ptr %i.awp, align 4, !tbaa !65 ; 2 uses
  %i.awt = fcmp fast olt float %i.awr, %i.aws
  %i.awu = select i1 %i.awt, float %i.aws, float %i.awr
  store float %i.awu, ptr %i.awq, align 4, !tbaa !65
  %i.awv = getelementptr inbounds nuw i8, ptr %.2265.i, i64 16
  %i.aww = getelementptr inbounds nuw i8, ptr %.2142264.i, i64 16
  %i.awx = add nuw nsw i32 %.2145263.i, 4         ; 2 uses
  %exitcond.not.i89.3 = icmp eq i32 %i.awx, %4
  br i1 %exitcond.not.i89.3, label %._crit_edge.i85, label %.lr.ph266.i, !llvm.loop !140

._crit_edge.i85:                                  ; preds = %.lr.ph266.i.prol.loopexit, %.lr.ph266.i, %middle.block371, %vec.epilog.middle.block387, %.preheader249.i
  %indvars.iv.next.i86 = add nuw nsw i64 %indvars.iv.i83, 1 ; 2 uses
  %exitcond357.not.i = icmp eq i64 %indvars.iv.next.i86, %wide.trip.count.i82
  br i1 %exitcond357.not.i, label %.preheader248.i, label %bb.i, !llvm.loop !141

.preheader245.i:                                  ; preds = %._crit_edge294.i, %bb.h
  br i1 %i.a, label %.lr.ph299.i.preheader, label %.preheader244.i

.lr.ph299.i.preheader:                            ; preds = %.preheader245.i
  %i.awy = add nsw i32 %4, -8                     ; 2 uses
  %i.awz = lshr i32 %i.awy, 3                     ; 2 uses
  %i.axa = add nuw nsw i32 %i.awz, 1              ; 2 uses
  %i.axb = icmp eq i32 %i.awz, 0
  br i1 %i.axb, label %.lr.ph299.i.epil.preheader, label %.lr.ph299.i.preheader.new

.lr.ph299.i.preheader.new:                        ; preds = %.lr.ph299.i.preheader
  %unroll_iter607 = and i32 %i.axa, 1073741822
  br label %.lr.ph299.i

.preheader248.i:                                  ; preds = %._crit_edge.i85, %._crit_edge294.i
  %indvars.iv359.i = phi i64 [ %indvars.iv.next360.i, %._crit_edge294.i ], [ 0, %._crit_edge.i85 ] ; 2 uses
  %i.axc = mul i64 %indvars.iv359.i, %3
  %i.axd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.axc ; 2 uses
  br i1 %i.a, label %.lr.ph275.i, label %.preheader247.i

.preheader247.i:                                  ; preds = %.lr.ph275.i, %.preheader248.i
  %.0172.lcssa.i = phi i32 [ 0, %.preheader248.i ], [ %i.ask, %.lr.ph275.i ] ; 3 uses
  %.0169.lcssa.i = phi ptr [ %6, %.preheader248.i ], [ %i.ayk, %.lr.ph275.i ] ; 2 uses
  %.0166.lcssa.i = phi ptr [ %5, %.preheader248.i ], [ %i.ayj, %.lr.ph275.i ] ; 2 uses
  %.0163.lcssa.i = phi ptr [ %i.axd, %.preheader248.i ], [ %i.ayi, %.lr.ph275.i ] ; 2 uses
  %i.axe = or disjoint i32 %.0172.lcssa.i, 3
  %i.axf = icmp slt i32 %i.axe, %4
  br i1 %i.axf, label %.lr.ph284.i, label %.preheader246.i

.lr.ph275.i:                                      ; preds = %.preheader248.i, %.lr.ph275.i
  %.0163273.i = phi ptr [ %i.ayi, %.lr.ph275.i ], [ %i.axd, %.preheader248.i ] ; 3 uses
  %.0166272.i = phi ptr [ %i.ayj, %.lr.ph275.i ], [ %5, %.preheader248.i ] ; 2 uses
  %.0169271.i = phi ptr [ %i.ayk, %.lr.ph275.i ], [ %6, %.preheader248.i ] ; 3 uses
  %.0172270.i = phi i32 [ %i.ayl, %.lr.ph275.i ], [ 0, %.preheader248.i ]
  %i.axg = load <8 x float>, ptr %.0163273.i, align 1, !tbaa !61
  %i.axh = load <8 x float>, ptr %.0166272.i, align 1, !tbaa !61
  %i.axi = load <8 x float>, ptr %.0169271.i, align 1, !tbaa !61
  %i.axj = fsub fast <8 x float> %i.axg, %i.axh
  %i.axk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.axj, <8 x float> splat (float f0x42B0C0A5))
  %i.axl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.axk, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.axm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.axl, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.axn = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.axm, i32 1) ; 2 uses
  %i.axo = fcmp fast ogt <8 x float> %i.axn, %i.axm
  %i.axp = select <8 x i1> %i.axo, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.axq = fsub fast <8 x float> %i.axn, %i.axp   ; 2 uses
  %i.axr = fneg fast <8 x float> %i.axq           ; 2 uses
  %i.axs = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.axr, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.axl)
  %i.axt = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.axr, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.axs) ; 8 uses
  %i.axu = fmul fast <8 x float> %i.axt, %i.axt
  %i.axv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.axt, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.axw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.axv, <8 x float> nofpclass(nan inf) %i.axt, <8 x float> splat (float f0x3C088908))
  %i.axx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.axw, <8 x float> nofpclass(nan inf) %i.axt, <8 x float> splat (float f0x3D2AA9C1))
  %i.axy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.axx, <8 x float> nofpclass(nan inf) %i.axt, <8 x float> splat (float f0x3E2AAAAA))
  %i.axz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.axy, <8 x float> nofpclass(nan inf) %i.axt, <8 x float> splat (float 5.000000e-01))
  %i.aya = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.axz, <8 x float> nofpclass(nan inf) %i.axu, <8 x float> nofpclass(nan inf) %i.axt)
  %i.ayb = fadd fast <8 x float> %i.aya, splat (float 1.000000e+00)
  %i.ayc = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.axq)
  %i.ayd = shl <8 x i32> %i.ayc, splat (i32 23)
  %i.aye = add <8 x i32> %i.ayd, splat (i32 1065353216)
  %i.ayf = bitcast <8 x i32> %i.aye to <8 x float>
  %i.ayg = fmul fast <8 x float> %i.ayb, %i.ayf   ; 2 uses
  store <8 x float> %i.ayg, ptr %.0163273.i, align 1, !tbaa !61
  %i.ayh = fadd fast <8 x float> %i.ayg, %i.axi
  store <8 x float> %i.ayh, ptr %.0169271.i, align 1, !tbaa !61
  %i.ayi = getelementptr inbounds nuw i8, ptr %.0163273.i, i64 32 ; 2 uses
  %i.ayj = getelementptr inbounds nuw i8, ptr %.0166272.i, i64 32 ; 2 uses
  %i.ayk = getelementptr inbounds nuw i8, ptr %.0169271.i, i64 32 ; 2 uses
  %i.ayl = add nuw nsw i32 %.0172270.i, 8         ; 2 uses
  %i.aym = or disjoint i32 %i.ayl, 7
  %i.ayn = icmp slt i32 %i.aym, %4
  br i1 %i.ayn, label %.lr.ph275.i, label %.preheader247.i, !llvm.loop !142

.preheader246.i:                                  ; preds = %.lr.ph284.i, %.preheader247.i
  %.1173.lcssa.i = phi i32 [ %.0172.lcssa.i, %.preheader247.i ], [ %i.bbc, %.lr.ph284.i ] ; 5 uses
  %.1170.lcssa.i = phi ptr [ %.0169.lcssa.i, %.preheader247.i ], [ %i.bbb, %.lr.ph284.i ] ; 7 uses
  %.1167.lcssa.i = phi ptr [ %.0166.lcssa.i, %.preheader247.i ], [ %i.bba, %.lr.ph284.i ] ; 7 uses
  %.1164.lcssa.i = phi ptr [ %.0163.lcssa.i, %.preheader247.i ], [ %i.baz, %.lr.ph284.i ] ; 7 uses
  %i.ayo = icmp slt i32 %.1173.lcssa.i, %4
  br i1 %i.ayo, label %.lr.ph293.i.preheader, label %._crit_edge294.i

.lr.ph293.i.preheader:                            ; preds = %.preheader246.i
  %i.ayp = xor i32 %.1173.lcssa.i, -1
  %i.ayq = add i32 %4, %i.ayp                     ; 2 uses
  %i.ayr = zext i32 %i.ayq to i64                 ; 2 uses
  %i.ays = add nuw nsw i64 %i.ayr, 1              ; 2 uses
  %min.iters.check409 = icmp ult i32 %i.ayq, 7
  br i1 %min.iters.check409, label %.lr.ph293.i.preheader571, label %vector.memcheck410

vector.memcheck410:                               ; preds = %.lr.ph293.i.preheader
  %i.ayt = shl nuw nsw i64 %i.ayr, 2
  %i.ayu = add nuw nsw i64 %i.ayt, 4              ; 3 uses
  %i.ayv = getelementptr i8, ptr %.1164.lcssa.i, i64 %i.ayu ; 2 uses
  %i.ayw = getelementptr i8, ptr %.1170.lcssa.i, i64 %i.ayu ; 2 uses
  %i.ayx = getelementptr i8, ptr %.1167.lcssa.i, i64 %i.ayu ; 2 uses
  %bound0411 = icmp ult ptr %.1164.lcssa.i, %i.ayw
  %bound1412 = icmp ult ptr %.1170.lcssa.i, %i.ayv
  %found.conflict413 = and i1 %bound0411, %bound1412
  %bound0414 = icmp ult ptr %.1164.lcssa.i, %i.ayx
  %bound1415 = icmp ult ptr %.1167.lcssa.i, %i.ayv
  %found.conflict416 = and i1 %bound0414, %bound1415
  %conflict.rdx = or i1 %found.conflict413, %found.conflict416
  %bound0417 = icmp ult ptr %.1170.lcssa.i, %i.ayx
  %bound1418 = icmp ult ptr %.1167.lcssa.i, %i.ayw
  %found.conflict419 = and i1 %bound0417, %bound1418
  %conflict.rdx420 = or i1 %conflict.rdx, %found.conflict419
  br i1 %conflict.rdx420, label %.lr.ph293.i.preheader571, label %vector.ph421

vector.ph421:                                     ; preds = %vector.memcheck410
  %n.vec422 = and i64 %i.ays, 8589934584          ; 4 uses
  %i.ayy = shl nuw nsw i64 %n.vec422, 2           ; 3 uses
  %i.ayz = getelementptr i8, ptr %.1164.lcssa.i, i64 %i.ayy
  %i.aza = getelementptr i8, ptr %.1167.lcssa.i, i64 %i.ayy
  %i.azb = getelementptr i8, ptr %.1170.lcssa.i, i64 %i.ayy
  %i.azc = trunc i64 %n.vec422 to i32
  %i.azd = add i32 %.1173.lcssa.i, %i.azc
  br label %vector.body423

vector.body423:                                   ; preds = %vector.body423, %vector.ph421
  %index424 = phi i64 [ 0, %vector.ph421 ], [ %index.next431, %vector.body423 ] ; 2 uses
  %i.aze = shl i64 %index424, 2                   ; 3 uses
  %next.gep425 = getelementptr i8, ptr %.1164.lcssa.i, i64 %i.aze ; 2 uses
  %next.gep426 = getelementptr i8, ptr %.1167.lcssa.i, i64 %i.aze
  %next.gep427 = getelementptr i8, ptr %.1170.lcssa.i, i64 %i.aze ; 2 uses
  %wide.load428 = load <8 x float>, ptr %next.gep425, align 4, !tbaa !65, !alias.scope !168, !noalias !169
  %wide.load429 = load <8 x float>, ptr %next.gep426, align 4, !tbaa !65, !alias.scope !170
  %i.azf = fsub fast <8 x float> %wide.load428, %wide.load429
  %i.azg = tail call fast <8 x float> @llvm.exp.v8f32(<8 x float> %i.azf) ; 2 uses
  store <8 x float> %i.azg, ptr %next.gep425, align 4, !tbaa !65, !alias.scope !168, !noalias !169
  %wide.load430 = load <8 x float>, ptr %next.gep427, align 4, !tbaa !65, !alias.scope !171, !noalias !170
  %i.azh = fadd fast <8 x float> %wide.load430, %i.azg
  store <8 x float> %i.azh, ptr %next.gep427, align 4, !tbaa !65, !alias.scope !171, !noalias !170
  %index.next431 = add nuw i64 %index424, 8       ; 2 uses
  %i.azi = icmp eq i64 %index.next431, %n.vec422
  br i1 %i.azi, label %middle.block432, label %vector.body423, !llvm.loop !147

middle.block432:                                  ; preds = %vector.body423
  %cmp.n433 = icmp eq i64 %i.ays, %n.vec422
  br i1 %cmp.n433, label %._crit_edge294.i, label %.lr.ph293.i.preheader571

.lr.ph293.i.preheader571:                         ; preds = %vector.memcheck410, %.lr.ph293.i.preheader, %middle.block432
  %.2165292.i.ph = phi ptr [ %.1164.lcssa.i, %vector.memcheck410 ], [ %.1164.lcssa.i, %.lr.ph293.i.preheader ], [ %i.ayz, %middle.block432 ] ; 4 uses
  %.2168291.i.ph = phi ptr [ %.1167.lcssa.i, %vector.memcheck410 ], [ %.1167.lcssa.i, %.lr.ph293.i.preheader ], [ %i.aza, %middle.block432 ] ; 3 uses
  %.2171290.i.ph = phi ptr [ %.1170.lcssa.i, %vector.memcheck410 ], [ %.1170.lcssa.i, %.lr.ph293.i.preheader ], [ %i.azb, %middle.block432 ] ; 4 uses
  %.2174289.i.ph = phi i32 [ %.1173.lcssa.i, %vector.memcheck410 ], [ %.1173.lcssa.i, %.lr.ph293.i.preheader ], [ %i.azd, %middle.block432 ] ; 4 uses
  %i.azj = sub i32 %4, %.2174289.i.ph
  %.neg = add i32 %.2174289.i.ph, 1
  %xtraiter599 = and i32 %i.azj, 1
  %lcmp.mod600.not = icmp eq i32 %xtraiter599, 0
  br i1 %lcmp.mod600.not, label %.lr.ph293.i.prol.loopexit, label %.lr.ph293.i.prol

.lr.ph293.i.prol:                                 ; preds = %.lr.ph293.i.preheader571
  %i.azk = load float, ptr %.2165292.i.ph, align 4, !tbaa !65
  %i.azl = load float, ptr %.2168291.i.ph, align 4, !tbaa !65
  %i.azm = fsub fast float %i.azk, %i.azl
  %i.azn = tail call fast float @llvm.exp.f32(float %i.azm) ; 2 uses
  store float %i.azn, ptr %.2165292.i.ph, align 4, !tbaa !65
  %i.azo = load float, ptr %.2171290.i.ph, align 4, !tbaa !65
  %i.azp = fadd fast float %i.azo, %i.azn
  store float %i.azp, ptr %.2171290.i.ph, align 4, !tbaa !65
  %i.azq = getelementptr inbounds nuw i8, ptr %.2165292.i.ph, i64 4
  %i.azr = getelementptr inbounds nuw i8, ptr %.2168291.i.ph, i64 4
  %i.azs = getelementptr inbounds nuw i8, ptr %.2171290.i.ph, i64 4
  %i.azt = add nuw nsw i32 %.2174289.i.ph, 1
  br label %.lr.ph293.i.prol.loopexit

.lr.ph293.i.prol.loopexit:                        ; preds = %.lr.ph293.i.prol, %.lr.ph293.i.preheader571
  %.2165292.i.unr = phi ptr [ %.2165292.i.ph, %.lr.ph293.i.preheader571 ], [ %i.azq, %.lr.ph293.i.prol ]
  %.2168291.i.unr = phi ptr [ %.2168291.i.ph, %.lr.ph293.i.preheader571 ], [ %i.azr, %.lr.ph293.i.prol ]
  %.2171290.i.unr = phi ptr [ %.2171290.i.ph, %.lr.ph293.i.preheader571 ], [ %i.azs, %.lr.ph293.i.prol ]
  %.2174289.i.unr = phi i32 [ %.2174289.i.ph, %.lr.ph293.i.preheader571 ], [ %i.azt, %.lr.ph293.i.prol ]
  %i.azu = icmp eq i32 %4, %.neg
  br i1 %i.azu, label %._crit_edge294.i, label %.lr.ph293.i

.lr.ph284.i:                                      ; preds = %.preheader247.i, %.lr.ph284.i
  %.1164283.i = phi ptr [ %i.baz, %.lr.ph284.i ], [ %.0163.lcssa.i, %.preheader247.i ] ; 3 uses
  %.1167282.i = phi ptr [ %i.bba, %.lr.ph284.i ], [ %.0166.lcssa.i, %.preheader247.i ] ; 2 uses
  %.1170281.i = phi ptr [ %i.bbb, %.lr.ph284.i ], [ %.0169.lcssa.i, %.preheader247.i ] ; 3 uses
  %.1173280.i = phi i32 [ %i.bbc, %.lr.ph284.i ], [ %.0172.lcssa.i, %.preheader247.i ]
  %i.azv = load <4 x float>, ptr %.1164283.i, align 1, !tbaa !61
  %i.azw = load <4 x float>, ptr %.1167282.i, align 1, !tbaa !61
  %i.azx = load <4 x float>, ptr %.1170281.i, align 1, !tbaa !61
  %i.azy = fsub fast <4 x float> %i.azv, %i.azw
  %i.azz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.azy, <4 x float> splat (float f0x42B0C0A5))
  %i.baa = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.azz, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.bab = fmul fast <4 x float> %i.baa, splat (float f0x3FB8AA3B)
  %i.bac = fadd fast <4 x float> %i.bab, splat (float 5.000000e-01) ; 2 uses
  %i.bad = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bac)
  %i.bae = sitofp fast <4 x i32> %i.bad to <4 x float> ; 2 uses
  %i.baf = fcmp fast olt <4 x float> %i.bac, %i.bae
  %i.bag = select <4 x i1> %i.baf, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.bah = fsub fast <4 x float> %i.bae, %i.bag   ; 2 uses
  %i.bai = fneg fast <4 x float> %i.bah           ; 2 uses
  %i.baj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.bai, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.baa)
  %i.bak = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.bai, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.baj) ; 8 uses
  %i.bal = fmul fast <4 x float> %i.bak, %i.bak
  %i.bam = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bak, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.ban = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bam, <4 x float> nofpclass(nan inf) %i.bak, <4 x float> splat (float f0x3C088908))
  %i.bao = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ban, <4 x float> nofpclass(nan inf) %i.bak, <4 x float> splat (float f0x3D2AA9C1))
  %i.bap = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bao, <4 x float> nofpclass(nan inf) %i.bak, <4 x float> splat (float f0x3E2AAAAA))
  %i.baq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bap, <4 x float> nofpclass(nan inf) %i.bak, <4 x float> splat (float 5.000000e-01))
  %i.bar = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.baq, <4 x float> nofpclass(nan inf) %i.bal, <4 x float> nofpclass(nan inf) %i.bak)
  %i.bas = fadd fast <4 x float> %i.bar, splat (float 1.000000e+00)
  %i.bat = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bah)
  %i.bau = shl <4 x i32> %i.bat, splat (i32 23)
  %i.bav = add <4 x i32> %i.bau, splat (i32 1065353216)
  %i.baw = bitcast <4 x i32> %i.bav to <4 x float>
  %i.bax = fmul fast <4 x float> %i.bas, %i.baw   ; 2 uses
  store <4 x float> %i.bax, ptr %.1164283.i, align 1, !tbaa !61
  %i.bay = fadd fast <4 x float> %i.bax, %i.azx
  store <4 x float> %i.bay, ptr %.1170281.i, align 1, !tbaa !61
  %i.baz = getelementptr inbounds nuw i8, ptr %.1164283.i, i64 16 ; 2 uses
  %i.bba = getelementptr inbounds nuw i8, ptr %.1167282.i, i64 16 ; 2 uses
  %i.bbb = getelementptr inbounds nuw i8, ptr %.1170281.i, i64 16 ; 2 uses
  %i.bbc = add nuw nsw i32 %.1173280.i, 4         ; 3 uses
  %i.bbd = or disjoint i32 %i.bbc, 3
  %i.bbe = icmp slt i32 %i.bbd, %4
  br i1 %i.bbe, label %.lr.ph284.i, label %.preheader246.i, !llvm.loop !148

.lr.ph293.i:                                      ; preds = %.lr.ph293.i.prol.loopexit, %.lr.ph293.i
  %.2165292.i = phi ptr [ %i.bbu, %.lr.ph293.i ], [ %.2165292.i.unr, %.lr.ph293.i.prol.loopexit ] ; 4 uses
  %.2168291.i = phi ptr [ %i.bbv, %.lr.ph293.i ], [ %.2168291.i.unr, %.lr.ph293.i.prol.loopexit ] ; 3 uses
  %.2171290.i = phi ptr [ %i.bbw, %.lr.ph293.i ], [ %.2171290.i.unr, %.lr.ph293.i.prol.loopexit ] ; 4 uses
  %.2174289.i = phi i32 [ %i.bbx, %.lr.ph293.i ], [ %.2174289.i.unr, %.lr.ph293.i.prol.loopexit ]
  %i.bbf = load float, ptr %.2165292.i, align 4, !tbaa !65
  %i.bbg = load float, ptr %.2168291.i, align 4, !tbaa !65
  %i.bbh = fsub fast float %i.bbf, %i.bbg
  %i.bbi = tail call fast float @llvm.exp.f32(float %i.bbh) ; 2 uses
  store float %i.bbi, ptr %.2165292.i, align 4, !tbaa !65
  %i.bbj = load float, ptr %.2171290.i, align 4, !tbaa !65
  %i.bbk = fadd fast float %i.bbj, %i.bbi
  store float %i.bbk, ptr %.2171290.i, align 4, !tbaa !65
  %i.bbl = getelementptr inbounds nuw i8, ptr %.2165292.i, i64 4 ; 2 uses
  %i.bbm = getelementptr inbounds nuw i8, ptr %.2168291.i, i64 4
  %i.bbn = getelementptr inbounds nuw i8, ptr %.2171290.i, i64 4 ; 2 uses
  %i.bbo = load float, ptr %i.bbl, align 4, !tbaa !65
  %i.bbp = load float, ptr %i.bbm, align 4, !tbaa !65
  %i.bbq = fsub fast float %i.bbo, %i.bbp
  %i.bbr = tail call fast float @llvm.exp.f32(float %i.bbq) ; 2 uses
  store float %i.bbr, ptr %i.bbl, align 4, !tbaa !65
  %i.bbs = load float, ptr %i.bbn, align 4, !tbaa !65
  %i.bbt = fadd fast float %i.bbs, %i.bbr
  store float %i.bbt, ptr %i.bbn, align 4, !tbaa !65
  %i.bbu = getelementptr inbounds nuw i8, ptr %.2165292.i, i64 8
  %i.bbv = getelementptr inbounds nuw i8, ptr %.2168291.i, i64 8
  %i.bbw = getelementptr inbounds nuw i8, ptr %.2171290.i, i64 8
  %i.bbx = add nuw nsw i32 %.2174289.i, 2         ; 2 uses
  %exitcond358.not.i.1 = icmp eq i32 %i.bbx, %4
  br i1 %exitcond358.not.i.1, label %._crit_edge294.i, label %.lr.ph293.i, !llvm.loop !149

._crit_edge294.i:                                 ; preds = %.lr.ph293.i.prol.loopexit, %.lr.ph293.i, %middle.block432, %.preheader246.i
  %indvars.iv.next360.i = add nuw nsw i64 %indvars.iv359.i, 1 ; 2 uses
  %exitcond363.not.i = icmp eq i64 %indvars.iv.next360.i, %wide.trip.count.i82
  br i1 %exitcond363.not.i, label %.preheader245.i, label %.preheader248.i, !llvm.loop !150

.preheader244.loopexit.i.unr-lcssa:               ; preds = %.lr.ph299.i
  %i.bby = and i32 %i.awy, 8
  %lcmp.mod604.not.not = icmp eq i32 %i.bby, 0
  br i1 %lcmp.mod604.not.not, label %.lr.ph299.i.epil.preheader, label %.preheader244.loopexit.i

.lr.ph299.i.epil.preheader:                       ; preds = %.preheader244.loopexit.i.unr-lcssa, %.lr.ph299.i.preheader
  %.0159297.i.epil.init = phi ptr [ %6, %.lr.ph299.i.preheader ], [ %i.bct, %.preheader244.loopexit.i.unr-lcssa ] ; 3 uses
  %lcmp.mod606 = trunc i32 %i.axa to i1
  tail call void @llvm.assume(i1 %lcmp.mod606)
  %i.bbz = load <8 x float>, ptr %.0159297.i.epil.init, align 1, !tbaa !61 ; 2 uses
  %i.bca = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.rcp.ps.256(<8 x float> nofpclass(nan inf) %i.bbz) ; 2 uses
  %i.bcb = fneg fast <8 x float> %i.bbz
  %i.bcc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.bcb, <8 x float> nofpclass(nan inf) %i.bca, <8 x float> nofpclass(nan inf) splat (float 2.000000e+00))
  %i.bcd = fmul fast <8 x float> %i.bcc, %i.bca
  store <8 x float> %i.bcd, ptr %.0159297.i.epil.init, align 1, !tbaa !61
  %i.bce = getelementptr inbounds nuw i8, ptr %.0159297.i.epil.init, i64 32
  br label %.preheader244.loopexit.i

.preheader244.loopexit.i:                         ; preds = %.preheader244.loopexit.i.unr-lcssa, %.lr.ph299.i.epil.preheader
  %.lcssa570 = phi ptr [ %i.bct, %.preheader244.loopexit.i.unr-lcssa ], [ %i.bce, %.lr.ph299.i.epil.preheader ]
  %i.bcf = and i32 %4, 2147483640
  br label %.preheader244.i

.preheader244.i:                                  ; preds = %.preheader244.loopexit.i, %.preheader245.i
  %.0159.lcssa.i = phi ptr [ %6, %.preheader245.i ], [ %.lcssa570, %.preheader244.loopexit.i ] ; 2 uses
  %.0156.lcssa.i = phi i32 [ 0, %.preheader245.i ], [ %i.bcf, %.preheader244.loopexit.i ] ; 3 uses
  %i.bcg = or disjoint i32 %.0156.lcssa.i, 3
  %i.bch = icmp slt i32 %i.bcg, %4
  br i1 %i.bch, label %.lr.ph304.i, label %.preheader243.i

.lr.ph299.i:                                      ; preds = %.lr.ph299.i, %.lr.ph299.i.preheader.new
  %.0159297.i = phi ptr [ %6, %.lr.ph299.i.preheader.new ], [ %i.bct, %.lr.ph299.i ] ; 4 uses
  %niter608 = phi i32 [ 0, %.lr.ph299.i.preheader.new ], [ %niter608.next.1, %.lr.ph299.i ]
  %i.bci = load <8 x float>, ptr %.0159297.i, align 1, !tbaa !61 ; 2 uses
  %i.bcj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.rcp.ps.256(<8 x float> nofpclass(nan inf) %i.bci) ; 2 uses
  %i.bck = fneg fast <8 x float> %i.bci
end_hunk_0
begin_hunk_1_@_ZN4ncnnL26softmax_bf16s_sse_dispatchEPtiimiPfS1_:bb.a
  %i.lk = getelementptr inbounds nuw i8, ptr %.073148.i.epil.init, i64 32
  br label %.preheader130.loopexit.i

.preheader130.loopexit.i:                         ; preds = %.preheader130.loopexit.i.unr-lcssa, %.lr.ph150.i72.epil.preheader
  %.lcssa378 = phi ptr [ %i.lz, %.preheader130.loopexit.i.unr-lcssa ], [ %i.lk, %.lr.ph150.i72.epil.preheader ]
  %i.ll = and i32 %4, 2147483640
  br label %.preheader130.i

.preheader130.i:                                  ; preds = %.preheader130.loopexit.i, %.preheader131.i
  %.073.lcssa.i65 = phi ptr [ %6, %.preheader131.i ], [ %.lcssa378, %.preheader130.loopexit.i ] ; 2 uses
  %.072.lcssa.i66 = phi i32 [ 0, %.preheader131.i ], [ %i.ll, %.preheader130.loopexit.i ] ; 3 uses
  %i.lm = or disjoint i32 %.072.lcssa.i66, 3
  %i.ln = icmp slt i32 %i.lm, %4
  br i1 %i.ln, label %.lr.ph154.i, label %.preheader129.i

.lr.ph150.i72:                                    ; preds = %.lr.ph150.i72, %.lr.ph150.i72.preheader.new
  %.073148.i = phi ptr [ %6, %.lr.ph150.i72.preheader.new ], [ %i.lz, %.lr.ph150.i72 ] ; 4 uses
  %niter437 = phi i32 [ 0, %.lr.ph150.i72.preheader.new ], [ %niter437.next.1, %.lr.ph150.i72 ]
  %i.lo = load <8 x float>, ptr %.073148.i, align 1, !tbaa !61 ; 2 uses
  %i.lp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.rcp.ps.256(<8 x float> nofpclass(nan inf) %i.lo) ; 2 uses
  %i.lq = fneg fast <8 x float> %i.lo
  %i.lr = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.lq, <8 x float> nofpclass(nan inf) %i.lp, <8 x float> nofpclass(nan inf) splat (float 2.000000e+00))
  %i.ls = fmul fast <8 x float> %i.lr, %i.lp
  store <8 x float> %i.ls, ptr %.073148.i, align 1, !tbaa !61
  %i.lt = getelementptr inbounds nuw i8, ptr %.073148.i, i64 32 ; 2 uses
  %i.lu = load <8 x float>, ptr %i.lt, align 1, !tbaa !61 ; 2 uses
  %i.lv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.rcp.ps.256(<8 x float> nofpclass(nan inf) %i.lu) ; 2 uses
  %i.lw = fneg fast <8 x float> %i.lu
  %i.lx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.lw, <8 x float> nofpclass(nan inf) %i.lv, <8 x float> nofpclass(nan inf) splat (float 2.000000e+00))
  %i.ly = fmul fast <8 x float> %i.lx, %i.lv
  store <8 x float> %i.ly, ptr %i.lt, align 1, !tbaa !61
  %i.lz = getelementptr inbounds nuw i8, ptr %.073148.i, i64 64 ; 3 uses
  %niter437.next.1 = add i32 %niter437, 2         ; 2 uses
  %niter437.ncmp.1.not = icmp eq i32 %niter437.next.1, %unroll_iter436
  br i1 %niter437.ncmp.1.not, label %.preheader130.loopexit.i.unr-lcssa, label %.lr.ph150.i72, !llvm.loop !256

.preheader129.i:                                  ; preds = %.lr.ph154.i, %.preheader130.i
  %.174.lcssa.i67 = phi ptr [ %.073.lcssa.i65, %.preheader130.i ], [ %i.mr, %.lr.ph154.i ] ; 3 uses
  %.1.lcssa.i68 = phi i32 [ %.072.lcssa.i66, %.preheader130.i ], [ %i.ms, %.lr.ph154.i ] ; 4 uses
  %i.ma = icmp slt i32 %.1.lcssa.i68, %4
  br i1 %i.ma, label %.lr.ph159.i.preheader, label %.preheader.i69

.lr.ph159.i.preheader:                            ; preds = %.preheader129.i
  %i.mb = xor i32 %.1.lcssa.i68, -1
  %i.mc = add i32 %4, %i.mb                       ; 2 uses
  %i.md = zext i32 %i.mc to i64
  %i.me = add nuw nsw i64 %i.md, 1                ; 2 uses
  %min.iters.check346 = icmp ult i32 %i.mc, 7
  br i1 %min.iters.check346, label %.lr.ph159.i.preheader375, label %vector.ph347

vector.ph347:                                     ; preds = %.lr.ph159.i.preheader
  %n.vec348 = and i64 %i.me, 8589934584           ; 4 uses
  %i.mf = trunc i64 %n.vec348 to i32
  %i.mg = add i32 %.1.lcssa.i68, %i.mf
  %i.mh = shl nuw nsw i64 %n.vec348, 2
  %i.mi = getelementptr i8, ptr %.174.lcssa.i67, i64 %i.mh
  br label %vector.body349

vector.body349:                                   ; preds = %vector.body349, %vector.ph347
  %index350 = phi i64 [ 0, %vector.ph347 ], [ %index.next353, %vector.body349 ] ; 2 uses
  %i.mj = shl i64 %index350, 2
  %next.gep351 = getelementptr i8, ptr %.174.lcssa.i67, i64 %i.mj ; 2 uses
  %wide.load352 = load <8 x float>, ptr %next.gep351, align 4, !tbaa !65
  %i.mk = fdiv fast <8 x float> splat (float 1.000000e+00), %wide.load352
  store <8 x float> %i.mk, ptr %next.gep351, align 4, !tbaa !65
  %index.next353 = add nuw i64 %index350, 8       ; 2 uses
  %i.ml = icmp eq i64 %index.next353, %n.vec348
  br i1 %i.ml, label %middle.block354, label %vector.body349, !llvm.loop !257

middle.block354:                                  ; preds = %vector.body349
  %cmp.n355 = icmp eq i64 %i.me, %n.vec348
  br i1 %cmp.n355, label %.preheader.i69, label %.lr.ph159.i.preheader375

.lr.ph159.i.preheader375:                         ; preds = %.lr.ph159.i.preheader, %middle.block354
  %.2158.i.ph = phi i32 [ %.1.lcssa.i68, %.lr.ph159.i.preheader ], [ %i.mg, %middle.block354 ]
  %.275157.i.ph = phi ptr [ %.174.lcssa.i67, %.lr.ph159.i.preheader ], [ %i.mi, %middle.block354 ]
  br label %.lr.ph159.i

.lr.ph154.i:                                      ; preds = %.preheader130.i, %.lr.ph154.i
  %.1153.i = phi i32 [ %i.ms, %.lr.ph154.i ], [ %.072.lcssa.i66, %.preheader130.i ]
  %.174152.i = phi ptr [ %i.mr, %.lr.ph154.i ], [ %.073.lcssa.i65, %.preheader130.i ] ; 3 uses
  %i.mm = load <4 x float>, ptr %.174152.i, align 1, !tbaa !61 ; 2 uses
  %i.mn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> nofpclass(nan inf) %i.mm) ; 2 uses
  %i.mo = fneg fast <4 x float> %i.mm
  %i.mp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.mo, <4 x float> nofpclass(nan inf) %i.mn, <4 x float> nofpclass(nan inf) splat (float 2.000000e+00))
  %i.mq = fmul fast <4 x float> %i.mp, %i.mn
  store <4 x float> %i.mq, ptr %.174152.i, align 1, !tbaa !61
  %i.mr = getelementptr inbounds nuw i8, ptr %.174152.i, i64 16 ; 2 uses
  %i.ms = add nuw nsw i32 %.1153.i, 4             ; 3 uses
  %i.mt = or disjoint i32 %i.ms, 3
  %i.mu = icmp slt i32 %i.mt, %4
  br i1 %i.mu, label %.lr.ph154.i, label %.preheader129.i, !llvm.loop !258

.preheader.i69:                                   ; preds = %.lr.ph159.i, %middle.block354, %.preheader129.i
  br i1 %or.cond.i64, label %.lr.ph164.preheader.i, label %_ZN4ncnnL23softmax_bf16s_pack8_sseEPtimiPfS1_.exit

.lr.ph164.preheader.i:                            ; preds = %.preheader.i69
  %wide.trip.count187.i = zext nneg i32 %1 to i64
  %xtraiter439 = and i32 %4, 1
  %i.mv = icmp eq i32 %4, 1
  %unroll_iter443 = and i32 %4, 2147483646
  %lcmp.mod441.not = icmp eq i32 %xtraiter439, 0
  %lcmp.mod442 = trunc i32 %4 to i1
  br label %.lr.ph164.i

.lr.ph159.i:                                      ; preds = %.lr.ph159.i.preheader375, %.lr.ph159.i
  %.2158.i = phi i32 [ %i.mz, %.lr.ph159.i ], [ %.2158.i.ph, %.lr.ph159.i.preheader375 ]
  %.275157.i = phi ptr [ %i.my, %.lr.ph159.i ], [ %.275157.i.ph, %.lr.ph159.i.preheader375 ] ; 3 uses
  %i.mw = load float, ptr %.275157.i, align 4, !tbaa !65
  %i.mx = fdiv fast float 1.000000e+00, %i.mw
  store float %i.mx, ptr %.275157.i, align 4, !tbaa !65
  %i.my = getelementptr inbounds nuw i8, ptr %.275157.i, i64 4
  %i.mz = add nuw nsw i32 %.2158.i, 1             ; 2 uses
  %exitcond182.not.i71 = icmp eq i32 %i.mz, %4
  br i1 %exitcond182.not.i71, label %.preheader.i69, label %.lr.ph159.i, !llvm.loop !259

.lr.ph164.i:                                      ; preds = %._crit_edge165.i, %.lr.ph164.preheader.i
  %indvars.iv184.i = phi i64 [ 0, %.lr.ph164.preheader.i ], [ %indvars.iv.next185.i, %._crit_edge165.i ] ; 2 uses
  %i.na = mul i64 %indvars.iv184.i, %3
  %i.nb = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.na ; 2 uses
  br i1 %i.mv, label %.epil.preheader438, label %.lr.ph164.i.new

.lr.ph164.i.new:                                  ; preds = %.lr.ph164.i, %.lr.ph164.i.new
  %.069161.i = phi ptr [ %i.oh, %.lr.ph164.i.new ], [ %6, %.lr.ph164.i ] ; 3 uses
  %.070160.i = phi ptr [ %i.og, %.lr.ph164.i.new ], [ %i.nb, %.lr.ph164.i ] ; 4 uses
  %niter444 = phi i32 [ %niter444.next.1, %.lr.ph164.i.new ], [ 0, %.lr.ph164.i ]
  %i.nc = load i64, ptr %.070160.i, align 1, !tbaa !61
  %i.nd = insertelement <2 x i64> poison, i64 %i.nc, i64 0
  %i.ne = bitcast <2 x i64> %i.nd to <8 x i16>
  %i.nf = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ne, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ng = bitcast <8 x i16> %i.nf to <4 x float>
  %i.nh = load float, ptr %.069161.i, align 4, !tbaa !65
  %i.ni = insertelement <4 x float> poison, float %i.nh, i64 0
  %i.nj = shufflevector <4 x float> %i.ni, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nk = fmul fast <4 x float> %i.nj, %i.ng
  %i.nl = bitcast <4 x float> %i.nk to <4 x i32>
  %i.nm = lshr <4 x i32> %i.nl, splat (i32 16)
  %i.nn = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.nm, <4 x i32> poison)
  %i.no = bitcast <8 x i16> %i.nn to <2 x i64>
  %i.np = extractelement <2 x i64> %i.no, i64 0
  store i64 %i.np, ptr %.070160.i, align 1, !tbaa !61
  %i.nq = getelementptr inbounds nuw i8, ptr %.070160.i, i64 8 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %.069161.i, i64 4
  %i.ns = load i64, ptr %i.nq, align 1, !tbaa !61
  %i.nt = insertelement <2 x i64> poison, i64 %i.ns, i64 0
  %i.nu = bitcast <2 x i64> %i.nt to <8 x i16>
  %i.nv = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.nu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.nw = bitcast <8 x i16> %i.nv to <4 x float>
  %i.nx = load float, ptr %i.nr, align 4, !tbaa !65
  %i.ny = insertelement <4 x float> poison, float %i.nx, i64 0
  %i.nz = shufflevector <4 x float> %i.ny, <4 x float> poison, <4 x i32> zeroinitializer
  %i.oa = fmul fast <4 x float> %i.nz, %i.nw
  %i.ob = bitcast <4 x float> %i.oa to <4 x i32>
  %i.oc = lshr <4 x i32> %i.ob, splat (i32 16)
  %i.od = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.oc, <4 x i32> poison)
  %i.oe = bitcast <8 x i16> %i.od to <2 x i64>
  %i.of = extractelement <2 x i64> %i.oe, i64 0
  store i64 %i.of, ptr %i.nq, align 1, !tbaa !61
  %i.og = getelementptr inbounds nuw i8, ptr %.070160.i, i64 16 ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %.069161.i, i64 8 ; 2 uses
  %niter444.next.1 = add nuw nsw i32 %niter444, 2 ; 2 uses
  %niter444.ncmp.1 = icmp eq i32 %niter444.next.1, %unroll_iter443
  br i1 %niter444.ncmp.1, label %._crit_edge165.i.unr-lcssa, label %.lr.ph164.i.new, !llvm.loop !260

._crit_edge165.i.unr-lcssa:                       ; preds = %.lr.ph164.i.new
  br i1 %lcmp.mod441.not, label %._crit_edge165.i, label %.epil.preheader438

.epil.preheader438:                               ; preds = %._crit_edge165.i.unr-lcssa, %.lr.ph164.i
  %.069161.i.epil.init = phi ptr [ %6, %.lr.ph164.i ], [ %i.oh, %._crit_edge165.i.unr-lcssa ]
  %.070160.i.epil.init = phi ptr [ %i.nb, %.lr.ph164.i ], [ %i.og, %._crit_edge165.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod442)
  %i.oi = load i64, ptr %.070160.i.epil.init, align 1, !tbaa !61
  %i.oj = insertelement <2 x i64> poison, i64 %i.oi, i64 0
  %i.ok = bitcast <2 x i64> %i.oj to <8 x i16>
  %i.ol = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ok, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.om = bitcast <8 x i16> %i.ol to <4 x float>
  %i.on = load float, ptr %.069161.i.epil.init, align 4, !tbaa !65
  %i.oo = insertelement <4 x float> poison, float %i.on, i64 0
  %i.op = shufflevector <4 x float> %i.oo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.oq = fmul fast <4 x float> %i.op, %i.om
  %i.or = bitcast <4 x float> %i.oq to <4 x i32>
  %i.os = lshr <4 x i32> %i.or, splat (i32 16)
  %i.ot = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.os, <4 x i32> poison)
  %i.ou = bitcast <8 x i16> %i.ot to <2 x i64>
  %i.ov = extractelement <2 x i64> %i.ou, i64 0
  store i64 %i.ov, ptr %.070160.i.epil.init, align 1, !tbaa !61
  br label %._crit_edge165.i

._crit_edge165.i:                                 ; preds = %._crit_edge165.i.unr-lcssa, %.epil.preheader438
  %indvars.iv.next185.i = add nuw nsw i64 %indvars.iv184.i, 1 ; 2 uses
  %exitcond188.not.i70 = icmp eq i64 %indvars.iv.next185.i, %wide.trip.count187.i
  br i1 %exitcond188.not.i70, label %_ZN4ncnnL23softmax_bf16s_pack8_sseEPtimiPfS1_.exit, label %.lr.ph164.i, !llvm.loop !261

bb.h:                                             ; preds = %._crit_edge
  %i.ow = icmp sgt i32 %1, 0                      ; 2 uses
  br i1 %i.ow, label %.lr.ph283.i, label %.preheader259.i

.lr.ph283.i:                                      ; preds = %bb.h
  %i.ox = and i32 %4, -8                          ; 3 uses
  %wide.trip.count.i83 = zext nneg i32 %1 to i64  ; 2 uses
  %i.oy = add i32 %4, -8                          ; 2 uses
  %i.oz = lshr i32 %i.oy, 3                       ; 2 uses
  %i.pa = add nuw nsw i32 %i.oz, 1                ; 2 uses
  %i.pb = icmp eq i32 %i.oz, 0
  %unroll_iter414 = and i32 %i.pa, 1073741822
  %i.pc = and i32 %i.oy, 8
  %lcmp.mod410.not.not = icmp eq i32 %i.pc, 0
  %lcmp.mod413 = trunc i32 %i.pa to i1
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge.i86, %.lr.ph283.i
  %indvars.iv.i84 = phi i64 [ 0, %.lr.ph283.i ], [ %indvars.iv.next.i87, %._crit_edge.i86 ] ; 2 uses
  %i.pd = mul i64 %indvars.iv.i84, %3
  %i.pe = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.pd ; 3 uses
  br i1 %i.a, label %.lr.ph.i92.preheader, label %.preheader264.i

.lr.ph.i92.preheader:                             ; preds = %bb.i
  br i1 %i.pb, label %.lr.ph.i92.epil.preheader, label %.lr.ph.i92

.preheader264.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i92
  br i1 %lcmp.mod410.not.not, label %.lr.ph.i92.epil.preheader, label %.preheader264.i

.lr.ph.i92.epil.preheader:                        ; preds = %.preheader264.i.loopexit.unr-lcssa, %.lr.ph.i92.preheader
  %.0136267.i.epil.init = phi ptr [ %i.pe, %.lr.ph.i92.preheader ], [ %i.qg, %.preheader264.i.loopexit.unr-lcssa ] ; 2 uses
  %.0153266.i.epil.init = phi ptr [ %5, %.lr.ph.i92.preheader ], [ %i.qh, %.preheader264.i.loopexit.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod413)
  %i.pf = load <8 x i16>, ptr %.0136267.i.epil.init, align 1, !tbaa !61 ; 2 uses
  %i.pg = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.pf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ph = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.pf, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.pi = shufflevector <8 x i16> %i.pg, <8 x i16> %i.ph, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.pj = bitcast <16 x i16> %i.pi to <8 x float>
  %i.pk = load <8 x float>, ptr %.0153266.i.epil.init, align 1, !tbaa !61
  %i.pl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.pk, <8 x float> nofpclass(nan inf) %i.pj)
  store <8 x float> %i.pl, ptr %.0153266.i.epil.init, align 1, !tbaa !61
  %i.pm = getelementptr inbounds nuw i8, ptr %.0136267.i.epil.init, i64 16
  %i.pn = getelementptr inbounds nuw i8, ptr %.0153266.i.epil.init, i64 32
  br label %.preheader264.i

.preheader264.i:                                  ; preds = %.lr.ph.i92.epil.preheader, %.preheader264.i.loopexit.unr-lcssa, %bb.i
  %.0156.lcssa.i = phi i32 [ 0, %bb.i ], [ %i.ox, %.preheader264.i.loopexit.unr-lcssa ], [ %i.ox, %.lr.ph.i92.epil.preheader ] ; 3 uses
  %.0153.lcssa.i = phi ptr [ %5, %bb.i ], [ %i.qh, %.preheader264.i.loopexit.unr-lcssa ], [ %i.pn, %.lr.ph.i92.epil.preheader ] ; 2 uses
  %.0136.lcssa.i = phi ptr [ %i.pe, %bb.i ], [ %i.qg, %.preheader264.i.loopexit.unr-lcssa ], [ %i.pm, %.lr.ph.i92.epil.preheader ] ; 2 uses
  %i.po = or disjoint i32 %.0156.lcssa.i, 3
  %i.pp = icmp slt i32 %i.po, %4
  br i1 %i.pp, label %.lr.ph273.i, label %.preheader263.i

.lr.ph.i92:                                       ; preds = %.lr.ph.i92.preheader, %.lr.ph.i92
  %.0136267.i = phi ptr [ %i.qg, %.lr.ph.i92 ], [ %i.pe, %.lr.ph.i92.preheader ] ; 3 uses
  %.0153266.i = phi ptr [ %i.qh, %.lr.ph.i92 ], [ %5, %.lr.ph.i92.preheader ] ; 4 uses
  %niter415 = phi i32 [ %niter415.next.1, %.lr.ph.i92 ], [ 0, %.lr.ph.i92.preheader ]
  %i.pq = load <8 x i16>, ptr %.0136267.i, align 1, !tbaa !61 ; 2 uses
  %i.pr = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.pq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ps = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.pq, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.pt = shufflevector <8 x i16> %i.pr, <8 x i16> %i.ps, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.pu = bitcast <16 x i16> %i.pt to <8 x float>
  %i.pv = load <8 x float>, ptr %.0153266.i, align 1, !tbaa !61
  %i.pw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.pv, <8 x float> nofpclass(nan inf) %i.pu)
  store <8 x float> %i.pw, ptr %.0153266.i, align 1, !tbaa !61
  %i.px = getelementptr inbounds nuw i8, ptr %.0136267.i, i64 16
  %i.py = getelementptr inbounds nuw i8, ptr %.0153266.i, i64 32 ; 2 uses
  %i.pz = load <8 x i16>, ptr %i.px, align 1, !tbaa !61 ; 2 uses
  %i.qa = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.pz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.qb = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.pz, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.qc = shufflevector <8 x i16> %i.qa, <8 x i16> %i.qb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.qd = bitcast <16 x i16> %i.qc to <8 x float>
  %i.qe = load <8 x float>, ptr %i.py, align 1, !tbaa !61
  %i.qf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.qe, <8 x float> nofpclass(nan inf) %i.qd)
  store <8 x float> %i.qf, ptr %i.py, align 1, !tbaa !61
  %i.qg = getelementptr inbounds nuw i8, ptr %.0136267.i, i64 32 ; 3 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %.0153266.i, i64 64 ; 3 uses
  %niter415.next.1 = add i32 %niter415, 2         ; 2 uses
  %niter415.ncmp.1.not = icmp eq i32 %niter415.next.1, %unroll_iter414
  br i1 %niter415.ncmp.1.not, label %.preheader264.i.loopexit.unr-lcssa, label %.lr.ph.i92, !llvm.loop !262

.preheader263.i:                                  ; preds = %.lr.ph273.i, %.preheader264.i
  %.1157.lcssa.i = phi i32 [ %.0156.lcssa.i, %.preheader264.i ], [ %i.ss, %.lr.ph273.i ] ; 5 uses
  %.1154.lcssa.i = phi ptr [ %.0153.lcssa.i, %.preheader264.i ], [ %i.sr, %.lr.ph273.i ] ; 5 uses
  %.1.lcssa.i85 = phi ptr [ %.0136.lcssa.i, %.preheader264.i ], [ %i.sq, %.lr.ph273.i ] ; 5 uses
  %i.qi = icmp slt i32 %.1157.lcssa.i, %4
  br i1 %i.qi, label %iter.check275, label %._crit_edge.i86

iter.check275:                                    ; preds = %.preheader263.i
  %7 = xor i32 %.1157.lcssa.i, -1
  %8 = add i32 %4, %7                             ; 3 uses
  %i.qj = zext i32 %8 to i64
  %i.qk = add nuw nsw i64 %i.qj, 1                ; 5 uses
  %min.iters.check256 = icmp ult i32 %8, 3
  br i1 %min.iters.check256, label %.lr.ph280.i.preheader, label %vector.main.loop.iter.check257

vector.main.loop.iter.check257:                   ; preds = %iter.check275
  %min.iters.check258 = icmp ult i32 %8, 31
  br i1 %min.iters.check258, label %vec.epilog.ph279, label %vector.ph259

vector.ph259:                                     ; preds = %vector.main.loop.iter.check257
  %i.ql = and i64 %i.qk, 28
  %n.vec260 = and i64 %i.qk, 8589934560           ; 6 uses
  %i.qm = shl nuw nsw i64 %n.vec260, 1
  %i.qn = getelementptr i8, ptr %.1.lcssa.i85, i64 %i.qm
  %i.qo = shl nuw nsw i64 %n.vec260, 2
  %i.qp = getelementptr i8, ptr %.1154.lcssa.i, i64 %i.qo
  %i.qq = trunc i64 %n.vec260 to i32
  %i.qr = add i32 %.1157.lcssa.i, %i.qq
  br label %vector.body261

vector.body261:                                   ; preds = %vector.ph259, %vector.body261
  %index262 = phi i64 [ 0, %vector.ph259 ], [ %index.next272, %vector.body261 ] ; 3 uses
  %i.qs = shl i64 %index262, 1
  %next.gep263 = getelementptr i8, ptr %.1.lcssa.i85, i64 %i.qs ; 4 uses
  %i.qt = shl i64 %index262, 2
  %next.gep264 = getelementptr i8, ptr %.1154.lcssa.i, i64 %i.qt ; 5 uses
  %i.qu = getelementptr i8, ptr %next.gep263, i64 16
  %i.qv = getelementptr i8, ptr %next.gep263, i64 32
  %i.qw = getelementptr i8, ptr %next.gep263, i64 48
  %wide.load = load <8 x i16>, ptr %next.gep263, align 2, !tbaa !74
  %wide.load265 = load <8 x i16>, ptr %i.qu, align 2, !tbaa !74
  %wide.load266 = load <8 x i16>, ptr %i.qv, align 2, !tbaa !74
  %wide.load267 = load <8 x i16>, ptr %i.qw, align 2, !tbaa !74
  %i.qx = zext <8 x i16> %wide.load to <8 x i32>
  %i.qy = zext <8 x i16> %wide.load265 to <8 x i32>
  %i.qz = zext <8 x i16> %wide.load266 to <8 x i32>
  %i.ra = zext <8 x i16> %wide.load267 to <8 x i32>
  %i.rb = shl nuw <8 x i32> %i.qx, splat (i32 16)
  %i.rc = shl nuw <8 x i32> %i.qy, splat (i32 16)
  %i.rd = shl nuw <8 x i32> %i.qz, splat (i32 16)
  %i.re = shl nuw <8 x i32> %i.ra, splat (i32 16)
  %i.rf = bitcast <8 x i32> %i.rb to <8 x float>  ; 2 uses
  %i.rg = bitcast <8 x i32> %i.rc to <8 x float>  ; 2 uses
  %i.rh = bitcast <8 x i32> %i.rd to <8 x float>  ; 2 uses
  %i.ri = bitcast <8 x i32> %i.re to <8 x float>  ; 2 uses
  %i.rj = getelementptr i8, ptr %next.gep264, i64 32 ; 2 uses
  %i.rk = getelementptr i8, ptr %next.gep264, i64 64 ; 2 uses
  %i.rl = getelementptr i8, ptr %next.gep264, i64 96 ; 2 uses
  %wide.load268 = load <8 x float>, ptr %next.gep264, align 4, !tbaa !65 ; 2 uses
  %wide.load269 = load <8 x float>, ptr %i.rj, align 4, !tbaa !65 ; 2 uses
  %wide.load270 = load <8 x float>, ptr %i.rk, align 4, !tbaa !65 ; 2 uses
  %wide.load271 = load <8 x float>, ptr %i.rl, align 4, !tbaa !65 ; 2 uses
  %i.rm = fcmp fast olt <8 x float> %wide.load268, %i.rf
  %i.rn = fcmp fast olt <8 x float> %wide.load269, %i.rg
  %i.ro = fcmp fast olt <8 x float> %wide.load270, %i.rh
  %i.rp = fcmp fast olt <8 x float> %wide.load271, %i.ri
  %i.rq = select <8 x i1> %i.rm, <8 x float> %i.rf, <8 x float> %wide.load268
  %i.rr = select <8 x i1> %i.rn, <8 x float> %i.rg, <8 x float> %wide.load269
  %i.rs = select <8 x i1> %i.ro, <8 x float> %i.rh, <8 x float> %wide.load270
  %i.rt = select <8 x i1> %i.rp, <8 x float> %i.ri, <8 x float> %wide.load271
  store <8 x float> %i.rq, ptr %next.gep264, align 4, !tbaa !65
  store <8 x float> %i.rr, ptr %i.rj, align 4, !tbaa !65
  store <8 x float> %i.rs, ptr %i.rk, align 4, !tbaa !65
  store <8 x float> %i.rt, ptr %i.rl, align 4, !tbaa !65
  %index.next272 = add nuw i64 %index262, 32      ; 2 uses
  %i.ru = icmp eq i64 %index.next272, %n.vec260
  br i1 %i.ru, label %middle.block273, label %vector.body261, !llvm.loop !263

middle.block273:                                  ; preds = %vector.body261
  %cmp.n274 = icmp eq i64 %i.qk, %n.vec260
  br i1 %cmp.n274, label %._crit_edge.i86, label %vec.epilog.iter.check276

vec.epilog.iter.check276:                         ; preds = %middle.block273
  %min.epilog.iters.check278 = icmp eq i64 %i.ql, 0
  br i1 %min.epilog.iters.check278, label %.lr.ph280.i.preheader, label %vec.epilog.ph279, !prof !69

vec.epilog.ph279:                                 ; preds = %vector.main.loop.iter.check257, %vec.epilog.iter.check276
  %vec.epilog.resume.val280 = phi i64 [ %n.vec260, %vec.epilog.iter.check276 ], [ 0, %vector.main.loop.iter.check257 ]
  %n.vec281 = and i64 %i.qk, 8589934588           ; 5 uses
  %i.rv = shl nuw nsw i64 %n.vec281, 1
  %i.rw = getelementptr i8, ptr %.1.lcssa.i85, i64 %i.rv
  %i.rx = shl nuw nsw i64 %n.vec281, 2
  %i.ry = getelementptr i8, ptr %.1154.lcssa.i, i64 %i.rx
  %i.rz = trunc i64 %n.vec281 to i32
  %i.sa = add i32 %.1157.lcssa.i, %i.rz
  br label %vec.epilog.vector.body282

vec.epilog.vector.body282:                        ; preds = %vec.epilog.vector.body282, %vec.epilog.ph279
  %index283 = phi i64 [ %vec.epilog.resume.val280, %vec.epilog.ph279 ], [ %index.next288, %vec.epilog.vector.body282 ] ; 3 uses
  %i.sb = shl i64 %index283, 1
  %next.gep284 = getelementptr i8, ptr %.1.lcssa.i85, i64 %i.sb
  %i.sc = shl i64 %index283, 2
  %next.gep285 = getelementptr i8, ptr %.1154.lcssa.i, i64 %i.sc ; 2 uses
  %wide.load286 = load <4 x i16>, ptr %next.gep284, align 2, !tbaa !74
  %i.sd = zext <4 x i16> %wide.load286 to <4 x i32>
  %i.se = shl nuw <4 x i32> %i.sd, splat (i32 16)
  %i.sf = bitcast <4 x i32> %i.se to <4 x float>  ; 2 uses
  %wide.load287 = load <4 x float>, ptr %next.gep285, align 4, !tbaa !65 ; 2 uses
  %i.sg = fcmp fast olt <4 x float> %wide.load287, %i.sf
  %i.sh = select <4 x i1> %i.sg, <4 x float> %i.sf, <4 x float> %wide.load287
  store <4 x float> %i.sh, ptr %next.gep285, align 4, !tbaa !65
  %index.next288 = add nuw i64 %index283, 4       ; 2 uses
  %i.si = icmp eq i64 %index.next288, %n.vec281
  br i1 %i.si, label %vec.epilog.middle.block289, label %vec.epilog.vector.body282, !llvm.loop !264

vec.epilog.middle.block289:                       ; preds = %vec.epilog.vector.body282
  %cmp.n290 = icmp eq i64 %i.qk, %n.vec281
  br i1 %cmp.n290, label %._crit_edge.i86, label %.lr.ph280.i.preheader

.lr.ph280.i.preheader:                            ; preds = %iter.check275, %vec.epilog.iter.check276, %vec.epilog.middle.block289
  %.2279.i.ph = phi ptr [ %.1.lcssa.i85, %iter.check275 ], [ %i.qn, %vec.epilog.iter.check276 ], [ %i.rw, %vec.epilog.middle.block289 ]
  %.2155278.i.ph = phi ptr [ %.1154.lcssa.i, %iter.check275 ], [ %i.qp, %vec.epilog.iter.check276 ], [ %i.ry, %vec.epilog.middle.block289 ]
  %.2158277.i.ph = phi i32 [ %.1157.lcssa.i, %iter.check275 ], [ %i.qr, %vec.epilog.iter.check276 ], [ %i.sa, %vec.epilog.middle.block289 ]
  br label %.lr.ph280.i

.lr.ph273.i:                                      ; preds = %.preheader264.i, %.lr.ph273.i
  %.1272.i = phi ptr [ %i.sq, %.lr.ph273.i ], [ %.0136.lcssa.i, %.preheader264.i ] ; 2 uses
  %.1154271.i = phi ptr [ %i.sr, %.lr.ph273.i ], [ %.0153.lcssa.i, %.preheader264.i ] ; 3 uses
  %.1157270.i = phi i32 [ %i.ss, %.lr.ph273.i ], [ %.0156.lcssa.i, %.preheader264.i ]
  %i.sj = load i64, ptr %.1272.i, align 1, !tbaa !61
  %i.sk = insertelement <2 x i64> poison, i64 %i.sj, i64 0
  %i.sl = bitcast <2 x i64> %i.sk to <8 x i16>
  %i.sm = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.sl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.sn = bitcast <8 x i16> %i.sm to <4 x float>
  %i.so = load <4 x float>, ptr %.1154271.i, align 1, !tbaa !61
  %i.sp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.so, <4 x float> nofpclass(nan inf) %i.sn)
  store <4 x float> %i.sp, ptr %.1154271.i, align 1, !tbaa !61
  %i.sq = getelementptr inbounds nuw i8, ptr %.1272.i, i64 8 ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %.1154271.i, i64 16 ; 2 uses
  %i.ss = add nuw nsw i32 %.1157270.i, 4          ; 3 uses
  %i.st = or disjoint i32 %i.ss, 3
  %i.su = icmp slt i32 %i.st, %4
  br i1 %i.su, label %.lr.ph273.i, label %.preheader263.i, !llvm.loop !265

.lr.ph280.i:                                      ; preds = %.lr.ph280.i.preheader, %.lr.ph280.i
  %.2279.i = phi ptr [ %i.tb, %.lr.ph280.i ], [ %.2279.i.ph, %.lr.ph280.i.preheader ] ; 2 uses
  %.2155278.i = phi ptr [ %i.tc, %.lr.ph280.i ], [ %.2155278.i.ph, %.lr.ph280.i.preheader ] ; 3 uses
  %.2158277.i = phi i32 [ %i.td, %.lr.ph280.i ], [ %.2158277.i.ph, %.lr.ph280.i.preheader ]
  %i.sv = load i16, ptr %.2279.i, align 2, !tbaa !74
  %i.sw = zext i16 %i.sv to i32
  %i.sx = shl nuw i32 %i.sw, 16
  %i.sy = bitcast i32 %i.sx to float              ; 2 uses
  %i.sz = load float, ptr %.2155278.i, align 4, !tbaa !65 ; 2 uses
  %i.ta = fcmp fast olt float %i.sz, %i.sy
  %.sroa.speculated.i90 = select i1 %i.ta, float %i.sy, float %i.sz
  store float %.sroa.speculated.i90, ptr %.2155278.i, align 4, !tbaa !65
  %i.tb = getelementptr inbounds nuw i8, ptr %.2279.i, i64 2
  %i.tc = getelementptr inbounds nuw i8, ptr %.2155278.i, i64 4
  %i.td = add nuw nsw i32 %.2158277.i, 1          ; 2 uses
  %exitcond.not.i91 = icmp eq i32 %i.td, %4
  br i1 %exitcond.not.i91, label %._crit_edge.i86, label %.lr.ph280.i, !llvm.loop !266

._crit_edge.i86:                                  ; preds = %.lr.ph280.i, %middle.block273, %vec.epilog.middle.block289, %.preheader263.i
  %indvars.iv.next.i87 = add nuw nsw i64 %indvars.iv.i84, 1 ; 2 uses
  %exitcond371.not.i = icmp eq i64 %indvars.iv.next.i87, %wide.trip.count.i83
  br i1 %exitcond371.not.i, label %.preheader262.i, label %bb.i, !llvm.loop !267

.preheader259.i:                                  ; preds = %._crit_edge308.i, %bb.h
  br i1 %i.a, label %.lr.ph313.i.preheader, label %.preheader258.i

.lr.ph313.i.preheader:                            ; preds = %.preheader259.i
  %i.te = add nsw i32 %4, -8                      ; 2 uses
  %i.tf = lshr i32 %i.te, 3                       ; 2 uses
  %i.tg = add nuw nsw i32 %i.tf, 1                ; 2 uses
  %i.th = icmp eq i32 %i.tf, 0
  br i1 %i.th, label %.lr.ph313.i.epil.preheader, label %.lr.ph313.i.preheader.new

.lr.ph313.i.preheader.new:                        ; preds = %.lr.ph313.i.preheader
  %unroll_iter423 = and i32 %i.tg, 1073741822
  br label %.lr.ph313.i

.preheader262.i:                                  ; preds = %._crit_edge.i86, %._crit_edge308.i
  %indvars.iv373.i = phi i64 [ %indvars.iv.next374.i, %._crit_edge308.i ], [ 0, %._crit_edge.i86 ] ; 2 uses
  %i.ti = mul i64 %indvars.iv373.i, %3
  %i.tj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ti ; 2 uses
  br i1 %i.a, label %.lr.ph289.i, label %.preheader261.i

.preheader261.i:                                  ; preds = %.lr.ph289.i, %.preheader262.i
  %.0169.lcssa.i = phi ptr [ %6, %.preheader262.i ], [ %i.va, %.lr.ph289.i ] ; 2 uses
  %.0166.lcssa.i = phi i32 [ 0, %.preheader262.i ], [ %i.ox, %.lr.ph289.i ] ; 3 uses
  %.0163.lcssa.i = phi ptr [ %5, %.preheader262.i ], [ %i.uz, %.lr.ph289.i ] ; 2 uses
  %.0160.lcssa.i = phi ptr [ %i.tj, %.preheader262.i ], [ %i.uy, %.lr.ph289.i ] ; 2 uses
  %i.tk = or disjoint i32 %.0166.lcssa.i, 3
  %i.tl = icmp slt i32 %i.tk, %4
  br i1 %i.tl, label %.lr.ph298.i, label %.preheader260.i

.lr.ph289.i:                                      ; preds = %.preheader262.i, %.lr.ph289.i
  %.0160287.i = phi ptr [ %i.uy, %.lr.ph289.i ], [ %i.tj, %.preheader262.i ] ; 3 uses
  %.0163286.i = phi ptr [ %i.uz, %.lr.ph289.i ], [ %5, %.preheader262.i ] ; 2 uses
  %.0166285.i = phi i32 [ %i.vb, %.lr.ph289.i ], [ 0, %.preheader262.i ]
  %.0169284.i = phi ptr [ %i.va, %.lr.ph289.i ], [ %6, %.preheader262.i ] ; 3 uses
  %i.tm = load <8 x i16>, ptr %.0160287.i, align 1, !tbaa !61 ; 2 uses
  %i.tn = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.tm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.to = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.tm, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.tp = shufflevector <8 x i16> %i.tn, <8 x i16> %i.to, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.tq = bitcast <16 x i16> %i.tp to <8 x float>
  %i.tr = load <8 x float>, ptr %.0163286.i, align 1, !tbaa !61
  %i.ts = load <8 x float>, ptr %.0169284.i, align 1, !tbaa !61
  %i.tt = fsub fast <8 x float> %i.tq, %i.tr
  %i.tu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.tt, <8 x float> splat (float f0x42B0C0A5))
  %i.tv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.tu, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.tw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.tv, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.tx = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.tw, i32 1) ; 2 uses
  %i.ty = fcmp fast ogt <8 x float> %i.tx, %i.tw
  %i.tz = select <8 x i1> %i.ty, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.ua = fsub fast <8 x float> %i.tx, %i.tz      ; 2 uses
  %i.ub = fneg fast <8 x float> %i.ua             ; 2 uses
  %i.uc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.ub, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.tv)
  %i.ud = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.ub, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.uc) ; 8 uses
  %i.ue = fmul fast <8 x float> %i.ud, %i.ud
  %i.uf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ud, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.ug = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.uf, <8 x float> nofpclass(nan inf) %i.ud, <8 x float> splat (float f0x3C088908))
  %i.uh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ug, <8 x float> nofpclass(nan inf) %i.ud, <8 x float> splat (float f0x3D2AA9C1))
  %i.ui = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.uh, <8 x float> nofpclass(nan inf) %i.ud, <8 x float> splat (float f0x3E2AAAAA))
  %i.uj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ui, <8 x float> nofpclass(nan inf) %i.ud, <8 x float> splat (float 5.000000e-01))
  %i.uk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.uj, <8 x float> nofpclass(nan inf) %i.ue, <8 x float> nofpclass(nan inf) %i.ud)
  %i.ul = fadd fast <8 x float> %i.uk, splat (float 1.000000e+00)
  %i.um = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ua)
  %i.un = shl <8 x i32> %i.um, splat (i32 23)
  %i.uo = add <8 x i32> %i.un, splat (i32 1065353216)
  %i.up = bitcast <8 x i32> %i.uo to <8 x float>
  %i.uq = fmul fast <8 x float> %i.ul, %i.up      ; 2 uses
  %i.ur = bitcast <8 x float> %i.uq to <8 x i32>  ; 2 uses
  %i.us = shufflevector <8 x i32> %i.ur, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ut = shufflevector <8 x i32> %i.ur, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.uu = lshr <4 x i32> %i.us, splat (i32 16)
  %i.uv = lshr <4 x i32> %i.ut, splat (i32 16)
  %i.uw = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.uu, <4 x i32> %i.uv)
  store <8 x i16> %i.uw, ptr %.0160287.i, align 1, !tbaa !61
  %i.ux = fadd fast <8 x float> %i.uq, %i.ts
  store <8 x float> %i.ux, ptr %.0169284.i, align 1, !tbaa !61
  %i.uy = getelementptr inbounds nuw i8, ptr %.0160287.i, i64 16 ; 2 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %.0163286.i, i64 32 ; 2 uses
  %i.va = getelementptr inbounds nuw i8, ptr %.0169284.i, i64 32 ; 2 uses
  %i.vb = add nuw nsw i32 %.0166285.i, 8          ; 2 uses
  %i.vc = or disjoint i32 %i.vb, 7
  %i.vd = icmp slt i32 %i.vc, %4
  br i1 %i.vd, label %.lr.ph289.i, label %.preheader261.i, !llvm.loop !268

.preheader260.i:                                  ; preds = %.lr.ph298.i, %.preheader261.i
  %.1170.lcssa.i = phi ptr [ %.0169.lcssa.i, %.preheader261.i ], [ %i.yn, %.lr.ph298.i ] ; 6 uses
  %.1167.lcssa.i = phi i32 [ %.0166.lcssa.i, %.preheader261.i ], [ %i.yo, %.lr.ph298.i ] ; 5 uses
  %.1164.lcssa.i = phi ptr [ %.0163.lcssa.i, %.preheader261.i ], [ %i.ym, %.lr.ph298.i ] ; 6 uses
  %.1161.lcssa.i = phi ptr [ %.0160.lcssa.i, %.preheader261.i ], [ %i.yl, %.lr.ph298.i ] ; 4 uses
  %i.ve = icmp slt i32 %.1167.lcssa.i, %4
  br i1 %i.ve, label %.lr.ph307.i.preheader, label %._crit_edge308.i

.lr.ph307.i.preheader:                            ; preds = %.preheader260.i
  %i.vf = xor i32 %.1167.lcssa.i, -1
  %i.vg = add i32 %4, %i.vf                       ; 2 uses
  %i.vh = zext i32 %i.vg to i64                   ; 2 uses
  %i.vi = add nuw nsw i64 %i.vh, 1                ; 2 uses
  %min.iters.check298 = icmp ult i32 %i.vg, 7
  br i1 %min.iters.check298, label %.lr.ph307.i.preheader390, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph307.i.preheader
  %i.vj = shl nuw nsw i64 %i.vh, 2
  %i.vk = add nuw nsw i64 %i.vj, 4                ; 2 uses
  %i.vl = getelementptr i8, ptr %.1170.lcssa.i, i64 %i.vk
  %i.vm = getelementptr i8, ptr %.1164.lcssa.i, i64 %i.vk
  %bound0 = icmp ult ptr %.1170.lcssa.i, %i.vm
  %bound1 = icmp ult ptr %.1164.lcssa.i, %i.vl
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph307.i.preheader390, label %vector.ph299

vector.ph299:                                     ; preds = %vector.memcheck
  %n.vec300 = and i64 %i.vi, 8589934584           ; 5 uses
  %i.vn = shl nuw nsw i64 %n.vec300, 1
  %i.vo = getelementptr i8, ptr %.1161.lcssa.i, i64 %i.vn
  %i.vp = shl nuw nsw i64 %n.vec300, 2            ; 2 uses
  %i.vq = getelementptr i8, ptr %.1164.lcssa.i, i64 %i.vp
  %i.vr = trunc i64 %n.vec300 to i32
  %i.vs = add i32 %.1167.lcssa.i, %i.vr
  %i.vt = getelementptr i8, ptr %.1170.lcssa.i, i64 %i.vp
  br label %vector.body301

vector.body301:                                   ; preds = %vector.body301, %vector.ph299
  %index302 = phi i64 [ 0, %vector.ph299 ], [ %index.next309, %vector.body301 ] ; 3 uses
  %i.vu = shl i64 %index302, 1
  %next.gep303 = getelementptr i8, ptr %.1161.lcssa.i, i64 %i.vu ; 2 uses
  %i.vv = shl i64 %index302, 2                    ; 2 uses
  %next.gep304 = getelementptr i8, ptr %.1164.lcssa.i, i64 %i.vv
  %next.gep305 = getelementptr i8, ptr %.1170.lcssa.i, i64 %i.vv ; 2 uses
  %wide.load306 = load <8 x i16>, ptr %next.gep303, align 2, !tbaa !74
  %i.vw = zext <8 x i16> %wide.load306 to <8 x i32>
  %i.vx = shl nuw <8 x i32> %i.vw, splat (i32 16)
  %i.vy = bitcast <8 x i32> %i.vx to <8 x float>
  %wide.load307 = load <8 x float>, ptr %next.gep304, align 4, !tbaa !65, !alias.scope !285
  %i.vz = fsub fast <8 x float> %i.vy, %wide.load307
  %i.wa = tail call fast <8 x float> @llvm.exp.v8f32(<8 x float> %i.vz) ; 2 uses
  %i.wb = bitcast <8 x float> %i.wa to <8 x i32>
  %i.wc = lshr <8 x i32> %i.wb, splat (i32 16)
  %i.wd = trunc nuw nsw <8 x i32> %i.wc to <8 x i16>
  store <8 x i16> %i.wd, ptr %next.gep303, align 2, !tbaa !74
  %wide.load308 = load <8 x float>, ptr %next.gep305, align 4, !tbaa !65, !alias.scope !286, !noalias !285
  %i.we = fadd fast <8 x float> %i.wa, %wide.load308
  store <8 x float> %i.we, ptr %next.gep305, align 4, !tbaa !65, !alias.scope !286, !noalias !285
  %index.next309 = add nuw i64 %index302, 8       ; 2 uses
  %i.wf = icmp eq i64 %index.next309, %n.vec300
  br i1 %i.wf, label %middle.block310, label %vector.body301, !llvm.loop !272

middle.block310:                                  ; preds = %vector.body301
  %cmp.n311 = icmp eq i64 %i.vi, %n.vec300
  br i1 %cmp.n311, label %._crit_edge308.i, label %.lr.ph307.i.preheader390

.lr.ph307.i.preheader390:                         ; preds = %vector.memcheck, %.lr.ph307.i.preheader, %middle.block310
  %.2162306.i.ph = phi ptr [ %.1161.lcssa.i, %vector.memcheck ], [ %.1161.lcssa.i, %.lr.ph307.i.preheader ], [ %i.vo, %middle.block310 ] ; 4 uses
  %.2165305.i.ph = phi ptr [ %.1164.lcssa.i, %vector.memcheck ], [ %.1164.lcssa.i, %.lr.ph307.i.preheader ], [ %i.vq, %middle.block310 ] ; 3 uses
  %.2168304.i.ph = phi i32 [ %.1167.lcssa.i, %vector.memcheck ], [ %.1167.lcssa.i, %.lr.ph307.i.preheader ], [ %i.vs, %middle.block310 ] ; 4 uses
  %.2171303.i.ph = phi ptr [ %.1170.lcssa.i, %vector.memcheck ], [ %.1170.lcssa.i, %.lr.ph307.i.preheader ], [ %i.vt, %middle.block310 ] ; 4 uses
  %i.wg = sub i32 %4, %.2168304.i.ph
  %.neg = add i32 %.2168304.i.ph, 1
  %xtraiter416 = and i32 %i.wg, 1
  %lcmp.mod417.not = icmp eq i32 %xtraiter416, 0
  br i1 %lcmp.mod417.not, label %.lr.ph307.i.prol.loopexit, label %.lr.ph307.i.prol

.lr.ph307.i.prol:                                 ; preds = %.lr.ph307.i.preheader390
  %i.wh = load i16, ptr %.2162306.i.ph, align 2, !tbaa !74
  %i.wi = zext i16 %i.wh to i32
  %i.wj = shl nuw i32 %i.wi, 16
  %i.wk = bitcast i32 %i.wj to float
  %i.wl = load float, ptr %.2165305.i.ph, align 4, !tbaa !65
  %i.wm = fsub fast float %i.wk, %i.wl
  %i.wn = tail call fast float @llvm.exp.f32(float %i.wm) ; 2 uses
  %i.wo = bitcast float %i.wn to i32
  %i.wp = lshr i32 %i.wo, 16
  %i.wq = trunc nuw nsw i32 %i.wp to i16
  store i16 %i.wq, ptr %.2162306.i.ph, align 2, !tbaa !74
  %i.wr = load float, ptr %.2171303.i.ph, align 4, !tbaa !65
  %i.ws = fadd fast float %i.wn, %i.wr
  store float %i.ws, ptr %.2171303.i.ph, align 4, !tbaa !65
  %i.wt = getelementptr inbounds nuw i8, ptr %.2162306.i.ph, i64 2
  %i.wu = getelementptr inbounds nuw i8, ptr %.2165305.i.ph, i64 4
  %i.wv = getelementptr inbounds nuw i8, ptr %.2171303.i.ph, i64 4
  %i.ww = add nuw nsw i32 %.2168304.i.ph, 1
  br label %.lr.ph307.i.prol.loopexit

.lr.ph307.i.prol.loopexit:                        ; preds = %.lr.ph307.i.prol, %.lr.ph307.i.preheader390
  %.2162306.i.unr = phi ptr [ %.2162306.i.ph, %.lr.ph307.i.preheader390 ], [ %i.wt, %.lr.ph307.i.prol ]
  %.2165305.i.unr = phi ptr [ %.2165305.i.ph, %.lr.ph307.i.preheader390 ], [ %i.wu, %.lr.ph307.i.prol ]
  %.2168304.i.unr = phi i32 [ %.2168304.i.ph, %.lr.ph307.i.preheader390 ], [ %i.ww, %.lr.ph307.i.prol ]
  %.2171303.i.unr = phi ptr [ %.2171303.i.ph, %.lr.ph307.i.preheader390 ], [ %i.wv, %.lr.ph307.i.prol ]
  %i.wx = icmp eq i32 %4, %.neg
  br i1 %i.wx, label %._crit_edge308.i, label %.lr.ph307.i

.lr.ph298.i:                                      ; preds = %.preheader261.i, %.lr.ph298.i
  %.1161297.i = phi ptr [ %i.yl, %.lr.ph298.i ], [ %.0160.lcssa.i, %.preheader261.i ] ; 3 uses
  %.1164296.i = phi ptr [ %i.ym, %.lr.ph298.i ], [ %.0163.lcssa.i, %.preheader261.i ] ; 2 uses
  %.1167295.i = phi i32 [ %i.yo, %.lr.ph298.i ], [ %.0166.lcssa.i, %.preheader261.i ]
  %.1170294.i = phi ptr [ %i.yn, %.lr.ph298.i ], [ %.0169.lcssa.i, %.preheader261.i ] ; 3 uses
  %i.wy = load i64, ptr %.1161297.i, align 1, !tbaa !61
  %i.wz = insertelement <2 x i64> poison, i64 %i.wy, i64 0
  %i.xa = bitcast <2 x i64> %i.wz to <8 x i16>
  %i.xb = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.xa, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.xc = bitcast <8 x i16> %i.xb to <4 x float>
  %i.xd = load <4 x float>, ptr %.1164296.i, align 1, !tbaa !61
  %i.xe = load <4 x float>, ptr %.1170294.i, align 1, !tbaa !61
  %i.xf = fsub fast <4 x float> %i.xc, %i.xd
  %i.xg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.xf, <4 x float> splat (float f0x42B0C0A5))
  %i.xh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.xg, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.xi = fmul fast <4 x float> %i.xh, splat (float f0x3FB8AA3B)
  %i.xj = fadd fast <4 x float> %i.xi, splat (float 5.000000e-01) ; 2 uses
  %i.xk = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.xj)
  %i.xl = sitofp fast <4 x i32> %i.xk to <4 x float> ; 2 uses
  %i.xm = fcmp fast olt <4 x float> %i.xj, %i.xl
  %i.xn = select <4 x i1> %i.xm, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.xo = fsub fast <4 x float> %i.xl, %i.xn      ; 2 uses
  %i.xp = fneg fast <4 x float> %i.xo             ; 2 uses
  %i.xq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.xp, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.xh)
  %i.xr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.xp, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.xq) ; 8 uses
  %i.xs = fmul fast <4 x float> %i.xr, %i.xr
  %i.xt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.xr, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.xu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.xt, <4 x float> nofpclass(nan inf) %i.xr, <4 x float> splat (float f0x3C088908))
  %i.xv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.xu, <4 x float> nofpclass(nan inf) %i.xr, <4 x float> splat (float f0x3D2AA9C1))
  %i.xw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.xv, <4 x float> nofpclass(nan inf) %i.xr, <4 x float> splat (float f0x3E2AAAAA))
  %i.xx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.xw, <4 x float> nofpclass(nan inf) %i.xr, <4 x float> splat (float 5.000000e-01))
  %i.xy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.xx, <4 x float> nofpclass(nan inf) %i.xs, <4 x float> nofpclass(nan inf) %i.xr)
  %i.xz = fadd fast <4 x float> %i.xy, splat (float 1.000000e+00)
  %i.ya = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.xo)
  %i.yb = shl <4 x i32> %i.ya, splat (i32 23)
  %i.yc = add <4 x i32> %i.yb, splat (i32 1065353216)
  %i.yd = bitcast <4 x i32> %i.yc to <4 x float>
  %i.ye = fmul fast <4 x float> %i.xz, %i.yd      ; 2 uses
  %i.yf = bitcast <4 x float> %i.ye to <4 x i32>
  %i.yg = lshr <4 x i32> %i.yf, splat (i32 16)
  %i.yh = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.yg, <4 x i32> poison)
  %i.yi = bitcast <8 x i16> %i.yh to <2 x i64>
  %i.yj = extractelement <2 x i64> %i.yi, i64 0
  store i64 %i.yj, ptr %.1161297.i, align 1, !tbaa !61
  %i.yk = fadd fast <4 x float> %i.ye, %i.xe
  store <4 x float> %i.yk, ptr %.1170294.i, align 1, !tbaa !61
  %i.yl = getelementptr inbounds nuw i8, ptr %.1161297.i, i64 8 ; 2 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %.1164296.i, i64 16 ; 2 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %.1170294.i, i64 16 ; 2 uses
  %i.yo = add nuw nsw i32 %.1167295.i, 4          ; 3 uses
  %i.yp = or disjoint i32 %i.yo, 3
  %i.yq = icmp slt i32 %i.yp, %4
  br i1 %i.yq, label %.lr.ph298.i, label %.preheader260.i, !llvm.loop !273

.lr.ph307.i:                                      ; preds = %.lr.ph307.i.prol.loopexit, %.lr.ph307.i
  %.2162306.i = phi ptr [ %i.zs, %.lr.ph307.i ], [ %.2162306.i.unr, %.lr.ph307.i.prol.loopexit ] ; 4 uses
  %.2165305.i = phi ptr [ %i.zt, %.lr.ph307.i ], [ %.2165305.i.unr, %.lr.ph307.i.prol.loopexit ] ; 3 uses
  %.2168304.i = phi i32 [ %i.zv, %.lr.ph307.i ], [ %.2168304.i.unr, %.lr.ph307.i.prol.loopexit ]
  %.2171303.i = phi ptr [ %i.zu, %.lr.ph307.i ], [ %.2171303.i.unr, %.lr.ph307.i.prol.loopexit ] ; 4 uses
  %i.yr = load i16, ptr %.2162306.i, align 2, !tbaa !74
  %i.ys = zext i16 %i.yr to i32
  %i.yt = shl nuw i32 %i.ys, 16
  %i.yu = bitcast i32 %i.yt to float
  %i.yv = load float, ptr %.2165305.i, align 4, !tbaa !65
  %i.yw = fsub fast float %i.yu, %i.yv
  %i.yx = tail call fast float @llvm.exp.f32(float %i.yw) ; 2 uses
  %i.yy = bitcast float %i.yx to i32
  %i.yz = lshr i32 %i.yy, 16
  %i.za = trunc nuw nsw i32 %i.yz to i16
  store i16 %i.za, ptr %.2162306.i, align 2, !tbaa !74
  %i.zb = load float, ptr %.2171303.i, align 4, !tbaa !65
  %i.zc = fadd fast float %i.yx, %i.zb
  store float %i.zc, ptr %.2171303.i, align 4, !tbaa !65
  %i.zd = getelementptr inbounds nuw i8, ptr %.2162306.i, i64 2 ; 2 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %.2165305.i, i64 4
  %i.zf = getelementptr inbounds nuw i8, ptr %.2171303.i, i64 4 ; 2 uses
  %i.zg = load i16, ptr %i.zd, align 2, !tbaa !74
  %i.zh = zext i16 %i.zg to i32
  %i.zi = shl nuw i32 %i.zh, 16
  %i.zj = bitcast i32 %i.zi to float
  %i.zk = load float, ptr %i.ze, align 4, !tbaa !65
  %i.zl = fsub fast float %i.zj, %i.zk
  %i.zm = tail call fast float @llvm.exp.f32(float %i.zl) ; 2 uses
  %i.zn = bitcast float %i.zm to i32
  %i.zo = lshr i32 %i.zn, 16
  %i.zp = trunc nuw nsw i32 %i.zo to i16
  store i16 %i.zp, ptr %i.zd, align 2, !tbaa !74
  %i.zq = load float, ptr %i.zf, align 4, !tbaa !65
  %i.zr = fadd fast float %i.zm, %i.zq
  store float %i.zr, ptr %i.zf, align 4, !tbaa !65
  %i.zs = getelementptr inbounds nuw i8, ptr %.2162306.i, i64 4
  %i.zt = getelementptr inbounds nuw i8, ptr %.2165305.i, i64 8
  %i.zu = getelementptr inbounds nuw i8, ptr %.2171303.i, i64 8
  %i.zv = add nuw nsw i32 %.2168304.i, 2          ; 2 uses
  %exitcond372.not.i.1 = icmp eq i32 %i.zv, %4
  br i1 %exitcond372.not.i.1, label %._crit_edge308.i, label %.lr.ph307.i, !llvm.loop !274

._crit_edge308.i:                                 ; preds = %.lr.ph307.i.prol.loopexit, %.lr.ph307.i, %middle.block310, %.preheader260.i
  %indvars.iv.next374.i = add nuw nsw i64 %indvars.iv373.i, 1 ; 2 uses
  %exitcond377.not.i = icmp eq i64 %indvars.iv.next374.i, %wide.trip.count.i83
  br i1 %exitcond377.not.i, label %.preheader259.i, label %.preheader262.i, !llvm.loop !275

.preheader258.loopexit.i.unr-lcssa:               ; preds = %.lr.ph313.i
  %i.zw = and i32 %i.te, 8
  %lcmp.mod420.not.not = icmp eq i32 %i.zw, 0
  br i1 %lcmp.mod420.not.not, label %.lr.ph313.i.epil.preheader, label %.preheader258.loopexit.i

.lr.ph313.i.epil.preheader:                       ; preds = %.preheader258.loopexit.i.unr-lcssa, %.lr.ph313.i.preheader
  %.0150311.i.epil.init = phi ptr [ %6, %.lr.ph313.i.preheader ], [ %i.aar, %.preheader258.loopexit.i.unr-lcssa ] ; 3 uses
  %lcmp.mod422 = trunc i32 %i.tg to i1
  tail call void @llvm.assume(i1 %lcmp.mod422)
  %i.zx = load <8 x float>, ptr %.0150311.i.epil.init, align 1, !tbaa !61 ; 2 uses
end_hunk_1
