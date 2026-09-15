Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/deconvolution_x86_avx512?download=true
inline.NumInlined: 20
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 96
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 115
begin_hunk_0_@_ZN4ncnnL26deconvolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE:bb.a
  %i.fqt = load i64, ptr %i.byt, align 8, !tbaa !21, !noalias !1900
  %i.fqu = mul i64 %i.fqt, %i.fog
  %i.fqv = load i64, ptr %i.byu, align 8, !tbaa !56, !noalias !1900 ; 2 uses
  %i.fqw = mul i64 %i.fqu, %i.fqv
  %i.fqx = getelementptr inbounds nuw i8, ptr %i.fqs, i64 %i.fqw
  %i.fqy = sext i32 %i.fqr to i64
  %i.fqz = mul nsw i64 %i.fqy, %i.foq
  %i.fra = mul i64 %i.fqz, %i.fqv
  %i.frb = getelementptr inbounds nuw i8, ptr %i.fqx, i64 %i.fra
  %i.frc = shl nsw i32 %i.fqm, 2
  %i.frd = sext i32 %i.frc to i64
  %i.fre = getelementptr inbounds [2 x i8], ptr %i.frb, i64 %i.frd
  %i.frf = load i64, ptr %i.fre, align 1, !tbaa !82
  %i.frg = insertelement <2 x i64> poison, i64 %i.frf, i64 0
  %i.frh = bitcast <2 x i64> %i.frg to <8 x i16>
  %i.fri = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.frh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.frj = bitcast <8 x i16> %i.fri to <4 x float> ; 2 uses
  %i.frk = load i64, ptr %i.fqq, align 1, !tbaa !82
  %i.frl = insertelement <2 x i64> poison, i64 %i.frk, i64 0
  %i.frm = bitcast <2 x i64> %i.frl to <8 x i16>
  %i.frn = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.frm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fro = bitcast <8 x i16> %i.frn to <4 x float>
  %i.frp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.frj, <4 x float> nofpclass(nan inf) %i.fro, <4 x float> nofpclass(nan inf) %.267607753.us.us.us.us)
  %i.frq = getelementptr inbounds nuw i8, ptr %i.fqq, i64 8
  %i.frr = load i64, ptr %i.frq, align 1, !tbaa !82
  %i.frs = insertelement <2 x i64> poison, i64 %i.frr, i64 0
  %i.frt = bitcast <2 x i64> %i.frs to <8 x i16>
  %i.fru = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.frt, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.frv = bitcast <8 x i16> %i.fru to <4 x float>
  %i.frw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.frj, <4 x float> nofpclass(nan inf) %i.frv, <4 x float> nofpclass(nan inf) %.267557754.us.us.us.us)
  br label %bb.cg

bb.cg:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit2225.us.us.us.us, %bb.cf, %.lr.ph.split.us.us.us7816.us
  %.36761.us.us.us.us = phi nsz <4 x float> [ %.267607753.us.us.us.us, %.lr.ph.split.us.us.us7816.us ], [ %.267607753.us.us.us.us, %bb.cf ], [ %i.frp, %_ZN4ncnn3MatD2Ev.exit2225.us.us.us.us ] ; 2 uses
  %.36756.us.us.us.us = phi nsz <4 x float> [ %.267557754.us.us.us.us, %.lr.ph.split.us.us.us7816.us ], [ %.267557754.us.us.us.us, %bb.cf ], [ %i.frw, %_ZN4ncnn3MatD2Ev.exit2225.us.us.us.us ] ; 2 uses
  %indvars.iv.next8531 = add nuw nsw i64 %indvars.iv8530, 1 ; 2 uses
  %exitcond8534.not = icmp eq i64 %indvars.iv.next8531, %i.fod
  br i1 %exitcond8534.not, label %..loopexit7019_crit_edge.us.us.us, label %.lr.ph.split.us.us.us7816.us, !llvm.loop !1804

..loopexit7019_crit_edge.us.us.us:                ; preds = %bb.ce, %bb.cg, %.preheader7018.us.us.us, %bb.cc, %bb.cb
  %.46762.us.us.us = phi nsz <4 x float> [ %.167597777.us.us.us, %bb.cb ], [ %.167597777.us.us.us, %bb.cc ], [ %.36761.us.us.us.us, %bb.cg ], [ %.167597777.us.us.us, %.preheader7018.us.us.us ], [ %.36761.us7770.us.us.us, %bb.ce ] ; 3 uses
  %.46757.us.us.us = phi nsz <4 x float> [ %.167547778.us.us.us, %bb.cb ], [ %.167547778.us.us.us, %bb.cc ], [ %.36756.us.us.us.us, %bb.cg ], [ %.167547778.us.us.us, %.preheader7018.us.us.us ], [ %.36756.us7771.us.us.us, %bb.ce ] ; 3 uses
  %indvars.iv.next8536 = add nuw nsw i64 %indvars.iv8535, 1 ; 2 uses
  %exitcond8539.not = icmp eq i64 %indvars.iv.next8536, %wide.trip.count8538
  br i1 %exitcond8539.not, label %._crit_edge7781.split.us.us.us, label %bb.cb, !llvm.loop !1807

._crit_edge7781.split.us.us.us:                   ; preds = %..loopexit7019_crit_edge.us.us.us
  %i.frx = getelementptr inbounds [2 x i8], ptr %.219027800.us.us, i64 %i.exj ; 2 uses
  %indvars.iv.next8541 = add nuw nsw i64 %indvars.iv8540, 4 ; 3 uses
  %i.fry = trunc i64 %indvars.iv.next8541 to i32
  %i.frz = or i32 %i.fry, 3
  %i.fsa = icmp slt i32 %i.frz, %i.bya
  br i1 %i.fsa, label %.preheader7026.us.us, label %._crit_edge7804.loopexit, !llvm.loop !1808

._crit_edge7804.loopexit:                         ; preds = %._crit_edge7781.split.us.us.us
  %i.fsb = trunc nuw i64 %indvars.iv.next8541 to i32
  br label %._crit_edge7804

._crit_edge7804:                                  ; preds = %.preheader7026.preheader, %.preheader7026.us.preheader, %._crit_edge7804.loopexit, %._crit_edge7734
  %.06758.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge7734 ], [ %.46762.us.us.us, %._crit_edge7804.loopexit ], [ zeroinitializer, %.preheader7026.us.preheader ], [ zeroinitializer, %.preheader7026.preheader ] ; 4 uses
  %.06753.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge7734 ], [ %.46757.us.us.us, %._crit_edge7804.loopexit ], [ zeroinitializer, %.preheader7026.us.preheader ], [ zeroinitializer, %.preheader7026.preheader ] ; 4 uses
  %.21902.lcssa = phi ptr [ %.11901.lcssa, %._crit_edge7734 ], [ %i.frx, %._crit_edge7804.loopexit ], [ %scevgep8520, %.preheader7026.us.preheader ], [ %scevgep8519, %.preheader7026.preheader ] ; 3 uses
  %.21897.lcssa = phi i32 [ %.11896.lcssa, %._crit_edge7734 ], [ %i.fsb, %._crit_edge7804.loopexit ], [ %i.foc, %.preheader7026.us.preheader ], [ %i.fnt, %.preheader7026.preheader ] ; 5 uses
  %i.fsc = shufflevector <4 x float> %i.fhe, <4 x float> %i.fhk, <2 x i32> <i32 3, i32 7>
  %i.fsd = shufflevector <4 x float> %i.fhe, <4 x float> %i.fhk, <2 x i32> <i32 1, i32 5>
  %i.fse = fadd fast <2 x float> %i.fsc, %i.fsd
  %i.fsf = fadd fast <2 x float> %i.fse, %i.exq
  %i.fsg = shufflevector <4 x float> %i.fhe, <4 x float> %i.fhk, <2 x i32> <i32 2, i32 6>
  %i.fsh = shufflevector <4 x float> %i.fhe, <4 x float> %i.fhk, <2 x i32> <i32 0, i32 4>
  %i.fsi = fadd fast <2 x float> %i.fsg, %i.fsh
  %i.fsj = fadd fast <2 x float> %i.fsf, %i.fsi
  %i.fsk = shufflevector <4 x float> %i.fmz, <4 x float> %i.fnc, <2 x i32> <i32 3, i32 7>
  %i.fsl = shufflevector <4 x float> %i.fmz, <4 x float> %i.fnc, <2 x i32> <i32 1, i32 5>
  %i.fsm = fadd fast <2 x float> %i.fsk, %i.fsl
  %i.fsn = fadd fast <2 x float> %i.fsj, %i.fsm
  %i.fso = shufflevector <4 x float> %i.fmz, <4 x float> %i.fnc, <2 x i32> <i32 2, i32 6>
  %i.fsp = shufflevector <4 x float> %i.fmz, <4 x float> %i.fnc, <2 x i32> <i32 0, i32 4>
  %i.fsq = fadd fast <2 x float> %i.fso, %i.fsp
  %i.fsr = fadd fast <2 x float> %i.fsn, %i.fsq
  %i.fss = shufflevector <4 x float> %.06758.lcssa, <4 x float> %.06753.lcssa, <2 x i32> <i32 3, i32 7>
  %i.fst = shufflevector <4 x float> %.06758.lcssa, <4 x float> %.06753.lcssa, <2 x i32> <i32 1, i32 5>
  %i.fsu = fadd fast <2 x float> %i.fss, %i.fst
  %i.fsv = fadd fast <2 x float> %i.fsr, %i.fsu
  %i.fsw = shufflevector <4 x float> %.06758.lcssa, <4 x float> %.06753.lcssa, <2 x i32> <i32 2, i32 6>
  %i.fsx = shufflevector <4 x float> %.06758.lcssa, <4 x float> %.06753.lcssa, <2 x i32> <i32 0, i32 4>
  %i.fsy = fadd fast <2 x float> %i.fsw, %i.fsx
  %i.fsz = fadd fast <2 x float> %i.fsv, %i.fsy   ; 3 uses
  %i.fta = or disjoint i32 %.21897.lcssa, 1
  %i.ftb = icmp slt i32 %i.fta, %i.bya
  br i1 %i.ftb, label %.preheader7025.lr.ph, label %.preheader7029

.preheader7025.lr.ph:                             ; preds = %._crit_edge7804
  %i.ftc = load i32, ptr %i.j, align 4
  %invariant.op7844 = sub i32 %.neg6954, %i.ftc
  %i.ftd = load i32, ptr %i.f, align 4            ; 2 uses
  %i.fte = load i32, ptr %i.a, align 4
  %.fr8183 = freeze i32 %i.fte                    ; 2 uses
  %i.ftf = icmp sgt i32 %.fr8183, 0
  %i.ftg = load i32, ptr %i.i, align 4
  %.neg6944 = add nuw nsw i32 %.019377913, 1
  %invariant.op7835 = sub i32 %.neg6944, %i.ftg
  %i.fth = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.exc, label %.preheader7025.us.preheader, label %.preheader7025.preheader

.preheader7025.preheader:                         ; preds = %.preheader7025.lr.ph
  %i.fti = sub i32 %i.bzk, %.21897.lcssa          ; 2 uses
  %i.ftj = and i32 %i.fti, -2
  %i.ftk = zext i32 %i.ftj to i64
  %i.ftl = add nuw nsw i64 %i.ftk, 2
  %i.ftm = mul nsw i64 %i.ftl, %i.exl
  %scevgep8543 = getelementptr i8, ptr %.21902.lcssa, i64 %i.ftm
  %i.ftn = add i32 %.21897.lcssa, 2
  %i.fto = and i32 %i.fti, -2
  %i.ftp = add i32 %i.ftn, %i.fto
  br label %.preheader7029

.preheader7025.us.preheader:                      ; preds = %.preheader7025.lr.ph
  %i.ftq = load i32, ptr %i.c, align 4
  %i.ftr = load i32, ptr %i.d, align 4
  %i.fts = zext i32 %.fr8183 to i64               ; 2 uses
  %i.ftt = zext i32 %.21897.lcssa to i64
  br label %.preheader7025.us

.preheader7025.us:                                ; preds = %.preheader7025.us.preheader, %._crit_edge7841.us
  %indvars.iv8557 = phi i64 [ %i.ftt, %.preheader7025.us.preheader ], [ %indvars.iv.next8558, %._crit_edge7841.us ] ; 3 uses
  %.319037852.us = phi ptr [ %.21902.lcssa, %.preheader7025.us.preheader ], [ %i.fvo, %._crit_edge7841.us ] ; 2 uses
  %i.ftu = phi <2 x float> [ %i.fsz, %.preheader7025.us.preheader ], [ %i.fvn, %._crit_edge7841.us ] ; 2 uses
  br i1 %i.ftf, label %.lr.ph7840.split.us.us.preheader, label %._crit_edge7841.us

.lr.ph7840.split.us.us.preheader:                 ; preds = %.preheader7025.us
  %i.ftv = or disjoint i64 %indvars.iv8557, 1
  br label %.lr.ph7840.split.us.us

.lr.ph7840.split.us.us:                           ; preds = %.lr.ph7840.split.us.us.preheader, %..loopexit7017_crit_edge.us.us
  %indvars.iv8552 = phi i64 [ 0, %.lr.ph7840.split.us.us.preheader ], [ %indvars.iv.next8553, %..loopexit7017_crit_edge.us.us ] ; 3 uses
  %i.ftw = phi <2 x float> [ %i.ftu, %.lr.ph7840.split.us.us.preheader ], [ %i.fvm, %..loopexit7017_crit_edge.us.us ] ; 3 uses
  %i.ftx = trunc i64 %indvars.iv8552 to i32
  %i.fty = mul i32 %i.ftr, %i.ftx
  %.reass7845.us.us = add i32 %i.fty, %invariant.op7844 ; 3 uses
  %i.ftz = icmp slt i32 %.reass7845.us.us, 0
  br i1 %i.ftz, label %..loopexit7017_crit_edge.us.us, label %bb.ch

bb.ch:                                            ; preds = %.lr.ph7840.split.us.us
  %i.fua = srem i32 %.reass7845.us.us, %i.ftd
  %i.fub = sdiv i32 %.reass7845.us.us, %i.ftd     ; 2 uses
  %.not2122.us.us = icmp eq i32 %i.fua, 0
  %.not2123.us.us = icmp slt i32 %i.fub, %i.bye
  %or.cond9361 = select i1 %.not2122.us.us, i1 %.not2123.us.us, i1 false
  br i1 %or.cond9361, label %.preheader7016.us.us, label %..loopexit7017_crit_edge.us.us

.preheader7016.us.us:                             ; preds = %bb.ch
  %i.fuc = mul nuw nsw i64 %indvars.iv8552, %i.fts
  %i.fud = sext i32 %i.fub to i64
  br label %bb.ci

bb.ci:                                            ; preds = %.loopexit7013.us.us, %.preheader7016.us.us
  %indvars.iv8547 = phi i64 [ %indvars.iv.next8548, %.loopexit7013.us.us ], [ 0, %.preheader7016.us.us ] ; 3 uses
  %i.fue = phi <2 x float> [ %i.fvl, %.loopexit7013.us.us ], [ %i.ftw, %.preheader7016.us.us ] ; 3 uses
  %i.fuf = trunc i64 %indvars.iv8547 to i32
  %i.fug = mul i32 %i.ftq, %i.fuf
  %.reass7836.us.us = add i32 %i.fug, %invariant.op7835 ; 3 uses
  %i.fuh = icmp slt i32 %.reass7836.us.us, 0
  br i1 %i.fuh, label %.loopexit7013.us.us, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.fui = srem i32 %.reass7836.us.us, %i.fth
  %i.fuj = sdiv i32 %.reass7836.us.us, %i.fth     ; 2 uses
  %.not2124.us.us = icmp eq i32 %i.fui, 0
  %.not2125.us.us = icmp slt i32 %i.fuj, %i.byc
  %or.cond9362 = select i1 %.not2124.us.us, i1 %.not2125.us.us, i1 false
  br i1 %or.cond9362, label %_ZN4ncnn3MatD2Ev.exit2223.us.us, label %.loopexit7013.us.us

_ZN4ncnn3MatD2Ev.exit2223.us.us:                  ; preds = %bb.cj
  %i.fuk = add nuw nsw i64 %i.fuc, %indvars.iv8547
  %i.ful = shl i64 %i.fuk, 2
  %i.fum = and i64 %i.ful, 4294967292
  %i.fun = getelementptr inbounds nuw [2 x i8], ptr %.319037852.us, i64 %i.fum
  %i.fuo = load i32, ptr %i.byb, align 4, !tbaa !55, !noalias !1901
  %i.fup = load ptr, ptr %0, align 8, !tbaa !20, !noalias !1901
  %i.fuq = load i64, ptr %i.byt, align 8, !tbaa !21, !noalias !1901
  %i.fur = load i64, ptr %i.byu, align 8, !tbaa !56, !noalias !1901 ; 2 uses
  %factor.op.mul.us.us7867 = mul i64 %i.fuq, %i.fur ; 2 uses
  %i.fus = sext i32 %i.fuo to i64
  %i.fut = mul nsw i64 %i.fus, %i.fud
  %i.fuu = mul i64 %i.fut, %i.fur
  %invariant.gep.us.us7868 = getelementptr i8, ptr %i.fup, i64 %i.fuu
  %i.fuv = sext i32 %i.fuj to i64
  %invariant.gep7825.us.us = getelementptr [2 x i8], ptr %invariant.gep.us.us7868, i64 %i.fuv ; 2 uses
  %.reass.us7846.us = mul i64 %factor.op.mul.us.us7867, %indvars.iv8557
  %gep7826.us.us = getelementptr i8, ptr %invariant.gep7825.us.us, i64 %.reass.us7846.us
  %i.fuw = load i16, ptr %gep7826.us.us, align 2, !tbaa !92
  %.reass.us7846.us.1 = mul i64 %factor.op.mul.us.us7867, %i.ftv
  %gep7826.us.us.1 = getelementptr i8, ptr %invariant.gep7825.us.us, i64 %.reass.us7846.us.1
  %i.fux = load i16, ptr %gep7826.us.us.1, align 2, !tbaa !92
  %i.fuy = load <4 x i16>, ptr %i.fun, align 2, !tbaa !92
  %i.fuz = freeze <4 x i16> %i.fuy
  %i.fva = bitcast <4 x i16> %i.fuz to <2 x i32>  ; 2 uses
  %i.fvb = and <2 x i32> %i.fva, splat (i32 -65536)
  %i.fvc = shl <2 x i32> %i.fva, splat (i32 16)
  %i.fvd = bitcast <2 x i32> %i.fvc to <2 x float>
  %13 = insertelement <2 x i16> poison, i16 %i.fux, i64 0
  %14 = insertelement <2 x i16> %13, i16 %i.fuw, i64 1
  %15 = zext <2 x i16> %14 to <2 x i32>
  %16 = shl nuw <2 x i32> %15, splat (i32 16)
  %i.fve = bitcast <2 x i32> %16 to <2 x float>   ; 2 uses
  %17 = shufflevector <2 x float> %i.fve, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fvf = fmul fast <2 x float> %17, %i.fvd
  %i.fvg = fadd fast <2 x float> %i.fvf, %i.fue
  %i.fvh = bitcast <2 x i32> %i.fvb to <2 x float>
  %i.fvi = shufflevector <2 x float> %i.fve, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fvj = fmul fast <2 x float> %i.fvi, %i.fvh
  %i.fvk = fadd fast <2 x float> %i.fvj, %i.fvg
  br label %.loopexit7013.us.us

.loopexit7013.us.us:                              ; preds = %_ZN4ncnn3MatD2Ev.exit2223.us.us, %bb.cj, %bb.ci
  %i.fvl = phi <2 x float> [ %i.fue, %bb.ci ], [ %i.fue, %bb.cj ], [ %i.fvk, %_ZN4ncnn3MatD2Ev.exit2223.us.us ] ; 2 uses
  %indvars.iv.next8548 = add nuw nsw i64 %indvars.iv8547, 1 ; 2 uses
  %exitcond8551.not = icmp eq i64 %indvars.iv.next8548, %i.fts
  br i1 %exitcond8551.not, label %..loopexit7017_crit_edge.us.us, label %bb.ci, !llvm.loop !1811

..loopexit7017_crit_edge.us.us:                   ; preds = %.loopexit7013.us.us, %bb.ch, %.lr.ph7840.split.us.us
  %i.fvm = phi <2 x float> [ %i.ftw, %.lr.ph7840.split.us.us ], [ %i.ftw, %bb.ch ], [ %i.fvl, %.loopexit7013.us.us ] ; 2 uses
  %indvars.iv.next8553 = add nuw nsw i64 %indvars.iv8552, 1 ; 2 uses
  %exitcond8556.not = icmp eq i64 %indvars.iv.next8553, %wide.trip.count8555
  br i1 %exitcond8556.not, label %._crit_edge7841.us, label %.lr.ph7840.split.us.us, !llvm.loop !1812

._crit_edge7841.us:                               ; preds = %..loopexit7017_crit_edge.us.us, %.preheader7025.us
  %i.fvn = phi <2 x float> [ %i.ftu, %.preheader7025.us ], [ %i.fvm, %..loopexit7017_crit_edge.us.us ] ; 2 uses
  %i.fvo = getelementptr inbounds [2 x i8], ptr %.319037852.us, i64 %i.exl ; 2 uses
  %indvars.iv.next8558 = add nuw nsw i64 %indvars.iv8557, 2 ; 3 uses
  %i.fvp = trunc i64 %indvars.iv.next8558 to i32
  %i.fvq = or i32 %i.fvp, 1
  %i.fvr = icmp slt i32 %i.fvq, %i.bya
  br i1 %i.fvr, label %.preheader7025.us, label %.preheader7029.loopexit, !llvm.loop !1813

.preheader7029.loopexit:                          ; preds = %._crit_edge7841.us
  %i.fvs = trunc nuw i64 %indvars.iv.next8558 to i32
  br label %.preheader7029

.preheader7029:                                   ; preds = %.preheader7025.preheader, %.preheader7029.loopexit, %._crit_edge7804
  %.31903.lcssa = phi ptr [ %.21902.lcssa, %._crit_edge7804 ], [ %i.fvo, %.preheader7029.loopexit ], [ %scevgep8543, %.preheader7025.preheader ]
  %.31898.lcssa = phi i32 [ %.21897.lcssa, %._crit_edge7804 ], [ %i.fvs, %.preheader7029.loopexit ], [ %i.ftp, %.preheader7025.preheader ] ; 2 uses
  %i.fvt = phi <2 x float> [ %i.fsz, %._crit_edge7804 ], [ %i.fvn, %.preheader7029.loopexit ], [ %i.fsz, %.preheader7025.preheader ] ; 3 uses
  %i.fvu = icmp slt i32 %.31898.lcssa, %i.bya
  br i1 %i.fvu, label %.preheader7024.lr.ph, label %._crit_edge7897

.preheader7024.lr.ph:                             ; preds = %.preheader7029
  %i.fvv = load i32, ptr %i.d, align 4
  %i.fvw = load i32, ptr %i.j, align 4
  %invariant.op7886 = sub i32 %.neg6954, %i.fvw
  %i.fvx = load i32, ptr %i.f, align 4            ; 2 uses
  %i.fvy = load i32, ptr %i.a, align 4
  %.fr8184 = freeze i32 %i.fvy                    ; 2 uses
  %i.fvz = load i32, ptr %i.c, align 4
  %i.fwa = load i32, ptr %i.i, align 4
  %.neg6940 = add nuw nsw i32 %.019377913, 1
  %invariant.op7878 = sub i32 %.neg6940, %i.fwa
  %i.fwb = load i32, ptr %i.e, align 4            ; 2 uses
  %i.fwc = icmp sgt i32 %.fr8184, 0
  %or.cond9243 = and i1 %i.exc, %i.fwc
  br i1 %or.cond9243, label %.preheader7024.us.us.preheader, label %._crit_edge7897

.preheader7024.us.us.preheader:                   ; preds = %.preheader7024.lr.ph
  %i.fwd = zext nneg i32 %.fr8184 to i64          ; 2 uses
  %i.fwe = zext i32 %.31898.lcssa to i64
  br label %.preheader7024.us.us

.preheader7024.us.us:                             ; preds = %.preheader7024.us.us.preheader, %._crit_edge7883.split.us.us.us
  %indvars.iv8570 = phi i64 [ %i.fwe, %.preheader7024.us.us.preheader ], [ %indvars.iv.next8571, %._crit_edge7883.split.us.us.us ] ; 2 uses
  %.419047894.us.us = phi ptr [ %.31903.lcssa, %.preheader7024.us.us.preheader ], [ %i.fxx, %._crit_edge7883.split.us.us.us ] ; 2 uses
  %i.fwf = phi <2 x float> [ %i.fvt, %.preheader7024.us.us.preheader ], [ %i.fxw, %._crit_edge7883.split.us.us.us ]
  br label %bb.ck

bb.ck:                                            ; preds = %..loopexit7015_crit_edge.us.us.us, %.preheader7024.us.us
  %indvars.iv8565 = phi i64 [ %indvars.iv.next8566, %..loopexit7015_crit_edge.us.us.us ], [ 0, %.preheader7024.us.us ] ; 3 uses
  %i.fwg = phi <2 x float> [ %i.fxw, %..loopexit7015_crit_edge.us.us.us ], [ %i.fwf, %.preheader7024.us.us ] ; 3 uses
  %i.fwh = trunc i64 %indvars.iv8565 to i32
  %i.fwi = mul i32 %i.fvv, %i.fwh
  %.reass7887.us.us.us = add i32 %i.fwi, %invariant.op7886 ; 3 uses
  %i.fwj = icmp slt i32 %.reass7887.us.us.us, 0
  br i1 %i.fwj, label %..loopexit7015_crit_edge.us.us.us, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.fwk = srem i32 %.reass7887.us.us.us, %i.fvx
  %i.fwl = sdiv i32 %.reass7887.us.us.us, %i.fvx  ; 2 uses
  %.not2118.us.us.us = icmp eq i32 %i.fwk, 0
  %.not2119.us.us.us = icmp slt i32 %i.fwl, %i.bye
  %or.cond9363 = select i1 %.not2118.us.us.us, i1 %.not2119.us.us.us, i1 false
  br i1 %or.cond9363, label %.preheader7014.us.us.us, label %..loopexit7015_crit_edge.us.us.us

.preheader7014.us.us.us:                          ; preds = %bb.cl
  %i.fwm = mul nuw nsw i64 %indvars.iv8565, %i.fwd
  %i.fwn = sext i32 %i.fwl to i64
  br label %bb.cm

bb.cm:                                            ; preds = %bb.co, %.preheader7014.us.us.us
  %indvars.iv8560 = phi i64 [ %indvars.iv.next8561, %bb.co ], [ 0, %.preheader7014.us.us.us ] ; 3 uses
  %i.fwo = phi <2 x float> [ %i.fxv, %bb.co ], [ %i.fwg, %.preheader7014.us.us.us ] ; 3 uses
  %i.fwp = trunc i64 %indvars.iv8560 to i32
  %i.fwq = mul i32 %i.fvz, %i.fwp
  %.reass.us7888.us.us = add i32 %i.fwq, %invariant.op7878 ; 3 uses
  %i.fwr = icmp slt i32 %.reass.us7888.us.us, 0
  br i1 %i.fwr, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.fws = srem i32 %.reass.us7888.us.us, %i.fwb
  %i.fwt = sdiv i32 %.reass.us7888.us.us, %i.fwb  ; 2 uses
  %.not2120.us.us.us = icmp eq i32 %i.fws, 0
  %.not2121.us.us.us = icmp slt i32 %i.fwt, %i.byc
  %or.cond9364 = select i1 %.not2120.us.us.us, i1 %.not2121.us.us.us, i1 false
  br i1 %or.cond9364, label %_ZN4ncnn3MatD2Ev.exit2222.us.us.us, label %bb.co

_ZN4ncnn3MatD2Ev.exit2222.us.us.us:               ; preds = %bb.cn
  %i.fwu = add nuw nsw i64 %i.fwm, %indvars.iv8560
  %.idx9014 = shl nuw nsw i64 %i.fwu, 2
  %i.fwv = getelementptr inbounds nuw i8, ptr %.419047894.us.us, i64 %.idx9014
  %i.fww = load i32, ptr %i.byb, align 4, !tbaa !55, !noalias !1902
  %i.fwx = load ptr, ptr %0, align 8, !tbaa !20, !noalias !1902
  %i.fwy = load i64, ptr %i.byt, align 8, !tbaa !21, !noalias !1902
  %i.fwz = mul i64 %i.fwy, %indvars.iv8570
  %i.fxa = load i64, ptr %i.byu, align 8, !tbaa !56, !noalias !1902 ; 2 uses
  %i.fxb = mul i64 %i.fwz, %i.fxa
  %i.fxc = getelementptr inbounds nuw i8, ptr %i.fwx, i64 %i.fxb
  %i.fxd = sext i32 %i.fww to i64
  %i.fxe = mul nsw i64 %i.fxd, %i.fwn
  %i.fxf = mul i64 %i.fxe, %i.fxa
  %i.fxg = getelementptr inbounds nuw i8, ptr %i.fxc, i64 %i.fxf
  %i.fxh = sext i32 %i.fwt to i64
  %i.fxi = getelementptr inbounds [2 x i8], ptr %i.fxg, i64 %i.fxh
  %i.fxj = load i16, ptr %i.fxi, align 2, !tbaa !92
  %i.fxk = zext i16 %i.fxj to i32
  %i.fxl = shl nuw i32 %i.fxk, 16
  %i.fxm = load <2 x i16>, ptr %i.fwv, align 2, !tbaa !92
  %i.fxn = zext <2 x i16> %i.fxm to <2 x i32>
  %i.fxo = shl nuw <2 x i32> %i.fxn, splat (i32 16)
  %i.fxp = bitcast <2 x i32> %i.fxo to <2 x float>
  %i.fxq = insertelement <2 x i32> poison, i32 %i.fxl, i64 0
  %i.fxr = bitcast <2 x i32> %i.fxq to <2 x float>
  %i.fxs = shufflevector <2 x float> %i.fxr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fxt = fmul fast <2 x float> %i.fxs, %i.fxp
  %i.fxu = fadd fast <2 x float> %i.fxt, %i.fwo
  br label %bb.co

bb.co:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit2222.us.us.us, %bb.cn, %bb.cm
  %i.fxv = phi <2 x float> [ %i.fwo, %bb.cm ], [ %i.fwo, %bb.cn ], [ %i.fxu, %_ZN4ncnn3MatD2Ev.exit2222.us.us.us ] ; 2 uses
  %indvars.iv.next8561 = add nuw nsw i64 %indvars.iv8560, 1 ; 2 uses
  %exitcond8564.not = icmp eq i64 %indvars.iv.next8561, %i.fwd
  br i1 %exitcond8564.not, label %..loopexit7015_crit_edge.us.us.us, label %bb.cm, !llvm.loop !1816

..loopexit7015_crit_edge.us.us.us:                ; preds = %bb.co, %bb.cl, %bb.ck
  %i.fxw = phi <2 x float> [ %i.fwg, %bb.ck ], [ %i.fwg, %bb.cl ], [ %i.fxv, %bb.co ] ; 3 uses
  %indvars.iv.next8566 = add nuw nsw i64 %indvars.iv8565, 1 ; 2 uses
  %exitcond8569.not = icmp eq i64 %indvars.iv.next8566, %wide.trip.count8568
  br i1 %exitcond8569.not, label %._crit_edge7883.split.us.us.us, label %bb.ck, !llvm.loop !1817

._crit_edge7883.split.us.us.us:                   ; preds = %..loopexit7015_crit_edge.us.us.us
  %i.fxx = getelementptr inbounds [2 x i8], ptr %.419047894.us.us, i64 %i.exn
  %indvars.iv.next8571 = add nuw nsw i64 %indvars.iv8570, 1 ; 2 uses
  %i.fxy = trunc nuw i64 %indvars.iv.next8571 to i32
  %i.fxz = icmp sgt i32 %i.bya, %i.fxy
  br i1 %i.fxz, label %.preheader7024.us.us, label %._crit_edge7897, !llvm.loop !1818

._crit_edge7897:                                  ; preds = %._crit_edge7883.split.us.us.us, %.preheader7024.lr.ph, %.preheader7029
  %i.fya = phi <2 x float> [ %i.fvt, %.preheader7029 ], [ %i.fvt, %.preheader7024.lr.ph ], [ %i.fxw, %._crit_edge7883.split.us.us.us ] ; 12 uses
  switch i32 %i.ewz, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3310 [
    i32 1, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3311.thread6890
    i32 2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3311.thread6893
    i32 3, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3311.thread6887
    i32 4, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3311.thread6896
    i32 5, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3311.thread6899
    i32 6, label %bb.cp
  ]

_ZL13activation_ssfiRKN4ncnn3MatE.exit3311.thread6890: ; preds = %._crit_edge7897
  %i.fyb = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.fya, <2 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3310

_ZL13activation_ssfiRKN4ncnn3MatE.exit3311.thread6893: ; preds = %._crit_edge7897
  %i.fyc = load ptr, ptr %11, align 8, !tbaa !20
  %i.fyd = load float, ptr %i.fyc, align 4, !tbaa !39
  %i.fye = fcmp fast ogt <2 x float> %i.fya, zeroinitializer
  %i.fyf = insertelement <2 x float> poison, float %i.fyd, i64 0
  %i.fyg = shufflevector <2 x float> %i.fyf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fyh = select <2 x i1> %i.fye, <2 x float> splat (float 1.000000e+00), <2 x float> %i.fyg
  %i.fyi = fmul fast <2 x float> %i.fyh, %i.fya
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3310

_ZL13activation_ssfiRKN4ncnn3MatE.exit3311.thread6887: ; preds = %._crit_edge7897
  %i.fyj = load ptr, ptr %11, align 8, !tbaa !20  ; 2 uses
  %i.fyk = load float, ptr %i.fyj, align 4, !tbaa !39 ; 2 uses
  %i.fyl = getelementptr inbounds nuw i8, ptr %i.fyj, i64 4
  %i.fym = load float, ptr %i.fyl, align 4, !tbaa !39 ; 3 uses
  %i.fyn = extractelement <2 x float> %i.fya, i64 0
  %spec.select = call nnan ninf nsz float @llvm.maxnum.f32(float %i.fyn, float %i.fyk) ; 2 uses
  %i.fyo = fcmp fast ogt float %spec.select, %i.fym
  %.166656889 = select i1 %i.fyo, float %i.fym, float %spec.select
  %i.fyp = extractelement <2 x float> %i.fya, i64 1
  %.06666 = call nnan ninf nsz float @llvm.maxnum.f32(float %i.fyp, float %i.fyk)
  %spec.select6914 = call nnan ninf nsz float @llvm.minnum.f32(float %.06666, float %i.fym)
  %i.fyq = insertelement <2 x float> poison, float %.166656889, i64 0
  %i.fyr = insertelement <2 x float> %i.fyq, float %spec.select6914, i64 1
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3310

_ZL13activation_ssfiRKN4ncnn3MatE.exit3311.thread6896: ; preds = %._crit_edge7897
  %i.fys = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.fya, <2 x float> splat (float f0x42B0C0A5))
  %i.fyt = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.fys, <2 x float> splat (float f0xC2B0C0A5))
  %i.fyu = fneg fast <2 x float> %i.fyt
  %i.fyv = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.fyu)
  %i.fyw = fadd fast <2 x float> %i.fyv, splat (float 1.000000e+00)
  %i.fyx = fdiv fast <2 x float> splat (float 1.000000e+00), %i.fyw
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3310
end_hunk_0
