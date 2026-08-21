Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/ac3_parser?download=true
inline.NumInlined: 104
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.FFCodecParser = type { %struct.AVCodecParser, i32, ptr, ptr, ptr }
%struct.AVCodecParser = type { [7 x i32] }
%struct.GetBitContext = type { ptr, i32, i32, i32 }
%struct.AC3HeaderInfo = type { i16, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i16, i32, i32, i8, i16, i32, i8, i16, i64, i8, [2 x i8], [2 x i8], [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%union.anon = type { i64, [64 x i8] }

@center_levels = internal unnamed_addr constant [4 x i8] c"\04\05\06\05", align 1
@surround_levels = internal unnamed_addr constant [4 x i8] c"\04\06\07\06", align 1
@ff_ac3_sample_rate_tab = external hidden local_unnamed_addr constant [0 x i32], align 4
@ff_ac3_bitrate_tab = external hidden local_unnamed_addr constant [19 x i16], align 16
@ff_ac3_channels_tab = external hidden local_unnamed_addr constant [8 x i8], align 1
@ff_ac3_frame_size_tab = external hidden local_unnamed_addr constant [38 x [3 x i16]], align 16
@eac3_blocks = internal unnamed_addr constant [4 x i8] c"\01\02\03\06", align 1
@ff_ac3_channel_layout_tab = external hidden local_unnamed_addr constant [8 x i16], align 16
@ff_ac3_parser = local_unnamed_addr constant %struct.FFCodecParser { %struct.AVCodecParser { [7 x i32] [i32 86019, i32 86056, i32 0, i32 0, i32 0, i32 0, i32 0] }, i32 96, ptr @ac3_parse_init, ptr @ff_aac_ac3_parse, ptr @ff_parse_close }, align 8
@ff_eac3_custom_channel_map_locations = external hidden local_unnamed_addr constant [16 x [2 x i64]], align 16

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i32 @ff_ac3_find_syncword(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %1, 1
  br i1 %i.a, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %sext = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv ; 3 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !9     ; 3 uses
  switch i8 %i.c, label %bb.e [
    i8 119, label %bb.b
    i8 11, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph, %.lr.ph
  %i.d = getelementptr i8, ptr %i.b, i64 -1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !9
  %i.f = xor i8 %i.e, %i.c
  %i.g = icmp eq i8 %i.f, 124
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = trunc nuw nsw i64 %indvars.iv to i32
  %i.i = add nsw i32 %i.h, -1
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !9
  %i.l = xor i8 %i.k, %i.c
  %i.m = icmp eq i8 %i.l, 124
  br i1 %i.m, label %.loopexit.loopexit.split.loop.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %2 = icmp samesign ult i64 %indvars.iv.next, %sext
  br i1 %2, label %.lr.ph, label %.loopexit.loopexit.split.loop.exit, !llvm.loop !10

.loopexit.loopexit.split.loop.exit:               ; preds = %bb.d, %bb.e
  %.1.ph.in = phi i64 [ %indvars.iv, %bb.d ], [ %indvars.iv.next, %bb.e ]
  %i.n = trunc i64 %.1.ph.in to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.split.loop.exit, %bb.a, %bb.c
  %.1 = phi i32 [ %i.i, %bb.c ], [ 1, %bb.a ], [ %i.n, %.loopexit.loopexit.split.loop.exit ] ; 2 uses
  %.not = icmp slt i32 %.1, %1
  %.1. = select i1 %.not, i32 %.1, i32 -1094995529
  ret i32 %.1.
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -117640202, 1) i32 @ff_ac3_parse_header(ptr nofree noundef %0, ptr nofree noundef writeonly initializes((0, 72)) %1) local_unnamed_addr #2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %1, i8 0, i64 72, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 88 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !12   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 11 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !16   ; 20 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !17     ; 17 uses
  %i.f = lshr i32 %i.b, 3
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.g
  %i.i = load i32, ptr %i.h, align 1, !tbaa !9
  %i.j = tail call i32 @llvm.bswap.i32(i32 %i.i)
  %i.k = and i32 %i.b, 7
  %i.l = shl i32 %i.j, %i.k
  %i.m = lshr i32 %i.l, 16                        ; 2 uses
  %i.n = add i32 %i.b, 16
  %i.o = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.n) ; 5 uses
  store i32 %i.o, ptr %i.a, align 8, !tbaa !12
  %i.p = trunc nuw i32 %i.m to i16
  store i16 %i.p, ptr %1, align 8, !tbaa !18
  %.not = icmp eq i32 %i.m, 2935
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.q = lshr i32 %i.o, 3
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.r ; 2 uses
  %i.t = and i32 %i.o, 7                          ; 2 uses
  %i.u = add i32 %i.o, 16
  %i.v = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.u) ; 4 uses
  %i.w = lshr i32 %i.v, 3
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.x ; 2 uses
  %i.z = load i32, ptr %i.y, align 1, !tbaa !9
  %i.aa = tail call i32 @llvm.bswap.i32(i32 %i.z)
  %i.ab = and i32 %i.v, 7                         ; 2 uses
  %i.ac = shl i32 %i.aa, %i.ab                    ; 2 uses
  %i.ad = lshr i32 %i.ac, 19
  %i.ae = trunc i32 %i.ad to i8
  %i.af = and i8 %i.ae, 31                        ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !22
  %i.ah = and i32 %i.ac, 16252928
  %i.ai = icmp samesign ugt i32 %i.ah, 8388608
  br i1 %i.ai, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  store i32 6, ptr %i.aj, align 4, !tbaa !23
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  store i8 -1, ptr %i.ak, align 8, !tbaa !24
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store i32 5, ptr %i.al, align 8, !tbaa !25
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 4 uses
  store i32 6, ptr %i.am, align 4, !tbaa !26
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  store i32 0, ptr %i.an, align 8, !tbaa !27
  %i.ao = icmp samesign ult i8 %i.af, 11
  br i1 %i.ao, label %bb.d, label %bb.x

bb.d:                                             ; preds = %bb.c
  %i.ap = load i32, ptr %i.s, align 1, !tbaa !9
  %i.aq = tail call i32 @llvm.bswap.i32(i32 %i.ap)
  %i.ar = shl i32 %i.aq, %i.t
  %i.as = lshr i32 %i.ar, 16
  store i32 %i.v, ptr %i.a, align 8, !tbaa !12
  %i.at = trunc nuw i32 %i.as to i16
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i16 %i.at, ptr %i.au, align 2, !tbaa !28
  %i.av = load i32, ptr %i.y, align 1, !tbaa !9
  %i.aw = tail call i32 @llvm.bswap.i32(i32 %i.av)
  %i.ax = shl i32 %i.aw, %i.ab
  %i.ay = lshr i32 %i.ax, 30                      ; 3 uses
  %i.az = add i32 %i.v, 2
  %i.ba = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.az) ; 4 uses
  store i32 %i.ba, ptr %i.a, align 8, !tbaa !12
  %i.bb = trunc nuw nsw i32 %i.ay to i8
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 %i.bb, ptr %i.bc, align 4, !tbaa !29
  %i.bd = icmp eq i32 %i.ay, 3
  br i1 %i.bd, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.be = lshr i32 %i.ba, 3
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 1, !tbaa !9
  %i.bi = tail call i32 @llvm.bswap.i32(i32 %i.bh)
  %i.bj = and i32 %i.ba, 7
  %i.bk = shl i32 %i.bi, %i.bj                    ; 3 uses
  %i.bl = lshr i32 %i.bk, 26
  %i.bm = add i32 %i.ba, 6
  %i.bn = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.bm) ; 2 uses
  store i32 %i.bn, ptr %i.a, align 8, !tbaa !12
  %i.bo = icmp ugt i32 %i.bk, -1744830465
  br i1 %i.bo, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bp = lshr i32 %i.bk, 27                      ; 2 uses
  %i.bq = trunc nuw nsw i32 %i.bp to i8
  store i8 %i.bq, ptr %i.ak, align 8, !tbaa !24
  %i.br = add i32 %i.bn, 5
  %i.bs = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.br) ; 4 uses
  store i32 %i.bs, ptr %i.a, align 8, !tbaa !12
  %i.bt = lshr i32 %i.bs, 3
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 1, !tbaa !9
  %i.bx = tail call i32 @llvm.bswap.i32(i32 %i.bw)
  %i.by = and i32 %i.bs, 7
  %i.bz = shl i32 %i.bx, %i.by
  %i.ca = lshr i32 %i.bz, 29
  %i.cb = add i32 %i.bs, 3
  %i.cc = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.cb) ; 4 uses
  store i32 %i.cc, ptr %i.a, align 8, !tbaa !12
  %i.cd = trunc nuw nsw i32 %i.ca to i8
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i8 %i.cd, ptr %i.ce, align 2, !tbaa !30
  %i.cf = lshr i32 %i.cc, 3
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.cg
  %i.ci = load i32, ptr %i.ch, align 1, !tbaa !9
  %i.cj = tail call i32 @llvm.bswap.i32(i32 %i.ci)
  %i.ck = and i32 %i.cc, 7
  %i.cl = shl i32 %i.cj, %i.ck                    ; 3 uses
  %i.cm = lshr i32 %i.cl, 29                      ; 5 uses
  %i.cn = add i32 %i.cc, 3
  %i.co = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.cn) ; 8 uses
  store i32 %i.co, ptr %i.a, align 8, !tbaa !12
  %i.cp = trunc nuw nsw i32 %i.cm to i8           ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 7
  store i8 %i.cp, ptr %i.cq, align 1, !tbaa !31
  %i.cr = icmp eq i32 %i.cm, 2
  br i1 %i.cr, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cs = lshr i32 %i.co, 3
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 1, !tbaa !9
  %i.cw = tail call i32 @llvm.bswap.i32(i32 %i.cv)
  %i.cx = and i32 %i.co, 7
  %i.cy = shl i32 %i.cw, %i.cx
  %i.cz = lshr i32 %i.cy, 30
  %i.da = add i32 %i.co, 2
  %i.db = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.da) ; 2 uses
  store i32 %i.db, ptr %i.a, align 8, !tbaa !12
  store i32 %i.cz, ptr %i.an, align 8, !tbaa !27
  br label %.peel.begin

bb.h:                                             ; preds = %bb.f
  %i.dc = and i32 %i.cl, 536870912
  %.not115 = icmp eq i32 %i.dc, 0
  %.not116 = icmp eq i32 %i.cm, 1
  %or.cond = or i1 %.not115, %.not116
  br i1 %or.cond, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dd = lshr i32 %i.co, 3
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 1, !tbaa !9
  %i.dh = tail call i32 @llvm.bswap.i32(i32 %i.dg)
  %i.di = and i32 %i.co, 7
  %i.dj = shl i32 %i.dh, %i.di
  %i.dk = lshr i32 %i.dj, 30
  %i.dl = add i32 %i.co, 2
  %i.dm = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.dl) ; 2 uses
  store i32 %i.dm, ptr %i.a, align 8, !tbaa !12
  %i.dn = zext nneg i32 %i.dk to i64
  %i.do = getelementptr inbounds nuw i8, ptr @center_levels, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !9
  %i.dq = zext i8 %i.dp to i32
  store i32 %i.dq, ptr %i.al, align 8, !tbaa !25
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.dr = phi i32 [ %i.dm, %bb.i ], [ %i.co, %bb.h ] ; 4 uses
  %.not117 = icmp sgt i32 %i.cl, -1
  br i1 %.not117, label %.peel.begin, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ds = lshr i32 %i.dr, 3
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.dt
  %i.dv = load i32, ptr %i.du, align 1, !tbaa !9
  %i.dw = tail call i32 @llvm.bswap.i32(i32 %i.dv)
end_hunk_0
