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
  br i1 %i.z, label %bb.c, label %bb.dr

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
  %.027.i993.lcssa = phi i64 [ %i.ah, %bb.c ], [ %i.as, %bb.e ] ; 3 uses
  %.025.i994.lcssa = phi ptr [ %1, %bb.c ], [ %i.aq, %bb.e ]
  %.022.i995.lcssa = phi ptr [ %i.ag, %bb.c ], [ %i.ar, %bb.e ] ; 3 uses
  %.not.i10001202 = icmp eq i64 %.027.i993.lcssa, 0
  br i1 %.not.i10001202, label %.critedge.i1001, label %.lr.ph1206.preheader

.lr.ph1206.preheader:                             ; preds = %.preheader1136
  %scevgep1366 = getelementptr i8, ptr %.022.i995.lcssa, i64 %.027.i993.lcssa
  br label %.lr.ph1206

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

.lr.ph1206:                                       ; preds = %.lr.ph1206.preheader, %bb.f
  %.224.i9991205 = phi ptr [ %6, %bb.f ], [ %.022.i995.lcssa, %.lr.ph1206.preheader ] ; 3 uses
  %.126.i9981204 = phi ptr [ %i.ax, %bb.f ], [ %.025.i994.lcssa, %.lr.ph1206.preheader ] ; 2 uses
  %.128.i9971203 = phi i64 [ %5, %bb.f ], [ %.027.i993.lcssa, %.lr.ph1206.preheader ]
  %i.au = load i8, ptr %.224.i9991205, align 1, !tbaa !24
  %i.av = load i8, ptr %.126.i9981204, align 1, !tbaa !24
  %i.aw = icmp eq i8 %i.au, %i.av
  br i1 %i.aw, label %bb.f, label %.critedge.i1001

bb.f:                                             ; preds = %.lr.ph1206
  %5 = add nsw i64 %.128.i9971203, -1             ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.126.i9981204, i64 1
  %6 = getelementptr inbounds nuw i8, ptr %.224.i9991205, i64 1
  %.not.i1000.a = icmp eq i64 %5, 0
  br i1 %.not.i1000.a, label %.critedge.i1001, label %.lr.ph1206, !llvm.loop !35

.critedge.i1001:                                  ; preds = %bb.f, %.lr.ph1206, %.preheader1136
  %.224.i999.lcssa = phi ptr [ %.022.i995.lcssa, %.preheader1136 ], [ %.224.i9991205, %.lr.ph1206 ], [ %scevgep1366, %bb.f ]
  %i.ay = ptrtoint ptr %.224.i999.lcssa to i64
  %i.az = ptrtoint ptr %i.ag to i64
  %i.ba = sub i64 %i.ay, %i.az
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit1006

_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit1006: ; preds = %bb.d, %.critedge.i1001
  %.2.i1002 = phi i64 [ %i.ap, %bb.d ], [ %i.ba, %.critedge.i1001 ] ; 4 uses
  %i.bb = icmp eq i64 %.2.i1002, %i.s
  br i1 %i.bb, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit1006
  %i.bc = shl nuw nsw i64 %i.x, 5
  %i.bd = or disjoint i64 %i.bc, %i.s
  %i.be = trunc nuw nsw i64 %i.bd to i32
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.s ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !3
  %i.bh = tail call noundef i32 @llvm.umin.i32(i32 %i.bg, i32 %i.be)
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !3
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit1006
  %.1 = phi i32 [ 1, %bb.g ], [ %.01215, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit1006 ]
  %i.bi = add nsw i64 %i.s, -1                    ; 3 uses
  %.not818 = icmp ult i64 %.2.i1002, %i.bi
  br i1 %.not818, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bj = shl i64 12, %i.v
  %i.bk = add nuw i64 %i.bj, %i.x
  %i.bl = shl i64 %i.bk, 5
  %i.bm = or disjoint i64 %i.bl, %i.s
  %i.bn = trunc i64 %i.bm to i32
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.bi ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !3
  %i.bq = tail call noundef i32 @llvm.umin.i32(i32 %i.bp, i32 %i.bn)
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !3
  %i.br = add nuw nsw i64 %i.s, 2                 ; 2 uses
  %i.bs = icmp ult i64 %i.br, %3
  br i1 %i.bs, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 %i.bi
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !24
  %i.bv = icmp eq i8 %i.bu, 105
  br i1 %i.bv, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 %i.s ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !24
  %i.by = icmp eq i8 %i.bx, 110
  br i1 %i.by, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 1
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !24
  %i.cb = icmp eq i8 %i.ca, 103
  br i1 %i.cb, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 %i.br
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !24
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
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !3
  %i.cn = tail call noundef i32 @llvm.umin.i32(i32 %i.cm, i32 %i.cj)
  store i32 %i.cn, ptr %i.cl, align 4, !tbaa !3
  br label %bb.o

bb.o:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.h
  %.2 = phi i32 [ %.1, %bb.h ], [ 1, %bb.n ], [ 1, %bb.m ], [ 1, %bb.l ], [ 1, %bb.k ], [ 1, %bb.j ], [ 1, %bb.i ]
  %i.co = icmp samesign ugt i8 %i.r, 9
  %i.cp = add nsw i64 %i.s, -9
  %i.cq = tail call i64 @llvm.umax.i64(i64 %2, i64 range(i64 1, 23) %i.cp)
  %.0752 = select i1 %i.co, i64 %i.cq, i64 %2     ; 7 uses
  %i.cr = add nsw i64 %i.s, -2
  %i.cs = tail call noundef i64 @llvm.umin.i64(i64 %.2.i1002, i64 %i.cr) ; 3 uses
  %.not8191210 = icmp ugt i64 %.0752, %i.cs
  br i1 %.not8191210, label %._crit_edge, label %.lr.ph1212

.lr.ph1212:                                       ; preds = %bb.o
  %i.ct = load i64, ptr %i.o, align 8, !tbaa !36  ; 2 uses
  %i.cu = add i64 %.0752, 1
  %i.cv = add i64 %i.cs, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.cu, i64 %i.cv)
  %i.cw = sub i64 %umax, %.0752                   ; 3 uses
  %min.iters.check = icmp ult i64 %i.cw, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph1212
  %n.vec = and i64 %i.cw, -4                      ; 3 uses
  %i.cx = add i64 %.0752, %n.vec
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.ct, i64 0
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
  %i.cy = getelementptr [4 x i8], ptr %4, i64 %.0752
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.cz = sub <4 x i64> %broadcast.splat1504, %vec.ind ; 2 uses
  %i.da = shl <4 x i64> %i.cz, splat (i64 2)
  %i.db = mul <4 x i64> %i.cz, splat (i64 6)
  %i.dc = lshr <4 x i64> %broadcast.splat, %i.db
  %i.dd = and <4 x i64> %i.dc, splat (i64 63)
  %i.de = add <4 x i64> %i.dd, %i.da
  %i.df = shl <4 x i64> %i.de, %broadcast.splat1506
  %i.dg = add <4 x i64> %i.df, %broadcast.splat1508
  %i.dh = shl <4 x i64> %i.dg, splat (i64 5)
  %i.di = or disjoint <4 x i64> %i.dh, %broadcast.splat1504
  %i.dj = trunc <4 x i64> %i.di to <4 x i32>
  %i.dk = getelementptr [4 x i8], ptr %i.cy, i64 %index ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.dk, align 4, !tbaa !3
  %i.dl = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %wide.load, <4 x i32> %i.dj)
  store <4 x i32> %i.dl, ptr %i.dk, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i64> %vec.ind, splat (i64 4)
  %i.dm = icmp eq i64 %index.next, %n.vec
  br i1 %i.dm, label %middle.block, label %vector.body, !llvm.loop !37

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cw, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph1212, %middle.block
  %.07531211.ph = phi i64 [ %.0752, %.lr.ph1212 ], [ %i.cx, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.07531211 = phi i64 [ %i.eb, %scalar.ph ], [ %.07531211.ph, %scalar.ph.preheader ] ; 3 uses
  %i.dn = sub i64 %i.s, %.07531211                ; 2 uses
  %i.do = shl i64 %i.dn, 2
  %i.dp = mul i64 %i.dn, 6
  %i.dq = lshr i64 %i.ct, %i.dp
  %i.dr = and i64 %i.dq, 63
  %i.ds = add i64 %i.dr, %i.do
  %i.dt = shl i64 %i.ds, %i.v
  %i.du = add i64 %i.dt, %i.x
  %i.dv = shl i64 %i.du, 5
  %i.dw = or disjoint i64 %i.dv, %i.s
  %i.dx = trunc i64 %i.dw to i32
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07531211 ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !3
  %i.ea = tail call noundef i32 @llvm.umin.i32(i32 %i.dz, i32 %i.dx)
  store i32 %i.ea, ptr %i.dy, align 4, !tbaa !3
  %i.eb = add i64 %.07531211, 1                   ; 2 uses
  %.not819 = icmp ugt i64 %i.eb, %i.cs
  br i1 %.not819, label %._crit_edge, label %scalar.ph, !llvm.loop !40

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.o
  %.3.lcssa = phi i32 [ %.2, %bb.o ], [ 1, %middle.block ], [ 1, %scalar.ph ] ; 107 uses
  %i.ec = icmp ult i64 %.2.i1002, %i.s
  br i1 %i.ec, label %.critedge, label %bb.p, !llvm.loop !41

bb.p:                                             ; preds = %._crit_edge
  %i.ed = add nuw nsw i64 %i.s, 6                 ; 5 uses
  %.not820 = icmp ult i64 %i.ed, %3
  br i1 %.not820, label %bb.q, label %.critedge, !llvm.loop !41

bb.q:                                             ; preds = %bb.p
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 %i.s ; 68 uses
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !24
  switch i8 %i.ef, label %.critedge [
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
  %i.eg = add nuw i64 %i.w, %i.x
  %i.eh = shl i64 %i.eg, 5
  %i.ei = or disjoint i64 %i.eh, %i.s
  %i.ej = trunc i64 %i.ei to i32
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.s ; 14 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 4 ; 2 uses
  %i.em = load i32, ptr %i.el, align 4, !tbaa !3
  %i.en = tail call noundef i32 @llvm.umin.i32(i32 %i.em, i32 %i.ej)
  store i32 %i.en, ptr %i.el, align 4, !tbaa !3
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ee, i64 1
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !24
  switch i8 %i.ep, label %.critedge [
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
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ee, i64 2
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !24
  switch i8 %i.er, label %.critedge [
    i8 32, label %bb.t
    i8 115, label %bb.u
    i8 116, label %bb.w
    i8 110, label %bb.y
  ]

bb.t:                                             ; preds = %bb.s
  %i.es = shl i64 28, %i.v
  %i.et = add nuw i64 %i.es, %i.x
  %i.eu = shl i64 %i.et, 5
  %i.ev = or disjoint i64 %i.eu, %i.s
  %i.ew = trunc i64 %i.ev to i32
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ek, i64 12 ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !3
  %i.ez = tail call noundef i32 @llvm.umin.i32(i32 %i.ey, i32 %i.ew)
  store i32 %i.ez, ptr %i.ex, align 4, !tbaa !3
  br label %.critedge

bb.u:                                             ; preds = %bb.s
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ee, i64 3
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !24
  %i.fc = icmp eq i8 %i.fb, 32
  br i1 %i.fc, label %bb.v, label %.critedge

bb.v:                                             ; preds = %bb.u
  %i.fd = shl i64 46, %i.v
  %i.fe = add nuw i64 %i.fd, %i.x
  %i.ff = shl i64 %i.fe, 5
  %i.fg = or disjoint i64 %i.ff, %i.s
  %i.fh = trunc i64 %i.fg to i32
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ek, i64 16 ; 2 uses
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !3
  %i.fk = tail call noundef i32 @llvm.umin.i32(i32 %i.fj, i32 %i.fh)
  store i32 %i.fk, ptr %i.fi, align 4, !tbaa !3
  br label %.critedge

bb.w:                                             ; preds = %bb.s
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ee, i64 3
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !24
  %i.fn = icmp eq i8 %i.fm, 32
  br i1 %i.fn, label %bb.x, label %.critedge

bb.x:                                             ; preds = %bb.w
  %i.fo = shl i64 60, %i.v
  %i.fp = add nuw i64 %i.fo, %i.x
  %i.fq = shl i64 %i.fp, 5
  %i.fr = or disjoint i64 %i.fq, %i.s
  %i.fs = trunc i64 %i.fr to i32
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ek, i64 16 ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !3
  %i.fv = tail call noundef i32 @llvm.umin.i32(i32 %i.fu, i32 %i.fs)
  store i32 %i.fv, ptr %i.ft, align 4, !tbaa !3
  br label %.critedge

bb.y:                                             ; preds = %bb.s
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ee, i64 3
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !24
  %i.fy = icmp eq i8 %i.fx, 100
  br i1 %i.fy, label %bb.z, label %.critedge

bb.z:                                             ; preds = %bb.y
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !24
  %i.gb = icmp eq i8 %i.ga, 32
  br i1 %i.gb, label %bb.aa, label %.critedge

bb.aa:                                            ; preds = %bb.z
  %i.gc = shl i64 10, %i.v
  %i.gd = add nuw i64 %i.gc, %i.x
  %i.ge = shl i64 %i.gd, 5
  %i.gf = or disjoint i64 %i.ge, %i.s
  %i.gg = trunc i64 %i.gf to i32
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ek, i64 20 ; 2 uses
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !3
  %i.gj = tail call noundef i32 @llvm.umin.i32(i32 %i.gi, i32 %i.gg)
  store i32 %i.gj, ptr %i.gh, align 4, !tbaa !3
  br label %.critedge

bb.ab:                                            ; preds = %bb.r
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ee, i64 2
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !24
  %i.gm = icmp eq i8 %i.gl, 121
  br i1 %i.gm, label %bb.ac, label %.critedge

bb.ac:                                            ; preds = %bb.ab
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ee, i64 3
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !24
  %i.gp = icmp eq i8 %i.go, 32
  br i1 %i.gp, label %bb.ad, label %.critedge

bb.ad:                                            ; preds = %bb.ac
  %i.gq = shl i64 38, %i.v
  %i.gr = add nuw i64 %i.gq, %i.x
  %i.gs = shl i64 %i.gr, 5
  %i.gt = or disjoint i64 %i.gs, %i.s
  %i.gu = trunc i64 %i.gt to i32
  %i.gv = getelementptr inbounds nuw i8, ptr %i.ek, i64 16 ; 2 uses
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !3
  %i.gx = tail call noundef i32 @llvm.umin.i32(i32 %i.gw, i32 %i.gu)
  store i32 %i.gx, ptr %i.gv, align 4, !tbaa !3
  br label %.critedge

bb.ae:                                            ; preds = %bb.r
  %i.gy = getelementptr inbounds nuw i8, ptr %i.ee, i64 2
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !24
  switch i8 %i.gz, label %.critedge [
    i8 110, label %bb.af
    i8 115, label %bb.ah
  ]

bb.af:                                            ; preds = %bb.ae
  %i.ha = getelementptr inbounds nuw i8, ptr %i.ee, i64 3
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !24
  %i.hc = icmp eq i8 %i.hb, 32
  br i1 %i.hc, label %bb.ag, label %.critedge

bb.ag:                                            ; preds = %bb.af
  %i.hd = shl i64 16, %i.v
  %i.he = add nuw i64 %i.hd, %i.x
  %i.hf = shl i64 %i.he, 5
  %i.hg = or disjoint i64 %i.hf, %i.s
  %i.hh = trunc i64 %i.hg to i32
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ek, i64 16 ; 2 uses
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !3
  %i.hk = tail call noundef i32 @llvm.umin.i32(i32 %i.hj, i32 %i.hh)
  store i32 %i.hk, ptr %i.hi, align 4, !tbaa !3
  br label %.critedge

bb.ah:                                            ; preds = %bb.ae
  %i.hl = getelementptr inbounds nuw i8, ptr %i.ee, i64 3
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !24
  %i.hn = icmp eq i8 %i.hm, 32
  br i1 %i.hn, label %bb.ai, label %.critedge

bb.ai:                                            ; preds = %bb.ah
  %i.ho = shl i64 47, %i.v
  %i.hp = add nuw i64 %i.ho, %i.x
  %i.hq = shl i64 %i.hp, 5
  %i.hr = or disjoint i64 %i.hq, %i.s
  %i.hs = trunc i64 %i.hr to i32
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ek, i64 16 ; 2 uses
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !3
  %i.hv = tail call noundef i32 @llvm.umin.i32(i32 %i.hu, i32 %i.hs)
  store i32 %i.hv, ptr %i.ht, align 4, !tbaa !3
  br label %.critedge

bb.aj:                                            ; preds = %bb.r
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ee, i64 2
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !24
  switch i8 %i.hx, label %.critedge [
end_hunk_0
begin_hunk_1_@_ZL39BrotliFindAllStaticDictionaryMatchesForPKN13duckdb_brotli23BrotliEncoderDictionaryEPKhmmPj:bb.a
  %i.xd = getelementptr inbounds nuw i8, ptr %i.ee, i64 3
  %i.xe = load i8, ptr %i.xd, align 1, !tbaa !24
  %i.xf = icmp eq i8 %i.xe, 32
  br i1 %i.xf, label %bb.df, label %.critedge

bb.df:                                            ; preds = %bb.de
  %i.xg = shl i64 100, %i.v
  %i.xh = add nuw i64 %i.xg, %i.x
  %i.xi = shl i64 %i.xh, 5
  %i.xj = or disjoint i64 %i.xi, %i.s
  %i.xk = trunc i64 %i.xj to i32
  %i.xl = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.s
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xl, i64 16 ; 2 uses
  %i.xn = load i32, ptr %i.xm, align 4, !tbaa !3
  %i.xo = tail call noundef i32 @llvm.umin.i32(i32 %i.xn, i32 %i.xk)
  store i32 %i.xo, ptr %i.xm, align 4, !tbaa !3
  br label %.critedge

bb.dg:                                            ; preds = %bb.q
  %i.xp = getelementptr inbounds nuw i8, ptr %i.ee, i64 1
  %i.xq = load i8, ptr %i.xp, align 1, !tbaa !24
  switch i8 %i.xq, label %.critedge [
    i8 101, label %bb.dh
    i8 121, label %bb.dl
  ]

bb.dh:                                            ; preds = %bb.dg
  %i.xr = getelementptr inbounds nuw i8, ptr %i.ee, i64 2
  %i.xs = load i8, ptr %i.xr, align 1, !tbaa !24
  %i.xt = icmp eq i8 %i.xs, 115
  br i1 %i.xt, label %bb.di, label %.critedge

bb.di:                                            ; preds = %bb.dh
  %i.xu = getelementptr inbounds nuw i8, ptr %i.ee, i64 3
  %i.xv = load i8, ptr %i.xu, align 1, !tbaa !24
  %i.xw = icmp eq i8 %i.xv, 115
  br i1 %i.xw, label %bb.dj, label %.critedge

bb.dj:                                            ; preds = %bb.di
  %i.xx = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  %i.xy = load i8, ptr %i.xx, align 1, !tbaa !24
  %i.xz = icmp eq i8 %i.xy, 32
  br i1 %i.xz, label %bb.dk, label %.critedge

bb.dk:                                            ; preds = %bb.dj
  %i.ya = shl i64 93, %i.v
  %i.yb = add nuw i64 %i.ya, %i.x
  %i.yc = shl i64 %i.yb, 5
  %i.yd = or disjoint i64 %i.yc, %i.s
  %i.ye = trunc i64 %i.yd to i32
  %i.yf = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.s
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 20 ; 2 uses
  %i.yh = load i32, ptr %i.yg, align 4, !tbaa !3
  %i.yi = tail call noundef i32 @llvm.umin.i32(i32 %i.yh, i32 %i.ye)
  store i32 %i.yi, ptr %i.yg, align 4, !tbaa !3
  br label %.critedge

bb.dl:                                            ; preds = %bb.dg
  %i.yj = getelementptr inbounds nuw i8, ptr %i.ee, i64 2
  %i.yk = load i8, ptr %i.yj, align 1, !tbaa !24
  %i.yl = icmp eq i8 %i.yk, 32
  br i1 %i.yl, label %bb.dm, label %.critedge

bb.dm:                                            ; preds = %bb.dl
  %i.ym = shl i64 61, %i.v
  %i.yn = add nuw i64 %i.ym, %i.x
  %i.yo = shl i64 %i.yn, 5
  %i.yp = or disjoint i64 %i.yo, %i.s
  %i.yq = trunc i64 %i.yp to i32
  %i.yr = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.s
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yr, i64 12 ; 2 uses
  %i.yt = load i32, ptr %i.ys, align 4, !tbaa !3
  %i.yu = tail call noundef i32 @llvm.umin.i32(i32 %i.yt, i32 %i.yq)
  store i32 %i.yu, ptr %i.ys, align 4, !tbaa !3
  br label %.critedge

bb.dn:                                            ; preds = %bb.q
  %i.yv = getelementptr inbounds nuw i8, ptr %i.ee, i64 1
  %i.yw = load i8, ptr %i.yv, align 1, !tbaa !24
  %i.yx = icmp eq i8 %i.yw, 117
  br i1 %i.yx, label %bb.do, label %.critedge

bb.do:                                            ; preds = %bb.dn
  %i.yy = getelementptr inbounds nuw i8, ptr %i.ee, i64 2
  %i.yz = load i8, ptr %i.yy, align 1, !tbaa !24
  %i.za = icmp eq i8 %i.yz, 115
  br i1 %i.za, label %bb.dp, label %.critedge

bb.dp:                                            ; preds = %bb.do
  %i.zb = getelementptr inbounds nuw i8, ptr %i.ee, i64 3
  %i.zc = load i8, ptr %i.zb, align 1, !tbaa !24
  %i.zd = icmp eq i8 %i.zc, 32
  br i1 %i.zd, label %bb.dq, label %.critedge

bb.dq:                                            ; preds = %bb.dp
  %i.ze = shl i64 106, %i.v
  %i.zf = add nuw i64 %i.ze, %i.x
  %i.zg = shl i64 %i.zf, 5
  %i.zh = or disjoint i64 %i.zg, %i.s
  %i.zi = trunc i64 %i.zh to i32
  %i.zj = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.s
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zj, i64 16 ; 2 uses
  %i.zl = load i32, ptr %i.zk, align 4, !tbaa !3
  %i.zm = tail call noundef i32 @llvm.umin.i32(i32 %i.zl, i32 %i.zi)
  store i32 %i.zm, ptr %i.zk, align 4, !tbaa !3
  br label %.critedge

bb.dr:                                            ; preds = %bb.b
  %.not815 = icmp eq i8 %.sroa.7581.0.copyload, 10 ; 12 uses
  %.sroa.0579.0.insert.ext = zext nneg i8 %i.r to i32 ; 2 uses
  %i.zn = icmp ult i64 %3, %i.s
  br i1 %i.zn, label %.critedge, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %.sroa.9.0.insert.ext = zext i16 %.sroa.9.0.copyload to i32
  %i.zo = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.s
  %i.zp = load i32, ptr %i.zo, align 4, !tbaa !3
  %i.zq = zext i32 %i.zp to i64
  %narrow.i854 = mul nuw nsw i32 %.sroa.9.0.insert.ext, %.sroa.0579.0.insert.ext
  %i.zr = zext nneg i32 %narrow.i854 to i64
  %i.zs = load ptr, ptr %i.m, align 8, !tbaa !32
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zs, i64 %i.zq
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zt, i64 %i.zr ; 3 uses
  %cond = icmp eq i8 %.sroa.7581.0.copyload, 10
  br i1 %cond, label %bb.dt, label %.preheader1137

.preheader1137:                                   ; preds = %bb.ds
  %.not1316 = icmp eq i8 %i.r, 0
  br i1 %.not1316, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit861.thread1045, label %.lr.ph1194

bb.dt:                                            ; preds = %bb.ds
  %i.zv = load i8, ptr %i.zu, align 1, !tbaa !24  ; 2 uses
  %i.zw = add i8 %i.zv, -97
  %or.cond.i855 = icmp ult i8 %i.zw, 26
  br i1 %or.cond.i855, label %bb.du, label %.critedge

bb.du:                                            ; preds = %bb.dt
  %i.zx = load i8, ptr %1, align 1, !tbaa !24
  %i.zy = xor i8 %i.zx, %i.zv
  %i.zz = icmp eq i8 %i.zy, 32
  br i1 %i.zz, label %bb.dv, label %.critedge

bb.dv:                                            ; preds = %bb.du
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zu, i64 1 ; 4 uses
  %i.aab = add nsw i32 %.sroa.0579.0.insert.ext, -1 ; 2 uses
  %i.aac = zext i32 %i.aab to i64                 ; 3 uses
  %i.aad = icmp ugt i32 %i.aab, 7
  br i1 %i.aad, label %.lr.ph, label %.preheader1140

.preheader1140:                                   ; preds = %bb.dx, %bb.dv
  %.027.i867.lcssa = phi i64 [ %i.aac, %bb.dv ], [ %i.aan, %bb.dx ] ; 3 uses
  %.025.i868.lcssa = phi ptr [ %i.n, %bb.dv ], [ %i.aal, %bb.dx ]
  %.022.i869.lcssa = phi ptr [ %i.aaa, %bb.dv ], [ %i.aam, %bb.dx ] ; 3 uses
  %.not.i8741170 = icmp eq i64 %.027.i867.lcssa, 0
  br i1 %.not.i8741170, label %.critedge.i875, label %.lr.ph1174.preheader

.lr.ph1174.preheader:                             ; preds = %.preheader1140
  %scevgep = getelementptr i8, ptr %.022.i869.lcssa, i64 %.027.i867.lcssa
  br label %.lr.ph1174

.lr.ph:                                           ; preds = %bb.dv, %bb.dx
  %.022.i8691167 = phi ptr [ %i.aam, %bb.dx ], [ %i.aaa, %bb.dv ] ; 3 uses
  %.025.i8681166 = phi ptr [ %i.aal, %bb.dx ], [ %i.n, %bb.dv ] ; 2 uses
  %.027.i8671165 = phi i64 [ %i.aan, %bb.dx ], [ %i.aac, %bb.dv ]
  %.0.copyload.i1026 = load i64, ptr %.025.i8681166, align 1 ; 2 uses
  %.0.copyload.i1025 = load i64, ptr %.022.i8691167, align 1 ; 2 uses
  %.not30.i877 = icmp eq i64 %.0.copyload.i1026, %.0.copyload.i1025
  br i1 %.not30.i877, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %.lr.ph
  %i.aae = xor i64 %.0.copyload.i1025, %.0.copyload.i1026
  %i.aaf = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aae, i1 true)
  %i.aag = ptrtoint ptr %.022.i8691167 to i64
  %i.aah = ptrtoint ptr %i.aaa to i64
  %i.aai = sub i64 %i.aag, %i.aah
  %i.aaj = lshr i64 %i.aaf, 3
  %i.aak = add i64 %i.aai, %i.aaj
  br label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit861

bb.dx:                                            ; preds = %.lr.ph
  %i.aal = getelementptr inbounds nuw i8, ptr %.025.i8681166, i64 8 ; 2 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %.022.i8691167, i64 8 ; 2 uses
  %i.aan = add i64 %.027.i8671165, -8             ; 3 uses
  %i.aao = icmp ugt i64 %i.aan, 7
  br i1 %i.aao, label %.lr.ph, label %.preheader1140, !llvm.loop !34

.lr.ph1174:                                       ; preds = %.lr.ph1174.preheader, %bb.dy
  %.224.i8731173 = phi ptr [ %i.aau, %bb.dy ], [ %.022.i869.lcssa, %.lr.ph1174.preheader ] ; 3 uses
  %.126.i8721172 = phi ptr [ %i.aat, %bb.dy ], [ %.025.i868.lcssa, %.lr.ph1174.preheader ] ; 2 uses
  %.128.i8711171 = phi i64 [ %i.aas, %bb.dy ], [ %.027.i867.lcssa, %.lr.ph1174.preheader ]
  %i.aap = load i8, ptr %.224.i8731173, align 1, !tbaa !24
  %i.aaq = load i8, ptr %.126.i8721172, align 1, !tbaa !24
  %i.aar = icmp eq i8 %i.aap, %i.aaq
  br i1 %i.aar, label %bb.dy, label %.critedge.i875

bb.dy:                                            ; preds = %.lr.ph1174
  %i.aas = add nsw i64 %.128.i8711171, -1         ; 2 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %.126.i8721172, i64 1
  %i.aau = getelementptr inbounds nuw i8, ptr %.224.i8731173, i64 1
  %.not.i874 = icmp eq i64 %i.aas, 0
  br i1 %.not.i874, label %.critedge.i875, label %.lr.ph1174, !llvm.loop !35

.critedge.i875:                                   ; preds = %bb.dy, %.lr.ph1174, %.preheader1140
  %.224.i873.lcssa = phi ptr [ %.022.i869.lcssa, %.preheader1140 ], [ %.224.i8731173, %.lr.ph1174 ], [ %scevgep, %bb.dy ]
  %i.aav = ptrtoint ptr %.224.i873.lcssa to i64
  %i.aaw = ptrtoint ptr %i.aaa to i64
  %i.aax = sub i64 %i.aav, %i.aaw
  br label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit861

.lr.ph1194:                                       ; preds = %.preheader1137, %bb.eb
  %.0.i8571193 = phi i64 [ %i.abe, %bb.eb ], [ 0, %.preheader1137 ] ; 3 uses
  %i.aay = getelementptr inbounds nuw i8, ptr %i.zu, i64 %.0.i8571193
  %i.aaz = load i8, ptr %i.aay, align 1, !tbaa !24 ; 3 uses
  %i.aba = add i8 %i.aaz, -97
  %or.cond40.i858 = icmp ult i8 %i.aba, 26
  %i.abb = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i8571193
  %i.abc = load i8, ptr %i.abb, align 1, !tbaa !24 ; 2 uses
  br i1 %or.cond40.i858, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %.lr.ph1194
  %i.abd = xor i8 %i.abc, %i.aaz
  %.not39.i860 = icmp eq i8 %i.abd, 32
  br i1 %.not39.i860, label %bb.eb, label %.critedge

bb.ea:                                            ; preds = %.lr.ph1194
  %.not.i859 = icmp eq i8 %i.aaz, %i.abc
  br i1 %.not.i859, label %bb.eb, label %.critedge

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  %i.abe = add nuw nsw i64 %.0.i8571193, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.abe, %i.s
  br i1 %exitcond.not, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit861.thread1045, label %.lr.ph1194, !llvm.loop !42

_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit861: ; preds = %.critedge.i875, %bb.dw
  %.2.i876 = phi i64 [ %i.aak, %bb.dw ], [ %i.aax, %.critedge.i875 ]
  %i.abf = icmp eq i64 %.2.i876, %i.aac
  br i1 %i.abf, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit861.thread1045, label %.critedge, !llvm.loop !41

_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit861.thread1045: ; preds = %bb.eb, %.preheader1137, %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit861
  %i.abg = select i1 %.not815, i64 9, i64 44
  %i.abh = shl i64 %i.abg, %i.v
  %i.abi = add i64 %i.abh, %i.x
  %i.abj = shl i64 %i.abi, 5
  %i.abk = or disjoint i64 %i.abj, %i.s
  %i.abl = trunc i64 %i.abk to i32
  %i.abm = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.s ; 7 uses
  %i.abn = load i32, ptr %i.abm, align 4, !tbaa !3
  %i.abo = tail call noundef i32 @llvm.umin.i32(i32 %i.abn, i32 %i.abl)
  store i32 %i.abo, ptr %i.abm, align 4, !tbaa !3
  %i.abp = add nuw nsw i64 %i.s, 1                ; 7 uses
  %.not817 = icmp ult i64 %i.abp, %3
  br i1 %.not817, label %bb.ec, label %.critedge, !llvm.loop !41

bb.ec:                                            ; preds = %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit861.thread1045
  %i.abq = getelementptr inbounds nuw i8, ptr %1, i64 %i.s ; 5 uses
  %i.abr = load i8, ptr %i.abq, align 1, !tbaa !24
  switch i8 %i.abr, label %.critedge [
    i8 32, label %bb.ed
    i8 34, label %bb.ee
    i8 46, label %bb.eg
    i8 44, label %bb.ei
    i8 39, label %bb.ek
    i8 40, label %bb.el
    i8 61, label %bb.em
  ]

bb.ed:                                            ; preds = %bb.ec
  %i.abs = select i1 %.not815, i64 4, i64 68
  %i.abt = shl i64 %i.abs, %i.v
  %i.abu = add i64 %i.abt, %i.x
  %i.abv = shl i64 %i.abu, 5
  %i.abw = or disjoint i64 %i.abv, %i.s
  %i.abx = trunc i64 %i.abw to i32
  %i.aby = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.abp ; 2 uses
  %i.abz = load i32, ptr %i.aby, align 4, !tbaa !3
  %i.aca = tail call noundef i32 @llvm.umin.i32(i32 %i.abz, i32 %i.abx)
  store i32 %i.aca, ptr %i.aby, align 4, !tbaa !3
  br label %.critedge

bb.ee:                                            ; preds = %bb.ec
  %i.acb = select i1 %.not815, i64 66, i64 87
  %i.acc = shl i64 %i.acb, %i.v
  %i.acd = add i64 %i.acc, %i.x
  %i.ace = shl i64 %i.acd, 5
  %i.acf = or disjoint i64 %i.ace, %i.s
  %i.acg = trunc i64 %i.acf to i32
  %i.ach = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.abp ; 2 uses
  %i.aci = load i32, ptr %i.ach, align 4, !tbaa !3
  %i.acj = tail call noundef i32 @llvm.umin.i32(i32 %i.aci, i32 %i.acg)
  store i32 %i.acj, ptr %i.ach, align 4, !tbaa !3
  %i.ack = getelementptr inbounds nuw i8, ptr %i.abq, i64 1
  %i.acl = load i8, ptr %i.ack, align 1, !tbaa !24
  %i.acm = icmp eq i8 %i.acl, 62
  br i1 %i.acm, label %bb.ef, label %.critedge

bb.ef:                                            ; preds = %bb.ee
  %i.acn = select i1 %.not815, i64 69, i64 97
  %i.aco = shl i64 %i.acn, %i.v
  %i.acp = add i64 %i.aco, %i.x
  %i.acq = shl i64 %i.acp, 5
  %i.acr = or disjoint i64 %i.acq, %i.s
  %i.acs = trunc i64 %i.acr to i32
  %i.act = getelementptr inbounds nuw i8, ptr %i.abm, i64 8 ; 2 uses
  %i.acu = load i32, ptr %i.act, align 4, !tbaa !3
  %i.acv = tail call noundef i32 @llvm.umin.i32(i32 %i.acu, i32 %i.acs)
  store i32 %i.acv, ptr %i.act, align 4, !tbaa !3
  br label %.critedge

bb.eg:                                            ; preds = %bb.ec
  %i.acw = select i1 %.not815, i64 79, i64 101
  %i.acx = shl i64 %i.acw, %i.v
  %i.acy = add i64 %i.acx, %i.x
  %i.acz = shl i64 %i.acy, 5
  %i.ada = or disjoint i64 %i.acz, %i.s
  %i.adb = trunc i64 %i.ada to i32
  %i.adc = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.abp ; 2 uses
  %i.add = load i32, ptr %i.adc, align 4, !tbaa !3
  %i.ade = tail call noundef i32 @llvm.umin.i32(i32 %i.add, i32 %i.adb)
  store i32 %i.ade, ptr %i.adc, align 4, !tbaa !3
  %i.adf = getelementptr inbounds nuw i8, ptr %i.abq, i64 1
  %i.adg = load i8, ptr %i.adf, align 1, !tbaa !24
  %i.adh = icmp eq i8 %i.adg, 32
  br i1 %i.adh, label %bb.eh, label %.critedge

bb.eh:                                            ; preds = %bb.eg
  %i.adi = select i1 %.not815, i64 88, i64 114
  %i.adj = shl i64 %i.adi, %i.v
  %i.adk = add i64 %i.adj, %i.x
  %i.adl = shl i64 %i.adk, 5
  %i.adm = or disjoint i64 %i.adl, %i.s
  %i.adn = trunc i64 %i.adm to i32
  %i.ado = getelementptr inbounds nuw i8, ptr %i.abm, i64 8 ; 2 uses
  %i.adp = load i32, ptr %i.ado, align 4, !tbaa !3
  %i.adq = tail call noundef i32 @llvm.umin.i32(i32 %i.adp, i32 %i.adn)
  store i32 %i.adq, ptr %i.ado, align 4, !tbaa !3
  br label %.critedge

bb.ei:                                            ; preds = %bb.ec
  %i.adr = select i1 %.not815, i64 99, i64 112
  %i.ads = shl i64 %i.adr, %i.v
  %i.adt = add i64 %i.ads, %i.x
  %i.adu = shl i64 %i.adt, 5
  %i.adv = or disjoint i64 %i.adu, %i.s
  %i.adw = trunc i64 %i.adv to i32
  %i.adx = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.abp ; 2 uses
  %i.ady = load i32, ptr %i.adx, align 4, !tbaa !3
  %i.adz = tail call noundef i32 @llvm.umin.i32(i32 %i.ady, i32 %i.adw)
  store i32 %i.adz, ptr %i.adx, align 4, !tbaa !3
  %i.aea = getelementptr inbounds nuw i8, ptr %i.abq, i64 1
  %i.aeb = load i8, ptr %i.aea, align 1, !tbaa !24
  %i.aec = icmp eq i8 %i.aeb, 32
  br i1 %i.aec, label %bb.ej, label %.critedge

bb.ej:                                            ; preds = %bb.ei
  %i.aed = select i1 %.not815, i64 58, i64 107
  %i.aee = shl i64 %i.aed, %i.v
  %i.aef = add i64 %i.aee, %i.x
  %i.aeg = shl i64 %i.aef, 5
  %i.aeh = or disjoint i64 %i.aeg, %i.s
  %i.aei = trunc i64 %i.aeh to i32
  %i.aej = getelementptr inbounds nuw i8, ptr %i.abm, i64 8 ; 2 uses
  %i.aek = load i32, ptr %i.aej, align 4, !tbaa !3
  %i.ael = tail call noundef i32 @llvm.umin.i32(i32 %i.aek, i32 %i.aei)
  store i32 %i.ael, ptr %i.aej, align 4, !tbaa !3
  br label %.critedge

bb.ek:                                            ; preds = %bb.ec
  %i.aem = select i1 %.not815, i64 74, i64 94
  %i.aen = shl i64 %i.aem, %i.v
  %i.aeo = add i64 %i.aen, %i.x
  %i.aep = shl i64 %i.aeo, 5
  %i.aeq = or disjoint i64 %i.aep, %i.s
  %i.aer = trunc i64 %i.aeq to i32
  %i.aes = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.abp ; 2 uses
  %i.aet = load i32, ptr %i.aes, align 4, !tbaa !3
  %i.aeu = tail call noundef i32 @llvm.umin.i32(i32 %i.aet, i32 %i.aer)
  store i32 %i.aeu, ptr %i.aes, align 4, !tbaa !3
  br label %.critedge

bb.el:                                            ; preds = %bb.ec
  %i.aev = select i1 %.not815, i64 78, i64 113
  %i.aew = shl i64 %i.aev, %i.v
  %i.aex = add i64 %i.aew, %i.x
  %i.aey = shl i64 %i.aex, 5
  %i.aez = or disjoint i64 %i.aey, %i.s
  %i.afa = trunc i64 %i.aez to i32
  %i.afb = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.abp ; 2 uses
  %i.afc = load i32, ptr %i.afb, align 4, !tbaa !3
  %i.afd = tail call noundef i32 @llvm.umin.i32(i32 %i.afc, i32 %i.afa)
  store i32 %i.afd, ptr %i.afb, align 4, !tbaa !3
  br label %.critedge

bb.em:                                            ; preds = %bb.ec
  %i.afe = getelementptr inbounds nuw i8, ptr %i.abq, i64 1
  %i.aff = load i8, ptr %i.afe, align 1, !tbaa !24
  switch i8 %i.aff, label %.critedge [
    i8 34, label %bb.en
    i8 39, label %bb.eo
  ]

bb.en:                                            ; preds = %bb.em
  %i.afg = select i1 %.not815, i64 104, i64 105
  %i.afh = shl i64 %i.afg, %i.v
  %i.afi = add i64 %i.afh, %i.x
  %i.afj = shl i64 %i.afi, 5
  %i.afk = or disjoint i64 %i.afj, %i.s
  %i.afl = trunc i64 %i.afk to i32
  %i.afm = getelementptr inbounds nuw i8, ptr %i.abm, i64 8 ; 2 uses
  %i.afn = load i32, ptr %i.afm, align 4, !tbaa !3
  %i.afo = tail call noundef i32 @llvm.umin.i32(i32 %i.afn, i32 %i.afl)
  store i32 %i.afo, ptr %i.afm, align 4, !tbaa !3
  br label %.critedge

bb.eo:                                            ; preds = %bb.em
  %i.afp = select i1 %.not815, i64 108, i64 116
  %i.afq = shl i64 %i.afp, %i.v
  %i.afr = add i64 %i.afq, %i.x
  %i.afs = shl i64 %i.afr, 5
  %i.aft = or disjoint i64 %i.afs, %i.s
  %i.afu = trunc i64 %i.aft to i32
  %i.afv = getelementptr inbounds nuw i8, ptr %i.abm, i64 8 ; 2 uses
  %i.afw = load i32, ptr %i.afv, align 4, !tbaa !3
  %i.afx = tail call noundef i32 @llvm.umin.i32(i32 %i.afw, i32 %i.afu)
  store i32 %i.afx, ptr %i.afv, align 4, !tbaa !3
  br label %.critedge

.critedge:                                        ; preds = %bb.dz, %bb.ea, %bb.du, %bb.dt, %bb.dr, %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit861, %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit861.thread1045, %bb.em, %bb.ec, %bb.ef, %bb.ee, %bb.ej, %bb.ei, %bb.el, %bb.en, %bb.eo, %bb.ek, %bb.eg, %bb.eh, %bb.ed, %._crit_edge, %bb.p, %bb.ad, %bb.ac, %bb.ab, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.ak, %bb.al, %bb.am, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bg, %bb.bf, %bb.be, %bb.bc, %bb.bd, %bb.bh, %bb.bi, %bb.at, %bb.as, %bb.au, %bb.av, %bb.ag, %bb.af, %bb.ah, %bb.ai, %bb.t, %bb.x, %bb.w, %bb.y, %bb.z, %bb.aa, %bb.u, %bb.v, %bb.br, %bb.bs, %bb.by, %bb.bx, %bb.bw, %bb.bu, %bb.bv, %bb.bq, %bb.cc, %bb.cb, %bb.ce, %bb.cg, %bb.cm, %bb.cl, %bb.ck, %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.dm, %bb.dl, %bb.dh, %bb.di, %bb.dj, %bb.dk, %bb.dn, %bb.do, %bb.dp, %bb.dq, %bb.dc, %bb.db, %bb.da, %bb.dd, %bb.de, %bb.df, %bb.cp, %bb.co, %bb.cu, %bb.ct, %bb.cs, %bb.cq, %bb.cr, %bb.ci, %bb.cj, %bb.cf, %bb.cd, %bb.bz, %bb.ca, %bb.bo, %bb.bp, %bb.s, %bb.ae, %bb.aj, %bb.ar, %bb.bb, %bb.ba, %bb.r, %bb.bt, %bb.ch, %bb.cn, %bb.cz, %bb.dg, %bb.q
  %.6 = phi i32 [ %.3.lcssa, %._crit_edge ], [ %.3.lcssa, %bb.q ], [ %.3.lcssa, %bb.p ], [ %.3.lcssa, %bb.ad ], [ %.3.lcssa, %bb.ac ], [ %.3.lcssa, %bb.ab ], [ %.3.lcssa, %bb.aq ], [ %.3.lcssa, %bb.ap ], [ %.3.lcssa, %bb.ao ], [ %.3.lcssa, %bb.an ], [ %.3.lcssa, %bb.ak ], [ %.3.lcssa, %bb.al ], [ %.3.lcssa, %bb.am ], [ %.3.lcssa, %bb.az ], [ %.3.lcssa, %bb.ay ], [ %.3.lcssa, %bb.ax ], [ %.3.lcssa, %bb.aw ], [ %.3.lcssa, %bb.bn ], [ %.3.lcssa, %bb.bm ], [ %.3.lcssa, %bb.bl ], [ %.3.lcssa, %bb.bk ], [ %.3.lcssa, %bb.bj ], [ %.3.lcssa, %bb.bg ], [ %.3.lcssa, %bb.bf ], [ %.3.lcssa, %bb.be ], [ %.3.lcssa, %bb.bc ], [ %.3.lcssa, %bb.bd ], [ %.3.lcssa, %bb.bh ], [ %.3.lcssa, %bb.bi ], [ %.3.lcssa, %bb.at ], [ %.3.lcssa, %bb.as ], [ %.3.lcssa, %bb.au ], [ %.3.lcssa, %bb.av ], [ %.3.lcssa, %bb.ag ], [ %.3.lcssa, %bb.af ], [ %.3.lcssa, %bb.ah ], [ %.3.lcssa, %bb.ai ], [ %.3.lcssa, %bb.t ], [ %.3.lcssa, %bb.x ], [ %.3.lcssa, %bb.w ], [ %.3.lcssa, %bb.y ], [ %.3.lcssa, %bb.z ], [ %.3.lcssa, %bb.aa ], [ %.3.lcssa, %bb.u ], [ %.3.lcssa, %bb.v ], [ %.3.lcssa, %bb.br ], [ %.3.lcssa, %bb.bs ], [ %.3.lcssa, %bb.by ], [ %.3.lcssa, %bb.bx ], [ %.3.lcssa, %bb.bw ], [ %.3.lcssa, %bb.bu ], [ %.3.lcssa, %bb.bv ], [ %.3.lcssa, %bb.bq ], [ %.3.lcssa, %bb.cc ], [ %.3.lcssa, %bb.cb ], [ %.3.lcssa, %bb.ce ], [ %.3.lcssa, %bb.cg ], [ %.3.lcssa, %bb.cm ], [ %.3.lcssa, %bb.cl ], [ %.3.lcssa, %bb.ck ], [ %.3.lcssa, %bb.cy ], [ %.3.lcssa, %bb.cx ], [ %.3.lcssa, %bb.cw ], [ %.3.lcssa, %bb.cv ], [ %.3.lcssa, %bb.dm ], [ %.3.lcssa, %bb.dl ], [ %.3.lcssa, %bb.dh ], [ %.3.lcssa, %bb.di ], [ %.3.lcssa, %bb.dj ], [ %.3.lcssa, %bb.dk ], [ %.3.lcssa, %bb.dn ], [ %.3.lcssa, %bb.do ], [ %.3.lcssa, %bb.dp ], [ %.3.lcssa, %bb.dq ], [ %.3.lcssa, %bb.dc ], [ %.3.lcssa, %bb.db ], [ %.3.lcssa, %bb.da ], [ %.3.lcssa, %bb.dd ], [ %.3.lcssa, %bb.de ], [ %.3.lcssa, %bb.df ], [ %.3.lcssa, %bb.cp ], [ %.3.lcssa, %bb.co ], [ %.3.lcssa, %bb.cu ], [ %.3.lcssa, %bb.ct ], [ %.3.lcssa, %bb.cs ], [ %.3.lcssa, %bb.cq ], [ %.3.lcssa, %bb.cr ], [ %.3.lcssa, %bb.ci ], [ %.3.lcssa, %bb.cj ], [ %.3.lcssa, %bb.cf ], [ %.3.lcssa, %bb.cd ], [ %.3.lcssa, %bb.bz ], [ %.3.lcssa, %bb.ca ], [ %.3.lcssa, %bb.bo ], [ %.3.lcssa, %bb.bp ], [ %.3.lcssa, %bb.s ], [ %.3.lcssa, %bb.ae ], [ %.3.lcssa, %bb.aj ], [ %.3.lcssa, %bb.ar ], [ %.3.lcssa, %bb.bb ], [ %.3.lcssa, %bb.ba ], [ %.3.lcssa, %bb.r ], [ %.3.lcssa, %bb.bt ], [ %.3.lcssa, %bb.ch ], [ %.3.lcssa, %bb.cn ], [ %.3.lcssa, %bb.cz ], [ %.3.lcssa, %bb.dg ], [ %.01215, %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit861 ], [ 1, %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit861.thread1045 ], [ 1, %bb.em ], [ 1, %bb.ec ], [ 1, %bb.ef ], [ 1, %bb.ee ], [ 1, %bb.ej ], [ 1, %bb.ei ], [ 1, %bb.el ], [ 1, %bb.en ], [ 1, %bb.eo ], [ 1, %bb.ek ], [ 1, %bb.eg ], [ 1, %bb.eh ], [ 1, %bb.ed ], [ %.01215, %bb.dr ], [ %.01215, %bb.dt ], [ %.01215, %bb.du ], [ %.01215, %bb.ea ], [ %.01215, %bb.dz ] ; 2 uses
  br i1 %i.y, label %._crit_edge1218, label %bb.b

._crit_edge1218:                                  ; preds = %.critedge, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.6, %.critedge ] ; 4 uses
  %i.afy = icmp ugt i64 %3, 4
  br i1 %i.afy, label %bb.ep, label %.thread1097

bb.ep:                                            ; preds = %._crit_edge1218
  %i.afz = load i8, ptr %1, align 1, !tbaa !24    ; 2 uses
  switch i8 %i.afz, label %.loopexit [
    i8 32, label %bb.eq
    i8 46, label %bb.eq
  ]

bb.eq:                                            ; preds = %bb.ep, %bb.ep
  %i.aga = icmp eq i8 %i.afz, 32                  ; 5 uses
  %i.agb = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 5 uses
  %.0.copyload.i862 = load i32, ptr %i.agb, align 1
  %i.agc = mul i32 %.0.copyload.i862, 506832829
  %i.agd = lshr i32 %i.agc, 17
  %i.age = zext nneg i32 %i.agd to i64
  %i.agf = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.age
  %i.agg = load i16, ptr %i.agf, align 2, !tbaa !29 ; 2 uses
  %.not805 = icmp eq i16 %i.agg, 0
  br i1 %.not805, label %.loopexit, label %.lr.ph1272

.lr.ph1272:                                       ; preds = %bb.eq
  %i.agh = zext i16 %i.agg to i64
  %i.agi = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.agj = load ptr, ptr %i.agi, align 8, !tbaa !31
  %i.agk = load ptr, ptr %0, align 8, !tbaa !23   ; 3 uses
  %i.agl = add i64 %3, -1                         ; 2 uses
  %i.agm = getelementptr inbounds nuw i8, ptr %i.agk, i64 32 ; 2 uses
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agk, i64 168 ; 2 uses
  %i.ago = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.agp = select i1 %i.aga, i64 6, i64 32
  %i.agq = select i1 %i.aga, i64 89, i64 67
  %i.agr = select i1 %i.aga, i64 2, i64 77
  br label %bb.er

bb.er:                                            ; preds = %.lr.ph1272, %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread
  %.71270 = phi i32 [ %.0.lcssa, %.lr.ph1272 ], [ %.11, %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread ] ; 9 uses
  %.07601269 = phi i64 [ %i.agh, %.lr.ph1272 ], [ %i.ags, %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread ] ; 2 uses
  %i.ags = add i64 %.07601269, 1
  %i.agt = getelementptr inbounds nuw [4 x i8], ptr %i.agj, i64 %.07601269 ; 3 uses
  %.sroa.0155.0.copyload = load i8, ptr %i.agt, align 2, !tbaa !24 ; 2 uses
  %.sroa.8160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.agt, i64 1
  %.sroa.8160.0.copyload = load i8, ptr %.sroa.8160.0..sroa_idx, align 1, !tbaa !24 ; 3 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.agt, i64 2
  %.sroa.10.0.copyload = load i16, ptr %.sroa.10.0..sroa_idx, align 2, !tbaa !29 ; 2 uses
  %i.agu = and i8 %.sroa.0155.0.copyload, 31      ; 4 uses
  %i.agv = zext nneg i8 %i.agu to i64             ; 39 uses
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agk, i64 %i.agv
  %i.agx = load i8, ptr %i.agw, align 1, !tbaa !24
  %i.agy = zext nneg i8 %i.agx to i64             ; 17 uses
  %i.agz = zext i16 %.sroa.10.0.copyload to i64   ; 18 uses
  %i.aha = icmp slt i8 %.sroa.0155.0.copyload, 0
  %i.ahb = icmp eq i8 %.sroa.8160.0.copyload, 0
  br i1 %i.ahb, label %bb.es, label %bb.fj

bb.es:                                            ; preds = %bb.er
  %i.ahc = icmp ult i64 %i.agl, %i.agv
  br i1 %i.ahc, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.ahd = getelementptr inbounds nuw [4 x i8], ptr %i.agm, i64 %i.agv
  %i.ahe = load i32, ptr %i.ahd, align 4, !tbaa !3
  %i.ahf = zext i32 %i.ahe to i64
  %narrow.i843 = mul nuw nsw i64 %i.agz, %i.agv
  %i.ahg = load ptr, ptr %i.agn, align 8, !tbaa !32
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.ahg, i64 %i.ahf
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahh, i64 %narrow.i843 ; 4 uses
  %i.ahj = icmp samesign ugt i8 %i.agu, 7
  br i1 %i.ahj, label %.lr.ph1257, label %.preheader1131

.preheader1131:                                   ; preds = %bb.ev, %bb.et
  %.027.i881.lcssa = phi i64 [ %i.agv, %bb.et ], [ %i.aht, %bb.ev ] ; 3 uses
  %.025.i882.lcssa = phi ptr [ %i.agb, %bb.et ], [ %i.ahr, %bb.ev ]
  %.022.i883.lcssa = phi ptr [ %i.ahi, %bb.et ], [ %i.ahs, %bb.ev ] ; 3 uses
  %.not.i8881261 = icmp eq i64 %.027.i881.lcssa, 0
  br i1 %.not.i8881261, label %.critedge.i889, label %.lr.ph1265.preheader

.lr.ph1265.preheader:                             ; preds = %.preheader1131
  %scevgep1370 = getelementptr i8, ptr %.022.i883.lcssa, i64 %.027.i881.lcssa
  br label %.lr.ph1265

.lr.ph1257:                                       ; preds = %bb.et, %bb.ev
  %.022.i8831255 = phi ptr [ %i.ahs, %bb.ev ], [ %i.ahi, %bb.et ] ; 3 uses
  %.025.i8821254 = phi ptr [ %i.ahr, %bb.ev ], [ %i.agb, %bb.et ] ; 2 uses
  %.027.i8811253 = phi i64 [ %i.aht, %bb.ev ], [ %i.agv, %bb.et ]
  %.0.copyload.i1024 = load i64, ptr %.025.i8821254, align 1 ; 2 uses
  %.0.copyload.i1023 = load i64, ptr %.022.i8831255, align 1 ; 2 uses
  %.not30.i891 = icmp eq i64 %.0.copyload.i1024, %.0.copyload.i1023
  br i1 %.not30.i891, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %.lr.ph1257
  %i.ahk = xor i64 %.0.copyload.i1023, %.0.copyload.i1024
  %i.ahl = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ahk, i1 true)
  %i.ahm = ptrtoint ptr %.022.i8831255 to i64
  %i.ahn = ptrtoint ptr %i.ahi to i64
  %i.aho = sub i64 %i.ahm, %i.ahn
  %i.ahp = lshr i64 %i.ahl, 3
  %i.ahq = add i64 %i.aho, %i.ahp
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit894

bb.ev:                                            ; preds = %.lr.ph1257
  %i.ahr = getelementptr inbounds nuw i8, ptr %.025.i8821254, i64 8 ; 2 uses
  %i.ahs = getelementptr inbounds nuw i8, ptr %.022.i8831255, i64 8 ; 2 uses
  %i.aht = add i64 %.027.i8811253, -8             ; 3 uses
  %i.ahu = icmp ugt i64 %i.aht, 7
  br i1 %i.ahu, label %.lr.ph1257, label %.preheader1131, !llvm.loop !34

.lr.ph1265:                                       ; preds = %.lr.ph1265.preheader, %bb.ew
  %.224.i8871264 = phi ptr [ %i.aia, %bb.ew ], [ %.022.i883.lcssa, %.lr.ph1265.preheader ] ; 3 uses
  %.126.i8861263 = phi ptr [ %i.ahz, %bb.ew ], [ %.025.i882.lcssa, %.lr.ph1265.preheader ] ; 2 uses
  %.128.i8851262 = phi i64 [ %i.ahy, %bb.ew ], [ %.027.i881.lcssa, %.lr.ph1265.preheader ]
  %i.ahv = load i8, ptr %.224.i8871264, align 1, !tbaa !24
  %i.ahw = load i8, ptr %.126.i8861263, align 1, !tbaa !24
  %i.ahx = icmp eq i8 %i.ahv, %i.ahw
  br i1 %i.ahx, label %bb.ew, label %.critedge.i889

bb.ew:                                            ; preds = %.lr.ph1265
  %i.ahy = add nsw i64 %.128.i8851262, -1         ; 2 uses
  %i.ahz = getelementptr inbounds nuw i8, ptr %.126.i8861263, i64 1
  %i.aia = getelementptr inbounds nuw i8, ptr %.224.i8871264, i64 1
  %.not.i888 = icmp eq i64 %i.ahy, 0
  br i1 %.not.i888, label %.critedge.i889, label %.lr.ph1265, !llvm.loop !35

.critedge.i889:                                   ; preds = %bb.ew, %.lr.ph1265, %.preheader1131
  %.224.i887.lcssa = phi ptr [ %.022.i883.lcssa, %.preheader1131 ], [ %.224.i8871264, %.lr.ph1265 ], [ %scevgep1370, %bb.ew ]
  %i.aib = ptrtoint ptr %.224.i887.lcssa to i64
  %i.aic = ptrtoint ptr %i.ahi to i64
  %i.aid = sub i64 %i.aib, %i.aic
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit894

_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit894: ; preds = %bb.eu, %.critedge.i889
  %.2.i890 = phi i64 [ %i.ahq, %bb.eu ], [ %i.aid, %.critedge.i889 ]
  %.not1119 = icmp eq i64 %.2.i890, %i.agv
  br i1 %.not1119, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread1060, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread, !llvm.loop !43

_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread1060: ; preds = %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit894
  %i.aie = shl i64 %i.agp, %i.agy
  %i.aif = add i64 %i.aie, %i.agz
  %i.aig = add nuw nsw i64 %i.agv, 1              ; 2 uses
  %i.aih = shl i64 %i.aif, 5
  %i.aii = or disjoint i64 %i.aih, %i.agv
  %i.aij = trunc i64 %i.aii to i32
  %i.aik = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.aig ; 2 uses
  %i.ail = load i32, ptr %i.aik, align 4, !tbaa !3
  %i.aim = tail call noundef i32 @llvm.umin.i32(i32 %i.ail, i32 %i.aij)
  store i32 %i.aim, ptr %i.aik, align 4, !tbaa !3
  %i.ain = add nuw nsw i64 %i.agv, 2              ; 5 uses
  %.not814 = icmp ult i64 %i.ain, %3
  br i1 %.not814, label %bb.ex, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread, !llvm.loop !43

bb.ex:                                            ; preds = %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread1060
  %i.aio = getelementptr inbounds nuw i8, ptr %1, i64 %i.aig ; 4 uses
  %i.aip = load i8, ptr %i.aio, align 1, !tbaa !24 ; 2 uses
  switch i8 %i.aip, label %bb.fa [
    i8 32, label %bb.ey
    i8 40, label %bb.ez
  ]

bb.ey:                                            ; preds = %bb.ex
  %i.aiq = shl i64 %i.agr, %i.agy
  %i.air = add i64 %i.aiq, %i.agz
  %i.ais = shl i64 %i.air, 5
  %i.ait = or disjoint i64 %i.ais, %i.agv
  %i.aiu = trunc i64 %i.ait to i32
  %i.aiv = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ain ; 2 uses
  %i.aiw = load i32, ptr %i.aiv, align 4, !tbaa !3
  %i.aix = tail call noundef i32 @llvm.umin.i32(i32 %i.aiw, i32 %i.aiu)
  store i32 %i.aix, ptr %i.aiv, align 4, !tbaa !3
  br label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread

bb.ez:                                            ; preds = %bb.ex
  %i.aiy = shl i64 %i.agq, %i.agy
  %i.aiz = add i64 %i.aiy, %i.agz
  %i.aja = shl i64 %i.aiz, 5
  %i.ajb = or disjoint i64 %i.aja, %i.agv
  %i.ajc = trunc i64 %i.ajb to i32
  %i.ajd = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ain ; 2 uses
  %i.aje = load i32, ptr %i.ajd, align 4, !tbaa !3
  %i.ajf = tail call noundef i32 @llvm.umin.i32(i32 %i.aje, i32 %i.ajc)
  store i32 %i.ajf, ptr %i.ajd, align 4, !tbaa !3
  br label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread

bb.fa:                                            ; preds = %bb.ex
  br i1 %i.aga, label %bb.fb, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread

bb.fb:                                            ; preds = %bb.fa
  switch i8 %i.aip, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread [
    i8 44, label %bb.fc
    i8 46, label %bb.fe
    i8 61, label %bb.fg
  ]

bb.fc:                                            ; preds = %bb.fb
  %i.ajg = shl i64 103, %i.agy
  %i.ajh = add nuw i64 %i.ajg, %i.agz
  %i.aji = shl i64 %i.ajh, 5
  %i.ajj = or disjoint i64 %i.aji, %i.agv
  %i.ajk = trunc i64 %i.ajj to i32
  %i.ajl = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ain ; 2 uses
  %i.ajm = load i32, ptr %i.ajl, align 4, !tbaa !3
  %i.ajn = tail call noundef i32 @llvm.umin.i32(i32 %i.ajm, i32 %i.ajk)
  store i32 %i.ajn, ptr %i.ajl, align 4, !tbaa !3
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.aio, i64 1
  %i.ajp = load i8, ptr %i.ajo, align 1, !tbaa !24
  %i.ajq = icmp eq i8 %i.ajp, 32
  br i1 %i.ajq, label %bb.fd, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread

bb.fd:                                            ; preds = %bb.fc
  %i.ajr = shl i64 33, %i.agy
  %i.ajs = add nuw i64 %i.ajr, %i.agz
  %i.ajt = shl i64 %i.ajs, 5
  %i.aju = or disjoint i64 %i.ajt, %i.agv
  %i.ajv = trunc i64 %i.aju to i32
  %i.ajw = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.agv
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.ajw, i64 12 ; 2 uses
  %i.ajy = load i32, ptr %i.ajx, align 4, !tbaa !3
  %i.ajz = tail call noundef i32 @llvm.umin.i32(i32 %i.ajy, i32 %i.ajv)
  store i32 %i.ajz, ptr %i.ajx, align 4, !tbaa !3
  br label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread

bb.fe:                                            ; preds = %bb.fb
  %i.aka = shl i64 71, %i.agy
  %i.akb = add nuw i64 %i.aka, %i.agz
  %i.akc = shl i64 %i.akb, 5
  %i.akd = or disjoint i64 %i.akc, %i.agv
  %i.ake = trunc i64 %i.akd to i32
  %i.akf = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ain ; 2 uses
  %i.akg = load i32, ptr %i.akf, align 4, !tbaa !3
  %i.akh = tail call noundef i32 @llvm.umin.i32(i32 %i.akg, i32 %i.ake)
  store i32 %i.akh, ptr %i.akf, align 4, !tbaa !3
  %i.aki = getelementptr inbounds nuw i8, ptr %i.aio, i64 1
  %i.akj = load i8, ptr %i.aki, align 1, !tbaa !24
  %i.akk = icmp eq i8 %i.akj, 32
  br i1 %i.akk, label %bb.ff, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread

bb.ff:                                            ; preds = %bb.fe
  %i.akl = shl i64 52, %i.agy
  %i.akm = add nuw i64 %i.akl, %i.agz
  %i.akn = shl i64 %i.akm, 5
  %i.ako = or disjoint i64 %i.akn, %i.agv
  %i.akp = trunc i64 %i.ako to i32
  %i.akq = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.agv
  %i.akr = getelementptr inbounds nuw i8, ptr %i.akq, i64 12 ; 2 uses
  %i.aks = load i32, ptr %i.akr, align 4, !tbaa !3
  %i.akt = tail call noundef i32 @llvm.umin.i32(i32 %i.aks, i32 %i.akp)
  store i32 %i.akt, ptr %i.akr, align 4, !tbaa !3
  br label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread

bb.fg:                                            ; preds = %bb.fb
  %i.aku = getelementptr inbounds nuw i8, ptr %i.aio, i64 1
  %i.akv = load i8, ptr %i.aku, align 1, !tbaa !24
  switch i8 %i.akv, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread [
    i8 34, label %bb.fh
    i8 39, label %bb.fi
  ]

bb.fh:                                            ; preds = %bb.fg
  %i.akw = shl i64 81, %i.agy
  %i.akx = add nuw i64 %i.akw, %i.agz
  %i.aky = shl i64 %i.akx, 5
  %i.akz = or disjoint i64 %i.aky, %i.agv
  %i.ala = trunc i64 %i.akz to i32
  %i.alb = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.agv
  %i.alc = getelementptr inbounds nuw i8, ptr %i.alb, i64 12 ; 2 uses
  %i.ald = load i32, ptr %i.alc, align 4, !tbaa !3
  %i.ale = tail call noundef i32 @llvm.umin.i32(i32 %i.ald, i32 %i.ala)
  store i32 %i.ale, ptr %i.alc, align 4, !tbaa !3
  br label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread

bb.fi:                                            ; preds = %bb.fg
  %i.alf = shl i64 98, %i.agy
  %i.alg = add nuw i64 %i.alf, %i.agz
  %i.alh = shl i64 %i.alg, 5
  %i.ali = or disjoint i64 %i.alh, %i.agv
  %i.alj = trunc i64 %i.ali to i32
  %i.alk = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.agv
  %i.all = getelementptr inbounds nuw i8, ptr %i.alk, i64 12 ; 2 uses
  %i.alm = load i32, ptr %i.all, align 4, !tbaa !3
  %i.aln = tail call noundef i32 @llvm.umin.i32(i32 %i.alm, i32 %i.alj)
  store i32 %i.aln, ptr %i.all, align 4, !tbaa !3
  br label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread

bb.fj:                                            ; preds = %bb.er
  br i1 %i.aga, label %bb.fk, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread

bb.fk:                                            ; preds = %bb.fj
  %.not810 = icmp eq i8 %.sroa.8160.0.copyload, 10 ; 8 uses
  %.sroa.0155.0.insert.ext = zext nneg i8 %i.agu to i32 ; 2 uses
  %i.alo = icmp ult i64 %i.agl, %i.agv
  br i1 %i.alo, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %.sroa.10.0.insert.ext = zext i16 %.sroa.10.0.copyload to i32
  %i.alp = getelementptr inbounds nuw [4 x i8], ptr %i.agm, i64 %i.agv
  %i.alq = load i32, ptr %i.alp, align 4, !tbaa !3
  %i.alr = zext i32 %i.alq to i64
  %narrow.i832 = mul nuw nsw i32 %.sroa.10.0.insert.ext, %.sroa.0155.0.insert.ext
  %i.als = zext nneg i32 %narrow.i832 to i64
  %i.alt = load ptr, ptr %i.agn, align 8, !tbaa !32
  %i.alu = getelementptr inbounds nuw i8, ptr %i.alt, i64 %i.alr
  %i.alv = getelementptr inbounds nuw i8, ptr %i.alu, i64 %i.als ; 3 uses
  %cond1458 = icmp eq i8 %.sroa.8160.0.copyload, 10
  br i1 %cond1458, label %bb.fm, label %.preheader1132

.preheader1132:                                   ; preds = %bb.fl
  %.not1317 = icmp eq i8 %i.agu, 0
  br i1 %.not1317, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit839.thread1075, label %.lr.ph1252

bb.fm:                                            ; preds = %bb.fl
  %i.alw = load i8, ptr %i.alv, align 1, !tbaa !24 ; 2 uses
  %i.alx = add i8 %i.alw, -97
  %or.cond.i833 = icmp ult i8 %i.alx, 26
  br i1 %or.cond.i833, label %bb.fn, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread

bb.fn:                                            ; preds = %bb.fm
  %i.aly = load i8, ptr %i.agb, align 1, !tbaa !24
  %i.alz = xor i8 %i.aly, %i.alw
  %i.ama = icmp eq i8 %i.alz, 32
  br i1 %i.ama, label %bb.fo, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread

bb.fo:                                            ; preds = %bb.fn
  %i.amb = getelementptr inbounds nuw i8, ptr %i.alv, i64 1 ; 4 uses
  %i.amc = add nsw i32 %.sroa.0155.0.insert.ext, -1 ; 2 uses
  %i.amd = zext i32 %i.amc to i64                 ; 3 uses
  %i.ame = icmp ugt i32 %i.amc, 7
  br i1 %i.ame, label %.lr.ph1224, label %.preheader1135

.preheader1135:                                   ; preds = %bb.fq, %bb.fo
  %.027.i923.lcssa = phi i64 [ %i.amd, %bb.fo ], [ %i.amo, %bb.fq ] ; 3 uses
  %.025.i924.lcssa = phi ptr [ %i.ago, %bb.fo ], [ %i.amm, %bb.fq ]
  %.022.i925.lcssa = phi ptr [ %i.amb, %bb.fo ], [ %i.amn, %bb.fq ] ; 3 uses
  %.not.i9301228 = icmp eq i64 %.027.i923.lcssa, 0
  br i1 %.not.i9301228, label %.critedge.i931, label %.lr.ph1232.preheader

.lr.ph1232.preheader:                             ; preds = %.preheader1135
  %scevgep1367 = getelementptr i8, ptr %.022.i925.lcssa, i64 %.027.i923.lcssa
  br label %.lr.ph1232

.lr.ph1224:                                       ; preds = %bb.fo, %bb.fq
  %.022.i9251222 = phi ptr [ %i.amn, %bb.fq ], [ %i.amb, %bb.fo ] ; 3 uses
  %.025.i9241221 = phi ptr [ %i.amm, %bb.fq ], [ %i.ago, %bb.fo ] ; 2 uses
  %.027.i9231220 = phi i64 [ %i.amo, %bb.fq ], [ %i.amd, %bb.fo ]
  %.0.copyload.i1018 = load i64, ptr %.025.i9241221, align 1 ; 2 uses
  %.0.copyload.i1017 = load i64, ptr %.022.i9251222, align 1 ; 2 uses
  %.not30.i933 = icmp eq i64 %.0.copyload.i1018, %.0.copyload.i1017
  br i1 %.not30.i933, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %.lr.ph1224
  %i.amf = xor i64 %.0.copyload.i1017, %.0.copyload.i1018
  %i.amg = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.amf, i1 true)
  %i.amh = ptrtoint ptr %.022.i9251222 to i64
  %i.ami = ptrtoint ptr %i.amb to i64
  %i.amj = sub i64 %i.amh, %i.ami
  %i.amk = lshr i64 %i.amg, 3
  %i.aml = add i64 %i.amj, %i.amk
  br label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit839

bb.fq:                                            ; preds = %.lr.ph1224
  %i.amm = getelementptr inbounds nuw i8, ptr %.025.i9241221, i64 8 ; 2 uses
  %i.amn = getelementptr inbounds nuw i8, ptr %.022.i9251222, i64 8 ; 2 uses
  %i.amo = add i64 %.027.i9231220, -8             ; 3 uses
  %i.amp = icmp ugt i64 %i.amo, 7
  br i1 %i.amp, label %.lr.ph1224, label %.preheader1135, !llvm.loop !34

.lr.ph1232:                                       ; preds = %.lr.ph1232.preheader, %bb.fr
  %.224.i9291231 = phi ptr [ %i.amv, %bb.fr ], [ %.022.i925.lcssa, %.lr.ph1232.preheader ] ; 3 uses
  %.126.i9281230 = phi ptr [ %i.amu, %bb.fr ], [ %.025.i924.lcssa, %.lr.ph1232.preheader ] ; 2 uses
  %.128.i9271229 = phi i64 [ %i.amt, %bb.fr ], [ %.027.i923.lcssa, %.lr.ph1232.preheader ]
  %i.amq = load i8, ptr %.224.i9291231, align 1, !tbaa !24
  %i.amr = load i8, ptr %.126.i9281230, align 1, !tbaa !24
  %i.ams = icmp eq i8 %i.amq, %i.amr
  br i1 %i.ams, label %bb.fr, label %.critedge.i931

bb.fr:                                            ; preds = %.lr.ph1232
  %i.amt = add nsw i64 %.128.i9271229, -1         ; 2 uses
  %i.amu = getelementptr inbounds nuw i8, ptr %.126.i9281230, i64 1
  %i.amv = getelementptr inbounds nuw i8, ptr %.224.i9291231, i64 1
  %.not.i930 = icmp eq i64 %i.amt, 0
  br i1 %.not.i930, label %.critedge.i931, label %.lr.ph1232, !llvm.loop !35

.critedge.i931:                                   ; preds = %bb.fr, %.lr.ph1232, %.preheader1135
  %.224.i929.lcssa = phi ptr [ %.022.i925.lcssa, %.preheader1135 ], [ %.224.i9291231, %.lr.ph1232 ], [ %scevgep1367, %bb.fr ]
  %i.amw = ptrtoint ptr %.224.i929.lcssa to i64
  %i.amx = ptrtoint ptr %i.amb to i64
  %i.amy = sub i64 %i.amw, %i.amx
  br label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit839

.lr.ph1252:                                       ; preds = %.preheader1132, %bb.fu
  %.0.i8351251 = phi i64 [ %i.anf, %bb.fu ], [ 0, %.preheader1132 ] ; 3 uses
  %i.amz = getelementptr inbounds nuw i8, ptr %i.alv, i64 %.0.i8351251
  %i.ana = load i8, ptr %i.amz, align 1, !tbaa !24 ; 3 uses
  %i.anb = add i8 %i.ana, -97
  %or.cond40.i836 = icmp ult i8 %i.anb, 26
  %i.anc = getelementptr inbounds nuw i8, ptr %i.agb, i64 %.0.i8351251
  %i.and = load i8, ptr %i.anc, align 1, !tbaa !24 ; 2 uses
  br i1 %or.cond40.i836, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %.lr.ph1252
  %i.ane = xor i8 %i.and, %i.ana
  %.not39.i838 = icmp eq i8 %i.ane, 32
  br i1 %.not39.i838, label %bb.fu, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread

bb.ft:                                            ; preds = %.lr.ph1252
  %.not.i837 = icmp eq i8 %i.ana, %i.and
  br i1 %.not.i837, label %bb.fu, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread

bb.fu:                                            ; preds = %bb.ft, %bb.fs
  %i.anf = add nuw nsw i64 %.0.i8351251, 1        ; 2 uses
  %exitcond1369.not = icmp eq i64 %i.anf, %i.agv
  br i1 %exitcond1369.not, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit839.thread1075, label %.lr.ph1252, !llvm.loop !42

_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit839: ; preds = %.critedge.i931, %bb.fp
  %.2.i932 = phi i64 [ %i.aml, %bb.fp ], [ %i.amy, %.critedge.i931 ]
  %i.ang = icmp eq i64 %.2.i932, %i.amd
  br i1 %i.ang, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit839.thread1075, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread, !llvm.loop !43

_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit839.thread1075: ; preds = %bb.fu, %.preheader1132, %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit839
  %i.anh = select i1 %.not810, i64 30, i64 85
  %i.ani = shl i64 %i.anh, %i.agy
  %i.anj = add i64 %i.ani, %i.agz
  %i.ank = add nuw nsw i64 %i.agv, 1              ; 2 uses
  %i.anl = shl i64 %i.anj, 5
  %i.anm = or disjoint i64 %i.anl, %i.agv
  %i.ann = trunc i64 %i.anm to i32
  %i.ano = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ank ; 2 uses
  %i.anp = load i32, ptr %i.ano, align 4, !tbaa !3
  %i.anq = tail call noundef i32 @llvm.umin.i32(i32 %i.anp, i32 %i.ann)
  store i32 %i.anq, ptr %i.ano, align 4, !tbaa !3
  %i.anr = add nuw nsw i64 %i.agv, 2              ; 4 uses
  %.not812 = icmp ult i64 %i.anr, %3
  br i1 %.not812, label %bb.fv, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread, !llvm.loop !43

bb.fv:                                            ; preds = %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit839.thread1075
  %i.ans = getelementptr inbounds nuw i8, ptr %1, i64 %i.ank ; 4 uses
  %i.ant = load i8, ptr %i.ans, align 1, !tbaa !24
  switch i8 %i.ant, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread [
    i8 32, label %bb.fw
    i8 44, label %bb.fx
    i8 46, label %bb.gb
    i8 61, label %bb.gd
  ]

bb.fw:                                            ; preds = %bb.fv
  %i.anu = select i1 %.not810, i64 15, i64 83
  %i.anv = shl i64 %i.anu, %i.agy
  %i.anw = add i64 %i.anv, %i.agz
  %i.anx = shl i64 %i.anw, 5
  %i.any = or disjoint i64 %i.anx, %i.agv
  %i.anz = trunc i64 %i.any to i32
  %i.aoa = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.anr ; 2 uses
  %i.aob = load i32, ptr %i.aoa, align 4, !tbaa !3
  %i.aoc = tail call noundef i32 @llvm.umin.i32(i32 %i.aob, i32 %i.anz)
  store i32 %i.aoc, ptr %i.aoa, align 4, !tbaa !3
  br label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread

bb.fx:                                            ; preds = %bb.fv
  br i1 %.not810, label %bb.fy, label %bb.fz

bb.fy:                                            ; preds = %bb.fx
  %i.aod = shl i64 109, %i.agy
  %i.aoe = add nuw i64 %i.aod, %i.agz
  %i.aof = shl i64 %i.aoe, 5
  %i.aog = or disjoint i64 %i.aof, %i.agv
  %i.aoh = trunc i64 %i.aog to i32
  %i.aoi = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.anr ; 2 uses
  %i.aoj = load i32, ptr %i.aoi, align 4, !tbaa !3
  %i.aok = tail call noundef i32 @llvm.umin.i32(i32 %i.aoj, i32 %i.aoh)
  store i32 %i.aok, ptr %i.aoi, align 4, !tbaa !3
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %bb.fx
  %i.aol = getelementptr inbounds nuw i8, ptr %i.ans, i64 1
  %i.aom = load i8, ptr %i.aol, align 1, !tbaa !24
  %i.aon = icmp eq i8 %i.aom, 32
  br i1 %i.aon, label %bb.ga, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread

bb.ga:                                            ; preds = %bb.fz
  %i.aoo = select i1 %.not810, i64 65, i64 111
  %i.aop = shl i64 %i.aoo, %i.agy
  %i.aoq = add i64 %i.aop, %i.agz
  %i.aor = shl i64 %i.aoq, 5
  %i.aos = or disjoint i64 %i.aor, %i.agv
  %i.aot = trunc i64 %i.aos to i32
  %i.aou = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.agv
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aou, i64 12 ; 2 uses
  %i.aow = load i32, ptr %i.aov, align 4, !tbaa !3
  %i.aox = tail call noundef i32 @llvm.umin.i32(i32 %i.aow, i32 %i.aot)
  store i32 %i.aox, ptr %i.aov, align 4, !tbaa !3
  br label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread

bb.gb:                                            ; preds = %bb.fv
  %i.aoy = select i1 %.not810, i64 96, i64 115
  %i.aoz = shl i64 %i.aoy, %i.agy
  %i.apa = add i64 %i.aoz, %i.agz
  %i.apb = shl i64 %i.apa, 5
  %i.apc = or disjoint i64 %i.apb, %i.agv
  %i.apd = trunc i64 %i.apc to i32
  %i.ape = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.anr ; 2 uses
  %i.apf = load i32, ptr %i.ape, align 4, !tbaa !3
  %i.apg = tail call noundef i32 @llvm.umin.i32(i32 %i.apf, i32 %i.apd)
  store i32 %i.apg, ptr %i.ape, align 4, !tbaa !3
  %i.aph = getelementptr inbounds nuw i8, ptr %i.ans, i64 1
  %i.api = load i8, ptr %i.aph, align 1, !tbaa !24
  %i.apj = icmp eq i8 %i.api, 32
  br i1 %i.apj, label %bb.gc, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread

bb.gc:                                            ; preds = %bb.gb
  %i.apk = select i1 %.not810, i64 91, i64 117
  %i.apl = shl i64 %i.apk, %i.agy
  %i.apm = add i64 %i.apl, %i.agz
  %i.apn = shl i64 %i.apm, 5
  %i.apo = or disjoint i64 %i.apn, %i.agv
  %i.app = trunc i64 %i.apo to i32
  %i.apq = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.agv
  %i.apr = getelementptr inbounds nuw i8, ptr %i.apq, i64 12 ; 2 uses
  %i.aps = load i32, ptr %i.apr, align 4, !tbaa !3
  %i.apt = tail call noundef i32 @llvm.umin.i32(i32 %i.aps, i32 %i.app)
  store i32 %i.apt, ptr %i.apr, align 4, !tbaa !3
  br label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread

bb.gd:                                            ; preds = %bb.fv
  %i.apu = getelementptr inbounds nuw i8, ptr %i.ans, i64 1
  %i.apv = load i8, ptr %i.apu, align 1, !tbaa !24
  switch i8 %i.apv, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread [
    i8 34, label %bb.ge
    i8 39, label %bb.gf
  ]

bb.ge:                                            ; preds = %bb.gd
  %i.apw = select i1 %.not810, i64 118, i64 110
  %i.apx = shl i64 %i.apw, %i.agy
  %i.apy = add i64 %i.apx, %i.agz
  %i.apz = shl i64 %i.apy, 5
  %i.aqa = or disjoint i64 %i.apz, %i.agv
  %i.aqb = trunc i64 %i.aqa to i32
  %i.aqc = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.agv
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.aqc, i64 12 ; 2 uses
  %i.aqe = load i32, ptr %i.aqd, align 4, !tbaa !3
  %i.aqf = tail call noundef i32 @llvm.umin.i32(i32 %i.aqe, i32 %i.aqb)
  store i32 %i.aqf, ptr %i.aqd, align 4, !tbaa !3
  br label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread

bb.gf:                                            ; preds = %bb.gd
  %i.aqg = select i1 %.not810, i64 120, i64 119
  %i.aqh = shl i64 %i.aqg, %i.agy
  %i.aqi = add i64 %i.aqh, %i.agz
  %i.aqj = shl i64 %i.aqi, 5
  %i.aqk = or disjoint i64 %i.aqj, %i.agv
  %i.aql = trunc i64 %i.aqk to i32
  %i.aqm = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.agv
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.aqm, i64 12 ; 2 uses
  %i.aqo = load i32, ptr %i.aqn, align 4, !tbaa !3
  %i.aqp = tail call noundef i32 @llvm.umin.i32(i32 %i.aqo, i32 %i.aql)
  store i32 %i.aqp, ptr %i.aqn, align 4, !tbaa !3
  br label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread

_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread: ; preds = %bb.fs, %bb.ft, %bb.fn, %bb.fm, %bb.fk, %bb.es, %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit839, %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit839.thread1075, %bb.gd, %bb.fv, %bb.ga, %bb.fz, %bb.gf, %bb.ge, %bb.gb, %bb.gc, %bb.fw, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit894, %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread1060, %bb.fg, %bb.fb, %bb.ez, %bb.fd, %bb.fc, %bb.fi, %bb.fh, %bb.fe, %bb.ff, %bb.fa, %bb.ey, %bb.fj
  %.11 = phi i32 [ 1, %bb.ey ], [ %.71270, %bb.fj ], [ 1, %bb.fa ], [ %.71270, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit894 ], [ 1, %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread1060 ], [ 1, %bb.fg ], [ 1, %bb.fb ], [ 1, %bb.ez ], [ 1, %bb.fd ], [ 1, %bb.fc ], [ 1, %bb.fi ], [ 1, %bb.fh ], [ 1, %bb.fe ], [ 1, %bb.ff ], [ %.71270, %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit839 ], [ 1, %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit839.thread1075 ], [ 1, %bb.gd ], [ 1, %bb.fv ], [ 1, %bb.ga ], [ 1, %bb.fz ], [ 1, %bb.gf ], [ 1, %bb.ge ], [ 1, %bb.gb ], [ 1, %bb.gc ], [ 1, %bb.fw ], [ %.71270, %bb.fn ], [ %.71270, %bb.es ], [ %.71270, %bb.fm ], [ %.71270, %bb.fk ], [ %.71270, %bb.ft ], [ %.71270, %bb.fs ] ; 2 uses
  br i1 %i.aha, label %.loopexit, label %bb.er

.loopexit:                                        ; preds = %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread, %bb.eq, %bb.ep
  %.12 = phi i32 [ %.0.lcssa, %bb.ep ], [ %.0.lcssa, %bb.eq ], [ %.11, %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit850.thread ] ; 5 uses
  %.not1120 = icmp eq i64 %3, 5
  br i1 %.not1120, label %.thread1097, label %bb.gg

bb.gg:                                            ; preds = %.loopexit
  %i.aqq = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 3 uses
  %i.aqr = load i8, ptr %i.aqq, align 1, !tbaa !24 ; 2 uses
  %i.aqs = icmp eq i8 %i.aqr, 32
  %i.aqt = load i8, ptr %1, align 1, !tbaa !24    ; 2 uses
  br i1 %i.aqs, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %bb.gg
  switch i8 %i.aqt, label %.thread1081 [
    i8 101, label %bb.gj
    i8 115, label %bb.gj
    i8 44, label %bb.gj
  ]

bb.gi:                                            ; preds = %bb.gg
  %i.aqu = icmp eq i8 %i.aqt, -62
  %i.aqv = icmp eq i8 %i.aqr, -96
  %or.cond1116 = and i1 %i.aqv, %i.aqu
  br i1 %or.cond1116, label %bb.gj, label %.thread1081

bb.gj:                                            ; preds = %bb.gi, %bb.gh, %bb.gh, %bb.gh
  %i.aqw = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.aqx = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 3 uses
  %.0.copyload.i863 = load i32, ptr %i.aqx, align 1
  %i.aqy = mul i32 %.0.copyload.i863, 506832829
  %i.aqz = lshr i32 %i.aqy, 17
  %i.ara = zext nneg i32 %i.aqz to i64
  %i.arb = getelementptr inbounds nuw [2 x i8], ptr %i.aqw, i64 %i.ara
  %i.arc = load i16, ptr %i.arb, align 2, !tbaa !29 ; 2 uses
  %.not806 = icmp eq i16 %i.arc, 0
  br i1 %.not806, label %.thread1081, label %.lr.ph1293

.lr.ph1293:                                       ; preds = %bb.gj
  %i.ard = zext i16 %i.arc to i64
  %i.are = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.arf = load ptr, ptr %i.are, align 8, !tbaa !31
  %i.arg = load ptr, ptr %0, align 8, !tbaa !23   ; 3 uses
  %i.arh = add i64 %3, -2
  %i.ari = getelementptr inbounds nuw i8, ptr %i.arg, i64 32
  %i.arj = getelementptr inbounds nuw i8, ptr %i.arg, i64 168
  br label %bb.gk

bb.gk:                                            ; preds = %.lr.ph1293, %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit830.thread
  %.131291 = phi i32 [ %.12, %.lr.ph1293 ], [ %.14, %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit830.thread ] ; 4 uses
  %.07621290 = phi i64 [ %i.ard, %.lr.ph1293 ], [ %i.ark, %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit830.thread ] ; 2 uses
  %i.ark = add i64 %.07621290, 1
  %i.arl = getelementptr inbounds nuw [4 x i8], ptr %i.arf, i64 %.07621290 ; 3 uses
  %.sroa.047.0.copyload = load i8, ptr %i.arl, align 2, !tbaa !24 ; 2 uses
  %.sroa.749.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.arl, i64 1
  %.sroa.749.0.copyload = load i8, ptr %.sroa.749.0..sroa_idx, align 1, !tbaa !24
  %.sroa.850.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.arl, i64 2
  %.sroa.850.0.copyload = load i16, ptr %.sroa.850.0..sroa_idx, align 2, !tbaa !29
  %i.arm = and i8 %.sroa.047.0.copyload, 31       ; 2 uses
  %i.arn = zext nneg i8 %i.arm to i64             ; 10 uses
  %i.aro = getelementptr inbounds nuw i8, ptr %i.arg, i64 %i.arn
  %i.arp = load i8, ptr %i.aro, align 1, !tbaa !24
  %i.arq = zext nneg i8 %i.arp to i64
  %i.arr = zext i16 %.sroa.850.0.copyload to i64  ; 2 uses
  %i.ars = icmp slt i8 %.sroa.047.0.copyload, 0
  %i.art = icmp ne i8 %.sroa.749.0.copyload, 0
  %i.aru = icmp ult i64 %i.arh, %i.arn
  %or.cond1459 = or i1 %i.art, %i.aru
  br i1 %or.cond1459, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit830.thread, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.arv = getelementptr inbounds nuw [4 x i8], ptr %i.ari, i64 %i.arn
  %i.arw = load i32, ptr %i.arv, align 4, !tbaa !3
  %i.arx = zext i32 %i.arw to i64
  %narrow.i823 = mul nuw nsw i64 %i.arr, %i.arn
  %i.ary = load ptr, ptr %i.arj, align 8, !tbaa !32
  %i.arz = getelementptr inbounds nuw i8, ptr %i.ary, i64 %i.arx
  %i.asa = getelementptr inbounds nuw i8, ptr %i.arz, i64 %narrow.i823 ; 4 uses
  %i.asb = icmp samesign ugt i8 %i.arm, 7
  br i1 %i.asb, label %.lr.ph1278, label %.preheader1130

.preheader1130:                                   ; preds = %bb.gn, %bb.gl
  %.027.i937.lcssa = phi i64 [ %i.arn, %bb.gl ], [ %i.asl, %bb.gn ] ; 3 uses
  %.025.i938.lcssa = phi ptr [ %i.aqx, %bb.gl ], [ %i.asj, %bb.gn ]
  %.022.i939.lcssa = phi ptr [ %i.asa, %bb.gl ], [ %i.ask, %bb.gn ] ; 3 uses
  %.not.i9441282 = icmp eq i64 %.027.i937.lcssa, 0
  br i1 %.not.i9441282, label %.critedge.i945, label %.lr.ph1286.preheader

.lr.ph1286.preheader:                             ; preds = %.preheader1130
  %scevgep1371 = getelementptr i8, ptr %.022.i939.lcssa, i64 %.027.i937.lcssa
  br label %.lr.ph1286

.lr.ph1278:                                       ; preds = %bb.gl, %bb.gn
  %.022.i9391276 = phi ptr [ %i.ask, %bb.gn ], [ %i.asa, %bb.gl ] ; 3 uses
  %.025.i9381275 = phi ptr [ %i.asj, %bb.gn ], [ %i.aqx, %bb.gl ] ; 2 uses
  %.027.i9371274 = phi i64 [ %i.asl, %bb.gn ], [ %i.arn, %bb.gl ]
  %.0.copyload.i1016 = load i64, ptr %.025.i9381275, align 1 ; 2 uses
  %.0.copyload.i1015 = load i64, ptr %.022.i9391276, align 1 ; 2 uses
  %.not30.i947 = icmp eq i64 %.0.copyload.i1016, %.0.copyload.i1015
  br i1 %.not30.i947, label %bb.gn, label %bb.gm

bb.gm:                                            ; preds = %.lr.ph1278
  %i.asc = xor i64 %.0.copyload.i1015, %.0.copyload.i1016
  %i.asd = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.asc, i1 true)
  %i.ase = ptrtoint ptr %.022.i9391276 to i64
  %i.asf = ptrtoint ptr %i.asa to i64
  %i.asg = sub i64 %i.ase, %i.asf
  %i.ash = lshr i64 %i.asd, 3
  %i.asi = add i64 %i.asg, %i.ash
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit950

bb.gn:                                            ; preds = %.lr.ph1278
  %i.asj = getelementptr inbounds nuw i8, ptr %.025.i9381275, i64 8 ; 2 uses
  %i.ask = getelementptr inbounds nuw i8, ptr %.022.i9391276, i64 8 ; 2 uses
  %i.asl = add i64 %.027.i9371274, -8             ; 3 uses
  %i.asm = icmp ugt i64 %i.asl, 7
  br i1 %i.asm, label %.lr.ph1278, label %.preheader1130, !llvm.loop !34

.lr.ph1286:                                       ; preds = %.lr.ph1286.preheader, %bb.go
  %.224.i9431285 = phi ptr [ %i.ass, %bb.go ], [ %.022.i939.lcssa, %.lr.ph1286.preheader ] ; 3 uses
  %.126.i9421284 = phi ptr [ %i.asr, %bb.go ], [ %.025.i938.lcssa, %.lr.ph1286.preheader ] ; 2 uses
  %.128.i9411283 = phi i64 [ %i.asq, %bb.go ], [ %.027.i937.lcssa, %.lr.ph1286.preheader ]
  %i.asn = load i8, ptr %.224.i9431285, align 1, !tbaa !24
  %i.aso = load i8, ptr %.126.i9421284, align 1, !tbaa !24
  %i.asp = icmp eq i8 %i.asn, %i.aso
  br i1 %i.asp, label %bb.go, label %.critedge.i945

bb.go:                                            ; preds = %.lr.ph1286
  %i.asq = add nsw i64 %.128.i9411283, -1         ; 2 uses
  %i.asr = getelementptr inbounds nuw i8, ptr %.126.i9421284, i64 1
  %i.ass = getelementptr inbounds nuw i8, ptr %.224.i9431285, i64 1
  %.not.i944 = icmp eq i64 %i.asq, 0
  br i1 %.not.i944, label %.critedge.i945, label %.lr.ph1286, !llvm.loop !35

.critedge.i945:                                   ; preds = %bb.go, %.lr.ph1286, %.preheader1130
  %.224.i943.lcssa = phi ptr [ %.022.i939.lcssa, %.preheader1130 ], [ %.224.i9431285, %.lr.ph1286 ], [ %scevgep1371, %bb.go ]
  %i.ast = ptrtoint ptr %.224.i943.lcssa to i64
  %i.asu = ptrtoint ptr %i.asa to i64
  %i.asv = sub i64 %i.ast, %i.asu
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit950

_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit950: ; preds = %bb.gm, %.critedge.i945
  %.2.i946 = phi i64 [ %i.asi, %bb.gm ], [ %i.asv, %.critedge.i945 ]
  %.not1121 = icmp eq i64 %.2.i946, %i.arn
  br i1 %.not1121, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit830.thread1094, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit830.thread

_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit830.thread1094: ; preds = %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit950
  %i.asw = load i8, ptr %1, align 1, !tbaa !24    ; 3 uses
  %i.asx = icmp eq i8 %i.asw, -62
  br i1 %i.asx, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit830.thread.sink.split, label %bb.gp

bb.gp:                                            ; preds = %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit830.thread1094
  %i.asy = add nuw nsw i64 %i.arn, 2              ; 2 uses
  %i.asz = icmp ult i64 %i.asy, %3
  br i1 %i.asz, label %bb.gq, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit830.thread

bb.gq:                                            ; preds = %bb.gp
  %i.ata = getelementptr inbounds nuw i8, ptr %1, i64 %i.asy
  %i.atb = load i8, ptr %i.ata, align 1, !tbaa !24
  %i.atc = icmp eq i8 %i.atb, 32
  br i1 %i.atc, label %bb.gr, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit830.thread

bb.gr:                                            ; preds = %bb.gq
  %i.atd = icmp eq i8 %i.asw, 101
  %i.ate = icmp eq i8 %i.asw, 115
  %i.atf = select i1 %i.ate, i64 7, i64 13
  %i.atg = select i1 %i.atd, i64 18, i64 %i.atf
  br label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit830.thread.sink.split

_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit830.thread.sink.split: ; preds = %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit830.thread1094, %bb.gr
  %.sink = phi i64 [ %i.atg, %bb.gr ], [ 102, %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit830.thread1094 ]
  %.sink1464 = phi i64 [ 12, %bb.gr ], [ 8, %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit830.thread1094 ]
  %i.ath = shl i64 %.sink, %i.arq
  %i.ati = add i64 %i.ath, %i.arr
  %i.atj = shl i64 %i.ati, 5
  %i.atk = or disjoint i64 %i.atj, %i.arn
  %i.atl = trunc i64 %i.atk to i32
  %i.atm = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.arn
  %i.atn = getelementptr inbounds nuw i8, ptr %i.atm, i64 %.sink1464 ; 2 uses
  %i.ato = load i32, ptr %i.atn, align 4, !tbaa !3
  %i.atp = tail call noundef i32 @llvm.umin.i32(i32 %i.ato, i32 %i.atl)
  store i32 %i.atp, ptr %i.atn, align 4, !tbaa !3
  br label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit830.thread

_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit830.thread: ; preds = %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit830.thread.sink.split, %bb.gq, %bb.gp, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit950, %bb.gk
  %.14 = phi i32 [ %.131291, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit950 ], [ %.131291, %bb.gk ], [ %.131291, %bb.gq ], [ %.131291, %bb.gp ], [ 1, %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit830.thread.sink.split ] ; 2 uses
  br i1 %i.ars, label %.thread1081, label %bb.gk, !llvm.loop !44

.thread1081:                                      ; preds = %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit830.thread, %bb.gj, %bb.gh, %bb.gi
  %.15 = phi i32 [ %.12, %bb.gi ], [ %.12, %bb.gh ], [ %.12, %bb.gj ], [ %.14, %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit830.thread ] ; 12 uses
  %i.atq = icmp ugt i64 %3, 8
  br i1 %i.atq, label %bb.gs, label %.thread1097

bb.gs:                                            ; preds = %.thread1081
  %i.atr = load i8, ptr %1, align 1, !tbaa !24
  switch i8 %i.atr, label %.thread1097 [
    i8 32, label %bb.gt
    i8 46, label %bb.gx
  ]

bb.gt:                                            ; preds = %bb.gs
  %i.ats = load i8, ptr %i.aqq, align 1, !tbaa !24
  %i.att = icmp eq i8 %i.ats, 116
  br i1 %i.att, label %bb.gu, label %.thread1097

bb.gu:                                            ; preds = %bb.gt
  %i.atu = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.atv = load i8, ptr %i.atu, align 1, !tbaa !24
  %i.atw = icmp eq i8 %i.atv, 104
  br i1 %i.atw, label %bb.gv, label %.thread1097

bb.gv:                                            ; preds = %bb.gu
  %i.atx = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.aty = load i8, ptr %i.atx, align 1, !tbaa !24
  %i.atz = icmp eq i8 %i.aty, 101
  br i1 %i.atz, label %bb.gw, label %.thread1097

bb.gw:                                            ; preds = %bb.gv
  %i.aua = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aub = load i8, ptr %i.aua, align 1, !tbaa !24
  %i.auc = icmp eq i8 %i.aub, 32
  br i1 %i.auc, label %bb.hb, label %.thread1097

bb.gx:                                            ; preds = %bb.gs
  %i.aud = load i8, ptr %i.aqq, align 1, !tbaa !24
  %i.aue = icmp eq i8 %i.aud, 99
  br i1 %i.aue, label %bb.gy, label %.thread1097

bb.gy:                                            ; preds = %bb.gx
  %i.auf = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.aug = load i8, ptr %i.auf, align 1, !tbaa !24
  %i.auh = icmp eq i8 %i.aug, 111
  br i1 %i.auh, label %bb.gz, label %.thread1097

bb.gz:                                            ; preds = %bb.gy
  %i.aui = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.auj = load i8, ptr %i.aui, align 1, !tbaa !24
  %i.auk = icmp eq i8 %i.auj, 109
  br i1 %i.auk, label %bb.ha, label %.thread1097

bb.ha:                                            ; preds = %bb.gz
  %i.aul = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aum = load i8, ptr %i.aul, align 1, !tbaa !24
  %i.aun = icmp eq i8 %i.aum, 47
  br i1 %i.aun, label %bb.hb, label %.thread1097

bb.hb:                                            ; preds = %bb.ha, %bb.gw
  %i.auo = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.aup = getelementptr inbounds nuw i8, ptr %1, i64 5 ; 3 uses
  %.0.copyload.i864 = load i32, ptr %i.aup, align 1
  %i.auq = mul i32 %.0.copyload.i864, 506832829
  %i.aur = lshr i32 %i.auq, 17
  %i.aus = zext nneg i32 %i.aur to i64
  %i.aut = getelementptr inbounds nuw [2 x i8], ptr %i.auo, i64 %i.aus
  %i.auu = load i16, ptr %i.aut, align 2, !tbaa !29 ; 2 uses
  %.not807 = icmp eq i16 %i.auu, 0
  br i1 %.not807, label %.thread1097, label %.lr.ph1314

.lr.ph1314:                                       ; preds = %bb.hb
  %i.auv = zext i16 %i.auu to i64
  %i.auw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aux = load ptr, ptr %i.auw, align 8, !tbaa !31
  %i.auy = load ptr, ptr %0, align 8, !tbaa !23   ; 3 uses
  %i.auz = add i64 %3, -5
  %i.ava = getelementptr inbounds nuw i8, ptr %i.auy, i64 32
  %i.avb = getelementptr inbounds nuw i8, ptr %i.auy, i64 168
  br label %bb.hc

bb.hc:                                            ; preds = %.lr.ph1314, %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit.thread
  %.161312 = phi i32 [ %.15, %.lr.ph1314 ], [ %.17, %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit.thread ] ; 2 uses
  %.07591311 = phi i64 [ %i.auv, %.lr.ph1314 ], [ %i.avc, %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit.thread ] ; 2 uses
  %i.avc = add i64 %.07591311, 1
  %i.avd = getelementptr inbounds nuw [4 x i8], ptr %i.aux, i64 %.07591311 ; 3 uses
  %.sroa.028.0.copyload = load i8, ptr %i.avd, align 2, !tbaa !24 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.avd, i64 1
  %.sroa.7.0.copyload = load i8, ptr %.sroa.7.0..sroa_idx, align 1, !tbaa !24
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.avd, i64 2
  %.sroa.8.0.copyload = load i16, ptr %.sroa.8.0..sroa_idx, align 2, !tbaa !29
  %i.ave = and i8 %.sroa.028.0.copyload, 31       ; 2 uses
  %i.avf = zext nneg i8 %i.ave to i64             ; 14 uses
  %i.avg = getelementptr inbounds nuw i8, ptr %i.auy, i64 %i.avf
  %i.avh = load i8, ptr %i.avg, align 1, !tbaa !24
  %i.avi = zext nneg i8 %i.avh to i64             ; 3 uses
  %i.avj = zext i16 %.sroa.8.0.copyload to i64    ; 4 uses
  %i.avk = icmp slt i8 %.sroa.028.0.copyload, 0
  %i.avl = icmp ne i8 %.sroa.7.0.copyload, 0
  %i.avm = icmp ult i64 %i.auz, %i.avf
  %or.cond1467 = or i1 %i.avl, %i.avm
  br i1 %or.cond1467, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit.thread, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.avn = getelementptr inbounds nuw [4 x i8], ptr %i.ava, i64 %i.avf
  %i.avo = load i32, ptr %i.avn, align 4, !tbaa !3
  %i.avp = zext i32 %i.avo to i64
  %narrow.i = mul nuw nsw i64 %i.avj, %i.avf
  %i.avq = load ptr, ptr %i.avb, align 8, !tbaa !32
  %i.avr = getelementptr inbounds nuw i8, ptr %i.avq, i64 %i.avp
  %i.avs = getelementptr inbounds nuw i8, ptr %i.avr, i64 %narrow.i ; 4 uses
  %i.avt = icmp samesign ugt i8 %i.ave, 7
  br i1 %i.avt, label %.lr.ph1299, label %.preheader

.preheader:                                       ; preds = %bb.hf, %bb.hd
  %.027.i965.lcssa = phi i64 [ %i.avf, %bb.hd ], [ %i.awd, %bb.hf ] ; 3 uses
  %.025.i966.lcssa = phi ptr [ %i.aup, %bb.hd ], [ %i.awb, %bb.hf ]
  %.022.i967.lcssa = phi ptr [ %i.avs, %bb.hd ], [ %i.awc, %bb.hf ] ; 3 uses
  %.not.i9721303 = icmp eq i64 %.027.i965.lcssa, 0
  br i1 %.not.i9721303, label %.critedge.i973, label %.lr.ph1307.preheader

.lr.ph1307.preheader:                             ; preds = %.preheader
  %scevgep1372 = getelementptr i8, ptr %.022.i967.lcssa, i64 %.027.i965.lcssa
  br label %.lr.ph1307

.lr.ph1299:                                       ; preds = %bb.hd, %bb.hf
  %.022.i9671297 = phi ptr [ %i.awc, %bb.hf ], [ %i.avs, %bb.hd ] ; 3 uses
  %.025.i9661296 = phi ptr [ %i.awb, %bb.hf ], [ %i.aup, %bb.hd ] ; 2 uses
  %.027.i9651295 = phi i64 [ %i.awd, %bb.hf ], [ %i.avf, %bb.hd ]
  %.0.copyload.i1012 = load i64, ptr %.025.i9661296, align 1 ; 2 uses
  %.0.copyload.i1011 = load i64, ptr %.022.i9671297, align 1 ; 2 uses
  %.not30.i975 = icmp eq i64 %.0.copyload.i1012, %.0.copyload.i1011
  br i1 %.not30.i975, label %bb.hf, label %bb.he

bb.he:                                            ; preds = %.lr.ph1299
  %i.avu = xor i64 %.0.copyload.i1011, %.0.copyload.i1012
  %i.avv = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.avu, i1 true)
  %i.avw = ptrtoint ptr %.022.i9671297 to i64
  %i.avx = ptrtoint ptr %i.avs to i64
  %i.avy = sub i64 %i.avw, %i.avx
  %i.avz = lshr i64 %i.avv, 3
  %i.awa = add i64 %i.avy, %i.avz
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit978

bb.hf:                                            ; preds = %.lr.ph1299
  %i.awb = getelementptr inbounds nuw i8, ptr %.025.i9661296, i64 8 ; 2 uses
  %i.awc = getelementptr inbounds nuw i8, ptr %.022.i9671297, i64 8 ; 2 uses
  %i.awd = add i64 %.027.i9651295, -8             ; 3 uses
  %i.awe = icmp ugt i64 %i.awd, 7
  br i1 %i.awe, label %.lr.ph1299, label %.preheader, !llvm.loop !34

.lr.ph1307:                                       ; preds = %.lr.ph1307.preheader, %bb.hg
  %.224.i9711306 = phi ptr [ %i.awk, %bb.hg ], [ %.022.i967.lcssa, %.lr.ph1307.preheader ] ; 3 uses
  %.126.i9701305 = phi ptr [ %i.awj, %bb.hg ], [ %.025.i966.lcssa, %.lr.ph1307.preheader ] ; 2 uses
  %.128.i9691304 = phi i64 [ %i.awi, %bb.hg ], [ %.027.i965.lcssa, %.lr.ph1307.preheader ]
  %i.awf = load i8, ptr %.224.i9711306, align 1, !tbaa !24
  %i.awg = load i8, ptr %.126.i9701305, align 1, !tbaa !24
  %i.awh = icmp eq i8 %i.awf, %i.awg
  br i1 %i.awh, label %bb.hg, label %.critedge.i973

bb.hg:                                            ; preds = %.lr.ph1307
  %i.awi = add nsw i64 %.128.i9691304, -1         ; 2 uses
  %i.awj = getelementptr inbounds nuw i8, ptr %.126.i9701305, i64 1
  %i.awk = getelementptr inbounds nuw i8, ptr %.224.i9711306, i64 1
  %.not.i972 = icmp eq i64 %i.awi, 0
  br i1 %.not.i972, label %.critedge.i973, label %.lr.ph1307, !llvm.loop !35

.critedge.i973:                                   ; preds = %bb.hg, %.lr.ph1307, %.preheader
  %.224.i971.lcssa = phi ptr [ %.022.i967.lcssa, %.preheader ], [ %.224.i9711306, %.lr.ph1307 ], [ %scevgep1372, %bb.hg ]
  %i.awl = ptrtoint ptr %.224.i971.lcssa to i64
  %i.awm = ptrtoint ptr %i.avs to i64
  %i.awn = sub i64 %i.awl, %i.awm
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit978

_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit978: ; preds = %bb.he, %.critedge.i973
  %.2.i974 = phi i64 [ %i.awa, %bb.he ], [ %i.awn, %.critedge.i973 ]
  %.not1122 = icmp eq i64 %.2.i974, %i.avf
  br i1 %.not1122, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit.thread1113, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit.thread

_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit.thread1113: ; preds = %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit978
  %i.awo = load i8, ptr %1, align 1, !tbaa !24
  %i.awp = icmp eq i8 %i.awo, 32
  %i.awq = select i1 %i.awp, i64 41, i64 72
  %i.awr = shl i64 %i.awq, %i.avi
  %i.aws = add i64 %i.awr, %i.avj
  %i.awt = add nuw nsw i64 %i.avf, 5              ; 3 uses
  %i.awu = shl i64 %i.aws, 5
  %i.awv = or disjoint i64 %i.awu, %i.avf
  %i.aww = trunc i64 %i.awv to i32
  %i.awx = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.awt ; 2 uses
  %i.awy = load i32, ptr %i.awx, align 4, !tbaa !3
  %i.awz = tail call noundef i32 @llvm.umin.i32(i32 %i.awy, i32 %i.aww)
  store i32 %i.awz, ptr %i.awx, align 4, !tbaa !3
  %i.axa = icmp ult i64 %i.awt, %3
  br i1 %i.axa, label %bb.hh, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit.thread

bb.hh:                                            ; preds = %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit.thread1113
  %i.axb = getelementptr inbounds nuw i8, ptr %1, i64 %i.awt ; 8 uses
  %i.axc = load i8, ptr %1, align 1, !tbaa !24
  %i.axd = icmp eq i8 %i.axc, 32
  %i.axe = add nuw nsw i64 %i.avf, 8
  %i.axf = icmp ult i64 %i.axe, %3
  %or.cond = select i1 %i.axd, i1 %i.axf, i1 false
  br i1 %or.cond, label %bb.hi, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit.thread

bb.hi:                                            ; preds = %bb.hh
  %i.axg = load i8, ptr %i.axb, align 1, !tbaa !24
  %i.axh = icmp eq i8 %i.axg, 32
  br i1 %i.axh, label %bb.hj, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit.thread

bb.hj:                                            ; preds = %bb.hi
  %i.axi = getelementptr inbounds nuw i8, ptr %i.axb, i64 1
  %i.axj = load i8, ptr %i.axi, align 1, !tbaa !24
  %i.axk = icmp eq i8 %i.axj, 111
  br i1 %i.axk, label %bb.hk, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit.thread

bb.hk:                                            ; preds = %bb.hj
  %i.axl = getelementptr inbounds nuw i8, ptr %i.axb, i64 2
  %i.axm = load i8, ptr %i.axl, align 1, !tbaa !24
  %i.axn = icmp eq i8 %i.axm, 102
  br i1 %i.axn, label %bb.hl, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit.thread

bb.hl:                                            ; preds = %bb.hk
  %i.axo = getelementptr inbounds nuw i8, ptr %i.axb, i64 3
  %i.axp = load i8, ptr %i.axo, align 1, !tbaa !24
  %i.axq = icmp eq i8 %i.axp, 32
  br i1 %i.axq, label %bb.hm, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit.thread

bb.hm:                                            ; preds = %bb.hl
  %i.axr = shl i64 62, %i.avi
  %i.axs = add nuw i64 %i.axr, %i.avj
  %i.axt = shl i64 %i.axs, 5
  %i.axu = or disjoint i64 %i.axt, %i.avf
  %i.axv = trunc i64 %i.axu to i32
  %i.axw = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.avf ; 2 uses
  %i.axx = getelementptr inbounds nuw i8, ptr %i.axw, i64 36 ; 2 uses
  %i.axy = load i32, ptr %i.axx, align 4, !tbaa !3
  %i.axz = tail call noundef i32 @llvm.umin.i32(i32 %i.axy, i32 %i.axv)
  store i32 %i.axz, ptr %i.axx, align 4, !tbaa !3
  %i.aya = add nuw nsw i64 %i.avf, 12
  %i.ayb = icmp ult i64 %i.aya, %3
  br i1 %i.ayb, label %bb.hn, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit.thread

bb.hn:                                            ; preds = %bb.hm
  %i.ayc = getelementptr inbounds nuw i8, ptr %i.axb, i64 4
  %i.ayd = load i8, ptr %i.ayc, align 1, !tbaa !24
  %i.aye = icmp eq i8 %i.ayd, 116
  br i1 %i.aye, label %bb.ho, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit.thread

bb.ho:                                            ; preds = %bb.hn
  %i.ayf = getelementptr inbounds nuw i8, ptr %i.axb, i64 5
  %i.ayg = load i8, ptr %i.ayf, align 1, !tbaa !24
  %i.ayh = icmp eq i8 %i.ayg, 104
  br i1 %i.ayh, label %bb.hp, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit.thread

bb.hp:                                            ; preds = %bb.ho
  %i.ayi = getelementptr inbounds nuw i8, ptr %i.axb, i64 6
  %i.ayj = load i8, ptr %i.ayi, align 1, !tbaa !24
  %i.ayk = icmp eq i8 %i.ayj, 101
  br i1 %i.ayk, label %bb.hq, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit.thread

bb.hq:                                            ; preds = %bb.hp
  %i.ayl = getelementptr inbounds nuw i8, ptr %i.axb, i64 7
  %i.aym = load i8, ptr %i.ayl, align 1, !tbaa !24
  %i.ayn = icmp eq i8 %i.aym, 32
  br i1 %i.ayn, label %bb.hr, label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit.thread

bb.hr:                                            ; preds = %bb.hq
  %i.ayo = shl i64 73, %i.avi
  %i.ayp = add nuw i64 %i.ayo, %i.avj
  %i.ayq = shl i64 %i.ayp, 5
  %i.ayr = or disjoint i64 %i.ayq, %i.avf
  %i.ays = trunc i64 %i.ayr to i32
  %i.ayt = getelementptr inbounds nuw i8, ptr %i.axw, i64 52 ; 2 uses
  %i.ayu = load i32, ptr %i.ayt, align 4, !tbaa !3
  %i.ayv = tail call noundef i32 @llvm.umin.i32(i32 %i.ayu, i32 %i.ays)
  store i32 %i.ayv, ptr %i.ayt, align 4, !tbaa !3
  br label %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit.thread

_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit.thread: ; preds = %bb.hh, %bb.hm, %bb.hn, %bb.ho, %bb.hp, %bb.hq, %bb.hr, %bb.hl, %bb.hk, %bb.hj, %bb.hi, %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit.thread1113, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit978, %bb.hc
  %.17 = phi i32 [ %.161312, %bb.hc ], [ 1, %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit.thread1113 ], [ %.161312, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit978 ], [ 1, %bb.hi ], [ 1, %bb.hj ], [ 1, %bb.hk ], [ 1, %bb.hl ], [ 1, %bb.hr ], [ 1, %bb.hq ], [ 1, %bb.hp ], [ 1, %bb.ho ], [ 1, %bb.hn ], [ 1, %bb.hm ], [ 1, %bb.hh ] ; 2 uses
  br i1 %i.avk, label %.thread1097, label %bb.hc, !llvm.loop !45

.thread1097:                                      ; preds = %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit.thread, %bb.hb, %bb.gs, %bb.gt, %bb.gu, %bb.gv, %bb.gw, %._crit_edge1218, %.loopexit, %bb.gx, %bb.gy, %bb.gz, %bb.ha, %.thread1081
  %.18 = phi i32 [ %.15, %.thread1081 ], [ %.15, %bb.ha ], [ %.15, %bb.gz ], [ %.15, %bb.gy ], [ %.15, %bb.gx ], [ %.15, %bb.gs ], [ %.15, %bb.gt ], [ %.0.lcssa, %._crit_edge1218 ], [ %.12, %.loopexit ], [ %.15, %bb.gw ], [ %.15, %bb.gv ], [ %.15, %bb.gu ], [ %.15, %bb.hb ], [ %.17, %_ZL7IsMatchPKN13duckdb_brotli16BrotliDictionaryENS_8DictWordEPKhm.exit.thread ]
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
!35 = distinct !{!35, !27}
!36 = !{!8, !11, i64 16}
!37 = distinct !{!37, !27, !38, !39}
!38 = !{!"llvm.loop.isvectorized", i32 1}
!39 = !{!"llvm.loop.unroll.runtime.disable"}
!40 = distinct !{!40, !27, !39, !38}
!41 = distinct !{!41, !27}
!42 = distinct !{!42, !27}
!43 = distinct !{!43, !27}
!44 = distinct !{!44, !27}
!45 = distinct !{!45, !27}
end_hunk_1
