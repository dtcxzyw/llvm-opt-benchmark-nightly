Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/adc?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [55 x i8] c"adc_decompress: avail_in %llu avail_out %llu state %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"adc_decompress: bad LOOKBACK offset %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"adc_decompress: too large LOOKBACK offset %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"adc_decompress: invalid state %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"adc_decompress: stream ended mid-phrase, state %u\0A\00", align 1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) uwtable
define range(i32 -3, 1) i32 @adc_decompressInit(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.c = load i16, ptr %i.b, align 4, !tbaa !13
  %.not = icmp eq i16 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noalias dereferenceable_or_null(65536) ptr @calloc(i64 noundef 65536, i64 noundef 1) #7 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.d, ptr %i.e, align 8, !tbaa !14
  %i.f = icmp eq ptr %i.d, null
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %i.g, align 8, !tbaa !15
  store i16 1, ptr %i.b, align 4, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 70
  store i16 0, ptr %i.h, align 2, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.i, align 8, !tbaa !17
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.d, ptr %i.j, align 8, !tbaa !18
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ -3, %bb.a ], [ -2, %bb.b ], [ -1, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define range(i32 -3, 2) i32 @adc_decompress(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !19
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 12 uses
  %i.h = load i16, ptr %i.g, align 4, !tbaa !13   ; 2 uses
  %i.i = icmp eq i16 %i.h, 0
  br i1 %i.i, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = zext i16 %i.h to i32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 13 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 9 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !22
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str, i64 noundef %i.l, i64 noundef %i.n, i32 noundef %i.j) #8
  %i.o = load i64, ptr %i.m, align 8, !tbaa !22
  %.not162 = icmp eq i64 %i.o, 0
  br i1 %.not162, label %.thread, label %.lr.ph164

.lr.ph164:                                        ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 70 ; 9 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 9 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph164, %bb.ai
  %.not139163 = phi i1 [ false, %.lr.ph164 ], [ true, %bb.ai ]
  %i.u = load i16, ptr %i.g, align 4, !tbaa !13   ; 3 uses
  %i.v = and i16 %i.u, -2
  %switch = icmp eq i16 %i.v, 6
  br i1 %switch, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = load i64, ptr %i.k, align 8, !tbaa !21
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %.thread143, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  switch i16 %i.u, label %bb.ah [
    i16 1, label %bb.i
    i16 4, label %bb.n
    i16 5, label %bb.o
    i16 3, label %bb.p
    i16 2, label %.preheader
    i16 6, label %.lr.ph.preheader
    i16 7, label %.lr.ph.preheader
  ]

.preheader:                                       ; preds = %bb.h
  %i.y = load i64, ptr %i.k, align 8, !tbaa !21   ; 2 uses
  %.not132158 = icmp eq i64 %i.y, 0
  br i1 %.not132158, label %.critedgethread-pre-split, label %.lr.ph159

bb.i:                                             ; preds = %bb.h
  %i.z = load ptr, ptr %0, align 8, !tbaa !19     ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !23   ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  store ptr %i.ab, ptr %0, align 8, !tbaa !19
  %i.ac = load i64, ptr %i.k, align 8, !tbaa !21
  %i.ad = add i64 %i.ac, -1
  store i64 %i.ad, ptr %i.k, align 8, !tbaa !21
  %i.ae = zext i8 %i.aa to i32                    ; 2 uses
  %.not136 = icmp sgt i8 %i.aa, -1
  br i1 %.not136, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i16 2, ptr %i.g, align 4, !tbaa !13
  store i32 0, ptr %i.q, align 8, !tbaa !17
  %i.af = and i8 %i.aa, 127
  %narrow138 = add nuw i8 %i.af, 1
  %i.ag = zext i8 %narrow138 to i16
  store i16 %i.ag, ptr %i.p, align 2, !tbaa !16
  br label %bb.ai

bb.k:                                             ; preds = %bb.i
  %.not137 = icmp samesign ult i8 %i.aa, 64
  br i1 %.not137, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i16 4, ptr %i.g, align 4, !tbaa !13
  store i32 0, ptr %i.q, align 8, !tbaa !17
  %i.ah = and i8 %i.aa, 63
  %narrow = add nuw nsw i8 %i.ah, 4
  %i.ai = zext nneg i8 %narrow to i16
  br label %.sink.split

bb.m:                                             ; preds = %bb.k
  store i16 3, ptr %i.g, align 4, !tbaa !13
  %i.aj = shl nuw nsw i32 %i.ae, 8
  %i.ak = and i32 %i.aj, 768
  store i32 %i.ak, ptr %i.q, align 8, !tbaa !17
  %i.al = lshr i32 %i.ae, 2
  %i.am = trunc nuw nsw i32 %i.al to i16
  %i.an = add nuw nsw i16 %i.am, 3
  br label %.sink.split

bb.n:                                             ; preds = %bb.h
  %i.ao = load ptr, ptr %0, align 8, !tbaa !19    ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !23
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  store ptr %i.aq, ptr %0, align 8, !tbaa !19
  %i.ar = load i64, ptr %i.k, align 8, !tbaa !21
  %i.as = add i64 %i.ar, -1
  store i64 %i.as, ptr %i.k, align 8, !tbaa !21
  %i.at = zext i8 %i.ap to i32
  %i.au = shl nuw nsw i32 %i.at, 8
  store i32 %i.au, ptr %i.q, align 8, !tbaa !17
  store i16 5, ptr %i.g, align 4, !tbaa !13
  br label %bb.ai

bb.o:                                             ; preds = %bb.h
  %i.av = load ptr, ptr %0, align 8, !tbaa !19    ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !23
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  store ptr %i.ax, ptr %0, align 8, !tbaa !19
  %i.ay = load i64, ptr %i.k, align 8, !tbaa !21
  %i.az = add i64 %i.ay, -1
  store i64 %i.az, ptr %i.k, align 8, !tbaa !21
  %i.ba = zext i8 %i.aw to i32
  %i.bb = add nuw nsw i32 %i.ba, 1
  %i.bc = load i32, ptr %i.q, align 8, !tbaa !17
  %i.bd = add i32 %i.bb, %i.bc
  store i32 %i.bd, ptr %i.q, align 8, !tbaa !17
  store i16 7, ptr %i.g, align 4, !tbaa !13
  br label %bb.ai

bb.p:                                             ; preds = %bb.h
  %i.be = load ptr, ptr %0, align 8, !tbaa !19    ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !23
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  store ptr %i.bg, ptr %0, align 8, !tbaa !19
  %i.bh = load i64, ptr %i.k, align 8, !tbaa !21
  %i.bi = add i64 %i.bh, -1
  store i64 %i.bi, ptr %i.k, align 8, !tbaa !21
  %i.bj = zext i8 %i.bf to i32
  %i.bk = add nuw nsw i32 %i.bj, 1
  %i.bl = load i32, ptr %i.q, align 8, !tbaa !17
  %i.bm = add i32 %i.bk, %i.bl
  store i32 %i.bm, ptr %i.q, align 8, !tbaa !17
  store i16 6, ptr %i.g, align 4, !tbaa !13
  br label %bb.ai

.lr.ph159:                                        ; preds = %.preheader, %bb.v
  %i.bn = phi i64 [ %i.ck, %bb.v ], [ %i.y, %.preheader ]
  %i.bo = load i64, ptr %i.m, align 8, !tbaa !22
  %.not133 = icmp eq i64 %i.bo, 0
  br i1 %.not133, label %.critedgethread-pre-split, label %bb.q

bb.q:                                             ; preds = %.lr.ph159
  %i.bp = load i16, ptr %i.p, align 2, !tbaa !16
  %.not134 = icmp eq i16 %i.bp, 0
  br i1 %.not134, label %.critedge.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bq = load ptr, ptr %0, align 8, !tbaa !19    ; 2 uses
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !23  ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  store ptr %i.bs, ptr %0, align 8, !tbaa !19
  %i.bt = add i64 %i.bn, -1
  store i64 %i.bt, ptr %i.k, align 8, !tbaa !21
  %i.bu = load ptr, ptr %i.d, align 8, !tbaa !20
  store i8 %i.br, ptr %i.bu, align 1, !tbaa !23
  %i.bv = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  store ptr %i.bw, ptr %i.d, align 8, !tbaa !20
  %i.bx = load i64, ptr %i.m, align 8, !tbaa !22
  %i.by = add i64 %i.bx, -1
  store i64 %i.by, ptr %i.m, align 8, !tbaa !22
  %i.bz = load ptr, ptr %i.s, align 8, !tbaa !18  ; 2 uses
  %i.ca = load ptr, ptr %i.t, align 8, !tbaa !14  ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 65536
  %.not135 = icmp ult ptr %i.bz, %i.cb
  br i1 %.not135, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr %i.ca, ptr %i.s, align 8, !tbaa !18
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cc = phi ptr [ %i.ca, %bb.s ], [ %i.bz, %bb.r ]
  store i8 %i.br, ptr %i.cc, align 1, !tbaa !23
  %i.cd = load ptr, ptr %i.s, align 8, !tbaa !18
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 1
  store ptr %i.ce, ptr %i.s, align 8, !tbaa !18
  %i.cf = load i32, ptr %i.r, align 8, !tbaa !15  ; 2 uses
  %i.cg = icmp ult i32 %i.cf, 65536
  br i1 %i.cg, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ch = add nuw nsw i32 %i.cf, 1
  store i32 %i.ch, ptr %i.r, align 8, !tbaa !15
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ci = load i16, ptr %i.p, align 2, !tbaa !16
  %i.cj = add i16 %i.ci, -1                       ; 2 uses
  store i16 %i.cj, ptr %i.p, align 2, !tbaa !16
  %i.ck = load i64, ptr %i.k, align 8, !tbaa !21  ; 2 uses
  %.not132 = icmp eq i64 %i.ck, 0
  br i1 %.not132, label %.critedge, label %.lr.ph159

.critedgethread-pre-split:                        ; preds = %.lr.ph159, %.preheader
  %.pr = load i16, ptr %i.p, align 2, !tbaa !16
  br label %.critedge

.critedge:                                        ; preds = %bb.v, %.critedgethread-pre-split
  %i.cl = phi i16 [ %.pr, %.critedgethread-pre-split ], [ %i.cj, %bb.v ]
  %i.cm = icmp eq i16 %i.cl, 0
  br i1 %i.cm, label %.critedge.thread, label %bb.ai

.critedge.thread:                                 ; preds = %bb.q, %.critedge
  store i16 1, ptr %i.g, align 4, !tbaa !13
  br label %bb.ai

.lr.ph.preheader:                                 ; preds = %bb.h, %bb.h
  %.pre = load i16, ptr %i.p, align 2, !tbaa !16
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ag
  %i.cn = phi i16 [ %.pre, %.lr.ph.preheader ], [ %i.do, %bb.ag ]
  %.not129 = icmp eq i16 %i.cn, 0
  br i1 %.not129, label %.critedge2.thread, label %bb.w

bb.w:                                             ; preds = %.lr.ph
  %i.co = load i32, ptr %i.q, align 8, !tbaa !17  ; 7 uses
  %i.cp = icmp ugt i32 %i.co, 65536
  br i1 %i.cp, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.1, i32 noundef %i.co) #8
  br label %.thread

bb.y:                                             ; preds = %bb.w
  %i.cq = load i16, ptr %i.g, align 4, !tbaa !13
  %i.cr = icmp eq i16 %i.cq, 6
  %i.cs = icmp samesign ugt i32 %i.co, 1024
  %or.cond = and i1 %i.cs, %i.cr
  br i1 %or.cond, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.1, i32 noundef %i.co) #8
  br label %.thread

bb.aa:                                            ; preds = %bb.y
  %i.ct = load i32, ptr %i.r, align 8, !tbaa !15
  %i.cu = icmp ugt i32 %i.co, %i.ct
  br i1 %i.cu, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.2, i32 noundef %i.co) #8
  br label %.thread

bb.ac:                                            ; preds = %bb.aa
  %i.cv = load ptr, ptr %i.s, align 8, !tbaa !18  ; 2 uses
  %i.cw = load ptr, ptr %i.t, align 8, !tbaa !14  ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 65536
  %.not130 = icmp ult ptr %i.cv, %i.cx
  br i1 %.not130, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store ptr %i.cw, ptr %i.s, align 8, !tbaa !18
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.cy = phi ptr [ %i.cw, %bb.ad ], [ %i.cv, %bb.ac ] ; 2 uses
  %i.cz = zext nneg i32 %i.co to i64              ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cz
  %.not131 = icmp ult ptr %i.cy, %i.da
  %i.db = sub nsw i64 0, %i.cz
  %.0113.in.v.idx = select i1 %.not131, i64 65536, i64 0
  %.0113.in.v = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.0113.in.v.idx
  %.0113.in = getelementptr inbounds i8, ptr %.0113.in.v, i64 %i.db
  %.0113 = load i8, ptr %.0113.in, align 1, !tbaa !23 ; 2 uses
  %i.dc = load ptr, ptr %i.d, align 8, !tbaa !20
  store i8 %.0113, ptr %i.dc, align 1, !tbaa !23
  %i.dd = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 1
  store ptr %i.de, ptr %i.d, align 8, !tbaa !20
  %i.df = load i64, ptr %i.m, align 8, !tbaa !22
  %i.dg = add i64 %i.df, -1
  store i64 %i.dg, ptr %i.m, align 8, !tbaa !22
  %i.dh = load ptr, ptr %i.s, align 8, !tbaa !18
  store i8 %.0113, ptr %i.dh, align 1, !tbaa !23
  %i.di = load ptr, ptr %i.s, align 8, !tbaa !18
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 1
  store ptr %i.dj, ptr %i.s, align 8, !tbaa !18
  %i.dk = load i32, ptr %i.r, align 8, !tbaa !15  ; 2 uses
  %i.dl = icmp ult i32 %i.dk, 65536
  br i1 %i.dl, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.dm = add nuw nsw i32 %i.dk, 1
  store i32 %i.dm, ptr %i.r, align 8, !tbaa !15
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.dn = load i16, ptr %i.p, align 2, !tbaa !16
  %i.do = add i16 %i.dn, -1                       ; 3 uses
  store i16 %i.do, ptr %i.p, align 2, !tbaa !16
  %i.dp = load i64, ptr %i.m, align 8, !tbaa !22
  %.not128 = icmp eq i64 %i.dp, 0
  br i1 %.not128, label %.critedge2, label %.lr.ph

.critedge2:                                       ; preds = %bb.ag
  %i.dq = icmp eq i16 %i.do, 0
  br i1 %i.dq, label %.critedge2.thread, label %.thread

.critedge2.thread:                                ; preds = %.lr.ph, %.critedge2
  store i16 1, ptr %i.g, align 4, !tbaa !13
  br label %bb.ai

bb.ah:                                            ; preds = %bb.h
  %i.dr = zext i16 %i.u to i32
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.3, i32 noundef %i.dr) #8
  br label %.thread

.sink.split:                                      ; preds = %bb.l, %bb.m
  %.sink = phi i16 [ %i.an, %bb.m ], [ %i.ai, %bb.l ]
  store i16 %.sink, ptr %i.p, align 2, !tbaa !16
  br label %bb.ai

bb.ai:                                            ; preds = %.sink.split, %bb.n, %bb.o, %bb.p, %bb.j, %.critedge.thread, %.critedge, %.critedge2.thread
  %.pr194 = load i64, ptr %i.m, align 8, !tbaa !22
  %.not = icmp eq i64 %.pr194, 0
  br i1 %.not, label %.thread, label %bb.f

.thread143:                                       ; preds = %bb.g
  br i1 %.not139163, label %.thread, label %bb.aj

bb.aj:                                            ; preds = %.thread143
  %i.ds = load i16, ptr %i.g, align 4, !tbaa !13  ; 2 uses
  %i.dt = icmp eq i16 %i.ds, 1
  br i1 %i.dt, label %.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.du = zext i16 %i.ds to i32
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.4, i32 noundef %i.du) #8
  br label %.thread

.thread:                                          ; preds = %.critedge2, %bb.ai, %.thread143, %bb.e, %bb.z, %bb.x, %bb.ah, %bb.ab, %bb.aj, %bb.d, %bb.a, %bb.b, %bb.c, %bb.ak
  %.2116 = phi i32 [ 1, %bb.aj ], [ -3, %bb.a ], [ 0, %.thread143 ], [ -2, %bb.d ], [ -2, %bb.ak ], [ -3, %bb.c ], [ -3, %bb.b ], [ 0, %bb.e ], [ -2, %bb.ab ], [ -2, %bb.ah ], [ -2, %bb.x ], [ -2, %bb.z ], [ 0, %bb.ai ], [ 0, %.critedge2 ]
  ret i32 %.2116
}

declare void @cli_dbgmsg(ptr noundef, ...) local_unnamed_addr #3

declare void @cli_errmsg(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define range(i32 -3, 1) i32 @adc_decompressEnd(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.c = load i16, ptr %i.b, align 4, !tbaa !13
  %i.d = icmp eq i16 %i.c, 0
  br i1 %i.d, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14   ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.f) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.g, i8 0, i64 12, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.a, %bb.e
  %.0 = phi i32 [ 0, %bb.e ], [ -3, %bb.a ], [ -2, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

attributes #0 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind allocsize(0,1) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!"long", !4, i64 0}
!11 = !{!"short", !4, i64 0}
!12 = !{!"adc_stream", !9, i64 0, !10, i64 8, !10, i64 16, !9, i64 24, !10, i64 32, !10, i64 40, !9, i64 48, !9, i64 56, !5, i64 64, !11, i64 68, !11, i64 70, !5, i64 72}
!13 = !{!12, !11, i64 68}
!14 = !{!12, !9, i64 48}
!15 = !{!12, !5, i64 64}
!16 = !{!12, !11, i64 70}
!17 = !{!12, !5, i64 72}
!18 = !{!12, !9, i64 56}
!19 = !{!12, !9, i64 0}
!20 = !{!12, !9, i64 24}
!21 = !{!12, !10, i64 8}
!22 = !{!12, !10, i64 32}
!23 = !{!4, !4, i64 0}
end_hunk_0
