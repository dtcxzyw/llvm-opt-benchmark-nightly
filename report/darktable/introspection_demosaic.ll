Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_demosaic?download=true
inline.NumInlined: 382
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 134
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 177
begin_hunk_0_@process:bb.a
bb.nw:                                            ; preds = %bb.nv
  %i.jev = mul nsw i32 %i.axe, %i.bo
  tail call void @dt_colorspaces_cygm_to_rgb(ptr noundef nonnull %i.anw, i32 noundef %i.jev, ptr noundef nonnull %i.aoy) #27
  tail call void @dt_colorspaces_cygm_to_rgb(ptr noundef nonnull %i.aoz, i32 noundef 1, ptr noundef nonnull %i.aoy) #27
  br label %demosaic_box3.exit

bb.nx:                                            ; preds = %bb.nu
  switch i32 %.0394, label %bb.qh [
    i32 5, label %bb.ny
    i32 6, label %bb.oh
    i32 1, label %bb.qi
  ]

bb.ny:                                            ; preds = %bb.nx
  tail call void @llvm.experimental.noalias.scope.decl(metadata !499)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !500)
  tail call fastcc void @demosaic_ppg(ptr noundef nonnull %i.anw, ptr noundef %i.axo, i32 noundef %i.bo, i32 noundef %i.axe, i32 noundef range(i32 10, 9) %.fr1070, float noundef 0.000000e+00, i32 noundef 10)
  %i.jew = icmp slt i32 %i.axe, 20
  %or.cond.i540 = or i1 %i.aoq, %i.jew
  br i1 %or.cond.i540, label %demosaic_box3.exit, label %bb.nz

bb.nz:                                            ; preds = %bb.ny
  %i.jex = add nsw i32 %i.axe, -21
  %i.jey = sdiv i32 %i.jex, 92
  %i.jez = tail call ptr @dt_alloc_aligned(i64 noundef 50176) #27, !noalias !499 ; 19 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.jez, i64 64) ]
  %.not.i.i541 = icmp eq ptr %i.jez, null
  br i1 %.not.i.i541, label %.preheader833.preheader.i, label %bb.oa

bb.oa:                                            ; preds = %bb.nz
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(50176) %i.jez, i8 0, i64 50176, i1 false), !noalias !499
  br label %.preheader833.preheader.i

.preheader833.preheader.i:                        ; preds = %bb.oa, %bb.nz
  %i.jfa = tail call ptr @dt_alloc_aligned(i64 noundef 25088) #27, !noalias !499 ; 28 uses
  %i.jfb = ptrtoaddr ptr %i.jfa to i64
  call void @llvm.assume(i1 true) [ "align"(ptr %i.jfa, i64 64) ]
  %i.jfc = tail call ptr @dt_alloc_aligned(i64 noundef 50176) #27, !noalias !499 ; 38 uses
  %i.jfd = ptrtoaddr ptr %i.jfc to i64            ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.jfc, i64 64) ]
  %i.jfe = tail call ptr @dt_alloc_aligned(i64 noundef 25088) #27, !noalias !499 ; 13 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.jfe, i64 64) ]
  %i.jff = tail call ptr @dt_alloc_aligned(i64 noundef 25088) #27, !noalias !499 ; 13 uses
  %i.jfg = insertelement <2 x ptr> poison, ptr %i.jfe, i64 0
  %i.jfh = insertelement <2 x ptr> %i.jfg, ptr %i.jff, i64 1
  %i.jfi = shufflevector <2 x ptr> %i.jfh, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.jfj = ptrtoaddr <4 x ptr> %i.jfi to <4 x i64>
  call void @llvm.assume(i1 true) [ "align"(ptr %i.jff, i64 64) ]
  %i.jfk = tail call ptr @dt_alloc_aligned(i64 noundef 150528) #27, !noalias !499 ; 61 uses
  %i.jfl = ptrtoaddr ptr %i.jfk to i64            ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.jfk, i64 64) ]
  %i.jfm = getelementptr inbounds nuw i8, ptr %i.jfk, i64 50176 ; 24 uses
  %i.jfn = getelementptr inbounds nuw i8, ptr %i.jfk, i64 100352 ; 12 uses
  %scevgep2962 = getelementptr i8, ptr %i.jfk, i64 -1344
  %scevgep2964 = getelementptr i8, ptr %i.jfk, i64 101700
  %scevgep2966 = getelementptr i8, ptr %i.jez, i64 -452
  %scevgep2968 = getelementptr i8, ptr %i.jez, i64 456
  %scevgep3049 = getelementptr i8, ptr %i.jfk, i64 100352
  %scevgep3051 = getelementptr i8, ptr %i.jfk, i64 100356
  %scevgep3054 = getelementptr i8, ptr %i.jfa, i64 8
  %scevgep3057 = getelementptr i8, ptr %i.jfa, i64 8
  %scevgep3059 = getelementptr i8, ptr %i.jfa, i64 8
  %scevgep3063 = getelementptr i8, ptr %i.jfa, i64 12
  %scevgep3065 = getelementptr i8, ptr %i.jfk, i64 99900
  %scevgep3067 = getelementptr i8, ptr %i.jfk, i64 99904
  %scevgep3069 = getelementptr i8, ptr %i.jfk, i64 100804
  %scevgep3071 = getelementptr i8, ptr %i.jfk, i64 100808
  %scevgep3073 = getelementptr i8, ptr %i.jfk, i64 98996
  %scevgep3075 = getelementptr i8, ptr %i.jfk, i64 99000
  %scevgep3077 = getelementptr i8, ptr %i.jfk, i64 50176
  %scevgep3079 = getelementptr i8, ptr %i.jfk, i64 50180
  %scevgep3081 = getelementptr i8, ptr %i.jfk, i64 49272
  %scevgep3083 = getelementptr i8, ptr %i.jfk, i64 49276
  %scevgep3085 = getelementptr i8, ptr %i.jfk, i64 99908
  %scevgep3087 = getelementptr i8, ptr %i.jfk, i64 99912
  %scevgep3089 = getelementptr i8, ptr %i.jfk, i64 100796
  %scevgep3091 = getelementptr i8, ptr %i.jfk, i64 100800
  %scevgep3093 = getelementptr i8, ptr %i.jfk, i64 99020
  %scevgep3095 = getelementptr i8, ptr %i.jfk, i64 99024
  %scevgep3097 = getelementptr i8, ptr %i.jfk, i64 49288
  %scevgep3099 = getelementptr i8, ptr %i.jfk, i64 49292
  %scevgep3101 = getelementptr i8, ptr %i.jfk, i64 101684
  %scevgep3103 = getelementptr i8, ptr %i.jfk, i64 101688
  %scevgep3105 = getelementptr i8, ptr %i.jfk, i64 51064
  %scevgep3107 = getelementptr i8, ptr %i.jfk, i64 51068
  %scevgep3109 = getelementptr i8, ptr %i.jfk, i64 101708
  %scevgep3111 = getelementptr i8, ptr %i.jfk, i64 101712
  %scevgep3113 = getelementptr i8, ptr %i.jfk, i64 51080
  %scevgep3115 = getelementptr i8, ptr %i.jfk, i64 51084
  %scevgep3117 = getelementptr i8, ptr %i.jfk, i64 49724
  %scevgep3119 = getelementptr i8, ptr %i.jfk, i64 49728
  %scevgep3121 = getelementptr i8, ptr %i.jfk, i64 49732
  %scevgep3123 = getelementptr i8, ptr %i.jfk, i64 49736
  %scevgep3125 = getelementptr i8, ptr %i.jfk, i64 50620
  %scevgep3127 = getelementptr i8, ptr %i.jfk, i64 50624
  %scevgep3129 = getelementptr i8, ptr %i.jfk, i64 50628
  %scevgep3131 = getelementptr i8, ptr %i.jfk, i64 50632
  %i.jfo = insertelement <4 x i64> poison, i64 %i.jfb, i64 0
  %i.jfp = shufflevector <4 x i64> %i.jfo, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.jfq = or disjoint <4 x i64> %i.jfp, <i64 4, i64 8, i64 8, i64 4>
  %scevgep3304 = getelementptr i8, ptr %i.jfc, i64 -1344
  %scevgep3309 = getelementptr i8, ptr %i.jfc, i64 -440
  %scevgep3311 = getelementptr i8, ptr %i.jfc, i64 -892
  %scevgep3313 = getelementptr i8, ptr %i.jfc, i64 12
  %scevgep3315 = getelementptr i8, ptr %i.jfc, i64 -1320
  %scevgep3317 = getelementptr i8, ptr %i.jfc, i64 -432
  %scevgep3319 = getelementptr i8, ptr %i.jfc, i64 -876
  %scevgep3326 = getelementptr i8, ptr %i.jfc, i64 -1344
  %scevgep3328 = getelementptr i8, ptr %i.jfc, i64 1364
  %scevgep3380 = getelementptr i8, ptr %i.jfk, i64 50176
  %scevgep3382 = getelementptr i8, ptr %i.jfk, i64 50180
  %scevgep3384 = getelementptr i8, ptr %i.jfc, i64 -1792
  %scevgep3386 = getelementptr i8, ptr %i.jfc, i64 1796
  %scevgep3388 = getelementptr i8, ptr %i.jfa, i64 -448
  %scevgep3390 = getelementptr i8, ptr %i.jfa, i64 452
  %scevgep3392 = getelementptr i8, ptr %i.jez, i64 -452
  %scevgep3394 = getelementptr i8, ptr %i.jez, i64 456
  %scevgep3471 = getelementptr i8, ptr %i.jfa, i64 4
  %scevgep3473 = getelementptr i8, ptr %i.jfc, i64 -452
  %scevgep3475 = getelementptr i8, ptr %i.jfc, i64 456
  %scevgep3507 = getelementptr i8, ptr %i.jez, i64 16
  %scevgep3558 = getelementptr i8, ptr %i.jfc, i64 -1328
  %scevgep3560 = getelementptr i8, ptr %i.jfc, i64 1344
  %invariant.op4845 = sub i64 %i.jfl, %i.jfd
  %invariant.op4847 = sub i64 %i.jfl, %i.jfd
  br label %.preheader833.i

.preheader833.i:                                  ; preds = %._crit_edge939.i, %.preheader833.preheader.i
  %indvars.iv1056.i = phi i32 [ 0, %.preheader833.preheader.i ], [ %indvars.iv.next1057.i, %._crit_edge939.i ] ; 2 uses
  %indvars.iv947.i = phi i32 [ 0, %.preheader833.preheader.i ], [ %indvars.iv.next948.i, %._crit_edge939.i ] ; 2 uses
  %.0740941.i = phi i32 [ 0, %.preheader833.preheader.i ], [ %i.jgo, %._crit_edge939.i ] ; 4 uses
  %i.jfr = mul nuw nsw i32 %.0740941.i, 92        ; 5 uses
  %i.jfs = add nuw nsw i32 %i.jfr, 112            ; 2 uses
  %i.jft = tail call i32 @llvm.smin.i32(i32 %i.jfs, i32 %i.axe) ; 3 uses
  %i.jfu = sub nsw i32 %i.jft, %i.jfr             ; 6 uses
  %i.jfv = icmp sgt i32 %i.jfs, %i.axe
  %i.jfw = icmp sgt i32 %i.axe, %i.jfr
  %i.jfx = add nsw i32 %i.jfu, -3                 ; 2 uses
  %i.jfy = tail call i32 @llvm.smin.i32(i32 %i.jfx, i32 5)
  %i.jfz = icmp sgt i32 %i.jfu, 6                 ; 2 uses
  %i.jga = add nsw i32 %i.jfu, -4                 ; 5 uses
  %i.jgb = icmp sgt i32 %i.jfu, 8                 ; 3 uses
  %i.jgc = add nsw i32 %i.jfu, -2
  %i.jgd = icmp sgt i32 %i.jfu, 4
  %i.jge = icmp eq i32 %.0740941.i, 0
  %i.jgf = select i1 %i.jge, i32 9, i32 10        ; 3 uses
  %i.jgg = add nuw nsw i32 %i.jgf, %i.jfr         ; 2 uses
  %i.jgh = icmp eq i32 %.0740941.i, %i.jey        ; 2 uses
  %.neg.i542 = select i1 %i.jgh, i32 -9, i32 -10
  %i.jgi = add nsw i32 %i.jft, %.neg.i542         ; 2 uses
  %i.jgj = icmp slt i32 %i.jgg, %i.jgi
  %i.jgk = sext i32 %i.jfy to i64
  %i.jgl = add i32 %i.jgf, %indvars.iv1056.i
  %i.jgm = mul i32 %i.jgl, %i.bo
  %i.jgn = mul nuw nsw i32 %i.jgf, 112
  %invariant.op.i = add nsw i64 %i.jgk, -1
  br label %bb.ob

._crit_edge942.split.i:                           ; preds = %._crit_edge939.i
  tail call void @free(ptr noundef %i.jfc) #27, !noalias !499
  tail call void @free(ptr noundef %i.jfk) #27, !noalias !499
  tail call void @free(ptr noundef %i.jez) #27, !noalias !499
  tail call void @free(ptr noundef %i.jfa) #27, !noalias !499
  tail call void @free(ptr noundef %i.jfe) #27, !noalias !499
  tail call void @free(ptr noundef %i.jff) #27, !noalias !499
  br label %demosaic_box3.exit

._crit_edge939.i:                                 ; preds = %._crit_edge935.split.i
  %i.jgo = add nuw nsw i32 %.0740941.i, 1
  %indvars.iv.next948.i = add i32 %indvars.iv947.i, %i.aov
  %indvars.iv.next1057.i = add nuw i32 %indvars.iv1056.i, 92
  br i1 %i.jgh, label %._crit_edge942.split.i, label %.preheader833.i

bb.ob:                                            ; preds = %._crit_edge935.split.i, %.preheader833.i
  %indvars.iv1058.i = phi i32 [ %i.jgm, %.preheader833.i ], [ %indvars.iv.next1059.i, %._crit_edge935.split.i ] ; 2 uses
  %indvars.iv1018.i = phi i32 [ 0, %.preheader833.i ], [ %indvars.iv.next1019.i, %._crit_edge935.split.i ] ; 6 uses
  %indvars.iv1016.i = phi i32 [ 112, %.preheader833.i ], [ %indvars.iv.next1017.i, %._crit_edge935.split.i ] ; 5 uses
  %indvars.iv949.i = phi i32 [ %indvars.iv947.i, %.preheader833.i ], [ %indvars.iv.next950.i, %._crit_edge935.split.i ] ; 2 uses
  %.0745937.i = phi i32 [ 0, %.preheader833.i ], [ %i.lsf, %._crit_edge935.split.i ] ; 5 uses
  %smin3632 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1016.i)
  %i.jgp = mul i32 %.0745937.i, 92
  %i.jgq = or disjoint i32 %i.jgp, 1
  %smax3633 = call i32 @llvm.smax.i32(i32 %smin3632, i32 %i.jgq)
  %i.jgr = add i32 %indvars.iv1018.i, -1
  %i.jgs = add i32 %smax3633, %i.jgr              ; 3 uses
  %i.jgt = zext i32 %i.jgs to i64
  %i.jgu = add nuw nsw i64 %i.jgt, 1              ; 5 uses
  %smin3555 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1016.i)
  %i.jgv = add i32 %smin3555, %indvars.iv1018.i
  %smin3556 = call i32 @llvm.smin.i32(i32 %i.jgv, i32 112)
  %i.jgw = add i32 %smin3556, -4
  %i.jgx = sext i32 %i.jgw to i64
  %i.jgy = shl nsw i64 %i.jgx, 2                  ; 2 uses
  %smin3509 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1016.i)
  %i.jgz = add i32 %smin3509, %indvars.iv1018.i
  %smin3510 = call i32 @llvm.smin.i32(i32 %i.jgz, i32 112)
  %i.jha = add i32 %smin3510, -4
  %i.jhb = sext i32 %i.jha to i64
  %i.jhc = shl nsw i64 %i.jhb, 2                  ; 5 uses
  %scevgep3520 = getelementptr i8, ptr %scevgep3519, i64 %i.jhc
  %6 = add i32 %indvars.iv1018.i, -1
  %smin1174 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1016.i)
  %i.jhd = add i32 %smin1174, %indvars.iv1018.i
  %smin1175 = call i32 @llvm.smin.i32(i32 %i.jhd, i32 112) ; 11 uses
  %i.jhe = add i32 %smin1175, -4
  %i.jhf = sext i32 %i.jhe to i64                 ; 10 uses
  %i.jhg = add i32 %smin1175, -3                  ; 2 uses
  %i.jhh = sext i32 %i.jhg to i64                 ; 2 uses
  %i.jhi = add nsw i64 %i.jhf, 336
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.jhg, i32 5)
  %i.jhj = add nsw i32 %smax.i, -4
  %i.jhk = lshr i32 %i.jhj, 1                     ; 4 uses
  %i.jhl = mul i32 %.0745937.i, 92                ; 8 uses
  %i.jhm = add i32 %i.jhl, 112                    ; 2 uses
  %i.jhn = tail call i32 @llvm.smin.i32(i32 %i.jhm, i32 %i.bo) ; 4 uses
  %i.jho = sub nsw i32 %i.jhn, %i.jhl             ; 4 uses
  %i.jhp = tail call i32 @llvm.smin.i32(i32 %i.jho, i32 112) ; 3 uses
  %i.jhq = icmp sgt i32 %i.jhm, %i.bo
  %or.cond794.i = select i1 %i.jfv, i1 true, i1 %i.jhq
  br i1 %or.cond794.i, label %bb.oc, label %bb.od

bb.oc:                                            ; preds = %bb.ob
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(50176) %i.jez, i8 0, i64 50176, i1 false), !noalias !499
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(150528) %i.jfk, i8 0, i64 150528, i1 false), !noalias !499
  br label %bb.od

bb.od:                                            ; preds = %bb.oc, %bb.ob
  %i.jhr = icmp sgt i32 %i.bo, %i.jhl
  %or.cond943.i = select i1 %i.jfw, i1 %i.jhr, i1 false
  br i1 %or.cond943.i, label %iter.check3655.preheader, label %._crit_edge842.split.i

iter.check3655.preheader:                         ; preds = %bb.od
  %min.iters.check3635 = icmp ult i32 %i.jgs, 3
  %min.iters.check3637 = icmp ult i32 %i.jgs, 31
  %i.jhs = and i64 %i.jgu, 28
  %n.vec3639 = and i64 %i.jgu, 8589934560         ; 6 uses
  %i.jht = trunc i64 %n.vec3639 to i32
  %i.jhu = add i32 %i.jhl, %i.jht
  %cmp.n3650 = icmp eq i64 %i.jgu, %n.vec3639
  %min.epilog.iters.check3658 = icmp eq i64 %i.jhs, 0
  %n.vec3660 = and i64 %i.jgu, 8589934588         ; 5 uses
  %i.jhv = trunc i64 %n.vec3660 to i32
  %i.jhw = add i32 %i.jhl, %i.jhv
  %cmp.n3668 = icmp eq i64 %i.jgu, %n.vec3660
  br label %iter.check3655

._crit_edge842.split.i:                           ; preds = %._crit_edge.i549, %bb.od
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27, !noalias !501
  br i1 %i.jfz, label %.lr.ph850.i, label %._crit_edge851.split.thread.i

._crit_edge851.split.thread.i:                    ; preds = %._crit_edge842.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27, !noalias !501
  br label %.preheader832.i

.lr.ph850.i:                                      ; preds = %._crit_edge842.split.i
  %i.jhx = icmp sgt i32 %i.jho, 8                 ; 2 uses
  br i1 %i.jhx, label %.lr.ph846.i.preheader, label %._crit_edge851.split.i

.lr.ph846.i.preheader:                            ; preds = %.lr.ph850.i
  %i.jhy = add nsw i64 %i.jhf, -4                 ; 3 uses
  %min.iters.check3602 = icmp ult i64 %i.jhy, 8
  %n.vec3604 = and i64 %i.jhy, -8                 ; 4 uses
  %i.jhz = or disjoint i64 %n.vec3604, 4
  %cmp.n3616 = icmp eq i64 %i.jhy, %n.vec3604
  br label %.lr.ph846.i

iter.check3655:                                   ; preds = %iter.check3655.preheader, %._crit_edge.i549
  %indvars.iv951.i = phi i32 [ %indvars.iv.next952.i, %._crit_edge.i549 ], [ %indvars.iv949.i, %iter.check3655.preheader ] ; 3 uses
  %indvars.iv.i548 = phi i32 [ %indvars.iv.next.i550, %._crit_edge.i549 ], [ 0, %iter.check3655.preheader ] ; 3 uses
  %.0746839.i = phi i32 [ %i.jkn, %._crit_edge.i549 ], [ %i.jfr, %iter.check3655.preheader ] ; 2 uses
  %i.jia = zext i32 %indvars.iv.i548 to i64       ; 6 uses
  %i.jib = zext i32 %indvars.iv951.i to i64       ; 6 uses
  %i.jic = shl i32 %.0746839.i, 2
  %i.jid = and i32 %i.jic, 28                     ; 2 uses
  %i.jie = lshr i32 %.fr1070, %i.jid
  %i.jif = and i32 %i.jie, 3
  %i.jig = or disjoint i32 %i.jid, 2
  %i.jih = lshr i32 %.fr1070, %i.jig
  %i.jii = and i32 %i.jih, 3
  %i.jij = zext nneg i32 %i.jii to i64            ; 2 uses
  %i.jik = getelementptr inbounds nuw [50176 x i8], ptr %i.jfk, i64 %i.jij ; 3 uses
  %i.jil = zext nneg i32 %i.jif to i64            ; 2 uses
  %i.jim = getelementptr inbounds nuw [50176 x i8], ptr %i.jfk, i64 %i.jil ; 3 uses
  br i1 %min.iters.check3635, label %vec.epilog.scalar.ph3656.preheader, label %vector.memcheck3619

vector.memcheck3619:                              ; preds = %iter.check3655
  %i.jin = zext i32 %indvars.iv.i548 to i64
  %i.jio = shl nuw nsw i64 %i.jin, 2              ; 3 uses
  %i.jip = add i64 %i.jio, %i.jfd
  %i.jiq = zext i32 %indvars.iv951.i to i64
  %i.jir = add nsw i64 %i.axn, %i.jiq
  %i.jis = shl nsw i64 %i.jir, 2
  %i.jit = add i64 %i.jis, %.13623                ; 3 uses
  %i.jiu = mul nuw nsw i64 %i.jil, 50176          ; 2 uses
  %i.jiv = mul nuw nsw i64 %i.jij, 50176          ; 2 uses
  %.reass4846 = add i64 %i.jiv, %invariant.op4845
  %diff.check3621 = icmp ugt i64 %.reass4846, -128
  %i.jiw = add i64 %i.jiv, %i.jfl
  %i.jix = add i64 %i.jiw, %i.jio
  %i.jiy = sub i64 %i.jit, %i.jix
  %diff.check3624 = icmp ugt i64 %i.jiy, -128
  %conflict.rdx3625 = or i1 %diff.check3621, %diff.check3624
  %.reass4848 = add i64 %i.jiu, %invariant.op4847
  %diff.check3626 = icmp ugt i64 %.reass4848, -128
  %conflict.rdx3627 = or i1 %conflict.rdx3625, %diff.check3626
  %i.jiz = add i64 %i.jiu, %i.jfl
  %i.jja = add i64 %i.jiz, %i.jio
  %i.jjb = sub i64 %i.jit, %i.jja
  %diff.check3628 = icmp ugt i64 %i.jjb, -128
  %conflict.rdx3629 = or i1 %conflict.rdx3627, %diff.check3628
  %i.jjc = sub i64 %i.jit, %i.jip
  %diff.check3630 = icmp ugt i64 %i.jjc, -128
  %conflict.rdx3631 = or i1 %conflict.rdx3629, %diff.check3630
  br i1 %conflict.rdx3631, label %vec.epilog.scalar.ph3656.preheader, label %vector.main.loop.iter.check3636

vector.main.loop.iter.check3636:                  ; preds = %vector.memcheck3619
  br i1 %min.iters.check3637, label %vec.epilog.ph3659, label %vector.ph3638

vector.ph3638:                                    ; preds = %vector.main.loop.iter.check3636
  %i.jjd = add nuw nsw i64 %n.vec3639, %i.jib
  %i.jje = add nuw nsw i64 %n.vec3639, %i.jia
  %invariant.gep4841 = getelementptr [4 x i8], ptr %i.axo, i64 %i.jib
  br label %vector.body3642

vector.body3642:                                  ; preds = %vector.ph3638, %vector.body3642
  %index3643 = phi i64 [ 0, %vector.ph3638 ], [ %index.next3648, %vector.body3642 ] ; 3 uses
  %i.jjf = add nuw i64 %index3643, %i.jia         ; 3 uses
  %gep4842 = getelementptr [4 x i8], ptr %invariant.gep4841, i64 %index3643 ; 4 uses
  %i.jjg = getelementptr inbounds nuw i8, ptr %gep4842, i64 32
  %i.jjh = getelementptr inbounds nuw i8, ptr %gep4842, i64 64
  %i.jji = getelementptr inbounds nuw i8, ptr %gep4842, i64 96
  %wide.load3644 = load <8 x float>, ptr %gep4842, align 4, !tbaa !12, !alias.scope !500, !noalias !499
  %wide.load3645 = load <8 x float>, ptr %i.jjg, align 4, !tbaa !12, !alias.scope !500, !noalias !499
  %wide.load3646 = load <8 x float>, ptr %i.jjh, align 4, !tbaa !12, !alias.scope !500, !noalias !499
  %wide.load3647 = load <8 x float>, ptr %i.jji, align 4, !tbaa !12, !alias.scope !500, !noalias !499
  %i.jjj = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %wide.load3644, <8 x float> zeroinitializer)
  %i.jjk = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %wide.load3645, <8 x float> zeroinitializer)
  %i.jjl = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %wide.load3646, <8 x float> zeroinitializer)
  %i.jjm = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %wide.load3647, <8 x float> zeroinitializer)
  %i.jjn = fmul reassoc nsz arcp contract afn <8 x float> %i.jjj, %i.awb ; 3 uses
  %i.jjo = fmul reassoc nsz arcp contract afn <8 x float> %i.jjk, %i.awc ; 3 uses
  %i.jjp = fmul reassoc nsz arcp contract afn <8 x float> %i.jjl, %i.awd ; 3 uses
  %i.jjq = fmul reassoc nsz arcp contract afn <8 x float> %i.jjm, %i.awe ; 3 uses
  %i.jjr = getelementptr inbounds nuw [4 x i8], ptr %i.jik, i64 %i.jjf ; 4 uses
  %i.jjs = getelementptr inbounds nuw i8, ptr %i.jjr, i64 32
  %i.jjt = getelementptr inbounds nuw i8, ptr %i.jjr, i64 64
  %i.jju = getelementptr inbounds nuw i8, ptr %i.jjr, i64 96
  store <8 x float> %i.jjn, ptr %i.jjr, align 64, !tbaa !12, !noalias !499
  store <8 x float> %i.jjo, ptr %i.jjs, align 32, !tbaa !12, !noalias !499
  store <8 x float> %i.jjp, ptr %i.jjt, align 64, !tbaa !12, !noalias !499
  store <8 x float> %i.jjq, ptr %i.jju, align 32, !tbaa !12, !noalias !499
  %i.jjv = getelementptr inbounds nuw [4 x i8], ptr %i.jim, i64 %i.jjf ; 4 uses
  %i.jjw = getelementptr inbounds nuw i8, ptr %i.jjv, i64 32
  %i.jjx = getelementptr inbounds nuw i8, ptr %i.jjv, i64 64
  %i.jjy = getelementptr inbounds nuw i8, ptr %i.jjv, i64 96
  store <8 x float> %i.jjn, ptr %i.jjv, align 64, !tbaa !12, !noalias !499
  store <8 x float> %i.jjo, ptr %i.jjw, align 32, !tbaa !12, !noalias !499
  store <8 x float> %i.jjp, ptr %i.jjx, align 64, !tbaa !12, !noalias !499
  store <8 x float> %i.jjq, ptr %i.jjy, align 32, !tbaa !12, !noalias !499
  %i.jjz = getelementptr inbounds nuw [4 x i8], ptr %i.jfc, i64 %i.jjf ; 4 uses
  %i.jka = getelementptr inbounds nuw i8, ptr %i.jjz, i64 32
  %i.jkb = getelementptr inbounds nuw i8, ptr %i.jjz, i64 64
  %i.jkc = getelementptr inbounds nuw i8, ptr %i.jjz, i64 96
  store <8 x float> %i.jjn, ptr %i.jjz, align 64, !tbaa !12, !noalias !499
  store <8 x float> %i.jjo, ptr %i.jka, align 32, !tbaa !12, !noalias !499
  store <8 x float> %i.jjp, ptr %i.jkb, align 64, !tbaa !12, !noalias !499
  store <8 x float> %i.jjq, ptr %i.jkc, align 32, !tbaa !12, !noalias !499
  %index.next3648 = add nuw i64 %index3643, 32    ; 2 uses
  %i.jkd = icmp eq i64 %index.next3648, %n.vec3639
  br i1 %i.jkd, label %middle.block3649, label %vector.body3642, !llvm.loop !259

middle.block3649:                                 ; preds = %vector.body3642
  br i1 %cmp.n3650, label %._crit_edge.i549, label %vec.epilog.iter.check3657

vec.epilog.iter.check3657:                        ; preds = %middle.block3649
  br i1 %min.epilog.iters.check3658, label %vec.epilog.scalar.ph3656.preheader, label %vec.epilog.ph3659, !prof !469

vec.epilog.ph3659:                                ; preds = %vector.main.loop.iter.check3636, %vec.epilog.iter.check3657
  %vec.epilog.resume.val3651 = phi i64 [ %n.vec3639, %vec.epilog.iter.check3657 ], [ 0, %vector.main.loop.iter.check3636 ]
  %i.jke = add nuw nsw i64 %n.vec3660, %i.jib
  %i.jkf = add nuw nsw i64 %n.vec3660, %i.jia
  %invariant.gep4843 = getelementptr [4 x i8], ptr %i.axo, i64 %i.jib
  br label %vec.epilog.vector.body3663

vec.epilog.vector.body3663:                       ; preds = %vec.epilog.vector.body3663, %vec.epilog.ph3659
  %index3664 = phi i64 [ %vec.epilog.resume.val3651, %vec.epilog.ph3659 ], [ %index.next3666, %vec.epilog.vector.body3663 ] ; 3 uses
  %i.jkg = add nuw i64 %index3664, %i.jia         ; 3 uses
  %gep4844 = getelementptr [4 x i8], ptr %invariant.gep4843, i64 %index3664
  %wide.load3665 = load <4 x float>, ptr %gep4844, align 4, !tbaa !12, !alias.scope !500, !noalias !499
  %i.jkh = call reassoc nsz arcp contract afn <4 x float> @llvm.maxnum.v4f32(<4 x float> %wide.load3665, <4 x float> zeroinitializer)
  %i.jki = fmul reassoc nsz arcp contract afn <4 x float> %i.jkh, %i.awf ; 3 uses
  %i.jkj = getelementptr inbounds nuw [4 x i8], ptr %i.jik, i64 %i.jkg
  store <4 x float> %i.jki, ptr %i.jkj, align 16, !tbaa !12, !noalias !499
  %i.jkk = getelementptr inbounds nuw [4 x i8], ptr %i.jim, i64 %i.jkg
  store <4 x float> %i.jki, ptr %i.jkk, align 16, !tbaa !12, !noalias !499
  %i.jkl = getelementptr inbounds nuw [4 x i8], ptr %i.jfc, i64 %i.jkg
  store <4 x float> %i.jki, ptr %i.jkl, align 16, !tbaa !12, !noalias !499
  %index.next3666 = add nuw i64 %index3664, 4     ; 2 uses
  %i.jkm = icmp eq i64 %index.next3666, %n.vec3660
  br i1 %i.jkm, label %vec.epilog.middle.block3667, label %vec.epilog.vector.body3663, !llvm.loop !260

end_hunk_0
begin_hunk_1_@process:bb.a
  %strided.vec3251 = shufflevector <16 x float> %wide.vec3250, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kyk = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3230, %strided.vec3251
  %i.kyl = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kyk)
  %i.kym = fadd reassoc nsz arcp contract afn <8 x float> %i.kyl, %i.kxb
  %i.kyn = getelementptr inbounds nuw i8, ptr %i.kxh, i64 904
  %wide.vec3252 = load <16 x float>, ptr %i.kyn, align 4, !tbaa !12, !alias.scope !539, !noalias !499
  %strided.vec3253 = shufflevector <16 x float> %wide.vec3252, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kyo = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3235, %strided.vec3253
  %i.kyp = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kyo)
  %i.kyq = fadd reassoc nsz arcp contract afn <8 x float> %i.kym, %i.kyp ; 2 uses
  %i.kyr = getelementptr inbounds [4 x i8], ptr %i.jfm, i64 %i.kwv
  %wide.vec3254 = load <16 x float>, ptr %i.kyr, align 4, !tbaa !12, !alias.scope !540, !noalias !499
  %strided.vec3255 = shufflevector <16 x float> %wide.vec3254, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kys = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3228, %strided.vec3255
  %i.kyt = getelementptr inbounds [4 x i8], ptr %i.jfm, i64 %i.kxm
  %wide.vec3256 = load <16 x float>, ptr %i.kyt, align 4, !tbaa !12, !alias.scope !541, !noalias !499
  %strided.vec3257 = shufflevector <16 x float> %wide.vec3256, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kyu = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3239, %strided.vec3257
  %i.kyv = getelementptr inbounds nuw [4 x i8], ptr %i.jfm, i64 %i.kxo
  %wide.vec3258 = load <16 x float>, ptr %i.kyv, align 4, !tbaa !12, !alias.scope !542, !noalias !499
  %strided.vec3259 = shufflevector <16 x float> %wide.vec3258, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kyw = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3241, %strided.vec3259
  %i.kyx = getelementptr inbounds nuw [4 x i8], ptr %i.jfm, i64 %i.kwx
  %wide.vec3260 = load <16 x float>, ptr %i.kyx, align 4, !tbaa !12, !alias.scope !543, !noalias !499
  %strided.vec3261 = shufflevector <16 x float> %wide.vec3260, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kyy = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3230, %strided.vec3261
  %i.kyz = fmul reassoc nsz arcp contract afn <8 x float> %i.kyy, %i.kxl
  %i.kza = fmul reassoc nsz arcp contract afn <8 x float> %i.kyq, %i.kys
  %i.kzb = fadd reassoc nsz arcp contract afn <8 x float> %i.kyz, %i.kza
  %i.kzc = fadd reassoc nsz arcp contract afn <8 x float> %i.kyq, %i.kxl
  %i.kzd = fdiv reassoc nsz arcp contract afn <8 x float> %i.kzb, %i.kzc ; 2 uses
  %i.kze = fmul reassoc nsz arcp contract afn <8 x float> %i.kyw, %i.kya
  %i.kzf = fmul reassoc nsz arcp contract afn <8 x float> %i.kyu, %i.kyi
  %i.kzg = fadd reassoc nsz arcp contract afn <8 x float> %i.kze, %i.kzf
  %i.kzh = fadd reassoc nsz arcp contract afn <8 x float> %i.kyi, %i.kya
  %i.kzi = fdiv reassoc nsz arcp contract afn <8 x float> %i.kzg, %i.kzh
  %i.kzj = fcmp reassoc nsz arcp contract afn oge <8 x float> %i.kwu, zeroinitializer
  %i.kzk = fcmp reassoc nsz arcp contract afn ole <8 x float> %i.kwu, splat (float 1.000000e+00)
  %i.kzl = select reassoc nsz arcp contract afn <8 x i1> %i.kzk, <8 x float> %i.kwu, <8 x float> splat (float 1.000000e+00)
  %i.kzm = select reassoc nsz arcp contract afn <8 x i1> %i.kzj, <8 x float> %i.kzl, <8 x float> zeroinitializer
  %i.kzn = fsub reassoc nsz arcp contract afn <8 x float> %i.kzi, %i.kzd
  %i.kzo = fmul reassoc nsz arcp contract afn <8 x float> %i.kzn, %i.kzm
  %i.kzp = fadd reassoc nsz arcp contract afn <8 x float> %i.kzd, %i.kzo
  %i.kzq = fadd reassoc nsz arcp contract afn <8 x float> %i.kzp, %strided.vec3235
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.kzq, <8 x ptr> align 4 %wide.gep3231, <8 x i1> splat (i1 true)), !tbaa !12, !alias.scope !544, !noalias !545
  %index.next3262 = add nuw i64 %index3220, 8     ; 2 uses
  %vec.ind.next3263 = add nuw nsw <8 x i64> %vec.ind3221, splat (i64 16)
  %i.kzr = icmp eq i64 %index.next3262, %n.vec3215
  br i1 %i.kzr, label %scalar.ph3212.preheader, label %vector.body3219, !llvm.loop !321

._crit_edge914.i:                                 ; preds = %scalar.ph3212, %.preheader828.i
  %i.kzs = add nuw nsw i32 %.0755915.i, 1         ; 2 uses
  %i.kzt = icmp slt i32 %i.kzs, %i.jga
  %indvars.iv.next1034.i = add i32 %indvars.iv1033.i, 112
  %indvars.iv.next1038.i = add i32 %indvars.iv1037.i, 112
  %indvars.iv.next1042.i = add i32 %indvars.iv1041.i, 112
  %indvar.next3061 = add i32 %indvar3060, 1
  br i1 %i.kzt, label %.preheader828.i, label %.preheader.i543.preheader

.preheader.i543.preheader:                        ; preds = %._crit_edge914.i
  %i.kzu = add i32 %smin1175, -9
  %i.kzv = add i32 %smin1175, -9
  br label %.preheader.i543

scalar.ph3212:                                    ; preds = %scalar.ph3212.preheader, %scalar.ph3212
  %indvars.iv1045.i = phi i64 [ %indvars.iv.next1046.i, %scalar.ph3212 ], [ %indvars.iv1045.i.ph, %scalar.ph3212.preheader ] ; 7 uses
  %indvars.iv1043.i = phi i64 [ %indvars.iv.next1044.i, %scalar.ph3212 ], [ %indvars.iv1043.i.ph, %scalar.ph3212.preheader ] ; 2 uses
  %indvars.iv1039.i = phi i64 [ %indvars.iv.next1040.i, %scalar.ph3212 ], [ %indvars.iv1039.i.ph, %scalar.ph3212.preheader ] ; 2 uses
  %indvars.iv1035.i = phi i64 [ %indvars.iv.next1036.i, %scalar.ph3212 ], [ %indvars.iv1035.i.ph, %scalar.ph3212.preheader ] ; 2 uses
  %.0754907.i = phi i32 [ %i.ldy, %scalar.ph3212 ], [ %.0754907.i.ph, %scalar.ph3212.preheader ]
  %i.kzw = getelementptr inbounds nuw [4 x i8], ptr %i.jfa, i64 %indvars.iv1043.i
  %i.kzx = load float, ptr %i.kzw, align 4, !tbaa !12, !noalias !499 ; 2 uses
  %i.kzy = getelementptr inbounds nuw [4 x i8], ptr %i.jfa, i64 %indvars.iv1039.i
  %indvars.iv.next1040.i = add nuw nsw i64 %indvars.iv1039.i, 1
  %i.kzz = getelementptr inbounds nuw [4 x i8], ptr %i.jfa, i64 %indvars.iv1035.i
  %indvars.iv.next1036.i = add nuw nsw i64 %indvars.iv1035.i, 1
  %i.laa = load <2 x float>, ptr %i.kzy, align 4, !tbaa !12, !noalias !499
  %i.lab = load <2 x float>, ptr %i.kzz, align 4, !tbaa !12, !noalias !499
  %i.lac = shufflevector <2 x float> %i.lab, <2 x float> %i.laa, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.lad = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.lac)
  %i.lae = fmul reassoc nsz arcp contract afn float %i.lad, 2.500000e-01 ; 2 uses
  %i.laf = fsub reassoc nsz arcp contract afn float 5.000000e-01, %i.kzx
  %i.lag = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.laf)
  %i.lah = fsub reassoc nsz arcp contract afn float 5.000000e-01, %i.lae
  %i.lai = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lah)
  %i.laj = fcmp reassoc nsz arcp contract afn olt float %i.lag, %i.lai
  %i.lak = select reassoc nsz arcp contract afn i1 %i.laj, float %i.lae, float %i.kzx ; 3 uses
  %i.lal = add nsw i64 %indvars.iv1045.i, -113    ; 2 uses
  %i.lam = getelementptr inbounds [4 x i8], ptr %i.kuj, i64 %i.lal
  %i.lan = load float, ptr %i.lam, align 4, !tbaa !12, !noalias !499 ; 3 uses
  %i.lao = add nuw nsw i64 %indvars.iv1045.i, 113 ; 2 uses
  %i.lap = getelementptr inbounds nuw [4 x i8], ptr %i.kuj, i64 %i.lao
  %i.laq = load float, ptr %i.lap, align 4, !tbaa !12, !noalias !499 ; 3 uses
  %i.lar = fsub reassoc nsz arcp contract afn float %i.lan, %i.laq
  %i.las = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lar)
  %i.lat = fadd reassoc nsz arcp contract afn float %i.las, f0x3727C5AC ; 2 uses
  %i.lau = getelementptr [4 x i8], ptr %i.kuj, i64 %indvars.iv1045.i ; 5 uses
  %i.lav = getelementptr i8, ptr %i.lau, i64 -1356
  %i.law = load float, ptr %i.lav, align 4, !tbaa !12, !noalias !499
  %i.lax = fsub reassoc nsz arcp contract afn float %i.lan, %i.law
  %i.lay = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lax)
  %i.laz = fadd reassoc nsz arcp contract afn float %i.lat, %i.lay
  %i.lba = getelementptr inbounds nuw [4 x i8], ptr %i.jfm, i64 %indvars.iv1045.i ; 5 uses
  %i.lbb = load float, ptr %i.lba, align 4, !tbaa !12, !noalias !499 ; 5 uses
  %i.lbc = getelementptr i8, ptr %i.lba, i64 -904
  %i.lbd = load float, ptr %i.lbc, align 4, !tbaa !12, !noalias !499
  %i.lbe = fsub reassoc nsz arcp contract afn float %i.lbb, %i.lbd
  %i.lbf = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lbe)
  %i.lbg = fadd reassoc nsz arcp contract afn float %i.laz, %i.lbf ; 2 uses
  %i.lbh = add nsw i64 %indvars.iv1045.i, -111    ; 2 uses
  %i.lbi = getelementptr inbounds [4 x i8], ptr %i.kuj, i64 %i.lbh
  %i.lbj = load float, ptr %i.lbi, align 4, !tbaa !12, !noalias !499 ; 3 uses
  %i.lbk = add nuw nsw i64 %indvars.iv1045.i, 111 ; 2 uses
  %i.lbl = getelementptr inbounds nuw [4 x i8], ptr %i.kuj, i64 %i.lbk
  %i.lbm = load float, ptr %i.lbl, align 4, !tbaa !12, !noalias !499 ; 3 uses
  %i.lbn = fsub reassoc nsz arcp contract afn float %i.lbj, %i.lbm
  %i.lbo = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lbn)
  %i.lbp = fadd reassoc nsz arcp contract afn float %i.lbo, f0x3727C5AC ; 2 uses
  %i.lbq = getelementptr i8, ptr %i.lau, i64 -1332
  %i.lbr = load float, ptr %i.lbq, align 4, !tbaa !12, !noalias !499
  %i.lbs = fsub reassoc nsz arcp contract afn float %i.lbj, %i.lbr
  %i.lbt = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lbs)
  %i.lbu = fadd reassoc nsz arcp contract afn float %i.lbp, %i.lbt
  %i.lbv = getelementptr i8, ptr %i.lba, i64 -888
  %i.lbw = load float, ptr %i.lbv, align 4, !tbaa !12, !noalias !499
  %i.lbx = fsub reassoc nsz arcp contract afn float %i.lbb, %i.lbw
  %i.lby = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lbx)
  %i.lbz = fadd reassoc nsz arcp contract afn float %i.lbu, %i.lby ; 2 uses
  %i.lca = getelementptr inbounds nuw i8, ptr %i.lau, i64 1332
  %i.lcb = load float, ptr %i.lca, align 4, !tbaa !12, !noalias !499
  %i.lcc = fsub reassoc nsz arcp contract afn float %i.lbm, %i.lcb
  %i.lcd = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lcc)
  %i.lce = fadd reassoc nsz arcp contract afn float %i.lcd, %i.lbp
  %i.lcf = getelementptr inbounds nuw i8, ptr %i.lba, i64 888
  %i.lcg = load float, ptr %i.lcf, align 4, !tbaa !12, !noalias !499
  %i.lch = fsub reassoc nsz arcp contract afn float %i.lbb, %i.lcg
  %i.lci = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lch)
  %i.lcj = fadd reassoc nsz arcp contract afn float %i.lce, %i.lci ; 2 uses
  %i.lck = getelementptr inbounds nuw i8, ptr %i.lau, i64 1356
  %i.lcl = load float, ptr %i.lck, align 4, !tbaa !12, !noalias !499
  %i.lcm = fsub reassoc nsz arcp contract afn float %i.laq, %i.lcl
  %i.lcn = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lcm)
  %i.lco = fadd reassoc nsz arcp contract afn float %i.lcn, %i.lat
  %i.lcp = getelementptr inbounds nuw i8, ptr %i.lba, i64 904
  %i.lcq = load float, ptr %i.lcp, align 4, !tbaa !12, !noalias !499
  %i.lcr = fsub reassoc nsz arcp contract afn float %i.lbb, %i.lcq
  %i.lcs = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lcr)
  %i.lct = fadd reassoc nsz arcp contract afn float %i.lco, %i.lcs ; 2 uses
  %i.lcu = getelementptr inbounds [4 x i8], ptr %i.jfm, i64 %i.lal
  %i.lcv = load float, ptr %i.lcu, align 4, !tbaa !12, !noalias !499
  %i.lcw = fsub reassoc nsz arcp contract afn float %i.lan, %i.lcv
  %i.lcx = getelementptr inbounds [4 x i8], ptr %i.jfm, i64 %i.lbh
  %i.lcy = load float, ptr %i.lcx, align 4, !tbaa !12, !noalias !499
  %i.lcz = fsub reassoc nsz arcp contract afn float %i.lbj, %i.lcy
  %i.lda = getelementptr inbounds nuw [4 x i8], ptr %i.jfm, i64 %i.lbk
  %i.ldb = load float, ptr %i.lda, align 4, !tbaa !12, !noalias !499
  %i.ldc = fsub reassoc nsz arcp contract afn float %i.lbm, %i.ldb
  %i.ldd = getelementptr inbounds nuw [4 x i8], ptr %i.jfm, i64 %i.lao
  %i.lde = load float, ptr %i.ldd, align 4, !tbaa !12, !noalias !499
  %i.ldf = fsub reassoc nsz arcp contract afn float %i.laq, %i.lde
  %i.ldg = fmul reassoc nsz arcp contract afn float %i.ldf, %i.lbg
  %i.ldh = fmul reassoc nsz arcp contract afn float %i.lct, %i.lcw
  %i.ldi = fadd reassoc nsz arcp contract afn float %i.ldg, %i.ldh
  %i.ldj = fadd reassoc nsz arcp contract afn float %i.lct, %i.lbg
  %i.ldk = fdiv reassoc nsz arcp contract afn float %i.ldi, %i.ldj ; 2 uses
  %i.ldl = fmul reassoc nsz arcp contract afn float %i.ldc, %i.lbz
  %i.ldm = fmul reassoc nsz arcp contract afn float %i.lcz, %i.lcj
  %i.ldn = fadd reassoc nsz arcp contract afn float %i.ldl, %i.ldm
  %i.ldo = fadd reassoc nsz arcp contract afn float %i.lcj, %i.lbz
  %i.ldp = fdiv reassoc nsz arcp contract afn float %i.ldn, %i.ldo
  %i.ldq = fcmp reassoc nsz arcp contract afn oge float %i.lak, 0.000000e+00
  %i.ldr = fcmp reassoc nsz arcp contract afn ole float %i.lak, 1.000000e+00
  %i.lds = select reassoc nsz arcp contract afn i1 %i.ldr, float %i.lak, float 1.000000e+00
  %i.ldt = select reassoc nsz arcp contract afn i1 %i.ldq, float %i.lds, float 0.000000e+00
  %i.ldu = fsub reassoc nsz arcp contract afn float %i.ldp, %i.ldk
  %i.ldv = fmul reassoc nsz arcp contract afn float %i.ldu, %i.ldt
  %i.ldw = fadd reassoc nsz arcp contract afn float %i.ldk, %i.ldv
  %i.ldx = fadd reassoc nsz arcp contract afn float %i.ldw, %i.lbb
  store float %i.ldx, ptr %i.lau, align 4, !tbaa !12, !noalias !499
  %i.ldy = add nuw nsw i32 %.0754907.i, 2         ; 2 uses
  %indvars.iv.next1046.i = add nuw nsw i64 %indvars.iv1045.i, 2
  %indvars.iv.next1044.i = add nuw nsw i64 %indvars.iv1043.i, 1
  %i.ldz = icmp slt i32 %i.ldy, %i.kkz
  br i1 %i.ldz, label %scalar.ph3212, label %._crit_edge914.i, !llvm.loop !322

._crit_edge925.i:                                 ; preds = %._crit_edge922.i, %.preheader829.i, %.preheader830.i, %.preheader832.i
  %i.lea = icmp eq i32 %.0745937.i, 0
  %i.leb = select i1 %i.lea, i32 9, i32 10        ; 4 uses
  %i.lec = add nuw nsw i32 %i.leb, %i.jhl         ; 3 uses
  %i.led = icmp eq i32 %.0745937.i, %i.aos        ; 2 uses
  %.neg793.i = select i1 %i.led, i32 -9, i32 -10  ; 2 uses
  %i.lee = add nsw i32 %i.jhn, %.neg793.i         ; 2 uses
  %i.lef = icmp slt i32 %i.lec, %i.lee
  %or.cond944.i = select i1 %i.jgj, i1 %i.lef, i1 false
  br i1 %or.cond944.i, label %.lr.ph930.preheader.i, label %._crit_edge935.split.i

.lr.ph930.preheader.i:                            ; preds = %._crit_edge925.i
  %i.leg = add i32 %i.leb, %indvars.iv1058.i
  %i.leh = shl i32 %i.leg, 2
  %i.lei = or disjoint i32 %i.leb, %i.jgn
  %i.lej = add i32 %.neg793.i, %i.jhn
  %i.lek = add i32 %i.lej, %6
  %i.lel = sub i32 %i.lek, %i.leb                 ; 2 uses
  %i.lem = zext i32 %i.lel to i64
  %i.len = add nuw nsw i64 %i.lem, 1              ; 2 uses
  %min.iters.check2944 = icmp ult i32 %i.lel, 7
  %n.vec2946 = and i64 %i.len, 8589934584         ; 5 uses
  %i.leo = shl nuw nsw i64 %n.vec2946, 2
  %i.lep = trunc i64 %n.vec2946 to i32
  %i.leq = add i32 %i.lec, %i.lep
  %cmp.n2957 = icmp eq i64 %i.len, %n.vec2946
  br label %.lr.ph930.i

.preheader.i543:                                  ; preds = %.preheader.i543.preheader, %._crit_edge922.i
  %indvars.iv1051.i = phi i32 [ %indvars.iv.next1052.i, %._crit_edge922.i ], [ 452, %.preheader.i543.preheader ] ; 3 uses
  %.0744923.i = phi i32 [ %i.lld, %._crit_edge922.i ], [ 4, %.preheader.i543.preheader ] ; 2 uses
  %i.ler = shl i32 %.0744923.i, 2
  %i.les = and i32 %i.ler, 28
  %i.let = or disjoint i32 %i.les, 2
  %i.leu = lshr i32 %.fr1070, %i.let
  %i.lev = and i32 %i.leu, 1                      ; 5 uses
  %i.lew = or disjoint i32 %i.lev, 4              ; 4 uses
  %i.lex = icmp slt i32 %i.lew, %i.kkz
  br i1 %i.lex, label %.lr.ph921.preheader.i, label %._crit_edge922.i

.lr.ph921.preheader.i:                            ; preds = %.preheader.i543
  %i.ley = or disjoint i32 %i.lev, %indvars.iv1051.i
  %i.lez = sext i32 %i.ley to i64                 ; 5 uses
  %i.lfa = sub i32 %i.kzv, %i.lev                 ; 2 uses
  %i.lfb = lshr i32 %i.lfa, 1
  %narrow4568 = add nuw i32 %i.lfb, 1
  %i.lfc = zext i32 %narrow4568 to i64            ; 2 uses
  %min.iters.check2974 = icmp ult i32 %i.lfa, 16
  br i1 %min.iters.check2974, label %.lr.ph921.i.preheader, label %vector.memcheck2961

.lr.ph921.i.preheader:                            ; preds = %vector.body2980, %vector.memcheck2961, %.lr.ph921.preheader.i
  %indvars.iv1053.i.ph = phi i64 [ %i.lez, %vector.memcheck2961 ], [ %i.lez, %.lr.ph921.preheader.i ], [ %i.lfp, %vector.body2980 ]
  %.0743918.i.ph = phi i32 [ %i.lew, %vector.memcheck2961 ], [ %i.lew, %.lr.ph921.preheader.i ], [ %i.lfs, %vector.body2980 ]
  br label %.lr.ph921.i

vector.memcheck2961:                              ; preds = %.lr.ph921.preheader.i
  %i.lfd = or disjoint i32 %indvars.iv1051.i, %i.lev
  %i.lfe = sext i32 %i.lfd to i64
  %i.lff = shl nsw i64 %i.lfe, 2                  ; 3 uses
  %scevgep2963 = getelementptr i8, ptr %scevgep2962, i64 %i.lff
  %i.lfg = sub i32 %i.kzu, %i.lev
  %i.lfh = lshr i32 %i.lfg, 1
  %i.lfi = zext nneg i32 %i.lfh to i64
  %i.lfj = shl nuw nsw i64 %i.lfi, 3
  %i.lfk = add nsw i64 %i.lfj, %i.lff             ; 2 uses
  %scevgep2965 = getelementptr i8, ptr %scevgep2964, i64 %i.lfk
  %scevgep2967 = getelementptr i8, ptr %scevgep2966, i64 %i.lff
  %scevgep2969 = getelementptr i8, ptr %scevgep2968, i64 %i.lfk
  %bound02970 = icmp ult ptr %scevgep2963, %scevgep2969
  %bound12971 = icmp ult ptr %scevgep2967, %scevgep2965
  %found.conflict2972 = and i1 %bound02970, %bound12971
  br i1 %found.conflict2972, label %.lr.ph921.i.preheader, label %vector.ph2975

vector.ph2975:                                    ; preds = %vector.memcheck2961
  %i.lfl = and i64 %i.lfc, 7                      ; 2 uses
  %i.lfm = icmp eq i64 %i.lfl, 0
  %i.lfn = select i1 %i.lfm, i64 8, i64 %i.lfl
  %n.vec2976 = sub nsw i64 %i.lfc, %i.lfn         ; 3 uses
  %i.lfo = shl nsw i64 %n.vec2976, 1
  %i.lfp = add nsw i64 %i.lfo, %i.lez
  %i.lfq = trunc i64 %n.vec2976 to i32
  %i.lfr = shl i32 %i.lfq, 1
  %i.lfs = add i32 %i.lew, %i.lfr
  %broadcast.splatinsert2977 = insertelement <8 x i64> poison, i64 %i.lez, i64 0
  %broadcast.splat2978 = shufflevector <8 x i64> %broadcast.splatinsert2977, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction2979 = add nuw nsw <8 x i64> %broadcast.splat2978, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>
  br label %vector.body2980

vector.body2980:                                  ; preds = %vector.body2980, %vector.ph2975
  %index2981 = phi i64 [ 0, %vector.ph2975 ], [ %index.next3043, %vector.body2980 ] ; 2 uses
  %vec.ind2982 = phi <8 x i64> [ %induction2979, %vector.ph2975 ], [ %vec.ind.next3044, %vector.body2980 ] ; 3 uses
  %i.lft = shl nuw i64 %index2981, 1
  %i.lfu = add nuw i64 %i.lft, %i.lez             ; 7 uses
  %i.lfv = getelementptr inbounds nuw [4 x i8], ptr %i.jez, i64 %i.lfu ; 5 uses
  %wide.vec2983 = load <16 x float>, ptr %i.lfv, align 4, !tbaa !12, !alias.scope !546, !noalias !499
  %strided.vec2984 = shufflevector <16 x float> %wide.vec2983, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %i.lfw = add nsw i64 %i.lfu, -112               ; 3 uses
  %i.lfx = getelementptr i8, ptr %i.lfv, i64 -452
  %wide.vec2985 = load <16 x float>, ptr %i.lfx, align 4, !tbaa !12, !alias.scope !546, !noalias !499
  %strided.vec2986 = shufflevector <16 x float> %wide.vec2985, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.lfy = getelementptr i8, ptr %i.lfv, i64 -444
  %wide.vec2987 = load <16 x float>, ptr %i.lfy, align 4, !tbaa !12, !alias.scope !546, !noalias !499
  %strided.vec2988 = shufflevector <16 x float> %wide.vec2987, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.lfz = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec2988, %strided.vec2986
  %i.lga = add nuw nsw i64 %i.lfu, 112            ; 3 uses
  %i.lgb = getelementptr inbounds nuw i8, ptr %i.lfv, i64 444
  %wide.vec2989 = load <16 x float>, ptr %i.lgb, align 4, !tbaa !12, !alias.scope !546, !noalias !499
  %strided.vec2990 = shufflevector <16 x float> %wide.vec2989, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.lgc = fadd reassoc nsz arcp contract afn <8 x float> %i.lfz, %strided.vec2990
  %i.lgd = getelementptr inbounds nuw i8, ptr %i.lfv, i64 452
  %wide.vec2991 = load <16 x float>, ptr %i.lgd, align 4, !tbaa !12, !alias.scope !546, !noalias !499
  %strided.vec2992 = shufflevector <16 x float> %wide.vec2991, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.lge = fadd reassoc nsz arcp contract afn <8 x float> %i.lgc, %strided.vec2992
  %i.lgf = fmul reassoc nsz arcp contract afn <8 x float> %i.lge, splat (float 2.500000e-01) ; 2 uses
  %i.lgg = fsub reassoc nsz arcp contract afn <8 x float> splat (float 5.000000e-01), %strided.vec2984
  %i.lgh = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.lgg)
  %i.lgi = fsub reassoc nsz arcp contract afn <8 x float> splat (float 5.000000e-01), %i.lgf
  %i.lgj = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.lgi)
  %i.lgk = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.lgh, %i.lgj
  %i.lgl = select reassoc nsz arcp contract afn <8 x i1> %i.lgk, <8 x float> %i.lgf, <8 x float> %strided.vec2984 ; 3 uses
  %i.lgm = getelementptr inbounds nuw [4 x i8], ptr %i.jfm, i64 %i.lfu ; 4 uses
  %wide.vec2993 = load <16 x float>, ptr %i.lgm, align 4, !tbaa !12, !alias.scope !547, !noalias !499
  %strided.vec2994 = shufflevector <16 x float> %wide.vec2993, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 6 uses
  %i.lgn = getelementptr i8, ptr %i.lgm, i64 -896
  %wide.vec2995 = load <16 x float>, ptr %i.lgn, align 4, !tbaa !12, !alias.scope !547, !noalias !499
  %strided.vec2996 = shufflevector <16 x float> %wide.vec2995, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.lgo = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec2994, %strided.vec2996
  %i.lgp = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.lgo)
  %i.lgq = fadd reassoc nsz arcp contract afn <8 x float> %i.lgp, splat (float f0x3727C5AC) ; 2 uses
  %i.lgr = getelementptr inbounds nuw i8, ptr %i.lgm, i64 896
  %wide.vec2997 = load <16 x float>, ptr %i.lgr, align 4, !tbaa !12, !alias.scope !547, !noalias !499
  %strided.vec2998 = shufflevector <16 x float> %wide.vec2997, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.lgs = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec2994, %strided.vec2998
  %i.lgt = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.lgs)
  %i.lgu = fadd reassoc nsz arcp contract afn <8 x float> %i.lgt, splat (float f0x3727C5AC) ; 2 uses
  %i.lgv = getelementptr i8, ptr %i.lgm, i64 -8
  %wide.vec2999 = load <16 x float>, ptr %i.lgv, align 4, !tbaa !12, !alias.scope !547, !noalias !499 ; 2 uses
  %strided.vec3000 = shufflevector <16 x float> %wide.vec2999, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec3001 = shufflevector <16 x float> %wide.vec2999, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 2 uses
  %i.lgw = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec2994, %strided.vec3000
  %i.lgx = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.lgw)
  %i.lgy = fadd reassoc nsz arcp contract afn <8 x float> %i.lgx, splat (float f0x3727C5AC) ; 2 uses
  %i.lgz = getelementptr inbounds nuw [4 x i8], ptr %i.jfm, i64 %i.lfu
  %i.lha = getelementptr inbounds nuw i8, ptr %i.lgz, i64 4
  %wide.vec3002 = load <16 x float>, ptr %i.lha, align 4, !tbaa !12, !alias.scope !547, !noalias !499 ; 2 uses
  %strided.vec3003 = shufflevector <16 x float> %wide.vec3002, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %strided.vec3004 = shufflevector <16 x float> %wide.vec3002, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.lhb = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec2994, %strided.vec3004
  %i.lhc = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.lhb)
  %i.lhd = fadd reassoc nsz arcp contract afn <8 x float> %i.lhc, splat (float f0x3727C5AC) ; 2 uses
  %i.lhe = getelementptr inbounds [4 x i8], ptr %i.jfm, i64 %i.lfw
  %wide.vec3005 = load <16 x float>, ptr %i.lhe, align 4, !tbaa !12, !alias.scope !547, !noalias !499
  %strided.vec3006 = shufflevector <16 x float> %wide.vec3005, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %i.lhf = getelementptr inbounds nuw [4 x i8], ptr %i.jfm, i64 %i.lga
  %wide.vec3007 = load <16 x float>, ptr %i.lhf, align 4, !tbaa !12, !alias.scope !547, !noalias !499
  %strided.vec3008 = shufflevector <16 x float> %wide.vec3007, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %i.lhg = add nsw i64 %i.lfu, -1                 ; 2 uses
  %i.lhh = add nuw nsw i64 %i.lfu, 1              ; 2 uses
  %i.lhi = fcmp reassoc nsz arcp contract afn oge <8 x float> %i.lgl, zeroinitializer
  %i.lhj = fcmp reassoc nsz arcp contract afn ole <8 x float> %i.lgl, splat (float 1.000000e+00)
  %i.lhk = select reassoc nsz arcp contract afn <8 x i1> %i.lhj, <8 x float> %i.lgl, <8 x float> splat (float 1.000000e+00)
  %i.lhl = select reassoc nsz arcp contract afn <8 x i1> %i.lhi, <8 x float> %i.lhk, <8 x float> zeroinitializer ; 2 uses
  %i.lhm = getelementptr inbounds [4 x i8], ptr %i.jfk, i64 %i.lfw
  %wide.vec3009 = load <16 x float>, ptr %i.lhm, align 4, !tbaa !12, !alias.scope !547, !noalias !499
  %strided.vec3010 = shufflevector <16 x float> %wide.vec3009, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.lhn = getelementptr inbounds nuw [4 x i8], ptr %i.jfk, i64 %i.lga
  %wide.vec3011 = load <16 x float>, ptr %i.lhn, align 4, !tbaa !12, !alias.scope !547, !noalias !499
  %strided.vec3012 = shufflevector <16 x float> %wide.vec3011, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.lho = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3010, %strided.vec3012
  %i.lhp = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.lho) ; 2 uses
  %i.lhq = getelementptr inbounds [4 x i8], ptr %i.jfk, i64 %i.lhg
  %wide.vec3013 = load <16 x float>, ptr %i.lhq, align 4, !tbaa !12, !alias.scope !547, !noalias !499
  %strided.vec3014 = shufflevector <16 x float> %wide.vec3013, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.lhr = getelementptr inbounds nuw [4 x i8], ptr %i.jfk, i64 %i.lhh
  %wide.vec3015 = load <16 x float>, ptr %i.lhr, align 4, !tbaa !12, !alias.scope !547, !noalias !499
  %strided.vec3016 = shufflevector <16 x float> %wide.vec3015, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.lhs = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3014, %strided.vec3016
  %i.lht = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.lhs) ; 2 uses
  %i.lhu = fadd reassoc nsz arcp contract afn <8 x float> %i.lhp, %i.lgq
  %wide.gep3017 = getelementptr [4 x i8], ptr %i.jfk, <8 x i64> %vec.ind2982 ; 2 uses
  %i.lhv = extractelement <8 x ptr> %wide.gep3017, i64 0 ; 4 uses
  %i.lhw = getelementptr i8, ptr %i.lhv, i64 -1344
  %wide.vec3018 = load <16 x float>, ptr %i.lhw, align 4, !tbaa !12, !alias.scope !547, !noalias !499
  %strided.vec3019 = shufflevector <16 x float> %wide.vec3018, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.lhx = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3010, %strided.vec3019
  %i.lhy = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.lhx)
  %i.lhz = fadd reassoc nsz arcp contract afn <8 x float> %i.lhu, %i.lhy ; 2 uses
  %i.lia = fadd reassoc nsz arcp contract afn <8 x float> %i.lhp, %i.lgu
  %i.lib = getelementptr inbounds nuw i8, ptr %i.lhv, i64 1344
  %wide.vec3020 = load <16 x float>, ptr %i.lib, align 4, !tbaa !12, !alias.scope !547, !noalias !499
  %strided.vec3021 = shufflevector <16 x float> %wide.vec3020, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.lic = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3012, %strided.vec3021
  %i.lid = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.lic)
  %i.lie = fadd reassoc nsz arcp contract afn <8 x float> %i.lia, %i.lid ; 2 uses
  %i.lif = fadd reassoc nsz arcp contract afn <8 x float> %i.lht, %i.lgy
  %i.lig = getelementptr i8, ptr %i.lhv, i64 -12
  %wide.vec3022 = load <16 x float>, ptr %i.lig, align 4, !tbaa !12, !alias.scope !547, !noalias !499
  %strided.vec3023 = shufflevector <16 x float> %wide.vec3022, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.lih = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3014, %strided.vec3023
  %i.lii = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.lih)
  %i.lij = fadd reassoc nsz arcp contract afn <8 x float> %i.lif, %i.lii ; 2 uses
  %i.lik = fadd reassoc nsz arcp contract afn <8 x float> %i.lht, %i.lhd
  %i.lil = getelementptr inbounds nuw i8, ptr %i.lhv, i64 12
  %wide.vec3024 = load <16 x float>, ptr %i.lil, align 4, !tbaa !12, !alias.scope !547, !noalias !499
  %strided.vec3025 = shufflevector <16 x float> %wide.vec3024, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.lim = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3016, %strided.vec3025
  %i.lin = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.lim)
  %i.lio = fadd reassoc nsz arcp contract afn <8 x float> %i.lik, %i.lin ; 2 uses
  %i.lip = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3010, %strided.vec3006
  %i.liq = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3012, %strided.vec3008
  %i.lir = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3014, %strided.vec3001
  %i.lis = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3016, %strided.vec3003
  %i.lit = fmul reassoc nsz arcp contract afn <8 x float> %i.lhz, %i.liq
  %i.liu = fmul reassoc nsz arcp contract afn <8 x float> %i.lie, %i.lip
  %i.liv = fadd reassoc nsz arcp contract afn <8 x float> %i.liu, %i.lit
end_hunk_1
begin_hunk_2_@process:bb.a
  %i.lts = load ptr, ptr @lmmse_gamma_in, align 8, !tbaa !140, !noalias !551 ; 3 uses
  %i.ltt = icmp ne ptr %i.lts, null
  %i.ltu = icmp ne ptr %i.ltr, null
  %or.cond.i.i571 = select i1 %i.ltt, i1 %i.ltu, i1 false
  br i1 %or.cond.i.i571, label %.preheader.i.i572, label %bb.ok

bb.ok:                                            ; preds = %bb.oj
  tail call void @free(ptr noundef %i.lts) #27, !noalias !549
  tail call void @free(ptr noundef %i.ltr) #27, !noalias !549
  store ptr null, ptr @lmmse_gamma_in, align 8, !tbaa !140, !noalias !551
  store ptr null, ptr @lmmse_gamma_out, align 8, !tbaa !140, !noalias !551
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.212) #27, !noalias !549
  br label %.preheader1027.preheader.i

.preheader.i.i572:                                ; preds = %bb.oj, %bb.oq
  %indvars.iv.i.i573 = phi i64 [ %indvars.iv.next.i.i574, %bb.oq ], [ 0, %bb.oj ] ; 4 uses
  %i.ltv = trunc nuw nsw i64 %indvars.iv.i.i573 to i32
  %i.ltw = uitofp nsz nneg i32 %i.ltv to double   ; 4 uses
  %i.ltx = fmul reassoc nnan nsz arcp contract afn double %i.ltw, f0x3EF0001000100010 ; 3 uses
  %i.lty = fcmp reassoc nsz arcp contract afn ugt double %i.ltx, 1.867000e-03
  br i1 %i.lty, label %bb.om, label %bb.ol

bb.ol:                                            ; preds = %.preheader.i.i572
  %i.ltz = fmul reassoc nnan nsz arcp contract afn double %i.ltw, f0x3F31001100110011
  br label %bb.on

bb.om:                                            ; preds = %.preheader.i.i572
  %i.lua = tail call fast double @llvm.log.f64(double %i.ltx)
  %i.lub = fmul reassoc nnan nsz arcp contract afn double %i.lua, f0x3FDAAAAAAAAAAAAB
  %i.luc = tail call reassoc nnan nsz arcp contract afn double @llvm.exp.f64(double %i.lub)
  %i.lud = fmul reassoc nnan nsz arcp contract afn double %i.luc, f0x3FF0B60BF5D78812
  %i.lue = fadd reassoc nsz arcp contract afn double %i.lud, -4.444500e-02
  br label %bb.on

bb.on:                                            ; preds = %bb.om, %bb.ol
  %i.luf = phi reassoc nsz arcp contract afn double [ %i.ltz, %bb.ol ], [ %i.lue, %bb.om ]
  %i.lug = fptrunc reassoc nsz arcp contract afn double %i.luf to float
  %i.luh = getelementptr inbounds nuw [4 x i8], ptr %i.lts, i64 %indvars.iv.i.i573
  store float %i.lug, ptr %i.luh, align 4, !tbaa !12, !noalias !549
  %i.lui = fcmp reassoc nsz arcp contract afn ugt double %i.ltx, 3.174600e-02
  br i1 %i.lui, label %bb.op, label %bb.oo

bb.oo:                                            ; preds = %bb.on
  %i.luj = fmul reassoc nnan nsz arcp contract afn double %i.ltw, f0x3EAE1E3C3C5A5A78
  br label %bb.oq

bb.op:                                            ; preds = %bb.on
  %i.luk = fmul reassoc nnan nsz arcp contract afn double %i.ltw, f0x3EEEA3850F60F739
  %i.lul = fadd reassoc nnan nsz arcp contract afn double %i.luk, f0x3FA5C99942418271
  %i.lum = tail call reassoc nnan nsz arcp contract afn double @llvm.log.f64(double %i.lul)
  %i.lun = fmul reassoc nnan nsz arcp contract afn double %i.lum, 2.400000e+00
  %i.luo = tail call reassoc nsz arcp contract afn double @llvm.exp.f64(double %i.lun)
  br label %bb.oq

bb.oq:                                            ; preds = %bb.op, %bb.oo
  %i.lup = phi reassoc nsz arcp contract afn double [ %i.luj, %bb.oo ], [ %i.luo, %bb.op ]
  %i.luq = fptrunc reassoc nsz arcp contract afn double %i.lup to float
  %i.lur = getelementptr inbounds nuw [4 x i8], ptr %i.ltr, i64 %indvars.iv.i.i573
  store float %i.luq, ptr %i.lur, align 4, !tbaa !12, !noalias !549
  %indvars.iv.next.i.i574 = add nuw nsw i64 %indvars.iv.i.i573, 1 ; 2 uses
  %exitcond.not.i.i575 = icmp eq i64 %indvars.iv.next.i.i574, 65536
  br i1 %exitcond.not.i.i575, label %.preheader1027.preheader.i, label %.preheader.i.i572

.preheader1027.preheader.i:                       ; preds = %bb.oq, %bb.ok, %bb.oi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27, !noalias !551
  %i.lus = tail call ptr @dt_alloc_aligned(i64 noundef 443904) #27, !noalias !549 ; 31 uses
  %i.lut = ptrtoaddr ptr %i.lus to i64
  call void @llvm.assume(i1 true) [ "align"(ptr %i.lus, i64 64) ]
  store ptr %i.lus, ptr %i.b, align 16, !tbaa !140, !noalias !551
  %i.luu = getelementptr inbounds nuw i8, ptr %i.lus, i64 73984 ; 14 uses
  store ptr %i.luu, ptr %i.aoi, align 8, !tbaa !140, !noalias !551
  %i.luv = getelementptr inbounds nuw i8, ptr %i.lus, i64 147968 ; 6 uses
  store ptr %i.luv, ptr %i.aoj, align 16, !tbaa !140, !noalias !551
  %i.luw = getelementptr inbounds nuw i8, ptr %i.lus, i64 221952 ; 5 uses
  store ptr %i.luw, ptr %i.aok, align 8, !tbaa !140, !noalias !551
  %i.lux = getelementptr inbounds nuw i8, ptr %i.lus, i64 295936 ; 5 uses
  store ptr %i.lux, ptr %i.aol, align 16, !tbaa !140, !noalias !551
  %i.luy = getelementptr inbounds nuw i8, ptr %i.lus, i64 369920 ; 10 uses
  store ptr %i.luy, ptr %i.aom, align 8, !tbaa !140, !noalias !551
  %i.luz = icmp ult i32 %i.ltn, 2
  %i.lva = select i1 %i.luz, i32 %i.ltn, i32 3    ; 2 uses
  %i.lvb = tail call i32 @llvm.usub.sat.i32(i32 %i.ltn, i32 2) ; 2 uses
  %i.lvc = add nsw i32 %i.axe, -17
  %i.lvd = sdiv i32 %i.lvc, 112                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(443904) %i.lus, i8 0, i64 443904, i1 false), !noalias !549
  %.not1191.i = icmp eq i32 %i.lva, 0
  %i.lve = icmp sgt i32 %i.lvb, 0
  %i.lvf = tail call i32 @llvm.smax.i32(i32 %i.lvd, i32 0)
  %scevgep3937 = getelementptr i8, ptr %i.lus, i64 295400
  %scevgep4006 = getelementptr i8, ptr %i.lus, i64 295400
  %i.lvg = add i64 %i.lut, 372112
  %i.lvh = getelementptr inbounds nuw i8, ptr %i.axo, i64 128
  %i.lvi = getelementptr inbounds nuw i8, ptr %i.axo, i64 256
  %i.lvj = getelementptr inbounds nuw i8, ptr %i.axo, i64 384
  br label %.preheader1027.i

.preheader1027.i:                                 ; preds = %._crit_edge1187.i, %.preheader1027.preheader.i
  %indvars.iv1156 = phi i32 [ %indvars.iv.next1157, %._crit_edge1187.i ], [ 6, %.preheader1027.preheader.i ] ; 2 uses
  %indvars.iv1137 = phi i32 [ %indvars.iv.next1138, %._crit_edge1187.i ], [ 7, %.preheader1027.preheader.i ] ; 3 uses
  %indvars.iv1132 = phi i32 [ %indvars.iv.next1133, %._crit_edge1187.i ], [ 8, %.preheader1027.preheader.i ] ; 2 uses
  %indvars.iv1115 = phi i32 [ %indvars.iv.next1116, %._crit_edge1187.i ], [ 5, %.preheader1027.preheader.i ] ; 2 uses
  %indvars.iv1112 = phi i32 [ %indvars.iv.next1113, %._crit_edge1187.i ], [ 4, %.preheader1027.preheader.i ] ; 2 uses
  %indvars.iv = phi i32 [ %indvars.iv.next, %._crit_edge1187.i ], [ 128, %.preheader1027.preheader.i ] ; 2 uses
  %indvars.iv1309.i = phi i32 [ %indvars.iv.next1310.i, %._crit_edge1187.i ], [ 0, %.preheader1027.preheader.i ] ; 2 uses
  %indvars.iv.i555 = phi i32 [ %indvars.iv.next.i560, %._crit_edge1187.i ], [ 0, %.preheader1027.preheader.i ] ; 2 uses
  %.08821189.i = phi i32 [ %i.lxs, %._crit_edge1187.i ], [ 0, %.preheader1027.preheader.i ] ; 5 uses
  %smin1161 = call i32 @llvm.smin.i32(i32 %i.axe, i32 %indvars.iv) ; 5 uses
  %i.lvk = add i32 %smin1161, %indvars.iv1112
  %i.lvl = call i32 @llvm.smax.i32(i32 %i.lvk, i32 5)
  %smax1153 = zext nneg i32 %i.lvl to i64         ; 4 uses
  %i.lvm = add i32 %smin1161, %indvars.iv1137
  %i.lvn = call i32 @llvm.smax.i32(i32 %i.lvm, i32 2)
  %smax1145 = zext nneg i32 %i.lvn to i64         ; 3 uses
  %i.lvo = add i32 %smin1161, %indvars.iv1132
  %i.lvp = call i32 @llvm.smax.i32(i32 %i.lvo, i32 1)
  %smax1134 = zext nneg i32 %i.lvp to i64
  %i.lvq = add i32 %smin1161, %indvars.iv1115
  %i.lvr = call i32 @llvm.umax.i32(i32 %i.lvq, i32 2)
  %umax = zext i32 %i.lvr to i64
  %i.lvs = mul nuw i32 %.08821189.i, 112          ; 4 uses
  %i.lvt = add nuw nsw i32 %i.lvs, 128
  %i.lvu = tail call i32 @llvm.smin.i32(i32 %i.lvt, i32 %i.axe) ; 2 uses
  %i.lvv = sub nsw i32 %i.lvu, %i.lvs             ; 5 uses
  %i.lvw = add nsw i32 %i.lvv, 8
  %i.lvx = icmp sgt i32 %i.lvv, 0                 ; 3 uses
  %i.lvy = icmp sgt i32 %i.lvv, -4
  %i.lvz = add i32 %i.lvs, -4
  %i.lwa = icmp sgt i32 %i.lvv, -8
  %i.lwb = icmp slt i32 %i.lvv, -5                ; 2 uses
  %i.lwc = icmp eq i32 %.08821189.i, 0            ; 2 uses
  %i.lwd = select i1 %i.lwc, i32 6, i32 0         ; 3 uses
  %i.lwe = icmp eq i32 %.08821189.i, %i.lvd       ; 2 uses
  %.neg949.i = select i1 %i.lwe, i32 -6, i32 0    ; 2 uses
  %i.lwf = add nsw i32 %i.lvw, %.neg949.i         ; 2 uses
  %i.lwg = add nsw i32 %i.lwf, -1
  %i.lwh = icmp slt i32 %i.lwd, %i.lwg
  %i.lwi = add nuw nsw i32 %i.lwd, 2
  %i.lwj = add nsw i32 %i.lwf, -2
  %i.lwk = icmp slt i32 %i.lwi, %i.lwj
  %i.lwl = select i1 %i.lwc, i32 4, i32 8         ; 3 uses
  %i.lwm = or disjoint i32 %i.lwl, %i.lvs
  %.neg950.i = select i1 %i.lwe, i32 -4, i32 -8
  %i.lwn = add nsw i32 %i.lvu, %.neg950.i         ; 2 uses
  %i.lwo = icmp slt i32 %i.lwm, %i.lwn
  %i.lwp = zext nneg i32 %i.lwd to i64            ; 5 uses
  %i.lwq = add nuw nsw i64 %i.lwp, 2              ; 3 uses
  %narrow.i = add nuw nsw i32 %i.lwl, 4
  %i.lwr = or disjoint i32 %i.lwl, %indvars.iv1309.i
  %i.lws = zext i32 %i.lwr to i64
  %i.lwt = add i32 %.neg949.i, %smin1161          ; 2 uses
  %i.lwu = add i32 %i.lwt, %indvars.iv1137
  %i.lwv = sext i32 %i.lwu to i64                 ; 2 uses
  %i.lww = add i32 %i.lwt, %indvars.iv1156
  %i.lwx = sext i32 %i.lww to i64                 ; 3 uses
  %i.lwy = mul nuw nsw i64 %i.lwp, 544            ; 6 uses
  %i.lwz = mul nuw nsw i64 %i.lwp, 544            ; 8 uses
  %i.lxa = add nuw nsw i64 %i.lwz, 552
  %i.lxb = add nuw nsw i64 %i.lwz, 1644
  %i.lxc = mul nuw nsw i64 %i.lwp, 544            ; 5 uses
  %scevgep3935 = getelementptr i8, ptr %i.lus, i64 %i.lxc
  %i.lxd = mul nsw i64 %i.lwv, 544                ; 2 uses
  %scevgep3938 = getelementptr i8, ptr %scevgep3937, i64 %i.lxd
  %i.lxe = or disjoint i64 %i.lxc, 8
  %i.lxf = or disjoint i64 %i.lxc, 4
  %scevgep4004 = getelementptr i8, ptr %i.lus, i64 %i.lxc
  %scevgep4007 = getelementptr i8, ptr %scevgep4006, i64 %i.lxd
  %invariant.op = or disjoint i64 %i.lxc, 4
  %i.lxg = getelementptr i8, ptr %i.lus, i64 %i.lwz
  %i.lxh = getelementptr i8, ptr %i.lxg, i64 74536
  %i.lxi = getelementptr i8, ptr %i.lus, i64 %i.lwz
  %i.lxj = getelementptr i8, ptr %i.lxi, i64 75628
  %i.lxk = getelementptr i8, ptr %i.lus, i64 %i.lwz
  %i.lxl = getelementptr i8, ptr %i.lxk, i64 73992
  %i.lxm = getelementptr i8, ptr %i.lus, i64 %i.lwz
  %i.lxn = getelementptr i8, ptr %i.lxm, i64 76172
  %i.lxo = getelementptr i8, ptr %i.lus, i64 %i.lwy
  %i.lxp = getelementptr i8, ptr %i.lxo, i64 74536
  %i.lxq = getelementptr i8, ptr %i.lus, i64 %i.lwy
  %i.lxr = getelementptr i8, ptr %i.lxq, i64 75628
  br label %bb.or

._crit_edge1190.split.i:                          ; preds = %._crit_edge1187.i
  tail call void @free(ptr noundef %i.lus) #27, !noalias !549
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27, !noalias !551
  br label %demosaic_box3.exit

._crit_edge1187.i:                                ; preds = %._crit_edge1183.split.i
  %i.lxs = add nuw nsw i32 %.08821189.i, 1
  %indvars.iv.next.i560 = add i32 %indvars.iv.i555, %i.aop
  %indvars.iv.next1310.i = add nuw i32 %indvars.iv1309.i, 112
  %exitcond1318.i = icmp eq i32 %.08821189.i, %i.lvf
  %indvars.iv.next = add nuw i32 %indvars.iv, 112
  %indvars.iv.next1113 = add i32 %indvars.iv1112, -112
  %indvars.iv.next1116 = add i32 %indvars.iv1115, -112
  %indvars.iv.next1133 = add i32 %indvars.iv1132, -112
  %indvars.iv.next1138 = add i32 %indvars.iv1137, -112
  %indvars.iv.next1157 = add i32 %indvars.iv1156, -112
  br i1 %exitcond1318.i, label %._crit_edge1190.split.i, label %.preheader1027.i

bb.or:                                            ; preds = %._crit_edge1183.split.i, %.preheader1027.i
  %indvars.iv1121 = phi i32 [ %indvars.iv.next1122, %._crit_edge1183.split.i ], [ 0, %.preheader1027.i ] ; 7 uses
  %indvars.iv1118 = phi i32 [ %indvars.iv.next1119, %._crit_edge1183.split.i ], [ 128, %.preheader1027.i ] ; 5 uses
  %indvars.iv1212.i = phi i32 [ %indvars.iv.next1213.i, %._crit_edge1183.split.i ], [ %indvars.iv.i555, %.preheader1027.i ] ; 2 uses
  %.08871185.i = phi i32 [ %i.pob, %._crit_edge1183.split.i ], [ 0, %.preheader1027.i ] ; 7 uses
  %smin4712 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1118)
  %i.lxt = add i32 %smin4712, %indvars.iv1121
  %smin4713 = call i32 @llvm.smin.i32(i32 %i.lxt, i32 128) ; 2 uses
  %i.lxu = add nsw i32 %smin4713, 3
  %i.lxv = zext i32 %i.lxu to i64
  %i.lxw = add nsw i64 %i.lxv, -3                 ; 2 uses
  %smin4697 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1118)
  %i.lxx = add i32 %smin4697, %indvars.iv1121
  %i.lxy = call i32 @llvm.smin.i32(i32 %i.lxx, i32 128)
  %narrow4791 = add nsw i32 %i.lxy, 7             ; 2 uses
  %i.lxz = mul nuw i32 %.08871185.i, 112
  %i.lya = add i32 %i.lxz, 128
  %smin4689 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %i.lya)
  %i.lyb = mul i32 %.08871185.i, -112
  %i.lyc = add i32 %smin4689, %i.lyb
  %smin4413 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1118)
  %i.lyd = add i32 %smin4413, %indvars.iv1121
  %smin4414 = call i32 @llvm.smin.i32(i32 %i.lyd, i32 128)
  %i.lye = add i32 %smin4414, -1                  ; 3 uses
  %i.lyf = zext i32 %i.lye to i64
  %i.lyg = add nuw nsw i64 %i.lyf, 1              ; 5 uses
  %7 = add i32 %indvars.iv1121, -1
  %8 = add i32 %indvars.iv1121, -1
  %smin1149 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1118)
  %i.lyh = add i32 %smin1149, %indvars.iv1121
  %smin1150 = call i32 @llvm.smin.i32(i32 %i.lyh, i32 128)
  %i.lyi = add nsw i32 %smin1150, 3
  %i.lyj = zext i32 %i.lyi to i64                 ; 2 uses
  %i.lyk = mul nuw i32 %.08871185.i, 112          ; 5 uses
  %i.lyl = add nuw i32 %i.lyk, 128
  %i.lym = tail call i32 @llvm.smin.i32(i32 %i.lyl, i32 %i.bo) ; 3 uses
  %i.lyn = sub i32 %i.lym, %i.lyk                 ; 7 uses
  %i.lyo = tail call i32 @llvm.smin.i32(i32 %i.lyn, i32 128) ; 19 uses
  %i.lyp = add nsw i32 %i.lyo, 8                  ; 2 uses
  br i1 %i.lvx, label %.lr.ph1038.i, label %.preheader1026.i

.lr.ph1038.i:                                     ; preds = %bb.or
  %i.lyq = add nsw i32 %i.lyo, 4                  ; 2 uses
  %i.lyr = icmp sgt i32 %i.lyn, 0
  %i.lys = load ptr, ptr @lmmse_gamma_in, align 8, !noalias !551 ; 4 uses
  %i.lyt = icmp eq ptr %i.lys, null
  br i1 %i.lyr, label %.lr.ph.i566.preheader, label %.lr.ph1049.i

.lr.ph.i566.preheader:                            ; preds = %.lr.ph1038.i
  %xtraiter4691 = and i32 %i.lyo, 1
  %i.lyu = icmp eq i32 %i.lyc, 1
  %unroll_iter4695 = and i32 %i.lyo, 254
  %lcmp.mod4693.not = icmp eq i32 %xtraiter4691, 0
  %lcmp.mod4694 = trunc i32 %i.lyo to i1
  %min.iters.check4416 = icmp ult i32 %i.lye, 7
  %min.iters.check4418 = icmp ult i32 %i.lye, 31
  %i.lyv = and i64 %i.lyg, 24
  %n.vec4420 = and i64 %i.lyg, 8589934560         ; 8 uses
  %i.lyw = shl nuw nsw i64 %n.vec4420, 2
  %i.lyx = trunc i64 %n.vec4420 to i32
  %i.lyy = or disjoint i32 %i.lyx, 4
  %i.lyz = icmp eq i64 %n.vec4420, 32
  %i.lza = icmp eq i64 %n.vec4420, 64
  %i.lzb = icmp eq i64 %n.vec4420, 96
  %cmp.n4432 = icmp eq i64 %i.lyg, %n.vec4420
  %min.epilog.iters.check4440 = icmp eq i64 %i.lyv, 0
  %n.vec4442 = and i64 %i.lyg, 8589934584         ; 5 uses
  %i.lzc = shl nuw nsw i64 %n.vec4442, 2
  %i.lzd = trunc i64 %n.vec4442 to i32
  %i.lze = or disjoint i32 %i.lzd, 4
  %cmp.n4451 = icmp eq i64 %i.lyg, %n.vec4442
  br label %.lr.ph.i566

.preheader1026.i:                                 ; preds = %._crit_edge.i570, %bb.or
  br i1 %i.lvy, label %.preheader1026.i..lr.ph1049.i_crit_edge, label %._crit_edge1060.i

.preheader1026.i..lr.ph1049.i_crit_edge:          ; preds = %.preheader1026.i
  %.pre1268 = add nsw i32 %i.lyo, 4
  br label %.lr.ph1049.i

.lr.ph1049.i:                                     ; preds = %.preheader1026.i..lr.ph1049.i_crit_edge, %.lr.ph1038.i
  %.pre-phi1269 = phi i32 [ %.pre1268, %.preheader1026.i..lr.ph1049.i_crit_edge ], [ %i.lyq, %.lr.ph1038.i ] ; 2 uses
  %i.lzf = add nsw i32 %i.lyo, 6
  %i.lzg = sext i32 %i.lzf to i64                 ; 4 uses
  br label %bb.oy

.lr.ph.i566:                                      ; preds = %.lr.ph.i566.preheader, %._crit_edge.i570
  %indvar4410 = phi i64 [ %indvar.next4411, %._crit_edge.i570 ], [ 0, %.lr.ph.i566.preheader ] ; 2 uses
  %indvars.iv1222.i = phi i64 [ %indvars.iv.next1223.i, %._crit_edge.i570 ], [ 4, %.lr.ph.i566.preheader ] ; 2 uses
  %indvars.iv1214.i = phi i32 [ %indvars.iv.next1215.i, %._crit_edge.i570 ], [ %indvars.iv1212.i, %.lr.ph.i566.preheader ] ; 3 uses
  %i.lzh = zext i32 %indvars.iv1214.i to i64      ; 10 uses
  %.idx.i567 = mul nuw nsw i64 %indvars.iv1222.i, 544
  %i.lzi = getelementptr inbounds nuw i8, ptr %i.luy, i64 %.idx.i567 ; 16 uses
  %i.lzj = getelementptr inbounds nuw i8, ptr %i.lzi, i64 16 ; 7 uses
  br i1 %i.lyt, label %iter.check4437, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %.lr.ph.i566
  br i1 %i.lyu, label %.lr.ph.split.i.epil.preheader, label %.lr.ph.split.i

iter.check4437:                                   ; preds = %.lr.ph.i566
  %i.lzk = zext i32 %indvars.iv1214.i to i64
  %i.lzl = add nsw i64 %i.axn, %i.lzk
  %i.lzm = shl nsw i64 %i.lzl, 2
  %i.lzn = add i64 %i.lzm, %.13623
  %i.lzo = mul nuw nsw i64 %indvar4410, 544
  %i.lzp = add i64 %i.lvg, %i.lzo
  %i.lzq = sub i64 %i.lzn, %i.lzp
  %diff.check4412 = icmp ugt i64 %i.lzq, -128
  %or.cond4571 = select i1 %min.iters.check4416, i1 true, i1 %diff.check4412
  br i1 %or.cond4571, label %_calc_gamma.exit.us.i.preheader, label %vector.main.loop.iter.check4417

vector.main.loop.iter.check4417:                  ; preds = %iter.check4437
  br i1 %min.iters.check4418, label %vec.epilog.ph4441, label %vector.ph4419

vector.ph4419:                                    ; preds = %vector.main.loop.iter.check4417
  %i.lzr = add nuw nsw i64 %n.vec4420, %i.lzh
  %i.lzs = getelementptr i8, ptr %i.lzj, i64 %i.lyw
  %i.lzt = getelementptr inbounds nuw [4 x i8], ptr %i.axo, i64 %i.lzh ; 4 uses
  %i.lzu = getelementptr inbounds nuw i8, ptr %i.lzt, i64 32
  %i.lzv = getelementptr inbounds nuw i8, ptr %i.lzt, i64 64
  %i.lzw = getelementptr inbounds nuw i8, ptr %i.lzt, i64 96
  %wide.load4426 = load <8 x float>, ptr %i.lzt, align 4, !tbaa !12, !alias.scope !550, !noalias !549
  %wide.load4427 = load <8 x float>, ptr %i.lzu, align 4, !tbaa !12, !alias.scope !550, !noalias !549
  %wide.load4428 = load <8 x float>, ptr %i.lzv, align 4, !tbaa !12, !alias.scope !550, !noalias !549
  %wide.load4429 = load <8 x float>, ptr %i.lzw, align 4, !tbaa !12, !alias.scope !550, !noalias !549
  %i.lzx = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4426, %broadcast.splat4422
  %i.lzy = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4427, %broadcast.splat4422
  %i.lzz = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4428, %broadcast.splat4422
  %i.maa = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4429, %broadcast.splat4422
  %i.mab = getelementptr i8, ptr %i.lzi, i64 48
  %i.mac = getelementptr i8, ptr %i.lzi, i64 80
  %i.mad = getelementptr i8, ptr %i.lzi, i64 112
  store <8 x float> %i.lzx, ptr %i.lzj, align 16, !tbaa !12, !noalias !549
  store <8 x float> %i.lzy, ptr %i.mab, align 16, !tbaa !12, !noalias !549
  store <8 x float> %i.lzz, ptr %i.mac, align 16, !tbaa !12, !noalias !549
  store <8 x float> %i.maa, ptr %i.mad, align 16, !tbaa !12, !noalias !549
  br i1 %i.lyz, label %middle.block4431, label %vector.body4423.1

vector.body4423.1:                                ; preds = %vector.ph4419
  %next.gep4425.1 = getelementptr i8, ptr %i.lzi, i64 144
  %i.mae = getelementptr inbounds nuw [4 x i8], ptr %i.lvh, i64 %i.lzh ; 4 uses
  %i.maf = getelementptr inbounds nuw i8, ptr %i.mae, i64 32
  %i.mag = getelementptr inbounds nuw i8, ptr %i.mae, i64 64
  %i.mah = getelementptr inbounds nuw i8, ptr %i.mae, i64 96
  %wide.load4426.1 = load <8 x float>, ptr %i.mae, align 4, !tbaa !12, !alias.scope !550, !noalias !549
  %wide.load4427.1 = load <8 x float>, ptr %i.maf, align 4, !tbaa !12, !alias.scope !550, !noalias !549
  %wide.load4428.1 = load <8 x float>, ptr %i.mag, align 4, !tbaa !12, !alias.scope !550, !noalias !549
  %wide.load4429.1 = load <8 x float>, ptr %i.mah, align 4, !tbaa !12, !alias.scope !550, !noalias !549
  %i.mai = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4426.1, %broadcast.splat4422
  %i.maj = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4427.1, %broadcast.splat4422
  %i.mak = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4428.1, %broadcast.splat4422
  %i.mal = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4429.1, %broadcast.splat4422
  %i.mam = getelementptr i8, ptr %i.lzi, i64 176
  %i.man = getelementptr i8, ptr %i.lzi, i64 208
  %i.mao = getelementptr i8, ptr %i.lzi, i64 240
  store <8 x float> %i.mai, ptr %next.gep4425.1, align 16, !tbaa !12, !noalias !549
  store <8 x float> %i.maj, ptr %i.mam, align 16, !tbaa !12, !noalias !549
  store <8 x float> %i.mak, ptr %i.man, align 16, !tbaa !12, !noalias !549
  store <8 x float> %i.mal, ptr %i.mao, align 16, !tbaa !12, !noalias !549
  br i1 %i.lza, label %middle.block4431, label %vector.body4423.2

vector.body4423.2:                                ; preds = %vector.body4423.1
  %next.gep4425.2 = getelementptr i8, ptr %i.lzi, i64 272
  %i.map = getelementptr inbounds nuw [4 x i8], ptr %i.lvi, i64 %i.lzh ; 4 uses
  %i.maq = getelementptr inbounds nuw i8, ptr %i.map, i64 32
  %i.mar = getelementptr inbounds nuw i8, ptr %i.map, i64 64
  %i.mas = getelementptr inbounds nuw i8, ptr %i.map, i64 96
  %wide.load4426.2 = load <8 x float>, ptr %i.map, align 4, !tbaa !12, !alias.scope !550, !noalias !549
  %wide.load4427.2 = load <8 x float>, ptr %i.maq, align 4, !tbaa !12, !alias.scope !550, !noalias !549
  %wide.load4428.2 = load <8 x float>, ptr %i.mar, align 4, !tbaa !12, !alias.scope !550, !noalias !549
  %wide.load4429.2 = load <8 x float>, ptr %i.mas, align 4, !tbaa !12, !alias.scope !550, !noalias !549
  %i.mat = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4426.2, %broadcast.splat4422
  %i.mau = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4427.2, %broadcast.splat4422
  %i.mav = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4428.2, %broadcast.splat4422
  %i.maw = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4429.2, %broadcast.splat4422
  %i.max = getelementptr i8, ptr %i.lzi, i64 304
  %i.may = getelementptr i8, ptr %i.lzi, i64 336
  %i.maz = getelementptr i8, ptr %i.lzi, i64 368
  store <8 x float> %i.mat, ptr %next.gep4425.2, align 16, !tbaa !12, !noalias !549
  store <8 x float> %i.mau, ptr %i.max, align 16, !tbaa !12, !noalias !549
  store <8 x float> %i.mav, ptr %i.may, align 16, !tbaa !12, !noalias !549
  store <8 x float> %i.maw, ptr %i.maz, align 16, !tbaa !12, !noalias !549
  br i1 %i.lzb, label %middle.block4431, label %vector.body4423.3

vector.body4423.3:                                ; preds = %vector.body4423.2
  %next.gep4425.3 = getelementptr i8, ptr %i.lzi, i64 400
  %i.mba = getelementptr inbounds nuw [4 x i8], ptr %i.lvj, i64 %i.lzh ; 4 uses
  %i.mbb = getelementptr inbounds nuw i8, ptr %i.mba, i64 32
  %i.mbc = getelementptr inbounds nuw i8, ptr %i.mba, i64 64
  %i.mbd = getelementptr inbounds nuw i8, ptr %i.mba, i64 96
  %wide.load4426.3 = load <8 x float>, ptr %i.mba, align 4, !tbaa !12, !alias.scope !550, !noalias !549
  %wide.load4427.3 = load <8 x float>, ptr %i.mbb, align 4, !tbaa !12, !alias.scope !550, !noalias !549
  %wide.load4428.3 = load <8 x float>, ptr %i.mbc, align 4, !tbaa !12, !alias.scope !550, !noalias !549
  %wide.load4429.3 = load <8 x float>, ptr %i.mbd, align 4, !tbaa !12, !alias.scope !550, !noalias !549
  %i.mbe = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4426.3, %broadcast.splat4422
  %i.mbf = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4427.3, %broadcast.splat4422
  %i.mbg = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4428.3, %broadcast.splat4422
  %i.mbh = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4429.3, %broadcast.splat4422
  %i.mbi = getelementptr i8, ptr %i.lzi, i64 432
  %i.mbj = getelementptr i8, ptr %i.lzi, i64 464
  %i.mbk = getelementptr i8, ptr %i.lzi, i64 496
  store <8 x float> %i.mbe, ptr %next.gep4425.3, align 16, !tbaa !12, !noalias !549
  store <8 x float> %i.mbf, ptr %i.mbi, align 16, !tbaa !12, !noalias !549
  store <8 x float> %i.mbg, ptr %i.mbj, align 16, !tbaa !12, !noalias !549
  store <8 x float> %i.mbh, ptr %i.mbk, align 16, !tbaa !12, !noalias !549
  br label %middle.block4431

middle.block4431:                                 ; preds = %vector.body4423.3, %vector.body4423.2, %vector.body4423.1, %vector.ph4419
  br i1 %cmp.n4432, label %._crit_edge.i570, label %vec.epilog.iter.check4439

vec.epilog.iter.check4439:                        ; preds = %middle.block4431
  br i1 %min.epilog.iters.check4440, label %_calc_gamma.exit.us.i.preheader, label %vec.epilog.ph4441, !prof !552

vec.epilog.ph4441:                                ; preds = %vector.main.loop.iter.check4417, %vec.epilog.iter.check4439
  %vec.epilog.resume.val4433 = phi i64 [ %n.vec4420, %vec.epilog.iter.check4439 ], [ 0, %vector.main.loop.iter.check4417 ]
  %i.mbl = add nuw nsw i64 %n.vec4442, %i.lzh
  %i.mbm = getelementptr i8, ptr %i.lzj, i64 %i.lzc
  %invariant.gep4827 = getelementptr [4 x i8], ptr %i.axo, i64 %i.lzh
  br label %vec.epilog.vector.body4445

vec.epilog.vector.body4445:                       ; preds = %vec.epilog.vector.body4445, %vec.epilog.ph4441
  %index4446 = phi i64 [ %vec.epilog.resume.val4433, %vec.epilog.ph4441 ], [ %index.next4449, %vec.epilog.vector.body4445 ] ; 3 uses
  %i.mbn = shl i64 %index4446, 2
  %next.gep4447 = getelementptr i8, ptr %i.lzj, i64 %i.mbn
  %gep4828 = getelementptr [4 x i8], ptr %invariant.gep4827, i64 %index4446
  %wide.load4448 = load <8 x float>, ptr %gep4828, align 4, !tbaa !12, !alias.scope !550, !noalias !549
  %i.mbo = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4448, %broadcast.splat4444
  store <8 x float> %i.mbo, ptr %next.gep4447, align 16, !tbaa !12, !noalias !549
end_hunk_2
begin_hunk_3_@process:bb.a
  %.19001096.i = phi ptr [ %i.onq, %.lr.ph1101.i ], [ %.19001096.i.ph, %.lr.ph1101.i.preheader4602 ] ; 3 uses
  %.19021095.i = phi ptr [ %i.onp, %.lr.ph1101.i ], [ %.19021095.i.ph, %.lr.ph1101.i.preheader4602 ] ; 3 uses
  %.19041094.i = phi ptr [ %i.ono, %.lr.ph1101.i ], [ %.19041094.i.ph, %.lr.ph1101.i.preheader4602 ] ; 3 uses
  %.19061093.i = phi ptr [ %i.onn, %.lr.ph1101.i ], [ %.19061093.i.ph, %.lr.ph1101.i.preheader4602 ] ; 4 uses
  %.19081092.i = phi ptr [ %i.onm, %.lr.ph1101.i ], [ %.19081092.i.ph, %.lr.ph1101.i.preheader4602 ] ; 3 uses
  %i.omr = load float, ptr %.19061093.i, align 4, !tbaa !12, !noalias !549
  %i.oms = load float, ptr %.08941098.i, align 4, !tbaa !12, !noalias !549
  %i.omt = fadd reassoc nsz arcp contract afn float %i.oms, %i.omr
  store float %i.omt, ptr %.08951097.i, align 4, !tbaa !12, !noalias !549
  %i.omu = load float, ptr %.19081092.i, align 4, !tbaa !12, !noalias !549
  %i.omv = load float, ptr %.19021095.i, align 4, !tbaa !12, !noalias !549
  %i.omw = load float, ptr %.19041094.i, align 4, !tbaa !12, !noalias !549
  %i.omx = load float, ptr %.19001096.i, align 4, !tbaa !12, !noalias !549
  %i.omy = fadd reassoc nsz arcp contract afn float %i.omu, %i.omw
  %i.omz = fadd reassoc nsz arcp contract afn float %i.omv, %i.omx
  %i.ona = fsub reassoc nsz arcp contract afn float %i.omy, %i.omz
  %i.onb = fmul reassoc nsz arcp contract afn float %i.ona, 5.000000e-01
  store float %i.onb, ptr %.19061093.i, align 4, !tbaa !12, !noalias !549
  %i.onc = getelementptr inbounds nuw i8, ptr %.19081092.i, i64 4
  %i.ond = getelementptr inbounds nuw i8, ptr %.19061093.i, i64 4
  %i.one = getelementptr inbounds nuw i8, ptr %.19041094.i, i64 4
  %i.onf = getelementptr inbounds nuw i8, ptr %.19021095.i, i64 4
  %i.ong = getelementptr inbounds nuw i8, ptr %.19001096.i, i64 4
  %i.onh = load float, ptr %i.ond, align 4, !tbaa !12, !noalias !549 ; 2 uses
  %i.oni = load float, ptr %i.onf, align 4, !tbaa !12, !noalias !549
  %i.onj = fadd reassoc nsz arcp contract afn float %i.oni, %i.onh
  store float %i.onj, ptr %i.onc, align 4, !tbaa !12, !noalias !549
  %i.onk = load float, ptr %i.ong, align 4, !tbaa !12, !noalias !549
  %i.onl = fadd reassoc nsz arcp contract afn float %i.onk, %i.onh
  store float %i.onl, ptr %i.one, align 4, !tbaa !12, !noalias !549
  %i.onm = getelementptr inbounds nuw i8, ptr %.19081092.i, i64 8 ; 2 uses
  %i.onn = getelementptr inbounds nuw i8, ptr %.19061093.i, i64 8 ; 2 uses
  %i.ono = getelementptr inbounds nuw i8, ptr %.19041094.i, i64 8 ; 2 uses
  %i.onp = getelementptr inbounds nuw i8, ptr %.19021095.i, i64 8 ; 2 uses
  %i.onq = getelementptr inbounds nuw i8, ptr %.19001096.i, i64 8 ; 2 uses
  %i.onr = getelementptr inbounds nuw i8, ptr %.08951097.i, i64 8 ; 2 uses
  %i.ons = getelementptr inbounds nuw i8, ptr %.08941098.i, i64 8 ; 2 uses
  %i.ont = add nuw nsw i32 %.08931099.i, 2        ; 3 uses
  %i.onu = icmp slt i32 %i.ont, %i.nna
  br i1 %i.onu, label %.lr.ph1101.i, label %._crit_edge1102.i, !llvm.loop !369

._crit_edge1102.i:                                ; preds = %.lr.ph1101.i, %bb.pu
  %.1908.lcssa.i = phi ptr [ %gep.i563, %bb.pu ], [ %i.onm, %.lr.ph1101.i ]
  %.1906.lcssa.i = phi ptr [ %gep1132.i, %bb.pu ], [ %i.onn, %.lr.ph1101.i ] ; 2 uses
  %.1904.lcssa.i = phi ptr [ %gep1134.i, %bb.pu ], [ %i.ono, %.lr.ph1101.i ]
  %.1902.lcssa.i = phi ptr [ %gep1136.i, %bb.pu ], [ %i.onp, %.lr.ph1101.i ]
  %.1900.lcssa.i = phi ptr [ %gep1138.i, %bb.pu ], [ %i.onq, %.lr.ph1101.i ]
  %.0895.lcssa.i = phi ptr [ %i.olq, %bb.pu ], [ %i.onr, %.lr.ph1101.i ]
  %.0894.lcssa.i = phi ptr [ %i.olw, %bb.pu ], [ %i.ons, %.lr.ph1101.i ]
  %.0893.lcssa.i = phi i32 [ %i.nmv, %bb.pu ], [ %i.ont, %.lr.ph1101.i ]
  %i.onv = icmp slt i32 %.0893.lcssa.i, %i.nmx
  br i1 %i.onv, label %bb.pv, label %bb.pw

bb.pv:                                            ; preds = %._crit_edge1102.i
  %i.onw = load float, ptr %.1906.lcssa.i, align 4, !tbaa !12, !noalias !549
  %i.onx = load float, ptr %.0894.lcssa.i, align 4, !tbaa !12, !noalias !549
  %i.ony = fadd reassoc nsz arcp contract afn float %i.onx, %i.onw
  store float %i.ony, ptr %.0895.lcssa.i, align 4, !tbaa !12, !noalias !549
  %i.onz = load float, ptr %.1908.lcssa.i, align 4, !tbaa !12, !noalias !549
  %i.ooa = load float, ptr %.1902.lcssa.i, align 4, !tbaa !12, !noalias !549
  %i.oob = load float, ptr %.1904.lcssa.i, align 4, !tbaa !12, !noalias !549
  %i.ooc = load float, ptr %.1900.lcssa.i, align 4, !tbaa !12, !noalias !549
  %i.ood = fadd reassoc nsz arcp contract afn float %i.onz, %i.oob
  %i.ooe = fadd reassoc nsz arcp contract afn float %i.ooa, %i.ooc
  %i.oof = fsub reassoc nsz arcp contract afn float %i.ood, %i.ooe
  %i.oog = fmul reassoc nsz arcp contract afn float %i.oof, 5.000000e-01
  store float %i.oog, ptr %.1906.lcssa.i, align 4, !tbaa !12, !noalias !549
  br label %bb.pw

bb.pw:                                            ; preds = %bb.pv, %._crit_edge1102.i, %bb.pt, %._crit_edge1121.i
  %indvars.iv.next1281.i = add nuw nsw i64 %indvars.iv1280.i, 1 ; 2 uses
  %exitcond1148.not = icmp eq i64 %indvars.iv.next1281.i, %i.lwv
  %indvar.next3941 = add i64 %indvar3940, 1
  br i1 %exitcond1148.not, label %._crit_edge1130.i, label %.lr.ph1129.i

.preheader1020.i:                                 ; preds = %._crit_edge1142.i, %.preheader1021.i
  br i1 %i.lve, label %.lr.ph1167.i, label %._crit_edge1168.i

.lr.ph1167.i:                                     ; preds = %.preheader1020.i
  %i.ooh = add nuw nsw i32 %i.nmv, 2              ; 3 uses
  %i.ooi = add i32 %i.nmx, -2                     ; 4 uses
  %i.ooj = sext i32 %i.ooi to i64                 ; 9 uses
  br i1 %i.lwk, label %.lr.ph1150.i.preheader.preheader, label %._crit_edge1168.i

.lr.ph1150.i.preheader.preheader:                 ; preds = %.lr.ph1167.i
  %i.ook = zext nneg i32 %i.nmv to i64            ; 2 uses
  %i.ool = add nsw i64 %i.ooj, 4611686018427387901
  %i.oom = zext nneg i32 %i.nmv to i64            ; 2 uses
  %i.oon = add nsw i64 %i.ooj, 4611686018427387901
  %i.ooo = zext nneg i32 %i.nmv to i64            ; 2 uses
  %i.oop = add nsw i64 %i.ooj, 4611686018427387901
  %i.ooq = add nsw i64 %i.ooj, -3
  %i.oor = add nsw i64 %i.ooj, -3
  %i.oos = add nsw i64 %i.ooj, -3
  br label %.lr.ph1150.i.preheader

.preheader1016.i:                                 ; preds = %.preheader1016.i.preheader, %._crit_edge1142.i
  %indvars.iv1286.i = phi i64 [ %indvars.iv.next1287.i, %._crit_edge1142.i ], [ 4, %.preheader1016.i.preheader ] ; 3 uses
  %i.oot = mul nuw nsw i64 %indvars.iv1286.i, 136 ; 5 uses
  %indvars.iv1286.tr.i = trunc nuw i64 %indvars.iv1286.i to i32
  %i.oou = shl nuw i32 %indvars.iv1286.tr.i, 1
  %i.oov = and i32 %i.oou, 14                     ; 5 uses
  br i1 %i.nst, label %.epil.preheader4711, label %.preheader1016.i.new

.preheader1016.i.new:                             ; preds = %.preheader1016.i
  %i.oow = shl nuw nsw i32 %i.oov, 1
  %i.oox = lshr i32 %.fr1070, %i.oow
  %i.ooy = and i32 %i.oox, 3
  %i.ooz = zext nneg i32 %i.ooy to i64
  %i.opa = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ooz
  %i.opb = load ptr, ptr %i.opa, align 8, !tbaa !140, !noalias !551
  %i.opc = shl nuw nsw i32 %i.oov, 1
  %i.opd = or disjoint i32 %i.opc, 2
  %i.ope = lshr i32 %.fr1070, %i.opd
  %i.opf = and i32 %i.ope, 3
  %i.opg = zext nneg i32 %i.opf to i64
  %i.oph = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.opg
  %i.opi = load ptr, ptr %i.oph, align 8, !tbaa !140, !noalias !551
  %i.opj = shl nuw nsw i32 %i.oov, 1
  %i.opk = lshr i32 %.fr1070, %i.opj
  %i.opl = and i32 %i.opk, 3
  %i.opm = zext nneg i32 %i.opl to i64
  %i.opn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.opm
  %i.opo = load ptr, ptr %i.opn, align 8, !tbaa !140, !noalias !551
  %i.opp = shl nuw nsw i32 %i.oov, 1
  %i.opq = or disjoint i32 %i.opp, 2
  %i.opr = lshr i32 %.fr1070, %i.opq
  %i.ops = and i32 %i.opr, 3
  %i.opt = zext nneg i32 %i.ops to i64
  %i.opu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.opt
  %i.opv = load ptr, ptr %i.opu, align 8, !tbaa !140, !noalias !551
  br label %bb.py

._crit_edge1142.i.unr-lcssa:                      ; preds = %bb.py
  br i1 %lcmp.mod4716.not, label %._crit_edge1142.i, label %.epil.preheader4711

.epil.preheader4711:                              ; preds = %._crit_edge1142.i.unr-lcssa, %.preheader1016.i
  %indvars.iv1283.i.epil.init = phi i64 [ 4, %.preheader1016.i ], [ %indvars.iv.next1284.i.3, %._crit_edge1142.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod4717)
  br label %bb.px

bb.px:                                            ; preds = %bb.px, %.epil.preheader4711
  %indvars.iv1283.i.epil = phi i64 [ %indvars.iv1283.i.epil.init, %.epil.preheader4711 ], [ %indvars.iv.next1284.i.epil, %bb.px ] ; 3 uses
  %epil.iter4715 = phi i64 [ 0, %.epil.preheader4711 ], [ %epil.iter4715.next, %bb.px ]
  %i.opw = add nuw nsw i64 %indvars.iv1283.i.epil, %i.oot ; 2 uses
  %i.opx = trunc nuw nsw i64 %indvars.iv1283.i.epil to i32
  %i.opy = and i32 %i.opx, 1
  %i.opz = or disjoint i32 %i.opy, %i.oov
  %i.oqa = shl nuw nsw i32 %i.opz, 1
  %i.oqb = lshr i32 %.fr1070, %i.oqa
  %i.oqc = and i32 %i.oqb, 3
  %i.oqd = getelementptr inbounds nuw [4 x i8], ptr %i.luy, i64 %i.opw
  %i.oqe = load float, ptr %i.oqd, align 4, !tbaa !12, !noalias !549
  %i.oqf = zext nneg i32 %i.oqc to i64
  %i.oqg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.oqf
  %i.oqh = load ptr, ptr %i.oqg, align 8, !tbaa !140, !noalias !551
  %i.oqi = getelementptr inbounds nuw [4 x i8], ptr %i.oqh, i64 %i.opw
  store float %i.oqe, ptr %i.oqi, align 4, !tbaa !12, !noalias !549
  %indvars.iv.next1284.i.epil = add nuw nsw i64 %indvars.iv1283.i.epil, 1
  %epil.iter4715.next = add i64 %epil.iter4715, 1 ; 2 uses
  %epil.iter4715.cmp.not = icmp eq i64 %epil.iter4715.next, %xtraiter4714
  br i1 %epil.iter4715.cmp.not, label %._crit_edge1142.i, label %bb.px, !llvm.loop !370

._crit_edge1142.i:                                ; preds = %bb.px, %._crit_edge1142.i.unr-lcssa
  %indvars.iv.next1287.i = add nuw nsw i64 %indvars.iv1286.i, 1 ; 2 uses
  %exitcond1154.not = icmp eq i64 %indvars.iv.next1287.i, %smax1153
  br i1 %exitcond1154.not, label %.preheader1020.i, label %.preheader1016.i

bb.py:                                            ; preds = %bb.py, %.preheader1016.i.new
  %indvars.iv1283.i = phi i64 [ 4, %.preheader1016.i.new ], [ %indvars.iv.next1284.i.3, %bb.py ] ; 5 uses
  %niter4719 = phi i64 [ 0, %.preheader1016.i.new ], [ %niter4719.next.3, %bb.py ]
  %i.oqj = add nuw nsw i64 %indvars.iv1283.i, %i.oot ; 2 uses
  %i.oqk = getelementptr inbounds nuw [4 x i8], ptr %i.luy, i64 %i.oqj
  %i.oql = load float, ptr %i.oqk, align 16, !tbaa !12, !noalias !549
  %i.oqm = getelementptr inbounds nuw [4 x i8], ptr %i.opb, i64 %i.oqj
  store float %i.oql, ptr %i.oqm, align 4, !tbaa !12, !noalias !549
  %indvars.iv.next1284.i = or disjoint i64 %indvars.iv1283.i, 1
  %i.oqn = add nuw nsw i64 %indvars.iv.next1284.i, %i.oot ; 2 uses
  %i.oqo = getelementptr inbounds nuw [4 x i8], ptr %i.luy, i64 %i.oqn
  %i.oqp = load float, ptr %i.oqo, align 4, !tbaa !12, !noalias !549
  %i.oqq = getelementptr inbounds nuw [4 x i8], ptr %i.opi, i64 %i.oqn
  store float %i.oqp, ptr %i.oqq, align 4, !tbaa !12, !noalias !549
  %indvars.iv.next1284.i.1 = or disjoint i64 %indvars.iv1283.i, 2
  %i.oqr = add nuw nsw i64 %indvars.iv.next1284.i.1, %i.oot ; 2 uses
  %i.oqs = getelementptr inbounds nuw [4 x i8], ptr %i.luy, i64 %i.oqr
  %i.oqt = load float, ptr %i.oqs, align 8, !tbaa !12, !noalias !549
  %i.oqu = getelementptr inbounds nuw [4 x i8], ptr %i.opo, i64 %i.oqr
  store float %i.oqt, ptr %i.oqu, align 4, !tbaa !12, !noalias !549
  %indvars.iv.next1284.i.2 = or disjoint i64 %indvars.iv1283.i, 3
  %i.oqv = add nuw nsw i64 %indvars.iv.next1284.i.2, %i.oot ; 2 uses
  %i.oqw = getelementptr inbounds nuw [4 x i8], ptr %i.luy, i64 %i.oqv
  %i.oqx = load float, ptr %i.oqw, align 4, !tbaa !12, !noalias !549
  %i.oqy = getelementptr inbounds nuw [4 x i8], ptr %i.opv, i64 %i.oqv
  store float %i.oqx, ptr %i.oqy, align 4, !tbaa !12, !noalias !549
  %indvars.iv.next1284.i.3 = add nuw nsw i64 %indvars.iv1283.i, 4 ; 2 uses
  %niter4719.next.3 = add i64 %niter4719, 4       ; 2 uses
  %niter4719.ncmp.3 = icmp eq i64 %niter4719.next.3, %unroll_iter4718
  br i1 %niter4719.ncmp.3, label %._crit_edge1142.i.unr-lcssa, label %bb.py

._crit_edge1168.i:                                ; preds = %._crit_edge1165.i.loopexit, %.lr.ph1167.i, %.preheader1020.i
  %i.oqz = select i1 %i.nmu, i32 4, i32 8         ; 3 uses
  %i.ora = or disjoint i32 %i.oqz, %i.lyk         ; 7 uses
  %.neg951.i = select i1 %i.nmw, i32 -4, i32 -8   ; 2 uses
  %i.orb = add nsw i32 %i.lym, %.neg951.i         ; 3 uses
  br i1 %i.lwo, label %.lr.ph1182.i, label %._crit_edge1183.split.i

.lr.ph1182.i:                                     ; preds = %._crit_edge1168.i
  %i.orc = icmp slt i32 %i.ora, %i.orb
  %i.ord = load ptr, ptr @lmmse_gamma_out, align 8, !noalias !551 ; 7 uses
  %i.ore = icmp eq ptr %i.ord, null
  br i1 %i.orc, label %.lr.ph1175.i.preheader, label %._crit_edge1183.split.i

.lr.ph1175.i.preheader:                           ; preds = %.lr.ph1182.i
  %reass.sub = sub nsw i32 %i.ora, %i.lyk
  %.reass1178.i.a = add nsw i32 %reass.sub, 4
  %i.orf = add i32 %.neg951.i, %i.lym             ; 2 uses
  %i.org = add i32 %i.orf, %7
  %i.orh = sub i32 %i.org, %i.oqz                 ; 2 uses
  %i.ori = zext i32 %i.orh to i64
  %i.orj = add nuw nsw i64 %i.ori, 1              ; 2 uses
  %min.iters.check3696 = icmp ult i32 %i.orh, 7
  %n.vec3698 = and i64 %i.orj, 8589934584         ; 5 uses
  %i.ork = trunc i64 %n.vec3698 to i32
  %i.orl = add i32 %i.ora, %i.ork
  %i.orm = shl nuw nsw i64 %n.vec3698, 2          ; 3 uses
  %i.orn = shl nuw nsw i64 %n.vec3698, 4
  %cmp.n3731 = icmp eq i64 %i.orj, %n.vec3698
  %9 = add i32 %i.orf, %8
  %10 = sub i32 %9, %i.oqz                        ; 2 uses
  %11 = zext i32 %10 to i64
  %12 = add nuw nsw i64 %11, 1                    ; 2 uses
  %min.iters.check3673 = icmp ult i32 %10, 7
  %n.vec3675 = and i64 %12, 8589934584            ; 5 uses
  %i.oro = trunc i64 %n.vec3675 to i32
  %i.orp = add i32 %i.ora, %i.oro
  %i.orq = shl nuw nsw i64 %n.vec3675, 2          ; 3 uses
  %i.orr = shl nuw nsw i64 %n.vec3675, 4
  %cmp.n3689 = icmp eq i64 %12, %n.vec3675
  br label %.lr.ph1175.i

.lr.ph1150.i.preheader:                           ; preds = %.lr.ph1150.i.preheader.preheader, %._crit_edge1165.i.loopexit
  %.08901166.i = phi i32 [ %i.phh, %._crit_edge1165.i.loopexit ], [ 0, %.lr.ph1150.i.preheader.preheader ]
  br label %.lr.ph1150.i

.lr.ph1150.i:                                     ; preds = %.lr.ph1150.i.preheader, %._crit_edge1147.i
  %indvar3884 = phi i64 [ 0, %.lr.ph1150.i.preheader ], [ %indvar.next3885, %._crit_edge1147.i ] ; 2 uses
  %indvars.iv1292.i = phi i64 [ %i.lwq, %.lr.ph1150.i.preheader ], [ %indvars.iv.next1293.i, %._crit_edge1147.i ] ; 3 uses
  %i.ors = mul i64 %indvar3884, 544               ; 4 uses
  %scevgep3886 = getelementptr i8, ptr %i.lxh, i64 %i.ors
  %scevgep3888 = getelementptr i8, ptr %i.lxj, i64 %i.ors
  %indvars.iv1292.tr.i = trunc nuw i64 %indvars.iv1292.i to i32
  %i.ort = shl nuw i32 %indvars.iv1292.tr.i, 1
  %i.oru = and i32 %i.ort, 14                     ; 2 uses
  %i.orv = shl nuw nsw i32 %i.oru, 1
  %i.orw = lshr i32 %.fr1070, %i.orv              ; 3 uses
  %i.orx = and i32 %i.orw, 1                      ; 2 uses
  %i.ory = or disjoint i32 %i.orx, %i.ooh         ; 2 uses
  %i.orz = icmp slt i32 %i.ory, %i.ooi
  br i1 %i.orz, label %.lr.ph1146.i, label %._crit_edge1147.i

.lr.ph1146.i:                                     ; preds = %.lr.ph1150.i
  %i.osa = or disjoint i32 %i.orx, %i.oru
  %i.osb = shl nuw nsw i32 %i.osa, 1
  %i.osc = lshr i32 %.fr1070, %i.osb
  %i.osd = and i32 %i.osc, 3
  %i.ose = mul nuw nsw i64 %indvars.iv1292.i, 136 ; 2 uses
  %i.osf = getelementptr inbounds nuw [4 x i8], ptr %i.luu, i64 %i.ose ; 2 uses
  %i.osg = zext nneg i32 %i.osd to i64
  %i.osh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.osg
  %i.osi = load ptr, ptr %i.osh, align 8, !tbaa !140, !noalias !551 ; 3 uses
  %i.osj = getelementptr inbounds nuw [4 x i8], ptr %i.osi, i64 %i.ose ; 2 uses
  %i.osk = zext nneg i32 %i.ory to i64            ; 5 uses
  %i.osl = and i32 %i.orw, 1
  %i.osm = or disjoint i32 %i.nmv, %i.osl
  %i.osn = zext nneg i32 %i.osm to i64
  %i.oso = sub nsw i64 %i.ooq, %i.osn             ; 2 uses
  %i.osp = lshr i64 %i.oso, 1
  %i.osq = add nuw i64 %i.osp, 1                  ; 2 uses
  %min.iters.check3896 = icmp ult i64 %i.oso, 8
  br i1 %min.iters.check3896, label %scalar.ph3895.preheader, label %vector.memcheck3883

scalar.ph3895.preheader:                          ; preds = %vector.body3902, %vector.memcheck3883, %.lr.ph1146.i
  %indvars.iv1289.i.ph = phi i64 [ %i.osk, %vector.memcheck3883 ], [ %i.osk, %.lr.ph1146.i ], [ %i.otl, %vector.body3902 ]
  br label %scalar.ph3895

vector.memcheck3883:                              ; preds = %.lr.ph1146.i
  %i.osr = and i32 %i.orw, 1
  %i.oss = zext nneg i32 %i.osr to i64            ; 2 uses
  %i.ost = or disjoint i64 %i.ooo, %i.oss
  %i.osu = shl nuw nsw i64 %i.ost, 2              ; 4 uses
  %scevgep3887 = getelementptr i8, ptr %scevgep3886, i64 %i.osu
  %i.osv = or disjoint i64 %i.ooo, %i.oss
  %i.osw = sub nsw i64 %i.oop, %i.osv
  %i.osx = shl i64 %i.osw, 2
  %i.osy = and i64 %i.osx, -8                     ; 2 uses
  %i.osz = getelementptr i8, ptr %scevgep3888, i64 %i.osy
  %scevgep3889 = getelementptr i8, ptr %i.osz, i64 %i.osu
  %i.ota = getelementptr i8, ptr %i.osi, i64 %i.lwz
  %i.otb = getelementptr i8, ptr %i.ota, i64 8
  %i.otc = getelementptr i8, ptr %i.otb, i64 %i.ors
  %scevgep3890 = getelementptr i8, ptr %i.otc, i64 %i.osu
  %i.otd = getelementptr i8, ptr %i.osi, i64 %i.lwz
  %i.ote = getelementptr i8, ptr %i.otd, i64 2188
  %i.otf = getelementptr i8, ptr %i.ote, i64 %i.ors
  %i.otg = getelementptr i8, ptr %i.otf, i64 %i.osy
  %scevgep3891 = getelementptr i8, ptr %i.otg, i64 %i.osu
  %bound03892 = icmp ult ptr %scevgep3887, %scevgep3891
  %bound13893 = icmp ult ptr %scevgep3890, %scevgep3889
  %found.conflict3894 = and i1 %bound03892, %bound13893
  br i1 %found.conflict3894, label %scalar.ph3895.preheader, label %vector.ph3897

vector.ph3897:                                    ; preds = %vector.memcheck3883
  %i.oth = and i64 %i.osq, 3                      ; 2 uses
  %i.oti = icmp eq i64 %i.oth, 0
  %i.otj = select i1 %i.oti, i64 4, i64 %i.oth
  %n.vec3898 = sub i64 %i.osq, %i.otj             ; 2 uses
  %i.otk = shl i64 %n.vec3898, 1
  %i.otl = add i64 %i.otk, %i.osk
  %broadcast.splatinsert3899 = insertelement <4 x i64> poison, i64 %i.osk, i64 0
  %broadcast.splat3900 = shufflevector <4 x i64> %broadcast.splatinsert3899, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction3901 = add nuw nsw <4 x i64> %broadcast.splat3900, <i64 0, i64 2, i64 4, i64 6>
  %invariant.gep4837 = getelementptr [4 x i8], ptr %i.osj, i64 %i.osk
  br label %vector.body3902

vector.body3902:                                  ; preds = %vector.body3902, %vector.ph3897
  %index3903 = phi i64 [ 0, %vector.ph3897 ], [ %index.next3930, %vector.body3902 ] ; 2 uses
  %vec.ind3904 = phi <4 x i64> [ %induction3901, %vector.ph3897 ], [ %vec.ind.next3931, %vector.body3902 ] ; 2 uses
  %wide.gep3905 = getelementptr inbounds nuw [4 x i8], ptr %i.osf, <4 x i64> %vec.ind3904 ; 2 uses
  %i.otm = extractelement <4 x ptr> %wide.gep3905, i64 0 ; 4 uses
  %.idx4559 = shl nuw i64 %index3903, 3
  %gep4838 = getelementptr i8, ptr %invariant.gep4837, i64 %.idx4559 ; 7 uses
  %i.otn = getelementptr inbounds i8, ptr %gep4838, i64 -8
  %wide.vec3906 = load <8 x float>, ptr %i.otn, align 4, !tbaa !12, !alias.scope !571, !noalias !549
  %strided.vec3907 = shufflevector <8 x float> %wide.vec3906, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.oto = getelementptr inbounds i8, ptr %gep4838, i64 -4
  %wide.vec3908 = load <8 x float>, ptr %i.oto, align 4, !tbaa !12, !alias.scope !571, !noalias !549 ; 2 uses
  %strided.vec3909 = shufflevector <8 x float> %wide.vec3908, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec3910 = shufflevector <8 x float> %wide.vec3908, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 5 uses
  %i.otp = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3907, %strided.vec3910
  %i.otq = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.otp)
  %i.otr = getelementptr inbounds nuw i8, ptr %i.otm, i64 4
  %wide.vec3911 = load <8 x float>, ptr %i.otr, align 4, !tbaa !12, !alias.scope !572, !noalias !549
  %strided.vec3912 = shufflevector <8 x float> %wide.vec3911, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.ots = getelementptr inbounds i8, ptr %i.otm, i64 -4
  %wide.vec3913 = load <8 x float>, ptr %i.ots, align 4, !tbaa !12, !alias.scope !572, !noalias !549
  %strided.vec3914 = shufflevector <8 x float> %wide.vec3913, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.ott = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3912, %strided.vec3914
  %i.otu = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ott)
  %i.otv = fadd reassoc nsz arcp contract afn <4 x float> %i.otu, splat (float 1.000000e+00) ; 2 uses
  %i.otw = fadd reassoc nsz arcp contract afn <4 x float> %i.otv, %i.otq
  %i.otx = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.otw ; 2 uses
  %i.oty = getelementptr inbounds nuw i8, ptr %gep4838, i64 4
  %wide.vec3915 = load <8 x float>, ptr %i.oty, align 4, !tbaa !12, !alias.scope !571, !noalias !549 ; 2 uses
  %strided.vec3916 = shufflevector <8 x float> %wide.vec3915, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec3917 = shufflevector <8 x float> %wide.vec3915, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.otz = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3917, %strided.vec3910
  %i.oua = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.otz)
  %i.oub = fadd reassoc nsz arcp contract afn <4 x float> %i.otv, %i.oua
  %i.ouc = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.oub ; 2 uses
  %i.oud = getelementptr inbounds i8, ptr %gep4838, i64 -1088
  %wide.vec3918 = load <8 x float>, ptr %i.oud, align 4, !tbaa !12, !alias.scope !571, !noalias !549
  %strided.vec3919 = shufflevector <8 x float> %wide.vec3918, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.oue = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3919, %strided.vec3910
  %i.ouf = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.oue)
  %i.oug = getelementptr inbounds nuw i8, ptr %i.otm, i64 544
  %wide.vec3920 = load <8 x float>, ptr %i.oug, align 4, !tbaa !12, !alias.scope !572, !noalias !549
  %strided.vec3921 = shufflevector <8 x float> %wide.vec3920, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.ouh = getelementptr inbounds i8, ptr %i.otm, i64 -544
  %wide.vec3922 = load <8 x float>, ptr %i.ouh, align 4, !tbaa !12, !alias.scope !572, !noalias !549
  %strided.vec3923 = shufflevector <8 x float> %wide.vec3922, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.oui = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3921, %strided.vec3923
  %i.ouj = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.oui)
  %i.ouk = fadd reassoc nsz arcp contract afn <4 x float> %i.ouj, splat (float 1.000000e+00) ; 2 uses
  %i.oul = fadd reassoc nsz arcp contract afn <4 x float> %i.ouk, %i.ouf
  %i.oum = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.oul ; 2 uses
  %i.oun = getelementptr inbounds nuw i8, ptr %gep4838, i64 1088
  %wide.vec3924 = load <8 x float>, ptr %i.oun, align 4, !tbaa !12, !alias.scope !571, !noalias !549
  %strided.vec3925 = shufflevector <8 x float> %wide.vec3924, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ouo = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3925, %strided.vec3910
  %i.oup = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ouo)
  %i.ouq = fadd reassoc nsz arcp contract afn <4 x float> %i.ouk, %i.oup
  %i.our = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.ouq ; 2 uses
  %i.ous = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3914, %strided.vec3909
  %i.out = fmul reassoc nsz arcp contract afn <4 x float> %i.ous, %i.otx
  %i.ouu = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3912, %strided.vec3916
  %i.ouv = fmul reassoc nsz arcp contract afn <4 x float> %i.ouu, %i.ouc
  %i.ouw = fadd reassoc nsz arcp contract afn <4 x float> %i.ouv, %i.out
  %i.oux = getelementptr inbounds i8, ptr %gep4838, i64 -544
  %wide.vec3926 = load <8 x float>, ptr %i.oux, align 4, !tbaa !12, !alias.scope !571, !noalias !549
  %strided.vec3927 = shufflevector <8 x float> %wide.vec3926, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ouy = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3923, %strided.vec3927
  %i.ouz = fmul reassoc nsz arcp contract afn <4 x float> %i.ouy, %i.oum
  %i.ova = fadd reassoc nsz arcp contract afn <4 x float> %i.ouw, %i.ouz
  %i.ovb = getelementptr inbounds nuw i8, ptr %gep4838, i64 544
  %wide.vec3928 = load <8 x float>, ptr %i.ovb, align 4, !tbaa !12, !alias.scope !571, !noalias !549
  %strided.vec3929 = shufflevector <8 x float> %wide.vec3928, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ovc = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3921, %strided.vec3929
  %i.ovd = fmul reassoc nsz arcp contract afn <4 x float> %i.ovc, %i.our
  %i.ove = fadd reassoc nsz arcp contract afn <4 x float> %i.ova, %i.ovd
  %i.ovf = fadd reassoc nsz arcp contract afn <4 x float> %i.ouc, %i.otx
  %i.ovg = fadd reassoc nsz arcp contract afn <4 x float> %i.ovf, %i.oum
  %i.ovh = fadd reassoc nsz arcp contract afn <4 x float> %i.ovg, %i.our
  %i.ovi = fdiv reassoc nsz arcp contract afn <4 x float> %i.ove, %i.ovh
  %i.ovj = fadd reassoc nsz arcp contract afn <4 x float> %i.ovi, %strided.vec3910
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.ovj, <4 x ptr> align 4 %wide.gep3905, <4 x i1> splat (i1 true)), !tbaa !12, !alias.scope !572, !noalias !573
  %index.next3930 = add nuw i64 %index3903, 4     ; 2 uses
  %vec.ind.next3931 = add nuw nsw <4 x i64> %vec.ind3904, splat (i64 8)
  %i.ovk = icmp eq i64 %index.next3930, %n.vec3898
  br i1 %i.ovk, label %scalar.ph3895.preheader, label %vector.body3902, !llvm.loop !374

._crit_edge1147.i:                                ; preds = %scalar.ph3895, %.lr.ph1150.i
  %indvars.iv.next1293.i = add nuw nsw i64 %indvars.iv1292.i, 1 ; 2 uses
  %exitcond1158.not = icmp eq i64 %indvars.iv.next1293.i, %i.lwx
  %indvar.next3885 = add i64 %indvar3884, 1
  br i1 %exitcond1158.not, label %.lr.ph1158.i, label %.lr.ph1150.i

scalar.ph3895:                                    ; preds = %scalar.ph3895.preheader, %scalar.ph3895
  %indvars.iv1289.i = phi i64 [ %indvars.iv.next1290.i, %scalar.ph3895 ], [ %indvars.iv1289.i.ph, %scalar.ph3895.preheader ] ; 3 uses
  %i.ovl = getelementptr inbounds nuw [4 x i8], ptr %i.osf, i64 %indvars.iv1289.i ; 5 uses
  %i.ovm = getelementptr inbounds nuw [4 x i8], ptr %i.osj, i64 %indvars.iv1289.i ; 9 uses
  %i.ovn = getelementptr inbounds i8, ptr %i.ovm, i64 -4
  %i.ovo = getelementptr inbounds nuw i8, ptr %i.ovm, i64 4
  %i.ovp = load float, ptr %i.ovm, align 4, !tbaa !12, !noalias !549 ; 2 uses
  %i.ovq = getelementptr inbounds nuw i8, ptr %i.ovl, i64 4
  %i.ovr = load float, ptr %i.ovq, align 4, !tbaa !12, !noalias !549 ; 2 uses
  %i.ovs = getelementptr inbounds i8, ptr %i.ovl, i64 -4
  %i.ovt = load float, ptr %i.ovs, align 4, !tbaa !12, !noalias !549 ; 2 uses
  %i.ovu = fsub reassoc nsz arcp contract afn float %i.ovr, %i.ovt
  %i.ovv = getelementptr inbounds nuw i8, ptr %i.ovl, i64 544
  %i.ovw = load float, ptr %i.ovv, align 4, !tbaa !12, !noalias !549 ; 2 uses
  %i.ovx = getelementptr inbounds i8, ptr %i.ovl, i64 -544
  %i.ovy = load float, ptr %i.ovx, align 4, !tbaa !12, !noalias !549 ; 2 uses
  %i.ovz = fsub reassoc nsz arcp contract afn float %i.ovw, %i.ovy
  %i.owa = insertelement <2 x float> poison, float %i.ovu, i64 0
  %i.owb = insertelement <2 x float> %i.owa, float %i.ovz, i64 1
  %i.owc = call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.owb)
  %i.owd = shufflevector <2 x float> %i.owc, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.owe = fadd reassoc nsz arcp contract afn <4 x float> %i.owd, splat (float 1.000000e+00)
end_hunk_3
begin_hunk_4_@process:bb.a
  %bound03751 = icmp ult ptr %scevgep3740, %scevgep3747
  %bound13752 = icmp ult ptr %scevgep3745, %scevgep3741
  %found.conflict3753 = and i1 %bound03751, %bound13752
  %conflict.rdx3754 = or i1 %found.conflict3750, %found.conflict3753
  br i1 %conflict.rdx3754, label %scalar.ph3755.preheader, label %vector.ph3757

vector.ph3757:                                    ; preds = %vector.memcheck3737
  %i.pjk = and i64 %i.pim, 3                      ; 2 uses
  %i.pjl = icmp eq i64 %i.pjk, 0
  %i.pjm = select i1 %i.pjl, i64 4, i64 %i.pjk
  %n.vec3758 = sub i64 %i.pim, %i.pjm             ; 2 uses
  %i.pjn = shl i64 %n.vec3758, 1
  %i.pjo = add i64 %i.pjn, %i.pig
  %broadcast.splatinsert3759 = insertelement <4 x i64> poison, i64 %i.pig, i64 0
  %broadcast.splat3760 = shufflevector <4 x i64> %broadcast.splatinsert3759, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction3761 = add nuw nsw <4 x i64> %broadcast.splat3760, <i64 0, i64 2, i64 4, i64 6>
  br label %vector.body3762

vector.body3762:                                  ; preds = %vector.body3762, %vector.ph3757
  %index3763 = phi i64 [ 0, %vector.ph3757 ], [ %index.next3793, %vector.body3762 ] ; 2 uses
  %vec.ind3764 = phi <4 x i64> [ %induction3761, %vector.ph3757 ], [ %vec.ind.next3794, %vector.body3762 ] ; 2 uses
  %i.pjp = shl nuw i64 %index3763, 1
  %i.pjq = add nuw i64 %i.pjp, %i.pig             ; 2 uses
  %i.pjr = getelementptr inbounds nuw [4 x i8], ptr %i.phx, i64 %i.pjq ; 4 uses
  %wide.gep3765 = getelementptr inbounds nuw [4 x i8], ptr %i.pib, <4 x i64> %vec.ind3764 ; 2 uses
  %i.pjs = extractelement <4 x ptr> %wide.gep3765, i64 0 ; 4 uses
  %i.pjt = getelementptr inbounds nuw [4 x i8], ptr %i.pif, i64 %i.pjq ; 5 uses
  %i.pju = getelementptr inbounds i8, ptr %i.pjt, i64 -8
  %wide.vec3766 = load <8 x float>, ptr %i.pju, align 4, !tbaa !12, !alias.scope !579, !noalias !549
  %strided.vec3767 = shufflevector <8 x float> %wide.vec3766, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec3768 = load <8 x float>, ptr %i.pjt, align 4, !tbaa !12, !alias.scope !579, !noalias !549
  %strided.vec3769 = shufflevector <8 x float> %wide.vec3768, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 4 uses
  %i.pjv = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3767, %strided.vec3769
  %i.pjw = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pjv)
  %i.pjx = getelementptr inbounds nuw i8, ptr %i.pjr, i64 4
  %wide.vec3770 = load <8 x float>, ptr %i.pjx, align 4, !tbaa !12, !alias.scope !580, !noalias !549
  %strided.vec3771 = shufflevector <8 x float> %wide.vec3770, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.pjy = getelementptr inbounds i8, ptr %i.pjr, i64 -4
  %wide.vec3772 = load <8 x float>, ptr %i.pjy, align 4, !tbaa !12, !alias.scope !580, !noalias !549 ; 2 uses
  %strided.vec3773 = shufflevector <8 x float> %wide.vec3772, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec3774 = shufflevector <8 x float> %wide.vec3772, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.pjz = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3771, %strided.vec3773
  %i.pka = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pjz)
  %i.pkb = fadd reassoc nsz arcp contract afn <4 x float> %i.pka, splat (float 1.000000e+00) ; 2 uses
  %i.pkc = fadd reassoc nsz arcp contract afn <4 x float> %i.pkb, %i.pjw
  %i.pkd = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.pkc ; 2 uses
  %i.pke = getelementptr inbounds nuw i8, ptr %i.pjt, i64 8
  %wide.vec3775 = load <8 x float>, ptr %i.pke, align 4, !tbaa !12, !alias.scope !579, !noalias !549
  %strided.vec3776 = shufflevector <8 x float> %wide.vec3775, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.pkf = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3776, %strided.vec3769
  %i.pkg = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pkf)
  %i.pkh = fadd reassoc nsz arcp contract afn <4 x float> %i.pkb, %i.pkg
  %i.pki = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.pkh ; 2 uses
  %i.pkj = getelementptr inbounds i8, ptr %i.pjt, i64 -1088
  %wide.vec3777 = load <8 x float>, ptr %i.pkj, align 4, !tbaa !12, !alias.scope !579, !noalias !549
  %strided.vec3778 = shufflevector <8 x float> %wide.vec3777, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.pkk = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3778, %strided.vec3769
  %i.pkl = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pkk)
  %i.pkm = getelementptr inbounds nuw i8, ptr %i.pjr, i64 544
  %wide.vec3779 = load <8 x float>, ptr %i.pkm, align 4, !tbaa !12, !alias.scope !580, !noalias !549
  %strided.vec3780 = shufflevector <8 x float> %wide.vec3779, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.pkn = getelementptr inbounds i8, ptr %i.pjr, i64 -544
  %wide.vec3781 = load <8 x float>, ptr %i.pkn, align 4, !tbaa !12, !alias.scope !580, !noalias !549
  %strided.vec3782 = shufflevector <8 x float> %wide.vec3781, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.pko = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3780, %strided.vec3782
  %i.pkp = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pko)
  %i.pkq = fadd reassoc nsz arcp contract afn <4 x float> %i.pkp, splat (float 1.000000e+00) ; 2 uses
  %i.pkr = fadd reassoc nsz arcp contract afn <4 x float> %i.pkq, %i.pkl
  %i.pks = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.pkr ; 2 uses
  %i.pkt = getelementptr inbounds nuw i8, ptr %i.pjt, i64 1088
  %wide.vec3783 = load <8 x float>, ptr %i.pkt, align 4, !tbaa !12, !alias.scope !579, !noalias !549
  %strided.vec3784 = shufflevector <8 x float> %wide.vec3783, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.pku = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3784, %strided.vec3769
  %i.pkv = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pku)
  %i.pkw = fadd reassoc nsz arcp contract afn <4 x float> %i.pkq, %i.pkv
  %i.pkx = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.pkw ; 2 uses
  %i.pky = getelementptr inbounds i8, ptr %i.pjs, i64 -4
  %wide.vec3785 = load <8 x float>, ptr %i.pky, align 4, !tbaa !12, !alias.scope !581, !noalias !549
  %strided.vec3786 = shufflevector <8 x float> %wide.vec3785, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.pkz = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3773, %strided.vec3786
  %i.pla = fmul reassoc nsz arcp contract afn <4 x float> %i.pkz, %i.pkd
  %i.plb = getelementptr inbounds nuw i8, ptr %i.pjs, i64 4
  %wide.vec3787 = load <8 x float>, ptr %i.plb, align 4, !tbaa !12, !alias.scope !581, !noalias !549
  %strided.vec3788 = shufflevector <8 x float> %wide.vec3787, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.plc = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3771, %strided.vec3788
  %i.pld = fmul reassoc nsz arcp contract afn <4 x float> %i.plc, %i.pki
  %i.ple = fadd reassoc nsz arcp contract afn <4 x float> %i.pld, %i.pla
  %i.plf = getelementptr inbounds i8, ptr %i.pjs, i64 -544
  %wide.vec3789 = load <8 x float>, ptr %i.plf, align 4, !tbaa !12, !alias.scope !581, !noalias !549
  %strided.vec3790 = shufflevector <8 x float> %wide.vec3789, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.plg = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3782, %strided.vec3790
  %i.plh = fmul reassoc nsz arcp contract afn <4 x float> %i.plg, %i.pks
  %i.pli = fadd reassoc nsz arcp contract afn <4 x float> %i.ple, %i.plh
  %i.plj = getelementptr inbounds nuw i8, ptr %i.pjs, i64 544
  %wide.vec3791 = load <8 x float>, ptr %i.plj, align 4, !tbaa !12, !alias.scope !581, !noalias !549
  %strided.vec3792 = shufflevector <8 x float> %wide.vec3791, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.plk = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3780, %strided.vec3792
  %i.pll = fmul reassoc nsz arcp contract afn <4 x float> %i.plk, %i.pkx
  %i.plm = fadd reassoc nsz arcp contract afn <4 x float> %i.pli, %i.pll
  %i.pln = fadd reassoc nsz arcp contract afn <4 x float> %i.pki, %i.pkd
  %i.plo = fadd reassoc nsz arcp contract afn <4 x float> %i.pln, %i.pks
  %i.plp = fadd reassoc nsz arcp contract afn <4 x float> %i.plo, %i.pkx
  %i.plq = fdiv reassoc nsz arcp contract afn <4 x float> %i.plm, %i.plp
  %i.plr = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3774, %i.plq
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.plr, <4 x ptr> align 4 %wide.gep3765, <4 x i1> splat (i1 true)), !tbaa !12, !alias.scope !581, !noalias !582
  %index.next3793 = add nuw i64 %index3763, 4     ; 2 uses
  %vec.ind.next3794 = add nuw nsw <4 x i64> %vec.ind3764, splat (i64 8)
  %i.pls = icmp eq i64 %index.next3793, %n.vec3758
  br i1 %i.pls, label %scalar.ph3755.preheader, label %vector.body3762, !llvm.loop !386

._crit_edge1162.i:                                ; preds = %scalar.ph3755, %.lr.ph1164.i
  %indvars.iv.next1305.i = add nuw nsw i64 %indvars.iv1304.i, 1 ; 2 uses
  %exitcond1162.not = icmp eq i64 %indvars.iv.next1305.i, %i.lwx
  %indvar.next3739 = add i64 %indvar3738, 1
  br i1 %exitcond1162.not, label %._crit_edge1165.i.loopexit, label %.lr.ph1164.i

scalar.ph3755:                                    ; preds = %scalar.ph3755.preheader, %scalar.ph3755
  %indvars.iv1301.i = phi i64 [ %indvars.iv.next1302.i, %scalar.ph3755 ], [ %indvars.iv1301.i.ph, %scalar.ph3755.preheader ] ; 4 uses
  %i.plt = getelementptr inbounds nuw [4 x i8], ptr %i.phx, i64 %indvars.iv1301.i ; 5 uses
  %i.plu = getelementptr inbounds nuw [4 x i8], ptr %i.pib, i64 %indvars.iv1301.i ; 5 uses
  %i.plv = getelementptr inbounds nuw [4 x i8], ptr %i.pif, i64 %indvars.iv1301.i ; 5 uses
  %i.plw = load float, ptr %i.plt, align 4, !tbaa !12, !noalias !549
  %i.plx = load float, ptr %i.plv, align 4, !tbaa !12, !noalias !549
  %i.ply = getelementptr inbounds nuw i8, ptr %i.plt, i64 4
  %i.plz = load float, ptr %i.ply, align 4, !tbaa !12, !noalias !549 ; 2 uses
  %i.pma = getelementptr inbounds i8, ptr %i.plt, i64 -4
  %i.pmb = load float, ptr %i.pma, align 4, !tbaa !12, !noalias !549 ; 2 uses
  %i.pmc = fsub reassoc nsz arcp contract afn float %i.plz, %i.pmb
  %i.pmd = getelementptr inbounds nuw i8, ptr %i.plt, i64 544
  %i.pme = load float, ptr %i.pmd, align 4, !tbaa !12, !noalias !549 ; 2 uses
  %i.pmf = getelementptr inbounds i8, ptr %i.plt, i64 -544
  %i.pmg = load float, ptr %i.pmf, align 4, !tbaa !12, !noalias !549 ; 2 uses
  %i.pmh = fsub reassoc nsz arcp contract afn float %i.pme, %i.pmg
  %i.pmi = insertelement <2 x float> poison, float %i.pmc, i64 0
  %i.pmj = insertelement <2 x float> %i.pmi, float %i.pmh, i64 1
  %i.pmk = call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.pmj)
  %i.pml = shufflevector <2 x float> %i.pmk, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.pmm = fadd reassoc nsz arcp contract afn <4 x float> %i.pml, splat (float 1.000000e+00)
  %i.pmn = getelementptr inbounds i8, ptr %i.plv, i64 -8
  %i.pmo = getelementptr inbounds nuw i8, ptr %i.plv, i64 8
  %i.pmp = getelementptr inbounds i8, ptr %i.plv, i64 -1088
  %i.pmq = getelementptr inbounds nuw i8, ptr %i.plv, i64 1088
  %i.pmr = load float, ptr %i.pmn, align 4, !tbaa !12, !noalias !549
  %i.pms = load float, ptr %i.pmo, align 4, !tbaa !12, !noalias !549
  %i.pmt = load float, ptr %i.pmp, align 4, !tbaa !12, !noalias !549
  %i.pmu = load float, ptr %i.pmq, align 4, !tbaa !12, !noalias !549
  %i.pmv = insertelement <4 x float> poison, float %i.pms, i64 0
  %i.pmw = insertelement <4 x float> %i.pmv, float %i.pmr, i64 1
  %i.pmx = insertelement <4 x float> %i.pmw, float %i.pmt, i64 2
  %i.pmy = insertelement <4 x float> %i.pmx, float %i.pmu, i64 3
  %i.pmz = insertelement <4 x float> poison, float %i.plx, i64 0
  %i.pna = shufflevector <4 x float> %i.pmz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pnb = fsub reassoc nsz arcp contract afn <4 x float> %i.pmy, %i.pna
  %i.pnc = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pnb)
  %i.pnd = fadd reassoc nsz arcp contract afn <4 x float> %i.pmm, %i.pnc
  %i.pne = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.pnd ; 2 uses
  %i.pnf = getelementptr inbounds i8, ptr %i.plu, i64 -4
  %i.png = load float, ptr %i.pnf, align 4, !tbaa !12, !noalias !549
  %i.pnh = fsub reassoc nsz arcp contract afn float %i.pmb, %i.png
  %i.pni = getelementptr inbounds nuw i8, ptr %i.plu, i64 4
  %i.pnj = load float, ptr %i.pni, align 4, !tbaa !12, !noalias !549
  %i.pnk = fsub reassoc nsz arcp contract afn float %i.plz, %i.pnj
  %i.pnl = getelementptr inbounds i8, ptr %i.plu, i64 -544
  %i.pnm = load float, ptr %i.pnl, align 4, !tbaa !12, !noalias !549
  %i.pnn = fsub reassoc nsz arcp contract afn float %i.pmg, %i.pnm
  %i.pno = getelementptr inbounds nuw i8, ptr %i.plu, i64 544
  %i.pnp = load float, ptr %i.pno, align 4, !tbaa !12, !noalias !549
  %i.pnq = fsub reassoc nsz arcp contract afn float %i.pme, %i.pnp
  %i.pnr = insertelement <4 x float> poison, float %i.pnk, i64 0
  %i.pns = insertelement <4 x float> %i.pnr, float %i.pnh, i64 1
  %i.pnt = insertelement <4 x float> %i.pns, float %i.pnn, i64 2
  %i.pnu = insertelement <4 x float> %i.pnt, float %i.pnq, i64 3
  %i.pnv = fmul reassoc nsz arcp contract afn <4 x float> %i.pnu, %i.pne
  %i.pnw = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.pnv)
  %i.pnx = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.pne)
  %i.pny = fdiv reassoc nsz arcp contract afn float %i.pnw, %i.pnx
  %i.pnz = fsub reassoc nsz arcp contract afn float %i.plw, %i.pny
  store float %i.pnz, ptr %i.plu, align 4, !tbaa !12, !noalias !549
  %indvars.iv.next1302.i = add nuw nsw i64 %indvars.iv1301.i, 2 ; 2 uses
  %i.poa = icmp slt i64 %indvars.iv.next1302.i, %i.ooj
  br i1 %i.poa, label %scalar.ph3755, label %._crit_edge1162.i, !llvm.loop !387

._crit_edge1183.split.i:                          ; preds = %._crit_edge1176.i, %.lr.ph1182.i, %._crit_edge1168.i
  %i.pob = add nuw nsw i32 %.08871185.i, 1
  %indvars.iv.next1213.i = add i32 %indvars.iv1212.i, 112
  %exitcond1316.not.i = icmp eq i32 %.08871185.i, %smax.i554
  %indvars.iv.next1119 = add nuw i32 %indvars.iv1118, 112
  %indvars.iv.next1122 = add i32 %indvars.iv1121, -112
  br i1 %exitcond1316.not.i, label %._crit_edge1187.i, label %bb.or

.lr.ph1175.i:                                     ; preds = %.lr.ph1175.i.preheader, %._crit_edge1176.i
  %indvars.iv1311.i = phi i64 [ %indvars.iv.next1312.i, %._crit_edge1176.i ], [ %i.lws, %.lr.ph1175.i.preheader ] ; 2 uses
  %indvars.iv1307.i = phi i32 [ %indvars.iv.next1308.i, %._crit_edge1176.i ], [ %narrow.i, %.lr.ph1175.i.preheader ] ; 2 uses
  %i.poc = trunc i64 %indvars.iv1311.i to i32
  %i.pod = mul i32 %i.bo, %i.poc
  %i.poe = add i32 %i.pod, %i.ora
  %i.pof = shl nsw i32 %i.poe, 2
  %i.pog = zext nneg i32 %i.pof to i64
  %i.poh = getelementptr inbounds nuw [4 x i8], ptr %i.anw, i64 %i.pog ; 6 uses
  %i.poi = mul i32 %indvars.iv1307.i, 136
  %i.poj = add i32 %.reass1178.i.a, %i.poi
  %i.pok = sext i32 %i.poj to i64                 ; 3 uses
  %i.pol = getelementptr inbounds [4 x i8], ptr %i.lus, i64 %i.pok ; 6 uses
  %i.pom = getelementptr inbounds [4 x i8], ptr %i.luu, i64 %i.pok ; 6 uses
  %i.pon = getelementptr inbounds [4 x i8], ptr %i.luv, i64 %i.pok ; 6 uses
  br i1 %i.ore, label %_calc_gamma.exit979.us.i.preheader, label %.lr.ph1175.split.i.preheader

.lr.ph1175.split.i.preheader:                     ; preds = %.lr.ph1175.i
  br i1 %min.iters.check3696, label %.lr.ph1175.split.i.preheader4606, label %vector.ph3697

vector.ph3697:                                    ; preds = %.lr.ph1175.split.i.preheader
  %i.poo = getelementptr i8, ptr %i.pon, i64 %i.orm
  %i.pop = getelementptr i8, ptr %i.pom, i64 %i.orm
  %i.poq = getelementptr i8, ptr %i.pol, i64 %i.orm
  %i.por = getelementptr i8, ptr %i.poh, i64 %i.orn
  br label %vector.body3701

vector.body3701:                                  ; preds = %vector.body3701, %vector.ph3697
  %index3702 = phi i64 [ 0, %vector.ph3697 ], [ %index.next3729, %vector.body3701 ] ; 3 uses
  %i.pos = shl i64 %index3702, 2                  ; 3 uses
  %next.gep3703 = getelementptr i8, ptr %i.pon, i64 %i.pos
  %next.gep3704 = getelementptr i8, ptr %i.pom, i64 %i.pos
  %next.gep3705 = getelementptr i8, ptr %i.pol, i64 %i.pos
  %i.pot = shl i64 %index3702, 4
  %next.gep3706 = getelementptr i8, ptr %i.poh, i64 %i.pot
  %wide.load3707 = load <8 x float>, ptr %next.gep3705, align 4, !tbaa !12, !noalias !549
  %i.pou = fmul reassoc nsz arcp contract afn <8 x float> %wide.load3707, splat (float 6.553500e+04) ; 4 uses
  %i.pov = fcmp reassoc nsz arcp contract afn uge <8 x float> %i.pou, zeroinitializer ; 2 uses
  %i.pow = fcmp reassoc nsz arcp contract afn ule <8 x float> %i.pou, splat (float f0x477FFEFD)
  %i.pox = and <8 x i1> %i.pov, %i.pow            ; 3 uses
  %i.poy = fptosi <8 x float> %i.pou to <8 x i32> ; 2 uses
  %i.poz = sitofp reassoc nsz arcp contract afn <8 x i32> %i.poy to <8 x float>
  %i.ppa = fsub reassoc nsz arcp contract afn <8 x float> %i.pou, %i.poz
  %i.ppb = zext nneg <8 x i32> %i.poy to <8 x i64>
  %wide.gep3708 = getelementptr inbounds nuw [4 x i8], ptr %i.ord, <8 x i64> %i.ppb ; 2 uses
  %wide.masked.gather3709 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3708, <8 x i1> %i.pox, <8 x float> poison), !tbaa !12, !noalias !549 ; 2 uses
  %wide.gep3710 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep3708, i64 4
  %wide.masked.gather3711 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3710, <8 x i1> %i.pox, <8 x float> poison), !tbaa !12, !noalias !549
  %i.ppc = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather3711, %wide.masked.gather3709
  %i.ppd = fmul reassoc nsz arcp contract afn <8 x float> %i.ppc, %i.ppa
  %i.ppe = fadd reassoc nsz arcp contract afn <8 x float> %i.ppd, %wide.masked.gather3709
  %predphi3712 = select <8 x i1> %i.pox, <8 x float> %i.ppe, <8 x float> splat (float 1.000000e+00)
  %predphi3713 = select <8 x i1> %i.pov, <8 x float> %predphi3712, <8 x float> zeroinitializer
  %i.ppf = fmul reassoc nsz arcp contract afn <8 x float> %predphi3713, %broadcast.splat3700
  %wide.load3714 = load <8 x float>, ptr %next.gep3704, align 4, !tbaa !12, !noalias !549
  %i.ppg = fmul reassoc nsz arcp contract afn <8 x float> %wide.load3714, splat (float 6.553500e+04) ; 4 uses
  %i.pph = fcmp reassoc nsz arcp contract afn uge <8 x float> %i.ppg, zeroinitializer ; 2 uses
  %i.ppi = fcmp reassoc nsz arcp contract afn ule <8 x float> %i.ppg, splat (float f0x477FFEFD)
  %i.ppj = and <8 x i1> %i.pph, %i.ppi            ; 3 uses
  %i.ppk = fptosi <8 x float> %i.ppg to <8 x i32> ; 2 uses
  %i.ppl = sitofp reassoc nsz arcp contract afn <8 x i32> %i.ppk to <8 x float>
  %i.ppm = fsub reassoc nsz arcp contract afn <8 x float> %i.ppg, %i.ppl
  %i.ppn = zext nneg <8 x i32> %i.ppk to <8 x i64>
  %wide.gep3715 = getelementptr inbounds nuw [4 x i8], ptr %i.ord, <8 x i64> %i.ppn ; 2 uses
  %wide.masked.gather3716 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3715, <8 x i1> %i.ppj, <8 x float> poison), !tbaa !12, !noalias !549 ; 2 uses
  %wide.gep3717 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep3715, i64 4
  %wide.masked.gather3718 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3717, <8 x i1> %i.ppj, <8 x float> poison), !tbaa !12, !noalias !549
  %i.ppo = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather3718, %wide.masked.gather3716
  %i.ppp = fmul reassoc nsz arcp contract afn <8 x float> %i.ppo, %i.ppm
  %i.ppq = fadd reassoc nsz arcp contract afn <8 x float> %i.ppp, %wide.masked.gather3716
  %predphi3719 = select <8 x i1> %i.ppj, <8 x float> %i.ppq, <8 x float> splat (float 1.000000e+00)
  %predphi3720 = select <8 x i1> %i.pph, <8 x float> %predphi3719, <8 x float> zeroinitializer
  %i.ppr = fmul reassoc nsz arcp contract afn <8 x float> %predphi3720, %broadcast.splat3700
  %wide.load3721 = load <8 x float>, ptr %next.gep3703, align 4, !tbaa !12, !noalias !549
  %i.pps = fmul reassoc nsz arcp contract afn <8 x float> %wide.load3721, splat (float 6.553500e+04) ; 4 uses
  %i.ppt = fcmp reassoc nsz arcp contract afn uge <8 x float> %i.pps, zeroinitializer ; 2 uses
  %i.ppu = fcmp reassoc nsz arcp contract afn ule <8 x float> %i.pps, splat (float f0x477FFEFD)
  %i.ppv = and <8 x i1> %i.ppt, %i.ppu            ; 3 uses
  %i.ppw = fptosi <8 x float> %i.pps to <8 x i32> ; 2 uses
  %i.ppx = sitofp reassoc nsz arcp contract afn <8 x i32> %i.ppw to <8 x float>
  %i.ppy = fsub reassoc nsz arcp contract afn <8 x float> %i.pps, %i.ppx
  %i.ppz = zext nneg <8 x i32> %i.ppw to <8 x i64>
  %wide.gep3722 = getelementptr inbounds nuw [4 x i8], ptr %i.ord, <8 x i64> %i.ppz ; 2 uses
  %wide.masked.gather3723 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3722, <8 x i1> %i.ppv, <8 x float> poison), !tbaa !12, !noalias !549 ; 2 uses
  %wide.gep3724 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep3722, i64 4
  %wide.masked.gather3725 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3724, <8 x i1> %i.ppv, <8 x float> poison), !tbaa !12, !noalias !549
  %i.pqa = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather3725, %wide.masked.gather3723
  %i.pqb = fmul reassoc nsz arcp contract afn <8 x float> %i.pqa, %i.ppy
  %i.pqc = fadd reassoc nsz arcp contract afn <8 x float> %i.pqb, %wide.masked.gather3723
  %predphi3726 = select nsz <8 x i1> %i.ppv, <8 x float> %i.pqc, <8 x float> splat (float 1.000000e+00)
  %predphi3727 = select nsz <8 x i1> %i.ppt, <8 x float> %predphi3726, <8 x float> zeroinitializer
  %i.pqd = fmul reassoc nsz arcp contract afn <8 x float> %predphi3727, %broadcast.splat3700
  %i.pqe = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.pqd, <8 x float> zeroinitializer)
  %i.pqf = shufflevector <8 x float> %i.ppf, <8 x float> %i.ppr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.pqg = call reassoc nsz arcp contract afn <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.pqf, <16 x float> zeroinitializer)
  %i.pqh = shufflevector <8 x float> %i.pqe, <8 x float> zeroinitializer, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec3728 = shufflevector <16 x float> %i.pqg, <16 x float> %i.pqh, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec3728, ptr %next.gep3706, align 4, !tbaa !12, !alias.scope !549, !noalias !550
  %index.next3729 = add nuw i64 %index3702, 8     ; 2 uses
  %i.pqi = icmp eq i64 %index.next3729, %n.vec3698
  br i1 %i.pqi, label %middle.block3730, label %vector.body3701, !llvm.loop !388

middle.block3730:                                 ; preds = %vector.body3701
  br i1 %cmp.n3731, label %._crit_edge1176.i, label %.lr.ph1175.split.i.preheader4606

.lr.ph1175.split.i.preheader4606:                 ; preds = %.lr.ph1175.split.i.preheader, %middle.block3730
  %.01173.i.ph = phi i32 [ %i.ora, %.lr.ph1175.split.i.preheader ], [ %i.orl, %middle.block3730 ]
  %.08731172.i.ph = phi ptr [ %i.pon, %.lr.ph1175.split.i.preheader ], [ %i.poo, %middle.block3730 ]
  %.08741171.i.ph = phi ptr [ %i.pom, %.lr.ph1175.split.i.preheader ], [ %i.pop, %middle.block3730 ]
  %.08751170.i.ph = phi ptr [ %i.pol, %.lr.ph1175.split.i.preheader ], [ %i.poq, %middle.block3730 ]
  %.08761169.i.ph = phi ptr [ %i.poh, %.lr.ph1175.split.i.preheader ], [ %i.por, %middle.block3730 ]
  br label %.lr.ph1175.split.i

_calc_gamma.exit979.us.i.preheader:               ; preds = %.lr.ph1175.i
  br i1 %min.iters.check3673, label %_calc_gamma.exit979.us.i.preheader4605, label %vector.ph3674

vector.ph3674:                                    ; preds = %_calc_gamma.exit979.us.i.preheader
  %i.pqj = getelementptr i8, ptr %i.pon, i64 %i.orq
  %i.pqk = getelementptr i8, ptr %i.pom, i64 %i.orq
  %i.pql = getelementptr i8, ptr %i.pol, i64 %i.orq
  %i.pqm = getelementptr i8, ptr %i.poh, i64 %i.orr
  br label %vector.body3678

vector.body3678:                                  ; preds = %vector.body3678, %vector.ph3674
  %index3679 = phi i64 [ 0, %vector.ph3674 ], [ %index.next3687, %vector.body3678 ] ; 3 uses
  %i.pqn = shl i64 %index3679, 2                  ; 3 uses
  %next.gep = getelementptr i8, ptr %i.pon, i64 %i.pqn
  %next.gep3680 = getelementptr i8, ptr %i.pom, i64 %i.pqn
  %next.gep3681 = getelementptr i8, ptr %i.pol, i64 %i.pqn
  %i.pqo = shl i64 %index3679, 4
  %next.gep3682 = getelementptr i8, ptr %i.poh, i64 %i.pqo
  %wide.load3683 = load <8 x float>, ptr %next.gep3681, align 4, !tbaa !12, !noalias !549
  %wide.load3684 = load <8 x float>, ptr %next.gep3680, align 4, !tbaa !12, !noalias !549
  %wide.load3685 = load <8 x float>, ptr %next.gep, align 4, !tbaa !12, !noalias !549
  %i.pqp = fmul reassoc nsz arcp contract afn <8 x float> %wide.load3685, %broadcast.splat3677
  %i.pqq = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.pqp, <8 x float> zeroinitializer)
  %i.pqr = shufflevector <8 x float> %wide.load3683, <8 x float> %wide.load3684, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.pqs = fmul reassoc nsz arcp contract afn <16 x float> %i.pqr, %i.avy
  %i.pqt = call reassoc nsz arcp contract afn <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.pqs, <16 x float> zeroinitializer)
  %i.pqu = shufflevector <8 x float> %i.pqq, <8 x float> zeroinitializer, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec3686 = shufflevector <16 x float> %i.pqt, <16 x float> %i.pqu, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec3686, ptr %next.gep3682, align 4, !tbaa !12, !alias.scope !549, !noalias !550
  %index.next3687 = add nuw i64 %index3679, 8     ; 2 uses
  %i.pqv = icmp eq i64 %index.next3687, %n.vec3675
  br i1 %i.pqv, label %middle.block3688, label %vector.body3678, !llvm.loop !389

middle.block3688:                                 ; preds = %vector.body3678
  br i1 %cmp.n3689, label %._crit_edge1176.i, label %_calc_gamma.exit979.us.i.preheader4605

_calc_gamma.exit979.us.i.preheader4605:           ; preds = %_calc_gamma.exit979.us.i.preheader, %middle.block3688
  %.01173.us.i.ph = phi i32 [ %i.ora, %_calc_gamma.exit979.us.i.preheader ], [ %i.orp, %middle.block3688 ]
  %.08731172.us.i.ph = phi ptr [ %i.pon, %_calc_gamma.exit979.us.i.preheader ], [ %i.pqj, %middle.block3688 ]
  %.08741171.us.i.ph = phi ptr [ %i.pom, %_calc_gamma.exit979.us.i.preheader ], [ %i.pqk, %middle.block3688 ]
  %.08751170.us.i.ph = phi ptr [ %i.pol, %_calc_gamma.exit979.us.i.preheader ], [ %i.pql, %middle.block3688 ]
  %.08761169.us.i.ph = phi ptr [ %i.poh, %_calc_gamma.exit979.us.i.preheader ], [ %i.pqm, %middle.block3688 ]
  br label %_calc_gamma.exit979.us.i

_calc_gamma.exit979.us.i:                         ; preds = %_calc_gamma.exit979.us.i.preheader4605, %_calc_gamma.exit979.us.i
  %.01173.us.i = phi i32 [ %i.prh, %_calc_gamma.exit979.us.i ], [ %.01173.us.i.ph, %_calc_gamma.exit979.us.i.preheader4605 ]
  %.08731172.us.i = phi ptr [ %i.prl, %_calc_gamma.exit979.us.i ], [ %.08731172.us.i.ph, %_calc_gamma.exit979.us.i.preheader4605 ] ; 2 uses
  %.08741171.us.i = phi ptr [ %i.prk, %_calc_gamma.exit979.us.i ], [ %.08741171.us.i.ph, %_calc_gamma.exit979.us.i.preheader4605 ] ; 2 uses
  %.08751170.us.i = phi ptr [ %i.prj, %_calc_gamma.exit979.us.i ], [ %.08751170.us.i.ph, %_calc_gamma.exit979.us.i.preheader4605 ] ; 2 uses
  %.08761169.us.i = phi ptr [ %i.pri, %_calc_gamma.exit979.us.i ], [ %.08761169.us.i.ph, %_calc_gamma.exit979.us.i.preheader4605 ] ; 4 uses
  %i.pqw = load float, ptr %.08751170.us.i, align 4, !tbaa !12, !noalias !549
  %i.pqx = load float, ptr %.08741171.us.i, align 4, !tbaa !12, !noalias !549
  %i.pqy = insertelement <2 x float> poison, float %i.pqw, i64 0
  %i.pqz = insertelement <2 x float> %i.pqy, float %i.pqx, i64 1
  %i.pra = fmul reassoc nsz arcp contract afn <2 x float> %i.pqz, %i.awa
  %i.prb = call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.pra, <2 x float> zeroinitializer)
  store <2 x float> %i.prb, ptr %.08761169.us.i, align 4, !tbaa !12, !alias.scope !549, !noalias !550
  %i.prc = load float, ptr %.08731172.us.i, align 4, !tbaa !12, !noalias !549
  %i.prd = fmul reassoc nsz arcp contract afn float %i.prc, %i.eh
  %i.pre = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.prd, float 0.000000e+00)
  %i.prf = getelementptr inbounds nuw i8, ptr %.08761169.us.i, i64 8
  store float %i.pre, ptr %i.prf, align 4, !tbaa !12, !alias.scope !549, !noalias !550
  %i.prg = getelementptr inbounds nuw i8, ptr %.08761169.us.i, i64 12
  store float 0.000000e+00, ptr %i.prg, align 4, !tbaa !12, !alias.scope !549, !noalias !550
  %i.prh = add nuw nsw i32 %.01173.us.i, 1        ; 2 uses
  %i.pri = getelementptr inbounds nuw i8, ptr %.08761169.us.i, i64 16
  %i.prj = getelementptr inbounds nuw i8, ptr %.08751170.us.i, i64 4
  %i.prk = getelementptr inbounds nuw i8, ptr %.08741171.us.i, i64 4
  %i.prl = getelementptr inbounds nuw i8, ptr %.08731172.us.i, i64 4
  %i.prm = icmp slt i32 %i.prh, %i.orb
  br i1 %i.prm, label %_calc_gamma.exit979.us.i, label %._crit_edge1176.i, !llvm.loop !390

._crit_edge1176.i:                                ; preds = %_calc_gamma.exit981.i, %_calc_gamma.exit979.us.i, %middle.block3730, %middle.block3688
  %indvars.iv.next1312.i = add nuw nsw i64 %indvars.iv1311.i, 1 ; 2 uses
  %indvars.iv.next1308.i = add i32 %indvars.iv1307.i, 1
  %i.prn = trunc nuw i64 %indvars.iv.next1312.i to i32
  %i.pro = icmp sgt i32 %i.lwn, %i.prn
  br i1 %i.pro, label %.lr.ph1175.i, label %._crit_edge1183.split.i

.lr.ph1175.split.i:                               ; preds = %.lr.ph1175.split.i.preheader4606, %_calc_gamma.exit981.i
  %.01173.i = phi i32 [ %i.ptr, %_calc_gamma.exit981.i ], [ %.01173.i.ph, %.lr.ph1175.split.i.preheader4606 ]
  %.08731172.i = phi ptr [ %i.ptv, %_calc_gamma.exit981.i ], [ %.08731172.i.ph, %.lr.ph1175.split.i.preheader4606 ] ; 2 uses
  %.08741171.i = phi ptr [ %i.ptu, %_calc_gamma.exit981.i ], [ %.08741171.i.ph, %.lr.ph1175.split.i.preheader4606 ] ; 2 uses
  %.08751170.i = phi ptr [ %i.ptt, %_calc_gamma.exit981.i ], [ %.08751170.i.ph, %.lr.ph1175.split.i.preheader4606 ] ; 2 uses
  %.08761169.i = phi ptr [ %i.pts, %_calc_gamma.exit981.i ], [ %.08761169.i.ph, %.lr.ph1175.split.i.preheader4606 ] ; 5 uses
  %i.prp = load float, ptr %.08751170.i, align 4, !tbaa !12, !noalias !549
  %i.prq = fmul reassoc nsz arcp contract afn float %i.prp, 6.553500e+04 ; 4 uses
  %i.prr = fcmp reassoc nsz arcp contract afn olt float %i.prq, 0.000000e+00
  br i1 %i.prr, label %bb.qb, label %bb.pz

bb.pz:                                            ; preds = %.lr.ph1175.split.i
  %i.prs = fcmp reassoc nsz arcp contract afn ogt float %i.prq, f0x477FFEFD
  br i1 %i.prs, label %bb.qb, label %bb.qa

bb.qa:                                            ; preds = %bb.pz
  %i.prt = fptosi float %i.prq to i32             ; 2 uses
  %i.pru = sitofp reassoc nsz arcp contract afn i32 %i.prt to float
  %i.prv = fsub reassoc nsz arcp contract afn float %i.prq, %i.pru
  %i.prw = zext nneg i32 %i.prt to i64
  %i.prx = getelementptr inbounds nuw [4 x i8], ptr %i.ord, i64 %i.prw ; 2 uses
  %i.pry = load float, ptr %i.prx, align 4, !tbaa !12, !noalias !549 ; 2 uses
  %i.prz = getelementptr inbounds nuw i8, ptr %i.prx, i64 4
  %i.psa = load float, ptr %i.prz, align 4, !tbaa !12, !noalias !549
  %i.psb = fsub reassoc nsz arcp contract afn float %i.psa, %i.pry
  %i.psc = fmul reassoc nsz arcp contract afn float %i.psb, %i.prv
  %i.psd = fadd reassoc nsz arcp contract afn float %i.psc, %i.pry
  br label %bb.qb

bb.qb:                                            ; preds = %bb.qa, %bb.pz, %.lr.ph1175.split.i
  %.1.i976.ph.i = phi float [ 1.000000e+00, %bb.pz ], [ 0.000000e+00, %.lr.ph1175.split.i ], [ %i.psd, %bb.qa ]
  %i.pse = fmul reassoc nsz arcp contract afn float %.1.i976.ph.i, %i.eh
  %i.psf = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.pse, float 0.000000e+00)
  store float %i.psf, ptr %.08761169.i, align 4, !tbaa !12, !alias.scope !549, !noalias !550
  %i.psg = load float, ptr %.08741171.i, align 4, !tbaa !12, !noalias !549
  %i.psh = fmul reassoc nsz arcp contract afn float %i.psg, 6.553500e+04 ; 4 uses
  %i.psi = fcmp reassoc nsz arcp contract afn olt float %i.psh, 0.000000e+00
  br i1 %i.psi, label %bb.qe, label %bb.qc

bb.qc:                                            ; preds = %bb.qb
  %i.psj = fcmp reassoc nsz arcp contract afn ogt float %i.psh, f0x477FFEFD
  br i1 %i.psj, label %bb.qe, label %bb.qd

bb.qd:                                            ; preds = %bb.qc
  %i.psk = fptosi float %i.psh to i32             ; 2 uses
  %i.psl = sitofp reassoc nsz arcp contract afn i32 %i.psk to float
  %i.psm = fsub reassoc nsz arcp contract afn float %i.psh, %i.psl
  %i.psn = zext nneg i32 %i.psk to i64
  %i.pso = getelementptr inbounds nuw [4 x i8], ptr %i.ord, i64 %i.psn ; 2 uses
  %i.psp = load float, ptr %i.pso, align 4, !tbaa !12, !noalias !549 ; 2 uses
  %i.psq = getelementptr inbounds nuw i8, ptr %i.pso, i64 4
  %i.psr = load float, ptr %i.psq, align 4, !tbaa !12, !noalias !549
  %i.pss = fsub reassoc nsz arcp contract afn float %i.psr, %i.psp
  %i.pst = fmul reassoc nsz arcp contract afn float %i.pss, %i.psm
  %i.psu = fadd reassoc nsz arcp contract afn float %i.pst, %i.psp
  br label %bb.qe

bb.qe:                                            ; preds = %bb.qd, %bb.qc, %bb.qb
  %.1.i978.ph.i = phi float [ 1.000000e+00, %bb.qc ], [ 0.000000e+00, %bb.qb ], [ %i.psu, %bb.qd ]
  %i.psv = fmul reassoc nsz arcp contract afn float %.1.i978.ph.i, %i.eh
  %i.psw = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.psv, float 0.000000e+00)
  %i.psx = getelementptr inbounds nuw i8, ptr %.08761169.i, i64 4
  store float %i.psw, ptr %i.psx, align 4, !tbaa !12, !alias.scope !549, !noalias !550
  %i.psy = load float, ptr %.08731172.i, align 4, !tbaa !12, !noalias !549
  %i.psz = fmul reassoc nsz arcp contract afn float %i.psy, 6.553500e+04 ; 4 uses
  %i.pta = fcmp reassoc nsz arcp contract afn olt float %i.psz, 0.000000e+00
  br i1 %i.pta, label %_calc_gamma.exit981.i, label %bb.qf

bb.qf:                                            ; preds = %bb.qe
  %i.ptb = fcmp reassoc nsz arcp contract afn ogt float %i.psz, f0x477FFEFD
  br i1 %i.ptb, label %_calc_gamma.exit981.i, label %bb.qg

bb.qg:                                            ; preds = %bb.qf
  %i.ptc = fptosi float %i.psz to i32             ; 2 uses
  %i.ptd = sitofp reassoc nsz arcp contract afn i32 %i.ptc to float
  %i.pte = fsub reassoc nsz arcp contract afn float %i.psz, %i.ptd
  %i.ptf = zext nneg i32 %i.ptc to i64
  %i.ptg = getelementptr inbounds nuw [4 x i8], ptr %i.ord, i64 %i.ptf ; 2 uses
  %i.pth = load float, ptr %i.ptg, align 4, !tbaa !12, !noalias !549 ; 2 uses
  %i.pti = getelementptr inbounds nuw i8, ptr %i.ptg, i64 4
  %i.ptj = load float, ptr %i.pti, align 4, !tbaa !12, !noalias !549
  %i.ptk = fsub reassoc nsz arcp contract afn float %i.ptj, %i.pth
  %i.ptl = fmul reassoc nsz arcp contract afn float %i.ptk, %i.pte
  %i.ptm = fadd reassoc nsz arcp contract afn float %i.ptl, %i.pth
  br label %_calc_gamma.exit981.i

_calc_gamma.exit981.i:                            ; preds = %bb.qg, %bb.qf, %bb.qe
  %.1.i980.i = phi nsz float [ 1.000000e+00, %bb.qf ], [ %i.ptm, %bb.qg ], [ 0.000000e+00, %bb.qe ]
  %i.ptn = fmul reassoc nsz arcp contract afn float %.1.i980.i, %i.eh
  %i.pto = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ptn, float 0.000000e+00)
  %i.ptp = getelementptr inbounds nuw i8, ptr %.08761169.i, i64 8
  store float %i.pto, ptr %i.ptp, align 4, !tbaa !12, !alias.scope !549, !noalias !550
  %i.ptq = getelementptr inbounds nuw i8, ptr %.08761169.i, i64 12
  store float 0.000000e+00, ptr %i.ptq, align 4, !tbaa !12, !alias.scope !549, !noalias !550
  %i.ptr = add nuw nsw i32 %.01173.i, 1           ; 2 uses
  %i.pts = getelementptr inbounds nuw i8, ptr %.08761169.i, i64 16
  %i.ptt = getelementptr inbounds nuw i8, ptr %.08751170.i, i64 4
  %i.ptu = getelementptr inbounds nuw i8, ptr %.08741171.i, i64 4
  %i.ptv = getelementptr inbounds nuw i8, ptr %.08731172.i, i64 4
  %i.ptw = icmp slt i32 %i.ptr, %i.orb
  br i1 %i.ptw, label %.lr.ph1175.split.i, label %._crit_edge1176.i, !llvm.loop !391

bb.qh:                                            ; preds = %bb.nx
  %i.ptx = load float, ptr %i.aox, align 8, !tbaa !141
  tail call fastcc void @demosaic_ppg(ptr noundef %i.anw, ptr noundef %i.axo, i32 noundef %i.bo, i32 noundef %i.axe, i32 noundef %.fr1070, float noundef %i.ptx, i32 noundef 100000)
  br label %demosaic_box3.exit

bb.qi:                                            ; preds = %bb.nx
  tail call void @amaze_demosaic(ptr noundef %i.axo, ptr noundef nonnull %i.anw, i32 noundef %i.bo, i32 noundef %i.axe, i32 noundef %.fr1070, float noundef %i.ek) #27
  br label %demosaic_box3.exit

demosaic_box3.exit:                               ; preds = %._crit_edge.split.i, %._crit_edge.split.us.us.i, %._crit_edge.i478, %._crit_edge.i, %bb.hy, %bb.hx, %bb.hh, %._crit_edge1190.split.i, %bb.oh, %._crit_edge942.split.i, %bb.ny, %xtrans_fdc_interpolate.exit, %bb.nt, %xtrans_markesteijn_interpolate.exit, %bb.hw, %bb.nw, %bb.nv, %bb.qi, %bb.qh
  br i1 %i.dv, label %bb.qj, label %_capture_sharpen.exit

bb.qj:                                            ; preds = %demosaic_box3.exit
  %i.pty = load i32, ptr %4, align 4, !tbaa !36
  %i.ptz = load i32, ptr %i.aqq, align 4, !tbaa !37
  %i.pua = add nsw i32 %i.ptz, %i.axc
  %.val452 = load ptr, ptr %i.r, align 8, !tbaa !446 ; 7 uses
  %.val453 = load ptr, ptr %i.y, align 16, !tbaa !56 ; 6 uses
  %i.pub = sext i32 %i.axe to i64                 ; 11 uses
  %i.puc = mul nsw i64 %i.pub, %i.aoc             ; 17 uses
  %i.pud = load ptr, ptr %i.aqr, align 16, !tbaa !583
end_hunk_4
