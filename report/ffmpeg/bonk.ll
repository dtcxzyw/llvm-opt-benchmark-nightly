Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/bonk?download=true
inline.NumInlined: 26
inline.NumDeleted: 13
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [5 x i8] c"bonk\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Bonk audio\00", align 1
@ff_bonk_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 1, i32 86113, i32 34, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 2, i8 0, i8 0, i8 1, i32 26744, ptr null, ptr null, ptr null, ptr @bonk_init, %union.anon { ptr @bonk_decode }, ptr @bonk_close, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"Unsupported version.\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Assertion %s failed at %s:%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"steplet >= 0\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"libavcodec/bonk.c\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"actual_run >= 0\00", align 1

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -1094995529, 1) i32 @bonk_init(ptr noundef initializes((348, 352)) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 348
  store i32 6, ptr %i.c, align 4, !tbaa !55
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load i32, ptr %i.d, align 8, !tbaa !56
  %i.f = icmp slt i32 %i.e, 17
  br i1 %i.f, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !57   ; 7 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !29
  %.not = icmp eq i8 %i.i, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.2) #7
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.k = load i32, ptr %i.j, align 4, !tbaa !30   ; 4 uses
  %i.l = add i32 %i.k, -3
  %or.cond = icmp ult i32 %i.l, -2
  br i1 %or.cond, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.n = load i32, ptr %i.m, align 1, !tbaa !29   ; 2 uses
  %i.o = udiv i32 %i.n, %i.k
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.not61 = icmp ugt i32 %i.k, %i.n
  %spec.select = select i1 %.not61, i64 -1, i64 %i.p
  store i64 %spec.select, ptr %i.q, align 8, !tbaa !34
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 10
  %i.s = load i8, ptr %i.r, align 1, !tbaa !29
  %i.t = icmp ne i8 %i.s, 0
  %i.u = zext i1 %i.t to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i32 %i.u, ptr %i.v, align 8, !tbaa !35
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 11
  %i.x = load i8, ptr %i.w, align 1, !tbaa !29
  %i.y = icmp ne i8 %i.x, 0
  %i.z = zext i1 %i.y to i32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !36
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.ac = load i16, ptr %i.ab, align 1, !tbaa !29 ; 2 uses
  %i.ad = zext i16 %i.ac to i32                   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 %i.ad, ptr %i.ae, align 8, !tbaa !37
  %i.af = add i16 %i.ac, -2049
  %or.cond70 = icmp ult i16 %i.af, -2048
  br i1 %or.cond70, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 14
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !29  ; 2 uses
  %i.ai = zext i8 %i.ah to i32                    ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 76 ; 3 uses
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !38
  %.not63 = icmp eq i8 %i.ah, 0
  br i1 %.not63, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 15
  %i.al = load i16, ptr %i.ak, align 1, !tbaa !29 ; 2 uses
  %i.am = zext i16 %i.al to i32                   ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 4 uses
  store i32 %i.am, ptr %i.an, align 8, !tbaa !39
  %.not64 = icmp eq i16 %i.al, 0
  br i1 %.not64, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = mul nuw nsw i32 %i.am, %i.ai
  %i.ap = icmp samesign ult i32 %i.ao, %i.ad
  br i1 %i.ap, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = mul nuw nsw i32 %i.k, %i.ai
  %i.ar = mul nuw nsw i32 %i.aq, %i.am            ; 2 uses
  %i.as = shl nuw nsw i32 %i.ar, 4
  %i.at = zext nneg i32 %i.as to i64              ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  store i64 %i.at, ptr %i.au, align 8, !tbaa !40
  %i.av = icmp samesign ugt i32 %i.ar, 16777215
  br i1 %i.av, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = add nuw nsw i64 %i.at, 64
  %i.ax = tail call noalias ptr @av_calloc(i64 noundef %i.aw, i64 noundef 1) #7 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !41
  %.not65 = icmp eq ptr %i.ax, null
  br i1 %.not65, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = load i32, ptr %i.an, align 8, !tbaa !39
  %i.ba = sext i32 %i.az to i64
  %i.bb = tail call noalias ptr @av_calloc(i64 noundef %i.ba, i64 noundef 4) #7 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 24680
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !42
  %.not66 = icmp eq ptr %i.bb, null
  br i1 %.not66, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bd = load i32, ptr %i.an, align 8, !tbaa !39
  %i.be = load i32, ptr %i.aj, align 4, !tbaa !38
  %i.bf = mul nsw i32 %i.be, %i.bd
  %i.bg = sext i32 %i.bf to i64
  %i.bh = tail call noalias ptr @av_calloc(i64 noundef %i.bg, i64 noundef 4) #7
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 24664 ; 2 uses
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !43
  %i.bj = load i32, ptr %i.an, align 8, !tbaa !39
  %i.bk = load i32, ptr %i.aj, align 4, !tbaa !38
  %i.bl = mul nsw i32 %i.bk, %i.bj
  %i.bm = sext i32 %i.bl to i64
  %i.bn = tail call noalias ptr @av_calloc(i64 noundef %i.bm, i64 noundef 4) #7 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 24672
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !43
  %i.bp = load ptr, ptr %i.bi, align 8, !tbaa !43
  %.not67 = icmp eq ptr %i.bp, null
  %.not68 = icmp eq ptr %i.bn, null
  %or.cond71 = select i1 %.not67, i1 true, i1 %.not68
  br i1 %or.cond71, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bq = load i64, ptr %i.au, align 8, !tbaa !40
  %i.br = shl nsw i64 %i.bq, 3
  %i.bs = tail call noalias ptr @av_calloc(i64 noundef %i.br, i64 noundef 8) #7 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 26736
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !44
  %.not69 = icmp eq ptr %i.bs, null
  br i1 %.not69, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.m
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 24688
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.preheader
  %index = phi i64 [ 0, %.preheader ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %.preheader ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.bv = trunc <16 x i64> %vec.ind to <16 x i32>
  %i.bw = add <16 x i32> %i.bv, splat (i32 1)
  %i.bx = uitofp nneg <16 x i32> %i.bw to <16 x double>
  %i.by = tail call nsz <16 x double> @llvm.sqrt.v16f64(<16 x double> %i.bx)
  %i.bz = fptoui <16 x double> %i.by to <16 x i8>
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 %index
  store <16 x i8> %i.bz, ptr %i.ca, align 1, !tbaa !29
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nuw nsw <16 x i64> %vec.ind, splat (i64 16)
  %i.cb = icmp eq i64 %index.next, 512
  br i1 %i.cb, label %.loopexit, label %vector.body, !llvm.loop !54

.loopexit:                                        ; preds = %vector.body, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.a, %bb.c
  %.056 = phi i32 [ -22, %bb.e ], [ -1094995529, %bb.c ], [ -22, %bb.a ], [ -1094995529, %bb.d ], [ -22, %bb.g ], [ -1094995529, %bb.h ], [ -12, %bb.m ], [ -12, %bb.l ], [ -12, %bb.k ], [ -12, %bb.j ], [ -1094995529, %bb.i ], [ -22, %bb.f ], [ 0, %vector.body ]
  ret i32 %.056
}

; Function Attrs: nounwind uwtable
define internal i32 @bonk_decode(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 33 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !81   ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.f = load i32, ptr %i.e, align 8, !tbaa !48
  %.not191 = icmp eq i32 %i.f, 0
  br i1 %.not191, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !34
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  store i32 0, ptr %2, align 4, !tbaa !49
  %i.j = load i32, ptr %i.c, align 8, !tbaa !81
  br label %.thread223

bb.e:                                             ; preds = %bb.c
  %i.k = sext i32 %i.d to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !40   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 7 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !48   ; 3 uses
  %i.p = sext i32 %i.o to i64                     ; 2 uses
  %i.q = sub nsw i64 %i.m, %i.p
  %i.r = tail call i64 @llvm.smin.i64(i64 %i.q, i64 %i.k) ; 2 uses
  %i.s = trunc i64 %i.r to i32                    ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 52 ; 6 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !82   ; 3 uses
  %i.v = add i32 %i.o, 64
  %i.w = add i32 %i.v, %i.u
  %i.x = add i32 %i.w, %i.s
  %i.y = sext i32 %i.x to i64
  %i.z = icmp slt i64 %i.m, %i.y
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !41 ; 2 uses
  %i.ac = sext i32 %i.u to i64
  %i.ad = getelementptr inbounds i8, ptr %i.ab, i64 %i.ac
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ab, ptr align 1 %i.ad, i64 %i.p, i1 false)
  store i32 0, ptr %i.t, align 4, !tbaa !82
  %.pre304.pre = load i32, ptr %i.n, align 8, !tbaa !48
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pre304 = phi i32 [ %.pre304.pre, %bb.f ], [ %i.o, %bb.e ] ; 2 uses
  %i.ae = phi i32 [ 0, %bb.f ], [ %i.u, %bb.e ]   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !83 ; 2 uses
  %.not192 = icmp eq ptr %i.ag, null
  br i1 %.not192, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !41
  %i.aj = add nsw i32 %.pre304, %i.ae
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds i8, ptr %i.ai, i64 %i.ak
  %sext = shl i64 %i.r, 32
  %i.am = ashr exact i64 %sext, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.al, ptr nonnull align 1 %i.ag, i64 %i.am, i1 false)
  %.pre = load i32, ptr %i.t, align 4, !tbaa !82
  %.pre303 = load i32, ptr %i.n, align 8, !tbaa !48
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.an = phi i32 [ %.pre303, %bb.h ], [ %.pre304, %bb.g ]
  %i.ao = phi i32 [ %.pre, %bb.h ], [ %i.ae, %bb.g ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !41 ; 2 uses
  %i.ar = sext i32 %i.ao to i64
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 %i.ar
  %i.at = add nsw i32 %i.an, %i.s                 ; 5 uses
  store i32 %i.at, ptr %i.n, align 8, !tbaa !48
  %i.au = sext i32 %i.at to i64
  %i.av = load i64, ptr %i.l, align 8, !tbaa !40
  %i.aw = icmp sgt i64 %i.av, %i.au
  br i1 %i.aw, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ax = load ptr, ptr %i.af, align 8, !tbaa !83
  %.not193 = icmp eq ptr %i.ax, null
  br i1 %.not193, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %2, align 4, !tbaa !49
  br label %.thread223

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !39
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 76 ; 4 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !38
  %i.bc = mul nsw i32 %i.bb, %i.az
  %i.bd = sext i32 %i.bc to i64
  %i.be = load i64, ptr %i.g, align 8, !tbaa !34
  %i.bf = tail call i64 @llvm.umin.i64(i64 %i.be, i64 %i.bd)
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 7 uses
  store i32 %i.bg, ptr %i.bh, align 8, !tbaa !88
  %i.bi = tail call i32 @ff_get_buffer(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0) #7
  %i.bj = icmp slt i32 %i.bi, 0
  br i1 %i.bj, label %.loopexit234, label %bb.m

bb.m:                                             ; preds = %bb.l
  %or.cond.i = icmp ugt i32 %i.at, 268435455
  %i.bk = shl nuw nsw i32 %i.at, 3
  %i.bl = select i1 %or.cond.i, i32 -8, i32 %i.bk ; 2 uses
  %or.cond.i.i = icmp ult i32 %i.bl, 2147483135   ; 2 uses
  %i.bm = icmp ne ptr %i.aq, null
  %or.cond3.i.i = and i1 %i.bm, %or.cond.i.i      ; 2 uses
  %.014.i.i = select i1 %or.cond.i.i, ptr %i.as, ptr null
  %.013.i.i = select i1 %or.cond3.i.i, i32 %i.bl, i32 0 ; 2 uses
  store ptr %.014.i.i, ptr %i.b, align 8, !tbaa !50
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 %.013.i.i, ptr %i.bn, align 4, !tbaa !51
  %i.bo = add nuw nsw i32 %.013.i.i, 8            ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i32 %i.bo, ptr %i.bp, align 8, !tbaa !52
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  store i32 0, ptr %i.bq, align 8, !tbaa !53
  br i1 %or.cond3.i.i, label %bb.n, label %.loopexit234

bb.n:                                             ; preds = %bb.m
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !89
  %i.bt = tail call i32 @llvm.umin.i32(i32 %i.bo, i32 %i.bs)
  store i32 %i.bt, ptr %i.bq, align 8, !tbaa !53
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 16468 ; 9 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 5 uses
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !37
  %i.bx = tail call fastcc i32 @intlist_read(ptr noundef nonnull %i.b, ptr noundef nonnull %i.bu, i32 noundef %i.bw, i32 noundef 0)
  %i.by = icmp slt i32 %i.bx, 0
  br i1 %i.by, label %.loopexit234, label %.preheader235

.preheader235:                                    ; preds = %bb.n
  %i.bz = load i32, ptr %i.bv, align 8, !tbaa !37 ; 4 uses
  %i.ca = icmp sgt i32 %i.bz, 0
  br i1 %i.ca, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader235
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 24688 ; 3 uses
  %i.cc = zext nneg i32 %i.bz to i64              ; 5 uses
  %min.iters.check = icmp ult i32 %i.bz, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.cd = shl nuw nsw i64 %i.cc, 2
  %i.ce = getelementptr i8, ptr %i.b, i64 %i.cd
  %i.cf = getelementptr i8, ptr %i.ce, i64 16468
  %i.cg = getelementptr i8, ptr %i.b, i64 %i.cc
  %i.ch = getelementptr i8, ptr %i.cg, i64 24688
  %bound0 = icmp ult ptr %i.bu, %i.ch
  %bound1 = icmp ult ptr %i.cb, %i.cf
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cc, 2147483640              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 %index ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  %wide.load = load <4 x i8>, ptr %i.ci, align 1, !tbaa !29, !alias.scope !90
  %wide.load352 = load <4 x i8>, ptr %i.cj, align 1, !tbaa !29, !alias.scope !90
  %i.ck = zext <4 x i8> %wide.load to <4 x i32>
  %i.cl = zext <4 x i8> %wide.load352 to <4 x i32>
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %index ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16 ; 2 uses
  %wide.load353 = load <4 x i32>, ptr %i.cm, align 4, !tbaa !49, !alias.scope !91, !noalias !90
  %wide.load354 = load <4 x i32>, ptr %i.cn, align 4, !tbaa !49, !alias.scope !91, !noalias !90
  %i.co = mul nsw <4 x i32> %wide.load353, %i.ck
  %i.cp = mul nsw <4 x i32> %wide.load354, %i.cl
  store <4 x i32> %i.co, ptr %i.cm, align 4, !tbaa !49, !alias.scope !91, !noalias !90
  store <4 x i32> %i.cp, ptr %i.cn, align 4, !tbaa !49, !alias.scope !91, !noalias !90
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cq = icmp eq i64 %index.next, %n.vec
  br i1 %i.cq, label %middle.block, label %vector.body, !llvm.loop !61

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.cc
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %.preheader235
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 3 uses
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !35
  %.not194 = icmp eq i32 %i.cs, 0
  br i1 %.not194, label %bb.o, label %bb.p

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cb, i64 %indvars.iv
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !29
  %i.cv = zext i8 %i.cu to i32
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !49
  %i.cy = mul nsw i32 %i.cx, %i.cv
  store i32 %i.cy, ptr %i.cw, align 4, !tbaa !49
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cz = icmp samesign ult i64 %indvars.iv.next, %i.cc
  br i1 %i.cz, label %scalar.ph, label %._crit_edge, !llvm.loop !62

bb.o:                                             ; preds = %._crit_edge
  %i.da = load i32, ptr %i.bq, align 8, !tbaa !53 ; 3 uses
  %i.db = load i32, ptr %i.bp, align 8, !tbaa !52
  %i.dc = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.dd = lshr i32 %i.da, 3
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 1, !tbaa !29
  %i.dh = and i32 %i.da, 7
  %i.di = lshr i32 %i.dg, %i.dh
  %i.dj = add i32 %i.da, 16
  %i.dk = tail call i32 @llvm.umin.i32(i32 %i.db, i32 %i.dj)
  store i32 %i.dk, ptr %i.bq, align 8, !tbaa !53
  %i.dl = shl i32 %i.di, 4
  %i.dm = and i32 %i.dl, 1048560
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge, %bb.o
  %i.dn = phi i32 [ %i.dm, %bb.o ], [ 1, %._crit_edge ]
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 356 ; 4 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !30 ; 2 uses
  %i.dq = icmp sgt i32 %i.dp, 0
  br i1 %i.dq, label %.lr.ph253, label %._crit_edge254

.lr.ph253:                                        ; preds = %bb.p
  %i.dr = getelementptr i8, ptr %i.b, i64 84
  %i.ds = getelementptr inbounds nuw i8, ptr %i.b, i64 24664
  %i.dt = getelementptr inbounds nuw i8, ptr %i.b, i64 24680 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph253, %._crit_edge250
  %i.du = phi i32 [ %i.bz, %.lr.ph253 ], [ %i.fd, %._crit_edge250 ] ; 4 uses
  %indvars.iv281 = phi i64 [ 0, %.lr.ph253 ], [ %indvars.iv.next282, %._crit_edge250 ] ; 4 uses
  %i.dv = load i32, ptr %i.ay, align 8, !tbaa !39 ; 4 uses
  %i.dw = load i32, ptr %i.ba, align 4, !tbaa !38
  %i.dx = mul i32 %i.dw, %i.dv                    ; 4 uses
  %i.dy = getelementptr [8192 x i8], ptr %i.dr, i64 %indvars.iv281 ; 11 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %indvars.iv281 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !43
  %i.eb = icmp sgt i32 %i.du, 1
  br i1 %i.eb, label %.lr.ph30.preheader.i, label %predictor_init_state.exit

.lr.ph30.preheader.i:                             ; preds = %bb.q
  %i.ec = add nsw i32 %i.du, -2
  %i.ed = add nsw i32 %i.du, -1
  %i.ee = zext nneg i32 %i.ed to i64
  %i.ef = zext nneg i32 %i.ec to i64
  %i.eg = zext nneg i32 %i.du to i64
  br label %.lr.ph30.i

.lr.ph30.i:                                       ; preds = %._crit_edge.i.loopexit, %.lr.ph30.preheader.i
  %indvars.iv43.i = phi i64 [ %i.ef, %.lr.ph30.preheader.i ], [ %indvars.iv.next44.i, %._crit_edge.i.loopexit ] ; 2 uses
  %indvars.iv41.i = phi i64 [ 1, %.lr.ph30.preheader.i ], [ %indvars.iv.next42.i, %._crit_edge.i.loopexit ] ; 2 uses
  %indvars.iv.i = phi i64 [ %i.ee, %.lr.ph30.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i.loopexit ] ; 2 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv43.i
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !49
  br label %.lr.ph.i

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i
  %indvars.iv.next44.i = add nsw i64 %indvars.iv43.i, -1
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %indvars.iv.next42.i = add nuw nsw i64 %indvars.iv41.i, 1 ; 2 uses
  %exitcond50.not.i = icmp eq i64 %indvars.iv.next42.i, %i.eg
  br i1 %exitcond50.not.i, label %predictor_init_state.exit, label %.lr.ph30.i, !llvm.loop !63

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph30.i
  %indvars.iv34.i = phi i64 [ 0, %.lr.ph30.i ], [ %indvars.iv.next35.i, %.lr.ph.i ] ; 2 uses
  %indvars.iv32.i = phi i64 [ %indvars.iv.i, %.lr.ph30.i ], [ %indvars.iv.next33.i, %.lr.ph.i ] ; 2 uses
  %.02225.i = phi i32 [ %i.ei, %.lr.ph30.i ], [ %i.eq, %.lr.ph.i ] ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv34.i
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !49 ; 2 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv32.i ; 2 uses
  %i.em = load i32, ptr %i.el, align 4, !tbaa !49 ; 2 uses
  %i.en = mul i32 %i.em, %i.ek                    ; 2 uses
  %i.eo = ashr i32 %i.en, 10
  %.lobit.i.i = lshr i32 %i.en, 31
  %i.ep = add i32 %.lobit.i.i, %.02225.i
  %i.eq = add i32 %i.ep, %i.eo
  %i.er = mul i32 %i.ek, %.02225.i                ; 2 uses
  %i.es = ashr i32 %i.er, 10
  %.lobit.i23.i = lshr i32 %i.er, 31
  %i.et = add i32 %.lobit.i23.i, %i.em
  %i.eu = add i32 %i.et, %i.es
  store i32 %i.eu, ptr %i.el, align 4, !tbaa !49
  %indvars.iv.next35.i = add nuw nsw i64 %indvars.iv34.i, 1 ; 2 uses
  %indvars.iv.next33.i = add nuw nsw i64 %indvars.iv32.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next35.i, %indvars.iv41.i
  br i1 %exitcond.not.i, label %._crit_edge.i.loopexit, label %.lr.ph.i, !llvm.loop !64

predictor_init_state.exit:                        ; preds = %._crit_edge.i.loopexit, %bb.q
  %i.ev = load ptr, ptr %i.dt, align 8, !tbaa !42
  %i.ew = tail call fastcc i32 @intlist_read(ptr noundef nonnull %i.b, ptr noundef %i.ev, i32 noundef %i.dv, i32 noundef 1)
  %i.ex = icmp sgt i32 %i.ew, -1
  br i1 %i.ex, label %.preheader233, label %.loopexit234

.preheader233:                                    ; preds = %predictor_init_state.exit
  %i.ey = icmp sgt i32 %i.dv, 0
  br i1 %i.ey, label %.preheader232.lr.ph, label %._crit_edge246

.preheader232.lr.ph:                              ; preds = %.preheader233
  %i.ez = load ptr, ptr %i.dt, align 8, !tbaa !42
  %wide.trip.count = zext nneg i32 %i.dv to i64
  br label %.preheader232

.preheader232:                                    ; preds = %.preheader232.lr.ph, %predictor_calc_error.exit
  %indvars.iv275 = phi i64 [ 0, %.preheader232.lr.ph ], [ %indvars.iv.next276, %predictor_calc_error.exit ] ; 2 uses
  %.0179244 = phi ptr [ %i.ea, %.preheader232.lr.ph ], [ %i.hi, %predictor_calc_error.exit ] ; 2 uses
  %i.fa = load i32, ptr %i.ba, align 4, !tbaa !38
  %i.fb = icmp sgt i32 %i.fa, 1
  br i1 %i.fb, label %.lr.ph242, label %._crit_edge243

._crit_edge246:                                   ; preds = %predictor_calc_error.exit, %.preheader233
  %i.fc = load ptr, ptr %i.dz, align 8, !tbaa !43 ; 4 uses
  %i.fd = load i32, ptr %i.bv, align 8, !tbaa !37 ; 4 uses
  %i.fe = icmp sgt i32 %i.fd, 0
  br i1 %i.fe, label %.lr.ph249.preheader, label %._crit_edge250

.lr.ph249.preheader:                              ; preds = %._crit_edge246
  %i.ff = zext nneg i32 %i.fd to i64              ; 5 uses
  %min.iters.check363 = icmp ult i32 %i.fd, 16
  br i1 %min.iters.check363, label %.lr.ph249.preheader389, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph249.preheader
  %i.fg = add nsw i64 %i.ff, -1                   ; 2 uses
  %i.fh = add i32 %i.dx, -1                       ; 2 uses
  %i.fi = trunc nsw i64 %i.fg to i32
  %i.fj = sub i32 %i.fh, %i.fi
  %i.fk = icmp sgt i32 %i.fj, %i.fh
  %i.fl = icmp ugt i64 %i.fg, 4294967295
  %i.fm = or i1 %i.fk, %i.fl
  br i1 %i.fm, label %.lr.ph249.preheader389, label %vector.memcheck355

vector.memcheck355:                               ; preds = %vector.scevcheck
  %4 = shl nuw nsw i64 %indvars.iv281, 13
  %i.fn = shl nuw nsw i64 %i.ff, 2                ; 2 uses
  %5 = getelementptr i8, ptr %i.b, i64 %4
  %scevgep = getelementptr i8, ptr %5, i64 84
  %scevgep356 = getelementptr i8, ptr %scevgep, i64 %i.fn
  %i.fo = add i32 %i.dx, -1
  %i.fp = sext i32 %i.fo to i64
  %i.fq = shl nsw i64 %i.fp, 2
  %6 = add nsw i64 %i.fq, 4                       ; 2 uses
  %i.fr = sub nsw i64 %6, %i.fn
  %scevgep357 = getelementptr i8, ptr %i.fc, i64 %i.fr
  %scevgep358 = getelementptr i8, ptr %i.fc, i64 %6
  %bound0359 = icmp ult ptr %i.dy, %scevgep358
  %bound1360 = icmp ult ptr %scevgep357, %scevgep356
  %found.conflict361 = and i1 %bound0359, %bound1360
  br i1 %found.conflict361, label %.lr.ph249.preheader389, label %vector.ph364

vector.ph364:                                     ; preds = %vector.memcheck355
  %n.vec365 = and i64 %i.ff, 2147483640           ; 3 uses
  br label %vector.body366

vector.body366:                                   ; preds = %vector.body366, %vector.ph364
  %index367 = phi i64 [ 0, %vector.ph364 ], [ %index.next371, %vector.body366 ] ; 3 uses
  %i.fs = trunc nuw nsw i64 %index367 to i32
  %i.ft = xor i32 %i.fs, -1
  %i.fu = add i32 %i.dx, %i.ft
  %i.fv = sext i32 %i.fu to i64
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.fc, i64 %i.fv ; 2 uses
  %i.fx = getelementptr inbounds i8, ptr %i.fw, i64 -12
  %i.fy = getelementptr inbounds i8, ptr %i.fw, i64 -28
  %wide.load368 = load <4 x i32>, ptr %i.fx, align 4, !tbaa !49, !alias.scope !92
  %wide.load369 = load <4 x i32>, ptr %i.fy, align 4, !tbaa !49, !alias.scope !92
  %reverse = shufflevector <4 x i32> %wide.load368, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse370 = shufflevector <4 x i32> %wide.load369, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %index367 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  store <4 x i32> %reverse, ptr %i.fz, align 4, !tbaa !49, !alias.scope !93, !noalias !92
  store <4 x i32> %reverse370, ptr %i.ga, align 4, !tbaa !49, !alias.scope !93, !noalias !92
  %index.next371 = add nuw i64 %index367, 8       ; 2 uses
  %i.gb = icmp eq i64 %index.next371, %n.vec365
  br i1 %i.gb, label %middle.block372, label %vector.body366, !llvm.loop !68

middle.block372:                                  ; preds = %vector.body366
  %cmp.n373 = icmp eq i64 %n.vec365, %i.ff
  br i1 %cmp.n373, label %._crit_edge250, label %.lr.ph249.preheader389

.lr.ph249.preheader389:                           ; preds = %vector.memcheck355, %vector.scevcheck, %.lr.ph249.preheader, %middle.block372
  %indvars.iv278.ph = phi i64 [ 0, %vector.memcheck355 ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph249.preheader ], [ %n.vec365, %middle.block372 ]
  br label %.lr.ph249

._crit_edge243:                                   ; preds = %predictor_calc_error.exit221, %.preheader232
  %.1.lcssa = phi ptr [ %.0179244, %.preheader232 ], [ %i.im, %predictor_calc_error.exit221 ] ; 2 uses
  %i.gc = load i32, ptr %i.bv, align 8, !tbaa !37 ; 3 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %indvars.iv275
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !49
  %i.gf = mul i32 %i.ge, %i.dn
  %i.gg = add nsw i32 %i.gc, -1
  %i.gh = sext i32 %i.gg to i64                   ; 2 uses
  %i.gi = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.gh
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !49
  %i.gk = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.gh
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !49
  %i.gm = mul i32 %i.gl, %i.gj                    ; 2 uses
  %i.gn = ashr i32 %i.gm, 10
  %.lobit.i.neg38.i = ashr i32 %i.gm, 31
  %.neg31.i = add i32 %.lobit.i.neg38.i, %i.gf
  %i.go = sub i32 %.neg31.i, %i.gn                ; 2 uses
  %i.gp = icmp sgt i32 %i.gc, 1
  br i1 %i.gp, label %.lr.ph.preheader.i203, label %predictor_calc_error.exit

.lr.ph.preheader.i203:                            ; preds = %._crit_edge243
  %i.gq = add nsw i32 %i.gc, -2                   ; 2 uses
  %i.gr = zext nneg i32 %i.gq to i64              ; 2 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.gr
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.gr
  br label %.lr.ph.i204

.lr.ph.i204:                                      ; preds = %.lr.ph.i204, %.lr.ph.preheader.i203
  %.037.i = phi i32 [ %i.he, %.lr.ph.i204 ], [ %i.gq, %.lr.ph.preheader.i203 ] ; 2 uses
  %.02636.i = phi i32 [ %i.gy, %.lr.ph.i204 ], [ %i.go, %.lr.ph.preheader.i203 ]
  %.02735.i = phi ptr [ %i.hg, %.lr.ph.i204 ], [ %i.gs, %.lr.ph.preheader.i203 ] ; 3 uses
  %.02834.i = phi ptr [ %i.hf, %.lr.ph.i204 ], [ %i.gt, %.lr.ph.preheader.i203 ] ; 2 uses
  %i.gu = load i32, ptr %.02834.i, align 4, !tbaa !49 ; 2 uses
  %i.gv = load i32, ptr %.02735.i, align 4, !tbaa !49 ; 2 uses
  %i.gw = mul i32 %i.gv, %i.gu                    ; 2 uses
  %i.gx = ashr i32 %i.gw, 10
  %.lobit.i29.neg39.i = ashr i32 %i.gw, 31
  %.neg33.i = add i32 %.lobit.i29.neg39.i, %.02636.i
  %i.gy = sub i32 %.neg33.i, %i.gx                ; 3 uses
  %i.gz = mul i32 %i.gy, %i.gu                    ; 2 uses
  %i.ha = ashr i32 %i.gz, 10
  %.lobit.i30.i = lshr i32 %i.gz, 31
  %i.hb = add i32 %.lobit.i30.i, %i.gv
  %i.hc = add i32 %i.hb, %i.ha
  %i.hd = getelementptr inbounds nuw i8, ptr %.02735.i, i64 4
  store i32 %i.hc, ptr %i.hd, align 4, !tbaa !49
  %i.he = add nsw i32 %.037.i, -1
  %i.hf = getelementptr inbounds i8, ptr %.02834.i, i64 -4
  %i.hg = getelementptr inbounds i8, ptr %.02735.i, i64 -4
  %.not.i205 = icmp eq i32 %.037.i, 0
  br i1 %.not.i205, label %predictor_calc_error.exit, label %.lr.ph.i204, !llvm.loop !69

predictor_calc_error.exit:                        ; preds = %.lr.ph.i204, %._crit_edge243
  %.026.lcssa.i = phi i32 [ %i.go, %._crit_edge243 ], [ %i.gy, %.lr.ph.i204 ]
  %i.hh = tail call i32 @llvm.smax.i32(i32 %.026.lcssa.i, i32 -1048576)
  %.0.i.i202 = tail call i32 @llvm.smin.i32(i32 %i.hh, i32 1048576) ; 2 uses
  store i32 %.0.i.i202, ptr %i.dy, align 4, !tbaa !49
  store i32 %.0.i.i202, ptr %.1.lcssa, align 4, !tbaa !49
  %i.hi = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 4
  %indvars.iv.next276 = add nuw nsw i64 %indvars.iv275, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next276, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge246, label %.preheader232, !llvm.loop !70

.lr.ph242:                                        ; preds = %.preheader232, %predictor_calc_error.exit221
  %.0177241 = phi i32 [ %i.in, %predictor_calc_error.exit221 ], [ 0, %.preheader232 ]
  %.1240 = phi ptr [ %i.im, %predictor_calc_error.exit221 ], [ %.0179244, %.preheader232 ] ; 2 uses
  %i.hj = load i32, ptr %i.bv, align 8, !tbaa !37 ; 3 uses
  %i.hk = add nsw i32 %i.hj, -1
  %i.hl = sext i32 %i.hk to i64                   ; 2 uses
  %i.hm = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.hl
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !49
  %i.ho = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.hl
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !49
  %i.hq = mul i32 %i.hp, %i.hn                    ; 2 uses
  %i.hr = ashr i32 %i.hq, 10
  %.lobit.i.neg38.i206 = ashr i32 %i.hq, 31
  %i.hs = sub nsw i32 %.lobit.i.neg38.i206, %i.hr ; 2 uses
  %i.ht = icmp sgt i32 %i.hj, 1
  br i1 %i.ht, label %.lr.ph.preheader.i211, label %predictor_calc_error.exit221

.lr.ph.preheader.i211:                            ; preds = %.lr.ph242
  %i.hu = add nsw i32 %i.hj, -2                   ; 2 uses
  %i.hv = zext nneg i32 %i.hu to i64              ; 2 uses
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.hv
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.hv
  br label %.lr.ph.i212

.lr.ph.i212:                                      ; preds = %.lr.ph.i212, %.lr.ph.preheader.i211
  %.037.i213 = phi i32 [ %i.ii, %.lr.ph.i212 ], [ %i.hu, %.lr.ph.preheader.i211 ] ; 2 uses
  %.02636.i214 = phi i32 [ %i.ic, %.lr.ph.i212 ], [ %i.hs, %.lr.ph.preheader.i211 ]
  %.02735.i215 = phi ptr [ %i.ik, %.lr.ph.i212 ], [ %i.hw, %.lr.ph.preheader.i211 ] ; 3 uses
  %.02834.i216 = phi ptr [ %i.ij, %.lr.ph.i212 ], [ %i.hx, %.lr.ph.preheader.i211 ] ; 2 uses
  %i.hy = load i32, ptr %.02834.i216, align 4, !tbaa !49 ; 2 uses
  %i.hz = load i32, ptr %.02735.i215, align 4, !tbaa !49 ; 2 uses
  %i.ia = mul i32 %i.hz, %i.hy                    ; 2 uses
  %i.ib = ashr i32 %i.ia, 10
  %.lobit.i29.neg39.i217 = ashr i32 %i.ia, 31
  %.neg33.i218 = add i32 %.lobit.i29.neg39.i217, %.02636.i214
  %i.ic = sub i32 %.neg33.i218, %i.ib             ; 3 uses
  %i.id = mul i32 %i.ic, %i.hy                    ; 2 uses
  %i.ie = ashr i32 %i.id, 10
  %.lobit.i30.i219 = lshr i32 %i.id, 31
  %i.if = add i32 %.lobit.i30.i219, %i.hz
  %i.ig = add i32 %i.if, %i.ie
  %i.ih = getelementptr inbounds nuw i8, ptr %.02735.i215, i64 4
  store i32 %i.ig, ptr %i.ih, align 4, !tbaa !49
  %i.ii = add nsw i32 %.037.i213, -1
  %i.ij = getelementptr inbounds i8, ptr %.02834.i216, i64 -4
  %i.ik = getelementptr inbounds i8, ptr %.02735.i215, i64 -4
  %.not.i220 = icmp eq i32 %.037.i213, 0
  br i1 %.not.i220, label %predictor_calc_error.exit221, label %.lr.ph.i212, !llvm.loop !69

predictor_calc_error.exit221:                     ; preds = %.lr.ph.i212, %.lr.ph242
  %.026.lcssa.i209 = phi i32 [ %i.hs, %.lr.ph242 ], [ %i.ic, %.lr.ph.i212 ]
  %i.il = tail call i32 @llvm.smax.i32(i32 %.026.lcssa.i209, i32 -1048576)
  %.0.i.i210 = tail call i32 @llvm.smin.i32(i32 %i.il, i32 1048576) ; 2 uses
  store i32 %.0.i.i210, ptr %i.dy, align 4, !tbaa !49
  store i32 %.0.i.i210, ptr %.1240, align 4, !tbaa !49
  %i.im = getelementptr inbounds nuw i8, ptr %.1240, i64 4 ; 2 uses
  %i.in = add nuw nsw i32 %.0177241, 1            ; 2 uses
  %i.io = load i32, ptr %i.ba, align 4, !tbaa !38
  %i.ip = add nsw i32 %i.io, -1
  %i.iq = icmp slt i32 %i.in, %i.ip
  br i1 %i.iq, label %.lr.ph242, label %._crit_edge243, !llvm.loop !71

.lr.ph249:                                        ; preds = %.lr.ph249.preheader389, %.lr.ph249
  %indvars.iv278 = phi i64 [ %indvars.iv.next279, %.lr.ph249 ], [ %indvars.iv278.ph, %.lr.ph249.preheader389 ] ; 3 uses
  %i.ir = trunc nuw nsw i64 %indvars.iv278 to i32
  %i.is = xor i32 %i.ir, -1
  %i.it = add i32 %i.dx, %i.is
  %i.iu = sext i32 %i.it to i64
  %i.iv = getelementptr inbounds [4 x i8], ptr %i.fc, i64 %i.iu
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !49
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv278
  store i32 %i.iw, ptr %i.ix, align 4, !tbaa !49
  %indvars.iv.next279 = add nuw nsw i64 %indvars.iv278, 1 ; 2 uses
  %i.iy = icmp samesign ult i64 %indvars.iv.next279, %i.ff
  br i1 %i.iy, label %.lr.ph249, label %._crit_edge250, !llvm.loop !72

._crit_edge250:                                   ; preds = %.lr.ph249, %middle.block372, %._crit_edge246
  %indvars.iv.next282 = add nuw nsw i64 %indvars.iv281, 1 ; 2 uses
  %i.iz = load i32, ptr %i.do, align 4, !tbaa !30 ; 2 uses
  %i.ja = sext i32 %i.iz to i64
  %i.jb = icmp slt i64 %indvars.iv.next282, %i.ja
  br i1 %i.jb, label %bb.q, label %._crit_edge254, !llvm.loop !73

._crit_edge254:                                   ; preds = %._crit_edge250, %bb.p
  %i.jc = phi i32 [ %i.dp, %bb.p ], [ %i.iz, %._crit_edge250 ] ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !36
  %.not195 = icmp ne i32 %i.je, 0
  %i.jf = icmp eq i32 %i.jc, 2
  %or.cond = and i1 %.not195, %i.jf
  br i1 %or.cond, label %.preheader230, label %.loopexit231

.preheader230:                                    ; preds = %._crit_edge254
  %i.jg = load i32, ptr %i.bh, align 8, !tbaa !88
  %i.jh = icmp sgt i32 %i.jg, 0
  br i1 %i.jh, label %.lr.ph256, label %.loopexit231.thread

.lr.ph256:                                        ; preds = %.preheader230
  %i.ji = getelementptr inbounds nuw i8, ptr %i.b, i64 24664
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !43
  %i.jk = getelementptr inbounds nuw i8, ptr %i.b, i64 24672
end_hunk_0
