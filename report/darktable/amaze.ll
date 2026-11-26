Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/amaze?download=true
inline.NumInlined: 126
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
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
  %i.i = inttoptr i64 %i.h to ptr                 ; 324 uses
  %i.j = getelementptr i8, ptr %i.i, i64 102528   ; 24 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 205056 ; 15 uses
  %i.l = getelementptr i8, ptr %i.i, <2 x i64> <i64 205056, i64 307584>
  %i.m = getelementptr i8, ptr %i.i, i64 307584   ; 16 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 410112 ; 14 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 512640 ; 12 uses
  %i.p = getelementptr i8, ptr %i.i, i64 615168   ; 28 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 717696 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 820224 ; 32 uses
  %i.s = getelementptr i8, ptr %i.i, i64 922880   ; 24 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 871552 ; 10 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 974208 ; 23 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 1076736 ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 1179264 ; 14 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 1230592 ; 14 uses
  %i.y = getelementptr i8, ptr %i.i, i64 1281920  ; 244 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 461440 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 1384448 ; 12 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 1397376 ; 4 uses
  %i.ac = icmp sgt i32 %3, -16
  br i1 %i.ac, label %.preheader3944.lr.ph, label %._crit_edge4161.split

.preheader3944.lr.ph:                             ; preds = %bb.a
  %i.ad = icmp sgt i32 %2, -16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 1384688
  %i.af = add i32 %3, 16                          ; 3 uses
  %i.ag = add i32 %2, 16                          ; 3 uses
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
  %scevgep = getelementptr i8, ptr %i.i, i64 -640
  %scevgep4843.a = getelementptr i8, ptr %i.i, i64 10304
  %scevgep4844 = getelementptr i8, ptr %1, i64 -264
  %scevgep4848 = getelementptr i8, ptr %1, i64 4
  %scevgep5085.a = getelementptr i8, ptr %i.i, i64 922908
  %scevgep5086.a = getelementptr i8, ptr %i.i, i64 922904
  %scevgep5087.a = getelementptr i8, ptr %i.i, i64 307592
  %scevgep5088.a = getelementptr i8, ptr %i.i, i64 307588
  %scevgep5089.a = getelementptr i8, ptr %i.i, i64 307580
  %scevgep5090.a = getelementptr i8, ptr %i.i, i64 205700
  %scevgep5091.a = getelementptr i8, ptr %i.i, i64 205696
  %scevgep5092.a = getelementptr i8, ptr %i.i, i64 204420
  %scevgep5093.a = getelementptr i8, ptr %i.i, i64 204416
  %scevgep5094.a = getelementptr i8, ptr %i.i, i64 871584
  %scevgep5095.a = getelementptr i8, ptr %i.i, i64 1281928
  %scevgep5096.a = getelementptr i8, ptr %i.i, i64 1281924 ; 2 uses
  %scevgep5097.a = getelementptr i8, ptr %i.i, i64 871572
  %scevgep5098.a = getelementptr i8, ptr %i.i, i64 1281916
  %scevgep5099.a = getelementptr i8, ptr %i.i, i64 872220
  %scevgep5100.a = getelementptr i8, ptr %i.i, i64 872216
  %scevgep5101.a = getelementptr i8, ptr %i.i, i64 1282564
  %scevgep5102.a = getelementptr i8, ptr %i.i, i64 1282560
  %scevgep5103.a = getelementptr i8, ptr %i.i, i64 870940
  %scevgep5104.a = getelementptr i8, ptr %i.i, i64 870936
  %scevgep5105.a = getelementptr i8, ptr %i.i, i64 871580 ; 2 uses
  %scevgep5106.a = getelementptr i8, ptr %i.i, i64 871576 ; 2 uses
  %scevgep5107.a = getelementptr i8, ptr %i.i, i64 1281284
  %scevgep5108.a = getelementptr i8, ptr %i.i, i64 1281280
  %scevgep5109.a = getelementptr i8, ptr %i.i, i64 922884
  %scevgep5110 = getelementptr i8, ptr %i.i, i64 102532
  %scevgep5111.a = getelementptr i8, ptr %i.i, i64 615172
  %scevgep5113 = getelementptr nuw i8, ptr %i.i, i64 4
  %scevgep6243 = getelementptr i8, ptr %i.i, i64 1291520
  %scevgep6245 = getelementptr i8, ptr %i.i, i64 9600
  %scevgep6293 = getelementptr i8, ptr %i.i, i64 1290880
  %scevgep6295 = getelementptr i8, ptr %i.i, i64 8960
  %scevgep6343 = getelementptr i8, ptr %i.i, i64 1290240
  %scevgep6345 = getelementptr i8, ptr %i.i, i64 8320
  %scevgep6393 = getelementptr i8, ptr %i.i, i64 1289600
  %scevgep6395 = getelementptr i8, ptr %i.i, i64 7680
  %scevgep6443 = getelementptr i8, ptr %i.i, i64 1288960
  %scevgep6445 = getelementptr i8, ptr %i.i, i64 7040
  %scevgep6493 = getelementptr i8, ptr %i.i, i64 1288320
  %scevgep6495 = getelementptr i8, ptr %i.i, i64 6400
  %scevgep6543 = getelementptr i8, ptr %i.i, i64 1287680
  %scevgep6545 = getelementptr i8, ptr %i.i, i64 5760
  %scevgep6593 = getelementptr i8, ptr %i.i, i64 1287040
  %scevgep6595 = getelementptr i8, ptr %i.i, i64 5120
  %scevgep6643 = getelementptr i8, ptr %i.i, i64 1286400
  %scevgep6645 = getelementptr i8, ptr %i.i, i64 4480
  %scevgep6693 = getelementptr i8, ptr %i.i, i64 1285760
  %scevgep6695 = getelementptr i8, ptr %i.i, i64 3840
  %scevgep6743 = getelementptr i8, ptr %i.i, i64 1285120
  %scevgep6745 = getelementptr i8, ptr %i.i, i64 3200
  %scevgep6793 = getelementptr i8, ptr %i.i, i64 1284480
  %scevgep6795 = getelementptr i8, ptr %i.i, i64 2560
  %scevgep6843 = getelementptr i8, ptr %i.i, i64 1283840
  %scevgep6845 = getelementptr i8, ptr %i.i, i64 1920
  %scevgep6893 = getelementptr i8, ptr %i.i, i64 1283200
  %scevgep6895 = getelementptr i8, ptr %i.i, i64 1280
  %scevgep6943 = getelementptr i8, ptr %i.i, i64 1282560
  %scevgep6945 = getelementptr i8, ptr %i.i, i64 640
  %scevgep6992 = getelementptr i8, ptr %i.i, i64 1281920
  %scevgep7044 = getelementptr i8, ptr %i.i, i64 1281280
  %scevgep7093 = getelementptr i8, ptr %i.i, i64 1291520
  %scevgep7094 = getelementptr i8, ptr %i.i, i64 9600
  %scevgep7139 = getelementptr i8, ptr %i.i, i64 1290880
  %scevgep7140 = getelementptr i8, ptr %i.i, i64 8960
  %scevgep7185 = getelementptr i8, ptr %i.i, i64 1290240
  %scevgep7186 = getelementptr i8, ptr %i.i, i64 8320
  %scevgep7231 = getelementptr i8, ptr %i.i, i64 1289600
  %scevgep7232 = getelementptr i8, ptr %i.i, i64 7680
  %scevgep7277 = getelementptr i8, ptr %i.i, i64 1288960
  %scevgep7278 = getelementptr i8, ptr %i.i, i64 7040
  %scevgep7323 = getelementptr i8, ptr %i.i, i64 1288320
  %scevgep7324 = getelementptr i8, ptr %i.i, i64 6400
  %scevgep7369 = getelementptr i8, ptr %i.i, i64 1287680
  %scevgep7370 = getelementptr i8, ptr %i.i, i64 5760
  %scevgep7415 = getelementptr i8, ptr %i.i, i64 1287040
  %scevgep7416 = getelementptr i8, ptr %i.i, i64 5120
  %scevgep7461 = getelementptr i8, ptr %i.i, i64 1286400
  %scevgep7462 = getelementptr i8, ptr %i.i, i64 4480
  %scevgep7507 = getelementptr i8, ptr %i.i, i64 1285760
  %scevgep7508 = getelementptr i8, ptr %i.i, i64 3840
  %scevgep7553 = getelementptr i8, ptr %i.i, i64 1285120
  %scevgep7554 = getelementptr i8, ptr %i.i, i64 3200
  %scevgep7599 = getelementptr i8, ptr %i.i, i64 1284480
  %scevgep7600 = getelementptr i8, ptr %i.i, i64 2560
  %scevgep7645 = getelementptr i8, ptr %i.i, i64 1283840
  %scevgep7646 = getelementptr i8, ptr %i.i, i64 1920
  %scevgep7691 = getelementptr i8, ptr %i.i, i64 1283200
  %scevgep7692 = getelementptr i8, ptr %i.i, i64 1280
  %scevgep7737 = getelementptr i8, ptr %i.i, i64 1282560
  %scevgep7738 = getelementptr i8, ptr %i.i, i64 640
  %broadcast.splatinsert5395.a = insertelement <8 x float> poison, float %i.a, i64 0
  %broadcast.splat5396.a = shufflevector <8 x float> %broadcast.splatinsert5395.a, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.bu = shufflevector <2 x ptr> %i.l, <2 x ptr> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bv = insertelement <8 x ptr> %i.bu, ptr %i.y, i64 5 ; 2 uses
  %i.bw = shufflevector <8 x ptr> %i.bv, <8 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 3, i32 3, i32 5, i32 5, i32 5>
  %i.bx = shufflevector <8 x ptr> %i.bv, <8 x ptr> poison, <4 x i32> <i32 5, i32 5, i32 5, i32 5> ; 2 uses
  %broadcast.splatinsert5257.a = insertelement <8 x float> poison, float %5, i64 0
  %broadcast.splat5258.a = shufflevector <8 x float> %broadcast.splatinsert5257.a, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %invariant.op = sub i32 -7, %i.am
  %broadcast.splatinsert4851 = insertelement <8 x i64> poison, i64 %i.al, i64 0
  %broadcast.splat4852 = shufflevector <8 x i64> %broadcast.splatinsert4851, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %.preheader3944

.preheader3944:                                   ; preds = %.preheader3944.preheader, %._crit_edge4159
  %indvar = phi i32 [ 0, %.preheader3944.preheader ], [ %indvar.next, %._crit_edge4159 ] ; 2 uses
  %indvars.iv4401 = phi i64 [ -16, %.preheader3944.preheader ], [ %indvars.iv.next4402, %._crit_edge4159 ] ; 26 uses
  %indvars.iv4290 = phi i32 [ 8, %.preheader3944.preheader ], [ %indvars.iv.next4291, %._crit_edge4159 ] ; 2 uses
  %indvars.iv4288 = phi i32 [ 144, %.preheader3944.preheader ], [ %indvars.iv.next4289, %._crit_edge4159 ] ; 3 uses
  %smin = tail call i32 @llvm.smin.i32(i32 %indvars.iv4288, i32 %i.af)
  %i.by = shl i32 %indvar, 7
  %i.bz = sub i32 %smin, %i.by
  %i.ca = tail call i32 @llvm.smax.i32(i32 %i.bz, i32 17)
  %smax = zext nneg i32 %i.ca to i64
  %i.cb = mul nuw nsw i64 %smax, 640
  %smin4308 = tail call i32 @llvm.smin.i32(i32 %indvars.iv4288, i32 %i.af)
  %i.cc = add i32 %smin4308, %indvars.iv4290      ; 2 uses
  %i.cd = add nsw i64 %indvars.iv4401, 160        ; 2 uses
  %i.ce = trunc nsw i64 %i.cd to i32
  %i.cf = tail call i32 @llvm.smin.i32(i32 %i.ce, i32 %i.af)
  %i.cg = trunc i64 %indvars.iv4401 to i32        ; 3 uses
  %i.ch = sub nsw i32 %i.cf, %i.cg                ; 18 uses
  %i.ci = icmp sgt i64 %indvars.iv4401, -1        ; 3 uses
  %i.cj = select i1 %i.ci, i32 0, i32 16          ; 3 uses
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
  %i.cs = add nsw i32 %i.ch, -4                   ; 2 uses
  %i.ct = icmp sgt i32 %i.ch, 8
  %i.cu = add nsw i32 %i.ch, -6                   ; 4 uses
  %i.cv = icmp sgt i32 %i.ch, 12
  %i.cw = add nsw i32 %i.ch, -8                   ; 3 uses
  %i.cx = icmp sgt i32 %i.ch, 16                  ; 2 uses
  %i.cy = add nsw i32 %i.ch, -10
  %i.cz = icmp sgt i32 %i.ch, 20
  %i.da = add nsw i32 %i.ch, -12                  ; 3 uses
  %i.db = icmp sgt i32 %i.ch, 24
end_hunk_0
begin_hunk_1_@amaze_demosaic:bb.a
  br i1 %or.cond3, label %.preheader3906, label %.loopexit3929

.preheader3906:                                   ; preds = %.loopexit3931, %.preheader3906
  %indvars.iv4251 = phi i64 [ %indvars.iv.next4252, %.preheader3906 ], [ 0, %.loopexit3931 ] ; 3 uses
  %i.deg = trunc nuw nsw i64 %indvars.iv4251 to i32
  %i.deh = sub i32 %i.ah, %i.deg
  %i.dei = mul nsw i32 %i.deh, %2                 ; 16 uses
  %reass.sub = add i32 %i.dei, 32
  %i.dej = add nsw i64 %indvars.iv4251, %i.di
  %i.dek = mul nsw i64 %i.dej, 160                ; 17 uses
  %i.del = sext i32 %reass.sub to i64
  %i.dem = getelementptr inbounds [4 x i8], ptr %0, i64 %i.del
  %i.den = load float, ptr %i.dem, align 4, !tbaa !289 ; 2 uses
  %i.deo = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.dek
  store float %i.den, ptr %i.deo, align 64, !tbaa !289
  %i.dep = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.dek
  store float %i.den, ptr %i.dep, align 64, !tbaa !289
  %i.deq = add i32 %i.dei, 31
  %i.der = sext i32 %i.deq to i64
  %i.des = getelementptr inbounds [4 x i8], ptr %0, i64 %i.der
  %i.det = load float, ptr %i.des, align 4, !tbaa !289 ; 2 uses
  %i.deu = or disjoint i64 %i.dek, 1              ; 2 uses
  %i.dev = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.deu
  store float %i.det, ptr %i.dev, align 4, !tbaa !289
  %i.dew = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.deu
  store float %i.det, ptr %i.dew, align 4, !tbaa !289
  %i.dex = add i32 %i.dei, 30
  %i.dey = sext i32 %i.dex to i64
  %i.dez = getelementptr inbounds [4 x i8], ptr %0, i64 %i.dey
  %i.dfa = load float, ptr %i.dez, align 4, !tbaa !289 ; 2 uses
  %i.dfb = or disjoint i64 %i.dek, 2              ; 2 uses
  %i.dfc = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.dfb
  store float %i.dfa, ptr %i.dfc, align 8, !tbaa !289
  %i.dfd = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.dfb
  store float %i.dfa, ptr %i.dfd, align 8, !tbaa !289
  %i.dfe = add i32 %i.dei, 29
  %i.dff = sext i32 %i.dfe to i64
  %i.dfg = getelementptr inbounds [4 x i8], ptr %0, i64 %i.dff
  %i.dfh = load float, ptr %i.dfg, align 4, !tbaa !289 ; 2 uses
  %i.dfi = or disjoint i64 %i.dek, 3              ; 2 uses
  %i.dfj = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.dfi
  store float %i.dfh, ptr %i.dfj, align 4, !tbaa !289
  %i.dfk = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.dfi
  store float %i.dfh, ptr %i.dfk, align 4, !tbaa !289
  %i.dfl = add i32 %i.dei, 28
  %i.dfm = sext i32 %i.dfl to i64
  %i.dfn = getelementptr inbounds [4 x i8], ptr %0, i64 %i.dfm
  %i.dfo = load float, ptr %i.dfn, align 4, !tbaa !289 ; 2 uses
  %i.dfp = or disjoint i64 %i.dek, 4              ; 2 uses
  %i.dfq = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.dfp
  store float %i.dfo, ptr %i.dfq, align 16, !tbaa !289
  %i.dfr = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.dfp
  store float %i.dfo, ptr %i.dfr, align 16, !tbaa !289
  %i.dfs = add i32 %i.dei, 27
  %i.dft = sext i32 %i.dfs to i64
  %i.dfu = getelementptr inbounds [4 x i8], ptr %0, i64 %i.dft
  %i.dfv = load float, ptr %i.dfu, align 4, !tbaa !289 ; 2 uses
  %i.dfw = or disjoint i64 %i.dek, 5              ; 2 uses
  %i.dfx = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.dfw
  store float %i.dfv, ptr %i.dfx, align 4, !tbaa !289
  %i.dfy = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.dfw
  store float %i.dfv, ptr %i.dfy, align 4, !tbaa !289
  %i.dfz = add i32 %i.dei, 26
  %i.dga = sext i32 %i.dfz to i64
  %i.dgb = getelementptr inbounds [4 x i8], ptr %0, i64 %i.dga
  %i.dgc = load float, ptr %i.dgb, align 4, !tbaa !289 ; 2 uses
  %i.dgd = or disjoint i64 %i.dek, 6              ; 2 uses
  %i.dge = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.dgd
  store float %i.dgc, ptr %i.dge, align 8, !tbaa !289
  %i.dgf = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.dgd
  store float %i.dgc, ptr %i.dgf, align 8, !tbaa !289
  %i.dgg = add i32 %i.dei, 25
  %i.dgh = sext i32 %i.dgg to i64
  %i.dgi = getelementptr inbounds [4 x i8], ptr %0, i64 %i.dgh
  %i.dgj = load float, ptr %i.dgi, align 4, !tbaa !289 ; 2 uses
  %i.dgk = or disjoint i64 %i.dek, 7              ; 2 uses
  %i.dgl = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.dgk
  store float %i.dgj, ptr %i.dgl, align 4, !tbaa !289
  %i.dgm = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.dgk
  store float %i.dgj, ptr %i.dgm, align 4, !tbaa !289
  %i.dgn = add i32 %i.dei, 24
  %i.dgo = sext i32 %i.dgn to i64
  %i.dgp = getelementptr inbounds [4 x i8], ptr %0, i64 %i.dgo
  %i.dgq = load float, ptr %i.dgp, align 4, !tbaa !289 ; 2 uses
  %i.dgr = or disjoint i64 %i.dek, 8              ; 2 uses
  %i.dgs = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.dgr
  store float %i.dgq, ptr %i.dgs, align 32, !tbaa !289
  %i.dgt = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.dgr
  store float %i.dgq, ptr %i.dgt, align 32, !tbaa !289
  %i.dgu = add i32 %i.dei, 23
  %i.dgv = sext i32 %i.dgu to i64
  %i.dgw = getelementptr inbounds [4 x i8], ptr %0, i64 %i.dgv
  %i.dgx = load float, ptr %i.dgw, align 4, !tbaa !289 ; 2 uses
  %i.dgy = or disjoint i64 %i.dek, 9              ; 2 uses
  %i.dgz = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.dgy
  store float %i.dgx, ptr %i.dgz, align 4, !tbaa !289
  %i.dha = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.dgy
  store float %i.dgx, ptr %i.dha, align 4, !tbaa !289
  %i.dhb = add i32 %i.dei, 22
  %i.dhc = sext i32 %i.dhb to i64
  %i.dhd = getelementptr inbounds [4 x i8], ptr %0, i64 %i.dhc
  %i.dhe = load float, ptr %i.dhd, align 4, !tbaa !289 ; 2 uses
  %i.dhf = or disjoint i64 %i.dek, 10             ; 2 uses
  %i.dhg = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.dhf
  store float %i.dhe, ptr %i.dhg, align 8, !tbaa !289
  %i.dhh = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.dhf
  store float %i.dhe, ptr %i.dhh, align 8, !tbaa !289
  %i.dhi = add i32 %i.dei, 21
  %i.dhj = sext i32 %i.dhi to i64
  %i.dhk = getelementptr inbounds [4 x i8], ptr %0, i64 %i.dhj
  %i.dhl = load float, ptr %i.dhk, align 4, !tbaa !289 ; 2 uses
  %i.dhm = or disjoint i64 %i.dek, 11             ; 2 uses
  %i.dhn = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.dhm
  store float %i.dhl, ptr %i.dhn, align 4, !tbaa !289
  %i.dho = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.dhm
  store float %i.dhl, ptr %i.dho, align 4, !tbaa !289
  %i.dhp = add i32 %i.dei, 20
  %i.dhq = sext i32 %i.dhp to i64
  %i.dhr = getelementptr inbounds [4 x i8], ptr %0, i64 %i.dhq
  %i.dhs = load float, ptr %i.dhr, align 4, !tbaa !289 ; 2 uses
  %i.dht = or disjoint i64 %i.dek, 12             ; 2 uses
  %i.dhu = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.dht
  store float %i.dhs, ptr %i.dhu, align 16, !tbaa !289
  %i.dhv = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.dht
  store float %i.dhs, ptr %i.dhv, align 16, !tbaa !289
  %i.dhw = add i32 %i.dei, 19
  %i.dhx = sext i32 %i.dhw to i64
  %i.dhy = getelementptr inbounds [4 x i8], ptr %0, i64 %i.dhx
  %i.dhz = load float, ptr %i.dhy, align 4, !tbaa !289 ; 2 uses
  %i.dia = or disjoint i64 %i.dek, 13             ; 2 uses
  %i.dib = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.dia
  store float %i.dhz, ptr %i.dib, align 4, !tbaa !289
  %i.dic = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.dia
  store float %i.dhz, ptr %i.dic, align 4, !tbaa !289
  %i.did = add i32 %i.dei, 18
  %i.die = sext i32 %i.did to i64
  %i.dif = getelementptr inbounds [4 x i8], ptr %0, i64 %i.die
  %i.dig = load float, ptr %i.dif, align 4, !tbaa !289 ; 2 uses
  %i.dih = or disjoint i64 %i.dek, 14             ; 2 uses
  %i.dii = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.dih
  store float %i.dig, ptr %i.dii, align 8, !tbaa !289
  %i.dij = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.dih
  store float %i.dig, ptr %i.dij, align 8, !tbaa !289
  %i.dik = add i32 %i.dei, 17
  %i.dil = sext i32 %i.dik to i64
  %i.dim = getelementptr inbounds [4 x i8], ptr %0, i64 %i.dil
  %i.din = load float, ptr %i.dim, align 4, !tbaa !289 ; 2 uses
  %i.dio = or disjoint i64 %i.dek, 15             ; 2 uses
  %i.dip = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.dio
  store float %i.din, ptr %i.dip, align 4, !tbaa !289
  %i.diq = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.dio
  store float %i.din, ptr %i.diq, align 4, !tbaa !289
  %indvars.iv.next4252 = add nuw nsw i64 %indvars.iv4251, 1 ; 2 uses
  %exitcond4254.not = icmp eq i64 %indvars.iv.next4252, 16
  br i1 %exitcond4254.not, label %.loopexit3929, label %.preheader3906, !llvm.loop !216

.loopexit3929:                                    ; preds = %.preheader3906, %.loopexit3931
  br i1 %i.cr, label %.lr.ph3983, label %.preheader3915

.lr.ph3983:                                       ; preds = %.loopexit3929
  %i.dir = add nsw i32 %i.hu, -2
  %i.dis = icmp sgt i32 %i.hu, 4
  br i1 %i.dis, label %.lr.ph3979.preheader, label %.preheader3927

.lr.ph3979.preheader:                             ; preds = %.lr.ph3983
  %i.dit = mul nsw i32 %indvar4839, -128
  %i.diu = or disjoint i32 %i.dit, 12
  %i.div = add i32 %i.hs, %i.diu                  ; 2 uses
  %i.diw = zext i32 %i.div to i64                 ; 2 uses
  %min.iters.check5440 = icmp ult i32 %i.div, 8
  %n.vec5442 = and i64 %i.diw, 4294967288         ; 4 uses
  %i.dix = trunc nuw i64 %n.vec5442 to i32
  %i.diy = or disjoint i32 %i.dix, 2
  %cmp.n5458 = icmp eq i64 %n.vec5442, %i.diw
  br label %.lr.ph3979

.preheader3927:                                   ; preds = %._crit_edge3980, %.lr.ph3983
  br i1 %i.ct, label %.lr.ph3991, label %.preheader3915

.lr.ph3991:                                       ; preds = %.preheader3927
  %i.diz = add nsw i32 %i.hu, -4
  %i.dja = icmp sgt i32 %i.hu, 8
  br i1 %i.dja, label %.lr.ph3988.preheader, label %.preheader3925

.lr.ph3988.preheader:                             ; preds = %.lr.ph3991
  %i.djb = mul nsw i32 %indvar4839, -128
  %i.djc = or disjoint i32 %i.djb, 8
  %i.djd = add i32 %i.hs, %i.djc                  ; 2 uses
  %i.dje = zext i32 %i.djd to i64                 ; 2 uses
  %min.iters.check5392 = icmp ult i32 %i.djd, 8
  %n.vec5394 = and i64 %i.dje, 4294967288         ; 4 uses
  %i.djf = trunc nuw i64 %n.vec5394 to i32
  %i.djg = or disjoint i32 %i.djf, 4
  %cmp.n5434 = icmp eq i64 %n.vec5394, %i.dje
  br label %.lr.ph3988

.lr.ph3979:                                       ; preds = %.lr.ph3979.preheader, %._crit_edge3980
  %indvars.iv4255 = phi i32 [ %indvars.iv.next4256, %._crit_edge3980 ], [ 320, %.lr.ph3979.preheader ] ; 2 uses
  %.032363981 = phi i32 [ %i.dku, %._crit_edge3980 ], [ 2, %.lr.ph3979.preheader ]
  %i.djh = or disjoint i32 %indvars.iv4255, 2
  %i.dji = zext i32 %i.djh to i64                 ; 3 uses
  br i1 %min.iters.check5440, label %scalar.ph5439.preheader, label %vector.ph5441

vector.ph5441:                                    ; preds = %.lr.ph3979
  %i.djj = add nuw nsw i64 %n.vec5442, %i.dji
  br label %vector.body5443

vector.body5443:                                  ; preds = %vector.body5443, %vector.ph5441
  %index5444 = phi i64 [ 0, %vector.ph5441 ], [ %index.next5455, %vector.body5443 ] ; 2 uses
  %i.djk = add nuw i64 %index5444, %i.dji         ; 5 uses
  %i.djl = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.djk
  %i.djm = getelementptr inbounds nuw i8, ptr %i.djl, i64 4
  %wide.load5447.a = load <8 x float>, ptr %i.djm, align 4, !tbaa !289
  %i.djn = getelementptr [4 x i8], ptr %i.y, i64 %i.djk ; 8 uses
  %i.djo = getelementptr i8, ptr %i.djn, i64 -4
  %wide.load5448.a = load <8 x float>, ptr %i.djo, align 4, !tbaa !289
  %i.djp = fsub reassoc nsz arcp contract afn <8 x float> %wide.load5447.a, %wide.load5448.a ; 3 uses
  %i.djq = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.djp)
  %i.djr = getelementptr inbounds nuw i8, ptr %i.djn, i64 640
  %wide.load5449.a = load <8 x float>, ptr %i.djr, align 8, !tbaa !289
  %i.djs = getelementptr i8, ptr %i.djn, i64 -640
  %wide.load5450.a = load <8 x float>, ptr %i.djs, align 8, !tbaa !289
  %i.djt = fsub reassoc nsz arcp contract afn <8 x float> %wide.load5449.a, %wide.load5450.a ; 3 uses
  %i.dju = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.djt)
  %i.djv = getelementptr inbounds nuw i8, ptr %i.djn, i64 1280
  %wide.load5447 = load <8 x float>, ptr %i.djv, align 8, !tbaa !289
  %wide.load5451.a = load <8 x float>, ptr %i.djn, align 8, !tbaa !289 ; 4 uses
  %i.djw = fsub reassoc nsz arcp contract afn <8 x float> %wide.load5447, %wide.load5451.a
  %i.djx = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.djw)
  %i.djy = getelementptr i8, ptr %i.djn, i64 -1280
  %wide.load5452 = load <8 x float>, ptr %i.djy, align 8, !tbaa !289
  %i.djz = fsub reassoc nsz arcp contract afn <8 x float> %wide.load5451.a, %wide.load5452
  %i.dka = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.djz)
  %i.dkb = fadd reassoc nsz arcp contract afn <8 x float> %i.dju, splat (float f0x3727C5AC)
  %i.dkc = fadd reassoc nsz arcp contract afn <8 x float> %i.dkb, %i.djx
  %i.dkd = fadd reassoc nsz arcp contract afn <8 x float> %i.dkc, %i.dka
  %i.dke = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.djk
  store <8 x float> %i.dkd, ptr %i.dke, align 8, !tbaa !289
  %i.dkf = getelementptr inbounds nuw i8, ptr %i.djn, i64 8
  %wide.load5453 = load <8 x float>, ptr %i.dkf, align 16, !tbaa !289
  %i.dkg = fsub reassoc nsz arcp contract afn <8 x float> %wide.load5453, %wide.load5451.a
  %i.dkh = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.dkg)
  %i.dki = getelementptr i8, ptr %i.djn, i64 -8
  %wide.load5454 = load <8 x float>, ptr %i.dki, align 32, !tbaa !289
  %i.dkj = fsub reassoc nsz arcp contract afn <8 x float> %wide.load5451.a, %wide.load5454
  %i.dkk = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.dkj)
  %i.dkl = fadd reassoc nsz arcp contract afn <8 x float> %i.djq, splat (float f0x3727C5AC)
  %i.dkm = fadd reassoc nsz arcp contract afn <8 x float> %i.dkl, %i.dkh
  %i.dkn = fadd reassoc nsz arcp contract afn <8 x float> %i.dkm, %i.dkk
  %i.dko = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.djk
  store <8 x float> %i.dkn, ptr %i.dko, align 8, !tbaa !289
  %i.dkp = fmul reassoc nsz arcp contract afn <8 x float> %i.djp, %i.djp
  %i.dkq = fmul reassoc nsz arcp contract afn <8 x float> %i.djt, %i.djt
  %i.dkr = fadd reassoc nsz arcp contract afn <8 x float> %i.dkq, %i.dkp
  %i.dks = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.djk
  store <8 x float> %i.dkr, ptr %i.dks, align 8, !tbaa !289
  %index.next5455 = add nuw i64 %index5444, 8     ; 2 uses
  %i.dkt = icmp eq i64 %index.next5455, %n.vec5442
  br i1 %i.dkt, label %middle.block5456, label %vector.body5443, !llvm.loop !217

middle.block5456:                                 ; preds = %vector.body5443
  br i1 %cmp.n5458, label %._crit_edge3980, label %scalar.ph5439.preheader

scalar.ph5439.preheader:                          ; preds = %.lr.ph3979, %middle.block5456
  %indvars.iv4257.ph = phi i64 [ %i.dji, %.lr.ph3979 ], [ %i.djj, %middle.block5456 ]
  %.032353976.ph = phi i32 [ 2, %.lr.ph3979 ], [ %i.diy, %middle.block5456 ]
  br label %scalar.ph5439

._crit_edge3980:                                  ; preds = %scalar.ph5439, %middle.block5456
  %i.dku = add nuw nsw i32 %.032363981, 1         ; 2 uses
  %i.dkv = icmp slt i32 %i.dku, %i.cq
  %indvars.iv.next4256 = add i32 %indvars.iv4255, 160
  br i1 %i.dkv, label %.lr.ph3979, label %.preheader3927, !llvm.loop !218

scalar.ph5439:                                    ; preds = %scalar.ph5439.preheader, %scalar.ph5439
  %indvars.iv4257 = phi i64 [ %indvars.iv.next4258, %scalar.ph5439 ], [ %indvars.iv4257.ph, %scalar.ph5439.preheader ] ; 5 uses
  %.032353976 = phi i32 [ %i.dml, %scalar.ph5439 ], [ %.032353976.ph, %scalar.ph5439.preheader ]
  %indvars.iv.next4258 = add nuw nsw i64 %indvars.iv4257, 1 ; 2 uses
  %i.dkw = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.next4258
  %i.dkx = load float, ptr %i.dkw, align 4, !tbaa !289
  %i.dky = getelementptr [4 x i8], ptr %i.y, i64 %indvars.iv4257 ; 8 uses
  %i.dkz = getelementptr i8, ptr %i.dky, i64 -4
  %i.dla = load float, ptr %i.dkz, align 4, !tbaa !289
  %i.dlb = fsub reassoc nsz arcp contract afn float %i.dkx, %i.dla ; 3 uses
  %i.dlc = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.dlb)
  %i.dld = getelementptr inbounds nuw i8, ptr %i.dky, i64 640
  %i.dle = load float, ptr %i.dld, align 4, !tbaa !289
  %i.dlf = getelementptr i8, ptr %i.dky, i64 -640
  %i.dlg = load float, ptr %i.dlf, align 4, !tbaa !289
  %i.dlh = fsub reassoc nsz arcp contract afn float %i.dle, %i.dlg ; 3 uses
  %i.dli = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.dlh)
  %i.dlj = getelementptr inbounds nuw i8, ptr %i.dky, i64 1280
  %6 = load float, ptr %i.dlj, align 4, !tbaa !289
  %i.dlk = load float, ptr %i.dky, align 4, !tbaa !289 ; 4 uses
  %i.dll = fsub reassoc nsz arcp contract afn float %6, %i.dlk
  %i.dlm = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.dll)
  %i.dln = getelementptr i8, ptr %i.dky, i64 -1280
  %i.dlo = load float, ptr %i.dln, align 4, !tbaa !289
  %i.dlp = fsub reassoc nsz arcp contract afn float %i.dlk, %i.dlo
  %i.dlq = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.dlp)
  %i.dlr = fadd reassoc nsz arcp contract afn float %i.dli, f0x3727C5AC
  %i.dls = fadd reassoc nsz arcp contract afn float %i.dlr, %i.dlm
  %i.dlt = fadd reassoc nsz arcp contract afn float %i.dls, %i.dlq
  %i.dlu = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv4257
  store float %i.dlt, ptr %i.dlu, align 4, !tbaa !289
  %i.dlv = getelementptr inbounds nuw i8, ptr %i.dky, i64 8
  %i.dlw = load float, ptr %i.dlv, align 4, !tbaa !289
  %i.dlx = fsub reassoc nsz arcp contract afn float %i.dlw, %i.dlk
  %i.dly = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.dlx)
  %i.dlz = getelementptr i8, ptr %i.dky, i64 -8
  %i.dma = load float, ptr %i.dlz, align 4, !tbaa !289
  %i.dmb = fsub reassoc nsz arcp contract afn float %i.dlk, %i.dma
  %i.dmc = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.dmb)
  %i.dmd = fadd reassoc nsz arcp contract afn float %i.dlc, f0x3727C5AC
  %i.dme = fadd reassoc nsz arcp contract afn float %i.dmd, %i.dly
  %i.dmf = fadd reassoc nsz arcp contract afn float %i.dme, %i.dmc
  %i.dmg = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv4257
  store float %i.dmf, ptr %i.dmg, align 4, !tbaa !289
  %i.dmh = fmul reassoc nsz arcp contract afn float %i.dlb, %i.dlb
  %i.dmi = fmul reassoc nsz arcp contract afn float %i.dlh, %i.dlh
  %i.dmj = fadd reassoc nsz arcp contract afn float %i.dmi, %i.dmh
  %i.dmk = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv4257
  store float %i.dmj, ptr %i.dmk, align 4, !tbaa !289
  %i.dml = add nuw nsw i32 %.032353976, 1         ; 2 uses
  %i.dmm = icmp slt i32 %i.dml, %i.dir
  br i1 %i.dmm, label %scalar.ph5439, label %._crit_edge3980, !llvm.loop !219

.lr.ph3999:                                       ; preds = %._crit_edge3989
  %i.dmn = add nsw i32 %i.hu, -4
  br label %.lr.ph3996

.lr.ph3988:                                       ; preds = %.lr.ph3988.preheader, %._crit_edge3989
  %indvars.iv4260 = phi i32 [ %indvars.iv.next4261, %._crit_edge3989 ], [ 640, %.lr.ph3988.preheader ] ; 2 uses
  %.032333990 = phi i32 [ %i.dsx, %._crit_edge3989 ], [ 4, %.lr.ph3988.preheader ] ; 2 uses
  %i.dmo = or disjoint i32 %indvars.iv4260, 4
  %i.dmp = sext i32 %i.dmo to i64                 ; 5 uses
  %i.dmq = shl i32 %.032333990, 2
  %i.dmr = and i32 %i.dmq, 28
  %i.dms = lshr i32 %4, %i.dmr
  %i.dmt = trunc i32 %i.dms to i1                 ; 2 uses
  %.phi.trans.insert4411.a = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.dmp
  %.pre4412.a = load float, ptr %.phi.trans.insert4411.a, align 16, !tbaa !289 ; 2 uses
  %.phi.trans.insert4413 = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.dmp
  %.pre4414.a = load float, ptr %.phi.trans.insert4413, align 16, !tbaa !289 ; 2 uses
  br i1 %min.iters.check5392, label %scalar.ph5391.preheader, label %vector.ph5393

vector.ph5393:                                    ; preds = %.lr.ph3988
  %i.dmu = add nsw i64 %n.vec5394, %i.dmp
  %broadcast.splatinsert5397 = insertelement <8 x i1> poison, i1 %i.dmt, i64 0
  %broadcast.splat5398 = shufflevector <8 x i1> %broadcast.splatinsert5397, <8 x i1> poison, <8 x i32> zeroinitializer
  %induction5399 = xor <8 x i1> %broadcast.splat5398, <i1 false, i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true> ; 4 uses
  %vector.recur.init = insertelement <8 x float> poison, float %.pre4414.a, i64 7
  %vector.recur.init5402 = insertelement <8 x float> poison, float %.pre4412.a, i64 7
  br label %vector.body5400

vector.body5400:                                  ; preds = %vector.body5400, %vector.ph5393
  %index5401 = phi i64 [ 0, %vector.ph5393 ], [ %index.next5431, %vector.body5400 ] ; 2 uses
  %vector.recur = phi <8 x float> [ %vector.recur.init, %vector.ph5393 ], [ %wide.load5419.a, %vector.body5400 ]
  %vector.recur5403 = phi <8 x float> [ %vector.recur.init5402, %vector.ph5393 ], [ %wide.load5415.a, %vector.body5400 ]
  %i.dmv = add nuw i64 %index5401, %i.dmp         ; 16 uses
  %i.dmw = add nsw i64 %i.dmv, -160               ; 2 uses
  %i.dmx = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.dmw
  %wide.load5405.a = load <8 x float>, ptr %i.dmx, align 16, !tbaa !289 ; 2 uses
  %i.dmy = add nsw i64 %i.dmv, -320               ; 2 uses
  %i.dmz = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.dmy
  %wide.load5406.a = load <8 x float>, ptr %i.dmz, align 16, !tbaa !289 ; 2 uses
  %i.dna = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.dmv
  %wide.load5407.a = load <8 x float>, ptr %i.dna, align 16, !tbaa !289 ; 4 uses
  %i.dnb = fadd reassoc nsz arcp contract afn <8 x float> %wide.load5407.a, %wide.load5406.a
  %i.dnc = fmul reassoc nsz arcp contract afn <8 x float> %i.dnb, %wide.load5405.a
  %i.dnd = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.dmv
  %i.dne = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.dmy
  %wide.load5408.a = load <8 x float>, ptr %i.dne, align 16, !tbaa !289 ; 2 uses
  %i.dnf = fadd reassoc nsz arcp contract afn <8 x float> %wide.load5408.a, splat (float f0x3727C5AC)
  %i.dng = fmul reassoc nsz arcp contract afn <8 x float> %i.dnf, %wide.load5407.a
  %i.dnh = add nuw nsw i64 %i.dmv, 160            ; 2 uses
  %i.dni = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.dnh
  %wide.load5409.a = load <8 x float>, ptr %i.dni, align 16, !tbaa !289 ; 2 uses
  %i.dnj = add nuw nsw i64 %i.dmv, 320            ; 2 uses
  %i.dnk = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.dnj
  %wide.load5410.a = load <8 x float>, ptr %i.dnk, align 16, !tbaa !289 ; 2 uses
  %i.dnl = fadd reassoc nsz arcp contract afn <8 x float> %wide.load5410.a, %wide.load5407.a
  %i.dnm = fmul reassoc nsz arcp contract afn <8 x float> %i.dnl, %wide.load5409.a
  %i.dnn = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.dnj
  %wide.load5411.a = load <8 x float>, ptr %i.dnn, align 16, !tbaa !289 ; 2 uses
  %i.dno = fadd reassoc nsz arcp contract afn <8 x float> %wide.load5411.a, splat (float f0x3727C5AC)
  %i.dnp = fmul reassoc nsz arcp contract afn <8 x float> %i.dno, %wide.load5407.a
  %i.dnq = add nsw i64 %i.dmv, -1                 ; 2 uses
  %i.dnr = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.dnq
  %wide.load5412.a = load <8 x float>, ptr %i.dnr, align 4, !tbaa !289 ; 2 uses
  %i.dns = add nsw i64 %i.dmv, -2                 ; 2 uses
  %i.dnt = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.dns
  %wide.load5413.a = load <8 x float>, ptr %i.dnt, align 8, !tbaa !289 ; 2 uses
  %i.dnu = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.dns
  %wide.load5414.a = load <8 x float>, ptr %i.dnu, align 8, !tbaa !289 ; 2 uses
  %i.dnv = fadd reassoc nsz arcp contract afn <8 x float> %wide.load5414.a, splat (float f0x3727C5AC)
  %i.dnw = or disjoint i64 %i.dmv, 1              ; 2 uses
  %i.dnx = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.dnw
  %wide.load5415.a = load <8 x float>, ptr %i.dnx, align 4, !tbaa !289 ; 5 uses
  %i.dny = shufflevector <8 x float> %vector.recur5403, <8 x float> %wide.load5415.a, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14> ; 17 uses
  %i.dnz = fadd reassoc nsz arcp contract afn <8 x float> %i.dny, splat (float f0x3727C5AC) ; 4 uses
  %i.doa = fmul reassoc nsz arcp contract afn <8 x float> %i.dnz, %wide.load5406.a
  %i.dob = fadd reassoc nsz arcp contract afn <8 x float> %i.dng, %i.doa
  %i.doc = fdiv reassoc nsz arcp contract afn <8 x float> %i.dnc, %i.dob ; 2 uses
  %i.dod = fmul reassoc nsz arcp contract afn <8 x float> %wide.load5410.a, %i.dnz
  %i.doe = fadd reassoc nsz arcp contract afn <8 x float> %i.dnp, %i.dod
  %i.dof = fdiv reassoc nsz arcp contract afn <8 x float> %i.dnm, %i.doe ; 2 uses
  %i.dog = fmul reassoc nsz arcp contract afn <8 x float> %wide.load5413.a, %i.dnz
  %i.doh = or disjoint i64 %i.dmv, 2              ; 2 uses
  %i.doi = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.doh
  %wide.load5416.a = load <8 x float>, ptr %i.doi, align 8, !tbaa !289 ; 2 uses
  %i.doj = fmul reassoc nsz arcp contract afn <8 x float> %wide.load5416.a, %i.dnz
  %i.dok = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.doh
  %wide.load5417.a = load <8 x float>, ptr %i.dok, align 8, !tbaa !289 ; 2 uses
  %i.dol = fadd reassoc nsz arcp contract afn <8 x float> %wide.load5417.a, splat (float f0x3727C5AC)
  %i.dom = fsub reassoc nsz arcp contract afn <8 x float> %i.dny, %wide.load5408.a ; 3 uses
  %i.don = fcmp oeq <8 x float> %i.dom, zeroinitializer
  %i.doo = bitcast <8 x float> %i.dom to <8 x i32>
  %i.dop = add <8 x i32> %i.doo, splat (i32 -8388608)
  %i.doq = bitcast <8 x i32> %i.dop to <8 x float>
  %i.dor = select nsz <8 x i1> %i.don, <8 x float> %i.dom, <8 x float> %i.doq
  %i.dos = fadd reassoc nsz arcp contract afn <8 x float> %i.dor, %wide.load5405.a ; 4 uses
  %i.dot = fsub reassoc nsz arcp contract afn <8 x float> %i.dny, %wide.load5411.a ; 3 uses
  %i.dou = fcmp oeq <8 x float> %i.dot, zeroinitializer
  %i.dov = bitcast <8 x float> %i.dot to <8 x i32>
  %i.dow = add <8 x i32> %i.dov, splat (i32 -8388608)
  %i.dox = bitcast <8 x i32> %i.dow to <8 x float>
  %i.doy = select nsz <8 x i1> %i.dou, <8 x float> %i.dot, <8 x float> %i.dox
  %i.doz = fadd reassoc nsz arcp contract afn <8 x float> %i.doy, %wide.load5409.a ; 4 uses
  %i.dpa = fsub reassoc nsz arcp contract afn <8 x float> %i.dny, %wide.load5414.a ; 3 uses
  %i.dpb = fcmp oeq <8 x float> %i.dpa, zeroinitializer
  %i.dpc = bitcast <8 x float> %i.dpa to <8 x i32>
  %i.dpd = add <8 x i32> %i.dpc, splat (i32 -8388608)
  %i.dpe = bitcast <8 x i32> %i.dpd to <8 x float>
  %i.dpf = select nsz <8 x i1> %i.dpb, <8 x float> %i.dpa, <8 x float> %i.dpe
  %i.dpg = fadd reassoc nsz arcp contract afn <8 x float> %i.dpf, %wide.load5412.a ; 4 uses
  %i.dph = fsub reassoc nsz arcp contract afn <8 x float> %i.dny, %wide.load5417.a ; 3 uses
  %i.dpi = fcmp oeq <8 x float> %i.dph, zeroinitializer
  %i.dpj = bitcast <8 x float> %i.dph to <8 x i32>
  %i.dpk = add <8 x i32> %i.dpj, splat (i32 -8388608)
  %i.dpl = bitcast <8 x i32> %i.dpk to <8 x float>
  %i.dpm = select nsz <8 x i1> %i.dpi, <8 x float> %i.dph, <8 x float> %i.dpl
  %i.dpn = fadd reassoc nsz arcp contract afn <8 x float> %i.dpm, %wide.load5415.a ; 4 uses
  %i.dpo = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.doc
  %i.dpp = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.dpo)
  %i.dpq = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.dpp, splat (float 7.500000e-01)
  %i.dpr = fmul reassoc nsz arcp contract afn <8 x float> %i.doc, %i.dny
  %i.dps = select nsz <8 x i1> %i.dpq, <8 x float> %i.dpr, <8 x float> %i.dos ; 2 uses
  %i.dpt = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.dof
  %i.dpu = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.dpt)
  %i.dpv = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.dpu, splat (float 7.500000e-01)
  %i.dpw = fmul reassoc nsz arcp contract afn <8 x float> %i.dof, %i.dny
  %i.dpx = select nsz <8 x i1> %i.dpv, <8 x float> %i.dpw, <8 x float> %i.doz ; 2 uses
  %i.dpy = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.dnq
  %wide.load5418.a = load <8 x float>, ptr %i.dpy, align 4, !tbaa !289 ; 2 uses
  %i.dpz = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.dnw
  %wide.load5419.a = load <8 x float>, ptr %i.dpz, align 4, !tbaa !289 ; 4 uses
  %i.dqa = shufflevector <8 x float> %vector.recur, <8 x float> %wide.load5419.a, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14> ; 4 uses
  %i.dqb = fadd reassoc nsz arcp contract afn <8 x float> %i.dqa, %wide.load5413.a
  %i.dqc = fmul reassoc nsz arcp contract afn <8 x float> %i.dqb, %wide.load5412.a
  %i.dqd = fmul reassoc nsz arcp contract afn <8 x float> %i.dnv, %i.dqa
  %i.dqe = fadd reassoc nsz arcp contract afn <8 x float> %i.dqd, %i.dog
  %i.dqf = fdiv reassoc nsz arcp contract afn <8 x float> %i.dqc, %i.dqe ; 2 uses
  %i.dqg = fadd reassoc nsz arcp contract afn <8 x float> %wide.load5416.a, %i.dqa
  %i.dqh = fmul reassoc nsz arcp contract afn <8 x float> %i.dqg, %wide.load5415.a
  %i.dqi = fmul reassoc nsz arcp contract afn <8 x float> %i.dol, %i.dqa
  %i.dqj = fadd reassoc nsz arcp contract afn <8 x float> %i.dqi, %i.doj
  %i.dqk = fdiv reassoc nsz arcp contract afn <8 x float> %i.dqh, %i.dqj ; 2 uses
  %i.dql = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.dqf
  %i.dqm = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.dql)
  %i.dqn = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.dqm, splat (float 7.500000e-01)
  %i.dqo = fmul reassoc nsz arcp contract afn <8 x float> %i.dqf, %i.dny
  %i.dqp = select nsz <8 x i1> %i.dqn, <8 x float> %i.dqo, <8 x float> %i.dpg ; 2 uses
  %i.dqq = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.dqk
  %i.dqr = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.dqq)
  %i.dqs = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.dqr, splat (float 7.500000e-01)
  %i.dqt = fmul reassoc nsz arcp contract afn <8 x float> %i.dqk, %i.dny
  %i.dqu = select nsz <8 x i1> %i.dqs, <8 x float> %i.dqt, <8 x float> %i.dpn ; 2 uses
  %i.dqv = fadd reassoc nsz arcp contract afn <8 x float> %wide.load5419.a, %wide.load5418.a
  %i.dqw = fdiv reassoc nsz arcp contract afn <8 x float> %wide.load5418.a, %i.dqv ; 3 uses
  %i.dqx = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.dmw
  %wide.load5420 = load <8 x float>, ptr %i.dqx, align 16, !tbaa !289 ; 2 uses
  %i.dqy = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.dnh
  %wide.load5421 = load <8 x float>, ptr %i.dqy, align 16, !tbaa !289
  %i.dqz = fadd reassoc nsz arcp contract afn <8 x float> %wide.load5421, %wide.load5420
  %i.dra = fdiv reassoc nsz arcp contract afn <8 x float> %wide.load5420, %i.dqz ; 3 uses
  %i.drb = fmul reassoc nsz arcp contract afn <8 x float> %i.dra, %i.doz
  %i.drc = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.dra ; 2 uses
  %i.drd = fmul reassoc nsz arcp contract afn <8 x float> %i.drc, %i.dos
  %i.dre = fadd reassoc nsz arcp contract afn <8 x float> %i.drd, %i.drb ; 3 uses
  %i.drf = fmul reassoc nsz arcp contract afn <8 x float> %i.dpn, %i.dqw
  %i.drg = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.dqw ; 2 uses
  %i.drh = fmul reassoc nsz arcp contract afn <8 x float> %i.drg, %i.dpg
  %i.dri = fadd reassoc nsz arcp contract afn <8 x float> %i.drf, %i.drh ; 3 uses
  %i.drj = fmul reassoc nsz arcp contract afn <8 x float> %i.dra, %i.dpx ; 2 uses
  %i.drk = fmul reassoc nsz arcp contract afn <8 x float> %i.drc, %i.dps ; 2 uses
  %i.drl = fsub reassoc nsz arcp contract afn <8 x float> %i.drj, %i.dny
  %i.drm = fadd reassoc nsz arcp contract afn <8 x float> %i.drl, %i.drk
  %i.drn = fmul reassoc nsz arcp contract afn <8 x float> %i.dqu, %i.dqw ; 2 uses
  %i.dro = fmul reassoc nsz arcp contract afn <8 x float> %i.drg, %i.dqp ; 2 uses
  %i.drp = fsub reassoc nsz arcp contract afn <8 x float> %i.dro, %i.dny
  %i.drq = fadd reassoc nsz arcp contract afn <8 x float> %i.drp, %i.drn
  %i.drr = fsub reassoc nsz arcp contract afn <8 x float> %i.dre, %i.dny
  %i.drs = fsub reassoc nsz arcp contract afn <8 x float> %i.dri, %i.dny
  %i.drt = fadd reassoc nsz arcp contract afn <8 x float> %i.drk, %i.drj
  %i.dru = fsub reassoc nsz arcp contract afn <8 x float> %i.dny, %i.drt
  %i.drv = fadd reassoc nsz arcp contract afn <8 x float> %i.drn, %i.dro
  %i.drw = fsub reassoc nsz arcp contract afn <8 x float> %i.dny, %i.drv
  %i.drx = fsub reassoc nsz arcp contract afn <8 x float> %i.dny, %i.dre
  %i.dry = fsub reassoc nsz arcp contract afn <8 x float> %i.dny, %i.dri
  %predphi5422.a = select <8 x i1> %induction5399, <8 x float> %i.dru, <8 x float> %i.drm
  %predphi5423.a = select <8 x i1> %induction5399, <8 x float> %i.drw, <8 x float> %i.drq
end_hunk_1
