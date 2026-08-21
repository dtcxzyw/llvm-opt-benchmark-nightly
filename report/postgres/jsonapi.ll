inline.NumInlined: 59
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@freeJsonLexContext:bb.a

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
  %.0319410 = phi i32 [ %i.as, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %2 = zext nneg i32 %.0318411 to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 %2
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = icmp eq i8 %i.aq, 92
  br i1 %i.ar, label %bb.i, label %._crit_edge

bb.i:                                             ; preds = %.lr.ph
  %i.as = add nuw nsw i32 %.0319410, 1            ; 2 uses
  %.0318 = add nsw i32 %.0318411, -1
  %exitcond.not = icmp eq i32 %i.as, %.0318409
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
  %i.bk = icmp eq i8 %i.ax, 34
  %i.bl = and i32 %.1320415, 1
  %i.bm = icmp eq i32 %i.bl, 0
  %or.cond374 = select i1 %i.bk, i1 %i.bm, i1 false
  br i1 %or.cond374, label %.thread394.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bn = icmp eq i8 %i.ax, 92
  %i.bo = add i32 %.1320415, 1
  %.2321 = select i1 %i.bn, i32 %i.bo, i32 0
  %i.bp = load i64, ptr %i.c, align 8
  %i.bq = icmp ult i64 %i.bj, %i.bp
  br i1 %i.bq, label %bb.j, label %.loopexit405.thread, !llvm.loop !14

bb.o:                                             ; preds = %bb.g
  %i.br = add i8 %i.an, -48
  %or.cond = icmp ult i8 %i.br, 10
  br i1 %or.cond, label %bb.p, label %.loopexit.sink.split

bb.p:                                             ; preds = %bb.g, %bb.o
  %i.bs = icmp sgt i32 %i.ak, 0
  br i1 %i.bs, label %iter.check, label %._crit_edge425

iter.check:                                       ; preds = %bb.p
  %wide.trip.count = zext nneg i32 %i.ak to i64   ; 6 uses
  %min.iters.check = icmp ult i32 %i.ak, 4
  br i1 %min.iters.check, label %.lr.ph424.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check533 = icmp ult i32 %i.ak, 32
  br i1 %min.iters.check533, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bt = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.ce, %vector.body ]
  %vec.phi534 = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.cf, %vector.body ]
  %vec.phi535 = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.cc, %vector.body ]
  %vec.phi536 = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.cd, %vector.body ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.am, i64 %index ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %wide.load = load <16 x i8>, ptr %i.bu, align 1 ; 2 uses
  %wide.load537 = load <16 x i8>, ptr %i.bv, align 1 ; 2 uses
  %i.bw = icmp eq <16 x i8> %wide.load, splat (i8 46)
  %i.bx = icmp eq <16 x i8> %wide.load537, splat (i8 46)
  %i.by = and <16 x i8> %wide.load, splat (i8 -33)
  %i.bz = and <16 x i8> %wide.load537, splat (i8 -33)
  %i.ca = icmp eq <16 x i8> %i.by, splat (i8 69)
  %i.cb = icmp eq <16 x i8> %i.bz, splat (i8 69)
  %i.cc = or <16 x i1> %vec.phi535, %i.bw         ; 2 uses
  %i.cd = or <16 x i1> %vec.phi536, %i.bx         ; 2 uses
  %i.ce = or <16 x i1> %vec.phi, %i.ca            ; 2 uses
  %i.cf = or <16 x i1> %vec.phi534, %i.cb         ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cg = icmp eq i64 %index.next, %n.vec
  br i1 %i.cg, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <16 x i1> %i.cf, %i.ce
  %bin.rdx.fr = freeze <16 x i1> %bin.rdx
  %i.ch = bitcast <16 x i1> %bin.rdx.fr to i16
  %.not552 = icmp ne i16 %i.ch, 0                 ; 2 uses
  %rdx.select = zext i1 %.not552 to i8            ; 2 uses
  %bin.rdx538 = or <16 x i1> %i.cd, %i.cc
  %bin.rdx538.fr = freeze <16 x i1> %bin.rdx538
  %i.ci = bitcast <16 x i1> %bin.rdx538.fr to i16
  %i.cj = icmp ne i16 %i.ci, 0                    ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge425, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bt, 0
  br i1 %min.epilog.iters.check, label %.lr.ph424.preheader, label %vec.epilog.ph, !prof !18

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %.not552, %vec.epilog.iter.check ], [ false, %vector.main.loop.iter.check ]
  %bc.merge.rdx539 = phi i1 [ %i.cj, %vec.epilog.iter.check ], [ false, %vector.main.loop.iter.check ]
  %n.vec540 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i1> poison, i1 %bc.merge.rdx, i64 0
  %broadcast.splat = shufflevector <4 x i1> %broadcast.splatinsert, <4 x i1> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert541 = insertelement <4 x i1> poison, i1 %bc.merge.rdx539, i64 0
  %broadcast.splat542 = shufflevector <4 x i1> %broadcast.splatinsert541, <4 x i1> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index543 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next547, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi544 = phi <4 x i1> [ %broadcast.splat, %vec.epilog.ph ], [ %i.cp, %vec.epilog.vector.body ]
  %vec.phi545 = phi <4 x i1> [ %broadcast.splat542, %vec.epilog.ph ], [ %i.co, %vec.epilog.vector.body ]
  %i.ck = getelementptr inbounds nuw i8, ptr %i.am, i64 %index543
  %wide.load546 = load <4 x i8>, ptr %i.ck, align 1
  %wide.load546.fr = freeze <4 x i8> %wide.load546 ; 2 uses
  %i.cl = icmp eq <4 x i8> %wide.load546.fr, splat (i8 46)
  %i.cm = and <4 x i8> %wide.load546.fr, splat (i8 -33)
  %i.cn = icmp eq <4 x i8> %i.cm, splat (i8 69)
  %i.co = or <4 x i1> %vec.phi545, %i.cl          ; 2 uses
  %i.cp = or <4 x i1> %vec.phi544, %i.cn          ; 2 uses
  %index.next547 = add nuw i64 %index543, 4       ; 2 uses
  %i.cq = icmp eq i64 %index.next547, %n.vec540
  br i1 %i.cq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !19

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.cr = bitcast <4 x i1> %i.cp to i4
  %.not555 = icmp ne i4 %i.cr, 0
  %rdx.select548 = zext i1 %.not555 to i8         ; 2 uses
  %i.cs = bitcast <4 x i1> %i.co to i4
  %i.ct = icmp ne i4 %i.cs, 0                     ; 2 uses
  %cmp.n549 = icmp eq i64 %n.vec540, %wide.trip.count
  br i1 %cmp.n549, label %._crit_edge425, label %.lr.ph424.preheader

.lr.ph424.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec540, %vec.epilog.middle.block ]
  %.0309421.ph = phi i8 [ 0, %iter.check ], [ %rdx.select, %vec.epilog.iter.check ], [ %rdx.select548, %vec.epilog.middle.block ]
  %.0311420.ph = phi i1 [ false, %iter.check ], [ %i.cj, %vec.epilog.iter.check ], [ %i.ct, %vec.epilog.middle.block ]
  br label %.lr.ph424

._crit_edge425:                                   ; preds = %.lr.ph424, %middle.block, %vec.epilog.middle.block, %bb.p
  %.0311.lcssa = phi i1 [ false, %bb.p ], [ %i.ct, %vec.epilog.middle.block ], [ %i.cj, %middle.block ], [ %.1312, %.lr.ph424 ]
  %.0309.lcssa = phi i8 [ 0, %bb.p ], [ %rdx.select548, %vec.epilog.middle.block ], [ %rdx.select, %middle.block ], [ %.1310, %.lr.ph424 ]
  %i.cu = load i64, ptr %i.c, align 8
  %i.cv = icmp eq i64 %i.cu, 0
  br i1 %i.cv, label %._crit_edge441.thread, label %.lr.ph435

.lr.ph435:                                        ; preds = %._crit_edge425
  %i.cw = add i32 %i.ak, -1
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds i8, ptr %i.am, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1
  %i.da = getelementptr inbounds nuw i8, ptr %i.ah, i64 20 ; 4 uses
  br label %bb.q

.lr.ph424:                                        ; preds = %.lr.ph424.preheader, %.lr.ph424
  %indvars.iv.a = phi i64 [ %indvars.iv.next.a, %.lr.ph424 ], [ %indvars.iv.ph, %.lr.ph424.preheader ] ; 2 uses
  %.0309421 = phi i8 [ %.1310, %.lr.ph424 ], [ %.0309421.ph, %.lr.ph424.preheader ]
  %.0311420 = phi i1 [ %.1312, %.lr.ph424 ], [ %.0311420.ph, %.lr.ph424.preheader ]
  %i.db = getelementptr inbounds nuw i8, ptr %i.am, i64 %indvars.iv.a
  %i.dc = load i8, ptr %i.db, align 1             ; 2 uses
  %i.dd = icmp eq i8 %i.dc, 46
  %i.de = and i8 %i.dc, -33
  %or.cond7.not = icmp eq i8 %i.de, 69
  %.1312 = select i1 %i.dd, i1 true, i1 %.0311420 ; 2 uses
  %.1310 = select i1 %or.cond7.not, i8 1, i8 %.0309421 ; 2 uses
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv.a, 1 ; 2 uses
  %exitcond461.not = icmp eq i64 %indvars.iv.next.a, %wide.trip.count
  br i1 %exitcond461.not, label %._crit_edge425, label %.lr.ph424, !llvm.loop !20

bb.q:                                             ; preds = %.lr.ph435, %bb.ag
  %.0306433 = phi i64 [ 0, %.lr.ph435 ], [ %i.ff, %bb.ag ] ; 2 uses
  %.0308432 = phi i8 [ %i.cz, %.lr.ph435 ], [ %i.fd, %bb.ag ]
  %.2431 = phi i8 [ %.0309.lcssa, %.lr.ph435 ], [ %.3500, %bb.ag ] ; 6 uses
  %.2313430 = phi i1 [ %.0311.lcssa, %.lr.ph435 ], [ %.3314498, %bb.ag ] ; 7 uses
end_hunk_0
