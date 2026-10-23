Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/rsaz_exp_x2?download=true
inline.NumInlined: 17
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
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
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !28   ; 4 uses
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
  %13 = sdiv i32 %i.e, 13
  %14 = shl nsw i32 %13, 6
  %i.av = srem i32 %i.f, 52
  %i.aw = add nsw i32 %14, %i.av                  ; 2 uses
  %i.ax = sdiv i32 %i.aw, 64
  %15 = srem i32 %i.aw, 64
  %i.ay = zext nneg i32 %15 to i64
  %i.az = shl nuw i64 1, %i.ay
  %i.ba = sext i32 %i.ax to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.ba ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !11
  %i.bd = or i64 %i.bc, %i.az
  store i64 %i.bd, ptr %i.bb, align 8, !tbaa !11
  tail call void %i.u(ptr noundef nonnull %i.am, ptr noundef nonnull %i.am, ptr noundef nonnull %i.am, ptr noundef nonnull %i.ag, i64 noundef %5) #7
  tail call void %i.u(ptr noundef nonnull %i.am, ptr noundef nonnull %i.am, ptr noundef nonnull %i.as, ptr noundef nonnull %i.ag, i64 noundef %5) #7
  tail call void %i.u(ptr noundef nonnull %i.ap, ptr noundef nonnull %i.ap, ptr noundef nonnull %i.ap, ptr noundef nonnull %i.aj, i64 noundef %11) #7
  tail call void %i.u(ptr noundef nonnull %i.ap, ptr noundef nonnull %i.ap, ptr noundef nonnull %i.as, ptr noundef nonnull %i.aj, i64 noundef %11) #7
  store i64 %5, ptr %i.a, align 16, !tbaa !11
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %11, ptr %i.be, align 8, !tbaa !11
  %i.bf = tail call i32 @ossl_rsaz_avx512ifma_eligible() #7
  switch i32 %12, label %RSAZ_mod_exp_x2_ifma256.exit.thread [
    i32 2048, label %bb.d
    i32 1536, label %bb.d
    i32 1024, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c
  %i.bg = icmp ne i32 %i.bf, 0
  %i.bh = zext i1 %i.bg to i32
  %i.bi = add nuw nsw i32 %i.q, %i.bh
  %i.bj = zext nneg i32 %i.bi to i64              ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr @ossl_rsaz_amm52_x2, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !28 ; 39 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr @ossl_extract_multiplier_win5, i64 %i.bj
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !28 ; 2 uses
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
  %i.bo = mul nuw nsw i32 %.0211.i, 68
  %i.bp = or disjoint i32 %.0210.i, 1             ; 6 uses
  %i.bq = shl nuw nsw i32 %i.bp, 1                ; 2 uses
  %i.br = add nuw nsw i32 %i.bq, %i.bo
  %i.bs = shl nuw nsw i32 %i.br, 3
  %narrow.i = or disjoint i32 %i.bs, 64
  %i.bt = zext nneg i32 %narrow.i to i64          ; 2 uses
  %i.bu = tail call noalias ptr @CRYPTO_zalloc(i64 noundef %i.bt, ptr noundef nonnull @.str, i32 noundef 425) #7 ; 5 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %RSAZ_mod_exp_x2_ifma256.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bw = shl nuw nsw i32 %.0211.i, 1
  %i.bx = ptrtoint ptr %i.bu to i64
  %i.by = and i64 %i.bx, 63
  %i.bz = sub nuw nsw i64 64, %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bz ; 20 uses
  %i.cb = zext nneg i32 %i.bw to i64              ; 18 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cb ; 9 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cb ; 49 uses
  store i64 1, ptr %i.cc, align 8, !tbaa !11
  %i.ce = zext nneg i32 %.0211.i to i64           ; 31 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.ce ; 2 uses
  store i64 1, ptr %i.cf, align 8, !tbaa !11
  call void %i.bl(ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cc, ptr noundef nonnull %i.am, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !15
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cb ; 18 uses
  call void %i.bl(ptr noundef nonnull %i.cg, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.am, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !15
  %.idx.i = shl nuw nsw i64 %i.ce, 5
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx.i ; 2 uses
  call void %i.bl(ptr noundef nonnull %i.ch, ptr noundef nonnull %i.cg, ptr noundef nonnull %i.cg, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !15
  %.idx18.i = mul nuw nsw i64 %i.ce, 48
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx18.i
  call void %i.bl(ptr noundef nonnull %i.ci, ptr noundef nonnull %i.ch, ptr noundef nonnull %i.cg, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !15
  %.idx19.i = shl nuw nsw i64 %i.ce, 6
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx19.i ; 2 uses
  %.idx20.i = shl nuw nsw i64 %i.cb, 4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx20.i ; 2 uses
  call void %i.bl(ptr noundef nonnull %i.cj, ptr noundef nonnull %i.ck, ptr noundef nonnull %i.ck, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !15
  %.idx21.i = mul nuw nsw i64 %i.ce, 80
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx21.i
  call void %i.bl(ptr noundef nonnull %i.cl, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.cg, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !15
  %.idx22.i = mul nuw nsw i64 %i.ce, 96
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx22.i ; 2 uses
  %.idx23.i = mul nuw nsw i64 %i.cb, 24
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx23.i ; 2 uses
  call void %i.bl(ptr noundef nonnull %i.cm, ptr noundef nonnull %i.cn, ptr noundef nonnull %i.cn, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !15
  %.idx24.i = mul nuw nsw i64 %i.ce, 112
  %i.co = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx24.i
  call void %i.bl(ptr noundef nonnull %i.co, ptr noundef nonnull %i.cm, ptr noundef nonnull %i.cg, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !15
  %.idx25.i = shl nuw nsw i64 %i.ce, 7
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx25.i ; 2 uses
  %.idx26.i = shl nuw nsw i64 %i.cb, 5
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx26.i ; 2 uses
  call void %i.bl(ptr noundef nonnull %i.cp, ptr noundef nonnull %i.cq, ptr noundef nonnull %i.cq, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !15
  %.idx27.i = mul nuw nsw i64 %i.ce, 144
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx27.i
  call void %i.bl(ptr noundef nonnull %i.cr, ptr noundef nonnull %i.cp, ptr noundef nonnull %i.cg, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !15
  %.idx28.i = mul nuw nsw i64 %i.ce, 160
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx28.i ; 2 uses
  %.idx29.i = mul nuw nsw i64 %i.cb, 40
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx29.i ; 2 uses
  call void %i.bl(ptr noundef nonnull %i.cs, ptr noundef nonnull %i.ct, ptr noundef nonnull %i.ct, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !15
  %.idx30.i = mul nuw nsw i64 %i.ce, 176
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx30.i
  call void %i.bl(ptr noundef nonnull %i.cu, ptr noundef nonnull %i.cs, ptr noundef nonnull %i.cg, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !15
  %.idx31.i = mul nuw nsw i64 %i.ce, 192
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx31.i ; 2 uses
  %.idx32.i = mul nuw nsw i64 %i.cb, 48
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx32.i ; 2 uses
  call void %i.bl(ptr noundef nonnull %i.cv, ptr noundef nonnull %i.cw, ptr noundef nonnull %i.cw, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !15
  %.idx33.i = mul nuw nsw i64 %i.ce, 208
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx33.i
  call void %i.bl(ptr noundef nonnull %i.cx, ptr noundef nonnull %i.cv, ptr noundef nonnull %i.cg, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !15
  %.idx34.i = mul nuw nsw i64 %i.ce, 224
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx34.i ; 2 uses
  %.idx35.i = mul nuw nsw i64 %i.cb, 56
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx35.i ; 2 uses
  call void %i.bl(ptr noundef nonnull %i.cy, ptr noundef nonnull %i.cz, ptr noundef nonnull %i.cz, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !15
  %.idx36.i = mul nuw nsw i64 %i.ce, 240
  %i.da = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx36.i
  call void %i.bl(ptr noundef nonnull %i.da, ptr noundef nonnull %i.cy, ptr noundef nonnull %i.cg, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !15
  %.idx37.i = shl nuw nsw i64 %i.ce, 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx37.i ; 2 uses
  %.idx38.i = shl nuw nsw i64 %i.cb, 6
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx38.i ; 2 uses
  call void %i.bl(ptr noundef nonnull %i.db, ptr noundef nonnull %i.dc, ptr noundef nonnull %i.dc, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !15
  %.idx39.i = mul nuw nsw i64 %i.ce, 272
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx39.i
  call void %i.bl(ptr noundef nonnull %i.dd, ptr noundef nonnull %i.db, ptr noundef nonnull %i.cg, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !15
  %.idx40.i = mul nuw nsw i64 %i.ce, 288
  %i.de = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx40.i ; 2 uses
  %.idx41.i = mul nuw nsw i64 %i.cb, 72
  %i.df = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx41.i ; 2 uses
  call void %i.bl(ptr noundef nonnull %i.de, ptr noundef nonnull %i.df, ptr noundef nonnull %i.df, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !15
  %.idx42.i = mul nuw nsw i64 %i.ce, 304
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx42.i
  call void %i.bl(ptr noundef nonnull %i.dg, ptr noundef nonnull %i.de, ptr noundef nonnull %i.cg, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !15
  %.idx43.i = mul nuw nsw i64 %i.ce, 320
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx43.i ; 2 uses
  %.idx44.i = mul nuw nsw i64 %i.cb, 80
  %i.di = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx44.i ; 2 uses
  call void %i.bl(ptr noundef nonnull %i.dh, ptr noundef nonnull %i.di, ptr noundef nonnull %i.di, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !15
  %.idx45.i = mul nuw nsw i64 %i.ce, 336
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx45.i
  call void %i.bl(ptr noundef nonnull %i.dj, ptr noundef nonnull %i.dh, ptr noundef nonnull %i.cg, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !15
  %.idx46.i = mul nuw nsw i64 %i.ce, 352
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx46.i ; 2 uses
  %.idx47.i = mul nuw nsw i64 %i.cb, 88
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx47.i ; 2 uses
  call void %i.bl(ptr noundef nonnull %i.dk, ptr noundef nonnull %i.dl, ptr noundef nonnull %i.dl, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !15
  %.idx48.i = mul nuw nsw i64 %i.ce, 368
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx48.i
  call void %i.bl(ptr noundef nonnull %i.dm, ptr noundef nonnull %i.dk, ptr noundef nonnull %i.cg, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !15
  %.idx49.i = mul nuw nsw i64 %i.ce, 384
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx49.i ; 2 uses
  %.idx50.i = mul nuw nsw i64 %i.cb, 96
  %i.do = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx50.i ; 2 uses
  call void %i.bl(ptr noundef nonnull %i.dn, ptr noundef nonnull %i.do, ptr noundef nonnull %i.do, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !15
  %.idx51.i = mul nuw nsw i64 %i.ce, 400
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx51.i
  call void %i.bl(ptr noundef nonnull %i.dp, ptr noundef nonnull %i.dn, ptr noundef nonnull %i.cg, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !15
  %.idx52.i = mul nuw nsw i64 %i.ce, 416
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx52.i ; 2 uses
  %.idx53.i = mul nuw nsw i64 %i.cb, 104
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx53.i ; 2 uses
  call void %i.bl(ptr noundef nonnull %i.dq, ptr noundef nonnull %i.dr, ptr noundef nonnull %i.dr, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !15
  %.idx54.i = mul nuw nsw i64 %i.ce, 432
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx54.i
  call void %i.bl(ptr noundef nonnull %i.ds, ptr noundef nonnull %i.dq, ptr noundef nonnull %i.cg, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !15
  %.idx55.i = mul nuw nsw i64 %i.ce, 448
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx55.i ; 2 uses
  %.idx56.i = mul nuw nsw i64 %i.cb, 112
  %i.du = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx56.i ; 2 uses
  call void %i.bl(ptr noundef nonnull %i.dt, ptr noundef nonnull %i.du, ptr noundef nonnull %i.du, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !15
  %.idx57.i = mul nuw nsw i64 %i.ce, 464
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx57.i
  call void %i.bl(ptr noundef nonnull %i.dv, ptr noundef nonnull %i.dt, ptr noundef nonnull %i.cg, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !15
  %.idx58.i = mul nuw nsw i64 %i.ce, 480
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx58.i ; 2 uses
  %.idx59.i = mul nuw nsw i64 %i.cb, 120
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx59.i ; 2 uses
  call void %i.bl(ptr noundef nonnull %i.dw, ptr noundef nonnull %i.dx, ptr noundef nonnull %i.dx, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !15
  %.idx60.i = mul nuw nsw i64 %i.ce, 496
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx60.i
  call void %i.bl(ptr noundef nonnull %i.dy, ptr noundef nonnull %i.dw, ptr noundef nonnull %i.cg, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !15
  %i.dz = shl nuw nsw i32 %.0211.i, 6
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.ea ; 11 uses
  %i.ec = zext nneg i32 %.0210.i to i64           ; 2 uses
  %i.ed = shl nuw nsw i64 %i.ec, 3                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.eb, ptr noundef nonnull readonly align 8 dereferenceable(1) %2, i64 %i.ed, i1 false)
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.ec
  store i64 0, ptr %i.ee, align 8, !tbaa !11
  %i.ef = zext nneg i32 %i.bp to i64
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.ef
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.eg, ptr noundef nonnull readonly align 8 dereferenceable(1) %8, i64 %i.ed, i1 false)
  %i.eh = zext nneg i32 %i.bq to i64
  %i.ei = getelementptr [8 x i8], ptr %i.eb, i64 %i.eh
  %i.ej = getelementptr i8, ptr %i.ei, i64 -8
  store i64 0, ptr %i.ej, align 8, !tbaa !11
  %.lhs.trunc.i = trunc nuw nsw i32 %12 to i16
  %16 = urem i16 %.lhs.trunc.i, 5                 ; 2 uses
  %.not.i = icmp eq i16 %16, 0
  br i1 %.not.i, label %bb.i, label %.lr.ph.preheader.i

bb.i:                                             ; preds = %bb.h
  call void @OPENSSL_die(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 478) #8
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.h
  %.zext.i = zext nneg i16 %16 to i32
  %i.ek = sub nuw nsw i32 %12, %.zext.i           ; 3 uses
  %i.el = and i32 %i.ek, 63
  %i.em = lshr i32 %i.ek, 6                       ; 2 uses
  %i.en = zext nneg i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.en
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !11
  %i.eq = add nuw nsw i32 %i.bp, %i.em
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.er
  %i.et = load i64, ptr %i.es, align 8, !tbaa !11
  %i.eu = zext nneg i32 %i.el to i64              ; 2 uses
  %i.ev = lshr i64 %i.ep, %i.eu
  %i.ew = lshr i64 %i.et, %i.eu
  %i.ex = trunc i64 %i.ev to i32
  %i.ey = trunc i64 %i.ew to i32
  call void %i.bn(ptr noundef nonnull %i.ca, ptr noundef nonnull %i.cd, i32 noundef %i.ex, i32 noundef %i.ey) #7, !inline_history !15
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.preheader.i
  %.020712.in.i = phi i32 [ %.020712.i, %bb.l ], [ %i.ek, %.lr.ph.preheader.i ] ; 2 uses
  %.020712.i = add nsw i32 %.020712.in.i, -5      ; 3 uses
  %i.ez = lshr i32 %.020712.i, 6                  ; 4 uses
  %i.fa = and i32 %.020712.i, 63                  ; 3 uses
  %i.fb = zext nneg i32 %i.ez to i64
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.fb
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !11
  %i.fe = zext nneg i32 %i.fa to i64              ; 3 uses
  %i.ff = lshr i64 %i.fd, %i.fe                   ; 2 uses
  %i.fg = icmp samesign ugt i32 %i.fa, 59
  br i1 %i.fg, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i
  %i.fh = add nuw nsw i32 %i.ez, %i.bp
  %i.fi = zext nneg i32 %i.fh to i64
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.fi
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !11
  %i.fl = lshr i64 %i.fk, %i.fe
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph.i
  %i.fm = add nuw nsw i32 %i.ez, 1                ; 2 uses
  %i.fn = zext nneg i32 %i.fm to i64
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.fn
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !11
  %i.fq = sub nuw nsw i32 64, %i.fa
  %i.fr = zext nneg i32 %i.fq to i64              ; 2 uses
  %i.fs = shl i64 %i.fp, %i.fr
  %i.ft = xor i64 %i.fs, %i.ff
  %i.fu = add nuw nsw i32 %i.ez, %i.bp
  %i.fv = zext nneg i32 %i.fu to i64
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.fv
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !11
  %i.fy = lshr i64 %i.fx, %i.fe
  %i.fz = add nuw nsw i32 %i.fm, %i.bp
  %i.ga = zext nneg i32 %i.fz to i64
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.ga
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !11
  %i.gd = shl i64 %i.gc, %i.fr
  %i.ge = xor i64 %i.gd, %i.fy
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.02062.i = phi i64 [ %i.ft, %bb.k ], [ %i.ff, %bb.j ]
  %.0.i = phi i64 [ %i.ge, %bb.k ], [ %i.fl, %bb.j ]
  %i.gf = trunc i64 %.02062.i to i32
  %i.gg = and i32 %i.gf, 31
  %i.gh = trunc i64 %.0.i to i32
  %i.gi = and i32 %i.gh, 31
  call void %i.bn(ptr noundef nonnull %i.cc, ptr noundef nonnull %i.cd, i32 noundef %i.gg, i32 noundef %i.gi) #7, !inline_history !15
  call void %i.bl(ptr noundef nonnull %i.ca, ptr noundef nonnull %i.ca, ptr noundef nonnull %i.ca, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !15
  call void %i.bl(ptr noundef nonnull %i.ca, ptr noundef nonnull %i.ca, ptr noundef nonnull %i.ca, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !15
  call void %i.bl(ptr noundef nonnull %i.ca, ptr noundef nonnull %i.ca, ptr noundef nonnull %i.ca, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !15
  call void %i.bl(ptr noundef nonnull %i.ca, ptr noundef nonnull %i.ca, ptr noundef nonnull %i.ca, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !15
  call void %i.bl(ptr noundef nonnull %i.ca, ptr noundef nonnull %i.ca, ptr noundef nonnull %i.ca, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !15
  call void %i.bl(ptr noundef nonnull %i.ca, ptr noundef nonnull %i.ca, ptr noundef nonnull %i.cc, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !15
  %i.gj = icmp samesign ugt i32 %.020712.in.i, 9
  br i1 %i.gj, label %.lr.ph.i, label %bb.m, !llvm.loop !16

bb.m:                                             ; preds = %bb.l
  %i.gk = shl nuw nsw i64 %i.cb, 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cc, i8 0, i64 %i.gk, i1 false)
  store i64 1, ptr %i.cc, align 8, !tbaa !11
  store i64 1, ptr %i.cf, align 8, !tbaa !11
  call void %i.bl(ptr noundef nonnull %i.am, ptr noundef nonnull %i.ca, ptr noundef nonnull %i.cc, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !15
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.bu, i64 noundef %i.bt) #7
  call void @CRYPTO_free(ptr noundef nonnull %i.bu, ptr noundef nonnull @.str, i32 noundef 569) #7
  %i.gl = add nsw i32 %12, 63
  %i.gm = ashr i32 %i.gl, 6                       ; 3 uses
  %i.gn = icmp sgt i32 %i.gm, 0                   ; 2 uses
  br i1 %i.gn, label %.lr.ph.preheader.i121, label %.preheader.i

.lr.ph.preheader.i121:                            ; preds = %bb.m
  %i.go = zext nneg i32 %i.gm to i64
  %i.gp = shl nuw nsw i64 %i.go, 3
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 %i.gp, i1 false), !tbaa !11
  br label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.preheader.i121, %bb.m
  %i.gq = icmp sgt i32 %12, 103                   ; 2 uses
  br i1 %i.gq, label %.lr.ph48.i, label %._crit_edge.i119

.lr.ph48.i:                                       ; preds = %.preheader.i, %.lr.ph48.i
  %.047.i = phi i32 [ %i.gz, %.lr.ph48.i ], [ %12, %.preheader.i ] ; 2 uses
  %.03046.i = phi ptr [ %i.gy, %.lr.ph48.i ], [ %0, %.preheader.i ] ; 3 uses
  %.03245.i = phi ptr [ %i.ha, %.lr.ph48.i ], [ %i.am, %.preheader.i ] ; 3 uses
  %i.gr = load i64, ptr %.03245.i, align 8, !tbaa !11 ; 2 uses
  store i64 %i.gr, ptr %.03046.i, align 1
  %i.gs = getelementptr inbounds nuw i8, ptr %.03046.i, i64 6
  %i.gt = lshr i64 %i.gr, 48
  %i.gu = getelementptr inbounds nuw i8, ptr %.03245.i, i64 8
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !11
  %i.gw = shl i64 %i.gv, 4
  %i.gx = or i64 %i.gw, %i.gt
  store i64 %i.gx, ptr %i.gs, align 1
  %i.gy = getelementptr inbounds nuw i8, ptr %.03046.i, i64 13 ; 2 uses
  %i.gz = add nsw i32 %.047.i, -104               ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.03245.i, i64 16 ; 2 uses
  %i.hb = icmp samesign ugt i32 %.047.i, 207
  br i1 %i.hb, label %.lr.ph48.i, label %._crit_edge.i119, !llvm.loop !17

._crit_edge.i119:                                 ; preds = %.lr.ph48.i, %.preheader.i
  %.032.lcssa.i = phi ptr [ %i.am, %.preheader.i ], [ %i.ha, %.lr.ph48.i ] ; 3 uses
  %.030.lcssa.i = phi ptr [ %0, %.preheader.i ], [ %i.gy, %.lr.ph48.i ] ; 6 uses
  %.0.lcssa.i = phi i32 [ %12, %.preheader.i ], [ %i.gz, %.lr.ph48.i ] ; 4 uses
  %i.hc = icmp sgt i32 %.0.lcssa.i, 52
  br i1 %i.hc, label %.lr.ph.i.i, label %bb.n

.lr.ph.i.i:                                       ; preds = %._crit_edge.i119
  %i.hd = load i64, ptr %.032.lcssa.i, align 8, !tbaa !11 ; 4 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.030.lcssa.i, i64 4
  %i.hf = bitcast i64 %i.hd to <8 x i8>
  %i.hg = shufflevector <8 x i8> %i.hf, <8 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i8> %i.hg, ptr %.030.lcssa.i, align 1, !tbaa !13
  %i.hh = lshr i64 %i.hd, 32
  %i.hi = trunc i64 %i.hh to i8
  %i.hj = getelementptr inbounds nuw i8, ptr %.030.lcssa.i, i64 5
  store i8 %i.hi, ptr %i.he, align 1, !tbaa !13
  %i.hk = lshr i64 %i.hd, 40
  %i.hl = trunc i64 %i.hk to i8
  %i.hm = getelementptr inbounds nuw i8, ptr %.030.lcssa.i, i64 6 ; 3 uses
  store i8 %i.hl, ptr %i.hj, align 1, !tbaa !13
  %i.hn = lshr i64 %i.hd, 48                      ; 2 uses
  %i.ho = trunc i64 %i.hn to i8
  store i8 %i.ho, ptr %i.hm, align 1, !tbaa !13
  %i.hp = add nsw i32 %.0.lcssa.i, -45
  %i.hq = lshr i32 %i.hp, 3                       ; 4 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.032.lcssa.i, i64 8
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !11
  %i.ht = shl i64 %i.hs, 4
  %i.hu = or i64 %i.ht, %i.hn                     ; 2 uses
  %i.hv = add nsw i32 %i.hq, -1
  %xtraiter225 = and i32 %i.hq, 7                 ; 2 uses
  %lcmp.mod226.not = icmp eq i32 %xtraiter225, 0
  br i1 %lcmp.mod226.not, label %.lr.ph.i33.i.prol.loopexit, label %.lr.ph.i33.i.prol

.lr.ph.i33.i.prol:                                ; preds = %.lr.ph.i.i, %.lr.ph.i33.i.prol
  %.08.i34.i.prol = phi i64 [ %i.hy, %.lr.ph.i33.i.prol ], [ %i.hu, %.lr.ph.i.i ] ; 2 uses
  %.047.i35.i.prol = phi i32 [ %i.hz, %.lr.ph.i33.i.prol ], [ %i.hq, %.lr.ph.i.i ]
  %.056.i36.i.prol = phi ptr [ %i.hx, %.lr.ph.i33.i.prol ], [ %i.hm, %.lr.ph.i.i ] ; 2 uses
  %prol.iter227 = phi i32 [ %prol.iter227.next, %.lr.ph.i33.i.prol ], [ 0, %.lr.ph.i.i ]
  %i.hw = trunc i64 %.08.i34.i.prol to i8
  %i.hx = getelementptr inbounds nuw i8, ptr %.056.i36.i.prol, i64 1 ; 2 uses
  store i8 %i.hw, ptr %.056.i36.i.prol, align 1, !tbaa !13
  %i.hy = lshr i64 %.08.i34.i.prol, 8             ; 2 uses
  %i.hz = add nsw i32 %.047.i35.i.prol, -1        ; 2 uses
  %prol.iter227.next = add i32 %prol.iter227, 1   ; 2 uses
  %prol.iter227.cmp.not = icmp eq i32 %prol.iter227.next, %xtraiter225
  br i1 %prol.iter227.cmp.not, label %.lr.ph.i33.i.prol.loopexit, label %.lr.ph.i33.i.prol, !llvm.loop !18

.lr.ph.i33.i.prol.loopexit:                       ; preds = %.lr.ph.i33.i.prol, %.lr.ph.i.i
  %.08.i34.i.unr = phi i64 [ %i.hu, %.lr.ph.i.i ], [ %i.hy, %.lr.ph.i33.i.prol ]
  %.047.i35.i.unr = phi i32 [ %i.hq, %.lr.ph.i.i ], [ %i.hz, %.lr.ph.i33.i.prol ]
  %.056.i36.i.unr = phi ptr [ %i.hm, %.lr.ph.i.i ], [ %i.hx, %.lr.ph.i33.i.prol ]
  %i.ia = icmp ult i32 %i.hv, 7
  br i1 %i.ia, label %from_words52.exit, label %.lr.ph.i33.i

.lr.ph.i33.i:                                     ; preds = %.lr.ph.i33.i.prol.loopexit, %.lr.ph.i33.i
  %.08.i34.i = phi i64 [ 0, %.lr.ph.i33.i ], [ %.08.i34.i.unr, %.lr.ph.i33.i.prol.loopexit ] ; 8 uses
  %.047.i35.i = phi i32 [ %i.iy, %.lr.ph.i33.i ], [ %.047.i35.i.unr, %.lr.ph.i33.i.prol.loopexit ] ; 2 uses
  %.056.i36.i = phi ptr [ %i.ix, %.lr.ph.i33.i ], [ %.056.i36.i.unr, %.lr.ph.i33.i.prol.loopexit ] ; 9 uses
  %i.ib = trunc i64 %.08.i34.i to i8
  %i.ic = getelementptr inbounds nuw i8, ptr %.056.i36.i, i64 1
  store i8 %i.ib, ptr %.056.i36.i, align 1, !tbaa !13
  %i.id = lshr i64 %.08.i34.i, 8
  %i.ie = trunc i64 %i.id to i8
  %i.if = getelementptr inbounds nuw i8, ptr %.056.i36.i, i64 2
  store i8 %i.ie, ptr %i.ic, align 1, !tbaa !13
  %i.ig = lshr i64 %.08.i34.i, 16
  %i.ih = trunc i64 %i.ig to i8
  %i.ii = getelementptr inbounds nuw i8, ptr %.056.i36.i, i64 3
  store i8 %i.ih, ptr %i.if, align 1, !tbaa !13
  %i.ij = lshr i64 %.08.i34.i, 24
  %i.ik = trunc i64 %i.ij to i8
  %i.il = getelementptr inbounds nuw i8, ptr %.056.i36.i, i64 4
  store i8 %i.ik, ptr %i.ii, align 1, !tbaa !13
  %i.im = lshr i64 %.08.i34.i, 32
  %i.in = trunc i64 %i.im to i8
  %i.io = getelementptr inbounds nuw i8, ptr %.056.i36.i, i64 5
  store i8 %i.in, ptr %i.il, align 1, !tbaa !13
  %i.ip = lshr i64 %.08.i34.i, 40
end_hunk_0
