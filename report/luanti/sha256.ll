Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/sha256?download=true
inline.NumInlined: 104
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.SHA256state_st = type { [8 x i32], i32, i32, [16 x i32], i32, i32 }

@SHA256.m = internal global [32 x i8] zeroinitializer, align 16
@K256 = internal unnamed_addr constant [64 x i32] [i32 1116352408, i32 1899447441, i32 -1245643825, i32 -373957723, i32 961987163, i32 1508970993, i32 -1841331548, i32 -1424204075, i32 -670586216, i32 310598401, i32 607225278, i32 1426881987, i32 1925078388, i32 -2132889090, i32 -1680079193, i32 -1046744716, i32 -459576895, i32 -272742522, i32 264347078, i32 604807628, i32 770255983, i32 1249150122, i32 1555081692, i32 1996064986, i32 -1740746414, i32 -1473132947, i32 -1341970488, i32 -1084653625, i32 -958395405, i32 -710438585, i32 113926993, i32 338241895, i32 666307205, i32 773529912, i32 1294757372, i32 1396182291, i32 1695183700, i32 1986661051, i32 -2117940946, i32 -1838011259, i32 -1564481375, i32 -1474664885, i32 -1035236496, i32 -949202525, i32 -778901479, i32 -694614492, i32 -200395387, i32 275423344, i32 430227734, i32 506948616, i32 659060556, i32 883997877, i32 958139571, i32 1322822218, i32 1537002063, i32 1747873779, i32 1955562222, i32 2024104815, i32 -2067236844, i32 -1933114872, i32 -1866530822, i32 -1538233109, i32 -1090935817, i32 -965641998], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @SHA256_Init(ptr nofree noundef writeonly captures(none) initializes((0, 112)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(76) %i.a, i8 0, i64 76, i1 false)
  store <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, ptr %0, align 4, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x i32> <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>, ptr %i.b, align 4, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 32, ptr %i.c, align 4, !tbaa !10
  ret i32 1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i32 @SHA256_Update(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.i, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !12   ; 2 uses
  %i.d = trunc i64 %2 to i32                      ; 2 uses
  %i.e = shl i32 %i.d, 3
  %i.f = add i32 %i.c, %i.e                       ; 2 uses
  %i.g = icmp ult i32 %i.f, %i.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.i = load i32, ptr %i.h, align 4, !tbaa !13
  %i.j = zext i1 %i.g to i32
  %i.k = add i32 %i.i, %i.j
  %i.l = lshr i64 %2, 29
  %i.m = trunc i64 %i.l to i32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.o = add i32 %i.k, %i.m
  store i32 %i.o, ptr %i.n, align 4, !tbaa !13
  store i32 %i.f, ptr %i.b, align 4, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !14   ; 2 uses
  %i.r = zext i32 %i.q to i64                     ; 3 uses
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.t = icmp ugt i64 %2, 63
  %i.u = add nuw nsw i64 %2, %i.r
  %i.v = icmp ugt i64 %i.u, 63
  %or.cond = select i1 %i.t, i1 true, i1 %i.v
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.r ; 2 uses
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.x = sub nsw i64 64, %i.r                     ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr align 1 %1, i64 %i.x, i1 false)
  tail call fastcc void @sha256_block_data_order(ptr noundef nonnull %0, ptr noundef nonnull %i.s, i64 noundef 1)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %i.x
  %i.z = sub i64 %2, %i.x
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %i.s, i8 0, i64 68, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr align 1 %1, i64 %2, i1 false)
  %i.aa = load i32, ptr %i.p, align 4, !tbaa !14
  %i.ab = add i32 %i.aa, %i.d
  store i32 %i.ab, ptr %i.p, align 4, !tbaa !14
  br label %bb.i

bb.e:                                             ; preds = %bb.c, %._crit_edge
  %.053 = phi i64 [ %i.z, %bb.c ], [ %2, %._crit_edge ] ; 4 uses
  %.0 = phi ptr [ %i.y, %bb.c ], [ %1, %._crit_edge ] ; 3 uses
  %i.ac = lshr i64 %.053, 6                       ; 2 uses
  %.not59 = icmp eq i64 %i.ac, 0
  br i1 %.not59, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @sha256_block_data_order(ptr noundef nonnull %0, ptr noundef %.0, i64 noundef %i.ac)
  %i.ad = and i64 %.053, -64
  %i.ae = getelementptr inbounds nuw i8, ptr %.0, i64 %i.ad
  %i.af = and i64 %.053, 63
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.154 = phi i64 [ %i.af, %bb.f ], [ %.053, %bb.e ] ; 3 uses
  %.1 = phi ptr [ %i.ae, %bb.f ], [ %.0, %bb.e ]
  %.not60 = icmp eq i64 %.154, 0
  br i1 %.not60, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ah = trunc i64 %.154 to i32
  store i32 %i.ah, ptr %i.p, align 4, !tbaa !14
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ag, ptr align 1 %.1, i64 %.154, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.a, %bb.d
  ret i32 1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @sha256_block_data_order(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address) %1, i64 noundef range(i64 1, 288230376151711744) %2) unnamed_addr #2 {
bb.a:
  %3 = ptrtoaddr ptr %1 to i64
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %.promoted = load i32, ptr %0, align 4, !tbaa !9
  %.promoted622 = load i32, ptr %i.a, align 4, !tbaa !9
  %.promoted623 = load i32, ptr %i.b, align 4, !tbaa !9
  %.promoted624 = load i32, ptr %i.c, align 4, !tbaa !9
  %.promoted625 = load i32, ptr %i.d, align 4, !tbaa !9
  %.promoted626 = load i32, ptr %i.e, align 4, !tbaa !9
  %.promoted627 = load i32, ptr %i.f, align 4, !tbaa !9
  %.promoted628 = load i32, ptr %i.g, align 4, !tbaa !9
  %4 = and i64 %3, 3
  %5 = icmp eq i64 %4, 0
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.g
  %.in = phi i64 [ %2, %bb.a ], [ %i.p, %bb.g ]
  %.070629 = phi ptr [ %1, %bb.a ], [ %i.apz, %bb.g ] ; 21 uses
  %i.h = phi i32 [ %.promoted, %bb.a ], [ %i.aqa, %bb.g ] ; 13 uses
  %i.i = phi i32 [ %.promoted622, %bb.a ], [ %i.aqb, %bb.g ] ; 6 uses
  %i.j = phi i32 [ %.promoted623, %bb.a ], [ %i.aqc, %bb.g ] ; 4 uses
  %i.k = phi i32 [ %.promoted624, %bb.a ], [ %i.aqd, %bb.g ] ; 2 uses
  %i.l = phi i32 [ %.promoted625, %bb.a ], [ %i.aqe, %bb.g ] ; 12 uses
  %i.m = phi i32 [ %.promoted626, %bb.a ], [ %i.aqf, %bb.g ] ; 4 uses
  %i.n = phi i32 [ %.promoted627, %bb.a ], [ %i.aqg, %bb.g ] ; 3 uses
  %i.o = phi i32 [ %.promoted628, %bb.a ], [ %i.aqh, %bb.g ] ; 2 uses
  %i.p = add nsw i64 %.in, -1                     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.070629, i64 4 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.070629, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.070629, i64 12 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.070629, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.070629, i64 20 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.070629, i64 24 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.070629, i64 28 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.070629, i64 32 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.070629, i64 36 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.070629, i64 40 ; 2 uses
  br i1 %5, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aa = load i32, ptr %.070629, align 4, !tbaa !9
  %i.ab = tail call noundef i32 @llvm.bswap.i32(i32 %i.aa)
  %i.ac = load i32, ptr %i.q, align 4, !tbaa !9
  %i.ad = tail call noundef i32 @llvm.bswap.i32(i32 %i.ac)
  %i.ae = load i32, ptr %i.r, align 4, !tbaa !9
  %i.af = tail call noundef i32 @llvm.bswap.i32(i32 %i.ae)
  %i.ag = load i32, ptr %i.s, align 4, !tbaa !9
  %i.ah = tail call noundef i32 @llvm.bswap.i32(i32 %i.ag)
  %i.ai = load i32, ptr %i.t, align 4, !tbaa !9
  %i.aj = tail call noundef i32 @llvm.bswap.i32(i32 %i.ai)
  %i.ak = load i32, ptr %i.u, align 4, !tbaa !9
  %i.al = tail call noundef i32 @llvm.bswap.i32(i32 %i.ak)
  %i.am = load i32, ptr %i.v, align 4, !tbaa !9
  %i.an = tail call noundef i32 @llvm.bswap.i32(i32 %i.am)
  %i.ao = load i32, ptr %i.w, align 4, !tbaa !9
  %i.ap = tail call noundef i32 @llvm.bswap.i32(i32 %i.ao)
  %i.aq = load i32, ptr %i.x, align 4, !tbaa !9
  %i.ar = tail call noundef i32 @llvm.bswap.i32(i32 %i.aq)
  %i.as = load i32, ptr %i.y, align 4, !tbaa !9
  %i.at = tail call noundef i32 @llvm.bswap.i32(i32 %i.as)
  %i.au = load i32, ptr %i.z, align 4, !tbaa !9
  %i.av = tail call noundef i32 @llvm.bswap.i32(i32 %i.au)
  %i.aw = getelementptr inbounds nuw i8, ptr %.070629, i64 44
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !9
  %i.ay = tail call noundef i32 @llvm.bswap.i32(i32 %i.ax)
  %i.az = getelementptr inbounds nuw i8, ptr %.070629, i64 48
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !9
  %i.bb = tail call noundef i32 @llvm.bswap.i32(i32 %i.ba)
  %i.bc = getelementptr inbounds nuw i8, ptr %.070629, i64 52
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !9
  %i.be = tail call noundef i32 @llvm.bswap.i32(i32 %i.bd)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %.070.val = load i32, ptr %.070629, align 1
  %i.bf = tail call noundef i32 @llvm.bswap.i32(i32 %.070.val)
  %.val85 = load i32, ptr %i.q, align 1
  %i.bg = tail call noundef i32 @llvm.bswap.i32(i32 %.val85)
  %.val84 = load i32, ptr %i.r, align 1
  %i.bh = tail call noundef i32 @llvm.bswap.i32(i32 %.val84)
  %.val83 = load i32, ptr %i.s, align 1
  %i.bi = tail call noundef i32 @llvm.bswap.i32(i32 %.val83)
  %.val82 = load i32, ptr %i.t, align 1
  %i.bj = tail call noundef i32 @llvm.bswap.i32(i32 %.val82)
  %.val81 = load i32, ptr %i.u, align 1
  %i.bk = tail call noundef i32 @llvm.bswap.i32(i32 %.val81)
  %.val80 = load i32, ptr %i.v, align 1
  %i.bl = tail call noundef i32 @llvm.bswap.i32(i32 %.val80)
  %.val79 = load i32, ptr %i.w, align 1
  %i.bm = tail call noundef i32 @llvm.bswap.i32(i32 %.val79)
  %.val78 = load i32, ptr %i.x, align 1
  %i.bn = tail call noundef i32 @llvm.bswap.i32(i32 %.val78)
  %.val77 = load i32, ptr %i.y, align 1
  %i.bo = tail call noundef i32 @llvm.bswap.i32(i32 %.val77)
  %.val76 = load i32, ptr %i.z, align 1
  %i.bp = tail call noundef i32 @llvm.bswap.i32(i32 %.val76)
  %i.bq = getelementptr inbounds nuw i8, ptr %.070629, i64 44
  %.val75 = load i32, ptr %i.bq, align 1
  %i.br = tail call noundef i32 @llvm.bswap.i32(i32 %.val75)
  %i.bs = getelementptr inbounds nuw i8, ptr %.070629, i64 48
  %.val74 = load i32, ptr %i.bs, align 1
  %i.bt = tail call noundef i32 @llvm.bswap.i32(i32 %.val74)
  %i.bu = getelementptr inbounds nuw i8, ptr %.070629, i64 52
  %.val73 = load i32, ptr %i.bu, align 1
  %i.bv = tail call noundef i32 @llvm.bswap.i32(i32 %.val73)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.119.0 = phi i32 [ %i.be, %bb.c ], [ %i.bv, %bb.d ] ; 2 uses
  %.sroa.110.0 = phi i32 [ %i.bb, %bb.c ], [ %i.bt, %bb.d ] ; 2 uses
  %.sroa.101.0 = phi i32 [ %i.ay, %bb.c ], [ %i.br, %bb.d ] ; 2 uses
  %.sroa.92.0 = phi i32 [ %i.av, %bb.c ], [ %i.bp, %bb.d ] ; 2 uses
  %.sroa.83.0 = phi i32 [ %i.at, %bb.c ], [ %i.bo, %bb.d ] ; 2 uses
  %.sroa.74.0 = phi i32 [ %i.ar, %bb.c ], [ %i.bn, %bb.d ] ; 2 uses
  %.sroa.65.0 = phi i32 [ %i.ap, %bb.c ], [ %i.bm, %bb.d ] ; 2 uses
  %.sroa.56.0 = phi i32 [ %i.an, %bb.c ], [ %i.bl, %bb.d ] ; 2 uses
  %.sroa.47.0 = phi i32 [ %i.al, %bb.c ], [ %i.bk, %bb.d ] ; 2 uses
  %.sroa.38.0 = phi i32 [ %i.aj, %bb.c ], [ %i.bj, %bb.d ] ; 2 uses
  %.sroa.29.0 = phi i32 [ %i.ah, %bb.c ], [ %i.bi, %bb.d ] ; 2 uses
  %.sroa.20.0 = phi i32 [ %i.af, %bb.c ], [ %i.bh, %bb.d ] ; 2 uses
  %.sroa.11.0 = phi i32 [ %i.ad, %bb.c ], [ %i.bg, %bb.d ] ; 2 uses
  %.sroa.0.0 = phi i32 [ %i.ab, %bb.c ], [ %i.bf, %bb.d ] ; 2 uses
  %.val72.sink.in = getelementptr inbounds nuw i8, ptr %.070629, i64 56
  %.val72.sink = load i32, ptr %.val72.sink.in, align 1
  %i.bw = tail call noundef i32 @llvm.bswap.i32(i32 %.val72.sink) ; 2 uses
  %.val.sink.in = getelementptr inbounds nuw i8, ptr %.070629, i64 60
  %.val.sink = load i32, ptr %.val.sink.in, align 1
  %i.bx = tail call noundef i32 @llvm.bswap.i32(i32 %.val.sink) ; 2 uses
  %i.by = tail call i32 @llvm.fshl.i32(i32 %i.l, i32 %i.l, i32 26)
  %i.bz = tail call i32 @llvm.fshl.i32(i32 %i.l, i32 %i.l, i32 21)
  %i.ca = xor i32 %i.by, %i.bz
  %i.cb = tail call i32 @llvm.fshl.i32(i32 %i.l, i32 %i.l, i32 7)
  %i.cc = xor i32 %i.ca, %i.cb
  %i.cd = and i32 %i.m, %i.l
  %i.ce = xor i32 %i.l, -1
  %i.cf = and i32 %i.n, %i.ce
  %i.cg = add i32 %i.cd, 1116352408
  %i.ch = add i32 %i.cg, %i.o
  %i.ci = add i32 %i.ch, %i.cc
  %i.cj = add i32 %i.ci, %i.cf
  %i.ck = add i32 %i.cj, %.sroa.0.0               ; 2 uses
  %i.cl = tail call i32 @llvm.fshl.i32(i32 %i.h, i32 %i.h, i32 30)
  %i.cm = tail call i32 @llvm.fshl.i32(i32 %i.h, i32 %i.h, i32 19)
  %i.cn = xor i32 %i.cl, %i.cm
  %i.co = tail call i32 @llvm.fshl.i32(i32 %i.h, i32 %i.h, i32 10)
  %i.cp = xor i32 %i.cn, %i.co
  %i.cq = xor i32 %i.j, %i.i
  %i.cr = and i32 %i.cq, %i.h
  %i.cs = and i32 %i.j, %i.i
  %i.ct = xor i32 %i.cr, %i.cs
  %i.cu = add i32 %i.ck, %i.k                     ; 11 uses
  %i.cv = add i32 %i.ct, %i.cp
  %i.cw = add i32 %i.cv, %i.ck                    ; 12 uses
  %i.cx = tail call i32 @llvm.fshl.i32(i32 %i.cu, i32 %i.cu, i32 26)
  %i.cy = tail call i32 @llvm.fshl.i32(i32 %i.cu, i32 %i.cu, i32 21)
  %i.cz = xor i32 %i.cx, %i.cy
  %i.da = tail call i32 @llvm.fshl.i32(i32 %i.cu, i32 %i.cu, i32 7)
  %i.db = xor i32 %i.cz, %i.da
  %i.dc = and i32 %i.cu, %i.l
  %i.dd = xor i32 %i.cu, -1
  %i.de = and i32 %i.m, %i.dd
  %i.df = add i32 %i.n, 1899447441
  %i.dg = add i32 %i.df, %.sroa.11.0
  %i.dh = add i32 %i.dg, %i.dc
  %i.di = add i32 %i.dh, %i.de
  %i.dj = add i32 %i.di, %i.db                    ; 2 uses
  %i.dk = tail call i32 @llvm.fshl.i32(i32 %i.cw, i32 %i.cw, i32 30)
  %i.dl = tail call i32 @llvm.fshl.i32(i32 %i.cw, i32 %i.cw, i32 19)
  %i.dm = xor i32 %i.dk, %i.dl
  %i.dn = tail call i32 @llvm.fshl.i32(i32 %i.cw, i32 %i.cw, i32 10)
  %i.do = xor i32 %i.dm, %i.dn
  %i.dp = xor i32 %i.i, %i.h
  %i.dq = and i32 %i.cw, %i.dp
  %i.dr = and i32 %i.i, %i.h
  %i.ds = xor i32 %i.dq, %i.dr
  %i.dt = add i32 %i.dj, %i.j                     ; 11 uses
  %i.du = add i32 %i.do, %i.ds
  %i.dv = add i32 %i.du, %i.dj                    ; 12 uses
  %i.dw = tail call i32 @llvm.fshl.i32(i32 %i.dt, i32 %i.dt, i32 26)
  %i.dx = tail call i32 @llvm.fshl.i32(i32 %i.dt, i32 %i.dt, i32 21)
  %i.dy = xor i32 %i.dw, %i.dx
  %i.dz = tail call i32 @llvm.fshl.i32(i32 %i.dt, i32 %i.dt, i32 7)
  %i.ea = xor i32 %i.dy, %i.dz
  %i.eb = and i32 %i.dt, %i.cu
  %i.ec = xor i32 %i.dt, -1
  %i.ed = and i32 %i.l, %i.ec
  %i.ee = add i32 %i.m, -1245643825
  %i.ef = add i32 %i.ee, %.sroa.20.0
  %i.eg = add i32 %i.ef, %i.eb
  %i.eh = add i32 %i.eg, %i.ed
  %i.ei = add i32 %i.eh, %i.ea                    ; 2 uses
  %i.ej = tail call i32 @llvm.fshl.i32(i32 %i.dv, i32 %i.dv, i32 30)
  %i.ek = tail call i32 @llvm.fshl.i32(i32 %i.dv, i32 %i.dv, i32 19)
  %i.el = xor i32 %i.ej, %i.ek
  %i.em = tail call i32 @llvm.fshl.i32(i32 %i.dv, i32 %i.dv, i32 10)
  %i.en = xor i32 %i.el, %i.em
  %i.eo = xor i32 %i.cw, %i.h
  %i.ep = and i32 %i.dv, %i.eo
  %i.eq = and i32 %i.cw, %i.h
  %i.er = xor i32 %i.ep, %i.eq
  %i.es = add i32 %i.ei, %i.i                     ; 11 uses
  %i.et = add i32 %i.en, %i.er
  %i.eu = add i32 %i.et, %i.ei                    ; 12 uses
  %i.ev = tail call i32 @llvm.fshl.i32(i32 %i.es, i32 %i.es, i32 26)
  %i.ew = tail call i32 @llvm.fshl.i32(i32 %i.es, i32 %i.es, i32 21)
  %i.ex = xor i32 %i.ev, %i.ew
  %i.ey = tail call i32 @llvm.fshl.i32(i32 %i.es, i32 %i.es, i32 7)
  %i.ez = xor i32 %i.ex, %i.ey
  %i.fa = and i32 %i.es, %i.dt
  %i.fb = xor i32 %i.es, -1
  %i.fc = and i32 %i.cu, %i.fb
  %i.fd = add i32 %i.l, -373957723
  %i.fe = add i32 %i.fd, %.sroa.29.0
  %i.ff = add i32 %i.fe, %i.fa
  %i.fg = add i32 %i.ff, %i.fc
  %i.fh = add i32 %i.fg, %i.ez                    ; 2 uses
  %i.fi = tail call i32 @llvm.fshl.i32(i32 %i.eu, i32 %i.eu, i32 30)
  %i.fj = tail call i32 @llvm.fshl.i32(i32 %i.eu, i32 %i.eu, i32 19)
  %i.fk = xor i32 %i.fi, %i.fj
  %i.fl = tail call i32 @llvm.fshl.i32(i32 %i.eu, i32 %i.eu, i32 10)
  %i.fm = xor i32 %i.fk, %i.fl
  %i.fn = xor i32 %i.dv, %i.cw
  %i.fo = and i32 %i.eu, %i.fn
  %i.fp = and i32 %i.dv, %i.cw
  %i.fq = xor i32 %i.fo, %i.fp
  %i.fr = add i32 %i.fh, %i.h                     ; 11 uses
  %i.fs = add i32 %i.fm, %i.fq
end_hunk_0
begin_hunk_1_@sha256_block_data_order:bb.a
  %i.ajn = and i32 %i.ahp, %i.ago
  %i.ajo = xor i32 %i.ajm, %i.ajn
  %i.ajp = add i32 %i.ajf, %i.afn                 ; 11 uses
  %i.ajq = add i32 %i.ajk, %i.ajo
  %i.ajr = add i32 %i.ajq, %i.ajf                 ; 12 uses
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.zi, i64 40
  %i.ajt = load i32, ptr %i.ajs, align 8, !tbaa !9
  %i.aju = tail call i32 @llvm.fshl.i32(i32 %i.ajp, i32 %i.ajp, i32 26)
  %i.ajv = tail call i32 @llvm.fshl.i32(i32 %i.ajp, i32 %i.ajp, i32 21)
  %i.ajw = xor i32 %i.aju, %i.ajv
  %i.ajx = tail call i32 @llvm.fshl.i32(i32 %i.ajp, i32 %i.ajp, i32 7)
  %i.ajy = xor i32 %i.ajw, %i.ajx
  %i.ajz = and i32 %i.ajp, %i.aio
  %i.aka = xor i32 %i.ajp, -1
  %i.akb = and i32 %i.ahn, %i.aka
  %i.akc = add i32 %i.ajt, %i.wu
  %i.akd = add i32 %i.akc, %i.agm
  %i.ake = add i32 %i.akd, %i.ajz
  %i.akf = add i32 %i.ake, %i.akb
  %i.akg = add i32 %i.akf, %i.ajy                 ; 2 uses
  %i.akh = tail call i32 @llvm.fshl.i32(i32 %i.ajr, i32 %i.ajr, i32 30)
  %i.aki = tail call i32 @llvm.fshl.i32(i32 %i.ajr, i32 %i.ajr, i32 19)
  %i.akj = xor i32 %i.akh, %i.aki
  %i.akk = tail call i32 @llvm.fshl.i32(i32 %i.ajr, i32 %i.ajr, i32 10)
  %i.akl = xor i32 %i.akj, %i.akk
  %i.akm = xor i32 %i.aiq, %i.ahp
  %i.akn = and i32 %i.ajr, %i.akm
  %i.ako = and i32 %i.aiq, %i.ahp
  %i.akp = xor i32 %i.akn, %i.ako
  %i.akq = add i32 %i.akg, %i.ago                 ; 11 uses
  %i.akr = add i32 %i.akl, %i.akp
  %i.aks = add i32 %i.akr, %i.akg                 ; 12 uses
  %i.akt = getelementptr inbounds nuw i8, ptr %i.zi, i64 44
  %i.aku = load i32, ptr %i.akt, align 4, !tbaa !9
  %i.akv = tail call i32 @llvm.fshl.i32(i32 %i.akq, i32 %i.akq, i32 26)
  %i.akw = tail call i32 @llvm.fshl.i32(i32 %i.akq, i32 %i.akq, i32 21)
  %i.akx = xor i32 %i.akv, %i.akw
  %i.aky = tail call i32 @llvm.fshl.i32(i32 %i.akq, i32 %i.akq, i32 7)
  %i.akz = xor i32 %i.akx, %i.aky
  %i.ala = and i32 %i.akq, %i.ajp
  %i.alb = xor i32 %i.akq, -1
  %i.alc = and i32 %i.aio, %i.alb
  %i.ald = add i32 %i.aku, %i.xh
  %i.ale = add i32 %i.ald, %i.ahn
  %i.alf = add i32 %i.ale, %i.ala
  %i.alg = add i32 %i.alf, %i.alc
  %i.alh = add i32 %i.alg, %i.akz                 ; 2 uses
  %i.ali = tail call i32 @llvm.fshl.i32(i32 %i.aks, i32 %i.aks, i32 30)
  %i.alj = tail call i32 @llvm.fshl.i32(i32 %i.aks, i32 %i.aks, i32 19)
  %i.alk = xor i32 %i.ali, %i.alj
  %i.all = tail call i32 @llvm.fshl.i32(i32 %i.aks, i32 %i.aks, i32 10)
  %i.alm = xor i32 %i.alk, %i.all
  %i.aln = xor i32 %i.ajr, %i.aiq
  %i.alo = and i32 %i.aks, %i.aln
  %i.alp = and i32 %i.ajr, %i.aiq
  %i.alq = xor i32 %i.alo, %i.alp
  %i.alr = add i32 %i.alh, %i.ahp                 ; 11 uses
  %i.als = add i32 %i.alm, %i.alq
  %i.alt = add i32 %i.als, %i.alh                 ; 12 uses
  %i.alu = getelementptr inbounds nuw i8, ptr %i.zi, i64 48
  %i.alv = load i32, ptr %i.alu, align 16, !tbaa !9
  %i.alw = tail call i32 @llvm.fshl.i32(i32 %i.alr, i32 %i.alr, i32 26)
  %i.alx = tail call i32 @llvm.fshl.i32(i32 %i.alr, i32 %i.alr, i32 21)
  %i.aly = xor i32 %i.alw, %i.alx
  %i.alz = tail call i32 @llvm.fshl.i32(i32 %i.alr, i32 %i.alr, i32 7)
  %i.ama = xor i32 %i.aly, %i.alz
  %i.amb = and i32 %i.alr, %i.akq
  %i.amc = xor i32 %i.alr, -1
  %i.amd = and i32 %i.ajp, %i.amc
  %i.ame = add i32 %i.alv, %i.xu
  %i.amf = add i32 %i.ame, %i.aio
  %i.amg = add i32 %i.amf, %i.amb
  %i.amh = add i32 %i.amg, %i.amd
  %i.ami = add i32 %i.amh, %i.ama                 ; 2 uses
  %i.amj = tail call i32 @llvm.fshl.i32(i32 %i.alt, i32 %i.alt, i32 30)
  %i.amk = tail call i32 @llvm.fshl.i32(i32 %i.alt, i32 %i.alt, i32 19)
  %i.aml = xor i32 %i.amj, %i.amk
  %i.amm = tail call i32 @llvm.fshl.i32(i32 %i.alt, i32 %i.alt, i32 10)
  %i.amn = xor i32 %i.aml, %i.amm
  %i.amo = xor i32 %i.aks, %i.ajr
  %i.amp = and i32 %i.alt, %i.amo
  %i.amq = and i32 %i.aks, %i.ajr
  %i.amr = xor i32 %i.amp, %i.amq
  %i.ams = add i32 %i.ami, %i.aiq                 ; 12 uses
  %i.amt = add i32 %i.amn, %i.amr
  %i.amu = add i32 %i.amt, %i.ami                 ; 13 uses
  %i.amv = getelementptr inbounds nuw i8, ptr %i.zi, i64 52
  %i.amw = load i32, ptr %i.amv, align 4, !tbaa !9
  %i.amx = tail call i32 @llvm.fshl.i32(i32 %i.ams, i32 %i.ams, i32 26)
  %i.amy = tail call i32 @llvm.fshl.i32(i32 %i.ams, i32 %i.ams, i32 21)
  %i.amz = xor i32 %i.amx, %i.amy
  %i.ana = tail call i32 @llvm.fshl.i32(i32 %i.ams, i32 %i.ams, i32 7)
  %i.anb = xor i32 %i.amz, %i.ana
  %i.anc = and i32 %i.ams, %i.alr
  %i.and = xor i32 %i.ams, -1
  %i.ane = and i32 %i.akq, %i.and
  %i.anf = add i32 %i.amw, %i.yh
  %i.ang = add i32 %i.anf, %i.ajp
  %i.anh = add i32 %i.ang, %i.anc
  %i.ani = add i32 %i.anh, %i.ane
  %i.anj = add i32 %i.ani, %i.anb                 ; 2 uses
  %i.ank = tail call i32 @llvm.fshl.i32(i32 %i.amu, i32 %i.amu, i32 30)
  %i.anl = tail call i32 @llvm.fshl.i32(i32 %i.amu, i32 %i.amu, i32 19)
  %i.anm = xor i32 %i.ank, %i.anl
  %i.ann = tail call i32 @llvm.fshl.i32(i32 %i.amu, i32 %i.amu, i32 10)
  %i.ano = xor i32 %i.anm, %i.ann
  %i.anp = xor i32 %i.alt, %i.aks
  %i.anq = and i32 %i.amu, %i.anp
  %i.anr = and i32 %i.alt, %i.aks
  %i.ans = xor i32 %i.anq, %i.anr
  %i.ant = add i32 %i.anj, %i.ajr                 ; 11 uses
  %i.anu = add i32 %i.ano, %i.ans
  %i.anv = add i32 %i.anu, %i.anj                 ; 11 uses
  %i.anw = getelementptr inbounds nuw i8, ptr %i.zi, i64 56
  %i.anx = load i32, ptr %i.anw, align 8, !tbaa !9
  %i.any = tail call i32 @llvm.fshl.i32(i32 %i.ant, i32 %i.ant, i32 26)
  %i.anz = tail call i32 @llvm.fshl.i32(i32 %i.ant, i32 %i.ant, i32 21)
  %i.aoa = xor i32 %i.any, %i.anz
  %i.aob = tail call i32 @llvm.fshl.i32(i32 %i.ant, i32 %i.ant, i32 7)
  %i.aoc = xor i32 %i.aoa, %i.aob
  %i.aod = and i32 %i.ant, %i.ams
  %i.aoe = xor i32 %i.ant, -1
  %i.aof = and i32 %i.alr, %i.aoe
  %i.aog = add i32 %i.anx, %i.yu
  %i.aoh = add i32 %i.aog, %i.akq
  %i.aoi = add i32 %i.aoh, %i.aod
  %i.aoj = add i32 %i.aoi, %i.aof
  %i.aok = add i32 %i.aoj, %i.aoc                 ; 2 uses
  %i.aol = tail call i32 @llvm.fshl.i32(i32 %i.anv, i32 %i.anv, i32 30)
  %i.aom = tail call i32 @llvm.fshl.i32(i32 %i.anv, i32 %i.anv, i32 19)
  %i.aon = xor i32 %i.aol, %i.aom
  %i.aoo = tail call i32 @llvm.fshl.i32(i32 %i.anv, i32 %i.anv, i32 10)
  %i.aop = xor i32 %i.aon, %i.aoo
  %i.aoq = xor i32 %i.amu, %i.alt
  %i.aor = and i32 %i.anv, %i.aoq
  %i.aos = and i32 %i.amu, %i.alt
  %i.aot = xor i32 %i.aor, %i.aos
  %i.aou = add i32 %i.aok, %i.aks                 ; 10 uses
  %i.aov = add i32 %i.aop, %i.aot
  %i.aow = add i32 %i.aov, %i.aok                 ; 9 uses
  %i.aox = getelementptr inbounds nuw i8, ptr %i.zi, i64 60
  %i.aoy = load i32, ptr %i.aox, align 4, !tbaa !9
  %i.aoz = tail call i32 @llvm.fshl.i32(i32 %i.aou, i32 %i.aou, i32 26)
  %i.apa = tail call i32 @llvm.fshl.i32(i32 %i.aou, i32 %i.aou, i32 21)
  %i.apb = xor i32 %i.aoz, %i.apa
  %i.apc = tail call i32 @llvm.fshl.i32(i32 %i.aou, i32 %i.aou, i32 7)
  %i.apd = xor i32 %i.apb, %i.apc
  %i.ape = and i32 %i.aou, %i.ant
  %i.apf = xor i32 %i.aou, -1
  %i.apg = and i32 %i.ams, %i.apf
  %i.aph = add i32 %i.aoy, %i.zh
  %i.api = add i32 %i.aph, %i.alr
  %i.apj = add i32 %i.api, %i.ape
  %i.apk = add i32 %i.apj, %i.apg
  %i.apl = add i32 %i.apk, %i.apd                 ; 2 uses
  %i.apm = tail call i32 @llvm.fshl.i32(i32 %i.aow, i32 %i.aow, i32 30)
  %i.apn = tail call i32 @llvm.fshl.i32(i32 %i.aow, i32 %i.aow, i32 19)
  %i.apo = xor i32 %i.apm, %i.apn
  %i.app = tail call i32 @llvm.fshl.i32(i32 %i.aow, i32 %i.aow, i32 10)
  %i.apq = xor i32 %i.apo, %i.app
  %i.apr = xor i32 %i.anv, %i.amu
  %i.aps = and i32 %i.aow, %i.apr
  %i.apt = and i32 %i.anv, %i.amu
  %i.apu = xor i32 %i.aps, %i.apt
  %i.apv = add i32 %i.apl, %i.alt                 ; 2 uses
  %i.apw = add i32 %i.apq, %i.apu
  %i.apx = add i32 %i.apw, %i.apl                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 16
  %i.apy = icmp samesign ult i64 %indvars.iv, 48
  br i1 %i.apy, label %bb.f, label %bb.g, !llvm.loop !15

bb.g:                                             ; preds = %bb.f
  %i.apz = getelementptr inbounds nuw i8, ptr %.070629, i64 64
  %i.aqa = add i32 %i.apx, %i.h                   ; 2 uses
  store i32 %i.aqa, ptr %0, align 4, !tbaa !9
  %i.aqb = add i32 %i.aow, %i.i                   ; 2 uses
  store i32 %i.aqb, ptr %i.a, align 4, !tbaa !9
  %i.aqc = add i32 %i.anv, %i.j                   ; 2 uses
  store i32 %i.aqc, ptr %i.b, align 4, !tbaa !9
  %i.aqd = add i32 %i.amu, %i.k                   ; 2 uses
  store i32 %i.aqd, ptr %i.c, align 4, !tbaa !9
  %i.aqe = add i32 %i.apv, %i.l                   ; 2 uses
  store i32 %i.aqe, ptr %i.d, align 4, !tbaa !9
  %i.aqf = add i32 %i.aou, %i.m                   ; 2 uses
  store i32 %i.aqf, ptr %i.e, align 4, !tbaa !9
  %i.aqg = add i32 %i.ant, %i.n                   ; 2 uses
  store i32 %i.aqg, ptr %i.f, align 4, !tbaa !9
  %i.aqh = add i32 %i.ams, %i.o                   ; 2 uses
  store i32 %i.aqh, ptr %i.g, align 4, !tbaa !9
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %bb.h, label %bb.b, !llvm.loop !17

bb.h:                                             ; preds = %bb.g
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @SHA256_Transform(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #2 {
bb.a:
  tail call fastcc void @sha256_block_data_order(ptr noundef %0, ptr noundef %1, i64 noundef 1)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 2) i32 @SHA256_Final(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef captures(address) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.c = load i32, ptr %i.b, align 4, !tbaa !14   ; 2 uses
  %i.d = zext i32 %i.c to i64                     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.d
  store i8 -128, ptr %i.e, align 1, !tbaa !18
  %i.f = add nuw nsw i64 %i.d, 1                  ; 2 uses
  %i.g = icmp ugt i32 %i.c, 55
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.f
  %i.i = sub nsw i64 63, %i.d
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.h, i8 0, i64 %i.i, i1 false)
  tail call fastcc void @sha256_block_data_order(ptr noundef nonnull %1, ptr noundef nonnull %i.a, i64 noundef 1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.037 = phi i64 [ 0, %bb.b ], [ %i.f, %bb.a ]   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 %.037
  %i.k = sub nuw nsw i64 56, %.037
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.j, i8 0, i64 %i.k, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.m = load i32, ptr %i.l, align 4, !tbaa !13
  %i.n = tail call noundef i32 @llvm.bswap.i32(i32 %i.m)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i32 %i.n, ptr %i.o, align 4, !tbaa !9
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load i32, ptr %i.p, align 4, !tbaa !12
  %i.r = tail call noundef i32 @llvm.bswap.i32(i32 %i.q)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 100
  store i32 %i.r, ptr %i.s, align 4, !tbaa !9
  tail call fastcc void @sha256_block_data_order(ptr noundef nonnull %1, ptr noundef nonnull %i.a, i64 noundef 1)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 108 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %i.a, i8 0, i64 68, i1 false)
  %i.u = load i32, ptr %i.t, align 4, !tbaa !10   ; 3 uses
  %cond = icmp eq i32 %i.u, 32
  br i1 %cond, label %.preheader.preheader, label %bb.d

.preheader.preheader:                             ; preds = %bb.c
  %i.v = load i32, ptr %1, align 4, !tbaa !9
  %i.w = tail call noundef i32 @llvm.bswap.i32(i32 %i.v)
  store i32 %i.w, ptr %0, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !9
  %i.aa = tail call noundef i32 @llvm.bswap.i32(i32 %i.z)
  store i32 %i.aa, ptr %i.x, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !9
  %i.ae = tail call noundef i32 @llvm.bswap.i32(i32 %i.ad)
  store i32 %i.ae, ptr %i.ab, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !9
  %i.ai = tail call noundef i32 @llvm.bswap.i32(i32 %i.ah)
  store i32 %i.ai, ptr %i.af, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !9
  %i.am = tail call noundef i32 @llvm.bswap.i32(i32 %i.al)
  store i32 %i.am, ptr %i.aj, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !9
  %i.aq = tail call noundef i32 @llvm.bswap.i32(i32 %i.ap)
  store i32 %i.aq, ptr %i.an, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.at = load i32, ptr %i.as, align 4, !tbaa !9
  %i.au = tail call noundef i32 @llvm.bswap.i32(i32 %i.at)
  store i32 %i.au, ptr %i.ar, align 1
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !9
  %i.ay = tail call noundef i32 @llvm.bswap.i32(i32 %i.ax)
  store i32 %i.ay, ptr %i.av, align 1
  br label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.az = icmp ugt i32 %i.u, 32
  br i1 %i.az, label %.loopexit, label %.preheader44

.preheader44:                                     ; preds = %bb.d
  %.not = icmp samesign ult i32 %i.u, 4
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader44, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader44 ] ; 2 uses
  %.14046 = phi ptr [ %i.bd, %.lr.ph ], [ %0, %.preheader44 ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !9
  %i.bc = tail call noundef i32 @llvm.bswap.i32(i32 %i.bb)
  store i32 %i.bc, ptr %.14046, align 1
  %i.bd = getelementptr inbounds nuw i8, ptr %.14046, i64 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.be = load i32, ptr %i.t, align 4, !tbaa !10
  %i.bf = lshr i32 %i.be, 2
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = icmp samesign ult i64 %indvars.iv.next, %i.bg
  br i1 %i.bh, label %.lr.ph, label %.loopexit, !llvm.loop !19

.loopexit:                                        ; preds = %.lr.ph, %.preheader.preheader, %.preheader44, %bb.d
  %.038 = phi i32 [ 0, %bb.d ], [ 1, %.preheader44 ], [ 1, %.preheader.preheader ], [ 1, %.lr.ph ]
  ret i32 %.038
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef nonnull ptr @SHA256(ptr nofree noundef readonly captures(address) %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null, ret: address, provenance) %2) local_unnamed_addr #4 {
bb.a:
  %3 = alloca %struct.SHA256state_st, align 16    ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(76) %i.a, i8 0, i64 76, i1 false)
  store <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, ptr %3, align 16, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  store <4 x i32> <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>, ptr %i.b, align 16, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 108
  store i32 32, ptr %i.c, align 4, !tbaa !10
  %i.d = icmp eq i64 %1, 0
  br i1 %i.d, label %SHA256_Update.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = trunc i64 %1 to i32
  %i.f = shl i32 %i.e, 3
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.h = lshr i64 %1, 29
  %i.i = trunc i64 %i.h to i32
  store i32 %i.i, ptr %i.g, align 4, !tbaa !13
  store i32 %i.f, ptr %i.a, align 16, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.k = lshr i64 %1, 6                           ; 2 uses
  %.not59.i = icmp eq i64 %i.k, 0
  br i1 %.not59.i, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  call fastcc void @sha256_block_data_order(ptr noundef nonnull %3, ptr noundef %0, i64 noundef %i.k)
  %i.l = and i64 %1, -64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %i.l
  %i.n = and i64 %1, 63                           ; 2 uses
  %.not60.i = icmp eq i64 %i.n, 0
  br i1 %.not60.i, label %SHA256_Update.exit, label %.thread

.thread:                                          ; preds = %bb.b, %bb.c
  %.1.i9 = phi ptr [ %i.m, %bb.c ], [ %0, %bb.b ]
  %.154.i8 = phi i64 [ %i.n, %bb.c ], [ %1, %bb.b ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.p = trunc i64 %.154.i8 to i32
  store i32 %i.p, ptr %i.j, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 1 %.1.i9, i64 %.154.i8, i1 false)
  br label %SHA256_Update.exit

SHA256_Update.exit:                               ; preds = %bb.a, %bb.c, %.thread
  %i.q = icmp eq ptr %2, null
  %spec.store.select = select i1 %i.q, ptr @SHA256.m, ptr %2 ; 2 uses
  %i.r = call i32 @SHA256_Final(ptr noundef nonnull %spec.store.select, ptr noundef nonnull %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  ret ptr %spec.store.select
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!6, !6, i64 0}
!10 = !{!11, !6, i64 108}
!11 = !{!"SHA256state_st", !7, i64 0, !6, i64 32, !6, i64 36, !7, i64 40, !6, i64 104, !6, i64 108}
!12 = !{!11, !6, i64 32}
!13 = !{!11, !6, i64 36}
!14 = !{!11, !6, i64 104}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
!18 = !{!7, !7, i64 0}
!19 = distinct !{!19, !16}
end_hunk_1
