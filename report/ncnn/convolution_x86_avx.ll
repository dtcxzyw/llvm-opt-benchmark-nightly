inline.NumInlined: 392
inline.NumDeleted: 91
loop-unroll.NumCompletelyUnrolled: 121
loop-unroll.NumRuntimeUnrolled: 138
loop-unroll.NumUnrolled: 259
begin_hunk_0_@_ZNK4ncnn19Convolution_x86_avx16forward_int8_x86ERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %i.akg = load i32, ptr %i.bm, align 4, !tbaa !75, !noalias !813
  %i.akh = sext i32 %i.akg to i64
  %i.aki = load i32, ptr %i.b, align 4, !tbaa !67 ; 2 uses
  %i.akj = mul nsw i32 %i.aki, %i.ajz
  %i.akk = sext i32 %i.akj to i64
  %i.akl = mul i64 %i.rw, %i.akh                  ; 2 uses
  %i.akm = mul i64 %i.akl, %i.akk
  %invariant.gep3033.i = getelementptr i8, ptr %i.ru, i64 %i.akm
  %i.akn = load i32, ptr %i.a, align 4, !tbaa !67
  %i.ako = mul i32 %i.akn, %i.akf                 ; 2 uses
  %i.akp = mul i32 %i.ako, %i.akb
  %i.akq = sext i32 %i.akp to i64
  %invariant.gep3034.i = getelementptr i8, ptr %invariant.gep3033.i, i64 %i.akq ; 2 uses
  %i.akr = mul nsw i32 %i.aki, %i.aka
  %i.aks = sext i32 %i.akr to i64
  %i.akt = mul i64 %i.akl, %i.aks
  %invariant.gep3038.i = getelementptr i8, ptr %i.ru, i64 %i.akt
  %i.aku = mul i32 %i.ako, %i.akc
  %i.akv = sext i32 %i.aku to i64
  %invariant.gep3039.i = getelementptr i8, ptr %invariant.gep3038.i, i64 %i.akv ; 2 uses
  %i.akw = load i32, ptr %i.f, align 4, !tbaa !67 ; 3 uses
  %i.akx = icmp sgt i32 %i.akw, 0
  %i.aky = load ptr, ptr %i.g, align 8            ; 2 uses
  %i.akz = add i32 %i.akw, -1
  %i.ala = zext i32 %i.akz to i64
  %i.alb = shl nuw nsw i64 %i.ala, 4              ; 2 uses
  %wide.trip.count3709.i = zext nneg i32 %i.akw to i64 ; 2 uses
  br i1 %i.akx, label %.noexc1320.lr.ph.i.split.us, label %._crit_edge3024.loopexit.i

.noexc1320.lr.ph.i.split.us:                      ; preds = %.noexc1320.lr.ph.i
  %i.alc = icmp eq i32 %i.akf, 8
  br i1 %i.alc, label %.noexc1320.i.us.us, label %.noexc1320.i.us

.noexc1320.i.us.us:                               ; preds = %.noexc1320.lr.ph.i.split.us, %._crit_edge3007.loopexit.i.us.us
  %.011233023.i.us.us = phi ptr [ %scevgep3714.i.us.us, %._crit_edge3007.loopexit.i.us.us ], [ %i.rn, %.noexc1320.lr.ph.i.split.us ] ; 2 uses
  %.011293022.i.us.us = phi i32 [ %i.amg, %._crit_edge3007.loopexit.i.us.us ], [ 0, %.noexc1320.lr.ph.i.split.us ] ; 2 uses
  %i.ald = phi <4 x i32> [ %i.ame, %._crit_edge3007.loopexit.i.us.us ], [ zeroinitializer, %.noexc1320.lr.ph.i.split.us ]
  %i.ale = phi <4 x i32> [ %i.amc, %._crit_edge3007.loopexit.i.us.us ], [ zeroinitializer, %.noexc1320.lr.ph.i.split.us ]
  %i.alf = phi <4 x i32> [ %i.ama, %._crit_edge3007.loopexit.i.us.us ], [ zeroinitializer, %.noexc1320.lr.ph.i.split.us ]
  %i.alg = phi <4 x i32> [ %i.alx, %._crit_edge3007.loopexit.i.us.us ], [ zeroinitializer, %.noexc1320.lr.ph.i.split.us ]
  %i.alh = lshr exact i32 %.011293022.i.us.us, 3
  %i.ali = zext nneg i32 %i.alh to i64
  %.reass3032.i.us.us = mul i64 %factor.op.mul3031.i, %i.ali ; 2 uses
  %gep3035.i.us.us = getelementptr i8, ptr %invariant.gep3034.i, i64 %.reass3032.i.us.us
  %gep3040.i.us.us = getelementptr i8, ptr %invariant.gep3039.i, i64 %.reass3032.i.us.us
  br label %.lr.ph3006.split.us.i.us.us

.lr.ph3006.split.us.i.us.us:                      ; preds = %.noexc1320.i.us.us, %.lr.ph3006.split.us.i.us.us
  %indvars.iv3711.i.us.us = phi i64 [ %indvars.iv.next3712.i.us.us, %.lr.ph3006.split.us.i.us.us ], [ 0, %.noexc1320.i.us.us ] ; 2 uses
  %.111243005.us.i.us.us = phi ptr [ %i.amf, %.lr.ph3006.split.us.i.us.us ], [ %.011233023.i.us.us, %.noexc1320.i.us.us ] ; 2 uses
  %.127913003.us.i.us.us = phi <4 x i32> [ %i.ame, %.lr.ph3006.split.us.i.us.us ], [ %i.ald, %.noexc1320.i.us.us ]
  %.127933002.us.i.us.us = phi <4 x i32> [ %i.amc, %.lr.ph3006.split.us.i.us.us ], [ %i.ale, %.noexc1320.i.us.us ]
  %.127953001.us.i.us.us = phi <4 x i32> [ %i.ama, %.lr.ph3006.split.us.i.us.us ], [ %i.alf, %.noexc1320.i.us.us ]
  %.127973000.us.i.us.us = phi <4 x i32> [ %i.alx, %.lr.ph3006.split.us.i.us.us ], [ %i.alg, %.noexc1320.i.us.us ]
  %i.alj = getelementptr inbounds nuw [4 x i8], ptr %i.aky, i64 %indvars.iv3711.i.us.us
  %i.alk = load i32, ptr %i.alj, align 4, !tbaa !67
  %i.all = sext i32 %i.alk to i64                 ; 2 uses
  %i.alm = getelementptr inbounds i8, ptr %gep3035.i.us.us, i64 %i.all
  %i.aln = getelementptr inbounds i8, ptr %gep3040.i.us.us, i64 %i.all
  %i.alo = load <8 x i8>, ptr %i.alm, align 1, !tbaa !316
  %i.alp = load <8 x i8>, ptr %i.aln, align 1, !tbaa !316
  %i.alq = sext <8 x i8> %i.alo to <8 x i16>      ; 2 uses
  %i.alr = sext <8 x i8> %i.alp to <8 x i16>      ; 2 uses
  %i.als = load <16 x i8>, ptr %.111243005.us.i.us.us, align 16, !tbaa !316 ; 3 uses
  %.lobit.i1704.us.i.us.us = ashr <16 x i8> %i.als, splat (i8 7) ; 2 uses
  %i.alt = shufflevector <16 x i8> %i.als, <16 x i8> %.lobit.i1704.us.i.us.us, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.alu = shufflevector <16 x i8> %i.als, <16 x i8> %.lobit.i1704.us.i.us.us, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.alv = bitcast <16 x i8> %i.alt to <8 x i16>  ; 2 uses
  %i.alw = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.alq, <8 x i16> %i.alv)
  %i.alx = add <4 x i32> %i.alw, %.127973000.us.i.us.us ; 3 uses
  %i.aly = bitcast <16 x i8> %i.alu to <8 x i16>  ; 2 uses
  %i.alz = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.alq, <8 x i16> %i.aly)
  %i.ama = add <4 x i32> %i.alz, %.127953001.us.i.us.us ; 3 uses
  %i.amb = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.alr, <8 x i16> %i.alv)
  %i.amc = add <4 x i32> %i.amb, %.127933002.us.i.us.us ; 3 uses
  %i.amd = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.alr, <8 x i16> %i.aly)
  %i.ame = add <4 x i32> %i.amd, %.127913003.us.i.us.us ; 3 uses
  %i.amf = getelementptr inbounds nuw i8, ptr %.111243005.us.i.us.us, i64 16
  %indvars.iv.next3712.i.us.us = add nuw nsw i64 %indvars.iv3711.i.us.us, 1 ; 2 uses
  %exitcond3717.not.i.us.us = icmp eq i64 %indvars.iv.next3712.i.us.us, %wide.trip.count3709.i
  br i1 %exitcond3717.not.i.us.us, label %._crit_edge3007.loopexit.i.us.us, label %.lr.ph3006.split.us.i.us.us, !llvm.loop !816

._crit_edge3007.loopexit.i.us.us:                 ; preds = %.lr.ph3006.split.us.i.us.us
  %scevgep3713.i.us.us = getelementptr i8, ptr %.011233023.i.us.us, i64 16
  %scevgep3714.i.us.us = getelementptr i8, ptr %scevgep3713.i.us.us, i64 %i.alb ; 2 uses
  %i.amg = add nuw nsw i32 %.011293022.i.us.us, 8 ; 2 uses
  %i.amh = or disjoint i32 %i.amg, 7
  %i.ami = icmp slt i32 %i.amh, %i.akd
  br i1 %i.ami, label %.noexc1320.i.us.us, label %._crit_edge3024.loopexit.i, !llvm.loop !817

.noexc1320.i.us:                                  ; preds = %.noexc1320.lr.ph.i.split.us, %._crit_edge3007.loopexit3529.i.us
  %.011233023.i.us = phi ptr [ %scevgep3707.i.us, %._crit_edge3007.loopexit3529.i.us ], [ %i.rn, %.noexc1320.lr.ph.i.split.us ] ; 2 uses
  %.011293022.i.us = phi i32 [ %i.apg, %._crit_edge3007.loopexit3529.i.us ], [ 0, %.noexc1320.lr.ph.i.split.us ] ; 2 uses
  %i.amj = phi <4 x i32> [ %i.ape, %._crit_edge3007.loopexit3529.i.us ], [ zeroinitializer, %.noexc1320.lr.ph.i.split.us ]
  %i.amk = phi <4 x i32> [ %i.apc, %._crit_edge3007.loopexit3529.i.us ], [ zeroinitializer, %.noexc1320.lr.ph.i.split.us ]
  %i.aml = phi <4 x i32> [ %i.apa, %._crit_edge3007.loopexit3529.i.us ], [ zeroinitializer, %.noexc1320.lr.ph.i.split.us ]
  %i.amm = phi <4 x i32> [ %i.aox, %._crit_edge3007.loopexit3529.i.us ], [ zeroinitializer, %.noexc1320.lr.ph.i.split.us ]
  %i.amn = sdiv i32 %.011293022.i.us, %i.akf
  %i.amo = sext i32 %i.amn to i64
  %.reass3032.i.us = mul i64 %factor.op.mul3031.i, %i.amo ; 2 uses
  %gep3035.i.us = getelementptr i8, ptr %invariant.gep3034.i, i64 %.reass3032.i.us
  %gep3040.i.us = getelementptr i8, ptr %invariant.gep3039.i, i64 %.reass3032.i.us
  br label %.lr.ph3006.split.i.us

.lr.ph3006.split.i.us:                            ; preds = %.noexc1320.i.us, %.lr.ph3006.split.i.us
  %indvars.iv3704.i.us = phi i64 [ %indvars.iv.next3705.i.us, %.lr.ph3006.split.i.us ], [ 0, %.noexc1320.i.us ] ; 2 uses
  %.111243005.i.us = phi ptr [ %i.apf, %.lr.ph3006.split.i.us ], [ %.011233023.i.us, %.noexc1320.i.us ] ; 2 uses
  %.127913003.i.us = phi <4 x i32> [ %i.ape, %.lr.ph3006.split.i.us ], [ %i.amj, %.noexc1320.i.us ]
  %.127933002.i.us = phi <4 x i32> [ %i.apc, %.lr.ph3006.split.i.us ], [ %i.amk, %.noexc1320.i.us ]
  %.127953001.i.us = phi <4 x i32> [ %i.apa, %.lr.ph3006.split.i.us ], [ %i.aml, %.noexc1320.i.us ]
  %.127973000.i.us = phi <4 x i32> [ %i.aox, %.lr.ph3006.split.i.us ], [ %i.amm, %.noexc1320.i.us ]
  %i.amp = getelementptr inbounds nuw [4 x i8], ptr %i.aky, i64 %indvars.iv3704.i.us
  %i.amq = load i32, ptr %i.amp, align 4, !tbaa !67
  %i.amr = sext i32 %i.amq to i64                 ; 2 uses
  %i.ams = getelementptr inbounds i8, ptr %gep3035.i.us, i64 %i.amr ; 8 uses
  %i.amt = getelementptr inbounds i8, ptr %gep3040.i.us, i64 %i.amr ; 8 uses
  %i.amu = load i8, ptr %i.ams, align 1, !tbaa !316
  %i.amv = getelementptr inbounds nuw i8, ptr %i.ams, i64 %i.pn
  %i.amw = load i8, ptr %i.amv, align 1, !tbaa !316
  %i.amx = getelementptr inbounds nuw i8, ptr %i.ams, i64 %i.ro
  %i.amy = load i8, ptr %i.amx, align 1, !tbaa !316
  %i.amz = getelementptr inbounds nuw i8, ptr %i.ams, i64 %i.rp
  %i.ana = load i8, ptr %i.amz, align 1, !tbaa !316
  %i.anb = getelementptr inbounds nuw i8, ptr %i.ams, i64 %i.rq
  %i.anc = load i8, ptr %i.anb, align 1, !tbaa !316
  %i.and = getelementptr inbounds nuw i8, ptr %i.ams, i64 %i.rr
  %i.ane = load i8, ptr %i.and, align 1, !tbaa !316
  %i.anf = getelementptr inbounds nuw i8, ptr %i.ams, i64 %i.rs
  %i.ang = load i8, ptr %i.anf, align 1, !tbaa !316
  %i.anh = getelementptr inbounds nuw i8, ptr %i.ams, i64 %i.rt
  %i.ani = load i8, ptr %i.anh, align 1, !tbaa !316
  %i.anj = insertelement <16 x i8> poison, i8 %i.amu, i64 0
  %i.ank = insertelement <16 x i8> %i.anj, i8 %i.amw, i64 1
  %i.anl = insertelement <16 x i8> %i.ank, i8 %i.amy, i64 2
  %i.anm = insertelement <16 x i8> %i.anl, i8 %i.ana, i64 3
  %i.ann = insertelement <16 x i8> %i.anm, i8 %i.anc, i64 4
  %i.ano = insertelement <16 x i8> %i.ann, i8 %i.ane, i64 5
  %i.anp = insertelement <16 x i8> %i.ano, i8 %i.ang, i64 6
  %i.anq = insertelement <16 x i8> %i.anp, i8 %i.ani, i64 7
  %i.anr = load i8, ptr %i.amt, align 1, !tbaa !316
  %i.ans = getelementptr inbounds nuw i8, ptr %i.amt, i64 %i.pn
  %i.ant = load i8, ptr %i.ans, align 1, !tbaa !316
  %i.anu = getelementptr inbounds nuw i8, ptr %i.amt, i64 %i.ro
  %i.anv = load i8, ptr %i.anu, align 1, !tbaa !316
  %i.anw = getelementptr inbounds nuw i8, ptr %i.amt, i64 %i.rp
  %i.anx = load i8, ptr %i.anw, align 1, !tbaa !316
  %i.any = getelementptr inbounds nuw i8, ptr %i.amt, i64 %i.rq
  %i.anz = load i8, ptr %i.any, align 1, !tbaa !316
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.amt, i64 %i.rr
  %i.aob = load i8, ptr %i.aoa, align 1, !tbaa !316
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.amt, i64 %i.rs
  %i.aod = load i8, ptr %i.aoc, align 1, !tbaa !316
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.amt, i64 %i.rt
  %i.aof = load i8, ptr %i.aoe, align 1, !tbaa !316
  %i.aog = insertelement <16 x i8> poison, i8 %i.anr, i64 0
  %i.aoh = insertelement <16 x i8> %i.aog, i8 %i.ant, i64 1
  %i.aoi = insertelement <16 x i8> %i.aoh, i8 %i.anv, i64 2
  %i.aoj = insertelement <16 x i8> %i.aoi, i8 %i.anx, i64 3
  %i.aok = insertelement <16 x i8> %i.aoj, i8 %i.anz, i64 4
  %i.aol = insertelement <16 x i8> %i.aok, i8 %i.aob, i64 5
  %i.aom = insertelement <16 x i8> %i.aol, i8 %i.aod, i64 6
  %i.aon = insertelement <16 x i8> %i.aom, i8 %i.aof, i64 7
  %i.aoo = shufflevector <16 x i8> %i.anq, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aop = sext <8 x i8> %i.aoo to <8 x i16>      ; 2 uses
  %i.aoq = shufflevector <16 x i8> %i.aon, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aor = sext <8 x i8> %i.aoq to <8 x i16>      ; 2 uses
  %i.aos = load <16 x i8>, ptr %.111243005.i.us, align 16, !tbaa !316 ; 3 uses
  %.lobit.i1704.i.us = ashr <16 x i8> %i.aos, splat (i8 7) ; 2 uses
  %i.aot = shufflevector <16 x i8> %i.aos, <16 x i8> %.lobit.i1704.i.us, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.aou = shufflevector <16 x i8> %i.aos, <16 x i8> %.lobit.i1704.i.us, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.aov = bitcast <16 x i8> %i.aot to <8 x i16>  ; 2 uses
  %i.aow = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.aop, <8 x i16> %i.aov)
  %i.aox = add <4 x i32> %i.aow, %.127973000.i.us ; 3 uses
  %i.aoy = bitcast <16 x i8> %i.aou to <8 x i16>  ; 2 uses
  %i.aoz = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.aop, <8 x i16> %i.aoy)
  %i.apa = add <4 x i32> %i.aoz, %.127953001.i.us ; 3 uses
  %i.apb = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.aor, <8 x i16> %i.aov)
  %i.apc = add <4 x i32> %i.apb, %.127933002.i.us ; 3 uses
  %i.apd = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.aor, <8 x i16> %i.aoy)
  %i.ape = add <4 x i32> %i.apd, %.127913003.i.us ; 3 uses
  %i.apf = getelementptr inbounds nuw i8, ptr %.111243005.i.us, i64 16
  %indvars.iv.next3705.i.us = add nuw nsw i64 %indvars.iv3704.i.us, 1 ; 2 uses
  %exitcond3710.not.i.us = icmp eq i64 %indvars.iv.next3705.i.us, %wide.trip.count3709.i
  br i1 %exitcond3710.not.i.us, label %._crit_edge3007.loopexit3529.i.us, label %.lr.ph3006.split.i.us, !llvm.loop !816

._crit_edge3007.loopexit3529.i.us:                ; preds = %.lr.ph3006.split.i.us
  %scevgep3706.i.us = getelementptr i8, ptr %.011233023.i.us, i64 16
  %scevgep3707.i.us = getelementptr i8, ptr %scevgep3706.i.us, i64 %i.alb ; 2 uses
  %i.apg = add nuw nsw i32 %.011293022.i.us, 8    ; 2 uses
  %i.aph = or disjoint i32 %i.apg, 7
  %i.api = icmp slt i32 %i.aph, %i.akd
  br i1 %i.api, label %.noexc1320.i.us, label %._crit_edge3024.loopexit.i, !llvm.loop !817

._crit_edge3024.loopexit.i:                       ; preds = %._crit_edge3007.loopexit3529.i.us, %._crit_edge3007.loopexit.i.us.us, %.noexc1320.lr.ph.i
  %i.apj = phi <4 x i32> [ zeroinitializer, %.noexc1320.lr.ph.i ], [ %i.alx, %._crit_edge3007.loopexit.i.us.us ], [ %i.aox, %._crit_edge3007.loopexit3529.i.us ]
  %i.apk = phi <4 x i32> [ zeroinitializer, %.noexc1320.lr.ph.i ], [ %i.ama, %._crit_edge3007.loopexit.i.us.us ], [ %i.apa, %._crit_edge3007.loopexit3529.i.us ]
  %i.apl = phi <4 x i32> [ zeroinitializer, %.noexc1320.lr.ph.i ], [ %i.amc, %._crit_edge3007.loopexit.i.us.us ], [ %i.apc, %._crit_edge3007.loopexit3529.i.us ]
  %i.apm = phi <4 x i32> [ zeroinitializer, %.noexc1320.lr.ph.i ], [ %i.ame, %._crit_edge3007.loopexit.i.us.us ], [ %i.ape, %._crit_edge3007.loopexit3529.i.us ]
  %.us-phi327 = phi ptr [ %i.rn, %.noexc1320.lr.ph.i ], [ %scevgep3714.i.us.us, %._crit_edge3007.loopexit.i.us.us ], [ %scevgep3707.i.us, %._crit_edge3007.loopexit3529.i.us ]
  %i.apn = and i32 %i.akd, 2147483640
  %13 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.apj)
  %14 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.apk)
  %15 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.apl)
  %16 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.apm)
  br label %._crit_edge3024.i

._crit_edge3024.i:                                ; preds = %._crit_edge3024.loopexit.i, %.noexc1322.i
  %17 = phi i32 [ 0, %.noexc1322.i ], [ %13, %._crit_edge3024.loopexit.i ] ; 3 uses
  %18 = phi i32 [ 0, %.noexc1322.i ], [ %14, %._crit_edge3024.loopexit.i ] ; 3 uses
  %19 = phi i32 [ 0, %.noexc1322.i ], [ %15, %._crit_edge3024.loopexit.i ] ; 3 uses
  %20 = phi i32 [ 0, %.noexc1322.i ], [ %16, %._crit_edge3024.loopexit.i ] ; 3 uses
  %.01129.lcssa.i = phi i32 [ 0, %.noexc1322.i ], [ %i.apn, %._crit_edge3024.loopexit.i ] ; 5 uses
  %.01123.lcssa.i = phi ptr [ %i.rn, %.noexc1322.i ], [ %.us-phi327, %._crit_edge3024.loopexit.i ] ; 3 uses
  %i.apo = or disjoint i32 %.01129.lcssa.i, 1
  %i.app = icmp slt i32 %i.apo, %i.akd
  br i1 %i.app, label %.noexc1316.lr.ph.i, label %.preheader2813.i

.noexc1316.lr.ph.i:                               ; preds = %._crit_edge3024.i
  %i.apq = load i32, ptr %i.bm, align 4, !tbaa !75, !noalias !818
  %i.apr = sext i32 %i.apq to i64
  %i.aps = load i32, ptr %i.b, align 4, !tbaa !67 ; 2 uses
  %i.apt = mul nsw i32 %i.aps, %i.ajz
  %i.apu = sext i32 %i.apt to i64
  %i.apv = mul i64 %i.rw, %i.apr                  ; 2 uses
  %i.apw = mul i64 %i.apv, %i.apu
  %invariant.gep3068.i = getelementptr i8, ptr %i.ru, i64 %i.apw
  %i.apx = load i32, ptr %i.a, align 4, !tbaa !67 ; 2 uses
  %i.apy = mul nsw i32 %i.apx, %i.akb
  %i.apz = sext i32 %i.apy to i64
  %invariant.gep3069.i = getelementptr i8, ptr %invariant.gep3068.i, i64 %i.apz
  %i.aqa = mul nsw i32 %i.aps, %i.aka
  %i.aqb = sext i32 %i.aqa to i64
  %i.aqc = mul i64 %i.apv, %i.aqb
  %invariant.gep3073.i = getelementptr i8, ptr %i.ru, i64 %i.aqc
  %i.aqd = mul nsw i32 %i.apx, %i.akc
  %i.aqe = sext i32 %i.aqd to i64
  %invariant.gep3074.i = getelementptr i8, ptr %invariant.gep3073.i, i64 %i.aqe
  %i.aqf = load i32, ptr %i.f, align 4, !tbaa !67 ; 3 uses
  %i.aqg = icmp sgt i32 %i.aqf, 0
  %i.aqh = load ptr, ptr %i.g, align 8
  br i1 %i.aqg, label %.noexc1316.us.preheader.i, label %.noexc1316.preheader.i

.noexc1316.preheader.i:                           ; preds = %.noexc1316.lr.ph.i
  %i.aqi = or disjoint i32 %.01129.lcssa.i, 2
  %i.aqj = add nsw i32 %i.akd, -2
  %i.aqk = sub nsw i32 %i.aqj, %.01129.lcssa.i
  %i.aql = and i32 %i.aqk, -2
  %i.aqm = add i32 %i.aqi, %i.aql
  br label %.preheader2813.i

.noexc1316.us.preheader.i:                        ; preds = %.noexc1316.lr.ph.i
  %i.aqn = add nsw i32 %i.aqf, -1
  %i.aqo = zext nneg i32 %i.aqn to i64
  %i.aqp = shl nuw nsw i64 %i.aqo, 2
  %i.aqq = zext nneg i32 %.01129.lcssa.i to i64
  %wide.trip.count3723.i = zext nneg i32 %i.aqf to i64
  br label %.noexc1316.us.i

.noexc1316.us.i:                                  ; preds = %._crit_edge3048.us.i, %.noexc1316.us.preheader.i
  %indvars.iv3725.i = phi i64 [ %i.aqq, %.noexc1316.us.preheader.i ], [ %indvars.iv.next3726.i, %._crit_edge3048.us.i ] ; 2 uses
  %.010893059.us.i = phi i32 [ %17, %.noexc1316.us.preheader.i ], [ %i.aro, %._crit_edge3048.us.i ]
  %.010933058.us.i = phi i32 [ %19, %.noexc1316.us.preheader.i ], [ %i.ase, %._crit_edge3048.us.i ]
  %.010983057.us.i = phi i32 [ %18, %.noexc1316.us.preheader.i ], [ %i.art, %._crit_edge3048.us.i ]
  %.011023056.us.i = phi i32 [ %20, %.noexc1316.us.preheader.i ], [ %i.asg, %._crit_edge3048.us.i ]
  %.211253055.us.i = phi ptr [ %.01123.lcssa.i, %.noexc1316.us.preheader.i ], [ %scevgep3721.i, %._crit_edge3048.us.i ] ; 2 uses
  %.reass3067.us.i = mul i64 %factor.op.mul3031.i, %indvars.iv3725.i ; 2 uses
  %gep3070.us.i = getelementptr i8, ptr %invariant.gep3069.i, i64 %.reass3067.us.i
  %gep3075.us.i = getelementptr i8, ptr %invariant.gep3074.i, i64 %.reass3067.us.i
  br label %bb.cb

bb.cb:                                            ; preds = %bb.cb, %.noexc1316.us.i
  %indvars.iv3718.i = phi i64 [ 0, %.noexc1316.us.i ], [ %indvars.iv.next3719.i, %bb.cb ] ; 2 uses
  %.110903046.us.i = phi i32 [ %.010893059.us.i, %.noexc1316.us.i ], [ %i.aro, %bb.cb ]
  %.110943045.us.i = phi i32 [ %.010933058.us.i, %.noexc1316.us.i ], [ %i.ase, %bb.cb ]
  %.110993044.us.i = phi i32 [ %.010983057.us.i, %.noexc1316.us.i ], [ %i.art, %bb.cb ]
  %.111033043.us.i = phi i32 [ %.011023056.us.i, %.noexc1316.us.i ], [ %i.asg, %bb.cb ]
  %.311263042.us.i = phi ptr [ %.211253055.us.i, %.noexc1316.us.i ], [ %i.ash, %bb.cb ] ; 5 uses
  %i.aqr = getelementptr inbounds nuw [4 x i8], ptr %i.aqh, i64 %indvars.iv3718.i
  %i.aqs = load i32, ptr %i.aqr, align 4, !tbaa !67
  %i.aqt = sext i32 %i.aqs to i64                 ; 2 uses
  %i.aqu = getelementptr inbounds i8, ptr %gep3070.us.i, i64 %i.aqt ; 2 uses
  %i.aqv = getelementptr inbounds i8, ptr %gep3075.us.i, i64 %i.aqt ; 2 uses
  %i.aqw = load i8, ptr %i.aqu, align 1, !tbaa !316
  %i.aqx = sext i8 %i.aqw to i32                  ; 2 uses
  %i.aqy = load i8, ptr %.311263042.us.i, align 1, !tbaa !316
  %i.aqz = sext i8 %i.aqy to i32                  ; 2 uses
  %i.ara = mul nsw i32 %i.aqz, %i.aqx
  %i.arb = add nsw i32 %i.ara, %.110903046.us.i
  %i.arc = getelementptr inbounds nuw i8, ptr %.311263042.us.i, i64 1
  %i.ard = load i8, ptr %i.arc, align 1, !tbaa !316
  %i.are = sext i8 %i.ard to i32                  ; 2 uses
  %i.arf = mul nsw i32 %i.are, %i.aqx
  %i.arg = add nsw i32 %i.arf, %.110993044.us.i
  %i.arh = getelementptr inbounds nuw i8, ptr %i.aqu, i64 %i.pn
  %i.ari = load i8, ptr %i.arh, align 1, !tbaa !316
  %i.arj = sext i8 %i.ari to i32                  ; 2 uses
  %i.ark = getelementptr inbounds nuw i8, ptr %.311263042.us.i, i64 2
  %i.arl = load i8, ptr %i.ark, align 1, !tbaa !316
  %i.arm = sext i8 %i.arl to i32                  ; 2 uses
  %i.arn = mul nsw i32 %i.arm, %i.arj
  %i.aro = add nsw i32 %i.arb, %i.arn             ; 3 uses
  %i.arp = getelementptr inbounds nuw i8, ptr %.311263042.us.i, i64 3
  %i.arq = load i8, ptr %i.arp, align 1, !tbaa !316
  %i.arr = sext i8 %i.arq to i32                  ; 2 uses
  %i.ars = mul nsw i32 %i.arr, %i.arj
  %i.art = add nsw i32 %i.arg, %i.ars             ; 3 uses
  %i.aru = load i8, ptr %i.aqv, align 1, !tbaa !316
  %i.arv = sext i8 %i.aru to i32                  ; 2 uses
  %i.arw = mul nsw i32 %i.arv, %i.aqz
  %i.arx = add nsw i32 %i.arw, %.110943045.us.i
  %i.ary = mul nsw i32 %i.arv, %i.are
  %i.arz = add nsw i32 %i.ary, %.111033043.us.i
  %i.asa = getelementptr inbounds nuw i8, ptr %i.aqv, i64 %i.pn
  %i.asb = load i8, ptr %i.asa, align 1, !tbaa !316
  %i.asc = sext i8 %i.asb to i32                  ; 2 uses
  %i.asd = mul nsw i32 %i.asc, %i.arm
  %i.ase = add nsw i32 %i.arx, %i.asd             ; 3 uses
  %i.asf = mul nsw i32 %i.asc, %i.arr
  %i.asg = add nsw i32 %i.arz, %i.asf             ; 3 uses
  %i.ash = getelementptr inbounds nuw i8, ptr %.311263042.us.i, i64 4
  %indvars.iv.next3719.i = add nuw nsw i64 %indvars.iv3718.i, 1 ; 2 uses
  %exitcond3724.not.i = icmp eq i64 %indvars.iv.next3719.i, %wide.trip.count3723.i
  br i1 %exitcond3724.not.i, label %._crit_edge3048.us.i, label %bb.cb, !llvm.loop !821

._crit_edge3048.us.i:                             ; preds = %bb.cb
  %scevgep3720.i = getelementptr i8, ptr %.211253055.us.i, i64 4
  %scevgep3721.i = getelementptr i8, ptr %scevgep3720.i, i64 %i.aqp ; 2 uses
  %indvars.iv.next3726.i = add nuw nsw i64 %indvars.iv3725.i, 2 ; 2 uses
  %i.asi = trunc i64 %indvars.iv.next3726.i to i32 ; 2 uses
  %i.asj = or i32 %i.asi, 1
  %i.ask = icmp slt i32 %i.asj, %i.akd
  br i1 %i.ask, label %.noexc1316.us.i, label %.preheader2813.i, !llvm.loop !822

.preheader2813.i:                                 ; preds = %._crit_edge3048.us.i, %.noexc1316.preheader.i, %._crit_edge3024.i
  %.11130.lcssa.i = phi i32 [ %.01129.lcssa.i, %._crit_edge3024.i ], [ %i.aqm, %.noexc1316.preheader.i ], [ %i.asi, %._crit_edge3048.us.i ] ; 2 uses
  %.21125.lcssa.i = phi ptr [ %.01123.lcssa.i, %._crit_edge3024.i ], [ %.01123.lcssa.i, %.noexc1316.preheader.i ], [ %scevgep3721.i, %._crit_edge3048.us.i ]
  %.01102.lcssa.i = phi i32 [ %20, %._crit_edge3024.i ], [ %20, %.noexc1316.preheader.i ], [ %i.asg, %._crit_edge3048.us.i ] ; 3 uses
  %.01098.lcssa.i = phi i32 [ %18, %._crit_edge3024.i ], [ %18, %.noexc1316.preheader.i ], [ %i.art, %._crit_edge3048.us.i ] ; 3 uses
  %.01093.lcssa.i = phi i32 [ %19, %._crit_edge3024.i ], [ %19, %.noexc1316.preheader.i ], [ %i.ase, %._crit_edge3048.us.i ] ; 3 uses
  %.01089.lcssa.i = phi i32 [ %17, %._crit_edge3024.i ], [ %17, %.noexc1316.preheader.i ], [ %i.aro, %._crit_edge3048.us.i ] ; 3 uses
  %i.asl = icmp slt i32 %.11130.lcssa.i, %i.akd
  br i1 %i.asl, label %.noexc1312.lr.ph.i, label %._crit_edge3101.i

.noexc1312.lr.ph.i:                               ; preds = %.preheader2813.i
  %i.asm = load i32, ptr %i.bm, align 4, !tbaa !75, !noalias !823
  %i.asn = sext i32 %i.asm to i64
  %i.aso = load i32, ptr %i.b, align 4, !tbaa !67 ; 2 uses
  %i.asp = mul nsw i32 %i.aso, %i.ajz
  %i.asq = sext i32 %i.asp to i64
  %i.asr = mul i64 %i.rw, %i.asn                  ; 2 uses
  %i.ass = mul i64 %i.asr, %i.asq
  %invariant.gep3108.i = getelementptr i8, ptr %i.ru, i64 %i.ass
  %i.ast = load i32, ptr %i.a, align 4, !tbaa !67 ; 2 uses
  %i.asu = mul nsw i32 %i.ast, %i.akb
  %i.asv = sext i32 %i.asu to i64
  %invariant.gep3109.i = getelementptr i8, ptr %invariant.gep3108.i, i64 %i.asv
  %i.asw = mul nsw i32 %i.aso, %i.aka
  %i.asx = sext i32 %i.asw to i64
  %i.asy = mul i64 %i.asr, %i.asx
  %invariant.gep3113.i = getelementptr i8, ptr %i.ru, i64 %i.asy
  %i.asz = mul nsw i32 %i.ast, %i.akc
  %i.ata = sext i32 %i.asz to i64
  %invariant.gep3114.i = getelementptr i8, ptr %invariant.gep3113.i, i64 %i.ata
  %i.atb = load i32, ptr %i.f, align 4, !tbaa !67 ; 3 uses
  %i.atc = icmp sgt i32 %i.atb, 0
  %i.atd = load ptr, ptr %i.g, align 8
  br i1 %i.atc, label %.noexc1312.us.preheader.i, label %._crit_edge3101.i

.noexc1312.us.preheader.i:                        ; preds = %.noexc1312.lr.ph.i
  %i.ate = add nsw i32 %i.atb, -1
  %i.atf = zext nneg i32 %i.ate to i64
  %i.atg = shl nuw nsw i64 %i.atf, 1
  %i.ath = zext i32 %.11130.lcssa.i to i64
  %wide.trip.count3733.i = zext nneg i32 %i.atb to i64
  br label %.noexc1312.us.i

.noexc1312.us.i:                                  ; preds = %._crit_edge3089.us.i, %.noexc1312.us.preheader.i
  %indvars.iv3735.i = phi i64 [ %i.ath, %.noexc1312.us.preheader.i ], [ %indvars.iv.next3736.i, %._crit_edge3089.us.i ] ; 2 uses
  %.210913100.us.i = phi i32 [ %.01089.lcssa.i, %.noexc1312.us.preheader.i ], [ %i.ats, %._crit_edge3089.us.i ]
  %.210953099.us.i = phi i32 [ %.01093.lcssa.i, %.noexc1312.us.preheader.i ], [ %i.aub, %._crit_edge3089.us.i ]
  %.211003098.us.i = phi i32 [ %.01098.lcssa.i, %.noexc1312.us.preheader.i ], [ %i.atx, %._crit_edge3089.us.i ]
  %.211043097.us.i = phi i32 [ %.01102.lcssa.i, %.noexc1312.us.preheader.i ], [ %i.aud, %._crit_edge3089.us.i ]
  %.411273096.us.i = phi ptr [ %.21125.lcssa.i, %.noexc1312.us.preheader.i ], [ %scevgep3731.i, %._crit_edge3089.us.i ] ; 2 uses
  %.reass3107.us.i = mul i64 %factor.op.mul3031.i, %indvars.iv3735.i ; 2 uses
  %gep3110.us.i = getelementptr i8, ptr %invariant.gep3109.i, i64 %.reass3107.us.i
  %gep3115.us.i = getelementptr i8, ptr %invariant.gep3114.i, i64 %.reass3107.us.i
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cc, %.noexc1312.us.i
  %indvars.iv3728.i = phi i64 [ 0, %.noexc1312.us.i ], [ %indvars.iv.next3729.i, %bb.cc ] ; 2 uses
  %.310923087.us.i = phi i32 [ %.210913100.us.i, %.noexc1312.us.i ], [ %i.ats, %bb.cc ]
  %.310963086.us.i = phi i32 [ %.210953099.us.i, %.noexc1312.us.i ], [ %i.aub, %bb.cc ]
  %.311013085.us.i = phi i32 [ %.211003098.us.i, %.noexc1312.us.i ], [ %i.atx, %bb.cc ]
  %.311053084.us.i = phi i32 [ %.211043097.us.i, %.noexc1312.us.i ], [ %i.aud, %bb.cc ]
  %.511283083.us.i = phi ptr [ %.411273096.us.i, %.noexc1312.us.i ], [ %i.aue, %bb.cc ] ; 3 uses
  %i.ati = getelementptr inbounds nuw [4 x i8], ptr %i.atd, i64 %indvars.iv3728.i
  %i.atj = load i32, ptr %i.ati, align 4, !tbaa !67
  %i.atk = sext i32 %i.atj to i64                 ; 2 uses
  %i.atl = getelementptr inbounds i8, ptr %gep3110.us.i, i64 %i.atk
  %i.atm = getelementptr inbounds i8, ptr %gep3115.us.i, i64 %i.atk
  %i.atn = load i8, ptr %i.atl, align 1, !tbaa !316
  %i.ato = sext i8 %i.atn to i32                  ; 2 uses
  %i.atp = load i8, ptr %.511283083.us.i, align 1, !tbaa !316
  %i.atq = sext i8 %i.atp to i32                  ; 2 uses
  %i.atr = mul nsw i32 %i.atq, %i.ato
  %i.ats = add nsw i32 %i.atr, %.310923087.us.i   ; 3 uses
  %i.att = getelementptr inbounds nuw i8, ptr %.511283083.us.i, i64 1
  %i.atu = load i8, ptr %i.att, align 1, !tbaa !316
  %i.atv = sext i8 %i.atu to i32                  ; 2 uses
  %i.atw = mul nsw i32 %i.atv, %i.ato
  %i.atx = add nsw i32 %i.atw, %.311013085.us.i   ; 3 uses
  %i.aty = load i8, ptr %i.atm, align 1, !tbaa !316
  %i.atz = sext i8 %i.aty to i32                  ; 2 uses
  %i.aua = mul nsw i32 %i.atz, %i.atq
  %i.aub = add nsw i32 %i.aua, %.310963086.us.i   ; 3 uses
  %i.auc = mul nsw i32 %i.atz, %i.atv
  %i.aud = add nsw i32 %i.auc, %.311053084.us.i   ; 3 uses
  %i.aue = getelementptr inbounds nuw i8, ptr %.511283083.us.i, i64 2
  %indvars.iv.next3729.i = add nuw nsw i64 %indvars.iv3728.i, 1 ; 2 uses
  %exitcond3734.not.i = icmp eq i64 %indvars.iv.next3729.i, %wide.trip.count3733.i
  br i1 %exitcond3734.not.i, label %._crit_edge3089.us.i, label %bb.cc, !llvm.loop !826

._crit_edge3089.us.i:                             ; preds = %bb.cc
  %scevgep3730.i = getelementptr i8, ptr %.411273096.us.i, i64 2
  %scevgep3731.i = getelementptr i8, ptr %scevgep3730.i, i64 %i.atg
  %indvars.iv.next3736.i = add nuw nsw i64 %indvars.iv3735.i, 1 ; 2 uses
  %i.auf = trunc nuw i64 %indvars.iv.next3736.i to i32
  %i.aug = icmp sgt i32 %i.akd, %i.auf
  br i1 %i.aug, label %.noexc1312.us.i, label %._crit_edge3101.i, !llvm.loop !827

._crit_edge3101.i:                                ; preds = %._crit_edge3089.us.i, %.noexc1312.lr.ph.i, %.preheader2813.i
  %.21104.lcssa.i = phi i32 [ %.01102.lcssa.i, %.preheader2813.i ], [ %.01102.lcssa.i, %.noexc1312.lr.ph.i ], [ %i.aud, %._crit_edge3089.us.i ]
  %.21100.lcssa.i = phi i32 [ %.01098.lcssa.i, %.preheader2813.i ], [ %.01098.lcssa.i, %.noexc1312.lr.ph.i ], [ %i.atx, %._crit_edge3089.us.i ]
  %.21095.lcssa.i = phi i32 [ %.01093.lcssa.i, %.preheader2813.i ], [ %.01093.lcssa.i, %.noexc1312.lr.ph.i ], [ %i.aub, %._crit_edge3089.us.i ]
  %.21091.lcssa.i = phi i32 [ %.01089.lcssa.i, %.preheader2813.i ], [ %.01089.lcssa.i, %.noexc1312.lr.ph.i ], [ %i.ats, %._crit_edge3089.us.i ]
  store i32 %.21091.lcssa.i, ptr %.110673122.i, align 4, !tbaa !67
  %i.auh = getelementptr inbounds nuw i8, ptr %.110673122.i, i64 4
  store i32 %.21095.lcssa.i, ptr %i.auh, align 4, !tbaa !67
  store i32 %.21100.lcssa.i, ptr %.110703121.i, align 4, !tbaa !67
  %i.aui = getelementptr inbounds nuw i8, ptr %.110703121.i, i64 4
  store i32 %.21104.lcssa.i, ptr %i.aui, align 4, !tbaa !67
  %i.auj = getelementptr inbounds nuw i8, ptr %.110673122.i, i64 8 ; 2 uses
  %i.auk = getelementptr inbounds nuw i8, ptr %.110703121.i, i64 8 ; 2 uses
  %i.aul = add nuw nsw i32 %.110743120.i, 2       ; 3 uses
  %i.aum = or disjoint i32 %i.aul, 1              ; 2 uses
  %i.aun = icmp slt i32 %i.aum, %i.pz
  br i1 %i.aun, label %.noexc1322.i, label %.preheader2815.i, !llvm.loop !828

.noexc1308.i:                                     ; preds = %._crit_edge3209.i, %.noexc1308.lr.ph.i
  %.210683221.i = phi ptr [ %.11067.lcssa.i, %.noexc1308.lr.ph.i ], [ %i.bdc, %._crit_edge3209.i ] ; 2 uses
  %.210713220.i = phi ptr [ %.11070.lcssa.i, %.noexc1308.lr.ph.i ], [ %i.bdd, %._crit_edge3209.i ] ; 2 uses
  %.210753219.i = phi i32 [ %.11074.lcssa.i, %.noexc1308.lr.ph.i ], [ %i.bde, %._crit_edge3209.i ] ; 3 uses
  %i.auo = sdiv i32 %.210753219.i, %i.pi          ; 3 uses
  %i.aup = srem i32 %.210753219.i, %i.pi          ; 3 uses
  %i.auq = load i32, ptr %i.d, align 4, !tbaa !67 ; 11 uses
  %i.aur = icmp sgt i32 %i.auq, 7
  br i1 %i.aur, label %.noexc1306.lr.ph.i, label %._crit_edge3142.i

.noexc1306.lr.ph.i:                               ; preds = %.noexc1308.i
  %i.aus = load i32, ptr %i.c, align 4, !tbaa !67 ; 3 uses
  %i.aut = load i32, ptr %i.bm, align 4, !tbaa !75, !noalias !829
  %i.auu = sext i32 %i.aut to i64
  %i.auv = load i32, ptr %i.b, align 4, !tbaa !67
  %i.auw = mul nsw i32 %i.auv, %i.auo
  %i.aux = sext i32 %i.auw to i64
  %i.auy = mul i64 %i.ajx, %i.auu
  %i.auz = mul i64 %i.auy, %i.aux
  %invariant.gep3149.i = getelementptr i8, ptr %i.ajv, i64 %i.auz
  %i.ava = load i32, ptr %i.a, align 4, !tbaa !67
  %i.avb = mul i32 %i.aus, %i.aup
  %i.avc = mul i32 %i.avb, %i.ava
  %i.avd = sext i32 %i.avc to i64
  %invariant.gep3150.i = getelementptr i8, ptr %invariant.gep3149.i, i64 %i.avd ; 2 uses
  %i.ave = load i32, ptr %i.f, align 4, !tbaa !67 ; 3 uses
  %i.avf = icmp sgt i32 %i.ave, 0
  %i.avg = load ptr, ptr %i.g, align 8            ; 2 uses
  br i1 %i.avf, label %.noexc1306.lr.ph.split.us.i, label %.noexc1306.preheader.i

.noexc1306.preheader.i:                           ; preds = %.noexc1306.lr.ph.i
  %i.avh = and i32 %i.auq, 2147483640
  br label %._crit_edge3142.i

.noexc1306.lr.ph.split.us.i:                      ; preds = %.noexc1306.lr.ph.i
  %i.avi = icmp eq i32 %i.aus, 8
  %i.avj = add nsw i32 %i.ave, -1
  %i.avk = zext nneg i32 %i.avj to i64
  %i.avl = shl nuw nsw i64 %i.avk, 4              ; 2 uses
  %wide.trip.count3750.i = zext nneg i32 %i.ave to i64 ; 2 uses
  br i1 %i.avi, label %.noexc1306.us.us.i.preheader, label %.noexc1306.us.i

.noexc1306.us.us.i.preheader:                     ; preds = %.noexc1306.lr.ph.split.us.i
  %i.avm = zext nneg i32 %i.auq to i64
  br label %.noexc1306.us.us.i

.noexc1306.us.us.i:                               ; preds = %.noexc1306.us.us.i.preheader, %._crit_edge3131.split.us.us.us.i
  %indvars.iv = phi i64 [ 0, %.noexc1306.us.us.i.preheader ], [ %indvars.iv.next, %._crit_edge3131.split.us.us.us.i ] ; 2 uses
  %.011433141.us.us.i = phi ptr [ %i.ajo, %.noexc1306.us.us.i.preheader ], [ %scevgep3748.i, %._crit_edge3131.split.us.us.us.i ] ; 2 uses
  %i.avn = phi <4 x i32> [ zeroinitializer, %.noexc1306.us.us.i.preheader ], [ %i.awe, %._crit_edge3131.split.us.us.us.i ]
  %i.avo = phi <4 x i32> [ zeroinitializer, %.noexc1306.us.us.i.preheader ], [ %i.awb, %._crit_edge3131.split.us.us.us.i ]
  %i.avp = lshr exact i64 %indvars.iv, 3
  %.reass3148.us.us.i = mul i64 %factor.op.mul3147.i, %i.avp
  %gep3151.us.us.i = getelementptr i8, ptr %invariant.gep3150.i, i64 %.reass3148.us.us.i
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cd, %.noexc1306.us.us.i
  %indvars.iv3745.i = phi i64 [ %indvars.iv.next3746.i, %bb.cd ], [ 0, %.noexc1306.us.us.i ] ; 2 uses
  %.111443129.us.us.us.i = phi ptr [ %i.awf, %bb.cd ], [ %.011433141.us.us.i, %.noexc1306.us.us.i ] ; 2 uses
  %.127863127.us.us.us.i = phi <4 x i32> [ %i.awe, %bb.cd ], [ %i.avn, %.noexc1306.us.us.i ]
  %.127883126.us.us.us.i = phi <4 x i32> [ %i.awb, %bb.cd ], [ %i.avo, %.noexc1306.us.us.i ]
  %i.avq = getelementptr inbounds nuw [4 x i8], ptr %i.avg, i64 %indvars.iv3745.i
  %i.avr = load i32, ptr %i.avq, align 4, !tbaa !67
  %i.avs = sext i32 %i.avr to i64
  %i.avt = getelementptr inbounds i8, ptr %gep3151.us.us.i, i64 %i.avs
  %i.avu = load <8 x i8>, ptr %i.avt, align 1, !tbaa !316
  %i.avv = sext <8 x i8> %i.avu to <8 x i16>      ; 2 uses
  %i.avw = load <16 x i8>, ptr %.111443129.us.us.us.i, align 16, !tbaa !316 ; 3 uses
  %.lobit.i.us.us.us.i = ashr <16 x i8> %i.avw, splat (i8 7) ; 2 uses
  %i.avx = shufflevector <16 x i8> %i.avw, <16 x i8> %.lobit.i.us.us.us.i, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.avy = shufflevector <16 x i8> %i.avw, <16 x i8> %.lobit.i.us.us.us.i, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.avz = bitcast <16 x i8> %i.avx to <8 x i16>
  %i.awa = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.avv, <8 x i16> %i.avz)
  %i.awb = add <4 x i32> %i.awa, %.127883126.us.us.us.i ; 3 uses
  %i.awc = bitcast <16 x i8> %i.avy to <8 x i16>
  %i.awd = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.avv, <8 x i16> %i.awc)
  %i.awe = add <4 x i32> %i.awd, %.127863127.us.us.us.i ; 3 uses
  %i.awf = getelementptr inbounds nuw i8, ptr %.111443129.us.us.us.i, i64 16
  %indvars.iv.next3746.i = add nuw nsw i64 %indvars.iv3745.i, 1 ; 2 uses
  %exitcond3751.not.i = icmp eq i64 %indvars.iv.next3746.i, %wide.trip.count3750.i
  br i1 %exitcond3751.not.i, label %._crit_edge3131.split.us.us.us.i, label %bb.cd, !llvm.loop !832

._crit_edge3131.split.us.us.us.i:                 ; preds = %bb.cd
  %scevgep3747.i = getelementptr i8, ptr %.011433141.us.us.i, i64 16
  %scevgep3748.i = getelementptr i8, ptr %scevgep3747.i, i64 %i.avl ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %i.awg = or disjoint i64 %indvars.iv.next, 7
  %i.awh = icmp samesign ult i64 %i.awg, %i.avm
  br i1 %i.awh, label %.noexc1306.us.us.i, label %._crit_edge3142.loopexit.i, !llvm.loop !833

.noexc1306.us.i:                                  ; preds = %.noexc1306.lr.ph.split.us.i, %._crit_edge3131.split.us3157.i
  %.011433141.us.i = phi ptr [ %scevgep3741.i, %._crit_edge3131.split.us3157.i ], [ %i.ajo, %.noexc1306.lr.ph.split.us.i ] ; 2 uses
  %.011493140.us.i = phi i32 [ %i.axz, %._crit_edge3131.split.us3157.i ], [ 0, %.noexc1306.lr.ph.split.us.i ] ; 2 uses
  %i.awi = phi <4 x i32> [ %i.axx, %._crit_edge3131.split.us3157.i ], [ zeroinitializer, %.noexc1306.lr.ph.split.us.i ]
  %i.awj = phi <4 x i32> [ %i.axu, %._crit_edge3131.split.us3157.i ], [ zeroinitializer, %.noexc1306.lr.ph.split.us.i ]
  %i.awk = sdiv i32 %.011493140.us.i, %i.aus
  %i.awl = sext i32 %i.awk to i64
  %.reass3148.us.i = mul i64 %factor.op.mul3147.i, %i.awl
  %gep3151.us.i = getelementptr i8, ptr %invariant.gep3150.i, i64 %.reass3148.us.i
  br label %bb.ce

bb.ce:                                            ; preds = %bb.ce, %.noexc1306.us.i
  %indvars.iv3738.i = phi i64 [ 0, %.noexc1306.us.i ], [ %indvars.iv.next3739.i, %bb.ce ] ; 2 uses
  %.111443129.us3152.i = phi ptr [ %.011433141.us.i, %.noexc1306.us.i ], [ %i.axy, %bb.ce ] ; 2 uses
  %.127863127.us3154.i = phi <4 x i32> [ %i.awi, %.noexc1306.us.i ], [ %i.axx, %bb.ce ]
  %.127883126.us3155.i = phi <4 x i32> [ %i.awj, %.noexc1306.us.i ], [ %i.axu, %bb.ce ]
  %i.awm = getelementptr inbounds nuw [4 x i8], ptr %i.avg, i64 %indvars.iv3738.i
  %i.awn = load i32, ptr %i.awm, align 4, !tbaa !67
  %i.awo = sext i32 %i.awn to i64
  %i.awp = getelementptr inbounds i8, ptr %gep3151.us.i, i64 %i.awo ; 8 uses
  %i.awq = load i8, ptr %i.awp, align 1, !tbaa !316
  %i.awr = getelementptr inbounds nuw i8, ptr %i.awp, i64 %i.pn
  %i.aws = load i8, ptr %i.awr, align 1, !tbaa !316
  %i.awt = getelementptr inbounds nuw i8, ptr %i.awp, i64 %i.ajp
  %i.awu = load i8, ptr %i.awt, align 1, !tbaa !316
  %i.awv = getelementptr inbounds nuw i8, ptr %i.awp, i64 %i.ajq
  %i.aww = load i8, ptr %i.awv, align 1, !tbaa !316
  %i.awx = getelementptr inbounds nuw i8, ptr %i.awp, i64 %i.ajr
  %i.awy = load i8, ptr %i.awx, align 1, !tbaa !316
  %i.awz = getelementptr inbounds nuw i8, ptr %i.awp, i64 %i.ajs
  %i.axa = load i8, ptr %i.awz, align 1, !tbaa !316
  %i.axb = getelementptr inbounds nuw i8, ptr %i.awp, i64 %i.ajt
  %i.axc = load i8, ptr %i.axb, align 1, !tbaa !316
  %i.axd = getelementptr inbounds nuw i8, ptr %i.awp, i64 %i.aju
  %i.axe = load i8, ptr %i.axd, align 1, !tbaa !316
  %i.axf = insertelement <16 x i8> poison, i8 %i.awq, i64 0
  %i.axg = insertelement <16 x i8> %i.axf, i8 %i.aws, i64 1
  %i.axh = insertelement <16 x i8> %i.axg, i8 %i.awu, i64 2
  %i.axi = insertelement <16 x i8> %i.axh, i8 %i.aww, i64 3
  %i.axj = insertelement <16 x i8> %i.axi, i8 %i.awy, i64 4
  %i.axk = insertelement <16 x i8> %i.axj, i8 %i.axa, i64 5
  %i.axl = insertelement <16 x i8> %i.axk, i8 %i.axc, i64 6
  %i.axm = insertelement <16 x i8> %i.axl, i8 %i.axe, i64 7
  %i.axn = shufflevector <16 x i8> %i.axm, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.axo = sext <8 x i8> %i.axn to <8 x i16>      ; 2 uses
  %i.axp = load <16 x i8>, ptr %.111443129.us3152.i, align 16, !tbaa !316 ; 3 uses
  %.lobit.i.us3156.i = ashr <16 x i8> %i.axp, splat (i8 7) ; 2 uses
  %i.axq = shufflevector <16 x i8> %i.axp, <16 x i8> %.lobit.i.us3156.i, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.axr = shufflevector <16 x i8> %i.axp, <16 x i8> %.lobit.i.us3156.i, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.axs = bitcast <16 x i8> %i.axq to <8 x i16>
  %i.axt = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.axo, <8 x i16> %i.axs)
  %i.axu = add <4 x i32> %i.axt, %.127883126.us3155.i ; 3 uses
  %i.axv = bitcast <16 x i8> %i.axr to <8 x i16>
  %i.axw = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.axo, <8 x i16> %i.axv)
  %i.axx = add <4 x i32> %i.axw, %.127863127.us3154.i ; 3 uses
  %i.axy = getelementptr inbounds nuw i8, ptr %.111443129.us3152.i, i64 16
  %indvars.iv.next3739.i = add nuw nsw i64 %indvars.iv3738.i, 1 ; 2 uses
  %exitcond3744.not.i = icmp eq i64 %indvars.iv.next3739.i, %wide.trip.count3750.i
  br i1 %exitcond3744.not.i, label %._crit_edge3131.split.us3157.i, label %bb.ce, !llvm.loop !832

._crit_edge3131.split.us3157.i:                   ; preds = %bb.ce
  %scevgep3740.i = getelementptr i8, ptr %.011433141.us.i, i64 16
  %scevgep3741.i = getelementptr i8, ptr %scevgep3740.i, i64 %i.avl ; 2 uses
  %i.axz = add nuw nsw i32 %.011493140.us.i, 8    ; 2 uses
  %i.aya = or disjoint i32 %i.axz, 7
  %i.ayb = icmp slt i32 %i.aya, %i.auq
  br i1 %i.ayb, label %.noexc1306.us.i, label %._crit_edge3142.loopexit3533.i, !llvm.loop !833

._crit_edge3142.loopexit.i:                       ; preds = %._crit_edge3131.split.us.us.us.i
  %i.ayc = and i32 %i.auq, 2147483640
  br label %._crit_edge3142.i

._crit_edge3142.loopexit3533.i:                   ; preds = %._crit_edge3131.split.us3157.i
  %i.ayd = and i32 %i.auq, 2147483640
  br label %._crit_edge3142.i

._crit_edge3142.i:                                ; preds = %._crit_edge3142.loopexit3533.i, %._crit_edge3142.loopexit.i, %.noexc1306.preheader.i, %.noexc1308.i
  %i.aye = phi <4 x i32> [ zeroinitializer, %.noexc1308.i ], [ %i.awb, %._crit_edge3142.loopexit.i ], [ %i.axu, %._crit_edge3142.loopexit3533.i ], [ zeroinitializer, %.noexc1306.preheader.i ]
  %i.ayf = phi <4 x i32> [ zeroinitializer, %.noexc1308.i ], [ %i.awe, %._crit_edge3142.loopexit.i ], [ %i.axx, %._crit_edge3142.loopexit3533.i ], [ zeroinitializer, %.noexc1306.preheader.i ]
  %.01149.lcssa.i = phi i32 [ 0, %.noexc1308.i ], [ %i.ayc, %._crit_edge3142.loopexit.i ], [ %i.ayd, %._crit_edge3142.loopexit3533.i ], [ %i.avh, %.noexc1306.preheader.i ] ; 6 uses
  %.01143.lcssa.i = phi ptr [ %i.ajo, %.noexc1308.i ], [ %scevgep3748.i, %._crit_edge3142.loopexit.i ], [ %scevgep3741.i, %._crit_edge3142.loopexit3533.i ], [ %i.ajo, %.noexc1306.preheader.i ] ; 3 uses
  %21 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.aye) ; 3 uses
  %22 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ayf) ; 3 uses
  %i.ayg = or disjoint i32 %.01149.lcssa.i, 1
  %i.ayh = icmp slt i32 %i.ayg, %i.auq
  br i1 %i.ayh, label %.noexc1304.lr.ph.i, label %.preheader2812.i

.noexc1304.lr.ph.i:                               ; preds = %._crit_edge3142.i
  %i.ayi = load i32, ptr %i.bm, align 4, !tbaa !75, !noalias !834
  %i.ayj = sext i32 %i.ayi to i64
  %i.ayk = load i32, ptr %i.b, align 4, !tbaa !67
  %i.ayl = mul nsw i32 %i.ayk, %i.auo
  %i.aym = sext i32 %i.ayl to i64
  %i.ayn = mul i64 %i.ajx, %i.ayj
  %i.ayo = mul i64 %i.ayn, %i.aym
  %invariant.gep3189.i = getelementptr i8, ptr %i.ajv, i64 %i.ayo
  %i.ayp = load i32, ptr %i.a, align 4, !tbaa !67
  %i.ayq = mul nsw i32 %i.ayp, %i.aup
  %i.ayr = sext i32 %i.ayq to i64
  %invariant.gep3190.i = getelementptr i8, ptr %invariant.gep3189.i, i64 %i.ayr
  %i.ays = load i32, ptr %i.f, align 4, !tbaa !67 ; 3 uses
  %i.ayt = icmp sgt i32 %i.ays, 0
  %i.ayu = load ptr, ptr %i.g, align 8
  br i1 %i.ayt, label %.noexc1304.us.preheader.i, label %.noexc1304.preheader.i

.noexc1304.preheader.i:                           ; preds = %.noexc1304.lr.ph.i
  %i.ayv = or disjoint i32 %.01149.lcssa.i, 2
  %i.ayw = or disjoint i32 %.01149.lcssa.i, 3
  %i.ayx = call i32 @llvm.umax.i32(i32 %i.auq, i32 %i.ayw)
  %reass.sub = sub nsw i32 %i.ayx, %.01149.lcssa.i
  %i.ayy = and i32 %reass.sub, -2
  %i.ayz = add i32 %i.ayy, -2
  %i.aza = add i32 %i.ayv, %i.ayz
  br label %.preheader2812.i

.noexc1304.us.preheader.i:                        ; preds = %.noexc1304.lr.ph.i
  %i.azb = add nsw i32 %i.ays, -1
  %i.azc = zext nneg i32 %i.azb to i64
  %i.azd = shl nuw nsw i64 %i.azc, 2
  %i.aze = zext nneg i32 %.01149.lcssa.i to i64
  %wide.trip.count3757.i = zext nneg i32 %i.ays to i64
  br label %.noexc1304.us.i

.noexc1304.us.i:                                  ; preds = %._crit_edge3175.us.i, %.noexc1304.us.preheader.i
  %indvars.iv3759.i = phi i64 [ %i.aze, %.noexc1304.us.preheader.i ], [ %indvars.iv.next3760.i, %._crit_edge3175.us.i ] ; 2 uses
  %.011353182.us.i = phi i32 [ %21, %.noexc1304.us.preheader.i ], [ %i.bab, %._crit_edge3175.us.i ]
  %.011393181.us.i = phi i32 [ %22, %.noexc1304.us.preheader.i ], [ %i.bag, %._crit_edge3175.us.i ]
  %.211453180.us.i = phi ptr [ %.01143.lcssa.i, %.noexc1304.us.preheader.i ], [ %scevgep3755.i, %._crit_edge3175.us.i ] ; 2 uses
  %.reass3188.us.i = mul i64 %factor.op.mul3147.i, %indvars.iv3759.i
  %gep3191.us.i = getelementptr i8, ptr %invariant.gep3190.i, i64 %.reass3188.us.i
  br label %bb.cf

bb.cf:                                            ; preds = %bb.cf, %.noexc1304.us.i
  %indvars.iv3752.i = phi i64 [ 0, %.noexc1304.us.i ], [ %indvars.iv.next3753.i, %bb.cf ] ; 2 uses
  %.111363173.us.i = phi i32 [ %.011353182.us.i, %.noexc1304.us.i ], [ %i.bab, %bb.cf ]
  %.111403172.us.i = phi i32 [ %.011393181.us.i, %.noexc1304.us.i ], [ %i.bag, %bb.cf ]
  %.311463171.us.i = phi ptr [ %.211453180.us.i, %.noexc1304.us.i ], [ %i.bah, %bb.cf ] ; 5 uses
  %i.azf = getelementptr inbounds nuw [4 x i8], ptr %i.ayu, i64 %indvars.iv3752.i
  %i.azg = load i32, ptr %i.azf, align 4, !tbaa !67
  %i.azh = sext i32 %i.azg to i64
  %i.azi = getelementptr inbounds i8, ptr %gep3191.us.i, i64 %i.azh ; 2 uses
  %i.azj = load i8, ptr %i.azi, align 1, !tbaa !316
  %i.azk = sext i8 %i.azj to i32                  ; 2 uses
  %i.azl = load i8, ptr %.311463171.us.i, align 1, !tbaa !316
  %i.azm = sext i8 %i.azl to i32
  %i.azn = mul nsw i32 %i.azm, %i.azk
  %i.azo = add nsw i32 %i.azn, %.111363173.us.i
  %i.azp = getelementptr inbounds nuw i8, ptr %.311463171.us.i, i64 1
  %i.azq = load i8, ptr %i.azp, align 1, !tbaa !316
  %i.azr = sext i8 %i.azq to i32
  %i.azs = mul nsw i32 %i.azr, %i.azk
  %i.azt = add nsw i32 %i.azs, %.111403172.us.i
  %i.azu = getelementptr inbounds nuw i8, ptr %i.azi, i64 %i.pn
  %i.azv = load i8, ptr %i.azu, align 1, !tbaa !316
  %i.azw = sext i8 %i.azv to i32                  ; 2 uses
  %i.azx = getelementptr inbounds nuw i8, ptr %.311463171.us.i, i64 2
  %i.azy = load i8, ptr %i.azx, align 1, !tbaa !316
  %i.azz = sext i8 %i.azy to i32
  %i.baa = mul nsw i32 %i.azz, %i.azw
  %i.bab = add nsw i32 %i.azo, %i.baa             ; 3 uses
  %i.bac = getelementptr inbounds nuw i8, ptr %.311463171.us.i, i64 3
  %i.bad = load i8, ptr %i.bac, align 1, !tbaa !316
  %i.bae = sext i8 %i.bad to i32
  %i.baf = mul nsw i32 %i.bae, %i.azw
  %i.bag = add nsw i32 %i.azt, %i.baf             ; 3 uses
  %i.bah = getelementptr inbounds nuw i8, ptr %.311463171.us.i, i64 4
  %indvars.iv.next3753.i = add nuw nsw i64 %indvars.iv3752.i, 1 ; 2 uses
  %exitcond3758.not.i = icmp eq i64 %indvars.iv.next3753.i, %wide.trip.count3757.i
  br i1 %exitcond3758.not.i, label %._crit_edge3175.us.i, label %bb.cf, !llvm.loop !837

._crit_edge3175.us.i:                             ; preds = %bb.cf
  %scevgep3754.i = getelementptr i8, ptr %.211453180.us.i, i64 4
  %scevgep3755.i = getelementptr i8, ptr %scevgep3754.i, i64 %i.azd ; 2 uses
  %indvars.iv.next3760.i = add nuw nsw i64 %indvars.iv3759.i, 2 ; 2 uses
  %i.bai = trunc i64 %indvars.iv.next3760.i to i32 ; 2 uses
  %i.baj = or i32 %i.bai, 1
  %i.bak = icmp slt i32 %i.baj, %i.auq
  br i1 %i.bak, label %.noexc1304.us.i, label %.preheader2812.i, !llvm.loop !838

.preheader2812.i:                                 ; preds = %._crit_edge3175.us.i, %.noexc1304.preheader.i, %._crit_edge3142.i
  %.11150.lcssa.i = phi i32 [ %.01149.lcssa.i, %._crit_edge3142.i ], [ %i.aza, %.noexc1304.preheader.i ], [ %i.bai, %._crit_edge3175.us.i ] ; 2 uses
  %.21145.lcssa.i = phi ptr [ %.01143.lcssa.i, %._crit_edge3142.i ], [ %.01143.lcssa.i, %.noexc1304.preheader.i ], [ %scevgep3755.i, %._crit_edge3175.us.i ]
  %.01139.lcssa.i = phi i32 [ %22, %._crit_edge3142.i ], [ %22, %.noexc1304.preheader.i ], [ %i.bag, %._crit_edge3175.us.i ] ; 3 uses
  %.01135.lcssa.i = phi i32 [ %21, %._crit_edge3142.i ], [ %21, %.noexc1304.preheader.i ], [ %i.bab, %._crit_edge3175.us.i ] ; 3 uses
  %i.bal = icmp slt i32 %.11150.lcssa.i, %i.auq
  br i1 %i.bal, label %.noexc1302.lr.ph.i, label %._crit_edge3209.i

.noexc1302.lr.ph.i:                               ; preds = %.preheader2812.i
  %i.bam = load i32, ptr %i.bm, align 4, !tbaa !75, !noalias !839
  %i.ban = sext i32 %i.bam to i64
  %i.bao = load i32, ptr %i.b, align 4, !tbaa !67
  %i.bap = mul nsw i32 %i.bao, %i.auo
  %i.baq = sext i32 %i.bap to i64
  %i.bar = mul i64 %i.ajx, %i.ban
  %i.bas = mul i64 %i.bar, %i.baq
  %invariant.gep3214.i = getelementptr i8, ptr %i.ajv, i64 %i.bas
  %i.bat = load i32, ptr %i.a, align 4, !tbaa !67
  %i.bau = mul nsw i32 %i.bat, %i.aup
  %i.bav = sext i32 %i.bau to i64
  %invariant.gep3215.i = getelementptr i8, ptr %invariant.gep3214.i, i64 %i.bav
  %i.baw = load i32, ptr %i.f, align 4, !tbaa !67 ; 5 uses
  %i.bax = icmp sgt i32 %i.baw, 0
  %i.bay = load ptr, ptr %i.g, align 8            ; 3 uses
  br i1 %i.bax, label %.noexc1302.us.preheader.i, label %._crit_edge3209.i

.noexc1302.us.preheader.i:                        ; preds = %.noexc1302.lr.ph.i
  %i.baz = add nsw i32 %i.baw, -1
  %i.bba = zext nneg i32 %i.baz to i64
  %i.bbb = shl nuw nsw i64 %i.bba, 1
  %i.bbc = zext i32 %.11150.lcssa.i to i64
  %wide.trip.count3767.i = zext nneg i32 %i.baw to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count3767.i, 1
  %i.bbd = icmp eq i32 %i.baw, 1
  %unroll_iter = and i64 %wide.trip.count3767.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod859 = trunc i32 %i.baw to i1
  br label %.noexc1302.us.i

.noexc1302.us.i:                                  ; preds = %._crit_edge3201.us.i, %.noexc1302.us.preheader.i
  %indvars.iv3769.i = phi i64 [ %i.bbc, %.noexc1302.us.preheader.i ], [ %indvars.iv.next3770.i, %._crit_edge3201.us.i ] ; 2 uses
  %.211373208.us.i = phi i32 [ %.01135.lcssa.i, %.noexc1302.us.preheader.i ], [ %.lcssa854, %._crit_edge3201.us.i ] ; 2 uses
  %.211413207.us.i = phi i32 [ %.01139.lcssa.i, %.noexc1302.us.preheader.i ], [ %.lcssa853, %._crit_edge3201.us.i ] ; 2 uses
  %.411473206.us.i = phi ptr [ %.21145.lcssa.i, %.noexc1302.us.preheader.i ], [ %scevgep3765.i, %._crit_edge3201.us.i ] ; 3 uses
  %.reass3213.us.i = mul i64 %factor.op.mul3147.i, %indvars.iv3769.i
  %gep3216.us.i = getelementptr i8, ptr %invariant.gep3215.i, i64 %.reass3213.us.i ; 3 uses
  br i1 %i.bbd, label %.epil.preheader, label %.noexc1302.us.i.new

.noexc1302.us.i.new:                              ; preds = %.noexc1302.us.i, %.noexc1302.us.i.new
  %indvars.iv3762.i = phi i64 [ %indvars.iv.next3763.i.1, %.noexc1302.us.i.new ], [ 0, %.noexc1302.us.i ] ; 3 uses
  %.311383199.us.i = phi i32 [ %i.bce, %.noexc1302.us.i.new ], [ %.211373208.us.i, %.noexc1302.us.i ]
  %.311423198.us.i = phi i32 [ %i.bcj, %.noexc1302.us.i.new ], [ %.211413207.us.i, %.noexc1302.us.i ]
  %.511483197.us.i = phi ptr [ %i.bck, %.noexc1302.us.i.new ], [ %.411473206.us.i, %.noexc1302.us.i ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.noexc1302.us.i.new ], [ 0, %.noexc1302.us.i ]
  %i.bbe = getelementptr inbounds nuw [4 x i8], ptr %i.bay, i64 %indvars.iv3762.i
  %i.bbf = load i32, ptr %i.bbe, align 4, !tbaa !67
  %i.bbg = sext i32 %i.bbf to i64
  %i.bbh = getelementptr inbounds i8, ptr %gep3216.us.i, i64 %i.bbg
  %i.bbi = load i8, ptr %i.bbh, align 1, !tbaa !316
  %i.bbj = sext i8 %i.bbi to i32                  ; 2 uses
  %i.bbk = load i8, ptr %.511483197.us.i, align 1, !tbaa !316
  %i.bbl = sext i8 %i.bbk to i32
  %i.bbm = mul nsw i32 %i.bbl, %i.bbj
  %i.bbn = add nsw i32 %i.bbm, %.311383199.us.i
  %i.bbo = getelementptr inbounds nuw i8, ptr %.511483197.us.i, i64 1
  %i.bbp = load i8, ptr %i.bbo, align 1, !tbaa !316
  %i.bbq = sext i8 %i.bbp to i32
  %i.bbr = mul nsw i32 %i.bbq, %i.bbj
  %i.bbs = add nsw i32 %i.bbr, %.311423198.us.i
  %i.bbt = getelementptr inbounds nuw i8, ptr %.511483197.us.i, i64 2
  %i.bbu = getelementptr inbounds nuw [4 x i8], ptr %i.bay, i64 %indvars.iv3762.i
  %i.bbv = getelementptr inbounds nuw i8, ptr %i.bbu, i64 4
  %i.bbw = load i32, ptr %i.bbv, align 4, !tbaa !67
  %i.bbx = sext i32 %i.bbw to i64
  %i.bby = getelementptr inbounds i8, ptr %gep3216.us.i, i64 %i.bbx
  %i.bbz = load i8, ptr %i.bby, align 1, !tbaa !316
  %i.bca = sext i8 %i.bbz to i32                  ; 2 uses
  %i.bcb = load i8, ptr %i.bbt, align 1, !tbaa !316
  %i.bcc = sext i8 %i.bcb to i32
  %i.bcd = mul nsw i32 %i.bcc, %i.bca
  %i.bce = add nsw i32 %i.bcd, %i.bbn             ; 3 uses
  %i.bcf = getelementptr inbounds nuw i8, ptr %.511483197.us.i, i64 3
  %i.bcg = load i8, ptr %i.bcf, align 1, !tbaa !316
  %i.bch = sext i8 %i.bcg to i32
  %i.bci = mul nsw i32 %i.bch, %i.bca
  %i.bcj = add nsw i32 %i.bci, %i.bbs             ; 3 uses
  %i.bck = getelementptr inbounds nuw i8, ptr %.511483197.us.i, i64 4 ; 2 uses
  %indvars.iv.next3763.i.1 = add nuw nsw i64 %indvars.iv3762.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge3201.us.i.unr-lcssa, label %.noexc1302.us.i.new, !llvm.loop !842

._crit_edge3201.us.i.unr-lcssa:                   ; preds = %.noexc1302.us.i.new
  br i1 %lcmp.mod.not, label %._crit_edge3201.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge3201.us.i.unr-lcssa, %.noexc1302.us.i
  %indvars.iv3762.i.epil.init = phi i64 [ 0, %.noexc1302.us.i ], [ %indvars.iv.next3763.i.1, %._crit_edge3201.us.i.unr-lcssa ]
  %.311383199.us.i.epil.init = phi i32 [ %.211373208.us.i, %.noexc1302.us.i ], [ %i.bce, %._crit_edge3201.us.i.unr-lcssa ]
  %.311423198.us.i.epil.init = phi i32 [ %.211413207.us.i, %.noexc1302.us.i ], [ %i.bcj, %._crit_edge3201.us.i.unr-lcssa ]
  %.511483197.us.i.epil.init = phi ptr [ %.411473206.us.i, %.noexc1302.us.i ], [ %i.bck, %._crit_edge3201.us.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod859)
  %i.bcl = getelementptr inbounds nuw [4 x i8], ptr %i.bay, i64 %indvars.iv3762.i.epil.init
  %i.bcm = load i32, ptr %i.bcl, align 4, !tbaa !67
  %i.bcn = sext i32 %i.bcm to i64
  %i.bco = getelementptr inbounds i8, ptr %gep3216.us.i, i64 %i.bcn
  %i.bcp = load i8, ptr %i.bco, align 1, !tbaa !316
  %i.bcq = sext i8 %i.bcp to i32                  ; 2 uses
  %i.bcr = load i8, ptr %.511483197.us.i.epil.init, align 1, !tbaa !316
  %i.bcs = sext i8 %i.bcr to i32
  %i.bct = mul nsw i32 %i.bcs, %i.bcq
  %i.bcu = add nsw i32 %i.bct, %.311383199.us.i.epil.init
  %i.bcv = getelementptr inbounds nuw i8, ptr %.511483197.us.i.epil.init, i64 1
  %i.bcw = load i8, ptr %i.bcv, align 1, !tbaa !316
  %i.bcx = sext i8 %i.bcw to i32
  %i.bcy = mul nsw i32 %i.bcx, %i.bcq
  %i.bcz = add nsw i32 %i.bcy, %.311423198.us.i.epil.init
  br label %._crit_edge3201.us.i

._crit_edge3201.us.i:                             ; preds = %._crit_edge3201.us.i.unr-lcssa, %.epil.preheader
  %.lcssa854 = phi i32 [ %i.bce, %._crit_edge3201.us.i.unr-lcssa ], [ %i.bcu, %.epil.preheader ] ; 2 uses
  %.lcssa853 = phi i32 [ %i.bcj, %._crit_edge3201.us.i.unr-lcssa ], [ %i.bcz, %.epil.preheader ] ; 2 uses
  %scevgep3764.i = getelementptr i8, ptr %.411473206.us.i, i64 2
  %scevgep3765.i = getelementptr i8, ptr %scevgep3764.i, i64 %i.bbb
  %indvars.iv.next3770.i = add nuw nsw i64 %indvars.iv3769.i, 1 ; 2 uses
  %i.bda = trunc nuw i64 %indvars.iv.next3770.i to i32
  %i.bdb = icmp sgt i32 %i.auq, %i.bda
  br i1 %i.bdb, label %.noexc1302.us.i, label %._crit_edge3209.i, !llvm.loop !843

._crit_edge3209.i:                                ; preds = %._crit_edge3201.us.i, %.noexc1302.lr.ph.i, %.preheader2812.i
  %.21141.lcssa.i = phi i32 [ %.01139.lcssa.i, %.preheader2812.i ], [ %.01139.lcssa.i, %.noexc1302.lr.ph.i ], [ %.lcssa853, %._crit_edge3201.us.i ]
  %.21137.lcssa.i = phi i32 [ %.01135.lcssa.i, %.preheader2812.i ], [ %.01135.lcssa.i, %.noexc1302.lr.ph.i ], [ %.lcssa854, %._crit_edge3201.us.i ]
  store i32 %.21137.lcssa.i, ptr %.210683221.i, align 4, !tbaa !67
  store i32 %.21141.lcssa.i, ptr %.210713220.i, align 4, !tbaa !67
  %i.bdc = getelementptr inbounds nuw i8, ptr %.210683221.i, i64 4
  %i.bdd = getelementptr inbounds nuw i8, ptr %.210713220.i, i64 4
  %i.bde = add nuw nsw i32 %.210753219.i, 1       ; 2 uses
  %exitcond3772.not.i = icmp eq i32 %i.bde, %i.pz
  br i1 %exitcond3772.not.i, label %._crit_edge3222.i, label %.noexc1308.i, !llvm.loop !844

._crit_edge3222.i:                                ; preds = %._crit_edge3209.i, %.preheader2815.i
  %i.bdf = add nuw nsw i32 %.010653223.i, 1       ; 2 uses
  %i.bdg = load i32, ptr %i.h, align 4, !tbaa !67 ; 2 uses
  %i.bdh = icmp slt i32 %i.bdf, %i.bdg
  br i1 %i.bdh, label %_ZN4ncnn3MatD2Ev.exit1399.i, label %._crit_edge3224.loopexit.i, !llvm.loop !845

._crit_edge3518.i:                                ; preds = %._crit_edge3516.i, %._crit_edge3224.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  %.not.i.i.i.i = icmp eq ptr %.sroa.02736.0.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %bb.cg

bb.cg:                                            ; preds = %._crit_edge3518.i
  %i.bdi = ptrtoint ptr %.sroa.10.0.i to i64
  %i.bdj = ptrtoint ptr %.sroa.02736.0.i to i64
  %i.bdk = sub i64 %i.bdi, %i.bdj
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.02736.0.i, i64 noundef %i.bdk) #33
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %bb.cg, %._crit_edge3518.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %.thread218

_ZN4ncnn3MatD2Ev.exit1373.i:                      ; preds = %._crit_edge3516.i, %_ZN4ncnn3MatD2Ev.exit1373.lr.ph.i
  %indvars.iv3877.i = phi i64 [ %i.pd, %_ZN4ncnn3MatD2Ev.exit1373.lr.ph.i ], [ %indvars.iv.next3878.i, %._crit_edge3516.i ] ; 5 uses
  %i.bdl = load ptr, ptr %9, align 16, !tbaa !18, !noalias !846
  %i.bdm = load i64, ptr %i.gb, align 16, !tbaa !20, !noalias !846
  %i.bdn = mul i64 %i.bdm, %indvars.iv3877.i
  %i.bdo = load i64, ptr %i.fu, align 16, !tbaa !65, !noalias !846
  %i.bdp = mul i64 %i.bdn, %i.bdo
  %i.bdq = getelementptr inbounds nuw i8, ptr %i.bdl, i64 %i.bdp ; 2 uses
  br i1 %i.os, label %.noexc1300.lr.ph.i, label %.preheader2811.i

.noexc1300.lr.ph.i:                               ; preds = %_ZN4ncnn3MatD2Ev.exit1373.i
  %i.bdr = trunc nsw i64 %indvars.iv3877.i to i32 ; 3 uses
  %i.bds = sdiv i32 %i.bdr, 4
  %i.bdt = srem i32 %i.bdr, 4
  %.lhs.trunc2802.i = trunc nsw i32 %i.bdt to i8
  %i.bdu = sdiv i8 %.lhs.trunc2802.i, 2
  %.sext2803.i = sext i8 %i.bdu to i32
  %i.bdv = srem i32 %i.bdr, 2
  %i.bdw = add nsw i32 %i.bdv, %i.bds
  %i.bdx = add nsw i32 %i.bdw, %.sext2803.i
  %i.bdy = sext i32 %i.bdx to i64
  %i.bdz = load i32, ptr %i.d, align 4, !tbaa !67 ; 9 uses
  %i.bea = icmp sgt i32 %i.bdz, 7
  %i.beb = load i32, ptr %i.c, align 4            ; 3 uses
  %i.bec = load i32, ptr %i.b, align 4            ; 12 uses
  %i.bed = load i32, ptr %i.a, align 4            ; 9 uses
  %factor.op.mul3339.i = mul i32 %i.bed, %i.beb   ; 4 uses
  %i.bee = load i32, ptr %i.f, align 4            ; 3 uses
  %i.bef = icmp sgt i32 %i.bee, 0                 ; 3 uses
  %i.beg = load ptr, ptr %i.g, align 8            ; 4 uses
  %i.beh = icmp eq i32 %i.beb, 8
  %i.bei = add i32 %i.bee, -1
  %i.bej = zext i32 %i.bei to i64                 ; 3 uses
  %i.bek = shl nuw nsw i64 %i.bej, 3              ; 2 uses
  %i.bel = and i32 %i.bdz, -8                     ; 3 uses
  %i.bem = add i32 %i.bdz, -2
  %i.ben = shl nuw nsw i64 %i.bej, 1
  %wide.trip.count3778.i = zext nneg i32 %i.bee to i64 ; 4 uses
  br label %.noexc1300.i
end_hunk_0
begin_hunk_1_@_ZNK4ncnn19Convolution_x86_avx16forward_int8_x86ERKNS_3MatERS1_RKNS_6OptionE:bb.a
.noexc1272.lr.ph.i.split.us:                      ; preds = %.noexc1272.lr.ph.i
  %i.buv = icmp eq i32 %i.bty, 8
  br i1 %i.buv, label %.noexc1272.i.us.us.preheader, label %.noexc1272.i.us

.noexc1272.i.us.us.preheader:                     ; preds = %.noexc1272.lr.ph.i.split.us
  %xtraiter860 = and i64 %wide.trip.count3812.i, 1
  %i.buw = icmp eq i32 %i.bup, 1
  %unroll_iter865 = and i64 %wide.trip.count3812.i, 2147483646
  %lcmp.mod861.not = icmp eq i64 %xtraiter860, 0
  %lcmp.mod864 = trunc i32 %i.bup to i1
  br label %.noexc1272.i.us.us

.noexc1272.i.us.us:                               ; preds = %.noexc1272.i.us.us.preheader, %._crit_edge3352.loopexit.i.us.us
  %.011063362.i.us.us = phi i32 [ %i.bwx, %._crit_edge3352.loopexit.i.us.us ], [ 0, %.noexc1272.i.us.us.preheader ] ; 2 uses
  %.011093361.i.us.us = phi ptr [ %scevgep3817.i.us.us, %._crit_edge3352.loopexit.i.us.us ], [ %i.bfd, %.noexc1272.i.us.us.preheader ] ; 3 uses
  %i.bux = phi <4 x i32> [ %.lcssa787, %._crit_edge3352.loopexit.i.us.us ], [ zeroinitializer, %.noexc1272.i.us.us.preheader ] ; 2 uses
  %i.buy = phi <4 x i32> [ %.lcssa788, %._crit_edge3352.loopexit.i.us.us ], [ zeroinitializer, %.noexc1272.i.us.us.preheader ] ; 2 uses
  %i.buz = lshr exact i32 %.011063362.i.us.us, 3
  %i.bva = zext nneg i32 %i.buz to i64
  %.reass3369.i.us.us = mul i64 %factor.op.mul3368.i, %i.bva ; 2 uses
  %gep3372.i.us.us = getelementptr i8, ptr %invariant.gep3371.i, i64 %.reass3369.i.us.us ; 3 uses
  %gep3377.i.us.us = getelementptr i8, ptr %invariant.gep3376.i, i64 %.reass3369.i.us.us ; 3 uses
  br i1 %i.buw, label %.lr.ph3351.split.us.i.us.us.epil.preheader, label %.lr.ph3351.split.us.i.us.us

.lr.ph3351.split.us.i.us.us:                      ; preds = %.noexc1272.i.us.us, %.lr.ph3351.split.us.i.us.us
  %indvars.iv3814.i.us.us = phi i64 [ %indvars.iv.next3815.i.us.us.1, %.lr.ph3351.split.us.i.us.us ], [ 0, %.noexc1272.i.us.us ] ; 3 uses
  %.111103349.us.i.us.us = phi ptr [ %i.bwh, %.lr.ph3351.split.us.i.us.us ], [ %.011093361.i.us.us, %.noexc1272.i.us.us ] ; 3 uses
  %.127483348.us.i.us.us = phi <4 x i32> [ %i.bwg, %.lr.ph3351.split.us.i.us.us ], [ %i.bux, %.noexc1272.i.us.us ]
  %.127503347.us.i.us.us = phi <4 x i32> [ %i.bwe, %.lr.ph3351.split.us.i.us.us ], [ %i.buy, %.noexc1272.i.us.us ]
  %niter866 = phi i64 [ %niter866.next.1, %.lr.ph3351.split.us.i.us.us ], [ 0, %.noexc1272.i.us.us ]
  %i.bvb = getelementptr inbounds nuw [4 x i8], ptr %i.bur, i64 %indvars.iv3814.i.us.us
  %i.bvc = load i32, ptr %i.bvb, align 4, !tbaa !67
  %i.bvd = sext i32 %i.bvc to i64                 ; 2 uses
  %i.bve = getelementptr inbounds i8, ptr %gep3372.i.us.us, i64 %i.bvd
  %i.bvf = getelementptr inbounds i8, ptr %gep3377.i.us.us, i64 %i.bvd
  %i.bvg = load <8 x i8>, ptr %i.bve, align 1, !tbaa !316
  %i.bvh = load <8 x i8>, ptr %i.bvf, align 1, !tbaa !316
  %i.bvi = sext <8 x i8> %i.bvg to <8 x i16>
  %i.bvj = sext <8 x i8> %i.bvh to <8 x i16>
  %i.bvk = load <8 x i8>, ptr %.111103349.us.i.us.us, align 1, !tbaa !316
  %i.bvl = sext <8 x i8> %i.bvk to <8 x i16>      ; 2 uses
  %i.bvm = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bvi, <8 x i16> %i.bvl)
  %i.bvn = add <4 x i32> %i.bvm, %.127503347.us.i.us.us
  %i.bvo = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bvj, <8 x i16> %i.bvl)
  %i.bvp = add <4 x i32> %i.bvo, %.127483348.us.i.us.us
  %i.bvq = getelementptr inbounds nuw i8, ptr %.111103349.us.i.us.us, i64 8
  %i.bvr = getelementptr inbounds nuw [4 x i8], ptr %i.bur, i64 %indvars.iv3814.i.us.us
  %i.bvs = getelementptr inbounds nuw i8, ptr %i.bvr, i64 4
  %i.bvt = load i32, ptr %i.bvs, align 4, !tbaa !67
  %i.bvu = sext i32 %i.bvt to i64                 ; 2 uses
  %i.bvv = getelementptr inbounds i8, ptr %gep3372.i.us.us, i64 %i.bvu
  %i.bvw = getelementptr inbounds i8, ptr %gep3377.i.us.us, i64 %i.bvu
  %i.bvx = load <8 x i8>, ptr %i.bvv, align 1, !tbaa !316
  %i.bvy = load <8 x i8>, ptr %i.bvw, align 1, !tbaa !316
  %i.bvz = sext <8 x i8> %i.bvx to <8 x i16>
  %i.bwa = sext <8 x i8> %i.bvy to <8 x i16>
  %i.bwb = load <8 x i8>, ptr %i.bvq, align 1, !tbaa !316
  %i.bwc = sext <8 x i8> %i.bwb to <8 x i16>      ; 2 uses
  %i.bwd = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bvz, <8 x i16> %i.bwc)
  %i.bwe = add <4 x i32> %i.bwd, %i.bvn           ; 3 uses
  %i.bwf = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bwa, <8 x i16> %i.bwc)
  %i.bwg = add <4 x i32> %i.bwf, %i.bvp           ; 3 uses
  %i.bwh = getelementptr inbounds nuw i8, ptr %.111103349.us.i.us.us, i64 16 ; 2 uses
  %indvars.iv.next3815.i.us.us.1 = add nuw nsw i64 %indvars.iv3814.i.us.us, 2 ; 2 uses
  %niter866.next.1 = add i64 %niter866, 2         ; 2 uses
  %niter866.ncmp.1 = icmp eq i64 %niter866.next.1, %unroll_iter865
  br i1 %niter866.ncmp.1, label %._crit_edge3352.loopexit.i.us.us.unr-lcssa, label %.lr.ph3351.split.us.i.us.us, !llvm.loop !877

._crit_edge3352.loopexit.i.us.us.unr-lcssa:       ; preds = %.lr.ph3351.split.us.i.us.us
  br i1 %lcmp.mod861.not, label %._crit_edge3352.loopexit.i.us.us, label %.lr.ph3351.split.us.i.us.us.epil.preheader

.lr.ph3351.split.us.i.us.us.epil.preheader:       ; preds = %._crit_edge3352.loopexit.i.us.us.unr-lcssa, %.noexc1272.i.us.us
  %indvars.iv3814.i.us.us.epil.init = phi i64 [ 0, %.noexc1272.i.us.us ], [ %indvars.iv.next3815.i.us.us.1, %._crit_edge3352.loopexit.i.us.us.unr-lcssa ]
  %.111103349.us.i.us.us.epil.init = phi ptr [ %.011093361.i.us.us, %.noexc1272.i.us.us ], [ %i.bwh, %._crit_edge3352.loopexit.i.us.us.unr-lcssa ]
  %.127483348.us.i.us.us.epil.init = phi <4 x i32> [ %i.bux, %.noexc1272.i.us.us ], [ %i.bwg, %._crit_edge3352.loopexit.i.us.us.unr-lcssa ]
  %.127503347.us.i.us.us.epil.init = phi <4 x i32> [ %i.buy, %.noexc1272.i.us.us ], [ %i.bwe, %._crit_edge3352.loopexit.i.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod864)
  %i.bwi = getelementptr inbounds nuw [4 x i8], ptr %i.bur, i64 %indvars.iv3814.i.us.us.epil.init
  %i.bwj = load i32, ptr %i.bwi, align 4, !tbaa !67
  %i.bwk = sext i32 %i.bwj to i64                 ; 2 uses
  %i.bwl = getelementptr inbounds i8, ptr %gep3372.i.us.us, i64 %i.bwk
  %i.bwm = getelementptr inbounds i8, ptr %gep3377.i.us.us, i64 %i.bwk
  %i.bwn = load <8 x i8>, ptr %i.bwl, align 1, !tbaa !316
  %i.bwo = load <8 x i8>, ptr %i.bwm, align 1, !tbaa !316
  %i.bwp = sext <8 x i8> %i.bwn to <8 x i16>
  %i.bwq = sext <8 x i8> %i.bwo to <8 x i16>
  %i.bwr = load <8 x i8>, ptr %.111103349.us.i.us.us.epil.init, align 1, !tbaa !316
  %i.bws = sext <8 x i8> %i.bwr to <8 x i16>      ; 2 uses
  %i.bwt = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bwp, <8 x i16> %i.bws)
  %i.bwu = add <4 x i32> %i.bwt, %.127503347.us.i.us.us.epil.init
  %i.bwv = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bwq, <8 x i16> %i.bws)
  %i.bww = add <4 x i32> %i.bwv, %.127483348.us.i.us.us.epil.init
  br label %._crit_edge3352.loopexit.i.us.us

._crit_edge3352.loopexit.i.us.us:                 ; preds = %._crit_edge3352.loopexit.i.us.us.unr-lcssa, %.lr.ph3351.split.us.i.us.us.epil.preheader
  %.lcssa788 = phi <4 x i32> [ %i.bwe, %._crit_edge3352.loopexit.i.us.us.unr-lcssa ], [ %i.bwu, %.lr.ph3351.split.us.i.us.us.epil.preheader ] ; 2 uses
  %.lcssa787 = phi <4 x i32> [ %i.bwg, %._crit_edge3352.loopexit.i.us.us.unr-lcssa ], [ %i.bww, %.lr.ph3351.split.us.i.us.us.epil.preheader ] ; 2 uses
  %scevgep3816.i.us.us = getelementptr i8, ptr %.011093361.i.us.us, i64 8
  %scevgep3817.i.us.us = getelementptr i8, ptr %scevgep3816.i.us.us, i64 %i.buu ; 2 uses
  %i.bwx = add nuw nsw i32 %.011063362.i.us.us, 8 ; 2 uses
  %i.bwy = or disjoint i32 %i.bwx, 7
  %i.bwz = icmp slt i32 %i.bwy, %i.btw
  br i1 %i.bwz, label %.noexc1272.i.us.us, label %._crit_edge3363.loopexit.i, !llvm.loop !878

.noexc1272.i.us:                                  ; preds = %.noexc1272.lr.ph.i.split.us, %._crit_edge3352.loopexit3519.i.us
  %.011063362.i.us = phi i32 [ %i.bzo, %._crit_edge3352.loopexit3519.i.us ], [ 0, %.noexc1272.lr.ph.i.split.us ] ; 2 uses
  %.011093361.i.us = phi ptr [ %scevgep3810.i.us, %._crit_edge3352.loopexit3519.i.us ], [ %i.bfd, %.noexc1272.lr.ph.i.split.us ] ; 2 uses
  %i.bxa = phi <4 x i32> [ %i.bzm, %._crit_edge3352.loopexit3519.i.us ], [ zeroinitializer, %.noexc1272.lr.ph.i.split.us ]
  %i.bxb = phi <4 x i32> [ %i.bzk, %._crit_edge3352.loopexit3519.i.us ], [ zeroinitializer, %.noexc1272.lr.ph.i.split.us ]
  %i.bxc = sdiv i32 %.011063362.i.us, %i.bty
  %i.bxd = sext i32 %i.bxc to i64
  %.reass3369.i.us = mul i64 %factor.op.mul3368.i, %i.bxd ; 2 uses
  %gep3372.i.us = getelementptr i8, ptr %invariant.gep3371.i, i64 %.reass3369.i.us
  %gep3377.i.us = getelementptr i8, ptr %invariant.gep3376.i, i64 %.reass3369.i.us
  br label %.lr.ph3351.split.i.us

.lr.ph3351.split.i.us:                            ; preds = %.noexc1272.i.us, %.lr.ph3351.split.i.us
  %indvars.iv3807.i.us = phi i64 [ %indvars.iv.next3808.i.us, %.lr.ph3351.split.i.us ], [ 0, %.noexc1272.i.us ] ; 2 uses
  %.111103349.i.us = phi ptr [ %i.bzn, %.lr.ph3351.split.i.us ], [ %.011093361.i.us, %.noexc1272.i.us ] ; 2 uses
  %.127483348.i.us = phi <4 x i32> [ %i.bzm, %.lr.ph3351.split.i.us ], [ %i.bxa, %.noexc1272.i.us ]
  %.127503347.i.us = phi <4 x i32> [ %i.bzk, %.lr.ph3351.split.i.us ], [ %i.bxb, %.noexc1272.i.us ]
  %i.bxe = getelementptr inbounds nuw [4 x i8], ptr %i.bur, i64 %indvars.iv3807.i.us
  %i.bxf = load i32, ptr %i.bxe, align 4, !tbaa !67
  %i.bxg = sext i32 %i.bxf to i64                 ; 2 uses
  %i.bxh = getelementptr inbounds i8, ptr %gep3372.i.us, i64 %i.bxg ; 8 uses
  %i.bxi = getelementptr inbounds i8, ptr %gep3377.i.us, i64 %i.bxg ; 8 uses
  %i.bxj = load i8, ptr %i.bxh, align 1, !tbaa !316
  %i.bxk = getelementptr inbounds nuw i8, ptr %i.bxh, i64 %i.mc
  %i.bxl = load i8, ptr %i.bxk, align 1, !tbaa !316
  %i.bxm = getelementptr inbounds nuw i8, ptr %i.bxh, i64 %i.ov
  %i.bxn = load i8, ptr %i.bxm, align 1, !tbaa !316
  %i.bxo = getelementptr inbounds nuw i8, ptr %i.bxh, i64 %i.ow
  %i.bxp = load i8, ptr %i.bxo, align 1, !tbaa !316
  %i.bxq = getelementptr inbounds nuw i8, ptr %i.bxh, i64 %i.ox
  %i.bxr = load i8, ptr %i.bxq, align 1, !tbaa !316
  %i.bxs = getelementptr inbounds nuw i8, ptr %i.bxh, i64 %i.oy
  %i.bxt = load i8, ptr %i.bxs, align 1, !tbaa !316
  %i.bxu = getelementptr inbounds nuw i8, ptr %i.bxh, i64 %i.oz
  %i.bxv = load i8, ptr %i.bxu, align 1, !tbaa !316
  %i.bxw = getelementptr inbounds nuw i8, ptr %i.bxh, i64 %i.pa
  %i.bxx = load i8, ptr %i.bxw, align 1, !tbaa !316
  %i.bxy = insertelement <16 x i8> poison, i8 %i.bxj, i64 0
  %i.bxz = insertelement <16 x i8> %i.bxy, i8 %i.bxl, i64 1
  %i.bya = insertelement <16 x i8> %i.bxz, i8 %i.bxn, i64 2
  %i.byb = insertelement <16 x i8> %i.bya, i8 %i.bxp, i64 3
  %i.byc = insertelement <16 x i8> %i.byb, i8 %i.bxr, i64 4
  %i.byd = insertelement <16 x i8> %i.byc, i8 %i.bxt, i64 5
  %i.bye = insertelement <16 x i8> %i.byd, i8 %i.bxv, i64 6
  %i.byf = insertelement <16 x i8> %i.bye, i8 %i.bxx, i64 7
  %i.byg = load i8, ptr %i.bxi, align 1, !tbaa !316
  %i.byh = getelementptr inbounds nuw i8, ptr %i.bxi, i64 %i.mc
  %i.byi = load i8, ptr %i.byh, align 1, !tbaa !316
  %i.byj = getelementptr inbounds nuw i8, ptr %i.bxi, i64 %i.ov
  %i.byk = load i8, ptr %i.byj, align 1, !tbaa !316
  %i.byl = getelementptr inbounds nuw i8, ptr %i.bxi, i64 %i.ow
  %i.bym = load i8, ptr %i.byl, align 1, !tbaa !316
  %i.byn = getelementptr inbounds nuw i8, ptr %i.bxi, i64 %i.ox
  %i.byo = load i8, ptr %i.byn, align 1, !tbaa !316
  %i.byp = getelementptr inbounds nuw i8, ptr %i.bxi, i64 %i.oy
  %i.byq = load i8, ptr %i.byp, align 1, !tbaa !316
  %i.byr = getelementptr inbounds nuw i8, ptr %i.bxi, i64 %i.oz
  %i.bys = load i8, ptr %i.byr, align 1, !tbaa !316
  %i.byt = getelementptr inbounds nuw i8, ptr %i.bxi, i64 %i.pa
  %i.byu = load i8, ptr %i.byt, align 1, !tbaa !316
  %i.byv = insertelement <16 x i8> poison, i8 %i.byg, i64 0
  %i.byw = insertelement <16 x i8> %i.byv, i8 %i.byi, i64 1
  %i.byx = insertelement <16 x i8> %i.byw, i8 %i.byk, i64 2
  %i.byy = insertelement <16 x i8> %i.byx, i8 %i.bym, i64 3
  %i.byz = insertelement <16 x i8> %i.byy, i8 %i.byo, i64 4
  %i.bza = insertelement <16 x i8> %i.byz, i8 %i.byq, i64 5
  %i.bzb = insertelement <16 x i8> %i.bza, i8 %i.bys, i64 6
  %i.bzc = insertelement <16 x i8> %i.bzb, i8 %i.byu, i64 7
  %i.bzd = shufflevector <16 x i8> %i.byf, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bze = sext <8 x i8> %i.bzd to <8 x i16>
  %i.bzf = shufflevector <16 x i8> %i.bzc, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bzg = sext <8 x i8> %i.bzf to <8 x i16>
  %i.bzh = load <8 x i8>, ptr %.111103349.i.us, align 1, !tbaa !316
  %i.bzi = sext <8 x i8> %i.bzh to <8 x i16>      ; 2 uses
  %i.bzj = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bze, <8 x i16> %i.bzi)
  %i.bzk = add <4 x i32> %i.bzj, %.127503347.i.us ; 3 uses
  %i.bzl = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bzg, <8 x i16> %i.bzi)
  %i.bzm = add <4 x i32> %i.bzl, %.127483348.i.us ; 3 uses
  %i.bzn = getelementptr inbounds nuw i8, ptr %.111103349.i.us, i64 8
  %indvars.iv.next3808.i.us = add nuw nsw i64 %indvars.iv3807.i.us, 1 ; 2 uses
  %exitcond3813.not.i.us = icmp eq i64 %indvars.iv.next3808.i.us, %wide.trip.count3812.i
  br i1 %exitcond3813.not.i.us, label %._crit_edge3352.loopexit3519.i.us, label %.lr.ph3351.split.i.us, !llvm.loop !877

._crit_edge3352.loopexit3519.i.us:                ; preds = %.lr.ph3351.split.i.us
  %scevgep3809.i.us = getelementptr i8, ptr %.011093361.i.us, i64 8
  %scevgep3810.i.us = getelementptr i8, ptr %scevgep3809.i.us, i64 %i.buu ; 2 uses
  %i.bzo = add nuw nsw i32 %.011063362.i.us, 8    ; 2 uses
  %i.bzp = or disjoint i32 %i.bzo, 7
  %i.bzq = icmp slt i32 %i.bzp, %i.btw
  br i1 %i.bzq, label %.noexc1272.i.us, label %._crit_edge3363.loopexit.i, !llvm.loop !878

._crit_edge3363.loopexit.i:                       ; preds = %._crit_edge3352.loopexit3519.i.us, %._crit_edge3352.loopexit.i.us.us, %.noexc1272.lr.ph.i
  %i.bzr = phi <4 x i32> [ zeroinitializer, %.noexc1272.lr.ph.i ], [ %.lcssa788, %._crit_edge3352.loopexit.i.us.us ], [ %i.bzk, %._crit_edge3352.loopexit3519.i.us ]
  %i.bzs = phi <4 x i32> [ zeroinitializer, %.noexc1272.lr.ph.i ], [ %.lcssa787, %._crit_edge3352.loopexit.i.us.us ], [ %i.bzm, %._crit_edge3352.loopexit3519.i.us ]
  %.us-phi345 = phi ptr [ %i.bfd, %.noexc1272.lr.ph.i ], [ %scevgep3817.i.us.us, %._crit_edge3352.loopexit.i.us.us ], [ %scevgep3810.i.us, %._crit_edge3352.loopexit3519.i.us ]
  %i.bzt = and i32 %i.btw, 2147483640
  %23 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bzr)
  %24 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bzs)
  br label %._crit_edge3363.i

._crit_edge3363.i:                                ; preds = %._crit_edge3363.loopexit.i, %.noexc1274.i
  %25 = phi i32 [ 0, %.noexc1274.i ], [ %23, %._crit_edge3363.loopexit.i ] ; 3 uses
  %26 = phi i32 [ 0, %.noexc1274.i ], [ %24, %._crit_edge3363.loopexit.i ] ; 3 uses
  %.01109.lcssa.i = phi ptr [ %i.bfd, %.noexc1274.i ], [ %.us-phi345, %._crit_edge3363.loopexit.i ] ; 3 uses
  %.01106.lcssa.i = phi i32 [ 0, %.noexc1274.i ], [ %i.bzt, %._crit_edge3363.loopexit.i ] ; 5 uses
  %i.bzu = or disjoint i32 %.01106.lcssa.i, 1
  %i.bzv = icmp slt i32 %i.bzu, %i.btw
  br i1 %i.bzv, label %.noexc1268.lr.ph.i, label %.preheader2808.i

.noexc1268.lr.ph.i:                               ; preds = %._crit_edge3363.i
  %i.bzw = load i32, ptr %i.bm, align 4, !tbaa !75, !noalias !879
  %i.bzx = sext i32 %i.bzw to i64
  %i.bzy = load i32, ptr %i.b, align 4, !tbaa !67 ; 2 uses
  %i.bzz = mul nsw i32 %i.bzy, %i.bts
  %i.caa = sext i32 %i.bzz to i64
  %i.cab = mul i64 %i.bfg, %i.bzx                 ; 2 uses
  %i.cac = mul i64 %i.cab, %i.caa
  %invariant.gep3397.i = getelementptr i8, ptr %i.bfe, i64 %i.cac
  %i.cad = load i32, ptr %i.a, align 4, !tbaa !67 ; 2 uses
  %i.cae = mul nsw i32 %i.cad, %i.btu
  %i.caf = sext i32 %i.cae to i64
  %invariant.gep3398.i = getelementptr i8, ptr %invariant.gep3397.i, i64 %i.caf
  %i.cag = mul nsw i32 %i.bzy, %i.btt
  %i.cah = sext i32 %i.cag to i64
  %i.cai = mul i64 %i.cab, %i.cah
  %invariant.gep3402.i = getelementptr i8, ptr %i.bfe, i64 %i.cai
  %i.caj = mul nsw i32 %i.cad, %i.btv
  %i.cak = sext i32 %i.caj to i64
  %invariant.gep3403.i = getelementptr i8, ptr %invariant.gep3402.i, i64 %i.cak
  %i.cal = load i32, ptr %i.f, align 4, !tbaa !67 ; 3 uses
  %i.cam = icmp sgt i32 %i.cal, 0
  %i.can = load ptr, ptr %i.g, align 8
  br i1 %i.cam, label %.noexc1268.us.preheader.i, label %.noexc1268.preheader.i

.noexc1268.preheader.i:                           ; preds = %.noexc1268.lr.ph.i
  %i.cao = or disjoint i32 %.01106.lcssa.i, 2
  %i.cap = add nsw i32 %i.btw, -2
  %i.caq = sub nsw i32 %i.cap, %.01106.lcssa.i
  %i.car = and i32 %i.caq, -2
  %i.cas = add i32 %i.cao, %i.car
  br label %.preheader2808.i

.noexc1268.us.preheader.i:                        ; preds = %.noexc1268.lr.ph.i
  %i.cat = add nsw i32 %i.cal, -1
  %i.cau = zext nneg i32 %i.cat to i64
  %i.cav = shl nuw nsw i64 %i.cau, 1
  %i.caw = zext nneg i32 %.01106.lcssa.i to i64
  %wide.trip.count3826.i = zext nneg i32 %i.cal to i64
  br label %.noexc1268.us.i

.noexc1268.us.i:                                  ; preds = %._crit_edge3383.us.i, %.noexc1268.us.preheader.i
  %indvars.iv3828.i = phi i64 [ %i.caw, %.noexc1268.us.preheader.i ], [ %indvars.iv.next3829.i, %._crit_edge3383.us.i ] ; 2 uses
  %.211113389.us.i = phi ptr [ %.01109.lcssa.i, %.noexc1268.us.preheader.i ], [ %scevgep3824.i, %._crit_edge3383.us.i ] ; 2 uses
  %.011153388.us.i = phi i32 [ %26, %.noexc1268.us.preheader.i ], [ %i.cby, %._crit_edge3383.us.i ]
  %.011193387.us.i = phi i32 [ %25, %.noexc1268.us.preheader.i ], [ %i.cbp, %._crit_edge3383.us.i ]
  %.reass3396.us.i = mul i64 %factor.op.mul3368.i, %indvars.iv3828.i ; 2 uses
  %gep3399.us.i = getelementptr i8, ptr %invariant.gep3398.i, i64 %.reass3396.us.i
  %gep3404.us.i = getelementptr i8, ptr %invariant.gep3403.i, i64 %.reass3396.us.i
  br label %bb.cj

bb.cj:                                            ; preds = %bb.cj, %.noexc1268.us.i
  %indvars.iv3821.i = phi i64 [ 0, %.noexc1268.us.i ], [ %indvars.iv.next3822.i, %bb.cj ] ; 2 uses
  %.311123380.us.i = phi ptr [ %.211113389.us.i, %.noexc1268.us.i ], [ %i.cbz, %bb.cj ] ; 3 uses
  %.111163379.us.i = phi i32 [ %.011153388.us.i, %.noexc1268.us.i ], [ %i.cby, %bb.cj ]
  %.111203378.us.i = phi i32 [ %.011193387.us.i, %.noexc1268.us.i ], [ %i.cbp, %bb.cj ]
  %i.cax = getelementptr inbounds nuw [4 x i8], ptr %i.can, i64 %indvars.iv3821.i
  %i.cay = load i32, ptr %i.cax, align 4, !tbaa !67
  %i.caz = sext i32 %i.cay to i64                 ; 2 uses
  %i.cba = getelementptr inbounds i8, ptr %gep3399.us.i, i64 %i.caz ; 2 uses
  %i.cbb = getelementptr inbounds i8, ptr %gep3404.us.i, i64 %i.caz ; 2 uses
  %i.cbc = load i8, ptr %i.cba, align 1, !tbaa !316
  %i.cbd = sext i8 %i.cbc to i32
  %i.cbe = load i8, ptr %.311123380.us.i, align 1, !tbaa !316
  %i.cbf = sext i8 %i.cbe to i32                  ; 2 uses
  %i.cbg = mul nsw i32 %i.cbf, %i.cbd
  %i.cbh = add nsw i32 %i.cbg, %.111203378.us.i
  %i.cbi = getelementptr inbounds nuw i8, ptr %i.cba, i64 %i.mc
  %i.cbj = load i8, ptr %i.cbi, align 1, !tbaa !316
  %i.cbk = sext i8 %i.cbj to i32
  %i.cbl = getelementptr inbounds nuw i8, ptr %.311123380.us.i, i64 1
  %i.cbm = load i8, ptr %i.cbl, align 1, !tbaa !316
  %i.cbn = sext i8 %i.cbm to i32                  ; 2 uses
  %i.cbo = mul nsw i32 %i.cbn, %i.cbk
  %i.cbp = add nsw i32 %i.cbh, %i.cbo             ; 3 uses
  %i.cbq = load i8, ptr %i.cbb, align 1, !tbaa !316
  %i.cbr = sext i8 %i.cbq to i32
  %i.cbs = mul nsw i32 %i.cbr, %i.cbf
  %i.cbt = add nsw i32 %i.cbs, %.111163379.us.i
  %i.cbu = getelementptr inbounds nuw i8, ptr %i.cbb, i64 %i.mc
  %i.cbv = load i8, ptr %i.cbu, align 1, !tbaa !316
  %i.cbw = sext i8 %i.cbv to i32
  %i.cbx = mul nsw i32 %i.cbw, %i.cbn
  %i.cby = add nsw i32 %i.cbt, %i.cbx             ; 3 uses
  %i.cbz = getelementptr inbounds nuw i8, ptr %.311123380.us.i, i64 2
  %indvars.iv.next3822.i = add nuw nsw i64 %indvars.iv3821.i, 1 ; 2 uses
  %exitcond3827.not.i = icmp eq i64 %indvars.iv.next3822.i, %wide.trip.count3826.i
  br i1 %exitcond3827.not.i, label %._crit_edge3383.us.i, label %bb.cj, !llvm.loop !882

._crit_edge3383.us.i:                             ; preds = %bb.cj
  %scevgep3823.i = getelementptr i8, ptr %.211113389.us.i, i64 2
  %scevgep3824.i = getelementptr i8, ptr %scevgep3823.i, i64 %i.cav ; 2 uses
  %indvars.iv.next3829.i = add nuw nsw i64 %indvars.iv3828.i, 2 ; 2 uses
  %i.cca = trunc i64 %indvars.iv.next3829.i to i32 ; 2 uses
  %i.ccb = or i32 %i.cca, 1
  %i.ccc = icmp slt i32 %i.ccb, %i.btw
  br i1 %i.ccc, label %.noexc1268.us.i, label %.preheader2808.i, !llvm.loop !883

.preheader2808.i:                                 ; preds = %._crit_edge3383.us.i, %.noexc1268.preheader.i, %._crit_edge3363.i
  %.01119.lcssa.i = phi i32 [ %25, %._crit_edge3363.i ], [ %25, %.noexc1268.preheader.i ], [ %i.cbp, %._crit_edge3383.us.i ] ; 3 uses
  %.01115.lcssa.i = phi i32 [ %26, %._crit_edge3363.i ], [ %26, %.noexc1268.preheader.i ], [ %i.cby, %._crit_edge3383.us.i ] ; 3 uses
  %.21111.lcssa.i = phi ptr [ %.01109.lcssa.i, %._crit_edge3363.i ], [ %.01109.lcssa.i, %.noexc1268.preheader.i ], [ %scevgep3824.i, %._crit_edge3383.us.i ]
  %.11107.lcssa.i = phi i32 [ %.01106.lcssa.i, %._crit_edge3363.i ], [ %i.cas, %.noexc1268.preheader.i ], [ %i.cca, %._crit_edge3383.us.i ] ; 2 uses
  %i.ccd = icmp slt i32 %.11107.lcssa.i, %i.btw
  br i1 %i.ccd, label %.noexc1264.lr.ph.i, label %._crit_edge3422.i

.noexc1264.lr.ph.i:                               ; preds = %.preheader2808.i
  %i.cce = load i32, ptr %i.bm, align 4, !tbaa !75, !noalias !884
  %i.ccf = sext i32 %i.cce to i64
  %i.ccg = load i32, ptr %i.b, align 4, !tbaa !67 ; 2 uses
  %i.cch = mul nsw i32 %i.ccg, %i.bts
  %i.cci = sext i32 %i.cch to i64
  %i.ccj = mul i64 %i.bfg, %i.ccf                 ; 2 uses
  %i.cck = mul i64 %i.ccj, %i.cci
  %invariant.gep3427.i = getelementptr i8, ptr %i.bfe, i64 %i.cck
  %i.ccl = load i32, ptr %i.a, align 4, !tbaa !67 ; 2 uses
  %i.ccm = mul nsw i32 %i.ccl, %i.btu
  %i.ccn = sext i32 %i.ccm to i64
  %invariant.gep3428.i = getelementptr i8, ptr %invariant.gep3427.i, i64 %i.ccn
  %i.cco = mul nsw i32 %i.ccg, %i.btt
  %i.ccp = sext i32 %i.cco to i64
  %i.ccq = mul i64 %i.ccj, %i.ccp
  %invariant.gep3432.i = getelementptr i8, ptr %i.bfe, i64 %i.ccq
  %i.ccr = mul nsw i32 %i.ccl, %i.btv
  %i.ccs = sext i32 %i.ccr to i64
  %invariant.gep3433.i = getelementptr i8, ptr %invariant.gep3432.i, i64 %i.ccs
  %i.cct = load i32, ptr %i.f, align 4, !tbaa !67 ; 4 uses
  %i.ccu = icmp sgt i32 %i.cct, 0
  %i.ccv = load ptr, ptr %i.g, align 8            ; 3 uses
  br i1 %i.ccu, label %.noexc1264.us.preheader.i, label %._crit_edge3422.i

.noexc1264.us.preheader.i:                        ; preds = %.noexc1264.lr.ph.i
  %i.ccw = zext i32 %.11107.lcssa.i to i64
  %i.ccx = zext nneg i32 %i.cct to i64            ; 3 uses
  %xtraiter868 = and i64 %i.ccx, 1
  %i.ccy = icmp eq i32 %i.cct, 1
  %unroll_iter873 = and i64 %i.ccx, 2147483646
  %lcmp.mod869.not = icmp eq i64 %xtraiter868, 0
  %lcmp.mod872 = trunc i32 %i.cct to i1
  br label %.noexc1264.us.i

.noexc1264.us.i:                                  ; preds = %._crit_edge3414.us.i, %.noexc1264.us.preheader.i
  %indvars.iv3838.i = phi i64 [ %i.ccw, %.noexc1264.us.preheader.i ], [ %indvars.iv.next3839.i, %._crit_edge3414.us.i ] ; 2 uses
  %.411133420.us.i = phi ptr [ %.21111.lcssa.i, %.noexc1264.us.preheader.i ], [ %i.cev, %._crit_edge3414.us.i ] ; 3 uses
  %.211173419.us.i = phi i32 [ %.01115.lcssa.i, %.noexc1264.us.preheader.i ], [ %.lcssa792, %._crit_edge3414.us.i ] ; 2 uses
  %.211213418.us.i = phi i32 [ %.01119.lcssa.i, %.noexc1264.us.preheader.i ], [ %.lcssa793, %._crit_edge3414.us.i ] ; 2 uses
  %.reass3426.us.i = mul i64 %factor.op.mul3368.i, %indvars.iv3838.i ; 2 uses
  %gep3429.us.i = getelementptr i8, ptr %invariant.gep3428.i, i64 %.reass3426.us.i ; 3 uses
  %gep3434.us.i = getelementptr i8, ptr %invariant.gep3433.i, i64 %.reass3426.us.i ; 3 uses
  br i1 %i.ccy, label %.epil.preheader867, label %.noexc1264.us.i.new

.noexc1264.us.i.new:                              ; preds = %.noexc1264.us.i, %.noexc1264.us.i.new
  %indvars.iv3831.i = phi i64 [ %indvars.iv.next3832.i.1, %.noexc1264.us.i.new ], [ 0, %.noexc1264.us.i ] ; 3 uses
  %.511143411.us.i = phi ptr [ %i.cef, %.noexc1264.us.i.new ], [ %.411133420.us.i, %.noexc1264.us.i ] ; 3 uses
  %.311183410.us.i = phi i32 [ %i.cee, %.noexc1264.us.i.new ], [ %.211173419.us.i, %.noexc1264.us.i ]
  %.311223409.us.i = phi i32 [ %i.cea, %.noexc1264.us.i.new ], [ %.211213418.us.i, %.noexc1264.us.i ]
  %niter874 = phi i64 [ %niter874.next.1, %.noexc1264.us.i.new ], [ 0, %.noexc1264.us.i ]
  %i.ccz = getelementptr inbounds nuw [4 x i8], ptr %i.ccv, i64 %indvars.iv3831.i
  %i.cda = load i32, ptr %i.ccz, align 4, !tbaa !67
  %i.cdb = sext i32 %i.cda to i64                 ; 2 uses
  %i.cdc = getelementptr inbounds i8, ptr %gep3429.us.i, i64 %i.cdb
  %i.cdd = getelementptr inbounds i8, ptr %gep3434.us.i, i64 %i.cdb
  %i.cde = load i8, ptr %i.cdc, align 1, !tbaa !316
  %i.cdf = sext i8 %i.cde to i32
  %i.cdg = load i8, ptr %.511143411.us.i, align 1, !tbaa !316
  %i.cdh = sext i8 %i.cdg to i32                  ; 2 uses
  %i.cdi = mul nsw i32 %i.cdh, %i.cdf
  %i.cdj = add nsw i32 %i.cdi, %.311223409.us.i
  %i.cdk = load i8, ptr %i.cdd, align 1, !tbaa !316
  %i.cdl = sext i8 %i.cdk to i32
  %i.cdm = mul nsw i32 %i.cdl, %i.cdh
  %i.cdn = add nsw i32 %i.cdm, %.311183410.us.i
  %i.cdo = getelementptr inbounds nuw i8, ptr %.511143411.us.i, i64 1
  %i.cdp = getelementptr inbounds nuw [4 x i8], ptr %i.ccv, i64 %indvars.iv3831.i
  %i.cdq = getelementptr inbounds nuw i8, ptr %i.cdp, i64 4
  %i.cdr = load i32, ptr %i.cdq, align 4, !tbaa !67
  %i.cds = sext i32 %i.cdr to i64                 ; 2 uses
  %i.cdt = getelementptr inbounds i8, ptr %gep3429.us.i, i64 %i.cds
  %i.cdu = getelementptr inbounds i8, ptr %gep3434.us.i, i64 %i.cds
  %i.cdv = load i8, ptr %i.cdt, align 1, !tbaa !316
  %i.cdw = sext i8 %i.cdv to i32
  %i.cdx = load i8, ptr %i.cdo, align 1, !tbaa !316
  %i.cdy = sext i8 %i.cdx to i32                  ; 2 uses
  %i.cdz = mul nsw i32 %i.cdy, %i.cdw
  %i.cea = add nsw i32 %i.cdz, %i.cdj             ; 3 uses
  %i.ceb = load i8, ptr %i.cdu, align 1, !tbaa !316
  %i.cec = sext i8 %i.ceb to i32
  %i.ced = mul nsw i32 %i.cec, %i.cdy
  %i.cee = add nsw i32 %i.ced, %i.cdn             ; 3 uses
  %i.cef = getelementptr inbounds nuw i8, ptr %.511143411.us.i, i64 2 ; 2 uses
  %indvars.iv.next3832.i.1 = add nuw nsw i64 %indvars.iv3831.i, 2 ; 2 uses
  %niter874.next.1 = add i64 %niter874, 2         ; 2 uses
  %niter874.ncmp.1 = icmp eq i64 %niter874.next.1, %unroll_iter873
  br i1 %niter874.ncmp.1, label %._crit_edge3414.us.i.unr-lcssa, label %.noexc1264.us.i.new, !llvm.loop !887

._crit_edge3414.us.i.unr-lcssa:                   ; preds = %.noexc1264.us.i.new
  br i1 %lcmp.mod869.not, label %._crit_edge3414.us.i, label %.epil.preheader867

.epil.preheader867:                               ; preds = %._crit_edge3414.us.i.unr-lcssa, %.noexc1264.us.i
  %indvars.iv3831.i.epil.init = phi i64 [ 0, %.noexc1264.us.i ], [ %indvars.iv.next3832.i.1, %._crit_edge3414.us.i.unr-lcssa ]
  %.511143411.us.i.epil.init = phi ptr [ %.411133420.us.i, %.noexc1264.us.i ], [ %i.cef, %._crit_edge3414.us.i.unr-lcssa ]
  %.311183410.us.i.epil.init = phi i32 [ %.211173419.us.i, %.noexc1264.us.i ], [ %i.cee, %._crit_edge3414.us.i.unr-lcssa ]
  %.311223409.us.i.epil.init = phi i32 [ %.211213418.us.i, %.noexc1264.us.i ], [ %i.cea, %._crit_edge3414.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod872)
  %i.ceg = getelementptr inbounds nuw [4 x i8], ptr %i.ccv, i64 %indvars.iv3831.i.epil.init
  %i.ceh = load i32, ptr %i.ceg, align 4, !tbaa !67
  %i.cei = sext i32 %i.ceh to i64                 ; 2 uses
  %i.cej = getelementptr inbounds i8, ptr %gep3429.us.i, i64 %i.cei
  %i.cek = getelementptr inbounds i8, ptr %gep3434.us.i, i64 %i.cei
  %i.cel = load i8, ptr %i.cej, align 1, !tbaa !316
  %i.cem = sext i8 %i.cel to i32
  %i.cen = load i8, ptr %.511143411.us.i.epil.init, align 1, !tbaa !316
  %i.ceo = sext i8 %i.cen to i32                  ; 2 uses
  %i.cep = mul nsw i32 %i.ceo, %i.cem
  %i.ceq = add nsw i32 %i.cep, %.311223409.us.i.epil.init
  %i.cer = load i8, ptr %i.cek, align 1, !tbaa !316
  %i.ces = sext i8 %i.cer to i32
  %i.cet = mul nsw i32 %i.ces, %i.ceo
  %i.ceu = add nsw i32 %i.cet, %.311183410.us.i.epil.init
  br label %._crit_edge3414.us.i

._crit_edge3414.us.i:                             ; preds = %._crit_edge3414.us.i.unr-lcssa, %.epil.preheader867
  %.lcssa793 = phi i32 [ %i.cea, %._crit_edge3414.us.i.unr-lcssa ], [ %i.ceq, %.epil.preheader867 ] ; 2 uses
  %.lcssa792 = phi i32 [ %i.cee, %._crit_edge3414.us.i.unr-lcssa ], [ %i.ceu, %.epil.preheader867 ] ; 2 uses
  %i.cev = getelementptr i8, ptr %.411133420.us.i, i64 %i.ccx
  %indvars.iv.next3839.i = add nuw nsw i64 %indvars.iv3838.i, 1 ; 2 uses
  %i.cew = trunc nuw i64 %indvars.iv.next3839.i to i32
  %i.cex = icmp sgt i32 %i.btw, %i.cew
  br i1 %i.cex, label %.noexc1264.us.i, label %._crit_edge3422.i, !llvm.loop !888

._crit_edge3422.i:                                ; preds = %._crit_edge3414.us.i, %.noexc1264.lr.ph.i, %.preheader2808.i
  %.21121.lcssa.i = phi i32 [ %.01119.lcssa.i, %.preheader2808.i ], [ %.01119.lcssa.i, %.noexc1264.lr.ph.i ], [ %.lcssa793, %._crit_edge3414.us.i ]
  %.21117.lcssa.i = phi i32 [ %.01115.lcssa.i, %.preheader2808.i ], [ %.01115.lcssa.i, %.noexc1264.lr.ph.i ], [ %.lcssa792, %._crit_edge3414.us.i ]
  store i32 %.21121.lcssa.i, ptr %.111583438.i, align 4, !tbaa !67
  %i.cey = getelementptr inbounds nuw i8, ptr %.111583438.i, i64 4
  store i32 %.21117.lcssa.i, ptr %i.cey, align 4, !tbaa !67
  %i.cez = getelementptr inbounds nuw i8, ptr %.111583438.i, i64 8 ; 2 uses
  %i.cfa = add nuw nsw i32 %.111613437.i, 2       ; 3 uses
  %i.cfb = or disjoint i32 %i.cfa, 1              ; 2 uses
  %i.cfc = icmp slt i32 %i.cfb, %i.or
  br i1 %i.cfc, label %.noexc1274.i, label %.preheader2810.i, !llvm.loop !889

.noexc1260.i:                                     ; preds = %._crit_edge3506.i, %.noexc1260.lr.ph.i
  %.211593515.i = phi ptr [ %.11158.lcssa.i, %.noexc1260.lr.ph.i ], [ %i.cpn, %._crit_edge3506.i ] ; 2 uses
  %.211623514.i = phi i32 [ %.11161.lcssa.i, %.noexc1260.lr.ph.i ], [ %i.cpo, %._crit_edge3506.i ] ; 3 uses
  %i.cfd = sdiv i32 %.211623514.i, %i.md          ; 3 uses
  %i.cfe = srem i32 %.211623514.i, %i.md          ; 3 uses
  %i.cff = load i32, ptr %i.d, align 4, !tbaa !67 ; 11 uses
  %i.cfg = icmp sgt i32 %i.cff, 7
  br i1 %i.cfg, label %.noexc1258.lr.ph.i, label %._crit_edge3453.i

.noexc1258.lr.ph.i:                               ; preds = %.noexc1260.i
  %i.cfh = load i32, ptr %i.c, align 4, !tbaa !67 ; 3 uses
  %i.cfi = load i32, ptr %i.bm, align 4, !tbaa !75, !noalias !890
  %i.cfj = sext i32 %i.cfi to i64
  %i.cfk = load i32, ptr %i.b, align 4, !tbaa !67
  %i.cfl = mul nsw i32 %i.cfk, %i.cfd
  %i.cfm = sext i32 %i.cfl to i64
  %i.cfn = mul i64 %i.btq, %i.cfj
  %i.cfo = mul i64 %i.cfn, %i.cfm
  %invariant.gep3459.i = getelementptr i8, ptr %i.bto, i64 %i.cfo
  %i.cfp = load i32, ptr %i.a, align 4, !tbaa !67
  %i.cfq = mul i32 %i.cfh, %i.cfe
  %i.cfr = mul i32 %i.cfq, %i.cfp
  %i.cfs = sext i32 %i.cfr to i64
  %invariant.gep3460.i = getelementptr i8, ptr %invariant.gep3459.i, i64 %i.cfs ; 2 uses
  %i.cft = load i32, ptr %i.f, align 4, !tbaa !67 ; 5 uses
  %i.cfu = icmp sgt i32 %i.cft, 0
  %i.cfv = load ptr, ptr %i.g, align 8            ; 4 uses
  br i1 %i.cfu, label %.noexc1258.lr.ph.split.us.i, label %.noexc1258.preheader.i

.noexc1258.preheader.i:                           ; preds = %.noexc1258.lr.ph.i
  %i.cfw = and i32 %i.cff, 2147483640
  br label %._crit_edge3453.i

.noexc1258.lr.ph.split.us.i:                      ; preds = %.noexc1258.lr.ph.i
  %i.cfx = icmp eq i32 %i.cfh, 8
  %i.cfy = add nsw i32 %i.cft, -1
  %i.cfz = zext nneg i32 %i.cfy to i64
  %i.cga = shl nuw nsw i64 %i.cfz, 3              ; 2 uses
  %wide.trip.count3853.i = zext nneg i32 %i.cft to i64 ; 3 uses
  br i1 %i.cfx, label %.noexc1258.us.us.i.preheader, label %.noexc1258.us.i

.noexc1258.us.us.i.preheader:                     ; preds = %.noexc1258.lr.ph.split.us.i
  %i.cgb = zext nneg i32 %i.cff to i64
  %xtraiter876 = and i64 %wide.trip.count3853.i, 1
  %i.cgc = icmp eq i32 %i.cft, 1
  %unroll_iter880 = and i64 %wide.trip.count3853.i, 2147483646
  %lcmp.mod877.not = icmp eq i64 %xtraiter876, 0
  %lcmp.mod879 = trunc i32 %i.cft to i1
  br label %.noexc1258.us.us.i

.noexc1258.us.us.i:                               ; preds = %.noexc1258.us.us.i.preheader, %._crit_edge3445.split.us.us.us.i
  %indvars.iv454 = phi i64 [ 0, %.noexc1258.us.us.i.preheader ], [ %indvars.iv.next455, %._crit_edge3445.split.us.us.us.i ] ; 2 uses
  %.010543451.us.us.i = phi ptr [ %i.btn, %.noexc1258.us.us.i.preheader ], [ %scevgep3851.i, %._crit_edge3445.split.us.us.us.i ] ; 3 uses
  %i.cgd = phi <4 x i32> [ zeroinitializer, %.noexc1258.us.us.i.preheader ], [ %.lcssa797, %._crit_edge3445.split.us.us.us.i ] ; 2 uses
  %i.cge = lshr exact i64 %indvars.iv454, 3
  %.reass3458.us.us.i = mul i64 %factor.op.mul3457.i, %i.cge
  %gep3461.us.us.i = getelementptr i8, ptr %invariant.gep3460.i, i64 %.reass3458.us.us.i ; 3 uses
  br i1 %i.cgc, label %.epil.preheader875, label %.noexc1258.us.us.i.new

.noexc1258.us.us.i.new:                           ; preds = %.noexc1258.us.us.i, %.noexc1258.us.us.i.new
  %indvars.iv3848.i = phi i64 [ %indvars.iv.next3849.i.1, %.noexc1258.us.us.i.new ], [ 0, %.noexc1258.us.us.i ] ; 3 uses
  %.110553442.us.us.us.i = phi ptr [ %i.chb, %.noexc1258.us.us.i.new ], [ %.010543451.us.us.i, %.noexc1258.us.us.i ] ; 3 uses
  %.13441.us.us.us.i = phi <4 x i32> [ %i.cha, %.noexc1258.us.us.i.new ], [ %i.cgd, %.noexc1258.us.us.i ]
  %niter881 = phi i64 [ %niter881.next.1, %.noexc1258.us.us.i.new ], [ 0, %.noexc1258.us.us.i ]
  %i.cgf = getelementptr inbounds nuw [4 x i8], ptr %i.cfv, i64 %indvars.iv3848.i
  %i.cgg = load i32, ptr %i.cgf, align 4, !tbaa !67
  %i.cgh = sext i32 %i.cgg to i64
  %i.cgi = getelementptr inbounds i8, ptr %gep3461.us.us.i, i64 %i.cgh
  %i.cgj = load <8 x i8>, ptr %i.cgi, align 1, !tbaa !316
  %i.cgk = sext <8 x i8> %i.cgj to <8 x i16>
  %i.cgl = load <8 x i8>, ptr %.110553442.us.us.us.i, align 1, !tbaa !316
  %i.cgm = sext <8 x i8> %i.cgl to <8 x i16>
  %i.cgn = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cgk, <8 x i16> %i.cgm)
  %i.cgo = add <4 x i32> %i.cgn, %.13441.us.us.us.i
  %i.cgp = getelementptr inbounds nuw i8, ptr %.110553442.us.us.us.i, i64 8
  %i.cgq = getelementptr inbounds nuw [4 x i8], ptr %i.cfv, i64 %indvars.iv3848.i
  %i.cgr = getelementptr inbounds nuw i8, ptr %i.cgq, i64 4
  %i.cgs = load i32, ptr %i.cgr, align 4, !tbaa !67
  %i.cgt = sext i32 %i.cgs to i64
  %i.cgu = getelementptr inbounds i8, ptr %gep3461.us.us.i, i64 %i.cgt
  %i.cgv = load <8 x i8>, ptr %i.cgu, align 1, !tbaa !316
  %i.cgw = sext <8 x i8> %i.cgv to <8 x i16>
  %i.cgx = load <8 x i8>, ptr %i.cgp, align 1, !tbaa !316
  %i.cgy = sext <8 x i8> %i.cgx to <8 x i16>
  %i.cgz = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cgw, <8 x i16> %i.cgy)
  %i.cha = add <4 x i32> %i.cgz, %i.cgo           ; 3 uses
  %i.chb = getelementptr inbounds nuw i8, ptr %.110553442.us.us.us.i, i64 16 ; 2 uses
  %indvars.iv.next3849.i.1 = add nuw nsw i64 %indvars.iv3848.i, 2 ; 2 uses
  %niter881.next.1 = add i64 %niter881, 2         ; 2 uses
  %niter881.ncmp.1 = icmp eq i64 %niter881.next.1, %unroll_iter880
  br i1 %niter881.ncmp.1, label %._crit_edge3445.split.us.us.us.i.unr-lcssa, label %.noexc1258.us.us.i.new, !llvm.loop !893

._crit_edge3445.split.us.us.us.i.unr-lcssa:       ; preds = %.noexc1258.us.us.i.new
  br i1 %lcmp.mod877.not, label %._crit_edge3445.split.us.us.us.i, label %.epil.preheader875

.epil.preheader875:                               ; preds = %._crit_edge3445.split.us.us.us.i.unr-lcssa, %.noexc1258.us.us.i
  %indvars.iv3848.i.epil.init = phi i64 [ 0, %.noexc1258.us.us.i ], [ %indvars.iv.next3849.i.1, %._crit_edge3445.split.us.us.us.i.unr-lcssa ]
  %.110553442.us.us.us.i.epil.init = phi ptr [ %.010543451.us.us.i, %.noexc1258.us.us.i ], [ %i.chb, %._crit_edge3445.split.us.us.us.i.unr-lcssa ]
  %.13441.us.us.us.i.epil.init = phi <4 x i32> [ %i.cgd, %.noexc1258.us.us.i ], [ %i.cha, %._crit_edge3445.split.us.us.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod879)
  %i.chc = getelementptr inbounds nuw [4 x i8], ptr %i.cfv, i64 %indvars.iv3848.i.epil.init
  %i.chd = load i32, ptr %i.chc, align 4, !tbaa !67
  %i.che = sext i32 %i.chd to i64
  %i.chf = getelementptr inbounds i8, ptr %gep3461.us.us.i, i64 %i.che
  %i.chg = load <8 x i8>, ptr %i.chf, align 1, !tbaa !316
  %i.chh = sext <8 x i8> %i.chg to <8 x i16>
  %i.chi = load <8 x i8>, ptr %.110553442.us.us.us.i.epil.init, align 1, !tbaa !316
  %i.chj = sext <8 x i8> %i.chi to <8 x i16>
  %i.chk = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.chh, <8 x i16> %i.chj)
  %i.chl = add <4 x i32> %i.chk, %.13441.us.us.us.i.epil.init
  br label %._crit_edge3445.split.us.us.us.i

._crit_edge3445.split.us.us.us.i:                 ; preds = %._crit_edge3445.split.us.us.us.i.unr-lcssa, %.epil.preheader875
  %.lcssa797 = phi <4 x i32> [ %i.cha, %._crit_edge3445.split.us.us.us.i.unr-lcssa ], [ %i.chl, %.epil.preheader875 ] ; 2 uses
  %scevgep3850.i = getelementptr i8, ptr %.010543451.us.us.i, i64 8
  %scevgep3851.i = getelementptr i8, ptr %scevgep3850.i, i64 %i.cga ; 2 uses
  %indvars.iv.next455 = add nuw nsw i64 %indvars.iv454, 8 ; 2 uses
  %i.chm = or disjoint i64 %indvars.iv.next455, 7
  %i.chn = icmp samesign ult i64 %i.chm, %i.cgb
  br i1 %i.chn, label %.noexc1258.us.us.i, label %._crit_edge3453.loopexit.i, !llvm.loop !894

.noexc1258.us.i:                                  ; preds = %.noexc1258.lr.ph.split.us.i, %._crit_edge3445.split.us3465.i
  %.010513452.us.i = phi i32 [ %i.ciz, %._crit_edge3445.split.us3465.i ], [ 0, %.noexc1258.lr.ph.split.us.i ] ; 2 uses
  %.010543451.us.i = phi ptr [ %scevgep3844.i, %._crit_edge3445.split.us3465.i ], [ %i.btn, %.noexc1258.lr.ph.split.us.i ] ; 2 uses
  %i.cho = phi <4 x i32> [ %i.cix, %._crit_edge3445.split.us3465.i ], [ zeroinitializer, %.noexc1258.lr.ph.split.us.i ]
  %i.chp = sdiv i32 %.010513452.us.i, %i.cfh
  %i.chq = sext i32 %i.chp to i64
  %.reass3458.us.i = mul i64 %factor.op.mul3457.i, %i.chq
  %gep3461.us.i = getelementptr i8, ptr %invariant.gep3460.i, i64 %.reass3458.us.i
  br label %bb.ck

bb.ck:                                            ; preds = %bb.ck, %.noexc1258.us.i
  %indvars.iv3841.i = phi i64 [ 0, %.noexc1258.us.i ], [ %indvars.iv.next3842.i, %bb.ck ] ; 2 uses
  %.110553442.us3463.i = phi ptr [ %.010543451.us.i, %.noexc1258.us.i ], [ %i.ciy, %bb.ck ] ; 2 uses
  %.13441.us3464.i = phi <4 x i32> [ %i.cho, %.noexc1258.us.i ], [ %i.cix, %bb.ck ]
  %i.chr = getelementptr inbounds nuw [4 x i8], ptr %i.cfv, i64 %indvars.iv3841.i
  %i.chs = load i32, ptr %i.chr, align 4, !tbaa !67
  %i.cht = sext i32 %i.chs to i64
  %i.chu = getelementptr inbounds i8, ptr %gep3461.us.i, i64 %i.cht ; 8 uses
  %i.chv = load i8, ptr %i.chu, align 1, !tbaa !316
  %i.chw = getelementptr inbounds nuw i8, ptr %i.chu, i64 %i.mc
  %i.chx = load i8, ptr %i.chw, align 1, !tbaa !316
  %i.chy = getelementptr inbounds nuw i8, ptr %i.chu, i64 %i.ov
  %i.chz = load i8, ptr %i.chy, align 1, !tbaa !316
  %i.cia = getelementptr inbounds nuw i8, ptr %i.chu, i64 %i.ow
  %i.cib = load i8, ptr %i.cia, align 1, !tbaa !316
  %i.cic = getelementptr inbounds nuw i8, ptr %i.chu, i64 %i.ox
  %i.cid = load i8, ptr %i.cic, align 1, !tbaa !316
  %i.cie = getelementptr inbounds nuw i8, ptr %i.chu, i64 %i.oy
  %i.cif = load i8, ptr %i.cie, align 1, !tbaa !316
  %i.cig = getelementptr inbounds nuw i8, ptr %i.chu, i64 %i.oz
  %i.cih = load i8, ptr %i.cig, align 1, !tbaa !316
  %i.cii = getelementptr inbounds nuw i8, ptr %i.chu, i64 %i.pa
  %i.cij = load i8, ptr %i.cii, align 1, !tbaa !316
  %i.cik = insertelement <16 x i8> poison, i8 %i.chv, i64 0
  %i.cil = insertelement <16 x i8> %i.cik, i8 %i.chx, i64 1
  %i.cim = insertelement <16 x i8> %i.cil, i8 %i.chz, i64 2
  %i.cin = insertelement <16 x i8> %i.cim, i8 %i.cib, i64 3
  %i.cio = insertelement <16 x i8> %i.cin, i8 %i.cid, i64 4
  %i.cip = insertelement <16 x i8> %i.cio, i8 %i.cif, i64 5
  %i.ciq = insertelement <16 x i8> %i.cip, i8 %i.cih, i64 6
  %i.cir = insertelement <16 x i8> %i.ciq, i8 %i.cij, i64 7
  %i.cis = shufflevector <16 x i8> %i.cir, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cit = sext <8 x i8> %i.cis to <8 x i16>
  %i.ciu = load <8 x i8>, ptr %.110553442.us3463.i, align 1, !tbaa !316
  %i.civ = sext <8 x i8> %i.ciu to <8 x i16>
  %i.ciw = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cit, <8 x i16> %i.civ)
  %i.cix = add <4 x i32> %i.ciw, %.13441.us3464.i ; 3 uses
  %i.ciy = getelementptr inbounds nuw i8, ptr %.110553442.us3463.i, i64 8
  %indvars.iv.next3842.i = add nuw nsw i64 %indvars.iv3841.i, 1 ; 2 uses
  %exitcond3847.not.i = icmp eq i64 %indvars.iv.next3842.i, %wide.trip.count3853.i
  br i1 %exitcond3847.not.i, label %._crit_edge3445.split.us3465.i, label %bb.ck, !llvm.loop !893

._crit_edge3445.split.us3465.i:                   ; preds = %bb.ck
  %scevgep3843.i = getelementptr i8, ptr %.010543451.us.i, i64 8
  %scevgep3844.i = getelementptr i8, ptr %scevgep3843.i, i64 %i.cga ; 2 uses
  %i.ciz = add nuw nsw i32 %.010513452.us.i, 8    ; 2 uses
  %i.cja = or disjoint i32 %i.ciz, 7
  %i.cjb = icmp slt i32 %i.cja, %i.cff
  br i1 %i.cjb, label %.noexc1258.us.i, label %._crit_edge3453.loopexit3523.i, !llvm.loop !894

._crit_edge3453.loopexit.i:                       ; preds = %._crit_edge3445.split.us.us.us.i
  %i.cjc = and i32 %i.cff, 2147483640
  br label %._crit_edge3453.i

._crit_edge3453.loopexit3523.i:                   ; preds = %._crit_edge3445.split.us3465.i
  %i.cjd = and i32 %i.cff, 2147483640
  br label %._crit_edge3453.i

._crit_edge3453.i:                                ; preds = %._crit_edge3453.loopexit3523.i, %._crit_edge3453.loopexit.i, %.noexc1258.preheader.i, %.noexc1260.i
  %i.cje = phi <4 x i32> [ zeroinitializer, %.noexc1260.i ], [ %.lcssa797, %._crit_edge3453.loopexit.i ], [ %i.cix, %._crit_edge3453.loopexit3523.i ], [ zeroinitializer, %.noexc1258.preheader.i ]
  %.01054.lcssa.i = phi ptr [ %i.btn, %.noexc1260.i ], [ %scevgep3851.i, %._crit_edge3453.loopexit.i ], [ %scevgep3844.i, %._crit_edge3453.loopexit3523.i ], [ %i.btn, %.noexc1258.preheader.i ] ; 3 uses
  %.01051.lcssa.i = phi i32 [ 0, %.noexc1260.i ], [ %i.cjc, %._crit_edge3453.loopexit.i ], [ %i.cjd, %._crit_edge3453.loopexit3523.i ], [ %i.cfw, %.noexc1258.preheader.i ] ; 6 uses
  %27 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.cje) ; 3 uses
  %i.cjf = or disjoint i32 %.01051.lcssa.i, 1
  %i.cjg = icmp slt i32 %i.cjf, %i.cff
  br i1 %i.cjg, label %.noexc1256.lr.ph.i, label %.preheader.i

.noexc1256.lr.ph.i:                               ; preds = %._crit_edge3453.i
  %i.cjh = load i32, ptr %i.bm, align 4, !tbaa !75, !noalias !895
  %i.cji = sext i32 %i.cjh to i64
  %i.cjj = load i32, ptr %i.b, align 4, !tbaa !67
  %i.cjk = mul nsw i32 %i.cjj, %i.cfd
  %i.cjl = sext i32 %i.cjk to i64
  %i.cjm = mul i64 %i.btq, %i.cji
  %i.cjn = mul i64 %i.cjm, %i.cjl
  %invariant.gep3490.i = getelementptr i8, ptr %i.bto, i64 %i.cjn
  %i.cjo = load i32, ptr %i.a, align 4, !tbaa !67
  %i.cjp = mul nsw i32 %i.cjo, %i.cfe
  %i.cjq = sext i32 %i.cjp to i64
  %invariant.gep3491.i = getelementptr i8, ptr %invariant.gep3490.i, i64 %i.cjq
  %i.cjr = load i32, ptr %i.f, align 4, !tbaa !67 ; 5 uses
  %i.cjs = icmp sgt i32 %i.cjr, 0
  %i.cjt = load ptr, ptr %i.g, align 8            ; 3 uses
  br i1 %i.cjs, label %.noexc1256.us.preheader.i, label %.noexc1256.preheader.i

.noexc1256.preheader.i:                           ; preds = %.noexc1256.lr.ph.i
  %i.cju = or disjoint i32 %.01051.lcssa.i, 2
  %i.cjv = or disjoint i32 %.01051.lcssa.i, 3
  %i.cjw = call i32 @llvm.umax.i32(i32 %i.cff, i32 %i.cjv)
  %reass.sub349 = sub nsw i32 %i.cjw, %.01051.lcssa.i
  %i.cjx = and i32 %reass.sub349, -2
  %i.cjy = add i32 %i.cjx, -2
  %i.cjz = add i32 %i.cju, %i.cjy
  br label %.preheader.i

.noexc1256.us.preheader.i:                        ; preds = %.noexc1256.lr.ph.i
  %i.cka = add nsw i32 %i.cjr, -1
  %i.ckb = zext nneg i32 %i.cka to i64
  %i.ckc = shl nuw nsw i64 %i.ckb, 1
  %i.ckd = zext nneg i32 %.01051.lcssa.i to i64
  %wide.trip.count3861.i = zext nneg i32 %i.cjr to i64 ; 2 uses
  %xtraiter883 = and i64 %wide.trip.count3861.i, 1
  %i.cke = icmp eq i32 %i.cjr, 1
  %unroll_iter887 = and i64 %wide.trip.count3861.i, 2147483646
  %lcmp.mod884.not = icmp eq i64 %xtraiter883, 0
  %lcmp.mod886 = trunc i32 %i.cjr to i1
  br label %.noexc1256.us.i

.noexc1256.us.i:                                  ; preds = %._crit_edge3479.us.i, %.noexc1256.us.preheader.i
  %indvars.iv3863.i = phi i64 [ %i.ckd, %.noexc1256.us.preheader.i ], [ %indvars.iv.next3864.i, %._crit_edge3479.us.i ] ; 2 uses
  %.210563483.us.i = phi ptr [ %.01054.lcssa.i, %.noexc1256.us.preheader.i ], [ %scevgep3859.i, %._crit_edge3479.us.i ] ; 3 uses
  %.010603482.us.i = phi i32 [ %27, %.noexc1256.us.preheader.i ], [ %.lcssa798, %._crit_edge3479.us.i ] ; 2 uses
  %.reass3489.us.i = mul i64 %factor.op.mul3457.i, %indvars.iv3863.i
  %gep3492.us.i = getelementptr i8, ptr %invariant.gep3491.i, i64 %.reass3489.us.i ; 3 uses
  br i1 %i.cke, label %.epil.preheader882, label %.noexc1256.us.i.new

.noexc1256.us.i.new:                              ; preds = %.noexc1256.us.i, %.noexc1256.us.i.new
  %indvars.iv3856.i = phi i64 [ %indvars.iv.next3857.i.1, %.noexc1256.us.i.new ], [ 0, %.noexc1256.us.i ] ; 3 uses
  %.310573476.us.i = phi ptr [ %i.clr, %.noexc1256.us.i.new ], [ %.210563483.us.i, %.noexc1256.us.i ] ; 5 uses
  %.110613475.us.i = phi i32 [ %i.clq, %.noexc1256.us.i.new ], [ %.010603482.us.i, %.noexc1256.us.i ]
  %niter888 = phi i64 [ %niter888.next.1, %.noexc1256.us.i.new ], [ 0, %.noexc1256.us.i ]
  %i.ckf = getelementptr inbounds nuw [4 x i8], ptr %i.cjt, i64 %indvars.iv3856.i
  %i.ckg = load i32, ptr %i.ckf, align 4, !tbaa !67
  %i.ckh = sext i32 %i.ckg to i64
  %i.cki = getelementptr inbounds i8, ptr %gep3492.us.i, i64 %i.ckh ; 2 uses
  %i.ckj = load i8, ptr %i.cki, align 1, !tbaa !316
  %i.ckk = sext i8 %i.ckj to i32
  %i.ckl = load i8, ptr %.310573476.us.i, align 1, !tbaa !316
  %i.ckm = sext i8 %i.ckl to i32
  %i.ckn = mul nsw i32 %i.ckm, %i.ckk
  %i.cko = add nsw i32 %i.ckn, %.110613475.us.i
  %i.ckp = getelementptr inbounds nuw i8, ptr %i.cki, i64 %i.mc
  %i.ckq = load i8, ptr %i.ckp, align 1, !tbaa !316
  %i.ckr = sext i8 %i.ckq to i32
  %i.cks = getelementptr inbounds nuw i8, ptr %.310573476.us.i, i64 1
  %i.ckt = load i8, ptr %i.cks, align 1, !tbaa !316
  %i.cku = sext i8 %i.ckt to i32
  %i.ckv = mul nsw i32 %i.cku, %i.ckr
  %i.ckw = add nsw i32 %i.cko, %i.ckv
  %i.ckx = getelementptr inbounds nuw i8, ptr %.310573476.us.i, i64 2
  %i.cky = getelementptr inbounds nuw [4 x i8], ptr %i.cjt, i64 %indvars.iv3856.i
  %i.ckz = getelementptr inbounds nuw i8, ptr %i.cky, i64 4
  %i.cla = load i32, ptr %i.ckz, align 4, !tbaa !67
  %i.clb = sext i32 %i.cla to i64
  %i.clc = getelementptr inbounds i8, ptr %gep3492.us.i, i64 %i.clb ; 2 uses
  %i.cld = load i8, ptr %i.clc, align 1, !tbaa !316
  %i.cle = sext i8 %i.cld to i32
  %i.clf = load i8, ptr %i.ckx, align 1, !tbaa !316
  %i.clg = sext i8 %i.clf to i32
  %i.clh = mul nsw i32 %i.clg, %i.cle
  %i.cli = add nsw i32 %i.clh, %i.ckw
  %i.clj = getelementptr inbounds nuw i8, ptr %i.clc, i64 %i.mc
  %i.clk = load i8, ptr %i.clj, align 1, !tbaa !316
  %i.cll = sext i8 %i.clk to i32
  %i.clm = getelementptr inbounds nuw i8, ptr %.310573476.us.i, i64 3
  %i.cln = load i8, ptr %i.clm, align 1, !tbaa !316
  %i.clo = sext i8 %i.cln to i32
  %i.clp = mul nsw i32 %i.clo, %i.cll
  %i.clq = add nsw i32 %i.cli, %i.clp             ; 3 uses
  %i.clr = getelementptr inbounds nuw i8, ptr %.310573476.us.i, i64 4 ; 2 uses
  %indvars.iv.next3857.i.1 = add nuw nsw i64 %indvars.iv3856.i, 2 ; 2 uses
  %niter888.next.1 = add i64 %niter888, 2         ; 2 uses
  %niter888.ncmp.1 = icmp eq i64 %niter888.next.1, %unroll_iter887
  br i1 %niter888.ncmp.1, label %._crit_edge3479.us.i.unr-lcssa, label %.noexc1256.us.i.new, !llvm.loop !898

._crit_edge3479.us.i.unr-lcssa:                   ; preds = %.noexc1256.us.i.new
  br i1 %lcmp.mod884.not, label %._crit_edge3479.us.i, label %.epil.preheader882

.epil.preheader882:                               ; preds = %._crit_edge3479.us.i.unr-lcssa, %.noexc1256.us.i
  %indvars.iv3856.i.epil.init = phi i64 [ 0, %.noexc1256.us.i ], [ %indvars.iv.next3857.i.1, %._crit_edge3479.us.i.unr-lcssa ]
  %.310573476.us.i.epil.init = phi ptr [ %.210563483.us.i, %.noexc1256.us.i ], [ %i.clr, %._crit_edge3479.us.i.unr-lcssa ] ; 2 uses
  %.110613475.us.i.epil.init = phi i32 [ %.010603482.us.i, %.noexc1256.us.i ], [ %i.clq, %._crit_edge3479.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod886)
  %i.cls = getelementptr inbounds nuw [4 x i8], ptr %i.cjt, i64 %indvars.iv3856.i.epil.init
  %i.clt = load i32, ptr %i.cls, align 4, !tbaa !67
  %i.clu = sext i32 %i.clt to i64
  %i.clv = getelementptr inbounds i8, ptr %gep3492.us.i, i64 %i.clu ; 2 uses
  %i.clw = load i8, ptr %i.clv, align 1, !tbaa !316
  %i.clx = sext i8 %i.clw to i32
  %i.cly = load i8, ptr %.310573476.us.i.epil.init, align 1, !tbaa !316
  %i.clz = sext i8 %i.cly to i32
  %i.cma = mul nsw i32 %i.clz, %i.clx
  %i.cmb = add nsw i32 %i.cma, %.110613475.us.i.epil.init
  %i.cmc = getelementptr inbounds nuw i8, ptr %i.clv, i64 %i.mc
  %i.cmd = load i8, ptr %i.cmc, align 1, !tbaa !316
  %i.cme = sext i8 %i.cmd to i32
  %i.cmf = getelementptr inbounds nuw i8, ptr %.310573476.us.i.epil.init, i64 1
  %i.cmg = load i8, ptr %i.cmf, align 1, !tbaa !316
  %i.cmh = sext i8 %i.cmg to i32
  %i.cmi = mul nsw i32 %i.cmh, %i.cme
  %i.cmj = add nsw i32 %i.cmb, %i.cmi
  br label %._crit_edge3479.us.i

._crit_edge3479.us.i:                             ; preds = %._crit_edge3479.us.i.unr-lcssa, %.epil.preheader882
  %.lcssa798 = phi i32 [ %i.clq, %._crit_edge3479.us.i.unr-lcssa ], [ %i.cmj, %.epil.preheader882 ] ; 2 uses
  %scevgep3858.i = getelementptr i8, ptr %.210563483.us.i, i64 2
  %scevgep3859.i = getelementptr i8, ptr %scevgep3858.i, i64 %i.ckc ; 2 uses
  %indvars.iv.next3864.i = add nuw nsw i64 %indvars.iv3863.i, 2 ; 2 uses
  %i.cmk = trunc i64 %indvars.iv.next3864.i to i32 ; 2 uses
  %i.cml = or i32 %i.cmk, 1
  %i.cmm = icmp slt i32 %i.cml, %i.cff
  br i1 %i.cmm, label %.noexc1256.us.i, label %.preheader.i, !llvm.loop !899

.preheader.i:                                     ; preds = %._crit_edge3479.us.i, %.noexc1256.preheader.i, %._crit_edge3453.i
  %.01060.lcssa.i = phi i32 [ %27, %._crit_edge3453.i ], [ %27, %.noexc1256.preheader.i ], [ %.lcssa798, %._crit_edge3479.us.i ] ; 3 uses
  %.21056.lcssa.i = phi ptr [ %.01054.lcssa.i, %._crit_edge3453.i ], [ %.01054.lcssa.i, %.noexc1256.preheader.i ], [ %scevgep3859.i, %._crit_edge3479.us.i ]
  %.11052.lcssa.i = phi i32 [ %.01051.lcssa.i, %._crit_edge3453.i ], [ %i.cjz, %.noexc1256.preheader.i ], [ %i.cmk, %._crit_edge3479.us.i ] ; 2 uses
  %i.cmn = icmp slt i32 %.11052.lcssa.i, %i.cff
  br i1 %i.cmn, label %.noexc.lr.ph.i, label %._crit_edge3506.i

.noexc.lr.ph.i:                                   ; preds = %.preheader.i
  %i.cmo = load i32, ptr %i.bm, align 4, !tbaa !75, !noalias !900
  %i.cmp = sext i32 %i.cmo to i64
  %i.cmq = load i32, ptr %i.b, align 4, !tbaa !67
  %i.cmr = mul nsw i32 %i.cmq, %i.cfd
  %i.cms = sext i32 %i.cmr to i64
  %i.cmt = mul i64 %i.btq, %i.cmp
  %i.cmu = mul i64 %i.cmt, %i.cms
  %invariant.gep3510.i = getelementptr i8, ptr %i.bto, i64 %i.cmu
  %i.cmv = load i32, ptr %i.a, align 4, !tbaa !67
  %i.cmw = mul nsw i32 %i.cmv, %i.cfe
  %i.cmx = sext i32 %i.cmw to i64
  %invariant.gep3511.i = getelementptr i8, ptr %invariant.gep3510.i, i64 %i.cmx
  %i.cmy = load i32, ptr %i.f, align 4, !tbaa !67 ; 3 uses
  %i.cmz = icmp sgt i32 %i.cmy, 0
  %i.cna = load ptr, ptr %i.g, align 8            ; 5 uses
  br i1 %i.cmz, label %.noexc.us.preheader.i, label %._crit_edge3506.i

.noexc.us.preheader.i:                            ; preds = %.noexc.lr.ph.i
  %i.cnb = zext i32 %.11052.lcssa.i to i64
  %i.cnc = zext nneg i32 %i.cmy to i64            ; 3 uses
  %xtraiter890 = and i64 %i.cnc, 3                ; 3 uses
  %i.cnd = icmp ult i32 %i.cmy, 4
  %unroll_iter894 = and i64 %i.cnc, 2147483644
  %lcmp.mod891.not = icmp eq i64 %xtraiter890, 0
  %lcmp.mod893 = icmp ne i64 %xtraiter890, 0
  br label %.noexc.us.i

.noexc.us.i:                                      ; preds = %._crit_edge3500.us.i, %.noexc.us.preheader.i
  %indvars.iv3873.i = phi i64 [ %i.cnb, %.noexc.us.preheader.i ], [ %indvars.iv.next3874.i, %._crit_edge3500.us.i ] ; 2 uses
  %.410583504.us.i = phi ptr [ %.21056.lcssa.i, %.noexc.us.preheader.i ], [ %i.cpk, %._crit_edge3500.us.i ] ; 3 uses
  %.210623503.us.i = phi i32 [ %.01060.lcssa.i, %.noexc.us.preheader.i ], [ %.lcssa800, %._crit_edge3500.us.i ] ; 2 uses
  %.reass3509.us.i = mul i64 %factor.op.mul3457.i, %indvars.iv3873.i
  %gep3512.us.i = getelementptr i8, ptr %invariant.gep3511.i, i64 %.reass3509.us.i ; 5 uses
  br i1 %i.cnd, label %.epil.preheader889, label %.noexc.us.i.new

.noexc.us.i.new:                                  ; preds = %.noexc.us.i, %.noexc.us.i.new
  %indvars.iv3866.i = phi i64 [ %indvars.iv.next3867.i.3, %.noexc.us.i.new ], [ 0, %.noexc.us.i ] ; 5 uses
  %.510593497.us.i = phi ptr [ %i.coy, %.noexc.us.i.new ], [ %.410583504.us.i, %.noexc.us.i ] ; 5 uses
  %.310633496.us.i = phi i32 [ %i.cox, %.noexc.us.i.new ], [ %.210623503.us.i, %.noexc.us.i ]
  %niter895 = phi i64 [ %niter895.next.3, %.noexc.us.i.new ], [ 0, %.noexc.us.i ]
  %i.cne = getelementptr inbounds nuw [4 x i8], ptr %i.cna, i64 %indvars.iv3866.i
  %i.cnf = load i32, ptr %i.cne, align 4, !tbaa !67
  %i.cng = sext i32 %i.cnf to i64
  %i.cnh = getelementptr inbounds i8, ptr %gep3512.us.i, i64 %i.cng
  %i.cni = load i8, ptr %i.cnh, align 1, !tbaa !316
  %i.cnj = sext i8 %i.cni to i32
  %i.cnk = load i8, ptr %.510593497.us.i, align 1, !tbaa !316
  %i.cnl = sext i8 %i.cnk to i32
  %i.cnm = mul nsw i32 %i.cnl, %i.cnj
  %i.cnn = add nsw i32 %i.cnm, %.310633496.us.i
  %i.cno = getelementptr inbounds nuw i8, ptr %.510593497.us.i, i64 1
  %i.cnp = getelementptr inbounds nuw [4 x i8], ptr %i.cna, i64 %indvars.iv3866.i
  %i.cnq = getelementptr inbounds nuw i8, ptr %i.cnp, i64 4
  %i.cnr = load i32, ptr %i.cnq, align 4, !tbaa !67
  %i.cns = sext i32 %i.cnr to i64
  %i.cnt = getelementptr inbounds i8, ptr %gep3512.us.i, i64 %i.cns
  %i.cnu = load i8, ptr %i.cnt, align 1, !tbaa !316
  %i.cnv = sext i8 %i.cnu to i32
  %i.cnw = load i8, ptr %i.cno, align 1, !tbaa !316
  %i.cnx = sext i8 %i.cnw to i32
  %i.cny = mul nsw i32 %i.cnx, %i.cnv
  %i.cnz = add nsw i32 %i.cny, %i.cnn
  %i.coa = getelementptr inbounds nuw i8, ptr %.510593497.us.i, i64 2
  %i.cob = getelementptr inbounds nuw [4 x i8], ptr %i.cna, i64 %indvars.iv3866.i
  %i.coc = getelementptr inbounds nuw i8, ptr %i.cob, i64 8
  %i.cod = load i32, ptr %i.coc, align 4, !tbaa !67
  %i.coe = sext i32 %i.cod to i64
  %i.cof = getelementptr inbounds i8, ptr %gep3512.us.i, i64 %i.coe
  %i.cog = load i8, ptr %i.cof, align 1, !tbaa !316
  %i.coh = sext i8 %i.cog to i32
  %i.coi = load i8, ptr %i.coa, align 1, !tbaa !316
  %i.coj = sext i8 %i.coi to i32
  %i.cok = mul nsw i32 %i.coj, %i.coh
  %i.col = add nsw i32 %i.cok, %i.cnz
  %i.com = getelementptr inbounds nuw i8, ptr %.510593497.us.i, i64 3
  %i.con = getelementptr inbounds nuw [4 x i8], ptr %i.cna, i64 %indvars.iv3866.i
  %i.coo = getelementptr inbounds nuw i8, ptr %i.con, i64 12
  %i.cop = load i32, ptr %i.coo, align 4, !tbaa !67
  %i.coq = sext i32 %i.cop to i64
  %i.cor = getelementptr inbounds i8, ptr %gep3512.us.i, i64 %i.coq
  %i.cos = load i8, ptr %i.cor, align 1, !tbaa !316
  %i.cot = sext i8 %i.cos to i32
  %i.cou = load i8, ptr %i.com, align 1, !tbaa !316
  %i.cov = sext i8 %i.cou to i32
  %i.cow = mul nsw i32 %i.cov, %i.cot
  %i.cox = add nsw i32 %i.cow, %i.col             ; 3 uses
  %i.coy = getelementptr inbounds nuw i8, ptr %.510593497.us.i, i64 4 ; 2 uses
  %indvars.iv.next3867.i.3 = add nuw nsw i64 %indvars.iv3866.i, 4 ; 2 uses
  %niter895.next.3 = add i64 %niter895, 4         ; 2 uses
  %niter895.ncmp.3 = icmp eq i64 %niter895.next.3, %unroll_iter894
  br i1 %niter895.ncmp.3, label %._crit_edge3500.us.i.unr-lcssa, label %.noexc.us.i.new, !llvm.loop !903

._crit_edge3500.us.i.unr-lcssa:                   ; preds = %.noexc.us.i.new
  br i1 %lcmp.mod891.not, label %._crit_edge3500.us.i, label %.epil.preheader889

.epil.preheader889:                               ; preds = %._crit_edge3500.us.i.unr-lcssa, %.noexc.us.i
  %indvars.iv3866.i.epil.init = phi i64 [ 0, %.noexc.us.i ], [ %indvars.iv.next3867.i.3, %._crit_edge3500.us.i.unr-lcssa ]
  %.510593497.us.i.epil.init = phi ptr [ %.410583504.us.i, %.noexc.us.i ], [ %i.coy, %._crit_edge3500.us.i.unr-lcssa ]
  %.310633496.us.i.epil.init = phi i32 [ %.210623503.us.i, %.noexc.us.i ], [ %i.cox, %._crit_edge3500.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod893)
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cl, %.epil.preheader889
  %indvars.iv3866.i.epil = phi i64 [ %indvars.iv3866.i.epil.init, %.epil.preheader889 ], [ %indvars.iv.next3867.i.epil, %bb.cl ] ; 2 uses
  %.510593497.us.i.epil = phi ptr [ %.510593497.us.i.epil.init, %.epil.preheader889 ], [ %i.cpj, %bb.cl ] ; 2 uses
  %.310633496.us.i.epil = phi i32 [ %.310633496.us.i.epil.init, %.epil.preheader889 ], [ %i.cpi, %bb.cl ]
  %epil.iter = phi i64 [ 0, %.epil.preheader889 ], [ %epil.iter.next, %bb.cl ]
  %i.coz = getelementptr inbounds nuw [4 x i8], ptr %i.cna, i64 %indvars.iv3866.i.epil
  %i.cpa = load i32, ptr %i.coz, align 4, !tbaa !67
  %i.cpb = sext i32 %i.cpa to i64
  %i.cpc = getelementptr inbounds i8, ptr %gep3512.us.i, i64 %i.cpb
  %i.cpd = load i8, ptr %i.cpc, align 1, !tbaa !316
  %i.cpe = sext i8 %i.cpd to i32
  %i.cpf = load i8, ptr %.510593497.us.i.epil, align 1, !tbaa !316
  %i.cpg = sext i8 %i.cpf to i32
  %i.cph = mul nsw i32 %i.cpg, %i.cpe
  %i.cpi = add nsw i32 %i.cph, %.310633496.us.i.epil ; 2 uses
  %i.cpj = getelementptr inbounds nuw i8, ptr %.510593497.us.i.epil, i64 1
  %indvars.iv.next3867.i.epil = add nuw nsw i64 %indvars.iv3866.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter890
  br i1 %epil.iter.cmp.not, label %._crit_edge3500.us.i, label %bb.cl, !llvm.loop !904

._crit_edge3500.us.i:                             ; preds = %bb.cl, %._crit_edge3500.us.i.unr-lcssa
  %.lcssa800 = phi i32 [ %i.cox, %._crit_edge3500.us.i.unr-lcssa ], [ %i.cpi, %bb.cl ] ; 2 uses
  %i.cpk = getelementptr i8, ptr %.410583504.us.i, i64 %i.cnc
  %indvars.iv.next3874.i = add nuw nsw i64 %indvars.iv3873.i, 1 ; 2 uses
  %i.cpl = trunc nuw i64 %indvars.iv.next3874.i to i32
  %i.cpm = icmp sgt i32 %i.cff, %i.cpl
  br i1 %i.cpm, label %.noexc.us.i, label %._crit_edge3506.i, !llvm.loop !905

._crit_edge3506.i:                                ; preds = %._crit_edge3500.us.i, %.noexc.lr.ph.i, %.preheader.i
  %.21062.lcssa.i = phi i32 [ %.01060.lcssa.i, %.preheader.i ], [ %.01060.lcssa.i, %.noexc.lr.ph.i ], [ %.lcssa800, %._crit_edge3500.us.i ]
  store i32 %.21062.lcssa.i, ptr %.211593515.i, align 4, !tbaa !67
  %i.cpn = getelementptr inbounds nuw i8, ptr %.211593515.i, i64 4
  %i.cpo = add nuw nsw i32 %.211623514.i, 1       ; 2 uses
  %exitcond3876.not.i = icmp eq i32 %i.cpo, %i.or
  br i1 %exitcond3876.not.i, label %._crit_edge3516.i, label %.noexc1260.i, !llvm.loop !906

._crit_edge3516.i:                                ; preds = %._crit_edge3506.i, %.preheader2810.i
  %indvars.iv.next3878.i = add nsw i64 %indvars.iv3877.i, 1 ; 2 uses
  %i.cpp = icmp slt i64 %indvars.iv.next3878.i, %i.pe
  br i1 %i.cpp, label %_ZN4ncnn3MatD2Ev.exit1373.i, label %._crit_edge3518.i, !llvm.loop !907

.thread218:                                       ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i, %bb.bv, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.cn

bb.cm:                                            ; preds = %_ZN4ncnnL28convolution_im2col_gemm_int8ERKNS_3MatERS0_S2_iiiiiiiRKNS_6OptionE.exit, %_ZNK4ncnn3Mat5emptyEv.exit203.thread, %bb.av
  %.0 = phi i32 [ %i.ia, %bb.av ], [ %.122.i, %_ZN4ncnnL28convolution_im2col_gemm_int8ERKNS_3MatERS0_S2_iiiiiiiRKNS_6OptionE.exit ], [ %i.id, %_ZNK4ncnn3Mat5emptyEv.exit203.thread ] ; 2 uses
  %.not100 = icmp eq i32 %.0, 0
  br i1 %.not100, label %bb.cn, label %_ZNK4ncnn3Mat5emptyEv.exit204.thread

bb.cn:                                            ; preds = %.thread218, %bb.cm
  %i.cpq = load i8, ptr %i.cz, align 1, !tbaa !56, !range !48, !noundef !49
  %i.cpr = trunc nuw i8 %i.cpq to i1
  br i1 %i.cpr, label %bb.co, label %bb.fl

bb.co:                                            ; preds = %bb.cn
  %i.cps = load i32, ptr %i.fv, align 8, !tbaa !66
  %i.cpt = icmp eq i32 %i.cps, 4                  ; 2 uses
  br i1 %i.cy, label %bb.cp, label %bb.em

bb.cp:                                            ; preds = %bb.co
  br i1 %i.cpt, label %bb.cq, label %.thread221

bb.cq:                                            ; preds = %bb.cp
  %i.cpu = load i32, ptr %i.ga, align 8, !tbaa !68
  %i.cpv = and i32 %i.cpu, -2147483647
  %i.cpw = icmp eq i32 %i.cpv, 1
  br i1 %i.cpw, label %bb.cr, label %.thread577

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  %i.cpx = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.cpy = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.cpz = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.cqa = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 4 uses
  %i.cqb = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.cqc = getelementptr inbounds nuw i8, ptr %10, i64 56
  %i.cqd = getelementptr inbounds nuw i8, ptr %10, i64 64 ; 2 uses
  store i64 0, ptr %i.cqd, align 16, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %10, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.cqa, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn15convert_packingERKNS_3MatERS0_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef nonnull align 8 dereferenceable(72) %10, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.cs unwind label %bb.dh

bb.cs:                                            ; preds = %bb.cr
  %i.cqe = load ptr, ptr %i.cpx, align 8, !tbaa !11 ; 2 uses
  %.not.i194 = icmp eq ptr %i.cqe, null
  br i1 %.not.i194, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
end_hunk_1
begin_hunk_2_@_ZN4ncnnL24convolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined:bb.a
  %i.afz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.afy, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.aga = fmul fast <8 x float> %i.afz, splat (float f0x3FB8AA3B)
  %i.agb = fadd fast <8 x float> %i.aga, splat (float 5.000000e-01) ; 2 uses
  %i.agc = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.agb, i32 1) ; 2 uses
  %i.agd = fcmp fast ogt <8 x float> %i.agc, %i.agb
  %i.age = select <8 x i1> %i.agd, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.agf = fsub fast <8 x float> %i.agc, %i.age   ; 2 uses
  %i.agg = fmul fast <8 x float> %i.agf, splat (float f0x3F317218)
  %i.agh = fsub fast <8 x float> %i.afz, %i.agg   ; 8 uses
  %i.agi = fmul fast <8 x float> %i.agh, %i.agh
  %i.agj = fmul fast <8 x float> %i.agh, splat (float f0x39506967)
  %i.agk = fadd fast <8 x float> %i.agj, splat (float f0x3AB743CE)
  %i.agl = fmul fast <8 x float> %i.agk, %i.agh
  %i.agm = fadd fast <8 x float> %i.agl, splat (float f0x3C088908)
  %i.agn = fmul fast <8 x float> %i.agm, %i.agh
  %i.ago = fadd fast <8 x float> %i.agn, splat (float f0x3D2AA9C1)
  %i.agp = fmul fast <8 x float> %i.ago, %i.agh
  %i.agq = fadd fast <8 x float> %i.agp, splat (float f0x3E2AAAAA)
  %i.agr = fmul fast <8 x float> %i.agq, %i.agh
  %i.ags = fadd fast <8 x float> %i.agr, splat (float 5.000000e-01)
  %i.agt = fmul fast <8 x float> %i.agi, %i.ags
  %i.agu = fadd fast <8 x float> %i.agh, splat (float 1.000000e+00)
  %i.agv = fadd fast <8 x float> %i.agu, %i.agt
  %i.agw = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.agf)
  %i.agx = shl <8 x i32> %i.agw, splat (i32 23)
  %i.agy = add <8 x i32> %i.agx, splat (i32 1065353216)
  %i.agz = bitcast <8 x i32> %i.agy to <8 x float>
  %i.aha = fmul fast <8 x float> %i.agv, %i.agz
  %i.ahb = fadd fast <8 x float> %i.aha, splat (float 1.000000e+00)
  %i.ahc = fdiv fast <8 x float> splat (float 2.000000e+00), %i.ahb
  %i.ahd = fadd fast <8 x float> %i.ahc, splat (float -1.000000e+00)
  %i.ahe = fmul fast <8 x float> %i.ahd, %i.abi
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc297:                                        ; preds = %._crit_edge911
  %i.ahf = load ptr, ptr %14, align 8, !tbaa !18  ; 2 uses
  %i.ahg = load float, ptr %i.ahf, align 4, !tbaa !39
  %i.ahh = insertelement <8 x float> poison, float %i.ahg, i64 0
  %i.ahi = shufflevector <8 x float> %i.ahh, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahf, i64 4
  %i.ahk = load float, ptr %i.ahj, align 4, !tbaa !39
  %i.ahl = insertelement <8 x float> poison, float %i.ahk, i64 0
  %i.ahm = shufflevector <8 x float> %i.ahl, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ahn = fmul fast <8 x float> %i.ahi, %i.abi
  %i.aho = fadd fast <8 x float> %i.ahn, %i.ahm
  %i.ahp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.aho, <8 x float> zeroinitializer)
  %i.ahq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ahp, <8 x float> splat (float 1.000000e+00))
  %i.ahr = fmul fast <8 x float> %i.ahq, %i.abi
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit:      ; preds = %.noexc297, %.noexc296, %.noexc295, %bb.n, %.noexc294, %bb.m, %._crit_edge911
  %.0.i = phi nsz <8 x float> [ %i.ahr, %.noexc297 ], [ %i.abk, %bb.m ], [ %i.abs, %.noexc294 ], [ %i.acc, %bb.n ], [ %i.adi, %.noexc295 ], [ %i.ahe, %.noexc296 ], [ %i.abi, %._crit_edge911 ] ; 4 uses
  switch i32 %i.af, label %.thread773 [
    i32 8, label %.thread
    i32 4, label %bb.o
    i32 1, label %bb.p
  ]

.thread:                                          ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit
  %i.ahs = bitcast <8 x float> %.0.i to <8 x i32> ; 2 uses
  %i.aht = shufflevector <8 x i32> %i.ahs, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ahu = shufflevector <8 x i32> %i.ahs, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ahv = lshr <4 x i32> %i.aht, splat (i32 16)
  %i.ahw = lshr <4 x i32> %i.ahu, splat (i32 16)
  %i.ahx = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ahv, <4 x i32> %i.ahw)
  store <8 x i16> %i.ahx, ptr %.1921, align 1, !tbaa !316
  %i.ahy = getelementptr inbounds nuw i8, ptr %.1921, i64 16
  br label %.thread773

bb.o:                                             ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit
  %i.ahz = bitcast <8 x float> %.0.i to <8 x i32>
  %i.aia = shufflevector <8 x i32> %i.ahz, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aib = lshr <4 x i32> %i.aia, splat (i32 16)
  %i.aic = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.aib, <4 x i32> poison)
  %i.aid = bitcast <8 x i16> %i.aic to <2 x i64>
  %i.aie = extractelement <2 x i64> %i.aid, i64 0
  store i64 %i.aie, ptr %.1921, align 1, !tbaa !316
  %i.aif = load i64, ptr %15, align 8, !tbaa !295
  %i.aig = getelementptr inbounds nuw [2 x i8], ptr %.1921, i64 %i.aif
  %i.aih = bitcast <8 x float> %.0.i to <8 x i32>
  %i.aii = shufflevector <8 x i32> %i.aih, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.aij = lshr <4 x i32> %i.aii, splat (i32 16)
  %i.aik = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.aij, <4 x i32> poison)
  %i.ail = bitcast <8 x i16> %i.aik to <2 x i64>
  %i.aim = extractelement <2 x i64> %i.ail, i64 0
  store i64 %i.aim, ptr %i.aig, align 1, !tbaa !316
  %i.ain = getelementptr inbounds nuw i8, ptr %.1921, i64 8
  br label %.thread773

bb.p:                                             ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit
  %i.aio = bitcast <8 x float> %.0.i to <16 x i16> ; 8 uses
  %i.aip = extractelement <16 x i16> %i.aio, i64 1
  store i16 %i.aip, ptr %.1921, align 2, !tbaa !573
  %i.aiq = extractelement <16 x i16> %i.aio, i64 3
  %i.air = load i64, ptr %15, align 8, !tbaa !295 ; 7 uses
  %i.ais = getelementptr inbounds nuw [2 x i8], ptr %.1921, i64 %i.air
  store i16 %i.aiq, ptr %i.ais, align 2, !tbaa !573
  %i.ait = extractelement <16 x i16> %i.aio, i64 5
  %.idx = shl i64 %i.air, 2
  %i.aiu = getelementptr inbounds nuw i8, ptr %.1921, i64 %.idx
  store i16 %i.ait, ptr %i.aiu, align 2, !tbaa !573
  %i.aiv = extractelement <16 x i16> %i.aio, i64 7
  %.idx236 = mul i64 %i.air, 6
  %i.aiw = getelementptr inbounds nuw i8, ptr %.1921, i64 %.idx236
  store i16 %i.aiv, ptr %i.aiw, align 2, !tbaa !573
  %i.aix = extractelement <16 x i16> %i.aio, i64 9
  %.idx237 = shl i64 %i.air, 3
  %i.aiy = getelementptr inbounds nuw i8, ptr %.1921, i64 %.idx237
  store i16 %i.aix, ptr %i.aiy, align 2, !tbaa !573
  %i.aiz = extractelement <16 x i16> %i.aio, i64 11
  %.idx238 = mul i64 %i.air, 10
  %i.aja = getelementptr inbounds nuw i8, ptr %.1921, i64 %.idx238
  store i16 %i.aiz, ptr %i.aja, align 2, !tbaa !573
  %i.ajb = extractelement <16 x i16> %i.aio, i64 13
  %.idx239 = mul i64 %i.air, 12
  %i.ajc = getelementptr inbounds nuw i8, ptr %.1921, i64 %.idx239
  store i16 %i.ajb, ptr %i.ajc, align 2, !tbaa !573
  %i.ajd = extractelement <16 x i16> %i.aio, i64 15
  %.idx240 = mul i64 %i.air, 14
  %i.aje = getelementptr inbounds nuw i8, ptr %.1921, i64 %.idx240
  store i16 %i.ajd, ptr %i.aje, align 2, !tbaa !573
  %i.ajf = getelementptr inbounds nuw i8, ptr %.1921, i64 2
  br label %.thread773

.thread773:                                       ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit, %bb.o, %.thread, %bb.p
  %.4 = phi ptr [ %i.ajf, %bb.p ], [ %.1921, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit ], [ %i.ahy, %.thread ], [ %i.ain, %bb.o ] ; 2 uses
  %i.ajg = add nuw nsw i32 %.0220920, 1           ; 2 uses
  %exitcond1016.not = icmp eq i32 %i.ajg, %i.ae
  br i1 %exitcond1016.not, label %._crit_edge, label %bb.c, !llvm.loop !2542

._crit_edge929:                                   ; preds = %._crit_edge926.split, %_ZN4ncnn3MatD2Ev.exit261.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge929, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <16 x i8> @llvm.x86.sse3.ldu.dq(ptr) #27

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #29

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.minnum.v2f32(<2 x float>, <2 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.exp.v2f32(<2 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.log.v2f32(<2 x float>) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.tanh.v2f32(<2 x float>) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v8f32(float, <8 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.maxnum.v4f32(<4 x float>, <4 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.minnum.v4f32(<4 x float>, <4 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.exp.v4f32(<4 x float>) #13

attributes #0 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { nounwind }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { mustprogress uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #17 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #18 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #21 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #22 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #23 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #24 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #25 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #28 = { nofree nounwind }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #32 = { noreturn nounwind }
attributes #33 = { builtin nounwind }
attributes #34 = { cold nounwind }
attributes #35 = { noreturn }
attributes #36 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"vtable pointer", !8, i64 0}
!11 = !{!12, !14, i64 8}
!12 = !{!"_ZTSN4ncnn3MatE", !13, i64 0, !14, i64 8, !15, i64 16, !6, i64 24, !16, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !15, i64 64}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"p1 int", !13, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"p1 _ZTSN4ncnn9AllocatorE", !13, i64 0}
!17 = !{!12, !16, i64 32}
!18 = !{!12, !13, i64 0}
!19 = distinct !{null}
!20 = !{!12, !15, i64 64}
!21 = !{!22, !6, i64 344}
!22 = !{!"_ZTSN4ncnn11ConvolutionE", !23, i64 0, !6, i64 208, !6, i64 212, !6, i64 216, !6, i64 220, !6, i64 224, !6, i64 228, !6, i64 232, !6, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !37, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !12, i64 272, !6, i64 344, !12, i64 352, !12, i64 424, !12, i64 496, !12, i64 568, !12, i64 640}
!23 = !{!"_ZTSN4ncnn5LayerE", !24, i64 8, !24, i64 9, !24, i64 10, !24, i64 11, !24, i64 12, !24, i64 13, !24, i64 14, !24, i64 15, !24, i64 16, !24, i64 17, !24, i64 18, !24, i64 19, !24, i64 20, !24, i64 21, !24, i64 22, !24, i64 23, !24, i64 24, !24, i64 25, !24, i64 26, !24, i64 27, !6, i64 28, !13, i64 32, !6, i64 40, !25, i64 48, !25, i64 80, !28, i64 112, !28, i64 136, !32, i64 160, !32, i64 184}
!24 = !{!"bool", !7, i64 0}
!25 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !26, i64 0, !15, i64 8, !7, i64 16}
!26 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !27, i64 0}
!27 = !{!"p1 omnipotent char", !13, i64 0}
!28 = !{!"_ZTSSt6vectorIiSaIiEE", !29, i64 0}
!29 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !30, i64 0}
!30 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !31, i64 0}
!31 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!32 = !{!"_ZTSSt6vectorIN4ncnn3MatESaIS1_EE", !33, i64 0}
!33 = !{!"_ZTSSt12_Vector_baseIN4ncnn3MatESaIS1_EE", !34, i64 0}
!34 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE12_Vector_implE", !35, i64 0}
!35 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE17_Vector_impl_dataE", !36, i64 0, !36, i64 8, !36, i64 16}
!36 = !{!"p1 _ZTSN4ncnn3MatE", !13, i64 0}
!37 = !{!"float", !7, i64 0}
!38 = !{!22, !6, i64 268}
!39 = !{!37, !37, i64 0}
!40 = distinct !{null}
!41 = !{!42, !43, i64 712}
!42 = !{!"_ZTSN4ncnn19Convolution_x86_avxE", !22, i64 0, !43, i64 712, !6, i64 720, !12, i64 728, !12, i64 800, !12, i64 872, !12, i64 944, !12, i64 1016, !43, i64 1088, !12, i64 1096}
!43 = !{!"p1 _ZTSN4ncnn5LayerE", !13, i64 0}
!44 = !{!45, !6, i64 4}
!45 = !{!"_ZTSN4ncnn6OptionE", !24, i64 0, !24, i64 1, !24, i64 2, !24, i64 3, !6, i64 4, !16, i64 8, !16, i64 16, !6, i64 24, !24, i64 28, !24, i64 29, !24, i64 30, !24, i64 31, !24, i64 32, !24, i64 33, !24, i64 34, !24, i64 35, !24, i64 36, !24, i64 37, !24, i64 38, !24, i64 39, !6, i64 40, !24, i64 44, !24, i64 45, !24, i64 46, !24, i64 47, !7, i64 48, !24, i64 49, !24, i64 50, !24, i64 51, !24, i64 52, !24, i64 53, !24, i64 54, !24, i64 55, !24, i64 56, !24, i64 57, !24, i64 58, !24, i64 59, !24, i64 60, !24, i64 61, !24, i64 62, !24, i64 63}
!46 = !{!42, !6, i64 720}
!47 = !{!45, !24, i64 30}
!48 = !{i8 0, i8 2}
!49 = !{}
!50 = !{!22, !15, i64 368}
!51 = !{!45, !24, i64 32}
!52 = !{!22, !6, i64 212}
!53 = !{!22, !6, i64 216}
!54 = !{!22, !6, i64 260}
!55 = !{!22, !6, i64 208}
!56 = !{!45, !24, i64 39}
!57 = !{!22, !6, i64 220}
!58 = !{!22, !6, i64 224}
!59 = !{!22, !6, i64 228}
!60 = !{!22, !6, i64 232}
!61 = !{!42, !43, i64 1088}
!62 = !{!22, !6, i64 256}
!63 = distinct !{null}
!64 = !{!13, !13, i64 0}
!65 = !{!12, !15, i64 16}
!66 = !{!12, !6, i64 24}
!67 = !{!6, !6, i64 0}
!68 = !{!12, !6, i64 56}
!69 = !{!45, !24, i64 0}
!70 = !{!45, !24, i64 55}
!71 = !{!45, !24, i64 56}
!72 = !{!45, !24, i64 57}
!73 = !{!45, !24, i64 28}
!74 = !{!36, !36, i64 0}
!75 = !{!12, !6, i64 44}
!76 = !{!12, !6, i64 48}
!77 = !{!22, !6, i64 236}
!78 = !{!22, !6, i64 240}
!79 = !{!22, !6, i64 244}
!80 = !{!22, !6, i64 248}
!81 = !{!45, !24, i64 29}
!82 = distinct !{!82, !83, !84}
!83 = !{!"llvm.loop.mustprogress"}
!84 = !{!"llvm.loop.isvectorized", i32 1}
!85 = distinct !{!85, !86}
!86 = !{!"llvm.loop.unroll.disable"}
!87 = distinct !{!87, !83}
!88 = distinct !{!88, !83}
!89 = distinct !{!89, !83}
!90 = !{!91}
!91 = distinct !{!91, !92, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!92 = distinct !{!92, !"_ZN4ncnn3Mat7channelEi"}
!93 = !{!94}
!94 = distinct !{!94, !95, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!95 = distinct !{!95, !"_ZN4ncnn3Mat7channelEi"}
!96 = distinct !{!96, !83}
!97 = distinct !{!97, !83}
!98 = distinct !{!98, !83}
!99 = distinct !{!99, !83}
!100 = distinct !{!100, !83}
!101 = distinct !{!101, !83}
!102 = !{!103}
!103 = distinct !{!103, !104}
!104 = distinct !{!104, !"LVerDomain"}
!105 = !{!106}
!106 = distinct !{!106, !104}
!107 = !{!108}
!108 = distinct !{!108, !104}
!109 = !{!110}
!110 = distinct !{!110, !104}
!111 = !{!112}
!112 = distinct !{!112, !104}
!113 = !{!114}
!114 = distinct !{!114, !104}
!115 = !{!116}
!116 = distinct !{!116, !104}
!117 = !{!118}
!118 = distinct !{!118, !104}
!119 = !{!120}
!120 = distinct !{!120, !104}
!121 = !{!118, !116, !114, !112, !110, !108, !106, !103}
!122 = distinct !{!122, !83, !84, !123}
!123 = !{!"llvm.loop.unroll.runtime.disable"}
!124 = distinct !{!124, !83}
!125 = distinct !{!125, !83, !84}
!126 = distinct !{!126, !83}
!127 = !{!128}
!128 = distinct !{!128, !129, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!129 = distinct !{!129, !"_ZN4ncnn3Mat7channelEi"}
!130 = distinct !{!130, !83}
!131 = distinct !{!131, !83}
!132 = distinct !{!132, !83}
!133 = distinct !{!133, !83}
!134 = !{!135}
!135 = distinct !{!135, !136}
!136 = distinct !{!136, !"LVerDomain"}
!137 = !{!138}
!138 = distinct !{!138, !136}
!139 = !{!140}
!140 = distinct !{!140, !136}
!141 = !{!142}
!142 = distinct !{!142, !136}
!143 = !{!144}
!144 = distinct !{!144, !136}
!145 = !{!146}
!146 = distinct !{!146, !136}
!147 = !{!148}
end_hunk_2
