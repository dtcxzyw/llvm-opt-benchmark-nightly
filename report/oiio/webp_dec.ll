Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/webp_dec?download=true
inline.NumInlined: 46
inline.NumDeleted: 13
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.WebPHeaderStructure = type { ptr, i64, i32, i64, ptr, i64, i64, i64, i32 }
%struct.WebPDecParams = type { ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.WebPDecBuffer = type { i32, i32, i32, i32, %union.anon, [4 x i32], ptr }
%union.anon = type { %struct.WebPYUVABuffer }
%struct.WebPYUVABuffer = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.VP8Io = type { i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i64, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.WebPBitstreamFeatures = type { i32, i32, i32, i32, i32, [5 x i32] }

; Function Attrs: nounwind uwtable
define hidden i32 @WebPParseHeaders(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 0, ptr %i.b, align 4, !tbaa !3
  %i.c = load ptr, ptr %0, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !12
  %i.f = call fastcc i32 @ParseHeadersInternal(ptr noundef %i.c, i64 noundef %i.e, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %i.b, ptr noundef null, ptr noundef nonnull %0)
  store volatile i32 %i.f, ptr %i.a, align 4, !tbaa !3
  %.0..0..0..0. = load volatile i32, ptr %i.a, align 4, !tbaa !3
  %i.g = icmp eq i32 %.0..0..0..0., 0
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.0..0..0..0.2 = load volatile i32, ptr %i.a, align 4, !tbaa !3
  %i.h = icmp eq i32 %.0..0..0..0.2, 7
  %i.i = load i32, ptr %i.b, align 4
  %i.j = icmp ne i32 %i.i, 0
  %or.cond = select i1 %i.h, i1 %i.j, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %.old = load i32, ptr %i.b, align 4, !tbaa !3
  %.old1.not = icmp eq i32 %.old, 0
  br i1 %.old1.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  store volatile i32 4, ptr %i.a, align 4, !tbaa !3
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0..0..0..0.3 = load volatile i32, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %.0..0..0..0.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 8) i32 @ParseHeadersInternal(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr noundef %4, ptr nofree noundef nonnull writeonly captures(none) %5, ptr nofree noundef writeonly captures(address_is_null) %6, ptr nofree noundef captures(address_is_null) %7) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %8 = alloca %struct.WebPHeaderStructure, align 8 ; 12 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !13
  store i64 %1, ptr %i.b, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %.not = icmp eq ptr %7, null                    ; 4 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !15
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = phi i32 [ %i.f, %bb.b ], [ 0, %bb.a ]    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  %i.h = icmp eq ptr %0, null
  %i.i = icmp ult i64 %1, 12
  %or.cond = or i1 %i.h, %i.i
  br i1 %or.cond, label %ParseRIFF.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.j, i8 0, i64 56, i1 false)
  store ptr %0, ptr %8, align 8, !tbaa !7
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %1, ptr %i.k, align 8, !tbaa !12
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 2 uses
  %i.m = load i32, ptr %0, align 1
  %i.n = icmp ne i32 %i.m, 1179011410
  %i.o = zext i1 %i.n to i32                      ; 2 uses
  %.not.i = icmp eq i32 %i.o, 0                   ; 2 uses
  br i1 %.not.i, label %bb.e, label %ParseRIFF.exit.thread181

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i32, ptr %i.p, align 1
  %i.r = icmp ne i32 %i.q, 1346520407
  %i.s = zext i1 %i.r to i32
  %.not18.i = icmp eq i32 %i.s, 0
  br i1 %.not18.i, label %bb.f, label %ParseRIFF.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.val3.i.i = load i32, ptr %i.t, align 1        ; 2 uses
  %i.u = add i32 %.val3.i.i, 9
  %or.cond.i = icmp ult i32 %i.u, 21
  br i1 %or.cond.i, label %ParseRIFF.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not19.i = icmp ne i32 %i.g, 0
  %i.v = zext i32 %.val3.i.i to i64               ; 3 uses
  %i.w = add i64 %1, -8
  %i.x = icmp ult i64 %i.w, %i.v
  %or.cond24.i = and i1 %.not19.i, %i.x
  br i1 %or.cond24.i, label %ParseRIFF.exit.thread, label %ParseRIFF.exit

ParseRIFF.exit:                                   ; preds = %bb.g
  store i64 %i.v, ptr %i.l, align 8, !tbaa !14
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store ptr %i.y, ptr %i.a, align 8, !tbaa !13
  %i.z = add i64 %1, -12                          ; 3 uses
  store i64 %i.z, ptr %i.b, align 8, !tbaa !14
  %i.aa = icmp ult i64 %i.z, 8
  br i1 %i.aa, label %ParseRIFF.exit.thread, label %ParseRIFF.exit.thread181

ParseRIFF.exit.thread181:                         ; preds = %bb.d, %ParseRIFF.exit
  %i.ab = phi i64 [ %i.z, %ParseRIFF.exit ], [ %1, %bb.d ] ; 3 uses
  %i.ac = phi i64 [ %i.v, %ParseRIFF.exit ], [ 0, %bb.d ] ; 3 uses
  %i.ad = phi ptr [ %i.y, %ParseRIFF.exit ], [ %0, %bb.d ] ; 9 uses
  %i.ae = load i32, ptr %i.ad, align 1
  %i.af = icmp ne i32 %i.ae, 1480085590
  %i.ag = zext i1 %i.af to i32                    ; 2 uses
  %.not.i99 = icmp eq i32 %i.ag, 0                ; 4 uses
  br i1 %.not.i99, label %bb.h, label %ParseVP8X.exit.thread126

bb.h:                                             ; preds = %ParseRIFF.exit.thread181
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %.val3.i.i101 = load i32, ptr %i.ah, align 1
  %.not28.i = icmp eq i32 %.val3.i.i101, 10
  br i1 %.not28.i, label %bb.i, label %ParseRIFF.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.ai = icmp ult i64 %i.ab, 18
  br i1 %i.ai, label %ParseRIFF.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %.val.i31.i = load i16, ptr %i.aj, align 1
  %i.ak = zext i16 %.val.i31.i to i32
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 14
  %i.am = load i8, ptr %i.al, align 1, !tbaa !16
  %i.an = zext i8 %i.am to i32
  %i.ao = shl nuw nsw i32 %i.an, 16
  %i.ap = or disjoint i32 %i.ao, %i.ak
  %i.aq = add nuw nsw i32 %i.ap, 1                ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ad, i64 15
  %.val.i32.i = load i16, ptr %i.ar, align 1
  %i.as = zext i16 %.val.i32.i to i32
  %i.at = getelementptr inbounds nuw i8, ptr %i.ad, i64 17
  %i.au = load i8, ptr %i.at, align 1, !tbaa !16
  %i.av = zext i8 %i.au to i32
  %i.aw = shl nuw nsw i32 %i.av, 16
  %i.ax = or disjoint i32 %i.aw, %i.as
  %i.ay = add nuw nsw i32 %i.ax, 1                ; 2 uses
  %umul.i = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.aq, i32 %i.ay)
  %i.az = extractvalue { i32, i1 } %umul.i, 1
  br i1 %i.az, label %ParseRIFF.exit.thread, label %ParseVP8X.exit

ParseVP8X.exit:                                   ; preds = %bb.j
  %i.ba = getelementptr i8, ptr %i.ad, i64 8
  %.val3.i29.i = load i32, ptr %i.ba, align 1     ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ad, i64 18 ; 2 uses
  store ptr %i.bb, ptr %i.a, align 8, !tbaa !13
  %i.bc = add i64 %i.ab, -18                      ; 2 uses
  store i64 %i.bc, ptr %i.b, align 8, !tbaa !14
  %i.bd = and i32 %.val3.i29.i, 2                 ; 2 uses
  %i.be = icmp ne i32 %i.bd, 0
  %.lobit = lshr exact i32 %i.bd, 1
  %9 = icmp eq i64 %i.ac, 0
  br i1 %9, label %ParseRIFF.exit.thread, label %ParseVP8X.exit.thread126

ParseVP8X.exit.thread126:                         ; preds = %ParseRIFF.exit.thread181, %ParseVP8X.exit
  %i.bf = phi ptr [ %i.bb, %ParseVP8X.exit ], [ %i.ad, %ParseRIFF.exit.thread181 ]
  %i.bg = phi i64 [ %i.bc, %ParseVP8X.exit ], [ %i.ab, %ParseRIFF.exit.thread181 ]
  %or.cond5 = phi i1 [ %i.be, %ParseVP8X.exit ], [ false, %ParseRIFF.exit.thread181 ]
  %.lobit138 = phi i32 [ %.lobit, %ParseVP8X.exit ], [ 0, %ParseRIFF.exit.thread181 ] ; 2 uses
  %.0111137 = phi i32 [ %.val3.i29.i, %ParseVP8X.exit ], [ 0, %ParseRIFF.exit.thread181 ]
  %.0113135 = phi i32 [ %i.ay, %ParseVP8X.exit ], [ 0, %ParseRIFF.exit.thread181 ] ; 2 uses
  %.0114134 = phi i32 [ %i.aq, %ParseVP8X.exit ], [ 0, %ParseRIFF.exit.thread181 ] ; 2 uses
  %.not82 = icmp eq ptr %4, null                  ; 2 uses
  br i1 %.not82, label %bb.l, label %bb.k

bb.k:                                             ; preds = %ParseVP8X.exit.thread126
  %i.bh = lshr i32 %.0111137, 4
  %.lobit83 = and i32 %i.bh, 1
  store i32 %.lobit83, ptr %4, align 4, !tbaa !3
  br label %bb.l

bb.l:                                             ; preds = %ParseVP8X.exit.thread126, %bb.k
  store i32 %.lobit138, ptr %5, align 4, !tbaa !3
  %.not84.a = icmp eq ptr %6, null                ; 2 uses
  br i1 %.not84.a, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %6, align 4, !tbaa !3
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  store i32 %.0114134, ptr %i.c, align 4, !tbaa !3
  store i32 %.0113135, ptr %i.d, align 4, !tbaa !3
  %or.cond7 = and i1 %.not, %or.cond5
  br i1 %or.cond7, label %bb.ag, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bi = icmp ult i64 %i.bg, 4
  br i1 %i.bi, label %bb.af, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bj = or i32 %i.o, %i.ag
  %or.cond9 = icmp eq i32 %i.bj, 0
  br i1 %or.cond9, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %or.cond11 = or i1 %.not.i, %.not.i99
  br i1 %or.cond11, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bk = load i32, ptr %i.bf, align 1
  %i.bl = icmp ne i32 %i.bk, 1213221953
  %i.bm = zext i1 %i.bl to i32
  %.not85.a = icmp eq i32 %i.bm, 0
  br i1 %.not85.a, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.p, %bb.r
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.bo = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.bp = call fastcc i32 @ParseOptionalChunks(ptr noundef %i.a, ptr noundef %i.b, i64 noundef %i.ac, ptr noundef %i.bn, ptr noundef %i.bo) ; 2 uses
  %.not86.a = icmp eq i32 %i.bp, 0
  br i1 %.not86.a, label %._crit_edge, label %bb.af

._crit_edge:                                      ; preds = %bb.s
  %.pre = load i64, ptr %i.l, align 8, !tbaa !17
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge, %bb.r, %bb.q
  %i.bq = phi i64 [ %.pre, %._crit_edge ], [ 0, %bb.r ], [ %i.ac, %bb.q ]
  %i.br = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 2 uses
  %i.bt = call fastcc i32 @ParseVP8Header(ptr noundef %i.a, ptr noundef %i.b, i32 noundef %i.g, i64 noundef %i.bq, ptr noundef %i.br, ptr noundef %i.bs) ; 2 uses
  %.not87.a = icmp eq i32 %i.bt, 0
  br i1 %.not87.a, label %bb.u, label %bb.af

bb.u:                                             ; preds = %bb.t
  %i.bu = load i64, ptr %i.br, align 8, !tbaa !18 ; 2 uses
  %i.bv = icmp ugt i64 %i.bu, 4294967286
  br i1 %i.bv, label %ParseRIFF.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bw = icmp ne i32 %.lobit138, 0
  %or.cond13 = select i1 %.not84.a, i1 true, i1 %i.bw
  %.pr159 = load i32, ptr %i.bs, align 8, !tbaa !19 ; 2 uses
  br i1 %or.cond13, label %thread-pre-split, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not88.a = icmp eq i32 %.pr159, 0
  %i.bx = select i1 %.not88.a, i32 1, i32 2
  store i32 %i.bx, ptr %6, align 4, !tbaa !3
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.v, %bb.w
  %.not89.a = icmp eq i32 %.pr159, 0
  %i.by = load i64, ptr %i.b, align 8, !tbaa !14  ; 4 uses
  br i1 %.not89.a, label %bb.x, label %bb.z

bb.x:                                             ; preds = %thread-pre-split
  %i.bz = icmp ult i64 %i.by, 10
  br i1 %i.bz, label %bb.af, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ca = load ptr, ptr %i.a, align 8, !tbaa !13  ; 2 uses
  %i.cb = call i32 @VP8GetInfo(ptr noundef %i.ca, i64 noundef %i.by, i64 noundef %i.bu, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #8
  %.not90.a = icmp eq i32 %i.cb, 0
  br i1 %.not90.a, label %ParseRIFF.exit.thread, label %bb.ab

bb.z:                                             ; preds = %thread-pre-split
  %i.cc = icmp ult i64 %i.by, 5
  br i1 %i.cc, label %bb.af, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cd = load ptr, ptr %i.a, align 8, !tbaa !13  ; 2 uses
  %i.ce = call i32 @VP8LGetInfo(ptr noundef %i.cd, i64 noundef %i.by, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef %4) #8
  %.not91 = icmp eq i32 %i.ce, 0
  br i1 %.not91, label %ParseRIFF.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.y
  %i.cf = phi ptr [ %i.cd, %bb.aa ], [ %i.ca, %bb.y ]
  br i1 %.not.i99, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cg = load i32, ptr %i.c, align 4, !tbaa !3
  %.not93.a = icmp eq i32 %.0114134, %i.cg
  %i.ch = load i32, ptr %i.d, align 4
  %.not94 = icmp eq i32 %.0113135, %i.ch
  %or.cond166 = select i1 %.not93.a, i1 %.not94, i1 false
  br i1 %or.cond166, label %bb.ad, label %ParseRIFF.exit.thread

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  br i1 %.not, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %7, ptr noundef nonnull align 8 dereferenceable(72) %8, i64 72, i1 false), !tbaa.struct !20
  %i.ci = load ptr, ptr %7, align 8, !tbaa !7
  %i.cj = ptrtoint ptr %i.cf to i64
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %i.cl, ptr %i.cm, align 8, !tbaa !21
  br label %bb.ag

bb.af:                                            ; preds = %bb.z, %bb.s, %bb.t, %bb.x, %bb.o
  %.1.ph = phi i32 [ 7, %bb.o ], [ 7, %bb.x ], [ %i.bt, %bb.t ], [ %i.bp, %bb.s ], [ 7, %bb.z ] ; 2 uses
  %i.cn = icmp eq i32 %.1.ph, 7
  %or.cond15 = and i1 %.not.i99, %i.cn
  %or.cond17 = and i1 %.not, %or.cond15
  br i1 %or.cond17, label %bb.ag, label %ParseRIFF.exit.thread

bb.ag:                                            ; preds = %bb.ae, %bb.ad, %bb.n, %bb.af
  br i1 %.not82, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.co = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !22
  %i.cq = icmp ne ptr %i.cp, null
  %i.cr = zext i1 %i.cq to i32
  %i.cs = load i32, ptr %4, align 4, !tbaa !3
  %i.ct = or i32 %i.cs, %i.cr
  store i32 %i.ct, ptr %4, align 4, !tbaa !3
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.not96.a = icmp eq ptr %2, null
  br i1 %.not96.a, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cu = load i32, ptr %i.c, align 4, !tbaa !3
  store i32 %i.cu, ptr %2, align 4, !tbaa !3
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.not97 = icmp eq ptr %3, null
  br i1 %.not97, label %ParseRIFF.exit.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cv = load i32, ptr %i.d, align 4, !tbaa !3
  store i32 %i.cv, ptr %3, align 4, !tbaa !3
  br label %ParseRIFF.exit.thread

ParseRIFF.exit.thread:                            ; preds = %bb.h, %bb.i, %bb.j, %ParseRIFF.exit, %ParseVP8X.exit, %bb.g, %bb.f, %bb.e, %bb.af, %bb.ak, %bb.al, %bb.ac, %bb.aa, %bb.y, %bb.u, %bb.c
  %.161 = phi i32 [ 3, %bb.u ], [ 7, %bb.c ], [ 3, %bb.e ], [ 3, %bb.ac ], [ 0, %bb.ak ], [ %.1.ph, %bb.af ], [ 3, %bb.aa ], [ 3, %bb.y ], [ 7, %ParseRIFF.exit ], [ 0, %bb.al ], [ 7, %bb.g ], [ 3, %bb.f ], [ 3, %ParseVP8X.exit ], [ 3, %bb.h ], [ 7, %bb.i ], [ 3, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  ret i32 %.161
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @WebPResetDecParams(ptr nofree noundef writeonly captures(address_is_null) %0) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, i8 0, i64 112, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
end_hunk_0
