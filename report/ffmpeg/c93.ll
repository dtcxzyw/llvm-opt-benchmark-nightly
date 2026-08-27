Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/c93?download=true
inline.NumInlined: 6
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [4 x i8] c"c93\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Interplay C93\00", align 1
@ff_c93_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 0, i32 102, i32 2, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 2, i8 0, i8 0, i8 1, i32 24, ptr null, ptr null, ptr null, ptr @decode_init, %union.anon { ptr @decode_frame }, ptr @decode_end, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"block overlap %d %d %d %d\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"unexpected type %x at %dx%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Assertion %s failed at %s:%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"buf && buf_size >= 0\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"libavcodec/bytestream.h\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"invalid offset %d during C93 decoding\0A\00", align 1

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -12, 1) i32 @decode_init(ptr nofree noundef captures(none) initializes((136, 140)) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 11, ptr %i.c, align 8, !tbaa !29
  %i.d = tail call ptr @av_frame_alloc() #7
  store ptr %i.d, ptr %i.b, align 8, !tbaa !30
  %i.e = tail call ptr @av_frame_alloc() #7       ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.e, ptr %i.f, align 8, !tbaa !30
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !30
  %.not = icmp eq ptr %i.g, null
  %.not6 = icmp eq ptr %i.e, null
  %or.cond = select i1 %.not, i1 true, i1 %.not6
  %.0 = select i1 %or.cond, i32 -12, i32 0
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @decode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 175 uses
  %.sroa.0 = alloca i32, align 4                  ; 17 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !34   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !9    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !35   ; 2 uses
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !30   ; 11 uses
  %i.m = xor i32 %i.i, 1
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !30   ; 2 uses
  %i.q = tail call i32 @ff_set_dimensions(ptr noundef %0, i32 noundef 320, i32 noundef 192) #7 ; 2 uses
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.av, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = load i32, ptr %i.h, align 8, !tbaa !35
  %i.t = xor i32 %i.s, 1
  store i32 %i.t, ptr %i.h, align 8, !tbaa !35
  %i.u = tail call i32 @ff_reget_buffer(ptr noundef nonnull %0, ptr noundef %i.l, i32 noundef 0) #7 ; 2 uses
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.av, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.x = load i32, ptr %i.w, align 8, !tbaa !37
  %i.y = sext i32 %i.x to i64                     ; 87 uses
  %i.z = icmp ne ptr %i.c, null
  %i.aa = icmp sgt i32 %i.e, -1
  %or.cond.i = and i1 %i.z, %i.aa
  br i1 %or.cond.i, label %bytestream2_init.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 141) #7
  tail call void @abort() #8
  unreachable

bytestream2_init.exit:                            ; preds = %bb.c
  %i.ab = zext nneg i32 %i.e to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ab ; 21 uses
  %i.ad = ptrtoint ptr %i.ac to i64               ; 42 uses
  %i.ae = icmp eq i32 %i.e, 0
  br i1 %i.ae, label %bytestream2_get_byte.exit181.thread, label %bytestream2_get_byte.exit181

bytestream2_get_byte.exit181:                     ; preds = %bytestream2_init.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.ag = load i8, ptr %i.c, align 1, !tbaa !38
  %i.ah = zext i8 %i.ag to i32                    ; 3 uses
  %i.ai = and i32 %i.ah, 2
  %.not = icmp eq i32 %i.ai, 0
  br i1 %.not, label %bytestream2_get_byte.exit181.thread, label %bb.e

bb.e:                                             ; preds = %bytestream2_get_byte.exit181
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 120
  store i32 1, ptr %i.aj, align 8, !tbaa !39
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 276 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !44
  %i.am = or i32 %i.al, 2
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !44
  br label %bb.f

bytestream2_get_byte.exit181.thread:              ; preds = %bytestream2_init.exit, %bytestream2_get_byte.exit181
  %.0.i180311 = phi i32 [ %i.ah, %bytestream2_get_byte.exit181 ], [ 0, %bytestream2_init.exit ]
  %.sroa.0.16309 = phi ptr [ %i.af, %bytestream2_get_byte.exit181 ], [ %i.ac, %bytestream2_init.exit ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.l, i64 120
  store i32 2, ptr %i.an, align 8, !tbaa !39
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 276 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !44
  %i.aq = and i32 %i.ap, -3
  store i32 %i.aq, ptr %i.ao, align 4, !tbaa !44
  br label %bb.f

bb.f:                                             ; preds = %bytestream2_get_byte.exit181.thread, %bb.e
  %.0.i180310 = phi i32 [ %.0.i180311, %bytestream2_get_byte.exit181.thread ], [ %i.ah, %bb.e ]
  %.sroa.0.16308 = phi ptr [ %.sroa.0.16309, %bytestream2_get_byte.exit181.thread ], [ %i.af, %bb.e ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 32 uses
  %i.as = shl nsw i64 %i.y, 1
  %i.at = mul nsw i64 %i.y, 3
  %i.au = shl nsw i64 %i.y, 2
  %i.av = mul nsw i64 %i.y, 5
  %i.aw = mul nsw i64 %i.y, 6
  %i.ax = mul nsw i64 %i.y, 7
  %4 = shl nsw i64 %i.y, 1                        ; 2 uses
  %5 = mul nsw i64 %i.y, 3                        ; 2 uses
  %i.ay = shl nsw i64 %i.y, 1                     ; 2 uses
  %i.az = mul nsw i64 %i.y, 3                     ; 2 uses
  %i.ba = shl nsw i64 %i.y, 1                     ; 2 uses
  %i.bb = mul nsw i64 %i.y, 3                     ; 2 uses
  %i.bc = shl nsw i64 %i.y, 1
  %i.bd = mul nsw i64 %i.y, 3
  %6 = shl nsw i64 %i.y, 2
  %7 = mul nsw i64 %i.y, 5
  %8 = mul nsw i64 %i.y, 6
  %9 = mul nsw i64 %i.y, 7
  %.pre651.a = shl nsw i64 %i.y, 1
  %.pre657.a = mul nsw i64 %i.y, 3
  %i.be = shl nsw i64 %i.y, 1                     ; 2 uses
  %i.bf = mul nsw i64 %i.y, 3                     ; 2 uses
  %.pre633.a = shl nsw i64 %i.y, 1
  %.pre639.a = mul nsw i64 %i.y, 3
  %i.bg = shl nsw i64 %i.y, 1                     ; 2 uses
  %i.bh = mul nsw i64 %i.y, 3                     ; 2 uses
  %i.bi = shl nsw i64 %i.y, 1                     ; 2 uses
  %i.bj = mul nsw i64 %i.y, 3                     ; 2 uses
  %i.bk = shl nsw i64 %i.y, 2                     ; 2 uses
  %i.bl = mul nsw i64 %i.y, 5                     ; 2 uses
  %i.bm = mul nsw i64 %i.y, 6                     ; 2 uses
  %i.bn = mul nsw i64 %i.y, 7                     ; 2 uses
  %.pre591.a = shl nsw i64 %i.y, 1
  %.pre597.a = mul nsw i64 %i.y, 3
  %.pre603.a = shl nsw i64 %i.y, 2
  %.pre609.a = mul nsw i64 %i.y, 5
  %.pre615.a = mul nsw i64 %i.y, 6
  %.pre621.a = mul nsw i64 %i.y, 7
  %.sroa.0.1..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 1
  %.sroa.0.2..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 2
  %.sroa.0.3..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 3
  %.sroa.0.1..sroa_idx805 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 1
  %.sroa.0.2..sroa_idx808 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 2
  %.sroa.0.1..sroa_idx806 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 1
  %.sroa.0.2..sroa_idx809 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 2
  %.sroa.0.3..sroa_idx811 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 3
  %.sroa.0.1..sroa_idx807 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 1
  %.sroa.0.2..sroa_idx810 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 2
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.an
  %indvars.iv475 = phi i64 [ 0, %bb.f ], [ %indvars.iv.next476, %bb.an ] ; 5 uses
  %.0146409 = phi i32 [ 0, %bb.f ], [ %i.aqt, %bb.an ]
  %.sroa.0.0407 = phi ptr [ %.sroa.0.16308, %bb.f ], [ %.sroa.0.11, %bb.an ]
  %i.bo = load ptr, ptr %i.l, align 8, !tbaa !45
  %i.bp = mul nsw i64 %indvars.iv475, %i.y
  %i.bq = getelementptr inbounds i8, ptr %i.bo, i64 %i.bp
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %copy_block.exit.thread
  %indvars.iv472 = phi i64 [ 0, %bb.g ], [ %indvars.iv.next473, %copy_block.exit.thread ] ; 4 uses
  %indvars.iv469 = phi i64 [ 4, %bb.g ], [ %indvars.iv.next470, %copy_block.exit.thread ] ; 2 uses
  %.1147406 = phi i32 [ %.0146409, %bb.g ], [ %i.aqt, %copy_block.exit.thread ] ; 2 uses
  %.0156404 = phi ptr [ %i.bq, %bb.g ], [ %i.aqu, %copy_block.exit.thread ] ; 35 uses
  %.sroa.0.1403 = phi ptr [ %.sroa.0.0407, %bb.g ], [ %.sroa.0.11, %copy_block.exit.thread ] ; 4 uses
  %i.br = load ptr, ptr %i.p, align 8, !tbaa !45  ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %.not177 = icmp eq i32 %.1147406, 0
  %i.bs = trunc nuw nsw i64 %indvars.iv472 to i32 ; 3 uses
  br i1 %.not177, label %bb.i, label %bytestream2_get_byte.exit179

bb.i:                                             ; preds = %bb.h
  %i.bt = ptrtoint ptr %.sroa.0.1403 to i64
  %i.bu = sub i64 %i.ad, %i.bt
  %i.bv = icmp slt i64 %i.bu, 1
  br i1 %i.bv, label %bytestream2_get_byte.exit179.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.1403, i64 1
  %i.bx = load i8, ptr %.sroa.0.1403, align 1, !tbaa !38
  %i.by = zext i8 %i.bx to i32
  br label %bytestream2_get_byte.exit179

bytestream2_get_byte.exit179:                     ; preds = %bb.j, %bb.h
  %.sroa.0.2 = phi ptr [ %.sroa.0.1403, %bb.h ], [ %i.bw, %bb.j ] ; 12 uses
  %.2148 = phi i32 [ %.1147406, %bb.h ], [ %i.by, %bb.j ] ; 2 uses
  %i.bz = and i32 %.2148, 15                      ; 4 uses
  switch i32 %i.bz, label %bytestream2_get_byte.exit179.thread [
    i32 2, label %bb.k
    i32 7, label %bb.n
    i32 6, label %bb.o
    i32 8, label %bb.y
    i32 10, label %.preheader342.preheader
    i32 13, label %.preheader342.preheader
    i32 11, label %.preheader342.preheader
    i32 14, label %copy_block.exit.thread
    i32 15, label %.preheader346.preheader
  ]

.preheader342.preheader:                          ; preds = %bytestream2_get_byte.exit179, %bytestream2_get_byte.exit179, %bytestream2_get_byte.exit179
  br label %.preheader342

.preheader346.preheader:                          ; preds = %bytestream2_get_byte.exit179
  %i.ca = ptrtoint ptr %.sroa.0.2 to i64
  %i.cb = sub i64 %i.ad, %i.ca
  %i.cc = tail call i64 @llvm.smin.i64(i64 %i.cb, i64 8)
  %i.cd = and i64 %i.cc, 4294967295               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0156404, ptr align 1 %.sroa.0.2, i64 %i.cd, i1 false)
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 %i.cd ; 3 uses
  %i.cf = getelementptr inbounds i8, ptr %.0156404, i64 %i.y
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.ad, %i.cg
  %i.ci = tail call i64 @llvm.smin.i64(i64 %i.ch, i64 8)
  %i.cj = and i64 %i.ci, 4294967295               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cf, ptr align 1 %i.ce, i64 %i.cj, i1 false)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cj ; 3 uses
  %i.cl = getelementptr inbounds i8, ptr %.0156404, i64 %i.as
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = sub i64 %i.ad, %i.cm
  %i.co = tail call i64 @llvm.smin.i64(i64 %i.cn, i64 8)
  %i.cp = and i64 %i.co, 4294967295               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cl, ptr align 1 %i.ck, i64 %i.cp, i1 false)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cp ; 3 uses
  %i.cr = getelementptr inbounds i8, ptr %.0156404, i64 %i.at
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = sub i64 %i.ad, %i.cs
  %i.cu = tail call i64 @llvm.smin.i64(i64 %i.ct, i64 8)
  %i.cv = and i64 %i.cu, 4294967295               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cr, ptr align 1 %i.cq, i64 %i.cv, i1 false)
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cv ; 3 uses
  %i.cx = getelementptr inbounds i8, ptr %.0156404, i64 %i.au
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = sub i64 %i.ad, %i.cy
  %i.da = tail call i64 @llvm.smin.i64(i64 %i.cz, i64 8)
  %i.db = and i64 %i.da, 4294967295               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cx, ptr align 1 %i.cw, i64 %i.db, i1 false)
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.db ; 3 uses
  %i.dd = getelementptr inbounds i8, ptr %.0156404, i64 %i.av
  %i.de = ptrtoint ptr %i.dc to i64
  %i.df = sub i64 %i.ad, %i.de
  %i.dg = tail call i64 @llvm.smin.i64(i64 %i.df, i64 8)
  %i.dh = and i64 %i.dg, 4294967295               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dd, ptr align 1 %i.dc, i64 %i.dh, i1 false)
  %i.di = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.dh ; 3 uses
  %i.dj = getelementptr inbounds i8, ptr %.0156404, i64 %i.aw
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = sub i64 %i.ad, %i.dk
  %i.dm = tail call i64 @llvm.smin.i64(i64 %i.dl, i64 8)
  %i.dn = and i64 %i.dm, 4294967295               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dj, ptr align 1 %i.di, i64 %i.dn, i1 false)
  %i.do = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dn ; 3 uses
  %i.dp = getelementptr inbounds i8, ptr %.0156404, i64 %i.ax
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = sub i64 %i.ad, %i.dq
  %i.ds = tail call i64 @llvm.smin.i64(i64 %i.dr, i64 8)
  %i.dt = and i64 %i.ds, 4294967295               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dp, ptr align 1 %i.do, i64 %i.dt, i1 false)
  %i.du = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dt
  br label %copy_block.exit.thread

bb.k:                                             ; preds = %bytestream2_get_byte.exit179
  %i.dv = ptrtoint ptr %.sroa.0.2 to i64
  %i.dw = sub i64 %i.ad, %i.dv
  %i.dx = icmp slt i64 %i.dw, 2
  br i1 %i.dx, label %bytestream2_get_le16.exit188.thread, label %bytestream2_get_le16.exit188

bytestream2_get_le16.exit188:                     ; preds = %bb.k
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 2 ; 3 uses
  %i.dz = load i16, ptr %.sroa.0.2, align 1, !tbaa !38 ; 4 uses
  %i.ea = urem i16 %i.dz, 320                     ; 4 uses
  %i.eb = udiv i16 %i.dz, 320                     ; 2 uses
  %i.ec = zext nneg i16 %i.ea to i32              ; 2 uses
  %i.ed = add nsw i32 %i.ec, -312
  %.not.i = icmp eq ptr %i.br, null
  br i1 %.not.i, label %copy_block.exit.thread, label %bb.l

bytestream2_get_le16.exit188.thread:              ; preds = %bb.k
  %.not.i688 = icmp eq ptr %i.br, null
  br i1 %.not.i688, label %copy_block.exit.thread, label %..loopexit43_crit_edge.i

bb.l:                                             ; preds = %bytestream2_get_le16.exit188
  %i.ee = icmp ugt i16 %i.dz, -6337
  br i1 %i.ee, label %copy_block.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ef = icmp samesign ugt i16 %i.ea, 312
  br i1 %i.ef, label %.loopexit43.i.loopexit, label %..loopexit43_crit_edge.i

..loopexit43_crit_edge.i:                         ; preds = %bytestream2_get_le16.exit188.thread, %bb.m
  %i.eg = phi i16 [ %i.eb, %bb.m ], [ 0, %bytestream2_get_le16.exit188.thread ]
  %i.eh = phi i16 [ %i.ea, %bb.m ], [ 0, %bytestream2_get_le16.exit188.thread ]
  %.sroa.0.20689694698 = phi ptr [ %i.dy, %bb.m ], [ %i.ac, %bytestream2_get_le16.exit188.thread ]
  %.pre52.i = zext nneg i16 %i.eg to i64          ; 8 uses
  %.pre = mul nsw i64 %.pre52.i, %i.y
  %.pre587.a = add nuw nsw i64 %.pre52.i, 1
  %.pre589 = mul nsw i64 %.pre587.a, %i.y
  %.pre593.a = add nuw nsw i64 %.pre52.i, 2
  %.pre595 = mul nsw i64 %.pre593.a, %i.y
  %.pre599.a = add nuw nsw i64 %.pre52.i, 3
  %.pre601 = mul nsw i64 %.pre599.a, %i.y
  %.pre605.a = add nuw nsw i64 %.pre52.i, 4
  %.pre607 = mul nsw i64 %.pre605.a, %i.y
  %.pre611.a = add nuw nsw i64 %.pre52.i, 5
  %.pre613 = mul nsw i64 %.pre611.a, %i.y
  %.pre617.a = add nuw nsw i64 %.pre52.i, 6
  %.pre619 = mul nsw i64 %.pre617.a, %i.y
  %.pre623.a = add nuw nsw i64 %.pre52.i, 7
  %.pre625.a = mul nsw i64 %.pre623.a, %i.y
  br label %.loopexit43.i

.loopexit43.i.loopexit:                           ; preds = %bb.m
  %i.ei = sub nuw nsw i32 320, %i.ec              ; 2 uses
  %i.ej = zext nneg i32 %i.ed to i64              ; 8 uses
  %i.ek = zext nneg i32 %i.ei to i64
  %i.el = zext nneg i16 %i.eb to i64              ; 8 uses
  %invariant.gep.i = getelementptr i8, ptr %.0156404, i64 %i.ek ; 8 uses
  %i.em = mul nsw i64 %i.el, %i.y                 ; 2 uses
  %i.en = getelementptr inbounds i8, ptr %i.br, i64 %i.em
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %invariant.gep.i, ptr nonnull readonly align 1 %i.en, i64 %i.ej, i1 false)
  %gep.i.1 = getelementptr i8, ptr %invariant.gep.i, i64 %i.y
  %i.eo = add nuw nsw i64 %i.el, 1
  %i.ep = mul nsw i64 %i.eo, %i.y                 ; 2 uses
  %i.eq = getelementptr inbounds i8, ptr %i.br, i64 %i.ep
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %gep.i.1, ptr nonnull readonly align 1 %i.eq, i64 %i.ej, i1 false)
  %gep.i.2 = getelementptr i8, ptr %invariant.gep.i, i64 %i.bi
  %i.er = add nuw nsw i64 %i.el, 2
  %i.es = mul nsw i64 %i.er, %i.y                 ; 2 uses
  %i.et = getelementptr inbounds i8, ptr %i.br, i64 %i.es
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %gep.i.2, ptr nonnull readonly align 1 %i.et, i64 %i.ej, i1 false)
  %gep.i.3 = getelementptr i8, ptr %invariant.gep.i, i64 %i.bj
  %i.eu = add nuw nsw i64 %i.el, 3
  %i.ev = mul nsw i64 %i.eu, %i.y                 ; 2 uses
  %i.ew = getelementptr inbounds i8, ptr %i.br, i64 %i.ev
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %gep.i.3, ptr nonnull readonly align 1 %i.ew, i64 %i.ej, i1 false)
  %gep.i.4 = getelementptr i8, ptr %invariant.gep.i, i64 %i.bk
  %i.ex = add nuw nsw i64 %i.el, 4
  %i.ey = mul nsw i64 %i.ex, %i.y                 ; 2 uses
  %i.ez = getelementptr inbounds i8, ptr %i.br, i64 %i.ey
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %gep.i.4, ptr nonnull readonly align 1 %i.ez, i64 %i.ej, i1 false)
  %gep.i.5 = getelementptr i8, ptr %invariant.gep.i, i64 %i.bl
  %i.fa = add nuw nsw i64 %i.el, 5
  %i.fb = mul nsw i64 %i.fa, %i.y                 ; 2 uses
  %i.fc = getelementptr inbounds i8, ptr %i.br, i64 %i.fb
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %gep.i.5, ptr nonnull readonly align 1 %i.fc, i64 %i.ej, i1 false)
  %gep.i.6 = getelementptr i8, ptr %invariant.gep.i, i64 %i.bm
  %i.fd = add nuw nsw i64 %i.el, 6
  %i.fe = mul nsw i64 %i.fd, %i.y                 ; 2 uses
end_hunk_0
begin_hunk_1_@decode_frame:bb.a

bb.r:                                             ; preds = %bytestream2_get_le16.exit186._crit_edge
  %i.gq = icmp samesign ugt i32 %.0.i185, 60479
  br i1 %i.gq, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gr = icmp samesign ugt i16 %i.gk, 316
  br i1 %i.gr, label %.loopexit43.i199.loopexit, label %..loopexit43_crit_edge.i196

..loopexit43_crit_edge.i196:                      ; preds = %bb.s
  %.pre52.i198 = zext nneg i16 %i.gh to i64       ; 4 uses
  %.pre645.a = mul nsw i64 %.pre52.i198, %i.y
  %.pre647.a = add nuw nsw i64 %.pre52.i198, 1
  %.pre649 = mul nsw i64 %.pre647.a, %i.y
  %.pre653.a = add nuw nsw i64 %.pre52.i198, 2
  %.pre655 = mul nsw i64 %.pre653.a, %i.y
  %.pre659.a = add nuw nsw i64 %.pre52.i198, 3
  %.pre661.a = mul nsw i64 %.pre659.a, %i.y
  br label %.loopexit43.i199

.loopexit43.i199.loopexit:                        ; preds = %bb.s
  %i.gs = sub nuw nsw i32 320, %.zext             ; 2 uses
  %i.gt = zext nneg i32 %i.gp to i64              ; 4 uses
  %i.gu = zext nneg i32 %i.gs to i64
  %i.gv = zext nneg i16 %i.gh to i64              ; 4 uses
  %invariant.gep.i209 = getelementptr i8, ptr %i.ga, i64 %i.gu ; 4 uses
  %i.gw = mul nsw i64 %i.gv, %i.y                 ; 2 uses
  %i.gx = getelementptr inbounds i8, ptr %.0144, i64 %i.gw
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %invariant.gep.i209, ptr nonnull readonly align 1 %i.gx, i64 %i.gt, i1 false)
  %gep.i211.1 = getelementptr i8, ptr %invariant.gep.i209, i64 %i.y
  %i.gy = add nuw nsw i64 %i.gv, 1
  %i.gz = mul nsw i64 %i.gy, %i.y                 ; 2 uses
  %i.ha = getelementptr inbounds i8, ptr %.0144, i64 %i.gz
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %gep.i211.1, ptr nonnull readonly align 1 %i.ha, i64 %i.gt, i1 false)
  %gep.i211.2 = getelementptr i8, ptr %invariant.gep.i209, i64 %i.be
  %i.hb = add nuw nsw i64 %i.gv, 2
  %i.hc = mul nsw i64 %i.hb, %i.y                 ; 2 uses
  %i.hd = getelementptr inbounds i8, ptr %.0144, i64 %i.hc
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %gep.i211.2, ptr nonnull readonly align 1 %i.hd, i64 %i.gt, i1 false)
  %gep.i211.3 = getelementptr i8, ptr %invariant.gep.i209, i64 %i.bf
  %i.he = add nuw nsw i64 %i.gv, 3
  %i.hf = mul nsw i64 %i.he, %i.y                 ; 2 uses
  %i.hg = getelementptr inbounds i8, ptr %.0144, i64 %i.hf
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %gep.i211.3, ptr nonnull readonly align 1 %i.hg, i64 %i.gt, i1 false)
  %i.hh = zext nneg i32 %i.gs to i64
  br label %.loopexit43.i199

.loopexit43.i199:                                 ; preds = %.loopexit43.i199.loopexit, %..loopexit43_crit_edge.i196
  %.pre-phi662.a = phi i64 [ %i.hf, %.loopexit43.i199.loopexit ], [ %.pre661.a, %..loopexit43_crit_edge.i196 ]
  %.pre-phi658 = phi i64 [ %i.bf, %.loopexit43.i199.loopexit ], [ %.pre657.a, %..loopexit43_crit_edge.i196 ]
  %.pre-phi656 = phi i64 [ %i.hc, %.loopexit43.i199.loopexit ], [ %.pre655, %..loopexit43_crit_edge.i196 ]
  %.pre-phi652 = phi i64 [ %i.be, %.loopexit43.i199.loopexit ], [ %.pre651.a, %..loopexit43_crit_edge.i196 ]
  %.pre-phi650 = phi i64 [ %i.gz, %.loopexit43.i199.loopexit ], [ %.pre649, %..loopexit43_crit_edge.i196 ]
  %.pre-phi646 = phi i64 [ %i.gw, %.loopexit43.i199.loopexit ], [ %.pre645.a, %..loopexit43_crit_edge.i196 ]
  %.0.i202 = phi i64 [ %i.hh, %.loopexit43.i199.loopexit ], [ 4, %..loopexit43_crit_edge.i196 ] ; 4 uses
  %i.hi = zext nneg i16 %i.gk to i64
  %invariant.gep56.i203 = getelementptr i8, ptr %.0144, i64 %i.hi ; 4 uses
  %gep57.i205 = getelementptr i8, ptr %invariant.gep56.i203, i64 %.pre-phi646
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ga, ptr nonnull readonly align 1 %gep57.i205, i64 %.0.i202, i1 false)
  %i.hj = getelementptr inbounds i8, ptr %i.ga, i64 %i.y
  %gep57.i205.1 = getelementptr i8, ptr %invariant.gep56.i203, i64 %.pre-phi650
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hj, ptr nonnull readonly align 1 %gep57.i205.1, i64 %.0.i202, i1 false)
  %i.hk = getelementptr inbounds i8, ptr %i.ga, i64 %.pre-phi652
  %gep57.i205.2 = getelementptr i8, ptr %invariant.gep56.i203, i64 %.pre-phi656
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hk, ptr nonnull readonly align 1 %gep57.i205.2, i64 %.0.i202, i1 false)
  %i.hl = getelementptr inbounds i8, ptr %i.ga, i64 %.pre-phi658
  %gep57.i205.3 = getelementptr i8, ptr %invariant.gep56.i203, i64 %.pre-phi662.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hl, ptr nonnull readonly align 1 %gep57.i205.3, i64 %.0.i202, i1 false)
  br label %.loopexit339

bb.t:                                             ; preds = %bb.w, %bb.r
  %.0.i185.lcssa427 = phi i32 [ %.0.i185, %bb.r ], [ %.0.i185.1, %bb.w ]
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.7, i32 noundef range(i32 0, 65536) %.0.i185.lcssa427) #7
  br label %.thread329

.loopexit339:                                     ; preds = %.loopexit43.i199, %bytestream2_get_le16.exit186._crit_edge
  %i.hm = ptrtoint ptr %.sroa.0.19 to i64
  %i.hn = sub i64 %i.ad, %i.hm
  %i.ho = icmp slt i64 %i.hn, 2
  br i1 %i.ho, label %bytestream2_get_le16.exit186.1, label %bb.u

bb.u:                                             ; preds = %.loopexit339
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.0.19, i64 2
  %i.hq = load i16, ptr %.sroa.0.19, align 1, !tbaa !38
  %i.hr = zext i16 %i.hq to i32
  br label %bytestream2_get_le16.exit186.1

bytestream2_get_le16.exit186.1:                   ; preds = %bb.u, %.loopexit339
  %.sroa.0.19.1 = phi ptr [ %i.hp, %bb.u ], [ %i.ac, %.loopexit339 ] ; 2 uses
  %.0.i185.1 = phi i32 [ %i.hr, %bb.u ], [ 0, %.loopexit339 ] ; 3 uses
  %.lhs.trunc335.1 = trunc nuw i32 %.0.i185.1 to i16 ; 2 uses
  %i.hs = udiv i16 %.lhs.trunc335.1, 320          ; 4 uses
  %i.ht = zext nneg i16 %i.hs to i64
  %i.hu = icmp eq i64 %i.fy, %i.ht
  %or.cond412.1 = select i1 %i.fv, i1 %i.hu, i1 false
  %i.hv = urem i16 %.lhs.trunc335.1, 320          ; 3 uses
  %.zext.1 = zext nneg i16 %i.hv to i32           ; 4 uses
  br i1 %or.cond412.1, label %bb.v, label %bytestream2_get_le16.exit186.1._crit_edge

bb.v:                                             ; preds = %bytestream2_get_le16.exit186.1
  %i.hw = sub nsw i32 %.zext.1, %i.fx
  %i.hx = tail call i32 @llvm.abs.i32(i32 %i.hw, i1 true)
  %i.hy = add nsw i32 %i.hx, -317
  %or.cond.1 = icmp ult i32 %i.hy, -313
  br i1 %or.cond.1, label %..thread_crit_edge, label %bytestream2_get_le16.exit186.1._crit_edge

..thread_crit_edge:                               ; preds = %bb.v
  %.pre669.a = trunc nuw nsw i64 %indvars.iv469 to i32
  br label %.thread

bytestream2_get_le16.exit186.1._crit_edge:        ; preds = %bytestream2_get_le16.exit186.1, %bb.v
  %i.hz = getelementptr i8, ptr %i.ga, i64 4      ; 5 uses
  %i.ia = add nsw i32 %.zext.1, -316
  br i1 %.not.i194, label %.loopexit339.1, label %bb.w

bb.w:                                             ; preds = %bytestream2_get_le16.exit186.1._crit_edge
  %i.ib = icmp samesign ugt i32 %.0.i185.1, 60479
  br i1 %i.ib, label %bb.t, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ic = icmp samesign ugt i16 %i.hv, 316
  br i1 %i.ic, label %.loopexit43.i199.loopexit.1, label %..loopexit43_crit_edge.i196.1

..loopexit43_crit_edge.i196.1:                    ; preds = %bb.x
  %.pre52.i198.1 = zext nneg i16 %i.hs to i64     ; 4 uses
  %.pre627.a = mul nsw i64 %.pre52.i198.1, %i.y
  %.pre629.a = add nuw nsw i64 %.pre52.i198.1, 1
  %.pre631 = mul nsw i64 %.pre629.a, %i.y
  %.pre635.a = add nuw nsw i64 %.pre52.i198.1, 2
  %.pre637 = mul nsw i64 %.pre635.a, %i.y
  %.pre641.a = add nuw nsw i64 %.pre52.i198.1, 3
  %.pre643 = mul nsw i64 %.pre641.a, %i.y
  br label %.loopexit43.i199.1

.loopexit43.i199.loopexit.1:                      ; preds = %bb.x
  %i.id = sub nuw nsw i32 320, %.zext.1           ; 2 uses
  %i.ie = zext nneg i32 %i.ia to i64              ; 4 uses
  %i.if = zext nneg i32 %i.id to i64
  %i.ig = zext nneg i16 %i.hs to i64              ; 4 uses
  %invariant.gep.i209.1 = getelementptr i8, ptr %i.hz, i64 %i.if ; 4 uses
  %i.ih = mul nsw i64 %i.ig, %i.y                 ; 2 uses
  %i.ii = getelementptr inbounds i8, ptr %.0144, i64 %i.ih
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %invariant.gep.i209.1, ptr nonnull readonly align 1 %i.ii, i64 %i.ie, i1 false)
  %gep.i211.1.1 = getelementptr i8, ptr %invariant.gep.i209.1, i64 %i.y
  %i.ij = add nuw nsw i64 %i.ig, 1
  %i.ik = mul nsw i64 %i.ij, %i.y                 ; 2 uses
  %i.il = getelementptr inbounds i8, ptr %.0144, i64 %i.ik
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %gep.i211.1.1, ptr nonnull readonly align 1 %i.il, i64 %i.ie, i1 false)
  %gep.i211.2.1 = getelementptr i8, ptr %invariant.gep.i209.1, i64 %i.bg
  %i.im = add nuw nsw i64 %i.ig, 2
  %i.in = mul nsw i64 %i.im, %i.y                 ; 2 uses
  %i.io = getelementptr inbounds i8, ptr %.0144, i64 %i.in
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %gep.i211.2.1, ptr nonnull readonly align 1 %i.io, i64 %i.ie, i1 false)
  %gep.i211.3.1 = getelementptr i8, ptr %invariant.gep.i209.1, i64 %i.bh
  %i.ip = add nuw nsw i64 %i.ig, 3
  %i.iq = mul nsw i64 %i.ip, %i.y                 ; 2 uses
  %i.ir = getelementptr inbounds i8, ptr %.0144, i64 %i.iq
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %gep.i211.3.1, ptr nonnull readonly align 1 %i.ir, i64 %i.ie, i1 false)
  %i.is = zext nneg i32 %i.id to i64
  br label %.loopexit43.i199.1

.loopexit43.i199.1:                               ; preds = %.loopexit43.i199.loopexit.1, %..loopexit43_crit_edge.i196.1
  %.pre-phi644 = phi i64 [ %i.iq, %.loopexit43.i199.loopexit.1 ], [ %.pre643, %..loopexit43_crit_edge.i196.1 ]
  %.pre-phi640 = phi i64 [ %i.bh, %.loopexit43.i199.loopexit.1 ], [ %.pre639.a, %..loopexit43_crit_edge.i196.1 ]
  %.pre-phi638 = phi i64 [ %i.in, %.loopexit43.i199.loopexit.1 ], [ %.pre637, %..loopexit43_crit_edge.i196.1 ]
  %.pre-phi634 = phi i64 [ %i.bg, %.loopexit43.i199.loopexit.1 ], [ %.pre633.a, %..loopexit43_crit_edge.i196.1 ]
  %.pre-phi632 = phi i64 [ %i.ik, %.loopexit43.i199.loopexit.1 ], [ %.pre631, %..loopexit43_crit_edge.i196.1 ]
  %.pre-phi628 = phi i64 [ %i.ih, %.loopexit43.i199.loopexit.1 ], [ %.pre627.a, %..loopexit43_crit_edge.i196.1 ]
  %.0.i202.1 = phi i64 [ %i.is, %.loopexit43.i199.loopexit.1 ], [ 4, %..loopexit43_crit_edge.i196.1 ] ; 4 uses
  %i.it = zext nneg i16 %i.hv to i64
  %invariant.gep56.i203.1 = getelementptr i8, ptr %.0144, i64 %i.it ; 4 uses
  %gep57.i205.1466 = getelementptr i8, ptr %invariant.gep56.i203.1, i64 %.pre-phi628
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hz, ptr nonnull readonly align 1 %gep57.i205.1466, i64 %.0.i202.1, i1 false)
  %i.iu = getelementptr inbounds i8, ptr %i.hz, i64 %i.y
  %gep57.i205.1.1 = getelementptr i8, ptr %invariant.gep56.i203.1, i64 %.pre-phi632
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.iu, ptr nonnull readonly align 1 %gep57.i205.1.1, i64 %.0.i202.1, i1 false)
  %i.iv = getelementptr inbounds i8, ptr %i.hz, i64 %.pre-phi634
  %gep57.i205.2.1 = getelementptr i8, ptr %invariant.gep56.i203.1, i64 %.pre-phi638
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.iv, ptr nonnull readonly align 1 %gep57.i205.2.1, i64 %.0.i202.1, i1 false)
  %i.iw = getelementptr inbounds i8, ptr %i.hz, i64 %.pre-phi640
  %gep57.i205.3.1 = getelementptr i8, ptr %invariant.gep56.i203.1, i64 %.pre-phi644
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.iw, ptr nonnull readonly align 1 %gep57.i205.3.1, i64 %.0.i202.1, i1 false)
  br label %.loopexit339.1

.loopexit339.1:                                   ; preds = %.loopexit43.i199.1, %bytestream2_get_le16.exit186.1._crit_edge
  br i1 %.not413, label %.preheader, label %copy_block.exit.thread, !llvm.loop !46

bb.y:                                             ; preds = %bytestream2_get_byte.exit179
  %i.ix = ptrtoint ptr %.sroa.0.2 to i64
  %i.iy = sub i64 %i.ad, %i.ix
  %i.iz = tail call i64 @llvm.smin.i64(i64 %i.iy, i64 2)
  %i.ja = and i64 %i.iz, 4294967295               ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.a, ptr align 1 %.sroa.0.2, i64 %i.ja, i1 false)
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 %i.ja ; 3 uses
  %i.jc = ptrtoint ptr %i.jb to i64
  %i.jd = sub i64 %i.ad, %i.jc
  %i.je = icmp slt i64 %i.jd, 1
  br i1 %i.je, label %bytestream2_get_byte.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jb, i64 1 ; 2 uses
  %i.jg = load i8, ptr %i.jb, align 1, !tbaa !38
  %i.jh = zext i8 %i.jg to i32
  %.pre661 = ptrtoint ptr %i.jf to i64
  br label %bytestream2_get_byte.exit

bytestream2_get_byte.exit:                        ; preds = %bb.z, %bb.y
  %.pre-phi662 = phi i64 [ %.pre661, %bb.z ], [ %i.ad, %bb.y ]
  %.sroa.0.14 = phi ptr [ %i.jf, %bb.z ], [ %i.ac, %bb.y ] ; 2 uses
  %.0.i = phi i32 [ %i.jh, %bb.z ], [ 0, %bb.y ]  ; 8 uses
  %i.ji = and i32 %.0.i, 1
  %i.jj = zext nneg i32 %i.ji to i64
  %i.jk = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.jj
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !38
  store i8 %i.jl, ptr %.0156404, align 1, !tbaa !38
  %i.jm = lshr i32 %.0.i, 1
  %i.jn = and i32 %i.jm, 1
  %i.jo = zext nneg i32 %i.jn to i64
  %i.jp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.jo
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !38
  %gep56.i.1 = getelementptr i8, ptr %.0156404, i64 1
  store i8 %i.jq, ptr %gep56.i.1, align 1, !tbaa !38
  %i.jr = lshr i32 %.0.i, 2
  %i.js = and i32 %i.jr, 1
  %i.jt = zext nneg i32 %i.js to i64
  %i.ju = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.jt
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !38
  %gep56.i.2 = getelementptr i8, ptr %.0156404, i64 2
  store i8 %i.jv, ptr %gep56.i.2, align 1, !tbaa !38
  %i.jw = lshr i32 %.0.i, 3
  %i.jx = and i32 %i.jw, 1
  %i.jy = zext nneg i32 %i.jx to i64
  %i.jz = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.jy
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !38
  %gep56.i.3 = getelementptr i8, ptr %.0156404, i64 3
  store i8 %i.ka, ptr %gep56.i.3, align 1, !tbaa !38
  %i.kb = lshr i32 %.0.i, 4
  %i.kc = and i32 %i.kb, 1
  %i.kd = zext nneg i32 %i.kc to i64
  %i.ke = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.kd
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !38
  %gep56.i.4 = getelementptr i8, ptr %.0156404, i64 4
  store i8 %i.kf, ptr %gep56.i.4, align 1, !tbaa !38
  %i.kg = lshr i32 %.0.i, 5
  %i.kh = and i32 %i.kg, 1
  %i.ki = zext nneg i32 %i.kh to i64
  %i.kj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ki
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !38
  %gep56.i.5 = getelementptr i8, ptr %.0156404, i64 5
  store i8 %i.kk, ptr %gep56.i.5, align 1, !tbaa !38
  %i.kl = lshr i32 %.0.i, 6
  %i.km = and i32 %i.kl, 1
  %i.kn = zext nneg i32 %i.km to i64
  %i.ko = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.kn
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !38
  %gep56.i.6 = getelementptr i8, ptr %.0156404, i64 6
  store i8 %i.kp, ptr %gep56.i.6, align 1, !tbaa !38
  %i.kq = lshr i32 %.0.i, 7
  %i.kr = zext nneg i32 %i.kq to i64
  %i.ks = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.kr
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !38
  %gep56.i.7 = getelementptr i8, ptr %.0156404, i64 7
  store i8 %i.kt, ptr %gep56.i.7, align 1, !tbaa !38
  %i.ku = getelementptr inbounds i8, ptr %.0156404, i64 %i.y ; 8 uses
  %i.kv = sub i64 %i.ad, %.pre-phi662
  %i.kw = icmp slt i64 %i.kv, 1
  br i1 %i.kw, label %bytestream2_get_byte.exit.1, label %bb.aa

bb.aa:                                            ; preds = %bytestream2_get_byte.exit
  %i.kx = getelementptr inbounds nuw i8, ptr %.sroa.0.14, i64 1 ; 2 uses
  %i.ky = load i8, ptr %.sroa.0.14, align 1, !tbaa !38
  %i.kz = zext i8 %i.ky to i32
  %.pre663 = ptrtoint ptr %i.kx to i64
  br label %bytestream2_get_byte.exit.1

bytestream2_get_byte.exit.1:                      ; preds = %bb.aa, %bytestream2_get_byte.exit
  %.pre-phi664 = phi i64 [ %.pre663, %bb.aa ], [ %i.ad, %bytestream2_get_byte.exit ]
  %.sroa.0.14.1 = phi ptr [ %i.kx, %bb.aa ], [ %i.ac, %bytestream2_get_byte.exit ] ; 2 uses
  %.0.i.1 = phi i32 [ %i.kz, %bb.aa ], [ 0, %bytestream2_get_byte.exit ] ; 8 uses
  %i.la = and i32 %.0.i.1, 1
  %i.lb = zext nneg i32 %i.la to i64
  %i.lc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.lb
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !38
  store i8 %i.ld, ptr %i.ku, align 1, !tbaa !38
  %i.le = lshr i32 %.0.i.1, 1
  %i.lf = and i32 %i.le, 1
  %i.lg = zext nneg i32 %i.lf to i64
  %i.lh = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.lg
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !38
  %gep56.i.1.1 = getelementptr i8, ptr %i.ku, i64 1
  store i8 %i.li, ptr %gep56.i.1.1, align 1, !tbaa !38
  %i.lj = lshr i32 %.0.i.1, 2
  %i.lk = and i32 %i.lj, 1
  %i.ll = zext nneg i32 %i.lk to i64
  %i.lm = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ll
  %i.ln = load i8, ptr %i.lm, align 1, !tbaa !38
  %gep56.i.2.1 = getelementptr i8, ptr %i.ku, i64 2
  store i8 %i.ln, ptr %gep56.i.2.1, align 1, !tbaa !38
  %i.lo = lshr i32 %.0.i.1, 3
  %i.lp = and i32 %i.lo, 1
  %i.lq = zext nneg i32 %i.lp to i64
  %i.lr = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.lq
  %i.ls = load i8, ptr %i.lr, align 1, !tbaa !38
  %gep56.i.3.1 = getelementptr i8, ptr %i.ku, i64 3
  store i8 %i.ls, ptr %gep56.i.3.1, align 1, !tbaa !38
  %i.lt = lshr i32 %.0.i.1, 4
  %i.lu = and i32 %i.lt, 1
  %i.lv = zext nneg i32 %i.lu to i64
  %i.lw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.lv
  %i.lx = load i8, ptr %i.lw, align 1, !tbaa !38
  %gep56.i.4.1 = getelementptr i8, ptr %i.ku, i64 4
  store i8 %i.lx, ptr %gep56.i.4.1, align 1, !tbaa !38
  %i.ly = lshr i32 %.0.i.1, 5
  %i.lz = and i32 %i.ly, 1
  %i.ma = zext nneg i32 %i.lz to i64
  %i.mb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ma
  %i.mc = load i8, ptr %i.mb, align 1, !tbaa !38
  %gep56.i.5.1 = getelementptr i8, ptr %i.ku, i64 5
  store i8 %i.mc, ptr %gep56.i.5.1, align 1, !tbaa !38
  %i.md = lshr i32 %.0.i.1, 6
  %i.me = and i32 %i.md, 1
  %i.mf = zext nneg i32 %i.me to i64
  %i.mg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.mf
  %i.mh = load i8, ptr %i.mg, align 1, !tbaa !38
  %gep56.i.6.1 = getelementptr i8, ptr %i.ku, i64 6
  store i8 %i.mh, ptr %gep56.i.6.1, align 1, !tbaa !38
  %i.mi = lshr i32 %.0.i.1, 7
  %i.mj = zext nneg i32 %i.mi to i64
  %i.mk = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.mj
  %i.ml = load i8, ptr %i.mk, align 1, !tbaa !38
  %gep56.i.7.1 = getelementptr i8, ptr %i.ku, i64 7
  store i8 %i.ml, ptr %gep56.i.7.1, align 1, !tbaa !38
  %i.mm = getelementptr inbounds i8, ptr %.0156404, i64 %i.bc ; 8 uses
  %i.mn = sub i64 %i.ad, %.pre-phi664
  %i.mo = icmp slt i64 %i.mn, 1
  br i1 %i.mo, label %bytestream2_get_byte.exit.2, label %bb.ab

bb.ab:                                            ; preds = %bytestream2_get_byte.exit.1
  %i.mp = getelementptr inbounds nuw i8, ptr %.sroa.0.14.1, i64 1 ; 2 uses
  %i.mq = load i8, ptr %.sroa.0.14.1, align 1, !tbaa !38
  %i.mr = zext i8 %i.mq to i32
  %.pre665 = ptrtoint ptr %i.mp to i64
  br label %bytestream2_get_byte.exit.2

bytestream2_get_byte.exit.2:                      ; preds = %bb.ab, %bytestream2_get_byte.exit.1
  %.pre-phi666 = phi i64 [ %.pre665, %bb.ab ], [ %i.ad, %bytestream2_get_byte.exit.1 ]
  %.sroa.0.14.2 = phi ptr [ %i.mp, %bb.ab ], [ %i.ac, %bytestream2_get_byte.exit.1 ] ; 2 uses
  %.0.i.2 = phi i32 [ %i.mr, %bb.ab ], [ 0, %bytestream2_get_byte.exit.1 ] ; 8 uses
  %i.ms = and i32 %.0.i.2, 1
  %i.mt = zext nneg i32 %i.ms to i64
  %i.mu = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.mt
  %i.mv = load i8, ptr %i.mu, align 1, !tbaa !38
  store i8 %i.mv, ptr %i.mm, align 1, !tbaa !38
  %i.mw = lshr i32 %.0.i.2, 1
  %i.mx = and i32 %i.mw, 1
  %i.my = zext nneg i32 %i.mx to i64
  %i.mz = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.my
  %i.na = load i8, ptr %i.mz, align 1, !tbaa !38
  %gep56.i.1.2 = getelementptr i8, ptr %i.mm, i64 1
  store i8 %i.na, ptr %gep56.i.1.2, align 1, !tbaa !38
  %i.nb = lshr i32 %.0.i.2, 2
  %i.nc = and i32 %i.nb, 1
  %i.nd = zext nneg i32 %i.nc to i64
  %i.ne = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.nd
  %i.nf = load i8, ptr %i.ne, align 1, !tbaa !38
  %gep56.i.2.2 = getelementptr i8, ptr %i.mm, i64 2
  store i8 %i.nf, ptr %gep56.i.2.2, align 1, !tbaa !38
  %i.ng = lshr i32 %.0.i.2, 3
  %i.nh = and i32 %i.ng, 1
  %i.ni = zext nneg i32 %i.nh to i64
  %i.nj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ni
  %i.nk = load i8, ptr %i.nj, align 1, !tbaa !38
  %gep56.i.3.2 = getelementptr i8, ptr %i.mm, i64 3
  store i8 %i.nk, ptr %gep56.i.3.2, align 1, !tbaa !38
  %i.nl = lshr i32 %.0.i.2, 4
  %i.nm = and i32 %i.nl, 1
  %i.nn = zext nneg i32 %i.nm to i64
  %i.no = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.nn
  %i.np = load i8, ptr %i.no, align 1, !tbaa !38
  %gep56.i.4.2 = getelementptr i8, ptr %i.mm, i64 4
  store i8 %i.np, ptr %gep56.i.4.2, align 1, !tbaa !38
  %i.nq = lshr i32 %.0.i.2, 5
  %i.nr = and i32 %i.nq, 1
  %i.ns = zext nneg i32 %i.nr to i64
  %i.nt = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ns
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !38
  %gep56.i.5.2 = getelementptr i8, ptr %i.mm, i64 5
  store i8 %i.nu, ptr %gep56.i.5.2, align 1, !tbaa !38
  %i.nv = lshr i32 %.0.i.2, 6
  %i.nw = and i32 %i.nv, 1
  %i.nx = zext nneg i32 %i.nw to i64
  %i.ny = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.nx
  %i.nz = load i8, ptr %i.ny, align 1, !tbaa !38
  %gep56.i.6.2 = getelementptr i8, ptr %i.mm, i64 6
  store i8 %i.nz, ptr %gep56.i.6.2, align 1, !tbaa !38
  %i.oa = lshr i32 %.0.i.2, 7
  %i.ob = zext nneg i32 %i.oa to i64
  %i.oc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ob
  %i.od = load i8, ptr %i.oc, align 1, !tbaa !38
  %gep56.i.7.2 = getelementptr i8, ptr %i.mm, i64 7
  store i8 %i.od, ptr %gep56.i.7.2, align 1, !tbaa !38
  %i.oe = getelementptr inbounds i8, ptr %.0156404, i64 %i.bd ; 8 uses
  %i.of = sub i64 %i.ad, %.pre-phi666
  %i.og = icmp slt i64 %i.of, 1
  br i1 %i.og, label %bytestream2_get_byte.exit.3, label %bb.ac

bb.ac:                                            ; preds = %bytestream2_get_byte.exit.2
  %i.oh = getelementptr inbounds nuw i8, ptr %.sroa.0.14.2, i64 1 ; 2 uses
  %i.oi = load i8, ptr %.sroa.0.14.2, align 1, !tbaa !38
  %i.oj = zext i8 %i.oi to i32
  %.pre667 = ptrtoint ptr %i.oh to i64
  br label %bytestream2_get_byte.exit.3

bytestream2_get_byte.exit.3:                      ; preds = %bb.ac, %bytestream2_get_byte.exit.2
  %.pre-phi668 = phi i64 [ %.pre667, %bb.ac ], [ %i.ad, %bytestream2_get_byte.exit.2 ]
  %.sroa.0.14.3 = phi ptr [ %i.oh, %bb.ac ], [ %i.ac, %bytestream2_get_byte.exit.2 ] ; 2 uses
  %.0.i.3 = phi i32 [ %i.oj, %bb.ac ], [ 0, %bytestream2_get_byte.exit.2 ] ; 8 uses
  %i.ok = and i32 %.0.i.3, 1
  %i.ol = zext nneg i32 %i.ok to i64
  %i.om = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ol
  %i.on = load i8, ptr %i.om, align 1, !tbaa !38
  store i8 %i.on, ptr %i.oe, align 1, !tbaa !38
  %i.oo = lshr i32 %.0.i.3, 1
  %i.op = and i32 %i.oo, 1
  %i.oq = zext nneg i32 %i.op to i64
  %i.or = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.oq
  %i.os = load i8, ptr %i.or, align 1, !tbaa !38
  %gep56.i.1.3 = getelementptr i8, ptr %i.oe, i64 1
  store i8 %i.os, ptr %gep56.i.1.3, align 1, !tbaa !38
  %i.ot = lshr i32 %.0.i.3, 2
  %i.ou = and i32 %i.ot, 1
  %i.ov = zext nneg i32 %i.ou to i64
  %i.ow = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ov
  %i.ox = load i8, ptr %i.ow, align 1, !tbaa !38
  %gep56.i.2.3 = getelementptr i8, ptr %i.oe, i64 2
  store i8 %i.ox, ptr %gep56.i.2.3, align 1, !tbaa !38
  %i.oy = lshr i32 %.0.i.3, 3
  %i.oz = and i32 %i.oy, 1
  %i.pa = zext nneg i32 %i.oz to i64
  %i.pb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.pa
  %i.pc = load i8, ptr %i.pb, align 1, !tbaa !38
  %gep56.i.3.3 = getelementptr i8, ptr %i.oe, i64 3
  store i8 %i.pc, ptr %gep56.i.3.3, align 1, !tbaa !38
  %i.pd = lshr i32 %.0.i.3, 4
  %i.pe = and i32 %i.pd, 1
  %i.pf = zext nneg i32 %i.pe to i64
  %i.pg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.pf
  %i.ph = load i8, ptr %i.pg, align 1, !tbaa !38
  %gep56.i.4.3 = getelementptr i8, ptr %i.oe, i64 4
  store i8 %i.ph, ptr %gep56.i.4.3, align 1, !tbaa !38
  %i.pi = lshr i32 %.0.i.3, 5
  %i.pj = and i32 %i.pi, 1
  %i.pk = zext nneg i32 %i.pj to i64
  %i.pl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.pk
  %i.pm = load i8, ptr %i.pl, align 1, !tbaa !38
  %gep56.i.5.3 = getelementptr i8, ptr %i.oe, i64 5
  store i8 %i.pm, ptr %gep56.i.5.3, align 1, !tbaa !38
  %i.pn = lshr i32 %.0.i.3, 6
  %i.po = and i32 %i.pn, 1
  %i.pp = zext nneg i32 %i.po to i64
  %i.pq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.pp
  %i.pr = load i8, ptr %i.pq, align 1, !tbaa !38
  %gep56.i.6.3 = getelementptr i8, ptr %i.oe, i64 6
  store i8 %i.pr, ptr %gep56.i.6.3, align 1, !tbaa !38
  %i.ps = lshr i32 %.0.i.3, 7
  %i.pt = zext nneg i32 %i.ps to i64
  %i.pu = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.pt
  %i.pv = load i8, ptr %i.pu, align 1, !tbaa !38
  %gep56.i.7.3 = getelementptr i8, ptr %i.oe, i64 7
  store i8 %i.pv, ptr %gep56.i.7.3, align 1, !tbaa !38
  %i.pw = getelementptr inbounds i8, ptr %.0156404, i64 %6 ; 8 uses
  %i.px = sub i64 %i.ad, %.pre-phi668
  %i.py = icmp slt i64 %i.px, 1
  br i1 %i.py, label %bytestream2_get_byte.exit.4, label %bb.ad

bb.ad:                                            ; preds = %bytestream2_get_byte.exit.3
  %i.pz = getelementptr inbounds nuw i8, ptr %.sroa.0.14.3, i64 1 ; 2 uses
  %i.qa = load i8, ptr %.sroa.0.14.3, align 1, !tbaa !38
  %i.qb = zext i8 %i.qa to i32
  %.pre669 = ptrtoint ptr %i.pz to i64
  br label %bytestream2_get_byte.exit.4

bytestream2_get_byte.exit.4:                      ; preds = %bb.ad, %bytestream2_get_byte.exit.3
  %.pre-phi670 = phi i64 [ %.pre669, %bb.ad ], [ %i.ad, %bytestream2_get_byte.exit.3 ]
  %.sroa.0.14.4 = phi ptr [ %i.pz, %bb.ad ], [ %i.ac, %bytestream2_get_byte.exit.3 ] ; 2 uses
  %.0.i.4 = phi i32 [ %i.qb, %bb.ad ], [ 0, %bytestream2_get_byte.exit.3 ] ; 8 uses
  %i.qc = and i32 %.0.i.4, 1
  %i.qd = zext nneg i32 %i.qc to i64
  %i.qe = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.qd
  %i.qf = load i8, ptr %i.qe, align 1, !tbaa !38
  store i8 %i.qf, ptr %i.pw, align 1, !tbaa !38
  %i.qg = lshr i32 %.0.i.4, 1
  %i.qh = and i32 %i.qg, 1
  %i.qi = zext nneg i32 %i.qh to i64
  %i.qj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.qi
  %i.qk = load i8, ptr %i.qj, align 1, !tbaa !38
  %gep56.i.1.4 = getelementptr i8, ptr %i.pw, i64 1
  store i8 %i.qk, ptr %gep56.i.1.4, align 1, !tbaa !38
  %i.ql = lshr i32 %.0.i.4, 2
  %i.qm = and i32 %i.ql, 1
  %i.qn = zext nneg i32 %i.qm to i64
  %i.qo = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.qn
  %i.qp = load i8, ptr %i.qo, align 1, !tbaa !38
  %gep56.i.2.4 = getelementptr i8, ptr %i.pw, i64 2
  store i8 %i.qp, ptr %gep56.i.2.4, align 1, !tbaa !38
  %i.qq = lshr i32 %.0.i.4, 3
  %i.qr = and i32 %i.qq, 1
  %i.qs = zext nneg i32 %i.qr to i64
  %i.qt = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.qs
  %i.qu = load i8, ptr %i.qt, align 1, !tbaa !38
  %gep56.i.3.4 = getelementptr i8, ptr %i.pw, i64 3
  store i8 %i.qu, ptr %gep56.i.3.4, align 1, !tbaa !38
  %i.qv = lshr i32 %.0.i.4, 4
  %i.qw = and i32 %i.qv, 1
  %i.qx = zext nneg i32 %i.qw to i64
  %i.qy = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.qx
  %i.qz = load i8, ptr %i.qy, align 1, !tbaa !38
  %gep56.i.4.4 = getelementptr i8, ptr %i.pw, i64 4
  store i8 %i.qz, ptr %gep56.i.4.4, align 1, !tbaa !38
  %i.ra = lshr i32 %.0.i.4, 5
  %i.rb = and i32 %i.ra, 1
  %i.rc = zext nneg i32 %i.rb to i64
  %i.rd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.rc
  %i.re = load i8, ptr %i.rd, align 1, !tbaa !38
  %gep56.i.5.4 = getelementptr i8, ptr %i.pw, i64 5
  store i8 %i.re, ptr %gep56.i.5.4, align 1, !tbaa !38
  %i.rf = lshr i32 %.0.i.4, 6
  %i.rg = and i32 %i.rf, 1
  %i.rh = zext nneg i32 %i.rg to i64
  %i.ri = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.rh
  %i.rj = load i8, ptr %i.ri, align 1, !tbaa !38
  %gep56.i.6.4 = getelementptr i8, ptr %i.pw, i64 6
  store i8 %i.rj, ptr %gep56.i.6.4, align 1, !tbaa !38
  %i.rk = lshr i32 %.0.i.4, 7
  %i.rl = zext nneg i32 %i.rk to i64
  %i.rm = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.rl
  %i.rn = load i8, ptr %i.rm, align 1, !tbaa !38
  %gep56.i.7.4 = getelementptr i8, ptr %i.pw, i64 7
  store i8 %i.rn, ptr %gep56.i.7.4, align 1, !tbaa !38
  %i.ro = getelementptr inbounds i8, ptr %.0156404, i64 %7 ; 8 uses
  %i.rp = sub i64 %i.ad, %.pre-phi670
  %i.rq = icmp slt i64 %i.rp, 1
  br i1 %i.rq, label %bytestream2_get_byte.exit.5, label %bb.ae

bb.ae:                                            ; preds = %bytestream2_get_byte.exit.4
  %i.rr = getelementptr inbounds nuw i8, ptr %.sroa.0.14.4, i64 1 ; 2 uses
  %i.rs = load i8, ptr %.sroa.0.14.4, align 1, !tbaa !38
  %i.rt = zext i8 %i.rs to i32
  %.pre671 = ptrtoint ptr %i.rr to i64
  br label %bytestream2_get_byte.exit.5

bytestream2_get_byte.exit.5:                      ; preds = %bb.ae, %bytestream2_get_byte.exit.4
  %.pre-phi672 = phi i64 [ %.pre671, %bb.ae ], [ %i.ad, %bytestream2_get_byte.exit.4 ]
  %.sroa.0.14.5 = phi ptr [ %i.rr, %bb.ae ], [ %i.ac, %bytestream2_get_byte.exit.4 ] ; 2 uses
  %.0.i.5 = phi i32 [ %i.rt, %bb.ae ], [ 0, %bytestream2_get_byte.exit.4 ] ; 8 uses
  %i.ru = and i32 %.0.i.5, 1
  %i.rv = zext nneg i32 %i.ru to i64
  %i.rw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.rv
  %i.rx = load i8, ptr %i.rw, align 1, !tbaa !38
  store i8 %i.rx, ptr %i.ro, align 1, !tbaa !38
  %i.ry = lshr i32 %.0.i.5, 1
  %i.rz = and i32 %i.ry, 1
  %i.sa = zext nneg i32 %i.rz to i64
  %i.sb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.sa
  %i.sc = load i8, ptr %i.sb, align 1, !tbaa !38
  %gep56.i.1.5 = getelementptr i8, ptr %i.ro, i64 1
  store i8 %i.sc, ptr %gep56.i.1.5, align 1, !tbaa !38
  %i.sd = lshr i32 %.0.i.5, 2
  %i.se = and i32 %i.sd, 1
  %i.sf = zext nneg i32 %i.se to i64
  %i.sg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.sf
  %i.sh = load i8, ptr %i.sg, align 1, !tbaa !38
  %gep56.i.2.5 = getelementptr i8, ptr %i.ro, i64 2
  store i8 %i.sh, ptr %gep56.i.2.5, align 1, !tbaa !38
  %i.si = lshr i32 %.0.i.5, 3
  %i.sj = and i32 %i.si, 1
  %i.sk = zext nneg i32 %i.sj to i64
  %i.sl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.sk
  %i.sm = load i8, ptr %i.sl, align 1, !tbaa !38
  %gep56.i.3.5 = getelementptr i8, ptr %i.ro, i64 3
  store i8 %i.sm, ptr %gep56.i.3.5, align 1, !tbaa !38
  %i.sn = lshr i32 %.0.i.5, 4
  %i.so = and i32 %i.sn, 1
  %i.sp = zext nneg i32 %i.so to i64
  %i.sq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.sp
  %i.sr = load i8, ptr %i.sq, align 1, !tbaa !38
  %gep56.i.4.5 = getelementptr i8, ptr %i.ro, i64 4
  store i8 %i.sr, ptr %gep56.i.4.5, align 1, !tbaa !38
  %i.ss = lshr i32 %.0.i.5, 5
  %i.st = and i32 %i.ss, 1
  %i.su = zext nneg i32 %i.st to i64
  %i.sv = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.su
  %i.sw = load i8, ptr %i.sv, align 1, !tbaa !38
  %gep56.i.5.5 = getelementptr i8, ptr %i.ro, i64 5
  store i8 %i.sw, ptr %gep56.i.5.5, align 1, !tbaa !38
  %i.sx = lshr i32 %.0.i.5, 6
  %i.sy = and i32 %i.sx, 1
  %i.sz = zext nneg i32 %i.sy to i64
  %i.ta = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.sz
  %i.tb = load i8, ptr %i.ta, align 1, !tbaa !38
  %gep56.i.6.5 = getelementptr i8, ptr %i.ro, i64 6
  store i8 %i.tb, ptr %gep56.i.6.5, align 1, !tbaa !38
  %i.tc = lshr i32 %.0.i.5, 7
  %i.td = zext nneg i32 %i.tc to i64
  %i.te = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.td
  %i.tf = load i8, ptr %i.te, align 1, !tbaa !38
  %gep56.i.7.5 = getelementptr i8, ptr %i.ro, i64 7
  store i8 %i.tf, ptr %gep56.i.7.5, align 1, !tbaa !38
  %i.tg = getelementptr inbounds i8, ptr %.0156404, i64 %8 ; 8 uses
  %i.th = sub i64 %i.ad, %.pre-phi672
  %i.ti = icmp slt i64 %i.th, 1
  br i1 %i.ti, label %bytestream2_get_byte.exit.6, label %bb.af

bb.af:                                            ; preds = %bytestream2_get_byte.exit.5
  %i.tj = getelementptr inbounds nuw i8, ptr %.sroa.0.14.5, i64 1 ; 2 uses
  %i.tk = load i8, ptr %.sroa.0.14.5, align 1, !tbaa !38
  %i.tl = zext i8 %i.tk to i32
  %.pre673 = ptrtoint ptr %i.tj to i64
  br label %bytestream2_get_byte.exit.6

bytestream2_get_byte.exit.6:                      ; preds = %bb.af, %bytestream2_get_byte.exit.5
  %.pre-phi674 = phi i64 [ %.pre673, %bb.af ], [ %i.ad, %bytestream2_get_byte.exit.5 ]
  %.sroa.0.14.6 = phi ptr [ %i.tj, %bb.af ], [ %i.ac, %bytestream2_get_byte.exit.5 ] ; 2 uses
  %.0.i.6 = phi i32 [ %i.tl, %bb.af ], [ 0, %bytestream2_get_byte.exit.5 ] ; 8 uses
  %i.tm = and i32 %.0.i.6, 1
  %i.tn = zext nneg i32 %i.tm to i64
  %i.to = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.tn
  %i.tp = load i8, ptr %i.to, align 1, !tbaa !38
  store i8 %i.tp, ptr %i.tg, align 1, !tbaa !38
  %i.tq = lshr i32 %.0.i.6, 1
  %i.tr = and i32 %i.tq, 1
  %i.ts = zext nneg i32 %i.tr to i64
  %i.tt = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ts
  %i.tu = load i8, ptr %i.tt, align 1, !tbaa !38
  %gep56.i.1.6 = getelementptr i8, ptr %i.tg, i64 1
  store i8 %i.tu, ptr %gep56.i.1.6, align 1, !tbaa !38
  %i.tv = lshr i32 %.0.i.6, 2
  %i.tw = and i32 %i.tv, 1
  %i.tx = zext nneg i32 %i.tw to i64
  %i.ty = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.tx
  %i.tz = load i8, ptr %i.ty, align 1, !tbaa !38
  %gep56.i.2.6 = getelementptr i8, ptr %i.tg, i64 2
  store i8 %i.tz, ptr %gep56.i.2.6, align 1, !tbaa !38
  %i.ua = lshr i32 %.0.i.6, 3
  %i.ub = and i32 %i.ua, 1
  %i.uc = zext nneg i32 %i.ub to i64
  %i.ud = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.uc
  %i.ue = load i8, ptr %i.ud, align 1, !tbaa !38
  %gep56.i.3.6 = getelementptr i8, ptr %i.tg, i64 3
  store i8 %i.ue, ptr %gep56.i.3.6, align 1, !tbaa !38
  %i.uf = lshr i32 %.0.i.6, 4
  %i.ug = and i32 %i.uf, 1
  %i.uh = zext nneg i32 %i.ug to i64
  %i.ui = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.uh
  %i.uj = load i8, ptr %i.ui, align 1, !tbaa !38
  %gep56.i.4.6 = getelementptr i8, ptr %i.tg, i64 4
  store i8 %i.uj, ptr %gep56.i.4.6, align 1, !tbaa !38
  %i.uk = lshr i32 %.0.i.6, 5
  %i.ul = and i32 %i.uk, 1
  %i.um = zext nneg i32 %i.ul to i64
  %i.un = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.um
  %i.uo = load i8, ptr %i.un, align 1, !tbaa !38
  %gep56.i.5.6 = getelementptr i8, ptr %i.tg, i64 5
  store i8 %i.uo, ptr %gep56.i.5.6, align 1, !tbaa !38
  %i.up = lshr i32 %.0.i.6, 6
  %i.uq = and i32 %i.up, 1
  %i.ur = zext nneg i32 %i.uq to i64
  %i.us = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ur
  %i.ut = load i8, ptr %i.us, align 1, !tbaa !38
  %gep56.i.6.6 = getelementptr i8, ptr %i.tg, i64 6
  store i8 %i.ut, ptr %gep56.i.6.6, align 1, !tbaa !38
  %i.uu = lshr i32 %.0.i.6, 7
  %i.uv = zext nneg i32 %i.uu to i64
  %i.uw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.uv
  %i.ux = load i8, ptr %i.uw, align 1, !tbaa !38
  %gep56.i.7.6 = getelementptr i8, ptr %i.tg, i64 7
  store i8 %i.ux, ptr %gep56.i.7.6, align 1, !tbaa !38
  %i.uy = getelementptr inbounds i8, ptr %.0156404, i64 %9 ; 8 uses
  %i.uz = sub i64 %i.ad, %.pre-phi674
  %i.va = icmp slt i64 %i.uz, 1
  br i1 %i.va, label %bytestream2_get_byte.exit.7, label %bb.ag

bb.ag:                                            ; preds = %bytestream2_get_byte.exit.6
  %i.vb = getelementptr inbounds nuw i8, ptr %.sroa.0.14.6, i64 1
  %i.vc = load i8, ptr %.sroa.0.14.6, align 1, !tbaa !38
  %i.vd = zext i8 %i.vc to i32
  br label %bytestream2_get_byte.exit.7

bytestream2_get_byte.exit.7:                      ; preds = %bb.ag, %bytestream2_get_byte.exit.6
  %.sroa.0.14.7 = phi ptr [ %i.vb, %bb.ag ], [ %i.ac, %bytestream2_get_byte.exit.6 ]
  %.0.i.7 = phi i32 [ %i.vd, %bb.ag ], [ 0, %bytestream2_get_byte.exit.6 ] ; 8 uses
  %i.ve = and i32 %.0.i.7, 1
  %i.vf = zext nneg i32 %i.ve to i64
  %i.vg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.vf
  %i.vh = load i8, ptr %i.vg, align 1, !tbaa !38
  store i8 %i.vh, ptr %i.uy, align 1, !tbaa !38
  %i.vi = lshr i32 %.0.i.7, 1
  %i.vj = and i32 %i.vi, 1
  %i.vk = zext nneg i32 %i.vj to i64
  %i.vl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.vk
  %i.vm = load i8, ptr %i.vl, align 1, !tbaa !38
  %gep56.i.1.7 = getelementptr i8, ptr %i.uy, i64 1
  store i8 %i.vm, ptr %gep56.i.1.7, align 1, !tbaa !38
  %i.vn = lshr i32 %.0.i.7, 2
  %i.vo = and i32 %i.vn, 1
  %i.vp = zext nneg i32 %i.vo to i64
  %i.vq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.vp
  %i.vr = load i8, ptr %i.vq, align 1, !tbaa !38
  %gep56.i.2.7 = getelementptr i8, ptr %i.uy, i64 2
  store i8 %i.vr, ptr %gep56.i.2.7, align 1, !tbaa !38
  %i.vs = lshr i32 %.0.i.7, 3
  %i.vt = and i32 %i.vs, 1
  %i.vu = zext nneg i32 %i.vt to i64
  %i.vv = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.vu
  %i.vw = load i8, ptr %i.vv, align 1, !tbaa !38
  %gep56.i.3.7 = getelementptr i8, ptr %i.uy, i64 3
  store i8 %i.vw, ptr %gep56.i.3.7, align 1, !tbaa !38
  %i.vx = lshr i32 %.0.i.7, 4
  %i.vy = and i32 %i.vx, 1
  %i.vz = zext nneg i32 %i.vy to i64
  %i.wa = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.vz
  %i.wb = load i8, ptr %i.wa, align 1, !tbaa !38
  %gep56.i.4.7 = getelementptr i8, ptr %i.uy, i64 4
  store i8 %i.wb, ptr %gep56.i.4.7, align 1, !tbaa !38
  %i.wc = lshr i32 %.0.i.7, 5
  %i.wd = and i32 %i.wc, 1
  %i.we = zext nneg i32 %i.wd to i64
  %i.wf = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.we
  %i.wg = load i8, ptr %i.wf, align 1, !tbaa !38
  %gep56.i.5.7 = getelementptr i8, ptr %i.uy, i64 5
  store i8 %i.wg, ptr %gep56.i.5.7, align 1, !tbaa !38
  %i.wh = lshr i32 %.0.i.7, 6
  %i.wi = and i32 %i.wh, 1
  %i.wj = zext nneg i32 %i.wi to i64
  %i.wk = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.wj
  %i.wl = load i8, ptr %i.wk, align 1, !tbaa !38
  %gep56.i.6.7 = getelementptr i8, ptr %i.uy, i64 6
  store i8 %i.wl, ptr %gep56.i.6.7, align 1, !tbaa !38
  %i.wm = lshr i32 %.0.i.7, 7
  %i.wn = zext nneg i32 %i.wm to i64
  %i.wo = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.wn
  %i.wp = load i8, ptr %i.wo, align 1, !tbaa !38
  %gep56.i.7.7 = getelementptr i8, ptr %i.uy, i64 7
  store i8 %i.wp, ptr %gep56.i.7.7, align 1, !tbaa !38
  br label %copy_block.exit.thread

.preheader342:                                    ; preds = %.preheader342.preheader, %.split.us
  %i.wq = phi i1 [ false, %.split.us ], [ true, %.preheader342.preheader ]
  %indvars.iv = phi i64 [ 4, %.split.us ], [ 0, %.preheader342.preheader ]
  %.sroa.0.7395 = phi ptr [ %.us-phi, %.split.us ], [ %.sroa.0.2, %.preheader342.preheader ] ; 7 uses
  %i.wr = mul nsw i64 %indvars.iv, %i.y
  %invariant.gep = getelementptr i8, ptr %.0156404, i64 %i.wr ; 33 uses
  %i.ws = ptrtoint ptr %.sroa.0.7395 to i64
  %i.wt = sub i64 %i.ad, %i.ws                    ; 3 uses
  switch i32 %i.bz, label %.preheader342.split.preheader [
    i32 10, label %.preheader342.split.us.preheader
    i32 13, label %.preheader342.split.us388.preheader
  ]

.preheader342.split.us388.preheader:              ; preds = %.preheader342
  %i.wu = tail call i64 @llvm.smin.i64(i64 %i.wt, i64 4)
  %i.wv = and i64 %i.wu, 4294967295               ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.a, ptr align 1 %.sroa.0.7395, i64 %i.wv, i1 false)
  %i.ww = getelementptr inbounds nuw i8, ptr %.sroa.0.7395, i64 %i.wv ; 3 uses
  %i.wx = ptrtoint ptr %i.ww to i64
  %i.wy = sub i64 %i.ad, %i.wx
  %i.wz = icmp slt i64 %i.wy, 4
  br i1 %i.wz, label %bytestream2_get_le32.exit.us, label %bb.aj

.preheader342.split.us.preheader:                 ; preds = %.preheader342
  %i.xa = tail call i64 @llvm.smin.i64(i64 %i.wt, i64 2)
  %i.xb = and i64 %i.xa, 4294967295               ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.a, ptr align 1 %.sroa.0.7395, i64 %i.xb, i1 false)
  %i.xc = getelementptr inbounds nuw i8, ptr %.sroa.0.7395, i64 %i.xb ; 3 uses
  %i.xd = ptrtoint ptr %i.xc to i64
  %i.xe = sub i64 %i.ad, %i.xd
  %i.xf = icmp slt i64 %i.xe, 2
  br i1 %i.xf, label %bytestream2_get_le16.exit184.us, label %bb.ah

.preheader342.split.preheader:                    ; preds = %.preheader342
  %i.xg = tail call i64 @llvm.smin.i64(i64 %i.wt, i64 4)
  %i.xh = and i64 %i.xg, 4294967295               ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0, ptr align 1 %.sroa.0.7395, i64 %i.xh, i1 false)
  %i.xi = getelementptr inbounds nuw i8, ptr %.sroa.0.7395, i64 %i.xh ; 3 uses
  %i.xj = ptrtoint ptr %i.xi to i64
  %i.xk = sub i64 %i.ad, %i.xj
  %i.xl = icmp slt i64 %i.xk, 2
  br i1 %i.xl, label %bytestream2_get_le16.exit, label %bb.al

bb.ah:                                            ; preds = %.preheader342.split.us.preheader
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xc, i64 2 ; 2 uses
  %i.xn = load i16, ptr %i.xc, align 1, !tbaa !38
  %i.xo = zext i16 %i.xn to i32
  %.pre665.a = ptrtoint ptr %i.xm to i64
  br label %bytestream2_get_le16.exit184.us

bytestream2_get_le16.exit184.us:                  ; preds = %bb.ah, %.preheader342.split.us.preheader
  %.pre-phi666.a = phi i64 [ %.pre665.a, %bb.ah ], [ %i.ad, %.preheader342.split.us.preheader ]
  %.sroa.0.18.us = phi ptr [ %i.xm, %bb.ah ], [ %i.ac, %.preheader342.split.us.preheader ] ; 2 uses
  %.0.i183.us = phi i32 [ %i.xo, %bb.ah ], [ 0, %.preheader342.split.us.preheader ] ; 16 uses
  %i.xp = and i32 %.0.i183.us, 1
  %i.xq = zext nneg i32 %i.xp to i64
  %i.xr = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.xq
  %i.xs = load i8, ptr %i.xr, align 1, !tbaa !38
  store i8 %i.xs, ptr %invariant.gep, align 1, !tbaa !38
  %i.xt = lshr i32 %.0.i183.us, 1
  %i.xu = and i32 %i.xt, 1
  %i.xv = zext nneg i32 %i.xu to i64
  %i.xw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.xv
  %i.xx = load i8, ptr %i.xw, align 1, !tbaa !38
  %gep56.i221.us.1 = getelementptr i8, ptr %invariant.gep, i64 1
  store i8 %i.xx, ptr %gep56.i221.us.1, align 1, !tbaa !38
  %i.xy = lshr i32 %.0.i183.us, 2
  %i.xz = and i32 %i.xy, 1
  %i.ya = zext nneg i32 %i.xz to i64
  %i.yb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ya
  %i.yc = load i8, ptr %i.yb, align 1, !tbaa !38
  %gep56.i221.us.2 = getelementptr i8, ptr %invariant.gep, i64 2
  store i8 %i.yc, ptr %gep56.i221.us.2, align 1, !tbaa !38
  %i.yd = lshr i32 %.0.i183.us, 3
  %i.ye = and i32 %i.yd, 1
  %i.yf = zext nneg i32 %i.ye to i64
  %i.yg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.yf
  %i.yh = load i8, ptr %i.yg, align 1, !tbaa !38
  %gep56.i221.us.3 = getelementptr i8, ptr %invariant.gep, i64 3
  store i8 %i.yh, ptr %gep56.i221.us.3, align 1, !tbaa !38
  %i.yi = lshr i32 %.0.i183.us, 4
  %invariant.gep55.i218.us.1 = getelementptr i8, ptr %invariant.gep, i64 %i.y ; 4 uses
  %i.yj = and i32 %i.yi, 1
  %i.yk = zext nneg i32 %i.yj to i64
  %i.yl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.yk
  %i.ym = load i8, ptr %i.yl, align 1, !tbaa !38
  store i8 %i.ym, ptr %invariant.gep55.i218.us.1, align 1, !tbaa !38
  %i.yn = lshr i32 %.0.i183.us, 5
  %i.yo = and i32 %i.yn, 1
  %i.yp = zext nneg i32 %i.yo to i64
  %i.yq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.yp
  %i.yr = load i8, ptr %i.yq, align 1, !tbaa !38
  %gep56.i221.us.1.1 = getelementptr i8, ptr %invariant.gep55.i218.us.1, i64 1
  store i8 %i.yr, ptr %gep56.i221.us.1.1, align 1, !tbaa !38
  %i.ys = lshr i32 %.0.i183.us, 6
  %i.yt = and i32 %i.ys, 1
  %i.yu = zext nneg i32 %i.yt to i64
  %i.yv = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.yu
  %i.yw = load i8, ptr %i.yv, align 1, !tbaa !38
  %gep56.i221.us.2.1 = getelementptr i8, ptr %invariant.gep55.i218.us.1, i64 2
  store i8 %i.yw, ptr %gep56.i221.us.2.1, align 1, !tbaa !38
  %i.yx = lshr i32 %.0.i183.us, 7
  %i.yy = and i32 %i.yx, 1
  %i.yz = zext nneg i32 %i.yy to i64
  %i.za = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.yz
  %i.zb = load i8, ptr %i.za, align 1, !tbaa !38
  %gep56.i221.us.3.1 = getelementptr i8, ptr %invariant.gep55.i218.us.1, i64 3
  store i8 %i.zb, ptr %gep56.i221.us.3.1, align 1, !tbaa !38
  %i.zc = lshr i32 %.0.i183.us, 8
  %invariant.gep55.i218.us.2 = getelementptr i8, ptr %invariant.gep, i64 %i.ay ; 4 uses
  %i.zd = and i32 %i.zc, 1
  %i.ze = zext nneg i32 %i.zd to i64
  %i.zf = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ze
  %i.zg = load i8, ptr %i.zf, align 1, !tbaa !38
  store i8 %i.zg, ptr %invariant.gep55.i218.us.2, align 1, !tbaa !38
  %i.zh = lshr i32 %.0.i183.us, 9
  %i.zi = and i32 %i.zh, 1
  %i.zj = zext nneg i32 %i.zi to i64
  %i.zk = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.zj
  %i.zl = load i8, ptr %i.zk, align 1, !tbaa !38
  %gep56.i221.us.1.2 = getelementptr i8, ptr %invariant.gep55.i218.us.2, i64 1
  store i8 %i.zl, ptr %gep56.i221.us.1.2, align 1, !tbaa !38
  %i.zm = lshr i32 %.0.i183.us, 10
  %i.zn = and i32 %i.zm, 1
  %i.zo = zext nneg i32 %i.zn to i64
  %i.zp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.zo
  %i.zq = load i8, ptr %i.zp, align 1, !tbaa !38
  %gep56.i221.us.2.2 = getelementptr i8, ptr %invariant.gep55.i218.us.2, i64 2
  store i8 %i.zq, ptr %gep56.i221.us.2.2, align 1, !tbaa !38
  %i.zr = lshr i32 %.0.i183.us, 11
  %i.zs = and i32 %i.zr, 1
  %i.zt = zext nneg i32 %i.zs to i64
  %i.zu = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.zt
  %i.zv = load i8, ptr %i.zu, align 1, !tbaa !38
  %gep56.i221.us.3.2 = getelementptr i8, ptr %invariant.gep55.i218.us.2, i64 3
  store i8 %i.zv, ptr %gep56.i221.us.3.2, align 1, !tbaa !38
  %i.zw = lshr i32 %.0.i183.us, 12
  %invariant.gep55.i218.us.3 = getelementptr i8, ptr %invariant.gep, i64 %i.az ; 4 uses
  %i.zx = and i32 %i.zw, 1
  %i.zy = zext nneg i32 %i.zx to i64
  %i.zz = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.zy
  %i.aaa = load i8, ptr %i.zz, align 1, !tbaa !38
  store i8 %i.aaa, ptr %invariant.gep55.i218.us.3, align 1, !tbaa !38
  %i.aab = lshr i32 %.0.i183.us, 13
  %i.aac = and i32 %i.aab, 1
  %i.aad = zext nneg i32 %i.aac to i64
  %i.aae = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aad
  %i.aaf = load i8, ptr %i.aae, align 1, !tbaa !38
  %gep56.i221.us.1.3 = getelementptr i8, ptr %invariant.gep55.i218.us.3, i64 1
  store i8 %i.aaf, ptr %gep56.i221.us.1.3, align 1, !tbaa !38
  %i.aag = lshr i32 %.0.i183.us, 14
  %i.aah = and i32 %i.aag, 1
  %i.aai = zext nneg i32 %i.aah to i64
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aai
  %i.aak = load i8, ptr %i.aaj, align 1, !tbaa !38
  %gep56.i221.us.2.3 = getelementptr i8, ptr %invariant.gep55.i218.us.3, i64 2
  store i8 %i.aak, ptr %gep56.i221.us.2.3, align 1, !tbaa !38
  %i.aal = lshr i32 %.0.i183.us, 15
  %i.aam = zext nneg i32 %i.aal to i64
  %i.aan = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aam
  %i.aao = load i8, ptr %i.aan, align 1, !tbaa !38
  %gep56.i221.us.3.3 = getelementptr i8, ptr %invariant.gep55.i218.us.3, i64 3
  store i8 %i.aao, ptr %gep56.i221.us.3.3, align 1, !tbaa !38
  %i.aap = sub i64 %i.ad, %.pre-phi666.a
  %i.aaq = tail call i64 @llvm.smin.i64(i64 %i.aap, i64 2)
  %i.aar = and i64 %i.aaq, 4294967295             ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.a, ptr align 1 %.sroa.0.18.us, i64 %i.aar, i1 false)
  %i.aas = getelementptr inbounds nuw i8, ptr %.sroa.0.18.us, i64 %i.aar ; 3 uses
  %gep385.us.1 = getelementptr i8, ptr %invariant.gep, i64 4 ; 4 uses
  %i.aat = ptrtoint ptr %i.aas to i64
  %i.aau = sub i64 %i.ad, %i.aat
  %i.aav = icmp slt i64 %i.aau, 2
  br i1 %i.aav, label %bytestream2_get_le16.exit184.us.1, label %bb.ai

bb.ai:                                            ; preds = %bytestream2_get_le16.exit184.us
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aas, i64 2
  %i.aax = load i16, ptr %i.aas, align 1, !tbaa !38
  %i.aay = zext i16 %i.aax to i32
  br label %bytestream2_get_le16.exit184.us.1

bytestream2_get_le16.exit184.us.1:                ; preds = %bb.ai, %bytestream2_get_le16.exit184.us
  %.sroa.0.18.us.1 = phi ptr [ %i.aaw, %bb.ai ], [ %i.ac, %bytestream2_get_le16.exit184.us ]
  %.0.i183.us.1 = phi i32 [ %i.aay, %bb.ai ], [ 0, %bytestream2_get_le16.exit184.us ] ; 16 uses
  %i.aaz = and i32 %.0.i183.us.1, 1
  %i.aba = zext nneg i32 %i.aaz to i64
  %i.abb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aba
  %i.abc = load i8, ptr %i.abb, align 1, !tbaa !38
  store i8 %i.abc, ptr %gep385.us.1, align 1, !tbaa !38
  %i.abd = lshr i32 %.0.i183.us.1, 1
  %i.abe = and i32 %i.abd, 1
  %i.abf = zext nneg i32 %i.abe to i64
  %i.abg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.abf
  %i.abh = load i8, ptr %i.abg, align 1, !tbaa !38
  %gep56.i221.us.1.1450 = getelementptr i8, ptr %invariant.gep, i64 5
  store i8 %i.abh, ptr %gep56.i221.us.1.1450, align 1, !tbaa !38
  %i.abi = lshr i32 %.0.i183.us.1, 2
  %i.abj = and i32 %i.abi, 1
  %i.abk = zext nneg i32 %i.abj to i64
  %i.abl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.abk
  %i.abm = load i8, ptr %i.abl, align 1, !tbaa !38
  %gep56.i221.us.2.1451 = getelementptr i8, ptr %invariant.gep, i64 6
  store i8 %i.abm, ptr %gep56.i221.us.2.1451, align 1, !tbaa !38
  %i.abn = lshr i32 %.0.i183.us.1, 3
  %i.abo = and i32 %i.abn, 1
  %i.abp = zext nneg i32 %i.abo to i64
  %i.abq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.abp
  %i.abr = load i8, ptr %i.abq, align 1, !tbaa !38
  %gep56.i221.us.3.1452 = getelementptr i8, ptr %invariant.gep, i64 7
  store i8 %i.abr, ptr %gep56.i221.us.3.1452, align 1, !tbaa !38
  %i.abs = lshr i32 %.0.i183.us.1, 4
  %invariant.gep55.i218.us.1.1 = getelementptr i8, ptr %gep385.us.1, i64 %i.y ; 4 uses
  %i.abt = and i32 %i.abs, 1
  %i.abu = zext nneg i32 %i.abt to i64
  %i.abv = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.abu
  %i.abw = load i8, ptr %i.abv, align 1, !tbaa !38
  store i8 %i.abw, ptr %invariant.gep55.i218.us.1.1, align 1, !tbaa !38
  %i.abx = lshr i32 %.0.i183.us.1, 5
  %i.aby = and i32 %i.abx, 1
  %i.abz = zext nneg i32 %i.aby to i64
  %i.aca = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.abz
  %i.acb = load i8, ptr %i.aca, align 1, !tbaa !38
  %gep56.i221.us.1.1.1 = getelementptr i8, ptr %invariant.gep55.i218.us.1.1, i64 1
  store i8 %i.acb, ptr %gep56.i221.us.1.1.1, align 1, !tbaa !38
  %i.acc = lshr i32 %.0.i183.us.1, 6
  %i.acd = and i32 %i.acc, 1
  %i.ace = zext nneg i32 %i.acd to i64
  %i.acf = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ace
  %i.acg = load i8, ptr %i.acf, align 1, !tbaa !38
  %gep56.i221.us.2.1.1 = getelementptr i8, ptr %invariant.gep55.i218.us.1.1, i64 2
  store i8 %i.acg, ptr %gep56.i221.us.2.1.1, align 1, !tbaa !38
  %i.ach = lshr i32 %.0.i183.us.1, 7
  %i.aci = and i32 %i.ach, 1
  %i.acj = zext nneg i32 %i.aci to i64
  %i.ack = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.acj
  %i.acl = load i8, ptr %i.ack, align 1, !tbaa !38
  %gep56.i221.us.3.1.1 = getelementptr i8, ptr %invariant.gep55.i218.us.1.1, i64 3
  store i8 %i.acl, ptr %gep56.i221.us.3.1.1, align 1, !tbaa !38
  %i.acm = lshr i32 %.0.i183.us.1, 8
  %invariant.gep55.i218.us.2.1 = getelementptr i8, ptr %gep385.us.1, i64 %i.ay ; 4 uses
  %i.acn = and i32 %i.acm, 1
  %i.aco = zext nneg i32 %i.acn to i64
  %i.acp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aco
  %i.acq = load i8, ptr %i.acp, align 1, !tbaa !38
  store i8 %i.acq, ptr %invariant.gep55.i218.us.2.1, align 1, !tbaa !38
  %i.acr = lshr i32 %.0.i183.us.1, 9
  %i.acs = and i32 %i.acr, 1
  %i.act = zext nneg i32 %i.acs to i64
  %i.acu = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.act
  %i.acv = load i8, ptr %i.acu, align 1, !tbaa !38
  %gep56.i221.us.1.2.1 = getelementptr i8, ptr %invariant.gep55.i218.us.2.1, i64 1
  store i8 %i.acv, ptr %gep56.i221.us.1.2.1, align 1, !tbaa !38
  %i.acw = lshr i32 %.0.i183.us.1, 10
  %i.acx = and i32 %i.acw, 1
  %i.acy = zext nneg i32 %i.acx to i64
  %i.acz = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.acy
  %i.ada = load i8, ptr %i.acz, align 1, !tbaa !38
  %gep56.i221.us.2.2.1 = getelementptr i8, ptr %invariant.gep55.i218.us.2.1, i64 2
  store i8 %i.ada, ptr %gep56.i221.us.2.2.1, align 1, !tbaa !38
  %i.adb = lshr i32 %.0.i183.us.1, 11
  %i.adc = and i32 %i.adb, 1
  %i.add = zext nneg i32 %i.adc to i64
  %i.ade = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.add
  %i.adf = load i8, ptr %i.ade, align 1, !tbaa !38
  %gep56.i221.us.3.2.1 = getelementptr i8, ptr %invariant.gep55.i218.us.2.1, i64 3
  store i8 %i.adf, ptr %gep56.i221.us.3.2.1, align 1, !tbaa !38
  %i.adg = lshr i32 %.0.i183.us.1, 12
  %invariant.gep55.i218.us.3.1 = getelementptr i8, ptr %gep385.us.1, i64 %i.az ; 4 uses
  %i.adh = and i32 %i.adg, 1
  %i.adi = zext nneg i32 %i.adh to i64
  %i.adj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.adi
  %i.adk = load i8, ptr %i.adj, align 1, !tbaa !38
  store i8 %i.adk, ptr %invariant.gep55.i218.us.3.1, align 1, !tbaa !38
  %i.adl = lshr i32 %.0.i183.us.1, 13
  %i.adm = and i32 %i.adl, 1
  %i.adn = zext nneg i32 %i.adm to i64
  %i.ado = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.adn
  %i.adp = load i8, ptr %i.ado, align 1, !tbaa !38
  %gep56.i221.us.1.3.1 = getelementptr i8, ptr %invariant.gep55.i218.us.3.1, i64 1
  store i8 %i.adp, ptr %gep56.i221.us.1.3.1, align 1, !tbaa !38
  %i.adq = lshr i32 %.0.i183.us.1, 14
  %i.adr = and i32 %i.adq, 1
  %i.ads = zext nneg i32 %i.adr to i64
  %i.adt = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ads
  %i.adu = load i8, ptr %i.adt, align 1, !tbaa !38
  %gep56.i221.us.2.3.1 = getelementptr i8, ptr %invariant.gep55.i218.us.3.1, i64 2
  store i8 %i.adu, ptr %gep56.i221.us.2.3.1, align 1, !tbaa !38
  %i.adv = lshr i32 %.0.i183.us.1, 15
  br label %.split.us

bb.aj:                                            ; preds = %.preheader342.split.us388.preheader
  %i.adw = getelementptr inbounds nuw i8, ptr %i.ww, i64 4 ; 2 uses
  %i.adx = load i32, ptr %i.ww, align 1, !tbaa !38
  %.pre667.a = ptrtoint ptr %i.adw to i64
  br label %bytestream2_get_le32.exit.us

bytestream2_get_le32.exit.us:                     ; preds = %bb.aj, %.preheader342.split.us388.preheader
  %.pre-phi668.a = phi i64 [ %.pre667.a, %bb.aj ], [ %i.ad, %.preheader342.split.us388.preheader ]
  %.sroa.0.21.us = phi ptr [ %i.adw, %bb.aj ], [ %i.ac, %.preheader342.split.us388.preheader ] ; 2 uses
  %.0.i189.us = phi i32 [ %i.adx, %bb.aj ], [ 0, %.preheader342.split.us388.preheader ] ; 16 uses
  %i.ady = and i32 %.0.i189.us, 3
  %i.adz = zext nneg i32 %i.ady to i64
  %i.aea = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.adz
  %i.aeb = load i8, ptr %i.aea, align 1, !tbaa !38
  store i8 %i.aeb, ptr %invariant.gep, align 1, !tbaa !38
  %i.aec = lshr i32 %.0.i189.us, 2
  %i.aed = and i32 %i.aec, 3
  %i.aee = zext nneg i32 %i.aed to i64
  %i.aef = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aee
  %i.aeg = load i8, ptr %i.aef, align 1, !tbaa !38
  %gep56.i234.us.1 = getelementptr i8, ptr %invariant.gep, i64 1
  store i8 %i.aeg, ptr %gep56.i234.us.1, align 1, !tbaa !38
  %i.aeh = lshr i32 %.0.i189.us, 4
  %i.aei = and i32 %i.aeh, 3
  %i.aej = zext nneg i32 %i.aei to i64
  %i.aek = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aej
  %i.ael = load i8, ptr %i.aek, align 1, !tbaa !38
  %gep56.i234.us.2 = getelementptr i8, ptr %invariant.gep, i64 2
  store i8 %i.ael, ptr %gep56.i234.us.2, align 1, !tbaa !38
  %i.aem = lshr i32 %.0.i189.us, 6
  %i.aen = and i32 %i.aem, 3
  %i.aeo = zext nneg i32 %i.aen to i64
  %i.aep = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aeo
  %i.aeq = load i8, ptr %i.aep, align 1, !tbaa !38
  %gep56.i234.us.3 = getelementptr i8, ptr %invariant.gep, i64 3
  store i8 %i.aeq, ptr %gep56.i234.us.3, align 1, !tbaa !38
  %i.aer = lshr i32 %.0.i189.us, 8
  %invariant.gep55.i231.us.1 = getelementptr i8, ptr %invariant.gep, i64 %i.y ; 4 uses
  %i.aes = and i32 %i.aer, 3
  %i.aet = zext nneg i32 %i.aes to i64
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aet
  %i.aev = load i8, ptr %i.aeu, align 1, !tbaa !38
  store i8 %i.aev, ptr %invariant.gep55.i231.us.1, align 1, !tbaa !38
  %i.aew = lshr i32 %.0.i189.us, 10
  %i.aex = and i32 %i.aew, 3
  %i.aey = zext nneg i32 %i.aex to i64
  %i.aez = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aey
  %i.afa = load i8, ptr %i.aez, align 1, !tbaa !38
  %gep56.i234.us.1.1 = getelementptr i8, ptr %invariant.gep55.i231.us.1, i64 1
  store i8 %i.afa, ptr %gep56.i234.us.1.1, align 1, !tbaa !38
  %i.afb = lshr i32 %.0.i189.us, 12
  %i.afc = and i32 %i.afb, 3
  %i.afd = zext nneg i32 %i.afc to i64
  %i.afe = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.afd
  %i.aff = load i8, ptr %i.afe, align 1, !tbaa !38
  %gep56.i234.us.2.1 = getelementptr i8, ptr %invariant.gep55.i231.us.1, i64 2
  store i8 %i.aff, ptr %gep56.i234.us.2.1, align 1, !tbaa !38
  %i.afg = lshr i32 %.0.i189.us, 14
  %i.afh = and i32 %i.afg, 3
  %i.afi = zext nneg i32 %i.afh to i64
  %i.afj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.afi
  %i.afk = load i8, ptr %i.afj, align 1, !tbaa !38
  %gep56.i234.us.3.1 = getelementptr i8, ptr %invariant.gep55.i231.us.1, i64 3
  store i8 %i.afk, ptr %gep56.i234.us.3.1, align 1, !tbaa !38
  %i.afl = lshr i32 %.0.i189.us, 16
  %invariant.gep55.i231.us.2 = getelementptr i8, ptr %invariant.gep, i64 %4 ; 4 uses
  %i.afm = and i32 %i.afl, 3
  %i.afn = zext nneg i32 %i.afm to i64
  %i.afo = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.afn
  %i.afp = load i8, ptr %i.afo, align 1, !tbaa !38
  store i8 %i.afp, ptr %invariant.gep55.i231.us.2, align 1, !tbaa !38
  %i.afq = lshr i32 %.0.i189.us, 18
  %i.afr = and i32 %i.afq, 3
  %i.afs = zext nneg i32 %i.afr to i64
  %i.aft = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.afs
  %i.afu = load i8, ptr %i.aft, align 1, !tbaa !38
  %gep56.i234.us.1.2 = getelementptr i8, ptr %invariant.gep55.i231.us.2, i64 1
  store i8 %i.afu, ptr %gep56.i234.us.1.2, align 1, !tbaa !38
  %i.afv = lshr i32 %.0.i189.us, 20
  %i.afw = and i32 %i.afv, 3
  %i.afx = zext nneg i32 %i.afw to i64
  %i.afy = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.afx
  %i.afz = load i8, ptr %i.afy, align 1, !tbaa !38
  %gep56.i234.us.2.2 = getelementptr i8, ptr %invariant.gep55.i231.us.2, i64 2
  store i8 %i.afz, ptr %gep56.i234.us.2.2, align 1, !tbaa !38
  %i.aga = lshr i32 %.0.i189.us, 22
  %i.agb = and i32 %i.aga, 3
  %i.agc = zext nneg i32 %i.agb to i64
  %i.agd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.agc
  %i.age = load i8, ptr %i.agd, align 1, !tbaa !38
  %gep56.i234.us.3.2 = getelementptr i8, ptr %invariant.gep55.i231.us.2, i64 3
  store i8 %i.age, ptr %gep56.i234.us.3.2, align 1, !tbaa !38
  %i.agf = lshr i32 %.0.i189.us, 24
  %invariant.gep55.i231.us.3 = getelementptr i8, ptr %invariant.gep, i64 %5 ; 4 uses
  %i.agg = and i32 %i.agf, 3
  %i.agh = zext nneg i32 %i.agg to i64
  %i.agi = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.agh
  %i.agj = load i8, ptr %i.agi, align 1, !tbaa !38
  store i8 %i.agj, ptr %invariant.gep55.i231.us.3, align 1, !tbaa !38
  %i.agk = lshr i32 %.0.i189.us, 26
  %i.agl = and i32 %i.agk, 3
  %i.agm = zext nneg i32 %i.agl to i64
  %i.agn = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.agm
  %i.ago = load i8, ptr %i.agn, align 1, !tbaa !38
  %gep56.i234.us.1.3 = getelementptr i8, ptr %invariant.gep55.i231.us.3, i64 1
  store i8 %i.ago, ptr %gep56.i234.us.1.3, align 1, !tbaa !38
  %i.agp = lshr i32 %.0.i189.us, 28
  %i.agq = and i32 %i.agp, 3
  %i.agr = zext nneg i32 %i.agq to i64
  %i.ags = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.agr
  %i.agt = load i8, ptr %i.ags, align 1, !tbaa !38
  %gep56.i234.us.2.3 = getelementptr i8, ptr %invariant.gep55.i231.us.3, i64 2
  store i8 %i.agt, ptr %gep56.i234.us.2.3, align 1, !tbaa !38
  %i.agu = lshr i32 %.0.i189.us, 30
  %i.agv = zext nneg i32 %i.agu to i64
  %i.agw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.agv
  %i.agx = load i8, ptr %i.agw, align 1, !tbaa !38
  %gep56.i234.us.3.3 = getelementptr i8, ptr %invariant.gep55.i231.us.3, i64 3
  store i8 %i.agx, ptr %gep56.i234.us.3.3, align 1, !tbaa !38
  %i.agy = sub i64 %i.ad, %.pre-phi668.a
  %i.agz = tail call i64 @llvm.smin.i64(i64 %i.agy, i64 4)
  %i.aha = and i64 %i.agz, 4294967295             ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.a, ptr align 1 %.sroa.0.21.us, i64 %i.aha, i1 false)
  %i.ahb = getelementptr inbounds nuw i8, ptr %.sroa.0.21.us, i64 %i.aha ; 3 uses
  %gep.us.1 = getelementptr i8, ptr %invariant.gep, i64 4 ; 4 uses
  %i.ahc = ptrtoint ptr %i.ahb to i64
  %i.ahd = sub i64 %i.ad, %i.ahc
  %i.ahe = icmp slt i64 %i.ahd, 4
  br i1 %i.ahe, label %bytestream2_get_le32.exit.us.1, label %bb.ak

bb.ak:                                            ; preds = %bytestream2_get_le32.exit.us
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.ahb, i64 4
  %i.ahg = load i32, ptr %i.ahb, align 1, !tbaa !38
  br label %bytestream2_get_le32.exit.us.1

bytestream2_get_le32.exit.us.1:                   ; preds = %bb.ak, %bytestream2_get_le32.exit.us
  %.sroa.0.21.us.1 = phi ptr [ %i.ahf, %bb.ak ], [ %i.ac, %bytestream2_get_le32.exit.us ]
  %.0.i189.us.1 = phi i32 [ %i.ahg, %bb.ak ], [ 0, %bytestream2_get_le32.exit.us ] ; 16 uses
  %i.ahh = and i32 %.0.i189.us.1, 3
  %i.ahi = zext nneg i32 %i.ahh to i64
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ahi
  %i.ahk = load i8, ptr %i.ahj, align 1, !tbaa !38
  store i8 %i.ahk, ptr %gep.us.1, align 1, !tbaa !38
  %i.ahl = lshr i32 %.0.i189.us.1, 2
  %i.ahm = and i32 %i.ahl, 3
  %i.ahn = zext nneg i32 %i.ahm to i64
  %i.aho = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ahn
  %i.ahp = load i8, ptr %i.aho, align 1, !tbaa !38
  %gep56.i234.us.1.1445 = getelementptr i8, ptr %invariant.gep, i64 5
  store i8 %i.ahp, ptr %gep56.i234.us.1.1445, align 1, !tbaa !38
  %i.ahq = lshr i32 %.0.i189.us.1, 4
  %i.ahr = and i32 %i.ahq, 3
  %i.ahs = zext nneg i32 %i.ahr to i64
  %i.aht = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ahs
  %i.ahu = load i8, ptr %i.aht, align 1, !tbaa !38
  %gep56.i234.us.2.1446 = getelementptr i8, ptr %invariant.gep, i64 6
  store i8 %i.ahu, ptr %gep56.i234.us.2.1446, align 1, !tbaa !38
  %i.ahv = lshr i32 %.0.i189.us.1, 6
  %i.ahw = and i32 %i.ahv, 3
  %i.ahx = zext nneg i32 %i.ahw to i64
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ahx
  %i.ahz = load i8, ptr %i.ahy, align 1, !tbaa !38
  %gep56.i234.us.3.1447 = getelementptr i8, ptr %invariant.gep, i64 7
  store i8 %i.ahz, ptr %gep56.i234.us.3.1447, align 1, !tbaa !38
  %i.aia = lshr i32 %.0.i189.us.1, 8
  %invariant.gep55.i231.us.1.1 = getelementptr i8, ptr %gep.us.1, i64 %i.y ; 4 uses
  %i.aib = and i32 %i.aia, 3
  %i.aic = zext nneg i32 %i.aib to i64
  %i.aid = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aic
  %i.aie = load i8, ptr %i.aid, align 1, !tbaa !38
  store i8 %i.aie, ptr %invariant.gep55.i231.us.1.1, align 1, !tbaa !38
  %i.aif = lshr i32 %.0.i189.us.1, 10
  %i.aig = and i32 %i.aif, 3
  %i.aih = zext nneg i32 %i.aig to i64
  %i.aii = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aih
  %i.aij = load i8, ptr %i.aii, align 1, !tbaa !38
  %gep56.i234.us.1.1.1 = getelementptr i8, ptr %invariant.gep55.i231.us.1.1, i64 1
  store i8 %i.aij, ptr %gep56.i234.us.1.1.1, align 1, !tbaa !38
  %i.aik = lshr i32 %.0.i189.us.1, 12
  %i.ail = and i32 %i.aik, 3
  %i.aim = zext nneg i32 %i.ail to i64
  %i.ain = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aim
  %i.aio = load i8, ptr %i.ain, align 1, !tbaa !38
  %gep56.i234.us.2.1.1 = getelementptr i8, ptr %invariant.gep55.i231.us.1.1, i64 2
  store i8 %i.aio, ptr %gep56.i234.us.2.1.1, align 1, !tbaa !38
  %i.aip = lshr i32 %.0.i189.us.1, 14
  %i.aiq = and i32 %i.aip, 3
  %i.air = zext nneg i32 %i.aiq to i64
  %i.ais = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.air
  %i.ait = load i8, ptr %i.ais, align 1, !tbaa !38
  %gep56.i234.us.3.1.1 = getelementptr i8, ptr %invariant.gep55.i231.us.1.1, i64 3
  store i8 %i.ait, ptr %gep56.i234.us.3.1.1, align 1, !tbaa !38
  %i.aiu = lshr i32 %.0.i189.us.1, 16
  %invariant.gep55.i231.us.2.1 = getelementptr i8, ptr %gep.us.1, i64 %4 ; 4 uses
  %i.aiv = and i32 %i.aiu, 3
  %i.aiw = zext nneg i32 %i.aiv to i64
  %i.aix = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aiw
  %i.aiy = load i8, ptr %i.aix, align 1, !tbaa !38
  store i8 %i.aiy, ptr %invariant.gep55.i231.us.2.1, align 1, !tbaa !38
  %i.aiz = lshr i32 %.0.i189.us.1, 18
  %i.aja = and i32 %i.aiz, 3
  %i.ajb = zext nneg i32 %i.aja to i64
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ajb
  %i.ajd = load i8, ptr %i.ajc, align 1, !tbaa !38
  %gep56.i234.us.1.2.1 = getelementptr i8, ptr %invariant.gep55.i231.us.2.1, i64 1
  store i8 %i.ajd, ptr %gep56.i234.us.1.2.1, align 1, !tbaa !38
  %i.aje = lshr i32 %.0.i189.us.1, 20
  %i.ajf = and i32 %i.aje, 3
  %i.ajg = zext nneg i32 %i.ajf to i64
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ajg
  %i.aji = load i8, ptr %i.ajh, align 1, !tbaa !38
  %gep56.i234.us.2.2.1 = getelementptr i8, ptr %invariant.gep55.i231.us.2.1, i64 2
  store i8 %i.aji, ptr %gep56.i234.us.2.2.1, align 1, !tbaa !38
  %i.ajj = lshr i32 %.0.i189.us.1, 22
  %i.ajk = and i32 %i.ajj, 3
  %i.ajl = zext nneg i32 %i.ajk to i64
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ajl
  %i.ajn = load i8, ptr %i.ajm, align 1, !tbaa !38
  %gep56.i234.us.3.2.1 = getelementptr i8, ptr %invariant.gep55.i231.us.2.1, i64 3
  store i8 %i.ajn, ptr %gep56.i234.us.3.2.1, align 1, !tbaa !38
  %i.ajo = lshr i32 %.0.i189.us.1, 24
  %invariant.gep55.i231.us.3.1 = getelementptr i8, ptr %gep.us.1, i64 %5 ; 4 uses
  %i.ajp = and i32 %i.ajo, 3
  %i.ajq = zext nneg i32 %i.ajp to i64
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ajq
  %i.ajs = load i8, ptr %i.ajr, align 1, !tbaa !38
  store i8 %i.ajs, ptr %invariant.gep55.i231.us.3.1, align 1, !tbaa !38
  %i.ajt = lshr i32 %.0.i189.us.1, 26
  %i.aju = and i32 %i.ajt, 3
  %i.ajv = zext nneg i32 %i.aju to i64
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ajv
  %i.ajx = load i8, ptr %i.ajw, align 1, !tbaa !38
  %gep56.i234.us.1.3.1 = getelementptr i8, ptr %invariant.gep55.i231.us.3.1, i64 1
  store i8 %i.ajx, ptr %gep56.i234.us.1.3.1, align 1, !tbaa !38
  %i.ajy = lshr i32 %.0.i189.us.1, 28
  %i.ajz = and i32 %i.ajy, 3
  %i.aka = zext nneg i32 %i.ajz to i64
  %i.akb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aka
  %i.akc = load i8, ptr %i.akb, align 1, !tbaa !38
  %gep56.i234.us.2.3.1 = getelementptr i8, ptr %invariant.gep55.i231.us.3.1, i64 2
  store i8 %i.akc, ptr %gep56.i234.us.2.3.1, align 1, !tbaa !38
  %i.akd = lshr i32 %.0.i189.us.1, 30
  br label %.split.us

bb.al:                                            ; preds = %.preheader342.split.preheader
  %i.ake = getelementptr inbounds nuw i8, ptr %i.xi, i64 2 ; 2 uses
  %i.akf = load i16, ptr %i.xi, align 1, !tbaa !38
  %i.akg = zext i16 %i.akf to i32
  %.pre663.a = ptrtoint ptr %i.ake to i64
  br label %bytestream2_get_le16.exit

bytestream2_get_le16.exit:                        ; preds = %.preheader342.split.preheader, %bb.al
  %.pre-phi664.a = phi i64 [ %i.ad, %.preheader342.split.preheader ], [ %.pre663.a, %bb.al ]
  %.sroa.0.17 = phi ptr [ %i.ac, %.preheader342.split.preheader ], [ %i.ake, %bb.al ] ; 2 uses
  %.0.i182 = phi i32 [ 0, %.preheader342.split.preheader ], [ %i.akg, %bb.al ] ; 16 uses
  %.sroa.0.0..sroa.0.0..sroa.0.0. = load i8, ptr %.sroa.0, align 4, !tbaa !38 ; 2 uses
  store i8 %.sroa.0.0..sroa.0.0..sroa.0.0., ptr %i.a, align 1, !tbaa !38
  %.sroa.0.1..sroa.0.1..sroa.0.1. = load i8, ptr %.sroa.0.1..sroa_idx, align 1, !tbaa !38 ; 6 uses
  store i8 %.sroa.0.1..sroa.0.1..sroa.0.1., ptr %i.ar, align 1, !tbaa !38
  %i.akh = and i32 %.0.i182, 1
  %i.aki = zext nneg i32 %i.akh to i64
  %i.akj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aki
  %i.akk = load i8, ptr %i.akj, align 1, !tbaa !38
  store i8 %i.akk, ptr %invariant.gep, align 1, !tbaa !38
  %i.akl = lshr i32 %.0.i182, 1
  store i8 %.sroa.0.1..sroa.0.1..sroa.0.1., ptr %i.ar, align 1, !tbaa !38
  %i.akm = and i32 %i.akl, 1
  %i.akn = zext nneg i32 %i.akm to i64
  %i.ako = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.akn
  %i.akp = load i8, ptr %i.ako, align 1, !tbaa !38
  %gep.i244.1 = getelementptr i8, ptr %invariant.gep, i64 1
  store i8 %i.akp, ptr %gep.i244.1, align 1, !tbaa !38
  %i.akq = lshr i32 %.0.i182, 2
  %.sroa.0.2..sroa.0.2..sroa.0.2. = load i8, ptr %.sroa.0.2..sroa_idx, align 2, !tbaa !38 ; 6 uses
  store i8 %.sroa.0.2..sroa.0.2..sroa.0.2., ptr %i.ar, align 1, !tbaa !38
  %i.akr = and i32 %i.akq, 1
  %i.aks = zext nneg i32 %i.akr to i64
  %i.akt = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aks
  %i.aku = load i8, ptr %i.akt, align 1, !tbaa !38
  %gep.i244.2 = getelementptr i8, ptr %invariant.gep, i64 2
  store i8 %i.aku, ptr %gep.i244.2, align 1, !tbaa !38
  %i.akv = lshr i32 %.0.i182, 3
  store i8 %.sroa.0.2..sroa.0.2..sroa.0.2., ptr %i.ar, align 1, !tbaa !38
  %i.akw = and i32 %i.akv, 1
  %i.akx = zext nneg i32 %i.akw to i64
  %i.aky = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.akx
  %i.akz = load i8, ptr %i.aky, align 1, !tbaa !38
  %gep.i244.3 = getelementptr i8, ptr %invariant.gep, i64 3
  store i8 %i.akz, ptr %gep.i244.3, align 1, !tbaa !38
  %i.ala = lshr i32 %.0.i182, 4
  store i8 %.sroa.0.0..sroa.0.0..sroa.0.0., ptr %i.a, align 1, !tbaa !38
  %invariant.gep.i242.1 = getelementptr i8, ptr %invariant.gep, i64 %i.y ; 4 uses
  store i8 %.sroa.0.1..sroa.0.1..sroa.0.1., ptr %i.ar, align 1, !tbaa !38
  %i.alb = and i32 %i.ala, 1
  %i.alc = zext nneg i32 %i.alb to i64
  %i.ald = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.alc
  %i.ale = load i8, ptr %i.ald, align 1, !tbaa !38
  store i8 %i.ale, ptr %invariant.gep.i242.1, align 1, !tbaa !38
  %i.alf = lshr i32 %.0.i182, 5
  store i8 %.sroa.0.1..sroa.0.1..sroa.0.1., ptr %i.ar, align 1, !tbaa !38
  %i.alg = and i32 %i.alf, 1
  %i.alh = zext nneg i32 %i.alg to i64
  %i.ali = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.alh
  %i.alj = load i8, ptr %i.ali, align 1, !tbaa !38
  %gep.i244.1.1 = getelementptr i8, ptr %invariant.gep.i242.1, i64 1
  store i8 %i.alj, ptr %gep.i244.1.1, align 1, !tbaa !38
  %i.alk = lshr i32 %.0.i182, 6
  store i8 %.sroa.0.2..sroa.0.2..sroa.0.2., ptr %i.ar, align 1, !tbaa !38
  %i.all = and i32 %i.alk, 1
  %i.alm = zext nneg i32 %i.all to i64
  %i.aln = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.alm
  %i.alo = load i8, ptr %i.aln, align 1, !tbaa !38
  %gep.i244.2.1 = getelementptr i8, ptr %invariant.gep.i242.1, i64 2
  store i8 %i.alo, ptr %gep.i244.2.1, align 1, !tbaa !38
  %i.alp = lshr i32 %.0.i182, 7
  store i8 %.sroa.0.2..sroa.0.2..sroa.0.2., ptr %i.ar, align 1, !tbaa !38
  %i.alq = and i32 %i.alp, 1
  %i.alr = zext nneg i32 %i.alq to i64
  %i.als = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.alr
  %i.alt = load i8, ptr %i.als, align 1, !tbaa !38
  %gep.i244.3.1 = getelementptr i8, ptr %invariant.gep.i242.1, i64 3
  store i8 %i.alt, ptr %gep.i244.3.1, align 1, !tbaa !38
  %i.alu = lshr i32 %.0.i182, 8
  %.sroa.0.3..sroa.0.3..sroa.0.3. = load i8, ptr %.sroa.0.3..sroa_idx, align 1, !tbaa !38 ; 2 uses
  store i8 %.sroa.0.3..sroa.0.3..sroa.0.3., ptr %i.a, align 1, !tbaa !38
  %invariant.gep.i242.2 = getelementptr i8, ptr %invariant.gep, i64 %i.ba ; 4 uses
  store i8 %.sroa.0.1..sroa.0.1..sroa.0.1., ptr %i.ar, align 1, !tbaa !38
  %i.alv = and i32 %i.alu, 1
  %i.alw = zext nneg i32 %i.alv to i64
  %i.alx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.alw
  %i.aly = load i8, ptr %i.alx, align 1, !tbaa !38
  store i8 %i.aly, ptr %invariant.gep.i242.2, align 1, !tbaa !38
  %i.alz = lshr i32 %.0.i182, 9
  store i8 %.sroa.0.1..sroa.0.1..sroa.0.1., ptr %i.ar, align 1, !tbaa !38
  %i.ama = and i32 %i.alz, 1
  %i.amb = zext nneg i32 %i.ama to i64
  %i.amc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.amb
  %i.amd = load i8, ptr %i.amc, align 1, !tbaa !38
  %gep.i244.1.2 = getelementptr i8, ptr %invariant.gep.i242.2, i64 1
  store i8 %i.amd, ptr %gep.i244.1.2, align 1, !tbaa !38
  %i.ame = lshr i32 %.0.i182, 10
  store i8 %.sroa.0.2..sroa.0.2..sroa.0.2., ptr %i.ar, align 1, !tbaa !38
  %i.amf = and i32 %i.ame, 1
  %i.amg = zext nneg i32 %i.amf to i64
  %i.amh = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.amg
  %i.ami = load i8, ptr %i.amh, align 1, !tbaa !38
  %gep.i244.2.2 = getelementptr i8, ptr %invariant.gep.i242.2, i64 2
  store i8 %i.ami, ptr %gep.i244.2.2, align 1, !tbaa !38
  %i.amj = lshr i32 %.0.i182, 11
  store i8 %.sroa.0.2..sroa.0.2..sroa.0.2., ptr %i.ar, align 1, !tbaa !38
  %i.amk = and i32 %i.amj, 1
  %i.aml = zext nneg i32 %i.amk to i64
  %i.amm = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aml
  %i.amn = load i8, ptr %i.amm, align 1, !tbaa !38
  %gep.i244.3.2 = getelementptr i8, ptr %invariant.gep.i242.2, i64 3
  store i8 %i.amn, ptr %gep.i244.3.2, align 1, !tbaa !38
  %i.amo = lshr i32 %.0.i182, 12
  store i8 %.sroa.0.3..sroa.0.3..sroa.0.3., ptr %i.a, align 1, !tbaa !38
  %invariant.gep.i242.3 = getelementptr i8, ptr %invariant.gep, i64 %i.bb ; 4 uses
  %.sroa.0.1..sroa.0.1..sroa.0.1.490 = load i8, ptr %.sroa.0.1..sroa_idx805, align 1, !tbaa !38 ; 2 uses
  store i8 %.sroa.0.1..sroa.0.1..sroa.0.1.490, ptr %i.ar, align 1, !tbaa !38
  %i.amp = and i32 %i.amo, 1
  %i.amq = zext nneg i32 %i.amp to i64
  %i.amr = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.amq
  %i.ams = load i8, ptr %i.amr, align 1, !tbaa !38
  store i8 %i.ams, ptr %invariant.gep.i242.3, align 1, !tbaa !38
  %i.amt = lshr i32 %.0.i182, 13
  store i8 %.sroa.0.1..sroa.0.1..sroa.0.1.490, ptr %i.ar, align 1, !tbaa !38
  %i.amu = and i32 %i.amt, 1
  %i.amv = zext nneg i32 %i.amu to i64
  %i.amw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.amv
  %i.amx = load i8, ptr %i.amw, align 1, !tbaa !38
  %gep.i244.1.3 = getelementptr i8, ptr %invariant.gep.i242.3, i64 1
  store i8 %i.amx, ptr %gep.i244.1.3, align 1, !tbaa !38
  %i.amy = lshr i32 %.0.i182, 14
  %.sroa.0.2..sroa.0.2..sroa.0.2.526 = load i8, ptr %.sroa.0.2..sroa_idx808, align 2, !tbaa !38 ; 2 uses
  store i8 %.sroa.0.2..sroa.0.2..sroa.0.2.526, ptr %i.ar, align 1, !tbaa !38
  %i.amz = and i32 %i.amy, 1
  %i.ana = zext nneg i32 %i.amz to i64
  %i.anb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ana
  %i.anc = load i8, ptr %i.anb, align 1, !tbaa !38
  %gep.i244.2.3 = getelementptr i8, ptr %invariant.gep.i242.3, i64 2
  store i8 %i.anc, ptr %gep.i244.2.3, align 1, !tbaa !38
  %i.and = lshr i32 %.0.i182, 15
  store i8 %.sroa.0.2..sroa.0.2..sroa.0.2.526, ptr %i.ar, align 1, !tbaa !38
  %i.ane = zext nneg i32 %i.and to i64
  %i.anf = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ane
  %i.ang = load i8, ptr %i.anf, align 1, !tbaa !38
  %gep.i244.3.3 = getelementptr i8, ptr %invariant.gep.i242.3, i64 3
  store i8 %i.ang, ptr %gep.i244.3.3, align 1, !tbaa !38
  %i.anh = sub i64 %i.ad, %.pre-phi664.a
  %i.ani = tail call i64 @llvm.smin.i64(i64 %i.anh, i64 4)
  %i.anj = and i64 %i.ani, 4294967295             ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0, ptr align 1 %.sroa.0.17, i64 %i.anj, i1 false)
  %i.ank = getelementptr inbounds nuw i8, ptr %.sroa.0.17, i64 %i.anj ; 3 uses
  %gep387.1 = getelementptr i8, ptr %invariant.gep, i64 4 ; 4 uses
  %i.anl = ptrtoint ptr %i.ank to i64
  %i.anm = sub i64 %i.ad, %i.anl
  %i.ann = icmp slt i64 %i.anm, 2
  br i1 %i.ann, label %bytestream2_get_le16.exit.1, label %bb.am

bb.am:                                            ; preds = %bytestream2_get_le16.exit
  %i.ano = getelementptr inbounds nuw i8, ptr %i.ank, i64 2
  %i.anp = load i16, ptr %i.ank, align 1, !tbaa !38
  %i.anq = zext i16 %i.anp to i32
  br label %bytestream2_get_le16.exit.1

bytestream2_get_le16.exit.1:                      ; preds = %bb.am, %bytestream2_get_le16.exit
  %.sroa.0.17.1 = phi ptr [ %i.ano, %bb.am ], [ %i.ac, %bytestream2_get_le16.exit ]
  %.0.i182.1 = phi i32 [ %i.anq, %bb.am ], [ 0, %bytestream2_get_le16.exit ] ; 16 uses
  %.sroa.0.0..sroa.0.0..sroa.0.0.483 = load i8, ptr %.sroa.0, align 4, !tbaa !38 ; 2 uses
  store i8 %.sroa.0.0..sroa.0.0..sroa.0.0.483, ptr %i.a, align 1, !tbaa !38
  %.sroa.0.1..sroa.0.1..sroa.0.1.500 = load i8, ptr %.sroa.0.1..sroa_idx806, align 1, !tbaa !38 ; 6 uses
  store i8 %.sroa.0.1..sroa.0.1..sroa.0.1.500, ptr %i.ar, align 1, !tbaa !38
  %i.anr = and i32 %.0.i182.1, 1
  %i.ans = zext nneg i32 %i.anr to i64
  %i.ant = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ans
  %i.anu = load i8, ptr %i.ant, align 1, !tbaa !38
  store i8 %i.anu, ptr %gep387.1, align 1, !tbaa !38
  %i.anv = lshr i32 %.0.i182.1, 1
  store i8 %.sroa.0.1..sroa.0.1..sroa.0.1.500, ptr %i.ar, align 1, !tbaa !38
  %i.anw = and i32 %i.anv, 1
  %i.anx = zext nneg i32 %i.anw to i64
  %i.any = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.anx
  %i.anz = load i8, ptr %i.any, align 1, !tbaa !38
  %gep.i244.1.1455 = getelementptr i8, ptr %invariant.gep, i64 5
  store i8 %i.anz, ptr %gep.i244.1.1455, align 1, !tbaa !38
  %i.aoa = lshr i32 %.0.i182.1, 2
  %.sroa.0.2..sroa.0.2..sroa.0.2.530 = load i8, ptr %.sroa.0.2..sroa_idx809, align 2, !tbaa !38 ; 6 uses
  store i8 %.sroa.0.2..sroa.0.2..sroa.0.2.530, ptr %i.ar, align 1, !tbaa !38
  %i.aob = and i32 %i.aoa, 1
  %i.aoc = zext nneg i32 %i.aob to i64
  %i.aod = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aoc
  %i.aoe = load i8, ptr %i.aod, align 1, !tbaa !38
  %gep.i244.2.1456 = getelementptr i8, ptr %invariant.gep, i64 6
  store i8 %i.aoe, ptr %gep.i244.2.1456, align 1, !tbaa !38
  %i.aof = lshr i32 %.0.i182.1, 3
  store i8 %.sroa.0.2..sroa.0.2..sroa.0.2.530, ptr %i.ar, align 1, !tbaa !38
  %i.aog = and i32 %i.aof, 1
  %i.aoh = zext nneg i32 %i.aog to i64
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aoh
  %i.aoj = load i8, ptr %i.aoi, align 1, !tbaa !38
  %gep.i244.3.1457 = getelementptr i8, ptr %invariant.gep, i64 7
  store i8 %i.aoj, ptr %gep.i244.3.1457, align 1, !tbaa !38
  %i.aok = lshr i32 %.0.i182.1, 4
  store i8 %.sroa.0.0..sroa.0.0..sroa.0.0.483, ptr %i.a, align 1, !tbaa !38
  %invariant.gep.i242.1.1 = getelementptr i8, ptr %gep387.1, i64 %i.y ; 4 uses
  store i8 %.sroa.0.1..sroa.0.1..sroa.0.1.500, ptr %i.ar, align 1, !tbaa !38
  %i.aol = and i32 %i.aok, 1
  %i.aom = zext nneg i32 %i.aol to i64
  %i.aon = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aom
  %i.aoo = load i8, ptr %i.aon, align 1, !tbaa !38
  store i8 %i.aoo, ptr %invariant.gep.i242.1.1, align 1, !tbaa !38
  %i.aop = lshr i32 %.0.i182.1, 5
  store i8 %.sroa.0.1..sroa.0.1..sroa.0.1.500, ptr %i.ar, align 1, !tbaa !38
  %i.aoq = and i32 %i.aop, 1
  %i.aor = zext nneg i32 %i.aoq to i64
  %i.aos = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aor
  %i.aot = load i8, ptr %i.aos, align 1, !tbaa !38
  %gep.i244.1.1.1 = getelementptr i8, ptr %invariant.gep.i242.1.1, i64 1
  store i8 %i.aot, ptr %gep.i244.1.1.1, align 1, !tbaa !38
  %i.aou = lshr i32 %.0.i182.1, 6
  store i8 %.sroa.0.2..sroa.0.2..sroa.0.2.530, ptr %i.ar, align 1, !tbaa !38
  %i.aov = and i32 %i.aou, 1
  %i.aow = zext nneg i32 %i.aov to i64
  %i.aox = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aow
  %i.aoy = load i8, ptr %i.aox, align 1, !tbaa !38
  %gep.i244.2.1.1 = getelementptr i8, ptr %invariant.gep.i242.1.1, i64 2
  store i8 %i.aoy, ptr %gep.i244.2.1.1, align 1, !tbaa !38
  %i.aoz = lshr i32 %.0.i182.1, 7
  store i8 %.sroa.0.2..sroa.0.2..sroa.0.2.530, ptr %i.ar, align 1, !tbaa !38
  %i.apa = and i32 %i.aoz, 1
  %i.apb = zext nneg i32 %i.apa to i64
  %i.apc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.apb
  %i.apd = load i8, ptr %i.apc, align 1, !tbaa !38
  %gep.i244.3.1.1 = getelementptr i8, ptr %invariant.gep.i242.1.1, i64 3
  store i8 %i.apd, ptr %gep.i244.3.1.1, align 1, !tbaa !38
  %i.ape = lshr i32 %.0.i182.1, 8
  %.sroa.0.3..sroa.0.3..sroa.0.3.548 = load i8, ptr %.sroa.0.3..sroa_idx811, align 1, !tbaa !38 ; 2 uses
  store i8 %.sroa.0.3..sroa.0.3..sroa.0.3.548, ptr %i.a, align 1, !tbaa !38
  %invariant.gep.i242.2.1 = getelementptr i8, ptr %gep387.1, i64 %i.ba ; 4 uses
  store i8 %.sroa.0.1..sroa.0.1..sroa.0.1.500, ptr %i.ar, align 1, !tbaa !38
  %i.apf = and i32 %i.ape, 1
  %i.apg = zext nneg i32 %i.apf to i64
  %i.aph = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.apg
  %i.api = load i8, ptr %i.aph, align 1, !tbaa !38
  store i8 %i.api, ptr %invariant.gep.i242.2.1, align 1, !tbaa !38
  %i.apj = lshr i32 %.0.i182.1, 9
  store i8 %.sroa.0.1..sroa.0.1..sroa.0.1.500, ptr %i.ar, align 1, !tbaa !38
  %i.apk = and i32 %i.apj, 1
  %i.apl = zext nneg i32 %i.apk to i64
  %i.apm = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.apl
  %i.apn = load i8, ptr %i.apm, align 1, !tbaa !38
  %gep.i244.1.2.1 = getelementptr i8, ptr %invariant.gep.i242.2.1, i64 1
  store i8 %i.apn, ptr %gep.i244.1.2.1, align 1, !tbaa !38
  %i.apo = lshr i32 %.0.i182.1, 10
  store i8 %.sroa.0.2..sroa.0.2..sroa.0.2.530, ptr %i.ar, align 1, !tbaa !38
  %i.app = and i32 %i.apo, 1
  %i.apq = zext nneg i32 %i.app to i64
  %i.apr = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.apq
  %i.aps = load i8, ptr %i.apr, align 1, !tbaa !38
  %gep.i244.2.2.1 = getelementptr i8, ptr %invariant.gep.i242.2.1, i64 2
  store i8 %i.aps, ptr %gep.i244.2.2.1, align 1, !tbaa !38
  %i.apt = lshr i32 %.0.i182.1, 11
  store i8 %.sroa.0.2..sroa.0.2..sroa.0.2.530, ptr %i.ar, align 1, !tbaa !38
  %i.apu = and i32 %i.apt, 1
  %i.apv = zext nneg i32 %i.apu to i64
  %i.apw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.apv
  %i.apx = load i8, ptr %i.apw, align 1, !tbaa !38
  %gep.i244.3.2.1 = getelementptr i8, ptr %invariant.gep.i242.2.1, i64 3
  store i8 %i.apx, ptr %gep.i244.3.2.1, align 1, !tbaa !38
  %i.apy = lshr i32 %.0.i182.1, 12
  store i8 %.sroa.0.3..sroa.0.3..sroa.0.3.548, ptr %i.a, align 1, !tbaa !38
  %invariant.gep.i242.3.1 = getelementptr i8, ptr %gep387.1, i64 %i.bb ; 4 uses
  %.sroa.0.1..sroa.0.1..sroa.0.1.506 = load i8, ptr %.sroa.0.1..sroa_idx807, align 1, !tbaa !38 ; 2 uses
  store i8 %.sroa.0.1..sroa.0.1..sroa.0.1.506, ptr %i.ar, align 1, !tbaa !38
  %i.apz = and i32 %i.apy, 1
  %i.aqa = zext nneg i32 %i.apz to i64
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aqa
  %i.aqc = load i8, ptr %i.aqb, align 1, !tbaa !38
  store i8 %i.aqc, ptr %invariant.gep.i242.3.1, align 1, !tbaa !38
  %i.aqd = lshr i32 %.0.i182.1, 13
  store i8 %.sroa.0.1..sroa.0.1..sroa.0.1.506, ptr %i.ar, align 1, !tbaa !38
  %i.aqe = and i32 %i.aqd, 1
  %i.aqf = zext nneg i32 %i.aqe to i64
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aqf
  %i.aqh = load i8, ptr %i.aqg, align 1, !tbaa !38
  %gep.i244.1.3.1 = getelementptr i8, ptr %invariant.gep.i242.3.1, i64 1
  store i8 %i.aqh, ptr %gep.i244.1.3.1, align 1, !tbaa !38
  %i.aqi = lshr i32 %.0.i182.1, 14
  %.sroa.0.2..sroa.0.2..sroa.0.2.542 = load i8, ptr %.sroa.0.2..sroa_idx810, align 2, !tbaa !38 ; 2 uses
  store i8 %.sroa.0.2..sroa.0.2..sroa.0.2.542, ptr %i.ar, align 1, !tbaa !38
  %i.aqj = and i32 %i.aqi, 1
  %i.aqk = zext nneg i32 %i.aqj to i64
  %i.aql = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aqk
  %i.aqm = load i8, ptr %i.aql, align 1, !tbaa !38
  %gep.i244.2.3.1 = getelementptr i8, ptr %invariant.gep.i242.3.1, i64 2
  store i8 %i.aqm, ptr %gep.i244.2.3.1, align 1, !tbaa !38
  %i.aqn = lshr i32 %.0.i182.1, 15
  store i8 %.sroa.0.2..sroa.0.2..sroa.0.2.542, ptr %i.ar, align 1, !tbaa !38
  br label %.split.us

.split.us:                                        ; preds = %bytestream2_get_le32.exit.us.1, %bytestream2_get_le16.exit184.us.1, %bytestream2_get_le16.exit.1
  %.sink734 = phi i32 [ %i.akd, %bytestream2_get_le32.exit.us.1 ], [ %i.adv, %bytestream2_get_le16.exit184.us.1 ], [ %i.aqn, %bytestream2_get_le16.exit.1 ]
  %invariant.gep55.i231.us.3.1.sink = phi ptr [ %invariant.gep55.i231.us.3.1, %bytestream2_get_le32.exit.us.1 ], [ %invariant.gep55.i218.us.3.1, %bytestream2_get_le16.exit184.us.1 ], [ %invariant.gep.i242.3.1, %bytestream2_get_le16.exit.1 ]
  %.us-phi = phi ptr [ %.sroa.0.21.us.1, %bytestream2_get_le32.exit.us.1 ], [ %.sroa.0.18.us.1, %bytestream2_get_le16.exit184.us.1 ], [ %.sroa.0.17.1, %bytestream2_get_le16.exit.1 ] ; 2 uses
  %i.aqo = zext nneg i32 %.sink734 to i64
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aqo
  %i.aqq = load i8, ptr %i.aqp, align 1, !tbaa !38
  %gep56.i234.us.3.3.1 = getelementptr i8, ptr %invariant.gep55.i231.us.3.1.sink, i64 3
  store i8 %i.aqq, ptr %gep56.i234.us.3.3.1, align 1, !tbaa !38
  br i1 %i.wq, label %.preheader342, label %copy_block.exit.thread, !llvm.loop !48

bytestream2_get_byte.exit179.thread:              ; preds = %bb.i, %bytestream2_get_byte.exit179
  %i.aqr = phi i32 [ %i.bz, %bytestream2_get_byte.exit179 ], [ 0, %bb.i ]
  %i.aqs = trunc nuw nsw i64 %indvars.iv475 to i32
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.3, i32 noundef %i.aqr, i32 noundef %i.bs, i32 noundef %i.aqs) #7
  br label %.thread329

.thread329:                                       ; preds = %.thread, %bb.t, %bytestream2_get_byte.exit179.thread, %copy_block.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.av

copy_block.exit.thread:                           ; preds = %.split.us, %.loopexit339.1, %bytestream2_get_le16.exit188.thread, %.preheader346.preheader, %bytestream2_get_byte.exit.7, %.loopexit43.i, %bytestream2_get_le16.exit188, %bytestream2_get_byte.exit179
  %.sroa.0.11 = phi ptr [ %i.dy, %bytestream2_get_le16.exit188 ], [ %.sroa.0.14.7, %bytestream2_get_byte.exit.7 ], [ %.sroa.0.19.1, %.loopexit339.1 ], [ %.sroa.0.20689694697, %.loopexit43.i ], [ %.sroa.0.2, %bytestream2_get_byte.exit179 ], [ %i.ac, %bytestream2_get_le16.exit188.thread ], [ %i.du, %.preheader346.preheader ], [ %.us-phi, %.split.us ] ; 3 uses
  %i.aqt = lshr i32 %.2148, 4                     ; 2 uses
  %i.aqu = getelementptr inbounds nuw i8, ptr %.0156404, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %indvars.iv.next473 = add nuw nsw i64 %indvars.iv472, 8
  %i.aqv = icmp samesign ult i64 %indvars.iv472, 312
  %indvars.iv.next470 = add nuw nsw i64 %indvars.iv469, 8
  br i1 %i.aqv, label %bb.h, label %bb.an, !llvm.loop !49

bb.an:                                            ; preds = %copy_block.exit.thread
  %indvars.iv.next476 = add nuw nsw i64 %indvars.iv475, 8
  %i.aqw = icmp samesign ult i64 %indvars.iv475, 184
  br i1 %i.aqw, label %bb.g, label %bb.ao, !llvm.loop !50

bb.ao:                                            ; preds = %bb.an
  %i.aqx = and i32 %.0.i180310, 1
  %.not175 = icmp eq i32 %i.aqx, 0
  br i1 %.not175, label %bb.as, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.aqz = load ptr, ptr %i.aqy, align 8, !tbaa !45
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bytestream2_get_be24.exit
  %indvars.iv478 = phi i64 [ 0, %bb.ap ], [ %indvars.iv.next479, %bytestream2_get_be24.exit ] ; 2 uses
  %.sroa.0.13410 = phi ptr [ %.sroa.0.11, %bb.ap ], [ %.sroa.0.22, %bytestream2_get_be24.exit ] ; 5 uses
  %i.ara = ptrtoint ptr %.sroa.0.13410 to i64
  %i.arb = sub i64 %i.ad, %i.ara
  %i.arc = icmp slt i64 %i.arb, 3
  br i1 %i.arc, label %bytestream2_get_be24.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ard = getelementptr inbounds nuw i8, ptr %.sroa.0.13410, i64 3
  %i.are = load i8, ptr %.sroa.0.13410, align 1, !tbaa !38
  %i.arf = zext i8 %i.are to i32
  %i.arg = shl nuw nsw i32 %i.arf, 16
  %i.arh = getelementptr inbounds nuw i8, ptr %.sroa.0.13410, i64 1
  %i.ari = load i8, ptr %i.arh, align 1, !tbaa !38
  %i.arj = zext i8 %i.ari to i32
  %i.ark = shl nuw nsw i32 %i.arj, 8
  %i.arl = getelementptr inbounds nuw i8, ptr %.sroa.0.13410, i64 2
  %i.arm = load i8, ptr %i.arl, align 1, !tbaa !38
  %i.arn = zext i8 %i.arm to i32
  %i.aro = or disjoint i32 %i.arg, %i.ark
  %i.arp = or disjoint i32 %i.aro, %i.arn
  %i.arq = or disjoint i32 %i.arp, -16777216
  br label %bytestream2_get_be24.exit

bytestream2_get_be24.exit:                        ; preds = %bb.aq, %bb.ar
  %.sroa.0.22 = phi ptr [ %i.ard, %bb.ar ], [ %i.ac, %bb.aq ]
  %.0.i190 = phi i32 [ %i.arq, %bb.ar ], [ -16777216, %bb.aq ]
  %i.arr = getelementptr inbounds nuw [4 x i8], ptr %i.aqz, i64 %indvars.iv478
  store i32 %.0.i190, ptr %i.arr, align 4, !tbaa !37
  %indvars.iv.next479 = add nuw nsw i64 %indvars.iv478, 1 ; 2 uses
  %exitcond481.not = icmp eq i64 %indvars.iv.next479, 256
  br i1 %exitcond481.not, label %.loopexit, label %bb.aq, !llvm.loop !51

bb.as:                                            ; preds = %bb.ao
  %i.ars = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.art = load ptr, ptr %i.ars, align 8, !tbaa !45 ; 2 uses
  %.not176 = icmp eq ptr %i.art, null
  br i1 %.not176, label %.loopexit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.aru = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.arv = load ptr, ptr %i.aru, align 8, !tbaa !45
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %i.arv, ptr noundef nonnull align 1 dereferenceable(1024) %i.art, i64 1024, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %bytestream2_get_be24.exit, %bb.as, %bb.at
  %i.arw = tail call i32 @av_frame_ref(ptr noundef %1, ptr noundef nonnull %i.l) #7 ; 2 uses
  %i.arx = icmp slt i32 %i.arw, 0
  br i1 %i.arx, label %bb.av, label %bb.au

bb.au:                                            ; preds = %.loopexit
  store i32 1, ptr %2, align 4, !tbaa !37
  br label %bb.av

bb.av:                                            ; preds = %.thread329, %.loopexit, %bb.b, %bb.a, %bb.au
  %.9 = phi i32 [ %i.e, %bb.au ], [ %i.q, %bb.a ], [ -1094995529, %.thread329 ], [ %i.u, %bb.b ], [ %i.arw, %.loopexit ]
  ret i32 %.9
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @decode_end(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  tail call void @av_frame_free(ptr noundef %i.b) #7
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @av_frame_free(ptr noundef nonnull %i.c) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @av_frame_alloc() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i32 @ff_set_dimensions(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ff_reget_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @avpriv_request_sample(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @av_frame_ref(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

declare void @av_frame_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !12, i64 32}
!10 = !{!"AVCodecContext", !11, i64 0, !6, i64 8, !6, i64 12, !13, i64 16, !6, i64 24, !6, i64 28, !12, i64 32, !14, i64 40, !12, i64 48, !15, i64 56, !6, i64 64, !6, i64 68, !16, i64 72, !6, i64 80, !17, i64 84, !17, i64 92, !17, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !17, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !12, i64 184, !12, i64 192, !6, i64 200, !18, i64 204, !18, i64 208, !18, i64 212, !18, i64 216, !18, i64 220, !18, i64 224, !18, i64 228, !18, i64 232, !18, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !19, i64 288, !19, i64 296, !19, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !20, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !12, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !18, i64 428, !18, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !21, i64 456, !15, i64 464, !15, i64 472, !18, i64 480, !18, i64 484, !6, i64 488, !6, i64 492, !16, i64 496, !16, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !22, i64 536, !12, i64 544, !23, i64 552, !23, i64 560, !6, i64 568, !6, i64 572, !7, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !12, i64 672, !12, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !24, i64 728, !16, i64 736, !6, i64 744, !6, i64 748, !16, i64 752, !16, i64 760, !16, i64 768, !25, i64 776, !6, i64 784, !6, i64 788, !15, i64 792, !6, i64 800, !6, i64 804, !15, i64 808, !12, i64 816, !15, i64 824, !26, i64 832, !6, i64 840, !27, i64 848, !6, i64 856, !6, i64 860}
!11 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS7AVCodec", !12, i64 0}
!14 = !{!"p1 _ZTS15AVCodecInternal", !12, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"p1 omnipotent char", !12, i64 0}
!17 = !{!"AVRational", !6, i64 0, !6, i64 4}
!18 = !{!"float", !7, i64 0}
!19 = !{!"p1 short", !12, i64 0}
!20 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!21 = !{!"p1 _ZTS10RcOverride", !12, i64 0}
!22 = !{!"p1 _ZTS9AVHWAccel", !12, i64 0}
!23 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!24 = !{!"p1 _ZTS17AVCodecDescriptor", !12, i64 0}
!25 = !{!"p1 _ZTS16AVPacketSideData", !12, i64 0}
!26 = !{!"p1 int", !12, i64 0}
!27 = !{!"p2 _ZTS15AVFrameSideData", !28, i64 0}
!28 = !{!"any p2 pointer", !12, i64 0}
!29 = !{!10, !6, i64 136}
!30 = !{!31, !31, i64 0}
!31 = !{!"p1 _ZTS7AVFrame", !12, i64 0}
!32 = !{!33, !16, i64 24}
!33 = !{!"AVPacket", !23, i64 0, !15, i64 8, !15, i64 16, !16, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !25, i64 48, !6, i64 56, !15, i64 64, !15, i64 72, !12, i64 80, !23, i64 88, !17, i64 96}
!34 = !{!33, !6, i64 32}
!35 = !{!36, !6, i64 16}
!36 = !{!"C93DecoderContext", !7, i64 0, !6, i64 16}
!37 = !{!6, !6, i64 0}
!38 = !{!7, !7, i64 0}
!39 = !{!40, !6, i64 120}
!40 = !{!"AVFrame", !7, i64 0, !7, i64 64, !41, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !17, i64 124, !15, i64 136, !15, i64 144, !17, i64 152, !6, i64 160, !12, i64 168, !6, i64 176, !6, i64 180, !7, i64 184, !42, i64 248, !6, i64 256, !27, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !15, i64 304, !43, i64 312, !6, i64 320, !23, i64 328, !23, i64 336, !15, i64 344, !15, i64 352, !15, i64 360, !15, i64 368, !12, i64 376, !20, i64 384, !15, i64 408, !6, i64 416}
!41 = !{!"p2 omnipotent char", !28, i64 0}
!42 = !{!"p2 _ZTS11AVBufferRef", !28, i64 0}
!43 = !{!"p1 _ZTS12AVDictionary", !12, i64 0}
!44 = !{!40, !6, i64 276}
!45 = !{!16, !16, i64 0}
!46 = distinct !{!46, !47}
!47 = !{!"llvm.loop.mustprogress"}
!48 = distinct !{!48, !47}
!49 = distinct !{!49, !47}
!50 = distinct !{!50, !47}
!51 = distinct !{!51, !47}
end_hunk_1
