Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/keys?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define range(i32 -500, 1) i32 @SetCipherSpecs(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 7 uses
  %i.c = load i64, ptr %i.b, align 8
  %1 = lshr i64 %i.c, 4
  %2 = trunc i64 %1 to i16
  %i.d = and i16 %2, 3
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1053
  %i.f = load i8, ptr %i.e, align 1, !tbaa !46
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1054
  %i.h = load i8, ptr %i.g, align 2, !tbaa !47
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 730
  %i.j = tail call i32 @GetCipherSpec(i16 noundef zeroext %i.d, i8 noundef zeroext %i.f, i8 noundef zeroext %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %i.a) ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 726 ; 2 uses
  %i.m = load i8, ptr %i.l, align 2, !tbaa !48
  %i.n = icmp eq i8 %i.m, 3
  br i1 %i.n, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 727
  %i.p = load i8, ptr %i.o, align 1, !tbaa !49    ; 3 uses
  %.not = icmp eq i8 %i.p, 0
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load i64, ptr %i.b, align 8              ; 3 uses
  %i.r = or i64 %i.q, 16384
  store i64 %i.r, ptr %i.b, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr @TLS_hmac, ptr %i.s, align 16, !tbaa !50
  %.not19 = icmp eq i8 %i.p, 1
  br i1 %.not19, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = or i64 %i.q, 49152
  store i64 %i.t, ptr %i.b, align 16
  %i.u = icmp ugt i8 %i.p, 3
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = or i64 %i.q, 114688
  store i64 %i.v, ptr %i.b, align 16
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.e, %bb.c, %bb.b
  %i.w = load i16, ptr %i.l, align 2
  %i.x = tail call i32 @IsAtLeastTLSv1_3(i16 %i.w) #5
  %.not17 = icmp eq i32 %i.x, 0
  br i1 %.not17, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 739
  %i.z = load i8, ptr %i.y, align 1, !tbaa !44
  %.not18 = icmp eq i8 %i.z, 1
  br i1 %.not18, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aa = load i64, ptr %i.b, align 8
  %i.ab = and i64 %i.aa, -18014398509481985
  store i64 %i.ab, ptr %i.b, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.a
  ret i32 %i.j
}

; Function Attrs: nounwind uwtable
define range(i32 -500, 1) i32 @GetCipherSpec(i16 noundef zeroext %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr nofree noundef %3, ptr nofree noundef captures(address_is_null) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i16 %0, 1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @VerifyClientSuite(i16 noundef zeroext 0, i8 noundef zeroext %1, i8 noundef zeroext %2) #5
  %.not = icmp eq i32 %i.b, 1
  br i1 %.not, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  switch i8 %1, label %bb.ai [
    i8 -52, label %bb.d
    i8 -64, label %bb.q
    i8 19, label %bb.ad
    i8 -48, label %.thread
    i8 -32, label %.thread
  ]

bb.d:                                             ; preds = %bb.c
  switch i8 %2, label %.thread [
    i8 19, label %bb.e
    i8 20, label %bb.g
    i8 21, label %bb.i
    i8 -88, label %bb.k
    i8 -87, label %bb.m
    i8 -86, label %bb.o
  ]

bb.e:                                             ; preds = %bb.d
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <4 x i8> <i8 9, i8 2, i8 4, i8 7>, ptr %i.c, align 2, !tbaa !51
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i8 1, ptr %i.d, align 2, !tbaa !52
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 13
  store i8 32, ptr %i.e, align 1, !tbaa !53
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 14
  store i8 40, ptr %i.f, align 2, !tbaa !54
  store <4 x i16> <i16 32, i16 12, i16 16, i16 16>, ptr %3, align 2, !tbaa !55
  %.not364 = icmp eq ptr %4, null
  br i1 %.not364, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8
  %i.i = or i64 %i.h, 4398046511104
  store i64 %i.i, ptr %i.g, align 8
  br label %bb.ap

bb.g:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <4 x i8> <i8 9, i8 2, i8 4, i8 7>, ptr %i.j, align 2, !tbaa !51
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i8 3, ptr %i.k, align 2, !tbaa !52
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 13
  store i8 32, ptr %i.l, align 1, !tbaa !53
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 14
  store i8 40, ptr %i.m, align 2, !tbaa !54
  store <4 x i16> <i16 32, i16 12, i16 16, i16 16>, ptr %3, align 2, !tbaa !55
  %.not363 = icmp eq ptr %4, null
  br i1 %.not363, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8
  %i.p = or i64 %i.o, 4398046511104
  store i64 %i.p, ptr %i.n, align 8
  br label %bb.ap

bb.i:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <4 x i8> <i8 9, i8 2, i8 4, i8 2>, ptr %i.q, align 2, !tbaa !51
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i8 1, ptr %i.r, align 2, !tbaa !52
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 13
  store i8 32, ptr %i.s, align 1, !tbaa !53
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 14
  store i8 40, ptr %i.t, align 2, !tbaa !54
  store <4 x i16> <i16 32, i16 12, i16 16, i16 16>, ptr %3, align 2, !tbaa !55
  %.not362 = icmp eq ptr %4, null
  br i1 %.not362, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8
  %i.w = or i64 %i.v, 4398046511104
  store i64 %i.w, ptr %i.u, align 8
  br label %bb.ap

bb.k:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <4 x i8> <i8 9, i8 2, i8 4, i8 7>, ptr %i.x, align 2, !tbaa !51
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i8 1, ptr %i.y, align 2, !tbaa !52
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 13
  store i8 32, ptr %i.z, align 1, !tbaa !53
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 14
  store i8 40, ptr %i.aa, align 2, !tbaa !54
  store <4 x i16> <i16 32, i16 12, i16 16, i16 16>, ptr %3, align 2, !tbaa !55
  %.not361 = icmp eq ptr %4, null
  br i1 %.not361, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = and i64 %i.ac, -4398046511105
  store i64 %i.ad, ptr %i.ab, align 8
  br label %bb.ap

bb.m:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <4 x i8> <i8 9, i8 2, i8 4, i8 7>, ptr %i.ae, align 2, !tbaa !51
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i8 3, ptr %i.af, align 2, !tbaa !52
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 13
  store i8 32, ptr %i.ag, align 1, !tbaa !53
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 14
  store i8 40, ptr %i.ah, align 2, !tbaa !54
  store <4 x i16> <i16 32, i16 12, i16 16, i16 16>, ptr %3, align 2, !tbaa !55
  %.not360 = icmp eq ptr %4, null
  br i1 %.not360, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = and i64 %i.aj, -4398046511105
  store i64 %i.ak, ptr %i.ai, align 8
  br label %bb.ap

bb.o:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <4 x i8> <i8 9, i8 2, i8 4, i8 2>, ptr %i.al, align 2, !tbaa !51
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i8 1, ptr %i.am, align 2, !tbaa !52
end_hunk_0
begin_hunk_1_@SetKeys:bb.a

bb.bk:                                            ; preds = %bb.bj
  br i1 %.not236, label %bb.bo, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.de = load ptr, ptr %0, align 8, !tbaa !61
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.dg = load i16, ptr %3, align 2, !tbaa !45
  %i.dh = zext i16 %i.dg to i32
  %i.di = tail call i32 @wc_AesGcmSetKey(ptr noundef %i.de, ptr noundef nonnull %i.df, i32 noundef %i.dh) #5 ; 2 uses
  %.not244 = icmp eq i32 %i.di, 0
  br i1 %.not244, label %bb.bm, label %.thread253

bb.bm:                                            ; preds = %bb.bl
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 232
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 192 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.dj, ptr noundef nonnull align 4 dereferenceable(12) %i.dk, i64 12, i1 false)
  %.not245 = icmp eq i32 %8, 0
  br i1 %.not245, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.dl = load ptr, ptr %0, align 8, !tbaa !61
  %i.dm = tail call i32 @wc_AesGcmSetIV(ptr noundef %i.dl, i32 noundef 12, ptr noundef nonnull %i.dk, i32 noundef 4, ptr noundef %7) #5 ; 2 uses
  %.not246 = icmp eq i32 %i.dm, 0
  br i1 %.not246, label %bb.bo, label %.thread253

bb.bo:                                            ; preds = %bb.bm, %bb.bn, %bb.bk
  br i1 %.not237, label %bb.bw, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.dn = load ptr, ptr %1, align 8, !tbaa !61
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.dp = load i16, ptr %3, align 2, !tbaa !45
  %i.dq = zext i16 %i.dp to i32
  %i.dr = tail call i32 @wc_AesGcmSetKey(ptr noundef %i.dn, ptr noundef nonnull %i.do, i32 noundef %i.dq) #5 ; 2 uses
  %.not247 = icmp eq i32 %i.dr, 0
  br i1 %.not247, label %.sink.split, label %.thread253

bb.bq:                                            ; preds = %bb.bj
  br i1 %.not236, label %bb.bu, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ds = load ptr, ptr %0, align 8, !tbaa !61
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.du = load i16, ptr %3, align 2, !tbaa !45
  %i.dv = zext i16 %i.du to i32
  %i.dw = tail call i32 @wc_AesGcmSetKey(ptr noundef %i.ds, ptr noundef nonnull %i.dt, i32 noundef %i.dv) #5 ; 2 uses
  %.not240 = icmp eq i32 %i.dw, 0
  br i1 %.not240, label %bb.bs, label %.thread253

bb.bs:                                            ; preds = %bb.br
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 232
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 208 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.dx, ptr noundef nonnull align 4 dereferenceable(12) %i.dy, i64 12, i1 false)
  %.not241 = icmp eq i32 %8, 0
  br i1 %.not241, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.dz = load ptr, ptr %0, align 8, !tbaa !61
  %i.ea = tail call i32 @wc_AesGcmSetIV(ptr noundef %i.dz, i32 noundef 12, ptr noundef nonnull %i.dy, i32 noundef 4, ptr noundef %7) #5 ; 2 uses
  %.not242 = icmp eq i32 %i.ea, 0
  br i1 %.not242, label %bb.bu, label %.thread253

bb.bu:                                            ; preds = %bb.bs, %bb.bt, %bb.bq
  br i1 %.not237, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.eb = load ptr, ptr %1, align 8, !tbaa !61
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.ed = load i16, ptr %3, align 2, !tbaa !45
  %i.ee = zext i16 %i.ed to i32
  %i.ef = tail call i32 @wc_AesGcmSetKey(ptr noundef %i.eb, ptr noundef nonnull %i.ec, i32 noundef %i.ee) #5 ; 2 uses
  %.not243 = icmp eq i32 %i.ef, 0
  br i1 %.not243, label %.sink.split, label %.thread253

.sink.split:                                      ; preds = %bb.bv, %bb.bp
  %.sink306 = phi i64 [ 208, %bb.bp ], [ 192, %bb.bv ]
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 244
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 %.sink306
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.eg, ptr noundef nonnull align 4 dereferenceable(12) %i.eh, i64 12, i1 false)
  br label %bb.bw

bb.bw:                                            ; preds = %.sink.split, %bb.bu, %bb.bo
  br i1 %.not236, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 1, ptr %i.ei, align 1, !tbaa !60
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  br i1 %.not237, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 33
  store i8 1, ptr %i.ej, align 1, !tbaa !60
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by, %bb.au
  %.not248 = icmp eq ptr %0, null
  br i1 %.not248, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 264
  store i32 0, ptr %i.ek, align 4, !tbaa !62
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 268
  store i32 0, ptr %i.el, align 4, !tbaa !63
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %.not249 = icmp eq ptr %1, null
  br i1 %.not249, label %.thread253, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 256
  store i32 0, ptr %i.em, align 4, !tbaa !64
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 260
  store i32 0, ptr %i.en, align 4, !tbaa !65
  br label %.thread253

.thread253:                                       ; preds = %bb.bt, %bb.bp, %bb.bl, %bb.bv, %bb.bn, %bb.bi, %bb.bg, %bb.bc, %bb.ax, %bb.br, %bb.al, %bb.ap, %bb.aj, %bb.ag, %bb.ae, %bb.aa, %bb.v, %bb.an, %bb.j, %bb.n, %bb.h, %bb.f, %bb.d, %bb.l, %bb.cc, %bb.cd
  %.5 = phi i32 [ 0, %bb.cc ], [ %i.ce, %bb.an ], [ %i.aj, %bb.l ], [ 0, %bb.cd ], [ %i.ab, %bb.j ], [ %i.ar, %bb.n ], [ %i.t, %bb.h ], [ -125, %bb.f ], [ -125, %bb.d ], [ %i.by, %bb.al ], [ %i.ck, %bb.ap ], [ %i.bs, %bb.aj ], [ -182, %bb.ag ], [ -182, %bb.ae ], [ -125, %bb.aa ], [ -125, %bb.v ], [ %i.ea, %bb.bt ], [ %i.dr, %bb.bp ], [ %i.di, %bb.bl ], [ %i.ef, %bb.bv ], [ %i.dm, %bb.bn ], [ -182, %bb.bi ], [ -182, %bb.bg ], [ -125, %bb.bc ], [ -125, %bb.ax ], [ %i.dw, %bb.br ]
  ret i32 %.5
}

declare ptr @wolfSSL_Malloc(i64 noundef) local_unnamed_addr #1

declare i32 @wc_Chacha_SetKey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare void @wc_AesFree(ptr noundef) local_unnamed_addr #1

declare i32 @wc_AesInit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @wc_AesSetKey(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @wc_AesGcmSetKey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @wc_AesGcmSetIV(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define i32 @SetKeysSide(ptr noundef initializes((1396, 1400)) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 748
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1396
  store i32 0, ptr %i.b, align 4, !tbaa !66
  switch i32 %1, label %SetAuthKeys.exit [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 304
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 304
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.026 = phi ptr [ %i.c, %bb.b ], [ null, %bb.c ], [ %i.e, %bb.d ]
  %.0 = phi ptr [ null, %bb.b ], [ %i.d, %bb.c ], [ %i.f, %bb.d ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1368 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1376 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !tbaa !67
  %.not = icmp eq i8 %i.i, 0
  br i1 %.not, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 738
  %i.k = load i8, ptr %i.j, align 2, !tbaa !68
  %i.l = icmp eq i8 %i.k, 9
  br i1 %i.l, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !69
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.h, label %SetAuthKeys.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.o = tail call ptr @wolfSSL_Malloc(i64 noundef 96) #5 ; 2 uses
  store ptr %i.o, ptr %i.g, align 8, !tbaa !69
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %SetAuthKeys.exit, label %SetAuthKeys.exit.thread

SetAuthKeys.exit.thread:                          ; preds = %bb.g, %bb.h
  store i8 1, ptr %i.h, align 8, !tbaa !70
  br label %bb.i

bb.i:                                             ; preds = %SetAuthKeys.exit.thread, %bb.f, %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 730
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %2 = lshr i64 %i.s, 4
  %3 = trunc i64 %2 to i32
  %i.t = and i32 %3, 3
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.v = load ptr, ptr %i.u, align 16, !tbaa !71
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1364
  %i.x = load i32, ptr %i.w, align 4, !tbaa !72
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !73
  %4 = lshr i64 %i.s, 16
  %5 = trunc i64 %4 to i32
  %i.aa = and i32 %5, 1
  %i.ab = tail call i32 @SetKeys(ptr noundef %.026, ptr noundef %.0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.q, i32 noundef %i.t, ptr noundef %i.v, i32 noundef %i.x, ptr noundef %i.z, i32 noundef %i.aa)
  br label %SetAuthKeys.exit

SetAuthKeys.exit:                                 ; preds = %bb.h, %bb.a, %bb.i
  %.027 = phi i32 [ -173, %bb.a ], [ %i.ab, %bb.i ], [ -125, %bb.h ]
  ret i32 %.027
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef i32 @StoreKeys(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 748
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 730
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 739
  %i.d = load i8, ptr %i.c, align 1, !tbaa !44
  %.not = icmp eq i8 %i.d, 2                      ; 2 uses
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.pre = and i32 %2, 1
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 743
  %i.f = load i8, ptr %i.e, align 1, !tbaa !74    ; 3 uses
  %i.g = zext i8 %i.f to i64                      ; 2 uses
  %i.h = and i32 %2, 1                            ; 3 uses
  %.not46 = icmp eq i32 %i.h, 0
  br i1 %.not46, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.a, ptr align 1 %1, i64 %i.g, i1 false)
  %i.i = zext i8 %i.f to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.i, %bb.c ], [ 0, %bb.b ]     ; 3 uses
  %i.j = and i32 %2, 2
  %.not47 = icmp eq i32 %i.j, 0
  br i1 %.not47, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 812
  %i.l = zext nneg i32 %.0 to i64
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %i.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.k, ptr align 1 %i.m, i64 %i.g, i1 false)
  %i.n = zext i8 %i.f to i32
  %i.o = add nuw nsw i32 %.0, %i.n
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.d, %bb.e
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %i.h, %bb.d ], [ %i.h, %bb.e ]
  %.1 = phi i32 [ 0, %._crit_edge ], [ %.0, %bb.d ], [ %i.o, %bb.e ] ; 3 uses
  %i.p = load i16, ptr %i.b, align 2, !tbaa !75   ; 3 uses
  %i.q = zext i16 %i.p to i64                     ; 2 uses
  %.not48 = icmp eq i32 %.pre-phi, 0              ; 2 uses
  br i1 %.not48, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 876
  %i.s = zext nneg i32 %.1 to i64
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %i.s
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.r, ptr align 1 %i.t, i64 %i.q, i1 false)
  %i.u = zext i16 %i.p to i32
  %i.v = add nuw nsw i32 %.1, %i.u
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.2 = phi i32 [ %i.v, %bb.g ], [ %.1, %bb.f ]   ; 3 uses
  %i.w = and i32 %2, 2
  %.not49 = icmp eq i32 %i.w, 0                   ; 2 uses
  br i1 %.not49, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 908
  %i.y = zext nneg i32 %.2 to i64
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %i.y
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 1 %i.z, i64 %i.q, i1 false)
  %i.aa = zext i16 %i.p to i32
  %i.ab = add nuw nsw i32 %.2, %i.aa
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.3 = phi i32 [ %i.ab, %bb.i ], [ %.2, %bb.h ]  ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 732
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !76 ; 2 uses
  %i.ae = zext i16 %i.ad to i64                   ; 2 uses
  br i1 %.not48, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 940
  %i.ag = zext nneg i32 %.3 to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %i.ag
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.af, ptr align 1 %i.ah, i64 %i.ae, i1 false)
  %i.ai = zext i16 %i.ad to i32
  %i.aj = add nuw nsw i32 %.3, %i.ai
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.4 = phi i32 [ %i.aj, %bb.k ], [ %.3, %bb.j ]
  br i1 %.not49, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 956
  %i.al = zext nneg i32 %.4 to i64
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %i.al
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ak, ptr align 1 %i.am, i64 %i.ae, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  br i1 %.not, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 972
  store i64 0, ptr %i.an, align 4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @MakeMasterSecret(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @MakeTlsMasterSecret(ptr noundef %0) #5
  ret i32 %i.a
}

declare i32 @MakeTlsMasterSecret(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS11WOLFSSL_CTX", !8, i64 0}
!10 = !{!"p1 _ZTS6Suites", !8, i64 0}
!11 = !{!"p1 _ZTS6Arrays", !8, i64 0}
!12 = !{!"p1 _ZTS9HS_Hashes", !8, i64 0}
!13 = !{!"p1 _ZTS6WC_RNG", !8, i64 0}
!14 = !{!"p1 _ZTS13WOLFSSL_ASYNC", !8, i64 0}
!15 = !{!"p1 _ZTS7WOLFSSL", !8, i64 0}
!16 = !{!"WOLFSSL_CIPHER", !4, i64 0, !4, i64 1, !15, i64 8}
!17 = !{!"p1 _ZTS3Aes", !8, i64 0}
!18 = !{!"p1 omnipotent char", !8, i64 0}
!19 = !{!"p1 _ZTS6ChaCha", !8, i64 0}
!20 = !{!"Ciphers", !17, i64 0, !18, i64 8, !18, i64 16, !19, i64 24, !4, i64 32, !4, i64 33}
!21 = !{!"", !4, i64 0, !18, i64 8, !5, i64 16, !5, i64 20, !5, i64 24, !4, i64 28, !4, i64 29}
!22 = !{!"WOLFSSL_BUFFER_INFO", !18, i64 0, !5, i64 8}
!23 = !{!"p1 _ZTS5DhKey", !8, i64 0}
!24 = !{!"p1 _ZTS9DerBuffer", !8, i64 0}
!25 = !{!"Buffers", !21, i64 0, !21, i64 32, !22, i64 64, !22, i64 80, !22, i64 96, !22, i64 112, !22, i64 128, !5, i64 144, !5, i64 148, !4, i64 152, !4, i64 153, !4, i64 154, !4, i64 155, !22, i64 160, !22, i64 176, !22, i64 192, !22, i64 208, !23, i64 224, !24, i64 232, !24, i64 240, !4, i64 248, !4, i64 249, !4, i64 249, !5, i64 252, !5, i64 256, !24, i64 264, !5, i64 272, !4, i64 280}
!26 = !{!"p1 _ZTS15WOLFSSL_SESSION", !8, i64 0}
!27 = !{!"p1 _ZTS13ClientSession", !8, i64 0}
!28 = !{!"WOLFSSL_ALERT", !5, i64 0, !5, i64 4}
!29 = !{!"WOLFSSL_ALERT_HISTORY", !28, i64 0, !28, i64 8}
!30 = !{!"short", !4, i64 0}
!31 = !{!"RecordLayerHeader", !4, i64 0, !4, i64 1, !4, i64 2, !4, i64 3}
!32 = !{!"MsgsReceived", !30, i64 0, !30, i64 0, !30, i64 0, !30, i64 0, !30, i64 0, !30, i64 0, !30, i64 0, !30, i64 1, !30, i64 1, !30, i64 1, !30, i64 1, !30, i64 1, !30, i64 1, !30, i64 1, !30, i64 1, !30, i64 2, !30, i64 2, !30, i64 2}
!33 = !{!"ProtocolVersion", !4, i64 0, !4, i64 1}
!34 = !{!"CipherSpecs", !30, i64 0, !30, i64 2, !30, i64 4, !30, i64 6, !4, i64 8, !4, i64 9, !4, i64 10, !4, i64 11, !4, i64 12, !4, i64 13, !4, i64 14, !4, i64 15}
!35 = !{!"Keys", !4, i64 0, !4, i64 64, !4, i64 128, !4, i64 160, !4, i64 192, !4, i64 208, !4, i64 224, !4, i64 232, !4, i64 244, !5, i64 256, !5, i64 260, !5, i64 264, !5, i64 268, !5, i64 272, !5, i64 276, !4, i64 280, !4, i64 281, !4, i64 282, !4, i64 283}
!36 = !{!"long", !4, i64 0}
!37 = !{!"Options", !36, i64 0, !30, i64 8, !30, i64 8, !30, i64 8, !30, i64 8, !30, i64 8, !30, i64 8, !30, i64 9, !30, i64 9, !30, i64 9, !30, i64 9, !30, i64 9, !30, i64 9, !30, i64 9, !30, i64 9, !30, i64 10, !30, i64 10, !30, i64 10, !30, i64 10, !30, i64 10, !30, i64 10, !30, i64 10, !30, i64 10, !30, i64 11, !30, i64 11, !30, i64 11, !30, i64 11, !30, i64 11, !30, i64 11, !30, i64 11, !30, i64 11, !30, i64 12, !30, i64 12, !30, i64 12, !30, i64 12, !30, i64 12, !30, i64 12, !30, i64 12, !30, i64 12, !30, i64 13, !30, i64 13, !30, i64 13, !30, i64 13, !30, i64 13, !30, i64 13, !30, i64 13, !30, i64 13, !30, i64 14, !30, i64 14, !30, i64 14, !30, i64 14, !30, i64 14, !30, i64 14, !30, i64 14, !30, i64 14, !30, i64 15, !30, i64 15, !30, i64 15, !30, i64 15, !30, i64 15, !30, i64 15, !4, i64 16, !4, i64 17, !4, i64 18, !4, i64 19, !4, i64 20, !4, i64 21, !4, i64 22, !4, i64 23, !4, i64 24, !4, i64 25, !4, i64 26, !4, i64 27, !4, i64 28, !4, i64 29, !4, i64 30, !4, i64 31, !4, i64 32, !4, i64 33, !4, i64 34, !4, i64 35, !4, i64 36, !4, i64 37, !4, i64 38, !4, i64 39, !30, i64 40, !30, i64 42, !30, i64 44, !30, i64 46, !30, i64 48, !4, i64 50}
!38 = !{!"p1 _ZTS6RsaKey", !8, i64 0}
!39 = !{!"p1 _ZTS7ecc_key", !8, i64 0}
!40 = !{!"p1 _ZTS8Poly1305", !8, i64 0}
!41 = !{!"OneTimeAuth", !40, i64 0, !4, i64 8}
!42 = !{!"p1 _ZTS4TLSX", !8, i64 0}
!43 = !{!"WOLFSSL", !9, i64 0, !10, i64 8, !10, i64 16, !11, i64 24, !4, i64 32, !4, i64 80, !12, i64 128, !8, i64 136, !8, i64 144, !13, i64 152, !8, i64 160, !8, i64 168, !8, i64 176, !8, i64 184, !8, i64 192, !8, i64 200, !8, i64 208, !14, i64 216, !8, i64 224, !5, i64 232, !16, i64 240, !8, i64 256, !20, i64 264, !20, i64 304, !25, i64 352, !26, i64 640, !27, i64 648, !29, i64 656, !28, i64 672, !5, i64 680, !5, i64 684, !5, i64 688, !5, i64 692, !5, i64 696, !5, i64 700, !5, i64 704, !30, i64 708, !5, i64 712, !4, i64 716, !31, i64 717, !32, i64 722, !33, i64 726, !33, i64 728, !34, i64 730, !35, i64 748, !37, i64 1032, !38, i64 1088, !4, i64 1096, !4, i64 1097, !30, i64 1098, !4, i64 1100, !4, i64 1172, !30, i64 1174, !30, i64 1176, !4, i64 1178, !5, i64 1308, !5, i64 1312, !39, i64 1320, !4, i64 1328, !4, i64 1329, !39, i64 1336, !39, i64 1344, !30, i64 1352, !4, i64 1354, !5, i64 1356, !4, i64 1360, !5, i64 1364, !41, i64 1368, !42, i64 1384, !30, i64 1392, !5, i64 1396}
!44 = !{!43, !4, i64 739}
!45 = !{!34, !30, i64 0}
!46 = !{!43, !4, i64 1053}
!47 = !{!43, !4, i64 1054}
!48 = !{!43, !4, i64 726}
!49 = !{!43, !4, i64 727}
!50 = !{!43, !8, i64 256}
!51 = !{!4, !4, i64 0}
!52 = !{!34, !4, i64 12}
!53 = !{!34, !4, i64 13}
!54 = !{!34, !4, i64 14}
!55 = !{!30, !30, i64 0}
!56 = !{!34, !30, i64 2}
!57 = !{!34, !30, i64 4}
!58 = !{!34, !4, i64 8}
end_hunk_1
