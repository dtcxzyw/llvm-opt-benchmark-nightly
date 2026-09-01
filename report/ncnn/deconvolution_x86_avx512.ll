Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/deconvolution_x86_avx512?download=true
inline.NumInlined: 20
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 96
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 115
begin_hunk_0_@_ZN4ncnnL26deconvolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE:bb.a
  %.reass.us7769.us.us.us = mul i64 %factor.op.mul.us.us7793.us.us, %indvars.iv8550
  %gep7751.us.us.us.us = getelementptr i8, ptr %invariant.gep7750.us.us.us.us, i64 %.reass.us7769.us.us.us
  %i.frd = load i16, ptr %gep7751.us.us.us.us, align 2, !tbaa !1588
  %.reass.us7769.us.us.us.1 = mul i64 %factor.op.mul.us.us7793.us.us, %i.for
  %gep7751.us.us.us.us.1 = getelementptr i8, ptr %invariant.gep7750.us.us.us.us, i64 %.reass.us7769.us.us.us.1
  %i.fre = load i16, ptr %gep7751.us.us.us.us.1, align 2, !tbaa !1588
  %.reass.us7769.us.us.us.2 = mul i64 %factor.op.mul.us.us7793.us.us, %i.fos
  %gep7751.us.us.us.us.2 = getelementptr i8, ptr %invariant.gep7750.us.us.us.us, i64 %.reass.us7769.us.us.us.2
  %i.frf = load i16, ptr %gep7751.us.us.us.us.2, align 2, !tbaa !1588
  %.reass.us7769.us.us.us.3 = mul i64 %factor.op.mul.us.us7793.us.us, %i.fot
  %gep7751.us.us.us.us.3 = getelementptr i8, ptr %invariant.gep7750.us.us.us.us, i64 %.reass.us7769.us.us.us.3
  %i.frg = load i16, ptr %gep7751.us.us.us.us.3, align 2, !tbaa !1588
  %i.frh = zext i16 %i.frg to i32
  %i.fri = zext i16 %i.frf to i32
  %i.frj = zext i16 %i.fre to i32
  %i.frk = zext i16 %i.frd to i32
  %i.frl = insertelement <4 x i32> poison, i32 %i.frk, i64 0
  %i.frm = insertelement <4 x i32> %i.frl, i32 %i.frj, i64 1
  %i.frn = insertelement <4 x i32> %i.frm, i32 %i.fri, i64 2
  %i.fro = insertelement <4 x i32> %i.frn, i32 %i.frh, i64 3
  %i.frp = shl nuw <4 x i32> %i.fro, splat (i32 16)
  %.sroa.08698.12.vec.insert = bitcast <4 x i32> %i.frp to <4 x float> ; 2 uses
  %i.frq = add nuw nsw i64 %i.foz, %indvars.iv8535
  %i.frr = shl i64 %i.frq, 3
  %i.frs = and i64 %i.frr, 4294967288
  %i.frt = getelementptr inbounds nuw [2 x i8], ptr %.219027800.us.us, i64 %i.frs ; 2 uses
  %i.fru = load i64, ptr %i.frt, align 1, !tbaa !1223
  %i.frv = insertelement <2 x i64> poison, i64 %i.fru, i64 0
  %i.frw = bitcast <2 x i64> %i.frv to <8 x i16>
  %i.frx = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.frw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fry = bitcast <8 x i16> %i.frx to <4 x float>
  %i.frz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sroa.08698.12.vec.insert, <4 x float> nofpclass(nan inf) %i.fry, <4 x float> nofpclass(nan inf) %.267607753.us7765.us.us.us)
  %i.fsa = getelementptr inbounds nuw i8, ptr %i.frt, i64 8
  %i.fsb = load i64, ptr %i.fsa, align 1, !tbaa !1223
  %i.fsc = insertelement <2 x i64> poison, i64 %i.fsb, i64 0
  %i.fsd = bitcast <2 x i64> %i.fsc to <8 x i16>
  %i.fse = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fsd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fsf = bitcast <8 x i16> %i.fse to <4 x float>
  %i.fsg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sroa.08698.12.vec.insert, <4 x float> nofpclass(nan inf) %i.fsf, <4 x float> nofpclass(nan inf) %.267557754.us7764.us.us.us)
  br label %bb.cg

bb.cg:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit2224.us.us.us.us, %bb.cf, %.lr.ph.split.us7762.us.us.us
  %.36761.us7770.us.us.us = phi nsz <4 x float> [ %.267607753.us7765.us.us.us, %.lr.ph.split.us7762.us.us.us ], [ %i.frz, %_ZN4ncnn3MatD2Ev.exit2224.us.us.us.us ], [ %.267607753.us7765.us.us.us, %bb.cf ] ; 2 uses
  %.36756.us7771.us.us.us = phi nsz <4 x float> [ %.267557754.us7764.us.us.us, %.lr.ph.split.us7762.us.us.us ], [ %i.fsg, %_ZN4ncnn3MatD2Ev.exit2224.us.us.us.us ], [ %.267557754.us7764.us.us.us, %bb.cf ] ; 2 uses
  %indvars.iv.next8536 = add nuw nsw i64 %indvars.iv8535, 1 ; 2 uses
  %exitcond8539.not = icmp eq i64 %indvars.iv.next8536, %i.fon
  br i1 %exitcond8539.not, label %..loopexit7019_crit_edge.us.us.us, label %.lr.ph.split.us7762.us.us.us, !llvm.loop !1841

._crit_edge7781.split.us.us.us:                   ; preds = %..loopexit7019_crit_edge.us.us.us
  %i.fsh = getelementptr inbounds [2 x i8], ptr %.219027800.us.us, i64 %i.exn ; 2 uses
  %indvars.iv.next8551 = add nuw nsw i64 %indvars.iv8550, 4 ; 3 uses
  %i.fsi = trunc i64 %indvars.iv.next8551 to i32
  %i.fsj = or i32 %i.fsi, 3
  %i.fsk = icmp slt i32 %i.fsj, %i.byf
  br i1 %i.fsk, label %.preheader7026.us.us, label %._crit_edge7804.loopexit, !llvm.loop !1845

._crit_edge7804.loopexit:                         ; preds = %._crit_edge7781.split.us.us.us
  %i.fsl = trunc nuw i64 %indvars.iv.next8551 to i32
  br label %._crit_edge7804

._crit_edge7804:                                  ; preds = %.preheader7026.preheader, %.preheader7026.us.preheader, %._crit_edge7804.loopexit, %._crit_edge7734
  %.06758.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge7734 ], [ %.46762.us.us.us, %._crit_edge7804.loopexit ], [ zeroinitializer, %.preheader7026.us.preheader ], [ zeroinitializer, %.preheader7026.preheader ] ; 4 uses
  %.06753.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge7734 ], [ %.46757.us.us.us, %._crit_edge7804.loopexit ], [ zeroinitializer, %.preheader7026.us.preheader ], [ zeroinitializer, %.preheader7026.preheader ] ; 4 uses
  %.21902.lcssa = phi ptr [ %.11901.lcssa, %._crit_edge7734 ], [ %i.fsh, %._crit_edge7804.loopexit ], [ %scevgep8530, %.preheader7026.us.preheader ], [ %scevgep8528, %.preheader7026.preheader ] ; 3 uses
  %.21897.lcssa = phi i32 [ %.11896.lcssa, %._crit_edge7734 ], [ %i.fsl, %._crit_edge7804.loopexit ], [ %i.fom, %.preheader7026.us.preheader ], [ %i.fob, %.preheader7026.preheader ] ; 6 uses
  %i.fsm = shufflevector <4 x float> %i.fhi, <4 x float> %i.fho, <2 x i32> <i32 3, i32 7>
  %i.fsn = shufflevector <4 x float> %i.fhi, <4 x float> %i.fho, <2 x i32> <i32 1, i32 5>
  %i.fso = fadd fast <2 x float> %i.fsm, %i.fsn
  %i.fsp = fadd fast <2 x float> %i.fso, %i.exu
  %i.fsq = shufflevector <4 x float> %i.fhi, <4 x float> %i.fho, <2 x i32> <i32 2, i32 6>
  %i.fsr = shufflevector <4 x float> %i.fhi, <4 x float> %i.fho, <2 x i32> <i32 0, i32 4>
  %i.fss = fadd fast <2 x float> %i.fsq, %i.fsr
  %i.fst = fadd fast <2 x float> %i.fsp, %i.fss
  %i.fsu = shufflevector <4 x float> %i.fnf, <4 x float> %i.fni, <2 x i32> <i32 3, i32 7>
  %i.fsv = shufflevector <4 x float> %i.fnf, <4 x float> %i.fni, <2 x i32> <i32 1, i32 5>
  %i.fsw = fadd fast <2 x float> %i.fsu, %i.fsv
  %i.fsx = fadd fast <2 x float> %i.fst, %i.fsw
  %i.fsy = shufflevector <4 x float> %i.fnf, <4 x float> %i.fni, <2 x i32> <i32 2, i32 6>
  %i.fsz = shufflevector <4 x float> %i.fnf, <4 x float> %i.fni, <2 x i32> <i32 0, i32 4>
  %i.fta = fadd fast <2 x float> %i.fsy, %i.fsz
  %i.ftb = fadd fast <2 x float> %i.fsx, %i.fta
  %i.ftc = shufflevector <4 x float> %.06758.lcssa, <4 x float> %.06753.lcssa, <2 x i32> <i32 3, i32 7>
  %i.ftd = shufflevector <4 x float> %.06758.lcssa, <4 x float> %.06753.lcssa, <2 x i32> <i32 1, i32 5>
  %i.fte = fadd fast <2 x float> %i.ftc, %i.ftd
  %i.ftf = fadd fast <2 x float> %i.ftb, %i.fte
  %i.ftg = shufflevector <4 x float> %.06758.lcssa, <4 x float> %.06753.lcssa, <2 x i32> <i32 2, i32 6>
  %i.fth = shufflevector <4 x float> %.06758.lcssa, <4 x float> %.06753.lcssa, <2 x i32> <i32 0, i32 4>
  %i.fti = fadd fast <2 x float> %i.ftg, %i.fth
  %i.ftj = fadd fast <2 x float> %i.ftf, %i.fti   ; 3 uses
  %i.ftk = or disjoint i32 %.21897.lcssa, 1
  %i.ftl = icmp slt i32 %i.ftk, %i.byf
  br i1 %i.ftl, label %.preheader7025.lr.ph, label %.preheader7029

.preheader7025.lr.ph:                             ; preds = %._crit_edge7804
  %i.ftm = load i32, ptr %i.j, align 4
  %invariant.op7844 = sub i32 %.neg6954, %i.ftm
  %i.ftn = load i32, ptr %i.f, align 4            ; 2 uses
  %i.fto = load i32, ptr %i.a, align 4
  %.fr8183 = freeze i32 %i.fto                    ; 2 uses
  %i.ftp = icmp sgt i32 %.fr8183, 0
  %i.ftq = load i32, ptr %i.i, align 4
  %.neg6944 = add nuw nsw i32 %.019377913, 1
  %invariant.op7835 = sub i32 %.neg6944, %i.ftq
  %i.ftr = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.exg, label %.preheader7025.us.preheader, label %.preheader7025.preheader

.preheader7025.preheader:                         ; preds = %.preheader7025.lr.ph
  %i.fts = add i32 %.21897.lcssa, 3
  %smax8553 = call i32 @llvm.smax.i32(i32 %i.byf, i32 %i.fts)
  %i.ftt = add i32 %smax8553, -2
  %i.ftu = sub i32 %i.ftt, %.21897.lcssa          ; 2 uses
  %i.ftv = and i32 %i.ftu, -2
  %i.ftw = zext i32 %i.ftv to i64
  %i.ftx = add nuw nsw i64 %i.ftw, 2
  %i.fty = mul nsw i64 %i.ftx, %i.exp
  %scevgep8554 = getelementptr i8, ptr %.21902.lcssa, i64 %i.fty
  %i.ftz = add i32 %.21897.lcssa, 2
  %i.fua = and i32 %i.ftu, -2
  %i.fub = add i32 %i.ftz, %i.fua
  br label %.preheader7029

.preheader7025.us.preheader:                      ; preds = %.preheader7025.lr.ph
  %i.fuc = load i32, ptr %i.c, align 4
  %i.fud = load i32, ptr %i.d, align 4
  %i.fue = zext i32 %.fr8183 to i64               ; 2 uses
  %i.fuf = zext i32 %.21897.lcssa to i64
  br label %.preheader7025.us

.preheader7025.us:                                ; preds = %.preheader7025.us.preheader, %._crit_edge7841.us
  %indvars.iv8568 = phi i64 [ %i.fuf, %.preheader7025.us.preheader ], [ %indvars.iv.next8569, %._crit_edge7841.us ] ; 3 uses
  %.319037852.us = phi ptr [ %.21902.lcssa, %.preheader7025.us.preheader ], [ %i.fuj, %._crit_edge7841.us ] ; 2 uses
  %i.fug = phi <2 x float> [ %i.ftj, %.preheader7025.us.preheader ], [ %i.fui, %._crit_edge7841.us ] ; 2 uses
  br i1 %i.ftp, label %.lr.ph7840.split.us.us.preheader, label %._crit_edge7841.us

.lr.ph7840.split.us.us.preheader:                 ; preds = %.preheader7025.us
  %i.fuh = or disjoint i64 %indvars.iv8568, 1
  br label %.lr.ph7840.split.us.us

._crit_edge7841.us:                               ; preds = %..loopexit7017_crit_edge.us.us, %.preheader7025.us
  %i.fui = phi <2 x float> [ %i.fug, %.preheader7025.us ], [ %i.fvy, %..loopexit7017_crit_edge.us.us ] ; 2 uses
  %i.fuj = getelementptr inbounds [2 x i8], ptr %.319037852.us, i64 %i.exp ; 2 uses
  %indvars.iv.next8569 = add nuw nsw i64 %indvars.iv8568, 2 ; 3 uses
  %i.fuk = trunc i64 %indvars.iv.next8569 to i32
  %i.ful = or i32 %i.fuk, 1
  %i.fum = icmp slt i32 %i.ful, %i.byf
  br i1 %i.fum, label %.preheader7025.us, label %.preheader7029.loopexit, !llvm.loop !1846

.lr.ph7840.split.us.us:                           ; preds = %.lr.ph7840.split.us.us.preheader, %..loopexit7017_crit_edge.us.us
  %indvars.iv8563 = phi i64 [ 0, %.lr.ph7840.split.us.us.preheader ], [ %indvars.iv.next8564, %..loopexit7017_crit_edge.us.us ] ; 3 uses
  %i.fun = phi <2 x float> [ %i.fug, %.lr.ph7840.split.us.us.preheader ], [ %i.fvy, %..loopexit7017_crit_edge.us.us ] ; 3 uses
  %i.fuo = trunc i64 %indvars.iv8563 to i32
  %i.fup = mul i32 %i.fud, %i.fuo
  %.reass7845.us.us = add i32 %i.fup, %invariant.op7844 ; 3 uses
  %i.fuq = icmp slt i32 %.reass7845.us.us, 0
  br i1 %i.fuq, label %..loopexit7017_crit_edge.us.us, label %bb.ch

bb.ch:                                            ; preds = %.lr.ph7840.split.us.us
  %i.fur = srem i32 %.reass7845.us.us, %i.ftn
  %i.fus = sdiv i32 %.reass7845.us.us, %i.ftn     ; 2 uses
  %.not2122.us.us = icmp eq i32 %i.fur, 0
  %.not2123.us.us = icmp slt i32 %i.fus, %i.byj
  %or.cond9376 = select i1 %.not2122.us.us, i1 %.not2123.us.us, i1 false
  br i1 %or.cond9376, label %.preheader7016.us.us, label %..loopexit7017_crit_edge.us.us

bb.ci:                                            ; preds = %.preheader7016.us.us, %.loopexit7013.us.us
  %indvars.iv8558 = phi i64 [ 0, %.preheader7016.us.us ], [ %indvars.iv.next8559, %.loopexit7013.us.us ] ; 3 uses
  %i.fut = phi <2 x float> [ %i.fun, %.preheader7016.us.us ], [ %i.fvx, %.loopexit7013.us.us ] ; 3 uses
  %i.fuu = trunc i64 %indvars.iv8558 to i32
  %i.fuv = mul i32 %i.fuc, %i.fuu
  %.reass7836.us.us = add i32 %i.fuv, %invariant.op7835 ; 3 uses
  %i.fuw = icmp slt i32 %.reass7836.us.us, 0
  br i1 %i.fuw, label %.loopexit7013.us.us, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.fux = srem i32 %.reass7836.us.us, %i.ftr
  %i.fuy = sdiv i32 %.reass7836.us.us, %i.ftr     ; 2 uses
  %.not2124.us.us = icmp eq i32 %i.fux, 0
  %.not2125.us.us = icmp slt i32 %i.fuy, %i.byh
  %or.cond9377 = select i1 %.not2124.us.us, i1 %.not2125.us.us, i1 false
  br i1 %or.cond9377, label %_ZN4ncnn3MatD2Ev.exit2223.us.us, label %.loopexit7013.us.us

_ZN4ncnn3MatD2Ev.exit2223.us.us:                  ; preds = %bb.cj
  %i.fuz = add nuw nsw i64 %i.fvz, %indvars.iv8558
  %i.fva = shl i64 %i.fuz, 2
  %i.fvb = and i64 %i.fva, 4294967292
  %i.fvc = getelementptr inbounds nuw [2 x i8], ptr %.319037852.us, i64 %i.fvb
  %i.fvd = load i32, ptr %i.byg, align 4, !tbaa !58, !noalias !1847
  %i.fve = load ptr, ptr %0, align 8, !tbaa !18, !noalias !1847
  %i.fvf = load i64, ptr %i.byy, align 8, !tbaa !20, !noalias !1847
  %i.fvg = load i64, ptr %i.byz, align 8, !tbaa !59, !noalias !1847 ; 2 uses
  %factor.op.mul.us.us7867 = mul i64 %i.fvf, %i.fvg ; 2 uses
  %i.fvh = sext i32 %i.fvd to i64
  %i.fvi = mul nsw i64 %i.fvh, %i.fwa
  %i.fvj = mul i64 %i.fvi, %i.fvg
  %invariant.gep.us.us7868 = getelementptr i8, ptr %i.fve, i64 %i.fvj
  %i.fvk = sext i32 %i.fuy to i64
  %invariant.gep7825.us.us = getelementptr [2 x i8], ptr %invariant.gep.us.us7868, i64 %i.fvk ; 2 uses
  %.reass.us7846.us = mul i64 %factor.op.mul.us.us7867, %indvars.iv8568
  %gep7826.us.us = getelementptr i8, ptr %invariant.gep7825.us.us, i64 %.reass.us7846.us
  %i.fvl = load i16, ptr %gep7826.us.us, align 2, !tbaa !1588
  %.reass.us7846.us.1 = mul i64 %factor.op.mul.us.us7867, %i.fuh
  %gep7826.us.us.1 = getelementptr i8, ptr %invariant.gep7825.us.us, i64 %.reass.us7846.us.1
  %i.fvm = load i16, ptr %gep7826.us.us.1, align 2, !tbaa !1588
  %i.fvn = load <4 x i16>, ptr %i.fvc, align 2, !tbaa !1588
  %i.fvo = freeze <4 x i16> %i.fvn
  %i.fvp = bitcast <4 x i16> %i.fvo to <2 x i32>  ; 2 uses
  %i.fvq = and <2 x i32> %i.fvp, splat (i32 -65536)
  %i.fvr = shl <2 x i32> %i.fvp, splat (i32 16)
  %i.fvs = bitcast <2 x i32> %i.fvr to <2 x float>
  %13 = insertelement <2 x i16> poison, i16 %i.fvm, i64 0
  %14 = insertelement <2 x i16> %13, i16 %i.fvl, i64 1
  %15 = zext <2 x i16> %14 to <2 x i32>
  %16 = shl nuw <2 x i32> %15, splat (i32 16)
  %17 = bitcast <2 x i32> %16 to <2 x float>      ; 2 uses
  %18 = shufflevector <2 x float> %17, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %19 = fmul fast <2 x float> %18, %i.fvs
  %20 = fadd fast <2 x float> %19, %i.fut
  %i.fvt = bitcast <2 x i32> %i.fvq to <2 x float>
  %i.fvu = shufflevector <2 x float> %17, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fvv = fmul fast <2 x float> %i.fvu, %i.fvt
  %i.fvw = fadd fast <2 x float> %i.fvv, %20
  br label %.loopexit7013.us.us

.loopexit7013.us.us:                              ; preds = %_ZN4ncnn3MatD2Ev.exit2223.us.us, %bb.cj, %bb.ci
  %i.fvx = phi <2 x float> [ %i.fut, %bb.ci ], [ %i.fut, %bb.cj ], [ %i.fvw, %_ZN4ncnn3MatD2Ev.exit2223.us.us ] ; 2 uses
  %indvars.iv.next8559 = add nuw nsw i64 %indvars.iv8558, 1 ; 2 uses
  %exitcond8562.not = icmp eq i64 %indvars.iv.next8559, %i.fue
  br i1 %exitcond8562.not, label %..loopexit7017_crit_edge.us.us, label %bb.ci, !llvm.loop !1850

..loopexit7017_crit_edge.us.us:                   ; preds = %.loopexit7013.us.us, %bb.ch, %.lr.ph7840.split.us.us
  %i.fvy = phi <2 x float> [ %i.fun, %.lr.ph7840.split.us.us ], [ %i.fun, %bb.ch ], [ %i.fvx, %.loopexit7013.us.us ] ; 2 uses
  %indvars.iv.next8564 = add nuw nsw i64 %indvars.iv8563, 1 ; 2 uses
  %exitcond8567.not = icmp eq i64 %indvars.iv.next8564, %wide.trip.count8566
  br i1 %exitcond8567.not, label %._crit_edge7841.us, label %.lr.ph7840.split.us.us, !llvm.loop !1851

.preheader7016.us.us:                             ; preds = %bb.ch
  %i.fvz = mul nuw nsw i64 %indvars.iv8563, %i.fue
  %i.fwa = sext i32 %i.fus to i64
  br label %bb.ci

.preheader7029.loopexit:                          ; preds = %._crit_edge7841.us
  %i.fwb = trunc nuw i64 %indvars.iv.next8569 to i32
  br label %.preheader7029

.preheader7029:                                   ; preds = %.preheader7025.preheader, %.preheader7029.loopexit, %._crit_edge7804
  %.31903.lcssa = phi ptr [ %.21902.lcssa, %._crit_edge7804 ], [ %i.fuj, %.preheader7029.loopexit ], [ %scevgep8554, %.preheader7025.preheader ]
  %.31898.lcssa = phi i32 [ %.21897.lcssa, %._crit_edge7804 ], [ %i.fwb, %.preheader7029.loopexit ], [ %i.fub, %.preheader7025.preheader ] ; 2 uses
  %i.fwc = phi <2 x float> [ %i.ftj, %._crit_edge7804 ], [ %i.fui, %.preheader7029.loopexit ], [ %i.ftj, %.preheader7025.preheader ] ; 3 uses
  %i.fwd = icmp slt i32 %.31898.lcssa, %i.byf
  br i1 %i.fwd, label %.preheader7024.lr.ph, label %._crit_edge7897

.preheader7024.lr.ph:                             ; preds = %.preheader7029
  %i.fwe = load i32, ptr %i.d, align 4
  %i.fwf = load i32, ptr %i.j, align 4
  %invariant.op7886 = sub i32 %.neg6954, %i.fwf
  %i.fwg = load i32, ptr %i.f, align 4            ; 2 uses
  %i.fwh = load i32, ptr %i.a, align 4
  %.fr8184 = freeze i32 %i.fwh                    ; 2 uses
  %i.fwi = load i32, ptr %i.c, align 4
  %i.fwj = load i32, ptr %i.i, align 4
  %.neg6940 = add nuw nsw i32 %.019377913, 1
  %invariant.op7878 = sub i32 %.neg6940, %i.fwj
  %i.fwk = load i32, ptr %i.e, align 4            ; 2 uses
  %i.fwl = icmp sgt i32 %.fr8184, 0
  %or.cond9258 = and i1 %i.exg, %i.fwl
  br i1 %or.cond9258, label %.preheader7024.us.us.preheader, label %._crit_edge7897

.preheader7024.us.us.preheader:                   ; preds = %.preheader7024.lr.ph
  %i.fwm = zext nneg i32 %.fr8184 to i64          ; 2 uses
  %i.fwn = zext i32 %.31898.lcssa to i64
  br label %.preheader7024.us.us

.preheader7024.us.us:                             ; preds = %.preheader7024.us.us.preheader, %._crit_edge7883.split.us.us.us
  %indvars.iv8581 = phi i64 [ %i.fwn, %.preheader7024.us.us.preheader ], [ %indvars.iv.next8582, %._crit_edge7883.split.us.us.us ] ; 2 uses
  %.419047894.us.us = phi ptr [ %.31903.lcssa, %.preheader7024.us.us.preheader ], [ %i.fyg, %._crit_edge7883.split.us.us.us ] ; 2 uses
  %i.fwo = phi <2 x float> [ %i.fwc, %.preheader7024.us.us.preheader ], [ %i.fyd, %._crit_edge7883.split.us.us.us ]
  br label %bb.ck

bb.ck:                                            ; preds = %..loopexit7015_crit_edge.us.us.us, %.preheader7024.us.us
  %indvars.iv8576 = phi i64 [ %indvars.iv.next8577, %..loopexit7015_crit_edge.us.us.us ], [ 0, %.preheader7024.us.us ] ; 3 uses
  %i.fwp = phi <2 x float> [ %i.fyd, %..loopexit7015_crit_edge.us.us.us ], [ %i.fwo, %.preheader7024.us.us ] ; 3 uses
  %i.fwq = trunc i64 %indvars.iv8576 to i32
  %i.fwr = mul i32 %i.fwe, %i.fwq
  %.reass7887.us.us.us = add i32 %i.fwr, %invariant.op7886 ; 3 uses
  %i.fws = icmp slt i32 %.reass7887.us.us.us, 0
  br i1 %i.fws, label %..loopexit7015_crit_edge.us.us.us, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.fwt = srem i32 %.reass7887.us.us.us, %i.fwg
  %i.fwu = sdiv i32 %.reass7887.us.us.us, %i.fwg  ; 2 uses
  %.not2118.us.us.us = icmp eq i32 %i.fwt, 0
  %.not2119.us.us.us = icmp slt i32 %i.fwu, %i.byj
  %or.cond9378 = select i1 %.not2118.us.us.us, i1 %.not2119.us.us.us, i1 false
  br i1 %or.cond9378, label %.preheader7014.us.us.us, label %..loopexit7015_crit_edge.us.us.us

bb.cm:                                            ; preds = %.preheader7014.us.us.us, %bb.co
  %indvars.iv8571 = phi i64 [ 0, %.preheader7014.us.us.us ], [ %indvars.iv.next8572, %bb.co ] ; 3 uses
  %i.fwv = phi <2 x float> [ %i.fwp, %.preheader7014.us.us.us ], [ %i.fyc, %bb.co ] ; 3 uses
  %i.fww = trunc i64 %indvars.iv8571 to i32
  %i.fwx = mul i32 %i.fwi, %i.fww
  %.reass.us7888.us.us = add i32 %i.fwx, %invariant.op7878 ; 3 uses
  %i.fwy = icmp slt i32 %.reass.us7888.us.us, 0
  br i1 %i.fwy, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.fwz = srem i32 %.reass.us7888.us.us, %i.fwk
  %i.fxa = sdiv i32 %.reass.us7888.us.us, %i.fwk  ; 2 uses
  %.not2120.us.us.us = icmp eq i32 %i.fwz, 0
  %.not2121.us.us.us = icmp slt i32 %i.fxa, %i.byh
  %or.cond9379 = select i1 %.not2120.us.us.us, i1 %.not2121.us.us.us, i1 false
  br i1 %or.cond9379, label %_ZN4ncnn3MatD2Ev.exit2222.us.us.us, label %bb.co

_ZN4ncnn3MatD2Ev.exit2222.us.us.us:               ; preds = %bb.cn
  %i.fxb = add nuw nsw i64 %i.fye, %indvars.iv8571
  %.idx9029 = shl nuw nsw i64 %i.fxb, 2
  %i.fxc = getelementptr inbounds nuw i8, ptr %.419047894.us.us, i64 %.idx9029
  %i.fxd = load i32, ptr %i.byg, align 4, !tbaa !58, !noalias !1852
  %i.fxe = load ptr, ptr %0, align 8, !tbaa !18, !noalias !1852
  %i.fxf = load i64, ptr %i.byy, align 8, !tbaa !20, !noalias !1852
  %i.fxg = mul i64 %i.fxf, %indvars.iv8581
  %i.fxh = load i64, ptr %i.byz, align 8, !tbaa !59, !noalias !1852 ; 2 uses
  %i.fxi = mul i64 %i.fxg, %i.fxh
  %i.fxj = getelementptr inbounds nuw i8, ptr %i.fxe, i64 %i.fxi
  %i.fxk = sext i32 %i.fxd to i64
  %i.fxl = mul nsw i64 %i.fxk, %i.fyf
  %i.fxm = mul i64 %i.fxl, %i.fxh
  %i.fxn = getelementptr inbounds nuw i8, ptr %i.fxj, i64 %i.fxm
  %i.fxo = sext i32 %i.fxa to i64
  %i.fxp = getelementptr inbounds [2 x i8], ptr %i.fxn, i64 %i.fxo
  %i.fxq = load i16, ptr %i.fxp, align 2, !tbaa !1588
  %i.fxr = zext i16 %i.fxq to i32
  %i.fxs = shl nuw i32 %i.fxr, 16
  %i.fxt = load <2 x i16>, ptr %i.fxc, align 2, !tbaa !1588
  %i.fxu = zext <2 x i16> %i.fxt to <2 x i32>
  %i.fxv = shl nuw <2 x i32> %i.fxu, splat (i32 16)
  %i.fxw = bitcast <2 x i32> %i.fxv to <2 x float>
  %i.fxx = insertelement <2 x i32> poison, i32 %i.fxs, i64 0
  %i.fxy = bitcast <2 x i32> %i.fxx to <2 x float>
  %i.fxz = shufflevector <2 x float> %i.fxy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fya = fmul fast <2 x float> %i.fxz, %i.fxw
  %i.fyb = fadd fast <2 x float> %i.fya, %i.fwv
  br label %bb.co

bb.co:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit2222.us.us.us, %bb.cn, %bb.cm
  %i.fyc = phi <2 x float> [ %i.fwv, %bb.cm ], [ %i.fwv, %bb.cn ], [ %i.fyb, %_ZN4ncnn3MatD2Ev.exit2222.us.us.us ] ; 2 uses
  %indvars.iv.next8572 = add nuw nsw i64 %indvars.iv8571, 1 ; 2 uses
  %exitcond8575.not = icmp eq i64 %indvars.iv.next8572, %i.fwm
  br i1 %exitcond8575.not, label %..loopexit7015_crit_edge.us.us.us, label %bb.cm, !llvm.loop !1855

..loopexit7015_crit_edge.us.us.us:                ; preds = %bb.co, %bb.cl, %bb.ck
  %i.fyd = phi <2 x float> [ %i.fwp, %bb.ck ], [ %i.fwp, %bb.cl ], [ %i.fyc, %bb.co ] ; 3 uses
  %indvars.iv.next8577 = add nuw nsw i64 %indvars.iv8576, 1 ; 2 uses
  %exitcond8580.not = icmp eq i64 %indvars.iv.next8577, %wide.trip.count8579
  br i1 %exitcond8580.not, label %._crit_edge7883.split.us.us.us, label %bb.ck, !llvm.loop !1856

.preheader7014.us.us.us:                          ; preds = %bb.cl
  %i.fye = mul nuw nsw i64 %indvars.iv8576, %i.fwm
  %i.fyf = sext i32 %i.fwu to i64
  br label %bb.cm

._crit_edge7883.split.us.us.us:                   ; preds = %..loopexit7015_crit_edge.us.us.us
  %i.fyg = getelementptr inbounds [2 x i8], ptr %.419047894.us.us, i64 %i.exr
  %indvars.iv.next8582 = add nuw nsw i64 %indvars.iv8581, 1 ; 2 uses
  %i.fyh = trunc nuw i64 %indvars.iv.next8582 to i32
  %i.fyi = icmp sgt i32 %i.byf, %i.fyh
  br i1 %i.fyi, label %.preheader7024.us.us, label %._crit_edge7897, !llvm.loop !1857

._crit_edge7897:                                  ; preds = %._crit_edge7883.split.us.us.us, %.preheader7024.lr.ph, %.preheader7029
  %i.fyj = phi <2 x float> [ %i.fwc, %.preheader7029 ], [ %i.fwc, %.preheader7024.lr.ph ], [ %i.fyd, %._crit_edge7883.split.us.us.us ] ; 12 uses
  switch i32 %i.exd, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3310 [
    i32 1, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3311.thread6890
    i32 2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3311.thread6893
    i32 3, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3311.thread6887
    i32 4, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3311.thread6896
    i32 5, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3311.thread6899
    i32 6, label %bb.cp
  ]

_ZL13activation_ssfiRKN4ncnn3MatE.exit3311.thread6890: ; preds = %._crit_edge7897
  %i.fyk = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.fyj, <2 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3310

_ZL13activation_ssfiRKN4ncnn3MatE.exit3311.thread6893: ; preds = %._crit_edge7897
  %i.fyl = load ptr, ptr %11, align 8, !tbaa !18
  %i.fym = load float, ptr %i.fyl, align 4, !tbaa !39
  %i.fyn = fcmp fast ogt <2 x float> %i.fyj, zeroinitializer
  %i.fyo = insertelement <2 x float> poison, float %i.fym, i64 0
  %i.fyp = shufflevector <2 x float> %i.fyo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fyq = select <2 x i1> %i.fyn, <2 x float> splat (float 1.000000e+00), <2 x float> %i.fyp
  %i.fyr = fmul fast <2 x float> %i.fyq, %i.fyj
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3310

_ZL13activation_ssfiRKN4ncnn3MatE.exit3311.thread6887: ; preds = %._crit_edge7897
  %i.fys = load ptr, ptr %11, align 8, !tbaa !18  ; 2 uses
  %i.fyt = load float, ptr %i.fys, align 4, !tbaa !39 ; 2 uses
  %i.fyu = getelementptr inbounds nuw i8, ptr %i.fys, i64 4
  %i.fyv = load float, ptr %i.fyu, align 4, !tbaa !39 ; 3 uses
  %i.fyw = extractelement <2 x float> %i.fyj, i64 0
  %spec.select = call nnan ninf nsz float @llvm.maxnum.f32(float %i.fyw, float %i.fyt) ; 2 uses
  %i.fyx = fcmp fast ogt float %spec.select, %i.fyv
  %.166656889 = select i1 %i.fyx, float %i.fyv, float %spec.select
  %i.fyy = extractelement <2 x float> %i.fyj, i64 1
  %.06666 = call nnan ninf nsz float @llvm.maxnum.f32(float %i.fyy, float %i.fyt)
  %spec.select6914 = call nnan ninf nsz float @llvm.minnum.f32(float %.06666, float %i.fyv)
  %i.fyz = insertelement <2 x float> poison, float %.166656889, i64 0
  %i.fza = insertelement <2 x float> %i.fyz, float %spec.select6914, i64 1
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3310

_ZL13activation_ssfiRKN4ncnn3MatE.exit3311.thread6896: ; preds = %._crit_edge7897
  %i.fzb = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.fyj, <2 x float> splat (float f0x42B0C0A5))
  %i.fzc = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.fzb, <2 x float> splat (float f0xC2B0C0A5))
  %i.fzd = fneg fast <2 x float> %i.fzc
  %i.fze = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.fzd)
  %i.fzf = fadd fast <2 x float> %i.fze, splat (float 1.000000e+00)
  %i.fzg = fdiv fast <2 x float> splat (float 1.000000e+00), %i.fzf
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3310

_ZL13activation_ssfiRKN4ncnn3MatE.exit3311.thread6899: ; preds = %._crit_edge7897
  %i.fzh = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.fyj)
  %i.fzi = fadd fast <2 x float> %i.fzh, splat (float 1.000000e+00)
  %i.fzj = call fast <2 x float> @llvm.log.v2f32(<2 x float> %i.fzi)
end_hunk_0
