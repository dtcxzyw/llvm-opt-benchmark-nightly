Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vp6?download=true
inline.NumInlined: 24
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumUnrolled: 40
begin_hunk_0_@vp6_parse_header:bb.a

vpx_rac_renorm.exit.i.i239.3:                     ; preds = %bb.bz, %bb.by, %vpx_rac_renorm.exit.i.i239.2
  %.018.i.i.i240.3 = phi i32 [ %i.yg, %bb.bz ], [ %i.xv, %bb.by ], [ %i.xv, %vpx_rac_renorm.exit.i.i239.2 ] ; 2 uses
  %.0.i.i.i241.3 = phi i32 [ %i.yf, %bb.bz ], [ %i.xu, %bb.by ], [ %i.xu, %vpx_rac_renorm.exit.i.i239.2 ] ; 2 uses
  store i32 %.018.i.i.i240.3, ptr %i.kl, align 4, !tbaa !52
  %i.yh = add nsw i32 %i.xt, 1
  %i.yi = ashr i32 %i.yh, 1                       ; 3 uses
  %i.yj = shl i32 %i.yi, 16                       ; 2 uses
  %i.yk = icmp uge i32 %.0.i.i.i241.3, %i.yj      ; 3 uses
  %i.yl = sub nsw i32 %i.xt, %i.yi
  %.sink.i242.3 = select i1 %i.yk, i32 %i.yl, i32 %i.yi
  %i.ym = select i1 %i.yk, i32 %i.yj, i32 0
  %.0.i.i243.3 = sub nuw i32 %.0.i.i.i241.3, %i.ym ; 2 uses
  %i.yn = zext i1 %i.yk to i32
  store i32 %.0.i.i243.3, ptr %i.km, align 8, !tbaa !53
  %i.yo = or disjoint i32 %i.xo, %i.yn
  %i.yp = getelementptr inbounds nuw i8, ptr %0, i64 1772
  store i32 %i.yo, ptr %i.yp, align 4, !tbaa !118
  br label %.thread

bb.ca:                                            ; preds = %bb.bq
  %i.yq = getelementptr inbounds nuw i8, ptr %0, i64 1772
  store i32 16, ptr %i.yq, align 4, !tbaa !118
  br label %.thread

.thread:                                          ; preds = %.thread377, %vpx_rac_renorm.exit.i.i.1, %vpx_rac_renorm.exit.i198, %bb.am, %vpx_rac_renorm.exit.i.i239.3, %bb.ca
  %i.yr = phi i32 [ %.0.i.i185, %.thread377 ], [ %.0.i.i243.3, %vpx_rac_renorm.exit.i.i239.3 ], [ %.promoted6.i234, %bb.ca ], [ %i.iz, %bb.am ], [ %.0.i201, %vpx_rac_renorm.exit.i198 ], [ %.0.i.i203.1, %vpx_rac_renorm.exit.i.i.1 ]
  %i.ys = phi i32 [ %.018.i.i184, %.thread377 ], [ %.018.i.i.i240.3, %vpx_rac_renorm.exit.i.i239.3 ], [ %.promoted4.i233, %bb.ca ], [ %i.ja, %bb.am ], [ %.018.i.i199, %vpx_rac_renorm.exit.i198 ], [ %.018.i.i.i.1, %vpx_rac_renorm.exit.i.i.1 ]
  %i.yt = phi i32 [ %i.jz, %.thread377 ], [ %.sink.i242.3, %vpx_rac_renorm.exit.i.i239.3 ], [ %.promoted.i232, %bb.ca ], [ %i.jb, %bb.am ], [ %i.gt, %vpx_rac_renorm.exit.i198 ], [ %.sink.i.1, %vpx_rac_renorm.exit.i.i.1 ] ; 2 uses
  %.1259 = phi i32 [ 0, %.thread377 ], [ %.1376, %vpx_rac_renorm.exit.i.i239.3 ], [ %.1376, %bb.ca ], [ 0, %bb.am ], [ 0, %vpx_rac_renorm.exit.i198 ], [ %.0129, %vpx_rac_renorm.exit.i.i.1 ] ; 3 uses
  %.2134258 = phi i32 [ %.1133, %.thread377 ], [ %.2134374, %vpx_rac_renorm.exit.i.i239.3 ], [ %.2134374, %bb.ca ], [ %.1133, %bb.am ], [ %.1133, %vpx_rac_renorm.exit.i198 ], [ %.0132, %vpx_rac_renorm.exit.i.i.1 ] ; 3 uses
  %.2138257 = phi i32 [ %.1137, %.thread377 ], [ %.2138373, %vpx_rac_renorm.exit.i.i239.3 ], [ %.2138373, %bb.ca ], [ %.1137, %bb.am ], [ %.1137, %vpx_rac_renorm.exit.i198 ], [ %.0136, %vpx_rac_renorm.exit.i.i.1 ]
  %.2141256 = phi ptr [ %.1140, %.thread377 ], [ %.2141372, %vpx_rac_renorm.exit.i.i239.3 ], [ %.2141372, %bb.ca ], [ %.1140, %bb.am ], [ %.1140, %vpx_rac_renorm.exit.i198 ], [ %.0139, %vpx_rac_renorm.exit.i.i.1 ]
  %i.yu = sext i32 %i.yt to i64
  %i.yv = getelementptr inbounds i8, ptr @ff_vpx_norm_shift, i64 %i.yu
  %i.yw = load i8, ptr %i.yv, align 1, !tbaa !54
  %i.yx = zext i8 %i.yw to i32                    ; 3 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %0, i64 668
  %i.yz = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.za = shl i32 %i.yt, %i.yx                    ; 3 uses
  store i32 %i.za, ptr %i.a, align 8, !tbaa !51
  %i.zb = shl i32 %i.yr, %i.yx                    ; 3 uses
  %i.zc = add nsw i32 %i.ys, %i.yx                ; 5 uses
  %i.zd = icmp sgt i32 %i.zc, -1
  br i1 %i.zd, label %bb.cb, label %vpx_rac_renorm.exit.i

bb.cb:                                            ; preds = %.thread
  %i.ze = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 2 uses
  %i.zf = load ptr, ptr %i.ze, align 8, !tbaa !55 ; 3 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.zh = load ptr, ptr %i.zg, align 8, !tbaa !56
  %i.zi = icmp ult ptr %i.zf, %i.zh
  br i1 %i.zi, label %bb.cc, label %vpx_rac_renorm.exit.i

bb.cc:                                            ; preds = %bb.cb
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zf, i64 2
  store ptr %i.zj, ptr %i.ze, align 8, !tbaa !57
  %i.zk = load i16, ptr %i.zf, align 1, !tbaa !54
  %i.zl = tail call i16 @llvm.bswap.i16(i16 %i.zk)
  %i.zm = zext i16 %i.zl to i32
  %i.zn = shl i32 %i.zm, %i.zc
  %i.zo = or i32 %i.zn, %i.zb
  %i.zp = add nsw i32 %i.zc, -16
  br label %vpx_rac_renorm.exit.i

vpx_rac_renorm.exit.i:                            ; preds = %bb.cc, %bb.cb, %.thread
  %.018.i.i = phi i32 [ %i.zp, %bb.cc ], [ %i.zc, %bb.cb ], [ %i.zc, %.thread ]
  %.0.i.i = phi i32 [ %i.zo, %bb.cc ], [ %i.zb, %bb.cb ], [ %i.zb, %.thread ] ; 2 uses
  store i32 %.018.i.i, ptr %i.yy, align 4, !tbaa !52
  %i.zq = add nsw i32 %i.za, 1
  %i.zr = ashr i32 %i.zq, 1                       ; 3 uses
  %i.zs = shl i32 %i.zr, 16                       ; 2 uses
  %i.zt = icmp uge i32 %.0.i.i, %i.zs             ; 4 uses
  %i.zu = sub nsw i32 %i.za, %i.zr
  %.sink277 = select i1 %i.zt, i32 %i.zu, i32 %i.zr
  %i.zv = select i1 %i.zt, i32 %i.zs, i32 0
  %.0.i = sub nuw i32 %.0.i.i, %i.zv
  store i32 %.sink277, ptr %i.a, align 8, !tbaa !51
  %i.zw = zext i1 %i.zt to i32
  store i32 %.0.i, ptr %i.yz, align 8, !tbaa !53
  %i.zx = getelementptr inbounds nuw i8, ptr %0, i64 5152
  store i32 %i.zw, ptr %i.zx, align 16, !tbaa !74
  %i.zy = getelementptr inbounds nuw i8, ptr %0, i64 3160 ; 2 uses
  store ptr @vp6_parse_coeff, ptr %i.zy, align 8, !tbaa !119
  %.not171 = icmp eq i32 %.2134258, 0
  br i1 %.not171, label %.sink.split, label %bb.cd

bb.cd:                                            ; preds = %vpx_rac_renorm.exit.i
  %i.zz = sext i32 %.2134258 to i64
  %i.aaa = getelementptr inbounds i8, ptr %.2141256, i64 %i.zz ; 2 uses
  %i.aab = sub nsw i32 %.2138257, %.2134258       ; 4 uses
  %i.aac = icmp slt i32 %i.aab, 0
  br i1 %i.aac, label %bb.ci, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  br i1 %i.zt, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  store ptr @vp6_parse_coeff_huffman, ptr %i.zy, align 8, !tbaa !119
  %i.aad = getelementptr inbounds nuw i8, ptr %0, i64 5160
  %i.aae = icmp samesign ugt i32 %i.aab, 268435455
  %i.aaf = shl nuw nsw i32 %i.aab, 3
  %i.aag = select i1 %i.aae, i32 -8, i32 %i.aaf   ; 2 uses
  %or.cond.i.i = icmp ugt i32 %i.aag, 2147483134  ; 3 uses
  %.014.i.i = select i1 %or.cond.i.i, ptr null, ptr %i.aaa
  %.013.i.i = select i1 %or.cond.i.i, i32 0, i32 %i.aag ; 2 uses
  store ptr %.014.i.i, ptr %i.aad, align 8, !tbaa !79
  %i.aah = getelementptr inbounds nuw i8, ptr %0, i64 5172
  store i32 %.013.i.i, ptr %i.aah, align 4, !tbaa !80
  %i.aai = add nuw nsw i32 %.013.i.i, 8
  %i.aaj = getelementptr inbounds nuw i8, ptr %0, i64 5176
  store i32 %i.aai, ptr %i.aaj, align 8, !tbaa !81
  %i.aak = getelementptr inbounds nuw i8, ptr %0, i64 5168
  store i32 0, ptr %i.aak, align 16, !tbaa !82
  br i1 %or.cond.i.i, label %bb.ck, label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  %i.aal = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 2 uses
  %i.aam = tail call i32 @ff_vpx_init_range_decoder(ptr noundef nonnull %i.aal, ptr noundef nonnull %i.aaa, i32 noundef %i.aab) #13 ; 2 uses
  %i.aan = icmp slt i32 %i.aam, 0
  br i1 %i.aan, label %bb.ci, label %.sink.split

.sink.split:                                      ; preds = %vpx_rac_renorm.exit.i, %bb.cg
  %.sink381 = phi ptr [ %i.aal, %bb.cg ], [ %i.a, %vpx_rac_renorm.exit.i ]
  %i.aao = getelementptr inbounds nuw i8, ptr %0, i64 728
  store ptr %.sink381, ptr %i.aao, align 8, !tbaa !83
  br label %bb.ch

bb.ch:                                            ; preds = %.sink.split, %bb.cf
  br label %bb.ck

bb.ci:                                            ; preds = %bb.cd, %bb.cg, %bb.q
  %.2 = phi i32 [ %.0129, %bb.q ], [ %.1259, %bb.cg ], [ %.1259, %bb.cd ]
  %.0 = phi i32 [ %i.cq, %bb.q ], [ %i.aam, %bb.cg ], [ -1094995529, %bb.cd ] ; 2 uses
  %i.aap = icmp eq i32 %.2, 1
  br i1 %i.aap, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.aaq = load ptr, ptr %0, align 16, !tbaa !77
  %i.aar = tail call i32 @ff_set_dimensions(ptr noundef %i.aaq, i32 noundef 0, i32 noundef 0) #13 ; 0 uses
  br label %bb.ck

bb.ck:                                            ; preds = %bb.ci, %bb.cj, %bb.cf, %bb.ac, %bb.w, %bb.x, %bb.y, %bb.n, %bb.b, %bb.ch, %bb.f
  %.0142 = phi i32 [ %i.bu, %bb.n ], [ -1094995529, %bb.cf ], [ %i.fn, %bb.ac ], [ %.1259, %bb.ch ], [ -1094995529, %bb.b ], [ -1094995529, %bb.f ], [ -1094995529, %bb.w ], [ -1094995529, %bb.y ], [ -1094995529, %bb.x ], [ %.0, %bb.cj ], [ %.0, %bb.ci ]
  ret i32 %.0142
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @vp6_filter_hv4(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 8 uses
  %i.c = shl nsw i32 %3, 1
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 6 ; 8 uses
  %i.e = sext i32 %3 to i64                       ; 16 uses
  %i.f = sext i32 %i.c to i64                     ; 8 uses
  %i.g = sub nsw i64 0, %i.e
  %i.h = sub nsw i64 1, %i.e
  %i.i = sub nsw i64 2, %i.e
  %i.j = sub nsw i64 3, %i.e
  %i.k = sub nsw i64 4, %i.e
  %i.l = sub nsw i64 5, %i.e
  %i.m = sub nsw i64 6, %i.e
  %i.n = sub nsw i64 7, %i.e
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader
  %.030 = phi i32 [ 0, %bb.a ], [ %i.jq, %.preheader ]
  %.02529 = phi ptr [ %0, %bb.a ], [ %i.jp, %.preheader ] ; 9 uses
  %.02628 = phi ptr [ %1, %bb.a ], [ %i.jo, %.preheader ] ; 33 uses
  %i.o = getelementptr inbounds i8, ptr %.02628, i64 %i.g
  %i.p = load i8, ptr %i.o, align 1, !tbaa !54
  %i.q = zext i8 %i.p to i32
  %i.r = load i16, ptr %4, align 2, !tbaa !50
  %i.s = sext i16 %i.r to i32
  %i.t = mul nsw i32 %i.s, %i.q
  %i.u = load i8, ptr %.02628, align 1, !tbaa !54
  %i.v = zext i8 %i.u to i32
  %i.w = load i16, ptr %i.a, align 2, !tbaa !50
  %i.x = sext i16 %i.w to i32
  %i.y = mul nsw i32 %i.x, %i.v
  %i.z = getelementptr inbounds i8, ptr %.02628, i64 %i.e
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !54
  %i.ab = zext i8 %i.aa to i32
  %i.ac = load i16, ptr %i.b, align 2, !tbaa !50
  %i.ad = sext i16 %i.ac to i32
  %i.ae = mul nsw i32 %i.ad, %i.ab
  %i.af = getelementptr inbounds i8, ptr %.02628, i64 %i.f
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !54
  %i.ah = zext i8 %i.ag to i32
  %i.ai = load i16, ptr %i.d, align 2, !tbaa !50
  %i.aj = sext i16 %i.ai to i32
  %i.ak = mul nsw i32 %i.aj, %i.ah
  %i.al = add nsw i32 %i.t, 64
  %i.am = add nsw i32 %i.al, %i.y
  %i.an = add nsw i32 %i.am, %i.ae
  %i.ao = add nsw i32 %i.an, %i.ak
  %i.ap = ashr i32 %i.ao, 7                       ; 3 uses
  %5 = icmp ugt i32 %i.ap, 255
  %isnotneg.i = icmp sgt i32 %i.ap, -1
  %6 = sext i1 %isnotneg.i to i8
  %i.aq = trunc nuw i32 %i.ap to i8
  %.0.i = select i1 %5, i8 %6, i8 %i.aq
  store i8 %.0.i, ptr %.02529, align 1, !tbaa !54
  %i.ar = getelementptr inbounds i8, ptr %.02628, i64 %i.h
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !54
  %i.at = zext i8 %i.as to i32
  %i.au = load i16, ptr %4, align 2, !tbaa !50
  %i.av = sext i16 %i.au to i32
  %i.aw = mul nsw i32 %i.av, %i.at
  %i.ax = getelementptr inbounds nuw i8, ptr %.02628, i64 1
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !54
  %i.az = zext i8 %i.ay to i32
  %i.ba = load i16, ptr %i.a, align 2, !tbaa !50
  %i.bb = sext i16 %i.ba to i32
  %i.bc = mul nsw i32 %i.bb, %i.az
  %i.bd = getelementptr i8, ptr %.02628, i64 %i.e
  %i.be = getelementptr i8, ptr %i.bd, i64 1
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !54
  %i.bg = zext i8 %i.bf to i32
  %i.bh = load i16, ptr %i.b, align 2, !tbaa !50
  %i.bi = sext i16 %i.bh to i32
  %i.bj = mul nsw i32 %i.bi, %i.bg
  %i.bk = getelementptr i8, ptr %.02628, i64 %i.f
  %i.bl = getelementptr i8, ptr %i.bk, i64 1
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !54
  %i.bn = zext i8 %i.bm to i32
  %i.bo = load i16, ptr %i.d, align 2, !tbaa !50
  %i.bp = sext i16 %i.bo to i32
  %i.bq = mul nsw i32 %i.bp, %i.bn
  %i.br = add nsw i32 %i.aw, 64
  %i.bs = add nsw i32 %i.br, %i.bc
  %i.bt = add nsw i32 %i.bs, %i.bj
  %i.bu = add nsw i32 %i.bt, %i.bq
  %i.bv = ashr i32 %i.bu, 7                       ; 3 uses
  %7 = icmp ugt i32 %i.bv, 255
  %isnotneg.i.1 = icmp sgt i32 %i.bv, -1
  %8 = sext i1 %isnotneg.i.1 to i8
  %i.bw = trunc nuw i32 %i.bv to i8
  %.0.i.1 = select i1 %7, i8 %8, i8 %i.bw
  %i.bx = getelementptr inbounds nuw i8, ptr %.02529, i64 1
  store i8 %.0.i.1, ptr %i.bx, align 1, !tbaa !54
  %i.by = getelementptr inbounds i8, ptr %.02628, i64 %i.i
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !54
  %i.ca = zext i8 %i.bz to i32
  %i.cb = load i16, ptr %4, align 2, !tbaa !50
  %i.cc = sext i16 %i.cb to i32
  %i.cd = mul nsw i32 %i.cc, %i.ca
  %i.ce = getelementptr inbounds nuw i8, ptr %.02628, i64 2
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !54
  %i.cg = zext i8 %i.cf to i32
  %i.ch = load i16, ptr %i.a, align 2, !tbaa !50
  %i.ci = sext i16 %i.ch to i32
  %i.cj = mul nsw i32 %i.ci, %i.cg
  %i.ck = getelementptr i8, ptr %.02628, i64 %i.e
  %i.cl = getelementptr i8, ptr %i.ck, i64 2
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !54
  %i.cn = zext i8 %i.cm to i32
  %i.co = load i16, ptr %i.b, align 2, !tbaa !50
  %i.cp = sext i16 %i.co to i32
  %i.cq = mul nsw i32 %i.cp, %i.cn
  %i.cr = getelementptr i8, ptr %.02628, i64 %i.f
  %i.cs = getelementptr i8, ptr %i.cr, i64 2
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !54
  %i.cu = zext i8 %i.ct to i32
  %i.cv = load i16, ptr %i.d, align 2, !tbaa !50
  %i.cw = sext i16 %i.cv to i32
  %i.cx = mul nsw i32 %i.cw, %i.cu
  %i.cy = add nsw i32 %i.cd, 64
  %i.cz = add nsw i32 %i.cy, %i.cj
  %i.da = add nsw i32 %i.cz, %i.cq
  %i.db = add nsw i32 %i.da, %i.cx
  %i.dc = ashr i32 %i.db, 7                       ; 3 uses
  %9 = icmp ugt i32 %i.dc, 255
  %isnotneg.i.2 = icmp sgt i32 %i.dc, -1
  %10 = sext i1 %isnotneg.i.2 to i8
  %i.dd = trunc nuw i32 %i.dc to i8
  %.0.i.2 = select i1 %9, i8 %10, i8 %i.dd
  %i.de = getelementptr inbounds nuw i8, ptr %.02529, i64 2
  store i8 %.0.i.2, ptr %i.de, align 1, !tbaa !54
  %i.df = getelementptr inbounds i8, ptr %.02628, i64 %i.j
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !54
  %i.dh = zext i8 %i.dg to i32
  %i.di = load i16, ptr %4, align 2, !tbaa !50
  %i.dj = sext i16 %i.di to i32
  %i.dk = mul nsw i32 %i.dj, %i.dh
  %i.dl = getelementptr inbounds nuw i8, ptr %.02628, i64 3
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !54
  %i.dn = zext i8 %i.dm to i32
  %i.do = load i16, ptr %i.a, align 2, !tbaa !50
  %i.dp = sext i16 %i.do to i32
  %i.dq = mul nsw i32 %i.dp, %i.dn
  %i.dr = getelementptr i8, ptr %.02628, i64 %i.e
  %i.ds = getelementptr i8, ptr %i.dr, i64 3
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !54
  %i.du = zext i8 %i.dt to i32
  %i.dv = load i16, ptr %i.b, align 2, !tbaa !50
  %i.dw = sext i16 %i.dv to i32
  %i.dx = mul nsw i32 %i.dw, %i.du
  %i.dy = getelementptr i8, ptr %.02628, i64 %i.f
  %i.dz = getelementptr i8, ptr %i.dy, i64 3
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !54
  %i.eb = zext i8 %i.ea to i32
  %i.ec = load i16, ptr %i.d, align 2, !tbaa !50
  %i.ed = sext i16 %i.ec to i32
  %i.ee = mul nsw i32 %i.ed, %i.eb
  %i.ef = add nsw i32 %i.dk, 64
  %i.eg = add nsw i32 %i.ef, %i.dq
  %i.eh = add nsw i32 %i.eg, %i.dx
  %i.ei = add nsw i32 %i.eh, %i.ee
  %i.ej = ashr i32 %i.ei, 7                       ; 3 uses
  %11 = icmp ugt i32 %i.ej, 255
  %isnotneg.i.3 = icmp sgt i32 %i.ej, -1
  %12 = sext i1 %isnotneg.i.3 to i8
  %i.ek = trunc nuw i32 %i.ej to i8
  %.0.i.3 = select i1 %11, i8 %12, i8 %i.ek
  %i.el = getelementptr inbounds nuw i8, ptr %.02529, i64 3
  store i8 %.0.i.3, ptr %i.el, align 1, !tbaa !54
  %i.em = getelementptr inbounds i8, ptr %.02628, i64 %i.k
  %i.en = load i8, ptr %i.em, align 1, !tbaa !54
  %i.eo = zext i8 %i.en to i32
  %i.ep = load i16, ptr %4, align 2, !tbaa !50
  %i.eq = sext i16 %i.ep to i32
  %i.er = mul nsw i32 %i.eq, %i.eo
  %i.es = getelementptr inbounds nuw i8, ptr %.02628, i64 4
  %i.et = load i8, ptr %i.es, align 1, !tbaa !54
  %i.eu = zext i8 %i.et to i32
  %i.ev = load i16, ptr %i.a, align 2, !tbaa !50
  %i.ew = sext i16 %i.ev to i32
  %i.ex = mul nsw i32 %i.ew, %i.eu
  %i.ey = getelementptr i8, ptr %.02628, i64 %i.e
  %i.ez = getelementptr i8, ptr %i.ey, i64 4
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !54
  %i.fb = zext i8 %i.fa to i32
  %i.fc = load i16, ptr %i.b, align 2, !tbaa !50
  %i.fd = sext i16 %i.fc to i32
  %i.fe = mul nsw i32 %i.fd, %i.fb
  %i.ff = getelementptr i8, ptr %.02628, i64 %i.f
  %i.fg = getelementptr i8, ptr %i.ff, i64 4
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !54
  %i.fi = zext i8 %i.fh to i32
  %i.fj = load i16, ptr %i.d, align 2, !tbaa !50
  %i.fk = sext i16 %i.fj to i32
  %i.fl = mul nsw i32 %i.fk, %i.fi
  %i.fm = add nsw i32 %i.er, 64
  %i.fn = add nsw i32 %i.fm, %i.ex
  %i.fo = add nsw i32 %i.fn, %i.fe
  %i.fp = add nsw i32 %i.fo, %i.fl
  %i.fq = ashr i32 %i.fp, 7                       ; 3 uses
  %13 = icmp ugt i32 %i.fq, 255
  %isnotneg.i.4 = icmp sgt i32 %i.fq, -1
  %14 = sext i1 %isnotneg.i.4 to i8
  %i.fr = trunc nuw i32 %i.fq to i8
  %.0.i.4 = select i1 %13, i8 %14, i8 %i.fr
  %i.fs = getelementptr inbounds nuw i8, ptr %.02529, i64 4
  store i8 %.0.i.4, ptr %i.fs, align 1, !tbaa !54
  %i.ft = getelementptr inbounds i8, ptr %.02628, i64 %i.l
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !54
  %i.fv = zext i8 %i.fu to i32
  %i.fw = load i16, ptr %4, align 2, !tbaa !50
  %i.fx = sext i16 %i.fw to i32
  %i.fy = mul nsw i32 %i.fx, %i.fv
  %i.fz = getelementptr inbounds nuw i8, ptr %.02628, i64 5
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !54
  %i.gb = zext i8 %i.ga to i32
  %i.gc = load i16, ptr %i.a, align 2, !tbaa !50
  %i.gd = sext i16 %i.gc to i32
  %i.ge = mul nsw i32 %i.gd, %i.gb
  %i.gf = getelementptr i8, ptr %.02628, i64 %i.e
  %i.gg = getelementptr i8, ptr %i.gf, i64 5
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !54
  %i.gi = zext i8 %i.gh to i32
  %i.gj = load i16, ptr %i.b, align 2, !tbaa !50
  %i.gk = sext i16 %i.gj to i32
  %i.gl = mul nsw i32 %i.gk, %i.gi
  %i.gm = getelementptr i8, ptr %.02628, i64 %i.f
  %i.gn = getelementptr i8, ptr %i.gm, i64 5
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !54
  %i.gp = zext i8 %i.go to i32
  %i.gq = load i16, ptr %i.d, align 2, !tbaa !50
  %i.gr = sext i16 %i.gq to i32
  %i.gs = mul nsw i32 %i.gr, %i.gp
  %i.gt = add nsw i32 %i.fy, 64
  %i.gu = add nsw i32 %i.gt, %i.ge
  %i.gv = add nsw i32 %i.gu, %i.gl
  %i.gw = add nsw i32 %i.gv, %i.gs
  %i.gx = ashr i32 %i.gw, 7                       ; 3 uses
  %15 = icmp ugt i32 %i.gx, 255
  %isnotneg.i.5 = icmp sgt i32 %i.gx, -1
  %16 = sext i1 %isnotneg.i.5 to i8
  %i.gy = trunc nuw i32 %i.gx to i8
  %.0.i.5 = select i1 %15, i8 %16, i8 %i.gy
  %i.gz = getelementptr inbounds nuw i8, ptr %.02529, i64 5
  store i8 %.0.i.5, ptr %i.gz, align 1, !tbaa !54
  %i.ha = getelementptr inbounds i8, ptr %.02628, i64 %i.m
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !54
  %i.hc = zext i8 %i.hb to i32
  %i.hd = load i16, ptr %4, align 2, !tbaa !50
  %i.he = sext i16 %i.hd to i32
  %i.hf = mul nsw i32 %i.he, %i.hc
  %i.hg = getelementptr inbounds nuw i8, ptr %.02628, i64 6
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !54
  %i.hi = zext i8 %i.hh to i32
  %i.hj = load i16, ptr %i.a, align 2, !tbaa !50
  %i.hk = sext i16 %i.hj to i32
  %i.hl = mul nsw i32 %i.hk, %i.hi
  %i.hm = getelementptr i8, ptr %.02628, i64 %i.e
  %i.hn = getelementptr i8, ptr %i.hm, i64 6
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !54
  %i.hp = zext i8 %i.ho to i32
  %i.hq = load i16, ptr %i.b, align 2, !tbaa !50
  %i.hr = sext i16 %i.hq to i32
  %i.hs = mul nsw i32 %i.hr, %i.hp
  %i.ht = getelementptr i8, ptr %.02628, i64 %i.f
  %i.hu = getelementptr i8, ptr %i.ht, i64 6
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !54
  %i.hw = zext i8 %i.hv to i32
  %i.hx = load i16, ptr %i.d, align 2, !tbaa !50
  %i.hy = sext i16 %i.hx to i32
  %i.hz = mul nsw i32 %i.hy, %i.hw
  %i.ia = add nsw i32 %i.hf, 64
  %i.ib = add nsw i32 %i.ia, %i.hl
  %i.ic = add nsw i32 %i.ib, %i.hs
  %i.id = add nsw i32 %i.ic, %i.hz
  %i.ie = ashr i32 %i.id, 7                       ; 3 uses
  %17 = icmp ugt i32 %i.ie, 255
  %isnotneg.i.6 = icmp sgt i32 %i.ie, -1
  %18 = sext i1 %isnotneg.i.6 to i8
  %i.if = trunc nuw i32 %i.ie to i8
  %.0.i.6 = select i1 %17, i8 %18, i8 %i.if
  %i.ig = getelementptr inbounds nuw i8, ptr %.02529, i64 6
  store i8 %.0.i.6, ptr %i.ig, align 1, !tbaa !54
  %i.ih = getelementptr inbounds i8, ptr %.02628, i64 %i.n
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !54
  %i.ij = zext i8 %i.ii to i32
  %i.ik = load i16, ptr %4, align 2, !tbaa !50
  %i.il = sext i16 %i.ik to i32
  %i.im = mul nsw i32 %i.il, %i.ij
  %i.in = getelementptr inbounds nuw i8, ptr %.02628, i64 7
  %i.io = load i8, ptr %i.in, align 1, !tbaa !54
  %i.ip = zext i8 %i.io to i32
  %i.iq = load i16, ptr %i.a, align 2, !tbaa !50
  %i.ir = sext i16 %i.iq to i32
  %i.is = mul nsw i32 %i.ir, %i.ip
  %i.it = getelementptr i8, ptr %.02628, i64 %i.e
  %i.iu = getelementptr i8, ptr %i.it, i64 7
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !54
  %i.iw = zext i8 %i.iv to i32
  %i.ix = load i16, ptr %i.b, align 2, !tbaa !50
  %i.iy = sext i16 %i.ix to i32
  %i.iz = mul nsw i32 %i.iy, %i.iw
  %i.ja = getelementptr i8, ptr %.02628, i64 %i.f
  %i.jb = getelementptr i8, ptr %i.ja, i64 7
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !54
  %i.jd = zext i8 %i.jc to i32
  %i.je = load i16, ptr %i.d, align 2, !tbaa !50
  %i.jf = sext i16 %i.je to i32
  %i.jg = mul nsw i32 %i.jf, %i.jd
  %i.jh = add nsw i32 %i.im, 64
  %i.ji = add nsw i32 %i.jh, %i.is
  %i.jj = add nsw i32 %i.ji, %i.iz
  %i.jk = add nsw i32 %i.jj, %i.jg
  %i.jl = ashr i32 %i.jk, 7                       ; 3 uses
  %19 = icmp ugt i32 %i.jl, 255
  %isnotneg.i.7 = icmp sgt i32 %i.jl, -1
  %20 = sext i1 %isnotneg.i.7 to i8
  %i.jm = trunc nuw i32 %i.jl to i8
  %.0.i.7 = select i1 %19, i8 %20, i8 %i.jm
  %i.jn = getelementptr inbounds nuw i8, ptr %.02529, i64 7
  store i8 %.0.i.7, ptr %i.jn, align 1, !tbaa !54
  %i.jo = getelementptr inbounds i8, ptr %.02628, i64 %2
  %i.jp = getelementptr inbounds i8, ptr %.02529, i64 %2
  %i.jq = add nuw nsw i32 %.030, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.jq, 8
  br i1 %exitcond.not, label %bb.b, label %.preheader, !llvm.loop !120

bb.b:                                             ; preds = %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @vp6_coeff_order_table_init(ptr nofree noundef readonly captures(none) %0) unnamed_addr #5 {
.preheader34:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3208 ; 34 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i8 0, ptr %i.c, align 1, !tbaa !54
  br label %bb.a

bb.a:                                             ; preds = %bb.f, %.preheader34
  %indvars.iv = phi i64 [ 1, %.preheader34 ], [ %indvars.iv.next.173, %bb.f ] ; 4 uses
  %.12636 = phi i32 [ 1, %.preheader34 ], [ %.227.172, %bb.f ] ; 3 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv
  %i.f = load i8, ptr %i.e, align 1, !tbaa !54
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = trunc i64 %indvars.iv to i8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.j = add nsw i32 %.12636, 1
  %i.k = sext i32 %.12636 to i64
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 %i.k
  store i8 %i.h, ptr %i.l, align 1, !tbaa !54
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.227 = phi i32 [ %i.j, %bb.b ], [ %.12636, %bb.a ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond.not, label %.preheader34.1, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv.next
  %i.o = load i8, ptr %i.n, align 1, !tbaa !54
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = trunc i64 %indvars.iv.next to i8
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.s = add nsw i32 %.227, 1
  %i.t = sext i32 %.227 to i64
  %i.u = getelementptr inbounds i8, ptr %i.r, i64 %i.t
  store i8 %i.q, ptr %i.u, align 1, !tbaa !54
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.227.172 = phi i32 [ %i.s, %bb.e ], [ %.227, %bb.d ]
  %indvars.iv.next.173 = add nuw nsw i64 %indvars.iv, 2
  br label %bb.a

.preheader34.1:                                   ; preds = %bb.c, %bb.j
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1.1, %bb.j ], [ 1, %bb.c ] ; 4 uses
  %.12636.1 = phi i32 [ %.227.1.1, %bb.j ], [ %.227, %bb.c ] ; 3 uses
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv.1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !54
  %i.y = icmp eq i8 %i.x, 1
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.preheader34.1
  %i.z = trunc i64 %indvars.iv.1 to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %i.ab = add nsw i32 %.12636.1, 1
  %i.ac = sext i32 %.12636.1 to i64
  %i.ad = getelementptr inbounds i8, ptr %i.aa, i64 %i.ac
  store i8 %i.z, ptr %i.ad, align 1, !tbaa !54
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.preheader34.1
  %.227.1 = phi i32 [ %i.ab, %bb.g ], [ %.12636.1, %.preheader34.1 ] ; 4 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 3 uses
  %exitcond.1.not = icmp eq i64 %indvars.iv.next.1, 64
  br i1 %exitcond.1.not, label %.preheader34.2, label %.preheader34.1.1

.preheader34.1.1:                                 ; preds = %bb.h
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !49  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv.next.1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !54
  %i.ah = icmp eq i8 %i.ag, 1
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.preheader34.1.1
  %i.ai = trunc i64 %indvars.iv.next.1 to i8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %i.ak = add nsw i32 %.227.1, 1
  %i.al = sext i32 %.227.1 to i64
  %i.am = getelementptr inbounds i8, ptr %i.aj, i64 %i.al
  store i8 %i.ai, ptr %i.am, align 1, !tbaa !54
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.preheader34.1.1
  %.227.1.1 = phi i32 [ %i.ak, %bb.i ], [ %.227.1, %.preheader34.1.1 ]
  %indvars.iv.next.1.1 = add nuw nsw i64 %indvars.iv.1, 2
  br label %.preheader34.1

.preheader34.2:                                   ; preds = %bb.h, %bb.n
  %indvars.iv.2 = phi i64 [ %indvars.iv.next.2.1, %bb.n ], [ 1, %bb.h ] ; 4 uses
  %.12636.2 = phi i32 [ %.227.2.1, %bb.n ], [ %.227.1, %bb.h ] ; 3 uses
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !49  ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %indvars.iv.2
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !54
  %i.aq = icmp eq i8 %i.ap, 2
  br i1 %i.aq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.preheader34.2
  %i.ar = trunc i64 %indvars.iv.2 to i8
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.at = add nsw i32 %.12636.2, 1
  %i.au = sext i32 %.12636.2 to i64
  %i.av = getelementptr inbounds i8, ptr %i.as, i64 %i.au
  store i8 %i.ar, ptr %i.av, align 1, !tbaa !54
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.preheader34.2
  %.227.2 = phi i32 [ %i.at, %bb.k ], [ %.12636.2, %.preheader34.2 ] ; 4 uses
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 1 ; 3 uses
  %exitcond.2.not = icmp eq i64 %indvars.iv.next.2, 64
  br i1 %exitcond.2.not, label %.preheader34.3, label %.preheader34.2.1

.preheader34.2.1:                                 ; preds = %bb.l
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !49  ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %indvars.iv.next.2
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !54
  %i.az = icmp eq i8 %i.ay, 2
  br i1 %i.az, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.preheader34.2.1
  %i.ba = trunc i64 %indvars.iv.next.2 to i8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  %i.bc = add nsw i32 %.227.2, 1
  %i.bd = sext i32 %.227.2 to i64
  %i.be = getelementptr inbounds i8, ptr %i.bb, i64 %i.bd
  store i8 %i.ba, ptr %i.be, align 1, !tbaa !54
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.preheader34.2.1
  %.227.2.1 = phi i32 [ %i.bc, %bb.m ], [ %.227.2, %.preheader34.2.1 ]
  %indvars.iv.next.2.1 = add nuw nsw i64 %indvars.iv.2, 2
  br label %.preheader34.2

.preheader34.3:                                   ; preds = %bb.l, %bb.r
  %indvars.iv.3 = phi i64 [ %indvars.iv.next.3.1, %bb.r ], [ 1, %bb.l ] ; 4 uses
  %.12636.3 = phi i32 [ %.227.3.1, %bb.r ], [ %.227.2, %bb.l ] ; 3 uses
  %i.bf = load ptr, ptr %i.a, align 8, !tbaa !49  ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %indvars.iv.3
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !54
  %i.bi = icmp eq i8 %i.bh, 3
  br i1 %i.bi, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.preheader34.3
  %i.bj = trunc i64 %indvars.iv.3 to i8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 64
  %i.bl = add nsw i32 %.12636.3, 1
  %i.bm = sext i32 %.12636.3 to i64
  %i.bn = getelementptr inbounds i8, ptr %i.bk, i64 %i.bm
  store i8 %i.bj, ptr %i.bn, align 1, !tbaa !54
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.preheader34.3
  %.227.3 = phi i32 [ %i.bl, %bb.o ], [ %.12636.3, %.preheader34.3 ] ; 4 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.3, 1 ; 3 uses
  %exitcond.3.not = icmp eq i64 %indvars.iv.next.3, 64
  br i1 %exitcond.3.not, label %.preheader34.4, label %.preheader34.3.1

.preheader34.3.1:                                 ; preds = %bb.p
  %i.bo = load ptr, ptr %i.a, align 8, !tbaa !49  ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %indvars.iv.next.3
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !54
  %i.br = icmp eq i8 %i.bq, 3
  br i1 %i.br, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.preheader34.3.1
  %i.bs = trunc i64 %indvars.iv.next.3 to i8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 64
  %i.bu = add nsw i32 %.227.3, 1
  %i.bv = sext i32 %.227.3 to i64
  %i.bw = getelementptr inbounds i8, ptr %i.bt, i64 %i.bv
  store i8 %i.bs, ptr %i.bw, align 1, !tbaa !54
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.preheader34.3.1
  %.227.3.1 = phi i32 [ %i.bu, %bb.q ], [ %.227.3, %.preheader34.3.1 ]
  %indvars.iv.next.3.1 = add nuw nsw i64 %indvars.iv.3, 2
  br label %.preheader34.3

.preheader34.4:                                   ; preds = %bb.p, %bb.v
end_hunk_0
begin_hunk_1_@vp6_parse_coeff_huffman:bb.a
  %i.ge = and i32 %spec.select.i.i107, 7
  %i.gf = shl i32 %i.gd, %i.ge
  %i.gg = sub nuw nsw i32 30, %i.fx
  %i.gh = lshr i32 %i.gf, %i.gg
  %i.gi = add i32 %spec.select.i.i107, 2
  %i.gj = add i32 %i.gi, %i.fx
  %i.gk = tail call i32 @llvm.umin.i32(i32 %i.ab, i32 %i.gj)
  store i32 %i.gk, ptr %i.f, align 8, !tbaa !82
  %i.gl = add nuw nsw i32 %i.fy, %i.gh
  br label %vp6_get_nb_null.exit109

vp6_get_nb_null.exit109:                          ; preds = %bb.p, %bb.q, %bb.r
  %.0.i108 = phi i32 [ %i.fm, %bb.q ], [ %i.gl, %bb.r ], [ %i.ez, %bb.p ]
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.r
  store i32 %.0.i108, ptr %i.gm, align 4, !tbaa !66
  br label %.loopexit

bb.s:                                             ; preds = %get_vlc2.exit
  %i.gn = sext i32 %.167.i to i64
  %i.go = getelementptr inbounds i8, ptr @ff_vp56_coeff_bias, i64 %i.gn
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !54
  %i.gq = zext i8 %i.gp to i32                    ; 2 uses
  %i.gr = icmp sgt i32 %.167.i, 4
  br i1 %i.gr, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.gs = icmp samesign ult i32 %.167.i, 10
  %i.gt = add nsw i32 %.167.i, -4
  %i.gu = select i1 %i.gs, i32 %i.gt, i32 11      ; 2 uses
  %i.gv = lshr i32 %i.bn, 3
  %i.gw = zext nneg i32 %i.gv to i64
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.gw
  %i.gy = load i32, ptr %i.gx, align 1, !tbaa !54
  %i.gz = tail call i32 @llvm.bswap.i32(i32 %i.gy)
  %i.ha = and i32 %i.bn, 7
  %i.hb = shl i32 %i.gz, %i.ha
  %i.hc = sub nuw nsw i32 32, %i.gu
  %i.hd = lshr i32 %i.hb, %i.hc
  %i.he = add i32 %i.bn, %i.gu
  %i.hf = tail call i32 @llvm.umin.i32(i32 %i.ab, i32 %i.he) ; 2 uses
  store i32 %i.hf, ptr %i.f, align 8, !tbaa !82
  %i.hg = add nuw nsw i32 %i.hd, %i.gq
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.hh = phi i32 [ %i.hf, %bb.t ], [ %i.bn, %bb.s ] ; 4 uses
  %.0 = phi i32 [ %i.hg, %bb.t ], [ %i.gq, %bb.s ] ; 2 uses
  %i.hi = icmp samesign ugt i32 %.0, 1
  %i.hj = select i1 %i.hi, i32 2, i32 1
  %i.hk = lshr i32 %i.hh, 3
  %i.hl = zext nneg i32 %i.hk to i64
  %i.hm = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.hl
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !54
  %i.ho = icmp slt i32 %i.hh, %i.ab
  %i.hp = zext i1 %i.ho to i32
  %spec.select.i = add i32 %i.hh, %i.hp
  %i.hq = zext i8 %i.hn to i32
  %i.hr = and i32 %i.hh, 7
  %i.hs = shl nuw nsw i32 %i.hq, %i.hr
  %i.ht = lshr i32 %i.hs, 7
  store i32 %spec.select.i, ptr %i.f, align 8, !tbaa !82
  %i.hu = and i32 %i.ht, 1                        ; 2 uses
  %i.hv = sub nsw i32 0, %i.hu
  %i.hw = xor i32 %.0, %i.hv
  %i.hx = add nsw i32 %i.hw, %i.hu                ; 2 uses
  %.not103 = icmp eq i32 %.088, 0
  br i1 %.not103, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.hy = load i16, ptr %i.j, align 2, !tbaa !84
  %i.hz = zext i16 %i.hy to i32
  %i.ia = mul nsw i32 %i.hx, %i.hz
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.1 = phi i32 [ %i.ia, %bb.v ], [ %i.hx, %bb.u ]
  %i.ib = sext i32 %.088 to i64
  %i.ic = getelementptr inbounds i8, ptr %i.k, i64 %i.ib
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !54
  %i.ie = trunc i32 %.1 to i16
  %i.if = zext i8 %i.id to i64
  %i.ig = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.if
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !54
  %i.ii = zext i8 %i.ih to i64
  %i.ij = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.ii
  store i16 %i.ie, ptr %i.ij, align 2, !tbaa !50
  br label %.thread

.thread:                                          ; preds = %bb.w, %bb.j, %bb.k, %vp6_get_nb_null.exit, %bb.e
  %.383 = phi i32 [ %.080, %bb.e ], [ 0, %vp6_get_nb_null.exit ], [ 0, %bb.k ], [ 0, %bb.j ], [ %i.hj, %bb.w ] ; 2 uses
  %.4 = phi i32 [ 1, %bb.e ], [ 1, %vp6_get_nb_null.exit ], [ %i.cw, %bb.k ], [ %i.ck, %bb.j ], [ 1, %bb.w ]
  %i.ik = add nsw i32 %.4, %.088                  ; 4 uses
  %i.il = icmp sgt i32 %i.ik, 63
  br i1 %i.il, label %.loopexit, label %bb.x

bb.x:                                             ; preds = %.thread
  %i.im = sext i32 %i.ik to i64                   ; 2 uses
  %i.in = add nsw i64 %i.im, -22
  %i.io = icmp ult i64 %i.in, 42
  br i1 %i.io, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ip = getelementptr inbounds i8, ptr @vp6_coeff_groups, i64 %i.im
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !54
  %i.ir = zext i8 %i.iq to i64
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.is = phi i64 [ %i.ir, %bb.y ], [ 3, %bb.x ]
  %i.it = zext nneg i32 %.383 to i64
  %i.iu = getelementptr inbounds nuw [96 x i8], ptr %i.u, i64 %i.it
  %i.iv = getelementptr inbounds nuw [24 x i8], ptr %i.iu, i64 %i.is
  br label %bb.c

.loopexit:                                        ; preds = %bb.e, %.thread, %vp6_get_nb_null.exit109, %bb.o
  %.189.ph = phi i32 [ 1, %vp6_get_nb_null.exit109 ], [ %.088, %bb.o ], [ %i.ik, %.thread ], [ %.088, %bb.e ]
  %i.iw = tail call i32 @llvm.smin.i32(i32 %.189.ph, i32 63)
  %i.ix = sext i32 %i.iw to i64
  %i.iy = getelementptr inbounds i8, ptr %i.o, i64 %i.ix
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !54
  %i.ja = zext i8 %i.iz to i32
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv
  store i32 %i.ja, ptr %i.jb, align 4, !tbaa !66
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 6
  br i1 %exitcond.not, label %.loopexit130, label %bb.b, !llvm.loop !135

.loopexit130:                                     ; preds = %.loopexit, %bb.f
  %.395 = phi i32 [ -1094995529, %bb.f ], [ 0, %.loopexit ]
  ret i32 %.395
}

; Function Attrs: cold nounwind optsize uwtable
define internal fastcc void @vp6_decode_free_context(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @ff_vp56_free_context(ptr noundef %0) #13 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 5184
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 5232
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 5280
  br label %bb.c

bb.b:                                             ; preds = %bb.d
  ret void

bb.c:                                             ; preds = %bb.a, %bb.d
  %i.e = phi i1 [ true, %bb.a ], [ false, %bb.d ]
  %indvars.iv24 = phi i64 [ 0, %bb.a ], [ 1, %bb.d ] ; 3 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %indvars.iv24
  tail call void @ff_vlc_free(ptr noundef nonnull %i.f) #13
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %indvars.iv24
  tail call void @ff_vlc_free(ptr noundef nonnull %i.g) #13
  %i.h = getelementptr inbounds nuw [288 x i8], ptr %i.d, i64 %indvars.iv24
  br label %.preheader

.preheader:                                       ; preds = %bb.c, %bb.e
  %indvars.iv20 = phi i64 [ 0, %bb.c ], [ %indvars.iv.next21, %bb.e ] ; 2 uses
  %i.i = getelementptr inbounds nuw [96 x i8], ptr %i.h, i64 %indvars.iv20
  br label %bb.f

bb.d:                                             ; preds = %bb.e
  br i1 %i.e, label %bb.c, label %bb.b, !llvm.loop !139

bb.e:                                             ; preds = %bb.f
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1 ; 2 uses
  %exitcond23.not = icmp eq i64 %indvars.iv.next21, 3
  br i1 %exitcond23.not, label %bb.d, label %.preheader, !llvm.loop !140

bb.f:                                             ; preds = %.preheader, %bb.f
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %indvars.iv
  tail call void @ff_vlc_free(ptr noundef nonnull %i.j) #13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %bb.e, label %bb.f, !llvm.loop !141
}

declare i32 @ff_vp56_free_context(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.umax.v16i8(<16 x i8>, <16 x i8>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.umax.v16i8(<16 x i8>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i8> @llvm.umax.v4i8(<4 x i8>, <4 x i8>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.umax.v4i8(<4 x i8>) #11

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { cold }
attributes #13 = { nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !61}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 1, !"override-stack-alignment", i32 16}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 _ZTS7AVClass", !10, i64 0}
!12 = !{!"p1 _ZTS7AVCodec", !10, i64 0}
!13 = !{!"p1 _ZTS15AVCodecInternal", !10, i64 0}
!14 = !{!"long", !6, i64 0}
!15 = !{!"p1 omnipotent char", !10, i64 0}
!16 = !{!"AVRational", !7, i64 0, !7, i64 4}
!17 = !{!"float", !6, i64 0}
!18 = !{!"p1 short", !10, i64 0}
!19 = !{!"AVChannelLayout", !7, i64 0, !7, i64 4, !6, i64 8, !10, i64 16}
!20 = !{!"p1 _ZTS10RcOverride", !10, i64 0}
!21 = !{!"p1 _ZTS9AVHWAccel", !10, i64 0}
!22 = !{!"p1 _ZTS11AVBufferRef", !10, i64 0}
!23 = !{!"p1 _ZTS17AVCodecDescriptor", !10, i64 0}
!24 = !{!"p1 _ZTS16AVPacketSideData", !10, i64 0}
!25 = !{!"p1 int", !10, i64 0}
!26 = !{!"any p2 pointer", !10, i64 0}
!27 = !{!"p2 _ZTS15AVFrameSideData", !26, i64 0}
!28 = !{!"AVCodecContext", !11, i64 0, !7, i64 8, !7, i64 12, !12, i64 16, !7, i64 24, !7, i64 28, !10, i64 32, !13, i64 40, !10, i64 48, !14, i64 56, !7, i64 64, !7, i64 68, !15, i64 72, !7, i64 80, !16, i64 84, !16, i64 92, !16, i64 100, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !16, i64 128, !7, i64 136, !7, i64 140, !7, i64 144, !7, i64 148, !7, i64 152, !7, i64 156, !7, i64 160, !7, i64 164, !7, i64 168, !7, i64 172, !7, i64 176, !10, i64 184, !10, i64 192, !7, i64 200, !17, i64 204, !17, i64 208, !17, i64 212, !17, i64 216, !17, i64 220, !17, i64 224, !17, i64 228, !17, i64 232, !17, i64 236, !7, i64 240, !7, i64 244, !7, i64 248, !7, i64 252, !7, i64 256, !7, i64 260, !7, i64 264, !7, i64 268, !7, i64 272, !7, i64 276, !7, i64 280, !7, i64 284, !18, i64 288, !18, i64 296, !18, i64 304, !7, i64 312, !7, i64 316, !7, i64 320, !7, i64 324, !7, i64 328, !7, i64 332, !7, i64 336, !7, i64 340, !7, i64 344, !7, i64 348, !19, i64 352, !7, i64 376, !7, i64 380, !7, i64 384, !7, i64 388, !7, i64 392, !7, i64 396, !7, i64 400, !7, i64 404, !10, i64 408, !7, i64 416, !7, i64 420, !7, i64 424, !17, i64 428, !17, i64 432, !7, i64 436, !7, i64 440, !7, i64 444, !7, i64 448, !7, i64 452, !20, i64 456, !14, i64 464, !14, i64 472, !17, i64 480, !17, i64 484, !7, i64 488, !7, i64 492, !15, i64 496, !15, i64 504, !7, i64 512, !7, i64 516, !7, i64 520, !7, i64 524, !7, i64 528, !21, i64 536, !10, i64 544, !22, i64 552, !22, i64 560, !7, i64 568, !7, i64 572, !6, i64 576, !7, i64 640, !7, i64 644, !7, i64 648, !7, i64 652, !7, i64 656, !7, i64 660, !7, i64 664, !10, i64 672, !10, i64 680, !7, i64 688, !7, i64 692, !7, i64 696, !7, i64 700, !7, i64 704, !7, i64 708, !7, i64 712, !7, i64 716, !7, i64 720, !23, i64 728, !15, i64 736, !7, i64 744, !7, i64 748, !15, i64 752, !15, i64 760, !15, i64 768, !24, i64 776, !7, i64 784, !7, i64 788, !14, i64 792, !7, i64 800, !7, i64 804, !14, i64 808, !10, i64 816, !14, i64 824, !25, i64 832, !7, i64 840, !27, i64 848, !7, i64 856, !7, i64 860}
!29 = !{!28, !10, i64 32}
!30 = !{!"p1 _ZTS14AVCodecContext", !10, i64 0}
!31 = !{!"H264ChromaContext", !6, i64 0, !6, i64 32}
!32 = !{!"HpelDSPContext", !6, i64 0, !6, i64 128, !6, i64 256, !6, i64 352}
!33 = !{!"VideoDSPContext", !10, i64 0, !10, i64 8}
!34 = !{!"VP3DSPContext", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56}
!35 = !{!"VPXRangeCoder", !7, i64 0, !7, i64 4, !15, i64 8, !15, i64 16, !7, i64 24, !7, i64 28}
!36 = !{!"p1 _ZTS13VPXRangeCoder", !10, i64 0}
!37 = !{!"short", !6, i64 0}
!38 = !{!"p1 _ZTS9VP56RefDc", !10, i64 0}
!39 = !{!"p1 _ZTS14VP56Macroblock", !10, i64 0}
!40 = !{!"p1 _ZTS12vp56_context", !10, i64 0}
!41 = !{!"p1 _ZTS9VP56Model", !10, i64 0}
!42 = !{!"VP56Model", !6, i64 0, !6, i64 64, !6, i64 128, !6, i64 192, !6, i64 194, !6, i64 196, !6, i64 200, !6, i64 214, !6, i64 230, !6, i64 252, !6, i64 648, !6, i64 1188, !6, i64 1548, !6, i64 1576, !6, i64 1876}
!43 = !{!"GetBitContext", !15, i64 0, !7, i64 8, !7, i64 12, !7, i64 16}
!44 = !{!"vp56_context", !30, i64 0, !31, i64 8, !32, i64 72, !33, i64 456, !34, i64 472, !6, i64 536, !6, i64 552, !6, i64 616, !15, i64 648, !15, i64 656, !35, i64 664, !35, i64 696, !36, i64 728, !7, i64 736, !7, i64 740, !6, i64 744, !6, i64 760, !7, i64 776, !7, i64 780, !6, i64 784, !7, i64 808, !37, i64 812, !37, i64 814, !38, i64 816, !6, i64 824, !6, i64 872, !6, i64 896, !7, i64 916, !39, i64 920, !6, i64 928, !6, i64 1696, !15, i64 1720, !6, i64 1728, !6, i64 1752, !7, i64 1760, !7, i64 1764, !7, i64 1768, !7, i64 1772, !7, i64 1776, !7, i64 1780, !7, i64 1784, !6, i64 1792, !6, i64 2816, !6, i64 3072, !7, i64 3076, !7, i64 3080, !7, i64 3084, !7, i64 3088, !7, i64 3092, !7, i64 3096, !7, i64 3100, !6, i64 3104, !15, i64 3136, !10, i64 3144, !10, i64 3152, !10, i64 3160, !10, i64 3168, !10, i64 3176, !10, i64 3184, !10, i64 3192, !40, i64 3200, !41, i64 3208, !42, i64 3216, !7, i64 5152, !43, i64 5160, !6, i64 5184, !6, i64 5232, !6, i64 5280, !6, i64 5856, !7, i64 5872, !7, i64 5876}
!45 = !{!44, !40, i64 3200}
!46 = !{!44, !7, i64 3092}
!47 = !{!44, !7, i64 1768}
!48 = !{!10, !10, i64 0}
!49 = !{!44, !41, i64 3208}
!50 = !{!37, !37, i64 0}
!51 = !{!35, !7, i64 0}
!52 = !{!35, !7, i64 4}
!53 = !{!35, !7, i64 24}
!54 = !{!6, !6, i64 0}
!55 = !{!35, !15, i64 8}
!56 = !{!35, !15, i64 16}
!57 = !{!15, !15, i64 0}
!58 = !{!"VP56Tree", !6, i64 0, !6, i64 1}
!59 = !{!58, !6, i64 0}
!60 = !{!58, !6, i64 1}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{!44, !7, i64 1776}
!63 = !{!44, !7, i64 1780}
!64 = !{!44, !7, i64 1784}
!65 = !{!44, !15, i64 1720}
!66 = !{!7, !7, i64 0}
!67 = !{!"p1 _ZTS7AVFrame", !10, i64 0}
!68 = !{!67, !67, i64 0}
!69 = !{!"p2 omnipotent char", !26, i64 0}
!70 = !{!"p2 _ZTS11AVBufferRef", !26, i64 0}
!71 = !{!"p1 _ZTS12AVDictionary", !10, i64 0}
!72 = !{!"AVFrame", !6, i64 0, !6, i64 64, !69, i64 96, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !16, i64 124, !14, i64 136, !14, i64 144, !16, i64 152, !7, i64 160, !10, i64 168, !7, i64 176, !7, i64 180, !6, i64 184, !70, i64 248, !7, i64 256, !27, i64 264, !7, i64 272, !7, i64 276, !7, i64 280, !7, i64 284, !7, i64 288, !7, i64 292, !7, i64 296, !14, i64 304, !71, i64 312, !7, i64 320, !22, i64 328, !22, i64 336, !14, i64 344, !14, i64 352, !14, i64 360, !14, i64 368, !10, i64 376, !19, i64 384, !14, i64 408, !7, i64 416}
!73 = !{!72, !7, i64 276}
!74 = !{!44, !7, i64 5152}
!75 = !{!"Node", !37, i64 0, !37, i64 2, !7, i64 4}
!76 = !{!75, !7, i64 4}
!77 = !{!44, !30, i64 0}
!78 = !{!44, !7, i64 736}
!79 = !{!43, !15, i64 0}
!80 = !{!43, !7, i64 12}
!81 = !{!43, !7, i64 16}
!82 = !{!43, !7, i64 8}
!83 = !{!44, !36, i64 728}
!84 = !{!44, !37, i64 814}
!85 = !{!28, !7, i64 24}
!86 = !{!44, !7, i64 3076}
!87 = !{!44, !15, i64 3136}
!88 = !{!44, !10, i64 3144}
!89 = !{!44, !10, i64 3152}
!90 = distinct !{!90, !61}
!91 = !{!44, !7, i64 1760}
!92 = !{!"VP56mv", !37, i64 0, !37, i64 2}
!93 = !{!92, !37, i64 0}
!94 = !{!92, !37, i64 2}
!95 = distinct !{null}
!96 = !{!44, !15, i64 656}
!97 = distinct !{!97, !61}
!98 = distinct !{!98, !61}
!99 = distinct !{!99, !61}
!100 = distinct !{!100, !61}
!101 = distinct !{!101, !61}
!102 = distinct !{!102, !61}
!103 = distinct !{!103, !61}
!104 = distinct !{!104, !61}
!105 = distinct !{!105, !61}
!106 = distinct !{!106, !61}
!107 = distinct !{!107, !61}
!108 = !{!44, !7, i64 1764}
!109 = !{!44, !7, i64 3080}
!110 = !{!44, !39, i64 920}
!111 = !{!28, !7, i64 120}
!112 = !{!28, !7, i64 124}
!113 = !{!28, !7, i64 80}
!114 = !{!28, !7, i64 112}
!115 = !{!28, !7, i64 116}
!116 = !{!28, !15, i64 72}
!117 = !{!44, !7, i64 740}
!118 = !{!44, !7, i64 1772}
!119 = !{!44, !10, i64 3160}
!120 = distinct !{!120, !61}
!121 = distinct !{!121, !61, !125, !126}
!122 = distinct !{!122, !61, !125, !126}
!123 = distinct !{!123, !61, !126, !125}
!124 = distinct !{!124, !61}
!125 = !{!"llvm.loop.isvectorized", i32 1}
!126 = !{!"llvm.loop.unroll.runtime.disable"}
!127 = !{!"branch_weights", i32 4, i32 28}
!128 = !{!75, !37, i64 0}
!129 = distinct !{!129, !61}
!130 = distinct !{!130, !61}
!131 = !{!35, !7, i64 28}
!132 = !{!44, !38, i64 816}
!133 = !{!"VP56RefDc", !6, i64 0, !7, i64 4, !37, i64 8}
!134 = !{!133, !6, i64 0}
!135 = distinct !{!135, !61}
!136 = !{!"p1 _ZTS7VLCElem", !10, i64 0}
!137 = !{!"VLC", !7, i64 0, !136, i64 8, !7, i64 16, !7, i64 20}
!138 = !{!137, !136, i64 8}
!139 = distinct !{!139, !61}
!140 = distinct !{!140, !61}
!141 = distinct !{!141, !61}
end_hunk_1
