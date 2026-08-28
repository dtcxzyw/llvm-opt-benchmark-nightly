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
  %i.ad = ptrtoint ptr %i.ac to i64               ; 35 uses
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
  %i.ay = shl nsw i64 %i.y, 1                     ; 2 uses
  %i.az = mul nsw i64 %i.y, 3                     ; 2 uses
  %i.ba = shl nsw i64 %i.y, 1                     ; 2 uses
  %i.bb = mul nsw i64 %i.y, 3                     ; 2 uses
  %i.bc = shl nsw i64 %i.y, 1                     ; 2 uses
  %i.bd = mul nsw i64 %i.y, 3                     ; 2 uses
  %.pre651 = shl nsw i64 %i.y, 1
  %.pre657 = mul nsw i64 %i.y, 3
  %i.be = shl nsw i64 %i.y, 1                     ; 2 uses
  %i.bf = mul nsw i64 %i.y, 3                     ; 2 uses
  %.pre633.a = shl nsw i64 %i.y, 1
  %.pre639 = mul nsw i64 %i.y, 3
  %i.bg = shl nsw i64 %i.y, 1                     ; 2 uses
  %i.bh = mul nsw i64 %i.y, 3                     ; 2 uses
  %i.bi = shl nsw i64 %i.y, 1                     ; 2 uses
  %i.bj = mul nsw i64 %i.y, 3                     ; 2 uses
  %i.bk = shl nsw i64 %i.y, 2                     ; 2 uses
  %i.bl = mul nsw i64 %i.y, 5                     ; 2 uses
  %i.bm = mul nsw i64 %i.y, 6                     ; 2 uses
  %i.bn = mul nsw i64 %i.y, 7                     ; 2 uses
  %.pre591.a = shl nsw i64 %i.y, 1
  %.pre597 = mul nsw i64 %i.y, 3
  %.pre603 = shl nsw i64 %i.y, 2
  %.pre609.a = mul nsw i64 %i.y, 5
  %.pre615 = mul nsw i64 %i.y, 6
  %.pre621 = mul nsw i64 %i.y, 7
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
  %i.bo = shl nsw i64 %i.y, 1
  %i.bp = mul nsw i64 %i.y, 3
  %i.bq = shl nsw i64 %i.y, 2
  %i.br = mul nsw i64 %i.y, 5
  %i.bs = mul nsw i64 %i.y, 6
  %i.bt = mul nsw i64 %i.y, 7
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.an
  %indvars.iv475 = phi i64 [ 0, %bb.f ], [ %indvars.iv.next476, %bb.an ] ; 5 uses
  %.0146409 = phi i32 [ 0, %bb.f ], [ %i.arg, %bb.an ]
  %.sroa.0.0407 = phi ptr [ %.sroa.0.16308, %bb.f ], [ %.sroa.0.11, %bb.an ]
  %i.bu = load ptr, ptr %i.l, align 8, !tbaa !45
  %i.bv = mul nsw i64 %indvars.iv475, %i.y
  %i.bw = getelementptr inbounds i8, ptr %i.bu, i64 %i.bv
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %copy_block.exit.thread
  %indvars.iv472 = phi i64 [ 0, %bb.g ], [ %indvars.iv.next473, %copy_block.exit.thread ] ; 4 uses
  %indvars.iv469 = phi i64 [ 4, %bb.g ], [ %indvars.iv.next470, %copy_block.exit.thread ] ; 2 uses
  %.1147406 = phi i32 [ %.0146409, %bb.g ], [ %i.arg, %copy_block.exit.thread ] ; 2 uses
  %.0156404 = phi ptr [ %i.bw, %bb.g ], [ %i.arh, %copy_block.exit.thread ] ; 35 uses
  %.sroa.0.1403 = phi ptr [ %.sroa.0.0407, %bb.g ], [ %.sroa.0.11, %copy_block.exit.thread ] ; 4 uses
  %i.bx = load ptr, ptr %i.p, align 8, !tbaa !45  ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %.not177 = icmp eq i32 %.1147406, 0
  %i.by = trunc nuw nsw i64 %indvars.iv472 to i32 ; 3 uses
  br i1 %.not177, label %bb.i, label %bytestream2_get_byte.exit179

bb.i:                                             ; preds = %bb.h
  %i.bz = ptrtoint ptr %.sroa.0.1403 to i64
  %i.ca = sub i64 %i.ad, %i.bz
  %i.cb = icmp slt i64 %i.ca, 1
  br i1 %i.cb, label %bytestream2_get_byte.exit179.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.1403, i64 1
  %i.cd = load i8, ptr %.sroa.0.1403, align 1, !tbaa !38
  %i.ce = zext i8 %i.cd to i32
  br label %bytestream2_get_byte.exit179

bytestream2_get_byte.exit179:                     ; preds = %bb.j, %bb.h
  %.sroa.0.2 = phi ptr [ %.sroa.0.1403, %bb.h ], [ %i.cc, %bb.j ] ; 12 uses
  %.2148 = phi i32 [ %.1147406, %bb.h ], [ %i.ce, %bb.j ] ; 2 uses
  %i.cf = and i32 %.2148, 15                      ; 4 uses
  switch i32 %i.cf, label %bytestream2_get_byte.exit179.thread [
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
  %i.cg = ptrtoint ptr %.sroa.0.2 to i64
  %i.ch = sub i64 %i.ad, %i.cg
  %i.ci = tail call i64 @llvm.smin.i64(i64 %i.ch, i64 8)
  %i.cj = and i64 %i.ci, 4294967295               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0156404, ptr align 1 %.sroa.0.2, i64 %i.cj, i1 false)
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 %i.cj ; 3 uses
  %i.cl = getelementptr inbounds i8, ptr %.0156404, i64 %i.y
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = sub i64 %i.ad, %i.cm
  %i.co = tail call i64 @llvm.smin.i64(i64 %i.cn, i64 8)
  %i.cp = and i64 %i.co, 4294967295               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cl, ptr align 1 %i.ck, i64 %i.cp, i1 false)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cp ; 3 uses
  %i.cr = getelementptr inbounds i8, ptr %.0156404, i64 %i.as
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = sub i64 %i.ad, %i.cs
  %i.cu = tail call i64 @llvm.smin.i64(i64 %i.ct, i64 8)
  %i.cv = and i64 %i.cu, 4294967295               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cr, ptr align 1 %i.cq, i64 %i.cv, i1 false)
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cv ; 3 uses
  %i.cx = getelementptr inbounds i8, ptr %.0156404, i64 %i.at
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = sub i64 %i.ad, %i.cy
  %i.da = tail call i64 @llvm.smin.i64(i64 %i.cz, i64 8)
  %i.db = and i64 %i.da, 4294967295               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cx, ptr align 1 %i.cw, i64 %i.db, i1 false)
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.db ; 3 uses
  %i.dd = getelementptr inbounds i8, ptr %.0156404, i64 %i.au
  %i.de = ptrtoint ptr %i.dc to i64
  %i.df = sub i64 %i.ad, %i.de
  %i.dg = tail call i64 @llvm.smin.i64(i64 %i.df, i64 8)
  %i.dh = and i64 %i.dg, 4294967295               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dd, ptr align 1 %i.dc, i64 %i.dh, i1 false)
  %i.di = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.dh ; 3 uses
  %i.dj = getelementptr inbounds i8, ptr %.0156404, i64 %i.av
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = sub i64 %i.ad, %i.dk
  %i.dm = tail call i64 @llvm.smin.i64(i64 %i.dl, i64 8)
  %i.dn = and i64 %i.dm, 4294967295               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dj, ptr align 1 %i.di, i64 %i.dn, i1 false)
  %i.do = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dn ; 3 uses
  %i.dp = getelementptr inbounds i8, ptr %.0156404, i64 %i.aw
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = sub i64 %i.ad, %i.dq
  %i.ds = tail call i64 @llvm.smin.i64(i64 %i.dr, i64 8)
  %i.dt = and i64 %i.ds, 4294967295               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dp, ptr align 1 %i.do, i64 %i.dt, i1 false)
  %i.du = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dt ; 3 uses
  %i.dv = getelementptr inbounds i8, ptr %.0156404, i64 %i.ax
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = sub i64 %i.ad, %i.dw
  %i.dy = tail call i64 @llvm.smin.i64(i64 %i.dx, i64 8)
  %i.dz = and i64 %i.dy, 4294967295               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dv, ptr align 1 %i.du, i64 %i.dz, i1 false)
  %i.ea = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dz
  br label %copy_block.exit.thread

bb.k:                                             ; preds = %bytestream2_get_byte.exit179
  %i.eb = ptrtoint ptr %.sroa.0.2 to i64
  %i.ec = sub i64 %i.ad, %i.eb
  %i.ed = icmp slt i64 %i.ec, 2
  br i1 %i.ed, label %bytestream2_get_le16.exit188.thread, label %bytestream2_get_le16.exit188

bytestream2_get_le16.exit188:                     ; preds = %bb.k
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 2 ; 3 uses
  %i.ef = load i16, ptr %.sroa.0.2, align 1, !tbaa !38 ; 4 uses
  %i.eg = urem i16 %i.ef, 320                     ; 4 uses
  %i.eh = udiv i16 %i.ef, 320                     ; 2 uses
  %i.ei = zext nneg i16 %i.eg to i32              ; 2 uses
  %i.ej = add nsw i32 %i.ei, -312
  %.not.i = icmp eq ptr %i.bx, null
  br i1 %.not.i, label %copy_block.exit.thread, label %bb.l

bytestream2_get_le16.exit188.thread:              ; preds = %bb.k
  %.not.i688 = icmp eq ptr %i.bx, null
  br i1 %.not.i688, label %copy_block.exit.thread, label %..loopexit43_crit_edge.i

bb.l:                                             ; preds = %bytestream2_get_le16.exit188
  %i.ek = icmp ugt i16 %i.ef, -6337
  br i1 %i.ek, label %copy_block.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.el = icmp samesign ugt i16 %i.eg, 312
  br i1 %i.el, label %.loopexit43.i.loopexit, label %..loopexit43_crit_edge.i

..loopexit43_crit_edge.i:                         ; preds = %bytestream2_get_le16.exit188.thread, %bb.m
  %i.em = phi i16 [ %i.eh, %bb.m ], [ 0, %bytestream2_get_le16.exit188.thread ]
  %i.en = phi i16 [ %i.eg, %bb.m ], [ 0, %bytestream2_get_le16.exit188.thread ]
  %.sroa.0.20689694698 = phi ptr [ %i.ee, %bb.m ], [ %i.ac, %bytestream2_get_le16.exit188.thread ]
  %.pre52.i = zext nneg i16 %i.em to i64          ; 8 uses
  %.pre = mul nsw i64 %.pre52.i, %i.y
  %.pre587.a = add nuw nsw i64 %.pre52.i, 1
  %.pre589.a = mul nsw i64 %.pre587.a, %i.y
  %.pre593.a = add nuw nsw i64 %.pre52.i, 2
  %.pre595.a = mul nsw i64 %.pre593.a, %i.y
  %.pre599.a = add nuw nsw i64 %.pre52.i, 3
  %.pre601.a = mul nsw i64 %.pre599.a, %i.y
  %.pre605.a = add nuw nsw i64 %.pre52.i, 4
  %.pre607.a = mul nsw i64 %.pre605.a, %i.y
  %.pre611.a = add nuw nsw i64 %.pre52.i, 5
  %.pre613.a = mul nsw i64 %.pre611.a, %i.y
  %.pre617.a = add nuw nsw i64 %.pre52.i, 6
  %.pre619.a = mul nsw i64 %.pre617.a, %i.y
  %.pre623.a = add nuw nsw i64 %.pre52.i, 7
  %.pre625.a = mul nsw i64 %.pre623.a, %i.y
  br label %.loopexit43.i

.loopexit43.i.loopexit:                           ; preds = %bb.m
  %i.eo = sub nuw nsw i32 320, %i.ei              ; 2 uses
  %i.ep = zext nneg i32 %i.ej to i64              ; 8 uses
  %i.eq = zext nneg i32 %i.eo to i64
  %i.er = zext nneg i16 %i.eh to i64              ; 8 uses
  %invariant.gep.i = getelementptr i8, ptr %.0156404, i64 %i.eq ; 8 uses
  %i.es = mul nsw i64 %i.er, %i.y                 ; 2 uses
  %i.et = getelementptr inbounds i8, ptr %i.bx, i64 %i.es
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %invariant.gep.i, ptr nonnull readonly align 1 %i.et, i64 %i.ep, i1 false)
  %gep.i.1 = getelementptr i8, ptr %invariant.gep.i, i64 %i.y
  %i.eu = add nuw nsw i64 %i.er, 1
  %i.ev = mul nsw i64 %i.eu, %i.y                 ; 2 uses
  %i.ew = getelementptr inbounds i8, ptr %i.bx, i64 %i.ev
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %gep.i.1, ptr nonnull readonly align 1 %i.ew, i64 %i.ep, i1 false)
  %gep.i.2 = getelementptr i8, ptr %invariant.gep.i, i64 %i.bi
  %i.ex = add nuw nsw i64 %i.er, 2
  %i.ey = mul nsw i64 %i.ex, %i.y                 ; 2 uses
  %i.ez = getelementptr inbounds i8, ptr %i.bx, i64 %i.ey
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %gep.i.2, ptr nonnull readonly align 1 %i.ez, i64 %i.ep, i1 false)
  %gep.i.3 = getelementptr i8, ptr %invariant.gep.i, i64 %i.bj
  %i.fa = add nuw nsw i64 %i.er, 3
  %i.fb = mul nsw i64 %i.fa, %i.y                 ; 2 uses
  %i.fc = getelementptr inbounds i8, ptr %i.bx, i64 %i.fb
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %gep.i.3, ptr nonnull readonly align 1 %i.fc, i64 %i.ep, i1 false)
  %gep.i.4 = getelementptr i8, ptr %invariant.gep.i, i64 %i.bk
  %i.fd = add nuw nsw i64 %i.er, 4
  %i.fe = mul nsw i64 %i.fd, %i.y                 ; 2 uses
  %i.ff = getelementptr inbounds i8, ptr %i.bx, i64 %i.fe
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %gep.i.4, ptr nonnull readonly align 1 %i.ff, i64 %i.ep, i1 false)
  %gep.i.5 = getelementptr i8, ptr %invariant.gep.i, i64 %i.bl
  %i.fg = add nuw nsw i64 %i.er, 5
  %i.fh = mul nsw i64 %i.fg, %i.y                 ; 2 uses
  %i.fi = getelementptr inbounds i8, ptr %i.bx, i64 %i.fh
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %gep.i.5, ptr nonnull readonly align 1 %i.fi, i64 %i.ep, i1 false)
  %gep.i.6 = getelementptr i8, ptr %invariant.gep.i, i64 %i.bm
  %i.fj = add nuw nsw i64 %i.er, 6
  %i.fk = mul nsw i64 %i.fj, %i.y                 ; 2 uses
  %i.fl = getelementptr inbounds i8, ptr %i.bx, i64 %i.fk
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %gep.i.6, ptr nonnull readonly align 1 %i.fl, i64 %i.ep, i1 false)
  %gep.i.7 = getelementptr i8, ptr %invariant.gep.i, i64 %i.bn
  %i.fm = add nuw nsw i64 %i.er, 7
  %i.fn = mul nsw i64 %i.fm, %i.y                 ; 2 uses
  %i.fo = getelementptr inbounds i8, ptr %i.bx, i64 %i.fn
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %gep.i.7, ptr nonnull readonly align 1 %i.fo, i64 %i.ep, i1 false)
  %i.fp = zext nneg i32 %i.eo to i64
  br label %.loopexit43.i

.loopexit43.i:                                    ; preds = %.loopexit43.i.loopexit, %..loopexit43_crit_edge.i
  %i.fq = phi i16 [ %i.eg, %.loopexit43.i.loopexit ], [ %i.en, %..loopexit43_crit_edge.i ]
  %.sroa.0.20689694697 = phi ptr [ %i.ee, %.loopexit43.i.loopexit ], [ %.sroa.0.20689694698, %..loopexit43_crit_edge.i ]
  %.pre-phi626.a = phi i64 [ %i.fn, %.loopexit43.i.loopexit ], [ %.pre625.a, %..loopexit43_crit_edge.i ]
  %.pre-phi622.a = phi i64 [ %i.bn, %.loopexit43.i.loopexit ], [ %.pre621, %..loopexit43_crit_edge.i ]
  %.pre-phi620.a = phi i64 [ %i.fk, %.loopexit43.i.loopexit ], [ %.pre619.a, %..loopexit43_crit_edge.i ]
  %.pre-phi616.a = phi i64 [ %i.bm, %.loopexit43.i.loopexit ], [ %.pre615, %..loopexit43_crit_edge.i ]
  %.pre-phi614.a = phi i64 [ %i.fh, %.loopexit43.i.loopexit ], [ %.pre613.a, %..loopexit43_crit_edge.i ]
  %.pre-phi610.a = phi i64 [ %i.bl, %.loopexit43.i.loopexit ], [ %.pre609.a, %..loopexit43_crit_edge.i ]
  %.pre-phi608.a = phi i64 [ %i.fe, %.loopexit43.i.loopexit ], [ %.pre607.a, %..loopexit43_crit_edge.i ]
end_hunk_0
begin_hunk_1_@decode_frame:bb.a
  %i.sz = and i32 %i.sy, 1
  %i.ta = zext nneg i32 %i.sz to i64
  %i.tb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ta
  %i.tc = load i8, ptr %i.tb, align 1, !tbaa !38
  %gep56.i.4.5 = getelementptr i8, ptr %i.ry, i64 4
  store i8 %i.tc, ptr %gep56.i.4.5, align 1, !tbaa !38
  %i.td = lshr i32 %.0.i.5, 5
  %i.te = and i32 %i.td, 1
  %i.tf = zext nneg i32 %i.te to i64
  %i.tg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.tf
  %i.th = load i8, ptr %i.tg, align 1, !tbaa !38
  %gep56.i.5.5 = getelementptr i8, ptr %i.ry, i64 5
  store i8 %i.th, ptr %gep56.i.5.5, align 1, !tbaa !38
  %i.ti = lshr i32 %.0.i.5, 6
  %i.tj = and i32 %i.ti, 1
  %i.tk = zext nneg i32 %i.tj to i64
  %i.tl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.tk
  %i.tm = load i8, ptr %i.tl, align 1, !tbaa !38
  %gep56.i.6.5 = getelementptr i8, ptr %i.ry, i64 6
  store i8 %i.tm, ptr %gep56.i.6.5, align 1, !tbaa !38
  %i.tn = lshr i32 %.0.i.5, 7
  %i.to = zext nneg i32 %i.tn to i64
  %i.tp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.to
  %i.tq = load i8, ptr %i.tp, align 1, !tbaa !38
  %gep56.i.7.5 = getelementptr i8, ptr %i.ry, i64 7
  store i8 %i.tq, ptr %gep56.i.7.5, align 1, !tbaa !38
  %i.tr = getelementptr inbounds i8, ptr %.0156404, i64 %i.bs ; 8 uses
  %i.ts = ptrtoint ptr %.sroa.0.14.5 to i64
  %i.tt = sub i64 %i.ad, %i.ts
  %i.tu = icmp slt i64 %i.tt, 1
  br i1 %i.tu, label %bytestream2_get_byte.exit.6, label %bb.af

bb.af:                                            ; preds = %bytestream2_get_byte.exit.5
  %i.tv = getelementptr inbounds nuw i8, ptr %.sroa.0.14.5, i64 1
  %i.tw = load i8, ptr %.sroa.0.14.5, align 1, !tbaa !38
  %i.tx = zext i8 %i.tw to i32
  br label %bytestream2_get_byte.exit.6

bytestream2_get_byte.exit.6:                      ; preds = %bb.af, %bytestream2_get_byte.exit.5
  %.sroa.0.14.6 = phi ptr [ %i.tv, %bb.af ], [ %i.ac, %bytestream2_get_byte.exit.5 ] ; 3 uses
  %.0.i.6 = phi i32 [ %i.tx, %bb.af ], [ 0, %bytestream2_get_byte.exit.5 ] ; 8 uses
  %i.ty = and i32 %.0.i.6, 1
  %i.tz = zext nneg i32 %i.ty to i64
  %i.ua = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.tz
  %i.ub = load i8, ptr %i.ua, align 1, !tbaa !38
  store i8 %i.ub, ptr %i.tr, align 1, !tbaa !38
  %i.uc = lshr i32 %.0.i.6, 1
  %i.ud = and i32 %i.uc, 1
  %i.ue = zext nneg i32 %i.ud to i64
  %i.uf = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ue
  %i.ug = load i8, ptr %i.uf, align 1, !tbaa !38
  %gep56.i.1.6 = getelementptr i8, ptr %i.tr, i64 1
  store i8 %i.ug, ptr %gep56.i.1.6, align 1, !tbaa !38
  %i.uh = lshr i32 %.0.i.6, 2
  %i.ui = and i32 %i.uh, 1
  %i.uj = zext nneg i32 %i.ui to i64
  %i.uk = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.uj
  %i.ul = load i8, ptr %i.uk, align 1, !tbaa !38
  %gep56.i.2.6 = getelementptr i8, ptr %i.tr, i64 2
  store i8 %i.ul, ptr %gep56.i.2.6, align 1, !tbaa !38
  %i.um = lshr i32 %.0.i.6, 3
  %i.un = and i32 %i.um, 1
  %i.uo = zext nneg i32 %i.un to i64
  %i.up = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.uo
  %i.uq = load i8, ptr %i.up, align 1, !tbaa !38
  %gep56.i.3.6 = getelementptr i8, ptr %i.tr, i64 3
  store i8 %i.uq, ptr %gep56.i.3.6, align 1, !tbaa !38
  %i.ur = lshr i32 %.0.i.6, 4
  %i.us = and i32 %i.ur, 1
  %i.ut = zext nneg i32 %i.us to i64
  %i.uu = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ut
  %i.uv = load i8, ptr %i.uu, align 1, !tbaa !38
  %gep56.i.4.6 = getelementptr i8, ptr %i.tr, i64 4
  store i8 %i.uv, ptr %gep56.i.4.6, align 1, !tbaa !38
  %i.uw = lshr i32 %.0.i.6, 5
  %i.ux = and i32 %i.uw, 1
  %i.uy = zext nneg i32 %i.ux to i64
  %i.uz = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.uy
  %i.va = load i8, ptr %i.uz, align 1, !tbaa !38
  %gep56.i.5.6 = getelementptr i8, ptr %i.tr, i64 5
  store i8 %i.va, ptr %gep56.i.5.6, align 1, !tbaa !38
  %i.vb = lshr i32 %.0.i.6, 6
  %i.vc = and i32 %i.vb, 1
  %i.vd = zext nneg i32 %i.vc to i64
  %i.ve = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.vd
  %i.vf = load i8, ptr %i.ve, align 1, !tbaa !38
  %gep56.i.6.6 = getelementptr i8, ptr %i.tr, i64 6
  store i8 %i.vf, ptr %gep56.i.6.6, align 1, !tbaa !38
  %i.vg = lshr i32 %.0.i.6, 7
  %i.vh = zext nneg i32 %i.vg to i64
  %i.vi = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.vh
  %i.vj = load i8, ptr %i.vi, align 1, !tbaa !38
  %gep56.i.7.6 = getelementptr i8, ptr %i.tr, i64 7
  store i8 %i.vj, ptr %gep56.i.7.6, align 1, !tbaa !38
  %i.vk = getelementptr inbounds i8, ptr %.0156404, i64 %i.bt ; 8 uses
  %i.vl = ptrtoint ptr %.sroa.0.14.6 to i64
  %i.vm = sub i64 %i.ad, %i.vl
  %i.vn = icmp slt i64 %i.vm, 1
  br i1 %i.vn, label %bytestream2_get_byte.exit.7, label %bb.ag

bb.ag:                                            ; preds = %bytestream2_get_byte.exit.6
  %i.vo = getelementptr inbounds nuw i8, ptr %.sroa.0.14.6, i64 1
  %i.vp = load i8, ptr %.sroa.0.14.6, align 1, !tbaa !38
  %i.vq = zext i8 %i.vp to i32
  br label %bytestream2_get_byte.exit.7

bytestream2_get_byte.exit.7:                      ; preds = %bb.ag, %bytestream2_get_byte.exit.6
  %.sroa.0.14.7 = phi ptr [ %i.vo, %bb.ag ], [ %i.ac, %bytestream2_get_byte.exit.6 ]
  %.0.i.7 = phi i32 [ %i.vq, %bb.ag ], [ 0, %bytestream2_get_byte.exit.6 ] ; 8 uses
  %i.vr = and i32 %.0.i.7, 1
  %i.vs = zext nneg i32 %i.vr to i64
  %i.vt = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.vs
  %i.vu = load i8, ptr %i.vt, align 1, !tbaa !38
  store i8 %i.vu, ptr %i.vk, align 1, !tbaa !38
  %i.vv = lshr i32 %.0.i.7, 1
  %i.vw = and i32 %i.vv, 1
  %i.vx = zext nneg i32 %i.vw to i64
  %i.vy = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.vx
  %i.vz = load i8, ptr %i.vy, align 1, !tbaa !38
  %gep56.i.1.7 = getelementptr i8, ptr %i.vk, i64 1
  store i8 %i.vz, ptr %gep56.i.1.7, align 1, !tbaa !38
  %i.wa = lshr i32 %.0.i.7, 2
  %i.wb = and i32 %i.wa, 1
  %i.wc = zext nneg i32 %i.wb to i64
  %i.wd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.wc
  %i.we = load i8, ptr %i.wd, align 1, !tbaa !38
  %gep56.i.2.7 = getelementptr i8, ptr %i.vk, i64 2
  store i8 %i.we, ptr %gep56.i.2.7, align 1, !tbaa !38
  %i.wf = lshr i32 %.0.i.7, 3
  %i.wg = and i32 %i.wf, 1
  %i.wh = zext nneg i32 %i.wg to i64
  %i.wi = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.wh
  %i.wj = load i8, ptr %i.wi, align 1, !tbaa !38
  %gep56.i.3.7 = getelementptr i8, ptr %i.vk, i64 3
  store i8 %i.wj, ptr %gep56.i.3.7, align 1, !tbaa !38
  %i.wk = lshr i32 %.0.i.7, 4
  %i.wl = and i32 %i.wk, 1
  %i.wm = zext nneg i32 %i.wl to i64
  %i.wn = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.wm
  %i.wo = load i8, ptr %i.wn, align 1, !tbaa !38
  %gep56.i.4.7 = getelementptr i8, ptr %i.vk, i64 4
  store i8 %i.wo, ptr %gep56.i.4.7, align 1, !tbaa !38
  %i.wp = lshr i32 %.0.i.7, 5
  %i.wq = and i32 %i.wp, 1
  %i.wr = zext nneg i32 %i.wq to i64
  %i.ws = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.wr
  %i.wt = load i8, ptr %i.ws, align 1, !tbaa !38
  %gep56.i.5.7 = getelementptr i8, ptr %i.vk, i64 5
  store i8 %i.wt, ptr %gep56.i.5.7, align 1, !tbaa !38
  %i.wu = lshr i32 %.0.i.7, 6
  %i.wv = and i32 %i.wu, 1
  %i.ww = zext nneg i32 %i.wv to i64
  %i.wx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ww
  %i.wy = load i8, ptr %i.wx, align 1, !tbaa !38
  %gep56.i.6.7 = getelementptr i8, ptr %i.vk, i64 6
  store i8 %i.wy, ptr %gep56.i.6.7, align 1, !tbaa !38
  %i.wz = lshr i32 %.0.i.7, 7
  %i.xa = zext nneg i32 %i.wz to i64
  %i.xb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.xa
  %i.xc = load i8, ptr %i.xb, align 1, !tbaa !38
  %gep56.i.7.7 = getelementptr i8, ptr %i.vk, i64 7
  store i8 %i.xc, ptr %gep56.i.7.7, align 1, !tbaa !38
  br label %copy_block.exit.thread

.preheader342:                                    ; preds = %.preheader342.preheader, %.split.us
  %i.xd = phi i1 [ false, %.split.us ], [ true, %.preheader342.preheader ]
  %indvars.iv = phi i64 [ 4, %.split.us ], [ 0, %.preheader342.preheader ]
  %.sroa.0.7395 = phi ptr [ %.us-phi, %.split.us ], [ %.sroa.0.2, %.preheader342.preheader ] ; 7 uses
  %i.xe = mul nsw i64 %indvars.iv, %i.y
  %invariant.gep = getelementptr i8, ptr %.0156404, i64 %i.xe ; 33 uses
  %i.xf = ptrtoint ptr %.sroa.0.7395 to i64
  %i.xg = sub i64 %i.ad, %i.xf                    ; 3 uses
  switch i32 %i.cf, label %.preheader342.split.preheader [
    i32 10, label %.preheader342.split.us.preheader
    i32 13, label %.preheader342.split.us388.preheader
  ]

.preheader342.split.us388.preheader:              ; preds = %.preheader342
  %i.xh = tail call i64 @llvm.smin.i64(i64 %i.xg, i64 4)
  %i.xi = and i64 %i.xh, 4294967295               ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.a, ptr align 1 %.sroa.0.7395, i64 %i.xi, i1 false)
  %i.xj = getelementptr inbounds nuw i8, ptr %.sroa.0.7395, i64 %i.xi ; 3 uses
  %i.xk = ptrtoint ptr %i.xj to i64
  %i.xl = sub i64 %i.ad, %i.xk
  %i.xm = icmp slt i64 %i.xl, 4
  br i1 %i.xm, label %bytestream2_get_le32.exit.us, label %bb.aj

.preheader342.split.us.preheader:                 ; preds = %.preheader342
  %i.xn = tail call i64 @llvm.smin.i64(i64 %i.xg, i64 2)
  %i.xo = and i64 %i.xn, 4294967295               ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.a, ptr align 1 %.sroa.0.7395, i64 %i.xo, i1 false)
  %i.xp = getelementptr inbounds nuw i8, ptr %.sroa.0.7395, i64 %i.xo ; 3 uses
  %i.xq = ptrtoint ptr %i.xp to i64
  %i.xr = sub i64 %i.ad, %i.xq
  %i.xs = icmp slt i64 %i.xr, 2
  br i1 %i.xs, label %bytestream2_get_le16.exit184.us, label %bb.ah

.preheader342.split.preheader:                    ; preds = %.preheader342
  %i.xt = tail call i64 @llvm.smin.i64(i64 %i.xg, i64 4)
  %i.xu = and i64 %i.xt, 4294967295               ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0, ptr align 1 %.sroa.0.7395, i64 %i.xu, i1 false)
  %i.xv = getelementptr inbounds nuw i8, ptr %.sroa.0.7395, i64 %i.xu ; 3 uses
  %i.xw = ptrtoint ptr %i.xv to i64
  %i.xx = sub i64 %i.ad, %i.xw
  %i.xy = icmp slt i64 %i.xx, 2
  br i1 %i.xy, label %bytestream2_get_le16.exit, label %bb.al

bb.ah:                                            ; preds = %.preheader342.split.us.preheader
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xp, i64 2 ; 2 uses
  %i.ya = load i16, ptr %i.xp, align 1, !tbaa !38
  %i.yb = zext i16 %i.ya to i32
  %.pre665 = ptrtoint ptr %i.xz to i64
  br label %bytestream2_get_le16.exit184.us

bytestream2_get_le16.exit184.us:                  ; preds = %bb.ah, %.preheader342.split.us.preheader
  %.pre-phi666 = phi i64 [ %.pre665, %bb.ah ], [ %i.ad, %.preheader342.split.us.preheader ]
  %.sroa.0.18.us = phi ptr [ %i.xz, %bb.ah ], [ %i.ac, %.preheader342.split.us.preheader ] ; 2 uses
  %.0.i183.us = phi i32 [ %i.yb, %bb.ah ], [ 0, %.preheader342.split.us.preheader ] ; 16 uses
  %i.yc = and i32 %.0.i183.us, 1
  %i.yd = zext nneg i32 %i.yc to i64
  %i.ye = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.yd
  %i.yf = load i8, ptr %i.ye, align 1, !tbaa !38
  store i8 %i.yf, ptr %invariant.gep, align 1, !tbaa !38
  %i.yg = lshr i32 %.0.i183.us, 1
  %i.yh = and i32 %i.yg, 1
  %i.yi = zext nneg i32 %i.yh to i64
  %i.yj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.yi
  %i.yk = load i8, ptr %i.yj, align 1, !tbaa !38
  %gep56.i221.us.1 = getelementptr i8, ptr %invariant.gep, i64 1
  store i8 %i.yk, ptr %gep56.i221.us.1, align 1, !tbaa !38
  %i.yl = lshr i32 %.0.i183.us, 2
  %i.ym = and i32 %i.yl, 1
  %i.yn = zext nneg i32 %i.ym to i64
  %i.yo = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.yn
  %i.yp = load i8, ptr %i.yo, align 1, !tbaa !38
  %gep56.i221.us.2 = getelementptr i8, ptr %invariant.gep, i64 2
  store i8 %i.yp, ptr %gep56.i221.us.2, align 1, !tbaa !38
  %i.yq = lshr i32 %.0.i183.us, 3
  %i.yr = and i32 %i.yq, 1
  %i.ys = zext nneg i32 %i.yr to i64
  %i.yt = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ys
  %i.yu = load i8, ptr %i.yt, align 1, !tbaa !38
  %gep56.i221.us.3 = getelementptr i8, ptr %invariant.gep, i64 3
  store i8 %i.yu, ptr %gep56.i221.us.3, align 1, !tbaa !38
  %i.yv = lshr i32 %.0.i183.us, 4
  %invariant.gep55.i218.us.1 = getelementptr i8, ptr %invariant.gep, i64 %i.y ; 4 uses
  %i.yw = and i32 %i.yv, 1
  %i.yx = zext nneg i32 %i.yw to i64
  %i.yy = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.yx
  %i.yz = load i8, ptr %i.yy, align 1, !tbaa !38
  store i8 %i.yz, ptr %invariant.gep55.i218.us.1, align 1, !tbaa !38
  %i.za = lshr i32 %.0.i183.us, 5
  %i.zb = and i32 %i.za, 1
  %i.zc = zext nneg i32 %i.zb to i64
  %i.zd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.zc
  %i.ze = load i8, ptr %i.zd, align 1, !tbaa !38
  %gep56.i221.us.1.1 = getelementptr i8, ptr %invariant.gep55.i218.us.1, i64 1
  store i8 %i.ze, ptr %gep56.i221.us.1.1, align 1, !tbaa !38
  %i.zf = lshr i32 %.0.i183.us, 6
  %i.zg = and i32 %i.zf, 1
  %i.zh = zext nneg i32 %i.zg to i64
  %i.zi = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.zh
  %i.zj = load i8, ptr %i.zi, align 1, !tbaa !38
  %gep56.i221.us.2.1 = getelementptr i8, ptr %invariant.gep55.i218.us.1, i64 2
  store i8 %i.zj, ptr %gep56.i221.us.2.1, align 1, !tbaa !38
  %i.zk = lshr i32 %.0.i183.us, 7
  %i.zl = and i32 %i.zk, 1
  %i.zm = zext nneg i32 %i.zl to i64
  %i.zn = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.zm
  %i.zo = load i8, ptr %i.zn, align 1, !tbaa !38
  %gep56.i221.us.3.1 = getelementptr i8, ptr %invariant.gep55.i218.us.1, i64 3
  store i8 %i.zo, ptr %gep56.i221.us.3.1, align 1, !tbaa !38
  %i.zp = lshr i32 %.0.i183.us, 8
  %invariant.gep55.i218.us.2 = getelementptr i8, ptr %invariant.gep, i64 %i.ba ; 4 uses
  %i.zq = and i32 %i.zp, 1
  %i.zr = zext nneg i32 %i.zq to i64
  %i.zs = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.zr
  %i.zt = load i8, ptr %i.zs, align 1, !tbaa !38
  store i8 %i.zt, ptr %invariant.gep55.i218.us.2, align 1, !tbaa !38
  %i.zu = lshr i32 %.0.i183.us, 9
  %i.zv = and i32 %i.zu, 1
  %i.zw = zext nneg i32 %i.zv to i64
  %i.zx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.zw
  %i.zy = load i8, ptr %i.zx, align 1, !tbaa !38
  %gep56.i221.us.1.2 = getelementptr i8, ptr %invariant.gep55.i218.us.2, i64 1
  store i8 %i.zy, ptr %gep56.i221.us.1.2, align 1, !tbaa !38
  %i.zz = lshr i32 %.0.i183.us, 10
  %i.aaa = and i32 %i.zz, 1
  %i.aab = zext nneg i32 %i.aaa to i64
  %i.aac = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aab
  %i.aad = load i8, ptr %i.aac, align 1, !tbaa !38
  %gep56.i221.us.2.2 = getelementptr i8, ptr %invariant.gep55.i218.us.2, i64 2
  store i8 %i.aad, ptr %gep56.i221.us.2.2, align 1, !tbaa !38
  %i.aae = lshr i32 %.0.i183.us, 11
  %i.aaf = and i32 %i.aae, 1
  %i.aag = zext nneg i32 %i.aaf to i64
  %i.aah = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aag
  %i.aai = load i8, ptr %i.aah, align 1, !tbaa !38
  %gep56.i221.us.3.2 = getelementptr i8, ptr %invariant.gep55.i218.us.2, i64 3
  store i8 %i.aai, ptr %gep56.i221.us.3.2, align 1, !tbaa !38
  %i.aaj = lshr i32 %.0.i183.us, 12
  %invariant.gep55.i218.us.3 = getelementptr i8, ptr %invariant.gep, i64 %i.bb ; 4 uses
  %i.aak = and i32 %i.aaj, 1
  %i.aal = zext nneg i32 %i.aak to i64
  %i.aam = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aal
  %i.aan = load i8, ptr %i.aam, align 1, !tbaa !38
  store i8 %i.aan, ptr %invariant.gep55.i218.us.3, align 1, !tbaa !38
  %i.aao = lshr i32 %.0.i183.us, 13
  %i.aap = and i32 %i.aao, 1
  %i.aaq = zext nneg i32 %i.aap to i64
  %i.aar = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aaq
  %i.aas = load i8, ptr %i.aar, align 1, !tbaa !38
  %gep56.i221.us.1.3 = getelementptr i8, ptr %invariant.gep55.i218.us.3, i64 1
  store i8 %i.aas, ptr %gep56.i221.us.1.3, align 1, !tbaa !38
  %i.aat = lshr i32 %.0.i183.us, 14
  %i.aau = and i32 %i.aat, 1
  %i.aav = zext nneg i32 %i.aau to i64
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aav
  %i.aax = load i8, ptr %i.aaw, align 1, !tbaa !38
  %gep56.i221.us.2.3 = getelementptr i8, ptr %invariant.gep55.i218.us.3, i64 2
  store i8 %i.aax, ptr %gep56.i221.us.2.3, align 1, !tbaa !38
  %i.aay = lshr i32 %.0.i183.us, 15
  %i.aaz = zext nneg i32 %i.aay to i64
  %i.aba = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aaz
  %i.abb = load i8, ptr %i.aba, align 1, !tbaa !38
  %gep56.i221.us.3.3 = getelementptr i8, ptr %invariant.gep55.i218.us.3, i64 3
  store i8 %i.abb, ptr %gep56.i221.us.3.3, align 1, !tbaa !38
  %i.abc = sub i64 %i.ad, %.pre-phi666
  %i.abd = tail call i64 @llvm.smin.i64(i64 %i.abc, i64 2)
  %i.abe = and i64 %i.abd, 4294967295             ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.a, ptr align 1 %.sroa.0.18.us, i64 %i.abe, i1 false)
  %i.abf = getelementptr inbounds nuw i8, ptr %.sroa.0.18.us, i64 %i.abe ; 3 uses
  %gep385.us.1 = getelementptr i8, ptr %invariant.gep, i64 4 ; 4 uses
  %i.abg = ptrtoint ptr %i.abf to i64
  %i.abh = sub i64 %i.ad, %i.abg
  %i.abi = icmp slt i64 %i.abh, 2
  br i1 %i.abi, label %bytestream2_get_le16.exit184.us.1, label %bb.ai

bb.ai:                                            ; preds = %bytestream2_get_le16.exit184.us
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abf, i64 2
  %i.abk = load i16, ptr %i.abf, align 1, !tbaa !38
  %i.abl = zext i16 %i.abk to i32
  br label %bytestream2_get_le16.exit184.us.1

bytestream2_get_le16.exit184.us.1:                ; preds = %bb.ai, %bytestream2_get_le16.exit184.us
  %.sroa.0.18.us.1 = phi ptr [ %i.abj, %bb.ai ], [ %i.ac, %bytestream2_get_le16.exit184.us ]
  %.0.i183.us.1 = phi i32 [ %i.abl, %bb.ai ], [ 0, %bytestream2_get_le16.exit184.us ] ; 16 uses
  %i.abm = and i32 %.0.i183.us.1, 1
  %i.abn = zext nneg i32 %i.abm to i64
  %i.abo = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.abn
  %i.abp = load i8, ptr %i.abo, align 1, !tbaa !38
  store i8 %i.abp, ptr %gep385.us.1, align 1, !tbaa !38
  %i.abq = lshr i32 %.0.i183.us.1, 1
  %i.abr = and i32 %i.abq, 1
  %i.abs = zext nneg i32 %i.abr to i64
  %i.abt = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.abs
  %i.abu = load i8, ptr %i.abt, align 1, !tbaa !38
  %gep56.i221.us.1.1450 = getelementptr i8, ptr %invariant.gep, i64 5
  store i8 %i.abu, ptr %gep56.i221.us.1.1450, align 1, !tbaa !38
  %i.abv = lshr i32 %.0.i183.us.1, 2
  %i.abw = and i32 %i.abv, 1
  %i.abx = zext nneg i32 %i.abw to i64
  %i.aby = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.abx
  %i.abz = load i8, ptr %i.aby, align 1, !tbaa !38
  %gep56.i221.us.2.1451 = getelementptr i8, ptr %invariant.gep, i64 6
  store i8 %i.abz, ptr %gep56.i221.us.2.1451, align 1, !tbaa !38
  %i.aca = lshr i32 %.0.i183.us.1, 3
  %i.acb = and i32 %i.aca, 1
  %i.acc = zext nneg i32 %i.acb to i64
  %i.acd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.acc
  %i.ace = load i8, ptr %i.acd, align 1, !tbaa !38
  %gep56.i221.us.3.1452 = getelementptr i8, ptr %invariant.gep, i64 7
  store i8 %i.ace, ptr %gep56.i221.us.3.1452, align 1, !tbaa !38
  %i.acf = lshr i32 %.0.i183.us.1, 4
  %invariant.gep55.i218.us.1.1 = getelementptr i8, ptr %gep385.us.1, i64 %i.y ; 4 uses
  %i.acg = and i32 %i.acf, 1
  %i.ach = zext nneg i32 %i.acg to i64
  %i.aci = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ach
  %i.acj = load i8, ptr %i.aci, align 1, !tbaa !38
  store i8 %i.acj, ptr %invariant.gep55.i218.us.1.1, align 1, !tbaa !38
  %i.ack = lshr i32 %.0.i183.us.1, 5
  %i.acl = and i32 %i.ack, 1
  %i.acm = zext nneg i32 %i.acl to i64
  %i.acn = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.acm
  %i.aco = load i8, ptr %i.acn, align 1, !tbaa !38
  %gep56.i221.us.1.1.1 = getelementptr i8, ptr %invariant.gep55.i218.us.1.1, i64 1
  store i8 %i.aco, ptr %gep56.i221.us.1.1.1, align 1, !tbaa !38
  %i.acp = lshr i32 %.0.i183.us.1, 6
  %i.acq = and i32 %i.acp, 1
  %i.acr = zext nneg i32 %i.acq to i64
  %i.acs = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.acr
  %i.act = load i8, ptr %i.acs, align 1, !tbaa !38
  %gep56.i221.us.2.1.1 = getelementptr i8, ptr %invariant.gep55.i218.us.1.1, i64 2
  store i8 %i.act, ptr %gep56.i221.us.2.1.1, align 1, !tbaa !38
  %i.acu = lshr i32 %.0.i183.us.1, 7
  %i.acv = and i32 %i.acu, 1
  %i.acw = zext nneg i32 %i.acv to i64
  %i.acx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.acw
  %i.acy = load i8, ptr %i.acx, align 1, !tbaa !38
  %gep56.i221.us.3.1.1 = getelementptr i8, ptr %invariant.gep55.i218.us.1.1, i64 3
  store i8 %i.acy, ptr %gep56.i221.us.3.1.1, align 1, !tbaa !38
end_hunk_1
begin_hunk_2_@decode_frame:bb.a
  %gep56.i234.us.2.1 = getelementptr i8, ptr %invariant.gep55.i231.us.1, i64 2
  store i8 %i.afs, ptr %gep56.i234.us.2.1, align 1, !tbaa !38
  %i.aft = lshr i32 %.0.i189.us, 14
  %i.afu = and i32 %i.aft, 3
  %i.afv = zext nneg i32 %i.afu to i64
  %i.afw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.afv
  %i.afx = load i8, ptr %i.afw, align 1, !tbaa !38
  %gep56.i234.us.3.1 = getelementptr i8, ptr %invariant.gep55.i231.us.1, i64 3
  store i8 %i.afx, ptr %gep56.i234.us.3.1, align 1, !tbaa !38
  %i.afy = lshr i32 %.0.i189.us, 16
  %invariant.gep55.i231.us.2 = getelementptr i8, ptr %invariant.gep, i64 %i.ay ; 4 uses
  %i.afz = and i32 %i.afy, 3
  %i.aga = zext nneg i32 %i.afz to i64
  %i.agb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aga
  %i.agc = load i8, ptr %i.agb, align 1, !tbaa !38
  store i8 %i.agc, ptr %invariant.gep55.i231.us.2, align 1, !tbaa !38
  %i.agd = lshr i32 %.0.i189.us, 18
  %i.age = and i32 %i.agd, 3
  %i.agf = zext nneg i32 %i.age to i64
  %i.agg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.agf
  %i.agh = load i8, ptr %i.agg, align 1, !tbaa !38
  %gep56.i234.us.1.2 = getelementptr i8, ptr %invariant.gep55.i231.us.2, i64 1
  store i8 %i.agh, ptr %gep56.i234.us.1.2, align 1, !tbaa !38
  %i.agi = lshr i32 %.0.i189.us, 20
  %i.agj = and i32 %i.agi, 3
  %i.agk = zext nneg i32 %i.agj to i64
  %i.agl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.agk
  %i.agm = load i8, ptr %i.agl, align 1, !tbaa !38
  %gep56.i234.us.2.2 = getelementptr i8, ptr %invariant.gep55.i231.us.2, i64 2
  store i8 %i.agm, ptr %gep56.i234.us.2.2, align 1, !tbaa !38
  %i.agn = lshr i32 %.0.i189.us, 22
  %i.ago = and i32 %i.agn, 3
  %i.agp = zext nneg i32 %i.ago to i64
  %i.agq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.agp
  %i.agr = load i8, ptr %i.agq, align 1, !tbaa !38
  %gep56.i234.us.3.2 = getelementptr i8, ptr %invariant.gep55.i231.us.2, i64 3
  store i8 %i.agr, ptr %gep56.i234.us.3.2, align 1, !tbaa !38
  %i.ags = lshr i32 %.0.i189.us, 24
  %invariant.gep55.i231.us.3 = getelementptr i8, ptr %invariant.gep, i64 %i.az ; 4 uses
  %i.agt = and i32 %i.ags, 3
  %i.agu = zext nneg i32 %i.agt to i64
  %i.agv = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.agu
  %i.agw = load i8, ptr %i.agv, align 1, !tbaa !38
  store i8 %i.agw, ptr %invariant.gep55.i231.us.3, align 1, !tbaa !38
  %i.agx = lshr i32 %.0.i189.us, 26
  %i.agy = and i32 %i.agx, 3
  %i.agz = zext nneg i32 %i.agy to i64
  %i.aha = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.agz
  %i.ahb = load i8, ptr %i.aha, align 1, !tbaa !38
  %gep56.i234.us.1.3 = getelementptr i8, ptr %invariant.gep55.i231.us.3, i64 1
  store i8 %i.ahb, ptr %gep56.i234.us.1.3, align 1, !tbaa !38
  %i.ahc = lshr i32 %.0.i189.us, 28
  %i.ahd = and i32 %i.ahc, 3
  %i.ahe = zext nneg i32 %i.ahd to i64
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ahe
  %i.ahg = load i8, ptr %i.ahf, align 1, !tbaa !38
  %gep56.i234.us.2.3 = getelementptr i8, ptr %invariant.gep55.i231.us.3, i64 2
  store i8 %i.ahg, ptr %gep56.i234.us.2.3, align 1, !tbaa !38
  %i.ahh = lshr i32 %.0.i189.us, 30
  %i.ahi = zext nneg i32 %i.ahh to i64
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ahi
  %i.ahk = load i8, ptr %i.ahj, align 1, !tbaa !38
  %gep56.i234.us.3.3 = getelementptr i8, ptr %invariant.gep55.i231.us.3, i64 3
  store i8 %i.ahk, ptr %gep56.i234.us.3.3, align 1, !tbaa !38
  %i.ahl = sub i64 %i.ad, %.pre-phi668
  %i.ahm = tail call i64 @llvm.smin.i64(i64 %i.ahl, i64 4)
  %i.ahn = and i64 %i.ahm, 4294967295             ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.a, ptr align 1 %.sroa.0.21.us, i64 %i.ahn, i1 false)
  %i.aho = getelementptr inbounds nuw i8, ptr %.sroa.0.21.us, i64 %i.ahn ; 3 uses
  %gep.us.1 = getelementptr i8, ptr %invariant.gep, i64 4 ; 4 uses
  %i.ahp = ptrtoint ptr %i.aho to i64
  %i.ahq = sub i64 %i.ad, %i.ahp
  %i.ahr = icmp slt i64 %i.ahq, 4
  br i1 %i.ahr, label %bytestream2_get_le32.exit.us.1, label %bb.ak

bb.ak:                                            ; preds = %bytestream2_get_le32.exit.us
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.aho, i64 4
  %i.aht = load i32, ptr %i.aho, align 1, !tbaa !38
  br label %bytestream2_get_le32.exit.us.1

bytestream2_get_le32.exit.us.1:                   ; preds = %bb.ak, %bytestream2_get_le32.exit.us
  %.sroa.0.21.us.1 = phi ptr [ %i.ahs, %bb.ak ], [ %i.ac, %bytestream2_get_le32.exit.us ]
  %.0.i189.us.1 = phi i32 [ %i.aht, %bb.ak ], [ 0, %bytestream2_get_le32.exit.us ] ; 16 uses
  %i.ahu = and i32 %.0.i189.us.1, 3
  %i.ahv = zext nneg i32 %i.ahu to i64
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ahv
  %i.ahx = load i8, ptr %i.ahw, align 1, !tbaa !38
  store i8 %i.ahx, ptr %gep.us.1, align 1, !tbaa !38
  %i.ahy = lshr i32 %.0.i189.us.1, 2
  %i.ahz = and i32 %i.ahy, 3
  %i.aia = zext nneg i32 %i.ahz to i64
  %i.aib = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aia
  %i.aic = load i8, ptr %i.aib, align 1, !tbaa !38
  %gep56.i234.us.1.1445 = getelementptr i8, ptr %invariant.gep, i64 5
  store i8 %i.aic, ptr %gep56.i234.us.1.1445, align 1, !tbaa !38
  %i.aid = lshr i32 %.0.i189.us.1, 4
  %i.aie = and i32 %i.aid, 3
  %i.aif = zext nneg i32 %i.aie to i64
  %i.aig = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aif
  %i.aih = load i8, ptr %i.aig, align 1, !tbaa !38
  %gep56.i234.us.2.1446 = getelementptr i8, ptr %invariant.gep, i64 6
  store i8 %i.aih, ptr %gep56.i234.us.2.1446, align 1, !tbaa !38
  %i.aii = lshr i32 %.0.i189.us.1, 6
  %i.aij = and i32 %i.aii, 3
  %i.aik = zext nneg i32 %i.aij to i64
  %i.ail = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aik
  %i.aim = load i8, ptr %i.ail, align 1, !tbaa !38
  %gep56.i234.us.3.1447 = getelementptr i8, ptr %invariant.gep, i64 7
  store i8 %i.aim, ptr %gep56.i234.us.3.1447, align 1, !tbaa !38
  %i.ain = lshr i32 %.0.i189.us.1, 8
  %invariant.gep55.i231.us.1.1 = getelementptr i8, ptr %gep.us.1, i64 %i.y ; 4 uses
  %i.aio = and i32 %i.ain, 3
  %i.aip = zext nneg i32 %i.aio to i64
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aip
  %i.air = load i8, ptr %i.aiq, align 1, !tbaa !38
  store i8 %i.air, ptr %invariant.gep55.i231.us.1.1, align 1, !tbaa !38
  %i.ais = lshr i32 %.0.i189.us.1, 10
  %i.ait = and i32 %i.ais, 3
  %i.aiu = zext nneg i32 %i.ait to i64
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aiu
  %i.aiw = load i8, ptr %i.aiv, align 1, !tbaa !38
  %gep56.i234.us.1.1.1 = getelementptr i8, ptr %invariant.gep55.i231.us.1.1, i64 1
  store i8 %i.aiw, ptr %gep56.i234.us.1.1.1, align 1, !tbaa !38
  %i.aix = lshr i32 %.0.i189.us.1, 12
  %i.aiy = and i32 %i.aix, 3
  %i.aiz = zext nneg i32 %i.aiy to i64
  %i.aja = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aiz
  %i.ajb = load i8, ptr %i.aja, align 1, !tbaa !38
  %gep56.i234.us.2.1.1 = getelementptr i8, ptr %invariant.gep55.i231.us.1.1, i64 2
  store i8 %i.ajb, ptr %gep56.i234.us.2.1.1, align 1, !tbaa !38
  %i.ajc = lshr i32 %.0.i189.us.1, 14
  %i.ajd = and i32 %i.ajc, 3
  %i.aje = zext nneg i32 %i.ajd to i64
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aje
  %i.ajg = load i8, ptr %i.ajf, align 1, !tbaa !38
  %gep56.i234.us.3.1.1 = getelementptr i8, ptr %invariant.gep55.i231.us.1.1, i64 3
  store i8 %i.ajg, ptr %gep56.i234.us.3.1.1, align 1, !tbaa !38
  %i.ajh = lshr i32 %.0.i189.us.1, 16
  %invariant.gep55.i231.us.2.1 = getelementptr i8, ptr %gep.us.1, i64 %i.ay ; 4 uses
  %i.aji = and i32 %i.ajh, 3
  %i.ajj = zext nneg i32 %i.aji to i64
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ajj
  %i.ajl = load i8, ptr %i.ajk, align 1, !tbaa !38
  store i8 %i.ajl, ptr %invariant.gep55.i231.us.2.1, align 1, !tbaa !38
  %i.ajm = lshr i32 %.0.i189.us.1, 18
  %i.ajn = and i32 %i.ajm, 3
  %i.ajo = zext nneg i32 %i.ajn to i64
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ajo
  %i.ajq = load i8, ptr %i.ajp, align 1, !tbaa !38
  %gep56.i234.us.1.2.1 = getelementptr i8, ptr %invariant.gep55.i231.us.2.1, i64 1
  store i8 %i.ajq, ptr %gep56.i234.us.1.2.1, align 1, !tbaa !38
  %i.ajr = lshr i32 %.0.i189.us.1, 20
  %i.ajs = and i32 %i.ajr, 3
  %i.ajt = zext nneg i32 %i.ajs to i64
  %i.aju = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ajt
  %i.ajv = load i8, ptr %i.aju, align 1, !tbaa !38
  %gep56.i234.us.2.2.1 = getelementptr i8, ptr %invariant.gep55.i231.us.2.1, i64 2
  store i8 %i.ajv, ptr %gep56.i234.us.2.2.1, align 1, !tbaa !38
  %i.ajw = lshr i32 %.0.i189.us.1, 22
  %i.ajx = and i32 %i.ajw, 3
  %i.ajy = zext nneg i32 %i.ajx to i64
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ajy
  %i.aka = load i8, ptr %i.ajz, align 1, !tbaa !38
  %gep56.i234.us.3.2.1 = getelementptr i8, ptr %invariant.gep55.i231.us.2.1, i64 3
  store i8 %i.aka, ptr %gep56.i234.us.3.2.1, align 1, !tbaa !38
  %i.akb = lshr i32 %.0.i189.us.1, 24
  %invariant.gep55.i231.us.3.1 = getelementptr i8, ptr %gep.us.1, i64 %i.az ; 4 uses
  %i.akc = and i32 %i.akb, 3
  %i.akd = zext nneg i32 %i.akc to i64
  %i.ake = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.akd
  %i.akf = load i8, ptr %i.ake, align 1, !tbaa !38
  store i8 %i.akf, ptr %invariant.gep55.i231.us.3.1, align 1, !tbaa !38
  %i.akg = lshr i32 %.0.i189.us.1, 26
  %i.akh = and i32 %i.akg, 3
  %i.aki = zext nneg i32 %i.akh to i64
  %i.akj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aki
  %i.akk = load i8, ptr %i.akj, align 1, !tbaa !38
  %gep56.i234.us.1.3.1 = getelementptr i8, ptr %invariant.gep55.i231.us.3.1, i64 1
  store i8 %i.akk, ptr %gep56.i234.us.1.3.1, align 1, !tbaa !38
  %i.akl = lshr i32 %.0.i189.us.1, 28
  %i.akm = and i32 %i.akl, 3
  %i.akn = zext nneg i32 %i.akm to i64
  %i.ako = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.akn
  %i.akp = load i8, ptr %i.ako, align 1, !tbaa !38
  %gep56.i234.us.2.3.1 = getelementptr i8, ptr %invariant.gep55.i231.us.3.1, i64 2
  store i8 %i.akp, ptr %gep56.i234.us.2.3.1, align 1, !tbaa !38
  %i.akq = lshr i32 %.0.i189.us.1, 30
  br label %.split.us

bb.al:                                            ; preds = %.preheader342.split.preheader
  %i.akr = getelementptr inbounds nuw i8, ptr %i.xv, i64 2 ; 2 uses
  %i.aks = load i16, ptr %i.xv, align 1, !tbaa !38
  %i.akt = zext i16 %i.aks to i32
  %.pre663 = ptrtoint ptr %i.akr to i64
  br label %bytestream2_get_le16.exit

bytestream2_get_le16.exit:                        ; preds = %.preheader342.split.preheader, %bb.al
  %.pre-phi664 = phi i64 [ %i.ad, %.preheader342.split.preheader ], [ %.pre663, %bb.al ]
  %.sroa.0.17 = phi ptr [ %i.ac, %.preheader342.split.preheader ], [ %i.akr, %bb.al ] ; 2 uses
  %.0.i182 = phi i32 [ 0, %.preheader342.split.preheader ], [ %i.akt, %bb.al ] ; 16 uses
  %.sroa.0.0..sroa.0.0..sroa.0.0. = load i8, ptr %.sroa.0, align 4, !tbaa !38 ; 2 uses
  store i8 %.sroa.0.0..sroa.0.0..sroa.0.0., ptr %i.a, align 1, !tbaa !38
  %.sroa.0.1..sroa.0.1..sroa.0.1. = load i8, ptr %.sroa.0.1..sroa_idx, align 1, !tbaa !38 ; 6 uses
  store i8 %.sroa.0.1..sroa.0.1..sroa.0.1., ptr %i.ar, align 1, !tbaa !38
  %i.aku = and i32 %.0.i182, 1
  %i.akv = zext nneg i32 %i.aku to i64
  %i.akw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.akv
  %i.akx = load i8, ptr %i.akw, align 1, !tbaa !38
  store i8 %i.akx, ptr %invariant.gep, align 1, !tbaa !38
  %i.aky = lshr i32 %.0.i182, 1
  store i8 %.sroa.0.1..sroa.0.1..sroa.0.1., ptr %i.ar, align 1, !tbaa !38
  %i.akz = and i32 %i.aky, 1
  %i.ala = zext nneg i32 %i.akz to i64
  %i.alb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ala
  %i.alc = load i8, ptr %i.alb, align 1, !tbaa !38
  %gep.i244.1 = getelementptr i8, ptr %invariant.gep, i64 1
  store i8 %i.alc, ptr %gep.i244.1, align 1, !tbaa !38
  %i.ald = lshr i32 %.0.i182, 2
  %.sroa.0.2..sroa.0.2..sroa.0.2. = load i8, ptr %.sroa.0.2..sroa_idx, align 2, !tbaa !38 ; 6 uses
  store i8 %.sroa.0.2..sroa.0.2..sroa.0.2., ptr %i.ar, align 1, !tbaa !38
  %i.ale = and i32 %i.ald, 1
  %i.alf = zext nneg i32 %i.ale to i64
  %i.alg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.alf
  %i.alh = load i8, ptr %i.alg, align 1, !tbaa !38
  %gep.i244.2 = getelementptr i8, ptr %invariant.gep, i64 2
  store i8 %i.alh, ptr %gep.i244.2, align 1, !tbaa !38
  %i.ali = lshr i32 %.0.i182, 3
  store i8 %.sroa.0.2..sroa.0.2..sroa.0.2., ptr %i.ar, align 1, !tbaa !38
  %i.alj = and i32 %i.ali, 1
  %i.alk = zext nneg i32 %i.alj to i64
  %i.all = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.alk
  %i.alm = load i8, ptr %i.all, align 1, !tbaa !38
  %gep.i244.3 = getelementptr i8, ptr %invariant.gep, i64 3
  store i8 %i.alm, ptr %gep.i244.3, align 1, !tbaa !38
  %i.aln = lshr i32 %.0.i182, 4
  store i8 %.sroa.0.0..sroa.0.0..sroa.0.0., ptr %i.a, align 1, !tbaa !38
  %invariant.gep.i242.1 = getelementptr i8, ptr %invariant.gep, i64 %i.y ; 4 uses
  store i8 %.sroa.0.1..sroa.0.1..sroa.0.1., ptr %i.ar, align 1, !tbaa !38
  %i.alo = and i32 %i.aln, 1
  %i.alp = zext nneg i32 %i.alo to i64
  %i.alq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.alp
  %i.alr = load i8, ptr %i.alq, align 1, !tbaa !38
  store i8 %i.alr, ptr %invariant.gep.i242.1, align 1, !tbaa !38
  %i.als = lshr i32 %.0.i182, 5
  store i8 %.sroa.0.1..sroa.0.1..sroa.0.1., ptr %i.ar, align 1, !tbaa !38
  %i.alt = and i32 %i.als, 1
  %i.alu = zext nneg i32 %i.alt to i64
  %i.alv = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.alu
  %i.alw = load i8, ptr %i.alv, align 1, !tbaa !38
  %gep.i244.1.1 = getelementptr i8, ptr %invariant.gep.i242.1, i64 1
  store i8 %i.alw, ptr %gep.i244.1.1, align 1, !tbaa !38
  %i.alx = lshr i32 %.0.i182, 6
  store i8 %.sroa.0.2..sroa.0.2..sroa.0.2., ptr %i.ar, align 1, !tbaa !38
  %i.aly = and i32 %i.alx, 1
  %i.alz = zext nneg i32 %i.aly to i64
  %i.ama = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.alz
  %i.amb = load i8, ptr %i.ama, align 1, !tbaa !38
  %gep.i244.2.1 = getelementptr i8, ptr %invariant.gep.i242.1, i64 2
  store i8 %i.amb, ptr %gep.i244.2.1, align 1, !tbaa !38
  %i.amc = lshr i32 %.0.i182, 7
  store i8 %.sroa.0.2..sroa.0.2..sroa.0.2., ptr %i.ar, align 1, !tbaa !38
  %i.amd = and i32 %i.amc, 1
  %i.ame = zext nneg i32 %i.amd to i64
  %i.amf = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ame
  %i.amg = load i8, ptr %i.amf, align 1, !tbaa !38
  %gep.i244.3.1 = getelementptr i8, ptr %invariant.gep.i242.1, i64 3
  store i8 %i.amg, ptr %gep.i244.3.1, align 1, !tbaa !38
  %i.amh = lshr i32 %.0.i182, 8
  %.sroa.0.3..sroa.0.3..sroa.0.3. = load i8, ptr %.sroa.0.3..sroa_idx, align 1, !tbaa !38 ; 2 uses
  store i8 %.sroa.0.3..sroa.0.3..sroa.0.3., ptr %i.a, align 1, !tbaa !38
  %invariant.gep.i242.2 = getelementptr i8, ptr %invariant.gep, i64 %i.bc ; 4 uses
  store i8 %.sroa.0.1..sroa.0.1..sroa.0.1., ptr %i.ar, align 1, !tbaa !38
  %i.ami = and i32 %i.amh, 1
  %i.amj = zext nneg i32 %i.ami to i64
  %i.amk = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.amj
  %i.aml = load i8, ptr %i.amk, align 1, !tbaa !38
  store i8 %i.aml, ptr %invariant.gep.i242.2, align 1, !tbaa !38
  %i.amm = lshr i32 %.0.i182, 9
  store i8 %.sroa.0.1..sroa.0.1..sroa.0.1., ptr %i.ar, align 1, !tbaa !38
  %i.amn = and i32 %i.amm, 1
  %i.amo = zext nneg i32 %i.amn to i64
  %i.amp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.amo
  %i.amq = load i8, ptr %i.amp, align 1, !tbaa !38
  %gep.i244.1.2 = getelementptr i8, ptr %invariant.gep.i242.2, i64 1
  store i8 %i.amq, ptr %gep.i244.1.2, align 1, !tbaa !38
  %i.amr = lshr i32 %.0.i182, 10
  store i8 %.sroa.0.2..sroa.0.2..sroa.0.2., ptr %i.ar, align 1, !tbaa !38
  %i.ams = and i32 %i.amr, 1
  %i.amt = zext nneg i32 %i.ams to i64
  %i.amu = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.amt
  %i.amv = load i8, ptr %i.amu, align 1, !tbaa !38
  %gep.i244.2.2 = getelementptr i8, ptr %invariant.gep.i242.2, i64 2
  store i8 %i.amv, ptr %gep.i244.2.2, align 1, !tbaa !38
  %i.amw = lshr i32 %.0.i182, 11
  store i8 %.sroa.0.2..sroa.0.2..sroa.0.2., ptr %i.ar, align 1, !tbaa !38
  %i.amx = and i32 %i.amw, 1
  %i.amy = zext nneg i32 %i.amx to i64
  %i.amz = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.amy
  %i.ana = load i8, ptr %i.amz, align 1, !tbaa !38
  %gep.i244.3.2 = getelementptr i8, ptr %invariant.gep.i242.2, i64 3
  store i8 %i.ana, ptr %gep.i244.3.2, align 1, !tbaa !38
  %i.anb = lshr i32 %.0.i182, 12
  store i8 %.sroa.0.3..sroa.0.3..sroa.0.3., ptr %i.a, align 1, !tbaa !38
  %invariant.gep.i242.3 = getelementptr i8, ptr %invariant.gep, i64 %i.bd ; 4 uses
  %.sroa.0.1..sroa.0.1..sroa.0.1.490 = load i8, ptr %.sroa.0.1..sroa_idx805, align 1, !tbaa !38 ; 2 uses
  store i8 %.sroa.0.1..sroa.0.1..sroa.0.1.490, ptr %i.ar, align 1, !tbaa !38
  %i.anc = and i32 %i.anb, 1
  %i.and = zext nneg i32 %i.anc to i64
  %i.ane = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.and
  %i.anf = load i8, ptr %i.ane, align 1, !tbaa !38
  store i8 %i.anf, ptr %invariant.gep.i242.3, align 1, !tbaa !38
  %i.ang = lshr i32 %.0.i182, 13
  store i8 %.sroa.0.1..sroa.0.1..sroa.0.1.490, ptr %i.ar, align 1, !tbaa !38
  %i.anh = and i32 %i.ang, 1
  %i.ani = zext nneg i32 %i.anh to i64
  %i.anj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ani
  %i.ank = load i8, ptr %i.anj, align 1, !tbaa !38
  %gep.i244.1.3 = getelementptr i8, ptr %invariant.gep.i242.3, i64 1
  store i8 %i.ank, ptr %gep.i244.1.3, align 1, !tbaa !38
  %i.anl = lshr i32 %.0.i182, 14
  %.sroa.0.2..sroa.0.2..sroa.0.2.526 = load i8, ptr %.sroa.0.2..sroa_idx808, align 2, !tbaa !38 ; 2 uses
  store i8 %.sroa.0.2..sroa.0.2..sroa.0.2.526, ptr %i.ar, align 1, !tbaa !38
  %i.anm = and i32 %i.anl, 1
  %i.ann = zext nneg i32 %i.anm to i64
  %i.ano = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ann
  %i.anp = load i8, ptr %i.ano, align 1, !tbaa !38
  %gep.i244.2.3 = getelementptr i8, ptr %invariant.gep.i242.3, i64 2
  store i8 %i.anp, ptr %gep.i244.2.3, align 1, !tbaa !38
  %i.anq = lshr i32 %.0.i182, 15
  store i8 %.sroa.0.2..sroa.0.2..sroa.0.2.526, ptr %i.ar, align 1, !tbaa !38
  %i.anr = zext nneg i32 %i.anq to i64
  %i.ans = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.anr
  %i.ant = load i8, ptr %i.ans, align 1, !tbaa !38
  %gep.i244.3.3 = getelementptr i8, ptr %invariant.gep.i242.3, i64 3
  store i8 %i.ant, ptr %gep.i244.3.3, align 1, !tbaa !38
  %i.anu = sub i64 %i.ad, %.pre-phi664
  %i.anv = tail call i64 @llvm.smin.i64(i64 %i.anu, i64 4)
  %i.anw = and i64 %i.anv, 4294967295             ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0, ptr align 1 %.sroa.0.17, i64 %i.anw, i1 false)
  %i.anx = getelementptr inbounds nuw i8, ptr %.sroa.0.17, i64 %i.anw ; 3 uses
  %gep387.1 = getelementptr i8, ptr %invariant.gep, i64 4 ; 4 uses
  %i.any = ptrtoint ptr %i.anx to i64
  %i.anz = sub i64 %i.ad, %i.any
  %i.aoa = icmp slt i64 %i.anz, 2
  br i1 %i.aoa, label %bytestream2_get_le16.exit.1, label %bb.am

bb.am:                                            ; preds = %bytestream2_get_le16.exit
  %i.aob = getelementptr inbounds nuw i8, ptr %i.anx, i64 2
  %i.aoc = load i16, ptr %i.anx, align 1, !tbaa !38
  %i.aod = zext i16 %i.aoc to i32
  br label %bytestream2_get_le16.exit.1

bytestream2_get_le16.exit.1:                      ; preds = %bb.am, %bytestream2_get_le16.exit
  %.sroa.0.17.1 = phi ptr [ %i.aob, %bb.am ], [ %i.ac, %bytestream2_get_le16.exit ]
  %.0.i182.1 = phi i32 [ %i.aod, %bb.am ], [ 0, %bytestream2_get_le16.exit ] ; 16 uses
  %.sroa.0.0..sroa.0.0..sroa.0.0.483 = load i8, ptr %.sroa.0, align 4, !tbaa !38 ; 2 uses
  store i8 %.sroa.0.0..sroa.0.0..sroa.0.0.483, ptr %i.a, align 1, !tbaa !38
  %.sroa.0.1..sroa.0.1..sroa.0.1.500 = load i8, ptr %.sroa.0.1..sroa_idx806, align 1, !tbaa !38 ; 6 uses
  store i8 %.sroa.0.1..sroa.0.1..sroa.0.1.500, ptr %i.ar, align 1, !tbaa !38
  %i.aoe = and i32 %.0.i182.1, 1
  %i.aof = zext nneg i32 %i.aoe to i64
  %i.aog = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aof
  %i.aoh = load i8, ptr %i.aog, align 1, !tbaa !38
  store i8 %i.aoh, ptr %gep387.1, align 1, !tbaa !38
  %i.aoi = lshr i32 %.0.i182.1, 1
  store i8 %.sroa.0.1..sroa.0.1..sroa.0.1.500, ptr %i.ar, align 1, !tbaa !38
  %i.aoj = and i32 %i.aoi, 1
  %i.aok = zext nneg i32 %i.aoj to i64
  %i.aol = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aok
  %i.aom = load i8, ptr %i.aol, align 1, !tbaa !38
  %gep.i244.1.1455 = getelementptr i8, ptr %invariant.gep, i64 5
  store i8 %i.aom, ptr %gep.i244.1.1455, align 1, !tbaa !38
  %i.aon = lshr i32 %.0.i182.1, 2
  %.sroa.0.2..sroa.0.2..sroa.0.2.530 = load i8, ptr %.sroa.0.2..sroa_idx809, align 2, !tbaa !38 ; 6 uses
  store i8 %.sroa.0.2..sroa.0.2..sroa.0.2.530, ptr %i.ar, align 1, !tbaa !38
  %i.aoo = and i32 %i.aon, 1
  %i.aop = zext nneg i32 %i.aoo to i64
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aop
  %i.aor = load i8, ptr %i.aoq, align 1, !tbaa !38
  %gep.i244.2.1456 = getelementptr i8, ptr %invariant.gep, i64 6
  store i8 %i.aor, ptr %gep.i244.2.1456, align 1, !tbaa !38
  %i.aos = lshr i32 %.0.i182.1, 3
  store i8 %.sroa.0.2..sroa.0.2..sroa.0.2.530, ptr %i.ar, align 1, !tbaa !38
  %i.aot = and i32 %i.aos, 1
  %i.aou = zext nneg i32 %i.aot to i64
  %i.aov = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aou
  %i.aow = load i8, ptr %i.aov, align 1, !tbaa !38
  %gep.i244.3.1457 = getelementptr i8, ptr %invariant.gep, i64 7
  store i8 %i.aow, ptr %gep.i244.3.1457, align 1, !tbaa !38
  %i.aox = lshr i32 %.0.i182.1, 4
  store i8 %.sroa.0.0..sroa.0.0..sroa.0.0.483, ptr %i.a, align 1, !tbaa !38
  %invariant.gep.i242.1.1 = getelementptr i8, ptr %gep387.1, i64 %i.y ; 4 uses
  store i8 %.sroa.0.1..sroa.0.1..sroa.0.1.500, ptr %i.ar, align 1, !tbaa !38
  %i.aoy = and i32 %i.aox, 1
  %i.aoz = zext nneg i32 %i.aoy to i64
  %i.apa = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aoz
  %i.apb = load i8, ptr %i.apa, align 1, !tbaa !38
  store i8 %i.apb, ptr %invariant.gep.i242.1.1, align 1, !tbaa !38
  %i.apc = lshr i32 %.0.i182.1, 5
  store i8 %.sroa.0.1..sroa.0.1..sroa.0.1.500, ptr %i.ar, align 1, !tbaa !38
  %i.apd = and i32 %i.apc, 1
  %i.ape = zext nneg i32 %i.apd to i64
  %i.apf = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ape
  %i.apg = load i8, ptr %i.apf, align 1, !tbaa !38
  %gep.i244.1.1.1 = getelementptr i8, ptr %invariant.gep.i242.1.1, i64 1
  store i8 %i.apg, ptr %gep.i244.1.1.1, align 1, !tbaa !38
  %i.aph = lshr i32 %.0.i182.1, 6
  store i8 %.sroa.0.2..sroa.0.2..sroa.0.2.530, ptr %i.ar, align 1, !tbaa !38
  %i.api = and i32 %i.aph, 1
  %i.apj = zext nneg i32 %i.api to i64
  %i.apk = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.apj
  %i.apl = load i8, ptr %i.apk, align 1, !tbaa !38
  %gep.i244.2.1.1 = getelementptr i8, ptr %invariant.gep.i242.1.1, i64 2
  store i8 %i.apl, ptr %gep.i244.2.1.1, align 1, !tbaa !38
  %i.apm = lshr i32 %.0.i182.1, 7
  store i8 %.sroa.0.2..sroa.0.2..sroa.0.2.530, ptr %i.ar, align 1, !tbaa !38
  %i.apn = and i32 %i.apm, 1
  %i.apo = zext nneg i32 %i.apn to i64
  %i.app = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.apo
  %i.apq = load i8, ptr %i.app, align 1, !tbaa !38
  %gep.i244.3.1.1 = getelementptr i8, ptr %invariant.gep.i242.1.1, i64 3
  store i8 %i.apq, ptr %gep.i244.3.1.1, align 1, !tbaa !38
  %i.apr = lshr i32 %.0.i182.1, 8
  %.sroa.0.3..sroa.0.3..sroa.0.3.548 = load i8, ptr %.sroa.0.3..sroa_idx811, align 1, !tbaa !38 ; 2 uses
  store i8 %.sroa.0.3..sroa.0.3..sroa.0.3.548, ptr %i.a, align 1, !tbaa !38
  %invariant.gep.i242.2.1 = getelementptr i8, ptr %gep387.1, i64 %i.bc ; 4 uses
  store i8 %.sroa.0.1..sroa.0.1..sroa.0.1.500, ptr %i.ar, align 1, !tbaa !38
  %i.aps = and i32 %i.apr, 1
  %i.apt = zext nneg i32 %i.aps to i64
  %i.apu = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.apt
  %i.apv = load i8, ptr %i.apu, align 1, !tbaa !38
  store i8 %i.apv, ptr %invariant.gep.i242.2.1, align 1, !tbaa !38
  %i.apw = lshr i32 %.0.i182.1, 9
  store i8 %.sroa.0.1..sroa.0.1..sroa.0.1.500, ptr %i.ar, align 1, !tbaa !38
  %i.apx = and i32 %i.apw, 1
  %i.apy = zext nneg i32 %i.apx to i64
  %i.apz = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.apy
  %i.aqa = load i8, ptr %i.apz, align 1, !tbaa !38
  %gep.i244.1.2.1 = getelementptr i8, ptr %invariant.gep.i242.2.1, i64 1
  store i8 %i.aqa, ptr %gep.i244.1.2.1, align 1, !tbaa !38
  %i.aqb = lshr i32 %.0.i182.1, 10
  store i8 %.sroa.0.2..sroa.0.2..sroa.0.2.530, ptr %i.ar, align 1, !tbaa !38
  %i.aqc = and i32 %i.aqb, 1
  %i.aqd = zext nneg i32 %i.aqc to i64
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aqd
  %i.aqf = load i8, ptr %i.aqe, align 1, !tbaa !38
  %gep.i244.2.2.1 = getelementptr i8, ptr %invariant.gep.i242.2.1, i64 2
  store i8 %i.aqf, ptr %gep.i244.2.2.1, align 1, !tbaa !38
  %i.aqg = lshr i32 %.0.i182.1, 11
  store i8 %.sroa.0.2..sroa.0.2..sroa.0.2.530, ptr %i.ar, align 1, !tbaa !38
  %i.aqh = and i32 %i.aqg, 1
  %i.aqi = zext nneg i32 %i.aqh to i64
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aqi
  %i.aqk = load i8, ptr %i.aqj, align 1, !tbaa !38
  %gep.i244.3.2.1 = getelementptr i8, ptr %invariant.gep.i242.2.1, i64 3
  store i8 %i.aqk, ptr %gep.i244.3.2.1, align 1, !tbaa !38
  %i.aql = lshr i32 %.0.i182.1, 12
  store i8 %.sroa.0.3..sroa.0.3..sroa.0.3.548, ptr %i.a, align 1, !tbaa !38
  %invariant.gep.i242.3.1 = getelementptr i8, ptr %gep387.1, i64 %i.bd ; 4 uses
  %.sroa.0.1..sroa.0.1..sroa.0.1.506 = load i8, ptr %.sroa.0.1..sroa_idx807, align 1, !tbaa !38 ; 2 uses
  store i8 %.sroa.0.1..sroa.0.1..sroa.0.1.506, ptr %i.ar, align 1, !tbaa !38
  %i.aqm = and i32 %i.aql, 1
  %i.aqn = zext nneg i32 %i.aqm to i64
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aqn
  %i.aqp = load i8, ptr %i.aqo, align 1, !tbaa !38
  store i8 %i.aqp, ptr %invariant.gep.i242.3.1, align 1, !tbaa !38
  %i.aqq = lshr i32 %.0.i182.1, 13
  store i8 %.sroa.0.1..sroa.0.1..sroa.0.1.506, ptr %i.ar, align 1, !tbaa !38
  %i.aqr = and i32 %i.aqq, 1
  %i.aqs = zext nneg i32 %i.aqr to i64
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aqs
  %i.aqu = load i8, ptr %i.aqt, align 1, !tbaa !38
  %gep.i244.1.3.1 = getelementptr i8, ptr %invariant.gep.i242.3.1, i64 1
  store i8 %i.aqu, ptr %gep.i244.1.3.1, align 1, !tbaa !38
  %i.aqv = lshr i32 %.0.i182.1, 14
  %.sroa.0.2..sroa.0.2..sroa.0.2.542 = load i8, ptr %.sroa.0.2..sroa_idx810, align 2, !tbaa !38 ; 2 uses
  store i8 %.sroa.0.2..sroa.0.2..sroa.0.2.542, ptr %i.ar, align 1, !tbaa !38
  %i.aqw = and i32 %i.aqv, 1
  %i.aqx = zext nneg i32 %i.aqw to i64
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aqx
  %i.aqz = load i8, ptr %i.aqy, align 1, !tbaa !38
  %gep.i244.2.3.1 = getelementptr i8, ptr %invariant.gep.i242.3.1, i64 2
  store i8 %i.aqz, ptr %gep.i244.2.3.1, align 1, !tbaa !38
  %i.ara = lshr i32 %.0.i182.1, 15
  store i8 %.sroa.0.2..sroa.0.2..sroa.0.2.542, ptr %i.ar, align 1, !tbaa !38
  br label %.split.us

.split.us:                                        ; preds = %bytestream2_get_le32.exit.us.1, %bytestream2_get_le16.exit184.us.1, %bytestream2_get_le16.exit.1
  %.sink734 = phi i32 [ %i.akq, %bytestream2_get_le32.exit.us.1 ], [ %i.aei, %bytestream2_get_le16.exit184.us.1 ], [ %i.ara, %bytestream2_get_le16.exit.1 ]
  %invariant.gep55.i231.us.3.1.sink = phi ptr [ %invariant.gep55.i231.us.3.1, %bytestream2_get_le32.exit.us.1 ], [ %invariant.gep55.i218.us.3.1, %bytestream2_get_le16.exit184.us.1 ], [ %invariant.gep.i242.3.1, %bytestream2_get_le16.exit.1 ]
  %.us-phi = phi ptr [ %.sroa.0.21.us.1, %bytestream2_get_le32.exit.us.1 ], [ %.sroa.0.18.us.1, %bytestream2_get_le16.exit184.us.1 ], [ %.sroa.0.17.1, %bytestream2_get_le16.exit.1 ] ; 2 uses
  %i.arb = zext nneg i32 %.sink734 to i64
  %i.arc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.arb
  %i.ard = load i8, ptr %i.arc, align 1, !tbaa !38
  %gep56.i234.us.3.3.1 = getelementptr i8, ptr %invariant.gep55.i231.us.3.1.sink, i64 3
  store i8 %i.ard, ptr %gep56.i234.us.3.3.1, align 1, !tbaa !38
  br i1 %i.xd, label %.preheader342, label %copy_block.exit.thread, !llvm.loop !48

bytestream2_get_byte.exit179.thread:              ; preds = %bb.i, %bytestream2_get_byte.exit179
  %i.are = phi i32 [ %i.cf, %bytestream2_get_byte.exit179 ], [ 0, %bb.i ]
  %i.arf = trunc nuw nsw i64 %indvars.iv475 to i32
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.3, i32 noundef %i.are, i32 noundef %i.by, i32 noundef %i.arf) #7
  br label %.thread329

.thread329:                                       ; preds = %.thread, %bb.t, %bytestream2_get_byte.exit179.thread, %copy_block.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.av

copy_block.exit.thread:                           ; preds = %.split.us, %.loopexit339.1, %bytestream2_get_byte.exit.7, %bytestream2_get_le16.exit188.thread, %.preheader346.preheader, %.loopexit43.i, %bytestream2_get_le16.exit188, %bytestream2_get_byte.exit179
  %.sroa.0.11 = phi ptr [ %i.ee, %bytestream2_get_le16.exit188 ], [ %.sroa.0.14.7, %bytestream2_get_byte.exit.7 ], [ %.sroa.0.19.1, %.loopexit339.1 ], [ %.sroa.0.20689694697, %.loopexit43.i ], [ %.sroa.0.2, %bytestream2_get_byte.exit179 ], [ %i.ac, %bytestream2_get_le16.exit188.thread ], [ %i.ea, %.preheader346.preheader ], [ %.us-phi, %.split.us ] ; 3 uses
  %i.arg = lshr i32 %.2148, 4                     ; 2 uses
  %i.arh = getelementptr inbounds nuw i8, ptr %.0156404, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %indvars.iv.next473 = add nuw nsw i64 %indvars.iv472, 8
  %i.ari = icmp samesign ult i64 %indvars.iv472, 312
  %indvars.iv.next470 = add nuw nsw i64 %indvars.iv469, 8
  br i1 %i.ari, label %bb.h, label %bb.an, !llvm.loop !49

bb.an:                                            ; preds = %copy_block.exit.thread
  %indvars.iv.next476 = add nuw nsw i64 %indvars.iv475, 8
  %i.arj = icmp samesign ult i64 %indvars.iv475, 184
  br i1 %i.arj, label %bb.g, label %bb.ao, !llvm.loop !50

bb.ao:                                            ; preds = %bb.an
  %i.ark = and i32 %.0.i180310, 1
  %.not175 = icmp eq i32 %i.ark, 0
  br i1 %.not175, label %bb.as, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.arl = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.arm = load ptr, ptr %i.arl, align 8, !tbaa !45
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bytestream2_get_be24.exit
  %indvars.iv478 = phi i64 [ 0, %bb.ap ], [ %indvars.iv.next479, %bytestream2_get_be24.exit ] ; 2 uses
  %.sroa.0.13410 = phi ptr [ %.sroa.0.11, %bb.ap ], [ %.sroa.0.22, %bytestream2_get_be24.exit ] ; 5 uses
  %i.arn = ptrtoint ptr %.sroa.0.13410 to i64
  %i.aro = sub i64 %i.ad, %i.arn
  %i.arp = icmp slt i64 %i.aro, 3
  br i1 %i.arp, label %bytestream2_get_be24.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.arq = getelementptr inbounds nuw i8, ptr %.sroa.0.13410, i64 3
  %i.arr = load i8, ptr %.sroa.0.13410, align 1, !tbaa !38
  %i.ars = zext i8 %i.arr to i32
  %i.art = shl nuw nsw i32 %i.ars, 16
  %i.aru = getelementptr inbounds nuw i8, ptr %.sroa.0.13410, i64 1
  %i.arv = load i8, ptr %i.aru, align 1, !tbaa !38
  %i.arw = zext i8 %i.arv to i32
  %i.arx = shl nuw nsw i32 %i.arw, 8
  %i.ary = getelementptr inbounds nuw i8, ptr %.sroa.0.13410, i64 2
  %i.arz = load i8, ptr %i.ary, align 1, !tbaa !38
  %i.asa = zext i8 %i.arz to i32
  %i.asb = or disjoint i32 %i.art, %i.arx
  %i.asc = or disjoint i32 %i.asb, %i.asa
  %i.asd = or disjoint i32 %i.asc, -16777216
  br label %bytestream2_get_be24.exit

bytestream2_get_be24.exit:                        ; preds = %bb.aq, %bb.ar
  %.sroa.0.22 = phi ptr [ %i.arq, %bb.ar ], [ %i.ac, %bb.aq ]
  %.0.i190 = phi i32 [ %i.asd, %bb.ar ], [ -16777216, %bb.aq ]
  %i.ase = getelementptr inbounds nuw [4 x i8], ptr %i.arm, i64 %indvars.iv478
  store i32 %.0.i190, ptr %i.ase, align 4, !tbaa !37
  %indvars.iv.next479 = add nuw nsw i64 %indvars.iv478, 1 ; 2 uses
  %exitcond481.not = icmp eq i64 %indvars.iv.next479, 256
  br i1 %exitcond481.not, label %.loopexit, label %bb.aq, !llvm.loop !51

bb.as:                                            ; preds = %bb.ao
  %i.asf = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.asg = load ptr, ptr %i.asf, align 8, !tbaa !45 ; 2 uses
  %.not176 = icmp eq ptr %i.asg, null
  br i1 %.not176, label %.loopexit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ash = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.asi = load ptr, ptr %i.ash, align 8, !tbaa !45
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %i.asi, ptr noundef nonnull align 1 dereferenceable(1024) %i.asg, i64 1024, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %bytestream2_get_be24.exit, %bb.as, %bb.at
  %i.asj = tail call i32 @av_frame_ref(ptr noundef %1, ptr noundef nonnull %i.l) #7 ; 2 uses
  %i.ask = icmp slt i32 %i.asj, 0
  br i1 %i.ask, label %bb.av, label %bb.au

bb.au:                                            ; preds = %.loopexit
  store i32 1, ptr %2, align 4, !tbaa !37
  br label %bb.av

bb.av:                                            ; preds = %.thread329, %.loopexit, %bb.b, %bb.a, %bb.au
  %.9 = phi i32 [ %i.e, %bb.au ], [ %i.q, %bb.a ], [ -1094995529, %.thread329 ], [ %i.u, %bb.b ], [ %i.asj, %.loopexit ]
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
end_hunk_2
