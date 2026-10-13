Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/brotli/original/static_dict?download=true
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 0, 2) i32 @BrotliFindAllStaticDictionaryMatches(ptr nofree noundef readonly captures(address) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [38 x i32], align 16              ; 15 uses
  %i.b = tail call fastcc i32 @BrotliFindAllStaticDictionaryMatchesFor(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4) ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24   ; 4 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i8, ptr %i.e, align 4, !tbaa !27
  %i.g = icmp ugt i8 %i.f, 1
  br i1 %i.g, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !28   ; 2 uses
  %i.j = icmp eq ptr %i.i, %0
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !28
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.034 = phi ptr [ %i.l, %bb.d ], [ %i.i, %bb.c ]
  store <4 x i32> splat (i32 268435455), ptr %i.a, align 16, !tbaa !19
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <4 x i32> splat (i32 268435455), ptr %i.m, align 16, !tbaa !19
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store <4 x i32> splat (i32 268435455), ptr %i.n, align 16, !tbaa !19
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store <4 x i32> splat (i32 268435455), ptr %i.o, align 16, !tbaa !19
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store <4 x i32> splat (i32 268435455), ptr %i.p, align 16, !tbaa !19
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store <4 x i32> splat (i32 268435455), ptr %i.q, align 16, !tbaa !19
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store <4 x i32> splat (i32 268435455), ptr %i.r, align 16, !tbaa !19
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store <4 x i32> splat (i32 268435455), ptr %i.s, align 16, !tbaa !19
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store <4 x i32> splat (i32 268435455), ptr %i.t, align 16, !tbaa !19
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store i32 268435455, ptr %i.u, align 16, !tbaa !19
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 148
  store i32 268435455, ptr %i.v, align 4, !tbaa !19
  %i.w = call fastcc i32 @BrotliFindAllStaticDictionaryMatchesFor(ptr noundef %.034, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %i.a)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.h
  %indvars.iv = phi i64 [ 0, %bb.e ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.z = load i32, ptr %i.y, align 4, !tbaa !19   ; 3 uses
  %.not38 = icmp eq i32 %i.z, 268435455
  br i1 %.not38, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = and i32 %i.z, 31
  %i.ab = load ptr, ptr %0, align 8, !tbaa !20
  %i.ac = zext nneg i32 %i.aa to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !21
  %i.af = zext nneg i8 %i.ae to i32
  %i.ag = shl nuw i32 1, %i.af
  %i.ah = and i32 %i.ag, 134217726
  %i.ai = load i32, ptr %i.x, align 8, !tbaa !29
  %i.aj = shl i32 %i.ai, 5
  %i.ak = mul i32 %i.aj, %i.ah
  %i.al = add i32 %i.ak, %i.z
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !19
  %i.ao = call i32 @llvm.umin.i32(i32 %i.an, i32 %i.al)
  store i32 %i.ao, ptr %i.am, align 4, !tbaa !19
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 38
  br i1 %exitcond.not, label %bb.i, label %bb.f, !llvm.loop !23

bb.i:                                             ; preds = %bb.h
  %i.ap = or i32 %i.w, %i.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.b, %bb.a
  %.0 = phi i32 [ %i.ap, %bb.i ], [ %i.b, %bb.b ], [ %i.b, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @BrotliFindAllStaticDictionaryMatchesFor(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef %4) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 2 uses
  %.0.copyload.i = load i32, ptr %1, align 1
  %i.c = mul i32 %.0.copyload.i, 506832829
  %i.d = lshr i32 %i.c, 17
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.e
  %i.g = load i16, ptr %i.f, align 2, !tbaa !41   ; 2 uses
  %.not = icmp eq i16 %i.g, 0
  br i1 %.not, label %._crit_edge1220, label %.lr.ph1219

.lr.ph1219:                                       ; preds = %bb.a
  %i.h = zext i16 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !42
  %i.k = load ptr, ptr %0, align 8, !tbaa !20     ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 168 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph1219, %.critedge
  %.07581217 = phi i32 [ 0, %.lr.ph1219 ], [ %.6, %.critedge ] ; 7 uses
  %.07621216 = phi i64 [ %i.h, %.lr.ph1219 ], [ %i.p, %.critedge ] ; 2 uses
  %i.p = add i64 %.07621216, 1
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.07621216 ; 3 uses
  %.sroa.0580.0.copyload = load i8, ptr %i.q, align 2, !tbaa !21 ; 2 uses
  %.sroa.7583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %.sroa.7583.0.copyload = load i8, ptr %.sroa.7583.0..sroa_idx, align 1, !tbaa !21 ; 3 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %.sroa.9.0.copyload = load i16, ptr %.sroa.9.0..sroa_idx, align 2, !tbaa !41 ; 2 uses
  %i.r = and i8 %.sroa.0580.0.copyload, 31        ; 4 uses
  %i.s = zext nneg i8 %i.r to i64                 ; 103 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !21
  %i.v = zext nneg i8 %i.u to i64                 ; 59 uses
  %i.w = shl nuw i64 1, %i.v
  %i.x = zext i16 %.sroa.9.0.copyload to i64      ; 61 uses
  %i.y = icmp slt i8 %.sroa.0580.0.copyload, 0
  %i.z = icmp eq i8 %.sroa.7583.0.copyload, 0
  br i1 %i.z, label %bb.c, label %bb.dr

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.s
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !19
  %i.ac = zext i32 %i.ab to i64
  %i.ad = mul nuw nsw i64 %i.x, %i.s
  %i.ae = load ptr, ptr %i.m, align 8, !tbaa !44
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ad
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ac ; 4 uses
  %i.ah = tail call i64 @llvm.umin.i64(i64 range(i64 0, 32) %i.s, i64 %3) ; 3 uses
  %i.ai = icmp samesign ugt i64 %i.ah, 7
  br i1 %i.ai, label %.lr.ph1200, label %.preheader1138

.preheader1138:                                   ; preds = %bb.e, %bb.c
  %.026.i995.lcssa = phi ptr [ %i.ag, %bb.c ], [ %i.aq, %bb.e ] ; 3 uses
  %.024.i996.lcssa = phi ptr [ %1, %bb.c ], [ %5, %bb.e ]
  %.022.i997.lcssa = phi i64 [ %i.ah, %bb.c ], [ %i.ar, %bb.e ] ; 3 uses
  %.not.i10021204 = icmp eq i64 %.022.i997.lcssa, 0
  br i1 %.not.i10021204, label %.critedge.i1003, label %.lr.ph1208.preheader

.lr.ph1208.preheader:                             ; preds = %.preheader1138
  %scevgep1368 = getelementptr i8, ptr %.026.i995.lcssa, i64 %.022.i997.lcssa
  br label %.lr.ph1208

.lr.ph1200:                                       ; preds = %bb.c, %bb.e
  %.022.i9971199 = phi i64 [ %i.ar, %bb.e ], [ %i.ah, %bb.c ]
  %.024.i9961198 = phi ptr [ %5, %bb.e ], [ %1, %bb.c ] ; 2 uses
  %.026.i9951197 = phi ptr [ %i.aq, %bb.e ], [ %i.ag, %bb.c ] ; 3 uses
  %.0.copyload.i1010 = load i64, ptr %.024.i9961198, align 1 ; 2 uses
  %.0.copyload.i1009 = load i64, ptr %.026.i9951197, align 1 ; 2 uses
  %.not30.i1005 = icmp eq i64 %.0.copyload.i1010, %.0.copyload.i1009
  br i1 %.not30.i1005, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph1200
  %i.aj = xor i64 %.0.copyload.i1009, %.0.copyload.i1010
  %i.ak = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aj, i1 true)
  %i.al = ptrtoint ptr %.026.i9951197 to i64
  %i.am = ptrtoint ptr %i.ag to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = lshr i64 %i.ak, 3
  %i.ap = add i64 %i.an, %i.ao
  br label %FindMatchLengthWithLimit.exit1008

bb.e:                                             ; preds = %.lr.ph1200
  %5 = getelementptr inbounds nuw i8, ptr %.024.i9961198, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.026.i9951197, i64 8 ; 2 uses
  %i.ar = add nsw i64 %.022.i9971199, -8          ; 3 uses
  %i.as = icmp ugt i64 %i.ar, 7
  br i1 %i.as, label %.lr.ph1200, label %.preheader1138, !llvm.loop !30

.lr.ph1208:                                       ; preds = %.lr.ph1208.preheader, %bb.f
  %.123.i10011207 = phi i64 [ %i.aw, %bb.f ], [ %.022.i997.lcssa, %.lr.ph1208.preheader ]
  %.125.i10001206 = phi ptr [ %i.ax, %bb.f ], [ %.024.i996.lcssa, %.lr.ph1208.preheader ] ; 2 uses
  %.228.i9991205 = phi ptr [ %i.ay, %bb.f ], [ %.026.i995.lcssa, %.lr.ph1208.preheader ] ; 3 uses
  %i.at = load i8, ptr %.228.i9991205, align 1, !tbaa !21
  %i.au = load i8, ptr %.125.i10001206, align 1, !tbaa !21
  %i.av = icmp eq i8 %i.at, %i.au
  br i1 %i.av, label %bb.f, label %.critedge.i1003

bb.f:                                             ; preds = %.lr.ph1208
  %i.aw = add nsw i64 %.123.i10011207, -1         ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.125.i10001206, i64 1
  %i.ay = getelementptr inbounds nuw i8, ptr %.228.i9991205, i64 1
  %.not.i1002 = icmp eq i64 %i.aw, 0
  br i1 %.not.i1002, label %.critedge.i1003, label %.lr.ph1208, !llvm.loop !31

.critedge.i1003:                                  ; preds = %bb.f, %.lr.ph1208, %.preheader1138
  %.228.i999.lcssa = phi ptr [ %.026.i995.lcssa, %.preheader1138 ], [ %.228.i9991205, %.lr.ph1208 ], [ %scevgep1368, %bb.f ]
  %i.az = ptrtoint ptr %.228.i999.lcssa to i64
  %i.ba = ptrtoint ptr %i.ag to i64
  %i.bb = sub i64 %i.az, %i.ba
  br label %FindMatchLengthWithLimit.exit1008

FindMatchLengthWithLimit.exit1008:                ; preds = %bb.d, %.critedge.i1003
  %.2.i1004 = phi i64 [ %i.ap, %bb.d ], [ %i.bb, %.critedge.i1003 ] ; 4 uses
  %i.bc = icmp eq i64 %.2.i1004, %i.s
  br i1 %i.bc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %FindMatchLengthWithLimit.exit1008
  %i.bd = shl nuw nsw i64 %i.x, 5
  %i.be = or disjoint i64 %i.bd, %i.s
  %i.bf = trunc nuw nsw i64 %i.be to i32
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.s ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !19
  %i.bi = tail call i32 @llvm.umin.i32(i32 %i.bh, i32 %i.bf)
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !19
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %FindMatchLengthWithLimit.exit1008
  %.1759 = phi i32 [ 1, %bb.g ], [ %.07581217, %FindMatchLengthWithLimit.exit1008 ]
  %i.bj = add nsw i64 %i.s, -1                    ; 3 uses
  %.not820 = icmp ult i64 %.2.i1004, %i.bj
  br i1 %.not820, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bk = shl i64 12, %i.v
  %i.bl = add nuw i64 %i.bk, %i.x
  %i.bm = shl i64 %i.bl, 5
  %i.bn = or disjoint i64 %i.bm, %i.s
  %i.bo = trunc i64 %i.bn to i32
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.bj ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !19
  %i.br = tail call i32 @llvm.umin.i32(i32 %i.bq, i32 %i.bo)
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !19
  %i.bs = add nuw nsw i64 %i.s, 2                 ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %3
  br i1 %i.bt, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 %i.bj
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !21
  %i.bw = icmp eq i8 %i.bv, 105
  br i1 %i.bw, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 %i.s ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !21
  %i.bz = icmp eq i8 %i.by, 110
  br i1 %i.bz, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 1
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !21
  %i.cc = icmp eq i8 %i.cb, 103
  br i1 %i.cc, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 %i.bs
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !21
  %i.cf = icmp eq i8 %i.ce, 32
  br i1 %i.cf, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cg = shl i64 49, %i.v
  %i.ch = add nuw i64 %i.cg, %i.x
  %i.ci = shl i64 %i.ch, 5
  %i.cj = or disjoint i64 %i.ci, %i.s
  %i.ck = trunc i64 %i.cj to i32
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.s
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 12 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !19
  %i.co = tail call i32 @llvm.umin.i32(i32 %i.cn, i32 %i.ck)
  store i32 %i.co, ptr %i.cm, align 4, !tbaa !19
  br label %bb.o

bb.o:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.h
  %.2760 = phi i32 [ %.1759, %bb.h ], [ 1, %bb.n ], [ 1, %bb.m ], [ 1, %bb.l ], [ 1, %bb.k ], [ 1, %bb.j ], [ 1, %bb.i ]
  %i.cp = icmp samesign ugt i8 %i.r, 9
  %i.cq = add nsw i64 %i.s, -9
  %i.cr = tail call i64 @llvm.umax.i64(i64 %2, i64 range(i64 1, 23) %i.cq)
  %.0764 = select i1 %i.cp, i64 %i.cr, i64 %2     ; 7 uses
  %i.cs = add nsw i64 %i.s, -2
  %i.ct = tail call i64 @llvm.umin.i64(i64 %.2.i1004, i64 %i.cs) ; 3 uses
  %.not8211212 = icmp ugt i64 %.0764, %i.ct
  br i1 %.not8211212, label %._crit_edge, label %.lr.ph1214

.lr.ph1214:                                       ; preds = %bb.o
  %i.cu = load i64, ptr %i.o, align 8, !tbaa !45  ; 2 uses
  %i.cv = add i64 %.0764, 1
  %i.cw = add i64 %i.ct, 1
  %i.cx = tail call i64 @llvm.umax.i64(i64 %i.cv, i64 %i.cw)
  %i.cy = sub i64 %i.cx, %.0764                   ; 3 uses
  %min.iters.check = icmp ult i64 %i.cy, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph1214
  %n.vec = and i64 %i.cy, -4                      ; 3 uses
  %i.cz = add i64 %.0764, %n.vec
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.cu, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1503 = insertelement <4 x i64> poison, i64 %i.s, i64 0
  %broadcast.splat1504 = shufflevector <4 x i64> %broadcast.splatinsert1503, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1505 = insertelement <4 x i64> poison, i64 %i.v, i64 0
  %broadcast.splat1506 = shufflevector <4 x i64> %broadcast.splatinsert1505, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1507 = insertelement <4 x i64> poison, i64 %i.x, i64 0
  %broadcast.splat1508 = shufflevector <4 x i64> %broadcast.splatinsert1507, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1509 = insertelement <4 x i64> poison, i64 %.0764, i64 0
  %broadcast.splat1510 = shufflevector <4 x i64> %broadcast.splatinsert1509, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i64> %broadcast.splat1510, <i64 0, i64 1, i64 2, i64 3>
  %i.da = getelementptr [4 x i8], ptr %4, i64 %.0764
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.db = sub <4 x i64> %broadcast.splat1504, %vec.ind ; 2 uses
  %i.dc = shl <4 x i64> %i.db, splat (i64 2)
  %i.dd = mul <4 x i64> %i.db, splat (i64 6)
  %i.de = lshr <4 x i64> %broadcast.splat, %i.dd
  %i.df = and <4 x i64> %i.de, splat (i64 63)
  %i.dg = add <4 x i64> %i.df, %i.dc
  %i.dh = shl <4 x i64> %i.dg, %broadcast.splat1506
  %i.di = add <4 x i64> %i.dh, %broadcast.splat1508
  %i.dj = shl <4 x i64> %i.di, splat (i64 5)
  %i.dk = or disjoint <4 x i64> %i.dj, %broadcast.splat1504
  %i.dl = trunc <4 x i64> %i.dk to <4 x i32>
  %i.dm = getelementptr [4 x i8], ptr %i.da, i64 %index ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.dm, align 4, !tbaa !19
  %i.dn = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %wide.load, <4 x i32> %i.dl)
  store <4 x i32> %i.dn, ptr %i.dm, align 4, !tbaa !19
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i64> %vec.ind, splat (i64 4)
  %i.do = icmp eq i64 %index.next, %n.vec
  br i1 %i.do, label %middle.block, label %vector.body, !llvm.loop !32

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cy, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph1214, %middle.block
  %.07631213.ph = phi i64 [ %.0764, %.lr.ph1214 ], [ %i.cz, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.07631213 = phi i64 [ %i.ed, %scalar.ph ], [ %.07631213.ph, %scalar.ph.preheader ] ; 3 uses
  %i.dp = sub i64 %i.s, %.07631213                ; 2 uses
  %i.dq = shl i64 %i.dp, 2
  %i.dr = mul i64 %i.dp, 6
  %i.ds = lshr i64 %i.cu, %i.dr
  %i.dt = and i64 %i.ds, 63
  %i.du = add i64 %i.dt, %i.dq
  %i.dv = shl i64 %i.du, %i.v
  %i.dw = add i64 %i.dv, %i.x
  %i.dx = shl i64 %i.dw, 5
  %i.dy = or disjoint i64 %i.dx, %i.s
  %i.dz = trunc i64 %i.dy to i32
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07631213 ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !19
  %i.ec = tail call i32 @llvm.umin.i32(i32 %i.eb, i32 %i.dz)
  store i32 %i.ec, ptr %i.ea, align 4, !tbaa !19
  %i.ed = add i64 %.07631213, 1                   ; 2 uses
  %.not821 = icmp ugt i64 %i.ed, %i.ct
  br i1 %.not821, label %._crit_edge, label %scalar.ph, !llvm.loop !33

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.o
  %.3761.lcssa = phi i32 [ %.2760, %bb.o ], [ 1, %middle.block ], [ 1, %scalar.ph ] ; 107 uses
  %i.ee = icmp ult i64 %.2.i1004, %i.s
  br i1 %i.ee, label %.critedge, label %bb.p, !llvm.loop !34

bb.p:                                             ; preds = %._crit_edge
  %i.ef = add nuw nsw i64 %i.s, 6                 ; 5 uses
  %.not822 = icmp ult i64 %i.ef, %3
  br i1 %.not822, label %bb.q, label %.critedge, !llvm.loop !34

bb.q:                                             ; preds = %bb.p
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 %i.s ; 68 uses
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !21
  switch i8 %i.eh, label %.critedge [
    i8 32, label %bb.r
    i8 34, label %bb.bo
    i8 46, label %bb.bq
    i8 44, label %bb.bz
    i8 10, label %bb.cb
    i8 93, label %bb.cd
    i8 39, label %bb.ce
    i8 58, label %bb.cf
    i8 40, label %bb.cg
    i8 61, label %bb.ch
    i8 97, label %bb.ck
    i8 101, label %bb.cn
    i8 102, label %bb.cv
    i8 105, label %bb.cz
    i8 108, label %bb.dg
    i8 111, label %bb.dn
  ]

bb.r:                                             ; preds = %bb.q
  %i.ei = add nuw i64 %i.w, %i.x
  %i.ej = shl i64 %i.ei, 5
  %i.ek = or disjoint i64 %i.ej, %i.s
  %i.el = trunc i64 %i.ek to i32
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.s ; 14 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 4 ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !19
  %i.ep = tail call i32 @llvm.umin.i32(i32 %i.eo, i32 %i.el)
  store i32 %i.ep, ptr %i.en, align 4, !tbaa !19
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eg, i64 1
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !21
  switch i8 %i.er, label %.critedge [
    i8 97, label %bb.s
    i8 98, label %bb.ab
    i8 105, label %bb.ae
    i8 102, label %bb.aj
    i8 111, label %bb.ar
    i8 110, label %bb.aw
    i8 116, label %bb.ba
    i8 119, label %bb.bj
  ]

bb.s:                                             ; preds = %bb.r
  %i.es = getelementptr inbounds nuw i8, ptr %i.eg, i64 2
  %i.et = load i8, ptr %i.es, align 1, !tbaa !21
  switch i8 %i.et, label %.critedge [
    i8 32, label %bb.t
    i8 115, label %bb.u
    i8 116, label %bb.w
    i8 110, label %bb.y
  ]

bb.t:                                             ; preds = %bb.s
  %i.eu = shl i64 28, %i.v
  %i.ev = add nuw i64 %i.eu, %i.x
  %i.ew = shl i64 %i.ev, 5
  %i.ex = or disjoint i64 %i.ew, %i.s
  %i.ey = trunc i64 %i.ex to i32
  %i.ez = getelementptr inbounds nuw i8, ptr %i.em, i64 12 ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !19
  %i.fb = tail call i32 @llvm.umin.i32(i32 %i.fa, i32 %i.ey)
  store i32 %i.fb, ptr %i.ez, align 4, !tbaa !19
  br label %.critedge

bb.u:                                             ; preds = %bb.s
  %i.fc = getelementptr inbounds nuw i8, ptr %i.eg, i64 3
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !21
  %i.fe = icmp eq i8 %i.fd, 32
  br i1 %i.fe, label %bb.v, label %.critedge

bb.v:                                             ; preds = %bb.u
  %i.ff = shl i64 46, %i.v
  %i.fg = add nuw i64 %i.ff, %i.x
  %i.fh = shl i64 %i.fg, 5
  %i.fi = or disjoint i64 %i.fh, %i.s
  %i.fj = trunc i64 %i.fi to i32
  %i.fk = getelementptr inbounds nuw i8, ptr %i.em, i64 16 ; 2 uses
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !19
  %i.fm = tail call i32 @llvm.umin.i32(i32 %i.fl, i32 %i.fj)
  store i32 %i.fm, ptr %i.fk, align 4, !tbaa !19
  br label %.critedge

bb.w:                                             ; preds = %bb.s
  %i.fn = getelementptr inbounds nuw i8, ptr %i.eg, i64 3
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !21
  %i.fp = icmp eq i8 %i.fo, 32
  br i1 %i.fp, label %bb.x, label %.critedge

bb.x:                                             ; preds = %bb.w
  %i.fq = shl i64 60, %i.v
  %i.fr = add nuw i64 %i.fq, %i.x
  %i.fs = shl i64 %i.fr, 5
  %i.ft = or disjoint i64 %i.fs, %i.s
  %i.fu = trunc i64 %i.ft to i32
  %i.fv = getelementptr inbounds nuw i8, ptr %i.em, i64 16 ; 2 uses
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !19
  %i.fx = tail call i32 @llvm.umin.i32(i32 %i.fw, i32 %i.fu)
  store i32 %i.fx, ptr %i.fv, align 4, !tbaa !19
  br label %.critedge

bb.y:                                             ; preds = %bb.s
  %i.fy = getelementptr inbounds nuw i8, ptr %i.eg, i64 3
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !21
  %i.ga = icmp eq i8 %i.fz, 100
  br i1 %i.ga, label %bb.z, label %.critedge

bb.z:                                             ; preds = %bb.y
  %i.gb = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !21
  %i.gd = icmp eq i8 %i.gc, 32
  br i1 %i.gd, label %bb.aa, label %.critedge

bb.aa:                                            ; preds = %bb.z
  %i.ge = shl i64 10, %i.v
  %i.gf = add nuw i64 %i.ge, %i.x
  %i.gg = shl i64 %i.gf, 5
  %i.gh = or disjoint i64 %i.gg, %i.s
  %i.gi = trunc i64 %i.gh to i32
  %i.gj = getelementptr inbounds nuw i8, ptr %i.em, i64 20 ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !19
  %i.gl = tail call i32 @llvm.umin.i32(i32 %i.gk, i32 %i.gi)
  store i32 %i.gl, ptr %i.gj, align 4, !tbaa !19
  br label %.critedge

bb.ab:                                            ; preds = %bb.r
  %i.gm = getelementptr inbounds nuw i8, ptr %i.eg, i64 2
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !21
  %i.go = icmp eq i8 %i.gn, 121
  br i1 %i.go, label %bb.ac, label %.critedge

bb.ac:                                            ; preds = %bb.ab
  %i.gp = getelementptr inbounds nuw i8, ptr %i.eg, i64 3
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !21
  %i.gr = icmp eq i8 %i.gq, 32
  br i1 %i.gr, label %bb.ad, label %.critedge

bb.ad:                                            ; preds = %bb.ac
  %i.gs = shl i64 38, %i.v
  %i.gt = add nuw i64 %i.gs, %i.x
  %i.gu = shl i64 %i.gt, 5
  %i.gv = or disjoint i64 %i.gu, %i.s
  %i.gw = trunc i64 %i.gv to i32
  %i.gx = getelementptr inbounds nuw i8, ptr %i.em, i64 16 ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !19
  %i.gz = tail call i32 @llvm.umin.i32(i32 %i.gy, i32 %i.gw)
  store i32 %i.gz, ptr %i.gx, align 4, !tbaa !19
  br label %.critedge

bb.ae:                                            ; preds = %bb.r
  %i.ha = getelementptr inbounds nuw i8, ptr %i.eg, i64 2
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !21
  switch i8 %i.hb, label %.critedge [
    i8 110, label %bb.af
    i8 115, label %bb.ah
  ]

bb.af:                                            ; preds = %bb.ae
  %i.hc = getelementptr inbounds nuw i8, ptr %i.eg, i64 3
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !21
  %i.he = icmp eq i8 %i.hd, 32
  br i1 %i.he, label %bb.ag, label %.critedge

bb.ag:                                            ; preds = %bb.af
  %i.hf = shl i64 16, %i.v
  %i.hg = add nuw i64 %i.hf, %i.x
  %i.hh = shl i64 %i.hg, 5
  %i.hi = or disjoint i64 %i.hh, %i.s
  %i.hj = trunc i64 %i.hi to i32
  %i.hk = getelementptr inbounds nuw i8, ptr %i.em, i64 16 ; 2 uses
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !19
  %i.hm = tail call i32 @llvm.umin.i32(i32 %i.hl, i32 %i.hj)
  store i32 %i.hm, ptr %i.hk, align 4, !tbaa !19
  br label %.critedge

bb.ah:                                            ; preds = %bb.ae
  %i.hn = getelementptr inbounds nuw i8, ptr %i.eg, i64 3
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !21
  %i.hp = icmp eq i8 %i.ho, 32
  br i1 %i.hp, label %bb.ai, label %.critedge

bb.ai:                                            ; preds = %bb.ah
  %i.hq = shl i64 47, %i.v
  %i.hr = add nuw i64 %i.hq, %i.x
  %i.hs = shl i64 %i.hr, 5
  %i.ht = or disjoint i64 %i.hs, %i.s
  %i.hu = trunc i64 %i.ht to i32
  %i.hv = getelementptr inbounds nuw i8, ptr %i.em, i64 16 ; 2 uses
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !19
  %i.hx = tail call i32 @llvm.umin.i32(i32 %i.hw, i32 %i.hu)
  store i32 %i.hx, ptr %i.hv, align 4, !tbaa !19
  br label %.critedge

bb.aj:                                            ; preds = %bb.r
  %i.hy = getelementptr inbounds nuw i8, ptr %i.eg, i64 2
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !21
  switch i8 %i.hz, label %.critedge [
end_hunk_0
begin_hunk_1_@BrotliFindAllStaticDictionaryMatchesFor:bb.a
  %i.wu = add nuw i64 %i.wt, %i.x
  %i.wv = shl i64 %i.wu, 5
  %i.ww = or disjoint i64 %i.wv, %i.s
  %i.wx = trunc i64 %i.ww to i32
  %i.wy = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.s
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 16 ; 2 uses
  %i.xa = load i32, ptr %i.wz, align 4, !tbaa !19
  %i.xb = tail call i32 @llvm.umin.i32(i32 %i.xa, i32 %i.wx)
  store i32 %i.xb, ptr %i.wz, align 4, !tbaa !19
  br label %.critedge

bb.dd:                                            ; preds = %bb.cz
  %i.xc = getelementptr inbounds nuw i8, ptr %i.eg, i64 2
  %i.xd = load i8, ptr %i.xc, align 1, !tbaa !21
  %i.xe = icmp eq i8 %i.xd, 101
  br i1 %i.xe, label %bb.de, label %.critedge

bb.de:                                            ; preds = %bb.dd
  %i.xf = getelementptr inbounds nuw i8, ptr %i.eg, i64 3
  %i.xg = load i8, ptr %i.xf, align 1, !tbaa !21
  %i.xh = icmp eq i8 %i.xg, 32
  br i1 %i.xh, label %bb.df, label %.critedge

bb.df:                                            ; preds = %bb.de
  %i.xi = shl i64 100, %i.v
  %i.xj = add nuw i64 %i.xi, %i.x
  %i.xk = shl i64 %i.xj, 5
  %i.xl = or disjoint i64 %i.xk, %i.s
  %i.xm = trunc i64 %i.xl to i32
  %i.xn = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.s
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 16 ; 2 uses
  %i.xp = load i32, ptr %i.xo, align 4, !tbaa !19
  %i.xq = tail call i32 @llvm.umin.i32(i32 %i.xp, i32 %i.xm)
  store i32 %i.xq, ptr %i.xo, align 4, !tbaa !19
  br label %.critedge

bb.dg:                                            ; preds = %bb.q
  %i.xr = getelementptr inbounds nuw i8, ptr %i.eg, i64 1
  %i.xs = load i8, ptr %i.xr, align 1, !tbaa !21
  switch i8 %i.xs, label %.critedge [
    i8 101, label %bb.dh
    i8 121, label %bb.dl
  ]

bb.dh:                                            ; preds = %bb.dg
  %i.xt = getelementptr inbounds nuw i8, ptr %i.eg, i64 2
  %i.xu = load i8, ptr %i.xt, align 1, !tbaa !21
  %i.xv = icmp eq i8 %i.xu, 115
  br i1 %i.xv, label %bb.di, label %.critedge

bb.di:                                            ; preds = %bb.dh
  %i.xw = getelementptr inbounds nuw i8, ptr %i.eg, i64 3
  %i.xx = load i8, ptr %i.xw, align 1, !tbaa !21
  %i.xy = icmp eq i8 %i.xx, 115
  br i1 %i.xy, label %bb.dj, label %.critedge

bb.dj:                                            ; preds = %bb.di
  %i.xz = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  %i.ya = load i8, ptr %i.xz, align 1, !tbaa !21
  %i.yb = icmp eq i8 %i.ya, 32
  br i1 %i.yb, label %bb.dk, label %.critedge

bb.dk:                                            ; preds = %bb.dj
  %i.yc = shl i64 93, %i.v
  %i.yd = add nuw i64 %i.yc, %i.x
  %i.ye = shl i64 %i.yd, 5
  %i.yf = or disjoint i64 %i.ye, %i.s
  %i.yg = trunc i64 %i.yf to i32
  %i.yh = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.s
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yh, i64 20 ; 2 uses
  %i.yj = load i32, ptr %i.yi, align 4, !tbaa !19
  %i.yk = tail call i32 @llvm.umin.i32(i32 %i.yj, i32 %i.yg)
  store i32 %i.yk, ptr %i.yi, align 4, !tbaa !19
  br label %.critedge

bb.dl:                                            ; preds = %bb.dg
  %i.yl = getelementptr inbounds nuw i8, ptr %i.eg, i64 2
  %i.ym = load i8, ptr %i.yl, align 1, !tbaa !21
  %i.yn = icmp eq i8 %i.ym, 32
  br i1 %i.yn, label %bb.dm, label %.critedge

bb.dm:                                            ; preds = %bb.dl
  %i.yo = shl i64 61, %i.v
  %i.yp = add nuw i64 %i.yo, %i.x
  %i.yq = shl i64 %i.yp, 5
  %i.yr = or disjoint i64 %i.yq, %i.s
  %i.ys = trunc i64 %i.yr to i32
  %i.yt = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.s
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 12 ; 2 uses
  %i.yv = load i32, ptr %i.yu, align 4, !tbaa !19
  %i.yw = tail call i32 @llvm.umin.i32(i32 %i.yv, i32 %i.ys)
  store i32 %i.yw, ptr %i.yu, align 4, !tbaa !19
  br label %.critedge

bb.dn:                                            ; preds = %bb.q
  %i.yx = getelementptr inbounds nuw i8, ptr %i.eg, i64 1
  %i.yy = load i8, ptr %i.yx, align 1, !tbaa !21
  %i.yz = icmp eq i8 %i.yy, 117
  br i1 %i.yz, label %bb.do, label %.critedge

bb.do:                                            ; preds = %bb.dn
  %i.za = getelementptr inbounds nuw i8, ptr %i.eg, i64 2
  %i.zb = load i8, ptr %i.za, align 1, !tbaa !21
  %i.zc = icmp eq i8 %i.zb, 115
  br i1 %i.zc, label %bb.dp, label %.critedge

bb.dp:                                            ; preds = %bb.do
  %i.zd = getelementptr inbounds nuw i8, ptr %i.eg, i64 3
  %i.ze = load i8, ptr %i.zd, align 1, !tbaa !21
  %i.zf = icmp eq i8 %i.ze, 32
  br i1 %i.zf, label %bb.dq, label %.critedge

bb.dq:                                            ; preds = %bb.dp
  %i.zg = shl i64 106, %i.v
  %i.zh = add nuw i64 %i.zg, %i.x
  %i.zi = shl i64 %i.zh, 5
  %i.zj = or disjoint i64 %i.zi, %i.s
  %i.zk = trunc i64 %i.zj to i32
  %i.zl = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.s
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 16 ; 2 uses
  %i.zn = load i32, ptr %i.zm, align 4, !tbaa !19
  %i.zo = tail call i32 @llvm.umin.i32(i32 %i.zn, i32 %i.zk)
  store i32 %i.zo, ptr %i.zm, align 4, !tbaa !19
  br label %.critedge

bb.dr:                                            ; preds = %bb.b
  %.not817 = icmp eq i8 %.sroa.7583.0.copyload, 10 ; 12 uses
  %.sroa.0580.0.insert.ext = zext nneg i8 %i.r to i32 ; 2 uses
  %i.zp = icmp ult i64 %3, %i.s
  br i1 %i.zp, label %.critedge, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %.sroa.9.0.insert.ext = zext i16 %.sroa.9.0.copyload to i32
  %i.zq = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.s
  %i.zr = load i32, ptr %i.zq, align 4, !tbaa !19
  %i.zs = zext i32 %i.zr to i64
  %narrow.i856 = mul nuw nsw i32 %.sroa.9.0.insert.ext, %.sroa.0580.0.insert.ext
  %i.zt = zext nneg i32 %narrow.i856 to i64
  %i.zu = load ptr, ptr %i.m, align 8, !tbaa !44
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zu, i64 %i.zs
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zv, i64 %i.zt ; 3 uses
  %cond = icmp eq i8 %.sroa.7583.0.copyload, 10
  br i1 %cond, label %bb.dt, label %.preheader1139

.preheader1139:                                   ; preds = %bb.ds
  %.not1318 = icmp eq i8 %i.r, 0
  br i1 %.not1318, label %IsMatch.exit863.thread1047, label %.lr.ph1196

bb.dt:                                            ; preds = %bb.ds
  %i.zx = load i8, ptr %i.zw, align 1, !tbaa !21  ; 2 uses
  %i.zy = add i8 %i.zx, -97
  %or.cond.i857 = icmp ult i8 %i.zy, 26
  br i1 %or.cond.i857, label %bb.du, label %.critedge

bb.du:                                            ; preds = %bb.dt
  %i.zz = load i8, ptr %1, align 1, !tbaa !21
  %i.aaa = xor i8 %i.zz, %i.zx
  %i.aab = icmp eq i8 %i.aaa, 32
  br i1 %i.aab, label %bb.dv, label %.critedge

bb.dv:                                            ; preds = %bb.du
  %i.aac = getelementptr inbounds nuw i8, ptr %i.zw, i64 1 ; 4 uses
  %i.aad = add nsw i32 %.sroa.0580.0.insert.ext, -1 ; 2 uses
  %i.aae = zext i32 %i.aad to i64                 ; 3 uses
  %i.aaf = icmp ugt i32 %i.aad, 7
  br i1 %i.aaf, label %.lr.ph, label %.preheader1142

.preheader1142:                                   ; preds = %bb.dx, %bb.dv
  %.026.i869.lcssa = phi ptr [ %i.aac, %bb.dv ], [ %i.aao, %bb.dx ] ; 3 uses
  %.024.i870.lcssa = phi ptr [ %i.n, %bb.dv ], [ %i.aan, %bb.dx ]
  %.022.i871.lcssa = phi i64 [ %i.aae, %bb.dv ], [ %i.aap, %bb.dx ] ; 3 uses
  %.not.i8761172 = icmp eq i64 %.022.i871.lcssa, 0
  br i1 %.not.i8761172, label %.critedge.i877, label %.lr.ph1176.preheader

.lr.ph1176.preheader:                             ; preds = %.preheader1142
  %scevgep = getelementptr i8, ptr %.026.i869.lcssa, i64 %.022.i871.lcssa
  br label %.lr.ph1176

.lr.ph:                                           ; preds = %bb.dv, %bb.dx
  %.022.i8711169 = phi i64 [ %i.aap, %bb.dx ], [ %i.aae, %bb.dv ]
  %.024.i8701168 = phi ptr [ %i.aan, %bb.dx ], [ %i.n, %bb.dv ] ; 2 uses
  %.026.i8691167 = phi ptr [ %i.aao, %bb.dx ], [ %i.aac, %bb.dv ] ; 3 uses
  %.0.copyload.i1028 = load i64, ptr %.024.i8701168, align 1 ; 2 uses
  %.0.copyload.i1027 = load i64, ptr %.026.i8691167, align 1 ; 2 uses
  %.not30.i879 = icmp eq i64 %.0.copyload.i1028, %.0.copyload.i1027
  br i1 %.not30.i879, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %.lr.ph
  %i.aag = xor i64 %.0.copyload.i1027, %.0.copyload.i1028
  %i.aah = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aag, i1 true)
  %i.aai = ptrtoint ptr %.026.i8691167 to i64
  %i.aaj = ptrtoint ptr %i.aac to i64
  %i.aak = sub i64 %i.aai, %i.aaj
  %i.aal = lshr i64 %i.aah, 3
  %i.aam = add i64 %i.aak, %i.aal
  br label %IsMatch.exit863

bb.dx:                                            ; preds = %.lr.ph
  %i.aan = getelementptr inbounds nuw i8, ptr %.024.i8701168, i64 8 ; 2 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %.026.i8691167, i64 8 ; 2 uses
  %i.aap = add i64 %.022.i8711169, -8             ; 3 uses
  %i.aaq = icmp ugt i64 %i.aap, 7
  br i1 %i.aaq, label %.lr.ph, label %.preheader1142, !llvm.loop !30

.lr.ph1176:                                       ; preds = %.lr.ph1176.preheader, %bb.dy
  %.123.i8751175 = phi i64 [ %i.aau, %bb.dy ], [ %.022.i871.lcssa, %.lr.ph1176.preheader ]
  %.125.i8741174 = phi ptr [ %i.aav, %bb.dy ], [ %.024.i870.lcssa, %.lr.ph1176.preheader ] ; 2 uses
  %.228.i8731173 = phi ptr [ %i.aaw, %bb.dy ], [ %.026.i869.lcssa, %.lr.ph1176.preheader ] ; 3 uses
  %i.aar = load i8, ptr %.228.i8731173, align 1, !tbaa !21
  %i.aas = load i8, ptr %.125.i8741174, align 1, !tbaa !21
  %i.aat = icmp eq i8 %i.aar, %i.aas
  br i1 %i.aat, label %bb.dy, label %.critedge.i877

bb.dy:                                            ; preds = %.lr.ph1176
  %i.aau = add nsw i64 %.123.i8751175, -1         ; 2 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %.125.i8741174, i64 1
  %i.aaw = getelementptr inbounds nuw i8, ptr %.228.i8731173, i64 1
  %.not.i876 = icmp eq i64 %i.aau, 0
  br i1 %.not.i876, label %.critedge.i877, label %.lr.ph1176, !llvm.loop !31

.critedge.i877:                                   ; preds = %bb.dy, %.lr.ph1176, %.preheader1142
  %.228.i873.lcssa = phi ptr [ %.026.i869.lcssa, %.preheader1142 ], [ %.228.i8731173, %.lr.ph1176 ], [ %scevgep, %bb.dy ]
  %i.aax = ptrtoint ptr %.228.i873.lcssa to i64
  %i.aay = ptrtoint ptr %i.aac to i64
  %i.aaz = sub i64 %i.aax, %i.aay
  br label %IsMatch.exit863

.lr.ph1196:                                       ; preds = %.preheader1139, %bb.eb
  %.0.i8591195 = phi i64 [ %i.abg, %bb.eb ], [ 0, %.preheader1139 ] ; 3 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %i.zw, i64 %.0.i8591195
  %i.abb = load i8, ptr %i.aba, align 1, !tbaa !21 ; 3 uses
  %i.abc = add i8 %i.abb, -97
  %or.cond40.i860 = icmp ult i8 %i.abc, 26
  %i.abd = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i8591195
  %i.abe = load i8, ptr %i.abd, align 1, !tbaa !21 ; 2 uses
  br i1 %or.cond40.i860, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %.lr.ph1196
  %i.abf = xor i8 %i.abe, %i.abb
  %.not39.i862 = icmp eq i8 %i.abf, 32
  br i1 %.not39.i862, label %bb.eb, label %.critedge

bb.ea:                                            ; preds = %.lr.ph1196
  %.not.i861 = icmp eq i8 %i.abb, %i.abe
  br i1 %.not.i861, label %bb.eb, label %.critedge

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  %i.abg = add nuw nsw i64 %.0.i8591195, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.abg, %i.s
  br i1 %exitcond.not, label %IsMatch.exit863.thread1047, label %.lr.ph1196, !llvm.loop !35

IsMatch.exit863:                                  ; preds = %.critedge.i877, %bb.dw
  %.2.i878 = phi i64 [ %i.aam, %bb.dw ], [ %i.aaz, %.critedge.i877 ]
  %i.abh = icmp eq i64 %.2.i878, %i.aae
  br i1 %i.abh, label %IsMatch.exit863.thread1047, label %.critedge, !llvm.loop !34

IsMatch.exit863.thread1047:                       ; preds = %bb.eb, %.preheader1139, %IsMatch.exit863
  %i.abi = select i1 %.not817, i64 9, i64 44
  %i.abj = shl i64 %i.abi, %i.v
  %i.abk = add i64 %i.abj, %i.x
  %i.abl = shl i64 %i.abk, 5
  %i.abm = or disjoint i64 %i.abl, %i.s
  %i.abn = trunc i64 %i.abm to i32
  %i.abo = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.s ; 7 uses
  %i.abp = load i32, ptr %i.abo, align 4, !tbaa !19
  %i.abq = tail call i32 @llvm.umin.i32(i32 %i.abp, i32 %i.abn)
  store i32 %i.abq, ptr %i.abo, align 4, !tbaa !19
  %i.abr = add nuw nsw i64 %i.s, 1                ; 7 uses
  %.not819 = icmp ult i64 %i.abr, %3
  br i1 %.not819, label %bb.ec, label %.critedge, !llvm.loop !34

bb.ec:                                            ; preds = %IsMatch.exit863.thread1047
  %i.abs = getelementptr inbounds nuw i8, ptr %1, i64 %i.s ; 5 uses
  %i.abt = load i8, ptr %i.abs, align 1, !tbaa !21
  switch i8 %i.abt, label %.critedge [
    i8 32, label %bb.ed
    i8 34, label %bb.ee
    i8 46, label %bb.eg
    i8 44, label %bb.ei
    i8 39, label %bb.ek
    i8 40, label %bb.el
    i8 61, label %bb.em
  ]

bb.ed:                                            ; preds = %bb.ec
  %i.abu = select i1 %.not817, i64 4, i64 68
  %i.abv = shl i64 %i.abu, %i.v
  %i.abw = add i64 %i.abv, %i.x
  %i.abx = shl i64 %i.abw, 5
  %i.aby = or disjoint i64 %i.abx, %i.s
  %i.abz = trunc i64 %i.aby to i32
  %i.aca = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.abr ; 2 uses
  %i.acb = load i32, ptr %i.aca, align 4, !tbaa !19
  %i.acc = tail call i32 @llvm.umin.i32(i32 %i.acb, i32 %i.abz)
  store i32 %i.acc, ptr %i.aca, align 4, !tbaa !19
  br label %.critedge

bb.ee:                                            ; preds = %bb.ec
  %i.acd = select i1 %.not817, i64 66, i64 87
  %i.ace = shl i64 %i.acd, %i.v
  %i.acf = add i64 %i.ace, %i.x
  %i.acg = shl i64 %i.acf, 5
  %i.ach = or disjoint i64 %i.acg, %i.s
  %i.aci = trunc i64 %i.ach to i32
  %i.acj = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.abr ; 2 uses
  %i.ack = load i32, ptr %i.acj, align 4, !tbaa !19
  %i.acl = tail call i32 @llvm.umin.i32(i32 %i.ack, i32 %i.aci)
  store i32 %i.acl, ptr %i.acj, align 4, !tbaa !19
  %i.acm = getelementptr inbounds nuw i8, ptr %i.abs, i64 1
  %i.acn = load i8, ptr %i.acm, align 1, !tbaa !21
  %i.aco = icmp eq i8 %i.acn, 62
  br i1 %i.aco, label %bb.ef, label %.critedge

bb.ef:                                            ; preds = %bb.ee
  %i.acp = select i1 %.not817, i64 69, i64 97
  %i.acq = shl i64 %i.acp, %i.v
  %i.acr = add i64 %i.acq, %i.x
  %i.acs = shl i64 %i.acr, 5
  %i.act = or disjoint i64 %i.acs, %i.s
  %i.acu = trunc i64 %i.act to i32
  %i.acv = getelementptr inbounds nuw i8, ptr %i.abo, i64 8 ; 2 uses
  %i.acw = load i32, ptr %i.acv, align 4, !tbaa !19
  %i.acx = tail call i32 @llvm.umin.i32(i32 %i.acw, i32 %i.acu)
  store i32 %i.acx, ptr %i.acv, align 4, !tbaa !19
  br label %.critedge

bb.eg:                                            ; preds = %bb.ec
  %i.acy = select i1 %.not817, i64 79, i64 101
  %i.acz = shl i64 %i.acy, %i.v
  %i.ada = add i64 %i.acz, %i.x
  %i.adb = shl i64 %i.ada, 5
  %i.adc = or disjoint i64 %i.adb, %i.s
  %i.add = trunc i64 %i.adc to i32
  %i.ade = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.abr ; 2 uses
  %i.adf = load i32, ptr %i.ade, align 4, !tbaa !19
  %i.adg = tail call i32 @llvm.umin.i32(i32 %i.adf, i32 %i.add)
  store i32 %i.adg, ptr %i.ade, align 4, !tbaa !19
  %i.adh = getelementptr inbounds nuw i8, ptr %i.abs, i64 1
  %i.adi = load i8, ptr %i.adh, align 1, !tbaa !21
  %i.adj = icmp eq i8 %i.adi, 32
  br i1 %i.adj, label %bb.eh, label %.critedge

bb.eh:                                            ; preds = %bb.eg
  %i.adk = select i1 %.not817, i64 88, i64 114
  %i.adl = shl i64 %i.adk, %i.v
  %i.adm = add i64 %i.adl, %i.x
  %i.adn = shl i64 %i.adm, 5
  %i.ado = or disjoint i64 %i.adn, %i.s
  %i.adp = trunc i64 %i.ado to i32
  %i.adq = getelementptr inbounds nuw i8, ptr %i.abo, i64 8 ; 2 uses
  %i.adr = load i32, ptr %i.adq, align 4, !tbaa !19
  %i.ads = tail call i32 @llvm.umin.i32(i32 %i.adr, i32 %i.adp)
  store i32 %i.ads, ptr %i.adq, align 4, !tbaa !19
  br label %.critedge

bb.ei:                                            ; preds = %bb.ec
  %i.adt = select i1 %.not817, i64 99, i64 112
  %i.adu = shl i64 %i.adt, %i.v
  %i.adv = add i64 %i.adu, %i.x
  %i.adw = shl i64 %i.adv, 5
  %i.adx = or disjoint i64 %i.adw, %i.s
  %i.ady = trunc i64 %i.adx to i32
  %i.adz = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.abr ; 2 uses
  %i.aea = load i32, ptr %i.adz, align 4, !tbaa !19
  %i.aeb = tail call i32 @llvm.umin.i32(i32 %i.aea, i32 %i.ady)
  store i32 %i.aeb, ptr %i.adz, align 4, !tbaa !19
  %i.aec = getelementptr inbounds nuw i8, ptr %i.abs, i64 1
  %i.aed = load i8, ptr %i.aec, align 1, !tbaa !21
  %i.aee = icmp eq i8 %i.aed, 32
  br i1 %i.aee, label %bb.ej, label %.critedge

bb.ej:                                            ; preds = %bb.ei
  %i.aef = select i1 %.not817, i64 58, i64 107
  %i.aeg = shl i64 %i.aef, %i.v
  %i.aeh = add i64 %i.aeg, %i.x
  %i.aei = shl i64 %i.aeh, 5
  %i.aej = or disjoint i64 %i.aei, %i.s
  %i.aek = trunc i64 %i.aej to i32
  %i.ael = getelementptr inbounds nuw i8, ptr %i.abo, i64 8 ; 2 uses
  %i.aem = load i32, ptr %i.ael, align 4, !tbaa !19
  %i.aen = tail call i32 @llvm.umin.i32(i32 %i.aem, i32 %i.aek)
  store i32 %i.aen, ptr %i.ael, align 4, !tbaa !19
  br label %.critedge

bb.ek:                                            ; preds = %bb.ec
  %i.aeo = select i1 %.not817, i64 74, i64 94
  %i.aep = shl i64 %i.aeo, %i.v
  %i.aeq = add i64 %i.aep, %i.x
  %i.aer = shl i64 %i.aeq, 5
  %i.aes = or disjoint i64 %i.aer, %i.s
  %i.aet = trunc i64 %i.aes to i32
  %i.aeu = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.abr ; 2 uses
  %i.aev = load i32, ptr %i.aeu, align 4, !tbaa !19
  %i.aew = tail call i32 @llvm.umin.i32(i32 %i.aev, i32 %i.aet)
  store i32 %i.aew, ptr %i.aeu, align 4, !tbaa !19
  br label %.critedge

bb.el:                                            ; preds = %bb.ec
  %i.aex = select i1 %.not817, i64 78, i64 113
  %i.aey = shl i64 %i.aex, %i.v
  %i.aez = add i64 %i.aey, %i.x
  %i.afa = shl i64 %i.aez, 5
  %i.afb = or disjoint i64 %i.afa, %i.s
  %i.afc = trunc i64 %i.afb to i32
  %i.afd = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.abr ; 2 uses
  %i.afe = load i32, ptr %i.afd, align 4, !tbaa !19
  %i.aff = tail call i32 @llvm.umin.i32(i32 %i.afe, i32 %i.afc)
  store i32 %i.aff, ptr %i.afd, align 4, !tbaa !19
  br label %.critedge

bb.em:                                            ; preds = %bb.ec
  %i.afg = getelementptr inbounds nuw i8, ptr %i.abs, i64 1
  %i.afh = load i8, ptr %i.afg, align 1, !tbaa !21
  switch i8 %i.afh, label %.critedge [
    i8 34, label %bb.en
    i8 39, label %bb.eo
  ]

bb.en:                                            ; preds = %bb.em
  %i.afi = select i1 %.not817, i64 104, i64 105
  %i.afj = shl i64 %i.afi, %i.v
  %i.afk = add i64 %i.afj, %i.x
  %i.afl = shl i64 %i.afk, 5
  %i.afm = or disjoint i64 %i.afl, %i.s
  %i.afn = trunc i64 %i.afm to i32
  %i.afo = getelementptr inbounds nuw i8, ptr %i.abo, i64 8 ; 2 uses
  %i.afp = load i32, ptr %i.afo, align 4, !tbaa !19
  %i.afq = tail call i32 @llvm.umin.i32(i32 %i.afp, i32 %i.afn)
  store i32 %i.afq, ptr %i.afo, align 4, !tbaa !19
  br label %.critedge

bb.eo:                                            ; preds = %bb.em
  %i.afr = select i1 %.not817, i64 108, i64 116
  %i.afs = shl i64 %i.afr, %i.v
  %i.aft = add i64 %i.afs, %i.x
  %i.afu = shl i64 %i.aft, 5
  %i.afv = or disjoint i64 %i.afu, %i.s
  %i.afw = trunc i64 %i.afv to i32
  %i.afx = getelementptr inbounds nuw i8, ptr %i.abo, i64 8 ; 2 uses
  %i.afy = load i32, ptr %i.afx, align 4, !tbaa !19
  %i.afz = tail call i32 @llvm.umin.i32(i32 %i.afy, i32 %i.afw)
  store i32 %i.afz, ptr %i.afx, align 4, !tbaa !19
  br label %.critedge

.critedge:                                        ; preds = %bb.dz, %bb.ea, %bb.du, %bb.dt, %bb.dr, %IsMatch.exit863, %IsMatch.exit863.thread1047, %bb.em, %bb.ec, %bb.ef, %bb.ee, %bb.ej, %bb.ei, %bb.el, %bb.en, %bb.eo, %bb.ek, %bb.eg, %bb.eh, %bb.ed, %._crit_edge, %bb.p, %bb.ad, %bb.ac, %bb.ab, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.ak, %bb.al, %bb.am, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bg, %bb.bf, %bb.be, %bb.bc, %bb.bd, %bb.bh, %bb.bi, %bb.at, %bb.as, %bb.au, %bb.av, %bb.ag, %bb.af, %bb.ah, %bb.ai, %bb.t, %bb.x, %bb.w, %bb.y, %bb.z, %bb.aa, %bb.u, %bb.v, %bb.br, %bb.bs, %bb.by, %bb.bx, %bb.bw, %bb.bu, %bb.bv, %bb.bq, %bb.cc, %bb.cb, %bb.ce, %bb.cg, %bb.cm, %bb.cl, %bb.ck, %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.dm, %bb.dl, %bb.dh, %bb.di, %bb.dj, %bb.dk, %bb.dn, %bb.do, %bb.dp, %bb.dq, %bb.dc, %bb.db, %bb.da, %bb.dd, %bb.de, %bb.df, %bb.cp, %bb.co, %bb.cu, %bb.ct, %bb.cs, %bb.cq, %bb.cr, %bb.ci, %bb.cj, %bb.cf, %bb.cd, %bb.bz, %bb.ca, %bb.bo, %bb.bp, %bb.s, %bb.ae, %bb.aj, %bb.ar, %bb.bb, %bb.ba, %bb.r, %bb.bt, %bb.ch, %bb.cn, %bb.cz, %bb.dg, %bb.q
  %.6 = phi i32 [ %.3761.lcssa, %._crit_edge ], [ %.3761.lcssa, %bb.q ], [ %.3761.lcssa, %bb.p ], [ %.3761.lcssa, %bb.ad ], [ %.3761.lcssa, %bb.ac ], [ %.3761.lcssa, %bb.ab ], [ %.3761.lcssa, %bb.aq ], [ %.3761.lcssa, %bb.ap ], [ %.3761.lcssa, %bb.ao ], [ %.3761.lcssa, %bb.an ], [ %.3761.lcssa, %bb.ak ], [ %.3761.lcssa, %bb.al ], [ %.3761.lcssa, %bb.am ], [ %.3761.lcssa, %bb.az ], [ %.3761.lcssa, %bb.ay ], [ %.3761.lcssa, %bb.ax ], [ %.3761.lcssa, %bb.aw ], [ %.3761.lcssa, %bb.bn ], [ %.3761.lcssa, %bb.bm ], [ %.3761.lcssa, %bb.bl ], [ %.3761.lcssa, %bb.bk ], [ %.3761.lcssa, %bb.bj ], [ %.3761.lcssa, %bb.bg ], [ %.3761.lcssa, %bb.bf ], [ %.3761.lcssa, %bb.be ], [ %.3761.lcssa, %bb.bc ], [ %.3761.lcssa, %bb.bd ], [ %.3761.lcssa, %bb.bh ], [ %.3761.lcssa, %bb.bi ], [ %.3761.lcssa, %bb.at ], [ %.3761.lcssa, %bb.as ], [ %.3761.lcssa, %bb.au ], [ %.3761.lcssa, %bb.av ], [ %.3761.lcssa, %bb.ag ], [ %.3761.lcssa, %bb.af ], [ %.3761.lcssa, %bb.ah ], [ %.3761.lcssa, %bb.ai ], [ %.3761.lcssa, %bb.t ], [ %.3761.lcssa, %bb.x ], [ %.3761.lcssa, %bb.w ], [ %.3761.lcssa, %bb.y ], [ %.3761.lcssa, %bb.z ], [ %.3761.lcssa, %bb.aa ], [ %.3761.lcssa, %bb.u ], [ %.3761.lcssa, %bb.v ], [ %.3761.lcssa, %bb.br ], [ %.3761.lcssa, %bb.bs ], [ %.3761.lcssa, %bb.by ], [ %.3761.lcssa, %bb.bx ], [ %.3761.lcssa, %bb.bw ], [ %.3761.lcssa, %bb.bu ], [ %.3761.lcssa, %bb.bv ], [ %.3761.lcssa, %bb.bq ], [ %.3761.lcssa, %bb.cc ], [ %.3761.lcssa, %bb.cb ], [ %.3761.lcssa, %bb.ce ], [ %.3761.lcssa, %bb.cg ], [ %.3761.lcssa, %bb.cm ], [ %.3761.lcssa, %bb.cl ], [ %.3761.lcssa, %bb.ck ], [ %.3761.lcssa, %bb.cy ], [ %.3761.lcssa, %bb.cx ], [ %.3761.lcssa, %bb.cw ], [ %.3761.lcssa, %bb.cv ], [ %.3761.lcssa, %bb.dm ], [ %.3761.lcssa, %bb.dl ], [ %.3761.lcssa, %bb.dh ], [ %.3761.lcssa, %bb.di ], [ %.3761.lcssa, %bb.dj ], [ %.3761.lcssa, %bb.dk ], [ %.3761.lcssa, %bb.dn ], [ %.3761.lcssa, %bb.do ], [ %.3761.lcssa, %bb.dp ], [ %.3761.lcssa, %bb.dq ], [ %.3761.lcssa, %bb.dc ], [ %.3761.lcssa, %bb.db ], [ %.3761.lcssa, %bb.da ], [ %.3761.lcssa, %bb.dd ], [ %.3761.lcssa, %bb.de ], [ %.3761.lcssa, %bb.df ], [ %.3761.lcssa, %bb.cp ], [ %.3761.lcssa, %bb.co ], [ %.3761.lcssa, %bb.cu ], [ %.3761.lcssa, %bb.ct ], [ %.3761.lcssa, %bb.cs ], [ %.3761.lcssa, %bb.cq ], [ %.3761.lcssa, %bb.cr ], [ %.3761.lcssa, %bb.ci ], [ %.3761.lcssa, %bb.cj ], [ %.3761.lcssa, %bb.cf ], [ %.3761.lcssa, %bb.cd ], [ %.3761.lcssa, %bb.bz ], [ %.3761.lcssa, %bb.ca ], [ %.3761.lcssa, %bb.bo ], [ %.3761.lcssa, %bb.bp ], [ %.3761.lcssa, %bb.s ], [ %.3761.lcssa, %bb.ae ], [ %.3761.lcssa, %bb.aj ], [ %.3761.lcssa, %bb.ar ], [ %.3761.lcssa, %bb.bb ], [ %.3761.lcssa, %bb.ba ], [ %.3761.lcssa, %bb.r ], [ %.3761.lcssa, %bb.bt ], [ %.3761.lcssa, %bb.ch ], [ %.3761.lcssa, %bb.cn ], [ %.3761.lcssa, %bb.cz ], [ %.3761.lcssa, %bb.dg ], [ %.07581217, %IsMatch.exit863 ], [ 1, %IsMatch.exit863.thread1047 ], [ 1, %bb.em ], [ 1, %bb.ec ], [ 1, %bb.ef ], [ 1, %bb.ee ], [ 1, %bb.ej ], [ 1, %bb.ei ], [ 1, %bb.el ], [ 1, %bb.en ], [ 1, %bb.eo ], [ 1, %bb.ek ], [ 1, %bb.eg ], [ 1, %bb.eh ], [ 1, %bb.ed ], [ %.07581217, %bb.dr ], [ %.07581217, %bb.dt ], [ %.07581217, %bb.du ], [ %.07581217, %bb.ea ], [ %.07581217, %bb.dz ] ; 2 uses
  br i1 %i.y, label %._crit_edge1220, label %bb.b

._crit_edge1220:                                  ; preds = %.critedge, %bb.a
  %.0758.lcssa = phi i32 [ 0, %bb.a ], [ %.6, %.critedge ] ; 4 uses
  %i.aga = icmp ugt i64 %3, 4
  br i1 %i.aga, label %bb.ep, label %.thread1099

bb.ep:                                            ; preds = %._crit_edge1220
  %i.agb = load i8, ptr %1, align 1, !tbaa !21    ; 2 uses
  switch i8 %i.agb, label %.loopexit [
    i8 32, label %bb.eq
    i8 46, label %bb.eq
  ]

bb.eq:                                            ; preds = %bb.ep, %bb.ep
  %i.agc = icmp eq i8 %i.agb, 32                  ; 5 uses
  %i.agd = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 5 uses
  %.0.copyload.i864 = load i32, ptr %i.agd, align 1
  %i.age = mul i32 %.0.copyload.i864, 506832829
  %i.agf = lshr i32 %i.age, 17
  %i.agg = zext nneg i32 %i.agf to i64
  %i.agh = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.agg
  %i.agi = load i16, ptr %i.agh, align 2, !tbaa !41 ; 2 uses
  %.not807 = icmp eq i16 %i.agi, 0
  br i1 %.not807, label %.loopexit, label %.lr.ph1274

.lr.ph1274:                                       ; preds = %bb.eq
  %i.agj = zext i16 %i.agi to i64
  %i.agk = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.agl = load ptr, ptr %i.agk, align 8, !tbaa !42
  %i.agm = load ptr, ptr %0, align 8, !tbaa !20   ; 3 uses
  %i.agn = add i64 %3, -1                         ; 2 uses
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agm, i64 32 ; 2 uses
  %i.agp = getelementptr inbounds nuw i8, ptr %i.agm, i64 168 ; 2 uses
  %i.agq = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.agr = select i1 %i.agc, i64 6, i64 32
  %i.ags = select i1 %i.agc, i64 89, i64 67
  %i.agt = select i1 %i.agc, i64 2, i64 77
  br label %bb.er

bb.er:                                            ; preds = %.lr.ph1274, %IsMatch.exit852.thread
  %.07561272 = phi i64 [ %i.agj, %.lr.ph1274 ], [ %i.agu, %IsMatch.exit852.thread ] ; 2 uses
  %.71271 = phi i32 [ %.0758.lcssa, %.lr.ph1274 ], [ %.11, %IsMatch.exit852.thread ] ; 9 uses
  %i.agu = add i64 %.07561272, 1
  %i.agv = getelementptr inbounds nuw [4 x i8], ptr %i.agl, i64 %.07561272 ; 3 uses
  %.sroa.0153.0.copyload = load i8, ptr %i.agv, align 2, !tbaa !21 ; 2 uses
  %.sroa.8160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.agv, i64 1
  %.sroa.8160.0.copyload = load i8, ptr %.sroa.8160.0..sroa_idx, align 1, !tbaa !21 ; 3 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.agv, i64 2
  %.sroa.10.0.copyload = load i16, ptr %.sroa.10.0..sroa_idx, align 2, !tbaa !41 ; 2 uses
  %i.agw = and i8 %.sroa.0153.0.copyload, 31      ; 4 uses
  %i.agx = zext nneg i8 %i.agw to i64             ; 39 uses
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agm, i64 %i.agx
  %i.agz = load i8, ptr %i.agy, align 1, !tbaa !21
  %i.aha = zext nneg i8 %i.agz to i64             ; 17 uses
  %i.ahb = zext i16 %.sroa.10.0.copyload to i64   ; 18 uses
  %i.ahc = icmp slt i8 %.sroa.0153.0.copyload, 0
  %i.ahd = icmp eq i8 %.sroa.8160.0.copyload, 0
  br i1 %i.ahd, label %bb.es, label %bb.fj

bb.es:                                            ; preds = %bb.er
  %i.ahe = icmp ult i64 %i.agn, %i.agx
  br i1 %i.ahe, label %IsMatch.exit852.thread, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.ahf = getelementptr inbounds nuw [4 x i8], ptr %i.ago, i64 %i.agx
  %i.ahg = load i32, ptr %i.ahf, align 4, !tbaa !19
  %i.ahh = zext i32 %i.ahg to i64
  %narrow.i845 = mul nuw nsw i64 %i.ahb, %i.agx
  %i.ahi = load ptr, ptr %i.agp, align 8, !tbaa !44
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahi, i64 %i.ahh
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ahj, i64 %narrow.i845 ; 4 uses
  %i.ahl = icmp samesign ugt i8 %i.agw, 7
  br i1 %i.ahl, label %.lr.ph1259, label %.preheader1133

.preheader1133:                                   ; preds = %bb.ev, %bb.et
  %.026.i883.lcssa = phi ptr [ %i.ahk, %bb.et ], [ %i.aht, %bb.ev ] ; 3 uses
  %.024.i884.lcssa = phi ptr [ %i.agd, %bb.et ], [ %6, %bb.ev ]
  %.022.i885.lcssa = phi i64 [ %i.agx, %bb.et ], [ %i.ahu, %bb.ev ] ; 3 uses
  %.not.i8901263 = icmp eq i64 %.022.i885.lcssa, 0
  br i1 %.not.i8901263, label %.critedge.i891, label %.lr.ph1267.preheader

.lr.ph1267.preheader:                             ; preds = %.preheader1133
  %scevgep1372 = getelementptr i8, ptr %.026.i883.lcssa, i64 %.022.i885.lcssa
  br label %.lr.ph1267

.lr.ph1259:                                       ; preds = %bb.et, %bb.ev
  %.022.i8851257 = phi i64 [ %i.ahu, %bb.ev ], [ %i.agx, %bb.et ]
  %.024.i8841256 = phi ptr [ %6, %bb.ev ], [ %i.agd, %bb.et ] ; 2 uses
  %.026.i8831255 = phi ptr [ %i.aht, %bb.ev ], [ %i.ahk, %bb.et ] ; 3 uses
  %.0.copyload.i1026 = load i64, ptr %.024.i8841256, align 1 ; 2 uses
  %.0.copyload.i1025 = load i64, ptr %.026.i8831255, align 1 ; 2 uses
  %.not30.i893 = icmp eq i64 %.0.copyload.i1026, %.0.copyload.i1025
  br i1 %.not30.i893, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %.lr.ph1259
  %i.ahm = xor i64 %.0.copyload.i1025, %.0.copyload.i1026
  %i.ahn = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ahm, i1 true)
  %i.aho = ptrtoint ptr %.026.i8831255 to i64
  %i.ahp = ptrtoint ptr %i.ahk to i64
  %i.ahq = sub i64 %i.aho, %i.ahp
  %i.ahr = lshr i64 %i.ahn, 3
  %i.ahs = add i64 %i.ahq, %i.ahr
  br label %FindMatchLengthWithLimit.exit896

bb.ev:                                            ; preds = %.lr.ph1259
  %6 = getelementptr inbounds nuw i8, ptr %.024.i8841256, i64 8 ; 2 uses
  %i.aht = getelementptr inbounds nuw i8, ptr %.026.i8831255, i64 8 ; 2 uses
  %i.ahu = add i64 %.022.i8851257, -8             ; 3 uses
  %i.ahv = icmp ugt i64 %i.ahu, 7
  br i1 %i.ahv, label %.lr.ph1259, label %.preheader1133, !llvm.loop !30

.lr.ph1267:                                       ; preds = %.lr.ph1267.preheader, %bb.ew
  %.123.i8891266 = phi i64 [ %i.ahz, %bb.ew ], [ %.022.i885.lcssa, %.lr.ph1267.preheader ]
  %.125.i8881265 = phi ptr [ %i.aia, %bb.ew ], [ %.024.i884.lcssa, %.lr.ph1267.preheader ] ; 2 uses
  %.228.i8871264 = phi ptr [ %i.aib, %bb.ew ], [ %.026.i883.lcssa, %.lr.ph1267.preheader ] ; 3 uses
  %i.ahw = load i8, ptr %.228.i8871264, align 1, !tbaa !21
  %i.ahx = load i8, ptr %.125.i8881265, align 1, !tbaa !21
  %i.ahy = icmp eq i8 %i.ahw, %i.ahx
  br i1 %i.ahy, label %bb.ew, label %.critedge.i891

bb.ew:                                            ; preds = %.lr.ph1267
  %i.ahz = add nsw i64 %.123.i8891266, -1         ; 2 uses
  %i.aia = getelementptr inbounds nuw i8, ptr %.125.i8881265, i64 1
  %i.aib = getelementptr inbounds nuw i8, ptr %.228.i8871264, i64 1
  %.not.i890 = icmp eq i64 %i.ahz, 0
  br i1 %.not.i890, label %.critedge.i891, label %.lr.ph1267, !llvm.loop !31

.critedge.i891:                                   ; preds = %bb.ew, %.lr.ph1267, %.preheader1133
  %.228.i887.lcssa = phi ptr [ %.026.i883.lcssa, %.preheader1133 ], [ %.228.i8871264, %.lr.ph1267 ], [ %scevgep1372, %bb.ew ]
  %i.aic = ptrtoint ptr %.228.i887.lcssa to i64
  %i.aid = ptrtoint ptr %i.ahk to i64
  %i.aie = sub i64 %i.aic, %i.aid
  br label %FindMatchLengthWithLimit.exit896

FindMatchLengthWithLimit.exit896:                 ; preds = %bb.eu, %.critedge.i891
  %.2.i892 = phi i64 [ %i.ahs, %bb.eu ], [ %i.aie, %.critedge.i891 ]
  %.not1121 = icmp eq i64 %.2.i892, %i.agx
  br i1 %.not1121, label %IsMatch.exit852.thread1062, label %IsMatch.exit852.thread, !llvm.loop !36

IsMatch.exit852.thread1062:                       ; preds = %FindMatchLengthWithLimit.exit896
  %i.aif = shl i64 %i.agr, %i.aha
  %i.aig = add i64 %i.aif, %i.ahb
  %i.aih = add nuw nsw i64 %i.agx, 1              ; 2 uses
  %i.aii = shl i64 %i.aig, 5
  %i.aij = or disjoint i64 %i.aii, %i.agx
  %i.aik = trunc i64 %i.aij to i32
  %i.ail = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.aih ; 2 uses
  %i.aim = load i32, ptr %i.ail, align 4, !tbaa !19
  %i.ain = tail call i32 @llvm.umin.i32(i32 %i.aim, i32 %i.aik)
  store i32 %i.ain, ptr %i.ail, align 4, !tbaa !19
  %i.aio = add nuw nsw i64 %i.agx, 2              ; 5 uses
  %.not816 = icmp ult i64 %i.aio, %3
  br i1 %.not816, label %bb.ex, label %IsMatch.exit852.thread, !llvm.loop !36

bb.ex:                                            ; preds = %IsMatch.exit852.thread1062
  %i.aip = getelementptr inbounds nuw i8, ptr %1, i64 %i.aih ; 4 uses
  %i.aiq = load i8, ptr %i.aip, align 1, !tbaa !21 ; 2 uses
  switch i8 %i.aiq, label %bb.fa [
    i8 32, label %bb.ey
    i8 40, label %bb.ez
  ]

bb.ey:                                            ; preds = %bb.ex
  %i.air = shl i64 %i.agt, %i.aha
  %i.ais = add i64 %i.air, %i.ahb
  %i.ait = shl i64 %i.ais, 5
  %i.aiu = or disjoint i64 %i.ait, %i.agx
  %i.aiv = trunc i64 %i.aiu to i32
  %i.aiw = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.aio ; 2 uses
  %i.aix = load i32, ptr %i.aiw, align 4, !tbaa !19
  %i.aiy = tail call i32 @llvm.umin.i32(i32 %i.aix, i32 %i.aiv)
  store i32 %i.aiy, ptr %i.aiw, align 4, !tbaa !19
  br label %IsMatch.exit852.thread

bb.ez:                                            ; preds = %bb.ex
  %i.aiz = shl i64 %i.ags, %i.aha
  %i.aja = add i64 %i.aiz, %i.ahb
  %i.ajb = shl i64 %i.aja, 5
  %i.ajc = or disjoint i64 %i.ajb, %i.agx
  %i.ajd = trunc i64 %i.ajc to i32
  %i.aje = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.aio ; 2 uses
  %i.ajf = load i32, ptr %i.aje, align 4, !tbaa !19
  %i.ajg = tail call i32 @llvm.umin.i32(i32 %i.ajf, i32 %i.ajd)
  store i32 %i.ajg, ptr %i.aje, align 4, !tbaa !19
  br label %IsMatch.exit852.thread

bb.fa:                                            ; preds = %bb.ex
  br i1 %i.agc, label %bb.fb, label %IsMatch.exit852.thread

bb.fb:                                            ; preds = %bb.fa
  switch i8 %i.aiq, label %IsMatch.exit852.thread [
    i8 44, label %bb.fc
    i8 46, label %bb.fe
    i8 61, label %bb.fg
  ]

bb.fc:                                            ; preds = %bb.fb
  %i.ajh = shl i64 103, %i.aha
  %i.aji = add nuw i64 %i.ajh, %i.ahb
  %i.ajj = shl i64 %i.aji, 5
  %i.ajk = or disjoint i64 %i.ajj, %i.agx
  %i.ajl = trunc i64 %i.ajk to i32
  %i.ajm = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.aio ; 2 uses
  %i.ajn = load i32, ptr %i.ajm, align 4, !tbaa !19
  %i.ajo = tail call i32 @llvm.umin.i32(i32 %i.ajn, i32 %i.ajl)
  store i32 %i.ajo, ptr %i.ajm, align 4, !tbaa !19
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.aip, i64 1
  %i.ajq = load i8, ptr %i.ajp, align 1, !tbaa !21
  %i.ajr = icmp eq i8 %i.ajq, 32
  br i1 %i.ajr, label %bb.fd, label %IsMatch.exit852.thread

bb.fd:                                            ; preds = %bb.fc
  %i.ajs = shl i64 33, %i.aha
  %i.ajt = add nuw i64 %i.ajs, %i.ahb
  %i.aju = shl i64 %i.ajt, 5
  %i.ajv = or disjoint i64 %i.aju, %i.agx
  %i.ajw = trunc i64 %i.ajv to i32
  %i.ajx = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.agx
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.ajx, i64 12 ; 2 uses
  %i.ajz = load i32, ptr %i.ajy, align 4, !tbaa !19
  %i.aka = tail call i32 @llvm.umin.i32(i32 %i.ajz, i32 %i.ajw)
  store i32 %i.aka, ptr %i.ajy, align 4, !tbaa !19
  br label %IsMatch.exit852.thread

bb.fe:                                            ; preds = %bb.fb
  %i.akb = shl i64 71, %i.aha
  %i.akc = add nuw i64 %i.akb, %i.ahb
  %i.akd = shl i64 %i.akc, 5
  %i.ake = or disjoint i64 %i.akd, %i.agx
  %i.akf = trunc i64 %i.ake to i32
  %i.akg = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.aio ; 2 uses
  %i.akh = load i32, ptr %i.akg, align 4, !tbaa !19
  %i.aki = tail call i32 @llvm.umin.i32(i32 %i.akh, i32 %i.akf)
  store i32 %i.aki, ptr %i.akg, align 4, !tbaa !19
  %i.akj = getelementptr inbounds nuw i8, ptr %i.aip, i64 1
  %i.akk = load i8, ptr %i.akj, align 1, !tbaa !21
  %i.akl = icmp eq i8 %i.akk, 32
  br i1 %i.akl, label %bb.ff, label %IsMatch.exit852.thread

bb.ff:                                            ; preds = %bb.fe
  %i.akm = shl i64 52, %i.aha
  %i.akn = add nuw i64 %i.akm, %i.ahb
  %i.ako = shl i64 %i.akn, 5
  %i.akp = or disjoint i64 %i.ako, %i.agx
  %i.akq = trunc i64 %i.akp to i32
  %i.akr = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.agx
  %i.aks = getelementptr inbounds nuw i8, ptr %i.akr, i64 12 ; 2 uses
  %i.akt = load i32, ptr %i.aks, align 4, !tbaa !19
  %i.aku = tail call i32 @llvm.umin.i32(i32 %i.akt, i32 %i.akq)
  store i32 %i.aku, ptr %i.aks, align 4, !tbaa !19
  br label %IsMatch.exit852.thread

bb.fg:                                            ; preds = %bb.fb
  %i.akv = getelementptr inbounds nuw i8, ptr %i.aip, i64 1
  %i.akw = load i8, ptr %i.akv, align 1, !tbaa !21
  switch i8 %i.akw, label %IsMatch.exit852.thread [
    i8 34, label %bb.fh
    i8 39, label %bb.fi
  ]

bb.fh:                                            ; preds = %bb.fg
  %i.akx = shl i64 81, %i.aha
  %i.aky = add nuw i64 %i.akx, %i.ahb
  %i.akz = shl i64 %i.aky, 5
  %i.ala = or disjoint i64 %i.akz, %i.agx
  %i.alb = trunc i64 %i.ala to i32
  %i.alc = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.agx
  %i.ald = getelementptr inbounds nuw i8, ptr %i.alc, i64 12 ; 2 uses
  %i.ale = load i32, ptr %i.ald, align 4, !tbaa !19
  %i.alf = tail call i32 @llvm.umin.i32(i32 %i.ale, i32 %i.alb)
  store i32 %i.alf, ptr %i.ald, align 4, !tbaa !19
  br label %IsMatch.exit852.thread

bb.fi:                                            ; preds = %bb.fg
  %i.alg = shl i64 98, %i.aha
  %i.alh = add nuw i64 %i.alg, %i.ahb
  %i.ali = shl i64 %i.alh, 5
  %i.alj = or disjoint i64 %i.ali, %i.agx
  %i.alk = trunc i64 %i.alj to i32
  %i.all = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.agx
  %i.alm = getelementptr inbounds nuw i8, ptr %i.all, i64 12 ; 2 uses
  %i.aln = load i32, ptr %i.alm, align 4, !tbaa !19
  %i.alo = tail call i32 @llvm.umin.i32(i32 %i.aln, i32 %i.alk)
  store i32 %i.alo, ptr %i.alm, align 4, !tbaa !19
  br label %IsMatch.exit852.thread

bb.fj:                                            ; preds = %bb.er
  br i1 %i.agc, label %bb.fk, label %IsMatch.exit852.thread

bb.fk:                                            ; preds = %bb.fj
  %.not812 = icmp eq i8 %.sroa.8160.0.copyload, 10 ; 8 uses
  %.sroa.0153.0.insert.ext157 = zext nneg i8 %i.agw to i32 ; 2 uses
  %i.alp = icmp ult i64 %i.agn, %i.agx
  br i1 %i.alp, label %IsMatch.exit852.thread, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %.sroa.10.0.insert.ext168 = zext i16 %.sroa.10.0.copyload to i32
  %i.alq = getelementptr inbounds nuw [4 x i8], ptr %i.ago, i64 %i.agx
  %i.alr = load i32, ptr %i.alq, align 4, !tbaa !19
  %i.als = zext i32 %i.alr to i64
  %narrow.i834 = mul nuw nsw i32 %.sroa.10.0.insert.ext168, %.sroa.0153.0.insert.ext157
  %i.alt = zext nneg i32 %narrow.i834 to i64
  %i.alu = load ptr, ptr %i.agp, align 8, !tbaa !44
  %i.alv = getelementptr inbounds nuw i8, ptr %i.alu, i64 %i.als
  %i.alw = getelementptr inbounds nuw i8, ptr %i.alv, i64 %i.alt ; 3 uses
  %cond1458 = icmp eq i8 %.sroa.8160.0.copyload, 10
  br i1 %cond1458, label %bb.fm, label %.preheader1134

.preheader1134:                                   ; preds = %bb.fl
  %.not1319 = icmp eq i8 %i.agw, 0
  br i1 %.not1319, label %IsMatch.exit841.thread1077, label %.lr.ph1254

bb.fm:                                            ; preds = %bb.fl
  %i.alx = load i8, ptr %i.alw, align 1, !tbaa !21 ; 2 uses
  %i.aly = add i8 %i.alx, -97
  %or.cond.i835 = icmp ult i8 %i.aly, 26
  br i1 %or.cond.i835, label %bb.fn, label %IsMatch.exit852.thread

bb.fn:                                            ; preds = %bb.fm
  %i.alz = load i8, ptr %i.agd, align 1, !tbaa !21
  %i.ama = xor i8 %i.alz, %i.alx
  %i.amb = icmp eq i8 %i.ama, 32
  br i1 %i.amb, label %bb.fo, label %IsMatch.exit852.thread

bb.fo:                                            ; preds = %bb.fn
  %i.amc = getelementptr inbounds nuw i8, ptr %i.alw, i64 1 ; 4 uses
  %i.amd = add nsw i32 %.sroa.0153.0.insert.ext157, -1 ; 2 uses
  %i.ame = zext i32 %i.amd to i64                 ; 3 uses
  %i.amf = icmp ugt i32 %i.amd, 7
  br i1 %i.amf, label %.lr.ph1226, label %.preheader1137

.preheader1137:                                   ; preds = %bb.fq, %bb.fo
  %.026.i925.lcssa = phi ptr [ %i.amc, %bb.fo ], [ %i.amo, %bb.fq ] ; 3 uses
  %.024.i926.lcssa = phi ptr [ %i.agq, %bb.fo ], [ %i.amn, %bb.fq ]
  %.022.i927.lcssa = phi i64 [ %i.ame, %bb.fo ], [ %i.amp, %bb.fq ] ; 3 uses
  %.not.i9321230 = icmp eq i64 %.022.i927.lcssa, 0
  br i1 %.not.i9321230, label %.critedge.i933, label %.lr.ph1234.preheader

.lr.ph1234.preheader:                             ; preds = %.preheader1137
  %scevgep1369 = getelementptr i8, ptr %.026.i925.lcssa, i64 %.022.i927.lcssa
  br label %.lr.ph1234

.lr.ph1226:                                       ; preds = %bb.fo, %bb.fq
  %.022.i9271224 = phi i64 [ %i.amp, %bb.fq ], [ %i.ame, %bb.fo ]
  %.024.i9261223 = phi ptr [ %i.amn, %bb.fq ], [ %i.agq, %bb.fo ] ; 2 uses
  %.026.i9251222 = phi ptr [ %i.amo, %bb.fq ], [ %i.amc, %bb.fo ] ; 3 uses
  %.0.copyload.i1020 = load i64, ptr %.024.i9261223, align 1 ; 2 uses
  %.0.copyload.i1019 = load i64, ptr %.026.i9251222, align 1 ; 2 uses
  %.not30.i935 = icmp eq i64 %.0.copyload.i1020, %.0.copyload.i1019
  br i1 %.not30.i935, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %.lr.ph1226
  %i.amg = xor i64 %.0.copyload.i1019, %.0.copyload.i1020
  %i.amh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.amg, i1 true)
  %i.ami = ptrtoint ptr %.026.i9251222 to i64
  %i.amj = ptrtoint ptr %i.amc to i64
  %i.amk = sub i64 %i.ami, %i.amj
  %i.aml = lshr i64 %i.amh, 3
  %i.amm = add i64 %i.amk, %i.aml
  br label %IsMatch.exit841

bb.fq:                                            ; preds = %.lr.ph1226
  %i.amn = getelementptr inbounds nuw i8, ptr %.024.i9261223, i64 8 ; 2 uses
  %i.amo = getelementptr inbounds nuw i8, ptr %.026.i9251222, i64 8 ; 2 uses
  %i.amp = add i64 %.022.i9271224, -8             ; 3 uses
  %i.amq = icmp ugt i64 %i.amp, 7
  br i1 %i.amq, label %.lr.ph1226, label %.preheader1137, !llvm.loop !30

.lr.ph1234:                                       ; preds = %.lr.ph1234.preheader, %bb.fr
  %.123.i9311233 = phi i64 [ %i.amu, %bb.fr ], [ %.022.i927.lcssa, %.lr.ph1234.preheader ]
  %.125.i9301232 = phi ptr [ %i.amv, %bb.fr ], [ %.024.i926.lcssa, %.lr.ph1234.preheader ] ; 2 uses
  %.228.i9291231 = phi ptr [ %i.amw, %bb.fr ], [ %.026.i925.lcssa, %.lr.ph1234.preheader ] ; 3 uses
  %i.amr = load i8, ptr %.228.i9291231, align 1, !tbaa !21
  %i.ams = load i8, ptr %.125.i9301232, align 1, !tbaa !21
  %i.amt = icmp eq i8 %i.amr, %i.ams
  br i1 %i.amt, label %bb.fr, label %.critedge.i933

bb.fr:                                            ; preds = %.lr.ph1234
  %i.amu = add nsw i64 %.123.i9311233, -1         ; 2 uses
  %i.amv = getelementptr inbounds nuw i8, ptr %.125.i9301232, i64 1
  %i.amw = getelementptr inbounds nuw i8, ptr %.228.i9291231, i64 1
  %.not.i932 = icmp eq i64 %i.amu, 0
  br i1 %.not.i932, label %.critedge.i933, label %.lr.ph1234, !llvm.loop !31

.critedge.i933:                                   ; preds = %bb.fr, %.lr.ph1234, %.preheader1137
  %.228.i929.lcssa = phi ptr [ %.026.i925.lcssa, %.preheader1137 ], [ %.228.i9291231, %.lr.ph1234 ], [ %scevgep1369, %bb.fr ]
  %i.amx = ptrtoint ptr %.228.i929.lcssa to i64
  %i.amy = ptrtoint ptr %i.amc to i64
  %i.amz = sub i64 %i.amx, %i.amy
  br label %IsMatch.exit841

.lr.ph1254:                                       ; preds = %.preheader1134, %bb.fu
  %.0.i8371253 = phi i64 [ %i.ang, %bb.fu ], [ 0, %.preheader1134 ] ; 3 uses
  %i.ana = getelementptr inbounds nuw i8, ptr %i.alw, i64 %.0.i8371253
  %i.anb = load i8, ptr %i.ana, align 1, !tbaa !21 ; 3 uses
  %i.anc = add i8 %i.anb, -97
  %or.cond40.i838 = icmp ult i8 %i.anc, 26
  %i.and = getelementptr inbounds nuw i8, ptr %i.agd, i64 %.0.i8371253
  %i.ane = load i8, ptr %i.and, align 1, !tbaa !21 ; 2 uses
  br i1 %or.cond40.i838, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %.lr.ph1254
  %i.anf = xor i8 %i.ane, %i.anb
  %.not39.i840 = icmp eq i8 %i.anf, 32
  br i1 %.not39.i840, label %bb.fu, label %IsMatch.exit852.thread

bb.ft:                                            ; preds = %.lr.ph1254
  %.not.i839 = icmp eq i8 %i.anb, %i.ane
  br i1 %.not.i839, label %bb.fu, label %IsMatch.exit852.thread

bb.fu:                                            ; preds = %bb.ft, %bb.fs
  %i.ang = add nuw nsw i64 %.0.i8371253, 1        ; 2 uses
  %exitcond1371.not = icmp eq i64 %i.ang, %i.agx
  br i1 %exitcond1371.not, label %IsMatch.exit841.thread1077, label %.lr.ph1254, !llvm.loop !35

IsMatch.exit841:                                  ; preds = %.critedge.i933, %bb.fp
  %.2.i934 = phi i64 [ %i.amm, %bb.fp ], [ %i.amz, %.critedge.i933 ]
  %i.anh = icmp eq i64 %.2.i934, %i.ame
  br i1 %i.anh, label %IsMatch.exit841.thread1077, label %IsMatch.exit852.thread, !llvm.loop !36

IsMatch.exit841.thread1077:                       ; preds = %bb.fu, %.preheader1134, %IsMatch.exit841
  %i.ani = select i1 %.not812, i64 30, i64 85
  %i.anj = shl i64 %i.ani, %i.aha
  %i.ank = add i64 %i.anj, %i.ahb
  %i.anl = add nuw nsw i64 %i.agx, 1              ; 2 uses
  %i.anm = shl i64 %i.ank, 5
  %i.ann = or disjoint i64 %i.anm, %i.agx
  %i.ano = trunc i64 %i.ann to i32
  %i.anp = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.anl ; 2 uses
  %i.anq = load i32, ptr %i.anp, align 4, !tbaa !19
  %i.anr = tail call i32 @llvm.umin.i32(i32 %i.anq, i32 %i.ano)
  store i32 %i.anr, ptr %i.anp, align 4, !tbaa !19
  %i.ans = add nuw nsw i64 %i.agx, 2              ; 4 uses
  %.not814 = icmp ult i64 %i.ans, %3
  br i1 %.not814, label %bb.fv, label %IsMatch.exit852.thread, !llvm.loop !36

bb.fv:                                            ; preds = %IsMatch.exit841.thread1077
  %i.ant = getelementptr inbounds nuw i8, ptr %1, i64 %i.anl ; 4 uses
  %i.anu = load i8, ptr %i.ant, align 1, !tbaa !21
  switch i8 %i.anu, label %IsMatch.exit852.thread [
    i8 32, label %bb.fw
    i8 44, label %bb.fx
    i8 46, label %bb.gb
    i8 61, label %bb.gd
  ]

bb.fw:                                            ; preds = %bb.fv
  %i.anv = select i1 %.not812, i64 15, i64 83
  %i.anw = shl i64 %i.anv, %i.aha
  %i.anx = add i64 %i.anw, %i.ahb
  %i.any = shl i64 %i.anx, 5
  %i.anz = or disjoint i64 %i.any, %i.agx
  %i.aoa = trunc i64 %i.anz to i32
  %i.aob = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ans ; 2 uses
  %i.aoc = load i32, ptr %i.aob, align 4, !tbaa !19
  %i.aod = tail call i32 @llvm.umin.i32(i32 %i.aoc, i32 %i.aoa)
  store i32 %i.aod, ptr %i.aob, align 4, !tbaa !19
  br label %IsMatch.exit852.thread

bb.fx:                                            ; preds = %bb.fv
  br i1 %.not812, label %bb.fy, label %bb.fz

bb.fy:                                            ; preds = %bb.fx
  %i.aoe = shl i64 109, %i.aha
  %i.aof = add nuw i64 %i.aoe, %i.ahb
  %i.aog = shl i64 %i.aof, 5
  %i.aoh = or disjoint i64 %i.aog, %i.agx
  %i.aoi = trunc i64 %i.aoh to i32
  %i.aoj = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ans ; 2 uses
  %i.aok = load i32, ptr %i.aoj, align 4, !tbaa !19
  %i.aol = tail call i32 @llvm.umin.i32(i32 %i.aok, i32 %i.aoi)
  store i32 %i.aol, ptr %i.aoj, align 4, !tbaa !19
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %bb.fx
  %i.aom = getelementptr inbounds nuw i8, ptr %i.ant, i64 1
  %i.aon = load i8, ptr %i.aom, align 1, !tbaa !21
  %i.aoo = icmp eq i8 %i.aon, 32
  br i1 %i.aoo, label %bb.ga, label %IsMatch.exit852.thread

bb.ga:                                            ; preds = %bb.fz
  %i.aop = select i1 %.not812, i64 65, i64 111
  %i.aoq = shl i64 %i.aop, %i.aha
  %i.aor = add i64 %i.aoq, %i.ahb
  %i.aos = shl i64 %i.aor, 5
  %i.aot = or disjoint i64 %i.aos, %i.agx
  %i.aou = trunc i64 %i.aot to i32
  %i.aov = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.agx
  %i.aow = getelementptr inbounds nuw i8, ptr %i.aov, i64 12 ; 2 uses
  %i.aox = load i32, ptr %i.aow, align 4, !tbaa !19
  %i.aoy = tail call i32 @llvm.umin.i32(i32 %i.aox, i32 %i.aou)
  store i32 %i.aoy, ptr %i.aow, align 4, !tbaa !19
  br label %IsMatch.exit852.thread

bb.gb:                                            ; preds = %bb.fv
  %i.aoz = select i1 %.not812, i64 96, i64 115
  %i.apa = shl i64 %i.aoz, %i.aha
  %i.apb = add i64 %i.apa, %i.ahb
  %i.apc = shl i64 %i.apb, 5
  %i.apd = or disjoint i64 %i.apc, %i.agx
  %i.ape = trunc i64 %i.apd to i32
  %i.apf = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ans ; 2 uses
  %i.apg = load i32, ptr %i.apf, align 4, !tbaa !19
  %i.aph = tail call i32 @llvm.umin.i32(i32 %i.apg, i32 %i.ape)
  store i32 %i.aph, ptr %i.apf, align 4, !tbaa !19
  %i.api = getelementptr inbounds nuw i8, ptr %i.ant, i64 1
  %i.apj = load i8, ptr %i.api, align 1, !tbaa !21
  %i.apk = icmp eq i8 %i.apj, 32
  br i1 %i.apk, label %bb.gc, label %IsMatch.exit852.thread

bb.gc:                                            ; preds = %bb.gb
  %i.apl = select i1 %.not812, i64 91, i64 117
  %i.apm = shl i64 %i.apl, %i.aha
  %i.apn = add i64 %i.apm, %i.ahb
  %i.apo = shl i64 %i.apn, 5
  %i.app = or disjoint i64 %i.apo, %i.agx
  %i.apq = trunc i64 %i.app to i32
  %i.apr = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.agx
  %i.aps = getelementptr inbounds nuw i8, ptr %i.apr, i64 12 ; 2 uses
  %i.apt = load i32, ptr %i.aps, align 4, !tbaa !19
  %i.apu = tail call i32 @llvm.umin.i32(i32 %i.apt, i32 %i.apq)
  store i32 %i.apu, ptr %i.aps, align 4, !tbaa !19
  br label %IsMatch.exit852.thread

bb.gd:                                            ; preds = %bb.fv
  %i.apv = getelementptr inbounds nuw i8, ptr %i.ant, i64 1
  %i.apw = load i8, ptr %i.apv, align 1, !tbaa !21
  switch i8 %i.apw, label %IsMatch.exit852.thread [
    i8 34, label %bb.ge
    i8 39, label %bb.gf
  ]

bb.ge:                                            ; preds = %bb.gd
  %i.apx = select i1 %.not812, i64 118, i64 110
  %i.apy = shl i64 %i.apx, %i.aha
  %i.apz = add i64 %i.apy, %i.ahb
  %i.aqa = shl i64 %i.apz, 5
  %i.aqb = or disjoint i64 %i.aqa, %i.agx
  %i.aqc = trunc i64 %i.aqb to i32
  %i.aqd = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.agx
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.aqd, i64 12 ; 2 uses
  %i.aqf = load i32, ptr %i.aqe, align 4, !tbaa !19
  %i.aqg = tail call i32 @llvm.umin.i32(i32 %i.aqf, i32 %i.aqc)
  store i32 %i.aqg, ptr %i.aqe, align 4, !tbaa !19
  br label %IsMatch.exit852.thread

bb.gf:                                            ; preds = %bb.gd
  %i.aqh = select i1 %.not812, i64 120, i64 119
  %i.aqi = shl i64 %i.aqh, %i.aha
  %i.aqj = add i64 %i.aqi, %i.ahb
  %i.aqk = shl i64 %i.aqj, 5
  %i.aql = or disjoint i64 %i.aqk, %i.agx
  %i.aqm = trunc i64 %i.aql to i32
  %i.aqn = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.agx
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.aqn, i64 12 ; 2 uses
  %i.aqp = load i32, ptr %i.aqo, align 4, !tbaa !19
  %i.aqq = tail call i32 @llvm.umin.i32(i32 %i.aqp, i32 %i.aqm)
  store i32 %i.aqq, ptr %i.aqo, align 4, !tbaa !19
  br label %IsMatch.exit852.thread

IsMatch.exit852.thread:                           ; preds = %bb.fs, %bb.ft, %bb.fn, %bb.fm, %bb.fk, %bb.es, %IsMatch.exit841, %IsMatch.exit841.thread1077, %bb.gd, %bb.fv, %bb.ga, %bb.fz, %bb.gf, %bb.ge, %bb.gb, %bb.gc, %bb.fw, %FindMatchLengthWithLimit.exit896, %IsMatch.exit852.thread1062, %bb.fg, %bb.fb, %bb.ez, %bb.fd, %bb.fc, %bb.fi, %bb.fh, %bb.fe, %bb.ff, %bb.fa, %bb.ey, %bb.fj
  %.11 = phi i32 [ 1, %bb.ey ], [ %.71271, %bb.fj ], [ 1, %bb.fa ], [ %.71271, %FindMatchLengthWithLimit.exit896 ], [ 1, %IsMatch.exit852.thread1062 ], [ 1, %bb.fg ], [ 1, %bb.fb ], [ 1, %bb.ez ], [ 1, %bb.fd ], [ 1, %bb.fc ], [ 1, %bb.fi ], [ 1, %bb.fh ], [ 1, %bb.fe ], [ 1, %bb.ff ], [ %.71271, %IsMatch.exit841 ], [ 1, %IsMatch.exit841.thread1077 ], [ 1, %bb.gd ], [ 1, %bb.fv ], [ 1, %bb.ga ], [ 1, %bb.fz ], [ 1, %bb.gf ], [ 1, %bb.ge ], [ 1, %bb.gb ], [ 1, %bb.gc ], [ 1, %bb.fw ], [ %.71271, %bb.fn ], [ %.71271, %bb.es ], [ %.71271, %bb.fm ], [ %.71271, %bb.fk ], [ %.71271, %bb.ft ], [ %.71271, %bb.fs ] ; 2 uses
  br i1 %i.ahc, label %.loopexit, label %bb.er

.loopexit:                                        ; preds = %IsMatch.exit852.thread, %bb.eq, %bb.ep
  %.12 = phi i32 [ %.0758.lcssa, %bb.ep ], [ %.0758.lcssa, %bb.eq ], [ %.11, %IsMatch.exit852.thread ] ; 5 uses
  %.not1122 = icmp eq i64 %3, 5
  br i1 %.not1122, label %.thread1099, label %bb.gg

bb.gg:                                            ; preds = %.loopexit
  %i.aqr = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 3 uses
  %i.aqs = load i8, ptr %i.aqr, align 1, !tbaa !21 ; 2 uses
  %i.aqt = icmp eq i8 %i.aqs, 32
  %i.aqu = load i8, ptr %1, align 1, !tbaa !21    ; 2 uses
  br i1 %i.aqt, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %bb.gg
  switch i8 %i.aqu, label %.thread1083 [
    i8 101, label %bb.gj
    i8 115, label %bb.gj
    i8 44, label %bb.gj
  ]

bb.gi:                                            ; preds = %bb.gg
  %i.aqv = icmp eq i8 %i.aqu, -62
  %i.aqw = icmp eq i8 %i.aqs, -96
  %or.cond1118 = and i1 %i.aqw, %i.aqv
  br i1 %or.cond1118, label %bb.gj, label %.thread1083

bb.gj:                                            ; preds = %bb.gi, %bb.gh, %bb.gh, %bb.gh
  %i.aqx = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.aqy = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 3 uses
  %.0.copyload.i865 = load i32, ptr %i.aqy, align 1
  %i.aqz = mul i32 %.0.copyload.i865, 506832829
  %i.ara = lshr i32 %i.aqz, 17
  %i.arb = zext nneg i32 %i.ara to i64
  %i.arc = getelementptr inbounds nuw [2 x i8], ptr %i.aqx, i64 %i.arb
  %i.ard = load i16, ptr %i.arc, align 2, !tbaa !41 ; 2 uses
  %.not808 = icmp eq i16 %i.ard, 0
  br i1 %.not808, label %.thread1083, label %.lr.ph1295

.lr.ph1295:                                       ; preds = %bb.gj
  %i.are = zext i16 %i.ard to i64
  %i.arf = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.arg = load ptr, ptr %i.arf, align 8, !tbaa !42
  %i.arh = load ptr, ptr %0, align 8, !tbaa !20   ; 3 uses
  %i.ari = add i64 %3, -2
  %i.arj = getelementptr inbounds nuw i8, ptr %i.arh, i64 32
  %i.ark = getelementptr inbounds nuw i8, ptr %i.arh, i64 168
  br label %bb.gk

bb.gk:                                            ; preds = %.lr.ph1295, %IsMatch.exit832.thread
  %.07541293 = phi i64 [ %i.are, %.lr.ph1295 ], [ %i.arl, %IsMatch.exit832.thread ] ; 2 uses
  %.131292 = phi i32 [ %.12, %.lr.ph1295 ], [ %.14, %IsMatch.exit832.thread ] ; 4 uses
  %i.arl = add i64 %.07541293, 1
  %i.arm = getelementptr inbounds nuw [4 x i8], ptr %i.arg, i64 %.07541293 ; 3 uses
  %.sroa.046.0.copyload = load i8, ptr %i.arm, align 2, !tbaa !21 ; 2 uses
  %.sroa.749.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.arm, i64 1
  %.sroa.749.0.copyload = load i8, ptr %.sroa.749.0..sroa_idx, align 1, !tbaa !21
  %.sroa.850.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.arm, i64 2
  %.sroa.850.0.copyload = load i16, ptr %.sroa.850.0..sroa_idx, align 2, !tbaa !41
  %i.arn = and i8 %.sroa.046.0.copyload, 31       ; 2 uses
  %i.aro = zext nneg i8 %i.arn to i64             ; 10 uses
  %i.arp = getelementptr inbounds nuw i8, ptr %i.arh, i64 %i.aro
  %i.arq = load i8, ptr %i.arp, align 1, !tbaa !21
  %i.arr = zext nneg i8 %i.arq to i64
  %i.ars = zext i16 %.sroa.850.0.copyload to i64  ; 2 uses
  %i.art = icmp slt i8 %.sroa.046.0.copyload, 0
  %i.aru = icmp ne i8 %.sroa.749.0.copyload, 0
  %i.arv = icmp ult i64 %i.ari, %i.aro
  %or.cond1459 = or i1 %i.aru, %i.arv
  br i1 %or.cond1459, label %IsMatch.exit832.thread, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.arw = getelementptr inbounds nuw [4 x i8], ptr %i.arj, i64 %i.aro
  %i.arx = load i32, ptr %i.arw, align 4, !tbaa !19
  %i.ary = zext i32 %i.arx to i64
  %narrow.i825 = mul nuw nsw i64 %i.ars, %i.aro
  %i.arz = load ptr, ptr %i.ark, align 8, !tbaa !44
  %i.asa = getelementptr inbounds nuw i8, ptr %i.arz, i64 %i.ary
  %i.asb = getelementptr inbounds nuw i8, ptr %i.asa, i64 %narrow.i825 ; 4 uses
  %i.asc = icmp samesign ugt i8 %i.arn, 7
  br i1 %i.asc, label %.lr.ph1280, label %.preheader1132

.preheader1132:                                   ; preds = %bb.gn, %bb.gl
  %.026.i939.lcssa = phi ptr [ %i.asb, %bb.gl ], [ %i.ask, %bb.gn ] ; 3 uses
  %.024.i940.lcssa = phi ptr [ %i.aqy, %bb.gl ], [ %7, %bb.gn ]
  %.022.i941.lcssa = phi i64 [ %i.aro, %bb.gl ], [ %i.asl, %bb.gn ] ; 3 uses
  %.not.i9461284 = icmp eq i64 %.022.i941.lcssa, 0
  br i1 %.not.i9461284, label %.critedge.i947, label %.lr.ph1288.preheader

.lr.ph1288.preheader:                             ; preds = %.preheader1132
  %scevgep1373 = getelementptr i8, ptr %.026.i939.lcssa, i64 %.022.i941.lcssa
  br label %.lr.ph1288

.lr.ph1280:                                       ; preds = %bb.gl, %bb.gn
  %.022.i9411278 = phi i64 [ %i.asl, %bb.gn ], [ %i.aro, %bb.gl ]
  %.024.i9401277 = phi ptr [ %7, %bb.gn ], [ %i.aqy, %bb.gl ] ; 2 uses
  %.026.i9391276 = phi ptr [ %i.ask, %bb.gn ], [ %i.asb, %bb.gl ] ; 3 uses
  %.0.copyload.i1018 = load i64, ptr %.024.i9401277, align 1 ; 2 uses
  %.0.copyload.i1017 = load i64, ptr %.026.i9391276, align 1 ; 2 uses
  %.not30.i949 = icmp eq i64 %.0.copyload.i1018, %.0.copyload.i1017
  br i1 %.not30.i949, label %bb.gn, label %bb.gm

bb.gm:                                            ; preds = %.lr.ph1280
  %i.asd = xor i64 %.0.copyload.i1017, %.0.copyload.i1018
  %i.ase = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.asd, i1 true)
  %i.asf = ptrtoint ptr %.026.i9391276 to i64
  %i.asg = ptrtoint ptr %i.asb to i64
  %i.ash = sub i64 %i.asf, %i.asg
  %i.asi = lshr i64 %i.ase, 3
  %i.asj = add i64 %i.ash, %i.asi
  br label %FindMatchLengthWithLimit.exit952

bb.gn:                                            ; preds = %.lr.ph1280
  %7 = getelementptr inbounds nuw i8, ptr %.024.i9401277, i64 8 ; 2 uses
  %i.ask = getelementptr inbounds nuw i8, ptr %.026.i9391276, i64 8 ; 2 uses
  %i.asl = add i64 %.022.i9411278, -8             ; 3 uses
  %i.asm = icmp ugt i64 %i.asl, 7
  br i1 %i.asm, label %.lr.ph1280, label %.preheader1132, !llvm.loop !30

.lr.ph1288:                                       ; preds = %.lr.ph1288.preheader, %bb.go
  %.123.i9451287 = phi i64 [ %i.asq, %bb.go ], [ %.022.i941.lcssa, %.lr.ph1288.preheader ]
  %.125.i9441286 = phi ptr [ %i.asr, %bb.go ], [ %.024.i940.lcssa, %.lr.ph1288.preheader ] ; 2 uses
  %.228.i9431285 = phi ptr [ %i.ass, %bb.go ], [ %.026.i939.lcssa, %.lr.ph1288.preheader ] ; 3 uses
  %i.asn = load i8, ptr %.228.i9431285, align 1, !tbaa !21
  %i.aso = load i8, ptr %.125.i9441286, align 1, !tbaa !21
  %i.asp = icmp eq i8 %i.asn, %i.aso
  br i1 %i.asp, label %bb.go, label %.critedge.i947

bb.go:                                            ; preds = %.lr.ph1288
  %i.asq = add nsw i64 %.123.i9451287, -1         ; 2 uses
  %i.asr = getelementptr inbounds nuw i8, ptr %.125.i9441286, i64 1
  %i.ass = getelementptr inbounds nuw i8, ptr %.228.i9431285, i64 1
  %.not.i946 = icmp eq i64 %i.asq, 0
  br i1 %.not.i946, label %.critedge.i947, label %.lr.ph1288, !llvm.loop !31

.critedge.i947:                                   ; preds = %bb.go, %.lr.ph1288, %.preheader1132
  %.228.i943.lcssa = phi ptr [ %.026.i939.lcssa, %.preheader1132 ], [ %.228.i9431285, %.lr.ph1288 ], [ %scevgep1373, %bb.go ]
  %i.ast = ptrtoint ptr %.228.i943.lcssa to i64
  %i.asu = ptrtoint ptr %i.asb to i64
  %i.asv = sub i64 %i.ast, %i.asu
  br label %FindMatchLengthWithLimit.exit952

FindMatchLengthWithLimit.exit952:                 ; preds = %bb.gm, %.critedge.i947
  %.2.i948 = phi i64 [ %i.asj, %bb.gm ], [ %i.asv, %.critedge.i947 ]
  %.not1123 = icmp eq i64 %.2.i948, %i.aro
  br i1 %.not1123, label %IsMatch.exit832.thread1096, label %IsMatch.exit832.thread

IsMatch.exit832.thread1096:                       ; preds = %FindMatchLengthWithLimit.exit952
  %i.asw = load i8, ptr %1, align 1, !tbaa !21    ; 3 uses
  %i.asx = icmp eq i8 %i.asw, -62
  br i1 %i.asx, label %IsMatch.exit832.thread.sink.split, label %bb.gp

bb.gp:                                            ; preds = %IsMatch.exit832.thread1096
  %i.asy = add nuw nsw i64 %i.aro, 2              ; 2 uses
  %i.asz = icmp ult i64 %i.asy, %3
  br i1 %i.asz, label %bb.gq, label %IsMatch.exit832.thread

bb.gq:                                            ; preds = %bb.gp
  %i.ata = getelementptr inbounds nuw i8, ptr %1, i64 %i.asy
  %i.atb = load i8, ptr %i.ata, align 1, !tbaa !21
  %i.atc = icmp eq i8 %i.atb, 32
  br i1 %i.atc, label %bb.gr, label %IsMatch.exit832.thread

bb.gr:                                            ; preds = %bb.gq
  %i.atd = icmp eq i8 %i.asw, 101
  %i.ate = icmp eq i8 %i.asw, 115
  %i.atf = select i1 %i.ate, i64 7, i64 13
  %i.atg = select i1 %i.atd, i64 18, i64 %i.atf
  br label %IsMatch.exit832.thread.sink.split

IsMatch.exit832.thread.sink.split:                ; preds = %IsMatch.exit832.thread1096, %bb.gr
  %.sink = phi i64 [ %i.atg, %bb.gr ], [ 102, %IsMatch.exit832.thread1096 ]
  %.sink1464 = phi i64 [ 12, %bb.gr ], [ 8, %IsMatch.exit832.thread1096 ]
  %i.ath = shl i64 %.sink, %i.arr
  %i.ati = add i64 %i.ath, %i.ars
  %i.atj = shl i64 %i.ati, 5
  %i.atk = or disjoint i64 %i.atj, %i.aro
  %i.atl = trunc i64 %i.atk to i32
  %i.atm = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.aro
  %i.atn = getelementptr inbounds nuw i8, ptr %i.atm, i64 %.sink1464 ; 2 uses
  %i.ato = load i32, ptr %i.atn, align 4, !tbaa !19
  %i.atp = tail call i32 @llvm.umin.i32(i32 %i.ato, i32 %i.atl)
  store i32 %i.atp, ptr %i.atn, align 4, !tbaa !19
  br label %IsMatch.exit832.thread

IsMatch.exit832.thread:                           ; preds = %IsMatch.exit832.thread.sink.split, %bb.gq, %bb.gp, %FindMatchLengthWithLimit.exit952, %bb.gk
  %.14 = phi i32 [ %.131292, %FindMatchLengthWithLimit.exit952 ], [ %.131292, %bb.gk ], [ %.131292, %bb.gq ], [ %.131292, %bb.gp ], [ 1, %IsMatch.exit832.thread.sink.split ] ; 2 uses
  br i1 %i.art, label %.thread1083, label %bb.gk, !llvm.loop !37

.thread1083:                                      ; preds = %IsMatch.exit832.thread, %bb.gj, %bb.gh, %bb.gi
  %.15 = phi i32 [ %.12, %bb.gi ], [ %.12, %bb.gh ], [ %.12, %bb.gj ], [ %.14, %IsMatch.exit832.thread ] ; 12 uses
  %i.atq = icmp ugt i64 %3, 8
  br i1 %i.atq, label %bb.gs, label %.thread1099

bb.gs:                                            ; preds = %.thread1083
  %i.atr = load i8, ptr %1, align 1, !tbaa !21
  switch i8 %i.atr, label %.thread1099 [
    i8 32, label %bb.gt
    i8 46, label %bb.gx
  ]

bb.gt:                                            ; preds = %bb.gs
  %i.ats = load i8, ptr %i.aqr, align 1, !tbaa !21
  %i.att = icmp eq i8 %i.ats, 116
  br i1 %i.att, label %bb.gu, label %.thread1099

bb.gu:                                            ; preds = %bb.gt
  %i.atu = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.atv = load i8, ptr %i.atu, align 1, !tbaa !21
  %i.atw = icmp eq i8 %i.atv, 104
  br i1 %i.atw, label %bb.gv, label %.thread1099

bb.gv:                                            ; preds = %bb.gu
  %i.atx = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.aty = load i8, ptr %i.atx, align 1, !tbaa !21
  %i.atz = icmp eq i8 %i.aty, 101
  br i1 %i.atz, label %bb.gw, label %.thread1099

bb.gw:                                            ; preds = %bb.gv
  %i.aua = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aub = load i8, ptr %i.aua, align 1, !tbaa !21
  %i.auc = icmp eq i8 %i.aub, 32
  br i1 %i.auc, label %bb.hb, label %.thread1099

bb.gx:                                            ; preds = %bb.gs
  %i.aud = load i8, ptr %i.aqr, align 1, !tbaa !21
  %i.aue = icmp eq i8 %i.aud, 99
  br i1 %i.aue, label %bb.gy, label %.thread1099

bb.gy:                                            ; preds = %bb.gx
  %i.auf = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.aug = load i8, ptr %i.auf, align 1, !tbaa !21
  %i.auh = icmp eq i8 %i.aug, 111
  br i1 %i.auh, label %bb.gz, label %.thread1099

bb.gz:                                            ; preds = %bb.gy
  %i.aui = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.auj = load i8, ptr %i.aui, align 1, !tbaa !21
  %i.auk = icmp eq i8 %i.auj, 109
  br i1 %i.auk, label %bb.ha, label %.thread1099

bb.ha:                                            ; preds = %bb.gz
  %i.aul = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aum = load i8, ptr %i.aul, align 1, !tbaa !21
  %i.aun = icmp eq i8 %i.aum, 47
  br i1 %i.aun, label %bb.hb, label %.thread1099

bb.hb:                                            ; preds = %bb.ha, %bb.gw
  %i.auo = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.aup = getelementptr inbounds nuw i8, ptr %1, i64 5 ; 3 uses
  %.0.copyload.i866 = load i32, ptr %i.aup, align 1
  %i.auq = mul i32 %.0.copyload.i866, 506832829
  %i.aur = lshr i32 %i.auq, 17
  %i.aus = zext nneg i32 %i.aur to i64
  %i.aut = getelementptr inbounds nuw [2 x i8], ptr %i.auo, i64 %i.aus
  %i.auu = load i16, ptr %i.aut, align 2, !tbaa !41 ; 2 uses
  %.not809 = icmp eq i16 %i.auu, 0
  br i1 %.not809, label %.thread1099, label %.lr.ph1316

.lr.ph1316:                                       ; preds = %bb.hb
  %i.auv = zext i16 %i.auu to i64
  %i.auw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aux = load ptr, ptr %i.auw, align 8, !tbaa !42
  %i.auy = load ptr, ptr %0, align 8, !tbaa !20   ; 3 uses
  %i.auz = add i64 %3, -5
  %i.ava = getelementptr inbounds nuw i8, ptr %i.auy, i64 32
  %i.avb = getelementptr inbounds nuw i8, ptr %i.auy, i64 168
  br label %bb.hc

bb.hc:                                            ; preds = %.lr.ph1316, %IsMatch.exit.thread
  %.07521314 = phi i64 [ %i.auv, %.lr.ph1316 ], [ %i.avc, %IsMatch.exit.thread ] ; 2 uses
  %.161313 = phi i32 [ %.15, %.lr.ph1316 ], [ %.17, %IsMatch.exit.thread ] ; 2 uses
  %i.avc = add i64 %.07521314, 1
  %i.avd = getelementptr inbounds nuw [4 x i8], ptr %i.aux, i64 %.07521314 ; 3 uses
  %.sroa.0.0.copyload = load i8, ptr %i.avd, align 2, !tbaa !21 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.avd, i64 1
  %.sroa.7.0.copyload = load i8, ptr %.sroa.7.0..sroa_idx, align 1, !tbaa !21
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.avd, i64 2
  %.sroa.8.0.copyload = load i16, ptr %.sroa.8.0..sroa_idx, align 2, !tbaa !41
  %i.ave = and i8 %.sroa.0.0.copyload, 31         ; 2 uses
  %i.avf = zext nneg i8 %i.ave to i64             ; 14 uses
  %i.avg = getelementptr inbounds nuw i8, ptr %i.auy, i64 %i.avf
  %i.avh = load i8, ptr %i.avg, align 1, !tbaa !21
  %i.avi = zext nneg i8 %i.avh to i64             ; 3 uses
  %i.avj = zext i16 %.sroa.8.0.copyload to i64    ; 4 uses
  %i.avk = icmp slt i8 %.sroa.0.0.copyload, 0
  %i.avl = icmp ne i8 %.sroa.7.0.copyload, 0
  %i.avm = icmp ult i64 %i.auz, %i.avf
  %or.cond1467 = or i1 %i.avl, %i.avm
  br i1 %or.cond1467, label %IsMatch.exit.thread, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.avn = getelementptr inbounds nuw [4 x i8], ptr %i.ava, i64 %i.avf
  %i.avo = load i32, ptr %i.avn, align 4, !tbaa !19
  %i.avp = zext i32 %i.avo to i64
  %narrow.i = mul nuw nsw i64 %i.avj, %i.avf
  %i.avq = load ptr, ptr %i.avb, align 8, !tbaa !44
  %i.avr = getelementptr inbounds nuw i8, ptr %i.avq, i64 %i.avp
  %i.avs = getelementptr inbounds nuw i8, ptr %i.avr, i64 %narrow.i ; 4 uses
  %i.avt = icmp samesign ugt i8 %i.ave, 7
  br i1 %i.avt, label %.lr.ph1301, label %.preheader

.preheader:                                       ; preds = %bb.hf, %bb.hd
  %.026.i967.lcssa = phi ptr [ %i.avs, %bb.hd ], [ %i.awb, %bb.hf ] ; 3 uses
  %.024.i968.lcssa = phi ptr [ %i.aup, %bb.hd ], [ %8, %bb.hf ]
  %.022.i969.lcssa = phi i64 [ %i.avf, %bb.hd ], [ %i.awc, %bb.hf ] ; 3 uses
  %.not.i9741305 = icmp eq i64 %.022.i969.lcssa, 0
  br i1 %.not.i9741305, label %.critedge.i975, label %.lr.ph1309.preheader

.lr.ph1309.preheader:                             ; preds = %.preheader
  %scevgep1374 = getelementptr i8, ptr %.026.i967.lcssa, i64 %.022.i969.lcssa
  br label %.lr.ph1309

.lr.ph1301:                                       ; preds = %bb.hd, %bb.hf
  %.022.i9691299 = phi i64 [ %i.awc, %bb.hf ], [ %i.avf, %bb.hd ]
  %.024.i9681298 = phi ptr [ %8, %bb.hf ], [ %i.aup, %bb.hd ] ; 2 uses
  %.026.i9671297 = phi ptr [ %i.awb, %bb.hf ], [ %i.avs, %bb.hd ] ; 3 uses
  %.0.copyload.i1014 = load i64, ptr %.024.i9681298, align 1 ; 2 uses
  %.0.copyload.i1013 = load i64, ptr %.026.i9671297, align 1 ; 2 uses
  %.not30.i977 = icmp eq i64 %.0.copyload.i1014, %.0.copyload.i1013
  br i1 %.not30.i977, label %bb.hf, label %bb.he

bb.he:                                            ; preds = %.lr.ph1301
  %i.avu = xor i64 %.0.copyload.i1013, %.0.copyload.i1014
  %i.avv = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.avu, i1 true)
  %i.avw = ptrtoint ptr %.026.i9671297 to i64
  %i.avx = ptrtoint ptr %i.avs to i64
  %i.avy = sub i64 %i.avw, %i.avx
  %i.avz = lshr i64 %i.avv, 3
  %i.awa = add i64 %i.avy, %i.avz
  br label %FindMatchLengthWithLimit.exit980

bb.hf:                                            ; preds = %.lr.ph1301
  %8 = getelementptr inbounds nuw i8, ptr %.024.i9681298, i64 8 ; 2 uses
  %i.awb = getelementptr inbounds nuw i8, ptr %.026.i9671297, i64 8 ; 2 uses
  %i.awc = add i64 %.022.i9691299, -8             ; 3 uses
  %i.awd = icmp ugt i64 %i.awc, 7
  br i1 %i.awd, label %.lr.ph1301, label %.preheader, !llvm.loop !30

.lr.ph1309:                                       ; preds = %.lr.ph1309.preheader, %bb.hg
  %.123.i9731308 = phi i64 [ %i.awh, %bb.hg ], [ %.022.i969.lcssa, %.lr.ph1309.preheader ]
  %.125.i9721307 = phi ptr [ %i.awi, %bb.hg ], [ %.024.i968.lcssa, %.lr.ph1309.preheader ] ; 2 uses
  %.228.i9711306 = phi ptr [ %i.awj, %bb.hg ], [ %.026.i967.lcssa, %.lr.ph1309.preheader ] ; 3 uses
  %i.awe = load i8, ptr %.228.i9711306, align 1, !tbaa !21
  %i.awf = load i8, ptr %.125.i9721307, align 1, !tbaa !21
  %i.awg = icmp eq i8 %i.awe, %i.awf
  br i1 %i.awg, label %bb.hg, label %.critedge.i975

bb.hg:                                            ; preds = %.lr.ph1309
  %i.awh = add nsw i64 %.123.i9731308, -1         ; 2 uses
  %i.awi = getelementptr inbounds nuw i8, ptr %.125.i9721307, i64 1
  %i.awj = getelementptr inbounds nuw i8, ptr %.228.i9711306, i64 1
  %.not.i974 = icmp eq i64 %i.awh, 0
  br i1 %.not.i974, label %.critedge.i975, label %.lr.ph1309, !llvm.loop !31

.critedge.i975:                                   ; preds = %bb.hg, %.lr.ph1309, %.preheader
  %.228.i971.lcssa = phi ptr [ %.026.i967.lcssa, %.preheader ], [ %.228.i9711306, %.lr.ph1309 ], [ %scevgep1374, %bb.hg ]
  %i.awk = ptrtoint ptr %.228.i971.lcssa to i64
  %i.awl = ptrtoint ptr %i.avs to i64
  %i.awm = sub i64 %i.awk, %i.awl
  br label %FindMatchLengthWithLimit.exit980

FindMatchLengthWithLimit.exit980:                 ; preds = %bb.he, %.critedge.i975
  %.2.i976 = phi i64 [ %i.awa, %bb.he ], [ %i.awm, %.critedge.i975 ]
  %.not1124 = icmp eq i64 %.2.i976, %i.avf
  br i1 %.not1124, label %IsMatch.exit.thread1115, label %IsMatch.exit.thread

IsMatch.exit.thread1115:                          ; preds = %FindMatchLengthWithLimit.exit980
  %i.awn = load i8, ptr %1, align 1, !tbaa !21
  %i.awo = icmp eq i8 %i.awn, 32
  %i.awp = select i1 %i.awo, i64 41, i64 72
  %i.awq = shl i64 %i.awp, %i.avi
  %i.awr = add i64 %i.awq, %i.avj
  %i.aws = add nuw nsw i64 %i.avf, 5              ; 3 uses
  %i.awt = shl i64 %i.awr, 5
  %i.awu = or disjoint i64 %i.awt, %i.avf
  %i.awv = trunc i64 %i.awu to i32
  %i.aww = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.aws ; 2 uses
  %i.awx = load i32, ptr %i.aww, align 4, !tbaa !19
  %i.awy = tail call i32 @llvm.umin.i32(i32 %i.awx, i32 %i.awv)
  store i32 %i.awy, ptr %i.aww, align 4, !tbaa !19
  %i.awz = icmp ult i64 %i.aws, %3
  br i1 %i.awz, label %bb.hh, label %IsMatch.exit.thread

bb.hh:                                            ; preds = %IsMatch.exit.thread1115
  %i.axa = getelementptr inbounds nuw i8, ptr %1, i64 %i.aws ; 8 uses
  %i.axb = load i8, ptr %1, align 1, !tbaa !21
  %i.axc = icmp eq i8 %i.axb, 32
  %i.axd = add nuw nsw i64 %i.avf, 8
  %i.axe = icmp ult i64 %i.axd, %3
  %or.cond = select i1 %i.axc, i1 %i.axe, i1 false
  br i1 %or.cond, label %bb.hi, label %IsMatch.exit.thread

bb.hi:                                            ; preds = %bb.hh
  %i.axf = load i8, ptr %i.axa, align 1, !tbaa !21
  %i.axg = icmp eq i8 %i.axf, 32
  br i1 %i.axg, label %bb.hj, label %IsMatch.exit.thread

bb.hj:                                            ; preds = %bb.hi
  %i.axh = getelementptr inbounds nuw i8, ptr %i.axa, i64 1
  %i.axi = load i8, ptr %i.axh, align 1, !tbaa !21
  %i.axj = icmp eq i8 %i.axi, 111
  br i1 %i.axj, label %bb.hk, label %IsMatch.exit.thread

bb.hk:                                            ; preds = %bb.hj
  %i.axk = getelementptr inbounds nuw i8, ptr %i.axa, i64 2
  %i.axl = load i8, ptr %i.axk, align 1, !tbaa !21
  %i.axm = icmp eq i8 %i.axl, 102
  br i1 %i.axm, label %bb.hl, label %IsMatch.exit.thread

bb.hl:                                            ; preds = %bb.hk
  %i.axn = getelementptr inbounds nuw i8, ptr %i.axa, i64 3
  %i.axo = load i8, ptr %i.axn, align 1, !tbaa !21
  %i.axp = icmp eq i8 %i.axo, 32
  br i1 %i.axp, label %bb.hm, label %IsMatch.exit.thread

bb.hm:                                            ; preds = %bb.hl
  %i.axq = shl i64 62, %i.avi
  %i.axr = add nuw i64 %i.axq, %i.avj
  %i.axs = shl i64 %i.axr, 5
  %i.axt = or disjoint i64 %i.axs, %i.avf
  %i.axu = trunc i64 %i.axt to i32
  %i.axv = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.avf ; 2 uses
  %i.axw = getelementptr inbounds nuw i8, ptr %i.axv, i64 36 ; 2 uses
  %i.axx = load i32, ptr %i.axw, align 4, !tbaa !19
  %i.axy = tail call i32 @llvm.umin.i32(i32 %i.axx, i32 %i.axu)
  store i32 %i.axy, ptr %i.axw, align 4, !tbaa !19
  %i.axz = add nuw nsw i64 %i.avf, 12
  %i.aya = icmp ult i64 %i.axz, %3
  br i1 %i.aya, label %bb.hn, label %IsMatch.exit.thread

bb.hn:                                            ; preds = %bb.hm
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.axa, i64 4
  %i.ayc = load i8, ptr %i.ayb, align 1, !tbaa !21
  %i.ayd = icmp eq i8 %i.ayc, 116
  br i1 %i.ayd, label %bb.ho, label %IsMatch.exit.thread

bb.ho:                                            ; preds = %bb.hn
  %i.aye = getelementptr inbounds nuw i8, ptr %i.axa, i64 5
  %i.ayf = load i8, ptr %i.aye, align 1, !tbaa !21
  %i.ayg = icmp eq i8 %i.ayf, 104
  br i1 %i.ayg, label %bb.hp, label %IsMatch.exit.thread

bb.hp:                                            ; preds = %bb.ho
  %i.ayh = getelementptr inbounds nuw i8, ptr %i.axa, i64 6
  %i.ayi = load i8, ptr %i.ayh, align 1, !tbaa !21
  %i.ayj = icmp eq i8 %i.ayi, 101
  br i1 %i.ayj, label %bb.hq, label %IsMatch.exit.thread

bb.hq:                                            ; preds = %bb.hp
  %i.ayk = getelementptr inbounds nuw i8, ptr %i.axa, i64 7
  %i.ayl = load i8, ptr %i.ayk, align 1, !tbaa !21
  %i.aym = icmp eq i8 %i.ayl, 32
  br i1 %i.aym, label %bb.hr, label %IsMatch.exit.thread

bb.hr:                                            ; preds = %bb.hq
  %i.ayn = shl i64 73, %i.avi
  %i.ayo = add nuw i64 %i.ayn, %i.avj
  %i.ayp = shl i64 %i.ayo, 5
  %i.ayq = or disjoint i64 %i.ayp, %i.avf
  %i.ayr = trunc i64 %i.ayq to i32
  %i.ays = getelementptr inbounds nuw i8, ptr %i.axv, i64 52 ; 2 uses
  %i.ayt = load i32, ptr %i.ays, align 4, !tbaa !19
  %i.ayu = tail call i32 @llvm.umin.i32(i32 %i.ayt, i32 %i.ayr)
  store i32 %i.ayu, ptr %i.ays, align 4, !tbaa !19
  br label %IsMatch.exit.thread

IsMatch.exit.thread:                              ; preds = %bb.hh, %bb.hm, %bb.hn, %bb.ho, %bb.hp, %bb.hq, %bb.hr, %bb.hl, %bb.hk, %bb.hj, %bb.hi, %IsMatch.exit.thread1115, %FindMatchLengthWithLimit.exit980, %bb.hc
  %.17 = phi i32 [ %.161313, %bb.hc ], [ 1, %IsMatch.exit.thread1115 ], [ %.161313, %FindMatchLengthWithLimit.exit980 ], [ 1, %bb.hi ], [ 1, %bb.hj ], [ 1, %bb.hk ], [ 1, %bb.hl ], [ 1, %bb.hr ], [ 1, %bb.hq ], [ 1, %bb.hp ], [ 1, %bb.ho ], [ 1, %bb.hn ], [ 1, %bb.hm ], [ 1, %bb.hh ] ; 2 uses
  br i1 %i.avk, label %.thread1099, label %bb.hc, !llvm.loop !38

.thread1099:                                      ; preds = %IsMatch.exit.thread, %bb.hb, %bb.gs, %bb.gt, %bb.gu, %bb.gv, %bb.gw, %._crit_edge1220, %.loopexit, %bb.gx, %bb.gy, %bb.gz, %bb.ha, %.thread1083
  %.18 = phi i32 [ %.15, %.thread1083 ], [ %.15, %bb.ha ], [ %.15, %bb.gz ], [ %.15, %bb.gy ], [ %.15, %bb.gx ], [ %.15, %bb.gs ], [ %.15, %bb.gt ], [ %.0758.lcssa, %._crit_edge1220 ], [ %.12, %.loopexit ], [ %.15, %bb.gw ], [ %.15, %bb.gv ], [ %.15, %bb.gu ], [ %.15, %bb.hb ], [ %.17, %IsMatch.exit.thread ]
  ret i32 %.18
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #4

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
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
!9 = !{!"p1 _ZTS16BrotliDictionary", !8, i64 0}
!10 = !{!"long", !4, i64 0}
!11 = !{!"p1 short", !8, i64 0}
!12 = !{!"p1 omnipotent char", !8, i64 0}
!13 = !{!"p1 _ZTS8DictWord", !8, i64 0}
!14 = !{!"p1 _ZTS14BrotliTrieNode", !8, i64 0}
!15 = !{!"BrotliTrieNode", !4, i64 0, !4, i64 1, !4, i64 2, !5, i64 4, !5, i64 8}
!16 = !{!"BrotliTrie", !14, i64 0, !10, i64 8, !10, i64 16, !15, i64 24}
!17 = !{!"p1 _ZTS27ContextualEncoderDictionary", !8, i64 0}
!18 = !{!"BrotliEncoderDictionary", !9, i64 0, !5, i64 8, !5, i64 12, !10, i64 16, !11, i64 24, !12, i64 32, !11, i64 40, !13, i64 48, !16, i64 56, !5, i64 96, !17, i64 104, !11, i64 112, !12, i64 120, !10, i64 128, !11, i64 136, !10, i64 144, !13, i64 152, !9, i64 160}
!19 = !{!5, !5, i64 0}
!20 = !{!18, !9, i64 0}
!21 = !{!4, !4, i64 0}
!22 = !{!"llvm.loop.mustprogress"}
!23 = distinct !{!23, !22}
!24 = !{!18, !17, i64 104}
!25 = !{!"p1 _ZTS23BrotliEncoderDictionary", !8, i64 0}
!26 = !{!"ContextualEncoderDictionary", !5, i64 0, !4, i64 4, !4, i64 5, !4, i64 72, !10, i64 584, !18, i64 592, !25, i64 760}
!27 = !{!26, !4, i64 4}
!28 = !{!25, !25, i64 0}
!29 = !{!18, !5, i64 8}
!30 = distinct !{!30, !22}
!31 = distinct !{!31, !22}
!32 = distinct !{!32, !22, !46, !47}
!33 = distinct !{!33, !22, !47, !46}
!34 = distinct !{!34, !22}
!35 = distinct !{!35, !22}
!36 = distinct !{!36, !22}
!37 = distinct !{!37, !22}
!38 = distinct !{!38, !22}
!39 = !{!18, !11, i64 40}
!40 = !{!"short", !4, i64 0}
!41 = !{!40, !40, i64 0}
!42 = !{!18, !13, i64 48}
!43 = !{!"BrotliDictionary", !4, i64 0, !4, i64 32, !10, i64 160, !12, i64 168}
!44 = !{!43, !12, i64 168}
!45 = !{!18, !10, i64 16}
!46 = !{!"llvm.loop.isvectorized", i32 1}
!47 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_1
