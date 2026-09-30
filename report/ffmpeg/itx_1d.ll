Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/itx_1d?download=true
inline.NumInlined: 10
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 67
loop-unroll.NumUnrolled: 81
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@ff_vvc_dct8_4x4 = external hidden local_unnamed_addr constant [4 x [4 x i8]], align 16
@ff_vvc_dct8_8x8 = external hidden local_unnamed_addr constant [8 x [8 x i8]], align 16
@ff_vvc_dct8_16x16 = external hidden local_unnamed_addr constant [16 x [16 x i8]], align 16
@ff_vvc_dct8_32x32 = external hidden local_unnamed_addr constant [32 x [32 x i8]], align 16
@ff_vvc_dst7_4x4 = external hidden local_unnamed_addr constant [4 x [4 x i8]], align 16
@ff_vvc_dst7_8x8 = external hidden local_unnamed_addr constant [8 x [8 x i8]], align 16
@ff_vvc_dst7_16x16 = external hidden local_unnamed_addr constant [16 x [16 x i8]], align 16
@ff_vvc_dst7_32x32 = external hidden local_unnamed_addr constant [32 x [32 x i8]], align 16
@ff_vvc_lfnst_tr_set_index = external hidden local_unnamed_addr constant [95 x i8], align 16
@ff_vvc_lfnst_8x8 = external hidden local_unnamed_addr constant [4 x [2 x [16 x [48 x i8]]]], align 16
@ff_vvc_lfnst_4x4 = external hidden local_unnamed_addr constant [4 x [2 x [16 x [16 x i8]]]], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @ff_vvc_inv_dct2_2(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !11     ; 2 uses
  %i.b = getelementptr inbounds [4 x i8], ptr %0, i64 %1 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !11   ; 2 uses
  %i.d = add nsw i32 %i.c, %i.a
  %i.e = shl nsw i32 %i.d, 6
  store i32 %i.e, ptr %0, align 4, !tbaa !11
  %i.f = sub nsw i32 %i.a, %i.c
  %i.g = shl nsw i32 %i.f, 6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @ff_vvc_inv_dct2_4(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !11     ; 2 uses
  %i.b = getelementptr inbounds [4 x i8], ptr %0, i64 %1 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !11   ; 2 uses
  %.idx = shl nsw i64 %1, 3
  %i.d = getelementptr inbounds i8, ptr %0, i64 %.idx ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !11
  %.idx33 = mul nsw i64 %1, 12
  %i.f = getelementptr inbounds i8, ptr %0, i64 %.idx33 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !11   ; 2 uses
  %i.h = icmp ugt i64 %2, 2                       ; 3 uses
  %i.i = select i1 %i.h, i32 %i.e, i32 0          ; 2 uses
  %i.j = add nsw i32 %i.i, %i.a
  %i.k = shl nsw i32 %i.j, 6                      ; 2 uses
  %i.l = sub i32 %i.a, %i.i
  %i.m = shl nsw i32 %i.l, 6                      ; 2 uses
  %i.n = mul nsw i32 %i.c, 83
  %i.o = mul nsw i32 %i.g, 36
  %i.p = select i1 %i.h, i32 %i.o, i32 0
  %i.q = add nsw i32 %i.p, %i.n                   ; 2 uses
  %i.r = mul nsw i32 %i.c, 36
  %i.s = mul nsw i32 %i.g, -83
  %i.t = select i1 %i.h, i32 %i.s, i32 0
  %i.u = add nsw i32 %i.t, %i.r                   ; 2 uses
  %i.v = add nsw i32 %i.q, %i.k
  store i32 %i.v, ptr %0, align 4, !tbaa !11
  %i.w = add nsw i32 %i.u, %i.m
  store i32 %i.w, ptr %i.b, align 4, !tbaa !11
  %i.x = sub nsw i32 %i.m, %i.u
  store i32 %i.x, ptr %i.d, align 4, !tbaa !11
  %i.y = sub nsw i32 %i.k, %i.q
  store i32 %i.y, ptr %i.f, align 4, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @ff_vvc_inv_dct2_8(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !11     ; 2 uses
  %i.b = getelementptr inbounds [4 x i8], ptr %0, i64 %1 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !11   ; 4 uses
  %.idx = shl nsw i64 %1, 3
  %i.d = getelementptr inbounds i8, ptr %0, i64 %.idx ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !11   ; 2 uses
  %.idx89 = mul nsw i64 %1, 12
  %i.f = getelementptr inbounds i8, ptr %0, i64 %.idx89 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !11   ; 4 uses
  %.idx90 = shl nsw i64 %1, 4
  %i.h = getelementptr inbounds i8, ptr %0, i64 %.idx90 ; 2 uses
  %.idx91 = mul nsw i64 %1, 20
  %i.i = getelementptr inbounds i8, ptr %0, i64 %.idx91 ; 2 uses
  %.idx92 = mul nsw i64 %1, 24
  %i.j = getelementptr inbounds i8, ptr %0, i64 %.idx92 ; 2 uses
  %.idx93 = mul nsw i64 %1, 28
  %i.k = getelementptr inbounds i8, ptr %0, i64 %.idx93 ; 2 uses
  %i.l = icmp ugt i64 %2, 4
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = load i32, ptr %i.i, align 4, !tbaa !11   ; 4 uses
  %i.n = mul nsw i32 %i.m, 18
  %i.o = load i32, ptr %i.k, align 4, !tbaa !11   ; 4 uses
  %i.p = mul nsw i32 %i.o, 75
  %i.q = add nsw i32 %i.p, %i.n
  %.neg = mul i32 %i.o, -50
  %i.r = mul nsw i32 %i.m, -89
  %i.s = add i32 %.neg, %i.r
  %i.t = mul nsw i32 %i.m, 50
  %i.u = mul nsw i32 %i.o, 18
  %i.v = add nsw i32 %i.u, %i.t
  %i.w = load i32, ptr %i.j, align 4, !tbaa !11   ; 2 uses
  %i.x = mul nsw i32 %i.w, -83
  %i.y = mul nsw i32 %i.w, 36
  %i.z = load i32, ptr %i.h, align 4, !tbaa !11
  %i.aa = mul nsw i32 %i.m, 75
  %.neg94 = mul i32 %i.o, -89
  %i.ab = add i32 %.neg94, %i.aa
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.ac = phi i32 [ 0, %bb.a ], [ %i.q, %bb.b ]
  %i.ad = phi i32 [ 0, %bb.a ], [ %i.s, %bb.b ]
  %i.ae = phi i32 [ 0, %bb.a ], [ %i.v, %bb.b ]
  %i.af = phi i32 [ 0, %bb.a ], [ %i.y, %bb.b ]
  %i.ag = phi i32 [ 0, %bb.a ], [ %i.z, %bb.b ]   ; 2 uses
  %i.ah = phi i32 [ 0, %bb.a ], [ %i.x, %bb.b ]
  %i.ai = phi i32 [ 0, %bb.a ], [ %i.ab, %bb.b ]
  %i.aj = mul nsw i32 %i.c, 18
  %i.ak = icmp ugt i64 %2, 2                      ; 6 uses
  %i.al = mul nsw i32 %i.g, -50
  %i.am = select i1 %i.ak, i32 %i.al, i32 0
  %i.an = add nsw i32 %i.am, %i.aj
  %i.ao = mul nsw i32 %i.c, 50
  %i.ap = mul nsw i32 %i.g, -89
  %i.aq = select i1 %i.ak, i32 %i.ap, i32 0
  %i.ar = add nsw i32 %i.aq, %i.ao
  %i.as = add nsw i32 %i.ar, %i.ac                ; 2 uses
  %i.at = mul nsw i32 %i.c, 75
  %i.au = mul nsw i32 %i.g, -18
  %i.av = select i1 %i.ak, i32 %i.au, i32 0
  %i.aw = add nsw i32 %i.av, %i.at
  %i.ax = add nsw i32 %i.aw, %i.ad                ; 2 uses
  %i.ay = mul nsw i32 %i.c, 89
  %i.az = mul nsw i32 %i.g, 75
  %i.ba = select i1 %i.ak, i32 %i.az, i32 0
  %i.bb = add nsw i32 %i.ba, %i.ay
  %i.bc = add nsw i32 %i.bb, %i.ae                ; 2 uses
  %i.bd = add nsw i32 %i.ag, %i.a
  %i.be = shl nsw i32 %i.bd, 6                    ; 2 uses
  %i.bf = mul nsw i32 %i.e, 83
  %3 = add i32 %i.af, %i.bf
  %4 = select i1 %i.ak, i32 %3, i32 0             ; 2 uses
  %i.bg = sub nsw i32 %i.be, %4                   ; 2 uses
  %i.bh = sub i32 %i.a, %i.ag
  %i.bi = shl nsw i32 %i.bh, 6                    ; 2 uses
  %i.bj = mul nsw i32 %i.e, 36
  %5 = add i32 %i.ah, %i.bj
  %6 = select i1 %i.ak, i32 %5, i32 0             ; 2 uses
  %i.bk = sub nsw i32 %i.bi, %6                   ; 2 uses
  %i.bl = add nsw i32 %6, %i.bi                   ; 2 uses
  %i.bm = add nsw i32 %i.be, %4                   ; 2 uses
  %i.bn = add nsw i32 %i.an, %i.ai                ; 2 uses
  %i.bo = add nsw i32 %i.bm, %i.bc
  store i32 %i.bo, ptr %0, align 4, !tbaa !11
  %i.bp = add nsw i32 %i.bl, %i.ax
  store i32 %i.bp, ptr %i.b, align 4, !tbaa !11
  %i.bq = add nsw i32 %i.bk, %i.as
  store i32 %i.bq, ptr %i.d, align 4, !tbaa !11
  %i.br = add nsw i32 %i.bg, %i.bn
  store i32 %i.br, ptr %i.f, align 4, !tbaa !11
  %i.bs = sub nsw i32 %i.bg, %i.bn
  store i32 %i.bs, ptr %i.h, align 4, !tbaa !11
  %i.bt = sub nsw i32 %i.bk, %i.as
  store i32 %i.bt, ptr %i.i, align 4, !tbaa !11
  %i.bu = sub nsw i32 %i.bl, %i.ax
  store i32 %i.bu, ptr %i.j, align 4, !tbaa !11
  %i.bv = sub nsw i32 %i.bm, %i.bc
  store i32 %i.bv, ptr %i.k, align 4, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @ff_vvc_inv_dct2_16(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !11     ; 2 uses
  %i.b = getelementptr inbounds [4 x i8], ptr %0, i64 %1 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !11   ; 8 uses
  %.idx = shl nsw i64 %1, 3
  %i.d = getelementptr inbounds i8, ptr %0, i64 %.idx ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !11   ; 4 uses
  %.idx241 = mul nsw i64 %1, 12
  %i.f = getelementptr inbounds i8, ptr %0, i64 %.idx241 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !11   ; 8 uses
  %.idx242 = shl nsw i64 %1, 4
  %i.h = getelementptr inbounds i8, ptr %0, i64 %.idx242 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !11   ; 2 uses
  %.idx243 = mul nsw i64 %1, 20
  %i.j = getelementptr inbounds i8, ptr %0, i64 %.idx243 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !11   ; 15 uses
  %.idx244 = mul nsw i64 %1, 24
  %i.l = getelementptr inbounds i8, ptr %0, i64 %.idx244 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !11   ; 4 uses
  %.idx245 = mul nsw i64 %1, 28
  %i.n = getelementptr inbounds i8, ptr %0, i64 %.idx245 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !11   ; 15 uses
  %.idx246 = shl nsw i64 %1, 5
  %i.p = getelementptr inbounds i8, ptr %0, i64 %.idx246 ; 2 uses
  %.idx247 = mul nsw i64 %1, 36
  %i.q = getelementptr inbounds i8, ptr %0, i64 %.idx247 ; 2 uses
  %.idx248 = mul nsw i64 %1, 40
  %i.r = getelementptr inbounds i8, ptr %0, i64 %.idx248 ; 2 uses
  %.idx249 = mul nsw i64 %1, 44
  %i.s = getelementptr inbounds i8, ptr %0, i64 %.idx249 ; 2 uses
  %.idx250 = mul nsw i64 %1, 48
  %i.t = getelementptr inbounds i8, ptr %0, i64 %.idx250 ; 2 uses
  %.idx251 = mul nsw i64 %1, 52
  %i.u = getelementptr inbounds i8, ptr %0, i64 %.idx251 ; 2 uses
  %.idx252 = mul nsw i64 %1, 56
  %i.v = getelementptr inbounds i8, ptr %0, i64 %.idx252 ; 2 uses
  %.idx253 = mul nsw i64 %1, 60
  %i.w = getelementptr inbounds i8, ptr %0, i64 %.idx253 ; 2 uses
  %i.x = icmp ugt i64 %2, 8
  %i.y = icmp ugt i64 %2, 4                       ; 14 uses
  br i1 %i.x, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.z = mul nsw i32 %i.k, 9
  %.neg255 = mul i32 %i.o, -43
  %i.aa = add i32 %.neg255, %i.z
  %i.ab = select i1 %i.y, i32 %i.aa, i32 0
  %i.ac = mul nsw i32 %i.k, -70
  %.neg259 = mul i32 %i.o, -87
  %i.ad = add i32 %.neg259, %i.ac
  %i.ae = select i1 %i.y, i32 %i.ad, i32 0
  %i.af = mul nsw i32 %i.k, -87
  %i.ag = mul nsw i32 %i.o, 9
  %i.ah = add nsw i32 %i.ag, %i.af
  %i.ai = select i1 %i.y, i32 %i.ah, i32 0
  %i.aj = mul nsw i32 %i.k, -25
  %i.ak = mul nsw i32 %i.o, 90
  %i.al = add nsw i32 %i.ak, %i.aj
  %i.am = select i1 %i.y, i32 %i.al, i32 0
  %i.an = mul nsw i32 %i.k, 57
  %i.ao = mul nsw i32 %i.o, 25
  %i.ap = add nsw i32 %i.ao, %i.an
  %i.aq = select i1 %i.y, i32 %i.ap, i32 0
  %i.ar = mul nsw i32 %i.k, 90
  %.neg264 = mul i32 %i.o, -80
  %i.as = add i32 %.neg264, %i.ar
  %i.at = select i1 %i.y, i32 %i.as, i32 0
  %i.au = mul nsw i32 %i.k, 43
  %.neg266 = mul i32 %i.o, -57
  %i.av = add i32 %.neg266, %i.au
  %i.aw = select i1 %i.y, i32 %i.av, i32 0
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ax = load i32, ptr %i.v, align 4, !tbaa !11  ; 4 uses
  %.neg254 = mul i32 %i.ax, -89
  %i.ay = load i32, ptr %i.r, align 4, !tbaa !11  ; 4 uses
  %i.az = mul nsw i32 %i.ay, 75
  %i.ba = add i32 %i.az, %.neg254
  %i.bb = mul nsw i32 %i.ay, 18
  %i.bc = mul nsw i32 %i.ax, 75
  %i.bd = add nsw i32 %i.bb, %i.bc
  %.neg = mul i32 %i.ax, -50
  %i.be = mul nsw i32 %i.ay, -89
  %i.bf = add i32 %i.be, %.neg
  %i.bg = mul nsw i32 %i.ay, 50
  %i.bh = mul nsw i32 %i.ax, 18
  %i.bi = add nsw i32 %i.bg, %i.bh
  %i.bj = load i32, ptr %i.t, align 4, !tbaa !11  ; 2 uses
  %i.bk = mul nsw i32 %i.bj, -83
  %i.bl = mul nsw i32 %i.bj, 36
  %i.bm = load i32, ptr %i.w, align 4, !tbaa !11  ; 8 uses
  %i.bn = load i32, ptr %i.u, align 4, !tbaa !11  ; 8 uses
  %i.bo = load i32, ptr %i.s, align 4, !tbaa !11  ; 8 uses
  %i.bp = load i32, ptr %i.q, align 4, !tbaa !11  ; 8 uses
  %i.bq = load i32, ptr %i.p, align 4, !tbaa !11
  %i.br = mul nsw i32 %i.bp, 57
  %i.bs = mul nsw i32 %i.bo, 43
  %i.bt = mul nsw i32 %i.bn, 25
  %i.bu = mul nsw i32 %i.bm, 9
  %i.bv = add i32 %i.bt, %i.bu
  %i.bw = add i32 %i.bv, %i.bs
  %i.bx = add i32 %i.bw, %i.br
  %i.by = mul nsw i32 %i.k, 9
  %.neg255269 = mul i32 %i.o, -43
  %i.bz = add i32 %.neg255269, %i.by
  %i.ca = mul nsw i32 %i.bp, -80
  %.neg256 = mul i32 %i.bo, -90
  %.neg257 = mul i32 %i.bn, -70
  %.neg258 = mul i32 %i.bm, -25
  %i.cb = add i32 %.neg257, %.neg258
  %i.cc = add i32 %i.cb, %.neg256
  %i.cd = add i32 %i.cc, %i.ca
  %i.ce = mul nsw i32 %i.k, -70
  %.neg259271 = mul i32 %i.o, -87
  %i.cf = add i32 %.neg259271, %i.ce
  %i.cg = mul nsw i32 %i.bp, -25
  %i.ch = mul nsw i32 %i.bo, 57
  %i.ci = mul nsw i32 %i.bn, 90
  %i.cj = mul nsw i32 %i.bm, 43
  %i.ck = add i32 %i.ci, %i.cj
  %i.cl = add i32 %i.ck, %i.ch
  %i.cm = add i32 %i.cl, %i.cg
  %i.cn = mul nsw i32 %i.k, -87
  %i.co = mul nsw i32 %i.o, 9
  %i.cp = add nsw i32 %i.co, %i.cn
  %i.cq = mul nsw i32 %i.bp, 90
  %i.cr = mul nsw i32 %i.bo, 25
  %.neg260 = mul i32 %i.bn, -80
  %.neg261 = mul i32 %i.bm, -57
  %i.cs = add i32 %.neg260, %.neg261
  %i.ct = add i32 %i.cs, %i.cr
  %i.cu = add i32 %i.ct, %i.cq
  %i.cv = mul nsw i32 %i.k, -25
  %i.cw = mul nsw i32 %i.o, 90
  %i.cx = add nsw i32 %i.cw, %i.cv
  %i.cy = mul nsw i32 %i.bp, -9
  %.neg262 = mul i32 %i.bo, -87
  %i.cz = mul nsw i32 %i.bn, 43
  %i.da = mul nsw i32 %i.bm, 70
  %i.db = add i32 %i.cz, %i.da
  %i.dc = add i32 %i.db, %.neg262
  %i.dd = add i32 %i.dc, %i.cy
  %i.de = mul nsw i32 %i.k, 57
  %i.df = mul nsw i32 %i.o, 25
  %i.dg = add nsw i32 %i.df, %i.de
  %i.dh = mul nsw i32 %i.bp, -87
  %i.di = mul nsw i32 %i.bo, 70
  %i.dj = mul nsw i32 %i.bn, 9
  %.neg263 = mul i32 %i.bm, -80
  %i.dk = add i32 %i.dj, %.neg263
  %i.dl = add i32 %i.dk, %i.di
  %i.dm = add i32 %i.dl, %i.dh
  %i.dn = mul nsw i32 %i.k, 90
  %.neg264276 = mul i32 %i.o, -80
  %i.do = add i32 %.neg264276, %i.dn
  %i.dp = mul nsw i32 %i.bp, 43
  %i.dq = mul nsw i32 %i.bo, 9
  %.neg265 = mul i32 %i.bn, -57
  %i.dr = mul nsw i32 %i.bm, 87
  %i.ds = add i32 %.neg265, %i.dr
  %i.dt = add i32 %i.ds, %i.dq
  %i.du = add i32 %i.dt, %i.dp
  %i.dv = mul nsw i32 %i.k, 43
  %.neg266278 = mul i32 %i.o, -57
  %i.dw = add i32 %.neg266278, %i.dv
  %i.dx = mul nsw i32 %i.bp, 70
  %.neg267 = mul i32 %i.bo, -80
  %i.dy = mul nsw i32 %i.bn, 87
  %.neg268 = mul i32 %i.bm, -90
  %i.dz = add i32 %i.dy, %.neg268
  %i.ea = add i32 %i.dz, %.neg267
  %i.eb = add i32 %i.ea, %i.dx
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.ec = phi i32 [ 0, %bb.b ], [ %i.ba, %bb.c ]
  %i.ed = phi i32 [ 0, %bb.b ], [ %i.bd, %bb.c ]
  %i.ee = phi i32 [ 0, %bb.b ], [ %i.bf, %bb.c ]
  %i.ef = phi i32 [ 0, %bb.b ], [ %i.bi, %bb.c ]
  %i.eg = phi i32 [ %i.aw, %bb.b ], [ %i.dw, %bb.c ]
  %i.eh = phi i32 [ 0, %bb.b ], [ %i.du, %bb.c ]
  %i.ei = phi i32 [ %i.aq, %bb.b ], [ %i.dg, %bb.c ]
  %i.ej = phi i32 [ 0, %bb.b ], [ %i.dd, %bb.c ]
  %i.ek = phi i32 [ %i.ai, %bb.b ], [ %i.cp, %bb.c ]
  %i.el = phi i32 [ 0, %bb.b ], [ %i.cm, %bb.c ]
  %i.em = phi i32 [ %i.ab, %bb.b ], [ %i.bz, %bb.c ]
  %i.en = phi i32 [ 0, %bb.b ], [ %i.bx, %bb.c ]
  %i.eo = phi i32 [ 0, %bb.b ], [ %i.cd, %bb.c ]
  %i.ep = phi i32 [ %i.ae, %bb.b ], [ %i.cf, %bb.c ]
  %i.eq = phi i32 [ 0, %bb.b ], [ %i.cu, %bb.c ]
  %i.er = phi i32 [ %i.am, %bb.b ], [ %i.cx, %bb.c ]
  %i.es = phi i32 [ 0, %bb.b ], [ %i.dm, %bb.c ]
  %i.et = phi i32 [ %i.at, %bb.b ], [ %i.do, %bb.c ]
  %i.eu = phi i32 [ 0, %bb.b ], [ %i.bl, %bb.c ]
  %i.ev = phi i32 [ 0, %bb.b ], [ %i.bq, %bb.c ]  ; 2 uses
  %i.ew = phi i32 [ 0, %bb.b ], [ %i.bk, %bb.c ]
  %i.ex = phi i32 [ 0, %bb.b ], [ %i.eb, %bb.c ]
  %i.ey = mul nsw i32 %i.k, 80
  %i.ez = mul nsw i32 %i.o, 70
  %i.fa = add nsw i32 %i.ez, %i.ey
  %i.fb = select i1 %i.y, i32 %i.fa, i32 0
  %i.fc = mul nsw i32 %i.c, 9
  %i.fd = icmp ugt i64 %2, 2                      ; 12 uses
  %i.fe = mul nsw i32 %i.g, -25
  %i.ff = select i1 %i.fd, i32 %i.fe, i32 0
  %i.fg = add nsw i32 %i.ff, %i.fc
  %i.fh = add nsw i32 %i.fg, %i.eg
  %i.fi = mul nsw i32 %i.c, 25
  %i.fj = mul nsw i32 %i.g, -70
  %i.fk = select i1 %i.fd, i32 %i.fj, i32 0
  %i.fl = add nsw i32 %i.fk, %i.fi
  %i.fm = add i32 %i.fl, %i.eh
  %i.fn = add i32 %i.fm, %i.et                    ; 2 uses
  %i.fo = mul nsw i32 %i.c, 43
  %i.fp = mul nsw i32 %i.g, -90
  %i.fq = select i1 %i.fd, i32 %i.fp, i32 0
  %i.fr = add nsw i32 %i.fq, %i.fo
  %i.fs = add nsw i32 %i.fr, %i.ei
  %i.ft = add nsw i32 %i.fs, %i.es                ; 2 uses
  %i.fu = mul nsw i32 %i.c, 57
  %i.fv = mul nsw i32 %i.g, -80
  %i.fw = select i1 %i.fd, i32 %i.fv, i32 0
  %i.fx = add nsw i32 %i.fw, %i.fu
  %i.fy = add i32 %i.fx, %i.ej
  %i.fz = add i32 %i.fy, %i.er                    ; 2 uses
  %i.ga = mul nsw i32 %i.c, 70
  %i.gb = mul nsw i32 %i.g, -43
  %i.gc = select i1 %i.fd, i32 %i.gb, i32 0
  %i.gd = add nsw i32 %i.gc, %i.ga
  %i.ge = add nsw i32 %i.gd, %i.ek
  %i.gf = add nsw i32 %i.ge, %i.eq                ; 2 uses
  %i.gg = mul nsw i32 %i.c, 80
  %i.gh = mul nsw i32 %i.g, 9
  %i.gi = select i1 %i.fd, i32 %i.gh, i32 0
  %i.gj = add nsw i32 %i.gi, %i.gg
  %i.gk = add i32 %i.gj, %i.el
  %i.gl = add i32 %i.gk, %i.ep                    ; 2 uses
  %i.gm = mul nsw i32 %i.c, 87
  %i.gn = mul nsw i32 %i.g, 57
  %i.go = select i1 %i.fd, i32 %i.gn, i32 0
  %i.gp = add nsw i32 %i.go, %i.gm
  %i.gq = add nsw i32 %i.gp, %i.em
  %i.gr = add nsw i32 %i.gq, %i.eo                ; 2 uses
  %i.gs = mul nsw i32 %i.c, 90
  %i.gt = mul nsw i32 %i.g, 87
  %3 = add i32 %i.gt, %i.fb
  %4 = select i1 %i.fd, i32 %3, i32 0
  %i.gu = add i32 %4, %i.gs
  %i.gv = add nsw i32 %i.gu, %i.en                ; 2 uses
  %i.gw = add nsw i32 %i.ev, %i.a
  %i.gx = shl nsw i32 %i.gw, 6                    ; 2 uses
  %i.gy = mul nsw i32 %i.i, 83
  %5 = add i32 %i.eu, %i.gy
  %6 = select i1 %i.y, i32 %5, i32 0              ; 2 uses
  %i.gz = add nsw i32 %i.gx, %6                   ; 2 uses
  %i.ha = mul nsw i32 %i.e, 89
  %i.hb = mul nsw i32 %i.m, 75
  %i.hc = select i1 %i.y, i32 %i.hb, i32 0
  %i.hd = add i32 %i.hc, %i.ha
  %7 = select i1 %i.fd, i32 %i.hd, i32 0
  %i.he = add nsw i32 %i.ef, %7                   ; 2 uses
  %i.hf = sub nsw i32 %i.gz, %i.he                ; 2 uses
  %i.hg = sub i32 %i.a, %i.ev
  %i.hh = shl nsw i32 %i.hg, 6                    ; 2 uses
  %i.hi = mul nsw i32 %i.i, 36
  %8 = add i32 %i.ew, %i.hi
  %9 = select i1 %i.y, i32 %8, i32 0              ; 2 uses
  %i.hj = add nsw i32 %9, %i.hh                   ; 2 uses
  %i.hk = mul nsw i32 %i.e, 75
  %i.hl = mul nsw i32 %i.m, -18
  %i.hm = select i1 %i.y, i32 %i.hl, i32 0
  %i.hn = add i32 %i.hm, %i.hk
  %10 = select i1 %i.fd, i32 %i.hn, i32 0
  %i.ho = add nsw i32 %i.ee, %10                  ; 2 uses
  %i.hp = sub nsw i32 %i.hj, %i.ho                ; 2 uses
  %i.hq = sub nsw i32 %i.hh, %9                   ; 2 uses
  %i.hr = mul nsw i32 %i.e, 50
  %i.hs = mul nsw i32 %i.m, -89
  %i.ht = select i1 %i.y, i32 %i.hs, i32 0
  %i.hu = add i32 %i.ht, %i.hr
  %11 = select i1 %i.fd, i32 %i.hu, i32 0
  %i.hv = add nsw i32 %i.ed, %11                  ; 2 uses
  %i.hw = sub nsw i32 %i.hq, %i.hv                ; 2 uses
  %i.hx = sub nsw i32 %i.gx, %6                   ; 2 uses
  %i.hy = mul nsw i32 %i.e, 18
  %i.hz = mul nsw i32 %i.m, -50
  %i.ia = select i1 %i.y, i32 %i.hz, i32 0
  %i.ib = add i32 %i.ia, %i.hy
  %12 = select i1 %i.fd, i32 %i.ib, i32 0
  %i.ic = add nsw i32 %i.ec, %12                  ; 2 uses
  %i.id = sub nsw i32 %i.hx, %i.ic                ; 2 uses
  %i.ie = add nsw i32 %i.hx, %i.ic                ; 2 uses
  %i.if = add nsw i32 %i.hq, %i.hv                ; 2 uses
  %i.ig = add nsw i32 %i.hj, %i.ho                ; 2 uses
  %i.ih = add nsw i32 %i.gz, %i.he                ; 2 uses
  %i.ii = add nsw i32 %i.fh, %i.ex                ; 2 uses
  %i.ij = add nsw i32 %i.ih, %i.gv
  store i32 %i.ij, ptr %0, align 4, !tbaa !11
  %i.ik = add nsw i32 %i.ig, %i.gr
  store i32 %i.ik, ptr %i.b, align 4, !tbaa !11
  %i.il = add nsw i32 %i.if, %i.gl
  store i32 %i.il, ptr %i.d, align 4, !tbaa !11
  %i.im = add nsw i32 %i.ie, %i.gf
  store i32 %i.im, ptr %i.f, align 4, !tbaa !11
  %i.in = add nsw i32 %i.id, %i.fz
  store i32 %i.in, ptr %i.h, align 4, !tbaa !11
  %i.io = add nsw i32 %i.hw, %i.ft
  store i32 %i.io, ptr %i.j, align 4, !tbaa !11
  %i.ip = add nsw i32 %i.hp, %i.fn
  store i32 %i.ip, ptr %i.l, align 4, !tbaa !11
  %i.iq = add nsw i32 %i.hf, %i.ii
  store i32 %i.iq, ptr %i.n, align 4, !tbaa !11
  %i.ir = sub nsw i32 %i.hf, %i.ii
  store i32 %i.ir, ptr %i.p, align 4, !tbaa !11
  %i.is = sub nsw i32 %i.hp, %i.fn
  store i32 %i.is, ptr %i.q, align 4, !tbaa !11
  %i.it = sub nsw i32 %i.hw, %i.ft
  store i32 %i.it, ptr %i.r, align 4, !tbaa !11
  %i.iu = sub nsw i32 %i.id, %i.fz
  store i32 %i.iu, ptr %i.s, align 4, !tbaa !11
  %i.iv = sub nsw i32 %i.ie, %i.gf
  store i32 %i.iv, ptr %i.t, align 4, !tbaa !11
  %i.iw = sub nsw i32 %i.if, %i.gl
  store i32 %i.iw, ptr %i.u, align 4, !tbaa !11
  %i.ix = sub nsw i32 %i.ig, %i.gr
  store i32 %i.ix, ptr %i.v, align 4, !tbaa !11
  %i.iy = sub nsw i32 %i.ih, %i.gv
  store i32 %i.iy, ptr %i.w, align 4, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @ff_vvc_inv_dct2_32(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !11     ; 2 uses
  %i.b = getelementptr inbounds [4 x i8], ptr %0, i64 %1 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !11   ; 15 uses
  %.idx = shl nsw i64 %1, 3
  %i.d = getelementptr inbounds i8, ptr %0, i64 %.idx ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !11   ; 8 uses
  %.idx689 = mul nsw i64 %1, 12
  %i.f = getelementptr inbounds i8, ptr %0, i64 %.idx689 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !11   ; 16 uses
  %.idx690 = shl nsw i64 %1, 4
  %i.h = getelementptr inbounds i8, ptr %0, i64 %.idx690 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !11   ; 4 uses
  %.idx691 = mul nsw i64 %1, 20
  %i.j = getelementptr inbounds i8, ptr %0, i64 %.idx691 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !11   ; 32 uses
  %.idx692 = mul nsw i64 %1, 24
  %i.l = getelementptr inbounds i8, ptr %0, i64 %.idx692 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !11   ; 8 uses
  %.idx693 = mul nsw i64 %1, 28
  %i.n = getelementptr inbounds i8, ptr %0, i64 %.idx693 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !11   ; 30 uses
  %.idx694 = shl nsw i64 %1, 5
  %i.p = getelementptr inbounds i8, ptr %0, i64 %.idx694 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !11   ; 2 uses
  %.idx695 = mul nsw i64 %1, 36
  %i.r = getelementptr inbounds i8, ptr %0, i64 %.idx695 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !11   ; 15 uses
  %.idx696 = mul nsw i64 %1, 40
  %i.t = getelementptr inbounds i8, ptr %0, i64 %.idx696 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !11   ; 15 uses
  %.idx697 = mul nsw i64 %1, 44
  %i.v = getelementptr inbounds i8, ptr %0, i64 %.idx697 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !11   ; 16 uses
  %.idx698 = mul nsw i64 %1, 48
  %i.x = getelementptr inbounds i8, ptr %0, i64 %.idx698 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !11   ; 4 uses
  %.idx699 = mul nsw i64 %1, 52
  %i.z = getelementptr inbounds i8, ptr %0, i64 %.idx699 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !11  ; 15 uses
  %.idx700 = mul nsw i64 %1, 56
  %i.ab = getelementptr inbounds i8, ptr %0, i64 %.idx700 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !11 ; 15 uses
  %.idx701 = mul nsw i64 %1, 60
  %i.ad = getelementptr inbounds i8, ptr %0, i64 %.idx701 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !11 ; 16 uses
  %.idx702 = shl nsw i64 %1, 6
  %i.af = getelementptr inbounds i8, ptr %0, i64 %.idx702 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !11
  %.idx703 = mul nsw i64 %1, 68
  %i.ah = getelementptr inbounds i8, ptr %0, i64 %.idx703 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !11 ; 16 uses
  %.idx704 = mul nsw i64 %1, 72
  %i.aj = getelementptr inbounds i8, ptr %0, i64 %.idx704 ; 2 uses
  %.idx705 = mul nsw i64 %1, 76
  %i.ak = getelementptr inbounds i8, ptr %0, i64 %.idx705 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !11 ; 16 uses
  %.idx706 = mul nsw i64 %1, 80
  %i.am = getelementptr inbounds i8, ptr %0, i64 %.idx706 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !11 ; 4 uses
  %.idx707 = mul nsw i64 %1, 84
  %i.ao = getelementptr inbounds i8, ptr %0, i64 %.idx707 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !11 ; 16 uses
  %.idx708 = mul nsw i64 %1, 88
  %i.aq = getelementptr inbounds i8, ptr %0, i64 %.idx708 ; 2 uses
  %.idx709 = mul nsw i64 %1, 92
  %i.ar = getelementptr inbounds i8, ptr %0, i64 %.idx709 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !11 ; 16 uses
  %.idx710 = mul nsw i64 %1, 96
  %i.at = getelementptr inbounds i8, ptr %0, i64 %.idx710 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !11 ; 2 uses
  %.idx711 = mul nsw i64 %1, 100
  %i.av = getelementptr inbounds i8, ptr %0, i64 %.idx711 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !11 ; 16 uses
  %.idx712 = mul nsw i64 %1, 104
  %i.ax = getelementptr inbounds i8, ptr %0, i64 %.idx712 ; 2 uses
  %.idx713 = mul nsw i64 %1, 108
  %i.ay = getelementptr inbounds i8, ptr %0, i64 %.idx713 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !11 ; 16 uses
  %.idx714 = mul nsw i64 %1, 112
  %i.ba = getelementptr inbounds i8, ptr %0, i64 %.idx714 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !11 ; 4 uses
  %.idx715 = mul nsw i64 %1, 116
  %i.bc = getelementptr inbounds i8, ptr %0, i64 %.idx715 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !11 ; 16 uses
  %.idx716 = mul nsw i64 %1, 120
  %i.be = getelementptr inbounds i8, ptr %0, i64 %.idx716 ; 2 uses
  %.idx717 = mul nsw i64 %1, 124
  %i.bf = getelementptr inbounds i8, ptr %0, i64 %.idx717 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !11 ; 16 uses
  %i.bh = icmp ugt i64 %2, 16                     ; 21 uses
  %i.bi = icmp ugt i64 %2, 8                      ; 8 uses
  %i.bj = mul nsw i32 %i.au, 36
  %i.bk = mul nsw i32 %i.au, -83
  %i.bl = icmp ugt i64 %2, 4                      ; 43 uses
  br i1 %i.bh, label %.thread827, label %bb.b

.thread827:                                       ; preds = %bb.a
  %i.bm = load i32, ptr %i.be, align 4, !tbaa !11 ; 8 uses
  %i.bn = load i32, ptr %i.ax, align 4, !tbaa !11 ; 8 uses
  %i.bo = load i32, ptr %i.aq, align 4, !tbaa !11 ; 8 uses
  %i.bp = load i32, ptr %i.aj, align 4, !tbaa !11 ; 8 uses
  %i.bq = mul nsw i32 %i.bp, 57
  %i.br = mul nsw i32 %i.bo, 43
  %i.bs = mul nsw i32 %i.bn, 25
  %i.bt = mul nsw i32 %i.bm, 9
  %i.bu = add i32 %i.bs, %i.bt
  %i.bv = add i32 %i.bu, %i.br
  %i.bw = add i32 %i.bv, %i.bq
  %i.bx = mul nsw i32 %i.u, 9
  %.neg719817 = mul i32 %i.ac, -43
  %i.by = add i32 %.neg719817, %i.bx
  %i.bz = mul nsw i32 %i.bp, -80
  %.neg720 = mul i32 %i.bo, -90
  %.neg721 = mul i32 %i.bn, -70
  %.neg722 = mul i32 %i.bm, -25
  %i.ca = add i32 %.neg721, %.neg722
  %i.cb = add i32 %i.ca, %.neg720
  %i.cc = add i32 %i.cb, %i.bz
  %i.cd = mul nsw i32 %i.u, -70
  %.neg723819 = mul i32 %i.ac, -87
  %i.ce = add i32 %.neg723819, %i.cd
  %i.cf = mul nsw i32 %i.bp, -25
  %i.cg = mul nsw i32 %i.bo, 57
  %i.ch = mul nsw i32 %i.bn, 90
  %i.ci = mul nsw i32 %i.bm, 43
  %i.cj = add i32 %i.ch, %i.ci
  %i.ck = add i32 %i.cj, %i.cg
  %i.cl = add i32 %i.ck, %i.cf
  %i.cm = mul nsw i32 %i.u, -87
  %i.cn = mul nsw i32 %i.ac, 9
  %i.co = add nsw i32 %i.cn, %i.cm
  %i.cp = mul nsw i32 %i.bp, 90
  %i.cq = mul nsw i32 %i.bo, 25
  %.neg724 = mul i32 %i.bn, -80
  %.neg725 = mul i32 %i.bm, -57
  %i.cr = add i32 %.neg724, %.neg725
  %i.cs = add i32 %i.cr, %i.cq
  %i.ct = add i32 %i.cs, %i.cp
  %i.cu = mul nsw i32 %i.u, -25
  %i.cv = mul nsw i32 %i.ac, 90
  %i.cw = add nsw i32 %i.cv, %i.cu
  %i.cx = mul nsw i32 %i.bp, -9
  %.neg726 = mul i32 %i.bo, -87
  %i.cy = mul nsw i32 %i.bn, 43
  %i.cz = mul nsw i32 %i.bm, 70
  %i.da = add i32 %i.cy, %i.cz
  %i.db = add i32 %i.da, %.neg726
  %i.dc = add i32 %i.db, %i.cx
  %i.dd = mul nsw i32 %i.u, 57
  %i.de = mul nsw i32 %i.ac, 25
  %i.df = add nsw i32 %i.de, %i.dd
  %i.dg = mul nsw i32 %i.bp, -87
  %i.dh = mul nsw i32 %i.bo, 70
  %i.di = mul nsw i32 %i.bn, 9
  %.neg727 = mul i32 %i.bm, -80
  %i.dj = add i32 %i.di, %.neg727
end_hunk_0
begin_hunk_1_@ff_vvc_inv_dct2_32:bb.a

bb.ai:                                            ; preds = %.thread939, %bb.ag, %bb.ah
  %i.tw = phi i32 [ %i.tm, %bb.ag ], [ %i.tm, %bb.ah ], [ 0, %.thread939 ]
  %i.tx = phi i32 [ %i.qt, %bb.ag ], [ %i.qt, %bb.ah ], [ 0, %.thread939 ]
  %i.ty = phi i32 [ %i.qa, %bb.ag ], [ %i.qa, %bb.ah ], [ 0, %.thread939 ]
  %i.tz = phi i32 [ %i.pg, %bb.ag ], [ %i.pg, %bb.ah ], [ 0, %.thread939 ]
  %i.ua = phi i32 [ %i.ol, %bb.ag ], [ %i.ol, %bb.ah ], [ 0, %.thread939 ]
  %i.ub = phi i32 [ %i.np, %bb.ag ], [ %i.np, %bb.ah ], [ 0, %.thread939 ]
  %i.uc = phi i32 [ %i.my, %bb.ag ], [ %i.my, %bb.ah ], [ 0, %.thread939 ]
  %i.ud = phi i32 [ %i.mc, %bb.ag ], [ %i.mc, %bb.ah ], [ 0, %.thread939 ]
  %i.ue = phi i32 [ %i.li, %bb.ag ], [ %i.li, %bb.ah ], [ 0, %.thread939 ]
  %i.uf = phi i32 [ %i.km, %bb.ag ], [ %i.km, %bb.ah ], [ 0, %.thread939 ]
  %i.ug = phi i32 [ %i.jv, %bb.ag ], [ %i.jv, %bb.ah ], [ 0, %.thread939 ]
  %i.uh = phi i32 [ %i.ja, %bb.ag ], [ %i.ja, %bb.ah ], [ 0, %.thread939 ]
  %i.ui = phi i32 [ %i.if, %bb.ag ], [ %i.if, %bb.ah ], [ 0, %.thread939 ]
  %i.uj = phi i32 [ %i.hi, %bb.ag ], [ %i.hi, %bb.ah ], [ 0, %.thread939 ]
  %i.uk = phi i32 [ %i.gt, %bb.ag ], [ %i.gt, %bb.ah ], [ 0, %.thread939 ]
  %i.ul = phi i32 [ %i.fv, %bb.ag ], [ %i.fv, %bb.ah ], [ 0, %.thread939 ]
  %i.um = phi i32 [ %i.fo, %bb.ag ], [ %i.fo, %bb.ah ], [ 0, %.thread939 ]
  %i.un = phi i32 [ %i.fn, %bb.ag ], [ %i.fn, %bb.ah ], [ 0, %.thread939 ]
  %i.uo = phi i32 [ %i.fm, %bb.ag ], [ %i.fm, %bb.ah ], [ 0, %.thread939 ]
  %i.up = phi i32 [ %i.fl, %bb.ag ], [ %i.fl, %bb.ah ], [ 0, %.thread939 ]
  %i.uq = phi i32 [ %i.fk, %bb.ag ], [ %i.fk, %bb.ah ], [ 0, %.thread939 ]
  %i.ur = phi i32 [ %i.fj, %bb.ag ], [ %i.fj, %bb.ah ], [ 0, %.thread939 ]
  %i.us = phi i32 [ %i.fi, %bb.ag ], [ %i.fi, %bb.ah ], [ 0, %.thread939 ]
  %i.ut = phi i32 [ %i.fh, %bb.ag ], [ %i.fh, %bb.ah ], [ 0, %.thread939 ]
  %i.uu = phi i32 [ %i.fg, %bb.ag ], [ %i.fg, %bb.ah ], [ 0, %.thread939 ]
  %i.uv = phi i32 [ %i.ff, %bb.ag ], [ %i.ff, %bb.ah ], [ 0, %.thread939 ]
  %i.uw = phi i32 [ %i.fe, %bb.ag ], [ %i.fe, %bb.ah ], [ 0, %.thread939 ]
  %i.ux = phi i32 [ %i.fd, %bb.ag ], [ %i.fd, %bb.ah ], [ 0, %.thread939 ]
  %i.uy = phi i32 [ %i.fc, %bb.ag ], [ %i.fc, %bb.ah ], [ 0, %.thread939 ]
  %i.uz = phi i32 [ %i.fb, %bb.ag ], [ %i.fb, %bb.ah ], [ 0, %.thread939 ]
  %i.va = phi i32 [ %i.fa, %bb.ag ], [ %i.fa, %bb.ah ], [ 0, %.thread939 ]
  %i.vb = phi i32 [ %i.ez, %bb.ag ], [ %i.ez, %bb.ah ], [ %i.ey, %.thread939 ]
  %i.vc = phi i32 [ %.ph, %bb.ag ], [ %.ph, %bb.ah ], [ 0, %.thread939 ]
  %i.vd = phi i32 [ %i.go, %bb.ag ], [ %i.go, %bb.ah ], [ %i.rj, %.thread939 ]
  %i.ve = phi i32 [ %.ph832, %bb.ag ], [ %.ph832, %bb.ah ], [ 0, %.thread939 ]
  %i.vf = phi i32 [ %i.he, %bb.ag ], [ %i.he, %bb.ah ], [ %i.rm, %.thread939 ]
  %i.vg = phi i32 [ %.ph837, %bb.ag ], [ %.ph837, %bb.ah ], [ 0, %.thread939 ]
  %i.vh = phi i32 [ %i.ia, %bb.ag ], [ %i.ia, %bb.ah ], [ %i.rp, %.thread939 ]
  %i.vi = phi i32 [ %.ph842, %bb.ag ], [ %.ph842, %bb.ah ], [ 0, %.thread939 ]
  %i.vj = phi i32 [ %i.it, %bb.ag ], [ %i.it, %bb.ah ], [ %i.rs, %.thread939 ]
  %i.vk = phi i32 [ %.ph851, %bb.ag ], [ %.ph851, %bb.ah ], [ 0, %.thread939 ]
  %i.vl = phi i32 [ %i.jp, %bb.ag ], [ %i.jp, %bb.ah ], [ %i.rv, %.thread939 ]
  %i.vm = phi i32 [ %.ph861, %bb.ag ], [ %.ph861, %bb.ah ], [ 0, %.thread939 ]
  %i.vn = phi i32 [ %i.kh, %bb.ag ], [ %i.kh, %bb.ah ], [ %i.ry, %.thread939 ]
  %i.vo = phi i32 [ %.ph871, %bb.ag ], [ %.ph871, %bb.ah ], [ 0, %.thread939 ]
  %i.vp = phi i32 [ %i.ld, %bb.ag ], [ %i.ld, %bb.ah ], [ %i.sc, %.thread939 ]
  %i.vq = phi i32 [ %.ph880, %bb.ag ], [ %.ph880, %bb.ah ], [ 0, %.thread939 ]
  %i.vr = phi i32 [ %i.lx, %bb.ag ], [ %i.lx, %bb.ah ], [ %i.sg, %.thread939 ]
  %i.vs = phi i32 [ %.ph889, %bb.ag ], [ %.ph889, %bb.ah ], [ 0, %.thread939 ]
  %i.vt = phi i32 [ %i.ms, %bb.ag ], [ %i.ms, %bb.ah ], [ %i.sk, %.thread939 ]
  %i.vu = phi i32 [ %.ph898, %bb.ag ], [ %.ph898, %bb.ah ], [ 0, %.thread939 ]
  %i.vv = phi i32 [ %i.nk, %bb.ag ], [ %i.nk, %bb.ah ], [ %i.so, %.thread939 ]
  %i.vw = phi i32 [ %.ph907, %bb.ag ], [ %.ph907, %bb.ah ], [ 0, %.thread939 ]
  %i.vx = phi i32 [ %i.og, %bb.ag ], [ %i.og, %bb.ah ], [ %i.ss, %.thread939 ]
  %i.vy = phi i32 [ %.ph916, %bb.ag ], [ %.ph916, %bb.ah ], [ 0, %.thread939 ]
  %i.vz = phi i32 [ %i.pa, %bb.ag ], [ %i.pa, %bb.ah ], [ %i.sv, %.thread939 ]
  %i.wa = phi i32 [ %.ph926, %bb.ag ], [ %.ph926, %bb.ah ], [ 0, %.thread939 ]
  %i.wb = phi i32 [ %i.pu, %bb.ag ], [ %i.pu, %bb.ah ], [ %i.sy, %.thread939 ]
  %i.wc = phi i32 [ %.ph931, %bb.ag ], [ %.ph931, %bb.ah ], [ 0, %.thread939 ]
  %i.wd = phi i32 [ %i.qo, %bb.ag ], [ %i.qo, %bb.ah ], [ %i.tb, %.thread939 ]
  %i.we = phi i32 [ %.ph936, %bb.ag ], [ %.ph936, %bb.ah ], [ 0, %.thread939 ]
  %i.wf = phi i32 [ %i.th, %bb.ag ], [ %i.th, %bb.ah ], [ %i.te, %.thread939 ]
  %i.wg = phi i32 [ 0, %bb.ag ], [ %i.bj, %bb.ah ], [ 0, %.thread939 ]
  %i.wh = phi i32 [ 0, %bb.ag ], [ %i.ag, %bb.ah ], [ 0, %.thread939 ] ; 2 uses
  %i.wi = phi i32 [ 0, %bb.ag ], [ %i.bk, %bb.ah ], [ 0, %.thread939 ]
  %i.wj = phi i32 [ 0, %bb.ag ], [ %i.tv, %bb.ah ], [ 0, %.thread939 ]
  %i.wk = mul nsw i32 %i.u, 80
  %i.wl = mul nsw i32 %i.ac, 70
  %i.wm = add nsw i32 %i.wl, %i.wk
  %i.wn = select i1 %i.bi, i32 %i.wm, i32 0
  %.neg718 = mul i32 %i.bb, -89
  %i.wo = mul nsw i32 %i.an, 75
  %i.wp = add i32 %.neg718, %i.wo
  %i.wq = select i1 %i.bh, i32 %i.wp, i32 0
  %i.wr = mul nsw i32 %i.an, 18
  %i.ws = mul nsw i32 %i.bb, 75
  %i.wt = add nsw i32 %i.ws, %i.wr
  %i.wu = select i1 %i.bh, i32 %i.wt, i32 0
  %.neg = mul i32 %i.bb, -50
  %i.wv = mul nsw i32 %i.an, -89
  %i.ww = add i32 %.neg, %i.wv
  %i.wx = select i1 %i.bh, i32 %i.ww, i32 0
  %i.wy = mul nsw i32 %i.an, 50
  %i.wz = mul nsw i32 %i.bb, 18
  %i.xa = add nsw i32 %i.wz, %i.wy
  %i.xb = select i1 %i.bh, i32 %i.xa, i32 0
  %i.xc = shl nsw i32 %i.c, 2
  %i.xd = icmp ugt i64 %2, 2                      ; 24 uses
  %i.xe = mul nsw i32 %i.g, -13
  %i.xf = select i1 %i.xd, i32 %i.xe, i32 0
  %i.xg = add nsw i32 %i.xf, %i.xc
  %i.xh = mul nsw i32 %i.c, 13
  %i.xi = mul nsw i32 %i.g, -38
  %i.xj = select i1 %i.xd, i32 %i.xi, i32 0
  %i.xk = add nsw i32 %i.xj, %i.xh
  %i.xl = add i32 %i.xk, %i.tx
  %i.xm = add i32 %i.xl, %i.wd
  %i.xn = add nsw i32 %i.xm, %i.we                ; 2 uses
  %i.xo = mul nsw i32 %i.c, 22
  %i.xp = mul nsw i32 %i.g, -61
  %i.xq = select i1 %i.xd, i32 %i.xp, i32 0
  %i.xr = add nsw i32 %i.xq, %i.xo
  %i.xs = add i32 %i.xr, %i.ty
  %i.xt = add i32 %i.xs, %i.wb
  %i.xu = add nsw i32 %i.xt, %i.wc                ; 2 uses
  %i.xv = mul nsw i32 %i.c, 31
  %i.xw = mul nsw i32 %i.g, -78
  %i.xx = select i1 %i.xd, i32 %i.xw, i32 0
  %i.xy = add nsw i32 %i.xx, %i.xv
  %i.xz = add i32 %i.xy, %i.tz
  %i.ya = add i32 %i.xz, %i.vz
  %i.yb = add nsw i32 %i.ya, %i.wa                ; 2 uses
  %i.yc = mul nsw i32 %i.c, 38
  %i.yd = mul nsw i32 %i.g, -88
  %i.ye = select i1 %i.xd, i32 %i.yd, i32 0
  %i.yf = add nsw i32 %i.ye, %i.yc
  %i.yg = add i32 %i.yf, %i.ua
  %i.yh = add i32 %i.yg, %i.vx
  %i.yi = add nsw i32 %i.yh, %i.vy                ; 2 uses
  %i.yj = mul nsw i32 %i.c, 46
  %i.yk = mul nsw i32 %i.g, -90
  %i.yl = select i1 %i.xd, i32 %i.yk, i32 0
  %i.ym = add nsw i32 %i.yl, %i.yj
  %i.yn = add i32 %i.ym, %i.ub
  %i.yo = add i32 %i.yn, %i.vv
  %i.yp = add nsw i32 %i.yo, %i.vw                ; 2 uses
  %i.yq = mul nsw i32 %i.c, 54
  %i.yr = mul nsw i32 %i.g, -85
  %i.ys = select i1 %i.xd, i32 %i.yr, i32 0
  %i.yt = add nsw i32 %i.ys, %i.yq
  %i.yu = add i32 %i.yt, %i.uc
  %i.yv = add i32 %i.yu, %i.vt
  %i.yw = add nsw i32 %i.yv, %i.vu                ; 2 uses
  %i.yx = mul nsw i32 %i.c, 61
  %i.yy = mul nsw i32 %i.g, -73
  %i.yz = select i1 %i.xd, i32 %i.yy, i32 0
  %i.za = add nsw i32 %i.yz, %i.yx
  %i.zb = add i32 %i.za, %i.ud
  %i.zc = add i32 %i.zb, %i.vr
  %i.zd = add nsw i32 %i.zc, %i.vs                ; 2 uses
  %i.ze = mul nsw i32 %i.c, 67
  %i.zf = mul nsw i32 %i.g, -54
  %i.zg = select i1 %i.xd, i32 %i.zf, i32 0
  %i.zh = add nsw i32 %i.zg, %i.ze
  %i.zi = add i32 %i.zh, %i.ue
  %i.zj = add i32 %i.zi, %i.vp
  %i.zk = add nsw i32 %i.zj, %i.vq                ; 2 uses
  %i.zl = mul nsw i32 %i.c, 73
  %i.zm = mul nsw i32 %i.g, -31
  %i.zn = select i1 %i.xd, i32 %i.zm, i32 0
  %i.zo = add nsw i32 %i.zn, %i.zl
  %i.zp = add i32 %i.zo, %i.uf
  %i.zq = add i32 %i.zp, %i.vn
  %i.zr = add nsw i32 %i.zq, %i.vo                ; 2 uses
  %i.zs = mul nsw i32 %i.c, 78
  %i.zt = mul nsw i32 %i.g, -4
  %i.zu = select i1 %i.xd, i32 %i.zt, i32 0
  %i.zv = add nsw i32 %i.zu, %i.zs
  %i.zw = add i32 %i.zv, %i.ug
  %i.zx = add i32 %i.zw, %i.vl
  %i.zy = add nsw i32 %i.zx, %i.vm                ; 2 uses
  %i.zz = mul nsw i32 %i.c, 82
  %i.aaa = mul nsw i32 %i.g, 22
  %i.aab = select i1 %i.xd, i32 %i.aaa, i32 0
  %i.aac = add nsw i32 %i.aab, %i.zz
  %i.aad = add i32 %i.aac, %i.uh
  %i.aae = add i32 %i.aad, %i.vj
  %i.aaf = add nsw i32 %i.aae, %i.vk              ; 2 uses
  %i.aag = mul nsw i32 %i.c, 85
  %i.aah = mul nsw i32 %i.g, 46
  %i.aai = select i1 %i.xd, i32 %i.aah, i32 0
  %i.aaj = add nsw i32 %i.aai, %i.aag
  %i.aak = add i32 %i.aaj, %i.ui
  %i.aal = add i32 %i.aak, %i.vh
  %i.aam = add nsw i32 %i.aal, %i.vi              ; 2 uses
  %i.aan = mul nsw i32 %i.c, 88
  %i.aao = mul nsw i32 %i.g, 67
  %i.aap = select i1 %i.xd, i32 %i.aao, i32 0
  %i.aaq = add nsw i32 %i.aap, %i.aan
  %i.aar = add i32 %i.aaq, %i.uj
  %i.aas = add i32 %i.aar, %i.vf
  %i.aat = add nsw i32 %i.aas, %i.vg              ; 2 uses
  %i.aau = mul nsw i32 %i.c, 90                   ; 2 uses
  %i.aav = mul nsw i32 %i.g, 82
  %i.aaw = select i1 %i.xd, i32 %i.aav, i32 0
  %i.aax = add nsw i32 %i.aaw, %i.aau
  %i.aay = add i32 %i.aax, %i.uk
  %i.aaz = add i32 %i.aay, %i.vd
  %i.aba = add nsw i32 %i.aaz, %i.ve              ; 2 uses
  %i.abb = mul nsw i32 %i.g, 90
  %i.abc = select i1 %i.xd, i32 %i.abb, i32 0
  %i.abd = add nsw i32 %i.abc, %i.aau
  %i.abe = add i32 %i.abd, %i.ul
  %i.abf = add i32 %i.abe, %i.vb
  %i.abg = add nsw i32 %i.abf, %i.vc              ; 2 uses
  %i.abh = add nsw i32 %i.wh, %i.a
  %i.abi = shl nsw i32 %i.abh, 6                  ; 2 uses
  %i.abj = mul nsw i32 %i.q, 83
  %3 = add i32 %i.wg, %i.abj
  %4 = select i1 %i.bi, i32 %3, i32 0             ; 2 uses
  %i.abk = add nsw i32 %i.abi, %4                 ; 2 uses
  %i.abl = mul nsw i32 %i.i, 89
  %5 = mul nsw i32 %i.y, 75
  %6 = add i32 %5, %i.xb
  %i.abm = select i1 %i.bi, i32 %6, i32 0
  %i.abn = add i32 %i.abm, %i.abl
  %7 = select i1 %i.bl, i32 %i.abn, i32 0         ; 2 uses
  %i.abo = add nsw i32 %i.abk, %7                 ; 2 uses
  %i.abp = mul nsw i32 %i.e, 90
  %8 = mul nsw i32 %i.m, 87
  %9 = add i32 %8, %i.wn
  %i.abq = select i1 %i.bl, i32 %9, i32 0
  %i.abr = add i32 %i.abq, %i.abp
  %10 = select i1 %i.xd, i32 %i.abr, i32 0
  %i.abs = add nsw i32 %i.ut, %10                 ; 2 uses
  %i.abt = sub nsw i32 %i.abo, %i.abs             ; 2 uses
  %i.abu = sub i32 %i.a, %i.wh
  %i.abv = shl nsw i32 %i.abu, 6                  ; 2 uses
  %i.abw = mul nsw i32 %i.q, 36
  %11 = add i32 %i.wi, %i.abw
  %12 = select i1 %i.bi, i32 %11, i32 0           ; 2 uses
  %i.abx = add nsw i32 %12, %i.abv                ; 2 uses
  %i.aby = mul nsw i32 %i.i, 75
  %13 = mul nsw i32 %i.y, -18
  %14 = add i32 %13, %i.wx
  %i.abz = select i1 %i.bi, i32 %14, i32 0
  %i.aca = add i32 %i.abz, %i.aby
  %15 = select i1 %i.bl, i32 %i.aca, i32 0        ; 2 uses
  %i.acb = add nsw i32 %i.abx, %15                ; 2 uses
  %i.acc = mul nsw i32 %i.e, 87
  %i.acd = mul nsw i32 %i.m, 57
  %i.ace = select i1 %i.bl, i32 %i.acd, i32 0
  %i.acf = add i32 %i.ace, %i.acc
  %16 = select i1 %i.xd, i32 %i.acf, i32 0
  %i.acg = add nsw i32 %i.us, %16
  %i.ach = add nsw i32 %i.acg, %i.uu              ; 2 uses
  %i.aci = sub nsw i32 %i.acb, %i.ach             ; 2 uses
  %i.acj = sub nsw i32 %i.abv, %12                ; 2 uses
  %i.ack = mul nsw i32 %i.i, 50
  %17 = mul nsw i32 %i.y, -89
  %18 = add i32 %17, %i.wu
  %i.acl = select i1 %i.bi, i32 %18, i32 0
  %i.acm = add i32 %i.acl, %i.ack
  %19 = select i1 %i.bl, i32 %i.acm, i32 0        ; 2 uses
  %i.acn = add nsw i32 %i.acj, %19                ; 2 uses
  %i.aco = mul nsw i32 %i.e, 80
  %i.acp = mul nsw i32 %i.m, 9
  %i.acq = select i1 %i.bl, i32 %i.acp, i32 0
  %i.acr = add i32 %i.acq, %i.aco
  %20 = select i1 %i.xd, i32 %i.acr, i32 0
  %i.acs = add i32 %i.ur, %20
  %i.act = add i32 %i.acs, %i.uv                  ; 2 uses
  %i.acu = sub nsw i32 %i.acn, %i.act             ; 2 uses
  %i.acv = sub nsw i32 %i.abi, %4                 ; 2 uses
  %i.acw = mul nsw i32 %i.i, 18
  %21 = mul nsw i32 %i.y, -50
  %22 = add i32 %21, %i.wq
  %i.acx = select i1 %i.bi, i32 %22, i32 0
  %i.acy = add i32 %i.acx, %i.acw
  %23 = select i1 %i.bl, i32 %i.acy, i32 0        ; 2 uses
  %i.acz = add nsw i32 %i.acv, %23                ; 2 uses
  %i.ada = mul nsw i32 %i.e, 70
  %i.adb = mul nsw i32 %i.m, -43
  %i.adc = select i1 %i.bl, i32 %i.adb, i32 0
  %i.add = add i32 %i.adc, %i.ada
  %24 = select i1 %i.xd, i32 %i.add, i32 0
  %i.ade = add nsw i32 %i.uq, %24
  %i.adf = add nsw i32 %i.ade, %i.uw              ; 2 uses
  %i.adg = sub nsw i32 %i.acz, %i.adf             ; 2 uses
  %i.adh = sub nsw i32 %i.acv, %23                ; 2 uses
  %i.adi = mul nsw i32 %i.e, 57
  %i.adj = mul nsw i32 %i.m, -80
  %i.adk = select i1 %i.bl, i32 %i.adj, i32 0
  %i.adl = add i32 %i.adk, %i.adi
  %25 = select i1 %i.xd, i32 %i.adl, i32 0
  %i.adm = add i32 %i.up, %25
  %i.adn = add i32 %i.adm, %i.ux                  ; 2 uses
  %i.ado = sub nsw i32 %i.adh, %i.adn             ; 2 uses
  %i.adp = sub nsw i32 %i.acj, %19                ; 2 uses
  %i.adq = mul nsw i32 %i.e, 43
  %i.adr = mul nsw i32 %i.m, -90
  %i.ads = select i1 %i.bl, i32 %i.adr, i32 0
  %i.adt = add i32 %i.ads, %i.adq
  %26 = select i1 %i.xd, i32 %i.adt, i32 0
  %i.adu = add nsw i32 %i.uo, %26
  %i.adv = add nsw i32 %i.adu, %i.uy              ; 2 uses
  %i.adw = sub nsw i32 %i.adp, %i.adv             ; 2 uses
  %i.adx = sub nsw i32 %i.abx, %15                ; 2 uses
  %i.ady = mul nsw i32 %i.e, 25
  %i.adz = mul nsw i32 %i.m, -70
  %i.aea = select i1 %i.bl, i32 %i.adz, i32 0
  %i.aeb = add i32 %i.aea, %i.ady
  %27 = select i1 %i.xd, i32 %i.aeb, i32 0
  %i.aec = add i32 %i.un, %27
  %i.aed = add i32 %i.aec, %i.uz                  ; 2 uses
  %i.aee = sub nsw i32 %i.adx, %i.aed             ; 2 uses
  %i.aef = sub nsw i32 %i.abk, %7                 ; 2 uses
  %i.aeg = mul nsw i32 %i.e, 9
  %i.aeh = mul nsw i32 %i.m, -25
  %i.aei = select i1 %i.bl, i32 %i.aeh, i32 0
  %i.aej = add i32 %i.aei, %i.aeg
  %28 = select i1 %i.xd, i32 %i.aej, i32 0
  %i.aek = add nsw i32 %i.um, %28
  %i.ael = add nsw i32 %i.aek, %i.va              ; 2 uses
  %i.aem = sub nsw i32 %i.aef, %i.ael             ; 2 uses
  %i.aen = add nsw i32 %i.aef, %i.ael             ; 2 uses
  %i.aeo = add nsw i32 %i.adx, %i.aed             ; 2 uses
  %i.aep = add nsw i32 %i.adp, %i.adv             ; 2 uses
  %i.aeq = add nsw i32 %i.adh, %i.adn             ; 2 uses
  %i.aer = add nsw i32 %i.acz, %i.adf             ; 2 uses
  %i.aes = add nsw i32 %i.acn, %i.act             ; 2 uses
  %i.aet = add nsw i32 %i.acb, %i.ach             ; 2 uses
  %i.aeu = add nsw i32 %i.abo, %i.abs             ; 2 uses
  %i.aev = add i32 %i.xg, %i.tw
  %i.aew = add i32 %i.aev, %i.wf
  %i.aex = add nsw i32 %i.aew, %i.wj              ; 2 uses
  %i.aey = add nsw i32 %i.aeu, %i.abg
  store i32 %i.aey, ptr %0, align 4, !tbaa !11
  %i.aez = add nsw i32 %i.aet, %i.aba
  store i32 %i.aez, ptr %i.b, align 4, !tbaa !11
  %i.afa = add nsw i32 %i.aes, %i.aat
  store i32 %i.afa, ptr %i.d, align 4, !tbaa !11
  %i.afb = add nsw i32 %i.aer, %i.aam
  store i32 %i.afb, ptr %i.f, align 4, !tbaa !11
  %i.afc = add nsw i32 %i.aeq, %i.aaf
  store i32 %i.afc, ptr %i.h, align 4, !tbaa !11
  %i.afd = add nsw i32 %i.aep, %i.zy
  store i32 %i.afd, ptr %i.j, align 4, !tbaa !11
  %i.afe = add nsw i32 %i.aeo, %i.zr
  store i32 %i.afe, ptr %i.l, align 4, !tbaa !11
  %i.aff = add nsw i32 %i.aen, %i.zk
  store i32 %i.aff, ptr %i.n, align 4, !tbaa !11
  %i.afg = add nsw i32 %i.aem, %i.zd
  store i32 %i.afg, ptr %i.p, align 4, !tbaa !11
  %i.afh = add nsw i32 %i.aee, %i.yw
  store i32 %i.afh, ptr %i.r, align 4, !tbaa !11
  %i.afi = add nsw i32 %i.adw, %i.yp
  store i32 %i.afi, ptr %i.t, align 4, !tbaa !11
  %i.afj = add nsw i32 %i.ado, %i.yi
  store i32 %i.afj, ptr %i.v, align 4, !tbaa !11
  %i.afk = add nsw i32 %i.adg, %i.yb
  store i32 %i.afk, ptr %i.x, align 4, !tbaa !11
  %i.afl = add nsw i32 %i.acu, %i.xu
  store i32 %i.afl, ptr %i.z, align 4, !tbaa !11
  %i.afm = add nsw i32 %i.aci, %i.xn
  store i32 %i.afm, ptr %i.ab, align 4, !tbaa !11
  %i.afn = add nsw i32 %i.abt, %i.aex
  store i32 %i.afn, ptr %i.ad, align 4, !tbaa !11
  %i.afo = sub nsw i32 %i.abt, %i.aex
  store i32 %i.afo, ptr %i.af, align 4, !tbaa !11
  %i.afp = sub nsw i32 %i.aci, %i.xn
  store i32 %i.afp, ptr %i.ah, align 4, !tbaa !11
  %i.afq = sub nsw i32 %i.acu, %i.xu
  store i32 %i.afq, ptr %i.aj, align 4, !tbaa !11
  %i.afr = sub nsw i32 %i.adg, %i.yb
  store i32 %i.afr, ptr %i.ak, align 4, !tbaa !11
  %i.afs = sub nsw i32 %i.ado, %i.yi
  store i32 %i.afs, ptr %i.am, align 4, !tbaa !11
  %i.aft = sub nsw i32 %i.adw, %i.yp
  store i32 %i.aft, ptr %i.ao, align 4, !tbaa !11
  %i.afu = sub nsw i32 %i.aee, %i.yw
  store i32 %i.afu, ptr %i.aq, align 4, !tbaa !11
  %i.afv = sub nsw i32 %i.aem, %i.zd
  store i32 %i.afv, ptr %i.ar, align 4, !tbaa !11
  %i.afw = sub nsw i32 %i.aen, %i.zk
  store i32 %i.afw, ptr %i.at, align 4, !tbaa !11
  %i.afx = sub nsw i32 %i.aeo, %i.zr
  store i32 %i.afx, ptr %i.av, align 4, !tbaa !11
  %i.afy = sub nsw i32 %i.aep, %i.zy
  store i32 %i.afy, ptr %i.ax, align 4, !tbaa !11
  %i.afz = sub nsw i32 %i.aeq, %i.aaf
  store i32 %i.afz, ptr %i.ay, align 4, !tbaa !11
  %i.aga = sub nsw i32 %i.aer, %i.aam
  store i32 %i.aga, ptr %i.ba, align 4, !tbaa !11
  %i.agb = sub nsw i32 %i.aes, %i.aat
  store i32 %i.agb, ptr %i.bc, align 4, !tbaa !11
  %i.agc = sub nsw i32 %i.aet, %i.aba
  store i32 %i.agc, ptr %i.be, align 4, !tbaa !11
  %i.agd = sub nsw i32 %i.aeu, %i.abg
  store i32 %i.agd, ptr %i.bf, align 4, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @ff_vvc_inv_dct2_64(ptr nofree noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !11
  %i.b = getelementptr inbounds [4 x i8], ptr %0, i64 %1 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !11   ; 30 uses
  %.idx = shl nsw i64 %1, 3
  %i.d = getelementptr inbounds i8, ptr %0, i64 %.idx ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !11   ; 15 uses
  %.idx1317 = mul nsw i64 %1, 12
  %i.f = getelementptr inbounds i8, ptr %0, i64 %.idx1317 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !11   ; 31 uses
  %.idx1318 = shl nsw i64 %1, 4
  %i.h = getelementptr inbounds i8, ptr %0, i64 %.idx1318 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !11   ; 8 uses
  %.idx1319 = mul nsw i64 %1, 20
  %i.j = getelementptr inbounds i8, ptr %0, i64 %.idx1319 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !11   ; 62 uses
  %.idx1320 = mul nsw i64 %1, 24
  %i.l = getelementptr inbounds i8, ptr %0, i64 %.idx1320 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !11   ; 16 uses
  %.idx1321 = mul nsw i64 %1, 28
  %i.n = getelementptr inbounds i8, ptr %0, i64 %.idx1321 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !11   ; 64 uses
  %.idx1322 = shl nsw i64 %1, 5
  %i.p = getelementptr inbounds i8, ptr %0, i64 %.idx1322 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !11   ; 4 uses
  %.idx1323 = mul nsw i64 %1, 36
  %i.r = getelementptr inbounds i8, ptr %0, i64 %.idx1323 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !11   ; 32 uses
  %.idx1324 = mul nsw i64 %1, 40
  %i.t = getelementptr inbounds i8, ptr %0, i64 %.idx1324 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !11   ; 31 uses
  %.idx1325 = mul nsw i64 %1, 44
  %i.v = getelementptr inbounds i8, ptr %0, i64 %.idx1325 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !11   ; 32 uses
  %.idx1326 = mul nsw i64 %1, 48
  %i.x = getelementptr inbounds i8, ptr %0, i64 %.idx1326 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !11   ; 8 uses
  %.idx1327 = mul nsw i64 %1, 52
  %i.z = getelementptr inbounds i8, ptr %0, i64 %.idx1327 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !11  ; 32 uses
  %.idx1328 = mul nsw i64 %1, 56
  %i.ab = getelementptr inbounds i8, ptr %0, i64 %.idx1328 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !11 ; 29 uses
  %.idx1329 = mul nsw i64 %1, 60
  %i.ad = getelementptr inbounds i8, ptr %0, i64 %.idx1329 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !11 ; 32 uses
  %.idx1330 = shl nsw i64 %1, 6
  %i.af = getelementptr inbounds i8, ptr %0, i64 %.idx1330 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !11 ; 2 uses
  %.idx1331 = mul nsw i64 %1, 68
  %i.ah = getelementptr inbounds i8, ptr %0, i64 %.idx1331 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !11 ; 32 uses
  %.idx1332 = mul nsw i64 %1, 72
  %i.aj = getelementptr inbounds i8, ptr %0, i64 %.idx1332 ; 2 uses
  %.idx1333 = mul nsw i64 %1, 76
  %i.ak = getelementptr inbounds i8, ptr %0, i64 %.idx1333 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !11 ; 32 uses
  %.idx1334 = mul nsw i64 %1, 80
  %i.am = getelementptr inbounds i8, ptr %0, i64 %.idx1334 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !11 ; 8 uses
  %.idx1335 = mul nsw i64 %1, 84
  %i.ao = getelementptr inbounds i8, ptr %0, i64 %.idx1335 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !11 ; 32 uses
  %.idx1336 = mul nsw i64 %1, 88
  %i.aq = getelementptr inbounds i8, ptr %0, i64 %.idx1336 ; 2 uses
  %.idx1337 = mul nsw i64 %1, 92
  %i.ar = getelementptr inbounds i8, ptr %0, i64 %.idx1337 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !11 ; 32 uses
  %.idx1338 = mul nsw i64 %1, 96
  %i.at = getelementptr inbounds i8, ptr %0, i64 %.idx1338 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !11 ; 4 uses
  %.idx1339 = mul nsw i64 %1, 100
  %i.av = getelementptr inbounds i8, ptr %0, i64 %.idx1339 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !11 ; 32 uses
  %.idx1340 = mul nsw i64 %1, 104
  %i.ax = getelementptr inbounds i8, ptr %0, i64 %.idx1340 ; 2 uses
  %.idx1341 = mul nsw i64 %1, 108
  %i.ay = getelementptr inbounds i8, ptr %0, i64 %.idx1341 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !11 ; 32 uses
  %.idx1342 = mul nsw i64 %1, 112
  %i.ba = getelementptr inbounds i8, ptr %0, i64 %.idx1342 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !11 ; 8 uses
  %.idx1343 = mul nsw i64 %1, 116
  %i.bc = getelementptr inbounds i8, ptr %0, i64 %.idx1343 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !11 ; 32 uses
  %.idx1344 = mul nsw i64 %1, 120
  %i.be = getelementptr inbounds i8, ptr %0, i64 %.idx1344 ; 2 uses
  %.idx1345 = mul nsw i64 %1, 124
  %i.bf = getelementptr inbounds i8, ptr %0, i64 %.idx1345 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !11 ; 32 uses
  %i.bh = icmp ugt i64 %2, 16                     ; 41 uses
  %i.bi = mul nsw i32 %i.ag, 83
  %i.bj = mul nsw i32 %i.ag, 36
  %i.bk = icmp ugt i64 %2, 8                      ; 15 uses
  %i.bl = mul nsw i32 %i.au, 75
  %i.bm = mul nsw i32 %i.au, -18
  %i.bn = mul nsw i32 %i.au, -89
  %i.bo = mul nsw i32 %i.au, -50
  %i.bp = icmp ugt i64 %2, 4                      ; 86 uses
  %i.bq = icmp ugt i64 %2, 2                      ; 46 uses
  br i1 %i.bh, label %.thread1622, label %bb.b

.thread1622:                                      ; preds = %bb.a
  %i.br = load i32, ptr %i.be, align 4, !tbaa !11 ; 16 uses
  %i.bs = load i32, ptr %i.ax, align 4, !tbaa !11 ; 15 uses
  %i.bt = load i32, ptr %i.aq, align 4, !tbaa !11 ; 16 uses
  %i.bu = load i32, ptr %i.aj, align 4, !tbaa !11 ; 15 uses
  %i.bv = mul nsw i32 %i.bu, 82
  %i.bw = mul nsw i32 %i.bt, 78
  %i.bx = mul nsw i32 %i.bs, 73
  %i.by = mul nsw i32 %i.br, 67
  %i.bz = add i32 %i.bx, %i.by
  %i.ca = add i32 %i.bz, %i.bw
  %i.cb = add i32 %i.ca, %i.bv
  %i.cc = mul nsw i32 %i.u, 67
  %i.cd = mul nsw i32 %i.ac, 46
  %i.ce = add nsw i32 %i.cd, %i.cc
  %i.cf = mul nsw i32 %i.bu, 22
end_hunk_1
begin_hunk_2_@ff_vvc_inv_dct2_64:bb.a
  %i.atx = select i1 %i.bq, i32 %i.atw, i32 0
  %i.aty = add nsw i32 %i.atx, %i.atv
  %i.atz = add i32 %i.aty, %i.apx
  %i.aua = add i32 %i.atz, %i.arj
  %i.aub = add nsw i32 %i.aua, %i.ark             ; 2 uses
  %i.auc = mul nsw i32 %i.c, 20
  %i.aud = mul nsw i32 %i.g, -56
  %i.aue = select i1 %i.bq, i32 %i.aud, i32 0
  %i.auf = add nsw i32 %i.aue, %i.auc
  %i.aug = add i32 %i.auf, %i.apy
  %i.auh = add i32 %i.aug, %i.arh
  %i.aui = add nsw i32 %i.auh, %i.ari             ; 2 uses
  %i.auj = mul nsw i32 %i.c, 24
  %i.auk = mul nsw i32 %i.g, -65
  %i.aul = select i1 %i.bq, i32 %i.auk, i32 0
  %i.aum = add nsw i32 %i.aul, %i.auj
  %i.aun = add i32 %i.aum, %i.apz
  %i.auo = add i32 %i.aun, %i.arf
  %i.aup = add nsw i32 %i.auo, %i.arg             ; 2 uses
  %i.auq = mul nsw i32 %i.c, 28
  %i.aur = mul nsw i32 %i.g, -73
  %i.aus = select i1 %i.bq, i32 %i.aur, i32 0
  %i.aut = add nsw i32 %i.aus, %i.auq
  %i.auu = add i32 %i.aut, %i.aqa
  %i.auv = add i32 %i.auu, %i.ard
  %i.auw = add nsw i32 %i.auv, %i.are             ; 2 uses
  %i.aux = mul nsw i32 %i.c, 33
  %i.auy = mul nsw i32 %i.g, -81
  %i.auz = select i1 %i.bq, i32 %i.auy, i32 0
  %i.ava = add nsw i32 %i.auz, %i.aux
  %i.avb = add i32 %i.ava, %i.aqb
  %i.avc = add i32 %i.avb, %i.arb
  %i.avd = add nsw i32 %i.avc, %i.arc             ; 2 uses
  %i.ave = mul nsw i32 %i.c, 37
  %i.avf = mul nsw i32 %i.g, -86
  %i.avg = select i1 %i.bq, i32 %i.avf, i32 0
  %i.avh = add nsw i32 %i.avg, %i.ave
  %i.avi = add i32 %i.avh, %i.aqc
  %i.avj = add i32 %i.avi, %i.aqz
  %i.avk = add nsw i32 %i.avj, %i.ara             ; 2 uses
  %i.avl = mul nsw i32 %i.c, 41
  %i.avm = mul nsw i32 %i.g, -90
  %i.avn = select i1 %i.bq, i32 %i.avm, i32 0     ; 2 uses
  %i.avo = add nsw i32 %i.avn, %i.avl
  %i.avp = add i32 %i.avo, %i.aqd
  %i.avq = add i32 %i.avp, %i.aqx
  %i.avr = add nsw i32 %i.avq, %i.aqy             ; 2 uses
  %i.avs = mul nsw i32 %i.c, 44
  %i.avt = mul nsw i32 %i.g, -91
  %i.avu = select i1 %i.bq, i32 %i.avt, i32 0
  %i.avv = add nsw i32 %i.avu, %i.avs
  %i.avw = add i32 %i.avv, %i.aqe
  %i.avx = add i32 %i.avw, %i.aqv
  %i.avy = add nsw i32 %i.avx, %i.aqw             ; 2 uses
  %i.avz = mul nsw i32 %i.c, 48
  %i.awa = add nsw i32 %i.avn, %i.avz
  %i.awb = add i32 %i.awa, %i.aqf
  %i.awc = add i32 %i.awb, %i.aqt
  %i.awd = add nsw i32 %i.awc, %i.aqu             ; 2 uses
  %i.awe = mul nsw i32 %i.c, 52
  %i.awf = mul nsw i32 %i.g, -87
  %i.awg = select i1 %i.bq, i32 %i.awf, i32 0
  %i.awh = add nsw i32 %i.awg, %i.awe
  %i.awi = add i32 %i.awh, %i.aqg
  %i.awj = add i32 %i.awi, %i.aqr
  %i.awk = add nsw i32 %i.awj, %i.aqs             ; 2 uses
  %i.awl = mul nsw i32 %i.c, 56
  %i.awm = mul nsw i32 %i.g, -83
  %i.awn = select i1 %i.bq, i32 %i.awm, i32 0
  %i.awo = add nsw i32 %i.awn, %i.awl
  %i.awp = add i32 %i.awo, %i.aqh
  %i.awq = add i32 %i.awp, %i.aqp
  %i.awr = add nsw i32 %i.awq, %i.aqq             ; 2 uses
  %i.aws = mul nsw i32 %i.c, 59
  %i.awt = mul nsw i32 %i.g, -77
  %i.awu = select i1 %i.bq, i32 %i.awt, i32 0
  %i.awv = add nsw i32 %i.awu, %i.aws
  %i.aww = add i32 %i.awv, %i.aqi
  %i.awx = add i32 %i.aww, %i.aqn
  %i.awy = add nsw i32 %i.awx, %i.aqo             ; 2 uses
  %i.awz = mul nsw i32 %i.c, 62
  %i.axa = mul nsw i32 %i.g, -69
  %i.axb = select i1 %i.bq, i32 %i.axa, i32 0
  %i.axc = add nsw i32 %i.axb, %i.awz
  %i.axd = add i32 %i.axc, %i.aqj
  %i.axe = add i32 %i.axd, %i.aql
  %i.axf = add nsw i32 %i.axe, %i.aqm             ; 2 uses
  %i.axg = mul nsw i32 %i.c, 65
  %i.axh = mul nsw i32 %i.g, -59
  %i.axi = select i1 %i.bq, i32 %i.axh, i32 0
  %i.axj = add nsw i32 %i.axi, %i.axg
  %i.axk = add nsw i32 %i.axj, %i.xl
  %i.axl = add nsw i32 %i.axk, %i.aak
  %i.axm = add nsw i32 %i.axl, %i.aqk             ; 2 uses
  %i.axn = mul nsw i32 %i.c, 69
  %i.axo = mul nsw i32 %i.g, -48
  %i.axp = select i1 %i.bq, i32 %i.axo, i32 0
  %i.axq = add nsw i32 %i.axp, %i.axn
  %i.axr = add i32 %i.axq, %i.xm
  %i.axs = add i32 %i.axr, %i.xn
  %i.axt = add i32 %i.axs, %i.aaj                 ; 2 uses
  %i.axu = mul nsw i32 %i.c, 71
  %i.axv = mul nsw i32 %i.g, -37
  %i.axw = select i1 %i.bq, i32 %i.axv, i32 0
  %i.axx = add nsw i32 %i.axw, %i.axu
  %i.axy = add i32 %i.axx, %i.xo
  %i.axz = add i32 %i.axy, %i.xp
  %i.aya = add i32 %i.axz, %i.aai                 ; 2 uses
  %i.ayb = mul nsw i32 %i.c, 73
  %i.ayc = mul nsw i32 %i.g, -24
  %i.ayd = select i1 %i.bq, i32 %i.ayc, i32 0
  %i.aye = add nsw i32 %i.ayd, %i.ayb
  %i.ayf = add i32 %i.aye, %i.xq
  %i.ayg = add i32 %i.ayf, %i.xr
  %i.ayh = add i32 %i.ayg, %i.aah                 ; 2 uses
  %i.ayi = mul nsw i32 %i.c, 77
  %i.ayj = mul nsw i32 %i.g, -11
  %i.ayk = select i1 %i.bq, i32 %i.ayj, i32 0
  %i.ayl = add nsw i32 %i.ayk, %i.ayi
  %i.aym = add i32 %i.ayl, %i.xs
  %i.ayn = add i32 %i.aym, %i.xt
  %i.ayo = add i32 %i.ayn, %i.aag                 ; 2 uses
  %i.ayp = mul nsw i32 %i.c, 79
  %i.ayq = shl nsw i32 %i.g, 1
  %i.ayr = select i1 %i.bq, i32 %i.ayq, i32 0
  %i.ays = add nsw i32 %i.ayr, %i.ayp
  %i.ayt = add i32 %i.ays, %i.xu
  %i.ayu = add i32 %i.ayt, %i.xv
  %i.ayv = add i32 %i.ayu, %i.aaf                 ; 2 uses
  %i.ayw = mul nsw i32 %i.c, 81
  %i.ayx = mul nsw i32 %i.g, 15
  %i.ayy = select i1 %i.bq, i32 %i.ayx, i32 0
  %i.ayz = add nsw i32 %i.ayy, %i.ayw
  %i.aza = add i32 %i.ayz, %i.xw
  %i.azb = add i32 %i.aza, %i.xx
  %i.azc = add i32 %i.azb, %i.aae                 ; 2 uses
  %i.azd = mul nsw i32 %i.c, 83
  %i.aze = mul nsw i32 %i.g, 28
  %i.azf = select i1 %i.bq, i32 %i.aze, i32 0
  %i.azg = add nsw i32 %i.azf, %i.azd
  %i.azh = add i32 %i.azg, %i.xy
  %i.azi = add i32 %i.azh, %i.xz
  %i.azj = add i32 %i.azi, %i.aad                 ; 2 uses
  %i.azk = mul nsw i32 %i.c, 84
  %i.azl = mul nsw i32 %i.g, 41
  %i.azm = select i1 %i.bq, i32 %i.azl, i32 0
  %i.azn = add nsw i32 %i.azm, %i.azk
  %i.azo = add i32 %i.azn, %i.ya
  %i.azp = add i32 %i.azo, %i.yb
  %i.azq = add i32 %i.azp, %i.aac                 ; 2 uses
  %i.azr = mul nsw i32 %i.c, 86
  %i.azs = mul nsw i32 %i.g, 52
  %i.azt = select i1 %i.bq, i32 %i.azs, i32 0
  %i.azu = add nsw i32 %i.azt, %i.azr
  %i.azv = add i32 %i.azu, %i.yc
  %i.azw = add i32 %i.azv, %i.yd
  %i.azx = add i32 %i.azw, %i.aab                 ; 2 uses
  %i.azy = mul nsw i32 %i.c, 87
  %i.azz = mul nsw i32 %i.g, 62
  %i.baa = select i1 %i.bq, i32 %i.azz, i32 0
  %i.bab = add nsw i32 %i.baa, %i.azy
  %i.bac = add i32 %i.bab, %i.ye
  %i.bad = add i32 %i.bac, %i.yf
  %i.bae = add i32 %i.bad, %i.aaa                 ; 2 uses
  %i.baf = mul nsw i32 %i.c, 88
  %i.bag = mul nsw i32 %i.g, 71
  %i.bah = select i1 %i.bq, i32 %i.bag, i32 0
  %i.bai = add nsw i32 %i.bah, %i.baf
  %i.baj = add i32 %i.bai, %i.yg
  %i.bak = add i32 %i.baj, %i.yh
  %i.bal = add i32 %i.bak, %i.zz                  ; 2 uses
  %i.bam = mul nsw i32 %i.c, 90                   ; 3 uses
  %i.ban = mul nsw i32 %i.g, 79
  %i.bao = select i1 %i.bq, i32 %i.ban, i32 0
  %i.bap = add nsw i32 %i.bao, %i.bam
  %i.baq = add i32 %i.bap, %i.yi
  %i.bar = add i32 %i.baq, %i.yj
  %i.bas = add i32 %i.bar, %i.zy                  ; 2 uses
  %i.bat = mul nsw i32 %i.g, 84
  %i.bau = select i1 %i.bq, i32 %i.bat, i32 0
  %i.bav = add nsw i32 %i.bau, %i.bam
  %i.baw = add i32 %i.bav, %i.yk
  %i.bax = add i32 %i.baw, %i.yl
  %i.bay = add i32 %i.bax, %i.zx                  ; 2 uses
  %i.baz = mul nsw i32 %i.g, 88
  %i.bba = select i1 %i.bq, i32 %i.baz, i32 0
  %i.bbb = add nsw i32 %i.bba, %i.bam
  %i.bbc = add i32 %i.bbb, %i.ym
  %i.bbd = add i32 %i.bbc, %i.yn
  %i.bbe = add i32 %i.bbd, %i.zw                  ; 2 uses
  %i.bbf = mul nsw i32 %i.c, 91
  %i.bbg = mul nsw i32 %i.g, 90
  %i.bbh = select i1 %i.bq, i32 %i.bbg, i32 0
  %i.bbi = add nsw i32 %i.bbh, %i.bbf
  %i.bbj = add i32 %i.bbi, %i.yo
  %i.bbk = add i32 %i.bbj, %i.yp
  %i.bbl = add i32 %i.bbk, %i.zv                  ; 2 uses
  %i.bbm = shl nsw i32 %i.a, 6                    ; 4 uses
  %i.bbn = add nsw i32 %i.arq, %i.bbm             ; 2 uses
  %i.bbo = mul nsw i32 %i.q, 89
  %3 = add i32 %i.arr, %i.bbo
  %4 = select i1 %i.bk, i32 %3, i32 0             ; 2 uses
  %i.bbp = add nsw i32 %4, %i.bbn                 ; 2 uses
  %i.bbq = mul nsw i32 %i.i, 90
  %5 = mul nsw i32 %i.y, 87
  %6 = add i32 %5, %i.atc
  %i.bbr = select i1 %i.bk, i32 %6, i32 0
  %i.bbs = add i32 %i.bbr, %i.bbq
  %7 = select i1 %i.bp, i32 %i.bbs, i32 0         ; 2 uses
  %i.bbt = add nsw i32 %i.bbp, %7                 ; 2 uses
  %i.bbu = mul nsw i32 %i.e, 90
  %i.bbv = select i1 %i.bq, i32 %i.bbu, i32 0     ; 2 uses
  %i.bbw = mul nsw i32 %i.m, 90
  %i.bbx = select i1 %i.bp, i32 %i.bbw, i32 0
  %i.bby = add nsw i32 %i.bbx, %i.bbv
  %i.bbz = add nsw i32 %i.bby, %i.asa
  %i.bca = add nsw i32 %i.bbz, %i.zf              ; 2 uses
  %i.bcb = sub nsw i32 %i.bbt, %i.bca             ; 2 uses
  %i.bcc = add nsw i32 %i.ars, %i.bbm             ; 2 uses
  %i.bcd = mul nsw i32 %i.q, 75
  %8 = add i32 %i.art, %i.bcd
  %9 = select i1 %i.bk, i32 %8, i32 0             ; 2 uses
  %i.bce = add nsw i32 %9, %i.bcc                 ; 2 uses
  %i.bcf = mul nsw i32 %i.i, 87
  %10 = mul nsw i32 %i.y, 57
  %11 = add i32 %10, %i.asy
  %i.bcg = select i1 %i.bk, i32 %11, i32 0
  %i.bch = add i32 %i.bcg, %i.bcf
  %12 = select i1 %i.bp, i32 %i.bch, i32 0        ; 2 uses
  %i.bci = add nsw i32 %i.bce, %12                ; 2 uses
  %i.bcj = mul nsw i32 %i.m, 82
  %i.bck = select i1 %i.bp, i32 %i.bcj, i32 0
  %i.bcl = add nsw i32 %i.bck, %i.bbv
  %i.bcm = add i32 %i.bcl, %i.ze
  %i.bcn = add i32 %i.bcm, %i.zg                  ; 2 uses
  %i.bco = sub nsw i32 %i.bci, %i.bcn             ; 2 uses
  %i.bcp = sub nsw i32 %i.bbm, %i.ars             ; 2 uses
  %i.bcq = mul nsw i32 %i.q, 50
  %13 = add i32 %i.aru, %i.bcq
  %14 = select i1 %i.bk, i32 %13, i32 0           ; 2 uses
  %i.bcr = add nsw i32 %14, %i.bcp                ; 2 uses
  %i.bcs = mul nsw i32 %i.i, 80
  %15 = mul nsw i32 %i.y, 9
  %16 = add i32 %15, %i.asv
  %i.bct = select i1 %i.bk, i32 %16, i32 0
  %i.bcu = add i32 %i.bct, %i.bcs
  %17 = select i1 %i.bp, i32 %i.bcu, i32 0        ; 2 uses
  %i.bcv = add nsw i32 %i.bcr, %17                ; 2 uses
  %i.bcw = mul nsw i32 %i.e, 88
  %i.bcx = mul nsw i32 %i.m, 67
  %i.bcy = select i1 %i.bp, i32 %i.bcx, i32 0
  %i.bcz = add i32 %i.bcy, %i.bcw
  %18 = select i1 %i.bq, i32 %i.bcz, i32 0
  %i.bda = add nsw i32 %i.zd, %18
  %i.bdb = add nsw i32 %i.bda, %i.zh              ; 2 uses
  %i.bdc = sub nsw i32 %i.bcv, %i.bdb             ; 2 uses
  %i.bdd = sub nsw i32 %i.bbm, %i.arq             ; 2 uses
  %i.bde = mul nsw i32 %i.q, 18
  %19 = add i32 %i.arv, %i.bde
  %20 = select i1 %i.bk, i32 %19, i32 0           ; 2 uses
  %i.bdf = add nsw i32 %20, %i.bdd                ; 2 uses
  %i.bdg = mul nsw i32 %i.i, 70
  %21 = mul nsw i32 %i.y, -43
  %22 = add i32 %21, %i.ass
  %i.bdh = select i1 %i.bk, i32 %22, i32 0
  %i.bdi = add i32 %i.bdh, %i.bdg
  %23 = select i1 %i.bp, i32 %i.bdi, i32 0        ; 2 uses
  %i.bdj = add nsw i32 %i.bdf, %23                ; 2 uses
  %i.bdk = mul nsw i32 %i.e, 85
  %i.bdl = mul nsw i32 %i.m, 46
  %i.bdm = select i1 %i.bp, i32 %i.bdl, i32 0
  %i.bdn = add i32 %i.bdm, %i.bdk
  %24 = select i1 %i.bq, i32 %i.bdn, i32 0
  %i.bdo = add i32 %i.zc, %24
  %i.bdp = add i32 %i.bdo, %i.zi                  ; 2 uses
  %i.bdq = sub nsw i32 %i.bdj, %i.bdp             ; 2 uses
  %i.bdr = sub nsw i32 %i.bdd, %20                ; 2 uses
  %i.bds = mul nsw i32 %i.i, 57
  %25 = mul nsw i32 %i.y, -80
  %26 = add i32 %25, %i.aso
  %i.bdt = select i1 %i.bk, i32 %26, i32 0
  %i.bdu = add i32 %i.bdt, %i.bds
  %27 = select i1 %i.bp, i32 %i.bdu, i32 0        ; 2 uses
  %i.bdv = add nsw i32 %i.bdr, %27                ; 2 uses
  %i.bdw = mul nsw i32 %i.e, 82
  %i.bdx = mul nsw i32 %i.m, 22
  %i.bdy = select i1 %i.bp, i32 %i.bdx, i32 0
  %i.bdz = add i32 %i.bdy, %i.bdw
  %28 = select i1 %i.bq, i32 %i.bdz, i32 0
  %i.bea = add nsw i32 %i.zb, %28
  %i.beb = add nsw i32 %i.bea, %i.zj              ; 2 uses
  %i.bec = sub nsw i32 %i.bdv, %i.beb             ; 2 uses
  %i.bed = sub nsw i32 %i.bcp, %14                ; 2 uses
  %i.bee = mul nsw i32 %i.i, 43
  %29 = mul nsw i32 %i.y, -90
  %30 = add i32 %29, %i.ask
  %i.bef = select i1 %i.bk, i32 %30, i32 0
  %i.beg = add i32 %i.bef, %i.bee
  %31 = select i1 %i.bp, i32 %i.beg, i32 0        ; 2 uses
  %i.beh = add nsw i32 %i.bed, %31                ; 2 uses
  %i.bei = mul nsw i32 %i.e, 78
  %i.bej = mul nsw i32 %i.m, -4
  %i.bek = select i1 %i.bp, i32 %i.bej, i32 0
  %i.bel = add i32 %i.bek, %i.bei
  %32 = select i1 %i.bq, i32 %i.bel, i32 0
  %i.bem = add i32 %i.za, %32
  %i.ben = add i32 %i.bem, %i.zk                  ; 2 uses
  %i.beo = sub nsw i32 %i.beh, %i.ben             ; 2 uses
  %i.bep = sub nsw i32 %i.bcc, %9                 ; 2 uses
  %i.beq = mul nsw i32 %i.i, 25
  %33 = mul nsw i32 %i.y, -70
  %34 = add i32 %33, %i.asg
  %i.ber = select i1 %i.bk, i32 %34, i32 0
  %i.bes = add i32 %i.ber, %i.beq
  %35 = select i1 %i.bp, i32 %i.bes, i32 0        ; 2 uses
  %i.bet = add nsw i32 %i.bep, %35                ; 2 uses
  %i.beu = mul nsw i32 %i.e, 73
  %i.bev = mul nsw i32 %i.m, -31
  %i.bew = select i1 %i.bp, i32 %i.bev, i32 0
  %i.bex = add i32 %i.bew, %i.beu
  %36 = select i1 %i.bq, i32 %i.bex, i32 0
  %i.bey = add nsw i32 %i.yz, %36
  %i.bez = add nsw i32 %i.bey, %i.zl              ; 2 uses
  %i.bfa = sub nsw i32 %i.bet, %i.bez             ; 2 uses
  %i.bfb = sub nsw i32 %i.bbn, %4                 ; 2 uses
  %i.bfc = mul nsw i32 %i.i, 9
  %37 = mul nsw i32 %i.y, -25
  %38 = add i32 %37, %i.asd
  %i.bfd = select i1 %i.bk, i32 %38, i32 0
  %i.bfe = add i32 %i.bfd, %i.bfc
  %39 = select i1 %i.bp, i32 %i.bfe, i32 0        ; 2 uses
  %i.bff = add nsw i32 %i.bfb, %39                ; 2 uses
  %i.bfg = mul nsw i32 %i.e, 67
  %i.bfh = mul nsw i32 %i.m, -54
  %i.bfi = select i1 %i.bp, i32 %i.bfh, i32 0
  %i.bfj = add i32 %i.bfi, %i.bfg
  %40 = select i1 %i.bq, i32 %i.bfj, i32 0
  %i.bfk = add i32 %i.yy, %40
  %i.bfl = add i32 %i.bfk, %i.zm                  ; 2 uses
  %i.bfm = sub nsw i32 %i.bff, %i.bfl             ; 2 uses
  %i.bfn = sub nsw i32 %i.bfb, %39                ; 2 uses
  %i.bfo = mul nsw i32 %i.e, 61
  %i.bfp = mul nsw i32 %i.m, -73
  %i.bfq = select i1 %i.bp, i32 %i.bfp, i32 0
  %i.bfr = add i32 %i.bfq, %i.bfo
  %41 = select i1 %i.bq, i32 %i.bfr, i32 0
  %i.bfs = add nsw i32 %i.yx, %41
  %i.bft = add nsw i32 %i.bfs, %i.zn              ; 2 uses
  %i.bfu = sub nsw i32 %i.bfn, %i.bft             ; 2 uses
  %i.bfv = sub nsw i32 %i.bep, %35                ; 2 uses
  %i.bfw = mul nsw i32 %i.e, 54
  %i.bfx = mul nsw i32 %i.m, -85
  %i.bfy = select i1 %i.bp, i32 %i.bfx, i32 0
  %i.bfz = add i32 %i.bfy, %i.bfw
  %42 = select i1 %i.bq, i32 %i.bfz, i32 0
  %i.bga = add i32 %i.yw, %42
  %i.bgb = add i32 %i.bga, %i.zo                  ; 2 uses
  %i.bgc = sub nsw i32 %i.bfv, %i.bgb             ; 2 uses
  %i.bgd = sub nsw i32 %i.bed, %31                ; 2 uses
  %i.bge = mul nsw i32 %i.e, 46
  %i.bgf = mul nsw i32 %i.m, -90
  %i.bgg = select i1 %i.bp, i32 %i.bgf, i32 0
  %i.bgh = add i32 %i.bgg, %i.bge
  %43 = select i1 %i.bq, i32 %i.bgh, i32 0
  %i.bgi = add nsw i32 %i.yv, %43
  %i.bgj = add nsw i32 %i.bgi, %i.zp              ; 2 uses
  %i.bgk = sub nsw i32 %i.bgd, %i.bgj             ; 2 uses
  %i.bgl = sub nsw i32 %i.bdr, %27                ; 2 uses
  %i.bgm = mul nsw i32 %i.e, 38
  %i.bgn = mul nsw i32 %i.m, -88
  %i.bgo = select i1 %i.bp, i32 %i.bgn, i32 0
  %i.bgp = add i32 %i.bgo, %i.bgm
  %44 = select i1 %i.bq, i32 %i.bgp, i32 0
  %i.bgq = add i32 %i.yu, %44
  %i.bgr = add i32 %i.bgq, %i.zq                  ; 2 uses
  %i.bgs = sub nsw i32 %i.bgl, %i.bgr             ; 2 uses
  %i.bgt = sub nsw i32 %i.bdf, %23                ; 2 uses
  %i.bgu = mul nsw i32 %i.e, 31
  %i.bgv = mul nsw i32 %i.m, -78
  %i.bgw = select i1 %i.bp, i32 %i.bgv, i32 0
  %i.bgx = add i32 %i.bgw, %i.bgu
  %45 = select i1 %i.bq, i32 %i.bgx, i32 0
  %i.bgy = add nsw i32 %i.yt, %45
  %i.bgz = add nsw i32 %i.bgy, %i.zr              ; 2 uses
  %i.bha = sub nsw i32 %i.bgt, %i.bgz             ; 2 uses
  %i.bhb = sub nsw i32 %i.bcr, %17                ; 2 uses
  %i.bhc = mul nsw i32 %i.e, 22
  %i.bhd = mul nsw i32 %i.m, -61
  %i.bhe = select i1 %i.bp, i32 %i.bhd, i32 0
  %i.bhf = add i32 %i.bhe, %i.bhc
  %46 = select i1 %i.bq, i32 %i.bhf, i32 0
  %i.bhg = add i32 %i.ys, %46
  %i.bhh = add i32 %i.bhg, %i.zs                  ; 2 uses
  %i.bhi = sub nsw i32 %i.bhb, %i.bhh             ; 2 uses
  %i.bhj = sub nsw i32 %i.bce, %12                ; 2 uses
  %i.bhk = mul nsw i32 %i.e, 13
  %i.bhl = mul nsw i32 %i.m, -38
  %i.bhm = select i1 %i.bp, i32 %i.bhl, i32 0
  %i.bhn = add i32 %i.bhm, %i.bhk
  %47 = select i1 %i.bq, i32 %i.bhn, i32 0
  %i.bho = add nsw i32 %i.yr, %47
  %i.bhp = add nsw i32 %i.bho, %i.zt              ; 2 uses
  %i.bhq = sub nsw i32 %i.bhj, %i.bhp             ; 2 uses
  %i.bhr = sub nsw i32 %i.bbp, %7                 ; 2 uses
  %i.bhs = shl nsw i32 %i.e, 2
  %i.bht = mul nsw i32 %i.m, -13
  %i.bhu = select i1 %i.bp, i32 %i.bht, i32 0
  %i.bhv = add i32 %i.bhu, %i.bhs
  %48 = select i1 %i.bq, i32 %i.bhv, i32 0
  %i.bhw = add i32 %i.yq, %48
  %i.bhx = add i32 %i.bhw, %i.zu                  ; 2 uses
  %i.bhy = sub nsw i32 %i.bhr, %i.bhx             ; 2 uses
  %i.bhz = add nsw i32 %i.bhr, %i.bhx             ; 2 uses
  %i.bia = add nsw i32 %i.bhj, %i.bhp             ; 2 uses
  %i.bib = add nsw i32 %i.bhb, %i.bhh             ; 2 uses
  %i.bic = add nsw i32 %i.bgt, %i.bgz             ; 2 uses
  %i.bid = add nsw i32 %i.bgl, %i.bgr             ; 2 uses
  %i.bie = add nsw i32 %i.bgd, %i.bgj             ; 2 uses
  %i.bif = add nsw i32 %i.bfv, %i.bgb             ; 2 uses
  %i.big = add nsw i32 %i.bfn, %i.bft             ; 2 uses
  %i.bih = add nsw i32 %i.bff, %i.bfl             ; 2 uses
  %i.bii = add nsw i32 %i.bet, %i.bez             ; 2 uses
  %i.bij = add nsw i32 %i.beh, %i.ben             ; 2 uses
  %i.bik = add nsw i32 %i.bdv, %i.beb             ; 2 uses
  %i.bil = add nsw i32 %i.bdj, %i.bdp             ; 2 uses
  %i.bim = add nsw i32 %i.bcv, %i.bdb             ; 2 uses
  %i.bin = add nsw i32 %i.bci, %i.bcn             ; 2 uses
  %i.bio = add nsw i32 %i.bbt, %i.bca             ; 2 uses
  %i.bip = add i32 %i.atg, %i.apu
  %i.biq = add i32 %i.bip, %i.arp
  %i.bir = add nsw i32 %i.biq, %i.arw             ; 2 uses
  %i.bis = add nsw i32 %i.bio, %i.bbl
  store i32 %i.bis, ptr %0, align 4, !tbaa !11
  %i.bit = add nsw i32 %i.bin, %i.bbe
  store i32 %i.bit, ptr %i.b, align 4, !tbaa !11
  %i.biu = add nsw i32 %i.bim, %i.bay
  store i32 %i.biu, ptr %i.d, align 4, !tbaa !11
  %i.biv = add nsw i32 %i.bil, %i.bas
  store i32 %i.biv, ptr %i.f, align 4, !tbaa !11
  %i.biw = add nsw i32 %i.bik, %i.bal
  store i32 %i.biw, ptr %i.h, align 4, !tbaa !11
  %i.bix = add nsw i32 %i.bij, %i.bae
  store i32 %i.bix, ptr %i.j, align 4, !tbaa !11
  %i.biy = add nsw i32 %i.bii, %i.azx
  store i32 %i.biy, ptr %i.l, align 4, !tbaa !11
  %i.biz = add nsw i32 %i.bih, %i.azq
  store i32 %i.biz, ptr %i.n, align 4, !tbaa !11
  %i.bja = add nsw i32 %i.big, %i.azj
  store i32 %i.bja, ptr %i.p, align 4, !tbaa !11
  %i.bjb = add nsw i32 %i.bif, %i.azc
  store i32 %i.bjb, ptr %i.r, align 4, !tbaa !11
  %i.bjc = add nsw i32 %i.bie, %i.ayv
  store i32 %i.bjc, ptr %i.t, align 4, !tbaa !11
  %i.bjd = add nsw i32 %i.bid, %i.ayo
  store i32 %i.bjd, ptr %i.v, align 4, !tbaa !11
  %i.bje = add nsw i32 %i.bic, %i.ayh
  store i32 %i.bje, ptr %i.x, align 4, !tbaa !11
  %i.bjf = add nsw i32 %i.bib, %i.aya
  store i32 %i.bjf, ptr %i.z, align 4, !tbaa !11
  %i.bjg = add nsw i32 %i.bia, %i.axt
  store i32 %i.bjg, ptr %i.ab, align 4, !tbaa !11
  %i.bjh = add nsw i32 %i.bhz, %i.axm
  store i32 %i.bjh, ptr %i.ad, align 4, !tbaa !11
  %i.bji = add nsw i32 %i.bhy, %i.axf
  store i32 %i.bji, ptr %i.af, align 4, !tbaa !11
  %i.bjj = add nsw i32 %i.bhq, %i.awy
  store i32 %i.bjj, ptr %i.ah, align 4, !tbaa !11
  %i.bjk = add nsw i32 %i.bhi, %i.awr
  store i32 %i.bjk, ptr %i.aj, align 4, !tbaa !11
  %i.bjl = add nsw i32 %i.bha, %i.awk
  store i32 %i.bjl, ptr %i.ak, align 4, !tbaa !11
  %i.bjm = add nsw i32 %i.bgs, %i.awd
  store i32 %i.bjm, ptr %i.am, align 4, !tbaa !11
  %i.bjn = add nsw i32 %i.bgk, %i.avy
  store i32 %i.bjn, ptr %i.ao, align 4, !tbaa !11
  %i.bjo = add nsw i32 %i.bgc, %i.avr
  store i32 %i.bjo, ptr %i.aq, align 4, !tbaa !11
  %i.bjp = add nsw i32 %i.bfu, %i.avk
  store i32 %i.bjp, ptr %i.ar, align 4, !tbaa !11
  %i.bjq = add nsw i32 %i.bfm, %i.avd
  store i32 %i.bjq, ptr %i.at, align 4, !tbaa !11
  %i.bjr = add nsw i32 %i.bfa, %i.auw
  store i32 %i.bjr, ptr %i.av, align 4, !tbaa !11
  %i.bjs = add nsw i32 %i.beo, %i.aup
  store i32 %i.bjs, ptr %i.ax, align 4, !tbaa !11
  %i.bjt = add nsw i32 %i.bec, %i.aui
  store i32 %i.bjt, ptr %i.ay, align 4, !tbaa !11
  %i.bju = add nsw i32 %i.bdq, %i.aub
  store i32 %i.bju, ptr %i.ba, align 4, !tbaa !11
  %i.bjv = add nsw i32 %i.bdc, %i.atu
  store i32 %i.bjv, ptr %i.bc, align 4, !tbaa !11
  %i.bjw = add nsw i32 %i.bco, %i.atn
  store i32 %i.bjw, ptr %i.be, align 4, !tbaa !11
  %i.bjx = add nsw i32 %i.bir, %i.bcb
  store i32 %i.bjx, ptr %i.bf, align 4, !tbaa !11
  %i.bjy = sub nsw i32 %i.bcb, %i.bir
  %.idx1541 = shl nsw i64 %1, 7
  %i.bjz = getelementptr inbounds i8, ptr %0, i64 %.idx1541
  store i32 %i.bjy, ptr %i.bjz, align 4, !tbaa !11
  %i.bka = sub nsw i32 %i.bco, %i.atn
  %.idx1542 = mul nsw i64 %1, 132
  %i.bkb = getelementptr inbounds i8, ptr %0, i64 %.idx1542
  store i32 %i.bka, ptr %i.bkb, align 4, !tbaa !11
  %i.bkc = sub nsw i32 %i.bdc, %i.atu
  %.idx1543 = mul nsw i64 %1, 136
  %i.bkd = getelementptr inbounds i8, ptr %0, i64 %.idx1543
  store i32 %i.bkc, ptr %i.bkd, align 4, !tbaa !11
  %i.bke = sub nsw i32 %i.bdq, %i.aub
  %.idx1544 = mul nsw i64 %1, 140
  %i.bkf = getelementptr inbounds i8, ptr %0, i64 %.idx1544
  store i32 %i.bke, ptr %i.bkf, align 4, !tbaa !11
  %i.bkg = sub nsw i32 %i.bec, %i.aui
  %.idx1545 = mul nsw i64 %1, 144
  %i.bkh = getelementptr inbounds i8, ptr %0, i64 %.idx1545
  store i32 %i.bkg, ptr %i.bkh, align 4, !tbaa !11
  %i.bki = sub nsw i32 %i.beo, %i.aup
  %.idx1546 = mul nsw i64 %1, 148
  %i.bkj = getelementptr inbounds i8, ptr %0, i64 %.idx1546
  store i32 %i.bki, ptr %i.bkj, align 4, !tbaa !11
  %i.bkk = sub nsw i32 %i.bfa, %i.auw
  %.idx1547 = mul nsw i64 %1, 152
  %i.bkl = getelementptr inbounds i8, ptr %0, i64 %.idx1547
  store i32 %i.bkk, ptr %i.bkl, align 4, !tbaa !11
  %i.bkm = sub nsw i32 %i.bfm, %i.avd
  %.idx1548 = mul nsw i64 %1, 156
  %i.bkn = getelementptr inbounds i8, ptr %0, i64 %.idx1548
  store i32 %i.bkm, ptr %i.bkn, align 4, !tbaa !11
  %i.bko = sub nsw i32 %i.bfu, %i.avk
  %.idx1549 = mul nsw i64 %1, 160
  %i.bkp = getelementptr inbounds i8, ptr %0, i64 %.idx1549
  store i32 %i.bko, ptr %i.bkp, align 4, !tbaa !11
  %i.bkq = sub nsw i32 %i.bgc, %i.avr
  %.idx1550 = mul nsw i64 %1, 164
  %i.bkr = getelementptr inbounds i8, ptr %0, i64 %.idx1550
  store i32 %i.bkq, ptr %i.bkr, align 4, !tbaa !11
  %i.bks = sub nsw i32 %i.bgk, %i.avy
  %.idx1551 = mul nsw i64 %1, 168
  %i.bkt = getelementptr inbounds i8, ptr %0, i64 %.idx1551
  store i32 %i.bks, ptr %i.bkt, align 4, !tbaa !11
  %i.bku = sub nsw i32 %i.bgs, %i.awd
  %.idx1552 = mul nsw i64 %1, 172
  %i.bkv = getelementptr inbounds i8, ptr %0, i64 %.idx1552
  store i32 %i.bku, ptr %i.bkv, align 4, !tbaa !11
  %i.bkw = sub nsw i32 %i.bha, %i.awk
  %.idx1553 = mul nsw i64 %1, 176
  %i.bkx = getelementptr inbounds i8, ptr %0, i64 %.idx1553
  store i32 %i.bkw, ptr %i.bkx, align 4, !tbaa !11
  %i.bky = sub nsw i32 %i.bhi, %i.awr
  %.idx1554 = mul nsw i64 %1, 180
  %i.bkz = getelementptr inbounds i8, ptr %0, i64 %.idx1554
  store i32 %i.bky, ptr %i.bkz, align 4, !tbaa !11
  %i.bla = sub nsw i32 %i.bhq, %i.awy
  %.idx1555 = mul nsw i64 %1, 184
  %i.blb = getelementptr inbounds i8, ptr %0, i64 %.idx1555
  store i32 %i.bla, ptr %i.blb, align 4, !tbaa !11
  %i.blc = sub nsw i32 %i.bhy, %i.axf
  %.idx1556 = mul nsw i64 %1, 188
  %i.bld = getelementptr inbounds i8, ptr %0, i64 %.idx1556
  store i32 %i.blc, ptr %i.bld, align 4, !tbaa !11
  %i.ble = sub nsw i32 %i.bhz, %i.axm
  %.idx1557 = mul nsw i64 %1, 192
  %i.blf = getelementptr inbounds i8, ptr %0, i64 %.idx1557
  store i32 %i.ble, ptr %i.blf, align 4, !tbaa !11
  %i.blg = sub nsw i32 %i.bia, %i.axt
  %.idx1558 = mul nsw i64 %1, 196
  %i.blh = getelementptr inbounds i8, ptr %0, i64 %.idx1558
  store i32 %i.blg, ptr %i.blh, align 4, !tbaa !11
  %i.bli = sub nsw i32 %i.bib, %i.aya
  %.idx1559 = mul nsw i64 %1, 200
  %i.blj = getelementptr inbounds i8, ptr %0, i64 %.idx1559
  store i32 %i.bli, ptr %i.blj, align 4, !tbaa !11
  %i.blk = sub nsw i32 %i.bic, %i.ayh
  %.idx1560 = mul nsw i64 %1, 204
  %i.bll = getelementptr inbounds i8, ptr %0, i64 %.idx1560
  store i32 %i.blk, ptr %i.bll, align 4, !tbaa !11
  %i.blm = sub nsw i32 %i.bid, %i.ayo
  %.idx1561 = mul nsw i64 %1, 208
  %i.bln = getelementptr inbounds i8, ptr %0, i64 %.idx1561
  store i32 %i.blm, ptr %i.bln, align 4, !tbaa !11
  %i.blo = sub nsw i32 %i.bie, %i.ayv
  %.idx1562 = mul nsw i64 %1, 212
  %i.blp = getelementptr inbounds i8, ptr %0, i64 %.idx1562
  store i32 %i.blo, ptr %i.blp, align 4, !tbaa !11
  %i.blq = sub nsw i32 %i.bif, %i.azc
  %.idx1563 = mul nsw i64 %1, 216
  %i.blr = getelementptr inbounds i8, ptr %0, i64 %.idx1563
  store i32 %i.blq, ptr %i.blr, align 4, !tbaa !11
  %i.bls = sub nsw i32 %i.big, %i.azj
  %.idx1564 = mul nsw i64 %1, 220
  %i.blt = getelementptr inbounds i8, ptr %0, i64 %.idx1564
  store i32 %i.bls, ptr %i.blt, align 4, !tbaa !11
  %i.blu = sub nsw i32 %i.bih, %i.azq
  %.idx1565 = mul nsw i64 %1, 224
  %i.blv = getelementptr inbounds i8, ptr %0, i64 %.idx1565
  store i32 %i.blu, ptr %i.blv, align 4, !tbaa !11
  %i.blw = sub nsw i32 %i.bii, %i.azx
  %.idx1566 = mul nsw i64 %1, 228
  %i.blx = getelementptr inbounds i8, ptr %0, i64 %.idx1566
  store i32 %i.blw, ptr %i.blx, align 4, !tbaa !11
  %i.bly = sub nsw i32 %i.bij, %i.bae
  %.idx1567 = mul nsw i64 %1, 232
  %i.blz = getelementptr inbounds i8, ptr %0, i64 %.idx1567
  store i32 %i.bly, ptr %i.blz, align 4, !tbaa !11
  %i.bma = sub nsw i32 %i.bik, %i.bal
  %.idx1568 = mul nsw i64 %1, 236
  %i.bmb = getelementptr inbounds i8, ptr %0, i64 %.idx1568
  store i32 %i.bma, ptr %i.bmb, align 4, !tbaa !11
  %i.bmc = sub nsw i32 %i.bil, %i.bas
  %.idx1569 = mul nsw i64 %1, 240
  %i.bmd = getelementptr inbounds i8, ptr %0, i64 %.idx1569
end_hunk_2
