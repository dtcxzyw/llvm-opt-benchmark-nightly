Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/static_dict?download=true
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 0, 2) i32 @BrotliFindAllStaticDictionaryMatches(ptr nofree noundef readonly captures(address) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [38 x i32], align 16              ; 15 uses
  %i.b = tail call fastcc i32 @BrotliFindAllStaticDictionaryMatchesFor(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4) ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25   ; 4 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i8, ptr %i.e, align 4, !tbaa !28
  %i.g = icmp ugt i8 %i.f, 1
  br i1 %i.g, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !29   ; 2 uses
  %i.j = icmp eq ptr %i.i, %0
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !29
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.034 = phi ptr [ %i.l, %bb.d ], [ %i.i, %bb.c ]
  store <4 x i32> splat (i32 268435455), ptr %i.a, align 16, !tbaa !20
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <4 x i32> splat (i32 268435455), ptr %i.m, align 16, !tbaa !20
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store <4 x i32> splat (i32 268435455), ptr %i.n, align 16, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store <4 x i32> splat (i32 268435455), ptr %i.o, align 16, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store <4 x i32> splat (i32 268435455), ptr %i.p, align 16, !tbaa !20
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store <4 x i32> splat (i32 268435455), ptr %i.q, align 16, !tbaa !20
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store <4 x i32> splat (i32 268435455), ptr %i.r, align 16, !tbaa !20
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store <4 x i32> splat (i32 268435455), ptr %i.s, align 16, !tbaa !20
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store <4 x i32> splat (i32 268435455), ptr %i.t, align 16, !tbaa !20
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store i32 268435455, ptr %i.u, align 16, !tbaa !20
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 148
  store i32 268435455, ptr %i.v, align 4, !tbaa !20
  %i.w = call fastcc i32 @BrotliFindAllStaticDictionaryMatchesFor(ptr noundef %.034, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %i.a)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.h
  %indvars.iv = phi i64 [ 0, %bb.e ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.z = load i32, ptr %i.y, align 4, !tbaa !20   ; 3 uses
  %.not38 = icmp eq i32 %i.z, 268435455
  br i1 %.not38, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = and i32 %i.z, 31
  %i.ab = load ptr, ptr %0, align 8, !tbaa !21
  %i.ac = zext nneg i32 %i.aa to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !22
  %i.af = zext nneg i8 %i.ae to i32
  %i.ag = shl nuw i32 1, %i.af
  %i.ah = and i32 %i.ag, 134217726
  %i.ai = load i32, ptr %i.x, align 8, !tbaa !30
  %i.aj = shl i32 %i.ai, 5
  %i.ak = mul i32 %i.aj, %i.ah
  %i.al = add i32 %i.ak, %i.z
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !20
  %i.ao = call i32 @llvm.umin.i32(i32 %i.an, i32 %i.al)
  store i32 %i.ao, ptr %i.am, align 4, !tbaa !20
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 38
  br i1 %exitcond.not, label %bb.i, label %bb.f, !llvm.loop !24

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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %.0.copyload.i = load i32, ptr %1, align 1
  %i.c = mul i32 %.0.copyload.i, 506832829
  %i.d = lshr i32 %i.c, 17
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.e
  %i.g = load i16, ptr %i.f, align 2, !tbaa !42   ; 2 uses
  %.not = icmp eq i16 %i.g, 0
  br i1 %.not, label %._crit_edge1220, label %.lr.ph1219

.lr.ph1219:                                       ; preds = %bb.a
  %i.h = zext i16 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !43
  %i.k = load ptr, ptr %0, align 8, !tbaa !21     ; 3 uses
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
  %.sroa.0580.0.copyload = load i8, ptr %i.q, align 2, !tbaa !22 ; 2 uses
  %.sroa.7583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %.sroa.7583.0.copyload = load i8, ptr %.sroa.7583.0..sroa_idx, align 1, !tbaa !22 ; 3 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %.sroa.9.0.copyload = load i16, ptr %.sroa.9.0..sroa_idx, align 2, !tbaa !42 ; 2 uses
  %i.r = and i8 %.sroa.0580.0.copyload, 31        ; 4 uses
  %i.s = zext nneg i8 %i.r to i64                 ; 103 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !22
  %i.v = zext nneg i8 %i.u to i64                 ; 59 uses
  %i.w = shl nuw i64 1, %i.v
  %i.x = zext i16 %.sroa.9.0.copyload to i64      ; 61 uses
  %i.y = icmp slt i8 %.sroa.0580.0.copyload, 0
  %i.z = icmp eq i8 %.sroa.7583.0.copyload, 0
  br i1 %i.z, label %bb.c, label %bb.dr

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.s
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !20
  %i.ac = zext i32 %i.ab to i64
  %i.ad = mul nuw nsw i64 %i.x, %i.s
  %i.ae = load ptr, ptr %i.m, align 8, !tbaa !45
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ad
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ac ; 4 uses
  %i.ah = tail call i64 @llvm.umin.i64(i64 range(i64 0, 32) %i.s, i64 %3) ; 3 uses
  %i.ai = icmp samesign ugt i64 %i.ah, 7
  br i1 %i.ai, label %.lr.ph1200, label %.preheader1138

.preheader1138:                                   ; preds = %bb.e, %bb.c
  %.026.i995.lcssa = phi ptr [ %i.ag, %bb.c ], [ %i.ar, %bb.e ] ; 10 uses
  %.024.i996.lcssa = phi ptr [ %1, %bb.c ], [ %i.aq, %bb.e ] ; 7 uses
  %.022.i997.lcssa = phi i64 [ %i.ah, %bb.c ], [ %i.as, %bb.e ] ; 8 uses
  %.not.i10021204 = icmp eq i64 %.022.i997.lcssa, 0
  br i1 %.not.i10021204, label %.critedge.i1003, label %.lr.ph1208.preheader

.lr.ph1208.preheader:                             ; preds = %.preheader1138
  %scevgep1368 = getelementptr i8, ptr %.026.i995.lcssa, i64 %.022.i997.lcssa ; 7 uses
  %5 = load i8, ptr %.026.i995.lcssa, align 1, !tbaa !22
  %6 = load i8, ptr %.024.i996.lcssa, align 1, !tbaa !22
  %7 = icmp eq i8 %5, %6
  br i1 %7, label %8, label %.critedge.i1003

.lr.ph1200:                                       ; preds = %bb.c, %bb.e
  %.022.i9971199 = phi i64 [ %i.as, %bb.e ], [ %i.ah, %bb.c ]
  %.024.i9961198 = phi ptr [ %i.aq, %bb.e ], [ %1, %bb.c ] ; 2 uses
  %.026.i9951197 = phi ptr [ %i.ar, %bb.e ], [ %i.ag, %bb.c ] ; 3 uses
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
  %i.aq = getelementptr inbounds nuw i8, ptr %.024.i9961198, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.026.i9951197, i64 8 ; 2 uses
  %i.as = add nsw i64 %.022.i9971199, -8          ; 3 uses
  %i.at = icmp ugt i64 %i.as, 7
  br i1 %i.at, label %.lr.ph1200, label %.preheader1138, !llvm.loop !31

8:                                                ; preds = %.lr.ph1208.preheader
  %.not.i1002 = icmp eq i64 %.022.i997.lcssa, 1
  br i1 %.not.i1002, label %.critedge.i1003, label %.lr.ph1208.1

.lr.ph1208.1:                                     ; preds = %8
  %9 = getelementptr inbounds nuw i8, ptr %.026.i995.lcssa, i64 1 ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %.024.i996.lcssa, i64 1
  %11 = load i8, ptr %9, align 1, !tbaa !22
  %12 = load i8, ptr %10, align 1, !tbaa !22
  %13 = icmp eq i8 %11, %12
  br i1 %13, label %14, label %.critedge.i1003

14:                                               ; preds = %.lr.ph1208.1
  %.not.i1002.1 = icmp eq i64 %.022.i997.lcssa, 2
  br i1 %.not.i1002.1, label %.critedge.i1003, label %.lr.ph1208.2

.lr.ph1208.2:                                     ; preds = %14
  %15 = getelementptr inbounds nuw i8, ptr %.026.i995.lcssa, i64 2 ; 2 uses
  %16 = getelementptr inbounds nuw i8, ptr %.024.i996.lcssa, i64 2
  %17 = load i8, ptr %15, align 1, !tbaa !22
  %18 = load i8, ptr %16, align 1, !tbaa !22
  %19 = icmp eq i8 %17, %18
  br i1 %19, label %20, label %.critedge.i1003

20:                                               ; preds = %.lr.ph1208.2
  %.not.i1002.2 = icmp eq i64 %.022.i997.lcssa, 3
  br i1 %.not.i1002.2, label %.critedge.i1003, label %.lr.ph1208.3

.lr.ph1208.3:                                     ; preds = %20
  %21 = getelementptr inbounds nuw i8, ptr %.026.i995.lcssa, i64 3 ; 2 uses
  %22 = getelementptr inbounds nuw i8, ptr %.024.i996.lcssa, i64 3
  %23 = load i8, ptr %21, align 1, !tbaa !22
  %24 = load i8, ptr %22, align 1, !tbaa !22
  %25 = icmp eq i8 %23, %24
  br i1 %25, label %26, label %.critedge.i1003

26:                                               ; preds = %.lr.ph1208.3
  %.not.i1002.3 = icmp eq i64 %.022.i997.lcssa, 4
  br i1 %.not.i1002.3, label %.critedge.i1003, label %.lr.ph1208

.lr.ph1208:                                       ; preds = %26
  %27 = getelementptr inbounds nuw i8, ptr %.026.i995.lcssa, i64 4 ; 2 uses
  %28 = getelementptr inbounds nuw i8, ptr %.024.i996.lcssa, i64 4
  %i.au = load i8, ptr %27, align 1, !tbaa !22
  %i.av = load i8, ptr %28, align 1, !tbaa !22
  %i.aw = icmp eq i8 %i.au, %i.av
  br i1 %i.aw, label %29, label %.critedge.i1003

29:                                               ; preds = %.lr.ph1208
  %.not.i1002.4 = icmp eq i64 %.022.i997.lcssa, 5
  br i1 %.not.i1002.4, label %.critedge.i1003, label %bb.f

bb.f:                                             ; preds = %29
  %30 = getelementptr inbounds nuw i8, ptr %.026.i995.lcssa, i64 5 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.024.i996.lcssa, i64 5
  %31 = load i8, ptr %30, align 1, !tbaa !22
  %32 = load i8, ptr %i.ax, align 1, !tbaa !22
  %.not.i1002.a = icmp eq i8 %31, %32
  br i1 %.not.i1002.a, label %33, label %.critedge.i1003

33:                                               ; preds = %bb.f
  %.not.i1002.5 = icmp eq i64 %.022.i997.lcssa, 6
  br i1 %.not.i1002.5, label %.critedge.i1003, label %.lr.ph1208.6

.lr.ph1208.6:                                     ; preds = %33
  %34 = getelementptr inbounds nuw i8, ptr %.026.i995.lcssa, i64 6 ; 2 uses
  %35 = getelementptr inbounds nuw i8, ptr %.024.i996.lcssa, i64 6
  %36 = load i8, ptr %34, align 1, !tbaa !22
  %37 = load i8, ptr %35, align 1, !tbaa !22
  %38 = icmp eq i8 %36, %37
  %spec.select = select i1 %38, ptr %scevgep1368, ptr %34
  br label %.critedge.i1003

.critedge.i1003:                                  ; preds = %.lr.ph1208.6, %8, %.lr.ph1208.preheader, %.lr.ph1208.1, %14, %.lr.ph1208.2, %20, %.lr.ph1208.3, %26, %.lr.ph1208, %29, %bb.f, %33, %.preheader1138
  %.228.i999.lcssa = phi ptr [ %.026.i995.lcssa, %.preheader1138 ], [ %.026.i995.lcssa, %.lr.ph1208.preheader ], [ %scevgep1368, %8 ], [ %9, %.lr.ph1208.1 ], [ %scevgep1368, %14 ], [ %15, %.lr.ph1208.2 ], [ %scevgep1368, %20 ], [ %21, %.lr.ph1208.3 ], [ %scevgep1368, %26 ], [ %27, %.lr.ph1208 ], [ %scevgep1368, %29 ], [ %30, %bb.f ], [ %scevgep1368, %33 ], [ %spec.select, %.lr.ph1208.6 ]
  %i.ay = ptrtoint ptr %.228.i999.lcssa to i64
  %i.az = ptrtoint ptr %i.ag to i64
  %i.ba = sub i64 %i.ay, %i.az
  br label %FindMatchLengthWithLimit.exit1008

FindMatchLengthWithLimit.exit1008:                ; preds = %bb.d, %.critedge.i1003
  %.2.i1004 = phi i64 [ %i.ap, %bb.d ], [ %i.ba, %.critedge.i1003 ] ; 4 uses
  %i.bb = icmp eq i64 %.2.i1004, %i.s
  br i1 %i.bb, label %bb.g, label %bb.h

bb.g:                                             ; preds = %FindMatchLengthWithLimit.exit1008
  %i.bc = shl nuw nsw i64 %i.x, 5
  %i.bd = or disjoint i64 %i.bc, %i.s
  %i.be = trunc nuw nsw i64 %i.bd to i32
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.s ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !20
  %i.bh = tail call i32 @llvm.umin.i32(i32 %i.bg, i32 %i.be)
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !20
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %FindMatchLengthWithLimit.exit1008
  %.1759 = phi i32 [ 1, %bb.g ], [ %.07581217, %FindMatchLengthWithLimit.exit1008 ]
  %i.bi = add nsw i64 %i.s, -1                    ; 3 uses
  %.not820 = icmp ult i64 %.2.i1004, %i.bi
  br i1 %.not820, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bj = shl i64 12, %i.v
  %i.bk = add nuw i64 %i.bj, %i.x
  %i.bl = shl i64 %i.bk, 5
  %i.bm = or disjoint i64 %i.bl, %i.s
  %i.bn = trunc i64 %i.bm to i32
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.bi ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !20
  %i.bq = tail call i32 @llvm.umin.i32(i32 %i.bp, i32 %i.bn)
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !20
  %i.br = add nuw nsw i64 %i.s, 2                 ; 2 uses
  %i.bs = icmp ult i64 %i.br, %3
  br i1 %i.bs, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 %i.bi
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !22
  %i.bv = icmp eq i8 %i.bu, 105
  br i1 %i.bv, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 %i.s ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !22
  %i.by = icmp eq i8 %i.bx, 110
  br i1 %i.by, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 1
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !22
  %i.cb = icmp eq i8 %i.ca, 103
  br i1 %i.cb, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 %i.br
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !22
  %i.ce = icmp eq i8 %i.cd, 32
  br i1 %i.ce, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cf = shl i64 49, %i.v
  %i.cg = add nuw i64 %i.cf, %i.x
  %i.ch = shl i64 %i.cg, 5
  %i.ci = or disjoint i64 %i.ch, %i.s
  %i.cj = trunc i64 %i.ci to i32
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.s
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 12 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !20
  %i.cn = tail call i32 @llvm.umin.i32(i32 %i.cm, i32 %i.cj)
  store i32 %i.cn, ptr %i.cl, align 4, !tbaa !20
  br label %bb.o

bb.o:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.h
  %.2760 = phi i32 [ %.1759, %bb.h ], [ 1, %bb.n ], [ 1, %bb.m ], [ 1, %bb.l ], [ 1, %bb.k ], [ 1, %bb.j ], [ 1, %bb.i ]
  %i.co = icmp samesign ugt i8 %i.r, 9
  %i.cp = add nsw i64 %i.s, -9
  %i.cq = tail call i64 @llvm.umax.i64(i64 %2, i64 range(i64 1, 23) %i.cp)
  %.0764 = select i1 %i.co, i64 %i.cq, i64 %2     ; 7 uses
  %i.cr = add nsw i64 %i.s, -2
  %i.cs = tail call i64 @llvm.umin.i64(i64 %.2.i1004, i64 %i.cr) ; 3 uses
  %.not8211212 = icmp ugt i64 %.0764, %i.cs
  br i1 %.not8211212, label %._crit_edge, label %.lr.ph1214

.lr.ph1214:                                       ; preds = %bb.o
  %i.ct = load i64, ptr %i.o, align 8, !tbaa !46  ; 2 uses
  %i.cu = add i64 %.0764, 1
  %i.cv = add i64 %i.cs, 1
  %i.cw = tail call i64 @llvm.umax.i64(i64 %i.cu, i64 %i.cv)
  %i.cx = sub i64 %i.cw, %.0764                   ; 3 uses
  %min.iters.check = icmp ult i64 %i.cx, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph1214
  %n.vec = and i64 %i.cx, -4                      ; 3 uses
  %i.cy = add i64 %.0764, %n.vec
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.ct, i64 0
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
  %i.cz = getelementptr [4 x i8], ptr %4, i64 %.0764
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.da = sub <4 x i64> %broadcast.splat1504, %vec.ind ; 2 uses
  %i.db = shl <4 x i64> %i.da, splat (i64 2)
  %i.dc = mul <4 x i64> %i.da, splat (i64 6)
  %i.dd = lshr <4 x i64> %broadcast.splat, %i.dc
  %i.de = and <4 x i64> %i.dd, splat (i64 63)
  %i.df = add <4 x i64> %i.de, %i.db
  %i.dg = shl <4 x i64> %i.df, %broadcast.splat1506
  %i.dh = add <4 x i64> %i.dg, %broadcast.splat1508
  %i.di = shl <4 x i64> %i.dh, splat (i64 5)
  %i.dj = or disjoint <4 x i64> %i.di, %broadcast.splat1504
  %i.dk = trunc <4 x i64> %i.dj to <4 x i32>
  %i.dl = getelementptr [4 x i8], ptr %i.cz, i64 %index ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.dl, align 4, !tbaa !20
  %i.dm = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %wide.load, <4 x i32> %i.dk)
  store <4 x i32> %i.dm, ptr %i.dl, align 4, !tbaa !20
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i64> %vec.ind, splat (i64 4)
  %i.dn = icmp eq i64 %index.next, %n.vec
  br i1 %i.dn, label %middle.block, label %vector.body, !llvm.loop !32

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cx, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph1214, %middle.block
  %.07631213.ph = phi i64 [ %.0764, %.lr.ph1214 ], [ %i.cy, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.07631213 = phi i64 [ %i.ec, %scalar.ph ], [ %.07631213.ph, %scalar.ph.preheader ] ; 3 uses
  %i.do = sub i64 %i.s, %.07631213                ; 2 uses
  %i.dp = shl i64 %i.do, 2
  %i.dq = mul i64 %i.do, 6
  %i.dr = lshr i64 %i.ct, %i.dq
  %i.ds = and i64 %i.dr, 63
  %i.dt = add i64 %i.ds, %i.dp
  %i.du = shl i64 %i.dt, %i.v
  %i.dv = add i64 %i.du, %i.x
  %i.dw = shl i64 %i.dv, 5
  %i.dx = or disjoint i64 %i.dw, %i.s
  %i.dy = trunc i64 %i.dx to i32
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07631213 ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !20
  %i.eb = tail call i32 @llvm.umin.i32(i32 %i.ea, i32 %i.dy)
  store i32 %i.eb, ptr %i.dz, align 4, !tbaa !20
  %i.ec = add i64 %.07631213, 1                   ; 2 uses
  %.not821 = icmp ugt i64 %i.ec, %i.cs
  br i1 %.not821, label %._crit_edge, label %scalar.ph, !llvm.loop !33

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.o
  %.3761.lcssa = phi i32 [ %.2760, %bb.o ], [ 1, %middle.block ], [ 1, %scalar.ph ] ; 107 uses
  %i.ed = icmp ult i64 %.2.i1004, %i.s
  br i1 %i.ed, label %.critedge, label %bb.p, !llvm.loop !34

bb.p:                                             ; preds = %._crit_edge
  %i.ee = add nuw nsw i64 %i.s, 6                 ; 5 uses
  %.not822 = icmp ult i64 %i.ee, %3
  br i1 %.not822, label %bb.q, label %.critedge, !llvm.loop !34

bb.q:                                             ; preds = %bb.p
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 %i.s ; 68 uses
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !22
  switch i8 %i.eg, label %.critedge [
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
  %i.eh = add nuw i64 %i.w, %i.x
  %i.ei = shl i64 %i.eh, 5
  %i.ej = or disjoint i64 %i.ei, %i.s
  %i.ek = trunc i64 %i.ej to i32
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.s ; 14 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 4 ; 2 uses
  %i.en = load i32, ptr %i.em, align 4, !tbaa !20
  %i.eo = tail call i32 @llvm.umin.i32(i32 %i.en, i32 %i.ek)
  store i32 %i.eo, ptr %i.em, align 4, !tbaa !20
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ef, i64 1
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !22
  switch i8 %i.eq, label %.critedge [
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
  %i.er = getelementptr inbounds nuw i8, ptr %i.ef, i64 2
  %i.es = load i8, ptr %i.er, align 1, !tbaa !22
  switch i8 %i.es, label %.critedge [
    i8 32, label %bb.t
    i8 115, label %bb.u
    i8 116, label %bb.w
    i8 110, label %bb.y
  ]

bb.t:                                             ; preds = %bb.s
  %i.et = shl i64 28, %i.v
  %i.eu = add nuw i64 %i.et, %i.x
  %i.ev = shl i64 %i.eu, 5
  %i.ew = or disjoint i64 %i.ev, %i.s
  %i.ex = trunc i64 %i.ew to i32
  %i.ey = getelementptr inbounds nuw i8, ptr %i.el, i64 12 ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !20
  %i.fa = tail call i32 @llvm.umin.i32(i32 %i.ez, i32 %i.ex)
  store i32 %i.fa, ptr %i.ey, align 4, !tbaa !20
  br label %.critedge

bb.u:                                             ; preds = %bb.s
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ef, i64 3
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !22
  %i.fd = icmp eq i8 %i.fc, 32
  br i1 %i.fd, label %bb.v, label %.critedge

bb.v:                                             ; preds = %bb.u
  %i.fe = shl i64 46, %i.v
  %i.ff = add nuw i64 %i.fe, %i.x
  %i.fg = shl i64 %i.ff, 5
  %i.fh = or disjoint i64 %i.fg, %i.s
  %i.fi = trunc i64 %i.fh to i32
  %i.fj = getelementptr inbounds nuw i8, ptr %i.el, i64 16 ; 2 uses
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !20
  %i.fl = tail call i32 @llvm.umin.i32(i32 %i.fk, i32 %i.fi)
  store i32 %i.fl, ptr %i.fj, align 4, !tbaa !20
  br label %.critedge

bb.w:                                             ; preds = %bb.s
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ef, i64 3
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !22
  %i.fo = icmp eq i8 %i.fn, 32
  br i1 %i.fo, label %bb.x, label %.critedge

bb.x:                                             ; preds = %bb.w
  %i.fp = shl i64 60, %i.v
  %i.fq = add nuw i64 %i.fp, %i.x
  %i.fr = shl i64 %i.fq, 5
  %i.fs = or disjoint i64 %i.fr, %i.s
  %i.ft = trunc i64 %i.fs to i32
  %i.fu = getelementptr inbounds nuw i8, ptr %i.el, i64 16 ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !20
  %i.fw = tail call i32 @llvm.umin.i32(i32 %i.fv, i32 %i.ft)
  store i32 %i.fw, ptr %i.fu, align 4, !tbaa !20
  br label %.critedge

bb.y:                                             ; preds = %bb.s
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ef, i64 3
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !22
  %i.fz = icmp eq i8 %i.fy, 100
  br i1 %i.fz, label %bb.z, label %.critedge

bb.z:                                             ; preds = %bb.y
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !22
  %i.gc = icmp eq i8 %i.gb, 32
  br i1 %i.gc, label %bb.aa, label %.critedge

bb.aa:                                            ; preds = %bb.z
  %i.gd = shl i64 10, %i.v
  %i.ge = add nuw i64 %i.gd, %i.x
  %i.gf = shl i64 %i.ge, 5
  %i.gg = or disjoint i64 %i.gf, %i.s
  %i.gh = trunc i64 %i.gg to i32
  %i.gi = getelementptr inbounds nuw i8, ptr %i.el, i64 20 ; 2 uses
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !20
  %i.gk = tail call i32 @llvm.umin.i32(i32 %i.gj, i32 %i.gh)
  store i32 %i.gk, ptr %i.gi, align 4, !tbaa !20
  br label %.critedge

bb.ab:                                            ; preds = %bb.r
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ef, i64 2
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !22
  %i.gn = icmp eq i8 %i.gm, 121
  br i1 %i.gn, label %bb.ac, label %.critedge

bb.ac:                                            ; preds = %bb.ab
  %i.go = getelementptr inbounds nuw i8, ptr %i.ef, i64 3
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !22
  %i.gq = icmp eq i8 %i.gp, 32
  br i1 %i.gq, label %bb.ad, label %.critedge

bb.ad:                                            ; preds = %bb.ac
  %i.gr = shl i64 38, %i.v
  %i.gs = add nuw i64 %i.gr, %i.x
  %i.gt = shl i64 %i.gs, 5
  %i.gu = or disjoint i64 %i.gt, %i.s
  %i.gv = trunc i64 %i.gu to i32
  %i.gw = getelementptr inbounds nuw i8, ptr %i.el, i64 16 ; 2 uses
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !20
  %i.gy = tail call i32 @llvm.umin.i32(i32 %i.gx, i32 %i.gv)
  store i32 %i.gy, ptr %i.gw, align 4, !tbaa !20
  br label %.critedge

bb.ae:                                            ; preds = %bb.r
  %i.gz = getelementptr inbounds nuw i8, ptr %i.ef, i64 2
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !22
  switch i8 %i.ha, label %.critedge [
    i8 110, label %bb.af
    i8 115, label %bb.ah
  ]

bb.af:                                            ; preds = %bb.ae
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ef, i64 3
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !22
  %i.hd = icmp eq i8 %i.hc, 32
  br i1 %i.hd, label %bb.ag, label %.critedge

bb.ag:                                            ; preds = %bb.af
  %i.he = shl i64 16, %i.v
  %i.hf = add nuw i64 %i.he, %i.x
  %i.hg = shl i64 %i.hf, 5
  %i.hh = or disjoint i64 %i.hg, %i.s
  %i.hi = trunc i64 %i.hh to i32
  %i.hj = getelementptr inbounds nuw i8, ptr %i.el, i64 16 ; 2 uses
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !20
  %i.hl = tail call i32 @llvm.umin.i32(i32 %i.hk, i32 %i.hi)
  store i32 %i.hl, ptr %i.hj, align 4, !tbaa !20
  br label %.critedge

bb.ah:                                            ; preds = %bb.ae
  %i.hm = getelementptr inbounds nuw i8, ptr %i.ef, i64 3
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !22
  %i.ho = icmp eq i8 %i.hn, 32
  br i1 %i.ho, label %bb.ai, label %.critedge

bb.ai:                                            ; preds = %bb.ah
  %i.hp = shl i64 47, %i.v
  %i.hq = add nuw i64 %i.hp, %i.x
  %i.hr = shl i64 %i.hq, 5
  %i.hs = or disjoint i64 %i.hr, %i.s
  %i.ht = trunc i64 %i.hs to i32
  %i.hu = getelementptr inbounds nuw i8, ptr %i.el, i64 16 ; 2 uses
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !20
  %i.hw = tail call i32 @llvm.umin.i32(i32 %i.hv, i32 %i.ht)
  store i32 %i.hw, ptr %i.hu, align 4, !tbaa !20
  br label %.critedge

bb.aj:                                            ; preds = %bb.r
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ef, i64 2
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !22
  switch i8 %i.hy, label %.critedge [
end_hunk_0
begin_hunk_1_@BrotliFindAllStaticDictionaryMatchesFor:bb.a
  %i.xe = getelementptr inbounds nuw i8, ptr %i.ef, i64 3
  %i.xf = load i8, ptr %i.xe, align 1, !tbaa !22
  %i.xg = icmp eq i8 %i.xf, 32
  br i1 %i.xg, label %bb.df, label %.critedge

bb.df:                                            ; preds = %bb.de
  %i.xh = shl i64 100, %i.v
  %i.xi = add nuw i64 %i.xh, %i.x
  %i.xj = shl i64 %i.xi, 5
  %i.xk = or disjoint i64 %i.xj, %i.s
  %i.xl = trunc i64 %i.xk to i32
  %i.xm = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.s
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 16 ; 2 uses
  %i.xo = load i32, ptr %i.xn, align 4, !tbaa !20
  %i.xp = tail call i32 @llvm.umin.i32(i32 %i.xo, i32 %i.xl)
  store i32 %i.xp, ptr %i.xn, align 4, !tbaa !20
  br label %.critedge

bb.dg:                                            ; preds = %bb.q
  %i.xq = getelementptr inbounds nuw i8, ptr %i.ef, i64 1
  %i.xr = load i8, ptr %i.xq, align 1, !tbaa !22
  switch i8 %i.xr, label %.critedge [
    i8 101, label %bb.dh
    i8 121, label %bb.dl
  ]

bb.dh:                                            ; preds = %bb.dg
  %i.xs = getelementptr inbounds nuw i8, ptr %i.ef, i64 2
  %i.xt = load i8, ptr %i.xs, align 1, !tbaa !22
  %i.xu = icmp eq i8 %i.xt, 115
  br i1 %i.xu, label %bb.di, label %.critedge

bb.di:                                            ; preds = %bb.dh
  %i.xv = getelementptr inbounds nuw i8, ptr %i.ef, i64 3
  %i.xw = load i8, ptr %i.xv, align 1, !tbaa !22
  %i.xx = icmp eq i8 %i.xw, 115
  br i1 %i.xx, label %bb.dj, label %.critedge

bb.dj:                                            ; preds = %bb.di
  %i.xy = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  %i.xz = load i8, ptr %i.xy, align 1, !tbaa !22
  %i.ya = icmp eq i8 %i.xz, 32
  br i1 %i.ya, label %bb.dk, label %.critedge

bb.dk:                                            ; preds = %bb.dj
  %i.yb = shl i64 93, %i.v
  %i.yc = add nuw i64 %i.yb, %i.x
  %i.yd = shl i64 %i.yc, 5
  %i.ye = or disjoint i64 %i.yd, %i.s
  %i.yf = trunc i64 %i.ye to i32
  %i.yg = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.s
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yg, i64 20 ; 2 uses
  %i.yi = load i32, ptr %i.yh, align 4, !tbaa !20
  %i.yj = tail call i32 @llvm.umin.i32(i32 %i.yi, i32 %i.yf)
  store i32 %i.yj, ptr %i.yh, align 4, !tbaa !20
  br label %.critedge

bb.dl:                                            ; preds = %bb.dg
  %i.yk = getelementptr inbounds nuw i8, ptr %i.ef, i64 2
  %i.yl = load i8, ptr %i.yk, align 1, !tbaa !22
  %i.ym = icmp eq i8 %i.yl, 32
  br i1 %i.ym, label %bb.dm, label %.critedge

bb.dm:                                            ; preds = %bb.dl
  %i.yn = shl i64 61, %i.v
  %i.yo = add nuw i64 %i.yn, %i.x
  %i.yp = shl i64 %i.yo, 5
  %i.yq = or disjoint i64 %i.yp, %i.s
  %i.yr = trunc i64 %i.yq to i32
  %i.ys = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.s
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 12 ; 2 uses
  %i.yu = load i32, ptr %i.yt, align 4, !tbaa !20
  %i.yv = tail call i32 @llvm.umin.i32(i32 %i.yu, i32 %i.yr)
  store i32 %i.yv, ptr %i.yt, align 4, !tbaa !20
  br label %.critedge

bb.dn:                                            ; preds = %bb.q
  %i.yw = getelementptr inbounds nuw i8, ptr %i.ef, i64 1
  %i.yx = load i8, ptr %i.yw, align 1, !tbaa !22
  %i.yy = icmp eq i8 %i.yx, 117
  br i1 %i.yy, label %bb.do, label %.critedge

bb.do:                                            ; preds = %bb.dn
  %i.yz = getelementptr inbounds nuw i8, ptr %i.ef, i64 2
  %i.za = load i8, ptr %i.yz, align 1, !tbaa !22
  %i.zb = icmp eq i8 %i.za, 115
  br i1 %i.zb, label %bb.dp, label %.critedge

bb.dp:                                            ; preds = %bb.do
  %i.zc = getelementptr inbounds nuw i8, ptr %i.ef, i64 3
  %i.zd = load i8, ptr %i.zc, align 1, !tbaa !22
  %i.ze = icmp eq i8 %i.zd, 32
  br i1 %i.ze, label %bb.dq, label %.critedge

bb.dq:                                            ; preds = %bb.dp
  %i.zf = shl i64 106, %i.v
  %i.zg = add nuw i64 %i.zf, %i.x
  %i.zh = shl i64 %i.zg, 5
  %i.zi = or disjoint i64 %i.zh, %i.s
  %i.zj = trunc i64 %i.zi to i32
  %i.zk = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.s
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zk, i64 16 ; 2 uses
  %i.zm = load i32, ptr %i.zl, align 4, !tbaa !20
  %i.zn = tail call i32 @llvm.umin.i32(i32 %i.zm, i32 %i.zj)
  store i32 %i.zn, ptr %i.zl, align 4, !tbaa !20
  br label %.critedge

bb.dr:                                            ; preds = %bb.b
  %.not817 = icmp eq i8 %.sroa.7583.0.copyload, 10 ; 12 uses
  %.sroa.0580.0.insert.ext = zext nneg i8 %i.r to i32 ; 2 uses
  %i.zo = icmp ult i64 %3, %i.s
  br i1 %i.zo, label %.critedge, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %.sroa.9.0.insert.ext = zext i16 %.sroa.9.0.copyload to i32
  %i.zp = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.s
  %i.zq = load i32, ptr %i.zp, align 4, !tbaa !20
  %i.zr = zext i32 %i.zq to i64
  %narrow.i856 = mul nuw nsw i32 %.sroa.9.0.insert.ext, %.sroa.0580.0.insert.ext
  %i.zs = zext nneg i32 %narrow.i856 to i64
  %i.zt = load ptr, ptr %i.m, align 8, !tbaa !45
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zt, i64 %i.zr
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zu, i64 %i.zs ; 3 uses
  %cond = icmp eq i8 %.sroa.7583.0.copyload, 10
  br i1 %cond, label %bb.dt, label %.preheader1139

.preheader1139:                                   ; preds = %bb.ds
  %.not1318 = icmp eq i8 %i.r, 0
  br i1 %.not1318, label %IsMatch.exit863.thread1047, label %.lr.ph1196

bb.dt:                                            ; preds = %bb.ds
  %i.zw = load i8, ptr %i.zv, align 1, !tbaa !22  ; 2 uses
  %i.zx = add i8 %i.zw, -97
  %or.cond.i857 = icmp ult i8 %i.zx, 26
  br i1 %or.cond.i857, label %bb.du, label %.critedge

bb.du:                                            ; preds = %bb.dt
  %i.zy = load i8, ptr %1, align 1, !tbaa !22
  %i.zz = xor i8 %i.zy, %i.zw
  %i.aaa = icmp eq i8 %i.zz, 32
  br i1 %i.aaa, label %bb.dv, label %.critedge

bb.dv:                                            ; preds = %bb.du
  %i.aab = getelementptr inbounds nuw i8, ptr %i.zv, i64 1 ; 4 uses
  %i.aac = add nsw i32 %.sroa.0580.0.insert.ext, -1 ; 2 uses
  %i.aad = zext i32 %i.aac to i64                 ; 3 uses
  %i.aae = icmp ugt i32 %i.aac, 7
  br i1 %i.aae, label %.lr.ph, label %.preheader1142

.preheader1142:                                   ; preds = %bb.dx, %bb.dv
  %.026.i869.lcssa = phi ptr [ %i.aab, %bb.dv ], [ %i.aan, %bb.dx ] ; 3 uses
  %.024.i870.lcssa = phi ptr [ %i.n, %bb.dv ], [ %i.aam, %bb.dx ]
  %.022.i871.lcssa = phi i64 [ %i.aad, %bb.dv ], [ %i.aao, %bb.dx ] ; 3 uses
  %.not.i8761172 = icmp eq i64 %.022.i871.lcssa, 0
  br i1 %.not.i8761172, label %.critedge.i877, label %.lr.ph1176.preheader

.lr.ph1176.preheader:                             ; preds = %.preheader1142
  %scevgep = getelementptr i8, ptr %.026.i869.lcssa, i64 %.022.i871.lcssa
  br label %.lr.ph1176

.lr.ph:                                           ; preds = %bb.dv, %bb.dx
  %.022.i8711169 = phi i64 [ %i.aao, %bb.dx ], [ %i.aad, %bb.dv ]
  %.024.i8701168 = phi ptr [ %i.aam, %bb.dx ], [ %i.n, %bb.dv ] ; 2 uses
  %.026.i8691167 = phi ptr [ %i.aan, %bb.dx ], [ %i.aab, %bb.dv ] ; 3 uses
  %.0.copyload.i1028 = load i64, ptr %.024.i8701168, align 1 ; 2 uses
  %.0.copyload.i1027 = load i64, ptr %.026.i8691167, align 1 ; 2 uses
  %.not30.i879 = icmp eq i64 %.0.copyload.i1028, %.0.copyload.i1027
  br i1 %.not30.i879, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %.lr.ph
  %i.aaf = xor i64 %.0.copyload.i1027, %.0.copyload.i1028
  %i.aag = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aaf, i1 true)
  %i.aah = ptrtoint ptr %.026.i8691167 to i64
  %i.aai = ptrtoint ptr %i.aab to i64
  %i.aaj = sub i64 %i.aah, %i.aai
  %i.aak = lshr i64 %i.aag, 3
  %i.aal = add i64 %i.aaj, %i.aak
  br label %IsMatch.exit863

bb.dx:                                            ; preds = %.lr.ph
  %i.aam = getelementptr inbounds nuw i8, ptr %.024.i8701168, i64 8 ; 2 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %.026.i8691167, i64 8 ; 2 uses
  %i.aao = add i64 %.022.i8711169, -8             ; 3 uses
  %i.aap = icmp ugt i64 %i.aao, 7
  br i1 %i.aap, label %.lr.ph, label %.preheader1142, !llvm.loop !31

.lr.ph1176:                                       ; preds = %.lr.ph1176.preheader, %bb.dy
  %.123.i8751175 = phi i64 [ %i.aat, %bb.dy ], [ %.022.i871.lcssa, %.lr.ph1176.preheader ]
  %.125.i8741174 = phi ptr [ %i.aau, %bb.dy ], [ %.024.i870.lcssa, %.lr.ph1176.preheader ] ; 2 uses
  %.228.i8731173 = phi ptr [ %i.aav, %bb.dy ], [ %.026.i869.lcssa, %.lr.ph1176.preheader ] ; 3 uses
  %i.aaq = load i8, ptr %.228.i8731173, align 1, !tbaa !22
  %i.aar = load i8, ptr %.125.i8741174, align 1, !tbaa !22
  %i.aas = icmp eq i8 %i.aaq, %i.aar
  br i1 %i.aas, label %bb.dy, label %.critedge.i877

bb.dy:                                            ; preds = %.lr.ph1176
  %i.aat = add nsw i64 %.123.i8751175, -1         ; 2 uses
  %i.aau = getelementptr inbounds nuw i8, ptr %.125.i8741174, i64 1
  %i.aav = getelementptr inbounds nuw i8, ptr %.228.i8731173, i64 1
  %.not.i876 = icmp eq i64 %i.aat, 0
  br i1 %.not.i876, label %.critedge.i877, label %.lr.ph1176, !llvm.loop !35

.critedge.i877:                                   ; preds = %bb.dy, %.lr.ph1176, %.preheader1142
  %.228.i873.lcssa = phi ptr [ %.026.i869.lcssa, %.preheader1142 ], [ %.228.i8731173, %.lr.ph1176 ], [ %scevgep, %bb.dy ]
  %i.aaw = ptrtoint ptr %.228.i873.lcssa to i64
  %i.aax = ptrtoint ptr %i.aab to i64
  %i.aay = sub i64 %i.aaw, %i.aax
  br label %IsMatch.exit863

.lr.ph1196:                                       ; preds = %.preheader1139, %bb.eb
  %.0.i8591195 = phi i64 [ %i.abf, %bb.eb ], [ 0, %.preheader1139 ] ; 3 uses
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.zv, i64 %.0.i8591195
  %i.aba = load i8, ptr %i.aaz, align 1, !tbaa !22 ; 3 uses
  %i.abb = add i8 %i.aba, -97
  %or.cond40.i860 = icmp ult i8 %i.abb, 26
  %i.abc = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i8591195
  %i.abd = load i8, ptr %i.abc, align 1, !tbaa !22 ; 2 uses
  br i1 %or.cond40.i860, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %.lr.ph1196
  %i.abe = xor i8 %i.abd, %i.aba
  %.not39.i862 = icmp eq i8 %i.abe, 32
  br i1 %.not39.i862, label %bb.eb, label %.critedge

bb.ea:                                            ; preds = %.lr.ph1196
  %.not.i861 = icmp eq i8 %i.aba, %i.abd
  br i1 %.not.i861, label %bb.eb, label %.critedge

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  %i.abf = add nuw nsw i64 %.0.i8591195, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.abf, %i.s
  br i1 %exitcond.not, label %IsMatch.exit863.thread1047, label %.lr.ph1196, !llvm.loop !36

IsMatch.exit863:                                  ; preds = %.critedge.i877, %bb.dw
  %.2.i878 = phi i64 [ %i.aal, %bb.dw ], [ %i.aay, %.critedge.i877 ]
  %i.abg = icmp eq i64 %.2.i878, %i.aad
  br i1 %i.abg, label %IsMatch.exit863.thread1047, label %.critedge, !llvm.loop !34

IsMatch.exit863.thread1047:                       ; preds = %bb.eb, %.preheader1139, %IsMatch.exit863
  %i.abh = select i1 %.not817, i64 9, i64 44
  %i.abi = shl i64 %i.abh, %i.v
  %i.abj = add i64 %i.abi, %i.x
  %i.abk = shl i64 %i.abj, 5
  %i.abl = or disjoint i64 %i.abk, %i.s
  %i.abm = trunc i64 %i.abl to i32
  %i.abn = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.s ; 7 uses
  %i.abo = load i32, ptr %i.abn, align 4, !tbaa !20
  %i.abp = tail call i32 @llvm.umin.i32(i32 %i.abo, i32 %i.abm)
  store i32 %i.abp, ptr %i.abn, align 4, !tbaa !20
  %i.abq = add nuw nsw i64 %i.s, 1                ; 7 uses
  %.not819 = icmp ult i64 %i.abq, %3
  br i1 %.not819, label %bb.ec, label %.critedge, !llvm.loop !34

bb.ec:                                            ; preds = %IsMatch.exit863.thread1047
  %i.abr = getelementptr inbounds nuw i8, ptr %1, i64 %i.s ; 5 uses
  %i.abs = load i8, ptr %i.abr, align 1, !tbaa !22
  switch i8 %i.abs, label %.critedge [
    i8 32, label %bb.ed
    i8 34, label %bb.ee
    i8 46, label %bb.eg
    i8 44, label %bb.ei
    i8 39, label %bb.ek
    i8 40, label %bb.el
    i8 61, label %bb.em
  ]

bb.ed:                                            ; preds = %bb.ec
  %i.abt = select i1 %.not817, i64 4, i64 68
  %i.abu = shl i64 %i.abt, %i.v
  %i.abv = add i64 %i.abu, %i.x
  %i.abw = shl i64 %i.abv, 5
  %i.abx = or disjoint i64 %i.abw, %i.s
  %i.aby = trunc i64 %i.abx to i32
  %i.abz = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.abq ; 2 uses
  %i.aca = load i32, ptr %i.abz, align 4, !tbaa !20
  %i.acb = tail call i32 @llvm.umin.i32(i32 %i.aca, i32 %i.aby)
  store i32 %i.acb, ptr %i.abz, align 4, !tbaa !20
  br label %.critedge

bb.ee:                                            ; preds = %bb.ec
  %i.acc = select i1 %.not817, i64 66, i64 87
  %i.acd = shl i64 %i.acc, %i.v
  %i.ace = add i64 %i.acd, %i.x
  %i.acf = shl i64 %i.ace, 5
  %i.acg = or disjoint i64 %i.acf, %i.s
  %i.ach = trunc i64 %i.acg to i32
  %i.aci = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.abq ; 2 uses
  %i.acj = load i32, ptr %i.aci, align 4, !tbaa !20
  %i.ack = tail call i32 @llvm.umin.i32(i32 %i.acj, i32 %i.ach)
  store i32 %i.ack, ptr %i.aci, align 4, !tbaa !20
  %i.acl = getelementptr inbounds nuw i8, ptr %i.abr, i64 1
  %i.acm = load i8, ptr %i.acl, align 1, !tbaa !22
  %i.acn = icmp eq i8 %i.acm, 62
  br i1 %i.acn, label %bb.ef, label %.critedge

bb.ef:                                            ; preds = %bb.ee
  %i.aco = select i1 %.not817, i64 69, i64 97
  %i.acp = shl i64 %i.aco, %i.v
  %i.acq = add i64 %i.acp, %i.x
  %i.acr = shl i64 %i.acq, 5
  %i.acs = or disjoint i64 %i.acr, %i.s
  %i.act = trunc i64 %i.acs to i32
  %i.acu = getelementptr inbounds nuw i8, ptr %i.abn, i64 8 ; 2 uses
  %i.acv = load i32, ptr %i.acu, align 4, !tbaa !20
  %i.acw = tail call i32 @llvm.umin.i32(i32 %i.acv, i32 %i.act)
  store i32 %i.acw, ptr %i.acu, align 4, !tbaa !20
  br label %.critedge

bb.eg:                                            ; preds = %bb.ec
  %i.acx = select i1 %.not817, i64 79, i64 101
  %i.acy = shl i64 %i.acx, %i.v
  %i.acz = add i64 %i.acy, %i.x
  %i.ada = shl i64 %i.acz, 5
  %i.adb = or disjoint i64 %i.ada, %i.s
  %i.adc = trunc i64 %i.adb to i32
  %i.add = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.abq ; 2 uses
  %i.ade = load i32, ptr %i.add, align 4, !tbaa !20
  %i.adf = tail call i32 @llvm.umin.i32(i32 %i.ade, i32 %i.adc)
  store i32 %i.adf, ptr %i.add, align 4, !tbaa !20
  %i.adg = getelementptr inbounds nuw i8, ptr %i.abr, i64 1
  %i.adh = load i8, ptr %i.adg, align 1, !tbaa !22
  %i.adi = icmp eq i8 %i.adh, 32
  br i1 %i.adi, label %bb.eh, label %.critedge

bb.eh:                                            ; preds = %bb.eg
  %i.adj = select i1 %.not817, i64 88, i64 114
  %i.adk = shl i64 %i.adj, %i.v
  %i.adl = add i64 %i.adk, %i.x
  %i.adm = shl i64 %i.adl, 5
  %i.adn = or disjoint i64 %i.adm, %i.s
  %i.ado = trunc i64 %i.adn to i32
  %i.adp = getelementptr inbounds nuw i8, ptr %i.abn, i64 8 ; 2 uses
  %i.adq = load i32, ptr %i.adp, align 4, !tbaa !20
  %i.adr = tail call i32 @llvm.umin.i32(i32 %i.adq, i32 %i.ado)
  store i32 %i.adr, ptr %i.adp, align 4, !tbaa !20
  br label %.critedge

bb.ei:                                            ; preds = %bb.ec
  %i.ads = select i1 %.not817, i64 99, i64 112
  %i.adt = shl i64 %i.ads, %i.v
  %i.adu = add i64 %i.adt, %i.x
  %i.adv = shl i64 %i.adu, 5
  %i.adw = or disjoint i64 %i.adv, %i.s
  %i.adx = trunc i64 %i.adw to i32
  %i.ady = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.abq ; 2 uses
  %i.adz = load i32, ptr %i.ady, align 4, !tbaa !20
  %i.aea = tail call i32 @llvm.umin.i32(i32 %i.adz, i32 %i.adx)
  store i32 %i.aea, ptr %i.ady, align 4, !tbaa !20
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.abr, i64 1
  %i.aec = load i8, ptr %i.aeb, align 1, !tbaa !22
  %i.aed = icmp eq i8 %i.aec, 32
  br i1 %i.aed, label %bb.ej, label %.critedge

bb.ej:                                            ; preds = %bb.ei
  %i.aee = select i1 %.not817, i64 58, i64 107
  %i.aef = shl i64 %i.aee, %i.v
  %i.aeg = add i64 %i.aef, %i.x
  %i.aeh = shl i64 %i.aeg, 5
  %i.aei = or disjoint i64 %i.aeh, %i.s
  %i.aej = trunc i64 %i.aei to i32
  %i.aek = getelementptr inbounds nuw i8, ptr %i.abn, i64 8 ; 2 uses
  %i.ael = load i32, ptr %i.aek, align 4, !tbaa !20
  %i.aem = tail call i32 @llvm.umin.i32(i32 %i.ael, i32 %i.aej)
  store i32 %i.aem, ptr %i.aek, align 4, !tbaa !20
  br label %.critedge

bb.ek:                                            ; preds = %bb.ec
  %i.aen = select i1 %.not817, i64 74, i64 94
  %i.aeo = shl i64 %i.aen, %i.v
  %i.aep = add i64 %i.aeo, %i.x
  %i.aeq = shl i64 %i.aep, 5
  %i.aer = or disjoint i64 %i.aeq, %i.s
  %i.aes = trunc i64 %i.aer to i32
  %i.aet = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.abq ; 2 uses
  %i.aeu = load i32, ptr %i.aet, align 4, !tbaa !20
  %i.aev = tail call i32 @llvm.umin.i32(i32 %i.aeu, i32 %i.aes)
  store i32 %i.aev, ptr %i.aet, align 4, !tbaa !20
  br label %.critedge

bb.el:                                            ; preds = %bb.ec
  %i.aew = select i1 %.not817, i64 78, i64 113
  %i.aex = shl i64 %i.aew, %i.v
  %i.aey = add i64 %i.aex, %i.x
  %i.aez = shl i64 %i.aey, 5
  %i.afa = or disjoint i64 %i.aez, %i.s
  %i.afb = trunc i64 %i.afa to i32
  %i.afc = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.abq ; 2 uses
  %i.afd = load i32, ptr %i.afc, align 4, !tbaa !20
  %i.afe = tail call i32 @llvm.umin.i32(i32 %i.afd, i32 %i.afb)
  store i32 %i.afe, ptr %i.afc, align 4, !tbaa !20
  br label %.critedge

bb.em:                                            ; preds = %bb.ec
  %i.aff = getelementptr inbounds nuw i8, ptr %i.abr, i64 1
  %i.afg = load i8, ptr %i.aff, align 1, !tbaa !22
  switch i8 %i.afg, label %.critedge [
    i8 34, label %bb.en
    i8 39, label %bb.eo
  ]

bb.en:                                            ; preds = %bb.em
  %i.afh = select i1 %.not817, i64 104, i64 105
  %i.afi = shl i64 %i.afh, %i.v
  %i.afj = add i64 %i.afi, %i.x
  %i.afk = shl i64 %i.afj, 5
  %i.afl = or disjoint i64 %i.afk, %i.s
  %i.afm = trunc i64 %i.afl to i32
  %i.afn = getelementptr inbounds nuw i8, ptr %i.abn, i64 8 ; 2 uses
  %i.afo = load i32, ptr %i.afn, align 4, !tbaa !20
  %i.afp = tail call i32 @llvm.umin.i32(i32 %i.afo, i32 %i.afm)
  store i32 %i.afp, ptr %i.afn, align 4, !tbaa !20
  br label %.critedge

bb.eo:                                            ; preds = %bb.em
  %i.afq = select i1 %.not817, i64 108, i64 116
  %i.afr = shl i64 %i.afq, %i.v
  %i.afs = add i64 %i.afr, %i.x
  %i.aft = shl i64 %i.afs, 5
  %i.afu = or disjoint i64 %i.aft, %i.s
  %i.afv = trunc i64 %i.afu to i32
  %i.afw = getelementptr inbounds nuw i8, ptr %i.abn, i64 8 ; 2 uses
  %i.afx = load i32, ptr %i.afw, align 4, !tbaa !20
  %i.afy = tail call i32 @llvm.umin.i32(i32 %i.afx, i32 %i.afv)
  store i32 %i.afy, ptr %i.afw, align 4, !tbaa !20
  br label %.critedge

.critedge:                                        ; preds = %bb.dz, %bb.ea, %bb.du, %bb.dt, %bb.dr, %IsMatch.exit863, %IsMatch.exit863.thread1047, %bb.em, %bb.ec, %bb.ef, %bb.ee, %bb.ej, %bb.ei, %bb.el, %bb.en, %bb.eo, %bb.ek, %bb.eg, %bb.eh, %bb.ed, %._crit_edge, %bb.p, %bb.ad, %bb.ac, %bb.ab, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.ak, %bb.al, %bb.am, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bg, %bb.bf, %bb.be, %bb.bc, %bb.bd, %bb.bh, %bb.bi, %bb.at, %bb.as, %bb.au, %bb.av, %bb.ag, %bb.af, %bb.ah, %bb.ai, %bb.t, %bb.x, %bb.w, %bb.y, %bb.z, %bb.aa, %bb.u, %bb.v, %bb.br, %bb.bs, %bb.by, %bb.bx, %bb.bw, %bb.bu, %bb.bv, %bb.bq, %bb.cc, %bb.cb, %bb.ce, %bb.cg, %bb.cm, %bb.cl, %bb.ck, %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.dm, %bb.dl, %bb.dh, %bb.di, %bb.dj, %bb.dk, %bb.dn, %bb.do, %bb.dp, %bb.dq, %bb.dc, %bb.db, %bb.da, %bb.dd, %bb.de, %bb.df, %bb.cp, %bb.co, %bb.cu, %bb.ct, %bb.cs, %bb.cq, %bb.cr, %bb.ci, %bb.cj, %bb.cf, %bb.cd, %bb.bz, %bb.ca, %bb.bo, %bb.bp, %bb.s, %bb.ae, %bb.aj, %bb.ar, %bb.bb, %bb.ba, %bb.r, %bb.bt, %bb.ch, %bb.cn, %bb.cz, %bb.dg, %bb.q
  %.6 = phi i32 [ %.3761.lcssa, %._crit_edge ], [ %.3761.lcssa, %bb.q ], [ %.3761.lcssa, %bb.p ], [ %.3761.lcssa, %bb.ad ], [ %.3761.lcssa, %bb.ac ], [ %.3761.lcssa, %bb.ab ], [ %.3761.lcssa, %bb.aq ], [ %.3761.lcssa, %bb.ap ], [ %.3761.lcssa, %bb.ao ], [ %.3761.lcssa, %bb.an ], [ %.3761.lcssa, %bb.ak ], [ %.3761.lcssa, %bb.al ], [ %.3761.lcssa, %bb.am ], [ %.3761.lcssa, %bb.az ], [ %.3761.lcssa, %bb.ay ], [ %.3761.lcssa, %bb.ax ], [ %.3761.lcssa, %bb.aw ], [ %.3761.lcssa, %bb.bn ], [ %.3761.lcssa, %bb.bm ], [ %.3761.lcssa, %bb.bl ], [ %.3761.lcssa, %bb.bk ], [ %.3761.lcssa, %bb.bj ], [ %.3761.lcssa, %bb.bg ], [ %.3761.lcssa, %bb.bf ], [ %.3761.lcssa, %bb.be ], [ %.3761.lcssa, %bb.bc ], [ %.3761.lcssa, %bb.bd ], [ %.3761.lcssa, %bb.bh ], [ %.3761.lcssa, %bb.bi ], [ %.3761.lcssa, %bb.at ], [ %.3761.lcssa, %bb.as ], [ %.3761.lcssa, %bb.au ], [ %.3761.lcssa, %bb.av ], [ %.3761.lcssa, %bb.ag ], [ %.3761.lcssa, %bb.af ], [ %.3761.lcssa, %bb.ah ], [ %.3761.lcssa, %bb.ai ], [ %.3761.lcssa, %bb.t ], [ %.3761.lcssa, %bb.x ], [ %.3761.lcssa, %bb.w ], [ %.3761.lcssa, %bb.y ], [ %.3761.lcssa, %bb.z ], [ %.3761.lcssa, %bb.aa ], [ %.3761.lcssa, %bb.u ], [ %.3761.lcssa, %bb.v ], [ %.3761.lcssa, %bb.br ], [ %.3761.lcssa, %bb.bs ], [ %.3761.lcssa, %bb.by ], [ %.3761.lcssa, %bb.bx ], [ %.3761.lcssa, %bb.bw ], [ %.3761.lcssa, %bb.bu ], [ %.3761.lcssa, %bb.bv ], [ %.3761.lcssa, %bb.bq ], [ %.3761.lcssa, %bb.cc ], [ %.3761.lcssa, %bb.cb ], [ %.3761.lcssa, %bb.ce ], [ %.3761.lcssa, %bb.cg ], [ %.3761.lcssa, %bb.cm ], [ %.3761.lcssa, %bb.cl ], [ %.3761.lcssa, %bb.ck ], [ %.3761.lcssa, %bb.cy ], [ %.3761.lcssa, %bb.cx ], [ %.3761.lcssa, %bb.cw ], [ %.3761.lcssa, %bb.cv ], [ %.3761.lcssa, %bb.dm ], [ %.3761.lcssa, %bb.dl ], [ %.3761.lcssa, %bb.dh ], [ %.3761.lcssa, %bb.di ], [ %.3761.lcssa, %bb.dj ], [ %.3761.lcssa, %bb.dk ], [ %.3761.lcssa, %bb.dn ], [ %.3761.lcssa, %bb.do ], [ %.3761.lcssa, %bb.dp ], [ %.3761.lcssa, %bb.dq ], [ %.3761.lcssa, %bb.dc ], [ %.3761.lcssa, %bb.db ], [ %.3761.lcssa, %bb.da ], [ %.3761.lcssa, %bb.dd ], [ %.3761.lcssa, %bb.de ], [ %.3761.lcssa, %bb.df ], [ %.3761.lcssa, %bb.cp ], [ %.3761.lcssa, %bb.co ], [ %.3761.lcssa, %bb.cu ], [ %.3761.lcssa, %bb.ct ], [ %.3761.lcssa, %bb.cs ], [ %.3761.lcssa, %bb.cq ], [ %.3761.lcssa, %bb.cr ], [ %.3761.lcssa, %bb.ci ], [ %.3761.lcssa, %bb.cj ], [ %.3761.lcssa, %bb.cf ], [ %.3761.lcssa, %bb.cd ], [ %.3761.lcssa, %bb.bz ], [ %.3761.lcssa, %bb.ca ], [ %.3761.lcssa, %bb.bo ], [ %.3761.lcssa, %bb.bp ], [ %.3761.lcssa, %bb.s ], [ %.3761.lcssa, %bb.ae ], [ %.3761.lcssa, %bb.aj ], [ %.3761.lcssa, %bb.ar ], [ %.3761.lcssa, %bb.bb ], [ %.3761.lcssa, %bb.ba ], [ %.3761.lcssa, %bb.r ], [ %.3761.lcssa, %bb.bt ], [ %.3761.lcssa, %bb.ch ], [ %.3761.lcssa, %bb.cn ], [ %.3761.lcssa, %bb.cz ], [ %.3761.lcssa, %bb.dg ], [ %.07581217, %IsMatch.exit863 ], [ 1, %IsMatch.exit863.thread1047 ], [ 1, %bb.em ], [ 1, %bb.ec ], [ 1, %bb.ef ], [ 1, %bb.ee ], [ 1, %bb.ej ], [ 1, %bb.ei ], [ 1, %bb.el ], [ 1, %bb.en ], [ 1, %bb.eo ], [ 1, %bb.ek ], [ 1, %bb.eg ], [ 1, %bb.eh ], [ 1, %bb.ed ], [ %.07581217, %bb.dr ], [ %.07581217, %bb.dt ], [ %.07581217, %bb.du ], [ %.07581217, %bb.ea ], [ %.07581217, %bb.dz ] ; 2 uses
  br i1 %i.y, label %._crit_edge1220, label %bb.b

._crit_edge1220:                                  ; preds = %.critedge, %bb.a
  %.0758.lcssa = phi i32 [ 0, %bb.a ], [ %.6, %.critedge ] ; 4 uses
  %i.afz = icmp ugt i64 %3, 4
  br i1 %i.afz, label %bb.ep, label %.thread1099

bb.ep:                                            ; preds = %._crit_edge1220
  %i.aga = load i8, ptr %1, align 1, !tbaa !22    ; 2 uses
  switch i8 %i.aga, label %.loopexit [
    i8 32, label %bb.eq
    i8 46, label %bb.eq
  ]

bb.eq:                                            ; preds = %bb.ep, %bb.ep
  %i.agb = icmp eq i8 %i.aga, 32                  ; 5 uses
  %i.agc = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 5 uses
  %.0.copyload.i864 = load i32, ptr %i.agc, align 1
  %i.agd = mul i32 %.0.copyload.i864, 506832829
  %i.age = lshr i32 %i.agd, 17
  %i.agf = zext nneg i32 %i.age to i64
  %i.agg = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.agf
  %i.agh = load i16, ptr %i.agg, align 2, !tbaa !42 ; 2 uses
  %.not807 = icmp eq i16 %i.agh, 0
  br i1 %.not807, label %.loopexit, label %.lr.ph1274

.lr.ph1274:                                       ; preds = %bb.eq
  %i.agi = zext i16 %i.agh to i64
  %i.agj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.agk = load ptr, ptr %i.agj, align 8, !tbaa !43
  %i.agl = load ptr, ptr %0, align 8, !tbaa !21   ; 3 uses
  %i.agm = add i64 %3, -1                         ; 2 uses
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agl, i64 32 ; 2 uses
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agl, i64 168 ; 2 uses
  %i.agp = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.agq = select i1 %i.agb, i64 6, i64 32
  %i.agr = select i1 %i.agb, i64 89, i64 67
  %i.ags = select i1 %i.agb, i64 2, i64 77
  br label %bb.er

bb.er:                                            ; preds = %.lr.ph1274, %IsMatch.exit852.thread
  %.07561272 = phi i64 [ %i.agi, %.lr.ph1274 ], [ %i.agt, %IsMatch.exit852.thread ] ; 2 uses
  %.71271 = phi i32 [ %.0758.lcssa, %.lr.ph1274 ], [ %.11, %IsMatch.exit852.thread ] ; 9 uses
  %i.agt = add i64 %.07561272, 1
  %i.agu = getelementptr inbounds nuw [4 x i8], ptr %i.agk, i64 %.07561272 ; 3 uses
  %.sroa.0153.0.copyload = load i8, ptr %i.agu, align 2, !tbaa !22 ; 2 uses
  %.sroa.8160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.agu, i64 1
  %.sroa.8160.0.copyload = load i8, ptr %.sroa.8160.0..sroa_idx, align 1, !tbaa !22 ; 3 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.agu, i64 2
  %.sroa.10.0.copyload = load i16, ptr %.sroa.10.0..sroa_idx, align 2, !tbaa !42 ; 2 uses
  %i.agv = and i8 %.sroa.0153.0.copyload, 31      ; 4 uses
  %i.agw = zext nneg i8 %i.agv to i64             ; 39 uses
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agl, i64 %i.agw
  %i.agy = load i8, ptr %i.agx, align 1, !tbaa !22
  %i.agz = zext nneg i8 %i.agy to i64             ; 17 uses
  %i.aha = zext i16 %.sroa.10.0.copyload to i64   ; 18 uses
  %i.ahb = icmp slt i8 %.sroa.0153.0.copyload, 0
  %i.ahc = icmp eq i8 %.sroa.8160.0.copyload, 0
  br i1 %i.ahc, label %bb.es, label %bb.fj

bb.es:                                            ; preds = %bb.er
  %i.ahd = icmp ult i64 %i.agm, %i.agw
  br i1 %i.ahd, label %IsMatch.exit852.thread, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.ahe = getelementptr inbounds nuw [4 x i8], ptr %i.agn, i64 %i.agw
  %i.ahf = load i32, ptr %i.ahe, align 4, !tbaa !20
  %i.ahg = zext i32 %i.ahf to i64
  %narrow.i845 = mul nuw nsw i64 %i.aha, %i.agw
  %i.ahh = load ptr, ptr %i.ago, align 8, !tbaa !45
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahh, i64 %i.ahg
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahi, i64 %narrow.i845 ; 4 uses
  %i.ahk = icmp samesign ugt i8 %i.agv, 7
  br i1 %i.ahk, label %.lr.ph1259, label %.preheader1133

.preheader1133:                                   ; preds = %bb.ev, %bb.et
  %.026.i883.lcssa = phi ptr [ %i.ahj, %bb.et ], [ %i.aht, %bb.ev ] ; 3 uses
  %.024.i884.lcssa = phi ptr [ %i.agc, %bb.et ], [ %i.ahs, %bb.ev ]
  %.022.i885.lcssa = phi i64 [ %i.agw, %bb.et ], [ %i.ahu, %bb.ev ] ; 3 uses
  %.not.i8901263 = icmp eq i64 %.022.i885.lcssa, 0
  br i1 %.not.i8901263, label %.critedge.i891, label %.lr.ph1267.preheader

.lr.ph1267.preheader:                             ; preds = %.preheader1133
  %scevgep1372 = getelementptr i8, ptr %.026.i883.lcssa, i64 %.022.i885.lcssa
  br label %.lr.ph1267

.lr.ph1259:                                       ; preds = %bb.et, %bb.ev
  %.022.i8851257 = phi i64 [ %i.ahu, %bb.ev ], [ %i.agw, %bb.et ]
  %.024.i8841256 = phi ptr [ %i.ahs, %bb.ev ], [ %i.agc, %bb.et ] ; 2 uses
  %.026.i8831255 = phi ptr [ %i.aht, %bb.ev ], [ %i.ahj, %bb.et ] ; 3 uses
  %.0.copyload.i1026 = load i64, ptr %.024.i8841256, align 1 ; 2 uses
  %.0.copyload.i1025 = load i64, ptr %.026.i8831255, align 1 ; 2 uses
  %.not30.i893 = icmp eq i64 %.0.copyload.i1026, %.0.copyload.i1025
  br i1 %.not30.i893, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %.lr.ph1259
  %i.ahl = xor i64 %.0.copyload.i1025, %.0.copyload.i1026
  %i.ahm = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ahl, i1 true)
  %i.ahn = ptrtoint ptr %.026.i8831255 to i64
  %i.aho = ptrtoint ptr %i.ahj to i64
  %i.ahp = sub i64 %i.ahn, %i.aho
  %i.ahq = lshr i64 %i.ahm, 3
  %i.ahr = add i64 %i.ahp, %i.ahq
  br label %FindMatchLengthWithLimit.exit896

bb.ev:                                            ; preds = %.lr.ph1259
  %i.ahs = getelementptr inbounds nuw i8, ptr %.024.i8841256, i64 8 ; 2 uses
  %i.aht = getelementptr inbounds nuw i8, ptr %.026.i8831255, i64 8 ; 2 uses
  %i.ahu = add i64 %.022.i8851257, -8             ; 3 uses
  %i.ahv = icmp ugt i64 %i.ahu, 7
  br i1 %i.ahv, label %.lr.ph1259, label %.preheader1133, !llvm.loop !31

.lr.ph1267:                                       ; preds = %.lr.ph1267.preheader, %bb.ew
  %.123.i8891266 = phi i64 [ %i.ahz, %bb.ew ], [ %.022.i885.lcssa, %.lr.ph1267.preheader ]
  %.125.i8881265 = phi ptr [ %i.aia, %bb.ew ], [ %.024.i884.lcssa, %.lr.ph1267.preheader ] ; 2 uses
  %.228.i8871264 = phi ptr [ %i.aib, %bb.ew ], [ %.026.i883.lcssa, %.lr.ph1267.preheader ] ; 3 uses
  %i.ahw = load i8, ptr %.228.i8871264, align 1, !tbaa !22
  %i.ahx = load i8, ptr %.125.i8881265, align 1, !tbaa !22
  %i.ahy = icmp eq i8 %i.ahw, %i.ahx
  br i1 %i.ahy, label %bb.ew, label %.critedge.i891

bb.ew:                                            ; preds = %.lr.ph1267
  %i.ahz = add nsw i64 %.123.i8891266, -1         ; 2 uses
  %i.aia = getelementptr inbounds nuw i8, ptr %.125.i8881265, i64 1
  %i.aib = getelementptr inbounds nuw i8, ptr %.228.i8871264, i64 1
  %.not.i890 = icmp eq i64 %i.ahz, 0
  br i1 %.not.i890, label %.critedge.i891, label %.lr.ph1267, !llvm.loop !35

.critedge.i891:                                   ; preds = %bb.ew, %.lr.ph1267, %.preheader1133
  %.228.i887.lcssa = phi ptr [ %.026.i883.lcssa, %.preheader1133 ], [ %.228.i8871264, %.lr.ph1267 ], [ %scevgep1372, %bb.ew ]
  %i.aic = ptrtoint ptr %.228.i887.lcssa to i64
  %i.aid = ptrtoint ptr %i.ahj to i64
  %i.aie = sub i64 %i.aic, %i.aid
  br label %FindMatchLengthWithLimit.exit896

FindMatchLengthWithLimit.exit896:                 ; preds = %bb.eu, %.critedge.i891
  %.2.i892 = phi i64 [ %i.ahr, %bb.eu ], [ %i.aie, %.critedge.i891 ]
  %.not1121 = icmp eq i64 %.2.i892, %i.agw
  br i1 %.not1121, label %IsMatch.exit852.thread1062, label %IsMatch.exit852.thread, !llvm.loop !37

IsMatch.exit852.thread1062:                       ; preds = %FindMatchLengthWithLimit.exit896
  %i.aif = shl i64 %i.agq, %i.agz
  %i.aig = add i64 %i.aif, %i.aha
  %i.aih = add nuw nsw i64 %i.agw, 1              ; 2 uses
  %i.aii = shl i64 %i.aig, 5
  %i.aij = or disjoint i64 %i.aii, %i.agw
  %i.aik = trunc i64 %i.aij to i32
  %i.ail = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.aih ; 2 uses
  %i.aim = load i32, ptr %i.ail, align 4, !tbaa !20
  %i.ain = tail call i32 @llvm.umin.i32(i32 %i.aim, i32 %i.aik)
  store i32 %i.ain, ptr %i.ail, align 4, !tbaa !20
  %i.aio = add nuw nsw i64 %i.agw, 2              ; 5 uses
  %.not816 = icmp ult i64 %i.aio, %3
  br i1 %.not816, label %bb.ex, label %IsMatch.exit852.thread, !llvm.loop !37

bb.ex:                                            ; preds = %IsMatch.exit852.thread1062
  %i.aip = getelementptr inbounds nuw i8, ptr %1, i64 %i.aih ; 4 uses
  %i.aiq = load i8, ptr %i.aip, align 1, !tbaa !22 ; 2 uses
  switch i8 %i.aiq, label %bb.fa [
    i8 32, label %bb.ey
    i8 40, label %bb.ez
  ]

bb.ey:                                            ; preds = %bb.ex
  %i.air = shl i64 %i.ags, %i.agz
  %i.ais = add i64 %i.air, %i.aha
  %i.ait = shl i64 %i.ais, 5
  %i.aiu = or disjoint i64 %i.ait, %i.agw
  %i.aiv = trunc i64 %i.aiu to i32
  %i.aiw = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.aio ; 2 uses
  %i.aix = load i32, ptr %i.aiw, align 4, !tbaa !20
  %i.aiy = tail call i32 @llvm.umin.i32(i32 %i.aix, i32 %i.aiv)
  store i32 %i.aiy, ptr %i.aiw, align 4, !tbaa !20
  br label %IsMatch.exit852.thread

bb.ez:                                            ; preds = %bb.ex
  %i.aiz = shl i64 %i.agr, %i.agz
  %i.aja = add i64 %i.aiz, %i.aha
  %i.ajb = shl i64 %i.aja, 5
  %i.ajc = or disjoint i64 %i.ajb, %i.agw
  %i.ajd = trunc i64 %i.ajc to i32
  %i.aje = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.aio ; 2 uses
  %i.ajf = load i32, ptr %i.aje, align 4, !tbaa !20
  %i.ajg = tail call i32 @llvm.umin.i32(i32 %i.ajf, i32 %i.ajd)
  store i32 %i.ajg, ptr %i.aje, align 4, !tbaa !20
  br label %IsMatch.exit852.thread

bb.fa:                                            ; preds = %bb.ex
  br i1 %i.agb, label %bb.fb, label %IsMatch.exit852.thread

bb.fb:                                            ; preds = %bb.fa
  switch i8 %i.aiq, label %IsMatch.exit852.thread [
    i8 44, label %bb.fc
    i8 46, label %bb.fe
    i8 61, label %bb.fg
  ]

bb.fc:                                            ; preds = %bb.fb
  %i.ajh = shl i64 103, %i.agz
  %i.aji = add nuw i64 %i.ajh, %i.aha
  %i.ajj = shl i64 %i.aji, 5
  %i.ajk = or disjoint i64 %i.ajj, %i.agw
  %i.ajl = trunc i64 %i.ajk to i32
  %i.ajm = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.aio ; 2 uses
  %i.ajn = load i32, ptr %i.ajm, align 4, !tbaa !20
  %i.ajo = tail call i32 @llvm.umin.i32(i32 %i.ajn, i32 %i.ajl)
  store i32 %i.ajo, ptr %i.ajm, align 4, !tbaa !20
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.aip, i64 1
  %i.ajq = load i8, ptr %i.ajp, align 1, !tbaa !22
  %i.ajr = icmp eq i8 %i.ajq, 32
  br i1 %i.ajr, label %bb.fd, label %IsMatch.exit852.thread

bb.fd:                                            ; preds = %bb.fc
  %i.ajs = shl i64 33, %i.agz
  %i.ajt = add nuw i64 %i.ajs, %i.aha
  %i.aju = shl i64 %i.ajt, 5
  %i.ajv = or disjoint i64 %i.aju, %i.agw
  %i.ajw = trunc i64 %i.ajv to i32
  %i.ajx = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.agw
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.ajx, i64 12 ; 2 uses
  %i.ajz = load i32, ptr %i.ajy, align 4, !tbaa !20
  %i.aka = tail call i32 @llvm.umin.i32(i32 %i.ajz, i32 %i.ajw)
  store i32 %i.aka, ptr %i.ajy, align 4, !tbaa !20
  br label %IsMatch.exit852.thread

bb.fe:                                            ; preds = %bb.fb
  %i.akb = shl i64 71, %i.agz
  %i.akc = add nuw i64 %i.akb, %i.aha
  %i.akd = shl i64 %i.akc, 5
  %i.ake = or disjoint i64 %i.akd, %i.agw
  %i.akf = trunc i64 %i.ake to i32
  %i.akg = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.aio ; 2 uses
  %i.akh = load i32, ptr %i.akg, align 4, !tbaa !20
  %i.aki = tail call i32 @llvm.umin.i32(i32 %i.akh, i32 %i.akf)
  store i32 %i.aki, ptr %i.akg, align 4, !tbaa !20
  %i.akj = getelementptr inbounds nuw i8, ptr %i.aip, i64 1
  %i.akk = load i8, ptr %i.akj, align 1, !tbaa !22
  %i.akl = icmp eq i8 %i.akk, 32
  br i1 %i.akl, label %bb.ff, label %IsMatch.exit852.thread

bb.ff:                                            ; preds = %bb.fe
  %i.akm = shl i64 52, %i.agz
  %i.akn = add nuw i64 %i.akm, %i.aha
  %i.ako = shl i64 %i.akn, 5
  %i.akp = or disjoint i64 %i.ako, %i.agw
  %i.akq = trunc i64 %i.akp to i32
  %i.akr = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.agw
  %i.aks = getelementptr inbounds nuw i8, ptr %i.akr, i64 12 ; 2 uses
  %i.akt = load i32, ptr %i.aks, align 4, !tbaa !20
  %i.aku = tail call i32 @llvm.umin.i32(i32 %i.akt, i32 %i.akq)
  store i32 %i.aku, ptr %i.aks, align 4, !tbaa !20
  br label %IsMatch.exit852.thread

bb.fg:                                            ; preds = %bb.fb
  %i.akv = getelementptr inbounds nuw i8, ptr %i.aip, i64 1
  %i.akw = load i8, ptr %i.akv, align 1, !tbaa !22
  switch i8 %i.akw, label %IsMatch.exit852.thread [
    i8 34, label %bb.fh
    i8 39, label %bb.fi
  ]

bb.fh:                                            ; preds = %bb.fg
  %i.akx = shl i64 81, %i.agz
  %i.aky = add nuw i64 %i.akx, %i.aha
  %i.akz = shl i64 %i.aky, 5
  %i.ala = or disjoint i64 %i.akz, %i.agw
  %i.alb = trunc i64 %i.ala to i32
  %i.alc = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.agw
  %i.ald = getelementptr inbounds nuw i8, ptr %i.alc, i64 12 ; 2 uses
  %i.ale = load i32, ptr %i.ald, align 4, !tbaa !20
  %i.alf = tail call i32 @llvm.umin.i32(i32 %i.ale, i32 %i.alb)
  store i32 %i.alf, ptr %i.ald, align 4, !tbaa !20
  br label %IsMatch.exit852.thread

bb.fi:                                            ; preds = %bb.fg
  %i.alg = shl i64 98, %i.agz
  %i.alh = add nuw i64 %i.alg, %i.aha
  %i.ali = shl i64 %i.alh, 5
  %i.alj = or disjoint i64 %i.ali, %i.agw
  %i.alk = trunc i64 %i.alj to i32
  %i.all = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.agw
  %i.alm = getelementptr inbounds nuw i8, ptr %i.all, i64 12 ; 2 uses
  %i.aln = load i32, ptr %i.alm, align 4, !tbaa !20
  %i.alo = tail call i32 @llvm.umin.i32(i32 %i.aln, i32 %i.alk)
  store i32 %i.alo, ptr %i.alm, align 4, !tbaa !20
  br label %IsMatch.exit852.thread

bb.fj:                                            ; preds = %bb.er
  br i1 %i.agb, label %bb.fk, label %IsMatch.exit852.thread

bb.fk:                                            ; preds = %bb.fj
  %.not812 = icmp eq i8 %.sroa.8160.0.copyload, 10 ; 8 uses
  %.sroa.0153.0.insert.ext157 = zext nneg i8 %i.agv to i32 ; 2 uses
  %i.alp = icmp ult i64 %i.agm, %i.agw
  br i1 %i.alp, label %IsMatch.exit852.thread, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %.sroa.10.0.insert.ext168 = zext i16 %.sroa.10.0.copyload to i32
  %i.alq = getelementptr inbounds nuw [4 x i8], ptr %i.agn, i64 %i.agw
  %i.alr = load i32, ptr %i.alq, align 4, !tbaa !20
  %i.als = zext i32 %i.alr to i64
  %narrow.i834 = mul nuw nsw i32 %.sroa.10.0.insert.ext168, %.sroa.0153.0.insert.ext157
  %i.alt = zext nneg i32 %narrow.i834 to i64
  %i.alu = load ptr, ptr %i.ago, align 8, !tbaa !45
  %i.alv = getelementptr inbounds nuw i8, ptr %i.alu, i64 %i.als
  %i.alw = getelementptr inbounds nuw i8, ptr %i.alv, i64 %i.alt ; 3 uses
  %cond1458 = icmp eq i8 %.sroa.8160.0.copyload, 10
  br i1 %cond1458, label %bb.fm, label %.preheader1134

.preheader1134:                                   ; preds = %bb.fl
  %.not1319 = icmp eq i8 %i.agv, 0
  br i1 %.not1319, label %IsMatch.exit841.thread1077, label %.lr.ph1254

bb.fm:                                            ; preds = %bb.fl
  %i.alx = load i8, ptr %i.alw, align 1, !tbaa !22 ; 2 uses
  %i.aly = add i8 %i.alx, -97
  %or.cond.i835 = icmp ult i8 %i.aly, 26
  br i1 %or.cond.i835, label %bb.fn, label %IsMatch.exit852.thread

bb.fn:                                            ; preds = %bb.fm
  %i.alz = load i8, ptr %i.agc, align 1, !tbaa !22
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
  %.024.i926.lcssa = phi ptr [ %i.agp, %bb.fo ], [ %i.amn, %bb.fq ]
  %.022.i927.lcssa = phi i64 [ %i.ame, %bb.fo ], [ %i.amp, %bb.fq ] ; 3 uses
  %.not.i9321230 = icmp eq i64 %.022.i927.lcssa, 0
  br i1 %.not.i9321230, label %.critedge.i933, label %.lr.ph1234.preheader

.lr.ph1234.preheader:                             ; preds = %.preheader1137
  %scevgep1369 = getelementptr i8, ptr %.026.i925.lcssa, i64 %.022.i927.lcssa
  br label %.lr.ph1234

.lr.ph1226:                                       ; preds = %bb.fo, %bb.fq
  %.022.i9271224 = phi i64 [ %i.amp, %bb.fq ], [ %i.ame, %bb.fo ]
  %.024.i9261223 = phi ptr [ %i.amn, %bb.fq ], [ %i.agp, %bb.fo ] ; 2 uses
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
  br i1 %i.amq, label %.lr.ph1226, label %.preheader1137, !llvm.loop !31

.lr.ph1234:                                       ; preds = %.lr.ph1234.preheader, %bb.fr
  %.123.i9311233 = phi i64 [ %i.amu, %bb.fr ], [ %.022.i927.lcssa, %.lr.ph1234.preheader ]
  %.125.i9301232 = phi ptr [ %i.amv, %bb.fr ], [ %.024.i926.lcssa, %.lr.ph1234.preheader ] ; 2 uses
  %.228.i9291231 = phi ptr [ %i.amw, %bb.fr ], [ %.026.i925.lcssa, %.lr.ph1234.preheader ] ; 3 uses
  %i.amr = load i8, ptr %.228.i9291231, align 1, !tbaa !22
  %i.ams = load i8, ptr %.125.i9301232, align 1, !tbaa !22
  %i.amt = icmp eq i8 %i.amr, %i.ams
  br i1 %i.amt, label %bb.fr, label %.critedge.i933

bb.fr:                                            ; preds = %.lr.ph1234
  %i.amu = add nsw i64 %.123.i9311233, -1         ; 2 uses
  %i.amv = getelementptr inbounds nuw i8, ptr %.125.i9301232, i64 1
  %i.amw = getelementptr inbounds nuw i8, ptr %.228.i9291231, i64 1
  %.not.i932 = icmp eq i64 %i.amu, 0
  br i1 %.not.i932, label %.critedge.i933, label %.lr.ph1234, !llvm.loop !35

.critedge.i933:                                   ; preds = %bb.fr, %.lr.ph1234, %.preheader1137
  %.228.i929.lcssa = phi ptr [ %.026.i925.lcssa, %.preheader1137 ], [ %.228.i9291231, %.lr.ph1234 ], [ %scevgep1369, %bb.fr ]
  %i.amx = ptrtoint ptr %.228.i929.lcssa to i64
  %i.amy = ptrtoint ptr %i.amc to i64
  %i.amz = sub i64 %i.amx, %i.amy
  br label %IsMatch.exit841

.lr.ph1254:                                       ; preds = %.preheader1134, %bb.fu
  %.0.i8371253 = phi i64 [ %i.ang, %bb.fu ], [ 0, %.preheader1134 ] ; 3 uses
  %i.ana = getelementptr inbounds nuw i8, ptr %i.alw, i64 %.0.i8371253
  %i.anb = load i8, ptr %i.ana, align 1, !tbaa !22 ; 3 uses
  %i.anc = add i8 %i.anb, -97
  %or.cond40.i838 = icmp ult i8 %i.anc, 26
  %i.and = getelementptr inbounds nuw i8, ptr %i.agc, i64 %.0.i8371253
  %i.ane = load i8, ptr %i.and, align 1, !tbaa !22 ; 2 uses
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
  %exitcond1371.not = icmp eq i64 %i.ang, %i.agw
  br i1 %exitcond1371.not, label %IsMatch.exit841.thread1077, label %.lr.ph1254, !llvm.loop !36

IsMatch.exit841:                                  ; preds = %.critedge.i933, %bb.fp
  %.2.i934 = phi i64 [ %i.amm, %bb.fp ], [ %i.amz, %.critedge.i933 ]
  %i.anh = icmp eq i64 %.2.i934, %i.ame
  br i1 %i.anh, label %IsMatch.exit841.thread1077, label %IsMatch.exit852.thread, !llvm.loop !37

IsMatch.exit841.thread1077:                       ; preds = %bb.fu, %.preheader1134, %IsMatch.exit841
  %i.ani = select i1 %.not812, i64 30, i64 85
  %i.anj = shl i64 %i.ani, %i.agz
  %i.ank = add i64 %i.anj, %i.aha
  %i.anl = add nuw nsw i64 %i.agw, 1              ; 2 uses
  %i.anm = shl i64 %i.ank, 5
  %i.ann = or disjoint i64 %i.anm, %i.agw
  %i.ano = trunc i64 %i.ann to i32
  %i.anp = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.anl ; 2 uses
  %i.anq = load i32, ptr %i.anp, align 4, !tbaa !20
  %i.anr = tail call i32 @llvm.umin.i32(i32 %i.anq, i32 %i.ano)
  store i32 %i.anr, ptr %i.anp, align 4, !tbaa !20
  %i.ans = add nuw nsw i64 %i.agw, 2              ; 4 uses
  %.not814 = icmp ult i64 %i.ans, %3
  br i1 %.not814, label %bb.fv, label %IsMatch.exit852.thread, !llvm.loop !37

bb.fv:                                            ; preds = %IsMatch.exit841.thread1077
  %i.ant = getelementptr inbounds nuw i8, ptr %1, i64 %i.anl ; 4 uses
  %i.anu = load i8, ptr %i.ant, align 1, !tbaa !22
  switch i8 %i.anu, label %IsMatch.exit852.thread [
    i8 32, label %bb.fw
    i8 44, label %bb.fx
    i8 46, label %bb.gb
    i8 61, label %bb.gd
  ]

bb.fw:                                            ; preds = %bb.fv
  %i.anv = select i1 %.not812, i64 15, i64 83
  %i.anw = shl i64 %i.anv, %i.agz
  %i.anx = add i64 %i.anw, %i.aha
  %i.any = shl i64 %i.anx, 5
  %i.anz = or disjoint i64 %i.any, %i.agw
  %i.aoa = trunc i64 %i.anz to i32
  %i.aob = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ans ; 2 uses
  %i.aoc = load i32, ptr %i.aob, align 4, !tbaa !20
  %i.aod = tail call i32 @llvm.umin.i32(i32 %i.aoc, i32 %i.aoa)
  store i32 %i.aod, ptr %i.aob, align 4, !tbaa !20
  br label %IsMatch.exit852.thread

bb.fx:                                            ; preds = %bb.fv
  br i1 %.not812, label %bb.fy, label %bb.fz

bb.fy:                                            ; preds = %bb.fx
  %i.aoe = shl i64 109, %i.agz
  %i.aof = add nuw i64 %i.aoe, %i.aha
  %i.aog = shl i64 %i.aof, 5
  %i.aoh = or disjoint i64 %i.aog, %i.agw
  %i.aoi = trunc i64 %i.aoh to i32
  %i.aoj = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ans ; 2 uses
  %i.aok = load i32, ptr %i.aoj, align 4, !tbaa !20
  %i.aol = tail call i32 @llvm.umin.i32(i32 %i.aok, i32 %i.aoi)
  store i32 %i.aol, ptr %i.aoj, align 4, !tbaa !20
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %bb.fx
  %i.aom = getelementptr inbounds nuw i8, ptr %i.ant, i64 1
  %i.aon = load i8, ptr %i.aom, align 1, !tbaa !22
  %i.aoo = icmp eq i8 %i.aon, 32
  br i1 %i.aoo, label %bb.ga, label %IsMatch.exit852.thread

bb.ga:                                            ; preds = %bb.fz
  %i.aop = select i1 %.not812, i64 65, i64 111
  %i.aoq = shl i64 %i.aop, %i.agz
  %i.aor = add i64 %i.aoq, %i.aha
  %i.aos = shl i64 %i.aor, 5
  %i.aot = or disjoint i64 %i.aos, %i.agw
  %i.aou = trunc i64 %i.aot to i32
  %i.aov = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.agw
  %i.aow = getelementptr inbounds nuw i8, ptr %i.aov, i64 12 ; 2 uses
  %i.aox = load i32, ptr %i.aow, align 4, !tbaa !20
  %i.aoy = tail call i32 @llvm.umin.i32(i32 %i.aox, i32 %i.aou)
  store i32 %i.aoy, ptr %i.aow, align 4, !tbaa !20
  br label %IsMatch.exit852.thread

bb.gb:                                            ; preds = %bb.fv
  %i.aoz = select i1 %.not812, i64 96, i64 115
  %i.apa = shl i64 %i.aoz, %i.agz
  %i.apb = add i64 %i.apa, %i.aha
  %i.apc = shl i64 %i.apb, 5
  %i.apd = or disjoint i64 %i.apc, %i.agw
  %i.ape = trunc i64 %i.apd to i32
  %i.apf = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ans ; 2 uses
  %i.apg = load i32, ptr %i.apf, align 4, !tbaa !20
  %i.aph = tail call i32 @llvm.umin.i32(i32 %i.apg, i32 %i.ape)
  store i32 %i.aph, ptr %i.apf, align 4, !tbaa !20
  %i.api = getelementptr inbounds nuw i8, ptr %i.ant, i64 1
  %i.apj = load i8, ptr %i.api, align 1, !tbaa !22
  %i.apk = icmp eq i8 %i.apj, 32
  br i1 %i.apk, label %bb.gc, label %IsMatch.exit852.thread

bb.gc:                                            ; preds = %bb.gb
  %i.apl = select i1 %.not812, i64 91, i64 117
  %i.apm = shl i64 %i.apl, %i.agz
  %i.apn = add i64 %i.apm, %i.aha
  %i.apo = shl i64 %i.apn, 5
  %i.app = or disjoint i64 %i.apo, %i.agw
  %i.apq = trunc i64 %i.app to i32
  %i.apr = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.agw
  %i.aps = getelementptr inbounds nuw i8, ptr %i.apr, i64 12 ; 2 uses
  %i.apt = load i32, ptr %i.aps, align 4, !tbaa !20
  %i.apu = tail call i32 @llvm.umin.i32(i32 %i.apt, i32 %i.apq)
  store i32 %i.apu, ptr %i.aps, align 4, !tbaa !20
  br label %IsMatch.exit852.thread

bb.gd:                                            ; preds = %bb.fv
  %i.apv = getelementptr inbounds nuw i8, ptr %i.ant, i64 1
  %i.apw = load i8, ptr %i.apv, align 1, !tbaa !22
  switch i8 %i.apw, label %IsMatch.exit852.thread [
    i8 34, label %bb.ge
    i8 39, label %bb.gf
  ]

bb.ge:                                            ; preds = %bb.gd
  %i.apx = select i1 %.not812, i64 118, i64 110
  %i.apy = shl i64 %i.apx, %i.agz
  %i.apz = add i64 %i.apy, %i.aha
  %i.aqa = shl i64 %i.apz, 5
  %i.aqb = or disjoint i64 %i.aqa, %i.agw
  %i.aqc = trunc i64 %i.aqb to i32
  %i.aqd = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.agw
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.aqd, i64 12 ; 2 uses
  %i.aqf = load i32, ptr %i.aqe, align 4, !tbaa !20
  %i.aqg = tail call i32 @llvm.umin.i32(i32 %i.aqf, i32 %i.aqc)
  store i32 %i.aqg, ptr %i.aqe, align 4, !tbaa !20
  br label %IsMatch.exit852.thread

bb.gf:                                            ; preds = %bb.gd
  %i.aqh = select i1 %.not812, i64 120, i64 119
  %i.aqi = shl i64 %i.aqh, %i.agz
  %i.aqj = add i64 %i.aqi, %i.aha
  %i.aqk = shl i64 %i.aqj, 5
  %i.aql = or disjoint i64 %i.aqk, %i.agw
  %i.aqm = trunc i64 %i.aql to i32
  %i.aqn = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.agw
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.aqn, i64 12 ; 2 uses
  %i.aqp = load i32, ptr %i.aqo, align 4, !tbaa !20
  %i.aqq = tail call i32 @llvm.umin.i32(i32 %i.aqp, i32 %i.aqm)
  store i32 %i.aqq, ptr %i.aqo, align 4, !tbaa !20
  br label %IsMatch.exit852.thread

IsMatch.exit852.thread:                           ; preds = %bb.fs, %bb.ft, %bb.fn, %bb.fm, %bb.fk, %bb.es, %IsMatch.exit841, %IsMatch.exit841.thread1077, %bb.gd, %bb.fv, %bb.ga, %bb.fz, %bb.gf, %bb.ge, %bb.gb, %bb.gc, %bb.fw, %FindMatchLengthWithLimit.exit896, %IsMatch.exit852.thread1062, %bb.fg, %bb.fb, %bb.ez, %bb.fd, %bb.fc, %bb.fi, %bb.fh, %bb.fe, %bb.ff, %bb.fa, %bb.ey, %bb.fj
  %.11 = phi i32 [ 1, %bb.ey ], [ %.71271, %bb.fj ], [ 1, %bb.fa ], [ %.71271, %FindMatchLengthWithLimit.exit896 ], [ 1, %IsMatch.exit852.thread1062 ], [ 1, %bb.fg ], [ 1, %bb.fb ], [ 1, %bb.ez ], [ 1, %bb.fd ], [ 1, %bb.fc ], [ 1, %bb.fi ], [ 1, %bb.fh ], [ 1, %bb.fe ], [ 1, %bb.ff ], [ %.71271, %IsMatch.exit841 ], [ 1, %IsMatch.exit841.thread1077 ], [ 1, %bb.gd ], [ 1, %bb.fv ], [ 1, %bb.ga ], [ 1, %bb.fz ], [ 1, %bb.gf ], [ 1, %bb.ge ], [ 1, %bb.gb ], [ 1, %bb.gc ], [ 1, %bb.fw ], [ %.71271, %bb.fn ], [ %.71271, %bb.es ], [ %.71271, %bb.fm ], [ %.71271, %bb.fk ], [ %.71271, %bb.ft ], [ %.71271, %bb.fs ] ; 2 uses
  br i1 %i.ahb, label %.loopexit, label %bb.er

.loopexit:                                        ; preds = %IsMatch.exit852.thread, %bb.eq, %bb.ep
  %.12 = phi i32 [ %.0758.lcssa, %bb.ep ], [ %.0758.lcssa, %bb.eq ], [ %.11, %IsMatch.exit852.thread ] ; 5 uses
  %.not1122 = icmp eq i64 %3, 5
  br i1 %.not1122, label %.thread1099, label %bb.gg

bb.gg:                                            ; preds = %.loopexit
  %i.aqr = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 3 uses
  %i.aqs = load i8, ptr %i.aqr, align 1, !tbaa !22 ; 2 uses
  %i.aqt = icmp eq i8 %i.aqs, 32
  %i.aqu = load i8, ptr %1, align 1, !tbaa !22    ; 2 uses
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
  %i.aqx = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.aqy = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 3 uses
  %.0.copyload.i865 = load i32, ptr %i.aqy, align 1
  %i.aqz = mul i32 %.0.copyload.i865, 506832829
  %i.ara = lshr i32 %i.aqz, 17
  %i.arb = zext nneg i32 %i.ara to i64
  %i.arc = getelementptr inbounds nuw [2 x i8], ptr %i.aqx, i64 %i.arb
  %i.ard = load i16, ptr %i.arc, align 2, !tbaa !42 ; 2 uses
  %.not808 = icmp eq i16 %i.ard, 0
  br i1 %.not808, label %.thread1083, label %.lr.ph1295

.lr.ph1295:                                       ; preds = %bb.gj
  %i.are = zext i16 %i.ard to i64
  %i.arf = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.arg = load ptr, ptr %i.arf, align 8, !tbaa !43
  %i.arh = load ptr, ptr %0, align 8, !tbaa !21   ; 3 uses
  %i.ari = add i64 %3, -2
  %i.arj = getelementptr inbounds nuw i8, ptr %i.arh, i64 32
  %i.ark = getelementptr inbounds nuw i8, ptr %i.arh, i64 168
  br label %bb.gk

bb.gk:                                            ; preds = %.lr.ph1295, %IsMatch.exit832.thread
  %.07541293 = phi i64 [ %i.are, %.lr.ph1295 ], [ %i.arl, %IsMatch.exit832.thread ] ; 2 uses
  %.131292 = phi i32 [ %.12, %.lr.ph1295 ], [ %.14, %IsMatch.exit832.thread ] ; 4 uses
  %i.arl = add i64 %.07541293, 1
  %i.arm = getelementptr inbounds nuw [4 x i8], ptr %i.arg, i64 %.07541293 ; 3 uses
  %.sroa.046.0.copyload = load i8, ptr %i.arm, align 2, !tbaa !22 ; 2 uses
  %.sroa.749.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.arm, i64 1
  %.sroa.749.0.copyload = load i8, ptr %.sroa.749.0..sroa_idx, align 1, !tbaa !22
  %.sroa.850.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.arm, i64 2
  %.sroa.850.0.copyload = load i16, ptr %.sroa.850.0..sroa_idx, align 2, !tbaa !42
  %i.arn = and i8 %.sroa.046.0.copyload, 31       ; 2 uses
  %i.aro = zext nneg i8 %i.arn to i64             ; 10 uses
  %i.arp = getelementptr inbounds nuw i8, ptr %i.arh, i64 %i.aro
  %i.arq = load i8, ptr %i.arp, align 1, !tbaa !22
  %i.arr = zext nneg i8 %i.arq to i64
  %i.ars = zext i16 %.sroa.850.0.copyload to i64  ; 2 uses
  %i.art = icmp slt i8 %.sroa.046.0.copyload, 0
  %i.aru = icmp ne i8 %.sroa.749.0.copyload, 0
  %i.arv = icmp ult i64 %i.ari, %i.aro
  %or.cond1459 = or i1 %i.aru, %i.arv
  br i1 %or.cond1459, label %IsMatch.exit832.thread, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.arw = getelementptr inbounds nuw [4 x i8], ptr %i.arj, i64 %i.aro
  %i.arx = load i32, ptr %i.arw, align 4, !tbaa !20
  %i.ary = zext i32 %i.arx to i64
  %narrow.i825 = mul nuw nsw i64 %i.ars, %i.aro
  %i.arz = load ptr, ptr %i.ark, align 8, !tbaa !45
  %i.asa = getelementptr inbounds nuw i8, ptr %i.arz, i64 %i.ary
  %i.asb = getelementptr inbounds nuw i8, ptr %i.asa, i64 %narrow.i825 ; 4 uses
  %i.asc = icmp samesign ugt i8 %i.arn, 7
  br i1 %i.asc, label %.lr.ph1280, label %.preheader1132

.preheader1132:                                   ; preds = %bb.gn, %bb.gl
  %.026.i939.lcssa = phi ptr [ %i.asb, %bb.gl ], [ %i.asl, %bb.gn ] ; 3 uses
  %.024.i940.lcssa = phi ptr [ %i.aqy, %bb.gl ], [ %i.ask, %bb.gn ]
  %.022.i941.lcssa = phi i64 [ %i.aro, %bb.gl ], [ %i.asm, %bb.gn ] ; 3 uses
  %.not.i9461284 = icmp eq i64 %.022.i941.lcssa, 0
  br i1 %.not.i9461284, label %.critedge.i947, label %.lr.ph1288.preheader

.lr.ph1288.preheader:                             ; preds = %.preheader1132
  %scevgep1373 = getelementptr i8, ptr %.026.i939.lcssa, i64 %.022.i941.lcssa
  br label %.lr.ph1288

.lr.ph1280:                                       ; preds = %bb.gl, %bb.gn
  %.022.i9411278 = phi i64 [ %i.asm, %bb.gn ], [ %i.aro, %bb.gl ]
  %.024.i9401277 = phi ptr [ %i.ask, %bb.gn ], [ %i.aqy, %bb.gl ] ; 2 uses
  %.026.i9391276 = phi ptr [ %i.asl, %bb.gn ], [ %i.asb, %bb.gl ] ; 3 uses
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
  %i.ask = getelementptr inbounds nuw i8, ptr %.024.i9401277, i64 8 ; 2 uses
  %i.asl = getelementptr inbounds nuw i8, ptr %.026.i9391276, i64 8 ; 2 uses
  %i.asm = add i64 %.022.i9411278, -8             ; 3 uses
  %i.asn = icmp ugt i64 %i.asm, 7
  br i1 %i.asn, label %.lr.ph1280, label %.preheader1132, !llvm.loop !31

.lr.ph1288:                                       ; preds = %.lr.ph1288.preheader, %bb.go
  %.123.i9451287 = phi i64 [ %i.asr, %bb.go ], [ %.022.i941.lcssa, %.lr.ph1288.preheader ]
  %.125.i9441286 = phi ptr [ %i.ass, %bb.go ], [ %.024.i940.lcssa, %.lr.ph1288.preheader ] ; 2 uses
  %.228.i9431285 = phi ptr [ %i.ast, %bb.go ], [ %.026.i939.lcssa, %.lr.ph1288.preheader ] ; 3 uses
  %i.aso = load i8, ptr %.228.i9431285, align 1, !tbaa !22
  %i.asp = load i8, ptr %.125.i9441286, align 1, !tbaa !22
  %i.asq = icmp eq i8 %i.aso, %i.asp
  br i1 %i.asq, label %bb.go, label %.critedge.i947

bb.go:                                            ; preds = %.lr.ph1288
  %i.asr = add nsw i64 %.123.i9451287, -1         ; 2 uses
  %i.ass = getelementptr inbounds nuw i8, ptr %.125.i9441286, i64 1
  %i.ast = getelementptr inbounds nuw i8, ptr %.228.i9431285, i64 1
  %.not.i946 = icmp eq i64 %i.asr, 0
  br i1 %.not.i946, label %.critedge.i947, label %.lr.ph1288, !llvm.loop !35

.critedge.i947:                                   ; preds = %bb.go, %.lr.ph1288, %.preheader1132
  %.228.i943.lcssa = phi ptr [ %.026.i939.lcssa, %.preheader1132 ], [ %.228.i9431285, %.lr.ph1288 ], [ %scevgep1373, %bb.go ]
  %i.asu = ptrtoint ptr %.228.i943.lcssa to i64
  %i.asv = ptrtoint ptr %i.asb to i64
  %i.asw = sub i64 %i.asu, %i.asv
  br label %FindMatchLengthWithLimit.exit952

FindMatchLengthWithLimit.exit952:                 ; preds = %bb.gm, %.critedge.i947
  %.2.i948 = phi i64 [ %i.asj, %bb.gm ], [ %i.asw, %.critedge.i947 ]
  %.not1123 = icmp eq i64 %.2.i948, %i.aro
  br i1 %.not1123, label %IsMatch.exit832.thread1096, label %IsMatch.exit832.thread

IsMatch.exit832.thread1096:                       ; preds = %FindMatchLengthWithLimit.exit952
  %i.asx = load i8, ptr %1, align 1, !tbaa !22    ; 3 uses
  %i.asy = icmp eq i8 %i.asx, -62
  br i1 %i.asy, label %IsMatch.exit832.thread.sink.split, label %bb.gp

bb.gp:                                            ; preds = %IsMatch.exit832.thread1096
  %i.asz = add nuw nsw i64 %i.aro, 2              ; 2 uses
  %i.ata = icmp ult i64 %i.asz, %3
  br i1 %i.ata, label %bb.gq, label %IsMatch.exit832.thread

bb.gq:                                            ; preds = %bb.gp
  %i.atb = getelementptr inbounds nuw i8, ptr %1, i64 %i.asz
  %i.atc = load i8, ptr %i.atb, align 1, !tbaa !22
  %i.atd = icmp eq i8 %i.atc, 32
  br i1 %i.atd, label %bb.gr, label %IsMatch.exit832.thread

bb.gr:                                            ; preds = %bb.gq
  %i.ate = icmp eq i8 %i.asx, 101
  %i.atf = icmp eq i8 %i.asx, 115
  %i.atg = select i1 %i.atf, i64 7, i64 13
  %i.ath = select i1 %i.ate, i64 18, i64 %i.atg
  br label %IsMatch.exit832.thread.sink.split

IsMatch.exit832.thread.sink.split:                ; preds = %IsMatch.exit832.thread1096, %bb.gr
  %.sink = phi i64 [ %i.ath, %bb.gr ], [ 102, %IsMatch.exit832.thread1096 ]
  %.sink1464 = phi i64 [ 12, %bb.gr ], [ 8, %IsMatch.exit832.thread1096 ]
  %i.ati = shl i64 %.sink, %i.arr
  %i.atj = add i64 %i.ati, %i.ars
  %i.atk = shl i64 %i.atj, 5
  %i.atl = or disjoint i64 %i.atk, %i.aro
  %i.atm = trunc i64 %i.atl to i32
  %i.atn = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.aro
  %i.ato = getelementptr inbounds nuw i8, ptr %i.atn, i64 %.sink1464 ; 2 uses
  %i.atp = load i32, ptr %i.ato, align 4, !tbaa !20
  %i.atq = tail call i32 @llvm.umin.i32(i32 %i.atp, i32 %i.atm)
  store i32 %i.atq, ptr %i.ato, align 4, !tbaa !20
  br label %IsMatch.exit832.thread

IsMatch.exit832.thread:                           ; preds = %IsMatch.exit832.thread.sink.split, %bb.gq, %bb.gp, %FindMatchLengthWithLimit.exit952, %bb.gk
  %.14 = phi i32 [ %.131292, %FindMatchLengthWithLimit.exit952 ], [ %.131292, %bb.gk ], [ %.131292, %bb.gq ], [ %.131292, %bb.gp ], [ 1, %IsMatch.exit832.thread.sink.split ] ; 2 uses
  br i1 %i.art, label %.thread1083, label %bb.gk, !llvm.loop !38

.thread1083:                                      ; preds = %IsMatch.exit832.thread, %bb.gj, %bb.gh, %bb.gi
  %.15 = phi i32 [ %.12, %bb.gi ], [ %.12, %bb.gh ], [ %.12, %bb.gj ], [ %.14, %IsMatch.exit832.thread ] ; 12 uses
  %i.atr = icmp ugt i64 %3, 8
  br i1 %i.atr, label %bb.gs, label %.thread1099

bb.gs:                                            ; preds = %.thread1083
  %i.ats = load i8, ptr %1, align 1, !tbaa !22
  switch i8 %i.ats, label %.thread1099 [
    i8 32, label %bb.gt
    i8 46, label %bb.gx
  ]

bb.gt:                                            ; preds = %bb.gs
  %i.att = load i8, ptr %i.aqr, align 1, !tbaa !22
  %i.atu = icmp eq i8 %i.att, 116
  br i1 %i.atu, label %bb.gu, label %.thread1099

bb.gu:                                            ; preds = %bb.gt
  %i.atv = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.atw = load i8, ptr %i.atv, align 1, !tbaa !22
  %i.atx = icmp eq i8 %i.atw, 104
  br i1 %i.atx, label %bb.gv, label %.thread1099

bb.gv:                                            ; preds = %bb.gu
  %i.aty = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.atz = load i8, ptr %i.aty, align 1, !tbaa !22
  %i.aua = icmp eq i8 %i.atz, 101
  br i1 %i.aua, label %bb.gw, label %.thread1099

bb.gw:                                            ; preds = %bb.gv
  %i.aub = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.auc = load i8, ptr %i.aub, align 1, !tbaa !22
  %i.aud = icmp eq i8 %i.auc, 32
  br i1 %i.aud, label %bb.hb, label %.thread1099

bb.gx:                                            ; preds = %bb.gs
  %i.aue = load i8, ptr %i.aqr, align 1, !tbaa !22
  %i.auf = icmp eq i8 %i.aue, 99
  br i1 %i.auf, label %bb.gy, label %.thread1099

bb.gy:                                            ; preds = %bb.gx
  %i.aug = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.auh = load i8, ptr %i.aug, align 1, !tbaa !22
  %i.aui = icmp eq i8 %i.auh, 111
  br i1 %i.aui, label %bb.gz, label %.thread1099

bb.gz:                                            ; preds = %bb.gy
  %i.auj = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.auk = load i8, ptr %i.auj, align 1, !tbaa !22
  %i.aul = icmp eq i8 %i.auk, 109
  br i1 %i.aul, label %bb.ha, label %.thread1099

bb.ha:                                            ; preds = %bb.gz
  %i.aum = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aun = load i8, ptr %i.aum, align 1, !tbaa !22
  %i.auo = icmp eq i8 %i.aun, 47
  br i1 %i.auo, label %bb.hb, label %.thread1099

bb.hb:                                            ; preds = %bb.ha, %bb.gw
  %i.aup = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.auq = getelementptr inbounds nuw i8, ptr %1, i64 5 ; 3 uses
  %.0.copyload.i866 = load i32, ptr %i.auq, align 1
  %i.aur = mul i32 %.0.copyload.i866, 506832829
  %i.aus = lshr i32 %i.aur, 17
  %i.aut = zext nneg i32 %i.aus to i64
  %i.auu = getelementptr inbounds nuw [2 x i8], ptr %i.aup, i64 %i.aut
  %i.auv = load i16, ptr %i.auu, align 2, !tbaa !42 ; 2 uses
  %.not809 = icmp eq i16 %i.auv, 0
  br i1 %.not809, label %.thread1099, label %.lr.ph1316

.lr.ph1316:                                       ; preds = %bb.hb
  %i.auw = zext i16 %i.auv to i64
  %i.aux = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.auy = load ptr, ptr %i.aux, align 8, !tbaa !43
  %i.auz = load ptr, ptr %0, align 8, !tbaa !21   ; 3 uses
  %i.ava = add i64 %3, -5
  %i.avb = getelementptr inbounds nuw i8, ptr %i.auz, i64 32
  %i.avc = getelementptr inbounds nuw i8, ptr %i.auz, i64 168
  br label %bb.hc

bb.hc:                                            ; preds = %.lr.ph1316, %IsMatch.exit.thread
  %.07521314 = phi i64 [ %i.auw, %.lr.ph1316 ], [ %i.avd, %IsMatch.exit.thread ] ; 2 uses
  %.161313 = phi i32 [ %.15, %.lr.ph1316 ], [ %.17, %IsMatch.exit.thread ] ; 2 uses
  %i.avd = add i64 %.07521314, 1
  %i.ave = getelementptr inbounds nuw [4 x i8], ptr %i.auy, i64 %.07521314 ; 3 uses
  %.sroa.0.0.copyload = load i8, ptr %i.ave, align 2, !tbaa !22 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ave, i64 1
  %.sroa.7.0.copyload = load i8, ptr %.sroa.7.0..sroa_idx, align 1, !tbaa !22
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ave, i64 2
  %.sroa.8.0.copyload = load i16, ptr %.sroa.8.0..sroa_idx, align 2, !tbaa !42
  %i.avf = and i8 %.sroa.0.0.copyload, 31         ; 2 uses
  %i.avg = zext nneg i8 %i.avf to i64             ; 14 uses
  %i.avh = getelementptr inbounds nuw i8, ptr %i.auz, i64 %i.avg
  %i.avi = load i8, ptr %i.avh, align 1, !tbaa !22
  %i.avj = zext nneg i8 %i.avi to i64             ; 3 uses
  %i.avk = zext i16 %.sroa.8.0.copyload to i64    ; 4 uses
  %i.avl = icmp slt i8 %.sroa.0.0.copyload, 0
  %i.avm = icmp ne i8 %.sroa.7.0.copyload, 0
  %i.avn = icmp ult i64 %i.ava, %i.avg
  %or.cond1467 = or i1 %i.avm, %i.avn
  br i1 %or.cond1467, label %IsMatch.exit.thread, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.avo = getelementptr inbounds nuw [4 x i8], ptr %i.avb, i64 %i.avg
  %i.avp = load i32, ptr %i.avo, align 4, !tbaa !20
  %i.avq = zext i32 %i.avp to i64
  %narrow.i = mul nuw nsw i64 %i.avk, %i.avg
  %i.avr = load ptr, ptr %i.avc, align 8, !tbaa !45
  %i.avs = getelementptr inbounds nuw i8, ptr %i.avr, i64 %i.avq
  %i.avt = getelementptr inbounds nuw i8, ptr %i.avs, i64 %narrow.i ; 4 uses
  %i.avu = icmp samesign ugt i8 %i.avf, 7
  br i1 %i.avu, label %.lr.ph1301, label %.preheader

.preheader:                                       ; preds = %bb.hf, %bb.hd
  %.026.i967.lcssa = phi ptr [ %i.avt, %bb.hd ], [ %i.awd, %bb.hf ] ; 3 uses
  %.024.i968.lcssa = phi ptr [ %i.auq, %bb.hd ], [ %i.awc, %bb.hf ]
  %.022.i969.lcssa = phi i64 [ %i.avg, %bb.hd ], [ %i.awe, %bb.hf ] ; 3 uses
  %.not.i9741305 = icmp eq i64 %.022.i969.lcssa, 0
  br i1 %.not.i9741305, label %.critedge.i975, label %.lr.ph1309.preheader

.lr.ph1309.preheader:                             ; preds = %.preheader
  %scevgep1374 = getelementptr i8, ptr %.026.i967.lcssa, i64 %.022.i969.lcssa
  br label %.lr.ph1309

.lr.ph1301:                                       ; preds = %bb.hd, %bb.hf
  %.022.i9691299 = phi i64 [ %i.awe, %bb.hf ], [ %i.avg, %bb.hd ]
  %.024.i9681298 = phi ptr [ %i.awc, %bb.hf ], [ %i.auq, %bb.hd ] ; 2 uses
  %.026.i9671297 = phi ptr [ %i.awd, %bb.hf ], [ %i.avt, %bb.hd ] ; 3 uses
  %.0.copyload.i1014 = load i64, ptr %.024.i9681298, align 1 ; 2 uses
  %.0.copyload.i1013 = load i64, ptr %.026.i9671297, align 1 ; 2 uses
  %.not30.i977 = icmp eq i64 %.0.copyload.i1014, %.0.copyload.i1013
  br i1 %.not30.i977, label %bb.hf, label %bb.he

bb.he:                                            ; preds = %.lr.ph1301
  %i.avv = xor i64 %.0.copyload.i1013, %.0.copyload.i1014
  %i.avw = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.avv, i1 true)
  %i.avx = ptrtoint ptr %.026.i9671297 to i64
  %i.avy = ptrtoint ptr %i.avt to i64
  %i.avz = sub i64 %i.avx, %i.avy
  %i.awa = lshr i64 %i.avw, 3
  %i.awb = add i64 %i.avz, %i.awa
  br label %FindMatchLengthWithLimit.exit980

bb.hf:                                            ; preds = %.lr.ph1301
  %i.awc = getelementptr inbounds nuw i8, ptr %.024.i9681298, i64 8 ; 2 uses
  %i.awd = getelementptr inbounds nuw i8, ptr %.026.i9671297, i64 8 ; 2 uses
  %i.awe = add i64 %.022.i9691299, -8             ; 3 uses
  %i.awf = icmp ugt i64 %i.awe, 7
  br i1 %i.awf, label %.lr.ph1301, label %.preheader, !llvm.loop !31

.lr.ph1309:                                       ; preds = %.lr.ph1309.preheader, %bb.hg
  %.123.i9731308 = phi i64 [ %i.awj, %bb.hg ], [ %.022.i969.lcssa, %.lr.ph1309.preheader ]
  %.125.i9721307 = phi ptr [ %i.awk, %bb.hg ], [ %.024.i968.lcssa, %.lr.ph1309.preheader ] ; 2 uses
  %.228.i9711306 = phi ptr [ %i.awl, %bb.hg ], [ %.026.i967.lcssa, %.lr.ph1309.preheader ] ; 3 uses
  %i.awg = load i8, ptr %.228.i9711306, align 1, !tbaa !22
  %i.awh = load i8, ptr %.125.i9721307, align 1, !tbaa !22
  %i.awi = icmp eq i8 %i.awg, %i.awh
  br i1 %i.awi, label %bb.hg, label %.critedge.i975

bb.hg:                                            ; preds = %.lr.ph1309
  %i.awj = add nsw i64 %.123.i9731308, -1         ; 2 uses
  %i.awk = getelementptr inbounds nuw i8, ptr %.125.i9721307, i64 1
  %i.awl = getelementptr inbounds nuw i8, ptr %.228.i9711306, i64 1
  %.not.i974 = icmp eq i64 %i.awj, 0
  br i1 %.not.i974, label %.critedge.i975, label %.lr.ph1309, !llvm.loop !35

.critedge.i975:                                   ; preds = %bb.hg, %.lr.ph1309, %.preheader
  %.228.i971.lcssa = phi ptr [ %.026.i967.lcssa, %.preheader ], [ %.228.i9711306, %.lr.ph1309 ], [ %scevgep1374, %bb.hg ]
  %i.awm = ptrtoint ptr %.228.i971.lcssa to i64
  %i.awn = ptrtoint ptr %i.avt to i64
  %i.awo = sub i64 %i.awm, %i.awn
  br label %FindMatchLengthWithLimit.exit980

FindMatchLengthWithLimit.exit980:                 ; preds = %bb.he, %.critedge.i975
  %.2.i976 = phi i64 [ %i.awb, %bb.he ], [ %i.awo, %.critedge.i975 ]
  %.not1124 = icmp eq i64 %.2.i976, %i.avg
  br i1 %.not1124, label %IsMatch.exit.thread1115, label %IsMatch.exit.thread

IsMatch.exit.thread1115:                          ; preds = %FindMatchLengthWithLimit.exit980
  %i.awp = load i8, ptr %1, align 1, !tbaa !22
  %i.awq = icmp eq i8 %i.awp, 32
  %i.awr = select i1 %i.awq, i64 41, i64 72
  %i.aws = shl i64 %i.awr, %i.avj
  %i.awt = add i64 %i.aws, %i.avk
  %i.awu = add nuw nsw i64 %i.avg, 5              ; 3 uses
  %i.awv = shl i64 %i.awt, 5
  %i.aww = or disjoint i64 %i.awv, %i.avg
  %i.awx = trunc i64 %i.aww to i32
  %i.awy = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.awu ; 2 uses
  %i.awz = load i32, ptr %i.awy, align 4, !tbaa !20
  %i.axa = tail call i32 @llvm.umin.i32(i32 %i.awz, i32 %i.awx)
  store i32 %i.axa, ptr %i.awy, align 4, !tbaa !20
  %i.axb = icmp ult i64 %i.awu, %3
  br i1 %i.axb, label %bb.hh, label %IsMatch.exit.thread

bb.hh:                                            ; preds = %IsMatch.exit.thread1115
  %i.axc = getelementptr inbounds nuw i8, ptr %1, i64 %i.awu ; 8 uses
  %i.axd = load i8, ptr %1, align 1, !tbaa !22
  %i.axe = icmp eq i8 %i.axd, 32
  %i.axf = add nuw nsw i64 %i.avg, 8
  %i.axg = icmp ult i64 %i.axf, %3
  %or.cond = select i1 %i.axe, i1 %i.axg, i1 false
  br i1 %or.cond, label %bb.hi, label %IsMatch.exit.thread

bb.hi:                                            ; preds = %bb.hh
  %i.axh = load i8, ptr %i.axc, align 1, !tbaa !22
  %i.axi = icmp eq i8 %i.axh, 32
  br i1 %i.axi, label %bb.hj, label %IsMatch.exit.thread

bb.hj:                                            ; preds = %bb.hi
  %i.axj = getelementptr inbounds nuw i8, ptr %i.axc, i64 1
  %i.axk = load i8, ptr %i.axj, align 1, !tbaa !22
  %i.axl = icmp eq i8 %i.axk, 111
  br i1 %i.axl, label %bb.hk, label %IsMatch.exit.thread

bb.hk:                                            ; preds = %bb.hj
  %i.axm = getelementptr inbounds nuw i8, ptr %i.axc, i64 2
  %i.axn = load i8, ptr %i.axm, align 1, !tbaa !22
  %i.axo = icmp eq i8 %i.axn, 102
  br i1 %i.axo, label %bb.hl, label %IsMatch.exit.thread

bb.hl:                                            ; preds = %bb.hk
  %i.axp = getelementptr inbounds nuw i8, ptr %i.axc, i64 3
  %i.axq = load i8, ptr %i.axp, align 1, !tbaa !22
  %i.axr = icmp eq i8 %i.axq, 32
  br i1 %i.axr, label %bb.hm, label %IsMatch.exit.thread

bb.hm:                                            ; preds = %bb.hl
  %i.axs = shl i64 62, %i.avj
  %i.axt = add nuw i64 %i.axs, %i.avk
  %i.axu = shl i64 %i.axt, 5
  %i.axv = or disjoint i64 %i.axu, %i.avg
  %i.axw = trunc i64 %i.axv to i32
  %i.axx = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.avg ; 2 uses
  %i.axy = getelementptr inbounds nuw i8, ptr %i.axx, i64 36 ; 2 uses
  %i.axz = load i32, ptr %i.axy, align 4, !tbaa !20
  %i.aya = tail call i32 @llvm.umin.i32(i32 %i.axz, i32 %i.axw)
  store i32 %i.aya, ptr %i.axy, align 4, !tbaa !20
  %i.ayb = add nuw nsw i64 %i.avg, 12
  %i.ayc = icmp ult i64 %i.ayb, %3
  br i1 %i.ayc, label %bb.hn, label %IsMatch.exit.thread

bb.hn:                                            ; preds = %bb.hm
  %i.ayd = getelementptr inbounds nuw i8, ptr %i.axc, i64 4
  %i.aye = load i8, ptr %i.ayd, align 1, !tbaa !22
  %i.ayf = icmp eq i8 %i.aye, 116
  br i1 %i.ayf, label %bb.ho, label %IsMatch.exit.thread

bb.ho:                                            ; preds = %bb.hn
  %i.ayg = getelementptr inbounds nuw i8, ptr %i.axc, i64 5
  %i.ayh = load i8, ptr %i.ayg, align 1, !tbaa !22
  %i.ayi = icmp eq i8 %i.ayh, 104
  br i1 %i.ayi, label %bb.hp, label %IsMatch.exit.thread

bb.hp:                                            ; preds = %bb.ho
  %i.ayj = getelementptr inbounds nuw i8, ptr %i.axc, i64 6
  %i.ayk = load i8, ptr %i.ayj, align 1, !tbaa !22
  %i.ayl = icmp eq i8 %i.ayk, 101
  br i1 %i.ayl, label %bb.hq, label %IsMatch.exit.thread

bb.hq:                                            ; preds = %bb.hp
  %i.aym = getelementptr inbounds nuw i8, ptr %i.axc, i64 7
  %i.ayn = load i8, ptr %i.aym, align 1, !tbaa !22
  %i.ayo = icmp eq i8 %i.ayn, 32
  br i1 %i.ayo, label %bb.hr, label %IsMatch.exit.thread

bb.hr:                                            ; preds = %bb.hq
  %i.ayp = shl i64 73, %i.avj
  %i.ayq = add nuw i64 %i.ayp, %i.avk
  %i.ayr = shl i64 %i.ayq, 5
  %i.ays = or disjoint i64 %i.ayr, %i.avg
  %i.ayt = trunc i64 %i.ays to i32
  %i.ayu = getelementptr inbounds nuw i8, ptr %i.axx, i64 52 ; 2 uses
  %i.ayv = load i32, ptr %i.ayu, align 4, !tbaa !20
  %i.ayw = tail call i32 @llvm.umin.i32(i32 %i.ayv, i32 %i.ayt)
  store i32 %i.ayw, ptr %i.ayu, align 4, !tbaa !20
  br label %IsMatch.exit.thread

IsMatch.exit.thread:                              ; preds = %bb.hh, %bb.hm, %bb.hn, %bb.ho, %bb.hp, %bb.hq, %bb.hr, %bb.hl, %bb.hk, %bb.hj, %bb.hi, %IsMatch.exit.thread1115, %FindMatchLengthWithLimit.exit980, %bb.hc
  %.17 = phi i32 [ %.161313, %bb.hc ], [ 1, %IsMatch.exit.thread1115 ], [ %.161313, %FindMatchLengthWithLimit.exit980 ], [ 1, %bb.hi ], [ 1, %bb.hj ], [ 1, %bb.hk ], [ 1, %bb.hl ], [ 1, %bb.hr ], [ 1, %bb.hq ], [ 1, %bb.hp ], [ 1, %bb.ho ], [ 1, %bb.hn ], [ 1, %bb.hm ], [ 1, %bb.hh ] ; 2 uses
  br i1 %i.avl, label %.thread1099, label %bb.hc, !llvm.loop !39

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

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS16BrotliDictionary", !9, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!"p1 short", !9, i64 0}
!13 = !{!"p1 omnipotent char", !9, i64 0}
!14 = !{!"p1 _ZTS8DictWord", !9, i64 0}
!15 = !{!"p1 _ZTS14BrotliTrieNode", !9, i64 0}
!16 = !{!"BrotliTrieNode", !5, i64 0, !5, i64 1, !5, i64 2, !6, i64 4, !6, i64 8}
!17 = !{!"BrotliTrie", !15, i64 0, !11, i64 8, !11, i64 16, !16, i64 24}
!18 = !{!"p1 _ZTS27ContextualEncoderDictionary", !9, i64 0}
!19 = !{!"BrotliEncoderDictionary", !10, i64 0, !6, i64 8, !6, i64 12, !11, i64 16, !12, i64 24, !13, i64 32, !12, i64 40, !14, i64 48, !17, i64 56, !6, i64 96, !18, i64 104, !12, i64 112, !13, i64 120, !11, i64 128, !12, i64 136, !11, i64 144, !14, i64 152, !10, i64 160}
!20 = !{!6, !6, i64 0}
!21 = !{!19, !10, i64 0}
!22 = !{!5, !5, i64 0}
!23 = !{!"llvm.loop.mustprogress"}
!24 = distinct !{!24, !23}
!25 = !{!19, !18, i64 104}
!26 = !{!"p1 _ZTS23BrotliEncoderDictionary", !9, i64 0}
!27 = !{!"ContextualEncoderDictionary", !6, i64 0, !5, i64 4, !5, i64 5, !5, i64 72, !11, i64 584, !19, i64 592, !26, i64 760}
!28 = !{!27, !5, i64 4}
!29 = !{!26, !26, i64 0}
!30 = !{!19, !6, i64 8}
!31 = distinct !{!31, !23}
!32 = distinct !{!32, !23, !47, !48}
!33 = distinct !{!33, !23, !48, !47}
!34 = distinct !{!34, !23}
!35 = distinct !{!35, !23}
!36 = distinct !{!36, !23}
!37 = distinct !{!37, !23}
!38 = distinct !{!38, !23}
!39 = distinct !{!39, !23}
!40 = !{!19, !12, i64 40}
!41 = !{!"short", !5, i64 0}
!42 = !{!41, !41, i64 0}
!43 = !{!19, !14, i64 48}
!44 = !{!"BrotliDictionary", !5, i64 0, !5, i64 32, !11, i64 160, !13, i64 168}
!45 = !{!44, !13, i64 168}
!46 = !{!19, !11, i64 16}
!47 = !{!"llvm.loop.isvectorized", i32 1}
!48 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_1
