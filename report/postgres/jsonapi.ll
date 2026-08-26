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
  br i1 %i.f, label %.thread398, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 8 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.i = icmp eq ptr %i.h, @failed_inc_oom
  br i1 %i.i, label %.thread398, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.k = load i8, ptr %i.j, align 8, !range !4, !noundef !5
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.d, label %.thread488

.thread488:                                       ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = ptrtoaddr ptr %i.n to i64
  br label %bb.ar

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
  br i1 %i.aa, label %bb.f, label %bb.ar

bb.f:                                             ; preds = %.thread, %bb.e
  %i.ae = phi i64 [ %i.u, %.thread ], [ %i.ad, %bb.e ]
  %i.af = phi ptr [ %i.t, %.thread ], [ %i.ac, %bb.e ]
  %i.ag = phi ptr [ %i.s, %.thread ], [ %i.ab, %bb.e ] ; 3 uses
  %i.ah = load ptr, ptr %i.g, align 8             ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 21 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 22 uses
  %i.ak = load i32, ptr %i.aj, align 8            ; 7 uses
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %bb.ar, label %bb.g

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
  %.0318409 = add i32 %i.ak, -1                   ; 4 uses
  %i.ao = icmp sgt i32 %.0318409, 0
  br i1 %i.ao, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h, %bb.i
  %.0318411 = phi i32 [ %.0318, %bb.i ], [ %.0318409, %bb.h ] ; 2 uses
  %.0319410 = phi i32 [ %2, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %i.ap = zext nneg i32 %.0318411 to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = icmp eq i8 %i.ar, 92
  br i1 %i.as, label %bb.i, label %._crit_edge

bb.i:                                             ; preds = %.lr.ph
  %2 = add nuw nsw i32 %.0319410, 1               ; 2 uses
  %.0318 = add nsw i32 %.0318411, -1
  %exitcond.not = icmp eq i32 %2, %.0318409
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !13

._crit_edge:                                      ; preds = %bb.i, %.lr.ph, %bb.h
  %.0319.lcssa = phi i32 [ 0, %bb.h ], [ %.0319410, %.lr.ph ], [ %.0318409, %bb.i ]
  %i.at = load i64, ptr %i.c, align 8
  %.not457 = icmp eq i64 %i.at, 0
  br i1 %.not457, label %.loopexit405.thread, label %.lr.ph418

.lr.ph418:                                        ; preds = %._crit_edge
  %i.au = getelementptr inbounds nuw i8, ptr %i.ah, i64 20
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph418, %bb.n
  %.0317416 = phi i64 [ 0, %.lr.ph418 ], [ %i.bj, %bb.n ] ; 2 uses
  %.1320415 = phi i32 [ %.0319.lcssa, %.lr.ph418 ], [ %.2321, %bb.n ] ; 2 uses
  %i.av = load ptr, ptr %0, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %.0317416
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
  %i.bj = add nuw i64 %.0317416, 1                ; 3 uses
  %3 = icmp eq i8 %i.ax, 34
  %4 = and i32 %.1320415, 1
  %5 = icmp eq i32 %4, 0
  %or.cond374 = select i1 %3, i1 %5, i1 false
  br i1 %or.cond374, label %.thread394.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bk = icmp eq i8 %i.ax, 92
  %6 = add i32 %.1320415, 1
  %.2321 = select i1 %i.bk, i32 %6, i32 0
  %i.bl = load i64, ptr %i.c, align 8
  %i.bm = icmp ult i64 %i.bj, %i.bl
  br i1 %i.bm, label %bb.j, label %.loopexit405.thread, !llvm.loop !14

bb.o:                                             ; preds = %bb.g
  %i.bn = add i8 %i.an, -48
  %or.cond = icmp ult i8 %i.bn, 10
  br i1 %or.cond, label %bb.p, label %.loopexit.sink.split

bb.p:                                             ; preds = %bb.g, %bb.o
  %i.bo = icmp sgt i32 %i.ak, 0
  br i1 %i.bo, label %iter.check, label %._crit_edge425

iter.check:                                       ; preds = %bb.p
  %wide.trip.count = zext nneg i32 %i.ak to i64   ; 6 uses
  %min.iters.check = icmp ult i32 %i.ak, 4
  br i1 %min.iters.check, label %.lr.ph424.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check533 = icmp ult i32 %i.ak, 32
  br i1 %min.iters.check533, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bp = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.ca, %vector.body ]
  %vec.phi534 = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.cb, %vector.body ]
  %vec.phi535 = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.by, %vector.body ]
  %vec.phi536 = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.bz, %vector.body ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.am, i64 %index ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %wide.load = load <16 x i8>, ptr %i.bq, align 1 ; 2 uses
  %wide.load537 = load <16 x i8>, ptr %i.br, align 1 ; 2 uses
  %i.bs = icmp eq <16 x i8> %wide.load, splat (i8 46)
  %i.bt = icmp eq <16 x i8> %wide.load537, splat (i8 46)
  %i.bu = and <16 x i8> %wide.load, splat (i8 -33)
  %i.bv = and <16 x i8> %wide.load537, splat (i8 -33)
  %i.bw = icmp eq <16 x i8> %i.bu, splat (i8 69)
  %i.bx = icmp eq <16 x i8> %i.bv, splat (i8 69)
  %i.by = or <16 x i1> %vec.phi535, %i.bs         ; 2 uses
  %i.bz = or <16 x i1> %vec.phi536, %i.bt         ; 2 uses
  %i.ca = or <16 x i1> %vec.phi, %i.bw            ; 2 uses
  %i.cb = or <16 x i1> %vec.phi534, %i.bx         ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <16 x i1> %i.cb, %i.ca
  %bin.rdx.fr = freeze <16 x i1> %bin.rdx
  %i.cd = bitcast <16 x i1> %bin.rdx.fr to i16
  %.not552 = icmp ne i16 %i.cd, 0                 ; 2 uses
  %rdx.select = zext i1 %.not552 to i8            ; 2 uses
  %bin.rdx538 = or <16 x i1> %i.bz, %i.by
  %bin.rdx538.fr = freeze <16 x i1> %bin.rdx538
  %i.ce = bitcast <16 x i1> %bin.rdx538.fr to i16
  %i.cf = icmp ne i16 %i.ce, 0                    ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge425, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bp, 0
  br i1 %min.epilog.iters.check, label %.lr.ph424.preheader, label %vec.epilog.ph, !prof !18

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %.not552, %vec.epilog.iter.check ], [ false, %vector.main.loop.iter.check ]
  %bc.merge.rdx539 = phi i1 [ %i.cf, %vec.epilog.iter.check ], [ false, %vector.main.loop.iter.check ]
  %n.vec540 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i1> poison, i1 %bc.merge.rdx, i64 0
  %broadcast.splat = shufflevector <4 x i1> %broadcast.splatinsert, <4 x i1> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert541 = insertelement <4 x i1> poison, i1 %bc.merge.rdx539, i64 0
  %broadcast.splat542 = shufflevector <4 x i1> %broadcast.splatinsert541, <4 x i1> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index543 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next547, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi544 = phi <4 x i1> [ %broadcast.splat, %vec.epilog.ph ], [ %i.cl, %vec.epilog.vector.body ]
  %vec.phi545 = phi <4 x i1> [ %broadcast.splat542, %vec.epilog.ph ], [ %i.ck, %vec.epilog.vector.body ]
  %i.cg = getelementptr inbounds nuw i8, ptr %i.am, i64 %index543
  %wide.load546 = load <4 x i8>, ptr %i.cg, align 1
  %wide.load546.fr = freeze <4 x i8> %wide.load546 ; 2 uses
  %i.ch = icmp eq <4 x i8> %wide.load546.fr, splat (i8 46)
  %i.ci = and <4 x i8> %wide.load546.fr, splat (i8 -33)
  %i.cj = icmp eq <4 x i8> %i.ci, splat (i8 69)
  %i.ck = or <4 x i1> %vec.phi545, %i.ch          ; 2 uses
  %i.cl = or <4 x i1> %vec.phi544, %i.cj          ; 2 uses
  %index.next547 = add nuw i64 %index543, 4       ; 2 uses
  %i.cm = icmp eq i64 %index.next547, %n.vec540
  br i1 %i.cm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !19

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.cn = bitcast <4 x i1> %i.cl to i4
  %.not555 = icmp ne i4 %i.cn, 0
  %rdx.select548 = zext i1 %.not555 to i8         ; 2 uses
  %i.co = bitcast <4 x i1> %i.ck to i4
  %i.cp = icmp ne i4 %i.co, 0                     ; 2 uses
  %cmp.n549 = icmp eq i64 %n.vec540, %wide.trip.count
  br i1 %cmp.n549, label %._crit_edge425, label %.lr.ph424.preheader

.lr.ph424.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec540, %vec.epilog.middle.block ]
  %.0309421.ph = phi i8 [ 0, %iter.check ], [ %rdx.select, %vec.epilog.iter.check ], [ %rdx.select548, %vec.epilog.middle.block ]
  %.0311420.ph = phi i1 [ false, %iter.check ], [ %i.cf, %vec.epilog.iter.check ], [ %i.cp, %vec.epilog.middle.block ]
  br label %.lr.ph424

._crit_edge425:                                   ; preds = %.lr.ph424, %middle.block, %vec.epilog.middle.block, %bb.p
  %.0311.lcssa = phi i1 [ false, %bb.p ], [ %i.cp, %vec.epilog.middle.block ], [ %i.cf, %middle.block ], [ %.1312, %.lr.ph424 ]
  %.0309.lcssa = phi i8 [ 0, %bb.p ], [ %rdx.select548, %vec.epilog.middle.block ], [ %rdx.select, %middle.block ], [ %.1310, %.lr.ph424 ]
  %i.cq = load i64, ptr %i.c, align 8
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %._crit_edge441.thread, label %.lr.ph435.a

.lr.ph435.a:                                      ; preds = %._crit_edge425
  %i.cs = add i32 %i.ak, -1
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds i8, ptr %i.am, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ah, i64 20 ; 4 uses
  br label %bb.q

.lr.ph424:                                        ; preds = %.lr.ph424.preheader, %.lr.ph424
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph424 ], [ %indvars.iv.ph, %.lr.ph424.preheader ] ; 2 uses
  %.0309421 = phi i8 [ %.1310, %.lr.ph424 ], [ %.0309421.ph, %.lr.ph424.preheader ]
  %.0311420 = phi i1 [ %.1312, %.lr.ph424 ], [ %.0311420.ph, %.lr.ph424.preheader ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.am, i64 %indvars.iv
  %i.cy = load i8, ptr %i.cx, align 1             ; 2 uses
  %i.cz = icmp eq i8 %i.cy, 46
  %i.da = and i8 %i.cy, -33
  %or.cond7.not = icmp eq i8 %i.da, 69
  %.1312 = select i1 %i.cz, i1 true, i1 %.0311420 ; 2 uses
  %.1310 = select i1 %or.cond7.not, i8 1, i8 %.0309421 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond461.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond461.not, label %._crit_edge425, label %.lr.ph424, !llvm.loop !20

bb.q:                                             ; preds = %.lr.ph435.a, %bb.ag
  %.0306433.a = phi i64 [ 0, %.lr.ph435.a ], [ %i.fb, %bb.ag ] ; 2 uses
  %.0308432 = phi i8 [ %i.cv, %.lr.ph435.a ], [ %i.ez, %bb.ag ]
  %.2431 = phi i8 [ %.0309.lcssa, %.lr.ph435.a ], [ %.3500, %bb.ag ] ; 6 uses
  %.2313430 = phi i1 [ %.0311.lcssa, %.lr.ph435.a ], [ %.3314498, %bb.ag ] ; 7 uses
  %.2329429 = phi i64 [ 0, %.lr.ph435.a ], [ %i.fa, %bb.ag ] ; 5 uses
  %i.db = load ptr, ptr %0, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %.0306433.a
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
  %i.de = and i8 %.0308432, -33
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
  %i.dq = trunc nuw i8 %.2431 to i1
  %or.cond12 = select i1 %.2313430, i1 true, i1 %i.dq
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
  %i.ec = trunc nuw i8 %.2431 to i1
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
  %.3500 = phi i8 [ 0, %bb.x ], [ %.2431, %bb.t ], [ 1, %bb.ab ], [ %.2431, %bb.u ], [ 0, %bb.y ], [ 1, %bb.ac ], [ %.2431, %bb.af ], [ %.2431, %bb.ae ]
  %.3314498 = phi i1 [ true, %bb.x ], [ %.2313430, %bb.t ], [ %.2313430, %bb.ab ], [ %.2313430, %bb.u ], [ true, %bb.y ], [ %.2313430, %bb.ac ], [ %.2313430, %bb.af ], [ %.2313430, %bb.ae ]
  %i.ez = phi i8 [ 46, %bb.x ], [ %i.dd, %bb.t ], [ %i.dd, %bb.ab ], [ %i.dd, %bb.u ], [ 46, %bb.y ], [ %i.dd, %bb.ac ], [ %i.dd, %bb.af ], [ %i.dd, %bb.ae ]
  %i.fa = add i64 %.2329429, 1                    ; 2 uses
  %i.fb = add nuw i64 %.0306433.a, 1              ; 2 uses
  %i.fc = load i64, ptr %i.c, align 8             ; 2 uses
  %.not527 = icmp ult i64 %i.fb, %i.fc
  br i1 %.not527, label %bb.q, label %.loopexit, !llvm.loop !21

.loopexit.sink.split:                             ; preds = %bb.q, %bb.v, %bb.r, %bb.z, %bb.o
  %.4331.ph = phi i64 [ 0, %bb.o ], [ %.2329429, %bb.z ], [ %.2329429, %bb.r ], [ %.2329429, %bb.v ], [ %.2329429, %bb.q ]
  %i.fd = load i64, ptr %i.c, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ag, %.loopexit.sink.split
  %i.fe = phi i64 [ %i.fd, %.loopexit.sink.split ], [ %i.fc, %bb.ag ] ; 3 uses
  %.4331 = phi i64 [ %.4331.ph, %.loopexit.sink.split ], [ %i.fa, %bb.ag ] ; 3 uses
  %i.ff = icmp ult i64 %.4331, %i.fe
  br i1 %i.ff, label %.lr.ph440, label %._crit_edge441

.lr.ph440:                                        ; preds = %.loopexit
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ah, i64 20
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph440, %bb.am
  %i.fh = phi i64 [ %i.fe, %.lr.ph440 ], [ %i.gb, %bb.am ]
  %.0305438 = phi i64 [ %.4331, %.lr.ph440 ], [ %i.ga, %bb.am ] ; 3 uses
  %i.fi = load ptr, ptr %0, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 %.0305438
  %i.fk = load i8, ptr %i.fj, align 1             ; 6 uses
  %i.fl = and i8 %i.fk, -33
  %i.fm = add i8 %i.fl, -65
  %or.cond376 = icmp ult i8 %i.fm, 26
  br i1 %or.cond376, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fn = add i8 %i.fk, -58
  %or.cond21 = icmp ult i8 %i.fn, -10
  %i.fo = icmp ne i8 %i.fk, 95
  %or.cond24.not402 = and i1 %i.fo, %or.cond21
  %.not365 = icmp sgt i8 %i.fk, -1
  %or.cond377 = and i1 %.not365, %or.cond24.not402
  br i1 %or.cond377, label %._crit_edge441, label %bb.aj

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
  %i.ga = add nuw i64 %.0305438, 1                ; 3 uses
  %i.gb = load i64, ptr %i.c, align 8             ; 3 uses
  %i.gc = icmp ult i64 %i.ga, %i.gb
  br i1 %i.gc, label %bb.ah, label %._crit_edge441, !llvm.loop !22

._crit_edge441:                                   ; preds = %bb.am, %bb.ai, %.loopexit
  %i.gd = phi i64 [ %i.fe, %.loopexit ], [ %i.gb, %bb.am ], [ %i.fh, %bb.ai ] ; 3 uses
  %.5332.lcssa = phi i64 [ %.4331, %.loopexit ], [ %i.ga, %bb.am ], [ %.0305438, %bb.ai ] ; 2 uses
  %.5 = phi i8 [ 0, %.loopexit ], [ 0, %bb.am ], [ 1, %bb.ai ] ; 2 uses
  %i.ge = icmp eq i64 %.5332.lcssa, %i.gd
  br i1 %i.ge, label %._crit_edge441.thread, label %.loopexit405

._crit_edge441.thread:                            ; preds = %._crit_edge425, %._crit_edge441
  %.5513 = phi i8 [ %.5, %._crit_edge441 ], [ 0, %._crit_edge425 ]
  %i.gf = phi i64 [ %i.gd, %._crit_edge441 ], [ 0, %._crit_edge425 ] ; 2 uses
  %i.gg = load ptr, ptr %i.g, align 8
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 1
  %i.gi = load i8, ptr %i.gh, align 1, !range !4, !noundef !5
  %spec.select378 = or i8 %i.gi, %.5513
  br label %.loopexit405

.loopexit405:                                     ; preds = %._crit_edge441.thread, %._crit_edge441
  %7 = phi i64 [ %i.gd, %._crit_edge441 ], [ %i.gf, %._crit_edge441.thread ]
  %.8 = phi i64 [ %.5332.lcssa, %._crit_edge441 ], [ %i.gf, %._crit_edge441.thread ]
  %.7 = phi i8 [ %.5, %._crit_edge441 ], [ %spec.select378, %._crit_edge441.thread ]
  %i.gj = trunc nuw i8 %.7 to i1
  br i1 %i.gj, label %.thread394, label %.loopexit405.thread

.loopexit405.thread:                              ; preds = %bb.n, %._crit_edge, %.loopexit405
  %i.gk = load ptr, ptr %i.g, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 1
  %i.gm = load i8, ptr %i.gl, align 1, !range !4, !noundef !5
  %i.gn = trunc nuw i8 %i.gm to i1
  br i1 %i.gn, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %.loopexit405.thread
  %i.go = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.go, ptr %i.gp, align 8
  %i.gq = load i32, ptr %i.aj, align 8
  %i.gr = sext i32 %i.gq to i64
  %i.gs = getelementptr inbounds i8, ptr %i.go, i64 %i.gr
  store ptr %i.gs, ptr %i.ag, align 8
  br label %bb.aq

.thread394.loopexit:                              ; preds = %bb.m
  %.pre464 = load i64, ptr %i.c, align 8
  br label %.thread394

.thread394:                                       ; preds = %.thread394.loopexit, %.loopexit405
  %8 = phi i64 [ %7, %.loopexit405 ], [ %.pre464, %.thread394.loopexit ]
  %.8397 = phi i64 [ %.8, %.loopexit405 ], [ %i.bj, %.thread394.loopexit ] ; 2 uses
  %i.gt = load ptr, ptr %0, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 %.8397
  store ptr %i.gu, ptr %0, align 8
  %i.gv = sub i64 %8, %.8397
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
  br i1 %i.hz, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %.thread394
  %i.ia = ptrtoint ptr %i.hy to i64
  %i.ib = ptrtoint ptr %i.hw to i64
  %i.ic = sub i64 %i.ia, %i.ib
  %i.id = load i32, ptr %i.aj, align 8
  %i.ie = sext i32 %i.id to i64
  %.not372 = icmp eq i64 %i.ic, %i.ie
  br i1 %.not372, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.if = load ptr, ptr %i.g, align 8
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 2
  store i8 1, ptr %i.ig, align 2
  br label %bb.aq

bb.aq:                                            ; preds = %.thread394, %bb.ap, %bb.ao, %.loopexit405.thread, %bb.an
  %.0339 = phi i32 [ 1, %.loopexit405.thread ], [ 15, %bb.ao ], [ 15, %bb.an ], [ 0, %bb.ap ], [ %i.hp, %.thread394 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  br label %.thread398

bb.ar:                                            ; preds = %.thread488, %bb.f, %bb.e
  %i.ih = phi i64 [ %i.ae, %bb.f ], [ %i.ad, %bb.e ], [ %i.o, %.thread488 ]
  %i.ii = phi ptr [ %i.af, %bb.f ], [ %i.ac, %bb.e ], [ %i.n, %.thread488 ] ; 8 uses
  %i.ij = phi ptr [ %i.ag, %bb.f ], [ %i.ab, %bb.e ], [ %i.m, %.thread488 ] ; 4 uses
  %i.ik = phi i1 [ true, %bb.f ], [ false, %bb.e ], [ false, %.thread488 ]
  %i.il = icmp ult ptr %i.ii, %i.e
  br i1 %i.il, label %.lr.ph449, label %.thread517

.lr.ph449:                                        ; preds = %bb.ar
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.io = add i64 %i.d, %i.b
  %i.ip = sub i64 %i.io, %i.ih
  %scevgep = getelementptr i8, ptr %i.ii, i64 %i.ip ; 3 uses
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph449, %bb.au
  %.0338447 = phi ptr [ %i.ii, %.lr.ph449 ], [ %i.ir, %bb.au ] ; 18 uses
  %i.iq = load i8, ptr %.0338447, align 1         ; 2 uses
  switch i8 %i.iq, label %bb.av [
    i8 32, label %.critedge26
    i8 9, label %.critedge26
    i8 10, label %.critedge26
    i8 13, label %.critedge26
  ]

.critedge26:                                      ; preds = %bb.as, %bb.as, %bb.as, %bb.as
  %i.ir = getelementptr inbounds nuw i8, ptr %.0338447, i64 1 ; 3 uses
  %i.is = icmp eq i8 %i.iq, 10
  br i1 %i.is, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.critedge26
  %i.it = load i32, ptr %i.im, align 8
  %i.iu = add i32 %i.it, 1
  store i32 %i.iu, ptr %i.im, align 8
  store ptr %i.ir, ptr %i.in, align 8
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %.critedge26
  %exitcond462.not = icmp eq ptr %i.ir, %scevgep
  br i1 %exitcond462.not, label %.thread517, label %bb.as, !llvm.loop !23

bb.av:                                            ; preds = %bb.as
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.0338447, ptr %i.iv, align 8
  %i.iw = load i8, ptr %.0338447, align 1
  switch i8 %i.iw, label %.preheader [
    i8 123, label %.sink.split
    i8 125, label %bb.aw
    i8 91, label %bb.ax
    i8 93, label %bb.ay
    i8 44, label %bb.az
    i8 58, label %bb.ba
    i8 34, label %bb.bb
    i8 45, label %bb.bc
    i8 48, label %bb.bd
    i8 49, label %bb.bd
    i8 50, label %bb.bd
    i8 51, label %bb.bd
    i8 52, label %bb.bd
    i8 53, label %bb.bd
    i8 54, label %bb.bd
    i8 55, label %bb.bd
    i8 56, label %bb.bd
    i8 57, label %bb.bd
  ]

.preheader:                                       ; preds = %bb.av
  %i.ix = icmp ult ptr %.0338447, %i.e
  br i1 %i.ix, label %.lr.ph453, label %.critedge28.thread

bb.aw:                                            ; preds = %bb.av
  br label %.sink.split

bb.ax:                                            ; preds = %bb.av
  br label %.sink.split

bb.ay:                                            ; preds = %bb.av
  br label %.sink.split

bb.az:                                            ; preds = %bb.av
  br label %.sink.split

bb.ba:                                            ; preds = %bb.av
  br label %.sink.split

bb.bb:                                            ; preds = %bb.av
  %i.iy = tail call fastcc i32 @json_lex_string(ptr noundef nonnull %0) ; 2 uses
  %.not359 = icmp eq i32 %i.iy, 0
  br i1 %.not359, label %bb.bn, label %.thread398

bb.bc:                                            ; preds = %bb.av
  %i.iz = getelementptr inbounds nuw i8, ptr %.0338447, i64 1
  %i.ja = tail call fastcc i32 @json_lex_number(ptr noundef nonnull %0, ptr noundef nonnull %i.iz, ptr noundef null, ptr noundef null) ; 2 uses
  %.not358 = icmp eq i32 %i.ja, 0
  br i1 %.not358, label %bb.bn, label %.thread398

bb.bd:                                            ; preds = %bb.av, %bb.av, %bb.av, %bb.av, %bb.av, %bb.av, %bb.av, %bb.av, %bb.av, %bb.av
  %i.jb = tail call fastcc i32 @json_lex_number(ptr noundef nonnull %0, ptr noundef nonnull %.0338447, ptr noundef null, ptr noundef null) ; 2 uses
  %.not357 = icmp eq i32 %i.jb, 0
  br i1 %.not357, label %bb.bn, label %.thread398

.lr.ph453:                                        ; preds = %.preheader, %.critedge30
  %.0452 = phi ptr [ %i.jh, %.critedge30 ], [ %.0338447, %.preheader ] ; 3 uses
  %i.jc = load i8, ptr %.0452, align 1            ; 4 uses
  %i.jd = and i8 %i.jc, -33
  %i.je = add i8 %i.jd, -65
  %or.cond403 = icmp ult i8 %i.je, 26
  %i.jf = add i8 %i.jc, -48
  %or.cond381 = icmp ult i8 %i.jf, 10
  %or.cond404 = or i1 %or.cond381, %or.cond403
  br i1 %or.cond404, label %.critedge30, label %bb.be

bb.be:                                            ; preds = %.lr.ph453
  %i.jg = icmp ne i8 %i.jc, 95
  %.not360 = icmp sgt i8 %i.jc, -1
  %or.cond382 = and i1 %i.jg, %.not360
  br i1 %or.cond382, label %.critedge28, label %.critedge30

.critedge30:                                      ; preds = %.lr.ph453, %bb.be
  %i.jh = getelementptr inbounds nuw i8, ptr %.0452, i64 1 ; 2 uses
  %i.ji = icmp ult ptr %i.jh, %i.e
  br i1 %i.ji, label %.lr.ph453, label %.critedge28, !llvm.loop !24

.critedge28:                                      ; preds = %.critedge30, %bb.be
  %.0.lcssa = phi ptr [ %.0452, %bb.be ], [ %scevgep, %.critedge30 ] ; 4 uses
  %i.jj = icmp eq ptr %.0.lcssa, %.0338447
  br i1 %i.jj, label %.critedge28.thread, label %bb.bf

.critedge28.thread:                               ; preds = %.preheader, %.critedge28
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ii, ptr %i.jk, align 8
  %i.jl = getelementptr inbounds nuw i8, ptr %.0338447, i64 1
end_hunk_0
