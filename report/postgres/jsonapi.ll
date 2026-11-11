Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/jsonapi?download=true
inline.NumInlined: 59
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@freeJsonLexContext:bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 6 uses
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %.not50 = icmp eq ptr %i.u, null
  br i1 %.not50, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @pfree(ptr noundef nonnull %i.u) #8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.v = load i32, ptr %i.c, align 4
  %i.w = and i32 %i.v, 4
  %.not51 = icmp eq i32 %i.w, 0
  br i1 %.not51, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8              ; 2 uses
  %.not5260 = icmp slt i32 %i.y, 0
  br i1 %.not5260, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.m
  %i.z = phi i32 [ %i.ag, %bb.m ], [ %i.y, %.preheader ]
  %.061 = phi i32 [ %i.ah, %bb.m ], [ 0, %.preheader ] ; 2 uses
  %i.aa = load ptr, ptr %i.r, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = sext i32 %.061 to i64
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %.not59 = icmp eq ptr %i.af, null
  br i1 %.not59, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  tail call void @pfree(ptr noundef nonnull %i.af) #8
  %.pre = load i32, ptr %i.x, align 8
  br label %bb.m

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
  %2 = ptrtoaddr ptr %i.n to i64
  br label %bb.aq

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.p = load i8, ptr %i.o, align 2, !range !4, !noundef !5
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %3 = ptrtoaddr ptr %i.s to i64
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  tail call void @resetStringInfo(ptr noundef nonnull %i.t) #8
  %i.u = load ptr, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.u, ptr %i.v, align 8
  %i.w = load ptr, ptr %i.g, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  store i8 0, ptr %i.x, align 2
  %.pre = load i8, ptr %i.j, align 8, !range !4
  %i.y = trunc nuw i8 %.pre to i1
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8             ; 3 uses
  %4 = ptrtoaddr ptr %i.aa to i64                 ; 2 uses
  br i1 %i.y, label %bb.f, label %bb.aq

bb.f:                                             ; preds = %.thread, %bb.e
  %5 = phi i64 [ %3, %.thread ], [ %4, %bb.e ]
  %i.ab = phi ptr [ %i.s, %.thread ], [ %i.aa, %bb.e ]
  %i.ac = phi ptr [ %i.r, %.thread ], [ %i.z, %bb.e ] ; 3 uses
  %i.ad = load ptr, ptr %i.g, align 8             ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 21 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 22 uses
  %i.ag = load i32, ptr %i.af, align 8            ; 7 uses
  %.not = icmp eq i32 %i.ag, 0
  br i1 %.not, label %bb.aq, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ah, i8 0, i64 104, i1 false)
  %i.ai = load ptr, ptr %i.ae, align 8            ; 6 uses
  %i.aj = load i8, ptr %i.ai, align 1             ; 2 uses
  switch i8 %i.aj, label %bb.n [
    i8 34, label %.preheader406
    i8 45, label %bb.o
  ]

.preheader406:                                    ; preds = %bb.g
  %.0318409 = add i32 %i.ag, -1                   ; 4 uses
  %i.ak = icmp sgt i32 %.0318409, 0
  br i1 %i.ak, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader406, %bb.h
  %.0318411 = phi i32 [ %.0318, %bb.h ], [ %.0318409, %.preheader406 ] ; 2 uses
  %.0319410 = phi i32 [ %i.ap, %bb.h ], [ 0, %.preheader406 ] ; 2 uses
  %i.al = zext nneg i32 %.0318411 to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = icmp eq i8 %i.an, 92
  br i1 %i.ao, label %bb.h, label %._crit_edge

bb.h:                                             ; preds = %.lr.ph
  %i.ap = add nuw nsw i32 %.0319410, 1            ; 2 uses
  %.0318 = add nsw i32 %.0318411, -1
  %exitcond.not = icmp eq i32 %i.ap, %.0318409
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !13

._crit_edge:                                      ; preds = %bb.h, %.lr.ph, %.preheader406
  %.0319.lcssa = phi i32 [ 0, %.preheader406 ], [ %.0319410, %.lr.ph ], [ %.0318409, %bb.h ]
  %i.aq = load i64, ptr %i.c, align 8
  %.not456 = icmp eq i64 %i.aq, 0
  br i1 %.not456, label %.loopexit405.thread, label %.lr.ph418

.lr.ph418:                                        ; preds = %._crit_edge
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph418, %bb.m
  %.0317416 = phi i64 [ 0, %.lr.ph418 ], [ %i.bg, %bb.m ] ; 2 uses
  %.1320415 = phi i32 [ %.0319.lcssa, %.lr.ph418 ], [ %.2321, %bb.m ] ; 2 uses
  %i.as = load ptr, ptr %0, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %.0317416
  %i.au = load i8, ptr %i.at, align 1             ; 4 uses
  %i.av = load i32, ptr %i.af, align 8            ; 2 uses
  %i.aw = add i32 %i.av, 1
  %i.ax = load i32, ptr %i.ar, align 4
  %.not371 = icmp slt i32 %i.aw, %i.ax
  br i1 %.not371, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @appendStringInfoChar(ptr noundef nonnull %i.ae, i8 noundef signext %i.au) #8
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ay = load ptr, ptr %i.ae, align 8
  %i.az = sext i32 %i.av to i64
  %i.ba = getelementptr inbounds i8, ptr %i.ay, i64 %i.az
  store i8 %i.au, ptr %i.ba, align 1
  %i.bb = load ptr, ptr %i.ae, align 8
  %i.bc = load i32, ptr %i.af, align 8
  %i.bd = add i32 %i.bc, 1                        ; 2 uses
  store i32 %i.bd, ptr %i.af, align 8
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds i8, ptr %i.bb, i64 %i.be
  store i8 0, ptr %i.bf, align 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bg = add nuw i64 %.0317416, 1                ; 3 uses
  %i.bh = icmp eq i8 %i.au, 34
  %i.bi = and i32 %.1320415, 1
  %i.bj = icmp eq i32 %i.bi, 0
  %or.cond374 = select i1 %i.bh, i1 %i.bj, i1 false
  br i1 %or.cond374, label %.thread394.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bk = icmp eq i8 %i.au, 92
  %i.bl = add i32 %.1320415, 1
  %.2321 = select i1 %i.bk, i32 %i.bl, i32 0
  %i.bm = load i64, ptr %i.c, align 8
  %i.bn = icmp ult i64 %i.bg, %i.bm
  br i1 %i.bn, label %bb.i, label %.loopexit405.thread, !llvm.loop !14

bb.n:                                             ; preds = %bb.g
  %i.bo = add i8 %i.aj, -48
  %or.cond = icmp ult i8 %i.bo, 10
  br i1 %or.cond, label %bb.o, label %.loopexit.sink.split

bb.o:                                             ; preds = %bb.g, %bb.n
  %i.bp = icmp sgt i32 %i.ag, 0
  br i1 %i.bp, label %iter.check, label %._crit_edge425

iter.check:                                       ; preds = %bb.o
  %wide.trip.count = zext nneg i32 %i.ag to i64   ; 6 uses
  %min.iters.check = icmp ult i32 %i.ag, 4
  br i1 %min.iters.check, label %.lr.ph424.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check533 = icmp ult i32 %i.ag, 32
  br i1 %min.iters.check533, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bq = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.cb, %vector.body ]
  %vec.phi534 = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.cc, %vector.body ]
  %vec.phi535 = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.bz, %vector.body ]
  %vec.phi536 = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.ca, %vector.body ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.ai, i64 %index ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %wide.load = load <16 x i8>, ptr %i.br, align 1 ; 2 uses
  %wide.load537 = load <16 x i8>, ptr %i.bs, align 1 ; 2 uses
  %i.bt = icmp eq <16 x i8> %wide.load, splat (i8 46)
  %i.bu = icmp eq <16 x i8> %wide.load537, splat (i8 46)
  %i.bv = and <16 x i8> %wide.load, splat (i8 -33)
  %i.bw = and <16 x i8> %wide.load537, splat (i8 -33)
  %i.bx = icmp eq <16 x i8> %i.bv, splat (i8 69)
  %i.by = icmp eq <16 x i8> %i.bw, splat (i8 69)
  %i.bz = or <16 x i1> %vec.phi535, %i.bt         ; 2 uses
  %i.ca = or <16 x i1> %vec.phi536, %i.bu         ; 2 uses
  %i.cb = or <16 x i1> %vec.phi, %i.bx            ; 2 uses
  %i.cc = or <16 x i1> %vec.phi534, %i.by         ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cd = icmp eq i64 %index.next, %n.vec
  br i1 %i.cd, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <16 x i1> %i.cc, %i.cb
  %bin.rdx.fr = freeze <16 x i1> %bin.rdx
  %i.ce = bitcast <16 x i1> %bin.rdx.fr to i16
  %.not552 = icmp ne i16 %i.ce, 0                 ; 2 uses
  %rdx.select = zext i1 %.not552 to i8            ; 2 uses
  %bin.rdx538 = or <16 x i1> %i.ca, %i.bz
  %bin.rdx538.fr = freeze <16 x i1> %bin.rdx538
  %i.cf = bitcast <16 x i1> %bin.rdx538.fr to i16
  %i.cg = icmp ne i16 %i.cf, 0                    ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge425, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bq, 0
  br i1 %min.epilog.iters.check, label %.lr.ph424.preheader, label %vec.epilog.ph, !prof !24

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %.not552, %vec.epilog.iter.check ], [ false, %vector.main.loop.iter.check ]
  %bc.merge.rdx539 = phi i1 [ %i.cg, %vec.epilog.iter.check ], [ false, %vector.main.loop.iter.check ]
  %n.vec540 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i1> poison, i1 %bc.merge.rdx, i64 0
  %broadcast.splat = shufflevector <4 x i1> %broadcast.splatinsert, <4 x i1> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert541 = insertelement <4 x i1> poison, i1 %bc.merge.rdx539, i64 0
  %broadcast.splat542 = shufflevector <4 x i1> %broadcast.splatinsert541, <4 x i1> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index543 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next547, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi544 = phi <4 x i1> [ %broadcast.splat, %vec.epilog.ph ], [ %i.cm, %vec.epilog.vector.body ]
  %vec.phi545 = phi <4 x i1> [ %broadcast.splat542, %vec.epilog.ph ], [ %i.cl, %vec.epilog.vector.body ]
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ai, i64 %index543
  %wide.load546 = load <4 x i8>, ptr %i.ch, align 1
  %wide.load546.fr = freeze <4 x i8> %wide.load546 ; 2 uses
  %i.ci = icmp eq <4 x i8> %wide.load546.fr, splat (i8 46)
  %i.cj = and <4 x i8> %wide.load546.fr, splat (i8 -33)
  %i.ck = icmp eq <4 x i8> %i.cj, splat (i8 69)
  %i.cl = or <4 x i1> %vec.phi545, %i.ci          ; 2 uses
  %i.cm = or <4 x i1> %vec.phi544, %i.ck          ; 2 uses
  %index.next547 = add nuw i64 %index543, 4       ; 2 uses
  %i.cn = icmp eq i64 %index.next547, %n.vec540
  br i1 %i.cn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !16

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.co = bitcast <4 x i1> %i.cm to i4
  %.not555 = icmp ne i4 %i.co, 0
  %rdx.select548 = zext i1 %.not555 to i8         ; 2 uses
  %i.cp = bitcast <4 x i1> %i.cl to i4
  %i.cq = icmp ne i4 %i.cp, 0                     ; 2 uses
  %cmp.n549 = icmp eq i64 %n.vec540, %wide.trip.count
  br i1 %cmp.n549, label %._crit_edge425, label %.lr.ph424.preheader

.lr.ph424.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec540, %vec.epilog.middle.block ]
  %.0309421.ph = phi i8 [ 0, %iter.check ], [ %rdx.select, %vec.epilog.iter.check ], [ %rdx.select548, %vec.epilog.middle.block ]
  %.0311420.ph = phi i1 [ false, %iter.check ], [ %i.cg, %vec.epilog.iter.check ], [ %i.cq, %vec.epilog.middle.block ]
end_hunk_0
begin_hunk_1_@json_lex:bb.a
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr inbounds i8, ptr %i.ev, i64 %i.ey
  store i8 0, ptr %i.ez, align 1
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae, %bb.aa, %bb.ab, %bb.w, %bb.x, %bb.s, %bb.t
  %.3500 = phi i8 [ 0, %bb.w ], [ %.2430, %bb.s ], [ 1, %bb.aa ], [ %.2430, %bb.t ], [ 0, %bb.x ], [ 1, %bb.ab ], [ %.2430, %bb.ae ], [ %.2430, %bb.ad ]
  %.3314498 = phi i1 [ true, %bb.w ], [ %.2313429, %bb.s ], [ %.2313429, %bb.aa ], [ %.2313429, %bb.t ], [ true, %bb.x ], [ %.2313429, %bb.ab ], [ %.2313429, %bb.ae ], [ %.2313429, %bb.ad ]
  %i.fa = phi i8 [ 46, %bb.w ], [ %i.de, %bb.s ], [ %i.de, %bb.aa ], [ %i.de, %bb.t ], [ 46, %bb.x ], [ %i.de, %bb.ab ], [ %i.de, %bb.ae ], [ %i.de, %bb.ad ]
  %i.fb = add i64 %.2329428, 1                    ; 2 uses
  %i.fc = add nuw i64 %.0306432, 1                ; 2 uses
  %i.fd = load i64, ptr %i.c, align 8             ; 2 uses
  %.not527 = icmp ult i64 %i.fc, %i.fd
  br i1 %.not527, label %bb.p, label %.loopexit, !llvm.loop !18

.loopexit.sink.split:                             ; preds = %bb.p, %bb.u, %bb.q, %bb.y, %bb.n
  %.4331.ph = phi i64 [ 0, %bb.n ], [ %.2329428, %bb.y ], [ %.2329428, %bb.q ], [ %.2329428, %bb.u ], [ %.2329428, %bb.p ]
  %i.fe = load i64, ptr %i.c, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.af, %.loopexit.sink.split
  %i.ff = phi i64 [ %i.fe, %.loopexit.sink.split ], [ %i.fd, %bb.af ] ; 3 uses
  %.4331 = phi i64 [ %.4331.ph, %.loopexit.sink.split ], [ %i.fb, %bb.af ] ; 3 uses
  %i.fg = icmp ult i64 %.4331, %i.ff
  br i1 %i.fg, label %.lr.ph439, label %._crit_edge440

.lr.ph439:                                        ; preds = %.loopexit
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph439, %bb.al
  %i.fi = phi i64 [ %i.ff, %.lr.ph439 ], [ %i.gc, %bb.al ]
  %.0305437 = phi i64 [ %.4331, %.lr.ph439 ], [ %i.gb, %bb.al ] ; 3 uses
  %i.fj = load ptr, ptr %0, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 %.0305437
  %i.fl = load i8, ptr %i.fk, align 1             ; 6 uses
  %i.fm = and i8 %i.fl, -33
  %i.fn = add i8 %i.fm, -65
  %or.cond376 = icmp ult i8 %i.fn, 26
  br i1 %or.cond376, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fo = add i8 %i.fl, -58
  %or.cond21 = icmp ult i8 %i.fo, -10
  %i.fp = icmp ne i8 %i.fl, 95
  %or.cond24.not402 = and i1 %i.fp, %or.cond21
  %.not365 = icmp sgt i8 %i.fl, -1
  %or.cond377 = and i1 %.not365, %or.cond24.not402
  br i1 %or.cond377, label %._crit_edge440, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.fq = load i32, ptr %i.af, align 8            ; 2 uses
  %i.fr = add i32 %i.fq, 1
  %i.fs = load i32, ptr %i.fh, align 4
  %.not366 = icmp slt i32 %i.fr, %i.fs
  br i1 %.not366, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @appendStringInfoChar(ptr noundef nonnull %i.ae, i8 noundef signext %i.fl) #8
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.ft = load ptr, ptr %i.ae, align 8
  %i.fu = sext i32 %i.fq to i64
  %i.fv = getelementptr inbounds i8, ptr %i.ft, i64 %i.fu
  store i8 %i.fl, ptr %i.fv, align 1
  %i.fw = load ptr, ptr %i.ae, align 8
  %i.fx = load i32, ptr %i.af, align 8
  %i.fy = add i32 %i.fx, 1                        ; 2 uses
  store i32 %i.fy, ptr %i.af, align 8
  %i.fz = sext i32 %i.fy to i64
  %i.ga = getelementptr inbounds i8, ptr %i.fw, i64 %i.fz
  store i8 0, ptr %i.ga, align 1
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak
  %i.gb = add nuw i64 %.0305437, 1                ; 3 uses
  %i.gc = load i64, ptr %i.c, align 8             ; 3 uses
  %i.gd = icmp ult i64 %i.gb, %i.gc
  br i1 %i.gd, label %bb.ag, label %._crit_edge440, !llvm.loop !19

._crit_edge440:                                   ; preds = %bb.al, %bb.ah, %.loopexit
  %i.ge = phi i64 [ %i.ff, %.loopexit ], [ %i.gc, %bb.al ], [ %i.fi, %bb.ah ] ; 3 uses
  %.5332.lcssa = phi i64 [ %.4331, %.loopexit ], [ %i.gb, %bb.al ], [ %.0305437, %bb.ah ] ; 2 uses
  %.5 = phi i8 [ 0, %.loopexit ], [ 0, %bb.al ], [ 1, %bb.ah ] ; 2 uses
  %i.gf = icmp eq i64 %.5332.lcssa, %i.ge
  br i1 %i.gf, label %._crit_edge440.thread, label %.loopexit405

._crit_edge440.thread:                            ; preds = %._crit_edge425, %._crit_edge440
  %.5513 = phi i8 [ %.5, %._crit_edge440 ], [ 0, %._crit_edge425 ]
  %i.gg = phi i64 [ %i.ge, %._crit_edge440 ], [ 0, %._crit_edge425 ] ; 2 uses
  %i.gh = load ptr, ptr %i.g, align 8
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 1
  %i.gj = load i8, ptr %i.gi, align 1, !range !4, !noundef !5
  %spec.select378 = or i8 %i.gj, %.5513
  br label %.loopexit405

.loopexit405:                                     ; preds = %._crit_edge440.thread, %._crit_edge440
  %i.gk = phi i64 [ %i.ge, %._crit_edge440 ], [ %i.gg, %._crit_edge440.thread ]
  %.8 = phi i64 [ %.5332.lcssa, %._crit_edge440 ], [ %i.gg, %._crit_edge440.thread ]
  %.7 = phi i8 [ %.5, %._crit_edge440 ], [ %spec.select378, %._crit_edge440.thread ]
  %i.gl = trunc nuw i8 %.7 to i1
  br i1 %i.gl, label %.thread394, label %.loopexit405.thread

.loopexit405.thread:                              ; preds = %bb.m, %._crit_edge, %.loopexit405
  %i.gm = load ptr, ptr %i.g, align 8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 1
  %i.go = load i8, ptr %i.gn, align 1, !range !4, !noundef !5
  %i.gp = trunc nuw i8 %i.go to i1
  br i1 %i.gp, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %.loopexit405.thread
  %i.gq = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.gq, ptr %i.gr, align 8
  %i.gs = load i32, ptr %i.af, align 8
  %i.gt = sext i32 %i.gs to i64
  %i.gu = getelementptr inbounds i8, ptr %i.gq, i64 %i.gt
  store ptr %i.gu, ptr %i.ac, align 8
  br label %bb.ap

.thread394.loopexit:                              ; preds = %bb.l
  %.pre464 = load i64, ptr %i.c, align 8
  br label %.thread394

.thread394:                                       ; preds = %.thread394.loopexit, %.loopexit405
  %i.gv = phi i64 [ %i.gk, %.loopexit405 ], [ %.pre464, %.thread394.loopexit ]
  %.8397 = phi i64 [ %.8, %.loopexit405 ], [ %i.bg, %.thread394.loopexit ] ; 2 uses
  %i.gw = load ptr, ptr %0, align 8
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 %.8397
  store ptr %i.gx, ptr %0, align 8
  %i.gy = sub i64 %i.gv, %.8397
  store i64 %i.gy, ptr %i.c, align 8
  %i.gz = load ptr, ptr %i.ae, align 8            ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr %i.gz, ptr %i.ha, align 8
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  store ptr %i.gz, ptr %i.hb, align 8
  store ptr %i.gz, ptr %1, align 8
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.hd = load i32, ptr %i.hc, align 8
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  store i32 %i.hd, ptr %i.he, align 8
  %i.hf = load i32, ptr %i.af, align 8
  %i.hg = sext i32 %i.hf to i64
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.hg, ptr %i.hh, align 8
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hj = load i32, ptr %i.hi, align 8
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.hj, ptr %i.hk, align 8
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i8 0, ptr %i.hl, align 8
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.hn = load i8, ptr %i.hm, align 8, !range !4, !noundef !5
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i8 %i.hn, ptr %i.ho, align 8
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.hq = load ptr, ptr %i.hp, align 8
  %i.hr = getelementptr inbounds nuw i8, ptr %1, i64 104
  store ptr %i.hq, ptr %i.hr, align 8
  %i.hs = call i32 @json_lex(ptr noundef nonnull %1) ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.hu = load i32, ptr %i.ht, align 4
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.hu, ptr %i.hv, align 4
  %i.hw = load i32, ptr %i.he, align 8
  store i32 %i.hw, ptr %i.hc, align 8
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.hx, align 8
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.hz = load ptr, ptr %i.hy, align 8            ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.hz, ptr %i.ia, align 8
  %i.ib = load ptr, ptr %i.hb, align 8            ; 2 uses
  store ptr %i.ib, ptr %i.ac, align 8
  %i.ic = icmp eq i32 %i.hs, 0
  br i1 %i.ic, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %.thread394
  %i.id = ptrtoint ptr %i.ib to i64
  %i.ie = ptrtoint ptr %i.hz to i64
  %i.if = sub i64 %i.id, %i.ie
  %i.ig = load i32, ptr %i.af, align 8
  %i.ih = sext i32 %i.ig to i64
  %.not372 = icmp eq i64 %i.if, %i.ih
  br i1 %.not372, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.ii = load ptr, ptr %i.g, align 8
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 2
  store i8 1, ptr %i.ij, align 2
  br label %bb.ap

bb.ap:                                            ; preds = %.thread394, %bb.ao, %bb.an, %.loopexit405.thread, %bb.am
  %.0339 = phi i32 [ 1, %.loopexit405.thread ], [ 15, %bb.an ], [ 15, %bb.am ], [ 0, %bb.ao ], [ %i.hs, %.thread394 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  br label %.thread398

bb.aq:                                            ; preds = %.thread488, %bb.f, %bb.e
  %6 = phi i64 [ %5, %bb.f ], [ %4, %bb.e ], [ %2, %.thread488 ]
  %i.ik = phi ptr [ %i.ab, %bb.f ], [ %i.aa, %bb.e ], [ %i.n, %.thread488 ] ; 8 uses
  %i.il = phi ptr [ %i.ac, %bb.f ], [ %i.z, %bb.e ], [ %i.m, %.thread488 ] ; 4 uses
  %i.im = phi i1 [ true, %bb.f ], [ false, %bb.e ], [ false, %.thread488 ]
  %i.in = icmp ult ptr %i.ik, %i.e
  br i1 %i.in, label %.lr.ph448, label %.thread517

.lr.ph448:                                        ; preds = %bb.aq
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.iq = add i64 %i.d, %i.b
  %i.ir = sub i64 %i.iq, %6
  %scevgep = getelementptr i8, ptr %i.ik, i64 %i.ir ; 3 uses
  br label %bb.ar

bb.ar:                                            ; preds = %.lr.ph448, %bb.at
  %.0338446 = phi ptr [ %i.ik, %.lr.ph448 ], [ %i.it, %bb.at ] ; 18 uses
  %i.is = load i8, ptr %.0338446, align 1         ; 2 uses
  switch i8 %i.is, label %bb.au [
    i8 32, label %.critedge26
    i8 9, label %.critedge26
    i8 10, label %.critedge26
    i8 13, label %.critedge26
  ]

.critedge26:                                      ; preds = %bb.ar, %bb.ar, %bb.ar, %bb.ar
  %i.it = getelementptr inbounds nuw i8, ptr %.0338446, i64 1 ; 3 uses
  %i.iu = icmp eq i8 %i.is, 10
  br i1 %i.iu, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.critedge26
  %i.iv = load i32, ptr %i.io, align 8
  %i.iw = add i32 %i.iv, 1
  store i32 %i.iw, ptr %i.io, align 8
  store ptr %i.it, ptr %i.ip, align 8
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %.critedge26
  %exitcond461.not = icmp eq ptr %i.it, %scevgep
  br i1 %exitcond461.not, label %.thread517, label %bb.ar, !llvm.loop !20

bb.au:                                            ; preds = %bb.ar
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.0338446, ptr %i.ix, align 8
  %i.iy = load i8, ptr %.0338446, align 1
  switch i8 %i.iy, label %.preheader [
    i8 123, label %.sink.split
    i8 125, label %bb.av
    i8 91, label %bb.aw
    i8 93, label %bb.ax
    i8 44, label %bb.ay
    i8 58, label %bb.az
    i8 34, label %bb.ba
    i8 45, label %bb.bb
    i8 48, label %bb.bc
    i8 49, label %bb.bc
    i8 50, label %bb.bc
    i8 51, label %bb.bc
    i8 52, label %bb.bc
    i8 53, label %bb.bc
    i8 54, label %bb.bc
    i8 55, label %bb.bc
    i8 56, label %bb.bc
    i8 57, label %bb.bc
  ]

.preheader:                                       ; preds = %bb.au
  %i.iz = icmp ult ptr %.0338446, %i.e
  br i1 %i.iz, label %.lr.ph452, label %.critedge28.thread

bb.av:                                            ; preds = %bb.au
  br label %.sink.split

bb.aw:                                            ; preds = %bb.au
  br label %.sink.split

bb.ax:                                            ; preds = %bb.au
  br label %.sink.split

bb.ay:                                            ; preds = %bb.au
  br label %.sink.split

bb.az:                                            ; preds = %bb.au
  br label %.sink.split

bb.ba:                                            ; preds = %bb.au
  %i.ja = tail call fastcc i32 @json_lex_string(ptr noundef nonnull %0) ; 2 uses
  %.not359 = icmp eq i32 %i.ja, 0
  br i1 %.not359, label %bb.bm, label %.thread398

bb.bb:                                            ; preds = %bb.au
  %i.jb = getelementptr inbounds nuw i8, ptr %.0338446, i64 1
  %i.jc = tail call fastcc i32 @json_lex_number(ptr noundef nonnull %0, ptr noundef nonnull %i.jb, ptr noundef null, ptr noundef null) ; 2 uses
  %.not358 = icmp eq i32 %i.jc, 0
  br i1 %.not358, label %bb.bm, label %.thread398

bb.bc:                                            ; preds = %bb.au, %bb.au, %bb.au, %bb.au, %bb.au, %bb.au, %bb.au, %bb.au, %bb.au, %bb.au
  %i.jd = tail call fastcc i32 @json_lex_number(ptr noundef nonnull %0, ptr noundef nonnull %.0338446, ptr noundef null, ptr noundef null) ; 2 uses
  %.not357 = icmp eq i32 %i.jd, 0
  br i1 %.not357, label %bb.bm, label %.thread398

.lr.ph452:                                        ; preds = %.preheader, %.critedge30
  %.0451 = phi ptr [ %i.jj, %.critedge30 ], [ %.0338446, %.preheader ] ; 3 uses
  %i.je = load i8, ptr %.0451, align 1            ; 4 uses
  %i.jf = and i8 %i.je, -33
  %i.jg = add i8 %i.jf, -65
  %or.cond403 = icmp ult i8 %i.jg, 26
  %i.jh = add i8 %i.je, -48
  %or.cond381 = icmp ult i8 %i.jh, 10
  %or.cond404 = or i1 %or.cond381, %or.cond403
  br i1 %or.cond404, label %.critedge30, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph452
  %i.ji = icmp ne i8 %i.je, 95
  %.not360 = icmp sgt i8 %i.je, -1
  %or.cond382 = and i1 %i.ji, %.not360
  br i1 %or.cond382, label %.critedge28, label %.critedge30

.critedge30:                                      ; preds = %.lr.ph452, %bb.bd
  %i.jj = getelementptr inbounds nuw i8, ptr %.0451, i64 1 ; 2 uses
  %i.jk = icmp ult ptr %i.jj, %i.e
  br i1 %i.jk, label %.lr.ph452, label %.critedge28, !llvm.loop !21

.critedge28:                                      ; preds = %.critedge30, %bb.bd
  %.0.lcssa = phi ptr [ %.0451, %bb.bd ], [ %scevgep, %.critedge30 ] ; 4 uses
  %i.jl = icmp eq ptr %.0.lcssa, %.0338446
  br i1 %i.jl, label %.critedge28.thread, label %bb.be

.critedge28.thread:                               ; preds = %.preheader, %.critedge28
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ik, ptr %i.jm, align 8
  %i.jn = getelementptr inbounds nuw i8, ptr %.0338446, i64 1
  store ptr %i.jn, ptr %i.il, align 8
  br label %.thread398

bb.be:                                            ; preds = %.critedge28
  br i1 %i.im, label %bb.bf, label %bb.bi

bb.bf:                                            ; preds = %bb.be
  %i.jo = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 1
  %i.jq = load i8, ptr %i.jp, align 1, !range !4, !noundef !5
  %i.jr = trunc nuw i8 %i.jq to i1
  br i1 %i.jr, label %bb.bi, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.js = load ptr, ptr %0, align 8
  %i.jt = load i64, ptr %i.c, align 8
  %i.ju = getelementptr inbounds nuw i8, ptr %i.js, i64 %i.jt
  %i.jv = icmp eq ptr %.0.lcssa, %i.ju
  br i1 %i.jv, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  %i.jx = ptrtoint ptr %i.e to i64
  %i.jy = ptrtoint ptr %.0338446 to i64
  %i.jz = sub i64 %i.jx, %i.jy
  %i.ka = trunc i64 %i.jz to i32
  tail call void @appendBinaryStringInfo(ptr noundef nonnull %i.jw, ptr noundef nonnull %.0338446, i32 noundef %i.ka) #8
  br label %.thread398

bb.bi:                                            ; preds = %bb.bg, %bb.bf, %bb.be
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ik, ptr %i.kb, align 8
  store ptr %.0.lcssa, ptr %i.il, align 8
  %i.kc = ptrtoint ptr %.0.lcssa to i64
  %i.kd = ptrtoint ptr %.0338446 to i64
  %i.ke = sub i64 %i.kc, %i.kd
  switch i64 %i.ke, label %.thread398 [
    i64 4, label %bb.bj
    i64 5, label %bb.bl
  ]

bb.bj:                                            ; preds = %bb.bi
  %i.kf = load i32, ptr %.0338446, align 1
  %i.kg = icmp ne i32 %i.kf, 1702195828
  %i.kh = zext i1 %i.kg to i32
  %i.ki = icmp eq i32 %i.kh, 0
  br i1 %i.ki, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.kj = load i32, ptr %.0338446, align 1
  %i.kk = icmp ne i32 %i.kj, 1819047278
  %i.kl = zext i1 %i.kk to i32
  %i.km = icmp eq i32 %i.kl, 0
  br i1 %i.km, label %bb.bm, label %.thread398

bb.bl:                                            ; preds = %bb.bi
  %i.kn = load i32, ptr %.0338446, align 1
  %i.ko = xor i32 %i.kn, 1936482662
  %i.kp = getelementptr i8, ptr %.0338446, i64 4
  %i.kq = load i8, ptr %i.kp, align 1
  %i.kr = zext i8 %i.kq to i32
  %i.ks = xor i32 %i.kr, 101
  %i.kt = or i32 %i.ko, %i.ks
  %i.ku = icmp ne i32 %i.kt, 0
  %i.kv = zext i1 %i.ku to i32
  %i.kw = icmp eq i32 %i.kv, 0
  br i1 %i.kw, label %bb.bm, label %.thread398

.sink.split:                                      ; preds = %bb.au, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av
  %.sink.ph = phi i32 [ 8, %bb.az ], [ 7, %bb.ay ], [ 6, %bb.ax ], [ 5, %bb.aw ], [ 4, %bb.av ], [ 3, %bb.au ]
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ik, ptr %i.kx, align 8
  %i.ky = getelementptr inbounds nuw i8, ptr %.0338446, i64 1
  store ptr %i.ky, ptr %i.il, align 8
  br label %bb.bm

bb.bm:                                            ; preds = %.sink.split, %bb.bl, %bb.bk, %bb.bj, %bb.bc, %bb.bb, %bb.ba
  %.sink = phi i32 [ 2, %bb.bc ], [ 9, %bb.bj ], [ 11, %bb.bk ], [ 2, %bb.bb ], [ 1, %bb.ba ], [ 10, %bb.bl ], [ %.sink.ph, %.sink.split ]
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %.sink, ptr %i.kz, align 4
end_hunk_1
