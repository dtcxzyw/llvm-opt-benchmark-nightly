Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gemm_x86_avx512?download=true
inline.NumInlined: 238
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 209
loop-unroll.NumUnrolled: 213
begin_hunk_0_@_ZN4ncnnL31unpack_output_tile_fp32_to_bf16ERKNS_3MatES2_RS0_iiiiiffii:bb.a
  br label %bb.kw

bb.kw:                                            ; preds = %bb.ku, %bb.kv, %bb.kt
  %.sink5956 = phi i64 [ 16, %bb.ku ], [ 4, %bb.kv ], [ 32, %bb.kt ]
  %.164316 = phi nsz <8 x float> [ %i.gso, %bb.ku ], [ %i.gsp, %bb.kv ], [ %i.gsk, %bb.kt ] ; 2 uses
  %i.gsq = getelementptr inbounds nuw i8, ptr %.445331, i64 %.sink5956
  %i.gsr = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.164316, <8 x float> nofpclass(nan inf) %i.bz, <8 x float> nofpclass(nan inf) %i.gsg)
  br label %.thread4834

bb.kx:                                            ; preds = %bb.kr
  %i.gss = load float, ptr %.445331, align 4, !tbaa !69
  %i.gst = fmul fast float %i.gss, %8
  %i.gsu = insertelement <8 x float> poison, float %i.gst, i64 0
  %i.gsv = shufflevector <8 x float> %i.gsu, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.gsw = fadd fast <8 x float> %i.gsv, %i.gsg
  %i.gsx = getelementptr inbounds nuw i8, ptr %.445331, i64 4
  br label %.thread4834

.thread4834:                                      ; preds = %bb.kr, %bb.kq, %.thread4827, %bb.kw, %bb.kx, %.lr.ph5332
  %.184318 = phi nsz <8 x float> [ %.1543155326, %.lr.ph5332 ], [ %i.gsv, %bb.kx ], [ %.1543155326, %bb.kr ], [ %.164316, %bb.kw ], [ %.1543155326, %.thread4827 ], [ %.1543155326, %bb.kq ]
  %.34137 = phi nsz <8 x float> [ %i.gsg, %.lr.ph5332 ], [ %i.gsw, %bb.kx ], [ %i.gsg, %bb.kr ], [ %i.gsr, %bb.kw ], [ %i.gsi, %.thread4827 ], [ %i.gsj, %bb.kq ] ; 2 uses
  %.47 = phi ptr [ null, %.lr.ph5332 ], [ %i.gsx, %bb.kx ], [ %.445331, %bb.kr ], [ %i.gsq, %bb.kw ], [ %.445331, %.thread4827 ], [ %.445331, %bb.kq ] ; 2 uses
  %i.gsy = fmul fast <8 x float> %.34137, %i.cn
  %.44138 = select nsz i1 %i.ce, <8 x float> %i.gsy, <8 x float> %.34137 ; 9 uses
  br i1 %i.ch, label %bb.ky, label %bb.lh

bb.ky:                                            ; preds = %.thread4834
  br i1 %.not6924, label %bb.le, label %bb.kz

bb.kz:                                            ; preds = %bb.ky
  switch i32 %i.b, label %bb.ld [
    i32 8, label %bb.la
    i32 4, label %bb.lb
    i32 1, label %bb.lc
  ]

bb.la:                                            ; preds = %bb.kz
  store <8 x float> %.44138, ptr %.1766035328, align 1, !tbaa !90
  br label %bb.ld

bb.lb:                                            ; preds = %bb.kz
  %i.gsz = shufflevector <8 x float> %.44138, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %i.gsz, ptr %.1766035328, align 1, !tbaa !90
  %i.gta = getelementptr inbounds nuw i8, ptr %.1766035328, i64 %.idx7028
  %i.gtb = shufflevector <8 x float> %.44138, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x float> %i.gtb, ptr %i.gta, align 1, !tbaa !90
  br label %bb.ld

bb.lc:                                            ; preds = %bb.kz
  store <8 x float> %.44138, ptr %.1766035328, align 1, !tbaa !90
  br label %bb.ld

bb.ld:                                            ; preds = %bb.lb, %bb.la, %bb.kz, %bb.lc
  %i.gtc = getelementptr inbounds nuw [4 x i8], ptr %.1766035328, i64 %i.k
  br label %.thread4841

bb.le:                                            ; preds = %bb.ky
  switch i32 %i.b, label %.thread4841 [
    i32 8, label %.thread4838
    i32 4, label %bb.lf
    i32 1, label %bb.lg
  ]

.thread4838:                                      ; preds = %bb.le
  store <8 x float> %.44138, ptr %.1766035328, align 1, !tbaa !90
  %i.gtd = getelementptr inbounds nuw i8, ptr %.1766035328, i64 32
  br label %.thread4841

bb.lf:                                            ; preds = %bb.le
  %i.gte = shufflevector <8 x float> %.44138, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %i.gte, ptr %.1766035328, align 1, !tbaa !90
  %i.gtf = getelementptr inbounds nuw i8, ptr %.1766035328, i64 %.idx7028
  %i.gtg = shufflevector <8 x float> %.44138, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x float> %i.gtg, ptr %i.gtf, align 1, !tbaa !90
  %i.gth = getelementptr inbounds nuw i8, ptr %.1766035328, i64 16
  br label %.thread4841

bb.lg:                                            ; preds = %bb.le
  tail call void @llvm.x86.avx512.mask.scattersiv8.sf(ptr %.1766035328, <8 x i1> splat (i1 true), <8 x i32> %i.cv, <8 x float> %.44138, i32 4)
  %i.gti = getelementptr inbounds nuw i8, ptr %.1766035328, i64 4
  br label %.thread4841

bb.lh:                                            ; preds = %.thread4834
  %i.gtj = bitcast <8 x float> %.44138 to <8 x i32>
  %i.gtk = lshr <8 x i32> %i.gtj, splat (i32 16)  ; 2 uses
  %i.gtl = shufflevector <8 x i32> %i.gtk, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.gtm = shufflevector <8 x i32> %i.gtk, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.gtn = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.gtl, <4 x i32> %i.gtm) ; 14 uses
  %i.gto = bitcast <8 x i16> %i.gtn to <2 x i64>  ; 2 uses
  br i1 %.not6924, label %bb.ln, label %bb.li

bb.li:                                            ; preds = %bb.lh
  switch i32 %i.b, label %bb.lm [
    i32 8, label %bb.lj
    i32 4, label %bb.lk
    i32 1, label %bb.ll
  ]

bb.lj:                                            ; preds = %bb.li
  store <8 x i16> %i.gtn, ptr %.2165815329, align 1, !tbaa !90
  br label %bb.lm

bb.lk:                                            ; preds = %bb.li
  %i.gtp = extractelement <2 x i64> %i.gto, i64 0
  store i64 %i.gtp, ptr %.2165815329, align 1, !tbaa !90
  %i.gtq = getelementptr inbounds nuw i8, ptr %.2165815329, i64 %.idx7029
  %i.gtr = bitcast <8 x i16> %i.gtn to <2 x double>
  %i.gts = extractelement <2 x double> %i.gtr, i64 1
  store double %i.gts, ptr %i.gtq, align 1, !tbaa !90
  br label %bb.lm

bb.ll:                                            ; preds = %bb.li
  store <8 x i16> %i.gtn, ptr %.2165815329, align 1, !tbaa !90
  br label %bb.lm

bb.lm:                                            ; preds = %bb.lk, %bb.lj, %bb.li, %bb.ll
  %i.gtt = getelementptr inbounds nuw [2 x i8], ptr %.2165815329, i64 %i.k
  br label %.thread4841

bb.ln:                                            ; preds = %bb.lh
  switch i32 %i.b, label %.thread4841 [
    i32 8, label %.thread4843
    i32 4, label %bb.lo
    i32 1, label %bb.lp
  ]

.thread4843:                                      ; preds = %bb.ln
  store <8 x i16> %i.gtn, ptr %.2165815329, align 1, !tbaa !90
  %i.gtu = getelementptr inbounds nuw i8, ptr %.2165815329, i64 16
  br label %.thread4841

bb.lo:                                            ; preds = %bb.ln
  %i.gtv = extractelement <2 x i64> %i.gto, i64 0
  store i64 %i.gtv, ptr %.2165815329, align 1, !tbaa !90
  %i.gtw = getelementptr inbounds nuw i8, ptr %.2165815329, i64 %.idx7029
  %i.gtx = bitcast <8 x i16> %i.gtn to <2 x double>
  %i.gty = extractelement <2 x double> %i.gtx, i64 1
  store double %i.gty, ptr %i.gtw, align 1, !tbaa !90
  %i.gtz = getelementptr inbounds nuw i8, ptr %.2165815329, i64 8
  br label %.thread4841

bb.lp:                                            ; preds = %bb.ln
  %.sroa.0786.0.vec.extract = extractelement <8 x i16> %i.gtn, i64 0
  store i16 %.sroa.0786.0.vec.extract, ptr %.2165815329, align 2, !tbaa !110
  %.sroa.0786.2.vec.extract = extractelement <8 x i16> %i.gtn, i64 1
  %i.gua = getelementptr inbounds nuw [2 x i8], ptr %.2165815329, i64 %i.k
  store i16 %.sroa.0786.2.vec.extract, ptr %i.gua, align 2, !tbaa !110
  %.sroa.0786.4.vec.extract = extractelement <8 x i16> %i.gtn, i64 2
  %i.gub = getelementptr inbounds nuw i8, ptr %.2165815329, i64 %.idx7032
  store i16 %.sroa.0786.4.vec.extract, ptr %i.gub, align 2, !tbaa !110
  %.sroa.0786.6.vec.extract = extractelement <8 x i16> %i.gtn, i64 3
  %i.guc = getelementptr inbounds nuw i8, ptr %.2165815329, i64 %.idx7033
  store i16 %.sroa.0786.6.vec.extract, ptr %i.guc, align 2, !tbaa !110
  %.sroa.0786.8.vec.extract = extractelement <8 x i16> %i.gtn, i64 4
  %i.gud = getelementptr inbounds nuw i8, ptr %.2165815329, i64 %.idx7029
  store i16 %.sroa.0786.8.vec.extract, ptr %i.gud, align 2, !tbaa !110
  %.sroa.0786.10.vec.extract = extractelement <8 x i16> %i.gtn, i64 5
  %i.gue = getelementptr inbounds nuw i8, ptr %.2165815329, i64 %.idx7035
  store i16 %.sroa.0786.10.vec.extract, ptr %i.gue, align 2, !tbaa !110
  %.sroa.0786.12.vec.extract = extractelement <8 x i16> %i.gtn, i64 6
  %i.guf = getelementptr inbounds nuw i8, ptr %.2165815329, i64 %.idx7036
  store i16 %.sroa.0786.12.vec.extract, ptr %i.guf, align 2, !tbaa !110
  %.sroa.0786.14.vec.extract = extractelement <8 x i16> %i.gtn, i64 7
  %i.gug = getelementptr inbounds nuw i8, ptr %.2165815329, i64 %.idx7037
  store i16 %.sroa.0786.14.vec.extract, ptr %i.gug, align 2, !tbaa !110
  %i.guh = getelementptr inbounds nuw i8, ptr %.2165815329, i64 2
  br label %.thread4841

.thread4841:                                      ; preds = %bb.ln, %bb.le, %bb.lo, %.thread4843, %bb.lf, %.thread4838, %bb.lm, %bb.lp, %bb.ld, %bb.lg
  %.206606 = phi ptr [ %i.gtc, %bb.ld ], [ %i.gti, %bb.lg ], [ %.1766035328, %bb.le ], [ %.1766035328, %bb.ln ], [ %.1766035328, %bb.lp ], [ %.1766035328, %bb.lm ], [ %i.gth, %bb.lf ], [ %i.gtd, %.thread4838 ], [ %.1766035328, %.thread4843 ], [ %.1766035328, %bb.lo ]
  %.256585 = phi ptr [ %.2165815329, %bb.ld ], [ %.2165815329, %bb.lg ], [ %.2165815329, %bb.le ], [ %.2165815329, %bb.ln ], [ %i.guh, %bb.lp ], [ %i.gtt, %bb.lm ], [ %.2165815329, %bb.lf ], [ %.2165815329, %.thread4838 ], [ %i.gtu, %.thread4843 ], [ %i.gtz, %bb.lo ]
  %i.gui = add i32 %.466185327, 1                 ; 2 uses
  %exitcond5599.not = icmp eq i32 %i.gui, %6
  br i1 %exitcond5599.not, label %._crit_edge5333, label %.lr.ph5332, !llvm.loop !1591

._crit_edge5333:                                  ; preds = %.thread4841, %.preheader5199
  %.116415.lcssa = phi ptr [ %.106414.lcssa, %.preheader5199 ], [ %i.gsh, %.thread4841 ] ; 2 uses
  %.44.lcssa = phi ptr [ %.40.lcssa, %.preheader5199 ], [ %.47, %.thread4841 ] ; 2 uses
  %indvars.iv.next5601 = add nuw nsw i64 %indvars.iv5600, 8 ; 3 uses
  %i.guj = icmp slt i64 %indvars.iv.next5601, %invariant.op
  br i1 %i.guj, label %bb.fi, label %.preheader5198.loopexit, !llvm.loop !1592

.preheader5192.loopexit:                          ; preds = %._crit_edge5405
  %i.guk = trunc nsw i64 %indvars.iv.next5621 to i32
  br label %.preheader5192

.preheader5192:                                   ; preds = %.preheader5192.loopexit, %.preheader5198
  %.26436.lcssa = phi i32 [ %.16435.lcssa, %.preheader5198 ], [ %i.guk, %.preheader5192.loopexit ] ; 3 uses
  %.126416.lcssa = phi ptr [ %.66410.lcssa, %.preheader5198 ], [ %.176421.lcssa, %.preheader5192.loopexit ] ; 2 uses
  %.48.lcssa = phi ptr [ %.24.lcssa, %.preheader5198 ], [ %.68.lcssa, %.preheader5192.loopexit ] ; 2 uses
  %i.gul = or disjoint i32 %.26436.lcssa, 1
  %i.gum = icmp slt i32 %i.gul, %4
  br i1 %i.gum, label %.lr.ph5482, label %.preheader5187

.lr.ph5482:                                       ; preds = %.preheader5192
  %.not6805 = icmp eq i32 %9, 0                   ; 11 uses
  %i.gun = sext i32 %5 to i64                     ; 3 uses
  %i.guo = mul i64 %i.k, %i.gun                   ; 2 uses
  %i.gup = mul nsw i32 %i.b, %5
  %i.guq = sext i32 %i.gup to i64                 ; 2 uses
  %11 = icmp eq i32 %2, 0                         ; 6 uses
  %12 = add i32 %2, -1
  %or.cond37 = icmp ult i32 %12, 2                ; 6 uses
  %i.gur = sext i32 %3 to i64                     ; 4 uses
  %i.gus = icmp sgt i32 %6, 15
  %i.gut = insertelement <16 x float> poison, float %8, i64 0
  %i.guu = shufflevector <16 x float> %i.gut, <16 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.guv = fcmp fast oeq float %8, 1.000000e+00   ; 5 uses
  %i.guw = fcmp fast une float %7, 1.000000e+00   ; 5 uses
  %i.gux = insertelement <16 x float> poison, float %7, i64 0
  %i.guy = shufflevector <16 x float> %i.gux, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.guz = icmp eq i32 %10, 1                     ; 5 uses
  %i.gva = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.b)
  %i.gvb = icmp eq i32 %i.gva, 1                  ; 2 uses
  %i.gvc = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.b, i1 true) ; 2 uses
  %.idx6820 = shl i64 %i.k, 4                     ; 9 uses
  %.idx6821 = shl i64 %i.k, 3                     ; 8 uses
  %.idx6823 = mul i64 %i.k, 24                    ; 3 uses
  %i.gvd = icmp eq i32 %i.b, 1                    ; 2 uses
  %.idx5157 = shl i64 %i.k, 2                     ; 4 uses
  %.idx5158 = mul i64 %i.k, 6                     ; 3 uses
  %.idx5160 = mul i64 %i.k, 10                    ; 2 uses
  %.idx5161 = mul i64 %i.k, 12                    ; 4 uses
  %.idx5162 = mul i64 %i.k, 14                    ; 2 uses
  %.idx5164 = mul i64 %i.k, 18
  %.idx5165 = mul i64 %i.k, 20                    ; 2 uses
  %.idx5166 = mul i64 %i.k, 22
  %.idx5168 = mul i64 %i.k, 26
  %.idx5169 = mul i64 %i.k, 28                    ; 2 uses
  %.idx5170 = mul i64 %i.k, 30
  %.idx6824 = shl i64 %i.k, 5                     ; 5 uses
  %.idx6828 = mul i64 %i.k, 48
  %i.gve = trunc i64 %i.k to i32
  %i.gvf = insertelement <16 x i32> poison, i32 %i.gve, i64 0
  %i.gvg = shufflevector <16 x i32> %i.gvf, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.gvh = mul <16 x i32> %i.gvg, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %.idx6829 = shl i64 %i.k, 6
  %i.gvi = insertelement <4 x float> poison, float %8, i64 0
  %i.gvj = shufflevector <4 x float> %i.gvi, <4 x float> poison, <4 x i32> zeroinitializer ; 9 uses
  %i.gvk = insertelement <4 x float> poison, float %7, i64 0
  %i.gvl = shufflevector <4 x float> %i.gvk, <4 x float> poison, <4 x i32> zeroinitializer ; 6 uses
  %i.gvm = sext i32 %.26436.lcssa to i64
  %i.gvn = sext i32 %4 to i64
  %i.gvo = sext i32 %i.b to i64
  %invariant.op5929 = add nsw i64 %i.gvn, -1
  %i.gvp = insertelement <2 x float> poison, float %8, i64 0
  %i.gvq = shufflevector <2 x float> %i.gvp, <2 x float> poison, <2 x i32> zeroinitializer ; 5 uses
  %13 = insertelement <2 x float> poison, float %7, i64 0
  %14 = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %15 = insertelement <2 x i1> poison, i1 %11, i64 0
  %16 = shufflevector <2 x i1> %15, <2 x i1> poison, <2 x i32> zeroinitializer
  %17 = insertelement <2 x i1> poison, i1 %or.cond37, i64 0
  %18 = shufflevector <2 x i1> %17, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.gvr = insertelement <2 x float> poison, float %7, i64 0
  %i.gvs = shufflevector <2 x float> %i.gvr, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.ro

bb.lq:                                            ; preds = %.lr.ph5411, %._crit_edge5405
  %indvars.iv5620 = phi i64 [ %i.dwc, %.lr.ph5411 ], [ %indvars.iv.next5621, %._crit_edge5405 ] ; 5 uses
  %.485410 = phi ptr [ %.24.lcssa, %.lr.ph5411 ], [ %.68.lcssa, %._crit_edge5405 ] ; 4 uses
  %.1264165409 = phi ptr [ %.66410.lcssa, %.lr.ph5411 ], [ %.176421.lcssa, %._crit_edge5405 ] ; 2 uses
  %i.gvt = load ptr, ptr %1, align 8, !tbaa !25   ; 3 uses
  br i1 %.not6830, label %bb.ls, label %bb.lr

bb.lr:                                            ; preds = %bb.lq
  %i.gvu = getelementptr inbounds nuw [2 x i8], ptr %i.gvt, i64 %i.dvc
  %i.gvv = add nsw i64 %indvars.iv5620, %i.dvj
  %i.gvw = mul nsw i64 %i.gvv, %i.dwe             ; 2 uses
  %i.gvx = getelementptr inbounds [2 x i8], ptr %i.gvu, i64 %i.gvw
  br label %bb.lt

bb.ls:                                            ; preds = %bb.lq
  %i.gvy = add nsw i64 %indvars.iv5620, %i.dvj
  %i.gvz = mul i64 %i.k, %i.gvy                   ; 2 uses
  %i.gwa = getelementptr inbounds nuw [2 x i8], ptr %i.gvt, i64 %i.gvz
  %i.gwb = getelementptr inbounds [2 x i8], ptr %i.gwa, i64 %i.dve
  br label %bb.lt

bb.lt:                                            ; preds = %bb.ls, %bb.lr
  %.sink5959 = phi i64 [ %i.gvz, %bb.ls ], [ %i.dvc, %bb.lr ]
  %.sink5958 = phi i64 [ %i.dve, %bb.ls ], [ %i.gvw, %bb.lr ]
  %.06626 = phi ptr [ %i.gwb, %bb.ls ], [ %i.gvx, %bb.lr ] ; 2 uses
  %i.gwc = getelementptr inbounds nuw [4 x i8], ptr %i.gvt, i64 %.sink5959
  %i.gwd = getelementptr inbounds [4 x i8], ptr %i.gwc, i64 %.sink5958 ; 2 uses
  %.not6831 = icmp eq ptr %.485410, null
  br i1 %.not6831, label %.thread4860, label %bb.lu

bb.lu:                                            ; preds = %bb.lt
  br i1 %i.dvf, label %.thread4848, label %bb.lv

.thread4848:                                      ; preds = %bb.lu
  %i.gwe = load float, ptr %.485410, align 4, !tbaa !69
  %i.gwf = fmul fast float %i.gwe, %8             ; 2 uses
  %i.gwg = insertelement <4 x float> poison, float %i.gwf, i64 0
  %i.gwh = shufflevector <4 x float> %i.gwg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gwi = insertelement <16 x float> poison, float %i.gwf, i64 0
  %i.gwj = shufflevector <16 x float> %i.gwi, <16 x float> poison, <16 x i32> zeroinitializer
  br label %.thread4860

bb.lv:                                            ; preds = %bb.lu
  br i1 %or.cond25, label %bb.lw, label %bb.lx

bb.lw:                                            ; preds = %bb.lv
  %i.gwk = load ptr, ptr %0, align 8, !tbaa !25
  %i.gwl = getelementptr inbounds [4 x i8], ptr %i.gwk, i64 %i.dvj
  %i.gwm = getelementptr inbounds nuw [4 x i8], ptr %i.gwl, i64 %indvars.iv5620 ; 2 uses
  %i.gwn = load <4 x float>, ptr %i.gwm, align 1, !tbaa !90
  %i.gwo = fmul fast <4 x float> %i.gwn, %i.dvl   ; 2 uses
  %i.gwp = shufflevector <4 x float> %i.gwo, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %.thread4860

bb.lx:                                            ; preds = %bb.lv
  switch i32 %2, label %.thread4860 [
    i32 3, label %bb.ly
    i32 4, label %bb.lz
  ]

bb.ly:                                            ; preds = %bb.lx
  %i.gwq = load ptr, ptr %0, align 8, !tbaa !25
  %i.gwr = add nsw i64 %indvars.iv5620, %i.dvj
  %i.gws = mul i64 %i.t, %i.gwr
  %i.gwt = getelementptr inbounds nuw [4 x i8], ptr %i.gwq, i64 %i.gws
  %i.gwu = getelementptr inbounds [4 x i8], ptr %i.gwt, i64 %i.dvi
  br label %.thread4860

bb.lz:                                            ; preds = %bb.lx
  %i.gwv = load ptr, ptr %0, align 8, !tbaa !25
  %i.gww = getelementptr inbounds [4 x i8], ptr %i.gwv, i64 %i.dvb
  br label %.thread4860

.thread4860:                                      ; preds = %bb.lx, %bb.lw, %.thread4848, %bb.ly, %bb.lz, %bb.lt
  %.24092 = phi nsz <4 x float> [ zeroinitializer, %bb.lt ], [ zeroinitializer, %bb.lz ], [ zeroinitializer, %bb.lx ], [ zeroinitializer, %bb.ly ], [ %i.gwh, %.thread4848 ], [ %i.gwo, %bb.lw ] ; 2 uses
  %.26665 = phi nsz <16 x float> [ zeroinitializer, %bb.lt ], [ zeroinitializer, %bb.lz ], [ zeroinitializer, %bb.lx ], [ zeroinitializer, %bb.ly ], [ %i.gwj, %.thread4848 ], [ %i.gwp, %bb.lw ]
  %.51 = phi ptr [ null, %bb.lt ], [ %i.gww, %bb.lz ], [ %.485410, %bb.lx ], [ %i.gwu, %bb.ly ], [ %.485410, %.thread4848 ], [ %i.gwm, %bb.lw ] ; 2 uses
  br i1 %i.dvm, label %.lr.ph5349, label %.preheader5197

.preheader5197:                                   ; preds = %bb.nf, %.thread4860
  %.06670.lcssa = phi i32 [ 0, %.thread4860 ], [ %i.dwb, %bb.nf ] ; 3 uses
  %.16648.lcssa = phi ptr [ %i.gwd, %.thread4860 ], [ %.36650, %bb.nf ] ; 2 uses
  %.16627.lcssa = phi ptr [ %.06626, %.thread4860 ], [ %.46630, %bb.nf ] ; 2 uses
  %.136417.lcssa = phi ptr [ %.1264165409, %.thread4860 ], [ %i.gxg, %bb.nf ] ; 2 uses
  %.52.lcssa = phi ptr [ %.51, %.thread4860 ], [ %.55, %bb.nf ] ; 2 uses
  %i.gwx = or disjoint i32 %.06670.lcssa, 7
  %i.gwy = icmp slt i32 %i.gwx, %6
  br i1 %i.gwy, label %.lr.ph5365, label %.preheader5196

.lr.ph5349:                                       ; preds = %.thread4860, %bb.nf
  %.525348 = phi ptr [ %.55, %bb.nf ], [ %.51, %.thread4860 ] ; 15 uses
  %.1364175347 = phi ptr [ %i.gxg, %bb.nf ], [ %.1264165409, %.thread4860 ] ; 5 uses
  %.166275346 = phi ptr [ %.46630, %bb.nf ], [ %.06626, %.thread4860 ] ; 56 uses
  %.166485345 = phi ptr [ %.36650, %bb.nf ], [ %i.gwd, %.thread4860 ] ; 61 uses
  %.366665344 = phi <16 x float> [ %.66669, %bb.nf ], [ %.26665, %.thread4860 ] ; 12 uses
  %.066705343 = phi i32 [ %i.hrz, %bb.nf ], [ 0, %.thread4860 ]
  %i.gwz = load <16 x float>, ptr %.1364175347, align 1, !tbaa !90 ; 2 uses
  %i.gxa = getelementptr inbounds nuw i8, ptr %.1364175347, i64 64
  %i.gxb = load <16 x float>, ptr %i.gxa, align 1, !tbaa !90 ; 2 uses
  %i.gxc = getelementptr inbounds nuw i8, ptr %.1364175347, i64 128
  %i.gxd = load <16 x float>, ptr %i.gxc, align 1, !tbaa !90 ; 2 uses
  %i.gxe = getelementptr inbounds nuw i8, ptr %.1364175347, i64 192
  %i.gxf = load <16 x float>, ptr %i.gxe, align 1, !tbaa !90 ; 2 uses
  %i.gxg = getelementptr inbounds nuw i8, ptr %.1364175347, i64 256 ; 2 uses
  %i.gxh = shufflevector <16 x float> %i.gwz, <16 x float> %i.gxf, <16 x i32> <i32 0, i32 19, i32 1, i32 16, i32 4, i32 23, i32 5, i32 20, i32 8, i32 27, i32 9, i32 24, i32 12, i32 31, i32 13, i32 28> ; 2 uses
  %i.gxi = shufflevector <16 x float> %i.gxd, <16 x float> %i.gxb, <16 x i32> <i32 0, i32 19, i32 1, i32 16, i32 4, i32 23, i32 5, i32 20, i32 8, i32 27, i32 9, i32 24, i32 12, i32 31, i32 13, i32 28> ; 2 uses
  %i.gxj = shufflevector <16 x float> %i.gwz, <16 x float> %i.gxf, <16 x i32> <i32 2, i32 17, i32 3, i32 18, i32 6, i32 21, i32 7, i32 22, i32 10, i32 25, i32 11, i32 26, i32 14, i32 29, i32 15, i32 30> ; 2 uses
  %i.gxk = shufflevector <16 x float> %i.gxd, <16 x float> %i.gxb, <16 x i32> <i32 2, i32 17, i32 3, i32 18, i32 6, i32 21, i32 7, i32 22, i32 10, i32 25, i32 11, i32 26, i32 14, i32 29, i32 15, i32 30> ; 2 uses
  %i.gxl = shufflevector <16 x float> %i.gxh, <16 x float> %i.gxi, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 7 uses
  %i.gxm = shufflevector <16 x float> %i.gxh, <16 x float> %i.gxi, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.gxn = shufflevector <16 x float> %i.gxk, <16 x float> %i.gxj, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 7 uses
  %i.gxo = shufflevector <16 x float> %i.gxk, <16 x float> %i.gxj, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.gxp = shufflevector <16 x float> %i.gxm, <16 x float> poison, <16 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14> ; 7 uses
  %i.gxq = shufflevector <16 x float> %i.gxo, <16 x float> poison, <16 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14> ; 7 uses
  %.not6878 = icmp eq ptr %.525348, null
  br i1 %.not6878, label %.thread4877, label %bb.ma

bb.ma:                                            ; preds = %.lr.ph5349
  br i1 %i.dvf, label %.thread4864, label %bb.mb

.thread4864:                                      ; preds = %bb.ma
  %i.gxr = fadd fast <16 x float> %.366665344, %i.gxl
  %i.gxs = fadd fast <16 x float> %i.gxp, %.366665344
  %i.gxt = fadd fast <16 x float> %.366665344, %i.gxn
  %i.gxu = fadd fast <16 x float> %i.gxq, %.366665344
  br label %.thread4877

bb.mb:                                            ; preds = %bb.ma
  br i1 %or.cond25, label %bb.mc, label %bb.md

bb.mc:                                            ; preds = %bb.mb
  %i.gxv = fadd fast <16 x float> %.366665344, %i.gxl
  %i.gxw = fadd fast <16 x float> %i.gxp, %.366665344
  %i.gxx = fadd fast <16 x float> %.366665344, %i.gxn
  %i.gxy = fadd fast <16 x float> %i.gxq, %.366665344
  br label %.thread4877

bb.md:                                            ; preds = %bb.mb
  switch i32 %2, label %.thread4877 [
    i32 3, label %bb.me
    i32 4, label %bb.mk
  ]

bb.me:                                            ; preds = %bb.md
  %i.gxz = load <16 x float>, ptr %.525348, align 1, !tbaa !90 ; 4 uses
  br i1 %i.dvp, label %bb.mf, label %bb.mg

bb.mf:                                            ; preds = %bb.me
  %i.gya = getelementptr inbounds nuw i8, ptr %.525348, i64 64
  %i.gyb = load <16 x float>, ptr %i.gya, align 1, !tbaa !90 ; 2 uses
  %i.gyc = getelementptr inbounds nuw i8, ptr %.525348, i64 128
  %i.gyd = load <16 x float>, ptr %i.gyc, align 1, !tbaa !90 ; 2 uses
  %i.gye = getelementptr inbounds nuw i8, ptr %.525348, i64 192
  %i.gyf = load <16 x float>, ptr %i.gye, align 1, !tbaa !90 ; 2 uses
  %i.gyg = getelementptr inbounds nuw i8, ptr %.525348, i64 256
  %i.gyh = shufflevector <16 x float> %i.gxz, <16 x float> %i.gyb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.gyi = shufflevector <16 x float> %i.gyd, <16 x float> %i.gyf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.gyj = shufflevector <16 x float> %i.gxz, <16 x float> %i.gyb, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.gyk = shufflevector <16 x float> %i.gyd, <16 x float> %i.gyf, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.gyl = shufflevector <16 x float> %i.gyh, <16 x float> %i.gyi, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.gym = shufflevector <16 x float> %i.gyh, <16 x float> %i.gyi, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.gyn = shufflevector <16 x float> %i.gyj, <16 x float> %i.gyk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.gyo = shufflevector <16 x float> %i.gyj, <16 x float> %i.gyk, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  br label %bb.mh

bb.mg:                                            ; preds = %bb.me
  %i.gyp = getelementptr inbounds nuw [4 x i8], ptr %.525348, i64 %i.t
  %i.gyq = load <16 x float>, ptr %i.gyp, align 1, !tbaa !90 ; 2 uses
  %i.gyr = getelementptr inbounds nuw i8, ptr %.525348, i64 %.idx6879
  %i.gys = load <16 x float>, ptr %i.gyr, align 1, !tbaa !90 ; 2 uses
  %i.gyt = getelementptr inbounds nuw i8, ptr %.525348, i64 %.idx6880
  %i.gyu = load <16 x float>, ptr %i.gyt, align 1, !tbaa !90 ; 2 uses
  %i.gyv = getelementptr inbounds nuw i8, ptr %.525348, i64 64
  %i.gyw = shufflevector <16 x float> %i.gxz, <16 x float> %i.gyq, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.gyx = shufflevector <16 x float> %i.gys, <16 x float> %i.gyu, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.gyy = shufflevector <16 x float> %i.gxz, <16 x float> %i.gyq, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.gyz = shufflevector <16 x float> %i.gys, <16 x float> %i.gyu, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.gza = shufflevector <16 x float> %i.gyw, <16 x float> %i.gyx, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.gzb = shufflevector <16 x float> %i.gyw, <16 x float> %i.gyx, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.gzc = shufflevector <16 x float> %i.gyy, <16 x float> %i.gyz, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.gzd = shufflevector <16 x float> %i.gyy, <16 x float> %i.gyz, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  br label %bb.mh

bb.mh:                                            ; preds = %bb.mg, %bb.mf
  %.06677 = phi nsz <16 x float> [ %i.gyo, %bb.mf ], [ %i.gzd, %bb.mg ] ; 2 uses
  %.06676 = phi nsz <16 x float> [ %i.gyn, %bb.mf ], [ %i.gzc, %bb.mg ] ; 2 uses
  %.06675 = phi nsz <16 x float> [ %i.gym, %bb.mf ], [ %i.gzb, %bb.mg ] ; 2 uses
  %.46667 = phi nsz <16 x float> [ %i.gyl, %bb.mf ], [ %i.gza, %bb.mg ] ; 4 uses
  %.53 = phi ptr [ %i.gyg, %bb.mf ], [ %i.gyv, %bb.mg ] ; 2 uses
  br i1 %i.dvq, label %bb.mi, label %bb.mj

bb.mi:                                            ; preds = %bb.mh
  %i.gze = fadd fast <16 x float> %.46667, %i.gxl
  %i.gzf = fadd fast <16 x float> %.06675, %i.gxp
  %i.gzg = fadd fast <16 x float> %.06676, %i.gxn
  %i.gzh = fadd fast <16 x float> %.06677, %i.gxq
end_hunk_0
begin_hunk_1_@_ZN4ncnnL31unpack_output_tile_fp32_to_bf16ERKNS_3MatES2_RS0_iiiiiffii:bb.a
bb.re:                                            ; preds = %bb.qz
  switch i32 %i.b, label %bb.rn [
    i32 4, label %.thread4986
    i32 1, label %bb.rf
  ]

.thread4986:                                      ; preds = %bb.re
  store <4 x float> %.43915, ptr %.1366605400, align 1, !tbaa !90
  %i.isw = getelementptr inbounds nuw i8, ptr %.1366605400, i64 16
  br label %bb.rn

bb.rf:                                            ; preds = %bb.re
  %.sroa.0221.0.vec.extract = extractelement <4 x float> %.43915, i64 0
  store float %.sroa.0221.0.vec.extract, ptr %.1366605400, align 4, !tbaa !69
  %.sroa.0221.4.vec.extract = extractelement <4 x float> %.43915, i64 1
  %i.isx = getelementptr inbounds nuw [4 x i8], ptr %.1366605400, i64 %i.k
  store float %.sroa.0221.4.vec.extract, ptr %i.isx, align 4, !tbaa !69
  %.sroa.0221.8.vec.extract = extractelement <4 x float> %.43915, i64 2
  %i.isy = getelementptr inbounds nuw i8, ptr %.1366605400, i64 %.idx6885
  store float %.sroa.0221.8.vec.extract, ptr %i.isy, align 4, !tbaa !69
  %.sroa.0221.12.vec.extract = extractelement <4 x float> %.43915, i64 3
  %i.isz = getelementptr inbounds nuw i8, ptr %.1366605400, i64 %.idx6892
  store float %.sroa.0221.12.vec.extract, ptr %i.isz, align 4, !tbaa !69
  %i.ita = getelementptr inbounds nuw i8, ptr %.1366605400, i64 4
  br label %bb.rn

bb.rg:                                            ; preds = %.thread4982
  %i.itb = bitcast <4 x float> %.43915 to <4 x i32>
  %i.itc = lshr <4 x i32> %i.itb, splat (i32 16)
  %i.itd = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.itc, <4 x i32> poison) ; 6 uses
  %i.ite = bitcast <8 x i16> %i.itd to <2 x i64>  ; 2 uses
  br i1 %.not6830, label %bb.rl, label %bb.rh

bb.rh:                                            ; preds = %bb.rg
  switch i32 %i.b, label %bb.rk [
    i32 4, label %bb.ri
    i32 1, label %bb.rj
  ]

bb.ri:                                            ; preds = %bb.rh
  %i.itf = shufflevector <8 x i16> %i.itd, <8 x i16> poison, <13 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 3>
  tail call void @llvm.masked.store.v13i16.p0(<13 x i16> %i.itf, ptr align 2 %.1766435401, <13 x i1> <i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true>), !tbaa !110
  br label %bb.rk

bb.rj:                                            ; preds = %bb.rh
  %i.itg = extractelement <2 x i64> %i.ite, i64 0
  store i64 %i.itg, ptr %.1766435401, align 1, !tbaa !90
  br label %bb.rk

bb.rk:                                            ; preds = %bb.ri, %bb.rh, %bb.rj
  %i.ith = getelementptr inbounds nuw [2 x i8], ptr %.1766435401, i64 %i.k
  br label %bb.rn

bb.rl:                                            ; preds = %bb.rg
  switch i32 %i.b, label %bb.rn [
    i32 4, label %.thread4988
    i32 1, label %bb.rm
  ]

.thread4988:                                      ; preds = %bb.rl
  %i.iti = extractelement <2 x i64> %i.ite, i64 0
  store i64 %i.iti, ptr %.1766435401, align 1, !tbaa !90
  %i.itj = getelementptr inbounds nuw i8, ptr %.1766435401, i64 8
  br label %bb.rn

bb.rm:                                            ; preds = %bb.rl
  %.sroa.0213.0.extract.trunc = extractelement <8 x i16> %i.itd, i64 0
  %.sroa.4214.0.extract.trunc = extractelement <8 x i16> %i.itd, i64 1
  %.sroa.5215.0.extract.trunc = extractelement <8 x i16> %i.itd, i64 2
  %.sroa.6216.0.extract.trunc = extractelement <8 x i16> %i.itd, i64 3
  store i16 %.sroa.0213.0.extract.trunc, ptr %.1766435401, align 2, !tbaa !110
  %i.itk = getelementptr inbounds nuw [2 x i8], ptr %.1766435401, i64 %i.k
  store i16 %.sroa.4214.0.extract.trunc, ptr %i.itk, align 2, !tbaa !110
  %i.itl = getelementptr inbounds nuw i8, ptr %.1766435401, i64 %.idx6888
  store i16 %.sroa.5215.0.extract.trunc, ptr %i.itl, align 2, !tbaa !110
  %i.itm = getelementptr inbounds nuw i8, ptr %.1766435401, i64 %.idx6889
  store i16 %.sroa.6216.0.extract.trunc, ptr %i.itm, align 2, !tbaa !110
  %i.itn = getelementptr inbounds nuw i8, ptr %.1766435401, i64 2
  br label %bb.rn

bb.rn:                                            ; preds = %bb.rl, %bb.re, %.thread4988, %.thread4986, %bb.rk, %bb.rm, %bb.rd, %bb.rf
  %.156662 = phi ptr [ %i.isv, %bb.rd ], [ %i.ita, %bb.rf ], [ %.1366605400, %bb.re ], [ %.1366605400, %bb.rl ], [ %.1366605400, %bb.rm ], [ %.1366605400, %bb.rk ], [ %i.isw, %.thread4986 ], [ %.1366605400, %.thread4988 ]
  %.206646 = phi ptr [ %.1766435401, %bb.rd ], [ %.1766435401, %bb.rf ], [ %.1766435401, %bb.re ], [ %.1766435401, %bb.rl ], [ %i.itn, %bb.rm ], [ %i.ith, %bb.rk ], [ %.1766435401, %.thread4986 ], [ %i.itj, %.thread4988 ]
  %i.ito = add nuw nsw i32 %.466745399, 1         ; 2 uses
  %exitcond5619.not = icmp eq i32 %i.ito, %6
  br i1 %exitcond5619.not, label %._crit_edge5405, label %.lr.ph5404, !llvm.loop !1597

._crit_edge5405:                                  ; preds = %bb.rn, %.preheader5194
  %.176421.lcssa = phi ptr [ %.166420.lcssa, %.preheader5194 ], [ %i.irw, %bb.rn ] ; 2 uses
  %.68.lcssa = phi ptr [ %.64.lcssa, %.preheader5194 ], [ %.71, %bb.rn ] ; 2 uses
  %indvars.iv.next5621 = add nuw nsw i64 %indvars.iv5620, 4 ; 3 uses
  %i.itp = icmp slt i64 %indvars.iv.next5621, %invariant.op5928
  br i1 %i.itp, label %bb.lq, label %.preheader5192.loopexit, !llvm.loop !1598

.preheader5187.loopexit:                          ; preds = %._crit_edge5476
  %i.itq = trunc nsw i64 %indvars.iv.next5625 to i32
  br label %.preheader5187

.preheader5187:                                   ; preds = %.preheader5187.loopexit, %.preheader5192
  %.36437.lcssa = phi i32 [ %.26436.lcssa, %.preheader5192 ], [ %i.itq, %.preheader5187.loopexit ] ; 2 uses
  %.186422.lcssa = phi ptr [ %.126416.lcssa, %.preheader5192 ], [ %.236427.lcssa, %.preheader5187.loopexit ]
  %.72.lcssa = phi ptr [ %.48.lcssa, %.preheader5192 ], [ %.88.lcssa, %.preheader5187.loopexit ]
  %i.itr = icmp slt i32 %.36437.lcssa, %4
  br i1 %i.itr, label %.lr.ph5548, label %._crit_edge5549

.lr.ph5548:                                       ; preds = %.preheader5187
  %.not = icmp eq i32 %9, 0                       ; 11 uses
  %i.its = sext i32 %5 to i64                     ; 3 uses
  %i.itt = mul i64 %i.k, %i.its                   ; 2 uses
  %i.itu = mul nsw i32 %i.b, %5
  %i.itv = sext i32 %i.itu to i64                 ; 2 uses
  %i.itw = icmp eq i32 %2, 0
  %i.itx = add i32 %2, -1
  %or.cond49 = icmp ult i32 %i.itx, 2
  %i.ity = sext i32 %3 to i64                     ; 4 uses
  %i.itz = icmp sgt i32 %6, 15
  %or.cond53 = icmp ult i32 %2, 3                 ; 5 uses
  %i.iua = add i32 %2, -3
  %or.cond55 = icmp ult i32 %i.iua, 2             ; 5 uses
  %i.iub = insertelement <16 x float> poison, float %8, i64 0
  %i.iuc = shufflevector <16 x float> %i.iub, <16 x float> poison, <16 x i32> zeroinitializer
  %i.iud = fcmp fast une float %7, 1.000000e+00   ; 3 uses
  %i.iue = insertelement <16 x float> poison, float %7, i64 0
  %i.iuf = shufflevector <16 x float> %i.iue, <16 x float> poison, <16 x i32> zeroinitializer
  %i.iug = icmp eq i32 %10, 1                     ; 5 uses
  %i.iuh = icmp eq i64 %i.k, 1                    ; 6 uses
  %i.iui = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.b)
  %i.iuj = icmp eq i32 %i.iui, 1                  ; 2 uses
  %i.iuk = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.b, i1 true) ; 2 uses
  %.idx6767 = shl i64 %i.k, 4                     ; 10 uses
  %.idx6768 = shl i64 %i.k, 3                     ; 9 uses
  %.idx6770 = mul i64 %i.k, 24                    ; 4 uses
  %i.iul = icmp eq i32 %i.b, 1                    ; 2 uses
  %.idx6771 = shl i64 %i.k, 2                     ; 4 uses
  %.idx6772 = mul i64 %i.k, 6                     ; 3 uses
  %.idx6774 = mul i64 %i.k, 10                    ; 2 uses
  %.idx6775 = mul i64 %i.k, 12                    ; 5 uses
  %.idx6776 = mul i64 %i.k, 14                    ; 2 uses
  %.idx6778 = mul i64 %i.k, 18
  %.idx6779 = mul i64 %i.k, 20                    ; 3 uses
  %.idx6780 = mul i64 %i.k, 22
  %.idx6782 = mul i64 %i.k, 26
  %.idx6783 = mul i64 %i.k, 28                    ; 3 uses
  %.idx6784 = mul i64 %i.k, 30
  %.idx6785 = shl i64 %i.k, 5                     ; 6 uses
  %.idx6789 = mul i64 %i.k, 48                    ; 2 uses
  %.idx6797 = mul i64 %i.k, 36
  %.idx6798 = mul i64 %i.k, 40
  %.idx6799 = mul i64 %i.k, 44
  %.idx6801 = mul i64 %i.k, 52
  %.idx6802 = mul i64 %i.k, 56
  %.idx6803 = mul i64 %i.k, 60
  %.idx6804 = shl i64 %i.k, 6
  %i.ium = insertelement <4 x float> poison, float %8, i64 0
  %i.iun = shufflevector <4 x float> %i.ium, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.iuo = insertelement <4 x float> poison, float %7, i64 0
  %i.iup = shufflevector <4 x float> %i.iuo, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.iuq = and i32 %6, -16
  %i.iur = sext i32 %.36437.lcssa to i64
  %i.ius = sext i32 %i.b to i64
  %wide.trip.count = sext i32 %4 to i64
  %i.iut = insertelement <2 x i1> poison, i1 %or.cond53, i64 0
  %i.iuu = shufflevector <2 x i1> %i.iut, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.iuv = insertelement <2 x float> poison, float %8, i64 0
  %i.iuw = shufflevector <2 x float> %i.iuv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iux = insertelement <2 x float> poison, float %7, i64 0
  %i.iuy = shufflevector <2 x float> %i.iux, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.vl

bb.ro:                                            ; preds = %.lr.ph5482, %._crit_edge5476
  %indvars.iv5624 = phi i64 [ %i.gvm, %.lr.ph5482 ], [ %indvars.iv.next5625, %._crit_edge5476 ] ; 5 uses
  %.725481 = phi ptr [ %.48.lcssa, %.lr.ph5482 ], [ %.88.lcssa, %._crit_edge5476 ] ; 4 uses
  %.1864225480 = phi ptr [ %.126416.lcssa, %.lr.ph5482 ], [ %.236427.lcssa, %._crit_edge5476 ] ; 2 uses
  %i.iuz = load ptr, ptr %1, align 8, !tbaa !25   ; 3 uses
  br i1 %.not6805, label %bb.rq, label %bb.rp

bb.rp:                                            ; preds = %bb.ro
  %i.iva = getelementptr inbounds nuw [2 x i8], ptr %i.iuz, i64 %i.guo
  %i.ivb = add nsw i64 %indvars.iv5624, %i.gur
  %i.ivc = mul nsw i64 %i.ivb, %i.gvo             ; 2 uses
  %i.ivd = getelementptr inbounds [2 x i8], ptr %i.iva, i64 %i.ivc
  br label %bb.rr

bb.rq:                                            ; preds = %bb.ro
  %i.ive = add nsw i64 %indvars.iv5624, %i.gur
  %i.ivf = mul i64 %i.k, %i.ive                   ; 2 uses
  %i.ivg = getelementptr inbounds nuw [2 x i8], ptr %i.iuz, i64 %i.ivf
  %i.ivh = getelementptr inbounds [2 x i8], ptr %i.ivg, i64 %i.guq
  br label %bb.rr

bb.rr:                                            ; preds = %bb.rq, %bb.rp
  %.sink5966 = phi i64 [ %i.ivf, %bb.rq ], [ %i.guo, %bb.rp ]
  %.sink5965 = phi i64 [ %i.guq, %bb.rq ], [ %i.ivc, %bb.rp ]
  %.06539 = phi ptr [ %i.ivh, %bb.rq ], [ %i.ivd, %bb.rp ] ; 2 uses
  %i.ivi = getelementptr inbounds nuw [4 x i8], ptr %i.iuz, i64 %.sink5966
  %i.ivj = getelementptr inbounds [4 x i8], ptr %i.ivi, i64 %.sink5965 ; 2 uses
  %.not6806 = icmp eq ptr %.725481, null
  br i1 %.not6806, label %.thread5011, label %bb.rs

bb.rs:                                            ; preds = %bb.rr
  br i1 %11, label %.thread4990, label %bb.rt

.thread4990:                                      ; preds = %bb.rs
  %i.ivk = load float, ptr %.725481, align 4, !tbaa !69
  %i.ivl = fmul fast float %i.ivk, %8             ; 4 uses
  %i.ivm = insertelement <4 x float> poison, float %i.ivl, i64 0
  %i.ivn = shufflevector <4 x float> %i.ivm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ivo = insertelement <16 x float> poison, float %i.ivl, i64 0
  %i.ivp = shufflevector <16 x float> %i.ivo, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ivq = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ivl, i64 0
  br label %.thread5011

bb.rt:                                            ; preds = %bb.rs
  br i1 %or.cond37, label %bb.ru, label %bb.rv

bb.ru:                                            ; preds = %bb.rt
  %i.ivr = load ptr, ptr %0, align 8, !tbaa !25
  %i.ivs = getelementptr inbounds [4 x i8], ptr %i.ivr, i64 %i.gur
  %i.ivt = getelementptr inbounds nuw [4 x i8], ptr %i.ivs, i64 %indvars.iv5624 ; 2 uses
  %i.ivu = load <2 x float>, ptr %i.ivt, align 4, !tbaa !69
  %i.ivv = fmul fast <2 x float> %i.ivu, %i.gvq   ; 6 uses
  %i.ivw = extractelement <2 x float> %i.ivv, i64 0
  %i.ivx = shufflevector <2 x float> %i.ivv, <2 x float> poison, <4 x i32> zeroinitializer
  %i.ivy = shufflevector <2 x float> %i.ivv, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ivz = shufflevector <2 x float> %i.ivv, <2 x float> poison, <16 x i32> zeroinitializer
  %i.iwa = shufflevector <2 x float> %i.ivv, <2 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  br label %.thread5011

bb.rv:                                            ; preds = %bb.rt
  switch i32 %2, label %.thread5011 [
    i32 3, label %bb.rw
    i32 4, label %bb.rx
  ]

bb.rw:                                            ; preds = %bb.rv
  %i.iwb = load ptr, ptr %0, align 8, !tbaa !25
  %i.iwc = add nsw i64 %indvars.iv5624, %i.gur
  %i.iwd = mul i64 %i.t, %i.iwc
  %i.iwe = getelementptr inbounds nuw [4 x i8], ptr %i.iwb, i64 %i.iwd
  %i.iwf = getelementptr inbounds [4 x i8], ptr %i.iwe, i64 %i.gun
  br label %.thread5011

bb.rx:                                            ; preds = %bb.rv
  %i.iwg = load ptr, ptr %0, align 8, !tbaa !25
  %i.iwh = getelementptr inbounds [4 x i8], ptr %i.iwg, i64 %i.gun
  br label %.thread5011

.thread5011:                                      ; preds = %bb.rv, %bb.ru, %.thread4990, %bb.rw, %bb.rx, %bb.rr
  %.23881 = phi nsz <4 x float> [ zeroinitializer, %bb.rr ], [ zeroinitializer, %bb.rx ], [ zeroinitializer, %bb.rv ], [ zeroinitializer, %bb.rw ], [ %i.ivn, %.thread4990 ], [ %i.ivx, %bb.ru ] ; 2 uses
  %.13872 = phi nsz <4 x float> [ zeroinitializer, %bb.rr ], [ zeroinitializer, %bb.rx ], [ zeroinitializer, %bb.rv ], [ zeroinitializer, %bb.rw ], [ zeroinitializer, %.thread4990 ], [ %i.ivy, %bb.ru ] ; 2 uses
  %.26527 = phi nsz float [ 0.000000e+00, %bb.rr ], [ 0.000000e+00, %bb.rx ], [ 0.000000e+00, %bb.rv ], [ 0.000000e+00, %bb.rw ], [ %i.ivl, %.thread4990 ], [ %i.ivw, %bb.ru ] ; 2 uses
  %.26519 = phi nsz <16 x float> [ zeroinitializer, %bb.rr ], [ zeroinitializer, %bb.rx ], [ zeroinitializer, %bb.rv ], [ zeroinitializer, %bb.rw ], [ %i.ivp, %.thread4990 ], [ %i.ivz, %bb.ru ]
  %.16513 = phi nsz <16 x float> [ zeroinitializer, %bb.rr ], [ zeroinitializer, %bb.rx ], [ zeroinitializer, %bb.rv ], [ zeroinitializer, %bb.rw ], [ zeroinitializer, %.thread4990 ], [ %i.iwa, %bb.ru ]
  %.75 = phi ptr [ null, %bb.rr ], [ %i.iwh, %bb.rx ], [ %.725481, %bb.rv ], [ %i.iwf, %bb.rw ], [ %.725481, %.thread4990 ], [ %i.ivt, %bb.ru ] ; 2 uses
  %i.iwi = phi <2 x float> [ zeroinitializer, %bb.rr ], [ zeroinitializer, %bb.rx ], [ zeroinitializer, %bb.rv ], [ zeroinitializer, %bb.rw ], [ %i.ivq, %.thread4990 ], [ %i.ivv, %bb.ru ] ; 4 uses
  br i1 %i.gus, label %.lr.ph5425, label %.preheader5191

.preheader5191:                                   ; preds = %bb.su, %.thread5011
  %.16540.lcssa = phi ptr [ %.06539, %.thread5011 ], [ %.36542, %bb.su ] ; 2 uses
  %.16529.lcssa = phi ptr [ %i.ivj, %.thread5011 ], [ %.26530, %bb.su ] ; 2 uses
  %.06507.lcssa = phi i32 [ 0, %.thread5011 ], [ %i.jbx, %bb.su ] ; 3 uses
  %.196423.lcssa = phi ptr [ %.1864225480, %.thread5011 ], [ %i.iwo, %bb.su ] ; 2 uses
  %.76.lcssa = phi ptr [ %.75, %.thread5011 ], [ %.78, %bb.su ] ; 2 uses
  %i.iwj = or disjoint i32 %.06507.lcssa, 7
  %i.iwk = icmp slt i32 %i.iwj, %6
  br i1 %i.iwk, label %.lr.ph5438, label %.preheader5190

.lr.ph5425:                                       ; preds = %.thread5011, %bb.su
  %.765424 = phi ptr [ %.78, %bb.su ], [ %.75, %.thread5011 ] ; 9 uses
  %.1964235423 = phi ptr [ %i.iwo, %bb.su ], [ %.1864225480, %.thread5011 ] ; 3 uses
  %.065075422 = phi i32 [ %i.jbx, %bb.su ], [ 0, %.thread5011 ]
  %.265145421 = phi <16 x float> [ %.46516, %bb.su ], [ %.16513, %.thread5011 ] ; 6 uses
  %.365205420 = phi <16 x float> [ %.56522, %bb.su ], [ %.26519, %.thread5011 ] ; 7 uses
  %.165295418 = phi ptr [ %.26530, %bb.su ], [ %i.ivj, %.thread5011 ] ; 21 uses
  %.165405415 = phi ptr [ %.36542, %bb.su ], [ %.06539, %.thread5011 ] ; 34 uses
  %i.iwl = load <16 x float>, ptr %.1964235423, align 1, !tbaa !90 ; 2 uses
  %i.iwm = getelementptr inbounds nuw i8, ptr %.1964235423, i64 64
  %i.iwn = load <16 x float>, ptr %i.iwm, align 1, !tbaa !90 ; 2 uses
  %i.iwo = getelementptr inbounds nuw i8, ptr %.1964235423, i64 128 ; 2 uses
  %i.iwp = shufflevector <16 x float> %i.iwl, <16 x float> %i.iwn, <16 x i32> <i32 0, i32 16, i32 2, i32 18, i32 4, i32 20, i32 6, i32 22, i32 8, i32 24, i32 10, i32 26, i32 12, i32 28, i32 14, i32 30> ; 7 uses
  %i.iwq = shufflevector <16 x float> %i.iwl, <16 x float> %i.iwn, <16 x i32> <i32 1, i32 17, i32 3, i32 19, i32 5, i32 21, i32 7, i32 23, i32 9, i32 25, i32 11, i32 27, i32 13, i32 29, i32 15, i32 31>
  %i.iwr = shufflevector <16 x float> %i.iwq, <16 x float> poison, <16 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14> ; 7 uses
  %.not6819 = icmp eq ptr %.765424, null
  br i1 %.not6819, label %.thread5028, label %bb.ry

bb.ry:                                            ; preds = %.lr.ph5425
  br i1 %11, label %.thread5019, label %bb.rz

.thread5019:                                      ; preds = %bb.ry
  %i.iws = fadd fast <16 x float> %.365205420, %i.iwp
  %i.iwt = fadd fast <16 x float> %i.iwr, %.365205420
  br label %.thread5028

bb.rz:                                            ; preds = %bb.ry
  br i1 %or.cond37, label %bb.sa, label %bb.sb

bb.sa:                                            ; preds = %bb.rz
  %i.iwu = fadd fast <16 x float> %.365205420, %i.iwp
  %i.iwv = fadd fast <16 x float> %i.iwr, %.265145421
  br label %.thread5028

bb.sb:                                            ; preds = %bb.rz
  switch i32 %2, label %.thread5028 [
    i32 3, label %bb.sc
    i32 4, label %bb.sd
  ]

bb.sc:                                            ; preds = %bb.sb
  %i.iww = load <16 x float>, ptr %.765424, align 1, !tbaa !90 ; 3 uses
  %i.iwx = getelementptr inbounds nuw [4 x i8], ptr %.765424, i64 %i.t
  %i.iwy = load <16 x float>, ptr %i.iwx, align 1, !tbaa !90 ; 3 uses
  %i.iwz = fadd fast <16 x float> %i.iww, %i.iwp
  %i.ixa = fadd fast <16 x float> %i.iwy, %i.iwr
  %i.ixb = tail call fast nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.iww, <16 x float> nofpclass(nan inf) %i.guu, <16 x float> nofpclass(nan inf) %i.iwp)
  %i.ixc = tail call fast nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.iwy, <16 x float> nofpclass(nan inf) %i.guu, <16 x float> nofpclass(nan inf) %i.iwr)
  %.23867 = select nsz i1 %i.guv, <16 x float> %i.iwz, <16 x float> %i.ixb
  %storemerge = select i1 %i.guv, <16 x float> %i.ixa, <16 x float> %i.ixc
  %i.ixd = getelementptr inbounds nuw i8, ptr %.765424, i64 64
  br label %.thread5028

bb.sd:                                            ; preds = %bb.sb
  %i.ixe = load <16 x float>, ptr %.765424, align 1, !tbaa !90
  %i.ixf = fmul fast <16 x float> %i.ixe, %i.guu  ; 3 uses
  %i.ixg = fadd fast <16 x float> %i.ixf, %i.iwp
  %i.ixh = fadd fast <16 x float> %i.ixf, %i.iwr
  %i.ixi = getelementptr inbounds nuw i8, ptr %.765424, i64 64
  br label %.thread5028

.thread5028:                                      ; preds = %bb.sb, %bb.sa, %.thread5019, %bb.sc, %bb.sd, %.lr.ph5425
  %.43869 = phi nsz <16 x float> [ %i.iwp, %.lr.ph5425 ], [ %i.ixg, %bb.sd ], [ %i.iwp, %bb.sb ], [ %.23867, %bb.sc ], [ %i.iws, %.thread5019 ], [ %i.iwu, %bb.sa ] ; 2 uses
  %.33863 = phi nsz <16 x float> [ %i.iwr, %.lr.ph5425 ], [ %i.ixh, %bb.sd ], [ %i.iwr, %bb.sb ], [ %storemerge, %bb.sc ], [ %i.iwt, %.thread5019 ], [ %i.iwv, %bb.sa ] ; 2 uses
  %.56522 = phi nsz <16 x float> [ %.365205420, %.lr.ph5425 ], [ %i.ixf, %bb.sd ], [ %.365205420, %bb.sb ], [ %i.iww, %bb.sc ], [ %.365205420, %.thread5019 ], [ %.365205420, %bb.sa ]
  %.46516 = phi nsz <16 x float> [ %.265145421, %.lr.ph5425 ], [ %.265145421, %bb.sd ], [ %.265145421, %bb.sb ], [ %i.iwy, %bb.sc ], [ %.265145421, %.thread5019 ], [ %.265145421, %bb.sa ]
  %.78 = phi ptr [ null, %.lr.ph5425 ], [ %i.ixi, %bb.sd ], [ %.765424, %bb.sb ], [ %i.ixd, %bb.sc ], [ %.765424, %.thread5019 ], [ %.765424, %bb.sa ] ; 2 uses
  %i.ixj = fmul fast <16 x float> %.43869, %i.guy
  %i.ixk = fmul fast <16 x float> %.33863, %i.guy
  %.53870 = select nsz i1 %i.guw, <16 x float> %i.ixj, <16 x float> %.43869 ; 12 uses
  %.43864 = select nsz i1 %i.guw, <16 x float> %i.ixk, <16 x float> %.33863 ; 12 uses
  br i1 %i.guz, label %bb.se, label %bb.sm

bb.se:                                            ; preds = %.thread5028
  br i1 %.not6805, label %bb.sl, label %bb.sf

bb.sf:                                            ; preds = %bb.se
  br i1 %i.gvb, label %.split7365, label %bb.sk

.split7365:                                       ; preds = %bb.sf
  switch i32 %i.gvc, label %bb.sk [
    i32 4, label %bb.sg
    i32 3, label %bb.sh
    i32 2, label %bb.si
    i32 0, label %bb.sj
  ]

bb.sg:                                            ; preds = %.split7365
  store <16 x float> %.53870, ptr %.165295418, align 64, !tbaa !90
  %i.ixl = getelementptr inbounds nuw i8, ptr %.165295418, i64 64
  store <16 x float> %.43864, ptr %i.ixl, align 64, !tbaa !90
  switch i32 %i.b, label %bb.sk [
    i32 8, label %.thread5034
    i32 4, label %bb.si
    i32 1, label %bb.sj
  ]

.thread5034:                                      ; preds = %bb.sg
  %i.ixm = shufflevector <16 x float> %.53870, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  store <8 x float> %i.ixm, ptr %.165295418, align 64, !tbaa !90
  %i.ixn = getelementptr inbounds nuw i8, ptr %.165295418, i64 32
  %i.ixo = shufflevector <16 x float> %.43864, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  store <8 x float> %i.ixo, ptr %i.ixn, align 32, !tbaa !90
  %i.ixp = getelementptr inbounds nuw i8, ptr %.165295418, i64 %.idx6824 ; 2 uses
  %i.ixq = shufflevector <16 x float> %.53870, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.ixq, ptr %i.ixp, align 32, !tbaa !90
  %i.ixr = getelementptr inbounds nuw i8, ptr %i.ixp, i64 32
  %i.ixs = shufflevector <16 x float> %.43864, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.ixs, ptr %i.ixr, align 32, !tbaa !90
  br label %bb.sk

bb.sh:                                            ; preds = %.split7365
  %i.ixt = shufflevector <16 x float> %.53870, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  store <8 x float> %i.ixt, ptr %.165295418, align 32, !tbaa !90
  %i.ixu = getelementptr inbounds nuw i8, ptr %.165295418, i64 32
  %i.ixv = shufflevector <16 x float> %.43864, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  store <8 x float> %i.ixv, ptr %i.ixu, align 32, !tbaa !90
  %i.ixw = getelementptr inbounds nuw i8, ptr %.165295418, i64 %.idx6824 ; 2 uses
  %i.ixx = shufflevector <16 x float> %.53870, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.ixx, ptr %i.ixw, align 32, !tbaa !90
  %i.ixy = getelementptr inbounds nuw i8, ptr %i.ixw, i64 32
  %i.ixz = shufflevector <16 x float> %.43864, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.ixz, ptr %i.ixy, align 32, !tbaa !90
  switch i32 %i.b, label %bb.sk [
    i32 4, label %bb.si
    i32 1, label %bb.sj
  ]

bb.si:                                            ; preds = %.split7365, %bb.sg, %bb.sh
  %i.iya = shufflevector <16 x float> %.53870, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %i.iya, ptr %.165295418, align 16, !tbaa !90
  %i.iyb = getelementptr inbounds nuw i8, ptr %.165295418, i64 16
  %i.iyc = shufflevector <16 x float> %.43864, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %i.iyc, ptr %i.iyb, align 16, !tbaa !90
  %i.iyd = getelementptr inbounds nuw i8, ptr %.165295418, i64 %.idx6820 ; 2 uses
  %i.iye = shufflevector <16 x float> %.53870, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x float> %i.iye, ptr %i.iyd, align 16, !tbaa !90
  %i.iyf = getelementptr inbounds nuw i8, ptr %i.iyd, i64 16
  %i.iyg = shufflevector <16 x float> %.43864, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x float> %i.iyg, ptr %i.iyf, align 16, !tbaa !90
  %i.iyh = getelementptr inbounds nuw i8, ptr %.165295418, i64 %.idx6824 ; 2 uses
  %i.iyi = shufflevector <16 x float> %.53870, <16 x float> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  store <4 x float> %i.iyi, ptr %i.iyh, align 16, !tbaa !90
  %i.iyj = getelementptr inbounds nuw i8, ptr %i.iyh, i64 16
  %i.iyk = shufflevector <16 x float> %.43864, <16 x float> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  store <4 x float> %i.iyk, ptr %i.iyj, align 16, !tbaa !90
  %i.iyl = getelementptr inbounds nuw i8, ptr %.165295418, i64 %.idx6828 ; 2 uses
  %i.iym = shufflevector <16 x float> %.53870, <16 x float> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x float> %i.iym, ptr %i.iyl, align 16, !tbaa !90
  %i.iyn = getelementptr inbounds nuw i8, ptr %i.iyl, i64 16
  %i.iyo = shufflevector <16 x float> %.43864, <16 x float> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x float> %i.iyo, ptr %i.iyn, align 16, !tbaa !90
  br i1 %i.gvd, label %bb.sj, label %bb.sk

bb.sj:                                            ; preds = %.split7365, %bb.sg, %bb.sh, %bb.si
  tail call void @llvm.x86.avx512.mask.scatter.dps.512(ptr %.165295418, <16 x i1> splat (i1 true), <16 x i32> %i.gvh, <16 x float> %.53870, i32 4)
  %i.iyp = getelementptr inbounds nuw i8, ptr %.165295418, i64 4
  tail call void @llvm.x86.avx512.mask.scatter.dps.512(ptr nonnull %i.iyp, <16 x i1> splat (i1 true), <16 x i32> %i.gvh, <16 x float> %.43864, i32 4)
  br label %bb.sk

bb.sk:                                            ; preds = %.thread5034, %bb.sf, %.split7365, %bb.sg, %bb.sh, %bb.sj, %bb.si
  %i.iyq = getelementptr inbounds nuw i8, ptr %.165295418, i64 %.idx6829
  br label %bb.su

bb.sl:                                            ; preds = %bb.se
  store <16 x float> %.53870, ptr %.165295418, align 1, !tbaa !90
  %i.iyr = getelementptr inbounds nuw [4 x i8], ptr %.165295418, i64 %i.k
  store <16 x float> %.43864, ptr %i.iyr, align 1, !tbaa !90
  %i.iys = getelementptr inbounds nuw i8, ptr %.165295418, i64 64
  br label %bb.su

bb.sm:                                            ; preds = %.thread5028
  %i.iyt = bitcast <16 x float> %.53870 to <16 x i32>
  %i.iyu = lshr <16 x i32> %i.iyt, splat (i32 16) ; 2 uses
  %i.iyv = shufflevector <16 x i32> %i.iyu, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.iyw = shufflevector <16 x i32> %i.iyu, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.iyx = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.iyv, <8 x i32> %i.iyw)
  %i.iyy = bitcast <16 x i16> %i.iyx to <4 x i64>
  %i.iyz = shufflevector <4 x i64> %i.iyy, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 6 uses
  %i.iza = bitcast <16 x float> %.43864 to <16 x i32>
  %i.izb = lshr <16 x i32> %i.iza, splat (i32 16) ; 2 uses
  %i.izc = shufflevector <16 x i32> %i.izb, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.izd = shufflevector <16 x i32> %i.izb, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ize = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.izc, <8 x i32> %i.izd)
  %i.izf = bitcast <16 x i16> %i.ize to <4 x i64>
  %i.izg = shufflevector <4 x i64> %i.izf, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 6 uses
  br i1 %.not6805, label %bb.st, label %bb.sn

bb.sn:                                            ; preds = %bb.sm
  br i1 %i.gvb, label %.split7366, label %bb.ss

.split7366:                                       ; preds = %bb.sn
  switch i32 %i.gvc, label %bb.ss [
    i32 4, label %bb.so
    i32 3, label %bb.sp
    i32 2, label %bb.sq
    i32 0, label %bb.sr
  ]

bb.so:                                            ; preds = %.split7366
  store <4 x i64> %i.iyz, ptr %.165405415, align 1, !tbaa !90
  %i.izh = getelementptr inbounds nuw i8, ptr %.165405415, i64 32
  store <4 x i64> %i.izg, ptr %i.izh, align 1, !tbaa !90
  switch i32 %i.b, label %bb.ss [
    i32 8, label %.thread5036
    i32 4, label %bb.sq
    i32 1, label %bb.sr
  ]

.thread5036:                                      ; preds = %bb.so
  %i.izi = bitcast <4 x i64> %i.iyz to <8 x i32>  ; 2 uses
  %i.izj = shufflevector <8 x i32> %i.izi, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.izj, ptr %.165405415, align 1, !tbaa !90
  %i.izk = getelementptr inbounds nuw i8, ptr %.165405415, i64 16
  %i.izl = bitcast <4 x i64> %i.izg to <8 x i32>  ; 2 uses
  %i.izm = shufflevector <8 x i32> %i.izl, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.izm, ptr %i.izk, align 1, !tbaa !90
  %i.izn = getelementptr inbounds nuw i8, ptr %.165405415, i64 %.idx6820 ; 2 uses
  %i.izo = shufflevector <8 x i32> %i.izi, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %i.izo, ptr %i.izn, align 1, !tbaa !90
  %i.izp = getelementptr inbounds nuw i8, ptr %i.izn, i64 16
  %i.izq = shufflevector <8 x i32> %i.izl, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %i.izq, ptr %i.izp, align 1, !tbaa !90
  br label %bb.ss

bb.sp:                                            ; preds = %.split7366
  %i.izr = bitcast <4 x i64> %i.iyz to <8 x i32>  ; 2 uses
  %i.izs = shufflevector <8 x i32> %i.izr, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.izs, ptr %.165405415, align 1, !tbaa !90
  %i.izt = getelementptr inbounds nuw i8, ptr %.165405415, i64 16
  %i.izu = bitcast <4 x i64> %i.izg to <8 x i32>  ; 2 uses
  %i.izv = shufflevector <8 x i32> %i.izu, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.izv, ptr %i.izt, align 1, !tbaa !90
  %i.izw = getelementptr inbounds nuw i8, ptr %.165405415, i64 %.idx6820 ; 2 uses
  %i.izx = shufflevector <8 x i32> %i.izr, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %i.izx, ptr %i.izw, align 1, !tbaa !90
  %i.izy = getelementptr inbounds nuw i8, ptr %i.izw, i64 16
  %i.izz = shufflevector <8 x i32> %i.izu, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %i.izz, ptr %i.izy, align 1, !tbaa !90
  switch i32 %i.b, label %bb.ss [
    i32 4, label %bb.sq
    i32 1, label %bb.sr
  ]

bb.sq:                                            ; preds = %.split7366, %bb.so, %bb.sp
  %i.jaa = bitcast <4 x i64> %i.iyz to <8 x i32>  ; 2 uses
  %i.jab = shufflevector <8 x i32> %i.jaa, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.jac = bitcast <4 x i64> %i.izg to <8 x i32>  ; 2 uses
  %i.jad = shufflevector <8 x i32> %i.jac, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.jae = shufflevector <4 x i32> %i.jab, <4 x i32> %i.jad, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x i32> %i.jae, ptr %.165405415, align 1, !tbaa !90
  %i.jaf = getelementptr inbounds nuw i8, ptr %.165405415, i64 %.idx6821
  %i.jag = shufflevector <4 x i32> %i.jab, <4 x i32> %i.jad, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  store <4 x i32> %i.jag, ptr %i.jaf, align 1, !tbaa !90
  %i.jah = getelementptr inbounds nuw i8, ptr %.165405415, i64 %.idx6820
  %i.jai = shufflevector <8 x i32> %i.jaa, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.jaj = shufflevector <8 x i32> %i.jac, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.jak = shufflevector <4 x i32> %i.jai, <4 x i32> %i.jaj, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x i32> %i.jak, ptr %i.jah, align 1, !tbaa !90
  %i.jal = getelementptr inbounds nuw i8, ptr %.165405415, i64 %.idx6823
  %i.jam = shufflevector <4 x i32> %i.jai, <4 x i32> %i.jaj, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  store <4 x i32> %i.jam, ptr %i.jal, align 1, !tbaa !90
  br i1 %i.gvd, label %bb.sr, label %bb.ss

bb.sr:                                            ; preds = %.split7366, %bb.so, %bb.sp, %bb.sq
  %i.jan = bitcast <4 x i64> %i.iyz to <16 x i16> ; 16 uses
  %i.jao = bitcast <4 x i64> %i.izg to <16 x i16> ; 16 uses
  %i.jap = shufflevector <16 x i16> %i.jan, <16 x i16> %i.jao, <2 x i32> <i32 0, i32 16>
  store <2 x i16> %i.jap, ptr %.165405415, align 2, !tbaa !110
  %i.jaq = getelementptr inbounds nuw [2 x i8], ptr %.165405415, i64 %i.k
  %i.jar = shufflevector <16 x i16> %i.jan, <16 x i16> %i.jao, <2 x i32> <i32 1, i32 17>
  store <2 x i16> %i.jar, ptr %i.jaq, align 2, !tbaa !110
  %i.jas = getelementptr inbounds nuw i8, ptr %.165405415, i64 %.idx5157
  %i.jat = shufflevector <16 x i16> %i.jan, <16 x i16> %i.jao, <2 x i32> <i32 2, i32 18>
  store <2 x i16> %i.jat, ptr %i.jas, align 2, !tbaa !110
  %i.jau = getelementptr inbounds nuw i8, ptr %.165405415, i64 %.idx5158
  %i.jav = shufflevector <16 x i16> %i.jan, <16 x i16> %i.jao, <2 x i32> <i32 3, i32 19>
  store <2 x i16> %i.jav, ptr %i.jau, align 2, !tbaa !110
  %i.jaw = getelementptr inbounds nuw i8, ptr %.165405415, i64 %.idx6821
  %i.jax = shufflevector <16 x i16> %i.jan, <16 x i16> %i.jao, <2 x i32> <i32 4, i32 20>
  store <2 x i16> %i.jax, ptr %i.jaw, align 2, !tbaa !110
  %i.jay = getelementptr inbounds nuw i8, ptr %.165405415, i64 %.idx5160
  %i.jaz = shufflevector <16 x i16> %i.jan, <16 x i16> %i.jao, <2 x i32> <i32 5, i32 21>
  store <2 x i16> %i.jaz, ptr %i.jay, align 2, !tbaa !110
  %i.jba = getelementptr inbounds nuw i8, ptr %.165405415, i64 %.idx5161
  %i.jbb = shufflevector <16 x i16> %i.jan, <16 x i16> %i.jao, <2 x i32> <i32 6, i32 22>
  store <2 x i16> %i.jbb, ptr %i.jba, align 2, !tbaa !110
  %i.jbc = getelementptr inbounds nuw i8, ptr %.165405415, i64 %.idx5162
  %i.jbd = shufflevector <16 x i16> %i.jan, <16 x i16> %i.jao, <2 x i32> <i32 7, i32 23>
  store <2 x i16> %i.jbd, ptr %i.jbc, align 2, !tbaa !110
  %i.jbe = getelementptr inbounds nuw i8, ptr %.165405415, i64 %.idx6820
  %i.jbf = shufflevector <16 x i16> %i.jan, <16 x i16> %i.jao, <2 x i32> <i32 8, i32 24>
  store <2 x i16> %i.jbf, ptr %i.jbe, align 2, !tbaa !110
  %i.jbg = getelementptr inbounds nuw i8, ptr %.165405415, i64 %.idx5164
  %i.jbh = shufflevector <16 x i16> %i.jan, <16 x i16> %i.jao, <2 x i32> <i32 9, i32 25>
  store <2 x i16> %i.jbh, ptr %i.jbg, align 2, !tbaa !110
  %i.jbi = getelementptr inbounds nuw i8, ptr %.165405415, i64 %.idx5165
  %i.jbj = shufflevector <16 x i16> %i.jan, <16 x i16> %i.jao, <2 x i32> <i32 10, i32 26>
  store <2 x i16> %i.jbj, ptr %i.jbi, align 2, !tbaa !110
  %i.jbk = getelementptr inbounds nuw i8, ptr %.165405415, i64 %.idx5166
  %i.jbl = shufflevector <16 x i16> %i.jan, <16 x i16> %i.jao, <2 x i32> <i32 11, i32 27>
  store <2 x i16> %i.jbl, ptr %i.jbk, align 2, !tbaa !110
  %i.jbm = getelementptr inbounds nuw i8, ptr %.165405415, i64 %.idx6823
  %i.jbn = shufflevector <16 x i16> %i.jan, <16 x i16> %i.jao, <2 x i32> <i32 12, i32 28>
  store <2 x i16> %i.jbn, ptr %i.jbm, align 2, !tbaa !110
  %i.jbo = getelementptr inbounds nuw i8, ptr %.165405415, i64 %.idx5168
  %i.jbp = shufflevector <16 x i16> %i.jan, <16 x i16> %i.jao, <2 x i32> <i32 13, i32 29>
  store <2 x i16> %i.jbp, ptr %i.jbo, align 2, !tbaa !110
  %i.jbq = getelementptr inbounds nuw i8, ptr %.165405415, i64 %.idx5169
  %i.jbr = shufflevector <16 x i16> %i.jan, <16 x i16> %i.jao, <2 x i32> <i32 14, i32 30>
  store <2 x i16> %i.jbr, ptr %i.jbq, align 2, !tbaa !110
  %i.jbs = getelementptr inbounds nuw i8, ptr %.165405415, i64 %.idx5170
  %i.jbt = shufflevector <16 x i16> %i.jan, <16 x i16> %i.jao, <2 x i32> <i32 15, i32 31>
  store <2 x i16> %i.jbt, ptr %i.jbs, align 2, !tbaa !110
  br label %bb.ss

bb.ss:                                            ; preds = %.thread5036, %bb.sn, %.split7366, %bb.so, %bb.sp, %bb.sr, %bb.sq
  %i.jbu = getelementptr inbounds nuw i8, ptr %.165405415, i64 %.idx6824
  br label %bb.su

bb.st:                                            ; preds = %bb.sm
  store <4 x i64> %i.iyz, ptr %.165405415, align 1, !tbaa !90
  %i.jbv = getelementptr inbounds nuw [2 x i8], ptr %.165405415, i64 %i.k
  store <4 x i64> %i.izg, ptr %i.jbv, align 1, !tbaa !90
  %i.jbw = getelementptr inbounds nuw i8, ptr %.165405415, i64 32
  br label %bb.su

bb.su:                                            ; preds = %bb.ss, %bb.st, %bb.sk, %bb.sl
  %.36542 = phi ptr [ %.165405415, %bb.sk ], [ %.165405415, %bb.sl ], [ %i.jbu, %bb.ss ], [ %i.jbw, %bb.st ] ; 2 uses
  %.26530 = phi ptr [ %i.iyq, %bb.sk ], [ %i.iys, %bb.sl ], [ %.165295418, %bb.ss ], [ %.165295418, %bb.st ] ; 2 uses
  %i.jbx = add nuw nsw i32 %.065075422, 16        ; 3 uses
  %i.jby = or disjoint i32 %i.jbx, 15
  %i.jbz = icmp slt i32 %i.jby, %6
  br i1 %i.jbz, label %.lr.ph5425, label %.preheader5191, !llvm.loop !1599

.preheader5190:                                   ; preds = %bb.tu, %.preheader5191
  %.33882.lcssa = phi <4 x float> [ %.23881, %.preheader5191 ], [ %.53884, %bb.tu ]
  %.23873.lcssa = phi <4 x float> [ %.13872, %.preheader5191 ], [ %.43875, %bb.tu ]
  %.46543.lcssa = phi ptr [ %.16540.lcssa, %.preheader5191 ], [ %.66545, %bb.tu ] ; 2 uses
  %.36531.lcssa = phi ptr [ %.16529.lcssa, %.preheader5191 ], [ %.46532, %bb.tu ] ; 2 uses
  %.16508.lcssa = phi i32 [ %.06507.lcssa, %.preheader5191 ], [ %i.jgm, %bb.tu ] ; 3 uses
  %.206424.lcssa = phi ptr [ %.196423.lcssa, %.preheader5191 ], [ %i.jcj, %bb.tu ] ; 2 uses
  %.79.lcssa = phi ptr [ %.76.lcssa, %.preheader5191 ], [ %.81, %bb.tu ] ; 2 uses
  %i.jca = or disjoint i32 %.16508.lcssa, 3
  %i.jcb = icmp slt i32 %i.jca, %6
  br i1 %i.jcb, label %.lr.ph5453, label %.preheader5189

.lr.ph5438:                                       ; preds = %.preheader5191, %bb.tu
  %.795437 = phi ptr [ %.81, %bb.tu ], [ %.76.lcssa, %.preheader5191 ] ; 11 uses
  %.2064245436 = phi ptr [ %i.jcj, %bb.tu ], [ %.196423.lcssa, %.preheader5191 ] ; 5 uses
  %.165085435 = phi i32 [ %i.jgm, %bb.tu ], [ %.06507.lcssa, %.preheader5191 ]
  %.365315434 = phi ptr [ %.46532, %bb.tu ], [ %.16529.lcssa, %.preheader5191 ] ; 23 uses
  %.465435433 = phi ptr [ %.66545, %bb.tu ], [ %.16540.lcssa, %.preheader5191 ] ; 18 uses
  %.238735432 = phi <4 x float> [ %.43875, %bb.tu ], [ %.13872, %.preheader5191 ] ; 6 uses
  %.338825431 = phi <4 x float> [ %.53884, %bb.tu ], [ %.23881, %.preheader5191 ] ; 10 uses
  %i.jcc = load <4 x float>, ptr %.2064245436, align 16, !tbaa !90 ; 2 uses
  %i.jcd = getelementptr inbounds nuw i8, ptr %.2064245436, i64 16
  %i.jce = load <4 x float>, ptr %i.jcd, align 16, !tbaa !90 ; 2 uses
  %i.jcf = getelementptr inbounds nuw i8, ptr %.2064245436, i64 32
  %i.jcg = load <4 x float>, ptr %i.jcf, align 16, !tbaa !90 ; 2 uses
  %i.jch = getelementptr inbounds nuw i8, ptr %.2064245436, i64 48
  %i.jci = load <4 x float>, ptr %i.jch, align 16, !tbaa !90 ; 2 uses
  %i.jcj = getelementptr inbounds nuw i8, ptr %.2064245436, i64 64 ; 2 uses
  %i.jck = shufflevector <4 x float> %i.jcc, <4 x float> %i.jcg, <4 x i32> <i32 0, i32 5, i32 2, i32 7> ; 7 uses
  %i.jcl = shufflevector <4 x float> %i.jce, <4 x float> %i.jci, <4 x i32> <i32 0, i32 5, i32 2, i32 7> ; 7 uses
  %i.jcm = shufflevector <4 x float> %i.jcc, <4 x float> %i.jcg, <4 x i32> <i32 1, i32 4, i32 3, i32 6>
  %i.jcn = shufflevector <4 x float> %i.jce, <4 x float> %i.jci, <4 x i32> <i32 1, i32 4, i32 3, i32 6>
  %i.jco = shufflevector <4 x float> %i.jcm, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 7 uses
  %i.jcp = shufflevector <4 x float> %i.jcn, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 7 uses
  %.not6814 = icmp eq ptr %.795437, null
  br i1 %.not6814, label %.thread5051, label %bb.sv

bb.sv:                                            ; preds = %.lr.ph5438
  br i1 %11, label %.thread5038, label %bb.sw

.thread5038:                                      ; preds = %bb.sv
  %i.jcq = fadd fast <4 x float> %.338825431, %i.jck
  %i.jcr = fadd fast <4 x float> %.338825431, %i.jcl
  %i.jcs = fadd fast <4 x float> %i.jco, %.338825431
  %i.jct = fadd fast <4 x float> %i.jcp, %.338825431
  br label %.thread5051

bb.sw:                                            ; preds = %bb.sv
  br i1 %or.cond37, label %bb.sx, label %bb.sy

bb.sx:                                            ; preds = %bb.sw
  %i.jcu = fadd fast <4 x float> %.338825431, %i.jck
  %i.jcv = fadd fast <4 x float> %.338825431, %i.jcl
  %i.jcw = fadd fast <4 x float> %i.jco, %.238735432
  %i.jcx = fadd fast <4 x float> %i.jcp, %.238735432
  br label %.thread5051

bb.sy:                                            ; preds = %bb.sw
  switch i32 %2, label %.thread5051 [
    i32 3, label %bb.sz
    i32 4, label %bb.td
  ]

bb.sz:                                            ; preds = %bb.sy
  %i.jcy = load <4 x float>, ptr %.795437, align 1, !tbaa !90 ; 3 uses
  %i.jcz = getelementptr inbounds nuw i8, ptr %.795437, i64 16
  %i.jda = load <4 x float>, ptr %i.jcz, align 1, !tbaa !90 ; 3 uses
  %i.jdb = getelementptr inbounds nuw [4 x i8], ptr %.795437, i64 %i.t ; 2 uses
  %i.jdc = load <4 x float>, ptr %i.jdb, align 1, !tbaa !90 ; 2 uses
  %i.jdd = getelementptr inbounds nuw i8, ptr %i.jdb, i64 16
  %i.jde = load <4 x float>, ptr %i.jdd, align 1, !tbaa !90 ; 2 uses
  br i1 %i.guv, label %bb.ta, label %bb.tb

bb.ta:                                            ; preds = %bb.sz
  %i.jdf = fadd fast <4 x float> %i.jcy, %i.jck
  %i.jdg = fadd fast <4 x float> %i.jda, %i.jcl
  %i.jdh = fadd fast <4 x float> %i.jdc, %i.jco
  %i.jdi = fadd fast <4 x float> %i.jde, %i.jcp
  br label %bb.tc

bb.tb:                                            ; preds = %bb.sz
  %i.jdj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jcy, <4 x float> nofpclass(nan inf) %i.gvj, <4 x float> nofpclass(nan inf) %i.jck)
  %i.jdk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jda, <4 x float> nofpclass(nan inf) %i.gvj, <4 x float> nofpclass(nan inf) %i.jcl)
  %i.jdl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jdc, <4 x float> nofpclass(nan inf) %i.gvj, <4 x float> nofpclass(nan inf) %i.jco)
  %i.jdm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jde, <4 x float> nofpclass(nan inf) %i.gvj, <4 x float> nofpclass(nan inf) %i.jcp)
  br label %bb.tc

bb.tc:                                            ; preds = %bb.tb, %bb.ta
  %.23854 = phi nsz <4 x float> [ %i.jdf, %bb.ta ], [ %i.jdj, %bb.tb ]
  %.23848 = phi nsz <4 x float> [ %i.jdg, %bb.ta ], [ %i.jdk, %bb.tb ]
  %.23842 = phi nsz <4 x float> [ %i.jdh, %bb.ta ], [ %i.jdl, %bb.tb ]
  %.23836 = phi nsz <4 x float> [ %i.jdi, %bb.ta ], [ %i.jdm, %bb.tb ]
  %i.jdn = getelementptr inbounds nuw i8, ptr %.795437, i64 32
  br label %.thread5051

bb.td:                                            ; preds = %bb.sy
  %i.jdo = load <4 x float>, ptr %.795437, align 1, !tbaa !90
  %i.jdp = getelementptr inbounds nuw i8, ptr %.795437, i64 16
  %i.jdq = load <4 x float>, ptr %i.jdp, align 1, !tbaa !90
  %i.jdr = fmul fast <4 x float> %i.jdo, %i.gvj   ; 3 uses
  %i.jds = fmul fast <4 x float> %i.jdq, %i.gvj   ; 3 uses
  %i.jdt = fadd fast <4 x float> %i.jdr, %i.jck
  %i.jdu = fadd fast <4 x float> %i.jds, %i.jcl
  %i.jdv = fadd fast <4 x float> %i.jdr, %i.jco
  %i.jdw = fadd fast <4 x float> %i.jds, %i.jcp
  %i.jdx = getelementptr inbounds nuw i8, ptr %.795437, i64 32
  br label %.thread5051

.thread5051:                                      ; preds = %bb.sy, %bb.sx, %.thread5038, %bb.tc, %bb.td, %.lr.ph5438
  %.53884 = phi nsz <4 x float> [ %.338825431, %.lr.ph5438 ], [ %i.jdr, %bb.td ], [ %.338825431, %bb.sy ], [ %i.jcy, %bb.tc ], [ %.338825431, %.thread5038 ], [ %.338825431, %bb.sx ] ; 2 uses
  %.43875 = phi nsz <4 x float> [ %.238735432, %.lr.ph5438 ], [ %i.jds, %bb.td ], [ %.238735432, %bb.sy ], [ %i.jda, %bb.tc ], [ %.238735432, %.thread5038 ], [ %.238735432, %bb.sx ] ; 2 uses
  %.43856 = phi nsz <4 x float> [ %i.jck, %.lr.ph5438 ], [ %i.jdt, %bb.td ], [ %i.jck, %bb.sy ], [ %.23854, %bb.tc ], [ %i.jcq, %.thread5038 ], [ %i.jcu, %bb.sx ] ; 2 uses
  %.43850 = phi nsz <4 x float> [ %i.jcl, %.lr.ph5438 ], [ %i.jdu, %bb.td ], [ %i.jcl, %bb.sy ], [ %.23848, %bb.tc ], [ %i.jcr, %.thread5038 ], [ %i.jcv, %bb.sx ] ; 2 uses
  %.43844 = phi nsz <4 x float> [ %i.jco, %.lr.ph5438 ], [ %i.jdv, %bb.td ], [ %i.jco, %bb.sy ], [ %.23842, %bb.tc ], [ %i.jcs, %.thread5038 ], [ %i.jcw, %bb.sx ] ; 2 uses
  %.43838 = phi nsz <4 x float> [ %i.jcp, %.lr.ph5438 ], [ %i.jdw, %bb.td ], [ %i.jcp, %bb.sy ], [ %.23836, %bb.tc ], [ %i.jct, %.thread5038 ], [ %i.jcx, %bb.sx ] ; 2 uses
  %.81 = phi ptr [ null, %.lr.ph5438 ], [ %i.jdx, %bb.td ], [ %.795437, %bb.sy ], [ %i.jdn, %bb.tc ], [ %.795437, %.thread5038 ], [ %.795437, %bb.sx ] ; 2 uses
  br i1 %i.guw, label %bb.te, label %bb.tf

bb.te:                                            ; preds = %.thread5051
  %i.jdy = fmul fast <4 x float> %.43856, %i.gvl
  %i.jdz = fmul fast <4 x float> %.43850, %i.gvl
  %i.jea = fmul fast <4 x float> %.43844, %i.gvl
  %i.jeb = fmul fast <4 x float> %.43838, %i.gvl
  br label %bb.tf

bb.tf:                                            ; preds = %bb.te, %.thread5051
  %.53857 = phi nsz <4 x float> [ %i.jdy, %bb.te ], [ %.43856, %.thread5051 ] ; 8 uses
  %.53851 = phi nsz <4 x float> [ %i.jdz, %bb.te ], [ %.43850, %.thread5051 ] ; 8 uses
  %.53845 = phi nsz <4 x float> [ %i.jea, %bb.te ], [ %.43844, %.thread5051 ] ; 8 uses
  %.53839 = phi nsz <4 x float> [ %i.jeb, %bb.te ], [ %.43838, %.thread5051 ] ; 8 uses
  br i1 %i.guz, label %bb.tg, label %bb.tn

bb.tg:                                            ; preds = %bb.tf
  br i1 %.not6805, label %bb.tm, label %bb.th

bb.th:                                            ; preds = %bb.tg
  switch i32 %i.b, label %bb.tl [
    i32 8, label %bb.ti
    i32 4, label %bb.tj
    i32 1, label %bb.tk
  ]

bb.ti:                                            ; preds = %bb.th
  store <4 x float> %.53857, ptr %.365315434, align 1, !tbaa !90
  %i.jec = getelementptr inbounds nuw i8, ptr %.365315434, i64 16
  store <4 x float> %.53851, ptr %i.jec, align 1, !tbaa !90
  %i.jed = getelementptr inbounds nuw i8, ptr %.365315434, i64 32
  store <4 x float> %.53845, ptr %i.jed, align 1, !tbaa !90
  %i.jee = getelementptr inbounds nuw i8, ptr %.365315434, i64 48
  store <4 x float> %.53839, ptr %i.jee, align 1, !tbaa !90
  br label %bb.tl

bb.tj:                                            ; preds = %bb.th
  store <4 x float> %.53857, ptr %.365315434, align 1, !tbaa !90
  %i.jef = getelementptr inbounds nuw i8, ptr %.365315434, i64 16
  store <4 x float> %.53845, ptr %i.jef, align 1, !tbaa !90
  %i.jeg = getelementptr inbounds nuw i8, ptr %.365315434, i64 %.idx6820 ; 2 uses
  store <4 x float> %.53851, ptr %i.jeg, align 1, !tbaa !90
  %i.jeh = getelementptr inbounds nuw i8, ptr %i.jeg, i64 16
  store <4 x float> %.53839, ptr %i.jeh, align 1, !tbaa !90
  br label %bb.tl

bb.tk:                                            ; preds = %bb.th
  %.sroa.085.0.vec.extract = extractelement <4 x float> %.53857, i64 0
  store float %.sroa.085.0.vec.extract, ptr %.365315434, align 4, !tbaa !69
  %.sroa.12.32.vec.extract = extractelement <4 x float> %.53845, i64 0
  %i.jei = getelementptr inbounds nuw i8, ptr %.365315434, i64 4
  store float %.sroa.12.32.vec.extract, ptr %i.jei, align 4, !tbaa !69
  %i.jej = getelementptr inbounds nuw [4 x i8], ptr %.365315434, i64 %i.k
  %i.jek = shufflevector <4 x float> %.53857, <4 x float> %.53845, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.jek, ptr %i.jej, align 4, !tbaa !69
  %i.jel = getelementptr inbounds nuw i8, ptr %.365315434, i64 %.idx6821
  %i.jem = shufflevector <4 x float> %.53857, <4 x float> %.53845, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.jem, ptr %i.jel, align 4, !tbaa !69
  %i.jen = getelementptr inbounds nuw i8, ptr %.365315434, i64 %.idx5161
  %i.jeo = shufflevector <4 x float> %.53857, <4 x float> %.53845, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.jeo, ptr %i.jen, align 4, !tbaa !69
  %.sroa.786.16.vec.extract = extractelement <4 x float> %.53851, i64 0
  %i.jep = getelementptr inbounds nuw i8, ptr %.365315434, i64 %.idx6820 ; 2 uses
  store float %.sroa.786.16.vec.extract, ptr %i.jep, align 4, !tbaa !69
  %.sroa.17.48.vec.extract = extractelement <4 x float> %.53839, i64 0
  %i.jeq = getelementptr inbounds nuw i8, ptr %i.jep, i64 4
  store float %.sroa.17.48.vec.extract, ptr %i.jeq, align 4, !tbaa !69
  %i.jer = getelementptr inbounds nuw i8, ptr %.365315434, i64 %.idx5165
  %i.jes = shufflevector <4 x float> %.53851, <4 x float> %.53839, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.jes, ptr %i.jer, align 4, !tbaa !69
  %i.jet = getelementptr inbounds nuw i8, ptr %.365315434, i64 %.idx6823
  %i.jeu = shufflevector <4 x float> %.53851, <4 x float> %.53839, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.jeu, ptr %i.jet, align 4, !tbaa !69
  %i.jev = getelementptr inbounds nuw i8, ptr %.365315434, i64 %.idx5169
  %i.jew = shufflevector <4 x float> %.53851, <4 x float> %.53839, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.jew, ptr %i.jev, align 4, !tbaa !69
  br label %bb.tl

bb.tl:                                            ; preds = %bb.tj, %bb.ti, %bb.th, %bb.tk
  %i.jex = getelementptr inbounds nuw i8, ptr %.365315434, i64 %.idx6824
  br label %bb.tu

bb.tm:                                            ; preds = %bb.tg
  store <4 x float> %.53857, ptr %.365315434, align 1, !tbaa !90
  %i.jey = getelementptr inbounds nuw i8, ptr %.365315434, i64 16
  store <4 x float> %.53851, ptr %i.jey, align 1, !tbaa !90
  %i.jez = getelementptr inbounds nuw [4 x i8], ptr %.365315434, i64 %i.k ; 2 uses
  store <4 x float> %.53845, ptr %i.jez, align 1, !tbaa !90
  %i.jfa = getelementptr inbounds nuw i8, ptr %i.jez, i64 16
  store <4 x float> %.53839, ptr %i.jfa, align 1, !tbaa !90
  %i.jfb = getelementptr inbounds nuw i8, ptr %.365315434, i64 32
  br label %bb.tu

bb.tn:                                            ; preds = %bb.tf
  %i.jfc = bitcast <4 x float> %.53857 to <4 x i32>
  %i.jfd = lshr <4 x i32> %i.jfc, splat (i32 16)
  %i.jfe = bitcast <4 x float> %.53851 to <4 x i32>
  %i.jff = lshr <4 x i32> %i.jfe, splat (i32 16)
  %i.jfg = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.jfd, <4 x i32> %i.jff) ; 12 uses
  %i.jfh = bitcast <8 x i16> %i.jfg to <2 x i64>
  %i.jfi = bitcast <4 x float> %.53845 to <4 x i32>
  %i.jfj = lshr <4 x i32> %i.jfi, splat (i32 16)
  %i.jfk = bitcast <4 x float> %.53839 to <4 x i32>
  %i.jfl = lshr <4 x i32> %i.jfk, splat (i32 16)
  %i.jfm = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.jfj, <4 x i32> %i.jfl) ; 12 uses
  %i.jfn = bitcast <8 x i16> %i.jfm to <2 x i64>
  br i1 %.not6805, label %bb.tt, label %bb.to

bb.to:                                            ; preds = %bb.tn
  switch i32 %i.b, label %bb.ts [
    i32 8, label %bb.tp
    i32 4, label %bb.tq
    i32 1, label %bb.tr
  ]

bb.tp:                                            ; preds = %bb.to
  store <8 x i16> %i.jfg, ptr %.465435433, align 1, !tbaa !90
  %i.jfo = getelementptr inbounds nuw i8, ptr %.465435433, i64 16
  store <8 x i16> %i.jfm, ptr %i.jfo, align 1, !tbaa !90
  br label %bb.ts

bb.tq:                                            ; preds = %bb.to
  %i.jfp = shufflevector <2 x i64> %i.jfh, <2 x i64> %i.jfn, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %i.jfp, ptr %.465435433, align 1, !tbaa !90
  %i.jfq = getelementptr inbounds nuw i8, ptr %.465435433, i64 %.idx6821
  %i.jfr = bitcast <8 x i16> %i.jfg to <2 x double>
  %i.jfs = bitcast <8 x i16> %i.jfm to <2 x double>
  %i.jft = shufflevector <2 x double> %i.jfr, <2 x double> %i.jfs, <2 x i32> <i32 1, i32 3>
  store <2 x double> %i.jft, ptr %i.jfq, align 1, !tbaa !90
  br label %bb.ts

bb.tr:                                            ; preds = %bb.to
  %i.jfu = shufflevector <8 x i16> %i.jfg, <8 x i16> %i.jfm, <2 x i32> <i32 0, i32 8>
  store <2 x i16> %i.jfu, ptr %.465435433, align 2, !tbaa !110
  %i.jfv = getelementptr inbounds nuw [2 x i8], ptr %.465435433, i64 %i.k
  %i.jfw = shufflevector <8 x i16> %i.jfg, <8 x i16> %i.jfm, <2 x i32> <i32 1, i32 9>
  store <2 x i16> %i.jfw, ptr %i.jfv, align 2, !tbaa !110
  %i.jfx = getelementptr inbounds nuw i8, ptr %.465435433, i64 %.idx5157
  %i.jfy = shufflevector <8 x i16> %i.jfg, <8 x i16> %i.jfm, <2 x i32> <i32 2, i32 10>
  store <2 x i16> %i.jfy, ptr %i.jfx, align 2, !tbaa !110
  %i.jfz = getelementptr inbounds nuw i8, ptr %.465435433, i64 %.idx5158
  %i.jga = shufflevector <8 x i16> %i.jfg, <8 x i16> %i.jfm, <2 x i32> <i32 3, i32 11>
  store <2 x i16> %i.jga, ptr %i.jfz, align 2, !tbaa !110
  %i.jgb = getelementptr inbounds nuw i8, ptr %.465435433, i64 %.idx6821
  %i.jgc = shufflevector <8 x i16> %i.jfg, <8 x i16> %i.jfm, <2 x i32> <i32 4, i32 12>
  store <2 x i16> %i.jgc, ptr %i.jgb, align 2, !tbaa !110
  %i.jgd = getelementptr inbounds nuw i8, ptr %.465435433, i64 %.idx5160
  %i.jge = shufflevector <8 x i16> %i.jfg, <8 x i16> %i.jfm, <2 x i32> <i32 5, i32 13>
  store <2 x i16> %i.jge, ptr %i.jgd, align 2, !tbaa !110
  %i.jgf = getelementptr inbounds nuw i8, ptr %.465435433, i64 %.idx5161
  %i.jgg = shufflevector <8 x i16> %i.jfg, <8 x i16> %i.jfm, <2 x i32> <i32 6, i32 14>
  store <2 x i16> %i.jgg, ptr %i.jgf, align 2, !tbaa !110
  %i.jgh = getelementptr inbounds nuw i8, ptr %.465435433, i64 %.idx5162
  %i.jgi = shufflevector <8 x i16> %i.jfg, <8 x i16> %i.jfm, <2 x i32> <i32 7, i32 15>
  store <2 x i16> %i.jgi, ptr %i.jgh, align 2, !tbaa !110
  br label %bb.ts

bb.ts:                                            ; preds = %bb.tq, %bb.tp, %bb.to, %bb.tr
  %i.jgj = getelementptr inbounds nuw i8, ptr %.465435433, i64 %.idx6820
  br label %bb.tu

bb.tt:                                            ; preds = %bb.tn
  store <8 x i16> %i.jfg, ptr %.465435433, align 1, !tbaa !90
  %i.jgk = getelementptr inbounds nuw [2 x i8], ptr %.465435433, i64 %i.k
  store <8 x i16> %i.jfm, ptr %i.jgk, align 1, !tbaa !90
  %i.jgl = getelementptr inbounds nuw i8, ptr %.465435433, i64 16
  br label %bb.tu

bb.tu:                                            ; preds = %bb.ts, %bb.tt, %bb.tl, %bb.tm
  %.66545 = phi ptr [ %.465435433, %bb.tl ], [ %.465435433, %bb.tm ], [ %i.jgj, %bb.ts ], [ %i.jgl, %bb.tt ] ; 2 uses
  %.46532 = phi ptr [ %i.jex, %bb.tl ], [ %i.jfb, %bb.tm ], [ %.365315434, %bb.ts ], [ %.365315434, %bb.tt ] ; 2 uses
  %i.jgm = add nuw nsw i32 %.165085435, 8         ; 3 uses
  %i.jgn = or disjoint i32 %i.jgm, 7
  %i.jgo = icmp slt i32 %i.jgn, %6
  br i1 %i.jgo, label %.lr.ph5438, label %.preheader5190, !llvm.loop !1600

.preheader5189:                                   ; preds = %bb.un, %.preheader5190
  %.76546.lcssa = phi ptr [ %.46543.lcssa, %.preheader5190 ], [ %.96548, %bb.un ] ; 2 uses
  %.56533.lcssa = phi ptr [ %.36531.lcssa, %.preheader5190 ], [ %.66534, %bb.un ] ; 2 uses
  %.26509.lcssa = phi i32 [ %.16508.lcssa, %.preheader5190 ], [ %i.jjb, %bb.un ] ; 3 uses
  %.216425.lcssa = phi ptr [ %.206424.lcssa, %.preheader5190 ], [ %i.jha, %bb.un ] ; 2 uses
  %.82.lcssa = phi ptr [ %.79.lcssa, %.preheader5190 ], [ %.84, %bb.un ] ; 2 uses
  %i.jgp = or disjoint i32 %.26509.lcssa, 1
  %i.jgq = icmp slt i32 %i.jgp, %6
  br i1 %i.jgq, label %.lr.ph5464.preheader, label %.preheader5188

.lr.ph5464.preheader:                             ; preds = %.preheader5189
  %i.jgr = insertelement <2 x float> poison, float %.26527, i64 0
  %i.jgs = shufflevector <2 x float> %i.jgr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jgt = shufflevector <2 x float> %i.iwi, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.jgu = insertelement <2 x float> poison, float %.26527, i64 0
  %i.jgv = shufflevector <2 x float> %i.jgu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jgw = shufflevector <2 x float> %i.iwi, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph5464

.lr.ph5453:                                       ; preds = %.preheader5190, %bb.un
  %.825452 = phi ptr [ %.84, %bb.un ], [ %.79.lcssa, %.preheader5190 ] ; 9 uses
  %.2164255451 = phi ptr [ %i.jha, %bb.un ], [ %.206424.lcssa, %.preheader5190 ] ; 3 uses
  %.265095450 = phi i32 [ %i.jjb, %bb.un ], [ %.16508.lcssa, %.preheader5190 ]
  %.565335449 = phi ptr [ %.66534, %bb.un ], [ %.36531.lcssa, %.preheader5190 ] ; 13 uses
  %.765465448 = phi ptr [ %.96548, %bb.un ], [ %.46543.lcssa, %.preheader5190 ] ; 11 uses
  %.538765447 = phi <4 x float> [ %.73878, %bb.un ], [ %.23873.lcssa, %.preheader5190 ] ; 6 uses
  %.638855446 = phi <4 x float> [ %.83887, %bb.un ], [ %.33882.lcssa, %.preheader5190 ] ; 7 uses
  %i.jgx = load <4 x float>, ptr %.2164255451, align 16, !tbaa !90 ; 2 uses
  %i.jgy = getelementptr inbounds nuw i8, ptr %.2164255451, i64 16
  %i.jgz = load <4 x float>, ptr %i.jgy, align 16, !tbaa !90 ; 2 uses
  %i.jha = getelementptr inbounds nuw i8, ptr %.2164255451, i64 32 ; 2 uses
  %i.jhb = shufflevector <4 x float> %i.jgx, <4 x float> %i.jgz, <4 x i32> <i32 0, i32 4, i32 2, i32 6> ; 7 uses
  %i.jhc = shufflevector <4 x float> %i.jgx, <4 x float> %i.jgz, <4 x i32> <i32 1, i32 5, i32 3, i32 7>
  %i.jhd = shufflevector <4 x float> %i.jhc, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 7 uses
  %.not6811 = icmp eq ptr %.825452, null
  br i1 %.not6811, label %.thread5068, label %bb.tv

bb.tv:                                            ; preds = %.lr.ph5453
  br i1 %11, label %.thread5059, label %bb.tw

.thread5059:                                      ; preds = %bb.tv
  %i.jhe = fadd fast <4 x float> %.638855446, %i.jhb
  %i.jhf = fadd fast <4 x float> %i.jhd, %.638855446
  br label %.thread5068

bb.tw:                                            ; preds = %bb.tv
  br i1 %or.cond37, label %bb.tx, label %bb.ty

bb.tx:                                            ; preds = %bb.tw
  %i.jhg = fadd fast <4 x float> %.638855446, %i.jhb
  %i.jhh = fadd fast <4 x float> %i.jhd, %.538765447
  br label %.thread5068

bb.ty:                                            ; preds = %bb.tw
  switch i32 %2, label %.thread5068 [
    i32 3, label %bb.tz
    i32 4, label %bb.ua
  ]

bb.tz:                                            ; preds = %bb.ty
  %i.jhi = load <4 x float>, ptr %.825452, align 1, !tbaa !90 ; 3 uses
  %i.jhj = getelementptr inbounds nuw [4 x i8], ptr %.825452, i64 %i.t
  %i.jhk = load <4 x float>, ptr %i.jhj, align 1, !tbaa !90 ; 3 uses
  %i.jhl = fadd fast <4 x float> %i.jhi, %i.jhb
  %i.jhm = fadd fast <4 x float> %i.jhk, %i.jhd
  %i.jhn = tail call fast nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jhi, <4 x float> nofpclass(nan inf) %i.gvj, <4 x float> nofpclass(nan inf) %i.jhb)
  %i.jho = tail call fast nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jhk, <4 x float> nofpclass(nan inf) %i.gvj, <4 x float> nofpclass(nan inf) %i.jhd)
  %.23823 = select nsz i1 %i.guv, <4 x float> %i.jhl, <4 x float> %i.jhn
  %.23817 = select nsz i1 %i.guv, <4 x float> %i.jhm, <4 x float> %i.jho
  %i.jhp = getelementptr inbounds nuw i8, ptr %.825452, i64 16
  br label %.thread5068

bb.ua:                                            ; preds = %bb.ty
  %i.jhq = load <4 x float>, ptr %.825452, align 1, !tbaa !90
  %i.jhr = fmul fast <4 x float> %i.jhq, %i.gvj   ; 3 uses
  %i.jhs = fadd fast <4 x float> %i.jhr, %i.jhb
  %i.jht = fadd fast <4 x float> %i.jhr, %i.jhd
  %i.jhu = getelementptr inbounds nuw i8, ptr %.825452, i64 16
  br label %.thread5068

.thread5068:                                      ; preds = %bb.ty, %bb.tx, %.thread5059, %bb.tz, %bb.ua, %.lr.ph5453
  %.83887 = phi nsz <4 x float> [ %.638855446, %.lr.ph5453 ], [ %i.jhr, %bb.ua ], [ %.638855446, %bb.ty ], [ %i.jhi, %bb.tz ], [ %.638855446, %.thread5059 ], [ %.638855446, %bb.tx ]
  %.73878 = phi nsz <4 x float> [ %.538765447, %.lr.ph5453 ], [ %.538765447, %bb.ua ], [ %.538765447, %bb.ty ], [ %i.jhk, %bb.tz ], [ %.538765447, %.thread5059 ], [ %.538765447, %bb.tx ]
  %.43825 = phi nsz <4 x float> [ %i.jhb, %.lr.ph5453 ], [ %i.jhs, %bb.ua ], [ %i.jhb, %bb.ty ], [ %.23823, %bb.tz ], [ %i.jhe, %.thread5059 ], [ %i.jhg, %bb.tx ] ; 2 uses
  %.43819 = phi nsz <4 x float> [ %i.jhd, %.lr.ph5453 ], [ %i.jht, %bb.ua ], [ %i.jhd, %bb.ty ], [ %.23817, %bb.tz ], [ %i.jhf, %.thread5059 ], [ %i.jhh, %bb.tx ] ; 2 uses
  %.84 = phi ptr [ null, %.lr.ph5453 ], [ %i.jhu, %bb.ua ], [ %.825452, %bb.ty ], [ %i.jhp, %bb.tz ], [ %.825452, %.thread5059 ], [ %.825452, %bb.tx ] ; 2 uses
  %i.jhv = fmul fast <4 x float> %.43825, %i.gvl
  %i.jhw = fmul fast <4 x float> %.43819, %i.gvl
  %.53826 = select nsz i1 %i.guw, <4 x float> %i.jhv, <4 x float> %.43825 ; 7 uses
  %.53820 = select nsz i1 %i.guw, <4 x float> %i.jhw, <4 x float> %.43819 ; 7 uses
  br i1 %i.guz, label %bb.ub, label %bb.uh

bb.ub:                                            ; preds = %.thread5068
  br i1 %.not6805, label %bb.ug, label %bb.uc

bb.uc:                                            ; preds = %bb.ub
  switch i32 %i.b, label %bb.uf [
    i32 4, label %bb.ud
    i32 1, label %bb.ue
  ]

bb.ud:                                            ; preds = %bb.uc
  store <4 x float> %.53826, ptr %.565335449, align 1, !tbaa !90
  %i.jhx = getelementptr inbounds nuw i8, ptr %.565335449, i64 16
  store <4 x float> %.53820, ptr %i.jhx, align 1, !tbaa !90
  br label %bb.uf

bb.ue:                                            ; preds = %bb.uc
  %.sroa.055.0.vec.extract = extractelement <4 x float> %.53826, i64 0
  store float %.sroa.055.0.vec.extract, ptr %.565335449, align 4, !tbaa !69
  %.sroa.756.16.vec.extract = extractelement <4 x float> %.53820, i64 0
  %i.jhy = getelementptr inbounds nuw i8, ptr %.565335449, i64 4
  store float %.sroa.756.16.vec.extract, ptr %i.jhy, align 4, !tbaa !69
  %i.jhz = getelementptr inbounds nuw [4 x i8], ptr %.565335449, i64 %i.k
  %i.jia = shufflevector <4 x float> %.53826, <4 x float> %.53820, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.jia, ptr %i.jhz, align 4, !tbaa !69
  %i.jib = getelementptr inbounds nuw i8, ptr %.565335449, i64 %.idx6821
  %i.jic = shufflevector <4 x float> %.53826, <4 x float> %.53820, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.jic, ptr %i.jib, align 4, !tbaa !69
  %i.jid = getelementptr inbounds nuw i8, ptr %.565335449, i64 %.idx5161
  %i.jie = shufflevector <4 x float> %.53826, <4 x float> %.53820, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.jie, ptr %i.jid, align 4, !tbaa !69
  br label %bb.uf

bb.uf:                                            ; preds = %bb.ud, %bb.uc, %bb.ue
  %i.jif = getelementptr inbounds nuw i8, ptr %.565335449, i64 %.idx6820
  br label %bb.un

bb.ug:                                            ; preds = %bb.ub
  store <4 x float> %.53826, ptr %.565335449, align 1, !tbaa !90
  %i.jig = getelementptr inbounds nuw [4 x i8], ptr %.565335449, i64 %i.k
  store <4 x float> %.53820, ptr %i.jig, align 1, !tbaa !90
  %i.jih = getelementptr inbounds nuw i8, ptr %.565335449, i64 16
  br label %bb.un

bb.uh:                                            ; preds = %.thread5068
  %i.jii = bitcast <4 x float> %.53826 to <4 x i32>
  %i.jij = lshr <4 x i32> %i.jii, splat (i32 16)
  %i.jik = bitcast <4 x float> %.53820 to <4 x i32>
  %i.jil = lshr <4 x i32> %i.jik, splat (i32 16)
  %i.jim = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.jij, <4 x i32> %i.jil) ; 7 uses
  br i1 %.not6805, label %bb.um, label %bb.ui

bb.ui:                                            ; preds = %bb.uh
  switch i32 %i.b, label %bb.ul [
    i32 4, label %bb.uj
    i32 1, label %bb.uk
  ]

bb.uj:                                            ; preds = %bb.ui
  store <8 x i16> %i.jim, ptr %.765465448, align 1, !tbaa !90
  br label %bb.ul

bb.uk:                                            ; preds = %bb.ui
  %i.jin = shufflevector <8 x i16> %i.jim, <8 x i16> poison, <2 x i32> <i32 0, i32 4>
  store <2 x i16> %i.jin, ptr %.765465448, align 2, !tbaa !110
  %i.jio = getelementptr inbounds nuw [2 x i8], ptr %.765465448, i64 %i.k
  %i.jip = shufflevector <8 x i16> %i.jim, <8 x i16> poison, <2 x i32> <i32 1, i32 5>
  store <2 x i16> %i.jip, ptr %i.jio, align 2, !tbaa !110
  %i.jiq = getelementptr inbounds nuw i8, ptr %.765465448, i64 %.idx5157
  %i.jir = shufflevector <8 x i16> %i.jim, <8 x i16> poison, <2 x i32> <i32 2, i32 6>
  store <2 x i16> %i.jir, ptr %i.jiq, align 2, !tbaa !110
  %i.jis = getelementptr inbounds nuw i8, ptr %.765465448, i64 %.idx5158
  %i.jit = shufflevector <8 x i16> %i.jim, <8 x i16> poison, <2 x i32> <i32 3, i32 7>
  store <2 x i16> %i.jit, ptr %i.jis, align 2, !tbaa !110
  br label %bb.ul

bb.ul:                                            ; preds = %bb.uj, %bb.ui, %bb.uk
  %i.jiu = getelementptr inbounds nuw i8, ptr %.765465448, i64 %.idx6821
  br label %bb.un

bb.um:                                            ; preds = %bb.uh
  %i.jiv = bitcast <8 x i16> %i.jim to <2 x i64>
  %i.jiw = extractelement <2 x i64> %i.jiv, i64 0
  store i64 %i.jiw, ptr %.765465448, align 1, !tbaa !90
  %i.jix = getelementptr inbounds nuw [2 x i8], ptr %.765465448, i64 %i.k
  %i.jiy = bitcast <8 x i16> %i.jim to <2 x i64>
  %i.jiz = extractelement <2 x i64> %i.jiy, i64 1
  store i64 %i.jiz, ptr %i.jix, align 1, !tbaa !90
  %i.jja = getelementptr inbounds nuw i8, ptr %.765465448, i64 8
  br label %bb.un

bb.un:                                            ; preds = %bb.ul, %bb.um, %bb.uf, %bb.ug
  %.96548 = phi ptr [ %.765465448, %bb.uf ], [ %.765465448, %bb.ug ], [ %i.jiu, %bb.ul ], [ %i.jja, %bb.um ] ; 2 uses
  %.66534 = phi ptr [ %i.jif, %bb.uf ], [ %i.jih, %bb.ug ], [ %.565335449, %bb.ul ], [ %.565335449, %bb.um ] ; 2 uses
  %i.jjb = add nuw nsw i32 %.265095450, 4         ; 3 uses
  %i.jjc = or disjoint i32 %i.jjb, 3
  %i.jjd = icmp slt i32 %i.jjc, %6
  br i1 %i.jjd, label %.lr.ph5453, label %.preheader5189, !llvm.loop !1601

.preheader5188:                                   ; preds = %bb.va, %.preheader5189
  %.106549.lcssa = phi ptr [ %.76546.lcssa, %.preheader5189 ], [ %.126551, %bb.va ]
  %.76535.lcssa = phi ptr [ %.56533.lcssa, %.preheader5189 ], [ %.86536, %bb.va ]
  %.36510.lcssa = phi i32 [ %.26509.lcssa, %.preheader5189 ], [ %i.jlh, %bb.va ] ; 2 uses
  %.226426.lcssa = phi ptr [ %.216425.lcssa, %.preheader5189 ], [ %i.jjj, %bb.va ] ; 2 uses
  %.85.lcssa = phi ptr [ %.82.lcssa, %.preheader5189 ], [ %.87, %bb.va ] ; 2 uses
  %i.jje = icmp slt i32 %.36510.lcssa, %6
  br i1 %i.jje, label %.lr.ph5475.preheader, label %._crit_edge5476

.lr.ph5475.preheader:                             ; preds = %.preheader5188
  %i.jjf = shufflevector <2 x float> %i.iwi, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph5475

.lr.ph5464:                                       ; preds = %.lr.ph5464.preheader, %bb.va
  %.855463 = phi ptr [ %.87, %bb.va ], [ %.82.lcssa, %.lr.ph5464.preheader ] ; 9 uses
  %.2264265462 = phi ptr [ %i.jjj, %bb.va ], [ %.216425.lcssa, %.lr.ph5464.preheader ] ; 3 uses
  %.365105461 = phi i32 [ %i.jlh, %bb.va ], [ %.26509.lcssa, %.lr.ph5464.preheader ]
  %.765355460 = phi ptr [ %.86536, %bb.va ], [ %.56533.lcssa, %.lr.ph5464.preheader ] ; 7 uses
  %.1065495459 = phi ptr [ %.126551, %bb.va ], [ %.76546.lcssa, %.lr.ph5464.preheader ] ; 7 uses
  %i.jjg = load <2 x float>, ptr %.2264265462, align 4, !tbaa !69 ; 6 uses
  %i.jjh = getelementptr inbounds nuw i8, ptr %.2264265462, i64 8
  %i.jji = load <2 x float>, ptr %i.jjh, align 4, !tbaa !69 ; 6 uses
  %i.jjj = getelementptr inbounds nuw i8, ptr %.2264265462, i64 16 ; 2 uses
  %.not6808 = icmp eq ptr %.855463, null
  br i1 %.not6808, label %.thread5087, label %bb.uo

bb.uo:                                            ; preds = %.lr.ph5464
  br i1 %11, label %.thread5074, label %bb.up

.thread5074:                                      ; preds = %bb.uo
  %i.jjk = fadd fast <2 x float> %i.jjg, %i.jgv
  %i.jjl = fadd fast <2 x float> %i.jji, %i.jgw
  br label %.thread5087

bb.up:                                            ; preds = %bb.uo
  br i1 %or.cond37, label %bb.uq, label %bb.ur

bb.uq:                                            ; preds = %bb.up
  %i.jjm = fadd fast <2 x float> %i.jjg, %i.jgs
  %i.jjn = fadd fast <2 x float> %i.jji, %i.jgt
  br label %.thread5087

bb.ur:                                            ; preds = %bb.up
  switch i32 %2, label %.thread5087 [
    i32 3, label %bb.us
    i32 4, label %bb.ut
  ]

bb.us:                                            ; preds = %bb.ur
  %i.jjo = load <2 x float>, ptr %.855463, align 4, !tbaa !69
  %i.jjp = fmul fast <2 x float> %i.jjo, %i.gvq
  %i.jjq = fadd fast <2 x float> %i.jjp, %i.jjg
  %i.jjr = getelementptr inbounds nuw [4 x i8], ptr %.855463, i64 %i.t
  %i.jjs = load <2 x float>, ptr %i.jjr, align 4, !tbaa !69
  %i.jjt = fmul fast <2 x float> %i.jjs, %i.gvq
  %i.jju = fadd fast <2 x float> %i.jjt, %i.jji
  %i.jjv = getelementptr inbounds nuw i8, ptr %.855463, i64 8
  br label %.thread5087

bb.ut:                                            ; preds = %bb.ur
  %i.jjw = load <2 x float>, ptr %.855463, align 4, !tbaa !69
  %i.jjx = fmul fast <2 x float> %i.jjw, %i.gvq   ; 2 uses
  %i.jjy = fadd fast <2 x float> %i.jjx, %i.jjg
  %i.jjz = fadd fast <2 x float> %i.jjx, %i.jji
  %i.jka = getelementptr inbounds nuw i8, ptr %.855463, i64 8
  br label %.thread5087

.thread5087:                                      ; preds = %bb.ur, %bb.uq, %.thread5074, %bb.us, %bb.ut, %.lr.ph5464
  %.87 = phi ptr [ %i.jka, %bb.ut ], [ %.855463, %bb.ur ], [ null, %.lr.ph5464 ], [ %i.jjv, %bb.us ], [ %.855463, %.thread5074 ], [ %.855463, %bb.uq ] ; 2 uses
  %i.jkb = phi <2 x float> [ %i.jjz, %bb.ut ], [ %i.jji, %bb.ur ], [ %i.jji, %.lr.ph5464 ], [ %i.jju, %bb.us ], [ %i.jjl, %.thread5074 ], [ %i.jjn, %bb.uq ]
  %i.jkc = phi <2 x float> [ %i.jjy, %bb.ut ], [ %i.jjg, %bb.ur ], [ %i.jjg, %.lr.ph5464 ], [ %i.jjq, %bb.us ], [ %i.jjk, %.thread5074 ], [ %i.jjm, %bb.uq ]
  %i.jkd = fmul fast <2 x float> %i.jkc, %14      ; 4 uses
  %i.jke = fmul fast <2 x float> %i.jkb, %14      ; 5 uses
  br i1 %i.guz, label %bb.uu, label %bb.ux

bb.uu:                                            ; preds = %.thread5087
  %i.jkf = extractelement <2 x float> %i.jkd, i64 0
  store float %i.jkf, ptr %.765355460, align 4, !tbaa !69
  %i.jkg = getelementptr inbounds nuw i8, ptr %.765355460, i64 4 ; 2 uses
  %i.jkh = getelementptr inbounds nuw [4 x i8], ptr %.765355460, i64 %i.k ; 3 uses
  %i.jki = getelementptr i8, ptr %i.jkh, i64 4    ; 2 uses
  br i1 %.not6805, label %bb.uw, label %bb.uv

bb.uv:                                            ; preds = %bb.uu
  %i.jkj = extractelement <2 x float> %i.jke, i64 0
  store float %i.jkj, ptr %i.jkg, align 4, !tbaa !69
  %i.jkk = extractelement <2 x float> %i.jkd, i64 1
  store float %i.jkk, ptr %i.jkh, align 4, !tbaa !69
  %i.jkl = extractelement <2 x float> %i.jke, i64 1
  store float %i.jkl, ptr %i.jki, align 4, !tbaa !69
  %i.jkm = getelementptr inbounds nuw i8, ptr %.765355460, i64 %.idx6821
  br label %bb.va

bb.uw:                                            ; preds = %bb.uu
  %i.jkn = extractelement <2 x float> %i.jkd, i64 1
  store float %i.jkn, ptr %i.jkg, align 4, !tbaa !69
  %i.jko = extractelement <2 x float> %i.jke, i64 0
  store float %i.jko, ptr %i.jkh, align 4, !tbaa !69
  %i.jkp = extractelement <2 x float> %i.jke, i64 1
  store float %i.jkp, ptr %i.jki, align 4, !tbaa !69
  %i.jkq = getelementptr inbounds nuw i8, ptr %.765355460, i64 8
  br label %bb.va

bb.ux:                                            ; preds = %.thread5087
  %i.jkr = bitcast <2 x float> %i.jkd to <2 x i32>
  %i.jks = lshr <2 x i32> %i.jkr, splat (i32 16)  ; 2 uses
  %i.jkt = bitcast <2 x i32> %i.jks to <4 x i16>
  %i.jku = extractelement <4 x i16> %i.jkt, i64 0
  %i.jkv = bitcast <2 x i32> %i.jks to <4 x i16>
  %i.jkw = extractelement <4 x i16> %i.jkv, i64 2 ; 2 uses
  %i.jkx = bitcast <2 x float> %i.jke to <2 x i32>
  %i.jky = lshr <2 x i32> %i.jkx, splat (i32 16)
  %i.jkz = trunc nuw <2 x i32> %i.jky to <2 x i16> ; 3 uses
  store i16 %i.jku, ptr %.1065495459, align 2, !tbaa !110
  %i.jla = getelementptr inbounds nuw i8, ptr %.1065495459, i64 2 ; 2 uses
  %i.jlb = getelementptr inbounds nuw [2 x i8], ptr %.1065495459, i64 %i.k ; 3 uses
  br i1 %.not6805, label %bb.uz, label %bb.uy

bb.uy:                                            ; preds = %bb.ux
  %i.jlc = getelementptr i8, ptr %i.jlb, i64 2
  %i.jld = extractelement <2 x i16> %i.jkz, i64 0
  store i16 %i.jld, ptr %i.jla, align 2, !tbaa !110
  store i16 %i.jkw, ptr %i.jlb, align 2, !tbaa !110
  %i.jle = extractelement <2 x i16> %i.jkz, i64 1
  store i16 %i.jle, ptr %i.jlc, align 2, !tbaa !110
  %i.jlf = getelementptr inbounds nuw i8, ptr %.1065495459, i64 %.idx5157
  br label %bb.va

bb.uz:                                            ; preds = %bb.ux
  store i16 %i.jkw, ptr %i.jla, align 2, !tbaa !110
  store <2 x i16> %i.jkz, ptr %i.jlb, align 2, !tbaa !110
  %i.jlg = getelementptr inbounds nuw i8, ptr %.1065495459, i64 4
  br label %bb.va

bb.va:                                            ; preds = %bb.uy, %bb.uz, %bb.uv, %bb.uw
  %.126551 = phi ptr [ %.1065495459, %bb.uv ], [ %.1065495459, %bb.uw ], [ %i.jlf, %bb.uy ], [ %i.jlg, %bb.uz ] ; 2 uses
  %.86536 = phi ptr [ %i.jkm, %bb.uv ], [ %i.jkq, %bb.uw ], [ %.765355460, %bb.uy ], [ %.765355460, %bb.uz ] ; 2 uses
  %i.jlh = add nuw nsw i32 %.365105461, 2         ; 3 uses
  %i.jli = or disjoint i32 %i.jlh, 1
  %i.jlj = icmp slt i32 %i.jli, %6
  br i1 %i.jlj, label %.lr.ph5464, label %.preheader5188, !llvm.loop !1602

.lr.ph5475:                                       ; preds = %.lr.ph5475.preheader, %bb.vk
  %.885474 = phi ptr [ %.90, %bb.vk ], [ %.85.lcssa, %.lr.ph5475.preheader ] ; 7 uses
  %.2364275473 = phi ptr [ %i.jll, %bb.vk ], [ %.226426.lcssa, %.lr.ph5475.preheader ] ; 2 uses
  %.465115472 = phi i32 [ %i.jmx, %bb.vk ], [ %.36510.lcssa, %.lr.ph5475.preheader ]
  %.965375471 = phi ptr [ %.106538, %bb.vk ], [ %.76535.lcssa, %.lr.ph5475.preheader ] ; 7 uses
  %.1365525470 = phi ptr [ %.156554, %bb.vk ], [ %.106549.lcssa, %.lr.ph5475.preheader ] ; 7 uses
  %i.jlk = load <2 x float>, ptr %.2364275473, align 4, !tbaa !69 ; 4 uses
  %i.jll = getelementptr inbounds nuw i8, ptr %.2364275473, i64 8 ; 2 uses
  %.not6807 = icmp eq ptr %.885474, null
  br i1 %.not6807, label %bb.vd, label %bb.vb

bb.vb:                                            ; preds = %.lr.ph5475
  %i.jlm = fadd fast <2 x float> %i.jlk, %i.jjf
  %i.jln = select <2 x i1> %16, <2 x float> %i.jlm, <2 x float> %i.jlk ; 3 uses
  %i.jlo = fadd fast <2 x float> %i.jln, %i.iwi
  %i.jlp = select <2 x i1> %18, <2 x float> %i.jlo, <2 x float> %i.jln
  switch i32 %2, label %bb.vd [
    i32 3, label %.thread5093
    i32 4, label %bb.vc
  ]

.thread5093:                                      ; preds = %bb.vb
  %i.jlq = load float, ptr %.885474, align 4, !tbaa !69
  %i.jlr = getelementptr inbounds nuw [4 x i8], ptr %.885474, i64 %i.t
  %i.jls = load float, ptr %i.jlr, align 4, !tbaa !69
  %i.jlt = insertelement <2 x float> poison, float %i.jlq, i64 0
  %i.jlu = insertelement <2 x float> %i.jlt, float %i.jls, i64 1
  %i.jlv = fmul fast <2 x float> %i.jlu, %i.gvq
  %i.jlw = fadd fast <2 x float> %i.jlv, %i.jlk
  %i.jlx = getelementptr inbounds nuw i8, ptr %.885474, i64 4
  br label %bb.vd

bb.vc:                                            ; preds = %bb.vb
  %i.jly = load float, ptr %.885474, align 4, !tbaa !69
  %i.jlz = fmul fast float %i.jly, %8
  %i.jma = insertelement <2 x float> poison, float %i.jlz, i64 0
  %i.jmb = shufflevector <2 x float> %i.jma, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jmc = fadd fast <2 x float> %i.jmb, %i.jln
  %i.jmd = getelementptr inbounds nuw i8, ptr %.885474, i64 4
  br label %bb.vd

bb.vd:                                            ; preds = %bb.vb, %.thread5093, %bb.vc, %.lr.ph5475
  %.90 = phi ptr [ %i.jmd, %bb.vc ], [ %.885474, %bb.vb ], [ null, %.lr.ph5475 ], [ %i.jlx, %.thread5093 ] ; 2 uses
  %i.jme = phi <2 x float> [ %i.jmc, %bb.vc ], [ %i.jlp, %bb.vb ], [ %i.jlk, %.lr.ph5475 ], [ %i.jlw, %.thread5093 ]
  %i.jmf = fmul fast <2 x float> %i.jme, %i.gvs   ; 4 uses
  br i1 %i.guz, label %bb.ve, label %bb.vh

bb.ve:                                            ; preds = %bb.vd
  %i.jmg = extractelement <2 x float> %i.jmf, i64 0
  store float %i.jmg, ptr %.965375471, align 4, !tbaa !69
  br i1 %.not6805, label %bb.vg, label %bb.vf

bb.vf:                                            ; preds = %bb.ve
  %i.jmh = getelementptr inbounds nuw i8, ptr %.965375471, i64 4
  %i.jmi = extractelement <2 x float> %i.jmf, i64 1
  store float %i.jmi, ptr %i.jmh, align 4, !tbaa !69
  %i.jmj = getelementptr inbounds nuw [4 x i8], ptr %.965375471, i64 %i.k
  br label %bb.vk

bb.vg:                                            ; preds = %bb.ve
  %i.jmk = getelementptr inbounds nuw [4 x i8], ptr %.965375471, i64 %i.k
  %i.jml = extractelement <2 x float> %i.jmf, i64 1
  store float %i.jml, ptr %i.jmk, align 4, !tbaa !69
  %i.jmm = getelementptr inbounds nuw i8, ptr %.965375471, i64 4
  br label %bb.vk

bb.vh:                                            ; preds = %bb.vd
  %i.jmn = bitcast <2 x float> %i.jmf to <2 x i32>
  %i.jmo = lshr <2 x i32> %i.jmn, splat (i32 16)  ; 2 uses
  %i.jmp = bitcast <2 x i32> %i.jmo to <4 x i16>
  %i.jmq = extractelement <4 x i16> %i.jmp, i64 0
  %i.jmr = bitcast <2 x i32> %i.jmo to <4 x i16>
  %i.jms = extractelement <4 x i16> %i.jmr, i64 2 ; 2 uses
  store i16 %i.jmq, ptr %.1365525470, align 2, !tbaa !110
  br i1 %.not6805, label %bb.vj, label %bb.vi

bb.vi:                                            ; preds = %bb.vh
  %i.jmt = getelementptr inbounds nuw i8, ptr %.1365525470, i64 2
  store i16 %i.jms, ptr %i.jmt, align 2, !tbaa !110
  %i.jmu = getelementptr inbounds nuw [2 x i8], ptr %.1365525470, i64 %i.k
  br label %bb.vk

bb.vj:                                            ; preds = %bb.vh
  %i.jmv = getelementptr inbounds nuw [2 x i8], ptr %.1365525470, i64 %i.k
  store i16 %i.jms, ptr %i.jmv, align 2, !tbaa !110
  %i.jmw = getelementptr inbounds nuw i8, ptr %.1365525470, i64 2
  br label %bb.vk

bb.vk:                                            ; preds = %bb.vi, %bb.vj, %bb.vf, %bb.vg
  %.156554 = phi ptr [ %.1365525470, %bb.vf ], [ %.1365525470, %bb.vg ], [ %i.jmu, %bb.vi ], [ %i.jmw, %bb.vj ]
  %.106538 = phi ptr [ %i.jmj, %bb.vf ], [ %i.jmm, %bb.vg ], [ %.965375471, %bb.vi ], [ %.965375471, %bb.vj ]
  %i.jmx = add nuw nsw i32 %.465115472, 1         ; 2 uses
  %exitcond5623.not = icmp eq i32 %i.jmx, %6
  br i1 %exitcond5623.not, label %._crit_edge5476, label %.lr.ph5475, !llvm.loop !1603

._crit_edge5476:                                  ; preds = %bb.vk, %.preheader5188
  %.236427.lcssa = phi ptr [ %.226426.lcssa, %.preheader5188 ], [ %i.jll, %bb.vk ] ; 2 uses
  %.88.lcssa = phi ptr [ %.85.lcssa, %.preheader5188 ], [ %.90, %bb.vk ] ; 2 uses
  %indvars.iv.next5625 = add nuw nsw i64 %indvars.iv5624, 2 ; 3 uses
  %i.jmy = icmp slt i64 %indvars.iv.next5625, %invariant.op5929
  br i1 %i.jmy, label %bb.ro, label %.preheader5187.loopexit, !llvm.loop !1604

bb.vl:                                            ; preds = %.lr.ph5548, %._crit_edge5542
  %indvars.iv5628 = phi i64 [ %i.iur, %.lr.ph5548 ], [ %indvars.iv.next5629, %._crit_edge5542 ] ; 5 uses
  %.915547 = phi ptr [ %.72.lcssa, %.lr.ph5548 ], [ %.103.lcssa, %._crit_edge5542 ] ; 4 uses
  %.2464285546 = phi ptr [ %.186422.lcssa, %.lr.ph5548 ], [ %.296433.lcssa, %._crit_edge5542 ] ; 2 uses
  %i.jmz = load ptr, ptr %1, align 8, !tbaa !25   ; 3 uses
  br i1 %.not, label %bb.vn, label %bb.vm

bb.vm:                                            ; preds = %bb.vl
  %i.jna = getelementptr inbounds nuw [2 x i8], ptr %i.jmz, i64 %i.itt
  %i.jnb = add nsw i64 %indvars.iv5628, %i.ity
  %i.jnc = mul nsw i64 %i.jnb, %i.ius             ; 2 uses
  %i.jnd = getelementptr inbounds [2 x i8], ptr %i.jna, i64 %i.jnc
  br label %bb.vo

bb.vn:                                            ; preds = %bb.vl
  %i.jne = add nsw i64 %indvars.iv5628, %i.ity
  %i.jnf = mul i64 %i.k, %i.jne                   ; 2 uses
  %i.jng = getelementptr inbounds nuw [2 x i8], ptr %i.jmz, i64 %i.jnf
  %i.jnh = getelementptr inbounds [2 x i8], ptr %i.jng, i64 %i.itv
  br label %bb.vo

bb.vo:                                            ; preds = %bb.vn, %bb.vm
  %.sink5969 = phi i64 [ %i.jnf, %bb.vn ], [ %i.itt, %bb.vm ]
  %.sink5968 = phi i64 [ %i.itv, %bb.vn ], [ %i.jnc, %bb.vm ]
  %.06354 = phi ptr [ %i.jnh, %bb.vn ], [ %i.jnd, %bb.vm ] ; 2 uses
  %i.jni = getelementptr inbounds nuw [4 x i8], ptr %i.jmz, i64 %.sink5969
  %i.jnj = getelementptr inbounds [4 x i8], ptr %i.jni, i64 %.sink5968 ; 2 uses
  %.not6738 = icmp eq ptr %.915547, null
  br i1 %.not6738, label %.thread5112, label %bb.vp

bb.vp:                                            ; preds = %bb.vo
  br i1 %i.itw, label %.thread5097, label %bb.vq

.thread5097:                                      ; preds = %bb.vp
  %i.jnk = load float, ptr %.915547, align 4, !tbaa !69
  %i.jnl = fmul fast float %i.jnk, %8             ; 3 uses
  %i.jnm = insertelement <4 x float> poison, float %i.jnl, i64 0
  %i.jnn = shufflevector <4 x float> %i.jnm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jno = insertelement <16 x float> poison, float %i.jnl, i64 0
  %i.jnp = shufflevector <16 x float> %i.jno, <16 x float> poison, <16 x i32> zeroinitializer
  br label %.thread5112

bb.vq:                                            ; preds = %bb.vp
  br i1 %or.cond49, label %bb.vr, label %bb.vs

bb.vr:                                            ; preds = %bb.vq
  %i.jnq = load ptr, ptr %0, align 8, !tbaa !25
  %i.jnr = getelementptr inbounds [4 x i8], ptr %i.jnq, i64 %i.ity
  %i.jns = getelementptr inbounds nuw [4 x i8], ptr %i.jnr, i64 %indvars.iv5628 ; 2 uses
  %i.jnt = load float, ptr %i.jns, align 4, !tbaa !69
  %i.jnu = fmul fast float %i.jnt, %8             ; 3 uses
  %i.jnv = insertelement <4 x float> poison, float %i.jnu, i64 0
  %i.jnw = shufflevector <4 x float> %i.jnv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jnx = insertelement <16 x float> poison, float %i.jnu, i64 0
  %i.jny = shufflevector <16 x float> %i.jnx, <16 x float> poison, <16 x i32> zeroinitializer
  br label %.thread5112

bb.vs:                                            ; preds = %bb.vq
  switch i32 %2, label %.thread5112 [
    i32 3, label %bb.vt
    i32 4, label %bb.vu
  ]

bb.vt:                                            ; preds = %bb.vs
  %i.jnz = load ptr, ptr %0, align 8, !tbaa !25
  %i.joa = add nsw i64 %indvars.iv5628, %i.ity
  %i.job = mul i64 %i.t, %i.joa
  %i.joc = getelementptr inbounds nuw [4 x i8], ptr %i.jnz, i64 %i.job
  %i.jod = getelementptr inbounds [4 x i8], ptr %i.joc, i64 %i.its
  br label %.thread5112

bb.vu:                                            ; preds = %bb.vs
  %i.joe = load ptr, ptr %0, align 8, !tbaa !25
  %i.jof = getelementptr inbounds [4 x i8], ptr %i.joe, i64 %i.its
  br label %.thread5112

.thread5112:                                      ; preds = %bb.vs, %bb.vr, %.thread5097, %bb.vt, %bb.vu, %bb.vo
  %.23780 = phi nsz <4 x float> [ zeroinitializer, %bb.vo ], [ zeroinitializer, %bb.vu ], [ zeroinitializer, %bb.vs ], [ zeroinitializer, %bb.vt ], [ %i.jnn, %.thread5097 ], [ %i.jnw, %bb.vr ] ; 2 uses
  %.94 = phi ptr [ null, %bb.vo ], [ %i.jof, %bb.vu ], [ %.915547, %bb.vs ], [ %i.jod, %bb.vt ], [ %.915547, %.thread5097 ], [ %i.jns, %bb.vr ] ; 2 uses
  %.26348 = phi nsz float [ 0.000000e+00, %bb.vo ], [ 0.000000e+00, %bb.vu ], [ 0.000000e+00, %bb.vs ], [ 0.000000e+00, %bb.vt ], [ %i.jnl, %.thread5097 ], [ %i.jnu, %bb.vr ] ; 2 uses
  %.26343 = phi nsz <16 x float> [ zeroinitializer, %bb.vo ], [ zeroinitializer, %bb.vu ], [ zeroinitializer, %bb.vs ], [ zeroinitializer, %bb.vt ], [ %i.jnp, %.thread5097 ], [ %i.jny, %bb.vr ]
  br i1 %i.itz, label %.lr.ph5494, label %.preheader5186

.preheader5186:                                   ; preds = %bb.wt, %.thread5112
  %.256429.lcssa = phi ptr [ %.2464285546, %.thread5112 ], [ %i.joj, %bb.wt ] ; 2 uses
  %.95.lcssa = phi ptr [ %.94, %.thread5112 ], [ %.96, %bb.wt ] ; 2 uses
  %.16355.lcssa = phi ptr [ %.06354, %.thread5112 ], [ %.36357, %bb.wt ] ; 2 uses
  %.16350.lcssa = phi ptr [ %i.jnj, %.thread5112 ], [ %.26351, %bb.wt ] ; 2 uses
  %.06339.lcssa = phi i32 [ 0, %.thread5112 ], [ %i.iuq, %bb.wt ] ; 3 uses
  %i.jog = or disjoint i32 %.06339.lcssa, 7
  %i.joh = icmp slt i32 %i.jog, %6
  br i1 %i.joh, label %.lr.ph5506, label %.preheader5185

.lr.ph5494:                                       ; preds = %.thread5112, %bb.wt
  %.063395493 = phi i32 [ %i.jro, %bb.wt ], [ 0, %.thread5112 ]
  %.363445492 = phi <16 x float> [ %.46345, %bb.wt ], [ %.26343, %.thread5112 ] ; 4 uses
  %.163505490 = phi ptr [ %.26351, %bb.wt ], [ %i.jnj, %.thread5112 ] ; 31 uses
  %.163555488 = phi ptr [ %.36357, %bb.wt ], [ %.06354, %.thread5112 ] ; 31 uses
  %.955487 = phi ptr [ %.96, %bb.wt ], [ %.94, %.thread5112 ] ; 5 uses
  %.2564295486 = phi ptr [ %i.joj, %bb.wt ], [ %.2464285546, %.thread5112 ] ; 2 uses
  %i.joi = load <16 x float>, ptr %.2564295486, align 1, !tbaa !90 ; 4 uses
  %i.joj = getelementptr inbounds nuw i8, ptr %.2564295486, i64 64 ; 2 uses
  %.not6766 = icmp eq ptr %.955487, null
  br i1 %.not6766, label %bb.vy, label %bb.vv

bb.vv:                                            ; preds = %.lr.ph5494
  br i1 %or.cond53, label %.thread5117, label %bb.vw

.thread5117:                                      ; preds = %bb.vv
  %i.jok = fadd fast <16 x float> %i.joi, %.363445492
  br label %bb.vy

bb.vw:                                            ; preds = %bb.vv
  br i1 %or.cond55, label %bb.vx, label %bb.vy
end_hunk_1
