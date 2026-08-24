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
  %.not4121 = icmp eq i32 %.sink, 0
  %.3509 = select i1 %.not4121, i32 13, i32 12    ; 3 uses
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
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 1076736 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 1179264 ; 14 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 1230592 ; 14 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 1281920 ; 374 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 461440 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 1384448 ; 12 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 1397376 ; 4 uses
  %i.ac = icmp sgt i32 %3, -16
  br i1 %i.ac, label %.preheader3891.lr.ph, label %._crit_edge4108.split

.preheader3891.lr.ph:                             ; preds = %bb.a
  %i.ad = icmp sgt i32 %2, -16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 1384688
  %i.af = add i32 %3, 16                          ; 3 uses
  %i.ag = add i32 %2, 16                          ; 4 uses
  %i.ah = add nsw i32 %3, -2                      ; 3 uses
  %i.ai = add i32 %2, -2                          ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 820544
  %i.ak = getelementptr inbounds nuw i8, ptr %i.i, i64 666368 ; 17 uses
  br i1 %i.ad, label %.preheader3891.preheader, label %._crit_edge4108.split

.preheader3891.preheader:                         ; preds = %.preheader3891.lr.ph
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
  %scevgep4597 = getelementptr i8, ptr %1, i64 -264
  %scevgep4600 = getelementptr i8, ptr %i.i, i64 10304
  %scevgep4601 = getelementptr i8, ptr %i.i, i64 -640
  %scevgep4627 = getelementptr i8, ptr %i.i, i64 4
  %scevgep4629 = getelementptr i8, ptr %i.i, i64 615168
  %scevgep4631 = getelementptr i8, ptr %i.i, i64 615172
  %scevgep4633 = getelementptr i8, ptr %i.i, i64 102528
  %scevgep4635 = getelementptr i8, ptr %i.i, i64 102532
  %scevgep4637 = getelementptr i8, ptr %i.i, i64 922880
  %scevgep4639 = getelementptr i8, ptr %i.i, i64 922884
  %scevgep4641 = getelementptr i8, ptr %i.i, i64 1281280
  %scevgep4643 = getelementptr i8, ptr %i.i, i64 1281284
  %scevgep4645 = getelementptr i8, ptr %i.i, i64 871576
  %scevgep4649 = getelementptr i8, ptr %i.i, i64 871580
  %scevgep4651 = getelementptr i8, ptr %i.i, i64 870936
  %scevgep4653 = getelementptr i8, ptr %i.i, i64 870940
  %scevgep4655 = getelementptr i8, ptr %i.i, i64 1282560
  %scevgep4657 = getelementptr i8, ptr %i.i, i64 1282564
  %scevgep4659 = getelementptr i8, ptr %i.i, i64 872216
  %scevgep4661 = getelementptr i8, ptr %i.i, i64 872220
  %scevgep4663 = getelementptr i8, ptr %i.i, i64 1281916
  %scevgep4665 = getelementptr i8, ptr %i.i, i64 1281920
  %scevgep4667 = getelementptr i8, ptr %i.i, i64 871572
  %scevgep4669 = getelementptr i8, ptr %i.i, i64 871576
  %scevgep4671 = getelementptr i8, ptr %i.i, i64 1281924
  %scevgep4673 = getelementptr i8, ptr %i.i, i64 1281928
  %scevgep4675 = getelementptr i8, ptr %i.i, i64 871580
  %scevgep4677 = getelementptr i8, ptr %i.i, i64 871584
  %scevgep4679 = getelementptr i8, ptr %i.i, i64 204416
  %scevgep4681 = getelementptr i8, ptr %i.i, i64 204420
  %scevgep4683 = getelementptr i8, ptr %i.i, i64 205696
  %scevgep4685 = getelementptr i8, ptr %i.i, i64 205700
  %scevgep4687 = getelementptr i8, ptr %i.i, i64 307580
  %scevgep4689 = getelementptr i8, ptr %i.i, i64 307584
  %scevgep4691 = getelementptr i8, ptr %i.i, i64 307588
  %scevgep4693 = getelementptr i8, ptr %i.i, i64 307592
  %scevgep4695 = getelementptr i8, ptr %i.i, i64 922904
  %scevgep4697 = getelementptr i8, ptr %i.i, i64 922908
  %scevgep4699 = getelementptr i8, ptr %i.i, i64 1281920
  %scevgep4701 = getelementptr i8, ptr %i.i, i64 1281924
  %scevgep5837.a = getelementptr i8, ptr %i.i, i64 9600
  %scevgep5840.a = getelementptr i8, ptr %i.i, i64 1291520
  %scevgep5880.a = getelementptr i8, ptr %i.i, i64 8960
  %scevgep5883.a = getelementptr i8, ptr %i.i, i64 1290880
  %scevgep5923.a = getelementptr i8, ptr %i.i, i64 8320
  %scevgep5926.a = getelementptr i8, ptr %i.i, i64 1290240
  %scevgep5966.a = getelementptr i8, ptr %i.i, i64 7680
  %scevgep5969.a = getelementptr i8, ptr %i.i, i64 1289600
  %scevgep6009.a = getelementptr i8, ptr %i.i, i64 7040
  %scevgep6012.a = getelementptr i8, ptr %i.i, i64 1288960
  %scevgep6052.a = getelementptr i8, ptr %i.i, i64 6400
  %scevgep6055.a = getelementptr i8, ptr %i.i, i64 1288320
  %scevgep6095.a = getelementptr i8, ptr %i.i, i64 5760
  %scevgep6098.a = getelementptr i8, ptr %i.i, i64 1287680
  %scevgep6138.a = getelementptr i8, ptr %i.i, i64 5120
  %scevgep6141.a = getelementptr i8, ptr %i.i, i64 1287040
  %scevgep6181.a = getelementptr i8, ptr %i.i, i64 4480
  %scevgep6184.a = getelementptr i8, ptr %i.i, i64 1286400
  %scevgep6224.a = getelementptr i8, ptr %i.i, i64 3840
  %scevgep6227.a = getelementptr i8, ptr %i.i, i64 1285760
  %scevgep6267.a = getelementptr i8, ptr %i.i, i64 3200
  %scevgep6270.a = getelementptr i8, ptr %i.i, i64 1285120
  %scevgep6310.a = getelementptr i8, ptr %i.i, i64 2560
  %scevgep6313.a = getelementptr i8, ptr %i.i, i64 1284480
  %scevgep6353.a = getelementptr i8, ptr %i.i, i64 1920
  %scevgep6356.a = getelementptr i8, ptr %i.i, i64 1283840
  %scevgep6396.a = getelementptr i8, ptr %i.i, i64 1280
  %scevgep6399.a = getelementptr i8, ptr %i.i, i64 1283200
  %scevgep6439.a = getelementptr i8, ptr %i.i, i64 640
  %scevgep6442.a = getelementptr i8, ptr %i.i, i64 1282560
  %scevgep6484.a = getelementptr i8, ptr %i.i, i64 1281920
  %scevgep6528.a = getelementptr i8, ptr %i.i, i64 1281280
  %scevgep6569.a = getelementptr i8, ptr %i.i, i64 9600
  %scevgep6571.a = getelementptr i8, ptr %i.i, i64 1291520
  %scevgep6610.a = getelementptr i8, ptr %i.i, i64 8960
  %scevgep6612.a = getelementptr i8, ptr %i.i, i64 1290880
  %scevgep6651.a = getelementptr i8, ptr %i.i, i64 8320
  %scevgep6653.a = getelementptr i8, ptr %i.i, i64 1290240
  %scevgep6692.a = getelementptr i8, ptr %i.i, i64 7680
  %scevgep6694.a = getelementptr i8, ptr %i.i, i64 1289600
  %scevgep6733.a = getelementptr i8, ptr %i.i, i64 7040
  %scevgep6735.a = getelementptr i8, ptr %i.i, i64 1288960
  %scevgep6774.a = getelementptr i8, ptr %i.i, i64 6400
  %scevgep6776.a = getelementptr i8, ptr %i.i, i64 1288320
  %scevgep6815.a = getelementptr i8, ptr %i.i, i64 5760
  %scevgep6817.a = getelementptr i8, ptr %i.i, i64 1287680
  %scevgep6856.a = getelementptr i8, ptr %i.i, i64 5120
  %scevgep6858.a = getelementptr i8, ptr %i.i, i64 1287040
  %scevgep6897.a = getelementptr i8, ptr %i.i, i64 4480
  %scevgep6899.a = getelementptr i8, ptr %i.i, i64 1286400
  %scevgep6938.a = getelementptr i8, ptr %i.i, i64 3840
  %scevgep6940.a = getelementptr i8, ptr %i.i, i64 1285760
  %scevgep6979.a = getelementptr i8, ptr %i.i, i64 3200
  %scevgep6981.a = getelementptr i8, ptr %i.i, i64 1285120
  %scevgep7020.a = getelementptr i8, ptr %i.i, i64 2560
  %scevgep7022.a = getelementptr i8, ptr %i.i, i64 1284480
  %scevgep7061.a = getelementptr i8, ptr %i.i, i64 1920
  %scevgep7063.a = getelementptr i8, ptr %i.i, i64 1283840
  %scevgep7102.a = getelementptr i8, ptr %i.i, i64 1280
  %scevgep7104.a = getelementptr i8, ptr %i.i, i64 1283200
  %scevgep7143.a = getelementptr i8, ptr %i.i, i64 640
  %scevgep7145.a = getelementptr i8, ptr %i.i, i64 1282560
  %scevgep7185.a = getelementptr i8, ptr %i.i, i64 1281920
  %broadcast.splatinsert4999 = insertelement <8 x float> poison, float %i.a, i64 0
  %broadcast.splat5000 = shufflevector <8 x float> %broadcast.splatinsert4999, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.bu = shufflevector <2 x ptr> %i.l, <2 x ptr> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bv = insertelement <8 x ptr> %i.bu, ptr %i.y, i64 5 ; 2 uses
  %i.bw = shufflevector <8 x ptr> %i.bv, <8 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 3, i32 3, i32 5, i32 5, i32 5>
  %i.bx = shufflevector <8 x ptr> %i.bv, <8 x ptr> poison, <4 x i32> <i32 5, i32 5, i32 5, i32 5> ; 2 uses
  %broadcast.splatinsert4845 = insertelement <8 x float> poison, float %5, i64 0
  %broadcast.splat4846 = shufflevector <8 x float> %broadcast.splatinsert4845, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %invariant.op7446.a = sub i32 -7, %i.am
  %broadcast.splatinsert4609 = insertelement <8 x i64> poison, i64 %i.al, i64 0
  %broadcast.splat4610 = shufflevector <8 x i64> %broadcast.splatinsert4609, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %.preheader3891

.preheader3891:                                   ; preds = %.preheader3891.preheader, %._crit_edge4106
  %indvar4603 = phi i32 [ 0, %.preheader3891.preheader ], [ %indvar.next4604, %._crit_edge4106 ] ; 2 uses
  %indvars.iv4348 = phi i64 [ -16, %.preheader3891.preheader ], [ %indvars.iv.next4349, %._crit_edge4106 ] ; 26 uses
  %indvars.iv4237 = phi i32 [ 8, %.preheader3891.preheader ], [ %indvars.iv.next4238, %._crit_edge4106 ] ; 2 uses
  %indvars.iv4235 = phi i32 [ 144, %.preheader3891.preheader ], [ %indvars.iv.next4236, %._crit_edge4106 ] ; 3 uses
  %smin4602 = tail call i32 @llvm.smin.i32(i32 %indvars.iv4235, i32 %i.af)
  %i.by = shl i32 %indvar4603, 7
  %i.bz = sub i32 %smin4602, %i.by
  %i.ca = tail call i32 @llvm.smax.i32(i32 %i.bz, i32 17)
  %smax = zext nneg i32 %i.ca to i64
  %i.cb = mul nuw nsw i64 %smax, 640
  %smin4255 = tail call i32 @llvm.smin.i32(i32 %indvars.iv4235, i32 %i.af)
  %i.cc = add i32 %smin4255, %indvars.iv4237      ; 2 uses
  %i.cd = add nsw i64 %indvars.iv4348, 160        ; 2 uses
  %i.ce = trunc nsw i64 %i.cd to i32
  %i.cf = tail call i32 @llvm.smin.i32(i32 %i.ce, i32 %i.af)
  %i.cg = trunc i64 %indvars.iv4348 to i32        ; 4 uses
  %i.ch = sub nsw i32 %i.cf, %i.cg                ; 18 uses
  %i.ci = icmp sgt i64 %indvars.iv4348, -1        ; 3 uses
  %i.cj = select i1 %i.ci, i32 0, i32 16          ; 5 uses
  %i.ck = icmp sgt i64 %i.cd, %i.ao
  %i.cl = trunc i64 %indvars.iv4348 to i32
  %i.cm = sub i32 %3, %i.cl
  %i.cn = select i1 %i.ck, i32 %i.cm, i32 %i.ch   ; 7 uses
  %i.co = icmp slt i32 %i.cj, %i.cn               ; 2 uses
  %i.cp = icmp slt i32 %i.cn, %i.ch               ; 3 uses
  %i.cq = icmp sge i32 %i.cj, %i.cn
  %.not3511 = xor i1 %i.cp, true
  %i.cr = add nsw i32 %i.ch, -2
  %i.cs = icmp sgt i32 %i.ch, 4
  %i.ct = add nsw i32 %i.ch, -4                   ; 2 uses
  %i.cu = icmp sgt i32 %i.ch, 8
  %i.cv = add nsw i32 %i.ch, -6                   ; 4 uses
  %i.cw = icmp sgt i32 %i.ch, 12
  %i.cx = add nsw i32 %i.ch, -8                   ; 3 uses
  %i.cy = icmp sgt i32 %i.ch, 16                  ; 2 uses
  %i.cz = add nsw i32 %i.ch, -10
  %i.da = icmp sgt i32 %i.ch, 20
  %i.db = add nsw i32 %i.ch, -12                  ; 3 uses
  %i.dc = icmp sgt i32 %i.ch, 24
  %i.dd = icmp slt i32 %.3509, %i.db
  %i.de = add nsw i32 %i.ch, -14
  %i.df = icmp sgt i32 %i.ch, 28
  %i.dg = add nsw i32 %i.ch, -16
  %i.dh = icmp sgt i32 %i.ch, 32
  %i.di = zext nneg i32 %i.cj to i64              ; 4 uses
  %i.dj = sext i32 %i.cn to i64                   ; 24 uses
  %i.dk = sext i32 %i.cx to i64
  %i.dl = sext i32 %i.dg to i64                   ; 2 uses
  %i.dm = trunc i64 %indvars.iv4348 to i32
  %i.dn = add i32 %i.dm, 32
  %i.do = mul i32 %2, %i.dn
  %i.dp = trunc i64 %indvars.iv4348 to i32
  %i.dq = add i32 %i.dp, 31
  %i.dr = mul i32 %i.dq, %2
  %i.ds = trunc i64 %indvars.iv4348 to i32
  %i.dt = add i32 %i.ds, 30
  %i.du = mul i32 %i.dt, %2
  %i.dv = trunc i64 %indvars.iv4348 to i32
  %i.dw = add i32 %i.dv, 29
  %i.dx = mul i32 %i.dw, %2
  %i.dy = trunc i64 %indvars.iv4348 to i32
  %i.dz = add i32 %i.dy, 28
  %i.ea = mul i32 %i.dz, %2
  %i.eb = trunc i64 %indvars.iv4348 to i32
  %i.ec = add i32 %i.eb, 27
  %i.ed = mul i32 %i.ec, %2
  %i.ee = trunc i64 %indvars.iv4348 to i32
  %i.ef = add i32 %i.ee, 26
  %i.eg = mul i32 %i.ef, %2
  %i.eh = trunc i64 %indvars.iv4348 to i32
  %i.ei = add i32 %i.eh, 25
  %i.ej = mul i32 %i.ei, %2
  %i.ek = trunc i64 %indvars.iv4348 to i32
  %i.el = add i32 %i.ek, 24
  %i.em = mul i32 %i.el, %2
  %i.en = trunc i64 %indvars.iv4348 to i32
  %i.eo = add i32 %i.en, 23
  %i.ep = mul i32 %i.eo, %2
  %i.eq = trunc i64 %indvars.iv4348 to i32
  %i.er = add i32 %i.eq, 22
  %i.es = mul i32 %i.er, %2
  %i.et = trunc i64 %indvars.iv4348 to i32
  %i.eu = add i32 %i.et, 21
  %i.ev = mul i32 %i.eu, %2
  %i.ew = trunc i64 %indvars.iv4348 to i32
  %i.ex = add i32 %i.ew, 20
  %i.ey = mul i32 %i.ex, %2
  %i.ez = trunc i64 %indvars.iv4348 to i32
  %i.fa = add i32 %i.ez, 19
  %i.fb = mul i32 %i.fa, %2
  %i.fc = trunc i64 %indvars.iv4348 to i32
  %i.fd = add i32 %i.fc, 18
  %i.fe = mul i32 %i.fd, %2
  %i.ff = trunc i64 %indvars.iv4348 to i32
  %i.fg = add i32 %i.ff, 17
  %i.fh = mul i32 %i.fg, %2
  %wide.trip.count4141 = zext i32 %i.cn to i64    ; 2 uses
  %i.fi = mul nsw i64 %i.dj, 160                  ; 7 uses
  %i.fj = mul nsw i64 %i.dj, 160
  %i.fk = add nsw i64 %i.fj, 160                  ; 7 uses
  %i.fl = mul nsw i64 %i.dj, 160
  %i.fm = add nsw i64 %i.fl, 320                  ; 7 uses
  %i.fn = mul nsw i64 %i.dj, 160
  %i.fo = add nsw i64 %i.fn, 480                  ; 7 uses
  %i.fp = mul nsw i64 %i.dj, 160
  %i.fq = add nsw i64 %i.fp, 640                  ; 7 uses
  %i.fr = mul nsw i64 %i.dj, 160
  %i.fs = add nsw i64 %i.fr, 800                  ; 7 uses
  %i.ft = mul nsw i64 %i.dj, 160
  %i.fu = add nsw i64 %i.ft, 960                  ; 7 uses
  %i.fv = mul nsw i64 %i.dj, 160
  %i.fw = add nsw i64 %i.fv, 1120                 ; 7 uses
  %i.fx = mul nsw i64 %i.dj, 160
  %i.fy = add nsw i64 %i.fx, 1280                 ; 7 uses
  %i.fz = mul nsw i64 %i.dj, 160
  %i.ga = add nsw i64 %i.fz, 1440                 ; 7 uses
  %i.gb = mul nsw i64 %i.dj, 160
  %i.gc = add nsw i64 %i.gb, 1600                 ; 7 uses
  %i.gd = mul nsw i64 %i.dj, 160
  %i.ge = add nsw i64 %i.gd, 1760                 ; 7 uses
  %i.gf = mul nsw i64 %i.dj, 160
  %i.gg = add nsw i64 %i.gf, 1920                 ; 7 uses
  %i.gh = mul nsw i64 %i.dj, 160
  %i.gi = add nsw i64 %i.gh, 2080                 ; 7 uses
  %i.gj = mul nsw i64 %i.dj, 160
  %i.gk = add nsw i64 %i.gj, 2240                 ; 7 uses
  %i.gl = mul nsw i64 %i.dj, 160
  %i.gm = add nsw i64 %i.gl, 2400                 ; 7 uses
  %wide.trip.count4159 = zext nneg i32 %i.cn to i64
  %wide.trip.count4168 = zext nneg i32 %i.cn to i64
  %scevgep4605 = getelementptr i8, ptr %scevgep4601, i64 %i.cb
  %i.gn = mul nsw i64 %i.dj, 640                  ; 6 uses
  %scevgep5838 = getelementptr i8, ptr %scevgep5837.a, i64 %i.gn
  %scevgep5841.a = getelementptr i8, ptr %scevgep5840.a, i64 %i.gn
  %scevgep5881 = getelementptr i8, ptr %scevgep5880.a, i64 %i.gn
  %scevgep5884.a = getelementptr i8, ptr %scevgep5883.a, i64 %i.gn
  %scevgep5924 = getelementptr i8, ptr %scevgep5923.a, i64 %i.gn
  %scevgep5927.a = getelementptr i8, ptr %scevgep5926.a, i64 %i.gn
  %i.go = mul nsw i64 %i.dj, 640                  ; 6 uses
  %scevgep5967 = getelementptr i8, ptr %scevgep5966.a, i64 %i.go
  %scevgep5970.a = getelementptr i8, ptr %scevgep5969.a, i64 %i.go
  %scevgep6010 = getelementptr i8, ptr %scevgep6009.a, i64 %i.go
  %scevgep6013.a = getelementptr i8, ptr %scevgep6012.a, i64 %i.go
  %scevgep6053 = getelementptr i8, ptr %scevgep6052.a, i64 %i.go
  %scevgep6056.a = getelementptr i8, ptr %scevgep6055.a, i64 %i.go
  %i.gp = mul nsw i64 %i.dj, 640                  ; 6 uses
  %scevgep6096 = getelementptr i8, ptr %scevgep6095.a, i64 %i.gp
  %scevgep6099.a = getelementptr i8, ptr %scevgep6098.a, i64 %i.gp
  %scevgep6139 = getelementptr i8, ptr %scevgep6138.a, i64 %i.gp
  %scevgep6142.a = getelementptr i8, ptr %scevgep6141.a, i64 %i.gp
  %scevgep6182 = getelementptr i8, ptr %scevgep6181.a, i64 %i.gp
  %scevgep6185.a = getelementptr i8, ptr %scevgep6184.a, i64 %i.gp
  %i.gq = mul nsw i64 %i.dj, 640                  ; 6 uses
  %scevgep6225 = getelementptr i8, ptr %scevgep6224.a, i64 %i.gq
  %scevgep6228.a = getelementptr i8, ptr %scevgep6227.a, i64 %i.gq
  %scevgep6268 = getelementptr i8, ptr %scevgep6267.a, i64 %i.gq
  %scevgep6271.a = getelementptr i8, ptr %scevgep6270.a, i64 %i.gq
  %scevgep6311 = getelementptr i8, ptr %scevgep6310.a, i64 %i.gq
  %scevgep6314.a = getelementptr i8, ptr %scevgep6313.a, i64 %i.gq
  %i.gr = mul nsw i64 %i.dj, 640                  ; 6 uses
  %scevgep6354 = getelementptr i8, ptr %scevgep6353.a, i64 %i.gr
  %scevgep6357.a = getelementptr i8, ptr %scevgep6356.a, i64 %i.gr
  %scevgep6397 = getelementptr i8, ptr %scevgep6396.a, i64 %i.gr
  %scevgep6400.a = getelementptr i8, ptr %scevgep6399.a, i64 %i.gr
  %scevgep6440 = getelementptr i8, ptr %scevgep6439.a, i64 %i.gr
  %scevgep6443.a = getelementptr i8, ptr %scevgep6442.a, i64 %i.gr
  %i.gs = mul nsw i64 %i.dj, 640                  ; 2 uses
  %scevgep6482 = getelementptr i8, ptr %i.i, i64 %i.gs
  %scevgep6485.a = getelementptr i8, ptr %scevgep6484.a, i64 %i.gs
  %i.gt = add i32 %i.cj, %i.cg
  %i.gu = mul i32 %2, %i.gt
  %i.gv = add i32 %i.gu, -16
  %i.gw = mul nuw nsw i64 %i.di, 640
  %scevgep6526 = getelementptr i8, ptr %i.i, i64 %i.gw
  %i.gx = mul nuw nsw i64 %wide.trip.count4141, 640
  %scevgep6529.a = getelementptr i8, ptr %scevgep6528.a, i64 %i.gx
  %i.gy = add i32 %i.cj, %i.cg
  %i.gz = mul i32 %2, %i.gy
  %i.ha = add i32 %i.gz, -16
  br label %bb.b

._crit_edge4108.split:                            ; preds = %._crit_edge4106, %.preheader3891.lr.ph, %bb.a
  tail call void @free(ptr noundef %i.e) #9
  ret void

._crit_edge4106:                                  ; preds = %._crit_edge4099.split
  %indvars.iv.next4349 = add nsw i64 %indvars.iv4348, 128 ; 2 uses
  %i.hb = icmp slt i64 %indvars.iv.next4349, %i.ao
  %indvars.iv.next4236 = add nuw i32 %indvars.iv4235, 128
  %indvars.iv.next4238 = add nsw i32 %indvars.iv4237, -128
  %indvar.next4604 = add i32 %indvar4603, 1
  br i1 %i.hb, label %.preheader3891, label %._crit_edge4108.split, !llvm.loop !11

bb.b:                                             ; preds = %.preheader3891, %._crit_edge4099.split
  %indvar = phi i64 [ 0, %.preheader3891 ], [ %indvar.next, %._crit_edge4099.split ] ; 9 uses
  %indvars.iv4344 = phi i64 [ -16, %.preheader3891 ], [ %indvars.iv.next4345, %._crit_edge4099.split ] ; 9 uses
  %indvars.iv4321 = phi i64 [ 0, %.preheader3891 ], [ %indvars.iv.next4322, %._crit_edge4099.split ] ; 7 uses
  %6 = trunc i64 %indvars.iv4321 to i32
  %7 = add i32 %i.ha, %6
  %i.hc = trunc i64 %indvars.iv4321 to i32
  %i.hd = add i32 %i.gv, %i.hc
  %i.he = trunc i64 %indvars.iv4321 to i32
  %i.hf = add i32 %i.he, 144
  %smin5043 = tail call i32 @llvm.smin.i32(i32 %i.hf, i32 %i.ag)
  %i.hg = trunc i64 %indvar to i32
  %i.hh = mul i32 %i.hg, -128
  %i.hi = or disjoint i32 %i.hh, 12
  %8 = add i32 %smin5043, %i.hi                   ; 2 uses
  %9 = zext i32 %8 to i64                         ; 2 uses
  %10 = trunc i64 %indvars.iv4321 to i32
  %11 = add i32 %10, 144
  %smin4994 = tail call i32 @llvm.smin.i32(i32 %11, i32 %i.ag)
  %i.hj = trunc i64 %indvar to i32
  %i.hk = mul i32 %i.hj, -128
  %i.hl = or disjoint i32 %i.hk, 8
  %12 = add i32 %smin4994, %i.hl                  ; 2 uses
  %13 = zext i32 %12 to i64                       ; 2 uses
  %i.hm = trunc i64 %indvar to i32
  %i.hn = mul i32 %i.hm, -128
  %i.ho = or disjoint i32 %i.hn, 3
  %indvar.tr = trunc i64 %indvar to i32
  %i.hp = shl i32 %indvar.tr, 7
  %indvar.tr7222 = trunc i64 %indvar to i32
  %i.hq = shl i32 %indvar.tr7222, 7
  %indvar.tr7223 = trunc i64 %indvar to i32
  %i.hr = shl i32 %indvar.tr7223, 7
  %i.hs = shl nuw nsw i64 %indvar, 7              ; 2 uses
  %i.ht = trunc i64 %i.hs to i32
  %i.hu = add i32 %i.ht, 144
  %smin = tail call i32 @llvm.smin.i32(i32 %i.hu, i32 %i.ag)
  %i.hv = trunc i64 %indvar to i32
  %i.hw = shl i32 %i.hv, 7
  %i.hx = sub i32 %smin, %i.hw
  %i.hy = tail call i32 @llvm.umax.i32(i32 %i.hx, i32 17)
  %umax = zext i32 %i.hy to i64                   ; 2 uses
  %i.hz = shl nuw nsw i64 %umax, 4
  %i.ia = shl nuw nsw i64 %umax, 2
  %scevgep4606 = getelementptr i8, ptr %scevgep4605, i64 %i.ia
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(12320) %i.ae, i8 0, i64 12320, i1 false)
  %i.ib = add nsw i64 %indvars.iv4344, 160        ; 2 uses
  %i.ic = trunc i64 %i.ib to i32
  %i.id = tail call i32 @llvm.smin.i32(i32 %i.ic, i32 %i.ag) ; 7 uses
  %i.ie = trunc i64 %indvars.iv4344 to i32        ; 35 uses
  %i.if = sub i32 %i.id, %i.ie                    ; 22 uses
  %i.ig = icmp slt i64 %indvars.iv4344, 0         ; 3 uses
  %i.ih = select i1 %i.ig, i32 16, i32 0          ; 71 uses
  %i.ii = icmp sgt i64 %i.ib, %i.al
  %i.ij = trunc i64 %indvars.iv4344 to i32
  %i.ik = sub i32 %2, %i.ij
  %i.il = select i1 %i.ii, i32 %i.ik, i32 %i.if   ; 9 uses
  %i.im = icmp sge i32 %i.ih, %i.il
  %or.cond4110.not = select i1 %i.ci, i1 true, i1 %i.im
  br i1 %or.cond4110.not, label %.loopexit3890.split, label %iter.check7209

iter.check7209:                                   ; preds = %bb.b
  %i.in = zext nneg i32 %i.ih to i64              ; 176 uses
  %i.io = add i32 %i.do, %i.ie                    ; 9 uses
  %wide.trip.count = zext nneg i32 %i.il to i64   ; 128 uses
  %i.ip = sub nsw i64 %wide.trip.count, %i.in     ; 6 uses
  %min.iters.check7193.a = icmp ult i64 %i.ip, 8
  br i1 %min.iters.check7193.a, label %vec.epilog.scalar.ph7210.preheader, label %vector.scevcheck7182

vector.scevcheck7182:                             ; preds = %iter.check7209
  %i.iq = xor i64 %i.in, -1
  %i.ir = add nsw i64 %i.iq, %wide.trip.count     ; 2 uses
  %i.is = add i32 %i.ih, %i.io                    ; 2 uses
  %i.it = trunc i64 %i.ir to i32
  %i.iu = add i32 %i.is, %i.it
  %i.iv = icmp slt i32 %i.iu, %i.is
  %i.iw = icmp ugt i64 %i.ir, 4294967295
  %i.ix = or i1 %i.iv, %i.iw
  br i1 %i.ix, label %vec.epilog.scalar.ph7210.preheader, label %vector.memcheck7183

vector.memcheck7183:                              ; preds = %vector.scevcheck7182
  %i.iy = shl nuw nsw i64 %i.in, 2
  %scevgep7184.a = getelementptr i8, ptr %i.i, i64 %i.iy
  %i.iz = shl nuw nsw i64 %wide.trip.count, 2
  %scevgep7186.a = getelementptr i8, ptr %scevgep7185.a, i64 %i.iz
  %i.ja = add i32 %i.ih, %i.io
  %i.jb = sext i32 %i.ja to i64                   ; 2 uses
  %i.jc = shl nsw i64 %i.jb, 2
  %scevgep7187 = getelementptr i8, ptr %0, i64 %i.jc
  %i.jd = add nsw i64 %i.jb, %wide.trip.count
  %i.je = sub nsw i64 %i.jd, %i.in
  %i.jf = shl nsw i64 %i.je, 2
  %scevgep7188 = getelementptr i8, ptr %0, i64 %i.jf
  %bound07189 = icmp ult ptr %scevgep7184.a, %scevgep7188
  %bound17190 = icmp ult ptr %scevgep7187, %scevgep7186.a
  %found.conflict7191 = and i1 %bound07189, %bound17190
  br i1 %found.conflict7191, label %vec.epilog.scalar.ph7210.preheader, label %vector.main.loop.iter.check7194

vector.main.loop.iter.check7194:                  ; preds = %vector.memcheck7183
  %min.iters.check7195 = icmp ult i64 %i.ip, 32
  br i1 %min.iters.check7195, label %vec.epilog.ph7213, label %vector.ph7196

vector.ph7196:                                    ; preds = %vector.main.loop.iter.check7194
  %i.jg = and i64 %i.ip, 24
  %n.vec7197 = and i64 %i.ip, -32                 ; 4 uses
  %i.jh = or disjoint i64 %n.vec7197, %i.in
  br label %vector.body7198

vector.body7198:                                  ; preds = %vector.body7198, %vector.ph7196
  %index7199 = phi i64 [ 0, %vector.ph7196 ], [ %index.next7204, %vector.body7198 ] ; 2 uses
  %i.ji = or disjoint i64 %index7199, %i.in       ; 3 uses
  %i.jj = trunc nuw nsw i64 %i.ji to i32
  %i.jk = add i32 %i.io, %i.jj
  %i.jl = sext i32 %i.jk to i64
  %i.jm = getelementptr inbounds [4 x i8], ptr %0, i64 %i.jl ; 4 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 32
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jm, i64 64
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jm, i64 96
  %wide.load7200.a = load <8 x float>, ptr %i.jm, align 4, !tbaa !13, !alias.scope !15 ; 2 uses
  %wide.load7201.a = load <8 x float>, ptr %i.jn, align 4, !tbaa !13, !alias.scope !15 ; 2 uses
  %wide.load7202 = load <8 x float>, ptr %i.jo, align 4, !tbaa !13, !alias.scope !15 ; 2 uses
  %wide.load7203 = load <8 x float>, ptr %i.jp, align 4, !tbaa !13, !alias.scope !15 ; 2 uses
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.ji ; 4 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 32
  %i.js = getelementptr inbounds nuw i8, ptr %i.jq, i64 64
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jq, i64 96
  store <8 x float> %wide.load7200.a, ptr %i.jq, align 64, !tbaa !13, !alias.scope !18, !noalias !15
  store <8 x float> %wide.load7201.a, ptr %i.jr, align 32, !tbaa !13, !alias.scope !18, !noalias !15
  store <8 x float> %wide.load7202, ptr %i.js, align 64, !tbaa !13, !alias.scope !18, !noalias !15
  store <8 x float> %wide.load7203, ptr %i.jt, align 32, !tbaa !13, !alias.scope !18, !noalias !15
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.ji ; 4 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 32
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ju, i64 64
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ju, i64 96
  store <8 x float> %wide.load7200.a, ptr %i.ju, align 64, !tbaa !13, !alias.scope !18, !noalias !15
  store <8 x float> %wide.load7201.a, ptr %i.jv, align 32, !tbaa !13, !alias.scope !18, !noalias !15
  store <8 x float> %wide.load7202, ptr %i.jw, align 64, !tbaa !13, !alias.scope !18, !noalias !15
  store <8 x float> %wide.load7203, ptr %i.jx, align 32, !tbaa !13, !alias.scope !18, !noalias !15
  %index.next7204 = add nuw i64 %index7199, 32    ; 2 uses
  %i.jy = icmp eq i64 %index.next7204, %n.vec7197
  br i1 %i.jy, label %middle.block7205, label %vector.body7198, !llvm.loop !20

middle.block7205:                                 ; preds = %vector.body7198
  %cmp.n7206 = icmp eq i64 %i.ip, %n.vec7197
  br i1 %cmp.n7206, label %iter.check7169, label %vec.epilog.iter.check7211

vec.epilog.iter.check7211:                        ; preds = %middle.block7205
  %min.epilog.iters.check7212 = icmp eq i64 %i.jg, 0
  br i1 %min.epilog.iters.check7212, label %vec.epilog.scalar.ph7210.preheader, label %vec.epilog.ph7213, !prof !23

vec.epilog.ph7213:                                ; preds = %vector.main.loop.iter.check7194, %vec.epilog.iter.check7211
  %vec.epilog.resume.val7207 = phi i64 [ %n.vec7197, %vec.epilog.iter.check7211 ], [ 0, %vector.main.loop.iter.check7194 ]
  %i.jz = and i64 %wide.trip.count, 7             ; 2 uses
  %n.vec7214 = sub nsw i64 %i.ip, %i.jz           ; 2 uses
  %i.ka = add nsw i64 %n.vec7214, %i.in
  br label %vec.epilog.vector.body7215

vec.epilog.vector.body7215:                       ; preds = %vec.epilog.vector.body7215, %vec.epilog.ph7213
  %index7216 = phi i64 [ %vec.epilog.resume.val7207, %vec.epilog.ph7213 ], [ %index.next7218, %vec.epilog.vector.body7215 ] ; 2 uses
  %i.kb = add nuw i64 %index7216, %i.in           ; 3 uses
  %i.kc = trunc nuw nsw i64 %i.kb to i32
  %i.kd = add i32 %i.io, %i.kc
  %i.ke = sext i32 %i.kd to i64
  %i.kf = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ke
  %wide.load7217 = load <8 x float>, ptr %i.kf, align 4, !tbaa !13, !alias.scope !15 ; 2 uses
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.kb
  store <8 x float> %wide.load7217, ptr %i.kg, align 32, !tbaa !13, !alias.scope !18, !noalias !15
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.kb
  store <8 x float> %wide.load7217, ptr %i.kh, align 32, !tbaa !13, !alias.scope !18, !noalias !15
  %index.next7218 = add nuw i64 %index7216, 8     ; 2 uses
  %i.ki = icmp eq i64 %index.next7218, %n.vec7214
  br i1 %i.ki, label %vec.epilog.middle.block7219, label %vec.epilog.vector.body7215, !llvm.loop !24

vec.epilog.middle.block7219:                      ; preds = %vec.epilog.vector.body7215
  %cmp.n7220 = icmp eq i64 %i.jz, 0
  br i1 %cmp.n7220, label %iter.check7169, label %vec.epilog.scalar.ph7210.preheader

vec.epilog.scalar.ph7210.preheader:               ; preds = %vector.memcheck7183, %vector.scevcheck7182, %iter.check7209, %vec.epilog.iter.check7211, %vec.epilog.middle.block7219
  %indvars.iv.ph = phi i64 [ %i.in, %iter.check7209 ], [ %i.in, %vector.scevcheck7182 ], [ %i.in, %vector.memcheck7183 ], [ %i.jh, %vec.epilog.iter.check7211 ], [ %i.ka, %vec.epilog.middle.block7219 ] ; 4 uses
  %i.kj = sub i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.kj, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph7210.prol.loopexit, label %vec.epilog.scalar.ph7210.prol

vec.epilog.scalar.ph7210.prol:                    ; preds = %vec.epilog.scalar.ph7210.preheader, %vec.epilog.scalar.ph7210.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph7210.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph7210.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph7210.prol ], [ 0, %vec.epilog.scalar.ph7210.preheader ]
  %i.kk = trunc nuw nsw i64 %indvars.iv.prol to i32
  %i.kl = add i32 %i.io, %i.kk
  %i.km = sext i32 %i.kl to i64
  %i.kn = getelementptr inbounds [4 x i8], ptr %0, i64 %i.km
  %i.ko = load float, ptr %i.kn, align 4, !tbaa !13 ; 2 uses
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.prol
  store float %i.ko, ptr %i.kp, align 4, !tbaa !13
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.prol
  store float %i.ko, ptr %i.kq, align 4, !tbaa !13
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph7210.prol.loopexit, label %vec.epilog.scalar.ph7210.prol, !llvm.loop !25

vec.epilog.scalar.ph7210.prol.loopexit:           ; preds = %vec.epilog.scalar.ph7210.prol, %vec.epilog.scalar.ph7210.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph7210.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph7210.prol ]
  %i.kr = sub i64 %indvars.iv.ph, %wide.trip.count
  %i.ks = icmp ugt i64 %i.kr, -4
  br i1 %i.ks, label %iter.check7169, label %vec.epilog.scalar.ph7210

iter.check7169:                                   ; preds = %vec.epilog.scalar.ph7210.prol.loopexit, %vec.epilog.scalar.ph7210, %vec.epilog.middle.block7219, %middle.block7205
  %i.kt = add i32 %i.dr, %i.ie                    ; 9 uses
  %i.ku = sub nsw i64 %wide.trip.count, %i.in     ; 6 uses
  %min.iters.check7153.a = icmp ult i64 %i.ku, 8
  br i1 %min.iters.check7153.a, label %vec.epilog.scalar.ph7170.preheader, label %vector.scevcheck7141

vector.scevcheck7141:                             ; preds = %iter.check7169
  %i.kv = xor i64 %i.in, -1
  %i.kw = add nsw i64 %i.kv, %wide.trip.count     ; 2 uses
  %i.kx = add i32 %i.ih, %i.kt                    ; 2 uses
  %i.ky = trunc i64 %i.kw to i32
  %i.kz = add i32 %i.kx, %i.ky
  %i.la = icmp slt i32 %i.kz, %i.kx
  %i.lb = icmp ugt i64 %i.kw, 4294967295
  %i.lc = or i1 %i.la, %i.lb
  br i1 %i.lc, label %vec.epilog.scalar.ph7170.preheader, label %vector.memcheck7142

vector.memcheck7142:                              ; preds = %vector.scevcheck7141
  %i.ld = shl nuw nsw i64 %i.in, 2
  %scevgep7144.a = getelementptr i8, ptr %scevgep7143.a, i64 %i.ld
  %i.le = shl nuw nsw i64 %wide.trip.count, 2
  %scevgep7146.a = getelementptr i8, ptr %scevgep7145.a, i64 %i.le
  %i.lf = add i32 %i.ih, %i.kt
  %i.lg = sext i32 %i.lf to i64                   ; 2 uses
  %i.lh = shl nsw i64 %i.lg, 2
  %scevgep7147 = getelementptr i8, ptr %0, i64 %i.lh
  %i.li = add nsw i64 %i.lg, %wide.trip.count
  %i.lj = sub nsw i64 %i.li, %i.in
  %i.lk = shl nsw i64 %i.lj, 2
  %scevgep7148 = getelementptr i8, ptr %0, i64 %i.lk
  %bound07149 = icmp ult ptr %scevgep7144.a, %scevgep7148
  %bound17150 = icmp ult ptr %scevgep7147, %scevgep7146.a
  %found.conflict7151 = and i1 %bound07149, %bound17150
  br i1 %found.conflict7151, label %vec.epilog.scalar.ph7170.preheader, label %vector.main.loop.iter.check7154

vector.main.loop.iter.check7154:                  ; preds = %vector.memcheck7142
  %min.iters.check7155 = icmp ult i64 %i.ku, 32
  br i1 %min.iters.check7155, label %vec.epilog.ph7173, label %vector.ph7156

vector.ph7156:                                    ; preds = %vector.main.loop.iter.check7154
  %i.ll = and i64 %i.ku, 24
  %n.vec7157 = and i64 %i.ku, -32                 ; 4 uses
end_hunk_0
begin_hunk_1_@amaze_demosaic:bb.a
  %i.bhs = getelementptr inbounds nuw i8, ptr %i.bhp, i64 96
  %wide.load6586.a = load <8 x float>, ptr %i.bhp, align 4, !tbaa !13, !alias.scope !153 ; 2 uses
  %wide.load6587.a = load <8 x float>, ptr %i.bhq, align 4, !tbaa !13, !alias.scope !153 ; 2 uses
  %wide.load6588 = load <8 x float>, ptr %i.bhr, align 4, !tbaa !13, !alias.scope !153 ; 2 uses
  %wide.load6589 = load <8 x float>, ptr %i.bhs, align 4, !tbaa !13, !alias.scope !153 ; 2 uses
  %i.bht = add nuw nsw i64 %i.bhl, 2400           ; 2 uses
  %i.bhu = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.bht ; 4 uses
  %i.bhv = getelementptr inbounds nuw i8, ptr %i.bhu, i64 32
  %i.bhw = getelementptr inbounds nuw i8, ptr %i.bhu, i64 64
  %i.bhx = getelementptr inbounds nuw i8, ptr %i.bhu, i64 96
  store <8 x float> %wide.load6586.a, ptr %i.bhu, align 64, !tbaa !13, !alias.scope !156, !noalias !153
  store <8 x float> %wide.load6587.a, ptr %i.bhv, align 32, !tbaa !13, !alias.scope !156, !noalias !153
  store <8 x float> %wide.load6588, ptr %i.bhw, align 64, !tbaa !13, !alias.scope !156, !noalias !153
  store <8 x float> %wide.load6589, ptr %i.bhx, align 32, !tbaa !13, !alias.scope !156, !noalias !153
  %i.bhy = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.bht ; 4 uses
  %i.bhz = getelementptr inbounds nuw i8, ptr %i.bhy, i64 32
  %i.bia = getelementptr inbounds nuw i8, ptr %i.bhy, i64 64
  %i.bib = getelementptr inbounds nuw i8, ptr %i.bhy, i64 96
  store <8 x float> %wide.load6586.a, ptr %i.bhy, align 64, !tbaa !13, !alias.scope !156, !noalias !153
  store <8 x float> %wide.load6587.a, ptr %i.bhz, align 32, !tbaa !13, !alias.scope !156, !noalias !153
  store <8 x float> %wide.load6588, ptr %i.bia, align 64, !tbaa !13, !alias.scope !156, !noalias !153
  store <8 x float> %wide.load6589, ptr %i.bib, align 32, !tbaa !13, !alias.scope !156, !noalias !153
  %index.next6590 = add nuw i64 %index6585, 32    ; 2 uses
  %i.bic = icmp eq i64 %index.next6590, %n.vec6583
  br i1 %i.bic, label %middle.block6591, label %vector.body6584, !llvm.loop !158

middle.block6591:                                 ; preds = %vector.body6584
  %cmp.n6592 = icmp eq i64 %i.bgs, %n.vec6583
  br i1 %cmp.n6592, label %.loopexit3890.split, label %vec.epilog.iter.check6597

vec.epilog.iter.check6597:                        ; preds = %middle.block6591
  %min.epilog.iters.check6598 = icmp eq i64 %i.bhj, 0
  br i1 %min.epilog.iters.check6598, label %vec.epilog.scalar.ph6596.preheader, label %vec.epilog.ph6599, !prof !23

vec.epilog.ph6599:                                ; preds = %vector.main.loop.iter.check6580, %vec.epilog.iter.check6597
  %vec.epilog.resume.val6593 = phi i64 [ %n.vec6583, %vec.epilog.iter.check6597 ], [ 0, %vector.main.loop.iter.check6580 ]
  %i.bid = and i64 %wide.trip.count, 7            ; 2 uses
  %n.vec6600 = sub nsw i64 %i.bgs, %i.bid         ; 2 uses
  %i.bie = add nsw i64 %n.vec6600, %i.in
  br label %vec.epilog.vector.body6601

vec.epilog.vector.body6601:                       ; preds = %vec.epilog.vector.body6601, %vec.epilog.ph6599
  %index6602 = phi i64 [ %vec.epilog.resume.val6593, %vec.epilog.ph6599 ], [ %index.next6604, %vec.epilog.vector.body6601 ] ; 2 uses
  %i.bif = add nuw i64 %index6602, %i.in          ; 2 uses
  %i.big = trunc nuw nsw i64 %i.bif to i32
  %i.bih = add i32 %i.bgr, %i.big
  %i.bii = sext i32 %i.bih to i64
  %i.bij = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bii
  %wide.load6603 = load <8 x float>, ptr %i.bij, align 4, !tbaa !13, !alias.scope !153 ; 2 uses
  %i.bik = add nuw nsw i64 %i.bif, 2400           ; 2 uses
  %i.bil = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.bik
  store <8 x float> %wide.load6603, ptr %i.bil, align 32, !tbaa !13, !alias.scope !156, !noalias !153
  %i.bim = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.bik
  store <8 x float> %wide.load6603, ptr %i.bim, align 32, !tbaa !13, !alias.scope !156, !noalias !153
  %index.next6604 = add nuw i64 %index6602, 8     ; 2 uses
  %i.bin = icmp eq i64 %index.next6604, %n.vec6600
  br i1 %i.bin, label %vec.epilog.middle.block6605, label %vec.epilog.vector.body6601, !llvm.loop !159

vec.epilog.middle.block6605:                      ; preds = %vec.epilog.vector.body6601
  %cmp.n6606 = icmp eq i64 %i.bid, 0
  br i1 %cmp.n6606, label %.loopexit3890.split, label %vec.epilog.scalar.ph6596.preheader

vec.epilog.scalar.ph6596.preheader:               ; preds = %vector.memcheck6568, %vector.scevcheck6567, %iter.check6595, %vec.epilog.iter.check6597, %vec.epilog.middle.block6605
  %indvars.iv.15.ph = phi i64 [ %i.in, %iter.check6595 ], [ %i.in, %vector.scevcheck6567 ], [ %i.in, %vector.memcheck6568 ], [ %i.bhk, %vec.epilog.iter.check6597 ], [ %i.bie, %vec.epilog.middle.block6605 ] ; 4 uses
  %i.bio = sub i64 %wide.trip.count, %indvars.iv.15.ph
  %xtraiter7294 = and i64 %i.bio, 3               ; 2 uses
  %lcmp.mod7295.not = icmp eq i64 %xtraiter7294, 0
  br i1 %lcmp.mod7295.not, label %vec.epilog.scalar.ph6596.prol.loopexit, label %vec.epilog.scalar.ph6596.prol

vec.epilog.scalar.ph6596.prol:                    ; preds = %vec.epilog.scalar.ph6596.preheader, %vec.epilog.scalar.ph6596.prol
  %indvars.iv.15.prol = phi i64 [ %indvars.iv.next.15.prol, %vec.epilog.scalar.ph6596.prol ], [ %indvars.iv.15.ph, %vec.epilog.scalar.ph6596.preheader ] ; 3 uses
  %prol.iter7296 = phi i64 [ %prol.iter7296.next, %vec.epilog.scalar.ph6596.prol ], [ 0, %vec.epilog.scalar.ph6596.preheader ]
  %i.bip = trunc nuw nsw i64 %indvars.iv.15.prol to i32
  %i.biq = add i32 %i.bgr, %i.bip
  %i.bir = sext i32 %i.biq to i64
  %i.bis = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bir
  %i.bit = load float, ptr %i.bis, align 4, !tbaa !13 ; 2 uses
  %i.biu = add nuw nsw i64 %indvars.iv.15.prol, 2400 ; 2 uses
  %i.biv = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.biu
  store float %i.bit, ptr %i.biv, align 4, !tbaa !13
  %i.biw = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.biu
  store float %i.bit, ptr %i.biw, align 4, !tbaa !13
  %indvars.iv.next.15.prol = add nuw nsw i64 %indvars.iv.15.prol, 1 ; 2 uses
  %prol.iter7296.next = add i64 %prol.iter7296, 1 ; 2 uses
  %prol.iter7296.cmp.not = icmp eq i64 %prol.iter7296.next, %xtraiter7294
  br i1 %prol.iter7296.cmp.not, label %vec.epilog.scalar.ph6596.prol.loopexit, label %vec.epilog.scalar.ph6596.prol, !llvm.loop !160

vec.epilog.scalar.ph6596.prol.loopexit:           ; preds = %vec.epilog.scalar.ph6596.prol, %vec.epilog.scalar.ph6596.preheader
  %indvars.iv.15.unr = phi i64 [ %indvars.iv.15.ph, %vec.epilog.scalar.ph6596.preheader ], [ %indvars.iv.next.15.prol, %vec.epilog.scalar.ph6596.prol ]
  %i.bix = sub i64 %indvars.iv.15.ph, %wide.trip.count
  %i.biy = icmp ugt i64 %i.bix, -4
  br i1 %i.biy, label %.loopexit3890.split, label %vec.epilog.scalar.ph6596.preheader.new

vec.epilog.scalar.ph6596.preheader.new:           ; preds = %vec.epilog.scalar.ph6596.prol.loopexit
  %invariant.op7440.a = add i32 1, %i.bgr
  %invariant.op7442.a = add i32 2, %i.bgr
  %invariant.op7444 = add i32 3, %i.bgr
  br label %vec.epilog.scalar.ph6596

vec.epilog.scalar.ph6596:                         ; preds = %vec.epilog.scalar.ph6596, %vec.epilog.scalar.ph6596.preheader.new
  %indvars.iv.15 = phi i64 [ %indvars.iv.15.unr, %vec.epilog.scalar.ph6596.preheader.new ], [ %indvars.iv.next.15.3, %vec.epilog.scalar.ph6596 ] ; 9 uses
  %i.biz = trunc nuw nsw i64 %indvars.iv.15 to i32
  %i.bja = add i32 %i.bgr, %i.biz
  %i.bjb = sext i32 %i.bja to i64
  %i.bjc = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bjb
  %i.bjd = load float, ptr %i.bjc, align 4, !tbaa !13 ; 2 uses
  %i.bje = add nuw nsw i64 %indvars.iv.15, 2400   ; 2 uses
  %i.bjf = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.bje
  store float %i.bjd, ptr %i.bjf, align 4, !tbaa !13
  %i.bjg = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.bje
  store float %i.bjd, ptr %i.bjg, align 4, !tbaa !13
  %i.bjh = trunc i64 %indvars.iv.15 to i32
  %.reass7441.a = add i32 %i.bjh, %invariant.op7440.a
  %i.bji = sext i32 %.reass7441.a to i64
  %i.bjj = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bji
  %i.bjk = load float, ptr %i.bjj, align 4, !tbaa !13 ; 2 uses
  %i.bjl = add nuw nsw i64 %indvars.iv.15, 2401   ; 2 uses
  %i.bjm = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.bjl
  store float %i.bjk, ptr %i.bjm, align 4, !tbaa !13
  %i.bjn = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.bjl
  store float %i.bjk, ptr %i.bjn, align 4, !tbaa !13
  %i.bjo = trunc i64 %indvars.iv.15 to i32
  %.reass7443.a = add i32 %i.bjo, %invariant.op7442.a
  %i.bjp = sext i32 %.reass7443.a to i64
  %i.bjq = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bjp
  %i.bjr = load float, ptr %i.bjq, align 4, !tbaa !13 ; 2 uses
  %i.bjs = add nuw nsw i64 %indvars.iv.15, 2402   ; 2 uses
  %i.bjt = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.bjs
  store float %i.bjr, ptr %i.bjt, align 4, !tbaa !13
  %i.bju = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.bjs
  store float %i.bjr, ptr %i.bju, align 4, !tbaa !13
  %i.bjv = trunc i64 %indvars.iv.15 to i32
  %.reass7445.a = add i32 %i.bjv, %invariant.op7444
  %i.bjw = sext i32 %.reass7445.a to i64
  %i.bjx = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bjw
  %i.bjy = load float, ptr %i.bjx, align 4, !tbaa !13 ; 2 uses
  %i.bjz = add nuw nsw i64 %indvars.iv.15, 2403   ; 2 uses
  %i.bka = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.bjz
  store float %i.bjy, ptr %i.bka, align 4, !tbaa !13
  %i.bkb = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.bjz
  store float %i.bjy, ptr %i.bkb, align 4, !tbaa !13
  %indvars.iv.next.15.3 = add nuw nsw i64 %indvars.iv.15, 4 ; 2 uses
  %exitcond.15.not.3 = icmp eq i64 %indvars.iv.next.15.3, %wide.trip.count
  br i1 %exitcond.15.not.3, label %.loopexit3890.split, label %vec.epilog.scalar.ph6596, !llvm.loop !161

vec.epilog.scalar.ph7210:                         ; preds = %vec.epilog.scalar.ph7210.prol.loopexit, %vec.epilog.scalar.ph7210
  %indvars.iv = phi i64 [ %indvars.iv.next.37251, %vec.epilog.scalar.ph7210 ], [ %indvars.iv.unr, %vec.epilog.scalar.ph7210.prol.loopexit ] ; 7 uses
  %i.bkc = trunc nuw nsw i64 %indvars.iv to i32
  %i.bkd = add i32 %i.io, %i.bkc
  %i.bke = sext i32 %i.bkd to i64
  %i.bkf = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bke
  %i.bkg = load float, ptr %i.bkf, align 4, !tbaa !13 ; 2 uses
  %i.bkh = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv
  store float %i.bkg, ptr %i.bkh, align 4, !tbaa !13
  %i.bki = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  store float %i.bkg, ptr %i.bki, align 4, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bkj = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.bkk = add i32 %i.io, %i.bkj
  %i.bkl = sext i32 %i.bkk to i64
  %i.bkm = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bkl
  %i.bkn = load float, ptr %i.bkm, align 4, !tbaa !13 ; 2 uses
  %i.bko = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.next
  store float %i.bkn, ptr %i.bko, align 4, !tbaa !13
  %i.bkp = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next
  store float %i.bkn, ptr %i.bkp, align 4, !tbaa !13
  %indvars.iv.next.17247 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.bkq = trunc nuw nsw i64 %indvars.iv.next.17247 to i32
  %i.bkr = add i32 %i.io, %i.bkq
  %i.bks = sext i32 %i.bkr to i64
  %i.bkt = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bks
  %i.bku = load float, ptr %i.bkt, align 4, !tbaa !13 ; 2 uses
  %i.bkv = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.next.17247
  store float %i.bku, ptr %i.bkv, align 4, !tbaa !13
  %i.bkw = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next.17247
  store float %i.bku, ptr %i.bkw, align 4, !tbaa !13
  %indvars.iv.next.27249 = add nuw nsw i64 %indvars.iv, 3 ; 3 uses
  %i.bkx = trunc nuw nsw i64 %indvars.iv.next.27249 to i32
  %i.bky = add i32 %i.io, %i.bkx
  %i.bkz = sext i32 %i.bky to i64
  %i.bla = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bkz
  %i.blb = load float, ptr %i.bla, align 4, !tbaa !13 ; 2 uses
  %i.blc = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.next.27249
  store float %i.blb, ptr %i.blc, align 4, !tbaa !13
  %i.bld = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next.27249
  store float %i.blb, ptr %i.bld, align 4, !tbaa !13
  %indvars.iv.next.37251 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.37251, %wide.trip.count
  br i1 %exitcond.not.3, label %iter.check7169, label %vec.epilog.scalar.ph7210, !llvm.loop !162

.loopexit3890.split:                              ; preds = %vec.epilog.scalar.ph6596.prol.loopexit, %vec.epilog.scalar.ph6596, %middle.block6591, %vec.epilog.middle.block6605, %bb.b
  %i.ble = icmp slt i32 %i.ih, %i.il              ; 2 uses
  %or.cond4111 = select i1 %i.co, i1 %i.ble, i1 false
  br i1 %or.cond4111, label %.lr.ph3900.preheader, label %._crit_edge3905.split

.lr.ph3900.preheader:                             ; preds = %.loopexit3890.split
  %i.blf = zext nneg i32 %i.ih to i64             ; 11 uses
  %wide.trip.count4136 = zext i32 %i.il to i64    ; 8 uses
  %i.blg = xor i64 %i.blf, -1
  %i.blh = add nsw i64 %i.blg, %wide.trip.count4136 ; 2 uses
  %i.bli = add i32 %i.ih, %i.hd
  %i.blj = shl nuw nsw i64 %i.blf, 2
  %scevgep6527 = getelementptr i8, ptr %scevgep6526, i64 %i.blj
  %i.blk = shl nuw nsw i64 %wide.trip.count4136, 2
  %scevgep6530.a = getelementptr i8, ptr %scevgep6529.a, i64 %i.blk
  %i.bll = add i32 %i.ih, %7
  %i.blm = mul nsw i64 %i.blf, -4
  %scevgep6532 = getelementptr i8, ptr %0, i64 %i.blm
  %i.bln = sub nsw i64 %wide.trip.count4136, %i.blf ; 6 uses
  %min.iters.check6538.a = icmp ult i64 %i.bln, 8
  %i.blo = trunc i64 %i.blh to i32
  %i.blp = icmp ugt i64 %i.blh, 4294967295
  %min.iters.check6540 = icmp ult i64 %i.bln, 32
  %i.blq = and i64 %i.bln, 24
  %n.vec6542 = and i64 %i.bln, -32                ; 4 uses
  %i.blr = or disjoint i64 %n.vec6542, %i.blf
  %cmp.n6551 = icmp eq i64 %i.bln, %n.vec6542
  %min.epilog.iters.check6557 = icmp eq i64 %i.blq, 0
  %i.bls = and i64 %wide.trip.count4136, 7        ; 2 uses
  %n.vec6559 = sub nsw i64 %i.bln, %i.bls         ; 2 uses
  %i.blt = add nsw i64 %n.vec6559, %i.blf
  %cmp.n6565 = icmp eq i64 %i.bls, 0
  br label %iter.check6554

._crit_edge3905.split:                            ; preds = %._crit_edge3901, %.loopexit3890.split
  %or.cond4112 = select i1 %i.cp, i1 %i.ble, i1 false
  br i1 %or.cond4112, label %iter.check6509, label %.loopexit3888.split

iter.check6509:                                   ; preds = %._crit_edge3905.split
  %i.blu = zext nneg i32 %i.ih to i64             ; 176 uses
  %i.blv = add i32 %i.ap, %i.ie                   ; 9 uses
  %wide.trip.count4146 = zext nneg i32 %i.il to i64 ; 128 uses
  %i.blw = sub nsw i64 %wide.trip.count4146, %i.blu ; 6 uses
  %min.iters.check6493.a = icmp ult i64 %i.blw, 8
  br i1 %min.iters.check6493.a, label %vec.epilog.scalar.ph6510.preheader, label %vector.scevcheck6480

vector.scevcheck6480:                             ; preds = %iter.check6509
  %i.blx = xor i64 %i.blu, -1
  %i.bly = add nsw i64 %i.blx, %wide.trip.count4146 ; 2 uses
  %i.blz = add i32 %i.ih, %i.blv                  ; 2 uses
  %i.bma = trunc i64 %i.bly to i32
  %i.bmb = add i32 %i.blz, %i.bma
  %i.bmc = icmp slt i32 %i.bmb, %i.blz
  %i.bmd = icmp ugt i64 %i.bly, 4294967295
  %i.bme = or i1 %i.bmc, %i.bmd
  br i1 %i.bme, label %vec.epilog.scalar.ph6510.preheader, label %vector.memcheck6481

vector.memcheck6481:                              ; preds = %vector.scevcheck6480
  %i.bmf = shl nuw nsw i64 %i.blu, 2
  %scevgep6483 = getelementptr i8, ptr %scevgep6482, i64 %i.bmf
  %i.bmg = shl nuw nsw i64 %wide.trip.count4146, 2
  %scevgep6486.a = getelementptr i8, ptr %scevgep6485.a, i64 %i.bmg
  %i.bmh = add i32 %i.ih, %i.blv
  %i.bmi = sext i32 %i.bmh to i64                 ; 2 uses
  %i.bmj = shl nsw i64 %i.bmi, 2
  %scevgep6487 = getelementptr i8, ptr %0, i64 %i.bmj
  %i.bmk = add nsw i64 %i.bmi, %wide.trip.count4146
  %i.bml = sub nsw i64 %i.bmk, %i.blu
  %i.bmm = shl nsw i64 %i.bml, 2
  %scevgep6488 = getelementptr i8, ptr %0, i64 %i.bmm
  %bound06489 = icmp ult ptr %scevgep6483, %scevgep6488
  %bound16490 = icmp ult ptr %scevgep6487, %scevgep6486.a
  %found.conflict6491 = and i1 %bound06489, %bound16490
  br i1 %found.conflict6491, label %vec.epilog.scalar.ph6510.preheader, label %vector.main.loop.iter.check6494

vector.main.loop.iter.check6494:                  ; preds = %vector.memcheck6481
  %min.iters.check6495 = icmp ult i64 %i.blw, 32
  br i1 %min.iters.check6495, label %vec.epilog.ph6513, label %vector.ph6496

vector.ph6496:                                    ; preds = %vector.main.loop.iter.check6494
  %i.bmn = and i64 %i.blw, 24
  %n.vec6497 = and i64 %i.blw, -32                ; 4 uses
  %i.bmo = or disjoint i64 %n.vec6497, %i.blu
  br label %vector.body6498

vector.body6498:                                  ; preds = %vector.body6498, %vector.ph6496
  %index6499 = phi i64 [ 0, %vector.ph6496 ], [ %index.next6504, %vector.body6498 ] ; 2 uses
  %i.bmp = or disjoint i64 %index6499, %i.blu     ; 2 uses
  %i.bmq = trunc nuw nsw i64 %i.bmp to i32
  %i.bmr = add i32 %i.blv, %i.bmq
  %i.bms = sext i32 %i.bmr to i64
  %i.bmt = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bms ; 4 uses
  %i.bmu = getelementptr inbounds nuw i8, ptr %i.bmt, i64 32
  %i.bmv = getelementptr inbounds nuw i8, ptr %i.bmt, i64 64
  %i.bmw = getelementptr inbounds nuw i8, ptr %i.bmt, i64 96
  %wide.load6500.a = load <8 x float>, ptr %i.bmt, align 4, !tbaa !13, !alias.scope !163 ; 2 uses
  %wide.load6501.a = load <8 x float>, ptr %i.bmu, align 4, !tbaa !13, !alias.scope !163 ; 2 uses
  %wide.load6502 = load <8 x float>, ptr %i.bmv, align 4, !tbaa !13, !alias.scope !163 ; 2 uses
  %wide.load6503 = load <8 x float>, ptr %i.bmw, align 4, !tbaa !13, !alias.scope !163 ; 2 uses
  %i.bmx = add nsw i64 %i.bmp, %i.fi              ; 2 uses
  %i.bmy = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.bmx ; 4 uses
  %i.bmz = getelementptr inbounds nuw i8, ptr %i.bmy, i64 32
  %i.bna = getelementptr inbounds nuw i8, ptr %i.bmy, i64 64
  %i.bnb = getelementptr inbounds nuw i8, ptr %i.bmy, i64 96
  store <8 x float> %wide.load6500.a, ptr %i.bmy, align 64, !tbaa !13, !alias.scope !166, !noalias !163
  store <8 x float> %wide.load6501.a, ptr %i.bmz, align 32, !tbaa !13, !alias.scope !166, !noalias !163
  store <8 x float> %wide.load6502, ptr %i.bna, align 64, !tbaa !13, !alias.scope !166, !noalias !163
  store <8 x float> %wide.load6503, ptr %i.bnb, align 32, !tbaa !13, !alias.scope !166, !noalias !163
  %i.bnc = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.bmx ; 4 uses
  %i.bnd = getelementptr inbounds nuw i8, ptr %i.bnc, i64 32
  %i.bne = getelementptr inbounds nuw i8, ptr %i.bnc, i64 64
  %i.bnf = getelementptr inbounds nuw i8, ptr %i.bnc, i64 96
  store <8 x float> %wide.load6500.a, ptr %i.bnc, align 64, !tbaa !13, !alias.scope !166, !noalias !163
  store <8 x float> %wide.load6501.a, ptr %i.bnd, align 32, !tbaa !13, !alias.scope !166, !noalias !163
  store <8 x float> %wide.load6502, ptr %i.bne, align 64, !tbaa !13, !alias.scope !166, !noalias !163
  store <8 x float> %wide.load6503, ptr %i.bnf, align 32, !tbaa !13, !alias.scope !166, !noalias !163
  %index.next6504 = add nuw i64 %index6499, 32    ; 2 uses
  %i.bng = icmp eq i64 %index.next6504, %n.vec6497
  br i1 %i.bng, label %middle.block6505, label %vector.body6498, !llvm.loop !168

middle.block6505:                                 ; preds = %vector.body6498
  %cmp.n6506 = icmp eq i64 %i.blw, %n.vec6497
  br i1 %cmp.n6506, label %iter.check6467, label %vec.epilog.iter.check6511

vec.epilog.iter.check6511:                        ; preds = %middle.block6505
  %min.epilog.iters.check6512 = icmp eq i64 %i.bmn, 0
  br i1 %min.epilog.iters.check6512, label %vec.epilog.scalar.ph6510.preheader, label %vec.epilog.ph6513, !prof !23

vec.epilog.ph6513:                                ; preds = %vector.main.loop.iter.check6494, %vec.epilog.iter.check6511
  %vec.epilog.resume.val6507 = phi i64 [ %n.vec6497, %vec.epilog.iter.check6511 ], [ 0, %vector.main.loop.iter.check6494 ]
  %i.bnh = and i64 %wide.trip.count4146, 7        ; 2 uses
  %n.vec6514 = sub nsw i64 %i.blw, %i.bnh         ; 2 uses
  %i.bni = add nsw i64 %n.vec6514, %i.blu
  br label %vec.epilog.vector.body6515

vec.epilog.vector.body6515:                       ; preds = %vec.epilog.vector.body6515, %vec.epilog.ph6513
  %index6516 = phi i64 [ %vec.epilog.resume.val6507, %vec.epilog.ph6513 ], [ %index.next6518, %vec.epilog.vector.body6515 ] ; 2 uses
  %i.bnj = add nuw i64 %index6516, %i.blu         ; 2 uses
  %i.bnk = trunc nuw nsw i64 %i.bnj to i32
  %i.bnl = add i32 %i.blv, %i.bnk
  %i.bnm = sext i32 %i.bnl to i64
  %i.bnn = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bnm
  %wide.load6517 = load <8 x float>, ptr %i.bnn, align 4, !tbaa !13, !alias.scope !163 ; 2 uses
  %i.bno = add nsw i64 %i.bnj, %i.fi              ; 2 uses
  %i.bnp = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.bno
  store <8 x float> %wide.load6517, ptr %i.bnp, align 32, !tbaa !13, !alias.scope !166, !noalias !163
  %i.bnq = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.bno
  store <8 x float> %wide.load6517, ptr %i.bnq, align 32, !tbaa !13, !alias.scope !166, !noalias !163
  %index.next6518 = add nuw i64 %index6516, 8     ; 2 uses
  %i.bnr = icmp eq i64 %index.next6518, %n.vec6514
  br i1 %i.bnr, label %vec.epilog.middle.block6519, label %vec.epilog.vector.body6515, !llvm.loop !169

vec.epilog.middle.block6519:                      ; preds = %vec.epilog.vector.body6515
  %cmp.n6520 = icmp eq i64 %i.bnh, 0
  br i1 %cmp.n6520, label %iter.check6467, label %vec.epilog.scalar.ph6510.preheader

vec.epilog.scalar.ph6510.preheader:               ; preds = %vector.memcheck6481, %vector.scevcheck6480, %iter.check6509, %vec.epilog.iter.check6511, %vec.epilog.middle.block6519
  %indvars.iv4143.ph = phi i64 [ %i.blu, %iter.check6509 ], [ %i.blu, %vector.scevcheck6480 ], [ %i.blu, %vector.memcheck6481 ], [ %i.bmo, %vec.epilog.iter.check6511 ], [ %i.bni, %vec.epilog.middle.block6519 ] ; 4 uses
  %i.bns = sub i64 %wide.trip.count4146, %indvars.iv4143.ph
  %xtraiter7300 = and i64 %i.bns, 3               ; 2 uses
  %lcmp.mod7301.not = icmp eq i64 %xtraiter7300, 0
  br i1 %lcmp.mod7301.not, label %vec.epilog.scalar.ph6510.prol.loopexit, label %vec.epilog.scalar.ph6510.prol

vec.epilog.scalar.ph6510.prol:                    ; preds = %vec.epilog.scalar.ph6510.preheader, %vec.epilog.scalar.ph6510.prol
  %indvars.iv4143.prol = phi i64 [ %indvars.iv.next4144.prol, %vec.epilog.scalar.ph6510.prol ], [ %indvars.iv4143.ph, %vec.epilog.scalar.ph6510.preheader ] ; 3 uses
  %prol.iter7302 = phi i64 [ %prol.iter7302.next, %vec.epilog.scalar.ph6510.prol ], [ 0, %vec.epilog.scalar.ph6510.preheader ]
  %i.bnt = trunc nuw nsw i64 %indvars.iv4143.prol to i32
  %i.bnu = add i32 %i.blv, %i.bnt
  %i.bnv = sext i32 %i.bnu to i64
  %i.bnw = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bnv
  %i.bnx = load float, ptr %i.bnw, align 4, !tbaa !13 ; 2 uses
  %i.bny = add nsw i64 %indvars.iv4143.prol, %i.fi ; 2 uses
  %i.bnz = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.bny
  store float %i.bnx, ptr %i.bnz, align 4, !tbaa !13
  %i.boa = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.bny
  store float %i.bnx, ptr %i.boa, align 4, !tbaa !13
  %indvars.iv.next4144.prol = add nuw nsw i64 %indvars.iv4143.prol, 1 ; 2 uses
  %prol.iter7302.next = add i64 %prol.iter7302, 1 ; 2 uses
  %prol.iter7302.cmp.not = icmp eq i64 %prol.iter7302.next, %xtraiter7300
  br i1 %prol.iter7302.cmp.not, label %vec.epilog.scalar.ph6510.prol.loopexit, label %vec.epilog.scalar.ph6510.prol, !llvm.loop !170

vec.epilog.scalar.ph6510.prol.loopexit:           ; preds = %vec.epilog.scalar.ph6510.prol, %vec.epilog.scalar.ph6510.preheader
  %indvars.iv4143.unr = phi i64 [ %indvars.iv4143.ph, %vec.epilog.scalar.ph6510.preheader ], [ %indvars.iv.next4144.prol, %vec.epilog.scalar.ph6510.prol ]
  %i.bob = sub i64 %indvars.iv4143.ph, %wide.trip.count4146
  %i.boc = icmp ugt i64 %i.bob, -4
  br i1 %i.boc, label %iter.check6467, label %vec.epilog.scalar.ph6510

iter.check6554:                                   ; preds = %.lr.ph3900.preheader, %._crit_edge3901
  %indvar6523 = phi i32 [ 0, %.lr.ph3900.preheader ], [ %indvar.next6524, %._crit_edge3901 ] ; 3 uses
  %indvars.iv4138 = phi i64 [ %i.di, %.lr.ph3900.preheader ], [ %indvars.iv.next4139, %._crit_edge3901 ] ; 3 uses
  %i.bod = mul i32 %2, %indvar6523
  %i.boe = add i32 %i.bll, %i.bod
  %i.bof = sext i32 %i.boe to i64                 ; 2 uses
  %i.bog = shl nsw i64 %i.bof, 2
  %scevgep6531.a = getelementptr i8, ptr %0, i64 %i.bog
  %i.boh = add nsw i64 %wide.trip.count4136, %i.bof
  %i.boi = shl nsw i64 %i.boh, 2
  %scevgep6533 = getelementptr i8, ptr %scevgep6532, i64 %i.boi
  %i.boj = add nsw i64 %indvars.iv4138, %indvars.iv4348
  %i.bok = mul nuw nsw i64 %indvars.iv4138, 160   ; 7 uses
  %i.bol = trunc i64 %i.boj to i32
  %i.bom = mul i32 %2, %i.bol
  %i.bon = add i32 %i.bom, %i.ie                  ; 7 uses
  br i1 %min.iters.check6538.a, label %vec.epilog.scalar.ph6555.preheader, label %vector.scevcheck6522

vector.scevcheck6522:                             ; preds = %iter.check6554
  %i.boo = mul i32 %2, %indvar6523
  %i.bop = add i32 %i.bli, %i.boo                 ; 2 uses
  %i.boq = add i32 %i.bop, %i.blo
  %i.bor = icmp slt i32 %i.boq, %i.bop
  %i.bos = or i1 %i.bor, %i.blp
  br i1 %i.bos, label %vec.epilog.scalar.ph6555.preheader, label %vector.memcheck6525

vector.memcheck6525:                              ; preds = %vector.scevcheck6522
  %bound06534 = icmp ult ptr %scevgep6527, %scevgep6533
  %bound16535 = icmp ult ptr %scevgep6531.a, %scevgep6530.a
end_hunk_1
begin_hunk_2_@amaze_demosaic:bb.a
  %i.epk = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.epi
  store float %i.eph, ptr %i.epk, align 4, !tbaa !13
  %i.epl = add i32 %i.elx, -13
  %i.epm = sext i32 %i.epl to i64
  %i.epn = getelementptr inbounds [4 x i8], ptr %0, i64 %i.epm
  %i.epo = load float, ptr %i.epn, align 4, !tbaa !13 ; 2 uses
  %i.epp = add nsw i64 %i.elz, 13                 ; 2 uses
  %i.epq = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.epp
  store float %i.epo, ptr %i.epq, align 4, !tbaa !13
  %i.epr = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.epp
  store float %i.epo, ptr %i.epr, align 4, !tbaa !13
  %i.eps = add i32 %i.elx, -14
  %i.ept = sext i32 %i.eps to i64
  %i.epu = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ept
  %i.epv = load float, ptr %i.epu, align 4, !tbaa !13 ; 2 uses
  %i.epw = add nsw i64 %i.elz, 14                 ; 2 uses
  %i.epx = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.epw
  store float %i.epv, ptr %i.epx, align 4, !tbaa !13
  %i.epy = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.epw
  store float %i.epv, ptr %i.epy, align 4, !tbaa !13
  %i.epz = add i32 %i.elx, -15
  %i.eqa = sext i32 %i.epz to i64
  %i.eqb = getelementptr inbounds [4 x i8], ptr %0, i64 %i.eqa
  %i.eqc = load float, ptr %i.eqb, align 4, !tbaa !13 ; 2 uses
  %i.eqd = add nsw i64 %i.elz, 15                 ; 2 uses
  %i.eqe = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.eqd
  store float %i.eqc, ptr %i.eqe, align 4, !tbaa !13
  %i.eqf = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.eqd
  store float %i.eqc, ptr %i.eqf, align 4, !tbaa !13
  %indvars.iv.next4191 = add nuw nsw i64 %indvars.iv4190, 1 ; 2 uses
  %exitcond4193.not = icmp eq i64 %indvars.iv.next4191, 16
  br i1 %exitcond4193.not, label %.loopexit3878, label %.preheader3854, !llvm.loop !321

.loopexit3878:                                    ; preds = %.preheader3854, %.loopexit3880
  %or.cond3 = and i1 %i.cp, %i.ig
  br i1 %or.cond3, label %.preheader3853, label %.loopexit3876

.preheader3853:                                   ; preds = %.loopexit3878, %.preheader3853
  %indvars.iv4198 = phi i64 [ %indvars.iv.next4199, %.preheader3853 ], [ 0, %.loopexit3878 ] ; 3 uses
  %i.eqg = trunc nuw nsw i64 %indvars.iv4198 to i32
  %i.eqh = sub i32 %i.ah, %i.eqg
  %i.eqi = mul nsw i32 %i.eqh, %2                 ; 16 uses
  %reass.sub = add i32 %i.eqi, 32
  %i.eqj = add nsw i64 %indvars.iv4198, %i.dj
  %i.eqk = mul nsw i64 %i.eqj, 160                ; 17 uses
  %i.eql = sext i32 %reass.sub to i64
  %i.eqm = getelementptr inbounds [4 x i8], ptr %0, i64 %i.eql
  %i.eqn = load float, ptr %i.eqm, align 4, !tbaa !13 ; 2 uses
  %i.eqo = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.eqk
  store float %i.eqn, ptr %i.eqo, align 64, !tbaa !13
  %i.eqp = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.eqk
  store float %i.eqn, ptr %i.eqp, align 64, !tbaa !13
  %i.eqq = add i32 %i.eqi, 31
  %i.eqr = sext i32 %i.eqq to i64
  %i.eqs = getelementptr inbounds [4 x i8], ptr %0, i64 %i.eqr
  %i.eqt = load float, ptr %i.eqs, align 4, !tbaa !13 ; 2 uses
  %i.equ = or disjoint i64 %i.eqk, 1              ; 2 uses
  %i.eqv = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.equ
  store float %i.eqt, ptr %i.eqv, align 4, !tbaa !13
  %i.eqw = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.equ
  store float %i.eqt, ptr %i.eqw, align 4, !tbaa !13
  %i.eqx = add i32 %i.eqi, 30
  %i.eqy = sext i32 %i.eqx to i64
  %i.eqz = getelementptr inbounds [4 x i8], ptr %0, i64 %i.eqy
  %i.era = load float, ptr %i.eqz, align 4, !tbaa !13 ; 2 uses
  %i.erb = or disjoint i64 %i.eqk, 2              ; 2 uses
  %i.erc = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.erb
  store float %i.era, ptr %i.erc, align 8, !tbaa !13
  %i.erd = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.erb
  store float %i.era, ptr %i.erd, align 8, !tbaa !13
  %i.ere = add i32 %i.eqi, 29
  %i.erf = sext i32 %i.ere to i64
  %i.erg = getelementptr inbounds [4 x i8], ptr %0, i64 %i.erf
  %i.erh = load float, ptr %i.erg, align 4, !tbaa !13 ; 2 uses
  %i.eri = or disjoint i64 %i.eqk, 3              ; 2 uses
  %i.erj = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.eri
  store float %i.erh, ptr %i.erj, align 4, !tbaa !13
  %i.erk = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.eri
  store float %i.erh, ptr %i.erk, align 4, !tbaa !13
  %i.erl = add i32 %i.eqi, 28
  %i.erm = sext i32 %i.erl to i64
  %i.ern = getelementptr inbounds [4 x i8], ptr %0, i64 %i.erm
  %i.ero = load float, ptr %i.ern, align 4, !tbaa !13 ; 2 uses
  %i.erp = or disjoint i64 %i.eqk, 4              ; 2 uses
  %i.erq = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.erp
  store float %i.ero, ptr %i.erq, align 16, !tbaa !13
  %i.err = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.erp
  store float %i.ero, ptr %i.err, align 16, !tbaa !13
  %i.ers = add i32 %i.eqi, 27
  %i.ert = sext i32 %i.ers to i64
  %i.eru = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ert
  %i.erv = load float, ptr %i.eru, align 4, !tbaa !13 ; 2 uses
  %i.erw = or disjoint i64 %i.eqk, 5              ; 2 uses
  %i.erx = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.erw
  store float %i.erv, ptr %i.erx, align 4, !tbaa !13
  %i.ery = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.erw
  store float %i.erv, ptr %i.ery, align 4, !tbaa !13
  %i.erz = add i32 %i.eqi, 26
  %i.esa = sext i32 %i.erz to i64
  %i.esb = getelementptr inbounds [4 x i8], ptr %0, i64 %i.esa
  %i.esc = load float, ptr %i.esb, align 4, !tbaa !13 ; 2 uses
  %i.esd = or disjoint i64 %i.eqk, 6              ; 2 uses
  %i.ese = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.esd
  store float %i.esc, ptr %i.ese, align 8, !tbaa !13
  %i.esf = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.esd
  store float %i.esc, ptr %i.esf, align 8, !tbaa !13
  %i.esg = add i32 %i.eqi, 25
  %i.esh = sext i32 %i.esg to i64
  %i.esi = getelementptr inbounds [4 x i8], ptr %0, i64 %i.esh
  %i.esj = load float, ptr %i.esi, align 4, !tbaa !13 ; 2 uses
  %i.esk = or disjoint i64 %i.eqk, 7              ; 2 uses
  %i.esl = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.esk
  store float %i.esj, ptr %i.esl, align 4, !tbaa !13
  %i.esm = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.esk
  store float %i.esj, ptr %i.esm, align 4, !tbaa !13
  %i.esn = add i32 %i.eqi, 24
  %i.eso = sext i32 %i.esn to i64
  %i.esp = getelementptr inbounds [4 x i8], ptr %0, i64 %i.eso
  %i.esq = load float, ptr %i.esp, align 4, !tbaa !13 ; 2 uses
  %i.esr = or disjoint i64 %i.eqk, 8              ; 2 uses
  %i.ess = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.esr
  store float %i.esq, ptr %i.ess, align 32, !tbaa !13
  %i.est = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.esr
  store float %i.esq, ptr %i.est, align 32, !tbaa !13
  %i.esu = add i32 %i.eqi, 23
  %i.esv = sext i32 %i.esu to i64
  %i.esw = getelementptr inbounds [4 x i8], ptr %0, i64 %i.esv
  %i.esx = load float, ptr %i.esw, align 4, !tbaa !13 ; 2 uses
  %i.esy = or disjoint i64 %i.eqk, 9              ; 2 uses
  %i.esz = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.esy
  store float %i.esx, ptr %i.esz, align 4, !tbaa !13
  %i.eta = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.esy
  store float %i.esx, ptr %i.eta, align 4, !tbaa !13
  %i.etb = add i32 %i.eqi, 22
  %i.etc = sext i32 %i.etb to i64
  %i.etd = getelementptr inbounds [4 x i8], ptr %0, i64 %i.etc
  %i.ete = load float, ptr %i.etd, align 4, !tbaa !13 ; 2 uses
  %i.etf = or disjoint i64 %i.eqk, 10             ; 2 uses
  %i.etg = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.etf
  store float %i.ete, ptr %i.etg, align 8, !tbaa !13
  %i.eth = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.etf
  store float %i.ete, ptr %i.eth, align 8, !tbaa !13
  %i.eti = add i32 %i.eqi, 21
  %i.etj = sext i32 %i.eti to i64
  %i.etk = getelementptr inbounds [4 x i8], ptr %0, i64 %i.etj
  %i.etl = load float, ptr %i.etk, align 4, !tbaa !13 ; 2 uses
  %i.etm = or disjoint i64 %i.eqk, 11             ; 2 uses
  %i.etn = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.etm
  store float %i.etl, ptr %i.etn, align 4, !tbaa !13
  %i.eto = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.etm
  store float %i.etl, ptr %i.eto, align 4, !tbaa !13
  %i.etp = add i32 %i.eqi, 20
  %i.etq = sext i32 %i.etp to i64
  %i.etr = getelementptr inbounds [4 x i8], ptr %0, i64 %i.etq
  %i.ets = load float, ptr %i.etr, align 4, !tbaa !13 ; 2 uses
  %i.ett = or disjoint i64 %i.eqk, 12             ; 2 uses
  %i.etu = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.ett
  store float %i.ets, ptr %i.etu, align 16, !tbaa !13
  %i.etv = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.ett
  store float %i.ets, ptr %i.etv, align 16, !tbaa !13
  %i.etw = add i32 %i.eqi, 19
  %i.etx = sext i32 %i.etw to i64
  %i.ety = getelementptr inbounds [4 x i8], ptr %0, i64 %i.etx
  %i.etz = load float, ptr %i.ety, align 4, !tbaa !13 ; 2 uses
  %i.eua = or disjoint i64 %i.eqk, 13             ; 2 uses
  %i.eub = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.eua
  store float %i.etz, ptr %i.eub, align 4, !tbaa !13
  %i.euc = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.eua
  store float %i.etz, ptr %i.euc, align 4, !tbaa !13
  %i.eud = add i32 %i.eqi, 18
  %i.eue = sext i32 %i.eud to i64
  %i.euf = getelementptr inbounds [4 x i8], ptr %0, i64 %i.eue
  %i.eug = load float, ptr %i.euf, align 4, !tbaa !13 ; 2 uses
  %i.euh = or disjoint i64 %i.eqk, 14             ; 2 uses
  %i.eui = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.euh
  store float %i.eug, ptr %i.eui, align 8, !tbaa !13
  %i.euj = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.euh
  store float %i.eug, ptr %i.euj, align 8, !tbaa !13
  %i.euk = add i32 %i.eqi, 17
  %i.eul = sext i32 %i.euk to i64
  %i.eum = getelementptr inbounds [4 x i8], ptr %0, i64 %i.eul
  %i.eun = load float, ptr %i.eum, align 4, !tbaa !13 ; 2 uses
  %i.euo = or disjoint i64 %i.eqk, 15             ; 2 uses
  %i.eup = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.euo
  store float %i.eun, ptr %i.eup, align 4, !tbaa !13
  %i.euq = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.euo
  store float %i.eun, ptr %i.euq, align 4, !tbaa !13
  %indvars.iv.next4199 = add nuw nsw i64 %indvars.iv4198, 1 ; 2 uses
  %exitcond4201.not = icmp eq i64 %indvars.iv.next4199, 16
  br i1 %exitcond4201.not, label %.loopexit3876, label %.preheader3853, !llvm.loop !322

.loopexit3876:                                    ; preds = %.preheader3853, %.loopexit3878
  br i1 %i.cs, label %.lr.ph3930, label %.preheader3862

.lr.ph3930:                                       ; preds = %.loopexit3876
  %i.eur = add nsw i32 %i.if, -2
  %i.eus = icmp sgt i32 %i.if, 4
  br i1 %i.eus, label %.lr.ph3926.preheader, label %.preheader3874

.lr.ph3926.preheader:                             ; preds = %.lr.ph3930
  %min.iters.check5045 = icmp ult i32 %8, 8
  %n.vec5047 = and i64 %9, 4294967288             ; 4 uses
  %i.eut = trunc nuw i64 %n.vec5047 to i32
  %i.euu = or disjoint i32 %i.eut, 2
  %cmp.n5063 = icmp eq i64 %n.vec5047, %9
  br label %.lr.ph3926

.preheader3874:                                   ; preds = %._crit_edge3927, %.lr.ph3930
  br i1 %i.cu, label %.lr.ph3938, label %.preheader3862

.lr.ph3938:                                       ; preds = %.preheader3874
  %i.euv = add nsw i32 %i.if, -4
  %i.euw = icmp sgt i32 %i.if, 8
  br i1 %i.euw, label %.lr.ph3935.preheader, label %.preheader3872

.lr.ph3935.preheader:                             ; preds = %.lr.ph3938
  %min.iters.check4996 = icmp ult i32 %12, 8
  %n.vec4998 = and i64 %13, 4294967288            ; 4 uses
  %i.eux = trunc nuw i64 %n.vec4998 to i32
  %i.euy = or disjoint i32 %i.eux, 4
  %cmp.n5038 = icmp eq i64 %n.vec4998, %13
  br label %.lr.ph3935

.lr.ph3926:                                       ; preds = %.lr.ph3926.preheader, %._crit_edge3927
  %indvars.iv4202 = phi i32 [ %indvars.iv.next4203, %._crit_edge3927 ], [ 320, %.lr.ph3926.preheader ] ; 2 uses
  %.032363928 = phi i32 [ %i.ewn, %._crit_edge3927 ], [ 2, %.lr.ph3926.preheader ]
  %i.euz = or disjoint i32 %indvars.iv4202, 2
  %i.eva = zext i32 %i.euz to i64                 ; 4 uses
  %.phi.trans.insert = getelementptr [4 x i8], ptr %i.y, i64 %i.eva
  %.pre = load float, ptr %.phi.trans.insert, align 8, !tbaa !13 ; 2 uses
  br i1 %min.iters.check5045, label %scalar.ph5044.preheader, label %vector.ph5046

vector.ph5046:                                    ; preds = %.lr.ph3926
  %i.evb = add nuw nsw i64 %n.vec5047, %i.eva
  %vector.recur.init5050 = insertelement <8 x float> poison, float %.pre, i64 7
  br label %vector.body5048

vector.body5048:                                  ; preds = %vector.body5048, %vector.ph5046
  %index5049 = phi i64 [ 0, %vector.ph5046 ], [ %index.next5060, %vector.body5048 ] ; 2 uses
  %vector.recur5051 = phi <8 x float> [ %vector.recur.init5050, %vector.ph5046 ], [ %wide.load5052.a, %vector.body5048 ]
  %i.evc = add nuw i64 %index5049, %i.eva         ; 5 uses
  %i.evd = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.evc
  %i.eve = getelementptr inbounds nuw i8, ptr %i.evd, i64 4
  %wide.load5052.a = load <8 x float>, ptr %i.eve, align 4, !tbaa !13 ; 4 uses
  %i.evf = shufflevector <8 x float> %vector.recur5051, <8 x float> %wide.load5052.a, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14> ; 4 uses
  %i.evg = getelementptr [4 x i8], ptr %i.y, i64 %i.evc ; 7 uses
  %i.evh = getelementptr i8, ptr %i.evg, i64 -4
  %wide.load5053.a = load <8 x float>, ptr %i.evh, align 4, !tbaa !13
  %i.evi = fsub reassoc nsz arcp contract afn <8 x float> %wide.load5052.a, %wide.load5053.a ; 3 uses
  %i.evj = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.evi)
  %i.evk = getelementptr inbounds nuw i8, ptr %i.evg, i64 640
  %wide.load5054.a = load <8 x float>, ptr %i.evk, align 8, !tbaa !13
  %i.evl = getelementptr i8, ptr %i.evg, i64 -640
  %wide.load5055.a = load <8 x float>, ptr %i.evl, align 8, !tbaa !13
  %i.evm = fsub reassoc nsz arcp contract afn <8 x float> %wide.load5054.a, %wide.load5055.a ; 3 uses
  %i.evn = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.evm)
  %i.evo = getelementptr inbounds nuw i8, ptr %i.evg, i64 1280
  %wide.load5056.a = load <8 x float>, ptr %i.evo, align 8, !tbaa !13
  %i.evp = fsub reassoc nsz arcp contract afn <8 x float> %wide.load5056.a, %i.evf
  %i.evq = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.evp)
  %i.evr = getelementptr i8, ptr %i.evg, i64 -1280
  %wide.load5057.a = load <8 x float>, ptr %i.evr, align 8, !tbaa !13
  %i.evs = fsub reassoc nsz arcp contract afn <8 x float> %i.evf, %wide.load5057.a
  %i.evt = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.evs)
  %i.evu = fadd reassoc nsz arcp contract afn <8 x float> %i.evn, splat (float f0x3727C5AC)
  %i.evv = fadd reassoc nsz arcp contract afn <8 x float> %i.evu, %i.evq
  %i.evw = fadd reassoc nsz arcp contract afn <8 x float> %i.evv, %i.evt
  %i.evx = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.evc
  store <8 x float> %i.evw, ptr %i.evx, align 8, !tbaa !13
  %i.evy = getelementptr inbounds nuw i8, ptr %i.evg, i64 8
  %wide.load5058 = load <8 x float>, ptr %i.evy, align 16, !tbaa !13
  %i.evz = fsub reassoc nsz arcp contract afn <8 x float> %wide.load5058, %i.evf
  %i.ewa = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.evz)
  %i.ewb = getelementptr i8, ptr %i.evg, i64 -8
  %wide.load5059 = load <8 x float>, ptr %i.ewb, align 32, !tbaa !13
  %i.ewc = fsub reassoc nsz arcp contract afn <8 x float> %i.evf, %wide.load5059
  %i.ewd = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ewc)
  %i.ewe = fadd reassoc nsz arcp contract afn <8 x float> %i.evj, splat (float f0x3727C5AC)
  %i.ewf = fadd reassoc nsz arcp contract afn <8 x float> %i.ewe, %i.ewa
  %i.ewg = fadd reassoc nsz arcp contract afn <8 x float> %i.ewf, %i.ewd
  %i.ewh = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.evc
  store <8 x float> %i.ewg, ptr %i.ewh, align 8, !tbaa !13
  %i.ewi = fmul reassoc nsz arcp contract afn <8 x float> %i.evi, %i.evi
  %i.ewj = fmul reassoc nsz arcp contract afn <8 x float> %i.evm, %i.evm
  %i.ewk = fadd reassoc nsz arcp contract afn <8 x float> %i.ewj, %i.ewi
  %i.ewl = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.evc
  store <8 x float> %i.ewk, ptr %i.ewl, align 8, !tbaa !13
  %index.next5060 = add nuw i64 %index5049, 8     ; 2 uses
  %i.ewm = icmp eq i64 %index.next5060, %n.vec5047
  br i1 %i.ewm, label %middle.block5061, label %vector.body5048, !llvm.loop !323

middle.block5061:                                 ; preds = %vector.body5048
  %vector.recur.extract5062 = extractelement <8 x float> %wide.load5052.a, i64 7
  br i1 %cmp.n5063, label %._crit_edge3927, label %scalar.ph5044.preheader

scalar.ph5044.preheader:                          ; preds = %.lr.ph3926, %middle.block5061
  %.ph7241 = phi float [ %.pre, %.lr.ph3926 ], [ %vector.recur.extract5062, %middle.block5061 ]
  %indvars.iv4204.ph = phi i64 [ %i.eva, %.lr.ph3926 ], [ %i.evb, %middle.block5061 ]
  %.032353923.ph = phi i32 [ 2, %.lr.ph3926 ], [ %i.euu, %middle.block5061 ]
  br label %scalar.ph5044

._crit_edge3927:                                  ; preds = %scalar.ph5044, %middle.block5061
  %i.ewn = add nuw nsw i32 %.032363928, 1         ; 2 uses
  %i.ewo = icmp slt i32 %i.ewn, %i.cr
  %indvars.iv.next4203 = add i32 %indvars.iv4202, 160
  br i1 %i.ewo, label %.lr.ph3926, label %.preheader3874, !llvm.loop !324

scalar.ph5044:                                    ; preds = %scalar.ph5044.preheader, %scalar.ph5044
  %i.ewp = phi float [ %i.ewr, %scalar.ph5044 ], [ %.ph7241, %scalar.ph5044.preheader ] ; 4 uses
  %indvars.iv4204 = phi i64 [ %indvars.iv.next4205, %scalar.ph5044 ], [ %indvars.iv4204.ph, %scalar.ph5044.preheader ] ; 5 uses
  %.032353923 = phi i32 [ %i.eyf, %scalar.ph5044 ], [ %.032353923.ph, %scalar.ph5044.preheader ]
  %indvars.iv.next4205 = add nuw nsw i64 %indvars.iv4204, 1 ; 2 uses
  %i.ewq = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.next4205
  %i.ewr = load float, ptr %i.ewq, align 4, !tbaa !13 ; 2 uses
  %i.ews = getelementptr [4 x i8], ptr %i.y, i64 %indvars.iv4204 ; 7 uses
  %i.ewt = getelementptr i8, ptr %i.ews, i64 -4
  %i.ewu = load float, ptr %i.ewt, align 4, !tbaa !13
  %i.ewv = fsub reassoc nsz arcp contract afn float %i.ewr, %i.ewu ; 3 uses
  %i.eww = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ewv)
  %i.ewx = getelementptr inbounds nuw i8, ptr %i.ews, i64 640
  %i.ewy = load float, ptr %i.ewx, align 4, !tbaa !13
  %i.ewz = getelementptr i8, ptr %i.ews, i64 -640
  %i.exa = load float, ptr %i.ewz, align 4, !tbaa !13
  %i.exb = fsub reassoc nsz arcp contract afn float %i.ewy, %i.exa ; 3 uses
  %i.exc = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.exb)
  %i.exd = getelementptr inbounds nuw i8, ptr %i.ews, i64 1280
  %i.exe = load float, ptr %i.exd, align 4, !tbaa !13
  %i.exf = fsub reassoc nsz arcp contract afn float %i.exe, %i.ewp
  %i.exg = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.exf)
  %i.exh = getelementptr i8, ptr %i.ews, i64 -1280
  %i.exi = load float, ptr %i.exh, align 4, !tbaa !13
  %i.exj = fsub reassoc nsz arcp contract afn float %i.ewp, %i.exi
  %i.exk = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.exj)
  %i.exl = fadd reassoc nsz arcp contract afn float %i.exc, f0x3727C5AC
  %i.exm = fadd reassoc nsz arcp contract afn float %i.exl, %i.exg
  %i.exn = fadd reassoc nsz arcp contract afn float %i.exm, %i.exk
  %i.exo = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv4204
  store float %i.exn, ptr %i.exo, align 4, !tbaa !13
  %i.exp = getelementptr inbounds nuw i8, ptr %i.ews, i64 8
  %i.exq = load float, ptr %i.exp, align 4, !tbaa !13
  %i.exr = fsub reassoc nsz arcp contract afn float %i.exq, %i.ewp
  %i.exs = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.exr)
  %i.ext = getelementptr i8, ptr %i.ews, i64 -8
  %i.exu = load float, ptr %i.ext, align 4, !tbaa !13
  %i.exv = fsub reassoc nsz arcp contract afn float %i.ewp, %i.exu
  %i.exw = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.exv)
  %i.exx = fadd reassoc nsz arcp contract afn float %i.eww, f0x3727C5AC
  %i.exy = fadd reassoc nsz arcp contract afn float %i.exx, %i.exs
  %i.exz = fadd reassoc nsz arcp contract afn float %i.exy, %i.exw
  %i.eya = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv4204
  store float %i.exz, ptr %i.eya, align 4, !tbaa !13
  %i.eyb = fmul reassoc nsz arcp contract afn float %i.ewv, %i.ewv
  %i.eyc = fmul reassoc nsz arcp contract afn float %i.exb, %i.exb
  %i.eyd = fadd reassoc nsz arcp contract afn float %i.eyc, %i.eyb
  %i.eye = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv4204
  store float %i.eyd, ptr %i.eye, align 4, !tbaa !13
  %i.eyf = add nuw nsw i32 %.032353923, 1         ; 2 uses
  %i.eyg = icmp slt i32 %i.eyf, %i.eur
  br i1 %i.eyg, label %scalar.ph5044, label %._crit_edge3927, !llvm.loop !325

.lr.ph3946:                                       ; preds = %._crit_edge3936
  %i.eyh = add nsw i32 %i.if, -4
  br label %.lr.ph3943

.lr.ph3935:                                       ; preds = %.lr.ph3935.preheader, %._crit_edge3936
  %indvars.iv4207 = phi i32 [ %indvars.iv.next4208, %._crit_edge3936 ], [ 640, %.lr.ph3935.preheader ] ; 2 uses
  %.032333937 = phi i32 [ %i.fer, %._crit_edge3936 ], [ 4, %.lr.ph3935.preheader ] ; 2 uses
  %i.eyi = or disjoint i32 %indvars.iv4207, 4
  %i.eyj = sext i32 %i.eyi to i64                 ; 5 uses
  %i.eyk = shl i32 %.032333937, 2
  %i.eyl = and i32 %i.eyk, 28
  %i.eym = lshr i32 %4, %i.eyl
  %i.eyn = trunc i32 %i.eym to i1                 ; 2 uses
  %.phi.trans.insert4355 = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.eyj
  %.pre4356 = load float, ptr %.phi.trans.insert4355, align 16, !tbaa !13 ; 2 uses
  %.phi.trans.insert4357 = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.eyj
  %.pre4358 = load float, ptr %.phi.trans.insert4357, align 16, !tbaa !13 ; 2 uses
  br i1 %min.iters.check4996, label %scalar.ph4995.preheader, label %vector.ph4997

vector.ph4997:                                    ; preds = %.lr.ph3935
  %i.eyo = add nsw i64 %n.vec4998, %i.eyj
  %broadcast.splatinsert5001 = insertelement <8 x i1> poison, i1 %i.eyn, i64 0
  %broadcast.splat5002 = shufflevector <8 x i1> %broadcast.splatinsert5001, <8 x i1> poison, <8 x i32> zeroinitializer
  %induction5003 = xor <8 x i1> %broadcast.splat5002, <i1 false, i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true> ; 4 uses
  %vector.recur.init = insertelement <8 x float> poison, float %.pre4358, i64 7
  %vector.recur.init5006 = insertelement <8 x float> poison, float %.pre4356, i64 7
  br label %vector.body5004

vector.body5004:                                  ; preds = %vector.body5004, %vector.ph4997
  %index5005 = phi i64 [ 0, %vector.ph4997 ], [ %index.next5035, %vector.body5004 ] ; 2 uses
  %vector.recur = phi <8 x float> [ %vector.recur.init, %vector.ph4997 ], [ %wide.load5023.a, %vector.body5004 ]
  %vector.recur5007 = phi <8 x float> [ %vector.recur.init5006, %vector.ph4997 ], [ %wide.load5019.a, %vector.body5004 ]
  %i.eyp = add nuw i64 %index5005, %i.eyj         ; 16 uses
  %i.eyq = add nsw i64 %i.eyp, -160               ; 2 uses
  %i.eyr = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.eyq
  %wide.load5009.a = load <8 x float>, ptr %i.eyr, align 16, !tbaa !13 ; 2 uses
  %i.eys = add nsw i64 %i.eyp, -320               ; 2 uses
  %i.eyt = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.eys
  %wide.load5010.a = load <8 x float>, ptr %i.eyt, align 16, !tbaa !13 ; 2 uses
  %i.eyu = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.eyp
  %wide.load5011.a = load <8 x float>, ptr %i.eyu, align 16, !tbaa !13 ; 4 uses
  %i.eyv = fadd reassoc nsz arcp contract afn <8 x float> %wide.load5011.a, %wide.load5010.a
  %i.eyw = fmul reassoc nsz arcp contract afn <8 x float> %i.eyv, %wide.load5009.a
  %i.eyx = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.eyp
  %i.eyy = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.eys
  %wide.load5012.a = load <8 x float>, ptr %i.eyy, align 16, !tbaa !13 ; 2 uses
  %i.eyz = fadd reassoc nsz arcp contract afn <8 x float> %wide.load5012.a, splat (float f0x3727C5AC)
  %i.eza = fmul reassoc nsz arcp contract afn <8 x float> %i.eyz, %wide.load5011.a
  %i.ezb = add nuw nsw i64 %i.eyp, 160            ; 2 uses
  %i.ezc = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.ezb
  %wide.load5013.a = load <8 x float>, ptr %i.ezc, align 16, !tbaa !13 ; 2 uses
  %i.ezd = add nuw nsw i64 %i.eyp, 320            ; 2 uses
  %i.eze = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ezd
  %wide.load5014.a = load <8 x float>, ptr %i.eze, align 16, !tbaa !13 ; 2 uses
  %i.ezf = fadd reassoc nsz arcp contract afn <8 x float> %wide.load5014.a, %wide.load5011.a
  %i.ezg = fmul reassoc nsz arcp contract afn <8 x float> %i.ezf, %wide.load5013.a
  %i.ezh = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.ezd
  %wide.load5015.a = load <8 x float>, ptr %i.ezh, align 16, !tbaa !13 ; 2 uses
  %i.ezi = fadd reassoc nsz arcp contract afn <8 x float> %wide.load5015.a, splat (float f0x3727C5AC)
  %i.ezj = fmul reassoc nsz arcp contract afn <8 x float> %i.ezi, %wide.load5011.a
  %i.ezk = add nsw i64 %i.eyp, -1                 ; 2 uses
end_hunk_2
