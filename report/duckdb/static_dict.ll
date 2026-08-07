loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i32 0, 2) i32 @_ZN13duckdb_brotli36BrotliFindAllStaticDictionaryMatchesEPKNS_23BrotliEncoderDictionaryEPKhmmPj(ptr nofree noundef readonly captures(address) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [38 x i32], align 16              ; 15 uses
  %i.b = tail call fastcc noundef i32 @_ZL39BrotliFindAllStaticDictionaryMatchesForPKN13duckdb_brotli23BrotliEncoderDictionaryEPKhmmPj(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4) ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !7    ; 4 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i8, ptr %i.e, align 4, !tbaa !19
  %i.g = icmp ugt i8 %i.f, 1
  br i1 %i.g, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !22   ; 2 uses
  %i.j = icmp eq ptr %i.i, %0
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !22
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.034 = phi ptr [ %i.l, %bb.d ], [ %i.i, %bb.c ]
  store <4 x i32> splat (i32 268435455), ptr %i.a, align 16, !tbaa !3
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <4 x i32> splat (i32 268435455), ptr %i.m, align 16, !tbaa !3
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store <4 x i32> splat (i32 268435455), ptr %i.n, align 16, !tbaa !3
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store <4 x i32> splat (i32 268435455), ptr %i.o, align 16, !tbaa !3
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store <4 x i32> splat (i32 268435455), ptr %i.p, align 16, !tbaa !3
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store <4 x i32> splat (i32 268435455), ptr %i.q, align 16, !tbaa !3
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store <4 x i32> splat (i32 268435455), ptr %i.r, align 16, !tbaa !3
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store <4 x i32> splat (i32 268435455), ptr %i.s, align 16, !tbaa !3
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store <4 x i32> splat (i32 268435455), ptr %i.t, align 16, !tbaa !3
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store i32 268435455, ptr %i.u, align 16, !tbaa !3
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 148
  store i32 268435455, ptr %i.v, align 4, !tbaa !3
  %i.w = call fastcc noundef i32 @_ZL39BrotliFindAllStaticDictionaryMatchesForPKN13duckdb_brotli23BrotliEncoderDictionaryEPKhmmPj(ptr noundef %.034, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %i.a)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.h
  %indvars.iv = phi i64 [ 0, %bb.e ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.z = load i32, ptr %i.y, align 4, !tbaa !3    ; 3 uses
  %.not38 = icmp eq i32 %i.z, 268435455
  br i1 %.not38, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = and i32 %i.z, 31
  %i.ab = load ptr, ptr %0, align 8, !tbaa !23
  %i.ac = zext nneg i32 %i.aa to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !24
  %i.af = zext nneg i8 %i.ae to i32
  %i.ag = shl nuw i32 1, %i.af
  %i.ah = and i32 %i.ag, 134217726
  %i.ai = load i32, ptr %i.x, align 8, !tbaa !25
  %i.aj = shl i32 %i.ai, 5
  %i.ak = mul i32 %i.aj, %i.ah
  %i.al = add i32 %i.ak, %i.z
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3
  %i.ao = call noundef i32 @llvm.umin.i32(i32 %i.an, i32 %i.al)
  store i32 %i.ao, ptr %i.am, align 4, !tbaa !3
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 38
  br i1 %exitcond.not, label %bb.i, label %bb.f, !llvm.loop !26

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

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL39BrotliFindAllStaticDictionaryMatchesForPKN13duckdb_brotli23BrotliEncoderDictionaryEPKhmmPj(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef %4) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %.0.copyload.i = load i32, ptr %1, align 1
  %i.c = mul i32 %.0.copyload.i, 506832829
  %i.d = lshr i32 %i.c, 17
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.e
  %i.g = load i16, ptr %i.f, align 2, !tbaa !29   ; 2 uses
  %.not = icmp eq i16 %i.g, 0
  br i1 %.not, label %._crit_edge1218, label %.lr.ph1217

.lr.ph1217:                                       ; preds = %bb.a
  %i.h = zext i16 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !31
  %i.k = load ptr, ptr %0, align 8, !tbaa !23     ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 168 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph1217, %.critedge
  %.01215 = phi i32 [ 0, %.lr.ph1217 ], [ %.6, %.critedge ] ; 7 uses
  %.07501214 = phi i64 [ %i.h, %.lr.ph1217 ], [ %i.p, %.critedge ] ; 2 uses
  %i.p = add i64 %.07501214, 1
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.07501214 ; 3 uses
  %.sroa.0579.0.copyload = load i8, ptr %i.q, align 2, !tbaa !24 ; 2 uses
  %.sroa.7581.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %.sroa.7581.0.copyload = load i8, ptr %.sroa.7581.0..sroa_idx, align 1, !tbaa !24 ; 3 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %.sroa.9.0.copyload = load i16, ptr %.sroa.9.0..sroa_idx, align 2, !tbaa !29 ; 2 uses
  %i.r = and i8 %.sroa.0579.0.copyload, 31        ; 4 uses
  %i.s = zext nneg i8 %i.r to i64                 ; 103 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !24
  %i.v = zext nneg i8 %i.u to i64                 ; 59 uses
  %i.w = shl nuw i64 1, %i.v
  %i.x = zext i16 %.sroa.9.0.copyload to i64      ; 61 uses
  %i.y = icmp slt i8 %.sroa.0579.0.copyload, 0
  %i.z = icmp eq i8 %.sroa.7581.0.copyload, 0
  br i1 %i.z, label %bb.c, label %bb.dq

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.s
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !3
  %i.ac = zext i32 %i.ab to i64
  %i.ad = mul nuw nsw i64 %i.x, %i.s
  %i.ae = load ptr, ptr %i.m, align 8, !tbaa !32
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ad
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ac ; 4 uses
  %i.ah = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 32) %i.s, i64 %3) ; 3 uses
  %i.ai = icmp samesign ugt i64 %i.ah, 7
  br i1 %i.ai, label %.lr.ph1198, label %.preheader1136

.preheader1136:                                   ; preds = %bb.e, %bb.c
  %.027.i993.lcssa = phi i64 [ %i.ah, %bb.c ], [ %i.as, %bb.e ] ; 8 uses
  %.025.i994.lcssa = phi ptr [ %1, %bb.c ], [ %i.aq, %bb.e ] ; 7 uses
  %.022.i995.lcssa = phi ptr [ %i.ag, %bb.c ], [ %i.ar, %bb.e ] ; 10 uses
  %.not.i10001202 = icmp eq i64 %.027.i993.lcssa, 0
  br i1 %.not.i10001202, label %.critedge.i1001, label %.lr.ph1206.preheader

.lr.ph1206.preheader:                             ; preds = %.preheader1136
  %scevgep1366 = getelementptr i8, ptr %.022.i995.lcssa, i64 %.027.i993.lcssa ; 7 uses
  %5 = load i8, ptr %.022.i995.lcssa, align 1, !tbaa !24
  %6 = load i8, ptr %.025.i994.lcssa, align 1, !tbaa !24
  %7 = icmp eq i8 %5, %6
  br i1 %7, label %8, label %.critedge.i1001

.lr.ph1198:                                       ; preds = %bb.c, %bb.e
  %.022.i9951197 = phi ptr [ %i.ar, %bb.e ], [ %i.ag, %bb.c ] ; 3 uses
  %.025.i9941196 = phi ptr [ %i.aq, %bb.e ], [ %1, %bb.c ] ; 2 uses
  %.027.i9931195 = phi i64 [ %i.as, %bb.e ], [ %i.ah, %bb.c ]
  %.0.copyload.i1008 = load i64, ptr %.025.i9941196, align 1 ; 2 uses
  %.0.copyload.i1007 = load i64, ptr %.022.i9951197, align 1 ; 2 uses
  %.not30.i1003 = icmp eq i64 %.0.copyload.i1008, %.0.copyload.i1007
  br i1 %.not30.i1003, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph1198
  %i.aj = xor i64 %.0.copyload.i1007, %.0.copyload.i1008
  %i.ak = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aj, i1 true)
  %i.al = ptrtoint ptr %.022.i9951197 to i64
  %i.am = ptrtoint ptr %i.ag to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = lshr i64 %i.ak, 3
  %i.ap = add i64 %i.an, %i.ao
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit1006

bb.e:                                             ; preds = %.lr.ph1198
  %i.aq = getelementptr inbounds nuw i8, ptr %.025.i9941196, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.022.i9951197, i64 8 ; 2 uses
  %i.as = add nsw i64 %.027.i9931195, -8          ; 3 uses
  %i.at = icmp ugt i64 %i.as, 7
  br i1 %i.at, label %.lr.ph1198, label %.preheader1136, !llvm.loop !34

8:                                                ; preds = %.lr.ph1206.preheader
  %.not.i1000 = icmp eq i64 %.027.i993.lcssa, 1
  br i1 %.not.i1000, label %.critedge.i1001, label %.lr.ph1206.1

.lr.ph1206.1:                                     ; preds = %8
  %9 = getelementptr inbounds nuw i8, ptr %.022.i995.lcssa, i64 1 ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %.025.i994.lcssa, i64 1
  %11 = load i8, ptr %9, align 1, !tbaa !24
  %12 = load i8, ptr %10, align 1, !tbaa !24
  %13 = icmp eq i8 %11, %12
  br i1 %13, label %14, label %.critedge.i1001

14:                                               ; preds = %.lr.ph1206.1
  %.not.i1000.1 = icmp eq i64 %.027.i993.lcssa, 2
  br i1 %.not.i1000.1, label %.critedge.i1001, label %.lr.ph1206.2

.lr.ph1206.2:                                     ; preds = %14
  %15 = getelementptr inbounds nuw i8, ptr %.022.i995.lcssa, i64 2 ; 2 uses
  %16 = getelementptr inbounds nuw i8, ptr %.025.i994.lcssa, i64 2
  %17 = load i8, ptr %15, align 1, !tbaa !24
  %18 = load i8, ptr %16, align 1, !tbaa !24
  %19 = icmp eq i8 %17, %18
  br i1 %19, label %20, label %.critedge.i1001

20:                                               ; preds = %.lr.ph1206.2
  %.not.i1000.2 = icmp eq i64 %.027.i993.lcssa, 3
  br i1 %.not.i1000.2, label %.critedge.i1001, label %.lr.ph1206.3

.lr.ph1206.3:                                     ; preds = %20
  %21 = getelementptr inbounds nuw i8, ptr %.022.i995.lcssa, i64 3 ; 2 uses
  %22 = getelementptr inbounds nuw i8, ptr %.025.i994.lcssa, i64 3
  %23 = load i8, ptr %21, align 1, !tbaa !24
  %24 = load i8, ptr %22, align 1, !tbaa !24
  %25 = icmp eq i8 %23, %24
  br i1 %25, label %26, label %.critedge.i1001

26:                                               ; preds = %.lr.ph1206.3
  %.not.i1000.3 = icmp eq i64 %.027.i993.lcssa, 4
  br i1 %.not.i1000.3, label %.critedge.i1001, label %.lr.ph1206.4

.lr.ph1206.4:                                     ; preds = %26
  %27 = getelementptr inbounds nuw i8, ptr %.022.i995.lcssa, i64 4 ; 2 uses
  %28 = getelementptr inbounds nuw i8, ptr %.025.i994.lcssa, i64 4
  %i.au = load i8, ptr %27, align 1, !tbaa !24
  %i.av = load i8, ptr %28, align 1, !tbaa !24
  %i.aw = icmp eq i8 %i.au, %i.av
  br i1 %i.aw, label %29, label %.critedge.i1001

29:                                               ; preds = %.lr.ph1206.4
  %.not.i1000.4 = icmp eq i64 %.027.i993.lcssa, 5
  br i1 %.not.i1000.4, label %.critedge.i1001, label %.lr.ph1206.5

.lr.ph1206.5:                                     ; preds = %29
  %30 = getelementptr inbounds nuw i8, ptr %.022.i995.lcssa, i64 5 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.025.i994.lcssa, i64 5
  %31 = load i8, ptr %30, align 1, !tbaa !24
  %32 = load i8, ptr %i.ax, align 1, !tbaa !24
  %i.ay = icmp eq i8 %31, %32
  br i1 %i.ay, label %33, label %.critedge.i1001

33:                                               ; preds = %.lr.ph1206.5
  %.not.i1000.5 = icmp eq i64 %.027.i993.lcssa, 6
  br i1 %.not.i1000.5, label %.critedge.i1001, label %.lr.ph1206.6

.lr.ph1206.6:                                     ; preds = %33
  %34 = getelementptr inbounds nuw i8, ptr %.022.i995.lcssa, i64 6 ; 2 uses
  %35 = getelementptr inbounds nuw i8, ptr %.025.i994.lcssa, i64 6
  %36 = load i8, ptr %34, align 1, !tbaa !24
  %37 = load i8, ptr %35, align 1, !tbaa !24
  %38 = icmp eq i8 %36, %37
  %spec.select = select i1 %38, ptr %scevgep1366, ptr %34
  br label %.critedge.i1001

.critedge.i1001:                                  ; preds = %.lr.ph1206.6, %8, %.lr.ph1206.preheader, %.lr.ph1206.1, %14, %.lr.ph1206.2, %20, %.lr.ph1206.3, %26, %.lr.ph1206.4, %29, %.lr.ph1206.5, %33, %.preheader1136
  %.224.i999.lcssa = phi ptr [ %.022.i995.lcssa, %.preheader1136 ], [ %.022.i995.lcssa, %.lr.ph1206.preheader ], [ %scevgep1366, %8 ], [ %9, %.lr.ph1206.1 ], [ %scevgep1366, %14 ], [ %15, %.lr.ph1206.2 ], [ %scevgep1366, %20 ], [ %21, %.lr.ph1206.3 ], [ %scevgep1366, %26 ], [ %27, %.lr.ph1206.4 ], [ %scevgep1366, %29 ], [ %30, %.lr.ph1206.5 ], [ %scevgep1366, %33 ], [ %spec.select, %.lr.ph1206.6 ]
  %i.az = ptrtoint ptr %.224.i999.lcssa to i64
  %i.ba = ptrtoint ptr %i.ag to i64
  %i.bb = sub i64 %i.az, %i.ba
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit1006

_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit1006: ; preds = %bb.d, %.critedge.i1001
  %.2.i1002 = phi i64 [ %i.ap, %bb.d ], [ %i.bb, %.critedge.i1001 ] ; 4 uses
  %i.bc = icmp eq i64 %.2.i1002, %i.s
  br i1 %i.bc, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit1006
  %i.bd = shl nuw nsw i64 %i.x, 5
  %i.be = or disjoint i64 %i.bd, %i.s
  %i.bf = trunc nuw nsw i64 %i.be to i32
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.s ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !3
  %i.bi = tail call noundef i32 @llvm.umin.i32(i32 %i.bh, i32 %i.bf)
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !3
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit1006
  %.1 = phi i32 [ 1, %bb.f ], [ %.01215, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit1006 ]
  %i.bj = add nsw i64 %i.s, -1                    ; 3 uses
  %.not818 = icmp ult i64 %.2.i1002, %i.bj
  br i1 %.not818, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bk = shl i64 12, %i.v
  %i.bl = add nuw i64 %i.bk, %i.x
  %i.bm = shl i64 %i.bl, 5
  %i.bn = or disjoint i64 %i.bm, %i.s
  %i.bo = trunc i64 %i.bn to i32
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.bj ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !3
  %i.br = tail call noundef i32 @llvm.umin.i32(i32 %i.bq, i32 %i.bo)
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !3
  %i.bs = add nuw nsw i64 %i.s, 2                 ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %3
  br i1 %i.bt, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 %i.bj
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !24
  %i.bw = icmp eq i8 %i.bv, 105
  br i1 %i.bw, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 %i.s ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !24
  %i.bz = icmp eq i8 %i.by, 110
  br i1 %i.bz, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 1
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !24
  %i.cc = icmp eq i8 %i.cb, 103
  br i1 %i.cc, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 %i.bs
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !24
  %i.cf = icmp eq i8 %i.ce, 32
  br i1 %i.cf, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cg = shl i64 49, %i.v
  %i.ch = add nuw i64 %i.cg, %i.x
  %i.ci = shl i64 %i.ch, 5
  %i.cj = or disjoint i64 %i.ci, %i.s
  %i.ck = trunc i64 %i.cj to i32
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.s
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 12 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !3
  %i.co = tail call noundef i32 @llvm.umin.i32(i32 %i.cn, i32 %i.ck)
  store i32 %i.co, ptr %i.cm, align 4, !tbaa !3
  br label %bb.n

bb.n:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.g
  %.2 = phi i32 [ %.1, %bb.g ], [ 1, %bb.m ], [ 1, %bb.l ], [ 1, %bb.k ], [ 1, %bb.j ], [ 1, %bb.i ], [ 1, %bb.h ]
  %i.cp = icmp samesign ugt i8 %i.r, 9
  %i.cq = add nsw i64 %i.s, -9
  %i.cr = tail call i64 @llvm.umax.i64(i64 %2, i64 range(i64 1, 23) %i.cq)
  %.0752 = select i1 %i.cp, i64 %i.cr, i64 %2     ; 7 uses
  %i.cs = add nsw i64 %i.s, -2
  %i.ct = tail call noundef i64 @llvm.umin.i64(i64 %.2.i1002, i64 %i.cs) ; 3 uses
  %.not8191210 = icmp ugt i64 %.0752, %i.ct
  br i1 %.not8191210, label %._crit_edge, label %.lr.ph1212

.lr.ph1212:                                       ; preds = %bb.n
  %i.cu = load i64, ptr %i.o, align 8, !tbaa !35  ; 2 uses
  %i.cv = add i64 %.0752, 1
  %i.cw = add i64 %i.ct, 1
  %i.cx = tail call i64 @llvm.umax.i64(i64 %i.cv, i64 %i.cw)
  %i.cy = sub i64 %i.cx, %.0752                   ; 3 uses
  %min.iters.check = icmp ult i64 %i.cy, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph1212
  %n.vec = and i64 %i.cy, -4                      ; 3 uses
  %i.cz = add i64 %.0752, %n.vec
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.cu, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1503 = insertelement <4 x i64> poison, i64 %i.s, i64 0
  %broadcast.splat1504 = shufflevector <4 x i64> %broadcast.splatinsert1503, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1505 = insertelement <4 x i64> poison, i64 %i.v, i64 0
  %broadcast.splat1506 = shufflevector <4 x i64> %broadcast.splatinsert1505, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1507 = insertelement <4 x i64> poison, i64 %i.x, i64 0
  %broadcast.splat1508 = shufflevector <4 x i64> %broadcast.splatinsert1507, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1509 = insertelement <4 x i64> poison, i64 %.0752, i64 0
  %broadcast.splat1510 = shufflevector <4 x i64> %broadcast.splatinsert1509, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i64> %broadcast.splat1510, <i64 0, i64 1, i64 2, i64 3>
  %i.da = getelementptr [4 x i8], ptr %4, i64 %.0752
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
  %wide.load = load <4 x i32>, ptr %i.dm, align 4, !tbaa !3
  %i.dn = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %wide.load, <4 x i32> %i.dl)
  store <4 x i32> %i.dn, ptr %i.dm, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i64> %vec.ind, splat (i64 4)
  %i.do = icmp eq i64 %index.next, %n.vec
  br i1 %i.do, label %middle.block, label %vector.body, !llvm.loop !36

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cy, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph1212, %middle.block
  %.07531211.ph = phi i64 [ %.0752, %.lr.ph1212 ], [ %i.cz, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.07531211 = phi i64 [ %i.ed, %scalar.ph ], [ %.07531211.ph, %scalar.ph.preheader ] ; 3 uses
  %i.dp = sub i64 %i.s, %.07531211                ; 2 uses
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
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07531211 ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !3
  %i.ec = tail call noundef i32 @llvm.umin.i32(i32 %i.eb, i32 %i.dz)
  store i32 %i.ec, ptr %i.ea, align 4, !tbaa !3
  %i.ed = add i64 %.07531211, 1                   ; 2 uses
  %.not819 = icmp ugt i64 %i.ed, %i.ct
  br i1 %.not819, label %._crit_edge, label %scalar.ph, !llvm.loop !39

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.n
  %.3.lcssa = phi i32 [ %.2, %bb.n ], [ 1, %middle.block ], [ 1, %scalar.ph ] ; 107 uses
  %i.ee = icmp ult i64 %.2.i1002, %i.s
  br i1 %i.ee, label %.critedge, label %bb.o, !llvm.loop !40

bb.o:                                             ; preds = %._crit_edge
  %i.ef = add nuw nsw i64 %i.s, 6                 ; 5 uses
  %.not820 = icmp ult i64 %i.ef, %3
  br i1 %.not820, label %bb.p, label %.critedge, !llvm.loop !40

bb.p:                                             ; preds = %bb.o
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 %i.s ; 68 uses
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !24
  switch i8 %i.eh, label %.critedge [
    i8 32, label %bb.q
    i8 34, label %bb.bn
    i8 46, label %bb.bp
    i8 44, label %bb.by
    i8 10, label %bb.ca
    i8 93, label %bb.cc
    i8 39, label %bb.cd
    i8 58, label %bb.ce
    i8 40, label %bb.cf
    i8 61, label %bb.cg
    i8 97, label %bb.cj
    i8 101, label %bb.cm
    i8 102, label %bb.cu
    i8 105, label %bb.cy
    i8 108, label %bb.df
    i8 111, label %bb.dm
  ]

bb.q:                                             ; preds = %bb.p
  %i.ei = add nuw i64 %i.w, %i.x
  %i.ej = shl i64 %i.ei, 5
  %i.ek = or disjoint i64 %i.ej, %i.s
  %i.el = trunc i64 %i.ek to i32
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.s ; 14 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 4 ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !3
  %i.ep = tail call noundef i32 @llvm.umin.i32(i32 %i.eo, i32 %i.el)
  store i32 %i.ep, ptr %i.en, align 4, !tbaa !3
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eg, i64 1
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !24
  switch i8 %i.er, label %.critedge [
    i8 97, label %bb.r
    i8 98, label %bb.aa
    i8 105, label %bb.ad
    i8 102, label %bb.ai
    i8 111, label %bb.aq
    i8 110, label %bb.av
    i8 116, label %bb.az
    i8 119, label %bb.bi
  ]

bb.r:                                             ; preds = %bb.q
  %i.es = getelementptr inbounds nuw i8, ptr %i.eg, i64 2
  %i.et = load i8, ptr %i.es, align 1, !tbaa !24
  switch i8 %i.et, label %.critedge [
    i8 32, label %bb.s
    i8 115, label %bb.t
    i8 116, label %bb.v
    i8 110, label %bb.x
  ]

bb.s:                                             ; preds = %bb.r
  %i.eu = shl i64 28, %i.v
  %i.ev = add nuw i64 %i.eu, %i.x
  %i.ew = shl i64 %i.ev, 5
  %i.ex = or disjoint i64 %i.ew, %i.s
  %i.ey = trunc i64 %i.ex to i32
  %i.ez = getelementptr inbounds nuw i8, ptr %i.em, i64 12 ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !3
  %i.fb = tail call noundef i32 @llvm.umin.i32(i32 %i.fa, i32 %i.ey)
  store i32 %i.fb, ptr %i.ez, align 4, !tbaa !3
  br label %.critedge

bb.t:                                             ; preds = %bb.r
  %i.fc = getelementptr inbounds nuw i8, ptr %i.eg, i64 3
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !24
  %i.fe = icmp eq i8 %i.fd, 32
  br i1 %i.fe, label %bb.u, label %.critedge

bb.u:                                             ; preds = %bb.t
  %i.ff = shl i64 46, %i.v
  %i.fg = add nuw i64 %i.ff, %i.x
  %i.fh = shl i64 %i.fg, 5
  %i.fi = or disjoint i64 %i.fh, %i.s
  %i.fj = trunc i64 %i.fi to i32
  %i.fk = getelementptr inbounds nuw i8, ptr %i.em, i64 16 ; 2 uses
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !3
  %i.fm = tail call noundef i32 @llvm.umin.i32(i32 %i.fl, i32 %i.fj)
  store i32 %i.fm, ptr %i.fk, align 4, !tbaa !3
  br label %.critedge

bb.v:                                             ; preds = %bb.r
  %i.fn = getelementptr inbounds nuw i8, ptr %i.eg, i64 3
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !24
  %i.fp = icmp eq i8 %i.fo, 32
  br i1 %i.fp, label %bb.w, label %.critedge

bb.w:                                             ; preds = %bb.v
  %i.fq = shl i64 60, %i.v
  %i.fr = add nuw i64 %i.fq, %i.x
  %i.fs = shl i64 %i.fr, 5
  %i.ft = or disjoint i64 %i.fs, %i.s
  %i.fu = trunc i64 %i.ft to i32
  %i.fv = getelementptr inbounds nuw i8, ptr %i.em, i64 16 ; 2 uses
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !3
  %i.fx = tail call noundef i32 @llvm.umin.i32(i32 %i.fw, i32 %i.fu)
  store i32 %i.fx, ptr %i.fv, align 4, !tbaa !3
  br label %.critedge

bb.x:                                             ; preds = %bb.r
  %i.fy = getelementptr inbounds nuw i8, ptr %i.eg, i64 3
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !24
  %i.ga = icmp eq i8 %i.fz, 100
  br i1 %i.ga, label %bb.y, label %.critedge

bb.y:                                             ; preds = %bb.x
  %i.gb = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !24
  %i.gd = icmp eq i8 %i.gc, 32
  br i1 %i.gd, label %bb.z, label %.critedge

bb.z:                                             ; preds = %bb.y
  %i.ge = shl i64 10, %i.v
  %i.gf = add nuw i64 %i.ge, %i.x
  %i.gg = shl i64 %i.gf, 5
  %i.gh = or disjoint i64 %i.gg, %i.s
  %i.gi = trunc i64 %i.gh to i32
  %i.gj = getelementptr inbounds nuw i8, ptr %i.em, i64 20 ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !3
  %i.gl = tail call noundef i32 @llvm.umin.i32(i32 %i.gk, i32 %i.gi)
  store i32 %i.gl, ptr %i.gj, align 4, !tbaa !3
  br label %.critedge

bb.aa:                                            ; preds = %bb.q
  %i.gm = getelementptr inbounds nuw i8, ptr %i.eg, i64 2
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !24
  %i.go = icmp eq i8 %i.gn, 121
  br i1 %i.go, label %bb.ab, label %.critedge

bb.ab:                                            ; preds = %bb.aa
  %i.gp = getelementptr inbounds nuw i8, ptr %i.eg, i64 3
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !24
  %i.gr = icmp eq i8 %i.gq, 32
  br i1 %i.gr, label %bb.ac, label %.critedge

bb.ac:                                            ; preds = %bb.ab
  %i.gs = shl i64 38, %i.v
  %i.gt = add nuw i64 %i.gs, %i.x
  %i.gu = shl i64 %i.gt, 5
  %i.gv = or disjoint i64 %i.gu, %i.s
  %i.gw = trunc i64 %i.gv to i32
  %i.gx = getelementptr inbounds nuw i8, ptr %i.em, i64 16 ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !3
  %i.gz = tail call noundef i32 @llvm.umin.i32(i32 %i.gy, i32 %i.gw)
  store i32 %i.gz, ptr %i.gx, align 4, !tbaa !3
  br label %.critedge

bb.ad:                                            ; preds = %bb.q
  %i.ha = getelementptr inbounds nuw i8, ptr %i.eg, i64 2
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !24
  switch i8 %i.hb, label %.critedge [
    i8 110, label %bb.ae
    i8 115, label %bb.ag
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.hc = getelementptr inbounds nuw i8, ptr %i.eg, i64 3
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !24
  %i.he = icmp eq i8 %i.hd, 32
  br i1 %i.he, label %bb.af, label %.critedge

bb.af:                                            ; preds = %bb.ae
  %i.hf = shl i64 16, %i.v
  %i.hg = add nuw i64 %i.hf, %i.x
  %i.hh = shl i64 %i.hg, 5
  %i.hi = or disjoint i64 %i.hh, %i.s
  %i.hj = trunc i64 %i.hi to i32
  %i.hk = getelementptr inbounds nuw i8, ptr %i.em, i64 16 ; 2 uses
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !3
  %i.hm = tail call noundef i32 @llvm.umin.i32(i32 %i.hl, i32 %i.hj)
  store i32 %i.hm, ptr %i.hk, align 4, !tbaa !3
  br label %.critedge

bb.ag:                                            ; preds = %bb.ad
  %i.hn = getelementptr inbounds nuw i8, ptr %i.eg, i64 3
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !24
  %i.hp = icmp eq i8 %i.ho, 32
  br i1 %i.hp, label %bb.ah, label %.critedge

bb.ah:                                            ; preds = %bb.ag
  %i.hq = shl i64 47, %i.v
  %i.hr = add nuw i64 %i.hq, %i.x
  %i.hs = shl i64 %i.hr, 5
  %i.ht = or disjoint i64 %i.hs, %i.s
  %i.hu = trunc i64 %i.ht to i32
  %i.hv = getelementptr inbounds nuw i8, ptr %i.em, i64 16 ; 2 uses
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !3
  %i.hx = tail call noundef i32 @llvm.umin.i32(i32 %i.hw, i32 %i.hu)
  store i32 %i.hx, ptr %i.hv, align 4, !tbaa !3
  br label %.critedge

bb.ai:                                            ; preds = %bb.q
  %i.hy = getelementptr inbounds nuw i8, ptr %i.eg, i64 2
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !24
  switch i8 %i.hz, label %.critedge [
end_hunk_0
begin_hunk_1_@_ZL39BrotliFindAllStaticDictionaryMatchesForPKN13duckdb_brotli23BrotliEncoderDictionaryEPKhmmPj:bb.a
  %i.xf = getelementptr inbounds nuw i8, ptr %i.eg, i64 3
  %i.xg = load i8, ptr %i.xf, align 1, !tbaa !24
  %i.xh = icmp eq i8 %i.xg, 32
  br i1 %i.xh, label %bb.de, label %.critedge

bb.de:                                            ; preds = %bb.dd
  %i.xi = shl i64 100, %i.v
  %i.xj = add nuw i64 %i.xi, %i.x
  %i.xk = shl i64 %i.xj, 5
  %i.xl = or disjoint i64 %i.xk, %i.s
  %i.xm = trunc i64 %i.xl to i32
  %i.xn = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.s
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 16 ; 2 uses
  %i.xp = load i32, ptr %i.xo, align 4, !tbaa !3
  %i.xq = tail call noundef i32 @llvm.umin.i32(i32 %i.xp, i32 %i.xm)
  store i32 %i.xq, ptr %i.xo, align 4, !tbaa !3
  br label %.critedge

bb.df:                                            ; preds = %bb.p
  %i.xr = getelementptr inbounds nuw i8, ptr %i.eg, i64 1
  %i.xs = load i8, ptr %i.xr, align 1, !tbaa !24
  switch i8 %i.xs, label %.critedge [
    i8 101, label %bb.dg
    i8 121, label %bb.dk
  ]

bb.dg:                                            ; preds = %bb.df
  %i.xt = getelementptr inbounds nuw i8, ptr %i.eg, i64 2
  %i.xu = load i8, ptr %i.xt, align 1, !tbaa !24
  %i.xv = icmp eq i8 %i.xu, 115
  br i1 %i.xv, label %bb.dh, label %.critedge

bb.dh:                                            ; preds = %bb.dg
  %i.xw = getelementptr inbounds nuw i8, ptr %i.eg, i64 3
  %i.xx = load i8, ptr %i.xw, align 1, !tbaa !24
  %i.xy = icmp eq i8 %i.xx, 115
  br i1 %i.xy, label %bb.di, label %.critedge

bb.di:                                            ; preds = %bb.dh
  %i.xz = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  %i.ya = load i8, ptr %i.xz, align 1, !tbaa !24
  %i.yb = icmp eq i8 %i.ya, 32
  br i1 %i.yb, label %bb.dj, label %.critedge

bb.dj:                                            ; preds = %bb.di
  %i.yc = shl i64 93, %i.v
  %i.yd = add nuw i64 %i.yc, %i.x
  %i.ye = shl i64 %i.yd, 5
  %i.yf = or disjoint i64 %i.ye, %i.s
  %i.yg = trunc i64 %i.yf to i32
  %i.yh = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.s
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yh, i64 20 ; 2 uses
  %i.yj = load i32, ptr %i.yi, align 4, !tbaa !3
  %i.yk = tail call noundef i32 @llvm.umin.i32(i32 %i.yj, i32 %i.yg)
  store i32 %i.yk, ptr %i.yi, align 4, !tbaa !3
  br label %.critedge

bb.dk:                                            ; preds = %bb.df
  %i.yl = getelementptr inbounds nuw i8, ptr %i.eg, i64 2
  %i.ym = load i8, ptr %i.yl, align 1, !tbaa !24
  %i.yn = icmp eq i8 %i.ym, 32
  br i1 %i.yn, label %bb.dl, label %.critedge

bb.dl:                                            ; preds = %bb.dk
  %i.yo = shl i64 61, %i.v
  %i.yp = add nuw i64 %i.yo, %i.x
  %i.yq = shl i64 %i.yp, 5
  %i.yr = or disjoint i64 %i.yq, %i.s
  %i.ys = trunc i64 %i.yr to i32
  %i.yt = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.s
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 12 ; 2 uses
  %i.yv = load i32, ptr %i.yu, align 4, !tbaa !3
  %i.yw = tail call noundef i32 @llvm.umin.i32(i32 %i.yv, i32 %i.ys)
  store i32 %i.yw, ptr %i.yu, align 4, !tbaa !3
  br label %.critedge

bb.dm:                                            ; preds = %bb.p
  %i.yx = getelementptr inbounds nuw i8, ptr %i.eg, i64 1
  %i.yy = load i8, ptr %i.yx, align 1, !tbaa !24
  %i.yz = icmp eq i8 %i.yy, 117
  br i1 %i.yz, label %bb.dn, label %.critedge

bb.dn:                                            ; preds = %bb.dm
  %i.za = getelementptr inbounds nuw i8, ptr %i.eg, i64 2
  %i.zb = load i8, ptr %i.za, align 1, !tbaa !24
  %i.zc = icmp eq i8 %i.zb, 115
  br i1 %i.zc, label %bb.do, label %.critedge

bb.do:                                            ; preds = %bb.dn
  %i.zd = getelementptr inbounds nuw i8, ptr %i.eg, i64 3
  %i.ze = load i8, ptr %i.zd, align 1, !tbaa !24
  %i.zf = icmp eq i8 %i.ze, 32
  br i1 %i.zf, label %bb.dp, label %.critedge

bb.dp:                                            ; preds = %bb.do
  %i.zg = shl i64 106, %i.v
  %i.zh = add nuw i64 %i.zg, %i.x
  %i.zi = shl i64 %i.zh, 5
  %i.zj = or disjoint i64 %i.zi, %i.s
  %i.zk = trunc i64 %i.zj to i32
  %i.zl = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.s
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 16 ; 2 uses
  %i.zn = load i32, ptr %i.zm, align 4, !tbaa !3
  %i.zo = tail call noundef i32 @llvm.umin.i32(i32 %i.zn, i32 %i.zk)
  store i32 %i.zo, ptr %i.zm, align 4, !tbaa !3
  br label %.critedge

bb.dq:                                            ; preds = %bb.b
  %.not815 = icmp eq i8 %.sroa.7581.0.copyload, 10 ; 12 uses
  %.sroa.0579.0.insert.ext = zext nneg i8 %i.r to i32 ; 2 uses
  %i.zp = icmp ult i64 %3, %i.s
  br i1 %i.zp, label %.critedge, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %.sroa.9.0.insert.ext = zext i16 %.sroa.9.0.copyload to i32
  %i.zq = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.s
  %i.zr = load i32, ptr %i.zq, align 4, !tbaa !3
  %i.zs = zext i32 %i.zr to i64
  %narrow.i854 = mul nuw nsw i32 %.sroa.9.0.insert.ext, %.sroa.0579.0.insert.ext
  %i.zt = zext nneg i32 %narrow.i854 to i64
  %i.zu = load ptr, ptr %i.m, align 8, !tbaa !32
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zu, i64 %i.zs
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zv, i64 %i.zt ; 3 uses
  %cond = icmp eq i8 %.sroa.7581.0.copyload, 10
  br i1 %cond, label %bb.ds, label %.preheader1137

.preheader1137:                                   ; preds = %bb.dr
  %.not1316 = icmp eq i8 %i.r, 0
  br i1 %.not1316, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit861.thread1045, label %.lr.ph1194

bb.ds:                                            ; preds = %bb.dr
  %i.zx = load i8, ptr %i.zw, align 1, !tbaa !24  ; 2 uses
  %i.zy = add i8 %i.zx, -97
  %or.cond.i855 = icmp ult i8 %i.zy, 26
  br i1 %or.cond.i855, label %bb.dt, label %.critedge

bb.dt:                                            ; preds = %bb.ds
  %i.zz = load i8, ptr %1, align 1, !tbaa !24
  %i.aaa = xor i8 %i.zz, %i.zx
  %i.aab = icmp eq i8 %i.aaa, 32
  br i1 %i.aab, label %bb.du, label %.critedge

bb.du:                                            ; preds = %bb.dt
  %i.aac = getelementptr inbounds nuw i8, ptr %i.zw, i64 1 ; 4 uses
  %i.aad = add nsw i32 %.sroa.0579.0.insert.ext, -1 ; 2 uses
  %i.aae = zext i32 %i.aad to i64                 ; 3 uses
  %i.aaf = icmp ugt i32 %i.aad, 7
  br i1 %i.aaf, label %.lr.ph, label %.preheader1140

.preheader1140:                                   ; preds = %bb.dw, %bb.du
  %.027.i867.lcssa = phi i64 [ %i.aae, %bb.du ], [ %i.aap, %bb.dw ] ; 3 uses
  %.025.i868.lcssa = phi ptr [ %i.n, %bb.du ], [ %i.aan, %bb.dw ]
  %.022.i869.lcssa = phi ptr [ %i.aac, %bb.du ], [ %i.aao, %bb.dw ] ; 3 uses
  %.not.i8741170 = icmp eq i64 %.027.i867.lcssa, 0
  br i1 %.not.i8741170, label %.critedge.i875, label %.lr.ph1174.preheader

.lr.ph1174.preheader:                             ; preds = %.preheader1140
  %scevgep = getelementptr i8, ptr %.022.i869.lcssa, i64 %.027.i867.lcssa
  br label %.lr.ph1174

.lr.ph:                                           ; preds = %bb.du, %bb.dw
  %.022.i8691167 = phi ptr [ %i.aao, %bb.dw ], [ %i.aac, %bb.du ] ; 3 uses
  %.025.i8681166 = phi ptr [ %i.aan, %bb.dw ], [ %i.n, %bb.du ] ; 2 uses
  %.027.i8671165 = phi i64 [ %i.aap, %bb.dw ], [ %i.aae, %bb.du ]
  %.0.copyload.i1026 = load i64, ptr %.025.i8681166, align 1 ; 2 uses
  %.0.copyload.i1025 = load i64, ptr %.022.i8691167, align 1 ; 2 uses
  %.not30.i877 = icmp eq i64 %.0.copyload.i1026, %.0.copyload.i1025
  br i1 %.not30.i877, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %.lr.ph
  %i.aag = xor i64 %.0.copyload.i1025, %.0.copyload.i1026
  %i.aah = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aag, i1 true)
  %i.aai = ptrtoint ptr %.022.i8691167 to i64
  %i.aaj = ptrtoint ptr %i.aac to i64
  %i.aak = sub i64 %i.aai, %i.aaj
  %i.aal = lshr i64 %i.aah, 3
  %i.aam = add i64 %i.aak, %i.aal
  br label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit861

bb.dw:                                            ; preds = %.lr.ph
  %i.aan = getelementptr inbounds nuw i8, ptr %.025.i8681166, i64 8 ; 2 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %.022.i8691167, i64 8 ; 2 uses
  %i.aap = add i64 %.027.i8671165, -8             ; 3 uses
  %i.aaq = icmp ugt i64 %i.aap, 7
  br i1 %i.aaq, label %.lr.ph, label %.preheader1140, !llvm.loop !34

.lr.ph1174:                                       ; preds = %.lr.ph1174.preheader, %bb.dx
  %.224.i8731173 = phi ptr [ %i.aaw, %bb.dx ], [ %.022.i869.lcssa, %.lr.ph1174.preheader ] ; 3 uses
  %.126.i8721172 = phi ptr [ %i.aav, %bb.dx ], [ %.025.i868.lcssa, %.lr.ph1174.preheader ] ; 2 uses
  %.128.i8711171 = phi i64 [ %i.aau, %bb.dx ], [ %.027.i867.lcssa, %.lr.ph1174.preheader ]
  %i.aar = load i8, ptr %.224.i8731173, align 1, !tbaa !24
  %i.aas = load i8, ptr %.126.i8721172, align 1, !tbaa !24
  %i.aat = icmp eq i8 %i.aar, %i.aas
  br i1 %i.aat, label %bb.dx, label %.critedge.i875

bb.dx:                                            ; preds = %.lr.ph1174
  %i.aau = add nsw i64 %.128.i8711171, -1         ; 2 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %.126.i8721172, i64 1
  %i.aaw = getelementptr inbounds nuw i8, ptr %.224.i8731173, i64 1
  %.not.i874 = icmp eq i64 %i.aau, 0
  br i1 %.not.i874, label %.critedge.i875, label %.lr.ph1174, !llvm.loop !41

.critedge.i875:                                   ; preds = %bb.dx, %.lr.ph1174, %.preheader1140
  %.224.i873.lcssa = phi ptr [ %.022.i869.lcssa, %.preheader1140 ], [ %.224.i8731173, %.lr.ph1174 ], [ %scevgep, %bb.dx ]
  %i.aax = ptrtoint ptr %.224.i873.lcssa to i64
  %i.aay = ptrtoint ptr %i.aac to i64
  %i.aaz = sub i64 %i.aax, %i.aay
  br label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit861

.lr.ph1194:                                       ; preds = %.preheader1137, %bb.ea
  %.0.i8571193 = phi i64 [ %i.abg, %bb.ea ], [ 0, %.preheader1137 ] ; 3 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %i.zw, i64 %.0.i8571193
  %i.abb = load i8, ptr %i.aba, align 1, !tbaa !24 ; 3 uses
  %i.abc = add i8 %i.abb, -97
  %or.cond40.i858 = icmp ult i8 %i.abc, 26
  %i.abd = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i8571193
  %i.abe = load i8, ptr %i.abd, align 1, !tbaa !24 ; 2 uses
  br i1 %or.cond40.i858, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %.lr.ph1194
  %i.abf = xor i8 %i.abe, %i.abb
  %.not39.i860 = icmp eq i8 %i.abf, 32
  br i1 %.not39.i860, label %bb.ea, label %.critedge

bb.dz:                                            ; preds = %.lr.ph1194
  %.not.i859 = icmp eq i8 %i.abb, %i.abe
  br i1 %.not.i859, label %bb.ea, label %.critedge

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  %i.abg = add nuw nsw i64 %.0.i8571193, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.abg, %i.s
  br i1 %exitcond.not, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit861.thread1045, label %.lr.ph1194, !llvm.loop !42

_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit861: ; preds = %.critedge.i875, %bb.dv
  %.2.i876 = phi i64 [ %i.aam, %bb.dv ], [ %i.aaz, %.critedge.i875 ]
  %i.abh = icmp eq i64 %.2.i876, %i.aae
  br i1 %i.abh, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit861.thread1045, label %.critedge, !llvm.loop !40

_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit861.thread1045: ; preds = %bb.ea, %.preheader1137, %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit861
  %i.abi = select i1 %.not815, i64 9, i64 44
  %i.abj = shl i64 %i.abi, %i.v
  %i.abk = add i64 %i.abj, %i.x
  %i.abl = shl i64 %i.abk, 5
  %i.abm = or disjoint i64 %i.abl, %i.s
  %i.abn = trunc i64 %i.abm to i32
  %i.abo = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.s ; 7 uses
  %i.abp = load i32, ptr %i.abo, align 4, !tbaa !3
  %i.abq = tail call noundef i32 @llvm.umin.i32(i32 %i.abp, i32 %i.abn)
  store i32 %i.abq, ptr %i.abo, align 4, !tbaa !3
  %i.abr = add nuw nsw i64 %i.s, 1                ; 7 uses
  %.not817 = icmp ult i64 %i.abr, %3
  br i1 %.not817, label %bb.eb, label %.critedge, !llvm.loop !40

bb.eb:                                            ; preds = %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit861.thread1045
  %i.abs = getelementptr inbounds nuw i8, ptr %1, i64 %i.s ; 5 uses
  %i.abt = load i8, ptr %i.abs, align 1, !tbaa !24
  switch i8 %i.abt, label %.critedge [
    i8 32, label %bb.ec
    i8 34, label %bb.ed
    i8 46, label %bb.ef
    i8 44, label %bb.eh
    i8 39, label %bb.ej
    i8 40, label %bb.ek
    i8 61, label %bb.el
  ]

bb.ec:                                            ; preds = %bb.eb
  %i.abu = select i1 %.not815, i64 4, i64 68
  %i.abv = shl i64 %i.abu, %i.v
  %i.abw = add i64 %i.abv, %i.x
  %i.abx = shl i64 %i.abw, 5
  %i.aby = or disjoint i64 %i.abx, %i.s
  %i.abz = trunc i64 %i.aby to i32
  %i.aca = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.abr ; 2 uses
  %i.acb = load i32, ptr %i.aca, align 4, !tbaa !3
  %i.acc = tail call noundef i32 @llvm.umin.i32(i32 %i.acb, i32 %i.abz)
  store i32 %i.acc, ptr %i.aca, align 4, !tbaa !3
  br label %.critedge

bb.ed:                                            ; preds = %bb.eb
  %i.acd = select i1 %.not815, i64 66, i64 87
  %i.ace = shl i64 %i.acd, %i.v
  %i.acf = add i64 %i.ace, %i.x
  %i.acg = shl i64 %i.acf, 5
  %i.ach = or disjoint i64 %i.acg, %i.s
  %i.aci = trunc i64 %i.ach to i32
  %i.acj = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.abr ; 2 uses
  %i.ack = load i32, ptr %i.acj, align 4, !tbaa !3
  %i.acl = tail call noundef i32 @llvm.umin.i32(i32 %i.ack, i32 %i.aci)
  store i32 %i.acl, ptr %i.acj, align 4, !tbaa !3
  %i.acm = getelementptr inbounds nuw i8, ptr %i.abs, i64 1
  %i.acn = load i8, ptr %i.acm, align 1, !tbaa !24
  %i.aco = icmp eq i8 %i.acn, 62
  br i1 %i.aco, label %bb.ee, label %.critedge

bb.ee:                                            ; preds = %bb.ed
  %i.acp = select i1 %.not815, i64 69, i64 97
  %i.acq = shl i64 %i.acp, %i.v
  %i.acr = add i64 %i.acq, %i.x
  %i.acs = shl i64 %i.acr, 5
  %i.act = or disjoint i64 %i.acs, %i.s
  %i.acu = trunc i64 %i.act to i32
  %i.acv = getelementptr inbounds nuw i8, ptr %i.abo, i64 8 ; 2 uses
  %i.acw = load i32, ptr %i.acv, align 4, !tbaa !3
  %i.acx = tail call noundef i32 @llvm.umin.i32(i32 %i.acw, i32 %i.acu)
  store i32 %i.acx, ptr %i.acv, align 4, !tbaa !3
  br label %.critedge

bb.ef:                                            ; preds = %bb.eb
  %i.acy = select i1 %.not815, i64 79, i64 101
  %i.acz = shl i64 %i.acy, %i.v
  %i.ada = add i64 %i.acz, %i.x
  %i.adb = shl i64 %i.ada, 5
  %i.adc = or disjoint i64 %i.adb, %i.s
  %i.add = trunc i64 %i.adc to i32
  %i.ade = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.abr ; 2 uses
  %i.adf = load i32, ptr %i.ade, align 4, !tbaa !3
  %i.adg = tail call noundef i32 @llvm.umin.i32(i32 %i.adf, i32 %i.add)
  store i32 %i.adg, ptr %i.ade, align 4, !tbaa !3
  %i.adh = getelementptr inbounds nuw i8, ptr %i.abs, i64 1
  %i.adi = load i8, ptr %i.adh, align 1, !tbaa !24
  %i.adj = icmp eq i8 %i.adi, 32
  br i1 %i.adj, label %bb.eg, label %.critedge

bb.eg:                                            ; preds = %bb.ef
  %i.adk = select i1 %.not815, i64 88, i64 114
  %i.adl = shl i64 %i.adk, %i.v
  %i.adm = add i64 %i.adl, %i.x
  %i.adn = shl i64 %i.adm, 5
  %i.ado = or disjoint i64 %i.adn, %i.s
  %i.adp = trunc i64 %i.ado to i32
  %i.adq = getelementptr inbounds nuw i8, ptr %i.abo, i64 8 ; 2 uses
  %i.adr = load i32, ptr %i.adq, align 4, !tbaa !3
  %i.ads = tail call noundef i32 @llvm.umin.i32(i32 %i.adr, i32 %i.adp)
  store i32 %i.ads, ptr %i.adq, align 4, !tbaa !3
  br label %.critedge

bb.eh:                                            ; preds = %bb.eb
  %i.adt = select i1 %.not815, i64 99, i64 112
  %i.adu = shl i64 %i.adt, %i.v
  %i.adv = add i64 %i.adu, %i.x
  %i.adw = shl i64 %i.adv, 5
  %i.adx = or disjoint i64 %i.adw, %i.s
  %i.ady = trunc i64 %i.adx to i32
  %i.adz = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.abr ; 2 uses
  %i.aea = load i32, ptr %i.adz, align 4, !tbaa !3
  %i.aeb = tail call noundef i32 @llvm.umin.i32(i32 %i.aea, i32 %i.ady)
  store i32 %i.aeb, ptr %i.adz, align 4, !tbaa !3
  %i.aec = getelementptr inbounds nuw i8, ptr %i.abs, i64 1
  %i.aed = load i8, ptr %i.aec, align 1, !tbaa !24
  %i.aee = icmp eq i8 %i.aed, 32
  br i1 %i.aee, label %bb.ei, label %.critedge

bb.ei:                                            ; preds = %bb.eh
  %i.aef = select i1 %.not815, i64 58, i64 107
  %i.aeg = shl i64 %i.aef, %i.v
  %i.aeh = add i64 %i.aeg, %i.x
  %i.aei = shl i64 %i.aeh, 5
  %i.aej = or disjoint i64 %i.aei, %i.s
  %i.aek = trunc i64 %i.aej to i32
  %i.ael = getelementptr inbounds nuw i8, ptr %i.abo, i64 8 ; 2 uses
  %i.aem = load i32, ptr %i.ael, align 4, !tbaa !3
  %i.aen = tail call noundef i32 @llvm.umin.i32(i32 %i.aem, i32 %i.aek)
  store i32 %i.aen, ptr %i.ael, align 4, !tbaa !3
  br label %.critedge

bb.ej:                                            ; preds = %bb.eb
  %i.aeo = select i1 %.not815, i64 74, i64 94
  %i.aep = shl i64 %i.aeo, %i.v
  %i.aeq = add i64 %i.aep, %i.x
  %i.aer = shl i64 %i.aeq, 5
  %i.aes = or disjoint i64 %i.aer, %i.s
  %i.aet = trunc i64 %i.aes to i32
  %i.aeu = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.abr ; 2 uses
  %i.aev = load i32, ptr %i.aeu, align 4, !tbaa !3
  %i.aew = tail call noundef i32 @llvm.umin.i32(i32 %i.aev, i32 %i.aet)
  store i32 %i.aew, ptr %i.aeu, align 4, !tbaa !3
  br label %.critedge

bb.ek:                                            ; preds = %bb.eb
  %i.aex = select i1 %.not815, i64 78, i64 113
  %i.aey = shl i64 %i.aex, %i.v
  %i.aez = add i64 %i.aey, %i.x
  %i.afa = shl i64 %i.aez, 5
  %i.afb = or disjoint i64 %i.afa, %i.s
  %i.afc = trunc i64 %i.afb to i32
  %i.afd = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.abr ; 2 uses
  %i.afe = load i32, ptr %i.afd, align 4, !tbaa !3
  %i.aff = tail call noundef i32 @llvm.umin.i32(i32 %i.afe, i32 %i.afc)
  store i32 %i.aff, ptr %i.afd, align 4, !tbaa !3
  br label %.critedge

bb.el:                                            ; preds = %bb.eb
  %i.afg = getelementptr inbounds nuw i8, ptr %i.abs, i64 1
  %i.afh = load i8, ptr %i.afg, align 1, !tbaa !24
  switch i8 %i.afh, label %.critedge [
    i8 34, label %bb.em
    i8 39, label %bb.en
  ]

bb.em:                                            ; preds = %bb.el
  %i.afi = select i1 %.not815, i64 104, i64 105
  %i.afj = shl i64 %i.afi, %i.v
  %i.afk = add i64 %i.afj, %i.x
  %i.afl = shl i64 %i.afk, 5
  %i.afm = or disjoint i64 %i.afl, %i.s
  %i.afn = trunc i64 %i.afm to i32
  %i.afo = getelementptr inbounds nuw i8, ptr %i.abo, i64 8 ; 2 uses
  %i.afp = load i32, ptr %i.afo, align 4, !tbaa !3
  %i.afq = tail call noundef i32 @llvm.umin.i32(i32 %i.afp, i32 %i.afn)
  store i32 %i.afq, ptr %i.afo, align 4, !tbaa !3
  br label %.critedge

bb.en:                                            ; preds = %bb.el
  %i.afr = select i1 %.not815, i64 108, i64 116
  %i.afs = shl i64 %i.afr, %i.v
  %i.aft = add i64 %i.afs, %i.x
  %i.afu = shl i64 %i.aft, 5
  %i.afv = or disjoint i64 %i.afu, %i.s
  %i.afw = trunc i64 %i.afv to i32
  %i.afx = getelementptr inbounds nuw i8, ptr %i.abo, i64 8 ; 2 uses
  %i.afy = load i32, ptr %i.afx, align 4, !tbaa !3
  %i.afz = tail call noundef i32 @llvm.umin.i32(i32 %i.afy, i32 %i.afw)
  store i32 %i.afz, ptr %i.afx, align 4, !tbaa !3
  br label %.critedge

.critedge:                                        ; preds = %bb.dy, %bb.dz, %bb.dt, %bb.ds, %bb.dq, %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit861, %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit861.thread1045, %bb.el, %bb.eb, %bb.ee, %bb.ed, %bb.ei, %bb.eh, %bb.ek, %bb.em, %bb.en, %bb.ej, %bb.ef, %bb.eg, %bb.ec, %._crit_edge, %bb.o, %bb.ac, %bb.ab, %bb.aa, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.aj, %bb.ak, %bb.al, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bf, %bb.be, %bb.bd, %bb.bb, %bb.bc, %bb.bg, %bb.bh, %bb.as, %bb.ar, %bb.at, %bb.au, %bb.af, %bb.ae, %bb.ag, %bb.ah, %bb.s, %bb.w, %bb.v, %bb.x, %bb.y, %bb.z, %bb.t, %bb.u, %bb.bq, %bb.br, %bb.bx, %bb.bw, %bb.bv, %bb.bt, %bb.bu, %bb.bp, %bb.cb, %bb.ca, %bb.cd, %bb.cf, %bb.cl, %bb.ck, %bb.cj, %bb.cx, %bb.cw, %bb.cv, %bb.cu, %bb.dl, %bb.dk, %bb.dg, %bb.dh, %bb.di, %bb.dj, %bb.dm, %bb.dn, %bb.do, %bb.dp, %bb.db, %bb.da, %bb.cz, %bb.dc, %bb.dd, %bb.de, %bb.co, %bb.cn, %bb.ct, %bb.cs, %bb.cr, %bb.cp, %bb.cq, %bb.ch, %bb.ci, %bb.ce, %bb.cc, %bb.by, %bb.bz, %bb.bn, %bb.bo, %bb.r, %bb.ad, %bb.ai, %bb.aq, %bb.ba, %bb.az, %bb.q, %bb.bs, %bb.cg, %bb.cm, %bb.cy, %bb.df, %bb.p
  %.6 = phi i32 [ %.3.lcssa, %._crit_edge ], [ %.3.lcssa, %bb.p ], [ %.3.lcssa, %bb.o ], [ %.3.lcssa, %bb.ac ], [ %.3.lcssa, %bb.ab ], [ %.3.lcssa, %bb.aa ], [ %.3.lcssa, %bb.ap ], [ %.3.lcssa, %bb.ao ], [ %.3.lcssa, %bb.an ], [ %.3.lcssa, %bb.am ], [ %.3.lcssa, %bb.aj ], [ %.3.lcssa, %bb.ak ], [ %.3.lcssa, %bb.al ], [ %.3.lcssa, %bb.ay ], [ %.3.lcssa, %bb.ax ], [ %.3.lcssa, %bb.aw ], [ %.3.lcssa, %bb.av ], [ %.3.lcssa, %bb.bm ], [ %.3.lcssa, %bb.bl ], [ %.3.lcssa, %bb.bk ], [ %.3.lcssa, %bb.bj ], [ %.3.lcssa, %bb.bi ], [ %.3.lcssa, %bb.bf ], [ %.3.lcssa, %bb.be ], [ %.3.lcssa, %bb.bd ], [ %.3.lcssa, %bb.bb ], [ %.3.lcssa, %bb.bc ], [ %.3.lcssa, %bb.bg ], [ %.3.lcssa, %bb.bh ], [ %.3.lcssa, %bb.as ], [ %.3.lcssa, %bb.ar ], [ %.3.lcssa, %bb.at ], [ %.3.lcssa, %bb.au ], [ %.3.lcssa, %bb.af ], [ %.3.lcssa, %bb.ae ], [ %.3.lcssa, %bb.ag ], [ %.3.lcssa, %bb.ah ], [ %.3.lcssa, %bb.s ], [ %.3.lcssa, %bb.w ], [ %.3.lcssa, %bb.v ], [ %.3.lcssa, %bb.x ], [ %.3.lcssa, %bb.y ], [ %.3.lcssa, %bb.z ], [ %.3.lcssa, %bb.t ], [ %.3.lcssa, %bb.u ], [ %.3.lcssa, %bb.bq ], [ %.3.lcssa, %bb.br ], [ %.3.lcssa, %bb.bx ], [ %.3.lcssa, %bb.bw ], [ %.3.lcssa, %bb.bv ], [ %.3.lcssa, %bb.bt ], [ %.3.lcssa, %bb.bu ], [ %.3.lcssa, %bb.bp ], [ %.3.lcssa, %bb.cb ], [ %.3.lcssa, %bb.ca ], [ %.3.lcssa, %bb.cd ], [ %.3.lcssa, %bb.cf ], [ %.3.lcssa, %bb.cl ], [ %.3.lcssa, %bb.ck ], [ %.3.lcssa, %bb.cj ], [ %.3.lcssa, %bb.cx ], [ %.3.lcssa, %bb.cw ], [ %.3.lcssa, %bb.cv ], [ %.3.lcssa, %bb.cu ], [ %.3.lcssa, %bb.dl ], [ %.3.lcssa, %bb.dk ], [ %.3.lcssa, %bb.dg ], [ %.3.lcssa, %bb.dh ], [ %.3.lcssa, %bb.di ], [ %.3.lcssa, %bb.dj ], [ %.3.lcssa, %bb.dm ], [ %.3.lcssa, %bb.dn ], [ %.3.lcssa, %bb.do ], [ %.3.lcssa, %bb.dp ], [ %.3.lcssa, %bb.db ], [ %.3.lcssa, %bb.da ], [ %.3.lcssa, %bb.cz ], [ %.3.lcssa, %bb.dc ], [ %.3.lcssa, %bb.dd ], [ %.3.lcssa, %bb.de ], [ %.3.lcssa, %bb.co ], [ %.3.lcssa, %bb.cn ], [ %.3.lcssa, %bb.ct ], [ %.3.lcssa, %bb.cs ], [ %.3.lcssa, %bb.cr ], [ %.3.lcssa, %bb.cp ], [ %.3.lcssa, %bb.cq ], [ %.3.lcssa, %bb.ch ], [ %.3.lcssa, %bb.ci ], [ %.3.lcssa, %bb.ce ], [ %.3.lcssa, %bb.cc ], [ %.3.lcssa, %bb.by ], [ %.3.lcssa, %bb.bz ], [ %.3.lcssa, %bb.bn ], [ %.3.lcssa, %bb.bo ], [ %.3.lcssa, %bb.r ], [ %.3.lcssa, %bb.ad ], [ %.3.lcssa, %bb.ai ], [ %.3.lcssa, %bb.aq ], [ %.3.lcssa, %bb.ba ], [ %.3.lcssa, %bb.az ], [ %.3.lcssa, %bb.q ], [ %.3.lcssa, %bb.bs ], [ %.3.lcssa, %bb.cg ], [ %.3.lcssa, %bb.cm ], [ %.3.lcssa, %bb.cy ], [ %.3.lcssa, %bb.df ], [ %.01215, %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit861 ], [ 1, %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit861.thread1045 ], [ 1, %bb.el ], [ 1, %bb.eb ], [ 1, %bb.ee ], [ 1, %bb.ed ], [ 1, %bb.ei ], [ 1, %bb.eh ], [ 1, %bb.ek ], [ 1, %bb.em ], [ 1, %bb.en ], [ 1, %bb.ej ], [ 1, %bb.ef ], [ 1, %bb.eg ], [ 1, %bb.ec ], [ %.01215, %bb.dq ], [ %.01215, %bb.ds ], [ %.01215, %bb.dt ], [ %.01215, %bb.dz ], [ %.01215, %bb.dy ] ; 2 uses
  br i1 %i.y, label %._crit_edge1218, label %bb.b

._crit_edge1218:                                  ; preds = %.critedge, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.6, %.critedge ] ; 4 uses
  %i.aga = icmp ugt i64 %3, 4
  br i1 %i.aga, label %bb.eo, label %.thread1097

bb.eo:                                            ; preds = %._crit_edge1218
  %i.agb = load i8, ptr %1, align 1, !tbaa !24    ; 2 uses
  switch i8 %i.agb, label %.loopexit [
    i8 32, label %bb.ep
    i8 46, label %bb.ep
  ]

bb.ep:                                            ; preds = %bb.eo, %bb.eo
  %i.agc = icmp eq i8 %i.agb, 32                  ; 5 uses
  %i.agd = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 5 uses
  %.0.copyload.i862 = load i32, ptr %i.agd, align 1
  %i.age = mul i32 %.0.copyload.i862, 506832829
  %i.agf = lshr i32 %i.age, 17
  %i.agg = zext nneg i32 %i.agf to i64
  %i.agh = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.agg
  %i.agi = load i16, ptr %i.agh, align 2, !tbaa !29 ; 2 uses
  %.not805 = icmp eq i16 %i.agi, 0
  br i1 %.not805, label %.loopexit, label %.lr.ph1272

.lr.ph1272:                                       ; preds = %bb.ep
  %i.agj = zext i16 %i.agi to i64
  %i.agk = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.agl = load ptr, ptr %i.agk, align 8, !tbaa !31
  %i.agm = load ptr, ptr %0, align 8, !tbaa !23   ; 3 uses
  %i.agn = add i64 %3, -1                         ; 2 uses
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agm, i64 32 ; 2 uses
  %i.agp = getelementptr inbounds nuw i8, ptr %i.agm, i64 168 ; 2 uses
  %i.agq = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.agr = select i1 %i.agc, i64 6, i64 32
  %i.ags = select i1 %i.agc, i64 89, i64 67
  %i.agt = select i1 %i.agc, i64 2, i64 77
  br label %bb.eq

bb.eq:                                            ; preds = %.lr.ph1272, %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread
  %.71270 = phi i32 [ %.0.lcssa, %.lr.ph1272 ], [ %.11, %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread ] ; 9 uses
  %.07601269 = phi i64 [ %i.agj, %.lr.ph1272 ], [ %i.agu, %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread ] ; 2 uses
  %i.agu = add i64 %.07601269, 1
  %i.agv = getelementptr inbounds nuw [4 x i8], ptr %i.agl, i64 %.07601269 ; 3 uses
  %.sroa.0155.0.copyload = load i8, ptr %i.agv, align 2, !tbaa !24 ; 2 uses
  %.sroa.8160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.agv, i64 1
  %.sroa.8160.0.copyload = load i8, ptr %.sroa.8160.0..sroa_idx, align 1, !tbaa !24 ; 3 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.agv, i64 2
  %.sroa.10.0.copyload = load i16, ptr %.sroa.10.0..sroa_idx, align 2, !tbaa !29 ; 2 uses
  %i.agw = and i8 %.sroa.0155.0.copyload, 31      ; 4 uses
  %i.agx = zext nneg i8 %i.agw to i64             ; 39 uses
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agm, i64 %i.agx
  %i.agz = load i8, ptr %i.agy, align 1, !tbaa !24
  %i.aha = zext nneg i8 %i.agz to i64             ; 17 uses
  %i.ahb = zext i16 %.sroa.10.0.copyload to i64   ; 18 uses
  %i.ahc = icmp slt i8 %.sroa.0155.0.copyload, 0
  %i.ahd = icmp eq i8 %.sroa.8160.0.copyload, 0
  br i1 %i.ahd, label %bb.er, label %bb.fi

bb.er:                                            ; preds = %bb.eq
  %i.ahe = icmp ult i64 %i.agn, %i.agx
  br i1 %i.ahe, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.ahf = getelementptr inbounds nuw [4 x i8], ptr %i.ago, i64 %i.agx
  %i.ahg = load i32, ptr %i.ahf, align 4, !tbaa !3
  %i.ahh = zext i32 %i.ahg to i64
  %narrow.i843 = mul nuw nsw i64 %i.ahb, %i.agx
  %i.ahi = load ptr, ptr %i.agp, align 8, !tbaa !32
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahi, i64 %i.ahh
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ahj, i64 %narrow.i843 ; 4 uses
  %i.ahl = icmp samesign ugt i8 %i.agw, 7
  br i1 %i.ahl, label %.lr.ph1257, label %.preheader1131

.preheader1131:                                   ; preds = %bb.eu, %bb.es
  %.027.i881.lcssa = phi i64 [ %i.agx, %bb.es ], [ %i.ahv, %bb.eu ] ; 3 uses
  %.025.i882.lcssa = phi ptr [ %i.agd, %bb.es ], [ %i.aht, %bb.eu ]
  %.022.i883.lcssa = phi ptr [ %i.ahk, %bb.es ], [ %i.ahu, %bb.eu ] ; 3 uses
  %.not.i8881261 = icmp eq i64 %.027.i881.lcssa, 0
  br i1 %.not.i8881261, label %.critedge.i889, label %.lr.ph1265.preheader

.lr.ph1265.preheader:                             ; preds = %.preheader1131
  %scevgep1370 = getelementptr i8, ptr %.022.i883.lcssa, i64 %.027.i881.lcssa
  br label %.lr.ph1265

.lr.ph1257:                                       ; preds = %bb.es, %bb.eu
  %.022.i8831255 = phi ptr [ %i.ahu, %bb.eu ], [ %i.ahk, %bb.es ] ; 3 uses
  %.025.i8821254 = phi ptr [ %i.aht, %bb.eu ], [ %i.agd, %bb.es ] ; 2 uses
  %.027.i8811253 = phi i64 [ %i.ahv, %bb.eu ], [ %i.agx, %bb.es ]
  %.0.copyload.i1024 = load i64, ptr %.025.i8821254, align 1 ; 2 uses
  %.0.copyload.i1023 = load i64, ptr %.022.i8831255, align 1 ; 2 uses
  %.not30.i891 = icmp eq i64 %.0.copyload.i1024, %.0.copyload.i1023
  br i1 %.not30.i891, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %.lr.ph1257
  %i.ahm = xor i64 %.0.copyload.i1023, %.0.copyload.i1024
  %i.ahn = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ahm, i1 true)
  %i.aho = ptrtoint ptr %.022.i8831255 to i64
  %i.ahp = ptrtoint ptr %i.ahk to i64
  %i.ahq = sub i64 %i.aho, %i.ahp
  %i.ahr = lshr i64 %i.ahn, 3
  %i.ahs = add i64 %i.ahq, %i.ahr
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit894

bb.eu:                                            ; preds = %.lr.ph1257
  %i.aht = getelementptr inbounds nuw i8, ptr %.025.i8821254, i64 8 ; 2 uses
  %i.ahu = getelementptr inbounds nuw i8, ptr %.022.i8831255, i64 8 ; 2 uses
  %i.ahv = add i64 %.027.i8811253, -8             ; 3 uses
  %i.ahw = icmp ugt i64 %i.ahv, 7
  br i1 %i.ahw, label %.lr.ph1257, label %.preheader1131, !llvm.loop !34

.lr.ph1265:                                       ; preds = %.lr.ph1265.preheader, %bb.ev
  %.224.i8871264 = phi ptr [ %i.aic, %bb.ev ], [ %.022.i883.lcssa, %.lr.ph1265.preheader ] ; 3 uses
  %.126.i8861263 = phi ptr [ %i.aib, %bb.ev ], [ %.025.i882.lcssa, %.lr.ph1265.preheader ] ; 2 uses
  %.128.i8851262 = phi i64 [ %i.aia, %bb.ev ], [ %.027.i881.lcssa, %.lr.ph1265.preheader ]
  %i.ahx = load i8, ptr %.224.i8871264, align 1, !tbaa !24
  %i.ahy = load i8, ptr %.126.i8861263, align 1, !tbaa !24
  %i.ahz = icmp eq i8 %i.ahx, %i.ahy
  br i1 %i.ahz, label %bb.ev, label %.critedge.i889

bb.ev:                                            ; preds = %.lr.ph1265
  %i.aia = add nsw i64 %.128.i8851262, -1         ; 2 uses
  %i.aib = getelementptr inbounds nuw i8, ptr %.126.i8861263, i64 1
  %i.aic = getelementptr inbounds nuw i8, ptr %.224.i8871264, i64 1
  %.not.i888 = icmp eq i64 %i.aia, 0
  br i1 %.not.i888, label %.critedge.i889, label %.lr.ph1265, !llvm.loop !41

.critedge.i889:                                   ; preds = %bb.ev, %.lr.ph1265, %.preheader1131
  %.224.i887.lcssa = phi ptr [ %.022.i883.lcssa, %.preheader1131 ], [ %.224.i8871264, %.lr.ph1265 ], [ %scevgep1370, %bb.ev ]
  %i.aid = ptrtoint ptr %.224.i887.lcssa to i64
  %i.aie = ptrtoint ptr %i.ahk to i64
  %i.aif = sub i64 %i.aid, %i.aie
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit894

_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit894: ; preds = %bb.et, %.critedge.i889
  %.2.i890 = phi i64 [ %i.ahs, %bb.et ], [ %i.aif, %.critedge.i889 ]
  %.not1119 = icmp eq i64 %.2.i890, %i.agx
  br i1 %.not1119, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread1060, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread, !llvm.loop !43

_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread1060: ; preds = %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit894
  %i.aig = shl i64 %i.agr, %i.aha
  %i.aih = add i64 %i.aig, %i.ahb
  %i.aii = add nuw nsw i64 %i.agx, 1              ; 2 uses
  %i.aij = shl i64 %i.aih, 5
  %i.aik = or disjoint i64 %i.aij, %i.agx
  %i.ail = trunc i64 %i.aik to i32
  %i.aim = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.aii ; 2 uses
  %i.ain = load i32, ptr %i.aim, align 4, !tbaa !3
  %i.aio = tail call noundef i32 @llvm.umin.i32(i32 %i.ain, i32 %i.ail)
  store i32 %i.aio, ptr %i.aim, align 4, !tbaa !3
  %i.aip = add nuw nsw i64 %i.agx, 2              ; 5 uses
  %.not814 = icmp ult i64 %i.aip, %3
  br i1 %.not814, label %bb.ew, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread, !llvm.loop !43

bb.ew:                                            ; preds = %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread1060
  %i.aiq = getelementptr inbounds nuw i8, ptr %1, i64 %i.aii ; 4 uses
  %i.air = load i8, ptr %i.aiq, align 1, !tbaa !24 ; 2 uses
  switch i8 %i.air, label %bb.ez [
    i8 32, label %bb.ex
    i8 40, label %bb.ey
  ]

bb.ex:                                            ; preds = %bb.ew
  %i.ais = shl i64 %i.agt, %i.aha
  %i.ait = add i64 %i.ais, %i.ahb
  %i.aiu = shl i64 %i.ait, 5
  %i.aiv = or disjoint i64 %i.aiu, %i.agx
  %i.aiw = trunc i64 %i.aiv to i32
  %i.aix = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.aip ; 2 uses
  %i.aiy = load i32, ptr %i.aix, align 4, !tbaa !3
  %i.aiz = tail call noundef i32 @llvm.umin.i32(i32 %i.aiy, i32 %i.aiw)
  store i32 %i.aiz, ptr %i.aix, align 4, !tbaa !3
  br label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread

bb.ey:                                            ; preds = %bb.ew
  %i.aja = shl i64 %i.ags, %i.aha
  %i.ajb = add i64 %i.aja, %i.ahb
  %i.ajc = shl i64 %i.ajb, 5
  %i.ajd = or disjoint i64 %i.ajc, %i.agx
  %i.aje = trunc i64 %i.ajd to i32
  %i.ajf = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.aip ; 2 uses
  %i.ajg = load i32, ptr %i.ajf, align 4, !tbaa !3
  %i.ajh = tail call noundef i32 @llvm.umin.i32(i32 %i.ajg, i32 %i.aje)
  store i32 %i.ajh, ptr %i.ajf, align 4, !tbaa !3
  br label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread

bb.ez:                                            ; preds = %bb.ew
  br i1 %i.agc, label %bb.fa, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread

bb.fa:                                            ; preds = %bb.ez
  switch i8 %i.air, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread [
    i8 44, label %bb.fb
    i8 46, label %bb.fd
    i8 61, label %bb.ff
  ]

bb.fb:                                            ; preds = %bb.fa
  %i.aji = shl i64 103, %i.aha
  %i.ajj = add nuw i64 %i.aji, %i.ahb
  %i.ajk = shl i64 %i.ajj, 5
  %i.ajl = or disjoint i64 %i.ajk, %i.agx
  %i.ajm = trunc i64 %i.ajl to i32
  %i.ajn = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.aip ; 2 uses
  %i.ajo = load i32, ptr %i.ajn, align 4, !tbaa !3
  %i.ajp = tail call noundef i32 @llvm.umin.i32(i32 %i.ajo, i32 %i.ajm)
  store i32 %i.ajp, ptr %i.ajn, align 4, !tbaa !3
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.aiq, i64 1
  %i.ajr = load i8, ptr %i.ajq, align 1, !tbaa !24
  %i.ajs = icmp eq i8 %i.ajr, 32
  br i1 %i.ajs, label %bb.fc, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread

bb.fc:                                            ; preds = %bb.fb
  %i.ajt = shl i64 33, %i.aha
  %i.aju = add nuw i64 %i.ajt, %i.ahb
  %i.ajv = shl i64 %i.aju, 5
  %i.ajw = or disjoint i64 %i.ajv, %i.agx
  %i.ajx = trunc i64 %i.ajw to i32
  %i.ajy = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.agx
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajy, i64 12 ; 2 uses
  %i.aka = load i32, ptr %i.ajz, align 4, !tbaa !3
  %i.akb = tail call noundef i32 @llvm.umin.i32(i32 %i.aka, i32 %i.ajx)
  store i32 %i.akb, ptr %i.ajz, align 4, !tbaa !3
  br label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread

bb.fd:                                            ; preds = %bb.fa
  %i.akc = shl i64 71, %i.aha
  %i.akd = add nuw i64 %i.akc, %i.ahb
  %i.ake = shl i64 %i.akd, 5
  %i.akf = or disjoint i64 %i.ake, %i.agx
  %i.akg = trunc i64 %i.akf to i32
  %i.akh = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.aip ; 2 uses
  %i.aki = load i32, ptr %i.akh, align 4, !tbaa !3
  %i.akj = tail call noundef i32 @llvm.umin.i32(i32 %i.aki, i32 %i.akg)
  store i32 %i.akj, ptr %i.akh, align 4, !tbaa !3
  %i.akk = getelementptr inbounds nuw i8, ptr %i.aiq, i64 1
  %i.akl = load i8, ptr %i.akk, align 1, !tbaa !24
  %i.akm = icmp eq i8 %i.akl, 32
  br i1 %i.akm, label %bb.fe, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread

bb.fe:                                            ; preds = %bb.fd
  %i.akn = shl i64 52, %i.aha
  %i.ako = add nuw i64 %i.akn, %i.ahb
  %i.akp = shl i64 %i.ako, 5
  %i.akq = or disjoint i64 %i.akp, %i.agx
  %i.akr = trunc i64 %i.akq to i32
  %i.aks = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.agx
  %i.akt = getelementptr inbounds nuw i8, ptr %i.aks, i64 12 ; 2 uses
  %i.aku = load i32, ptr %i.akt, align 4, !tbaa !3
  %i.akv = tail call noundef i32 @llvm.umin.i32(i32 %i.aku, i32 %i.akr)
  store i32 %i.akv, ptr %i.akt, align 4, !tbaa !3
  br label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread

bb.ff:                                            ; preds = %bb.fa
  %i.akw = getelementptr inbounds nuw i8, ptr %i.aiq, i64 1
  %i.akx = load i8, ptr %i.akw, align 1, !tbaa !24
  switch i8 %i.akx, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread [
    i8 34, label %bb.fg
    i8 39, label %bb.fh
  ]

bb.fg:                                            ; preds = %bb.ff
  %i.aky = shl i64 81, %i.aha
  %i.akz = add nuw i64 %i.aky, %i.ahb
  %i.ala = shl i64 %i.akz, 5
  %i.alb = or disjoint i64 %i.ala, %i.agx
  %i.alc = trunc i64 %i.alb to i32
  %i.ald = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.agx
  %i.ale = getelementptr inbounds nuw i8, ptr %i.ald, i64 12 ; 2 uses
  %i.alf = load i32, ptr %i.ale, align 4, !tbaa !3
  %i.alg = tail call noundef i32 @llvm.umin.i32(i32 %i.alf, i32 %i.alc)
  store i32 %i.alg, ptr %i.ale, align 4, !tbaa !3
  br label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread

bb.fh:                                            ; preds = %bb.ff
  %i.alh = shl i64 98, %i.aha
  %i.ali = add nuw i64 %i.alh, %i.ahb
  %i.alj = shl i64 %i.ali, 5
  %i.alk = or disjoint i64 %i.alj, %i.agx
  %i.all = trunc i64 %i.alk to i32
  %i.alm = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.agx
  %i.aln = getelementptr inbounds nuw i8, ptr %i.alm, i64 12 ; 2 uses
  %i.alo = load i32, ptr %i.aln, align 4, !tbaa !3
  %i.alp = tail call noundef i32 @llvm.umin.i32(i32 %i.alo, i32 %i.all)
  store i32 %i.alp, ptr %i.aln, align 4, !tbaa !3
  br label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread

bb.fi:                                            ; preds = %bb.eq
  br i1 %i.agc, label %bb.fj, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread

bb.fj:                                            ; preds = %bb.fi
  %.not810 = icmp eq i8 %.sroa.8160.0.copyload, 10 ; 8 uses
  %.sroa.0155.0.insert.ext = zext nneg i8 %i.agw to i32 ; 2 uses
  %i.alq = icmp ult i64 %i.agn, %i.agx
  br i1 %i.alq, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %.sroa.10.0.insert.ext = zext i16 %.sroa.10.0.copyload to i32
  %i.alr = getelementptr inbounds nuw [4 x i8], ptr %i.ago, i64 %i.agx
  %i.als = load i32, ptr %i.alr, align 4, !tbaa !3
  %i.alt = zext i32 %i.als to i64
  %narrow.i832 = mul nuw nsw i32 %.sroa.10.0.insert.ext, %.sroa.0155.0.insert.ext
  %i.alu = zext nneg i32 %narrow.i832 to i64
  %i.alv = load ptr, ptr %i.agp, align 8, !tbaa !32
  %i.alw = getelementptr inbounds nuw i8, ptr %i.alv, i64 %i.alt
  %i.alx = getelementptr inbounds nuw i8, ptr %i.alw, i64 %i.alu ; 3 uses
  %cond1458 = icmp eq i8 %.sroa.8160.0.copyload, 10
  br i1 %cond1458, label %bb.fl, label %.preheader1132

.preheader1132:                                   ; preds = %bb.fk
  %.not1317 = icmp eq i8 %i.agw, 0
  br i1 %.not1317, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit839.thread1075, label %.lr.ph1252

bb.fl:                                            ; preds = %bb.fk
  %i.aly = load i8, ptr %i.alx, align 1, !tbaa !24 ; 2 uses
  %i.alz = add i8 %i.aly, -97
  %or.cond.i833 = icmp ult i8 %i.alz, 26
  br i1 %or.cond.i833, label %bb.fm, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread

bb.fm:                                            ; preds = %bb.fl
  %i.ama = load i8, ptr %i.agd, align 1, !tbaa !24
  %i.amb = xor i8 %i.ama, %i.aly
  %i.amc = icmp eq i8 %i.amb, 32
  br i1 %i.amc, label %bb.fn, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread

bb.fn:                                            ; preds = %bb.fm
  %i.amd = getelementptr inbounds nuw i8, ptr %i.alx, i64 1 ; 4 uses
  %i.ame = add nsw i32 %.sroa.0155.0.insert.ext, -1 ; 2 uses
  %i.amf = zext i32 %i.ame to i64                 ; 3 uses
  %i.amg = icmp ugt i32 %i.ame, 7
  br i1 %i.amg, label %.lr.ph1224, label %.preheader1135

.preheader1135:                                   ; preds = %bb.fp, %bb.fn
  %.027.i923.lcssa = phi i64 [ %i.amf, %bb.fn ], [ %i.amq, %bb.fp ] ; 3 uses
  %.025.i924.lcssa = phi ptr [ %i.agq, %bb.fn ], [ %i.amo, %bb.fp ]
  %.022.i925.lcssa = phi ptr [ %i.amd, %bb.fn ], [ %i.amp, %bb.fp ] ; 3 uses
  %.not.i9301228 = icmp eq i64 %.027.i923.lcssa, 0
  br i1 %.not.i9301228, label %.critedge.i931, label %.lr.ph1232.preheader

.lr.ph1232.preheader:                             ; preds = %.preheader1135
  %scevgep1367 = getelementptr i8, ptr %.022.i925.lcssa, i64 %.027.i923.lcssa
  br label %.lr.ph1232

.lr.ph1224:                                       ; preds = %bb.fn, %bb.fp
  %.022.i9251222 = phi ptr [ %i.amp, %bb.fp ], [ %i.amd, %bb.fn ] ; 3 uses
  %.025.i9241221 = phi ptr [ %i.amo, %bb.fp ], [ %i.agq, %bb.fn ] ; 2 uses
  %.027.i9231220 = phi i64 [ %i.amq, %bb.fp ], [ %i.amf, %bb.fn ]
  %.0.copyload.i1018 = load i64, ptr %.025.i9241221, align 1 ; 2 uses
  %.0.copyload.i1017 = load i64, ptr %.022.i9251222, align 1 ; 2 uses
  %.not30.i933 = icmp eq i64 %.0.copyload.i1018, %.0.copyload.i1017
  br i1 %.not30.i933, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %.lr.ph1224
  %i.amh = xor i64 %.0.copyload.i1017, %.0.copyload.i1018
  %i.ami = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.amh, i1 true)
  %i.amj = ptrtoint ptr %.022.i9251222 to i64
  %i.amk = ptrtoint ptr %i.amd to i64
  %i.aml = sub i64 %i.amj, %i.amk
  %i.amm = lshr i64 %i.ami, 3
  %i.amn = add i64 %i.aml, %i.amm
  br label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit839

bb.fp:                                            ; preds = %.lr.ph1224
  %i.amo = getelementptr inbounds nuw i8, ptr %.025.i9241221, i64 8 ; 2 uses
  %i.amp = getelementptr inbounds nuw i8, ptr %.022.i9251222, i64 8 ; 2 uses
  %i.amq = add i64 %.027.i9231220, -8             ; 3 uses
  %i.amr = icmp ugt i64 %i.amq, 7
  br i1 %i.amr, label %.lr.ph1224, label %.preheader1135, !llvm.loop !34

.lr.ph1232:                                       ; preds = %.lr.ph1232.preheader, %bb.fq
  %.224.i9291231 = phi ptr [ %i.amx, %bb.fq ], [ %.022.i925.lcssa, %.lr.ph1232.preheader ] ; 3 uses
  %.126.i9281230 = phi ptr [ %i.amw, %bb.fq ], [ %.025.i924.lcssa, %.lr.ph1232.preheader ] ; 2 uses
  %.128.i9271229 = phi i64 [ %i.amv, %bb.fq ], [ %.027.i923.lcssa, %.lr.ph1232.preheader ]
  %i.ams = load i8, ptr %.224.i9291231, align 1, !tbaa !24
  %i.amt = load i8, ptr %.126.i9281230, align 1, !tbaa !24
  %i.amu = icmp eq i8 %i.ams, %i.amt
  br i1 %i.amu, label %bb.fq, label %.critedge.i931

bb.fq:                                            ; preds = %.lr.ph1232
  %i.amv = add nsw i64 %.128.i9271229, -1         ; 2 uses
  %i.amw = getelementptr inbounds nuw i8, ptr %.126.i9281230, i64 1
  %i.amx = getelementptr inbounds nuw i8, ptr %.224.i9291231, i64 1
  %.not.i930 = icmp eq i64 %i.amv, 0
  br i1 %.not.i930, label %.critedge.i931, label %.lr.ph1232, !llvm.loop !41

.critedge.i931:                                   ; preds = %bb.fq, %.lr.ph1232, %.preheader1135
  %.224.i929.lcssa = phi ptr [ %.022.i925.lcssa, %.preheader1135 ], [ %.224.i9291231, %.lr.ph1232 ], [ %scevgep1367, %bb.fq ]
  %i.amy = ptrtoint ptr %.224.i929.lcssa to i64
  %i.amz = ptrtoint ptr %i.amd to i64
  %i.ana = sub i64 %i.amy, %i.amz
  br label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit839

.lr.ph1252:                                       ; preds = %.preheader1132, %bb.ft
  %.0.i8351251 = phi i64 [ %i.anh, %bb.ft ], [ 0, %.preheader1132 ] ; 3 uses
  %i.anb = getelementptr inbounds nuw i8, ptr %i.alx, i64 %.0.i8351251
  %i.anc = load i8, ptr %i.anb, align 1, !tbaa !24 ; 3 uses
  %i.and = add i8 %i.anc, -97
  %or.cond40.i836 = icmp ult i8 %i.and, 26
  %i.ane = getelementptr inbounds nuw i8, ptr %i.agd, i64 %.0.i8351251
  %i.anf = load i8, ptr %i.ane, align 1, !tbaa !24 ; 2 uses
  br i1 %or.cond40.i836, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %.lr.ph1252
  %i.ang = xor i8 %i.anf, %i.anc
  %.not39.i838 = icmp eq i8 %i.ang, 32
  br i1 %.not39.i838, label %bb.ft, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread

bb.fs:                                            ; preds = %.lr.ph1252
  %.not.i837 = icmp eq i8 %i.anc, %i.anf
  br i1 %.not.i837, label %bb.ft, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread

bb.ft:                                            ; preds = %bb.fs, %bb.fr
  %i.anh = add nuw nsw i64 %.0.i8351251, 1        ; 2 uses
  %exitcond1369.not = icmp eq i64 %i.anh, %i.agx
  br i1 %exitcond1369.not, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit839.thread1075, label %.lr.ph1252, !llvm.loop !42

_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit839: ; preds = %.critedge.i931, %bb.fo
  %.2.i932 = phi i64 [ %i.amn, %bb.fo ], [ %i.ana, %.critedge.i931 ]
  %i.ani = icmp eq i64 %.2.i932, %i.amf
  br i1 %i.ani, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit839.thread1075, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread, !llvm.loop !43

_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit839.thread1075: ; preds = %bb.ft, %.preheader1132, %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit839
  %i.anj = select i1 %.not810, i64 30, i64 85
  %i.ank = shl i64 %i.anj, %i.aha
  %i.anl = add i64 %i.ank, %i.ahb
  %i.anm = add nuw nsw i64 %i.agx, 1              ; 2 uses
  %i.ann = shl i64 %i.anl, 5
  %i.ano = or disjoint i64 %i.ann, %i.agx
  %i.anp = trunc i64 %i.ano to i32
  %i.anq = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.anm ; 2 uses
  %i.anr = load i32, ptr %i.anq, align 4, !tbaa !3
  %i.ans = tail call noundef i32 @llvm.umin.i32(i32 %i.anr, i32 %i.anp)
  store i32 %i.ans, ptr %i.anq, align 4, !tbaa !3
  %i.ant = add nuw nsw i64 %i.agx, 2              ; 4 uses
  %.not812 = icmp ult i64 %i.ant, %3
  br i1 %.not812, label %bb.fu, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread, !llvm.loop !43

bb.fu:                                            ; preds = %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit839.thread1075
  %i.anu = getelementptr inbounds nuw i8, ptr %1, i64 %i.anm ; 4 uses
  %i.anv = load i8, ptr %i.anu, align 1, !tbaa !24
  switch i8 %i.anv, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread [
    i8 32, label %bb.fv
    i8 44, label %bb.fw
    i8 46, label %bb.ga
    i8 61, label %bb.gc
  ]

bb.fv:                                            ; preds = %bb.fu
  %i.anw = select i1 %.not810, i64 15, i64 83
  %i.anx = shl i64 %i.anw, %i.aha
  %i.any = add i64 %i.anx, %i.ahb
  %i.anz = shl i64 %i.any, 5
  %i.aoa = or disjoint i64 %i.anz, %i.agx
  %i.aob = trunc i64 %i.aoa to i32
  %i.aoc = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ant ; 2 uses
  %i.aod = load i32, ptr %i.aoc, align 4, !tbaa !3
  %i.aoe = tail call noundef i32 @llvm.umin.i32(i32 %i.aod, i32 %i.aob)
  store i32 %i.aoe, ptr %i.aoc, align 4, !tbaa !3
  br label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread

bb.fw:                                            ; preds = %bb.fu
  br i1 %.not810, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  %i.aof = shl i64 109, %i.aha
  %i.aog = add nuw i64 %i.aof, %i.ahb
  %i.aoh = shl i64 %i.aog, 5
  %i.aoi = or disjoint i64 %i.aoh, %i.agx
  %i.aoj = trunc i64 %i.aoi to i32
  %i.aok = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ant ; 2 uses
  %i.aol = load i32, ptr %i.aok, align 4, !tbaa !3
  %i.aom = tail call noundef i32 @llvm.umin.i32(i32 %i.aol, i32 %i.aoj)
  store i32 %i.aom, ptr %i.aok, align 4, !tbaa !3
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fw
  %i.aon = getelementptr inbounds nuw i8, ptr %i.anu, i64 1
  %i.aoo = load i8, ptr %i.aon, align 1, !tbaa !24
  %i.aop = icmp eq i8 %i.aoo, 32
  br i1 %i.aop, label %bb.fz, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread

bb.fz:                                            ; preds = %bb.fy
  %i.aoq = select i1 %.not810, i64 65, i64 111
  %i.aor = shl i64 %i.aoq, %i.aha
  %i.aos = add i64 %i.aor, %i.ahb
  %i.aot = shl i64 %i.aos, 5
  %i.aou = or disjoint i64 %i.aot, %i.agx
  %i.aov = trunc i64 %i.aou to i32
  %i.aow = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.agx
  %i.aox = getelementptr inbounds nuw i8, ptr %i.aow, i64 12 ; 2 uses
  %i.aoy = load i32, ptr %i.aox, align 4, !tbaa !3
  %i.aoz = tail call noundef i32 @llvm.umin.i32(i32 %i.aoy, i32 %i.aov)
  store i32 %i.aoz, ptr %i.aox, align 4, !tbaa !3
  br label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread

bb.ga:                                            ; preds = %bb.fu
  %i.apa = select i1 %.not810, i64 96, i64 115
  %i.apb = shl i64 %i.apa, %i.aha
  %i.apc = add i64 %i.apb, %i.ahb
  %i.apd = shl i64 %i.apc, 5
  %i.ape = or disjoint i64 %i.apd, %i.agx
  %i.apf = trunc i64 %i.ape to i32
  %i.apg = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ant ; 2 uses
  %i.aph = load i32, ptr %i.apg, align 4, !tbaa !3
  %i.api = tail call noundef i32 @llvm.umin.i32(i32 %i.aph, i32 %i.apf)
  store i32 %i.api, ptr %i.apg, align 4, !tbaa !3
  %i.apj = getelementptr inbounds nuw i8, ptr %i.anu, i64 1
  %i.apk = load i8, ptr %i.apj, align 1, !tbaa !24
  %i.apl = icmp eq i8 %i.apk, 32
  br i1 %i.apl, label %bb.gb, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread

bb.gb:                                            ; preds = %bb.ga
  %i.apm = select i1 %.not810, i64 91, i64 117
  %i.apn = shl i64 %i.apm, %i.aha
  %i.apo = add i64 %i.apn, %i.ahb
  %i.app = shl i64 %i.apo, 5
  %i.apq = or disjoint i64 %i.app, %i.agx
  %i.apr = trunc i64 %i.apq to i32
  %i.aps = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.agx
  %i.apt = getelementptr inbounds nuw i8, ptr %i.aps, i64 12 ; 2 uses
  %i.apu = load i32, ptr %i.apt, align 4, !tbaa !3
  %i.apv = tail call noundef i32 @llvm.umin.i32(i32 %i.apu, i32 %i.apr)
  store i32 %i.apv, ptr %i.apt, align 4, !tbaa !3
  br label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread

bb.gc:                                            ; preds = %bb.fu
  %i.apw = getelementptr inbounds nuw i8, ptr %i.anu, i64 1
  %i.apx = load i8, ptr %i.apw, align 1, !tbaa !24
  switch i8 %i.apx, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread [
    i8 34, label %bb.gd
    i8 39, label %bb.ge
  ]

bb.gd:                                            ; preds = %bb.gc
  %i.apy = select i1 %.not810, i64 118, i64 110
  %i.apz = shl i64 %i.apy, %i.aha
  %i.aqa = add i64 %i.apz, %i.ahb
  %i.aqb = shl i64 %i.aqa, 5
  %i.aqc = or disjoint i64 %i.aqb, %i.agx
  %i.aqd = trunc i64 %i.aqc to i32
  %i.aqe = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.agx
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.aqe, i64 12 ; 2 uses
  %i.aqg = load i32, ptr %i.aqf, align 4, !tbaa !3
  %i.aqh = tail call noundef i32 @llvm.umin.i32(i32 %i.aqg, i32 %i.aqd)
  store i32 %i.aqh, ptr %i.aqf, align 4, !tbaa !3
  br label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread

bb.ge:                                            ; preds = %bb.gc
  %i.aqi = select i1 %.not810, i64 120, i64 119
  %i.aqj = shl i64 %i.aqi, %i.aha
  %i.aqk = add i64 %i.aqj, %i.ahb
  %i.aql = shl i64 %i.aqk, 5
  %i.aqm = or disjoint i64 %i.aql, %i.agx
  %i.aqn = trunc i64 %i.aqm to i32
  %i.aqo = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.agx
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.aqo, i64 12 ; 2 uses
  %i.aqq = load i32, ptr %i.aqp, align 4, !tbaa !3
  %i.aqr = tail call noundef i32 @llvm.umin.i32(i32 %i.aqq, i32 %i.aqn)
  store i32 %i.aqr, ptr %i.aqp, align 4, !tbaa !3
  br label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread

_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread: ; preds = %bb.fr, %bb.fs, %bb.fm, %bb.fl, %bb.fj, %bb.er, %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit839, %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit839.thread1075, %bb.gc, %bb.fu, %bb.fz, %bb.fy, %bb.ge, %bb.gd, %bb.ga, %bb.gb, %bb.fv, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit894, %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread1060, %bb.ff, %bb.fa, %bb.ey, %bb.fc, %bb.fb, %bb.fh, %bb.fg, %bb.fd, %bb.fe, %bb.ez, %bb.ex, %bb.fi
  %.11 = phi i32 [ 1, %bb.ex ], [ %.71270, %bb.fi ], [ 1, %bb.ez ], [ %.71270, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit894 ], [ 1, %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread1060 ], [ 1, %bb.ff ], [ 1, %bb.fa ], [ 1, %bb.ey ], [ 1, %bb.fc ], [ 1, %bb.fb ], [ 1, %bb.fh ], [ 1, %bb.fg ], [ 1, %bb.fd ], [ 1, %bb.fe ], [ %.71270, %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit839 ], [ 1, %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit839.thread1075 ], [ 1, %bb.gc ], [ 1, %bb.fu ], [ 1, %bb.fz ], [ 1, %bb.fy ], [ 1, %bb.ge ], [ 1, %bb.gd ], [ 1, %bb.ga ], [ 1, %bb.gb ], [ 1, %bb.fv ], [ %.71270, %bb.fm ], [ %.71270, %bb.er ], [ %.71270, %bb.fl ], [ %.71270, %bb.fj ], [ %.71270, %bb.fs ], [ %.71270, %bb.fr ] ; 2 uses
  br i1 %i.ahc, label %.loopexit, label %bb.eq

.loopexit:                                        ; preds = %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread, %bb.ep, %bb.eo
  %.12 = phi i32 [ %.0.lcssa, %bb.eo ], [ %.0.lcssa, %bb.ep ], [ %.11, %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread ] ; 5 uses
  %.not1120 = icmp eq i64 %3, 5
  br i1 %.not1120, label %.thread1097, label %bb.gf

bb.gf:                                            ; preds = %.loopexit
  %i.aqs = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 3 uses
  %i.aqt = load i8, ptr %i.aqs, align 1, !tbaa !24 ; 2 uses
  %i.aqu = icmp eq i8 %i.aqt, 32
  %i.aqv = load i8, ptr %1, align 1, !tbaa !24    ; 2 uses
  br i1 %i.aqu, label %bb.gg, label %bb.gh

bb.gg:                                            ; preds = %bb.gf
  switch i8 %i.aqv, label %.thread1081 [
    i8 101, label %bb.gi
    i8 115, label %bb.gi
    i8 44, label %bb.gi
  ]

bb.gh:                                            ; preds = %bb.gf
  %i.aqw = icmp eq i8 %i.aqv, -62
  %i.aqx = icmp eq i8 %i.aqt, -96
  %or.cond1116 = and i1 %i.aqx, %i.aqw
  br i1 %or.cond1116, label %bb.gi, label %.thread1081

bb.gi:                                            ; preds = %bb.gh, %bb.gg, %bb.gg, %bb.gg
  %i.aqy = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.aqz = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 3 uses
  %.0.copyload.i863 = load i32, ptr %i.aqz, align 1
  %i.ara = mul i32 %.0.copyload.i863, 506832829
  %i.arb = lshr i32 %i.ara, 17
  %i.arc = zext nneg i32 %i.arb to i64
  %i.ard = getelementptr inbounds nuw [2 x i8], ptr %i.aqy, i64 %i.arc
  %i.are = load i16, ptr %i.ard, align 2, !tbaa !29 ; 2 uses
  %.not806 = icmp eq i16 %i.are, 0
  br i1 %.not806, label %.thread1081, label %.lr.ph1293

.lr.ph1293:                                       ; preds = %bb.gi
  %i.arf = zext i16 %i.are to i64
  %i.arg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.arh = load ptr, ptr %i.arg, align 8, !tbaa !31
  %i.ari = load ptr, ptr %0, align 8, !tbaa !23   ; 3 uses
  %i.arj = add i64 %3, -2
  %i.ark = getelementptr inbounds nuw i8, ptr %i.ari, i64 32
  %i.arl = getelementptr inbounds nuw i8, ptr %i.ari, i64 168
  br label %bb.gj

bb.gj:                                            ; preds = %.lr.ph1293, %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit830.thread
  %.131291 = phi i32 [ %.12, %.lr.ph1293 ], [ %.14, %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit830.thread ] ; 4 uses
  %.07621290 = phi i64 [ %i.arf, %.lr.ph1293 ], [ %i.arm, %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit830.thread ] ; 2 uses
  %i.arm = add i64 %.07621290, 1
  %i.arn = getelementptr inbounds nuw [4 x i8], ptr %i.arh, i64 %.07621290 ; 3 uses
  %.sroa.047.0.copyload = load i8, ptr %i.arn, align 2, !tbaa !24 ; 2 uses
  %.sroa.749.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.arn, i64 1
  %.sroa.749.0.copyload = load i8, ptr %.sroa.749.0..sroa_idx, align 1, !tbaa !24
  %.sroa.850.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.arn, i64 2
  %.sroa.850.0.copyload = load i16, ptr %.sroa.850.0..sroa_idx, align 2, !tbaa !29
  %i.aro = and i8 %.sroa.047.0.copyload, 31       ; 2 uses
  %i.arp = zext nneg i8 %i.aro to i64             ; 10 uses
  %i.arq = getelementptr inbounds nuw i8, ptr %i.ari, i64 %i.arp
  %i.arr = load i8, ptr %i.arq, align 1, !tbaa !24
  %i.ars = zext nneg i8 %i.arr to i64
  %i.art = zext i16 %.sroa.850.0.copyload to i64  ; 2 uses
  %i.aru = icmp slt i8 %.sroa.047.0.copyload, 0
  %i.arv = icmp ne i8 %.sroa.749.0.copyload, 0
  %i.arw = icmp ult i64 %i.arj, %i.arp
  %or.cond1459 = or i1 %i.arv, %i.arw
  br i1 %or.cond1459, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit830.thread, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.arx = getelementptr inbounds nuw [4 x i8], ptr %i.ark, i64 %i.arp
  %i.ary = load i32, ptr %i.arx, align 4, !tbaa !3
  %i.arz = zext i32 %i.ary to i64
  %narrow.i823 = mul nuw nsw i64 %i.art, %i.arp
  %i.asa = load ptr, ptr %i.arl, align 8, !tbaa !32
  %i.asb = getelementptr inbounds nuw i8, ptr %i.asa, i64 %i.arz
  %i.asc = getelementptr inbounds nuw i8, ptr %i.asb, i64 %narrow.i823 ; 4 uses
  %i.asd = icmp samesign ugt i8 %i.aro, 7
  br i1 %i.asd, label %.lr.ph1278, label %.preheader1130

.preheader1130:                                   ; preds = %bb.gm, %bb.gk
  %.027.i937.lcssa = phi i64 [ %i.arp, %bb.gk ], [ %i.asn, %bb.gm ] ; 3 uses
  %.025.i938.lcssa = phi ptr [ %i.aqz, %bb.gk ], [ %i.asl, %bb.gm ]
  %.022.i939.lcssa = phi ptr [ %i.asc, %bb.gk ], [ %i.asm, %bb.gm ] ; 3 uses
  %.not.i9441282 = icmp eq i64 %.027.i937.lcssa, 0
  br i1 %.not.i9441282, label %.critedge.i945, label %.lr.ph1286.preheader

.lr.ph1286.preheader:                             ; preds = %.preheader1130
  %scevgep1371 = getelementptr i8, ptr %.022.i939.lcssa, i64 %.027.i937.lcssa
  br label %.lr.ph1286

.lr.ph1278:                                       ; preds = %bb.gk, %bb.gm
  %.022.i9391276 = phi ptr [ %i.asm, %bb.gm ], [ %i.asc, %bb.gk ] ; 3 uses
  %.025.i9381275 = phi ptr [ %i.asl, %bb.gm ], [ %i.aqz, %bb.gk ] ; 2 uses
  %.027.i9371274 = phi i64 [ %i.asn, %bb.gm ], [ %i.arp, %bb.gk ]
  %.0.copyload.i1016 = load i64, ptr %.025.i9381275, align 1 ; 2 uses
  %.0.copyload.i1015 = load i64, ptr %.022.i9391276, align 1 ; 2 uses
  %.not30.i947 = icmp eq i64 %.0.copyload.i1016, %.0.copyload.i1015
  br i1 %.not30.i947, label %bb.gm, label %bb.gl

bb.gl:                                            ; preds = %.lr.ph1278
  %i.ase = xor i64 %.0.copyload.i1015, %.0.copyload.i1016
  %i.asf = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ase, i1 true)
  %i.asg = ptrtoint ptr %.022.i9391276 to i64
  %i.ash = ptrtoint ptr %i.asc to i64
  %i.asi = sub i64 %i.asg, %i.ash
  %i.asj = lshr i64 %i.asf, 3
  %i.ask = add i64 %i.asi, %i.asj
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit950

bb.gm:                                            ; preds = %.lr.ph1278
  %i.asl = getelementptr inbounds nuw i8, ptr %.025.i9381275, i64 8 ; 2 uses
  %i.asm = getelementptr inbounds nuw i8, ptr %.022.i9391276, i64 8 ; 2 uses
  %i.asn = add i64 %.027.i9371274, -8             ; 3 uses
  %i.aso = icmp ugt i64 %i.asn, 7
  br i1 %i.aso, label %.lr.ph1278, label %.preheader1130, !llvm.loop !34

.lr.ph1286:                                       ; preds = %.lr.ph1286.preheader, %bb.gn
  %.224.i9431285 = phi ptr [ %i.asu, %bb.gn ], [ %.022.i939.lcssa, %.lr.ph1286.preheader ] ; 3 uses
  %.126.i9421284 = phi ptr [ %i.ast, %bb.gn ], [ %.025.i938.lcssa, %.lr.ph1286.preheader ] ; 2 uses
  %.128.i9411283 = phi i64 [ %i.ass, %bb.gn ], [ %.027.i937.lcssa, %.lr.ph1286.preheader ]
  %i.asp = load i8, ptr %.224.i9431285, align 1, !tbaa !24
  %i.asq = load i8, ptr %.126.i9421284, align 1, !tbaa !24
  %i.asr = icmp eq i8 %i.asp, %i.asq
  br i1 %i.asr, label %bb.gn, label %.critedge.i945

bb.gn:                                            ; preds = %.lr.ph1286
  %i.ass = add nsw i64 %.128.i9411283, -1         ; 2 uses
  %i.ast = getelementptr inbounds nuw i8, ptr %.126.i9421284, i64 1
  %i.asu = getelementptr inbounds nuw i8, ptr %.224.i9431285, i64 1
  %.not.i944 = icmp eq i64 %i.ass, 0
  br i1 %.not.i944, label %.critedge.i945, label %.lr.ph1286, !llvm.loop !41

.critedge.i945:                                   ; preds = %bb.gn, %.lr.ph1286, %.preheader1130
  %.224.i943.lcssa = phi ptr [ %.022.i939.lcssa, %.preheader1130 ], [ %.224.i9431285, %.lr.ph1286 ], [ %scevgep1371, %bb.gn ]
  %i.asv = ptrtoint ptr %.224.i943.lcssa to i64
  %i.asw = ptrtoint ptr %i.asc to i64
  %i.asx = sub i64 %i.asv, %i.asw
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit950

_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit950: ; preds = %bb.gl, %.critedge.i945
  %.2.i946 = phi i64 [ %i.ask, %bb.gl ], [ %i.asx, %.critedge.i945 ]
  %.not1121 = icmp eq i64 %.2.i946, %i.arp
  br i1 %.not1121, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit830.thread1094, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit830.thread

_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit830.thread1094: ; preds = %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit950
  %i.asy = load i8, ptr %1, align 1, !tbaa !24    ; 3 uses
  %i.asz = icmp eq i8 %i.asy, -62
  br i1 %i.asz, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit830.thread.sink.split, label %bb.go

bb.go:                                            ; preds = %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit830.thread1094
  %i.ata = add nuw nsw i64 %i.arp, 2              ; 2 uses
  %i.atb = icmp ult i64 %i.ata, %3
  br i1 %i.atb, label %bb.gp, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit830.thread

bb.gp:                                            ; preds = %bb.go
  %i.atc = getelementptr inbounds nuw i8, ptr %1, i64 %i.ata
  %i.atd = load i8, ptr %i.atc, align 1, !tbaa !24
  %i.ate = icmp eq i8 %i.atd, 32
  br i1 %i.ate, label %bb.gq, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit830.thread

bb.gq:                                            ; preds = %bb.gp
  %i.atf = icmp eq i8 %i.asy, 101
  %i.atg = icmp eq i8 %i.asy, 115
  %i.ath = select i1 %i.atg, i64 7, i64 13
  %i.ati = select i1 %i.atf, i64 18, i64 %i.ath
  br label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit830.thread.sink.split

_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit830.thread.sink.split: ; preds = %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit830.thread1094, %bb.gq
  %.sink = phi i64 [ %i.ati, %bb.gq ], [ 102, %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit830.thread1094 ]
  %.sink1464 = phi i64 [ 12, %bb.gq ], [ 8, %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit830.thread1094 ]
  %i.atj = shl i64 %.sink, %i.ars
  %i.atk = add i64 %i.atj, %i.art
  %i.atl = shl i64 %i.atk, 5
  %i.atm = or disjoint i64 %i.atl, %i.arp
  %i.atn = trunc i64 %i.atm to i32
  %i.ato = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.arp
  %i.atp = getelementptr inbounds nuw i8, ptr %i.ato, i64 %.sink1464 ; 2 uses
  %i.atq = load i32, ptr %i.atp, align 4, !tbaa !3
  %i.atr = tail call noundef i32 @llvm.umin.i32(i32 %i.atq, i32 %i.atn)
  store i32 %i.atr, ptr %i.atp, align 4, !tbaa !3
  br label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit830.thread

_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit830.thread: ; preds = %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit830.thread.sink.split, %bb.gp, %bb.go, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit950, %bb.gj
  %.14 = phi i32 [ %.131291, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit950 ], [ %.131291, %bb.gj ], [ %.131291, %bb.gp ], [ %.131291, %bb.go ], [ 1, %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit830.thread.sink.split ] ; 2 uses
  br i1 %i.aru, label %.thread1081, label %bb.gj, !llvm.loop !44

.thread1081:                                      ; preds = %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit830.thread, %bb.gi, %bb.gg, %bb.gh
  %.15 = phi i32 [ %.12, %bb.gh ], [ %.12, %bb.gg ], [ %.12, %bb.gi ], [ %.14, %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit830.thread ] ; 12 uses
  %i.ats = icmp ugt i64 %3, 8
  br i1 %i.ats, label %bb.gr, label %.thread1097

bb.gr:                                            ; preds = %.thread1081
  %i.att = load i8, ptr %1, align 1, !tbaa !24
  switch i8 %i.att, label %.thread1097 [
    i8 32, label %bb.gs
    i8 46, label %bb.gw
  ]

bb.gs:                                            ; preds = %bb.gr
  %i.atu = load i8, ptr %i.aqs, align 1, !tbaa !24
  %i.atv = icmp eq i8 %i.atu, 116
  br i1 %i.atv, label %bb.gt, label %.thread1097

bb.gt:                                            ; preds = %bb.gs
  %i.atw = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.atx = load i8, ptr %i.atw, align 1, !tbaa !24
  %i.aty = icmp eq i8 %i.atx, 104
  br i1 %i.aty, label %bb.gu, label %.thread1097

bb.gu:                                            ; preds = %bb.gt
  %i.atz = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.aua = load i8, ptr %i.atz, align 1, !tbaa !24
  %i.aub = icmp eq i8 %i.aua, 101
  br i1 %i.aub, label %bb.gv, label %.thread1097

bb.gv:                                            ; preds = %bb.gu
  %i.auc = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aud = load i8, ptr %i.auc, align 1, !tbaa !24
  %i.aue = icmp eq i8 %i.aud, 32
  br i1 %i.aue, label %bb.ha, label %.thread1097

bb.gw:                                            ; preds = %bb.gr
  %i.auf = load i8, ptr %i.aqs, align 1, !tbaa !24
  %i.aug = icmp eq i8 %i.auf, 99
  br i1 %i.aug, label %bb.gx, label %.thread1097

bb.gx:                                            ; preds = %bb.gw
  %i.auh = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.aui = load i8, ptr %i.auh, align 1, !tbaa !24
  %i.auj = icmp eq i8 %i.aui, 111
  br i1 %i.auj, label %bb.gy, label %.thread1097

bb.gy:                                            ; preds = %bb.gx
  %i.auk = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.aul = load i8, ptr %i.auk, align 1, !tbaa !24
  %i.aum = icmp eq i8 %i.aul, 109
  br i1 %i.aum, label %bb.gz, label %.thread1097

bb.gz:                                            ; preds = %bb.gy
  %i.aun = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.auo = load i8, ptr %i.aun, align 1, !tbaa !24
  %i.aup = icmp eq i8 %i.auo, 47
  br i1 %i.aup, label %bb.ha, label %.thread1097

bb.ha:                                            ; preds = %bb.gz, %bb.gv
  %i.auq = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.aur = getelementptr inbounds nuw i8, ptr %1, i64 5 ; 3 uses
  %.0.copyload.i864 = load i32, ptr %i.aur, align 1
  %i.aus = mul i32 %.0.copyload.i864, 506832829
  %i.aut = lshr i32 %i.aus, 17
  %i.auu = zext nneg i32 %i.aut to i64
  %i.auv = getelementptr inbounds nuw [2 x i8], ptr %i.auq, i64 %i.auu
  %i.auw = load i16, ptr %i.auv, align 2, !tbaa !29 ; 2 uses
  %.not807 = icmp eq i16 %i.auw, 0
  br i1 %.not807, label %.thread1097, label %.lr.ph1314

.lr.ph1314:                                       ; preds = %bb.ha
  %i.aux = zext i16 %i.auw to i64
  %i.auy = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.auz = load ptr, ptr %i.auy, align 8, !tbaa !31
  %i.ava = load ptr, ptr %0, align 8, !tbaa !23   ; 3 uses
  %i.avb = add i64 %3, -5
  %i.avc = getelementptr inbounds nuw i8, ptr %i.ava, i64 32
  %i.avd = getelementptr inbounds nuw i8, ptr %i.ava, i64 168
  br label %bb.hb

bb.hb:                                            ; preds = %.lr.ph1314, %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit.thread
  %.161312 = phi i32 [ %.15, %.lr.ph1314 ], [ %.17, %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit.thread ] ; 2 uses
  %.07591311 = phi i64 [ %i.aux, %.lr.ph1314 ], [ %i.ave, %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit.thread ] ; 2 uses
  %i.ave = add i64 %.07591311, 1
  %i.avf = getelementptr inbounds nuw [4 x i8], ptr %i.auz, i64 %.07591311 ; 3 uses
  %.sroa.028.0.copyload = load i8, ptr %i.avf, align 2, !tbaa !24 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.avf, i64 1
  %.sroa.7.0.copyload = load i8, ptr %.sroa.7.0..sroa_idx, align 1, !tbaa !24
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.avf, i64 2
  %.sroa.8.0.copyload = load i16, ptr %.sroa.8.0..sroa_idx, align 2, !tbaa !29
  %i.avg = and i8 %.sroa.028.0.copyload, 31       ; 2 uses
  %i.avh = zext nneg i8 %i.avg to i64             ; 14 uses
  %i.avi = getelementptr inbounds nuw i8, ptr %i.ava, i64 %i.avh
  %i.avj = load i8, ptr %i.avi, align 1, !tbaa !24
  %i.avk = zext nneg i8 %i.avj to i64             ; 3 uses
  %i.avl = zext i16 %.sroa.8.0.copyload to i64    ; 4 uses
  %i.avm = icmp slt i8 %.sroa.028.0.copyload, 0
  %i.avn = icmp ne i8 %.sroa.7.0.copyload, 0
  %i.avo = icmp ult i64 %i.avb, %i.avh
  %or.cond1467 = or i1 %i.avn, %i.avo
  br i1 %or.cond1467, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit.thread, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.avp = getelementptr inbounds nuw [4 x i8], ptr %i.avc, i64 %i.avh
  %i.avq = load i32, ptr %i.avp, align 4, !tbaa !3
  %i.avr = zext i32 %i.avq to i64
  %narrow.i = mul nuw nsw i64 %i.avl, %i.avh
  %i.avs = load ptr, ptr %i.avd, align 8, !tbaa !32
  %i.avt = getelementptr inbounds nuw i8, ptr %i.avs, i64 %i.avr
  %i.avu = getelementptr inbounds nuw i8, ptr %i.avt, i64 %narrow.i ; 4 uses
  %i.avv = icmp samesign ugt i8 %i.avg, 7
  br i1 %i.avv, label %.lr.ph1299, label %.preheader

.preheader:                                       ; preds = %bb.he, %bb.hc
  %.027.i965.lcssa = phi i64 [ %i.avh, %bb.hc ], [ %i.awf, %bb.he ] ; 3 uses
  %.025.i966.lcssa = phi ptr [ %i.aur, %bb.hc ], [ %i.awd, %bb.he ]
  %.022.i967.lcssa = phi ptr [ %i.avu, %bb.hc ], [ %i.awe, %bb.he ] ; 3 uses
  %.not.i9721303 = icmp eq i64 %.027.i965.lcssa, 0
  br i1 %.not.i9721303, label %.critedge.i973, label %.lr.ph1307.preheader

.lr.ph1307.preheader:                             ; preds = %.preheader
  %scevgep1372 = getelementptr i8, ptr %.022.i967.lcssa, i64 %.027.i965.lcssa
  br label %.lr.ph1307

.lr.ph1299:                                       ; preds = %bb.hc, %bb.he
  %.022.i9671297 = phi ptr [ %i.awe, %bb.he ], [ %i.avu, %bb.hc ] ; 3 uses
  %.025.i9661296 = phi ptr [ %i.awd, %bb.he ], [ %i.aur, %bb.hc ] ; 2 uses
  %.027.i9651295 = phi i64 [ %i.awf, %bb.he ], [ %i.avh, %bb.hc ]
  %.0.copyload.i1012 = load i64, ptr %.025.i9661296, align 1 ; 2 uses
  %.0.copyload.i1011 = load i64, ptr %.022.i9671297, align 1 ; 2 uses
  %.not30.i975 = icmp eq i64 %.0.copyload.i1012, %.0.copyload.i1011
  br i1 %.not30.i975, label %bb.he, label %bb.hd

bb.hd:                                            ; preds = %.lr.ph1299
  %i.avw = xor i64 %.0.copyload.i1011, %.0.copyload.i1012
  %i.avx = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.avw, i1 true)
  %i.avy = ptrtoint ptr %.022.i9671297 to i64
  %i.avz = ptrtoint ptr %i.avu to i64
  %i.awa = sub i64 %i.avy, %i.avz
  %i.awb = lshr i64 %i.avx, 3
  %i.awc = add i64 %i.awa, %i.awb
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit978

bb.he:                                            ; preds = %.lr.ph1299
  %i.awd = getelementptr inbounds nuw i8, ptr %.025.i9661296, i64 8 ; 2 uses
  %i.awe = getelementptr inbounds nuw i8, ptr %.022.i9671297, i64 8 ; 2 uses
  %i.awf = add i64 %.027.i9651295, -8             ; 3 uses
  %i.awg = icmp ugt i64 %i.awf, 7
  br i1 %i.awg, label %.lr.ph1299, label %.preheader, !llvm.loop !34

.lr.ph1307:                                       ; preds = %.lr.ph1307.preheader, %bb.hf
  %.224.i9711306 = phi ptr [ %i.awm, %bb.hf ], [ %.022.i967.lcssa, %.lr.ph1307.preheader ] ; 3 uses
  %.126.i9701305 = phi ptr [ %i.awl, %bb.hf ], [ %.025.i966.lcssa, %.lr.ph1307.preheader ] ; 2 uses
  %.128.i9691304 = phi i64 [ %i.awk, %bb.hf ], [ %.027.i965.lcssa, %.lr.ph1307.preheader ]
  %i.awh = load i8, ptr %.224.i9711306, align 1, !tbaa !24
  %i.awi = load i8, ptr %.126.i9701305, align 1, !tbaa !24
  %i.awj = icmp eq i8 %i.awh, %i.awi
  br i1 %i.awj, label %bb.hf, label %.critedge.i973

bb.hf:                                            ; preds = %.lr.ph1307
  %i.awk = add nsw i64 %.128.i9691304, -1         ; 2 uses
  %i.awl = getelementptr inbounds nuw i8, ptr %.126.i9701305, i64 1
  %i.awm = getelementptr inbounds nuw i8, ptr %.224.i9711306, i64 1
  %.not.i972 = icmp eq i64 %i.awk, 0
  br i1 %.not.i972, label %.critedge.i973, label %.lr.ph1307, !llvm.loop !41

.critedge.i973:                                   ; preds = %bb.hf, %.lr.ph1307, %.preheader
  %.224.i971.lcssa = phi ptr [ %.022.i967.lcssa, %.preheader ], [ %.224.i9711306, %.lr.ph1307 ], [ %scevgep1372, %bb.hf ]
  %i.awn = ptrtoint ptr %.224.i971.lcssa to i64
  %i.awo = ptrtoint ptr %i.avu to i64
  %i.awp = sub i64 %i.awn, %i.awo
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit978

_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit978: ; preds = %bb.hd, %.critedge.i973
  %.2.i974 = phi i64 [ %i.awc, %bb.hd ], [ %i.awp, %.critedge.i973 ]
  %.not1122 = icmp eq i64 %.2.i974, %i.avh
  br i1 %.not1122, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit.thread1113, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit.thread

_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit.thread1113: ; preds = %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit978
  %i.awq = load i8, ptr %1, align 1, !tbaa !24
  %i.awr = icmp eq i8 %i.awq, 32
  %i.aws = select i1 %i.awr, i64 41, i64 72
  %i.awt = shl i64 %i.aws, %i.avk
  %i.awu = add i64 %i.awt, %i.avl
  %i.awv = add nuw nsw i64 %i.avh, 5              ; 3 uses
  %i.aww = shl i64 %i.awu, 5
  %i.awx = or disjoint i64 %i.aww, %i.avh
  %i.awy = trunc i64 %i.awx to i32
  %i.awz = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.awv ; 2 uses
  %i.axa = load i32, ptr %i.awz, align 4, !tbaa !3
  %i.axb = tail call noundef i32 @llvm.umin.i32(i32 %i.axa, i32 %i.awy)
  store i32 %i.axb, ptr %i.awz, align 4, !tbaa !3
  %i.axc = icmp ult i64 %i.awv, %3
  br i1 %i.axc, label %bb.hg, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit.thread

bb.hg:                                            ; preds = %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit.thread1113
  %i.axd = getelementptr inbounds nuw i8, ptr %1, i64 %i.awv ; 8 uses
  %i.axe = load i8, ptr %1, align 1, !tbaa !24
  %i.axf = icmp eq i8 %i.axe, 32
  %i.axg = add nuw nsw i64 %i.avh, 8
  %i.axh = icmp ult i64 %i.axg, %3
  %or.cond = select i1 %i.axf, i1 %i.axh, i1 false
  br i1 %or.cond, label %bb.hh, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit.thread

bb.hh:                                            ; preds = %bb.hg
  %i.axi = load i8, ptr %i.axd, align 1, !tbaa !24
  %i.axj = icmp eq i8 %i.axi, 32
  br i1 %i.axj, label %bb.hi, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit.thread

bb.hi:                                            ; preds = %bb.hh
  %i.axk = getelementptr inbounds nuw i8, ptr %i.axd, i64 1
  %i.axl = load i8, ptr %i.axk, align 1, !tbaa !24
  %i.axm = icmp eq i8 %i.axl, 111
  br i1 %i.axm, label %bb.hj, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit.thread

bb.hj:                                            ; preds = %bb.hi
  %i.axn = getelementptr inbounds nuw i8, ptr %i.axd, i64 2
  %i.axo = load i8, ptr %i.axn, align 1, !tbaa !24
  %i.axp = icmp eq i8 %i.axo, 102
  br i1 %i.axp, label %bb.hk, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit.thread

bb.hk:                                            ; preds = %bb.hj
  %i.axq = getelementptr inbounds nuw i8, ptr %i.axd, i64 3
  %i.axr = load i8, ptr %i.axq, align 1, !tbaa !24
  %i.axs = icmp eq i8 %i.axr, 32
  br i1 %i.axs, label %bb.hl, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit.thread

bb.hl:                                            ; preds = %bb.hk
  %i.axt = shl i64 62, %i.avk
  %i.axu = add nuw i64 %i.axt, %i.avl
  %i.axv = shl i64 %i.axu, 5
  %i.axw = or disjoint i64 %i.axv, %i.avh
  %i.axx = trunc i64 %i.axw to i32
  %i.axy = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.avh ; 2 uses
  %i.axz = getelementptr inbounds nuw i8, ptr %i.axy, i64 36 ; 2 uses
  %i.aya = load i32, ptr %i.axz, align 4, !tbaa !3
  %i.ayb = tail call noundef i32 @llvm.umin.i32(i32 %i.aya, i32 %i.axx)
  store i32 %i.ayb, ptr %i.axz, align 4, !tbaa !3
  %i.ayc = add nuw nsw i64 %i.avh, 12
  %i.ayd = icmp ult i64 %i.ayc, %3
  br i1 %i.ayd, label %bb.hm, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit.thread

bb.hm:                                            ; preds = %bb.hl
  %i.aye = getelementptr inbounds nuw i8, ptr %i.axd, i64 4
  %i.ayf = load i8, ptr %i.aye, align 1, !tbaa !24
  %i.ayg = icmp eq i8 %i.ayf, 116
  br i1 %i.ayg, label %bb.hn, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit.thread

bb.hn:                                            ; preds = %bb.hm
  %i.ayh = getelementptr inbounds nuw i8, ptr %i.axd, i64 5
  %i.ayi = load i8, ptr %i.ayh, align 1, !tbaa !24
  %i.ayj = icmp eq i8 %i.ayi, 104
  br i1 %i.ayj, label %bb.ho, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit.thread

bb.ho:                                            ; preds = %bb.hn
  %i.ayk = getelementptr inbounds nuw i8, ptr %i.axd, i64 6
  %i.ayl = load i8, ptr %i.ayk, align 1, !tbaa !24
  %i.aym = icmp eq i8 %i.ayl, 101
  br i1 %i.aym, label %bb.hp, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit.thread

bb.hp:                                            ; preds = %bb.ho
  %i.ayn = getelementptr inbounds nuw i8, ptr %i.axd, i64 7
  %i.ayo = load i8, ptr %i.ayn, align 1, !tbaa !24
  %i.ayp = icmp eq i8 %i.ayo, 32
  br i1 %i.ayp, label %bb.hq, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit.thread

bb.hq:                                            ; preds = %bb.hp
  %i.ayq = shl i64 73, %i.avk
  %i.ayr = add nuw i64 %i.ayq, %i.avl
  %i.ays = shl i64 %i.ayr, 5
  %i.ayt = or disjoint i64 %i.ays, %i.avh
  %i.ayu = trunc i64 %i.ayt to i32
  %i.ayv = getelementptr inbounds nuw i8, ptr %i.axy, i64 52 ; 2 uses
  %i.ayw = load i32, ptr %i.ayv, align 4, !tbaa !3
  %i.ayx = tail call noundef i32 @llvm.umin.i32(i32 %i.ayw, i32 %i.ayu)
  store i32 %i.ayx, ptr %i.ayv, align 4, !tbaa !3
  br label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit.thread

_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit.thread: ; preds = %bb.hg, %bb.hl, %bb.hm, %bb.hn, %bb.ho, %bb.hp, %bb.hq, %bb.hk, %bb.hj, %bb.hi, %bb.hh, %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit.thread1113, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit978, %bb.hb
  %.17 = phi i32 [ %.161312, %bb.hb ], [ 1, %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit.thread1113 ], [ %.161312, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit978 ], [ 1, %bb.hh ], [ 1, %bb.hi ], [ 1, %bb.hj ], [ 1, %bb.hk ], [ 1, %bb.hq ], [ 1, %bb.hp ], [ 1, %bb.ho ], [ 1, %bb.hn ], [ 1, %bb.hm ], [ 1, %bb.hl ], [ 1, %bb.hg ] ; 2 uses
  br i1 %i.avm, label %.thread1097, label %bb.hb, !llvm.loop !45

.thread1097:                                      ; preds = %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit.thread, %bb.ha, %bb.gr, %bb.gs, %bb.gt, %bb.gu, %bb.gv, %._crit_edge1218, %.loopexit, %bb.gw, %bb.gx, %bb.gy, %bb.gz, %.thread1081
  %.18 = phi i32 [ %.15, %.thread1081 ], [ %.15, %bb.gz ], [ %.15, %bb.gy ], [ %.15, %bb.gx ], [ %.15, %bb.gw ], [ %.15, %bb.gr ], [ %.15, %bb.gs ], [ %.0.lcssa, %._crit_edge1218 ], [ %.12, %.loopexit ], [ %.15, %bb.gv ], [ %.15, %bb.gu ], [ %.15, %bb.gt ], [ %.15, %bb.ha ], [ %.17, %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit.thread ]
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

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !18, i64 104}
!8 = !{!"_ZTSN13duckdb_brotli23BrotliEncoderDictionaryE", !9, i64 0, !4, i64 8, !4, i64 12, !11, i64 16, !12, i64 24, !13, i64 32, !12, i64 40, !14, i64 48, !15, i64 56, !4, i64 96, !18, i64 104, !12, i64 112, !13, i64 120, !11, i64 128, !12, i64 136, !11, i64 144, !14, i64 152, !9, i64 160}
!9 = !{!"p1 _ZTSN13duckdb_brotli16BrotliDictionaryE", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!"p1 short", !10, i64 0}
!13 = !{!"p1 omnipotent char", !10, i64 0}
!14 = !{!"p1 _ZTSN13duckdb_brotli8DictWordE", !10, i64 0}
!15 = !{!"_ZTSN13duckdb_brotli10BrotliTrieE", !16, i64 0, !11, i64 8, !11, i64 16, !17, i64 24}
!16 = !{!"p1 _ZTSN13duckdb_brotli14BrotliTrieNodeE", !10, i64 0}
!17 = !{!"_ZTSN13duckdb_brotli14BrotliTrieNodeE", !5, i64 0, !5, i64 1, !5, i64 2, !4, i64 4, !4, i64 8}
!18 = !{!"p1 _ZTSN13duckdb_brotli27ContextualEncoderDictionaryE", !10, i64 0}
!19 = !{!20, !5, i64 4}
!20 = !{!"_ZTSN13duckdb_brotli27ContextualEncoderDictionaryE", !4, i64 0, !5, i64 4, !5, i64 5, !5, i64 72, !11, i64 584, !8, i64 592, !21, i64 760}
!21 = !{!"p1 _ZTSN13duckdb_brotli23BrotliEncoderDictionaryE", !10, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!8, !9, i64 0}
!24 = !{!5, !5, i64 0}
!25 = !{!8, !4, i64 8}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!8, !12, i64 40}
!29 = !{!30, !30, i64 0}
!30 = !{!"short", !5, i64 0}
!31 = !{!8, !14, i64 48}
!32 = !{!33, !13, i64 168}
!33 = !{!"_ZTSN13duckdb_brotli16BrotliDictionaryE", !5, i64 0, !5, i64 32, !11, i64 160, !13, i64 168}
!34 = distinct !{!34, !27}
!35 = !{!8, !11, i64 16}
!36 = distinct !{!36, !27, !37, !38}
!37 = !{!"llvm.loop.isvectorized", i32 1}
!38 = !{!"llvm.loop.unroll.runtime.disable"}
!39 = distinct !{!39, !27, !38, !37}
!40 = distinct !{!40, !27}
!41 = distinct !{!41, !27}
!42 = distinct !{!42, !27}
!43 = distinct !{!43, !27}
!44 = distinct !{!44, !27}
!45 = distinct !{!45, !27}
end_hunk_1
