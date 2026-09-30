Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/webp_dec?download=true
inline.NumInlined: 46
inline.NumDeleted: 13
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.WebPHeaderStructure = type { ptr, i64, i32, i64, ptr, i64, i64, i64, i32 }
%struct.WebPDecParams = type { ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
  store i32 0, ptr %i.b, align 4, !tbaa !8
  %i.c = load ptr, ptr %0, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !14
  %i.f = call fastcc i32 @ParseHeadersInternal(ptr noundef %i.c, i64 noundef %i.e, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %i.b, ptr noundef null, ptr noundef nonnull %0)
  store volatile i32 %i.f, ptr %i.a, align 4, !tbaa !8
  %.0..0..0..0.2 = load volatile i32, ptr %i.a, align 4, !tbaa !8
  %i.g = icmp eq i32 %.0..0..0..0.2, 0
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.0..0..0..0.3 = load volatile i32, ptr %i.a, align 4, !tbaa !8
  %i.h = icmp eq i32 %.0..0..0..0.3, 7
  %i.i = load i32, ptr %i.b, align 4
  %i.j = icmp ne i32 %i.i, 0
  %or.cond = select i1 %i.h, i1 %i.j, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %.old = load i32, ptr %i.b, align 4, !tbaa !8
  %.old1.not = icmp eq i32 %.old, 0
  br i1 %.old1.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  store volatile i32 4, ptr %i.a, align 4, !tbaa !8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0..0..0..0.4 = load volatile i32, ptr %i.a, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %.0..0..0..0.4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 8) i32 @ParseHeadersInternal(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr noundef %4, ptr nofree noundef nonnull writeonly captures(none) %5, ptr nofree noundef writeonly captures(address_is_null) %6, ptr nofree noundef captures(address_is_null) %7) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca ptr, align 8                      ; 9 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %8 = alloca %struct.WebPHeaderStructure, align 8 ; 12 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i64 %1, ptr %i.a, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store ptr %0, ptr %i.b, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %.not = icmp eq ptr %7, null                    ; 4 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !17
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = phi i32 [ %i.h, %bb.b ], [ 0, %bb.a ]    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  %i.j = icmp eq ptr %0, null
  %i.k = icmp ult i64 %1, 12
  %or.cond = or i1 %i.j, %i.k
  br i1 %or.cond, label %ParseRIFF.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.l, i8 0, i64 56, i1 false)
  store ptr %0, ptr %8, align 8, !tbaa !13
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %1, ptr %i.m, align 8, !tbaa !14
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.o = load i32, ptr %0, align 1
  %i.p = icmp ne i32 %i.o, 1179011410
  %i.q = zext i1 %i.p to i32                      ; 2 uses
  %.not.i = icmp eq i32 %i.q, 0                   ; 2 uses
  br i1 %.not.i, label %bb.e, label %ParseRIFF.exit.thread186

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load i32, ptr %i.r, align 1
  %i.t = icmp ne i32 %i.s, 1346520407
  %i.u = zext i1 %i.t to i32
  %.not18.i = icmp eq i32 %i.u, 0
  br i1 %.not18.i, label %bb.f, label %ParseRIFF.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.val3.i.i = load i32, ptr %i.v, align 1        ; 2 uses
  %i.w = add i32 %.val3.i.i, 9
  %or.cond.i = icmp ult i32 %i.w, 21
  br i1 %or.cond.i, label %ParseRIFF.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not19.i = icmp ne i32 %i.i, 0
  %i.x = zext i32 %.val3.i.i to i64               ; 3 uses
  %i.y = add i64 %1, -8
  %i.z = icmp ult i64 %i.y, %i.x
  %or.cond24.i = and i1 %.not19.i, %i.z
  br i1 %or.cond24.i, label %ParseRIFF.exit.thread, label %ParseRIFF.exit

ParseRIFF.exit:                                   ; preds = %bb.g
  store i64 %i.x, ptr %i.n, align 8, !tbaa !15
  %i.aa = add i64 %1, -12                         ; 3 uses
  store i64 %i.aa, ptr %i.a, align 8, !tbaa !15
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store ptr %i.ab, ptr %i.b, align 8, !tbaa !16
  %i.ac = icmp ult i64 %i.aa, 8
  br i1 %i.ac, label %ParseRIFF.exit.thread, label %ParseRIFF.exit.thread186

ParseRIFF.exit.thread186:                         ; preds = %bb.d, %ParseRIFF.exit
  %i.ad = phi i64 [ %i.aa, %ParseRIFF.exit ], [ %1, %bb.d ] ; 3 uses
  %i.ae = phi i64 [ %i.x, %ParseRIFF.exit ], [ 0, %bb.d ] ; 3 uses
  %i.af = phi ptr [ %i.ab, %ParseRIFF.exit ], [ %0, %bb.d ] ; 9 uses
  %i.ag = load i32, ptr %i.af, align 1
  %i.ah = icmp ne i32 %i.ag, 1480085590
  %i.ai = zext i1 %i.ah to i32                    ; 2 uses
  %.not.i102 = icmp eq i32 %i.ai, 0               ; 4 uses
  br i1 %.not.i102, label %bb.h, label %ParseVP8X.exit.thread129

bb.h:                                             ; preds = %ParseRIFF.exit.thread186
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %.val3.i.i104 = load i32, ptr %i.aj, align 1
  %.not28.i = icmp eq i32 %.val3.i.i104, 10
  br i1 %.not28.i, label %bb.i, label %ParseRIFF.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.ak = icmp ult i64 %i.ad, 18
  br i1 %i.ak, label %ParseRIFF.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %.val.i31.i = load i16, ptr %i.al, align 1
  %i.am = zext i16 %.val.i31.i to i32
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 14
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !18
  %i.ap = zext i8 %i.ao to i32
  %i.aq = shl nuw nsw i32 %i.ap, 16
  %i.ar = or disjoint i32 %i.aq, %i.am
  %i.as = add nuw nsw i32 %i.ar, 1                ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.af, i64 15
  %.val.i32.i = load i16, ptr %i.at, align 1
  %i.au = zext i16 %.val.i32.i to i32
  %i.av = getelementptr inbounds nuw i8, ptr %i.af, i64 17
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !18
  %i.ax = zext i8 %i.aw to i32
  %i.ay = shl nuw nsw i32 %i.ax, 16
  %i.az = or disjoint i32 %i.ay, %i.au
  %i.ba = add nuw nsw i32 %i.az, 1                ; 2 uses
  %umul.i = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.as, i32 %i.ba)
  %umul.overflow.i = extractvalue { i32, i1 } %umul.i, 1
  br i1 %umul.overflow.i, label %ParseRIFF.exit.thread, label %ParseVP8X.exit

ParseVP8X.exit:                                   ; preds = %bb.j
  %i.bb = getelementptr i8, ptr %i.af, i64 8
  %.val3.i29.i = load i32, ptr %i.bb, align 1     ; 2 uses
  %i.bc = add i64 %i.ad, -18                      ; 2 uses
  store i64 %i.bc, ptr %i.a, align 8, !tbaa !15
  %i.bd = getelementptr inbounds nuw i8, ptr %i.af, i64 18 ; 2 uses
  store ptr %i.bd, ptr %i.b, align 8, !tbaa !16
  %i.be = and i32 %.val3.i29.i, 2                 ; 2 uses
  %i.bf = icmp ne i32 %i.be, 0
  %.lobit = lshr exact i32 %i.be, 1
  %.not171 = icmp eq i64 %i.ae, 0
  br i1 %.not171, label %ParseRIFF.exit.thread, label %ParseVP8X.exit.thread129

ParseVP8X.exit.thread129:                         ; preds = %ParseRIFF.exit.thread186, %ParseVP8X.exit
  %i.bg = phi ptr [ %i.bd, %ParseVP8X.exit ], [ %i.af, %ParseRIFF.exit.thread186 ]
  %i.bh = phi i64 [ %i.bc, %ParseVP8X.exit ], [ %i.ad, %ParseRIFF.exit.thread186 ]
  %or.cond5 = phi i1 [ %i.bf, %ParseVP8X.exit ], [ false, %ParseRIFF.exit.thread186 ]
  %.lobit141 = phi i32 [ %.lobit, %ParseVP8X.exit ], [ 0, %ParseRIFF.exit.thread186 ] ; 2 uses
  %.0114140 = phi i32 [ %.val3.i29.i, %ParseVP8X.exit ], [ 0, %ParseRIFF.exit.thread186 ]
  %.0116138 = phi i32 [ %i.ba, %ParseVP8X.exit ], [ 0, %ParseRIFF.exit.thread186 ] ; 2 uses
  %.0117137 = phi i32 [ %i.as, %ParseVP8X.exit ], [ 0, %ParseRIFF.exit.thread186 ] ; 2 uses
  %.not85 = icmp eq ptr %4, null                  ; 2 uses
  br i1 %.not85, label %bb.l, label %bb.k

bb.k:                                             ; preds = %ParseVP8X.exit.thread129
  %i.bi = lshr i32 %.0114140, 4
  %.lobit86 = and i32 %i.bi, 1
  store i32 %.lobit86, ptr %4, align 4, !tbaa !8
  br label %bb.l

bb.l:                                             ; preds = %ParseVP8X.exit.thread129, %bb.k
  store i32 %.lobit141, ptr %5, align 4, !tbaa !8
  %.not87.a = icmp eq ptr %6, null                ; 2 uses
  br i1 %.not87.a, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %6, align 4, !tbaa !8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  store i32 %.0117137, ptr %i.c, align 4, !tbaa !8
  store i32 %.0116138, ptr %i.d, align 4, !tbaa !8
  %or.cond7 = and i1 %.not, %or.cond5
  br i1 %or.cond7, label %bb.ah, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bj = icmp ult i64 %i.bh, 4
  br i1 %i.bj, label %bb.ag, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bk = or i32 %i.q, %i.ai
  %or.cond9 = icmp eq i32 %i.bk, 0
  br i1 %or.cond9, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %or.cond11 = or i1 %.not.i, %.not.i102
  br i1 %or.cond11, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bl = load i32, ptr %i.bg, align 1
  %i.bm = icmp ne i32 %i.bl, 1213221953
  %i.bn = zext i1 %i.bm to i32
  %.not88.a = icmp eq i32 %i.bn, 0
  br i1 %.not88.a, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.p, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  %i.bo = call fastcc i32 @ParseOptionalChunks(ptr noundef %i.b, ptr noundef %i.a, i64 noundef %i.ae, ptr noundef %i.f, ptr noundef %i.e) ; 2 uses
  %.not89.a = icmp eq i32 %i.bo, 0
  br i1 %.not89.a, label %.thread162, label %bb.t

.thread162:                                       ; preds = %bb.s
  %i.bp = load ptr, ptr %i.f, align 8, !tbaa !16
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !19
  %i.br = load i64, ptr %i.e, align 8, !tbaa !15
  %i.bs = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i64 %i.br, ptr %i.bs, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  br label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  br label %bb.ag

bb.u:                                             ; preds = %.thread162, %bb.r, %bb.q
  %i.bt = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 2 uses
  %i.bv = call fastcc i32 @ParseVP8Header(ptr noundef %i.b, ptr noundef %i.a, i32 noundef %i.i, i64 noundef %i.ae, ptr noundef %i.bt, ptr noundef %i.bu) ; 2 uses
  %.not90.a = icmp eq i32 %i.bv, 0
  br i1 %.not90.a, label %bb.v, label %bb.ag

bb.v:                                             ; preds = %bb.u
  %i.bw = load i64, ptr %i.bt, align 8, !tbaa !49 ; 2 uses
  %i.bx = icmp ugt i64 %i.bw, 4294967286
  br i1 %i.bx, label %ParseRIFF.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.by = icmp ne i32 %.lobit141, 0
  %or.cond13 = select i1 %.not87.a, i1 true, i1 %i.by
  %.pr164 = load i32, ptr %i.bu, align 8, !tbaa !21 ; 2 uses
  br i1 %or.cond13, label %thread-pre-split, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.not91.a = icmp eq i32 %.pr164, 0
  %i.bz = select i1 %.not91.a, i32 1, i32 2
  store i32 %i.bz, ptr %6, align 4, !tbaa !8
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.w, %bb.x
  %.not92.a = icmp eq i32 %.pr164, 0
  %i.ca = load i64, ptr %i.a, align 8, !tbaa !15  ; 4 uses
  br i1 %.not92.a, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %thread-pre-split
  %i.cb = icmp ult i64 %i.ca, 10
  br i1 %i.cb, label %bb.ag, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cc = load ptr, ptr %i.b, align 8, !tbaa !16  ; 2 uses
  %i.cd = call i32 @VP8GetInfo(ptr noundef %i.cc, i64 noundef %i.ca, i64 noundef %i.bw, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #8
  %.not93.a = icmp eq i32 %i.cd, 0
  br i1 %.not93.a, label %ParseRIFF.exit.thread, label %bb.ac

bb.aa:                                            ; preds = %thread-pre-split
  %i.ce = icmp ult i64 %i.ca, 5
  br i1 %i.ce, label %bb.ag, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cf = load ptr, ptr %i.b, align 8, !tbaa !16  ; 2 uses
  %i.cg = call i32 @VP8LGetInfo(ptr noundef %i.cf, i64 noundef %i.ca, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef %4) #8
  %.not94 = icmp eq i32 %i.cg, 0
  br i1 %.not94, label %ParseRIFF.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.z
  %i.ch = phi ptr [ %i.cf, %bb.ab ], [ %i.cc, %bb.z ]
  br i1 %.not.i102, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ci = load i32, ptr %i.c, align 4, !tbaa !8
  %.not96.a = icmp eq i32 %.0117137, %i.ci
  %i.cj = load i32, ptr %i.d, align 4
  %.not97 = icmp eq i32 %.0116138, %i.cj
  %or.cond171 = select i1 %.not96.a, i1 %.not97, i1 false
  br i1 %or.cond171, label %bb.ae, label %ParseRIFF.exit.thread

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  br i1 %.not, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %7, ptr noundef nonnull align 8 dereferenceable(72) %8, i64 72, i1 false), !tbaa.struct !50
  %i.ck = load ptr, ptr %7, align 8, !tbaa !13
  %i.cl = ptrtoint ptr %i.ch to i64
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %i.cn, ptr %i.co, align 8, !tbaa !22
  br label %bb.ah

bb.ag:                                            ; preds = %bb.aa, %bb.u, %bb.y, %bb.o, %bb.t
  %.162.ph = phi i32 [ %i.bo, %bb.t ], [ 7, %bb.o ], [ 7, %bb.y ], [ %i.bv, %bb.u ], [ 7, %bb.aa ] ; 2 uses
  %i.cp = icmp eq i32 %.162.ph, 7
  %or.cond15 = and i1 %.not.i102, %i.cp
  %or.cond17 = and i1 %.not, %or.cond15
  br i1 %or.cond17, label %bb.ah, label %ParseRIFF.exit.thread

bb.ah:                                            ; preds = %bb.af, %bb.ae, %bb.n, %bb.ag
  br i1 %.not85, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cq = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !19
  %i.cs = icmp ne ptr %i.cr, null
  %i.ct = zext i1 %i.cs to i32
  %i.cu = load i32, ptr %4, align 4, !tbaa !8
  %i.cv = or i32 %i.cu, %i.ct
  store i32 %i.cv, ptr %4, align 4, !tbaa !8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.not99.a = icmp eq ptr %2, null
  br i1 %.not99.a, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cw = load i32, ptr %i.c, align 4, !tbaa !8
  store i32 %i.cw, ptr %2, align 4, !tbaa !8
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.not100 = icmp eq ptr %3, null
  br i1 %.not100, label %ParseRIFF.exit.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cx = load i32, ptr %i.d, align 4, !tbaa !8
  store i32 %i.cx, ptr %3, align 4, !tbaa !8
  br label %ParseRIFF.exit.thread

ParseRIFF.exit.thread:                            ; preds = %bb.h, %bb.i, %bb.j, %ParseRIFF.exit, %ParseVP8X.exit, %bb.g, %bb.f, %bb.e, %bb.ag, %bb.al, %bb.am, %bb.ad, %bb.ab, %bb.z, %bb.v, %bb.c
  %.165 = phi i32 [ 3, %bb.v ], [ 7, %bb.c ], [ 3, %bb.e ], [ 3, %bb.ad ], [ 0, %bb.al ], [ %.162.ph, %bb.ag ], [ 3, %bb.z ], [ 3, %bb.ab ], [ 7, %ParseRIFF.exit ], [ 0, %bb.am ], [ 7, %bb.g ], [ 3, %bb.f ], [ 3, %ParseVP8X.exit ], [ 3, %bb.h ], [ 7, %bb.i ], [ 3, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.165
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1
end_hunk_0
