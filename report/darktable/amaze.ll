Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/amaze?download=true
inline.NumInlined: 126
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 42
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define hidden void @amaze_demosaic(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = fmul reassoc nsz arcp contract afn float %5, 8.000000e-01 ; 4 uses
  %i.b = and i32 %4, 3                            ; 2 uses
  %i.c = icmp eq i32 %i.b, 1
  %i.d = and i32 %4, 12
  %.sink = select i1 %i.c, i32 %i.d, i32 %i.b
  %.not4174 = icmp eq i32 %.sink, 0
  %.3509 = select i1 %.not4174, i32 13, i32 12    ; 3 uses
  %i.e = tail call noalias dereferenceable_or_null(1448767) ptr @calloc(i64 noundef 1448767, i64 noundef 1) #8 ; 2 uses
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = add i64 %i.f, 63
  %i.h = and i64 %i.g, -64
  %i.i = inttoptr i64 %i.h to ptr                 ; 466 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 102528 ; 23 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 205056 ; 15 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, <2 x i64> <i64 205056, i64 307584>
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 307584 ; 15 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 410112 ; 14 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 512640 ; 12 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 615168 ; 27 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 717696 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 820224 ; 32 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 922880 ; 23 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 871552 ; 10 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 974208 ; 23 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 1076736 ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 1179264 ; 14 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 1230592 ; 14 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 1281920 ; 373 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 461440 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 1384448 ; 12 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 1397376 ; 4 uses
  %i.ac = icmp sgt i32 %3, -16
  br i1 %i.ac, label %.preheader3944.lr.ph, label %._crit_edge4161.split

.preheader3944.lr.ph:                             ; preds = %bb.a
  %i.ad = icmp sgt i32 %2, -16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 1384688
  %i.af = add i32 %3, 16                          ; 3 uses
  %i.ag = add i32 %2, 16                          ; 2 uses
  %i.ah = add nsw i32 %3, -2                      ; 3 uses
  %i.ai = add nsw i32 %2, -2                      ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 820544
  %i.ak = getelementptr inbounds nuw i8, ptr %i.i, i64 666368 ; 17 uses
  br i1 %i.ad, label %.preheader3944.preheader, label %._crit_edge4161.split

.preheader3944.preheader:                         ; preds = %.preheader3944.lr.ph
  %i.al = sext i32 %2 to i64                      ; 10 uses
  %i.am = mul nuw nsw i32 %.3509, 80              ; 2 uses
  %i.an = or disjoint i32 %i.am, 6
  %i.ao = sext i32 %3 to i64                      ; 6 uses
  %i.ap = mul nsw i32 %i.ah, %2
  %i.aq = add nsw i32 %3, -3
  %i.ar = mul nsw i32 %i.aq, %2
  %i.as = add nsw i32 %3, -4
  %i.at = mul nsw i32 %i.as, %2
  %i.au = add nsw i32 %3, -5
  %i.av = mul nsw i32 %i.au, %2
  %i.aw = add nsw i32 %3, -6
  %i.ax = mul nsw i32 %i.aw, %2
  %i.ay = add nsw i32 %3, -7
  %i.az = mul nsw i32 %i.ay, %2
  %i.ba = add nsw i32 %3, -8
  %i.bb = mul nsw i32 %i.ba, %2
  %i.bc = add nsw i32 %3, -9
  %i.bd = mul nsw i32 %i.bc, %2
  %i.be = add nsw i32 %3, -10
  %i.bf = mul nsw i32 %i.be, %2
  %i.bg = add nsw i32 %3, -11
  %i.bh = mul nsw i32 %i.bg, %2
  %i.bi = add nsw i32 %3, -12
  %i.bj = mul nsw i32 %i.bi, %2
  %i.bk = add nsw i32 %3, -13
  %i.bl = mul nsw i32 %i.bk, %2
  %i.bm = add nsw i32 %3, -14
  %i.bn = mul nsw i32 %i.bm, %2
  %i.bo = add nsw i32 %3, -15
  %i.bp = mul nsw i32 %i.bo, %2
  %i.bq = add nsw i32 %3, -16
  %i.br = mul nsw i32 %i.bq, %2
  %i.bs = add nsw i32 %3, -17
  %i.bt = mul nsw i32 %i.bs, %2
  %scevgep = getelementptr i8, ptr %1, i64 4
  %scevgep4828.a = getelementptr i8, ptr %1, i64 -264
  %scevgep4831 = getelementptr i8, ptr %i.i, i64 10304
  %scevgep4832 = getelementptr i8, ptr %i.i, i64 -640
  %scevgep4858.a = getelementptr i8, ptr %i.i, i64 4
  %scevgep4860.a = getelementptr i8, ptr %i.i, i64 615168
  %scevgep4862.a = getelementptr i8, ptr %i.i, i64 615172
  %scevgep4864.a = getelementptr i8, ptr %i.i, i64 102528
  %scevgep4866.a = getelementptr i8, ptr %i.i, i64 102532
  %scevgep4868.a = getelementptr i8, ptr %i.i, i64 922880
  %scevgep4870.a = getelementptr i8, ptr %i.i, i64 922884
  %scevgep4872.a = getelementptr i8, ptr %i.i, i64 1281280
  %scevgep4874.a = getelementptr i8, ptr %i.i, i64 1281284
  %scevgep4876 = getelementptr i8, ptr %i.i, i64 871576
  %scevgep4880.a = getelementptr i8, ptr %i.i, i64 871580
  %scevgep4882.a = getelementptr i8, ptr %i.i, i64 870936
  %scevgep4884.a = getelementptr i8, ptr %i.i, i64 870940
  %scevgep4886.a = getelementptr i8, ptr %i.i, i64 1282560
  %scevgep4888.a = getelementptr i8, ptr %i.i, i64 1282564
  %scevgep4890.a = getelementptr i8, ptr %i.i, i64 872216
  %scevgep4892.a = getelementptr i8, ptr %i.i, i64 872220
  %scevgep4894.a = getelementptr i8, ptr %i.i, i64 1281916
  %scevgep4896.a = getelementptr i8, ptr %i.i, i64 1281920
  %scevgep4898.a = getelementptr i8, ptr %i.i, i64 871572
  %scevgep4900.a = getelementptr i8, ptr %i.i, i64 871576
  %scevgep4902.a = getelementptr i8, ptr %i.i, i64 1281924
  %scevgep4904.a = getelementptr i8, ptr %i.i, i64 1281928
  %scevgep4906.a = getelementptr i8, ptr %i.i, i64 871580
  %scevgep4908.a = getelementptr i8, ptr %i.i, i64 871584
  %scevgep4910.a = getelementptr i8, ptr %i.i, i64 204416
  %scevgep4912.a = getelementptr i8, ptr %i.i, i64 204420
  %scevgep4914.a = getelementptr i8, ptr %i.i, i64 205696
  %scevgep4916.a = getelementptr i8, ptr %i.i, i64 205700
  %scevgep4918.a = getelementptr i8, ptr %i.i, i64 307580
  %scevgep4920.a = getelementptr i8, ptr %i.i, i64 307584
  %scevgep4922.a = getelementptr i8, ptr %i.i, i64 307588
  %scevgep4924.a = getelementptr i8, ptr %i.i, i64 307592
  %scevgep4926.a = getelementptr i8, ptr %i.i, i64 922904
  %scevgep4928.a = getelementptr i8, ptr %i.i, i64 922908
  %scevgep4930.a = getelementptr i8, ptr %i.i, i64 1281920
  %scevgep4932 = getelementptr i8, ptr %i.i, i64 1281924
  %scevgep6052.a = getelementptr i8, ptr %i.i, i64 9600
  %scevgep6055 = getelementptr i8, ptr %i.i, i64 1291520
  %scevgep6095.a = getelementptr i8, ptr %i.i, i64 8960
  %scevgep6098 = getelementptr i8, ptr %i.i, i64 1290880
  %scevgep6138.a = getelementptr i8, ptr %i.i, i64 8320
  %scevgep6141 = getelementptr i8, ptr %i.i, i64 1290240
  %scevgep6181.a = getelementptr i8, ptr %i.i, i64 7680
  %scevgep6184 = getelementptr i8, ptr %i.i, i64 1289600
  %scevgep6224.a = getelementptr i8, ptr %i.i, i64 7040
  %scevgep6227 = getelementptr i8, ptr %i.i, i64 1288960
  %scevgep6267.a = getelementptr i8, ptr %i.i, i64 6400
  %scevgep6270 = getelementptr i8, ptr %i.i, i64 1288320
  %scevgep6310.a = getelementptr i8, ptr %i.i, i64 5760
  %scevgep6313 = getelementptr i8, ptr %i.i, i64 1287680
  %scevgep6353.a = getelementptr i8, ptr %i.i, i64 5120
  %scevgep6356 = getelementptr i8, ptr %i.i, i64 1287040
  %scevgep6396.a = getelementptr i8, ptr %i.i, i64 4480
  %scevgep6399 = getelementptr i8, ptr %i.i, i64 1286400
  %scevgep6439.a = getelementptr i8, ptr %i.i, i64 3840
  %scevgep6442 = getelementptr i8, ptr %i.i, i64 1285760
  %scevgep6482.a = getelementptr i8, ptr %i.i, i64 3200
  %scevgep6485 = getelementptr i8, ptr %i.i, i64 1285120
  %scevgep6525.a = getelementptr i8, ptr %i.i, i64 2560
  %scevgep6528 = getelementptr i8, ptr %i.i, i64 1284480
  %scevgep6568.a = getelementptr i8, ptr %i.i, i64 1920
  %scevgep6571 = getelementptr i8, ptr %i.i, i64 1283840
  %scevgep6611.a = getelementptr i8, ptr %i.i, i64 1280
  %scevgep6614 = getelementptr i8, ptr %i.i, i64 1283200
  %scevgep6654.a = getelementptr i8, ptr %i.i, i64 640
  %scevgep6657 = getelementptr i8, ptr %i.i, i64 1282560
  %scevgep6699 = getelementptr i8, ptr %i.i, i64 1281920
  %scevgep6743.a = getelementptr i8, ptr %i.i, i64 1281280
  %scevgep6784.a = getelementptr i8, ptr %i.i, i64 9600
  %scevgep6786 = getelementptr i8, ptr %i.i, i64 1291520
  %scevgep6825.a = getelementptr i8, ptr %i.i, i64 8960
  %scevgep6827 = getelementptr i8, ptr %i.i, i64 1290880
  %scevgep6866.a = getelementptr i8, ptr %i.i, i64 8320
  %scevgep6868 = getelementptr i8, ptr %i.i, i64 1290240
  %scevgep6907.a = getelementptr i8, ptr %i.i, i64 7680
  %scevgep6909 = getelementptr i8, ptr %i.i, i64 1289600
  %scevgep6948.a = getelementptr i8, ptr %i.i, i64 7040
  %scevgep6950 = getelementptr i8, ptr %i.i, i64 1288960
  %scevgep6989.a = getelementptr i8, ptr %i.i, i64 6400
  %scevgep6991 = getelementptr i8, ptr %i.i, i64 1288320
  %scevgep7030.a = getelementptr i8, ptr %i.i, i64 5760
  %scevgep7032 = getelementptr i8, ptr %i.i, i64 1287680
  %scevgep7071.a = getelementptr i8, ptr %i.i, i64 5120
  %scevgep7073 = getelementptr i8, ptr %i.i, i64 1287040
  %scevgep7112.a = getelementptr i8, ptr %i.i, i64 4480
  %scevgep7114 = getelementptr i8, ptr %i.i, i64 1286400
  %scevgep7153.a = getelementptr i8, ptr %i.i, i64 3840
  %scevgep7155 = getelementptr i8, ptr %i.i, i64 1285760
  %scevgep7194.a = getelementptr i8, ptr %i.i, i64 3200
  %scevgep7196 = getelementptr i8, ptr %i.i, i64 1285120
  %scevgep7235.a = getelementptr i8, ptr %i.i, i64 2560
  %scevgep7237 = getelementptr i8, ptr %i.i, i64 1284480
  %scevgep7276.a = getelementptr i8, ptr %i.i, i64 1920
  %scevgep7278 = getelementptr i8, ptr %i.i, i64 1283840
  %scevgep7317.a = getelementptr i8, ptr %i.i, i64 1280
  %scevgep7319 = getelementptr i8, ptr %i.i, i64 1283200
  %scevgep7358.a = getelementptr i8, ptr %i.i, i64 640
  %scevgep7360 = getelementptr i8, ptr %i.i, i64 1282560
  %scevgep7400 = getelementptr i8, ptr %i.i, i64 1281920
  %broadcast.splatinsert5215.a = insertelement <8 x float> poison, float %i.a, i64 0
  %broadcast.splat5216.a = shufflevector <8 x float> %broadcast.splatinsert5215.a, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.bu = shufflevector <2 x ptr> %i.l, <2 x ptr> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bv = insertelement <8 x ptr> %i.bu, ptr %i.y, i64 5 ; 2 uses
  %i.bw = shufflevector <8 x ptr> %i.bv, <8 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 3, i32 3, i32 5, i32 5, i32 5>
  %i.bx = shufflevector <8 x ptr> %i.bv, <8 x ptr> poison, <4 x i32> <i32 5, i32 5, i32 5, i32 5> ; 2 uses
  %broadcast.splatinsert5076.a = insertelement <8 x float> poison, float %5, i64 0
  %broadcast.splat5077.a = shufflevector <8 x float> %broadcast.splatinsert5076.a, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %invariant.op7659 = sub i32 -7, %i.am
  %broadcast.splatinsert4840 = insertelement <8 x i64> poison, i64 %i.al, i64 0
  %broadcast.splat4841 = shufflevector <8 x i64> %broadcast.splatinsert4840, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %.preheader3944

.preheader3944:                                   ; preds = %.preheader3944.preheader, %._crit_edge4159
  %indvar4834 = phi i32 [ 0, %.preheader3944.preheader ], [ %indvar.next4835, %._crit_edge4159 ] ; 2 uses
  %indvars.iv4401 = phi i64 [ -16, %.preheader3944.preheader ], [ %indvars.iv.next4402, %._crit_edge4159 ] ; 26 uses
  %indvars.iv4290 = phi i32 [ 8, %.preheader3944.preheader ], [ %indvars.iv.next4291, %._crit_edge4159 ] ; 2 uses
  %indvars.iv4288 = phi i32 [ 144, %.preheader3944.preheader ], [ %indvars.iv.next4289, %._crit_edge4159 ] ; 3 uses
  %smin4833 = tail call i32 @llvm.smin.i32(i32 %indvars.iv4288, i32 %i.af)
  %i.by = shl i32 %indvar4834, 7
  %i.bz = sub i32 %smin4833, %i.by
  %i.ca = tail call i32 @llvm.smax.i32(i32 %i.bz, i32 17)
  %smax = zext nneg i32 %i.ca to i64
  %i.cb = mul nuw nsw i64 %smax, 640
  %smin4308 = tail call i32 @llvm.smin.i32(i32 %indvars.iv4288, i32 %i.af)
  %i.cc = add i32 %smin4308, %indvars.iv4290      ; 2 uses
  %i.cd = add nsw i64 %indvars.iv4401, 160        ; 2 uses
  %i.ce = trunc nsw i64 %i.cd to i32
  %i.cf = tail call i32 @llvm.smin.i32(i32 %i.ce, i32 %i.af)
  %i.cg = trunc i64 %indvars.iv4401 to i32        ; 4 uses
  %i.ch = sub nsw i32 %i.cf, %i.cg                ; 18 uses
  %i.ci = icmp sgt i64 %indvars.iv4401, -1        ; 3 uses
  %i.cj = select i1 %i.ci, i32 0, i32 16          ; 4 uses
  %i.ck = icmp sgt i64 %i.cd, %i.ao
  %i.cl = trunc i64 %indvars.iv4401 to i32
  %i.cm = sub i32 %3, %i.cl
  %i.cn = select i1 %i.ck, i32 %i.cm, i32 %i.ch   ; 6 uses
  %i.co = icmp slt i32 %i.cj, %i.cn               ; 3 uses
  %i.cp = icmp slt i32 %i.cn, %i.ch               ; 3 uses
  %.not4408 = xor i1 %i.co, true
  %.not3511 = xor i1 %i.cp, true
  %i.cq = add nsw i32 %i.ch, -2
  %i.cr = icmp sgt i32 %i.ch, 4
end_hunk_0
begin_hunk_1_@amaze_demosaic:bb.a
  br i1 %exitcond4246.not, label %.loopexit3931, label %.preheader3907, !llvm.loop !248

.loopexit3931:                                    ; preds = %.preheader3907, %.loopexit3933
  %or.cond3 = and i1 %i.cp, %i.if
  br i1 %or.cond3, label %.preheader3906, label %.loopexit3929

.preheader3906:                                   ; preds = %.loopexit3931, %.preheader3906
  %indvars.iv4251 = phi i64 [ %indvars.iv.next4252, %.preheader3906 ], [ 0, %.loopexit3931 ] ; 3 uses
  %i.eqe = trunc nuw nsw i64 %indvars.iv4251 to i32
  %i.eqf = sub i32 %i.ah, %i.eqe
  %i.eqg = mul nsw i32 %i.eqf, %2                 ; 16 uses
  %reass.sub = add i32 %i.eqg, 32
  %i.eqh = add nsw i64 %indvars.iv4251, %i.di
  %i.eqi = mul nsw i64 %i.eqh, 160                ; 17 uses
  %i.eqj = sext i32 %reass.sub to i64
  %i.eqk = getelementptr inbounds [4 x i8], ptr %0, i64 %i.eqj
  %i.eql = load float, ptr %i.eqk, align 4, !tbaa !322 ; 2 uses
  %i.eqm = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.eqi
  store float %i.eql, ptr %i.eqm, align 64, !tbaa !322
  %i.eqn = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.eqi
  store float %i.eql, ptr %i.eqn, align 64, !tbaa !322
  %i.eqo = add i32 %i.eqg, 31
  %i.eqp = sext i32 %i.eqo to i64
  %i.eqq = getelementptr inbounds [4 x i8], ptr %0, i64 %i.eqp
  %i.eqr = load float, ptr %i.eqq, align 4, !tbaa !322 ; 2 uses
  %i.eqs = or disjoint i64 %i.eqi, 1              ; 2 uses
  %i.eqt = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.eqs
  store float %i.eqr, ptr %i.eqt, align 4, !tbaa !322
  %i.equ = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.eqs
  store float %i.eqr, ptr %i.equ, align 4, !tbaa !322
  %i.eqv = add i32 %i.eqg, 30
  %i.eqw = sext i32 %i.eqv to i64
  %i.eqx = getelementptr inbounds [4 x i8], ptr %0, i64 %i.eqw
  %i.eqy = load float, ptr %i.eqx, align 4, !tbaa !322 ; 2 uses
  %i.eqz = or disjoint i64 %i.eqi, 2              ; 2 uses
  %i.era = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.eqz
  store float %i.eqy, ptr %i.era, align 8, !tbaa !322
  %i.erb = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.eqz
  store float %i.eqy, ptr %i.erb, align 8, !tbaa !322
  %i.erc = add i32 %i.eqg, 29
  %i.erd = sext i32 %i.erc to i64
  %i.ere = getelementptr inbounds [4 x i8], ptr %0, i64 %i.erd
  %i.erf = load float, ptr %i.ere, align 4, !tbaa !322 ; 2 uses
  %i.erg = or disjoint i64 %i.eqi, 3              ; 2 uses
  %i.erh = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.erg
  store float %i.erf, ptr %i.erh, align 4, !tbaa !322
  %i.eri = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.erg
  store float %i.erf, ptr %i.eri, align 4, !tbaa !322
  %i.erj = add i32 %i.eqg, 28
  %i.erk = sext i32 %i.erj to i64
  %i.erl = getelementptr inbounds [4 x i8], ptr %0, i64 %i.erk
  %i.erm = load float, ptr %i.erl, align 4, !tbaa !322 ; 2 uses
  %i.ern = or disjoint i64 %i.eqi, 4              ; 2 uses
  %i.ero = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.ern
  store float %i.erm, ptr %i.ero, align 16, !tbaa !322
  %i.erp = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.ern
  store float %i.erm, ptr %i.erp, align 16, !tbaa !322
  %i.erq = add i32 %i.eqg, 27
  %i.err = sext i32 %i.erq to i64
  %i.ers = getelementptr inbounds [4 x i8], ptr %0, i64 %i.err
  %i.ert = load float, ptr %i.ers, align 4, !tbaa !322 ; 2 uses
  %i.eru = or disjoint i64 %i.eqi, 5              ; 2 uses
  %i.erv = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.eru
  store float %i.ert, ptr %i.erv, align 4, !tbaa !322
  %i.erw = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.eru
  store float %i.ert, ptr %i.erw, align 4, !tbaa !322
  %i.erx = add i32 %i.eqg, 26
  %i.ery = sext i32 %i.erx to i64
  %i.erz = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ery
  %i.esa = load float, ptr %i.erz, align 4, !tbaa !322 ; 2 uses
  %i.esb = or disjoint i64 %i.eqi, 6              ; 2 uses
  %i.esc = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.esb
  store float %i.esa, ptr %i.esc, align 8, !tbaa !322
  %i.esd = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.esb
  store float %i.esa, ptr %i.esd, align 8, !tbaa !322
  %i.ese = add i32 %i.eqg, 25
  %i.esf = sext i32 %i.ese to i64
  %i.esg = getelementptr inbounds [4 x i8], ptr %0, i64 %i.esf
  %i.esh = load float, ptr %i.esg, align 4, !tbaa !322 ; 2 uses
  %i.esi = or disjoint i64 %i.eqi, 7              ; 2 uses
  %i.esj = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.esi
  store float %i.esh, ptr %i.esj, align 4, !tbaa !322
  %i.esk = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.esi
  store float %i.esh, ptr %i.esk, align 4, !tbaa !322
  %i.esl = add i32 %i.eqg, 24
  %i.esm = sext i32 %i.esl to i64
  %i.esn = getelementptr inbounds [4 x i8], ptr %0, i64 %i.esm
  %i.eso = load float, ptr %i.esn, align 4, !tbaa !322 ; 2 uses
  %i.esp = or disjoint i64 %i.eqi, 8              ; 2 uses
  %i.esq = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.esp
  store float %i.eso, ptr %i.esq, align 32, !tbaa !322
  %i.esr = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.esp
  store float %i.eso, ptr %i.esr, align 32, !tbaa !322
  %i.ess = add i32 %i.eqg, 23
  %i.est = sext i32 %i.ess to i64
  %i.esu = getelementptr inbounds [4 x i8], ptr %0, i64 %i.est
  %i.esv = load float, ptr %i.esu, align 4, !tbaa !322 ; 2 uses
  %i.esw = or disjoint i64 %i.eqi, 9              ; 2 uses
  %i.esx = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.esw
  store float %i.esv, ptr %i.esx, align 4, !tbaa !322
  %i.esy = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.esw
  store float %i.esv, ptr %i.esy, align 4, !tbaa !322
  %i.esz = add i32 %i.eqg, 22
  %i.eta = sext i32 %i.esz to i64
  %i.etb = getelementptr inbounds [4 x i8], ptr %0, i64 %i.eta
  %i.etc = load float, ptr %i.etb, align 4, !tbaa !322 ; 2 uses
  %i.etd = or disjoint i64 %i.eqi, 10             ; 2 uses
  %i.ete = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.etd
  store float %i.etc, ptr %i.ete, align 8, !tbaa !322
  %i.etf = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.etd
  store float %i.etc, ptr %i.etf, align 8, !tbaa !322
  %i.etg = add i32 %i.eqg, 21
  %i.eth = sext i32 %i.etg to i64
  %i.eti = getelementptr inbounds [4 x i8], ptr %0, i64 %i.eth
  %i.etj = load float, ptr %i.eti, align 4, !tbaa !322 ; 2 uses
  %i.etk = or disjoint i64 %i.eqi, 11             ; 2 uses
  %i.etl = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.etk
  store float %i.etj, ptr %i.etl, align 4, !tbaa !322
  %i.etm = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.etk
  store float %i.etj, ptr %i.etm, align 4, !tbaa !322
  %i.etn = add i32 %i.eqg, 20
  %i.eto = sext i32 %i.etn to i64
  %i.etp = getelementptr inbounds [4 x i8], ptr %0, i64 %i.eto
  %i.etq = load float, ptr %i.etp, align 4, !tbaa !322 ; 2 uses
  %i.etr = or disjoint i64 %i.eqi, 12             ; 2 uses
  %i.ets = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.etr
  store float %i.etq, ptr %i.ets, align 16, !tbaa !322
  %i.ett = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.etr
  store float %i.etq, ptr %i.ett, align 16, !tbaa !322
  %i.etu = add i32 %i.eqg, 19
  %i.etv = sext i32 %i.etu to i64
  %i.etw = getelementptr inbounds [4 x i8], ptr %0, i64 %i.etv
  %i.etx = load float, ptr %i.etw, align 4, !tbaa !322 ; 2 uses
  %i.ety = or disjoint i64 %i.eqi, 13             ; 2 uses
  %i.etz = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.ety
  store float %i.etx, ptr %i.etz, align 4, !tbaa !322
  %i.eua = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.ety
  store float %i.etx, ptr %i.eua, align 4, !tbaa !322
  %i.eub = add i32 %i.eqg, 18
  %i.euc = sext i32 %i.eub to i64
  %i.eud = getelementptr inbounds [4 x i8], ptr %0, i64 %i.euc
  %i.eue = load float, ptr %i.eud, align 4, !tbaa !322 ; 2 uses
  %i.euf = or disjoint i64 %i.eqi, 14             ; 2 uses
  %i.eug = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.euf
  store float %i.eue, ptr %i.eug, align 8, !tbaa !322
  %i.euh = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.euf
  store float %i.eue, ptr %i.euh, align 8, !tbaa !322
  %i.eui = add i32 %i.eqg, 17
  %i.euj = sext i32 %i.eui to i64
  %i.euk = getelementptr inbounds [4 x i8], ptr %0, i64 %i.euj
  %i.eul = load float, ptr %i.euk, align 4, !tbaa !322 ; 2 uses
  %i.eum = or disjoint i64 %i.eqi, 15             ; 2 uses
  %i.eun = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.eum
  store float %i.eul, ptr %i.eun, align 4, !tbaa !322
  %i.euo = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.eum
  store float %i.eul, ptr %i.euo, align 4, !tbaa !322
  %indvars.iv.next4252 = add nuw nsw i64 %indvars.iv4251, 1 ; 2 uses
  %exitcond4254.not = icmp eq i64 %indvars.iv.next4252, 16
  br i1 %exitcond4254.not, label %.loopexit3929, label %.preheader3906, !llvm.loop !249

.loopexit3929:                                    ; preds = %.preheader3906, %.loopexit3931
  br i1 %i.cr, label %.lr.ph3983, label %.preheader3915

.lr.ph3983:                                       ; preds = %.loopexit3929
  %i.eup = add nsw i32 %i.ie, -2
  %i.euq = icmp sgt i32 %i.ie, 4
  br i1 %i.euq, label %.lr.ph3979.preheader, label %.preheader3927

.lr.ph3979.preheader:                             ; preds = %.lr.ph3983
  %i.eur = add i32 %i.ic, %i.hh                   ; 2 uses
  %i.eus = zext i32 %i.eur to i64                 ; 2 uses
  %min.iters.check5260 = icmp ult i32 %i.eur, 8
  %n.vec5262 = and i64 %i.eus, 4294967288         ; 4 uses
  %i.eut = trunc nuw i64 %n.vec5262 to i32
  %i.euu = or disjoint i32 %i.eut, 2
  %cmp.n5278 = icmp eq i64 %n.vec5262, %i.eus
  br label %.lr.ph3979

.preheader3927:                                   ; preds = %._crit_edge3980, %.lr.ph3983
  br i1 %i.ct, label %.lr.ph3991, label %.preheader3915

.lr.ph3991:                                       ; preds = %.preheader3927
  %i.euv = add nsw i32 %i.ie, -4
  %i.euw = icmp sgt i32 %i.ie, 8
  br i1 %i.euw, label %.lr.ph3988.preheader, label %.preheader3925

.lr.ph3988.preheader:                             ; preds = %.lr.ph3991
  %i.eux = add i32 %i.ic, %i.hk                   ; 2 uses
  %i.euy = zext i32 %i.eux to i64                 ; 2 uses
  %min.iters.check5212 = icmp ult i32 %i.eux, 8
  %n.vec5214 = and i64 %i.euy, 4294967288         ; 4 uses
  %i.euz = trunc nuw i64 %n.vec5214 to i32
  %i.eva = or disjoint i32 %i.euz, 4
  %cmp.n5254 = icmp eq i64 %n.vec5214, %i.euy
  br label %.lr.ph3988

.lr.ph3979:                                       ; preds = %.lr.ph3979.preheader, %._crit_edge3980
  %indvars.iv4255 = phi i32 [ %indvars.iv.next4256, %._crit_edge3980 ], [ 320, %.lr.ph3979.preheader ] ; 2 uses
  %.032363981 = phi i32 [ %i.ewo, %._crit_edge3980 ], [ 2, %.lr.ph3979.preheader ]
  %i.evb = or disjoint i32 %indvars.iv4255, 2
  %i.evc = zext i32 %i.evb to i64                 ; 3 uses
  br i1 %min.iters.check5260, label %scalar.ph5259.preheader, label %vector.ph5261

vector.ph5261:                                    ; preds = %.lr.ph3979
  %i.evd = add nuw nsw i64 %n.vec5262, %i.evc
  br label %vector.body5263

vector.body5263:                                  ; preds = %vector.body5263, %vector.ph5261
  %index5264 = phi i64 [ 0, %vector.ph5261 ], [ %index.next5275, %vector.body5263 ] ; 2 uses
  %i.eve = add nuw i64 %index5264, %i.evc         ; 5 uses
  %i.evf = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.eve
  %i.evg = getelementptr inbounds nuw i8, ptr %i.evf, i64 4
  %wide.load5267.a = load <8 x float>, ptr %i.evg, align 4, !tbaa !322
  %i.evh = getelementptr [4 x i8], ptr %i.y, i64 %i.eve ; 8 uses
  %i.evi = getelementptr i8, ptr %i.evh, i64 -4
  %wide.load5268.a = load <8 x float>, ptr %i.evi, align 4, !tbaa !322
  %i.evj = fsub reassoc nsz arcp contract afn <8 x float> %wide.load5267.a, %wide.load5268.a ; 3 uses
  %i.evk = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.evj)
  %i.evl = getelementptr inbounds nuw i8, ptr %i.evh, i64 640
  %wide.load5269.a = load <8 x float>, ptr %i.evl, align 8, !tbaa !322
  %i.evm = getelementptr i8, ptr %i.evh, i64 -640
  %wide.load5270.a = load <8 x float>, ptr %i.evm, align 8, !tbaa !322
  %i.evn = fsub reassoc nsz arcp contract afn <8 x float> %wide.load5269.a, %wide.load5270.a ; 3 uses
  %i.evo = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.evn)
  %i.evp = getelementptr inbounds nuw i8, ptr %i.evh, i64 1280
  %wide.load5267 = load <8 x float>, ptr %i.evp, align 8, !tbaa !322
  %wide.load5271.a = load <8 x float>, ptr %i.evh, align 8, !tbaa !322 ; 4 uses
  %i.evq = fsub reassoc nsz arcp contract afn <8 x float> %wide.load5267, %wide.load5271.a
  %i.evr = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.evq)
  %i.evs = getelementptr i8, ptr %i.evh, i64 -1280
  %wide.load5272 = load <8 x float>, ptr %i.evs, align 8, !tbaa !322
  %i.evt = fsub reassoc nsz arcp contract afn <8 x float> %wide.load5271.a, %wide.load5272
  %i.evu = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.evt)
  %i.evv = fadd reassoc nsz arcp contract afn <8 x float> %i.evo, splat (float f0x3727C5AC)
  %i.evw = fadd reassoc nsz arcp contract afn <8 x float> %i.evv, %i.evr
  %i.evx = fadd reassoc nsz arcp contract afn <8 x float> %i.evw, %i.evu
  %i.evy = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.eve
  store <8 x float> %i.evx, ptr %i.evy, align 8, !tbaa !322
  %i.evz = getelementptr inbounds nuw i8, ptr %i.evh, i64 8
  %wide.load5273 = load <8 x float>, ptr %i.evz, align 16, !tbaa !322
  %i.ewa = fsub reassoc nsz arcp contract afn <8 x float> %wide.load5273, %wide.load5271.a
  %i.ewb = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ewa)
  %i.ewc = getelementptr i8, ptr %i.evh, i64 -8
  %wide.load5274 = load <8 x float>, ptr %i.ewc, align 32, !tbaa !322
  %i.ewd = fsub reassoc nsz arcp contract afn <8 x float> %wide.load5271.a, %wide.load5274
  %i.ewe = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ewd)
  %i.ewf = fadd reassoc nsz arcp contract afn <8 x float> %i.evk, splat (float f0x3727C5AC)
  %i.ewg = fadd reassoc nsz arcp contract afn <8 x float> %i.ewf, %i.ewb
  %i.ewh = fadd reassoc nsz arcp contract afn <8 x float> %i.ewg, %i.ewe
  %i.ewi = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.eve
  store <8 x float> %i.ewh, ptr %i.ewi, align 8, !tbaa !322
  %i.ewj = fmul reassoc nsz arcp contract afn <8 x float> %i.evj, %i.evj
  %i.ewk = fmul reassoc nsz arcp contract afn <8 x float> %i.evn, %i.evn
  %i.ewl = fadd reassoc nsz arcp contract afn <8 x float> %i.ewk, %i.ewj
  %i.ewm = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.eve
  store <8 x float> %i.ewl, ptr %i.ewm, align 8, !tbaa !322
  %index.next5275 = add nuw i64 %index5264, 8     ; 2 uses
  %i.ewn = icmp eq i64 %index.next5275, %n.vec5262
  br i1 %i.ewn, label %middle.block5276, label %vector.body5263, !llvm.loop !250

middle.block5276:                                 ; preds = %vector.body5263
  br i1 %cmp.n5278, label %._crit_edge3980, label %scalar.ph5259.preheader

scalar.ph5259.preheader:                          ; preds = %.lr.ph3979, %middle.block5276
  %indvars.iv4257.ph = phi i64 [ %i.evc, %.lr.ph3979 ], [ %i.evd, %middle.block5276 ]
  %.032353976.ph = phi i32 [ 2, %.lr.ph3979 ], [ %i.euu, %middle.block5276 ]
  br label %scalar.ph5259

._crit_edge3980:                                  ; preds = %scalar.ph5259, %middle.block5276
  %i.ewo = add nuw nsw i32 %.032363981, 1         ; 2 uses
  %i.ewp = icmp slt i32 %i.ewo, %i.cq
  %indvars.iv.next4256 = add i32 %indvars.iv4255, 160
  br i1 %i.ewp, label %.lr.ph3979, label %.preheader3927, !llvm.loop !251

scalar.ph5259:                                    ; preds = %scalar.ph5259.preheader, %scalar.ph5259
  %indvars.iv4257 = phi i64 [ %indvars.iv.next4258, %scalar.ph5259 ], [ %indvars.iv4257.ph, %scalar.ph5259.preheader ] ; 5 uses
  %.032353976 = phi i32 [ %i.eyf, %scalar.ph5259 ], [ %.032353976.ph, %scalar.ph5259.preheader ]
  %indvars.iv.next4258 = add nuw nsw i64 %indvars.iv4257, 1 ; 2 uses
  %i.ewq = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.next4258
  %i.ewr = load float, ptr %i.ewq, align 4, !tbaa !322
  %i.ews = getelementptr [4 x i8], ptr %i.y, i64 %indvars.iv4257 ; 8 uses
  %i.ewt = getelementptr i8, ptr %i.ews, i64 -4
  %i.ewu = load float, ptr %i.ewt, align 4, !tbaa !322
  %i.ewv = fsub reassoc nsz arcp contract afn float %i.ewr, %i.ewu ; 3 uses
  %i.eww = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ewv)
  %i.ewx = getelementptr inbounds nuw i8, ptr %i.ews, i64 640
  %i.ewy = load float, ptr %i.ewx, align 4, !tbaa !322
  %i.ewz = getelementptr i8, ptr %i.ews, i64 -640
  %i.exa = load float, ptr %i.ewz, align 4, !tbaa !322
  %i.exb = fsub reassoc nsz arcp contract afn float %i.ewy, %i.exa ; 3 uses
  %i.exc = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.exb)
  %i.exd = getelementptr inbounds nuw i8, ptr %i.ews, i64 1280
  %6 = load float, ptr %i.exd, align 4, !tbaa !322
  %i.exe = load float, ptr %i.ews, align 4, !tbaa !322 ; 4 uses
  %i.exf = fsub reassoc nsz arcp contract afn float %6, %i.exe
  %i.exg = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.exf)
  %i.exh = getelementptr i8, ptr %i.ews, i64 -1280
  %i.exi = load float, ptr %i.exh, align 4, !tbaa !322
  %i.exj = fsub reassoc nsz arcp contract afn float %i.exe, %i.exi
  %i.exk = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.exj)
  %i.exl = fadd reassoc nsz arcp contract afn float %i.exc, f0x3727C5AC
  %i.exm = fadd reassoc nsz arcp contract afn float %i.exl, %i.exg
  %i.exn = fadd reassoc nsz arcp contract afn float %i.exm, %i.exk
  %i.exo = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv4257
  store float %i.exn, ptr %i.exo, align 4, !tbaa !322
  %i.exp = getelementptr inbounds nuw i8, ptr %i.ews, i64 8
  %i.exq = load float, ptr %i.exp, align 4, !tbaa !322
  %i.exr = fsub reassoc nsz arcp contract afn float %i.exq, %i.exe
  %i.exs = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.exr)
  %i.ext = getelementptr i8, ptr %i.ews, i64 -8
  %i.exu = load float, ptr %i.ext, align 4, !tbaa !322
  %i.exv = fsub reassoc nsz arcp contract afn float %i.exe, %i.exu
  %i.exw = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.exv)
  %i.exx = fadd reassoc nsz arcp contract afn float %i.eww, f0x3727C5AC
  %i.exy = fadd reassoc nsz arcp contract afn float %i.exx, %i.exs
  %i.exz = fadd reassoc nsz arcp contract afn float %i.exy, %i.exw
  %i.eya = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv4257
  store float %i.exz, ptr %i.eya, align 4, !tbaa !322
  %i.eyb = fmul reassoc nsz arcp contract afn float %i.ewv, %i.ewv
  %i.eyc = fmul reassoc nsz arcp contract afn float %i.exb, %i.exb
  %i.eyd = fadd reassoc nsz arcp contract afn float %i.eyc, %i.eyb
  %i.eye = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv4257
  store float %i.eyd, ptr %i.eye, align 4, !tbaa !322
  %i.eyf = add nuw nsw i32 %.032353976, 1         ; 2 uses
  %i.eyg = icmp slt i32 %i.eyf, %i.eup
  br i1 %i.eyg, label %scalar.ph5259, label %._crit_edge3980, !llvm.loop !252

.lr.ph3999:                                       ; preds = %._crit_edge3989
  %i.eyh = add nsw i32 %i.ie, -4
  br label %.lr.ph3996

.lr.ph3988:                                       ; preds = %.lr.ph3988.preheader, %._crit_edge3989
  %indvars.iv4260 = phi i32 [ %indvars.iv.next4261, %._crit_edge3989 ], [ 640, %.lr.ph3988.preheader ] ; 2 uses
  %.032333990 = phi i32 [ %i.fer, %._crit_edge3989 ], [ 4, %.lr.ph3988.preheader ] ; 2 uses
  %i.eyi = or disjoint i32 %indvars.iv4260, 4
  %i.eyj = sext i32 %i.eyi to i64                 ; 5 uses
  %i.eyk = shl i32 %.032333990, 2
  %i.eyl = and i32 %i.eyk, 28
  %i.eym = lshr i32 %4, %i.eyl
  %i.eyn = trunc i32 %i.eym to i1                 ; 2 uses
  %.phi.trans.insert4411.a = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.eyj
  %.pre4412.a = load float, ptr %.phi.trans.insert4411.a, align 16, !tbaa !322 ; 2 uses
  %.phi.trans.insert4413 = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.eyj
  %.pre4414.a = load float, ptr %.phi.trans.insert4413, align 16, !tbaa !322 ; 2 uses
  br i1 %min.iters.check5212, label %scalar.ph5211.preheader, label %vector.ph5213

vector.ph5213:                                    ; preds = %.lr.ph3988
  %i.eyo = add nsw i64 %n.vec5214, %i.eyj
  %broadcast.splatinsert5217 = insertelement <8 x i1> poison, i1 %i.eyn, i64 0
  %broadcast.splat5218 = shufflevector <8 x i1> %broadcast.splatinsert5217, <8 x i1> poison, <8 x i32> zeroinitializer
  %induction5219 = xor <8 x i1> %broadcast.splat5218, <i1 false, i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true> ; 4 uses
  %vector.recur.init = insertelement <8 x float> poison, float %.pre4414.a, i64 7
  %vector.recur.init5222 = insertelement <8 x float> poison, float %.pre4412.a, i64 7
  br label %vector.body5220

vector.body5220:                                  ; preds = %vector.body5220, %vector.ph5213
  %index5221 = phi i64 [ 0, %vector.ph5213 ], [ %index.next5251, %vector.body5220 ] ; 2 uses
  %vector.recur = phi <8 x float> [ %vector.recur.init, %vector.ph5213 ], [ %wide.load5239.a, %vector.body5220 ]
  %vector.recur5223 = phi <8 x float> [ %vector.recur.init5222, %vector.ph5213 ], [ %wide.load5235.a, %vector.body5220 ]
  %i.eyp = add nuw i64 %index5221, %i.eyj         ; 16 uses
  %i.eyq = add nsw i64 %i.eyp, -160               ; 2 uses
  %i.eyr = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.eyq
  %wide.load5225.a = load <8 x float>, ptr %i.eyr, align 16, !tbaa !322 ; 2 uses
  %i.eys = add nsw i64 %i.eyp, -320               ; 2 uses
  %i.eyt = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.eys
  %wide.load5226.a = load <8 x float>, ptr %i.eyt, align 16, !tbaa !322 ; 2 uses
  %i.eyu = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.eyp
  %wide.load5227.a = load <8 x float>, ptr %i.eyu, align 16, !tbaa !322 ; 4 uses
  %i.eyv = fadd reassoc nsz arcp contract afn <8 x float> %wide.load5227.a, %wide.load5226.a
  %i.eyw = fmul reassoc nsz arcp contract afn <8 x float> %i.eyv, %wide.load5225.a
  %i.eyx = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.eyp
  %i.eyy = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.eys
  %wide.load5228.a = load <8 x float>, ptr %i.eyy, align 16, !tbaa !322 ; 2 uses
  %i.eyz = fadd reassoc nsz arcp contract afn <8 x float> %wide.load5228.a, splat (float f0x3727C5AC)
  %i.eza = fmul reassoc nsz arcp contract afn <8 x float> %i.eyz, %wide.load5227.a
  %i.ezb = add nuw nsw i64 %i.eyp, 160            ; 2 uses
  %i.ezc = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.ezb
  %wide.load5229.a = load <8 x float>, ptr %i.ezc, align 16, !tbaa !322 ; 2 uses
  %i.ezd = add nuw nsw i64 %i.eyp, 320            ; 2 uses
  %i.eze = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ezd
  %wide.load5230.a = load <8 x float>, ptr %i.eze, align 16, !tbaa !322 ; 2 uses
  %i.ezf = fadd reassoc nsz arcp contract afn <8 x float> %wide.load5230.a, %wide.load5227.a
  %i.ezg = fmul reassoc nsz arcp contract afn <8 x float> %i.ezf, %wide.load5229.a
  %i.ezh = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.ezd
  %wide.load5231.a = load <8 x float>, ptr %i.ezh, align 16, !tbaa !322 ; 2 uses
  %i.ezi = fadd reassoc nsz arcp contract afn <8 x float> %wide.load5231.a, splat (float f0x3727C5AC)
  %i.ezj = fmul reassoc nsz arcp contract afn <8 x float> %i.ezi, %wide.load5227.a
  %i.ezk = add nsw i64 %i.eyp, -1                 ; 2 uses
  %i.ezl = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.ezk
  %wide.load5232.a = load <8 x float>, ptr %i.ezl, align 4, !tbaa !322 ; 2 uses
  %i.ezm = add nsw i64 %i.eyp, -2                 ; 2 uses
  %i.ezn = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.ezm
  %wide.load5233.a = load <8 x float>, ptr %i.ezn, align 8, !tbaa !322 ; 2 uses
  %i.ezo = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.ezm
  %wide.load5234.a = load <8 x float>, ptr %i.ezo, align 8, !tbaa !322 ; 2 uses
  %i.ezp = fadd reassoc nsz arcp contract afn <8 x float> %wide.load5234.a, splat (float f0x3727C5AC)
  %i.ezq = or disjoint i64 %i.eyp, 1              ; 2 uses
  %i.ezr = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.ezq
  %wide.load5235.a = load <8 x float>, ptr %i.ezr, align 4, !tbaa !322 ; 5 uses
  %i.ezs = shufflevector <8 x float> %vector.recur5223, <8 x float> %wide.load5235.a, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14> ; 17 uses
  %i.ezt = fadd reassoc nsz arcp contract afn <8 x float> %i.ezs, splat (float f0x3727C5AC) ; 4 uses
  %i.ezu = fmul reassoc nsz arcp contract afn <8 x float> %i.ezt, %wide.load5226.a
  %i.ezv = fadd reassoc nsz arcp contract afn <8 x float> %i.eza, %i.ezu
  %i.ezw = fdiv reassoc nsz arcp contract afn <8 x float> %i.eyw, %i.ezv ; 2 uses
  %i.ezx = fmul reassoc nsz arcp contract afn <8 x float> %wide.load5230.a, %i.ezt
  %i.ezy = fadd reassoc nsz arcp contract afn <8 x float> %i.ezj, %i.ezx
  %i.ezz = fdiv reassoc nsz arcp contract afn <8 x float> %i.ezg, %i.ezy ; 2 uses
  %i.faa = fmul reassoc nsz arcp contract afn <8 x float> %wide.load5233.a, %i.ezt
  %i.fab = or disjoint i64 %i.eyp, 2              ; 2 uses
  %i.fac = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.fab
  %wide.load5236.a = load <8 x float>, ptr %i.fac, align 8, !tbaa !322 ; 2 uses
  %i.fad = fmul reassoc nsz arcp contract afn <8 x float> %wide.load5236.a, %i.ezt
  %i.fae = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.fab
  %wide.load5237.a = load <8 x float>, ptr %i.fae, align 8, !tbaa !322 ; 2 uses
  %i.faf = fadd reassoc nsz arcp contract afn <8 x float> %wide.load5237.a, splat (float f0x3727C5AC)
  %i.fag = fsub reassoc nsz arcp contract afn <8 x float> %i.ezs, %wide.load5228.a ; 3 uses
  %i.fah = fcmp oeq <8 x float> %i.fag, zeroinitializer
  %i.fai = bitcast <8 x float> %i.fag to <8 x i32>
  %i.faj = add <8 x i32> %i.fai, splat (i32 -8388608)
  %i.fak = bitcast <8 x i32> %i.faj to <8 x float>
  %i.fal = select nsz <8 x i1> %i.fah, <8 x float> %i.fag, <8 x float> %i.fak
  %i.fam = fadd reassoc nsz arcp contract afn <8 x float> %i.fal, %wide.load5225.a ; 4 uses
  %i.fan = fsub reassoc nsz arcp contract afn <8 x float> %i.ezs, %wide.load5231.a ; 3 uses
  %i.fao = fcmp oeq <8 x float> %i.fan, zeroinitializer
  %i.fap = bitcast <8 x float> %i.fan to <8 x i32>
  %i.faq = add <8 x i32> %i.fap, splat (i32 -8388608)
  %i.far = bitcast <8 x i32> %i.faq to <8 x float>
  %i.fas = select nsz <8 x i1> %i.fao, <8 x float> %i.fan, <8 x float> %i.far
  %i.fat = fadd reassoc nsz arcp contract afn <8 x float> %i.fas, %wide.load5229.a ; 4 uses
  %i.fau = fsub reassoc nsz arcp contract afn <8 x float> %i.ezs, %wide.load5234.a ; 3 uses
  %i.fav = fcmp oeq <8 x float> %i.fau, zeroinitializer
  %i.faw = bitcast <8 x float> %i.fau to <8 x i32>
  %i.fax = add <8 x i32> %i.faw, splat (i32 -8388608)
  %i.fay = bitcast <8 x i32> %i.fax to <8 x float>
  %i.faz = select nsz <8 x i1> %i.fav, <8 x float> %i.fau, <8 x float> %i.fay
  %i.fba = fadd reassoc nsz arcp contract afn <8 x float> %i.faz, %wide.load5232.a ; 4 uses
  %i.fbb = fsub reassoc nsz arcp contract afn <8 x float> %i.ezs, %wide.load5237.a ; 3 uses
  %i.fbc = fcmp oeq <8 x float> %i.fbb, zeroinitializer
  %i.fbd = bitcast <8 x float> %i.fbb to <8 x i32>
  %i.fbe = add <8 x i32> %i.fbd, splat (i32 -8388608)
  %i.fbf = bitcast <8 x i32> %i.fbe to <8 x float>
  %i.fbg = select nsz <8 x i1> %i.fbc, <8 x float> %i.fbb, <8 x float> %i.fbf
  %i.fbh = fadd reassoc nsz arcp contract afn <8 x float> %i.fbg, %wide.load5235.a ; 4 uses
  %i.fbi = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.ezw
  %i.fbj = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.fbi)
  %i.fbk = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.fbj, splat (float 7.500000e-01)
  %i.fbl = fmul reassoc nsz arcp contract afn <8 x float> %i.ezw, %i.ezs
  %i.fbm = select nsz <8 x i1> %i.fbk, <8 x float> %i.fbl, <8 x float> %i.fam ; 2 uses
  %i.fbn = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.ezz
  %i.fbo = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.fbn)
  %i.fbp = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.fbo, splat (float 7.500000e-01)
  %i.fbq = fmul reassoc nsz arcp contract afn <8 x float> %i.ezz, %i.ezs
  %i.fbr = select nsz <8 x i1> %i.fbp, <8 x float> %i.fbq, <8 x float> %i.fat ; 2 uses
  %i.fbs = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.ezk
  %wide.load5238.a = load <8 x float>, ptr %i.fbs, align 4, !tbaa !322 ; 2 uses
  %i.fbt = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ezq
  %wide.load5239.a = load <8 x float>, ptr %i.fbt, align 4, !tbaa !322 ; 4 uses
  %i.fbu = shufflevector <8 x float> %vector.recur, <8 x float> %wide.load5239.a, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14> ; 4 uses
  %i.fbv = fadd reassoc nsz arcp contract afn <8 x float> %i.fbu, %wide.load5233.a
  %i.fbw = fmul reassoc nsz arcp contract afn <8 x float> %i.fbv, %wide.load5232.a
  %i.fbx = fmul reassoc nsz arcp contract afn <8 x float> %i.ezp, %i.fbu
  %i.fby = fadd reassoc nsz arcp contract afn <8 x float> %i.fbx, %i.faa
  %i.fbz = fdiv reassoc nsz arcp contract afn <8 x float> %i.fbw, %i.fby ; 2 uses
  %i.fca = fadd reassoc nsz arcp contract afn <8 x float> %wide.load5236.a, %i.fbu
  %i.fcb = fmul reassoc nsz arcp contract afn <8 x float> %i.fca, %wide.load5235.a
  %i.fcc = fmul reassoc nsz arcp contract afn <8 x float> %i.faf, %i.fbu
  %i.fcd = fadd reassoc nsz arcp contract afn <8 x float> %i.fcc, %i.fad
  %i.fce = fdiv reassoc nsz arcp contract afn <8 x float> %i.fcb, %i.fcd ; 2 uses
  %i.fcf = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.fbz
  %i.fcg = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.fcf)
  %i.fch = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.fcg, splat (float 7.500000e-01)
  %i.fci = fmul reassoc nsz arcp contract afn <8 x float> %i.fbz, %i.ezs
  %i.fcj = select nsz <8 x i1> %i.fch, <8 x float> %i.fci, <8 x float> %i.fba ; 2 uses
  %i.fck = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.fce
  %i.fcl = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.fck)
  %i.fcm = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.fcl, splat (float 7.500000e-01)
  %i.fcn = fmul reassoc nsz arcp contract afn <8 x float> %i.fce, %i.ezs
  %i.fco = select nsz <8 x i1> %i.fcm, <8 x float> %i.fcn, <8 x float> %i.fbh ; 2 uses
  %i.fcp = fadd reassoc nsz arcp contract afn <8 x float> %wide.load5239.a, %wide.load5238.a
  %i.fcq = fdiv reassoc nsz arcp contract afn <8 x float> %wide.load5238.a, %i.fcp ; 3 uses
  %i.fcr = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.eyq
  %wide.load5240 = load <8 x float>, ptr %i.fcr, align 16, !tbaa !322 ; 2 uses
  %i.fcs = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ezb
  %wide.load5241 = load <8 x float>, ptr %i.fcs, align 16, !tbaa !322
  %i.fct = fadd reassoc nsz arcp contract afn <8 x float> %wide.load5241, %wide.load5240
  %i.fcu = fdiv reassoc nsz arcp contract afn <8 x float> %wide.load5240, %i.fct ; 3 uses
  %i.fcv = fmul reassoc nsz arcp contract afn <8 x float> %i.fcu, %i.fat
  %i.fcw = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.fcu ; 2 uses
  %i.fcx = fmul reassoc nsz arcp contract afn <8 x float> %i.fcw, %i.fam
  %i.fcy = fadd reassoc nsz arcp contract afn <8 x float> %i.fcx, %i.fcv ; 3 uses
  %i.fcz = fmul reassoc nsz arcp contract afn <8 x float> %i.fbh, %i.fcq
  %i.fda = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.fcq ; 2 uses
  %i.fdb = fmul reassoc nsz arcp contract afn <8 x float> %i.fda, %i.fba
  %i.fdc = fadd reassoc nsz arcp contract afn <8 x float> %i.fcz, %i.fdb ; 3 uses
  %i.fdd = fmul reassoc nsz arcp contract afn <8 x float> %i.fcu, %i.fbr ; 2 uses
  %i.fde = fmul reassoc nsz arcp contract afn <8 x float> %i.fcw, %i.fbm ; 2 uses
  %i.fdf = fsub reassoc nsz arcp contract afn <8 x float> %i.fdd, %i.ezs
  %i.fdg = fadd reassoc nsz arcp contract afn <8 x float> %i.fdf, %i.fde
  %i.fdh = fmul reassoc nsz arcp contract afn <8 x float> %i.fco, %i.fcq ; 2 uses
  %i.fdi = fmul reassoc nsz arcp contract afn <8 x float> %i.fda, %i.fcj ; 2 uses
  %i.fdj = fsub reassoc nsz arcp contract afn <8 x float> %i.fdi, %i.ezs
  %i.fdk = fadd reassoc nsz arcp contract afn <8 x float> %i.fdj, %i.fdh
  %i.fdl = fsub reassoc nsz arcp contract afn <8 x float> %i.fcy, %i.ezs
  %i.fdm = fsub reassoc nsz arcp contract afn <8 x float> %i.fdc, %i.ezs
  %i.fdn = fadd reassoc nsz arcp contract afn <8 x float> %i.fde, %i.fdd
  %i.fdo = fsub reassoc nsz arcp contract afn <8 x float> %i.ezs, %i.fdn
  %i.fdp = fadd reassoc nsz arcp contract afn <8 x float> %i.fdh, %i.fdi
  %i.fdq = fsub reassoc nsz arcp contract afn <8 x float> %i.ezs, %i.fdp
  %i.fdr = fsub reassoc nsz arcp contract afn <8 x float> %i.ezs, %i.fcy
  %i.fds = fsub reassoc nsz arcp contract afn <8 x float> %i.ezs, %i.fdc
  %predphi5242.a = select <8 x i1> %induction5219, <8 x float> %i.fdo, <8 x float> %i.fdg
  %predphi5243.a = select <8 x i1> %induction5219, <8 x float> %i.fdq, <8 x float> %i.fdk
end_hunk_1
