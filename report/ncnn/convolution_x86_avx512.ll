Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_avx512?download=true
inline.NumInlined: 389
inline.NumDeleted: 86
loop-unroll.NumCompletelyUnrolled: 154
loop-unroll.NumRuntimeUnrolled: 218
loop-unroll.NumUnrolled: 372
begin_hunk_0_@_ZNK4ncnn22Convolution_x86_avx5127forwardERKNS_3MatERS1_RKNS_6OptionE:bb.a

.loopexit3675.i:                                  ; preds = %.loopexit3677.i
  br i1 %i.bzc, label %.loopexit3674.i, label %bb.jt

bb.jt:                                            ; preds = %.loopexit3675.i
  %i.dya = getelementptr inbounds nuw [4 x i8], ptr %gep4219.i, i64 %i.dur ; 3 uses
  %i.dyb = getelementptr inbounds nuw i8, ptr %gep4219.i, i64 %.idx1771.i ; 3 uses
  %i.dyc = getelementptr inbounds nuw i8, ptr %gep4219.i, i64 %.idx1772.i ; 3 uses
  br i1 %i.dus, label %.lr.ph4194.i.preheader, label %.loopexit3673.i

.lr.ph4194.i.preheader:                           ; preds = %bb.jt
  br i1 %i.duz, label %.lr.ph4194.i.epil.preheader, label %.lr.ph4194.i

.lr.ph4194.i:                                     ; preds = %.lr.ph4194.i.preheader, %.lr.ph4194.i
  %indvars.iv4949.i = phi i64 [ %indvars.iv.next4950.i.1, %.lr.ph4194.i ], [ 0, %.lr.ph4194.i.preheader ] ; 3 uses
  %.515824191.i = phi ptr [ %i.dzr, %.lr.ph4194.i ], [ %.015774208.i, %.lr.ph4194.i.preheader ] ; 5 uses
  %.534244190.i = phi <16 x float> [ %i.dzq, %.lr.ph4194.i ], [ %.034194207.i, %.lr.ph4194.i.preheader ]
  %.534334189.i = phi <16 x float> [ %i.dzp, %.lr.ph4194.i ], [ %.034284206.i, %.lr.ph4194.i.preheader ]
  %niter2180 = phi i64 [ %niter2180.next.1, %.lr.ph4194.i ], [ 0, %.lr.ph4194.i.preheader ]
  %i.dyd = getelementptr inbounds nuw [4 x i8], ptr %i.duq, i64 %indvars.iv4949.i
  %i.dye = load i32, ptr %i.dyd, align 4, !tbaa !66
  %i.dyf = sext i32 %i.dye to i64                 ; 4 uses
  %i.dyg = getelementptr inbounds [4 x i8], ptr %gep4219.i, i64 %i.dyf
  %i.dyh = load <4 x float>, ptr %i.dyg, align 16, !tbaa !85
  %i.dyi = getelementptr inbounds [4 x i8], ptr %i.dya, i64 %i.dyf
  %i.dyj = load <4 x float>, ptr %i.dyi, align 16, !tbaa !85
  %i.dyk = getelementptr inbounds [4 x i8], ptr %i.dyb, i64 %i.dyf
  %i.dyl = load <4 x float>, ptr %i.dyk, align 16, !tbaa !85
  %i.dym = getelementptr inbounds [4 x i8], ptr %i.dyc, i64 %i.dyf
  %i.dyn = load <4 x float>, ptr %i.dym, align 16, !tbaa !85
  %i.dyo = shufflevector <4 x float> %i.dyh, <4 x float> %i.dyj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dyp = shufflevector <4 x float> %i.dyl, <4 x float> %i.dyn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dyq = shufflevector <16 x float> %i.dyo, <16 x float> %i.dyp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.dyr = load <16 x float>, ptr %.515824191.i, align 64, !tbaa !85
  %i.dys = getelementptr inbounds nuw i8, ptr %.515824191.i, i64 64
  %i.dyt = load <16 x float>, ptr %i.dys, align 64, !tbaa !85
  %i.dyu = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dyq, <16 x float> nofpclass(nan inf) %i.dyr, <16 x float> nofpclass(nan inf) %.534334189.i)
  %i.dyv = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dyq, <16 x float> nofpclass(nan inf) %i.dyt, <16 x float> nofpclass(nan inf) %.534244190.i)
  %i.dyw = getelementptr inbounds nuw i8, ptr %.515824191.i, i64 128
  %i.dyx = getelementptr inbounds nuw [4 x i8], ptr %i.duq, i64 %indvars.iv4949.i
  %i.dyy = getelementptr inbounds nuw i8, ptr %i.dyx, i64 4
  %i.dyz = load i32, ptr %i.dyy, align 4, !tbaa !66
  %i.dza = sext i32 %i.dyz to i64                 ; 4 uses
  %i.dzb = getelementptr inbounds [4 x i8], ptr %gep4219.i, i64 %i.dza
  %i.dzc = load <4 x float>, ptr %i.dzb, align 16, !tbaa !85
  %i.dzd = getelementptr inbounds [4 x i8], ptr %i.dya, i64 %i.dza
  %i.dze = load <4 x float>, ptr %i.dzd, align 16, !tbaa !85
  %i.dzf = getelementptr inbounds [4 x i8], ptr %i.dyb, i64 %i.dza
  %i.dzg = load <4 x float>, ptr %i.dzf, align 16, !tbaa !85
  %i.dzh = getelementptr inbounds [4 x i8], ptr %i.dyc, i64 %i.dza
  %i.dzi = load <4 x float>, ptr %i.dzh, align 16, !tbaa !85
  %i.dzj = shufflevector <4 x float> %i.dzc, <4 x float> %i.dze, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dzk = shufflevector <4 x float> %i.dzg, <4 x float> %i.dzi, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dzl = shufflevector <16 x float> %i.dzj, <16 x float> %i.dzk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.dzm = load <16 x float>, ptr %i.dyw, align 64, !tbaa !85
  %i.dzn = getelementptr inbounds nuw i8, ptr %.515824191.i, i64 192
  %i.dzo = load <16 x float>, ptr %i.dzn, align 64, !tbaa !85
  %i.dzp = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dzl, <16 x float> nofpclass(nan inf) %i.dzm, <16 x float> nofpclass(nan inf) %i.dyu) ; 3 uses
  %i.dzq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dzl, <16 x float> nofpclass(nan inf) %i.dzo, <16 x float> nofpclass(nan inf) %i.dyv) ; 3 uses
  %i.dzr = getelementptr inbounds nuw i8, ptr %.515824191.i, i64 256 ; 2 uses
  %indvars.iv.next4950.i.1 = add nuw nsw i64 %indvars.iv4949.i, 2 ; 2 uses
  %niter2180.next.1 = add i64 %niter2180, 2       ; 2 uses
  %niter2180.ncmp.1 = icmp eq i64 %niter2180.next.1, %unroll_iter2179
  br i1 %niter2180.ncmp.1, label %.loopexit3674.loopexit.i.unr-lcssa, label %.lr.ph4194.i, !llvm.loop !331

.loopexit3674.loopexit.i.unr-lcssa:               ; preds = %.lr.ph4194.i
  br i1 %lcmp.mod2175.not, label %.loopexit3674.loopexit.i, label %.lr.ph4194.i.epil.preheader

.lr.ph4194.i.epil.preheader:                      ; preds = %.loopexit3674.loopexit.i.unr-lcssa, %.lr.ph4194.i.preheader
  %indvars.iv4949.i.epil.init = phi i64 [ 0, %.lr.ph4194.i.preheader ], [ %indvars.iv.next4950.i.1, %.loopexit3674.loopexit.i.unr-lcssa ]
  %.515824191.i.epil.init = phi ptr [ %.015774208.i, %.lr.ph4194.i.preheader ], [ %i.dzr, %.loopexit3674.loopexit.i.unr-lcssa ] ; 2 uses
  %.534244190.i.epil.init = phi <16 x float> [ %.034194207.i, %.lr.ph4194.i.preheader ], [ %i.dzq, %.loopexit3674.loopexit.i.unr-lcssa ]
  %.534334189.i.epil.init = phi <16 x float> [ %.034284206.i, %.lr.ph4194.i.preheader ], [ %i.dzp, %.loopexit3674.loopexit.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod2178)
  %i.dzs = getelementptr inbounds nuw [4 x i8], ptr %i.duq, i64 %indvars.iv4949.i.epil.init
  %i.dzt = load i32, ptr %i.dzs, align 4, !tbaa !66
  %i.dzu = sext i32 %i.dzt to i64                 ; 4 uses
  %i.dzv = getelementptr inbounds [4 x i8], ptr %gep4219.i, i64 %i.dzu
  %i.dzw = load <4 x float>, ptr %i.dzv, align 16, !tbaa !85
  %i.dzx = getelementptr inbounds [4 x i8], ptr %i.dya, i64 %i.dzu
  %i.dzy = load <4 x float>, ptr %i.dzx, align 16, !tbaa !85
  %i.dzz = getelementptr inbounds [4 x i8], ptr %i.dyb, i64 %i.dzu
  %i.eaa = load <4 x float>, ptr %i.dzz, align 16, !tbaa !85
  %i.eab = getelementptr inbounds [4 x i8], ptr %i.dyc, i64 %i.dzu
  %i.eac = load <4 x float>, ptr %i.eab, align 16, !tbaa !85
  %i.ead = shufflevector <4 x float> %i.dzw, <4 x float> %i.dzy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.eae = shufflevector <4 x float> %i.eaa, <4 x float> %i.eac, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.eaf = shufflevector <16 x float> %i.ead, <16 x float> %i.eae, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.eag = load <16 x float>, ptr %.515824191.i.epil.init, align 64, !tbaa !85
  %i.eah = getelementptr inbounds nuw i8, ptr %.515824191.i.epil.init, i64 64
  %i.eai = load <16 x float>, ptr %i.eah, align 64, !tbaa !85
  %i.eaj = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.eaf, <16 x float> nofpclass(nan inf) %i.eag, <16 x float> nofpclass(nan inf) %.534334189.i.epil.init)
  %i.eak = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.eaf, <16 x float> nofpclass(nan inf) %i.eai, <16 x float> nofpclass(nan inf) %.534244190.i.epil.init)
  br label %.loopexit3674.loopexit.i

.loopexit3674.loopexit.i:                         ; preds = %.loopexit3674.loopexit.i.unr-lcssa, %.lr.ph4194.i.epil.preheader
  %.lcssa2006 = phi <16 x float> [ %i.dzp, %.loopexit3674.loopexit.i.unr-lcssa ], [ %i.eaj, %.lr.ph4194.i.epil.preheader ]
  %.lcssa2005 = phi <16 x float> [ %i.dzq, %.loopexit3674.loopexit.i.unr-lcssa ], [ %i.eak, %.lr.ph4194.i.epil.preheader ]
  %scevgep4951.i = getelementptr i8, ptr %.015774208.i, i64 128
  %scevgep4952.i = getelementptr i8, ptr %scevgep4951.i, i64 %i.duv
  br label %.loopexit3673.i

.loopexit3674.i:                                  ; preds = %.loopexit3675.i
  br i1 %brmerge4529.i, label %.loopexit3673.i, label %.lr.ph4202.i

.lr.ph4202.i:                                     ; preds = %.loopexit3674.i
  %i.eal = getelementptr i8, ptr %gep4219.i, i64 %.idx1773.i
  %i.eam = getelementptr i8, ptr %gep4219.i, i64 %.idx1774.i
  %i.ean = getelementptr i8, ptr %gep4219.i, i64 %.idx1775.i
  %i.eao = getelementptr i8, ptr %gep4219.i, i64 %.idx1776.i
  %i.eap = getelementptr i8, ptr %gep4219.i, i64 %.idx1777.i
  %i.eaq = getelementptr i8, ptr %gep4219.i, i64 %.idx1778.i
  %i.ear = getelementptr i8, ptr %gep4219.i, i64 %.idx1779.i
  %i.eas = getelementptr i8, ptr %gep4219.i, i64 %.idx1780.i
  %i.eat = getelementptr i8, ptr %gep4219.i, i64 %.idx1781.i
  %i.eau = getelementptr i8, ptr %gep4219.i, i64 %.idx1782.i
  %i.eav = getelementptr i8, ptr %gep4219.i, i64 %.idx1783.i
  %i.eaw = getelementptr i8, ptr %gep4219.i, i64 %.idx1784.i
  %i.eax = getelementptr i8, ptr %gep4219.i, i64 %.idx1772.i
  %i.eay = getelementptr i8, ptr %gep4219.i, i64 %.idx1771.i
  %i.eaz = getelementptr [4 x i8], ptr %gep4219.i, i64 %i.dur
  %i.eba = insertelement <8 x ptr> poison, ptr %i.eaz, i64 0
  %i.ebb = insertelement <8 x ptr> %i.eba, ptr %i.eay, i64 1
  %i.ebc = insertelement <8 x ptr> %i.ebb, ptr %i.eax, i64 2
  %i.ebd = insertelement <8 x ptr> %i.ebc, ptr %i.eaw, i64 3
  %i.ebe = insertelement <8 x ptr> %i.ebd, ptr %i.eav, i64 4
  %i.ebf = insertelement <8 x ptr> %i.ebe, ptr %i.eau, i64 5
  %i.ebg = insertelement <8 x ptr> %i.ebf, ptr %i.eat, i64 6
  %i.ebh = insertelement <8 x ptr> %i.ebg, ptr %i.eas, i64 7
  br label %bb.ju

bb.ju:                                            ; preds = %bb.ju, %.lr.ph4202.i
  %indvars.iv4956.i = phi i64 [ 0, %.lr.ph4202.i ], [ %indvars.iv.next4957.i, %bb.ju ] ; 2 uses
  %.715844200.i = phi ptr [ %.015774208.i, %.lr.ph4202.i ], [ %i.ecr, %bb.ju ] ; 3 uses
  %.734264199.i = phi <16 x float> [ %.034194207.i, %.lr.ph4202.i ], [ %i.ecq, %bb.ju ]
  %.734354198.i = phi <16 x float> [ %.034284206.i, %.lr.ph4202.i ], [ %i.ecp, %bb.ju ]
  %i.ebi = getelementptr inbounds nuw [4 x i8], ptr %i.duq, i64 %indvars.iv4956.i
  %i.ebj = load i32, ptr %i.ebi, align 4, !tbaa !66
  %i.ebk = sext i32 %i.ebj to i64                 ; 9 uses
  %i.ebl = getelementptr [4 x i8], ptr %i.eal, i64 %i.ebk
  %i.ebm = load float, ptr %i.ebl, align 4, !tbaa !41
  %i.ebn = getelementptr [4 x i8], ptr %i.eam, i64 %i.ebk
  %i.ebo = load float, ptr %i.ebn, align 4, !tbaa !41
  %i.ebp = getelementptr [4 x i8], ptr %i.ean, i64 %i.ebk
  %i.ebq = load float, ptr %i.ebp, align 4, !tbaa !41
  %i.ebr = getelementptr [4 x i8], ptr %i.eao, i64 %i.ebk
  %i.ebs = getelementptr [4 x i8], ptr %i.eap, i64 %i.ebk
  %i.ebt = getelementptr [4 x i8], ptr %i.eaq, i64 %i.ebk
  %i.ebu = getelementptr [4 x i8], ptr %i.ear, i64 %i.ebk
  %i.ebv = insertelement <4 x ptr> poison, ptr %i.ebu, i64 0
  %i.ebw = insertelement <4 x ptr> %i.ebv, ptr %i.ebt, i64 1
  %i.ebx = insertelement <4 x ptr> %i.ebw, ptr %i.ebs, i64 2
  %i.eby = insertelement <4 x ptr> %i.ebx, ptr %i.ebr, i64 3
  %i.ebz = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %i.eby, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !41
  %i.eca = getelementptr [4 x i8], <8 x ptr> %i.ebh, i64 %i.ebk
  %i.ecb = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %i.eca, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !41
  %i.ecc = getelementptr inbounds [4 x i8], ptr %gep4219.i, i64 %i.ebk
  %i.ecd = load float, ptr %i.ecc, align 4, !tbaa !41
  %i.ece = insertelement <16 x float> poison, float %i.ecd, i64 0
  %i.ecf = shufflevector <8 x float> %i.ecb, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ecg = shufflevector <16 x float> %i.ece, <16 x float> %i.ecf, <16 x i32> <i32 0, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ech = shufflevector <4 x float> %i.ebz, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.eci = shufflevector <16 x float> %i.ecg, <16 x float> %i.ech, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison>
  %i.ecj = insertelement <16 x float> %i.eci, float %i.ebq, i64 13
  %i.eck = insertelement <16 x float> %i.ecj, float %i.ebo, i64 14
  %i.ecl = insertelement <16 x float> %i.eck, float %i.ebm, i64 15 ; 2 uses
  %i.ecm = load <16 x float>, ptr %.715844200.i, align 64, !tbaa !85
  %i.ecn = getelementptr inbounds nuw i8, ptr %.715844200.i, i64 64
  %i.eco = load <16 x float>, ptr %i.ecn, align 64, !tbaa !85
  %i.ecp = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ecl, <16 x float> nofpclass(nan inf) %i.ecm, <16 x float> nofpclass(nan inf) %.734354198.i) ; 2 uses
  %i.ecq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ecl, <16 x float> nofpclass(nan inf) %i.eco, <16 x float> nofpclass(nan inf) %.734264199.i) ; 2 uses
  %i.ecr = getelementptr inbounds nuw i8, ptr %.715844200.i, i64 128
  %indvars.iv.next4957.i = add nuw nsw i64 %indvars.iv4956.i, 1 ; 2 uses
  %exitcond4962.not.i = icmp eq i64 %indvars.iv.next4957.i, %wide.trip.count4940.i
  br i1 %exitcond4962.not.i, label %.loopexit3673.loopexit.i, label %bb.ju, !llvm.loop !332

.loopexit3673.loopexit.i:                         ; preds = %bb.ju
  %scevgep4958.i = getelementptr i8, ptr %.015774208.i, i64 128
  %scevgep4959.i = getelementptr i8, ptr %scevgep4958.i, i64 %i.duv
  br label %.loopexit3673.i

.loopexit3673.i:                                  ; preds = %.loopexit3673.loopexit.i, %.loopexit3674.i, %.loopexit3674.loopexit.i, %bb.jt, %.loopexit3675.loopexit.i, %bb.js, %.loopexit3677.thread.i
  %.83436.i = phi nsz <16 x float> [ %.034284206.i, %.loopexit3674.i ], [ %i.ecp, %.loopexit3673.loopexit.i ], [ %.034284206.i, %bb.jt ], [ %.lcssa2006, %.loopexit3674.loopexit.i ], [ %.lcssa2002, %.loopexit3677.thread.i ], [ %.lcssa2004, %.loopexit3675.loopexit.i ], [ %.034284206.i, %bb.js ] ; 2 uses
  %.83427.i = phi nsz <16 x float> [ %.034194207.i, %.loopexit3674.i ], [ %i.ecq, %.loopexit3673.loopexit.i ], [ %.034194207.i, %bb.jt ], [ %.lcssa2005, %.loopexit3674.loopexit.i ], [ %.lcssa2001, %.loopexit3677.thread.i ], [ %.lcssa2003, %.loopexit3675.loopexit.i ], [ %.034194207.i, %bb.js ] ; 2 uses
  %.81585.i = phi ptr [ %.015774208.i, %.loopexit3674.i ], [ %scevgep4959.i, %.loopexit3673.loopexit.i ], [ %.015774208.i, %bb.jt ], [ %scevgep4952.i, %.loopexit3674.loopexit.i ], [ %scevgep4938.i, %.loopexit3677.thread.i ], [ %scevgep4945.i, %.loopexit3675.loopexit.i ], [ %.015774208.i, %bb.js ] ; 2 uses
  %i.ecs = add nuw nsw i32 %.015724209.i, 16      ; 2 uses
  %i.ect = or disjoint i32 %i.ecs, 15
  %i.ecu = icmp slt i32 %i.ect, %i.byq
  br i1 %i.ecu, label %.noexc1915.i, label %._crit_edge4210.i, !llvm.loop !333

._crit_edge4210.i:                                ; preds = %.loopexit3673.i, %.noexc1917.i
  %.03428.lcssa.i = phi <16 x float> [ zeroinitializer, %.noexc1917.i ], [ %.83436.i, %.loopexit3673.i ] ; 2 uses
  %.03419.lcssa.i = phi <16 x float> [ zeroinitializer, %.noexc1917.i ], [ %.83427.i, %.loopexit3673.i ] ; 2 uses
  %.01577.lcssa.i = phi ptr [ %i.dtk, %.noexc1917.i ], [ %.81585.i, %.loopexit3673.i ] ; 2 uses
  %.01572.lcssa.i = phi i32 [ 0, %.noexc1917.i ], [ %i.bzj, %.loopexit3673.i ] ; 3 uses
  %i.ecv = shufflevector <16 x float> %.03428.lcssa.i, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ecw = shufflevector <16 x float> %.03428.lcssa.i, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ecx = fadd fast <8 x float> %i.ecv, %i.ecw   ; 2 uses
  %i.ecy = shufflevector <8 x float> %i.ecx, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ecz = shufflevector <8 x float> %i.ecx, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.eda = fadd fast <4 x float> %i.ecy, %i.ecz   ; 4 uses
  %i.edb = shufflevector <16 x float> %.03419.lcssa.i, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.edc = shufflevector <16 x float> %.03419.lcssa.i, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.edd = fadd fast <8 x float> %i.edb, %i.edc   ; 2 uses
  %i.ede = shufflevector <8 x float> %i.edd, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.edf = shufflevector <8 x float> %i.edd, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.edg = fadd fast <4 x float> %i.ede, %i.edf   ; 4 uses
  %i.edh = or disjoint i32 %.01572.lcssa.i, 7
  %i.edi = icmp slt i32 %i.edh, %i.byq
  br i1 %i.edi, label %.noexc1913.lr.ph.i, label %._crit_edge4249.i

.noexc1913.lr.ph.i:                               ; preds = %._crit_edge4210.i
  %i.edj = trunc nuw nsw i64 %indvars.iv5018.i to i32
  %.reass4348.i = mul i32 %factor.op.mul4345.i, %i.edj
  %i.edk = sext i32 %.reass4348.i to i64
  %invariant.gep4257.i = getelementptr [4 x i8], ptr %invariant.gep4217.i, i64 %i.edk
  %i.edl = load i32, ptr %i.f, align 4            ; 6 uses
  %i.edm = icmp slt i32 %i.edl, 1                 ; 2 uses
  %i.edn = load ptr, ptr %i.g, align 8            ; 7 uses
  %i.edo = load i64, ptr %i.d, align 8            ; 8 uses
  %i.edp = icmp sgt i32 %i.edl, 0
  %.idx1760.i = mul i64 %i.edo, 28
  %.idx1761.i = mul i64 %i.edo, 24
  %.idx1762.i = mul i64 %i.edo, 20
  %.idx1763.i = shl i64 %i.edo, 4
  %.idx1764.i = mul i64 %i.edo, 12
  %.idx1765.i = shl i64 %i.edo, 3
  %i.edq = add i32 %i.edl, -1
  %i.edr = zext i32 %i.edq to i64
  %i.eds = shl nuw nsw i64 %i.edr, 6              ; 3 uses
  %brmerge4532.i = select i1 %i.bzb, i1 true, i1 %i.edm
  %wide.trip.count4968.i = zext i32 %i.edl to i64 ; 6 uses
  %brmerge4535.i = select i1 %i.bzd, i1 true, i1 %i.edm
  %i.edt = add nsw i64 %wide.trip.count4968.i, -1 ; 2 uses
  %xtraiter2181 = and i64 %wide.trip.count4968.i, 1
  %i.edu = icmp eq i64 %i.edt, 0
  %unroll_iter2187 = and i64 %wide.trip.count4968.i, 2147483646
  %lcmp.mod2183.not = icmp eq i64 %xtraiter2181, 0
  %lcmp.mod2186 = trunc i32 %i.edl to i1
  %xtraiter2189 = and i64 %wide.trip.count4968.i, 1
  %i.edv = icmp eq i64 %i.edt, 0
  %unroll_iter2195 = and i64 %wide.trip.count4968.i, 2147483646
  %lcmp.mod2191.not = icmp eq i64 %xtraiter2189, 0
  %lcmp.mod2194 = trunc i32 %i.edl to i1
  br label %.noexc1913.i

.noexc1913.i:                                     ; preds = %.loopexit3668.i, %.noexc1913.lr.ph.i
  %.115734248.i = phi i32 [ %.01572.lcssa.i, %.noexc1913.lr.ph.i ], [ %i.eij, %.loopexit3668.i ] ; 2 uses
  %.915864247.i = phi ptr [ %.01577.lcssa.i, %.noexc1913.lr.ph.i ], [ %.151592.i, %.loopexit3668.i ] ; 10 uses
  %.034054246.i = phi <8 x float> [ zeroinitializer, %.noexc1913.lr.ph.i ], [ %.63411.i, %.loopexit3668.i ] ; 7 uses
  %.034124245.i = phi <8 x float> [ zeroinitializer, %.noexc1913.lr.ph.i ], [ %.63418.i, %.loopexit3668.i ] ; 7 uses
  %i.edw = sdiv i32 %.115734248.i, %i.byo
  %i.edx = sext i32 %i.edw to i64
  %.reass4255.i = mul i64 %factor.op.mul4215.i, %i.edx
  %gep4258.i = getelementptr i8, ptr %invariant.gep4257.i, i64 %.reass4255.i ; 15 uses
  br i1 %brmerge4532.i, label %.loopexit3671.i, label %.lr.ph4224.i.preheader

.lr.ph4224.i.preheader:                           ; preds = %.noexc1913.i
  br i1 %i.edu, label %.lr.ph4224.i.epil.preheader, label %.lr.ph4224.i

.lr.ph4224.i:                                     ; preds = %.lr.ph4224.i.preheader, %.lr.ph4224.i
  %indvars.iv4963.i = phi i64 [ %indvars.iv.next4964.i.1, %.lr.ph4224.i ], [ 0, %.lr.ph4224.i.preheader ] ; 3 uses
  %.1015874222.i = phi ptr [ %i.eeu, %.lr.ph4224.i ], [ %.915864247.i, %.lr.ph4224.i.preheader ] ; 5 uses
  %.134064221.i = phi <8 x float> [ %i.eet, %.lr.ph4224.i ], [ %.034054246.i, %.lr.ph4224.i.preheader ]
  %.134134220.i = phi <8 x float> [ %i.ees, %.lr.ph4224.i ], [ %.034124245.i, %.lr.ph4224.i.preheader ]
  %niter2188 = phi i64 [ %niter2188.next.1, %.lr.ph4224.i ], [ 0, %.lr.ph4224.i.preheader ]
  %i.edy = getelementptr inbounds nuw [4 x i8], ptr %i.edn, i64 %indvars.iv4963.i
  %i.edz = load i32, ptr %i.edy, align 4, !tbaa !66
  %i.eea = sext i32 %i.edz to i64
  %i.eeb = getelementptr inbounds [4 x i8], ptr %gep4258.i, i64 %i.eea
  %i.eec = load <8 x float>, ptr %i.eeb, align 32, !tbaa !85 ; 2 uses
  %i.eed = load <8 x float>, ptr %.1015874222.i, align 32, !tbaa !85
  %i.eee = getelementptr inbounds nuw i8, ptr %.1015874222.i, i64 32
  %i.eef = load <8 x float>, ptr %i.eee, align 32, !tbaa !85
  %i.eeg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.eec, <8 x float> nofpclass(nan inf) %i.eed, <8 x float> nofpclass(nan inf) %.134134220.i)
  %i.eeh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.eec, <8 x float> nofpclass(nan inf) %i.eef, <8 x float> nofpclass(nan inf) %.134064221.i)
  %i.eei = getelementptr inbounds nuw i8, ptr %.1015874222.i, i64 64
  %i.eej = getelementptr inbounds nuw [4 x i8], ptr %i.edn, i64 %indvars.iv4963.i
  %i.eek = getelementptr inbounds nuw i8, ptr %i.eej, i64 4
  %i.eel = load i32, ptr %i.eek, align 4, !tbaa !66
  %i.eem = sext i32 %i.eel to i64
  %i.een = getelementptr inbounds [4 x i8], ptr %gep4258.i, i64 %i.eem
  %i.eeo = load <8 x float>, ptr %i.een, align 32, !tbaa !85 ; 2 uses
  %i.eep = load <8 x float>, ptr %i.eei, align 32, !tbaa !85
  %i.eeq = getelementptr inbounds nuw i8, ptr %.1015874222.i, i64 96
  %i.eer = load <8 x float>, ptr %i.eeq, align 32, !tbaa !85
  %i.ees = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.eeo, <8 x float> nofpclass(nan inf) %i.eep, <8 x float> nofpclass(nan inf) %i.eeg) ; 3 uses
  %i.eet = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.eeo, <8 x float> nofpclass(nan inf) %i.eer, <8 x float> nofpclass(nan inf) %i.eeh) ; 3 uses
  %i.eeu = getelementptr inbounds nuw i8, ptr %.1015874222.i, i64 128 ; 2 uses
  %indvars.iv.next4964.i.1 = add nuw nsw i64 %indvars.iv4963.i, 2 ; 2 uses
  %niter2188.next.1 = add i64 %niter2188, 2       ; 2 uses
  %niter2188.ncmp.1 = icmp eq i64 %niter2188.next.1, %unroll_iter2187
  br i1 %niter2188.ncmp.1, label %.loopexit3671.thread.i.unr-lcssa, label %.lr.ph4224.i, !llvm.loop !334

.loopexit3671.thread.i.unr-lcssa:                 ; preds = %.lr.ph4224.i
  br i1 %lcmp.mod2183.not, label %.loopexit3671.thread.i, label %.lr.ph4224.i.epil.preheader

.lr.ph4224.i.epil.preheader:                      ; preds = %.loopexit3671.thread.i.unr-lcssa, %.lr.ph4224.i.preheader
  %indvars.iv4963.i.epil.init = phi i64 [ 0, %.lr.ph4224.i.preheader ], [ %indvars.iv.next4964.i.1, %.loopexit3671.thread.i.unr-lcssa ]
  %.1015874222.i.epil.init = phi ptr [ %.915864247.i, %.lr.ph4224.i.preheader ], [ %i.eeu, %.loopexit3671.thread.i.unr-lcssa ] ; 2 uses
  %.134064221.i.epil.init = phi <8 x float> [ %.034054246.i, %.lr.ph4224.i.preheader ], [ %i.eet, %.loopexit3671.thread.i.unr-lcssa ]
  %.134134220.i.epil.init = phi <8 x float> [ %.034124245.i, %.lr.ph4224.i.preheader ], [ %i.ees, %.loopexit3671.thread.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod2186)
  %i.eev = getelementptr inbounds nuw [4 x i8], ptr %i.edn, i64 %indvars.iv4963.i.epil.init
  %i.eew = load i32, ptr %i.eev, align 4, !tbaa !66
  %i.eex = sext i32 %i.eew to i64
  %i.eey = getelementptr inbounds [4 x i8], ptr %gep4258.i, i64 %i.eex
  %i.eez = load <8 x float>, ptr %i.eey, align 32, !tbaa !85 ; 2 uses
  %i.efa = load <8 x float>, ptr %.1015874222.i.epil.init, align 32, !tbaa !85
  %i.efb = getelementptr inbounds nuw i8, ptr %.1015874222.i.epil.init, i64 32
  %i.efc = load <8 x float>, ptr %i.efb, align 32, !tbaa !85
  %i.efd = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.eez, <8 x float> nofpclass(nan inf) %i.efa, <8 x float> nofpclass(nan inf) %.134134220.i.epil.init)
  %i.efe = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.eez, <8 x float> nofpclass(nan inf) %i.efc, <8 x float> nofpclass(nan inf) %.134064221.i.epil.init)
  br label %.loopexit3671.thread.i

.loopexit3671.thread.i:                           ; preds = %.loopexit3671.thread.i.unr-lcssa, %.lr.ph4224.i.epil.preheader
  %.lcssa2010 = phi <8 x float> [ %i.ees, %.loopexit3671.thread.i.unr-lcssa ], [ %i.efd, %.lr.ph4224.i.epil.preheader ]
  %.lcssa2009 = phi <8 x float> [ %i.eet, %.loopexit3671.thread.i.unr-lcssa ], [ %i.efe, %.lr.ph4224.i.epil.preheader ]
  %scevgep4965.i = getelementptr i8, ptr %.915864247.i, i64 64
  %scevgep4966.i = getelementptr i8, ptr %scevgep4965.i, i64 %i.eds
  br label %.loopexit3668.i

.loopexit3671.i:                                  ; preds = %.noexc1913.i
  br i1 %i.bzc, label %.loopexit3669.i, label %bb.jv

bb.jv:                                            ; preds = %.loopexit3671.i
  %i.eff = getelementptr inbounds nuw [4 x i8], ptr %gep4258.i, i64 %i.edo ; 3 uses
  br i1 %i.edp, label %.lr.ph4233.i.preheader, label %.loopexit3668.i

.lr.ph4233.i.preheader:                           ; preds = %bb.jv
  br i1 %i.edv, label %.lr.ph4233.i.epil.preheader, label %.lr.ph4233.i

.lr.ph4233.i:                                     ; preds = %.lr.ph4233.i.preheader, %.lr.ph4233.i
  %indvars.iv4970.i = phi i64 [ %indvars.iv.next4971.i.1, %.lr.ph4233.i ], [ 0, %.lr.ph4233.i.preheader ] ; 3 uses
  %.1215894230.i = phi ptr [ %i.egi, %.lr.ph4233.i ], [ %.915864247.i, %.lr.ph4233.i.preheader ] ; 5 uses
  %.334084229.i = phi <8 x float> [ %i.egh, %.lr.ph4233.i ], [ %.034054246.i, %.lr.ph4233.i.preheader ]
  %.334154228.i = phi <8 x float> [ %i.egg, %.lr.ph4233.i ], [ %.034124245.i, %.lr.ph4233.i.preheader ]
  %niter2196 = phi i64 [ %niter2196.next.1, %.lr.ph4233.i ], [ 0, %.lr.ph4233.i.preheader ]
  %i.efg = getelementptr inbounds nuw [4 x i8], ptr %i.edn, i64 %indvars.iv4970.i
  %i.efh = load i32, ptr %i.efg, align 4, !tbaa !66
  %i.efi = sext i32 %i.efh to i64                 ; 2 uses
  %i.efj = getelementptr inbounds [4 x i8], ptr %gep4258.i, i64 %i.efi
  %i.efk = load <4 x float>, ptr %i.efj, align 16, !tbaa !85
  %i.efl = getelementptr inbounds [4 x i8], ptr %i.eff, i64 %i.efi
  %i.efm = load <4 x float>, ptr %i.efl, align 16, !tbaa !85
  %i.efn = shufflevector <4 x float> %i.efk, <4 x float> %i.efm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.efo = load <8 x float>, ptr %.1215894230.i, align 32, !tbaa !85
  %i.efp = getelementptr inbounds nuw i8, ptr %.1215894230.i, i64 32
  %i.efq = load <8 x float>, ptr %i.efp, align 32, !tbaa !85
  %i.efr = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.efn, <8 x float> nofpclass(nan inf) %i.efo, <8 x float> nofpclass(nan inf) %.334154228.i)
  %i.efs = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.efn, <8 x float> nofpclass(nan inf) %i.efq, <8 x float> nofpclass(nan inf) %.334084229.i)
  %i.eft = getelementptr inbounds nuw i8, ptr %.1215894230.i, i64 64
  %i.efu = getelementptr inbounds nuw [4 x i8], ptr %i.edn, i64 %indvars.iv4970.i
  %i.efv = getelementptr inbounds nuw i8, ptr %i.efu, i64 4
  %i.efw = load i32, ptr %i.efv, align 4, !tbaa !66
  %i.efx = sext i32 %i.efw to i64                 ; 2 uses
  %i.efy = getelementptr inbounds [4 x i8], ptr %gep4258.i, i64 %i.efx
  %i.efz = load <4 x float>, ptr %i.efy, align 16, !tbaa !85
  %i.ega = getelementptr inbounds [4 x i8], ptr %i.eff, i64 %i.efx
  %i.egb = load <4 x float>, ptr %i.ega, align 16, !tbaa !85
  %i.egc = shufflevector <4 x float> %i.efz, <4 x float> %i.egb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.egd = load <8 x float>, ptr %i.eft, align 32, !tbaa !85
  %i.ege = getelementptr inbounds nuw i8, ptr %.1215894230.i, i64 96
  %i.egf = load <8 x float>, ptr %i.ege, align 32, !tbaa !85
  %i.egg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.egc, <8 x float> nofpclass(nan inf) %i.egd, <8 x float> nofpclass(nan inf) %i.efr) ; 3 uses
  %i.egh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.egc, <8 x float> nofpclass(nan inf) %i.egf, <8 x float> nofpclass(nan inf) %i.efs) ; 3 uses
  %i.egi = getelementptr inbounds nuw i8, ptr %.1215894230.i, i64 128 ; 2 uses
  %indvars.iv.next4971.i.1 = add nuw nsw i64 %indvars.iv4970.i, 2 ; 2 uses
  %niter2196.next.1 = add i64 %niter2196, 2       ; 2 uses
  %niter2196.ncmp.1 = icmp eq i64 %niter2196.next.1, %unroll_iter2195
  br i1 %niter2196.ncmp.1, label %.loopexit3669.loopexit.i.unr-lcssa, label %.lr.ph4233.i, !llvm.loop !335

.loopexit3669.loopexit.i.unr-lcssa:               ; preds = %.lr.ph4233.i
  br i1 %lcmp.mod2191.not, label %.loopexit3669.loopexit.i, label %.lr.ph4233.i.epil.preheader

.lr.ph4233.i.epil.preheader:                      ; preds = %.loopexit3669.loopexit.i.unr-lcssa, %.lr.ph4233.i.preheader
  %indvars.iv4970.i.epil.init = phi i64 [ 0, %.lr.ph4233.i.preheader ], [ %indvars.iv.next4971.i.1, %.loopexit3669.loopexit.i.unr-lcssa ]
  %.1215894230.i.epil.init = phi ptr [ %.915864247.i, %.lr.ph4233.i.preheader ], [ %i.egi, %.loopexit3669.loopexit.i.unr-lcssa ] ; 2 uses
  %.334084229.i.epil.init = phi <8 x float> [ %.034054246.i, %.lr.ph4233.i.preheader ], [ %i.egh, %.loopexit3669.loopexit.i.unr-lcssa ]
  %.334154228.i.epil.init = phi <8 x float> [ %.034124245.i, %.lr.ph4233.i.preheader ], [ %i.egg, %.loopexit3669.loopexit.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod2194)
  %i.egj = getelementptr inbounds nuw [4 x i8], ptr %i.edn, i64 %indvars.iv4970.i.epil.init
  %i.egk = load i32, ptr %i.egj, align 4, !tbaa !66
  %i.egl = sext i32 %i.egk to i64                 ; 2 uses
  %i.egm = getelementptr inbounds [4 x i8], ptr %gep4258.i, i64 %i.egl
  %i.egn = load <4 x float>, ptr %i.egm, align 16, !tbaa !85
  %i.ego = getelementptr inbounds [4 x i8], ptr %i.eff, i64 %i.egl
  %i.egp = load <4 x float>, ptr %i.ego, align 16, !tbaa !85
  %i.egq = shufflevector <4 x float> %i.egn, <4 x float> %i.egp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.egr = load <8 x float>, ptr %.1215894230.i.epil.init, align 32, !tbaa !85
  %i.egs = getelementptr inbounds nuw i8, ptr %.1215894230.i.epil.init, i64 32
  %i.egt = load <8 x float>, ptr %i.egs, align 32, !tbaa !85
  %i.egu = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.egq, <8 x float> nofpclass(nan inf) %i.egr, <8 x float> nofpclass(nan inf) %.334154228.i.epil.init)
  %i.egv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.egq, <8 x float> nofpclass(nan inf) %i.egt, <8 x float> nofpclass(nan inf) %.334084229.i.epil.init)
  br label %.loopexit3669.loopexit.i

.loopexit3669.loopexit.i:                         ; preds = %.loopexit3669.loopexit.i.unr-lcssa, %.lr.ph4233.i.epil.preheader
  %.lcssa2012 = phi <8 x float> [ %i.egg, %.loopexit3669.loopexit.i.unr-lcssa ], [ %i.egu, %.lr.ph4233.i.epil.preheader ]
  %.lcssa2011 = phi <8 x float> [ %i.egh, %.loopexit3669.loopexit.i.unr-lcssa ], [ %i.egv, %.lr.ph4233.i.epil.preheader ]
  %scevgep4972.i = getelementptr i8, ptr %.915864247.i, i64 64
  %scevgep4973.i = getelementptr i8, ptr %scevgep4972.i, i64 %i.eds
  br label %.loopexit3668.i

.loopexit3669.i:                                  ; preds = %.loopexit3671.i
  br i1 %brmerge4535.i, label %.loopexit3668.i, label %.lr.ph4241.i

.lr.ph4241.i:                                     ; preds = %.loopexit3669.i
  %i.egw = getelementptr i8, ptr %gep4258.i, i64 %.idx1760.i
  %i.egx = getelementptr i8, ptr %gep4258.i, i64 %.idx1761.i
  %i.egy = getelementptr i8, ptr %gep4258.i, i64 %.idx1762.i
  %i.egz = getelementptr i8, ptr %gep4258.i, i64 %.idx1763.i
  %i.eha = getelementptr i8, ptr %gep4258.i, i64 %.idx1764.i
  %i.ehb = getelementptr i8, ptr %gep4258.i, i64 %.idx1765.i
  %i.ehc = getelementptr [4 x i8], ptr %gep4258.i, i64 %i.edo
  br label %bb.jw

bb.jw:                                            ; preds = %bb.jw, %.lr.ph4241.i
  %indvars.iv4977.i = phi i64 [ 0, %.lr.ph4241.i ], [ %indvars.iv.next4978.i, %bb.jw ] ; 2 uses
  %.1415914239.i = phi ptr [ %.915864247.i, %.lr.ph4241.i ], [ %i.eii, %bb.jw ] ; 3 uses
  %.534104238.i = phi <8 x float> [ %.034054246.i, %.lr.ph4241.i ], [ %i.eih, %bb.jw ]
  %.534174237.i = phi <8 x float> [ %.034124245.i, %.lr.ph4241.i ], [ %i.eig, %bb.jw ]
  %i.ehd = getelementptr inbounds nuw [4 x i8], ptr %i.edn, i64 %indvars.iv4977.i
  %i.ehe = load i32, ptr %i.ehd, align 4, !tbaa !66
  %i.ehf = sext i32 %i.ehe to i64                 ; 8 uses
  %i.ehg = getelementptr [4 x i8], ptr %i.egw, i64 %i.ehf
  %i.ehh = getelementptr [4 x i8], ptr %i.egx, i64 %i.ehf
  %i.ehi = getelementptr [4 x i8], ptr %i.egy, i64 %i.ehf
  %i.ehj = getelementptr [4 x i8], ptr %i.egz, i64 %i.ehf
  %i.ehk = insertelement <4 x ptr> poison, ptr %i.ehj, i64 0
  %i.ehl = insertelement <4 x ptr> %i.ehk, ptr %i.ehi, i64 1
  %i.ehm = insertelement <4 x ptr> %i.ehl, ptr %i.ehh, i64 2
  %i.ehn = insertelement <4 x ptr> %i.ehm, ptr %i.ehg, i64 3
  %i.eho = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %i.ehn, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !41
  %i.ehp = getelementptr [4 x i8], ptr %i.eha, i64 %i.ehf
  %i.ehq = load float, ptr %i.ehp, align 4, !tbaa !41
  %i.ehr = getelementptr [4 x i8], ptr %i.ehb, i64 %i.ehf
  %i.ehs = load float, ptr %i.ehr, align 4, !tbaa !41
  %i.eht = getelementptr [4 x i8], ptr %i.ehc, i64 %i.ehf
  %i.ehu = load float, ptr %i.eht, align 4, !tbaa !41
  %i.ehv = getelementptr inbounds [4 x i8], ptr %gep4258.i, i64 %i.ehf
  %i.ehw = load float, ptr %i.ehv, align 4, !tbaa !41
  %i.ehx = insertelement <8 x float> poison, float %i.ehw, i64 0
  %i.ehy = insertelement <8 x float> %i.ehx, float %i.ehu, i64 1
  %i.ehz = insertelement <8 x float> %i.ehy, float %i.ehs, i64 2
  %i.eia = insertelement <8 x float> %i.ehz, float %i.ehq, i64 3
  %i.eib = shufflevector <4 x float> %i.eho, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.eic = shufflevector <8 x float> %i.eia, <8 x float> %i.eib, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.eid = load <8 x float>, ptr %.1415914239.i, align 32, !tbaa !85
  %i.eie = getelementptr inbounds nuw i8, ptr %.1415914239.i, i64 32
  %i.eif = load <8 x float>, ptr %i.eie, align 32, !tbaa !85
  %i.eig = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.eic, <8 x float> nofpclass(nan inf) %i.eid, <8 x float> nofpclass(nan inf) %.534174237.i) ; 2 uses
  %i.eih = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.eic, <8 x float> nofpclass(nan inf) %i.eif, <8 x float> nofpclass(nan inf) %.534104238.i) ; 2 uses
  %i.eii = getelementptr inbounds nuw i8, ptr %.1415914239.i, i64 64
  %indvars.iv.next4978.i = add nuw nsw i64 %indvars.iv4977.i, 1 ; 2 uses
  %exitcond4983.not.i = icmp eq i64 %indvars.iv.next4978.i, %wide.trip.count4968.i
  br i1 %exitcond4983.not.i, label %.loopexit3668.loopexit.i, label %bb.jw, !llvm.loop !336

.loopexit3668.loopexit.i:                         ; preds = %bb.jw
  %scevgep4979.i = getelementptr i8, ptr %.915864247.i, i64 64
  %scevgep4980.i = getelementptr i8, ptr %scevgep4979.i, i64 %i.eds
  br label %.loopexit3668.i

.loopexit3668.i:                                  ; preds = %.loopexit3668.loopexit.i, %.loopexit3669.i, %.loopexit3669.loopexit.i, %bb.jv, %.loopexit3671.thread.i
  %.63418.i = phi nsz <8 x float> [ %.034124245.i, %.loopexit3669.i ], [ %i.eig, %.loopexit3668.loopexit.i ], [ %.lcssa2010, %.loopexit3671.thread.i ], [ %.lcssa2012, %.loopexit3669.loopexit.i ], [ %.034124245.i, %bb.jv ] ; 2 uses
  %.63411.i = phi nsz <8 x float> [ %.034054246.i, %.loopexit3669.i ], [ %i.eih, %.loopexit3668.loopexit.i ], [ %.lcssa2009, %.loopexit3671.thread.i ], [ %.lcssa2011, %.loopexit3669.loopexit.i ], [ %.034054246.i, %bb.jv ] ; 2 uses
  %.151592.i = phi ptr [ %.915864247.i, %.loopexit3669.i ], [ %scevgep4980.i, %.loopexit3668.loopexit.i ], [ %scevgep4966.i, %.loopexit3671.thread.i ], [ %scevgep4973.i, %.loopexit3669.loopexit.i ], [ %.915864247.i, %bb.jv ] ; 2 uses
  %i.eij = add nuw nsw i32 %.115734248.i, 8       ; 3 uses
  %i.eik = or disjoint i32 %i.eij, 7
  %i.eil = icmp slt i32 %i.eik, %i.byq
  br i1 %i.eil, label %.noexc1913.i, label %._crit_edge4249.i, !llvm.loop !337

._crit_edge4249.i:                                ; preds = %.loopexit3668.i, %._crit_edge4210.i
  %.03412.lcssa.i = phi <8 x float> [ zeroinitializer, %._crit_edge4210.i ], [ %.63418.i, %.loopexit3668.i ] ; 2 uses
  %.03405.lcssa.i = phi <8 x float> [ zeroinitializer, %._crit_edge4210.i ], [ %.63411.i, %.loopexit3668.i ] ; 2 uses
  %.91586.lcssa.i = phi ptr [ %.01577.lcssa.i, %._crit_edge4210.i ], [ %.151592.i, %.loopexit3668.i ] ; 2 uses
  %.11573.lcssa.i = phi i32 [ %.01572.lcssa.i, %._crit_edge4210.i ], [ %i.eij, %.loopexit3668.i ] ; 3 uses
  %i.eim = shufflevector <8 x float> %.03412.lcssa.i, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ein = shufflevector <8 x float> %.03412.lcssa.i, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.eio = fadd fast <4 x float> %i.eim, %i.ein   ; 4 uses
  %i.eip = shufflevector <8 x float> %.03405.lcssa.i, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.eiq = shufflevector <8 x float> %.03405.lcssa.i, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.eir = fadd fast <4 x float> %i.eip, %i.eiq   ; 4 uses
  %i.eis = or disjoint i32 %.11573.lcssa.i, 3
  %i.eit = icmp slt i32 %i.eis, %i.byq
  br i1 %i.eit, label %.noexc1911.lr.ph.i, label %._crit_edge4279.i

.noexc1911.lr.ph.i:                               ; preds = %._crit_edge4249.i
  %i.eiu = trunc nuw nsw i64 %indvars.iv5018.i to i32
  %.reass4350.i = mul i32 %factor.op.mul4345.i, %i.eiu
  %i.eiv = sext i32 %.reass4350.i to i64
  %invariant.gep4287.i = getelementptr [4 x i8], ptr %invariant.gep4217.i, i64 %i.eiv
  %i.eiw = load i32, ptr %i.f, align 4            ; 5 uses
  %i.eix = icmp slt i32 %i.eiw, 1                 ; 2 uses
  %i.eiy = load ptr, ptr %i.g, align 8            ; 6 uses
  %i.eiz = load i64, ptr %i.d, align 8            ; 3 uses
  %.idx1755.i = mul i64 %i.eiz, 12
  %.idx1756.i = shl i64 %i.eiz, 3
  %i.eja = add i32 %i.eiw, -1
  %i.ejb = zext i32 %i.eja to i64
  %i.ejc = shl nuw nsw i64 %i.ejb, 5              ; 2 uses
  %brmerge4538.i = select i1 %i.bzc, i1 true, i1 %i.eix
  %wide.trip.count4989.i = zext i32 %i.eiw to i64 ; 5 uses
  %brmerge4541.i = select i1 %i.bzd, i1 true, i1 %i.eix
  %i.ejd = add nsw i64 %wide.trip.count4989.i, -1 ; 2 uses
  %xtraiter2197 = and i64 %wide.trip.count4989.i, 1
  %i.eje = icmp eq i64 %i.ejd, 0
  %unroll_iter2203 = and i64 %wide.trip.count4989.i, 2147483646
  %lcmp.mod2199.not = icmp eq i64 %xtraiter2197, 0
  %lcmp.mod2202 = trunc i32 %i.eiw to i1
  %xtraiter2206 = and i64 %wide.trip.count4989.i, 1
  %i.ejf = icmp eq i64 %i.ejd, 0
  %unroll_iter2212 = and i64 %wide.trip.count4989.i, 2147483646
  %lcmp.mod2208.not = icmp eq i64 %xtraiter2206, 0
  %lcmp.mod2211 = trunc i32 %i.eiw to i1
  br label %.noexc1911.i

.noexc1911.i:                                     ; preds = %.loopexit3664.i, %.noexc1911.lr.ph.i
  %.215744278.i = phi i32 [ %.11573.lcssa.i, %.noexc1911.lr.ph.i ], [ %i.end, %.loopexit3664.i ] ; 2 uses
  %.1615934277.i = phi ptr [ %.91586.lcssa.i, %.noexc1911.lr.ph.i ], [ %.201597.i, %.loopexit3664.i ] ; 7 uses
  %.033954276.i = phi <4 x float> [ zeroinitializer, %.noexc1911.lr.ph.i ], [ %.43399.i, %.loopexit3664.i ] ; 5 uses
  %.034004275.i = phi <4 x float> [ zeroinitializer, %.noexc1911.lr.ph.i ], [ %.43404.i, %.loopexit3664.i ] ; 5 uses
  %i.ejg = sdiv i32 %.215744278.i, %i.byo
  %i.ejh = sext i32 %i.ejg to i64
  %.reass4285.i = mul i64 %factor.op.mul4215.i, %i.ejh
  %gep4288.i = getelementptr i8, ptr %invariant.gep4287.i, i64 %.reass4285.i ; 9 uses
  br i1 %brmerge4538.i, label %.loopexit3666.i, label %.lr.ph4263.i.preheader

.lr.ph4263.i.preheader:                           ; preds = %.noexc1911.i
  br i1 %i.eje, label %.lr.ph4263.i.epil.preheader, label %.lr.ph4263.i

.lr.ph4263.i:                                     ; preds = %.lr.ph4263.i.preheader, %.lr.ph4263.i
  %indvars.iv4984.i = phi i64 [ %indvars.iv.next4985.i.1, %.lr.ph4263.i ], [ 0, %.lr.ph4263.i.preheader ] ; 3 uses
  %.1715944261.i = phi ptr [ %i.eke, %.lr.ph4263.i ], [ %.1615934277.i, %.lr.ph4263.i.preheader ] ; 5 uses
  %.133964260.i = phi <4 x float> [ %i.ekd, %.lr.ph4263.i ], [ %.033954276.i, %.lr.ph4263.i.preheader ]
  %.134014259.i = phi <4 x float> [ %i.ekc, %.lr.ph4263.i ], [ %.034004275.i, %.lr.ph4263.i.preheader ]
  %niter2204 = phi i64 [ %niter2204.next.1, %.lr.ph4263.i ], [ 0, %.lr.ph4263.i.preheader ]
  %i.eji = getelementptr inbounds nuw [4 x i8], ptr %i.eiy, i64 %indvars.iv4984.i
  %i.ejj = load i32, ptr %i.eji, align 4, !tbaa !66
  %i.ejk = sext i32 %i.ejj to i64
  %i.ejl = getelementptr inbounds [4 x i8], ptr %gep4288.i, i64 %i.ejk
  %i.ejm = load <4 x float>, ptr %i.ejl, align 16, !tbaa !85 ; 2 uses
  %i.ejn = load <4 x float>, ptr %.1715944261.i, align 16, !tbaa !85
  %i.ejo = getelementptr inbounds nuw i8, ptr %.1715944261.i, i64 16
  %i.ejp = load <4 x float>, ptr %i.ejo, align 16, !tbaa !85
  %i.ejq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ejm, <4 x float> nofpclass(nan inf) %i.ejn, <4 x float> nofpclass(nan inf) %.134014259.i)
  %i.ejr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ejm, <4 x float> nofpclass(nan inf) %i.ejp, <4 x float> nofpclass(nan inf) %.133964260.i)
  %i.ejs = getelementptr inbounds nuw i8, ptr %.1715944261.i, i64 32
  %i.ejt = getelementptr inbounds nuw [4 x i8], ptr %i.eiy, i64 %indvars.iv4984.i
  %i.eju = getelementptr inbounds nuw i8, ptr %i.ejt, i64 4
  %i.ejv = load i32, ptr %i.eju, align 4, !tbaa !66
  %i.ejw = sext i32 %i.ejv to i64
  %i.ejx = getelementptr inbounds [4 x i8], ptr %gep4288.i, i64 %i.ejw
  %i.ejy = load <4 x float>, ptr %i.ejx, align 16, !tbaa !85 ; 2 uses
  %i.ejz = load <4 x float>, ptr %i.ejs, align 16, !tbaa !85
  %i.eka = getelementptr inbounds nuw i8, ptr %.1715944261.i, i64 48
  %i.ekb = load <4 x float>, ptr %i.eka, align 16, !tbaa !85
  %i.ekc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ejy, <4 x float> nofpclass(nan inf) %i.ejz, <4 x float> nofpclass(nan inf) %i.ejq) ; 3 uses
  %i.ekd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ejy, <4 x float> nofpclass(nan inf) %i.ekb, <4 x float> nofpclass(nan inf) %i.ejr) ; 3 uses
  %i.eke = getelementptr inbounds nuw i8, ptr %.1715944261.i, i64 64 ; 2 uses
  %indvars.iv.next4985.i.1 = add nuw nsw i64 %indvars.iv4984.i, 2 ; 2 uses
  %niter2204.next.1 = add i64 %niter2204, 2       ; 2 uses
  %niter2204.ncmp.1 = icmp eq i64 %niter2204.next.1, %unroll_iter2203
  br i1 %niter2204.ncmp.1, label %.loopexit3666.thread.i.unr-lcssa, label %.lr.ph4263.i, !llvm.loop !338

.loopexit3666.thread.i.unr-lcssa:                 ; preds = %.lr.ph4263.i
  br i1 %lcmp.mod2199.not, label %.loopexit3666.thread.i, label %.lr.ph4263.i.epil.preheader

.lr.ph4263.i.epil.preheader:                      ; preds = %.loopexit3666.thread.i.unr-lcssa, %.lr.ph4263.i.preheader
  %indvars.iv4984.i.epil.init = phi i64 [ 0, %.lr.ph4263.i.preheader ], [ %indvars.iv.next4985.i.1, %.loopexit3666.thread.i.unr-lcssa ]
  %.1715944261.i.epil.init = phi ptr [ %.1615934277.i, %.lr.ph4263.i.preheader ], [ %i.eke, %.loopexit3666.thread.i.unr-lcssa ] ; 2 uses
  %.133964260.i.epil.init = phi <4 x float> [ %.033954276.i, %.lr.ph4263.i.preheader ], [ %i.ekd, %.loopexit3666.thread.i.unr-lcssa ]
  %.134014259.i.epil.init = phi <4 x float> [ %.034004275.i, %.lr.ph4263.i.preheader ], [ %i.ekc, %.loopexit3666.thread.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod2202)
  %i.ekf = getelementptr inbounds nuw [4 x i8], ptr %i.eiy, i64 %indvars.iv4984.i.epil.init
  %i.ekg = load i32, ptr %i.ekf, align 4, !tbaa !66
  %i.ekh = sext i32 %i.ekg to i64
  %i.eki = getelementptr inbounds [4 x i8], ptr %gep4288.i, i64 %i.ekh
  %i.ekj = load <4 x float>, ptr %i.eki, align 16, !tbaa !85 ; 2 uses
  %i.ekk = load <4 x float>, ptr %.1715944261.i.epil.init, align 16, !tbaa !85
  %i.ekl = getelementptr inbounds nuw i8, ptr %.1715944261.i.epil.init, i64 16
  %i.ekm = load <4 x float>, ptr %i.ekl, align 16, !tbaa !85
  %i.ekn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ekj, <4 x float> nofpclass(nan inf) %i.ekk, <4 x float> nofpclass(nan inf) %.134014259.i.epil.init)
  %i.eko = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ekj, <4 x float> nofpclass(nan inf) %i.ekm, <4 x float> nofpclass(nan inf) %.133964260.i.epil.init)
  br label %.loopexit3666.thread.i

.loopexit3666.thread.i:                           ; preds = %.loopexit3666.thread.i.unr-lcssa, %.lr.ph4263.i.epil.preheader
  %.lcssa2017 = phi <4 x float> [ %i.ekc, %.loopexit3666.thread.i.unr-lcssa ], [ %i.ekn, %.lr.ph4263.i.epil.preheader ]
  %.lcssa2016 = phi <4 x float> [ %i.ekd, %.loopexit3666.thread.i.unr-lcssa ], [ %i.eko, %.lr.ph4263.i.epil.preheader ]
  %scevgep4986.i = getelementptr i8, ptr %.1615934277.i, i64 32
  %scevgep4987.i = getelementptr i8, ptr %scevgep4986.i, i64 %i.ejc
  br label %.loopexit3664.i

.loopexit3666.i:                                  ; preds = %.noexc1911.i
  br i1 %brmerge4541.i, label %.loopexit3664.i, label %.lr.ph4271.i

.lr.ph4271.i:                                     ; preds = %.loopexit3666.i
  %i.ekp = getelementptr i8, ptr %gep4288.i, i64 %.idx1755.i ; 3 uses
  %i.ekq = getelementptr i8, ptr %gep4288.i, i64 %.idx1756.i ; 3 uses
  %i.ekr = getelementptr [4 x i8], ptr %gep4288.i, i64 %i.eiz ; 3 uses
  br i1 %i.ejf, label %.epil.preheader2205, label %.lr.ph4271.i.new

.lr.ph4271.i.new:                                 ; preds = %.lr.ph4271.i, %.lr.ph4271.i.new
  %indvars.iv4991.i = phi i64 [ %indvars.iv.next4992.i.1, %.lr.ph4271.i.new ], [ 0, %.lr.ph4271.i ] ; 3 uses
  %.1915964269.i = phi ptr [ %i.emi, %.lr.ph4271.i.new ], [ %.1615934277.i, %.lr.ph4271.i ] ; 5 uses
  %.333984268.i = phi <4 x float> [ %i.emh, %.lr.ph4271.i.new ], [ %.033954276.i, %.lr.ph4271.i ]
  %.334034267.i = phi <4 x float> [ %i.emg, %.lr.ph4271.i.new ], [ %.034004275.i, %.lr.ph4271.i ]
  %niter2213 = phi i64 [ %niter2213.next.1, %.lr.ph4271.i.new ], [ 0, %.lr.ph4271.i ]
  %i.eks = getelementptr inbounds nuw [4 x i8], ptr %i.eiy, i64 %indvars.iv4991.i
  %i.ekt = load i32, ptr %i.eks, align 4, !tbaa !66
  %i.eku = sext i32 %i.ekt to i64                 ; 4 uses
  %i.ekv = getelementptr [4 x i8], ptr %i.ekp, i64 %i.eku
  %i.ekw = load float, ptr %i.ekv, align 4, !tbaa !41
  %i.ekx = getelementptr [4 x i8], ptr %i.ekq, i64 %i.eku
  %i.eky = load float, ptr %i.ekx, align 4, !tbaa !41
  %i.ekz = getelementptr [4 x i8], ptr %i.ekr, i64 %i.eku
  %i.ela = load float, ptr %i.ekz, align 4, !tbaa !41
  %i.elb = getelementptr inbounds [4 x i8], ptr %gep4288.i, i64 %i.eku
  %i.elc = load float, ptr %i.elb, align 4, !tbaa !41
  %i.eld = insertelement <4 x float> poison, float %i.elc, i64 0
  %i.ele = insertelement <4 x float> %i.eld, float %i.ela, i64 1
  %i.elf = insertelement <4 x float> %i.ele, float %i.eky, i64 2
  %i.elg = insertelement <4 x float> %i.elf, float %i.ekw, i64 3 ; 2 uses
  %i.elh = load <4 x float>, ptr %.1915964269.i, align 16, !tbaa !85
  %i.eli = getelementptr inbounds nuw i8, ptr %.1915964269.i, i64 16
  %i.elj = load <4 x float>, ptr %i.eli, align 16, !tbaa !85
  %i.elk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.elg, <4 x float> nofpclass(nan inf) %i.elh, <4 x float> nofpclass(nan inf) %.334034267.i)
  %i.ell = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.elg, <4 x float> nofpclass(nan inf) %i.elj, <4 x float> nofpclass(nan inf) %.333984268.i)
  %i.elm = getelementptr inbounds nuw i8, ptr %.1915964269.i, i64 32
  %i.eln = getelementptr inbounds nuw [4 x i8], ptr %i.eiy, i64 %indvars.iv4991.i
  %i.elo = getelementptr inbounds nuw i8, ptr %i.eln, i64 4
  %i.elp = load i32, ptr %i.elo, align 4, !tbaa !66
  %i.elq = sext i32 %i.elp to i64                 ; 4 uses
  %i.elr = getelementptr [4 x i8], ptr %i.ekp, i64 %i.elq
  %i.els = load float, ptr %i.elr, align 4, !tbaa !41
  %i.elt = getelementptr [4 x i8], ptr %i.ekq, i64 %i.elq
  %i.elu = load float, ptr %i.elt, align 4, !tbaa !41
  %i.elv = getelementptr [4 x i8], ptr %i.ekr, i64 %i.elq
  %i.elw = load float, ptr %i.elv, align 4, !tbaa !41
  %i.elx = getelementptr inbounds [4 x i8], ptr %gep4288.i, i64 %i.elq
  %i.ely = load float, ptr %i.elx, align 4, !tbaa !41
  %i.elz = insertelement <4 x float> poison, float %i.ely, i64 0
  %i.ema = insertelement <4 x float> %i.elz, float %i.elw, i64 1
  %i.emb = insertelement <4 x float> %i.ema, float %i.elu, i64 2
  %i.emc = insertelement <4 x float> %i.emb, float %i.els, i64 3 ; 2 uses
  %i.emd = load <4 x float>, ptr %i.elm, align 16, !tbaa !85
  %i.eme = getelementptr inbounds nuw i8, ptr %.1915964269.i, i64 48
  %i.emf = load <4 x float>, ptr %i.eme, align 16, !tbaa !85
  %i.emg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.emc, <4 x float> nofpclass(nan inf) %i.emd, <4 x float> nofpclass(nan inf) %i.elk) ; 3 uses
  %i.emh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.emc, <4 x float> nofpclass(nan inf) %i.emf, <4 x float> nofpclass(nan inf) %i.ell) ; 3 uses
  %i.emi = getelementptr inbounds nuw i8, ptr %.1915964269.i, i64 64 ; 2 uses
  %indvars.iv.next4992.i.1 = add nuw nsw i64 %indvars.iv4991.i, 2 ; 2 uses
  %niter2213.next.1 = add i64 %niter2213, 2       ; 2 uses
  %niter2213.ncmp.1 = icmp eq i64 %niter2213.next.1, %unroll_iter2212
  br i1 %niter2213.ncmp.1, label %.loopexit3664.loopexit.i.unr-lcssa, label %.lr.ph4271.i.new, !llvm.loop !339

.loopexit3664.loopexit.i.unr-lcssa:               ; preds = %.lr.ph4271.i.new
  br i1 %lcmp.mod2208.not, label %.loopexit3664.loopexit.i, label %.epil.preheader2205

.epil.preheader2205:                              ; preds = %.loopexit3664.loopexit.i.unr-lcssa, %.lr.ph4271.i
  %indvars.iv4991.i.epil.init = phi i64 [ 0, %.lr.ph4271.i ], [ %indvars.iv.next4992.i.1, %.loopexit3664.loopexit.i.unr-lcssa ]
  %.1915964269.i.epil.init = phi ptr [ %.1615934277.i, %.lr.ph4271.i ], [ %i.emi, %.loopexit3664.loopexit.i.unr-lcssa ] ; 2 uses
  %.333984268.i.epil.init = phi <4 x float> [ %.033954276.i, %.lr.ph4271.i ], [ %i.emh, %.loopexit3664.loopexit.i.unr-lcssa ]
  %.334034267.i.epil.init = phi <4 x float> [ %.034004275.i, %.lr.ph4271.i ], [ %i.emg, %.loopexit3664.loopexit.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod2211)
  %i.emj = getelementptr inbounds nuw [4 x i8], ptr %i.eiy, i64 %indvars.iv4991.i.epil.init
  %i.emk = load i32, ptr %i.emj, align 4, !tbaa !66
  %i.eml = sext i32 %i.emk to i64                 ; 4 uses
  %i.emm = getelementptr [4 x i8], ptr %i.ekp, i64 %i.eml
  %i.emn = load float, ptr %i.emm, align 4, !tbaa !41
  %i.emo = getelementptr [4 x i8], ptr %i.ekq, i64 %i.eml
  %i.emp = load float, ptr %i.emo, align 4, !tbaa !41
  %i.emq = getelementptr [4 x i8], ptr %i.ekr, i64 %i.eml
  %i.emr = load float, ptr %i.emq, align 4, !tbaa !41
  %i.ems = getelementptr inbounds [4 x i8], ptr %gep4288.i, i64 %i.eml
  %i.emt = load float, ptr %i.ems, align 4, !tbaa !41
  %i.emu = insertelement <4 x float> poison, float %i.emt, i64 0
  %i.emv = insertelement <4 x float> %i.emu, float %i.emr, i64 1
  %i.emw = insertelement <4 x float> %i.emv, float %i.emp, i64 2
  %i.emx = insertelement <4 x float> %i.emw, float %i.emn, i64 3 ; 2 uses
  %i.emy = load <4 x float>, ptr %.1915964269.i.epil.init, align 16, !tbaa !85
  %i.emz = getelementptr inbounds nuw i8, ptr %.1915964269.i.epil.init, i64 16
  %i.ena = load <4 x float>, ptr %i.emz, align 16, !tbaa !85
  %i.enb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.emx, <4 x float> nofpclass(nan inf) %i.emy, <4 x float> nofpclass(nan inf) %.334034267.i.epil.init)
  %i.enc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.emx, <4 x float> nofpclass(nan inf) %i.ena, <4 x float> nofpclass(nan inf) %.333984268.i.epil.init)
  br label %.loopexit3664.loopexit.i

.loopexit3664.loopexit.i:                         ; preds = %.loopexit3664.loopexit.i.unr-lcssa, %.epil.preheader2205
  %.lcssa2019 = phi <4 x float> [ %i.emg, %.loopexit3664.loopexit.i.unr-lcssa ], [ %i.enb, %.epil.preheader2205 ]
  %.lcssa2018 = phi <4 x float> [ %i.emh, %.loopexit3664.loopexit.i.unr-lcssa ], [ %i.enc, %.epil.preheader2205 ]
  %scevgep4993.i = getelementptr i8, ptr %.1615934277.i, i64 32
  %scevgep4994.i = getelementptr i8, ptr %scevgep4993.i, i64 %i.ejc
  br label %.loopexit3664.i

.loopexit3664.i:                                  ; preds = %.loopexit3664.loopexit.i, %.loopexit3666.i, %.loopexit3666.thread.i
  %.43404.i = phi nsz <4 x float> [ %.034004275.i, %.loopexit3666.i ], [ %.lcssa2019, %.loopexit3664.loopexit.i ], [ %.lcssa2017, %.loopexit3666.thread.i ] ; 2 uses
  %.43399.i = phi nsz <4 x float> [ %.033954276.i, %.loopexit3666.i ], [ %.lcssa2018, %.loopexit3664.loopexit.i ], [ %.lcssa2016, %.loopexit3666.thread.i ] ; 2 uses
  %.201597.i = phi ptr [ %.1615934277.i, %.loopexit3666.i ], [ %scevgep4994.i, %.loopexit3664.loopexit.i ], [ %scevgep4987.i, %.loopexit3666.thread.i ] ; 2 uses
  %i.end = add nuw nsw i32 %.215744278.i, 4       ; 3 uses
  %i.ene = or disjoint i32 %i.end, 3
  %i.enf = icmp slt i32 %i.ene, %i.byq
  br i1 %i.enf, label %.noexc1911.i, label %._crit_edge4279.i, !llvm.loop !340

._crit_edge4279.i:                                ; preds = %.loopexit3664.i, %._crit_edge4249.i
  %.03400.lcssa.i = phi <4 x float> [ zeroinitializer, %._crit_edge4249.i ], [ %.43404.i, %.loopexit3664.i ] ; 4 uses
  %.03395.lcssa.i = phi <4 x float> [ zeroinitializer, %._crit_edge4249.i ], [ %.43399.i, %.loopexit3664.i ] ; 4 uses
  %.161593.lcssa.i = phi ptr [ %.91586.lcssa.i, %._crit_edge4249.i ], [ %.201597.i, %.loopexit3664.i ] ; 2 uses
  %.21574.lcssa.i = phi i32 [ %.11573.lcssa.i, %._crit_edge4249.i ], [ %i.end, %.loopexit3664.i ] ; 3 uses
  %12 = shufflevector <4 x float> %i.eda, <4 x float> %i.edg, <2 x i32> <i32 3, i32 7>
  %i.eng = shufflevector <4 x float> %i.eda, <4 x float> %i.edg, <2 x i32> <i32 1, i32 5>
  %i.enh = fadd fast <2 x float> %12, %i.eng
  %13 = fadd fast <2 x float> %i.enh, %i.dul
  %14 = shufflevector <4 x float> %i.eda, <4 x float> %i.edg, <2 x i32> <i32 2, i32 6>
  %i.eni = shufflevector <4 x float> %i.eda, <4 x float> %i.edg, <2 x i32> <i32 0, i32 4>
  %15 = fadd fast <2 x float> %14, %i.eni
  %i.enj = fadd fast <2 x float> %13, %15
  %16 = shufflevector <4 x float> %i.eio, <4 x float> %i.eir, <2 x i32> <i32 3, i32 7>
  %i.enk = shufflevector <4 x float> %i.eio, <4 x float> %i.eir, <2 x i32> <i32 1, i32 5>
  %17 = fadd fast <2 x float> %16, %i.enk
  %i.enl = fadd fast <2 x float> %i.enj, %17
  %18 = shufflevector <4 x float> %i.eio, <4 x float> %i.eir, <2 x i32> <i32 2, i32 6>
  %i.enm = shufflevector <4 x float> %i.eio, <4 x float> %i.eir, <2 x i32> <i32 0, i32 4>
  %19 = fadd fast <2 x float> %18, %i.enm
  %i.enn = fadd fast <2 x float> %i.enl, %19
  %20 = shufflevector <4 x float> %.03400.lcssa.i, <4 x float> %.03395.lcssa.i, <2 x i32> <i32 3, i32 7>
  %i.eno = shufflevector <4 x float> %.03400.lcssa.i, <4 x float> %.03395.lcssa.i, <2 x i32> <i32 1, i32 5>
  %21 = fadd fast <2 x float> %20, %i.eno
  %i.enp = fadd fast <2 x float> %i.enn, %21
  %22 = shufflevector <4 x float> %.03400.lcssa.i, <4 x float> %.03395.lcssa.i, <2 x i32> <i32 2, i32 6>
  %i.enq = shufflevector <4 x float> %.03400.lcssa.i, <4 x float> %.03395.lcssa.i, <2 x i32> <i32 0, i32 4>
  %23 = fadd fast <2 x float> %22, %i.enq
  %i.enr = fadd fast <2 x float> %i.enp, %23      ; 3 uses
  %i.ens = or disjoint i32 %.21574.lcssa.i, 1
  %i.ent = icmp slt i32 %i.ens, %i.byq
  br i1 %i.ent, label %.noexc1909.lr.ph.i, label %.preheader3678.i

.noexc1909.lr.ph.i:                               ; preds = %._crit_edge4279.i
  %i.enu = mul nsw i64 %indvars.iv5018.i, %i.dtv
  %invariant.gep4309.i = getelementptr [4 x i8], ptr %invariant.gep4217.i, i64 %i.enu
  %i.env = load ptr, ptr %i.g, align 8            ; 3 uses
  %i.enw = load i64, ptr %i.d, align 8
  br i1 %i.dtq, label %.noexc1909.us.preheader.i, label %._crit_edge4328.i

.noexc1909.us.preheader.i:                        ; preds = %.noexc1909.lr.ph.i
  %i.enx = zext i32 %.21574.lcssa.i to i64
  br label %iter.check1807

iter.check1807:                                   ; preds = %._crit_edge4294.us.i, %.noexc1909.us.preheader.i
  %indvars.iv5005.i = phi i64 [ %i.enx, %.noexc1909.us.preheader.i ], [ %indvars.iv.next5006.i, %._crit_edge4294.us.i ] ; 2 uses
  %.2115984300.us.i = phi ptr [ %.161593.lcssa.i, %.noexc1909.us.preheader.i ], [ %scevgep5001.i, %._crit_edge4294.us.i ] ; 7 uses
  %i.eny = phi <2 x float> [ %i.enr, %.noexc1909.us.preheader.i ], [ %i.equ, %._crit_edge4294.us.i ] ; 4 uses
  %.reass4307.us.i = mul i64 %indvars.iv5005.i, %factor.op.mul4215.i
  %gep4310.us.i = getelementptr i8, ptr %invariant.gep4309.i, i64 %.reass4307.us.i ; 5 uses
  %i.enz = getelementptr [4 x i8], ptr %gep4310.us.i, i64 %i.enw ; 4 uses
  br i1 %min.iters.check1766, label %vec.epilog.scalar.ph1808.preheader, label %vector.main.loop.iter.check1767

vector.main.loop.iter.check1767:                  ; preds = %iter.check1807
  %i.eoa = extractelement <2 x float> %i.eny, i64 0
  %i.eob = extractelement <2 x float> %i.eny, i64 1
  br i1 %min.iters.check1768, label %vec.epilog.ph1811, label %vector.ph1769

vector.ph1769:                                    ; preds = %vector.main.loop.iter.check1767
  %i.eoc = getelementptr i8, ptr %.2115984300.us.i, i64 %i.due
  %i.eod = shufflevector <2 x float> %i.eny, <2 x float> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.eoe = shufflevector <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <16 x float> %i.eod, <16 x i32> <i32 17, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.eof = shufflevector <16 x float> %i.eod, <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <16 x i32> <i32 0, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  br label %vector.body1771

vector.body1771:                                  ; preds = %vector.ph1769, %vector.body1771
  %index1772 = phi i64 [ 0, %vector.ph1769 ], [ %index.next1799, %vector.body1771 ] ; 3 uses
  %vec.phi1773 = phi <16 x float> [ %i.eoe, %vector.ph1769 ], [ %i.epa, %vector.body1771 ]
  %vec.phi1774 = phi <16 x float> [ zeroinitializer, %vector.ph1769 ], [ %i.epb, %vector.body1771 ]
  %vec.phi1775 = phi <16 x float> [ %i.eof, %vector.ph1769 ], [ %i.eow, %vector.body1771 ]
  %vec.phi1776 = phi <16 x float> [ zeroinitializer, %vector.ph1769 ], [ %i.eox, %vector.body1771 ]
  %i.eog = shl i64 %index1772, 4                  ; 2 uses
  %next.gep1777 = getelementptr i8, ptr %.2115984300.us.i, i64 %i.eog
  %i.eoh = getelementptr i8, ptr %.2115984300.us.i, i64 %i.eog
  %next.gep1778 = getelementptr i8, ptr %i.eoh, i64 256
  %i.eoi = getelementptr inbounds nuw [4 x i8], ptr %i.env, i64 %index1772 ; 2 uses
  %i.eoj = getelementptr inbounds nuw i8, ptr %i.eoi, i64 64
  %wide.load1779 = load <16 x i32>, ptr %i.eoi, align 4, !tbaa !66
  %wide.load1780 = load <16 x i32>, ptr %i.eoj, align 4, !tbaa !66
  %i.eok = sext <16 x i32> %wide.load1779 to <16 x i64> ; 2 uses
  %i.eol = sext <16 x i32> %wide.load1780 to <16 x i64> ; 2 uses
  %wide.gep1781 = getelementptr inbounds [4 x i8], ptr %gep4310.us.i, <16 x i64> %i.eok
  %wide.gep1782 = getelementptr inbounds [4 x i8], ptr %gep4310.us.i, <16 x i64> %i.eol
  %wide.masked.gather1783 = call <16 x float> @llvm.masked.gather.v16f32.v16p0(<16 x ptr> align 4 %wide.gep1781, <16 x i1> splat (i1 true), <16 x float> poison), !tbaa !41 ; 2 uses
  %wide.masked.gather1784 = call <16 x float> @llvm.masked.gather.v16f32.v16p0(<16 x ptr> align 4 %wide.gep1782, <16 x i1> splat (i1 true), <16 x float> poison), !tbaa !41 ; 2 uses
  %wide.vec1785 = load <64 x float>, ptr %next.gep1777, align 4, !tbaa !41 ; 4 uses
  %strided.vec1786 = shufflevector <64 x float> %wide.vec1785, <64 x float> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec1787 = shufflevector <64 x float> %wide.vec1785, <64 x float> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec1788 = shufflevector <64 x float> %wide.vec1785, <64 x float> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec1789 = shufflevector <64 x float> %wide.vec1785, <64 x float> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %wide.vec1790 = load <64 x float>, ptr %next.gep1778, align 4, !tbaa !41 ; 4 uses
  %strided.vec1791 = shufflevector <64 x float> %wide.vec1790, <64 x float> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec1792 = shufflevector <64 x float> %wide.vec1790, <64 x float> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec1793 = shufflevector <64 x float> %wide.vec1790, <64 x float> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec1794 = shufflevector <64 x float> %wide.vec1790, <64 x float> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %i.eom = fmul fast <16 x float> %strided.vec1786, %wide.masked.gather1783
  %i.eon = fmul fast <16 x float> %strided.vec1791, %wide.masked.gather1784
  %i.eoo = fadd fast <16 x float> %vec.phi1775, %i.eom
  %i.eop = fadd fast <16 x float> %vec.phi1776, %i.eon
  %i.eoq = fmul fast <16 x float> %strided.vec1787, %wide.masked.gather1783
  %i.eor = fmul fast <16 x float> %strided.vec1792, %wide.masked.gather1784
  %i.eos = fadd fast <16 x float> %vec.phi1773, %i.eoq
  %i.eot = fadd fast <16 x float> %vec.phi1774, %i.eor
  %wide.gep1795 = getelementptr [4 x i8], ptr %i.enz, <16 x i64> %i.eok
  %wide.gep1796 = getelementptr [4 x i8], ptr %i.enz, <16 x i64> %i.eol
  %wide.masked.gather1797 = call <16 x float> @llvm.masked.gather.v16f32.v16p0(<16 x ptr> align 4 %wide.gep1795, <16 x i1> splat (i1 true), <16 x float> poison), !tbaa !41 ; 2 uses
  %wide.masked.gather1798 = call <16 x float> @llvm.masked.gather.v16f32.v16p0(<16 x ptr> align 4 %wide.gep1796, <16 x i1> splat (i1 true), <16 x float> poison), !tbaa !41 ; 2 uses
  %i.eou = fmul fast <16 x float> %strided.vec1788, %wide.masked.gather1797
  %i.eov = fmul fast <16 x float> %strided.vec1793, %wide.masked.gather1798
  %i.eow = fadd fast <16 x float> %i.eou, %i.eoo  ; 2 uses
  %i.eox = fadd fast <16 x float> %i.eov, %i.eop  ; 2 uses
  %i.eoy = fmul fast <16 x float> %strided.vec1789, %wide.masked.gather1797
  %i.eoz = fmul fast <16 x float> %strided.vec1794, %wide.masked.gather1798
  %i.epa = fadd fast <16 x float> %i.eoy, %i.eos  ; 2 uses
  %i.epb = fadd fast <16 x float> %i.eoz, %i.eot  ; 2 uses
  %index.next1799 = add nuw i64 %index1772, 32    ; 2 uses
  %i.epc = icmp eq i64 %index.next1799, %n.vec1770
  br i1 %i.epc, label %middle.block1800, label %vector.body1771, !llvm.loop !341

middle.block1800:                                 ; preds = %vector.body1771
  %bin.rdx1801 = fadd fast <16 x float> %i.epb, %i.epa
  %i.epd = call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx1801) ; 2 uses
  %bin.rdx1802 = fadd fast <16 x float> %i.eox, %i.eow
  %i.epe = call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx1802) ; 2 uses
  %i.epf = insertelement <2 x float> poison, float %i.epe, i64 0
  %i.epg = insertelement <2 x float> %i.epf, float %i.epd, i64 1 ; 2 uses
  br i1 %cmp.n1803, label %._crit_edge4294.us.i, label %vec.epilog.iter.check1809

vec.epilog.iter.check1809:                        ; preds = %middle.block1800
  br i1 %min.epilog.iters.check1810, label %vec.epilog.scalar.ph1808.preheader, label %vec.epilog.ph1811, !prof !87

vec.epilog.ph1811:                                ; preds = %vector.main.loop.iter.check1767, %vec.epilog.iter.check1809
  %vec.epilog.resume.val1804 = phi i64 [ %n.vec1770, %vec.epilog.iter.check1809 ], [ 0, %vector.main.loop.iter.check1767 ]
  %bc.merge.rdx1805 = phi float [ %i.epd, %vec.epilog.iter.check1809 ], [ %i.eob, %vector.main.loop.iter.check1767 ]
  %bc.merge.rdx1806 = phi float [ %i.epe, %vec.epilog.iter.check1809 ], [ %i.eoa, %vector.main.loop.iter.check1767 ]
  %i.eph = getelementptr i8, ptr %.2115984300.us.i, i64 %i.duf
  %i.epi = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx1805, i64 0
  %i.epj = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx1806, i64 0
  br label %vec.epilog.vector.body1813

vec.epilog.vector.body1813:                       ; preds = %vec.epilog.vector.body1813, %vec.epilog.ph1811
  %index1814 = phi i64 [ %vec.epilog.resume.val1804, %vec.epilog.ph1811 ], [ %index.next1828, %vec.epilog.vector.body1813 ] ; 3 uses
  %vec.phi1815 = phi <8 x float> [ %i.epi, %vec.epilog.ph1811 ], [ %i.epu, %vec.epilog.vector.body1813 ]
  %vec.phi1816 = phi <8 x float> [ %i.epj, %vec.epilog.ph1811 ], [ %i.eps, %vec.epilog.vector.body1813 ]
  %i.epk = shl i64 %index1814, 4
  %next.gep1817 = getelementptr i8, ptr %.2115984300.us.i, i64 %i.epk
  %i.epl = getelementptr inbounds nuw [4 x i8], ptr %i.env, i64 %index1814
  %wide.load1818 = load <8 x i32>, ptr %i.epl, align 4, !tbaa !66
  %i.epm = sext <8 x i32> %wide.load1818 to <8 x i64> ; 2 uses
  %wide.gep1819 = getelementptr inbounds [4 x i8], ptr %gep4310.us.i, <8 x i64> %i.epm
  %wide.masked.gather1820 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep1819, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !41 ; 2 uses
  %wide.vec1821 = load <32 x float>, ptr %next.gep1817, align 4, !tbaa !41 ; 4 uses
  %strided.vec1822 = shufflevector <32 x float> %wide.vec1821, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec1823 = shufflevector <32 x float> %wide.vec1821, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec1824 = shufflevector <32 x float> %wide.vec1821, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec1825 = shufflevector <32 x float> %wide.vec1821, <32 x float> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.epn = fmul fast <8 x float> %strided.vec1822, %wide.masked.gather1820
  %i.epo = fadd fast <8 x float> %vec.phi1816, %i.epn
  %i.epp = fmul fast <8 x float> %strided.vec1823, %wide.masked.gather1820
  %i.epq = fadd fast <8 x float> %vec.phi1815, %i.epp
  %wide.gep1826 = getelementptr [4 x i8], ptr %i.enz, <8 x i64> %i.epm
  %wide.masked.gather1827 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep1826, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !41 ; 2 uses
  %i.epr = fmul fast <8 x float> %strided.vec1824, %wide.masked.gather1827
  %i.eps = fadd fast <8 x float> %i.epr, %i.epo   ; 2 uses
  %i.ept = fmul fast <8 x float> %strided.vec1825, %wide.masked.gather1827
  %i.epu = fadd fast <8 x float> %i.ept, %i.epq   ; 2 uses
  %index.next1828 = add nuw i64 %index1814, 8     ; 2 uses
  %i.epv = icmp eq i64 %index.next1828, %n.vec1812
  br i1 %i.epv, label %vec.epilog.middle.block1829, label %vec.epilog.vector.body1813, !llvm.loop !342

vec.epilog.middle.block1829:                      ; preds = %vec.epilog.vector.body1813
  %i.epw = call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.epu)
  %i.epx = call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.eps)
  %i.epy = insertelement <2 x float> poison, float %i.epx, i64 0
  %i.epz = insertelement <2 x float> %i.epy, float %i.epw, i64 1 ; 2 uses
  br i1 %cmp.n1830, label %._crit_edge4294.us.i, label %vec.epilog.scalar.ph1808.preheader

vec.epilog.scalar.ph1808.preheader:               ; preds = %iter.check1807, %vec.epilog.iter.check1809, %vec.epilog.middle.block1829
  %indvars.iv4998.i.ph = phi i64 [ 0, %iter.check1807 ], [ %n.vec1770, %vec.epilog.iter.check1809 ], [ %n.vec1812, %vec.epilog.middle.block1829 ]
  %.2215994291.us.i.ph = phi ptr [ %.2115984300.us.i, %iter.check1807 ], [ %i.eoc, %vec.epilog.iter.check1809 ], [ %i.eph, %vec.epilog.middle.block1829 ]
  %.ph2000 = phi <2 x float> [ %i.eny, %iter.check1807 ], [ %i.epg, %vec.epilog.iter.check1809 ], [ %i.epz, %vec.epilog.middle.block1829 ]
  br label %vec.epilog.scalar.ph1808

vec.epilog.scalar.ph1808:                         ; preds = %vec.epilog.scalar.ph1808.preheader, %vec.epilog.scalar.ph1808
  %indvars.iv4998.i = phi i64 [ %indvars.iv.next4999.i, %vec.epilog.scalar.ph1808 ], [ %indvars.iv4998.i.ph, %vec.epilog.scalar.ph1808.preheader ] ; 2 uses
  %.2215994291.us.i = phi ptr [ %i.eqt, %vec.epilog.scalar.ph1808 ], [ %.2215994291.us.i.ph, %vec.epilog.scalar.ph1808.preheader ] ; 3 uses
  %i.eqa = phi <2 x float> [ %i.eqs, %vec.epilog.scalar.ph1808 ], [ %.ph2000, %vec.epilog.scalar.ph1808.preheader ]
  %i.eqb = getelementptr inbounds nuw [4 x i8], ptr %i.env, i64 %indvars.iv4998.i
  %i.eqc = load i32, ptr %i.eqb, align 4, !tbaa !66
  %i.eqd = sext i32 %i.eqc to i64                 ; 2 uses
  %i.eqe = getelementptr inbounds [4 x i8], ptr %gep4310.us.i, i64 %i.eqd
  %i.eqf = load float, ptr %i.eqe, align 4, !tbaa !41
  %i.eqg = getelementptr [4 x i8], ptr %i.enz, i64 %i.eqd
  %i.eqh = load float, ptr %i.eqg, align 4, !tbaa !41
  %i.eqi = getelementptr inbounds nuw i8, ptr %.2215994291.us.i, i64 8
  %i.eqj = load <2 x float>, ptr %.2215994291.us.i, align 4, !tbaa !41
  %i.eqk = insertelement <2 x float> poison, float %i.eqf, i64 0
  %i.eql = shufflevector <2 x float> %i.eqk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eqm = fmul fast <2 x float> %i.eqj, %i.eql
  %i.eqn = fadd fast <2 x float> %i.eqa, %i.eqm
  %i.eqo = load <2 x float>, ptr %i.eqi, align 4, !tbaa !41
  %i.eqp = insertelement <2 x float> poison, float %i.eqh, i64 0
  %i.eqq = shufflevector <2 x float> %i.eqp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eqr = fmul fast <2 x float> %i.eqo, %i.eqq
  %i.eqs = fadd fast <2 x float> %i.eqr, %i.eqn   ; 2 uses
  %i.eqt = getelementptr inbounds nuw i8, ptr %.2215994291.us.i, i64 16
  %indvars.iv.next4999.i = add nuw nsw i64 %indvars.iv4998.i, 1 ; 2 uses
  %exitcond5004.not.i = icmp eq i64 %indvars.iv.next4999.i, %wide.trip.count5003.i
  br i1 %exitcond5004.not.i, label %._crit_edge4294.us.i, label %vec.epilog.scalar.ph1808, !llvm.loop !343

._crit_edge4294.us.i:                             ; preds = %vec.epilog.scalar.ph1808, %vec.epilog.middle.block1829, %middle.block1800
  %i.equ = phi <2 x float> [ %i.epz, %vec.epilog.middle.block1829 ], [ %i.epg, %middle.block1800 ], [ %i.eqs, %vec.epilog.scalar.ph1808 ] ; 2 uses
  %scevgep5000.i = getelementptr i8, ptr %.2115984300.us.i, i64 16
  %scevgep5001.i = getelementptr i8, ptr %scevgep5000.i, i64 %i.dtt ; 2 uses
  %indvars.iv.next5006.i = add nuw nsw i64 %indvars.iv5005.i, 2 ; 2 uses
  %i.eqv = trunc i64 %indvars.iv.next5006.i to i32 ; 2 uses
  %i.eqw = or i32 %i.eqv, 1
  %i.eqx = icmp slt i32 %i.eqw, %i.byq
  br i1 %i.eqx, label %iter.check1807, label %.preheader3678.i, !llvm.loop !344

.preheader3678.i:                                 ; preds = %._crit_edge4294.us.i, %._crit_edge4279.i
  %.211598.lcssa.i = phi ptr [ %.161593.lcssa.i, %._crit_edge4279.i ], [ %scevgep5001.i, %._crit_edge4294.us.i ]
  %.31575.lcssa.i = phi i32 [ %.21574.lcssa.i, %._crit_edge4279.i ], [ %i.eqv, %._crit_edge4294.us.i ] ; 2 uses
  %i.eqy = phi <2 x float> [ %i.enr, %._crit_edge4279.i ], [ %i.equ, %._crit_edge4294.us.i ] ; 4 uses
  %i.eqz = icmp slt i32 %.31575.lcssa.i, %i.byq
  br i1 %i.eqz, label %.noexc1907.lr.ph.i, label %._crit_edge4328.i

.noexc1907.lr.ph.i:                               ; preds = %.preheader3678.i
  %i.era = mul nsw i64 %indvars.iv5018.i, %i.dtv
end_hunk_0
begin_hunk_1_@_ZN4ncnnL37conv3x3s1_winograd63_transform_kernelERKNS_3MatERS0_iiRKNS_6OptionE.omp_outlined:bb.a
  %i.px = fadd fast <4 x float> %i.pv, %i.pw
  %i.py = fsub fast <4 x float> %i.pt, %i.pu
  %i.pz = fadd fast <4 x float> %i.py, %i.pw
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.la, <4 x ptr> align 4 %wide.gep240, <4 x i1> splat (i1 true)), !tbaa !41, !alias.scope !658, !noalias !657
  %wide.gep241 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 100
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.pj, <4 x ptr> align 4 %wide.gep241, <4 x i1> splat (i1 true)), !tbaa !41, !alias.scope !658, !noalias !657
  %wide.gep242 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 104
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.pl, <4 x ptr> align 4 %wide.gep242, <4 x i1> splat (i1 true)), !tbaa !41, !alias.scope !658, !noalias !657
  %wide.gep243 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 108
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.pq, <4 x ptr> align 4 %wide.gep243, <4 x i1> splat (i1 true)), !tbaa !41, !alias.scope !658, !noalias !657
  %wide.gep244 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 112
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.ps, <4 x ptr> align 4 %wide.gep244, <4 x i1> splat (i1 true)), !tbaa !41, !alias.scope !658, !noalias !657
  %wide.gep245 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 116
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.px, <4 x ptr> align 4 %wide.gep245, <4 x i1> splat (i1 true)), !tbaa !41, !alias.scope !658, !noalias !657
  %wide.gep246 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 120
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.pz, <4 x ptr> align 4 %wide.gep246, <4 x i1> splat (i1 true)), !tbaa !41, !alias.scope !658, !noalias !657
  %wide.gep247 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 124
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.mq, <4 x ptr> align 4 %wide.gep247, <4 x i1> splat (i1 true)), !tbaa !41, !alias.scope !658, !noalias !657
  %wide.gep248 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 128
  %i.qa = fmul fast <4 x float> %i.lc, splat (float f0xBE638E39) ; 2 uses
  %i.qb = fmul fast <4 x float> %i.lx, splat (float f0x3E638E39) ; 2 uses
  %i.qc = fmul fast <4 x float> %i.ms, splat (float f0xBE638E39) ; 2 uses
  %i.qd = fsub fast <4 x float> %i.qa, %i.qb
  %i.qe = fadd fast <4 x float> %i.qd, %i.qc
  %i.qf = fadd fast <4 x float> %i.qb, %i.qa
  %i.qg = fadd fast <4 x float> %i.qf, %i.qc
  %i.qh = fmul fast <4 x float> %i.lc, splat (float f0x3C360B61) ; 2 uses
  %i.qi = fmul fast <4 x float> %i.lx, splat (float f0x3CB60B61) ; 2 uses
  %i.qj = fadd fast <4 x float> %i.qi, %i.qh
  %i.qk = fmul fast <4 x float> %i.ms, splat (float f0x3D360B61) ; 2 uses
  %i.ql = fadd fast <4 x float> %i.qj, %i.qk
  %i.qm = fsub fast <4 x float> %i.qh, %i.qi
  %i.qn = fadd fast <4 x float> %i.qm, %i.qk
  %i.qo = fmul fast <4 x float> %i.lc, splat (float f0x3CB60B61) ; 2 uses
  %i.qp = fmul fast <4 x float> %i.lx, splat (float f0x3C360B61) ; 2 uses
  %i.qq = fadd fast <4 x float> %i.qp, %i.qo
  %i.qr = fmul fast <4 x float> %i.ms, splat (float f0x3BB60B61) ; 2 uses
  %i.qs = fadd fast <4 x float> %i.qq, %i.qr
  %i.qt = fsub fast <4 x float> %i.qo, %i.qp
  %i.qu = fadd fast <4 x float> %i.qt, %i.qr
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.lc, <4 x ptr> align 4 %wide.gep248, <4 x i1> splat (i1 true)), !tbaa !41, !alias.scope !658, !noalias !657
  %wide.gep249 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 132
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.qe, <4 x ptr> align 4 %wide.gep249, <4 x i1> splat (i1 true)), !tbaa !41, !alias.scope !658, !noalias !657
  %wide.gep250 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 136
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.qg, <4 x ptr> align 4 %wide.gep250, <4 x i1> splat (i1 true)), !tbaa !41, !alias.scope !658, !noalias !657
  %wide.gep251 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 140
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.ql, <4 x ptr> align 4 %wide.gep251, <4 x i1> splat (i1 true)), !tbaa !41, !alias.scope !658, !noalias !657
  %wide.gep252 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 144
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.qn, <4 x ptr> align 4 %wide.gep252, <4 x i1> splat (i1 true)), !tbaa !41, !alias.scope !658, !noalias !657
  %wide.gep253 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 148
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.qs, <4 x ptr> align 4 %wide.gep253, <4 x i1> splat (i1 true)), !tbaa !41, !alias.scope !658, !noalias !657
  %wide.gep254 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 152
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.qu, <4 x ptr> align 4 %wide.gep254, <4 x i1> splat (i1 true)), !tbaa !41, !alias.scope !658, !noalias !657
  %wide.gep255 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 156
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.ms, <4 x ptr> align 4 %wide.gep255, <4 x i1> splat (i1 true)), !tbaa !41, !alias.scope !658, !noalias !657
  %wide.gep256 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 160
  %i.qv = fmul fast <4 x float> %i.lh, splat (float f0xBE638E39) ; 2 uses
  %i.qw = fmul fast <4 x float> %i.mc, splat (float f0x3E638E39) ; 2 uses
  %i.qx = fmul fast <4 x float> %i.mx, splat (float f0xBE638E39) ; 2 uses
  %i.qy = fsub fast <4 x float> %i.qv, %i.qw
  %i.qz = fadd fast <4 x float> %i.qy, %i.qx
  %i.ra = fadd fast <4 x float> %i.qw, %i.qv
  %i.rb = fadd fast <4 x float> %i.ra, %i.qx
  %i.rc = fmul fast <4 x float> %i.lh, splat (float f0x3C360B61) ; 2 uses
  %i.rd = fmul fast <4 x float> %i.mc, splat (float f0x3CB60B61) ; 2 uses
  %i.re = fadd fast <4 x float> %i.rd, %i.rc
  %i.rf = fmul fast <4 x float> %i.mx, splat (float f0x3D360B61) ; 2 uses
  %i.rg = fadd fast <4 x float> %i.re, %i.rf
  %i.rh = fsub fast <4 x float> %i.rc, %i.rd
  %i.ri = fadd fast <4 x float> %i.rh, %i.rf
  %i.rj = fmul fast <4 x float> %i.lh, splat (float f0x3CB60B61) ; 2 uses
  %i.rk = fmul fast <4 x float> %i.mc, splat (float f0x3C360B61) ; 2 uses
  %i.rl = fadd fast <4 x float> %i.rk, %i.rj
  %i.rm = fmul fast <4 x float> %i.mx, splat (float f0x3BB60B61) ; 2 uses
  %i.rn = fadd fast <4 x float> %i.rl, %i.rm
  %i.ro = fsub fast <4 x float> %i.rj, %i.rk
  %i.rp = fadd fast <4 x float> %i.ro, %i.rm
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.lh, <4 x ptr> align 4 %wide.gep256, <4 x i1> splat (i1 true)), !tbaa !41, !alias.scope !658, !noalias !657
  %wide.gep257 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 164
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.qz, <4 x ptr> align 4 %wide.gep257, <4 x i1> splat (i1 true)), !tbaa !41, !alias.scope !658, !noalias !657
  %wide.gep258 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 168
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.rb, <4 x ptr> align 4 %wide.gep258, <4 x i1> splat (i1 true)), !tbaa !41, !alias.scope !658, !noalias !657
  %wide.gep259 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 172
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.rg, <4 x ptr> align 4 %wide.gep259, <4 x i1> splat (i1 true)), !tbaa !41, !alias.scope !658, !noalias !657
  %wide.gep260 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 176
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.ri, <4 x ptr> align 4 %wide.gep260, <4 x i1> splat (i1 true)), !tbaa !41, !alias.scope !658, !noalias !657
  %wide.gep261 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 180
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.rn, <4 x ptr> align 4 %wide.gep261, <4 x i1> splat (i1 true)), !tbaa !41, !alias.scope !658, !noalias !657
  %wide.gep262 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 184
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.rp, <4 x ptr> align 4 %wide.gep262, <4 x i1> splat (i1 true)), !tbaa !41, !alias.scope !658, !noalias !657
  %wide.gep263 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 188
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.mx, <4 x ptr> align 4 %wide.gep263, <4 x i1> splat (i1 true)), !tbaa !41, !alias.scope !658, !noalias !657
  %wide.gep264 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 192
  %i.rq = fmul fast <4 x float> %i.lj, splat (float f0xBE638E39) ; 2 uses
  %i.rr = fmul fast <4 x float> %i.me, splat (float f0x3E638E39) ; 2 uses
  %i.rs = fmul fast <4 x float> %i.mz, splat (float f0xBE638E39) ; 2 uses
  %i.rt = fsub fast <4 x float> %i.rq, %i.rr
  %i.ru = fadd fast <4 x float> %i.rt, %i.rs
  %i.rv = fadd fast <4 x float> %i.rr, %i.rq
  %i.rw = fadd fast <4 x float> %i.rv, %i.rs
  %i.rx = fmul fast <4 x float> %i.lj, splat (float f0x3C360B61) ; 2 uses
  %i.ry = fmul fast <4 x float> %i.me, splat (float f0x3CB60B61) ; 2 uses
  %i.rz = fadd fast <4 x float> %i.ry, %i.rx
  %i.sa = fmul fast <4 x float> %i.mz, splat (float f0x3D360B61) ; 2 uses
  %i.sb = fadd fast <4 x float> %i.rz, %i.sa
  %i.sc = fsub fast <4 x float> %i.rx, %i.ry
  %i.sd = fadd fast <4 x float> %i.sc, %i.sa
  %i.se = fmul fast <4 x float> %i.lj, splat (float f0x3CB60B61) ; 2 uses
  %i.sf = fmul fast <4 x float> %i.me, splat (float f0x3C360B61) ; 2 uses
  %i.sg = fadd fast <4 x float> %i.sf, %i.se
  %i.sh = fmul fast <4 x float> %i.mz, splat (float f0x3BB60B61) ; 2 uses
  %i.si = fadd fast <4 x float> %i.sg, %i.sh
  %i.sj = fsub fast <4 x float> %i.se, %i.sf
  %i.sk = fadd fast <4 x float> %i.sj, %i.sh
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.lj, <4 x ptr> align 4 %wide.gep264, <4 x i1> splat (i1 true)), !tbaa !41, !alias.scope !658, !noalias !657
  %wide.gep265 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 196
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.ru, <4 x ptr> align 4 %wide.gep265, <4 x i1> splat (i1 true)), !tbaa !41, !alias.scope !658, !noalias !657
  %wide.gep266 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 200
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.rw, <4 x ptr> align 4 %wide.gep266, <4 x i1> splat (i1 true)), !tbaa !41, !alias.scope !658, !noalias !657
  %wide.gep267 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 204
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.sb, <4 x ptr> align 4 %wide.gep267, <4 x i1> splat (i1 true)), !tbaa !41, !alias.scope !658, !noalias !657
  %wide.gep268 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 208
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.sd, <4 x ptr> align 4 %wide.gep268, <4 x i1> splat (i1 true)), !tbaa !41, !alias.scope !658, !noalias !657
  %wide.gep269 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 212
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.si, <4 x ptr> align 4 %wide.gep269, <4 x i1> splat (i1 true)), !tbaa !41, !alias.scope !658, !noalias !657
  %wide.gep270 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 216
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.sk, <4 x ptr> align 4 %wide.gep270, <4 x i1> splat (i1 true)), !tbaa !41, !alias.scope !658, !noalias !657
  %wide.gep271 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 220
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.mz, <4 x ptr> align 4 %wide.gep271, <4 x i1> splat (i1 true)), !tbaa !41, !alias.scope !658, !noalias !657
  %wide.gep272 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 224
  %i.sl = fmul fast <4 x float> %wide.masked.gather210, splat (float f0x3E638E39) ; 2 uses
  %i.sm = fsub fast <4 x float> %i.kr, %i.sl
  %i.sn = fadd fast <4 x float> %i.sm, %i.mh
  %i.so = fadd fast <4 x float> %i.sl, %i.kr
  %i.sp = fadd fast <4 x float> %i.so, %i.mh
  %i.sq = fmul fast <4 x float> %wide.masked.gather204, splat (float f0x3C360B61) ; 2 uses
  %i.sr = fmul fast <4 x float> %wide.masked.gather210, splat (float f0x3CB60B61) ; 2 uses
  %i.ss = fadd fast <4 x float> %i.sr, %i.sq
  %i.st = fadd fast <4 x float> %i.ss, %i.mp
  %i.su = fsub fast <4 x float> %i.sq, %i.sr
  %i.sv = fadd fast <4 x float> %i.su, %i.mp
  %i.sw = fmul fast <4 x float> %wide.masked.gather204, splat (float f0x3CB60B61) ; 2 uses
  %i.sx = fmul fast <4 x float> %wide.masked.gather210, splat (float f0x3C360B61) ; 2 uses
  %i.sy = fadd fast <4 x float> %i.sx, %i.sw
  %i.sz = fadd fast <4 x float> %i.sy, %i.mw
  %i.ta = fsub fast <4 x float> %i.sw, %i.sx
  %i.tb = fadd fast <4 x float> %i.ta, %i.mw
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %wide.masked.gather204, <4 x ptr> align 4 %wide.gep272, <4 x i1> splat (i1 true)), !tbaa !41, !alias.scope !658, !noalias !657
  %wide.gep273 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 228
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.sn, <4 x ptr> align 4 %wide.gep273, <4 x i1> splat (i1 true)), !tbaa !41, !alias.scope !658, !noalias !657
  %wide.gep274 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 232
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.sp, <4 x ptr> align 4 %wide.gep274, <4 x i1> splat (i1 true)), !tbaa !41, !alias.scope !658, !noalias !657
  %wide.gep275 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 236
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.st, <4 x ptr> align 4 %wide.gep275, <4 x i1> splat (i1 true)), !tbaa !41, !alias.scope !658, !noalias !657
  %wide.gep276 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 240
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.sv, <4 x ptr> align 4 %wide.gep276, <4 x i1> splat (i1 true)), !tbaa !41, !alias.scope !658, !noalias !657
  %wide.gep277 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 244
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.sz, <4 x ptr> align 4 %wide.gep277, <4 x i1> splat (i1 true)), !tbaa !41, !alias.scope !658, !noalias !657
  %wide.gep278 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 248
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.tb, <4 x ptr> align 4 %wide.gep278, <4 x i1> splat (i1 true)), !tbaa !41, !alias.scope !658, !noalias !657
  %wide.gep279 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep198, i64 252
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %wide.masked.gather216, <4 x ptr> align 4 %wide.gep279, <4 x i1> splat (i1 true)), !tbaa !41, !alias.scope !658, !noalias !657
  %index.next280 = add nuw i64 %index195, 4       ; 2 uses
  %vec.ind.next281 = add nuw nsw <4 x i64> %vec.ind196, splat (i64 4)
  %ptr.ind282 = getelementptr i8, ptr %pointer.phi197, i64 1024
  %i.tc = icmp eq i64 %index.next280, %n.vec190
  br i1 %i.tc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !648

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n283, label %._crit_edge.i, label %.preheader.preheader.i.preheader

.preheader.preheader.i.preheader:                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec190, %vec.epilog.middle.block ]
  %.118.i.ph = phi ptr [ %.020.i, %iter.check ], [ %.020.i, %vector.memcheck ], [ %i.bv, %vec.epilog.iter.check ], [ %i.km, %vec.epilog.middle.block ]
  br label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.preheader.preheader.i.preheader, %.preheader.preheader.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader.preheader.i ], [ %indvars.iv.i.ph, %.preheader.preheader.i.preheader ] ; 2 uses
  %.118.i = phi ptr [ %i.add, %.preheader.preheader.i ], [ %.118.i.ph, %.preheader.preheader.i.preheader ] ; 23 uses
  %i.td = add nsw i64 %indvars.iv.i, %i.bb
  %.idx.i = mul nsw i64 %i.td, 36
  %i.te = getelementptr inbounds i8, ptr %i.bp, i64 %.idx.i ; 8 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 4
  %i.tg = getelementptr inbounds nuw i8, ptr %i.te, i64 8
  %i.th = getelementptr inbounds nuw i8, ptr %i.te, i64 12
  %i.ti = getelementptr inbounds nuw i8, ptr %i.te, i64 20
  %i.tj = getelementptr inbounds nuw i8, ptr %i.te, i64 24
  %i.tk = getelementptr inbounds nuw i8, ptr %i.te, i64 28
  %i.tl = load float, ptr %i.tk, align 4, !tbaa !41 ; 3 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %i.te, i64 32
  %i.tn = load float, ptr %i.tm, align 4, !tbaa !41 ; 3 uses
  %i.to = fmul fast float %i.tl, f0x3E638E39      ; 2 uses
  %i.tp = fmul fast float %i.tl, f0x3CB60B61      ; 2 uses
  %i.tq = fmul fast float %i.tl, f0x3C360B61      ; 2 uses
  %i.tr = fmul fast float %i.tn, f0x3BB60B61      ; 4 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %.118.i, i64 4
  %i.tt = getelementptr inbounds nuw i8, ptr %.118.i, i64 8
  %i.tu = load float, ptr %i.te, align 4, !tbaa !41 ; 3 uses
  %i.tv = insertelement <4 x float> poison, float %i.tu, i64 0 ; 2 uses
  %i.tw = load float, ptr %i.tj, align 4, !tbaa !41 ; 4 uses
  %i.tx = insertelement <4 x float> poison, float %i.tw, i64 0 ; 2 uses
  %12 = shufflevector <4 x float> %i.tx, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.ty = fmul fast <4 x float> %12, <float f0xBE638E39, float poison, float poison, float f0x3BB60B61> ; 2 uses
  %i.tz = extractelement <4 x float> %i.ty, i64 0 ; 3 uses
  %.neg9.2.i = fsub fast float %i.tz, %i.to
  %i.ua = fadd fast float %i.to, %i.tz
  %i.ub = fmul fast float %i.tw, f0x3C360B61      ; 2 uses
  %i.uc = fadd fast float %i.tp, %i.ub
  %i.ud = fsub fast float %i.ub, %i.tp
  %i.ue = fmul fast float %i.tw, f0x3CB60B61      ; 2 uses
  %i.uf = fadd fast float %i.tq, %i.ue
  %i.ug = fsub fast float %i.ue, %i.tq
  %i.uh = extractelement <4 x float> %i.ty, i64 3
  %i.ui = getelementptr inbounds nuw i8, ptr %.118.i, i64 72
  %i.uj = getelementptr inbounds nuw i8, ptr %.118.i, i64 88
  %i.uk = getelementptr inbounds nuw i8, ptr %.118.i, i64 92
  %i.ul = getelementptr inbounds nuw i8, ptr %.118.i, i64 96
  %i.um = getelementptr inbounds nuw i8, ptr %.118.i, i64 100
  %i.un = getelementptr inbounds nuw i8, ptr %.118.i, i64 116
  %i.uo = getelementptr inbounds nuw i8, ptr %.118.i, i64 120
  %i.up = getelementptr inbounds nuw i8, ptr %.118.i, i64 124
  %i.uq = getelementptr inbounds nuw i8, ptr %.118.i, i64 128
  %i.ur = getelementptr inbounds nuw i8, ptr %.118.i, i64 132
  %i.us = getelementptr inbounds nuw i8, ptr %.118.i, i64 148
  %i.ut = getelementptr inbounds nuw i8, ptr %.118.i, i64 152
  %i.uu = getelementptr inbounds nuw i8, ptr %.118.i, i64 156
  %i.uv = getelementptr inbounds nuw i8, ptr %.118.i, i64 160
  %i.uw = getelementptr inbounds nuw i8, ptr %.118.i, i64 164
  %i.ux = load <4 x float>, ptr %i.tg, align 4, !tbaa !41 ; 7 uses
  %i.uy = load float, ptr %i.ti, align 4, !tbaa !41 ; 3 uses
  %i.uz = shufflevector <4 x float> %i.ux, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.va = shufflevector <4 x float> %i.tv, <4 x float> %i.ux, <2 x i32> <i32 0, i32 5>
  %i.vb = fmul fast <2 x float> %i.va, splat (float f0xBE638E39) ; 3 uses
  %i.vc = extractelement <2 x float> %i.vb, i64 0
  %i.vd = shufflevector <4 x float> %i.ux, <4 x float> poison, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ve = fmul fast <2 x float> %i.vd, splat (float f0xBE638E39) ; 4 uses
  %i.vf = extractelement <4 x float> %i.ux, i64 0
  %i.vg = fmul fast <2 x float> %i.vd, splat (float f0x3BB60B61) ; 2 uses
  %i.vh = fadd fast float %i.uf, %i.tr            ; 3 uses
  %i.vi = fadd fast float %i.ug, %i.tr            ; 3 uses
  %i.vj = fmul fast <4 x float> %i.tv, <float f0xBE638E39, float poison, float poison, float poison>
  %i.vk = load <2 x float>, ptr %i.th, align 4, !tbaa !41 ; 3 uses
  %i.vl = shufflevector <2 x float> %i.vk, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.vm = insertelement <2 x float> %i.vl, float %i.tu, i64 0 ; 2 uses
  %i.vn = fmul fast <2 x float> %i.vm, splat (float f0x3C360B61) ; 4 uses
  %i.vo = insertelement <2 x float> %i.uz, float %i.uy, i64 1
  %i.vp = fmul fast <2 x float> %i.vo, splat (float f0x3D360B61) ; 2 uses
  %i.vq = extractelement <2 x float> %i.vk, i64 0
  %i.vr = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %i.tf, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison), !tbaa !41 ; 2 uses
  %i.vs = shufflevector <4 x float> %i.vr, <4 x float> poison, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.vt = shufflevector <4 x float> %i.vr, <4 x float> %i.ux, <2 x i32> <i32 0, i32 6>
  %i.vu = fmul fast <2 x float> %i.vt, splat (float f0x3E638E39) ; 2 uses
  %i.vv = fsub fast <2 x float> %i.vb, %i.vu
  %i.vw = fadd fast <2 x float> %i.vv, %i.ve      ; 3 uses
  %i.vx = shufflevector <2 x float> %i.vw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.vy = fmul fast <2 x float> %i.vm, splat (float f0x3CB60B61) ; 4 uses
  %i.vz = fmul fast <2 x float> %i.vs, splat (float f0x3C360B61) ; 2 uses
  %i.wa = shufflevector <2 x float> %i.vw, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.wb = fmul fast <4 x float> %i.wa, <float f0x3E638E39, float f0x3C360B61, float f0x3CB60B61, float f0x3CB60B61> ; 4 uses
  %i.wc = fmul fast <4 x float> %i.vx, <float f0xBE638E39, float f0x3CB60B61, float f0x3C360B61, float f0x3C360B61> ; 4 uses
  %i.wd = fadd fast <4 x float> %i.wc, %i.wb
  %i.we = fsub fast <4 x float> %i.wc, %i.wb
  %i.wf = shufflevector <2 x float> %i.vw, <2 x float> poison, <16 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.wg = fadd fast <2 x float> %i.vu, %i.vb
  %i.wh = fadd fast <2 x float> %i.wg, %i.ve      ; 3 uses
  %i.wi = shufflevector <2 x float> %i.wh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.wj = shufflevector <2 x float> %i.wh, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.wk = fmul fast <4 x float> %i.wj, <float f0x3E638E39, float f0x3C360B61, float f0x3CB60B61, float f0x3CB60B61> ; 4 uses
  %i.wl = fmul fast <4 x float> %i.wi, <float f0xBE638E39, float f0x3CB60B61, float f0x3C360B61, float f0x3C360B61> ; 4 uses
  %foldExtExtBinop = fsub fast <4 x float> %i.wl, %i.wk
  %i.wm = fadd fast <4 x float> %i.wl, %i.wk
  %i.wn = fsub fast <4 x float> %i.wl, %i.wk
  %i.wo = shufflevector <4 x float> %i.wm, <4 x float> %i.wn, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %foldExtExtBinop287 = fsub fast <4 x float> %i.wk, %i.wl
  %i.wp = shufflevector <2 x float> %i.wh, <2 x float> poison, <16 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.wq = shufflevector <2 x float> %i.vs, <2 x float> %i.vk, <2 x i32> <i32 0, i32 3>
  %i.wr = fmul fast <2 x float> %i.wq, splat (float f0x3CB60B61) ; 2 uses
  %i.ws = fadd fast <2 x float> %i.wr, %i.vn
  %i.wt = fadd fast <2 x float> %i.ws, %i.vp      ; 3 uses
  %i.wu = shufflevector <2 x float> %i.wt, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %i.wv = fadd fast <2 x float> %i.vz, %i.vy
  %i.ww = fadd fast <2 x float> %i.wv, %i.vg      ; 3 uses
  %i.wx = fsub fast <2 x float> %i.vy, %i.vz
  %i.wy = fadd fast <2 x float> %i.wx, %i.vg      ; 3 uses
  %i.wz = shufflevector <2 x float> %i.wy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %i.xa = fmul fast float %i.vq, f0x3E638E39      ; 2 uses
  %.neg4.i = fsub fast float %i.vc, %i.xa
  %i.xb = fadd fast float %.neg4.i, %i.tz
  %i.xc = shufflevector <2 x float> %i.vy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.xd = insertelement <4 x float> %i.xc, float %i.xa, i64 0
  %i.xe = shufflevector <2 x float> %i.vn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.xf = shufflevector <4 x float> %i.xd, <4 x float> %i.xe, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.xg = shufflevector <4 x float> %i.vj, <4 x float> %i.xe, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.xh = shufflevector <4 x float> %i.xg, <4 x float> %i.xc, <4 x i32> <i32 0, i32 1, i32 5, i32 4> ; 2 uses
  %i.xi = fadd fast <4 x float> %i.xf, %i.xh
  %i.xj = fsub fast <4 x float> %i.xf, %i.xh
  %shift = shufflevector <2 x float> %i.vn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop289 = fsub fast <2 x float> %i.vy, %shift
  %i.xk = extractelement <2 x float> %foldExtExtBinop289, i64 0
  %i.xl = fadd fast float %i.xk, %i.uh
  store float %i.tu, ptr %.118.i, align 4, !tbaa !41
  store float %i.xb, ptr %i.ts, align 4, !tbaa !41
  %i.xm = insertelement <16 x float> poison, float %i.xl, i64 4
  %i.xn = insertelement <16 x float> %i.xm, float %i.tw, i64 5
  %i.xo = shufflevector <16 x float> %i.xn, <16 x float> %i.wf, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 5, i32 16, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.xp = shufflevector <4 x float> %i.xi, <4 x float> %i.xj, <16 x i32> <i32 0, i32 1, i32 6, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %13 = shufflevector <4 x float> %i.tx, <4 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %14 = fmul fast <16 x float> %13, <float f0xBE638E39, float f0x3D360B61, float f0x3D360B61, float f0x3BB60B61, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison>
  %i.xq = fadd fast <16 x float> %i.xp, %14
  %i.xr = fmul fast <4 x float> %i.wu, <float f0xBE638E39, float f0x3E638E39, float f0x3CB60B61, float f0x3C360B61> ; 3 uses
  %i.xs = shufflevector <4 x float> %i.xr, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.xt = fsub fast <4 x float> %i.xr, %i.xs
  %i.xu = fadd fast <4 x float> %i.xr, %i.xs
  %i.xv = shufflevector <4 x float> %i.xt, <4 x float> %i.xu, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.xw = extractelement <2 x float> %i.wt, i64 0 ; 2 uses
  %i.xx = fmul fast float %i.xw, f0x3CB60B61      ; 2 uses
  %i.xy = extractelement <2 x float> %i.wt, i64 1
  %i.xz = fmul fast float %i.xy, f0x3C360B61      ; 2 uses
  %i.ya = fadd fast float %i.xz, %i.xx
  %i.yb = fsub fast float %i.xx, %i.xz
  store float %i.xw, ptr %i.ul, align 4, !tbaa !41
  %i.yc = fsub fast <2 x float> %i.vn, %i.wr
  %i.yd = fadd fast <2 x float> %i.yc, %i.vp      ; 3 uses
  %i.ye = shufflevector <2 x float> %i.yd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %i.yf = fmul fast <4 x float> %i.ye, <float f0xBE638E39, float f0x3E638E39, float f0x3CB60B61, float f0x3C360B61> ; 3 uses
  %i.yg = shufflevector <4 x float> %i.yf, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.yh = fsub fast <4 x float> %i.yf, %i.yg
  %i.yi = fadd fast <4 x float> %i.yf, %i.yg
  %i.yj = shufflevector <4 x float> %i.yh, <4 x float> %i.yi, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.yk = extractelement <2 x float> %i.yd, i64 0 ; 2 uses
  %i.yl = fmul fast float %i.yk, f0x3CB60B61      ; 2 uses
  %i.ym = extractelement <2 x float> %i.yd, i64 1
  %i.yn = fmul fast float %i.ym, f0x3C360B61      ; 2 uses
  %i.yo = fadd fast float %i.yn, %i.yl
  %i.yp = fsub fast float %i.yl, %i.yn
  store float %i.yk, ptr %i.uq, align 4, !tbaa !41
  %i.yq = shufflevector <2 x float> %i.ww, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %i.yr = fmul fast <4 x float> %i.yq, <float f0xBE638E39, float f0x3E638E39, float f0x3CB60B61, float f0x3C360B61> ; 3 uses
  %i.ys = insertelement <4 x float> poison, float %i.vh, i64 0
  %i.yt = shufflevector <4 x float> %i.yr, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.yu = fsub fast <4 x float> %i.yr, %i.yt
  %i.yv = fadd fast <4 x float> %i.yr, %i.yt
  %i.yw = extractelement <2 x float> %i.ww, i64 0
  %i.yx = fmul fast <2 x float> %i.ww, <float f0x3CB60B61, float f0x3C360B61> ; 2 uses
  %i.yy = extractelement <2 x float> %i.yx, i64 0 ; 2 uses
  %i.yz = extractelement <2 x float> %i.yx, i64 1 ; 2 uses
  %i.za = fadd fast float %i.yz, %i.yy
  %i.zb = fmul fast float %i.vh, f0x3BB60B61
  %i.zc = fsub fast float %i.yy, %i.yz
  %i.zd = insertelement <16 x float> poison, float %i.za, i64 0
  %i.ze = insertelement <16 x float> %i.zd, float %i.zc, i64 1
  %i.zf = insertelement <2 x float> poison, float %i.zb, i64 0
  store float %i.yw, ptr %i.uv, align 4, !tbaa !41
  %i.zg = fmul fast <4 x float> %i.wz, <float f0xBE638E39, float f0x3E638E39, float f0x3CB60B61, float f0x3C360B61> ; 3 uses
  %i.zh = insertelement <4 x float> poison, float %i.vi, i64 0
  %i.zi = shufflevector <4 x float> %i.zg, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.zj = fsub fast <4 x float> %i.zg, %i.zi
  %i.zk = fadd fast <4 x float> %i.zg, %i.zi
  %i.zl = fmul fast <2 x float> %i.wy, <float f0x3CB60B61, float f0x3C360B61> ; 2 uses
  %i.zm = extractelement <2 x float> %i.zl, i64 0 ; 2 uses
  %i.zn = extractelement <2 x float> %i.zl, i64 1 ; 2 uses
  %i.zo = fadd fast float %i.zn, %i.zm
  %i.zp = fmul fast float %i.vi, f0x3BB60B61
  %i.zq = fsub fast float %i.zm, %i.zn
  %i.zr = insertelement <16 x float> poison, float %i.zo, i64 0
  %i.zs = insertelement <16 x float> %i.zr, float %i.zq, i64 1
  %i.zt = insertelement <2 x float> poison, float %i.zp, i64 0
  %i.zu = fmul fast float %i.vf, f0x3CB60B61      ; 2 uses
  %i.zv = fmul fast float %i.uy, f0x3C360B61      ; 2 uses
  %i.zw = fadd fast float %i.zv, %i.zu
  %i.zx = fadd fast float %i.zw, %i.tr
  %i.zy = fsub fast float %i.zu, %i.zv
  %i.zz = fadd fast float %i.zy, %i.tr
  %i.aaa = insertelement <16 x float> poison, float %i.vh, i64 6
  %i.aab = shufflevector <2 x float> %i.wy, <2 x float> poison, <16 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aac = shufflevector <16 x float> %i.aaa, <16 x float> %i.aab, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 6, i32 16, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aad = shufflevector <4 x float> %i.ux, <4 x float> poison, <16 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aae = shufflevector <16 x float> %i.aac, <16 x float> %i.aad, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16>
  %i.aaf = insertelement <16 x float> %i.aae, float %i.vi, i64 14
  %i.aag = shufflevector <4 x float> %i.yu, <4 x float> %i.yv, <16 x i32> <i32 0, i32 5, i32 6, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aah = shufflevector <4 x float> %i.ys, <4 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aai = fmul fast <16 x float> %i.aah, <float f0xBE638E39, float f0xBE638E39, float f0x3D360B61, float f0x3D360B61, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison>
  %i.aaj = fadd fast <16 x float> %i.aag, %i.aai
  %i.aak = shufflevector <16 x float> %i.aaj, <16 x float> %i.aaf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 22, i32 23, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 30, i32 31>
  %i.aal = shufflevector <4 x float> %i.zj, <4 x float> %i.zk, <16 x i32> <i32 0, i32 5, i32 6, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aam = shufflevector <4 x float> %i.zh, <4 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aan = fmul fast <16 x float> %i.aam, <float f0xBE638E39, float f0xBE638E39, float f0x3D360B61, float f0x3D360B61, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison>
  %i.aao = fadd fast <16 x float> %i.aal, %i.aan
  %i.aap = shufflevector <16 x float> %i.aak, <16 x float> %i.aao, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 14, i32 15>
  %i.aaq = shufflevector <2 x float> %i.zf, <2 x float> poison, <16 x i32> <i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aar = fadd fast <16 x float> %i.ze, %i.aaq
  %i.aas = shufflevector <16 x float> %i.aap, <16 x float> %i.aar, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 14, i32 15>
  %i.aat = shufflevector <2 x float> %i.zt, <2 x float> poison, <16 x i32> <i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aau = fadd fast <16 x float> %i.zs, %i.aat
  %i.aav = shufflevector <16 x float> %i.aas, <16 x float> %i.aau, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 14, i32 15>
  store <16 x float> %i.aav, ptr %i.uw, align 4, !tbaa !41
  %i.aaw = getelementptr inbounds nuw i8, ptr %.118.i, i64 228
  %i.aax = insertelement <4 x float> poison, float %i.tn, i64 0
  %i.aay = shufflevector <4 x float> %i.aax, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aaz = fmul fast <4 x float> %i.aay, <float f0xBE638E39, float f0xBE638E39, float f0x3D360B61, float f0x3D360B61> ; 3 uses
  %i.aba = extractelement <4 x float> %i.aaz, i64 0 ; 2 uses
  %i.abb = fadd fast float %.neg9.2.i, %i.aba     ; 2 uses
  %i.abc = fadd fast float %i.ua, %i.aba          ; 2 uses
  %i.abd = extractelement <4 x float> %i.aaz, i64 2 ; 2 uses
  %i.abe = fadd fast float %i.uc, %i.abd          ; 3 uses
  %i.abf = fadd fast float %i.ud, %i.abd          ; 3 uses
  %i.abg = insertelement <4 x float> poison, float %i.abb, i64 0 ; 2 uses
  %i.abh = fmul fast float %i.abe, f0x3BB60B61    ; 2 uses
  %i.abi = fmul fast float %i.abf, f0x3BB60B61    ; 2 uses
  %i.abj = shufflevector <4 x float> %i.wc, <4 x float> %i.wb, <2 x i32> <i32 0, i32 7>
  %i.abk = shufflevector <4 x float> %i.wb, <4 x float> %i.wc, <2 x i32> <i32 0, i32 7>
  %i.abl = fsub fast <2 x float> %i.abj, %i.abk
  %i.abm = shufflevector <4 x float> %i.wd, <4 x float> %i.we, <16 x i32> <i32 0, i32 1, i32 6, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %15 = shufflevector <4 x float> %i.abg, <4 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %16 = fmul fast <16 x float> %15, <float f0xBE638E39, float f0x3D360B61, float f0x3D360B61, float f0x3BB60B61, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison>
  %i.abn = fadd fast <16 x float> %i.abm, %16
  %i.abo = insertelement <4 x float> poison, float %i.abc, i64 0
  %i.abp = shufflevector <4 x float> %i.abo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.abq = fmul fast <4 x float> %i.abp, <float f0xBE638E39, float f0x3D360B61, float f0x3D360B61, float f0x3BB60B61> ; 3 uses
  %foldExtExtBinop291 = fadd fast <4 x float> %foldExtExtBinop, %i.abq
  %i.abr = fadd fast <4 x float> %i.wo, %i.abq
  %foldExtExtBinop293 = fadd fast <4 x float> %foldExtExtBinop287, %i.abq
  %i.abs = extractelement <4 x float> %foldExtExtBinop293, i64 3
  %i.abt = insertelement <4 x float> poison, float %i.abe, i64 0
  %i.abu = shufflevector <4 x float> %i.abt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.abv = fmul fast <4 x float> %i.abu, <float f0xBE638E39, float f0xBE638E39, float f0x3D360B61, float f0x3D360B61>
  %i.abw = shufflevector <2 x float> %i.abl, <2 x float> poison, <16 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %17 = shufflevector <4 x float> %i.abg, <4 x float> poison, <16 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %18 = fmul fast <16 x float> %17, <float f0xBE638E39, float poison, float poison, float poison, float poison, float f0x3BB60B61, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison>
  %i.abx = fadd fast <16 x float> %i.abw, %18
  %i.aby = shufflevector <16 x float> %i.xo, <16 x float> %i.abx, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 5, i32 6, i32 16, i32 poison, i32 poison, i32 poison, i32 poison, i32 21, i32 poison, i32 poison, i32 poison>
  %i.abz = insertelement <16 x float> %i.aby, float %i.abb, i64 13
  %i.aca = shufflevector <16 x float> %i.abz, <16 x float> %i.wp, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 12, i32 13, i32 16, i32 poison>
  %i.acb = shufflevector <4 x float> %foldExtExtBinop291, <4 x float> poison, <16 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.acc = shufflevector <16 x float> %i.aca, <16 x float> %i.acb, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 12, i32 13, i32 14, i32 16>
  %i.acd = shufflevector <16 x float> %i.xq, <16 x float> %i.acc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 20, i32 21, i32 22, i32 23, i32 poison, i32 poison, i32 poison, i32 poison, i32 28, i32 29, i32 30, i32 31>
  %i.ace = shufflevector <16 x float> %i.acd, <16 x float> %i.abn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 12, i32 13, i32 14, i32 15>
  store <16 x float> %i.ace, ptr %i.tt, align 4, !tbaa !41
  store <4 x float> %i.abr, ptr %i.ui, align 4, !tbaa !41
  store float %i.abs, ptr %i.uj, align 4, !tbaa !41
  store float %i.abc, ptr %i.uk, align 4, !tbaa !41
  %i.acf = fadd fast <4 x float> %i.xv, %i.abv
  %i.acg = fadd fast float %i.ya, %i.abh
  %i.ach = fadd fast float %i.yb, %i.abh
  store <4 x float> %i.acf, ptr %i.um, align 4, !tbaa !41
  store float %i.acg, ptr %i.un, align 4, !tbaa !41
  store float %i.ach, ptr %i.uo, align 4, !tbaa !41
  store float %i.abe, ptr %i.up, align 4, !tbaa !41
  %i.aci = insertelement <4 x float> poison, float %i.abf, i64 0
  %i.acj = shufflevector <4 x float> %i.aci, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ack = fmul fast <4 x float> %i.acj, <float f0xBE638E39, float f0xBE638E39, float f0x3D360B61, float f0x3D360B61>
  %i.acl = fadd fast <4 x float> %i.yj, %i.ack
  %i.acm = fadd fast float %i.yo, %i.abi
  %i.acn = fadd fast float %i.yp, %i.abi
  store <4 x float> %i.acl, ptr %i.ur, align 4, !tbaa !41
  store float %i.acm, ptr %i.us, align 4, !tbaa !41
  store float %i.acn, ptr %i.ut, align 4, !tbaa !41
  store float %i.abf, ptr %i.uu, align 4, !tbaa !41
  %i.aco = shufflevector <2 x float> %i.ve, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.acp = shufflevector <4 x float> %i.aco, <4 x float> %i.ux, <4 x i32> <i32 0, i32 poison, i32 poison, i32 4>
  %i.acq = insertelement <4 x float> poison, float %i.uy, i64 0
  %i.acr = shufflevector <4 x float> %i.acq, <4 x float> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 poison>
  %i.acs = shufflevector <4 x float> %i.acp, <4 x float> %i.acr, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.act = fmul reassoc arcp contract afn <4 x float> %i.acs, <float 1.000000e+00, float f0x3E638E39, float f0x3CB60B61, float f0x3C360B61> ; 3 uses
  %i.acu = shufflevector <2 x float> %i.ve, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>
  %i.acv = shufflevector <4 x float> %i.acu, <4 x float> %i.act, <4 x i32> <i32 5, i32 1, i32 7, i32 6> ; 2 uses
  %i.acw = fsub fast <4 x float> %i.act, %i.acv
  %i.acx = fadd fast <4 x float> %i.act, %i.acv
  %i.acy = shufflevector <4 x float> %i.acw, <4 x float> %i.acx, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.acz = fadd fast <4 x float> %i.acy, %i.aaz
  store <4 x float> %i.acz, ptr %i.aaw, align 4, !tbaa !41
  %i.ada = getelementptr inbounds nuw i8, ptr %.118.i, i64 244
  store float %i.zx, ptr %i.ada, align 4, !tbaa !41
  %i.adb = getelementptr inbounds nuw i8, ptr %.118.i, i64 248
  store float %i.zz, ptr %i.adb, align 4, !tbaa !41
  %i.adc = getelementptr inbounds nuw i8, ptr %.118.i, i64 252
  store float %i.tn, ptr %i.adc, align 4, !tbaa !41
  %i.add = getelementptr inbounds nuw i8, ptr %.118.i, i64 256 ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.preheader.preheader.i, !llvm.loop !649

._crit_edge.i:                                    ; preds = %.preheader.preheader.i, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi ptr [ %i.km, %vec.epilog.middle.block ], [ %i.bv, %middle.block ], [ %i.add, %.preheader.preheader.i ]
  %indvars.iv.next26.i = add nuw nsw i64 %indvars.iv25.i, 1 ; 2 uses
  %exitcond29.not.i = icmp eq i64 %indvars.iv.next26.i, %wide.trip.count28.i
  br i1 %exitcond29.not.i, label %_ZN4ncnnL42conv3x3s1_winograd63_transform_kernel_tileERKNS_3MatERS0_iiiii.exit, label %iter.check, !llvm.loop !650

_ZN4ncnnL42conv3x3s1_winograd63_transform_kernel_tileERKNS_3MatERS0_iiiii.exit: ; preds = %._crit_edge.i, %.preheader12.lr.ph.i, %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  %i.ade = sdiv i32 %i.ad, %i.av
  %i.adf = load ptr, ptr %10, align 8, !tbaa !22, !noalias !659
  %i.adg = load i64, ptr %i.p, align 8, !tbaa !23, !noalias !659
  %i.adh = sext i32 %i.ade to i64
  %i.adi = mul i64 %i.adg, %i.adh
  %i.adj = load i64, ptr %i.q, align 8, !tbaa !64, !noalias !659 ; 3 uses
  %i.adk = mul i64 %i.adi, %i.adj
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adf, i64 %i.adk
  %i.adm = load i32, ptr %i.r, align 8, !tbaa !65, !noalias !659
  %i.adn = load ptr, ptr %i.s, align 8, !tbaa !21, !noalias !659
  %i.ado = sdiv i32 %.098, %i.ar
  %i.adp = sext i32 %i.ado to i64
  store ptr null, ptr %i.t, align 8, !tbaa !20
  store i64 %i.adj, ptr %i.u, align 8, !tbaa !64
  store i32 %i.adm, ptr %i.v, align 8, !tbaa !65
  store ptr %i.adn, ptr %i.w, align 8, !tbaa !21
  %i.adq = load <2 x i32>, ptr %i.n, align 4, !tbaa !66, !noalias !659
  %i.adr = load i32, ptr %i.o, align 8, !tbaa !75, !noalias !659
  %i.ads = load i32, ptr %i.n, align 4, !tbaa !74, !noalias !659
  %i.adt = sext i32 %i.ads to i64
  %i.adu = sext i32 %i.adr to i64
  %i.adv = mul nsw i64 %i.adu, %i.adt             ; 2 uses
  %i.adw = mul i64 %i.adj, %i.adv
  %i.adx = mul i64 %i.adw, %i.adp
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adl, i64 %i.adx
  store ptr %i.ady, ptr %11, align 8, !tbaa !22
  %i.adz = shufflevector <2 x i32> %i.adq, <2 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.aea = shufflevector <4 x i32> <i32 2, i32 poison, i32 poison, i32 1>, <4 x i32> %i.adz, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x i32> %i.aea, ptr %i.x, align 8, !tbaa !66
  store i32 1, ptr %i.y, align 8, !tbaa !67
  store i64 %i.adv, ptr %i.z, align 8, !tbaa !23, !alias.scope !660
  call fastcc void @_ZN4ncnnL11pack_A_tileERKNS_3MatERS0_iii(ptr %i.al, ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef 64, i32 noundef %.sroa.speculated66, i32 noundef %.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  %i.aeb = load i32, ptr %6, align 4, !tbaa !66   ; 2 uses
  %i.aec = add nsw i32 %i.aeb, %.098              ; 2 uses
  %i.aed = load i32, ptr %5, align 4, !tbaa !66   ; 2 uses
  %i.aee = icmp slt i32 %i.aec, %i.aed
  br i1 %i.aee, label %.lr.ph, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !655

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.e:                                             ; preds = %bb.c
  %i.aef = landingpad { ptr, i32 }
          catch ptr null
  %i.aeg = extractvalue { ptr, i32 } %i.aef, 0
  call void @__clang_call_terminate(ptr %i.aeg) #36
  unreachable
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #12

declare noundef i32 @_ZN4ncnn18get_omp_thread_numEv() local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL11pack_A_tileERKNS_3MatERS0_iii(ptr nofree readonly captures(none) %.0.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, i32 noundef range(i32 16, 65) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #13 {
bb.a:
  %i.a = mul nsw i32 %3, %1                       ; 16 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !22
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !74
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !64
  %factor.op.mul = mul i64 %i.g, %i.e
  %i.h = icmp sgt i32 %2, 15
  %i.i = icmp sgt i32 %3, 0                       ; 5 uses
  %i.j = sext i32 %i.a to i64                     ; 14 uses
  %i.k = shl nsw i32 %i.a, 1
  %i.l = sext i32 %i.k to i64                     ; 5 uses
  %i.m = mul nsw i32 %i.a, 3
  %i.n = sext i32 %i.m to i64                     ; 5 uses
  %i.o = shl nsw i32 %i.a, 2
  %i.p = sext i32 %i.o to i64                     ; 2 uses
  %i.q = mul nsw i32 %i.a, 5
  %i.r = sext i32 %i.q to i64                     ; 2 uses
  %i.s = mul nsw i32 %i.a, 6
  %i.t = sext i32 %i.s to i64                     ; 2 uses
  %i.u = mul nsw i32 %i.a, 7
  %i.v = sext i32 %i.u to i64                     ; 2 uses
  %i.w = shl nsw i32 %i.a, 3
  %i.x = sext i32 %i.w to i64
  %i.y = mul nsw i32 %i.a, 9
  %i.z = sext i32 %i.y to i64
  %i.aa = mul nsw i32 %i.a, 10
  %i.ab = sext i32 %i.aa to i64
  %i.ac = mul nsw i32 %i.a, 11
  %i.ad = sext i32 %i.ac to i64
  %i.ae = mul nsw i32 %i.a, 12
  %i.af = sext i32 %i.ae to i64
  %i.ag = mul nsw i32 %i.a, 13
  %i.ah = sext i32 %i.ag to i64
  %i.ai = mul nsw i32 %i.a, 14
  %i.aj = sext i32 %i.ai to i64
  %i.ak = mul nsw i32 %i.a, 15
  %i.al = sext i32 %i.ak to i64
  %i.am = zext nneg i32 %1 to i64                 ; 19 uses
  %i.an = and i32 %2, -16                         ; 3 uses
  %i.ao = zext i32 %i.a to i64
  %i.ap = sext i32 %2 to i64                      ; 5 uses
  %i.aq = add i32 %2, -8
  %i.ar = add i32 %2, -4
  %i.as = or disjoint i32 %i.an, 7
  %i.at = icmp slt i32 %i.as, %2
  %invariant.op = add nsw i64 %i.ap, -15
  %invariant.op117 = add nsw i64 %i.ap, -7
  %invariant.op118 = add nsw i64 %i.ap, -3
  %invariant.op119 = add nsw i64 %i.ap, -1
  %xtraiter = and i32 %3, 1
  %i.au = icmp eq i32 %3, 1
  %unroll_iter = and i32 %3, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod129 = trunc i32 %3 to i1
  %xtraiter130 = and i32 %3, 3                    ; 3 uses
  %i.av = icmp ult i32 %3, 4
  %unroll_iter134 = and i32 %3, 2147483644
  %lcmp.mod131.not = icmp eq i32 %xtraiter130, 0
  %lcmp.mod133 = icmp ne i32 %xtraiter130, 0
  %xtraiter137 = and i32 %3, 7                    ; 3 uses
  %i.aw = icmp ult i32 %3, 8
  %unroll_iter142 = and i32 %3, 2147483640
  %lcmp.mod139.not = icmp eq i32 %xtraiter137, 0
  %lcmp.mod141 = icmp ne i32 %xtraiter137, 0
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge63.split
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge63.split
  %indvars.iv99 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next100, %._crit_edge63.split ] ; 7 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv99
end_hunk_1
begin_hunk_2_@_ZN4ncnnL24convolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE:bb.a
  %i.dxc = getelementptr inbounds nuw i8, ptr %gep4610, i64 %.idx1782
  %i.dxd = getelementptr inbounds nuw i8, ptr %gep4610, i64 %.idx1783
  br i1 %i.dty, label %.lr.ph4585, label %.loopexit4064

.lr.ph4585:                                       ; preds = %bb.ah, %.lr.ph4585
  %indvars.iv5340 = phi i64 [ %indvars.iv.next5341, %.lr.ph4585 ], [ 0, %bb.ah ] ; 2 uses
  %.515924582 = phi ptr [ %i.dzd, %.lr.ph4585 ], [ %.015874599, %bb.ah ] ; 3 uses
  %.538944581 = phi <16 x float> [ %i.dzc, %.lr.ph4585 ], [ %.038894598, %bb.ah ]
  %.539034580 = phi <16 x float> [ %i.dzb, %.lr.ph4585 ], [ %.038984597, %bb.ah ]
  %i.dxe = getelementptr inbounds nuw [4 x i8], ptr %i.dtw, i64 %indvars.iv5340
  %i.dxf = load i32, ptr %i.dxe, align 4, !tbaa !66
  %i.dxg = sext i32 %i.dxf to i64                 ; 4 uses
  %i.dxh = getelementptr inbounds [2 x i8], ptr %gep4610, i64 %i.dxg
  %i.dxi = load i64, ptr %i.dxh, align 1, !tbaa !85
  %i.dxj = insertelement <2 x i64> poison, i64 %i.dxi, i64 0
  %i.dxk = bitcast <2 x i64> %i.dxj to <8 x i16>
  %i.dxl = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dxk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dxm = bitcast <8 x i16> %i.dxl to <4 x float>
  %i.dxn = getelementptr inbounds [2 x i8], ptr %i.dxb, i64 %i.dxg
  %i.dxo = load i64, ptr %i.dxn, align 1, !tbaa !85
  %i.dxp = insertelement <2 x i64> poison, i64 %i.dxo, i64 0
  %i.dxq = bitcast <2 x i64> %i.dxp to <8 x i16>
  %i.dxr = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dxq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dxs = bitcast <8 x i16> %i.dxr to <4 x float>
  %i.dxt = getelementptr inbounds [2 x i8], ptr %i.dxc, i64 %i.dxg
  %i.dxu = load i64, ptr %i.dxt, align 1, !tbaa !85
  %i.dxv = insertelement <2 x i64> poison, i64 %i.dxu, i64 0
  %i.dxw = bitcast <2 x i64> %i.dxv to <8 x i16>
  %i.dxx = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dxw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dxy = bitcast <8 x i16> %i.dxx to <4 x float>
  %i.dxz = getelementptr inbounds [2 x i8], ptr %i.dxd, i64 %i.dxg
  %i.dya = load i64, ptr %i.dxz, align 1, !tbaa !85
  %i.dyb = insertelement <2 x i64> poison, i64 %i.dya, i64 0
  %i.dyc = bitcast <2 x i64> %i.dyb to <8 x i16>
  %i.dyd = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dyc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dye = bitcast <8 x i16> %i.dyd to <4 x float>
  %i.dyf = shufflevector <4 x float> %i.dxm, <4 x float> %i.dxs, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dyg = shufflevector <4 x float> %i.dxy, <4 x float> %i.dye, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dyh = shufflevector <16 x float> %i.dyf, <16 x float> %i.dyg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.dyi = load <16 x i16>, ptr %.515924582, align 32, !tbaa !85 ; 2 uses
  %i.dyj = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.dyi, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.dyk = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.dyi, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.dyl = shufflevector <16 x i16> %i.dyj, <16 x i16> %i.dyk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.dym = shufflevector <16 x i16> %i.dyj, <16 x i16> %i.dyk, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.dyn = bitcast <16 x i16> %i.dyl to <8 x i32>
  %i.dyo = bitcast <16 x i16> %i.dym to <8 x i32>
  %i.dyp = shufflevector <8 x i32> %i.dyn, <8 x i32> %i.dyo, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dyq = bitcast <16 x i32> %i.dyp to <16 x float>
  %i.dyr = getelementptr inbounds nuw i8, ptr %.515924582, i64 32
  %i.dys = load <16 x i16>, ptr %i.dyr, align 32, !tbaa !85 ; 2 uses
  %i.dyt = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.dys, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.dyu = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.dys, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.dyv = shufflevector <16 x i16> %i.dyt, <16 x i16> %i.dyu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.dyw = shufflevector <16 x i16> %i.dyt, <16 x i16> %i.dyu, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.dyx = bitcast <16 x i16> %i.dyv to <8 x i32>
  %i.dyy = bitcast <16 x i16> %i.dyw to <8 x i32>
  %i.dyz = shufflevector <8 x i32> %i.dyx, <8 x i32> %i.dyy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dza = bitcast <16 x i32> %i.dyz to <16 x float>
  %i.dzb = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dyh, <16 x float> nofpclass(nan inf) %i.dyq, <16 x float> nofpclass(nan inf) %.539034580) ; 2 uses
  %i.dzc = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dyh, <16 x float> nofpclass(nan inf) %i.dza, <16 x float> nofpclass(nan inf) %.538944581) ; 2 uses
  %i.dzd = getelementptr inbounds nuw i8, ptr %.515924582, i64 64
  %indvars.iv.next5341 = add nuw nsw i64 %indvars.iv5340, 1 ; 2 uses
  %exitcond5346.not = icmp eq i64 %indvars.iv.next5341, %wide.trip.count5345
  br i1 %exitcond5346.not, label %.loopexit4065.loopexit, label %.lr.ph4585, !llvm.loop !2685

.loopexit4065.loopexit:                           ; preds = %.lr.ph4585
  %scevgep5342 = getelementptr i8, ptr %.015874599, i64 64
  %scevgep5343 = getelementptr i8, ptr %scevgep5342, i64 %i.dub
  br label %.loopexit4064

.loopexit4065:                                    ; preds = %.loopexit4066
  br i1 %brmerge4920, label %.loopexit4064, label %.lr.ph4593

.lr.ph4593:                                       ; preds = %.loopexit4065
  %i.dze = getelementptr i8, ptr %gep4610, i64 %.idx1784
  %i.dzf = getelementptr i8, ptr %gep4610, i64 %.idx1785
  %i.dzg = getelementptr i8, ptr %gep4610, i64 %.idx1786
  %i.dzh = getelementptr i8, ptr %gep4610, i64 %.idx1787
  %i.dzi = getelementptr i8, ptr %gep4610, i64 %.idx1788
  %i.dzj = getelementptr i8, ptr %gep4610, i64 %.idx1789
  %i.dzk = getelementptr i8, ptr %gep4610, i64 %.idx1790
  %i.dzl = getelementptr i8, ptr %gep4610, i64 %.idx1791
  %i.dzm = getelementptr i8, ptr %gep4610, i64 %.idx1792
  %i.dzn = getelementptr i8, ptr %gep4610, i64 %.idx1793
  %i.dzo = getelementptr i8, ptr %gep4610, i64 %.idx1794
  %i.dzp = getelementptr i8, ptr %gep4610, i64 %.idx1795
  %i.dzq = getelementptr i8, ptr %gep4610, i64 %.idx1783
  %i.dzr = getelementptr i8, ptr %gep4610, i64 %.idx1782
  %i.dzs = getelementptr [2 x i8], ptr %gep4610, i64 %i.dtx
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph4593, %bb.ai
  %indvars.iv5347 = phi i64 [ 0, %.lr.ph4593 ], [ %indvars.iv.next5348, %bb.ai ] ; 2 uses
  %.715944591 = phi ptr [ %.015874599, %.lr.ph4593 ], [ %i.ecq, %bb.ai ] ; 3 uses
  %.738964590 = phi <16 x float> [ %.038894598, %.lr.ph4593 ], [ %i.ecp, %bb.ai ]
  %.739054589 = phi <16 x float> [ %.038984597, %.lr.ph4593 ], [ %i.eco, %bb.ai ]
  %i.dzt = getelementptr inbounds nuw [4 x i8], ptr %i.dtw, i64 %indvars.iv5347
  %i.dzu = load i32, ptr %i.dzt, align 4, !tbaa !66
  %i.dzv = sext i32 %i.dzu to i64                 ; 16 uses
  %i.dzw = getelementptr [2 x i8], ptr %i.dze, i64 %i.dzv
  %i.dzx = load i16, ptr %i.dzw, align 2, !tbaa !102
  %i.dzy = getelementptr [2 x i8], ptr %i.dzf, i64 %i.dzv
  %i.dzz = load i16, ptr %i.dzy, align 2, !tbaa !102
  %i.eaa = getelementptr [2 x i8], ptr %i.dzg, i64 %i.dzv
  %i.eab = load i16, ptr %i.eaa, align 2, !tbaa !102
  %i.eac = getelementptr [2 x i8], ptr %i.dzh, i64 %i.dzv
  %i.ead = load i16, ptr %i.eac, align 2, !tbaa !102
  %i.eae = getelementptr [2 x i8], ptr %i.dzi, i64 %i.dzv
  %i.eaf = load i16, ptr %i.eae, align 2, !tbaa !102
  %i.eag = getelementptr [2 x i8], ptr %i.dzj, i64 %i.dzv
  %i.eah = load i16, ptr %i.eag, align 2, !tbaa !102
  %i.eai = getelementptr [2 x i8], ptr %i.dzk, i64 %i.dzv
  %i.eaj = load i16, ptr %i.eai, align 2, !tbaa !102
  %i.eak = getelementptr [2 x i8], ptr %i.dzl, i64 %i.dzv
  %i.eal = load i16, ptr %i.eak, align 2, !tbaa !102
  %i.eam = getelementptr [2 x i8], ptr %i.dzm, i64 %i.dzv
  %i.ean = load i16, ptr %i.eam, align 2, !tbaa !102
  %i.eao = getelementptr [2 x i8], ptr %i.dzn, i64 %i.dzv
  %i.eap = load i16, ptr %i.eao, align 2, !tbaa !102
  %i.eaq = getelementptr [2 x i8], ptr %i.dzo, i64 %i.dzv
  %i.ear = load i16, ptr %i.eaq, align 2, !tbaa !102
  %i.eas = getelementptr [2 x i8], ptr %i.dzp, i64 %i.dzv
  %i.eat = load i16, ptr %i.eas, align 2, !tbaa !102
  %i.eau = getelementptr [2 x i8], ptr %i.dzq, i64 %i.dzv
  %i.eav = load i16, ptr %i.eau, align 2, !tbaa !102
  %i.eaw = getelementptr [2 x i8], ptr %i.dzr, i64 %i.dzv
  %i.eax = load i16, ptr %i.eaw, align 2, !tbaa !102
  %i.eay = getelementptr [2 x i8], ptr %i.dzs, i64 %i.dzv
  %i.eaz = load i16, ptr %i.eay, align 2, !tbaa !102
  %i.eba = getelementptr inbounds [2 x i8], ptr %gep4610, i64 %i.dzv
  %i.ebb = load i16, ptr %i.eba, align 2, !tbaa !102
  %i.ebc = insertelement <16 x i16> poison, i16 %i.ebb, i64 0
  %i.ebd = insertelement <16 x i16> %i.ebc, i16 %i.eaz, i64 1
  %i.ebe = insertelement <16 x i16> %i.ebd, i16 %i.eax, i64 2
  %i.ebf = insertelement <16 x i16> %i.ebe, i16 %i.eav, i64 3
  %i.ebg = insertelement <16 x i16> %i.ebf, i16 %i.eat, i64 4
  %i.ebh = insertelement <16 x i16> %i.ebg, i16 %i.ear, i64 5
  %i.ebi = insertelement <16 x i16> %i.ebh, i16 %i.eap, i64 6
  %i.ebj = insertelement <16 x i16> %i.ebi, i16 %i.ean, i64 7
  %i.ebk = insertelement <16 x i16> %i.ebj, i16 %i.eal, i64 8
  %i.ebl = insertelement <16 x i16> %i.ebk, i16 %i.eaj, i64 9
  %i.ebm = insertelement <16 x i16> %i.ebl, i16 %i.eah, i64 10
  %i.ebn = insertelement <16 x i16> %i.ebm, i16 %i.eaf, i64 11
  %i.ebo = insertelement <16 x i16> %i.ebn, i16 %i.ead, i64 12
  %i.ebp = insertelement <16 x i16> %i.ebo, i16 %i.eab, i64 13
  %i.ebq = insertelement <16 x i16> %i.ebp, i16 %i.dzz, i64 14
  %i.ebr = insertelement <16 x i16> %i.ebq, i16 %i.dzx, i64 15
  %i.ebs = zext <16 x i16> %i.ebr to <16 x i32>
  %i.ebt = shl nuw <16 x i32> %i.ebs, splat (i32 16)
  %i.ebu = bitcast <16 x i32> %i.ebt to <16 x float> ; 2 uses
  %i.ebv = load <16 x i16>, ptr %.715944591, align 32, !tbaa !85 ; 2 uses
  %i.ebw = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.ebv, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.ebx = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.ebv, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.eby = shufflevector <16 x i16> %i.ebw, <16 x i16> %i.ebx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ebz = shufflevector <16 x i16> %i.ebw, <16 x i16> %i.ebx, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.eca = bitcast <16 x i16> %i.eby to <8 x i32>
  %i.ecb = bitcast <16 x i16> %i.ebz to <8 x i32>
  %i.ecc = shufflevector <8 x i32> %i.eca, <8 x i32> %i.ecb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ecd = bitcast <16 x i32> %i.ecc to <16 x float>
  %i.ece = getelementptr inbounds nuw i8, ptr %.715944591, i64 32
  %i.ecf = load <16 x i16>, ptr %i.ece, align 32, !tbaa !85 ; 2 uses
  %i.ecg = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.ecf, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.ech = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.ecf, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.eci = shufflevector <16 x i16> %i.ecg, <16 x i16> %i.ech, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ecj = shufflevector <16 x i16> %i.ecg, <16 x i16> %i.ech, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.eck = bitcast <16 x i16> %i.eci to <8 x i32>
  %i.ecl = bitcast <16 x i16> %i.ecj to <8 x i32>
  %i.ecm = shufflevector <8 x i32> %i.eck, <8 x i32> %i.ecl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ecn = bitcast <16 x i32> %i.ecm to <16 x float>
  %i.eco = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ebu, <16 x float> nofpclass(nan inf) %i.ecd, <16 x float> nofpclass(nan inf) %.739054589) ; 2 uses
  %i.ecp = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ebu, <16 x float> nofpclass(nan inf) %i.ecn, <16 x float> nofpclass(nan inf) %.738964590) ; 2 uses
  %i.ecq = getelementptr inbounds nuw i8, ptr %.715944591, i64 64
  %indvars.iv.next5348 = add nuw nsw i64 %indvars.iv5347, 1 ; 2 uses
  %exitcond5353.not = icmp eq i64 %indvars.iv.next5348, %wide.trip.count5352
  br i1 %exitcond5353.not, label %.loopexit4064.loopexit, label %bb.ai, !llvm.loop !2686

.loopexit4064.loopexit:                           ; preds = %bb.ai
  %scevgep5349 = getelementptr i8, ptr %.015874599, i64 64
  %scevgep5350 = getelementptr i8, ptr %scevgep5349, i64 %i.dub
  br label %.loopexit4064

.loopexit4064:                                    ; preds = %bb.ag, %.loopexit4066.loopexit, %.loopexit4068.thread, %bb.ah, %.loopexit4065.loopexit, %.loopexit4064.loopexit, %.loopexit4065
  %.83906 = phi nsz <16 x float> [ %.038984597, %.loopexit4065 ], [ %i.eco, %.loopexit4064.loopexit ], [ %.038984597, %bb.ah ], [ %i.dzb, %.loopexit4065.loopexit ], [ %i.dvk, %.loopexit4068.thread ], [ %i.dwy, %.loopexit4066.loopexit ], [ %.038984597, %bb.ag ] ; 2 uses
  %.83897 = phi nsz <16 x float> [ %.038894598, %.loopexit4065 ], [ %i.ecp, %.loopexit4064.loopexit ], [ %.038894598, %bb.ah ], [ %i.dzc, %.loopexit4065.loopexit ], [ %i.dvl, %.loopexit4068.thread ], [ %i.dwz, %.loopexit4066.loopexit ], [ %.038894598, %bb.ag ] ; 2 uses
  %.81595 = phi ptr [ %.015874599, %.loopexit4065 ], [ %scevgep5350, %.loopexit4064.loopexit ], [ %.015874599, %bb.ah ], [ %scevgep5343, %.loopexit4065.loopexit ], [ %scevgep5329, %.loopexit4068.thread ], [ %scevgep5336, %.loopexit4066.loopexit ], [ %.015874599, %bb.ag ] ; 2 uses
  %i.ecr = add nuw nsw i32 %.015824600, 16        ; 2 uses
  %i.ecs = or disjoint i32 %i.ecr, 15
  %i.ect = icmp slt i32 %i.ecs, %i.bjv
  br i1 %i.ect, label %.noexc1926, label %._crit_edge4601, !llvm.loop !2687

._crit_edge4601:                                  ; preds = %.loopexit4064, %.noexc1928
  %.03898.lcssa = phi <16 x float> [ zeroinitializer, %.noexc1928 ], [ %.83906, %.loopexit4064 ] ; 2 uses
  %.03889.lcssa = phi <16 x float> [ zeroinitializer, %.noexc1928 ], [ %.83897, %.loopexit4064 ] ; 2 uses
  %.01587.lcssa = phi ptr [ %i.dsq, %.noexc1928 ], [ %.81595, %.loopexit4064 ] ; 2 uses
  %.01582.lcssa = phi i32 [ 0, %.noexc1928 ], [ %i.bkp, %.loopexit4064 ] ; 3 uses
  %i.ecu = shufflevector <16 x float> %.03898.lcssa, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ecv = shufflevector <16 x float> %.03898.lcssa, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ecw = fadd fast <8 x float> %i.ecu, %i.ecv   ; 2 uses
  %i.ecx = shufflevector <8 x float> %i.ecw, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ecy = shufflevector <8 x float> %i.ecw, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ecz = fadd fast <4 x float> %i.ecx, %i.ecy   ; 4 uses
  %i.eda = shufflevector <16 x float> %.03889.lcssa, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.edb = shufflevector <16 x float> %.03889.lcssa, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.edc = fadd fast <8 x float> %i.eda, %i.edb   ; 2 uses
  %i.edd = shufflevector <8 x float> %i.edc, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ede = shufflevector <8 x float> %i.edc, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.edf = fadd fast <4 x float> %i.edd, %i.ede   ; 4 uses
  %i.edg = or disjoint i32 %.01582.lcssa, 7
  %i.edh = icmp slt i32 %i.edg, %i.bjv
  br i1 %i.edh, label %.noexc1924.lr.ph, label %._crit_edge4640

.noexc1924.lr.ph:                                 ; preds = %._crit_edge4601
  %i.edi = load i32, ptr %i.l, align 4, !tbaa !74, !noalias !2764
  %i.edj = load ptr, ptr %0, align 8, !tbaa !22, !noalias !2764
  %i.edk = load i64, ptr %i.s, align 8, !tbaa !23, !noalias !2764
  %i.edl = load i64, ptr %i.bkf, align 8, !tbaa !64, !noalias !2764 ; 2 uses
  %factor.op.mul4645 = mul i64 %i.edk, %i.edl
  %i.edm = sext i32 %i.edi to i64
  %i.edn = mul i64 %i.edl, %i.edm
  %i.edo = mul i64 %i.edn, %i.dst
  %invariant.gep4647 = getelementptr i8, ptr %i.edj, i64 %i.edo
  %i.edp = trunc nuw nsw i64 %indvars.iv5409 to i32
  %.reass4739 = mul i32 %factor.op.mul4736, %i.edp
  %i.edq = sext i32 %.reass4739 to i64
  %invariant.gep4648 = getelementptr [2 x i8], ptr %invariant.gep4647, i64 %i.edq
  %i.edr = load i32, ptr %i.f, align 4            ; 6 uses
  %i.eds = icmp slt i32 %i.edr, 1                 ; 2 uses
  %i.edt = load ptr, ptr %i.g, align 8            ; 3 uses
  %i.edu = load i64, ptr %i.d, align 8            ; 8 uses
  %i.edv = icmp sgt i32 %i.edr, 0
  %.idx1771 = mul i64 %i.edu, 14
  %.idx1772 = mul i64 %i.edu, 12
  %.idx1773 = mul i64 %i.edu, 10
  %.idx1774 = shl i64 %i.edu, 3
  %.idx1775 = mul i64 %i.edu, 6
  %.idx1776 = shl i64 %i.edu, 2
  %i.edw = add i32 %i.edr, -1
  %i.edx = zext i32 %i.edw to i64
  %i.edy = shl nuw nsw i64 %i.edx, 5              ; 3 uses
  %brmerge4923 = select i1 %i.bkh, i1 true, i1 %i.eds
  %wide.trip.count5359 = zext nneg i32 %i.edr to i64
  %wide.trip.count5366 = zext nneg i32 %i.edr to i64
  %brmerge4926 = select i1 %i.bkj, i1 true, i1 %i.eds
  %wide.trip.count5373 = zext nneg i32 %i.edr to i64
  br label %.noexc1924

.noexc1924:                                       ; preds = %.noexc1924.lr.ph, %.loopexit4059
  %.115834639 = phi i32 [ %.01582.lcssa, %.noexc1924.lr.ph ], [ %i.eic, %.loopexit4059 ] ; 2 uses
  %.915964638 = phi ptr [ %.01587.lcssa, %.noexc1924.lr.ph ], [ %.151602, %.loopexit4059 ] ; 8 uses
  %.038014637 = phi <8 x float> [ zeroinitializer, %.noexc1924.lr.ph ], [ %.63807, %.loopexit4059 ] ; 5 uses
  %.038084636 = phi <8 x float> [ zeroinitializer, %.noexc1924.lr.ph ], [ %.63814, %.loopexit4059 ] ; 5 uses
  %i.edz = sdiv i32 %.115834639, %i.bjt
  %i.eea = sext i32 %i.edz to i64
  %.reass4646 = mul i64 %factor.op.mul4645, %i.eea
  %gep4649 = getelementptr i8, ptr %invariant.gep4648, i64 %.reass4646 ; 11 uses
  br i1 %brmerge4923, label %.loopexit4062, label %.lr.ph4615

.lr.ph4615:                                       ; preds = %.noexc1924, %.lr.ph4615
  %indvars.iv5354 = phi i64 [ %indvars.iv.next5355, %.lr.ph4615 ], [ 0, %.noexc1924 ] ; 2 uses
  %.1015974613 = phi ptr [ %i.eey, %.lr.ph4615 ], [ %.915964638, %.noexc1924 ] ; 3 uses
  %.138024612 = phi <8 x float> [ %i.eex, %.lr.ph4615 ], [ %.038014637, %.noexc1924 ]
  %.138094611 = phi <8 x float> [ %i.eew, %.lr.ph4615 ], [ %.038084636, %.noexc1924 ]
  %i.eeb = getelementptr inbounds nuw [4 x i8], ptr %i.edt, i64 %indvars.iv5354
  %i.eec = load i32, ptr %i.eeb, align 4, !tbaa !66
  %i.eed = sext i32 %i.eec to i64
  %i.eee = getelementptr inbounds [2 x i8], ptr %gep4649, i64 %i.eed
  %i.eef = call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.eee)
  %i.eeg = bitcast <16 x i8> %i.eef to <8 x i16>  ; 2 uses
  %i.eeh = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.eeg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.eei = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.eeg, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.eej = shufflevector <8 x i16> %i.eeh, <8 x i16> %i.eei, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.eek = bitcast <16 x i16> %i.eej to <8 x float> ; 2 uses
  %i.eel = load <8 x i16>, ptr %.1015974613, align 16, !tbaa !85 ; 2 uses
  %i.eem = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.eel, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.een = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.eel, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.eeo = shufflevector <8 x i16> %i.eem, <8 x i16> %i.een, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.eep = bitcast <16 x i16> %i.eeo to <8 x float>
  %i.eeq = getelementptr inbounds nuw i8, ptr %.1015974613, i64 16
  %i.eer = load <8 x i16>, ptr %i.eeq, align 16, !tbaa !85 ; 2 uses
  %i.ees = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.eer, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.eet = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.eer, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.eeu = shufflevector <8 x i16> %i.ees, <8 x i16> %i.eet, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.eev = bitcast <16 x i16> %i.eeu to <8 x float>
  %i.eew = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.eek, <8 x float> nofpclass(nan inf) %i.eep, <8 x float> nofpclass(nan inf) %.138094611) ; 2 uses
  %i.eex = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.eek, <8 x float> nofpclass(nan inf) %i.eev, <8 x float> nofpclass(nan inf) %.138024612) ; 2 uses
  %i.eey = getelementptr inbounds nuw i8, ptr %.1015974613, i64 32
  %indvars.iv.next5355 = add nuw nsw i64 %indvars.iv5354, 1 ; 2 uses
  %exitcond5360.not = icmp eq i64 %indvars.iv.next5355, %wide.trip.count5359
  br i1 %exitcond5360.not, label %.loopexit4062.thread, label %.lr.ph4615, !llvm.loop !2690

.loopexit4062.thread:                             ; preds = %.lr.ph4615
  %scevgep5356 = getelementptr i8, ptr %.915964638, i64 32
  %scevgep5357 = getelementptr i8, ptr %scevgep5356, i64 %i.edy
  br label %.loopexit4059

.loopexit4062:                                    ; preds = %.noexc1924
  br i1 %i.bki, label %.loopexit4060, label %bb.aj

bb.aj:                                            ; preds = %.loopexit4062
  %i.eez = getelementptr inbounds nuw [2 x i8], ptr %gep4649, i64 %i.edu
  br i1 %i.edv, label %.lr.ph4624, label %.loopexit4059

.lr.ph4624:                                       ; preds = %bb.aj, %.lr.ph4624
  %indvars.iv5361 = phi i64 [ %indvars.iv.next5362, %.lr.ph4624 ], [ 0, %bb.aj ] ; 2 uses
  %.1215994621 = phi ptr [ %i.egc, %.lr.ph4624 ], [ %.915964638, %bb.aj ] ; 3 uses
  %.338044620 = phi <8 x float> [ %i.egb, %.lr.ph4624 ], [ %.038014637, %bb.aj ]
  %.338114619 = phi <8 x float> [ %i.ega, %.lr.ph4624 ], [ %.038084636, %bb.aj ]
  %i.efa = getelementptr inbounds nuw [4 x i8], ptr %i.edt, i64 %indvars.iv5361
  %i.efb = load i32, ptr %i.efa, align 4, !tbaa !66
  %i.efc = sext i32 %i.efb to i64                 ; 2 uses
  %i.efd = getelementptr inbounds [2 x i8], ptr %gep4649, i64 %i.efc
  %i.efe = load i64, ptr %i.efd, align 1, !tbaa !85
  %i.eff = insertelement <2 x i64> poison, i64 %i.efe, i64 0
  %i.efg = bitcast <2 x i64> %i.eff to <8 x i16>
  %i.efh = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.efg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.efi = getelementptr inbounds [2 x i8], ptr %i.eez, i64 %i.efc
  %i.efj = load i64, ptr %i.efi, align 1, !tbaa !85
  %i.efk = insertelement <2 x i64> poison, i64 %i.efj, i64 0
  %i.efl = bitcast <2 x i64> %i.efk to <8 x i16>
  %i.efm = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.efl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.efn = shufflevector <8 x i16> %i.efh, <8 x i16> %i.efm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.efo = bitcast <16 x i16> %i.efn to <8 x float> ; 2 uses
  %i.efp = load <8 x i16>, ptr %.1215994621, align 16, !tbaa !85 ; 2 uses
  %i.efq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.efp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.efr = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.efp, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.efs = shufflevector <8 x i16> %i.efq, <8 x i16> %i.efr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.eft = bitcast <16 x i16> %i.efs to <8 x float>
  %i.efu = getelementptr inbounds nuw i8, ptr %.1215994621, i64 16
  %i.efv = load <8 x i16>, ptr %i.efu, align 16, !tbaa !85 ; 2 uses
  %i.efw = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.efv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.efx = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.efv, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.efy = shufflevector <8 x i16> %i.efw, <8 x i16> %i.efx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.efz = bitcast <16 x i16> %i.efy to <8 x float>
  %i.ega = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.efo, <8 x float> nofpclass(nan inf) %i.eft, <8 x float> nofpclass(nan inf) %.338114619) ; 2 uses
  %i.egb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.efo, <8 x float> nofpclass(nan inf) %i.efz, <8 x float> nofpclass(nan inf) %.338044620) ; 2 uses
  %i.egc = getelementptr inbounds nuw i8, ptr %.1215994621, i64 32
  %indvars.iv.next5362 = add nuw nsw i64 %indvars.iv5361, 1 ; 2 uses
  %exitcond5367.not = icmp eq i64 %indvars.iv.next5362, %wide.trip.count5366
  br i1 %exitcond5367.not, label %.loopexit4060.loopexit, label %.lr.ph4624, !llvm.loop !2691

.loopexit4060.loopexit:                           ; preds = %.lr.ph4624
  %scevgep5363 = getelementptr i8, ptr %.915964638, i64 32
  %scevgep5364 = getelementptr i8, ptr %scevgep5363, i64 %i.edy
  br label %.loopexit4059

.loopexit4060:                                    ; preds = %.loopexit4062
  br i1 %brmerge4926, label %.loopexit4059, label %.lr.ph4632

.lr.ph4632:                                       ; preds = %.loopexit4060
  %i.egd = getelementptr i8, ptr %gep4649, i64 %.idx1771
  %i.ege = getelementptr i8, ptr %gep4649, i64 %.idx1772
  %i.egf = getelementptr i8, ptr %gep4649, i64 %.idx1773
  %i.egg = getelementptr i8, ptr %gep4649, i64 %.idx1774
  %i.egh = getelementptr i8, ptr %gep4649, i64 %.idx1775
  %i.egi = getelementptr i8, ptr %gep4649, i64 %.idx1776
  %i.egj = getelementptr [2 x i8], ptr %gep4649, i64 %i.edu
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph4632, %bb.ak
  %indvars.iv5368 = phi i64 [ 0, %.lr.ph4632 ], [ %indvars.iv.next5369, %bb.ak ] ; 2 uses
  %.1416014630 = phi ptr [ %.915964638, %.lr.ph4632 ], [ %i.eib, %bb.ak ] ; 3 uses
  %.538064629 = phi <8 x float> [ %.038014637, %.lr.ph4632 ], [ %i.eia, %bb.ak ]
  %.538134628 = phi <8 x float> [ %.038084636, %.lr.ph4632 ], [ %i.ehz, %bb.ak ]
  %i.egk = getelementptr inbounds nuw [4 x i8], ptr %i.edt, i64 %indvars.iv5368
  %i.egl = load i32, ptr %i.egk, align 4, !tbaa !66
  %i.egm = sext i32 %i.egl to i64                 ; 8 uses
  %i.egn = getelementptr [2 x i8], ptr %i.egd, i64 %i.egm
  %i.ego = load i16, ptr %i.egn, align 2, !tbaa !102
  %i.egp = getelementptr [2 x i8], ptr %i.ege, i64 %i.egm
  %i.egq = load i16, ptr %i.egp, align 2, !tbaa !102
  %i.egr = getelementptr [2 x i8], ptr %i.egf, i64 %i.egm
  %i.egs = load i16, ptr %i.egr, align 2, !tbaa !102
  %i.egt = getelementptr [2 x i8], ptr %i.egg, i64 %i.egm
  %i.egu = load i16, ptr %i.egt, align 2, !tbaa !102
  %i.egv = getelementptr [2 x i8], ptr %i.egh, i64 %i.egm
  %i.egw = load i16, ptr %i.egv, align 2, !tbaa !102
  %i.egx = getelementptr [2 x i8], ptr %i.egi, i64 %i.egm
  %i.egy = load i16, ptr %i.egx, align 2, !tbaa !102
  %i.egz = getelementptr [2 x i8], ptr %i.egj, i64 %i.egm
  %i.eha = load i16, ptr %i.egz, align 2, !tbaa !102
  %i.ehb = getelementptr inbounds [2 x i8], ptr %gep4649, i64 %i.egm
  %i.ehc = load i16, ptr %i.ehb, align 2, !tbaa !102
  %i.ehd = insertelement <8 x i16> poison, i16 %i.ehc, i64 0
  %i.ehe = insertelement <8 x i16> %i.ehd, i16 %i.eha, i64 1
  %i.ehf = insertelement <8 x i16> %i.ehe, i16 %i.egy, i64 2
  %i.ehg = insertelement <8 x i16> %i.ehf, i16 %i.egw, i64 3
  %i.ehh = insertelement <8 x i16> %i.ehg, i16 %i.egu, i64 4
  %i.ehi = insertelement <8 x i16> %i.ehh, i16 %i.egs, i64 5
  %i.ehj = insertelement <8 x i16> %i.ehi, i16 %i.egq, i64 6
  %i.ehk = insertelement <8 x i16> %i.ehj, i16 %i.ego, i64 7
  %i.ehl = zext <8 x i16> %i.ehk to <8 x i32>
  %i.ehm = shl nuw <8 x i32> %i.ehl, splat (i32 16)
  %i.ehn = bitcast <8 x i32> %i.ehm to <8 x float> ; 2 uses
  %i.eho = load <8 x i16>, ptr %.1416014630, align 16, !tbaa !85 ; 2 uses
  %i.ehp = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.eho, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ehq = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.eho, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ehr = shufflevector <8 x i16> %i.ehp, <8 x i16> %i.ehq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ehs = bitcast <16 x i16> %i.ehr to <8 x float>
  %i.eht = getelementptr inbounds nuw i8, ptr %.1416014630, i64 16
  %i.ehu = load <8 x i16>, ptr %i.eht, align 16, !tbaa !85 ; 2 uses
  %i.ehv = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ehu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ehw = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.ehu, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ehx = shufflevector <8 x i16> %i.ehv, <8 x i16> %i.ehw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ehy = bitcast <16 x i16> %i.ehx to <8 x float>
  %i.ehz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ehn, <8 x float> nofpclass(nan inf) %i.ehs, <8 x float> nofpclass(nan inf) %.538134628) ; 2 uses
  %i.eia = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ehn, <8 x float> nofpclass(nan inf) %i.ehy, <8 x float> nofpclass(nan inf) %.538064629) ; 2 uses
  %i.eib = getelementptr inbounds nuw i8, ptr %.1416014630, i64 32
  %indvars.iv.next5369 = add nuw nsw i64 %indvars.iv5368, 1 ; 2 uses
  %exitcond5374.not = icmp eq i64 %indvars.iv.next5369, %wide.trip.count5373
  br i1 %exitcond5374.not, label %.loopexit4059.loopexit, label %bb.ak, !llvm.loop !2692

.loopexit4059.loopexit:                           ; preds = %bb.ak
  %scevgep5370 = getelementptr i8, ptr %.915964638, i64 32
  %scevgep5371 = getelementptr i8, ptr %scevgep5370, i64 %i.edy
  br label %.loopexit4059

.loopexit4059:                                    ; preds = %bb.aj, %.loopexit4060.loopexit, %.loopexit4062.thread, %.loopexit4059.loopexit, %.loopexit4060
  %.63814 = phi nsz <8 x float> [ %.038084636, %.loopexit4060 ], [ %i.ehz, %.loopexit4059.loopexit ], [ %i.eew, %.loopexit4062.thread ], [ %i.ega, %.loopexit4060.loopexit ], [ %.038084636, %bb.aj ] ; 2 uses
  %.63807 = phi nsz <8 x float> [ %.038014637, %.loopexit4060 ], [ %i.eia, %.loopexit4059.loopexit ], [ %i.eex, %.loopexit4062.thread ], [ %i.egb, %.loopexit4060.loopexit ], [ %.038014637, %bb.aj ] ; 2 uses
  %.151602 = phi ptr [ %.915964638, %.loopexit4060 ], [ %scevgep5371, %.loopexit4059.loopexit ], [ %scevgep5357, %.loopexit4062.thread ], [ %scevgep5364, %.loopexit4060.loopexit ], [ %.915964638, %bb.aj ] ; 2 uses
  %i.eic = add nuw nsw i32 %.115834639, 8         ; 3 uses
  %i.eid = or disjoint i32 %i.eic, 7
  %i.eie = icmp slt i32 %i.eid, %i.bjv
  br i1 %i.eie, label %.noexc1924, label %._crit_edge4640, !llvm.loop !2693

._crit_edge4640:                                  ; preds = %.loopexit4059, %._crit_edge4601
  %.03808.lcssa = phi <8 x float> [ zeroinitializer, %._crit_edge4601 ], [ %.63814, %.loopexit4059 ] ; 2 uses
  %.03801.lcssa = phi <8 x float> [ zeroinitializer, %._crit_edge4601 ], [ %.63807, %.loopexit4059 ] ; 2 uses
  %.91596.lcssa = phi ptr [ %.01587.lcssa, %._crit_edge4601 ], [ %.151602, %.loopexit4059 ] ; 2 uses
  %.11583.lcssa = phi i32 [ %.01582.lcssa, %._crit_edge4601 ], [ %i.eic, %.loopexit4059 ] ; 3 uses
  %i.eif = shufflevector <8 x float> %.03808.lcssa, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.eig = shufflevector <8 x float> %.03808.lcssa, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.eih = fadd fast <4 x float> %i.eif, %i.eig   ; 4 uses
  %i.eii = shufflevector <8 x float> %.03801.lcssa, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.eij = shufflevector <8 x float> %.03801.lcssa, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.eik = fadd fast <4 x float> %i.eii, %i.eij   ; 4 uses
  %i.eil = or disjoint i32 %.11583.lcssa, 3
  %i.eim = icmp slt i32 %i.eil, %i.bjv
  br i1 %i.eim, label %.noexc1922.lr.ph, label %._crit_edge4670

.noexc1922.lr.ph:                                 ; preds = %._crit_edge4640
  %i.ein = load i32, ptr %i.l, align 4, !tbaa !74, !noalias !2765
  %i.eio = load ptr, ptr %0, align 8, !tbaa !22, !noalias !2765
  %i.eip = load i64, ptr %i.s, align 8, !tbaa !23, !noalias !2765
  %i.eiq = load i64, ptr %i.bkf, align 8, !tbaa !64, !noalias !2765 ; 2 uses
  %factor.op.mul4675 = mul i64 %i.eip, %i.eiq
  %i.eir = sext i32 %i.ein to i64
  %i.eis = mul i64 %i.eiq, %i.eir
  %i.eit = mul i64 %i.eis, %i.dst
  %invariant.gep4677 = getelementptr i8, ptr %i.eio, i64 %i.eit
  %i.eiu = trunc nuw nsw i64 %indvars.iv5409 to i32
  %.reass4741 = mul i32 %factor.op.mul4736, %i.eiu
  %i.eiv = sext i32 %.reass4741 to i64
  %invariant.gep4678 = getelementptr [2 x i8], ptr %invariant.gep4677, i64 %i.eiv
  %i.eiw = load i32, ptr %i.f, align 4            ; 6 uses
  %i.eix = icmp slt i32 %i.eiw, 1                 ; 2 uses
  %i.eiy = load ptr, ptr %i.g, align 8            ; 4 uses
  %i.eiz = load i64, ptr %i.d, align 8            ; 3 uses
  %.idx1766 = mul i64 %i.eiz, 6
  %.idx1767 = shl i64 %i.eiz, 2
  %i.eja = add i32 %i.eiw, -1
  %i.ejb = zext i32 %i.eja to i64
  %i.ejc = shl nuw nsw i64 %i.ejb, 4              ; 2 uses
  %brmerge4929 = select i1 %i.bki, i1 true, i1 %i.eix
  %wide.trip.count5380 = zext i32 %i.eiw to i64   ; 2 uses
  %brmerge4932 = select i1 %i.bkj, i1 true, i1 %i.eix
  %wide.trip.count5387 = zext nneg i32 %i.eiw to i64
  %xtraiter6360 = and i64 %wide.trip.count5380, 1
  %i.ejd = icmp eq i32 %i.eiw, 1
  %unroll_iter6365 = and i64 %wide.trip.count5380, 2147483646
  %lcmp.mod6361.not = icmp eq i64 %xtraiter6360, 0
  %lcmp.mod6364 = trunc i32 %i.eiw to i1
  br label %.noexc1922

.noexc1922:                                       ; preds = %.noexc1922.lr.ph, %.loopexit4055
  %.215844669 = phi i32 [ %.11583.lcssa, %.noexc1922.lr.ph ], [ %i.enj, %.loopexit4055 ] ; 2 uses
  %.1616034668 = phi ptr [ %.91596.lcssa, %.noexc1922.lr.ph ], [ %.201607, %.loopexit4055 ] ; 6 uses
  %.037914667 = phi <4 x float> [ zeroinitializer, %.noexc1922.lr.ph ], [ %.43795, %.loopexit4055 ] ; 4 uses
  %.037964666 = phi <4 x float> [ zeroinitializer, %.noexc1922.lr.ph ], [ %.43800, %.loopexit4055 ] ; 4 uses
  %i.eje = sdiv i32 %.215844669, %i.bjt
  %i.ejf = sext i32 %i.eje to i64
  %.reass4676 = mul i64 %factor.op.mul4675, %i.ejf
  %gep4679 = getelementptr i8, ptr %invariant.gep4678, i64 %.reass4676 ; 7 uses
  br i1 %brmerge4929, label %.loopexit4057, label %.lr.ph4654.preheader

.lr.ph4654.preheader:                             ; preds = %.noexc1922
  br i1 %i.ejd, label %.lr.ph4654.epil.preheader, label %.lr.ph4654

.lr.ph4654:                                       ; preds = %.lr.ph4654.preheader, %.lr.ph4654
  %indvars.iv5375 = phi i64 [ %indvars.iv.next5376.1, %.lr.ph4654 ], [ 0, %.lr.ph4654.preheader ] ; 3 uses
  %.1716044652 = phi ptr [ %i.ela, %.lr.ph4654 ], [ %.1616034668, %.lr.ph4654.preheader ] ; 5 uses
  %.137924651 = phi <4 x float> [ %i.ekz, %.lr.ph4654 ], [ %.037914667, %.lr.ph4654.preheader ]
  %.137974650 = phi <4 x float> [ %i.eky, %.lr.ph4654 ], [ %.037964666, %.lr.ph4654.preheader ]
  %niter6366 = phi i64 [ %niter6366.next.1, %.lr.ph4654 ], [ 0, %.lr.ph4654.preheader ]
  %i.ejg = getelementptr inbounds nuw [4 x i8], ptr %i.eiy, i64 %indvars.iv5375
  %i.ejh = load i32, ptr %i.ejg, align 4, !tbaa !66
  %i.eji = sext i32 %i.ejh to i64
  %i.ejj = getelementptr inbounds [2 x i8], ptr %gep4679, i64 %i.eji
  %i.ejk = load i64, ptr %i.ejj, align 1, !tbaa !85
  %i.ejl = insertelement <2 x i64> poison, i64 %i.ejk, i64 0
  %i.ejm = bitcast <2 x i64> %i.ejl to <8 x i16>
  %i.ejn = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ejm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ejo = bitcast <8 x i16> %i.ejn to <4 x float> ; 2 uses
  %i.ejp = load i64, ptr %.1716044652, align 1, !tbaa !85
  %i.ejq = insertelement <2 x i64> poison, i64 %i.ejp, i64 0
  %i.ejr = bitcast <2 x i64> %i.ejq to <8 x i16>
  %i.ejs = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ejr, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ejt = bitcast <8 x i16> %i.ejs to <4 x float>
  %i.eju = getelementptr inbounds nuw i8, ptr %.1716044652, i64 8
  %i.ejv = load i64, ptr %i.eju, align 1, !tbaa !85
  %i.ejw = insertelement <2 x i64> poison, i64 %i.ejv, i64 0
  %i.ejx = bitcast <2 x i64> %i.ejw to <8 x i16>
  %i.ejy = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ejx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ejz = bitcast <8 x i16> %i.ejy to <4 x float>
  %i.eka = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ejo, <4 x float> nofpclass(nan inf) %i.ejt, <4 x float> nofpclass(nan inf) %.137974650)
  %i.ekb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ejo, <4 x float> nofpclass(nan inf) %i.ejz, <4 x float> nofpclass(nan inf) %.137924651)
  %i.ekc = getelementptr inbounds nuw i8, ptr %.1716044652, i64 16
  %i.ekd = getelementptr inbounds nuw [4 x i8], ptr %i.eiy, i64 %indvars.iv5375
  %i.eke = getelementptr inbounds nuw i8, ptr %i.ekd, i64 4
  %i.ekf = load i32, ptr %i.eke, align 4, !tbaa !66
  %i.ekg = sext i32 %i.ekf to i64
  %i.ekh = getelementptr inbounds [2 x i8], ptr %gep4679, i64 %i.ekg
  %i.eki = load i64, ptr %i.ekh, align 1, !tbaa !85
  %i.ekj = insertelement <2 x i64> poison, i64 %i.eki, i64 0
  %i.ekk = bitcast <2 x i64> %i.ekj to <8 x i16>
  %i.ekl = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ekk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ekm = bitcast <8 x i16> %i.ekl to <4 x float> ; 2 uses
  %i.ekn = load i64, ptr %i.ekc, align 1, !tbaa !85
  %i.eko = insertelement <2 x i64> poison, i64 %i.ekn, i64 0
  %i.ekp = bitcast <2 x i64> %i.eko to <8 x i16>
  %i.ekq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ekp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ekr = bitcast <8 x i16> %i.ekq to <4 x float>
  %i.eks = getelementptr inbounds nuw i8, ptr %.1716044652, i64 24
  %i.ekt = load i64, ptr %i.eks, align 1, !tbaa !85
  %i.eku = insertelement <2 x i64> poison, i64 %i.ekt, i64 0
  %i.ekv = bitcast <2 x i64> %i.eku to <8 x i16>
  %i.ekw = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ekv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ekx = bitcast <8 x i16> %i.ekw to <4 x float>
  %i.eky = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ekm, <4 x float> nofpclass(nan inf) %i.ekr, <4 x float> nofpclass(nan inf) %i.eka) ; 3 uses
  %i.ekz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ekm, <4 x float> nofpclass(nan inf) %i.ekx, <4 x float> nofpclass(nan inf) %i.ekb) ; 3 uses
  %i.ela = getelementptr inbounds nuw i8, ptr %.1716044652, i64 32 ; 2 uses
  %indvars.iv.next5376.1 = add nuw nsw i64 %indvars.iv5375, 2 ; 2 uses
  %niter6366.next.1 = add i64 %niter6366, 2       ; 2 uses
  %niter6366.ncmp.1 = icmp eq i64 %niter6366.next.1, %unroll_iter6365
  br i1 %niter6366.ncmp.1, label %.loopexit4057.thread.unr-lcssa, label %.lr.ph4654, !llvm.loop !2696

.loopexit4057.thread.unr-lcssa:                   ; preds = %.lr.ph4654
  br i1 %lcmp.mod6361.not, label %.loopexit4057.thread, label %.lr.ph4654.epil.preheader

.lr.ph4654.epil.preheader:                        ; preds = %.loopexit4057.thread.unr-lcssa, %.lr.ph4654.preheader
  %indvars.iv5375.epil.init = phi i64 [ 0, %.lr.ph4654.preheader ], [ %indvars.iv.next5376.1, %.loopexit4057.thread.unr-lcssa ]
  %.1716044652.epil.init = phi ptr [ %.1616034668, %.lr.ph4654.preheader ], [ %i.ela, %.loopexit4057.thread.unr-lcssa ] ; 2 uses
  %.137924651.epil.init = phi <4 x float> [ %.037914667, %.lr.ph4654.preheader ], [ %i.ekz, %.loopexit4057.thread.unr-lcssa ]
  %.137974650.epil.init = phi <4 x float> [ %.037964666, %.lr.ph4654.preheader ], [ %i.eky, %.loopexit4057.thread.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod6364)
  %i.elb = getelementptr inbounds nuw [4 x i8], ptr %i.eiy, i64 %indvars.iv5375.epil.init
  %i.elc = load i32, ptr %i.elb, align 4, !tbaa !66
  %i.eld = sext i32 %i.elc to i64
  %i.ele = getelementptr inbounds [2 x i8], ptr %gep4679, i64 %i.eld
  %i.elf = load i64, ptr %i.ele, align 1, !tbaa !85
  %i.elg = insertelement <2 x i64> poison, i64 %i.elf, i64 0
  %i.elh = bitcast <2 x i64> %i.elg to <8 x i16>
  %i.eli = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.elh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.elj = bitcast <8 x i16> %i.eli to <4 x float> ; 2 uses
  %i.elk = load i64, ptr %.1716044652.epil.init, align 1, !tbaa !85
  %i.ell = insertelement <2 x i64> poison, i64 %i.elk, i64 0
  %i.elm = bitcast <2 x i64> %i.ell to <8 x i16>
  %i.eln = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.elm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.elo = bitcast <8 x i16> %i.eln to <4 x float>
  %i.elp = getelementptr inbounds nuw i8, ptr %.1716044652.epil.init, i64 8
  %i.elq = load i64, ptr %i.elp, align 1, !tbaa !85
  %i.elr = insertelement <2 x i64> poison, i64 %i.elq, i64 0
  %i.els = bitcast <2 x i64> %i.elr to <8 x i16>
  %i.elt = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.els, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.elu = bitcast <8 x i16> %i.elt to <4 x float>
  %i.elv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.elj, <4 x float> nofpclass(nan inf) %i.elo, <4 x float> nofpclass(nan inf) %.137974650.epil.init)
  %i.elw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.elj, <4 x float> nofpclass(nan inf) %i.elu, <4 x float> nofpclass(nan inf) %.137924651.epil.init)
  br label %.loopexit4057.thread

.loopexit4057.thread:                             ; preds = %.loopexit4057.thread.unr-lcssa, %.lr.ph4654.epil.preheader
  %.lcssa6242 = phi <4 x float> [ %i.eky, %.loopexit4057.thread.unr-lcssa ], [ %i.elv, %.lr.ph4654.epil.preheader ]
  %.lcssa6241 = phi <4 x float> [ %i.ekz, %.loopexit4057.thread.unr-lcssa ], [ %i.elw, %.lr.ph4654.epil.preheader ]
  %scevgep5377 = getelementptr i8, ptr %.1616034668, i64 16
  %scevgep5378 = getelementptr i8, ptr %scevgep5377, i64 %i.ejc
  br label %.loopexit4055

.loopexit4057:                                    ; preds = %.noexc1922
  br i1 %brmerge4932, label %.loopexit4055, label %.lr.ph4662

.lr.ph4662:                                       ; preds = %.loopexit4057
  %i.elx = getelementptr i8, ptr %gep4679, i64 %.idx1766
  %i.ely = getelementptr i8, ptr %gep4679, i64 %.idx1767
  %i.elz = getelementptr [2 x i8], ptr %gep4679, i64 %i.eiz
  br label %bb.al

bb.al:                                            ; preds = %.lr.ph4662, %bb.al
  %indvars.iv5382 = phi i64 [ 0, %.lr.ph4662 ], [ %indvars.iv.next5383, %bb.al ] ; 2 uses
  %.1916064660 = phi ptr [ %.1616034668, %.lr.ph4662 ], [ %i.eni, %bb.al ] ; 3 uses
  %.337944659 = phi <4 x float> [ %.037914667, %.lr.ph4662 ], [ %i.enh, %bb.al ]
  %.337994658 = phi <4 x float> [ %.037964666, %.lr.ph4662 ], [ %i.eng, %bb.al ]
  %i.ema = getelementptr inbounds nuw [4 x i8], ptr %i.eiy, i64 %indvars.iv5382
  %i.emb = load i32, ptr %i.ema, align 4, !tbaa !66
  %i.emc = sext i32 %i.emb to i64                 ; 4 uses
  %i.emd = getelementptr [2 x i8], ptr %i.elx, i64 %i.emc
  %i.eme = load i16, ptr %i.emd, align 2, !tbaa !102
  %i.emf = getelementptr [2 x i8], ptr %i.ely, i64 %i.emc
  %i.emg = load i16, ptr %i.emf, align 2, !tbaa !102
  %i.emh = getelementptr [2 x i8], ptr %i.elz, i64 %i.emc
  %i.emi = load i16, ptr %i.emh, align 2, !tbaa !102
  %i.emj = getelementptr inbounds [2 x i8], ptr %gep4679, i64 %i.emc
  %i.emk = load i16, ptr %i.emj, align 2, !tbaa !102
  %i.eml = zext i16 %i.eme to i32
  %i.emm = zext i16 %i.emg to i32
  %i.emn = zext i16 %i.emi to i32
  %i.emo = zext i16 %i.emk to i32
  %i.emp = insertelement <4 x i32> poison, i32 %i.emo, i64 0
  %i.emq = insertelement <4 x i32> %i.emp, i32 %i.emn, i64 1
  %i.emr = insertelement <4 x i32> %i.emq, i32 %i.emm, i64 2
  %i.ems = insertelement <4 x i32> %i.emr, i32 %i.eml, i64 3
  %i.emt = shl nuw <4 x i32> %i.ems, splat (i32 16)
  %i.emu = bitcast <4 x i32> %i.emt to <4 x float> ; 2 uses
  %i.emv = load i64, ptr %.1916064660, align 1, !tbaa !85
  %i.emw = insertelement <2 x i64> poison, i64 %i.emv, i64 0
  %i.emx = bitcast <2 x i64> %i.emw to <8 x i16>
  %i.emy = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.emx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.emz = bitcast <8 x i16> %i.emy to <4 x float>
  %i.ena = getelementptr inbounds nuw i8, ptr %.1916064660, i64 8
  %i.enb = load i64, ptr %i.ena, align 1, !tbaa !85
  %i.enc = insertelement <2 x i64> poison, i64 %i.enb, i64 0
  %i.end = bitcast <2 x i64> %i.enc to <8 x i16>
  %i.ene = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.end, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.enf = bitcast <8 x i16> %i.ene to <4 x float>
  %i.eng = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.emu, <4 x float> nofpclass(nan inf) %i.emz, <4 x float> nofpclass(nan inf) %.337994658) ; 2 uses
  %i.enh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.emu, <4 x float> nofpclass(nan inf) %i.enf, <4 x float> nofpclass(nan inf) %.337944659) ; 2 uses
  %i.eni = getelementptr inbounds nuw i8, ptr %.1916064660, i64 16
  %indvars.iv.next5383 = add nuw nsw i64 %indvars.iv5382, 1 ; 2 uses
  %exitcond5388.not = icmp eq i64 %indvars.iv.next5383, %wide.trip.count5387
  br i1 %exitcond5388.not, label %.loopexit4055.loopexit, label %bb.al, !llvm.loop !2697

.loopexit4055.loopexit:                           ; preds = %bb.al
  %scevgep5384 = getelementptr i8, ptr %.1616034668, i64 16
  %scevgep5385 = getelementptr i8, ptr %scevgep5384, i64 %i.ejc
  br label %.loopexit4055

.loopexit4055:                                    ; preds = %.loopexit4057.thread, %.loopexit4055.loopexit, %.loopexit4057
  %.43800 = phi nsz <4 x float> [ %.037964666, %.loopexit4057 ], [ %i.eng, %.loopexit4055.loopexit ], [ %.lcssa6242, %.loopexit4057.thread ] ; 2 uses
  %.43795 = phi nsz <4 x float> [ %.037914667, %.loopexit4057 ], [ %i.enh, %.loopexit4055.loopexit ], [ %.lcssa6241, %.loopexit4057.thread ] ; 2 uses
  %.201607 = phi ptr [ %.1616034668, %.loopexit4057 ], [ %scevgep5385, %.loopexit4055.loopexit ], [ %scevgep5378, %.loopexit4057.thread ] ; 2 uses
  %i.enj = add nuw nsw i32 %.215844669, 4         ; 3 uses
  %i.enk = or disjoint i32 %i.enj, 3
  %i.enl = icmp slt i32 %i.enk, %i.bjv
  br i1 %i.enl, label %.noexc1922, label %._crit_edge4670, !llvm.loop !2698

._crit_edge4670:                                  ; preds = %.loopexit4055, %._crit_edge4640
  %.03796.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge4640 ], [ %.43800, %.loopexit4055 ] ; 4 uses
  %.03791.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge4640 ], [ %.43795, %.loopexit4055 ] ; 4 uses
  %.161603.lcssa = phi ptr [ %.91596.lcssa, %._crit_edge4640 ], [ %.201607, %.loopexit4055 ] ; 3 uses
  %.21584.lcssa = phi i32 [ %.11583.lcssa, %._crit_edge4640 ], [ %i.enj, %.loopexit4055 ] ; 5 uses
  %13 = shufflevector <4 x float> %i.ecz, <4 x float> %i.edf, <2 x i32> <i32 3, i32 7>
  %i.enm = shufflevector <4 x float> %i.ecz, <4 x float> %i.edf, <2 x i32> <i32 1, i32 5>
  %i.enn = fadd fast <2 x float> %13, %i.enm
  %14 = fadd fast <2 x float> %i.enn, %i.dtk
  %15 = shufflevector <4 x float> %i.ecz, <4 x float> %i.edf, <2 x i32> <i32 2, i32 6>
  %i.eno = shufflevector <4 x float> %i.ecz, <4 x float> %i.edf, <2 x i32> <i32 0, i32 4>
  %16 = fadd fast <2 x float> %15, %i.eno
  %i.enp = fadd fast <2 x float> %14, %16
  %17 = shufflevector <4 x float> %i.eih, <4 x float> %i.eik, <2 x i32> <i32 3, i32 7>
  %i.enq = shufflevector <4 x float> %i.eih, <4 x float> %i.eik, <2 x i32> <i32 1, i32 5>
  %18 = fadd fast <2 x float> %17, %i.enq
  %i.enr = fadd fast <2 x float> %i.enp, %18
  %19 = shufflevector <4 x float> %i.eih, <4 x float> %i.eik, <2 x i32> <i32 2, i32 6>
  %i.ens = shufflevector <4 x float> %i.eih, <4 x float> %i.eik, <2 x i32> <i32 0, i32 4>
  %20 = fadd fast <2 x float> %19, %i.ens
  %i.ent = fadd fast <2 x float> %i.enr, %20
  %21 = shufflevector <4 x float> %.03796.lcssa, <4 x float> %.03791.lcssa, <2 x i32> <i32 3, i32 7>
  %i.enu = shufflevector <4 x float> %.03796.lcssa, <4 x float> %.03791.lcssa, <2 x i32> <i32 1, i32 5>
  %22 = fadd fast <2 x float> %21, %i.enu
  %i.env = fadd fast <2 x float> %i.ent, %22
  %23 = shufflevector <4 x float> %.03796.lcssa, <4 x float> %.03791.lcssa, <2 x i32> <i32 2, i32 6>
  %i.enw = shufflevector <4 x float> %.03796.lcssa, <4 x float> %.03791.lcssa, <2 x i32> <i32 0, i32 4>
  %24 = fadd fast <2 x float> %23, %i.enw
  %i.enx = fadd fast <2 x float> %i.env, %24      ; 3 uses
  %i.eny = or disjoint i32 %.21584.lcssa, 1
  %i.enz = icmp slt i32 %i.eny, %i.bjv
  br i1 %i.enz, label %.noexc1920.lr.ph, label %.preheader4069

.noexc1920.lr.ph:                                 ; preds = %._crit_edge4670
  %i.eoa = load i32, ptr %i.l, align 4, !tbaa !74, !noalias !2766
  %i.eob = load ptr, ptr %0, align 8, !tbaa !22, !noalias !2766
  %i.eoc = load i64, ptr %i.s, align 8, !tbaa !23, !noalias !2766
  %i.eod = load i64, ptr %i.bkf, align 8, !tbaa !64, !noalias !2766 ; 2 uses
  %factor.op.mul4697 = mul i64 %i.eoc, %i.eod
  %i.eoe = sext i32 %i.eoa to i64
  %i.eof = mul i64 %i.eod, %i.eoe
  %i.eog = mul i64 %i.eof, %i.dst
  %invariant.gep4699 = getelementptr i8, ptr %i.eob, i64 %i.eog
  %i.eoh = mul nsw i64 %indvars.iv5409, %i.dtb
  %invariant.gep4700 = getelementptr [2 x i8], ptr %invariant.gep4699, i64 %i.eoh
  %i.eoi = load ptr, ptr %i.g, align 8            ; 3 uses
  %i.eoj = load i64, ptr %i.d, align 8
  br i1 %i.dsw, label %.noexc1920.us.preheader, label %.noexc1920.preheader

.noexc1920.preheader:                             ; preds = %.noexc1920.lr.ph
  %i.eok = add i32 %.21584.lcssa, 2
  %i.eol = sub i32 %i.bkq, %.21584.lcssa
  %i.eom = and i32 %i.eol, -2
  %i.eon = add i32 %i.eok, %i.eom
  br label %.preheader4069

.noexc1920.us.preheader:                          ; preds = %.noexc1920.lr.ph
  %i.eoo = zext i32 %.21584.lcssa to i64
  br label %iter.check6062

iter.check6062:                                   ; preds = %.noexc1920.us.preheader, %._crit_edge4685.us
  %indvars.iv5396 = phi i64 [ %i.eoo, %.noexc1920.us.preheader ], [ %indvars.iv.next5397, %._crit_edge4685.us ] ; 2 uses
  %.2116084691.us = phi ptr [ %.161603.lcssa, %.noexc1920.us.preheader ], [ %scevgep5392, %._crit_edge4685.us ] ; 7 uses
  %i.eop = phi <2 x float> [ %i.enx, %.noexc1920.us.preheader ], [ %i.fet, %._crit_edge4685.us ] ; 4 uses
  %.reass4698.us = mul i64 %factor.op.mul4697, %indvars.iv5396
  %gep4701.us = getelementptr i8, ptr %invariant.gep4700, i64 %.reass4698.us ; 42 uses
  %i.eoq = getelementptr [2 x i8], ptr %gep4701.us, i64 %i.eoj ; 41 uses
  br i1 %min.iters.check6029, label %vec.epilog.scalar.ph6063.preheader, label %vector.main.loop.iter.check6030

vector.main.loop.iter.check6030:                  ; preds = %iter.check6062
  %i.eor = extractelement <2 x float> %i.eop, i64 0
  %i.eos = extractelement <2 x float> %i.eop, i64 1
  br i1 %min.iters.check6031, label %vec.epilog.ph6066, label %vector.ph6032

vector.ph6032:                                    ; preds = %vector.main.loop.iter.check6030
  %i.eot = getelementptr i8, ptr %.2116084691.us, i64 %i.dtd
  %i.eou = shufflevector <2 x float> %i.eop, <2 x float> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.eov = shufflevector <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <16 x float> %i.eou, <16 x i32> <i32 17, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.eow = shufflevector <16 x float> %i.eou, <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <16 x i32> <i32 0, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  br label %vector.body6034

vector.body6034:                                  ; preds = %vector.ph6032, %vector.body6034
  %index6035 = phi i64 [ 0, %vector.ph6032 ], [ %index.next6054, %vector.body6034 ] ; 3 uses
  %vec.phi6036 = phi <16 x float> [ %i.eov, %vector.ph6032 ], [ %i.ezr, %vector.body6034 ]
  %vec.phi6037 = phi <16 x float> [ zeroinitializer, %vector.ph6032 ], [ %i.ezs, %vector.body6034 ]
  %vec.phi6038 = phi <16 x float> [ %i.eow, %vector.ph6032 ], [ %i.ezh, %vector.body6034 ]
  %vec.phi6039 = phi <16 x float> [ zeroinitializer, %vector.ph6032 ], [ %i.ezi, %vector.body6034 ]
  %i.eox = shl i64 %index6035, 3                  ; 2 uses
  %next.gep6040 = getelementptr i8, ptr %.2116084691.us, i64 %i.eox
  %i.eoy = getelementptr i8, ptr %.2116084691.us, i64 %i.eox
  %next.gep6041 = getelementptr i8, ptr %i.eoy, i64 128
  %i.eoz = getelementptr inbounds nuw [4 x i8], ptr %i.eoi, i64 %index6035 ; 2 uses
  %i.epa = getelementptr inbounds nuw i8, ptr %i.eoz, i64 64
  %wide.load6042 = load <16 x i32>, ptr %i.eoz, align 4, !tbaa !66
  %wide.load6043 = load <16 x i32>, ptr %i.epa, align 4, !tbaa !66
  %i.epb = sext <16 x i32> %wide.load6042 to <16 x i64> ; 16 uses
  %i.epc = sext <16 x i32> %wide.load6043 to <16 x i64> ; 16 uses
  %i.epd = extractelement <16 x i64> %i.epb, i64 0 ; 2 uses
  %i.epe = getelementptr inbounds [2 x i8], ptr %gep4701.us, i64 %i.epd
  %i.epf = extractelement <16 x i64> %i.epb, i64 1 ; 2 uses
  %i.epg = getelementptr inbounds [2 x i8], ptr %gep4701.us, i64 %i.epf
  %i.eph = extractelement <16 x i64> %i.epb, i64 2 ; 2 uses
  %i.epi = getelementptr inbounds [2 x i8], ptr %gep4701.us, i64 %i.eph
  %i.epj = extractelement <16 x i64> %i.epb, i64 3 ; 2 uses
  %i.epk = getelementptr inbounds [2 x i8], ptr %gep4701.us, i64 %i.epj
  %i.epl = extractelement <16 x i64> %i.epb, i64 4 ; 2 uses
  %i.epm = getelementptr inbounds [2 x i8], ptr %gep4701.us, i64 %i.epl
  %i.epn = extractelement <16 x i64> %i.epb, i64 5 ; 2 uses
  %i.epo = getelementptr inbounds [2 x i8], ptr %gep4701.us, i64 %i.epn
  %i.epp = extractelement <16 x i64> %i.epb, i64 6 ; 2 uses
  %i.epq = getelementptr inbounds [2 x i8], ptr %gep4701.us, i64 %i.epp
  %i.epr = extractelement <16 x i64> %i.epb, i64 7 ; 2 uses
  %i.eps = getelementptr inbounds [2 x i8], ptr %gep4701.us, i64 %i.epr
  %i.ept = extractelement <16 x i64> %i.epb, i64 8 ; 2 uses
  %i.epu = getelementptr inbounds [2 x i8], ptr %gep4701.us, i64 %i.ept
  %i.epv = extractelement <16 x i64> %i.epb, i64 9 ; 2 uses
  %i.epw = getelementptr inbounds [2 x i8], ptr %gep4701.us, i64 %i.epv
  %i.epx = extractelement <16 x i64> %i.epb, i64 10 ; 2 uses
  %i.epy = getelementptr inbounds [2 x i8], ptr %gep4701.us, i64 %i.epx
  %i.epz = extractelement <16 x i64> %i.epb, i64 11 ; 2 uses
  %i.eqa = getelementptr inbounds [2 x i8], ptr %gep4701.us, i64 %i.epz
  %i.eqb = extractelement <16 x i64> %i.epb, i64 12 ; 2 uses
  %i.eqc = getelementptr inbounds [2 x i8], ptr %gep4701.us, i64 %i.eqb
  %i.eqd = extractelement <16 x i64> %i.epb, i64 13 ; 2 uses
  %i.eqe = getelementptr inbounds [2 x i8], ptr %gep4701.us, i64 %i.eqd
  %i.eqf = extractelement <16 x i64> %i.epb, i64 14 ; 2 uses
  %i.eqg = getelementptr inbounds [2 x i8], ptr %gep4701.us, i64 %i.eqf
  %i.eqh = extractelement <16 x i64> %i.epb, i64 15 ; 2 uses
  %i.eqi = getelementptr inbounds [2 x i8], ptr %gep4701.us, i64 %i.eqh
  %i.eqj = extractelement <16 x i64> %i.epc, i64 0 ; 2 uses
  %i.eqk = getelementptr inbounds [2 x i8], ptr %gep4701.us, i64 %i.eqj
  %i.eql = extractelement <16 x i64> %i.epc, i64 1 ; 2 uses
  %i.eqm = getelementptr inbounds [2 x i8], ptr %gep4701.us, i64 %i.eql
  %i.eqn = extractelement <16 x i64> %i.epc, i64 2 ; 2 uses
  %i.eqo = getelementptr inbounds [2 x i8], ptr %gep4701.us, i64 %i.eqn
  %i.eqp = extractelement <16 x i64> %i.epc, i64 3 ; 2 uses
  %i.eqq = getelementptr inbounds [2 x i8], ptr %gep4701.us, i64 %i.eqp
  %i.eqr = extractelement <16 x i64> %i.epc, i64 4 ; 2 uses
  %i.eqs = getelementptr inbounds [2 x i8], ptr %gep4701.us, i64 %i.eqr
  %i.eqt = extractelement <16 x i64> %i.epc, i64 5 ; 2 uses
  %i.equ = getelementptr inbounds [2 x i8], ptr %gep4701.us, i64 %i.eqt
  %i.eqv = extractelement <16 x i64> %i.epc, i64 6 ; 2 uses
  %i.eqw = getelementptr inbounds [2 x i8], ptr %gep4701.us, i64 %i.eqv
  %i.eqx = extractelement <16 x i64> %i.epc, i64 7 ; 2 uses
  %i.eqy = getelementptr inbounds [2 x i8], ptr %gep4701.us, i64 %i.eqx
  %i.eqz = extractelement <16 x i64> %i.epc, i64 8 ; 2 uses
  %i.era = getelementptr inbounds [2 x i8], ptr %gep4701.us, i64 %i.eqz
  %i.erb = extractelement <16 x i64> %i.epc, i64 9 ; 2 uses
  %i.erc = getelementptr inbounds [2 x i8], ptr %gep4701.us, i64 %i.erb
  %i.erd = extractelement <16 x i64> %i.epc, i64 10 ; 2 uses
  %i.ere = getelementptr inbounds [2 x i8], ptr %gep4701.us, i64 %i.erd
  %i.erf = extractelement <16 x i64> %i.epc, i64 11 ; 2 uses
  %i.erg = getelementptr inbounds [2 x i8], ptr %gep4701.us, i64 %i.erf
  %i.erh = extractelement <16 x i64> %i.epc, i64 12 ; 2 uses
  %i.eri = getelementptr inbounds [2 x i8], ptr %gep4701.us, i64 %i.erh
  %i.erj = extractelement <16 x i64> %i.epc, i64 13 ; 2 uses
  %i.erk = getelementptr inbounds [2 x i8], ptr %gep4701.us, i64 %i.erj
  %i.erl = extractelement <16 x i64> %i.epc, i64 14 ; 2 uses
  %i.erm = getelementptr inbounds [2 x i8], ptr %gep4701.us, i64 %i.erl
  %i.ern = extractelement <16 x i64> %i.epc, i64 15 ; 2 uses
  %i.ero = getelementptr inbounds [2 x i8], ptr %gep4701.us, i64 %i.ern
  %i.erp = load i16, ptr %i.epe, align 2, !tbaa !102
  %i.erq = load i16, ptr %i.epg, align 2, !tbaa !102
  %i.err = load i16, ptr %i.epi, align 2, !tbaa !102
  %i.ers = load i16, ptr %i.epk, align 2, !tbaa !102
  %i.ert = load i16, ptr %i.epm, align 2, !tbaa !102
  %i.eru = load i16, ptr %i.epo, align 2, !tbaa !102
  %i.erv = load i16, ptr %i.epq, align 2, !tbaa !102
  %i.erw = load i16, ptr %i.eps, align 2, !tbaa !102
  %i.erx = load i16, ptr %i.epu, align 2, !tbaa !102
  %i.ery = load i16, ptr %i.epw, align 2, !tbaa !102
  %i.erz = load i16, ptr %i.epy, align 2, !tbaa !102
  %i.esa = load i16, ptr %i.eqa, align 2, !tbaa !102
  %i.esb = load i16, ptr %i.eqc, align 2, !tbaa !102
  %i.esc = load i16, ptr %i.eqe, align 2, !tbaa !102
  %i.esd = load i16, ptr %i.eqg, align 2, !tbaa !102
  %i.ese = load i16, ptr %i.eqi, align 2, !tbaa !102
  %i.esf = insertelement <16 x i16> poison, i16 %i.erp, i64 0
  %i.esg = insertelement <16 x i16> %i.esf, i16 %i.erq, i64 1
  %i.esh = insertelement <16 x i16> %i.esg, i16 %i.err, i64 2
  %i.esi = insertelement <16 x i16> %i.esh, i16 %i.ers, i64 3
  %i.esj = insertelement <16 x i16> %i.esi, i16 %i.ert, i64 4
  %i.esk = insertelement <16 x i16> %i.esj, i16 %i.eru, i64 5
  %i.esl = insertelement <16 x i16> %i.esk, i16 %i.erv, i64 6
  %i.esm = insertelement <16 x i16> %i.esl, i16 %i.erw, i64 7
  %i.esn = insertelement <16 x i16> %i.esm, i16 %i.erx, i64 8
  %i.eso = insertelement <16 x i16> %i.esn, i16 %i.ery, i64 9
  %i.esp = insertelement <16 x i16> %i.eso, i16 %i.erz, i64 10
  %i.esq = insertelement <16 x i16> %i.esp, i16 %i.esa, i64 11
  %i.esr = insertelement <16 x i16> %i.esq, i16 %i.esb, i64 12
  %i.ess = insertelement <16 x i16> %i.esr, i16 %i.esc, i64 13
  %i.est = insertelement <16 x i16> %i.ess, i16 %i.esd, i64 14
  %i.esu = insertelement <16 x i16> %i.est, i16 %i.ese, i64 15
  %i.esv = load i16, ptr %i.eqk, align 2, !tbaa !102
  %i.esw = load i16, ptr %i.eqm, align 2, !tbaa !102
  %i.esx = load i16, ptr %i.eqo, align 2, !tbaa !102
  %i.esy = load i16, ptr %i.eqq, align 2, !tbaa !102
  %i.esz = load i16, ptr %i.eqs, align 2, !tbaa !102
  %i.eta = load i16, ptr %i.equ, align 2, !tbaa !102
  %i.etb = load i16, ptr %i.eqw, align 2, !tbaa !102
  %i.etc = load i16, ptr %i.eqy, align 2, !tbaa !102
  %i.etd = load i16, ptr %i.era, align 2, !tbaa !102
  %i.ete = load i16, ptr %i.erc, align 2, !tbaa !102
  %i.etf = load i16, ptr %i.ere, align 2, !tbaa !102
  %i.etg = load i16, ptr %i.erg, align 2, !tbaa !102
  %i.eth = load i16, ptr %i.eri, align 2, !tbaa !102
  %i.eti = load i16, ptr %i.erk, align 2, !tbaa !102
  %i.etj = load i16, ptr %i.erm, align 2, !tbaa !102
  %i.etk = load i16, ptr %i.ero, align 2, !tbaa !102
  %i.etl = insertelement <16 x i16> poison, i16 %i.esv, i64 0
  %i.etm = insertelement <16 x i16> %i.etl, i16 %i.esw, i64 1
  %i.etn = insertelement <16 x i16> %i.etm, i16 %i.esx, i64 2
  %i.eto = insertelement <16 x i16> %i.etn, i16 %i.esy, i64 3
  %i.etp = insertelement <16 x i16> %i.eto, i16 %i.esz, i64 4
  %i.etq = insertelement <16 x i16> %i.etp, i16 %i.eta, i64 5
  %i.etr = insertelement <16 x i16> %i.etq, i16 %i.etb, i64 6
  %i.ets = insertelement <16 x i16> %i.etr, i16 %i.etc, i64 7
  %i.ett = insertelement <16 x i16> %i.ets, i16 %i.etd, i64 8
  %i.etu = insertelement <16 x i16> %i.ett, i16 %i.ete, i64 9
  %i.etv = insertelement <16 x i16> %i.etu, i16 %i.etf, i64 10
  %i.etw = insertelement <16 x i16> %i.etv, i16 %i.etg, i64 11
  %i.etx = insertelement <16 x i16> %i.etw, i16 %i.eth, i64 12
  %i.ety = insertelement <16 x i16> %i.etx, i16 %i.eti, i64 13
  %i.etz = insertelement <16 x i16> %i.ety, i16 %i.etj, i64 14
  %i.eua = insertelement <16 x i16> %i.etz, i16 %i.etk, i64 15
  %i.eub = zext <16 x i16> %i.esu to <16 x i32>
  %i.euc = zext <16 x i16> %i.eua to <16 x i32>
  %i.eud = shl nuw <16 x i32> %i.eub, splat (i32 16)
  %i.eue = shl nuw <16 x i32> %i.euc, splat (i32 16)
end_hunk_2
