Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/pcm-dvd?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [8 x i8] c"pcm_dvd\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"PCM signed 16|20|24-bit big-endian for DVD media\00", align 1
@ff_pcm_dvd_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 1, i32 65555, i32 1026, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 120, ptr null, ptr null, ptr null, ptr @pcm_dvd_decode_init, %union.anon { ptr @pcm_dvd_decode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"PCM packet too small\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"block_size has changed %d != %d\0A\00", align 1
@pcm_dvd_parse_header.frequencies = internal unnamed_addr constant [4 x i32] [i32 48000, i32 96000, i32 44100, i32 32000], align 16
@.str.4 = private unnamed_addr constant [45 x i8] c"pcm_dvd_parse_header: header = %02x%02x%02x\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"PCM DVD unsupported sample depth %i\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Assertion %s failed at %s:%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"buf && buf_size >= 0\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"libavcodec/bytestream.h\00", align 1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @pcm_dvd_decode_init(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  store i32 -1, ptr %i.b, align 4, !tbaa !30
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @pcm_dvd_decode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !37   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !28   ; 20 uses
  %i.g = icmp slt i32 %i.d, 3
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.2) #7
  br label %bb.z

bb.c:                                             ; preds = %bb.a
  %i.h = load i8, ptr %i.b, align 1, !tbaa !31
  %i.i = and i8 %i.h, -32
  %i.j = zext i8 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 5 uses
  %4 = load i8, ptr %i.k, align 1, !tbaa !31
  %i.l = zext i8 %4 to i32
  %i.m = shl nuw nsw i32 %i.l, 8
  %5 = or disjoint i32 %i.m, %i.j
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 2 uses
  %6 = load i8, ptr %i.n, align 1, !tbaa !31
  %7 = zext i8 %6 to i32
  %8 = shl nuw nsw i32 %7, 16
  %i.o = or disjoint i32 %5, %8                   ; 2 uses
  %i.p = load i32, ptr %i.f, align 4, !tbaa !30
  %i.q = icmp eq i32 %i.p, %i.o
  br i1 %i.q, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 -1, ptr %i.f, align 4, !tbaa !30
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 524
  %i.s = load i32, ptr %i.r, align 4, !tbaa !38
  %i.t = and i32 %i.s, 1
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = load i8, ptr %i.b, align 1, !tbaa !31
  %i.v = zext i8 %i.u to i32
  %i.w = load i8, ptr %i.k, align 1, !tbaa !31
  %i.x = zext i8 %i.w to i32
  %i.y = load i8, ptr %i.n, align 1, !tbaa !31
  %i.z = zext i8 %i.y to i32
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 48, ptr noundef nonnull @.str.4, i32 noundef %i.v, i32 noundef %i.x, i32 noundef %i.z) #7
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  store i32 0, ptr %i.aa, align 4, !tbaa !39
  %i.ab = load i8, ptr %i.k, align 1, !tbaa !31
  %i.ac = lshr i8 %i.ab, 4
  %i.ad = and i8 %i.ac, 12                        ; 3 uses
  %i.ae = or disjoint i8 %i.ad, 16
  %i.af = zext nneg i8 %i.ae to i32               ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  store i32 %i.af, ptr %i.ag, align 8, !tbaa !32
  %i.ah = icmp eq i8 %i.ad, 12
  br i1 %i.ah, label %pcm_dvd_parse_header.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = icmp eq i8 %i.ad, 0
  %i.aj = select i1 %i.ai, i32 1, i32 2
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 348
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !40
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 652
  store i32 %i.af, ptr %i.al, align 4, !tbaa !41
  %i.am = load i8, ptr %i.k, align 1, !tbaa !31
  %i.an = lshr i8 %i.am, 4
  %i.ao = and i8 %i.an, 3
  %i.ap = zext nneg i8 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr @pcm_dvd_parse_header.frequencies, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !33
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  store i32 %i.ar, ptr %i.as, align 8, !tbaa !42
  %i.at = load i8, ptr %i.k, align 1, !tbaa !31
  %i.au = and i8 %i.at, 7
  %narrow.i = add nuw nsw i8 %i.au, 1
  %i.av = zext nneg i8 %narrow.i to i32           ; 7 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  tail call void @av_channel_layout_uninit(ptr noundef nonnull %i.aw) #7
  tail call void @av_channel_layout_default(ptr noundef nonnull %i.aw, i32 noundef %i.av) #7
  %i.ax = load i32, ptr %i.as, align 8, !tbaa !42
  %i.ay = mul nsw i32 %i.ax, %i.av
  %i.az = load i32, ptr %i.ag, align 8, !tbaa !32 ; 5 uses
  %i.ba = mul nsw i32 %i.ay, %i.az
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !43
  %i.bd = icmp eq i32 %i.az, 16
  br i1 %i.bd, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.be = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 1, ptr %i.be, align 4, !tbaa !44
  %i.bf = shl nuw nsw i32 %i.av, 1
  br label %bb.m

bb.i:                                             ; preds = %bb.g
  %i.bg = tail call range(i32 1, 5) i32 @llvm.ctpop.i32(i32 %i.av)
  %i.bh = icmp eq i32 %i.bg, 1
  br i1 %i.bh, label %.split.i, label %bb.l

.split.i:                                         ; preds = %bb.i
  %i.bi = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.av, i1 true) ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 3
  br i1 %i.bj, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.split.i
  %i.bk = sdiv i32 %i.az, 2
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %i.bk, ptr %i.bl, align 4, !tbaa !34
  %i.bm = lshr i32 4, %i.bi
  %i.bn = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !44
  br label %bb.m

bb.k:                                             ; preds = %.split.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %i.az, ptr %i.bo, align 4, !tbaa !34
  %i.bp = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 1, ptr %i.bp, align 4, !tbaa !44
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.bq = shl nuw nsw i32 %i.av, 2
  %i.br = mul nsw i32 %i.bq, %i.az
  %i.bs = sdiv i32 %i.br, 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !34
  %i.bu = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 4, ptr %i.bu, align 4, !tbaa !44
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.h
  %.sink63.i = phi i64 [ 16, %bb.j ], [ 16, %bb.k ], [ 16, %bb.l ], [ 4, %bb.h ]
  %.sink.i = phi i32 [ 1, %bb.j ], [ 2, %bb.k ], [ %i.av, %bb.l ], [ %i.bf, %bb.h ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sink63.i
  store i32 %.sink.i, ptr %i.bv, align 4, !tbaa !33
  store i32 %i.o, ptr %i.f, align 4, !tbaa !30
  br label %bb.n

pcm_dvd_parse_header.exit:                        ; preds = %bb.f
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.5, i32 noundef 28) #7
  br label %bb.z

bb.n:                                             ; preds = %bb.m, %bb.c
  %i.bw = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !45 ; 3 uses
  %.not92 = icmp eq i32 %i.bx, 0
  br i1 %.not92, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.by = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !34 ; 2 uses
  %.not93 = icmp eq i32 %i.bx, %i.bz
  br i1 %.not93, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.3, i32 noundef %i.bx, i32 noundef %i.bz) #7
  %i.ca = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  store i32 0, ptr %i.ca, align 4, !tbaa !39
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.cb = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 4 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !34 ; 2 uses
  store i32 %i.cc, ptr %i.bw, align 4, !tbaa !45
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 3 ; 4 uses
  %i.ce = add nsw i32 %i.d, -3                    ; 6 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.f, i64 20 ; 6 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !39
  %i.ch = add nsw i32 %i.cg, %i.ce
  %i.ci = sdiv i32 %i.ch, %i.cc                   ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !44
  %i.cl = mul nsw i32 %i.ck, %i.ci
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i32 %i.cl, ptr %i.cm, align 8, !tbaa !50
  %i.cn = tail call i32 @ff_get_buffer(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0) #7 ; 2 uses
  %i.co = icmp slt i32 %i.cn, 0
  br i1 %i.co, label %bb.z, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cp = load ptr, ptr %1, align 8, !tbaa !51    ; 2 uses
  %i.cq = load i32, ptr %i.cf, align 4, !tbaa !39 ; 3 uses
  %.not94 = icmp eq i32 %i.cq, 0
  br i1 %.not94, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cr = load i32, ptr %i.cb, align 4, !tbaa !34
  %i.cs = sub nsw i32 %i.cr, %i.cq                ; 3 uses
  %.not95.not = icmp slt i32 %i.ce, %i.cs
  %i.ct = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.cu = sext i32 %i.cq to i64
  %i.cv = getelementptr inbounds i8, ptr %i.ct, i64 %i.cu ; 2 uses
  br i1 %.not95.not, label %.thread, label %bb.t

.thread:                                          ; preds = %bb.s
  %i.cw = zext nneg i32 %i.ce to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cv, ptr nonnull align 1 %i.cd, i64 %i.cw, i1 false)
  %i.cx = load i32, ptr %i.cf, align 4, !tbaa !39
  %i.cy = add nsw i32 %i.cx, %i.ce
  store i32 %i.cy, ptr %i.cf, align 4, !tbaa !39
  %i.cz = load i32, ptr %i.c, align 8, !tbaa !37
  br label %bb.z

bb.t:                                             ; preds = %bb.s
  %i.da = sext i32 %i.cs to i64                   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cv, ptr nonnull align 1 %i.cd, i64 %i.da, i1 false)
  %i.db = tail call fastcc ptr @pcm_dvd_decode_samples(ptr noundef nonnull %0, ptr noundef nonnull %i.ct, ptr noundef %i.cp, i32 noundef 1)
  %i.dc = getelementptr inbounds i8, ptr %i.cd, i64 %i.da
  %i.dd = sub nsw i32 %i.ce, %i.cs
  store i32 0, ptr %i.cf, align 4, !tbaa !39
  %i.de = add nsw i32 %i.ci, -1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r
  %.180 = phi ptr [ %i.dc, %bb.t ], [ %i.cd, %bb.r ] ; 2 uses
  %.178 = phi i32 [ %i.dd, %bb.t ], [ %i.ce, %bb.r ] ; 2 uses
  %.176 = phi i32 [ %i.de, %bb.t ], [ %i.ci, %bb.r ] ; 4 uses
  %.1 = phi ptr [ %i.db, %bb.t ], [ %i.cp, %bb.r ]
  %.not96 = icmp eq i32 %.176, 0
  br i1 %.not96, label %bb.w, label %bb.v

end_hunk_0
