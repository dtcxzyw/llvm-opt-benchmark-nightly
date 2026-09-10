Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/rsaz_exp_x2?download=true
inline.NumInlined: 17
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 10
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.k = tail call i32 @ossl_rsaz_avx512ifma_eligible() #6
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
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !25   ; 4 uses
  %i.v = sext i32 %i.m to i64                     ; 2 uses
  %i.w = tail call noalias ptr @CRYPTO_malloc(i64 noundef %i.v, ptr noundef nonnull @.str, i32 noundef 248) #6 ; 11 uses
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
  %i.am = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.al ; 14 uses
  %i.an = mul nsw i32 %i.i, 20
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ao ; 11 uses
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
  tail call void %i.u(ptr noundef nonnull %i.am, ptr noundef nonnull %i.am, ptr noundef nonnull %i.am, ptr noundef nonnull %i.ag, i64 noundef %5) #6
  tail call void %i.u(ptr noundef nonnull %i.am, ptr noundef nonnull %i.am, ptr noundef nonnull %i.as, ptr noundef nonnull %i.ag, i64 noundef %5) #6
  tail call void %i.u(ptr noundef nonnull %i.ap, ptr noundef nonnull %i.ap, ptr noundef nonnull %i.ap, ptr noundef nonnull %i.aj, i64 noundef %11) #6
  tail call void %i.u(ptr noundef nonnull %i.ap, ptr noundef nonnull %i.ap, ptr noundef nonnull %i.as, ptr noundef nonnull %i.aj, i64 noundef %11) #6
  store i64 %5, ptr %i.a, align 16, !tbaa !9
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %11, ptr %i.bh, align 8, !tbaa !9
  %i.bi = tail call i32 @ossl_rsaz_avx512ifma_eligible() #6
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
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !25 ; 39 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr @ossl_extract_multiplier_win5, i64 %i.bm
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !25 ; 2 uses
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
  %i.bx = tail call noalias ptr @CRYPTO_zalloc(i64 noundef %i.bw, ptr noundef nonnull @.str, i32 noundef 425) #6 ; 5 uses
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
  call void %i.bo(ptr noundef nonnull %i.cg, ptr noundef nonnull %i.cf, ptr noundef nonnull %i.am, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !12
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ce ; 18 uses
  call void %i.bo(ptr noundef nonnull %i.cj, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.am, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !12
  %.idx.i = shl nuw nsw i64 %i.ch, 5
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx.i ; 2 uses
  call void %i.bo(ptr noundef nonnull %i.ck, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !12
  %.idx18.i = mul nuw nsw i64 %i.ch, 48
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx18.i
  call void %i.bo(ptr noundef nonnull %i.cl, ptr noundef nonnull %i.ck, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !12
  %.idx19.i = shl nuw nsw i64 %i.ch, 6
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx19.i ; 2 uses
  %.idx20.i = shl nuw nsw i64 %i.ce, 4
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx20.i ; 2 uses
  call void %i.bo(ptr noundef nonnull %i.cm, ptr noundef nonnull %i.cn, ptr noundef nonnull %i.cn, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !12
  %.idx21.i = mul nuw nsw i64 %i.ch, 80
  %i.co = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx21.i
  call void %i.bo(ptr noundef nonnull %i.co, ptr noundef nonnull %i.cm, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !12
  %.idx22.i = mul nuw nsw i64 %i.ch, 96
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx22.i ; 2 uses
  %.idx23.i = mul nuw nsw i64 %i.ce, 24
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx23.i ; 2 uses
  call void %i.bo(ptr noundef nonnull %i.cp, ptr noundef nonnull %i.cq, ptr noundef nonnull %i.cq, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !12
  %.idx24.i = mul nuw nsw i64 %i.ch, 112
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx24.i
  call void %i.bo(ptr noundef nonnull %i.cr, ptr noundef nonnull %i.cp, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !12
  %.idx25.i = shl nuw nsw i64 %i.ch, 7
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx25.i ; 2 uses
  %.idx26.i = shl nuw nsw i64 %i.ce, 5
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx26.i ; 2 uses
  call void %i.bo(ptr noundef nonnull %i.cs, ptr noundef nonnull %i.ct, ptr noundef nonnull %i.ct, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !12
  %.idx27.i = mul nuw nsw i64 %i.ch, 144
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx27.i
  call void %i.bo(ptr noundef nonnull %i.cu, ptr noundef nonnull %i.cs, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !12
  %.idx28.i = mul nuw nsw i64 %i.ch, 160
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx28.i ; 2 uses
  %.idx29.i = mul nuw nsw i64 %i.ce, 40
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx29.i ; 2 uses
  call void %i.bo(ptr noundef nonnull %i.cv, ptr noundef nonnull %i.cw, ptr noundef nonnull %i.cw, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !12
  %.idx30.i = mul nuw nsw i64 %i.ch, 176
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx30.i
  call void %i.bo(ptr noundef nonnull %i.cx, ptr noundef nonnull %i.cv, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !12
  %.idx31.i = mul nuw nsw i64 %i.ch, 192
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx31.i ; 2 uses
  %.idx32.i = mul nuw nsw i64 %i.ce, 48
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx32.i ; 2 uses
  call void %i.bo(ptr noundef nonnull %i.cy, ptr noundef nonnull %i.cz, ptr noundef nonnull %i.cz, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !12
  %.idx33.i = mul nuw nsw i64 %i.ch, 208
  %i.da = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx33.i
  call void %i.bo(ptr noundef nonnull %i.da, ptr noundef nonnull %i.cy, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !12
  %.idx34.i = mul nuw nsw i64 %i.ch, 224
  %i.db = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx34.i ; 2 uses
  %.idx35.i = mul nuw nsw i64 %i.ce, 56
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx35.i ; 2 uses
  call void %i.bo(ptr noundef nonnull %i.db, ptr noundef nonnull %i.dc, ptr noundef nonnull %i.dc, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !12
  %.idx36.i = mul nuw nsw i64 %i.ch, 240
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx36.i
  call void %i.bo(ptr noundef nonnull %i.dd, ptr noundef nonnull %i.db, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !12
  %.idx37.i = shl nuw nsw i64 %i.ch, 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx37.i ; 2 uses
  %.idx38.i = shl nuw nsw i64 %i.ce, 6
  %i.df = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx38.i ; 2 uses
  call void %i.bo(ptr noundef nonnull %i.de, ptr noundef nonnull %i.df, ptr noundef nonnull %i.df, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !12
  %.idx39.i = mul nuw nsw i64 %i.ch, 272
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx39.i
  call void %i.bo(ptr noundef nonnull %i.dg, ptr noundef nonnull %i.de, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !12
  %.idx40.i = mul nuw nsw i64 %i.ch, 288
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx40.i ; 2 uses
  %.idx41.i = mul nuw nsw i64 %i.ce, 72
  %i.di = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx41.i ; 2 uses
  call void %i.bo(ptr noundef nonnull %i.dh, ptr noundef nonnull %i.di, ptr noundef nonnull %i.di, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !12
  %.idx42.i = mul nuw nsw i64 %i.ch, 304
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx42.i
  call void %i.bo(ptr noundef nonnull %i.dj, ptr noundef nonnull %i.dh, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !12
  %.idx43.i = mul nuw nsw i64 %i.ch, 320
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx43.i ; 2 uses
  %.idx44.i = mul nuw nsw i64 %i.ce, 80
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx44.i ; 2 uses
  call void %i.bo(ptr noundef nonnull %i.dk, ptr noundef nonnull %i.dl, ptr noundef nonnull %i.dl, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !12
  %.idx45.i = mul nuw nsw i64 %i.ch, 336
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx45.i
  call void %i.bo(ptr noundef nonnull %i.dm, ptr noundef nonnull %i.dk, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !12
  %.idx46.i = mul nuw nsw i64 %i.ch, 352
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx46.i ; 2 uses
  %.idx47.i = mul nuw nsw i64 %i.ce, 88
  %i.do = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx47.i ; 2 uses
  call void %i.bo(ptr noundef nonnull %i.dn, ptr noundef nonnull %i.do, ptr noundef nonnull %i.do, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !12
  %.idx48.i = mul nuw nsw i64 %i.ch, 368
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx48.i
  call void %i.bo(ptr noundef nonnull %i.dp, ptr noundef nonnull %i.dn, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !12
  %.idx49.i = mul nuw nsw i64 %i.ch, 384
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx49.i ; 2 uses
  %.idx50.i = mul nuw nsw i64 %i.ce, 96
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx50.i ; 2 uses
  call void %i.bo(ptr noundef nonnull %i.dq, ptr noundef nonnull %i.dr, ptr noundef nonnull %i.dr, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !12
  %.idx51.i = mul nuw nsw i64 %i.ch, 400
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx51.i
  call void %i.bo(ptr noundef nonnull %i.ds, ptr noundef nonnull %i.dq, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !12
  %.idx52.i = mul nuw nsw i64 %i.ch, 416
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx52.i ; 2 uses
  %.idx53.i = mul nuw nsw i64 %i.ce, 104
  %i.du = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx53.i ; 2 uses
  call void %i.bo(ptr noundef nonnull %i.dt, ptr noundef nonnull %i.du, ptr noundef nonnull %i.du, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !12
  %.idx54.i = mul nuw nsw i64 %i.ch, 432
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx54.i
  call void %i.bo(ptr noundef nonnull %i.dv, ptr noundef nonnull %i.dt, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !12
  %.idx55.i = mul nuw nsw i64 %i.ch, 448
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx55.i ; 2 uses
  %.idx56.i = mul nuw nsw i64 %i.ce, 112
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx56.i ; 2 uses
  call void %i.bo(ptr noundef nonnull %i.dw, ptr noundef nonnull %i.dx, ptr noundef nonnull %i.dx, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !12
  %.idx57.i = mul nuw nsw i64 %i.ch, 464
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx57.i
  call void %i.bo(ptr noundef nonnull %i.dy, ptr noundef nonnull %i.dw, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !12
  %.idx58.i = mul nuw nsw i64 %i.ch, 480
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx58.i ; 2 uses
  %.idx59.i = mul nuw nsw i64 %i.ce, 120
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx59.i ; 2 uses
  call void %i.bo(ptr noundef nonnull %i.dz, ptr noundef nonnull %i.ea, ptr noundef nonnull %i.ea, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !12
  %.idx60.i = mul nuw nsw i64 %i.ch, 496
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx60.i
  call void %i.bo(ptr noundef nonnull %i.eb, ptr noundef nonnull %i.dz, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !12
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
  call void @OPENSSL_die(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 478) #7
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
  call void %i.bq(ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cg, i32 noundef %i.fb, i32 noundef %i.fc) #6, !inline_history !12
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
  call void %i.bq(ptr noundef nonnull %i.cf, ptr noundef nonnull %i.cg, i32 noundef %i.gk, i32 noundef %i.gm) #6, !inline_history !12
  call void %i.bo(ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !12
  call void %i.bo(ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !12
  call void %i.bo(ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !12
  call void %i.bo(ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !12
  call void %i.bo(ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !12
  call void %i.bo(ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cf, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !12
  %i.gn = icmp samesign ugt i32 %.020712.in.i, 9
  br i1 %i.gn, label %.lr.ph.i, label %bb.m, !llvm.loop !13

bb.m:                                             ; preds = %bb.l
  %i.go = shl nuw nsw i64 %i.ce, 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cf, i8 0, i64 %i.go, i1 false)
  store i64 1, ptr %i.cf, align 8, !tbaa !9
  store i64 1, ptr %i.ci, align 8, !tbaa !9
  call void %i.bo(ptr noundef nonnull %i.am, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cf, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !12
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.bx, i64 noundef %i.bw) #6
  call void @CRYPTO_free(ptr noundef nonnull %i.bx, ptr noundef nonnull @.str, i32 noundef 569) #6
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
  br i1 %i.gu, label %.lr.ph48.i.preheader, label %._crit_edge.i119

.lr.ph48.i.preheader:                             ; preds = %.preheader.i
  %i.gv = add nsw i32 %12, -104                   ; 2 uses
  %i.gw = udiv i32 %i.gv, 104
  %i.gx = and i32 %i.gw, 1
  %lcmp.mod.not.not = icmp eq i32 %i.gx, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph48.i.prol, label %.lr.ph48.i.prol.loopexit

.lr.ph48.i.prol:                                  ; preds = %.lr.ph48.i.preheader
  %i.gy = load i64, ptr %i.am, align 8, !tbaa !9  ; 2 uses
  store i64 %i.gy, ptr %0, align 1
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ha = lshr i64 %i.gy, 48
  %i.hb = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !9
  %i.hd = shl i64 %i.hc, 4
  %i.he = or i64 %i.hd, %i.ha
  store i64 %i.he, ptr %i.gz, align 1
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 13 ; 2 uses
  %i.hg = add nsw i32 %12, -104                   ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  br label %.lr.ph48.i.prol.loopexit

.lr.ph48.i.prol.loopexit:                         ; preds = %.lr.ph48.i.prol, %.lr.ph48.i.preheader
  %.047.i.unr = phi i32 [ %12, %.lr.ph48.i.preheader ], [ %i.hg, %.lr.ph48.i.prol ]
  %.03046.i.unr = phi ptr [ %0, %.lr.ph48.i.preheader ], [ %i.hf, %.lr.ph48.i.prol ]
  %.03245.i.unr = phi ptr [ %i.am, %.lr.ph48.i.preheader ], [ %i.hh, %.lr.ph48.i.prol ]
  %.lcssa224.unr = phi ptr [ poison, %.lr.ph48.i.preheader ], [ %i.hf, %.lr.ph48.i.prol ]
  %.lcssa223.unr = phi i32 [ poison, %.lr.ph48.i.preheader ], [ %i.hg, %.lr.ph48.i.prol ]
  %.lcssa222.unr = phi ptr [ poison, %.lr.ph48.i.preheader ], [ %i.hh, %.lr.ph48.i.prol ]
  %i.hi = icmp ult i32 %i.gv, 104
  br i1 %i.hi, label %._crit_edge.i119, label %.lr.ph48.i

.lr.ph48.i:                                       ; preds = %.lr.ph48.i.prol.loopexit, %.lr.ph48.i
  %.047.i = phi i32 [ %i.ia, %.lr.ph48.i ], [ %.047.i.unr, %.lr.ph48.i.prol.loopexit ] ; 2 uses
  %.03046.i = phi ptr [ %i.hz, %.lr.ph48.i ], [ %.03046.i.unr, %.lr.ph48.i.prol.loopexit ] ; 5 uses
  %.03245.i = phi ptr [ %i.ib, %.lr.ph48.i ], [ %.03245.i.unr, %.lr.ph48.i.prol.loopexit ] ; 5 uses
  %i.hj = load i64, ptr %.03245.i, align 8, !tbaa !9 ; 2 uses
  store i64 %i.hj, ptr %.03046.i, align 1
  %i.hk = getelementptr inbounds nuw i8, ptr %.03046.i, i64 6
  %i.hl = lshr i64 %i.hj, 48
  %i.hm = getelementptr inbounds nuw i8, ptr %.03245.i, i64 8
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !9
  %i.ho = shl i64 %i.hn, 4
  %i.hp = or i64 %i.ho, %i.hl
  store i64 %i.hp, ptr %i.hk, align 1
  %i.hq = getelementptr inbounds nuw i8, ptr %.03046.i, i64 13
  %i.hr = getelementptr inbounds nuw i8, ptr %.03245.i, i64 16
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !9  ; 2 uses
  store i64 %i.hs, ptr %i.hq, align 1
  %i.ht = getelementptr inbounds nuw i8, ptr %.03046.i, i64 19
  %i.hu = lshr i64 %i.hs, 48
  %i.hv = getelementptr inbounds nuw i8, ptr %.03245.i, i64 24
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !9
  %i.hx = shl i64 %i.hw, 4
  %i.hy = or i64 %i.hx, %i.hu
  store i64 %i.hy, ptr %i.ht, align 1
  %i.hz = getelementptr inbounds nuw i8, ptr %.03046.i, i64 26 ; 2 uses
  %i.ia = add nsw i32 %.047.i, -208               ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.03245.i, i64 32 ; 2 uses
  %i.ic = icmp sgt i32 %.047.i, 311
  br i1 %i.ic, label %.lr.ph48.i, label %._crit_edge.i119, !llvm.loop !14

._crit_edge.i119:                                 ; preds = %.lr.ph48.i.prol.loopexit, %.lr.ph48.i, %.preheader.i
  %.032.lcssa.i = phi ptr [ %i.am, %.preheader.i ], [ %.lcssa222.unr, %.lr.ph48.i.prol.loopexit ], [ %i.ib, %.lr.ph48.i ] ; 3 uses
  %.030.lcssa.i = phi ptr [ %0, %.preheader.i ], [ %.lcssa224.unr, %.lr.ph48.i.prol.loopexit ], [ %i.hz, %.lr.ph48.i ] ; 9 uses
  %.0.lcssa.i = phi i32 [ %12, %.preheader.i ], [ %.lcssa223.unr, %.lr.ph48.i.prol.loopexit ], [ %i.ia, %.lr.ph48.i ] ; 4 uses
  %i.id = icmp sgt i32 %.0.lcssa.i, 52
  br i1 %i.id, label %.lr.ph.i.i, label %bb.n

.lr.ph.i.i:                                       ; preds = %._crit_edge.i119
  %i.ie = load i64, ptr %.032.lcssa.i, align 8, !tbaa !9 ; 7 uses
  %i.if = trunc i64 %i.ie to i8
  %i.ig = getelementptr inbounds nuw i8, ptr %.030.lcssa.i, i64 1
  store i8 %i.if, ptr %.030.lcssa.i, align 1, !tbaa !11
  %i.ih = lshr i64 %i.ie, 8
  %i.ii = trunc i64 %i.ih to i8
  %i.ij = getelementptr inbounds nuw i8, ptr %.030.lcssa.i, i64 2
  store i8 %i.ii, ptr %i.ig, align 1, !tbaa !11
  %i.ik = lshr i64 %i.ie, 16
  %i.il = trunc i64 %i.ik to i8
  %i.im = getelementptr inbounds nuw i8, ptr %.030.lcssa.i, i64 3
  store i8 %i.il, ptr %i.ij, align 1, !tbaa !11
  %i.in = lshr i64 %i.ie, 24
  %i.io = trunc i64 %i.in to i8
  %i.ip = getelementptr inbounds nuw i8, ptr %.030.lcssa.i, i64 4
  store i8 %i.io, ptr %i.im, align 1, !tbaa !11
  %i.iq = lshr i64 %i.ie, 32
  %i.ir = trunc i64 %i.iq to i8
  %i.is = getelementptr inbounds nuw i8, ptr %.030.lcssa.i, i64 5
  store i8 %i.ir, ptr %i.ip, align 1, !tbaa !11
  %i.it = lshr i64 %i.ie, 40
  %i.iu = trunc i64 %i.it to i8
  %i.iv = getelementptr inbounds nuw i8, ptr %.030.lcssa.i, i64 6 ; 3 uses
  store i8 %i.iu, ptr %i.is, align 1, !tbaa !11
  %i.iw = lshr i64 %i.ie, 48                      ; 2 uses
  %i.ix = trunc i64 %i.iw to i8
  store i8 %i.ix, ptr %i.iv, align 1, !tbaa !11
  %i.iy = add nsw i32 %.0.lcssa.i, -45
  %i.iz = lshr i32 %i.iy, 3                       ; 4 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.032.lcssa.i, i64 8
  %i.jb = load i64, ptr %i.ja, align 8, !tbaa !9
  %i.jc = shl i64 %i.jb, 4
  %i.jd = or i64 %i.jc, %i.iw                     ; 2 uses
  %i.je = add nsw i32 %i.iz, -1
  %xtraiter227 = and i32 %i.iz, 7                 ; 2 uses
  %lcmp.mod228.not = icmp eq i32 %xtraiter227, 0
  br i1 %lcmp.mod228.not, label %.lr.ph.i33.i.prol.loopexit, label %.lr.ph.i33.i.prol

.lr.ph.i33.i.prol:                                ; preds = %.lr.ph.i.i, %.lr.ph.i33.i.prol
  %.08.i34.i.prol = phi i64 [ %i.jh, %.lr.ph.i33.i.prol ], [ %i.jd, %.lr.ph.i.i ] ; 2 uses
  %.047.i35.i.prol = phi i32 [ %i.ji, %.lr.ph.i33.i.prol ], [ %i.iz, %.lr.ph.i.i ]
  %.056.i36.i.prol = phi ptr [ %i.jg, %.lr.ph.i33.i.prol ], [ %i.iv, %.lr.ph.i.i ] ; 2 uses
  %prol.iter229 = phi i32 [ %prol.iter229.next, %.lr.ph.i33.i.prol ], [ 0, %.lr.ph.i.i ]
  %i.jf = trunc i64 %.08.i34.i.prol to i8
  %i.jg = getelementptr inbounds nuw i8, ptr %.056.i36.i.prol, i64 1 ; 2 uses
  store i8 %i.jf, ptr %.056.i36.i.prol, align 1, !tbaa !11
  %i.jh = lshr i64 %.08.i34.i.prol, 8             ; 2 uses
  %i.ji = add nsw i32 %.047.i35.i.prol, -1        ; 2 uses
  %prol.iter229.next = add i32 %prol.iter229, 1   ; 2 uses
  %prol.iter229.cmp.not = icmp eq i32 %prol.iter229.next, %xtraiter227
  br i1 %prol.iter229.cmp.not, label %.lr.ph.i33.i.prol.loopexit, label %.lr.ph.i33.i.prol, !llvm.loop !15

.lr.ph.i33.i.prol.loopexit:                       ; preds = %.lr.ph.i33.i.prol, %.lr.ph.i.i
  %.08.i34.i.unr = phi i64 [ %i.jd, %.lr.ph.i.i ], [ %i.jh, %.lr.ph.i33.i.prol ]
  %.047.i35.i.unr = phi i32 [ %i.iz, %.lr.ph.i.i ], [ %i.ji, %.lr.ph.i33.i.prol ]
  %.056.i36.i.unr = phi ptr [ %i.iv, %.lr.ph.i.i ], [ %i.jg, %.lr.ph.i33.i.prol ]
  %i.jj = icmp ult i32 %i.je, 7
  br i1 %i.jj, label %from_words52.exit, label %.lr.ph.i33.i

.lr.ph.i33.i:                                     ; preds = %.lr.ph.i33.i.prol.loopexit, %.lr.ph.i33.i
  %.08.i34.i = phi i64 [ 0, %.lr.ph.i33.i ], [ %.08.i34.i.unr, %.lr.ph.i33.i.prol.loopexit ] ; 8 uses
  %.047.i35.i = phi i32 [ %i.kh, %.lr.ph.i33.i ], [ %.047.i35.i.unr, %.lr.ph.i33.i.prol.loopexit ] ; 2 uses
  %.056.i36.i = phi ptr [ %i.kg, %.lr.ph.i33.i ], [ %.056.i36.i.unr, %.lr.ph.i33.i.prol.loopexit ] ; 9 uses
  %i.jk = trunc i64 %.08.i34.i to i8
  %i.jl = getelementptr inbounds nuw i8, ptr %.056.i36.i, i64 1
  store i8 %i.jk, ptr %.056.i36.i, align 1, !tbaa !11
  %i.jm = lshr i64 %.08.i34.i, 8
  %i.jn = trunc i64 %i.jm to i8
  %i.jo = getelementptr inbounds nuw i8, ptr %.056.i36.i, i64 2
  store i8 %i.jn, ptr %i.jl, align 1, !tbaa !11
  %i.jp = lshr i64 %.08.i34.i, 16
  %i.jq = trunc i64 %i.jp to i8
  %i.jr = getelementptr inbounds nuw i8, ptr %.056.i36.i, i64 3
  store i8 %i.jq, ptr %i.jo, align 1, !tbaa !11
  %i.js = lshr i64 %.08.i34.i, 24
  %i.jt = trunc i64 %i.js to i8
  %i.ju = getelementptr inbounds nuw i8, ptr %.056.i36.i, i64 4
  store i8 %i.jt, ptr %i.jr, align 1, !tbaa !11
  %i.jv = lshr i64 %.08.i34.i, 32
  %i.jw = trunc i64 %i.jv to i8
  %i.jx = getelementptr inbounds nuw i8, ptr %.056.i36.i, i64 5
  store i8 %i.jw, ptr %i.ju, align 1, !tbaa !11
  %i.jy = lshr i64 %.08.i34.i, 40
  %i.jz = trunc i64 %i.jy to i8
  %i.ka = getelementptr inbounds nuw i8, ptr %.056.i36.i, i64 6
  store i8 %i.jz, ptr %i.jx, align 1, !tbaa !11
  %i.kb = lshr i64 %.08.i34.i, 48
  %i.kc = trunc i64 %i.kb to i8
  %i.kd = getelementptr inbounds nuw i8, ptr %.056.i36.i, i64 7
  store i8 %i.kc, ptr %i.ka, align 1, !tbaa !11
  %i.ke = lshr i64 %.08.i34.i, 56
  %i.kf = trunc nuw i64 %i.ke to i8
  %i.kg = getelementptr inbounds nuw i8, ptr %.056.i36.i, i64 8
  store i8 %i.kf, ptr %i.kd, align 1, !tbaa !11
  %i.kh = add nsw i32 %.047.i35.i, -8
  %i.ki = icmp sgt i32 %.047.i35.i, 8
  br i1 %i.ki, label %.lr.ph.i33.i, label %from_words52.exit, !llvm.loop !16

bb.n:                                             ; preds = %._crit_edge.i119
  %.not.i120 = icmp eq i32 %.0.lcssa.i, 0
  br i1 %.not.i120, label %from_words52.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.kj = add nsw i32 %.0.lcssa.i, 7
  %i.kk = ashr i32 %i.kj, 3                       ; 5 uses
  %i.kl = icmp sgt i32 %i.kk, 0
  br i1 %i.kl, label %.lr.ph.i38.preheader.i, label %from_words52.exit

.lr.ph.i38.preheader.i:                           ; preds = %bb.o
  %i.km = load i64, ptr %.032.lcssa.i, align 8, !tbaa !9 ; 2 uses
  %xtraiter225 = and i32 %i.kk, 7                 ; 2 uses
  %lcmp.mod226.not = icmp eq i32 %xtraiter225, 0
  br i1 %lcmp.mod226.not, label %.lr.ph.i38.i.prol.loopexit, label %.lr.ph.i38.i.prol

.lr.ph.i38.i.prol:                                ; preds = %.lr.ph.i38.preheader.i, %.lr.ph.i38.i.prol
  %.08.i39.i.prol = phi i64 [ %i.kp, %.lr.ph.i38.i.prol ], [ %i.km, %.lr.ph.i38.preheader.i ] ; 2 uses
  %.047.i40.i.prol = phi i32 [ %i.kq, %.lr.ph.i38.i.prol ], [ %i.kk, %.lr.ph.i38.preheader.i ]
  %.056.i41.i.prol = phi ptr [ %i.ko, %.lr.ph.i38.i.prol ], [ %.030.lcssa.i, %.lr.ph.i38.preheader.i ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i38.i.prol ], [ 0, %.lr.ph.i38.preheader.i ]
  %i.kn = trunc i64 %.08.i39.i.prol to i8
  %i.ko = getelementptr inbounds nuw i8, ptr %.056.i41.i.prol, i64 1 ; 2 uses
  store i8 %i.kn, ptr %.056.i41.i.prol, align 1, !tbaa !11
  %i.kp = lshr i64 %.08.i39.i.prol, 8             ; 2 uses
  %i.kq = add nsw i32 %.047.i40.i.prol, -1        ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter225
  br i1 %prol.iter.cmp.not, label %.lr.ph.i38.i.prol.loopexit, label %.lr.ph.i38.i.prol, !llvm.loop !17

.lr.ph.i38.i.prol.loopexit:                       ; preds = %.lr.ph.i38.i.prol, %.lr.ph.i38.preheader.i
  %.08.i39.i.unr = phi i64 [ %i.km, %.lr.ph.i38.preheader.i ], [ %i.kp, %.lr.ph.i38.i.prol ]
  %.047.i40.i.unr = phi i32 [ %i.kk, %.lr.ph.i38.preheader.i ], [ %i.kq, %.lr.ph.i38.i.prol ]
  %.056.i41.i.unr = phi ptr [ %.030.lcssa.i, %.lr.ph.i38.preheader.i ], [ %i.ko, %.lr.ph.i38.i.prol ]
  %i.kr = icmp ult i32 %i.kk, 8
  br i1 %i.kr, label %from_words52.exit, label %.lr.ph.i38.i

.lr.ph.i38.i:                                     ; preds = %.lr.ph.i38.i.prol.loopexit, %.lr.ph.i38.i
  %.08.i39.i = phi i64 [ 0, %.lr.ph.i38.i ], [ %.08.i39.i.unr, %.lr.ph.i38.i.prol.loopexit ] ; 8 uses
  %.047.i40.i = phi i32 [ %i.lp, %.lr.ph.i38.i ], [ %.047.i40.i.unr, %.lr.ph.i38.i.prol.loopexit ] ; 2 uses
  %.056.i41.i = phi ptr [ %i.lo, %.lr.ph.i38.i ], [ %.056.i41.i.unr, %.lr.ph.i38.i.prol.loopexit ] ; 9 uses
  %i.ks = trunc i64 %.08.i39.i to i8
  %i.kt = getelementptr inbounds nuw i8, ptr %.056.i41.i, i64 1
  store i8 %i.ks, ptr %.056.i41.i, align 1, !tbaa !11
  %i.ku = lshr i64 %.08.i39.i, 8
  %i.kv = trunc i64 %i.ku to i8
  %i.kw = getelementptr inbounds nuw i8, ptr %.056.i41.i, i64 2
  store i8 %i.kv, ptr %i.kt, align 1, !tbaa !11
  %i.kx = lshr i64 %.08.i39.i, 16
  %i.ky = trunc i64 %i.kx to i8
  %i.kz = getelementptr inbounds nuw i8, ptr %.056.i41.i, i64 3
  store i8 %i.ky, ptr %i.kw, align 1, !tbaa !11
  %i.la = lshr i64 %.08.i39.i, 24
  %i.lb = trunc i64 %i.la to i8
  %i.lc = getelementptr inbounds nuw i8, ptr %.056.i41.i, i64 4
  store i8 %i.lb, ptr %i.kz, align 1, !tbaa !11
  %i.ld = lshr i64 %.08.i39.i, 32
  %i.le = trunc i64 %i.ld to i8
  %i.lf = getelementptr inbounds nuw i8, ptr %.056.i41.i, i64 5
  store i8 %i.le, ptr %i.lc, align 1, !tbaa !11
  %i.lg = lshr i64 %.08.i39.i, 40
  %i.lh = trunc i64 %i.lg to i8
  %i.li = getelementptr inbounds nuw i8, ptr %.056.i41.i, i64 6
  store i8 %i.lh, ptr %i.lf, align 1, !tbaa !11
  %i.lj = lshr i64 %.08.i39.i, 48
  %i.lk = trunc i64 %i.lj to i8
  %i.ll = getelementptr inbounds nuw i8, ptr %.056.i41.i, i64 7
  store i8 %i.lk, ptr %i.li, align 1, !tbaa !11
  %i.lm = lshr i64 %.08.i39.i, 56
  %i.ln = trunc nuw i64 %i.lm to i8
  %i.lo = getelementptr inbounds nuw i8, ptr %.056.i41.i, i64 8
  store i8 %i.ln, ptr %i.ll, align 1, !tbaa !11
  %i.lp = add nsw i32 %.047.i40.i, -8
  %i.lq = icmp sgt i32 %.047.i40.i, 8
  br i1 %i.lq, label %.lr.ph.i38.i, label %from_words52.exit, !llvm.loop !16

from_words52.exit:                                ; preds = %.lr.ph.i38.i.prol.loopexit, %.lr.ph.i38.i, %.lr.ph.i33.i.prol.loopexit, %.lr.ph.i33.i, %bb.n, %bb.o
  br i1 %i.gr, label %.lr.ph.preheader.i142, label %.preheader.i122

.lr.ph.preheader.i142:                            ; preds = %from_words52.exit
  %i.lr = zext nneg i32 %i.gq to i64
  %i.ls = shl nuw nsw i64 %i.lr, 3
  call void @llvm.memset.p0.i64(ptr align 8 %6, i8 0, i64 %i.ls, i1 false), !tbaa !9
  br label %.preheader.i122

.preheader.i122:                                  ; preds = %.lr.ph.preheader.i142, %from_words52.exit
  br i1 %i.gu, label %.lr.ph48.i138.preheader, label %._crit_edge.i123

.lr.ph48.i138.preheader:                          ; preds = %.preheader.i122
  %i.lt = add nsw i32 %12, -104                   ; 2 uses
  %i.lu = udiv i32 %i.lt, 104
  %i.lv = and i32 %i.lu, 1
  %lcmp.mod231.not.not = icmp eq i32 %i.lv, 0
  br i1 %lcmp.mod231.not.not, label %.lr.ph48.i138.prol, label %.lr.ph48.i138.prol.loopexit

.lr.ph48.i138.prol:                               ; preds = %.lr.ph48.i138.preheader
  %i.lw = load i64, ptr %i.ap, align 8, !tbaa !9  ; 2 uses
  store i64 %i.lw, ptr %6, align 1
  %i.lx = getelementptr inbounds nuw i8, ptr %6, i64 6
  %i.ly = lshr i64 %i.lw, 48
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ma = load i64, ptr %i.lz, align 8, !tbaa !9
  %i.mb = shl i64 %i.ma, 4
  %i.mc = or i64 %i.mb, %i.ly
  store i64 %i.mc, ptr %i.lx, align 1
  %i.md = getelementptr inbounds nuw i8, ptr %6, i64 13 ; 2 uses
  %i.me = add nsw i32 %12, -104                   ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  br label %.lr.ph48.i138.prol.loopexit

.lr.ph48.i138.prol.loopexit:                      ; preds = %.lr.ph48.i138.prol, %.lr.ph48.i138.preheader
  %.047.i139.unr = phi i32 [ %12, %.lr.ph48.i138.preheader ], [ %i.me, %.lr.ph48.i138.prol ]
  %.03046.i140.unr = phi ptr [ %6, %.lr.ph48.i138.preheader ], [ %i.md, %.lr.ph48.i138.prol ]
  %.03245.i141.unr = phi ptr [ %i.ap, %.lr.ph48.i138.preheader ], [ %i.mf, %.lr.ph48.i138.prol ]
  %.lcssa220.unr = phi ptr [ poison, %.lr.ph48.i138.preheader ], [ %i.md, %.lr.ph48.i138.prol ]
  %.lcssa219.unr = phi i32 [ poison, %.lr.ph48.i138.preheader ], [ %i.me, %.lr.ph48.i138.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph48.i138.preheader ], [ %i.mf, %.lr.ph48.i138.prol ]
  %i.mg = icmp ult i32 %i.lt, 104
  br i1 %i.mg, label %._crit_edge.i123, label %.lr.ph48.i138

.lr.ph48.i138:                                    ; preds = %.lr.ph48.i138.prol.loopexit, %.lr.ph48.i138
  %.047.i139 = phi i32 [ %i.my, %.lr.ph48.i138 ], [ %.047.i139.unr, %.lr.ph48.i138.prol.loopexit ] ; 2 uses
  %.03046.i140 = phi ptr [ %i.mx, %.lr.ph48.i138 ], [ %.03046.i140.unr, %.lr.ph48.i138.prol.loopexit ] ; 5 uses
  %.03245.i141 = phi ptr [ %i.mz, %.lr.ph48.i138 ], [ %.03245.i141.unr, %.lr.ph48.i138.prol.loopexit ] ; 5 uses
  %i.mh = load i64, ptr %.03245.i141, align 8, !tbaa !9 ; 2 uses
  store i64 %i.mh, ptr %.03046.i140, align 1
  %i.mi = getelementptr inbounds nuw i8, ptr %.03046.i140, i64 6
  %i.mj = lshr i64 %i.mh, 48
  %i.mk = getelementptr inbounds nuw i8, ptr %.03245.i141, i64 8
  %i.ml = load i64, ptr %i.mk, align 8, !tbaa !9
  %i.mm = shl i64 %i.ml, 4
  %i.mn = or i64 %i.mm, %i.mj
  store i64 %i.mn, ptr %i.mi, align 1
  %i.mo = getelementptr inbounds nuw i8, ptr %.03046.i140, i64 13
  %i.mp = getelementptr inbounds nuw i8, ptr %.03245.i141, i64 16
  %i.mq = load i64, ptr %i.mp, align 8, !tbaa !9  ; 2 uses
  store i64 %i.mq, ptr %i.mo, align 1
  %i.mr = getelementptr inbounds nuw i8, ptr %.03046.i140, i64 19
  %i.ms = lshr i64 %i.mq, 48
  %i.mt = getelementptr inbounds nuw i8, ptr %.03245.i141, i64 24
  %i.mu = load i64, ptr %i.mt, align 8, !tbaa !9
  %i.mv = shl i64 %i.mu, 4
  %i.mw = or i64 %i.mv, %i.ms
  store i64 %i.mw, ptr %i.mr, align 1
  %i.mx = getelementptr inbounds nuw i8, ptr %.03046.i140, i64 26 ; 2 uses
  %i.my = add nsw i32 %.047.i139, -208            ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %.03245.i141, i64 32 ; 2 uses
  %i.na = icmp sgt i32 %.047.i139, 311
  br i1 %i.na, label %.lr.ph48.i138, label %._crit_edge.i123, !llvm.loop !14

._crit_edge.i123:                                 ; preds = %.lr.ph48.i138.prol.loopexit, %.lr.ph48.i138, %.preheader.i122
  %.032.lcssa.i124 = phi ptr [ %i.ap, %.preheader.i122 ], [ %.lcssa.unr, %.lr.ph48.i138.prol.loopexit ], [ %i.mz, %.lr.ph48.i138 ] ; 3 uses
  %.030.lcssa.i125 = phi ptr [ %6, %.preheader.i122 ], [ %.lcssa220.unr, %.lr.ph48.i138.prol.loopexit ], [ %i.mx, %.lr.ph48.i138 ] ; 9 uses
  %.0.lcssa.i126 = phi i32 [ %12, %.preheader.i122 ], [ %.lcssa219.unr, %.lr.ph48.i138.prol.loopexit ], [ %i.my, %.lr.ph48.i138 ] ; 4 uses
  %i.nb = icmp sgt i32 %.0.lcssa.i126, 52
  br i1 %i.nb, label %.lr.ph.i.i133, label %bb.p

.lr.ph.i.i133:                                    ; preds = %._crit_edge.i123
  %i.nc = load i64, ptr %.032.lcssa.i124, align 8, !tbaa !9 ; 7 uses
  %i.nd = trunc i64 %i.nc to i8
  %i.ne = getelementptr inbounds nuw i8, ptr %.030.lcssa.i125, i64 1
  store i8 %i.nd, ptr %.030.lcssa.i125, align 1, !tbaa !11
  %i.nf = lshr i64 %i.nc, 8
  %i.ng = trunc i64 %i.nf to i8
  %i.nh = getelementptr inbounds nuw i8, ptr %.030.lcssa.i125, i64 2
  store i8 %i.ng, ptr %i.ne, align 1, !tbaa !11
  %i.ni = lshr i64 %i.nc, 16
  %i.nj = trunc i64 %i.ni to i8
  %i.nk = getelementptr inbounds nuw i8, ptr %.030.lcssa.i125, i64 3
  store i8 %i.nj, ptr %i.nh, align 1, !tbaa !11
  %i.nl = lshr i64 %i.nc, 24
  %i.nm = trunc i64 %i.nl to i8
  %i.nn = getelementptr inbounds nuw i8, ptr %.030.lcssa.i125, i64 4
  store i8 %i.nm, ptr %i.nk, align 1, !tbaa !11
  %i.no = lshr i64 %i.nc, 32
  %i.np = trunc i64 %i.no to i8
  %i.nq = getelementptr inbounds nuw i8, ptr %.030.lcssa.i125, i64 5
  store i8 %i.np, ptr %i.nn, align 1, !tbaa !11
  %i.nr = lshr i64 %i.nc, 40
  %i.ns = trunc i64 %i.nr to i8
  %i.nt = getelementptr inbounds nuw i8, ptr %.030.lcssa.i125, i64 6 ; 3 uses
  store i8 %i.ns, ptr %i.nq, align 1, !tbaa !11
  %i.nu = lshr i64 %i.nc, 48                      ; 2 uses
  %i.nv = trunc i64 %i.nu to i8
  store i8 %i.nv, ptr %i.nt, align 1, !tbaa !11
  %i.nw = add nsw i32 %.0.lcssa.i126, -45
  %i.nx = lshr i32 %i.nw, 3                       ; 4 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %.032.lcssa.i124, i64 8
  %i.nz = load i64, ptr %i.ny, align 8, !tbaa !9
  %i.oa = shl i64 %i.nz, 4
  %i.ob = or i64 %i.oa, %i.nu                     ; 2 uses
  %i.oc = add nsw i32 %i.nx, -1
  %xtraiter236 = and i32 %i.nx, 7                 ; 2 uses
  %lcmp.mod237.not = icmp eq i32 %xtraiter236, 0
  br i1 %lcmp.mod237.not, label %.lr.ph.i33.i134.prol.loopexit, label %.lr.ph.i33.i134.prol

.lr.ph.i33.i134.prol:                             ; preds = %.lr.ph.i.i133, %.lr.ph.i33.i134.prol
  %.08.i34.i135.prol = phi i64 [ %i.of, %.lr.ph.i33.i134.prol ], [ %i.ob, %.lr.ph.i.i133 ] ; 2 uses
  %.047.i35.i136.prol = phi i32 [ %i.og, %.lr.ph.i33.i134.prol ], [ %i.nx, %.lr.ph.i.i133 ]
  %.056.i36.i137.prol = phi ptr [ %i.oe, %.lr.ph.i33.i134.prol ], [ %i.nt, %.lr.ph.i.i133 ] ; 2 uses
  %prol.iter238 = phi i32 [ %prol.iter238.next, %.lr.ph.i33.i134.prol ], [ 0, %.lr.ph.i.i133 ]
  %i.od = trunc i64 %.08.i34.i135.prol to i8
  %i.oe = getelementptr inbounds nuw i8, ptr %.056.i36.i137.prol, i64 1 ; 2 uses
  store i8 %i.od, ptr %.056.i36.i137.prol, align 1, !tbaa !11
  %i.of = lshr i64 %.08.i34.i135.prol, 8          ; 2 uses
  %i.og = add nsw i32 %.047.i35.i136.prol, -1     ; 2 uses
  %prol.iter238.next = add i32 %prol.iter238, 1   ; 2 uses
  %prol.iter238.cmp.not = icmp eq i32 %prol.iter238.next, %xtraiter236
  br i1 %prol.iter238.cmp.not, label %.lr.ph.i33.i134.prol.loopexit, label %.lr.ph.i33.i134.prol, !llvm.loop !18

.lr.ph.i33.i134.prol.loopexit:                    ; preds = %.lr.ph.i33.i134.prol, %.lr.ph.i.i133
  %.08.i34.i135.unr = phi i64 [ %i.ob, %.lr.ph.i.i133 ], [ %i.of, %.lr.ph.i33.i134.prol ]
  %.047.i35.i136.unr = phi i32 [ %i.nx, %.lr.ph.i.i133 ], [ %i.og, %.lr.ph.i33.i134.prol ]
  %.056.i36.i137.unr = phi ptr [ %i.nt, %.lr.ph.i.i133 ], [ %i.oe, %.lr.ph.i33.i134.prol ]
  %i.oh = icmp ult i32 %i.oc, 7
  br i1 %i.oh, label %from_words52.exit143, label %.lr.ph.i33.i134

.lr.ph.i33.i134:                                  ; preds = %.lr.ph.i33.i134.prol.loopexit, %.lr.ph.i33.i134
  %.08.i34.i135 = phi i64 [ 0, %.lr.ph.i33.i134 ], [ %.08.i34.i135.unr, %.lr.ph.i33.i134.prol.loopexit ] ; 8 uses
  %.047.i35.i136 = phi i32 [ %i.pf, %.lr.ph.i33.i134 ], [ %.047.i35.i136.unr, %.lr.ph.i33.i134.prol.loopexit ] ; 2 uses
  %.056.i36.i137 = phi ptr [ %i.pe, %.lr.ph.i33.i134 ], [ %.056.i36.i137.unr, %.lr.ph.i33.i134.prol.loopexit ] ; 9 uses
  %i.oi = trunc i64 %.08.i34.i135 to i8
  %i.oj = getelementptr inbounds nuw i8, ptr %.056.i36.i137, i64 1
  store i8 %i.oi, ptr %.056.i36.i137, align 1, !tbaa !11
  %i.ok = lshr i64 %.08.i34.i135, 8
  %i.ol = trunc i64 %i.ok to i8
  %i.om = getelementptr inbounds nuw i8, ptr %.056.i36.i137, i64 2
  store i8 %i.ol, ptr %i.oj, align 1, !tbaa !11
  %i.on = lshr i64 %.08.i34.i135, 16
  %i.oo = trunc i64 %i.on to i8
  %i.op = getelementptr inbounds nuw i8, ptr %.056.i36.i137, i64 3
  store i8 %i.oo, ptr %i.om, align 1, !tbaa !11
  %i.oq = lshr i64 %.08.i34.i135, 24
  %i.or = trunc i64 %i.oq to i8
  %i.os = getelementptr inbounds nuw i8, ptr %.056.i36.i137, i64 4
  store i8 %i.or, ptr %i.op, align 1, !tbaa !11
  %i.ot = lshr i64 %.08.i34.i135, 32
  %i.ou = trunc i64 %i.ot to i8
  %i.ov = getelementptr inbounds nuw i8, ptr %.056.i36.i137, i64 5
  store i8 %i.ou, ptr %i.os, align 1, !tbaa !11
  %i.ow = lshr i64 %.08.i34.i135, 40
  %i.ox = trunc i64 %i.ow to i8
  %i.oy = getelementptr inbounds nuw i8, ptr %.056.i36.i137, i64 6
  store i8 %i.ox, ptr %i.ov, align 1, !tbaa !11
  %i.oz = lshr i64 %.08.i34.i135, 48
  %i.pa = trunc i64 %i.oz to i8
  %i.pb = getelementptr inbounds nuw i8, ptr %.056.i36.i137, i64 7
  store i8 %i.pa, ptr %i.oy, align 1, !tbaa !11
  %i.pc = lshr i64 %.08.i34.i135, 56
  %i.pd = trunc nuw i64 %i.pc to i8
  %i.pe = getelementptr inbounds nuw i8, ptr %.056.i36.i137, i64 8
  store i8 %i.pd, ptr %i.pb, align 1, !tbaa !11
  %i.pf = add nsw i32 %.047.i35.i136, -8
  %i.pg = icmp sgt i32 %.047.i35.i136, 8
  br i1 %i.pg, label %.lr.ph.i33.i134, label %from_words52.exit143, !llvm.loop !16

bb.p:                                             ; preds = %._crit_edge.i123
  %.not.i127 = icmp eq i32 %.0.lcssa.i126, 0
  br i1 %.not.i127, label %from_words52.exit143, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ph = add nsw i32 %.0.lcssa.i126, 7
  %i.pi = ashr i32 %i.ph, 3                       ; 5 uses
  %i.pj = icmp sgt i32 %i.pi, 0
  br i1 %i.pj, label %.lr.ph.i38.preheader.i128, label %from_words52.exit143

.lr.ph.i38.preheader.i128:                        ; preds = %bb.q
  %i.pk = load i64, ptr %.032.lcssa.i124, align 8, !tbaa !9 ; 2 uses
  %xtraiter233 = and i32 %i.pi, 7                 ; 2 uses
  %lcmp.mod234.not = icmp eq i32 %xtraiter233, 0
  br i1 %lcmp.mod234.not, label %.lr.ph.i38.i129.prol.loopexit, label %.lr.ph.i38.i129.prol

.lr.ph.i38.i129.prol:                             ; preds = %.lr.ph.i38.preheader.i128, %.lr.ph.i38.i129.prol
  %.08.i39.i130.prol = phi i64 [ %i.pn, %.lr.ph.i38.i129.prol ], [ %i.pk, %.lr.ph.i38.preheader.i128 ] ; 2 uses
  %.047.i40.i131.prol = phi i32 [ %i.po, %.lr.ph.i38.i129.prol ], [ %i.pi, %.lr.ph.i38.preheader.i128 ]
  %.056.i41.i132.prol = phi ptr [ %i.pm, %.lr.ph.i38.i129.prol ], [ %.030.lcssa.i125, %.lr.ph.i38.preheader.i128 ] ; 2 uses
  %prol.iter235 = phi i32 [ %prol.iter235.next, %.lr.ph.i38.i129.prol ], [ 0, %.lr.ph.i38.preheader.i128 ]
  %i.pl = trunc i64 %.08.i39.i130.prol to i8
  %i.pm = getelementptr inbounds nuw i8, ptr %.056.i41.i132.prol, i64 1 ; 2 uses
  store i8 %i.pl, ptr %.056.i41.i132.prol, align 1, !tbaa !11
  %i.pn = lshr i64 %.08.i39.i130.prol, 8          ; 2 uses
  %i.po = add nsw i32 %.047.i40.i131.prol, -1     ; 2 uses
  %prol.iter235.next = add i32 %prol.iter235, 1   ; 2 uses
  %prol.iter235.cmp.not = icmp eq i32 %prol.iter235.next, %xtraiter233
  br i1 %prol.iter235.cmp.not, label %.lr.ph.i38.i129.prol.loopexit, label %.lr.ph.i38.i129.prol, !llvm.loop !19

.lr.ph.i38.i129.prol.loopexit:                    ; preds = %.lr.ph.i38.i129.prol, %.lr.ph.i38.preheader.i128
  %.08.i39.i130.unr = phi i64 [ %i.pk, %.lr.ph.i38.preheader.i128 ], [ %i.pn, %.lr.ph.i38.i129.prol ]
  %.047.i40.i131.unr = phi i32 [ %i.pi, %.lr.ph.i38.preheader.i128 ], [ %i.po, %.lr.ph.i38.i129.prol ]
  %.056.i41.i132.unr = phi ptr [ %.030.lcssa.i125, %.lr.ph.i38.preheader.i128 ], [ %i.pm, %.lr.ph.i38.i129.prol ]
  %i.pp = icmp ult i32 %i.pi, 8
  br i1 %i.pp, label %from_words52.exit143, label %.lr.ph.i38.i129

.lr.ph.i38.i129:                                  ; preds = %.lr.ph.i38.i129.prol.loopexit, %.lr.ph.i38.i129
  %.08.i39.i130 = phi i64 [ 0, %.lr.ph.i38.i129 ], [ %.08.i39.i130.unr, %.lr.ph.i38.i129.prol.loopexit ] ; 8 uses
  %.047.i40.i131 = phi i32 [ %i.qn, %.lr.ph.i38.i129 ], [ %.047.i40.i131.unr, %.lr.ph.i38.i129.prol.loopexit ] ; 2 uses
  %.056.i41.i132 = phi ptr [ %i.qm, %.lr.ph.i38.i129 ], [ %.056.i41.i132.unr, %.lr.ph.i38.i129.prol.loopexit ] ; 9 uses
  %i.pq = trunc i64 %.08.i39.i130 to i8
  %i.pr = getelementptr inbounds nuw i8, ptr %.056.i41.i132, i64 1
  store i8 %i.pq, ptr %.056.i41.i132, align 1, !tbaa !11
  %i.ps = lshr i64 %.08.i39.i130, 8
  %i.pt = trunc i64 %i.ps to i8
  %i.pu = getelementptr inbounds nuw i8, ptr %.056.i41.i132, i64 2
  store i8 %i.pt, ptr %i.pr, align 1, !tbaa !11
  %i.pv = lshr i64 %.08.i39.i130, 16
  %i.pw = trunc i64 %i.pv to i8
  %i.px = getelementptr inbounds nuw i8, ptr %.056.i41.i132, i64 3
  store i8 %i.pw, ptr %i.pu, align 1, !tbaa !11
  %i.py = lshr i64 %.08.i39.i130, 24
  %i.pz = trunc i64 %i.py to i8
  %i.qa = getelementptr inbounds nuw i8, ptr %.056.i41.i132, i64 4
  store i8 %i.pz, ptr %i.px, align 1, !tbaa !11
  %i.qb = lshr i64 %.08.i39.i130, 32
  %i.qc = trunc i64 %i.qb to i8
  %i.qd = getelementptr inbounds nuw i8, ptr %.056.i41.i132, i64 5
  store i8 %i.qc, ptr %i.qa, align 1, !tbaa !11
  %i.qe = lshr i64 %.08.i39.i130, 40
  %i.qf = trunc i64 %i.qe to i8
  %i.qg = getelementptr inbounds nuw i8, ptr %.056.i41.i132, i64 6
  store i8 %i.qf, ptr %i.qd, align 1, !tbaa !11
  %i.qh = lshr i64 %.08.i39.i130, 48
  %i.qi = trunc i64 %i.qh to i8
  %i.qj = getelementptr inbounds nuw i8, ptr %.056.i41.i132, i64 7
  store i8 %i.qi, ptr %i.qg, align 1, !tbaa !11
  %i.qk = lshr i64 %.08.i39.i130, 56
  %i.ql = trunc nuw i64 %i.qk to i8
  %i.qm = getelementptr inbounds nuw i8, ptr %.056.i41.i132, i64 8
  store i8 %i.ql, ptr %i.qj, align 1, !tbaa !11
  %i.qn = add nsw i32 %.047.i40.i131, -8
  %i.qo = icmp sgt i32 %.047.i40.i131, 8
  br i1 %i.qo, label %.lr.ph.i38.i129, label %from_words52.exit143, !llvm.loop !16

from_words52.exit143:                             ; preds = %.lr.ph.i38.i129.prol.loopexit, %.lr.ph.i38.i129, %.lr.ph.i33.i134.prol.loopexit, %.lr.ph.i33.i134, %bb.p, %bb.q
  %i.qp = lshr exact i32 %12, 6                   ; 3 uses
  %i.qq = zext nneg i32 %i.qp to i64              ; 6 uses
  %i.qr = call i64 @bn_sub_words(ptr noundef nonnull %i.w, ptr noundef %0, ptr noundef %3, i32 noundef %i.qp) #6 ; 2 uses
  %i.qs = sub i64 0, %i.qr
  %i.qt = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.qs) #8, !srcloc !27 ; 2 uses
  %i.qu = add i64 %i.qr, -1
  %i.qv = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.qu) #8, !srcloc !27 ; 2 uses
  %min.iters.check = icmp ult i32 %12, 256
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %from_words52.exit143
  %n.vec = and i64 %i.qq, 67108860                ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.qt, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert195 = insertelement <2 x i64> poison, i64 %i.qv, i64 0
  %broadcast.splat196 = shufflevector <2 x i64> %broadcast.splatinsert195, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.qw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.qw, align 8, !tbaa !9
  %wide.load197 = load <2 x i64>, ptr %i.qx, align 8, !tbaa !9
  %i.qy = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %index ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 16
  %wide.load198 = load <2 x i64>, ptr %i.qy, align 8, !tbaa !9
  %wide.load199 = load <2 x i64>, ptr %i.qz, align 8, !tbaa !9
  %i.ra = and <2 x i64> %wide.load, %broadcast.splat
  %i.rb = and <2 x i64> %wide.load197, %broadcast.splat
  %i.rc = and <2 x i64> %wide.load198, %broadcast.splat196
  %i.rd = and <2 x i64> %wide.load199, %broadcast.splat196
  %i.re = or <2 x i64> %i.rc, %i.ra
  %i.rf = or <2 x i64> %i.rd, %i.rb
  store <2 x i64> %i.re, ptr %i.qw, align 8, !tbaa !9
  store <2 x i64> %i.rf, ptr %i.qx, align 8, !tbaa !9
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.rg = icmp eq i64 %index.next, %n.vec
  br i1 %i.rg, label %middle.block, label %vector.body, !llvm.loop !20

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.qq
  br i1 %cmp.n, label %.lr.ph.i.i146, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %from_words52.exit143, %middle.block
  %.09.i.i.ph = phi i64 [ 0, %from_words52.exit143 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.09.i.i = phi i64 [ %i.ro, %scalar.ph ], [ %.09.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.rh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.09.i.i ; 2 uses
  %i.ri = load i64, ptr %i.rh, align 8, !tbaa !9
  %i.rj = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.09.i.i
  %i.rk = load i64, ptr %i.rj, align 8, !tbaa !9
  %i.rl = and i64 %i.ri, %i.qt
  %i.rm = and i64 %i.rk, %i.qv
  %i.rn = or i64 %i.rm, %i.rl
  store i64 %i.rn, ptr %i.rh, align 8, !tbaa !9
  %i.ro = add nuw i64 %.09.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ro, %i.qq
  br i1 %exitcond.not.i.i, label %.lr.ph.i.i146, label %scalar.ph, !llvm.loop !21

.lr.ph.i.i146:                                    ; preds = %scalar.ph, %middle.block
  %i.rp = call i64 @bn_sub_words(ptr noundef nonnull %i.w, ptr noundef %6, ptr noundef %9, i32 noundef %i.qp) #6 ; 2 uses
  %i.rq = sub i64 0, %i.rp
  %i.rr = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.rq) #8, !srcloc !27 ; 2 uses
  %i.rs = add i64 %i.rp, -1
  %i.rt = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.rs) #8, !srcloc !27 ; 2 uses
  %min.iters.check201 = icmp ult i32 %12, 256
  br i1 %min.iters.check201, label %scalar.ph200.preheader, label %vector.ph202

vector.ph202:                                     ; preds = %.lr.ph.i.i146
  %n.vec203 = and i64 %i.qq, 67108860             ; 3 uses
  %broadcast.splatinsert204 = insertelement <2 x i64> poison, i64 %i.rr, i64 0
  %broadcast.splat205 = shufflevector <2 x i64> %broadcast.splatinsert204, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert206 = insertelement <2 x i64> poison, i64 %i.rt, i64 0
  %broadcast.splat207 = shufflevector <2 x i64> %broadcast.splatinsert206, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body208

vector.body208:                                   ; preds = %vector.body208, %vector.ph202
  %index209 = phi i64 [ 0, %vector.ph202 ], [ %index.next214, %vector.body208 ] ; 3 uses
  %i.ru = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %index209 ; 3 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 16 ; 2 uses
  %wide.load210 = load <2 x i64>, ptr %i.ru, align 8, !tbaa !9
  %wide.load211 = load <2 x i64>, ptr %i.rv, align 8, !tbaa !9
  %i.rw = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %index209 ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 16
  %wide.load212 = load <2 x i64>, ptr %i.rw, align 8, !tbaa !9
  %wide.load213 = load <2 x i64>, ptr %i.rx, align 8, !tbaa !9
  %i.ry = and <2 x i64> %wide.load210, %broadcast.splat205
  %i.rz = and <2 x i64> %wide.load211, %broadcast.splat205
  %i.sa = and <2 x i64> %wide.load212, %broadcast.splat207
  %i.sb = and <2 x i64> %wide.load213, %broadcast.splat207
  %i.sc = or <2 x i64> %i.sa, %i.ry
  %i.sd = or <2 x i64> %i.sb, %i.rz
  store <2 x i64> %i.sc, ptr %i.ru, align 8, !tbaa !9
  store <2 x i64> %i.sd, ptr %i.rv, align 8, !tbaa !9
  %index.next214 = add nuw i64 %index209, 4       ; 2 uses
  %i.se = icmp eq i64 %index.next214, %n.vec203
  br i1 %i.se, label %middle.block215, label %vector.body208, !llvm.loop !22

middle.block215:                                  ; preds = %vector.body208
  %cmp.n216 = icmp eq i64 %n.vec203, %i.qq
  br i1 %cmp.n216, label %RSAZ_mod_exp_x2_ifma256.exit.thread, label %scalar.ph200.preheader

scalar.ph200.preheader:                           ; preds = %.lr.ph.i.i146, %middle.block215
  %.09.i.i147.ph = phi i64 [ 0, %.lr.ph.i.i146 ], [ %n.vec203, %middle.block215 ]
  br label %scalar.ph200

scalar.ph200:                                     ; preds = %scalar.ph200.preheader, %scalar.ph200
  %.09.i.i147 = phi i64 [ %i.sm, %scalar.ph200 ], [ %.09.i.i147.ph, %scalar.ph200.preheader ] ; 3 uses
  %i.sf = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.09.i.i147 ; 2 uses
  %i.sg = load i64, ptr %i.sf, align 8, !tbaa !9
  %i.sh = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.09.i.i147
  %i.si = load i64, ptr %i.sh, align 8, !tbaa !9
  %i.sj = and i64 %i.sg, %i.rr
  %i.sk = and i64 %i.si, %i.rt
  %i.sl = or i64 %i.sk, %i.sj
  store i64 %i.sl, ptr %i.sf, align 8, !tbaa !9
  %i.sm = add nuw i64 %.09.i.i147, 1              ; 2 uses
  %exitcond.not.i.i148 = icmp eq i64 %i.sm, %i.qq
  br i1 %exitcond.not.i.i148, label %RSAZ_mod_exp_x2_ifma256.exit.thread, label %scalar.ph200, !llvm.loop !23

RSAZ_mod_exp_x2_ifma256.exit.thread:              ; preds = %scalar.ph200, %middle.block215, %bb.g, %bb.d, %bb.c
  %.0113.ph = phi i32 [ 0, %bb.g ], [ 0, %bb.d ], [ 0, %bb.c ], [ 1, %middle.block215 ], [ 1, %scalar.ph200 ]
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.w, i64 noundef %i.v) #6
  call void @CRYPTO_free(ptr noundef nonnull %i.w, ptr noundef nonnull @.str, i32 noundef 321) #6
  br label %bn_reduce_once_in_place.exit149

bn_reduce_once_in_place.exit149:                  ; preds = %bb.b, %bb.a, %RSAZ_mod_exp_x2_ifma256.exit.thread
  %.0113156 = phi i32 [ %.0113.ph, %RSAZ_mod_exp_x2_ifma256.exit.thread ], [ 0, %bb.a ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
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
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = add nsw i32 %3, -104                     ; 2 uses
  %i.c = udiv i32 %i.b, 104
  %i.d = and i32 %i.c, 1
  %lcmp.mod.not.not = icmp eq i32 %i.d, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %.0.copyload.prol = load i64, ptr %2, align 1
  %i.e = and i64 %.0.copyload.prol, 4503599627370495
  store i64 %i.e, ptr %0, align 8, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 6
  %.0.copyload3.prol = load i64, ptr %i.f, align 1
  %i.g = lshr i64 %.0.copyload3.prol, 4
  %i.h = and i64 %i.g, 4503599627370495
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.h, ptr %i.i, align 8, !tbaa !9
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 13 ; 2 uses
  %i.k = add nsw i32 %1, -2                       ; 2 uses
  %i.l = add nsw i32 %3, -104                     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.050.unr = phi ptr [ %0, %.lr.ph.preheader ], [ %i.m, %.lr.ph.prol ]
  %.03349.unr = phi i32 [ %1, %.lr.ph.preheader ], [ %i.k, %.lr.ph.prol ]
  %.03548.unr = phi ptr [ %2, %.lr.ph.preheader ], [ %i.j, %.lr.ph.prol ]
  %.03647.unr = phi i32 [ %3, %.lr.ph.preheader ], [ %i.l, %.lr.ph.prol ]
  %.lcssa76.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.j, %.lr.ph.prol ]
  %.lcssa75.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %i.k, %.lr.ph.prol ]
  %.lcssa74.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %i.l, %.lr.ph.prol ]
  %.lcssa73.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.m, %.lr.ph.prol ]
  %i.n = icmp ult i32 %i.b, 104
  br i1 %i.n, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.050 = phi ptr [ %i.ad, %.lr.ph ], [ %.050.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.03349 = phi i32 [ %i.ab, %.lr.ph ], [ %.03349.unr, %.lr.ph.prol.loopexit ]
  %.03548 = phi ptr [ %i.aa, %.lr.ph ], [ %.03548.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.03647 = phi i32 [ %i.ac, %.lr.ph ], [ %.03647.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.0.copyload = load i64, ptr %.03548, align 1
  %i.o = and i64 %.0.copyload, 4503599627370495
  store i64 %i.o, ptr %.050, align 8, !tbaa !9
  %i.p = getelementptr inbounds nuw i8, ptr %.03548, i64 6
  %.0.copyload3 = load i64, ptr %i.p, align 1
  %i.q = lshr i64 %.0.copyload3, 4
  %i.r = and i64 %i.q, 4503599627370495
  %i.s = getelementptr inbounds nuw i8, ptr %.050, i64 8
  store i64 %i.r, ptr %i.s, align 8, !tbaa !9
  %i.t = getelementptr inbounds nuw i8, ptr %.03548, i64 13
  %i.u = getelementptr inbounds nuw i8, ptr %.050, i64 16
  %.0.copyload.1 = load i64, ptr %i.t, align 1
  %i.v = and i64 %.0.copyload.1, 4503599627370495
  store i64 %i.v, ptr %i.u, align 8, !tbaa !9
  %i.w = getelementptr inbounds nuw i8, ptr %.03548, i64 19
  %.0.copyload3.1 = load i64, ptr %i.w, align 1
  %i.x = lshr i64 %.0.copyload3.1, 4
  %i.y = and i64 %i.x, 4503599627370495
  %i.z = getelementptr inbounds nuw i8, ptr %.050, i64 24
  store i64 %i.y, ptr %i.z, align 8, !tbaa !9
  %i.aa = getelementptr inbounds nuw i8, ptr %.03548, i64 26 ; 2 uses
  %i.ab = add nsw i32 %.03349, -4                 ; 2 uses
  %i.ac = add nsw i32 %.03647, -208               ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.050, i64 32 ; 2 uses
  %i.ae = icmp sgt i32 %.03647, 311
  br i1 %i.ae, label %.lr.ph, label %._crit_edge, !llvm.loop !30

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  %.036.lcssa = phi i32 [ %3, %bb.a ], [ %.lcssa74.unr, %.lr.ph.prol.loopexit ], [ %i.ac, %.lr.ph ] ; 4 uses
  %.035.lcssa = phi ptr [ %2, %bb.a ], [ %.lcssa76.unr, %.lr.ph.prol.loopexit ], [ %i.aa, %.lr.ph ] ; 9 uses
  %.033.lcssa = phi i32 [ %1, %bb.a ], [ %.lcssa75.unr, %.lr.ph.prol.loopexit ], [ %i.ab, %.lr.ph ] ; 3 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.lcssa73.unr, %.lr.ph.prol.loopexit ], [ %i.ad, %.lr.ph ] ; 6 uses
  %i.af = icmp sgt i32 %.036.lcssa, 52
  br i1 %i.af, label %.preheader.preheader, label %bb.c

.preheader.preheader:                             ; preds = %._crit_edge
  %i.ag = getelementptr i8, ptr %.035.lcssa, i64 6
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !11
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr i8, ptr %.035.lcssa, i64 5
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !11
  %i.al = zext i8 %i.ak to i64
  %i.am = shl nuw nsw i64 %i.ai, 16
  %i.an = shl nuw nsw i64 %i.al, 8
  %i.ao = or disjoint i64 %i.am, %i.an
  %i.ap = getelementptr i8, ptr %.035.lcssa, i64 4
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !11
  %i.ar = zext i8 %i.aq to i64
  %i.as = or disjoint i64 %i.ao, %i.ar
  %i.at = getelementptr i8, ptr %.035.lcssa, i64 3
  %i.au = load i8, ptr %i.at, align 1, !tbaa !11
  %i.av = zext i8 %i.au to i64
  %i.aw = shl nuw nsw i64 %i.as, 16
  %i.ax = shl nuw nsw i64 %i.av, 8
  %i.ay = or disjoint i64 %i.aw, %i.ax
  %i.az = getelementptr i8, ptr %.035.lcssa, i64 2
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !11
  %i.bb = zext i8 %i.ba to i64
  %i.bc = or disjoint i64 %i.ay, %i.bb
  %i.bd = getelementptr i8, ptr %.035.lcssa, i64 1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !11
  %i.bf = zext i8 %i.be to i64
  %i.bg = shl nuw nsw i64 %i.bc, 16
  %i.bh = shl nuw nsw i64 %i.bf, 8
  %i.bi = load i8, ptr %.035.lcssa, align 1, !tbaa !11
  %i.bj = zext i8 %i.bi to i64
  %.masked61 = and i64 %i.bg, 4503599627304960
  %.masked = or disjoint i64 %.masked61, %i.bh
  %i.bk = or disjoint i64 %.masked, %i.bj
  store i64 %i.bk, ptr %.0.lcssa, align 8, !tbaa !9
  %i.bl = add nsw i32 %.036.lcssa, -45
  %i.bm = lshr i32 %i.bl, 3
  %i.bn = zext nneg i32 %i.bm to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader.preheader
  %indvars.iv.i37.a = phi i64 [ %i.bn, %.preheader.preheader ], [ %indvars.iv.next.i39, %bb.b ] ; 3 uses
  %.08.i38.a = phi i64 [ 0, %.preheader.preheader ], [ %i.bt, %bb.b ]
  %i.bo = shl i64 %.08.i38.a, 8
  %i.bp = getelementptr i8, ptr %.035.lcssa, i64 %indvars.iv.i37.a
  %i.bq = getelementptr i8, ptr %i.bp, i64 5
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !11
  %i.bs = zext i8 %i.br to i64
  %i.bt = or disjoint i64 %i.bo, %i.bs            ; 2 uses
  %indvars.iv.next.i39 = add nsw i64 %indvars.iv.i37.a, -1
  %4 = icmp samesign ugt i64 %indvars.iv.i37.a, 1
  br i1 %4, label %bb.b, label %get_digit.exit40, !llvm.loop !31

get_digit.exit40:                                 ; preds = %bb.b
  %i.bu = lshr i64 %i.bt, 4
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 8
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !9
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 16
  %i.bx = add nsw i32 %.033.lcssa, -2
  br label %bb.f

bb.c:                                             ; preds = %._crit_edge
  %i.by = icmp sgt i32 %.036.lcssa, 0
  br i1 %i.by, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.bz = add nuw nsw i32 %.036.lcssa, 7
  %i.ca = lshr i32 %i.bz, 3
  %i.cb = zext nneg i32 %i.ca to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %indvars.iv.i41.a = phi i64 [ %i.cb, %bb.d ], [ %indvars.iv.next.i43, %bb.e ] ; 3 uses
  %.08.i42.a = phi i64 [ 0, %bb.d ], [ %i.ch, %bb.e ]
  %i.cc = shl i64 %.08.i42.a, 8
  %i.cd = getelementptr i8, ptr %.035.lcssa, i64 %indvars.iv.i41.a
  %i.ce = getelementptr i8, ptr %i.cd, i64 -1
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !11
  %i.cg = zext i8 %i.cf to i64
  %i.ch = or disjoint i64 %i.cc, %i.cg            ; 2 uses
  %indvars.iv.next.i43 = add nsw i64 %indvars.iv.i41.a, -1
  %5 = icmp samesign ugt i64 %indvars.iv.i41.a, 1
  br i1 %5, label %bb.e, label %get_digit.exit44, !llvm.loop !31

get_digit.exit44:                                 ; preds = %bb.e
  store i64 %i.ch, ptr %.0.lcssa, align 8, !tbaa !9
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 8
  %i.cj = add nsw i32 %.033.lcssa, -1
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %get_digit.exit44, %get_digit.exit40
  %.134 = phi i32 [ %i.bx, %get_digit.exit40 ], [ %i.cj, %get_digit.exit44 ], [ %.033.lcssa, %bb.c ]
  %.1 = phi ptr [ %i.bw, %get_digit.exit40 ], [ %i.ci, %get_digit.exit44 ], [ %.0.lcssa, %bb.c ]
  %i.ck = sext i32 %.134 to i64
  %i.cl = shl nsw i64 %i.ck, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %.1, i8 0, i64 %i.cl, i1 false)
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

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind memory(none) }

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
!12 = distinct !{null}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !26}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !26}
!18 = distinct !{!18, !26}
!19 = distinct !{!19, !26}
!20 = distinct !{!20, !10, !28, !29}
!21 = distinct !{!21, !10, !29, !28}
!22 = distinct !{!22, !10, !28, !29}
!23 = distinct !{!23, !10, !29, !28}
!24 = !{!"any pointer", !4, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!"llvm.loop.unroll.disable"}
!27 = !{i64 787271}
!28 = !{!"llvm.loop.isvectorized", i32 1}
!29 = !{!"llvm.loop.unroll.runtime.disable"}
!30 = distinct !{!30, !10}
!31 = distinct !{!31, !10}
end_hunk_0
