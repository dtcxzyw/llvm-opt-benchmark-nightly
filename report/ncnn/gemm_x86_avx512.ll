Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gemm_x86_avx512?download=true
inline.NumInlined: 238
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 209
loop-unroll.NumUnrolled: 213
begin_hunk_0_@_ZN4ncnnL31unpack_output_tile_fp32_to_bf16ERKNS_3MatES2_RS0_iiiiiffii:bb.a
  %.sroa.0221.12.vec.extract = extractelement <4 x float> %.43915, i64 3
  %i.ith = getelementptr inbounds nuw i8, ptr %.1366605400, i64 %.idx6892
  store float %.sroa.0221.12.vec.extract, ptr %i.ith, align 4, !tbaa !69
  %i.iti = getelementptr inbounds nuw i8, ptr %.1366605400, i64 4
  br label %bb.rn

bb.rg:                                            ; preds = %.thread4982
  %i.itj = bitcast <4 x float> %.43915 to <4 x i32>
  %i.itk = lshr <4 x i32> %i.itj, splat (i32 16)
  %i.itl = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.itk, <4 x i32> poison) ; 6 uses
  %i.itm = bitcast <8 x i16> %i.itl to <2 x i64>  ; 2 uses
  br i1 %.not6830, label %bb.rl, label %bb.rh

bb.rh:                                            ; preds = %bb.rg
  switch i32 %i.b, label %bb.rk [
    i32 4, label %bb.ri
    i32 1, label %bb.rj
  ]

bb.ri:                                            ; preds = %bb.rh
  %i.itn = shufflevector <8 x i16> %i.itl, <8 x i16> poison, <13 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 3>
  tail call void @llvm.masked.store.v13i16.p0(<13 x i16> %i.itn, ptr align 2 %.1766435401, <13 x i1> <i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true>), !tbaa !110
  br label %bb.rk

bb.rj:                                            ; preds = %bb.rh
  %i.ito = extractelement <2 x i64> %i.itm, i64 0
  store i64 %i.ito, ptr %.1766435401, align 1, !tbaa !90
  br label %bb.rk

bb.rk:                                            ; preds = %bb.ri, %bb.rh, %bb.rj
  %i.itp = getelementptr inbounds nuw [2 x i8], ptr %.1766435401, i64 %i.k
  br label %bb.rn

bb.rl:                                            ; preds = %bb.rg
  switch i32 %i.b, label %bb.rn [
    i32 4, label %.thread4988
    i32 1, label %bb.rm
  ]

.thread4988:                                      ; preds = %bb.rl
  %i.itq = extractelement <2 x i64> %i.itm, i64 0
  store i64 %i.itq, ptr %.1766435401, align 1, !tbaa !90
  %i.itr = getelementptr inbounds nuw i8, ptr %.1766435401, i64 8
  br label %bb.rn

bb.rm:                                            ; preds = %bb.rl
  %.sroa.0213.0.extract.trunc = extractelement <8 x i16> %i.itl, i64 0
  %.sroa.4214.0.extract.trunc = extractelement <8 x i16> %i.itl, i64 1
  %.sroa.5215.0.extract.trunc = extractelement <8 x i16> %i.itl, i64 2
  %.sroa.6216.0.extract.trunc = extractelement <8 x i16> %i.itl, i64 3
  store i16 %.sroa.0213.0.extract.trunc, ptr %.1766435401, align 2, !tbaa !110
  %i.its = getelementptr inbounds nuw [2 x i8], ptr %.1766435401, i64 %i.k
  store i16 %.sroa.4214.0.extract.trunc, ptr %i.its, align 2, !tbaa !110
  %i.itt = getelementptr inbounds nuw i8, ptr %.1766435401, i64 %.idx6888
  store i16 %.sroa.5215.0.extract.trunc, ptr %i.itt, align 2, !tbaa !110
  %i.itu = getelementptr inbounds nuw i8, ptr %.1766435401, i64 %.idx6889
  store i16 %.sroa.6216.0.extract.trunc, ptr %i.itu, align 2, !tbaa !110
  %i.itv = getelementptr inbounds nuw i8, ptr %.1766435401, i64 2
  br label %bb.rn

bb.rn:                                            ; preds = %bb.rl, %bb.re, %.thread4988, %.thread4986, %bb.rk, %bb.rm, %bb.rd, %bb.rf
  %.156662 = phi ptr [ %i.itd, %bb.rd ], [ %i.iti, %bb.rf ], [ %.1366605400, %bb.re ], [ %.1366605400, %bb.rl ], [ %.1366605400, %bb.rm ], [ %.1366605400, %bb.rk ], [ %i.ite, %.thread4986 ], [ %.1366605400, %.thread4988 ]
  %.206646 = phi ptr [ %.1766435401, %bb.rd ], [ %.1766435401, %bb.rf ], [ %.1766435401, %bb.re ], [ %.1766435401, %bb.rl ], [ %i.itv, %bb.rm ], [ %i.itp, %bb.rk ], [ %.1766435401, %.thread4986 ], [ %i.itr, %.thread4988 ]
  %i.itw = add nuw nsw i32 %.466745399, 1         ; 2 uses
  %exitcond5619.not = icmp eq i32 %i.itw, %6
  br i1 %exitcond5619.not, label %._crit_edge5405, label %.lr.ph5404, !llvm.loop !1597

._crit_edge5405:                                  ; preds = %bb.rn, %.preheader5194
  %.176421.lcssa = phi ptr [ %.166420.lcssa, %.preheader5194 ], [ %i.ise, %bb.rn ] ; 2 uses
  %.68.lcssa = phi ptr [ %.64.lcssa, %.preheader5194 ], [ %.71, %bb.rn ] ; 2 uses
  %indvars.iv.next5621 = add nuw nsw i64 %indvars.iv5620, 4 ; 3 uses
  %i.itx = icmp slt i64 %indvars.iv.next5621, %invariant.op5928
  br i1 %i.itx, label %bb.lq, label %.preheader5192.loopexit, !llvm.loop !1598

.preheader5187.loopexit:                          ; preds = %._crit_edge5476
  %i.ity = trunc nsw i64 %indvars.iv.next5625 to i32
  br label %.preheader5187

.preheader5187:                                   ; preds = %.preheader5187.loopexit, %.preheader5192
  %.36437.lcssa = phi i32 [ %.26436.lcssa, %.preheader5192 ], [ %i.ity, %.preheader5187.loopexit ] ; 2 uses
  %.186422.lcssa = phi ptr [ %.126416.lcssa, %.preheader5192 ], [ %.236427.lcssa, %.preheader5187.loopexit ]
  %.72.lcssa = phi ptr [ %.48.lcssa, %.preheader5192 ], [ %.88.lcssa, %.preheader5187.loopexit ]
  %i.itz = icmp slt i32 %.36437.lcssa, %4
  br i1 %i.itz, label %.lr.ph5548, label %._crit_edge5549

.lr.ph5548:                                       ; preds = %.preheader5187
  %.not = icmp eq i32 %9, 0                       ; 11 uses
  %i.iua = sext i32 %5 to i64                     ; 3 uses
  %i.iub = mul i64 %i.k, %i.iua                   ; 2 uses
  %i.iuc = mul nsw i32 %i.b, %5
  %i.iud = sext i32 %i.iuc to i64                 ; 2 uses
  %i.iue = icmp eq i32 %2, 0
  %i.iuf = add i32 %2, -1
  %or.cond49 = icmp ult i32 %i.iuf, 2
  %i.iug = sext i32 %3 to i64                     ; 4 uses
  %i.iuh = icmp sgt i32 %6, 15
  %or.cond53 = icmp ult i32 %2, 3                 ; 5 uses
  %i.iui = add i32 %2, -3
  %or.cond55 = icmp ult i32 %i.iui, 2             ; 5 uses
  %i.iuj = insertelement <16 x float> poison, float %8, i64 0
  %i.iuk = shufflevector <16 x float> %i.iuj, <16 x float> poison, <16 x i32> zeroinitializer
  %i.iul = fcmp fast une float %7, 1.000000e+00   ; 3 uses
  %i.ium = insertelement <16 x float> poison, float %7, i64 0
  %i.iun = shufflevector <16 x float> %i.ium, <16 x float> poison, <16 x i32> zeroinitializer
  %i.iuo = icmp eq i32 %10, 1                     ; 5 uses
  %i.iup = icmp eq i64 %i.k, 1                    ; 6 uses
  %i.iuq = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.b)
  %i.iur = icmp eq i32 %i.iuq, 1                  ; 2 uses
  %i.ius = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.b, i1 true) ; 2 uses
  %.idx6767 = shl i64 %i.k, 4                     ; 10 uses
  %.idx6768 = shl i64 %i.k, 3                     ; 9 uses
  %.idx6770 = mul i64 %i.k, 24                    ; 4 uses
  %i.iut = icmp eq i32 %i.b, 1                    ; 2 uses
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
  %i.iuu = insertelement <4 x float> poison, float %8, i64 0
  %i.iuv = shufflevector <4 x float> %i.iuu, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.iuw = insertelement <4 x float> poison, float %7, i64 0
  %i.iux = shufflevector <4 x float> %i.iuw, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.iuy = and i32 %6, -16
  %i.iuz = sext i32 %.36437.lcssa to i64
  %i.iva = sext i32 %i.b to i64
  %wide.trip.count = sext i32 %4 to i64
  %i.ivb = insertelement <2 x i1> poison, i1 %or.cond53, i64 0
  %i.ivc = shufflevector <2 x i1> %i.ivb, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ivd = insertelement <2 x float> poison, float %8, i64 0
  %i.ive = shufflevector <2 x float> %i.ivd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ivf = insertelement <2 x float> poison, float %7, i64 0
  %i.ivg = shufflevector <2 x float> %i.ivf, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.vl

bb.ro:                                            ; preds = %.lr.ph5482, %._crit_edge5476
  %indvars.iv5624 = phi i64 [ %i.gvo, %.lr.ph5482 ], [ %indvars.iv.next5625, %._crit_edge5476 ] ; 5 uses
  %.725481 = phi ptr [ %.48.lcssa, %.lr.ph5482 ], [ %.88.lcssa, %._crit_edge5476 ] ; 4 uses
  %.1864225480 = phi ptr [ %.126416.lcssa, %.lr.ph5482 ], [ %.236427.lcssa, %._crit_edge5476 ] ; 2 uses
  %i.ivh = load ptr, ptr %1, align 8, !tbaa !25   ; 3 uses
  br i1 %.not6805, label %bb.rq, label %bb.rp

bb.rp:                                            ; preds = %bb.ro
  %i.ivi = getelementptr inbounds nuw [2 x i8], ptr %i.ivh, i64 %i.guo
  %i.ivj = add nsw i64 %indvars.iv5624, %i.gut
  %i.ivk = mul nsw i64 %i.ivj, %i.gvq             ; 2 uses
  %i.ivl = getelementptr inbounds [2 x i8], ptr %i.ivi, i64 %i.ivk
  br label %bb.rr

bb.rq:                                            ; preds = %bb.ro
  %i.ivm = add nsw i64 %indvars.iv5624, %i.gut
  %i.ivn = mul i64 %i.k, %i.ivm                   ; 2 uses
  %i.ivo = getelementptr inbounds nuw [2 x i8], ptr %i.ivh, i64 %i.ivn
  %i.ivp = getelementptr inbounds [2 x i8], ptr %i.ivo, i64 %i.guq
  br label %bb.rr

bb.rr:                                            ; preds = %bb.rq, %bb.rp
  %.sink5966 = phi i64 [ %i.ivn, %bb.rq ], [ %i.guo, %bb.rp ]
  %.sink5965 = phi i64 [ %i.guq, %bb.rq ], [ %i.ivk, %bb.rp ]
  %.06539 = phi ptr [ %i.ivp, %bb.rq ], [ %i.ivl, %bb.rp ] ; 2 uses
  %i.ivq = getelementptr inbounds nuw [4 x i8], ptr %i.ivh, i64 %.sink5966
  %i.ivr = getelementptr inbounds [4 x i8], ptr %i.ivq, i64 %.sink5965 ; 2 uses
  %.not6806 = icmp eq ptr %.725481, null
  br i1 %.not6806, label %.thread5011, label %bb.rs

bb.rs:                                            ; preds = %bb.rr
  br i1 %i.gur, label %.thread4990, label %bb.rt

.thread4990:                                      ; preds = %bb.rs
  %i.ivs = load float, ptr %.725481, align 4, !tbaa !69
  %i.ivt = fmul fast float %i.ivs, %8             ; 4 uses
  %i.ivu = insertelement <4 x float> poison, float %i.ivt, i64 0
  %i.ivv = shufflevector <4 x float> %i.ivu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ivw = insertelement <16 x float> poison, float %i.ivt, i64 0
  %i.ivx = shufflevector <16 x float> %i.ivw, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ivy = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ivt, i64 0
  br label %.thread5011

bb.rt:                                            ; preds = %bb.rs
  br i1 %or.cond37, label %bb.ru, label %bb.rv

bb.ru:                                            ; preds = %bb.rt
  %i.ivz = load ptr, ptr %0, align 8, !tbaa !25
  %i.iwa = getelementptr inbounds [4 x i8], ptr %i.ivz, i64 %i.gut
  %i.iwb = getelementptr inbounds nuw [4 x i8], ptr %i.iwa, i64 %indvars.iv5624 ; 2 uses
  %i.iwc = load <2 x float>, ptr %i.iwb, align 4, !tbaa !69
  %i.iwd = fmul fast <2 x float> %i.iwc, %i.gvs   ; 7 uses
  %11 = extractelement <2 x float> %i.iwd, i64 1
  %i.iwe = extractelement <2 x float> %i.iwd, i64 0
  %i.iwf = shufflevector <2 x float> %i.iwd, <2 x float> poison, <4 x i32> zeroinitializer
  %i.iwg = shufflevector <2 x float> %i.iwd, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.iwh = shufflevector <2 x float> %i.iwd, <2 x float> poison, <16 x i32> zeroinitializer
  %i.iwi = shufflevector <2 x float> %i.iwd, <2 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  br label %.thread5011

bb.rv:                                            ; preds = %bb.rt
  switch i32 %2, label %.thread5011 [
    i32 3, label %bb.rw
    i32 4, label %bb.rx
  ]

bb.rw:                                            ; preds = %bb.rv
  %i.iwj = load ptr, ptr %0, align 8, !tbaa !25
  %i.iwk = add nsw i64 %indvars.iv5624, %i.gut
  %i.iwl = mul i64 %i.t, %i.iwk
  %i.iwm = getelementptr inbounds nuw [4 x i8], ptr %i.iwj, i64 %i.iwl
  %i.iwn = getelementptr inbounds [4 x i8], ptr %i.iwm, i64 %i.gun
  br label %.thread5011

bb.rx:                                            ; preds = %bb.rv
  %i.iwo = load ptr, ptr %0, align 8, !tbaa !25
  %i.iwp = getelementptr inbounds [4 x i8], ptr %i.iwo, i64 %i.gun
  br label %.thread5011

.thread5011:                                      ; preds = %bb.rv, %bb.ru, %.thread4990, %bb.rw, %bb.rx, %bb.rr
  %.23881 = phi nsz <4 x float> [ zeroinitializer, %bb.rr ], [ zeroinitializer, %bb.rx ], [ zeroinitializer, %bb.rv ], [ zeroinitializer, %bb.rw ], [ %i.ivv, %.thread4990 ], [ %i.iwf, %bb.ru ] ; 2 uses
  %.13872 = phi nsz <4 x float> [ zeroinitializer, %bb.rr ], [ zeroinitializer, %bb.rx ], [ zeroinitializer, %bb.rv ], [ zeroinitializer, %bb.rw ], [ zeroinitializer, %.thread4990 ], [ %i.iwg, %bb.ru ] ; 2 uses
  %.26527 = phi nsz float [ 0.000000e+00, %bb.rr ], [ 0.000000e+00, %bb.rx ], [ 0.000000e+00, %bb.rv ], [ 0.000000e+00, %bb.rw ], [ %i.ivt, %.thread4990 ], [ %i.iwe, %bb.ru ] ; 2 uses
  %.16524 = phi nsz float [ 0.000000e+00, %bb.rr ], [ 0.000000e+00, %bb.rx ], [ 0.000000e+00, %bb.rv ], [ 0.000000e+00, %bb.rw ], [ 0.000000e+00, %.thread4990 ], [ %11, %bb.ru ]
  %.26519 = phi nsz <16 x float> [ zeroinitializer, %bb.rr ], [ zeroinitializer, %bb.rx ], [ zeroinitializer, %bb.rv ], [ zeroinitializer, %bb.rw ], [ %i.ivx, %.thread4990 ], [ %i.iwh, %bb.ru ]
  %.16513 = phi nsz <16 x float> [ zeroinitializer, %bb.rr ], [ zeroinitializer, %bb.rx ], [ zeroinitializer, %bb.rv ], [ zeroinitializer, %bb.rw ], [ zeroinitializer, %.thread4990 ], [ %i.iwi, %bb.ru ]
  %.75 = phi ptr [ null, %bb.rr ], [ %i.iwp, %bb.rx ], [ %.725481, %bb.rv ], [ %i.iwn, %bb.rw ], [ %.725481, %.thread4990 ], [ %i.iwb, %bb.ru ] ; 2 uses
  %i.iwq = phi <2 x float> [ zeroinitializer, %bb.rr ], [ zeroinitializer, %bb.rx ], [ zeroinitializer, %bb.rv ], [ zeroinitializer, %bb.rw ], [ %i.ivy, %.thread4990 ], [ %i.iwd, %bb.ru ] ; 2 uses
  br i1 %i.guu, label %.lr.ph5425, label %.preheader5191

.preheader5191:                                   ; preds = %bb.su, %.thread5011
  %.16540.lcssa = phi ptr [ %.06539, %.thread5011 ], [ %.36542, %bb.su ] ; 2 uses
  %.16529.lcssa = phi ptr [ %i.ivr, %.thread5011 ], [ %.26530, %bb.su ] ; 2 uses
  %.06507.lcssa = phi i32 [ 0, %.thread5011 ], [ %i.jcf, %bb.su ] ; 3 uses
  %.196423.lcssa = phi ptr [ %.1864225480, %.thread5011 ], [ %i.iww, %bb.su ] ; 2 uses
  %.76.lcssa = phi ptr [ %.75, %.thread5011 ], [ %.78, %bb.su ] ; 2 uses
  %i.iwr = or disjoint i32 %.06507.lcssa, 7
  %i.iws = icmp slt i32 %i.iwr, %6
  br i1 %i.iws, label %.lr.ph5438, label %.preheader5190

.lr.ph5425:                                       ; preds = %.thread5011, %bb.su
  %.765424 = phi ptr [ %.78, %bb.su ], [ %.75, %.thread5011 ] ; 9 uses
  %.1964235423 = phi ptr [ %i.iww, %bb.su ], [ %.1864225480, %.thread5011 ] ; 3 uses
  %.065075422 = phi i32 [ %i.jcf, %bb.su ], [ 0, %.thread5011 ]
  %.265145421 = phi <16 x float> [ %.46516, %bb.su ], [ %.16513, %.thread5011 ] ; 6 uses
  %.365205420 = phi <16 x float> [ %.56522, %bb.su ], [ %.26519, %.thread5011 ] ; 7 uses
  %.165295418 = phi ptr [ %.26530, %bb.su ], [ %i.ivr, %.thread5011 ] ; 21 uses
  %.165405415 = phi ptr [ %.36542, %bb.su ], [ %.06539, %.thread5011 ] ; 34 uses
  %i.iwt = load <16 x float>, ptr %.1964235423, align 1, !tbaa !90 ; 2 uses
  %i.iwu = getelementptr inbounds nuw i8, ptr %.1964235423, i64 64
  %i.iwv = load <16 x float>, ptr %i.iwu, align 1, !tbaa !90 ; 2 uses
  %i.iww = getelementptr inbounds nuw i8, ptr %.1964235423, i64 128 ; 2 uses
  %i.iwx = shufflevector <16 x float> %i.iwt, <16 x float> %i.iwv, <16 x i32> <i32 0, i32 16, i32 2, i32 18, i32 4, i32 20, i32 6, i32 22, i32 8, i32 24, i32 10, i32 26, i32 12, i32 28, i32 14, i32 30> ; 7 uses
  %i.iwy = shufflevector <16 x float> %i.iwt, <16 x float> %i.iwv, <16 x i32> <i32 1, i32 17, i32 3, i32 19, i32 5, i32 21, i32 7, i32 23, i32 9, i32 25, i32 11, i32 27, i32 13, i32 29, i32 15, i32 31>
  %i.iwz = shufflevector <16 x float> %i.iwy, <16 x float> poison, <16 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14> ; 7 uses
  %.not6819 = icmp eq ptr %.765424, null
  br i1 %.not6819, label %.thread5028, label %bb.ry

bb.ry:                                            ; preds = %.lr.ph5425
  br i1 %i.gur, label %.thread5019, label %bb.rz

.thread5019:                                      ; preds = %bb.ry
  %i.ixa = fadd fast <16 x float> %.365205420, %i.iwx
  %i.ixb = fadd fast <16 x float> %i.iwz, %.365205420
  br label %.thread5028

bb.rz:                                            ; preds = %bb.ry
  br i1 %or.cond37, label %bb.sa, label %bb.sb

bb.sa:                                            ; preds = %bb.rz
  %i.ixc = fadd fast <16 x float> %.365205420, %i.iwx
  %i.ixd = fadd fast <16 x float> %i.iwz, %.265145421
  br label %.thread5028

bb.sb:                                            ; preds = %bb.rz
  switch i32 %2, label %.thread5028 [
    i32 3, label %bb.sc
    i32 4, label %bb.sd
  ]

bb.sc:                                            ; preds = %bb.sb
  %i.ixe = load <16 x float>, ptr %.765424, align 1, !tbaa !90 ; 3 uses
  %i.ixf = getelementptr inbounds nuw [4 x i8], ptr %.765424, i64 %i.t
  %i.ixg = load <16 x float>, ptr %i.ixf, align 1, !tbaa !90 ; 3 uses
  %i.ixh = fadd fast <16 x float> %i.ixe, %i.iwx
  %i.ixi = fadd fast <16 x float> %i.ixg, %i.iwz
  %i.ixj = tail call fast nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ixe, <16 x float> nofpclass(nan inf) %i.guw, <16 x float> nofpclass(nan inf) %i.iwx)
  %i.ixk = tail call fast nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ixg, <16 x float> nofpclass(nan inf) %i.guw, <16 x float> nofpclass(nan inf) %i.iwz)
  %.23867 = select nsz i1 %i.gux, <16 x float> %i.ixh, <16 x float> %i.ixj
  %storemerge = select i1 %i.gux, <16 x float> %i.ixi, <16 x float> %i.ixk
  %i.ixl = getelementptr inbounds nuw i8, ptr %.765424, i64 64
  br label %.thread5028

bb.sd:                                            ; preds = %bb.sb
  %i.ixm = load <16 x float>, ptr %.765424, align 1, !tbaa !90
  %i.ixn = fmul fast <16 x float> %i.ixm, %i.guw  ; 3 uses
  %i.ixo = fadd fast <16 x float> %i.ixn, %i.iwx
  %i.ixp = fadd fast <16 x float> %i.ixn, %i.iwz
  %i.ixq = getelementptr inbounds nuw i8, ptr %.765424, i64 64
  br label %.thread5028

.thread5028:                                      ; preds = %bb.sb, %bb.sa, %.thread5019, %bb.sc, %bb.sd, %.lr.ph5425
  %.43869 = phi nsz <16 x float> [ %i.iwx, %.lr.ph5425 ], [ %i.ixo, %bb.sd ], [ %i.iwx, %bb.sb ], [ %.23867, %bb.sc ], [ %i.ixa, %.thread5019 ], [ %i.ixc, %bb.sa ] ; 2 uses
  %.33863 = phi nsz <16 x float> [ %i.iwz, %.lr.ph5425 ], [ %i.ixp, %bb.sd ], [ %i.iwz, %bb.sb ], [ %storemerge, %bb.sc ], [ %i.ixb, %.thread5019 ], [ %i.ixd, %bb.sa ] ; 2 uses
  %.56522 = phi nsz <16 x float> [ %.365205420, %.lr.ph5425 ], [ %i.ixn, %bb.sd ], [ %.365205420, %bb.sb ], [ %i.ixe, %bb.sc ], [ %.365205420, %.thread5019 ], [ %.365205420, %bb.sa ]
  %.46516 = phi nsz <16 x float> [ %.265145421, %.lr.ph5425 ], [ %.265145421, %bb.sd ], [ %.265145421, %bb.sb ], [ %i.ixg, %bb.sc ], [ %.265145421, %.thread5019 ], [ %.265145421, %bb.sa ]
  %.78 = phi ptr [ null, %.lr.ph5425 ], [ %i.ixq, %bb.sd ], [ %.765424, %bb.sb ], [ %i.ixl, %bb.sc ], [ %.765424, %.thread5019 ], [ %.765424, %bb.sa ] ; 2 uses
  %i.ixr = fmul fast <16 x float> %.43869, %i.gva
  %i.ixs = fmul fast <16 x float> %.33863, %i.gva
  %.53870 = select nsz i1 %i.guy, <16 x float> %i.ixr, <16 x float> %.43869 ; 12 uses
  %.43864 = select nsz i1 %i.guy, <16 x float> %i.ixs, <16 x float> %.33863 ; 12 uses
  br i1 %i.gvb, label %bb.se, label %bb.sm

bb.se:                                            ; preds = %.thread5028
  br i1 %.not6805, label %bb.sl, label %bb.sf

bb.sf:                                            ; preds = %bb.se
  br i1 %i.gvd, label %.split7365, label %bb.sk

.split7365:                                       ; preds = %bb.sf
  switch i32 %i.gve, label %bb.sk [
    i32 4, label %bb.sg
    i32 3, label %bb.sh
    i32 2, label %bb.si
    i32 0, label %bb.sj
  ]

bb.sg:                                            ; preds = %.split7365
  store <16 x float> %.53870, ptr %.165295418, align 64, !tbaa !90
  %i.ixt = getelementptr inbounds nuw i8, ptr %.165295418, i64 64
  store <16 x float> %.43864, ptr %i.ixt, align 64, !tbaa !90
  switch i32 %i.b, label %bb.sk [
    i32 8, label %.thread5034
    i32 4, label %bb.si
    i32 1, label %bb.sj
  ]

.thread5034:                                      ; preds = %bb.sg
  %i.ixu = shufflevector <16 x float> %.53870, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  store <8 x float> %i.ixu, ptr %.165295418, align 64, !tbaa !90
  %i.ixv = getelementptr inbounds nuw i8, ptr %.165295418, i64 32
  %i.ixw = shufflevector <16 x float> %.43864, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  store <8 x float> %i.ixw, ptr %i.ixv, align 32, !tbaa !90
  %i.ixx = getelementptr inbounds nuw i8, ptr %.165295418, i64 %.idx6824 ; 2 uses
  %i.ixy = shufflevector <16 x float> %.53870, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.ixy, ptr %i.ixx, align 32, !tbaa !90
  %i.ixz = getelementptr inbounds nuw i8, ptr %i.ixx, i64 32
  %i.iya = shufflevector <16 x float> %.43864, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.iya, ptr %i.ixz, align 32, !tbaa !90
  br label %bb.sk

bb.sh:                                            ; preds = %.split7365
  %i.iyb = shufflevector <16 x float> %.53870, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  store <8 x float> %i.iyb, ptr %.165295418, align 32, !tbaa !90
  %i.iyc = getelementptr inbounds nuw i8, ptr %.165295418, i64 32
  %i.iyd = shufflevector <16 x float> %.43864, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  store <8 x float> %i.iyd, ptr %i.iyc, align 32, !tbaa !90
  %i.iye = getelementptr inbounds nuw i8, ptr %.165295418, i64 %.idx6824 ; 2 uses
  %i.iyf = shufflevector <16 x float> %.53870, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.iyf, ptr %i.iye, align 32, !tbaa !90
  %i.iyg = getelementptr inbounds nuw i8, ptr %i.iye, i64 32
  %i.iyh = shufflevector <16 x float> %.43864, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.iyh, ptr %i.iyg, align 32, !tbaa !90
  switch i32 %i.b, label %bb.sk [
    i32 4, label %bb.si
    i32 1, label %bb.sj
  ]

bb.si:                                            ; preds = %.split7365, %bb.sg, %bb.sh
  %i.iyi = shufflevector <16 x float> %.53870, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %i.iyi, ptr %.165295418, align 16, !tbaa !90
  %i.iyj = getelementptr inbounds nuw i8, ptr %.165295418, i64 16
  %i.iyk = shufflevector <16 x float> %.43864, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %i.iyk, ptr %i.iyj, align 16, !tbaa !90
  %i.iyl = getelementptr inbounds nuw i8, ptr %.165295418, i64 %.idx6820 ; 2 uses
  %i.iym = shufflevector <16 x float> %.53870, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x float> %i.iym, ptr %i.iyl, align 16, !tbaa !90
  %i.iyn = getelementptr inbounds nuw i8, ptr %i.iyl, i64 16
  %i.iyo = shufflevector <16 x float> %.43864, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x float> %i.iyo, ptr %i.iyn, align 16, !tbaa !90
  %i.iyp = getelementptr inbounds nuw i8, ptr %.165295418, i64 %.idx6824 ; 2 uses
  %i.iyq = shufflevector <16 x float> %.53870, <16 x float> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  store <4 x float> %i.iyq, ptr %i.iyp, align 16, !tbaa !90
  %i.iyr = getelementptr inbounds nuw i8, ptr %i.iyp, i64 16
  %i.iys = shufflevector <16 x float> %.43864, <16 x float> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  store <4 x float> %i.iys, ptr %i.iyr, align 16, !tbaa !90
  %i.iyt = getelementptr inbounds nuw i8, ptr %.165295418, i64 %.idx6828 ; 2 uses
  %i.iyu = shufflevector <16 x float> %.53870, <16 x float> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x float> %i.iyu, ptr %i.iyt, align 16, !tbaa !90
  %i.iyv = getelementptr inbounds nuw i8, ptr %i.iyt, i64 16
  %i.iyw = shufflevector <16 x float> %.43864, <16 x float> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x float> %i.iyw, ptr %i.iyv, align 16, !tbaa !90
  br i1 %i.gvf, label %bb.sj, label %bb.sk

bb.sj:                                            ; preds = %.split7365, %bb.sg, %bb.sh, %bb.si
  tail call void @llvm.x86.avx512.mask.scatter.dps.512(ptr %.165295418, <16 x i1> splat (i1 true), <16 x i32> %i.gvj, <16 x float> %.53870, i32 4)
  %i.iyx = getelementptr inbounds nuw i8, ptr %.165295418, i64 4
  tail call void @llvm.x86.avx512.mask.scatter.dps.512(ptr nonnull %i.iyx, <16 x i1> splat (i1 true), <16 x i32> %i.gvj, <16 x float> %.43864, i32 4)
  br label %bb.sk

bb.sk:                                            ; preds = %.thread5034, %bb.sf, %.split7365, %bb.sg, %bb.sh, %bb.sj, %bb.si
  %i.iyy = getelementptr inbounds nuw i8, ptr %.165295418, i64 %.idx6829
  br label %bb.su

bb.sl:                                            ; preds = %bb.se
  store <16 x float> %.53870, ptr %.165295418, align 1, !tbaa !90
  %i.iyz = getelementptr inbounds nuw [4 x i8], ptr %.165295418, i64 %i.k
  store <16 x float> %.43864, ptr %i.iyz, align 1, !tbaa !90
  %i.iza = getelementptr inbounds nuw i8, ptr %.165295418, i64 64
  br label %bb.su

bb.sm:                                            ; preds = %.thread5028
  %i.izb = bitcast <16 x float> %.53870 to <16 x i32>
  %i.izc = lshr <16 x i32> %i.izb, splat (i32 16) ; 2 uses
  %i.izd = shufflevector <16 x i32> %i.izc, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ize = shufflevector <16 x i32> %i.izc, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.izf = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.izd, <8 x i32> %i.ize)
  %i.izg = bitcast <16 x i16> %i.izf to <4 x i64>
  %i.izh = shufflevector <4 x i64> %i.izg, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 6 uses
  %i.izi = bitcast <16 x float> %.43864 to <16 x i32>
  %i.izj = lshr <16 x i32> %i.izi, splat (i32 16) ; 2 uses
  %i.izk = shufflevector <16 x i32> %i.izj, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.izl = shufflevector <16 x i32> %i.izj, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.izm = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.izk, <8 x i32> %i.izl)
  %i.izn = bitcast <16 x i16> %i.izm to <4 x i64>
  %i.izo = shufflevector <4 x i64> %i.izn, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 6 uses
  br i1 %.not6805, label %bb.st, label %bb.sn

end_hunk_0
begin_hunk_1_@_ZN4ncnnL31unpack_output_tile_fp32_to_bf16ERKNS_3MatES2_RS0_iiiiiffii:bb.a
  %i.jef = getelementptr inbounds nuw i8, ptr %.795437, i64 32
  br label %.thread5051

.thread5051:                                      ; preds = %bb.sy, %bb.sx, %.thread5038, %bb.tc, %bb.td, %.lr.ph5438
  %.53884 = phi nsz <4 x float> [ %.338825431, %.lr.ph5438 ], [ %i.jdz, %bb.td ], [ %.338825431, %bb.sy ], [ %i.jdg, %bb.tc ], [ %.338825431, %.thread5038 ], [ %.338825431, %bb.sx ] ; 2 uses
  %.43875 = phi nsz <4 x float> [ %.238735432, %.lr.ph5438 ], [ %i.jea, %bb.td ], [ %.238735432, %bb.sy ], [ %i.jdi, %bb.tc ], [ %.238735432, %.thread5038 ], [ %.238735432, %bb.sx ] ; 2 uses
  %.43856 = phi nsz <4 x float> [ %i.jcs, %.lr.ph5438 ], [ %i.jeb, %bb.td ], [ %i.jcs, %bb.sy ], [ %.23854, %bb.tc ], [ %i.jcy, %.thread5038 ], [ %i.jdc, %bb.sx ] ; 2 uses
  %.43850 = phi nsz <4 x float> [ %i.jct, %.lr.ph5438 ], [ %i.jec, %bb.td ], [ %i.jct, %bb.sy ], [ %.23848, %bb.tc ], [ %i.jcz, %.thread5038 ], [ %i.jdd, %bb.sx ] ; 2 uses
  %.43844 = phi nsz <4 x float> [ %i.jcw, %.lr.ph5438 ], [ %i.jed, %bb.td ], [ %i.jcw, %bb.sy ], [ %.23842, %bb.tc ], [ %i.jda, %.thread5038 ], [ %i.jde, %bb.sx ] ; 2 uses
  %.43838 = phi nsz <4 x float> [ %i.jcx, %.lr.ph5438 ], [ %i.jee, %bb.td ], [ %i.jcx, %bb.sy ], [ %.23836, %bb.tc ], [ %i.jdb, %.thread5038 ], [ %i.jdf, %bb.sx ] ; 2 uses
  %.81 = phi ptr [ null, %.lr.ph5438 ], [ %i.jef, %bb.td ], [ %.795437, %bb.sy ], [ %i.jdv, %bb.tc ], [ %.795437, %.thread5038 ], [ %.795437, %bb.sx ] ; 2 uses
  br i1 %i.guy, label %bb.te, label %bb.tf

bb.te:                                            ; preds = %.thread5051
  %i.jeg = fmul fast <4 x float> %.43856, %i.gvn
  %i.jeh = fmul fast <4 x float> %.43850, %i.gvn
  %i.jei = fmul fast <4 x float> %.43844, %i.gvn
  %i.jej = fmul fast <4 x float> %.43838, %i.gvn
  br label %bb.tf

bb.tf:                                            ; preds = %bb.te, %.thread5051
  %.53857 = phi nsz <4 x float> [ %i.jeg, %bb.te ], [ %.43856, %.thread5051 ] ; 8 uses
  %.53851 = phi nsz <4 x float> [ %i.jeh, %bb.te ], [ %.43850, %.thread5051 ] ; 8 uses
  %.53845 = phi nsz <4 x float> [ %i.jei, %bb.te ], [ %.43844, %.thread5051 ] ; 8 uses
  %.53839 = phi nsz <4 x float> [ %i.jej, %bb.te ], [ %.43838, %.thread5051 ] ; 8 uses
  br i1 %i.gvb, label %bb.tg, label %bb.tn

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
  %i.jek = getelementptr inbounds nuw i8, ptr %.365315434, i64 16
  store <4 x float> %.53851, ptr %i.jek, align 1, !tbaa !90
  %i.jel = getelementptr inbounds nuw i8, ptr %.365315434, i64 32
  store <4 x float> %.53845, ptr %i.jel, align 1, !tbaa !90
  %i.jem = getelementptr inbounds nuw i8, ptr %.365315434, i64 48
  store <4 x float> %.53839, ptr %i.jem, align 1, !tbaa !90
  br label %bb.tl

bb.tj:                                            ; preds = %bb.th
  store <4 x float> %.53857, ptr %.365315434, align 1, !tbaa !90
  %i.jen = getelementptr inbounds nuw i8, ptr %.365315434, i64 16
  store <4 x float> %.53845, ptr %i.jen, align 1, !tbaa !90
  %i.jeo = getelementptr inbounds nuw i8, ptr %.365315434, i64 %.idx6820 ; 2 uses
  store <4 x float> %.53851, ptr %i.jeo, align 1, !tbaa !90
  %i.jep = getelementptr inbounds nuw i8, ptr %i.jeo, i64 16
  store <4 x float> %.53839, ptr %i.jep, align 1, !tbaa !90
  br label %bb.tl

bb.tk:                                            ; preds = %bb.th
  %.sroa.085.0.vec.extract = extractelement <4 x float> %.53857, i64 0
  store float %.sroa.085.0.vec.extract, ptr %.365315434, align 4, !tbaa !69
  %.sroa.12.32.vec.extract = extractelement <4 x float> %.53845, i64 0
  %i.jeq = getelementptr inbounds nuw i8, ptr %.365315434, i64 4
  store float %.sroa.12.32.vec.extract, ptr %i.jeq, align 4, !tbaa !69
  %i.jer = getelementptr inbounds nuw [4 x i8], ptr %.365315434, i64 %i.k
  %i.jes = shufflevector <4 x float> %.53857, <4 x float> %.53845, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.jes, ptr %i.jer, align 4, !tbaa !69
  %i.jet = getelementptr inbounds nuw i8, ptr %.365315434, i64 %.idx6821
  %i.jeu = shufflevector <4 x float> %.53857, <4 x float> %.53845, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.jeu, ptr %i.jet, align 4, !tbaa !69
  %i.jev = getelementptr inbounds nuw i8, ptr %.365315434, i64 %.idx5161
  %i.jew = shufflevector <4 x float> %.53857, <4 x float> %.53845, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.jew, ptr %i.jev, align 4, !tbaa !69
  %.sroa.786.16.vec.extract = extractelement <4 x float> %.53851, i64 0
  %i.jex = getelementptr inbounds nuw i8, ptr %.365315434, i64 %.idx6820 ; 2 uses
  store float %.sroa.786.16.vec.extract, ptr %i.jex, align 4, !tbaa !69
  %.sroa.17.48.vec.extract = extractelement <4 x float> %.53839, i64 0
  %i.jey = getelementptr inbounds nuw i8, ptr %i.jex, i64 4
  store float %.sroa.17.48.vec.extract, ptr %i.jey, align 4, !tbaa !69
  %i.jez = getelementptr inbounds nuw i8, ptr %.365315434, i64 %.idx5165
  %i.jfa = shufflevector <4 x float> %.53851, <4 x float> %.53839, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.jfa, ptr %i.jez, align 4, !tbaa !69
  %i.jfb = getelementptr inbounds nuw i8, ptr %.365315434, i64 %.idx6823
  %i.jfc = shufflevector <4 x float> %.53851, <4 x float> %.53839, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.jfc, ptr %i.jfb, align 4, !tbaa !69
  %i.jfd = getelementptr inbounds nuw i8, ptr %.365315434, i64 %.idx5169
  %i.jfe = shufflevector <4 x float> %.53851, <4 x float> %.53839, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.jfe, ptr %i.jfd, align 4, !tbaa !69
  br label %bb.tl

bb.tl:                                            ; preds = %bb.tj, %bb.ti, %bb.th, %bb.tk
  %i.jff = getelementptr inbounds nuw i8, ptr %.365315434, i64 %.idx6824
  br label %bb.tu

bb.tm:                                            ; preds = %bb.tg
  store <4 x float> %.53857, ptr %.365315434, align 1, !tbaa !90
  %i.jfg = getelementptr inbounds nuw i8, ptr %.365315434, i64 16
  store <4 x float> %.53851, ptr %i.jfg, align 1, !tbaa !90
  %i.jfh = getelementptr inbounds nuw [4 x i8], ptr %.365315434, i64 %i.k ; 2 uses
  store <4 x float> %.53845, ptr %i.jfh, align 1, !tbaa !90
  %i.jfi = getelementptr inbounds nuw i8, ptr %i.jfh, i64 16
  store <4 x float> %.53839, ptr %i.jfi, align 1, !tbaa !90
  %i.jfj = getelementptr inbounds nuw i8, ptr %.365315434, i64 32
  br label %bb.tu

bb.tn:                                            ; preds = %bb.tf
  %i.jfk = bitcast <4 x float> %.53857 to <4 x i32>
  %i.jfl = lshr <4 x i32> %i.jfk, splat (i32 16)
  %i.jfm = bitcast <4 x float> %.53851 to <4 x i32>
  %i.jfn = lshr <4 x i32> %i.jfm, splat (i32 16)
  %i.jfo = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.jfl, <4 x i32> %i.jfn) ; 12 uses
  %i.jfp = bitcast <8 x i16> %i.jfo to <2 x i64>
  %i.jfq = bitcast <4 x float> %.53845 to <4 x i32>
  %i.jfr = lshr <4 x i32> %i.jfq, splat (i32 16)
  %i.jfs = bitcast <4 x float> %.53839 to <4 x i32>
  %i.jft = lshr <4 x i32> %i.jfs, splat (i32 16)
  %i.jfu = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.jfr, <4 x i32> %i.jft) ; 12 uses
  %i.jfv = bitcast <8 x i16> %i.jfu to <2 x i64>
  br i1 %.not6805, label %bb.tt, label %bb.to

bb.to:                                            ; preds = %bb.tn
  switch i32 %i.b, label %bb.ts [
    i32 8, label %bb.tp
    i32 4, label %bb.tq
    i32 1, label %bb.tr
  ]

bb.tp:                                            ; preds = %bb.to
  store <8 x i16> %i.jfo, ptr %.465435433, align 1, !tbaa !90
  %i.jfw = getelementptr inbounds nuw i8, ptr %.465435433, i64 16
  store <8 x i16> %i.jfu, ptr %i.jfw, align 1, !tbaa !90
  br label %bb.ts

bb.tq:                                            ; preds = %bb.to
  %i.jfx = shufflevector <2 x i64> %i.jfp, <2 x i64> %i.jfv, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %i.jfx, ptr %.465435433, align 1, !tbaa !90
  %i.jfy = getelementptr inbounds nuw i8, ptr %.465435433, i64 %.idx6821
  %i.jfz = bitcast <8 x i16> %i.jfo to <2 x double>
  %i.jga = bitcast <8 x i16> %i.jfu to <2 x double>
  %i.jgb = shufflevector <2 x double> %i.jfz, <2 x double> %i.jga, <2 x i32> <i32 1, i32 3>
  store <2 x double> %i.jgb, ptr %i.jfy, align 1, !tbaa !90
  br label %bb.ts

bb.tr:                                            ; preds = %bb.to
  %i.jgc = shufflevector <8 x i16> %i.jfo, <8 x i16> %i.jfu, <2 x i32> <i32 0, i32 8>
  store <2 x i16> %i.jgc, ptr %.465435433, align 2, !tbaa !110
  %i.jgd = getelementptr inbounds nuw [2 x i8], ptr %.465435433, i64 %i.k
  %i.jge = shufflevector <8 x i16> %i.jfo, <8 x i16> %i.jfu, <2 x i32> <i32 1, i32 9>
  store <2 x i16> %i.jge, ptr %i.jgd, align 2, !tbaa !110
  %i.jgf = getelementptr inbounds nuw i8, ptr %.465435433, i64 %.idx5157
  %i.jgg = shufflevector <8 x i16> %i.jfo, <8 x i16> %i.jfu, <2 x i32> <i32 2, i32 10>
  store <2 x i16> %i.jgg, ptr %i.jgf, align 2, !tbaa !110
  %i.jgh = getelementptr inbounds nuw i8, ptr %.465435433, i64 %.idx5158
  %i.jgi = shufflevector <8 x i16> %i.jfo, <8 x i16> %i.jfu, <2 x i32> <i32 3, i32 11>
  store <2 x i16> %i.jgi, ptr %i.jgh, align 2, !tbaa !110
  %i.jgj = getelementptr inbounds nuw i8, ptr %.465435433, i64 %.idx6821
  %i.jgk = shufflevector <8 x i16> %i.jfo, <8 x i16> %i.jfu, <2 x i32> <i32 4, i32 12>
  store <2 x i16> %i.jgk, ptr %i.jgj, align 2, !tbaa !110
  %i.jgl = getelementptr inbounds nuw i8, ptr %.465435433, i64 %.idx5160
  %i.jgm = shufflevector <8 x i16> %i.jfo, <8 x i16> %i.jfu, <2 x i32> <i32 5, i32 13>
  store <2 x i16> %i.jgm, ptr %i.jgl, align 2, !tbaa !110
  %i.jgn = getelementptr inbounds nuw i8, ptr %.465435433, i64 %.idx5161
  %i.jgo = shufflevector <8 x i16> %i.jfo, <8 x i16> %i.jfu, <2 x i32> <i32 6, i32 14>
  store <2 x i16> %i.jgo, ptr %i.jgn, align 2, !tbaa !110
  %i.jgp = getelementptr inbounds nuw i8, ptr %.465435433, i64 %.idx5162
  %i.jgq = shufflevector <8 x i16> %i.jfo, <8 x i16> %i.jfu, <2 x i32> <i32 7, i32 15>
  store <2 x i16> %i.jgq, ptr %i.jgp, align 2, !tbaa !110
  br label %bb.ts

bb.ts:                                            ; preds = %bb.tq, %bb.tp, %bb.to, %bb.tr
  %i.jgr = getelementptr inbounds nuw i8, ptr %.465435433, i64 %.idx6820
  br label %bb.tu

bb.tt:                                            ; preds = %bb.tn
  store <8 x i16> %i.jfo, ptr %.465435433, align 1, !tbaa !90
  %i.jgs = getelementptr inbounds nuw [2 x i8], ptr %.465435433, i64 %i.k
  store <8 x i16> %i.jfu, ptr %i.jgs, align 1, !tbaa !90
  %i.jgt = getelementptr inbounds nuw i8, ptr %.465435433, i64 16
  br label %bb.tu

bb.tu:                                            ; preds = %bb.ts, %bb.tt, %bb.tl, %bb.tm
  %.66545 = phi ptr [ %.465435433, %bb.tl ], [ %.465435433, %bb.tm ], [ %i.jgr, %bb.ts ], [ %i.jgt, %bb.tt ] ; 2 uses
  %.46532 = phi ptr [ %i.jff, %bb.tl ], [ %i.jfj, %bb.tm ], [ %.365315434, %bb.ts ], [ %.365315434, %bb.tt ] ; 2 uses
  %i.jgu = add nuw nsw i32 %.165085435, 8         ; 3 uses
  %i.jgv = or disjoint i32 %i.jgu, 7
  %i.jgw = icmp slt i32 %i.jgv, %6
  br i1 %i.jgw, label %.lr.ph5438, label %.preheader5190, !llvm.loop !1600

.preheader5189:                                   ; preds = %bb.un, %.preheader5190
  %.76546.lcssa = phi ptr [ %.46543.lcssa, %.preheader5190 ], [ %.96548, %bb.un ] ; 2 uses
  %.56533.lcssa = phi ptr [ %.36531.lcssa, %.preheader5190 ], [ %.66534, %bb.un ] ; 2 uses
  %.26509.lcssa = phi i32 [ %.16508.lcssa, %.preheader5190 ], [ %i.jjg, %bb.un ] ; 3 uses
  %.216425.lcssa = phi ptr [ %.206424.lcssa, %.preheader5190 ], [ %i.jhf, %bb.un ] ; 2 uses
  %.82.lcssa = phi ptr [ %.79.lcssa, %.preheader5190 ], [ %.84, %bb.un ] ; 2 uses
  %i.jgx = or disjoint i32 %.26509.lcssa, 1
  %i.jgy = icmp slt i32 %i.jgx, %6
  br i1 %i.jgy, label %.lr.ph5464.preheader, label %.preheader5188

.lr.ph5464.preheader:                             ; preds = %.preheader5189
  %i.jgz = insertelement <2 x float> poison, float %.26527, i64 0
  %i.jha = shufflevector <2 x float> %i.jgz, <2 x float> poison, <2 x i32> zeroinitializer
  %12 = insertelement <2 x float> poison, float %.16524, i64 0
  %13 = shufflevector <2 x float> %12, <2 x float> poison, <2 x i32> zeroinitializer
  %14 = insertelement <2 x float> poison, float %.26527, i64 0
  %i.jhb = shufflevector <2 x float> %14, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph5464

.lr.ph5453:                                       ; preds = %.preheader5190, %bb.un
  %.825452 = phi ptr [ %.84, %bb.un ], [ %.79.lcssa, %.preheader5190 ] ; 9 uses
  %.2164255451 = phi ptr [ %i.jhf, %bb.un ], [ %.206424.lcssa, %.preheader5190 ] ; 3 uses
  %.265095450 = phi i32 [ %i.jjg, %bb.un ], [ %.16508.lcssa, %.preheader5190 ]
  %.565335449 = phi ptr [ %.66534, %bb.un ], [ %.36531.lcssa, %.preheader5190 ] ; 13 uses
  %.765465448 = phi ptr [ %.96548, %bb.un ], [ %.46543.lcssa, %.preheader5190 ] ; 11 uses
  %.538765447 = phi <4 x float> [ %.73878, %bb.un ], [ %.23873.lcssa, %.preheader5190 ] ; 6 uses
  %.638855446 = phi <4 x float> [ %.83887, %bb.un ], [ %.33882.lcssa, %.preheader5190 ] ; 7 uses
  %i.jhc = load <4 x float>, ptr %.2164255451, align 16, !tbaa !90 ; 2 uses
  %i.jhd = getelementptr inbounds nuw i8, ptr %.2164255451, i64 16
  %i.jhe = load <4 x float>, ptr %i.jhd, align 16, !tbaa !90 ; 2 uses
  %i.jhf = getelementptr inbounds nuw i8, ptr %.2164255451, i64 32 ; 2 uses
  %i.jhg = shufflevector <4 x float> %i.jhc, <4 x float> %i.jhe, <4 x i32> <i32 0, i32 4, i32 2, i32 6> ; 7 uses
  %i.jhh = shufflevector <4 x float> %i.jhc, <4 x float> %i.jhe, <4 x i32> <i32 1, i32 5, i32 3, i32 7>
  %i.jhi = shufflevector <4 x float> %i.jhh, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 7 uses
  %.not6811 = icmp eq ptr %.825452, null
  br i1 %.not6811, label %.thread5068, label %bb.tv

bb.tv:                                            ; preds = %.lr.ph5453
  br i1 %i.gur, label %.thread5059, label %bb.tw

.thread5059:                                      ; preds = %bb.tv
  %i.jhj = fadd fast <4 x float> %.638855446, %i.jhg
  %i.jhk = fadd fast <4 x float> %i.jhi, %.638855446
  br label %.thread5068

bb.tw:                                            ; preds = %bb.tv
  br i1 %or.cond37, label %bb.tx, label %bb.ty

bb.tx:                                            ; preds = %bb.tw
  %i.jhl = fadd fast <4 x float> %.638855446, %i.jhg
  %i.jhm = fadd fast <4 x float> %i.jhi, %.538765447
  br label %.thread5068

bb.ty:                                            ; preds = %bb.tw
  switch i32 %2, label %.thread5068 [
    i32 3, label %bb.tz
    i32 4, label %bb.ua
  ]

bb.tz:                                            ; preds = %bb.ty
  %i.jhn = load <4 x float>, ptr %.825452, align 1, !tbaa !90 ; 3 uses
  %i.jho = getelementptr inbounds nuw [4 x i8], ptr %.825452, i64 %i.t
  %i.jhp = load <4 x float>, ptr %i.jho, align 1, !tbaa !90 ; 3 uses
  %i.jhq = fadd fast <4 x float> %i.jhn, %i.jhg
  %i.jhr = fadd fast <4 x float> %i.jhp, %i.jhi
  %i.jhs = tail call fast nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jhn, <4 x float> nofpclass(nan inf) %i.gvl, <4 x float> nofpclass(nan inf) %i.jhg)
  %i.jht = tail call fast nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jhp, <4 x float> nofpclass(nan inf) %i.gvl, <4 x float> nofpclass(nan inf) %i.jhi)
  %.23823 = select nsz i1 %i.gux, <4 x float> %i.jhq, <4 x float> %i.jhs
  %.23817 = select nsz i1 %i.gux, <4 x float> %i.jhr, <4 x float> %i.jht
  %i.jhu = getelementptr inbounds nuw i8, ptr %.825452, i64 16
  br label %.thread5068

bb.ua:                                            ; preds = %bb.ty
  %i.jhv = load <4 x float>, ptr %.825452, align 1, !tbaa !90
  %i.jhw = fmul fast <4 x float> %i.jhv, %i.gvl   ; 3 uses
  %i.jhx = fadd fast <4 x float> %i.jhw, %i.jhg
  %i.jhy = fadd fast <4 x float> %i.jhw, %i.jhi
  %i.jhz = getelementptr inbounds nuw i8, ptr %.825452, i64 16
  br label %.thread5068

.thread5068:                                      ; preds = %bb.ty, %bb.tx, %.thread5059, %bb.tz, %bb.ua, %.lr.ph5453
  %.83887 = phi nsz <4 x float> [ %.638855446, %.lr.ph5453 ], [ %i.jhw, %bb.ua ], [ %.638855446, %bb.ty ], [ %i.jhn, %bb.tz ], [ %.638855446, %.thread5059 ], [ %.638855446, %bb.tx ]
  %.73878 = phi nsz <4 x float> [ %.538765447, %.lr.ph5453 ], [ %.538765447, %bb.ua ], [ %.538765447, %bb.ty ], [ %i.jhp, %bb.tz ], [ %.538765447, %.thread5059 ], [ %.538765447, %bb.tx ]
  %.43825 = phi nsz <4 x float> [ %i.jhg, %.lr.ph5453 ], [ %i.jhx, %bb.ua ], [ %i.jhg, %bb.ty ], [ %.23823, %bb.tz ], [ %i.jhj, %.thread5059 ], [ %i.jhl, %bb.tx ] ; 2 uses
  %.43819 = phi nsz <4 x float> [ %i.jhi, %.lr.ph5453 ], [ %i.jhy, %bb.ua ], [ %i.jhi, %bb.ty ], [ %.23817, %bb.tz ], [ %i.jhk, %.thread5059 ], [ %i.jhm, %bb.tx ] ; 2 uses
  %.84 = phi ptr [ null, %.lr.ph5453 ], [ %i.jhz, %bb.ua ], [ %.825452, %bb.ty ], [ %i.jhu, %bb.tz ], [ %.825452, %.thread5059 ], [ %.825452, %bb.tx ] ; 2 uses
  %i.jia = fmul fast <4 x float> %.43825, %i.gvn
  %i.jib = fmul fast <4 x float> %.43819, %i.gvn
  %.53826 = select nsz i1 %i.guy, <4 x float> %i.jia, <4 x float> %.43825 ; 7 uses
  %.53820 = select nsz i1 %i.guy, <4 x float> %i.jib, <4 x float> %.43819 ; 7 uses
  br i1 %i.gvb, label %bb.ub, label %bb.uh

bb.ub:                                            ; preds = %.thread5068
  br i1 %.not6805, label %bb.ug, label %bb.uc

bb.uc:                                            ; preds = %bb.ub
  switch i32 %i.b, label %bb.uf [
    i32 4, label %bb.ud
    i32 1, label %bb.ue
  ]

bb.ud:                                            ; preds = %bb.uc
  store <4 x float> %.53826, ptr %.565335449, align 1, !tbaa !90
  %i.jic = getelementptr inbounds nuw i8, ptr %.565335449, i64 16
  store <4 x float> %.53820, ptr %i.jic, align 1, !tbaa !90
  br label %bb.uf

bb.ue:                                            ; preds = %bb.uc
  %.sroa.055.0.vec.extract = extractelement <4 x float> %.53826, i64 0
  store float %.sroa.055.0.vec.extract, ptr %.565335449, align 4, !tbaa !69
  %.sroa.756.16.vec.extract = extractelement <4 x float> %.53820, i64 0
  %i.jid = getelementptr inbounds nuw i8, ptr %.565335449, i64 4
  store float %.sroa.756.16.vec.extract, ptr %i.jid, align 4, !tbaa !69
  %i.jie = getelementptr inbounds nuw [4 x i8], ptr %.565335449, i64 %i.k
  %i.jif = shufflevector <4 x float> %.53826, <4 x float> %.53820, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.jif, ptr %i.jie, align 4, !tbaa !69
  %i.jig = getelementptr inbounds nuw i8, ptr %.565335449, i64 %.idx6821
  %i.jih = shufflevector <4 x float> %.53826, <4 x float> %.53820, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.jih, ptr %i.jig, align 4, !tbaa !69
  %i.jii = getelementptr inbounds nuw i8, ptr %.565335449, i64 %.idx5161
  %i.jij = shufflevector <4 x float> %.53826, <4 x float> %.53820, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.jij, ptr %i.jii, align 4, !tbaa !69
  br label %bb.uf

bb.uf:                                            ; preds = %bb.ud, %bb.uc, %bb.ue
  %i.jik = getelementptr inbounds nuw i8, ptr %.565335449, i64 %.idx6820
  br label %bb.un

bb.ug:                                            ; preds = %bb.ub
  store <4 x float> %.53826, ptr %.565335449, align 1, !tbaa !90
  %i.jil = getelementptr inbounds nuw [4 x i8], ptr %.565335449, i64 %i.k
  store <4 x float> %.53820, ptr %i.jil, align 1, !tbaa !90
  %i.jim = getelementptr inbounds nuw i8, ptr %.565335449, i64 16
  br label %bb.un

bb.uh:                                            ; preds = %.thread5068
  %i.jin = bitcast <4 x float> %.53826 to <4 x i32>
  %i.jio = lshr <4 x i32> %i.jin, splat (i32 16)
  %i.jip = bitcast <4 x float> %.53820 to <4 x i32>
  %i.jiq = lshr <4 x i32> %i.jip, splat (i32 16)
  %i.jir = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.jio, <4 x i32> %i.jiq) ; 7 uses
  br i1 %.not6805, label %bb.um, label %bb.ui

bb.ui:                                            ; preds = %bb.uh
  switch i32 %i.b, label %bb.ul [
    i32 4, label %bb.uj
    i32 1, label %bb.uk
  ]

bb.uj:                                            ; preds = %bb.ui
  store <8 x i16> %i.jir, ptr %.765465448, align 1, !tbaa !90
  br label %bb.ul

bb.uk:                                            ; preds = %bb.ui
  %i.jis = shufflevector <8 x i16> %i.jir, <8 x i16> poison, <2 x i32> <i32 0, i32 4>
  store <2 x i16> %i.jis, ptr %.765465448, align 2, !tbaa !110
  %i.jit = getelementptr inbounds nuw [2 x i8], ptr %.765465448, i64 %i.k
  %i.jiu = shufflevector <8 x i16> %i.jir, <8 x i16> poison, <2 x i32> <i32 1, i32 5>
  store <2 x i16> %i.jiu, ptr %i.jit, align 2, !tbaa !110
  %i.jiv = getelementptr inbounds nuw i8, ptr %.765465448, i64 %.idx5157
  %i.jiw = shufflevector <8 x i16> %i.jir, <8 x i16> poison, <2 x i32> <i32 2, i32 6>
  store <2 x i16> %i.jiw, ptr %i.jiv, align 2, !tbaa !110
  %i.jix = getelementptr inbounds nuw i8, ptr %.765465448, i64 %.idx5158
  %i.jiy = shufflevector <8 x i16> %i.jir, <8 x i16> poison, <2 x i32> <i32 3, i32 7>
  store <2 x i16> %i.jiy, ptr %i.jix, align 2, !tbaa !110
  br label %bb.ul

bb.ul:                                            ; preds = %bb.uj, %bb.ui, %bb.uk
  %i.jiz = getelementptr inbounds nuw i8, ptr %.765465448, i64 %.idx6821
  br label %bb.un

bb.um:                                            ; preds = %bb.uh
  %i.jja = bitcast <8 x i16> %i.jir to <2 x i64>
  %i.jjb = extractelement <2 x i64> %i.jja, i64 0
  store i64 %i.jjb, ptr %.765465448, align 1, !tbaa !90
  %i.jjc = getelementptr inbounds nuw [2 x i8], ptr %.765465448, i64 %i.k
  %i.jjd = bitcast <8 x i16> %i.jir to <2 x i64>
  %i.jje = extractelement <2 x i64> %i.jjd, i64 1
  store i64 %i.jje, ptr %i.jjc, align 1, !tbaa !90
  %i.jjf = getelementptr inbounds nuw i8, ptr %.765465448, i64 8
  br label %bb.un

bb.un:                                            ; preds = %bb.ul, %bb.um, %bb.uf, %bb.ug
  %.96548 = phi ptr [ %.765465448, %bb.uf ], [ %.765465448, %bb.ug ], [ %i.jiz, %bb.ul ], [ %i.jjf, %bb.um ] ; 2 uses
  %.66534 = phi ptr [ %i.jik, %bb.uf ], [ %i.jim, %bb.ug ], [ %.565335449, %bb.ul ], [ %.565335449, %bb.um ] ; 2 uses
  %i.jjg = add nuw nsw i32 %.265095450, 4         ; 3 uses
  %i.jjh = or disjoint i32 %i.jjg, 3
  %i.jji = icmp slt i32 %i.jjh, %6
  br i1 %i.jji, label %.lr.ph5453, label %.preheader5189, !llvm.loop !1601

.preheader5188:                                   ; preds = %bb.va, %.preheader5189
  %.106549.lcssa = phi ptr [ %.76546.lcssa, %.preheader5189 ], [ %.126551, %bb.va ]
  %.76535.lcssa = phi ptr [ %.56533.lcssa, %.preheader5189 ], [ %.86536, %bb.va ]
  %.36510.lcssa = phi i32 [ %.26509.lcssa, %.preheader5189 ], [ %i.jlm, %bb.va ] ; 2 uses
  %.226426.lcssa = phi ptr [ %.216425.lcssa, %.preheader5189 ], [ %i.jjo, %bb.va ] ; 2 uses
  %.85.lcssa = phi ptr [ %.82.lcssa, %.preheader5189 ], [ %.87, %bb.va ] ; 2 uses
  %i.jjj = icmp slt i32 %.36510.lcssa, %6
  br i1 %i.jjj, label %.lr.ph5475.preheader, label %._crit_edge5476

.lr.ph5475.preheader:                             ; preds = %.preheader5188
  %i.jjk = shufflevector <2 x float> %i.iwq, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph5475

.lr.ph5464:                                       ; preds = %.lr.ph5464.preheader, %bb.va
  %.855463 = phi ptr [ %.87, %bb.va ], [ %.82.lcssa, %.lr.ph5464.preheader ] ; 9 uses
  %.2264265462 = phi ptr [ %i.jjo, %bb.va ], [ %.216425.lcssa, %.lr.ph5464.preheader ] ; 3 uses
  %.365105461 = phi i32 [ %i.jlm, %bb.va ], [ %.26509.lcssa, %.lr.ph5464.preheader ]
  %.765355460 = phi ptr [ %.86536, %bb.va ], [ %.56533.lcssa, %.lr.ph5464.preheader ] ; 7 uses
  %.1065495459 = phi ptr [ %.126551, %bb.va ], [ %.76546.lcssa, %.lr.ph5464.preheader ] ; 7 uses
  %i.jjl = load <2 x float>, ptr %.2264265462, align 4, !tbaa !69 ; 6 uses
  %i.jjm = getelementptr inbounds nuw i8, ptr %.2264265462, i64 8
  %i.jjn = load <2 x float>, ptr %i.jjm, align 4, !tbaa !69 ; 6 uses
  %i.jjo = getelementptr inbounds nuw i8, ptr %.2264265462, i64 16 ; 2 uses
  %.not6808 = icmp eq ptr %.855463, null
  br i1 %.not6808, label %.thread5087, label %bb.uo

bb.uo:                                            ; preds = %.lr.ph5464
  br i1 %i.gur, label %.thread5074, label %bb.up

.thread5074:                                      ; preds = %bb.uo
  %i.jjp = fadd fast <2 x float> %i.jjl, %i.jhb
  %i.jjq = fadd fast <2 x float> %i.jjn, %i.jhb
  br label %.thread5087

bb.up:                                            ; preds = %bb.uo
  br i1 %or.cond37, label %bb.uq, label %bb.ur

bb.uq:                                            ; preds = %bb.up
  %i.jjr = fadd fast <2 x float> %i.jjl, %i.jha
  %i.jjs = fadd fast <2 x float> %i.jjn, %13
  br label %.thread5087

bb.ur:                                            ; preds = %bb.up
  switch i32 %2, label %.thread5087 [
    i32 3, label %bb.us
    i32 4, label %bb.ut
  ]

bb.us:                                            ; preds = %bb.ur
  %i.jjt = load <2 x float>, ptr %.855463, align 4, !tbaa !69
  %i.jju = fmul fast <2 x float> %i.jjt, %i.gvs
  %i.jjv = fadd fast <2 x float> %i.jju, %i.jjl
  %i.jjw = getelementptr inbounds nuw [4 x i8], ptr %.855463, i64 %i.t
  %i.jjx = load <2 x float>, ptr %i.jjw, align 4, !tbaa !69
  %i.jjy = fmul fast <2 x float> %i.jjx, %i.gvs
  %i.jjz = fadd fast <2 x float> %i.jjy, %i.jjn
  %i.jka = getelementptr inbounds nuw i8, ptr %.855463, i64 8
  br label %.thread5087

bb.ut:                                            ; preds = %bb.ur
  %i.jkb = load <2 x float>, ptr %.855463, align 4, !tbaa !69
  %i.jkc = fmul fast <2 x float> %i.jkb, %i.gvs   ; 2 uses
  %i.jkd = fadd fast <2 x float> %i.jkc, %i.jjl
  %i.jke = fadd fast <2 x float> %i.jkc, %i.jjn
  %i.jkf = getelementptr inbounds nuw i8, ptr %.855463, i64 8
  br label %.thread5087

.thread5087:                                      ; preds = %bb.ur, %bb.uq, %.thread5074, %bb.us, %bb.ut, %.lr.ph5464
  %.87 = phi ptr [ %i.jkf, %bb.ut ], [ %.855463, %bb.ur ], [ null, %.lr.ph5464 ], [ %i.jka, %bb.us ], [ %.855463, %.thread5074 ], [ %.855463, %bb.uq ] ; 2 uses
  %i.jkg = phi <2 x float> [ %i.jke, %bb.ut ], [ %i.jjn, %bb.ur ], [ %i.jjn, %.lr.ph5464 ], [ %i.jjz, %bb.us ], [ %i.jjq, %.thread5074 ], [ %i.jjs, %bb.uq ]
  %i.jkh = phi <2 x float> [ %i.jkd, %bb.ut ], [ %i.jjl, %bb.ur ], [ %i.jjl, %.lr.ph5464 ], [ %i.jjv, %bb.us ], [ %i.jjp, %.thread5074 ], [ %i.jjr, %bb.uq ]
  %i.jki = fmul fast <2 x float> %i.jkh, %i.gvu   ; 4 uses
  %i.jkj = fmul fast <2 x float> %i.jkg, %i.gvu   ; 5 uses
  br i1 %i.gvb, label %bb.uu, label %bb.ux

bb.uu:                                            ; preds = %.thread5087
  %i.jkk = extractelement <2 x float> %i.jki, i64 0
  store float %i.jkk, ptr %.765355460, align 4, !tbaa !69
  %i.jkl = getelementptr inbounds nuw i8, ptr %.765355460, i64 4 ; 2 uses
  %i.jkm = getelementptr inbounds nuw [4 x i8], ptr %.765355460, i64 %i.k ; 3 uses
  %i.jkn = getelementptr i8, ptr %i.jkm, i64 4    ; 2 uses
  br i1 %.not6805, label %bb.uw, label %bb.uv

bb.uv:                                            ; preds = %bb.uu
  %i.jko = extractelement <2 x float> %i.jkj, i64 0
  store float %i.jko, ptr %i.jkl, align 4, !tbaa !69
  %i.jkp = extractelement <2 x float> %i.jki, i64 1
  store float %i.jkp, ptr %i.jkm, align 4, !tbaa !69
  %i.jkq = extractelement <2 x float> %i.jkj, i64 1
  store float %i.jkq, ptr %i.jkn, align 4, !tbaa !69
  %i.jkr = getelementptr inbounds nuw i8, ptr %.765355460, i64 %.idx6821
  br label %bb.va

bb.uw:                                            ; preds = %bb.uu
  %i.jks = extractelement <2 x float> %i.jki, i64 1
  store float %i.jks, ptr %i.jkl, align 4, !tbaa !69
  %i.jkt = extractelement <2 x float> %i.jkj, i64 0
  store float %i.jkt, ptr %i.jkm, align 4, !tbaa !69
  %i.jku = extractelement <2 x float> %i.jkj, i64 1
  store float %i.jku, ptr %i.jkn, align 4, !tbaa !69
  %i.jkv = getelementptr inbounds nuw i8, ptr %.765355460, i64 8
  br label %bb.va

bb.ux:                                            ; preds = %.thread5087
  %i.jkw = bitcast <2 x float> %i.jki to <2 x i32>
  %i.jkx = lshr <2 x i32> %i.jkw, splat (i32 16)  ; 2 uses
  %i.jky = bitcast <2 x i32> %i.jkx to <4 x i16>
  %i.jkz = extractelement <4 x i16> %i.jky, i64 0
  %i.jla = bitcast <2 x i32> %i.jkx to <4 x i16>
  %i.jlb = extractelement <4 x i16> %i.jla, i64 2 ; 2 uses
  %i.jlc = bitcast <2 x float> %i.jkj to <2 x i32>
  %i.jld = lshr <2 x i32> %i.jlc, splat (i32 16)
  %i.jle = trunc nuw <2 x i32> %i.jld to <2 x i16> ; 3 uses
  store i16 %i.jkz, ptr %.1065495459, align 2, !tbaa !110
  %i.jlf = getelementptr inbounds nuw i8, ptr %.1065495459, i64 2 ; 2 uses
  %i.jlg = getelementptr inbounds nuw [2 x i8], ptr %.1065495459, i64 %i.k ; 3 uses
  br i1 %.not6805, label %bb.uz, label %bb.uy

bb.uy:                                            ; preds = %bb.ux
  %i.jlh = getelementptr i8, ptr %i.jlg, i64 2
  %i.jli = extractelement <2 x i16> %i.jle, i64 0
  store i16 %i.jli, ptr %i.jlf, align 2, !tbaa !110
  store i16 %i.jlb, ptr %i.jlg, align 2, !tbaa !110
  %i.jlj = extractelement <2 x i16> %i.jle, i64 1
  store i16 %i.jlj, ptr %i.jlh, align 2, !tbaa !110
  %i.jlk = getelementptr inbounds nuw i8, ptr %.1065495459, i64 %.idx5157
  br label %bb.va

bb.uz:                                            ; preds = %bb.ux
  store i16 %i.jlb, ptr %i.jlf, align 2, !tbaa !110
  store <2 x i16> %i.jle, ptr %i.jlg, align 2, !tbaa !110
  %i.jll = getelementptr inbounds nuw i8, ptr %.1065495459, i64 4
  br label %bb.va

bb.va:                                            ; preds = %bb.uy, %bb.uz, %bb.uv, %bb.uw
  %.126551 = phi ptr [ %.1065495459, %bb.uv ], [ %.1065495459, %bb.uw ], [ %i.jlk, %bb.uy ], [ %i.jll, %bb.uz ] ; 2 uses
  %.86536 = phi ptr [ %i.jkr, %bb.uv ], [ %i.jkv, %bb.uw ], [ %.765355460, %bb.uy ], [ %.765355460, %bb.uz ] ; 2 uses
  %i.jlm = add nuw nsw i32 %.365105461, 2         ; 3 uses
  %i.jln = or disjoint i32 %i.jlm, 1
  %i.jlo = icmp slt i32 %i.jln, %6
  br i1 %i.jlo, label %.lr.ph5464, label %.preheader5188, !llvm.loop !1602

.lr.ph5475:                                       ; preds = %.lr.ph5475.preheader, %bb.vk
  %.885474 = phi ptr [ %.90, %bb.vk ], [ %.85.lcssa, %.lr.ph5475.preheader ] ; 7 uses
  %.2364275473 = phi ptr [ %i.jlq, %bb.vk ], [ %.226426.lcssa, %.lr.ph5475.preheader ] ; 2 uses
  %.465115472 = phi i32 [ %i.jnc, %bb.vk ], [ %.36510.lcssa, %.lr.ph5475.preheader ]
  %.965375471 = phi ptr [ %.106538, %bb.vk ], [ %.76535.lcssa, %.lr.ph5475.preheader ] ; 7 uses
  %.1365525470 = phi ptr [ %.156554, %bb.vk ], [ %.106549.lcssa, %.lr.ph5475.preheader ] ; 7 uses
  %i.jlp = load <2 x float>, ptr %.2364275473, align 4, !tbaa !69 ; 4 uses
  %i.jlq = getelementptr inbounds nuw i8, ptr %.2364275473, i64 8 ; 2 uses
  %.not6807 = icmp eq ptr %.885474, null
  br i1 %.not6807, label %bb.vd, label %bb.vb

bb.vb:                                            ; preds = %.lr.ph5475
  %i.jlr = fadd fast <2 x float> %i.jlp, %i.jjk
  %i.jls = select <2 x i1> %i.gvw, <2 x float> %i.jlr, <2 x float> %i.jlp ; 3 uses
  %i.jlt = fadd fast <2 x float> %i.jls, %i.iwq
  %i.jlu = select <2 x i1> %i.gvy, <2 x float> %i.jlt, <2 x float> %i.jls
  switch i32 %2, label %bb.vd [
    i32 3, label %.thread5093
    i32 4, label %bb.vc
  ]

.thread5093:                                      ; preds = %bb.vb
  %i.jlv = load float, ptr %.885474, align 4, !tbaa !69
  %i.jlw = getelementptr inbounds nuw [4 x i8], ptr %.885474, i64 %i.t
  %i.jlx = load float, ptr %i.jlw, align 4, !tbaa !69
  %i.jly = insertelement <2 x float> poison, float %i.jlv, i64 0
  %i.jlz = insertelement <2 x float> %i.jly, float %i.jlx, i64 1
  %i.jma = fmul fast <2 x float> %i.jlz, %i.gvs
  %i.jmb = fadd fast <2 x float> %i.jma, %i.jlp
  %i.jmc = getelementptr inbounds nuw i8, ptr %.885474, i64 4
  br label %bb.vd

bb.vc:                                            ; preds = %bb.vb
  %i.jmd = load float, ptr %.885474, align 4, !tbaa !69
  %i.jme = fmul fast float %i.jmd, %8
  %i.jmf = insertelement <2 x float> poison, float %i.jme, i64 0
  %i.jmg = shufflevector <2 x float> %i.jmf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jmh = fadd fast <2 x float> %i.jmg, %i.jls
  %i.jmi = getelementptr inbounds nuw i8, ptr %.885474, i64 4
  br label %bb.vd

bb.vd:                                            ; preds = %bb.vb, %.thread5093, %bb.vc, %.lr.ph5475
  %.90 = phi ptr [ %i.jmi, %bb.vc ], [ %.885474, %bb.vb ], [ null, %.lr.ph5475 ], [ %i.jmc, %.thread5093 ] ; 2 uses
  %i.jmj = phi <2 x float> [ %i.jmh, %bb.vc ], [ %i.jlu, %bb.vb ], [ %i.jlp, %.lr.ph5475 ], [ %i.jmb, %.thread5093 ]
  %i.jmk = fmul fast <2 x float> %i.jmj, %i.gwa   ; 4 uses
  br i1 %i.gvb, label %bb.ve, label %bb.vh

bb.ve:                                            ; preds = %bb.vd
  %i.jml = extractelement <2 x float> %i.jmk, i64 0
  store float %i.jml, ptr %.965375471, align 4, !tbaa !69
  br i1 %.not6805, label %bb.vg, label %bb.vf

bb.vf:                                            ; preds = %bb.ve
  %i.jmm = getelementptr inbounds nuw i8, ptr %.965375471, i64 4
  %i.jmn = extractelement <2 x float> %i.jmk, i64 1
  store float %i.jmn, ptr %i.jmm, align 4, !tbaa !69
  %i.jmo = getelementptr inbounds nuw [4 x i8], ptr %.965375471, i64 %i.k
  br label %bb.vk

bb.vg:                                            ; preds = %bb.ve
  %i.jmp = getelementptr inbounds nuw [4 x i8], ptr %.965375471, i64 %i.k
  %i.jmq = extractelement <2 x float> %i.jmk, i64 1
  store float %i.jmq, ptr %i.jmp, align 4, !tbaa !69
  %i.jmr = getelementptr inbounds nuw i8, ptr %.965375471, i64 4
  br label %bb.vk

bb.vh:                                            ; preds = %bb.vd
  %i.jms = bitcast <2 x float> %i.jmk to <2 x i32>
  %i.jmt = lshr <2 x i32> %i.jms, splat (i32 16)  ; 2 uses
  %i.jmu = bitcast <2 x i32> %i.jmt to <4 x i16>
  %i.jmv = extractelement <4 x i16> %i.jmu, i64 0
  %i.jmw = bitcast <2 x i32> %i.jmt to <4 x i16>
  %i.jmx = extractelement <4 x i16> %i.jmw, i64 2 ; 2 uses
  store i16 %i.jmv, ptr %.1365525470, align 2, !tbaa !110
  br i1 %.not6805, label %bb.vj, label %bb.vi

bb.vi:                                            ; preds = %bb.vh
  %i.jmy = getelementptr inbounds nuw i8, ptr %.1365525470, i64 2
  store i16 %i.jmx, ptr %i.jmy, align 2, !tbaa !110
  %i.jmz = getelementptr inbounds nuw [2 x i8], ptr %.1365525470, i64 %i.k
  br label %bb.vk

bb.vj:                                            ; preds = %bb.vh
  %i.jna = getelementptr inbounds nuw [2 x i8], ptr %.1365525470, i64 %i.k
  store i16 %i.jmx, ptr %i.jna, align 2, !tbaa !110
  %i.jnb = getelementptr inbounds nuw i8, ptr %.1365525470, i64 2
  br label %bb.vk

bb.vk:                                            ; preds = %bb.vi, %bb.vj, %bb.vf, %bb.vg
  %.156554 = phi ptr [ %.1365525470, %bb.vf ], [ %.1365525470, %bb.vg ], [ %i.jmz, %bb.vi ], [ %i.jnb, %bb.vj ]
  %.106538 = phi ptr [ %i.jmo, %bb.vf ], [ %i.jmr, %bb.vg ], [ %.965375471, %bb.vi ], [ %.965375471, %bb.vj ]
  %i.jnc = add nuw nsw i32 %.465115472, 1         ; 2 uses
  %exitcond5623.not = icmp eq i32 %i.jnc, %6
  br i1 %exitcond5623.not, label %._crit_edge5476, label %.lr.ph5475, !llvm.loop !1603

._crit_edge5476:                                  ; preds = %bb.vk, %.preheader5188
  %.236427.lcssa = phi ptr [ %.226426.lcssa, %.preheader5188 ], [ %i.jlq, %bb.vk ] ; 2 uses
  %.88.lcssa = phi ptr [ %.85.lcssa, %.preheader5188 ], [ %.90, %bb.vk ] ; 2 uses
end_hunk_1
