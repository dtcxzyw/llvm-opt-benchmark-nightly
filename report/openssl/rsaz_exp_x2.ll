Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/rsaz_exp_x2?download=true
inline.NumInlined: 17
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@ossl_rsaz_amm52_x1 = internal unnamed_addr constant [6 x ptr] [ptr @ossl_rsaz_amm52x20_x1_avxifma256, ptr @ossl_rsaz_amm52x20_x1_ifma256, ptr @ossl_rsaz_amm52x30_x1_avxifma256, ptr @ossl_rsaz_amm52x30_x1_ifma256, ptr @ossl_rsaz_amm52x40_x1_avxifma256, ptr @ossl_rsaz_amm52x40_x1_ifma256], align 16
@.str = private unnamed_addr constant [24 x i8] c"crypto/bn/rsaz_exp_x2.c\00", align 1
@ossl_rsaz_amm52_x2 = internal unnamed_addr constant [6 x ptr] [ptr @ossl_rsaz_amm52x20_x2_avxifma256, ptr @ossl_rsaz_amm52x20_x2_ifma256, ptr @ossl_rsaz_amm52x30_x2_avxifma256, ptr @ossl_rsaz_amm52x30_x2_ifma256, ptr @ossl_rsaz_amm52x40_x2_avxifma256, ptr @ossl_rsaz_amm52x40_x2_ifma256], align 16
@ossl_extract_multiplier_win5 = internal unnamed_addr constant [6 x ptr] [ptr @ossl_extract_multiplier_2x20_win5_avx, ptr @ossl_extract_multiplier_2x20_win5, ptr @ossl_extract_multiplier_2x30_win5_avx, ptr @ossl_extract_multiplier_2x30_win5, ptr @ossl_extract_multiplier_2x40_win5_avx, ptr @ossl_extract_multiplier_2x40_win5], align 16
@.str.1 = private unnamed_addr constant [27 x i8] c"assertion failed: rem != 0\00", align 1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ossl_rsaz_mod_exp_avx512_x2(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5, ptr noundef %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef readonly captures(none) %8, ptr noundef %9, ptr nofree noundef readonly captures(none) %10, i64 noundef %11, i32 noundef %12) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i64], align 16               ; 43 uses
  %i.b = add nsw i32 %12, 53
  %i.c = sdiv i32 %i.b, 52                        ; 3 uses
  %i.d = mul nsw i32 %i.c, 52
  %i.e = sub nsw i32 %i.d, %12                    ; 2 uses
  %i.f = shl nsw i32 %i.e, 2
  %i.g = shl nsw i32 %i.c, 6
  %i.h = add nsw i32 %i.g, 255
  %i.i = sdiv i32 %i.h, 256                       ; 7 uses
  %i.j = shl nsw i32 %i.i, 2                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.k = tail call i32 @ossl_rsaz_avx512ifma_eligible() #7
  switch i32 %12, label %bn_reduce_once_in_place.exit149 [
    i32 2048, label %bb.b
    i32 1536, label %bb.b
    i32 1024, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.l = mul nsw i32 %i.i, 224
  %i.m = add nsw i32 %i.l, 64
  %i.n = icmp ne i32 %i.k, 0
  %i.o = zext i1 %i.n to i32
  %i.p = lshr exact i32 %12, 8
  %i.q = add nsw i32 %i.p, -4                     ; 2 uses
  %i.r = or disjoint i32 %i.q, %i.o
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr @ossl_rsaz_amm52_x1, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !26   ; 4 uses
  %i.v = sext i32 %i.m to i64                     ; 2 uses
  %i.w = tail call noalias ptr @CRYPTO_malloc(i64 noundef %i.v, ptr noundef nonnull @.str, i32 noundef 248) #7 ; 11 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bn_reduce_once_in_place.exit149, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = and i64 %i.y, 63
  %i.aa = sub nuw nsw i64 64, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.aa ; 8 uses
  %i.ac = sext i32 %i.j to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ac
  %i.ae = shl nsw i32 %i.i, 3
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.af ; 42 uses
  %i.ah = mul nsw i32 %i.i, 12
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ai ; 3 uses
  %i.ak = shl nsw i32 %i.i, 4
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.al ; 11 uses
  %i.an = mul nsw i32 %i.i, 20
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ao ; 8 uses
  %i.aq = mul nsw i32 %i.i, 24
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ar ; 4 uses
  tail call fastcc void @to_words52(ptr noundef %i.ab, i32 noundef %i.j, ptr noundef %1, i32 noundef %12)
  tail call fastcc void @to_words52(ptr noundef %i.ad, i32 noundef %i.j, ptr noundef %7, i32 noundef %12)
  tail call fastcc void @to_words52(ptr noundef %i.ag, i32 noundef %i.j, ptr noundef %3, i32 noundef %12)
  tail call fastcc void @to_words52(ptr noundef %i.aj, i32 noundef %i.j, ptr noundef %9, i32 noundef %12)
  tail call fastcc void @to_words52(ptr noundef %i.am, i32 noundef %i.j, ptr noundef %4, i32 noundef %12)
  tail call fastcc void @to_words52(ptr noundef %i.ap, i32 noundef %i.j, ptr noundef %10, i32 noundef %12)
  %i.at = sext i32 %i.c to i64
  %i.au = shl nsw i64 %i.at, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.as, i8 0, i64 %i.au, i1 false)
  %i.av = sdiv i32 %i.e, 13
  %i.aw = shl nsw i32 %i.av, 6
  %i.ax = srem i32 %i.f, 52
  %i.ay = add nsw i32 %i.aw, %i.ax                ; 2 uses
  %i.az = sdiv i32 %i.ay, 64
  %i.ba = srem i32 %i.ay, 64
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = shl nuw i64 1, %i.bb
  %i.bd = sext i32 %i.az to i64
  %i.be = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.bd ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !9
  %i.bg = or i64 %i.bf, %i.bc
  store i64 %i.bg, ptr %i.be, align 8, !tbaa !9
  tail call void %i.u(ptr noundef nonnull %i.am, ptr noundef nonnull %i.am, ptr noundef nonnull %i.am, ptr noundef nonnull %i.ag, i64 noundef %5) #7
  tail call void %i.u(ptr noundef nonnull %i.am, ptr noundef nonnull %i.am, ptr noundef nonnull %i.as, ptr noundef nonnull %i.ag, i64 noundef %5) #7
  tail call void %i.u(ptr noundef nonnull %i.ap, ptr noundef nonnull %i.ap, ptr noundef nonnull %i.ap, ptr noundef nonnull %i.aj, i64 noundef %11) #7
  tail call void %i.u(ptr noundef nonnull %i.ap, ptr noundef nonnull %i.ap, ptr noundef nonnull %i.as, ptr noundef nonnull %i.aj, i64 noundef %11) #7
  store i64 %5, ptr %i.a, align 16, !tbaa !9
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %11, ptr %i.bh, align 8, !tbaa !9
  %i.bi = tail call i32 @ossl_rsaz_avx512ifma_eligible() #7
  switch i32 %12, label %RSAZ_mod_exp_x2_ifma256.exit.thread [
    i32 2048, label %bb.d
    i32 1536, label %bb.d
    i32 1024, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c
  %i.bj = icmp ne i32 %i.bi, 0
  %i.bk = zext i1 %i.bj to i32
  %i.bl = add nuw nsw i32 %i.q, %i.bk
  %i.bm = zext nneg i32 %i.bl to i64              ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr @ossl_rsaz_amm52_x2, i64 %i.bm
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !26 ; 39 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr @ossl_extract_multiplier_win5, i64 %i.bm
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !26 ; 2 uses
  switch i32 %12, label %RSAZ_mod_exp_x2_ifma256.exit.thread [
    i32 1024, label %bb.g
    i32 1536, label %bb.e
    i32 2048, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.0211.i = phi i32 [ 40, %bb.f ], [ 32, %bb.e ], [ 20, %bb.d ] ; 4 uses
  %.0210.i = phi i32 [ 32, %bb.f ], [ 24, %bb.e ], [ 16, %bb.d ] ; 2 uses
  %i.br = mul nuw nsw i32 %.0211.i, 68
  %i.bs = or disjoint i32 %.0210.i, 1             ; 6 uses
  %i.bt = shl nuw nsw i32 %i.bs, 1                ; 2 uses
  %i.bu = add nuw nsw i32 %i.bt, %i.br
  %i.bv = shl nuw nsw i32 %i.bu, 3
  %narrow.i = or disjoint i32 %i.bv, 64
  %i.bw = zext nneg i32 %narrow.i to i64          ; 2 uses
  %i.bx = tail call noalias ptr @CRYPTO_zalloc(i64 noundef %i.bw, ptr noundef nonnull @.str, i32 noundef 425) #7 ; 5 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %RSAZ_mod_exp_x2_ifma256.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bz = shl nuw nsw i32 %.0211.i, 1
  %i.ca = ptrtoint ptr %i.bx to i64
  %i.cb = and i64 %i.ca, 63
  %i.cc = sub nuw nsw i64 64, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.cc ; 20 uses
  %i.ce = zext nneg i32 %i.bz to i64              ; 18 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.ce ; 9 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.ce ; 49 uses
  store i64 1, ptr %i.cf, align 8, !tbaa !9
  %i.ch = zext nneg i32 %.0211.i to i64           ; 31 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.ch ; 2 uses
  store i64 1, ptr %i.ci, align 8, !tbaa !9
  call void %i.bo(ptr noundef nonnull %i.cg, ptr noundef nonnull %i.cf, ptr noundef nonnull %i.am, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !13
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ce ; 18 uses
  call void %i.bo(ptr noundef nonnull %i.cj, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.am, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !13
  %.idx.i = shl nuw nsw i64 %i.ch, 5
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx.i ; 2 uses
  call void %i.bo(ptr noundef nonnull %i.ck, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !13
  %.idx18.i = mul nuw nsw i64 %i.ch, 48
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx18.i
  call void %i.bo(ptr noundef nonnull %i.cl, ptr noundef nonnull %i.ck, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !13
  %.idx19.i = shl nuw nsw i64 %i.ch, 6
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx19.i ; 2 uses
  %.idx20.i = shl nuw nsw i64 %i.ce, 4
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx20.i ; 2 uses
  call void %i.bo(ptr noundef nonnull %i.cm, ptr noundef nonnull %i.cn, ptr noundef nonnull %i.cn, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !13
  %.idx21.i = mul nuw nsw i64 %i.ch, 80
  %i.co = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx21.i
  call void %i.bo(ptr noundef nonnull %i.co, ptr noundef nonnull %i.cm, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !13
  %.idx22.i = mul nuw nsw i64 %i.ch, 96
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx22.i ; 2 uses
  %.idx23.i = mul nuw nsw i64 %i.ce, 24
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx23.i ; 2 uses
  call void %i.bo(ptr noundef nonnull %i.cp, ptr noundef nonnull %i.cq, ptr noundef nonnull %i.cq, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !13
  %.idx24.i = mul nuw nsw i64 %i.ch, 112
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx24.i
  call void %i.bo(ptr noundef nonnull %i.cr, ptr noundef nonnull %i.cp, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !13
  %.idx25.i = shl nuw nsw i64 %i.ch, 7
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx25.i ; 2 uses
  %.idx26.i = shl nuw nsw i64 %i.ce, 5
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx26.i ; 2 uses
  call void %i.bo(ptr noundef nonnull %i.cs, ptr noundef nonnull %i.ct, ptr noundef nonnull %i.ct, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !13
  %.idx27.i = mul nuw nsw i64 %i.ch, 144
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx27.i
  call void %i.bo(ptr noundef nonnull %i.cu, ptr noundef nonnull %i.cs, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !13
  %.idx28.i = mul nuw nsw i64 %i.ch, 160
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx28.i ; 2 uses
  %.idx29.i = mul nuw nsw i64 %i.ce, 40
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx29.i ; 2 uses
  call void %i.bo(ptr noundef nonnull %i.cv, ptr noundef nonnull %i.cw, ptr noundef nonnull %i.cw, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !13
  %.idx30.i = mul nuw nsw i64 %i.ch, 176
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx30.i
  call void %i.bo(ptr noundef nonnull %i.cx, ptr noundef nonnull %i.cv, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !13
  %.idx31.i = mul nuw nsw i64 %i.ch, 192
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx31.i ; 2 uses
  %.idx32.i = mul nuw nsw i64 %i.ce, 48
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx32.i ; 2 uses
  call void %i.bo(ptr noundef nonnull %i.cy, ptr noundef nonnull %i.cz, ptr noundef nonnull %i.cz, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !13
  %.idx33.i = mul nuw nsw i64 %i.ch, 208
  %i.da = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx33.i
  call void %i.bo(ptr noundef nonnull %i.da, ptr noundef nonnull %i.cy, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !13
  %.idx34.i = mul nuw nsw i64 %i.ch, 224
  %i.db = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx34.i ; 2 uses
  %.idx35.i = mul nuw nsw i64 %i.ce, 56
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx35.i ; 2 uses
  call void %i.bo(ptr noundef nonnull %i.db, ptr noundef nonnull %i.dc, ptr noundef nonnull %i.dc, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !13
  %.idx36.i = mul nuw nsw i64 %i.ch, 240
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx36.i
  call void %i.bo(ptr noundef nonnull %i.dd, ptr noundef nonnull %i.db, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !13
  %.idx37.i = shl nuw nsw i64 %i.ch, 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx37.i ; 2 uses
  %.idx38.i = shl nuw nsw i64 %i.ce, 6
  %i.df = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx38.i ; 2 uses
  call void %i.bo(ptr noundef nonnull %i.de, ptr noundef nonnull %i.df, ptr noundef nonnull %i.df, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !13
  %.idx39.i = mul nuw nsw i64 %i.ch, 272
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx39.i
  call void %i.bo(ptr noundef nonnull %i.dg, ptr noundef nonnull %i.de, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !13
  %.idx40.i = mul nuw nsw i64 %i.ch, 288
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx40.i ; 2 uses
  %.idx41.i = mul nuw nsw i64 %i.ce, 72
  %i.di = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx41.i ; 2 uses
  call void %i.bo(ptr noundef nonnull %i.dh, ptr noundef nonnull %i.di, ptr noundef nonnull %i.di, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !13
  %.idx42.i = mul nuw nsw i64 %i.ch, 304
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx42.i
  call void %i.bo(ptr noundef nonnull %i.dj, ptr noundef nonnull %i.dh, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !13
  %.idx43.i = mul nuw nsw i64 %i.ch, 320
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx43.i ; 2 uses
  %.idx44.i = mul nuw nsw i64 %i.ce, 80
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx44.i ; 2 uses
  call void %i.bo(ptr noundef nonnull %i.dk, ptr noundef nonnull %i.dl, ptr noundef nonnull %i.dl, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !13
  %.idx45.i = mul nuw nsw i64 %i.ch, 336
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx45.i
  call void %i.bo(ptr noundef nonnull %i.dm, ptr noundef nonnull %i.dk, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !13
  %.idx46.i = mul nuw nsw i64 %i.ch, 352
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx46.i ; 2 uses
  %.idx47.i = mul nuw nsw i64 %i.ce, 88
  %i.do = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx47.i ; 2 uses
  call void %i.bo(ptr noundef nonnull %i.dn, ptr noundef nonnull %i.do, ptr noundef nonnull %i.do, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !13
  %.idx48.i = mul nuw nsw i64 %i.ch, 368
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx48.i
  call void %i.bo(ptr noundef nonnull %i.dp, ptr noundef nonnull %i.dn, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !13
  %.idx49.i = mul nuw nsw i64 %i.ch, 384
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx49.i ; 2 uses
  %.idx50.i = mul nuw nsw i64 %i.ce, 96
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx50.i ; 2 uses
  call void %i.bo(ptr noundef nonnull %i.dq, ptr noundef nonnull %i.dr, ptr noundef nonnull %i.dr, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !13
  %.idx51.i = mul nuw nsw i64 %i.ch, 400
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx51.i
  call void %i.bo(ptr noundef nonnull %i.ds, ptr noundef nonnull %i.dq, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !13
  %.idx52.i = mul nuw nsw i64 %i.ch, 416
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx52.i ; 2 uses
  %.idx53.i = mul nuw nsw i64 %i.ce, 104
  %i.du = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx53.i ; 2 uses
  call void %i.bo(ptr noundef nonnull %i.dt, ptr noundef nonnull %i.du, ptr noundef nonnull %i.du, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !13
  %.idx54.i = mul nuw nsw i64 %i.ch, 432
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx54.i
  call void %i.bo(ptr noundef nonnull %i.dv, ptr noundef nonnull %i.dt, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !13
  %.idx55.i = mul nuw nsw i64 %i.ch, 448
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx55.i ; 2 uses
  %.idx56.i = mul nuw nsw i64 %i.ce, 112
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx56.i ; 2 uses
  call void %i.bo(ptr noundef nonnull %i.dw, ptr noundef nonnull %i.dx, ptr noundef nonnull %i.dx, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !13
  %.idx57.i = mul nuw nsw i64 %i.ch, 464
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx57.i
  call void %i.bo(ptr noundef nonnull %i.dy, ptr noundef nonnull %i.dw, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !13
  %.idx58.i = mul nuw nsw i64 %i.ch, 480
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx58.i ; 2 uses
  %.idx59.i = mul nuw nsw i64 %i.ce, 120
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx59.i ; 2 uses
  call void %i.bo(ptr noundef nonnull %i.dz, ptr noundef nonnull %i.ea, ptr noundef nonnull %i.ea, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !13
  %.idx60.i = mul nuw nsw i64 %i.ch, 496
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx60.i
  call void %i.bo(ptr noundef nonnull %i.eb, ptr noundef nonnull %i.dz, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !13
  %i.ec = shl nuw nsw i32 %.0211.i, 6
  %i.ed = zext nneg i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ed ; 11 uses
  %i.ef = zext nneg i32 %.0210.i to i64           ; 2 uses
  %i.eg = shl nuw nsw i64 %i.ef, 3                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ee, ptr noundef nonnull readonly align 8 dereferenceable(1) %2, i64 %i.eg, i1 false)
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.ef
  store i64 0, ptr %i.eh, align 8, !tbaa !9
  %i.ei = zext nneg i32 %i.bs to i64
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.ei
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ej, ptr noundef nonnull readonly align 8 dereferenceable(1) %8, i64 %i.eg, i1 false)
  %i.ek = zext nneg i32 %i.bt to i64
  %i.el = getelementptr [8 x i8], ptr %i.ee, i64 %i.ek
  %i.em = getelementptr i8, ptr %i.el, i64 -8
  store i64 0, ptr %i.em, align 8, !tbaa !9
  %.lhs.trunc.i = trunc nuw nsw i32 %12 to i16
  %i.en = urem i16 %.lhs.trunc.i, 5               ; 2 uses
  %.not.i = icmp eq i16 %i.en, 0
  br i1 %.not.i, label %bb.i, label %.lr.ph.preheader.i

bb.i:                                             ; preds = %bb.h
  call void @OPENSSL_die(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 478) #8
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.h
  %.zext.i = zext nneg i16 %i.en to i32
  %i.eo = sub nuw nsw i32 %12, %.zext.i           ; 3 uses
  %i.ep = and i32 %i.eo, 63
  %i.eq = lshr i32 %i.eo, 6                       ; 2 uses
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.er
  %i.et = load i64, ptr %i.es, align 8, !tbaa !9
  %i.eu = add nuw nsw i32 %i.bs, %i.eq
  %i.ev = zext nneg i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.ev
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !9
  %i.ey = zext nneg i32 %i.ep to i64              ; 2 uses
  %i.ez = lshr i64 %i.et, %i.ey
  %i.fa = lshr i64 %i.ex, %i.ey
  %i.fb = trunc i64 %i.ez to i32
  %i.fc = trunc i64 %i.fa to i32
  call void %i.bq(ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cg, i32 noundef %i.fb, i32 noundef %i.fc) #7, !inline_history !13
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.preheader.i
  %.020712.in.i = phi i32 [ %.020712.i, %bb.l ], [ %i.eo, %.lr.ph.preheader.i ] ; 2 uses
  %.020712.i = add nsw i32 %.020712.in.i, -5      ; 3 uses
  %i.fd = lshr i32 %.020712.i, 6                  ; 4 uses
  %i.fe = and i32 %.020712.i, 63                  ; 3 uses
  %i.ff = zext nneg i32 %i.fd to i64
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.ff
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !9
  %i.fi = zext nneg i32 %i.fe to i64              ; 3 uses
  %i.fj = lshr i64 %i.fh, %i.fi                   ; 2 uses
  %i.fk = icmp samesign ugt i32 %i.fe, 59
  br i1 %i.fk, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i
  %i.fl = add nuw nsw i32 %i.fd, %i.bs
  %i.fm = zext nneg i32 %i.fl to i64
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.fm
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !9
  %i.fp = lshr i64 %i.fo, %i.fi
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph.i
  %i.fq = add nuw nsw i32 %i.fd, 1                ; 2 uses
  %i.fr = zext nneg i32 %i.fq to i64
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.fr
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !9
  %i.fu = sub nuw nsw i32 64, %i.fe
  %i.fv = zext nneg i32 %i.fu to i64              ; 2 uses
  %i.fw = shl i64 %i.ft, %i.fv
  %i.fx = xor i64 %i.fw, %i.fj
  %i.fy = add nuw nsw i32 %i.fd, %i.bs
  %i.fz = zext nneg i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.fz
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !9
  %i.gc = lshr i64 %i.gb, %i.fi
  %i.gd = add nuw nsw i32 %i.fq, %i.bs
  %i.ge = zext nneg i32 %i.gd to i64
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.ge
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !9
  %i.gh = shl i64 %i.gg, %i.fv
  %i.gi = xor i64 %i.gh, %i.gc
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.02062.i = phi i64 [ %i.fx, %bb.k ], [ %i.fj, %bb.j ]
  %.0.i = phi i64 [ %i.gi, %bb.k ], [ %i.fp, %bb.j ]
  %i.gj = trunc i64 %.02062.i to i32
  %i.gk = and i32 %i.gj, 31
  %i.gl = trunc i64 %.0.i to i32
  %i.gm = and i32 %i.gl, 31
  call void %i.bq(ptr noundef nonnull %i.cf, ptr noundef nonnull %i.cg, i32 noundef %i.gk, i32 noundef %i.gm) #7, !inline_history !13
  call void %i.bo(ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !13
  call void %i.bo(ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !13
  call void %i.bo(ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !13
  call void %i.bo(ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !13
  call void %i.bo(ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !13
  call void %i.bo(ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cf, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !13
  %i.gn = icmp samesign ugt i32 %.020712.in.i, 9
  br i1 %i.gn, label %.lr.ph.i, label %bb.m, !llvm.loop !14

bb.m:                                             ; preds = %bb.l
  %i.go = shl nuw nsw i64 %i.ce, 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cf, i8 0, i64 %i.go, i1 false)
  store i64 1, ptr %i.cf, align 8, !tbaa !9
  store i64 1, ptr %i.ci, align 8, !tbaa !9
  call void %i.bo(ptr noundef nonnull %i.am, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cf, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !13
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.bx, i64 noundef %i.bw) #7
  call void @CRYPTO_free(ptr noundef nonnull %i.bx, ptr noundef nonnull @.str, i32 noundef 569) #7
  %i.gp = add nsw i32 %12, 63
  %i.gq = ashr i32 %i.gp, 6                       ; 3 uses
  %i.gr = icmp sgt i32 %i.gq, 0                   ; 2 uses
  br i1 %i.gr, label %.lr.ph.preheader.i121, label %.preheader.i

.lr.ph.preheader.i121:                            ; preds = %bb.m
  %i.gs = zext nneg i32 %i.gq to i64
  %i.gt = shl nuw nsw i64 %i.gs, 3
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 %i.gt, i1 false), !tbaa !9
  br label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.preheader.i121, %bb.m
  %i.gu = icmp sgt i32 %12, 103                   ; 2 uses
  br i1 %i.gu, label %.lr.ph48.i, label %._crit_edge.i119

.lr.ph48.i:                                       ; preds = %.preheader.i, %.lr.ph48.i
  %.047.i = phi i32 [ %i.hd, %.lr.ph48.i ], [ %12, %.preheader.i ] ; 2 uses
  %.03046.i = phi ptr [ %i.hc, %.lr.ph48.i ], [ %0, %.preheader.i ] ; 3 uses
  %.03245.i = phi ptr [ %i.he, %.lr.ph48.i ], [ %i.am, %.preheader.i ] ; 3 uses
  %i.gv = load i64, ptr %.03245.i, align 8, !tbaa !9 ; 2 uses
  store i64 %i.gv, ptr %.03046.i, align 1
  %i.gw = getelementptr inbounds nuw i8, ptr %.03046.i, i64 6
  %i.gx = lshr i64 %i.gv, 48
  %i.gy = getelementptr inbounds nuw i8, ptr %.03245.i, i64 8
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !9
  %i.ha = shl i64 %i.gz, 4
  %i.hb = or i64 %i.ha, %i.gx
  store i64 %i.hb, ptr %i.gw, align 1
  %i.hc = getelementptr inbounds nuw i8, ptr %.03046.i, i64 13 ; 2 uses
  %i.hd = add nsw i32 %.047.i, -104               ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.03245.i, i64 16 ; 2 uses
  %i.hf = icmp samesign ugt i32 %.047.i, 207
  br i1 %i.hf, label %.lr.ph48.i, label %._crit_edge.i119, !llvm.loop !15

._crit_edge.i119:                                 ; preds = %.lr.ph48.i, %.preheader.i
  %.032.lcssa.i = phi ptr [ %i.am, %.preheader.i ], [ %i.he, %.lr.ph48.i ] ; 3 uses
  %.030.lcssa.i = phi ptr [ %0, %.preheader.i ], [ %i.hc, %.lr.ph48.i ] ; 6 uses
  %.0.lcssa.i = phi i32 [ %12, %.preheader.i ], [ %i.hd, %.lr.ph48.i ] ; 4 uses
  %i.hg = icmp sgt i32 %.0.lcssa.i, 52
  br i1 %i.hg, label %.lr.ph.i.i, label %bb.n

.lr.ph.i.i:                                       ; preds = %._crit_edge.i119
  %i.hh = load i64, ptr %.032.lcssa.i, align 8, !tbaa !9 ; 4 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.030.lcssa.i, i64 4
  %i.hj = bitcast i64 %i.hh to <8 x i8>
  %i.hk = shufflevector <8 x i8> %i.hj, <8 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i8> %i.hk, ptr %.030.lcssa.i, align 1, !tbaa !11
  %i.hl = lshr i64 %i.hh, 32
  %i.hm = trunc i64 %i.hl to i8
  %i.hn = getelementptr inbounds nuw i8, ptr %.030.lcssa.i, i64 5
  store i8 %i.hm, ptr %i.hi, align 1, !tbaa !11
  %i.ho = lshr i64 %i.hh, 40
  %i.hp = trunc i64 %i.ho to i8
  %i.hq = getelementptr inbounds nuw i8, ptr %.030.lcssa.i, i64 6 ; 3 uses
  store i8 %i.hp, ptr %i.hn, align 1, !tbaa !11
  %i.hr = lshr i64 %i.hh, 48                      ; 2 uses
  %i.hs = trunc i64 %i.hr to i8
  store i8 %i.hs, ptr %i.hq, align 1, !tbaa !11
  %i.ht = add nsw i32 %.0.lcssa.i, -45
  %i.hu = lshr i32 %i.ht, 3                       ; 4 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.032.lcssa.i, i64 8
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !9
  %i.hx = shl i64 %i.hw, 4
  %i.hy = or i64 %i.hx, %i.hr                     ; 2 uses
  %i.hz = add nsw i32 %i.hu, -1
  %xtraiter225 = and i32 %i.hu, 7                 ; 2 uses
  %lcmp.mod226.not = icmp eq i32 %xtraiter225, 0
  br i1 %lcmp.mod226.not, label %.lr.ph.i33.i.prol.loopexit, label %.lr.ph.i33.i.prol

.lr.ph.i33.i.prol:                                ; preds = %.lr.ph.i.i, %.lr.ph.i33.i.prol
  %.08.i34.i.prol = phi i64 [ %i.ic, %.lr.ph.i33.i.prol ], [ %i.hy, %.lr.ph.i.i ] ; 2 uses
  %.047.i35.i.prol = phi i32 [ %i.id, %.lr.ph.i33.i.prol ], [ %i.hu, %.lr.ph.i.i ]
  %.056.i36.i.prol = phi ptr [ %i.ib, %.lr.ph.i33.i.prol ], [ %i.hq, %.lr.ph.i.i ] ; 2 uses
  %prol.iter227 = phi i32 [ %prol.iter227.next, %.lr.ph.i33.i.prol ], [ 0, %.lr.ph.i.i ]
  %i.ia = trunc i64 %.08.i34.i.prol to i8
  %i.ib = getelementptr inbounds nuw i8, ptr %.056.i36.i.prol, i64 1 ; 2 uses
  store i8 %i.ia, ptr %.056.i36.i.prol, align 1, !tbaa !11
  %i.ic = lshr i64 %.08.i34.i.prol, 8             ; 2 uses
  %i.id = add nsw i32 %.047.i35.i.prol, -1        ; 2 uses
  %prol.iter227.next = add i32 %prol.iter227, 1   ; 2 uses
  %prol.iter227.cmp.not = icmp eq i32 %prol.iter227.next, %xtraiter225
  br i1 %prol.iter227.cmp.not, label %.lr.ph.i33.i.prol.loopexit, label %.lr.ph.i33.i.prol, !llvm.loop !16

.lr.ph.i33.i.prol.loopexit:                       ; preds = %.lr.ph.i33.i.prol, %.lr.ph.i.i
  %.08.i34.i.unr = phi i64 [ %i.hy, %.lr.ph.i.i ], [ %i.ic, %.lr.ph.i33.i.prol ]
  %.047.i35.i.unr = phi i32 [ %i.hu, %.lr.ph.i.i ], [ %i.id, %.lr.ph.i33.i.prol ]
  %.056.i36.i.unr = phi ptr [ %i.hq, %.lr.ph.i.i ], [ %i.ib, %.lr.ph.i33.i.prol ]
  %i.ie = icmp ult i32 %i.hz, 7
  br i1 %i.ie, label %from_words52.exit, label %.lr.ph.i33.i

.lr.ph.i33.i:                                     ; preds = %.lr.ph.i33.i.prol.loopexit, %.lr.ph.i33.i
  %.08.i34.i = phi i64 [ 0, %.lr.ph.i33.i ], [ %.08.i34.i.unr, %.lr.ph.i33.i.prol.loopexit ] ; 8 uses
  %.047.i35.i = phi i32 [ %i.jc, %.lr.ph.i33.i ], [ %.047.i35.i.unr, %.lr.ph.i33.i.prol.loopexit ] ; 2 uses
  %.056.i36.i = phi ptr [ %i.jb, %.lr.ph.i33.i ], [ %.056.i36.i.unr, %.lr.ph.i33.i.prol.loopexit ] ; 9 uses
  %i.if = trunc i64 %.08.i34.i to i8
  %i.ig = getelementptr inbounds nuw i8, ptr %.056.i36.i, i64 1
  store i8 %i.if, ptr %.056.i36.i, align 1, !tbaa !11
  %i.ih = lshr i64 %.08.i34.i, 8
  %i.ii = trunc i64 %i.ih to i8
  %i.ij = getelementptr inbounds nuw i8, ptr %.056.i36.i, i64 2
  store i8 %i.ii, ptr %i.ig, align 1, !tbaa !11
  %i.ik = lshr i64 %.08.i34.i, 16
  %i.il = trunc i64 %i.ik to i8
  %i.im = getelementptr inbounds nuw i8, ptr %.056.i36.i, i64 3
  store i8 %i.il, ptr %i.ij, align 1, !tbaa !11
  %i.in = lshr i64 %.08.i34.i, 24
  %i.io = trunc i64 %i.in to i8
  %i.ip = getelementptr inbounds nuw i8, ptr %.056.i36.i, i64 4
  store i8 %i.io, ptr %i.im, align 1, !tbaa !11
  %i.iq = lshr i64 %.08.i34.i, 32
  %i.ir = trunc i64 %i.iq to i8
  %i.is = getelementptr inbounds nuw i8, ptr %.056.i36.i, i64 5
  store i8 %i.ir, ptr %i.ip, align 1, !tbaa !11
  %i.it = lshr i64 %.08.i34.i, 40
  %i.iu = trunc i64 %i.it to i8
  %i.iv = getelementptr inbounds nuw i8, ptr %.056.i36.i, i64 6
  store i8 %i.iu, ptr %i.is, align 1, !tbaa !11
  %i.iw = lshr i64 %.08.i34.i, 48
  %i.ix = trunc i64 %i.iw to i8
  %i.iy = getelementptr inbounds nuw i8, ptr %.056.i36.i, i64 7
  store i8 %i.ix, ptr %i.iv, align 1, !tbaa !11
  %i.iz = lshr i64 %.08.i34.i, 56
  %i.ja = trunc nuw i64 %i.iz to i8
  %i.jb = getelementptr inbounds nuw i8, ptr %.056.i36.i, i64 8
  store i8 %i.ja, ptr %i.iy, align 1, !tbaa !11
  %i.jc = add nsw i32 %.047.i35.i, -8
  %i.jd = icmp sgt i32 %.047.i35.i, 8
  br i1 %i.jd, label %.lr.ph.i33.i, label %from_words52.exit, !llvm.loop !17

bb.n:                                             ; preds = %._crit_edge.i119
  %.not.i120 = icmp eq i32 %.0.lcssa.i, 0
  br i1 %.not.i120, label %from_words52.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.je = add nsw i32 %.0.lcssa.i, 7
  %i.jf = ashr i32 %i.je, 3                       ; 5 uses
  %i.jg = icmp sgt i32 %i.jf, 0
  br i1 %i.jg, label %.lr.ph.i38.preheader.i, label %from_words52.exit

.lr.ph.i38.preheader.i:                           ; preds = %bb.o
  %i.jh = load i64, ptr %.032.lcssa.i, align 8, !tbaa !9 ; 2 uses
  %xtraiter = and i32 %i.jf, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i38.i.prol.loopexit, label %.lr.ph.i38.i.prol

.lr.ph.i38.i.prol:                                ; preds = %.lr.ph.i38.preheader.i, %.lr.ph.i38.i.prol
  %.08.i39.i.prol = phi i64 [ %i.jk, %.lr.ph.i38.i.prol ], [ %i.jh, %.lr.ph.i38.preheader.i ] ; 2 uses
  %.047.i40.i.prol = phi i32 [ %i.jl, %.lr.ph.i38.i.prol ], [ %i.jf, %.lr.ph.i38.preheader.i ]
  %.056.i41.i.prol = phi ptr [ %i.jj, %.lr.ph.i38.i.prol ], [ %.030.lcssa.i, %.lr.ph.i38.preheader.i ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i38.i.prol ], [ 0, %.lr.ph.i38.preheader.i ]
  %i.ji = trunc i64 %.08.i39.i.prol to i8
  %i.jj = getelementptr inbounds nuw i8, ptr %.056.i41.i.prol, i64 1 ; 2 uses
  store i8 %i.ji, ptr %.056.i41.i.prol, align 1, !tbaa !11
  %i.jk = lshr i64 %.08.i39.i.prol, 8             ; 2 uses
  %i.jl = add nsw i32 %.047.i40.i.prol, -1        ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i38.i.prol.loopexit, label %.lr.ph.i38.i.prol, !llvm.loop !18

.lr.ph.i38.i.prol.loopexit:                       ; preds = %.lr.ph.i38.i.prol, %.lr.ph.i38.preheader.i
  %.08.i39.i.unr = phi i64 [ %i.jh, %.lr.ph.i38.preheader.i ], [ %i.jk, %.lr.ph.i38.i.prol ]
  %.047.i40.i.unr = phi i32 [ %i.jf, %.lr.ph.i38.preheader.i ], [ %i.jl, %.lr.ph.i38.i.prol ]
  %.056.i41.i.unr = phi ptr [ %.030.lcssa.i, %.lr.ph.i38.preheader.i ], [ %i.jj, %.lr.ph.i38.i.prol ]
  %i.jm = icmp ult i32 %i.jf, 8
  br i1 %i.jm, label %from_words52.exit, label %.lr.ph.i38.i

.lr.ph.i38.i:                                     ; preds = %.lr.ph.i38.i.prol.loopexit, %.lr.ph.i38.i
  %.08.i39.i = phi i64 [ 0, %.lr.ph.i38.i ], [ %.08.i39.i.unr, %.lr.ph.i38.i.prol.loopexit ] ; 8 uses
  %.047.i40.i = phi i32 [ %i.kk, %.lr.ph.i38.i ], [ %.047.i40.i.unr, %.lr.ph.i38.i.prol.loopexit ] ; 2 uses
  %.056.i41.i = phi ptr [ %i.kj, %.lr.ph.i38.i ], [ %.056.i41.i.unr, %.lr.ph.i38.i.prol.loopexit ] ; 9 uses
  %i.jn = trunc i64 %.08.i39.i to i8
  %i.jo = getelementptr inbounds nuw i8, ptr %.056.i41.i, i64 1
  store i8 %i.jn, ptr %.056.i41.i, align 1, !tbaa !11
  %i.jp = lshr i64 %.08.i39.i, 8
  %i.jq = trunc i64 %i.jp to i8
  %i.jr = getelementptr inbounds nuw i8, ptr %.056.i41.i, i64 2
  store i8 %i.jq, ptr %i.jo, align 1, !tbaa !11
  %i.js = lshr i64 %.08.i39.i, 16
  %i.jt = trunc i64 %i.js to i8
  %i.ju = getelementptr inbounds nuw i8, ptr %.056.i41.i, i64 3
  store i8 %i.jt, ptr %i.jr, align 1, !tbaa !11
  %i.jv = lshr i64 %.08.i39.i, 24
  %i.jw = trunc i64 %i.jv to i8
  %i.jx = getelementptr inbounds nuw i8, ptr %.056.i41.i, i64 4
  store i8 %i.jw, ptr %i.ju, align 1, !tbaa !11
  %i.jy = lshr i64 %.08.i39.i, 32
  %i.jz = trunc i64 %i.jy to i8
  %i.ka = getelementptr inbounds nuw i8, ptr %.056.i41.i, i64 5
  store i8 %i.jz, ptr %i.jx, align 1, !tbaa !11
  %i.kb = lshr i64 %.08.i39.i, 40
  %i.kc = trunc i64 %i.kb to i8
  %i.kd = getelementptr inbounds nuw i8, ptr %.056.i41.i, i64 6
  store i8 %i.kc, ptr %i.ka, align 1, !tbaa !11
  %i.ke = lshr i64 %.08.i39.i, 48
  %i.kf = trunc i64 %i.ke to i8
  %i.kg = getelementptr inbounds nuw i8, ptr %.056.i41.i, i64 7
  store i8 %i.kf, ptr %i.kd, align 1, !tbaa !11
  %i.kh = lshr i64 %.08.i39.i, 56
  %i.ki = trunc nuw i64 %i.kh to i8
  %i.kj = getelementptr inbounds nuw i8, ptr %.056.i41.i, i64 8
  store i8 %i.ki, ptr %i.kg, align 1, !tbaa !11
  %i.kk = add nsw i32 %.047.i40.i, -8
  %i.kl = icmp sgt i32 %.047.i40.i, 8
  br i1 %i.kl, label %.lr.ph.i38.i, label %from_words52.exit, !llvm.loop !17

from_words52.exit:                                ; preds = %.lr.ph.i38.i.prol.loopexit, %.lr.ph.i38.i, %.lr.ph.i33.i.prol.loopexit, %.lr.ph.i33.i, %bb.n, %bb.o
  br i1 %i.gr, label %.lr.ph.preheader.i142, label %.preheader.i122

.lr.ph.preheader.i142:                            ; preds = %from_words52.exit
  %i.km = zext nneg i32 %i.gq to i64
  %i.kn = shl nuw nsw i64 %i.km, 3
  call void @llvm.memset.p0.i64(ptr align 8 %6, i8 0, i64 %i.kn, i1 false), !tbaa !9
  br label %.preheader.i122

.preheader.i122:                                  ; preds = %.lr.ph.preheader.i142, %from_words52.exit
  br i1 %i.gu, label %.lr.ph48.i138, label %._crit_edge.i123

.lr.ph48.i138:                                    ; preds = %.preheader.i122, %.lr.ph48.i138
  %.047.i139 = phi i32 [ %i.kw, %.lr.ph48.i138 ], [ %12, %.preheader.i122 ] ; 2 uses
  %.03046.i140 = phi ptr [ %i.kv, %.lr.ph48.i138 ], [ %6, %.preheader.i122 ] ; 3 uses
  %.03245.i141 = phi ptr [ %i.kx, %.lr.ph48.i138 ], [ %i.ap, %.preheader.i122 ] ; 3 uses
  %i.ko = load i64, ptr %.03245.i141, align 8, !tbaa !9 ; 2 uses
  store i64 %i.ko, ptr %.03046.i140, align 1
  %i.kp = getelementptr inbounds nuw i8, ptr %.03046.i140, i64 6
  %i.kq = lshr i64 %i.ko, 48
  %i.kr = getelementptr inbounds nuw i8, ptr %.03245.i141, i64 8
  %i.ks = load i64, ptr %i.kr, align 8, !tbaa !9
  %i.kt = shl i64 %i.ks, 4
  %i.ku = or i64 %i.kt, %i.kq
  store i64 %i.ku, ptr %i.kp, align 1
  %i.kv = getelementptr inbounds nuw i8, ptr %.03046.i140, i64 13 ; 2 uses
  %i.kw = add nsw i32 %.047.i139, -104            ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %.03245.i141, i64 16 ; 2 uses
  %i.ky = icmp samesign ugt i32 %.047.i139, 207
  br i1 %i.ky, label %.lr.ph48.i138, label %._crit_edge.i123, !llvm.loop !15

._crit_edge.i123:                                 ; preds = %.lr.ph48.i138, %.preheader.i122
  %.032.lcssa.i124 = phi ptr [ %i.ap, %.preheader.i122 ], [ %i.kx, %.lr.ph48.i138 ] ; 3 uses
  %.030.lcssa.i125 = phi ptr [ %6, %.preheader.i122 ], [ %i.kv, %.lr.ph48.i138 ] ; 6 uses
  %.0.lcssa.i126 = phi i32 [ %12, %.preheader.i122 ], [ %i.kw, %.lr.ph48.i138 ] ; 4 uses
  %i.kz = icmp sgt i32 %.0.lcssa.i126, 52
  br i1 %i.kz, label %.lr.ph.i.i133, label %bb.p

.lr.ph.i.i133:                                    ; preds = %._crit_edge.i123
  %i.la = load i64, ptr %.032.lcssa.i124, align 8, !tbaa !9 ; 4 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %.030.lcssa.i125, i64 4
  %i.lc = bitcast i64 %i.la to <8 x i8>
  %i.ld = shufflevector <8 x i8> %i.lc, <8 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i8> %i.ld, ptr %.030.lcssa.i125, align 1, !tbaa !11
  %i.le = lshr i64 %i.la, 32
  %i.lf = trunc i64 %i.le to i8
  %i.lg = getelementptr inbounds nuw i8, ptr %.030.lcssa.i125, i64 5
  store i8 %i.lf, ptr %i.lb, align 1, !tbaa !11
  %i.lh = lshr i64 %i.la, 40
  %i.li = trunc i64 %i.lh to i8
  %i.lj = getelementptr inbounds nuw i8, ptr %.030.lcssa.i125, i64 6 ; 3 uses
  store i8 %i.li, ptr %i.lg, align 1, !tbaa !11
  %i.lk = lshr i64 %i.la, 48                      ; 2 uses
  %i.ll = trunc i64 %i.lk to i8
  store i8 %i.ll, ptr %i.lj, align 1, !tbaa !11
  %i.lm = add nsw i32 %.0.lcssa.i126, -45
  %i.ln = lshr i32 %i.lm, 3                       ; 4 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %.032.lcssa.i124, i64 8
  %i.lp = load i64, ptr %i.lo, align 8, !tbaa !9
  %i.lq = shl i64 %i.lp, 4
  %i.lr = or i64 %i.lq, %i.lk                     ; 2 uses
  %i.ls = add nsw i32 %i.ln, -1
  %xtraiter231 = and i32 %i.ln, 7                 ; 2 uses
  %lcmp.mod232.not = icmp eq i32 %xtraiter231, 0
  br i1 %lcmp.mod232.not, label %.lr.ph.i33.i134.prol.loopexit, label %.lr.ph.i33.i134.prol

.lr.ph.i33.i134.prol:                             ; preds = %.lr.ph.i.i133, %.lr.ph.i33.i134.prol
  %.08.i34.i135.prol = phi i64 [ %i.lv, %.lr.ph.i33.i134.prol ], [ %i.lr, %.lr.ph.i.i133 ] ; 2 uses
  %.047.i35.i136.prol = phi i32 [ %i.lw, %.lr.ph.i33.i134.prol ], [ %i.ln, %.lr.ph.i.i133 ]
  %.056.i36.i137.prol = phi ptr [ %i.lu, %.lr.ph.i33.i134.prol ], [ %i.lj, %.lr.ph.i.i133 ] ; 2 uses
  %prol.iter233 = phi i32 [ %prol.iter233.next, %.lr.ph.i33.i134.prol ], [ 0, %.lr.ph.i.i133 ]
  %i.lt = trunc i64 %.08.i34.i135.prol to i8
  %i.lu = getelementptr inbounds nuw i8, ptr %.056.i36.i137.prol, i64 1 ; 2 uses
  store i8 %i.lt, ptr %.056.i36.i137.prol, align 1, !tbaa !11
  %i.lv = lshr i64 %.08.i34.i135.prol, 8          ; 2 uses
  %i.lw = add nsw i32 %.047.i35.i136.prol, -1     ; 2 uses
  %prol.iter233.next = add i32 %prol.iter233, 1   ; 2 uses
  %prol.iter233.cmp.not = icmp eq i32 %prol.iter233.next, %xtraiter231
  br i1 %prol.iter233.cmp.not, label %.lr.ph.i33.i134.prol.loopexit, label %.lr.ph.i33.i134.prol, !llvm.loop !19

.lr.ph.i33.i134.prol.loopexit:                    ; preds = %.lr.ph.i33.i134.prol, %.lr.ph.i.i133
  %.08.i34.i135.unr = phi i64 [ %i.lr, %.lr.ph.i.i133 ], [ %i.lv, %.lr.ph.i33.i134.prol ]
  %.047.i35.i136.unr = phi i32 [ %i.ln, %.lr.ph.i.i133 ], [ %i.lw, %.lr.ph.i33.i134.prol ]
  %.056.i36.i137.unr = phi ptr [ %i.lj, %.lr.ph.i.i133 ], [ %i.lu, %.lr.ph.i33.i134.prol ]
  %i.lx = icmp ult i32 %i.ls, 7
  br i1 %i.lx, label %from_words52.exit143, label %.lr.ph.i33.i134

.lr.ph.i33.i134:                                  ; preds = %.lr.ph.i33.i134.prol.loopexit, %.lr.ph.i33.i134
  %.08.i34.i135 = phi i64 [ 0, %.lr.ph.i33.i134 ], [ %.08.i34.i135.unr, %.lr.ph.i33.i134.prol.loopexit ] ; 8 uses
  %.047.i35.i136 = phi i32 [ %i.mv, %.lr.ph.i33.i134 ], [ %.047.i35.i136.unr, %.lr.ph.i33.i134.prol.loopexit ] ; 2 uses
  %.056.i36.i137 = phi ptr [ %i.mu, %.lr.ph.i33.i134 ], [ %.056.i36.i137.unr, %.lr.ph.i33.i134.prol.loopexit ] ; 9 uses
  %i.ly = trunc i64 %.08.i34.i135 to i8
  %i.lz = getelementptr inbounds nuw i8, ptr %.056.i36.i137, i64 1
  store i8 %i.ly, ptr %.056.i36.i137, align 1, !tbaa !11
  %i.ma = lshr i64 %.08.i34.i135, 8
  %i.mb = trunc i64 %i.ma to i8
  %i.mc = getelementptr inbounds nuw i8, ptr %.056.i36.i137, i64 2
  store i8 %i.mb, ptr %i.lz, align 1, !tbaa !11
  %i.md = lshr i64 %.08.i34.i135, 16
  %i.me = trunc i64 %i.md to i8
  %i.mf = getelementptr inbounds nuw i8, ptr %.056.i36.i137, i64 3
  store i8 %i.me, ptr %i.mc, align 1, !tbaa !11
  %i.mg = lshr i64 %.08.i34.i135, 24
  %i.mh = trunc i64 %i.mg to i8
  %i.mi = getelementptr inbounds nuw i8, ptr %.056.i36.i137, i64 4
  store i8 %i.mh, ptr %i.mf, align 1, !tbaa !11
  %i.mj = lshr i64 %.08.i34.i135, 32
  %i.mk = trunc i64 %i.mj to i8
  %i.ml = getelementptr inbounds nuw i8, ptr %.056.i36.i137, i64 5
  store i8 %i.mk, ptr %i.mi, align 1, !tbaa !11
  %i.mm = lshr i64 %.08.i34.i135, 40
  %i.mn = trunc i64 %i.mm to i8
  %i.mo = getelementptr inbounds nuw i8, ptr %.056.i36.i137, i64 6
  store i8 %i.mn, ptr %i.ml, align 1, !tbaa !11
  %i.mp = lshr i64 %.08.i34.i135, 48
  %i.mq = trunc i64 %i.mp to i8
  %i.mr = getelementptr inbounds nuw i8, ptr %.056.i36.i137, i64 7
  store i8 %i.mq, ptr %i.mo, align 1, !tbaa !11
  %i.ms = lshr i64 %.08.i34.i135, 56
  %i.mt = trunc nuw i64 %i.ms to i8
  %i.mu = getelementptr inbounds nuw i8, ptr %.056.i36.i137, i64 8
  store i8 %i.mt, ptr %i.mr, align 1, !tbaa !11
  %i.mv = add nsw i32 %.047.i35.i136, -8
  %i.mw = icmp sgt i32 %.047.i35.i136, 8
  br i1 %i.mw, label %.lr.ph.i33.i134, label %from_words52.exit143, !llvm.loop !17

bb.p:                                             ; preds = %._crit_edge.i123
  %.not.i127 = icmp eq i32 %.0.lcssa.i126, 0
  br i1 %.not.i127, label %from_words52.exit143, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.mx = add nsw i32 %.0.lcssa.i126, 7
  %i.my = ashr i32 %i.mx, 3                       ; 5 uses
  %i.mz = icmp sgt i32 %i.my, 0
  br i1 %i.mz, label %.lr.ph.i38.preheader.i128, label %from_words52.exit143

.lr.ph.i38.preheader.i128:                        ; preds = %bb.q
  %i.na = load i64, ptr %.032.lcssa.i124, align 8, !tbaa !9 ; 2 uses
  %xtraiter228 = and i32 %i.my, 7                 ; 2 uses
  %lcmp.mod229.not = icmp eq i32 %xtraiter228, 0
  br i1 %lcmp.mod229.not, label %.lr.ph.i38.i129.prol.loopexit, label %.lr.ph.i38.i129.prol

.lr.ph.i38.i129.prol:                             ; preds = %.lr.ph.i38.preheader.i128, %.lr.ph.i38.i129.prol
  %.08.i39.i130.prol = phi i64 [ %i.nd, %.lr.ph.i38.i129.prol ], [ %i.na, %.lr.ph.i38.preheader.i128 ] ; 2 uses
  %.047.i40.i131.prol = phi i32 [ %i.ne, %.lr.ph.i38.i129.prol ], [ %i.my, %.lr.ph.i38.preheader.i128 ]
  %.056.i41.i132.prol = phi ptr [ %i.nc, %.lr.ph.i38.i129.prol ], [ %.030.lcssa.i125, %.lr.ph.i38.preheader.i128 ] ; 2 uses
  %prol.iter230 = phi i32 [ %prol.iter230.next, %.lr.ph.i38.i129.prol ], [ 0, %.lr.ph.i38.preheader.i128 ]
  %i.nb = trunc i64 %.08.i39.i130.prol to i8
  %i.nc = getelementptr inbounds nuw i8, ptr %.056.i41.i132.prol, i64 1 ; 2 uses
  store i8 %i.nb, ptr %.056.i41.i132.prol, align 1, !tbaa !11
  %i.nd = lshr i64 %.08.i39.i130.prol, 8          ; 2 uses
  %i.ne = add nsw i32 %.047.i40.i131.prol, -1     ; 2 uses
  %prol.iter230.next = add i32 %prol.iter230, 1   ; 2 uses
  %prol.iter230.cmp.not = icmp eq i32 %prol.iter230.next, %xtraiter228
  br i1 %prol.iter230.cmp.not, label %.lr.ph.i38.i129.prol.loopexit, label %.lr.ph.i38.i129.prol, !llvm.loop !20

.lr.ph.i38.i129.prol.loopexit:                    ; preds = %.lr.ph.i38.i129.prol, %.lr.ph.i38.preheader.i128
  %.08.i39.i130.unr = phi i64 [ %i.na, %.lr.ph.i38.preheader.i128 ], [ %i.nd, %.lr.ph.i38.i129.prol ]
  %.047.i40.i131.unr = phi i32 [ %i.my, %.lr.ph.i38.preheader.i128 ], [ %i.ne, %.lr.ph.i38.i129.prol ]
  %.056.i41.i132.unr = phi ptr [ %.030.lcssa.i125, %.lr.ph.i38.preheader.i128 ], [ %i.nc, %.lr.ph.i38.i129.prol ]
  %i.nf = icmp ult i32 %i.my, 8
  br i1 %i.nf, label %from_words52.exit143, label %.lr.ph.i38.i129

.lr.ph.i38.i129:                                  ; preds = %.lr.ph.i38.i129.prol.loopexit, %.lr.ph.i38.i129
  %.08.i39.i130 = phi i64 [ 0, %.lr.ph.i38.i129 ], [ %.08.i39.i130.unr, %.lr.ph.i38.i129.prol.loopexit ] ; 8 uses
  %.047.i40.i131 = phi i32 [ %i.od, %.lr.ph.i38.i129 ], [ %.047.i40.i131.unr, %.lr.ph.i38.i129.prol.loopexit ] ; 2 uses
  %.056.i41.i132 = phi ptr [ %i.oc, %.lr.ph.i38.i129 ], [ %.056.i41.i132.unr, %.lr.ph.i38.i129.prol.loopexit ] ; 9 uses
  %i.ng = trunc i64 %.08.i39.i130 to i8
  %i.nh = getelementptr inbounds nuw i8, ptr %.056.i41.i132, i64 1
  store i8 %i.ng, ptr %.056.i41.i132, align 1, !tbaa !11
  %i.ni = lshr i64 %.08.i39.i130, 8
  %i.nj = trunc i64 %i.ni to i8
  %i.nk = getelementptr inbounds nuw i8, ptr %.056.i41.i132, i64 2
  store i8 %i.nj, ptr %i.nh, align 1, !tbaa !11
  %i.nl = lshr i64 %.08.i39.i130, 16
  %i.nm = trunc i64 %i.nl to i8
  %i.nn = getelementptr inbounds nuw i8, ptr %.056.i41.i132, i64 3
  store i8 %i.nm, ptr %i.nk, align 1, !tbaa !11
  %i.no = lshr i64 %.08.i39.i130, 24
  %i.np = trunc i64 %i.no to i8
  %i.nq = getelementptr inbounds nuw i8, ptr %.056.i41.i132, i64 4
  store i8 %i.np, ptr %i.nn, align 1, !tbaa !11
  %i.nr = lshr i64 %.08.i39.i130, 32
  %i.ns = trunc i64 %i.nr to i8
  %i.nt = getelementptr inbounds nuw i8, ptr %.056.i41.i132, i64 5
  store i8 %i.ns, ptr %i.nq, align 1, !tbaa !11
  %i.nu = lshr i64 %.08.i39.i130, 40
  %i.nv = trunc i64 %i.nu to i8
  %i.nw = getelementptr inbounds nuw i8, ptr %.056.i41.i132, i64 6
  store i8 %i.nv, ptr %i.nt, align 1, !tbaa !11
  %i.nx = lshr i64 %.08.i39.i130, 48
  %i.ny = trunc i64 %i.nx to i8
  %i.nz = getelementptr inbounds nuw i8, ptr %.056.i41.i132, i64 7
  store i8 %i.ny, ptr %i.nw, align 1, !tbaa !11
  %i.oa = lshr i64 %.08.i39.i130, 56
  %i.ob = trunc nuw i64 %i.oa to i8
  %i.oc = getelementptr inbounds nuw i8, ptr %.056.i41.i132, i64 8
  store i8 %i.ob, ptr %i.nz, align 1, !tbaa !11
  %i.od = add nsw i32 %.047.i40.i131, -8
  %i.oe = icmp sgt i32 %.047.i40.i131, 8
  br i1 %i.oe, label %.lr.ph.i38.i129, label %from_words52.exit143, !llvm.loop !17

from_words52.exit143:                             ; preds = %.lr.ph.i38.i129.prol.loopexit, %.lr.ph.i38.i129, %.lr.ph.i33.i134.prol.loopexit, %.lr.ph.i33.i134, %bb.p, %bb.q
  %i.of = lshr exact i32 %12, 6                   ; 3 uses
  %i.og = zext nneg i32 %i.of to i64              ; 6 uses
  %i.oh = call i64 @bn_sub_words(ptr noundef nonnull %i.w, ptr noundef %0, ptr noundef %3, i32 noundef %i.of) #7 ; 2 uses
  %i.oi = sub i64 0, %i.oh
  %i.oj = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.oi) #9, !srcloc !27 ; 2 uses
  %i.ok = add i64 %i.oh, -1
  %i.ol = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.ok) #9, !srcloc !27 ; 2 uses
  %min.iters.check = icmp ult i32 %12, 256
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %from_words52.exit143
  %n.vec = and i64 %i.og, 67108860                ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.oj, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert195 = insertelement <2 x i64> poison, i64 %i.ol, i64 0
  %broadcast.splat196 = shufflevector <2 x i64> %broadcast.splatinsert195, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.om = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.om, align 8, !tbaa !9
  %wide.load197 = load <2 x i64>, ptr %i.on, align 8, !tbaa !9
  %i.oo = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %index ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 16
  %wide.load198 = load <2 x i64>, ptr %i.oo, align 8, !tbaa !9
  %wide.load199 = load <2 x i64>, ptr %i.op, align 8, !tbaa !9
  %i.oq = and <2 x i64> %wide.load, %broadcast.splat
  %i.or = and <2 x i64> %wide.load197, %broadcast.splat
  %i.os = and <2 x i64> %wide.load198, %broadcast.splat196
  %i.ot = and <2 x i64> %wide.load199, %broadcast.splat196
  %i.ou = or <2 x i64> %i.os, %i.oq
  %i.ov = or <2 x i64> %i.ot, %i.or
  store <2 x i64> %i.ou, ptr %i.om, align 8, !tbaa !9
  store <2 x i64> %i.ov, ptr %i.on, align 8, !tbaa !9
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ow = icmp eq i64 %index.next, %n.vec
  br i1 %i.ow, label %middle.block, label %vector.body, !llvm.loop !21

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.og
  br i1 %cmp.n, label %.lr.ph.i.i146, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %from_words52.exit143, %middle.block
  %.09.i.i.ph = phi i64 [ 0, %from_words52.exit143 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.09.i.i = phi i64 [ %i.pe, %scalar.ph ], [ %.09.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ox = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.09.i.i ; 2 uses
  %i.oy = load i64, ptr %i.ox, align 8, !tbaa !9
  %i.oz = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.09.i.i
  %i.pa = load i64, ptr %i.oz, align 8, !tbaa !9
  %i.pb = and i64 %i.oy, %i.oj
  %i.pc = and i64 %i.pa, %i.ol
  %i.pd = or i64 %i.pc, %i.pb
  store i64 %i.pd, ptr %i.ox, align 8, !tbaa !9
  %i.pe = add nuw i64 %.09.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.pe, %i.og
  br i1 %exitcond.not.i.i, label %.lr.ph.i.i146, label %scalar.ph, !llvm.loop !22

.lr.ph.i.i146:                                    ; preds = %scalar.ph, %middle.block
  %i.pf = call i64 @bn_sub_words(ptr noundef nonnull %i.w, ptr noundef %6, ptr noundef %9, i32 noundef %i.of) #7 ; 2 uses
  %i.pg = sub i64 0, %i.pf
  %i.ph = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.pg) #9, !srcloc !27 ; 2 uses
  %i.pi = add i64 %i.pf, -1
  %i.pj = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.pi) #9, !srcloc !27 ; 2 uses
  %min.iters.check201 = icmp ult i32 %12, 256
  br i1 %min.iters.check201, label %scalar.ph200.preheader, label %vector.ph202

vector.ph202:                                     ; preds = %.lr.ph.i.i146
  %n.vec203 = and i64 %i.og, 67108860             ; 3 uses
  %broadcast.splatinsert204 = insertelement <2 x i64> poison, i64 %i.ph, i64 0
  %broadcast.splat205 = shufflevector <2 x i64> %broadcast.splatinsert204, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert206 = insertelement <2 x i64> poison, i64 %i.pj, i64 0
  %broadcast.splat207 = shufflevector <2 x i64> %broadcast.splatinsert206, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body208

vector.body208:                                   ; preds = %vector.body208, %vector.ph202
  %index209 = phi i64 [ 0, %vector.ph202 ], [ %index.next214, %vector.body208 ] ; 3 uses
  %i.pk = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %index209 ; 3 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 16 ; 2 uses
  %wide.load210 = load <2 x i64>, ptr %i.pk, align 8, !tbaa !9
  %wide.load211 = load <2 x i64>, ptr %i.pl, align 8, !tbaa !9
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %index209 ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 16
  %wide.load212 = load <2 x i64>, ptr %i.pm, align 8, !tbaa !9
  %wide.load213 = load <2 x i64>, ptr %i.pn, align 8, !tbaa !9
  %i.po = and <2 x i64> %wide.load210, %broadcast.splat205
  %i.pp = and <2 x i64> %wide.load211, %broadcast.splat205
  %i.pq = and <2 x i64> %wide.load212, %broadcast.splat207
  %i.pr = and <2 x i64> %wide.load213, %broadcast.splat207
  %i.ps = or <2 x i64> %i.pq, %i.po
  %i.pt = or <2 x i64> %i.pr, %i.pp
  store <2 x i64> %i.ps, ptr %i.pk, align 8, !tbaa !9
  store <2 x i64> %i.pt, ptr %i.pl, align 8, !tbaa !9
  %index.next214 = add nuw i64 %index209, 4       ; 2 uses
  %i.pu = icmp eq i64 %index.next214, %n.vec203
  br i1 %i.pu, label %middle.block215, label %vector.body208, !llvm.loop !23

middle.block215:                                  ; preds = %vector.body208
  %cmp.n216 = icmp eq i64 %n.vec203, %i.og
  br i1 %cmp.n216, label %RSAZ_mod_exp_x2_ifma256.exit.thread, label %scalar.ph200.preheader

scalar.ph200.preheader:                           ; preds = %.lr.ph.i.i146, %middle.block215
  %.09.i.i147.ph = phi i64 [ 0, %.lr.ph.i.i146 ], [ %n.vec203, %middle.block215 ]
  br label %scalar.ph200

scalar.ph200:                                     ; preds = %scalar.ph200.preheader, %scalar.ph200
  %.09.i.i147 = phi i64 [ %i.qc, %scalar.ph200 ], [ %.09.i.i147.ph, %scalar.ph200.preheader ] ; 3 uses
  %i.pv = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.09.i.i147 ; 2 uses
  %i.pw = load i64, ptr %i.pv, align 8, !tbaa !9
  %i.px = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.09.i.i147
  %i.py = load i64, ptr %i.px, align 8, !tbaa !9
  %i.pz = and i64 %i.pw, %i.ph
  %i.qa = and i64 %i.py, %i.pj
  %i.qb = or i64 %i.qa, %i.pz
  store i64 %i.qb, ptr %i.pv, align 8, !tbaa !9
  %i.qc = add nuw i64 %.09.i.i147, 1              ; 2 uses
  %exitcond.not.i.i148 = icmp eq i64 %i.qc, %i.og
  br i1 %exitcond.not.i.i148, label %RSAZ_mod_exp_x2_ifma256.exit.thread, label %scalar.ph200, !llvm.loop !24

RSAZ_mod_exp_x2_ifma256.exit.thread:              ; preds = %scalar.ph200, %middle.block215, %bb.g, %bb.d, %bb.c
  %.0113.ph = phi i32 [ 0, %bb.g ], [ 0, %bb.d ], [ 0, %bb.c ], [ 1, %middle.block215 ], [ 1, %scalar.ph200 ]
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.w, i64 noundef %i.v) #7
  call void @CRYPTO_free(ptr noundef nonnull %i.w, ptr noundef nonnull @.str, i32 noundef 321) #7
  br label %bn_reduce_once_in_place.exit149

bn_reduce_once_in_place.exit149:                  ; preds = %bb.b, %bb.a, %RSAZ_mod_exp_x2_ifma256.exit.thread
  %.0113156 = phi i32 [ %.0113.ph, %RSAZ_mod_exp_x2_ifma256.exit.thread ], [ 0, %bb.a ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.0113156
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @ossl_rsaz_avx512ifma_eligible() local_unnamed_addr #3

declare noalias ptr @CRYPTO_malloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @to_words52(ptr nofree noundef nonnull writeonly captures(none) %0, i32 noundef range(i32 -33554428, 33554429) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) unnamed_addr #4 {
bb.a:
  %i.a = icmp sgt i32 %3, 103
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.050 = phi ptr [ %i.j, %.lr.ph ], [ %0, %bb.a ] ; 3 uses
  %.03349 = phi i32 [ %i.h, %.lr.ph ], [ %1, %bb.a ]
  %.03548 = phi ptr [ %i.g, %.lr.ph ], [ %2, %bb.a ] ; 3 uses
  %.03647 = phi i32 [ %i.i, %.lr.ph ], [ %3, %bb.a ] ; 2 uses
  %.0.copyload = load i64, ptr %.03548, align 1
  %i.b = and i64 %.0.copyload, 4503599627370495
  store i64 %i.b, ptr %.050, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %.03548, i64 6
  %.0.copyload3 = load i64, ptr %i.c, align 1
  %i.d = lshr i64 %.0.copyload3, 4
  %i.e = and i64 %i.d, 4503599627370495
  %i.f = getelementptr inbounds nuw i8, ptr %.050, i64 8
  store i64 %i.e, ptr %i.f, align 8, !tbaa !9
  %i.g = getelementptr inbounds nuw i8, ptr %.03548, i64 13 ; 2 uses
  %i.h = add nsw i32 %.03349, -2                  ; 2 uses
  %i.i = add nsw i32 %.03647, -104                ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.050, i64 16 ; 2 uses
  %i.k = icmp samesign ugt i32 %.03647, 207
  br i1 %i.k, label %.lr.ph, label %._crit_edge, !llvm.loop !30

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.036.lcssa = phi i32 [ %3, %bb.a ], [ %i.i, %.lr.ph ] ; 4 uses
  %.035.lcssa = phi ptr [ %2, %bb.a ], [ %i.g, %.lr.ph ] ; 17 uses
  %.033.lcssa = phi i32 [ %1, %bb.a ], [ %i.h, %.lr.ph ] ; 3 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.j, %.lr.ph ] ; 6 uses
  %i.l = icmp sgt i32 %.036.lcssa, 52
  br i1 %i.l, label %.preheader.preheader, label %bb.c

.preheader.preheader:                             ; preds = %._crit_edge
  %i.m = getelementptr i8, ptr %.035.lcssa, i64 6
  %i.n = load i8, ptr %i.m, align 1, !tbaa !11
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr i8, ptr %.035.lcssa, i64 5
  %i.q = load i8, ptr %i.p, align 1, !tbaa !11
  %i.r = zext i8 %i.q to i64
  %i.s = shl nuw nsw i64 %i.o, 16
  %i.t = shl nuw nsw i64 %i.r, 8
  %i.u = or disjoint i64 %i.s, %i.t
  %i.v = getelementptr i8, ptr %.035.lcssa, i64 4
  %i.w = load i8, ptr %i.v, align 1, !tbaa !11
  %i.x = zext i8 %i.w to i64
  %i.y = or disjoint i64 %i.u, %i.x
  %i.z = getelementptr i8, ptr %.035.lcssa, i64 3
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !11
  %i.ab = zext i8 %i.aa to i64
  %i.ac = shl nuw nsw i64 %i.y, 16
  %i.ad = shl nuw nsw i64 %i.ab, 8
  %i.ae = or disjoint i64 %i.ac, %i.ad
  %i.af = getelementptr i8, ptr %.035.lcssa, i64 2
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !11
  %i.ah = zext i8 %i.ag to i64
  %i.ai = or disjoint i64 %i.ae, %i.ah
  %i.aj = getelementptr i8, ptr %.035.lcssa, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !11
  %i.al = zext i8 %i.ak to i64
  %i.am = shl nuw nsw i64 %i.ai, 16
  %i.an = shl nuw nsw i64 %i.al, 8
  %i.ao = load i8, ptr %.035.lcssa, align 1, !tbaa !11
  %i.ap = zext i8 %i.ao to i64
  %.masked61 = and i64 %i.am, 4503599627304960
  %.masked = or disjoint i64 %.masked61, %i.an
  %i.aq = or disjoint i64 %.masked, %i.ap
  store i64 %i.aq, ptr %.0.lcssa, align 8, !tbaa !9
  %i.ar = add nsw i32 %.036.lcssa, -45
  %i.as = lshr i32 %i.ar, 3                       ; 2 uses
  %i.at = zext nneg i32 %i.as to i64              ; 4 uses
  %xtraiter80 = and i64 %i.at, 3                  ; 3 uses
  %4 = add nsw i32 %i.as, -1
  %5 = icmp ult i32 %4, 3
  br i1 %5, label %.epil.preheader79, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter85 = and i64 %i.at, 536870908
  br label %6

6:                                                ; preds = %6, %.preheader.preheader.new
  %indvars.iv.i37 = phi i64 [ %i.at, %.preheader.preheader.new ], [ %indvars.iv.next.i39.3, %6 ] ; 5 uses
  %.08.i38 = phi i64 [ 0, %.preheader.preheader.new ], [ %30, %6 ]
  %niter86 = phi i64 [ 0, %.preheader.preheader.new ], [ %niter86.next.3, %6 ]
  %7 = getelementptr i8, ptr %.035.lcssa, i64 %indvars.iv.i37
  %8 = getelementptr i8, ptr %7, i64 5
  %9 = load i8, ptr %8, align 1, !tbaa !11
  %10 = zext i8 %9 to i64
  %11 = shl i64 %.08.i38, 16
  %12 = shl nuw nsw i64 %10, 8
  %13 = or disjoint i64 %11, %12
  %14 = getelementptr i8, ptr %.035.lcssa, i64 %indvars.iv.i37
  %15 = getelementptr i8, ptr %14, i64 4
  %16 = load i8, ptr %15, align 1, !tbaa !11
  %17 = zext i8 %16 to i64
  %18 = or disjoint i64 %13, %17
  %19 = getelementptr i8, ptr %.035.lcssa, i64 %indvars.iv.i37
  %20 = getelementptr i8, ptr %19, i64 3
  %21 = load i8, ptr %20, align 1, !tbaa !11
  %22 = zext i8 %21 to i64
  %23 = shl i64 %18, 16
  %24 = shl nuw nsw i64 %22, 8
  %25 = or disjoint i64 %23, %24
  %26 = getelementptr i8, ptr %.035.lcssa, i64 %indvars.iv.i37
  %27 = getelementptr i8, ptr %26, i64 2
  %28 = load i8, ptr %27, align 1, !tbaa !11
  %29 = zext i8 %28 to i64
  %30 = or disjoint i64 %25, %29                  ; 3 uses
  %indvars.iv.next.i39.3 = add nsw i64 %indvars.iv.i37, -4 ; 2 uses
  %niter86.next.3 = add i64 %niter86, 4           ; 2 uses
  %niter86.ncmp.3.not = icmp eq i64 %niter86.next.3, %unroll_iter85
  br i1 %niter86.ncmp.3.not, label %get_digit.exit40.unr-lcssa, label %6, !llvm.loop !31

get_digit.exit40.unr-lcssa:                       ; preds = %6
  %lcmp.mod82.not = icmp eq i64 %xtraiter80, 0
  br i1 %lcmp.mod82.not, label %get_digit.exit40, label %.epil.preheader79

.epil.preheader79:                                ; preds = %get_digit.exit40.unr-lcssa, %.preheader.preheader
  %indvars.iv.i37.epil.init = phi i64 [ %i.at, %.preheader.preheader ], [ %indvars.iv.next.i39.3, %get_digit.exit40.unr-lcssa ]
  %.08.i38.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %30, %get_digit.exit40.unr-lcssa ]
  %lcmp.mod84 = icmp ne i64 %xtraiter80, 0
  tail call void @llvm.assume(i1 %lcmp.mod84)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader79
  %indvars.iv.i37.epil = phi i64 [ %indvars.iv.i37.epil.init, %.epil.preheader79 ], [ %indvars.iv.next.i39.epil, %bb.b ] ; 2 uses
  %indvars.iv.i37.a = phi i64 [ %.08.i38.epil.init, %.epil.preheader79 ], [ %i.az, %bb.b ]
  %.08.i38.a = phi i64 [ 0, %.epil.preheader79 ], [ %indvars.iv.next.i39, %bb.b ]
  %i.au = shl i64 %indvars.iv.i37.a, 8
  %i.av = getelementptr i8, ptr %.035.lcssa, i64 %indvars.iv.i37.epil
  %i.aw = getelementptr i8, ptr %i.av, i64 5
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !11
  %i.ay = zext i8 %i.ax to i64
  %i.az = or disjoint i64 %i.au, %i.ay            ; 2 uses
  %indvars.iv.next.i39.epil = add nsw i64 %indvars.iv.i37.epil, -1
  %indvars.iv.next.i39 = add i64 %.08.i38.a, 1    ; 2 uses
  %epil.iter81.cmp.not = icmp eq i64 %indvars.iv.next.i39, %xtraiter80
  br i1 %epil.iter81.cmp.not, label %get_digit.exit40, label %bb.b, !llvm.loop !32

get_digit.exit40:                                 ; preds = %bb.b, %get_digit.exit40.unr-lcssa
  %.lcssa = phi i64 [ %30, %get_digit.exit40.unr-lcssa ], [ %i.az, %bb.b ]
  %i.ba = lshr i64 %.lcssa, 4
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 8
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !9
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 16
  %i.bd = add nsw i32 %.033.lcssa, -2
  br label %bb.f

bb.c:                                             ; preds = %._crit_edge
  %i.be = icmp sgt i32 %.036.lcssa, 0
  br i1 %i.be, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.bf = add nuw nsw i32 %.036.lcssa, 7
  %i.bg = lshr i32 %i.bf, 3                       ; 2 uses
  %i.bh = zext nneg i32 %i.bg to i64              ; 4 uses
  %xtraiter = and i64 %i.bh, 3                    ; 3 uses
  %31 = add nsw i32 %i.bg, -1
  %32 = icmp ult i32 %31, 3
  br i1 %32, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.d
  %unroll_iter = and i64 %i.bh, 268435452
  br label %33

33:                                               ; preds = %33, %.new
  %indvars.iv.i41 = phi i64 [ %i.bh, %.new ], [ %indvars.iv.next.i43.3, %33 ] ; 5 uses
  %.08.i42 = phi i64 [ 0, %.new ], [ %57, %33 ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %33 ]
  %34 = getelementptr i8, ptr %.035.lcssa, i64 %indvars.iv.i41
  %35 = getelementptr i8, ptr %34, i64 -1
  %36 = load i8, ptr %35, align 1, !tbaa !11
  %37 = zext i8 %36 to i64
  %38 = shl i64 %.08.i42, 16
  %39 = shl nuw nsw i64 %37, 8
  %40 = or disjoint i64 %38, %39
  %41 = getelementptr i8, ptr %.035.lcssa, i64 %indvars.iv.i41
  %42 = getelementptr i8, ptr %41, i64 -2
  %43 = load i8, ptr %42, align 1, !tbaa !11
  %44 = zext i8 %43 to i64
  %45 = or disjoint i64 %40, %44
  %46 = getelementptr i8, ptr %.035.lcssa, i64 %indvars.iv.i41
  %47 = getelementptr i8, ptr %46, i64 -3
  %48 = load i8, ptr %47, align 1, !tbaa !11
  %49 = zext i8 %48 to i64
  %50 = shl i64 %45, 16
  %51 = shl nuw nsw i64 %49, 8
  %52 = or disjoint i64 %50, %51
  %53 = getelementptr i8, ptr %.035.lcssa, i64 %indvars.iv.i41
  %54 = getelementptr i8, ptr %53, i64 -4
  %55 = load i8, ptr %54, align 1, !tbaa !11
  %56 = zext i8 %55 to i64
  %57 = or disjoint i64 %52, %56                  ; 3 uses
  %indvars.iv.next.i43.3 = add nsw i64 %indvars.iv.i41, -4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %get_digit.exit44.unr-lcssa, label %33, !llvm.loop !31

get_digit.exit44.unr-lcssa:                       ; preds = %33
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %get_digit.exit44, label %.epil.preheader

.epil.preheader:                                  ; preds = %get_digit.exit44.unr-lcssa, %bb.d
  %indvars.iv.i41.epil.init = phi i64 [ %i.bh, %bb.d ], [ %indvars.iv.next.i43.3, %get_digit.exit44.unr-lcssa ]
  %.08.i42.epil.init = phi i64 [ 0, %bb.d ], [ %57, %get_digit.exit44.unr-lcssa ]
  %lcmp.mod78 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod78)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %indvars.iv.i41.epil = phi i64 [ %indvars.iv.i41.epil.init, %.epil.preheader ], [ %indvars.iv.next.i43.epil, %bb.e ] ; 2 uses
  %indvars.iv.i41.a = phi i64 [ %.08.i42.epil.init, %.epil.preheader ], [ %i.bn, %bb.e ]
  %.08.i42.a = phi i64 [ 0, %.epil.preheader ], [ %indvars.iv.next.i43, %bb.e ]
  %i.bi = shl i64 %indvars.iv.i41.a, 8
  %i.bj = getelementptr i8, ptr %.035.lcssa, i64 %indvars.iv.i41.epil
  %i.bk = getelementptr i8, ptr %i.bj, i64 -1
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !11
  %i.bm = zext i8 %i.bl to i64
  %i.bn = or disjoint i64 %i.bi, %i.bm            ; 2 uses
  %indvars.iv.next.i43.epil = add nsw i64 %indvars.iv.i41.epil, -1
  %indvars.iv.next.i43 = add i64 %.08.i42.a, 1    ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %indvars.iv.next.i43, %xtraiter
  br i1 %epil.iter.cmp.not, label %get_digit.exit44, label %bb.e, !llvm.loop !33

get_digit.exit44:                                 ; preds = %bb.e, %get_digit.exit44.unr-lcssa
  %.lcssa72 = phi i64 [ %57, %get_digit.exit44.unr-lcssa ], [ %i.bn, %bb.e ]
  store i64 %.lcssa72, ptr %.0.lcssa, align 8, !tbaa !9
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 8
  %i.bp = add nsw i32 %.033.lcssa, -1
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %get_digit.exit44, %get_digit.exit40
  %.134 = phi i32 [ %i.bd, %get_digit.exit40 ], [ %i.bp, %get_digit.exit44 ], [ %.033.lcssa, %bb.c ]
  %.1 = phi ptr [ %i.bc, %get_digit.exit40 ], [ %i.bo, %get_digit.exit44 ], [ %.0.lcssa, %bb.c ]
  %i.bq = sext i32 %.134 to i64
  %i.br = shl nsw i64 %i.bq, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %.1, i8 0, i64 %i.br, i1 false)
  ret void
}

declare void @OPENSSL_cleanse(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @ossl_rsaz_amm52x20_x1_avxifma256(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #3

declare void @ossl_rsaz_amm52x20_x1_ifma256(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #3

declare void @ossl_rsaz_amm52x30_x1_avxifma256(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #3

declare void @ossl_rsaz_amm52x30_x1_ifma256(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #3

declare void @ossl_rsaz_amm52x40_x1_avxifma256(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #3

declare void @ossl_rsaz_amm52x40_x1_ifma256(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #3

declare i64 @bn_sub_words(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare noalias ptr @CRYPTO_zalloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noreturn
declare void @OPENSSL_die(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @ossl_rsaz_amm52x20_x2_avxifma256(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

declare void @ossl_rsaz_amm52x20_x2_ifma256(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

declare void @ossl_rsaz_amm52x30_x2_avxifma256(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

declare void @ossl_rsaz_amm52x30_x2_ifma256(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

declare void @ossl_rsaz_amm52x40_x2_avxifma256(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

declare void @ossl_rsaz_amm52x40_x2_ifma256(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

declare void @ossl_extract_multiplier_2x20_win5_avx(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

declare void @ossl_extract_multiplier_2x20_win5(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

declare void @ossl_extract_multiplier_2x30_win5_avx(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

declare void @ossl_extract_multiplier_2x30_win5(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

declare void @ossl_extract_multiplier_2x40_win5_avx(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

declare void @ossl_extract_multiplier_2x40_win5(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"long", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!4, !4, i64 0}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{null}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !12}
!19 = distinct !{!19, !12}
!20 = distinct !{!20, !12}
!21 = distinct !{!21, !10, !28, !29}
!22 = distinct !{!22, !10, !29, !28}
!23 = distinct !{!23, !10, !28, !29}
!24 = distinct !{!24, !10, !29, !28}
!25 = !{!"any pointer", !4, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{i64 787271}
!28 = !{!"llvm.loop.isvectorized", i32 1}
!29 = !{!"llvm.loop.unroll.runtime.disable"}
!30 = distinct !{!30, !10}
!31 = distinct !{!31, !10}
!32 = distinct !{!32, !12}
!33 = distinct !{!33, !12}
end_hunk_0
