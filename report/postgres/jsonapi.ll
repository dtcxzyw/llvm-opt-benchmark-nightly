Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/jsonapi?download=true
inline.NumInlined: 59
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@freeJsonLexContext:bb.a

bb.m:                                             ; preds = %bb.l, %.lr.ph
  %i.ag = phi i32 [ %.pre, %bb.l ], [ %i.z, %.lr.ph ] ; 2 uses
  %i.ah = add i32 %.061, 1                        ; 2 uses
  %.not52 = icmp sgt i32 %i.ah, %i.ag
  br i1 %.not52, label %.loopexit, label %.lr.ph, !llvm.loop !12

.loopexit:                                        ; preds = %bb.m, %.preheader, %bb.k
  %i.ai = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %.not53 = icmp eq ptr %i.ak, null
  br i1 %.not53, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.loopexit
  tail call void @pfree(ptr noundef nonnull %i.ak) #8
  %.pre62 = load ptr, ptr %i.r, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.loopexit
  %i.al = phi ptr [ %.pre62, %bb.n ], [ %i.ai, %.loopexit ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %.not54 = icmp eq ptr %i.an, null
  br i1 %.not54, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @pfree(ptr noundef nonnull %i.an) #8
  %.pre63 = load ptr, ptr %i.r, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ao = phi ptr [ %.pre63, %bb.p ], [ %i.al, %bb.o ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %.not55 = icmp eq ptr %i.aq, null
  br i1 %.not55, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @pfree(ptr noundef nonnull %i.aq) #8
  %.pr = load ptr, ptr %i.r, align 8              ; 2 uses
  %.not56 = icmp eq ptr %.pr, null
  br i1 %.not56, label %bb.s, label %.thread

.thread:                                          ; preds = %bb.q, %bb.r
  %i.ar = phi ptr [ %.pr, %bb.r ], [ %i.ao, %bb.q ]
  tail call void @pfree(ptr noundef nonnull %i.ar) #8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.thread, %bb.f
  %i.as = load i32, ptr %i.c, align 4
  %i.at = and i32 %i.as, 1
  %.not57 = icmp eq i32 %i.at, 0
  br i1 %.not57, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @pfree(ptr noundef nonnull %0) #8
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %0, i8 0, i64 120, i1 false)
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.a, %bb.u
  ret void
}

declare void @destroyStringInfo(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @pg_parse_json(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, @failed_oom
  br i1 %i.a, label %lex_expect.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load i8, ptr %i.b, align 8, !range !4, !noundef !5
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %lex_expect.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @json_lex(ptr noundef %0)  ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %lex_expect.exit

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %0, i64 52         ; 2 uses
  %.val = load i32, ptr %i.f, align 4
  switch i32 %.val, label %bb.g [
    i32 3, label %bb.e
    i32 5, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.g = tail call fastcc i32 @parse_object(ptr noundef %0, ptr noundef %1)
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.h = tail call fastcc i32 @parse_array(ptr noundef %0, ptr noundef %1)
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.i = tail call fastcc i32 @parse_scalar(ptr noundef %0, ptr noundef %1)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.0 = phi i32 [ %i.i, %bb.g ], [ %i.g, %bb.e ], [ %i.h, %bb.f ] ; 2 uses
  %i.j = icmp eq i32 %.0, 0
  br i1 %i.j, label %bb.i, label %lex_expect.exit

bb.i:                                             ; preds = %bb.h
  %.val.i = load i32, ptr %i.f, align 4
  %i.k = icmp eq i32 %.val.i, 12
  br i1 %i.k, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.l = tail call i32 @json_lex(ptr noundef nonnull %0)
  br label %lex_expect.exit

bb.k:                                             ; preds = %bb.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = icmp eq ptr %i.n, null
  %spec.select = select i1 %i.o, i32 11, i32 9
  br label %lex_expect.exit

lex_expect.exit:                                  ; preds = %bb.k, %bb.j, %bb.h, %bb.c, %bb.b, %bb.a
  %.016 = phi i32 [ %i.e, %bb.c ], [ 16, %bb.a ], [ 2, %bb.b ], [ %.0, %bb.h ], [ %i.l, %bb.j ], [ %spec.select, %bb.k ]
  ret i32 %.016
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 23) i32 @json_lex(ptr nofree noundef captures(address) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.JsonLexContext, align 8     ; 15 uses
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = ptrtoaddr ptr %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.d ; 4 uses
  %i.f = icmp eq ptr %0, @failed_oom
  br i1 %i.f, label %.thread388, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 8 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.i = icmp eq ptr %i.h, @failed_inc_oom
  br i1 %i.i, label %.thread388, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.k = load i8, ptr %i.j, align 8, !range !4, !noundef !5
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.d, label %.thread476

.thread476:                                       ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = ptrtoaddr ptr %i.n to i64
  br label %bb.as

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.q = load i8, ptr %i.p, align 2, !range !4, !noundef !5
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = ptrtoaddr ptr %i.t to i64
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  tail call void @resetStringInfo(ptr noundef nonnull %i.v) #8
  %i.w = load ptr, ptr %0, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.w, ptr %i.x, align 8
  %i.y = load ptr, ptr %i.g, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  store i8 0, ptr %i.z, align 2
  %.pre = load i8, ptr %i.j, align 8, !range !4
  %i.aa = trunc nuw i8 %.pre to i1
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8            ; 3 uses
  %i.ad = ptrtoaddr ptr %i.ac to i64              ; 2 uses
  br i1 %i.aa, label %bb.f, label %bb.as

bb.f:                                             ; preds = %.thread, %bb.e
  %i.ae = phi i64 [ %i.u, %.thread ], [ %i.ad, %bb.e ]
  %i.af = phi ptr [ %i.t, %.thread ], [ %i.ac, %bb.e ]
  %i.ag = phi ptr [ %i.s, %.thread ], [ %i.ab, %bb.e ] ; 3 uses
  %i.ah = load ptr, ptr %i.g, align 8             ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 21 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 22 uses
  %i.ak = load i32, ptr %i.aj, align 8            ; 8 uses
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %bb.as, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.al, i8 0, i64 104, i1 false)
  %i.am = load ptr, ptr %i.ai, align 8            ; 6 uses
  %i.an = load i8, ptr %i.am, align 1             ; 2 uses
  switch i8 %i.an, label %bb.o [
    i8 34, label %bb.h
    i8 45, label %bb.p
  ]

bb.h:                                             ; preds = %bb.g
  %.0329399 = add i32 %i.ak, -1                   ; 2 uses
  %i.ao = icmp sgt i32 %.0329399, 0
  br i1 %i.ao, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.h
  %2 = trunc i32 %i.ak to i1
  %3 = xor i1 %2, true
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %.0329401 = phi i32 [ %.0329, %bb.i ], [ %.0329399, %.lr.ph.preheader ] ; 3 uses
  %.0330400 = phi i1 [ %4, %bb.i ], [ false, %.lr.ph.preheader ] ; 2 uses
  %i.ap = zext nneg i32 %.0329401 to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = icmp eq i8 %i.ar, 92
  br i1 %i.as, label %bb.i, label %._crit_edge

bb.i:                                             ; preds = %.lr.ph
  %4 = xor i1 %.0330400, true
  %.0329 = add nsw i32 %.0329401, -1
  %5 = icmp sgt i32 %.0329401, 1
  br i1 %5, label %.lr.ph, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %bb.i, %.lr.ph, %bb.h
  %.0330.lcssa = phi i1 [ false, %bb.h ], [ %.0330400, %.lr.ph ], [ %3, %bb.i ]
  %i.at = load i64, ptr %i.c, align 8
  %.not452 = icmp eq i64 %i.at, 0
  br i1 %.not452, label %.loopexit397.thread, label %.lr.ph409

.lr.ph409:                                        ; preds = %._crit_edge
  %i.au = getelementptr inbounds nuw i8, ptr %i.ah, i64 20
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph409, %bb.n
  %.0324407 = phi i64 [ 0, %.lr.ph409 ], [ %i.bj, %bb.n ] ; 2 uses
  %.1331405 = phi i1 [ %.0330.lcssa, %.lr.ph409 ], [ %.2332, %bb.n ] ; 2 uses
  %i.av = load ptr, ptr %0, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %.0324407
  %i.ax = load i8, ptr %i.aw, align 1             ; 4 uses
  %i.ay = load i32, ptr %i.aj, align 8            ; 2 uses
  %i.az = add i32 %i.ay, 1
  %i.ba = load i32, ptr %i.au, align 4
  %.not371 = icmp slt i32 %i.az, %i.ba
  br i1 %.not371, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @appendStringInfoChar(ptr noundef nonnull %i.ai, i8 noundef signext %i.ax) #8
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bb = load ptr, ptr %i.ai, align 8
  %i.bc = sext i32 %i.ay to i64
  %i.bd = getelementptr inbounds i8, ptr %i.bb, i64 %i.bc
  store i8 %i.ax, ptr %i.bd, align 1
  %i.be = load ptr, ptr %i.ai, align 8
  %i.bf = load i32, ptr %i.aj, align 8
  %i.bg = add i32 %i.bf, 1                        ; 2 uses
  store i32 %i.bg, ptr %i.aj, align 8
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds i8, ptr %i.be, i64 %i.bh
  store i8 0, ptr %i.bi, align 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bj = add nuw i64 %.0324407, 1                ; 4 uses
  %6 = icmp ne i8 %i.ax, 34
  %or.cond374.not = select i1 %6, i1 true, i1 %.1331405
  br i1 %or.cond374.not, label %bb.n, label %.loopexit397

bb.n:                                             ; preds = %bb.m
  %i.bk = icmp eq i8 %i.ax, 92
  %7 = xor i1 %.1331405, true
  %.2332 = select i1 %i.bk, i1 %7, i1 false
  %i.bl = load i64, ptr %i.c, align 8
  %i.bm = icmp ult i64 %i.bj, %i.bl
  br i1 %i.bm, label %bb.j, label %.loopexit397, !llvm.loop !14

bb.o:                                             ; preds = %bb.g
  %i.bn = add i8 %i.an, -48
  %or.cond = icmp ult i8 %i.bn, 10
  br i1 %or.cond, label %bb.p, label %.loopexit.sink.split

bb.p:                                             ; preds = %bb.g, %bb.o
  %i.bo = icmp sgt i32 %i.ak, 0
  br i1 %i.bo, label %iter.check, label %._crit_edge420

iter.check:                                       ; preds = %bb.p
  %wide.trip.count = zext nneg i32 %i.ak to i64   ; 6 uses
  %min.iters.check = icmp ult i32 %i.ak, 4
  br i1 %min.iters.check, label %.lr.ph419.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check519 = icmp ult i32 %i.ak, 32
  br i1 %min.iters.check519, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bp = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.ca, %vector.body ]
  %vec.phi520 = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.cb, %vector.body ]
  %vec.phi521 = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.by, %vector.body ]
  %vec.phi522 = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.bz, %vector.body ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.am, i64 %index ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %wide.load = load <16 x i8>, ptr %i.bq, align 1 ; 2 uses
  %wide.load523 = load <16 x i8>, ptr %i.br, align 1 ; 2 uses
  %i.bs = icmp eq <16 x i8> %wide.load, splat (i8 46)
  %i.bt = icmp eq <16 x i8> %wide.load523, splat (i8 46)
  %i.bu = and <16 x i8> %wide.load, splat (i8 -33)
  %i.bv = and <16 x i8> %wide.load523, splat (i8 -33)
  %i.bw = icmp eq <16 x i8> %i.bu, splat (i8 69)
  %i.bx = icmp eq <16 x i8> %i.bv, splat (i8 69)
  %i.by = or <16 x i1> %vec.phi521, %i.bs         ; 2 uses
  %i.bz = or <16 x i1> %vec.phi522, %i.bt         ; 2 uses
  %i.ca = or <16 x i1> %vec.phi, %i.bw            ; 2 uses
  %i.cb = or <16 x i1> %vec.phi520, %i.bx         ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <16 x i1> %i.cb, %i.ca
  %bin.rdx.fr = freeze <16 x i1> %bin.rdx
  %i.cd = bitcast <16 x i1> %bin.rdx.fr to i16
  %.not538 = icmp ne i16 %i.cd, 0                 ; 2 uses
  %rdx.select = zext i1 %.not538 to i8            ; 2 uses
  %bin.rdx524 = or <16 x i1> %i.bz, %i.by
  %bin.rdx524.fr = freeze <16 x i1> %bin.rdx524
  %i.ce = bitcast <16 x i1> %bin.rdx524.fr to i16
  %i.cf = icmp ne i16 %i.ce, 0                    ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge420, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bp, 0
  br i1 %min.epilog.iters.check, label %.lr.ph419.preheader, label %vec.epilog.ph, !prof !18

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %.not538, %vec.epilog.iter.check ], [ false, %vector.main.loop.iter.check ]
  %bc.merge.rdx525 = phi i1 [ %i.cf, %vec.epilog.iter.check ], [ false, %vector.main.loop.iter.check ]
  %n.vec526 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i1> poison, i1 %bc.merge.rdx, i64 0
  %broadcast.splat = shufflevector <4 x i1> %broadcast.splatinsert, <4 x i1> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert527 = insertelement <4 x i1> poison, i1 %bc.merge.rdx525, i64 0
  %broadcast.splat528 = shufflevector <4 x i1> %broadcast.splatinsert527, <4 x i1> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index529 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next533, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi530 = phi <4 x i1> [ %broadcast.splat, %vec.epilog.ph ], [ %i.cl, %vec.epilog.vector.body ]
  %vec.phi531 = phi <4 x i1> [ %broadcast.splat528, %vec.epilog.ph ], [ %i.ck, %vec.epilog.vector.body ]
  %i.cg = getelementptr inbounds nuw i8, ptr %i.am, i64 %index529
  %wide.load532 = load <4 x i8>, ptr %i.cg, align 1
  %wide.load532.fr = freeze <4 x i8> %wide.load532 ; 2 uses
  %i.ch = icmp eq <4 x i8> %wide.load532.fr, splat (i8 46)
  %i.ci = and <4 x i8> %wide.load532.fr, splat (i8 -33)
  %i.cj = icmp eq <4 x i8> %i.ci, splat (i8 69)
  %i.ck = or <4 x i1> %vec.phi531, %i.ch          ; 2 uses
  %i.cl = or <4 x i1> %vec.phi530, %i.cj          ; 2 uses
  %index.next533 = add nuw i64 %index529, 4       ; 2 uses
  %i.cm = icmp eq i64 %index.next533, %n.vec526
  br i1 %i.cm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !19

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.cn = bitcast <4 x i1> %i.cl to i4
  %.not541 = icmp ne i4 %i.cn, 0
  %rdx.select534 = zext i1 %.not541 to i8         ; 2 uses
  %i.co = bitcast <4 x i1> %i.ck to i4
  %i.cp = icmp ne i4 %i.co, 0                     ; 2 uses
  %cmp.n535 = icmp eq i64 %n.vec526, %wide.trip.count
  br i1 %cmp.n535, label %._crit_edge420, label %.lr.ph419.preheader

.lr.ph419.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec526, %vec.epilog.middle.block ]
  %.0312416.ph = phi i8 [ 0, %iter.check ], [ %rdx.select, %vec.epilog.iter.check ], [ %rdx.select534, %vec.epilog.middle.block ]
  %.0315415.ph = phi i1 [ false, %iter.check ], [ %i.cf, %vec.epilog.iter.check ], [ %i.cp, %vec.epilog.middle.block ]
  br label %.lr.ph419

._crit_edge420:                                   ; preds = %.lr.ph419, %middle.block, %vec.epilog.middle.block, %bb.p
  %.0315.lcssa = phi i1 [ false, %bb.p ], [ %i.cp, %vec.epilog.middle.block ], [ %i.cf, %middle.block ], [ %.1316, %.lr.ph419 ]
  %.0312.lcssa = phi i8 [ 0, %bb.p ], [ %rdx.select534, %vec.epilog.middle.block ], [ %rdx.select, %middle.block ], [ %.1313, %.lr.ph419 ]
  %i.cq = load i64, ptr %i.c, align 8
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %._crit_edge436.thread, label %.lr.ph430

.lr.ph430:                                        ; preds = %._crit_edge420
  %i.cs = add i32 %i.ak, -1
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds i8, ptr %i.am, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ah, i64 20 ; 4 uses
  br label %bb.q

.lr.ph419:                                        ; preds = %.lr.ph419.preheader, %.lr.ph419
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph419 ], [ %indvars.iv.ph, %.lr.ph419.preheader ] ; 2 uses
  %.0312416 = phi i8 [ %.1313, %.lr.ph419 ], [ %.0312416.ph, %.lr.ph419.preheader ]
  %.0315415 = phi i1 [ %.1316, %.lr.ph419 ], [ %.0315415.ph, %.lr.ph419.preheader ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.am, i64 %indvars.iv
  %i.cy = load i8, ptr %i.cx, align 1             ; 2 uses
  %i.cz = icmp eq i8 %i.cy, 46
  %i.da = and i8 %i.cy, -33
  %or.cond7.not = icmp eq i8 %i.da, 69
  %.1316 = select i1 %i.cz, i1 true, i1 %.0315415 ; 2 uses
  %.1313 = select i1 %or.cond7.not, i8 1, i8 %.0312416 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not.a = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not.a, label %._crit_edge420, label %.lr.ph419, !llvm.loop !20

bb.q:                                             ; preds = %.lr.ph430, %bb.ag
  %.0308428 = phi i64 [ 0, %.lr.ph430 ], [ %i.fb, %bb.ag ] ; 2 uses
  %.0310427 = phi i8 [ %i.cv, %.lr.ph430 ], [ %i.ez, %bb.ag ]
  %.2314426 = phi i8 [ %.0312.lcssa, %.lr.ph430 ], [ %.3488, %bb.ag ] ; 6 uses
  %.2317425 = phi i1 [ %.0315.lcssa, %.lr.ph430 ], [ %.3318486, %bb.ag ] ; 7 uses
  %.2326424 = phi i64 [ 0, %.lr.ph430 ], [ %i.fa, %bb.ag ] ; 5 uses
  %i.db = load ptr, ptr %0, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %.0308428
  %i.dd = load i8, ptr %i.dc, align 1             ; 13 uses
  switch i8 %i.dd, label %.loopexit.sink.split [
    i8 43, label %bb.r
    i8 45, label %bb.r
    i8 46, label %bb.v
    i8 101, label %bb.z
    i8 69, label %bb.z
    i8 48, label %bb.ad
    i8 49, label %bb.ad
    i8 50, label %bb.ad
    i8 51, label %bb.ad
    i8 52, label %bb.ad
    i8 53, label %bb.ad
    i8 54, label %bb.ad
    i8 55, label %bb.ad
    i8 56, label %bb.ad
    i8 57, label %bb.ad
  ]

bb.r:                                             ; preds = %bb.q, %bb.q
  %i.de = and i8 %.0310427, -33
  %or.cond10.not = icmp eq i8 %i.de, 69
  br i1 %or.cond10.not, label %bb.s, label %.loopexit.sink.split

bb.s:                                             ; preds = %bb.r
  %i.df = load i32, ptr %i.aj, align 8            ; 2 uses
  %i.dg = add i32 %i.df, 1
  %i.dh = load i32, ptr %i.cw, align 4
  %.not370 = icmp slt i32 %i.dg, %i.dh
  br i1 %.not370, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @appendStringInfoChar(ptr noundef nonnull %i.ai, i8 noundef signext %i.dd) #8
  br label %bb.ag

bb.u:                                             ; preds = %bb.s
  %i.di = load ptr, ptr %i.ai, align 8
  %i.dj = sext i32 %i.df to i64
  %i.dk = getelementptr inbounds i8, ptr %i.di, i64 %i.dj
  store i8 %i.dd, ptr %i.dk, align 1
  %i.dl = load ptr, ptr %i.ai, align 8
  %i.dm = load i32, ptr %i.aj, align 8
  %i.dn = add i32 %i.dm, 1                        ; 2 uses
  store i32 %i.dn, ptr %i.aj, align 8
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr inbounds i8, ptr %i.dl, i64 %i.do
  store i8 0, ptr %i.dp, align 1
  br label %bb.ag

bb.v:                                             ; preds = %bb.q
  %i.dq = trunc nuw i8 %.2314426 to i1
  %or.cond12 = select i1 %.2317425, i1 true, i1 %i.dq
  br i1 %or.cond12, label %.loopexit.sink.split, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dr = load i32, ptr %i.aj, align 8            ; 2 uses
  %i.ds = add i32 %i.dr, 1
  %i.dt = load i32, ptr %i.cw, align 4
  %.not369 = icmp slt i32 %i.ds, %i.dt
  br i1 %.not369, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @appendStringInfoChar(ptr noundef nonnull %i.ai, i8 noundef signext 46) #8
  br label %bb.ag

bb.y:                                             ; preds = %bb.w
  %i.du = load ptr, ptr %i.ai, align 8
  %i.dv = sext i32 %i.dr to i64
  %i.dw = getelementptr inbounds i8, ptr %i.du, i64 %i.dv
  store i8 46, ptr %i.dw, align 1
  %i.dx = load ptr, ptr %i.ai, align 8
  %i.dy = load i32, ptr %i.aj, align 8
  %i.dz = add i32 %i.dy, 1                        ; 2 uses
  store i32 %i.dz, ptr %i.aj, align 8
  %i.ea = sext i32 %i.dz to i64
  %i.eb = getelementptr inbounds i8, ptr %i.dx, i64 %i.ea
  store i8 0, ptr %i.eb, align 1
  br label %bb.ag

bb.z:                                             ; preds = %bb.q, %bb.q
  %i.ec = trunc nuw i8 %.2314426 to i1
  br i1 %i.ec, label %.loopexit.sink.split, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ed = load i32, ptr %i.aj, align 8            ; 2 uses
  %i.ee = add i32 %i.ed, 1
  %i.ef = load i32, ptr %i.cw, align 4
  %.not368 = icmp slt i32 %i.ee, %i.ef
  br i1 %.not368, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @appendStringInfoChar(ptr noundef nonnull %i.ai, i8 noundef signext %i.dd) #8
  br label %bb.ag

bb.ac:                                            ; preds = %bb.aa
  %i.eg = load ptr, ptr %i.ai, align 8
  %i.eh = sext i32 %i.ed to i64
  %i.ei = getelementptr inbounds i8, ptr %i.eg, i64 %i.eh
  store i8 %i.dd, ptr %i.ei, align 1
  %i.ej = load ptr, ptr %i.ai, align 8
  %i.ek = load i32, ptr %i.aj, align 8
  %i.el = add i32 %i.ek, 1                        ; 2 uses
  store i32 %i.el, ptr %i.aj, align 8
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds i8, ptr %i.ej, i64 %i.em
  store i8 0, ptr %i.en, align 1
  br label %bb.ag

bb.ad:                                            ; preds = %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q
  %i.eo = load i32, ptr %i.aj, align 8            ; 2 uses
  %i.ep = add i32 %i.eo, 1
  %i.eq = load i32, ptr %i.cw, align 4
  %.not367 = icmp slt i32 %i.ep, %i.eq
  br i1 %.not367, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @appendStringInfoChar(ptr noundef nonnull %i.ai, i8 noundef signext %i.dd) #8
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.er = load ptr, ptr %i.ai, align 8
  %i.es = sext i32 %i.eo to i64
  %i.et = getelementptr inbounds i8, ptr %i.er, i64 %i.es
  store i8 %i.dd, ptr %i.et, align 1
  %i.eu = load ptr, ptr %i.ai, align 8
  %i.ev = load i32, ptr %i.aj, align 8
  %i.ew = add i32 %i.ev, 1                        ; 2 uses
  store i32 %i.ew, ptr %i.aj, align 8
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr inbounds i8, ptr %i.eu, i64 %i.ex
  store i8 0, ptr %i.ey, align 1
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af, %bb.ab, %bb.ac, %bb.x, %bb.y, %bb.t, %bb.u
  %.3488 = phi i8 [ 0, %bb.x ], [ %.2314426, %bb.t ], [ 1, %bb.ab ], [ %.2314426, %bb.u ], [ 0, %bb.y ], [ 1, %bb.ac ], [ %.2314426, %bb.af ], [ %.2314426, %bb.ae ]
  %.3318486 = phi i1 [ true, %bb.x ], [ %.2317425, %bb.t ], [ %.2317425, %bb.ab ], [ %.2317425, %bb.u ], [ true, %bb.y ], [ %.2317425, %bb.ac ], [ %.2317425, %bb.af ], [ %.2317425, %bb.ae ]
  %i.ez = phi i8 [ 46, %bb.x ], [ %i.dd, %bb.t ], [ %i.dd, %bb.ab ], [ %i.dd, %bb.u ], [ 46, %bb.y ], [ %i.dd, %bb.ac ], [ %i.dd, %bb.af ], [ %i.dd, %bb.ae ]
  %i.fa = add i64 %.2326424, 1                    ; 2 uses
  %i.fb = add nuw i64 %.0308428, 1                ; 2 uses
  %i.fc = load i64, ptr %i.c, align 8             ; 2 uses
  %.not514 = icmp ult i64 %i.fb, %i.fc
  br i1 %.not514, label %bb.q, label %.loopexit, !llvm.loop !21

.loopexit.sink.split:                             ; preds = %bb.q, %bb.v, %bb.r, %bb.z, %bb.o
  %.4.ph = phi i64 [ 0, %bb.o ], [ %.2326424, %bb.z ], [ %.2326424, %bb.r ], [ %.2326424, %bb.v ], [ %.2326424, %bb.q ]
  %i.fd = load i64, ptr %i.c, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ag, %.loopexit.sink.split
  %i.fe = phi i64 [ %i.fd, %.loopexit.sink.split ], [ %i.fc, %bb.ag ] ; 3 uses
  %.4 = phi i64 [ %.4.ph, %.loopexit.sink.split ], [ %i.fa, %bb.ag ] ; 3 uses
  %i.ff = icmp ult i64 %.4, %i.fe
  br i1 %i.ff, label %.lr.ph435, label %._crit_edge436

.lr.ph435:                                        ; preds = %.loopexit
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ah, i64 20
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph435, %bb.am
  %i.fh = phi i64 [ %i.fe, %.lr.ph435 ], [ %i.gb, %bb.am ]
  %.0306433 = phi i64 [ %.4, %.lr.ph435 ], [ %i.ga, %bb.am ] ; 3 uses
  %i.fi = load ptr, ptr %0, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 %.0306433
  %i.fk = load i8, ptr %i.fj, align 1             ; 6 uses
  %i.fl = and i8 %i.fk, -33
  %i.fm = add i8 %i.fl, -65
  %or.cond376 = icmp ult i8 %i.fm, 26
  br i1 %or.cond376, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fn = add i8 %i.fk, -58
  %or.cond21 = icmp ult i8 %i.fn, -10
  %i.fo = icmp ne i8 %i.fk, 95
  %or.cond24.not394 = and i1 %i.fo, %or.cond21
  %.not365 = icmp sgt i8 %i.fk, -1
  %or.cond377 = and i1 %.not365, %or.cond24.not394
  br i1 %or.cond377, label %._crit_edge436, label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.fp = load i32, ptr %i.aj, align 8            ; 2 uses
  %i.fq = add i32 %i.fp, 1
  %i.fr = load i32, ptr %i.fg, align 4
  %.not366 = icmp slt i32 %i.fq, %i.fr
  br i1 %.not366, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  tail call void @appendStringInfoChar(ptr noundef nonnull %i.ai, i8 noundef signext %i.fk) #8
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.fs = load ptr, ptr %i.ai, align 8
  %i.ft = sext i32 %i.fp to i64
  %i.fu = getelementptr inbounds i8, ptr %i.fs, i64 %i.ft
  store i8 %i.fk, ptr %i.fu, align 1
  %i.fv = load ptr, ptr %i.ai, align 8
  %i.fw = load i32, ptr %i.aj, align 8
  %i.fx = add i32 %i.fw, 1                        ; 2 uses
  store i32 %i.fx, ptr %i.aj, align 8
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds i8, ptr %i.fv, i64 %i.fy
  store i8 0, ptr %i.fz, align 1
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al
  %i.ga = add nuw i64 %.0306433, 1                ; 3 uses
  %i.gb = load i64, ptr %i.c, align 8             ; 3 uses
  %i.gc = icmp ult i64 %i.ga, %i.gb
  br i1 %i.gc, label %bb.ah, label %._crit_edge436, !llvm.loop !22

._crit_edge436:                                   ; preds = %bb.am, %bb.ai, %.loopexit
  %i.gd = phi i64 [ %i.fe, %.loopexit ], [ %i.gb, %bb.am ], [ %i.fh, %bb.ai ] ; 2 uses
  %.5.lcssa = phi i64 [ %.4, %.loopexit ], [ %i.ga, %bb.am ], [ %.0306433, %bb.ai ] ; 2 uses
  %.5339 = phi i8 [ 0, %.loopexit ], [ 0, %bb.am ], [ 1, %bb.ai ] ; 2 uses
  %i.ge = icmp eq i64 %.5.lcssa, %i.gd
  br i1 %i.ge, label %._crit_edge436.thread, label %.loopexit397

._crit_edge436.thread:                            ; preds = %._crit_edge420, %._crit_edge436
  %.5339501 = phi i8 [ %.5339, %._crit_edge436 ], [ 0, %._crit_edge420 ]
  %i.gf = phi i64 [ %i.gd, %._crit_edge436 ], [ 0, %._crit_edge420 ]
  %i.gg = load ptr, ptr %i.g, align 8
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 1
  %i.gi = load i8, ptr %i.gh, align 1, !range !4, !noundef !5
  %spec.select378 = or i8 %i.gi, %.5339501
  br label %.loopexit397

.loopexit397:                                     ; preds = %bb.n, %bb.m, %._crit_edge436.thread, %._crit_edge436
  %.7341 = phi i8 [ %.5339, %._crit_edge436 ], [ %spec.select378, %._crit_edge436.thread ], [ 1, %bb.m ], [ 0, %bb.n ]
  %.8 = phi i64 [ %.5.lcssa, %._crit_edge436 ], [ %i.gf, %._crit_edge436.thread ], [ %i.bj, %bb.m ], [ %i.bj, %bb.n ] ; 2 uses
  %i.gj = trunc nuw i8 %.7341 to i1
  br i1 %i.gj, label %bb.ao, label %.loopexit397.thread

.loopexit397.thread:                              ; preds = %._crit_edge, %.loopexit397
  %i.gk = load ptr, ptr %i.g, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 1
  %i.gm = load i8, ptr %i.gl, align 1, !range !4, !noundef !5
  %i.gn = trunc nuw i8 %i.gm to i1
  br i1 %i.gn, label %bb.an, label %bb.ar

bb.an:                                            ; preds = %.loopexit397.thread
  %i.go = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.go, ptr %i.gp, align 8
  %i.gq = load i32, ptr %i.aj, align 8
  %i.gr = sext i32 %i.gq to i64
  %i.gs = getelementptr inbounds i8, ptr %i.go, i64 %i.gr
  store ptr %i.gs, ptr %i.ag, align 8
  br label %bb.ar

bb.ao:                                            ; preds = %.loopexit397
  %i.gt = load ptr, ptr %0, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 %.8
  store ptr %i.gu, ptr %0, align 8
  %8 = load i64, ptr %i.c, align 8
  %i.gv = sub i64 %8, %.8
  store i64 %i.gv, ptr %i.c, align 8
  %i.gw = load ptr, ptr %i.ai, align 8            ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr %i.gw, ptr %i.gx, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  store ptr %i.gw, ptr %i.gy, align 8
  store ptr %i.gw, ptr %1, align 8
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ha = load i32, ptr %i.gz, align 8
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  store i32 %i.ha, ptr %i.hb, align 8
  %i.hc = load i32, ptr %i.aj, align 8
  %i.hd = sext i32 %i.hc to i64
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.hd, ptr %i.he, align 8
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hg = load i32, ptr %i.hf, align 8
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.hg, ptr %i.hh, align 8
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i8 0, ptr %i.hi, align 8
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.hk = load i8, ptr %i.hj, align 8, !range !4, !noundef !5
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i8 %i.hk, ptr %i.hl, align 8
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.hn = load ptr, ptr %i.hm, align 8
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 104
  store ptr %i.hn, ptr %i.ho, align 8
  %i.hp = call i32 @json_lex(ptr noundef nonnull %1) ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.hr = load i32, ptr %i.hq, align 4
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.hr, ptr %i.hs, align 4
  %i.ht = load i32, ptr %i.hb, align 8
  store i32 %i.ht, ptr %i.gz, align 8
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.hu, align 8
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.hw = load ptr, ptr %i.hv, align 8            ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.hw, ptr %i.hx, align 8
  %i.hy = load ptr, ptr %i.gy, align 8            ; 2 uses
  store ptr %i.hy, ptr %i.ag, align 8
  %i.hz = icmp eq i32 %i.hp, 0
  br i1 %i.hz, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.ia = ptrtoint ptr %i.hy to i64
  %i.ib = ptrtoint ptr %i.hw to i64
  %i.ic = sub i64 %i.ia, %i.ib
  %i.id = load i32, ptr %i.aj, align 8
  %i.ie = sext i32 %i.id to i64
  %.not372 = icmp eq i64 %i.ic, %i.ie
  br i1 %.not372, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.if = load ptr, ptr %i.g, align 8
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 2
  store i8 1, ptr %i.ig, align 2
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ao, %bb.aq, %bb.ap, %.loopexit397.thread, %bb.an
  %.0305 = phi i32 [ 1, %.loopexit397.thread ], [ 15, %bb.ap ], [ 15, %bb.an ], [ 0, %bb.aq ], [ %i.hp, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  br label %.thread388

bb.as:                                            ; preds = %.thread476, %bb.f, %bb.e
  %i.ih = phi i64 [ %i.ae, %bb.f ], [ %i.ad, %bb.e ], [ %i.o, %.thread476 ]
  %i.ii = phi ptr [ %i.af, %bb.f ], [ %i.ac, %bb.e ], [ %i.n, %.thread476 ] ; 8 uses
  %i.ij = phi ptr [ %i.ag, %bb.f ], [ %i.ab, %bb.e ], [ %i.m, %.thread476 ] ; 4 uses
  %i.ik = phi i1 [ true, %bb.f ], [ false, %bb.e ], [ false, %.thread476 ]
  %i.il = icmp ult ptr %i.ii, %i.e
  br i1 %i.il, label %.lr.ph444, label %.thread505

.lr.ph444:                                        ; preds = %bb.as
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.io = add i64 %i.d, %i.b
  %i.ip = sub i64 %i.io, %i.ih
  %scevgep = getelementptr i8, ptr %i.ii, i64 %i.ip ; 3 uses
  br label %bb.at

bb.at:                                            ; preds = %.lr.ph444, %bb.av
  %.0307442 = phi ptr [ %i.ii, %.lr.ph444 ], [ %i.ir, %bb.av ] ; 18 uses
  %i.iq = load i8, ptr %.0307442, align 1         ; 2 uses
  switch i8 %i.iq, label %bb.aw [
    i8 32, label %.critedge26
    i8 9, label %.critedge26
    i8 10, label %.critedge26
    i8 13, label %.critedge26
  ]

.critedge26:                                      ; preds = %bb.at, %bb.at, %bb.at, %bb.at
  %i.ir = getelementptr inbounds nuw i8, ptr %.0307442, i64 1 ; 3 uses
  %i.is = icmp eq i8 %i.iq, 10
  br i1 %i.is, label %bb.au, label %bb.av

bb.au:                                            ; preds = %.critedge26
  %i.it = load i32, ptr %i.im, align 8
  %i.iu = add i32 %i.it, 1
  store i32 %i.iu, ptr %i.im, align 8
  store ptr %i.ir, ptr %i.in, align 8
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %.critedge26
  %exitcond455.not = icmp eq ptr %i.ir, %scevgep
  br i1 %exitcond455.not, label %.thread505, label %bb.at, !llvm.loop !23

bb.aw:                                            ; preds = %bb.at
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.0307442, ptr %i.iv, align 8
  %i.iw = load i8, ptr %.0307442, align 1
  switch i8 %i.iw, label %.preheader [
    i8 123, label %.sink.split
    i8 125, label %bb.ax
    i8 91, label %bb.ay
    i8 93, label %bb.az
    i8 44, label %bb.ba
    i8 58, label %bb.bb
    i8 34, label %bb.bc
    i8 45, label %bb.bd
    i8 48, label %bb.be
    i8 49, label %bb.be
    i8 50, label %bb.be
    i8 51, label %bb.be
    i8 52, label %bb.be
    i8 53, label %bb.be
    i8 54, label %bb.be
    i8 55, label %bb.be
    i8 56, label %bb.be
    i8 57, label %bb.be
  ]

.preheader:                                       ; preds = %bb.aw
  %i.ix = icmp ult ptr %.0307442, %i.e
  br i1 %i.ix, label %.lr.ph448, label %.critedge28.thread

bb.ax:                                            ; preds = %bb.aw
  br label %.sink.split

bb.ay:                                            ; preds = %bb.aw
  br label %.sink.split

bb.az:                                            ; preds = %bb.aw
  br label %.sink.split

bb.ba:                                            ; preds = %bb.aw
  br label %.sink.split

bb.bb:                                            ; preds = %bb.aw
  br label %.sink.split

bb.bc:                                            ; preds = %bb.aw
  %i.iy = tail call fastcc i32 @json_lex_string(ptr noundef nonnull %0) ; 2 uses
  %.not359 = icmp eq i32 %i.iy, 0
  br i1 %.not359, label %bb.bo, label %.thread388

bb.bd:                                            ; preds = %bb.aw
  %i.iz = getelementptr inbounds nuw i8, ptr %.0307442, i64 1
  %i.ja = tail call fastcc i32 @json_lex_number(ptr noundef nonnull %0, ptr noundef nonnull %i.iz, ptr noundef null, ptr noundef null) ; 2 uses
  %.not358 = icmp eq i32 %i.ja, 0
  br i1 %.not358, label %bb.bo, label %.thread388

bb.be:                                            ; preds = %bb.aw, %bb.aw, %bb.aw, %bb.aw, %bb.aw, %bb.aw, %bb.aw, %bb.aw, %bb.aw, %bb.aw
  %i.jb = tail call fastcc i32 @json_lex_number(ptr noundef nonnull %0, ptr noundef nonnull %.0307442, ptr noundef null, ptr noundef null) ; 2 uses
  %.not357 = icmp eq i32 %i.jb, 0
  br i1 %.not357, label %bb.bo, label %.thread388

.lr.ph448:                                        ; preds = %.preheader, %.critedge30
  %.0447 = phi ptr [ %i.jh, %.critedge30 ], [ %.0307442, %.preheader ] ; 3 uses
  %i.jc = load i8, ptr %.0447, align 1            ; 4 uses
  %i.jd = and i8 %i.jc, -33
  %i.je = add i8 %i.jd, -65
  %or.cond395 = icmp ult i8 %i.je, 26
  %i.jf = add i8 %i.jc, -48
  %or.cond381 = icmp ult i8 %i.jf, 10
  %or.cond396 = or i1 %or.cond381, %or.cond395
  br i1 %or.cond396, label %.critedge30, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph448
  %i.jg = icmp ne i8 %i.jc, 95
  %.not360 = icmp sgt i8 %i.jc, -1
  %or.cond382 = and i1 %i.jg, %.not360
  br i1 %or.cond382, label %.critedge28, label %.critedge30

.critedge30:                                      ; preds = %.lr.ph448, %bb.bf
  %i.jh = getelementptr inbounds nuw i8, ptr %.0447, i64 1 ; 2 uses
  %i.ji = icmp ult ptr %i.jh, %i.e
  br i1 %i.ji, label %.lr.ph448, label %.critedge28, !llvm.loop !24

.critedge28:                                      ; preds = %.critedge30, %bb.bf
  %.0.lcssa = phi ptr [ %.0447, %bb.bf ], [ %scevgep, %.critedge30 ] ; 4 uses
  %i.jj = icmp eq ptr %.0.lcssa, %.0307442
  br i1 %i.jj, label %.critedge28.thread, label %bb.bg

.critedge28.thread:                               ; preds = %.preheader, %.critedge28
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ii, ptr %i.jk, align 8
  %i.jl = getelementptr inbounds nuw i8, ptr %.0307442, i64 1
end_hunk_0
