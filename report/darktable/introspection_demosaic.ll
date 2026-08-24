Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_demosaic?download=true
inline.NumInlined: 382
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 134
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 177
begin_hunk_0_@process:bb.a
  %i.jgr = getelementptr inbounds nuw i8, ptr %i.izt, i64 10
  %i.jgs = load <4 x i16>, ptr %i.jgq, align 4, !tbaa !216 ; 2 uses
  %i.jgt = shufflevector <4 x i16> %i.jgs, <4 x i16> poison, <2 x i32> <i32 0, i32 2>
  %i.jgu = mul <2 x i16> %i.jgt, splat (i16 122)
  %i.jgv = shufflevector <4 x i16> %i.jgs, <4 x i16> poison, <2 x i32> <i32 1, i32 3>
  %i.jgw = add <2 x i16> %i.jgv, %i.jgu
  store <2 x i16> %i.jgw, ptr %i.jgr, align 2, !tbaa !216
  %i.jgx = getelementptr inbounds nuw i8, ptr %i.jag, i64 28
  %i.jgy = load i16, ptr %i.jgx, align 4, !tbaa !216
  %.reass.7.4.i530 = mul i16 %i.jgy, 122
  %i.jgz = getelementptr inbounds nuw i8, ptr %i.jag, i64 30
  %i.jha = load i16, ptr %i.jgz, align 2, !tbaa !216
  %i.jhb = add i16 %i.jha, %.reass.7.4.i530
  %i.jhc = getelementptr inbounds nuw i8, ptr %i.izt, i64 14
  store i16 %i.jhb, ptr %i.jhc, align 2, !tbaa !216
  br label %.loopexit1057.4.i

.loopexit1057.4.i:                                ; preds = %.preheader1056.4.i, %.loopexit1057.3.i
  %indvars.iv.next.i506 = add nuw nsw i64 %indvars.iv.i496, 1 ; 2 uses
  %exitcond.not.i507 = icmp eq i64 %indvars.iv.next.i506, 3
  br i1 %exitcond.not.i507, label %bb.os, label %.preheader1058.i

._crit_edge1245.i:                                ; preds = %.lr.ph1244.split.i, %._crit_edge1241.us.i, %bb.mi
  tail call void @free(ptr noundef %i.fzo) #27
  tail call fastcc void @_vng_lininterpolate(ptr noundef nonnull %i.aop, ptr noundef readonly %i.ayn, i32 noundef %i.bo, i32 noundef %i.ayd, i32 noundef 9, ptr noundef nonnull readonly %i.x, i32 noundef %i.aqa)
  br label %xtrans_markesteijn_interpolate.exit

.lr.ph1244.split.i:                               ; preds = %.lr.ph1244.i, %.lr.ph1244.split.i
  %.09141242.i = phi i32 [ %i.jhd, %.lr.ph1244.split.i ], [ %.neg.i508, %.lr.ph1244.i ]
  %i.jhd = add i32 %.09141242.i, %reass.sub955.i  ; 2 uses
  %i.jhe = icmp slt i32 %i.jhd, %i.gam
  br i1 %i.jhe, label %.lr.ph1244.split.i, label %._crit_edge1245.i

xtrans_markesteijn_interpolate.exit:              ; preds = %bb.mh, %._crit_edge1245.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  br label %demosaic_box3.exit

bb.ot:                                            ; preds = %bb.mf
  tail call fastcc void @vng_interpolate(ptr noundef %i.aop, ptr noundef %i.ayn, i32 noundef %i.bo, i32 noundef %i.ayd, i32 noundef 9, ptr noundef nonnull %i.x, i32 noundef 0)
  br label %demosaic_box3.exit

bb.ou:                                            ; preds = %bb.iv
  br i1 %or.cond31, label %bb.ov, label %bb.ox

bb.ov:                                            ; preds = %bb.ou
  tail call fastcc void @vng_interpolate(ptr noundef %i.aop, ptr noundef %i.ayn, i32 noundef %i.bo, i32 noundef %i.ayd, i32 noundef %.fr1043, ptr noundef nonnull %i.x, i32 noundef 0)
  br i1 %i.bg, label %bb.ow, label %demosaic_box3.exit

bb.ow:                                            ; preds = %bb.ov
  %i.jhf = mul nsw i32 %i.ayd, %i.bo
  tail call void @dt_colorspaces_cygm_to_rgb(ptr noundef nonnull %i.aop, i32 noundef %i.jhf, ptr noundef nonnull %i.apr) #27
  tail call void @dt_colorspaces_cygm_to_rgb(ptr noundef nonnull %i.aps, i32 noundef 1, ptr noundef nonnull %i.apr) #27
  br label %demosaic_box3.exit

bb.ox:                                            ; preds = %bb.ou
  switch i32 %.0394, label %bb.rp [
    i32 5, label %bb.oy
    i32 6, label %bb.ph
    i32 1, label %bb.rq
  ]

bb.oy:                                            ; preds = %bb.ox
  tail call void @llvm.experimental.noalias.scope.decl(metadata !277)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !280)
  tail call fastcc void @demosaic_ppg(ptr noundef nonnull %i.aop, ptr noundef %i.ayn, i32 noundef %i.bo, i32 noundef %i.ayd, i32 noundef range(i32 10, 9) %.fr1043, float noundef 0.000000e+00, i32 noundef 10)
  %i.jhg = icmp slt i32 %i.ayd, 20
  %or.cond.i538 = or i1 %i.apj, %i.jhg
  br i1 %or.cond.i538, label %demosaic_box3.exit, label %bb.oz

bb.oz:                                            ; preds = %bb.oy
  %i.jhh = add nsw i32 %i.ayd, -21
  %i.jhi = sdiv i32 %i.jhh, 92
  %i.jhj = tail call ptr @dt_alloc_aligned(i64 noundef 50176) #27, !noalias !277 ; 19 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.jhj, i64 64) ]
  %.not.i.i539 = icmp eq ptr %i.jhj, null
  br i1 %.not.i.i539, label %.preheader833.preheader.i, label %bb.pa

bb.pa:                                            ; preds = %bb.oz
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(50176) %i.jhj, i8 0, i64 50176, i1 false), !noalias !277
  br label %.preheader833.preheader.i

.preheader833.preheader.i:                        ; preds = %bb.pa, %bb.oz
  %i.jhk = tail call ptr @dt_alloc_aligned(i64 noundef 25088) #27, !noalias !277 ; 28 uses
  %i.jhl = ptrtoaddr ptr %i.jhk to i64
  call void @llvm.assume(i1 true) [ "align"(ptr %i.jhk, i64 64) ]
  %i.jhm = tail call ptr @dt_alloc_aligned(i64 noundef 50176) #27, !noalias !277 ; 38 uses
  %i.jhn = ptrtoaddr ptr %i.jhm to i64            ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.jhm, i64 64) ]
  %i.jho = tail call ptr @dt_alloc_aligned(i64 noundef 25088) #27, !noalias !277 ; 13 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.jho, i64 64) ]
  %i.jhp = tail call ptr @dt_alloc_aligned(i64 noundef 25088) #27, !noalias !277 ; 13 uses
  %i.jhq = insertelement <2 x ptr> poison, ptr %i.jho, i64 0
  %i.jhr = insertelement <2 x ptr> %i.jhq, ptr %i.jhp, i64 1
  call void @llvm.assume(i1 true) [ "align"(ptr %i.jhp, i64 64) ]
  %i.jhs = tail call ptr @dt_alloc_aligned(i64 noundef 150528) #27, !noalias !277 ; 61 uses
  %i.jht = ptrtoaddr ptr %i.jhs to i64            ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.jhs, i64 64) ]
  %i.jhu = getelementptr inbounds nuw i8, ptr %i.jhs, i64 50176 ; 24 uses
  %i.jhv = getelementptr inbounds nuw i8, ptr %i.jhs, i64 100352 ; 12 uses
  %scevgep2959 = getelementptr i8, ptr %i.jhs, i64 -1344
  %scevgep2961 = getelementptr i8, ptr %i.jhs, i64 101700
  %scevgep2963 = getelementptr i8, ptr %i.jhj, i64 -452
  %scevgep2965 = getelementptr i8, ptr %i.jhj, i64 456
  %scevgep3046 = getelementptr i8, ptr %i.jhs, i64 100352
  %scevgep3048 = getelementptr i8, ptr %i.jhs, i64 100356
  %scevgep3051 = getelementptr i8, ptr %i.jhk, i64 8
  %scevgep3054 = getelementptr i8, ptr %i.jhk, i64 8
  %scevgep3056 = getelementptr i8, ptr %i.jhk, i64 8
  %scevgep3060 = getelementptr i8, ptr %i.jhk, i64 12
  %scevgep3062 = getelementptr i8, ptr %i.jhs, i64 99900
  %scevgep3064 = getelementptr i8, ptr %i.jhs, i64 99904
  %scevgep3066 = getelementptr i8, ptr %i.jhs, i64 100804
  %scevgep3068 = getelementptr i8, ptr %i.jhs, i64 100808
  %scevgep3070 = getelementptr i8, ptr %i.jhs, i64 98996
  %scevgep3072 = getelementptr i8, ptr %i.jhs, i64 99000
  %scevgep3074 = getelementptr i8, ptr %i.jhs, i64 50176
  %scevgep3076 = getelementptr i8, ptr %i.jhs, i64 50180
  %scevgep3078 = getelementptr i8, ptr %i.jhs, i64 49272
  %scevgep3080 = getelementptr i8, ptr %i.jhs, i64 49276
  %scevgep3082 = getelementptr i8, ptr %i.jhs, i64 99908
  %scevgep3084 = getelementptr i8, ptr %i.jhs, i64 99912
  %scevgep3086 = getelementptr i8, ptr %i.jhs, i64 100796
  %scevgep3088 = getelementptr i8, ptr %i.jhs, i64 100800
  %scevgep3090 = getelementptr i8, ptr %i.jhs, i64 99020
  %scevgep3092 = getelementptr i8, ptr %i.jhs, i64 99024
  %scevgep3094 = getelementptr i8, ptr %i.jhs, i64 49288
  %scevgep3096 = getelementptr i8, ptr %i.jhs, i64 49292
  %scevgep3098 = getelementptr i8, ptr %i.jhs, i64 101684
  %scevgep3100 = getelementptr i8, ptr %i.jhs, i64 101688
  %scevgep3102 = getelementptr i8, ptr %i.jhs, i64 51064
  %scevgep3104 = getelementptr i8, ptr %i.jhs, i64 51068
  %scevgep3106 = getelementptr i8, ptr %i.jhs, i64 101708
  %scevgep3108 = getelementptr i8, ptr %i.jhs, i64 101712
  %scevgep3110 = getelementptr i8, ptr %i.jhs, i64 51080
  %scevgep3112 = getelementptr i8, ptr %i.jhs, i64 51084
  %scevgep3114 = getelementptr i8, ptr %i.jhs, i64 49724
  %scevgep3116 = getelementptr i8, ptr %i.jhs, i64 49728
  %scevgep3118 = getelementptr i8, ptr %i.jhs, i64 49732
  %scevgep3120 = getelementptr i8, ptr %i.jhs, i64 49736
  %scevgep3122 = getelementptr i8, ptr %i.jhs, i64 50620
  %scevgep3124 = getelementptr i8, ptr %i.jhs, i64 50624
  %scevgep3126 = getelementptr i8, ptr %i.jhs, i64 50628
  %scevgep3128 = getelementptr i8, ptr %i.jhs, i64 50632
  %i.jhw = insertelement <4 x i64> poison, i64 %i.jhl, i64 0
  %i.jhx = shufflevector <4 x i64> %i.jhw, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.jhy = or disjoint <4 x i64> %i.jhx, <i64 4, i64 8, i64 8, i64 4>
  %scevgep3304 = getelementptr i8, ptr %i.jhm, i64 -1344
  %scevgep3309 = getelementptr i8, ptr %i.jhm, i64 -440
  %scevgep3311 = getelementptr i8, ptr %i.jhm, i64 -892
  %scevgep3313 = getelementptr i8, ptr %i.jhm, i64 12
  %scevgep3315 = getelementptr i8, ptr %i.jhm, i64 -1320
  %scevgep3317 = getelementptr i8, ptr %i.jhm, i64 -432
  %scevgep3319 = getelementptr i8, ptr %i.jhm, i64 -876
  %scevgep3329 = getelementptr i8, ptr %i.jhm, i64 -1344
  %scevgep3331 = getelementptr i8, ptr %i.jhm, i64 1364
  %scevgep3387 = getelementptr i8, ptr %i.jhs, i64 50176
  %scevgep3389 = getelementptr i8, ptr %i.jhs, i64 50180
  %scevgep3391 = getelementptr i8, ptr %i.jhm, i64 -1792
  %scevgep3393 = getelementptr i8, ptr %i.jhm, i64 1796
  %scevgep3395 = getelementptr i8, ptr %i.jhk, i64 -448
  %scevgep3397 = getelementptr i8, ptr %i.jhk, i64 452
  %scevgep3399 = getelementptr i8, ptr %i.jhj, i64 -452
  %scevgep3401 = getelementptr i8, ptr %i.jhj, i64 456
  %scevgep3478 = getelementptr i8, ptr %i.jhk, i64 4
  %scevgep3480 = getelementptr i8, ptr %i.jhm, i64 -452
  %scevgep3482 = getelementptr i8, ptr %i.jhm, i64 456
  %scevgep3514 = getelementptr i8, ptr %i.jhj, i64 16
  %scevgep3565 = getelementptr i8, ptr %i.jhm, i64 -1328
  %scevgep3567 = getelementptr i8, ptr %i.jhm, i64 1344
  %invariant.op4895 = sub i64 %i.jht, %i.jhn
  %invariant.op4897 = sub i64 %i.jht, %i.jhn
  %i.jhz = shufflevector <2 x ptr> %i.jhr, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.jia = ptrtoaddr <4 x ptr> %i.jhz to <4 x i64>
  br label %.preheader833.i

.preheader833.i:                                  ; preds = %._crit_edge939.i, %.preheader833.preheader.i
  %indvars.iv1055.i = phi i32 [ 0, %.preheader833.preheader.i ], [ %indvars.iv.next1056.i, %._crit_edge939.i ] ; 2 uses
  %indvars.iv947.i = phi i32 [ 0, %.preheader833.preheader.i ], [ %indvars.iv.next948.i, %._crit_edge939.i ] ; 2 uses
  %.0740941.i = phi i32 [ 0, %.preheader833.preheader.i ], [ %i.jiy, %._crit_edge939.i ] ; 4 uses
  %i.jib = mul nuw nsw i32 %.0740941.i, 92        ; 5 uses
  %i.jic = add nuw nsw i32 %i.jib, 112            ; 2 uses
  %i.jid = tail call i32 @llvm.smin.i32(i32 %i.jic, i32 %i.ayd) ; 3 uses
  %i.jie = sub nsw i32 %i.jid, %i.jib             ; 6 uses
  %i.jif = icmp sgt i32 %i.jic, %i.ayd
  %i.jig = icmp sgt i32 %i.ayd, %i.jib
  %i.jih = add nsw i32 %i.jie, -3                 ; 2 uses
  %i.jii = tail call i32 @llvm.smin.i32(i32 %i.jih, i32 5)
  %i.jij = icmp sgt i32 %i.jie, 6                 ; 2 uses
  %i.jik = add nsw i32 %i.jie, -4                 ; 5 uses
  %i.jil = icmp sgt i32 %i.jie, 8                 ; 3 uses
  %i.jim = add nsw i32 %i.jie, -2
  %i.jin = icmp sgt i32 %i.jie, 4
  %i.jio = icmp eq i32 %.0740941.i, 0
  %i.jip = select i1 %i.jio, i32 9, i32 10        ; 3 uses
  %i.jiq = add nuw nsw i32 %i.jip, %i.jib         ; 2 uses
  %i.jir = icmp eq i32 %.0740941.i, %i.jhi        ; 2 uses
  %.neg.i540 = select i1 %i.jir, i32 -9, i32 -10
  %i.jis = add nsw i32 %i.jid, %.neg.i540         ; 2 uses
  %i.jit = icmp slt i32 %i.jiq, %i.jis
  %i.jiu = sext i32 %i.jii to i64
  %i.jiv = add i32 %i.jip, %indvars.iv1055.i
  %i.jiw = mul i32 %i.jiv, %i.bo
  %i.jix = mul nuw nsw i32 %i.jip, 112
  %invariant.op.i = add nsw i64 %i.jiu, -1
  br label %bb.pb

._crit_edge942.split.i:                           ; preds = %._crit_edge939.i
  tail call void @free(ptr noundef %i.jhm) #27, !noalias !277
  tail call void @free(ptr noundef %i.jhs) #27, !noalias !277
  tail call void @free(ptr noundef %i.jhj) #27, !noalias !277
  tail call void @free(ptr noundef %i.jhk) #27, !noalias !277
  tail call void @free(ptr noundef %i.jho) #27, !noalias !277
  tail call void @free(ptr noundef %i.jhp) #27, !noalias !277
  br label %demosaic_box3.exit

._crit_edge939.i:                                 ; preds = %._crit_edge935.split.i
  %i.jiy = add nuw nsw i32 %.0740941.i, 1
  %indvars.iv.next948.i = add i32 %indvars.iv947.i, %i.apo
  %indvars.iv.next1056.i = add nuw i32 %indvars.iv1055.i, 92
  br i1 %i.jir, label %._crit_edge942.split.i, label %.preheader833.i

bb.pb:                                            ; preds = %._crit_edge935.split.i, %.preheader833.i
  %indvars.iv1057.i = phi i32 [ %i.jiw, %.preheader833.i ], [ %indvars.iv.next1058.i, %._crit_edge935.split.i ] ; 2 uses
  %indvars.iv1018.i = phi i32 [ 0, %.preheader833.i ], [ %indvars.iv.next1019.i, %._crit_edge935.split.i ] ; 8 uses
  %indvars.iv1016.i = phi i32 [ 112, %.preheader833.i ], [ %indvars.iv.next1017.i, %._crit_edge935.split.i ] ; 7 uses
  %indvars.iv949.i = phi i32 [ %indvars.iv947.i, %.preheader833.i ], [ %indvars.iv.next950.i, %._crit_edge935.split.i ] ; 2 uses
  %.0745937.i = phi i32 [ 0, %.preheader833.i ], [ %i.luo, %._crit_edge935.split.i ] ; 5 uses
  %smin3639 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1016.i)
  %i.jiz = mul i32 %.0745937.i, 92
  %i.jja = or disjoint i32 %i.jiz, 1
  %smax3640 = call i32 @llvm.smax.i32(i32 %smin3639, i32 %i.jja)
  %i.jjb = add i32 %indvars.iv1018.i, -1
  %i.jjc = add i32 %smax3640, %i.jjb              ; 3 uses
  %i.jjd = zext i32 %i.jjc to i64
  %i.jje = add nuw nsw i64 %i.jjd, 1              ; 5 uses
  %smin3562 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1016.i)
  %i.jjf = add i32 %smin3562, %indvars.iv1018.i
  %smin3563 = call i32 @llvm.smin.i32(i32 %i.jjf, i32 112)
  %i.jjg = add i32 %smin3563, -4
  %i.jjh = sext i32 %i.jjg to i64
  %i.jji = shl nsw i64 %i.jjh, 2                  ; 2 uses
  %smin3516 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1016.i)
  %i.jjj = add i32 %smin3516, %indvars.iv1018.i
  %smin3517 = call i32 @llvm.smin.i32(i32 %i.jjj, i32 112)
  %i.jjk = add i32 %smin3517, -4
  %i.jjl = sext i32 %i.jjk to i64
  %i.jjm = shl nsw i64 %i.jjl, 2                  ; 5 uses
  %scevgep3527 = getelementptr i8, ptr %scevgep3526, i64 %i.jjm
  %smin3323 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1016.i)
  %i.jjn = add i32 %smin3323, %indvars.iv1018.i
  %smin3324 = call i32 @llvm.smin.i32(i32 %i.jjn, i32 112)
  %i.jjo = add i32 %smin3324, -3
  %smax3325 = call i32 @llvm.smax.i32(i32 %i.jjo, i32 5)
  %i.jjp = add nsw i32 %smax3325, -4
  %i.jjq = lshr i32 %i.jjp, 1
  %smin3301 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1016.i)
  %i.jjr = add i32 %smin3301, %indvars.iv1018.i
  %smin3302 = call i32 @llvm.smin.i32(i32 %i.jjr, i32 112)
  %i.jjs = add i32 %smin3302, -3
  %smax3303 = call i32 @llvm.smax.i32(i32 %i.jjs, i32 5)
  %i.jjt = add nsw i32 %smax3303, -4
  %i.jju = lshr i32 %i.jjt, 1
  %i.jjv = add i32 %indvars.iv1018.i, -1
  %smin1146 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1016.i)
  %i.jjw = add i32 %smin1146, %indvars.iv1018.i
  %smin1147 = call i32 @llvm.smin.i32(i32 %i.jjw, i32 112) ; 11 uses
  %i.jjx = add i32 %smin1147, -4
  %i.jjy = sext i32 %i.jjx to i64                 ; 10 uses
  %i.jjz = add i32 %smin1147, -3                  ; 3 uses
  %i.jka = sext i32 %i.jjz to i64                 ; 2 uses
  %i.jkb = add nsw i64 %i.jjy, 336
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.jjz, i32 5)
  %i.jkc = add nsw i32 %smax.i, -4
  %i.jkd = lshr i32 %i.jkc, 1
  %i.jke = mul i32 %.0745937.i, 92                ; 8 uses
  %i.jkf = add i32 %i.jke, 112                    ; 2 uses
  %i.jkg = tail call i32 @llvm.smin.i32(i32 %i.jkf, i32 %i.bo) ; 4 uses
  %i.jkh = sub nsw i32 %i.jkg, %i.jke             ; 5 uses
  %i.jki = tail call i32 @llvm.smin.i32(i32 %i.jkh, i32 112) ; 3 uses
  %i.jkj = icmp sgt i32 %i.jkf, %i.bo
  %or.cond794.i = select i1 %i.jif, i1 true, i1 %i.jkj
  br i1 %or.cond794.i, label %bb.pc, label %bb.pd

bb.pc:                                            ; preds = %bb.pb
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(50176) %i.jhj, i8 0, i64 50176, i1 false), !noalias !277
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(150528) %i.jhs, i8 0, i64 150528, i1 false), !noalias !277
  br label %bb.pd

bb.pd:                                            ; preds = %bb.pc, %bb.pb
  %i.jkk = icmp sgt i32 %i.bo, %i.jke
  %or.cond943.i = select i1 %i.jig, i1 %i.jkk, i1 false
  br i1 %or.cond943.i, label %iter.check3662.preheader, label %._crit_edge842.split.i

iter.check3662.preheader:                         ; preds = %bb.pd
  %min.iters.check3642 = icmp ult i32 %i.jjc, 3
  %min.iters.check3644 = icmp ult i32 %i.jjc, 31
  %i.jkl = and i64 %i.jje, 28
  %n.vec3646 = and i64 %i.jje, 8589934560         ; 6 uses
  %i.jkm = trunc i64 %n.vec3646 to i32
  %i.jkn = add i32 %i.jke, %i.jkm
  %cmp.n3657 = icmp eq i64 %i.jje, %n.vec3646
  %min.epilog.iters.check3665 = icmp eq i64 %i.jkl, 0
  %n.vec3667 = and i64 %i.jje, 8589934588         ; 5 uses
  %i.jko = trunc i64 %n.vec3667 to i32
  %i.jkp = add i32 %i.jke, %i.jko
  %cmp.n3675 = icmp eq i64 %i.jje, %n.vec3667
  br label %iter.check3662

._crit_edge842.split.i:                           ; preds = %._crit_edge.i547, %bb.pd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27, !noalias !282
  br i1 %i.jij, label %.lr.ph850.i, label %._crit_edge851.split.thread.i

._crit_edge851.split.thread.i:                    ; preds = %._crit_edge842.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27, !noalias !282
  br label %.preheader832.i

.lr.ph850.i:                                      ; preds = %._crit_edge842.split.i
  %i.jkq = icmp sgt i32 %i.jkh, 8
  br i1 %i.jkq, label %.lr.ph846.i.preheader, label %._crit_edge851.split.i

.lr.ph846.i.preheader:                            ; preds = %.lr.ph850.i
  %i.jkr = add nsw i64 %i.jjy, -4                 ; 3 uses
  %min.iters.check3609 = icmp ult i64 %i.jkr, 8
  %n.vec3611 = and i64 %i.jkr, -8                 ; 4 uses
  %i.jks = or disjoint i64 %n.vec3611, 4
  %cmp.n3623 = icmp eq i64 %i.jkr, %n.vec3611
  br label %.lr.ph846.i

iter.check3662:                                   ; preds = %iter.check3662.preheader, %._crit_edge.i547
  %indvars.iv951.i = phi i32 [ %indvars.iv.next952.i, %._crit_edge.i547 ], [ %indvars.iv949.i, %iter.check3662.preheader ] ; 3 uses
  %indvars.iv.i546 = phi i32 [ %indvars.iv.next.i548, %._crit_edge.i547 ], [ 0, %iter.check3662.preheader ] ; 3 uses
  %.0746839.i = phi i32 [ %i.jng, %._crit_edge.i547 ], [ %i.jib, %iter.check3662.preheader ] ; 2 uses
  %i.jkt = sext i32 %indvars.iv.i546 to i64       ; 6 uses
  %i.jku = zext i32 %indvars.iv951.i to i64       ; 6 uses
  %i.jkv = shl i32 %.0746839.i, 2
  %i.jkw = and i32 %i.jkv, 28                     ; 2 uses
  %i.jkx = lshr i32 %.fr1043, %i.jkw
  %i.jky = and i32 %i.jkx, 3
  %i.jkz = or disjoint i32 %i.jkw, 2
  %i.jla = lshr i32 %.fr1043, %i.jkz
  %i.jlb = and i32 %i.jla, 3
  %i.jlc = zext nneg i32 %i.jlb to i64            ; 2 uses
  %i.jld = getelementptr inbounds nuw [50176 x i8], ptr %i.jhs, i64 %i.jlc ; 3 uses
  %i.jle = zext nneg i32 %i.jky to i64            ; 2 uses
  %i.jlf = getelementptr inbounds nuw [50176 x i8], ptr %i.jhs, i64 %i.jle ; 3 uses
  br i1 %min.iters.check3642, label %vec.epilog.scalar.ph3663.preheader, label %vector.memcheck3626

vector.memcheck3626:                              ; preds = %iter.check3662
  %i.jlg = sext i32 %indvars.iv.i546 to i64
  %i.jlh = shl nsw i64 %i.jlg, 2                  ; 3 uses
  %i.jli = add i64 %i.jlh, %i.jhn
  %i.jlj = zext i32 %indvars.iv951.i to i64
  %i.jlk = add nsw i64 %i.aym, %i.jlj
  %i.jll = shl nsw i64 %i.jlk, 2
  %i.jlm = add i64 %i.jll, %.13630                ; 3 uses
  %i.jln = mul nuw nsw i64 %i.jle, 50176          ; 2 uses
  %i.jlo = mul nuw nsw i64 %i.jlc, 50176          ; 2 uses
  %.reass4896 = add i64 %i.jlo, %invariant.op4895
  %diff.check3628 = icmp ugt i64 %.reass4896, -128
  %i.jlp = add i64 %i.jlo, %i.jht
  %i.jlq = add i64 %i.jlp, %i.jlh
  %i.jlr = sub i64 %i.jlm, %i.jlq
  %diff.check3631 = icmp ugt i64 %i.jlr, -128
  %conflict.rdx3632 = or i1 %diff.check3628, %diff.check3631
  %.reass4898 = add i64 %i.jln, %invariant.op4897
  %diff.check3633 = icmp ugt i64 %.reass4898, -128
  %conflict.rdx3634 = or i1 %conflict.rdx3632, %diff.check3633
  %i.jls = add i64 %i.jln, %i.jht
  %i.jlt = add i64 %i.jls, %i.jlh
  %i.jlu = sub i64 %i.jlm, %i.jlt
  %diff.check3635 = icmp ugt i64 %i.jlu, -128
  %conflict.rdx3636 = or i1 %conflict.rdx3634, %diff.check3635
  %i.jlv = sub i64 %i.jlm, %i.jli
  %diff.check3637 = icmp ugt i64 %i.jlv, -128
  %conflict.rdx3638 = or i1 %conflict.rdx3636, %diff.check3637
  br i1 %conflict.rdx3638, label %vec.epilog.scalar.ph3663.preheader, label %vector.main.loop.iter.check3643

vector.main.loop.iter.check3643:                  ; preds = %vector.memcheck3626
  br i1 %min.iters.check3644, label %vec.epilog.ph3666, label %vector.ph3645

vector.ph3645:                                    ; preds = %vector.main.loop.iter.check3643
  %i.jlw = add nuw nsw i64 %n.vec3646, %i.jku
  %i.jlx = add nsw i64 %n.vec3646, %i.jkt
  %invariant.gep4891 = getelementptr [4 x i8], ptr %i.ayn, i64 %i.jku
  br label %vector.body3649

vector.body3649:                                  ; preds = %vector.body3649, %vector.ph3645
  %index3650 = phi i64 [ 0, %vector.ph3645 ], [ %index.next3655, %vector.body3649 ] ; 3 uses
  %i.jly = add i64 %index3650, %i.jkt             ; 3 uses
  %gep4892 = getelementptr [4 x i8], ptr %invariant.gep4891, i64 %index3650 ; 4 uses
  %i.jlz = getelementptr inbounds nuw i8, ptr %gep4892, i64 32
  %i.jma = getelementptr inbounds nuw i8, ptr %gep4892, i64 64
  %i.jmb = getelementptr inbounds nuw i8, ptr %gep4892, i64 96
  %wide.load3651 = load <8 x float>, ptr %gep4892, align 4, !tbaa !22, !alias.scope !280, !noalias !277
  %wide.load3652 = load <8 x float>, ptr %i.jlz, align 4, !tbaa !22, !alias.scope !280, !noalias !277
  %wide.load3653 = load <8 x float>, ptr %i.jma, align 4, !tbaa !22, !alias.scope !280, !noalias !277
  %wide.load3654 = load <8 x float>, ptr %i.jmb, align 4, !tbaa !22, !alias.scope !280, !noalias !277
  %i.jmc = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %wide.load3651, <8 x float> zeroinitializer)
  %i.jmd = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %wide.load3652, <8 x float> zeroinitializer)
  %i.jme = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %wide.load3653, <8 x float> zeroinitializer)
  %i.jmf = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %wide.load3654, <8 x float> zeroinitializer)
end_hunk_0
begin_hunk_1_@process:bb.a
  %indvars.iv1059.i = phi i32 [ %i.lhc, %.lr.ph930.preheader.i ], [ %indvars.iv.next1060.i, %._crit_edge931.i ] ; 2 uses
  %.0739932.i = phi i32 [ %i.jiq, %.lr.ph930.preheader.i ], [ %i.lve, %._crit_edge931.i ]
  %i.lup = sext i32 %indvars.iv1059.i to i64      ; 3 uses
  %i.luq = sext i32 %indvars.iv1063.i to i64      ; 3 uses
  br i1 %min.iters.check2941, label %scalar.ph2940.preheader, label %vector.ph2942

vector.ph2942:                                    ; preds = %.lr.ph930.i
  %i.lur = add nsw i64 %n.vec2943, %i.luq
  %i.lus = add nsw i64 %i.lhj, %i.lup
  %invariant.gep4907 = getelementptr [4 x i8], ptr %i.aop, i64 %i.lup
  br label %vector.body2946

vector.body2946:                                  ; preds = %vector.body2946, %vector.ph2942
  %index2947 = phi i64 [ 0, %vector.ph2942 ], [ %index.next2952, %vector.body2946 ] ; 3 uses
  %i.lut = add i64 %index2947, %i.luq             ; 3 uses
  %i.luu = getelementptr inbounds [4 x i8], ptr %i.jhs, i64 %i.lut
  %wide.load2948 = load <8 x float>, ptr %i.luu, align 4, !tbaa !22, !noalias !277
  %.idx4587 = shl i64 %index2947, 4
  %gep4908 = getelementptr i8, ptr %invariant.gep4907, i64 %.idx4587
  %i.luv = getelementptr inbounds [4 x i8], ptr %i.jhu, i64 %i.lut
  %wide.load2949 = load <8 x float>, ptr %i.luv, align 4, !tbaa !22, !noalias !277
  %i.luw = getelementptr inbounds [4 x i8], ptr %i.jhv, i64 %i.lut
  %wide.load2950 = load <8 x float>, ptr %i.luw, align 4, !tbaa !22, !noalias !277
  %i.lux = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %wide.load2950, <8 x float> zeroinitializer)
  %i.luy = fmul reassoc nsz arcp contract afn <8 x float> %i.lux, %broadcast.splat2945
  %i.luz = shufflevector <8 x float> %wide.load2948, <8 x float> %wide.load2949, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.lva = call reassoc nsz arcp contract afn <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.luz, <16 x float> zeroinitializer)
  %i.lvb = fmul reassoc nsz arcp contract afn <16 x float> %i.lva, %i.axc
  %i.lvc = shufflevector <8 x float> %i.luy, <8 x float> zeroinitializer, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec2951 = shufflevector <16 x float> %i.lvb, <16 x float> %i.lvc, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec2951, ptr %gep4908, align 4, !tbaa !22, !alias.scope !277, !noalias !280
  %index.next2952 = add nuw i64 %index2947, 8     ; 2 uses
  %i.lvd = icmp eq i64 %index.next2952, %n.vec2943
  br i1 %i.lvd, label %middle.block2953, label %vector.body2946, !llvm.loop !399

middle.block2953:                                 ; preds = %vector.body2946
  br i1 %cmp.n2954, label %._crit_edge931.i, label %scalar.ph2940.preheader

scalar.ph2940.preheader:                          ; preds = %.lr.ph930.i, %middle.block2953
  %indvars.iv1065.i.ph = phi i64 [ %i.luq, %.lr.ph930.i ], [ %i.lur, %middle.block2953 ]
  %indvars.iv1061.i.ph = phi i64 [ %i.lup, %.lr.ph930.i ], [ %i.lus, %middle.block2953 ]
  %.0738926.i.ph = phi i32 [ %i.lgx, %.lr.ph930.i ], [ %i.lhl, %middle.block2953 ]
  br label %scalar.ph2940

._crit_edge931.i:                                 ; preds = %scalar.ph2940, %middle.block2953
  %i.lve = add nuw nsw i32 %.0739932.i, 1         ; 2 uses
  %i.lvf = icmp slt i32 %i.lve, %i.jis
  %indvars.iv.next1060.i = add i32 %indvars.iv1059.i, %i.app
  %indvars.iv.next1064.i = add i32 %indvars.iv1063.i, 112
  br i1 %i.lvf, label %.lr.ph930.i, label %._crit_edge935.split.i

scalar.ph2940:                                    ; preds = %scalar.ph2940.preheader, %scalar.ph2940
  %indvars.iv1065.i = phi i64 [ %indvars.iv.next1066.i, %scalar.ph2940 ], [ %indvars.iv1065.i.ph, %scalar.ph2940.preheader ] ; 4 uses
  %indvars.iv1061.i = phi i64 [ %indvars.iv.next1062.i, %scalar.ph2940 ], [ %indvars.iv1061.i.ph, %scalar.ph2940.preheader ] ; 2 uses
  %.0738926.i = phi i32 [ %i.lvu, %scalar.ph2940 ], [ %.0738926.i.ph, %scalar.ph2940.preheader ]
  %i.lvg = getelementptr inbounds [4 x i8], ptr %i.jhs, i64 %indvars.iv1065.i
  %i.lvh = load float, ptr %i.lvg, align 4, !tbaa !22, !noalias !277
  %i.lvi = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.lvh, float 0.000000e+00)
  %i.lvj = getelementptr inbounds [4 x i8], ptr %i.aop, i64 %indvars.iv1061.i
  %i.lvk = getelementptr inbounds [4 x i8], ptr %i.jhu, i64 %indvars.iv1065.i
  %i.lvl = load float, ptr %i.lvk, align 4, !tbaa !22, !noalias !277
  %i.lvm = getelementptr inbounds [4 x i8], ptr %i.jhv, i64 %indvars.iv1065.i
  %i.lvn = load float, ptr %i.lvm, align 4, !tbaa !22, !noalias !277
  %i.lvo = insertelement <4 x float> poison, float %i.lvl, i64 0
  %i.lvp = insertelement <4 x float> %i.lvo, float %i.lvn, i64 1
  %i.lvq = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.lvi, i64 0
  %i.lvr = call reassoc nsz arcp contract afn <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.lvp, <4 x float> <float 0.000000e+00, float 0.000000e+00, float undef, float undef>)
  %i.lvs = shufflevector <4 x float> %i.lvq, <4 x float> %i.lvr, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.lvt = fmul reassoc nsz arcp contract afn <4 x float> %i.lvs, %i.axe
  store <4 x float> %i.lvt, ptr %i.lvj, align 4, !tbaa !22, !alias.scope !277, !noalias !280
  %i.lvu = add nuw nsw i32 %.0738926.i, 1         ; 2 uses
  %indvars.iv.next1062.i = add nsw i64 %indvars.iv1061.i, 4
  %indvars.iv.next1066.i = add nsw i64 %indvars.iv1065.i, 1
  %i.lvv = icmp slt i32 %i.lvu, %i.lgz
  br i1 %i.lvv, label %scalar.ph2940, label %._crit_edge931.i, !llvm.loop !400

bb.ph:                                            ; preds = %bb.ox
  %i.lvw = load i32, ptr %i.aoz, align 4, !tbaa !401 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !402)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !405)
  tail call fastcc void @demosaic_ppg(ptr noundef nonnull %i.aop, ptr noundef %i.ayn, i32 noundef %i.bo, i32 noundef %i.ayd, i32 noundef range(i32 10, 9) %.fr1043, float noundef 0.000000e+00, i32 noundef 4)
  %i.lvx = icmp slt i32 %i.ayd, 8
  %or.cond.i549 = or i1 %i.apa, %i.lvx
  br i1 %or.cond.i549, label %demosaic_box3.exit, label %bb.pi

bb.pi:                                            ; preds = %bb.ph
  %i.lvy = load ptr, ptr @lmmse_gamma_in, align 8, !tbaa !407, !noalias !408
  %.not.i550 = icmp eq ptr %i.lvy, null
  br i1 %.not.i550, label %bb.pj, label %.preheader1020.preheader.i

bb.pj:                                            ; preds = %bb.pi
  %i.lvz = tail call ptr @dt_alloc_aligned(i64 noundef 262144) #27, !noalias !402 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.lvz, i64 64) ]
  store ptr %i.lvz, ptr @lmmse_gamma_in, align 8, !tbaa !407, !noalias !408
  %i.lwa = tail call ptr @dt_alloc_aligned(i64 noundef 262144) #27, !noalias !402 ; 5 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.lwa, i64 64) ]
  store ptr %i.lwa, ptr @lmmse_gamma_out, align 8, !tbaa !407, !noalias !408
  %i.lwb = load ptr, ptr @lmmse_gamma_in, align 8, !tbaa !407, !noalias !408 ; 3 uses
  %i.lwc = icmp ne ptr %i.lwb, null
  %i.lwd = icmp ne ptr %i.lwa, null
  %or.cond.i.i568 = select i1 %i.lwc, i1 %i.lwd, i1 false
  br i1 %or.cond.i.i568, label %.preheader.i.i569, label %bb.pk

bb.pk:                                            ; preds = %bb.pj
  tail call void @free(ptr noundef %i.lwb) #27, !noalias !402
  tail call void @free(ptr noundef %i.lwa) #27, !noalias !402
  store ptr null, ptr @lmmse_gamma_in, align 8, !tbaa !407, !noalias !408
  store ptr null, ptr @lmmse_gamma_out, align 8, !tbaa !407, !noalias !408
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.212) #27, !noalias !402
  br label %.preheader1020.preheader.i

.preheader.i.i569:                                ; preds = %bb.pj, %bb.pq
  %indvars.iv.i.i570 = phi i64 [ %indvars.iv.next.i.i571, %bb.pq ], [ 0, %bb.pj ] ; 4 uses
  %i.lwe = trunc nuw nsw i64 %indvars.iv.i.i570 to i32
  %i.lwf = uitofp nneg i32 %i.lwe to double       ; 4 uses
  %i.lwg = fmul reassoc nnan nsz arcp contract afn double %i.lwf, f0x3EF0001000100010 ; 3 uses
  %i.lwh = fcmp reassoc nsz arcp contract afn ugt double %i.lwg, 1.867000e-03
  br i1 %i.lwh, label %bb.pm, label %bb.pl

bb.pl:                                            ; preds = %.preheader.i.i569
  %i.lwi = fmul reassoc nnan nsz arcp contract afn double %i.lwf, f0x3F31001100110011
  br label %bb.pn

bb.pm:                                            ; preds = %.preheader.i.i569
  %i.lwj = tail call fast double @llvm.log.f64(double %i.lwg)
  %i.lwk = fmul reassoc nnan nsz arcp contract afn double %i.lwj, f0x3FDAAAAAAAAAAAAB
  %i.lwl = tail call reassoc nnan nsz arcp contract afn double @llvm.exp.f64(double %i.lwk)
  %i.lwm = fmul reassoc nnan nsz arcp contract afn double %i.lwl, f0x3FF0B60BF5D78812
  %i.lwn = fadd reassoc nsz arcp contract afn double %i.lwm, -4.444500e-02
  br label %bb.pn

bb.pn:                                            ; preds = %bb.pm, %bb.pl
  %i.lwo = phi reassoc nsz arcp contract afn double [ %i.lwi, %bb.pl ], [ %i.lwn, %bb.pm ]
  %i.lwp = fptrunc reassoc nsz arcp contract afn double %i.lwo to float
  %i.lwq = getelementptr inbounds nuw [4 x i8], ptr %i.lwb, i64 %indvars.iv.i.i570
  store float %i.lwp, ptr %i.lwq, align 4, !tbaa !22, !noalias !402
  %i.lwr = fcmp reassoc nsz arcp contract afn ugt double %i.lwg, 3.174600e-02
  br i1 %i.lwr, label %bb.pp, label %bb.po

bb.po:                                            ; preds = %bb.pn
  %i.lws = fmul reassoc nnan nsz arcp contract afn double %i.lwf, f0x3EAE1E3C3C5A5A78
  br label %bb.pq

bb.pp:                                            ; preds = %bb.pn
  %i.lwt = fmul reassoc nnan nsz arcp contract afn double %i.lwf, f0x3EEEA3850F60F739
  %i.lwu = fadd reassoc nnan nsz arcp contract afn double %i.lwt, f0x3FA5C99942418271
  %i.lwv = tail call reassoc nnan nsz arcp contract afn double @llvm.log.f64(double %i.lwu)
  %i.lww = fmul reassoc nnan nsz arcp contract afn double %i.lwv, 2.400000e+00
  %i.lwx = tail call reassoc nsz arcp contract afn double @llvm.exp.f64(double %i.lww)
  br label %bb.pq

bb.pq:                                            ; preds = %bb.pp, %bb.po
  %i.lwy = phi reassoc nsz arcp contract afn double [ %i.lws, %bb.po ], [ %i.lwx, %bb.pp ]
  %i.lwz = fptrunc reassoc nsz arcp contract afn double %i.lwy to float
  %i.lxa = getelementptr inbounds nuw [4 x i8], ptr %i.lwa, i64 %indvars.iv.i.i570
  store float %i.lwz, ptr %i.lxa, align 4, !tbaa !22, !noalias !402
  %indvars.iv.next.i.i571 = add nuw nsw i64 %indvars.iv.i.i570, 1 ; 2 uses
  %exitcond.not.i.i572 = icmp eq i64 %indvars.iv.next.i.i571, 65536
  br i1 %exitcond.not.i.i572, label %.preheader1020.preheader.i, label %.preheader.i.i569

.preheader1020.preheader.i:                       ; preds = %bb.pq, %bb.pk, %bb.pi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27, !noalias !408
  %i.lxb = tail call ptr @dt_alloc_aligned(i64 noundef 443904) #27, !noalias !402 ; 31 uses
  %i.lxc = ptrtoaddr ptr %i.lxb to i64
  call void @llvm.assume(i1 true) [ "align"(ptr %i.lxb, i64 64) ]
  store ptr %i.lxb, ptr %i.b, align 16, !tbaa !407, !noalias !408
  %i.lxd = getelementptr inbounds nuw i8, ptr %i.lxb, i64 73984 ; 14 uses
  store ptr %i.lxd, ptr %i.apb, align 8, !tbaa !407, !noalias !408
  %i.lxe = getelementptr inbounds nuw i8, ptr %i.lxb, i64 147968 ; 6 uses
  store ptr %i.lxe, ptr %i.apc, align 16, !tbaa !407, !noalias !408
  %i.lxf = getelementptr inbounds nuw i8, ptr %i.lxb, i64 221952 ; 5 uses
  store ptr %i.lxf, ptr %i.apd, align 8, !tbaa !407, !noalias !408
  %i.lxg = getelementptr inbounds nuw i8, ptr %i.lxb, i64 295936 ; 5 uses
  store ptr %i.lxg, ptr %i.ape, align 16, !tbaa !407, !noalias !408
  %i.lxh = getelementptr inbounds nuw i8, ptr %i.lxb, i64 369920 ; 10 uses
  store ptr %i.lxh, ptr %i.apf, align 8, !tbaa !407, !noalias !408
  %i.lxi = icmp ult i32 %i.lvw, 2
  %i.lxj = select i1 %i.lxi, i32 %i.lvw, i32 3    ; 2 uses
  %i.lxk = tail call i32 @llvm.usub.sat.i32(i32 %i.lvw, i32 2) ; 2 uses
  %i.lxl = add nsw i32 %i.ayd, -17
  %i.lxm = sdiv i32 %i.lxl, 112                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(443904) %i.lxb, i8 0, i64 443904, i1 false), !noalias !402
  %.not1186.i = icmp eq i32 %i.lxj, 0
  %i.lxn = icmp sgt i32 %i.lxk, 0
  %i.lxo = tail call i32 @llvm.smax.i32(i32 %i.lxm, i32 0)
  %scevgep3947 = getelementptr i8, ptr %i.lxb, i64 295400
  %scevgep4016 = getelementptr i8, ptr %i.lxb, i64 295400
  %i.lxp = add i64 %i.lxc, 372112
  %i.lxq = getelementptr inbounds nuw i8, ptr %i.ayn, i64 128
  %i.lxr = getelementptr inbounds nuw i8, ptr %i.ayn, i64 256
  %i.lxs = getelementptr inbounds nuw i8, ptr %i.ayn, i64 384
  br label %.preheader1020.i

.preheader1020.i:                                 ; preds = %._crit_edge1180.i, %.preheader1020.preheader.i
  %indvars.iv1128 = phi i32 [ %indvars.iv.next1129, %._crit_edge1180.i ], [ 6, %.preheader1020.preheader.i ] ; 2 uses
  %indvars.iv1109 = phi i32 [ %indvars.iv.next1110, %._crit_edge1180.i ], [ 7, %.preheader1020.preheader.i ] ; 3 uses
  %indvars.iv1104 = phi i32 [ %indvars.iv.next1105, %._crit_edge1180.i ], [ 8, %.preheader1020.preheader.i ] ; 2 uses
  %indvars.iv1087 = phi i32 [ %indvars.iv.next1088, %._crit_edge1180.i ], [ 5, %.preheader1020.preheader.i ] ; 2 uses
  %indvars.iv1084 = phi i32 [ %indvars.iv.next1085, %._crit_edge1180.i ], [ 4, %.preheader1020.preheader.i ] ; 2 uses
  %indvars.iv = phi i32 [ %indvars.iv.next, %._crit_edge1180.i ], [ 128, %.preheader1020.preheader.i ] ; 2 uses
  %indvars.iv1304.i = phi i32 [ %indvars.iv.next1305.i, %._crit_edge1180.i ], [ 0, %.preheader1020.preheader.i ] ; 2 uses
  %indvars.iv.i553 = phi i32 [ %indvars.iv.next.i558, %._crit_edge1180.i ], [ 0, %.preheader1020.preheader.i ] ; 2 uses
  %.08821182.i = phi i32 [ %i.maa, %._crit_edge1180.i ], [ 0, %.preheader1020.preheader.i ] ; 5 uses
  %smin1133 = call i32 @llvm.smin.i32(i32 %i.ayd, i32 %indvars.iv) ; 5 uses
  %i.lxt = add i32 %smin1133, %indvars.iv1084
  %i.lxu = call i32 @llvm.smax.i32(i32 %i.lxt, i32 5)
  %smax1125 = zext nneg i32 %i.lxu to i64         ; 4 uses
  %i.lxv = add i32 %smin1133, %indvars.iv1109
  %i.lxw = call i32 @llvm.smax.i32(i32 %i.lxv, i32 2)
  %smax1117 = zext nneg i32 %i.lxw to i64         ; 3 uses
  %i.lxx = add i32 %smin1133, %indvars.iv1104
  %i.lxy = call i32 @llvm.smax.i32(i32 %i.lxx, i32 1)
  %smax1106 = zext nneg i32 %i.lxy to i64
  %i.lxz = add i32 %smin1133, %indvars.iv1087
  %i.lya = call i32 @llvm.umax.i32(i32 %i.lxz, i32 2)
  %umax = zext i32 %i.lya to i64
  %i.lyb = mul nuw i32 %.08821182.i, 112          ; 4 uses
  %i.lyc = add nuw nsw i32 %i.lyb, 128
  %i.lyd = tail call i32 @llvm.smin.i32(i32 %i.lyc, i32 %i.ayd) ; 2 uses
  %i.lye = sub nsw i32 %i.lyd, %i.lyb             ; 6 uses
  %i.lyf = add nsw i32 %i.lye, 8
  %i.lyg = icmp sgt i32 %i.lye, 0                 ; 3 uses
  %i.lyh = icmp sgt i32 %i.lye, -4
  %i.lyi = add i32 %i.lyb, -4
  %i.lyj = icmp sgt i32 %i.lye, -8
  %i.lyk = icmp sgt i32 %i.lye, -6
  %i.lyl = icmp eq i32 %.08821182.i, 0            ; 2 uses
  %i.lym = select i1 %i.lyl, i32 6, i32 0         ; 3 uses
  %i.lyn = icmp eq i32 %.08821182.i, %i.lxm       ; 2 uses
  %.neg949.i = select i1 %i.lyn, i32 -6, i32 0    ; 2 uses
  %i.lyo = add nsw i32 %i.lyf, %.neg949.i         ; 2 uses
  %i.lyp = icmp slt i32 %i.lye, -5
  %i.lyq = add nsw i32 %i.lyo, -1
  %i.lyr = icmp slt i32 %i.lym, %i.lyq
  %i.lys = add nuw nsw i32 %i.lym, 2
  %i.lyt = add nsw i32 %i.lyo, -2
  %i.lyu = icmp slt i32 %i.lys, %i.lyt
  %i.lyv = select i1 %i.lyl, i32 4, i32 8         ; 3 uses
  %i.lyw = or disjoint i32 %i.lyv, %i.lyb
  %.neg950.i = select i1 %i.lyn, i32 -4, i32 -8
  %i.lyx = add nsw i32 %i.lyd, %.neg950.i         ; 2 uses
  %i.lyy = icmp slt i32 %i.lyw, %i.lyx
  %i.lyz = zext nneg i32 %i.lym to i64            ; 5 uses
  %i.lza = add nuw nsw i64 %i.lyz, 2              ; 3 uses
  %narrow.i = add nuw nsw i32 %i.lyv, 4
  %6 = or disjoint i32 %i.lyv, %indvars.iv1304.i
  %7 = zext i32 %6 to i64
  %i.lzb = add i32 %.neg949.i, %smin1133          ; 2 uses
  %i.lzc = add i32 %i.lzb, %indvars.iv1109
  %i.lzd = sext i32 %i.lzc to i64                 ; 2 uses
  %i.lze = add i32 %i.lzb, %indvars.iv1128
  %i.lzf = sext i32 %i.lze to i64                 ; 3 uses
  %i.lzg = mul nuw nsw i64 %i.lyz, 544            ; 6 uses
  %i.lzh = mul nuw nsw i64 %i.lyz, 544            ; 8 uses
  %i.lzi = add nuw nsw i64 %i.lzh, 552
  %i.lzj = add nuw nsw i64 %i.lzh, 1644
  %i.lzk = mul nuw nsw i64 %i.lyz, 544            ; 5 uses
  %scevgep3945 = getelementptr i8, ptr %i.lxb, i64 %i.lzk
  %i.lzl = mul nsw i64 %i.lzd, 544                ; 2 uses
  %scevgep3948 = getelementptr i8, ptr %scevgep3947, i64 %i.lzl
  %i.lzm = or disjoint i64 %i.lzk, 8
  %i.lzn = or disjoint i64 %i.lzk, 4
  %scevgep4014 = getelementptr i8, ptr %i.lxb, i64 %i.lzk
  %scevgep4017 = getelementptr i8, ptr %scevgep4016, i64 %i.lzl
  %invariant.op = or disjoint i64 %i.lzk, 4
  %i.lzo = getelementptr i8, ptr %i.lxb, i64 %i.lzh
  %i.lzp = getelementptr i8, ptr %i.lzo, i64 74536
  %i.lzq = getelementptr i8, ptr %i.lxb, i64 %i.lzh
  %i.lzr = getelementptr i8, ptr %i.lzq, i64 75628
  %i.lzs = getelementptr i8, ptr %i.lxb, i64 %i.lzh
  %i.lzt = getelementptr i8, ptr %i.lzs, i64 73992
  %i.lzu = getelementptr i8, ptr %i.lxb, i64 %i.lzh
  %i.lzv = getelementptr i8, ptr %i.lzu, i64 76172
  %i.lzw = getelementptr i8, ptr %i.lxb, i64 %i.lzg
  %i.lzx = getelementptr i8, ptr %i.lzw, i64 74536
  %i.lzy = getelementptr i8, ptr %i.lxb, i64 %i.lzg
  %i.lzz = getelementptr i8, ptr %i.lzy, i64 75628
  br label %bb.pr

._crit_edge1183.split.i:                          ; preds = %._crit_edge1180.i
  tail call void @free(ptr noundef %i.lxb) #27, !noalias !402
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27, !noalias !408
  br label %demosaic_box3.exit

._crit_edge1180.i:                                ; preds = %._crit_edge1176.split.i
  %i.maa = add nuw nsw i32 %.08821182.i, 1
  %indvars.iv.next.i558 = add i32 %indvars.iv.i553, %i.api
  %indvars.iv.next1305.i = add nuw i32 %indvars.iv1304.i, 112
  %exitcond1313.i = icmp eq i32 %.08821182.i, %i.lxo
  %indvars.iv.next = add nuw i32 %indvars.iv, 112
  %indvars.iv.next1085 = add i32 %indvars.iv1084, -112
  %indvars.iv.next1088 = add i32 %indvars.iv1087, -112
  %indvars.iv.next1105 = add i32 %indvars.iv1104, -112
  %indvars.iv.next1110 = add i32 %indvars.iv1109, -112
  %indvars.iv.next1129 = add i32 %indvars.iv1128, -112
  br i1 %exitcond1313.i, label %._crit_edge1183.split.i, label %.preheader1020.i

bb.pr:                                            ; preds = %._crit_edge1176.split.i, %.preheader1020.i
  %indvars.iv1093 = phi i32 [ %indvars.iv.next1094, %._crit_edge1176.split.i ], [ 0, %.preheader1020.i ] ; 8 uses
  %indvars.iv1090 = phi i32 [ %indvars.iv.next1091, %._crit_edge1176.split.i ], [ 128, %.preheader1020.i ] ; 6 uses
  %indvars.iv1207.i = phi i32 [ %indvars.iv.next1208.i, %._crit_edge1176.split.i ], [ %indvars.iv.i553, %.preheader1020.i ] ; 2 uses
  %.08871178.i = phi i32 [ %i.psi, %._crit_edge1176.split.i ], [ 0, %.preheader1020.i ] ; 7 uses
  %smin4756 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1090)
  %i.mab = add i32 %smin4756, %indvars.iv1093
  %smin4757 = call i32 @llvm.smin.i32(i32 %i.mab, i32 128) ; 2 uses
  %i.mac = add nsw i32 %smin4757, 3
  %i.mad = zext i32 %i.mac to i64
  %i.mae = add nsw i64 %i.mad, -3                 ; 2 uses
  %smin4747 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1090)
  %i.maf = add i32 %smin4747, %indvars.iv1093
  %smin4739 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1090)
  %i.mag = add i32 %smin4739, %indvars.iv1093
  %i.mah = mul nuw i32 %.08871178.i, 112
  %i.mai = add i32 %i.mah, 128
  %smin4731 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %i.mai)
  %i.maj = mul i32 %.08871178.i, -112
  %i.mak = add i32 %smin4731, %i.maj
  %smin4429 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1090)
  %i.mal = add i32 %smin4429, %indvars.iv1093
  %smin4430 = call i32 @llvm.smin.i32(i32 %i.mal, i32 128)
  %i.mam = add i32 %smin4430, -1                  ; 3 uses
  %i.man = zext i32 %i.mam to i64
  %i.mao = add nuw nsw i64 %i.man, 1              ; 5 uses
  %i.map = add i32 %indvars.iv1093, -1
  %i.maq = add i32 %indvars.iv1093, -1
  %smin1121 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1090)
  %i.mar = add i32 %smin1121, %indvars.iv1093
  %smin1122 = call i32 @llvm.smin.i32(i32 %i.mar, i32 128)
  %i.mas = add nsw i32 %smin1122, 3
  %i.mat = zext i32 %i.mas to i64                 ; 2 uses
  %i.mau = mul nuw i32 %.08871178.i, 112          ; 5 uses
  %i.mav = add nuw i32 %i.mau, 128
  %i.maw = tail call i32 @llvm.smin.i32(i32 %i.mav, i32 %i.bo) ; 3 uses
  %i.max = sub i32 %i.maw, %i.mau                 ; 7 uses
  %i.may = tail call i32 @llvm.smin.i32(i32 %i.max, i32 128) ; 24 uses
  %i.maz = add nsw i32 %i.may, 8                  ; 2 uses
  br i1 %i.lyg, label %.lr.ph1031.i, label %.preheader1019.i

.lr.ph1031.i:                                     ; preds = %bb.pr
  %i.mba = add nsw i32 %i.may, 4                  ; 2 uses
  %i.mbb = icmp sgt i32 %i.max, 0
  %i.mbc = load ptr, ptr @lmmse_gamma_in, align 8, !noalias !408 ; 4 uses
  %i.mbd = icmp eq ptr %i.mbc, null
  br i1 %i.mbb, label %.lr.ph.i563.preheader, label %.lr.ph1042.i

.lr.ph.i563.preheader:                            ; preds = %.lr.ph1031.i
  %xtraiter4733 = and i32 %i.may, 1
  %i.mbe = icmp eq i32 %i.mak, 1
  %unroll_iter4737 = and i32 %i.may, 254
  %lcmp.mod4735.not = icmp eq i32 %xtraiter4733, 0
  %lcmp.mod4736 = trunc i32 %i.may to i1
  %min.iters.check4432 = icmp ult i32 %i.mam, 7
  %min.iters.check4434 = icmp ult i32 %i.mam, 31
  %i.mbf = and i64 %i.mao, 24
  %n.vec4436 = and i64 %i.mao, 8589934560         ; 8 uses
  %i.mbg = shl nuw nsw i64 %n.vec4436, 2
  %i.mbh = trunc i64 %n.vec4436 to i32
  %i.mbi = or disjoint i32 %i.mbh, 4
  %i.mbj = icmp eq i64 %n.vec4436, 32
  %i.mbk = icmp eq i64 %n.vec4436, 64
  %i.mbl = icmp eq i64 %n.vec4436, 96
  %cmp.n4448 = icmp eq i64 %i.mao, %n.vec4436
  %min.epilog.iters.check4456 = icmp eq i64 %i.mbf, 0
  %n.vec4458 = and i64 %i.mao, 8589934584         ; 5 uses
  %i.mbm = shl nuw nsw i64 %n.vec4458, 2
  %i.mbn = trunc i64 %n.vec4458 to i32
  %i.mbo = or disjoint i32 %i.mbn, 4
  %cmp.n4467 = icmp eq i64 %i.mao, %n.vec4458
  br label %.lr.ph.i563

.preheader1019.i:                                 ; preds = %._crit_edge.i567, %bb.pr
  br i1 %i.lyh, label %.preheader1019.i..lr.ph1042.i_crit_edge, label %._crit_edge1053.i

.preheader1019.i..lr.ph1042.i_crit_edge:          ; preds = %.preheader1019.i
  %.pre1239 = add nsw i32 %i.may, 4
  br label %.lr.ph1042.i

.lr.ph1042.i:                                     ; preds = %.preheader1019.i..lr.ph1042.i_crit_edge, %.lr.ph1031.i
  %.pre-phi1240 = phi i32 [ %.pre1239, %.preheader1019.i..lr.ph1042.i_crit_edge ], [ %i.mba, %.lr.ph1031.i ] ; 2 uses
  %i.mbp = add nsw i32 %i.may, 6
  %i.mbq = sext i32 %i.mbp to i64                 ; 4 uses
  br label %bb.py

.lr.ph.i563:                                      ; preds = %.lr.ph.i563.preheader, %._crit_edge.i567
  %indvar4426 = phi i64 [ %indvar.next4427, %._crit_edge.i567 ], [ 0, %.lr.ph.i563.preheader ] ; 2 uses
  %indvars.iv1217.i = phi i64 [ %indvars.iv.next1218.i, %._crit_edge.i567 ], [ 4, %.lr.ph.i563.preheader ] ; 2 uses
  %indvars.iv1209.i = phi i32 [ %indvars.iv.next1210.i, %._crit_edge.i567 ], [ %indvars.iv1207.i, %.lr.ph.i563.preheader ] ; 3 uses
  %i.mbr = zext i32 %indvars.iv1209.i to i64      ; 10 uses
  %.idx.i564 = mul nuw nsw i64 %indvars.iv1217.i, 544
  %i.mbs = getelementptr inbounds nuw i8, ptr %i.lxh, i64 %.idx.i564 ; 16 uses
  %i.mbt = getelementptr inbounds nuw i8, ptr %i.mbs, i64 16 ; 7 uses
  br i1 %i.mbd, label %iter.check4453, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %.lr.ph.i563
  br i1 %i.mbe, label %.lr.ph.split.i.epil.preheader, label %.lr.ph.split.i

iter.check4453:                                   ; preds = %.lr.ph.i563
  %i.mbu = zext i32 %indvars.iv1209.i to i64
  %i.mbv = add nsw i64 %i.aym, %i.mbu
  %i.mbw = shl nsw i64 %i.mbv, 2
  %i.mbx = add i64 %i.mbw, %.13630
  %i.mby = mul nuw nsw i64 %indvar4426, 544
  %i.mbz = add i64 %i.lxp, %i.mby
  %i.mca = sub i64 %i.mbx, %i.mbz
  %diff.check4428 = icmp ugt i64 %i.mca, -128
  %or.cond4590 = select i1 %min.iters.check4432, i1 true, i1 %diff.check4428
  br i1 %or.cond4590, label %_calc_gamma.exit.us.i.preheader, label %vector.main.loop.iter.check4433

vector.main.loop.iter.check4433:                  ; preds = %iter.check4453
  br i1 %min.iters.check4434, label %vec.epilog.ph4457, label %vector.ph4435

vector.ph4435:                                    ; preds = %vector.main.loop.iter.check4433
  %i.mcb = add nuw nsw i64 %n.vec4436, %i.mbr
  %i.mcc = getelementptr i8, ptr %i.mbt, i64 %i.mbg
  %i.mcd = getelementptr inbounds nuw [4 x i8], ptr %i.ayn, i64 %i.mbr ; 4 uses
  %i.mce = getelementptr inbounds nuw i8, ptr %i.mcd, i64 32
  %i.mcf = getelementptr inbounds nuw i8, ptr %i.mcd, i64 64
  %i.mcg = getelementptr inbounds nuw i8, ptr %i.mcd, i64 96
  %wide.load4442 = load <8 x float>, ptr %i.mcd, align 4, !tbaa !22, !alias.scope !405, !noalias !402
  %wide.load4443 = load <8 x float>, ptr %i.mce, align 4, !tbaa !22, !alias.scope !405, !noalias !402
  %wide.load4444 = load <8 x float>, ptr %i.mcf, align 4, !tbaa !22, !alias.scope !405, !noalias !402
  %wide.load4445 = load <8 x float>, ptr %i.mcg, align 4, !tbaa !22, !alias.scope !405, !noalias !402
  %i.mch = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4442, %broadcast.splat4438
  %i.mci = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4443, %broadcast.splat4438
  %i.mcj = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4444, %broadcast.splat4438
  %i.mck = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4445, %broadcast.splat4438
  %i.mcl = getelementptr i8, ptr %i.mbs, i64 48
  %i.mcm = getelementptr i8, ptr %i.mbs, i64 80
  %i.mcn = getelementptr i8, ptr %i.mbs, i64 112
  store <8 x float> %i.mch, ptr %i.mbt, align 16, !tbaa !22, !noalias !402
  store <8 x float> %i.mci, ptr %i.mcl, align 16, !tbaa !22, !noalias !402
  store <8 x float> %i.mcj, ptr %i.mcm, align 16, !tbaa !22, !noalias !402
  store <8 x float> %i.mck, ptr %i.mcn, align 16, !tbaa !22, !noalias !402
  br i1 %i.mbj, label %middle.block4447, label %vector.body4439.1

vector.body4439.1:                                ; preds = %vector.ph4435
  %next.gep4441.1 = getelementptr i8, ptr %i.mbs, i64 144
  %i.mco = getelementptr inbounds nuw [4 x i8], ptr %i.lxq, i64 %i.mbr ; 4 uses
  %i.mcp = getelementptr inbounds nuw i8, ptr %i.mco, i64 32
  %i.mcq = getelementptr inbounds nuw i8, ptr %i.mco, i64 64
  %i.mcr = getelementptr inbounds nuw i8, ptr %i.mco, i64 96
  %wide.load4442.1 = load <8 x float>, ptr %i.mco, align 4, !tbaa !22, !alias.scope !405, !noalias !402
  %wide.load4443.1 = load <8 x float>, ptr %i.mcp, align 4, !tbaa !22, !alias.scope !405, !noalias !402
  %wide.load4444.1 = load <8 x float>, ptr %i.mcq, align 4, !tbaa !22, !alias.scope !405, !noalias !402
  %wide.load4445.1 = load <8 x float>, ptr %i.mcr, align 4, !tbaa !22, !alias.scope !405, !noalias !402
  %i.mcs = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4442.1, %broadcast.splat4438
  %i.mct = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4443.1, %broadcast.splat4438
  %i.mcu = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4444.1, %broadcast.splat4438
  %i.mcv = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4445.1, %broadcast.splat4438
  %i.mcw = getelementptr i8, ptr %i.mbs, i64 176
  %i.mcx = getelementptr i8, ptr %i.mbs, i64 208
  %i.mcy = getelementptr i8, ptr %i.mbs, i64 240
  store <8 x float> %i.mcs, ptr %next.gep4441.1, align 16, !tbaa !22, !noalias !402
  store <8 x float> %i.mct, ptr %i.mcw, align 16, !tbaa !22, !noalias !402
  store <8 x float> %i.mcu, ptr %i.mcx, align 16, !tbaa !22, !noalias !402
  store <8 x float> %i.mcv, ptr %i.mcy, align 16, !tbaa !22, !noalias !402
  br i1 %i.mbk, label %middle.block4447, label %vector.body4439.2

vector.body4439.2:                                ; preds = %vector.body4439.1
  %next.gep4441.2 = getelementptr i8, ptr %i.mbs, i64 272
  %i.mcz = getelementptr inbounds nuw [4 x i8], ptr %i.lxr, i64 %i.mbr ; 4 uses
  %i.mda = getelementptr inbounds nuw i8, ptr %i.mcz, i64 32
  %i.mdb = getelementptr inbounds nuw i8, ptr %i.mcz, i64 64
  %i.mdc = getelementptr inbounds nuw i8, ptr %i.mcz, i64 96
  %wide.load4442.2 = load <8 x float>, ptr %i.mcz, align 4, !tbaa !22, !alias.scope !405, !noalias !402
  %wide.load4443.2 = load <8 x float>, ptr %i.mda, align 4, !tbaa !22, !alias.scope !405, !noalias !402
  %wide.load4444.2 = load <8 x float>, ptr %i.mdb, align 4, !tbaa !22, !alias.scope !405, !noalias !402
  %wide.load4445.2 = load <8 x float>, ptr %i.mdc, align 4, !tbaa !22, !alias.scope !405, !noalias !402
  %i.mdd = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4442.2, %broadcast.splat4438
  %i.mde = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4443.2, %broadcast.splat4438
  %i.mdf = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4444.2, %broadcast.splat4438
  %i.mdg = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4445.2, %broadcast.splat4438
  %i.mdh = getelementptr i8, ptr %i.mbs, i64 304
  %i.mdi = getelementptr i8, ptr %i.mbs, i64 336
  %i.mdj = getelementptr i8, ptr %i.mbs, i64 368
  store <8 x float> %i.mdd, ptr %next.gep4441.2, align 16, !tbaa !22, !noalias !402
  store <8 x float> %i.mde, ptr %i.mdh, align 16, !tbaa !22, !noalias !402
  store <8 x float> %i.mdf, ptr %i.mdi, align 16, !tbaa !22, !noalias !402
  store <8 x float> %i.mdg, ptr %i.mdj, align 16, !tbaa !22, !noalias !402
  br i1 %i.mbl, label %middle.block4447, label %vector.body4439.3

vector.body4439.3:                                ; preds = %vector.body4439.2
  %next.gep4441.3 = getelementptr i8, ptr %i.mbs, i64 400
  %i.mdk = getelementptr inbounds nuw [4 x i8], ptr %i.lxs, i64 %i.mbr ; 4 uses
  %i.mdl = getelementptr inbounds nuw i8, ptr %i.mdk, i64 32
  %i.mdm = getelementptr inbounds nuw i8, ptr %i.mdk, i64 64
  %i.mdn = getelementptr inbounds nuw i8, ptr %i.mdk, i64 96
  %wide.load4442.3 = load <8 x float>, ptr %i.mdk, align 4, !tbaa !22, !alias.scope !405, !noalias !402
end_hunk_1
begin_hunk_2_@process:bb.a
  store float %i.oqg, ptr %i.opz, align 4, !tbaa !22, !noalias !402
  %i.oqh = getelementptr inbounds nuw i8, ptr %.19081085.i, i64 8 ; 2 uses
  %i.oqi = getelementptr inbounds nuw i8, ptr %.19061086.i, i64 8 ; 2 uses
  %i.oqj = getelementptr inbounds nuw i8, ptr %.19041087.i, i64 8 ; 2 uses
  %i.oqk = getelementptr inbounds nuw i8, ptr %.19021088.i, i64 8 ; 2 uses
  %i.oql = getelementptr inbounds nuw i8, ptr %.19001089.i, i64 8 ; 2 uses
  %i.oqm = getelementptr inbounds nuw i8, ptr %.08951090.i, i64 8 ; 2 uses
  %i.oqn = getelementptr inbounds nuw i8, ptr %.08941091.i, i64 8 ; 2 uses
  %i.oqo = add nuw nsw i32 %.08931092.i, 2        ; 3 uses
  %i.oqp = icmp slt i32 %i.oqo, %i.npv
  br i1 %i.oqp, label %.lr.ph1094.i, label %._crit_edge1095.i, !llvm.loop !464

._crit_edge1095.i:                                ; preds = %.lr.ph1094.i, %bb.rc
  %.1908.lcssa.i = phi ptr [ %gep.i561, %bb.rc ], [ %i.oqh, %.lr.ph1094.i ]
  %.1906.lcssa.i = phi ptr [ %gep1125.i, %bb.rc ], [ %i.oqi, %.lr.ph1094.i ] ; 2 uses
  %.1904.lcssa.i = phi ptr [ %gep1127.i, %bb.rc ], [ %i.oqj, %.lr.ph1094.i ]
  %.1902.lcssa.i = phi ptr [ %gep1129.i, %bb.rc ], [ %i.oqk, %.lr.ph1094.i ]
  %.1900.lcssa.i = phi ptr [ %gep1131.i, %bb.rc ], [ %i.oql, %.lr.ph1094.i ]
  %.0895.lcssa.i = phi ptr [ %i.ool, %bb.rc ], [ %i.oqm, %.lr.ph1094.i ]
  %.0894.lcssa.i = phi ptr [ %i.oor, %bb.rc ], [ %i.oqn, %.lr.ph1094.i ]
  %.0893.lcssa.i = phi i32 [ %i.npq, %bb.rc ], [ %i.oqo, %.lr.ph1094.i ]
  %i.oqq = icmp slt i32 %.0893.lcssa.i, %i.nps
  br i1 %i.oqq, label %bb.rd, label %bb.re

bb.rd:                                            ; preds = %._crit_edge1095.i
  %i.oqr = load float, ptr %.1906.lcssa.i, align 4, !tbaa !22, !noalias !402
  %i.oqs = load float, ptr %.0894.lcssa.i, align 4, !tbaa !22, !noalias !402
  %i.oqt = fadd reassoc nsz arcp contract afn float %i.oqs, %i.oqr
  store float %i.oqt, ptr %.0895.lcssa.i, align 4, !tbaa !22, !noalias !402
  %i.oqu = load float, ptr %.1908.lcssa.i, align 4, !tbaa !22, !noalias !402
  %i.oqv = load float, ptr %.1902.lcssa.i, align 4, !tbaa !22, !noalias !402
  %i.oqw = load float, ptr %.1904.lcssa.i, align 4, !tbaa !22, !noalias !402
  %i.oqx = load float, ptr %.1900.lcssa.i, align 4, !tbaa !22, !noalias !402
  %i.oqy = fadd reassoc nsz arcp contract afn float %i.oqu, %i.oqw
  %i.oqz = fadd reassoc nsz arcp contract afn float %i.oqv, %i.oqx
  %i.ora = fsub reassoc nsz arcp contract afn float %i.oqy, %i.oqz
  %i.orb = fmul reassoc nsz arcp contract afn float %i.ora, 5.000000e-01
  store float %i.orb, ptr %.1906.lcssa.i, align 4, !tbaa !22, !noalias !402
  br label %bb.re

bb.re:                                            ; preds = %bb.rd, %._crit_edge1095.i, %bb.rb, %._crit_edge1114.i
  %indvars.iv.next1276.i = add nuw nsw i64 %indvars.iv1275.i, 1 ; 2 uses
  %exitcond1120.not = icmp eq i64 %indvars.iv.next1276.i, %i.lzd
  %indvar.next3951 = add i64 %indvar3950, 1
  br i1 %exitcond1120.not, label %._crit_edge1123.i, label %.lr.ph1122.i

.preheader1013.i:                                 ; preds = %._crit_edge1135.i, %.preheader1014.i
  br i1 %i.lxn, label %.lr.ph1160.i, label %._crit_edge1161.i

.lr.ph1160.i:                                     ; preds = %.preheader1013.i
  %i.orc = add nuw nsw i32 %i.npq, 2              ; 3 uses
  %i.ord = add nsw i32 %i.nps, -2                 ; 4 uses
  %i.ore = sext i32 %i.ord to i64                 ; 3 uses
  br i1 %i.lyu, label %.lr.ph1143.i.preheader.preheader, label %._crit_edge1161.i

.lr.ph1143.i.preheader.preheader:                 ; preds = %.lr.ph1160.i
  %i.orf = zext nneg i32 %i.npq to i64            ; 3 uses
  %i.org = add nuw nsw i64 %i.orf, 4
  %i.orh = add nsw i32 %.neg.i554, 6
  %i.ori = add i32 %i.orh, %i.may                 ; 2 uses
  %i.orj = sext i32 %i.ori to i64
  %i.ork = zext nneg i32 %i.npq to i64            ; 3 uses
  %i.orl = add nuw nsw i64 %i.ork, 4
  %i.orm = sext i32 %i.ori to i64
  %i.orn = zext nneg i32 %i.npq to i64            ; 3 uses
  %i.oro = add nuw nsw i64 %i.orn, 4
  %i.orp = add nsw i32 %.neg.i554, 6
  %i.orq = add i32 %i.orp, %i.may
  %i.orr = sext i32 %i.orq to i64
  %i.ors = zext nneg i32 %i.npq to i64            ; 2 uses
  %i.ort = add i32 %.neg.i554, %i.may
  %i.oru = add i32 %i.ort, 6
  %i.orv = sext i32 %i.oru to i64
  %i.orw = zext nneg i32 %i.npq to i64            ; 2 uses
  %i.orx = add i32 %.neg.i554, %i.may
  %i.ory = add i32 %i.orx, 6
  %i.orz = sext i32 %i.ory to i64
  %i.osa = zext nneg i32 %i.npq to i64            ; 2 uses
  %i.osb = add i32 %.neg.i554, %i.may
  %i.osc = add i32 %i.osb, 6
  %i.osd = sext i32 %i.osc to i64
  br label %.lr.ph1143.i.preheader

.preheader1009.i:                                 ; preds = %.preheader1009.i.preheader, %._crit_edge1135.i
  %indvars.iv1281.i = phi i64 [ %indvars.iv.next1282.i, %._crit_edge1135.i ], [ 4, %.preheader1009.i.preheader ] ; 3 uses
  %i.ose = mul nuw nsw i64 %indvars.iv1281.i, 136 ; 5 uses
  %indvars.iv1281.tr.i = trunc i64 %indvars.iv1281.i to i32
  %i.osf = shl i32 %indvars.iv1281.tr.i, 1
  %i.osg = and i32 %i.osf, 14                     ; 5 uses
  br i1 %i.nvo, label %.epil.preheader4755, label %.preheader1009.i.new

.preheader1009.i.new:                             ; preds = %.preheader1009.i
  %i.osh = shl nuw nsw i32 %i.osg, 1
  %i.osi = lshr i32 %.fr1043, %i.osh
  %i.osj = and i32 %i.osi, 3
  %i.osk = zext nneg i32 %i.osj to i64
  %i.osl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.osk
  %i.osm = load ptr, ptr %i.osl, align 8, !tbaa !407, !noalias !408
  %i.osn = shl nuw nsw i32 %i.osg, 1
  %i.oso = or disjoint i32 %i.osn, 2
  %i.osp = lshr i32 %.fr1043, %i.oso
  %i.osq = and i32 %i.osp, 3
  %i.osr = zext nneg i32 %i.osq to i64
  %i.oss = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.osr
  %i.ost = load ptr, ptr %i.oss, align 8, !tbaa !407, !noalias !408
  %i.osu = shl nuw nsw i32 %i.osg, 1
  %i.osv = lshr i32 %.fr1043, %i.osu
  %i.osw = and i32 %i.osv, 3
  %i.osx = zext nneg i32 %i.osw to i64
  %i.osy = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.osx
  %i.osz = load ptr, ptr %i.osy, align 8, !tbaa !407, !noalias !408
  %i.ota = shl nuw nsw i32 %i.osg, 1
  %i.otb = or disjoint i32 %i.ota, 2
  %i.otc = lshr i32 %.fr1043, %i.otb
  %i.otd = and i32 %i.otc, 3
  %i.ote = zext nneg i32 %i.otd to i64
  %i.otf = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ote
  %i.otg = load ptr, ptr %i.otf, align 8, !tbaa !407, !noalias !408
  br label %bb.rg

._crit_edge1135.i.unr-lcssa:                      ; preds = %bb.rg
  br i1 %lcmp.mod4760.not, label %._crit_edge1135.i, label %.epil.preheader4755

.epil.preheader4755:                              ; preds = %._crit_edge1135.i.unr-lcssa, %.preheader1009.i
  %indvars.iv1278.i.epil.init = phi i64 [ 4, %.preheader1009.i ], [ %indvars.iv.next1279.i.3, %._crit_edge1135.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod4761)
  br label %bb.rf

bb.rf:                                            ; preds = %bb.rf, %.epil.preheader4755
  %indvars.iv1278.i.epil = phi i64 [ %indvars.iv1278.i.epil.init, %.epil.preheader4755 ], [ %indvars.iv.next1279.i.epil, %bb.rf ] ; 3 uses
  %epil.iter4759 = phi i64 [ 0, %.epil.preheader4755 ], [ %epil.iter4759.next, %bb.rf ]
  %i.oth = add nuw nsw i64 %indvars.iv1278.i.epil, %i.ose ; 2 uses
  %i.oti = trunc nuw nsw i64 %indvars.iv1278.i.epil to i32
  %i.otj = and i32 %i.oti, 1
  %i.otk = or disjoint i32 %i.otj, %i.osg
  %i.otl = shl nuw nsw i32 %i.otk, 1
  %i.otm = lshr i32 %.fr1043, %i.otl
  %i.otn = and i32 %i.otm, 3
  %i.oto = getelementptr inbounds nuw [4 x i8], ptr %i.lxh, i64 %i.oth
  %i.otp = load float, ptr %i.oto, align 4, !tbaa !22, !noalias !402
  %i.otq = zext nneg i32 %i.otn to i64
  %i.otr = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.otq
  %i.ots = load ptr, ptr %i.otr, align 8, !tbaa !407, !noalias !408
  %i.ott = getelementptr inbounds nuw [4 x i8], ptr %i.ots, i64 %i.oth
  store float %i.otp, ptr %i.ott, align 4, !tbaa !22, !noalias !402
  %indvars.iv.next1279.i.epil = add nuw nsw i64 %indvars.iv1278.i.epil, 1
  %epil.iter4759.next = add i64 %epil.iter4759, 1 ; 2 uses
  %epil.iter4759.cmp.not = icmp eq i64 %epil.iter4759.next, %xtraiter4758
  br i1 %epil.iter4759.cmp.not, label %._crit_edge1135.i, label %bb.rf, !llvm.loop !465

._crit_edge1135.i:                                ; preds = %bb.rf, %._crit_edge1135.i.unr-lcssa
  %indvars.iv.next1282.i = add nuw nsw i64 %indvars.iv1281.i, 1 ; 2 uses
  %exitcond1126.not = icmp eq i64 %indvars.iv.next1282.i, %smax1125
  br i1 %exitcond1126.not, label %.preheader1013.i, label %.preheader1009.i

bb.rg:                                            ; preds = %bb.rg, %.preheader1009.i.new
  %indvars.iv1278.i = phi i64 [ 4, %.preheader1009.i.new ], [ %indvars.iv.next1279.i.3, %bb.rg ] ; 5 uses
  %niter4763 = phi i64 [ 0, %.preheader1009.i.new ], [ %niter4763.next.3, %bb.rg ]
  %i.otu = add nuw nsw i64 %indvars.iv1278.i, %i.ose ; 2 uses
  %i.otv = getelementptr inbounds nuw [4 x i8], ptr %i.lxh, i64 %i.otu
  %i.otw = load float, ptr %i.otv, align 16, !tbaa !22, !noalias !402
  %i.otx = getelementptr inbounds nuw [4 x i8], ptr %i.osm, i64 %i.otu
  store float %i.otw, ptr %i.otx, align 4, !tbaa !22, !noalias !402
  %indvars.iv.next1279.i = or disjoint i64 %indvars.iv1278.i, 1
  %i.oty = add nuw nsw i64 %indvars.iv.next1279.i, %i.ose ; 2 uses
  %i.otz = getelementptr inbounds nuw [4 x i8], ptr %i.lxh, i64 %i.oty
  %i.oua = load float, ptr %i.otz, align 4, !tbaa !22, !noalias !402
  %i.oub = getelementptr inbounds nuw [4 x i8], ptr %i.ost, i64 %i.oty
  store float %i.oua, ptr %i.oub, align 4, !tbaa !22, !noalias !402
  %indvars.iv.next1279.i.1 = or disjoint i64 %indvars.iv1278.i, 2
  %i.ouc = add nuw nsw i64 %indvars.iv.next1279.i.1, %i.ose ; 2 uses
  %i.oud = getelementptr inbounds nuw [4 x i8], ptr %i.lxh, i64 %i.ouc
  %i.oue = load float, ptr %i.oud, align 8, !tbaa !22, !noalias !402
  %i.ouf = getelementptr inbounds nuw [4 x i8], ptr %i.osz, i64 %i.ouc
  store float %i.oue, ptr %i.ouf, align 4, !tbaa !22, !noalias !402
  %indvars.iv.next1279.i.2 = or disjoint i64 %indvars.iv1278.i, 3
  %i.oug = add nuw nsw i64 %indvars.iv.next1279.i.2, %i.ose ; 2 uses
  %i.ouh = getelementptr inbounds nuw [4 x i8], ptr %i.lxh, i64 %i.oug
  %i.oui = load float, ptr %i.ouh, align 4, !tbaa !22, !noalias !402
  %i.ouj = getelementptr inbounds nuw [4 x i8], ptr %i.otg, i64 %i.oug
  store float %i.oui, ptr %i.ouj, align 4, !tbaa !22, !noalias !402
  %indvars.iv.next1279.i.3 = add nuw nsw i64 %indvars.iv1278.i, 4 ; 2 uses
  %niter4763.next.3 = add i64 %niter4763, 4       ; 2 uses
  %niter4763.ncmp.3 = icmp eq i64 %niter4763.next.3, %unroll_iter4762
  br i1 %niter4763.ncmp.3, label %._crit_edge1135.i.unr-lcssa, label %bb.rg

._crit_edge1161.i:                                ; preds = %._crit_edge1158.i.loopexit, %.lr.ph1160.i, %.preheader1013.i
  %i.ouk = select i1 %i.npp, i32 4, i32 8         ; 3 uses
  %i.oul = or disjoint i32 %i.ouk, %i.mau         ; 7 uses
  %.neg951.i = select i1 %i.npr, i32 -4, i32 -8   ; 2 uses
  %i.oum = add nsw i32 %i.maw, %.neg951.i         ; 3 uses
  br i1 %i.lyy, label %.lr.ph1175.i, label %._crit_edge1176.split.i

.lr.ph1175.i:                                     ; preds = %._crit_edge1161.i
  %i.oun = icmp slt i32 %i.oul, %i.oum
  %i.ouo = load ptr, ptr @lmmse_gamma_out, align 8, !noalias !408 ; 7 uses
  %i.oup = icmp eq ptr %i.ouo, null
  br i1 %i.oun, label %.lr.ph1168.i.preheader, label %._crit_edge1176.split.i

.lr.ph1168.i.preheader:                           ; preds = %.lr.ph1175.i
  %reass.sub = sub nsw i32 %i.oul, %i.mau
  %.reass1171.i = add nsw i32 %reass.sub, 4
  %i.ouq = add i32 %.neg951.i, %i.maw             ; 2 uses
  %i.our = add i32 %i.ouq, %i.maq
  %i.ous = sub i32 %i.our, %i.ouk                 ; 2 uses
  %i.out = zext i32 %i.ous to i64
  %i.ouu = add nuw nsw i64 %i.out, 1              ; 2 uses
  %i.ouv = add i32 %i.ouq, %i.map
  %i.ouw = sub i32 %i.ouv, %i.ouk                 ; 2 uses
  %i.oux = zext i32 %i.ouw to i64
  %i.ouy = add nuw nsw i64 %i.oux, 1              ; 2 uses
  %min.iters.check3703 = icmp ult i32 %i.ouw, 7
  %n.vec3705 = and i64 %i.ouy, 8589934584         ; 5 uses
  %i.ouz = trunc i64 %n.vec3705 to i32
  %i.ova = add i32 %i.oul, %i.ouz
  %i.ovb = shl nuw nsw i64 %n.vec3705, 2          ; 3 uses
  %i.ovc = shl nuw nsw i64 %n.vec3705, 4
  %cmp.n3738 = icmp eq i64 %i.ouy, %n.vec3705
  %min.iters.check3680 = icmp ult i32 %i.ous, 7
  %n.vec3682 = and i64 %i.ouu, 8589934584         ; 5 uses
  %i.ovd = trunc i64 %n.vec3682 to i32
  %i.ove = add i32 %i.oul, %i.ovd
  %i.ovf = shl nuw nsw i64 %n.vec3682, 2          ; 3 uses
  %i.ovg = shl nuw nsw i64 %n.vec3682, 4
  %cmp.n3696 = icmp eq i64 %i.ouu, %n.vec3682
  br label %.lr.ph1168.i

.lr.ph1143.i.preheader:                           ; preds = %.lr.ph1143.i.preheader.preheader, %._crit_edge1158.i.loopexit
  %.08901159.i = phi i32 [ %i.pli, %._crit_edge1158.i.loopexit ], [ 0, %.lr.ph1143.i.preheader.preheader ]
  br label %.lr.ph1143.i

.lr.ph1143.i:                                     ; preds = %.lr.ph1143.i.preheader, %._crit_edge1140.i
  %indvar3893 = phi i64 [ 0, %.lr.ph1143.i.preheader ], [ %indvar.next3894, %._crit_edge1140.i ] ; 2 uses
  %indvars.iv1287.i = phi i64 [ %i.lza, %.lr.ph1143.i.preheader ], [ %indvars.iv.next1288.i, %._crit_edge1140.i ] ; 3 uses
  %i.ovh = mul i64 %indvar3893, 544               ; 4 uses
  %scevgep3895 = getelementptr i8, ptr %i.lzp, i64 %i.ovh
  %scevgep3897 = getelementptr i8, ptr %i.lzr, i64 %i.ovh
  %indvars.iv1287.tr.i = trunc i64 %indvars.iv1287.i to i32
  %i.ovi = shl i32 %indvars.iv1287.tr.i, 1
  %i.ovj = and i32 %i.ovi, 14                     ; 2 uses
  %i.ovk = shl nuw nsw i32 %i.ovj, 1
  %i.ovl = lshr i32 %.fr1043, %i.ovk              ; 3 uses
  %i.ovm = and i32 %i.ovl, 1                      ; 2 uses
  %i.ovn = or disjoint i32 %i.ovm, %i.orc         ; 2 uses
  %i.ovo = icmp slt i32 %i.ovn, %i.ord
  br i1 %i.ovo, label %.lr.ph1139.i, label %._crit_edge1140.i

.lr.ph1139.i:                                     ; preds = %.lr.ph1143.i
  %i.ovp = or disjoint i32 %i.ovm, %i.ovj
  %i.ovq = shl nuw nsw i32 %i.ovp, 1
  %i.ovr = lshr i32 %.fr1043, %i.ovq
  %i.ovs = and i32 %i.ovr, 3
  %i.ovt = mul nuw nsw i64 %indvars.iv1287.i, 136 ; 2 uses
  %i.ovu = getelementptr inbounds nuw [4 x i8], ptr %i.lxd, i64 %i.ovt ; 2 uses
  %i.ovv = zext nneg i32 %i.ovs to i64
  %i.ovw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ovv
  %i.ovx = load ptr, ptr %i.ovw, align 8, !tbaa !407, !noalias !408 ; 3 uses
  %i.ovy = getelementptr inbounds nuw [4 x i8], ptr %i.ovx, i64 %i.ovt ; 2 uses
  %i.ovz = zext nneg i32 %i.ovn to i64            ; 5 uses
  %i.owa = and i32 %i.ovl, 1
  %i.owb = zext nneg i32 %i.owa to i64            ; 2 uses
  %i.owc = or disjoint i64 %i.ors, %i.owb
  %i.owd = add nuw nsw i64 %i.owc, 4
  %i.owe = call i64 @llvm.smax.i64(i64 %i.owd, i64 %i.orv)
  %i.owf = add nsw i64 %i.owe, -3
  %i.owg = or disjoint i64 %i.ors, %i.owb
  %i.owh = sub i64 %i.owf, %i.owg                 ; 2 uses
  %i.owi = lshr i64 %i.owh, 1
  %i.owj = add nuw i64 %i.owi, 1                  ; 2 uses
  %min.iters.check3906 = icmp ult i64 %i.owh, 8
  br i1 %min.iters.check3906, label %scalar.ph3905.preheader, label %vector.memcheck3892

scalar.ph3905.preheader:                          ; preds = %vector.body3912, %vector.memcheck3892, %.lr.ph1139.i
  %indvars.iv1284.i.ph = phi i64 [ %i.ovz, %vector.memcheck3892 ], [ %i.ovz, %.lr.ph1139.i ], [ %i.oxg, %vector.body3912 ]
  br label %scalar.ph3905

vector.memcheck3892:                              ; preds = %.lr.ph1139.i
  %i.owk = and i32 %i.ovl, 1
  %i.owl = zext nneg i32 %i.owk to i64            ; 3 uses
  %i.owm = or disjoint i64 %i.orn, %i.owl
  %i.own = shl nuw nsw i64 %i.owm, 2              ; 4 uses
  %scevgep3896 = getelementptr i8, ptr %scevgep3895, i64 %i.own
  %i.owo = or disjoint i64 %i.oro, %i.owl
  %smax3898 = call i64 @llvm.smax.i64(i64 %i.owo, i64 %i.orr)
  %i.owp = add nuw i64 %smax3898, 4611686018427387901
  %i.owq = or disjoint i64 %i.orn, %i.owl
  %i.owr = sub nuw i64 %i.owp, %i.owq
  %i.ows = shl i64 %i.owr, 2
  %i.owt = and i64 %i.ows, -8                     ; 2 uses
  %i.owu = getelementptr i8, ptr %scevgep3897, i64 %i.owt
  %scevgep3899 = getelementptr i8, ptr %i.owu, i64 %i.own
  %i.owv = getelementptr i8, ptr %i.ovx, i64 %i.lzh
  %i.oww = getelementptr i8, ptr %i.owv, i64 8
  %i.owx = getelementptr i8, ptr %i.oww, i64 %i.ovh
  %scevgep3900 = getelementptr i8, ptr %i.owx, i64 %i.own
  %i.owy = getelementptr i8, ptr %i.ovx, i64 %i.lzh
  %i.owz = getelementptr i8, ptr %i.owy, i64 2188
  %i.oxa = getelementptr i8, ptr %i.owz, i64 %i.ovh
  %i.oxb = getelementptr i8, ptr %i.oxa, i64 %i.owt
  %scevgep3901 = getelementptr i8, ptr %i.oxb, i64 %i.own
  %bound03902 = icmp ult ptr %scevgep3896, %scevgep3901
  %bound13903 = icmp ult ptr %scevgep3900, %scevgep3899
  %found.conflict3904 = and i1 %bound03902, %bound13903
  br i1 %found.conflict3904, label %scalar.ph3905.preheader, label %vector.ph3907

vector.ph3907:                                    ; preds = %vector.memcheck3892
  %i.oxc = and i64 %i.owj, 3                      ; 2 uses
  %i.oxd = icmp eq i64 %i.oxc, 0
  %i.oxe = select i1 %i.oxd, i64 4, i64 %i.oxc
  %n.vec3908 = sub i64 %i.owj, %i.oxe             ; 2 uses
  %i.oxf = shl i64 %n.vec3908, 1
  %i.oxg = add i64 %i.oxf, %i.ovz
  %broadcast.splatinsert3909 = insertelement <4 x i64> poison, i64 %i.ovz, i64 0
  %broadcast.splat3910 = shufflevector <4 x i64> %broadcast.splatinsert3909, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction3911 = add nuw nsw <4 x i64> %broadcast.splat3910, <i64 0, i64 2, i64 4, i64 6>
  %invariant.gep4887 = getelementptr [4 x i8], ptr %i.ovy, i64 %i.ovz
  br label %vector.body3912

vector.body3912:                                  ; preds = %vector.body3912, %vector.ph3907
  %index3913 = phi i64 [ 0, %vector.ph3907 ], [ %index.next3940, %vector.body3912 ] ; 2 uses
  %vec.ind3914 = phi <4 x i64> [ %induction3911, %vector.ph3907 ], [ %vec.ind.next3941, %vector.body3912 ] ; 2 uses
  %wide.gep3915 = getelementptr inbounds nuw [4 x i8], ptr %i.ovu, <4 x i64> %vec.ind3914 ; 2 uses
  %i.oxh = extractelement <4 x ptr> %wide.gep3915, i64 0 ; 4 uses
  %.idx4576 = shl nuw i64 %index3913, 3
  %gep4888 = getelementptr i8, ptr %invariant.gep4887, i64 %.idx4576 ; 7 uses
  %i.oxi = getelementptr inbounds i8, ptr %gep4888, i64 -8
  %wide.vec3916 = load <8 x float>, ptr %i.oxi, align 4, !tbaa !22, !alias.scope !466, !noalias !402
  %strided.vec3917 = shufflevector <8 x float> %wide.vec3916, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.oxj = getelementptr inbounds i8, ptr %gep4888, i64 -4
  %wide.vec3918 = load <8 x float>, ptr %i.oxj, align 4, !tbaa !22, !alias.scope !466, !noalias !402 ; 2 uses
  %strided.vec3919 = shufflevector <8 x float> %wide.vec3918, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec3920 = shufflevector <8 x float> %wide.vec3918, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 5 uses
  %i.oxk = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3917, %strided.vec3920
  %i.oxl = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.oxk)
  %i.oxm = getelementptr inbounds nuw i8, ptr %i.oxh, i64 4
  %wide.vec3921 = load <8 x float>, ptr %i.oxm, align 4, !tbaa !22, !alias.scope !469, !noalias !402
  %strided.vec3922 = shufflevector <8 x float> %wide.vec3921, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.oxn = getelementptr inbounds i8, ptr %i.oxh, i64 -4
  %wide.vec3923 = load <8 x float>, ptr %i.oxn, align 4, !tbaa !22, !alias.scope !469, !noalias !402
  %strided.vec3924 = shufflevector <8 x float> %wide.vec3923, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.oxo = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3922, %strided.vec3924
  %i.oxp = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.oxo)
  %i.oxq = fadd reassoc nsz arcp contract afn <4 x float> %i.oxp, splat (float 1.000000e+00) ; 2 uses
  %i.oxr = fadd reassoc nsz arcp contract afn <4 x float> %i.oxq, %i.oxl
  %i.oxs = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.oxr ; 2 uses
  %i.oxt = getelementptr inbounds nuw i8, ptr %gep4888, i64 4
  %wide.vec3925 = load <8 x float>, ptr %i.oxt, align 4, !tbaa !22, !alias.scope !466, !noalias !402 ; 2 uses
  %strided.vec3926 = shufflevector <8 x float> %wide.vec3925, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec3927 = shufflevector <8 x float> %wide.vec3925, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.oxu = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3927, %strided.vec3920
  %i.oxv = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.oxu)
  %i.oxw = fadd reassoc nsz arcp contract afn <4 x float> %i.oxq, %i.oxv
  %i.oxx = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.oxw ; 2 uses
  %i.oxy = getelementptr inbounds i8, ptr %gep4888, i64 -1088
  %wide.vec3928 = load <8 x float>, ptr %i.oxy, align 4, !tbaa !22, !alias.scope !466, !noalias !402
  %strided.vec3929 = shufflevector <8 x float> %wide.vec3928, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.oxz = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3929, %strided.vec3920
  %i.oya = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.oxz)
  %i.oyb = getelementptr inbounds nuw i8, ptr %i.oxh, i64 544
  %wide.vec3930 = load <8 x float>, ptr %i.oyb, align 4, !tbaa !22, !alias.scope !469, !noalias !402
  %strided.vec3931 = shufflevector <8 x float> %wide.vec3930, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.oyc = getelementptr inbounds i8, ptr %i.oxh, i64 -544
  %wide.vec3932 = load <8 x float>, ptr %i.oyc, align 4, !tbaa !22, !alias.scope !469, !noalias !402
  %strided.vec3933 = shufflevector <8 x float> %wide.vec3932, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.oyd = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3931, %strided.vec3933
  %i.oye = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.oyd)
  %i.oyf = fadd reassoc nsz arcp contract afn <4 x float> %i.oye, splat (float 1.000000e+00) ; 2 uses
  %i.oyg = fadd reassoc nsz arcp contract afn <4 x float> %i.oyf, %i.oya
  %i.oyh = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.oyg ; 2 uses
  %i.oyi = getelementptr inbounds nuw i8, ptr %gep4888, i64 1088
  %wide.vec3934 = load <8 x float>, ptr %i.oyi, align 4, !tbaa !22, !alias.scope !466, !noalias !402
  %strided.vec3935 = shufflevector <8 x float> %wide.vec3934, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.oyj = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3935, %strided.vec3920
  %i.oyk = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.oyj)
  %i.oyl = fadd reassoc nsz arcp contract afn <4 x float> %i.oyf, %i.oyk
  %i.oym = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.oyl ; 2 uses
  %i.oyn = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3924, %strided.vec3919
  %i.oyo = fmul reassoc nsz arcp contract afn <4 x float> %i.oyn, %i.oxs
  %i.oyp = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3922, %strided.vec3926
  %i.oyq = fmul reassoc nsz arcp contract afn <4 x float> %i.oyp, %i.oxx
  %i.oyr = fadd reassoc nsz arcp contract afn <4 x float> %i.oyo, %i.oyq
  %i.oys = getelementptr inbounds i8, ptr %gep4888, i64 -544
  %wide.vec3936 = load <8 x float>, ptr %i.oys, align 4, !tbaa !22, !alias.scope !466, !noalias !402
  %strided.vec3937 = shufflevector <8 x float> %wide.vec3936, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.oyt = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3933, %strided.vec3937
  %i.oyu = fmul reassoc nsz arcp contract afn <4 x float> %i.oyt, %i.oyh
  %i.oyv = fadd reassoc nsz arcp contract afn <4 x float> %i.oyr, %i.oyu
  %i.oyw = getelementptr inbounds nuw i8, ptr %gep4888, i64 544
  %wide.vec3938 = load <8 x float>, ptr %i.oyw, align 4, !tbaa !22, !alias.scope !466, !noalias !402
  %strided.vec3939 = shufflevector <8 x float> %wide.vec3938, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.oyx = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3931, %strided.vec3939
  %i.oyy = fmul reassoc nsz arcp contract afn <4 x float> %i.oyx, %i.oym
  %i.oyz = fadd reassoc nsz arcp contract afn <4 x float> %i.oyv, %i.oyy
  %i.oza = fadd reassoc nsz arcp contract afn <4 x float> %i.oxx, %i.oxs
  %i.ozb = fadd reassoc nsz arcp contract afn <4 x float> %i.oza, %i.oyh
  %i.ozc = fadd reassoc nsz arcp contract afn <4 x float> %i.ozb, %i.oym
  %i.ozd = fdiv reassoc nsz arcp contract afn <4 x float> %i.oyz, %i.ozc
  %i.oze = fadd reassoc nsz arcp contract afn <4 x float> %i.ozd, %strided.vec3920
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.oze, <4 x ptr> align 4 %wide.gep3915, <4 x i1> splat (i1 true)), !tbaa !22, !alias.scope !469, !noalias !471
  %index.next3940 = add nuw i64 %index3913, 4     ; 2 uses
  %vec.ind.next3941 = add nuw nsw <4 x i64> %vec.ind3914, splat (i64 8)
  %i.ozf = icmp eq i64 %index.next3940, %n.vec3908
end_hunk_2
begin_hunk_3_@process:bb.a
  %i.pno = getelementptr i8, ptr %i.pnn, i64 %i.plk
  %i.pnp = getelementptr i8, ptr %i.pno, i64 %i.pne
  %scevgep3751 = getelementptr i8, ptr %i.pnp, i64 %i.pmv
  %scevgep3753 = getelementptr i8, ptr %scevgep3752, i64 %i.pmv
  %i.pnq = getelementptr i8, ptr %scevgep3754, i64 %i.pne
  %scevgep3755 = getelementptr i8, ptr %i.pnq, i64 %i.pmv
  %bound03756 = icmp ult ptr %scevgep3747, %scevgep3751
  %bound13757 = icmp ult ptr %scevgep3750, %scevgep3749
  %found.conflict3758 = and i1 %bound03756, %bound13757
  %bound03759 = icmp ult ptr %scevgep3747, %scevgep3755
  %bound13760 = icmp ult ptr %scevgep3753, %scevgep3749
  %found.conflict3761 = and i1 %bound03759, %bound13760
  %conflict.rdx3762 = or i1 %found.conflict3758, %found.conflict3761
  br i1 %conflict.rdx3762, label %scalar.ph3763.preheader, label %vector.ph3765

vector.ph3765:                                    ; preds = %vector.memcheck3744
  %i.pnr = and i64 %i.pmr, 3                      ; 2 uses
  %i.pns = icmp eq i64 %i.pnr, 0
  %i.pnt = select i1 %i.pns, i64 4, i64 %i.pnr
  %n.vec3766 = sub i64 %i.pmr, %i.pnt             ; 2 uses
  %i.pnu = shl i64 %n.vec3766, 1
  %i.pnv = add i64 %i.pnu, %i.pmh
  %broadcast.splatinsert3767 = insertelement <4 x i64> poison, i64 %i.pmh, i64 0
  %broadcast.splat3768 = shufflevector <4 x i64> %broadcast.splatinsert3767, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction3769 = add nuw nsw <4 x i64> %broadcast.splat3768, <i64 0, i64 2, i64 4, i64 6>
  br label %vector.body3770

vector.body3770:                                  ; preds = %vector.body3770, %vector.ph3765
  %index3771 = phi i64 [ 0, %vector.ph3765 ], [ %index.next3801, %vector.body3770 ] ; 2 uses
  %vec.ind3772 = phi <4 x i64> [ %induction3769, %vector.ph3765 ], [ %vec.ind.next3802, %vector.body3770 ] ; 2 uses
  %i.pnw = shl nuw i64 %index3771, 1
  %i.pnx = add nuw i64 %i.pnw, %i.pmh             ; 2 uses
  %i.pny = getelementptr inbounds nuw [4 x i8], ptr %i.ply, i64 %i.pnx ; 4 uses
  %wide.gep3773 = getelementptr inbounds nuw [4 x i8], ptr %i.pmc, <4 x i64> %vec.ind3772 ; 2 uses
  %i.pnz = extractelement <4 x ptr> %wide.gep3773, i64 0 ; 4 uses
  %i.poa = getelementptr inbounds nuw [4 x i8], ptr %i.pmg, i64 %i.pnx ; 5 uses
  %i.pob = getelementptr inbounds i8, ptr %i.poa, i64 -8
  %wide.vec3774 = load <8 x float>, ptr %i.pob, align 4, !tbaa !22, !alias.scope !485, !noalias !402
  %strided.vec3775 = shufflevector <8 x float> %wide.vec3774, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec3776 = load <8 x float>, ptr %i.poa, align 4, !tbaa !22, !alias.scope !485, !noalias !402
  %strided.vec3777 = shufflevector <8 x float> %wide.vec3776, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 4 uses
  %i.poc = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3775, %strided.vec3777
  %i.pod = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.poc)
  %i.poe = getelementptr inbounds nuw i8, ptr %i.pny, i64 4
  %wide.vec3778 = load <8 x float>, ptr %i.poe, align 4, !tbaa !22, !alias.scope !488, !noalias !402
  %strided.vec3779 = shufflevector <8 x float> %wide.vec3778, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.pof = getelementptr inbounds i8, ptr %i.pny, i64 -4
  %wide.vec3780 = load <8 x float>, ptr %i.pof, align 4, !tbaa !22, !alias.scope !488, !noalias !402 ; 2 uses
  %strided.vec3781 = shufflevector <8 x float> %wide.vec3780, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec3782 = shufflevector <8 x float> %wide.vec3780, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.pog = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3779, %strided.vec3781
  %i.poh = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pog)
  %i.poi = fadd reassoc nsz arcp contract afn <4 x float> %i.poh, splat (float 1.000000e+00) ; 2 uses
  %i.poj = fadd reassoc nsz arcp contract afn <4 x float> %i.poi, %i.pod
  %i.pok = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.poj ; 2 uses
  %i.pol = getelementptr inbounds nuw i8, ptr %i.poa, i64 8
  %wide.vec3783 = load <8 x float>, ptr %i.pol, align 4, !tbaa !22, !alias.scope !485, !noalias !402
  %strided.vec3784 = shufflevector <8 x float> %wide.vec3783, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.pom = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3784, %strided.vec3777
  %i.pon = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pom)
  %i.poo = fadd reassoc nsz arcp contract afn <4 x float> %i.poi, %i.pon
  %i.pop = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.poo ; 2 uses
  %i.poq = getelementptr inbounds i8, ptr %i.poa, i64 -1088
  %wide.vec3785 = load <8 x float>, ptr %i.poq, align 4, !tbaa !22, !alias.scope !485, !noalias !402
  %strided.vec3786 = shufflevector <8 x float> %wide.vec3785, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.por = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3786, %strided.vec3777
  %i.pos = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.por)
  %i.pot = getelementptr inbounds nuw i8, ptr %i.pny, i64 544
  %wide.vec3787 = load <8 x float>, ptr %i.pot, align 4, !tbaa !22, !alias.scope !488, !noalias !402
  %strided.vec3788 = shufflevector <8 x float> %wide.vec3787, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.pou = getelementptr inbounds i8, ptr %i.pny, i64 -544
  %wide.vec3789 = load <8 x float>, ptr %i.pou, align 4, !tbaa !22, !alias.scope !488, !noalias !402
  %strided.vec3790 = shufflevector <8 x float> %wide.vec3789, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.pov = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3788, %strided.vec3790
  %i.pow = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pov)
  %i.pox = fadd reassoc nsz arcp contract afn <4 x float> %i.pow, splat (float 1.000000e+00) ; 2 uses
  %i.poy = fadd reassoc nsz arcp contract afn <4 x float> %i.pox, %i.pos
  %i.poz = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.poy ; 2 uses
  %i.ppa = getelementptr inbounds nuw i8, ptr %i.poa, i64 1088
  %wide.vec3791 = load <8 x float>, ptr %i.ppa, align 4, !tbaa !22, !alias.scope !485, !noalias !402
  %strided.vec3792 = shufflevector <8 x float> %wide.vec3791, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ppb = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3792, %strided.vec3777
  %i.ppc = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ppb)
  %i.ppd = fadd reassoc nsz arcp contract afn <4 x float> %i.pox, %i.ppc
  %i.ppe = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.ppd ; 2 uses
  %i.ppf = getelementptr inbounds i8, ptr %i.pnz, i64 -4
  %wide.vec3793 = load <8 x float>, ptr %i.ppf, align 4, !tbaa !22, !alias.scope !490, !noalias !402
  %strided.vec3794 = shufflevector <8 x float> %wide.vec3793, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ppg = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3781, %strided.vec3794
  %i.pph = fmul reassoc nsz arcp contract afn <4 x float> %i.ppg, %i.pok
  %i.ppi = getelementptr inbounds nuw i8, ptr %i.pnz, i64 4
  %wide.vec3795 = load <8 x float>, ptr %i.ppi, align 4, !tbaa !22, !alias.scope !490, !noalias !402
  %strided.vec3796 = shufflevector <8 x float> %wide.vec3795, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ppj = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3779, %strided.vec3796
  %i.ppk = fmul reassoc nsz arcp contract afn <4 x float> %i.ppj, %i.pop
  %i.ppl = fadd reassoc nsz arcp contract afn <4 x float> %i.pph, %i.ppk
  %i.ppm = getelementptr inbounds i8, ptr %i.pnz, i64 -544
  %wide.vec3797 = load <8 x float>, ptr %i.ppm, align 4, !tbaa !22, !alias.scope !490, !noalias !402
  %strided.vec3798 = shufflevector <8 x float> %wide.vec3797, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ppn = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3790, %strided.vec3798
  %i.ppo = fmul reassoc nsz arcp contract afn <4 x float> %i.ppn, %i.poz
  %i.ppp = fadd reassoc nsz arcp contract afn <4 x float> %i.ppl, %i.ppo
  %i.ppq = getelementptr inbounds nuw i8, ptr %i.pnz, i64 544
  %wide.vec3799 = load <8 x float>, ptr %i.ppq, align 4, !tbaa !22, !alias.scope !490, !noalias !402
  %strided.vec3800 = shufflevector <8 x float> %wide.vec3799, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ppr = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3788, %strided.vec3800
  %i.pps = fmul reassoc nsz arcp contract afn <4 x float> %i.ppr, %i.ppe
  %i.ppt = fadd reassoc nsz arcp contract afn <4 x float> %i.ppp, %i.pps
  %i.ppu = fadd reassoc nsz arcp contract afn <4 x float> %i.pop, %i.pok
  %i.ppv = fadd reassoc nsz arcp contract afn <4 x float> %i.ppu, %i.poz
  %i.ppw = fadd reassoc nsz arcp contract afn <4 x float> %i.ppv, %i.ppe
  %i.ppx = fdiv reassoc nsz arcp contract afn <4 x float> %i.ppt, %i.ppw
  %i.ppy = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3782, %i.ppx
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.ppy, <4 x ptr> align 4 %wide.gep3773, <4 x i1> splat (i1 true)), !tbaa !22, !alias.scope !490, !noalias !492
  %index.next3801 = add nuw i64 %index3771, 4     ; 2 uses
  %vec.ind.next3802 = add nuw nsw <4 x i64> %vec.ind3772, splat (i64 8)
  %i.ppz = icmp eq i64 %index.next3801, %n.vec3766
  br i1 %i.ppz, label %scalar.ph3763.preheader, label %vector.body3770, !llvm.loop !493

._crit_edge1155.i:                                ; preds = %scalar.ph3763, %.lr.ph1157.i
  %indvars.iv.next1300.i = add nuw nsw i64 %indvars.iv1299.i, 1 ; 2 uses
  %exitcond1134.not = icmp eq i64 %indvars.iv.next1300.i, %i.lzf
  %indvar.next3746 = add i64 %indvar3745, 1
  br i1 %exitcond1134.not, label %._crit_edge1158.i.loopexit, label %.lr.ph1157.i

scalar.ph3763:                                    ; preds = %scalar.ph3763.preheader, %scalar.ph3763
  %indvars.iv1296.i = phi i64 [ %indvars.iv.next1297.i, %scalar.ph3763 ], [ %indvars.iv1296.i.ph, %scalar.ph3763.preheader ] ; 4 uses
  %i.pqa = getelementptr inbounds nuw [4 x i8], ptr %i.ply, i64 %indvars.iv1296.i ; 5 uses
  %i.pqb = getelementptr inbounds nuw [4 x i8], ptr %i.pmc, i64 %indvars.iv1296.i ; 5 uses
  %i.pqc = getelementptr inbounds nuw [4 x i8], ptr %i.pmg, i64 %indvars.iv1296.i ; 5 uses
  %i.pqd = load float, ptr %i.pqa, align 4, !tbaa !22, !noalias !402
  %i.pqe = getelementptr inbounds nuw i8, ptr %i.pqa, i64 544
  %i.pqf = getelementptr inbounds i8, ptr %i.pqa, i64 -544
  %i.pqg = getelementptr inbounds nuw i8, ptr %i.pqa, i64 4
  %i.pqh = getelementptr inbounds i8, ptr %i.pqa, i64 -4
  %i.pqi = load float, ptr %i.pqe, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.pqj = load float, ptr %i.pqf, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.pqk = load float, ptr %i.pqg, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.pql = load float, ptr %i.pqh, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.pqm = fsub reassoc nsz arcp contract afn float %i.pqi, %i.pqj
  %i.pqn = fsub reassoc nsz arcp contract afn float %i.pqk, %i.pql
  %i.pqo = insertelement <2 x float> poison, float %i.pqn, i64 0
  %i.pqp = insertelement <2 x float> %i.pqo, float %i.pqm, i64 1
  %i.pqq = call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.pqp)
  %i.pqr = fadd reassoc nsz arcp contract afn <2 x float> %i.pqq, splat (float 1.000000e+00)
  %i.pqs = shufflevector <2 x float> %i.pqr, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.pqt = load float, ptr %i.pqc, align 4, !tbaa !22, !noalias !402
  %i.pqu = getelementptr inbounds nuw i8, ptr %i.pqc, i64 1088
  %i.pqv = getelementptr inbounds i8, ptr %i.pqc, i64 -1088
  %i.pqw = getelementptr inbounds nuw i8, ptr %i.pqc, i64 8
  %i.pqx = getelementptr inbounds i8, ptr %i.pqc, i64 -8
  %i.pqy = load float, ptr %i.pqu, align 4, !tbaa !22, !noalias !402
  %i.pqz = load float, ptr %i.pqv, align 4, !tbaa !22, !noalias !402
  %i.pra = load float, ptr %i.pqw, align 4, !tbaa !22, !noalias !402
  %i.prb = load float, ptr %i.pqx, align 4, !tbaa !22, !noalias !402
  %i.prc = insertelement <4 x float> poison, float %i.prb, i64 0
  %i.prd = insertelement <4 x float> %i.prc, float %i.pra, i64 1
  %i.pre = insertelement <4 x float> %i.prd, float %i.pqz, i64 2
  %i.prf = insertelement <4 x float> %i.pre, float %i.pqy, i64 3
  %i.prg = insertelement <4 x float> poison, float %i.pqt, i64 0
  %i.prh = shufflevector <4 x float> %i.prg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pri = fsub reassoc nsz arcp contract afn <4 x float> %i.prf, %i.prh
  %i.prj = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pri)
  %i.prk = fadd reassoc nsz arcp contract afn <4 x float> %i.pqs, %i.prj
  %i.prl = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.prk ; 2 uses
  %i.prm = getelementptr inbounds nuw i8, ptr %i.pqb, i64 544
  %i.prn = getelementptr inbounds i8, ptr %i.pqb, i64 -544
  %i.pro = getelementptr inbounds nuw i8, ptr %i.pqb, i64 4
  %i.prp = getelementptr inbounds i8, ptr %i.pqb, i64 -4
  %i.prq = load float, ptr %i.prm, align 4, !tbaa !22, !noalias !402
  %i.prr = load float, ptr %i.prn, align 4, !tbaa !22, !noalias !402
  %i.prs = load float, ptr %i.pro, align 4, !tbaa !22, !noalias !402
  %i.prt = load float, ptr %i.prp, align 4, !tbaa !22, !noalias !402
  %i.pru = fsub reassoc nsz arcp contract afn float %i.pqi, %i.prq
  %i.prv = fsub reassoc nsz arcp contract afn float %i.pqj, %i.prr
  %i.prw = fsub reassoc nsz arcp contract afn float %i.pqk, %i.prs
  %i.prx = fsub reassoc nsz arcp contract afn float %i.pql, %i.prt
  %i.pry = insertelement <4 x float> poison, float %i.prx, i64 0
  %i.prz = insertelement <4 x float> %i.pry, float %i.prw, i64 1
  %i.psa = insertelement <4 x float> %i.prz, float %i.prv, i64 2
  %i.psb = insertelement <4 x float> %i.psa, float %i.pru, i64 3
  %i.psc = fmul reassoc nsz arcp contract afn <4 x float> %i.psb, %i.prl
  %i.psd = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.psc)
  %i.pse = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.prl)
  %i.psf = fdiv reassoc nsz arcp contract afn float %i.psd, %i.pse
  %i.psg = fsub reassoc nsz arcp contract afn float %i.pqd, %i.psf
  store float %i.psg, ptr %i.pqb, align 4, !tbaa !22, !noalias !402
  %indvars.iv.next1297.i = add nuw nsw i64 %indvars.iv1296.i, 2 ; 2 uses
  %i.psh = icmp slt i64 %indvars.iv.next1297.i, %i.ore
  br i1 %i.psh, label %scalar.ph3763, label %._crit_edge1155.i, !llvm.loop !494

._crit_edge1176.split.i:                          ; preds = %._crit_edge1169.i, %.lr.ph1175.i, %._crit_edge1161.i
  %i.psi = add nuw nsw i32 %.08871178.i, 1
  %indvars.iv.next1208.i = add i32 %indvars.iv1207.i, 112
  %exitcond1311.not.i = icmp eq i32 %.08871178.i, %smax.i552
  %indvars.iv.next1091 = add nuw i32 %indvars.iv1090, 112
  %indvars.iv.next1094 = add i32 %indvars.iv1093, -112
  br i1 %exitcond1311.not.i, label %._crit_edge1180.i, label %bb.pr

.lr.ph1168.i:                                     ; preds = %.lr.ph1168.i.preheader, %._crit_edge1169.i
  %indvars.iv1306.i = phi i64 [ %indvars.iv.next1307.i, %._crit_edge1169.i ], [ %7, %.lr.ph1168.i.preheader ] ; 2 uses
  %indvars.iv1302.i = phi i32 [ %indvars.iv.next1303.i, %._crit_edge1169.i ], [ %narrow.i, %.lr.ph1168.i.preheader ] ; 2 uses
  %i.psj = trunc i64 %indvars.iv1306.i to i32
  %i.psk = mul i32 %i.bo, %i.psj
  %i.psl = add i32 %i.psk, %i.oul
  %i.psm = shl nsw i32 %i.psl, 2
  %i.psn = zext nneg i32 %i.psm to i64
  %i.pso = getelementptr inbounds nuw [4 x i8], ptr %i.aop, i64 %i.psn ; 6 uses
  %i.psp = mul i32 %indvars.iv1302.i, 136
  %i.psq = add i32 %.reass1171.i, %i.psp
  %i.psr = sext i32 %i.psq to i64                 ; 3 uses
  %i.pss = getelementptr inbounds [4 x i8], ptr %i.lxb, i64 %i.psr ; 6 uses
  %i.pst = getelementptr inbounds [4 x i8], ptr %i.lxd, i64 %i.psr ; 6 uses
  %i.psu = getelementptr inbounds [4 x i8], ptr %i.lxe, i64 %i.psr ; 6 uses
  br i1 %i.oup, label %_calc_gamma.exit975.us.i.preheader, label %.lr.ph1168.split.i.preheader

.lr.ph1168.split.i.preheader:                     ; preds = %.lr.ph1168.i
  br i1 %min.iters.check3703, label %.lr.ph1168.split.i.preheader4646, label %vector.ph3704

vector.ph3704:                                    ; preds = %.lr.ph1168.split.i.preheader
  %i.psv = getelementptr i8, ptr %i.psu, i64 %i.ovb
  %i.psw = getelementptr i8, ptr %i.pst, i64 %i.ovb
  %i.psx = getelementptr i8, ptr %i.pss, i64 %i.ovb
  %i.psy = getelementptr i8, ptr %i.pso, i64 %i.ovc
  br label %vector.body3708

vector.body3708:                                  ; preds = %vector.body3708, %vector.ph3704
  %index3709 = phi i64 [ 0, %vector.ph3704 ], [ %index.next3736, %vector.body3708 ] ; 3 uses
  %i.psz = shl i64 %index3709, 2                  ; 3 uses
  %next.gep3710 = getelementptr i8, ptr %i.psu, i64 %i.psz
  %next.gep3711 = getelementptr i8, ptr %i.pst, i64 %i.psz
  %next.gep3712 = getelementptr i8, ptr %i.pss, i64 %i.psz
  %i.pta = shl i64 %index3709, 4
  %next.gep3713 = getelementptr i8, ptr %i.pso, i64 %i.pta
  %wide.load3714 = load <8 x float>, ptr %next.gep3712, align 4, !tbaa !22, !noalias !402
  %i.ptb = fmul reassoc nsz arcp contract afn <8 x float> %wide.load3714, splat (float 6.553500e+04) ; 4 uses
  %i.ptc = fcmp reassoc nsz arcp contract afn uge <8 x float> %i.ptb, zeroinitializer ; 2 uses
  %i.ptd = fcmp reassoc nsz arcp contract afn ule <8 x float> %i.ptb, splat (float f0x477FFEFD)
  %i.pte = and <8 x i1> %i.ptc, %i.ptd            ; 3 uses
  %i.ptf = fptosi <8 x float> %i.ptb to <8 x i32> ; 2 uses
  %i.ptg = sitofp reassoc nsz arcp contract afn <8 x i32> %i.ptf to <8 x float>
  %i.pth = fsub reassoc nsz arcp contract afn <8 x float> %i.ptb, %i.ptg
  %i.pti = sext <8 x i32> %i.ptf to <8 x i64>
  %wide.gep3715 = getelementptr inbounds [4 x i8], ptr %i.ouo, <8 x i64> %i.pti ; 2 uses
  %wide.masked.gather3716 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3715, <8 x i1> %i.pte, <8 x float> poison), !tbaa !22, !noalias !402 ; 2 uses
  %wide.gep3717 = getelementptr i8, <8 x ptr> %wide.gep3715, i64 4
  %wide.masked.gather3718 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3717, <8 x i1> %i.pte, <8 x float> poison), !tbaa !22, !noalias !402
  %i.ptj = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather3718, %wide.masked.gather3716
  %i.ptk = fmul reassoc nsz arcp contract afn <8 x float> %i.ptj, %i.pth
  %i.ptl = fadd reassoc nsz arcp contract afn <8 x float> %i.ptk, %wide.masked.gather3716
  %predphi3719 = select <8 x i1> %i.pte, <8 x float> %i.ptl, <8 x float> splat (float 1.000000e+00)
  %predphi3720 = select <8 x i1> %i.ptc, <8 x float> %predphi3719, <8 x float> zeroinitializer
  %i.ptm = fmul reassoc nsz arcp contract afn <8 x float> %predphi3720, %broadcast.splat3707
  %wide.load3721 = load <8 x float>, ptr %next.gep3711, align 4, !tbaa !22, !noalias !402
  %i.ptn = fmul reassoc nsz arcp contract afn <8 x float> %wide.load3721, splat (float 6.553500e+04) ; 4 uses
  %i.pto = fcmp reassoc nsz arcp contract afn uge <8 x float> %i.ptn, zeroinitializer ; 2 uses
  %i.ptp = fcmp reassoc nsz arcp contract afn ule <8 x float> %i.ptn, splat (float f0x477FFEFD)
  %i.ptq = and <8 x i1> %i.pto, %i.ptp            ; 3 uses
  %i.ptr = fptosi <8 x float> %i.ptn to <8 x i32> ; 2 uses
  %i.pts = sitofp reassoc nsz arcp contract afn <8 x i32> %i.ptr to <8 x float>
  %i.ptt = fsub reassoc nsz arcp contract afn <8 x float> %i.ptn, %i.pts
  %i.ptu = sext <8 x i32> %i.ptr to <8 x i64>
  %wide.gep3722 = getelementptr inbounds [4 x i8], ptr %i.ouo, <8 x i64> %i.ptu ; 2 uses
  %wide.masked.gather3723 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3722, <8 x i1> %i.ptq, <8 x float> poison), !tbaa !22, !noalias !402 ; 2 uses
  %wide.gep3724 = getelementptr i8, <8 x ptr> %wide.gep3722, i64 4
  %wide.masked.gather3725 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3724, <8 x i1> %i.ptq, <8 x float> poison), !tbaa !22, !noalias !402
  %i.ptv = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather3725, %wide.masked.gather3723
  %i.ptw = fmul reassoc nsz arcp contract afn <8 x float> %i.ptv, %i.ptt
  %i.ptx = fadd reassoc nsz arcp contract afn <8 x float> %i.ptw, %wide.masked.gather3723
  %predphi3726 = select <8 x i1> %i.ptq, <8 x float> %i.ptx, <8 x float> splat (float 1.000000e+00)
  %predphi3727 = select <8 x i1> %i.pto, <8 x float> %predphi3726, <8 x float> zeroinitializer
  %i.pty = fmul reassoc nsz arcp contract afn <8 x float> %predphi3727, %broadcast.splat3707
  %wide.load3728 = load <8 x float>, ptr %next.gep3710, align 4, !tbaa !22, !noalias !402
  %i.ptz = fmul reassoc nsz arcp contract afn <8 x float> %wide.load3728, splat (float 6.553500e+04) ; 4 uses
  %i.pua = fcmp reassoc nsz arcp contract afn uge <8 x float> %i.ptz, zeroinitializer ; 2 uses
  %i.pub = fcmp reassoc nsz arcp contract afn ule <8 x float> %i.ptz, splat (float f0x477FFEFD)
  %i.puc = and <8 x i1> %i.pua, %i.pub            ; 3 uses
  %i.pud = fptosi <8 x float> %i.ptz to <8 x i32> ; 2 uses
  %i.pue = sitofp reassoc nsz arcp contract afn <8 x i32> %i.pud to <8 x float>
  %i.puf = fsub reassoc nsz arcp contract afn <8 x float> %i.ptz, %i.pue
  %i.pug = sext <8 x i32> %i.pud to <8 x i64>
  %wide.gep3729 = getelementptr inbounds [4 x i8], ptr %i.ouo, <8 x i64> %i.pug ; 2 uses
  %wide.masked.gather3730 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3729, <8 x i1> %i.puc, <8 x float> poison), !tbaa !22, !noalias !402 ; 2 uses
  %wide.gep3731 = getelementptr i8, <8 x ptr> %wide.gep3729, i64 4
  %wide.masked.gather3732 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3731, <8 x i1> %i.puc, <8 x float> poison), !tbaa !22, !noalias !402
  %i.puh = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather3732, %wide.masked.gather3730
  %i.pui = fmul reassoc nsz arcp contract afn <8 x float> %i.puh, %i.puf
  %i.puj = fadd reassoc nsz arcp contract afn <8 x float> %i.pui, %wide.masked.gather3730
  %predphi3733 = select nsz <8 x i1> %i.puc, <8 x float> %i.puj, <8 x float> splat (float 1.000000e+00)
  %predphi3734 = select nsz <8 x i1> %i.pua, <8 x float> %predphi3733, <8 x float> zeroinitializer
  %i.puk = fmul reassoc nsz arcp contract afn <8 x float> %predphi3734, %broadcast.splat3707
  %i.pul = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.puk, <8 x float> zeroinitializer)
  %i.pum = shufflevector <8 x float> %i.ptm, <8 x float> %i.pty, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.pun = call reassoc nsz arcp contract afn <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.pum, <16 x float> zeroinitializer)
  %i.puo = shufflevector <8 x float> %i.pul, <8 x float> zeroinitializer, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec3735 = shufflevector <16 x float> %i.pun, <16 x float> %i.puo, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec3735, ptr %next.gep3713, align 4, !tbaa !22, !alias.scope !402, !noalias !405
  %index.next3736 = add nuw i64 %index3709, 8     ; 2 uses
  %i.pup = icmp eq i64 %index.next3736, %n.vec3705
  br i1 %i.pup, label %middle.block3737, label %vector.body3708, !llvm.loop !495

middle.block3737:                                 ; preds = %vector.body3708
  br i1 %cmp.n3738, label %._crit_edge1169.i, label %.lr.ph1168.split.i.preheader4646

.lr.ph1168.split.i.preheader4646:                 ; preds = %.lr.ph1168.split.i.preheader, %middle.block3737
  %.01166.i.ph = phi i32 [ %i.oul, %.lr.ph1168.split.i.preheader ], [ %i.ova, %middle.block3737 ]
  %.08731165.i.ph = phi ptr [ %i.psu, %.lr.ph1168.split.i.preheader ], [ %i.psv, %middle.block3737 ]
  %.08741164.i.ph = phi ptr [ %i.pst, %.lr.ph1168.split.i.preheader ], [ %i.psw, %middle.block3737 ]
  %.08751163.i.ph = phi ptr [ %i.pss, %.lr.ph1168.split.i.preheader ], [ %i.psx, %middle.block3737 ]
  %.08761162.i.ph = phi ptr [ %i.pso, %.lr.ph1168.split.i.preheader ], [ %i.psy, %middle.block3737 ]
  br label %.lr.ph1168.split.i

_calc_gamma.exit975.us.i.preheader:               ; preds = %.lr.ph1168.i
  br i1 %min.iters.check3680, label %_calc_gamma.exit975.us.i.preheader4645, label %vector.ph3681

vector.ph3681:                                    ; preds = %_calc_gamma.exit975.us.i.preheader
  %i.puq = getelementptr i8, ptr %i.psu, i64 %i.ovf
  %i.pur = getelementptr i8, ptr %i.pst, i64 %i.ovf
  %i.pus = getelementptr i8, ptr %i.pss, i64 %i.ovf
  %i.put = getelementptr i8, ptr %i.pso, i64 %i.ovg
  br label %vector.body3685

vector.body3685:                                  ; preds = %vector.body3685, %vector.ph3681
  %index3686 = phi i64 [ 0, %vector.ph3681 ], [ %index.next3694, %vector.body3685 ] ; 3 uses
  %i.puu = shl i64 %index3686, 2                  ; 3 uses
  %next.gep = getelementptr i8, ptr %i.psu, i64 %i.puu
  %next.gep3687 = getelementptr i8, ptr %i.pst, i64 %i.puu
  %next.gep3688 = getelementptr i8, ptr %i.pss, i64 %i.puu
  %i.puv = shl i64 %index3686, 4
  %next.gep3689 = getelementptr i8, ptr %i.pso, i64 %i.puv
  %wide.load3690 = load <8 x float>, ptr %next.gep3688, align 4, !tbaa !22, !noalias !402
  %wide.load3691 = load <8 x float>, ptr %next.gep3687, align 4, !tbaa !22, !noalias !402
  %wide.load3692 = load <8 x float>, ptr %next.gep, align 4, !tbaa !22, !noalias !402
  %i.puw = fmul reassoc nsz arcp contract afn <8 x float> %wide.load3692, %broadcast.splat3684
  %i.pux = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.puw, <8 x float> zeroinitializer)
  %i.puy = shufflevector <8 x float> %wide.load3690, <8 x float> %wide.load3691, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.puz = fmul reassoc nsz arcp contract afn <16 x float> %i.puy, %i.awt
  %i.pva = call reassoc nsz arcp contract afn <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.puz, <16 x float> zeroinitializer)
  %i.pvb = shufflevector <8 x float> %i.pux, <8 x float> zeroinitializer, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec3693 = shufflevector <16 x float> %i.pva, <16 x float> %i.pvb, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec3693, ptr %next.gep3689, align 4, !tbaa !22, !alias.scope !402, !noalias !405
  %index.next3694 = add nuw i64 %index3686, 8     ; 2 uses
  %i.pvc = icmp eq i64 %index.next3694, %n.vec3682
  br i1 %i.pvc, label %middle.block3695, label %vector.body3685, !llvm.loop !496

middle.block3695:                                 ; preds = %vector.body3685
  br i1 %cmp.n3696, label %._crit_edge1169.i, label %_calc_gamma.exit975.us.i.preheader4645

_calc_gamma.exit975.us.i.preheader4645:           ; preds = %_calc_gamma.exit975.us.i.preheader, %middle.block3695
  %.01166.us.i.ph = phi i32 [ %i.oul, %_calc_gamma.exit975.us.i.preheader ], [ %i.ove, %middle.block3695 ]
  %.08731165.us.i.ph = phi ptr [ %i.psu, %_calc_gamma.exit975.us.i.preheader ], [ %i.puq, %middle.block3695 ]
  %.08741164.us.i.ph = phi ptr [ %i.pst, %_calc_gamma.exit975.us.i.preheader ], [ %i.pur, %middle.block3695 ]
  %.08751163.us.i.ph = phi ptr [ %i.pss, %_calc_gamma.exit975.us.i.preheader ], [ %i.pus, %middle.block3695 ]
  %.08761162.us.i.ph = phi ptr [ %i.pso, %_calc_gamma.exit975.us.i.preheader ], [ %i.put, %middle.block3695 ]
  br label %_calc_gamma.exit975.us.i

_calc_gamma.exit975.us.i:                         ; preds = %_calc_gamma.exit975.us.i.preheader4645, %_calc_gamma.exit975.us.i
  %.01166.us.i = phi i32 [ %i.pvo, %_calc_gamma.exit975.us.i ], [ %.01166.us.i.ph, %_calc_gamma.exit975.us.i.preheader4645 ]
  %.08731165.us.i = phi ptr [ %i.pvs, %_calc_gamma.exit975.us.i ], [ %.08731165.us.i.ph, %_calc_gamma.exit975.us.i.preheader4645 ] ; 2 uses
  %.08741164.us.i = phi ptr [ %i.pvr, %_calc_gamma.exit975.us.i ], [ %.08741164.us.i.ph, %_calc_gamma.exit975.us.i.preheader4645 ] ; 2 uses
  %.08751163.us.i = phi ptr [ %i.pvq, %_calc_gamma.exit975.us.i ], [ %.08751163.us.i.ph, %_calc_gamma.exit975.us.i.preheader4645 ] ; 2 uses
  %.08761162.us.i = phi ptr [ %i.pvp, %_calc_gamma.exit975.us.i ], [ %.08761162.us.i.ph, %_calc_gamma.exit975.us.i.preheader4645 ] ; 4 uses
  %i.pvd = load float, ptr %.08751163.us.i, align 4, !tbaa !22, !noalias !402
  %i.pve = load float, ptr %.08741164.us.i, align 4, !tbaa !22, !noalias !402
  %i.pvf = insertelement <2 x float> poison, float %i.pvd, i64 0
  %i.pvg = insertelement <2 x float> %i.pvf, float %i.pve, i64 1
  %i.pvh = fmul reassoc nsz arcp contract afn <2 x float> %i.pvg, %i.awv
  %i.pvi = call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.pvh, <2 x float> zeroinitializer)
  store <2 x float> %i.pvi, ptr %.08761162.us.i, align 4, !tbaa !22, !alias.scope !402, !noalias !405
  %i.pvj = load float, ptr %.08731165.us.i, align 4, !tbaa !22, !noalias !402
  %i.pvk = fmul reassoc nsz arcp contract afn float %i.pvj, %i.eh
  %i.pvl = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.pvk, float 0.000000e+00)
  %i.pvm = getelementptr inbounds nuw i8, ptr %.08761162.us.i, i64 8
  store float %i.pvl, ptr %i.pvm, align 4, !tbaa !22, !alias.scope !402, !noalias !405
  %i.pvn = getelementptr inbounds nuw i8, ptr %.08761162.us.i, i64 12
  store float 0.000000e+00, ptr %i.pvn, align 4, !tbaa !22, !alias.scope !402, !noalias !405
  %i.pvo = add nuw nsw i32 %.01166.us.i, 1        ; 2 uses
  %i.pvp = getelementptr inbounds nuw i8, ptr %.08761162.us.i, i64 16
  %i.pvq = getelementptr inbounds nuw i8, ptr %.08751163.us.i, i64 4
  %i.pvr = getelementptr inbounds nuw i8, ptr %.08741164.us.i, i64 4
  %i.pvs = getelementptr inbounds nuw i8, ptr %.08731165.us.i, i64 4
  %i.pvt = icmp slt i32 %i.pvo, %i.oum
  br i1 %i.pvt, label %_calc_gamma.exit975.us.i, label %._crit_edge1169.i, !llvm.loop !497

._crit_edge1169.i:                                ; preds = %_calc_gamma.exit977.i, %_calc_gamma.exit975.us.i, %middle.block3737, %middle.block3695
  %indvars.iv.next1307.i = add nuw nsw i64 %indvars.iv1306.i, 1 ; 2 uses
  %indvars.iv.next1303.i = add i32 %indvars.iv1302.i, 1
  %i.pvu = trunc nuw i64 %indvars.iv.next1307.i to i32
  %i.pvv = icmp sgt i32 %i.lyx, %i.pvu
  br i1 %i.pvv, label %.lr.ph1168.i, label %._crit_edge1176.split.i

.lr.ph1168.split.i:                               ; preds = %.lr.ph1168.split.i.preheader4646, %_calc_gamma.exit977.i
  %.01166.i = phi i32 [ %i.pxy, %_calc_gamma.exit977.i ], [ %.01166.i.ph, %.lr.ph1168.split.i.preheader4646 ]
  %.08731165.i = phi ptr [ %i.pyc, %_calc_gamma.exit977.i ], [ %.08731165.i.ph, %.lr.ph1168.split.i.preheader4646 ] ; 2 uses
  %.08741164.i = phi ptr [ %i.pyb, %_calc_gamma.exit977.i ], [ %.08741164.i.ph, %.lr.ph1168.split.i.preheader4646 ] ; 2 uses
  %.08751163.i = phi ptr [ %i.pya, %_calc_gamma.exit977.i ], [ %.08751163.i.ph, %.lr.ph1168.split.i.preheader4646 ] ; 2 uses
  %.08761162.i = phi ptr [ %i.pxz, %_calc_gamma.exit977.i ], [ %.08761162.i.ph, %.lr.ph1168.split.i.preheader4646 ] ; 5 uses
  %i.pvw = load float, ptr %.08751163.i, align 4, !tbaa !22, !noalias !402
  %i.pvx = fmul reassoc nsz arcp contract afn float %i.pvw, 6.553500e+04 ; 4 uses
  %i.pvy = fcmp reassoc nsz arcp contract afn olt float %i.pvx, 0.000000e+00
  br i1 %i.pvy, label %bb.rj, label %bb.rh

end_hunk_3
