Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/interp_x86_avx512?download=true
inline.NumInlined: 111
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZNK4ncnn17Interp_x86_avx5127forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.8:bb.a
bb.ck:                                            ; preds = %bb.cj
  call void @free(ptr noundef nonnull %i.apg) #6
  br label %_ZN4ncnnL21resize_bilinear_imageERKNS_3MatERS0_PfPiS4_S5_.exit

bb.cl:                                            ; preds = %bb.ci
  %i.apk = landingpad { ptr, i32 }
          catch ptr null
  %i.apl = extractvalue { ptr, i32 } %i.apk, 0
  call void @__clang_call_terminate(ptr %i.apl) #27
  unreachable

bb.cm:                                            ; preds = %.noexc145
  %i.apm = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #6
  %i.apn = load ptr, ptr %i.ak, align 8, !tbaa !41 ; 2 uses
  %.not.i345.i = icmp eq ptr %i.apn, null
  br i1 %.not.i345.i, label %_ZN4ncnn3MatD2Ev.exit.i109, label %bb.cr

bb.cn:                                            ; preds = %_ZN4ncnnL16vresize_bilinearEPKfS1_Pfiff.exit.i121, %.lr.ph423.i
  %indvars.iv459.i = phi i64 [ 0, %.lr.ph423.i ], [ %indvars.iv.next460.i, %_ZN4ncnnL16vresize_bilinearEPKfS1_Pfiff.exit.i121 ] ; 3 uses
  %.0422.i = phi ptr [ %i.aod, %.lr.ph423.i ], [ %i.bfs, %_ZN4ncnnL16vresize_bilinearEPKfS1_Pfiff.exit.i121 ] ; 3 uses
  %.0296421.i = phi ptr [ %i.aoh, %.lr.ph423.i ], [ %.1297.i, %_ZN4ncnnL16vresize_bilinearEPKfS1_Pfiff.exit.i121 ] ; 18 uses
  %.0298420.i = phi ptr [ %i.aog, %.lr.ph423.i ], [ %.1299.i, %_ZN4ncnnL16vresize_bilinearEPKfS1_Pfiff.exit.i121 ] ; 10 uses
  %.0300419.i = phi i32 [ -2, %.lr.ph423.i ], [ %i.app, %_ZN4ncnnL16vresize_bilinearEPKfS1_Pfiff.exit.i121 ] ; 2 uses
  %i.apo = getelementptr inbounds nuw [4 x i8], ptr %i.aoe, i64 %indvars.iv459.i
  %i.app = load i32, ptr %i.apo, align 4, !tbaa !28 ; 6 uses
  %i.apq = icmp eq i32 %i.app, %.0300419.i
  br i1 %i.apq, label %.loopexit.i114, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.apr = add nsw i32 %.0300419.i, 1
  %i.aps = icmp eq i32 %i.app, %i.apr
  br i1 %i.aps, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.apt = add nsw i32 %i.app, 1
  %i.apu = sext i32 %i.apt to i64
  %i.apv = mul i64 %i.aol, %i.apu
  %i.apw = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.apv ; 15 uses
  br i1 %i.aoi, label %.lr.ph402.i.preheader, label %.preheader379.i

.lr.ph402.i.preheader:                            ; preds = %bb.cp
  br i1 %i.aoq, label %.lr.ph402.i.epil.preheader, label %.lr.ph402.i

.preheader379.loopexit.i.unr-lcssa:               ; preds = %.lr.ph402.i
  br i1 %lcmp.mod.not.not, label %.lr.ph402.i.epil.preheader, label %.preheader379.loopexit.i

.lr.ph402.i.epil.preheader:                       ; preds = %.preheader379.loopexit.i.unr-lcssa, %.lr.ph402.i.preheader
  %indvars.iv447.i.epil.init = phi i64 [ 0, %.lr.ph402.i.preheader ], [ %indvars.iv.next448.i.1, %.preheader379.loopexit.i.unr-lcssa ] ; 3 uses
  %.0310401.i.epil.init = phi ptr [ %i.aob, %.lr.ph402.i.preheader ], [ %i.arh, %.preheader379.loopexit.i.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod580)
  %i.apx = getelementptr inbounds nuw [4 x i8], ptr %i.aoc, i64 %indvars.iv447.i.epil.init
  %i.apy = load <16 x i32>, ptr %i.apx, align 1, !tbaa !20 ; 2 uses
  %i.apz = add <16 x i32> %i.apy, splat (i32 1)
  %i.aqa = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.apw, <16 x i32> %i.apy, <16 x i1> splat (i1 true), i32 4)
  %i.aqb = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.apw, <16 x i32> %i.apz, <16 x i1> splat (i1 true), i32 4)
  %i.aqc = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %.0310401.i.epil.init, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>, <16 x i1> splat (i1 true), i32 4)
  %i.aqd = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %.0310401.i.epil.init, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>, <16 x i1> splat (i1 true), i32 4)
  %i.aqe = fmul fast <16 x float> %i.aqc, %i.aqa
  %i.aqf = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aqb, <16 x float> nofpclass(nan inf) %i.aqd, <16 x float> nofpclass(nan inf) %i.aqe)
  %i.aqg = getelementptr inbounds nuw [4 x i8], ptr %.0296421.i, i64 %indvars.iv447.i.epil.init
  store <16 x float> %i.aqf, ptr %i.aqg, align 1, !tbaa !20
  %i.aqh = getelementptr inbounds nuw i8, ptr %.0310401.i.epil.init, i64 128
  %indvars.iv.next448.i.epil = add nuw nsw i64 %indvars.iv447.i.epil.init, 16
  br label %.preheader379.loopexit.i

.preheader379.loopexit.i:                         ; preds = %.preheader379.loopexit.i.unr-lcssa, %.lr.ph402.i.epil.preheader
  %.lcssa574 = phi ptr [ %i.arh, %.preheader379.loopexit.i.unr-lcssa ], [ %i.aqh, %.lr.ph402.i.epil.preheader ]
  %indvars.iv.next448.i.lcssa = phi i64 [ %indvars.iv.next448.i.1, %.preheader379.loopexit.i.unr-lcssa ], [ %indvars.iv.next448.i.epil, %.lr.ph402.i.epil.preheader ]
  %i.aqi = trunc nuw nsw i64 %indvars.iv.next448.i.lcssa to i32
  br label %.preheader379.i

.preheader379.i:                                  ; preds = %.preheader379.loopexit.i, %bb.cp
  %.0314.lcssa.i = phi i32 [ 0, %bb.cp ], [ %i.aqi, %.preheader379.loopexit.i ] ; 3 uses
  %.0310.lcssa.i = phi ptr [ %i.aob, %bb.cp ], [ %.lcssa574, %.preheader379.loopexit.i ] ; 2 uses
  %i.aqj = or disjoint i32 %.0314.lcssa.i, 7
  %i.aqk = icmp slt i32 %i.aqj, %i.az
  br i1 %i.aqk, label %.lr.ph407.preheader.i, label %.preheader378.i

.lr.ph407.preheader.i:                            ; preds = %.preheader379.i
  %i.aql = zext nneg i32 %.0314.lcssa.i to i64
  br label %.lr.ph407.i

.lr.ph402.i:                                      ; preds = %.lr.ph402.i.preheader, %.lr.ph402.i
  %indvars.iv447.i = phi i64 [ %indvars.iv.next448.i.1, %.lr.ph402.i ], [ 0, %.lr.ph402.i.preheader ] ; 4 uses
  %.0310401.i = phi ptr [ %i.arh, %.lr.ph402.i ], [ %i.aob, %.lr.ph402.i.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph402.i ], [ 0, %.lr.ph402.i.preheader ]
  %i.aqm = getelementptr inbounds nuw [4 x i8], ptr %i.aoc, i64 %indvars.iv447.i
  %i.aqn = load <16 x i32>, ptr %i.aqm, align 1, !tbaa !20 ; 2 uses
  %i.aqo = add <16 x i32> %i.aqn, splat (i32 1)
  %i.aqp = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.apw, <16 x i32> %i.aqn, <16 x i1> splat (i1 true), i32 4)
  %i.aqq = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.apw, <16 x i32> %i.aqo, <16 x i1> splat (i1 true), i32 4)
  %i.aqr = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %.0310401.i, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>, <16 x i1> splat (i1 true), i32 4)
  %i.aqs = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %.0310401.i, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>, <16 x i1> splat (i1 true), i32 4)
  %i.aqt = fmul fast <16 x float> %i.aqr, %i.aqp
  %i.aqu = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aqq, <16 x float> nofpclass(nan inf) %i.aqs, <16 x float> nofpclass(nan inf) %i.aqt)
  %i.aqv = getelementptr inbounds nuw [4 x i8], ptr %.0296421.i, i64 %indvars.iv447.i
  store <16 x float> %i.aqu, ptr %i.aqv, align 1, !tbaa !20
  %i.aqw = getelementptr inbounds nuw i8, ptr %.0310401.i, i64 128 ; 2 uses
  %indvars.iv.next448.i = or disjoint i64 %indvars.iv447.i, 16 ; 2 uses
  %i.aqx = getelementptr inbounds nuw [4 x i8], ptr %i.aoc, i64 %indvars.iv.next448.i
  %i.aqy = load <16 x i32>, ptr %i.aqx, align 1, !tbaa !20 ; 2 uses
  %i.aqz = add <16 x i32> %i.aqy, splat (i32 1)
  %i.ara = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.apw, <16 x i32> %i.aqy, <16 x i1> splat (i1 true), i32 4)
  %i.arb = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.apw, <16 x i32> %i.aqz, <16 x i1> splat (i1 true), i32 4)
  %i.arc = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.aqw, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>, <16 x i1> splat (i1 true), i32 4)
  %i.ard = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.aqw, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>, <16 x i1> splat (i1 true), i32 4)
  %i.are = fmul fast <16 x float> %i.arc, %i.ara
  %i.arf = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.arb, <16 x float> nofpclass(nan inf) %i.ard, <16 x float> nofpclass(nan inf) %i.are)
  %i.arg = getelementptr inbounds nuw [4 x i8], ptr %.0296421.i, i64 %indvars.iv.next448.i
  store <16 x float> %i.arf, ptr %i.arg, align 1, !tbaa !20
  %i.arh = getelementptr inbounds nuw i8, ptr %.0310401.i, i64 256 ; 3 uses
  %indvars.iv.next448.i.1 = add nuw nsw i64 %indvars.iv447.i, 32 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader379.loopexit.i.unr-lcssa, label %.lr.ph402.i, !llvm.loop !188

.preheader378.loopexit.i:                         ; preds = %.lr.ph407.i
  %i.ari = trunc nuw nsw i64 %indvars.iv.next451.i to i32
  br label %.preheader378.i

.preheader378.i:                                  ; preds = %.preheader378.loopexit.i, %.preheader379.i
  %.1315.lcssa.i = phi i32 [ %.0314.lcssa.i, %.preheader379.i ], [ %i.ari, %.preheader378.loopexit.i ] ; 3 uses
  %.1311.lcssa.i = phi ptr [ %.0310.lcssa.i, %.preheader379.i ], [ %i.arx, %.preheader378.loopexit.i ] ; 2 uses
  %i.arj = or disjoint i32 %.1315.lcssa.i, 3      ; 2 uses
  %i.ark = icmp slt i32 %i.arj, %i.az
  br i1 %i.ark, label %.lr.ph412.preheader.i, label %.preheader.i143

.lr.ph412.preheader.i:                            ; preds = %.preheader378.i
  %i.arl = zext nneg i32 %.1315.lcssa.i to i64
  %i.arm = zext nneg i32 %i.arj to i64
  br label %.lr.ph412.i

.lr.ph407.i:                                      ; preds = %.lr.ph407.i, %.lr.ph407.preheader.i
  %indvars.iv450.i = phi i64 [ %i.aql, %.lr.ph407.preheader.i ], [ %indvars.iv.next451.i, %.lr.ph407.i ] ; 3 uses
  %.1311406.i = phi ptr [ %.0310.lcssa.i, %.lr.ph407.preheader.i ], [ %i.arx, %.lr.ph407.i ] ; 3 uses
  %i.arn = getelementptr inbounds nuw [4 x i8], ptr %i.aoc, i64 %indvars.iv450.i
  %i.aro = load <8 x i32>, ptr %i.arn, align 1, !tbaa !20 ; 2 uses
  %i.arp = add <8 x i32> %i.aro, splat (i32 1)
  %i.arq = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.apw, <8 x i32> %i.aro, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.arr = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.apw, <8 x i32> %i.arp, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.ars = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %.1311406.i, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.art = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %.1311406.i, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.aru = fmul fast <8 x float> %i.ars, %i.arq
  %i.arv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.arr, <8 x float> nofpclass(nan inf) %i.art, <8 x float> nofpclass(nan inf) %i.aru)
  %i.arw = getelementptr inbounds nuw [4 x i8], ptr %.0296421.i, i64 %indvars.iv450.i
  store <8 x float> %i.arv, ptr %i.arw, align 1, !tbaa !20
  %i.arx = getelementptr inbounds nuw i8, ptr %.1311406.i, i64 64 ; 2 uses
  %indvars.iv.next451.i = add nuw nsw i64 %indvars.iv450.i, 8 ; 3 uses
  %i.ary = icmp slt i64 %indvars.iv.next451.i, %invariant.op482.i
  br i1 %i.ary, label %.lr.ph407.i, label %.preheader378.loopexit.i, !llvm.loop !189

.preheader.loopexit.i144:                         ; preds = %.lr.ph412.i
  %i.arz = trunc nuw i64 %indvars.iv.next454.i to i32
  br label %.preheader.i143

.preheader.i143:                                  ; preds = %.preheader.loopexit.i144, %.preheader378.i
  %.2316.lcssa.i = phi i32 [ %.1315.lcssa.i, %.preheader378.i ], [ %i.arz, %.preheader.loopexit.i144 ] ; 4 uses
  %.2312.lcssa.i = phi ptr [ %.1311.lcssa.i, %.preheader378.i ], [ %i.auj, %.preheader.loopexit.i144 ] ; 4 uses
  %i.asa = icmp slt i32 %.2316.lcssa.i, %i.az
  br i1 %i.asa, label %.lr.ph417.preheader.i, label %.loopexit.i114

.lr.ph417.preheader.i:                            ; preds = %.preheader.i143
  %i.asb = zext i32 %.2316.lcssa.i to i64         ; 4 uses
  %i.asc = sub i32 %i.az, %.2316.lcssa.i
  %.neg = add i32 %.2316.lcssa.i, 1
  %xtraiter581 = and i32 %i.asc, 1
  %lcmp.mod582.not = icmp eq i32 %xtraiter581, 0
  br i1 %lcmp.mod582.not, label %.lr.ph417.i.prol.loopexit, label %.lr.ph417.i.prol

.lr.ph417.i.prol:                                 ; preds = %.lr.ph417.preheader.i
  %i.asd = getelementptr inbounds nuw [4 x i8], ptr %i.aoc, i64 %i.asb
  %i.ase = load i32, ptr %i.asd, align 4, !tbaa !28
  %i.asf = sext i32 %i.ase to i64
  %i.asg = getelementptr inbounds [4 x i8], ptr %i.apw, i64 %i.asf ; 2 uses
  %i.ash = load float, ptr %.2312.lcssa.i, align 4, !tbaa !60
  %i.asi = getelementptr inbounds nuw i8, ptr %.2312.lcssa.i, i64 4
  %i.asj = load float, ptr %i.asi, align 4, !tbaa !60
  %i.ask = load float, ptr %i.asg, align 4, !tbaa !60
  %i.asl = fmul fast float %i.ask, %i.ash
  %i.asm = getelementptr inbounds nuw i8, ptr %i.asg, i64 4
  %i.asn = load float, ptr %i.asm, align 4, !tbaa !60
  %i.aso = fmul fast float %i.asn, %i.asj
  %i.asp = fadd fast float %i.aso, %i.asl
  %i.asq = getelementptr inbounds nuw [4 x i8], ptr %.0296421.i, i64 %i.asb
  store float %i.asp, ptr %i.asq, align 4, !tbaa !60
  %i.asr = getelementptr inbounds nuw i8, ptr %.2312.lcssa.i, i64 8
  %indvars.iv.next457.i.prol = add nuw nsw i64 %i.asb, 1
  br label %.lr.ph417.i.prol.loopexit

.lr.ph417.i.prol.loopexit:                        ; preds = %.lr.ph417.i.prol, %.lr.ph417.preheader.i
  %indvars.iv456.i.unr = phi i64 [ %i.asb, %.lr.ph417.preheader.i ], [ %indvars.iv.next457.i.prol, %.lr.ph417.i.prol ]
  %.3313416.i.unr = phi ptr [ %.2312.lcssa.i, %.lr.ph417.preheader.i ], [ %i.asr, %.lr.ph417.i.prol ]
  %i.ass = icmp eq i32 %i.az, %.neg
  br i1 %i.ass, label %.loopexit.i114, label %.lr.ph417.i

.lr.ph412.i:                                      ; preds = %.lr.ph412.i, %.lr.ph412.preheader.i
  %indvars.iv453.i = phi i64 [ %i.arl, %.lr.ph412.preheader.i ], [ %indvars.iv.next454.i, %.lr.ph412.i ] ; 3 uses
  %i.ast = phi i64 [ %i.arm, %.lr.ph412.preheader.i ], [ %i.auk, %.lr.ph412.i ]
  %.2312411.i = phi ptr [ %.1311.lcssa.i, %.lr.ph412.preheader.i ], [ %i.auj, %.lr.ph412.i ] ; 2 uses
  %i.asu = getelementptr inbounds nuw [4 x i8], ptr %i.aoc, i64 %indvars.iv453.i ; 3 uses
  %i.asv = load i32, ptr %i.asu, align 4, !tbaa !28
  %i.asw = sext i32 %i.asv to i64
  %i.asx = getelementptr inbounds [4 x i8], ptr %i.apw, i64 %i.asw ; 2 uses
  %i.asy = load float, ptr %i.asx, align 4, !tbaa !60
  %i.asz = getelementptr inbounds nuw i8, ptr %i.asu, i64 4
  %i.ata = load i32, ptr %i.asz, align 4, !tbaa !28
  %i.atb = sext i32 %i.ata to i64
  %i.atc = getelementptr inbounds [4 x i8], ptr %i.apw, i64 %i.atb ; 2 uses
  %i.atd = load float, ptr %i.atc, align 4, !tbaa !60
  %i.ate = getelementptr inbounds nuw i8, ptr %i.asu, i64 8
  %i.atf = load i32, ptr %i.ate, align 4, !tbaa !28
  %i.atg = sext i32 %i.atf to i64
  %i.ath = getelementptr inbounds [4 x i8], ptr %i.apw, i64 %i.atg ; 2 uses
  %i.ati = load float, ptr %i.ath, align 4, !tbaa !60
  %i.atj = getelementptr inbounds nuw [4 x i8], ptr %i.aoc, i64 %i.ast
  %i.atk = load i32, ptr %i.atj, align 4, !tbaa !28
  %i.atl = sext i32 %i.atk to i64
  %i.atm = getelementptr inbounds [4 x i8], ptr %i.apw, i64 %i.atl ; 2 uses
  %i.atn = load float, ptr %i.atm, align 4, !tbaa !60
  %i.ato = insertelement <4 x float> poison, float %i.asy, i64 0
  %i.atp = insertelement <4 x float> %i.ato, float %i.atd, i64 1
  %i.atq = insertelement <4 x float> %i.atp, float %i.ati, i64 2
  %i.atr = insertelement <4 x float> %i.atq, float %i.atn, i64 3
  %i.ats = getelementptr i8, ptr %i.asx, i64 4
  %i.att = load float, ptr %i.ats, align 4, !tbaa !60
  %i.atu = getelementptr i8, ptr %i.atc, i64 4
  %i.atv = load float, ptr %i.atu, align 4, !tbaa !60
  %i.atw = getelementptr i8, ptr %i.ath, i64 4
  %i.atx = load float, ptr %i.atw, align 4, !tbaa !60
  %i.aty = getelementptr i8, ptr %i.atm, i64 4
  %i.atz = load float, ptr %i.aty, align 4, !tbaa !60
  %i.aua = insertelement <4 x float> poison, float %i.att, i64 0
  %i.aub = insertelement <4 x float> %i.aua, float %i.atv, i64 1
  %i.auc = insertelement <4 x float> %i.aub, float %i.atx, i64 2
  %i.aud = insertelement <4 x float> %i.auc, float %i.atz, i64 3
  %18 = load <8 x float>, ptr %.2312411.i, align 1, !tbaa !20 ; 2 uses
  %i.aue = shufflevector <8 x float> %18, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.auf = shufflevector <8 x float> %18, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.aug = fmul fast <4 x float> %i.aue, %i.atr
  %i.auh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aud, <4 x float> nofpclass(nan inf) %i.auf, <4 x float> nofpclass(nan inf) %i.aug)
  %i.aui = getelementptr inbounds nuw [4 x i8], ptr %.0296421.i, i64 %indvars.iv453.i
  store <4 x float> %i.auh, ptr %i.aui, align 1, !tbaa !20
  %i.auj = getelementptr inbounds nuw i8, ptr %.2312411.i, i64 32 ; 2 uses
  %indvars.iv.next454.i = add nuw nsw i64 %indvars.iv453.i, 4 ; 3 uses
  %i.auk = or disjoint i64 %indvars.iv.next454.i, 3 ; 2 uses
  %i.aul = trunc nuw i64 %i.auk to i32
  %i.aum = icmp sgt i32 %i.az, %i.aul
  br i1 %i.aum, label %.lr.ph412.i, label %.preheader.loopexit.i144, !llvm.loop !190

.lr.ph417.i:                                      ; preds = %.lr.ph417.i.prol.loopexit, %.lr.ph417.i
  %indvars.iv456.i = phi i64 [ %indvars.iv.next457.i.1, %.lr.ph417.i ], [ %indvars.iv456.i.unr, %.lr.ph417.i.prol.loopexit ] ; 4 uses
  %.3313416.i = phi ptr [ %i.avq, %.lr.ph417.i ], [ %.3313416.i.unr, %.lr.ph417.i.prol.loopexit ] ; 5 uses
  %i.aun = getelementptr inbounds nuw [4 x i8], ptr %i.aoc, i64 %indvars.iv456.i
  %i.auo = load i32, ptr %i.aun, align 4, !tbaa !28
  %i.aup = sext i32 %i.auo to i64
  %i.auq = getelementptr inbounds [4 x i8], ptr %i.apw, i64 %i.aup ; 2 uses
  %i.aur = load float, ptr %.3313416.i, align 4, !tbaa !60
  %i.aus = getelementptr inbounds nuw i8, ptr %.3313416.i, i64 4
  %i.aut = load float, ptr %i.aus, align 4, !tbaa !60
  %i.auu = load float, ptr %i.auq, align 4, !tbaa !60
  %i.auv = fmul fast float %i.auu, %i.aur
  %i.auw = getelementptr inbounds nuw i8, ptr %i.auq, i64 4
  %i.aux = load float, ptr %i.auw, align 4, !tbaa !60
  %i.auy = fmul fast float %i.aux, %i.aut
  %i.auz = fadd fast float %i.auy, %i.auv
  %i.ava = getelementptr inbounds nuw [4 x i8], ptr %.0296421.i, i64 %indvars.iv456.i
  store float %i.auz, ptr %i.ava, align 4, !tbaa !60
  %i.avb = getelementptr inbounds nuw i8, ptr %.3313416.i, i64 8
  %indvars.iv.next457.i = add nuw nsw i64 %indvars.iv456.i, 1 ; 2 uses
  %i.avc = getelementptr inbounds nuw [4 x i8], ptr %i.aoc, i64 %indvars.iv.next457.i
  %i.avd = load i32, ptr %i.avc, align 4, !tbaa !28
  %i.ave = sext i32 %i.avd to i64
  %i.avf = getelementptr inbounds [4 x i8], ptr %i.apw, i64 %i.ave ; 2 uses
  %i.avg = load float, ptr %i.avb, align 4, !tbaa !60
  %i.avh = getelementptr inbounds nuw i8, ptr %.3313416.i, i64 12
  %i.avi = load float, ptr %i.avh, align 4, !tbaa !60
  %i.avj = load float, ptr %i.avf, align 4, !tbaa !60
  %i.avk = fmul fast float %i.avj, %i.avg
  %i.avl = getelementptr inbounds nuw i8, ptr %i.avf, i64 4
  %i.avm = load float, ptr %i.avl, align 4, !tbaa !60
  %i.avn = fmul fast float %i.avm, %i.avi
  %i.avo = fadd fast float %i.avn, %i.avk
  %i.avp = getelementptr inbounds nuw [4 x i8], ptr %.0296421.i, i64 %indvars.iv.next457.i
  store float %i.avo, ptr %i.avp, align 4, !tbaa !60
  %i.avq = getelementptr inbounds nuw i8, ptr %.3313416.i, i64 16
  %indvars.iv.next457.i.1 = add nuw nsw i64 %indvars.iv456.i, 2 ; 2 uses
  %i.avr = trunc nuw i64 %indvars.iv.next457.i.1 to i32
  %i.avs = icmp sgt i32 %i.az, %i.avr
  br i1 %i.avs, label %.lr.ph417.i, label %.loopexit.i114, !llvm.loop !191

bb.cq:                                            ; preds = %bb.co
  %i.avt = sext i32 %i.app to i64
  %i.avu = mul i64 %i.aol, %i.avt
  %i.avv = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.avu ; 9 uses
  %i.avw = add nsw i32 %i.app, 1
  %i.avx = sext i32 %i.avw to i64
  %i.avy = mul i64 %i.aol, %i.avx
  %i.avz = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.avy ; 9 uses
  br i1 %i.aoi, label %.lr.ph.i140, label %.preheader383.i

.preheader383.loopexit.i:                         ; preds = %.lr.ph.i140
  %i.awa = trunc nuw nsw i64 %indvars.iv.next.i142 to i32
  br label %.preheader383.i

.preheader383.i:                                  ; preds = %.preheader383.loopexit.i, %bb.cq
  %.0306.lcssa.i = phi ptr [ %i.aob, %bb.cq ], [ %i.awt, %.preheader383.loopexit.i ] ; 2 uses
  %.0302.lcssa.i = phi i32 [ 0, %bb.cq ], [ %i.awa, %.preheader383.loopexit.i ] ; 3 uses
  %i.awb = or disjoint i32 %.0302.lcssa.i, 7
  %i.awc = icmp slt i32 %i.awb, %i.az
  br i1 %i.awc, label %.lr.ph389.preheader.i, label %.preheader382.i

.lr.ph389.preheader.i:                            ; preds = %.preheader383.i
  %i.awd = zext nneg i32 %.0302.lcssa.i to i64
  br label %.lr.ph389.i

.lr.ph.i140:                                      ; preds = %bb.cq, %.lr.ph.i140
  %indvars.iv.i141 = phi i64 [ %indvars.iv.next.i142, %.lr.ph.i140 ], [ 0, %bb.cq ] ; 4 uses
  %.0306384.i = phi ptr [ %i.awt, %.lr.ph.i140 ], [ %i.aob, %bb.cq ] ; 3 uses
  %i.awe = getelementptr inbounds nuw [4 x i8], ptr %i.aoc, i64 %indvars.iv.i141
  %i.awf = load <16 x i32>, ptr %i.awe, align 1, !tbaa !20 ; 3 uses
  %i.awg = add <16 x i32> %i.awf, splat (i32 1)   ; 2 uses
  %i.awh = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.avv, <16 x i32> %i.awf, <16 x i1> splat (i1 true), i32 4)
  %i.awi = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.avv, <16 x i32> %i.awg, <16 x i1> splat (i1 true), i32 4)
  %i.awj = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.avz, <16 x i32> %i.awf, <16 x i1> splat (i1 true), i32 4)
  %i.awk = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.avz, <16 x i32> %i.awg, <16 x i1> splat (i1 true), i32 4)
  %i.awl = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %.0306384.i, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.awm = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %.0306384.i, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.awn = fmul fast <16 x float> %i.awl, %i.awh
  %i.awo = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.awi, <16 x float> nofpclass(nan inf) %i.awm, <16 x float> nofpclass(nan inf) %i.awn)
  %i.awp = fmul fast <16 x float> %i.awl, %i.awj
  %i.awq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.awk, <16 x float> nofpclass(nan inf) %i.awm, <16 x float> nofpclass(nan inf) %i.awp)
  %i.awr = getelementptr inbounds nuw [4 x i8], ptr %.0296421.i, i64 %indvars.iv.i141
  store <16 x float> %i.awo, ptr %i.awr, align 1, !tbaa !20
  %i.aws = getelementptr inbounds nuw [4 x i8], ptr %.0298420.i, i64 %indvars.iv.i141
  store <16 x float> %i.awq, ptr %i.aws, align 1, !tbaa !20
  %i.awt = getelementptr inbounds nuw i8, ptr %.0306384.i, i64 128 ; 2 uses
  %indvars.iv.next.i142 = add nuw nsw i64 %indvars.iv.i141, 16 ; 3 uses
  %i.awu = icmp slt i64 %indvars.iv.next.i142, %invariant.op.i113
  br i1 %i.awu, label %.lr.ph.i140, label %.preheader383.loopexit.i, !llvm.loop !192

.preheader382.loopexit.i:                         ; preds = %.lr.ph389.i
  %i.awv = trunc nuw nsw i64 %indvars.iv.next439.i to i32
  br label %.preheader382.i

.preheader382.i:                                  ; preds = %.preheader382.loopexit.i, %.preheader383.i
  %.1307.lcssa.i = phi ptr [ %.0306.lcssa.i, %.preheader383.i ], [ %i.axp, %.preheader382.loopexit.i ] ; 2 uses
  %.1303.lcssa.i = phi i32 [ %.0302.lcssa.i, %.preheader383.i ], [ %i.awv, %.preheader382.loopexit.i ] ; 3 uses
  %i.aww = or disjoint i32 %.1303.lcssa.i, 3      ; 2 uses
  %i.awx = icmp slt i32 %i.aww, %i.az
  br i1 %i.awx, label %.lr.ph394.preheader.i, label %.preheader380.i

.lr.ph394.preheader.i:                            ; preds = %.preheader382.i
  %i.awy = zext nneg i32 %.1303.lcssa.i to i64
  %i.awz = zext nneg i32 %i.aww to i64
  br label %.lr.ph394.i

.lr.ph389.i:                                      ; preds = %.lr.ph389.i, %.lr.ph389.preheader.i
  %indvars.iv438.i = phi i64 [ %i.awd, %.lr.ph389.preheader.i ], [ %indvars.iv.next439.i, %.lr.ph389.i ] ; 4 uses
  %.1307387.i = phi ptr [ %.0306.lcssa.i, %.lr.ph389.preheader.i ], [ %i.axp, %.lr.ph389.i ] ; 3 uses
  %i.axa = getelementptr inbounds nuw [4 x i8], ptr %i.aoc, i64 %indvars.iv438.i
  %i.axb = load <8 x i32>, ptr %i.axa, align 1, !tbaa !20 ; 3 uses
  %i.axc = add <8 x i32> %i.axb, splat (i32 1)    ; 2 uses
  %i.axd = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.avv, <8 x i32> %i.axb, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.axe = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.avv, <8 x i32> %i.axc, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.axf = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.avz, <8 x i32> %i.axb, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.axg = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.avz, <8 x i32> %i.axc, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.axh = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %.1307387.i, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.axi = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %.1307387.i, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.axj = fmul fast <8 x float> %i.axh, %i.axd
  %i.axk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.axe, <8 x float> nofpclass(nan inf) %i.axi, <8 x float> nofpclass(nan inf) %i.axj)
  %i.axl = fmul fast <8 x float> %i.axh, %i.axf
  %i.axm = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.axg, <8 x float> nofpclass(nan inf) %i.axi, <8 x float> nofpclass(nan inf) %i.axl)
  %i.axn = getelementptr inbounds nuw [4 x i8], ptr %.0296421.i, i64 %indvars.iv438.i
  store <8 x float> %i.axk, ptr %i.axn, align 1, !tbaa !20
  %i.axo = getelementptr inbounds nuw [4 x i8], ptr %.0298420.i, i64 %indvars.iv438.i
  store <8 x float> %i.axm, ptr %i.axo, align 1, !tbaa !20
  %i.axp = getelementptr inbounds nuw i8, ptr %.1307387.i, i64 64 ; 2 uses
  %indvars.iv.next439.i = add nuw nsw i64 %indvars.iv438.i, 8 ; 3 uses
  %i.axq = icmp slt i64 %indvars.iv.next439.i, %invariant.op482.i
  br i1 %i.axq, label %.lr.ph389.i, label %.preheader382.loopexit.i, !llvm.loop !193

.preheader380.loopexit.i:                         ; preds = %.lr.ph394.i
  %i.axr = trunc nuw i64 %indvars.iv.next442.i to i32
  br label %.preheader380.i

.preheader380.i:                                  ; preds = %.preheader380.loopexit.i, %.preheader382.i
  %.2308.lcssa.i = phi ptr [ %.1307.lcssa.i, %.preheader382.i ], [ %i.bal, %.preheader380.loopexit.i ]
  %.2304.lcssa.i = phi i32 [ %.1303.lcssa.i, %.preheader382.i ], [ %i.axr, %.preheader380.loopexit.i ] ; 2 uses
  %i.axs = icmp slt i32 %.2304.lcssa.i, %i.az
  br i1 %i.axs, label %.lr.ph399.preheader.i, label %.loopexit.i114

.lr.ph399.preheader.i:                            ; preds = %.preheader380.i
  %i.axt = zext i32 %.2304.lcssa.i to i64
  br label %.lr.ph399.i

.lr.ph394.i:                                      ; preds = %.lr.ph394.i, %.lr.ph394.preheader.i
  %indvars.iv441.i = phi i64 [ %i.awy, %.lr.ph394.preheader.i ], [ %indvars.iv.next442.i, %.lr.ph394.i ] ; 4 uses
  %i.axu = phi i64 [ %i.awz, %.lr.ph394.preheader.i ], [ %i.bam, %.lr.ph394.i ]
  %.2308392.i = phi ptr [ %.1307.lcssa.i, %.lr.ph394.preheader.i ], [ %i.bal, %.lr.ph394.i ] ; 2 uses
  %i.axv = getelementptr inbounds nuw [4 x i8], ptr %i.aoc, i64 %indvars.iv441.i ; 3 uses
  %i.axw = load i32, ptr %i.axv, align 4, !tbaa !28
  %i.axx = sext i32 %i.axw to i64                 ; 2 uses
  %i.axy = getelementptr inbounds [4 x i8], ptr %i.avv, i64 %i.axx ; 2 uses
  %i.axz = load float, ptr %i.axy, align 4, !tbaa !60
  %i.aya = getelementptr inbounds nuw i8, ptr %i.axv, i64 4
  %i.ayb = load i32, ptr %i.aya, align 4, !tbaa !28
  %i.ayc = sext i32 %i.ayb to i64                 ; 2 uses
  %i.ayd = getelementptr inbounds [4 x i8], ptr %i.avv, i64 %i.ayc ; 2 uses
  %i.aye = load float, ptr %i.ayd, align 4, !tbaa !60
  %i.ayf = getelementptr inbounds nuw i8, ptr %i.axv, i64 8
  %i.ayg = load i32, ptr %i.ayf, align 4, !tbaa !28
  %i.ayh = sext i32 %i.ayg to i64                 ; 2 uses
  %i.ayi = getelementptr inbounds [4 x i8], ptr %i.avv, i64 %i.ayh ; 2 uses
  %i.ayj = load float, ptr %i.ayi, align 4, !tbaa !60
  %i.ayk = getelementptr inbounds nuw [4 x i8], ptr %i.aoc, i64 %i.axu
  %i.ayl = load i32, ptr %i.ayk, align 4, !tbaa !28
  %i.aym = sext i32 %i.ayl to i64                 ; 2 uses
  %i.ayn = getelementptr inbounds [4 x i8], ptr %i.avv, i64 %i.aym ; 2 uses
  %i.ayo = load float, ptr %i.ayn, align 4, !tbaa !60
  %i.ayp = insertelement <4 x float> poison, float %i.axz, i64 0
  %i.ayq = insertelement <4 x float> %i.ayp, float %i.aye, i64 1
  %i.ayr = insertelement <4 x float> %i.ayq, float %i.ayj, i64 2
  %i.ays = insertelement <4 x float> %i.ayr, float %i.ayo, i64 3
  %i.ayt = getelementptr i8, ptr %i.axy, i64 4
  %i.ayu = load float, ptr %i.ayt, align 4, !tbaa !60
  %i.ayv = getelementptr i8, ptr %i.ayd, i64 4
  %i.ayw = load float, ptr %i.ayv, align 4, !tbaa !60
  %i.ayx = getelementptr i8, ptr %i.ayi, i64 4
  %i.ayy = load float, ptr %i.ayx, align 4, !tbaa !60
  %i.ayz = getelementptr i8, ptr %i.ayn, i64 4
  %i.aza = load float, ptr %i.ayz, align 4, !tbaa !60
  %i.azb = insertelement <4 x float> poison, float %i.ayu, i64 0
  %i.azc = insertelement <4 x float> %i.azb, float %i.ayw, i64 1
  %i.azd = insertelement <4 x float> %i.azc, float %i.ayy, i64 2
  %i.aze = insertelement <4 x float> %i.azd, float %i.aza, i64 3
  %i.azf = getelementptr inbounds [4 x i8], ptr %i.avz, i64 %i.axx ; 2 uses
  %i.azg = load float, ptr %i.azf, align 4, !tbaa !60
  %i.azh = getelementptr inbounds [4 x i8], ptr %i.avz, i64 %i.ayc ; 2 uses
  %i.azi = load float, ptr %i.azh, align 4, !tbaa !60
  %i.azj = getelementptr inbounds [4 x i8], ptr %i.avz, i64 %i.ayh ; 2 uses
  %i.azk = load float, ptr %i.azj, align 4, !tbaa !60
  %i.azl = getelementptr inbounds [4 x i8], ptr %i.avz, i64 %i.aym ; 2 uses
  %i.azm = load float, ptr %i.azl, align 4, !tbaa !60
  %i.azn = insertelement <4 x float> poison, float %i.azg, i64 0
  %i.azo = insertelement <4 x float> %i.azn, float %i.azi, i64 1
  %i.azp = insertelement <4 x float> %i.azo, float %i.azk, i64 2
  %i.azq = insertelement <4 x float> %i.azp, float %i.azm, i64 3
  %i.azr = getelementptr i8, ptr %i.azf, i64 4
  %i.azs = load float, ptr %i.azr, align 4, !tbaa !60
  %i.azt = getelementptr i8, ptr %i.azh, i64 4
  %i.azu = load float, ptr %i.azt, align 4, !tbaa !60
  %i.azv = getelementptr i8, ptr %i.azj, i64 4
  %i.azw = load float, ptr %i.azv, align 4, !tbaa !60
  %i.azx = getelementptr i8, ptr %i.azl, i64 4
  %i.azy = load float, ptr %i.azx, align 4, !tbaa !60
  %i.azz = insertelement <4 x float> poison, float %i.azs, i64 0
  %i.baa = insertelement <4 x float> %i.azz, float %i.azu, i64 1
  %i.bab = insertelement <4 x float> %i.baa, float %i.azw, i64 2
  %i.bac = insertelement <4 x float> %i.bab, float %i.azy, i64 3
  %19 = load <8 x float>, ptr %.2308392.i, align 1, !tbaa !20 ; 2 uses
  %i.bad = shufflevector <8 x float> %19, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.bae = shufflevector <8 x float> %19, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.baf = fmul fast <4 x float> %i.bad, %i.ays
  %i.bag = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aze, <4 x float> nofpclass(nan inf) %i.bae, <4 x float> nofpclass(nan inf) %i.baf)
  %i.bah = fmul fast <4 x float> %i.bad, %i.azq
  %i.bai = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bac, <4 x float> nofpclass(nan inf) %i.bae, <4 x float> nofpclass(nan inf) %i.bah)
  %i.baj = getelementptr inbounds nuw [4 x i8], ptr %.0296421.i, i64 %indvars.iv441.i
  store <4 x float> %i.bag, ptr %i.baj, align 1, !tbaa !20
  %i.bak = getelementptr inbounds nuw [4 x i8], ptr %.0298420.i, i64 %indvars.iv441.i
  store <4 x float> %i.bai, ptr %i.bak, align 1, !tbaa !20
  %i.bal = getelementptr inbounds nuw i8, ptr %.2308392.i, i64 32 ; 2 uses
  %indvars.iv.next442.i = add nuw nsw i64 %indvars.iv441.i, 4 ; 3 uses
  %i.bam = or disjoint i64 %indvars.iv.next442.i, 3 ; 2 uses
  %i.ban = trunc nuw i64 %i.bam to i32
  %i.bao = icmp sgt i32 %i.az, %i.ban
  br i1 %i.bao, label %.lr.ph394.i, label %.preheader380.loopexit.i, !llvm.loop !194

.lr.ph399.i:                                      ; preds = %.lr.ph399.i, %.lr.ph399.preheader.i
  %indvars.iv444.i = phi i64 [ %i.axt, %.lr.ph399.preheader.i ], [ %indvars.iv.next445.i, %.lr.ph399.i ] ; 4 uses
  %.3309397.i = phi ptr [ %.2308.lcssa.i, %.lr.ph399.preheader.i ], [ %i.bbl, %.lr.ph399.i ] ; 3 uses
  %i.bap = getelementptr inbounds nuw [4 x i8], ptr %i.aoc, i64 %indvars.iv444.i
  %i.baq = load i32, ptr %i.bap, align 4, !tbaa !28
  %i.bar = sext i32 %i.baq to i64                 ; 2 uses
  %i.bas = getelementptr inbounds [4 x i8], ptr %i.avv, i64 %i.bar ; 2 uses
  %i.bat = getelementptr inbounds [4 x i8], ptr %i.avz, i64 %i.bar ; 2 uses
  %i.bau = load float, ptr %.3309397.i, align 4, !tbaa !60 ; 2 uses
  %i.bav = getelementptr inbounds nuw i8, ptr %.3309397.i, i64 4
  %i.baw = load float, ptr %i.bav, align 4, !tbaa !60 ; 2 uses
  %i.bax = load float, ptr %i.bas, align 4, !tbaa !60
  %i.bay = fmul fast float %i.bax, %i.bau
  %i.baz = getelementptr inbounds nuw i8, ptr %i.bas, i64 4
  %i.bba = load float, ptr %i.baz, align 4, !tbaa !60
  %i.bbb = fmul fast float %i.bba, %i.baw
  %i.bbc = fadd fast float %i.bbb, %i.bay
  %i.bbd = getelementptr inbounds nuw [4 x i8], ptr %.0296421.i, i64 %indvars.iv444.i
  store float %i.bbc, ptr %i.bbd, align 4, !tbaa !60
  %i.bbe = load float, ptr %i.bat, align 4, !tbaa !60
  %i.bbf = fmul fast float %i.bbe, %i.bau
  %i.bbg = getelementptr inbounds nuw i8, ptr %i.bat, i64 4
  %i.bbh = load float, ptr %i.bbg, align 4, !tbaa !60
  %i.bbi = fmul fast float %i.bbh, %i.baw
  %i.bbj = fadd fast float %i.bbi, %i.bbf
  %i.bbk = getelementptr inbounds nuw [4 x i8], ptr %.0298420.i, i64 %indvars.iv444.i
  store float %i.bbj, ptr %i.bbk, align 4, !tbaa !60
  %i.bbl = getelementptr inbounds nuw i8, ptr %.3309397.i, i64 8
  %indvars.iv.next445.i = add nuw nsw i64 %indvars.iv444.i, 1 ; 2 uses
  %i.bbm = trunc nuw i64 %indvars.iv.next445.i to i32
  %i.bbn = icmp sgt i32 %i.az, %i.bbm
  br i1 %i.bbn, label %.lr.ph399.i, label %.loopexit.i114, !llvm.loop !195

.loopexit.i114:                                   ; preds = %.lr.ph399.i, %.lr.ph417.i.prol.loopexit, %.lr.ph417.i, %.preheader380.i, %.preheader.i143, %bb.cn
  %.1299.i = phi ptr [ %.0298420.i, %bb.cn ], [ %.0296421.i, %.preheader.i143 ], [ %.0298420.i, %.preheader380.i ], [ %.0296421.i, %.lr.ph417.i.prol.loopexit ], [ %.0296421.i, %.lr.ph417.i ], [ %.0298420.i, %.lr.ph399.i ] ; 8 uses
  %.1297.i = phi ptr [ %.0296421.i, %bb.cn ], [ %.0298420.i, %.preheader.i143 ], [ %.0296421.i, %.preheader380.i ], [ %.0298420.i, %.lr.ph417.i.prol.loopexit ], [ %.0298420.i, %.lr.ph417.i ], [ %.0296421.i, %.lr.ph399.i ] ; 8 uses
  %.1297.i377 = ptrtoaddr ptr %.1297.i to i64
  %.1299.i378 = ptrtoaddr ptr %.1299.i to i64
  %i.bbo = mul i64 %i.aok, %indvars.iv459.i       ; 2 uses
  %i.bbp = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bbo ; 6 uses
  %i.bbq = load float, ptr %.0422.i, align 4, !tbaa !60 ; 6 uses
  %i.bbr = getelementptr inbounds nuw i8, ptr %.0422.i, i64 4
  %i.bbs = load float, ptr %i.bbr, align 4, !tbaa !60 ; 6 uses
  %i.bbt = insertelement <16 x float> poison, float %i.bbq, i64 0
  %i.bbu = shufflevector <16 x float> %i.bbt, <16 x float> poison, <16 x i32> zeroinitializer
  %i.bbv = insertelement <16 x float> poison, float %i.bbs, i64 0
  %i.bbw = shufflevector <16 x float> %i.bbv, <16 x float> poison, <16 x i32> zeroinitializer
  br i1 %i.aoi, label %.lr.ph.i.i136, label %._crit_edge.i.i115

.lr.ph.i.i136:                                    ; preds = %.loopexit.i114, %.lr.ph.i.i136
  %indvars.iv.i.i137 = phi i64 [ %indvars.iv.next.i.i138, %.lr.ph.i.i136 ], [ 0, %.loopexit.i114 ] ; 4 uses
  %i.bbx = getelementptr inbounds nuw [4 x i8], ptr %.1297.i, i64 %indvars.iv.i.i137
  %i.bby = load <16 x float>, ptr %i.bbx, align 1, !tbaa !20
  %i.bbz = getelementptr inbounds nuw [4 x i8], ptr %.1299.i, i64 %indvars.iv.i.i137
  %i.bca = load <16 x float>, ptr %i.bbz, align 1, !tbaa !20
  %i.bcb = fmul fast <16 x float> %i.bby, %i.bbu
  %i.bcc = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bca, <16 x float> nofpclass(nan inf) %i.bbw, <16 x float> nofpclass(nan inf) %i.bcb)
  %i.bcd = getelementptr inbounds nuw [4 x i8], ptr %i.bbp, i64 %indvars.iv.i.i137
  store <16 x float> %i.bcc, ptr %i.bcd, align 1, !tbaa !20
  %indvars.iv.next.i.i138 = add nuw nsw i64 %indvars.iv.i.i137, 16 ; 3 uses
  %i.bce = or disjoint i64 %indvars.iv.next.i.i138, 15
  %i.bcf = icmp samesign ult i64 %i.bce, %i.aoj
  br i1 %i.bcf, label %.lr.ph.i.i136, label %._crit_edge.loopexit.i.i139, !llvm.loop !163

._crit_edge.loopexit.i.i139:                      ; preds = %.lr.ph.i.i136
  %i.bcg = trunc nuw nsw i64 %indvars.iv.next.i.i138 to i32
  br label %._crit_edge.i.i115

._crit_edge.i.i115:                               ; preds = %._crit_edge.loopexit.i.i139, %.loopexit.i114
  %.0.lcssa.i.i116 = phi i32 [ 0, %.loopexit.i114 ], [ %i.bcg, %._crit_edge.loopexit.i.i139 ] ; 3 uses
  %i.bch = insertelement <8 x float> poison, float %i.bbq, i64 0
  %i.bci = shufflevector <8 x float> %i.bch, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bcj = insertelement <8 x float> poison, float %i.bbs, i64 0
  %i.bck = shufflevector <8 x float> %i.bcj, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bcl = or disjoint i32 %.0.lcssa.i.i116, 7
  %i.bcm = icmp slt i32 %i.bcl, %i.az
  br i1 %i.bcm, label %.lr.ph62.preheader.i.i131, label %._crit_edge63.i.i117

.lr.ph62.preheader.i.i131:                        ; preds = %._crit_edge.i.i115
  %i.bcn = zext nneg i32 %.0.lcssa.i.i116 to i64
  br label %.lr.ph62.i.i132

.lr.ph62.i.i132:                                  ; preds = %.lr.ph62.i.i132, %.lr.ph62.preheader.i.i131
  %indvars.iv75.i.i133 = phi i64 [ %i.bcn, %.lr.ph62.preheader.i.i131 ], [ %indvars.iv.next76.i.i134, %.lr.ph62.i.i132 ] ; 4 uses
  %i.bco = getelementptr inbounds nuw [4 x i8], ptr %.1297.i, i64 %indvars.iv75.i.i133
  %i.bcp = load <8 x float>, ptr %i.bco, align 1, !tbaa !20
  %i.bcq = getelementptr inbounds nuw [4 x i8], ptr %.1299.i, i64 %indvars.iv75.i.i133
  %i.bcr = load <8 x float>, ptr %i.bcq, align 1, !tbaa !20
  %i.bcs = fmul fast <8 x float> %i.bcp, %i.bci
  %i.bct = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bcr, <8 x float> nofpclass(nan inf) %i.bck, <8 x float> nofpclass(nan inf) %i.bcs)
  %i.bcu = getelementptr inbounds nuw [4 x i8], ptr %i.bbp, i64 %indvars.iv75.i.i133
  store <8 x float> %i.bct, ptr %i.bcu, align 1, !tbaa !20
  %indvars.iv.next76.i.i134 = add nuw nsw i64 %indvars.iv75.i.i133, 8 ; 3 uses
  %i.bcv = icmp slt i64 %indvars.iv.next76.i.i134, %invariant.op.i.i111
  br i1 %i.bcv, label %.lr.ph62.i.i132, label %._crit_edge63.loopexit.i.i135, !llvm.loop !164

._crit_edge63.loopexit.i.i135:                    ; preds = %.lr.ph62.i.i132
  %i.bcw = trunc nuw nsw i64 %indvars.iv.next76.i.i134 to i32
  br label %._crit_edge63.i.i117

._crit_edge63.i.i117:                             ; preds = %._crit_edge63.loopexit.i.i135, %._crit_edge.i.i115
  %.1.lcssa.i.i118 = phi i32 [ %.0.lcssa.i.i116, %._crit_edge.i.i115 ], [ %i.bcw, %._crit_edge63.loopexit.i.i135 ] ; 3 uses
  %i.bcx = insertelement <4 x float> poison, float %i.bbq, i64 0
  %i.bcy = shufflevector <4 x float> %i.bcx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bcz = insertelement <4 x float> poison, float %i.bbs, i64 0
  %i.bda = shufflevector <4 x float> %i.bcz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bdb = or disjoint i32 %.1.lcssa.i.i118, 3
  %i.bdc = icmp slt i32 %i.bdb, %i.az
  br i1 %i.bdc, label %.lr.ph67.preheader.i.i127, label %.preheader.i.i119

.lr.ph67.preheader.i.i127:                        ; preds = %._crit_edge63.i.i117
  %i.bdd = zext nneg i32 %.1.lcssa.i.i118 to i64
  br label %.lr.ph67.i.i128

.preheader.i.i119:                                ; preds = %.lr.ph67.i.i128, %._crit_edge63.i.i117
  %.2.lcssa.i.i120 = phi i32 [ %.1.lcssa.i.i118, %._crit_edge63.i.i117 ], [ %i.bff, %.lr.ph67.i.i128 ] ; 3 uses
  %i.bde = icmp slt i32 %.2.lcssa.i.i120, %i.az
  br i1 %i.bde, label %iter.check, label %_ZN4ncnnL16vresize_bilinearEPKfS1_Pfiff.exit.i121

iter.check:                                       ; preds = %.preheader.i.i119
  %i.bdf = zext i32 %.2.lcssa.i.i120 to i64       ; 6 uses
  %i.bdg = xor i32 %.2.lcssa.i.i120, -1
  %i.bdh = add i32 %i.az, %i.bdg                  ; 3 uses
  %i.bdi = zext i32 %i.bdh to i64
  %i.bdj = add nuw nsw i64 %i.bdi, 1              ; 5 uses
  %min.iters.check = icmp ult i32 %i.bdh, 7
  br i1 %min.iters.check, label %.lr.ph70.i.i124.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bdk = add i64 %i.aom, %i.bbo                 ; 2 uses
  %i.bdl = sub i64 %.1299.i378, %i.bdk
  %diff.check = icmp ugt i64 %i.bdl, -256
  %i.bdm = sub i64 %.1297.i377, %i.bdk
  %diff.check379 = icmp ugt i64 %i.bdm, -256
  %conflict.rdx = or i1 %diff.check, %diff.check379
  br i1 %conflict.rdx, label %.lr.ph70.i.i124.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check380 = icmp ult i32 %i.bdh, 63
  br i1 %min.iters.check380, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bdn = and i64 %i.bdj, 56
  %n.vec = and i64 %i.bdj, 8589934528             ; 4 uses
  %i.bdo = add nuw nsw i64 %n.vec, %i.bdf
  %broadcast.splatinsert = insertelement <16 x float> poison, float %i.bbq, i64 0
  %broadcast.splat = shufflevector <16 x float> %broadcast.splatinsert, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert381 = insertelement <16 x float> poison, float %i.bbs, i64 0
  %broadcast.splat382 = shufflevector <16 x float> %broadcast.splatinsert381, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bdp = add nuw i64 %index, %i.bdf             ; 3 uses
  %i.bdq = getelementptr inbounds nuw [4 x i8], ptr %.1297.i, i64 %i.bdp ; 4 uses
  %i.bdr = getelementptr inbounds nuw i8, ptr %i.bdq, i64 64
  %i.bds = getelementptr inbounds nuw i8, ptr %i.bdq, i64 128
  %i.bdt = getelementptr inbounds nuw i8, ptr %i.bdq, i64 192
  %wide.load = load <16 x float>, ptr %i.bdq, align 4, !tbaa !60
  %wide.load383 = load <16 x float>, ptr %i.bdr, align 4, !tbaa !60
  %wide.load384 = load <16 x float>, ptr %i.bds, align 4, !tbaa !60
  %wide.load385 = load <16 x float>, ptr %i.bdt, align 4, !tbaa !60
  %i.bdu = fmul fast <16 x float> %wide.load, %broadcast.splat
  %i.bdv = fmul fast <16 x float> %wide.load383, %broadcast.splat
  %i.bdw = fmul fast <16 x float> %wide.load384, %broadcast.splat
  %i.bdx = fmul fast <16 x float> %wide.load385, %broadcast.splat
  %i.bdy = getelementptr inbounds nuw [4 x i8], ptr %.1299.i, i64 %i.bdp ; 4 uses
  %i.bdz = getelementptr inbounds nuw i8, ptr %i.bdy, i64 64
  %i.bea = getelementptr inbounds nuw i8, ptr %i.bdy, i64 128
  %i.beb = getelementptr inbounds nuw i8, ptr %i.bdy, i64 192
  %wide.load386 = load <16 x float>, ptr %i.bdy, align 4, !tbaa !60
  %wide.load387 = load <16 x float>, ptr %i.bdz, align 4, !tbaa !60
  %wide.load388 = load <16 x float>, ptr %i.bea, align 4, !tbaa !60
  %wide.load389 = load <16 x float>, ptr %i.beb, align 4, !tbaa !60
  %i.bec = fmul fast <16 x float> %wide.load386, %broadcast.splat382
  %i.bed = fmul fast <16 x float> %wide.load387, %broadcast.splat382
  %i.bee = fmul fast <16 x float> %wide.load388, %broadcast.splat382
  %i.bef = fmul fast <16 x float> %wide.load389, %broadcast.splat382
  %i.beg = fadd fast <16 x float> %i.bec, %i.bdu
  %i.beh = fadd fast <16 x float> %i.bed, %i.bdv
  %i.bei = fadd fast <16 x float> %i.bee, %i.bdw
  %i.bej = fadd fast <16 x float> %i.bef, %i.bdx
  %i.bek = getelementptr inbounds nuw [4 x i8], ptr %i.bbp, i64 %i.bdp ; 4 uses
  %i.bel = getelementptr inbounds nuw i8, ptr %i.bek, i64 64
  %i.bem = getelementptr inbounds nuw i8, ptr %i.bek, i64 128
end_hunk_0
