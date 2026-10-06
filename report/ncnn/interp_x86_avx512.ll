Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/interp_x86_avx512?download=true
inline.NumInlined: 111
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZNK4ncnn17Interp_x86_avx5127forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.8:bb.a
  br label %_ZN4ncnnL21resize_bilinear_imageERKNS_3MatERS0_PfPiS4_S5_.exit

bb.cl:                                            ; preds = %bb.ci
  %i.app = landingpad { ptr, i32 }
          catch ptr null
  %i.apq = extractvalue { ptr, i32 } %i.app, 0
  call void @__clang_call_terminate(ptr %i.apq) #27
  unreachable

bb.cm:                                            ; preds = %.noexc145
  %i.apr = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #6
  %i.aps = load ptr, ptr %i.ak, align 8, !tbaa !41 ; 2 uses
  %.not.i345.i = icmp eq ptr %i.aps, null
  br i1 %.not.i345.i, label %_ZN4ncnn3MatD2Ev.exit.i109, label %bb.cr

bb.cn:                                            ; preds = %_ZN4ncnnL16vresize_bilinearEPKfS1_Pfiff.exit.i121, %.lr.ph423.i
  %indvars.iv459.i = phi i64 [ 0, %.lr.ph423.i ], [ %indvars.iv.next460.i, %_ZN4ncnnL16vresize_bilinearEPKfS1_Pfiff.exit.i121 ] ; 4 uses
  %.0422.i = phi ptr [ %i.aoh, %.lr.ph423.i ], [ %i.bfy, %_ZN4ncnnL16vresize_bilinearEPKfS1_Pfiff.exit.i121 ] ; 3 uses
  %.0296421.i = phi ptr [ %i.aol, %.lr.ph423.i ], [ %.1297.i, %_ZN4ncnnL16vresize_bilinearEPKfS1_Pfiff.exit.i121 ] ; 18 uses
  %.0298420.i = phi ptr [ %i.aok, %.lr.ph423.i ], [ %.1299.i, %_ZN4ncnnL16vresize_bilinearEPKfS1_Pfiff.exit.i121 ] ; 10 uses
  %.0300419.i = phi i32 [ -2, %.lr.ph423.i ], [ %i.apw, %_ZN4ncnnL16vresize_bilinearEPKfS1_Pfiff.exit.i121 ] ; 2 uses
  %i.apt = mul i64 %i.aor, %indvars.iv459.i
  %i.apu = add i64 %i.aoq, %i.apt                 ; 2 uses
  %i.apv = getelementptr inbounds nuw [4 x i8], ptr %i.aoi, i64 %indvars.iv459.i
  %i.apw = load i32, ptr %i.apv, align 4, !tbaa !28 ; 6 uses
  %i.apx = icmp eq i32 %i.apw, %.0300419.i
  br i1 %i.apx, label %.loopexit.i114, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.apy = add nsw i32 %.0300419.i, 1
  %i.apz = icmp eq i32 %i.apw, %i.apy
  br i1 %i.apz, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.aqa = add nsw i32 %i.apw, 1
  %i.aqb = sext i32 %i.aqa to i64
  %i.aqc = mul i64 %i.aop, %i.aqb
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.aqc ; 15 uses
  br i1 %i.aom, label %.lr.ph402.i.preheader, label %.preheader379.i

.lr.ph402.i.preheader:                            ; preds = %bb.cp
  br i1 %i.aov, label %.lr.ph402.i.epil.preheader, label %.lr.ph402.i

.preheader379.loopexit.i.unr-lcssa:               ; preds = %.lr.ph402.i
  br i1 %lcmp.mod.not.not, label %.lr.ph402.i.epil.preheader, label %.preheader379.loopexit.i

.lr.ph402.i.epil.preheader:                       ; preds = %.preheader379.loopexit.i.unr-lcssa, %.lr.ph402.i.preheader
  %indvars.iv447.i.epil.init = phi i64 [ 0, %.lr.ph402.i.preheader ], [ %indvars.iv.next448.i.1, %.preheader379.loopexit.i.unr-lcssa ] ; 3 uses
  %.0310401.i.epil.init = phi ptr [ %i.aof, %.lr.ph402.i.preheader ], [ %i.aro, %.preheader379.loopexit.i.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod560)
  %i.aqe = getelementptr inbounds nuw [4 x i8], ptr %i.aog, i64 %indvars.iv447.i.epil.init
  %i.aqf = load <16 x i32>, ptr %i.aqe, align 1, !tbaa !20 ; 2 uses
  %i.aqg = add <16 x i32> %i.aqf, splat (i32 1)
  %i.aqh = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.aqd, <16 x i32> %i.aqf, <16 x i1> splat (i1 true), i32 4)
  %i.aqi = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.aqd, <16 x i32> %i.aqg, <16 x i1> splat (i1 true), i32 4)
  %i.aqj = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %.0310401.i.epil.init, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>, <16 x i1> splat (i1 true), i32 4)
  %i.aqk = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %.0310401.i.epil.init, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>, <16 x i1> splat (i1 true), i32 4)
  %i.aql = fmul fast <16 x float> %i.aqj, %i.aqh
  %i.aqm = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aqi, <16 x float> nofpclass(nan inf) %i.aqk, <16 x float> nofpclass(nan inf) %i.aql)
  %i.aqn = getelementptr inbounds nuw [4 x i8], ptr %.0296421.i, i64 %indvars.iv447.i.epil.init
  store <16 x float> %i.aqm, ptr %i.aqn, align 1, !tbaa !20
  %i.aqo = getelementptr inbounds nuw i8, ptr %.0310401.i.epil.init, i64 128
  %indvars.iv.next448.i.epil = add nuw nsw i64 %indvars.iv447.i.epil.init, 16
  br label %.preheader379.loopexit.i

.preheader379.loopexit.i:                         ; preds = %.preheader379.loopexit.i.unr-lcssa, %.lr.ph402.i.epil.preheader
  %.lcssa554 = phi ptr [ %i.aro, %.preheader379.loopexit.i.unr-lcssa ], [ %i.aqo, %.lr.ph402.i.epil.preheader ]
  %indvars.iv.next448.i.lcssa = phi i64 [ %indvars.iv.next448.i.1, %.preheader379.loopexit.i.unr-lcssa ], [ %indvars.iv.next448.i.epil, %.lr.ph402.i.epil.preheader ]
  %i.aqp = trunc nuw nsw i64 %indvars.iv.next448.i.lcssa to i32
  br label %.preheader379.i

.preheader379.i:                                  ; preds = %.preheader379.loopexit.i, %bb.cp
  %.0314.lcssa.i = phi i32 [ 0, %bb.cp ], [ %i.aqp, %.preheader379.loopexit.i ] ; 3 uses
  %.0310.lcssa.i = phi ptr [ %i.aof, %bb.cp ], [ %.lcssa554, %.preheader379.loopexit.i ] ; 2 uses
  %i.aqq = or disjoint i32 %.0314.lcssa.i, 7
  %i.aqr = icmp slt i32 %i.aqq, %i.az
  br i1 %i.aqr, label %.lr.ph407.preheader.i, label %.preheader378.i

.lr.ph407.preheader.i:                            ; preds = %.preheader379.i
  %i.aqs = zext nneg i32 %.0314.lcssa.i to i64
  br label %.lr.ph407.i

.lr.ph402.i:                                      ; preds = %.lr.ph402.i.preheader, %.lr.ph402.i
  %indvars.iv447.i = phi i64 [ %indvars.iv.next448.i.1, %.lr.ph402.i ], [ 0, %.lr.ph402.i.preheader ] ; 4 uses
  %.0310401.i = phi ptr [ %i.aro, %.lr.ph402.i ], [ %i.aof, %.lr.ph402.i.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph402.i ], [ 0, %.lr.ph402.i.preheader ]
  %i.aqt = getelementptr inbounds nuw [4 x i8], ptr %i.aog, i64 %indvars.iv447.i
  %i.aqu = load <16 x i32>, ptr %i.aqt, align 1, !tbaa !20 ; 2 uses
  %i.aqv = add <16 x i32> %i.aqu, splat (i32 1)
  %i.aqw = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.aqd, <16 x i32> %i.aqu, <16 x i1> splat (i1 true), i32 4)
  %i.aqx = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.aqd, <16 x i32> %i.aqv, <16 x i1> splat (i1 true), i32 4)
  %i.aqy = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %.0310401.i, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>, <16 x i1> splat (i1 true), i32 4)
  %i.aqz = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %.0310401.i, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>, <16 x i1> splat (i1 true), i32 4)
  %i.ara = fmul fast <16 x float> %i.aqy, %i.aqw
  %i.arb = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aqx, <16 x float> nofpclass(nan inf) %i.aqz, <16 x float> nofpclass(nan inf) %i.ara)
  %i.arc = getelementptr inbounds nuw [4 x i8], ptr %.0296421.i, i64 %indvars.iv447.i
  store <16 x float> %i.arb, ptr %i.arc, align 1, !tbaa !20
  %i.ard = getelementptr inbounds nuw i8, ptr %.0310401.i, i64 128 ; 2 uses
  %indvars.iv.next448.i = or disjoint i64 %indvars.iv447.i, 16 ; 2 uses
  %i.are = getelementptr inbounds nuw [4 x i8], ptr %i.aog, i64 %indvars.iv.next448.i
  %i.arf = load <16 x i32>, ptr %i.are, align 1, !tbaa !20 ; 2 uses
  %i.arg = add <16 x i32> %i.arf, splat (i32 1)
  %i.arh = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.aqd, <16 x i32> %i.arf, <16 x i1> splat (i1 true), i32 4)
  %i.ari = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.aqd, <16 x i32> %i.arg, <16 x i1> splat (i1 true), i32 4)
  %i.arj = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ard, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>, <16 x i1> splat (i1 true), i32 4)
  %i.ark = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ard, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>, <16 x i1> splat (i1 true), i32 4)
  %i.arl = fmul fast <16 x float> %i.arj, %i.arh
  %i.arm = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ari, <16 x float> nofpclass(nan inf) %i.ark, <16 x float> nofpclass(nan inf) %i.arl)
  %i.arn = getelementptr inbounds nuw [4 x i8], ptr %.0296421.i, i64 %indvars.iv.next448.i
  store <16 x float> %i.arm, ptr %i.arn, align 1, !tbaa !20
  %i.aro = getelementptr inbounds nuw i8, ptr %.0310401.i, i64 256 ; 3 uses
  %indvars.iv.next448.i.1 = add nuw nsw i64 %indvars.iv447.i, 32 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader379.loopexit.i.unr-lcssa, label %.lr.ph402.i, !llvm.loop !188

.preheader378.loopexit.i:                         ; preds = %.lr.ph407.i
  %i.arp = trunc nuw nsw i64 %indvars.iv.next451.i to i32
  br label %.preheader378.i

.preheader378.i:                                  ; preds = %.preheader378.loopexit.i, %.preheader379.i
  %.1315.lcssa.i = phi i32 [ %.0314.lcssa.i, %.preheader379.i ], [ %i.arp, %.preheader378.loopexit.i ] ; 3 uses
  %.1311.lcssa.i = phi ptr [ %.0310.lcssa.i, %.preheader379.i ], [ %i.ase, %.preheader378.loopexit.i ] ; 2 uses
  %i.arq = or disjoint i32 %.1315.lcssa.i, 3      ; 2 uses
  %i.arr = icmp slt i32 %i.arq, %i.az
  br i1 %i.arr, label %.lr.ph412.preheader.i, label %.preheader.i143

.lr.ph412.preheader.i:                            ; preds = %.preheader378.i
  %i.ars = zext nneg i32 %.1315.lcssa.i to i64
  %i.art = zext nneg i32 %i.arq to i64
  br label %.lr.ph412.i

.lr.ph407.i:                                      ; preds = %.lr.ph407.i, %.lr.ph407.preheader.i
  %indvars.iv450.i = phi i64 [ %i.aqs, %.lr.ph407.preheader.i ], [ %indvars.iv.next451.i, %.lr.ph407.i ] ; 3 uses
  %.1311406.i = phi ptr [ %.0310.lcssa.i, %.lr.ph407.preheader.i ], [ %i.ase, %.lr.ph407.i ] ; 3 uses
  %i.aru = getelementptr inbounds nuw [4 x i8], ptr %i.aog, i64 %indvars.iv450.i
  %i.arv = load <8 x i32>, ptr %i.aru, align 1, !tbaa !20 ; 2 uses
  %i.arw = add <8 x i32> %i.arv, splat (i32 1)
  %i.arx = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.aqd, <8 x i32> %i.arv, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.ary = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.aqd, <8 x i32> %i.arw, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.arz = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %.1311406.i, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.asa = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %.1311406.i, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.asb = fmul fast <8 x float> %i.arz, %i.arx
  %i.asc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ary, <8 x float> nofpclass(nan inf) %i.asa, <8 x float> nofpclass(nan inf) %i.asb)
  %i.asd = getelementptr inbounds nuw [4 x i8], ptr %.0296421.i, i64 %indvars.iv450.i
  store <8 x float> %i.asc, ptr %i.asd, align 1, !tbaa !20
  %i.ase = getelementptr inbounds nuw i8, ptr %.1311406.i, i64 64 ; 2 uses
  %indvars.iv.next451.i = add nuw nsw i64 %indvars.iv450.i, 8 ; 3 uses
  %i.asf = icmp slt i64 %indvars.iv.next451.i, %invariant.op482.i
  br i1 %i.asf, label %.lr.ph407.i, label %.preheader378.loopexit.i, !llvm.loop !189

.preheader.loopexit.i144:                         ; preds = %.lr.ph412.i
  %i.asg = trunc nuw i64 %indvars.iv.next454.i to i32
  br label %.preheader.i143

.preheader.i143:                                  ; preds = %.preheader.loopexit.i144, %.preheader378.i
  %.2316.lcssa.i = phi i32 [ %.1315.lcssa.i, %.preheader378.i ], [ %i.asg, %.preheader.loopexit.i144 ] ; 4 uses
  %.2312.lcssa.i = phi ptr [ %.1311.lcssa.i, %.preheader378.i ], [ %i.auq, %.preheader.loopexit.i144 ] ; 4 uses
  %i.ash = icmp slt i32 %.2316.lcssa.i, %i.az
  br i1 %i.ash, label %.lr.ph417.preheader.i, label %.loopexit.i114

.lr.ph417.preheader.i:                            ; preds = %.preheader.i143
  %i.asi = zext i32 %.2316.lcssa.i to i64         ; 4 uses
  %i.asj = sub i32 %i.az, %.2316.lcssa.i
  %.neg = add i32 %.2316.lcssa.i, 1
  %xtraiter561 = and i32 %i.asj, 1
  %lcmp.mod562.not = icmp eq i32 %xtraiter561, 0
  br i1 %lcmp.mod562.not, label %.lr.ph417.i.prol.loopexit, label %.lr.ph417.i.prol

.lr.ph417.i.prol:                                 ; preds = %.lr.ph417.preheader.i
  %i.ask = getelementptr inbounds nuw [4 x i8], ptr %i.aog, i64 %i.asi
  %i.asl = load i32, ptr %i.ask, align 4, !tbaa !28
  %i.asm = sext i32 %i.asl to i64
  %i.asn = getelementptr inbounds [4 x i8], ptr %i.aqd, i64 %i.asm ; 2 uses
  %i.aso = load float, ptr %.2312.lcssa.i, align 4, !tbaa !60
  %i.asp = getelementptr inbounds nuw i8, ptr %.2312.lcssa.i, i64 4
  %i.asq = load float, ptr %i.asp, align 4, !tbaa !60
  %i.asr = load float, ptr %i.asn, align 4, !tbaa !60
  %i.ass = fmul fast float %i.asr, %i.aso
  %i.ast = getelementptr inbounds nuw i8, ptr %i.asn, i64 4
  %i.asu = load float, ptr %i.ast, align 4, !tbaa !60
  %i.asv = fmul fast float %i.asu, %i.asq
  %i.asw = fadd fast float %i.asv, %i.ass
  %i.asx = getelementptr inbounds nuw [4 x i8], ptr %.0296421.i, i64 %i.asi
  store float %i.asw, ptr %i.asx, align 4, !tbaa !60
  %i.asy = getelementptr inbounds nuw i8, ptr %.2312.lcssa.i, i64 8
  %indvars.iv.next457.i.prol = add nuw nsw i64 %i.asi, 1
  br label %.lr.ph417.i.prol.loopexit

.lr.ph417.i.prol.loopexit:                        ; preds = %.lr.ph417.i.prol, %.lr.ph417.preheader.i
  %indvars.iv456.i.unr = phi i64 [ %i.asi, %.lr.ph417.preheader.i ], [ %indvars.iv.next457.i.prol, %.lr.ph417.i.prol ]
  %.3313416.i.unr = phi ptr [ %.2312.lcssa.i, %.lr.ph417.preheader.i ], [ %i.asy, %.lr.ph417.i.prol ]
  %i.asz = icmp eq i32 %i.az, %.neg
  br i1 %i.asz, label %.loopexit.i114, label %.lr.ph417.i

.lr.ph412.i:                                      ; preds = %.lr.ph412.i, %.lr.ph412.preheader.i
  %indvars.iv453.i = phi i64 [ %i.ars, %.lr.ph412.preheader.i ], [ %indvars.iv.next454.i, %.lr.ph412.i ] ; 3 uses
  %i.ata = phi i64 [ %i.art, %.lr.ph412.preheader.i ], [ %i.aur, %.lr.ph412.i ]
  %.2312411.i = phi ptr [ %.1311.lcssa.i, %.lr.ph412.preheader.i ], [ %i.auq, %.lr.ph412.i ] ; 2 uses
  %i.atb = getelementptr inbounds nuw [4 x i8], ptr %i.aog, i64 %indvars.iv453.i ; 3 uses
  %i.atc = load i32, ptr %i.atb, align 4, !tbaa !28
  %i.atd = sext i32 %i.atc to i64
  %i.ate = getelementptr inbounds [4 x i8], ptr %i.aqd, i64 %i.atd ; 2 uses
  %i.atf = load float, ptr %i.ate, align 4, !tbaa !60
  %i.atg = getelementptr inbounds nuw i8, ptr %i.atb, i64 4
  %i.ath = load i32, ptr %i.atg, align 4, !tbaa !28
  %i.ati = sext i32 %i.ath to i64
  %i.atj = getelementptr inbounds [4 x i8], ptr %i.aqd, i64 %i.ati ; 2 uses
  %i.atk = load float, ptr %i.atj, align 4, !tbaa !60
  %i.atl = getelementptr inbounds nuw i8, ptr %i.atb, i64 8
  %i.atm = load i32, ptr %i.atl, align 4, !tbaa !28
  %i.atn = sext i32 %i.atm to i64
  %i.ato = getelementptr inbounds [4 x i8], ptr %i.aqd, i64 %i.atn ; 2 uses
  %i.atp = load float, ptr %i.ato, align 4, !tbaa !60
  %i.atq = getelementptr inbounds nuw [4 x i8], ptr %i.aog, i64 %i.ata
  %i.atr = load i32, ptr %i.atq, align 4, !tbaa !28
  %i.ats = sext i32 %i.atr to i64
  %i.att = getelementptr inbounds [4 x i8], ptr %i.aqd, i64 %i.ats ; 2 uses
  %i.atu = load float, ptr %i.att, align 4, !tbaa !60
  %i.atv = insertelement <4 x float> poison, float %i.atf, i64 0
  %i.atw = insertelement <4 x float> %i.atv, float %i.atk, i64 1
  %i.atx = insertelement <4 x float> %i.atw, float %i.atp, i64 2
  %i.aty = insertelement <4 x float> %i.atx, float %i.atu, i64 3
  %i.atz = getelementptr i8, ptr %i.ate, i64 4
  %i.aua = load float, ptr %i.atz, align 4, !tbaa !60
  %i.aub = getelementptr i8, ptr %i.atj, i64 4
  %i.auc = load float, ptr %i.aub, align 4, !tbaa !60
  %i.aud = getelementptr i8, ptr %i.ato, i64 4
  %i.aue = load float, ptr %i.aud, align 4, !tbaa !60
  %i.auf = getelementptr i8, ptr %i.att, i64 4
  %i.aug = load float, ptr %i.auf, align 4, !tbaa !60
  %i.auh = insertelement <4 x float> poison, float %i.aua, i64 0
  %i.aui = insertelement <4 x float> %i.auh, float %i.auc, i64 1
  %i.auj = insertelement <4 x float> %i.aui, float %i.aue, i64 2
  %i.auk = insertelement <4 x float> %i.auj, float %i.aug, i64 3
  %18 = load <8 x float>, ptr %.2312411.i, align 1, !tbaa !20 ; 2 uses
  %i.aul = shufflevector <8 x float> %18, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.aum = shufflevector <8 x float> %18, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.aun = fmul fast <4 x float> %i.aul, %i.aty
  %i.auo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.auk, <4 x float> nofpclass(nan inf) %i.aum, <4 x float> nofpclass(nan inf) %i.aun)
  %i.aup = getelementptr inbounds nuw [4 x i8], ptr %.0296421.i, i64 %indvars.iv453.i
  store <4 x float> %i.auo, ptr %i.aup, align 1, !tbaa !20
  %i.auq = getelementptr inbounds nuw i8, ptr %.2312411.i, i64 32 ; 2 uses
  %indvars.iv.next454.i = add nuw nsw i64 %indvars.iv453.i, 4 ; 3 uses
  %i.aur = or disjoint i64 %indvars.iv.next454.i, 3 ; 2 uses
  %i.aus = trunc nuw i64 %i.aur to i32
  %i.aut = icmp sgt i32 %i.az, %i.aus
  br i1 %i.aut, label %.lr.ph412.i, label %.preheader.loopexit.i144, !llvm.loop !190

.lr.ph417.i:                                      ; preds = %.lr.ph417.i.prol.loopexit, %.lr.ph417.i
  %indvars.iv456.i = phi i64 [ %indvars.iv.next457.i.1, %.lr.ph417.i ], [ %indvars.iv456.i.unr, %.lr.ph417.i.prol.loopexit ] ; 4 uses
  %.3313416.i = phi ptr [ %i.avx, %.lr.ph417.i ], [ %.3313416.i.unr, %.lr.ph417.i.prol.loopexit ] ; 5 uses
  %i.auu = getelementptr inbounds nuw [4 x i8], ptr %i.aog, i64 %indvars.iv456.i
  %i.auv = load i32, ptr %i.auu, align 4, !tbaa !28
  %i.auw = sext i32 %i.auv to i64
  %i.aux = getelementptr inbounds [4 x i8], ptr %i.aqd, i64 %i.auw ; 2 uses
  %i.auy = load float, ptr %.3313416.i, align 4, !tbaa !60
  %i.auz = getelementptr inbounds nuw i8, ptr %.3313416.i, i64 4
  %i.ava = load float, ptr %i.auz, align 4, !tbaa !60
  %i.avb = load float, ptr %i.aux, align 4, !tbaa !60
  %i.avc = fmul fast float %i.avb, %i.auy
  %i.avd = getelementptr inbounds nuw i8, ptr %i.aux, i64 4
  %i.ave = load float, ptr %i.avd, align 4, !tbaa !60
  %i.avf = fmul fast float %i.ave, %i.ava
  %i.avg = fadd fast float %i.avf, %i.avc
  %i.avh = getelementptr inbounds nuw [4 x i8], ptr %.0296421.i, i64 %indvars.iv456.i
  store float %i.avg, ptr %i.avh, align 4, !tbaa !60
  %i.avi = getelementptr inbounds nuw i8, ptr %.3313416.i, i64 8
  %indvars.iv.next457.i = add nuw nsw i64 %indvars.iv456.i, 1 ; 2 uses
  %i.avj = getelementptr inbounds nuw [4 x i8], ptr %i.aog, i64 %indvars.iv.next457.i
  %i.avk = load i32, ptr %i.avj, align 4, !tbaa !28
  %i.avl = sext i32 %i.avk to i64
  %i.avm = getelementptr inbounds [4 x i8], ptr %i.aqd, i64 %i.avl ; 2 uses
  %i.avn = load float, ptr %i.avi, align 4, !tbaa !60
  %i.avo = getelementptr inbounds nuw i8, ptr %.3313416.i, i64 12
  %i.avp = load float, ptr %i.avo, align 4, !tbaa !60
  %i.avq = load float, ptr %i.avm, align 4, !tbaa !60
  %i.avr = fmul fast float %i.avq, %i.avn
  %i.avs = getelementptr inbounds nuw i8, ptr %i.avm, i64 4
  %i.avt = load float, ptr %i.avs, align 4, !tbaa !60
  %i.avu = fmul fast float %i.avt, %i.avp
  %i.avv = fadd fast float %i.avu, %i.avr
  %i.avw = getelementptr inbounds nuw [4 x i8], ptr %.0296421.i, i64 %indvars.iv.next457.i
  store float %i.avv, ptr %i.avw, align 4, !tbaa !60
  %i.avx = getelementptr inbounds nuw i8, ptr %.3313416.i, i64 16
  %indvars.iv.next457.i.1 = add nuw nsw i64 %indvars.iv456.i, 2 ; 2 uses
  %i.avy = trunc nuw i64 %indvars.iv.next457.i.1 to i32
  %i.avz = icmp sgt i32 %i.az, %i.avy
  br i1 %i.avz, label %.lr.ph417.i, label %.loopexit.i114, !llvm.loop !191

bb.cq:                                            ; preds = %bb.co
  %i.awa = sext i32 %i.apw to i64
  %i.awb = mul i64 %i.aop, %i.awa
  %i.awc = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.awb ; 9 uses
  %i.awd = add nsw i32 %i.apw, 1
  %i.awe = sext i32 %i.awd to i64
  %i.awf = mul i64 %i.aop, %i.awe
  %i.awg = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.awf ; 9 uses
  br i1 %i.aom, label %.lr.ph.i140, label %.preheader383.i

.preheader383.loopexit.i:                         ; preds = %.lr.ph.i140
  %i.awh = trunc nuw nsw i64 %indvars.iv.next.i142 to i32
  br label %.preheader383.i

.preheader383.i:                                  ; preds = %.preheader383.loopexit.i, %bb.cq
  %.0306.lcssa.i = phi ptr [ %i.aof, %bb.cq ], [ %i.axa, %.preheader383.loopexit.i ] ; 2 uses
  %.0302.lcssa.i = phi i32 [ 0, %bb.cq ], [ %i.awh, %.preheader383.loopexit.i ] ; 3 uses
  %i.awi = or disjoint i32 %.0302.lcssa.i, 7
  %i.awj = icmp slt i32 %i.awi, %i.az
  br i1 %i.awj, label %.lr.ph389.preheader.i, label %.preheader382.i

.lr.ph389.preheader.i:                            ; preds = %.preheader383.i
  %i.awk = zext nneg i32 %.0302.lcssa.i to i64
  br label %.lr.ph389.i

.lr.ph.i140:                                      ; preds = %bb.cq, %.lr.ph.i140
  %indvars.iv.i141 = phi i64 [ %indvars.iv.next.i142, %.lr.ph.i140 ], [ 0, %bb.cq ] ; 4 uses
  %.0306384.i = phi ptr [ %i.axa, %.lr.ph.i140 ], [ %i.aof, %bb.cq ] ; 3 uses
  %i.awl = getelementptr inbounds nuw [4 x i8], ptr %i.aog, i64 %indvars.iv.i141
  %i.awm = load <16 x i32>, ptr %i.awl, align 1, !tbaa !20 ; 3 uses
  %i.awn = add <16 x i32> %i.awm, splat (i32 1)   ; 2 uses
  %i.awo = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.awc, <16 x i32> %i.awm, <16 x i1> splat (i1 true), i32 4)
  %i.awp = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.awc, <16 x i32> %i.awn, <16 x i1> splat (i1 true), i32 4)
  %i.awq = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.awg, <16 x i32> %i.awm, <16 x i1> splat (i1 true), i32 4)
  %i.awr = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.awg, <16 x i32> %i.awn, <16 x i1> splat (i1 true), i32 4)
  %i.aws = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %.0306384.i, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.awt = call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %.0306384.i, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.awu = fmul fast <16 x float> %i.aws, %i.awo
  %i.awv = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.awp, <16 x float> nofpclass(nan inf) %i.awt, <16 x float> nofpclass(nan inf) %i.awu)
  %i.aww = fmul fast <16 x float> %i.aws, %i.awq
  %i.awx = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.awr, <16 x float> nofpclass(nan inf) %i.awt, <16 x float> nofpclass(nan inf) %i.aww)
  %i.awy = getelementptr inbounds nuw [4 x i8], ptr %.0296421.i, i64 %indvars.iv.i141
  store <16 x float> %i.awv, ptr %i.awy, align 1, !tbaa !20
  %i.awz = getelementptr inbounds nuw [4 x i8], ptr %.0298420.i, i64 %indvars.iv.i141
  store <16 x float> %i.awx, ptr %i.awz, align 1, !tbaa !20
  %i.axa = getelementptr inbounds nuw i8, ptr %.0306384.i, i64 128 ; 2 uses
  %indvars.iv.next.i142 = add nuw nsw i64 %indvars.iv.i141, 16 ; 3 uses
  %i.axb = icmp slt i64 %indvars.iv.next.i142, %invariant.op.i113
  br i1 %i.axb, label %.lr.ph.i140, label %.preheader383.loopexit.i, !llvm.loop !192

.preheader382.loopexit.i:                         ; preds = %.lr.ph389.i
  %i.axc = trunc nuw nsw i64 %indvars.iv.next439.i to i32
  br label %.preheader382.i

.preheader382.i:                                  ; preds = %.preheader382.loopexit.i, %.preheader383.i
  %.1307.lcssa.i = phi ptr [ %.0306.lcssa.i, %.preheader383.i ], [ %i.axw, %.preheader382.loopexit.i ] ; 2 uses
  %.1303.lcssa.i = phi i32 [ %.0302.lcssa.i, %.preheader383.i ], [ %i.axc, %.preheader382.loopexit.i ] ; 3 uses
  %i.axd = or disjoint i32 %.1303.lcssa.i, 3      ; 2 uses
  %i.axe = icmp slt i32 %i.axd, %i.az
  br i1 %i.axe, label %.lr.ph394.preheader.i, label %.preheader380.i

.lr.ph394.preheader.i:                            ; preds = %.preheader382.i
  %i.axf = zext nneg i32 %.1303.lcssa.i to i64
  %i.axg = zext nneg i32 %i.axd to i64
  br label %.lr.ph394.i

.lr.ph389.i:                                      ; preds = %.lr.ph389.i, %.lr.ph389.preheader.i
  %indvars.iv438.i = phi i64 [ %i.awk, %.lr.ph389.preheader.i ], [ %indvars.iv.next439.i, %.lr.ph389.i ] ; 4 uses
  %.1307387.i = phi ptr [ %.0306.lcssa.i, %.lr.ph389.preheader.i ], [ %i.axw, %.lr.ph389.i ] ; 3 uses
  %i.axh = getelementptr inbounds nuw [4 x i8], ptr %i.aog, i64 %indvars.iv438.i
  %i.axi = load <8 x i32>, ptr %i.axh, align 1, !tbaa !20 ; 3 uses
  %i.axj = add <8 x i32> %i.axi, splat (i32 1)    ; 2 uses
  %i.axk = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.awc, <8 x i32> %i.axi, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.axl = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.awc, <8 x i32> %i.axj, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.axm = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.awg, <8 x i32> %i.axi, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.axn = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.awg, <8 x i32> %i.axj, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.axo = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %.1307387.i, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.axp = call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %.1307387.i, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.axq = fmul fast <8 x float> %i.axo, %i.axk
  %i.axr = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.axl, <8 x float> nofpclass(nan inf) %i.axp, <8 x float> nofpclass(nan inf) %i.axq)
  %i.axs = fmul fast <8 x float> %i.axo, %i.axm
  %i.axt = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.axn, <8 x float> nofpclass(nan inf) %i.axp, <8 x float> nofpclass(nan inf) %i.axs)
  %i.axu = getelementptr inbounds nuw [4 x i8], ptr %.0296421.i, i64 %indvars.iv438.i
  store <8 x float> %i.axr, ptr %i.axu, align 1, !tbaa !20
  %i.axv = getelementptr inbounds nuw [4 x i8], ptr %.0298420.i, i64 %indvars.iv438.i
  store <8 x float> %i.axt, ptr %i.axv, align 1, !tbaa !20
  %i.axw = getelementptr inbounds nuw i8, ptr %.1307387.i, i64 64 ; 2 uses
  %indvars.iv.next439.i = add nuw nsw i64 %indvars.iv438.i, 8 ; 3 uses
  %i.axx = icmp slt i64 %indvars.iv.next439.i, %invariant.op482.i
  br i1 %i.axx, label %.lr.ph389.i, label %.preheader382.loopexit.i, !llvm.loop !193

.preheader380.loopexit.i:                         ; preds = %.lr.ph394.i
  %i.axy = trunc nuw i64 %indvars.iv.next442.i to i32
  br label %.preheader380.i

.preheader380.i:                                  ; preds = %.preheader380.loopexit.i, %.preheader382.i
  %.2308.lcssa.i = phi ptr [ %.1307.lcssa.i, %.preheader382.i ], [ %i.bas, %.preheader380.loopexit.i ]
  %.2304.lcssa.i = phi i32 [ %.1303.lcssa.i, %.preheader382.i ], [ %i.axy, %.preheader380.loopexit.i ] ; 2 uses
  %i.axz = icmp slt i32 %.2304.lcssa.i, %i.az
  br i1 %i.axz, label %.lr.ph399.preheader.i, label %.loopexit.i114

.lr.ph399.preheader.i:                            ; preds = %.preheader380.i
  %i.aya = zext i32 %.2304.lcssa.i to i64
  br label %.lr.ph399.i

.lr.ph394.i:                                      ; preds = %.lr.ph394.i, %.lr.ph394.preheader.i
  %indvars.iv441.i = phi i64 [ %i.axf, %.lr.ph394.preheader.i ], [ %indvars.iv.next442.i, %.lr.ph394.i ] ; 4 uses
  %i.ayb = phi i64 [ %i.axg, %.lr.ph394.preheader.i ], [ %i.bat, %.lr.ph394.i ]
  %.2308392.i = phi ptr [ %.1307.lcssa.i, %.lr.ph394.preheader.i ], [ %i.bas, %.lr.ph394.i ] ; 2 uses
  %i.ayc = getelementptr inbounds nuw [4 x i8], ptr %i.aog, i64 %indvars.iv441.i ; 3 uses
  %i.ayd = load i32, ptr %i.ayc, align 4, !tbaa !28
  %i.aye = sext i32 %i.ayd to i64                 ; 2 uses
  %i.ayf = getelementptr inbounds [4 x i8], ptr %i.awc, i64 %i.aye ; 2 uses
  %i.ayg = load float, ptr %i.ayf, align 4, !tbaa !60
  %i.ayh = getelementptr inbounds nuw i8, ptr %i.ayc, i64 4
  %i.ayi = load i32, ptr %i.ayh, align 4, !tbaa !28
  %i.ayj = sext i32 %i.ayi to i64                 ; 2 uses
  %i.ayk = getelementptr inbounds [4 x i8], ptr %i.awc, i64 %i.ayj ; 2 uses
  %i.ayl = load float, ptr %i.ayk, align 4, !tbaa !60
  %i.aym = getelementptr inbounds nuw i8, ptr %i.ayc, i64 8
  %i.ayn = load i32, ptr %i.aym, align 4, !tbaa !28
  %i.ayo = sext i32 %i.ayn to i64                 ; 2 uses
  %i.ayp = getelementptr inbounds [4 x i8], ptr %i.awc, i64 %i.ayo ; 2 uses
  %i.ayq = load float, ptr %i.ayp, align 4, !tbaa !60
  %i.ayr = getelementptr inbounds nuw [4 x i8], ptr %i.aog, i64 %i.ayb
  %i.ays = load i32, ptr %i.ayr, align 4, !tbaa !28
  %i.ayt = sext i32 %i.ays to i64                 ; 2 uses
  %i.ayu = getelementptr inbounds [4 x i8], ptr %i.awc, i64 %i.ayt ; 2 uses
  %i.ayv = load float, ptr %i.ayu, align 4, !tbaa !60
  %i.ayw = insertelement <4 x float> poison, float %i.ayg, i64 0
  %i.ayx = insertelement <4 x float> %i.ayw, float %i.ayl, i64 1
  %i.ayy = insertelement <4 x float> %i.ayx, float %i.ayq, i64 2
  %i.ayz = insertelement <4 x float> %i.ayy, float %i.ayv, i64 3
  %i.aza = getelementptr i8, ptr %i.ayf, i64 4
  %i.azb = load float, ptr %i.aza, align 4, !tbaa !60
  %i.azc = getelementptr i8, ptr %i.ayk, i64 4
  %i.azd = load float, ptr %i.azc, align 4, !tbaa !60
  %i.aze = getelementptr i8, ptr %i.ayp, i64 4
  %i.azf = load float, ptr %i.aze, align 4, !tbaa !60
  %i.azg = getelementptr i8, ptr %i.ayu, i64 4
  %i.azh = load float, ptr %i.azg, align 4, !tbaa !60
  %i.azi = insertelement <4 x float> poison, float %i.azb, i64 0
  %i.azj = insertelement <4 x float> %i.azi, float %i.azd, i64 1
  %i.azk = insertelement <4 x float> %i.azj, float %i.azf, i64 2
  %i.azl = insertelement <4 x float> %i.azk, float %i.azh, i64 3
  %i.azm = getelementptr inbounds [4 x i8], ptr %i.awg, i64 %i.aye ; 2 uses
  %i.azn = load float, ptr %i.azm, align 4, !tbaa !60
  %i.azo = getelementptr inbounds [4 x i8], ptr %i.awg, i64 %i.ayj ; 2 uses
  %i.azp = load float, ptr %i.azo, align 4, !tbaa !60
  %i.azq = getelementptr inbounds [4 x i8], ptr %i.awg, i64 %i.ayo ; 2 uses
  %i.azr = load float, ptr %i.azq, align 4, !tbaa !60
  %i.azs = getelementptr inbounds [4 x i8], ptr %i.awg, i64 %i.ayt ; 2 uses
  %i.azt = load float, ptr %i.azs, align 4, !tbaa !60
  %i.azu = insertelement <4 x float> poison, float %i.azn, i64 0
  %i.azv = insertelement <4 x float> %i.azu, float %i.azp, i64 1
  %i.azw = insertelement <4 x float> %i.azv, float %i.azr, i64 2
  %i.azx = insertelement <4 x float> %i.azw, float %i.azt, i64 3
  %i.azy = getelementptr i8, ptr %i.azm, i64 4
  %i.azz = load float, ptr %i.azy, align 4, !tbaa !60
  %i.baa = getelementptr i8, ptr %i.azo, i64 4
  %i.bab = load float, ptr %i.baa, align 4, !tbaa !60
  %i.bac = getelementptr i8, ptr %i.azq, i64 4
  %i.bad = load float, ptr %i.bac, align 4, !tbaa !60
  %i.bae = getelementptr i8, ptr %i.azs, i64 4
  %i.baf = load float, ptr %i.bae, align 4, !tbaa !60
  %i.bag = insertelement <4 x float> poison, float %i.azz, i64 0
  %i.bah = insertelement <4 x float> %i.bag, float %i.bab, i64 1
  %i.bai = insertelement <4 x float> %i.bah, float %i.bad, i64 2
  %i.baj = insertelement <4 x float> %i.bai, float %i.baf, i64 3
  %19 = load <8 x float>, ptr %.2308392.i, align 1, !tbaa !20 ; 2 uses
  %i.bak = shufflevector <8 x float> %19, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.bal = shufflevector <8 x float> %19, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.bam = fmul fast <4 x float> %i.bak, %i.ayz
  %i.ban = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.azl, <4 x float> nofpclass(nan inf) %i.bal, <4 x float> nofpclass(nan inf) %i.bam)
  %i.bao = fmul fast <4 x float> %i.bak, %i.azx
  %i.bap = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.baj, <4 x float> nofpclass(nan inf) %i.bal, <4 x float> nofpclass(nan inf) %i.bao)
  %i.baq = getelementptr inbounds nuw [4 x i8], ptr %.0296421.i, i64 %indvars.iv441.i
  store <4 x float> %i.ban, ptr %i.baq, align 1, !tbaa !20
  %i.bar = getelementptr inbounds nuw [4 x i8], ptr %.0298420.i, i64 %indvars.iv441.i
  store <4 x float> %i.bap, ptr %i.bar, align 1, !tbaa !20
  %i.bas = getelementptr inbounds nuw i8, ptr %.2308392.i, i64 32 ; 2 uses
  %indvars.iv.next442.i = add nuw nsw i64 %indvars.iv441.i, 4 ; 3 uses
  %i.bat = or disjoint i64 %indvars.iv.next442.i, 3 ; 2 uses
  %i.bau = trunc nuw i64 %i.bat to i32
  %i.bav = icmp sgt i32 %i.az, %i.bau
  br i1 %i.bav, label %.lr.ph394.i, label %.preheader380.loopexit.i, !llvm.loop !194

.lr.ph399.i:                                      ; preds = %.lr.ph399.i, %.lr.ph399.preheader.i
  %indvars.iv444.i = phi i64 [ %i.aya, %.lr.ph399.preheader.i ], [ %indvars.iv.next445.i, %.lr.ph399.i ] ; 4 uses
  %.3309397.i = phi ptr [ %.2308.lcssa.i, %.lr.ph399.preheader.i ], [ %i.bbs, %.lr.ph399.i ] ; 3 uses
  %i.baw = getelementptr inbounds nuw [4 x i8], ptr %i.aog, i64 %indvars.iv444.i
  %i.bax = load i32, ptr %i.baw, align 4, !tbaa !28
  %i.bay = sext i32 %i.bax to i64                 ; 2 uses
  %i.baz = getelementptr inbounds [4 x i8], ptr %i.awc, i64 %i.bay ; 2 uses
  %i.bba = getelementptr inbounds [4 x i8], ptr %i.awg, i64 %i.bay ; 2 uses
  %i.bbb = load float, ptr %.3309397.i, align 4, !tbaa !60 ; 2 uses
  %i.bbc = getelementptr inbounds nuw i8, ptr %.3309397.i, i64 4
  %i.bbd = load float, ptr %i.bbc, align 4, !tbaa !60 ; 2 uses
  %i.bbe = load float, ptr %i.baz, align 4, !tbaa !60
  %i.bbf = fmul fast float %i.bbe, %i.bbb
  %i.bbg = getelementptr inbounds nuw i8, ptr %i.baz, i64 4
  %i.bbh = load float, ptr %i.bbg, align 4, !tbaa !60
  %i.bbi = fmul fast float %i.bbh, %i.bbd
  %i.bbj = fadd fast float %i.bbi, %i.bbf
  %i.bbk = getelementptr inbounds nuw [4 x i8], ptr %.0296421.i, i64 %indvars.iv444.i
  store float %i.bbj, ptr %i.bbk, align 4, !tbaa !60
  %i.bbl = load float, ptr %i.bba, align 4, !tbaa !60
  %i.bbm = fmul fast float %i.bbl, %i.bbb
  %i.bbn = getelementptr inbounds nuw i8, ptr %i.bba, i64 4
  %i.bbo = load float, ptr %i.bbn, align 4, !tbaa !60
  %i.bbp = fmul fast float %i.bbo, %i.bbd
  %i.bbq = fadd fast float %i.bbp, %i.bbm
  %i.bbr = getelementptr inbounds nuw [4 x i8], ptr %.0298420.i, i64 %indvars.iv444.i
  store float %i.bbq, ptr %i.bbr, align 4, !tbaa !60
  %i.bbs = getelementptr inbounds nuw i8, ptr %.3309397.i, i64 8
  %indvars.iv.next445.i = add nuw nsw i64 %indvars.iv444.i, 1 ; 2 uses
  %i.bbt = trunc nuw i64 %indvars.iv.next445.i to i32
  %i.bbu = icmp sgt i32 %i.az, %i.bbt
  br i1 %i.bbu, label %.lr.ph399.i, label %.loopexit.i114, !llvm.loop !195

.loopexit.i114:                                   ; preds = %.lr.ph399.i, %.lr.ph417.i.prol.loopexit, %.lr.ph417.i, %.preheader380.i, %.preheader.i143, %bb.cn
  %.1299.i = phi ptr [ %.0298420.i, %bb.cn ], [ %.0296421.i, %.preheader.i143 ], [ %.0298420.i, %.preheader380.i ], [ %.0296421.i, %.lr.ph417.i.prol.loopexit ], [ %.0296421.i, %.lr.ph417.i ], [ %.0298420.i, %.lr.ph399.i ] ; 8 uses
  %.1297.i = phi ptr [ %.0296421.i, %bb.cn ], [ %.0298420.i, %.preheader.i143 ], [ %.0296421.i, %.preheader380.i ], [ %.0298420.i, %.lr.ph417.i.prol.loopexit ], [ %.0298420.i, %.lr.ph417.i ], [ %.0296421.i, %.lr.ph399.i ] ; 8 uses
  %.1299.i374 = ptrtoaddr ptr %.1299.i to i64
  %.1297.i375 = ptrtoaddr ptr %.1297.i to i64
  %i.bbv = mul i64 %i.aoo, %indvars.iv459.i
  %i.bbw = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bbv ; 6 uses
  %i.bbx = load float, ptr %.0422.i, align 4, !tbaa !60 ; 6 uses
  %i.bby = getelementptr inbounds nuw i8, ptr %.0422.i, i64 4
  %i.bbz = load float, ptr %i.bby, align 4, !tbaa !60 ; 6 uses
  %i.bca = insertelement <16 x float> poison, float %i.bbx, i64 0
  %i.bcb = shufflevector <16 x float> %i.bca, <16 x float> poison, <16 x i32> zeroinitializer
  %i.bcc = insertelement <16 x float> poison, float %i.bbz, i64 0
  %i.bcd = shufflevector <16 x float> %i.bcc, <16 x float> poison, <16 x i32> zeroinitializer
  br i1 %i.aom, label %.lr.ph.i.i136, label %._crit_edge.i.i115

.lr.ph.i.i136:                                    ; preds = %.loopexit.i114, %.lr.ph.i.i136
  %indvars.iv.i.i137 = phi i64 [ %indvars.iv.next.i.i138, %.lr.ph.i.i136 ], [ 0, %.loopexit.i114 ] ; 4 uses
  %i.bce = getelementptr inbounds nuw [4 x i8], ptr %.1297.i, i64 %indvars.iv.i.i137
  %i.bcf = load <16 x float>, ptr %i.bce, align 1, !tbaa !20
  %i.bcg = getelementptr inbounds nuw [4 x i8], ptr %.1299.i, i64 %indvars.iv.i.i137
  %i.bch = load <16 x float>, ptr %i.bcg, align 1, !tbaa !20
  %i.bci = fmul fast <16 x float> %i.bcf, %i.bcb
  %i.bcj = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bch, <16 x float> nofpclass(nan inf) %i.bcd, <16 x float> nofpclass(nan inf) %i.bci)
  %i.bck = getelementptr inbounds nuw [4 x i8], ptr %i.bbw, i64 %indvars.iv.i.i137
  store <16 x float> %i.bcj, ptr %i.bck, align 1, !tbaa !20
  %indvars.iv.next.i.i138 = add nuw nsw i64 %indvars.iv.i.i137, 16 ; 3 uses
  %i.bcl = or disjoint i64 %indvars.iv.next.i.i138, 15
  %i.bcm = icmp samesign ult i64 %i.bcl, %i.aon
  br i1 %i.bcm, label %.lr.ph.i.i136, label %._crit_edge.loopexit.i.i139, !llvm.loop !163

._crit_edge.loopexit.i.i139:                      ; preds = %.lr.ph.i.i136
  %i.bcn = trunc nuw nsw i64 %indvars.iv.next.i.i138 to i32
  br label %._crit_edge.i.i115

._crit_edge.i.i115:                               ; preds = %._crit_edge.loopexit.i.i139, %.loopexit.i114
  %.0.lcssa.i.i116 = phi i32 [ 0, %.loopexit.i114 ], [ %i.bcn, %._crit_edge.loopexit.i.i139 ] ; 3 uses
  %i.bco = insertelement <8 x float> poison, float %i.bbx, i64 0
  %i.bcp = shufflevector <8 x float> %i.bco, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bcq = insertelement <8 x float> poison, float %i.bbz, i64 0
  %i.bcr = shufflevector <8 x float> %i.bcq, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bcs = or disjoint i32 %.0.lcssa.i.i116, 7
  %i.bct = icmp slt i32 %i.bcs, %i.az
  br i1 %i.bct, label %.lr.ph62.preheader.i.i131, label %._crit_edge63.i.i117

.lr.ph62.preheader.i.i131:                        ; preds = %._crit_edge.i.i115
  %i.bcu = zext nneg i32 %.0.lcssa.i.i116 to i64
  br label %.lr.ph62.i.i132

.lr.ph62.i.i132:                                  ; preds = %.lr.ph62.i.i132, %.lr.ph62.preheader.i.i131
  %indvars.iv75.i.i133 = phi i64 [ %i.bcu, %.lr.ph62.preheader.i.i131 ], [ %indvars.iv.next76.i.i134, %.lr.ph62.i.i132 ] ; 4 uses
  %i.bcv = getelementptr inbounds nuw [4 x i8], ptr %.1297.i, i64 %indvars.iv75.i.i133
  %i.bcw = load <8 x float>, ptr %i.bcv, align 1, !tbaa !20
  %i.bcx = getelementptr inbounds nuw [4 x i8], ptr %.1299.i, i64 %indvars.iv75.i.i133
  %i.bcy = load <8 x float>, ptr %i.bcx, align 1, !tbaa !20
  %i.bcz = fmul fast <8 x float> %i.bcw, %i.bcp
  %i.bda = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bcy, <8 x float> nofpclass(nan inf) %i.bcr, <8 x float> nofpclass(nan inf) %i.bcz)
  %i.bdb = getelementptr inbounds nuw [4 x i8], ptr %i.bbw, i64 %indvars.iv75.i.i133
  store <8 x float> %i.bda, ptr %i.bdb, align 1, !tbaa !20
  %indvars.iv.next76.i.i134 = add nuw nsw i64 %indvars.iv75.i.i133, 8 ; 3 uses
  %i.bdc = icmp slt i64 %indvars.iv.next76.i.i134, %invariant.op.i.i111
  br i1 %i.bdc, label %.lr.ph62.i.i132, label %._crit_edge63.loopexit.i.i135, !llvm.loop !164

._crit_edge63.loopexit.i.i135:                    ; preds = %.lr.ph62.i.i132
  %i.bdd = trunc nuw nsw i64 %indvars.iv.next76.i.i134 to i32
  br label %._crit_edge63.i.i117

._crit_edge63.i.i117:                             ; preds = %._crit_edge63.loopexit.i.i135, %._crit_edge.i.i115
  %.1.lcssa.i.i118 = phi i32 [ %.0.lcssa.i.i116, %._crit_edge.i.i115 ], [ %i.bdd, %._crit_edge63.loopexit.i.i135 ] ; 3 uses
  %i.bde = insertelement <4 x float> poison, float %i.bbx, i64 0
  %i.bdf = shufflevector <4 x float> %i.bde, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bdg = insertelement <4 x float> poison, float %i.bbz, i64 0
  %i.bdh = shufflevector <4 x float> %i.bdg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bdi = or disjoint i32 %.1.lcssa.i.i118, 3
  %i.bdj = icmp slt i32 %i.bdi, %i.az
  br i1 %i.bdj, label %.lr.ph67.preheader.i.i127, label %.preheader.i.i119

.lr.ph67.preheader.i.i127:                        ; preds = %._crit_edge63.i.i117
  %i.bdk = zext nneg i32 %.1.lcssa.i.i118 to i64
  br label %.lr.ph67.i.i128

.preheader.i.i119:                                ; preds = %.lr.ph67.i.i128, %._crit_edge63.i.i117
  %.2.lcssa.i.i120 = phi i32 [ %.1.lcssa.i.i118, %._crit_edge63.i.i117 ], [ %i.bfl, %.lr.ph67.i.i128 ] ; 3 uses
  %i.bdl = icmp slt i32 %.2.lcssa.i.i120, %i.az
  br i1 %i.bdl, label %iter.check, label %_ZN4ncnnL16vresize_bilinearEPKfS1_Pfiff.exit.i121

iter.check:                                       ; preds = %.preheader.i.i119
  %i.bdm = zext i32 %.2.lcssa.i.i120 to i64       ; 6 uses
  %i.bdn = xor i32 %.2.lcssa.i.i120, -1
  %i.bdo = add i32 %i.az, %i.bdn                  ; 3 uses
  %i.bdp = zext i32 %i.bdo to i64
  %i.bdq = add nuw nsw i64 %i.bdp, 1              ; 5 uses
  %min.iters.check = icmp ult i32 %i.bdo, 7
  br i1 %min.iters.check, label %.lr.ph70.i.i124.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bdr = sub i64 %.1299.i374, %i.apu
  %diff.check = icmp ugt i64 %i.bdr, -256
  %i.bds = sub i64 %.1297.i375, %i.apu
  %diff.check376 = icmp ugt i64 %i.bds, -256
  %conflict.rdx = or i1 %diff.check, %diff.check376
  br i1 %conflict.rdx, label %.lr.ph70.i.i124.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check377 = icmp ult i32 %i.bdo, 63
  br i1 %min.iters.check377, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bdt = and i64 %i.bdq, 56
  %n.vec = and i64 %i.bdq, 8589934528             ; 4 uses
  %i.bdu = add nuw nsw i64 %n.vec, %i.bdm
  %broadcast.splatinsert = insertelement <16 x float> poison, float %i.bbx, i64 0
  %broadcast.splat = shufflevector <16 x float> %broadcast.splatinsert, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert378 = insertelement <16 x float> poison, float %i.bbz, i64 0
  %broadcast.splat379 = shufflevector <16 x float> %broadcast.splatinsert378, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bdv = add nuw i64 %index, %i.bdm             ; 3 uses
  %i.bdw = getelementptr inbounds nuw [4 x i8], ptr %.1297.i, i64 %i.bdv ; 4 uses
  %i.bdx = getelementptr inbounds nuw i8, ptr %i.bdw, i64 64
  %i.bdy = getelementptr inbounds nuw i8, ptr %i.bdw, i64 128
  %i.bdz = getelementptr inbounds nuw i8, ptr %i.bdw, i64 192
  %wide.load = load <16 x float>, ptr %i.bdw, align 4, !tbaa !60
  %wide.load380 = load <16 x float>, ptr %i.bdx, align 4, !tbaa !60
  %wide.load381 = load <16 x float>, ptr %i.bdy, align 4, !tbaa !60
  %wide.load382 = load <16 x float>, ptr %i.bdz, align 4, !tbaa !60
  %i.bea = fmul fast <16 x float> %wide.load, %broadcast.splat
  %i.beb = fmul fast <16 x float> %wide.load380, %broadcast.splat
  %i.bec = fmul fast <16 x float> %wide.load381, %broadcast.splat
  %i.bed = fmul fast <16 x float> %wide.load382, %broadcast.splat
  %i.bee = getelementptr inbounds nuw [4 x i8], ptr %.1299.i, i64 %i.bdv ; 4 uses
  %i.bef = getelementptr inbounds nuw i8, ptr %i.bee, i64 64
  %i.beg = getelementptr inbounds nuw i8, ptr %i.bee, i64 128
  %i.beh = getelementptr inbounds nuw i8, ptr %i.bee, i64 192
  %wide.load383 = load <16 x float>, ptr %i.bee, align 4, !tbaa !60
  %wide.load384 = load <16 x float>, ptr %i.bef, align 4, !tbaa !60
  %wide.load385 = load <16 x float>, ptr %i.beg, align 4, !tbaa !60
  %wide.load386 = load <16 x float>, ptr %i.beh, align 4, !tbaa !60
  %i.bei = fmul fast <16 x float> %wide.load383, %broadcast.splat379
  %i.bej = fmul fast <16 x float> %wide.load384, %broadcast.splat379
  %i.bek = fmul fast <16 x float> %wide.load385, %broadcast.splat379
  %i.bel = fmul fast <16 x float> %wide.load386, %broadcast.splat379
  %i.bem = fadd fast <16 x float> %i.bei, %i.bea
  %i.ben = fadd fast <16 x float> %i.bej, %i.beb
  %i.beo = fadd fast <16 x float> %i.bek, %i.bec
  %i.bep = fadd fast <16 x float> %i.bel, %i.bed
  %i.beq = getelementptr inbounds nuw [4 x i8], ptr %i.bbw, i64 %i.bdv ; 4 uses
  %i.ber = getelementptr inbounds nuw i8, ptr %i.beq, i64 64
  %i.bes = getelementptr inbounds nuw i8, ptr %i.beq, i64 128
  %i.bet = getelementptr inbounds nuw i8, ptr %i.beq, i64 192
end_hunk_0
