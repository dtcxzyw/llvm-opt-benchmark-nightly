Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/rsaz_exp_x2?download=true
inline.NumInlined: 17
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@ossl_rsaz_amm52_x1 = internal unnamed_addr constant [6 x ptr] [ptr @ossl_rsaz_amm52x20_x1_avxifma256, ptr @ossl_rsaz_amm52x20_x1_ifma256, ptr @ossl_rsaz_amm52x30_x1_avxifma256, ptr @ossl_rsaz_amm52x30_x1_ifma256, ptr @ossl_rsaz_amm52x40_x1_avxifma256, ptr @ossl_rsaz_amm52x40_x1_ifma256], align 16
@.str = private unnamed_addr constant [51 x i8] c"../../deps/openssl/openssl/crypto/bn/rsaz_exp_x2.c\00", align 1
@ossl_rsaz_amm52_x2 = internal unnamed_addr constant [6 x ptr] [ptr @ossl_rsaz_amm52x20_x2_avxifma256, ptr @ossl_rsaz_amm52x20_x2_ifma256, ptr @ossl_rsaz_amm52x30_x2_avxifma256, ptr @ossl_rsaz_amm52x30_x2_ifma256, ptr @ossl_rsaz_amm52x40_x2_avxifma256, ptr @ossl_rsaz_amm52x40_x2_ifma256], align 16
@ossl_extract_multiplier_win5 = internal unnamed_addr constant [6 x ptr] [ptr @ossl_extract_multiplier_2x20_win5_avx, ptr @ossl_extract_multiplier_2x20_win5, ptr @ossl_extract_multiplier_2x30_win5_avx, ptr @ossl_extract_multiplier_2x30_win5, ptr @ossl_extract_multiplier_2x40_win5_avx, ptr @ossl_extract_multiplier_2x40_win5], align 16
@.str.1 = private unnamed_addr constant [27 x i8] c"assertion failed: rem != 0\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_rsaz_mod_exp_avx512_x2(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5, ptr noundef %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef readonly captures(none) %8, ptr noundef %9, ptr nofree noundef readonly captures(none) %10, i64 noundef %11, i32 noundef %12) local_unnamed_addr #0 {
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
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !27   ; 4 uses
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
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !11
  %i.bg = or i64 %i.bf, %i.bc
  store i64 %i.bg, ptr %i.be, align 8, !tbaa !11
  tail call void %i.u(ptr noundef nonnull %i.am, ptr noundef nonnull %i.am, ptr noundef nonnull %i.am, ptr noundef nonnull %i.ag, i64 noundef %5) #6
  tail call void %i.u(ptr noundef nonnull %i.am, ptr noundef nonnull %i.am, ptr noundef nonnull %i.as, ptr noundef nonnull %i.ag, i64 noundef %5) #6
  tail call void %i.u(ptr noundef nonnull %i.ap, ptr noundef nonnull %i.ap, ptr noundef nonnull %i.ap, ptr noundef nonnull %i.aj, i64 noundef %11) #6
  tail call void %i.u(ptr noundef nonnull %i.ap, ptr noundef nonnull %i.ap, ptr noundef nonnull %i.as, ptr noundef nonnull %i.aj, i64 noundef %11) #6
  store i64 %5, ptr %i.a, align 16, !tbaa !11
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %11, ptr %i.bh, align 8, !tbaa !11
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
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !27 ; 39 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr @ossl_extract_multiplier_win5, i64 %i.bm
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !27 ; 2 uses
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
  store i64 1, ptr %i.cf, align 8, !tbaa !11
  %i.ch = zext nneg i32 %.0211.i to i64           ; 31 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.ch ; 2 uses
  store i64 1, ptr %i.ci, align 8, !tbaa !11
  call void %i.bo(ptr noundef nonnull %i.cg, ptr noundef nonnull %i.cf, ptr noundef nonnull %i.am, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !14
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ce ; 18 uses
  call void %i.bo(ptr noundef nonnull %i.cj, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.am, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !14
  %.idx.i = shl nuw nsw i64 %i.ch, 5
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx.i ; 2 uses
  call void %i.bo(ptr noundef nonnull %i.ck, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !14
  %.idx18.i = mul nuw nsw i64 %i.ch, 48
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx18.i
  call void %i.bo(ptr noundef nonnull %i.cl, ptr noundef nonnull %i.ck, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !14
  %.idx19.i = shl nuw nsw i64 %i.ch, 6
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx19.i ; 2 uses
  %.idx20.i = shl nuw nsw i64 %i.ce, 4
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx20.i ; 2 uses
  call void %i.bo(ptr noundef nonnull %i.cm, ptr noundef nonnull %i.cn, ptr noundef nonnull %i.cn, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !14
  %.idx21.i = mul nuw nsw i64 %i.ch, 80
  %i.co = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx21.i
  call void %i.bo(ptr noundef nonnull %i.co, ptr noundef nonnull %i.cm, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !14
  %.idx22.i = mul nuw nsw i64 %i.ch, 96
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx22.i ; 2 uses
  %.idx23.i = mul nuw nsw i64 %i.ce, 24
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx23.i ; 2 uses
  call void %i.bo(ptr noundef nonnull %i.cp, ptr noundef nonnull %i.cq, ptr noundef nonnull %i.cq, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !14
  %.idx24.i = mul nuw nsw i64 %i.ch, 112
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx24.i
  call void %i.bo(ptr noundef nonnull %i.cr, ptr noundef nonnull %i.cp, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !14
  %.idx25.i = shl nuw nsw i64 %i.ch, 7
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx25.i ; 2 uses
  %.idx26.i = shl nuw nsw i64 %i.ce, 5
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx26.i ; 2 uses
  call void %i.bo(ptr noundef nonnull %i.cs, ptr noundef nonnull %i.ct, ptr noundef nonnull %i.ct, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !14
  %.idx27.i = mul nuw nsw i64 %i.ch, 144
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx27.i
  call void %i.bo(ptr noundef nonnull %i.cu, ptr noundef nonnull %i.cs, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !14
  %.idx28.i = mul nuw nsw i64 %i.ch, 160
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx28.i ; 2 uses
  %.idx29.i = mul nuw nsw i64 %i.ce, 40
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx29.i ; 2 uses
  call void %i.bo(ptr noundef nonnull %i.cv, ptr noundef nonnull %i.cw, ptr noundef nonnull %i.cw, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !14
  %.idx30.i = mul nuw nsw i64 %i.ch, 176
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx30.i
  call void %i.bo(ptr noundef nonnull %i.cx, ptr noundef nonnull %i.cv, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !14
  %.idx31.i = mul nuw nsw i64 %i.ch, 192
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx31.i ; 2 uses
  %.idx32.i = mul nuw nsw i64 %i.ce, 48
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx32.i ; 2 uses
  call void %i.bo(ptr noundef nonnull %i.cy, ptr noundef nonnull %i.cz, ptr noundef nonnull %i.cz, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !14
  %.idx33.i = mul nuw nsw i64 %i.ch, 208
  %i.da = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx33.i
  call void %i.bo(ptr noundef nonnull %i.da, ptr noundef nonnull %i.cy, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !14
  %.idx34.i = mul nuw nsw i64 %i.ch, 224
  %i.db = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx34.i ; 2 uses
  %.idx35.i = mul nuw nsw i64 %i.ce, 56
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx35.i ; 2 uses
  call void %i.bo(ptr noundef nonnull %i.db, ptr noundef nonnull %i.dc, ptr noundef nonnull %i.dc, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !14
  %.idx36.i = mul nuw nsw i64 %i.ch, 240
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx36.i
  call void %i.bo(ptr noundef nonnull %i.dd, ptr noundef nonnull %i.db, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !14
  %.idx37.i = shl nuw nsw i64 %i.ch, 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx37.i ; 2 uses
  %.idx38.i = shl nuw nsw i64 %i.ce, 6
  %i.df = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx38.i ; 2 uses
  call void %i.bo(ptr noundef nonnull %i.de, ptr noundef nonnull %i.df, ptr noundef nonnull %i.df, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !14
  %.idx39.i = mul nuw nsw i64 %i.ch, 272
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx39.i
  call void %i.bo(ptr noundef nonnull %i.dg, ptr noundef nonnull %i.de, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !14
  %.idx40.i = mul nuw nsw i64 %i.ch, 288
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx40.i ; 2 uses
  %.idx41.i = mul nuw nsw i64 %i.ce, 72
  %i.di = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx41.i ; 2 uses
  call void %i.bo(ptr noundef nonnull %i.dh, ptr noundef nonnull %i.di, ptr noundef nonnull %i.di, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !14
  %.idx42.i = mul nuw nsw i64 %i.ch, 304
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx42.i
  call void %i.bo(ptr noundef nonnull %i.dj, ptr noundef nonnull %i.dh, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !14
  %.idx43.i = mul nuw nsw i64 %i.ch, 320
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx43.i ; 2 uses
  %.idx44.i = mul nuw nsw i64 %i.ce, 80
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx44.i ; 2 uses
  call void %i.bo(ptr noundef nonnull %i.dk, ptr noundef nonnull %i.dl, ptr noundef nonnull %i.dl, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !14
  %.idx45.i = mul nuw nsw i64 %i.ch, 336
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx45.i
  call void %i.bo(ptr noundef nonnull %i.dm, ptr noundef nonnull %i.dk, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !14
  %.idx46.i = mul nuw nsw i64 %i.ch, 352
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx46.i ; 2 uses
  %.idx47.i = mul nuw nsw i64 %i.ce, 88
  %i.do = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx47.i ; 2 uses
  call void %i.bo(ptr noundef nonnull %i.dn, ptr noundef nonnull %i.do, ptr noundef nonnull %i.do, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !14
  %.idx48.i = mul nuw nsw i64 %i.ch, 368
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx48.i
  call void %i.bo(ptr noundef nonnull %i.dp, ptr noundef nonnull %i.dn, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !14
  %.idx49.i = mul nuw nsw i64 %i.ch, 384
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx49.i ; 2 uses
  %.idx50.i = mul nuw nsw i64 %i.ce, 96
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx50.i ; 2 uses
  call void %i.bo(ptr noundef nonnull %i.dq, ptr noundef nonnull %i.dr, ptr noundef nonnull %i.dr, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !14
  %.idx51.i = mul nuw nsw i64 %i.ch, 400
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx51.i
  call void %i.bo(ptr noundef nonnull %i.ds, ptr noundef nonnull %i.dq, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !14
  %.idx52.i = mul nuw nsw i64 %i.ch, 416
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx52.i ; 2 uses
  %.idx53.i = mul nuw nsw i64 %i.ce, 104
  %i.du = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx53.i ; 2 uses
  call void %i.bo(ptr noundef nonnull %i.dt, ptr noundef nonnull %i.du, ptr noundef nonnull %i.du, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !14
  %.idx54.i = mul nuw nsw i64 %i.ch, 432
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx54.i
  call void %i.bo(ptr noundef nonnull %i.dv, ptr noundef nonnull %i.dt, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !14
  %.idx55.i = mul nuw nsw i64 %i.ch, 448
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx55.i ; 2 uses
  %.idx56.i = mul nuw nsw i64 %i.ce, 112
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx56.i ; 2 uses
  call void %i.bo(ptr noundef nonnull %i.dw, ptr noundef nonnull %i.dx, ptr noundef nonnull %i.dx, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !14
  %.idx57.i = mul nuw nsw i64 %i.ch, 464
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx57.i
  call void %i.bo(ptr noundef nonnull %i.dy, ptr noundef nonnull %i.dw, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !14
  %.idx58.i = mul nuw nsw i64 %i.ch, 480
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx58.i ; 2 uses
  %.idx59.i = mul nuw nsw i64 %i.ce, 120
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx59.i ; 2 uses
  call void %i.bo(ptr noundef nonnull %i.dz, ptr noundef nonnull %i.ea, ptr noundef nonnull %i.ea, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !14
  %.idx60.i = mul nuw nsw i64 %i.ch, 496
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx60.i
  call void %i.bo(ptr noundef nonnull %i.eb, ptr noundef nonnull %i.dz, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !14
  %i.ec = shl nuw nsw i32 %.0211.i, 6
  %i.ed = zext nneg i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ed ; 11 uses
  %i.ef = zext nneg i32 %.0210.i to i64           ; 2 uses
  %i.eg = shl nuw nsw i64 %i.ef, 3                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ee, ptr noundef nonnull readonly align 8 dereferenceable(1) %2, i64 %i.eg, i1 false)
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.ef
  store i64 0, ptr %i.eh, align 8, !tbaa !11
  %i.ei = zext nneg i32 %i.bs to i64
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.ei
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ej, ptr noundef nonnull readonly align 8 dereferenceable(1) %8, i64 %i.eg, i1 false)
  %i.ek = zext nneg i32 %i.bt to i64
  %i.el = getelementptr [8 x i8], ptr %i.ee, i64 %i.ek
  %i.em = getelementptr i8, ptr %i.el, i64 -8
  store i64 0, ptr %i.em, align 8, !tbaa !11
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
  %i.et = load i64, ptr %i.es, align 8, !tbaa !11
  %i.eu = add nuw nsw i32 %i.bs, %i.eq
  %i.ev = zext nneg i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.ev
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !11
  %i.ey = zext nneg i32 %i.ep to i64              ; 2 uses
  %i.ez = lshr i64 %i.et, %i.ey
  %i.fa = lshr i64 %i.ex, %i.ey
  %i.fb = trunc i64 %i.ez to i32
  %i.fc = trunc i64 %i.fa to i32
  call void %i.bq(ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cg, i32 noundef %i.fb, i32 noundef %i.fc) #6, !inline_history !14
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.preheader.i
  %.020712.in.i = phi i32 [ %.020712.i, %bb.l ], [ %i.eo, %.lr.ph.preheader.i ] ; 2 uses
  %.020712.i = add nsw i32 %.020712.in.i, -5      ; 3 uses
  %i.fd = lshr i32 %.020712.i, 6                  ; 4 uses
  %i.fe = and i32 %.020712.i, 63                  ; 3 uses
  %i.ff = zext nneg i32 %i.fd to i64
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.ff
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !11
  %i.fi = zext nneg i32 %i.fe to i64              ; 3 uses
  %i.fj = lshr i64 %i.fh, %i.fi                   ; 2 uses
  %i.fk = icmp samesign ugt i32 %i.fe, 59
  br i1 %i.fk, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i
  %i.fl = add nuw nsw i32 %i.fd, %i.bs
  %i.fm = zext nneg i32 %i.fl to i64
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.fm
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !11
  %i.fp = lshr i64 %i.fo, %i.fi
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph.i
  %i.fq = add nuw nsw i32 %i.fd, 1                ; 2 uses
  %i.fr = zext nneg i32 %i.fq to i64
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.fr
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !11
  %i.fu = sub nuw nsw i32 64, %i.fe
  %i.fv = zext nneg i32 %i.fu to i64              ; 2 uses
  %i.fw = shl i64 %i.ft, %i.fv
  %i.fx = xor i64 %i.fw, %i.fj
  %i.fy = add nuw nsw i32 %i.fd, %i.bs
  %i.fz = zext nneg i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.fz
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !11
  %i.gc = lshr i64 %i.gb, %i.fi
  %i.gd = add nuw nsw i32 %i.fq, %i.bs
  %i.ge = zext nneg i32 %i.gd to i64
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.ge
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !11
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
  call void %i.bq(ptr noundef nonnull %i.cf, ptr noundef nonnull %i.cg, i32 noundef %i.gk, i32 noundef %i.gm) #6, !inline_history !14
  call void %i.bo(ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !14
  call void %i.bo(ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !14
  call void %i.bo(ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !14
  call void %i.bo(ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !14
  call void %i.bo(ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !14
  call void %i.bo(ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cf, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !14
  %i.gn = icmp samesign ugt i32 %.020712.in.i, 9
  br i1 %i.gn, label %.lr.ph.i, label %bb.m, !llvm.loop !15

bb.m:                                             ; preds = %bb.l
  %i.go = shl nuw nsw i64 %i.ce, 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cf, i8 0, i64 %i.go, i1 false)
  store i64 1, ptr %i.cf, align 8, !tbaa !11
  store i64 1, ptr %i.ci, align 8, !tbaa !11
  call void %i.bo(ptr noundef nonnull %i.am, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cf, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !14
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.bx, i64 noundef %i.bw) #6
  call void @CRYPTO_free(ptr noundef nonnull %i.bx, ptr noundef nonnull @.str, i32 noundef 569) #6
  %i.gp = add nsw i32 %12, 63
  %i.gq = ashr i32 %i.gp, 6                       ; 3 uses
  %i.gr = icmp sgt i32 %i.gq, 0                   ; 2 uses
  br i1 %i.gr, label %.lr.ph.preheader.i121, label %.preheader.i

.lr.ph.preheader.i121:                            ; preds = %bb.m
  %i.gs = zext nneg i32 %i.gq to i64
  %i.gt = shl nuw nsw i64 %i.gs, 3
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 %i.gt, i1 false), !tbaa !11
  br label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.preheader.i121, %bb.m
  %i.gu = icmp sgt i32 %12, 103                   ; 2 uses
  br i1 %i.gu, label %.lr.ph48.i, label %._crit_edge.i119

.lr.ph48.i:                                       ; preds = %.preheader.i, %.lr.ph48.i
  %.047.i = phi i32 [ %i.hd, %.lr.ph48.i ], [ %12, %.preheader.i ] ; 2 uses
  %.03046.i = phi ptr [ %i.hc, %.lr.ph48.i ], [ %0, %.preheader.i ] ; 3 uses
  %.03245.i = phi ptr [ %i.he, %.lr.ph48.i ], [ %i.am, %.preheader.i ] ; 3 uses
  %i.gv = load i64, ptr %.03245.i, align 8, !tbaa !11 ; 2 uses
  store i64 %i.gv, ptr %.03046.i, align 1
  %i.gw = getelementptr inbounds nuw i8, ptr %.03046.i, i64 6
  %i.gx = lshr i64 %i.gv, 48
  %i.gy = getelementptr inbounds nuw i8, ptr %.03245.i, i64 8
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !11
  %i.ha = shl i64 %i.gz, 4
  %i.hb = or i64 %i.ha, %i.gx
  store i64 %i.hb, ptr %i.gw, align 1
  %i.hc = getelementptr inbounds nuw i8, ptr %.03046.i, i64 13 ; 2 uses
  %i.hd = add nsw i32 %.047.i, -104               ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.03245.i, i64 16 ; 2 uses
  %i.hf = icmp samesign ugt i32 %.047.i, 207
  br i1 %i.hf, label %.lr.ph48.i, label %._crit_edge.i119, !llvm.loop !16

._crit_edge.i119:                                 ; preds = %.lr.ph48.i, %.preheader.i
  %.032.lcssa.i = phi ptr [ %i.am, %.preheader.i ], [ %i.he, %.lr.ph48.i ] ; 3 uses
  %.030.lcssa.i = phi ptr [ %0, %.preheader.i ], [ %i.hc, %.lr.ph48.i ] ; 9 uses
  %.0.lcssa.i = phi i32 [ %12, %.preheader.i ], [ %i.hd, %.lr.ph48.i ] ; 4 uses
  %i.hg = icmp sgt i32 %.0.lcssa.i, 52
  br i1 %i.hg, label %.lr.ph.i.i, label %bb.n

.lr.ph.i.i:                                       ; preds = %._crit_edge.i119
  %i.hh = load i64, ptr %.032.lcssa.i, align 8, !tbaa !11 ; 7 uses
  %i.hi = trunc i64 %i.hh to i8
  %i.hj = getelementptr inbounds nuw i8, ptr %.030.lcssa.i, i64 1
  store i8 %i.hi, ptr %.030.lcssa.i, align 1, !tbaa !13
  %i.hk = lshr i64 %i.hh, 8
  %i.hl = trunc i64 %i.hk to i8
  %i.hm = getelementptr inbounds nuw i8, ptr %.030.lcssa.i, i64 2
  store i8 %i.hl, ptr %i.hj, align 1, !tbaa !13
  %i.hn = lshr i64 %i.hh, 16
  %i.ho = trunc i64 %i.hn to i8
  %i.hp = getelementptr inbounds nuw i8, ptr %.030.lcssa.i, i64 3
  store i8 %i.ho, ptr %i.hm, align 1, !tbaa !13
  %i.hq = lshr i64 %i.hh, 24
  %i.hr = trunc i64 %i.hq to i8
  %i.hs = getelementptr inbounds nuw i8, ptr %.030.lcssa.i, i64 4
  store i8 %i.hr, ptr %i.hp, align 1, !tbaa !13
  %i.ht = lshr i64 %i.hh, 32
  %i.hu = trunc i64 %i.ht to i8
  %i.hv = getelementptr inbounds nuw i8, ptr %.030.lcssa.i, i64 5
  store i8 %i.hu, ptr %i.hs, align 1, !tbaa !13
  %i.hw = lshr i64 %i.hh, 40
  %i.hx = trunc i64 %i.hw to i8
  %i.hy = getelementptr inbounds nuw i8, ptr %.030.lcssa.i, i64 6 ; 3 uses
  store i8 %i.hx, ptr %i.hv, align 1, !tbaa !13
  %i.hz = lshr i64 %i.hh, 48                      ; 2 uses
  %i.ia = trunc i64 %i.hz to i8
  store i8 %i.ia, ptr %i.hy, align 1, !tbaa !13
  %i.ib = add nsw i32 %.0.lcssa.i, -45
  %i.ic = lshr i32 %i.ib, 3                       ; 4 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.032.lcssa.i, i64 8
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !11
  %i.if = shl i64 %i.ie, 4
  %i.ig = or i64 %i.if, %i.hz                     ; 2 uses
  %i.ih = add nsw i32 %i.ic, -1
  %xtraiter225 = and i32 %i.ic, 7                 ; 2 uses
  %lcmp.mod226.not = icmp eq i32 %xtraiter225, 0
  br i1 %lcmp.mod226.not, label %.lr.ph.i33.i.prol.loopexit, label %.lr.ph.i33.i.prol

.lr.ph.i33.i.prol:                                ; preds = %.lr.ph.i.i, %.lr.ph.i33.i.prol
  %.08.i34.i.prol = phi i64 [ %i.ik, %.lr.ph.i33.i.prol ], [ %i.ig, %.lr.ph.i.i ] ; 2 uses
  %.047.i35.i.prol = phi i32 [ %i.il, %.lr.ph.i33.i.prol ], [ %i.ic, %.lr.ph.i.i ]
  %.056.i36.i.prol = phi ptr [ %i.ij, %.lr.ph.i33.i.prol ], [ %i.hy, %.lr.ph.i.i ] ; 2 uses
  %prol.iter227 = phi i32 [ %prol.iter227.next, %.lr.ph.i33.i.prol ], [ 0, %.lr.ph.i.i ]
  %i.ii = trunc i64 %.08.i34.i.prol to i8
  %i.ij = getelementptr inbounds nuw i8, ptr %.056.i36.i.prol, i64 1 ; 2 uses
  store i8 %i.ii, ptr %.056.i36.i.prol, align 1, !tbaa !13
  %i.ik = lshr i64 %.08.i34.i.prol, 8             ; 2 uses
  %i.il = add nsw i32 %.047.i35.i.prol, -1        ; 2 uses
  %prol.iter227.next = add i32 %prol.iter227, 1   ; 2 uses
  %prol.iter227.cmp.not = icmp eq i32 %prol.iter227.next, %xtraiter225
  br i1 %prol.iter227.cmp.not, label %.lr.ph.i33.i.prol.loopexit, label %.lr.ph.i33.i.prol, !llvm.loop !17

.lr.ph.i33.i.prol.loopexit:                       ; preds = %.lr.ph.i33.i.prol, %.lr.ph.i.i
  %.08.i34.i.unr = phi i64 [ %i.ig, %.lr.ph.i.i ], [ %i.ik, %.lr.ph.i33.i.prol ]
  %.047.i35.i.unr = phi i32 [ %i.ic, %.lr.ph.i.i ], [ %i.il, %.lr.ph.i33.i.prol ]
  %.056.i36.i.unr = phi ptr [ %i.hy, %.lr.ph.i.i ], [ %i.ij, %.lr.ph.i33.i.prol ]
  %i.im = icmp ult i32 %i.ih, 7
  br i1 %i.im, label %from_words52.exit, label %.lr.ph.i33.i

.lr.ph.i33.i:                                     ; preds = %.lr.ph.i33.i.prol.loopexit, %.lr.ph.i33.i
  %.08.i34.i = phi i64 [ 0, %.lr.ph.i33.i ], [ %.08.i34.i.unr, %.lr.ph.i33.i.prol.loopexit ] ; 8 uses
  %.047.i35.i = phi i32 [ %i.jk, %.lr.ph.i33.i ], [ %.047.i35.i.unr, %.lr.ph.i33.i.prol.loopexit ] ; 2 uses
  %.056.i36.i = phi ptr [ %i.jj, %.lr.ph.i33.i ], [ %.056.i36.i.unr, %.lr.ph.i33.i.prol.loopexit ] ; 9 uses
  %i.in = trunc i64 %.08.i34.i to i8
  %i.io = getelementptr inbounds nuw i8, ptr %.056.i36.i, i64 1
  store i8 %i.in, ptr %.056.i36.i, align 1, !tbaa !13
  %i.ip = lshr i64 %.08.i34.i, 8
  %i.iq = trunc i64 %i.ip to i8
  %i.ir = getelementptr inbounds nuw i8, ptr %.056.i36.i, i64 2
  store i8 %i.iq, ptr %i.io, align 1, !tbaa !13
  %i.is = lshr i64 %.08.i34.i, 16
  %i.it = trunc i64 %i.is to i8
  %i.iu = getelementptr inbounds nuw i8, ptr %.056.i36.i, i64 3
  store i8 %i.it, ptr %i.ir, align 1, !tbaa !13
  %i.iv = lshr i64 %.08.i34.i, 24
  %i.iw = trunc i64 %i.iv to i8
  %i.ix = getelementptr inbounds nuw i8, ptr %.056.i36.i, i64 4
  store i8 %i.iw, ptr %i.iu, align 1, !tbaa !13
  %i.iy = lshr i64 %.08.i34.i, 32
  %i.iz = trunc i64 %i.iy to i8
  %i.ja = getelementptr inbounds nuw i8, ptr %.056.i36.i, i64 5
  store i8 %i.iz, ptr %i.ix, align 1, !tbaa !13
  %i.jb = lshr i64 %.08.i34.i, 40
  %i.jc = trunc i64 %i.jb to i8
  %i.jd = getelementptr inbounds nuw i8, ptr %.056.i36.i, i64 6
  store i8 %i.jc, ptr %i.ja, align 1, !tbaa !13
  %i.je = lshr i64 %.08.i34.i, 48
  %i.jf = trunc i64 %i.je to i8
  %i.jg = getelementptr inbounds nuw i8, ptr %.056.i36.i, i64 7
  store i8 %i.jf, ptr %i.jd, align 1, !tbaa !13
  %i.jh = lshr i64 %.08.i34.i, 56
  %i.ji = trunc nuw i64 %i.jh to i8
  %i.jj = getelementptr inbounds nuw i8, ptr %.056.i36.i, i64 8
  store i8 %i.ji, ptr %i.jg, align 1, !tbaa !13
  %i.jk = add nsw i32 %.047.i35.i, -8
  %i.jl = icmp sgt i32 %.047.i35.i, 8
  br i1 %i.jl, label %.lr.ph.i33.i, label %from_words52.exit, !llvm.loop !18

bb.n:                                             ; preds = %._crit_edge.i119
  %.not.i120 = icmp eq i32 %.0.lcssa.i, 0
  br i1 %.not.i120, label %from_words52.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.jm = add nsw i32 %.0.lcssa.i, 7
  %i.jn = ashr i32 %i.jm, 3                       ; 5 uses
  %i.jo = icmp sgt i32 %i.jn, 0
  br i1 %i.jo, label %.lr.ph.i38.preheader.i, label %from_words52.exit

.lr.ph.i38.preheader.i:                           ; preds = %bb.o
  %i.jp = load i64, ptr %.032.lcssa.i, align 8, !tbaa !11 ; 2 uses
  %xtraiter = and i32 %i.jn, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i38.i.prol.loopexit, label %.lr.ph.i38.i.prol

.lr.ph.i38.i.prol:                                ; preds = %.lr.ph.i38.preheader.i, %.lr.ph.i38.i.prol
  %.08.i39.i.prol = phi i64 [ %i.js, %.lr.ph.i38.i.prol ], [ %i.jp, %.lr.ph.i38.preheader.i ] ; 2 uses
  %.047.i40.i.prol = phi i32 [ %i.jt, %.lr.ph.i38.i.prol ], [ %i.jn, %.lr.ph.i38.preheader.i ]
  %.056.i41.i.prol = phi ptr [ %i.jr, %.lr.ph.i38.i.prol ], [ %.030.lcssa.i, %.lr.ph.i38.preheader.i ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i38.i.prol ], [ 0, %.lr.ph.i38.preheader.i ]
  %i.jq = trunc i64 %.08.i39.i.prol to i8
  %i.jr = getelementptr inbounds nuw i8, ptr %.056.i41.i.prol, i64 1 ; 2 uses
  store i8 %i.jq, ptr %.056.i41.i.prol, align 1, !tbaa !13
  %i.js = lshr i64 %.08.i39.i.prol, 8             ; 2 uses
  %i.jt = add nsw i32 %.047.i40.i.prol, -1        ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i38.i.prol.loopexit, label %.lr.ph.i38.i.prol, !llvm.loop !19

.lr.ph.i38.i.prol.loopexit:                       ; preds = %.lr.ph.i38.i.prol, %.lr.ph.i38.preheader.i
  %.08.i39.i.unr = phi i64 [ %i.jp, %.lr.ph.i38.preheader.i ], [ %i.js, %.lr.ph.i38.i.prol ]
  %.047.i40.i.unr = phi i32 [ %i.jn, %.lr.ph.i38.preheader.i ], [ %i.jt, %.lr.ph.i38.i.prol ]
  %.056.i41.i.unr = phi ptr [ %.030.lcssa.i, %.lr.ph.i38.preheader.i ], [ %i.jr, %.lr.ph.i38.i.prol ]
  %i.ju = icmp ult i32 %i.jn, 8
  br i1 %i.ju, label %from_words52.exit, label %.lr.ph.i38.i

.lr.ph.i38.i:                                     ; preds = %.lr.ph.i38.i.prol.loopexit, %.lr.ph.i38.i
  %.08.i39.i = phi i64 [ 0, %.lr.ph.i38.i ], [ %.08.i39.i.unr, %.lr.ph.i38.i.prol.loopexit ] ; 8 uses
  %.047.i40.i = phi i32 [ %i.ks, %.lr.ph.i38.i ], [ %.047.i40.i.unr, %.lr.ph.i38.i.prol.loopexit ] ; 2 uses
  %.056.i41.i = phi ptr [ %i.kr, %.lr.ph.i38.i ], [ %.056.i41.i.unr, %.lr.ph.i38.i.prol.loopexit ] ; 9 uses
  %i.jv = trunc i64 %.08.i39.i to i8
  %i.jw = getelementptr inbounds nuw i8, ptr %.056.i41.i, i64 1
  store i8 %i.jv, ptr %.056.i41.i, align 1, !tbaa !13
  %i.jx = lshr i64 %.08.i39.i, 8
  %i.jy = trunc i64 %i.jx to i8
  %i.jz = getelementptr inbounds nuw i8, ptr %.056.i41.i, i64 2
  store i8 %i.jy, ptr %i.jw, align 1, !tbaa !13
  %i.ka = lshr i64 %.08.i39.i, 16
  %i.kb = trunc i64 %i.ka to i8
  %i.kc = getelementptr inbounds nuw i8, ptr %.056.i41.i, i64 3
  store i8 %i.kb, ptr %i.jz, align 1, !tbaa !13
  %i.kd = lshr i64 %.08.i39.i, 24
  %i.ke = trunc i64 %i.kd to i8
  %i.kf = getelementptr inbounds nuw i8, ptr %.056.i41.i, i64 4
  store i8 %i.ke, ptr %i.kc, align 1, !tbaa !13
  %i.kg = lshr i64 %.08.i39.i, 32
  %i.kh = trunc i64 %i.kg to i8
  %i.ki = getelementptr inbounds nuw i8, ptr %.056.i41.i, i64 5
  store i8 %i.kh, ptr %i.kf, align 1, !tbaa !13
  %i.kj = lshr i64 %.08.i39.i, 40
  %i.kk = trunc i64 %i.kj to i8
  %i.kl = getelementptr inbounds nuw i8, ptr %.056.i41.i, i64 6
  store i8 %i.kk, ptr %i.ki, align 1, !tbaa !13
  %i.km = lshr i64 %.08.i39.i, 48
  %i.kn = trunc i64 %i.km to i8
  %i.ko = getelementptr inbounds nuw i8, ptr %.056.i41.i, i64 7
  store i8 %i.kn, ptr %i.kl, align 1, !tbaa !13
  %i.kp = lshr i64 %.08.i39.i, 56
  %i.kq = trunc nuw i64 %i.kp to i8
  %i.kr = getelementptr inbounds nuw i8, ptr %.056.i41.i, i64 8
  store i8 %i.kq, ptr %i.ko, align 1, !tbaa !13
  %i.ks = add nsw i32 %.047.i40.i, -8
  %i.kt = icmp sgt i32 %.047.i40.i, 8
  br i1 %i.kt, label %.lr.ph.i38.i, label %from_words52.exit, !llvm.loop !18

from_words52.exit:                                ; preds = %.lr.ph.i38.i.prol.loopexit, %.lr.ph.i38.i, %.lr.ph.i33.i.prol.loopexit, %.lr.ph.i33.i, %bb.n, %bb.o
  br i1 %i.gr, label %.lr.ph.preheader.i142, label %.preheader.i122

.lr.ph.preheader.i142:                            ; preds = %from_words52.exit
  %i.ku = zext nneg i32 %i.gq to i64
  %i.kv = shl nuw nsw i64 %i.ku, 3
  call void @llvm.memset.p0.i64(ptr align 8 %6, i8 0, i64 %i.kv, i1 false), !tbaa !11
  br label %.preheader.i122

.preheader.i122:                                  ; preds = %.lr.ph.preheader.i142, %from_words52.exit
  br i1 %i.gu, label %.lr.ph48.i138, label %._crit_edge.i123

.lr.ph48.i138:                                    ; preds = %.preheader.i122, %.lr.ph48.i138
  %.047.i139 = phi i32 [ %i.le, %.lr.ph48.i138 ], [ %12, %.preheader.i122 ] ; 2 uses
  %.03046.i140 = phi ptr [ %i.ld, %.lr.ph48.i138 ], [ %6, %.preheader.i122 ] ; 3 uses
  %.03245.i141 = phi ptr [ %i.lf, %.lr.ph48.i138 ], [ %i.ap, %.preheader.i122 ] ; 3 uses
  %i.kw = load i64, ptr %.03245.i141, align 8, !tbaa !11 ; 2 uses
  store i64 %i.kw, ptr %.03046.i140, align 1
  %i.kx = getelementptr inbounds nuw i8, ptr %.03046.i140, i64 6
  %i.ky = lshr i64 %i.kw, 48
  %i.kz = getelementptr inbounds nuw i8, ptr %.03245.i141, i64 8
  %i.la = load i64, ptr %i.kz, align 8, !tbaa !11
  %i.lb = shl i64 %i.la, 4
  %i.lc = or i64 %i.lb, %i.ky
  store i64 %i.lc, ptr %i.kx, align 1
  %i.ld = getelementptr inbounds nuw i8, ptr %.03046.i140, i64 13 ; 2 uses
  %i.le = add nsw i32 %.047.i139, -104            ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %.03245.i141, i64 16 ; 2 uses
  %i.lg = icmp samesign ugt i32 %.047.i139, 207
  br i1 %i.lg, label %.lr.ph48.i138, label %._crit_edge.i123, !llvm.loop !16

._crit_edge.i123:                                 ; preds = %.lr.ph48.i138, %.preheader.i122
  %.032.lcssa.i124 = phi ptr [ %i.ap, %.preheader.i122 ], [ %i.lf, %.lr.ph48.i138 ] ; 3 uses
  %.030.lcssa.i125 = phi ptr [ %6, %.preheader.i122 ], [ %i.ld, %.lr.ph48.i138 ] ; 9 uses
  %.0.lcssa.i126 = phi i32 [ %12, %.preheader.i122 ], [ %i.le, %.lr.ph48.i138 ] ; 4 uses
  %i.lh = icmp sgt i32 %.0.lcssa.i126, 52
  br i1 %i.lh, label %.lr.ph.i.i133, label %bb.p

.lr.ph.i.i133:                                    ; preds = %._crit_edge.i123
  %i.li = load i64, ptr %.032.lcssa.i124, align 8, !tbaa !11 ; 7 uses
  %i.lj = trunc i64 %i.li to i8
  %i.lk = getelementptr inbounds nuw i8, ptr %.030.lcssa.i125, i64 1
  store i8 %i.lj, ptr %.030.lcssa.i125, align 1, !tbaa !13
  %i.ll = lshr i64 %i.li, 8
  %i.lm = trunc i64 %i.ll to i8
  %i.ln = getelementptr inbounds nuw i8, ptr %.030.lcssa.i125, i64 2
  store i8 %i.lm, ptr %i.lk, align 1, !tbaa !13
  %i.lo = lshr i64 %i.li, 16
  %i.lp = trunc i64 %i.lo to i8
  %i.lq = getelementptr inbounds nuw i8, ptr %.030.lcssa.i125, i64 3
  store i8 %i.lp, ptr %i.ln, align 1, !tbaa !13
  %i.lr = lshr i64 %i.li, 24
  %i.ls = trunc i64 %i.lr to i8
  %i.lt = getelementptr inbounds nuw i8, ptr %.030.lcssa.i125, i64 4
  store i8 %i.ls, ptr %i.lq, align 1, !tbaa !13
  %i.lu = lshr i64 %i.li, 32
  %i.lv = trunc i64 %i.lu to i8
  %i.lw = getelementptr inbounds nuw i8, ptr %.030.lcssa.i125, i64 5
  store i8 %i.lv, ptr %i.lt, align 1, !tbaa !13
  %i.lx = lshr i64 %i.li, 40
  %i.ly = trunc i64 %i.lx to i8
  %i.lz = getelementptr inbounds nuw i8, ptr %.030.lcssa.i125, i64 6 ; 3 uses
  store i8 %i.ly, ptr %i.lw, align 1, !tbaa !13
  %i.ma = lshr i64 %i.li, 48                      ; 2 uses
  %i.mb = trunc i64 %i.ma to i8
  store i8 %i.mb, ptr %i.lz, align 1, !tbaa !13
  %i.mc = add nsw i32 %.0.lcssa.i126, -45
  %i.md = lshr i32 %i.mc, 3                       ; 4 uses
  %i.me = getelementptr inbounds nuw i8, ptr %.032.lcssa.i124, i64 8
  %i.mf = load i64, ptr %i.me, align 8, !tbaa !11
  %i.mg = shl i64 %i.mf, 4
  %i.mh = or i64 %i.mg, %i.ma                     ; 2 uses
  %i.mi = add nsw i32 %i.md, -1
  %xtraiter231 = and i32 %i.md, 7                 ; 2 uses
  %lcmp.mod232.not = icmp eq i32 %xtraiter231, 0
  br i1 %lcmp.mod232.not, label %.lr.ph.i33.i134.prol.loopexit, label %.lr.ph.i33.i134.prol

.lr.ph.i33.i134.prol:                             ; preds = %.lr.ph.i.i133, %.lr.ph.i33.i134.prol
  %.08.i34.i135.prol = phi i64 [ %i.ml, %.lr.ph.i33.i134.prol ], [ %i.mh, %.lr.ph.i.i133 ] ; 2 uses
  %.047.i35.i136.prol = phi i32 [ %i.mm, %.lr.ph.i33.i134.prol ], [ %i.md, %.lr.ph.i.i133 ]
  %.056.i36.i137.prol = phi ptr [ %i.mk, %.lr.ph.i33.i134.prol ], [ %i.lz, %.lr.ph.i.i133 ] ; 2 uses
  %prol.iter233 = phi i32 [ %prol.iter233.next, %.lr.ph.i33.i134.prol ], [ 0, %.lr.ph.i.i133 ]
  %i.mj = trunc i64 %.08.i34.i135.prol to i8
  %i.mk = getelementptr inbounds nuw i8, ptr %.056.i36.i137.prol, i64 1 ; 2 uses
  store i8 %i.mj, ptr %.056.i36.i137.prol, align 1, !tbaa !13
  %i.ml = lshr i64 %.08.i34.i135.prol, 8          ; 2 uses
  %i.mm = add nsw i32 %.047.i35.i136.prol, -1     ; 2 uses
  %prol.iter233.next = add i32 %prol.iter233, 1   ; 2 uses
  %prol.iter233.cmp.not = icmp eq i32 %prol.iter233.next, %xtraiter231
  br i1 %prol.iter233.cmp.not, label %.lr.ph.i33.i134.prol.loopexit, label %.lr.ph.i33.i134.prol, !llvm.loop !20

.lr.ph.i33.i134.prol.loopexit:                    ; preds = %.lr.ph.i33.i134.prol, %.lr.ph.i.i133
  %.08.i34.i135.unr = phi i64 [ %i.mh, %.lr.ph.i.i133 ], [ %i.ml, %.lr.ph.i33.i134.prol ]
  %.047.i35.i136.unr = phi i32 [ %i.md, %.lr.ph.i.i133 ], [ %i.mm, %.lr.ph.i33.i134.prol ]
  %.056.i36.i137.unr = phi ptr [ %i.lz, %.lr.ph.i.i133 ], [ %i.mk, %.lr.ph.i33.i134.prol ]
  %i.mn = icmp ult i32 %i.mi, 7
  br i1 %i.mn, label %from_words52.exit143, label %.lr.ph.i33.i134

.lr.ph.i33.i134:                                  ; preds = %.lr.ph.i33.i134.prol.loopexit, %.lr.ph.i33.i134
  %.08.i34.i135 = phi i64 [ 0, %.lr.ph.i33.i134 ], [ %.08.i34.i135.unr, %.lr.ph.i33.i134.prol.loopexit ] ; 8 uses
  %.047.i35.i136 = phi i32 [ %i.nl, %.lr.ph.i33.i134 ], [ %.047.i35.i136.unr, %.lr.ph.i33.i134.prol.loopexit ] ; 2 uses
  %.056.i36.i137 = phi ptr [ %i.nk, %.lr.ph.i33.i134 ], [ %.056.i36.i137.unr, %.lr.ph.i33.i134.prol.loopexit ] ; 9 uses
  %i.mo = trunc i64 %.08.i34.i135 to i8
  %i.mp = getelementptr inbounds nuw i8, ptr %.056.i36.i137, i64 1
  store i8 %i.mo, ptr %.056.i36.i137, align 1, !tbaa !13
  %i.mq = lshr i64 %.08.i34.i135, 8
  %i.mr = trunc i64 %i.mq to i8
  %i.ms = getelementptr inbounds nuw i8, ptr %.056.i36.i137, i64 2
  store i8 %i.mr, ptr %i.mp, align 1, !tbaa !13
  %i.mt = lshr i64 %.08.i34.i135, 16
  %i.mu = trunc i64 %i.mt to i8
  %i.mv = getelementptr inbounds nuw i8, ptr %.056.i36.i137, i64 3
  store i8 %i.mu, ptr %i.ms, align 1, !tbaa !13
  %i.mw = lshr i64 %.08.i34.i135, 24
  %i.mx = trunc i64 %i.mw to i8
  %i.my = getelementptr inbounds nuw i8, ptr %.056.i36.i137, i64 4
  store i8 %i.mx, ptr %i.mv, align 1, !tbaa !13
  %i.mz = lshr i64 %.08.i34.i135, 32
  %i.na = trunc i64 %i.mz to i8
  %i.nb = getelementptr inbounds nuw i8, ptr %.056.i36.i137, i64 5
  store i8 %i.na, ptr %i.my, align 1, !tbaa !13
  %i.nc = lshr i64 %.08.i34.i135, 40
  %i.nd = trunc i64 %i.nc to i8
  %i.ne = getelementptr inbounds nuw i8, ptr %.056.i36.i137, i64 6
  store i8 %i.nd, ptr %i.nb, align 1, !tbaa !13
  %i.nf = lshr i64 %.08.i34.i135, 48
  %i.ng = trunc i64 %i.nf to i8
  %i.nh = getelementptr inbounds nuw i8, ptr %.056.i36.i137, i64 7
  store i8 %i.ng, ptr %i.ne, align 1, !tbaa !13
  %i.ni = lshr i64 %.08.i34.i135, 56
  %i.nj = trunc nuw i64 %i.ni to i8
  %i.nk = getelementptr inbounds nuw i8, ptr %.056.i36.i137, i64 8
  store i8 %i.nj, ptr %i.nh, align 1, !tbaa !13
  %i.nl = add nsw i32 %.047.i35.i136, -8
  %i.nm = icmp sgt i32 %.047.i35.i136, 8
  br i1 %i.nm, label %.lr.ph.i33.i134, label %from_words52.exit143, !llvm.loop !18

bb.p:                                             ; preds = %._crit_edge.i123
  %.not.i127 = icmp eq i32 %.0.lcssa.i126, 0
  br i1 %.not.i127, label %from_words52.exit143, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.nn = add nsw i32 %.0.lcssa.i126, 7
  %i.no = ashr i32 %i.nn, 3                       ; 5 uses
  %i.np = icmp sgt i32 %i.no, 0
  br i1 %i.np, label %.lr.ph.i38.preheader.i128, label %from_words52.exit143

.lr.ph.i38.preheader.i128:                        ; preds = %bb.q
  %i.nq = load i64, ptr %.032.lcssa.i124, align 8, !tbaa !11 ; 2 uses
  %xtraiter228 = and i32 %i.no, 7                 ; 2 uses
  %lcmp.mod229.not = icmp eq i32 %xtraiter228, 0
  br i1 %lcmp.mod229.not, label %.lr.ph.i38.i129.prol.loopexit, label %.lr.ph.i38.i129.prol

.lr.ph.i38.i129.prol:                             ; preds = %.lr.ph.i38.preheader.i128, %.lr.ph.i38.i129.prol
  %.08.i39.i130.prol = phi i64 [ %i.nt, %.lr.ph.i38.i129.prol ], [ %i.nq, %.lr.ph.i38.preheader.i128 ] ; 2 uses
  %.047.i40.i131.prol = phi i32 [ %i.nu, %.lr.ph.i38.i129.prol ], [ %i.no, %.lr.ph.i38.preheader.i128 ]
  %.056.i41.i132.prol = phi ptr [ %i.ns, %.lr.ph.i38.i129.prol ], [ %.030.lcssa.i125, %.lr.ph.i38.preheader.i128 ] ; 2 uses
  %prol.iter230 = phi i32 [ %prol.iter230.next, %.lr.ph.i38.i129.prol ], [ 0, %.lr.ph.i38.preheader.i128 ]
  %i.nr = trunc i64 %.08.i39.i130.prol to i8
  %i.ns = getelementptr inbounds nuw i8, ptr %.056.i41.i132.prol, i64 1 ; 2 uses
  store i8 %i.nr, ptr %.056.i41.i132.prol, align 1, !tbaa !13
  %i.nt = lshr i64 %.08.i39.i130.prol, 8          ; 2 uses
  %i.nu = add nsw i32 %.047.i40.i131.prol, -1     ; 2 uses
  %prol.iter230.next = add i32 %prol.iter230, 1   ; 2 uses
  %prol.iter230.cmp.not = icmp eq i32 %prol.iter230.next, %xtraiter228
  br i1 %prol.iter230.cmp.not, label %.lr.ph.i38.i129.prol.loopexit, label %.lr.ph.i38.i129.prol, !llvm.loop !21

.lr.ph.i38.i129.prol.loopexit:                    ; preds = %.lr.ph.i38.i129.prol, %.lr.ph.i38.preheader.i128
  %.08.i39.i130.unr = phi i64 [ %i.nq, %.lr.ph.i38.preheader.i128 ], [ %i.nt, %.lr.ph.i38.i129.prol ]
  %.047.i40.i131.unr = phi i32 [ %i.no, %.lr.ph.i38.preheader.i128 ], [ %i.nu, %.lr.ph.i38.i129.prol ]
  %.056.i41.i132.unr = phi ptr [ %.030.lcssa.i125, %.lr.ph.i38.preheader.i128 ], [ %i.ns, %.lr.ph.i38.i129.prol ]
  %i.nv = icmp ult i32 %i.no, 8
  br i1 %i.nv, label %from_words52.exit143, label %.lr.ph.i38.i129

.lr.ph.i38.i129:                                  ; preds = %.lr.ph.i38.i129.prol.loopexit, %.lr.ph.i38.i129
  %.08.i39.i130 = phi i64 [ 0, %.lr.ph.i38.i129 ], [ %.08.i39.i130.unr, %.lr.ph.i38.i129.prol.loopexit ] ; 8 uses
  %.047.i40.i131 = phi i32 [ %i.ot, %.lr.ph.i38.i129 ], [ %.047.i40.i131.unr, %.lr.ph.i38.i129.prol.loopexit ] ; 2 uses
  %.056.i41.i132 = phi ptr [ %i.os, %.lr.ph.i38.i129 ], [ %.056.i41.i132.unr, %.lr.ph.i38.i129.prol.loopexit ] ; 9 uses
  %i.nw = trunc i64 %.08.i39.i130 to i8
  %i.nx = getelementptr inbounds nuw i8, ptr %.056.i41.i132, i64 1
  store i8 %i.nw, ptr %.056.i41.i132, align 1, !tbaa !13
  %i.ny = lshr i64 %.08.i39.i130, 8
  %i.nz = trunc i64 %i.ny to i8
  %i.oa = getelementptr inbounds nuw i8, ptr %.056.i41.i132, i64 2
  store i8 %i.nz, ptr %i.nx, align 1, !tbaa !13
  %i.ob = lshr i64 %.08.i39.i130, 16
  %i.oc = trunc i64 %i.ob to i8
  %i.od = getelementptr inbounds nuw i8, ptr %.056.i41.i132, i64 3
  store i8 %i.oc, ptr %i.oa, align 1, !tbaa !13
  %i.oe = lshr i64 %.08.i39.i130, 24
  %i.of = trunc i64 %i.oe to i8
  %i.og = getelementptr inbounds nuw i8, ptr %.056.i41.i132, i64 4
  store i8 %i.of, ptr %i.od, align 1, !tbaa !13
  %i.oh = lshr i64 %.08.i39.i130, 32
  %i.oi = trunc i64 %i.oh to i8
  %i.oj = getelementptr inbounds nuw i8, ptr %.056.i41.i132, i64 5
  store i8 %i.oi, ptr %i.og, align 1, !tbaa !13
  %i.ok = lshr i64 %.08.i39.i130, 40
  %i.ol = trunc i64 %i.ok to i8
  %i.om = getelementptr inbounds nuw i8, ptr %.056.i41.i132, i64 6
  store i8 %i.ol, ptr %i.oj, align 1, !tbaa !13
  %i.on = lshr i64 %.08.i39.i130, 48
  %i.oo = trunc i64 %i.on to i8
  %i.op = getelementptr inbounds nuw i8, ptr %.056.i41.i132, i64 7
  store i8 %i.oo, ptr %i.om, align 1, !tbaa !13
  %i.oq = lshr i64 %.08.i39.i130, 56
  %i.or = trunc nuw i64 %i.oq to i8
  %i.os = getelementptr inbounds nuw i8, ptr %.056.i41.i132, i64 8
  store i8 %i.or, ptr %i.op, align 1, !tbaa !13
  %i.ot = add nsw i32 %.047.i40.i131, -8
  %i.ou = icmp sgt i32 %.047.i40.i131, 8
  br i1 %i.ou, label %.lr.ph.i38.i129, label %from_words52.exit143, !llvm.loop !18

from_words52.exit143:                             ; preds = %.lr.ph.i38.i129.prol.loopexit, %.lr.ph.i38.i129, %.lr.ph.i33.i134.prol.loopexit, %.lr.ph.i33.i134, %bb.p, %bb.q
  %i.ov = lshr exact i32 %12, 6                   ; 3 uses
  %i.ow = zext nneg i32 %i.ov to i64              ; 6 uses
  %i.ox = call i64 @bn_sub_words(ptr noundef nonnull %i.w, ptr noundef %0, ptr noundef %3, i32 noundef %i.ov) #6 ; 2 uses
  %i.oy = sub i64 0, %i.ox
  %i.oz = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.oy) #8, !srcloc !29 ; 2 uses
  %i.pa = add i64 %i.ox, -1
  %i.pb = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.pa) #8, !srcloc !29 ; 2 uses
  %min.iters.check = icmp ult i32 %12, 256
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %from_words52.exit143
  %n.vec = and i64 %i.ow, 67108860                ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.oz, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert195 = insertelement <2 x i64> poison, i64 %i.pb, i64 0
  %broadcast.splat196 = shufflevector <2 x i64> %broadcast.splatinsert195, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.pc = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.pc, align 8, !tbaa !11
  %wide.load197 = load <2 x i64>, ptr %i.pd, align 8, !tbaa !11
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %index ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 16
  %wide.load198 = load <2 x i64>, ptr %i.pe, align 8, !tbaa !11
  %wide.load199 = load <2 x i64>, ptr %i.pf, align 8, !tbaa !11
  %i.pg = and <2 x i64> %wide.load, %broadcast.splat
  %i.ph = and <2 x i64> %wide.load197, %broadcast.splat
  %i.pi = and <2 x i64> %wide.load198, %broadcast.splat196
  %i.pj = and <2 x i64> %wide.load199, %broadcast.splat196
  %i.pk = or <2 x i64> %i.pi, %i.pg
  %i.pl = or <2 x i64> %i.pj, %i.ph
  store <2 x i64> %i.pk, ptr %i.pc, align 8, !tbaa !11
  store <2 x i64> %i.pl, ptr %i.pd, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.pm = icmp eq i64 %index.next, %n.vec
  br i1 %i.pm, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ow
  br i1 %cmp.n, label %.lr.ph.i.i146, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %from_words52.exit143, %middle.block
  %.09.i.i.ph = phi i64 [ 0, %from_words52.exit143 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.09.i.i = phi i64 [ %i.pu, %scalar.ph ], [ %.09.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.pn = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.09.i.i ; 2 uses
  %i.po = load i64, ptr %i.pn, align 8, !tbaa !11
  %i.pp = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.09.i.i
  %i.pq = load i64, ptr %i.pp, align 8, !tbaa !11
  %i.pr = and i64 %i.po, %i.oz
  %i.ps = and i64 %i.pq, %i.pb
  %i.pt = or i64 %i.ps, %i.pr
  store i64 %i.pt, ptr %i.pn, align 8, !tbaa !11
  %i.pu = add nuw i64 %.09.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.pu, %i.ow
  br i1 %exitcond.not.i.i, label %.lr.ph.i.i146, label %scalar.ph, !llvm.loop !23

.lr.ph.i.i146:                                    ; preds = %scalar.ph, %middle.block
  %i.pv = call i64 @bn_sub_words(ptr noundef nonnull %i.w, ptr noundef %6, ptr noundef %9, i32 noundef %i.ov) #6 ; 2 uses
  %i.pw = sub i64 0, %i.pv
  %i.px = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.pw) #8, !srcloc !29 ; 2 uses
  %i.py = add i64 %i.pv, -1
  %i.pz = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.py) #8, !srcloc !29 ; 2 uses
  %min.iters.check201 = icmp ult i32 %12, 256
  br i1 %min.iters.check201, label %scalar.ph200.preheader, label %vector.ph202

vector.ph202:                                     ; preds = %.lr.ph.i.i146
  %n.vec203 = and i64 %i.ow, 67108860             ; 3 uses
  %broadcast.splatinsert204 = insertelement <2 x i64> poison, i64 %i.px, i64 0
  %broadcast.splat205 = shufflevector <2 x i64> %broadcast.splatinsert204, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert206 = insertelement <2 x i64> poison, i64 %i.pz, i64 0
  %broadcast.splat207 = shufflevector <2 x i64> %broadcast.splatinsert206, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body208

vector.body208:                                   ; preds = %vector.body208, %vector.ph202
  %index209 = phi i64 [ 0, %vector.ph202 ], [ %index.next214, %vector.body208 ] ; 3 uses
  %i.qa = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %index209 ; 3 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 16 ; 2 uses
  %wide.load210 = load <2 x i64>, ptr %i.qa, align 8, !tbaa !11
  %wide.load211 = load <2 x i64>, ptr %i.qb, align 8, !tbaa !11
  %i.qc = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %index209 ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 16
  %wide.load212 = load <2 x i64>, ptr %i.qc, align 8, !tbaa !11
  %wide.load213 = load <2 x i64>, ptr %i.qd, align 8, !tbaa !11
  %i.qe = and <2 x i64> %wide.load210, %broadcast.splat205
  %i.qf = and <2 x i64> %wide.load211, %broadcast.splat205
  %i.qg = and <2 x i64> %wide.load212, %broadcast.splat207
  %i.qh = and <2 x i64> %wide.load213, %broadcast.splat207
  %i.qi = or <2 x i64> %i.qg, %i.qe
  %i.qj = or <2 x i64> %i.qh, %i.qf
  store <2 x i64> %i.qi, ptr %i.qa, align 8, !tbaa !11
  store <2 x i64> %i.qj, ptr %i.qb, align 8, !tbaa !11
  %index.next214 = add nuw i64 %index209, 4       ; 2 uses
  %i.qk = icmp eq i64 %index.next214, %n.vec203
  br i1 %i.qk, label %middle.block215, label %vector.body208, !llvm.loop !24

middle.block215:                                  ; preds = %vector.body208
  %cmp.n216 = icmp eq i64 %n.vec203, %i.ow
  br i1 %cmp.n216, label %RSAZ_mod_exp_x2_ifma256.exit.thread, label %scalar.ph200.preheader

scalar.ph200.preheader:                           ; preds = %.lr.ph.i.i146, %middle.block215
  %.09.i.i147.ph = phi i64 [ 0, %.lr.ph.i.i146 ], [ %n.vec203, %middle.block215 ]
  br label %scalar.ph200

scalar.ph200:                                     ; preds = %scalar.ph200.preheader, %scalar.ph200
  %.09.i.i147 = phi i64 [ %i.qs, %scalar.ph200 ], [ %.09.i.i147.ph, %scalar.ph200.preheader ] ; 3 uses
  %i.ql = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.09.i.i147 ; 2 uses
  %i.qm = load i64, ptr %i.ql, align 8, !tbaa !11
  %i.qn = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.09.i.i147
  %i.qo = load i64, ptr %i.qn, align 8, !tbaa !11
  %i.qp = and i64 %i.qm, %i.px
  %i.qq = and i64 %i.qo, %i.pz
  %i.qr = or i64 %i.qq, %i.qp
  store i64 %i.qr, ptr %i.ql, align 8, !tbaa !11
  %i.qs = add nuw i64 %.09.i.i147, 1              ; 2 uses
  %exitcond.not.i.i148 = icmp eq i64 %i.qs, %i.ow
  br i1 %exitcond.not.i.i148, label %RSAZ_mod_exp_x2_ifma256.exit.thread, label %scalar.ph200, !llvm.loop !25

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
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.050 = phi ptr [ %i.j, %.lr.ph ], [ %0, %bb.a ] ; 3 uses
  %.03349 = phi i32 [ %i.h, %.lr.ph ], [ %1, %bb.a ]
  %.03548 = phi ptr [ %i.g, %.lr.ph ], [ %2, %bb.a ] ; 3 uses
  %.03647 = phi i32 [ %i.i, %.lr.ph ], [ %3, %bb.a ] ; 2 uses
  %.0.copyload = load i64, ptr %.03548, align 1
  %i.b = and i64 %.0.copyload, 4503599627370495
  store i64 %i.b, ptr %.050, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %.03548, i64 6
  %.0.copyload3 = load i64, ptr %i.c, align 1
  %i.d = lshr i64 %.0.copyload3, 4
  %i.e = and i64 %i.d, 4503599627370495
  %i.f = getelementptr inbounds nuw i8, ptr %.050, i64 8
  store i64 %i.e, ptr %i.f, align 8, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %.03548, i64 13 ; 2 uses
  %i.h = add nsw i32 %.03349, -2                  ; 2 uses
  %i.i = add nsw i32 %.03647, -104                ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.050, i64 16 ; 2 uses
  %i.k = icmp samesign ugt i32 %.03647, 207
  br i1 %i.k, label %.lr.ph, label %._crit_edge, !llvm.loop !32

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.036.lcssa = phi i32 [ %3, %bb.a ], [ %i.i, %.lr.ph ] ; 4 uses
  %.035.lcssa = phi ptr [ %2, %bb.a ], [ %i.g, %.lr.ph ] ; 9 uses
  %.033.lcssa = phi i32 [ %1, %bb.a ], [ %i.h, %.lr.ph ] ; 3 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.j, %.lr.ph ] ; 6 uses
  %i.l = icmp sgt i32 %.036.lcssa, 52
  br i1 %i.l, label %.preheader.preheader, label %bb.c

.preheader.preheader:                             ; preds = %._crit_edge
  %i.m = getelementptr i8, ptr %.035.lcssa, i64 6
  %i.n = load i8, ptr %i.m, align 1, !tbaa !13
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr i8, ptr %.035.lcssa, i64 5
  %i.q = load i8, ptr %i.p, align 1, !tbaa !13
  %i.r = zext i8 %i.q to i64
  %i.s = shl nuw nsw i64 %i.o, 16
  %i.t = shl nuw nsw i64 %i.r, 8
  %i.u = or disjoint i64 %i.s, %i.t
  %i.v = getelementptr i8, ptr %.035.lcssa, i64 4
  %i.w = load i8, ptr %i.v, align 1, !tbaa !13
  %i.x = zext i8 %i.w to i64
  %i.y = or disjoint i64 %i.u, %i.x
  %i.z = getelementptr i8, ptr %.035.lcssa, i64 3
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !13
  %i.ab = zext i8 %i.aa to i64
  %i.ac = shl nuw nsw i64 %i.y, 16
  %i.ad = shl nuw nsw i64 %i.ab, 8
  %i.ae = or disjoint i64 %i.ac, %i.ad
  %i.af = getelementptr i8, ptr %.035.lcssa, i64 2
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !13
  %i.ah = zext i8 %i.ag to i64
  %i.ai = or disjoint i64 %i.ae, %i.ah
  %i.aj = getelementptr i8, ptr %.035.lcssa, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !13
  %i.al = zext i8 %i.ak to i64
  %i.am = shl nuw nsw i64 %i.ai, 16
  %i.an = shl nuw nsw i64 %i.al, 8
  %i.ao = load i8, ptr %.035.lcssa, align 1, !tbaa !13
  %i.ap = zext i8 %i.ao to i64
  %.masked61 = and i64 %i.am, 4503599627304960
  %.masked = or disjoint i64 %.masked61, %i.an
  %i.aq = or disjoint i64 %.masked, %i.ap
  store i64 %i.aq, ptr %.0.lcssa, align 8, !tbaa !11
  %i.ar = add nsw i32 %.036.lcssa, -45
  %i.as = lshr i32 %i.ar, 3
  %i.at = zext nneg i32 %i.as to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader.preheader
  %indvars.iv.i37.a = phi i64 [ %i.at, %.preheader.preheader ], [ %indvars.iv.next.i39, %bb.b ] ; 3 uses
  %.08.i38.a = phi i64 [ 0, %.preheader.preheader ], [ %i.az, %bb.b ]
  %i.au = shl i64 %.08.i38.a, 8
  %i.av = getelementptr i8, ptr %.035.lcssa, i64 %indvars.iv.i37.a
  %i.aw = getelementptr i8, ptr %i.av, i64 5
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !13
  %i.ay = zext i8 %i.ax to i64
  %i.az = or disjoint i64 %i.au, %i.ay            ; 2 uses
  %indvars.iv.next.i39 = add nsw i64 %indvars.iv.i37.a, -1
  %4 = icmp samesign ugt i64 %indvars.iv.i37.a, 1
  br i1 %4, label %bb.b, label %get_digit.exit40, !llvm.loop !33

get_digit.exit40:                                 ; preds = %bb.b
  %i.ba = lshr i64 %i.az, 4
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 8
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !11
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 16
  %i.bd = add nsw i32 %.033.lcssa, -2
  br label %bb.f

bb.c:                                             ; preds = %._crit_edge
  %i.be = icmp sgt i32 %.036.lcssa, 0
  br i1 %i.be, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.bf = add nuw nsw i32 %.036.lcssa, 7
  %i.bg = lshr i32 %i.bf, 3
  %i.bh = zext nneg i32 %i.bg to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %indvars.iv.i41.a = phi i64 [ %i.bh, %bb.d ], [ %indvars.iv.next.i43, %bb.e ] ; 3 uses
  %.08.i42.a = phi i64 [ 0, %bb.d ], [ %i.bn, %bb.e ]
  %i.bi = shl i64 %.08.i42.a, 8
  %i.bj = getelementptr i8, ptr %.035.lcssa, i64 %indvars.iv.i41.a
  %i.bk = getelementptr i8, ptr %i.bj, i64 -1
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !13
  %i.bm = zext i8 %i.bl to i64
  %i.bn = or disjoint i64 %i.bi, %i.bm            ; 2 uses
  %indvars.iv.next.i43 = add nsw i64 %indvars.iv.i41.a, -1
  %5 = icmp samesign ugt i64 %indvars.iv.i41.a, 1
  br i1 %5, label %bb.e, label %get_digit.exit44, !llvm.loop !33

get_digit.exit44:                                 ; preds = %bb.e
  store i64 %i.bn, ptr %.0.lcssa, align 8, !tbaa !11
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

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"long", !6, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!6, !6, i64 0}
!14 = distinct !{null}
!15 = distinct !{!15, !12}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !28}
!18 = distinct !{!18, !12}
!19 = distinct !{!19, !28}
!20 = distinct !{!20, !28}
!21 = distinct !{!21, !28}
!22 = distinct !{!22, !12, !30, !31}
!23 = distinct !{!23, !12, !31, !30}
!24 = distinct !{!24, !12, !30, !31}
!25 = distinct !{!25, !12, !31, !30}
!26 = !{!"any pointer", !6, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!"llvm.loop.unroll.disable"}
!29 = !{i64 795263}
!30 = !{!"llvm.loop.isvectorized", i32 1}
!31 = !{!"llvm.loop.unroll.runtime.disable"}
!32 = distinct !{!32, !12}
!33 = distinct !{!33, !12}
end_hunk_0
