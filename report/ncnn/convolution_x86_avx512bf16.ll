Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_avx512bf16?download=true
inline.NumInlined: 192
inline.NumDeleted: 51
loop-unroll.NumCompletelyUnrolled: 48
loop-unroll.NumRuntimeUnrolled: 78
loop-unroll.NumUnrolled: 126
begin_hunk_0_@_ZN4ncnnL24convolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE:bb.a
  %i.dlq = bitcast <16 x i8> %i.dlp to <8 x bfloat>
  %i.dlr = fpext fast <8 x bfloat> %i.dlq to <8 x float>
  %i.dls = getelementptr inbounds [2 x i8], ptr %i.djv, i64 %i.dln
  %i.dlt = call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.dls)
  %i.dlu = bitcast <16 x i8> %i.dlt to <8 x bfloat>
  %i.dlv = fpext fast <8 x bfloat> %i.dlu to <8 x float>
  %i.dlw = shufflevector <8 x float> %i.dlr, <8 x float> %i.dlv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.dlx = load <16 x bfloat>, ptr %.314944865.epil.init, align 32, !tbaa !18
  %i.dly = fpext fast <16 x bfloat> %i.dlx to <16 x float>
  %i.dlz = getelementptr inbounds nuw i8, ptr %.314944865.epil.init, i64 32
  %i.dma = load <16 x bfloat>, ptr %i.dlz, align 32, !tbaa !18
  %i.dmb = fpext fast <16 x bfloat> %i.dma to <16 x float>
  %i.dmc = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dlw, <16 x float> nofpclass(nan inf) %i.dly, <16 x float> nofpclass(nan inf) %.340984863.epil.init)
  %i.dmd = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dlw, <16 x float> nofpclass(nan inf) %i.dmb, <16 x float> nofpclass(nan inf) %.340894864.epil.init)
  br label %.loopexit4358.loopexit

.loopexit4358.loopexit:                           ; preds = %.loopexit4358.loopexit.unr-lcssa, %.lr.ph4868.epil.preheader
  %.lcssa6519 = phi <16 x float> [ %i.dli, %.loopexit4358.loopexit.unr-lcssa ], [ %i.dmc, %.lr.ph4868.epil.preheader ]
  %.lcssa6518 = phi <16 x float> [ %i.dlj, %.loopexit4358.loopexit.unr-lcssa ], [ %i.dmd, %.lr.ph4868.epil.preheader ]
  %scevgep5627 = getelementptr i8, ptr %.014914891, i64 64
  %scevgep5628 = getelementptr i8, ptr %scevgep5627, i64 %i.dhz
  br label %.loopexit4356

.loopexit4358:                                    ; preds = %.loopexit4360
  br i1 %i.ayi, label %.loopexit4357, label %bb.af

bb.af:                                            ; preds = %.loopexit4358
  %i.dme = getelementptr inbounds nuw [2 x i8], ptr %gep4902, i64 %i.dhv
  %i.dmf = getelementptr inbounds nuw i8, ptr %gep4902, i64 %.idx2001
  %i.dmg = getelementptr inbounds nuw i8, ptr %gep4902, i64 %.idx2002
  br i1 %i.dhw, label %.lr.ph4877, label %.loopexit4356

.lr.ph4877:                                       ; preds = %bb.af, %.lr.ph4877
  %indvars.iv5632 = phi i64 [ %indvars.iv.next5633, %.lr.ph4877 ], [ 0, %bb.af ] ; 2 uses
  %.514964874 = phi ptr [ %i.dns, %.lr.ph4877 ], [ %.014914891, %bb.af ] ; 3 uses
  %.540914873 = phi <16 x float> [ %i.dnr, %.lr.ph4877 ], [ %.040864890, %bb.af ]
  %.541004872 = phi <16 x float> [ %i.dnq, %.lr.ph4877 ], [ %.040954889, %bb.af ]
  %i.dmh = getelementptr inbounds nuw [4 x i8], ptr %i.dhu, i64 %indvars.iv5632
  %i.dmi = load i32, ptr %i.dmh, align 4, !tbaa !30
  %i.dmj = sext i32 %i.dmi to i64                 ; 4 uses
  %i.dmk = getelementptr inbounds [2 x i8], ptr %gep4902, i64 %i.dmj
  %i.dml = load i64, ptr %i.dmk, align 1, !tbaa !18
  %i.dmm = insertelement <2 x i64> poison, i64 %i.dml, i64 0
  %i.dmn = bitcast <2 x i64> %i.dmm to <8 x i16>
  %i.dmo = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dmn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dmp = bitcast <8 x i16> %i.dmo to <4 x float>
  %i.dmq = getelementptr inbounds [2 x i8], ptr %i.dme, i64 %i.dmj
  %i.dmr = load i64, ptr %i.dmq, align 1, !tbaa !18
  %i.dms = insertelement <2 x i64> poison, i64 %i.dmr, i64 0
  %i.dmt = bitcast <2 x i64> %i.dms to <8 x i16>
  %i.dmu = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dmt, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dmv = bitcast <8 x i16> %i.dmu to <4 x float>
  %i.dmw = getelementptr inbounds [2 x i8], ptr %i.dmf, i64 %i.dmj
  %i.dmx = load i64, ptr %i.dmw, align 1, !tbaa !18
  %i.dmy = insertelement <2 x i64> poison, i64 %i.dmx, i64 0
  %i.dmz = bitcast <2 x i64> %i.dmy to <8 x i16>
  %i.dna = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dmz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dnb = bitcast <8 x i16> %i.dna to <4 x float>
  %i.dnc = getelementptr inbounds [2 x i8], ptr %i.dmg, i64 %i.dmj
  %i.dnd = load i64, ptr %i.dnc, align 1, !tbaa !18
  %i.dne = insertelement <2 x i64> poison, i64 %i.dnd, i64 0
  %i.dnf = bitcast <2 x i64> %i.dne to <8 x i16>
  %i.dng = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dnf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dnh = bitcast <8 x i16> %i.dng to <4 x float>
  %i.dni = shufflevector <4 x float> %i.dmp, <4 x float> %i.dmv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dnj = shufflevector <4 x float> %i.dnb, <4 x float> %i.dnh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dnk = shufflevector <16 x float> %i.dni, <16 x float> %i.dnj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.dnl = load <16 x bfloat>, ptr %.514964874, align 32, !tbaa !18
  %i.dnm = fpext fast <16 x bfloat> %i.dnl to <16 x float>
  %i.dnn = getelementptr inbounds nuw i8, ptr %.514964874, i64 32
  %i.dno = load <16 x bfloat>, ptr %i.dnn, align 32, !tbaa !18
  %i.dnp = fpext fast <16 x bfloat> %i.dno to <16 x float>
  %i.dnq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dnk, <16 x float> nofpclass(nan inf) %i.dnm, <16 x float> nofpclass(nan inf) %.541004872) ; 2 uses
  %i.dnr = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dnk, <16 x float> nofpclass(nan inf) %i.dnp, <16 x float> nofpclass(nan inf) %.540914873) ; 2 uses
  %i.dns = getelementptr inbounds nuw i8, ptr %.514964874, i64 64
  %indvars.iv.next5633 = add nuw nsw i64 %indvars.iv5632, 1 ; 2 uses
  %exitcond5638.not = icmp eq i64 %indvars.iv.next5633, %wide.trip.count5637
  br i1 %exitcond5638.not, label %.loopexit4357.loopexit, label %.lr.ph4877, !llvm.loop !220

.loopexit4357.loopexit:                           ; preds = %.lr.ph4877
  %scevgep5634 = getelementptr i8, ptr %.014914891, i64 64
  %scevgep5635 = getelementptr i8, ptr %scevgep5634, i64 %i.dhz
  br label %.loopexit4356

.loopexit4357:                                    ; preds = %.loopexit4358
  br i1 %brmerge5212, label %.loopexit4356, label %.lr.ph4885

.lr.ph4885:                                       ; preds = %.loopexit4357
  %i.dnt = getelementptr i8, ptr %gep4902, i64 %.idx2003
  %i.dnu = getelementptr i8, ptr %gep4902, i64 %.idx2004
  %i.dnv = getelementptr i8, ptr %gep4902, i64 %.idx2005
  %i.dnw = getelementptr i8, ptr %gep4902, i64 %.idx2006
  %i.dnx = getelementptr i8, ptr %gep4902, i64 %.idx2007
  %i.dny = getelementptr i8, ptr %gep4902, i64 %.idx2008
  %i.dnz = getelementptr i8, ptr %gep4902, i64 %.idx2009
  %i.doa = getelementptr i8, ptr %gep4902, i64 %.idx2010
  %i.dob = getelementptr i8, ptr %gep4902, i64 %.idx2011
  %i.doc = getelementptr i8, ptr %gep4902, i64 %.idx2012
  %i.dod = getelementptr i8, ptr %gep4902, i64 %.idx2013
  %i.doe = getelementptr i8, ptr %gep4902, i64 %.idx2014
  %i.dof = getelementptr i8, ptr %gep4902, i64 %.idx2002
  %i.dog = getelementptr i8, ptr %gep4902, i64 %.idx2001
  %i.doh = getelementptr [2 x i8], ptr %gep4902, i64 %i.dhv
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph4885, %bb.ag
  %indvars.iv5639 = phi i64 [ 0, %.lr.ph4885 ], [ %indvars.iv.next5640, %bb.ag ] ; 2 uses
  %.714984883 = phi ptr [ %.014914891, %.lr.ph4885 ], [ %i.dqr, %bb.ag ] ; 3 uses
  %.740934882 = phi <16 x float> [ %.040864890, %.lr.ph4885 ], [ %i.dqq, %bb.ag ]
  %.741024881 = phi <16 x float> [ %.040954889, %.lr.ph4885 ], [ %i.dqp, %bb.ag ]
  %i.doi = getelementptr inbounds nuw [4 x i8], ptr %i.dhu, i64 %indvars.iv5639
  %i.doj = load i32, ptr %i.doi, align 4, !tbaa !30
  %i.dok = sext i32 %i.doj to i64                 ; 16 uses
  %i.dol = getelementptr [2 x i8], ptr %i.dnt, i64 %i.dok
  %i.dom = load i16, ptr %i.dol, align 2, !tbaa !24
  %i.don = getelementptr [2 x i8], ptr %i.dnu, i64 %i.dok
  %i.doo = load i16, ptr %i.don, align 2, !tbaa !24
  %i.dop = getelementptr [2 x i8], ptr %i.dnv, i64 %i.dok
  %i.doq = load i16, ptr %i.dop, align 2, !tbaa !24
  %i.dor = getelementptr [2 x i8], ptr %i.dnw, i64 %i.dok
  %i.dos = load i16, ptr %i.dor, align 2, !tbaa !24
  %i.dot = getelementptr [2 x i8], ptr %i.dnx, i64 %i.dok
  %i.dou = load i16, ptr %i.dot, align 2, !tbaa !24
  %i.dov = getelementptr [2 x i8], ptr %i.dny, i64 %i.dok
  %i.dow = load i16, ptr %i.dov, align 2, !tbaa !24
  %i.dox = getelementptr [2 x i8], ptr %i.dnz, i64 %i.dok
  %i.doy = load i16, ptr %i.dox, align 2, !tbaa !24
  %i.doz = getelementptr [2 x i8], ptr %i.doa, i64 %i.dok
  %i.dpa = load i16, ptr %i.doz, align 2, !tbaa !24
  %i.dpb = getelementptr [2 x i8], ptr %i.dob, i64 %i.dok
  %i.dpc = load i16, ptr %i.dpb, align 2, !tbaa !24
  %i.dpd = getelementptr [2 x i8], ptr %i.doc, i64 %i.dok
  %i.dpe = load i16, ptr %i.dpd, align 2, !tbaa !24
  %i.dpf = getelementptr [2 x i8], ptr %i.dod, i64 %i.dok
  %i.dpg = load i16, ptr %i.dpf, align 2, !tbaa !24
  %i.dph = getelementptr [2 x i8], ptr %i.doe, i64 %i.dok
  %i.dpi = load i16, ptr %i.dph, align 2, !tbaa !24
  %i.dpj = getelementptr [2 x i8], ptr %i.dof, i64 %i.dok
  %i.dpk = load i16, ptr %i.dpj, align 2, !tbaa !24
  %i.dpl = getelementptr [2 x i8], ptr %i.dog, i64 %i.dok
  %i.dpm = load i16, ptr %i.dpl, align 2, !tbaa !24
  %i.dpn = getelementptr [2 x i8], ptr %i.doh, i64 %i.dok
  %i.dpo = load i16, ptr %i.dpn, align 2, !tbaa !24
  %i.dpp = getelementptr inbounds [2 x i8], ptr %gep4902, i64 %i.dok
  %i.dpq = load i16, ptr %i.dpp, align 2, !tbaa !24
  %i.dpr = insertelement <16 x i16> poison, i16 %i.dpq, i64 0
  %i.dps = insertelement <16 x i16> %i.dpr, i16 %i.dpo, i64 1
  %i.dpt = insertelement <16 x i16> %i.dps, i16 %i.dpm, i64 2
  %i.dpu = insertelement <16 x i16> %i.dpt, i16 %i.dpk, i64 3
  %i.dpv = insertelement <16 x i16> %i.dpu, i16 %i.dpi, i64 4
  %i.dpw = insertelement <16 x i16> %i.dpv, i16 %i.dpg, i64 5
  %i.dpx = insertelement <16 x i16> %i.dpw, i16 %i.dpe, i64 6
  %i.dpy = insertelement <16 x i16> %i.dpx, i16 %i.dpc, i64 7
  %i.dpz = insertelement <16 x i16> %i.dpy, i16 %i.dpa, i64 8
  %i.dqa = insertelement <16 x i16> %i.dpz, i16 %i.doy, i64 9
  %i.dqb = insertelement <16 x i16> %i.dqa, i16 %i.dow, i64 10
  %i.dqc = insertelement <16 x i16> %i.dqb, i16 %i.dou, i64 11
  %i.dqd = insertelement <16 x i16> %i.dqc, i16 %i.dos, i64 12
  %i.dqe = insertelement <16 x i16> %i.dqd, i16 %i.doq, i64 13
  %i.dqf = insertelement <16 x i16> %i.dqe, i16 %i.doo, i64 14
  %i.dqg = insertelement <16 x i16> %i.dqf, i16 %i.dom, i64 15
  %i.dqh = zext <16 x i16> %i.dqg to <16 x i32>
  %i.dqi = shl nuw <16 x i32> %i.dqh, splat (i32 16)
  %i.dqj = bitcast <16 x i32> %i.dqi to <16 x float> ; 2 uses
  %i.dqk = load <16 x bfloat>, ptr %.714984883, align 32, !tbaa !18
  %i.dql = fpext fast <16 x bfloat> %i.dqk to <16 x float>
  %i.dqm = getelementptr inbounds nuw i8, ptr %.714984883, i64 32
  %i.dqn = load <16 x bfloat>, ptr %i.dqm, align 32, !tbaa !18
  %i.dqo = fpext fast <16 x bfloat> %i.dqn to <16 x float>
  %i.dqp = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dqj, <16 x float> nofpclass(nan inf) %i.dql, <16 x float> nofpclass(nan inf) %.741024881) ; 2 uses
  %i.dqq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dqj, <16 x float> nofpclass(nan inf) %i.dqo, <16 x float> nofpclass(nan inf) %.740934882) ; 2 uses
  %i.dqr = getelementptr inbounds nuw i8, ptr %.714984883, i64 64
  %indvars.iv.next5640 = add nuw nsw i64 %indvars.iv5639, 1 ; 2 uses
  %exitcond5645.not = icmp eq i64 %indvars.iv.next5640, %wide.trip.count5644
  br i1 %exitcond5645.not, label %.loopexit4356.loopexit, label %bb.ag, !llvm.loop !221

.loopexit4356.loopexit:                           ; preds = %bb.ag
  %scevgep5641 = getelementptr i8, ptr %.014914891, i64 64
  %scevgep5642 = getelementptr i8, ptr %scevgep5641, i64 %i.dhz
  br label %.loopexit4356

.loopexit4356:                                    ; preds = %bb.ae, %.loopexit4358.loopexit, %.loopexit4360.thread, %bb.af, %.loopexit4357.loopexit, %.loopexit4356.loopexit, %.loopexit4357
  %.84103 = phi nsz <16 x float> [ %.040954889, %.loopexit4357 ], [ %i.dqp, %.loopexit4356.loopexit ], [ %.040954889, %bb.af ], [ %i.dnq, %.loopexit4357.loopexit ], [ %.lcssa6517, %.loopexit4360.thread ], [ %.lcssa6519, %.loopexit4358.loopexit ], [ %.040954889, %bb.ae ] ; 2 uses
  %.84094 = phi nsz <16 x float> [ %.040864890, %.loopexit4357 ], [ %i.dqq, %.loopexit4356.loopexit ], [ %.040864890, %bb.af ], [ %i.dnr, %.loopexit4357.loopexit ], [ %.lcssa6516, %.loopexit4360.thread ], [ %.lcssa6518, %.loopexit4358.loopexit ], [ %.040864890, %bb.ae ] ; 2 uses
  %.81499 = phi ptr [ %.014914891, %.loopexit4357 ], [ %scevgep5642, %.loopexit4356.loopexit ], [ %.014914891, %bb.af ], [ %scevgep5635, %.loopexit4357.loopexit ], [ %scevgep5621, %.loopexit4360.thread ], [ %scevgep5628, %.loopexit4358.loopexit ], [ %.014914891, %bb.ae ] ; 2 uses
  %i.dqs = add nuw nsw i32 %.014864892, 16        ; 2 uses
  %i.dqt = or disjoint i32 %i.dqs, 15
  %i.dqu = icmp slt i32 %i.dqt, %i.axv
  br i1 %i.dqu, label %_ZN4ncnn3MatD2Ev.exit2342, label %._crit_edge4893, !llvm.loop !222

._crit_edge4893:                                  ; preds = %.loopexit4356, %_ZN4ncnn3MatD2Ev.exit2343
  %.04095.lcssa = phi <16 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit2343 ], [ %.84103, %.loopexit4356 ] ; 2 uses
  %.04086.lcssa = phi <16 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit2343 ], [ %.84094, %.loopexit4356 ] ; 2 uses
  %.01491.lcssa = phi ptr [ %i.dgo, %_ZN4ncnn3MatD2Ev.exit2343 ], [ %.81499, %.loopexit4356 ] ; 2 uses
  %.01486.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit2343 ], [ %i.ayp, %.loopexit4356 ] ; 3 uses
  %i.dqv = shufflevector <16 x float> %.04095.lcssa, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dqw = shufflevector <16 x float> %.04095.lcssa, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dqx = fadd fast <8 x float> %i.dqv, %i.dqw   ; 2 uses
  %i.dqy = shufflevector <8 x float> %i.dqx, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dqz = shufflevector <8 x float> %i.dqx, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %13 = fadd fast <4 x float> %i.dqy, %i.dqz      ; 2 uses
  %14 = shufflevector <4 x float> %13, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.dra = fadd fast <4 x float> %14, %13         ; 2 uses
  %i.drb = shufflevector <16 x float> %.04086.lcssa, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.drc = shufflevector <16 x float> %.04086.lcssa, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.drd = fadd fast <8 x float> %i.drb, %i.drc   ; 2 uses
  %i.dre = shufflevector <8 x float> %i.drd, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.drf = shufflevector <8 x float> %i.drd, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %15 = fadd fast <4 x float> %i.dre, %i.drf      ; 2 uses
  %16 = shufflevector <4 x float> %15, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.drg = fadd fast <4 x float> %16, %15         ; 2 uses
  %i.drh = or disjoint i32 %.01486.lcssa, 7
  %i.dri = icmp slt i32 %i.drh, %i.axv
  br i1 %i.dri, label %_ZN4ncnn3MatD2Ev.exit2341.lr.ph, label %._crit_edge4932

_ZN4ncnn3MatD2Ev.exit2341.lr.ph:                  ; preds = %._crit_edge4893
  %i.drj = load i32, ptr %i.k, align 4, !tbaa !31, !noalias !299
  %i.drk = load ptr, ptr %0, align 8, !tbaa !15, !noalias !299
  %i.drl = load i64, ptr %i.r, align 8, !tbaa !16, !noalias !299
  %i.drm = load i64, ptr %i.ayf, align 8, !tbaa !17, !noalias !299 ; 2 uses
  %factor.op.mul4937 = mul i64 %i.drl, %i.drm
  %i.drn = sext i32 %i.drj to i64
  %i.dro = mul i64 %i.drm, %i.drn
  %i.drp = mul i64 %i.dro, %i.dgr
  %invariant.gep4939 = getelementptr i8, ptr %i.drk, i64 %i.drp
  %i.drq = trunc nuw nsw i64 %indvars.iv5701 to i32
  %.reass5031 = mul i32 %factor.op.mul5028, %i.drq
  %i.drr = sext i32 %.reass5031 to i64
  %invariant.gep4940 = getelementptr [2 x i8], ptr %invariant.gep4939, i64 %i.drr
  %i.drs = load i32, ptr %i.f, align 4            ; 8 uses
  %i.drt = icmp slt i32 %i.drs, 1                 ; 2 uses
  %i.dru = load ptr, ptr %i.g, align 8            ; 5 uses
  %i.drv = load i64, ptr %i.d, align 8            ; 8 uses
  %i.drw = icmp sgt i32 %i.drs, 0
  %.idx1983 = mul i64 %i.drv, 14
  %.idx1984 = mul i64 %i.drv, 12
  %.idx1985 = mul i64 %i.drv, 10
  %.idx1986 = shl i64 %i.drv, 3
  %.idx1987 = mul i64 %i.drv, 6
  %.idx1988 = shl i64 %i.drv, 2
  %i.drx = add i32 %i.drs, -1
  %i.dry = zext i32 %i.drx to i64
  %i.drz = shl nuw nsw i64 %i.dry, 5              ; 3 uses
  %brmerge5215 = select i1 %i.ayh, i1 true, i1 %i.drt
  %wide.trip.count5651 = zext i32 %i.drs to i64   ; 2 uses
  %wide.trip.count5658 = zext nneg i32 %i.drs to i64
  %brmerge5218 = select i1 %i.ayj, i1 true, i1 %i.drt
  %wide.trip.count5665 = zext nneg i32 %i.drs to i64
  %xtraiter6664 = and i64 %wide.trip.count5651, 1
  %i.dsa = icmp eq i32 %i.drs, 1
  %unroll_iter6669 = and i64 %wide.trip.count5651, 2147483646
  %lcmp.mod6665.not = icmp eq i64 %xtraiter6664, 0
  %lcmp.mod6668 = trunc i32 %i.drs to i1
  br label %_ZN4ncnn3MatD2Ev.exit2341

_ZN4ncnn3MatD2Ev.exit2341:                        ; preds = %_ZN4ncnn3MatD2Ev.exit2341.lr.ph, %.loopexit4351
  %.114874931 = phi i32 [ %.01486.lcssa, %_ZN4ncnn3MatD2Ev.exit2341.lr.ph ], [ %i.dwn, %.loopexit4351 ] ; 2 uses
  %.915004930 = phi ptr [ %.01491.lcssa, %_ZN4ncnn3MatD2Ev.exit2341.lr.ph ], [ %.151506, %.loopexit4351 ] ; 9 uses
  %.040724929 = phi <8 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit2341.lr.ph ], [ %.64078, %.loopexit4351 ] ; 6 uses
  %.040794928 = phi <8 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit2341.lr.ph ], [ %.64085, %.loopexit4351 ] ; 6 uses
  %i.dsb = sdiv i32 %.114874931, %i.axt
  %i.dsc = sext i32 %i.dsb to i64
  %.reass4938 = mul i64 %factor.op.mul4937, %i.dsc
  %gep4941 = getelementptr i8, ptr %invariant.gep4940, i64 %.reass4938 ; 13 uses
  br i1 %brmerge5215, label %.loopexit4354, label %.lr.ph4907.preheader

.lr.ph4907.preheader:                             ; preds = %_ZN4ncnn3MatD2Ev.exit2341
  br i1 %i.dsa, label %.lr.ph4907.epil.preheader, label %.lr.ph4907

.lr.ph4907:                                       ; preds = %.lr.ph4907.preheader, %.lr.ph4907
  %indvars.iv5646 = phi i64 [ %indvars.iv.next5647.1, %.lr.ph4907 ], [ 0, %.lr.ph4907.preheader ] ; 3 uses
  %.1015014905 = phi ptr [ %i.dth, %.lr.ph4907 ], [ %.915004930, %.lr.ph4907.preheader ] ; 5 uses
  %.140734904 = phi <8 x float> [ %i.dtg, %.lr.ph4907 ], [ %.040724929, %.lr.ph4907.preheader ]
  %.140804903 = phi <8 x float> [ %i.dtf, %.lr.ph4907 ], [ %.040794928, %.lr.ph4907.preheader ]
  %niter6670 = phi i64 [ %niter6670.next.1, %.lr.ph4907 ], [ 0, %.lr.ph4907.preheader ]
  %i.dsd = getelementptr inbounds nuw [4 x i8], ptr %i.dru, i64 %indvars.iv5646
  %i.dse = load i32, ptr %i.dsd, align 4, !tbaa !30
  %i.dsf = sext i32 %i.dse to i64
  %i.dsg = getelementptr inbounds [2 x i8], ptr %gep4941, i64 %i.dsf
  %i.dsh = call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.dsg)
  %i.dsi = bitcast <16 x i8> %i.dsh to <8 x bfloat>
  %i.dsj = fpext fast <8 x bfloat> %i.dsi to <8 x float> ; 2 uses
  %i.dsk = load <8 x bfloat>, ptr %.1015014905, align 16, !tbaa !18
  %i.dsl = fpext fast <8 x bfloat> %i.dsk to <8 x float>
  %i.dsm = getelementptr inbounds nuw i8, ptr %.1015014905, i64 16
  %i.dsn = load <8 x bfloat>, ptr %i.dsm, align 16, !tbaa !18
  %i.dso = fpext fast <8 x bfloat> %i.dsn to <8 x float>
  %i.dsp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.dsj, <8 x float> nofpclass(nan inf) %i.dsl, <8 x float> nofpclass(nan inf) %.140804903)
  %i.dsq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.dsj, <8 x float> nofpclass(nan inf) %i.dso, <8 x float> nofpclass(nan inf) %.140734904)
  %i.dsr = getelementptr inbounds nuw i8, ptr %.1015014905, i64 32
  %i.dss = getelementptr inbounds nuw [4 x i8], ptr %i.dru, i64 %indvars.iv5646
  %i.dst = getelementptr inbounds nuw i8, ptr %i.dss, i64 4
  %i.dsu = load i32, ptr %i.dst, align 4, !tbaa !30
  %i.dsv = sext i32 %i.dsu to i64
  %i.dsw = getelementptr inbounds [2 x i8], ptr %gep4941, i64 %i.dsv
  %i.dsx = call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.dsw)
  %i.dsy = bitcast <16 x i8> %i.dsx to <8 x bfloat>
  %i.dsz = fpext fast <8 x bfloat> %i.dsy to <8 x float> ; 2 uses
  %i.dta = load <8 x bfloat>, ptr %i.dsr, align 16, !tbaa !18
  %i.dtb = fpext fast <8 x bfloat> %i.dta to <8 x float>
  %i.dtc = getelementptr inbounds nuw i8, ptr %.1015014905, i64 48
  %i.dtd = load <8 x bfloat>, ptr %i.dtc, align 16, !tbaa !18
  %i.dte = fpext fast <8 x bfloat> %i.dtd to <8 x float>
  %i.dtf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.dsz, <8 x float> nofpclass(nan inf) %i.dtb, <8 x float> nofpclass(nan inf) %i.dsp) ; 3 uses
  %i.dtg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.dsz, <8 x float> nofpclass(nan inf) %i.dte, <8 x float> nofpclass(nan inf) %i.dsq) ; 3 uses
  %i.dth = getelementptr inbounds nuw i8, ptr %.1015014905, i64 64 ; 2 uses
  %indvars.iv.next5647.1 = add nuw nsw i64 %indvars.iv5646, 2 ; 2 uses
  %niter6670.next.1 = add i64 %niter6670, 2       ; 2 uses
  %niter6670.ncmp.1 = icmp eq i64 %niter6670.next.1, %unroll_iter6669
  br i1 %niter6670.ncmp.1, label %.loopexit4354.thread.unr-lcssa, label %.lr.ph4907, !llvm.loop !225

.loopexit4354.thread.unr-lcssa:                   ; preds = %.lr.ph4907
  br i1 %lcmp.mod6665.not, label %.loopexit4354.thread, label %.lr.ph4907.epil.preheader

.lr.ph4907.epil.preheader:                        ; preds = %.loopexit4354.thread.unr-lcssa, %.lr.ph4907.preheader
  %indvars.iv5646.epil.init = phi i64 [ 0, %.lr.ph4907.preheader ], [ %indvars.iv.next5647.1, %.loopexit4354.thread.unr-lcssa ]
  %.1015014905.epil.init = phi ptr [ %.915004930, %.lr.ph4907.preheader ], [ %i.dth, %.loopexit4354.thread.unr-lcssa ] ; 2 uses
  %.140734904.epil.init = phi <8 x float> [ %.040724929, %.lr.ph4907.preheader ], [ %i.dtg, %.loopexit4354.thread.unr-lcssa ]
  %.140804903.epil.init = phi <8 x float> [ %.040794928, %.lr.ph4907.preheader ], [ %i.dtf, %.loopexit4354.thread.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod6668)
  %i.dti = getelementptr inbounds nuw [4 x i8], ptr %i.dru, i64 %indvars.iv5646.epil.init
  %i.dtj = load i32, ptr %i.dti, align 4, !tbaa !30
  %i.dtk = sext i32 %i.dtj to i64
  %i.dtl = getelementptr inbounds [2 x i8], ptr %gep4941, i64 %i.dtk
  %i.dtm = call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.dtl)
  %i.dtn = bitcast <16 x i8> %i.dtm to <8 x bfloat>
  %i.dto = fpext fast <8 x bfloat> %i.dtn to <8 x float> ; 2 uses
  %i.dtp = load <8 x bfloat>, ptr %.1015014905.epil.init, align 16, !tbaa !18
  %i.dtq = fpext fast <8 x bfloat> %i.dtp to <8 x float>
  %i.dtr = getelementptr inbounds nuw i8, ptr %.1015014905.epil.init, i64 16
  %i.dts = load <8 x bfloat>, ptr %i.dtr, align 16, !tbaa !18
  %i.dtt = fpext fast <8 x bfloat> %i.dts to <8 x float>
  %i.dtu = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.dto, <8 x float> nofpclass(nan inf) %i.dtq, <8 x float> nofpclass(nan inf) %.140804903.epil.init)
  %i.dtv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.dto, <8 x float> nofpclass(nan inf) %i.dtt, <8 x float> nofpclass(nan inf) %.140734904.epil.init)
  br label %.loopexit4354.thread

.loopexit4354.thread:                             ; preds = %.loopexit4354.thread.unr-lcssa, %.lr.ph4907.epil.preheader
  %.lcssa6525 = phi <8 x float> [ %i.dtf, %.loopexit4354.thread.unr-lcssa ], [ %i.dtu, %.lr.ph4907.epil.preheader ]
  %.lcssa6524 = phi <8 x float> [ %i.dtg, %.loopexit4354.thread.unr-lcssa ], [ %i.dtv, %.lr.ph4907.epil.preheader ]
  %scevgep5648 = getelementptr i8, ptr %.915004930, i64 32
  %scevgep5649 = getelementptr i8, ptr %scevgep5648, i64 %i.drz
  br label %.loopexit4351

.loopexit4354:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit2341
  br i1 %i.ayi, label %.loopexit4352, label %bb.ah

bb.ah:                                            ; preds = %.loopexit4354
  %i.dtw = getelementptr inbounds nuw [2 x i8], ptr %gep4941, i64 %i.drv
  br i1 %i.drw, label %.lr.ph4916, label %.loopexit4351

.lr.ph4916:                                       ; preds = %bb.ah, %.lr.ph4916
  %indvars.iv5653 = phi i64 [ %indvars.iv.next5654, %.lr.ph4916 ], [ 0, %bb.ah ] ; 2 uses
  %.1215034913 = phi ptr [ %i.dut, %.lr.ph4916 ], [ %.915004930, %bb.ah ] ; 3 uses
  %.340754912 = phi <8 x float> [ %i.dus, %.lr.ph4916 ], [ %.040724929, %bb.ah ]
  %.340824911 = phi <8 x float> [ %i.dur, %.lr.ph4916 ], [ %.040794928, %bb.ah ]
  %i.dtx = getelementptr inbounds nuw [4 x i8], ptr %i.dru, i64 %indvars.iv5653
  %i.dty = load i32, ptr %i.dtx, align 4, !tbaa !30
  %i.dtz = sext i32 %i.dty to i64                 ; 2 uses
  %i.dua = getelementptr inbounds [2 x i8], ptr %gep4941, i64 %i.dtz
  %i.dub = load i64, ptr %i.dua, align 1, !tbaa !18
  %i.duc = insertelement <2 x i64> poison, i64 %i.dub, i64 0
  %i.dud = bitcast <2 x i64> %i.duc to <8 x i16>
  %i.due = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dud, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.duf = getelementptr inbounds [2 x i8], ptr %i.dtw, i64 %i.dtz
  %i.dug = load i64, ptr %i.duf, align 1, !tbaa !18
  %i.duh = insertelement <2 x i64> poison, i64 %i.dug, i64 0
  %i.dui = bitcast <2 x i64> %i.duh to <8 x i16>
  %i.duj = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dui, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.duk = shufflevector <8 x i16> %i.due, <8 x i16> %i.duj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dul = bitcast <16 x i16> %i.duk to <8 x float> ; 2 uses
  %i.dum = load <8 x bfloat>, ptr %.1215034913, align 16, !tbaa !18
  %i.dun = fpext fast <8 x bfloat> %i.dum to <8 x float>
  %i.duo = getelementptr inbounds nuw i8, ptr %.1215034913, i64 16
  %i.dup = load <8 x bfloat>, ptr %i.duo, align 16, !tbaa !18
  %i.duq = fpext fast <8 x bfloat> %i.dup to <8 x float>
  %i.dur = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.dul, <8 x float> nofpclass(nan inf) %i.dun, <8 x float> nofpclass(nan inf) %.340824911) ; 2 uses
  %i.dus = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.dul, <8 x float> nofpclass(nan inf) %i.duq, <8 x float> nofpclass(nan inf) %.340754912) ; 2 uses
  %i.dut = getelementptr inbounds nuw i8, ptr %.1215034913, i64 32
  %indvars.iv.next5654 = add nuw nsw i64 %indvars.iv5653, 1 ; 2 uses
  %exitcond5659.not = icmp eq i64 %indvars.iv.next5654, %wide.trip.count5658
  br i1 %exitcond5659.not, label %.loopexit4352.loopexit, label %.lr.ph4916, !llvm.loop !226

.loopexit4352.loopexit:                           ; preds = %.lr.ph4916
  %scevgep5655 = getelementptr i8, ptr %.915004930, i64 32
  %scevgep5656 = getelementptr i8, ptr %scevgep5655, i64 %i.drz
  br label %.loopexit4351

.loopexit4352:                                    ; preds = %.loopexit4354
  br i1 %brmerge5218, label %.loopexit4351, label %.lr.ph4924

.lr.ph4924:                                       ; preds = %.loopexit4352
  %i.duu = getelementptr i8, ptr %gep4941, i64 %.idx1983
  %i.duv = getelementptr i8, ptr %gep4941, i64 %.idx1984
  %i.duw = getelementptr i8, ptr %gep4941, i64 %.idx1985
  %i.dux = getelementptr i8, ptr %gep4941, i64 %.idx1986
  %i.duy = getelementptr i8, ptr %gep4941, i64 %.idx1987
  %i.duz = getelementptr i8, ptr %gep4941, i64 %.idx1988
  %i.dva = getelementptr [2 x i8], ptr %gep4941, i64 %i.drv
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph4924, %bb.ai
  %indvars.iv5660 = phi i64 [ 0, %.lr.ph4924 ], [ %indvars.iv.next5661, %bb.ai ] ; 2 uses
  %.1415054922 = phi ptr [ %.915004930, %.lr.ph4924 ], [ %i.dwm, %bb.ai ] ; 3 uses
  %.540774921 = phi <8 x float> [ %.040724929, %.lr.ph4924 ], [ %i.dwl, %bb.ai ]
  %.540844920 = phi <8 x float> [ %.040794928, %.lr.ph4924 ], [ %i.dwk, %bb.ai ]
  %i.dvb = getelementptr inbounds nuw [4 x i8], ptr %i.dru, i64 %indvars.iv5660
  %i.dvc = load i32, ptr %i.dvb, align 4, !tbaa !30
  %i.dvd = sext i32 %i.dvc to i64                 ; 8 uses
  %i.dve = getelementptr [2 x i8], ptr %i.duu, i64 %i.dvd
  %i.dvf = load i16, ptr %i.dve, align 2, !tbaa !24
  %i.dvg = getelementptr [2 x i8], ptr %i.duv, i64 %i.dvd
  %i.dvh = load i16, ptr %i.dvg, align 2, !tbaa !24
  %i.dvi = getelementptr [2 x i8], ptr %i.duw, i64 %i.dvd
  %i.dvj = load i16, ptr %i.dvi, align 2, !tbaa !24
  %i.dvk = getelementptr [2 x i8], ptr %i.dux, i64 %i.dvd
  %i.dvl = load i16, ptr %i.dvk, align 2, !tbaa !24
  %i.dvm = getelementptr [2 x i8], ptr %i.duy, i64 %i.dvd
  %i.dvn = load i16, ptr %i.dvm, align 2, !tbaa !24
  %i.dvo = getelementptr [2 x i8], ptr %i.duz, i64 %i.dvd
  %i.dvp = load i16, ptr %i.dvo, align 2, !tbaa !24
  %i.dvq = getelementptr [2 x i8], ptr %i.dva, i64 %i.dvd
  %i.dvr = load i16, ptr %i.dvq, align 2, !tbaa !24
  %i.dvs = getelementptr inbounds [2 x i8], ptr %gep4941, i64 %i.dvd
  %i.dvt = load i16, ptr %i.dvs, align 2, !tbaa !24
  %i.dvu = insertelement <8 x i16> poison, i16 %i.dvt, i64 0
  %i.dvv = insertelement <8 x i16> %i.dvu, i16 %i.dvr, i64 1
  %i.dvw = insertelement <8 x i16> %i.dvv, i16 %i.dvp, i64 2
  %i.dvx = insertelement <8 x i16> %i.dvw, i16 %i.dvn, i64 3
  %i.dvy = insertelement <8 x i16> %i.dvx, i16 %i.dvl, i64 4
  %i.dvz = insertelement <8 x i16> %i.dvy, i16 %i.dvj, i64 5
  %i.dwa = insertelement <8 x i16> %i.dvz, i16 %i.dvh, i64 6
  %i.dwb = insertelement <8 x i16> %i.dwa, i16 %i.dvf, i64 7
  %i.dwc = zext <8 x i16> %i.dwb to <8 x i32>
  %i.dwd = shl nuw <8 x i32> %i.dwc, splat (i32 16)
  %i.dwe = bitcast <8 x i32> %i.dwd to <8 x float> ; 2 uses
  %i.dwf = load <8 x bfloat>, ptr %.1415054922, align 16, !tbaa !18
  %i.dwg = fpext fast <8 x bfloat> %i.dwf to <8 x float>
  %i.dwh = getelementptr inbounds nuw i8, ptr %.1415054922, i64 16
  %i.dwi = load <8 x bfloat>, ptr %i.dwh, align 16, !tbaa !18
  %i.dwj = fpext fast <8 x bfloat> %i.dwi to <8 x float>
  %i.dwk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.dwe, <8 x float> nofpclass(nan inf) %i.dwg, <8 x float> nofpclass(nan inf) %.540844920) ; 2 uses
  %i.dwl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.dwe, <8 x float> nofpclass(nan inf) %i.dwj, <8 x float> nofpclass(nan inf) %.540774921) ; 2 uses
  %i.dwm = getelementptr inbounds nuw i8, ptr %.1415054922, i64 32
  %indvars.iv.next5661 = add nuw nsw i64 %indvars.iv5660, 1 ; 2 uses
  %exitcond5666.not = icmp eq i64 %indvars.iv.next5661, %wide.trip.count5665
  br i1 %exitcond5666.not, label %.loopexit4351.loopexit, label %bb.ai, !llvm.loop !227

.loopexit4351.loopexit:                           ; preds = %bb.ai
  %scevgep5662 = getelementptr i8, ptr %.915004930, i64 32
  %scevgep5663 = getelementptr i8, ptr %scevgep5662, i64 %i.drz
  br label %.loopexit4351

.loopexit4351:                                    ; preds = %bb.ah, %.loopexit4352.loopexit, %.loopexit4354.thread, %.loopexit4351.loopexit, %.loopexit4352
  %.64085 = phi nsz <8 x float> [ %.040794928, %.loopexit4352 ], [ %i.dwk, %.loopexit4351.loopexit ], [ %.lcssa6525, %.loopexit4354.thread ], [ %i.dur, %.loopexit4352.loopexit ], [ %.040794928, %bb.ah ] ; 2 uses
  %.64078 = phi nsz <8 x float> [ %.040724929, %.loopexit4352 ], [ %i.dwl, %.loopexit4351.loopexit ], [ %.lcssa6524, %.loopexit4354.thread ], [ %i.dus, %.loopexit4352.loopexit ], [ %.040724929, %bb.ah ] ; 2 uses
  %.151506 = phi ptr [ %.915004930, %.loopexit4352 ], [ %scevgep5663, %.loopexit4351.loopexit ], [ %scevgep5649, %.loopexit4354.thread ], [ %scevgep5656, %.loopexit4352.loopexit ], [ %.915004930, %bb.ah ] ; 2 uses
  %i.dwn = add nuw nsw i32 %.114874931, 8         ; 3 uses
  %i.dwo = or disjoint i32 %i.dwn, 7
  %i.dwp = icmp slt i32 %i.dwo, %i.axv
  br i1 %i.dwp, label %_ZN4ncnn3MatD2Ev.exit2341, label %._crit_edge4932, !llvm.loop !228

._crit_edge4932:                                  ; preds = %.loopexit4351, %._crit_edge4893
  %.04079.lcssa = phi <8 x float> [ zeroinitializer, %._crit_edge4893 ], [ %.64085, %.loopexit4351 ] ; 2 uses
  %.04072.lcssa = phi <8 x float> [ zeroinitializer, %._crit_edge4893 ], [ %.64078, %.loopexit4351 ] ; 2 uses
  %.91500.lcssa = phi ptr [ %.01491.lcssa, %._crit_edge4893 ], [ %.151506, %.loopexit4351 ] ; 2 uses
  %.11487.lcssa = phi i32 [ %.01486.lcssa, %._crit_edge4893 ], [ %i.dwn, %.loopexit4351 ] ; 3 uses
  %i.dwq = shufflevector <8 x float> %.04079.lcssa, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.dwr = shufflevector <8 x float> %.04079.lcssa, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %17 = fadd fast <4 x float> %i.dwq, %i.dwr      ; 2 uses
  %18 = shufflevector <4 x float> %17, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.dws = fadd fast <4 x float> %18, %17         ; 2 uses
  %i.dwt = shufflevector <8 x float> %.04072.lcssa, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.dwu = shufflevector <8 x float> %.04072.lcssa, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %19 = fadd fast <4 x float> %i.dwt, %i.dwu      ; 2 uses
  %20 = shufflevector <4 x float> %19, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.dwv = fadd fast <4 x float> %20, %19         ; 2 uses
  %i.dww = or disjoint i32 %.11487.lcssa, 3
  %i.dwx = icmp slt i32 %i.dww, %i.axv
  br i1 %i.dwx, label %_ZN4ncnn3MatD2Ev.exit2340.lr.ph, label %._crit_edge4962

_ZN4ncnn3MatD2Ev.exit2340.lr.ph:                  ; preds = %._crit_edge4932
  %i.dwy = load i32, ptr %i.k, align 4, !tbaa !31, !noalias !300
  %i.dwz = load ptr, ptr %0, align 8, !tbaa !15, !noalias !300
  %i.dxa = load i64, ptr %i.r, align 8, !tbaa !16, !noalias !300
  %i.dxb = load i64, ptr %i.ayf, align 8, !tbaa !17, !noalias !300 ; 2 uses
  %factor.op.mul4967 = mul i64 %i.dxa, %i.dxb
  %i.dxc = sext i32 %i.dwy to i64
  %i.dxd = mul i64 %i.dxb, %i.dxc
  %i.dxe = mul i64 %i.dxd, %i.dgr
  %invariant.gep4969 = getelementptr i8, ptr %i.dwz, i64 %i.dxe
  %i.dxf = trunc nuw nsw i64 %indvars.iv5701 to i32
  %.reass5033 = mul i32 %factor.op.mul5028, %i.dxf
  %i.dxg = sext i32 %.reass5033 to i64
  %invariant.gep4970 = getelementptr [2 x i8], ptr %invariant.gep4969, i64 %i.dxg
  %i.dxh = load i32, ptr %i.f, align 4            ; 6 uses
  %i.dxi = icmp slt i32 %i.dxh, 1                 ; 2 uses
  %i.dxj = load ptr, ptr %i.g, align 8            ; 4 uses
  %i.dxk = load i64, ptr %i.d, align 8            ; 3 uses
  %.idx1974 = mul i64 %i.dxk, 6
  %.idx1975 = shl i64 %i.dxk, 2
  %i.dxl = add i32 %i.dxh, -1
  %i.dxm = zext i32 %i.dxl to i64
  %i.dxn = shl nuw nsw i64 %i.dxm, 4              ; 2 uses
  %brmerge5221 = select i1 %i.ayi, i1 true, i1 %i.dxi
  %wide.trip.count5672 = zext i32 %i.dxh to i64   ; 2 uses
  %brmerge5224 = select i1 %i.ayj, i1 true, i1 %i.dxi
  %wide.trip.count5679 = zext nneg i32 %i.dxh to i64
  %xtraiter6671 = and i64 %wide.trip.count5672, 1
  %i.dxo = icmp eq i32 %i.dxh, 1
  %unroll_iter6676 = and i64 %wide.trip.count5672, 2147483646
  %lcmp.mod6672.not = icmp eq i64 %xtraiter6671, 0
  %lcmp.mod6675 = trunc i32 %i.dxh to i1
  br label %_ZN4ncnn3MatD2Ev.exit2340

_ZN4ncnn3MatD2Ev.exit2340:                        ; preds = %_ZN4ncnn3MatD2Ev.exit2340.lr.ph, %.loopexit4347
  %.214884961 = phi i32 [ %.11487.lcssa, %_ZN4ncnn3MatD2Ev.exit2340.lr.ph ], [ %i.ebu, %.loopexit4347 ] ; 2 uses
  %.1615074960 = phi ptr [ %.91500.lcssa, %_ZN4ncnn3MatD2Ev.exit2340.lr.ph ], [ %.201511, %.loopexit4347 ] ; 6 uses
  %.040624959 = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit2340.lr.ph ], [ %.44066, %.loopexit4347 ] ; 4 uses
  %.040674958 = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit2340.lr.ph ], [ %.44071, %.loopexit4347 ] ; 4 uses
  %i.dxp = sdiv i32 %.214884961, %i.axt
  %i.dxq = sext i32 %i.dxp to i64
  %.reass4968 = mul i64 %factor.op.mul4967, %i.dxq
  %gep4971 = getelementptr i8, ptr %invariant.gep4970, i64 %.reass4968 ; 7 uses
  br i1 %brmerge5221, label %.loopexit4349, label %.lr.ph4946.preheader

.lr.ph4946.preheader:                             ; preds = %_ZN4ncnn3MatD2Ev.exit2340
  br i1 %i.dxo, label %.lr.ph4946.epil.preheader, label %.lr.ph4946

.lr.ph4946:                                       ; preds = %.lr.ph4946.preheader, %.lr.ph4946
  %indvars.iv5667 = phi i64 [ %indvars.iv.next5668.1, %.lr.ph4946 ], [ 0, %.lr.ph4946.preheader ] ; 3 uses
  %.1715084944 = phi ptr [ %i.dzl, %.lr.ph4946 ], [ %.1615074960, %.lr.ph4946.preheader ] ; 5 uses
  %.140634943 = phi <4 x float> [ %i.dzk, %.lr.ph4946 ], [ %.040624959, %.lr.ph4946.preheader ]
  %.140684942 = phi <4 x float> [ %i.dzj, %.lr.ph4946 ], [ %.040674958, %.lr.ph4946.preheader ]
  %niter6677 = phi i64 [ %niter6677.next.1, %.lr.ph4946 ], [ 0, %.lr.ph4946.preheader ]
  %i.dxr = getelementptr inbounds nuw [4 x i8], ptr %i.dxj, i64 %indvars.iv5667
  %i.dxs = load i32, ptr %i.dxr, align 4, !tbaa !30
  %i.dxt = sext i32 %i.dxs to i64
  %i.dxu = getelementptr inbounds [2 x i8], ptr %gep4971, i64 %i.dxt
  %i.dxv = load i64, ptr %i.dxu, align 1, !tbaa !18
  %i.dxw = insertelement <2 x i64> poison, i64 %i.dxv, i64 0
  %i.dxx = bitcast <2 x i64> %i.dxw to <8 x i16>
  %i.dxy = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dxx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dxz = bitcast <8 x i16> %i.dxy to <4 x float> ; 2 uses
  %i.dya = load i64, ptr %.1715084944, align 1, !tbaa !18
  %i.dyb = insertelement <2 x i64> poison, i64 %i.dya, i64 0
  %i.dyc = bitcast <2 x i64> %i.dyb to <8 x i16>
  %i.dyd = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dyc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dye = bitcast <8 x i16> %i.dyd to <4 x float>
  %i.dyf = getelementptr inbounds nuw i8, ptr %.1715084944, i64 8
  %i.dyg = load i64, ptr %i.dyf, align 1, !tbaa !18
  %i.dyh = insertelement <2 x i64> poison, i64 %i.dyg, i64 0
  %i.dyi = bitcast <2 x i64> %i.dyh to <8 x i16>
  %i.dyj = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dyi, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dyk = bitcast <8 x i16> %i.dyj to <4 x float>
  %i.dyl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dxz, <4 x float> nofpclass(nan inf) %i.dye, <4 x float> nofpclass(nan inf) %.140684942)
  %i.dym = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dxz, <4 x float> nofpclass(nan inf) %i.dyk, <4 x float> nofpclass(nan inf) %.140634943)
  %i.dyn = getelementptr inbounds nuw i8, ptr %.1715084944, i64 16
  %i.dyo = getelementptr inbounds nuw [4 x i8], ptr %i.dxj, i64 %indvars.iv5667
  %i.dyp = getelementptr inbounds nuw i8, ptr %i.dyo, i64 4
  %i.dyq = load i32, ptr %i.dyp, align 4, !tbaa !30
  %i.dyr = sext i32 %i.dyq to i64
  %i.dys = getelementptr inbounds [2 x i8], ptr %gep4971, i64 %i.dyr
  %i.dyt = load i64, ptr %i.dys, align 1, !tbaa !18
  %i.dyu = insertelement <2 x i64> poison, i64 %i.dyt, i64 0
  %i.dyv = bitcast <2 x i64> %i.dyu to <8 x i16>
  %i.dyw = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dyv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dyx = bitcast <8 x i16> %i.dyw to <4 x float> ; 2 uses
  %i.dyy = load i64, ptr %i.dyn, align 1, !tbaa !18
  %i.dyz = insertelement <2 x i64> poison, i64 %i.dyy, i64 0
  %i.dza = bitcast <2 x i64> %i.dyz to <8 x i16>
  %i.dzb = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dza, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dzc = bitcast <8 x i16> %i.dzb to <4 x float>
  %i.dzd = getelementptr inbounds nuw i8, ptr %.1715084944, i64 24
  %i.dze = load i64, ptr %i.dzd, align 1, !tbaa !18
  %i.dzf = insertelement <2 x i64> poison, i64 %i.dze, i64 0
  %i.dzg = bitcast <2 x i64> %i.dzf to <8 x i16>
  %i.dzh = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dzg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dzi = bitcast <8 x i16> %i.dzh to <4 x float>
  %i.dzj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dyx, <4 x float> nofpclass(nan inf) %i.dzc, <4 x float> nofpclass(nan inf) %i.dyl) ; 3 uses
  %i.dzk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dyx, <4 x float> nofpclass(nan inf) %i.dzi, <4 x float> nofpclass(nan inf) %i.dym) ; 3 uses
  %i.dzl = getelementptr inbounds nuw i8, ptr %.1715084944, i64 32 ; 2 uses
  %indvars.iv.next5668.1 = add nuw nsw i64 %indvars.iv5667, 2 ; 2 uses
  %niter6677.next.1 = add i64 %niter6677, 2       ; 2 uses
  %niter6677.ncmp.1 = icmp eq i64 %niter6677.next.1, %unroll_iter6676
  br i1 %niter6677.ncmp.1, label %.loopexit4349.thread.unr-lcssa, label %.lr.ph4946, !llvm.loop !231

.loopexit4349.thread.unr-lcssa:                   ; preds = %.lr.ph4946
  br i1 %lcmp.mod6672.not, label %.loopexit4349.thread, label %.lr.ph4946.epil.preheader

.lr.ph4946.epil.preheader:                        ; preds = %.loopexit4349.thread.unr-lcssa, %.lr.ph4946.preheader
  %indvars.iv5667.epil.init = phi i64 [ 0, %.lr.ph4946.preheader ], [ %indvars.iv.next5668.1, %.loopexit4349.thread.unr-lcssa ]
  %.1715084944.epil.init = phi ptr [ %.1615074960, %.lr.ph4946.preheader ], [ %i.dzl, %.loopexit4349.thread.unr-lcssa ] ; 2 uses
  %.140634943.epil.init = phi <4 x float> [ %.040624959, %.lr.ph4946.preheader ], [ %i.dzk, %.loopexit4349.thread.unr-lcssa ]
  %.140684942.epil.init = phi <4 x float> [ %.040674958, %.lr.ph4946.preheader ], [ %i.dzj, %.loopexit4349.thread.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod6675)
  %i.dzm = getelementptr inbounds nuw [4 x i8], ptr %i.dxj, i64 %indvars.iv5667.epil.init
  %i.dzn = load i32, ptr %i.dzm, align 4, !tbaa !30
  %i.dzo = sext i32 %i.dzn to i64
  %i.dzp = getelementptr inbounds [2 x i8], ptr %gep4971, i64 %i.dzo
  %i.dzq = load i64, ptr %i.dzp, align 1, !tbaa !18
  %i.dzr = insertelement <2 x i64> poison, i64 %i.dzq, i64 0
  %i.dzs = bitcast <2 x i64> %i.dzr to <8 x i16>
  %i.dzt = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dzs, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dzu = bitcast <8 x i16> %i.dzt to <4 x float> ; 2 uses
  %i.dzv = load i64, ptr %.1715084944.epil.init, align 1, !tbaa !18
  %i.dzw = insertelement <2 x i64> poison, i64 %i.dzv, i64 0
  %i.dzx = bitcast <2 x i64> %i.dzw to <8 x i16>
  %i.dzy = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dzx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dzz = bitcast <8 x i16> %i.dzy to <4 x float>
  %i.eaa = getelementptr inbounds nuw i8, ptr %.1715084944.epil.init, i64 8
  %i.eab = load i64, ptr %i.eaa, align 1, !tbaa !18
  %i.eac = insertelement <2 x i64> poison, i64 %i.eab, i64 0
  %i.ead = bitcast <2 x i64> %i.eac to <8 x i16>
  %i.eae = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ead, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.eaf = bitcast <8 x i16> %i.eae to <4 x float>
  %i.eag = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dzu, <4 x float> nofpclass(nan inf) %i.dzz, <4 x float> nofpclass(nan inf) %.140684942.epil.init)
  %i.eah = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dzu, <4 x float> nofpclass(nan inf) %i.eaf, <4 x float> nofpclass(nan inf) %.140634943.epil.init)
  br label %.loopexit4349.thread

.loopexit4349.thread:                             ; preds = %.loopexit4349.thread.unr-lcssa, %.lr.ph4946.epil.preheader
  %.lcssa6532 = phi <4 x float> [ %i.dzj, %.loopexit4349.thread.unr-lcssa ], [ %i.eag, %.lr.ph4946.epil.preheader ]
  %.lcssa6531 = phi <4 x float> [ %i.dzk, %.loopexit4349.thread.unr-lcssa ], [ %i.eah, %.lr.ph4946.epil.preheader ]
  %scevgep5669 = getelementptr i8, ptr %.1615074960, i64 16
  %scevgep5670 = getelementptr i8, ptr %scevgep5669, i64 %i.dxn
  br label %.loopexit4347

.loopexit4349:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit2340
  br i1 %brmerge5224, label %.loopexit4347, label %.lr.ph4954

.lr.ph4954:                                       ; preds = %.loopexit4349
  %i.eai = getelementptr i8, ptr %gep4971, i64 %.idx1974
  %i.eaj = getelementptr i8, ptr %gep4971, i64 %.idx1975
  %i.eak = getelementptr [2 x i8], ptr %gep4971, i64 %i.dxk
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph4954, %bb.aj
  %indvars.iv5674 = phi i64 [ 0, %.lr.ph4954 ], [ %indvars.iv.next5675, %bb.aj ] ; 2 uses
  %.1915104952 = phi ptr [ %.1615074960, %.lr.ph4954 ], [ %i.ebt, %bb.aj ] ; 3 uses
  %.340654951 = phi <4 x float> [ %.040624959, %.lr.ph4954 ], [ %i.ebs, %bb.aj ]
  %.340704950 = phi <4 x float> [ %.040674958, %.lr.ph4954 ], [ %i.ebr, %bb.aj ]
  %i.eal = getelementptr inbounds nuw [4 x i8], ptr %i.dxj, i64 %indvars.iv5674
  %i.eam = load i32, ptr %i.eal, align 4, !tbaa !30
  %i.ean = sext i32 %i.eam to i64                 ; 4 uses
  %i.eao = getelementptr [2 x i8], ptr %i.eai, i64 %i.ean
  %i.eap = load i16, ptr %i.eao, align 2, !tbaa !24
  %i.eaq = getelementptr [2 x i8], ptr %i.eaj, i64 %i.ean
  %i.ear = load i16, ptr %i.eaq, align 2, !tbaa !24
  %i.eas = getelementptr [2 x i8], ptr %i.eak, i64 %i.ean
  %i.eat = load i16, ptr %i.eas, align 2, !tbaa !24
  %i.eau = getelementptr inbounds [2 x i8], ptr %gep4971, i64 %i.ean
  %i.eav = load i16, ptr %i.eau, align 2, !tbaa !24
  %i.eaw = zext i16 %i.eap to i32
  %i.eax = zext i16 %i.ear to i32
  %i.eay = zext i16 %i.eat to i32
  %i.eaz = zext i16 %i.eav to i32
  %i.eba = insertelement <4 x i32> poison, i32 %i.eaz, i64 0
  %i.ebb = insertelement <4 x i32> %i.eba, i32 %i.eay, i64 1
  %i.ebc = insertelement <4 x i32> %i.ebb, i32 %i.eax, i64 2
  %i.ebd = insertelement <4 x i32> %i.ebc, i32 %i.eaw, i64 3
  %i.ebe = shl nuw <4 x i32> %i.ebd, splat (i32 16)
  %i.ebf = bitcast <4 x i32> %i.ebe to <4 x float> ; 2 uses
  %i.ebg = load i64, ptr %.1915104952, align 1, !tbaa !18
  %i.ebh = insertelement <2 x i64> poison, i64 %i.ebg, i64 0
  %i.ebi = bitcast <2 x i64> %i.ebh to <8 x i16>
  %i.ebj = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ebi, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ebk = bitcast <8 x i16> %i.ebj to <4 x float>
  %i.ebl = getelementptr inbounds nuw i8, ptr %.1915104952, i64 8
  %i.ebm = load i64, ptr %i.ebl, align 1, !tbaa !18
  %i.ebn = insertelement <2 x i64> poison, i64 %i.ebm, i64 0
  %i.ebo = bitcast <2 x i64> %i.ebn to <8 x i16>
  %i.ebp = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ebo, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ebq = bitcast <8 x i16> %i.ebp to <4 x float>
  %i.ebr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ebf, <4 x float> nofpclass(nan inf) %i.ebk, <4 x float> nofpclass(nan inf) %.340704950) ; 2 uses
  %i.ebs = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ebf, <4 x float> nofpclass(nan inf) %i.ebq, <4 x float> nofpclass(nan inf) %.340654951) ; 2 uses
  %i.ebt = getelementptr inbounds nuw i8, ptr %.1915104952, i64 16
  %indvars.iv.next5675 = add nuw nsw i64 %indvars.iv5674, 1 ; 2 uses
  %exitcond5680.not = icmp eq i64 %indvars.iv.next5675, %wide.trip.count5679
  br i1 %exitcond5680.not, label %.loopexit4347.loopexit, label %bb.aj, !llvm.loop !232

.loopexit4347.loopexit:                           ; preds = %bb.aj
  %scevgep5676 = getelementptr i8, ptr %.1615074960, i64 16
  %scevgep5677 = getelementptr i8, ptr %scevgep5676, i64 %i.dxn
  br label %.loopexit4347

.loopexit4347:                                    ; preds = %.loopexit4349.thread, %.loopexit4347.loopexit, %.loopexit4349
  %.44071 = phi nsz <4 x float> [ %.040674958, %.loopexit4349 ], [ %i.ebr, %.loopexit4347.loopexit ], [ %.lcssa6532, %.loopexit4349.thread ] ; 2 uses
  %.44066 = phi nsz <4 x float> [ %.040624959, %.loopexit4349 ], [ %i.ebs, %.loopexit4347.loopexit ], [ %.lcssa6531, %.loopexit4349.thread ] ; 2 uses
  %.201511 = phi ptr [ %.1615074960, %.loopexit4349 ], [ %scevgep5677, %.loopexit4347.loopexit ], [ %scevgep5670, %.loopexit4349.thread ] ; 2 uses
  %i.ebu = add nuw nsw i32 %.214884961, 4         ; 3 uses
  %i.ebv = or disjoint i32 %i.ebu, 3
  %i.ebw = icmp slt i32 %i.ebv, %i.axv
  br i1 %i.ebw, label %_ZN4ncnn3MatD2Ev.exit2340, label %._crit_edge4962, !llvm.loop !233

._crit_edge4962:                                  ; preds = %.loopexit4347, %._crit_edge4932
  %.04067.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge4932 ], [ %.44071, %.loopexit4347 ] ; 2 uses
  %.04062.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge4932 ], [ %.44066, %.loopexit4347 ] ; 2 uses
  %.161507.lcssa = phi ptr [ %.91500.lcssa, %._crit_edge4932 ], [ %.201511, %.loopexit4347 ] ; 3 uses
  %.21488.lcssa = phi i32 [ %.11487.lcssa, %._crit_edge4932 ], [ %i.ebu, %.loopexit4347 ] ; 5 uses
  %21 = shufflevector <4 x float> %.04067.lcssa, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %22 = fadd fast <4 x float> %21, %.04067.lcssa  ; 2 uses
  %i.ebx = shufflevector <4 x float> %i.dra, <4 x float> %i.drg, <2 x i32> <i32 1, i32 5>
  %i.eby = fadd fast <2 x float> %i.ebx, %i.dhi
  %23 = shufflevector <4 x float> %.04062.lcssa, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %24 = fadd fast <4 x float> %23, %.04062.lcssa  ; 2 uses
  %i.ebz = shufflevector <4 x float> %i.dra, <4 x float> %i.drg, <2 x i32> <i32 0, i32 4>
  %i.eca = fadd fast <2 x float> %i.eby, %i.ebz
  %i.ecb = shufflevector <4 x float> %i.dws, <4 x float> %i.dwv, <2 x i32> <i32 1, i32 5>
  %i.ecc = fadd fast <2 x float> %i.eca, %i.ecb
  %i.ecd = shufflevector <4 x float> %i.dws, <4 x float> %i.dwv, <2 x i32> <i32 0, i32 4>
  %i.ece = fadd fast <2 x float> %i.ecc, %i.ecd
  %i.ecf = shufflevector <4 x float> %22, <4 x float> %24, <2 x i32> <i32 1, i32 5>
  %i.ecg = fadd fast <2 x float> %i.ece, %i.ecf
  %i.ech = shufflevector <4 x float> %22, <4 x float> %24, <2 x i32> <i32 0, i32 4>
  %i.eci = fadd fast <2 x float> %i.ecg, %i.ech   ; 3 uses
  %i.ecj = or disjoint i32 %.21488.lcssa, 1
  %i.eck = icmp slt i32 %i.ecj, %i.axv
  br i1 %i.eck, label %_ZN4ncnn3MatD2Ev.exit2339.lr.ph, label %.preheader4361

_ZN4ncnn3MatD2Ev.exit2339.lr.ph:                  ; preds = %._crit_edge4962
  %i.ecl = load i32, ptr %i.k, align 4, !tbaa !31, !noalias !301
  %i.ecm = load ptr, ptr %0, align 8, !tbaa !15, !noalias !301
  %i.ecn = load i64, ptr %i.r, align 8, !tbaa !16, !noalias !301
  %i.eco = load i64, ptr %i.ayf, align 8, !tbaa !17, !noalias !301 ; 2 uses
  %factor.op.mul4989 = mul i64 %i.ecn, %i.eco
  %i.ecp = sext i32 %i.ecl to i64
  %i.ecq = mul i64 %i.eco, %i.ecp
  %i.ecr = mul i64 %i.ecq, %i.dgr
  %invariant.gep4991 = getelementptr i8, ptr %i.ecm, i64 %i.ecr
  %i.ecs = mul nsw i64 %indvars.iv5701, %i.dgz
  %invariant.gep4992 = getelementptr [2 x i8], ptr %invariant.gep4991, i64 %i.ecs
  %i.ect = load ptr, ptr %i.g, align 8            ; 3 uses
  %i.ecu = load i64, ptr %i.d, align 8
  br i1 %i.dgu, label %_ZN4ncnn3MatD2Ev.exit2339.us.preheader, label %_ZN4ncnn3MatD2Ev.exit2339.preheader

_ZN4ncnn3MatD2Ev.exit2339.preheader:              ; preds = %_ZN4ncnn3MatD2Ev.exit2339.lr.ph
  %i.ecv = add i32 %.21488.lcssa, 2
  %i.ecw = sub i32 %i.ayq, %.21488.lcssa
  %i.ecx = and i32 %i.ecw, -2
  %i.ecy = add i32 %i.ecv, %i.ecx
  br label %.preheader4361

_ZN4ncnn3MatD2Ev.exit2339.us.preheader:           ; preds = %_ZN4ncnn3MatD2Ev.exit2339.lr.ph
  %i.ecz = zext i32 %.21488.lcssa to i64
  br label %iter.check6352

iter.check6352:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit2339.us.preheader, %._crit_edge4977.us
  %indvars.iv5688 = phi i64 [ %i.ecz, %_ZN4ncnn3MatD2Ev.exit2339.us.preheader ], [ %indvars.iv.next5689, %._crit_edge4977.us ] ; 2 uses
  %.2115124983.us = phi ptr [ %.161507.lcssa, %_ZN4ncnn3MatD2Ev.exit2339.us.preheader ], [ %scevgep5684, %._crit_edge4977.us ] ; 7 uses
  %i.eda = phi <2 x float> [ %i.eci, %_ZN4ncnn3MatD2Ev.exit2339.us.preheader ], [ %i.ete, %._crit_edge4977.us ] ; 4 uses
  %.reass4990.us = mul i64 %factor.op.mul4989, %indvars.iv5688
  %gep4993.us = getelementptr i8, ptr %invariant.gep4992, i64 %.reass4990.us ; 42 uses
  %i.edb = getelementptr [2 x i8], ptr %gep4993.us, i64 %i.ecu ; 41 uses
  br i1 %min.iters.check6319, label %vec.epilog.scalar.ph6353.preheader, label %vector.main.loop.iter.check6320

vector.main.loop.iter.check6320:                  ; preds = %iter.check6352
  %i.edc = extractelement <2 x float> %i.eda, i64 0
  %i.edd = extractelement <2 x float> %i.eda, i64 1
  br i1 %min.iters.check6321, label %vec.epilog.ph6356, label %vector.ph6322

vector.ph6322:                                    ; preds = %vector.main.loop.iter.check6320
  %i.ede = getelementptr i8, ptr %.2115124983.us, i64 %i.dhb
  %i.edf = shufflevector <2 x float> %i.eda, <2 x float> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.edg = shufflevector <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <16 x float> %i.edf, <16 x i32> <i32 17, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.edh = shufflevector <16 x float> %i.edf, <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <16 x i32> <i32 0, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  br label %vector.body6324

vector.body6324:                                  ; preds = %vector.ph6322, %vector.body6324
  %index6325 = phi i64 [ 0, %vector.ph6322 ], [ %index.next6344, %vector.body6324 ] ; 3 uses
  %vec.phi6326 = phi <16 x float> [ %i.edg, %vector.ph6322 ], [ %i.eoc, %vector.body6324 ]
  %vec.phi6327 = phi <16 x float> [ zeroinitializer, %vector.ph6322 ], [ %i.eod, %vector.body6324 ]
  %vec.phi6328 = phi <16 x float> [ %i.edh, %vector.ph6322 ], [ %i.ens, %vector.body6324 ]
  %vec.phi6329 = phi <16 x float> [ zeroinitializer, %vector.ph6322 ], [ %i.ent, %vector.body6324 ]
  %i.edi = shl i64 %index6325, 3                  ; 2 uses
  %next.gep6330 = getelementptr i8, ptr %.2115124983.us, i64 %i.edi
  %i.edj = getelementptr i8, ptr %.2115124983.us, i64 %i.edi
  %next.gep6331 = getelementptr i8, ptr %i.edj, i64 128
  %i.edk = getelementptr inbounds nuw [4 x i8], ptr %i.ect, i64 %index6325 ; 2 uses
  %i.edl = getelementptr inbounds nuw i8, ptr %i.edk, i64 64
  %wide.load6332 = load <16 x i32>, ptr %i.edk, align 4, !tbaa !30
  %wide.load6333 = load <16 x i32>, ptr %i.edl, align 4, !tbaa !30
  %i.edm = sext <16 x i32> %wide.load6332 to <16 x i64> ; 16 uses
  %i.edn = sext <16 x i32> %wide.load6333 to <16 x i64> ; 16 uses
  %i.edo = extractelement <16 x i64> %i.edm, i64 0 ; 2 uses
  %i.edp = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.edo
  %i.edq = extractelement <16 x i64> %i.edm, i64 1 ; 2 uses
  %i.edr = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.edq
  %i.eds = extractelement <16 x i64> %i.edm, i64 2 ; 2 uses
  %i.edt = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.eds
  %i.edu = extractelement <16 x i64> %i.edm, i64 3 ; 2 uses
  %i.edv = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.edu
  %i.edw = extractelement <16 x i64> %i.edm, i64 4 ; 2 uses
  %i.edx = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.edw
  %i.edy = extractelement <16 x i64> %i.edm, i64 5 ; 2 uses
  %i.edz = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.edy
  %i.eea = extractelement <16 x i64> %i.edm, i64 6 ; 2 uses
  %i.eeb = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.eea
  %i.eec = extractelement <16 x i64> %i.edm, i64 7 ; 2 uses
  %i.eed = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.eec
  %i.eee = extractelement <16 x i64> %i.edm, i64 8 ; 2 uses
  %i.eef = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.eee
  %i.eeg = extractelement <16 x i64> %i.edm, i64 9 ; 2 uses
  %i.eeh = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.eeg
  %i.eei = extractelement <16 x i64> %i.edm, i64 10 ; 2 uses
  %i.eej = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.eei
  %i.eek = extractelement <16 x i64> %i.edm, i64 11 ; 2 uses
  %i.eel = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.eek
  %i.eem = extractelement <16 x i64> %i.edm, i64 12 ; 2 uses
  %i.een = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.eem
  %i.eeo = extractelement <16 x i64> %i.edm, i64 13 ; 2 uses
  %i.eep = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.eeo
  %i.eeq = extractelement <16 x i64> %i.edm, i64 14 ; 2 uses
  %i.eer = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.eeq
  %i.ees = extractelement <16 x i64> %i.edm, i64 15 ; 2 uses
  %i.eet = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.ees
  %i.eeu = extractelement <16 x i64> %i.edn, i64 0 ; 2 uses
  %i.eev = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.eeu
  %i.eew = extractelement <16 x i64> %i.edn, i64 1 ; 2 uses
  %i.eex = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.eew
  %i.eey = extractelement <16 x i64> %i.edn, i64 2 ; 2 uses
  %i.eez = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.eey
  %i.efa = extractelement <16 x i64> %i.edn, i64 3 ; 2 uses
  %i.efb = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.efa
  %i.efc = extractelement <16 x i64> %i.edn, i64 4 ; 2 uses
  %i.efd = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.efc
  %i.efe = extractelement <16 x i64> %i.edn, i64 5 ; 2 uses
  %i.eff = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.efe
  %i.efg = extractelement <16 x i64> %i.edn, i64 6 ; 2 uses
  %i.efh = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.efg
  %i.efi = extractelement <16 x i64> %i.edn, i64 7 ; 2 uses
  %i.efj = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.efi
  %i.efk = extractelement <16 x i64> %i.edn, i64 8 ; 2 uses
  %i.efl = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.efk
  %i.efm = extractelement <16 x i64> %i.edn, i64 9 ; 2 uses
  %i.efn = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.efm
  %i.efo = extractelement <16 x i64> %i.edn, i64 10 ; 2 uses
  %i.efp = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.efo
  %i.efq = extractelement <16 x i64> %i.edn, i64 11 ; 2 uses
  %i.efr = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.efq
  %i.efs = extractelement <16 x i64> %i.edn, i64 12 ; 2 uses
  %i.eft = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.efs
  %i.efu = extractelement <16 x i64> %i.edn, i64 13 ; 2 uses
  %i.efv = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.efu
  %i.efw = extractelement <16 x i64> %i.edn, i64 14 ; 2 uses
  %i.efx = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.efw
  %i.efy = extractelement <16 x i64> %i.edn, i64 15 ; 2 uses
  %i.efz = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.efy
  %i.ega = load i16, ptr %i.edp, align 2, !tbaa !24
  %i.egb = load i16, ptr %i.edr, align 2, !tbaa !24
  %i.egc = load i16, ptr %i.edt, align 2, !tbaa !24
  %i.egd = load i16, ptr %i.edv, align 2, !tbaa !24
  %i.ege = load i16, ptr %i.edx, align 2, !tbaa !24
  %i.egf = load i16, ptr %i.edz, align 2, !tbaa !24
  %i.egg = load i16, ptr %i.eeb, align 2, !tbaa !24
  %i.egh = load i16, ptr %i.eed, align 2, !tbaa !24
  %i.egi = load i16, ptr %i.eef, align 2, !tbaa !24
  %i.egj = load i16, ptr %i.eeh, align 2, !tbaa !24
  %i.egk = load i16, ptr %i.eej, align 2, !tbaa !24
  %i.egl = load i16, ptr %i.eel, align 2, !tbaa !24
  %i.egm = load i16, ptr %i.een, align 2, !tbaa !24
  %i.egn = load i16, ptr %i.eep, align 2, !tbaa !24
  %i.ego = load i16, ptr %i.eer, align 2, !tbaa !24
  %i.egp = load i16, ptr %i.eet, align 2, !tbaa !24
  %i.egq = insertelement <16 x i16> poison, i16 %i.ega, i64 0
  %i.egr = insertelement <16 x i16> %i.egq, i16 %i.egb, i64 1
  %i.egs = insertelement <16 x i16> %i.egr, i16 %i.egc, i64 2
  %i.egt = insertelement <16 x i16> %i.egs, i16 %i.egd, i64 3
  %i.egu = insertelement <16 x i16> %i.egt, i16 %i.ege, i64 4
  %i.egv = insertelement <16 x i16> %i.egu, i16 %i.egf, i64 5
  %i.egw = insertelement <16 x i16> %i.egv, i16 %i.egg, i64 6
  %i.egx = insertelement <16 x i16> %i.egw, i16 %i.egh, i64 7
  %i.egy = insertelement <16 x i16> %i.egx, i16 %i.egi, i64 8
  %i.egz = insertelement <16 x i16> %i.egy, i16 %i.egj, i64 9
  %i.eha = insertelement <16 x i16> %i.egz, i16 %i.egk, i64 10
  %i.ehb = insertelement <16 x i16> %i.eha, i16 %i.egl, i64 11
  %i.ehc = insertelement <16 x i16> %i.ehb, i16 %i.egm, i64 12
  %i.ehd = insertelement <16 x i16> %i.ehc, i16 %i.egn, i64 13
  %i.ehe = insertelement <16 x i16> %i.ehd, i16 %i.ego, i64 14
  %i.ehf = insertelement <16 x i16> %i.ehe, i16 %i.egp, i64 15
  %i.ehg = load i16, ptr %i.eev, align 2, !tbaa !24
  %i.ehh = load i16, ptr %i.eex, align 2, !tbaa !24
  %i.ehi = load i16, ptr %i.eez, align 2, !tbaa !24
  %i.ehj = load i16, ptr %i.efb, align 2, !tbaa !24
  %i.ehk = load i16, ptr %i.efd, align 2, !tbaa !24
  %i.ehl = load i16, ptr %i.eff, align 2, !tbaa !24
  %i.ehm = load i16, ptr %i.efh, align 2, !tbaa !24
  %i.ehn = load i16, ptr %i.efj, align 2, !tbaa !24
  %i.eho = load i16, ptr %i.efl, align 2, !tbaa !24
  %i.ehp = load i16, ptr %i.efn, align 2, !tbaa !24
  %i.ehq = load i16, ptr %i.efp, align 2, !tbaa !24
  %i.ehr = load i16, ptr %i.efr, align 2, !tbaa !24
  %i.ehs = load i16, ptr %i.eft, align 2, !tbaa !24
  %i.eht = load i16, ptr %i.efv, align 2, !tbaa !24
  %i.ehu = load i16, ptr %i.efx, align 2, !tbaa !24
  %i.ehv = load i16, ptr %i.efz, align 2, !tbaa !24
  %i.ehw = insertelement <16 x i16> poison, i16 %i.ehg, i64 0
  %i.ehx = insertelement <16 x i16> %i.ehw, i16 %i.ehh, i64 1
  %i.ehy = insertelement <16 x i16> %i.ehx, i16 %i.ehi, i64 2
  %i.ehz = insertelement <16 x i16> %i.ehy, i16 %i.ehj, i64 3
  %i.eia = insertelement <16 x i16> %i.ehz, i16 %i.ehk, i64 4
  %i.eib = insertelement <16 x i16> %i.eia, i16 %i.ehl, i64 5
  %i.eic = insertelement <16 x i16> %i.eib, i16 %i.ehm, i64 6
  %i.eid = insertelement <16 x i16> %i.eic, i16 %i.ehn, i64 7
  %i.eie = insertelement <16 x i16> %i.eid, i16 %i.eho, i64 8
  %i.eif = insertelement <16 x i16> %i.eie, i16 %i.ehp, i64 9
  %i.eig = insertelement <16 x i16> %i.eif, i16 %i.ehq, i64 10
  %i.eih = insertelement <16 x i16> %i.eig, i16 %i.ehr, i64 11
  %i.eii = insertelement <16 x i16> %i.eih, i16 %i.ehs, i64 12
  %i.eij = insertelement <16 x i16> %i.eii, i16 %i.eht, i64 13
  %i.eik = insertelement <16 x i16> %i.eij, i16 %i.ehu, i64 14
  %i.eil = insertelement <16 x i16> %i.eik, i16 %i.ehv, i64 15
  %i.eim = zext <16 x i16> %i.ehf to <16 x i32>
  %i.ein = zext <16 x i16> %i.eil to <16 x i32>
  %i.eio = shl nuw <16 x i32> %i.eim, splat (i32 16)
  %i.eip = shl nuw <16 x i32> %i.ein, splat (i32 16)
end_hunk_0
