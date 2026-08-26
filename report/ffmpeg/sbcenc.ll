Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/sbcenc?download=true
inline.NumInlined: 9
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.AVProfile = type { i32, ptr }
%struct.AVChannelLayout = type { i32, i32, %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%union.anon = type { ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, ptr }
%union.anon.3 = type { i64 }

@.str = private unnamed_addr constant [4 x i8] c"sbc\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"SBC (low-complexity subband codec)\00", align 1
@ff_sbc_profiles = external constant [0 x %struct.AVProfile], align 8
@.compoundliteral = internal constant [3 x %struct.AVChannelLayout] [%struct.AVChannelLayout { i32 1, i32 1, %union.anon.2 { i64 4 }, ptr null }, %struct.AVChannelLayout { i32 1, i32 2, %union.anon.2 { i64 3 }, ptr null }, %struct.AVChannelLayout zeroinitializer], align 8
@sbc_samplerates = internal constant [5 x i32] [i32 16000, i32 32000, i32 44100, i32 48000, i32 0], align 16
@.compoundliteral.2 = internal constant [2 x i32] [i32 1, i32 -1], align 4
@ff_sbc_encoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 1, i32 86103, i32 1048642, i8 0, [3 x i8] zeroinitializer, ptr @sbc_class, ptr @ff_sbc_profiles, ptr null }, i8 0, i8 0, i8 0, i8 96, i32 2544, ptr null, ptr null, ptr null, ptr @sbc_encode_init, %union.anon { ptr @sbc_encode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 { %struct.anon.1 { ptr @.compoundliteral, ptr @sbc_samplerates, ptr @.compoundliteral.2 } } }, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"sbc encoder\00", align 1
@sbc_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.3, ptr @av_default_item_name, ptr @options, i32 3998052, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.5 = private unnamed_addr constant [10 x i8] c"sbc_delay\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"set maximum algorithmic latency\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"msbc\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"use mSBC mode (wideband speech mono SBC)\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"avctx.profile\00", align 1
@options = internal constant [4 x { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr }] [{ ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } { ptr @.str.5, ptr @.str.6, i32 8, i32 16, %union.anon.3 { i64 13000 }, double 1.000000e+03, double 1.300000e+04, i32 9, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } { ptr @.str.7, ptr @.str.8, i32 16, i32 18, %union.anon.3 zeroinitializer, double 0.000000e+00, double 1.000000e+00, i32 9, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } { ptr @.str.7, ptr null, i32 0, i32 11, %union.anon.3 { i64 1 }, double f0xC1E0000000000000, double f0x41DFFFFFFFC00000, i32 9, [4 x i8] zeroinitializer, ptr @.str.9 }, { ptr, ptr, i32, i32, %union.anon.3, double, double, i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.11 = private unnamed_addr constant [28 x i8] c"mSBC require mono channel.\0A\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"mSBC require 16 kHz samplerate.\0A\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"bitpool > 255 is not allowed.\0A\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"Invalid parameter combination\0A\00", align 1
@.str.15 = private unnamed_addr constant [43 x i8] c"Internal error, put_bits buffer too small\0A\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"Assertion %s failed at %s:%d\0A\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"s->buf_ptr < s->buf_end\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"libavcodec/put_bits.h\00", align 1

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -1163346256, 1) i32 @sbc_encode_init(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 23 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.e = load i32, ptr %i.d, align 8, !tbaa !29
  %i.f = icmp eq i32 %i.e, 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.f, label %.thread105, label %bb.b

.thread105:                                       ; preds = %bb.a
  store i32 1, ptr %i.g, align 16, !tbaa !30
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %.pre = load i32, ptr %i.g, align 16, !tbaa !30
  %i.i = icmp eq i32 %.pre, 0
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %.thread105, %bb.b
  %i.k = phi ptr [ %i.h, %.thread105 ], [ %i.j, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.m = load i32, ptr %i.l, align 4, !tbaa !35
  %.not85 = icmp eq i32 %i.m, 1
  br i1 %.not85, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.11) #8
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.o = load i32, ptr %i.n, align 8, !tbaa !36
  %.not86 = icmp eq i32 %i.o, 16000
  br i1 %.not86, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.12) #8
  br label %.thread

bb.g:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  store i32 0, ptr %i.p, align 4, !tbaa !37
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i8 8, ptr %i.q, align 16, !tbaa !38
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 33
  store i8 15, ptr %i.r, align 1, !tbaa !39
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  store i32 0, ptr %i.s, align 4, !tbaa !40
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 49
  store i8 26, ptr %i.t, align 1, !tbaa !41
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i32 120, ptr %i.u, align 8, !tbaa !42
  br label %bb.r

bb.h:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 420
  %i.w = load i32, ptr %i.v, align 4, !tbaa !43   ; 3 uses
  %i.x = icmp sgt i32 %i.w, 30090
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.13) #8
  br label %.thread

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.z = load i32, ptr %i.y, align 4, !tbaa !35   ; 4 uses
  %i.aa = icmp eq i32 %i.z, 1
  br i1 %i.aa, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  store i32 0, ptr %i.ab, align 4, !tbaa !37
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !44 ; 2 uses
  %i.ae = icmp slt i64 %i.ad, 3001
  %.phi.trans.insert96.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre97.pre = load i64, ptr %.phi.trans.insert96.phi.trans.insert, align 8, !tbaa !45 ; 2 uses
  %i.af = icmp sgt i64 %.pre97.pre, 270000
  %or.cond107 = select i1 %i.ae, i1 true, i1 %i.af
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !45 ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, 420000
  %i.aj = add i64 %i.ah, -420001
  %or.cond = icmp ult i64 %i.aj, -240001
  %spec.select = select i1 %or.cond, i32 3, i32 2 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  store i32 %spec.select, ptr %i.ak, align 4, !tbaa !37
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !44 ; 2 uses
  %i.an = icmp slt i64 %i.am, 4001
  %brmerge = or i1 %i.ai, %i.an
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %brmerge.sink = phi i1 [ %brmerge, %bb.l ], [ %or.cond107, %bb.k ] ; 5 uses
  %i.ao = phi i64 [ %i.ah, %bb.l ], [ %.pre97.pre, %bb.k ]
  %i.ap = phi i32 [ %spec.select, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %i.aq = phi i64 [ %i.am, %bb.l ], [ %i.ad, %bb.k ]
  %.109 = select i1 %brmerge.sink, i8 4, i8 8     ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i8 %.109, ptr %i.ar, align 16, !tbaa !38
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.at = load i32, ptr %i.as, align 8, !tbaa !36 ; 2 uses
  %i.au = sext i32 %i.at to i64                   ; 2 uses
  %i.av = mul nsw i64 %i.aq, %i.au
  %i.aw = add nsw i64 %i.av, 2
  %1 = select i1 %brmerge.sink, i64 4000000, i64 8000000
  %2 = sdiv i64 %i.aw, %1
  %i.ax = trunc i64 %2 to i32
  %i.ay = add i32 %i.ax, -10
  %i.az = tail call i32 @llvm.smax.i32(i32 %i.ay, i32 4)
  %i.ba = tail call i32 @llvm.umin.i32(i32 %i.az, i32 16) ; 4 uses
  %i.bb = trunc nuw nsw i32 %i.ba to i8
  %i.bc = and i8 %i.bb, 28                        ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 33
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !39
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  store i32 0, ptr %i.be, align 4, !tbaa !40
  %i.bf = and i32 %i.ba, 28                       ; 2 uses
  %i.bg = select i1 %brmerge.sink, i64 2, i64 3
  %i.bh = shl i64 %i.ao, %i.bg
  %i.bi = zext nneg i8 %i.bc to i64
  %i.bj = mul nsw i64 %i.bh, %i.bi
  %i.bk = sdiv i64 %i.bj, %i.au
  %i.bl = zext nneg i8 %.109 to i32               ; 2 uses
  %i.bm = shl i32 %i.z, 2
  %i.bn = select i1 %brmerge.sink, i32 2, i32 3
  %i.bo = shl i32 %i.bm, %i.bn
  %i.bp = sext i32 %i.bo to i64
  %i.bq = icmp eq i32 %i.ap, 3
  %i.br = select i1 %i.bq, i32 %i.bl, i32 0
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = lshr exact i32 %i.bf, 1
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = add i64 %i.bk, -32
  %i.bw = or disjoint i64 %i.bp, %i.bs
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = add nsw i64 %i.bx, %i.bu
  %i.bz = zext nneg i32 %i.bf to i64
  %i.ca = sdiv i64 %i.by, %i.bz
  %i.cb = trunc i64 %i.ca to i8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 49
  %i.cd = icmp sgt i32 %i.w, 0
  br i1 %i.cd, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %.lhs.trunc = trunc nuw nsw i32 %i.w to i16
  %i.ce = udiv i16 %.lhs.trunc, 118
  %i.cf = trunc nuw i16 %i.ce to i8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %storemerge = phi i8 [ %i.cf, %bb.n ], [ %i.cb, %bb.m ] ; 2 uses
  store i8 %storemerge, ptr %i.cc, align 1, !tbaa !41
  %i.cg = zext i8 %storemerge to i32
  %i.ch = icmp samesign ugt i32 %i.ap, 1
  %i.ci = select i1 %i.ch, i32 5, i32 4
  %i.cj = shl nuw nsw i32 %i.bl, %i.ci
  %i.ck = icmp samesign ult i32 %i.cj, %i.cg
  br i1 %i.ck, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.14) #8
  br label %.thread

bb.q:                                             ; preds = %bb.o
  %narrow = shl nuw nsw i8 %.109, 1
  %i.cl = and i8 %narrow, 16
  %i.cm = add nuw nsw i8 %i.cl, 16
  %i.cn = zext nneg i8 %i.cm to i32
  %i.co = lshr i32 %i.ba, 2
  %i.cp = mul nuw nsw i32 %i.co, %i.cn
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i32 %i.cp, ptr %i.cq, align 8, !tbaa !42
  %i.cr = and i32 %i.ba, 28
  %i.cs = select i1 %brmerge.sink, i32 2, i32 3
  %i.ct = shl i32 %i.z, %i.cs
  %i.cu = trunc i32 %i.z to i8
  %i.cv = mul i32 %i.ct, %i.cr
  %i.cw = trunc i32 %i.cv to i16
  %i.cx = shl i16 %i.cw, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.g
  %i.cy = phi ptr [ %i.j, %bb.q ], [ %i.k, %bb.g ]
  %.tr = phi i16 [ %i.cx, %bb.q ], [ 240, %bb.g ]
  %i.cz = phi i8 [ %i.cu, %bb.q ], [ 1, %bb.g ]
  %i.da = phi i32 [ %i.at, %bb.q ], [ 16000, %bb.g ]
  br label %bb.t

bb.s:                                             ; preds = %bb.v
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i8 %i.cz, ptr %i.db, align 8, !tbaa !46
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 50
  store i16 %.tr, ptr %i.dd, align 2, !tbaa !47
  %i.de = tail call ptr @av_crc_get_table(i32 noundef 7) #8
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %i.de, ptr %i.df, align 8, !tbaa !48
  %i.dg = load i8, ptr %i.dc, align 16, !tbaa !38
  %i.dh = zext i8 %i.dg to i32
  %.neg = mul nsw i32 %i.dh, -9
  %i.di = and i32 %.neg, -8
  %i.dj = add nsw i32 %i.di, 328
  %i.dk = getelementptr inbounds nuw i8, ptr %i.b, i64 1152 ; 2 uses
  store i32 %i.dj, ptr %i.dk, align 16, !tbaa !49
  %i.dl = load i32, ptr %i.cy, align 16, !tbaa !30
  %.not88 = icmp eq i32 %i.dl, 0
  %i.dm = select i1 %.not88, i8 4, i8 1
  %i.dn = getelementptr inbounds nuw i8, ptr %i.b, i64 1156
  store i8 %i.dm, ptr %i.dn, align 4, !tbaa !50
  tail call void @ff_sbcdsp_init(ptr noundef nonnull %i.dk) #8
  br label %.thread

bb.t:                                             ; preds = %bb.r, %bb.v
  %indvars.iv = phi i64 [ 0, %bb.r ], [ %indvars.iv.next, %bb.v ] ; 3 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr @sbc_samplerates, i64 %indvars.iv
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !51
  %i.dq = icmp eq i32 %i.da, %i.dp
  br i1 %i.dq, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dr = trunc i64 %indvars.iv to i8
  store i8 %i.dr, ptr %i.c, align 16, !tbaa !52
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not87 = icmp eq i64 %indvars.iv.next, 4
  br i1 %.not87, label %bb.s, label %bb.t, !llvm.loop !53

.thread:                                          ; preds = %bb.p, %bb.i, %bb.s, %bb.f, %bb.d
  %.1 = phi i32 [ -22, %bb.d ], [ -22, %bb.f ], [ 0, %bb.s ], [ -1163346256, %bb.p ], [ -22, %bb.i ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @sbc_encode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) #1 {
bb.a:
  %i.a = alloca [11 x i8], align 1                ; 8 uses
  %i.b = alloca [2 x [8 x i32]], align 16         ; 5 uses
  %i.c = alloca [2 x [8 x i32]], align 16         ; 4 uses
  %i.d = alloca [2 x [8 x i32]], align 16         ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !9    ; 32 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 36 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 13 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 12 uses
  %i.k = load i8, ptr %i.j, align 8, !tbaa !46
  %i.l = zext i8 %i.k to i32                      ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 33 ; 11 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.o = load i32, ptr %i.n, align 8, !tbaa !55
  %i.p = shl nuw nsw i32 %i.l, 1
  %i.q = mul i32 %i.p, %i.o
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 50
  %i.s = load i16, ptr %i.r, align 2, !tbaa !47
  %i.t = zext i16 %i.s to i32
  %i.u = icmp slt i32 %i.q, %i.t
  br i1 %i.u, label %bb.an, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = load i8, ptr %i.i, align 16, !tbaa !38
  %i.w = zext i8 %i.v to i32                      ; 2 uses
  %i.x = shl nuw nsw i32 %i.l, 2
  %i.y = mul nuw nsw i32 %i.x, %i.w
  %i.z = lshr i32 %i.y, 3
  %i.aa = add nuw nsw i32 %i.z, 4
  %i.ab = load i8, ptr %i.m, align 1, !tbaa !39
  %i.ac = zext i8 %i.ab to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 49 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !41
  %i.af = zext i8 %i.ae to i32
  %i.ag = mul nuw nsw i32 %i.af, %i.ac
  %i.ah = load i32, ptr %i.h, align 4, !tbaa !37  ; 2 uses
  %i.ai = icmp eq i32 %i.ah, 1
  %i.aj = zext i1 %i.ai to i32
  %i.ak = shl nuw nsw i32 %i.ag, %i.aj
  %i.al = icmp eq i32 %i.ah, 3
  %i.am = add nuw nsw i32 %i.w, 7
  %i.an = select i1 %i.al, i32 %i.am, i32 7
  %i.ao = add nuw nsw i32 %i.an, %i.ak
  %i.ap = lshr i32 %i.ao, 3
  %i.aq = add nuw nsw i32 %i.aa, %i.ap
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = tail call i32 @ff_get_encode_buffer(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %i.ar, i32 noundef 0) #8 ; 2 uses
  %i.at = icmp slt i32 %i.as, 0
  br i1 %i.at, label %bb.an, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.au = load i8, ptr %i.i, align 16, !tbaa !38  ; 2 uses
  %i.av = icmp eq i8 %i.au, 8
  br i1 %i.av, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 1152 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 2520
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !60
  %i.az = load i32, ptr %i.aw, align 16, !tbaa !49
  %i.ba = load ptr, ptr %2, align 8, !tbaa !61
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 1168
  %i.bc = load i8, ptr %i.m, align 1, !tbaa !39
  %i.bd = zext i8 %i.bc to i32
  %i.be = shl nuw nsw i32 %i.bd, 3
  %i.bf = load i8, ptr %i.j, align 8, !tbaa !46
  %i.bg = zext i8 %i.bf to i32
  %i.bh = tail call i32 %i.ay(i32 noundef %i.az, ptr noundef %i.ba, ptr noundef nonnull %i.bb, i32 noundef %i.be, i32 noundef %i.bg) #8
  store i32 %i.bh, ptr %i.aw, align 16, !tbaa !49
end_hunk_0
