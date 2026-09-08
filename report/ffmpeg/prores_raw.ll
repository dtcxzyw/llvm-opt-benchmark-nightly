Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/prores_raw?download=true
inline.NumInlined: 29
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, ptr }
%struct.BitstreamContextBE = type { i64, ptr, ptr, ptr, i32, i32 }

@ff_prores_raw_dc_cb = local_unnamed_addr constant [13 x i8] c"\10!2333DDDDDDv", align 1
@ff_prores_raw_ac_cb = local_unnamed_addr constant [95 x i16] [i16 0, i16 529, i16 273, i16 273, i16 546, i16 546, i16 546, i16 290, i16 290, i16 290, i16 563, i16 563, i16 563, i16 563, i16 563, i16 563, i16 563, i16 563, i16 307, i16 307, i16 580, i16 580, i16 580, i16 580, i16 580, i16 580, i16 580, i16 580, i16 580, i16 580, i16 580, i16 580, i16 580, i16 580, i16 580, i16 580, i16 580, i16 580, i16 580, i16 580, i16 580, i16 580, i16 853, i16 853, i16 853, i16 853, i16 853, i16 853, i16 853, i16 853, i16 853, i16 853, i16 853, i16 853, i16 853, i16 853, i16 853, i16 853, i16 853, i16 853, i16 853, i16 853, i16 853, i16 853, i16 853, i16 853, i16 853, i16 853, i16 853, i16 853, i16 853, i16 853, i16 853, i16 853, i16 853, i16 853, i16 853, i16 853, i16 853, i16 853, i16 853, i16 853, i16 853, i16 853, i16 853, i16 853, i16 853, i16 853, i16 853, i16 853, i16 853, i16 853, i16 853, i16 853, i16 358], align 16
@ff_prores_raw_rn_cb = local_unnamed_addr constant [28 x i16] [i16 512, i16 256, i16 0, i16 0, i16 529, i16 529, i16 273, i16 273, i16 17, i16 17, i16 33, i16 33, i16 546, i16 34, i16 34, i16 34, i16 34, i16 34, i16 34, i16 34, i16 34, i16 34, i16 34, i16 34, i16 34, i16 50, i16 50, i16 68], align 16
@ff_prores_raw_ln_cb = local_unnamed_addr constant [15 x i16] [i16 256, i16 273, i16 546, i16 546, i16 290, i16 290, i16 1075, i16 1075, i16 563, i16 563, i16 563, i16 563, i16 563, i16 563, i16 51], align 16
@.str = private unnamed_addr constant [11 x i8] c"prores_raw\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Apple ProRes RAW\00", align 1
@.compoundliteral = internal constant [1 x ptr] zeroinitializer, align 8
@ff_prores_raw_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 0, i32 271, i32 12290, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 10, i8 0, i8 0, i8 1, i32 320, ptr @update_thread_context, ptr null, ptr null, ptr @decode_init, %union.anon { ptr @decode_frame }, ptr @decode_end, ptr null, ptr null, ptr @.compoundliteral, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@ff_prores_interlaced_scan = external constant [64 x i8], align 16
@.str.2 = private unnamed_addr constant [11 x i8] c"Profile %d\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Version %d\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"picture resolution change: %ix%i -> %ix%i\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"Bayer pattern %d\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"Invalid tile alignment %d (max 4)\0A\00", align 1
@decode_frame.default_lin_curve = internal unnamed_addr constant [8 x i16] [i16 0, i16 512, i16 1024, i16 2048, i16 4096, i16 8192, i16 16384, i16 -32768], align 16
@.str.7 = private unnamed_addr constant [22 x i8] c"%dx%d | nb_tiles: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Assertion %s failed at %s:%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"buf && buf_size >= 0\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"libavcodec/bytestream.h\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"tile %d/%d decoding error\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @update_thread_context(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  %i.f = load i32, ptr %i.e, align 4, !tbaa !34
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 148
  store i32 %i.f, ptr %i.g, align 4, !tbaa !34
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.i = load i32, ptr %i.h, align 8, !tbaa !35
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  store i32 %i.i, ptr %i.j, align 8, !tbaa !35
  ret i32 0
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @decode_init(ptr nofree noundef captures(none) initializes((144, 156), (652, 656)) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 652
  store i32 16, ptr %i.c, align 4, !tbaa !56
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144
  store <2 x i32> <i32 2, i32 8>, ptr %i.d, align 8, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 2, ptr %i.e, align 8, !tbaa !57
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  store i32 -1, ptr %i.f, align 4, !tbaa !34
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  tail call void @ff_blockdsp_init(ptr noundef nonnull %i.g) #10
  tail call void @ff_proresdsp_init(ptr noundef %i.b, i32 noundef 12) #10
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  tail call void @ff_permute_scantable(ptr noundef nonnull %i.h, ptr noundef nonnull @ff_prores_interlaced_scan, ptr noundef nonnull %i.i) #10
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @decode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #2 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 5 uses
  %i.b = alloca [64 x i8], align 16               ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28   ; 21 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 168 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, i8 1, i64 64, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.h = load i32, ptr %i.g, align 8, !tbaa !62
  %i.i = icmp sgt i32 %i.h, 47
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.k = load i32, ptr %i.j, align 8, !tbaa !64
  br label %bytestream2_get_be32.exit315.thread

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.m = load i32, ptr %i.l, align 4, !tbaa !65   ; 2 uses
  switch i32 %i.m, label %bb.e [
    i32 0, label %bb.f
    i32 1852993633, label %.sink.split
    i32 1752330337, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  br label %.sink.split

bb.e:                                             ; preds = %bb.c
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef nonnull %0, ptr noundef nonnull @.str.2, i32 noundef %i.m) #10
  br label %bytestream2_get_be32.exit315.thread

.sink.split:                                      ; preds = %bb.c, %bb.d
  %.sink = phi i32 [ 1, %bb.d ], [ 0, %bb.c ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 688
  store i32 %.sink, ptr %i.n, align 8, !tbaa !66
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !67   ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 4 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !64   ; 4 uses
  %i.s = icmp ne ptr %i.p, null
  %i.t = icmp sgt i32 %i.r, -1
  %or.cond.i306 = and i1 %i.s, %i.t
  br i1 %or.cond.i306, label %bytestream2_init.exit307, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 141) #10
  tail call void @abort() #11
  unreachable

bytestream2_init.exit307:                         ; preds = %bb.f
  %i.u = zext nneg i32 %i.r to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.u ; 3 uses
  %i.w = ptrtoint ptr %i.v to i64                 ; 6 uses
  %i.x = ptrtoint ptr %i.p to i64
  %i.y = icmp samesign ult i32 %i.r, 4
  br i1 %i.y, label %bytestream2_get_be32.exit317, label %bb.h

bb.h:                                             ; preds = %bytestream2_init.exit307
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 2 uses
  %i.aa = load i32, ptr %i.p, align 1, !tbaa !37
  %i.ab = tail call i32 @llvm.bswap.i32(i32 %i.aa)
  %.pre567 = ptrtoint ptr %i.z to i64
  br label %bytestream2_get_be32.exit317

bytestream2_get_be32.exit317:                     ; preds = %bytestream2_init.exit307, %bb.h
  %.pre-phi = phi i64 [ %i.w, %bytestream2_init.exit307 ], [ %.pre567, %bb.h ]
  %.sroa.0402.6 = phi ptr [ %i.v, %bytestream2_init.exit307 ], [ %i.z, %bb.h ] ; 7 uses
  %.0.i316 = phi i32 [ 0, %bytestream2_init.exit307 ], [ %i.ab, %bb.h ]
  %.not = icmp ne i32 %.0.i316, %i.r
  %i.ac = sub i64 %i.w, %.pre-phi
  %i.ad = icmp slt i64 %i.ac, 4
  %or.cond470 = select i1 %.not, i1 true, i1 %i.ad
  br i1 %or.cond470, label %bytestream2_get_be32.exit315.thread, label %bytestream2_get_be32.exit315

bytestream2_get_be32.exit315:                     ; preds = %bytestream2_get_be32.exit317
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0402.6, i64 4 ; 2 uses
  %i.af = load i32, ptr %.sroa.0402.6, align 1, !tbaa !37
  %.not284 = icmp ne i32 %i.af, 1718776432
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.w, %i.ag
  %i.ai = icmp slt i64 %i.ah, 2
  %or.cond473 = select i1 %.not284, i1 true, i1 %i.ai
  br i1 %or.cond473, label %bytestream2_get_be32.exit315.thread, label %bytestream2_get_be16.exit334

bytestream2_get_be16.exit334:                     ; preds = %bytestream2_get_be32.exit315
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0402.6, i64 6 ; 3 uses
  %i.ak = load i16, ptr %i.ae, align 1, !tbaa !37
  %i.al = tail call i16 @llvm.bswap.i16(i16 %i.ak) ; 2 uses
  %i.am = icmp ult i16 %i.al, 62
  br i1 %i.am, label %bytestream2_get_be32.exit315.thread, label %bb.i

bb.i:                                             ; preds = %bytestream2_get_be16.exit334
  %i.an = zext i16 %i.al to i32
  %i.ao = ptrtoint ptr %i.aj to i64
  %i.ap = sub i64 %i.w, %i.ao                     ; 2 uses
  %i.aq = trunc i64 %i.ap to i32
  %i.ar = add nsw i32 %i.an, -2                   ; 3 uses
  %i.as = icmp sgt i32 %i.ar, %i.aq
  br i1 %i.as, label %bytestream2_get_be32.exit315.thread, label %bytestream2_init.exit305

bytestream2_init.exit305:                         ; preds = %bb.i
  %i.at = zext nneg i32 %i.ar to i64              ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.at ; 28 uses
  %..i336 = tail call i64 @llvm.smin.i64(i64 %i.ap, i64 %i.at)
  %i.av = getelementptr inbounds i8, ptr %i.aj, i64 %..i336 ; 2 uses
  %i.aw = ptrtoint ptr %i.au to i64               ; 55 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0402.6, i64 7
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !37  ; 2 uses
  %i.az = zext i8 %i.ay to i32                    ; 2 uses
  store i32 %i.az, ptr %i.e, align 8, !tbaa !35
  %i.ba = icmp ugt i8 %i.ay, 1
  br i1 %i.ba, label %bb.j, label %bytestream2_get_byte.exit345._crit_edge

bb.j:                                             ; preds = %bytestream2_init.exit305
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef nonnull %0, ptr noundef nonnull @.str.3, i32 noundef %i.az) #10
  br label %bytestream2_get_be32.exit315.thread

bytestream2_get_byte.exit345._crit_edge:          ; preds = %bytestream2_init.exit305
  %4 = getelementptr i8, ptr %.sroa.0402.6, i64 12
  %5 = load i16, ptr %4, align 1, !tbaa !37
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %7 = zext i16 %6 to i32                         ; 5 uses
  %8 = icmp ult i32 %i.ar, 10
  br i1 %8, label %bytestream2_get_be16.exit330, label %9

9:                                                ; preds = %bytestream2_get_byte.exit345._crit_edge
  %10 = getelementptr i8, ptr %.sroa.0402.6, i64 14
  %11 = getelementptr i8, ptr %.sroa.0402.6, i64 16
  %12 = load i16, ptr %10, align 1, !tbaa !37
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  %14 = zext i16 %13 to i32
  br label %bytestream2_get_be16.exit330

bytestream2_get_be16.exit330:                     ; preds = %bytestream2_get_byte.exit345._crit_edge, %9
  %.sroa.0.13 = phi ptr [ %11, %9 ], [ %i.au, %bytestream2_get_byte.exit345._crit_edge ] ; 3 uses
  %.0.i329 = phi i32 [ %14, %9 ], [ 0, %bytestream2_get_byte.exit345._crit_edge ] ; 5 uses
  %i.bb = and i32 %7, 1
  %.not285 = icmp eq i32 %i.bb, 0
  %i.bc = and i32 %.0.i329, 1
  %.not286 = icmp eq i32 %i.bc, 0
  %or.cond301 = select i1 %.not285, i1 %.not286, i1 false
  br i1 %or.cond301, label %bb.k, label %bytestream2_get_be32.exit315.thread

bb.k:                                             ; preds = %bytestream2_get_be16.exit330
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !38 ; 2 uses
  %.not287 = icmp ne i32 %i.be, %7
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !68 ; 2 uses
  %.not288 = icmp ne i32 %.0.i329, %i.bg
  %or.cond657.not = select i1 %.not287, i1 true, i1 %.not288 ; 2 uses
  br i1 %or.cond657.not, label %._crit_edge566, label %bb.l

._crit_edge566:                                   ; preds = %bb.k
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.4, i32 noundef %i.be, i32 noundef %i.bg, i32 noundef %7, i32 noundef %.0.i329) #10
  %i.bh = tail call i32 @ff_set_dimensions(ptr noundef nonnull %0, i32 noundef %7, i32 noundef %.0.i329) #10 ; 2 uses
  %i.bi = icmp slt i32 %i.bh, 0
  br i1 %i.bi, label %bytestream2_get_be32.exit315.thread, label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge566
  %i.bj = add nuw nsw i32 %7, 14                  ; 2 uses
  %i.bk = and i32 %i.bj, 131056
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 %i.bk, ptr %i.bl, align 8, !tbaa !69
  %i.bm = add nuw nsw i32 %.0.i329, 14            ; 2 uses
  %i.bn = and i32 %i.bm, 131056
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !70
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 148 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !34
  %i.br = icmp ne i32 %i.bq, 145
  %or.cond = or i1 %or.cond657.not, %i.br
  br i1 %or.cond, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bs = load i32, ptr %i.e, align 8, !tbaa !35
  %.not289 = icmp eq i32 %i.bs, %i.f
  br i1 %.not289, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  store i32 145, ptr %i.bp, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 145, ptr %i.a, align 4, !tbaa !36
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 -1, ptr %i.bt, align 4, !tbaa !36
  %i.bu = call i32 @ff_get_format(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #10 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.bv = icmp slt i32 %i.bu, 0
  br i1 %i.bv, label %bytestream2_get_be32.exit315.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %i.bu, ptr %i.bw, align 8, !tbaa !71
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m
  %15 = ptrtoint ptr %.sroa.0.13 to i64
  %16 = sub i64 %i.aw, %15
  %17 = icmp slt i64 %16, 1
  br i1 %17, label %bytestream2_get_byte.exit343, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.13, i64 1 ; 2 uses
  %i.by = load i8, ptr %.sroa.0.13, align 1, !tbaa !37
  %i.bz = zext i8 %i.by to i64
  %.pre570 = ptrtoint ptr %i.bx to i64
  br label %bytestream2_get_byte.exit343

bytestream2_get_byte.exit343:                     ; preds = %bb.p, %bb.q
  %.pre-phi571 = phi i64 [ %i.aw, %bb.p ], [ %.pre570, %bb.q ]
  %.sroa.0.18 = phi ptr [ %i.au, %bb.p ], [ %i.bx, %bb.q ] ; 2 uses
  %.0.i342 = phi i64 [ 0, %bb.p ], [ %i.bz, %bb.q ]
  %i.ca = sub i64 %i.aw, %.pre-phi571
  %i.cb = icmp slt i64 %i.ca, 1
  br i1 %i.cb, label %bytestream2_get_byte.exit341, label %bb.r

bb.r:                                             ; preds = %bytestream2_get_byte.exit343
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.18, i64 1 ; 2 uses
  %i.cd = load i8, ptr %.sroa.0.18, align 1, !tbaa !37
  %i.ce = zext i8 %i.cd to i64
  %.pre572 = ptrtoint ptr %i.cc to i64
  br label %bytestream2_get_byte.exit341

bytestream2_get_byte.exit341:                     ; preds = %bytestream2_get_byte.exit343, %bb.r
  %.pre-phi573 = phi i64 [ %i.aw, %bytestream2_get_byte.exit343 ], [ %.pre572, %bb.r ]
  %.sroa.0.17 = phi ptr [ %i.au, %bytestream2_get_byte.exit343 ], [ %i.cc, %bb.r ] ; 2 uses
  %.0.i340 = phi i64 [ 0, %bytestream2_get_byte.exit343 ], [ %i.ce, %bb.r ]
  %i.cf = sub i64 %i.aw, %.pre-phi573
  %i.cg = icmp slt i64 %i.cf, 1
  br i1 %i.cg, label %bytestream2_get_byte.exit339, label %bb.s

bb.s:                                             ; preds = %bytestream2_get_byte.exit341
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.17, i64 1 ; 2 uses
  %i.ci = load i8, ptr %.sroa.0.17, align 1, !tbaa !37
  %i.cj = zext i8 %i.ci to i64
  %.pre574 = ptrtoint ptr %i.ch to i64
  br label %bytestream2_get_byte.exit339

bytestream2_get_byte.exit339:                     ; preds = %bytestream2_get_byte.exit341, %bb.s
  %.pre-phi575 = phi i64 [ %i.aw, %bytestream2_get_byte.exit341 ], [ %.pre574, %bb.s ]
  %.sroa.0.16 = phi ptr [ %i.au, %bytestream2_get_byte.exit341 ], [ %i.ch, %bb.s ] ; 2 uses
  %.0.i338 = phi i64 [ 0, %bytestream2_get_byte.exit341 ], [ %i.cj, %bb.s ]
  %i.ck = sub i64 %i.aw, %.pre-phi575
  %i.cl = icmp slt i64 %i.ck, 1
  br i1 %i.cl, label %bytestream2_get_byte.exit, label %bb.t

bb.t:                                             ; preds = %bytestream2_get_byte.exit339
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.0.16, i64 1 ; 2 uses
  %i.cn = load i8, ptr %.sroa.0.16, align 1, !tbaa !37
  %i.co = zext i8 %i.cn to i64
  %.pre576 = ptrtoint ptr %i.cm to i64
  br label %bytestream2_get_byte.exit

bytestream2_get_byte.exit:                        ; preds = %bytestream2_get_byte.exit339, %bb.t
  %.pre-phi577 = phi i64 [ %i.aw, %bytestream2_get_byte.exit339 ], [ %.pre576, %bb.t ]
  %.sroa.0.15 = phi ptr [ %i.au, %bytestream2_get_byte.exit339 ], [ %i.cm, %bb.t ] ; 2 uses
  %.0.i337 = phi i64 [ 0, %bytestream2_get_byte.exit339 ], [ %i.co, %bb.t ]
  %i.cp = sub i64 %i.aw, %.pre-phi577
  %i.cq = icmp slt i64 %i.cp, 2
  br i1 %i.cq, label %bytestream2_get_be16.exit328.thread, label %bytestream2_get_be16.exit328

bytestream2_get_be16.exit328:                     ; preds = %bytestream2_get_byte.exit
  %i.cr = load i16, ptr %.sroa.0.15, align 1, !tbaa !37
  %i.cs = lshr i16 %i.cr, 8
  %i.ct = and i16 %i.cs, 3                        ; 2 uses
  %.not290 = icmp eq i16 %i.ct, 0
  br i1 %.not290, label %bytestream2_get_be16.exit328.bytestream2_get_be16.exit328.thread_crit_edge, label %bb.u

bytestream2_get_be16.exit328.bytestream2_get_be16.exit328.thread_crit_edge: ; preds = %bytestream2_get_be16.exit328
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.15, i64 2 ; 2 uses
  %.pre620 = ptrtoint ptr %i.cu to i64
  br label %bytestream2_get_be16.exit328.thread

bb.u:                                             ; preds = %bytestream2_get_be16.exit328
  %i.cv = zext nneg i16 %i.ct to i32
  call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef nonnull %0, ptr noundef nonnull @.str.5, i32 noundef %i.cv) #10
  br label %bytestream2_get_be32.exit315.thread

bytestream2_get_be16.exit328.thread:              ; preds = %bytestream2_get_be16.exit328.bytestream2_get_be16.exit328.thread_crit_edge, %bytestream2_get_byte.exit
  %.pre-phi621 = phi i64 [ %.pre620, %bytestream2_get_be16.exit328.bytestream2_get_be16.exit328.thread_crit_edge ], [ %i.aw, %bytestream2_get_byte.exit ]
  %.sroa.0.12433 = phi ptr [ %i.cu, %bytestream2_get_be16.exit328.bytestream2_get_be16.exit328.thread_crit_edge ], [ %i.au, %bytestream2_get_byte.exit ] ; 2 uses
  %i.cw = sub i64 %i.aw, %.pre-phi621
  %i.cx = icmp slt i64 %i.cw, 2
  br i1 %i.cx, label %bytestream2_get_be16.exit326, label %bb.v

bb.v:                                             ; preds = %bytestream2_get_be16.exit328.thread
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0.12433, i64 2 ; 2 uses
  %i.cz = load i16, ptr %.sroa.0.12433, align 1, !tbaa !37
  %i.da = call i16 @llvm.bswap.i16(i16 %i.cz)
  %i.db = add i16 %i.da, 256
  %i.dc = zext i16 %i.db to i64
  %i.dd = or disjoint i64 %i.dc, 281470681743360
  %.pre578 = ptrtoint ptr %i.cy to i64
  br label %bytestream2_get_be16.exit326

bytestream2_get_be16.exit326:                     ; preds = %bytestream2_get_be16.exit328.thread, %bb.v
  %.pre-phi579 = phi i64 [ %i.aw, %bytestream2_get_be16.exit328.thread ], [ %.pre578, %bb.v ]
  %.sroa.0.11 = phi ptr [ %i.au, %bytestream2_get_be16.exit328.thread ], [ %i.cy, %bb.v ] ; 2 uses
  %.0.i325 = phi i64 [ 281470681743616, %bytestream2_get_be16.exit328.thread ], [ %i.dd, %bb.v ]
  %i.de = sub i64 %i.aw, %.pre-phi579
  %i.df = icmp slt i64 %i.de, 4
  br i1 %i.df, label %bytestream2_get_be32.exit313, label %bb.w

bb.w:                                             ; preds = %bytestream2_get_be16.exit326
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0.11, i64 4 ; 2 uses
  %i.dh = load i32, ptr %.sroa.0.11, align 1, !tbaa !37
  %i.di = call i32 @llvm.bswap.i32(i32 %i.dh)
  %i.dj = bitcast i32 %i.di to float
  %i.dk = fpext nsz float %i.dj to double
  %.pre580 = ptrtoint ptr %i.dg to i64
  br label %bytestream2_get_be32.exit313

bytestream2_get_be32.exit313:                     ; preds = %bytestream2_get_be16.exit326, %bb.w
  %.pre-phi581 = phi i64 [ %i.aw, %bytestream2_get_be16.exit326 ], [ %.pre580, %bb.w ]
  %.sroa.0.7 = phi ptr [ %i.au, %bytestream2_get_be16.exit326 ], [ %i.dg, %bb.w ] ; 2 uses
  %.0.i312 = phi double [ 0.000000e+00, %bytestream2_get_be16.exit326 ], [ %i.dk, %bb.w ]
  %i.dl = sub i64 %i.aw, %.pre-phi581
  %i.dm = icmp slt i64 %i.dl, 4
  br i1 %i.dm, label %bytestream2_get_be32.exit311, label %bb.x

bb.x:                                             ; preds = %bytestream2_get_be32.exit313
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0.7, i64 4 ; 2 uses
  %i.do = load i32, ptr %.sroa.0.7, align 1, !tbaa !37
  %i.dp = call i32 @llvm.bswap.i32(i32 %i.do)
  %i.dq = bitcast i32 %i.dp to float
  %i.dr = fpext nsz float %i.dq to double
  %.pre582 = ptrtoint ptr %i.dn to i64
  br label %bytestream2_get_be32.exit311

bytestream2_get_be32.exit311:                     ; preds = %bytestream2_get_be32.exit313, %bb.x
  %.pre-phi583 = phi i64 [ %i.aw, %bytestream2_get_be32.exit313 ], [ %.pre582, %bb.x ]
  %.sroa.0.6 = phi ptr [ %i.au, %bytestream2_get_be32.exit313 ], [ %i.dn, %bb.x ] ; 2 uses
  %.0.i310 = phi double [ 0.000000e+00, %bytestream2_get_be32.exit313 ], [ %i.dr, %bb.x ]
  %i.ds = sub i64 %i.aw, %.pre-phi583
  %i.dt = icmp slt i64 %i.ds, 4
  br i1 %i.dt, label %bytestream2_get_be32.exit309, label %bb.aa

bb.y:                                             ; preds = %bytestream2_get_be32.exit309.2.2
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.0.5.2.2, i64 4 ; 2 uses
  %i.dv = load i32, ptr %.sroa.0.5.2.2, align 1, !tbaa !37
  %i.dw = call i32 @llvm.bswap.i32(i32 %i.dv)
  %i.dx = bitcast i32 %i.dw to float
  %i.dy = fpext nsz float %i.dx to double
  %.pre602 = ptrtoint ptr %i.du to i64
  br label %bytestream2_get_be32.exit

bytestream2_get_be32.exit:                        ; preds = %bytestream2_get_be32.exit309.2.2, %bb.y
  %.pre-phi603 = phi i64 [ %i.aw, %bytestream2_get_be32.exit309.2.2 ], [ %.pre602, %bb.y ]
  %.sroa.0.4 = phi ptr [ %i.au, %bytestream2_get_be32.exit309.2.2 ], [ %i.du, %bb.y ] ; 2 uses
  %.0.i = phi double [ 0.000000e+00, %bytestream2_get_be32.exit309.2.2 ], [ %i.dy, %bb.y ]
  %i.dz = sub i64 %i.aw, %.pre-phi603
  %i.ea = icmp slt i64 %i.dz, 2
  br i1 %i.ea, label %bytestream2_get_be16.exit324, label %bb.z

bb.z:                                             ; preds = %bytestream2_get_be32.exit
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.0.4, i64 2 ; 2 uses
  %i.ec = load i16, ptr %.sroa.0.4, align 1, !tbaa !37
  %i.ed = call i16 @llvm.bswap.i16(i16 %i.ec)
  %i.ee = zext i16 %i.ed to i32
  %.pre604 = ptrtoint ptr %i.eb to i64
  br label %bytestream2_get_be16.exit324

bytestream2_get_be16.exit324:                     ; preds = %bytestream2_get_be32.exit, %bb.z
  %.pre-phi605 = phi i64 [ %i.aw, %bytestream2_get_be32.exit ], [ %.pre604, %bb.z ]
  %.sroa.0.10 = phi ptr [ %i.au, %bytestream2_get_be32.exit ], [ %i.eb, %bb.z ] ; 2 uses
  %.0.i323 = phi i32 [ 0, %bytestream2_get_be32.exit ], [ %i.ee, %bb.z ]
  %i.ef = sub i64 %i.aw, %.pre-phi605
  %i.eg = icmp slt i64 %i.ef, 2
  br i1 %i.eg, label %.thread442, label %bytestream2_get_be16.exit322

bytestream2_get_be16.exit322:                     ; preds = %bytestream2_get_be16.exit324
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.0.10, i64 2 ; 4 uses
  %i.ei = load i16, ptr %.sroa.0.10, align 1, !tbaa !37
  %i.ej = call i16 @llvm.bswap.i16(i16 %i.ei)
  %i.ek = zext i16 %i.ej to i32                   ; 3 uses
  %i.el = lshr i32 %i.ek, 1
  %i.em = and i32 %i.el, 7                        ; 4 uses
  %i.en = icmp samesign ugt i32 %i.em, 4
  br i1 %i.en, label %bb.aj, label %bb.ak

bb.aa:                                            ; preds = %bytestream2_get_be32.exit311
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 4 ; 2 uses
  %i.ep = load i32, ptr %.sroa.0.6, align 1, !tbaa !37
  %i.eq = call i32 @llvm.bswap.i32(i32 %i.ep)
  %i.er = bitcast i32 %i.eq to float
  %.pre584 = ptrtoint ptr %i.eo to i64
  %i.es = fpext nsz float %i.er to double
  br label %bytestream2_get_be32.exit309

bytestream2_get_be32.exit309:                     ; preds = %bytestream2_get_be32.exit311, %bb.aa
  %.pre-phi585 = phi i64 [ %i.aw, %bytestream2_get_be32.exit311 ], [ %.pre584, %bb.aa ]
  %.sroa.0.5 = phi ptr [ %i.au, %bytestream2_get_be32.exit311 ], [ %i.eo, %bb.aa ] ; 2 uses
  %.0.i308 = phi double [ 0.000000e+00, %bytestream2_get_be32.exit311 ], [ %i.es, %bb.aa ]
  %i.et = sub i64 %i.aw, %.pre-phi585
  %i.eu = icmp slt i64 %i.et, 4
  br i1 %i.eu, label %bytestream2_get_be32.exit309.1, label %bb.ab

bb.ab:                                            ; preds = %bytestream2_get_be32.exit309
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.0.5, i64 4 ; 2 uses
  %i.ew = load i32, ptr %.sroa.0.5, align 1, !tbaa !37
  %i.ex = call i32 @llvm.bswap.i32(i32 %i.ew)
  %i.ey = bitcast i32 %i.ex to float
  %.pre586 = ptrtoint ptr %i.ev to i64
  %i.ez = fpext nsz float %i.ey to double
end_hunk_0
