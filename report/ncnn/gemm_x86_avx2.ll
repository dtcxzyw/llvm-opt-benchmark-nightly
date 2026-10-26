Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gemm_x86_avx2?download=true
inline.NumInlined: 22
inline.NumDeleted: 11
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 50
begin_hunk_0_@_ZN4ncnn37unpack_output_tile_int32_to_fp32_avx2ERKNS_3MatES2_RS0_iiiiiS2_ffi:bb.a

bb.fk:                                            ; preds = %.thread1417.i
  switch i32 %i.b, label %bb.fm [
    i32 4, label %.thread1421.i
    i32 1, label %bb.fl
  ]

.thread1421.i:                                    ; preds = %bb.fk
  store <4 x float> %i.avi, ptr %.1018851641.i, align 16, !tbaa !17
  %i.avk = getelementptr inbounds nuw i8, ptr %.1018851641.i, i64 16
  br label %bb.fm

bb.fl:                                            ; preds = %bb.fk
  %.sroa.0146.0.vec.extract.i = extractelement <4 x float> %i.avi, i64 0
  store float %.sroa.0146.0.vec.extract.i, ptr %.1018851641.i, align 4, !tbaa !30
  %.sroa.0146.4.vec.extract.i = extractelement <4 x float> %i.avi, i64 1
  %i.avl = getelementptr inbounds nuw [4 x i8], ptr %.1018851641.i, i64 %i.k
  store float %.sroa.0146.4.vec.extract.i, ptr %i.avl, align 4, !tbaa !30
  %.sroa.0146.8.vec.extract.i = extractelement <4 x float> %i.avi, i64 2
  %i.avm = getelementptr inbounds nuw i8, ptr %.1018851641.i, i64 %.idx1985.i
  store float %.sroa.0146.8.vec.extract.i, ptr %i.avm, align 4, !tbaa !30
  %.sroa.0146.12.vec.extract.i = extractelement <4 x float> %i.avi, i64 3
  %i.avn = getelementptr inbounds nuw i8, ptr %.1018851641.i, i64 %.idx1986.i
  store float %.sroa.0146.12.vec.extract.i, ptr %i.avn, align 4, !tbaa !30
  %i.avo = getelementptr inbounds nuw i8, ptr %.1018851641.i, i64 4
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %.thread1421.i, %bb.fk, %bb.fj
  %.121887.i = phi ptr [ %i.avj, %bb.fj ], [ %i.avo, %bb.fl ], [ %.1018851641.i, %bb.fk ], [ %i.avk, %.thread1421.i ]
  %i.avp = getelementptr inbounds nuw i8, ptr %.918391642.i, i64 16 ; 2 uses
  %i.avq = add nuw nsw i32 %.319091640.i, 1       ; 2 uses
  %exitcond1778.not.i = icmp eq i32 %i.avq, %7
  br i1 %exitcond1778.not.i, label %._crit_edge1645.i, label %.lr.ph1644.i, !llvm.loop !258

._crit_edge1645.i:                                ; preds = %bb.fm, %.preheader1552.i
  %.91839.lcssa.i = phi ptr [ %.81838.lcssa.i, %.preheader1552.i ], [ %i.avp, %bb.fm ] ; 2 uses
  %.36.lcssa.i = phi ptr [ %.32.lcssa.i, %.preheader1552.i ], [ %.39.i, %bb.fm ] ; 2 uses
  %indvars.iv.next1780.i = add nuw nsw i64 %indvars.iv1779.i, 4 ; 3 uses
  %i.avr = icmp slt i64 %indvars.iv.next1780.i, %invariant.op1849.i
  br i1 %i.avr, label %bb.cg, label %.preheader1551.loopexit.i, !llvm.loop !259

.preheader1547.loopexit.i:                        ; preds = %._crit_edge1693.i
  %i.avs = trunc nuw nsw i64 %indvars.iv.next1784.i to i32
  br label %.preheader1547.i

.preheader1547.i:                                 ; preds = %.preheader1547.loopexit.i, %.preheader1551.i
  %.21852.lcssa.i = phi i32 [ %.11851.lcssa.i, %.preheader1551.i ], [ %i.avs, %.preheader1547.loopexit.i ] ; 2 uses
  %.101840.lcssa.i = phi ptr [ %.51835.lcssa.i, %.preheader1551.i ], [ %.141844.lcssa.i, %.preheader1547.loopexit.i ]
  %.40.lcssa.i = phi ptr [ %.20.lcssa.i, %.preheader1551.i ], [ %.53.lcssa.i, %.preheader1547.loopexit.i ]
  %i.avt = icmp slt i32 %.21852.lcssa.i, %5
  br i1 %i.avt, label %.lr.ph1745.i, label %_ZN4ncnnL32unpack_output_tile_int32_to_fp32ERKNS_3MatES2_RS0_iiiiiS2_ffi.exit

.lr.ph1745.i:                                     ; preds = %.preheader1547.i
  %.not.i = icmp eq i32 %11, 0                    ; 5 uses
  %i.avu = sext i32 %6 to i64                     ; 4 uses
  %i.avv = mul i64 %i.k, %i.avu
  %i.avw = icmp eq i32 %3, 0
  %or.cond31.i = icmp ult i32 %3, 3               ; 5 uses
  %i.avx = sext i32 %4 to i64                     ; 3 uses
  %i.avy = icmp sgt i32 %7, 7
  %i.avz = add i32 %3, -3
  %or.cond37.i = icmp ult i32 %i.avz, 2           ; 4 uses
  %i.awa = insertelement <4 x float> poison, float %10, i64 0
  %i.awb = shufflevector <4 x float> %i.awa, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.awc = fcmp fast une float %9, 1.000000e+00
  %i.awd = insertelement <4 x float> poison, float %9, i64 0
  %i.awe = shufflevector <4 x float> %i.awd, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.awf = select ninf nsz i1 %i.awc, <4 x float> %i.awe, <4 x float> splat (float 1.000000e+00) ; 2 uses
  %i.awg = icmp eq i64 %i.k, 1                    ; 2 uses
  %.idx1943.i = shl i64 %i.k, 3                   ; 3 uses
  %.idx1944.i = mul i64 %i.k, 12                  ; 2 uses
  %.idx1945.i = shl i64 %i.k, 4                   ; 5 uses
  %.idx1946.i = mul i64 %i.k, 20
  %.idx1947.i = mul i64 %i.k, 24
  %.idx1948.i = mul i64 %i.k, 28
  %.idx1949.i = shl i64 %i.k, 5                   ; 4 uses
  %i.awh = and i32 %7, -8
  %i.awi = sext i32 %.21852.lcssa.i to i64
  %i.awj = sext i32 %i.b to i64
  %wide.trip.count.i = sext i32 %5 to i64
  %i.awk = insertelement <2 x float> poison, float %10, i64 0
  %i.awl = shufflevector <2 x float> %i.awk, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.hm

bb.fn:                                            ; preds = %._crit_edge1693.i, %.lr.ph1700.i
  %indvars.iv1783.i = phi i64 [ %i.abu, %.lr.ph1700.i ], [ %indvars.iv.next1784.i, %._crit_edge1693.i ] ; 4 uses
  %.401699.i = phi ptr [ %.20.lcssa.i, %.lr.ph1700.i ], [ %.53.lcssa.i, %._crit_edge1693.i ] ; 4 uses
  %.1018401698.i = phi ptr [ %.51835.lcssa.i, %.lr.ph1700.i ], [ %.141844.lcssa.i, %._crit_edge1693.i ] ; 2 uses
  %i.awm = load ptr, ptr %2, align 8, !tbaa !14   ; 2 uses
  br i1 %.not1950.i, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.awn = getelementptr inbounds nuw [4 x i8], ptr %i.awm, i64 %i.abg
  %i.awo = add nsw i64 %indvars.iv1783.i, %i.abl  ; 2 uses
  %i.awp = mul nsw i64 %i.awo, %i.abw
  %i.awq = getelementptr inbounds [4 x i8], ptr %i.awn, i64 %i.awp
  br label %bb.fq

bb.fp:                                            ; preds = %bb.fn
  %i.awr = add nsw i64 %indvars.iv1783.i, %i.abl  ; 2 uses
  %i.aws = mul i64 %i.awr, %i.k
  %i.awt = getelementptr inbounds nuw [4 x i8], ptr %i.awm, i64 %i.aws
  %i.awu = getelementptr inbounds [4 x i8], ptr %i.awt, i64 %i.abf
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fo
  %.pre-phi.i = phi i64 [ %i.awr, %bb.fp ], [ %i.awo, %bb.fo ] ; 2 uses
  %.01897.i = phi ptr [ %i.awu, %bb.fp ], [ %i.awq, %bb.fo ] ; 2 uses
  %i.awv = load ptr, ptr %8, align 8, !tbaa !14
  %i.aww = getelementptr [4 x i8], ptr %i.awv, i64 %.pre-phi.i
  %i.awx = load <2 x float>, ptr %i.aww, align 4, !tbaa !30 ; 4 uses
  %i.awy = shufflevector <2 x float> %i.awx, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.awz = shufflevector <2 x float> %i.awx, <2 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.axa = shufflevector <2 x float> %i.awx, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 3 uses
  %.not1951.i = icmp eq ptr %.401699.i, null
  br i1 %.not1951.i, label %.thread1439.i, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  br i1 %i.aca, label %.thread1423.i, label %bb.fs

.thread1423.i:                                    ; preds = %bb.fr
  %i.axb = load float, ptr %.401699.i, align 4, !tbaa !30
  %i.axc = fmul fast float %i.axb, %10            ; 3 uses
  %i.axd = insertelement <4 x float> poison, float %i.axc, i64 0
  %i.axe = shufflevector <4 x float> %i.axd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.axf = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.axc, i64 0
  br label %.thread1439.i

bb.fs:                                            ; preds = %bb.fr
  br i1 %i.acb, label %bb.ft, label %bb.fu

bb.ft:                                            ; preds = %bb.fs
  %i.axg = load ptr, ptr %1, align 8, !tbaa !14
  %i.axh = getelementptr inbounds [4 x i8], ptr %i.axg, i64 %i.abl
  %i.axi = getelementptr inbounds nuw [4 x i8], ptr %i.axh, i64 %indvars.iv1783.i ; 2 uses
  %i.axj = load <2 x float>, ptr %i.axi, align 4, !tbaa !30
  %i.axk = fmul fast <2 x float> %i.axj, %i.abz   ; 4 uses
  %i.axl = extractelement <2 x float> %i.axk, i64 0
  %i.axm = shufflevector <2 x float> %i.axk, <2 x float> poison, <4 x i32> zeroinitializer
  %i.axn = shufflevector <2 x float> %i.axk, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %.thread1439.i

bb.fu:                                            ; preds = %bb.fs
  switch i32 %3, label %.thread1439.i [
    i32 3, label %bb.fv
    i32 4, label %bb.fw
  ]

bb.fv:                                            ; preds = %bb.fu
  %i.axo = load ptr, ptr %1, align 8, !tbaa !14
  %i.axp = mul i64 %.pre-phi.i, %i.t
  %i.axq = getelementptr inbounds nuw [4 x i8], ptr %i.axo, i64 %i.axp
  %i.axr = getelementptr inbounds [4 x i8], ptr %i.axq, i64 %i.abf
  br label %.thread1439.i

bb.fw:                                            ; preds = %bb.fu
  %i.axs = load ptr, ptr %1, align 8, !tbaa !14
  %i.axt = getelementptr inbounds [4 x i8], ptr %i.axs, i64 %i.abf
  br label %.thread1439.i

.thread1439.i:                                    ; preds = %bb.fw, %bb.fv, %bb.fu, %bb.ft, %.thread1423.i, %bb.fq
  %.21050.i = phi nsz <4 x float> [ zeroinitializer, %bb.fq ], [ zeroinitializer, %bb.fw ], [ zeroinitializer, %bb.fu ], [ zeroinitializer, %bb.fv ], [ %i.axe, %.thread1423.i ], [ %i.axm, %bb.ft ] ; 2 uses
  %.11041.i = phi nsz <4 x float> [ zeroinitializer, %bb.fq ], [ zeroinitializer, %bb.fw ], [ zeroinitializer, %bb.fu ], [ zeroinitializer, %bb.fv ], [ zeroinitializer, %.thread1423.i ], [ %i.axn, %bb.ft ] ; 2 uses
  %.21896.i = phi nsz float [ 0.000000e+00, %bb.fq ], [ 0.000000e+00, %bb.fw ], [ 0.000000e+00, %bb.fu ], [ 0.000000e+00, %bb.fv ], [ %i.axc, %.thread1423.i ], [ %i.axl, %bb.ft ]
  %.43.i = phi ptr [ null, %bb.fq ], [ %i.axt, %bb.fw ], [ %.401699.i, %bb.fu ], [ %i.axr, %bb.fv ], [ %.401699.i, %.thread1423.i ], [ %i.axi, %bb.ft ] ; 2 uses
  %i.axu = phi <2 x float> [ zeroinitializer, %bb.fq ], [ zeroinitializer, %bb.fw ], [ zeroinitializer, %bb.fu ], [ zeroinitializer, %bb.fv ], [ %i.axf, %.thread1423.i ], [ %i.axk, %bb.ft ] ; 3 uses
  %i.axv = shufflevector <2 x float> %i.axu, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  br i1 %i.abm, label %.lr.ph1661.i, label %.preheader1550.i

.preheader1550.i:                                 ; preds = %bb.gn, %.thread1439.i
  %.31051.lcssa.i = phi <4 x float> [ %.21050.i, %.thread1439.i ], [ %.51053.i, %bb.gn ]
  %.21042.lcssa.i = phi <4 x float> [ %.11041.i, %.thread1439.i ], [ %.41044.i, %bb.gn ]
  %.11898.lcssa.i = phi ptr [ %.01897.i, %.thread1439.i ], [ %i.bbb, %bb.gn ] ; 2 uses
  %.01888.lcssa.i = phi i32 [ 0, %.thread1439.i ], [ %i.abt, %bb.gn ] ; 3 uses
  %.111841.lcssa.i = phi ptr [ %.1018401698.i, %.thread1439.i ], [ %i.bbc, %bb.gn ] ; 2 uses
  %.44.lcssa.i = phi ptr [ %.43.i, %.thread1439.i ], [ %.46.i, %bb.gn ] ; 2 uses
  %i.axw = or disjoint i32 %.01888.lcssa.i, 3
  %i.axx = icmp slt i32 %i.axw, %7
  br i1 %i.axx, label %.lr.ph1674.i, label %.preheader1549.i

.lr.ph1661.i:                                     ; preds = %.thread1439.i, %bb.gn
  %.441660.i = phi ptr [ %.46.i, %bb.gn ], [ %.43.i, %.thread1439.i ] ; 11 uses
  %.1118411659.i = phi ptr [ %i.bbc, %bb.gn ], [ %.1018401698.i, %.thread1439.i ] ; 5 uses
  %.018881658.i = phi i32 [ %i.bbd, %bb.gn ], [ 0, %.thread1439.i ]
  %.118981657.i = phi ptr [ %i.bbb, %bb.gn ], [ %.01897.i, %.thread1439.i ] ; 20 uses
  %.210421656.i = phi <4 x float> [ %.41044.i, %bb.gn ], [ %.11041.i, %.thread1439.i ] ; 6 uses
  %.310511655.i = phi <4 x float> [ %.51053.i, %bb.gn ], [ %.21050.i, %.thread1439.i ] ; 10 uses
  %i.axy = load <4 x i32>, ptr %.1118411659.i, align 16, !tbaa !17
  %i.axz = sitofp fast <4 x i32> %i.axy to <4 x float> ; 2 uses
  %i.aya = getelementptr inbounds nuw i8, ptr %.1118411659.i, i64 16
  %i.ayb = load <4 x i32>, ptr %i.aya, align 16, !tbaa !17
  %i.ayc = sitofp fast <4 x i32> %i.ayb to <4 x float> ; 2 uses
  %i.ayd = getelementptr inbounds nuw i8, ptr %.1118411659.i, i64 32
  %i.aye = load <4 x i32>, ptr %i.ayd, align 16, !tbaa !17
  %i.ayf = getelementptr inbounds nuw i8, ptr %.1118411659.i, i64 48
  %i.ayg = load <4 x i32>, ptr %i.ayf, align 16, !tbaa !17
  %i.ayh = sitofp <4 x i32> %i.aye to <4 x float>
  %i.ayi = shufflevector <4 x float> %i.ayh, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.ayj = sitofp <4 x i32> %i.ayg to <4 x float>
  %i.ayk = shufflevector <4 x float> %i.ayj, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %12 = shufflevector <4 x float> %i.axz, <4 x float> %i.ayi, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %13 = shufflevector <4 x float> %i.ayc, <4 x float> %i.ayk, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %14 = shufflevector <4 x float> %i.axz, <4 x float> %i.ayi, <4 x i32> <i32 1, i32 5, i32 3, i32 7>
  %15 = shufflevector <4 x float> %i.ayc, <4 x float> %i.ayk, <4 x i32> <i32 1, i32 5, i32 3, i32 7>
  %i.ayl = shufflevector <4 x float> %14, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.aym = shufflevector <4 x float> %15, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.ayn = fmul fast <4 x float> %i.awz, %12      ; 7 uses
  %i.ayo = fmul fast <4 x float> %i.awz, %13      ; 7 uses
  %i.ayp = fmul fast <4 x float> %i.ayl, %i.axa   ; 7 uses
  %i.ayq = fmul fast <4 x float> %i.aym, %i.axa   ; 7 uses
  %.not1957.i = icmp eq ptr %.441660.i, null
  br i1 %.not1957.i, label %.thread1458.i, label %bb.fx

bb.fx:                                            ; preds = %.lr.ph1661.i
  br i1 %i.aca, label %.thread1445.i, label %bb.fy

.thread1445.i:                                    ; preds = %bb.fx
  %i.ayr = fadd fast <4 x float> %i.ayn, %.310511655.i
  %i.ays = fadd fast <4 x float> %i.ayo, %.310511655.i
  %i.ayt = fadd fast <4 x float> %i.ayp, %.310511655.i
  %i.ayu = fadd fast <4 x float> %i.ayq, %.310511655.i
  br label %.thread1458.i

bb.fy:                                            ; preds = %bb.fx
  br i1 %i.acb, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %bb.fy
  %i.ayv = fadd fast <4 x float> %i.ayn, %.310511655.i
  %i.ayw = fadd fast <4 x float> %i.ayo, %.310511655.i
  %i.ayx = fadd fast <4 x float> %i.ayp, %.210421656.i
  %i.ayy = fadd fast <4 x float> %i.ayq, %.210421656.i
  br label %.thread1458.i

bb.ga:                                            ; preds = %bb.fy
  switch i32 %3, label %.thread1458.i [
    i32 3, label %bb.gb
    i32 4, label %bb.gf
  ]

bb.gb:                                            ; preds = %bb.ga
  %i.ayz = load <4 x float>, ptr %.441660.i, align 1, !tbaa !17 ; 3 uses
  %i.aza = getelementptr inbounds nuw i8, ptr %.441660.i, i64 16
  %i.azb = load <4 x float>, ptr %i.aza, align 1, !tbaa !17 ; 3 uses
  %i.azc = getelementptr inbounds nuw [4 x i8], ptr %.441660.i, i64 %i.t ; 2 uses
  %i.azd = load <4 x float>, ptr %i.azc, align 1, !tbaa !17 ; 2 uses
  %i.aze = getelementptr inbounds nuw i8, ptr %i.azc, i64 16
  %i.azf = load <4 x float>, ptr %i.aze, align 1, !tbaa !17 ; 2 uses
  br i1 %i.abp, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %bb.gb
  %i.azg = fadd fast <4 x float> %i.ayz, %i.ayn
  %i.azh = fadd fast <4 x float> %i.azb, %i.ayo
  %i.azi = fadd fast <4 x float> %i.azd, %i.ayp
  %i.azj = fadd fast <4 x float> %i.azf, %i.ayq
  br label %bb.ge

bb.gd:                                            ; preds = %bb.gb
  %i.azk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ayz, <4 x float> nofpclass(nan inf) %i.abo, <4 x float> nofpclass(nan inf) %i.ayn)
  %i.azl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.azb, <4 x float> nofpclass(nan inf) %i.abo, <4 x float> nofpclass(nan inf) %i.ayo)
  %i.azm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.azd, <4 x float> nofpclass(nan inf) %i.abo, <4 x float> nofpclass(nan inf) %i.ayp)
  %i.azn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.azf, <4 x float> nofpclass(nan inf) %i.abo, <4 x float> nofpclass(nan inf) %i.ayq)
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %bb.gc
  %.21036.i = phi nsz <4 x float> [ %i.azg, %bb.gc ], [ %i.azk, %bb.gd ]
  %.21030.i = phi nsz <4 x float> [ %i.azh, %bb.gc ], [ %i.azl, %bb.gd ]
  %.21024.i = phi nsz <4 x float> [ %i.azi, %bb.gc ], [ %i.azm, %bb.gd ]
  %.21018.i = phi nsz <4 x float> [ %i.azj, %bb.gc ], [ %i.azn, %bb.gd ]
  %i.azo = getelementptr inbounds nuw i8, ptr %.441660.i, i64 32
  br label %.thread1458.i

bb.gf:                                            ; preds = %bb.ga
  %i.azp = load <4 x float>, ptr %.441660.i, align 1, !tbaa !17
  %i.azq = getelementptr inbounds nuw i8, ptr %.441660.i, i64 16
  %i.azr = load <4 x float>, ptr %i.azq, align 1, !tbaa !17
  %i.azs = fmul fast <4 x float> %i.azp, %i.abo   ; 3 uses
  %i.azt = fmul fast <4 x float> %i.azr, %i.abo   ; 3 uses
  %i.azu = fadd fast <4 x float> %i.azs, %i.ayn
  %i.azv = fadd fast <4 x float> %i.azt, %i.ayo
  %i.azw = fadd fast <4 x float> %i.azs, %i.ayp
  %i.azx = fadd fast <4 x float> %i.azt, %i.ayq
  %i.azy = getelementptr inbounds nuw i8, ptr %.441660.i, i64 32
  br label %.thread1458.i

.thread1458.i:                                    ; preds = %bb.gf, %bb.ge, %bb.ga, %bb.fz, %.thread1445.i, %.lr.ph1661.i
  %.51053.i = phi nsz <4 x float> [ %.310511655.i, %.lr.ph1661.i ], [ %i.azs, %bb.gf ], [ %.310511655.i, %bb.ga ], [ %i.ayz, %bb.ge ], [ %.310511655.i, %.thread1445.i ], [ %.310511655.i, %bb.fz ] ; 2 uses
  %.41044.i = phi nsz <4 x float> [ %.210421656.i, %.lr.ph1661.i ], [ %i.azt, %bb.gf ], [ %.210421656.i, %bb.ga ], [ %i.azb, %bb.ge ], [ %.210421656.i, %.thread1445.i ], [ %.210421656.i, %bb.fz ] ; 2 uses
  %.41038.i = phi nsz <4 x float> [ %i.ayn, %.lr.ph1661.i ], [ %i.azu, %bb.gf ], [ %i.ayn, %bb.ga ], [ %.21036.i, %bb.ge ], [ %i.ayr, %.thread1445.i ], [ %i.ayv, %bb.fz ] ; 2 uses
  %.41032.i = phi nsz <4 x float> [ %i.ayo, %.lr.ph1661.i ], [ %i.azv, %bb.gf ], [ %i.ayo, %bb.ga ], [ %.21030.i, %bb.ge ], [ %i.ays, %.thread1445.i ], [ %i.ayw, %bb.fz ] ; 2 uses
  %.41026.i = phi nsz <4 x float> [ %i.ayp, %.lr.ph1661.i ], [ %i.azw, %bb.gf ], [ %i.ayp, %bb.ga ], [ %.21024.i, %bb.ge ], [ %i.ayt, %.thread1445.i ], [ %i.ayx, %bb.fz ] ; 2 uses
  %.41020.i = phi nsz <4 x float> [ %i.ayq, %.lr.ph1661.i ], [ %i.azx, %bb.gf ], [ %i.ayq, %bb.ga ], [ %.21018.i, %bb.ge ], [ %i.ayu, %.thread1445.i ], [ %i.ayy, %bb.fz ] ; 2 uses
  %.46.i = phi ptr [ null, %.lr.ph1661.i ], [ %i.azy, %bb.gf ], [ %.441660.i, %bb.ga ], [ %i.azo, %bb.ge ], [ %.441660.i, %.thread1445.i ], [ %.441660.i, %bb.fz ] ; 2 uses
  br i1 %i.abq, label %bb.gg, label %bb.gh

bb.gg:                                            ; preds = %.thread1458.i
  %i.azz = fmul fast <4 x float> %.41038.i, %i.abs
  %i.baa = fmul fast <4 x float> %.41032.i, %i.abs
  %i.bab = fmul fast <4 x float> %.41026.i, %i.abs
  %i.bac = fmul fast <4 x float> %.41020.i, %i.abs
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %.thread1458.i
  %.51039.i = phi nsz <4 x float> [ %i.azz, %bb.gg ], [ %.41038.i, %.thread1458.i ] ; 7 uses
  %.51033.i = phi nsz <4 x float> [ %i.baa, %bb.gg ], [ %.41032.i, %.thread1458.i ] ; 7 uses
  %.51027.i = phi nsz <4 x float> [ %i.bab, %bb.gg ], [ %.41026.i, %.thread1458.i ] ; 7 uses
  %.51021.i = phi nsz <4 x float> [ %i.bac, %bb.gg ], [ %.41020.i, %.thread1458.i ] ; 7 uses
  br i1 %.not1950.i, label %bb.gm, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  switch i32 %i.b, label %bb.gn [
    i32 8, label %bb.gj
    i32 4, label %bb.gk
    i32 1, label %bb.gl
  ]

bb.gj:                                            ; preds = %bb.gi
  store <4 x float> %.51039.i, ptr %.118981657.i, align 16, !tbaa !17
  %i.bad = getelementptr inbounds nuw i8, ptr %.118981657.i, i64 16
  store <4 x float> %.51033.i, ptr %i.bad, align 16, !tbaa !17
  %i.bae = getelementptr inbounds nuw i8, ptr %.118981657.i, i64 32
  store <4 x float> %.51027.i, ptr %i.bae, align 16, !tbaa !17
  %i.baf = getelementptr inbounds nuw i8, ptr %.118981657.i, i64 48
  store <4 x float> %.51021.i, ptr %i.baf, align 16, !tbaa !17
  br label %bb.gn

bb.gk:                                            ; preds = %bb.gi
  store <4 x float> %.51039.i, ptr %.118981657.i, align 16, !tbaa !17
  %i.bag = getelementptr inbounds nuw i8, ptr %.118981657.i, i64 16
  store <4 x float> %.51027.i, ptr %i.bag, align 16, !tbaa !17
  %i.bah = getelementptr inbounds nuw i8, ptr %.118981657.i, i64 %.idx1531.i ; 2 uses
  store <4 x float> %.51033.i, ptr %i.bah, align 16, !tbaa !17
  %i.bai = getelementptr inbounds nuw i8, ptr %i.bah, i64 16
  store <4 x float> %.51021.i, ptr %i.bai, align 16, !tbaa !17
  br label %bb.gn

bb.gl:                                            ; preds = %bb.gi
  %.sroa.056.0.vec.extract.i = extractelement <4 x float> %.51039.i, i64 0
  store float %.sroa.056.0.vec.extract.i, ptr %.118981657.i, align 4, !tbaa !30
  %.sroa.12.32.vec.extract.i = extractelement <4 x float> %.51027.i, i64 0
  %i.baj = getelementptr inbounds nuw i8, ptr %.118981657.i, i64 4
  store float %.sroa.12.32.vec.extract.i, ptr %i.baj, align 4, !tbaa !30
  %i.bak = getelementptr inbounds nuw [4 x i8], ptr %.118981657.i, i64 %i.k
  %i.bal = shufflevector <4 x float> %.51039.i, <4 x float> %.51027.i, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.bal, ptr %i.bak, align 4, !tbaa !30
  %i.bam = getelementptr inbounds nuw i8, ptr %.118981657.i, i64 %.idx1529.i
  %i.ban = shufflevector <4 x float> %.51039.i, <4 x float> %.51027.i, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.ban, ptr %i.bam, align 4, !tbaa !30
  %i.bao = getelementptr inbounds nuw i8, ptr %.118981657.i, i64 %.idx1530.i
  %i.bap = shufflevector <4 x float> %.51039.i, <4 x float> %.51027.i, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.bap, ptr %i.bao, align 4, !tbaa !30
  %.sroa.757.16.vec.extract.i = extractelement <4 x float> %.51033.i, i64 0
  %i.baq = getelementptr inbounds nuw i8, ptr %.118981657.i, i64 %.idx1531.i ; 2 uses
  store float %.sroa.757.16.vec.extract.i, ptr %i.baq, align 4, !tbaa !30
  %.sroa.17.48.vec.extract.i = extractelement <4 x float> %.51021.i, i64 0
  %i.bar = getelementptr inbounds nuw i8, ptr %i.baq, i64 4
  store float %.sroa.17.48.vec.extract.i, ptr %i.bar, align 4, !tbaa !30
  %i.bas = getelementptr inbounds nuw i8, ptr %.118981657.i, i64 %.idx1532.i
  %i.bat = shufflevector <4 x float> %.51033.i, <4 x float> %.51021.i, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.bat, ptr %i.bas, align 4, !tbaa !30
  %i.bau = getelementptr inbounds nuw i8, ptr %.118981657.i, i64 %.idx1533.i
  %i.bav = shufflevector <4 x float> %.51033.i, <4 x float> %.51021.i, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.bav, ptr %i.bau, align 4, !tbaa !30
  %i.baw = getelementptr inbounds nuw i8, ptr %.118981657.i, i64 %.idx1534.i
  %i.bax = shufflevector <4 x float> %.51033.i, <4 x float> %.51021.i, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.bax, ptr %i.baw, align 4, !tbaa !30
  br label %bb.gn

bb.gm:                                            ; preds = %bb.gh
  store <4 x float> %.51039.i, ptr %.118981657.i, align 1, !tbaa !17
  %i.bay = getelementptr inbounds nuw i8, ptr %.118981657.i, i64 16
  store <4 x float> %.51033.i, ptr %i.bay, align 1, !tbaa !17
  %i.baz = getelementptr inbounds nuw [4 x i8], ptr %.118981657.i, i64 %i.k ; 2 uses
  store <4 x float> %.51027.i, ptr %i.baz, align 1, !tbaa !17
  %i.bba = getelementptr inbounds nuw i8, ptr %i.baz, i64 16
  store <4 x float> %.51021.i, ptr %i.bba, align 1, !tbaa !17
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gm, %bb.gl, %bb.gk, %bb.gj, %bb.gi
  %.sink1864.i = phi i64 [ 32, %bb.gm ], [ %.idx1959.i, %bb.gk ], [ %.idx1959.i, %bb.gj ], [ %.idx1959.i, %bb.gi ], [ %.idx1959.i, %bb.gl ]
  %i.bbb = getelementptr inbounds nuw i8, ptr %.118981657.i, i64 %.sink1864.i ; 2 uses
  %i.bbc = getelementptr inbounds nuw i8, ptr %.1118411659.i, i64 64 ; 2 uses
  %i.bbd = add nuw nsw i32 %.018881658.i, 8       ; 2 uses
  %i.bbe = or disjoint i32 %i.bbd, 7
  %i.bbf = icmp slt i32 %i.bbe, %7
  br i1 %i.bbf, label %.lr.ph1661.i, label %.preheader1550.i, !llvm.loop !260

.preheader1549.i:                                 ; preds = %bb.gy, %.preheader1550.i
  %.31900.lcssa.i = phi ptr [ %.11898.lcssa.i, %.preheader1550.i ], [ %i.bcr, %bb.gy ] ; 2 uses
  %.11889.lcssa.i = phi i32 [ %.01888.lcssa.i, %.preheader1550.i ], [ %i.bct, %bb.gy ] ; 3 uses
  %.121842.lcssa.i = phi ptr [ %.111841.lcssa.i, %.preheader1550.i ], [ %i.bcs, %bb.gy ] ; 2 uses
  %.47.lcssa.i = phi ptr [ %.44.lcssa.i, %.preheader1550.i ], [ %.49.i, %bb.gy ] ; 2 uses
  %i.bbg = or disjoint i32 %.11889.lcssa.i, 1
  %i.bbh = icmp slt i32 %i.bbg, %7
  br i1 %i.bbh, label %.lr.ph1683.i.preheader, label %.preheader1548.i

.lr.ph1683.i.preheader:                           ; preds = %.preheader1549.i
  %i.bbi = shufflevector <2 x float> %i.axu, <2 x float> poison, <4 x i32> zeroinitializer
  br label %.lr.ph1683.i

.lr.ph1674.i:                                     ; preds = %.preheader1550.i, %bb.gy
  %.471673.i = phi ptr [ %.49.i, %bb.gy ], [ %.44.lcssa.i, %.preheader1550.i ] ; 9 uses
  %.1218421672.i = phi ptr [ %i.bcs, %bb.gy ], [ %.111841.lcssa.i, %.preheader1550.i ] ; 3 uses
  %.118891671.i = phi i32 [ %i.bct, %bb.gy ], [ %.01888.lcssa.i, %.preheader1550.i ]
  %.319001670.i = phi ptr [ %i.bcr, %bb.gy ], [ %.11898.lcssa.i, %.preheader1550.i ] ; 10 uses
  %.510451669.i = phi <4 x float> [ %.71047.i, %bb.gy ], [ %.21042.lcssa.i, %.preheader1550.i ] ; 6 uses
  %.610541668.i = phi <4 x float> [ %.81056.i, %bb.gy ], [ %.31051.lcssa.i, %.preheader1550.i ] ; 7 uses
  %i.bbj = load <4 x i32>, ptr %.1218421672.i, align 16, !tbaa !17
  %i.bbk = sitofp fast <4 x i32> %i.bbj to <4 x float> ; 2 uses
  %i.bbl = getelementptr inbounds nuw i8, ptr %.1218421672.i, i64 16
  %i.bbm = load <4 x i32>, ptr %i.bbl, align 16, !tbaa !17
  %i.bbn = sitofp fast <4 x i32> %i.bbm to <4 x float> ; 2 uses
  %16 = shufflevector <4 x float> %i.bbk, <4 x float> %i.bbn, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %17 = shufflevector <4 x float> %i.bbk, <4 x float> %i.bbn, <4 x i32> <i32 3, i32 7, i32 1, i32 5>
  %i.bbo = shufflevector <4 x float> %17, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.bbp = fmul fast <4 x float> %i.awz, %16      ; 7 uses
  %i.bbq = fmul fast <4 x float> %i.bbo, %i.axa   ; 7 uses
  %.not1955.i = icmp eq ptr %.471673.i, null
  br i1 %.not1955.i, label %.thread1475.i, label %bb.go

bb.go:                                            ; preds = %.lr.ph1674.i
  br i1 %i.aca, label %.thread1466.i, label %bb.gp

.thread1466.i:                                    ; preds = %bb.go
  %i.bbr = fadd fast <4 x float> %i.bbp, %.610541668.i
  %i.bbs = fadd fast <4 x float> %i.bbq, %.610541668.i
  br label %.thread1475.i

bb.gp:                                            ; preds = %bb.go
  br i1 %i.acb, label %bb.gq, label %bb.gr

bb.gq:                                            ; preds = %bb.gp
  %i.bbt = fadd fast <4 x float> %i.bbp, %.610541668.i
  %i.bbu = fadd fast <4 x float> %i.bbq, %.510451669.i
  br label %.thread1475.i

bb.gr:                                            ; preds = %bb.gp
  switch i32 %3, label %.thread1475.i [
    i32 3, label %bb.gs
    i32 4, label %bb.gt
  ]

bb.gs:                                            ; preds = %bb.gr
  %i.bbv = load <4 x float>, ptr %.471673.i, align 1, !tbaa !17 ; 3 uses
  %i.bbw = getelementptr inbounds nuw [4 x i8], ptr %.471673.i, i64 %i.t
  %i.bbx = load <4 x float>, ptr %i.bbw, align 1, !tbaa !17 ; 3 uses
  %i.bby = fadd fast <4 x float> %i.bbv, %i.bbp
  %i.bbz = fadd fast <4 x float> %i.bbx, %i.bbq
  %i.bca = tail call fast nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bbv, <4 x float> nofpclass(nan inf) %i.abo, <4 x float> nofpclass(nan inf) %i.bbp)
  %i.bcb = tail call fast nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bbx, <4 x float> nofpclass(nan inf) %i.abo, <4 x float> nofpclass(nan inf) %i.bbq)
  %.21007.i = select nsz i1 %i.abp, <4 x float> %i.bby, <4 x float> %i.bca
  %.21001.i = select nsz i1 %i.abp, <4 x float> %i.bbz, <4 x float> %i.bcb
  %i.bcc = getelementptr inbounds nuw i8, ptr %.471673.i, i64 16
  br label %.thread1475.i

bb.gt:                                            ; preds = %bb.gr
  %i.bcd = load <4 x float>, ptr %.471673.i, align 1, !tbaa !17
  %i.bce = fmul fast <4 x float> %i.bcd, %i.abo   ; 3 uses
  %i.bcf = fadd fast <4 x float> %i.bce, %i.bbp
  %i.bcg = fadd fast <4 x float> %i.bce, %i.bbq
  %i.bch = getelementptr inbounds nuw i8, ptr %.471673.i, i64 16
  br label %.thread1475.i

.thread1475.i:                                    ; preds = %bb.gt, %bb.gs, %bb.gr, %bb.gq, %.thread1466.i, %.lr.ph1674.i
  %.81056.i = phi nsz <4 x float> [ %.610541668.i, %.lr.ph1674.i ], [ %i.bce, %bb.gt ], [ %.610541668.i, %bb.gr ], [ %i.bbv, %bb.gs ], [ %.610541668.i, %.thread1466.i ], [ %.610541668.i, %bb.gq ]
  %.71047.i = phi nsz <4 x float> [ %.510451669.i, %.lr.ph1674.i ], [ %.510451669.i, %bb.gt ], [ %.510451669.i, %bb.gr ], [ %i.bbx, %bb.gs ], [ %.510451669.i, %.thread1466.i ], [ %.510451669.i, %bb.gq ]
  %.41009.i = phi nsz <4 x float> [ %i.bbp, %.lr.ph1674.i ], [ %i.bcf, %bb.gt ], [ %i.bbp, %bb.gr ], [ %.21007.i, %bb.gs ], [ %i.bbr, %.thread1466.i ], [ %i.bbt, %bb.gq ]
  %.41003.i = phi nsz <4 x float> [ %i.bbq, %.lr.ph1674.i ], [ %i.bcg, %bb.gt ], [ %i.bbq, %bb.gr ], [ %.21001.i, %bb.gs ], [ %i.bbs, %.thread1466.i ], [ %i.bbu, %bb.gq ]
  %.49.i = phi ptr [ null, %.lr.ph1674.i ], [ %i.bch, %bb.gt ], [ %.471673.i, %bb.gr ], [ %i.bcc, %bb.gs ], [ %.471673.i, %.thread1466.i ], [ %.471673.i, %bb.gq ] ; 2 uses
  %.51010.i = fmul reassoc nsz arcp contract afn <4 x float> %.41009.i, %i.abx ; 6 uses
  %.51004.i = fmul reassoc nsz arcp contract afn <4 x float> %.41003.i, %i.abx ; 6 uses
  br i1 %.not1950.i, label %bb.gx, label %bb.gu

bb.gu:                                            ; preds = %.thread1475.i
  switch i32 %i.b, label %bb.gy [
    i32 4, label %bb.gv
    i32 1, label %bb.gw
  ]

bb.gv:                                            ; preds = %bb.gu
  store <4 x float> %.51010.i, ptr %.319001670.i, align 16, !tbaa !17
  %i.bci = getelementptr inbounds nuw i8, ptr %.319001670.i, i64 16
  store <4 x float> %.51004.i, ptr %i.bci, align 16, !tbaa !17
  br label %bb.gy

bb.gw:                                            ; preds = %bb.gu
  %.sroa.029.0.vec.extract.i = extractelement <4 x float> %.51010.i, i64 0
  store float %.sroa.029.0.vec.extract.i, ptr %.319001670.i, align 4, !tbaa !30
  %.sroa.730.16.vec.extract.i = extractelement <4 x float> %.51004.i, i64 0
  %i.bcj = getelementptr inbounds nuw i8, ptr %.319001670.i, i64 4
  store float %.sroa.730.16.vec.extract.i, ptr %i.bcj, align 4, !tbaa !30
  %i.bck = getelementptr inbounds nuw [4 x i8], ptr %.319001670.i, i64 %i.k
  %i.bcl = shufflevector <4 x float> %.51010.i, <4 x float> %.51004.i, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.bcl, ptr %i.bck, align 4, !tbaa !30
  %i.bcm = getelementptr inbounds nuw i8, ptr %.319001670.i, i64 %.idx1529.i
  %i.bcn = shufflevector <4 x float> %.51010.i, <4 x float> %.51004.i, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.bcn, ptr %i.bcm, align 4, !tbaa !30
  %i.bco = getelementptr inbounds nuw i8, ptr %.319001670.i, i64 %.idx1530.i
  %i.bcp = shufflevector <4 x float> %.51010.i, <4 x float> %.51004.i, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.bcp, ptr %i.bco, align 4, !tbaa !30
  br label %bb.gy

bb.gx:                                            ; preds = %.thread1475.i
  store <4 x float> %.51010.i, ptr %.319001670.i, align 1, !tbaa !17
  %i.bcq = getelementptr inbounds nuw [4 x i8], ptr %.319001670.i, i64 %i.k
  store <4 x float> %.51004.i, ptr %i.bcq, align 1, !tbaa !17
  br label %bb.gy

bb.gy:                                            ; preds = %bb.gx, %bb.gw, %bb.gv, %bb.gu
  %.sink1865.i = phi i64 [ 16, %bb.gx ], [ %.idx1531.i, %bb.gv ], [ %.idx1531.i, %bb.gu ], [ %.idx1531.i, %bb.gw ]
  %i.bcr = getelementptr inbounds nuw i8, ptr %.319001670.i, i64 %.sink1865.i ; 2 uses
  %i.bcs = getelementptr inbounds nuw i8, ptr %.1218421672.i, i64 32 ; 2 uses
  %i.bct = add nuw nsw i32 %.118891671.i, 4       ; 3 uses
  %i.bcu = or disjoint i32 %i.bct, 3
  %i.bcv = icmp slt i32 %i.bcu, %7
  br i1 %i.bcv, label %.lr.ph1674.i, label %.preheader1549.i, !llvm.loop !261

.preheader1548.i:                                 ; preds = %.thread1494.i, %.preheader1549.i
  %.51902.lcssa.i = phi ptr [ %.31900.lcssa.i, %.preheader1549.i ], [ %i.beh, %.thread1494.i ]
  %.21890.lcssa.i = phi i32 [ %.11889.lcssa.i, %.preheader1549.i ], [ %i.bej, %.thread1494.i ] ; 2 uses
  %.131843.lcssa.i = phi ptr [ %.121842.lcssa.i, %.preheader1549.i ], [ %i.bei, %.thread1494.i ] ; 2 uses
  %.50.lcssa.i = phi ptr [ %.47.lcssa.i, %.preheader1549.i ], [ %.52.i, %.thread1494.i ] ; 2 uses
  %i.bcw = icmp slt i32 %.21890.lcssa.i, %7
  br i1 %i.bcw, label %.lr.ph1692.i, label %._crit_edge1693.i

.lr.ph1692.i:                                     ; preds = %.preheader1548.i
  %i.bcx = select <2 x i1> %i.abk, <2 x float> %i.axu, <2 x float> zeroinitializer ; 2 uses
  %i.bcy = select ninf nsz i1 %i.acb, float %.21896.i, float 0.000000e+00
  %i.bcz = insertelement <2 x float> poison, float %i.bcy, i64 0
  %i.bda = shufflevector <2 x float> %i.bcz, <2 x float> %i.bcx, <2 x i32> <i32 0, i32 2>
  %i.bdb = fadd reassoc nsz arcp contract afn <2 x float> %i.bcx, %i.bda
  br label %bb.hf

.lr.ph1683.i:                                     ; preds = %.lr.ph1683.i.preheader, %.thread1494.i
  %.501682.i = phi ptr [ %.52.i, %.thread1494.i ], [ %.47.lcssa.i, %.lr.ph1683.i.preheader ] ; 9 uses
  %.1318431681.i = phi ptr [ %i.bei, %.thread1494.i ], [ %.121842.lcssa.i, %.lr.ph1683.i.preheader ] ; 2 uses
  %.218901680.i = phi i32 [ %i.bej, %.thread1494.i ], [ %.11889.lcssa.i, %.lr.ph1683.i.preheader ]
  %.519021679.i = phi ptr [ %i.beh, %.thread1494.i ], [ %.31900.lcssa.i, %.lr.ph1683.i.preheader ] ; 4 uses
  %i.bdc = load <4 x i32>, ptr %.1318431681.i, align 4, !tbaa !28
  %i.bdd = sitofp <4 x i32> %i.bdc to <4 x float>
  %i.bde = fmul fast <4 x float> %i.awy, %i.bdd   ; 6 uses
  %.not1953.i = icmp eq ptr %.501682.i, null
  br i1 %.not1953.i, label %.thread1494.i, label %bb.gz

bb.gz:                                            ; preds = %.lr.ph1683.i
  br i1 %i.aca, label %.thread1481.i, label %bb.ha

.thread1481.i:                                    ; preds = %bb.gz
  %i.bdf = fadd fast <4 x float> %i.bde, %i.bbi
  br label %.thread1494.i

bb.ha:                                            ; preds = %bb.gz
  br i1 %or.cond27.i, label %bb.hb, label %bb.hc

bb.hb:                                            ; preds = %bb.ha
  %i.bdg = fadd fast <4 x float> %i.bde, %i.axv
  br label %.thread1494.i

bb.hc:                                            ; preds = %bb.ha
  switch i32 %3, label %.thread1494.i [
    i32 3, label %bb.hd
    i32 4, label %bb.he
  ]

bb.hd:                                            ; preds = %bb.hc
  %i.bdh = getelementptr inbounds nuw [4 x i8], ptr %.501682.i, i64 %i.t
  %i.bdi = load <2 x float>, ptr %.501682.i, align 4, !tbaa !30
  %i.bdj = load <2 x float>, ptr %i.bdh, align 4, !tbaa !30
  %i.bdk = shufflevector <2 x float> %i.bdi, <2 x float> %i.bdj, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bdl = fmul fast <4 x float> %i.bdk, %i.abo
  %i.bdm = fadd fast <4 x float> %i.bdl, %i.bde
  %i.bdn = getelementptr inbounds nuw i8, ptr %.501682.i, i64 8
  br label %.thread1494.i

bb.he:                                            ; preds = %bb.hc
  %i.bdo = load <2 x float>, ptr %.501682.i, align 4, !tbaa !30
  %i.bdp = fmul fast <2 x float> %i.bdo, %i.abz
  %i.bdq = shufflevector <2 x float> %i.bdp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bdr = fadd fast <4 x float> %i.bdq, %i.bde
  %i.bds = getelementptr inbounds nuw i8, ptr %.501682.i, i64 8
  br label %.thread1494.i

.thread1494.i:                                    ; preds = %bb.he, %bb.hd, %bb.hc, %bb.hb, %.thread1481.i, %.lr.ph1683.i
  %.52.i = phi ptr [ %i.bds, %bb.he ], [ %.501682.i, %bb.hc ], [ null, %.lr.ph1683.i ], [ %i.bdn, %bb.hd ], [ %.501682.i, %.thread1481.i ], [ %.501682.i, %bb.hb ] ; 2 uses
  %i.bdt = phi <4 x float> [ %i.bdr, %bb.he ], [ %i.bde, %bb.hc ], [ %i.bde, %.lr.ph1683.i ], [ %i.bdm, %bb.hd ], [ %i.bdf, %.thread1481.i ], [ %i.bdg, %bb.hb ] ; 3 uses
  %i.bdu = extractelement <4 x float> %i.bdt, i64 0
  %i.bdv = fmul fast float %i.bdu, %9
  %i.bdw = extractelement <4 x float> %i.bdt, i64 3
  %i.bdx = fmul fast float %i.bdw, %9
  store float %i.bdv, ptr %.519021679.i, align 4, !tbaa !30
  %i.bdy = getelementptr inbounds nuw i8, ptr %.519021679.i, i64 4
  %i.bdz = getelementptr inbounds nuw [4 x i8], ptr %.519021679.i, i64 %i.k ; 2 uses
  %i.bea = getelementptr i8, ptr %i.bdz, i64 4
  %i.beb = shufflevector <4 x float> %i.bdt, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.bec = fmul fast <2 x float> %i.beb, %i.acd   ; 2 uses
  %i.bed = shufflevector <2 x float> %i.bec, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bee = select <2 x i1> %i.acf, <2 x float> %i.bec, <2 x float> %i.bed ; 2 uses
  %i.bef = extractelement <2 x float> %i.bee, i64 0
  store float %i.bef, ptr %i.bdy, align 4, !tbaa !30
  %i.beg = extractelement <2 x float> %i.bee, i64 1
  store float %i.beg, ptr %i.bdz, align 4, !tbaa !30
  store float %i.bdx, ptr %i.bea, align 4, !tbaa !30
  %i.beh = getelementptr inbounds nuw i8, ptr %.519021679.i, i64 %..idx1529.i ; 2 uses
  %i.bei = getelementptr inbounds nuw i8, ptr %.1318431681.i, i64 16 ; 2 uses
  %i.bej = add nuw nsw i32 %.218901680.i, 2       ; 3 uses
  %i.bek = or disjoint i32 %i.bej, 1
  %i.bel = icmp slt i32 %i.bek, %7
  br i1 %i.bel, label %.lr.ph1683.i, label %.preheader1548.i, !llvm.loop !262

bb.hf:                                            ; preds = %bb.hl, %.lr.ph1692.i
  %.531691.i = phi ptr [ %.50.lcssa.i, %.lr.ph1692.i ], [ %.55.i, %bb.hl ] ; 7 uses
  %.1418441690.i = phi ptr [ %.131843.lcssa.i, %.lr.ph1692.i ], [ %i.bfn, %bb.hl ] ; 2 uses
  %.318911689.i = phi i32 [ %.21890.lcssa.i, %.lr.ph1692.i ], [ %i.bfo, %bb.hl ]
  %.719041688.i = phi ptr [ %.51902.lcssa.i, %.lr.ph1692.i ], [ %.81905.i, %bb.hl ] ; 5 uses
  %i.bem = load <2 x i32>, ptr %.1418441690.i, align 4, !tbaa !28
  %i.ben = sitofp <2 x i32> %i.bem to <2 x float>
end_hunk_0
