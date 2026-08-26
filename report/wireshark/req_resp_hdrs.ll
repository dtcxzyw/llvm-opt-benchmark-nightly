Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/req_resp_hdrs?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [34 x i8] c"%s:%u: failed assertion \22%s\22 (%s)\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"epan/req_resp_hdrs.c\00", align 1
@.str.2 = private unnamed_addr constant [145 x i8] c"(streaming_subdissector_table && streaming_chunk_handle) || (streaming_subdissector_table == ((void*)0) && streaming_chunk_handle == ((void*)0))\00", align 1
@.str.3 = private unnamed_addr constant [103 x i8] c"The streaming_subdissector_table and streaming_chunk_handle arguments must be both given or both NULL.\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Content-Length:\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Content-Type:\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"Transfer-Encoding:\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"chunked\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"application/rpc\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"RPC_IN_DATA\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"RPC_OUT_DATA\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"; \09\00", align 1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define noundef zeroext i1 @req_resp_hdrs_do_reassembly(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5, ptr nofree noundef captures(address_is_null) %6, ptr noundef %7, ptr nofree noundef writeonly captures(address_is_null) %8) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 23 uses
  %i.d = alloca i32, align 4                      ; 11 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %i.f = alloca i32, align 4                      ; 10 uses
  %i.g = alloca i32, align 4                      ; 13 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 %1, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  %i.i = icmp ne ptr %7, null                     ; 2 uses
  %i.j = icmp ne ptr %8, null                     ; 2 uses
  %or.cond = and i1 %i.i, %i.j
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = icmp eq ptr %7, null
  %i.l = icmp eq ptr %8, null
  %or.cond5 = and i1 %i.k, %i.l
  br i1 %or.cond5, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 50, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #6
  unreachable

bb.d:                                             ; preds = %bb.a
  br i1 %4, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.m = call zeroext i1 @tvb_find_line_end_remaining(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %i.b, ptr noundef null)
  br i1 %i.m, label %bb.f, label %starts_with_chunk_size.exit.thread

starts_with_chunk_size.exit.thread:               ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %.thread

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr i8, ptr %2, i64 416
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = load i32, ptr %i.b, align 4
  %i.q = call ptr @tvb_get_string_enc(ptr noundef %i.o, ptr noundef %0, i32 noundef %1, i32 noundef %i.p, i32 noundef 0) ; 2 uses
  %i.r = call ptr @strpbrk(ptr noundef %i.q, ptr noundef nonnull @.str.11) #7 ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %starts_with_chunk_size.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i8 0, ptr %i.r, align 1
  br label %starts_with_chunk_size.exit

starts_with_chunk_size.exit:                      ; preds = %bb.f, %bb.g
  %i.s = call zeroext i1 @ws_hexstrtou32(ptr noundef %i.q, ptr noundef null, ptr noundef nonnull %i.a)
  %i.t = load i32, ptr %i.a, align 4
  %i.u = icmp ult i32 %i.t, -2147483647
  %.0.i = select i1 %i.s, i1 %i.u, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  %cond.fr = freeze i1 %.0.i
  br i1 %cond.fr, label %.thread418, label %.thread

.thread:                                          ; preds = %bb.b, %starts_with_chunk_size.exit, %starts_with_chunk_size.exit.thread, %bb.d
  br i1 %3, label %bb.h, label %.thread269

bb.h:                                             ; preds = %.thread
  %i.v = getelementptr i8, ptr %2, i64 336
  %i.w = load i16, ptr %i.v, align 8
  %.not222 = icmp eq i16 %i.w, 0
  br i1 %.not222, label %.thread269, label %.preheader

.preheader:                                       ; preds = %bb.h
  %i.x = getelementptr i8, ptr %2, i64 416
  br i1 %4, label %.outer.us.outer.a, label %.preheader.split

.outer.us.outer.a:                                ; preds = %.preheader, %bb.p
  %.0199.ph.us.ph.a = phi i1 [ %spec.select231.us, %bb.p ], [ false, %.preheader ] ; 3 uses
  %.0194.ph.us.ph = phi i1 [ %.0194.ph.us.ph501, %bb.p ], [ false, %.preheader ]
  %.0188.ph.us.ph = phi i8 [ %.0188.ph.us.ph506, %bb.p ], [ 0, %.preheader ]
  %.0182.ph.us.ph = phi ptr [ %.0182.ph.us.ph503, %bb.p ], [ null, %.preheader ]
  %.0177.ph.us.ph = phi ptr [ %.0177.ph.us.ph504.ph, %bb.p ], [ null, %.preheader ]
  br label %.outer.us.outer500.outer

.outer.us.outer500.outer:                         ; preds = %bb.o, %.outer.us.outer.a
  %.0194.ph.us.ph501.ph = phi i1 [ true, %bb.o ], [ %.0194.ph.us.ph, %.outer.us.outer.a ]
  %.0188.ph.us.ph502.ph = phi i8 [ %.0188.ph.us.ph506, %bb.o ], [ %.0188.ph.us.ph, %.outer.us.outer.a ]
  %.0182.ph.us.ph503.ph = phi ptr [ %.1183.us, %bb.o ], [ %.0182.ph.us.ph, %.outer.us.outer.a ]
  %.0177.ph.us.ph504.ph = phi ptr [ %i.aq, %bb.o ], [ %.0177.ph.us.ph, %.outer.us.outer.a ] ; 3 uses
  br label %.outer.us.outer500

.outer.us.outer500:                               ; preds = %.outer.us.outer500.outer, %bb.n
  %.0194.ph.us.ph501 = phi i1 [ true, %bb.n ], [ %.0194.ph.us.ph501.ph, %.outer.us.outer500.outer ] ; 3 uses
  %.0188.ph.us.ph502 = phi i8 [ %.0188.ph.us.ph506, %bb.n ], [ %.0188.ph.us.ph502.ph, %.outer.us.outer500.outer ]
  %.0182.ph.us.ph503 = phi ptr [ %.1183.us, %bb.n ], [ %.0182.ph.us.ph503.ph, %.outer.us.outer500.outer ] ; 3 uses
  br label %.outer.us.outer505

.outer.us.outer505:                               ; preds = %.outer.us.outer500, %.critedge.us.thread
  %.0188.ph.us.ph506 = phi i8 [ %.0188.ph.us.ph502, %.outer.us.outer500 ], [ %spec.select232.us, %.critedge.us.thread ] ; 6 uses
  br label %.outer.us

.outer.us:                                        ; preds = %.outer.us.backedge, %.outer.us.outer505
  br label %bb.q

bb.i:                                             ; preds = %.split334.us.us
  %i.y = call i32 @g_ascii_strncasecmp(ptr noundef %i.bj, ptr noundef nonnull @.str.5, i64 noundef 13)
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = call i32 @g_ascii_strncasecmp(ptr noundef %i.bj, ptr noundef nonnull @.str.6, i64 noundef 18)
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.k, label %.outer.us.backedge

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr i8, ptr %i.bj, i64 18     ; 5 uses
  %i.ad = call i64 @strlen(ptr noundef %i.ac) #7
  %i.ae = and i64 %i.ad, 4294967295
  %i.af = getelementptr i8, ptr %i.ac, i64 %i.ae  ; 4 uses
  %i.ag = icmp ult ptr %i.ac, %i.af
  br i1 %i.ag, label %.lr.ph.us, label %.critedge.us

.lr.ph.us:                                        ; preds = %bb.k, %.critedge22.us
  %.0170336.us = phi ptr [ %i.ai, %.critedge22.us ], [ %i.ac, %bb.k ] ; 3 uses
  %i.ah = load i8, ptr %.0170336.us, align 1
  switch i8 %i.ah, label %.critedge.us [
    i8 32, label %.critedge22.us
    i8 9, label %.critedge22.us
  ]

.critedge22.us:                                   ; preds = %.lr.ph.us, %.lr.ph.us
  %i.ai = getelementptr i8, ptr %.0170336.us, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.ai, %i.af
  br i1 %exitcond.not, label %.critedge.us.thread, label %.lr.ph.us, !llvm.loop !6

.critedge.us:                                     ; preds = %.lr.ph.us, %bb.k
  %.0170.lcssa.us = phi ptr [ %i.ac, %bb.k ], [ %.0170336.us, %.lr.ph.us ] ; 2 uses
  %.not224.us = icmp ugt ptr %.0170.lcssa.us, %i.af
  br i1 %.not224.us, label %.outer.us.backedge, label %.critedge.us.thread

.outer.us.backedge:                               ; preds = %.critedge.us, %bb.j
  br label %.outer.us

.critedge.us.thread:                              ; preds = %.critedge.us, %.critedge22.us
  %.0170.lcssa.us399 = phi ptr [ %i.af, %.critedge22.us ], [ %.0170.lcssa.us, %.critedge.us ]
  %i.aj = call i32 @g_ascii_strncasecmp(ptr noundef %.0170.lcssa.us399, ptr noundef nonnull @.str.7, i64 noundef 7)
  %i.ak = icmp eq i32 %i.aj, 0
  %spec.select232.us = select i1 %i.ak, i8 1, i8 %.0188.ph.us.ph506
  br label %.outer.us.outer505

bb.l:                                             ; preds = %bb.i
  %i.al = getelementptr i8, ptr %i.bj, i64 13
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %bb.l
  %.1183.us = phi ptr [ %i.al, %bb.l ], [ %i.ao, %bb.m ] ; 6 uses
  %i.am = load i8, ptr %.1183.us, align 1
  %i.an = icmp eq i8 %i.am, 32
  %i.ao = getelementptr i8, ptr %.1183.us, i64 1
  br i1 %i.an, label %bb.m, label %bb.n, !llvm.loop !8

bb.n:                                             ; preds = %bb.m
  %i.ap = call ptr @g_strchomp(ptr noundef %.1183.us) ; 0 uses
  br i1 %i.i, label %bb.o, label %.outer.us.outer500

bb.o:                                             ; preds = %bb.n
  %i.aq = call ptr @dissector_get_string_handle(ptr noundef nonnull %7, ptr noundef %.1183.us)
  br label %.outer.us.outer500.outer

bb.p:                                             ; preds = %.split334.us.us
  %i.ar = getelementptr i8, ptr %i.bj, i64 15
  %i.as = call ptr @g_strchug(ptr noundef %i.ar)
  %i.at = call ptr @g_strchomp(ptr noundef %i.as)
  %i.au = call zeroext i1 @ws_strtoi32(ptr noundef %i.at, ptr noundef null, ptr noundef nonnull %i.e)
  %i.av = load i32, ptr %i.e, align 4
  %i.aw = icmp sgt i32 %i.av, -1
  %or.cond20.us = select i1 %i.au, i1 %i.aw, i1 false
  %spec.select231.us = select i1 %or.cond20.us, i1 true, i1 %.0199.ph.us.ph.a
  br label %.outer.us.outer.a

bb.q:                                             ; preds = %bb.t, %.outer.us
  %i.ax = load i32, ptr %i.c, align 4             ; 3 uses
  %i.ay = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.ax) ; 2 uses
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %.split.us, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ba = load i32, ptr %i.c, align 4
  %i.bb = call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef %i.ba)
  %i.bc = load i32, ptr %i.c, align 4
  %i.bd = call zeroext i1 @tvb_find_line_end_remaining(ptr noundef %0, i32 noundef %i.bc, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c)
  %.not223.us.us = icmp ult i32 %i.bb, %i.ay
  %or.cond230.us.us = select i1 %i.bd, i1 true, i1 %.not223.us.us
  br i1 %or.cond230.us.us, label %bb.s, label %.split326.us

bb.s:                                             ; preds = %bb.r
  %i.be = load i32, ptr %i.d, align 4
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %.split328.us, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bg = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ax)
  switch i8 %i.bg, label %bb.q [
    i8 116, label %.split334.us.us
    i8 99, label %.split334.us.us
    i8 84, label %.split334.us.us
    i8 67, label %.split334.us.us
  ]

.split334.us.us:                                  ; preds = %bb.t, %bb.t, %bb.t, %bb.t
  %i.bh = load ptr, ptr %i.x, align 8
  %i.bi = load i32, ptr %i.d, align 4
  %i.bj = call ptr @tvb_get_string_enc(ptr noundef %i.bh, ptr noundef %0, i32 noundef %i.ax, i32 noundef %i.bi, i32 noundef 2) ; 6 uses
  %i.bk = call i32 @g_ascii_strncasecmp(ptr noundef %i.bj, ptr noundef nonnull @.str.4, i64 noundef 15)
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.p, label %bb.i

.preheader.split:                                 ; preds = %.preheader
  %i.bm = load i32, ptr %i.c, align 4
  %i.bn = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.bm) ; 2 uses
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %.split.us, label %.lr.ph

.outer:                                           ; preds = %.thread245.loopexit
  %i.bp = load i32, ptr %i.c, align 4
  %i.bq = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.bp) ; 2 uses
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %.split.us, label %.lr.ph

.split.us:                                        ; preds = %.outer, %bb.q, %.preheader.split
  %i.bs = getelementptr i8, ptr %2, i64 340
  store i32 %1, ptr %i.bs, align 4
  %i.bt = getelementptr i8, ptr %2, i64 344
  store i32 268435455, ptr %i.bt, align 8
  br label %.thread296

.lr.ph:                                           ; preds = %.preheader.split, %.outer
  %i.bu = phi i32 [ %i.bq, %.outer ], [ %i.bn, %.preheader.split ]
  %i.bv = load i32, ptr %i.c, align 4
  %i.bw = call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef %i.bv)
  %i.bx = load i32, ptr %i.c, align 4
  %i.by = call zeroext i1 @tvb_find_line_end_remaining(ptr noundef %0, i32 noundef %i.bx, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c)
  %.not223 = icmp ult i32 %i.bw, %i.bu
  %or.cond230 = select i1 %i.by, i1 true, i1 %.not223
  br i1 %or.cond230, label %.thread245.loopexit, label %.split326.us

.split326.us:                                     ; preds = %.lr.ph, %bb.r
  %i.bz = getelementptr i8, ptr %2, i64 340
  store i32 %1, ptr %i.bz, align 4
  %i.ca = getelementptr i8, ptr %2, i64 344
  store i32 268435455, ptr %i.ca, align 8
  br label %.thread296

.thread245.loopexit:                              ; preds = %.lr.ph
  %i.cb = load i32, ptr %i.d, align 4
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %.thread269, label %.outer

.split328.us:                                     ; preds = %bb.s
  %i.cd = trunc nuw i8 %.0188.ph.us.ph506 to i1
  %i.ce = icmp ne ptr %.0177.ph.us.ph504.ph, null
  %or.cond26 = select i1 %i.cd, i1 %i.ce, i1 false
  %or.cond28 = and i1 %i.j, %or.cond26
  br i1 %or.cond28, label %bb.u, label %.thread269

bb.u:                                             ; preds = %.split328.us
  store ptr %.0177.ph.us.ph504.ph, ptr %8, align 8
  br label %.thread269

.thread269:                                       ; preds = %.thread245.loopexit, %bb.h, %.thread, %.split328.us, %bb.u
  %.5187267 = phi ptr [ %.0182.ph.us.ph503, %.split328.us ], [ %.0182.ph.us.ph503, %bb.u ], [ null, %bb.h ], [ null, %.thread ], [ null, %.thread245.loopexit ]
  %.4198264 = phi i1 [ %.0194.ph.us.ph501, %.split328.us ], [ %.0194.ph.us.ph501, %bb.u ], [ false, %bb.h ], [ false, %.thread ], [ false, %.thread245.loopexit ]
  %.4203262 = phi i1 [ %.0199.ph.us.ph.a, %.split328.us ], [ %.0199.ph.us.ph.a, %bb.u ], [ false, %bb.h ], [ false, %.thread ], [ false, %.thread245.loopexit ]
  %.6.a = phi i8 [ %.0188.ph.us.ph506, %.split328.us ], [ 1, %bb.u ], [ 0, %bb.h ], [ 0, %.thread ], [ 0, %.thread245.loopexit ]
  %.1176 = phi i1 [ false, %.split328.us ], [ true, %bb.u ], [ false, %bb.h ], [ false, %.thread ], [ false, %.thread245.loopexit ]
  br i1 %4, label %bb.v, label %.thread296

bb.v:                                             ; preds = %.thread269
  %i.cf = trunc nuw i8 %.6.a to i1
  br i1 %i.cf, label %.thread418, label %bb.al

.thread418:                                       ; preds = %starts_with_chunk_size.exit, %bb.v
  %.1176417424 = phi i1 [ %.1176, %bb.v ], [ true, %starts_with_chunk_size.exit ] ; 3 uses
  %.not226 = icmp eq ptr %6, null                 ; 2 uses
  br i1 %.not226, label %bb.y, label %bb.w

bb.w:                                             ; preds = %.thread418
  %i.cg = load i32, ptr %6, align 4               ; 2 uses
  %.not227 = icmp eq i32 %i.cg, 0
  br i1 %.not227, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ch = add i32 %i.cg, %1
  store i32 %i.ch, ptr %i.c, align 4
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %.thread418
  %i.ci = getelementptr i8, ptr %2, i64 340       ; 3 uses
  %i.cj = getelementptr i8, ptr %2, i64 344       ; 3 uses
  %.pre379 = load i32, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #5
  store i32 0, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #5
  store i32 0, ptr %i.g, align 4
  %i.ck = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %.pre379) ; 2 uses
  %i.cl = icmp eq i32 %i.ck, 0                    ; 2 uses
  %or.cond30487 = and i1 %.1176417424, %i.cl
  br i1 %or.cond30487, label %.thread287, label %.lr.ph489

.lr.ph489:                                        ; preds = %bb.y, %bb.ak
  %i.cm = phi i1 [ %i.dk, %bb.ak ], [ %i.cl, %bb.y ]
  %i.cn = phi i32 [ %i.dj, %bb.ak ], [ %i.ck, %bb.y ] ; 4 uses
  br i1 %i.cm, label %.thread287.sink.split, label %bb.z

bb.z:                                             ; preds = %.lr.ph489
  %i.co = load i32, ptr %i.c, align 4
  %i.cp = call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef %i.co)
  %i.cq = load i32, ptr %i.c, align 4
  %i.cr = call zeroext i1 @tvb_find_line_end_remaining(ptr noundef %0, i32 noundef %i.cq, ptr noundef nonnull %i.d, ptr noundef nonnull %i.g)
  %.not228 = icmp ult i32 %i.cp, %i.cn            ; 2 uses
  %or.cond233 = select i1 %i.cr, i1 true, i1 %.not228
  br i1 %or.cond233, label %bb.aa, label %.thread287.sink.split

bb.aa:                                            ; preds = %bb.z
  %.pre380 = load i32, ptr %i.c, align 4          ; 2 uses
  br i1 %.not226, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cs = sub i32 %.pre380, %1
  store i32 %i.cs, ptr %6, align 4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #5
  %i.ct = load i32, ptr %i.d, align 4
  %i.cu = call zeroext i1 @tvb_get_string_uint(ptr noundef %0, i32 noundef %.pre380, i32 noundef %i.ct, i32 noundef 33554432, ptr noundef nonnull %i.f, ptr noundef nonnull %i.h)
  br i1 %i.cu, label %bb.ad, label %.thread292

bb.ad:                                            ; preds = %bb.ac
  %i.cv = load i32, ptr %i.f, align 4             ; 5 uses
  %i.cw = icmp ugt i32 %i.cv, -2147483648
  br i1 %i.cw, label %.thread292, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cx = icmp eq i32 %i.cv, 0
  br i1 %i.cx, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.cy = load i32, ptr %i.g, align 4
  %i.cz = call zeroext i1 @tvb_find_line_end_remaining(ptr noundef %0, i32 noundef %i.cy, ptr noundef nonnull %i.d, ptr noundef nonnull %i.g)
  %or.cond234 = select i1 %i.cz, i1 true, i1 %.not228
  br i1 %or.cond234, label %.thread296.loopexit, label %.thread292.sink.split

bb.ag:                                            ; preds = %bb.ae
  %i.da = icmp ugt i32 %i.cn, %i.cv
  br i1 %i.da, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  br i1 %.1176417424, label %bb.ai, label %.thread292.sink.split

bb.ai:                                            ; preds = %bb.ah
  %i.db = load i32, ptr %i.d, align 4
  %i.dc = add nuw i32 %i.cv, 4
  %i.dd = add i32 %i.dc, %i.db                    ; 2 uses
  %i.de = icmp eq i32 %i.dd, %i.cn
  br i1 %i.de, label %.thread292, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.df = sub i32 %i.dd, %i.cn
  br label %.thread292.sink.split

.thread287.sink.split:                            ; preds = %bb.z, %.lr.ph489
  store i32 %1, ptr %i.ci, align 4
  store i32 268435455, ptr %i.cj, align 8
  br label %.thread287

.thread287:                                       ; preds = %bb.ak, %bb.y, %.thread287.sink.split
  %or.cond30464 = phi i1 [ false, %.thread287.sink.split ], [ true, %bb.y ], [ true, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  br label %.thread296

.thread292.sink.split:                            ; preds = %bb.ah, %bb.af, %bb.aj
  %.sink = phi i32 [ %i.df, %bb.aj ], [ 268435455, %bb.af ], [ 268435455, %bb.ah ]
  store i32 %1, ptr %i.ci, align 4
  store i32 %.sink, ptr %i.cj, align 8
  br label %.thread292

.thread292:                                       ; preds = %bb.ac, %bb.ad, %.thread292.sink.split, %bb.ai
  %.2206.ph = phi i1 [ true, %bb.ai ], [ false, %.thread292.sink.split ], [ true, %bb.ad ], [ true, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  br label %.thread296

bb.ak:                                            ; preds = %bb.ag
  %i.dg = load i32, ptr %i.g, align 4
  %i.dh = add nuw i32 %i.cv, 2
  %i.di = add i32 %i.dh, %i.dg                    ; 2 uses
  store i32 %i.di, ptr %i.c, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #5
  store i32 0, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #5
  store i32 0, ptr %i.g, align 4
  %i.dj = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.di) ; 2 uses
  %i.dk = icmp eq i32 %i.dj, 0                    ; 2 uses
  %or.cond30 = and i1 %.1176417424, %i.dk
  br i1 %or.cond30, label %.thread287, label %.lr.ph489, !llvm.loop !9

bb.al:                                            ; preds = %bb.v
  br i1 %.4203262, label %bb.am, label %bb.at

bb.am:                                            ; preds = %bb.al
  %i.dl = load i32, ptr %i.e, align 4             ; 2 uses
  %i.dm = icmp sgt i32 %i.dl, 131071
  br i1 %i.dm, label %bb.an, label %.critedge236

bb.an:                                            ; preds = %bb.am
  br i1 %.4198264, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.dn = call i32 @strncmp(ptr noundef %.5187267, ptr noundef nonnull dereferenceable(16) @.str.8, i64 noundef 15) #7
  %i.do = icmp eq i32 %i.dn, 0
  br i1 %i.do, label %.thread296, label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.dp = getelementptr i8, ptr %2, i64 416
  %i.dq = load ptr, ptr %i.dp, align 8
  %i.dr = call ptr @tvb_get_string_enc(ptr noundef %i.dq, ptr noundef %0, i32 noundef 0, i32 noundef 12, i32 noundef 0) ; 2 uses
  %i.ds = call i32 @strncmp(ptr noundef %i.dr, ptr noundef nonnull dereferenceable(12) @.str.9, i64 noundef 11) #7
  %i.dt = icmp eq i32 %i.ds, 0
  br i1 %i.dt, label %.thread296, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.du = call i32 @strncmp(ptr noundef %i.dr, ptr noundef nonnull dereferenceable(13) @.str.10, i64 noundef 12) #7
  %i.dv = icmp eq i32 %i.du, 0
  br i1 %i.dv, label %.thread296, label %..critedge236_crit_edge

..critedge236_crit_edge:                          ; preds = %bb.aq
  %.pre = load i32, ptr %i.e, align 4
  br label %.critedge236

.critedge236:                                     ; preds = %..critedge236_crit_edge, %bb.am
  %i.dw = phi i32 [ %.pre, %..critedge236_crit_edge ], [ %i.dl, %bb.am ]
  %i.dx = load i32, ptr %i.c, align 4
  %i.dy = call zeroext i1 @tvb_bytes_exist(ptr noundef %0, i32 noundef %i.dx, i32 noundef %i.dw)
  br i1 %i.dy, label %.thread296, label %bb.ar

bb.ar:                                            ; preds = %.critedge236
  %i.dz = load i32, ptr %i.c, align 4
  %i.ea = call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef %i.dz) ; 2 uses
  %i.eb = load i32, ptr %i.c, align 4
  %i.ec = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.eb)
  %i.ed = icmp ult i32 %i.ea, %i.ec
  br i1 %i.ed, label %.thread296, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ee = getelementptr i8, ptr %2, i64 340
  store i32 %1, ptr %i.ee, align 4
  %i.ef = load i32, ptr %i.e, align 4
  %i.eg = sub i32 %i.ef, %i.ea
  %i.eh = getelementptr i8, ptr %2, i64 344
  store i32 %i.eg, ptr %i.eh, align 8
  br label %.thread296

bb.at:                                            ; preds = %bb.al
  br i1 %5, label %bb.au, label %.thread296

bb.au:                                            ; preds = %bb.at
  %i.ei = getelementptr i8, ptr %2, i64 336
  %i.ej = load i16, ptr %i.ei, align 8
  %.not225 = icmp eq i16 %i.ej, 0
  br i1 %.not225, label %.thread296, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ek = load i32, ptr %i.c, align 4
  %i.el = call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef %i.ek)
  %i.em = load i32, ptr %i.c, align 4
  %i.en = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.em)
  %i.eo = icmp ult i32 %i.el, %i.en
  br i1 %i.eo, label %.thread296, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ep = getelementptr i8, ptr %2, i64 340
  store i32 %1, ptr %i.ep, align 4
  %i.eq = getelementptr i8, ptr %2, i64 344
  store i32 268435454, ptr %i.eq, align 8
  br label %.thread296

.thread296.loopexit:                              ; preds = %bb.af
  %i.er = load i32, ptr %i.g, align 4
  store i32 %i.er, ptr %i.ci, align 4
  store i32 0, ptr %i.cj, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  br label %.thread296

.thread296:                                       ; preds = %.thread296.loopexit, %.thread287, %.thread292, %.thread269, %.critedge236, %bb.au, %bb.at, %bb.av, %bb.ar, %bb.ao, %bb.aq, %bb.ap, %bb.aw, %bb.as, %.split326.us, %.split.us
  %.6210 = phi i1 [ false, %.split.us ], [ true, %bb.av ], [ true, %.thread269 ], [ true, %bb.ao ], [ false, %bb.as ], [ false, %.split326.us ], [ true, %bb.ar ], [ false, %bb.aw ], [ true, %bb.ap ], [ true, %bb.aq ], [ %.2206.ph, %.thread292 ], [ true, %bb.at ], [ true, %bb.au ], [ true, %.critedge236 ], [ %or.cond30464, %.thread287 ], [ true, %.thread296.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  ret i1 %.6210
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: noreturn null_pointer_is_valid
declare void @proto_report_dissector_bug(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length_remaining(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length_remaining(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @tvb_find_line_end_remaining(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_uint8(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_get_string_enc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i32 @g_ascii_strncasecmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @g_strchomp(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @g_strchug(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @ws_strtoi32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @dissector_get_string_handle(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @tvb_get_string_uint(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @tvb_bytes_exist(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare ptr @strpbrk(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @ws_hexstrtou32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn }
attributes #7 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
end_hunk_0
