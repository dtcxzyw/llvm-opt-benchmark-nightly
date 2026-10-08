Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/dts2pts?download=true
inline.NumInlined: 6
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.AVBitStreamFilter = type { ptr, ptr, ptr }
%struct.DTS2PTSFrame = type { ptr, i32, i32, i32 }
%struct.DTS2PTSCollect = type { i32, ptr, ptr }

@.str = private unnamed_addr constant [8 x i8] c"dts2pts\00", align 1
@dts2pts_codec_ids = internal constant [3 x i32] [i32 27, i32 172, i32 0], align 4
@ff_dts2pts_bsf = local_unnamed_addr constant { %struct.AVBitStreamFilter, i32, [4 x i8], ptr, ptr, ptr, ptr } { %struct.AVBitStreamFilter { ptr @.str, ptr @dts2pts_codec_ids, ptr null }, i32 6336, [4 x i8] zeroinitializer, ptr @dts2pts_init, ptr @dts2pts_filter, ptr @dts2pts_close, ptr @dts2pts_flush }, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Assertion %s failed at %s:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"s->filter && s->fifo_size\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"libavcodec/bsf/dts2pts.c\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Failed to parse extradata.\0A\00", align 1
@func_tab = internal unnamed_addr constant [2 x { i32, [4 x i8], ptr, ptr, ptr, i64 }] [{ i32, [4 x i8], ptr, ptr, ptr, i64 } { i32 27, [4 x i8] zeroinitializer, ptr @h264_init, ptr @h264_filter, ptr @h264_flush, i64 64 }, { i32, [4 x i8], ptr, ptr, ptr, i64 } { i32 172, [4 x i8] zeroinitializer, ptr @hevc_init, ptr @hevc_filter, ptr @hevc_flush, i64 32 }], align 16
@h264_decompose_unit_types = internal constant [4 x i32] [i32 7, i32 8, i32 5, i32 1], align 16
@.str.6 = private unnamed_addr constant [30 x i8] c"Failed to parse access unit.\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"No active SPS for a slice\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"ff_h264_init_poc() failure\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"No slices in access unit\0A\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"Queueing frame with POC %d, GOP %d, dts %ld\0A\00", align 1
@.str.11 = private unnamed_addr constant [58 x i8] c"Queueing frame with POC %d, GOP %d, nb_frame %d, dts %ld\0A\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"Latency %d, poc %d, nb_frame %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [98 x i8] c"Queueing frame for POC %d, GOP %d, dts %ld, generated from POC %d, GOP %d, dts %ld, duration %ld\0A\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"No timestamp for POC %d in tree\0A\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"Evicting unconsumed POC %d, GOP %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [54 x i8] c"Returning frame for POC %d, GOP %d, dts %ld, pts %ld\0A\00", align 1

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @dts2pts_init(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !90
  switch i32 %i.g, label %bb.m [
    i32 27, label %bb.b
    i32 172, label %.fold.split
  ]

.fold.split:                                      ; preds = %bb.a
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.fold.split
  %.lcssa = phi ptr [ @func_tab, %bb.a ], [ getelementptr inbounds nuw (i8, ptr @func_tab, i64 40), %.fold.split ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.lcssa, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !92
  %i.l = load <2 x ptr>, ptr %i.h, align 8, !tbaa !93
  store <2 x ptr> %i.l, ptr %i.i, align 8, !tbaa !93
  %i.m = getelementptr inbounds nuw i8, ptr %.lcssa, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !94
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %i.n, ptr %i.o, align 8, !tbaa !30
  %i.p = getelementptr inbounds nuw i8, ptr %.lcssa, i64 32
  %i.q = load i64, ptr %i.p, align 8, !tbaa !95   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 %i.q, ptr %i.r, align 8, !tbaa !31
  %.not = icmp eq ptr %i.k, null
  %.not.a = icmp eq i64 %i.q, 0
  %or.cond = select i1 %.not, i1 true, i1 %.not.a
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 634) #12
  tail call void @abort() #13
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.s = tail call ptr @av_fifo_alloc2(i64 noundef %i.q, i64 noundef 24, i32 noundef 0) #12 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.s, ptr %i.t, align 8, !tbaa !32
  %.not46 = icmp eq ptr %i.s, null
  br i1 %.not46, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = tail call ptr @av_refstruct_pool_alloc(i64 noundef 40, i32 noundef 1) #12 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.u, ptr %i.v, align 8, !tbaa !33
  %.not47 = icmp eq ptr %i.u, null
  br i1 %.not47, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !16
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !90
  %i.aa = tail call i32 @ff_cbs_init(ptr noundef nonnull %i.w, i32 noundef %i.z, ptr noundef nonnull %0) #12 ; 2 uses
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr %i.i, align 8, !tbaa !96  ; 2 uses
  %.not48 = icmp eq ptr %i.ac, null
  br i1 %.not48, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = tail call i32 %i.ac(ptr noundef nonnull %0) #12 ; 2 uses
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.af = load ptr, ptr %i.d, align 8, !tbaa !16  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !97
  %.not49 = icmp eq i32 %i.ah, 0
  br i1 %.not49, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = load ptr, ptr %i.w, align 8, !tbaa !34
  %i.aj = tail call i32 @ff_cbs_read_extradata(ptr noundef %i.ai, ptr noundef nonnull %i.c, ptr noundef nonnull %i.af) #12
  %i.ak = icmp slt i32 %i.aj, 0
  br i1 %i.ak, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.4) #12
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  tail call void @ff_cbs_fragment_reset(ptr noundef nonnull %i.c) #12
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %bb.l
  %.039 = phi i32 [ 0, %bb.i ], [ -12, %bb.e ], [ %i.aa, %bb.f ], [ 0, %bb.l ], [ %i.ad, %bb.h ], [ -12, %bb.d ], [ -558323010, %bb.a ]
  ret i32 %.039
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @dts2pts_filter(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca [2 x ptr], align 16               ; 6 uses
  %2 = alloca %struct.DTS2PTSFrame, align 8       ; 14 uses
  %3 = alloca %struct.DTS2PTSFrame, align 8       ; 7 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %4 = alloca %struct.DTS2PTSFrame, align 8       ; 8 uses
  %i.d = alloca ptr, align 8                      ; 7 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !15   ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 6328 ; 7 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !35
  %.not84 = icmp eq i32 %i.i, 0
  br i1 %.not84, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !32
  %i.m = tail call i64 @av_fifo_can_write(ptr noundef %i.l) #12
  %.not63 = icmp eq i64 %i.m, 0
  br i1 %.not63, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !101
  %i.o = tail call i32 %i.n(ptr noundef %0) #12   ; 3 uses
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.not64 = icmp eq i32 %i.o, -541478725
  br i1 %.not64, label %.thread115, label %.loopexit

.thread115:                                       ; preds = %bb.d
  store i32 1, ptr %i.h, align 8, !tbaa !35
  br label %.critedge

bb.e:                                             ; preds = %bb.c
  %.pre = load i32, ptr %i.h, align 8, !tbaa !35
  %i.q = icmp eq i32 %.pre, 0
  br i1 %i.q, label %bb.b, label %.critedge, !llvm.loop !98

.critedge:                                        ; preds = %bb.b, %bb.e, %.thread115, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !32
  %i.t = tail call i64 @av_fifo_can_read(ptr noundef %i.s) #12
  %.not65 = icmp eq i64 %i.t, 0
  br i1 %.not65, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.critedge
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !32
  %i.v = call i32 @av_fifo_read(ptr noundef %i.u, ptr noundef nonnull %2, i64 noundef 1) #12 ; 0 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 6 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !39
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 6308 ; 3 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !40
  %i.aa = sub nsw i32 %i.z, %i.x
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !40
  %i.ab = load ptr, ptr %2, align 8, !tbaa !41
  call void @av_packet_move_ref(ptr noundef %1, ptr noundef %i.ab) #12
  call void @av_packet_free(ptr noundef nonnull %2) #12
  %i.ac = load ptr, ptr %i.g, align 8, !tbaa !42
  %i.ad = call ptr @av_tree_find(ptr noundef %i.ac, ptr noundef nonnull %2, ptr noundef nonnull @cmp_find, ptr noundef nonnull %i.b) #12 ; 3 uses
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !44
  %.not66 = icmp eq ptr %i.ad, null
  br i1 %.not66, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !44 ; 4 uses
  store ptr %i.af, ptr %i.a, align 8, !tbaa !44
  %.not67 = icmp eq ptr %i.af, null
  br i1 %.not67, label %thread-pre-split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !46
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !47
  %.not68 = icmp eq i32 %i.ah, %i.aj
  br i1 %.not68, label %.thread, label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.g, %bb.h
  %i.ak = load ptr, ptr %i.b, align 16, !tbaa !44 ; 3 uses
  store ptr %i.ak, ptr %i.a, align 8, !tbaa !44
  %.not69 = icmp eq ptr %i.ak, null
  br i1 %.not69, label %._crit_edge101, label %.thread

._crit_edge101:                                   ; preds = %thread-pre-split
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre102 = load i32, ptr %.phi.trans.insert, align 8
  br label %bb.p

.thread:                                          ; preds = %bb.h, %bb.f, %thread-pre-split
  %i.al = phi ptr [ %i.ak, %thread-pre-split ], [ %i.ad, %bb.f ], [ %i.af, %bb.h ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load i32, ptr %i.am, align 8, !tbaa !46 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !47 ; 2 uses
  %i.aq = icmp eq i32 %i.an, %i.ap
  br i1 %i.aq, label %bb.i, label %bb.p

bb.i:                                             ; preds = %.thread
  %i.ar = load i64, ptr %i.al, align 8, !tbaa !102 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !103
  %i.at = load i32, ptr %i.h, align 8, !tbaa !35
  %.not72 = icmp eq i32 %i.at, 0
  br i1 %.not72, label %bb.j, label %.critedge4

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  store ptr null, ptr %3, align 8, !tbaa !41
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.av = add nsw i32 %i.an, 1                    ; 2 uses
  store i32 %i.av, ptr %i.au, align 8, !tbaa !47
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  %i.ax = load <2 x i32>, ptr %i.w, align 4, !tbaa !49
  %i.ay = load i32, ptr %i.w, align 4, !tbaa !39  ; 2 uses
  store <2 x i32> %i.ax, ptr %i.aw, align 4, !tbaa !49
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 0, ptr %i.az, align 4
  %i.ba = icmp sgt i32 %i.ay, 0
  br i1 %i.ba, label %.lr.ph88.split.preheader, label %._crit_edge

.lr.ph88.split.preheader:                         ; preds = %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 6304 ; 2 uses
  br label %.lr.ph88.split

.lr.ph88.split:                                   ; preds = %.lr.ph88.split.preheader, %bb.o
  %i.bc = phi i32 [ %i.bw, %bb.o ], [ %i.ay, %.lr.ph88.split.preheader ] ; 2 uses
  %i.bd = phi i32 [ %i.bv, %bb.o ], [ %i.av, %.lr.ph88.split.preheader ] ; 2 uses
  %i.be = phi ptr [ %i.bu, %bb.o ], [ %i.al, %.lr.ph88.split.preheader ] ; 5 uses
  %.087 = phi i64 [ %.2, %bb.o ], [ %i.ar, %.lr.ph88.split.preheader ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store ptr null, ptr %i.c, align 8, !tbaa !50
  %.not73 = icmp eq ptr %i.be, null
  br i1 %.not73, label %bb.o, label %bb.k

bb.k:                                             ; preds = %.lr.ph88.split
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !102
  %.not74 = icmp eq i64 %i.bf, %.087
  br i1 %.not74, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %.not75 = icmp eq i64 %.087, -9223372036854775808
  br i1 %.not75, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !104
  %i.bi = load i32, ptr %i.w, align 4, !tbaa !39
  %i.bj = sext i32 %i.bi to i64
  %i.bk = sdiv i64 %i.bh, %i.bj
  %i.bl = add nsw i64 %i.bk, %.087
  br label %bb.n
end_hunk_0
