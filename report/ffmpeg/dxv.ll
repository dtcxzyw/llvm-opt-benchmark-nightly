Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/dxv?download=true
inline.NumInlined: 4
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, ptr }
%struct.TextureDSPThreadContext = type { %union.anon.3, i64, i32, i32, %union.anon.4, i32, i32, i32, ptr }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%struct.OpcodeTable = type { i16, i8, i8 }

@.str = private unnamed_addr constant [4 x i8] c"dxv\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Resolume DXV\00", align 1
@ff_dxv_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 0, i32 188, i32 12290, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 2, i8 0, i8 0, i8 1, i32 272, ptr null, ptr null, ptr null, ptr @dxv_init, %union.anon { ptr @dxv_decode }, ptr @dxv_close, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"Invalid image size %dx%d.\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"DXTR1\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"DXT1\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"DXTR5\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"DXT5\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"YOCOCG6\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"YCG6\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"YAOCOCG10\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"YG10\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"RAW\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"LZF\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"Unsupported header (0x%08X)\0A.\00", align 1
@.str.14 = private unnamed_addr constant [48 x i8] c"%s compression with %s texture (version %d.%d)\0A\00", align 1
@.str.15 = private unnamed_addr constant [50 x i8] c"Incomplete or invalid file (header %d, left %u).\0A\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"Assertion %s failed at %s:%d\0A\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"buf && buf_size >= 0\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"libavcodec/bytestream.h\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"idx %d > %d\0A\00", align 1

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -2147483648, 1) i32 @dxv_init(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !48
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !49
  %i.g = tail call i32 @av_image_check_size(i32 noundef %i.d, i32 noundef %i.f, i32 noundef 0, ptr noundef %0) #11 ; 2 uses
  %i.h = icmp slt i32 %i.g, 0
  %i.i = load i32, ptr %i.c, align 8, !tbaa !48   ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr %i.e, align 4, !tbaa !49
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.2, i32 noundef %i.i, i32 noundef %i.j) #11
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = add nsw i32 %i.i, 15
  %i.l = and i32 %i.k, -16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 %i.l, ptr %i.m, align 8, !tbaa !29
  %i.n = load i32, ptr %i.e, align 4, !tbaa !49
  %i.o = add nsw i32 %i.n, 3
  %i.p = and i32 %i.o, -4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 %i.p, ptr %i.q, align 4, !tbaa !30
  tail call void @ff_texturedsp_init(ptr noundef %i.b) #11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.g, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @dxv_decode(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %4 = alloca %struct.TextureDSPThreadContext, align 8 ; 30 uses
  %5 = alloca %struct.TextureDSPThreadContext, align 8 ; 19 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 31 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !51   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !52   ; 3 uses
  %i.h = icmp ne ptr %i.e, null
  %i.i = icmp sgt i32 %i.g, -1
  %or.cond.i = and i1 %i.h, %i.i
  br i1 %or.cond.i, label %bytestream2_init.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef 141) #11
  tail call void @abort() #12
  unreachable

bytestream2_init.exit:                            ; preds = %bb.a
  store ptr %i.e, ptr %i.c, align 8, !tbaa !32
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store ptr %i.e, ptr %i.j, align 8, !tbaa !33
  %i.k = zext nneg i32 %i.g to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !34
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 5 uses
  store i32 26, ptr %i.n, align 8, !tbaa !53
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  store i32 0, ptr %i.o, align 8, !tbaa !54
  %i.p = icmp samesign ult i32 %i.g, 4
  br i1 %i.p, label %bytestream2_get_le32.exit196.thread, label %bytestream2_get_le32.exit196

bytestream2_get_le32.exit196.thread:              ; preds = %bytestream2_init.exit
  store ptr %i.l, ptr %i.c, align 8, !tbaa !32
  br label %bb.g

bytestream2_get_le32.exit196:                     ; preds = %bytestream2_init.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 6 uses
  store ptr %i.q, ptr %i.c, align 8, !tbaa !35
  %i.r = load i32, ptr %i.e, align 1, !tbaa !36   ; 2 uses
  switch i32 %i.r, label %bb.g [
    i32 1146639409, label %bb.c
    i32 1146639413, label %bb.d
    i32 1497581366, label %bb.e
    i32 1497837872, label %bb.f
  ]

bb.c:                                             ; preds = %bytestream2_get_le32.exit196
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %i.s, ptr %i.t, align 8, !tbaa !57
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 8, ptr %i.u, align 8, !tbaa !58
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 36
  store i32 16, ptr %i.v, align 4, !tbaa !59
  br label %bb.l

bb.d:                                             ; preds = %bytestream2_get_le32.exit196
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !60
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %i.x, ptr %i.y, align 8, !tbaa !57
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 16, ptr %i.z, align 8, !tbaa !58
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 36
  store i32 16, ptr %i.aa, align 4, !tbaa !59
  br label %bb.l

bb.e:                                             ; preds = %bytestream2_get_le32.exit196
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !61 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !57
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 8, ptr %i.ae, align 8, !tbaa !58
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 36
  store i32 4, ptr %i.af, align 4, !tbaa !59
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.ac, ptr %i.ag, align 8, !tbaa !57
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 16, ptr %i.ah, align 8, !tbaa !58
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 36
  store i32 4, ptr %i.ai, align 4, !tbaa !59
  store i32 0, ptr %i.n, align 8, !tbaa !53
  store i32 8, ptr %i.o, align 8, !tbaa !54
  br label %bb.l

bb.f:                                             ; preds = %bytestream2_get_le32.exit196
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !61 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !57
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 16, ptr %i.am, align 8, !tbaa !58
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 36
  store i32 4, ptr %i.an, align 4, !tbaa !59
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.ak, ptr %i.ao, align 8, !tbaa !57
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 16, ptr %i.ap, align 8, !tbaa !58
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 36
  store i32 4, ptr %i.aq, align 4, !tbaa !59
  store i32 33, ptr %i.n, align 8, !tbaa !53
  store i32 8, ptr %i.o, align 8, !tbaa !54
  br label %bb.l

bb.g:                                             ; preds = %bytestream2_get_le32.exit196.thread, %bytestream2_get_le32.exit196
  %i.ar = phi ptr [ %i.l, %bytestream2_get_le32.exit196.thread ], [ %i.q, %bytestream2_get_le32.exit196 ] ; 2 uses
  %.0.i195207 = phi i32 [ 0, %bytestream2_get_le32.exit196.thread ], [ %i.r, %bytestream2_get_le32.exit196 ] ; 6 uses
  %i.as = and i32 %.0.i195207, 16777215           ; 2 uses
  %i.at = lshr i32 %.0.i195207, 24                ; 2 uses
  %i.au = and i32 %i.at, 15
  %i.av = add nsw i32 %i.au, -1                   ; 3 uses
  %.not = icmp sgt i32 %.0.i195207, -1            ; 2 uses
  %dxv_decompress_lzf.dxv_decompress_raw = select i1 %.not, ptr @dxv_decompress_lzf, ptr @dxv_decompress_raw ; 2 uses
  %.str.12..str.11 = select i1 %.not, ptr @.str.12, ptr @.str.11 ; 2 uses
  %i.aw = and i32 %.0.i195207, 1073741824
  %.not186 = icmp eq i32 %i.aw, 0
  br i1 %.not186, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !60
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !57
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 16, ptr %i.ba, align 8, !tbaa !58
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 36
  store i32 16, ptr %i.bb, align 4, !tbaa !59
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.bc = and i32 %.0.i195207, 536870912
  %i.bd = icmp ne i32 %i.bc, 0
  %i.be = icmp eq i32 %i.av, 1
  %or.cond = select i1 %i.bd, i1 true, i1 %i.be
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bf = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !57
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 8, ptr %i.bh, align 8, !tbaa !58
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 36
  store i32 16, ptr %i.bi, align 4, !tbaa !59
  %i.bj = icmp eq i32 %i.at, 0
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.13, i32 noundef %.0.i195207) #11
  br label %.critedge

bb.l:                                             ; preds = %bb.h, %bb.j, %bb.f, %bb.e, %bb.d, %bb.c
  %i.bk = phi i32 [ 16, %bb.h ], [ 8, %bb.j ], [ 8, %bb.c ], [ 16, %bb.d ], [ 8, %bb.e ], [ 16, %bb.f ] ; 2 uses
  %i.bl = phi i32 [ 16, %bb.h ], [ 16, %bb.j ], [ 16, %bb.c ], [ 16, %bb.d ], [ 4, %bb.e ], [ 4, %bb.f ] ; 2 uses
  %i.bm = phi ptr [ %i.ar, %bb.h ], [ %i.ar, %bb.j ], [ %i.q, %bb.c ], [ %i.q, %bb.d ], [ %i.q, %bb.e ], [ %i.q, %bb.f ] ; 3 uses
  %.1163 = phi ptr [ %dxv_decompress_lzf.dxv_decompress_raw, %bb.h ], [ %dxv_decompress_lzf.dxv_decompress_raw, %bb.j ], [ @dxv_decompress_dxt1, %bb.c ], [ @dxv_decompress_dxt5, %bb.d ], [ @dxv_decompress_ycg6, %bb.e ], [ @dxv_decompress_yg10, %bb.f ] ; 3 uses
  %.1161 = phi ptr [ %.str.12..str.11, %bb.h ], [ %.str.12..str.11, %bb.j ], [ @.str.3, %bb.c ], [ @.str.5, %bb.d ], [ @.str.7, %bb.e ], [ @.str.9, %bb.f ] ; 3 uses
  %.0159 = phi ptr [ @.str.6, %bb.h ], [ @.str.4, %bb.j ], [ @.str.4, %bb.c ], [ @.str.6, %bb.d ], [ @.str.8, %bb.e ], [ @.str.10, %bb.f ]
  %.0158 = phi i32 [ 1146639413, %bb.h ], [ 1146639409, %bb.j ], [ 1146639409, %bb.c ], [ 1146639413, %bb.d ], [ 1497581366, %bb.e ], [ 1497837872, %bb.f ]
  %.0156 = phi i32 [ %i.av, %bb.h ], [ %i.av, %bb.j ], [ undef, %bb.c ], [ undef, %bb.d ], [ undef, %bb.e ], [ undef, %bb.f ]
  %.0154 = phi i32 [ %i.as, %bb.h ], [ %i.as, %bb.j ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.f ]
  %.0153 = phi i1 [ false, %bb.h ], [ %i.bj, %bb.j ], [ true, %bb.c ], [ true, %bb.d ], [ true, %bb.e ], [ true, %bb.f ]
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 3 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !30 ; 3 uses
  %i.bp = icmp slt i32 %i.bo, 8
  br i1 %i.bp, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !62 ; 3 uses
  %i.bs = lshr i32 %i.bo, 2
  %i.bt = icmp slt i32 %i.br, 1                   ; 2 uses
  %..i198 = tail call i32 @llvm.smin.i32(i32 %i.br, i32 %i.bs)
  %.0.i199 = select i1 %i.bt, i32 1, i32 %..i198
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i32 %.0.i199, ptr %i.bu, align 8, !tbaa !63
  %i.bv = lshr i32 %i.bo, 3
  %..i = tail call i32 @llvm.smin.i32(i32 %i.br, i32 %i.bv)
  %.0.i197 = select i1 %i.bt, i32 1, i32 %..i
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i32 %.0.i197, ptr %i.bw, align 8, !tbaa !63
  br i1 %.0153, label %bb.n, label %bytestream2_get_le32.exit

bb.n:                                             ; preds = %bb.m
  %i.bx = ptrtoint ptr %i.l to i64                ; 8 uses
  %i.by = ptrtoint ptr %i.bm to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = icmp slt i64 %i.bz, 1
  br i1 %i.ca, label %bytestream2_get_byte.exit204, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bm, i64 1 ; 3 uses
  store ptr %i.cb, ptr %i.c, align 8, !tbaa !35
  %i.cc = load i8, ptr %i.bm, align 1, !tbaa !36
  %i.cd = zext i8 %i.cc to i32
end_hunk_0
begin_hunk_1_@dxv_decode:bb.a
  %i.cq = icmp eq i8 %.fr, 0                      ; 2 uses
  %.pre212 = ptrtoint ptr %i.co to i64
  %spec.select = select i1 %i.cq, ptr %.1163, ptr @dxv_decompress_raw
  %spec.select248 = select i1 %i.cq, ptr %.1161, ptr @.str.11
  br label %.thread

.thread:                                          ; preds = %bytestream2_get_byte.exit, %bytestream2_get_byte.exit202
  %i.cr = phi ptr [ %spec.select, %bytestream2_get_byte.exit ], [ %.1163, %bytestream2_get_byte.exit202 ] ; 2 uses
  %.pre-phi213236244 = phi i64 [ %.pre212, %bytestream2_get_byte.exit ], [ %i.bx, %bytestream2_get_byte.exit202 ]
  %i.cs = phi ptr [ %i.co, %bytestream2_get_byte.exit ], [ %i.l, %bytestream2_get_byte.exit202 ]
  %i.ct = phi ptr [ %spec.select248, %bytestream2_get_byte.exit ], [ %.1161, %bytestream2_get_byte.exit202 ] ; 2 uses
  %i.cu = sub i64 %i.bx, %.pre-phi213236244
  %..i205 = tail call i64 @llvm.smin.i64(i64 %i.cu, i64 1)
  %i.cv = getelementptr inbounds i8, ptr %i.cs, i64 %..i205 ; 3 uses
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = sub i64 %i.bx, %i.cw
  %i.cy = icmp slt i64 %i.cx, 4
  br i1 %i.cy, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.thread
  store ptr %i.l, ptr %i.c, align 8, !tbaa !32
  br label %bytestream2_get_le32.exit

bb.r:                                             ; preds = %.thread
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  store ptr %i.cz, ptr %i.c, align 8, !tbaa !35
  %i.da = load i32, ptr %i.cv, align 1, !tbaa !36
  br label %bytestream2_get_le32.exit

bytestream2_get_le32.exit:                        ; preds = %bb.r, %bb.q, %bb.m
  %.3165 = phi ptr [ %.1163, %bb.m ], [ %i.cr, %bb.q ], [ %i.cr, %bb.r ]
  %.3 = phi ptr [ %.1161, %bb.m ], [ %i.ct, %bb.q ], [ %i.ct, %bb.r ]
  %.1157 = phi i32 [ %.0156, %bb.m ], [ %.0.i203, %bb.q ], [ %.0.i203, %bb.r ]
  %.0155 = phi i32 [ 0, %bb.m ], [ %.0.i201, %bb.q ], [ %.0.i201, %bb.r ]
  %.1 = phi i32 [ %.0154, %bb.m ], [ 0, %bb.q ], [ %i.da, %bb.r ] ; 2 uses
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 48, ptr noundef nonnull @.str.14, ptr noundef %.3, ptr noundef nonnull %.0159, i32 noundef %.1157, i32 noundef %.0155) #11
  %i.db = load ptr, ptr %i.m, align 8, !tbaa !34
  %i.dc = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.dd = ptrtoint ptr %i.db to i64
  %i.de = ptrtoint ptr %i.dc to i64
  %i.df = sub i64 %i.dd, %i.de
  %i.dg = trunc i64 %i.df to i32                  ; 2 uses
  %.not189 = icmp eq i32 %.1, %i.dg
  br i1 %.not189, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bytestream2_get_le32.exit
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.15, i32 noundef %.1, i32 noundef %i.dg) #11
  br label %.critedge

bb.t:                                             ; preds = %bytestream2_get_le32.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !29
  %i.dj = load i32, ptr %i.n, align 8, !tbaa !53
  %i.dk = icmp eq i32 %i.dj, 26
  %i.dl = lshr exact i32 %i.bl, 2
  %i.dm = select i1 %i.dk, i32 %i.dl, i32 %i.bl
  %i.dn = sdiv i32 %i.di, %i.dm
  %i.do = load i32, ptr %i.bn, align 4, !tbaa !30
  %i.dp = mul nsw i32 %i.do, %i.dn
  %i.dq = sdiv i32 %i.dp, 4
  %i.dr = mul nsw i32 %i.dq, %i.bk
  %i.ds = sext i32 %i.dr to i64                   ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  store i64 %i.ds, ptr %i.dt, align 8, !tbaa !39
  %i.du = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 3 uses
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !40 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 4 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !41
  %i.dy = add nsw i64 %i.ds, 64
  %i.dz = tail call ptr @av_fast_realloc(ptr noundef %i.dx, ptr noundef nonnull %i.du, i64 noundef %i.dy) #11 ; 3 uses
  %.not190 = icmp eq ptr %i.dz, null
  br i1 %.not190, label %.critedge, label %bb.u

bb.u:                                             ; preds = %bb.t
  store ptr %i.dz, ptr %i.dw, align 8, !tbaa !41
  %i.ea = load i32, ptr %i.du, align 8, !tbaa !40 ; 2 uses
  %i.eb = icmp ugt i32 %i.ea, %i.dv
  br i1 %i.eb, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ec = zext i32 %i.dv to i64
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.ec
  %i.ee = sub nuw i32 %i.ea, %i.dv
  %i.ef = zext i32 %i.ee to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ed, i8 0, i64 %i.ef, i1 false)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.eg = load i32, ptr %i.n, align 8, !tbaa !53
  %.not191 = icmp eq i32 %i.eg, 26
  br i1 %.not191, label %.loopexit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.eh = load i32, ptr %i.dh, align 8, !tbaa !29 ; 2 uses
  %i.ei = sdiv i32 %i.eh, 2
  %i.ej = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !59
  %i.el = sdiv i32 %i.ei, %i.ek
  %i.em = load i32, ptr %i.bn, align 4, !tbaa !30 ; 2 uses
  %i.en = mul nsw i32 %i.em, %i.el
  %i.eo = sdiv i32 %i.en, 8
  %i.ep = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !58
  %i.er = mul nsw i32 %i.eo, %i.eq
  %i.es = sext i32 %i.er to i64                   ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  store i64 %i.es, ptr %i.et, align 8, !tbaa !42
  %i.eu = mul nsw i32 %i.em, %i.eh                ; 2 uses
  %i.ev = sdiv i32 %i.eu, 16
  %i.ew = sext i32 %i.ev to i64                   ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.b, i64 240 ; 2 uses
  store i64 %i.ew, ptr %i.ex, align 8, !tbaa !43
  %i.ey = sdiv i32 %i.eu, 32
  %i.ez = sext i32 %i.ey to i64                   ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  store i64 %i.ez, ptr %i.fa, align 8, !tbaa !43
  %i.fb = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  store i64 %i.ez, ptr %i.fb, align 8, !tbaa !43
  %i.fc = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  store i64 %i.ew, ptr %i.fc, align 8, !tbaa !43
  %i.fd = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 3 uses
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !44 ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !45
  %i.fh = add nsw i64 %i.es, 64
  %i.fi = tail call ptr @av_fast_realloc(ptr noundef %i.fg, ptr noundef nonnull %i.fd, i64 noundef %i.fh) #11 ; 3 uses
  %.not192 = icmp eq ptr %i.fi, null
  br i1 %.not192, label %.critedge, label %bb.y

bb.y:                                             ; preds = %bb.x
  store ptr %i.fi, ptr %i.ff, align 8, !tbaa !45
  %i.fj = load i32, ptr %i.fd, align 8, !tbaa !44 ; 2 uses
  %i.fk = icmp ult i32 %i.fe, %i.fj
  br i1 %i.fk, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.fl = zext i32 %i.fe to i64
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.fl
  %i.fn = sub nuw i32 %i.fj, %i.fe
  %i.fo = zext i32 %i.fn to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.fm, i8 0, i64 %i.fo, i1 false)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.fp = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.fq = getelementptr inbounds nuw i8, ptr %i.b, i64 192 ; 2 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !35
  %i.fs = load i64, ptr %i.ex, align 8, !tbaa !43
  %i.ft = tail call ptr @av_fast_realloc(ptr noundef %i.fr, ptr noundef nonnull %i.fp, i64 noundef %i.fs) #11 ; 2 uses
  %.not193 = icmp eq ptr %i.ft, null
  br i1 %.not193, label %.critedge, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store ptr %i.ft, ptr %i.fq, align 8, !tbaa !35
  %i.fu = getelementptr inbounds nuw i8, ptr %i.b, i64 228
  %i.fv = getelementptr inbounds nuw i8, ptr %i.b, i64 200 ; 2 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !35
  %i.fx = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !43
  %i.fz = tail call ptr @av_fast_realloc(ptr noundef %i.fw, ptr noundef nonnull %i.fu, i64 noundef %i.fy) #11 ; 2 uses
  %.not193.1 = icmp eq ptr %i.fz, null
  br i1 %.not193.1, label %.critedge, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store ptr %i.fz, ptr %i.fv, align 8, !tbaa !35
  %i.ga = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.gb = getelementptr inbounds nuw i8, ptr %i.b, i64 208 ; 2 uses
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !35
  %i.gd = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !43
  %i.gf = tail call ptr @av_fast_realloc(ptr noundef %i.gc, ptr noundef nonnull %i.ga, i64 noundef %i.ge) #11 ; 2 uses
  %.not193.2 = icmp eq ptr %i.gf, null
  br i1 %.not193.2, label %.critedge, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store ptr %i.gf, ptr %i.gb, align 8, !tbaa !35
  %i.gg = getelementptr inbounds nuw i8, ptr %i.b, i64 236
  %i.gh = getelementptr inbounds nuw i8, ptr %i.b, i64 216 ; 2 uses
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !35
  %i.gj = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !43
  %i.gl = tail call ptr @av_fast_realloc(ptr noundef %i.gi, ptr noundef nonnull %i.gg, i64 noundef %i.gk) #11 ; 2 uses
  %.not193.3 = icmp eq ptr %i.gl, null
  br i1 %.not193.3, label %.critedge, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.ad
  store ptr %i.gl, ptr %i.gh, align 8, !tbaa !35
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.w
  %i.gm = tail call i32 %.3165(ptr noundef nonnull %0) #11 ; 2 uses
  %i.gn = icmp slt i32 %i.gm, 0
  br i1 %i.gn, label %.critedge, label %bb.ae

bb.ae:                                            ; preds = %.loopexit
  %i.go = tail call i32 @ff_thread_get_buffer(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0) #11 ; 2 uses
  %i.gp = icmp slt i32 %i.go, 0
  br i1 %i.gp, label %.critedge, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gq = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.gr = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.gs = load <2 x i32>, ptr %i.dh, align 8, !tbaa !46 ; 2 uses
  store <2 x i32> %i.gs, ptr %i.gq, align 8, !tbaa !46
  %i.gt = sdiv <2 x i32> %i.gs, splat (i32 2)
  store <2 x i32> %i.gt, ptr %i.gr, align 8, !tbaa !46
  switch i32 %.0158, label %.unreachabledefault [
    i32 1497837872, label %bb.ag
    i32 1497581366, label %bb.ah
    i32 1146639409, label %bb.aj
    i32 1146639413, label %bb.aj
  ]

bb.ag:                                            ; preds = %bb.af
  %i.gu = load ptr, ptr %i.dw, align 8, !tbaa !41
  %i.gv = lshr exact i32 %i.bk, 1
  %i.gw = zext nneg i32 %i.gv to i64
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.gw
  %i.gy = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.gx, ptr %i.gy, align 8, !tbaa !36
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !35
  store ptr %i.ha, ptr %4, align 8, !tbaa !36
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !46
  %i.hd = sext i32 %i.hc to i64
  %i.he = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.hd, ptr %i.he, align 8, !tbaa !64
  %i.hf = call i32 @ff_texturedsp_exec_decompress_threads(ptr noundef nonnull %0, ptr noundef nonnull %4) #11 ; 2 uses
  %i.hg = icmp slt i32 %i.hf, 0
  br i1 %i.hg, label %.critedge, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.hh = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 2 uses
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !45
  %i.hj = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr %i.hi, ptr %i.hj, align 8, !tbaa !36
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !35
  store ptr %i.hl, ptr %5, align 8, !tbaa !36
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.hn = load i32, ptr %i.hm, align 8, !tbaa !46
  %i.ho = sext i32 %i.hn to i64
  %i.hp = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.ho, ptr %i.hp, align 8, !tbaa !64
  %i.hq = call i32 @ff_texturedsp_exec_decompress_threads(ptr noundef nonnull %0, ptr noundef nonnull %5) #11 ; 2 uses
  %i.hr = icmp slt i32 %i.hq, 0
  br i1 %i.hr, label %.critedge, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hs = load ptr, ptr %i.hh, align 8, !tbaa !45
  %i.ht = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.hu = load i32, ptr %i.ht, align 8, !tbaa !58
  %i.hv = sdiv i32 %i.hu, 2
  %i.hw = sext i32 %i.hv to i64
  %i.hx = getelementptr inbounds i8, ptr %i.hs, i64 %i.hw
  store ptr %i.hx, ptr %i.hj, align 8, !tbaa !36
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !35
  store ptr %i.hz, ptr %5, align 8, !tbaa !36
  %i.ia = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !46
  %i.ic = sext i32 %i.ib to i64
  store i64 %i.ic, ptr %i.hp, align 8, !tbaa !64
  %i.id = call i32 @ff_texturedsp_exec_decompress_threads(ptr noundef nonnull %0, ptr noundef nonnull %5) #11 ; 2 uses
  %i.ie = icmp slt i32 %i.id, 0
  br i1 %i.ie, label %.critedge, label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.af, %bb.af
  %i.if = load ptr, ptr %i.dw, align 8, !tbaa !41
  %i.ig = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.if, ptr %i.ig, align 8, !tbaa !36
  %i.ih = load ptr, ptr %1, align 8, !tbaa !35
  store ptr %i.ih, ptr %4, align 8, !tbaa !36
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ij = load i32, ptr %i.ii, align 8, !tbaa !46
  %i.ik = sext i32 %i.ij to i64
  %i.il = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ik, ptr %i.il, align 8, !tbaa !64
  %i.im = call i32 @ff_texturedsp_exec_decompress_threads(ptr noundef nonnull %0, ptr noundef nonnull %4) #11 ; 2 uses
  %i.in = icmp slt i32 %i.im, 0
  br i1 %i.in, label %.critedge, label %bb.ak

.unreachabledefault:                              ; preds = %bb.af
  unreachable

bb.ak:                                            ; preds = %bb.aj
  store i32 1, ptr %2, align 4, !tbaa !46
  %i.io = load i32, ptr %i.f, align 8, !tbaa !52
  br label %.critedge

.critedge:                                        ; preds = %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ak, %bb.t, %.loopexit, %bb.ae, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.x, %bb.l, %bb.s, %bb.k
  %.2168 = phi i32 [ -1094995529, %bb.k ], [ -1094995529, %bb.s ], [ -1094995529, %bb.l ], [ -12, %bb.t ], [ %i.gm, %.loopexit ], [ %i.io, %bb.ak ], [ %i.go, %bb.ae ], [ %i.hf, %bb.ag ], [ %i.hq, %bb.ah ], [ %i.id, %bb.ai ], [ %i.im, %bb.aj ], [ -12, %bb.x ], [ -12, %bb.ad ], [ -12, %bb.ac ], [ -12, %bb.ab ], [ -12, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  ret i32 %.2168
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @dxv_close(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  tail call void @av_freep(ptr noundef nonnull %i.c) #11
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  store i32 0, ptr %i.d, align 8, !tbaa !40
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  tail call void @av_freep(ptr noundef nonnull %i.e) #11
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  store i32 0, ptr %i.f, align 8, !tbaa !44
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  tail call void @av_freep(ptr noundef nonnull %i.g) #11
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  tail call void @av_freep(ptr noundef nonnull %i.h) #11
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  tail call void @av_freep(ptr noundef nonnull %i.i) #11
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  tail call void @av_freep(ptr noundef nonnull %i.j) #11
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @av_image_check_size(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @ff_texturedsp_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define internal range(i32 -1094995529, 1) i32 @dxv_decompress_dxt1(ptr noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 38 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 13 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !34   ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !32   ; 3 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp slt i64 %i.i, 4
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.e, ptr %i.c, align 8, !tbaa !32
  br label %bytestream2_get_le32.exit145

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store ptr %i.k, ptr %i.c, align 8, !tbaa !35
  %i.l = load i32, ptr %i.f, align 1, !tbaa !36
  br label %bytestream2_get_le32.exit145

bytestream2_get_le32.exit145:                     ; preds = %bb.b, %bb.c
  %.0.i144 = phi i32 [ 0, %bb.b ], [ %i.l, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 8 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !41
  store i32 %.0.i144, ptr %i.n, align 1, !tbaa !36
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !34   ; 2 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !32   ; 3 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = icmp slt i64 %i.s, 4
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bytestream2_get_le32.exit145
  store ptr %i.o, ptr %i.c, align 8, !tbaa !32
  br label %bytestream2_get_le32.exit143

bb.e:                                             ; preds = %bytestream2_get_le32.exit145
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store ptr %i.u, ptr %i.c, align 8, !tbaa !35
  %i.v = load i32, ptr %i.p, align 1, !tbaa !36
  br label %bytestream2_get_le32.exit143

bytestream2_get_le32.exit143:                     ; preds = %bb.d, %bb.e
  %.0.i142 = phi i32 [ 0, %bb.d ], [ %i.v, %bb.e ]
  %i.w = load ptr, ptr %i.m, align 8, !tbaa !41
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store i32 %.0.i142, ptr %i.x, align 1, !tbaa !36
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 176 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !39
  %.not192 = icmp ult i64 %i.z, 16
  br i1 %.not192, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bytestream2_get_le32.exit143, %bb.aq
  %indvars.iv215 = phi i64 [ %indvars.iv.next216, %bb.aq ], [ 2, %bytestream2_get_le32.exit143 ] ; 15 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.aq ], [ 4, %bytestream2_get_le32.exit143 ]
  %.098194 = phi i32 [ %.4, %bb.aq ], [ 0, %bytestream2_get_le32.exit143 ] ; 2 uses
  %.0107193 = phi i32 [ %.4111, %bb.aq ], [ undef, %bytestream2_get_le32.exit143 ]
  %i.aa = icmp eq i32 %.098194, 0
  br i1 %i.aa, label %bb.f, label %bytestream2_get_le32.exit141

bb.f:                                             ; preds = %.lr.ph
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !34  ; 2 uses
  %i.ac = load ptr, ptr %i.c, align 8, !tbaa !32  ; 3 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 2 uses
  %i.ag = trunc i64 %i.af to i32
  %i.ah = icmp slt i32 %i.ag, 4
  br i1 %i.ah, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = icmp slt i64 %i.af, 4
  br i1 %i.ai, label %bytestream2_get_le32.exit139.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store ptr %i.aj, ptr %i.c, align 8, !tbaa !35
  %i.ak = load i32, ptr %i.ac, align 1, !tbaa !36
  br label %bytestream2_get_le32.exit141

bytestream2_get_le32.exit141:                     ; preds = %bb.h, %.lr.ph
  %.1108 = phi i32 [ %.0107193, %.lr.ph ], [ %i.ak, %bb.h ] ; 2 uses
  %.199 = phi i32 [ %.098194, %.lr.ph ], [ 16, %bb.h ]
  %i.al = and i32 %.1108, 3
  %i.am = lshr i32 %.1108, 2                      ; 2 uses
  %i.an = add nsw i32 %.199, -1                   ; 3 uses
  switch i32 %i.al, label %default.unreachable [
    i32 1, label %bb.o
    i32 2, label %bb.i
    i32 3, label %bb.l
    i32 0, label %bb.p
  ]

bb.i:                                             ; preds = %bytestream2_get_le32.exit141
  %i.ao = load ptr, ptr %i.d, align 8, !tbaa !34  ; 2 uses
  %i.ap = load ptr, ptr %i.c, align 8, !tbaa !32  ; 3 uses
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = icmp slt i64 %i.as, 1
  br i1 %i.at, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store ptr %i.ao, ptr %i.c, align 8, !tbaa !32
  br label %bytestream2_get_byte.exit150

bb.k:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  store ptr %i.au, ptr %i.c, align 8, !tbaa !35
  %i.av = load i8, ptr %i.ap, align 1, !tbaa !36
  %i.aw = zext i8 %i.av to i32
  %i.ax = shl nuw nsw i32 %i.aw, 1
  %i.ay = add nuw nsw i32 %i.ax, 4
  br label %bytestream2_get_byte.exit150

bytestream2_get_byte.exit150:                     ; preds = %bb.j, %bb.k
  %.0.i149 = phi i32 [ 4, %bb.j ], [ %i.ay, %bb.k ] ; 3 uses
  %i.az = zext nneg i32 %.0.i149 to i64
  %i.ba = icmp samesign ult i64 %indvars.iv215, %i.az
  br i1 %i.ba, label %.loopexit.sink.split, label %bb.o

bb.l:                                             ; preds = %bytestream2_get_le32.exit141
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !34  ; 2 uses
  %i.bc = load ptr, ptr %i.c, align 8, !tbaa !32  ; 3 uses
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = icmp slt i64 %i.bf, 2
  br i1 %i.bg, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store ptr %i.bb, ptr %i.c, align 8, !tbaa !32
  br label %bytestream2_get_le16.exit155

bb.n:                                             ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 2
  store ptr %i.bh, ptr %i.c, align 8, !tbaa !35
end_hunk_1
begin_hunk_2_@dxv_decompress_dxt1:bb.a
  %i.ds = icmp samesign ult i64 %indvars.iv215, %i.dr
  br i1 %i.ds, label %.loopexit.sink.split, label %bb.z

bb.z:                                             ; preds = %bytestream2_get_le32.exit139, %bytestream2_get_byte.exit148, %bytestream2_get_le16.exit153
  %.2102.ph = phi i32 [ %.0.i152, %bytestream2_get_le16.exit153 ], [ %.0.i147, %bytestream2_get_byte.exit148 ], [ 2, %bytestream2_get_le32.exit139 ]
  %i.dt = load ptr, ptr %i.m, align 8, !tbaa !41
  %i.du = trunc nuw nsw i64 %indvars.iv215 to i32
  %i.dv = sub nsw i32 %i.du, %.2102.ph
  %i.dw = shl nsw i32 %i.dv, 2
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds i8, ptr %i.dt, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 1, !tbaa !36
  br label %bytestream2_get_le32.exit137

bb.aa:                                            ; preds = %bytestream2_get_le32.exit139._crit_edge, %bytestream2_get_le32.exit139.thread
  %i.ea = phi ptr [ %.pre220, %bytestream2_get_le32.exit139._crit_edge ], [ %storemerge, %bytestream2_get_le32.exit139.thread ] ; 3 uses
  %i.eb = phi ptr [ %.pre, %bytestream2_get_le32.exit139._crit_edge ], [ %storemerge, %bytestream2_get_le32.exit139.thread ] ; 2 uses
  %i.ec = phi i32 [ %i.cs, %bytestream2_get_le32.exit139._crit_edge ], [ %.2.ph, %bytestream2_get_le32.exit139.thread ] ; 2 uses
  %i.ed = phi i32 [ %i.cr, %bytestream2_get_le32.exit139._crit_edge ], [ 0, %bytestream2_get_le32.exit139.thread ] ; 2 uses
  %i.ee = ptrtoint ptr %i.eb to i64
  %i.ef = ptrtoint ptr %i.ea to i64
  %i.eg = sub i64 %i.ee, %i.ef
  %i.eh = icmp slt i64 %i.eg, 4
  br i1 %i.eh, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store ptr %i.eb, ptr %i.c, align 8, !tbaa !32
  br label %bytestream2_get_le32.exit137

bb.ac:                                            ; preds = %bb.aa
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  store ptr %i.ei, ptr %i.c, align 8, !tbaa !35
  %i.ej = load i32, ptr %i.ea, align 1, !tbaa !36
  br label %bytestream2_get_le32.exit137

bytestream2_get_le32.exit137:                     ; preds = %bb.ac, %bb.ab, %bb.z
  %i.ek = phi i32 [ %i.cr, %bb.z ], [ %i.ed, %bb.ab ], [ %i.ed, %bb.ac ]
  %i.el = phi i32 [ %i.cs, %bb.z ], [ %i.ec, %bb.ab ], [ %i.ec, %bb.ac ] ; 2 uses
  %.0105 = phi i32 [ %i.dz, %bb.z ], [ 0, %bb.ab ], [ %i.ej, %bb.ac ]
  %i.em = load ptr, ptr %i.m, align 8, !tbaa !41
  %i.en = shl nuw nsw i64 %indvars.iv215, 2
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.en
  store i32 %.0105, ptr %i.eo, align 1, !tbaa !36
  %i.ep = or disjoint i64 %indvars.iv215, 1       ; 6 uses
  %i.eq = icmp eq i32 %i.el, 0
  br i1 %i.eq, label %bb.ad, label %bytestream2_get_le32.exit135

bb.ad:                                            ; preds = %bytestream2_get_le32.exit137
  %i.er = load ptr, ptr %i.d, align 8, !tbaa !34  ; 4 uses
  %i.es = load ptr, ptr %i.c, align 8, !tbaa !32  ; 3 uses
  %i.et = ptrtoint ptr %i.er to i64               ; 3 uses
  %i.eu = ptrtoint ptr %i.es to i64
  %i.ev = sub i64 %i.et, %i.eu                    ; 2 uses
  %i.ew = trunc i64 %i.ev to i32
  %i.ex = icmp slt i32 %i.ew, 4
  br i1 %i.ex, label %.loopexit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ey = icmp slt i64 %i.ev, 4
  br i1 %i.ey, label %bytestream2_get_le32.exit135.thread, label %bb.af

bytestream2_get_le32.exit135.thread:              ; preds = %bb.ae
  store ptr %i.er, ptr %i.c, align 8, !tbaa !32
  br label %bb.an

bb.af:                                            ; preds = %bb.ae
  %i.ez = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  store ptr %i.ez, ptr %i.c, align 8, !tbaa !35
  %i.fa = load i32, ptr %i.es, align 1, !tbaa !36
  br label %bytestream2_get_le32.exit135

bytestream2_get_le32.exit135:                     ; preds = %bb.af, %bytestream2_get_le32.exit137
  %.3110 = phi i32 [ %i.ek, %bytestream2_get_le32.exit137 ], [ %i.fa, %bb.af ] ; 2 uses
  %.3 = phi i32 [ %i.el, %bytestream2_get_le32.exit137 ], [ 16, %bb.af ]
  %i.fb = and i32 %.3110, 3
  %i.fc = lshr i32 %.3110, 2                      ; 2 uses
  %i.fd = add nsw i32 %.3, -1                     ; 2 uses
  switch i32 %i.fb, label %default.unreachable [
    i32 1, label %bb.am
    i32 2, label %bb.ag
    i32 3, label %bb.aj
    i32 0, label %bytestream2_get_le32.exit135._crit_edge
  ]

bytestream2_get_le32.exit135._crit_edge:          ; preds = %bytestream2_get_le32.exit135
  %.pre221 = load ptr, ptr %i.d, align 8, !tbaa !34 ; 2 uses
  %.pre222 = load ptr, ptr %i.c, align 8, !tbaa !32 ; 2 uses
  %.pre223 = ptrtoint ptr %.pre221 to i64
  %.pre224 = ptrtoint ptr %.pre222 to i64
  br label %bb.an

bb.ag:                                            ; preds = %bytestream2_get_le32.exit135
  %i.fe = load ptr, ptr %i.d, align 8, !tbaa !34  ; 2 uses
  %i.ff = load ptr, ptr %i.c, align 8, !tbaa !32  ; 3 uses
  %i.fg = ptrtoint ptr %i.fe to i64
  %i.fh = ptrtoint ptr %i.ff to i64
  %i.fi = sub i64 %i.fg, %i.fh
  %i.fj = icmp slt i64 %i.fi, 1
  br i1 %i.fj, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store ptr %i.fe, ptr %i.c, align 8, !tbaa !32
  br label %bytestream2_get_byte.exit

bb.ai:                                            ; preds = %bb.ag
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ff, i64 1
  store ptr %i.fk, ptr %i.c, align 8, !tbaa !35
  %i.fl = load i8, ptr %i.ff, align 1, !tbaa !36
  %i.fm = zext i8 %i.fl to i32
  %i.fn = shl nuw nsw i32 %i.fm, 1
  %i.fo = add nuw nsw i32 %i.fn, 4
  br label %bytestream2_get_byte.exit

bytestream2_get_byte.exit:                        ; preds = %bb.ah, %bb.ai
  %.0.i146 = phi i32 [ 4, %bb.ah ], [ %i.fo, %bb.ai ] ; 3 uses
  %i.fp = zext nneg i32 %.0.i146 to i64
  %i.fq = icmp samesign ult i64 %i.ep, %i.fp
  br i1 %i.fq, label %.loopexit.sink.split, label %bb.am

bb.aj:                                            ; preds = %bytestream2_get_le32.exit135
  %i.fr = load ptr, ptr %i.d, align 8, !tbaa !34  ; 2 uses
  %i.fs = load ptr, ptr %i.c, align 8, !tbaa !32  ; 3 uses
  %i.ft = ptrtoint ptr %i.fr to i64
  %i.fu = ptrtoint ptr %i.fs to i64
  %i.fv = sub i64 %i.ft, %i.fu
  %i.fw = icmp slt i64 %i.fv, 2
  br i1 %i.fw, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store ptr %i.fr, ptr %i.c, align 8, !tbaa !32
  br label %bytestream2_get_le16.exit

bb.al:                                            ; preds = %bb.aj
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fs, i64 2
  store ptr %i.fx, ptr %i.c, align 8, !tbaa !35
  %i.fy = load i16, ptr %i.fs, align 1, !tbaa !36
  %i.fz = zext i16 %i.fy to i32
  %i.ga = shl nuw nsw i32 %i.fz, 1
  %i.gb = add nuw nsw i32 %i.ga, 516
  br label %bytestream2_get_le16.exit

bytestream2_get_le16.exit:                        ; preds = %bb.ak, %bb.al
  %.0.i151 = phi i32 [ 516, %bb.ak ], [ %i.gb, %bb.al ] ; 3 uses
  %i.gc = zext nneg i32 %.0.i151 to i64
  %i.gd = icmp samesign ult i64 %i.ep, %i.gc
  br i1 %i.gd, label %.loopexit.sink.split, label %bb.am

bb.am:                                            ; preds = %bytestream2_get_le32.exit135, %bytestream2_get_byte.exit, %bytestream2_get_le16.exit
  %.3103.ph = phi i32 [ %.0.i151, %bytestream2_get_le16.exit ], [ %.0.i146, %bytestream2_get_byte.exit ], [ 2, %bytestream2_get_le32.exit135 ]
  %i.ge = load ptr, ptr %i.m, align 8, !tbaa !41
  %i.gf = trunc nuw nsw i64 %i.ep to i32
  %i.gg = sub nsw i32 %i.gf, %.3103.ph
  %i.gh = shl nsw i32 %i.gg, 2
  %i.gi = sext i32 %i.gh to i64
  %i.gj = getelementptr inbounds i8, ptr %i.ge, i64 %i.gi
  %i.gk = load i32, ptr %i.gj, align 1, !tbaa !36
  br label %bytestream2_get_le32.exit

bb.an:                                            ; preds = %bytestream2_get_le32.exit135._crit_edge, %bytestream2_get_le32.exit135.thread
  %.pre-phi225 = phi i64 [ %.pre224, %bytestream2_get_le32.exit135._crit_edge ], [ %i.et, %bytestream2_get_le32.exit135.thread ]
  %.pre-phi = phi i64 [ %.pre223, %bytestream2_get_le32.exit135._crit_edge ], [ %i.et, %bytestream2_get_le32.exit135.thread ]
  %i.gl = phi ptr [ %.pre222, %bytestream2_get_le32.exit135._crit_edge ], [ %i.er, %bytestream2_get_le32.exit135.thread ] ; 2 uses
  %i.gm = phi ptr [ %.pre221, %bytestream2_get_le32.exit135._crit_edge ], [ %i.er, %bytestream2_get_le32.exit135.thread ]
  %i.gn = phi i32 [ %i.fd, %bytestream2_get_le32.exit135._crit_edge ], [ 15, %bytestream2_get_le32.exit135.thread ] ; 2 uses
  %i.go = phi i32 [ %i.fc, %bytestream2_get_le32.exit135._crit_edge ], [ 0, %bytestream2_get_le32.exit135.thread ] ; 2 uses
  %i.gp = sub i64 %.pre-phi, %.pre-phi225
  %i.gq = icmp slt i64 %i.gp, 4
  br i1 %i.gq, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store ptr %i.gm, ptr %i.c, align 8, !tbaa !32
  br label %bytestream2_get_le32.exit

bb.ap:                                            ; preds = %bb.an
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gl, i64 4
  store ptr %i.gr, ptr %i.c, align 8, !tbaa !35
  %i.gs = load i32, ptr %i.gl, align 1, !tbaa !36
  br label %bytestream2_get_le32.exit

bytestream2_get_le32.exit:                        ; preds = %bb.ap, %bb.ao, %bb.am
  %i.gt = phi i32 [ %i.fc, %bb.am ], [ %i.go, %bb.ao ], [ %i.go, %bb.ap ]
  %i.gu = phi i32 [ %i.fd, %bb.am ], [ %i.gn, %bb.ao ], [ %i.gn, %bb.ap ]
  %.1106 = phi i32 [ %i.gk, %bb.am ], [ 0, %bb.ao ], [ %i.gs, %bb.ap ]
  %i.gv = load ptr, ptr %i.m, align 8, !tbaa !41
  br label %bb.aq

bb.aq:                                            ; preds = %bytestream2_get_le32.exit, %bb.o
  %.sink = phi i64 [ %i.ep, %bytestream2_get_le32.exit ], [ %i.bx, %bb.o ]
  %.sink236 = phi ptr [ %i.gv, %bytestream2_get_le32.exit ], [ %i.by, %bb.o ]
  %.1106.sink = phi i32 [ %.1106, %bytestream2_get_le32.exit ], [ %i.ce, %bb.o ]
  %.4111 = phi i32 [ %i.gt, %bytestream2_get_le32.exit ], [ %i.am, %bb.o ]
  %.4 = phi i32 [ %i.gu, %bytestream2_get_le32.exit ], [ %i.an, %bb.o ]
  %i.gw = shl nuw nsw i64 %.sink, 2
  %i.gx = getelementptr inbounds nuw i8, ptr %.sink236, i64 %i.gw
  store i32 %.1106.sink, ptr %i.gx, align 1, !tbaa !36
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.gy = load i64, ptr %i.y, align 8, !tbaa !39
  %i.gz = lshr i64 %i.gy, 2
  %.not = icmp samesign ult i64 %i.gz, %indvars.iv.next
  %indvars.iv.next216 = add nuw nsw i64 %indvars.iv215, 2
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !65

.loopexit.sink.split:                             ; preds = %bytestream2_get_le16.exit, %bytestream2_get_byte.exit, %bytestream2_get_le16.exit153, %bytestream2_get_byte.exit148, %bytestream2_get_le16.exit155, %bytestream2_get_byte.exit150
  %.lcssa.sink = phi i64 [ %i.ep, %bytestream2_get_byte.exit ], [ %indvars.iv215, %bytestream2_get_le16.exit153 ], [ %indvars.iv215, %bytestream2_get_byte.exit148 ], [ %indvars.iv215, %bytestream2_get_le16.exit155 ], [ %indvars.iv215, %bytestream2_get_byte.exit150 ], [ %i.ep, %bytestream2_get_le16.exit ]
  %.0.i151.lcssa.sink = phi i32 [ %.0.i146, %bytestream2_get_byte.exit ], [ %.0.i152, %bytestream2_get_le16.exit153 ], [ %.0.i147, %bytestream2_get_byte.exit148 ], [ %.0.i154, %bytestream2_get_le16.exit155 ], [ %.0.i149, %bytestream2_get_byte.exit150 ], [ %.0.i151, %bytestream2_get_le16.exit ]
  %i.ha = trunc nuw nsw i64 %.lcssa.sink to i32
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.19, i32 noundef %.0.i151.lcssa.sink, i32 noundef %i.ha) #11
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %bb.q, %bb.ad, %bb.aq, %.loopexit.sink.split, %bytestream2_get_le32.exit143
  %.0112 = phi i32 [ -1094995529, %.loopexit.sink.split ], [ 0, %bytestream2_get_le32.exit143 ], [ 0, %bb.aq ], [ -1094995529, %bb.ad ], [ -1094995529, %bb.f ], [ -1094995529, %bb.q ]
  ret i32 %.0112
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1094995529, 1) i32 @dxv_decompress_dxt5(ptr noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 60 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 17 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !34   ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !32   ; 3 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp slt i64 %i.i, 4
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.e, ptr %i.c, align 8, !tbaa !32
  br label %bytestream2_get_le32.exit298

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store ptr %i.k, ptr %i.c, align 8, !tbaa !35
  %i.l = load i32, ptr %i.f, align 1, !tbaa !36
  br label %bytestream2_get_le32.exit298

bytestream2_get_le32.exit298:                     ; preds = %bb.b, %bb.c
  %.0.i297 = phi i32 [ 0, %bb.b ], [ %i.l, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 22 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !41
  store i32 %.0.i297, ptr %i.n, align 1, !tbaa !36
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !34   ; 2 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !32   ; 3 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = icmp slt i64 %i.s, 4
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bytestream2_get_le32.exit298
  store ptr %i.o, ptr %i.c, align 8, !tbaa !32
  br label %bytestream2_get_le32.exit296

bb.e:                                             ; preds = %bytestream2_get_le32.exit298
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store ptr %i.u, ptr %i.c, align 8, !tbaa !35
  %i.v = load i32, ptr %i.p, align 1, !tbaa !36
  br label %bytestream2_get_le32.exit296

bytestream2_get_le32.exit296:                     ; preds = %bb.d, %bb.e
  %.0.i295 = phi i32 [ 0, %bb.d ], [ %i.v, %bb.e ]
  %i.w = load ptr, ptr %i.m, align 8, !tbaa !41
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store i32 %.0.i295, ptr %i.x, align 1, !tbaa !36
  %i.y = load ptr, ptr %i.d, align 8, !tbaa !34   ; 2 uses
  %i.z = load ptr, ptr %i.c, align 8, !tbaa !32   ; 3 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = icmp slt i64 %i.ac, 4
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bytestream2_get_le32.exit296
  store ptr %i.y, ptr %i.c, align 8, !tbaa !32
  br label %bytestream2_get_le32.exit294

bb.g:                                             ; preds = %bytestream2_get_le32.exit296
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store ptr %i.ae, ptr %i.c, align 8, !tbaa !35
  %i.af = load i32, ptr %i.z, align 1, !tbaa !36
  br label %bytestream2_get_le32.exit294

bytestream2_get_le32.exit294:                     ; preds = %bb.f, %bb.g
  %.0.i293 = phi i32 [ 0, %bb.f ], [ %i.af, %bb.g ]
  %i.ag = load ptr, ptr %i.m, align 8, !tbaa !41
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i32 %.0.i293, ptr %i.ah, align 1, !tbaa !36
  %i.ai = load ptr, ptr %i.d, align 8, !tbaa !34  ; 2 uses
  %i.aj = load ptr, ptr %i.c, align 8, !tbaa !32  ; 3 uses
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = icmp slt i64 %i.am, 4
  br i1 %i.an, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bytestream2_get_le32.exit294
  store ptr %i.ai, ptr %i.c, align 8, !tbaa !32
  br label %bytestream2_get_le32.exit292

bb.i:                                             ; preds = %bytestream2_get_le32.exit294
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store ptr %i.ao, ptr %i.c, align 8, !tbaa !35
  %i.ap = load i32, ptr %i.aj, align 1, !tbaa !36
  br label %bytestream2_get_le32.exit292

bytestream2_get_le32.exit292:                     ; preds = %bb.h, %bb.i
  %.0.i291 = phi i32 [ 0, %bb.h ], [ %i.ap, %bb.i ]
  %i.aq = load ptr, ptr %i.m, align 8, !tbaa !41
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  store i32 %.0.i291, ptr %i.ar, align 1, !tbaa !36
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 176 ; 7 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !39 ; 2 uses
  %.not431440 = icmp ult i64 %i.at, 24
  br i1 %.not431440, label %.loopexit356, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bytestream2_get_le32.exit292
  %i.au = lshr i64 %i.at, 2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.backedge, %.lr.ph.preheader
  %i.av = phi i64 [ %i.au, %.lr.ph.preheader ], [ %.be, %.lr.ph.backedge ]
  %i.aw = phi i32 [ 6, %.lr.ph.preheader ], [ %.be709, %.lr.ph.backedge ] ; 14 uses
  %.0218435 = phi i32 [ 0, %.lr.ph.preheader ], [ %.0218435.be, %.lr.ph.backedge ] ; 2 uses
  %.0221434 = phi i32 [ 4, %.lr.ph.preheader ], [ %.0221434.be, %.lr.ph.backedge ] ; 14 uses
  %.0225433 = phi i32 [ 0, %.lr.ph.preheader ], [ %.0225433.be, %.lr.ph.backedge ] ; 3 uses
  %.0237432 = phi i32 [ undef, %.lr.ph.preheader ], [ %.0237432.be, %.lr.ph.backedge ] ; 2 uses
  %.not267 = icmp eq i32 %.0218435, 0
  br i1 %.not267, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.ax = add nsw i32 %.0218435, -1
  %i.ay = load ptr, ptr %i.m, align 8, !tbaa !41  ; 2 uses
  %i.az = shl i32 %.0221434, 2                    ; 4 uses
  %i.ba = add i32 %i.az, -16
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds i8, ptr %i.ay, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 1, !tbaa !36
  %i.be = sext i32 %i.az to i64
  %i.bf = getelementptr inbounds i8, ptr %i.ay, i64 %i.be
  store i32 %i.bd, ptr %i.bf, align 1, !tbaa !36
  %i.bg = load ptr, ptr %i.m, align 8, !tbaa !41  ; 2 uses
  %i.bh = add i32 %i.az, -12
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds i8, ptr %i.bg, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 1, !tbaa !36
  %i.bl = add i32 %i.az, 4
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds i8, ptr %i.bg, i64 %i.bm
  store i32 %i.bk, ptr %i.bn, align 1, !tbaa !36
  br label %bb.ab

bb.k:                                             ; preds = %.lr.ph
  %i.bo = load ptr, ptr %i.d, align 8, !tbaa !34  ; 6 uses
  %i.bp = load ptr, ptr %i.c, align 8, !tbaa !32  ; 4 uses
  %i.bq = ptrtoint ptr %i.bo to i64               ; 10 uses
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br                    ; 2 uses
  %i.bt = trunc i64 %i.bs to i32
  %i.bu = icmp slt i32 %i.bt, 1
  br i1 %i.bu, label %.loopexit356, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bv = icmp eq i32 %.0225433, 0
  br i1 %i.bv, label %bb.m, label %bytestream2_get_le32.exit290

bb.m:                                             ; preds = %bb.l
  %i.bw = icmp slt i64 %i.bs, 4
  br i1 %i.bw, label %bytestream2_get_le32.exit290.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bp, i64 4 ; 2 uses
  store ptr %i.bx, ptr %i.c, align 8, !tbaa !35
  %i.by = load i32, ptr %i.bp, align 1, !tbaa !36
  br label %bytestream2_get_le32.exit290

bytestream2_get_le32.exit290:                     ; preds = %bb.n, %bb.l
  %i.bz = phi ptr [ %i.bp, %bb.l ], [ %i.bx, %bb.n ] ; 8 uses
  %.1238 = phi i32 [ %.0237432, %bb.l ], [ %i.by, %bb.n ] ; 2 uses
  %.1226 = phi i32 [ %.0225433, %bb.l ], [ 16, %bb.n ]
  %i.ca = and i32 %.1238, 3
  %i.cb = lshr i32 %.1238, 2                      ; 4 uses
  %i.cc = add nsw i32 %.1226, -1                  ; 4 uses
  %.pre530 = ptrtoint ptr %i.bz to i64            ; 4 uses
  switch i32 %i.ca, label %bytestream2_get_le32.exit290.unreachabledefault [
    i32 0, label %bytestream2_get_le32.exit290.thread
    i32 1, label %bb.q
    i32 2, label %bb.r
    i32 3, label %bb.w
  ]

bytestream2_get_le32.exit290.thread:              ; preds = %bytestream2_get_le32.exit290, %bb.m
  %.pre-phi531 = phi i64 [ %i.bq, %bb.m ], [ %.pre530, %bytestream2_get_le32.exit290 ]
  %i.cd = phi ptr [ %i.bo, %bb.m ], [ %i.bz, %bytestream2_get_le32.exit290 ] ; 2 uses
  %i.ce = phi i32 [ 15, %bb.m ], [ %i.cc, %bytestream2_get_le32.exit290 ]
  %i.cf = phi i32 [ 0, %bb.m ], [ %i.cb, %bytestream2_get_le32.exit290 ]
  %i.cg = sub i64 %i.bq, %.pre-phi531
  %i.ch = icmp slt i64 %i.cg, 1
  br i1 %i.ch, label %.loopexit.sink.split, label %bytestream2_get_byte.exit307

bytestream2_get_byte.exit307:                     ; preds = %bytestream2_get_le32.exit290.thread
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 1 ; 3 uses
  store ptr %i.ci, ptr %i.c, align 8, !tbaa !35
  %i.cj = load i8, ptr %i.cd, align 1, !tbaa !36
  %i.ck = zext i8 %i.cj to i32
  %i.cl = add nuw nsw i32 %i.ck, 1                ; 2 uses
  %i.cm = icmp eq i32 %i.cl, 256
  br i1 %i.cm, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bytestream2_get_byte.exit307
  %i.cn = ptrtoint ptr %i.ci to i64
  %i.co = sub i64 %i.bq, %i.cn
  %i.cp = icmp slt i64 %i.co, 2
  br i1 %i.cp, label %.loopexit.sink.split, label %bytestream2_get_le16.exit318

.preheader:                                       ; preds = %bytestream2_get_le16.exit318
  %i.cq = ptrtoint ptr %i.cu to i64
  %i.cr = sub i64 %i.bq, %i.cq
  %i.cs = icmp slt i64 %i.cr, 2
  br i1 %i.cs, label %.loopexit.sink.split, label %bytestream2_get_le16.exit318, !llvm.loop !66

bytestream2_get_le16.exit318:                     ; preds = %.preheader.preheader, %.preheader
  %.0706 = phi i32 [ %i.cx, %.preheader ], [ 256, %.preheader.preheader ]
  %i.ct = phi ptr [ %i.cu, %.preheader ], [ %i.ci, %.preheader.preheader ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 2 ; 3 uses
  store ptr %i.cu, ptr %i.c, align 8, !tbaa !35
  %i.cv = load i16, ptr %i.ct, align 1, !tbaa !36 ; 2 uses
  %i.cw = zext i16 %i.cv to i32
  %i.cx = add nuw nsw i32 %.0706, %i.cw           ; 3 uses
  %i.cy = icmp eq i16 %i.cv, -1
  br i1 %i.cy, label %.preheader, label %.loopexit, !llvm.loop !66

.loopexit.sink.split:                             ; preds = %.preheader, %.preheader.preheader, %bytestream2_get_le32.exit290.thread
  %.1.ph = phi i32 [ 1, %bytestream2_get_le32.exit290.thread ], [ 256, %.preheader.preheader ], [ %i.cx, %.preheader ]
  store ptr %i.bo, ptr %i.c, align 8, !tbaa !32
  br label %.loopexit

.loopexit:                                        ; preds = %bytestream2_get_le16.exit318, %.loopexit.sink.split, %bytestream2_get_byte.exit307
  %.1 = phi i32 [ %.1.ph, %.loopexit.sink.split ], [ %i.cl, %bytestream2_get_byte.exit307 ], [ %i.cx, %bytestream2_get_le16.exit318 ] ; 2 uses
  %i.cz = sext i32 %.0221434 to i64
  %i.da = shl i32 %.1, 2
  %i.db = add i32 %.0221434, %i.da
  br label %bb.o

bb.o:                                             ; preds = %.loopexit, %bb.p
  %indvars.iv = phi i64 [ %i.cz, %.loopexit ], [ %indvars.iv.next, %bb.p ] ; 2 uses
  %.2430 = phi i32 [ %.1, %.loopexit ], [ %i.el, %bb.p ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 4   ; 2 uses
  %i.dc = load i64, ptr %i.as, align 8, !tbaa !39
  %i.dd = lshr i64 %i.dc, 2                       ; 2 uses
  %.not269 = icmp ult i64 %i.dd, %indvars.iv.next
  %i.de = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  br i1 %.not269, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.df = load ptr, ptr %i.m, align 8, !tbaa !41  ; 2 uses
  %i.dg = shl i32 %i.de, 2                        ; 8 uses
  %i.dh = add i32 %i.dg, -16
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds i8, ptr %i.df, i64 %i.di
  %i.dk = load i32, ptr %i.dj, align 1, !tbaa !36
  %i.dl = sext i32 %i.dg to i64
  %i.dm = getelementptr inbounds i8, ptr %i.df, i64 %i.dl
  store i32 %i.dk, ptr %i.dm, align 1, !tbaa !36
  %i.dn = load ptr, ptr %i.m, align 8, !tbaa !41  ; 2 uses
  %i.do = add i32 %i.dg, -12
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds i8, ptr %i.dn, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 1, !tbaa !36
  %i.ds = add i32 %i.dg, 4
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds i8, ptr %i.dn, i64 %i.dt
  store i32 %i.dr, ptr %i.du, align 1, !tbaa !36
  %i.dv = load ptr, ptr %i.m, align 8, !tbaa !41  ; 2 uses
  %i.dw = add i32 %i.dg, -8
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds i8, ptr %i.dv, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 1, !tbaa !36
  %i.ea = add i32 %i.dg, 8
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds i8, ptr %i.dv, i64 %i.eb
  store i32 %i.dz, ptr %i.ec, align 1, !tbaa !36
  %i.ed = load ptr, ptr %i.m, align 8, !tbaa !41  ; 2 uses
  %i.ee = add i32 %i.dg, -4
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr inbounds i8, ptr %i.ed, i64 %i.ef
  %i.eh = load i32, ptr %i.eg, align 1, !tbaa !36
  %i.ei = add i32 %i.dg, 12
  %i.ej = sext i32 %i.ei to i64
  %i.ek = getelementptr inbounds i8, ptr %i.ed, i64 %i.ej
  store i32 %i.eh, ptr %i.ek, align 1, !tbaa !36
  %i.el = add nsw i32 %.2430, -1                  ; 2 uses
  %.not268 = icmp eq i32 %i.el, 0
  br i1 %.not268, label %..critedge_crit_edge, label %bb.o, !llvm.loop !67

..critedge_crit_edge:                             ; preds = %bb.p
  %.pre520 = load i64, ptr %i.as, align 8, !tbaa !39
  %.pre521 = lshr i64 %.pre520, 2
  br label %.critedge, !llvm.loop !67

.critedge:                                        ; preds = %bb.o, %..critedge_crit_edge
  %.pre-phi = phi i64 [ %.pre521, %..critedge_crit_edge ], [ %i.dd, %bb.o ] ; 2 uses
  %.1222.lcssa = phi i32 [ %i.db, %..critedge_crit_edge ], [ %i.de, %bb.o ] ; 2 uses
  %i.em = add nsw i32 %.1222.lcssa, 2             ; 2 uses
  %i.en = sext i32 %i.em to i64
  %.not = icmp ult i64 %.pre-phi, %i.en
  br i1 %.not, label %.loopexit356, label %.lr.ph.backedge

.lr.ph.backedge:                                  ; preds = %.critedge, %.outer
  %.be = phi i64 [ %.pre-phi, %.critedge ], [ %i.po, %.outer ]
  %.be709 = phi i32 [ %i.em, %.critedge ], [ %i.pl, %.outer ]
  %.0218435.be = phi i32 [ 0, %.critedge ], [ %.3, %.outer ]
  %.0221434.be = phi i32 [ %.1222.lcssa, %.critedge ], [ %i.ph, %.outer ]
  %.0225433.be = phi i32 [ %i.ce, %.critedge ], [ %.6, %.outer ]
  %.0237432.be = phi i32 [ %i.cf, %.critedge ], [ %.6243, %.outer ]
  br label %.lr.ph, !llvm.loop !68

bb.q:                                             ; preds = %bytestream2_get_le32.exit290
  %i.eo = sub i64 %i.bq, %.pre530
  %i.ep = icmp slt i64 %i.eo, 1
  br i1 %i.ep, label %.loopexit355.sink.split, label %bytestream2_get_byte.exit305

bytestream2_get_byte.exit305:                     ; preds = %bb.q
  %i.eq = getelementptr inbounds nuw i8, ptr %i.bz, i64 1 ; 3 uses
  store ptr %i.eq, ptr %i.c, align 8, !tbaa !35
  %i.er = load i8, ptr %i.bz, align 1, !tbaa !36  ; 2 uses
  %i.es = zext i8 %i.er to i32
  %i.et = icmp eq i8 %i.er, -1
  br i1 %i.et, label %.preheader354.preheader, label %.loopexit355

.preheader354.preheader:                          ; preds = %bytestream2_get_byte.exit305
  %i.eu = ptrtoint ptr %i.eq to i64
  %i.ev = sub i64 %i.bq, %i.eu
  %i.ew = icmp slt i64 %i.ev, 2
  br i1 %i.ew, label %.loopexit355.sink.split, label %bytestream2_get_le16.exit316

.preheader354:                                    ; preds = %bytestream2_get_le16.exit316
  %i.ex = ptrtoint ptr %i.fb to i64
  %i.ey = sub i64 %i.bq, %i.ex
  %i.ez = icmp slt i64 %i.ey, 2
  br i1 %i.ez, label %.loopexit355.sink.split, label %bytestream2_get_le16.exit316, !llvm.loop !69

bytestream2_get_le16.exit316:                     ; preds = %.preheader354.preheader, %.preheader354
  %.1219707 = phi i32 [ %i.fe, %.preheader354 ], [ 255, %.preheader354.preheader ]
  %i.fa = phi ptr [ %i.fb, %.preheader354 ], [ %i.eq, %.preheader354.preheader ] ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 2 ; 3 uses
  store ptr %i.fb, ptr %i.c, align 8, !tbaa !35
  %i.fc = load i16, ptr %i.fa, align 1, !tbaa !36 ; 2 uses
  %i.fd = zext i16 %i.fc to i32
  %i.fe = add nuw nsw i32 %.1219707, %i.fd        ; 3 uses
  %i.ff = icmp eq i16 %i.fc, -1
  br i1 %i.ff, label %.preheader354, label %.loopexit355, !llvm.loop !69

.loopexit355.sink.split:                          ; preds = %.preheader354, %.preheader354.preheader, %bb.q
  %.2220.ph = phi i32 [ 0, %bb.q ], [ 255, %.preheader354.preheader ], [ %i.fe, %.preheader354 ]
  store ptr %i.bo, ptr %i.c, align 8, !tbaa !32
  br label %.loopexit355

.loopexit355:                                     ; preds = %bytestream2_get_le16.exit316, %.loopexit355.sink.split, %bytestream2_get_byte.exit305
  %.2220 = phi i32 [ %.2220.ph, %.loopexit355.sink.split ], [ %i.es, %bytestream2_get_byte.exit305 ], [ %i.fe, %bytestream2_get_le16.exit316 ]
  %i.fg = load ptr, ptr %i.m, align 8, !tbaa !41  ; 2 uses
  %i.fh = shl i32 %.0221434, 2                    ; 4 uses
  %i.fi = add i32 %i.fh, -16
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr inbounds i8, ptr %i.fg, i64 %i.fj
  %i.fl = load i32, ptr %i.fk, align 1, !tbaa !36
  %i.fm = sext i32 %i.fh to i64
  %i.fn = getelementptr inbounds i8, ptr %i.fg, i64 %i.fm
  store i32 %i.fl, ptr %i.fn, align 1, !tbaa !36
  %i.fo = load ptr, ptr %i.m, align 8, !tbaa !41  ; 2 uses
  %i.fp = add i32 %i.fh, -12
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr inbounds i8, ptr %i.fo, i64 %i.fq
  %i.fs = load i32, ptr %i.fr, align 1, !tbaa !36
  %i.ft = add i32 %i.fh, 4
  %i.fu = sext i32 %i.ft to i64
  %i.fv = getelementptr inbounds i8, ptr %i.fo, i64 %i.fu
  store i32 %i.fs, ptr %i.fv, align 1, !tbaa !36
  br label %bb.ab

bb.r:                                             ; preds = %bytestream2_get_le32.exit290
  %i.fw = sub i64 %i.bq, %.pre530
  %i.fx = icmp slt i64 %i.fw, 2
  br i1 %i.fx, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store ptr %i.bo, ptr %i.c, align 8, !tbaa !32
  br label %bytestream2_get_le16.exit314

bb.t:                                             ; preds = %bb.r
  %i.fy = getelementptr inbounds nuw i8, ptr %i.bz, i64 2
  store ptr %i.fy, ptr %i.c, align 8, !tbaa !35
  %i.fz = load i16, ptr %i.bz, align 1, !tbaa !36
  %i.ga = zext i16 %i.fz to i32
  %i.gb = shl nuw nsw i32 %i.ga, 2
  %i.gc = add nuw nsw i32 %i.gb, 8
  br label %bytestream2_get_le16.exit314

bytestream2_get_le16.exit314:                     ; preds = %bb.s, %bb.t
  %.0.i313 = phi i32 [ 8, %bb.s ], [ %i.gc, %bb.t ] ; 3 uses
  %i.gd = icmp sgt i32 %.0.i313, %.0221434
  br i1 %i.gd, label %.loopexit356, label %bb.u

bb.u:                                             ; preds = %bytestream2_get_le16.exit314
  %i.ge = sub nsw i32 %.0221434, %.0.i313         ; 2 uses
  %i.gf = add nuw nsw i32 %i.ge, 2
  %i.gg = zext nneg i32 %i.gf to i64
  %i.gh = icmp samesign ult i64 %i.av, %i.gg
  br i1 %i.gh, label %.loopexit356, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gi = load ptr, ptr %i.m, align 8, !tbaa !41  ; 2 uses
  %i.gj = shl nuw nsw i32 %i.ge, 2
  %i.gk = zext nneg i32 %i.gj to i64
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.gk
  %i.gm = load i32, ptr %i.gl, align 1, !tbaa !36
  %i.gn = shl nsw i32 %.0221434, 2
  %i.go = zext nneg i32 %i.gn to i64
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.go
  store i32 %i.gm, ptr %i.gp, align 1, !tbaa !36
  %i.gq = add nuw nsw i32 %.0221434, 1            ; 2 uses
  %i.gr = load ptr, ptr %i.m, align 8, !tbaa !41  ; 2 uses
  %i.gs = sub nsw i32 %i.gq, %.0.i313
  %i.gt = shl nuw nsw i32 %i.gs, 2
  %i.gu = zext nneg i32 %i.gt to i64
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gu
  %i.gw = load i32, ptr %i.gv, align 1, !tbaa !36
  %i.gx = shl nsw i32 %i.gq, 2
  %i.gy = zext nneg i32 %i.gx to i64
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gy
  store i32 %i.gw, ptr %i.gz, align 1, !tbaa !36
  br label %bb.ab

bb.w:                                             ; preds = %bytestream2_get_le32.exit290
  %i.ha = sub i64 %i.bq, %.pre530
  %i.hb = icmp slt i64 %i.ha, 4
  br i1 %i.hb, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store ptr %i.bo, ptr %i.c, align 8, !tbaa !32
  br label %bytestream2_get_le32.exit288

bb.y:                                             ; preds = %bb.w
  %i.hc = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  store ptr %i.hc, ptr %i.c, align 8, !tbaa !35
  %i.hd = load i32, ptr %i.bz, align 1, !tbaa !36
  br label %bytestream2_get_le32.exit288

bytestream2_get_le32.exit288:                     ; preds = %bb.x, %bb.y
  %.0.i287 = phi i32 [ 0, %bb.x ], [ %i.hd, %bb.y ]
  %i.he = load ptr, ptr %i.m, align 8, !tbaa !41
  %i.hf = shl nsw i32 %.0221434, 2                ; 2 uses
  %i.hg = sext i32 %i.hf to i64
  %i.hh = getelementptr inbounds i8, ptr %i.he, i64 %i.hg
  store i32 %.0.i287, ptr %i.hh, align 1, !tbaa !36
  %i.hi = load ptr, ptr %i.d, align 8, !tbaa !34  ; 2 uses
  %i.hj = load ptr, ptr %i.c, align 8, !tbaa !32  ; 3 uses
  %i.hk = ptrtoint ptr %i.hi to i64
  %i.hl = ptrtoint ptr %i.hj to i64
  %i.hm = sub i64 %i.hk, %i.hl
  %i.hn = icmp slt i64 %i.hm, 4
  br i1 %i.hn, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bytestream2_get_le32.exit288
  store ptr %i.hi, ptr %i.c, align 8, !tbaa !32
  br label %bytestream2_get_le32.exit286

bb.aa:                                            ; preds = %bytestream2_get_le32.exit288
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hj, i64 4
  store ptr %i.ho, ptr %i.c, align 8, !tbaa !35
  %i.hp = load i32, ptr %i.hj, align 1, !tbaa !36
  br label %bytestream2_get_le32.exit286

bytestream2_get_le32.exit286:                     ; preds = %bb.z, %bb.aa
  %.0.i285 = phi i32 [ 0, %bb.z ], [ %i.hp, %bb.aa ]
  %i.hq = load ptr, ptr %i.m, align 8, !tbaa !41
  %i.hr = add i32 %i.hf, 4
  %i.hs = sext i32 %i.hr to i64
  %i.ht = getelementptr inbounds i8, ptr %i.hq, i64 %i.hs
  store i32 %.0.i285, ptr %i.ht, align 1, !tbaa !36
  br label %bb.ab

bytestream2_get_le32.exit290.unreachabledefault:  ; preds = %bytestream2_get_le32.exit290
  unreachable

default.unreachable546:                           ; preds = %bytestream2_get_le32.exit278, %bytestream2_get_le32.exit282, %bytestream2_get_le32.exit284
  unreachable

bb.ab:                                            ; preds = %bb.j, %bytestream2_get_le32.exit286, %bb.v, %.loopexit355
  %.2239 = phi i32 [ %.0237432, %bb.j ], [ %i.cb, %bytestream2_get_le32.exit286 ], [ %i.cb, %.loopexit355 ], [ %i.cb, %bb.v ]
  %.2227 = phi i32 [ %.0225433, %bb.j ], [ %i.cc, %bytestream2_get_le32.exit286 ], [ %i.cc, %.loopexit355 ], [ %i.cc, %bb.v ] ; 2 uses
  %.3 = phi i32 [ %i.ax, %bb.j ], [ 0, %bytestream2_get_le32.exit286 ], [ %.2220, %.loopexit355 ], [ 0, %bb.v ]
  %i.hu = icmp eq i32 %.2227, 0
  br i1 %i.hu, label %bb.ac, label %bytestream2_get_le32.exit284

bb.ac:                                            ; preds = %bb.ab
  %i.hv = load ptr, ptr %i.d, align 8, !tbaa !34  ; 4 uses
  %i.hw = load ptr, ptr %i.c, align 8, !tbaa !32  ; 3 uses
  %i.hx = ptrtoint ptr %i.hv to i64               ; 3 uses
  %i.hy = ptrtoint ptr %i.hw to i64
  %i.hz = sub i64 %i.hx, %i.hy                    ; 2 uses
  %i.ia = trunc i64 %i.hz to i32
  %i.ib = icmp slt i32 %i.ia, 4
  br i1 %i.ib, label %.loopexit356, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ic = icmp slt i64 %i.hz, 4
  br i1 %i.ic, label %.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.id = getelementptr inbounds nuw i8, ptr %i.hw, i64 4
  store ptr %i.id, ptr %i.c, align 8, !tbaa !35
  %i.ie = load i32, ptr %i.hw, align 1, !tbaa !36
  br label %bytestream2_get_le32.exit284

bytestream2_get_le32.exit284:                     ; preds = %bb.ae, %bb.ab
  %.3240 = phi i32 [ %.2239, %bb.ab ], [ %i.ie, %bb.ae ] ; 2 uses
  %.3228 = phi i32 [ %.2227, %bb.ab ], [ 16, %bb.ae ]
  %i.if = and i32 %.3240, 3                       ; 2 uses
  %i.ig = lshr i32 %.3240, 2                      ; 2 uses
  %i.ih = add nsw i32 %.3228, -1                  ; 3 uses
  switch i32 %i.if, label %default.unreachable546 [
    i32 1, label %bb.an
    i32 2, label %bb.af
    i32 3, label %bb.aj
    i32 0, label %.thread547
  ]

bb.af:                                            ; preds = %bytestream2_get_le32.exit284
  %i.ii = load ptr, ptr %i.d, align 8, !tbaa !34  ; 2 uses
  %i.ij = load ptr, ptr %i.c, align 8, !tbaa !32  ; 3 uses
  %i.ik = ptrtoint ptr %i.ii to i64
  %i.il = ptrtoint ptr %i.ij to i64
  %i.im = sub i64 %i.ik, %i.il
  %i.in = icmp slt i64 %i.im, 1
  br i1 %i.in, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store ptr %i.ii, ptr %i.c, align 8, !tbaa !32
  br label %bytestream2_get_byte.exit303

bb.ah:                                            ; preds = %bb.af
  %i.io = getelementptr inbounds nuw i8, ptr %i.ij, i64 1
  store ptr %i.io, ptr %i.c, align 8, !tbaa !35
  %i.ip = load i8, ptr %i.ij, align 1, !tbaa !36
  %i.iq = zext i8 %i.ip to i32
  %i.ir = shl nuw nsw i32 %i.iq, 2
  %i.is = add nuw nsw i32 %i.ir, 8
  br label %bytestream2_get_byte.exit303

bytestream2_get_byte.exit303:                     ; preds = %bb.ag, %bb.ah
  %.0.i302 = phi i32 [ 8, %bb.ag ], [ %i.is, %bb.ah ] ; 3 uses
end_hunk_2
begin_hunk_3_@dxv_decompress_dxt5:bb.a
  %.sink630 = phi ptr [ %i.pg, %bytestream2_get_le32.exit ], [ %i.kj, %bb.ar ]
  %.1236.sink = phi i32 [ %.1236, %bytestream2_get_le32.exit ], [ %i.ko, %bb.ar ]
  %i.ph = phi i32 [ %i.mw, %bytestream2_get_le32.exit ], [ %i.jg, %bb.ar ] ; 2 uses
  %.6243 = phi i32 [ %i.pe, %bytestream2_get_le32.exit ], [ %i.ig, %bb.ar ]
  %.6 = phi i32 [ %i.pf, %bytestream2_get_le32.exit ], [ %i.ih, %bb.ar ]
  %i.pi = shl nuw nsw i32 %.sink632, 2
  %i.pj = zext nneg i32 %i.pi to i64
  %i.pk = getelementptr inbounds nuw i8, ptr %.sink630, i64 %i.pj
  store i32 %.1236.sink, ptr %i.pk, align 1, !tbaa !36
  %i.pl = add nsw i32 %i.ph, 2                    ; 2 uses
  %i.pm = sext i32 %i.pl to i64
  %i.pn = load i64, ptr %i.as, align 8, !tbaa !39
  %i.po = lshr i64 %i.pn, 2                       ; 2 uses
  %.not431 = icmp ult i64 %i.po, %i.pm
  br i1 %.not431, label %.loopexit356, label %.lr.ph.backedge

.loopexit356:                                     ; preds = %.outer, %.thread, %bb.bj, %bb.be, %bb.bf, %bb.as, %bb.ap, %bb.aq, %bb.an, %bb.ac, %bytestream2_get_le16.exit314, %bb.u, %.thread547, %bb.k, %.critedge, %bytestream2_get_le32.exit292, %bb.bt, %bb.bp, %bb.bd, %bb.az, %bb.am, %bb.ai
  %.0244 = phi i32 [ -1094995529, %bb.bp ], [ -1094995529, %bb.bt ], [ -1094995529, %bb.az ], [ -1094995529, %bb.bd ], [ -1094995529, %bb.ai ], [ -1094995529, %bb.am ], [ 0, %bytestream2_get_le32.exit292 ], [ -1094995529, %.thread547 ], [ -1094995529, %bytestream2_get_le16.exit314 ], [ -1094995529, %bb.u ], [ 0, %.outer ], [ -1094995529, %.thread ], [ -1094995529, %bb.bj ], [ -1094995529, %bb.be ], [ -1094995529, %bb.bf ], [ -1094995529, %bb.as ], [ -1094995529, %bb.ap ], [ -1094995529, %bb.aq ], [ -1094995529, %bb.an ], [ -1094995529, %bb.ac ], [ 0, %.critedge ], [ -1094995529, %bb.k ]
  ret i32 %.0244
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -2147483648, 1) i32 @dxv_decompress_ycg6(ptr nofree noundef readonly captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca [256 x ptr], align 16             ; 6 uses
  %i.c = alloca [256 x ptr], align 16             ; 6 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !28   ; 13 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 120 ; 14 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !41   ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  %i.l = load i64, ptr %i.k, align 8, !tbaa !39   ; 2 uses
  %i.m = trunc i64 %i.l to i32
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 192
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !35   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 240
  %i.q = load i64, ptr %i.p, align 8, !tbaa !43
  %i.r = trunc i64 %i.q to i32
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 128 ; 4 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !34   ; 4 uses
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !32   ; 3 uses
  %i.v = ptrtoint ptr %i.t to i64                 ; 5 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = icmp slt i64 %i.x, 4
  br i1 %i.y, label %bytestream2_get_le32.exit47.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 4 ; 3 uses
  store ptr %i.z, ptr %i.h, align 8, !tbaa !35
  %i.aa = load i32, ptr %i.u, align 1, !tbaa !36
  %.pre.i = ptrtoint ptr %i.z to i64
  br label %bytestream2_get_le32.exit47.i

bytestream2_get_le32.exit47.i:                    ; preds = %bb.b, %bb.a
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.b ], [ %i.v, %bb.a ]
  %i.ab = phi ptr [ %i.z, %bb.b ], [ %i.t, %bb.a ] ; 2 uses
  %.0.i46.i = phi i32 [ %i.aa, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.ac = sub i64 %i.v, %.pre-phi.i
  %i.ad = icmp slt i64 %i.ac, 4
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bytestream2_get_le32.exit47.i
  store ptr %i.t, ptr %i.h, align 8, !tbaa !32
  br label %bytestream2_get_le32.exit45.i

bb.d:                                             ; preds = %bytestream2_get_le32.exit47.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 4 ; 3 uses
  store ptr %i.ae, ptr %i.h, align 8, !tbaa !35
  %i.af = load i32, ptr %i.ab, align 1, !tbaa !36
  %.pre1.i = ptrtoint ptr %i.ae to i64
  br label %bytestream2_get_le32.exit45.i

bytestream2_get_le32.exit45.i:                    ; preds = %bb.d, %bb.c
  %.pre-phi2.i = phi i64 [ %i.v, %bb.c ], [ %.pre1.i, %bb.d ] ; 2 uses
  %i.ag = phi ptr [ %i.t, %bb.c ], [ %i.ae, %bb.d ]
  %.0.i44.i = phi i32 [ 0, %bb.c ], [ %i.af, %bb.d ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 136 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !33
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %.pre-phi2.i, %i.aj
  %i.al = trunc i64 %i.ak to i32                  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %i.b, i8 0, i64 2048, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %i.c, i8 0, i64 2048, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  store i32 0, ptr %i.d, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  store i32 0, ptr %i.e, align 4, !tbaa !46
  %i.am = icmp slt i32 %.0.i46.i, 8
  br i1 %i.am, label %dxv_decompress_yo.exit.thread, label %bb.e

bb.e:                                             ; preds = %bytestream2_get_le32.exit45.i
  %i.an = add nsw i32 %.0.i46.i, -8               ; 2 uses
  %i.ao = sub i64 %i.v, %.pre-phi2.i              ; 2 uses
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = icmp sgt i32 %i.an, %i.ap
  br i1 %i.aq, label %dxv_decompress_yo.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = zext nneg i32 %i.an to i64
  %..i.i = tail call i64 @llvm.smin.i64(i64 %i.ao, i64 %i.ar)
  %i.as = getelementptr inbounds i8, ptr %i.ag, i64 %..i.i
  store ptr %i.as, ptr %i.h, align 8, !tbaa !32
  %i.at = icmp ugt i32 %.0.i44.i, %i.r
  br i1 %i.at, label %dxv_decompress_yo.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = zext i32 %.0.i44.i to i64
  %i.av = tail call fastcc i32 @dxv_decompress_opcodes(ptr noundef nonnull %i.h, ptr noundef %i.o, i64 noundef %i.au) ; 3 uses
  %i.aw = icmp slt i32 %i.av, 0
  br i1 %i.aw, label %dxv_decompress_yo.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = load ptr, ptr %i.s, align 8, !tbaa !34  ; 2 uses
  %i.ay = load ptr, ptr %i.ah, align 8, !tbaa !33 ; 2 uses
  %i.az = ptrtoint ptr %i.ax to i64               ; 2 uses
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = icmp slt i32 %i.al, 0
  %..i.i48.i = tail call i32 @llvm.smin.i32(i32 %i.al, i32 %i.bc)
  %.0.i.i49.i = select i1 %i.bd, i32 0, i32 %..i.i48.i
  %i.be = sext i32 %.0.i.i49.i to i64
  %i.bf = getelementptr inbounds i8, ptr %i.ay, i64 %i.be ; 3 uses
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = sub i64 %i.az, %i.bg
  %i.bi = icmp slt i64 %i.bh, 4
  br i1 %i.bi, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr %i.ax, ptr %i.h, align 8, !tbaa !32
  br label %bytestream2_get_le32.exit43.i

bb.j:                                             ; preds = %bb.h
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  store ptr %i.bj, ptr %i.h, align 8, !tbaa !35
  %i.bk = load i32, ptr %i.bf, align 1, !tbaa !36
  br label %bytestream2_get_le32.exit43.i

bytestream2_get_le32.exit43.i:                    ; preds = %bb.j, %bb.i
  %.0.i42.i = phi i32 [ 0, %bb.i ], [ %i.bk, %bb.j ] ; 2 uses
  store i32 %.0.i42.i, ptr %i.j, align 1, !tbaa !36
  %i.bl = load ptr, ptr %i.s, align 8, !tbaa !34  ; 2 uses
  %i.bm = load ptr, ptr %i.h, align 8, !tbaa !32  ; 3 uses
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = icmp slt i64 %i.bp, 4
  br i1 %i.bq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bytestream2_get_le32.exit43.i
  store ptr %i.bl, ptr %i.h, align 8, !tbaa !32
  br label %bytestream2_get_le32.exit.i

bb.l:                                             ; preds = %bytestream2_get_le32.exit43.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  store ptr %i.br, ptr %i.h, align 8, !tbaa !35
  %i.bs = load i32, ptr %i.bm, align 1, !tbaa !36
  br label %bytestream2_get_le32.exit.i

bytestream2_get_le32.exit.i:                      ; preds = %bb.l, %bb.k
  %.0.i.i = phi i32 [ 0, %bb.k ], [ %i.bs, %bb.l ]
  %i.bt = and i32 %.0.i42.i, 65535
  %i.bu = mul i32 %i.bt, -1640531535
  %i.bv = lshr i32 %i.bu, 24
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bw
  store ptr %i.j, ptr %i.bx, align 8, !tbaa !35
  %i.by = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 %.0.i.i, ptr %i.by, align 1, !tbaa !36
  %i.bz = getelementptr inbounds nuw i8, ptr %i.j, i64 2 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 1, !tbaa !36
  %i.cb = and i32 %i.ca, 16777215
  %i.cc = mul i32 %i.cb, -1640531535
  %i.cd = lshr i32 %i.cc, 24
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.ce
  store ptr %i.bz, ptr %i.cf, align 8, !tbaa !35
  %i.cg = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.cg, ptr %i.a, align 8, !tbaa !35
  %sext = shl i64 %i.l, 32
  %i.ch = ashr exact i64 %sext, 32
  %i.ci = getelementptr inbounds i8, ptr %i.j, i64 %i.ch
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %bytestream2_get_le32.exit.i
  %i.cj = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.ck = icmp ult ptr %i.cj, %i.ci
  br i1 %i.ck, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cl = call fastcc i32 @dxv_decompress_cgo(ptr noundef nonnull %i.h, ptr noundef nonnull %i.j, i32 noundef %i.m, ptr noundef %i.o, ptr noundef %i.e, i32 noundef %.0.i44.i, ptr noundef %i.a, ptr noundef %i.d, ptr noundef %i.b, ptr noundef %i.c, i32 noundef 0) ; 2 uses
  %i.cm = icmp slt i32 %i.cl, 0
  br i1 %i.cm, label %dxv_decompress_yo.exit.thread, label %bb.m, !llvm.loop !70

dxv_decompress_yo.exit.thread:                    ; preds = %bb.n, %bytestream2_get_le32.exit45.i, %bb.f, %bb.g, %bb.e
  %.0.i.ph = phi i32 [ -1094995529, %bytestream2_get_le32.exit45.i ], [ -1094995529, %bb.e ], [ %i.av, %bb.g ], [ -1094995529, %bb.f ], [ %i.cl, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.cn = add nsw i32 %.0.i46.i, %i.al
  %i.co = add nsw i32 %i.cn, %i.av                ; 2 uses
  %i.cp = add nsw i32 %i.co, -8
  %i.cq = load ptr, ptr %i.s, align 8, !tbaa !34
  %i.cr = load ptr, ptr %i.ah, align 8, !tbaa !33 ; 2 uses
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = trunc i64 %i.cu to i32
  %i.cw = icmp slt i32 %i.co, 8
  %..i.i.i = tail call i32 @llvm.smin.i32(i32 %i.cp, i32 %i.cv)
  %.0.i.i.i = select i1 %i.cw, i32 0, i32 %..i.i.i
  %i.cx = sext i32 %.0.i.i.i to i64
  %i.cy = getelementptr inbounds i8, ptr %i.cr, i64 %i.cx
  store ptr %i.cy, ptr %i.h, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.cz = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !45
  %i.db = getelementptr inbounds nuw i8, ptr %i.g, i64 184
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !42
  %i.dd = trunc i64 %i.dc to i32
  %i.de = getelementptr inbounds nuw i8, ptr %i.g, i64 200
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !35
  %i.dg = getelementptr inbounds nuw i8, ptr %i.g, i64 208
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !35
  %i.di = getelementptr inbounds nuw i8, ptr %i.g, i64 248
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !43
  %i.dk = trunc i64 %i.dj to i32
  %i.dl = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !43
  %i.dn = trunc i64 %i.dm to i32
  %i.do = tail call fastcc i32 @dxv_decompress_cocg(ptr noundef nonnull %i.h, ptr noundef %i.da, i32 noundef %i.dd, ptr noundef %i.df, ptr noundef %i.dh, i32 noundef %i.dk, i32 noundef %i.dn)
  br label %bb.p

bb.p:                                             ; preds = %dxv_decompress_yo.exit.thread, %bb.o
  %.0 = phi i32 [ %i.do, %bb.o ], [ %.0.i.ph, %dxv_decompress_yo.exit.thread ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -2147483648, 1) i32 @dxv_decompress_yg10(ptr nofree noundef readonly captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !41
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.g = load i64, ptr %i.f, align 8, !tbaa !39
  %i.h = trunc i64 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !35
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !35
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.n = load i64, ptr %i.m, align 8, !tbaa !43
  %i.o = trunc i64 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  %i.q = load i64, ptr %i.p, align 8, !tbaa !43
  %i.r = trunc i64 %i.q to i32
  %i.s = tail call fastcc i32 @dxv_decompress_cocg(ptr noundef nonnull %i.c, ptr noundef %i.e, i32 noundef %i.h, ptr noundef %i.j, ptr noundef %i.l, i32 noundef %i.o, i32 noundef %i.r) ; 2 uses
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !45
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.x = load i64, ptr %i.w, align 8, !tbaa !42
  %i.y = trunc i64 %i.x to i32
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !35
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !35
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !43
  %i.af = trunc i64 %i.ae to i32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !43
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = tail call fastcc i32 @dxv_decompress_cocg(ptr noundef nonnull %i.c, ptr noundef %i.v, i32 noundef %i.y, ptr noundef %i.aa, ptr noundef %i.ac, i32 noundef %i.af, i32 noundef %i.ai)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.aj, %bb.b ], [ %i.s, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1094995529, 1) i32 @dxv_decompress_raw(ptr nofree noundef readonly captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !34
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !32   ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  %sext = shl i64 %i.i, 32
  %i.j = ashr exact i64 %sext, 32
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.l = load i64, ptr %i.k, align 8, !tbaa !39   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %i.j
  br i1 %i.m, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !41
  %i.p = and i64 %i.l, 4294967295
  %i.q = icmp sgt i64 %i.i, %i.p
  %.v = select i1 %i.q, i64 %i.l, i64 %i.i
  %i.r = and i64 %.v, 4294967295                  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.f, i64 %i.r, i1 false)
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.r
  store ptr %i.t, ptr %i.c, align 8, !tbaa !32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -1094995529, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @dxv_decompress_lzf(ptr nofree noundef readonly captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !40
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 176 ; 2 uses
  %i.h = tail call i32 @ff_lzf_uncompress(ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.c) #11
  %i.i = zext i32 %i.d to i64
  %i.j = load i64, ptr %i.g, align 8, !tbaa !39
  %i.k = tail call i64 @llvm.umax.i64(i64 %i.j, i64 %i.i) ; 2 uses
  %i.l = trunc i64 %i.k to i32                    ; 2 uses
  %i.m = load i32, ptr %i.c, align 8, !tbaa !40   ; 2 uses
  %i.n = icmp ugt i32 %i.m, %i.l
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !41
  %i.p = and i64 %i.k, 4294967295
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.p
  %i.r = sub nuw i32 %i.m, %i.l
  %i.s = zext i32 %i.r to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.q, i8 0, i64 %i.s, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 %i.h
}

declare ptr @av_fast_realloc(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare i32 @ff_thread_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ff_texturedsp_exec_decompress_threads(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @dxv_decompress_cocg(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4, i32 noundef %5, i32 noundef %6) unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca [256 x ptr], align 16             ; 5 uses
  %i.c = alloca [256 x ptr], align 16             ; 5 uses
  %i.d = alloca [256 x ptr], align 16             ; 5 uses
  %i.e = alloca [256 x ptr], align 16             ; 5 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %i.b, i8 0, i64 2048, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
end_hunk_3
begin_hunk_4_@dxv_decompress_cocg:bb.a
  %.pre3 = ptrtoint ptr %i.aa to i64
  br label %bytestream2_get_le32.exit69

bytestream2_get_le32.exit69:                      ; preds = %bb.d, %bb.e
  %.pre-phi4 = phi i64 [ %i.m, %bb.d ], [ %.pre3, %bb.e ] ; 2 uses
  %i.ac = phi ptr [ %i.k, %bb.d ], [ %i.aa, %bb.e ]
  %.0.i68 = phi i32 [ 0, %bb.d ], [ %i.ab, %bb.e ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !33
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = sub i64 %.pre-phi4, %i.af
  %i.ah = trunc i64 %i.ag to i32                  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  store i32 0, ptr %i.f, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #11
  store i32 0, ptr %i.g, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #11
  store i32 0, ptr %i.h, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #11
  store i32 0, ptr %i.i, align 4, !tbaa !46
  %i.ai = icmp slt i32 %.0.i72, 12
  br i1 %i.ai, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bytestream2_get_le32.exit69
  %i.aj = add nsw i32 %.0.i72, -12                ; 3 uses
  %i.ak = sub i64 %i.m, %.pre-phi4                ; 2 uses
  %i.al = trunc i64 %i.ak to i32
  %i.am = icmp sgt i32 %i.aj, %i.al
  br i1 %i.am, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = zext nneg i32 %i.aj to i64
  %..i = tail call i64 @llvm.smin.i64(i64 %i.ak, i64 %i.an)
  %i.ao = getelementptr inbounds i8, ptr %i.ac, i64 %..i
  store ptr %i.ao, ptr %0, align 8, !tbaa !32
  %i.ap = icmp ugt i32 %.0.i70, %5
  br i1 %i.ap, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = zext i32 %.0.i70 to i64
  %i.ar = tail call fastcc i32 @dxv_decompress_opcodes(ptr noundef nonnull %0, ptr noundef %3, i64 noundef %i.aq) ; 3 uses
  %i.as = icmp slt i32 %i.ar, 0
  br i1 %i.as, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = icmp ugt i32 %.0.i68, %6
  br i1 %i.at, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = zext i32 %.0.i68 to i64
  %i.av = tail call fastcc i32 @dxv_decompress_opcodes(ptr noundef nonnull %0, ptr noundef %4, i64 noundef %i.au) ; 3 uses
  %i.aw = icmp slt i32 %i.av, 0
  br i1 %i.aw, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = load ptr, ptr %i.j, align 8, !tbaa !34  ; 2 uses
  %i.ay = load ptr, ptr %i.ad, align 8, !tbaa !33 ; 2 uses
  %i.az = ptrtoint ptr %i.ax to i64               ; 2 uses
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = icmp slt i32 %i.ah, 0
  %..i.i74 = tail call i32 @llvm.smin.i32(i32 %i.ah, i32 %i.bc)
  %.0.i.i75 = select i1 %i.bd, i32 0, i32 %..i.i74
  %i.be = sext i32 %.0.i.i75 to i64
  %i.bf = getelementptr inbounds i8, ptr %i.ay, i64 %i.be ; 3 uses
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = sub i64 %i.az, %i.bg
  %i.bi = icmp slt i64 %i.bh, 4
  br i1 %i.bi, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store ptr %i.ax, ptr %0, align 8, !tbaa !32
  br label %bytestream2_get_le32.exit67

bb.m:                                             ; preds = %bb.k
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  store ptr %i.bj, ptr %0, align 8, !tbaa !35
  %i.bk = load i32, ptr %i.bf, align 1, !tbaa !36
  br label %bytestream2_get_le32.exit67

bytestream2_get_le32.exit67:                      ; preds = %bb.l, %bb.m
  %.0.i66 = phi i32 [ 0, %bb.l ], [ %i.bk, %bb.m ]
  store i32 %.0.i66, ptr %1, align 1, !tbaa !36
  %i.bl = load ptr, ptr %i.j, align 8, !tbaa !34  ; 2 uses
  %i.bm = load ptr, ptr %0, align 8, !tbaa !32    ; 3 uses
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = icmp slt i64 %i.bp, 4
  br i1 %i.bq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bytestream2_get_le32.exit67
  store ptr %i.bl, ptr %0, align 8, !tbaa !32
  br label %bytestream2_get_le32.exit65

bb.o:                                             ; preds = %bytestream2_get_le32.exit67
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  store ptr %i.br, ptr %0, align 8, !tbaa !35
  %i.bs = load i32, ptr %i.bm, align 1, !tbaa !36
  br label %bytestream2_get_le32.exit65

bytestream2_get_le32.exit65:                      ; preds = %bb.n, %bb.o
  %.0.i64 = phi i32 [ 0, %bb.n ], [ %i.bs, %bb.o ]
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %.0.i64, ptr %i.bt, align 1, !tbaa !36
  %i.bu = load ptr, ptr %i.j, align 8, !tbaa !34  ; 2 uses
  %i.bv = load ptr, ptr %0, align 8, !tbaa !32    ; 3 uses
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = icmp slt i64 %i.by, 4
  br i1 %i.bz, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bytestream2_get_le32.exit65
  store ptr %i.bu, ptr %0, align 8, !tbaa !32
  br label %bytestream2_get_le32.exit63

bb.q:                                             ; preds = %bytestream2_get_le32.exit65
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  store ptr %i.ca, ptr %0, align 8, !tbaa !35
  %i.cb = load i32, ptr %i.bv, align 1, !tbaa !36
  br label %bytestream2_get_le32.exit63

bytestream2_get_le32.exit63:                      ; preds = %bb.p, %bb.q
  %.0.i62 = phi i32 [ 0, %bb.p ], [ %i.cb, %bb.q ]
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store i32 %.0.i62, ptr %i.cc, align 1, !tbaa !36
  %i.cd = load ptr, ptr %i.j, align 8, !tbaa !34  ; 2 uses
  %i.ce = load ptr, ptr %0, align 8, !tbaa !32    ; 3 uses
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = icmp slt i64 %i.ch, 4
  br i1 %i.ci, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bytestream2_get_le32.exit63
  store ptr %i.cd, ptr %0, align 8, !tbaa !32
  br label %bytestream2_get_le32.exit

bb.s:                                             ; preds = %bytestream2_get_le32.exit63
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  store ptr %i.cj, ptr %0, align 8, !tbaa !35
  %i.ck = load i32, ptr %i.ce, align 1, !tbaa !36
  br label %bytestream2_get_le32.exit

bytestream2_get_le32.exit:                        ; preds = %bb.r, %bb.s
  %.0.i = phi i32 [ 0, %bb.r ], [ %i.ck, %bb.s ]
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %.0.i, ptr %i.cl, align 1, !tbaa !36
  %i.cm = load i16, ptr %1, align 1, !tbaa !36
  %i.cn = zext i16 %i.cm to i64
  %i.co = mul nuw nsw i64 %i.cn, 2654435761
  %i.cp = lshr i64 %i.co, 24
  %i.cq = and i64 %i.cp, 255
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.cq
  store ptr %1, ptr %i.cr, align 8, !tbaa !35
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 1, !tbaa !36
  %i.cu = and i32 %i.ct, 16777215
  %i.cv = mul i32 %i.cu, -1640531535
  %i.cw = lshr i32 %i.cv, 24
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.cx
  store ptr %i.cs, ptr %i.cy, align 8, !tbaa !35
  %i.cz = load i16, ptr %i.cc, align 1, !tbaa !36
  %i.da = zext i16 %i.cz to i64
  %i.db = mul nuw nsw i64 %i.da, 2654435761
  %i.dc = lshr i64 %i.db, 24
  %i.dd = and i64 %i.dc, 255
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.dd
  store ptr %i.cc, ptr %i.de, align 8, !tbaa !35
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 1, !tbaa !36
  %i.dh = and i32 %i.dg, 16777215
  %i.di = mul i32 %i.dh, -1640531535
  %i.dj = lshr i32 %i.di, 24
  %i.dk = zext nneg i32 %i.dj to i64
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.dk
  store ptr %i.df, ptr %i.dl, align 8, !tbaa !35
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.dm, ptr %i.a, align 8, !tbaa !35
  %i.dn = sext i32 %2 to i64
  %i.do = getelementptr inbounds i8, ptr %1, i64 %i.dn
  br label %bb.t

bb.t:                                             ; preds = %bb.v, %bytestream2_get_le32.exit
  %i.dp = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 10
  %i.dr = icmp ult ptr %i.dq, %i.do
  br i1 %i.dr, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.ds = call fastcc i32 @dxv_decompress_cgo(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %2, ptr noundef %3, ptr noundef %i.f, i32 noundef %.0.i70, ptr noundef %i.a, ptr noundef %i.h, ptr noundef %i.c, ptr noundef %i.e, i32 noundef 8) ; 2 uses
  %i.dt = icmp slt i32 %i.ds, 0
  br i1 %i.dt, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.du = call fastcc i32 @dxv_decompress_cgo(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %2, ptr noundef %4, ptr noundef %i.g, i32 noundef %.0.i68, ptr noundef %i.a, ptr noundef %i.i, ptr noundef %i.b, ptr noundef %i.d, i32 noundef 8) ; 2 uses
  %i.dv = icmp slt i32 %i.du, 0
  br i1 %i.dv, label %.loopexit, label %bb.t, !llvm.loop !71

bb.w:                                             ; preds = %bb.t
  %i.dw = add i32 %i.aj, %i.ah
  %i.dx = add nsw i32 %i.dw, %i.ar
  %i.dy = add nsw i32 %i.dx, %i.av                ; 2 uses
  %i.dz = load ptr, ptr %i.j, align 8, !tbaa !34
  %i.ea = load ptr, ptr %i.ad, align 8, !tbaa !33 ; 2 uses
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = sub i64 %i.eb, %i.ec
  %i.ee = trunc i64 %i.ed to i32
  %i.ef = icmp slt i32 %i.dy, 0
  %..i.i = tail call i32 @llvm.smin.i32(i32 %i.dy, i32 %i.ee)
  %.0.i.i = select i1 %i.ef, i32 0, i32 %..i.i
  %i.eg = sext i32 %.0.i.i to i64
  %i.eh = getelementptr inbounds i8, ptr %i.ea, i64 %i.eg
  store ptr %i.eh, ptr %0, align 8, !tbaa !32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.v, %bb.u, %bb.j, %bb.i, %bb.h, %bb.g, %bytestream2_get_le32.exit69, %bb.f, %bb.w
  %.0 = phi i32 [ 0, %bb.w ], [ -1094995529, %bytestream2_get_le32.exit69 ], [ -1094995529, %bb.g ], [ %i.ar, %bb.h ], [ -1094995529, %bb.i ], [ %i.av, %bb.j ], [ -1094995529, %bb.f ], [ %i.du, %bb.v ], [ %i.ds, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @dxv_decompress_opcodes(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef range(i64 0, 4294967296) %2) unnamed_addr #4 {
bb.a:
  %i.a = alloca [256 x i32], align 16             ; 14 uses
  %3 = alloca [1024 x %struct.OpcodeTable], align 16 ; 6 uses
  %i.b = alloca [256 x i32], align 16             ; 13 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !32     ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.f = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %.neg = sub i64 %i.g, %i.f
  %.neg49 = trunc i64 %.neg to i32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !34   ; 7 uses
  %i.j = ptrtoint ptr %i.i to i64                 ; 7 uses
  %i.k = sub i64 %i.j, %i.f                       ; 3 uses
  %i.l = icmp slt i64 %i.k, 1
  br i1 %i.l, label %bytestream2_peek_byte.exit.thread, label %bytestream2_peek_byte.exit

bytestream2_peek_byte.exit:                       ; preds = %bb.a
  %i.m = load i8, ptr %i.c, align 1, !tbaa !36
  %i.n = and i8 %i.m, 3
  switch i8 %i.n, label %bb.e [
    i8 0, label %bytestream2_peek_byte.exit.thread
    i8 1, label %bb.b
  ]

bytestream2_peek_byte.exit.thread:                ; preds = %bb.a, %bytestream2_peek_byte.exit
  %..i33 = tail call i64 @llvm.smin.i64(i64 %i.k, i64 1)
  %i.o = getelementptr inbounds i8, ptr %i.c, i64 %..i33 ; 3 uses
  store ptr %i.o, ptr %0, align 8, !tbaa !32
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = sub i64 %i.j, %i.p
  %.v = tail call i64 @llvm.smin.i64(i64 %i.q, i64 %2) ; 2 uses
  %i.r = and i64 %.v, 4294967295                  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.o, i64 %i.r, i1 false)
  %i.s = load ptr, ptr %0, align 8, !tbaa !32
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.r ; 2 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !32
  %i.u = shl i64 %.v, 32
  %i.v = ashr exact i64 %i.u, 32
  %.not = icmp eq i64 %2, %i.v
  br i1 %.not, label %bb.aa, label %bb.ab

bb.b:                                             ; preds = %bytestream2_peek_byte.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.j, %i.x
  %i.z = icmp slt i64 %i.y, 1
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr %i.i, ptr %0, align 8, !tbaa !32
  br label %bytestream2_get_byte.exit

bb.d:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store ptr %i.aa, ptr %0, align 8, !tbaa !35
  %i.ab = load i8, ptr %i.w, align 1, !tbaa !36
  br label %bytestream2_get_byte.exit

bytestream2_get_byte.exit:                        ; preds = %bb.c, %bb.d
  %.0.i = phi i8 [ 0, %bb.c ], [ %i.ab, %bb.d ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 %.0.i, i64 %2, i1 false)
  %.pre = load ptr, ptr %0, align 8, !tbaa !32
  br label %bb.aa

bb.e:                                             ; preds = %bytestream2_peek_byte.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.ac = icmp samesign ult i64 %i.k, 4
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr %i.i, ptr %0, align 8, !tbaa !32
  br label %bytestream2_get_le32.exit.i.preheader

bytestream2_get_le32.exit.i.preheader:            ; preds = %bb.g, %bb.f
  %.04363.i78.ph = phi i32 [ 0, %bb.f ], [ %i.af, %bb.g ]
  %.ph = phi ptr [ %i.i, %bb.f ], [ %i.ad, %bb.g ]
  br label %bytestream2_get_le32.exit.i

bb.g:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  store ptr %i.ad, ptr %0, align 8, !tbaa !35
  %i.ae = load i32, ptr %i.c, align 1, !tbaa !36
  %i.af = lshr i32 %i.ae, 2
  br label %bytestream2_get_le32.exit.i.preheader

.preheader.i:                                     ; preds = %bb.m
  %i.ag = getelementptr [4 x i8], ptr %i.b, i64 %indvars.iv.next.i
  %.not5367.i = icmp eq i32 %i.al, 0
  br i1 %.not5367.i, label %.lr.ph, label %._crit_edge.i

bb.h:                                             ; preds = %bb.m
  %i.ah = icmp ult i32 %i.am, %.04860.i81         ; 2 uses
  %i.ai = zext i1 %i.ah to i32                    ; 2 uses
  %.149.i = lshr i32 %.04860.i81, %i.ai
  %.147.i = lshr i32 %.04661.i80, %i.ai
  %i.aj = sext i1 %i.ah to i32
  %.140.i = add nsw i32 %.03965.i77, %i.aj
  %indvars.iv.next76.i = add nuw nsw i64 %indvars.iv75.i74, 1
  %exitcond.i = icmp eq i64 %indvars.iv.next.i, 256
  br i1 %exitcond.i, label %.thread, label %bytestream2_get_le32.exit.i, !llvm.loop !72

bytestream2_get_le32.exit.i:                      ; preds = %bytestream2_get_le32.exit.i.preheader, %bb.h
  %.04860.i81 = phi i32 [ %.149.i, %bb.h ], [ 512, %bytestream2_get_le32.exit.i.preheader ] ; 2 uses
  %.04661.i80 = phi i32 [ %.147.i, %bb.h ], [ 1023, %bytestream2_get_le32.exit.i.preheader ] ; 2 uses
  %.04562.i79 = phi i32 [ %i.am, %bb.h ], [ 1024, %bytestream2_get_le32.exit.i.preheader ]
  %.04363.i78 = phi i32 [ %.144.i, %bb.h ], [ %.04363.i78.ph, %bytestream2_get_le32.exit.i.preheader ] ; 2 uses
  %.03965.i77 = phi i32 [ %.140.i, %bb.h ], [ 10, %bytestream2_get_le32.exit.i.preheader ] ; 3 uses
  %.066.i76 = phi i32 [ %.1.i, %bb.h ], [ 30, %bytestream2_get_le32.exit.i.preheader ]
  %indvars.iv.i75 = phi i64 [ %indvars.iv.next.i, %bb.h ], [ 0, %bytestream2_get_le32.exit.i.preheader ] ; 2 uses
  %indvars.iv75.i74 = phi i64 [ %indvars.iv.next76.i, %bb.h ], [ 1, %bytestream2_get_le32.exit.i.preheader ] ; 2 uses
  %i.ak = phi ptr [ %i.bd, %bb.h ], [ %.ph, %bytestream2_get_le32.exit.i.preheader ] ; 4 uses
  %i.al = and i32 %.04661.i80, %.04363.i78        ; 3 uses
  %i.am = sub i32 %.04562.i79, %i.al              ; 3 uses
  %i.an = lshr i32 %.04363.i78, %.03965.i77       ; 2 uses
  %i.ao = sub nsw i32 %.066.i76, %.03965.i77      ; 4 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i75, 1 ; 4 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i75
  store i32 %i.al, ptr %i.ap, align 4, !tbaa !46
  %i.aq = icmp slt i32 %i.ao, 16
  br i1 %i.aq, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bytestream2_get_le32.exit.i
  %i.ar = ptrtoint ptr %i.ak to i64
  %i.as = sub i64 %i.j, %i.ar                     ; 2 uses
  %i.at = trunc i64 %i.as to i32
  %i.au = icmp slt i32 %i.at, 1
  br i1 %i.au, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = icmp slt i64 %i.as, 2
  br i1 %i.av, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store ptr %i.i, ptr %0, align 8, !tbaa !32
  br label %bytestream2_get_le16.exit.i

bb.l:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 2 ; 2 uses
  store ptr %i.aw, ptr %0, align 8, !tbaa !35
  %i.ax = load i16, ptr %i.ak, align 1, !tbaa !36
  %i.ay = zext i16 %i.ax to i32
  br label %bytestream2_get_le16.exit.i

bytestream2_get_le16.exit.i:                      ; preds = %bb.l, %bb.k
  %i.az = phi ptr [ %i.i, %bb.k ], [ %i.aw, %bb.l ]
  %.0.i54.i = phi i32 [ 0, %bb.k ], [ %i.ay, %bb.l ]
  %i.ba = shl nuw nsw i32 %.0.i54.i, %i.ao
  %i.bb = add i32 %i.ba, %i.an
  %i.bc = add nsw i32 %i.ao, 16
  br label %bb.m

bb.m:                                             ; preds = %bytestream2_get_le16.exit.i, %bytestream2_get_le32.exit.i
  %i.bd = phi ptr [ %i.az, %bytestream2_get_le16.exit.i ], [ %i.ak, %bytestream2_get_le32.exit.i ] ; 4 uses
  %.144.i = phi i32 [ %i.bb, %bytestream2_get_le16.exit.i ], [ %i.an, %bytestream2_get_le32.exit.i ]
  %.1.i = phi i32 [ %i.bc, %bytestream2_get_le16.exit.i ], [ %i.ao, %bytestream2_get_le32.exit.i ] ; 2 uses
  %.not.i = icmp eq i32 %i.am, 0
  br i1 %.not.i, label %.preheader.i, label %bb.h, !llvm.loop !72

.lr.ph.i:                                         ; preds = %.lr.ph
  %i.be = icmp slt i64 %indvars.iv78.i82, 2
  br i1 %i.be, label %.thread, label %.lr.ph, !llvm.loop !73

.lr.ph:                                           ; preds = %.preheader.i, %.lr.ph.i
  %indvars.iv78.i82 = phi i64 [ %indvars.iv.next79.i, %.lr.ph.i ], [ %indvars.iv75.i74, %.preheader.i ] ; 2 uses
  %indvars.iv.next79.i = add nsw i64 %indvars.iv78.i82, -1 ; 3 uses
  %i.bf = getelementptr [4 x i8], ptr %i.b, i64 %indvars.iv.next79.i ; 2 uses
  %i.bg = getelementptr i8, ptr %i.bf, i64 -4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !46
  %.not53.i = icmp eq i32 %i.bh, 0
  br i1 %.not53.i, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !73

._crit_edge.i:                                    ; preds = %.lr.ph, %.preheader.i
  %.142.lcssa.in.i = phi i64 [ %indvars.iv.next.i, %.preheader.i ], [ %indvars.iv.next79.i, %.lr.ph ] ; 4 uses
  %.lcssa.i = phi ptr [ %i.ag, %.preheader.i ], [ %i.bf, %.lr.ph ]
  %.142.lcssa.i = trunc i64 %.142.lcssa.in.i to i32 ; 3 uses
  %i.bi = icmp samesign ult i32 %.142.lcssa.i, 256
  br i1 %i.bi, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge.i
  %i.bj = shl i64 %.142.lcssa.in.i, 2
  %i.bk = sub i64 1024, %i.bj
  %i.bl = and i64 %i.bk, 2044
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %.lcssa.i, i8 0, i64 %i.bl, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge.i
  %i.bm = icmp sgt i32 %.1.i, 15
  br i1 %i.bm, label %bb.p, label %fill_ltable.exit

bb.p:                                             ; preds = %bb.o
  %i.bn = ptrtoint ptr %i.bd to i64               ; 2 uses
  %.neg.i.i = sub i64 %i.g, %i.bn
  %i.bo = trunc i64 %.neg.i.i to i32              ; 2 uses
  %i.bp = sub i64 %i.j, %i.bn
  %i.bq = trunc i64 %i.bp to i32
  %i.br = icmp sgt i32 %i.bo, -2
  %..i21.i.i = tail call i32 @llvm.smin.i32(i32 %i.bq, i32 -2)
  %.0.i22.i.i = select i1 %i.br, i32 %i.bo, i32 %..i21.i.i
  %i.bs = sext i32 %.0.i22.i.i to i64
  %i.bt = getelementptr inbounds i8, ptr %i.bd, i64 %i.bs ; 2 uses
  store ptr %i.bt, ptr %0, align 8, !tbaa !32
  br label %fill_ltable.exit

fill_ltable.exit:                                 ; preds = %bb.p, %bb.o
  %i.bu = phi ptr [ %i.bt, %bb.p ], [ %i.bd, %bb.o ] ; 5 uses
  %i.bv = trunc nuw i64 %2 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.a, i8 0, i64 1024, i1 false)
  %i.bw = load i32, ptr %i.b, align 16, !tbaa !46 ; 4 uses
  store i32 %i.bw, ptr %i.a, align 16, !tbaa !46
  %i.bx = icmp sgt i32 %.142.lcssa.i, 1
  br i1 %i.bx, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %fill_ltable.exit
  %i.by = add i64 %.142.lcssa.in.i, 4294967295    ; 3 uses
  %wide.trip.count.i.i = and i64 %i.by, 4294967295
  %i.bz = add nsw i64 %wide.trip.count.i.i, -1
  %xtraiter = and i64 %i.by, 3                    ; 3 uses
  %i.ca = icmp ult i64 %i.bz, 3
  br i1 %i.ca, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter = and i64 %i.by, 4294967292
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.new
  %i.cb = phi i32 [ %i.bw, %.lr.ph.preheader.i.i.new ], [ %i.cq, %.lr.ph.i.i ]
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next.i.i.3, %.lr.ph.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.i.i
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !46
  %i.ce = add i32 %i.cd, %i.cb                    ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i.i
  store i32 %i.ce, ptr %i.cf, align 4, !tbaa !46
  %indvars.iv.next.i.i.1 = or disjoint i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.i.i.1
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !46
  %i.ci = add i32 %i.ch, %i.ce                    ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i.i.1
  store i32 %i.ci, ptr %i.cj, align 8, !tbaa !46
  %indvars.iv.next.i.i.2 = or disjoint i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.i.i.2
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !46
  %i.cm = add i32 %i.cl, %i.ci                    ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i.i.2
  store i32 %i.cm, ptr %i.cn, align 4, !tbaa !46
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 4 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.i.i.3
  %i.cp = load i32, ptr %i.co, align 16, !tbaa !46
  %i.cq = add i32 %i.cp, %i.cm                    ; 3 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i.i.3
  store i32 %i.cq, ptr %i.cr, align 16, !tbaa !46
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !74

._crit_edge.i.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i
  %.epil.init = phi i32 [ %i.bw, %.lr.ph.preheader.i.i ], [ %i.cq, %._crit_edge.i.i.loopexit.unr-lcssa ]
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.3, %._crit_edge.i.i.loopexit.unr-lcssa ]
  %lcmp.mod92 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod92)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %i.cs = phi i32 [ %.epil.init, %.lr.ph.i.i.epil.preheader ], [ %i.cv, %.lr.ph.i.i.epil ]
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.lr.ph.i.i.epil.preheader ], [ %indvars.iv.next.i.i.epil, %.lr.ph.i.i.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1 ; 3 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.i.i.epil
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !46
  %i.cv = add i32 %i.cu, %i.cs                    ; 2 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i.i.epil
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !46
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i, label %.lr.ph.i.i.epil, !llvm.loop !75

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %fill_ltable.exit
  %.not.i.i = icmp eq i32 %i.bw, 0
  br i1 %.not.i.i, label %.preheader.i.i, label %.loopexit.i.i.preheader

.preheader.i.i:                                   ; preds = %._crit_edge.i.i, %.preheader.i.i
  %indvars.iv69.i.i = phi i64 [ %indvars.iv.next70.i.i, %.preheader.i.i ], [ 0, %._crit_edge.i.i ]
  %indvars.iv.next70.i.i = add nuw nsw i64 %indvars.iv69.i.i, 1 ; 3 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next70.i.i
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !46
  %.not49.i.i = icmp eq i32 %i.cy, 0
  br i1 %.not49.i.i, label %.preheader.i.i, label %.loopexit.loopexit.i.i, !llvm.loop !76

.loopexit.loopexit.i.i:                           ; preds = %.preheader.i.i
  %i.cz = trunc nuw nsw i64 %indvars.iv.next70.i.i to i32
  br label %.loopexit.i.i.preheader

.loopexit.i.i.preheader:                          ; preds = %.loopexit.loopexit.i.i, %._crit_edge.i.i
  %.259.i.i.ph = phi i32 [ %i.cz, %.loopexit.loopexit.i.i ], [ 0, %._crit_edge.i.i ]
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.loopexit.i.i.preheader, %.critedge.i.i
  %.259.i.i = phi i32 [ %.3.lcssa.i.i, %.critedge.i.i ], [ %.259.i.i.ph, %.loopexit.i.i.preheader ] ; 4 uses
  %.04158.i.i = phi i32 [ %i.dm, %.critedge.i.i ], [ 2, %.loopexit.i.i.preheader ] ; 2 uses
  %.04556.i.i = phi i32 [ %i.dl, %.critedge.i.i ], [ 0, %.loopexit.i.i.preheader ] ; 2 uses
  %i.da = trunc i32 %.259.i.i to i8
  %i.db = zext nneg i32 %.04556.i.i to i64
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 2
  store i8 %i.da, ptr %i.dd, align 2, !tbaa !84
  %i.de = icmp slt i32 %.259.i.i, 256
  br i1 %i.de, label %.lr.ph53.preheader.i.i, label %.critedge.i.i

.lr.ph53.preheader.i.i:                           ; preds = %.loopexit.i.i
  %i.df = sext i32 %.259.i.i to i64
  br label %.lr.ph53.i.i

.lr.ph53.i.i:                                     ; preds = %bb.q, %.lr.ph53.preheader.i.i
  %indvars.iv72.i.i = phi i64 [ %i.df, %.lr.ph53.preheader.i.i ], [ %indvars.iv.next73.i.i, %bb.q ] ; 3 uses
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv72.i.i
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !46
  %i.di = icmp ugt i32 %.04158.i.i, %i.dh
  br i1 %i.di, label %bb.q, label %.critedge.loopexit.split.loop.exit85.i.i

bb.q:                                             ; preds = %.lr.ph53.i.i
  %indvars.iv.next73.i.i = add nsw i64 %indvars.iv72.i.i, 1 ; 2 uses
  %exitcond75.not.i.i = icmp eq i64 %indvars.iv.next73.i.i, 256
  br i1 %exitcond75.not.i.i, label %.critedge.i.i, label %.lr.ph53.i.i, !llvm.loop !77

.critedge.loopexit.split.loop.exit85.i.i:         ; preds = %.lr.ph53.i.i
  %i.dj = trunc nsw i64 %indvars.iv72.i.i to i32
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.q, %.critedge.loopexit.split.loop.exit85.i.i, %.loopexit.i.i
  %.3.lcssa.i.i = phi i32 [ %.259.i.i, %.loopexit.i.i ], [ %i.dj, %.critedge.loopexit.split.loop.exit85.i.i ], [ 256, %bb.q ]
  %i.dk = add nuw nsw i32 %.04556.i.i, 641
  %i.dl = and i32 %i.dk, 1023
  %i.dm = add nuw nsw i32 %.04158.i.i, 1          ; 2 uses
  %exitcond76.not.i.i = icmp eq i32 %i.dm, 1026
  br i1 %exitcond76.not.i.i, label %bb.r, label %.loopexit.i.i, !llvm.loop !78

bb.r:                                             ; preds = %.critedge.i.i
  %i.dn = icmp sgt i32 %.142.lcssa.i, 0
  br i1 %i.dn, label %bb.s, label %.preheader

bb.s:                                             ; preds = %bb.r
  %i.do = shl i64 %.142.lcssa.in.i, 2
  %i.dp = and i64 %i.do, 4294967292
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull readonly align 16 %i.b, i64 %i.dp, i1 false)
  br label %.preheader

.preheader:                                       ; preds = %bb.s, %bb.r
  br label %bb.t

bb.t:                                             ; preds = %.preheader, %bb.u
  %indvars.iv77.i.i = phi i64 [ %indvars.iv.next78.i.i, %bb.u ], [ 0, %.preheader ] ; 2 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv77.i.i ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 2
  %i.ds = load i8, ptr %i.dr, align 2, !tbaa !84
  %i.dt = zext i8 %i.ds to i64
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dt ; 2 uses
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !46 ; 4 uses
  %i.dw = add i32 %i.dv, 1
  store i32 %i.dw, ptr %i.du, align 4, !tbaa !46
  %i.dx = add i32 %i.dv, -2048
  %or.cond.i = icmp ult i32 %i.dx, -2047
  br i1 %or.cond.i, label %fill_optable.exit.thread.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dy = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.dv, i1 true)
  %i.dz = trunc nuw nsw i32 %i.dy to i8
  %i.ea = add nsw i8 %i.dz, -21                   ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dq, i64 3
  store i8 %i.ea, ptr %i.eb, align 1, !tbaa !85
  %i.ec = zext nneg i8 %i.ea to i32
  %i.ed = shl nuw nsw i32 %i.dv, %i.ec
  %i.ee = trunc i32 %i.ed to i16
  %i.ef = add i16 %i.ee, -1024
  store i16 %i.ef, ptr %i.dq, align 4, !tbaa !86
  %indvars.iv.next78.i.i = add nuw nsw i64 %indvars.iv77.i.i, 1 ; 2 uses
  %exitcond80.not.i.i = icmp eq i64 %indvars.iv.next78.i.i, 1024
  br i1 %exitcond80.not.i.i, label %bb.v, label %bb.t, !llvm.loop !79

fill_optable.exit.thread.i:                       ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %.loopexit

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.eg = ptrtoint ptr %i.bu to i64
  %i.eh = sub i64 %i.j, %i.eg
  %i.ei = icmp slt i64 %i.eh, 4
  br i1 %i.ei, label %bytestream2_get_le32.exit.thread.i, label %bytestream2_get_le32.exit.i35

bytestream2_get_le32.exit.thread.i:               ; preds = %bb.v
  store ptr %i.i, ptr %0, align 8, !tbaa !32
  br label %.loopexit

bytestream2_get_le32.exit.i35:                    ; preds = %bb.v
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bu, i64 4 ; 3 uses
  store ptr %i.ej, ptr %0, align 8, !tbaa !35
  %i.ek = load i32, ptr %i.bu, align 1, !tbaa !36 ; 3 uses
  %i.el = zext i32 %i.ek to i64
  %i.em = add nuw nsw i64 %i.el, 7
  %i.en = lshr i64 %i.em, 3
  %i.eo = trunc nuw nsw i64 %i.en to i32
  %i.ep = add nsw i32 %i.eo, -4                   ; 4 uses
  %i.eq = icmp ult i32 %i.ek, 33
  br i1 %i.eq, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %bytestream2_get_le32.exit.i35
  %i.er = ptrtoint ptr %i.ej to i64
  %i.es = sub i64 %i.j, %i.er                     ; 2 uses
  %i.et = trunc i64 %i.es to i32
  %i.eu = icmp ugt i32 %i.ep, %i.et
  br i1 %i.eu, label %.loopexit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ev = zext nneg i32 %i.ep to i64              ; 2 uses
  %i.ew = icmp sgt i32 %i.bv, 0
  br i1 %i.ew, label %.lr.ph.preheader.i, label %bb.z

.lr.ph.preheader.i:                               ; preds = %bb.x
  %i.ex = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.ev
  %i.ey = load i32, ptr %i.ex, align 1, !tbaa !36 ; 2 uses
  %i.ez = add i32 %i.ek, 7
  %i.fa = and i32 %i.ez, 7                        ; 2 uses
  %i.fb = add nuw nsw i32 %i.fa, 15
  %i.fc = lshr i32 %i.ey, %i.fb
  %i.fd = and i32 %i.fc, 1023
  %i.fe = sub nuw nsw i32 17, %i.fa
  br label %.lr.ph.i37

.lr.ph.i37:                                       ; preds = %bb.y, %.lr.ph.preheader.i
  %indvars.iv.i38 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i39, %bb.y ] ; 2 uses
  %.056.i = phi i32 [ %i.ey, %.lr.ph.preheader.i ], [ %i.gb, %bb.y ]
  %.04155.i = phi i32 [ %i.ep, %.lr.ph.preheader.i ], [ %i.fp, %bb.y ]
  %.04254.i = phi i32 [ %i.fd, %.lr.ph.preheader.i ], [ %i.fx, %bb.y ]
  %.04452.i = phi i32 [ %i.fe, %.lr.ph.preheader.i ], [ %i.fy, %bb.y ] ; 2 uses
  %i.ff = sext i32 %.04254.i to i64
  %i.fg = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ff ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 2
  %i.fi = load i8, ptr %i.fh, align 2, !tbaa !84
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i38
  store i8 %i.fi, ptr %i.fj, align 1, !tbaa !36
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fg, i64 3
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !85
  %i.fm = zext i8 %i.fl to i32                    ; 2 uses
  %i.fn = add nuw nsw i32 %.04452.i, %i.fm        ; 2 uses
  %i.fo = lshr i32 %i.fn, 3
  %i.fp = sub i32 %.04155.i, %i.fo                ; 3 uses
  %i.fq = icmp ugt i32 %i.fp, %i.ep
  br i1 %i.fq, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i37
  %i.fr = shl i32 %.056.i, %.04452.i
  %i.fs = lshr i32 %i.fr, 1
  %i.ft = sub nsw i32 31, %i.fm
  %i.fu = lshr i32 %i.fs, %i.ft
  %i.fv = load i16, ptr %i.fg, align 4, !tbaa !86
  %i.fw = sext i16 %i.fv to i32
  %i.fx = add nsw i32 %i.fu, %i.fw
  %i.fy = and i32 %i.fn, 7
  %i.fz = zext nneg i32 %i.fp to i64
  %i.ga = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.fz
  %i.gb = load i32, ptr %i.ga, align 1, !tbaa !36
  %indvars.iv.next.i39 = add nuw nsw i64 %indvars.iv.i38, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i39, %2
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i37, !llvm.loop !80

._crit_edge.loopexit.i:                           ; preds = %bb.y
  %.pre.i = load ptr, ptr %i.h, align 8, !tbaa !34
  %.pre59.i = load ptr, ptr %0, align 8, !tbaa !32 ; 2 uses
  %.pre60.i = ptrtoint ptr %.pre.i to i64
  %.pre61.i = ptrtoint ptr %.pre59.i to i64
  %.pre63.i = sub i64 %.pre60.i, %.pre61.i
  br label %bb.z

.loopexit:                                        ; preds = %.lr.ph.i37, %fill_optable.exit.thread.i, %bytestream2_get_le32.exit.i35, %bb.w, %bytestream2_get_le32.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %.thread

.thread:                                          ; preds = %bb.h, %bb.i, %.lr.ph.i, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %bb.ab

bb.z:                                             ; preds = %._crit_edge.loopexit.i, %bb.x
  %.pre-phi64.i = phi i64 [ %.pre63.i, %._crit_edge.loopexit.i ], [ %i.es, %bb.x ]
  %i.gc = phi ptr [ %.pre59.i, %._crit_edge.loopexit.i ], [ %i.ej, %bb.x ]
  %..i.i = tail call i64 @llvm.smin.i64(i64 %.pre-phi64.i, i64 %i.ev)
  %i.gd = getelementptr inbounds i8, ptr %i.gc, i64 %..i.i ; 2 uses
  store ptr %i.gd, ptr %0, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bytestream2_get_byte.exit, %bytestream2_peek_byte.exit.thread
  %i.ge = phi ptr [ %i.gd, %bb.z ], [ %.pre, %bytestream2_get_byte.exit ], [ %i.t, %bytestream2_peek_byte.exit.thread ]
  %i.gf = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.gg = ptrtoint ptr %i.ge to i64
  %i.gh = ptrtoint ptr %i.gf to i64
  %i.gi = sub i64 %i.gg, %i.gh
  %i.gj = trunc i64 %i.gi to i32
  %i.gk = add i32 %i.gj, %.neg49
  br label %bb.ab

bb.ab:                                            ; preds = %.thread, %bytestream2_peek_byte.exit.thread, %bb.aa
  %.2 = phi i32 [ %i.gk, %bb.aa ], [ -1094995529, %bytestream2_peek_byte.exit.thread ], [ -1094995529, %.thread ]
  ret i32 %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 -1094995529, 1) i32 @dxv_decompress_cgo(ptr nofree noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef nonnull captures(none) %4, i32 noundef %5, ptr nofree noundef nonnull captures(none) %6, ptr nofree noundef nonnull captures(none) %7, ptr nofree noundef nonnull captures(none) %8, ptr nofree noundef nonnull captures(none) %9, i32 noundef range(i32 0, 9) %10) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %6, align 8, !tbaa !35     ; 103 uses
  %i.b = load i32, ptr %4, align 4, !tbaa !46     ; 4 uses
  %i.c = load i32, ptr %7, align 4, !tbaa !46     ; 20 uses
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.pre = add nuw nsw i32 %10, 8
  %.pre8 = zext nneg i32 %.pre to i64
  %.pre10 = sub nsw i64 0, %.pre8
  %.pre12 = add nuw nsw i32 %10, 4
  %.pre14 = zext nneg i32 %.pre12 to i64
  %.pre16 = sub nsw i64 0, %.pre14
  br label %bb.dy

bb.b:                                             ; preds = %bb.a
  %.not = icmp slt i32 %i.b, %5
  br i1 %.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.e = add nsw i32 %i.b, 1                      ; 19 uses
  %i.f = sext i32 %i.b to i64
  %i.g = getelementptr inbounds i8, ptr %3, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !36
  switch i8 %i.h, label %bb.dz [
    i8 0, label %bb.d
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.j
    i8 4, label %bb.o
    i8 5, label %bb.y
    i8 6, label %bb.ai
    i8 7, label %bb.ar
    i8 8, label %bb.ax
    i8 9, label %bb.bf
    i8 10, label %bb.bq
    i8 11, label %bb.cb
    i8 12, label %bb.cl
    i8 13, label %bb.cs
    i8 14, label %bb.cx
    i8 15, label %bb.df
    i8 16, label %bb.dn
    i8 17, label %bb.du
  ]

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !34   ; 2 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !32     ; 3 uses
  %i.l = ptrtoint ptr %i.j to i64                 ; 3 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = icmp slt i64 %i.n, 1
  br i1 %i.o, label %.loopexit3.sink.split, label %bytestream2_get_byte.exit423

bytestream2_get_byte.exit423:                     ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 3 uses
  store ptr %i.p, ptr %0, align 8, !tbaa !35
  %i.q = load i8, ptr %i.k, align 1, !tbaa !36    ; 2 uses
  %i.r = zext i8 %i.q to i32
  %i.s = icmp eq i8 %i.q, -1
  br i1 %i.s, label %.preheader.preheader, label %.loopexit3

.preheader.preheader:                             ; preds = %bytestream2_get_byte.exit423
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.l, %i.t                       ; 2 uses
  %i.v = trunc i64 %i.u to i32
  %i.w = icmp slt i32 %i.v, 1
  br i1 %i.w, label %.loopexit, label %.lr.ph

.preheader:                                       ; preds = %bytestream2_get_le16.exit456
  %i.x = ptrtoint ptr %i.ae to i64
  %i.y = sub i64 %i.l, %i.x                       ; 2 uses
  %i.z = trunc i64 %i.y to i32
  %i.aa = icmp slt i32 %i.z, 1
  br i1 %i.aa, label %.loopexit, label %.lr.ph, !llvm.loop !87

.lr.ph:                                           ; preds = %.preheader.preheader, %.preheader
  %i.ab = phi i64 [ %i.y, %.preheader ], [ %i.u, %.preheader.preheader ]
  %.045 = phi i32 [ %i.ah, %.preheader ], [ 255, %.preheader.preheader ] ; 2 uses
  %i.ac = phi ptr [ %i.ae, %.preheader ], [ %i.p, %.preheader.preheader ] ; 2 uses
  %i.ad = icmp slt i64 %i.ab, 2
  br i1 %i.ad, label %.loopexit3.sink.split, label %bytestream2_get_le16.exit456

bytestream2_get_le16.exit456:                     ; preds = %.lr.ph
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 2 ; 3 uses
  store ptr %i.ae, ptr %0, align 8, !tbaa !35
  %i.af = load i16, ptr %i.ac, align 1, !tbaa !36 ; 2 uses
  %i.ag = zext i16 %i.af to i32
  %i.ah = add nuw nsw i32 %.045, %i.ag            ; 2 uses
  %i.ai = icmp eq i16 %i.af, -1
  br i1 %i.ai, label %.preheader, label %.loopexit3, !llvm.loop !87

.loopexit3.sink.split:                            ; preds = %.lr.ph, %bb.d
  %.1.ph = phi i32 [ 0, %bb.d ], [ %.045, %.lr.ph ]
  store ptr %i.j, ptr %0, align 8, !tbaa !32
  br label %.loopexit3

.loopexit3:                                       ; preds = %bytestream2_get_le16.exit456, %.loopexit3.sink.split, %bytestream2_get_byte.exit423
  %.1 = phi i32 [ %.1.ph, %.loopexit3.sink.split ], [ %i.r, %bytestream2_get_byte.exit423 ], [ %i.ah, %bytestream2_get_le16.exit456 ]
  %i.aj = add nuw nsw i32 %10, 8
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = sub nsw i64 0, %i.ak                    ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %i.a, i64 %i.al
  %i.an = load i32, ptr %i.am, align 1, !tbaa !36
  store i32 %i.an, ptr %i.a, align 1, !tbaa !36
  %i.ao = add nuw nsw i32 %10, 4
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = sub nsw i64 0, %i.ap                    ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %i.a, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 1, !tbaa !36
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.as, ptr %i.at, align 1, !tbaa !36
  %i.au = add nsw i32 %.1, 4
  br label %bb.dy

bb.e:                                             ; preds = %bb.c
  %i.av = add nuw nsw i32 %10, 8
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = sub nsw i64 0, %i.aw
  %i.ay = getelementptr inbounds i8, ptr %i.a, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 1, !tbaa !36
  store i32 %i.az, ptr %i.a, align 1, !tbaa !36
  %i.ba = add nuw nsw i32 %10, 4
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = sub nsw i64 0, %i.bb
  %i.bd = getelementptr inbounds i8, ptr %i.a, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 1, !tbaa !36
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.be, ptr %i.bf, align 1, !tbaa !36
  br label %bb.dz

bb.f:                                             ; preds = %bb.c
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !34 ; 2 uses
  %i.bi = load ptr, ptr %0, align 8, !tbaa !32    ; 3 uses
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = icmp slt i64 %i.bl, 2
  br i1 %i.bm, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store ptr %i.bh, ptr %0, align 8, !tbaa !32
  br label %bytestream2_get_le16.exit454

bb.h:                                             ; preds = %bb.f
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  store ptr %i.bn, ptr %0, align 8, !tbaa !35
  %i.bo = load i16, ptr %i.bi, align 1, !tbaa !36
  %i.bp = zext i16 %i.bo to i32
  %i.bq = add nuw nsw i32 %i.bp, 1
  br label %bytestream2_get_le16.exit454

bytestream2_get_le16.exit454:                     ; preds = %bb.g, %bb.h
  %.0.i453 = phi i32 [ 1, %bb.g ], [ %i.bq, %bb.h ]
  %i.br = add nuw nsw i32 %10, 8
  %i.bs = mul nuw nsw i32 %.0.i453, %i.br
  %i.bt = zext nneg i32 %i.bs to i64              ; 2 uses
  %i.bu = ptrtoint ptr %i.a to i64
  %i.bv = ptrtoint ptr %1 to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = icmp slt i64 %i.bw, %i.bt
  br i1 %i.bx, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bytestream2_get_le16.exit454
  %i.by = sub nsw i64 0, %i.bt
  %i.bz = getelementptr inbounds i8, ptr %i.a, i64 %i.by ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 1, !tbaa !36 ; 2 uses
  store i32 %i.ca, ptr %i.a, align 1, !tbaa !36
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.cc = load i32, ptr %i.cb, align 1, !tbaa !36
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.cc, ptr %i.cd, align 1, !tbaa !36
  %i.ce = and i32 %i.ca, 65535
  %i.cf = mul i32 %i.ce, -1640531535
  %i.cg = lshr i32 %i.cf, 24
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.ch
  store ptr %i.a, ptr %i.ci, align 8, !tbaa !35
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 1, !tbaa !36
  %i.cl = and i32 %i.ck, 16777215
  %i.cm = mul i32 %i.cl, -1640531535
  %i.cn = lshr i32 %i.cm, 24
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.co
  store ptr %i.cj, ptr %i.cp, align 8, !tbaa !35
  br label %bb.dz

bb.j:                                             ; preds = %bb.c
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !34 ; 2 uses
  %i.cs = load ptr, ptr %0, align 8, !tbaa !32    ; 3 uses
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = sub i64 %i.ct, %i.cu
  %i.cw = icmp slt i64 %i.cv, 4
  br i1 %i.cw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store ptr %i.cr, ptr %0, align 8, !tbaa !32
  br label %bytestream2_get_le32.exit376

bb.l:                                             ; preds = %bb.j
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  store ptr %i.cx, ptr %0, align 8, !tbaa !35
  %i.cy = load i32, ptr %i.cs, align 1, !tbaa !36
  br label %bytestream2_get_le32.exit376

bytestream2_get_le32.exit376:                     ; preds = %bb.k, %bb.l
  %.0.i375 = phi i32 [ 0, %bb.k ], [ %i.cy, %bb.l ]
  store i32 %.0.i375, ptr %i.a, align 1, !tbaa !36
  %i.cz = load ptr, ptr %i.cq, align 8, !tbaa !34 ; 2 uses
  %i.da = load ptr, ptr %0, align 8, !tbaa !32    ; 3 uses
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = sub i64 %i.db, %i.dc
  %i.de = icmp slt i64 %i.dd, 4
  br i1 %i.de, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bytestream2_get_le32.exit376
  store ptr %i.cz, ptr %0, align 8, !tbaa !32
  br label %bytestream2_get_le32.exit374

bb.n:                                             ; preds = %bytestream2_get_le32.exit376
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  store ptr %i.df, ptr %0, align 8, !tbaa !35
  %i.dg = load i32, ptr %i.da, align 1, !tbaa !36
  br label %bytestream2_get_le32.exit374

bytestream2_get_le32.exit374:                     ; preds = %bb.m, %bb.n
  %.0.i373 = phi i32 [ 0, %bb.m ], [ %i.dg, %bb.n ]
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %.0.i373, ptr %i.dh, align 1, !tbaa !36
  %i.di = load i16, ptr %i.a, align 1, !tbaa !36
  %i.dj = zext i16 %i.di to i64
  %i.dk = mul nuw nsw i64 %i.dj, 2654435761
  %i.dl = lshr i64 %i.dk, 24
  %i.dm = and i64 %i.dl, 255
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.dm
  store ptr %i.a, ptr %i.dn, align 8, !tbaa !35
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 1, !tbaa !36
  %i.dq = and i32 %i.dp, 16777215
  %i.dr = mul i32 %i.dq, -1640531535
  %i.ds = lshr i32 %i.dr, 24
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.dt
  store ptr %i.do, ptr %i.du, align 8, !tbaa !35
  br label %bb.dz

bb.o:                                             ; preds = %bb.c
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !34 ; 4 uses
  %i.dx = load ptr, ptr %0, align 8, !tbaa !32    ; 3 uses
  %i.dy = ptrtoint ptr %i.dw to i64               ; 2 uses
  %i.dz = ptrtoint ptr %i.dx to i64
  %i.ea = sub i64 %i.dy, %i.dz
  %i.eb = icmp slt i64 %i.ea, 1
  br i1 %i.eb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store ptr %i.dw, ptr %0, align 8, !tbaa !32
  br label %bytestream2_get_byte.exit421

bb.q:                                             ; preds = %bb.o
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dx, i64 1 ; 2 uses
  store ptr %i.ec, ptr %0, align 8, !tbaa !35
  %i.ed = load i8, ptr %i.dx, align 1, !tbaa !36
  %i.ee = zext i8 %i.ed to i64
  br label %bytestream2_get_byte.exit421

bytestream2_get_byte.exit421:                     ; preds = %bb.p, %bb.q
  %i.ef = phi ptr [ %i.dw, %bb.p ], [ %i.ec, %bb.q ] ; 3 uses
  %.0.i420 = phi i64 [ 0, %bb.p ], [ %i.ee, %bb.q ]
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %.0.i420
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !35 ; 3 uses
  %.not370 = icmp eq ptr %i.eh, null
  br i1 %.not370, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %bytestream2_get_byte.exit421
  %i.ei = ptrtoint ptr %i.ef to i64
  %i.ej = sub i64 %i.dy, %i.ei
  %i.ek = icmp slt i64 %i.ej, 2
  br i1 %i.ek, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store ptr %i.dw, ptr %0, align 8, !tbaa !32
  br label %bytestream2_get_le16.exit452

bb.t:                                             ; preds = %bb.r
end_hunk_4
begin_hunk_5_@dxv_decompress_cgo:bb.a
  %i.zp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.zq = load ptr, ptr %i.zp, align 8, !tbaa !34 ; 2 uses
  %i.zr = load ptr, ptr %0, align 8, !tbaa !32    ; 3 uses
  %i.zs = ptrtoint ptr %i.zq to i64
  %i.zt = ptrtoint ptr %i.zr to i64
  %i.zu = sub i64 %i.zs, %i.zt
  %i.zv = icmp slt i64 %i.zu, 2
  br i1 %i.zv, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  store ptr %i.zq, ptr %0, align 8, !tbaa !32
  br label %bytestream2_get_le16.exit

bb.dw:                                            ; preds = %bb.du
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zr, i64 2
  store ptr %i.zw, ptr %0, align 8, !tbaa !35
  %i.zx = load i16, ptr %i.zr, align 1, !tbaa !36
  %i.zy = zext i16 %i.zx to i32
  %i.zz = add nuw nsw i32 %i.zy, 1
  %i.aaa = mul nuw nsw i32 %i.zz, %i.zo
  br label %bytestream2_get_le16.exit

bytestream2_get_le16.exit:                        ; preds = %bb.dv, %bb.dw
  %.0.i424 = phi i32 [ %i.zo, %bb.dv ], [ %i.aaa, %bb.dw ] ; 3 uses
  %i.aab = zext nneg i32 %.0.i424 to i64
  %i.aac = ptrtoint ptr %i.a to i64
  %i.aad = ptrtoint ptr %1 to i64
  %i.aae = sub i64 %i.aac, %i.aad
  %i.aaf = icmp slt i64 %i.aae, %i.aab
  br i1 %i.aaf, label %.loopexit, label %bb.dx

bb.dx:                                            ; preds = %bytestream2_get_le16.exit
  %i.aag = zext nneg i32 %i.zo to i64
  %i.aah = sub nsw i64 0, %i.aag
  %i.aai = getelementptr inbounds i8, ptr %i.a, i64 %i.aah
  %i.aaj = load i16, ptr %i.aai, align 1, !tbaa !36
  store i16 %i.aaj, ptr %i.a, align 1, !tbaa !36
  %i.aak = sub nsw i32 2, %.0.i424
  %i.aal = sext i32 %i.aak to i64
  %i.aam = getelementptr inbounds i8, ptr %i.a, i64 %i.aal
  %i.aan = load i16, ptr %i.aam, align 1, !tbaa !36
  %i.aao = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 3 uses
  store i16 %i.aan, ptr %i.aao, align 1, !tbaa !36
  %i.aap = sub nsw i32 4, %.0.i424
  %i.aaq = sext i32 %i.aap to i64
  %i.aar = getelementptr inbounds i8, ptr %i.a, i64 %i.aaq
  %i.aas = load i32, ptr %i.aar, align 1, !tbaa !36
  %i.aat = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.aas, ptr %i.aat, align 1, !tbaa !36
  %i.aau = load i32, ptr %i.aao, align 1, !tbaa !36
  %i.aav = and i32 %i.aau, 16777215
  %i.aaw = mul i32 %i.aav, -1640531535
  %i.aax = lshr i32 %i.aaw, 24
  %i.aay = zext nneg i32 %i.aax to i64
  %i.aaz = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.aay
  store ptr %i.aao, ptr %i.aaz, align 8, !tbaa !35
  br label %bb.dz

bb.dy:                                            ; preds = %._crit_edge, %.loopexit3
  %.pre-phi17 = phi i64 [ %.pre16, %._crit_edge ], [ %i.aq, %.loopexit3 ]
  %.pre-phi11 = phi i64 [ %.pre10, %._crit_edge ], [ %i.al, %.loopexit3 ]
  %.0320 = phi i32 [ %i.b, %._crit_edge ], [ %i.e, %.loopexit3 ]
  %.0318 = phi i32 [ %i.c, %._crit_edge ], [ %i.au, %.loopexit3 ]
  %i.aba = getelementptr inbounds i8, ptr %i.a, i64 %.pre-phi11
  %i.abb = load i32, ptr %i.aba, align 1, !tbaa !36
  store i32 %i.abb, ptr %i.a, align 1, !tbaa !36
  %i.abc = getelementptr inbounds i8, ptr %i.a, i64 %.pre-phi17
  %i.abd = load i32, ptr %i.abc, align 1, !tbaa !36
  %i.abe = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.abd, ptr %i.abe, align 1, !tbaa !36
  %i.abf = add nsw i32 %.0318, -1
  br label %bb.dz

bb.dz:                                            ; preds = %bb.c, %bb.e, %bb.i, %bytestream2_get_le32.exit374, %bytestream2_get_byte.exit419, %bytestream2_get_byte.exit415, %bytestream2_get_le16.exit444, %bytestream2_get_le16.exit440, %bytestream2_get_le32.exit372, %bytestream2_get_byte.exit403, %bytestream2_get_byte.exit397, %bb.ck, %bb.cr, %bytestream2_get_le32.exit, %bytestream2_get_byte.exit385, %bytestream2_get_byte.exit381, %bb.dt, %bb.dx, %bb.dy
  %.1321 = phi i32 [ %i.e, %bb.c ], [ %i.e, %bb.e ], [ %i.e, %bb.i ], [ %i.e, %bytestream2_get_le32.exit374 ], [ %i.e, %bytestream2_get_byte.exit419 ], [ %i.e, %bytestream2_get_byte.exit415 ], [ %i.e, %bytestream2_get_le16.exit444 ], [ %i.e, %bytestream2_get_le16.exit440 ], [ %i.e, %bytestream2_get_le32.exit372 ], [ %i.e, %bytestream2_get_byte.exit403 ], [ %i.e, %bytestream2_get_byte.exit397 ], [ %i.e, %bb.ck ], [ %i.e, %bb.cr ], [ %i.e, %bytestream2_get_le32.exit ], [ %i.e, %bytestream2_get_byte.exit385 ], [ %i.e, %bytestream2_get_byte.exit381 ], [ %i.e, %bb.dt ], [ %i.e, %bb.dx ], [ %.0320, %bb.dy ]
  %.1319 = phi i32 [ %i.c, %bb.c ], [ %i.c, %bb.e ], [ %i.c, %bb.i ], [ %i.c, %bytestream2_get_le32.exit374 ], [ %i.c, %bytestream2_get_byte.exit419 ], [ %i.c, %bytestream2_get_byte.exit415 ], [ %i.c, %bytestream2_get_le16.exit444 ], [ %i.c, %bytestream2_get_le16.exit440 ], [ %i.c, %bytestream2_get_le32.exit372 ], [ %i.c, %bytestream2_get_byte.exit403 ], [ %i.c, %bytestream2_get_byte.exit397 ], [ %i.c, %bb.ck ], [ %i.c, %bb.cr ], [ %i.c, %bytestream2_get_le32.exit ], [ %i.c, %bytestream2_get_byte.exit385 ], [ %i.c, %bytestream2_get_byte.exit381 ], [ %i.c, %bb.dt ], [ %i.c, %bb.dx ], [ %i.abf, %bb.dy ]
  %i.abg = ptrtoint ptr %i.a to i64
  %i.abh = ptrtoint ptr %1 to i64
  %reass.sub = sub i64 %i.abg, %i.abh
  %i.abi = add i64 %reass.sub, 8
  %i.abj = sext i32 %2 to i64
  %i.abk = icmp sgt i64 %i.abi, %i.abj
  br i1 %i.abk, label %.loopexit, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.abl = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %.1321, ptr %4, align 4, !tbaa !46
  store ptr %i.abl, ptr %6, align 8, !tbaa !35
  store i32 %.1319, ptr %7, align 4, !tbaa !46
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %.preheader.preheader, %bb.dz, %bytestream2_get_le16.exit, %bytestream2_get_byte.exit, %bytestream2_get_byte.exit379, %bytestream2_get_byte.exit383, %bytestream2_get_byte.exit387, %bytestream2_get_le16.exit432, %bytestream2_get_byte.exit389, %bytestream2_get_byte.exit391, %bytestream2_get_byte.exit393, %bytestream2_get_byte.exit395, %bytestream2_get_byte.exit399, %bytestream2_get_byte.exit401, %bytestream2_get_byte.exit405, %bytestream2_get_byte.exit407, %bytestream2_get_byte.exit409, %bytestream2_get_le16.exit442, %bytestream2_get_byte.exit411, %bytestream2_get_byte.exit413, %bytestream2_get_byte.exit417, %bytestream2_get_byte.exit421, %bytestream2_get_le16.exit454, %bb.b, %bb.ea
  %.0322 = phi i32 [ -1094995529, %bb.b ], [ -1094995529, %bytestream2_get_le16.exit ], [ 0, %bb.ea ], [ -1094995529, %bb.dz ], [ -1094995529, %bytestream2_get_le16.exit454 ], [ -1094995529, %bytestream2_get_byte.exit421 ], [ -1094995529, %bytestream2_get_byte.exit413 ], [ -1094995529, %bytestream2_get_byte.exit417 ], [ -1094995529, %bytestream2_get_byte.exit411 ], [ -1094995529, %bytestream2_get_le16.exit442 ], [ -1094995529, %bytestream2_get_byte.exit407 ], [ -1094995529, %bytestream2_get_byte.exit409 ], [ -1094995529, %bytestream2_get_byte.exit401 ], [ -1094995529, %bytestream2_get_byte.exit405 ], [ -1094995529, %bytestream2_get_byte.exit393 ], [ -1094995529, %bytestream2_get_byte.exit395 ], [ -1094995529, %bytestream2_get_byte.exit399 ], [ -1094995529, %bytestream2_get_byte.exit389 ], [ -1094995529, %bytestream2_get_byte.exit391 ], [ -1094995529, %bytestream2_get_le16.exit432 ], [ -1094995529, %bytestream2_get_byte.exit387 ], [ -1094995529, %bytestream2_get_byte.exit379 ], [ -1094995529, %bytestream2_get_byte.exit383 ], [ -1094995529, %bytestream2_get_byte.exit ], [ -1094995529, %.preheader.preheader ], [ -1094995529, %.preheader ]
  ret i32 %.0322
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @ff_lzf_uncompress(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @av_freep(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS7AVCodec", !9, i64 0}
!12 = !{!"p1 _ZTS15AVCodecInternal", !9, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!"p1 omnipotent char", !9, i64 0}
!15 = !{!"AVRational", !6, i64 0, !6, i64 4}
!16 = !{!"float", !5, i64 0}
!17 = !{!"p1 short", !9, i64 0}
!18 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!19 = !{!"p1 _ZTS10RcOverride", !9, i64 0}
!20 = !{!"p1 _ZTS9AVHWAccel", !9, i64 0}
!21 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!22 = !{!"p1 _ZTS17AVCodecDescriptor", !9, i64 0}
!23 = !{!"p1 _ZTS16AVPacketSideData", !9, i64 0}
!24 = !{!"p1 int", !9, i64 0}
!25 = !{!"any p2 pointer", !9, i64 0}
!26 = !{!"p2 _ZTS15AVFrameSideData", !25, i64 0}
!27 = !{!"AVCodecContext", !10, i64 0, !6, i64 8, !6, i64 12, !11, i64 16, !6, i64 24, !6, i64 28, !9, i64 32, !12, i64 40, !9, i64 48, !13, i64 56, !6, i64 64, !6, i64 68, !14, i64 72, !6, i64 80, !15, i64 84, !15, i64 92, !15, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !15, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !9, i64 184, !9, i64 192, !6, i64 200, !16, i64 204, !16, i64 208, !16, i64 212, !16, i64 216, !16, i64 220, !16, i64 224, !16, i64 228, !16, i64 232, !16, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !17, i64 288, !17, i64 296, !17, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !18, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !9, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !16, i64 428, !16, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !19, i64 456, !13, i64 464, !13, i64 472, !16, i64 480, !16, i64 484, !6, i64 488, !6, i64 492, !14, i64 496, !14, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !20, i64 536, !9, i64 544, !21, i64 552, !21, i64 560, !6, i64 568, !6, i64 572, !5, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !9, i64 672, !9, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !22, i64 728, !14, i64 736, !6, i64 744, !6, i64 748, !14, i64 752, !14, i64 760, !14, i64 768, !23, i64 776, !6, i64 784, !6, i64 788, !13, i64 792, !6, i64 800, !6, i64 804, !13, i64 808, !9, i64 816, !13, i64 824, !24, i64 832, !6, i64 840, !26, i64 848, !6, i64 856, !6, i64 860}
!28 = !{!27, !9, i64 32}
!29 = !{!27, !6, i64 120}
!30 = !{!27, !6, i64 124}
!31 = !{!"GetByteContext", !14, i64 0, !14, i64 8, !14, i64 16}
!32 = !{!31, !14, i64 0}
!33 = !{!31, !14, i64 16}
!34 = !{!31, !14, i64 8}
!35 = !{!14, !14, i64 0}
!36 = !{!5, !5, i64 0}
!37 = !{!"TextureDSPContext", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112}
!38 = !{!"DXVContext", !37, i64 0, !31, i64 120, !14, i64 144, !6, i64 152, !14, i64 160, !6, i64 168, !13, i64 176, !13, i64 184, !5, i64 192, !5, i64 224, !5, i64 240}
!39 = !{!38, !13, i64 176}
!40 = !{!38, !6, i64 152}
!41 = !{!38, !14, i64 144}
!42 = !{!38, !13, i64 184}
!43 = !{!13, !13, i64 0}
!44 = !{!38, !6, i64 168}
!45 = !{!38, !14, i64 160}
!46 = !{!6, !6, i64 0}
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{!27, !6, i64 112}
!49 = !{!27, !6, i64 116}
!50 = !{!"AVPacket", !21, i64 0, !13, i64 8, !13, i64 16, !14, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !23, i64 48, !6, i64 56, !13, i64 64, !13, i64 72, !9, i64 80, !21, i64 88, !15, i64 96}
!51 = !{!50, !14, i64 24}
!52 = !{!50, !6, i64 32}
!53 = !{!27, !6, i64 136}
!54 = !{!27, !6, i64 152}
!55 = !{!38, !9, i64 0}
!56 = !{!"TextureDSPThreadContext", !5, i64 0, !13, i64 8, !6, i64 16, !6, i64 20, !5, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !9, i64 48}
!57 = !{!56, !9, i64 48}
!58 = !{!56, !6, i64 32}
!59 = !{!56, !6, i64 36}
!60 = !{!38, !9, i64 32}
!61 = !{!38, !9, i64 80}
!62 = !{!27, !6, i64 656}
!63 = !{!56, !6, i64 40}
!64 = !{!56, !13, i64 8}
!65 = distinct !{!65, !47}
!66 = distinct !{!66, !47}
!67 = distinct !{!67, !47}
!68 = distinct !{!68, !47}
!69 = distinct !{!69, !47}
!70 = distinct !{!70, !47}
!71 = distinct !{!71, !47}
!72 = distinct !{!72, !47}
!73 = distinct !{!73, !47}
!74 = distinct !{!74, !47}
!75 = distinct !{!75, !81}
!76 = distinct !{!76, !47}
!77 = distinct !{!77, !47}
!78 = distinct !{!78, !47}
!79 = distinct !{!79, !47}
!80 = distinct !{!80, !47}
!81 = !{!"llvm.loop.unroll.disable"}
!82 = !{!"short", !5, i64 0}
!83 = !{!"OpcodeTable", !82, i64 0, !5, i64 2, !5, i64 3}
!84 = !{!83, !5, i64 2}
!85 = !{!83, !5, i64 3}
!86 = !{!83, !82, i64 0}
!87 = distinct !{!87, !47}
end_hunk_5
