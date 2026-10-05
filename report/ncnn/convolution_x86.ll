Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86?download=true
inline.NumInlined: 404
inline.NumDeleted: 92
loop-unroll.NumCompletelyUnrolled: 114
loop-unroll.NumRuntimeUnrolled: 106
loop-unroll.NumUnrolled: 220
begin_hunk_0_@_ZN4ncnnL47conv3x3s1_winograd43_transform_input_tile_bf16sERKNS_3MatERS0_iiiii:bb.a
  %i.aeb = shl nsw i32 %i.adz, 2                  ; 2 uses
  %i.aec = sext i32 %i.aeb to i64                 ; 6 uses
  %.reass407.us = mul i64 %factor.op.mul406.us, %i.aec
  %i.aed = getelementptr inbounds nuw i8, ptr %i.adt, i64 %.reass407.us
  %i.aee = shl nsw i32 %i.aea, 2                  ; 6 uses
  %i.aef = sext i32 %i.aee to i64
  %i.aeg = getelementptr inbounds [2 x i8], ptr %i.aed, i64 %i.aef ; 7 uses
  %i.aeh = or disjoint i32 %i.aee, 1
  %i.aei = load i32, ptr %i.f, align 4            ; 5 uses
  %i.aej = icmp slt i32 %i.aeh, %i.aei            ; 6 uses
  %i.aek = or disjoint i32 %i.aee, 2
  %i.ael = icmp slt i32 %i.aek, %i.aei            ; 6 uses
  %i.aem = or disjoint i32 %i.aee, 3
  %i.aen = icmp slt i32 %i.aem, %i.aei            ; 6 uses
  %i.aeo = add nsw i32 %i.aee, 4
  %i.aep = icmp slt i32 %i.aeo, %i.aei            ; 6 uses
  %i.aeq = add nsw i32 %i.aee, 5
  %i.aer = icmp slt i32 %i.aeq, %i.aei            ; 6 uses
  %i.aes = icmp slt i32 %i.aeb, %i.adc
  br i1 %i.aes, label %bb.bv, label %bb.cf

bb.bv:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.us
  %i.aet = load i16, ptr %i.aeg, align 2, !tbaa !110
  %i.aeu = zext i16 %i.aet to i32
  %i.aev = shl nuw i32 %i.aeu, 16
  %i.aew = bitcast i32 %i.aev to float            ; 2 uses
  br i1 %i.aej, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aeg, i64 2
  %i.aey = load i16, ptr %i.aex, align 2, !tbaa !110
  %i.aez = zext i16 %i.aey to i32
  %i.afa = shl nuw i32 %i.aez, 16
  %i.afb = bitcast i32 %i.afa to float
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.0313.us = phi nsz float [ %i.afb, %bb.bw ], [ 0.000000e+00, %bb.bv ] ; 4 uses
  br i1 %i.ael, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.afc = getelementptr inbounds nuw i8, ptr %i.aeg, i64 4
  %i.afd = load i16, ptr %i.afc, align 2, !tbaa !110
  %i.afe = zext i16 %i.afd to i32
  %i.aff = shl nuw i32 %i.afe, 16
  %i.afg = bitcast i32 %i.aff to float
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.0311.us = phi nsz float [ %i.afg, %bb.by ], [ 0.000000e+00, %bb.bx ] ; 2 uses
  br i1 %i.aen, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.afh = getelementptr inbounds nuw i8, ptr %i.aeg, i64 6
  %i.afi = load i16, ptr %i.afh, align 2, !tbaa !110
  %i.afj = zext i16 %i.afi to i32
  %i.afk = shl nuw i32 %i.afj, 16
  %i.afl = bitcast i32 %i.afk to float
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.0309.us = phi nsz float [ %i.afl, %bb.ca ], [ 0.000000e+00, %bb.bz ] ; 2 uses
  br i1 %i.aep, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.afm = getelementptr inbounds nuw i8, ptr %i.aeg, i64 8
  %i.afn = load i16, ptr %i.afm, align 2, !tbaa !110
  %i.afo = zext i16 %i.afn to i32
  %i.afp = shl nuw i32 %i.afo, 16
  %i.afq = bitcast i32 %i.afp to float
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.0307.us = phi nsz float [ %i.afq, %bb.cc ], [ 0.000000e+00, %bb.cb ] ; 2 uses
  br i1 %i.aer, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.afr = getelementptr inbounds nuw i8, ptr %i.aeg, i64 10
  %i.afs = load i16, ptr %i.afr, align 2, !tbaa !110
  %i.aft = zext i16 %i.afs to i32
  %i.afu = shl nuw i32 %i.aft, 16
  %i.afv = bitcast i32 %i.afu to float
  %i.afw = fadd fast float %.0313.us, %i.afv
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd, %_ZN4ncnn3MatD2Ev.exit.us
  %.0315.us = phi nsz float [ %i.aew, %bb.ce ], [ %i.aew, %bb.cd ], [ 0.000000e+00, %_ZN4ncnn3MatD2Ev.exit.us ]
  %.1314.us = phi nsz float [ %.0313.us, %bb.ce ], [ %.0313.us, %bb.cd ], [ 0.000000e+00, %_ZN4ncnn3MatD2Ev.exit.us ] ; 2 uses
  %.1312.us = phi nsz float [ %.0311.us, %bb.ce ], [ %.0311.us, %bb.cd ], [ 0.000000e+00, %_ZN4ncnn3MatD2Ev.exit.us ] ; 3 uses
  %.1310.us = phi nsz float [ %.0309.us, %bb.ce ], [ %.0309.us, %bb.cd ], [ 0.000000e+00, %_ZN4ncnn3MatD2Ev.exit.us ] ; 3 uses
  %.1308.us = phi nsz float [ %.0307.us, %bb.ce ], [ %.0307.us, %bb.cd ], [ 0.000000e+00, %_ZN4ncnn3MatD2Ev.exit.us ] ; 3 uses
  %.0306.us = phi float [ %i.afw, %bb.ce ], [ %.0313.us, %bb.cd ], [ 0.000000e+00, %_ZN4ncnn3MatD2Ev.exit.us ]
  %i.afx = fmul fast float %.1314.us, f0x3FB504F3
  %i.afy = fmul fast float %.1310.us, f0x3F3504F3
  %i.afz = fsub fast float %i.afx, %i.afy         ; 2 uses
  %i.aga = fmul fast float %.1312.us, 2.000000e+00
  %i.agb = fsub fast float %.1308.us, %i.aga      ; 2 uses
  %i.agc = fmul fast float %.1310.us, f0x3FB504F3
  %i.agd = fmul fast float %.1314.us, f0x3F3504F3
  %i.age = fsub fast float %i.agc, %i.agd         ; 2 uses
  %i.agf = fmul fast float %.1312.us, 5.000000e-01
  %i.agg = fsub fast float %.1308.us, %i.agf      ; 2 uses
  %.neg375.us = fmul fast float %.1312.us, -2.500000e+00
  %i.agh = fadd fast float %.0315.us, %.neg375.us
  %i.agi = fadd fast float %i.agh, %.1308.us
  %i.agj = fsub fast float %i.agb, %i.afz
  %i.agk = fadd fast float %i.agb, %i.afz
  %i.agl = fadd fast float %i.agg, %i.age
  %i.agm = fsub fast float %i.agg, %i.age
  %i.agn = fmul fast float %.1310.us, 2.500000e+00
  %i.ago = fsub fast float %.0306.us, %i.agn
  %i.agp = getelementptr inbounds [2 x i8], ptr %i.aeg, i64 %i.acq ; 7 uses
  %i.agq = icmp sgt i64 %invariant.op452, %i.aec
  br i1 %i.agq, label %bb.cg, label %bb.cq

bb.cg:                                            ; preds = %bb.cf
  %i.agr = load i16, ptr %i.agp, align 2, !tbaa !110
  %i.ags = zext i16 %i.agr to i32
  %i.agt = shl nuw i32 %i.ags, 16
  %i.agu = bitcast i32 %i.agt to float            ; 2 uses
  br i1 %i.aej, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agp, i64 2
  %i.agw = load i16, ptr %i.agv, align 2, !tbaa !110
  %i.agx = zext i16 %i.agw to i32
  %i.agy = shl nuw i32 %i.agx, 16
  %i.agz = bitcast i32 %i.agy to float
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %.0313.us.1 = phi nsz float [ %i.agz, %bb.ch ], [ 0.000000e+00, %bb.cg ] ; 4 uses
  br i1 %i.ael, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agp, i64 4
  %i.ahb = load i16, ptr %i.aha, align 2, !tbaa !110
  %i.ahc = zext i16 %i.ahb to i32
  %i.ahd = shl nuw i32 %i.ahc, 16
  %i.ahe = bitcast i32 %i.ahd to float
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %.0311.us.1 = phi nsz float [ %i.ahe, %bb.cj ], [ 0.000000e+00, %bb.ci ] ; 2 uses
  br i1 %i.aen, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.agp, i64 6
  %i.ahg = load i16, ptr %i.ahf, align 2, !tbaa !110
  %i.ahh = zext i16 %i.ahg to i32
  %i.ahi = shl nuw i32 %i.ahh, 16
  %i.ahj = bitcast i32 %i.ahi to float
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %.0309.us.1 = phi nsz float [ %i.ahj, %bb.cl ], [ 0.000000e+00, %bb.ck ] ; 2 uses
  br i1 %i.aep, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.agp, i64 8
  %i.ahl = load i16, ptr %i.ahk, align 2, !tbaa !110
  %i.ahm = zext i16 %i.ahl to i32
  %i.ahn = shl nuw i32 %i.ahm, 16
  %i.aho = bitcast i32 %i.ahn to float
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %.0307.us.1 = phi nsz float [ %i.aho, %bb.cn ], [ 0.000000e+00, %bb.cm ] ; 2 uses
  br i1 %i.aer, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.agp, i64 10
  %i.ahq = load i16, ptr %i.ahp, align 2, !tbaa !110
  %i.ahr = zext i16 %i.ahq to i32
  %i.ahs = shl nuw i32 %i.ahr, 16
  %i.aht = bitcast i32 %i.ahs to float
  %i.ahu = fadd fast float %.0313.us.1, %i.aht
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co, %bb.cf
  %.0315.us.1 = phi nsz float [ %i.agu, %bb.cp ], [ %i.agu, %bb.co ], [ 0.000000e+00, %bb.cf ]
  %.1314.us.1 = phi nsz float [ %.0313.us.1, %bb.cp ], [ %.0313.us.1, %bb.co ], [ 0.000000e+00, %bb.cf ] ; 2 uses
  %.1312.us.1 = phi nsz float [ %.0311.us.1, %bb.cp ], [ %.0311.us.1, %bb.co ], [ 0.000000e+00, %bb.cf ] ; 3 uses
  %.1310.us.1 = phi nsz float [ %.0309.us.1, %bb.cp ], [ %.0309.us.1, %bb.co ], [ 0.000000e+00, %bb.cf ] ; 3 uses
  %.1308.us.1 = phi nsz float [ %.0307.us.1, %bb.cp ], [ %.0307.us.1, %bb.co ], [ 0.000000e+00, %bb.cf ] ; 3 uses
  %.0306.us.1 = phi float [ %i.ahu, %bb.cp ], [ %.0313.us.1, %bb.co ], [ 0.000000e+00, %bb.cf ]
  %i.ahv = fmul fast float %.1314.us.1, f0x3FB504F3
  %i.ahw = fmul fast float %.1310.us.1, f0x3F3504F3
  %i.ahx = fsub fast float %i.ahv, %i.ahw         ; 2 uses
  %i.ahy = fmul fast float %.1312.us.1, 2.000000e+00
  %i.ahz = fsub fast float %.1308.us.1, %i.ahy    ; 2 uses
  %i.aia = fmul fast float %.1310.us.1, f0x3FB504F3
  %i.aib = fmul fast float %.1314.us.1, f0x3F3504F3
  %i.aic = fsub fast float %i.aia, %i.aib         ; 2 uses
  %i.aid = fmul fast float %.1312.us.1, 5.000000e-01
  %i.aie = fsub fast float %.1308.us.1, %i.aid    ; 2 uses
  %.neg375.us.1 = fmul fast float %.1312.us.1, -2.500000e+00
  %i.aif = fadd fast float %.0315.us.1, %.neg375.us.1
  %i.aig = fadd fast float %i.aif, %.1308.us.1    ; 3 uses
  %i.aih = fsub fast float %i.ahz, %i.ahx         ; 3 uses
  %i.aii = fadd fast float %i.ahz, %i.ahx         ; 3 uses
  %i.aij = fadd fast float %i.aie, %i.aic         ; 2 uses
  %i.aik = fsub fast float %i.aie, %i.aic
  %i.ail = fmul fast float %.1310.us.1, 2.500000e+00
  %i.aim = fsub fast float %.0306.us.1, %i.ail    ; 3 uses
  %i.ain = getelementptr inbounds [2 x i8], ptr %i.agp, i64 %i.acq ; 7 uses
  %i.aio = icmp sgt i64 %invariant.op453, %i.aec
  br i1 %i.aio, label %bb.cr, label %bb.db

bb.cr:                                            ; preds = %bb.cq
  %i.aip = load i16, ptr %i.ain, align 2, !tbaa !110
  %i.aiq = zext i16 %i.aip to i32
  %i.air = shl nuw i32 %i.aiq, 16
  %i.ais = bitcast i32 %i.air to float            ; 2 uses
  br i1 %i.aej, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.ait = getelementptr inbounds nuw i8, ptr %i.ain, i64 2
  %i.aiu = load i16, ptr %i.ait, align 2, !tbaa !110
  %i.aiv = zext i16 %i.aiu to i32
  %i.aiw = shl nuw i32 %i.aiv, 16
  %i.aix = bitcast i32 %i.aiw to float
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %.0313.us.2 = phi nsz float [ %i.aix, %bb.cs ], [ 0.000000e+00, %bb.cr ] ; 4 uses
  br i1 %i.ael, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.ain, i64 4
  %i.aiz = load i16, ptr %i.aiy, align 2, !tbaa !110
  %i.aja = zext i16 %i.aiz to i32
  %i.ajb = shl nuw i32 %i.aja, 16
  %i.ajc = bitcast i32 %i.ajb to float
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %.0311.us.2 = phi nsz float [ %i.ajc, %bb.cu ], [ 0.000000e+00, %bb.ct ] ; 2 uses
  br i1 %i.aen, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.ain, i64 6
  %i.aje = load i16, ptr %i.ajd, align 2, !tbaa !110
  %i.ajf = zext i16 %i.aje to i32
  %i.ajg = shl nuw i32 %i.ajf, 16
  %i.ajh = bitcast i32 %i.ajg to float
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %.0309.us.2 = phi nsz float [ %i.ajh, %bb.cw ], [ 0.000000e+00, %bb.cv ] ; 2 uses
  br i1 %i.aep, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ain, i64 8
  %i.ajj = load i16, ptr %i.aji, align 2, !tbaa !110
  %i.ajk = zext i16 %i.ajj to i32
  %i.ajl = shl nuw i32 %i.ajk, 16
  %i.ajm = bitcast i32 %i.ajl to float
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %.0307.us.2 = phi nsz float [ %i.ajm, %bb.cy ], [ 0.000000e+00, %bb.cx ] ; 2 uses
  br i1 %i.aer, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ain, i64 10
  %i.ajo = load i16, ptr %i.ajn, align 2, !tbaa !110
  %i.ajp = zext i16 %i.ajo to i32
  %i.ajq = shl nuw i32 %i.ajp, 16
  %i.ajr = bitcast i32 %i.ajq to float
  %i.ajs = fadd fast float %.0313.us.2, %i.ajr
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz, %bb.cq
  %.0315.us.2 = phi nsz float [ %i.ais, %bb.da ], [ %i.ais, %bb.cz ], [ 0.000000e+00, %bb.cq ]
  %.1314.us.2 = phi nsz float [ %.0313.us.2, %bb.da ], [ %.0313.us.2, %bb.cz ], [ 0.000000e+00, %bb.cq ] ; 2 uses
  %.1312.us.2 = phi nsz float [ %.0311.us.2, %bb.da ], [ %.0311.us.2, %bb.cz ], [ 0.000000e+00, %bb.cq ] ; 3 uses
  %.1310.us.2 = phi nsz float [ %.0309.us.2, %bb.da ], [ %.0309.us.2, %bb.cz ], [ 0.000000e+00, %bb.cq ] ; 3 uses
  %.1308.us.2 = phi nsz float [ %.0307.us.2, %bb.da ], [ %.0307.us.2, %bb.cz ], [ 0.000000e+00, %bb.cq ] ; 3 uses
  %.0306.us.2 = phi float [ %i.ajs, %bb.da ], [ %.0313.us.2, %bb.cz ], [ 0.000000e+00, %bb.cq ]
  %7 = fmul fast float %.1314.us.2, f0x3FB504F3
  %8 = fmul fast float %.1310.us.2, f0x3F3504F3
  %9 = fsub fast float %7, %8                     ; 2 uses
  %10 = fmul fast float %.1312.us.2, 2.000000e+00
  %11 = fsub fast float %.1308.us.2, %10          ; 2 uses
  %12 = fmul fast float %.1310.us.2, f0x3FB504F3
  %13 = fmul fast float %.1314.us.2, f0x3F3504F3
  %14 = fsub fast float %12, %13                  ; 2 uses
  %15 = fmul fast float %.1312.us.2, 5.000000e-01
  %16 = fsub fast float %.1308.us.2, %15          ; 2 uses
  %.neg375.us.2 = fmul fast float %.1312.us.2, -2.500000e+00
  %i.ajt = fadd fast float %.0315.us.2, %.neg375.us.2
  %i.aju = fadd fast float %i.ajt, %.1308.us.2    ; 2 uses
  %17 = fsub fast float %11, %9                   ; 3 uses
  %18 = fadd fast float %11, %9                   ; 3 uses
  %19 = fadd fast float %16, %14                  ; 3 uses
  %20 = fsub fast float %16, %14                  ; 2 uses
  %i.ajv = fmul fast float %.1310.us.2, 2.500000e+00
  %i.ajw = fsub fast float %.0306.us.2, %i.ajv    ; 3 uses
  %i.ajx = getelementptr inbounds [2 x i8], ptr %i.ain, i64 %i.acq ; 7 uses
  %i.ajy = icmp sgt i64 %invariant.op454, %i.aec
  br i1 %i.ajy, label %bb.dc, label %bb.dm

bb.dc:                                            ; preds = %bb.db
  %i.ajz = load i16, ptr %i.ajx, align 2, !tbaa !110
  %i.aka = zext i16 %i.ajz to i32
  %i.akb = shl nuw i32 %i.aka, 16
  %i.akc = bitcast i32 %i.akb to float            ; 2 uses
  br i1 %i.aej, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.akd = getelementptr inbounds nuw i8, ptr %i.ajx, i64 2
  %i.ake = load i16, ptr %i.akd, align 2, !tbaa !110
  %i.akf = zext i16 %i.ake to i32
  %i.akg = shl nuw i32 %i.akf, 16
  %i.akh = bitcast i32 %i.akg to float
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %.0313.us.3 = phi nsz float [ %i.akh, %bb.dd ], [ 0.000000e+00, %bb.dc ] ; 4 uses
  br i1 %i.ael, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.aki = getelementptr inbounds nuw i8, ptr %i.ajx, i64 4
  %i.akj = load i16, ptr %i.aki, align 2, !tbaa !110
  %i.akk = zext i16 %i.akj to i32
  %i.akl = shl nuw i32 %i.akk, 16
  %i.akm = bitcast i32 %i.akl to float
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %.0311.us.3 = phi nsz float [ %i.akm, %bb.df ], [ 0.000000e+00, %bb.de ] ; 2 uses
  br i1 %i.aen, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.akn = getelementptr inbounds nuw i8, ptr %i.ajx, i64 6
  %i.ako = load i16, ptr %i.akn, align 2, !tbaa !110
  %i.akp = zext i16 %i.ako to i32
  %i.akq = shl nuw i32 %i.akp, 16
  %i.akr = bitcast i32 %i.akq to float
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %.0309.us.3 = phi nsz float [ %i.akr, %bb.dh ], [ 0.000000e+00, %bb.dg ] ; 2 uses
  br i1 %i.aep, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.aks = getelementptr inbounds nuw i8, ptr %i.ajx, i64 8
  %i.akt = load i16, ptr %i.aks, align 2, !tbaa !110
  %i.aku = zext i16 %i.akt to i32
  %i.akv = shl nuw i32 %i.aku, 16
  %i.akw = bitcast i32 %i.akv to float
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %.0307.us.3 = phi nsz float [ %i.akw, %bb.dj ], [ 0.000000e+00, %bb.di ] ; 2 uses
  br i1 %i.aer, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.akx = getelementptr inbounds nuw i8, ptr %i.ajx, i64 10
  %i.aky = load i16, ptr %i.akx, align 2, !tbaa !110
  %i.akz = zext i16 %i.aky to i32
  %i.ala = shl nuw i32 %i.akz, 16
  %i.alb = bitcast i32 %i.ala to float
  %i.alc = fadd fast float %.0313.us.3, %i.alb
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk, %bb.db
  %.0315.us.3 = phi nsz float [ %i.akc, %bb.dl ], [ %i.akc, %bb.dk ], [ 0.000000e+00, %bb.db ]
  %.1314.us.3 = phi nsz float [ %.0313.us.3, %bb.dl ], [ %.0313.us.3, %bb.dk ], [ 0.000000e+00, %bb.db ] ; 2 uses
  %.1312.us.3 = phi nsz float [ %.0311.us.3, %bb.dl ], [ %.0311.us.3, %bb.dk ], [ 0.000000e+00, %bb.db ] ; 3 uses
  %.1310.us.3 = phi nsz float [ %.0309.us.3, %bb.dl ], [ %.0309.us.3, %bb.dk ], [ 0.000000e+00, %bb.db ] ; 3 uses
  %.1308.us.3 = phi nsz float [ %.0307.us.3, %bb.dl ], [ %.0307.us.3, %bb.dk ], [ 0.000000e+00, %bb.db ] ; 3 uses
  %.0306.us.3 = phi float [ %i.alc, %bb.dl ], [ %.0313.us.3, %bb.dk ], [ 0.000000e+00, %bb.db ]
  %i.ald = fmul fast float %.1314.us.3, f0x3FB504F3
  %i.ale = fmul fast float %.1310.us.3, f0x3F3504F3
  %i.alf = fsub fast float %i.ald, %i.ale         ; 2 uses
  %i.alg = fmul fast float %.1312.us.3, 2.000000e+00
  %i.alh = fsub fast float %.1308.us.3, %i.alg    ; 2 uses
  %i.ali = fmul fast float %.1310.us.3, f0x3FB504F3
  %i.alj = fmul fast float %.1314.us.3, f0x3F3504F3
  %i.alk = fsub fast float %i.ali, %i.alj         ; 2 uses
  %i.all = fmul fast float %.1312.us.3, 5.000000e-01
  %i.alm = fsub fast float %.1308.us.3, %i.all    ; 2 uses
  %.neg375.us.3 = fmul fast float %.1312.us.3, -2.500000e+00
  %i.aln = fadd fast float %.0315.us.3, %.neg375.us.3
  %i.alo = fadd fast float %i.aln, %.1308.us.3    ; 2 uses
  %i.alp = fsub fast float %i.alh, %i.alf         ; 3 uses
  %i.alq = fadd fast float %i.alh, %i.alf         ; 3 uses
  %i.alr = fadd fast float %i.alm, %i.alk         ; 2 uses
  %i.als = fsub fast float %i.alm, %i.alk
  %i.alt = fmul fast float %.1310.us.3, 2.500000e+00
  %i.alu = fsub fast float %.0306.us.3, %i.alt    ; 3 uses
  %i.alv = getelementptr inbounds [2 x i8], ptr %i.ajx, i64 %i.acq ; 7 uses
  %i.alw = icmp sgt i64 %invariant.op455, %i.aec
  br i1 %i.alw, label %bb.dn, label %bb.dx

bb.dn:                                            ; preds = %bb.dm
  %i.alx = load i16, ptr %i.alv, align 2, !tbaa !110
  %i.aly = zext i16 %i.alx to i32
  %i.alz = shl nuw i32 %i.aly, 16
  %i.ama = bitcast i32 %i.alz to float            ; 2 uses
  br i1 %i.aej, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.amb = getelementptr inbounds nuw i8, ptr %i.alv, i64 2
  %i.amc = load i16, ptr %i.amb, align 2, !tbaa !110
  %i.amd = zext i16 %i.amc to i32
  %i.ame = shl nuw i32 %i.amd, 16
  %i.amf = bitcast i32 %i.ame to float
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %.0313.us.4 = phi nsz float [ %i.amf, %bb.do ], [ 0.000000e+00, %bb.dn ] ; 4 uses
  br i1 %i.ael, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  %i.amg = getelementptr inbounds nuw i8, ptr %i.alv, i64 4
  %i.amh = load i16, ptr %i.amg, align 2, !tbaa !110
  %i.ami = zext i16 %i.amh to i32
  %i.amj = shl nuw i32 %i.ami, 16
  %i.amk = bitcast i32 %i.amj to float
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %.0311.us.4 = phi nsz float [ %i.amk, %bb.dq ], [ 0.000000e+00, %bb.dp ] ; 2 uses
  br i1 %i.aen, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  %i.aml = getelementptr inbounds nuw i8, ptr %i.alv, i64 6
  %i.amm = load i16, ptr %i.aml, align 2, !tbaa !110
  %i.amn = zext i16 %i.amm to i32
  %i.amo = shl nuw i32 %i.amn, 16
  %i.amp = bitcast i32 %i.amo to float
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  %.0309.us.4 = phi nsz float [ %i.amp, %bb.ds ], [ 0.000000e+00, %bb.dr ] ; 2 uses
  br i1 %i.aep, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.amq = getelementptr inbounds nuw i8, ptr %i.alv, i64 8
  %i.amr = load i16, ptr %i.amq, align 2, !tbaa !110
  %i.ams = zext i16 %i.amr to i32
  %i.amt = shl nuw i32 %i.ams, 16
  %i.amu = bitcast i32 %i.amt to float
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %.0307.us.4 = phi nsz float [ %i.amu, %bb.du ], [ 0.000000e+00, %bb.dt ] ; 2 uses
  br i1 %i.aer, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  %i.amv = getelementptr inbounds nuw i8, ptr %i.alv, i64 10
  %i.amw = load i16, ptr %i.amv, align 2, !tbaa !110
  %i.amx = zext i16 %i.amw to i32
  %i.amy = shl nuw i32 %i.amx, 16
  %i.amz = bitcast i32 %i.amy to float
  %i.ana = fadd fast float %.0313.us.4, %i.amz
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv, %bb.dm
  %.0315.us.4 = phi nsz float [ %i.ama, %bb.dw ], [ %i.ama, %bb.dv ], [ 0.000000e+00, %bb.dm ]
  %.1314.us.4 = phi nsz float [ %.0313.us.4, %bb.dw ], [ %.0313.us.4, %bb.dv ], [ 0.000000e+00, %bb.dm ] ; 2 uses
  %.1312.us.4 = phi nsz float [ %.0311.us.4, %bb.dw ], [ %.0311.us.4, %bb.dv ], [ 0.000000e+00, %bb.dm ] ; 3 uses
  %.1310.us.4 = phi nsz float [ %.0309.us.4, %bb.dw ], [ %.0309.us.4, %bb.dv ], [ 0.000000e+00, %bb.dm ] ; 3 uses
  %.1308.us.4 = phi nsz float [ %.0307.us.4, %bb.dw ], [ %.0307.us.4, %bb.dv ], [ 0.000000e+00, %bb.dm ] ; 3 uses
  %.0306.us.4 = phi float [ %i.ana, %bb.dw ], [ %.0313.us.4, %bb.dv ], [ 0.000000e+00, %bb.dm ]
  %21 = fmul fast float %.1314.us.4, f0x3FB504F3
  %22 = fmul fast float %.1310.us.4, f0x3F3504F3
  %23 = fsub fast float %21, %22                  ; 2 uses
  %24 = fmul fast float %.1312.us.4, 2.000000e+00
  %25 = fsub fast float %.1308.us.4, %24          ; 2 uses
  %26 = fmul fast float %.1310.us.4, f0x3FB504F3
  %27 = fmul fast float %.1314.us.4, f0x3F3504F3
  %28 = fsub fast float %26, %27                  ; 2 uses
  %29 = fmul fast float %.1312.us.4, 5.000000e-01
  %30 = fsub fast float %.1308.us.4, %29          ; 2 uses
  %.neg375.us.4 = fmul fast float %.1312.us.4, -2.500000e+00
  %i.anb = fadd fast float %.0315.us.4, %.neg375.us.4
  %i.anc = fadd fast float %i.anb, %.1308.us.4    ; 2 uses
  %31 = fsub fast float %25, %23                  ; 3 uses
  %32 = fadd fast float %25, %23                  ; 3 uses
  %33 = fadd fast float %30, %28                  ; 3 uses
  %34 = fsub fast float %30, %28                  ; 2 uses
  %i.and = fmul fast float %.1310.us.4, 2.500000e+00
  %i.ane = fsub fast float %.0306.us.4, %i.and    ; 3 uses
  %i.anf = getelementptr inbounds [2 x i8], ptr %i.alv, i64 %i.acq ; 6 uses
  %i.ang = icmp sgt i64 %invariant.op456, %i.aec
  br i1 %i.ang, label %bb.dy, label %bb.ei

bb.dy:                                            ; preds = %bb.dx
  %i.anh = load i16, ptr %i.anf, align 2, !tbaa !110
  %i.ani = zext i16 %i.anh to i32
  %i.anj = shl nuw i32 %i.ani, 16
  %i.ank = bitcast i32 %i.anj to float            ; 2 uses
  br i1 %i.aej, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %i.anl = getelementptr inbounds nuw i8, ptr %i.anf, i64 2
  %i.anm = load i16, ptr %i.anl, align 2, !tbaa !110
  %i.ann = zext i16 %i.anm to i32
  %i.ano = shl nuw i32 %i.ann, 16
  %i.anp = bitcast i32 %i.ano to float
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  %.0313.us.5 = phi nsz float [ %i.anp, %bb.dz ], [ 0.000000e+00, %bb.dy ] ; 4 uses
  br i1 %i.ael, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.anq = getelementptr inbounds nuw i8, ptr %i.anf, i64 4
  %i.anr = load i16, ptr %i.anq, align 2, !tbaa !110
  %i.ans = zext i16 %i.anr to i32
  %i.ant = shl nuw i32 %i.ans, 16
  %i.anu = bitcast i32 %i.ant to float
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.ea
  %.0311.us.5 = phi nsz float [ %i.anu, %bb.eb ], [ 0.000000e+00, %bb.ea ] ; 2 uses
  br i1 %i.aen, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.anv = getelementptr inbounds nuw i8, ptr %i.anf, i64 6
  %i.anw = load i16, ptr %i.anv, align 2, !tbaa !110
  %i.anx = zext i16 %i.anw to i32
  %i.any = shl nuw i32 %i.anx, 16
  %i.anz = bitcast i32 %i.any to float
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec
  %.0309.us.5 = phi nsz float [ %i.anz, %bb.ed ], [ 0.000000e+00, %bb.ec ] ; 2 uses
  br i1 %i.aep, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.anf, i64 8
  %i.aob = load i16, ptr %i.aoa, align 2, !tbaa !110
  %i.aoc = zext i16 %i.aob to i32
  %i.aod = shl nuw i32 %i.aoc, 16
  %i.aoe = bitcast i32 %i.aod to float
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.ee
  %.0307.us.5 = phi nsz float [ %i.aoe, %bb.ef ], [ 0.000000e+00, %bb.ee ] ; 2 uses
  br i1 %i.aer, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.aof = getelementptr inbounds nuw i8, ptr %i.anf, i64 10
  %i.aog = load i16, ptr %i.aof, align 2, !tbaa !110
  %i.aoh = zext i16 %i.aog to i32
  %i.aoi = shl nuw i32 %i.aoh, 16
  %i.aoj = bitcast i32 %i.aoi to float
  %i.aok = fadd fast float %.0313.us.5, %i.aoj
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg, %bb.dx
  %.0315.us.5 = phi nsz float [ %i.ank, %bb.eh ], [ %i.ank, %bb.eg ], [ 0.000000e+00, %bb.dx ]
  %.1314.us.5 = phi nsz float [ %.0313.us.5, %bb.eh ], [ %.0313.us.5, %bb.eg ], [ 0.000000e+00, %bb.dx ] ; 2 uses
  %.1312.us.5 = phi nsz float [ %.0311.us.5, %bb.eh ], [ %.0311.us.5, %bb.eg ], [ 0.000000e+00, %bb.dx ]
  %.1310.us.5 = phi nsz float [ %.0309.us.5, %bb.eh ], [ %.0309.us.5, %bb.eg ], [ 0.000000e+00, %bb.dx ] ; 3 uses
  %.1308.us.5 = phi nsz float [ %.0307.us.5, %bb.eh ], [ %.0307.us.5, %bb.eg ], [ 0.000000e+00, %bb.dx ] ; 2 uses
  %.0306.us.5 = phi float [ %i.aok, %bb.eh ], [ %.0313.us.5, %bb.eg ], [ 0.000000e+00, %bb.dx ]
  %i.aol = fmul fast float %.1314.us.5, f0x3FB504F3
  %i.aom = insertelement <4 x float> poison, float %.1310.us.5, i64 0
  %i.aon = insertelement <4 x float> %i.aom, float %.1314.us.5, i64 1
  %i.aoo = insertelement <4 x float> %i.aon, float %i.aju, i64 2
  %i.aop = shufflevector <4 x float> %i.aoo, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.aoq = fmul fast <4 x float> %i.aop, <float f0x3F3504F3, float f0x3F3504F3, float 2.000000e+00, float 5.000000e-01>
  %i.aor = insertelement <4 x float> poison, float %.1312.us.5, i64 0
  %i.aos = insertelement <4 x float> %i.aor, float %i.alo, i64 2 ; 2 uses
  %i.aot = insertelement <4 x float> %i.aos, float %i.aig, i64 3
  %i.aou = shufflevector <4 x float> %i.aot, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.aov = fmul fast <4 x float> %i.aou, <float 2.000000e+00, float 5.000000e-01, float f0x3F3504F3, float f0x3F3504F3>
  %i.aow = fmul fast float %.1310.us.5, f0x3FB504F3
  %i.aox = insertelement <4 x float> %i.aos, float %i.aju, i64 1
  %i.aoy = insertelement <4 x float> %i.aox, float %17, i64 3
  %i.aoz = fmul fast <4 x float> %i.aoy, splat (float -2.500000e+00)
  %i.apa = fmul fast float %.1310.us.5, 2.500000e+00
  %i.apb = fsub fast float %.0306.us.5, %i.apa
  %i.apc = getelementptr inbounds nuw [4 x i8], ptr %i.adw, i64 %indvars.iv438 ; 7 uses
  %i.apd = getelementptr inbounds nuw [4 x i8], ptr %i.apc, i64 %i.acr ; 2 uses
  %i.ape = getelementptr inbounds nuw [4 x i8], ptr %i.apc, i64 %i.act ; 2 uses
  %i.apf = getelementptr inbounds nuw [4 x i8], ptr %i.apc, i64 %i.acv ; 2 uses
  %i.apg = getelementptr inbounds nuw [4 x i8], ptr %i.apc, i64 %i.acx ; 2 uses
  %i.aph = getelementptr inbounds nuw [4 x i8], ptr %i.apc, i64 %i.acz ; 2 uses
  %i.api = fmul fast float %i.aig, f0x3FB504F3
  %i.apj = fmul fast float %i.alo, f0x3FB504F3
  %i.apk = getelementptr inbounds nuw [4 x i8], ptr %i.apc, i64 %i.adb ; 2 uses
  %i.apl = getelementptr inbounds nuw [4 x i8], ptr %i.apd, i64 %i.adb ; 2 uses
  %i.apm = getelementptr inbounds nuw [4 x i8], ptr %i.ape, i64 %i.adb ; 2 uses
  %i.apn = getelementptr inbounds nuw [4 x i8], ptr %i.apf, i64 %i.adb ; 2 uses
  %i.apo = getelementptr inbounds nuw [4 x i8], ptr %i.apg, i64 %i.adb ; 2 uses
  %i.app = getelementptr inbounds nuw [4 x i8], ptr %i.aph, i64 %i.adb ; 2 uses
  %i.apq = fmul fast float %i.aih, f0x3FB504F3
  %i.apr = fmul fast float %i.alp, f0x3F3504F3
  %i.aps = fsub fast float %i.apq, %i.apr         ; 2 uses
  %i.apt = fmul fast float %17, 2.000000e+00
  %i.apu = fsub fast float %31, %i.apt            ; 2 uses
  %i.apv = fmul fast float %i.alp, f0x3FB504F3
  %i.apw = fmul fast float %i.aih, f0x3F3504F3
  %i.apx = fsub fast float %i.apv, %i.apw         ; 2 uses
  %i.apy = fmul fast float %17, 5.000000e-01
  %i.apz = fsub fast float %31, %i.apy            ; 2 uses
  %i.aqa = insertelement <4 x float> poison, float %.1308.us.5, i64 0
  %i.aqb = insertelement <4 x float> %i.aqa, float %i.api, i64 2
  %i.aqc = insertelement <4 x float> %i.aqb, float %i.apj, i64 3
  %i.aqd = shufflevector <4 x float> %i.aqc, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.aqe = fsub fast <4 x float> %i.aqd, %i.aov   ; 5 uses
  %i.aqf = shufflevector <4 x float> %i.aoz, <4 x float> %i.aqe, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aqg = insertelement <4 x float> poison, float %i.aol, i64 0
  %i.aqh = insertelement <4 x float> %i.aqg, float %i.aow, i64 1
  %i.aqi = insertelement <4 x float> %i.aqh, float %i.anc, i64 2
  %i.aqj = shufflevector <4 x float> %i.aqi, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.aqk = fsub fast <4 x float> %i.aqj, %i.aoq   ; 5 uses
  %i.aql = insertelement <8 x float> poison, float %.0315.us.5, i64 0
  %i.aqm = insertelement <8 x float> %i.aql, float %i.agi, i64 1
  %i.aqn = insertelement <8 x float> %i.aqm, float %i.aig, i64 2
  %i.aqo = insertelement <8 x float> %i.aqn, float %i.agj, i64 3
  %i.aqp = shufflevector <4 x float> %i.aqk, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aqq = shufflevector <8 x float> %i.aqo, <8 x float> %i.aqp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.aqr = fadd fast <8 x float> %i.aqq, %i.aqf   ; 8 uses
  %i.aqs = extractelement <8 x float> %i.aqr, i64 0
  %i.aqt = fadd fast float %i.aqs, %.1308.us.5
  %foldExtExtBinop.a = fsub fast <4 x float> %i.aqe, %i.aqk
  %i.aqu = extractelement <4 x float> %foldExtExtBinop.a, i64 0
  %foldExtExtBinop458.a = fsub fast <4 x float> %i.aqe, %i.aqk
  %i.aqv = extractelement <4 x float> %foldExtExtBinop458.a, i64 1
  %i.aqw = extractelement <8 x float> %i.aqr, i64 1
  %i.aqx = fadd fast float %i.aqw, %i.anc
  store float %i.aqx, ptr %i.apc, align 4, !tbaa !53
  %foldExtExtBinop460.a = fsub fast <4 x float> %i.aqk, %i.aqe
  %i.aqy = extractelement <4 x float> %foldExtExtBinop460.a, i64 2
  store float %i.aqy, ptr %i.apd, align 4, !tbaa !53
  %i.aqz = extractelement <8 x float> %i.aqr, i64 6
  store float %i.aqz, ptr %i.ape, align 4, !tbaa !53
  %i.ara = extractelement <8 x float> %i.aqr, i64 7
  store float %i.ara, ptr %i.apf, align 4, !tbaa !53
  %foldExtExtBinop462.a = fsub fast <4 x float> %i.aqk, %i.aqe
  %i.arb = extractelement <4 x float> %foldExtExtBinop462.a, i64 3
  store float %i.arb, ptr %i.apg, align 4, !tbaa !53
  %i.arc = extractelement <8 x float> %i.aqr, i64 2
  %i.ard = fadd fast float %i.arc, %i.aqt
  store float %i.ard, ptr %i.aph, align 4, !tbaa !53
  %i.are = extractelement <8 x float> %i.aqr, i64 3
  %i.arf = fadd fast float %i.are, %31
  store float %i.arf, ptr %i.apk, align 4, !tbaa !53
  %i.arg = fsub fast float %i.apu, %i.aps
  store float %i.arg, ptr %i.apl, align 4, !tbaa !53
  %i.arh = fadd fast float %i.apu, %i.aps
  store float %i.arh, ptr %i.apm, align 4, !tbaa !53
  %i.ari = fadd fast float %i.apz, %i.apx
  store float %i.ari, ptr %i.apn, align 4, !tbaa !53
  %i.arj = fsub fast float %i.apz, %i.apx
  store float %i.arj, ptr %i.apo, align 4, !tbaa !53
  %.neg374.us.1 = fmul fast float %i.alp, -2.500000e+00
  %i.ark = fadd fast float %i.aih, %.neg374.us.1
  %i.arl = fadd fast float %i.ark, %i.aqu
  store float %i.arl, ptr %i.app, align 4, !tbaa !53
  %i.arm = getelementptr inbounds nuw [4 x i8], ptr %i.apk, i64 %i.adb ; 2 uses
  %i.arn = getelementptr inbounds nuw [4 x i8], ptr %i.apl, i64 %i.adb ; 2 uses
  %i.aro = getelementptr inbounds nuw [4 x i8], ptr %i.apm, i64 %i.adb ; 2 uses
  %i.arp = getelementptr inbounds nuw [4 x i8], ptr %i.apn, i64 %i.adb ; 2 uses
  %i.arq = getelementptr inbounds nuw [4 x i8], ptr %i.apo, i64 %i.adb ; 2 uses
  %i.arr = getelementptr inbounds nuw [4 x i8], ptr %i.app, i64 %i.adb ; 2 uses
  %35 = fmul fast float %i.aii, f0x3FB504F3
  %36 = fmul fast float %i.alq, f0x3F3504F3
  %37 = fsub fast float %35, %36                  ; 2 uses
  %38 = fmul fast float %18, 2.000000e+00
  %39 = fsub fast float %32, %38                  ; 2 uses
  %40 = fmul fast float %i.alq, f0x3FB504F3
  %41 = fmul fast float %i.aii, f0x3F3504F3
  %42 = fsub fast float %40, %41                  ; 2 uses
  %43 = fmul fast float %18, 5.000000e-01
  %44 = fsub fast float %32, %43                  ; 2 uses
  %.neg.us.2 = fmul fast float %18, -2.500000e+00
  %45 = fadd fast float %i.agk, %.neg.us.2
  %46 = fadd fast float %45, %32
  store float %46, ptr %i.arm, align 4, !tbaa !53
  %47 = fsub fast float %39, %37
  store float %47, ptr %i.arn, align 4, !tbaa !53
  %48 = fadd fast float %39, %37
  store float %48, ptr %i.aro, align 4, !tbaa !53
  %49 = fadd fast float %44, %42
  store float %49, ptr %i.arp, align 4, !tbaa !53
  %50 = fsub fast float %44, %42
  store float %50, ptr %i.arq, align 4, !tbaa !53
  %.neg374.us.2 = fmul fast float %i.alq, -2.500000e+00
  %51 = fadd fast float %i.aii, %.neg374.us.2
  %52 = extractelement <8 x float> %i.aqr, i64 4
  %53 = fadd fast float %51, %52
  store float %53, ptr %i.arr, align 4, !tbaa !53
  %54 = getelementptr inbounds nuw [4 x i8], ptr %i.arm, i64 %i.adb ; 2 uses
  %55 = getelementptr inbounds nuw [4 x i8], ptr %i.arn, i64 %i.adb ; 2 uses
  %56 = getelementptr inbounds nuw [4 x i8], ptr %i.aro, i64 %i.adb ; 2 uses
  %57 = getelementptr inbounds nuw [4 x i8], ptr %i.arp, i64 %i.adb ; 2 uses
  %58 = getelementptr inbounds nuw [4 x i8], ptr %i.arq, i64 %i.adb ; 2 uses
  %59 = getelementptr inbounds nuw [4 x i8], ptr %i.arr, i64 %i.adb ; 2 uses
  %60 = fmul fast float %i.aij, f0x3FB504F3
  %61 = fmul fast float %i.alr, f0x3F3504F3
  %62 = fsub fast float %60, %61                  ; 2 uses
  %63 = fmul fast float %19, 2.000000e+00
  %64 = fsub fast float %33, %63                  ; 2 uses
  %65 = insertelement <4 x float> poison, float %i.alr, i64 0
  %66 = insertelement <4 x float> %65, float %i.aik, i64 1
  %67 = insertelement <4 x float> %66, float %i.als, i64 2 ; 2 uses
  %68 = insertelement <4 x float> %67, float %i.aim, i64 3 ; 2 uses
  %69 = fmul fast <4 x float> %68, splat (float f0x3FB504F3)
  %70 = shufflevector <4 x float> %67, <4 x float> poison, <4 x i32> <i32 poison, i32 2, i32 1, i32 poison>
  %71 = insertelement <4 x float> %70, float %i.aij, i64 0 ; 2 uses
  %72 = insertelement <4 x float> %71, float %i.alu, i64 3
  %73 = fmul fast <4 x float> %72, splat (float f0x3F3504F3)
  %74 = insertelement <4 x float> poison, float %19, i64 0
  %75 = insertelement <4 x float> %74, float %20, i64 1
  %76 = insertelement <4 x float> %75, float %i.ajw, i64 3
  %77 = shufflevector <4 x float> %76, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %78 = fmul fast <4 x float> %77, <float 5.000000e-01, float 2.000000e+00, float 5.000000e-01, float 2.000000e+00>
  %.neg.us.3 = fmul fast float %19, -2.500000e+00
  %i.ars = fadd fast float %i.agl, %.neg.us.3
  %79 = fadd fast float %i.ars, %33
  store float %79, ptr %54, align 4, !tbaa !53
  %80 = fsub fast float %64, %62
  store float %80, ptr %55, align 4, !tbaa !53
  %81 = fadd fast float %64, %62
  store float %81, ptr %56, align 4, !tbaa !53
  %82 = insertelement <4 x float> %68, float %20, i64 1
  %83 = insertelement <4 x float> %82, float %i.ajw, i64 3
  %84 = fmul fast <4 x float> %83, splat (float -2.500000e+00)
  %i.art = extractelement <8 x float> %i.aqr, i64 5
  %85 = getelementptr inbounds nuw [4 x i8], ptr %54, i64 %i.adb ; 2 uses
  %86 = getelementptr inbounds nuw [4 x i8], ptr %55, i64 %i.adb ; 2 uses
  %87 = getelementptr inbounds nuw [4 x i8], ptr %56, i64 %i.adb ; 2 uses
  %88 = getelementptr inbounds nuw [4 x i8], ptr %57, i64 %i.adb ; 2 uses
  %89 = getelementptr inbounds nuw [4 x i8], ptr %58, i64 %i.adb ; 2 uses
  %90 = getelementptr inbounds nuw [4 x i8], ptr %59, i64 %i.adb ; 2 uses
  %i.aru = getelementptr inbounds nuw [4 x i8], ptr %85, i64 %i.adb
  %i.arv = getelementptr inbounds nuw [4 x i8], ptr %86, i64 %i.adb
  %i.arw = getelementptr inbounds nuw [4 x i8], ptr %87, i64 %i.adb
  %i.arx = getelementptr inbounds nuw [4 x i8], ptr %88, i64 %i.adb
  %i.ary = getelementptr inbounds nuw [4 x i8], ptr %89, i64 %i.adb
  %i.arz = getelementptr inbounds nuw [4 x i8], ptr %90, i64 %i.adb
  %i.asa = fmul fast float %i.alu, f0x3FB504F3
  %i.asb = fmul fast float %i.aim, f0x3F3504F3
  %i.asc = fsub fast float %i.asa, %i.asb         ; 2 uses
  %i.asd = fmul fast float %i.ajw, 5.000000e-01
  %i.ase = fsub fast float %i.ane, %i.asd         ; 2 uses
  %91 = fsub fast <4 x float> %69, %73            ; 5 uses
  %92 = shufflevector <4 x float> %91, <4 x float> %84, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %93 = insertelement <4 x float> poison, float %33, i64 0
  %94 = insertelement <4 x float> %93, float %34, i64 1
  %95 = insertelement <4 x float> %94, float %i.ane, i64 3
  %96 = shufflevector <4 x float> %95, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %97 = fsub fast <4 x float> %96, %78            ; 5 uses
  %98 = shufflevector <4 x float> %71, <4 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 poison, i32 2, i32 poison>
  %99 = insertelement <8 x float> %98, float %i.agm, i64 5
  %100 = insertelement <8 x float> %99, float %i.ago, i64 7
  %101 = shufflevector <4 x float> %97, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %102 = shufflevector <8 x float> %101, <8 x float> %100, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %103 = fadd fast <8 x float> %102, %92          ; 8 uses
  %104 = extractelement <8 x float> %103, i64 0
  store float %104, ptr %57, align 4, !tbaa !53
  %foldExtExtBinop464 = fsub fast <4 x float> %97, %91
  %105 = extractelement <4 x float> %foldExtExtBinop464, i64 0
  store float %105, ptr %58, align 4, !tbaa !53
  %106 = extractelement <8 x float> %103, i64 4
  %i.asf = fadd fast float %106, %i.art
  store float %i.asf, ptr %59, align 4, !tbaa !53
  %107 = extractelement <8 x float> %103, i64 5
  %108 = fadd fast float %107, %34
  store float %108, ptr %85, align 4, !tbaa !53
  %foldExtExtBinop466 = fsub fast <4 x float> %97, %91
  %109 = extractelement <4 x float> %foldExtExtBinop466, i64 1
  store float %109, ptr %86, align 4, !tbaa !53
  %110 = extractelement <8 x float> %103, i64 1
  store float %110, ptr %87, align 4, !tbaa !53
  %111 = extractelement <8 x float> %103, i64 2
  store float %111, ptr %88, align 4, !tbaa !53
  %foldExtExtBinop468 = fsub fast <4 x float> %97, %91
  %112 = extractelement <4 x float> %foldExtExtBinop468, i64 2
  store float %112, ptr %89, align 4, !tbaa !53
  %113 = extractelement <8 x float> %103, i64 6
  %114 = fadd fast float %113, %i.aqv
  store float %114, ptr %90, align 4, !tbaa !53
  %115 = extractelement <8 x float> %103, i64 7
  %i.asg = fadd fast float %115, %i.ane
  store float %i.asg, ptr %i.aru, align 4, !tbaa !53
  %foldExtExtBinop470 = fsub fast <4 x float> %97, %91
  %116 = extractelement <4 x float> %foldExtExtBinop470, i64 3
  store float %116, ptr %i.arv, align 4, !tbaa !53
  %117 = extractelement <8 x float> %103, i64 3
  store float %117, ptr %i.arw, align 4, !tbaa !53
  %i.ash = fadd fast float %i.ase, %i.asc
  store float %i.ash, ptr %i.arx, align 4, !tbaa !53
  %i.asi = fsub fast float %i.ase, %i.asc
  store float %i.asi, ptr %i.ary, align 4, !tbaa !53
  %.neg374.us.5 = fmul fast float %i.alu, -2.500000e+00
  %i.asj = fadd fast float %i.aim, %.neg374.us.5
  %i.ask = fadd fast float %i.asj, %i.apb
  store float %i.ask, ptr %i.arz, align 4, !tbaa !53
  %indvars.iv.next439 = add nuw nsw i64 %indvars.iv438, 1 ; 2 uses
  %exitcond442.not = icmp eq i64 %indvars.iv.next439, %wide.trip.count441
  br i1 %exitcond442.not, label %._crit_edge.us414, label %_ZN4ncnn3MatD2Ev.exit.us, !llvm.loop !1748

._crit_edge.us414:                                ; preds = %bb.ei
  %indvars.iv.next444 = add nsw i64 %indvars.iv443, 1 ; 2 uses
  %i.asl = icmp slt i64 %indvars.iv.next444, %i.adq
  br i1 %i.asl, label %_ZN4ncnn3MatD2Ev.exit.lr.ph.us, label %._crit_edge411, !llvm.loop !1749

._crit_edge411:                                   ; preds = %._crit_edge.us414, %.lr.ph410, %._crit_edge393
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL26conv3x3s1_winograd43_bf16sERKNS_3MatERS0_S2_S2_iiS2_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr noundef nonnull align 8 dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10) #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"class.ncnn::Mat", align 8        ; 16 uses
  %12 = alloca %"class.ncnn::Mat", align 8        ; 12 uses
  %i.h = load i32, ptr %2, align 4, !tbaa !78     ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i32 %i.h, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  store i32 %i.j, ptr %i.e, align 4, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  store i32 1, ptr %i.f, align 4, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  store i32 0, ptr %i.g, align 4, !tbaa !78
  %i.k = load i32, ptr %0, align 4, !tbaa !78     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.k, i32 34, ptr nonnull %i.g, ptr nonnull %i.d, ptr nonnull %i.e, ptr nonnull %i.f, i32 1, i32 1)
  %i.l = load i32, ptr %i.e, align 4, !tbaa !78
  %i.m = call i32 @llvm.smin.i32(i32 %i.l, i32 %i.j) ; 2 uses
  store i32 %i.m, ptr %i.e, align 4, !tbaa !78
  %i.n = load i32, ptr %i.d, align 4, !tbaa !78   ; 2 uses
  %.not66 = icmp sgt i32 %i.n, %i.m
  br i1 %.not66, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 52
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 52
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 44 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 44
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %.067 = phi i32 [ %i.n, %.lr.ph ], [ %i.dv, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.at = load i32, ptr %3, align 4, !tbaa !78    ; 2 uses
  %i.au = sdiv i32 %.067, %i.at
  %i.av = srem i32 %.067, %i.at
  %i.aw = load i32, ptr %4, align 4, !tbaa !78    ; 2 uses
  %i.ax = mul nsw i32 %i.aw, %i.au                ; 3 uses
  %i.ay = load i32, ptr %5, align 4, !tbaa !78    ; 2 uses
  %i.az = mul nsw i32 %i.ay, %i.av                ; 3 uses
  %i.ba = load i32, ptr %6, align 4, !tbaa !78
  %i.bb = sub nsw i32 %i.ba, %i.ax
  %.sroa.speculated63 = call i32 @llvm.smin.i32(i32 %i.aw, i32 %i.bb) ; 2 uses
  %i.bc = load i32, ptr %7, align 4, !tbaa !78
  %i.bd = sub nsw i32 %i.bc, %i.az
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ay, i32 %i.bd) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  %i.be = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %bb.d unwind label %bb.s

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !1758)
  %i.bf = load i32, ptr %i.o, align 4, !tbaa !86, !noalias !1758 ; 2 uses
  %i.bg = load i32, ptr %i.p, align 8, !tbaa !87, !noalias !1758 ; 2 uses
  %i.bh = load i32, ptr %i.q, align 4, !tbaa !99, !noalias !1758
  %i.bi = load ptr, ptr %8, align 8, !tbaa !34, !noalias !1758
  %i.bj = load i64, ptr %i.r, align 8, !tbaa !35, !noalias !1758
  %i.bk = sext i32 %i.be to i64
  %i.bl = mul i64 %i.bj, %i.bk
  %i.bm = load i64, ptr %i.s, align 8, !tbaa !76, !noalias !1758 ; 4 uses
  %i.bn = mul i64 %i.bl, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bn
  %i.bp = load i32, ptr %i.t, align 8, !tbaa !77, !noalias !1758
  %i.bq = load ptr, ptr %i.u, align 8, !tbaa !33, !noalias !1758
  store ptr %i.bo, ptr %11, align 8, !tbaa !34, !alias.scope !1758
  store ptr null, ptr %i.v, align 8, !tbaa !32, !alias.scope !1758
  store i64 %i.bm, ptr %i.w, align 8, !tbaa !76, !alias.scope !1758
  store i32 %i.bp, ptr %i.x, align 8, !tbaa !77, !alias.scope !1758
  store ptr %i.bq, ptr %i.y, align 8, !tbaa !33, !alias.scope !1758
  store i32 %i.bf, ptr %i.aa, align 4, !tbaa !86, !alias.scope !1758
  store i32 %i.bg, ptr %i.ab, align 8, !tbaa !87, !alias.scope !1758
  store i32 1, ptr %i.ac, align 4, !tbaa !99, !alias.scope !1758
  store i32 %i.bh, ptr %i.ad, align 8, !tbaa !79, !alias.scope !1758
  %i.br = sext i32 %i.bf to i64
  %i.bs = sext i32 %i.bg to i64
  %i.bt = mul nsw i64 %i.bs, %i.br                ; 2 uses
  %i.bu = mul i64 %i.bm, %i.bt
  %i.bv = add i64 %i.bu, 15
  %i.bw = and i64 %i.bv, -16
  %i.bx = udiv i64 %i.bw, %i.bm
  store i64 %i.bx, ptr %i.ae, align 8, !tbaa !35, !alias.scope !1758
  %i.by = load i32, ptr %i.af, align 8, !tbaa !98, !noalias !1758 ; 2 uses
  %i.bz = add nsw i32 %i.by, -1
  store i32 %i.bz, ptr %i.z, align 8, !tbaa !98, !alias.scope !1758
  %i.ca = icmp eq i32 %i.by, 4
  br i1 %i.ca, label %bb.e, label %_ZN4ncnn3Mat7channelEi.exit48

bb.e:                                             ; preds = %bb.d
  store i64 %i.bt, ptr %i.ae, align 8, !tbaa !35, !alias.scope !1758
  br label %_ZN4ncnn3Mat7channelEi.exit48

_ZN4ncnn3Mat7channelEi.exit48:                    ; preds = %bb.e, %bb.d
  call fastcc void @_ZN4ncnnL47conv3x3s1_winograd43_transform_input_tile_bf16sERKNS_3MatERS0_iiiii(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef %i.ax, i32 noundef %.sroa.speculated63, i32 noundef %i.az, i32 noundef %.sroa.speculated, i32 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  %i.cb = load i32, ptr %4, align 4, !tbaa !78
  %i.cc = sdiv i32 %i.ax, %i.cb
  %i.cd = load ptr, ptr %10, align 8, !tbaa !34, !noalias !1759
  %i.ce = load i64, ptr %i.ai, align 8, !tbaa !35, !noalias !1759
  %i.cf = sext i32 %i.cc to i64
  %i.cg = mul i64 %i.ce, %i.cf
  %i.ch = load i64, ptr %i.aj, align 8, !tbaa !76, !noalias !1759 ; 3 uses
  %i.ci = mul i64 %i.cg, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ci
  %i.ck = load i32, ptr %i.ak, align 8, !tbaa !77, !noalias !1759
  %i.cl = load ptr, ptr %i.al, align 8, !tbaa !33, !noalias !1759
  %i.cm = load i32, ptr %5, align 4, !tbaa !78
  %i.cn = sdiv i32 %i.az, %i.cm
  %i.co = sext i32 %i.cn to i64
  store ptr null, ptr %i.am, align 8, !tbaa !32
  store i64 %i.ch, ptr %i.an, align 8, !tbaa !76
  store i32 %i.ck, ptr %i.ao, align 8, !tbaa !77
  store ptr %i.cl, ptr %i.ap, align 8, !tbaa !33
  store i32 2, ptr %i.aq, align 8, !tbaa !98
  %i.cp = load <2 x i32>, ptr %i.ag, align 4, !tbaa !78, !noalias !1759
  %i.cq = load i32, ptr %i.ah, align 8, !tbaa !87, !noalias !1759
  %i.cr = load i32, ptr %i.ag, align 4, !tbaa !86, !noalias !1759
  %i.cs = sext i32 %i.cr to i64
  %i.ct = sext i32 %i.cq to i64
  %i.cu = mul nsw i64 %i.ct, %i.cs                ; 2 uses
  %i.cv = mul i64 %i.ch, %i.cu
  %i.cw = mul i64 %i.cv, %i.co
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cw
  store ptr %i.cx, ptr %12, align 8, !tbaa !34
  %i.cy = shufflevector <2 x i32> %i.cp, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cz = shufflevector <4 x i32> %i.cy, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.cz, ptr %i.ar, align 4, !tbaa !78
  store i64 %i.cu, ptr %i.as, align 8, !tbaa !35, !alias.scope !1760
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.da = call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 36, ptr %i.a, align 4, !tbaa !78
  store i32 %.sroa.speculated63, ptr %i.b, align 4, !tbaa !78
  store i32 %.sroa.speculated, ptr %i.c, align 4, !tbaa !78
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.da, i32 1)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_ZN4ncnnL21transpose_pack_B_tileERKNS_3MatERS0_iiii.omp_outlined, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(72) %12, ptr nonnull %i.b, ptr nonnull align 8 dereferenceable(72) %11, ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.db = load ptr, ptr %i.am, align 8, !tbaa !32 ; 2 uses
end_hunk_0
