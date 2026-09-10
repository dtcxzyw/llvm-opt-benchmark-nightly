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
  %.pre568 = ptrtoint ptr %i.z to i64
  br label %bytestream2_get_be32.exit317

bytestream2_get_be32.exit317:                     ; preds = %bytestream2_init.exit307, %bb.h
  %.pre-phi = phi i64 [ %i.w, %bytestream2_init.exit307 ], [ %.pre568, %bb.h ]
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
  br i1 %i.as, label %bytestream2_get_be32.exit315.thread, label %bytestream2_get_byte.exit345

bytestream2_get_byte.exit345:                     ; preds = %bb.i
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

bb.j:                                             ; preds = %bytestream2_get_byte.exit345
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef nonnull %0, ptr noundef nonnull @.str.3, i32 noundef %i.az) #10
  br label %bytestream2_get_be32.exit315.thread

bytestream2_get_byte.exit345._crit_edge:          ; preds = %bytestream2_get_byte.exit345
  %i.bb = getelementptr i8, ptr %.sroa.0402.6, i64 12
  %i.bc = load i16, ptr %i.bb, align 1, !tbaa !37
  %i.bd = tail call i16 @llvm.bswap.i16(i16 %i.bc)
  %i.be = zext i16 %i.bd to i32                   ; 5 uses
  %i.bf = icmp ult i32 %i.ar, 10
  br i1 %i.bf, label %bytestream2_get_be16.exit330, label %bb.k

bb.k:                                             ; preds = %bytestream2_get_byte.exit345._crit_edge
  %i.bg = getelementptr i8, ptr %.sroa.0402.6, i64 14
  %i.bh = getelementptr i8, ptr %.sroa.0402.6, i64 16
  %i.bi = load i16, ptr %i.bg, align 1, !tbaa !37
  %i.bj = tail call i16 @llvm.bswap.i16(i16 %i.bi)
  %i.bk = zext i16 %i.bj to i32
  br label %bytestream2_get_be16.exit330

bytestream2_get_be16.exit330:                     ; preds = %bytestream2_get_byte.exit345._crit_edge, %bb.k
  %.sroa.0.13 = phi ptr [ %i.bh, %bb.k ], [ %i.au, %bytestream2_get_byte.exit345._crit_edge ] ; 3 uses
  %.0.i329 = phi i32 [ %i.bk, %bb.k ], [ 0, %bytestream2_get_byte.exit345._crit_edge ] ; 5 uses
  %i.bl = and i32 %i.be, 1
  %.not285 = icmp eq i32 %i.bl, 0
  %i.bm = and i32 %.0.i329, 1
  %.not286 = icmp eq i32 %i.bm, 0
  %or.cond301 = select i1 %.not285, i1 %.not286, i1 false
  br i1 %or.cond301, label %bb.l, label %bytestream2_get_be32.exit315.thread

bb.l:                                             ; preds = %bytestream2_get_be16.exit330
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !38 ; 2 uses
  %.not287 = icmp ne i32 %i.bo, %i.be
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !68 ; 2 uses
  %.not288 = icmp ne i32 %.0.i329, %i.bq
  %or.cond660.not = select i1 %.not287, i1 true, i1 %.not288 ; 2 uses
  br i1 %or.cond660.not, label %._crit_edge567, label %bb.m

._crit_edge567:                                   ; preds = %bb.l
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.4, i32 noundef %i.bo, i32 noundef %i.bq, i32 noundef %i.be, i32 noundef %.0.i329) #10
  %i.br = tail call i32 @ff_set_dimensions(ptr noundef nonnull %0, i32 noundef %i.be, i32 noundef %.0.i329) #10 ; 2 uses
  %i.bs = icmp slt i32 %i.br, 0
  br i1 %i.bs, label %bytestream2_get_be32.exit315.thread, label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge567
  %i.bt = add nuw nsw i32 %i.be, 14               ; 2 uses
  %i.bu = and i32 %i.bt, 131056
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 %i.bu, ptr %i.bv, align 8, !tbaa !69
  %i.bw = add nuw nsw i32 %.0.i329, 14            ; 2 uses
  %i.bx = and i32 %i.bw, 131056
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !70
  %i.bz = getelementptr inbounds nuw i8, ptr %i.d, i64 148 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !34
  %i.cb = icmp ne i32 %i.ca, 145
  %or.cond = or i1 %or.cond660.not, %i.cb
  br i1 %or.cond, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cc = load i32, ptr %i.e, align 8, !tbaa !35
  %.not289 = icmp eq i32 %i.cc, %i.f
  br i1 %.not289, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  store i32 145, ptr %i.bz, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 145, ptr %i.a, align 4, !tbaa !36
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 -1, ptr %i.cd, align 4, !tbaa !36
  %i.ce = call i32 @ff_get_format(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #10 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.cf = icmp slt i32 %i.ce, 0
  br i1 %i.cf, label %bytestream2_get_be32.exit315.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %i.ce, ptr %i.cg, align 8, !tbaa !71
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %i.ch = ptrtoint ptr %.sroa.0.13 to i64
  %i.ci = sub i64 %i.aw, %i.ch
  %i.cj = icmp slt i64 %i.ci, 1
  br i1 %i.cj, label %bytestream2_get_byte.exit343, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0.13, i64 1 ; 2 uses
  %i.cl = load i8, ptr %.sroa.0.13, align 1, !tbaa !37
  %i.cm = zext i8 %i.cl to i64
  %.pre571 = ptrtoint ptr %i.ck to i64
  br label %bytestream2_get_byte.exit343

bytestream2_get_byte.exit343:                     ; preds = %bb.q, %bb.r
  %.pre-phi572 = phi i64 [ %i.aw, %bb.q ], [ %.pre571, %bb.r ]
  %.sroa.0.18 = phi ptr [ %i.au, %bb.q ], [ %i.ck, %bb.r ] ; 2 uses
  %.0.i342 = phi i64 [ 0, %bb.q ], [ %i.cm, %bb.r ]
  %i.cn = sub i64 %i.aw, %.pre-phi572
  %i.co = icmp slt i64 %i.cn, 1
  br i1 %i.co, label %bytestream2_get_byte.exit341, label %bb.s

bb.s:                                             ; preds = %bytestream2_get_byte.exit343
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0.18, i64 1 ; 2 uses
  %i.cq = load i8, ptr %.sroa.0.18, align 1, !tbaa !37
  %i.cr = zext i8 %i.cq to i64
  %.pre573 = ptrtoint ptr %i.cp to i64
  br label %bytestream2_get_byte.exit341

bytestream2_get_byte.exit341:                     ; preds = %bytestream2_get_byte.exit343, %bb.s
  %.pre-phi574 = phi i64 [ %i.aw, %bytestream2_get_byte.exit343 ], [ %.pre573, %bb.s ]
  %.sroa.0.17 = phi ptr [ %i.au, %bytestream2_get_byte.exit343 ], [ %i.cp, %bb.s ] ; 2 uses
  %.0.i340 = phi i64 [ 0, %bytestream2_get_byte.exit343 ], [ %i.cr, %bb.s ]
  %i.cs = sub i64 %i.aw, %.pre-phi574
  %i.ct = icmp slt i64 %i.cs, 1
  br i1 %i.ct, label %bytestream2_get_byte.exit339, label %bb.t

bb.t:                                             ; preds = %bytestream2_get_byte.exit341
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.17, i64 1 ; 2 uses
  %i.cv = load i8, ptr %.sroa.0.17, align 1, !tbaa !37
  %i.cw = zext i8 %i.cv to i64
  %.pre575 = ptrtoint ptr %i.cu to i64
  br label %bytestream2_get_byte.exit339

bytestream2_get_byte.exit339:                     ; preds = %bytestream2_get_byte.exit341, %bb.t
  %.pre-phi576 = phi i64 [ %i.aw, %bytestream2_get_byte.exit341 ], [ %.pre575, %bb.t ]
  %.sroa.0.16 = phi ptr [ %i.au, %bytestream2_get_byte.exit341 ], [ %i.cu, %bb.t ] ; 2 uses
  %.0.i338 = phi i64 [ 0, %bytestream2_get_byte.exit341 ], [ %i.cw, %bb.t ]
  %i.cx = sub i64 %i.aw, %.pre-phi576
  %i.cy = icmp slt i64 %i.cx, 1
  br i1 %i.cy, label %bytestream2_get_byte.exit, label %bb.u

bb.u:                                             ; preds = %bytestream2_get_byte.exit339
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0.16, i64 1 ; 2 uses
  %i.da = load i8, ptr %.sroa.0.16, align 1, !tbaa !37
  %i.db = zext i8 %i.da to i64
  %.pre577 = ptrtoint ptr %i.cz to i64
  br label %bytestream2_get_byte.exit

bytestream2_get_byte.exit:                        ; preds = %bytestream2_get_byte.exit339, %bb.u
  %.pre-phi578 = phi i64 [ %i.aw, %bytestream2_get_byte.exit339 ], [ %.pre577, %bb.u ]
  %.sroa.0.15 = phi ptr [ %i.au, %bytestream2_get_byte.exit339 ], [ %i.cz, %bb.u ] ; 2 uses
  %.0.i337 = phi i64 [ 0, %bytestream2_get_byte.exit339 ], [ %i.db, %bb.u ]
  %i.dc = sub i64 %i.aw, %.pre-phi578
  %i.dd = icmp slt i64 %i.dc, 2
  br i1 %i.dd, label %bytestream2_get_be16.exit328.thread, label %bytestream2_get_be16.exit328

bytestream2_get_be16.exit328:                     ; preds = %bytestream2_get_byte.exit
  %i.de = load i16, ptr %.sroa.0.15, align 1, !tbaa !37
  %i.df = lshr i16 %i.de, 8
  %i.dg = and i16 %i.df, 3                        ; 2 uses
  %.not290 = icmp eq i16 %i.dg, 0
  br i1 %.not290, label %bytestream2_get_be16.exit328.bytestream2_get_be16.exit328.thread_crit_edge, label %bb.v

bytestream2_get_be16.exit328.bytestream2_get_be16.exit328.thread_crit_edge: ; preds = %bytestream2_get_be16.exit328
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0.15, i64 2 ; 2 uses
  %.pre623 = ptrtoint ptr %i.dh to i64
  br label %bytestream2_get_be16.exit328.thread

bb.v:                                             ; preds = %bytestream2_get_be16.exit328
  %i.di = zext nneg i16 %i.dg to i32
  call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef nonnull %0, ptr noundef nonnull @.str.5, i32 noundef %i.di) #10
  br label %bytestream2_get_be32.exit315.thread

bytestream2_get_be16.exit328.thread:              ; preds = %bytestream2_get_be16.exit328.bytestream2_get_be16.exit328.thread_crit_edge, %bytestream2_get_byte.exit
  %.pre-phi624 = phi i64 [ %.pre623, %bytestream2_get_be16.exit328.bytestream2_get_be16.exit328.thread_crit_edge ], [ %i.aw, %bytestream2_get_byte.exit ]
  %.sroa.0.12433 = phi ptr [ %i.dh, %bytestream2_get_be16.exit328.bytestream2_get_be16.exit328.thread_crit_edge ], [ %i.au, %bytestream2_get_byte.exit ] ; 2 uses
  %i.dj = sub i64 %i.aw, %.pre-phi624
  %i.dk = icmp slt i64 %i.dj, 2
  br i1 %i.dk, label %bytestream2_get_be16.exit326, label %bb.w

bb.w:                                             ; preds = %bytestream2_get_be16.exit328.thread
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.0.12433, i64 2 ; 2 uses
  %i.dm = load i16, ptr %.sroa.0.12433, align 1, !tbaa !37
  %i.dn = call i16 @llvm.bswap.i16(i16 %i.dm)
  %i.do = add i16 %i.dn, 256
  %i.dp = zext i16 %i.do to i64
  %i.dq = or disjoint i64 %i.dp, 281470681743360
  %.pre579 = ptrtoint ptr %i.dl to i64
  br label %bytestream2_get_be16.exit326

bytestream2_get_be16.exit326:                     ; preds = %bytestream2_get_be16.exit328.thread, %bb.w
  %.pre-phi580 = phi i64 [ %i.aw, %bytestream2_get_be16.exit328.thread ], [ %.pre579, %bb.w ]
  %.sroa.0.11 = phi ptr [ %i.au, %bytestream2_get_be16.exit328.thread ], [ %i.dl, %bb.w ] ; 2 uses
  %.0.i325 = phi i64 [ 281470681743616, %bytestream2_get_be16.exit328.thread ], [ %i.dq, %bb.w ]
  %i.dr = sub i64 %i.aw, %.pre-phi580
  %i.ds = icmp slt i64 %i.dr, 4
  br i1 %i.ds, label %bytestream2_get_be32.exit313, label %bb.x

bb.x:                                             ; preds = %bytestream2_get_be16.exit326
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0.11, i64 4 ; 2 uses
  %i.du = load i32, ptr %.sroa.0.11, align 1, !tbaa !37
  %i.dv = call i32 @llvm.bswap.i32(i32 %i.du)
  %i.dw = bitcast i32 %i.dv to float
  %i.dx = fpext nsz float %i.dw to double
  %.pre581 = ptrtoint ptr %i.dt to i64
  br label %bytestream2_get_be32.exit313

bytestream2_get_be32.exit313:                     ; preds = %bytestream2_get_be16.exit326, %bb.x
  %.pre-phi582 = phi i64 [ %i.aw, %bytestream2_get_be16.exit326 ], [ %.pre581, %bb.x ]
  %.sroa.0.7 = phi ptr [ %i.au, %bytestream2_get_be16.exit326 ], [ %i.dt, %bb.x ] ; 2 uses
  %.0.i312 = phi double [ 0.000000e+00, %bytestream2_get_be16.exit326 ], [ %i.dx, %bb.x ]
  %i.dy = sub i64 %i.aw, %.pre-phi582
  %i.dz = icmp slt i64 %i.dy, 4
  br i1 %i.dz, label %bytestream2_get_be32.exit311, label %bb.y

bb.y:                                             ; preds = %bytestream2_get_be32.exit313
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0.7, i64 4 ; 2 uses
  %i.eb = load i32, ptr %.sroa.0.7, align 1, !tbaa !37
  %i.ec = call i32 @llvm.bswap.i32(i32 %i.eb)
  %i.ed = bitcast i32 %i.ec to float
  %i.ee = fpext nsz float %i.ed to double
  %.pre583 = ptrtoint ptr %i.ea to i64
  br label %bytestream2_get_be32.exit311

bytestream2_get_be32.exit311:                     ; preds = %bytestream2_get_be32.exit313, %bb.y
  %.pre-phi584 = phi i64 [ %i.aw, %bytestream2_get_be32.exit313 ], [ %.pre583, %bb.y ]
  %.sroa.0.6 = phi ptr [ %i.au, %bytestream2_get_be32.exit313 ], [ %i.ea, %bb.y ] ; 2 uses
  %.0.i310 = phi double [ 0.000000e+00, %bytestream2_get_be32.exit313 ], [ %i.ee, %bb.y ]
  %i.ef = sub i64 %i.aw, %.pre-phi584
  %i.eg = icmp slt i64 %i.ef, 4
  br i1 %i.eg, label %bytestream2_get_be32.exit309, label %bb.ab

bb.z:                                             ; preds = %bytestream2_get_be32.exit309.2.2
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.0.5.2.2, i64 4 ; 2 uses
  %i.ei = load i32, ptr %.sroa.0.5.2.2, align 1, !tbaa !37
  %i.ej = call i32 @llvm.bswap.i32(i32 %i.ei)
  %i.ek = bitcast i32 %i.ej to float
  %i.el = fpext nsz float %i.ek to double
  %.pre603 = ptrtoint ptr %i.eh to i64
  br label %bytestream2_get_be32.exit

bytestream2_get_be32.exit:                        ; preds = %bytestream2_get_be32.exit309.2.2, %bb.z
  %.pre-phi604 = phi i64 [ %i.aw, %bytestream2_get_be32.exit309.2.2 ], [ %.pre603, %bb.z ]
  %.sroa.0.4 = phi ptr [ %i.au, %bytestream2_get_be32.exit309.2.2 ], [ %i.eh, %bb.z ] ; 2 uses
  %.0.i = phi double [ 0.000000e+00, %bytestream2_get_be32.exit309.2.2 ], [ %i.el, %bb.z ]
  %i.em = sub i64 %i.aw, %.pre-phi604
  %i.en = icmp slt i64 %i.em, 2
  br i1 %i.en, label %bytestream2_get_be16.exit324, label %bb.aa

bb.aa:                                            ; preds = %bytestream2_get_be32.exit
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.0.4, i64 2 ; 2 uses
  %i.ep = load i16, ptr %.sroa.0.4, align 1, !tbaa !37
  %i.eq = call i16 @llvm.bswap.i16(i16 %i.ep)
  %i.er = zext i16 %i.eq to i32
  %.pre605 = ptrtoint ptr %i.eo to i64
  br label %bytestream2_get_be16.exit324

bytestream2_get_be16.exit324:                     ; preds = %bytestream2_get_be32.exit, %bb.aa
  %.pre-phi606 = phi i64 [ %i.aw, %bytestream2_get_be32.exit ], [ %.pre605, %bb.aa ]
  %.sroa.0.10 = phi ptr [ %i.au, %bytestream2_get_be32.exit ], [ %i.eo, %bb.aa ] ; 2 uses
  %.0.i323 = phi i32 [ 0, %bytestream2_get_be32.exit ], [ %i.er, %bb.aa ]
  %i.es = sub i64 %i.aw, %.pre-phi606
  %i.et = icmp slt i64 %i.es, 2
  br i1 %i.et, label %.thread442, label %bytestream2_get_be16.exit322

bytestream2_get_be16.exit322:                     ; preds = %bytestream2_get_be16.exit324
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.0.10, i64 2 ; 4 uses
  %i.ev = load i16, ptr %.sroa.0.10, align 1, !tbaa !37
  %i.ew = call i16 @llvm.bswap.i16(i16 %i.ev)
  %i.ex = zext i16 %i.ew to i32                   ; 3 uses
  %i.ey = lshr i32 %i.ex, 1
  %i.ez = and i32 %i.ey, 7                        ; 4 uses
  %i.fa = icmp samesign ugt i32 %i.ez, 4
  br i1 %i.fa, label %bb.ak, label %bb.al

bb.ab:                                            ; preds = %bytestream2_get_be32.exit311
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 4 ; 2 uses
  %i.fc = load i32, ptr %.sroa.0.6, align 1, !tbaa !37
  %i.fd = call i32 @llvm.bswap.i32(i32 %i.fc)
  %i.fe = bitcast i32 %i.fd to float
  %.pre585 = ptrtoint ptr %i.fb to i64
  %i.ff = fpext nsz float %i.fe to double
  br label %bytestream2_get_be32.exit309

bytestream2_get_be32.exit309:                     ; preds = %bytestream2_get_be32.exit311, %bb.ab
  %.pre-phi586 = phi i64 [ %i.aw, %bytestream2_get_be32.exit311 ], [ %.pre585, %bb.ab ]
  %.sroa.0.5 = phi ptr [ %i.au, %bytestream2_get_be32.exit311 ], [ %i.fb, %bb.ab ] ; 2 uses
  %.0.i308 = phi double [ 0.000000e+00, %bytestream2_get_be32.exit311 ], [ %i.ff, %bb.ab ]
  %i.fg = sub i64 %i.aw, %.pre-phi586
  %i.fh = icmp slt i64 %i.fg, 4
  br i1 %i.fh, label %bytestream2_get_be32.exit309.1, label %bb.ac

bb.ac:                                            ; preds = %bytestream2_get_be32.exit309
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.0.5, i64 4 ; 2 uses
  %i.fj = load i32, ptr %.sroa.0.5, align 1, !tbaa !37
  %i.fk = call i32 @llvm.bswap.i32(i32 %i.fj)
  %i.fl = bitcast i32 %i.fk to float
  %.pre587 = ptrtoint ptr %i.fi to i64
  %i.fm = fpext nsz float %i.fl to double
  br label %bytestream2_get_be32.exit309.1

bytestream2_get_be32.exit309.1:                   ; preds = %bb.ac, %bytestream2_get_be32.exit309
  %.pre-phi588 = phi i64 [ %.pre587, %bb.ac ], [ %i.aw, %bytestream2_get_be32.exit309 ]
  %.sroa.0.5.1 = phi ptr [ %i.fi, %bb.ac ], [ %i.au, %bytestream2_get_be32.exit309 ] ; 2 uses
  %.0.i308.1 = phi double [ %i.fm, %bb.ac ], [ 0.000000e+00, %bytestream2_get_be32.exit309 ]
  %i.fn = sub i64 %i.aw, %.pre-phi588
  %i.fo = icmp slt i64 %i.fn, 4
  br i1 %i.fo, label %bytestream2_get_be32.exit309.2, label %bb.ad

bb.ad:                                            ; preds = %bytestream2_get_be32.exit309.1
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.0.5.1, i64 4 ; 2 uses
  %i.fq = load i32, ptr %.sroa.0.5.1, align 1, !tbaa !37
  %i.fr = call i32 @llvm.bswap.i32(i32 %i.fq)
  %i.fs = bitcast i32 %i.fr to float
  %.pre589 = ptrtoint ptr %i.fp to i64
  %i.ft = fpext nsz float %i.fs to double
  br label %bytestream2_get_be32.exit309.2

bytestream2_get_be32.exit309.2:                   ; preds = %bb.ad, %bytestream2_get_be32.exit309.1
  %.pre-phi590 = phi i64 [ %.pre589, %bb.ad ], [ %i.aw, %bytestream2_get_be32.exit309.1 ]
  %.sroa.0.5.2 = phi ptr [ %i.fp, %bb.ad ], [ %i.au, %bytestream2_get_be32.exit309.1 ] ; 2 uses
  %.0.i308.2 = phi double [ %i.ft, %bb.ad ], [ 0.000000e+00, %bytestream2_get_be32.exit309.1 ]
  %i.fu = sub i64 %i.aw, %.pre-phi590
  %i.fv = icmp slt i64 %i.fu, 4
  br i1 %i.fv, label %bytestream2_get_be32.exit309.1550, label %bb.ae

bb.ae:                                            ; preds = %bytestream2_get_be32.exit309.2
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.0.5.2, i64 4 ; 2 uses
  %i.fx = load i32, ptr %.sroa.0.5.2, align 1, !tbaa !37
  %i.fy = call i32 @llvm.bswap.i32(i32 %i.fx)
  %i.fz = bitcast i32 %i.fy to float
  %.pre591 = ptrtoint ptr %i.fw to i64
  %i.ga = fpext nsz float %i.fz to double
  br label %bytestream2_get_be32.exit309.1550

bytestream2_get_be32.exit309.1550:                ; preds = %bb.ae, %bytestream2_get_be32.exit309.2
  %.pre-phi592 = phi i64 [ %.pre591, %bb.ae ], [ %i.aw, %bytestream2_get_be32.exit309.2 ]
  %.sroa.0.5.1548 = phi ptr [ %i.fw, %bb.ae ], [ %i.au, %bytestream2_get_be32.exit309.2 ] ; 2 uses
  %.0.i308.1549 = phi double [ %i.ga, %bb.ae ], [ 0.000000e+00, %bytestream2_get_be32.exit309.2 ]
  %i.gb = sub i64 %i.aw, %.pre-phi592
  %i.gc = icmp slt i64 %i.gb, 4
  br i1 %i.gc, label %bytestream2_get_be32.exit309.1.1, label %bb.af

bb.af:                                            ; preds = %bytestream2_get_be32.exit309.1550
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.0.5.1548, i64 4 ; 2 uses
  %i.ge = load i32, ptr %.sroa.0.5.1548, align 1, !tbaa !37
  %i.gf = call i32 @llvm.bswap.i32(i32 %i.ge)
  %i.gg = bitcast i32 %i.gf to float
  %.pre593 = ptrtoint ptr %i.gd to i64
  %i.gh = fpext nsz float %i.gg to double
  br label %bytestream2_get_be32.exit309.1.1

bytestream2_get_be32.exit309.1.1:                 ; preds = %bb.af, %bytestream2_get_be32.exit309.1550
  %.pre-phi594 = phi i64 [ %.pre593, %bb.af ], [ %i.aw, %bytestream2_get_be32.exit309.1550 ]
  %.sroa.0.5.1.1 = phi ptr [ %i.gd, %bb.af ], [ %i.au, %bytestream2_get_be32.exit309.1550 ] ; 2 uses
  %.0.i308.1.1 = phi double [ %i.gh, %bb.af ], [ 0.000000e+00, %bytestream2_get_be32.exit309.1550 ]
  %i.gi = sub i64 %i.aw, %.pre-phi594
  %i.gj = icmp slt i64 %i.gi, 4
  br i1 %i.gj, label %bytestream2_get_be32.exit309.2.1, label %bb.ag

bb.ag:                                            ; preds = %bytestream2_get_be32.exit309.1.1
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.0.5.1.1, i64 4 ; 2 uses
  %i.gl = load i32, ptr %.sroa.0.5.1.1, align 1, !tbaa !37
  %i.gm = call i32 @llvm.bswap.i32(i32 %i.gl)
  %i.gn = bitcast i32 %i.gm to float
  %.pre595 = ptrtoint ptr %i.gk to i64
  %i.go = fpext nsz float %i.gn to double
  br label %bytestream2_get_be32.exit309.2.1

bytestream2_get_be32.exit309.2.1:                 ; preds = %bb.ag, %bytestream2_get_be32.exit309.1.1
  %.pre-phi596 = phi i64 [ %.pre595, %bb.ag ], [ %i.aw, %bytestream2_get_be32.exit309.1.1 ]
  %.sroa.0.5.2.1 = phi ptr [ %i.gk, %bb.ag ], [ %i.au, %bytestream2_get_be32.exit309.1.1 ] ; 2 uses
  %.0.i308.2.1 = phi double [ %i.go, %bb.ag ], [ 0.000000e+00, %bytestream2_get_be32.exit309.1.1 ]
  %i.gp = sub i64 %i.aw, %.pre-phi596
  %i.gq = icmp slt i64 %i.gp, 4
  br i1 %i.gq, label %bytestream2_get_be32.exit309.2553, label %bb.ah

bb.ah:                                            ; preds = %bytestream2_get_be32.exit309.2.1
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.0.5.2.1, i64 4 ; 2 uses
  %i.gs = load i32, ptr %.sroa.0.5.2.1, align 1, !tbaa !37
  %i.gt = call i32 @llvm.bswap.i32(i32 %i.gs)
  %i.gu = bitcast i32 %i.gt to float
  %.pre597 = ptrtoint ptr %i.gr to i64
  %i.gv = fpext nsz float %i.gu to double
  br label %bytestream2_get_be32.exit309.2553

bytestream2_get_be32.exit309.2553:                ; preds = %bb.ah, %bytestream2_get_be32.exit309.2.1
  %.pre-phi598 = phi i64 [ %.pre597, %bb.ah ], [ %i.aw, %bytestream2_get_be32.exit309.2.1 ]
  %.sroa.0.5.2551 = phi ptr [ %i.gr, %bb.ah ], [ %i.au, %bytestream2_get_be32.exit309.2.1 ] ; 2 uses
  %.0.i308.2552 = phi double [ %i.gv, %bb.ah ], [ 0.000000e+00, %bytestream2_get_be32.exit309.2.1 ]
  %i.gw = sub i64 %i.aw, %.pre-phi598
  %i.gx = icmp slt i64 %i.gw, 4
  br i1 %i.gx, label %bytestream2_get_be32.exit309.1.2, label %bb.ai

bb.ai:                                            ; preds = %bytestream2_get_be32.exit309.2553
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.0.5.2551, i64 4 ; 2 uses
  %i.gz = load i32, ptr %.sroa.0.5.2551, align 1, !tbaa !37
  %i.ha = call i32 @llvm.bswap.i32(i32 %i.gz)
  %i.hb = bitcast i32 %i.ha to float
  %.pre599 = ptrtoint ptr %i.gy to i64
  %i.hc = fpext nsz float %i.hb to double
  br label %bytestream2_get_be32.exit309.1.2

bytestream2_get_be32.exit309.1.2:                 ; preds = %bb.ai, %bytestream2_get_be32.exit309.2553
  %.pre-phi600 = phi i64 [ %.pre599, %bb.ai ], [ %i.aw, %bytestream2_get_be32.exit309.2553 ]
  %.sroa.0.5.1.2 = phi ptr [ %i.gy, %bb.ai ], [ %i.au, %bytestream2_get_be32.exit309.2553 ] ; 2 uses
  %.0.i308.1.2 = phi double [ %i.hc, %bb.ai ], [ 0.000000e+00, %bytestream2_get_be32.exit309.2553 ]
  %i.hd = sub i64 %i.aw, %.pre-phi600
  %i.he = icmp slt i64 %i.hd, 4
  br i1 %i.he, label %bytestream2_get_be32.exit309.2.2, label %bb.aj

bb.aj:                                            ; preds = %bytestream2_get_be32.exit309.1.2
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.0.5.1.2, i64 4 ; 2 uses
  %i.hg = load i32, ptr %.sroa.0.5.1.2, align 1, !tbaa !37
  %i.hh = call i32 @llvm.bswap.i32(i32 %i.hg)
  %i.hi = bitcast i32 %i.hh to float
  %.pre601 = ptrtoint ptr %i.hf to i64
  %i.hj = fpext nsz float %i.hi to double
  br label %bytestream2_get_be32.exit309.2.2

bytestream2_get_be32.exit309.2.2:                 ; preds = %bb.aj, %bytestream2_get_be32.exit309.1.2
  %.pre-phi602 = phi i64 [ %.pre601, %bb.aj ], [ %i.aw, %bytestream2_get_be32.exit309.1.2 ]
  %.sroa.0.5.2.2 = phi ptr [ %i.hf, %bb.aj ], [ %i.au, %bytestream2_get_be32.exit309.1.2 ] ; 2 uses
  %.0.i308.2.2 = phi double [ %i.hj, %bb.aj ], [ 0.000000e+00, %bytestream2_get_be32.exit309.1.2 ]
  %i.hk = sub i64 %i.aw, %.pre-phi602
  %i.hl = icmp slt i64 %i.hk, 4
  br i1 %i.hl, label %bytestream2_get_be32.exit, label %bb.z

bb.ak:                                            ; preds = %bytestream2_get_be16.exit322
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.6, i32 noundef %i.ez) #10
  br label %bytestream2_get_be32.exit315.thread

bb.al:                                            ; preds = %bytestream2_get_be16.exit322
  %i.hm = and i32 %i.ex, 1
  %.not291 = icmp eq i32 %i.hm, 0
  br i1 %.not291, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hn = ptrtoint ptr %i.eu to i64
  %i.ho = sub i64 %i.aw, %i.hn
  %i.hp = call i64 @llvm.smin.i64(i64 %i.ho, i64 64)
  %i.hq = and i64 %i.hp, 4294967295               ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr nonnull align 1 %i.eu, i64 %i.hq, i1 false)
  %i.hr = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.hq
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.sroa.0.2 = phi ptr [ %i.eu, %bb.al ], [ %i.hr, %bb.am ] ; 3 uses
  %i.hs = and i32 %i.ex, 16
  %.not292 = icmp eq i32 %i.hs, 0
  br i1 %.not292, label %.thread442, label %.preheader480

.preheader480:                                    ; preds = %bb.an
  %i.ht = getelementptr inbounds nuw i8, ptr %i.d, i64 304
  %i.hu = ptrtoint ptr %.sroa.0.2 to i64
  %i.hv = sub i64 %i.aw, %i.hu
  %i.hw = icmp slt i64 %i.hv, 2
  br i1 %i.hw, label %bytestream2_get_be16.exit320, label %bb.ao

bb.ao:                                            ; preds = %.preheader480
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 2 ; 2 uses
  %i.hy = load i16, ptr %.sroa.0.2, align 1, !tbaa !37
  %i.hz = call i16 @llvm.bswap.i16(i16 %i.hy)
  %.pre607 = ptrtoint ptr %i.hx to i64
  br label %bytestream2_get_be16.exit320

bytestream2_get_be16.exit320:                     ; preds = %.preheader480, %bb.ao
  %.pre-phi608 = phi i64 [ %i.aw, %.preheader480 ], [ %.pre607, %bb.ao ]
  %.sroa.0.8 = phi ptr [ %i.au, %.preheader480 ], [ %i.hx, %bb.ao ] ; 2 uses
  %.0.i319 = phi i16 [ 0, %.preheader480 ], [ %i.hz, %bb.ao ]
  store i16 %.0.i319, ptr %i.ht, align 8, !tbaa !40
  %i.ia = sub i64 %i.aw, %.pre-phi608
  %i.ib = icmp slt i64 %i.ia, 2
  br i1 %i.ib, label %bytestream2_get_be16.exit320.1, label %bb.ap

bb.ap:                                            ; preds = %bytestream2_get_be16.exit320
  %i.ic = getelementptr inbounds nuw i8, ptr %.sroa.0.8, i64 2 ; 2 uses
  %i.id = load i16, ptr %.sroa.0.8, align 1, !tbaa !37
  %i.ie = call i16 @llvm.bswap.i16(i16 %i.id)
  %.pre609 = ptrtoint ptr %i.ic to i64
  br label %bytestream2_get_be16.exit320.1

bytestream2_get_be16.exit320.1:                   ; preds = %bb.ap, %bytestream2_get_be16.exit320
  %.pre-phi610 = phi i64 [ %.pre609, %bb.ap ], [ %i.aw, %bytestream2_get_be16.exit320 ]
  %.sroa.0.8.1 = phi ptr [ %i.ic, %bb.ap ], [ %i.au, %bytestream2_get_be16.exit320 ] ; 2 uses
  %.0.i319.1 = phi i16 [ %i.ie, %bb.ap ], [ 0, %bytestream2_get_be16.exit320 ]
  %i.if = getelementptr inbounds nuw i8, ptr %i.d, i64 306
  store i16 %.0.i319.1, ptr %i.if, align 2, !tbaa !40
  %i.ig = sub i64 %i.aw, %.pre-phi610
  %i.ih = icmp slt i64 %i.ig, 2
  br i1 %i.ih, label %bytestream2_get_be16.exit320.2, label %bb.aq

bb.aq:                                            ; preds = %bytestream2_get_be16.exit320.1
  %i.ii = getelementptr inbounds nuw i8, ptr %.sroa.0.8.1, i64 2 ; 2 uses
  %i.ij = load i16, ptr %.sroa.0.8.1, align 1, !tbaa !37
  %i.ik = call i16 @llvm.bswap.i16(i16 %i.ij)
  %.pre611 = ptrtoint ptr %i.ii to i64
  br label %bytestream2_get_be16.exit320.2

bytestream2_get_be16.exit320.2:                   ; preds = %bb.aq, %bytestream2_get_be16.exit320.1
  %.pre-phi612 = phi i64 [ %.pre611, %bb.aq ], [ %i.aw, %bytestream2_get_be16.exit320.1 ]
  %.sroa.0.8.2 = phi ptr [ %i.ii, %bb.aq ], [ %i.au, %bytestream2_get_be16.exit320.1 ] ; 2 uses
  %.0.i319.2 = phi i16 [ %i.ik, %bb.aq ], [ 0, %bytestream2_get_be16.exit320.1 ]
  %i.il = getelementptr inbounds nuw i8, ptr %i.d, i64 308
  store i16 %.0.i319.2, ptr %i.il, align 4, !tbaa !40
  %i.im = sub i64 %i.aw, %.pre-phi612
  %i.in = icmp slt i64 %i.im, 2
  br i1 %i.in, label %bytestream2_get_be16.exit320.3, label %bb.ar

bb.ar:                                            ; preds = %bytestream2_get_be16.exit320.2
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.0.8.2, i64 2 ; 2 uses
  %i.ip = load i16, ptr %.sroa.0.8.2, align 1, !tbaa !37
  %i.iq = call i16 @llvm.bswap.i16(i16 %i.ip)
  %.pre613 = ptrtoint ptr %i.io to i64
  br label %bytestream2_get_be16.exit320.3

bytestream2_get_be16.exit320.3:                   ; preds = %bb.ar, %bytestream2_get_be16.exit320.2
  %.pre-phi614 = phi i64 [ %.pre613, %bb.ar ], [ %i.aw, %bytestream2_get_be16.exit320.2 ]
  %.sroa.0.8.3 = phi ptr [ %i.io, %bb.ar ], [ %i.au, %bytestream2_get_be16.exit320.2 ] ; 2 uses
  %.0.i319.3 = phi i16 [ %i.iq, %bb.ar ], [ 0, %bytestream2_get_be16.exit320.2 ]
  %i.ir = getelementptr inbounds nuw i8, ptr %i.d, i64 310
  store i16 %.0.i319.3, ptr %i.ir, align 2, !tbaa !40
  %i.is = sub i64 %i.aw, %.pre-phi614
  %i.it = icmp slt i64 %i.is, 2
  br i1 %i.it, label %bytestream2_get_be16.exit320.4, label %bb.as

bb.as:                                            ; preds = %bytestream2_get_be16.exit320.3
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.0.8.3, i64 2 ; 2 uses
  %i.iv = load i16, ptr %.sroa.0.8.3, align 1, !tbaa !37
  %i.iw = call i16 @llvm.bswap.i16(i16 %i.iv)
  %.pre615 = ptrtoint ptr %i.iu to i64
  br label %bytestream2_get_be16.exit320.4

bytestream2_get_be16.exit320.4:                   ; preds = %bb.as, %bytestream2_get_be16.exit320.3
  %.pre-phi616 = phi i64 [ %.pre615, %bb.as ], [ %i.aw, %bytestream2_get_be16.exit320.3 ]
  %.sroa.0.8.4 = phi ptr [ %i.iu, %bb.as ], [ %i.au, %bytestream2_get_be16.exit320.3 ] ; 2 uses
  %.0.i319.4 = phi i16 [ %i.iw, %bb.as ], [ 0, %bytestream2_get_be16.exit320.3 ]
  %i.ix = getelementptr inbounds nuw i8, ptr %i.d, i64 312
  store i16 %.0.i319.4, ptr %i.ix, align 8, !tbaa !40
  %i.iy = sub i64 %i.aw, %.pre-phi616
  %i.iz = icmp slt i64 %i.iy, 2
  br i1 %i.iz, label %bytestream2_get_be16.exit320.5, label %bb.at

bb.at:                                            ; preds = %bytestream2_get_be16.exit320.4
  %i.ja = getelementptr inbounds nuw i8, ptr %.sroa.0.8.4, i64 2 ; 2 uses
  %i.jb = load i16, ptr %.sroa.0.8.4, align 1, !tbaa !37
  %i.jc = call i16 @llvm.bswap.i16(i16 %i.jb)
  %.pre617 = ptrtoint ptr %i.ja to i64
  br label %bytestream2_get_be16.exit320.5

bytestream2_get_be16.exit320.5:                   ; preds = %bb.at, %bytestream2_get_be16.exit320.4
  %.pre-phi618 = phi i64 [ %.pre617, %bb.at ], [ %i.aw, %bytestream2_get_be16.exit320.4 ]
  %.sroa.0.8.5 = phi ptr [ %i.ja, %bb.at ], [ %i.au, %bytestream2_get_be16.exit320.4 ] ; 2 uses
  %.0.i319.5 = phi i16 [ %i.jc, %bb.at ], [ 0, %bytestream2_get_be16.exit320.4 ]
  %i.jd = getelementptr inbounds nuw i8, ptr %i.d, i64 314
  store i16 %.0.i319.5, ptr %i.jd, align 2, !tbaa !40
  %i.je = sub i64 %i.aw, %.pre-phi618
  %i.jf = icmp slt i64 %i.je, 2
  br i1 %i.jf, label %bytestream2_get_be16.exit320.6, label %bb.au

bb.au:                                            ; preds = %bytestream2_get_be16.exit320.5
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.0.8.5, i64 2 ; 2 uses
  %i.jh = load i16, ptr %.sroa.0.8.5, align 1, !tbaa !37
  %i.ji = call i16 @llvm.bswap.i16(i16 %i.jh)
  %.pre619 = ptrtoint ptr %i.jg to i64
  br label %bytestream2_get_be16.exit320.6

bytestream2_get_be16.exit320.6:                   ; preds = %bb.au, %bytestream2_get_be16.exit320.5
  %.pre-phi620 = phi i64 [ %.pre619, %bb.au ], [ %i.aw, %bytestream2_get_be16.exit320.5 ]
  %.sroa.0.8.6 = phi ptr [ %i.jg, %bb.au ], [ %i.au, %bytestream2_get_be16.exit320.5 ]
  %.0.i319.6 = phi i16 [ %i.ji, %bb.au ], [ 0, %bytestream2_get_be16.exit320.5 ]
  %i.jj = getelementptr inbounds nuw i8, ptr %i.d, i64 316
  store i16 %.0.i319.6, ptr %i.jj, align 4, !tbaa !40
  %i.jk = sub i64 %i.aw, %.pre-phi620
  %i.jl = icmp slt i64 %i.jk, 2
  br i1 %i.jl, label %bytestream2_get_be16.exit320.7, label %bb.av

bb.av:                                            ; preds = %bytestream2_get_be16.exit320.6
  %i.jm = load i16, ptr %.sroa.0.8.6, align 1, !tbaa !37
  %i.jn = call i16 @llvm.bswap.i16(i16 %i.jm)
  br label %bytestream2_get_be16.exit320.7

bytestream2_get_be16.exit320.7:                   ; preds = %bb.av, %bytestream2_get_be16.exit320.6
  %.0.i319.7 = phi i16 [ %i.jn, %bb.av ], [ 0, %bytestream2_get_be16.exit320.6 ]
  %i.jo = getelementptr inbounds nuw i8, ptr %i.d, i64 318
  store i16 %.0.i319.7, ptr %i.jo, align 2, !tbaa !40
  br label %.loopexit

.thread442:                                       ; preds = %bytestream2_get_be16.exit324, %bb.an
  %i.jp = phi i32 [ %i.ez, %bb.an ], [ 0, %bytestream2_get_be16.exit324 ]
  %i.jq = getelementptr inbounds nuw i8, ptr %i.d, i64 304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.jq, ptr noundef nonnull align 16 dereferenceable(16) @decode_frame.default_lin_curve, i64 16, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %bytestream2_get_be16.exit320.7, %.thread442
  %i.jr = phi i32 [ %i.jp, %.thread442 ], [ %i.ez, %bytestream2_get_be16.exit320.7 ] ; 3 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.d, i64 240
  %i.jt = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  call void @ff_permute_scantable(ptr noundef nonnull %i.js, ptr noundef nonnull %i.jt, ptr noundef nonnull %i.b) #10
  %i.ju = lshr i32 %i.bt, 4                       ; 4 uses
  %i.jv = lshr i32 %i.ju, %i.jr
  %.neg = shl nsw i32 -1, %i.jr
  %i.jw = xor i32 %.neg, -1
  %i.jx = and i32 %i.ju, %i.jw                    ; 2 uses
  %i.jy = lshr i32 %i.jx, 1
  %i.jz = and i32 %i.jy, 5
  %i.ka = sub nsw i32 %i.jx, %i.jz                ; 2 uses
  %i.kb = and i32 %i.ka, 858993459
  %i.kc = lshr i32 %i.ka, 2
  %i.kd = and i32 %i.kc, 858993459
  %i.ke = add nuw nsw i32 %i.kd, %i.kb            ; 2 uses
  %i.kf = lshr i32 %i.ke, 4
  %i.kg = add nuw nsw i32 %i.kf, %i.ke
  %i.kh = and i32 %i.kg, 252645135                ; 2 uses
  %i.ki = lshr i32 %i.kh, 8
  %i.kj = add nuw nsw i32 %i.ki, %i.kh            ; 2 uses
  %i.kk = lshr i32 %i.kj, 16
  %i.kl = add nuw nsw i32 %i.kk, %i.kj
  %i.km = and i32 %i.kl, 63
  %i.kn = add nuw nsw i32 %i.km, %i.jv            ; 3 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.d, i64 140
  store i32 %i.kn, ptr %i.ko, align 4, !tbaa !72
  %i.kp = lshr i32 %i.bw, 4                       ; 3 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.d, i64 144 ; 2 uses
  store i32 %i.kp, ptr %i.kq, align 16, !tbaa !73
  %i.kr = mul nuw nsw i32 %i.kn, %i.kp            ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.d, i64 132 ; 6 uses
  store i32 %i.kr, ptr %i.ks, align 4, !tbaa !74
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 48, ptr noundef nonnull @.str.7, i32 noundef %i.kn, i32 noundef %i.kp, i32 noundef %i.kr) #10
  %i.kt = getelementptr inbounds nuw i8, ptr %i.d, i64 136 ; 2 uses
  store i32 16, ptr %i.kt, align 8, !tbaa !75
  %i.ku = getelementptr inbounds nuw i8, ptr %i.d, i64 120 ; 3 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.kw = load i32, ptr %i.ks, align 4, !tbaa !74
  %i.kx = sext i32 %i.kw to i64
  %i.ky = mul nsw i64 %i.kx, 40
  call void @av_fast_mallocz(ptr noundef nonnull %i.ku, ptr noundef nonnull %i.kv, i64 noundef %i.ky) #10
  %i.kz = load ptr, ptr %i.ku, align 8, !tbaa !41 ; 2 uses
  %.not293 = icmp eq ptr %i.kz, null
  br i1 %.not293, label %bytestream2_get_be32.exit315.thread, label %bb.aw

bb.aw:                                            ; preds = %.loopexit
  %i.la = ptrtoint ptr %i.av to i64               ; 2 uses
  %i.lb = sub i64 %i.w, %i.la
  %i.lc = trunc i64 %i.lb to i32
  %i.ld = load i32, ptr %i.ks, align 4, !tbaa !74
  %i.le = shl nsw i32 %i.ld, 1                    ; 2 uses
  %i.lf = icmp sgt i32 %i.le, %i.lc
  br i1 %i.lf, label %bytestream2_get_be32.exit315.thread, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.lg = load i32, ptr %i.kq, align 16, !tbaa !73 ; 2 uses
  %.not297524 = icmp slt i32 %i.lg, 1
  %i.lh = icmp eq i32 %i.ju, 0
  %or.cond535 = or i1 %.not297524, %i.lh
  br i1 %or.cond535, label %.critedge, label %.preheader479.preheader

.preheader479.preheader:                          ; preds = %bb.ax
  %i.li = sub i64 %i.la, %i.x
  %i.lj = trunc i64 %i.li to i32
  %i.lk = add nsw i32 %i.le, %i.lj
  br label %.preheader479

.preheader479:                                    ; preds = %.preheader479.preheader, %..thread456_crit_edge
  %.0250528 = phi i32 [ %i.mr, %..thread456_crit_edge ], [ 0, %.preheader479.preheader ] ; 2 uses
  %.0251527 = phi i32 [ %.2253.lcssa, %..thread456_crit_edge ], [ 0, %.preheader479.preheader ]
  %.0256526 = phi i32 [ %.2258.lcssa, %..thread456_crit_edge ], [ %i.lk, %.preheader479.preheader ]
  %.sroa.0402.0525 = phi ptr [ %.sroa.0402.2.lcssa, %..thread456_crit_edge ], [ %i.av, %.preheader479.preheader ]
  br label %bb.ay

bb.ay:                                            ; preds = %.preheader479, %._crit_edge
  %.0241519 = phi i32 [ %i.jr, %.preheader479 ], [ %i.mp, %._crit_edge ] ; 3 uses
  %.0242518 = phi i32 [ %i.ju, %.preheader479 ], [ %.1243.lcssa, %._crit_edge ] ; 3 uses
  %.0246517 = phi i32 [ 0, %.preheader479 ], [ %.1247.lcssa, %._crit_edge ] ; 2 uses
  %.1252516 = phi i32 [ %.0251527, %.preheader479 ], [ %.2253.lcssa, %._crit_edge ] ; 2 uses
  %.1257515 = phi i32 [ %.0256526, %.preheader479 ], [ %.2258.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.0402.1514 = phi ptr [ %.sroa.0402.0525, %.preheader479 ], [ %.sroa.0402.2.lcssa, %._crit_edge ] ; 2 uses
  %i.ll = shl nuw i32 1, %.0241519                ; 4 uses
  %.not294504 = icmp sgt i32 %i.ll, %.0242518
  br i1 %.not294504, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ay
  %i.lm = load i32, ptr %i.q, align 8, !tbaa !64  ; 3 uses
  %i.ln = sext i32 %.1252516 to i64
  br label %bb.az

bb.az:                                            ; preds = %.lr.ph, %bb.bd
  %indvars.iv = phi i64 [ %i.ln, %.lr.ph ], [ %indvars.iv.next, %bb.bd ] ; 2 uses
  %.1243509 = phi i32 [ %.0242518, %.lr.ph ], [ %i.mn, %bb.bd ]
  %.1247508 = phi i32 [ %.0246517, %.lr.ph ], [ %i.mm, %bb.bd ] ; 2 uses
  %.2258506 = phi i32 [ %.1257515, %.lr.ph ], [ %i.ml, %bb.bd ] ; 4 uses
  %.sroa.0402.2505 = phi ptr [ %.sroa.0402.1514, %.lr.ph ], [ %.sroa.0402.7, %bb.bd ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.lo = getelementptr inbounds [40 x i8], ptr %i.kz, i64 %indvars.iv ; 6 uses
  %i.lp = ptrtoint ptr %.sroa.0402.2505 to i64
  %i.lq = sub i64 %i.w, %i.lp
  %i.lr = icmp slt i64 %i.lq, 2
  br i1 %i.lr, label %bytestream2_get_be16.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ls = getelementptr inbounds nuw i8, ptr %.sroa.0402.2505, i64 2
  %i.lt = load i16, ptr %.sroa.0402.2505, align 1, !tbaa !37
  %i.lu = call i16 @llvm.bswap.i16(i16 %i.lt)
  %i.lv = zext i16 %i.lu to i32
  br label %bytestream2_get_be16.exit

bytestream2_get_be16.exit:                        ; preds = %bb.az, %bb.ba
  %.sroa.0402.7 = phi ptr [ %i.ls, %bb.ba ], [ %i.v, %bb.az ] ; 2 uses
  %.0.i318 = phi i32 [ %i.lv, %bb.ba ], [ 0, %bb.az ] ; 4 uses
  %.not295 = icmp sge i32 %.2258506, %i.lm
  %.not296 = icmp sge i32 %.0.i318, %i.lm
  %or.cond302.not475 = select i1 %.not295, i1 true, i1 %.not296
  %i.lw = sub nsw i32 %i.lm, %.0.i318
  %i.lx = icmp sgt i32 %.2258506, %i.lw
  %or.cond304 = select i1 %or.cond302.not475, i1 true, i1 %i.lx
  br i1 %or.cond304, label %bytestream2_get_be32.exit315.thread, label %bb.bb

bb.bb:                                            ; preds = %bytestream2_get_be16.exit
  %i.ly = load ptr, ptr %i.o, align 8, !tbaa !67  ; 2 uses
  %.not476 = icmp eq ptr %i.ly, null
  br i1 %.not476, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 141) #10
  call void @abort() #11
  unreachable

bb.bd:                                            ; preds = %bb.bb
  %i.lz = sext i32 %.2258506 to i64
  %i.ma = getelementptr inbounds i8, ptr %i.ly, i64 %i.lz ; 3 uses
  store ptr %i.ma, ptr %i.lo, align 8, !tbaa !43
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lo, i64 16
  store ptr %i.ma, ptr %i.mb, align 8, !tbaa !44
  %i.mc = zext nneg i32 %.0.i318 to i64
  %i.md = getelementptr inbounds nuw i8, ptr %i.ma, i64 %i.mc
  %i.me = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  store ptr %i.md, ptr %i.me, align 8, !tbaa !45
  %i.mf = shl i32 %.1247508, 4
  %i.mg = getelementptr inbounds nuw i8, ptr %i.lo, i64 24
  store i32 %i.mf, ptr %i.mg, align 8, !tbaa !47
  %i.mh = load i32, ptr %i.kt, align 8, !tbaa !75
  %i.mi = mul nsw i32 %i.mh, %.0250528
  %i.mj = getelementptr inbounds nuw i8, ptr %i.lo, i64 28
  store i32 %i.mi, ptr %i.mj, align 4, !tbaa !48
  %i.mk = getelementptr inbounds nuw i8, ptr %i.lo, i64 32
  store i32 %.0241519, ptr %i.mk, align 8, !tbaa !49
  %i.ml = add nsw i32 %.0.i318, %.2258506         ; 2 uses
  %i.mm = add i32 %.1247508, %i.ll                ; 2 uses
  %i.mn = sub nsw i32 %.1243509, %i.ll            ; 3 uses
  %.not294 = icmp sgt i32 %i.ll, %i.mn
  br i1 %.not294, label %._crit_edge.loopexit, label %bb.az, !llvm.loop !58

._crit_edge.loopexit:                             ; preds = %bb.bd
  %i.mo = trunc nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.ay
  %.sroa.0402.2.lcssa = phi ptr [ %.sroa.0402.1514, %bb.ay ], [ %.sroa.0402.7, %._crit_edge.loopexit ] ; 2 uses
  %.2258.lcssa = phi i32 [ %.1257515, %bb.ay ], [ %i.ml, %._crit_edge.loopexit ] ; 2 uses
  %.2253.lcssa = phi i32 [ %.1252516, %bb.ay ], [ %i.mo, %._crit_edge.loopexit ] ; 2 uses
  %.1247.lcssa = phi i32 [ %.0246517, %bb.ay ], [ %i.mm, %._crit_edge.loopexit ]
  %.1243.lcssa = phi i32 [ %.0242518, %bb.ay ], [ %i.mn, %._crit_edge.loopexit ] ; 2 uses
  %i.mp = add nsw i32 %.0241519, -1
  %i.mq = icmp slt i32 %.1243.lcssa, 1
  br i1 %i.mq, label %..thread456_crit_edge, label %bb.ay, !llvm.loop !59

..thread456_crit_edge:                            ; preds = %._crit_edge
  %i.mr = add nuw nsw i32 %.0250528, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.mr, %i.lg
  br i1 %exitcond.not, label %.critedge, label %.preheader479, !llvm.loop !60

.critedge:                                        ; preds = %..thread456_crit_edge, %bb.ax
  %i.ms = call i32 @ff_thread_get_buffer(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0) #10 ; 2 uses
  %i.mt = icmp slt i32 %i.ms, 0
  br i1 %i.mt, label %bytestream2_get_be32.exit315.thread, label %bb.be

bb.be:                                            ; preds = %.critedge
  %i.mu = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  store ptr %1, ptr %i.mu, align 8, !tbaa !76
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !77 ; 4 uses
  %.not298 = icmp eq ptr %i.mw, null
  br i1 %.not298, label %bb.bk, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.mx = getelementptr inbounds nuw i8, ptr %i.d, i64 160 ; 2 uses
  %i.my = call i32 @ff_hwaccel_frame_priv_alloc(ptr noundef nonnull %0, ptr noundef nonnull %i.mx) #10 ; 2 uses
  %i.mz = icmp slt i32 %i.my, 0
  br i1 %i.mz, label %bytestream2_get_be32.exit315.thread, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.na = getelementptr inbounds nuw i8, ptr %i.mw, i64 32
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !80
  %i.nc = load ptr, ptr %3, align 8, !tbaa !81
  %i.nd = load ptr, ptr %i.o, align 8, !tbaa !67
  %i.ne = load i32, ptr %i.q, align 8, !tbaa !64
  %i.nf = call i32 %i.nb(ptr noundef nonnull %0, ptr noundef %i.nc, ptr noundef %i.nd, i32 noundef %i.ne) #10 ; 2 uses
  %i.ng = icmp slt i32 %i.nf, 0
  br i1 %i.ng, label %bytestream2_get_be32.exit315.thread, label %.preheader477

.preheader477:                                    ; preds = %bb.bg
  %i.nh = load i32, ptr %i.ks, align 4, !tbaa !74
  %.not299529 = icmp sgt i32 %i.nh, 0
  br i1 %.not299529, label %.lr.ph531, label %._crit_edge532

.lr.ph531:                                        ; preds = %.preheader477
  %i.ni = getelementptr inbounds nuw i8, ptr %i.mw, i64 48
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bi
  %indvars.iv.next557 = add nuw nsw i64 %indvars.iv556, 1 ; 2 uses
  %i.nj = load i32, ptr %i.ks, align 4, !tbaa !74
  %i.nk = sext i32 %i.nj to i64
  %.not299 = icmp slt i64 %indvars.iv.next557, %i.nk
  br i1 %.not299, label %bb.bi, label %._crit_edge532, !llvm.loop !61

bb.bi:                                            ; preds = %.lr.ph531, %bb.bh
  %indvars.iv556 = phi i64 [ 0, %.lr.ph531 ], [ %indvars.iv.next557, %bb.bh ] ; 2 uses
  %i.nl = load ptr, ptr %i.ku, align 8, !tbaa !41
  %i.nm = getelementptr inbounds nuw [40 x i8], ptr %i.nl, i64 %indvars.iv556 ; 2 uses
  %i.nn = load ptr, ptr %i.ni, align 8, !tbaa !82
  %i.no = load ptr, ptr %i.nm, align 8, !tbaa !83 ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.nm, i64 8
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !84
  %i.nr = ptrtoint ptr %i.nq to i64
  %i.ns = ptrtoint ptr %i.no to i64
  %i.nt = sub i64 %i.nr, %i.ns
  %i.nu = trunc i64 %i.nt to i32
  %i.nv = call i32 %i.nn(ptr noundef nonnull %0, ptr noundef %i.no, i32 noundef %i.nu) #10 ; 2 uses
  %i.nw = icmp sgt i32 %i.nv, -1
  br i1 %i.nw, label %bb.bh, label %bytestream2_get_be32.exit315.thread

._crit_edge532:                                   ; preds = %bb.bh, %.preheader477
  %i.nx = getelementptr inbounds nuw i8, ptr %i.mw, i64 56
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !85
  %i.nz = call i32 %i.ny(ptr noundef nonnull %0) #10 ; 2 uses
  %i.oa = icmp slt i32 %i.nz, 0
  br i1 %i.oa, label %bytestream2_get_be32.exit315.thread, label %bb.bj

bb.bj:                                            ; preds = %._crit_edge532
  call void @av_refstruct_unref(ptr noundef nonnull %i.mx) #10
  br label %bb.bl

bb.bk:                                            ; preds = %bb.be
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !86
  %i.od = load i32, ptr %i.ks, align 4, !tbaa !74
  %i.oe = call i32 %i.oc(ptr noundef nonnull %0, ptr noundef nonnull @decode_tiles, ptr noundef %1, ptr noundef null, i32 noundef %i.od) #10 ; 0 uses
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bj, %bb.bk
  %i.of = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i32 1, ptr %i.of, align 8, !tbaa !91
  %i.og = getelementptr inbounds nuw i8, ptr %1, i64 276 ; 2 uses
  %i.oh = load i32, ptr %i.og, align 4, !tbaa !92
  %i.oi = or i32 %i.oh, 2
  store i32 %i.oi, ptr %i.og, align 4, !tbaa !92
  %i.oj = getelementptr inbounds nuw i8, ptr %1, i64 360
  store i64 %.0.i342, ptr %i.oj, align 8, !tbaa !93
  %i.ok = getelementptr inbounds nuw i8, ptr %1, i64 368
  store i64 %.0.i340, ptr %i.ok, align 8, !tbaa !94
  %i.ol = getelementptr inbounds nuw i8, ptr %1, i64 344
  store i64 %.0.i338, ptr %i.ol, align 8, !tbaa !95
  %i.om = getelementptr inbounds nuw i8, ptr %1, i64 352
  store i64 %.0.i337, ptr %i.om, align 8, !tbaa !96
  %i.on = call ptr @av_raw_color_params_create_side_data(ptr noundef %1) #10 ; 17 uses
  %.not300 = icmp eq ptr %i.on, null
  br i1 %.not300, label %bytestream2_get_be32.exit315.thread, label %.preheader

.preheader:                                       ; preds = %bb.bl
  store i32 1, ptr %i.on, align 4, !tbaa !98
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 4
  store i64 281470681743616, ptr %i.oo, align 4
  %i.op = getelementptr inbounds nuw i8, ptr %i.on, i64 12
  store i64 %.0.i325, ptr %i.op, align 4
  %i.oq = getelementptr inbounds nuw i8, ptr %i.on, i64 20
  store i32 %.0.i323, ptr %i.oq, align 4, !tbaa !99
  %i.or = getelementptr inbounds nuw i8, ptr %i.on, i64 24
  %i.os = call i64 @av_d2q(double noundef %.0.i312, i32 noundef 2147483647) #12
  store i64 %i.os, ptr %i.or, align 4
  %i.ot = getelementptr inbounds nuw i8, ptr %i.on, i64 32
  %i.ou = call i64 @av_d2q(double noundef %.0.i310, i32 noundef 2147483647) #12
  store i64 %i.ou, ptr %i.ot, align 4
  %i.ov = getelementptr inbounds nuw i8, ptr %i.on, i64 112
  %i.ow = call i64 @av_d2q(double noundef %.0.i, i32 noundef 2147483647) #12
  store i64 %i.ow, ptr %i.ov, align 4
  %i.ox = getelementptr inbounds nuw i8, ptr %i.on, i64 40
  %i.oy = call i64 @av_d2q(double noundef %.0.i308, i32 noundef 2147483647) #12
  store i64 %i.oy, ptr %i.ox, align 4
  %i.oz = getelementptr inbounds nuw i8, ptr %i.on, i64 48
  %i.pa = call i64 @av_d2q(double noundef %.0.i308.1, i32 noundef 2147483647) #12
  store i64 %i.pa, ptr %i.oz, align 4
  %i.pb = getelementptr inbounds nuw i8, ptr %i.on, i64 56
  %i.pc = call i64 @av_d2q(double noundef %.0.i308.2, i32 noundef 2147483647) #12
  store i64 %i.pc, ptr %i.pb, align 4
  %i.pd = getelementptr inbounds nuw i8, ptr %i.on, i64 64
  %i.pe = call i64 @av_d2q(double noundef %.0.i308.1549, i32 noundef 2147483647) #12
  store i64 %i.pe, ptr %i.pd, align 4
  %i.pf = getelementptr inbounds nuw i8, ptr %i.on, i64 72
  %i.pg = call i64 @av_d2q(double noundef %.0.i308.1.1, i32 noundef 2147483647) #12
  store i64 %i.pg, ptr %i.pf, align 4
  %i.ph = getelementptr inbounds nuw i8, ptr %i.on, i64 80
  %i.pi = call i64 @av_d2q(double noundef %.0.i308.2.1, i32 noundef 2147483647) #12
  store i64 %i.pi, ptr %i.ph, align 4
  %i.pj = getelementptr inbounds nuw i8, ptr %i.on, i64 88
  %i.pk = call i64 @av_d2q(double noundef %.0.i308.2552, i32 noundef 2147483647) #12
  store i64 %i.pk, ptr %i.pj, align 4
  %i.pl = getelementptr inbounds nuw i8, ptr %i.on, i64 96
  %i.pm = call i64 @av_d2q(double noundef %.0.i308.1.2, i32 noundef 2147483647) #12
  store i64 %i.pm, ptr %i.pl, align 4
  %i.pn = getelementptr inbounds nuw i8, ptr %i.on, i64 104
  %i.po = call i64 @av_d2q(double noundef %.0.i308.2.2, i32 noundef 2147483647) #12
  store i64 %i.po, ptr %i.pn, align 4
  store i32 1, ptr %2, align 4, !tbaa !36
  %i.pp = load i32, ptr %i.q, align 8, !tbaa !64
  br label %bytestream2_get_be32.exit315.thread

bytestream2_get_be32.exit315.thread:              ; preds = %bytestream2_get_be16.exit, %bb.bi, %bb.ak, %.critedge, %bb.bl, %.preheader, %bb.aw, %.loopexit, %bb.bf, %bb.bg, %._crit_edge532, %bytestream2_get_be32.exit317, %bytestream2_get_be32.exit315, %bytestream2_get_be16.exit334, %bb.i, %bytestream2_get_be16.exit330, %._crit_edge567, %bb.v, %bb.o, %bb.j, %bb.e, %bb.b
  %.21 = phi i32 [ %i.k, %bb.b ], [ -1163346256, %bb.e ], [ -1094995529, %bytestream2_get_be32.exit315 ], [ -1094995529, %bytestream2_get_be32.exit317 ], [ -1163346256, %bb.v ], [ -1094995529, %bb.i ], [ -1094995529, %bytestream2_get_be16.exit334 ], [ %i.ce, %bb.o ], [ -1163346256, %bb.j ], [ %i.br, %._crit_edge567 ], [ -1094995529, %bytestream2_get_be16.exit330 ], [ -1094995529, %bb.ak ], [ -12, %.loopexit ], [ -1094995529, %bb.aw ], [ %i.nv, %bb.bi ], [ %i.ms, %.critedge ], [ -12, %bb.bl ], [ %i.pp, %.preheader ], [ %i.nz, %._crit_edge532 ], [ %i.nf, %bb.bg ], [ %i.my, %bb.bf ], [ -1094995529, %bytestream2_get_be16.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  ret i32 %.21
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @decode_end(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  tail call void @av_refstruct_unref(ptr noundef nonnull %i.c) #10
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  tail call void @av_freep(ptr noundef nonnull %i.d) #10
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare void @ff_blockdsp_init(ptr noundef) local_unnamed_addr #4

declare void @ff_proresdsp_init(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @ff_permute_scantable(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare void @avpriv_request_sample(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

declare i32 @ff_set_dimensions(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare void @av_fast_mallocz(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare i32 @ff_thread_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @ff_hwaccel_frame_priv_alloc(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @av_refstruct_unref(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal range(i32 -1094995529, 1) i32 @decode_tiles(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 %3) #2 {
bb.a:
  %i.a = alloca [64 x i16], align 16              ; 20 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28   ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !41
  %i.f = sext i32 %2 to i64
  %i.g = getelementptr inbounds [40 x i8], ptr %i.e, i64 %i.f ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !47
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.k = load i32, ptr %i.j, align 8, !tbaa !38
  %.not.i = icmp ult i32 %i.i, %i.k
  br i1 %.not.i, label %bb.b, label %decode_tile.exit

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !104  ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 2 uses
  store ptr %i.m, ptr %i.g, align 8, !tbaa !104
  %i.n = load i8, ptr %i.l, align 1, !tbaa !37
  %i.o = lshr i8 %i.n, 3                          ; 2 uses
  %i.p = zext nneg i8 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 2 ; 3 uses
  store ptr %i.q, ptr %i.g, align 8, !tbaa !104
  %i.r = load i8, ptr %i.m, align 1, !tbaa !37
  %i.s = zext i8 %i.r to i16                      ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !45   ; 4 uses
  %i.v = ptrtoint ptr %i.u to i64                 ; 6 uses
  %i.w = ptrtoint ptr %i.q to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = icmp slt i64 %i.x, 2
  br i1 %i.y, label %bytestream2_get_be16.exit68.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 3 uses
  store ptr %i.z, ptr %i.g, align 8, !tbaa !104
  %i.aa = load i16, ptr %i.q, align 1, !tbaa !37
  %i.ab = tail call i16 @llvm.bswap.i16(i16 %i.aa)
  %i.ac = zext i16 %i.ab to i32
  %.pre.i = ptrtoint ptr %i.z to i64
  br label %bytestream2_get_be16.exit68.i

bytestream2_get_be16.exit68.i:                    ; preds = %bb.c, %bb.b
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.c ], [ %i.v, %bb.b ]
  %i.ad = phi ptr [ %i.z, %bb.c ], [ %i.u, %bb.b ] ; 2 uses
  %.0.i67.i = phi i32 [ %i.ac, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %i.ae = sub i64 %i.v, %.pre-phi.i
  %i.af = icmp slt i64 %i.ae, 2
  br i1 %i.af, label %bytestream2_get_be16.exit66.i, label %bb.d

bb.d:                                             ; preds = %bytestream2_get_be16.exit68.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 2 ; 3 uses
  store ptr %i.ag, ptr %i.g, align 8, !tbaa !104
  %i.ah = load i16, ptr %i.ad, align 1, !tbaa !37
  %i.ai = tail call i16 @llvm.bswap.i16(i16 %i.ah)
  %i.aj = zext i16 %i.ai to i32
  %.pre85.i = ptrtoint ptr %i.ag to i64
  br label %bytestream2_get_be16.exit66.i

bytestream2_get_be16.exit66.i:                    ; preds = %bb.d, %bytestream2_get_be16.exit68.i
  %.pre-phi86.i = phi i64 [ %.pre85.i, %bb.d ], [ %i.v, %bytestream2_get_be16.exit68.i ]
  %i.ak = phi ptr [ %i.ag, %bb.d ], [ %i.u, %bytestream2_get_be16.exit68.i ] ; 2 uses
  %.0.i65.i = phi i32 [ %i.aj, %bb.d ], [ 0, %bytestream2_get_be16.exit68.i ] ; 3 uses
  %i.al = sub i64 %i.v, %.pre-phi86.i
  %i.am = icmp slt i64 %i.al, 2
  br i1 %i.am, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bytestream2_get_be16.exit66.i
  store ptr %i.u, ptr %i.g, align 8, !tbaa !43
  br label %bytestream2_get_be16.exit.i

bb.f:                                             ; preds = %bytestream2_get_be16.exit66.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 2
  store ptr %i.an, ptr %i.g, align 8, !tbaa !104
  %i.ao = load i16, ptr %i.ak, align 1, !tbaa !37
  %i.ap = tail call i16 @llvm.bswap.i16(i16 %i.ao)
  %i.aq = zext i16 %i.ap to i32
  br label %bytestream2_get_be16.exit.i

bytestream2_get_be16.exit.i:                      ; preds = %bb.f, %bb.e
  %.0.i.i = phi i32 [ 0, %bb.e ], [ %i.aq, %bb.f ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !44 ; 2 uses
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = sub i64 %i.v, %i.at
  %i.av = trunc i64 %i.au to i32
  %i.aw = add nuw nsw i32 %.0.i67.i, %i.p
  %i.ax = add nuw nsw i32 %i.aw, %.0.i65.i
  %i.ay = add nuw nsw i32 %i.ax, %.0.i.i
  %i.az = sub i32 %i.av, %i.ay                    ; 2 uses
  %i.ba = icmp slt i32 %i.az, 0
  br i1 %i.ba, label %decode_tile.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bytestream2_get_be16.exit.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 240 ; 6 uses
  %scevgep = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %scevgep13 = getelementptr i8, ptr %i.c, i64 304
  %bound0 = icmp ult ptr %i.a, %scevgep13
  %bound1 = icmp ult ptr %i.bb, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %.preheader.i
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.s, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 8 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 248
  %wide.load = load <8 x i8>, ptr %i.bb, align 8, !tbaa !37, !alias.scope !105
  %wide.load14 = load <8 x i8>, ptr %i.bc, align 8, !tbaa !37, !alias.scope !105
  %i.bd = zext <8 x i8> %wide.load to <8 x i16>
  %i.be = zext <8 x i8> %wide.load14 to <8 x i16>
  %i.bf = mul nuw <8 x i16> %broadcast.splat, %i.bd
  %i.bg = mul nuw <8 x i16> %broadcast.splat, %i.be
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <8 x i16> %i.bf, ptr %i.a, align 16, !tbaa !40, !alias.scope !106, !noalias !105
  store <8 x i16> %i.bg, ptr %i.bh, align 16, !tbaa !40, !alias.scope !106, !noalias !105
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 264
  %wide.load.1 = load <8 x i8>, ptr %i.bi, align 8, !tbaa !37, !alias.scope !105
  %wide.load14.1 = load <8 x i8>, ptr %i.bj, align 8, !tbaa !37, !alias.scope !105
  %i.bk = zext <8 x i8> %wide.load.1 to <8 x i16>
  %i.bl = zext <8 x i8> %wide.load14.1 to <8 x i16>
  %i.bm = mul nuw <8 x i16> %broadcast.splat, %i.bk
  %i.bn = mul nuw <8 x i16> %broadcast.splat, %i.bl
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store <8 x i16> %i.bm, ptr %i.bo, align 16, !tbaa !40, !alias.scope !106, !noalias !105
  store <8 x i16> %i.bn, ptr %i.bp, align 16, !tbaa !40, !alias.scope !106, !noalias !105
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 272
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  %wide.load.2 = load <8 x i8>, ptr %i.bq, align 8, !tbaa !37, !alias.scope !105
  %wide.load14.2 = load <8 x i8>, ptr %i.br, align 8, !tbaa !37, !alias.scope !105
  %i.bs = zext <8 x i8> %wide.load.2 to <8 x i16>
  %i.bt = zext <8 x i8> %wide.load14.2 to <8 x i16>
  %i.bu = mul nuw <8 x i16> %broadcast.splat, %i.bs
  %i.bv = mul nuw <8 x i16> %broadcast.splat, %i.bt
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store <8 x i16> %i.bu, ptr %i.bw, align 16, !tbaa !40, !alias.scope !106, !noalias !105
  store <8 x i16> %i.bv, ptr %i.bx, align 16, !tbaa !40, !alias.scope !106, !noalias !105
  %i.by = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 296
  %wide.load.3 = load <8 x i8>, ptr %i.by, align 8, !tbaa !37, !alias.scope !105
  %wide.load14.3 = load <8 x i8>, ptr %i.bz, align 8, !tbaa !37, !alias.scope !105
  %i.ca = zext <8 x i8> %wide.load.3 to <8 x i16>
  %i.cb = zext <8 x i8> %wide.load14.3 to <8 x i16>
  %i.cc = mul nuw <8 x i16> %broadcast.splat, %i.ca
  %i.cd = mul nuw <8 x i16> %broadcast.splat, %i.cb
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store <8 x i16> %i.cc, ptr %i.ce, align 16, !tbaa !40, !alias.scope !106, !noalias !105
  store <8 x i16> %i.cd, ptr %i.cf, align 16, !tbaa !40, !alias.scope !106, !noalias !105
  br label %middle.block

middle.block:                                     ; preds = %scalar.ph, %vector.body
  %i.cg = zext nneg i8 %i.o to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.cg ; 2 uses
  %.val78.i = load ptr, ptr %1, align 8, !tbaa !104
  %i.ci = getelementptr i8, ptr %1, i64 64        ; 4 uses
  %.val79.i = load i32, ptr %i.ci, align 8, !tbaa !36
  %i.cj = call fastcc i32 @decode_comp(ptr nonnull %i.c, ptr noundef nonnull %i.g, ptr %.val78.i, i32 %.val79.i, ptr noundef %i.ch, i32 noundef %.0.i67.i, i32 noundef 2, ptr noundef %i.a) ; 2 uses
  %i.ck = icmp slt i32 %i.cj, 0
  br i1 %i.ck, label %bb.j, label %bb.g

scalar.ph:                                        ; preds = %.preheader.i, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %scalar.ph ], [ 0, %.preheader.i ] ; 6 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv.i
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !37
  %i.cn = zext i8 %i.cm to i16
  %i.co = mul nuw i16 %i.cn, %i.s
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i
  store i16 %i.co, ptr %i.cp, align 8, !tbaa !40
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv.next.i
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !37
  %i.cs = zext i8 %i.cr to i16
  %i.ct = mul nuw i16 %i.cs, %i.s
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next.i
  store i16 %i.ct, ptr %i.cu, align 2, !tbaa !40
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv.next.i.1
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !37
  %i.cx = zext i8 %i.cw to i16
  %i.cy = mul nuw i16 %i.cx, %i.s
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next.i.1
  store i16 %i.cy, ptr %i.cz, align 4, !tbaa !40
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv.next.i.2
  %i.db = load i8, ptr %i.da, align 1, !tbaa !37
  %i.dc = zext i8 %i.db to i16
  %i.dd = mul nuw i16 %i.dc, %i.s
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next.i.2
  store i16 %i.dd, ptr %i.de, align 2, !tbaa !40
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, 64
  br i1 %exitcond.not.i.3, label %middle.block, label %scalar.ph, !llvm.loop !103

bb.g:                                             ; preds = %middle.block
  %i.df = zext nneg i32 %.0.i67.i to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.df ; 2 uses
  %.val74.i = load ptr, ptr %i.b, align 8, !tbaa !28
  %.val75.i = load ptr, ptr %1, align 8, !tbaa !104
  %.val76.i = load i32, ptr %i.ci, align 8, !tbaa !36
  %i.dh = call fastcc i32 @decode_comp(ptr %.val74.i, ptr noundef nonnull %i.g, ptr %.val75.i, i32 %.val76.i, ptr noundef %i.dg, i32 noundef %.0.i65.i, i32 noundef 1, ptr noundef %i.a) ; 2 uses
  %i.di = icmp slt i32 %i.dh, 0
  br i1 %i.di, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dj = zext nneg i32 %.0.i65.i to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.dj ; 2 uses
  %.val71.i = load ptr, ptr %i.b, align 8, !tbaa !28
  %.val72.i = load ptr, ptr %1, align 8, !tbaa !104
  %.val73.i = load i32, ptr %i.ci, align 8, !tbaa !36
  %i.dl = call fastcc i32 @decode_comp(ptr %.val71.i, ptr noundef nonnull %i.g, ptr %.val72.i, i32 %.val73.i, ptr noundef %i.dk, i32 noundef %.0.i.i, i32 noundef 3, ptr noundef %i.a) ; 2 uses
  %i.dm = icmp slt i32 %i.dl, 0
  br i1 %i.dm, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dn = zext nneg i32 %.0.i.i to i64
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dn
  %.val.i = load ptr, ptr %i.b, align 8, !tbaa !28
  %.val69.i = load ptr, ptr %1, align 8, !tbaa !104
  %.val70.i = load i32, ptr %i.ci, align 8, !tbaa !36
  %i.dp = call fastcc i32 @decode_comp(ptr %.val.i, ptr noundef nonnull %i.g, ptr %.val69.i, i32 %.val70.i, ptr noundef %i.do, i32 noundef %i.az, i32 noundef 0, ptr noundef %i.a) ; 2 uses
  %i.dq = icmp slt i32 %i.dp, 0
  br i1 %i.dq, label %bb.j, label %decode_tile.exit

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %middle.block
  %.058.i = phi i32 [ %i.cj, %middle.block ], [ %i.dh, %bb.g ], [ %i.dl, %bb.h ], [ %i.dp, %bb.i ]
  %i.dr = load i32, ptr %i.h, align 8, !tbaa !47
  %i.ds = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !48
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.11, i32 noundef %i.dr, i32 noundef %i.dt) #10
  br label %decode_tile.exit

decode_tile.exit:                                 ; preds = %bb.a, %bytestream2_get_be16.exit.i, %bb.i, %bb.j
  %.2.i = phi i32 [ 0, %bb.a ], [ -1094995529, %bytestream2_get_be16.exit.i ], [ %.058.i, %bb.j ], [ 0, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.2.i
}

declare ptr @av_raw_color_params_create_side_data(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_d2q(double noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #7

declare i32 @ff_get_format(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1094995529, 1) i32 @decode_comp(ptr %.32.val, ptr nofree noundef readonly captures(none) %0, ptr %.0.val, i32 %.64.val, ptr noundef %1, i32 noundef range(i32 0, -2147483648) %2, i32 noundef range(i32 0, 4) %3, ptr noundef nonnull %4) unnamed_addr #2 {
bb.a:
  %i.a = alloca [1024 x i32], align 16            ; 8 uses
  %5 = alloca %struct.BitstreamContextBE, align 8 ; 19 uses
  %i.b = ashr i32 %.64.val, 1
  %i.c = sext i32 %i.b to i64                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.e = load i32, ptr %i.d, align 4, !tbaa !48
  %i.f = mul i32 %i.e, %.64.val
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i32, ptr %i.i, align 8, !tbaa !47
  %i.k = shl i32 %i.j, 1
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load i32, ptr %i.n, align 8, !tbaa !49   ; 5 uses
  %i.p = shl nuw i32 1, %i.o                      ; 6 uses
  %i.q = add nsw i32 %i.p, -1                     ; 2 uses
  %i.r = shl i32 64, %i.o                         ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.s = getelementptr inbounds nuw i8, ptr %.32.val, i64 176 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.t = icmp samesign ugt i32 %3, 1
  %spec.select.idx = select i1 %i.t, i64 %i.c, i64 0
  %spec.select = getelementptr inbounds [2 x i8], ptr %i.m, i64 %spec.select.idx
  %i.u = and i32 %3, 1
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %spec.select, i64 %i.v
  %i.x = icmp samesign ugt i32 %2, 268435455
  %.not.i.i = icmp eq ptr %1, null
  %or.cond = or i1 %i.x, %.not.i.i
  br i1 %or.cond, label %bits_init8_be.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.y = shl nuw nsw i32 %2, 3
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  store ptr %1, ptr %i.z, align 8, !tbaa !111
  %i.aa = zext nneg i32 %2 to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !52
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 11 uses
  store ptr %1, ptr %i.ad, align 8, !tbaa !53
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 36 ; 6 uses
  store i32 %i.y, ptr %i.ae, align 4, !tbaa !112
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 10 uses
  store i32 0, ptr %i.af, align 8, !tbaa !54
  store i64 0, ptr %5, align 8, !tbaa !55
  %.not.i.not.i.i = icmp eq i32 %2, 0
  br i1 %.not.i.not.i.i, label %bits_init8_be.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ag = load i64, ptr %1, align 1, !tbaa !37
  %i.ah = tail call noundef i64 @llvm.bswap.i64(i64 %i.ag)
  store i64 %i.ah, ptr %5, align 8, !tbaa !55
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.ai, ptr %i.ad, align 8, !tbaa !53
  store i32 64, ptr %i.af, align 8, !tbaa !54
  br label %bits_init8_be.exit

bits_init8_be.exit:                               ; preds = %bb.c, %bb.b
  %i.aj = sext i32 %i.r to i64
  %i.ak = shl nsw i64 %i.aj, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.a, i8 0, i64 %i.ak, i1 false)
  %i.al = call fastcc zeroext i16 @get_value(ptr noundef %5, i16 noundef signext 700)
  %i.am = zext i16 %i.al to i32                   ; 3 uses
  %i.an = lshr i32 %i.am, 1                       ; 2 uses
  %i.ao = and i32 %i.am, 1                        ; 3 uses
  %i.ap = sub nsw i32 0, %i.ao                    ; 2 uses
  %i.aq = add nuw nsw i32 %i.ao, %i.an
  %i.ar = xor i32 %i.aq, %i.ap
  %i.as = add nuw nsw i32 %i.ao, 1
  %i.at = add nsw i32 %i.as, %i.ar
  store i32 %i.at, ptr %i.a, align 16, !tbaa !36
  %i.au = icmp sgt i32 %i.p, 1
  br i1 %i.au, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bits_init8_be.exit
  %i.av = xor i32 %i.an, %i.ap
  %wide.trip.count = zext nneg i32 %i.p to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %.01149 = phi i32 [ %i.av, %.lr.ph ], [ %i.cd, %bb.g ]
  %.01158 = phi i32 [ %i.am, %.lr.ph ], [ %i.br, %bb.g ]
  %.01207 = phi i16 [ 0, %.lr.ph ], [ %i.cc, %bb.g ]
  %i.aw = load ptr, ptr %i.z, align 8, !tbaa !111
  %i.ax = load ptr, ptr %i.ad, align 8, !tbaa !53
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = load i32, ptr %i.ae, align 4, !tbaa !112
  %i.bc = load i32, ptr %i.af, align 8, !tbaa !54
  %.tr.i = trunc i64 %i.ba to i32
  %i.bd = shl i32 %.tr.i, 3
  %i.be = add i32 %i.bc, %i.bb
  %i.bf = add i32 %i.be, %i.bd
  %i.bg = icmp slt i32 %i.bf, 1
  br i1 %i.bg, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bh = and i64 %indvars.iv, 15
  %i.bi = icmp eq i64 %i.bh, 1
  br i1 %i.bi, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bj = add nuw nsw i32 %.01158, 1
  %i.bk = lshr i32 %i.bj, 1
  %i.bl = tail call i32 @llvm.umin.i32(i32 %i.bk, i32 12)
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr @ff_prores_raw_dc_cb, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !37
  %i.bp = zext i8 %i.bo to i16
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.0119 = phi i16 [ %i.bp, %bb.f ], [ 100, %bb.e ]
  %i.bq = call fastcc zeroext i16 @get_value(ptr noundef %5, i16 noundef signext %.0119) ; 2 uses
  %i.br = zext i16 %i.bq to i32                   ; 2 uses
  %i.bs = and i16 %i.bq, 1
  %i.bt = xor i16 %i.bs, %.01207                  ; 2 uses
  %i.bu = zext nneg i16 %i.bt to i32
  %i.bv = sub nsw i32 0, %i.bu
  %i.bw = add nuw nsw i32 %i.br, 1
  %i.bx = lshr i32 %i.bw, 1
  %i.by = xor i32 %i.bx, %i.bv
  %i.bz = trunc i32 %i.by to i16
  %i.ca = add i16 %i.bt, %i.bz
  %i.cb = sext i16 %i.ca to i32                   ; 2 uses
  %.lobit = lshr i32 %i.cb, 31
  %i.cc = trunc nuw nsw i32 %.lobit to i16
  %i.cd = add nsw i32 %.01149, %i.cb              ; 2 uses
  %i.ce = add nsw i32 %i.cd, 1
  %.idx = shl nuw nsw i64 %indvars.iv, 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx
  store i32 %i.ce, ptr %i.cf, align 16, !tbaa !36
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !108

._crit_edge:                                      ; preds = %bb.g, %bb.d, %bits_init8_be.exit
  %.not24 = icmp sgt i32 %i.p, %i.r
  br i1 %.not24, label %._crit_edge31, label %.lr.ph30

.lr.ph30:                                         ; preds = %._crit_edge
  %.pre = load i32, ptr %i.af, align 8, !tbaa !54
  %i.cg = load ptr, ptr %i.z, align 8, !tbaa !111
  %i.ch = load ptr, ptr %i.ad, align 8, !tbaa !53
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = load i32, ptr %i.ae, align 4, !tbaa !112
  %.tr.i13162 = trunc i64 %i.ck to i32
  %i.cm = shl i32 %.tr.i13162, 3
  %i.cn = add i32 %.pre, %i.cl
  %i.co = add i32 %i.cn, %i.cm
  %i.cp = icmp slt i32 %i.co, 1
  br i1 %i.cp, label %._crit_edge31, label %.lr.ph67

.lr.ph67:                                         ; preds = %.lr.ph30, %bits_read_bit_be.exit143
  %.01182566 = phi i16 [ %i.gh, %bits_read_bit_be.exit143 ], [ 49, %.lr.ph30 ] ; 2 uses
  %.01172665 = phi i16 [ %i.eq, %bits_read_bit_be.exit143 ], [ 0, %.lr.ph30 ]
  %.01162764 = phi i16 [ %i.gl, %bits_read_bit_be.exit143 ], [ 66, %.lr.ph30 ]
  %.01122863 = phi i32 [ %i.gm, %bits_read_bit_be.exit143 ], [ %i.p, %.lr.ph30 ] ; 4 uses
  %i.cq = call fastcc zeroext i16 @get_value(ptr noundef %5, i16 noundef signext %.01162764) ; 2 uses
  %i.cr = zext i16 %i.cq to i32                   ; 2 uses
  %.not39 = icmp eq i16 %i.cq, 0
  br i1 %.not39, label %._crit_edge16, label %.lr.ph15.preheader

.lr.ph15.preheader:                               ; preds = %.lr.ph67
  %smax = tail call i32 @llvm.smax.i32(i32 %.01122863, i32 %i.r)
  %i.cs = sub i32 %smax, %.01122863
  %.pre48 = load i32, ptr %i.af, align 8, !tbaa !54
  br label %.lr.ph15

.lr.ph15:                                         ; preds = %.lr.ph15.preheader, %bits_read_bit_be.exit
  %i.ct = phi i32 [ %i.dv, %bits_read_bit_be.exit ], [ %.pre48, %.lr.ph15.preheader ]
  %.011113 = phi i32 [ %i.ej, %bits_read_bit_be.exit ], [ 0, %.lr.ph15.preheader ] ; 3 uses
  %.112 = phi i16 [ %i.dk, %bits_read_bit_be.exit ], [ %.01182566, %.lr.ph15.preheader ] ; 3 uses
  %i.cu = load ptr, ptr %i.z, align 8, !tbaa !111
  %i.cv = load ptr, ptr %i.ad, align 8, !tbaa !53
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = load i32, ptr %i.ae, align 4, !tbaa !112
  %.tr.i132 = trunc i64 %i.cy to i32
  %i.da = shl i32 %.tr.i132, 3
  %i.db = add i32 %i.ct, %i.cz
  %i.dc = add i32 %i.db, %i.da
  %i.dd = icmp slt i32 %i.dc, 1
  br i1 %i.dd, label %._crit_edge16, label %bb.h

bb.h:                                             ; preds = %.lr.ph15
  %i.de = add nsw i32 %.011113, %.01122863        ; 2 uses
  %exitcond40.not = icmp eq i32 %.011113, %i.cs
  br i1 %exitcond40.not, label %._crit_edge16, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.df = call fastcc zeroext i16 @get_value(ptr noundef %5, i16 noundef signext %.112)
  %i.dg = zext i16 %i.df to i32                   ; 2 uses
  %i.dh = tail call i32 @llvm.umin.i32(i32 %i.dg, i32 94)
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr @ff_prores_raw_ac_cb, i64 %i.di
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !40 ; 2 uses
  %i.dl = load i32, ptr %i.af, align 8, !tbaa !54 ; 2 uses
  %.not.i = icmp eq i32 %i.dl, 0
  br i1 %.not.i, label %bb.j, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.i
  %.val.i.pre.i = load i64, ptr %5, align 8, !tbaa !55
  %i.dm = add i32 %i.dl, -1
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.dn = load ptr, ptr %i.ad, align 8, !tbaa !53 ; 3 uses
  %i.do = load ptr, ptr %i.ac, align 8, !tbaa !52
  %.not.i.i134 = icmp ult ptr %i.dn, %i.do
  br i1 %.not.i.i134, label %bits_priv_refill_64_be.exit.i, label %bits_read_bit_be.exit

bits_priv_refill_64_be.exit.i:                    ; preds = %bb.j
  %i.dp = load i64, ptr %i.dn, align 1, !tbaa !37
  %i.dq = tail call noundef i64 @llvm.bswap.i64(i64 %i.dp)
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  store ptr %i.dr, ptr %i.ad, align 8, !tbaa !53
  br label %bb.k

bb.k:                                             ; preds = %bits_priv_refill_64_be.exit.i, %._crit_edge.i
  %i.ds = phi i32 [ %i.dm, %._crit_edge.i ], [ 63, %bits_priv_refill_64_be.exit.i ] ; 2 uses
  %.val.i.i = phi i64 [ %.val.i.pre.i, %._crit_edge.i ], [ %i.dq, %bits_priv_refill_64_be.exit.i ] ; 2 uses
  %i.dt = shl i64 %.val.i.i, 1
  store i64 %i.dt, ptr %5, align 8, !tbaa !55
  store i32 %i.ds, ptr %i.af, align 8, !tbaa !54
  %sh.diff = ashr i64 %.val.i.i, 47
  %tr.sh.diff = trunc nsw i64 %sh.diff to i32
  %i.du = ashr i32 %tr.sh.diff, 16
  br label %bits_read_bit_be.exit

bits_read_bit_be.exit:                            ; preds = %bb.j, %bb.k
  %i.dv = phi i32 [ %i.ds, %bb.k ], [ 0, %bb.j ]
  %.0.i133.neg = phi i32 [ %i.du, %bb.k ], [ 0, %bb.j ] ; 2 uses
  %i.dw = ashr i32 %i.de, %i.o
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds i8, ptr %i.s, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !37
  %i.ea = zext i8 %i.dz to i32
  %i.eb = and i32 %i.de, %i.q
  %i.ec = shl i32 %i.eb, 6
  %i.ed = add nsw i32 %i.ec, %i.ea
  %i.ee = add nuw nsw i32 %i.dg, 1
  %i.ef = xor i32 %.0.i133.neg, %i.ee
  %i.eg = sub nsw i32 %i.ef, %.0.i133.neg
  %i.eh = sext i32 %i.ed to i64
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.eh
  store i32 %i.eg, ptr %i.ei, align 4, !tbaa !36
  %i.ej = add nuw nsw i32 %.011113, 1             ; 2 uses
  %exitcond41.not = icmp eq i32 %i.ej, %i.cr
  br i1 %exitcond41.not, label %._crit_edge16, label %.lr.ph15, !llvm.loop !109

._crit_edge16:                                    ; preds = %bits_read_bit_be.exit, %.lr.ph15, %bb.h, %.lr.ph67
  %.1.lcssa = phi i16 [ %.01182566, %.lr.ph67 ], [ %.112, %bb.h ], [ %.112, %.lr.ph15 ], [ %i.dk, %bits_read_bit_be.exit ]
  %i.ek = add nsw i32 %.01122863, %i.cr           ; 2 uses
  %.not128 = icmp slt i32 %i.ek, %i.r
  br i1 %.not128, label %bb.l, label %._crit_edge31

bb.l:                                             ; preds = %._crit_edge16
  %i.el = call fastcc zeroext i16 @get_value(ptr noundef %5, i16 noundef signext %.01172665)
  %i.em = zext i16 %i.el to i32                   ; 2 uses
  %i.en = tail call i32 @llvm.umin.i32(i32 %i.em, i32 27)
  %i.eo = zext nneg i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr @ff_prores_raw_rn_cb, i64 %i.eo
  %i.eq = load i16, ptr %i.ep, align 2, !tbaa !40
  %i.er = add nsw i32 %i.ek, 1
  %i.es = add i32 %i.er, %i.em                    ; 4 uses
  %.not129 = icmp slt i32 %i.es, %i.r
  br i1 %.not129, label %bb.m, label %._crit_edge31

bb.m:                                             ; preds = %bb.l
  %i.et = load ptr, ptr %i.z, align 8, !tbaa !111
  %i.eu = load ptr, ptr %i.ad, align 8, !tbaa !53
  %i.ev = ptrtoint ptr %i.et to i64
  %i.ew = ptrtoint ptr %i.eu to i64
  %i.ex = sub i64 %i.ev, %i.ew
  %i.ey = load i32, ptr %i.ae, align 4, !tbaa !112
  %i.ez = load i32, ptr %i.af, align 8, !tbaa !54
  %.tr.i135 = trunc i64 %i.ex to i32
  %i.fa = shl i32 %.tr.i135, 3
  %i.fb = add i32 %i.ez, %i.ey
  %i.fc = add i32 %i.fb, %i.fa
  %i.fd = icmp slt i32 %i.fc, 1
  br i1 %i.fd, label %._crit_edge31, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fe = call fastcc zeroext i16 @get_value(ptr noundef %5, i16 noundef signext %.1.lcssa)
  %i.ff = load i32, ptr %i.af, align 8, !tbaa !54 ; 2 uses
  %.not.i136 = icmp eq i32 %i.ff, 0
  br i1 %.not.i136, label %bb.o, label %._crit_edge.i137

._crit_edge.i137:                                 ; preds = %bb.n
  %.val.i.pre.i138 = load i64, ptr %5, align 8, !tbaa !55
  %i.fg = add i32 %i.ff, -1
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.fh = load ptr, ptr %i.ad, align 8, !tbaa !53 ; 3 uses
  %i.fi = load ptr, ptr %i.ac, align 8, !tbaa !52
  %.not.i.i141 = icmp ult ptr %i.fh, %i.fi
  br i1 %.not.i.i141, label %bits_priv_refill_64_be.exit.i142, label %bits_read_bit_be.exit143

bits_priv_refill_64_be.exit.i142:                 ; preds = %bb.o
  %i.fj = load i64, ptr %i.fh, align 1, !tbaa !37
  %i.fk = tail call noundef i64 @llvm.bswap.i64(i64 %i.fj)
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  store ptr %i.fl, ptr %i.ad, align 8, !tbaa !53
  br label %bb.p

bb.p:                                             ; preds = %bits_priv_refill_64_be.exit.i142, %._crit_edge.i137
  %i.fm = phi i32 [ %i.fg, %._crit_edge.i137 ], [ 63, %bits_priv_refill_64_be.exit.i142 ] ; 2 uses
  %.val.i.i139 = phi i64 [ %.val.i.pre.i138, %._crit_edge.i137 ], [ %i.fk, %bits_priv_refill_64_be.exit.i142 ] ; 2 uses
  %i.fn = shl i64 %.val.i.i139, 1
  store i64 %i.fn, ptr %5, align 8, !tbaa !55
  store i32 %i.fm, ptr %i.af, align 8, !tbaa !54
  %sh.diff5 = ashr i64 %.val.i.i139, 47
  %tr.sh.diff6 = trunc nsw i64 %sh.diff5 to i32
  %i.fo = ashr i32 %tr.sh.diff6, 16
  br label %bits_read_bit_be.exit143

bits_read_bit_be.exit143:                         ; preds = %bb.o, %bb.p
  %i.fp = phi i32 [ %i.fm, %bb.p ], [ 0, %bb.o ]
  %.0.i140.neg = phi i32 [ %i.fo, %bb.p ], [ 0, %bb.o ] ; 2 uses
  %i.fq = ashr i32 %i.es, %i.o
  %i.fr = sext i32 %i.fq to i64
  %i.fs = getelementptr inbounds i8, ptr %i.s, i64 %i.fr
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !37
  %i.fu = zext i8 %i.ft to i32
  %i.fv = and i32 %i.es, %i.q
  %i.fw = shl i32 %i.fv, 6
  %i.fx = add nsw i32 %i.fw, %i.fu
  %i.fy = zext i16 %i.fe to i32                   ; 3 uses
  %i.fz = add nuw nsw i32 %i.fy, 1
  %i.ga = xor i32 %.0.i140.neg, %i.fz
  %i.gb = sub nsw i32 %i.ga, %.0.i140.neg
  %i.gc = sext i32 %i.fx to i64
  %i.gd = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.gc
  store i32 %i.gb, ptr %i.gd, align 4, !tbaa !36
  %i.ge = tail call i32 @llvm.umin.i32(i32 %i.fy, i32 94)
  %i.gf = zext nneg i32 %i.ge to i64
  %i.gg = getelementptr inbounds nuw [2 x i8], ptr @ff_prores_raw_ac_cb, i64 %i.gf
  %i.gh = load i16, ptr %i.gg, align 2, !tbaa !40
  %i.gi = tail call i32 @llvm.umin.i32(i32 %i.fy, i32 14)
  %i.gj = zext nneg i32 %i.gi to i64
  %i.gk = getelementptr inbounds nuw [2 x i8], ptr @ff_prores_raw_ln_cb, i64 %i.gj
  %i.gl = load i16, ptr %i.gk, align 2, !tbaa !40
  %i.gm = add nsw i32 %i.es, 1
  %i.gn = load ptr, ptr %i.z, align 8, !tbaa !111
  %i.go = load ptr, ptr %i.ad, align 8, !tbaa !53
  %i.gp = ptrtoint ptr %i.gn to i64
  %i.gq = ptrtoint ptr %i.go to i64
  %i.gr = sub i64 %i.gp, %i.gq
  %i.gs = load i32, ptr %i.ae, align 4, !tbaa !112
  %.tr.i131 = trunc i64 %i.gr to i32
  %i.gt = shl i32 %.tr.i131, 3
  %i.gu = add i32 %i.fp, %i.gs
  %i.gv = add i32 %i.gu, %i.gt
  %i.gw = icmp slt i32 %i.gv, 1
  br i1 %i.gw, label %._crit_edge31, label %.lr.ph67

._crit_edge31:                                    ; preds = %bb.m, %bb.l, %._crit_edge16, %bits_read_bit_be.exit143, %.lr.ph30, %._crit_edge
  %.not = icmp eq i32 %i.o, 31
  br i1 %.not, label %bits_init8_be.exit.thread, label %.lr.ph38

.lr.ph38:                                         ; preds = %._crit_edge31
  %i.gx = getelementptr inbounds nuw i8, ptr %.32.val, i64 80
  %i.gy = getelementptr inbounds nuw i8, ptr %.32.val, i64 304
  %smax45 = tail call i32 @llvm.smax.i32(i32 %i.p, i32 1)
  %wide.trip.count46 = zext nneg i32 %smax45 to i64
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph38, %bb.q
  %indvars.iv42 = phi i64 [ 0, %.lr.ph38 ], [ %indvars.iv.next43, %bb.q ] ; 3 uses
  %.idx60 = shl nuw nsw i64 %indvars.iv42, 5
  %i.gz = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx60
  %i.ha = load ptr, ptr %i.gx, align 16, !tbaa !113
  %.idx61 = shl nuw nsw i64 %indvars.iv42, 8
  %i.hb = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx61
  call void %i.ha(ptr noundef %i.gz, i64 noundef %i.c, ptr noundef nonnull %i.hb, ptr noundef nonnull %4, ptr noundef nonnull %i.gy) #10
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1 ; 2 uses
  %exitcond47.not = icmp eq i64 %indvars.iv.next43, %wide.trip.count46
  br i1 %exitcond47.not, label %bits_init8_be.exit.thread, label %bb.q, !llvm.loop !110

bits_init8_be.exit.thread:                        ; preds = %bb.q, %._crit_edge31, %bb.a
  %.0 = phi i32 [ 0, %._crit_edge31 ], [ -1094995529, %bb.a ], [ 0, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc zeroext i16 @get_value(ptr nofree noundef nonnull captures(none) %0, i16 noundef signext %1) unnamed_addr #8 {
bb.a:
  %i.a = ashr i16 %1, 8                           ; 2 uses
  %i.b = and i16 %1, 15                           ; 3 uses
  %i.c = lshr i16 %1, 4
  %i.d = and i16 %i.c, 15                         ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 11 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !54   ; 5 uses
  %i.g = icmp ult i32 %i.f, 32
  br i1 %i.g, label %bb.b, label %.bits_priv_refill_32_be.exit_crit_edge.i.i

.bits_priv_refill_32_be.exit_crit_edge.i.i:       ; preds = %bb.a
  %.val.pre.i.i = load i64, ptr %0, align 8, !tbaa !55
  br label %bits_peek_be.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !53   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !52
  %.not.i.i.i = icmp ult ptr %i.i, %i.k
  %.val.pre4.i.i = load i64, ptr %0, align 8, !tbaa !55 ; 2 uses
  br i1 %.not.i.i.i, label %bb.c, label %bits_peek_be.exit

bb.c:                                             ; preds = %bb.b
  %i.l = load i32, ptr %i.i, align 1, !tbaa !37
  %i.m = tail call i32 @llvm.bswap.i32(i32 %i.l)
  %i.n = zext i32 %i.m to i64
  %i.o = sub nuw nsw i32 32, %i.f
  %i.p = zext nneg i32 %i.o to i64
  %i.q = shl nuw i64 %i.n, %i.p
  %i.r = or i64 %i.q, %.val.pre4.i.i              ; 2 uses
  store i64 %i.r, ptr %0, align 8, !tbaa !55
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store ptr %i.s, ptr %i.h, align 8, !tbaa !53
  %i.t = or disjoint i32 %i.f, 32                 ; 2 uses
  store i32 %i.t, ptr %i.e, align 8, !tbaa !54
  br label %bits_peek_be.exit

bits_peek_be.exit:                                ; preds = %.bits_priv_refill_32_be.exit_crit_edge.i.i, %bb.b, %bb.c
  %i.u = phi i32 [ %i.f, %.bits_priv_refill_32_be.exit_crit_edge.i.i ], [ %i.t, %bb.c ], [ %i.f, %bb.b ] ; 10 uses
  %i.v = phi i64 [ %.val.pre.i.i, %.bits_priv_refill_32_be.exit_crit_edge.i.i ], [ %i.r, %bb.c ], [ %.val.pre4.i.i, %bb.b ] ; 5 uses
  %i.w = lshr i64 %i.v, 32                        ; 2 uses
  %i.x = trunc nuw i64 %i.w to i32                ; 4 uses
  %.not = icmp eq i64 %i.w, 0
  br i1 %.not, label %bb.v, label %bb.d

bb.d:                                             ; preds = %bits_peek_be.exit
  %i.y = icmp slt i64 %i.v, 0
  br i1 %i.y, label %bb.e, label %.preheader

bb.e:                                             ; preds = %bb.d
  %i.z = zext nneg i16 %i.b to i32                ; 2 uses
  %i.aa = add nuw nsw i32 %i.z, 1                 ; 5 uses
  %i.ab = icmp ult i32 %i.aa, %i.u
  br i1 %i.ab, label %bb.f, label %._crit_edge.i

bb.f:                                             ; preds = %bb.e
  %i.ac = zext nneg i32 %i.aa to i64
  %i.ad = shl i64 %i.v, %i.ac
  store i64 %i.ad, ptr %0, align 8, !tbaa !55
  %i.ae = sub nuw i32 %i.u, %i.aa
  br label %.sink.split.i

._crit_edge.i:                                    ; preds = %bb.e
  %i.af = sub nuw nsw i32 %i.aa, %i.u             ; 2 uses
  store i64 0, ptr %0, align 8, !tbaa !55
  store i32 0, ptr %i.e, align 8, !tbaa !54
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !53 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !52
  %.not.i.i = icmp ult ptr %.pre.i, %i.ah
  br i1 %.not.i.i, label %bb.g, label %bits_priv_refill_64_be.exit.i

bb.g:                                             ; preds = %._crit_edge.i
  %i.ai = load i64, ptr %.pre.i, align 1, !tbaa !37
  %i.aj = tail call noundef i64 @llvm.bswap.i64(i64 %i.ai) ; 2 uses
  store i64 %i.aj, ptr %0, align 8, !tbaa !55
  %i.ak = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  store ptr %i.ak, ptr %.phi.trans.insert.i, align 8, !tbaa !53
  store i32 64, ptr %i.e, align 8, !tbaa !54
  br label %bits_priv_refill_64_be.exit.i

bits_priv_refill_64_be.exit.i:                    ; preds = %bb.g, %._crit_edge.i
  %i.al = phi i32 [ 0, %._crit_edge.i ], [ 64, %bb.g ]
  %i.am = phi i64 [ 0, %._crit_edge.i ], [ %i.aj, %bb.g ]
  %.not.i38 = icmp eq i32 %i.aa, %i.u
  br i1 %.not.i38, label %bits_skip_be.exit, label %bb.h

bb.h:                                             ; preds = %bits_priv_refill_64_be.exit.i
  %i.an = zext nneg i32 %i.af to i64
  %i.ao = shl i64 %i.am, %i.an
  store i64 %i.ao, ptr %0, align 8, !tbaa !55
  %i.ap = sub nsw i32 %i.al, %i.af
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.h, %bb.f
  %.sink.i = phi i32 [ %i.ap, %bb.h ], [ %i.ae, %bb.f ]
  store i32 %.sink.i, ptr %i.e, align 8, !tbaa !54
  br label %bits_skip_be.exit

bits_skip_be.exit:                                ; preds = %bits_priv_refill_64_be.exit.i, %.sink.split.i
  %i.aq = and i32 %i.x, 2147483647
  %i.ar = xor i32 %i.z, 31
  %i.as = lshr i32 %i.aq, %i.ar
  %i.at = trunc nuw nsw i32 %i.as to i16
  br label %bb.v

.preheader:                                       ; preds = %bb.d, %.preheader
  %.0.i61 = phi i32 [ %3, %.preheader ], [ 32, %bb.d ]
  %.04.i60 = phi i32 [ %2, %.preheader ], [ %i.x, %bb.d ]
  %2 = lshr i32 %.04.i60, 1                       ; 2 uses
  %3 = add nsw i32 %.0.i61, -1                    ; 3 uses
  %.not.i = icmp eq i32 %2, 0
  br i1 %.not.i, label %ff_clz_c.exit, label %.preheader, !llvm.loop !114

ff_clz_c.exit:                                    ; preds = %.preheader
  %sext = shl i32 %3, 16                          ; 2 uses
  %4 = ashr exact i32 %sext, 16                   ; 3 uses
  %5 = sext i16 %i.a to i32                       ; 2 uses
  %.not36 = icmp sgt i32 %4, %5
  br i1 %.not36, label %bb.n, label %bb.i

bb.i:                                             ; preds = %ff_clz_c.exit
  %i.au = zext nneg i16 %i.b to i32               ; 3 uses
  %i.av = add nuw nsw i32 %i.au, 1
  %i.aw = add nsw i32 %i.av, %4                   ; 4 uses
  %i.ax = icmp ult i32 %i.aw, %i.u
  br i1 %i.ax, label %bb.j, label %6

bb.j:                                             ; preds = %bb.i
  %i.ay = zext nneg i32 %i.aw to i64
  %i.az = shl i64 %i.v, %i.ay
  store i64 %i.az, ptr %0, align 8, !tbaa !55
  %i.ba = sub nuw i32 %i.u, %i.aw
  br label %.sink.split.i46

6:                                                ; preds = %bb.i
  %7 = sub nuw i32 %i.aw, %i.u                    ; 4 uses
  store i64 0, ptr %0, align 8, !tbaa !55
  store i32 0, ptr %i.e, align 8, !tbaa !54
  %8 = icmp ugt i32 %7, 63
  br i1 %8, label %bb.k, label %._crit_edge.i39

._crit_edge.i39:                                  ; preds = %6
  %.phi.trans.insert.i40 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre.i41 = load ptr, ptr %.phi.trans.insert.i40, align 8, !tbaa !53
  br label %13

bb.k:                                             ; preds = %6
  %9 = lshr i32 %7, 3
  %10 = and i32 %7, 7
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !53
  %11 = zext nneg i32 %9 to i64
  %12 = getelementptr inbounds nuw i8, ptr %i.bc, i64 %11 ; 2 uses
  store ptr %12, ptr %i.bb, align 8, !tbaa !53
  br label %13

13:                                               ; preds = %bb.k, %._crit_edge.i39
  %14 = phi ptr [ %12, %bb.k ], [ %.pre.i41, %._crit_edge.i39 ] ; 3 uses
  %.0.i42 = phi i32 [ %10, %bb.k ], [ %7, %._crit_edge.i39 ] ; 3 uses
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %16 = load ptr, ptr %15, align 8, !tbaa !52
  %.not.i.i43 = icmp ult ptr %14, %16
  br i1 %.not.i.i43, label %bb.l, label %bits_priv_refill_64_be.exit.i44

bb.l:                                             ; preds = %13
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.be = load i64, ptr %14, align 1, !tbaa !37
  %i.bf = tail call noundef i64 @llvm.bswap.i64(i64 %i.be) ; 2 uses
  store i64 %i.bf, ptr %0, align 8, !tbaa !55
  %i.bg = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %i.bg, ptr %i.bd, align 8, !tbaa !53
  store i32 64, ptr %i.e, align 8, !tbaa !54
  br label %bits_priv_refill_64_be.exit.i44

bits_priv_refill_64_be.exit.i44:                  ; preds = %bb.l, %13
  %i.bh = phi i32 [ 0, %13 ], [ 64, %bb.l ]
  %i.bi = phi i64 [ 0, %13 ], [ %i.bf, %bb.l ]
  %.not.i45 = icmp eq i32 %.0.i42, 0
  br i1 %.not.i45, label %bits_skip_be.exit48, label %bb.m

bb.m:                                             ; preds = %bits_priv_refill_64_be.exit.i44
  %i.bj = zext nneg i32 %.0.i42 to i64
  %i.bk = shl i64 %i.bi, %i.bj
  store i64 %i.bk, ptr %0, align 8, !tbaa !55
  %i.bl = sub nsw i32 %i.bh, %.0.i42
  br label %.sink.split.i46

.sink.split.i46:                                  ; preds = %bb.m, %bb.j
  %.sink.i47 = phi i32 [ %i.bl, %bb.m ], [ %i.ba, %bb.j ]
  store i32 %.sink.i47, ptr %i.e, align 8, !tbaa !54
  br label %bits_skip_be.exit48

bits_skip_be.exit48:                              ; preds = %bits_priv_refill_64_be.exit.i44, %.sink.split.i46
  %i.bm = shl i32 %3, %i.au
  %i.bn = add nsw i32 %4, 1
  %i.bo = shl i32 %i.x, %i.bn
  %i.bp = lshr i32 %i.bo, 1
  %i.bq = xor i32 %i.au, 31
  %i.br = lshr i32 %i.bp, %i.bq
  %i.bs = add i32 %i.br, %i.bm
  %i.bt = trunc i32 %i.bs to i16
  br label %bb.v

bb.n:                                             ; preds = %ff_clz_c.exit
  %17 = lshr exact i32 %sext, 15
  %18 = trunc i32 %17 to i16
  %i.bu = sub nsw i16 %i.d, %i.a
  %i.bv = add i16 %i.bu, %18                      ; 2 uses
  %i.bw = icmp sgt i16 %i.bv, 32
  br i1 %i.bw, label %bb.v, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bx = sext i16 %i.bv to i32                   ; 5 uses
  %i.by = zext nneg i16 %i.d to i32
  %i.bz = icmp ugt i32 %i.u, %i.bx
  br i1 %i.bz, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ca = zext nneg i32 %i.bx to i64
  %i.cb = shl i64 %i.v, %i.ca
  store i64 %i.cb, ptr %0, align 8, !tbaa !55
  %i.cc = sub nuw i32 %i.u, %i.bx
  br label %.sink.split.i56

bb.q:                                             ; preds = %bb.o
  %i.cd = sub nuw i32 %i.bx, %i.u                 ; 4 uses
  store i64 0, ptr %0, align 8, !tbaa !55
  store i32 0, ptr %i.e, align 8, !tbaa !54
  %i.ce = icmp ugt i32 %i.cd, 63
  br i1 %i.ce, label %bb.r, label %._crit_edge.i49

._crit_edge.i49:                                  ; preds = %bb.q
  %.phi.trans.insert.i50 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre.i51 = load ptr, ptr %.phi.trans.insert.i50, align 8, !tbaa !53
  br label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cf = lshr i32 %i.cd, 3
  %i.cg = and i32 %i.cd, 7
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !53
  %i.cj = zext nneg i32 %i.cf to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cj ; 2 uses
  store ptr %i.ck, ptr %i.ch, align 8, !tbaa !53
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i49
  %i.cl = phi ptr [ %i.ck, %bb.r ], [ %.pre.i51, %._crit_edge.i49 ] ; 3 uses
  %.0.i52 = phi i32 [ %i.cg, %bb.r ], [ %i.cd, %._crit_edge.i49 ] ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !52
  %.not.i.i53 = icmp ult ptr %i.cl, %i.cn
  br i1 %.not.i.i53, label %bb.t, label %bits_priv_refill_64_be.exit.i54

bb.t:                                             ; preds = %bb.s
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cp = load i64, ptr %i.cl, align 1, !tbaa !37
  %i.cq = tail call noundef i64 @llvm.bswap.i64(i64 %i.cp) ; 2 uses
  store i64 %i.cq, ptr %0, align 8, !tbaa !55
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store ptr %i.cr, ptr %i.co, align 8, !tbaa !53
  store i32 64, ptr %i.e, align 8, !tbaa !54
  br label %bits_priv_refill_64_be.exit.i54

bits_priv_refill_64_be.exit.i54:                  ; preds = %bb.t, %bb.s
  %i.cs = phi i32 [ 0, %bb.s ], [ 64, %bb.t ]
  %i.ct = phi i64 [ 0, %bb.s ], [ %i.cq, %bb.t ]
  %.not.i55 = icmp eq i32 %.0.i52, 0
  br i1 %.not.i55, label %bits_skip_be.exit58, label %bb.u

bb.u:                                             ; preds = %bits_priv_refill_64_be.exit.i54
  %i.cu = zext nneg i32 %.0.i52 to i64
  %i.cv = shl i64 %i.ct, %i.cu
  store i64 %i.cv, ptr %0, align 8, !tbaa !55
  %i.cw = sub nsw i32 %i.cs, %.0.i52
  br label %.sink.split.i56

.sink.split.i56:                                  ; preds = %bb.u, %bb.p
  %.sink.i57 = phi i32 [ %i.cw, %bb.u ], [ %i.cc, %bb.p ]
  store i32 %.sink.i57, ptr %i.e, align 8, !tbaa !54
  br label %bits_skip_be.exit58

bits_skip_be.exit58:                              ; preds = %bits_priv_refill_64_be.exit.i54, %.sink.split.i56
  %i.cx = sub nsw i32 32, %i.bx
  %i.cy = lshr i32 %i.x, %i.cx
  %i.cz = add nsw i32 %5, 1
  %i.da = zext nneg i16 %i.b to i32
  %i.db = shl nsw i32 %i.cz, %i.da
  %.neg = shl nsw i32 -1, %i.by
  %i.dc = add nsw i32 %.neg, %i.db
  %i.dd = add i32 %i.dc, %i.cy
  %i.de = trunc i32 %i.dd to i16
  br label %bb.v

bb.v:                                             ; preds = %bb.n, %bits_peek_be.exit, %bits_skip_be.exit58, %bits_skip_be.exit48, %bits_skip_be.exit
  %.0 = phi i16 [ %i.at, %bits_skip_be.exit ], [ %i.bt, %bits_skip_be.exit48 ], [ 0, %bits_peek_be.exit ], [ %i.de, %bits_skip_be.exit58 ], [ 0, %bb.n ]
  ret i16 %.0
}

declare void @av_freep(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind willreturn memory(none) }

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
!29 = !{!"ProresDSPContext", !6, i64 0, !5, i64 4, !9, i64 72, !9, i64 80}
!30 = !{!"BlockDSPContext", !9, i64 0, !9, i64 8, !5, i64 16}
!31 = !{!"p1 _ZTS11TileContext", !9, i64 0}
!32 = !{!"p1 _ZTS7AVFrame", !9, i64 0}
!33 = !{!"ProResRAWContext", !29, i64 0, !30, i64 88, !31, i64 120, !6, i64 128, !6, i64 132, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !32, i64 152, !9, i64 160, !6, i64 168, !5, i64 176, !5, i64 240, !5, i64 304}
!34 = !{!33, !6, i64 148}
!35 = !{!33, !6, i64 168}
!36 = !{!6, !6, i64 0}
!37 = !{!5, !5, i64 0}
!38 = !{!27, !6, i64 112}
!39 = !{!"short", !5, i64 0}
!40 = !{!39, !39, i64 0}
!41 = !{!33, !31, i64 120}
!42 = !{!"GetByteContext", !14, i64 0, !14, i64 8, !14, i64 16}
!43 = !{!42, !14, i64 0}
!44 = !{!42, !14, i64 16}
!45 = !{!42, !14, i64 8}
!46 = !{!"TileContext", !42, i64 0, !6, i64 24, !6, i64 28, !6, i64 32}
!47 = !{!46, !6, i64 24}
!48 = !{!46, !6, i64 28}
!49 = !{!46, !6, i64 32}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!"BitstreamContextBE", !13, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !6, i64 32, !6, i64 36}
!52 = !{!51, !14, i64 16}
!53 = !{!51, !14, i64 24}
!54 = !{!51, !6, i64 32}
!55 = !{!51, !13, i64 0}
!56 = !{!27, !6, i64 652}
!57 = !{!27, !6, i64 152}
!58 = distinct !{!58, !50}
!59 = distinct !{!59, !50}
!60 = distinct !{!60, !50}
!61 = distinct !{!61, !50}
!62 = !{!27, !6, i64 704}
!63 = !{!"AVPacket", !21, i64 0, !13, i64 8, !13, i64 16, !14, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !23, i64 48, !6, i64 56, !13, i64 64, !13, i64 72, !9, i64 80, !21, i64 88, !15, i64 96}
!64 = !{!63, !6, i64 32}
!65 = !{!27, !6, i64 28}
!66 = !{!27, !6, i64 688}
!67 = !{!63, !14, i64 24}
!68 = !{!27, !6, i64 116}
!69 = !{!27, !6, i64 120}
!70 = !{!27, !6, i64 124}
!71 = !{!27, !6, i64 136}
!72 = !{!33, !6, i64 140}
!73 = !{!33, !6, i64 144}
!74 = !{!33, !6, i64 132}
!75 = !{!33, !6, i64 136}
!76 = !{!33, !32, i64 152}
!77 = !{!27, !20, i64 536}
!78 = !{!"AVHWAccel", !14, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20}
!79 = !{!"FFHWAccel", !78, i64 0, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !6, i64 64, !6, i64 68, !6, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120}
!80 = !{!79, !9, i64 32}
!81 = !{!63, !21, i64 0}
!82 = !{!79, !9, i64 48}
!83 = !{!46, !14, i64 0}
!84 = !{!46, !14, i64 8}
!85 = !{!79, !9, i64 56}
!86 = !{!27, !9, i64 680}
!87 = !{!"p2 omnipotent char", !25, i64 0}
!88 = !{!"p2 _ZTS11AVBufferRef", !25, i64 0}
!89 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!90 = !{!"AVFrame", !5, i64 0, !5, i64 64, !87, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !15, i64 124, !13, i64 136, !13, i64 144, !15, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !88, i64 248, !6, i64 256, !26, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !13, i64 304, !89, i64 312, !6, i64 320, !21, i64 328, !21, i64 336, !13, i64 344, !13, i64 352, !13, i64 360, !13, i64 368, !9, i64 376, !18, i64 384, !13, i64 408, !6, i64 416}
!91 = !{!90, !6, i64 120}
!92 = !{!90, !6, i64 276}
!93 = !{!90, !13, i64 360}
!94 = !{!90, !13, i64 368}
!95 = !{!90, !13, i64 344}
!96 = !{!90, !13, i64 352}
!97 = !{!"AVRawColorParams", !6, i64 0, !15, i64 4, !15, i64 12, !6, i64 20, !5, i64 24}
!98 = !{!97, !6, i64 0}
!99 = !{!97, !6, i64 20}
!100 = distinct !{!100, !"LVerDomain"}
!101 = distinct !{!101, !100}
!102 = distinct !{!102, !100}
!103 = distinct !{!103, !50, !107}
!104 = !{!14, !14, i64 0}
!105 = !{!101}
!106 = !{!102}
!107 = !{!"llvm.loop.isvectorized", i32 1}
!108 = distinct !{!108, !50}
!109 = distinct !{!109, !50}
!110 = distinct !{!110, !50}
!111 = !{!51, !14, i64 8}
!112 = !{!51, !6, i64 36}
!113 = !{!33, !9, i64 80}
!114 = distinct !{!114, !50}
end_hunk_0
