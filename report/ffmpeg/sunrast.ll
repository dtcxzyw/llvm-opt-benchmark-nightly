Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/sunrast?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [8 x i8] c"sunrast\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Sun Rasterfile image\00", align 1
@ff_sunrast_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 0, i32 110, i32 2, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, %union.anon { ptr @sunrast_decode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"this is not sunras encoded data\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"TIFF/IFF/EXPERIMENTAL (compression) type\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"invalid (compression) type\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Unknown colormap type\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"invalid colormap type\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"unsupported (compression) type\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"invalid colormap length\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"invalid depth\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"Assertion %s failed at %s:%d\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"w <= ((2147483647) - 7) / depth\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"libavcodec/sunrast.c\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"h <= (2147483647) / (3 * len)\00", align 1
@.str.14 = private unnamed_addr constant [64 x i8] c"useless colormap found or file is corrupted, trying to recover\0A\00", align 1

; Function Attrs: nounwind uwtable
define internal i32 @sunrast_decode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !39   ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !40   ; 2 uses
  %i.g = sext i32 %i.f to i64                     ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 %i.g ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store ptr null, ptr %i.a, align 8, !tbaa !41
  %i.i = icmp slt i32 %i.f, 32
  br i1 %i.i, label %bb.bc, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr %i.d, align 1, !tbaa !42
  %.not = icmp eq i32 %i.j, -1788172711
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.2) #5
  br label %bb.bc

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.l = load i32, ptr %i.k, align 1, !tbaa !42
  %i.m = tail call i32 @llvm.bswap.i32(i32 %i.l)  ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.o = load i32, ptr %i.n, align 1, !tbaa !42   ; 3 uses
  %i.p = tail call i32 @llvm.bswap.i32(i32 %i.o)  ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.r = load i32, ptr %i.q, align 1, !tbaa !42   ; 2 uses
  %i.s = tail call i32 @llvm.bswap.i32(i32 %i.r)  ; 9 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.u = load i32, ptr %i.t, align 1, !tbaa !42   ; 5 uses
  %i.v = tail call i32 @llvm.bswap.i32(i32 %i.u)  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.x = load i32, ptr %i.w, align 1, !tbaa !42   ; 2 uses
  %i.y = tail call i32 @llvm.bswap.i32(i32 %i.x)
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.aa = load i32, ptr %i.z, align 1, !tbaa !42  ; 5 uses
  %i.ab = tail call i32 @llvm.bswap.i32(i32 %i.aa) ; 6 uses
  %i.ac = getelementptr i8, ptr %i.d, i64 32      ; 9 uses
  %i.ad = icmp eq i32 %i.u, -65536
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef %0, ptr noundef nonnull @.str.3) #5
  br label %bb.bc

bb.f:                                             ; preds = %bb.d
  %i.ae = icmp ugt i32 %i.v, 5
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.4) #5
  br label %bb.bc

bb.h:                                             ; preds = %bb.f
  %i.af = icmp eq i32 %i.x, 33554432
  br i1 %i.af, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef %0, ptr noundef nonnull @.str.5) #5
  br label %bb.bc

bb.j:                                             ; preds = %bb.h
  %i.ag = icmp ugt i32 %i.y, 2
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.6) #5
  br label %bb.bc

bb.l:                                             ; preds = %bb.j
  %i.ah = and i32 %i.v, 6
  %or.cond = icmp eq i32 %i.ah, 4
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.7) #5
  br label %bb.bc

bb.n:                                             ; preds = %bb.l
  %i.ai = icmp ugt i32 %i.ab, 768
  br i1 %i.ai, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 24, ptr noundef nonnull @.str.8) #5
  br label %bb.bc

bb.p:                                             ; preds = %bb.n
  switch i32 %i.s, label %bb.v [
    i32 1, label %bb.q
    i32 4, label %bb.r
    i32 8, label %bb.s
    i32 24, label %bb.t
    i32 32, label %bb.u
  ]

bb.q:                                             ; preds = %bb.p
  %.not235 = icmp eq i32 %i.aa, 0
  %i.aj = select i1 %.not235, i32 9, i32 11
  br label %bb.w

bb.r:                                             ; preds = %bb.p
  %.not234 = icmp eq i32 %i.aa, 0
  %i.ak = select i1 %.not234, i32 -1, i32 11
  br label %bb.w

bb.s:                                             ; preds = %bb.p
  %.not233 = icmp eq i32 %i.aa, 0
  %i.al = select i1 %.not233, i32 8, i32 11
  br label %bb.w

bb.t:                                             ; preds = %bb.p
  %i.am = icmp eq i32 %i.u, 50331648
  %i.an = select i1 %i.am, i32 2, i32 3
  br label %bb.w

bb.u:                                             ; preds = %bb.p
  %i.ao = icmp eq i32 %i.u, 50331648
  %i.ap = select i1 %i.ao, i32 118, i32 120
  br label %bb.w

bb.v:                                             ; preds = %bb.p
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.9) #5
  br label %bb.bc

bb.w:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.q
  %.sink = phi i32 [ %i.ap, %bb.u ], [ %i.an, %bb.t ], [ %i.al, %bb.s ], [ %i.ak, %bb.r ], [ %i.aj, %bb.q ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %.sink, ptr %i.aq, align 8, !tbaa !56
  %i.ar = tail call i32 @ff_set_dimensions(ptr noundef nonnull %0, i32 noundef %i.m, i32 noundef %i.p) #5 ; 2 uses
  %i.as = icmp slt i32 %i.ar, 0
  br i1 %i.as, label %bb.bc, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.at = udiv i32 2147483640, %i.s
  %.not236 = icmp ugt i32 %i.m, %i.at
  br i1 %.not236, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 113) #5
  tail call void @abort() #6
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.au = mul i32 %i.s, %i.m
  %i.av = add i32 %i.au, 7
  %i.aw = lshr i32 %i.av, 3                       ; 6 uses
  %i.ax = and i32 %i.aw, 1
  %i.ay = add nuw nsw i32 %i.ax, %i.aw            ; 2 uses
  %i.az = mul nuw nsw i32 %i.aw, 3
  %i.ba = udiv i32 2147483647, %i.az
  %.not237 = icmp ugt i32 %i.p, %i.ba
  br i1 %.not237, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.12, i32 noundef 120) #5
  tail call void @abort() #6
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.bb = ptrtoint ptr %i.h to i64                ; 2 uses
  %gepdiff = add nsw i64 %i.g, -32
  %i.bc = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.bd = mul i32 %i.p, 3
  %i.be = mul i32 %i.bd, %i.aw
  %i.bf = lshr i32 %i.be, 8
  %narrow = add nuw nsw i32 %i.bf, %i.ab
  %i.bg = zext nneg i32 %narrow to i64
  %i.bh = icmp samesign ult i64 %gepdiff, %i.bg
  br i1 %i.bh, label %bb.bc, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bi = tail call i32 @ff_get_buffer(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0) #5 ; 2 uses
  %i.bj = icmp slt i32 %i.bi, 0
  br i1 %i.bj, label %bb.bc, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i32 1, ptr %i.bk, align 8, !tbaa !61
  %i.bl = icmp samesign ugt i32 %i.s, 8
  %i.bm = icmp ne i32 %i.aa, 0                    ; 2 uses
  %or.cond4 = select i1 %i.bl, i1 %i.bm, i1 false
  br i1 %or.cond4, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.14) #5
  br label %.thread246

bb.af:                                            ; preds = %bb.ad
  br i1 %i.bm, label %bb.ag, label %.thread246

bb.ag:                                            ; preds = %bb.af
  %.lhs.trunc = trunc nuw nsw i32 %i.ab to i16    ; 2 uses
  %i.bn = udiv i16 %.lhs.trunc, 3                 ; 2 uses
  %i.bo = urem i16 %.lhs.trunc, 3
  %.not238 = icmp eq i16 %i.bo, 0
  br i1 %.not238, label %bb.ah, label %.thread

.thread:                                          ; preds = %bb.ag
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.8) #5
  br label %bb.bc

bb.ah:                                            ; preds = %bb.ag
  %.not280 = icmp samesign ult i32 %i.ab, 3
  br i1 %.not280, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ah
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !41 ; 8 uses
  %4 = shl nuw nsw i16 %i.bn, 1
  %i.br = zext nneg i16 %i.bn to i64              ; 8 uses
  %wide.trip.count = zext nneg i16 %4 to i64
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.br ; 6 uses
  %invariant.gep327 = getelementptr inbounds nuw i8, ptr %i.ac, i64 %wide.trip.count ; 6 uses
  %min.iters.check = icmp ult i32 %i.ab, 48
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.bs = shl nuw nsw i64 %i.br, 2
  %i.bt = getelementptr i8, ptr %i.bq, i64 %i.bs  ; 3 uses
  %5 = mul nuw nsw i64 %i.br, 3
  %i.bu = getelementptr i8, ptr %i.d, i64 %5
  %i.bv = getelementptr i8, ptr %i.bu, i64 32
  %bound0 = icmp ult ptr %i.bq, %i.bv
  %bound1 = icmp ult ptr %invariant.gep327, %i.bt
  %found.conflict = and i1 %bound0, %bound1
  %bound0342.a = icmp ult ptr %i.bq, %invariant.gep327
  %bound1343.a = icmp ult ptr %invariant.gep, %i.bt
  %found.conflict344.a = and i1 %bound0342.a, %bound1343.a
  %conflict.rdx = or i1 %found.conflict, %found.conflict344.a
  %bound0345 = icmp ult ptr %i.bq, %invariant.gep
  %bound1346 = icmp ult ptr %i.ac, %i.bt
  %found.conflict347 = and i1 %bound0345, %bound1346
  %conflict.rdx348 = or i1 %conflict.rdx, %found.conflict347
  br i1 %conflict.rdx348, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.br, 504                     ; 4 uses
  %i.bw = shl nuw nsw i64 %n.vec, 2
  %i.bx = getelementptr i8, ptr %i.bq, i64 %i.bw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.by = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.bq, i64 %i.by ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ac, i64 %index ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %wide.load = load <4 x i8>, ptr %i.bz, align 1, !tbaa !42, !alias.scope !62
  %wide.load349.a = load <4 x i8>, ptr %i.ca, align 1, !tbaa !42, !alias.scope !62
  %i.cb = zext <4 x i8> %wide.load to <4 x i32>
  %i.cc = zext <4 x i8> %wide.load349.a to <4 x i32>
  %i.cd = shl nuw nsw <4 x i32> %i.cb, splat (i32 16)
  %i.ce = shl nuw nsw <4 x i32> %i.cc, splat (i32 16)
  %i.cf = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %wide.load350.a = load <4 x i8>, ptr %i.cf, align 1, !tbaa !42, !alias.scope !63
  %wide.load351 = load <4 x i8>, ptr %i.cg, align 1, !tbaa !42, !alias.scope !63
  %i.ch = zext <4 x i8> %wide.load350.a to <4 x i32>
  %i.ci = zext <4 x i8> %wide.load351 to <4 x i32>
  %i.cj = shl nuw nsw <4 x i32> %i.ch, splat (i32 8)
  %i.ck = shl nuw nsw <4 x i32> %i.ci, splat (i32 8)
  %i.cl = getelementptr inbounds nuw i8, ptr %invariant.gep327, i64 %index ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %wide.load352 = load <4 x i8>, ptr %i.cl, align 1, !tbaa !42, !alias.scope !64
  %wide.load353 = load <4 x i8>, ptr %i.cm, align 1, !tbaa !42, !alias.scope !64
  %i.cn = zext <4 x i8> %wide.load352 to <4 x i32>
  %i.co = zext <4 x i8> %wide.load353 to <4 x i32>
  %i.cp = or disjoint <4 x i32> %i.cd, %i.cj
  %i.cq = or disjoint <4 x i32> %i.ce, %i.ck
  %i.cr = or disjoint <4 x i32> %i.cp, %i.cn
  %i.cs = or disjoint <4 x i32> %i.cq, %i.co
  %i.ct = or disjoint <4 x i32> %i.cr, splat (i32 -16777216)
  %i.cu = or disjoint <4 x i32> %i.cs, splat (i32 -16777216)
  %i.cv = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %i.ct, ptr %next.gep, align 4, !tbaa !65, !alias.scope !66, !noalias !67
  store <4 x i32> %i.cu, ptr %i.cv, align 4, !tbaa !65, !alias.scope !66, !noalias !67
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cw = icmp eq i64 %index.next, %n.vec
  br i1 %i.cw, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.br
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 6 uses
  %.0194254.ph = phi ptr [ %i.bq, %vector.memcheck ], [ %i.bq, %.lr.ph ], [ %i.bx, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.br, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ac, i64 %indvars.iv.ph
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !42
  %i.cz = zext i8 %i.cy to i32
  %i.da = shl nuw nsw i32 %i.cz, 16
  %gep.prol = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.ph
  %i.db = load i8, ptr %gep.prol, align 1, !tbaa !42
  %i.dc = zext i8 %i.db to i32
  %i.dd = shl nuw nsw i32 %i.dc, 8
  %gep328.prol = getelementptr inbounds nuw i8, ptr %invariant.gep327, i64 %indvars.iv.ph
  %i.de = load i8, ptr %gep328.prol, align 1, !tbaa !42
  %i.df = zext i8 %i.de to i32
  %i.dg = or disjoint i32 %i.da, %i.dd
  %i.dh = or disjoint i32 %i.dg, %i.df
  %i.di = or disjoint i32 %i.dh, -16777216
  store i32 %i.di, ptr %.0194254.ph, align 4, !tbaa !65
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  %i.dj = getelementptr inbounds nuw i8, ptr %.0194254.ph, i64 4
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %.0194254.unr = phi ptr [ %.0194254.ph, %scalar.ph.preheader ], [ %i.dj, %scalar.ph.prol ]
  %i.dk = add nsw i64 %i.br, -1
  %i.dl = icmp eq i64 %indvars.iv.ph, %i.dk
  br i1 %i.dl, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.0194254 = phi ptr [ %i.el, %scalar.ph ], [ %.0194254.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ac, i64 %indvars.iv
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !42
  %i.do = zext i8 %i.dn to i32
  %i.dp = shl nuw nsw i32 %i.do, 16
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv
  %i.dq = load i8, ptr %gep, align 1, !tbaa !42
  %i.dr = zext i8 %i.dq to i32
  %i.ds = shl nuw nsw i32 %i.dr, 8
  %gep328 = getelementptr inbounds nuw i8, ptr %invariant.gep327, i64 %indvars.iv
  %i.dt = load i8, ptr %gep328, align 1, !tbaa !42
  %i.du = zext i8 %i.dt to i32
  %i.dv = or disjoint i32 %i.dp, %i.ds
  %i.dw = or disjoint i32 %i.dv, %i.du
  %i.dx = or disjoint i32 %i.dw, -16777216
  store i32 %i.dx, ptr %.0194254, align 4, !tbaa !65
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.0194254, i64 4
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ac, i64 %indvars.iv.next
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !42
  %i.eb = zext i8 %i.ea to i32
  %i.ec = shl nuw nsw i32 %i.eb, 16
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.next
  %i.ed = load i8, ptr %gep.1, align 1, !tbaa !42
  %i.ee = zext i8 %i.ed to i32
  %i.ef = shl nuw nsw i32 %i.ee, 8
  %gep328.1 = getelementptr inbounds nuw i8, ptr %invariant.gep327, i64 %indvars.iv.next
  %i.eg = load i8, ptr %gep328.1, align 1, !tbaa !42
  %i.eh = zext i8 %i.eg to i32
  %i.ei = or disjoint i32 %i.ec, %i.ef
  %i.ej = or disjoint i32 %i.ei, %i.eh
  %i.ek = or disjoint i32 %i.ej, -16777216
  store i32 %i.ek, ptr %i.dy, align 4, !tbaa !65
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.0194254, i64 8
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %i.br
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !15

.thread246:                                       ; preds = %bb.af, %bb.ae
  %i.em = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.bc
  %i.en = icmp samesign ult i32 %i.s, 8
  br label %bb.ak

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.ah
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.bc ; 2 uses
  %i.ep = icmp samesign ult i32 %i.s, 8
  br i1 %i.ep, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %._crit_edge
  %i.eq = add nuw i32 %i.m, 15                    ; 2 uses
  %i.er = zext i32 %i.eq to i64
  %i.es = zext nneg i32 %i.p to i64
  %i.et = tail call ptr @av_malloc_array(i64 noundef %i.er, i64 noundef %i.es) #5 ; 3 uses
  store ptr %i.et, ptr %i.a, align 8, !tbaa !41
  %.not239 = icmp eq ptr %i.et, null
  br i1 %.not239, label %bb.bc, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.eu = lshr i32 %i.eq, 3
  %i.ev = mul nuw nsw i32 %i.eu, %i.s
  %i.ew = zext nneg i32 %i.ev to i64
  br label %bb.al

bb.ak:                                            ; preds = %.thread246, %._crit_edge
  %i.ex = phi i1 [ %i.en, %.thread246 ], [ false, %._crit_edge ]
  %i.ey = phi ptr [ %i.em, %.thread246 ], [ %i.eo, %._crit_edge ]
  %i.ez = load ptr, ptr %1, align 8, !tbaa !41
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !65
  %i.fc = sext i32 %i.fb to i64
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.fd = phi i1 [ true, %bb.aj ], [ %i.ex, %bb.ak ]
  %i.fe = phi ptr [ %i.eo, %bb.aj ], [ %i.ey, %bb.ak ] ; 5 uses
  %.0196 = phi i64 [ %i.ew, %bb.aj ], [ %i.fc, %bb.ak ] ; 3 uses
  %.1195 = phi ptr [ %i.et, %bb.aj ], [ %i.ez, %bb.ak ] ; 3 uses
  %i.ff = icmp eq i32 %i.u, 33554432
  br i1 %i.ff, label %bb.am, label %.preheader250

.preheader250:                                    ; preds = %bb.al
  %.not281 = icmp eq i32 %i.o, 0
  br i1 %.not281, label %.critedge, label %.lr.ph258

.lr.ph258:                                        ; preds = %.preheader250
  %i.fg = zext nneg i32 %i.ay to i64              ; 2 uses
  %i.fh = zext nneg i32 %i.aw to i64
  br label %bb.ay

bb.am:                                            ; preds = %bb.al
  %i.fi = zext nneg i32 %i.p to i64
  %i.fj = mul nsw i64 %.0196, %i.fi               ; 2 uses
  %i.fk = getelementptr inbounds i8, ptr %.1195, i64 %i.fj ; 2 uses
  %i.fl = icmp eq i64 %i.fj, 0
  %i.fm = icmp uge ptr %i.fe, %i.h
  %.not245263 = select i1 %i.fl, i1 true, i1 %i.fm
  br i1 %.not245263, label %.critedge, label %.lr.ph268

.lr.ph268:                                        ; preds = %bb.am, %bb.ax
  %.2266 = phi ptr [ %.5, %bb.ax ], [ %.1195, %bb.am ]
  %.1200265 = phi i32 [ %.4203, %bb.ax ], [ 0, %bb.am ]
  %.0205264 = phi ptr [ %.1206, %bb.ax ], [ %i.fe, %bb.am ] ; 5 uses
  %i.fn = ptrtoint ptr %.0205264 to i64
  %i.fo = sub i64 %i.bb, %i.fn
  %i.fp = icmp slt i64 %i.fo, 1
  br i1 %i.fp, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %.lr.ph268
  call void @av_freep(ptr noundef nonnull %i.a) #5
  br label %bb.bc

bb.ao:                                            ; preds = %.lr.ph268
  %i.fq = getelementptr inbounds nuw i8, ptr %.0205264, i64 1 ; 2 uses
  %i.fr = load i8, ptr %.0205264, align 1, !tbaa !42 ; 2 uses
  %i.fs = icmp eq i8 %i.fr, -128
  br i1 %i.fs, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.ft = getelementptr inbounds nuw i8, ptr %.0205264, i64 2 ; 2 uses
  %i.fu = load i8, ptr %i.fq, align 1, !tbaa !42  ; 2 uses
  %.not240 = icmp eq i8 %i.fu, 0
  br i1 %.not240, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fv = zext i8 %i.fu to i32
  %i.fw = getelementptr inbounds nuw i8, ptr %.0205264, i64 3
  %i.fx = load i8, ptr %i.ft, align 1, !tbaa !42
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq, %bb.ao
  %.1206 = phi ptr [ %i.fw, %bb.aq ], [ %i.ft, %bb.ap ], [ %i.fq, %bb.ao ] ; 3 uses
  %.0191.shrunk = phi i8 [ %i.fx, %bb.aq ], [ -128, %bb.ap ], [ %i.fr, %bb.ao ]
  %.0 = phi i32 [ %i.fv, %bb.aq ], [ 0, %bb.ap ], [ 0, %bb.ao ]
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aw
  %i.fy = phi i32 [ %.0, %bb.ar ], [ %i.gf, %bb.aw ] ; 2 uses
  %.3262 = phi ptr [ %.2266, %bb.ar ], [ %.4, %bb.aw ] ; 3 uses
  %.2201261 = phi i32 [ %.1200265, %bb.ar ], [ %.3202, %bb.aw ] ; 3 uses
  %i.fz = icmp ult i32 %.2201261, %i.aw
  br i1 %i.fz, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.ga = zext nneg i32 %.2201261 to i64
  %i.gb = getelementptr inbounds nuw i8, ptr %.3262, i64 %i.ga
  store i8 %.0191.shrunk, ptr %i.gb, align 1, !tbaa !42
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.gc = add i32 %.2201261, 1                    ; 2 uses
  %.not242 = icmp ult i32 %i.gc, %i.ay
  br i1 %.not242, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gd = getelementptr inbounds i8, ptr %.3262, i64 %.0196 ; 3 uses
  %i.ge = icmp eq ptr %i.gd, %i.fk
  br i1 %i.ge, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.3202 = phi i32 [ 0, %bb.av ], [ %i.gc, %bb.au ] ; 2 uses
  %.4 = phi ptr [ %i.gd, %bb.av ], [ %.3262, %bb.au ] ; 2 uses
  %i.gf = add nsw i32 %i.fy, -1
  %.not241 = icmp eq i32 %i.fy, 0
  br i1 %.not241, label %bb.ax, label %bb.as, !llvm.loop !16

bb.ax:                                            ; preds = %bb.av, %bb.aw
  %.4203 = phi i32 [ 0, %bb.av ], [ %.3202, %bb.aw ]
  %.5 = phi ptr [ %i.gd, %bb.av ], [ %.4, %bb.aw ] ; 2 uses
  %i.gg = icmp eq ptr %.5, %i.fk
  %i.gh = icmp uge ptr %.1206, %i.h
  %.not245 = select i1 %i.gg, i1 true, i1 %i.gh
  br i1 %.not245, label %.critedge, label %.lr.ph268, !llvm.loop !17

bb.ay:                                            ; preds = %.lr.ph258, %bb.az
  %.6257 = phi ptr [ %.1195, %.lr.ph258 ], [ %i.gl, %bb.az ] ; 2 uses
  %.0197256 = phi i32 [ 0, %.lr.ph258 ], [ %i.gn, %bb.az ]
  %.2207255 = phi ptr [ %i.fe, %.lr.ph258 ], [ %i.gm, %bb.az ] ; 4 uses
  %i.gi = ptrtoint ptr %.2207255 to i64
  %i.gj = sub i64 %i.bb, %i.gi
  %i.gk = icmp slt i64 %i.gj, %i.fg
  br i1 %i.gk, label %.critedge, label %bb.az

bb.az:                                            ; preds = %bb.ay
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.6257, ptr align 1 %.2207255, i64 %i.fh, i1 false)
  %i.gl = getelementptr inbounds i8, ptr %.6257, i64 %.0196
  %i.gm = getelementptr inbounds nuw i8, ptr %.2207255, i64 %i.fg ; 2 uses
  %i.gn = add nuw i32 %.0197256, 1                ; 2 uses
  %exitcond288.not = icmp eq i32 %i.gn, %i.p
  br i1 %exitcond288.not, label %.critedge, label %bb.ay, !llvm.loop !18

.critedge:                                        ; preds = %bb.ay, %bb.az, %bb.ax, %.preheader250, %bb.am
  %.3208 = phi ptr [ %.1206, %bb.ax ], [ %i.fe, %bb.am ], [ %i.fe, %.preheader250 ], [ %.2207255, %bb.ay ], [ %i.gm, %bb.az ]
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.gp = load i32, ptr %i.go, align 8, !tbaa !56
  %i.gq = icmp eq i32 %i.gp, 11
  %or.cond8 = select i1 %i.gq, i1 %i.fd, i1 false
  br i1 %or.cond8, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.gr = load ptr, ptr %i.a, align 8, !tbaa !41  ; 7 uses
  store ptr %i.gr, ptr %i.b, align 8, !tbaa !41
  %i.gs = load ptr, ptr %1, align 8, !tbaa !41    ; 2 uses
  %.not282 = icmp eq i32 %i.o, 0
  br i1 %.not282, label %._crit_edge276, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.ba
  %i.gt = add nuw nsw i32 %i.m, 7
  %i.gu = lshr i32 %i.gt, 3                       ; 2 uses
  %i.gv = mul i32 %i.gu, %i.s                     ; 6 uses
  %.not283 = icmp eq i32 %i.gu, 0
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.gx = add i32 %i.m, 15
  %i.gy = lshr i32 %i.gx, 3
  %i.gz = mul i32 %i.gy, %i.s
  %i.ha = zext i32 %i.gz to i64                   ; 4 uses
  br i1 %.not283, label %._crit_edge276, label %.preheader.lr.ph.split.us

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  %i.hb = icmp eq i32 %i.r, 16777216
  br i1 %i.hb, label %.preheader.us.us.preheader, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph.split.us
  %umax292 = tail call i32 @llvm.umax.i32(i32 %i.gv, i32 1)
  %wide.trip.count293 = zext i32 %umax292 to i64  ; 10 uses
  %i.hc = shl nuw nsw i64 %wide.trip.count293, 1
  %i.hd = add i32 %i.p, -1
  %i.he = zext i32 %i.hd to i64
  %i.hf = mul nuw i64 %i.ha, %i.he
  %i.hg = getelementptr i8, ptr %i.gr, i64 %i.hf
  %scevgep356 = getelementptr i8, ptr %i.hg, i64 %wide.trip.count293
  %min.iters.check361 = icmp ult i32 %i.gv, 4
  %min.iters.check362 = icmp ult i32 %i.gv, 16
  %i.hh = and i64 %wide.trip.count293, 12
  %n.vec364 = and i64 %wide.trip.count293, 4294967280 ; 4 uses
  %cmp.n372 = icmp eq i64 %n.vec364, %wide.trip.count293
end_hunk_0
