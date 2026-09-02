Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/cff?download=true
inline.NumInlined: 81
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@cff_index_init:bb.a
  br label %thread-pre-split.thread

thread-pre-split.thread:                          ; preds = %bb.e, %.thread, %thread-pre-split
  %i.ao = phi i32 [ %.pre, %.thread ], [ 0, %thread-pre-split ], [ 0, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %i.ao
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @cff_index_get_pointers(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
  %i.b = alloca i32, align 4                      ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i32 0, ptr %i.b, align 4, !tbaa !67
  %i.c = load ptr, ptr %0, align 8, !tbaa !139    ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !141  ; 6 uses
  store ptr null, ptr %1, align 8, !tbaa !593
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !143
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 0, ptr %i.a, align 4, !tbaa !67
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.i = load i32, ptr %i.h, align 4, !tbaa !285  ; 2 uses
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %cff_index_load_offsets.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i8, ptr %i.j, align 8, !tbaa !286   ; 2 uses
  %i.l = add i32 %i.i, 1
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %i.n = zext i8 %i.k to i64
  %i.o = mul nuw nsw i64 %i.n, %i.m               ; 3 uses
  %i.p = call ptr @ft_mem_qrealloc(ptr noundef %i.e, i64 noundef 8, i64 noundef 0, i64 noundef %i.m, ptr noundef null, ptr noundef nonnull %i.a) #18
  store ptr %i.p, ptr %i.f, align 8, !tbaa !143
  %i.q = load i32, ptr %i.a, align 4, !tbaa !67
  %.not63.i = icmp eq i32 %i.q, 0
  br i1 %.not63.i, label %bb.d, label %cff_index_load_offsets.exit

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !287
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load i32, ptr %i.t, align 8, !tbaa !288
  %i.v = zext i32 %i.u to i64
  %i.w = add i64 %i.s, %i.v
  %i.x = call i32 @FT_Stream_Seek(ptr noundef nonnull %i.c, i64 noundef %i.w) #18 ; 2 uses
  store i32 %i.x, ptr %i.a, align 4, !tbaa !67
  %.not64.i = icmp eq i32 %i.x, 0
  br i1 %.not64.i, label %bb.e, label %cff_index_load_offsets.exit

bb.e:                                             ; preds = %bb.d
  %i.y = call i32 @FT_Stream_EnterFrame(ptr noundef nonnull %i.c, i64 noundef %i.o) #18 ; 2 uses
  store i32 %i.y, ptr %i.a, align 4, !tbaa !67
  %.not65.i = icmp eq i32 %i.y, 0
  br i1 %.not65.i, label %bb.f, label %cff_index_load_offsets.exit

bb.f:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %i.f, align 8, !tbaa !143  ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !254 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.o ; 4 uses
  %.not88.i = icmp eq i64 %i.o, 0                 ; 4 uses
  switch i8 %i.k, label %.preheader.i [
    i8 1, label %.preheader68.i
    i8 2, label %.preheader70.i
    i8 3, label %.preheader72.i
  ]

.preheader72.i:                                   ; preds = %bb.f
  br i1 %.not88.i, label %.loopexit.i, label %.lr.ph.i

.preheader70.i:                                   ; preds = %bb.f
  br i1 %.not88.i, label %.loopexit.i, label %.lr.ph78.i

.preheader68.i:                                   ; preds = %bb.f
  br i1 %.not88.i, label %.loopexit.i, label %.lr.ph81.i

.preheader.i:                                     ; preds = %bb.f
  br i1 %.not88.i, label %.loopexit.i, label %.lr.ph84.i

.lr.ph81.i:                                       ; preds = %.preheader68.i, %.lr.ph81.i
  %.05580.i = phi ptr [ %i.ag, %.lr.ph81.i ], [ %i.z, %.preheader68.i ] ; 2 uses
  %.05679.i = phi ptr [ %i.af, %.lr.ph81.i ], [ %i.ab, %.preheader68.i ] ; 2 uses
  %i.ad = load i8, ptr %.05679.i, align 1, !tbaa !130
  %i.ae = zext i8 %i.ad to i64
  store i64 %i.ae, ptr %.05580.i, align 8, !tbaa !116
  %i.af = getelementptr inbounds nuw i8, ptr %.05679.i, i64 1 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.05580.i, i64 8
  %i.ah = icmp ult ptr %i.af, %i.ac
  br i1 %i.ah, label %.lr.ph81.i, label %.loopexit.i, !llvm.loop !588

.lr.ph78.i:                                       ; preds = %.preheader70.i, %.lr.ph78.i
  %.177.i = phi ptr [ %i.aq, %.lr.ph78.i ], [ %i.z, %.preheader70.i ] ; 2 uses
  %.15776.i = phi ptr [ %i.ap, %.lr.ph78.i ], [ %i.ab, %.preheader70.i ] ; 3 uses
  %i.ai = load i8, ptr %.15776.i, align 1, !tbaa !130
  %i.aj = zext i8 %i.ai to i64
  %i.ak = shl nuw nsw i64 %i.aj, 8
  %i.al = getelementptr inbounds nuw i8, ptr %.15776.i, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !130
  %i.an = zext i8 %i.am to i64
  %i.ao = or disjoint i64 %i.ak, %i.an
  store i64 %i.ao, ptr %.177.i, align 8, !tbaa !116
  %i.ap = getelementptr inbounds nuw i8, ptr %.15776.i, i64 2 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.177.i, i64 8
  %i.ar = icmp ult ptr %i.ap, %i.ac
  br i1 %i.ar, label %.lr.ph78.i, label %.loopexit.i, !llvm.loop !589

.lr.ph.i:                                         ; preds = %.preheader72.i, %.lr.ph.i
  %.275.i = phi ptr [ %i.bf, %.lr.ph.i ], [ %i.z, %.preheader72.i ] ; 2 uses
  %.25874.i = phi ptr [ %i.be, %.lr.ph.i ], [ %i.ab, %.preheader72.i ] ; 4 uses
  %i.as = load i8, ptr %.25874.i, align 1, !tbaa !130
  %i.at = zext i8 %i.as to i64
  %i.au = shl nuw nsw i64 %i.at, 16
  %i.av = getelementptr inbounds nuw i8, ptr %.25874.i, i64 1
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !130
  %i.ax = zext i8 %i.aw to i64
  %i.ay = shl nuw nsw i64 %i.ax, 8
  %i.az = or disjoint i64 %i.ay, %i.au
  %i.ba = getelementptr inbounds nuw i8, ptr %.25874.i, i64 2
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !130
  %i.bc = zext i8 %i.bb to i64
  %i.bd = or disjoint i64 %i.az, %i.bc
  store i64 %i.bd, ptr %.275.i, align 8, !tbaa !116
  %i.be = getelementptr inbounds nuw i8, ptr %.25874.i, i64 3 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.275.i, i64 8
  %i.bg = icmp ult ptr %i.be, %i.ac
  br i1 %i.bg, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !590

.lr.ph84.i:                                       ; preds = %.preheader.i, %.lr.ph84.i
  %.383.i = phi ptr [ %i.bl, %.lr.ph84.i ], [ %i.z, %.preheader.i ] ; 2 uses
  %.35982.i = phi ptr [ %i.bk, %.lr.ph84.i ], [ %i.ab, %.preheader.i ] ; 2 uses
  %i.bh = load i32, ptr %.35982.i, align 1
  %i.bi = call i32 @llvm.bswap.i32(i32 %i.bh)
  %i.bj = zext i32 %i.bi to i64
  store i64 %i.bj, ptr %.383.i, align 8, !tbaa !116
  %i.bk = getelementptr inbounds nuw i8, ptr %.35982.i, i64 4 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.383.i, i64 8
  %i.bm = icmp ult ptr %i.bk, %i.ac
  br i1 %i.bm, label %.lr.ph84.i, label %.loopexit.i, !llvm.loop !591

.loopexit.i:                                      ; preds = %.lr.ph.i, %.lr.ph78.i, %.lr.ph81.i, %.lr.ph84.i, %.preheader.i, %.preheader68.i, %.preheader70.i, %.preheader72.i
  call void @FT_Stream_ExitFrame(ptr noundef nonnull %i.c) #18
  %.pr.pre.i = load i32, ptr %i.a, align 4, !tbaa !67
  %i.bn = icmp eq i32 %.pr.pre.i, 0
  br i1 %i.bn, label %cff_index_load_offsets.exit.thread, label %cff_index_load_offsets.exit

cff_index_load_offsets.exit.thread:               ; preds = %.loopexit.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  store i32 0, ptr %i.b, align 4, !tbaa !67
  br label %bb.g

cff_index_load_offsets.exit:                      ; preds = %bb.c, %bb.d, %bb.e, %.loopexit.i
  %i.bo = load ptr, ptr %i.f, align 8, !tbaa !143
  call void @ft_mem_free(ptr noundef %i.e, ptr noundef %i.bo) #18
  store ptr null, ptr %i.f, align 8, !tbaa !143
  %.pre.i = load i32, ptr %i.a, align 4, !tbaa !67 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  store i32 %.pre.i, ptr %i.b, align 4, !tbaa !67
  %.not86 = icmp eq i32 %.pre.i, 0
  br i1 %.not86, label %bb.g, label %.thread.thread

bb.g:                                             ; preds = %cff_index_load_offsets.exit.thread, %cff_index_load_offsets.exit, %bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !291
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !285 ; 3 uses
  %i.bt = zext i32 %i.bs to i64
  %i.bu = add i64 %i.bq, %i.bt                    ; 2 uses
  %.not87 = icmp eq i32 %i.bs, 0
  br i1 %.not87, label %.thread.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bv = add i32 %i.bs, 1
  %i.bw = zext i32 %i.bv to i64
  %i.bx = call ptr @ft_mem_qrealloc(ptr noundef %i.e, i64 noundef 8, i64 noundef 0, i64 noundef %i.bw, ptr noundef null, ptr noundef nonnull %i.b) #18 ; 11 uses
  %i.by = load i32, ptr %i.b, align 4, !tbaa !67  ; 2 uses
  %.not88 = icmp eq i32 %i.by, 0
  br i1 %.not88, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %.not89 = icmp eq ptr %2, null                  ; 2 uses
  br i1 %.not89, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bz = call ptr @ft_mem_alloc(ptr noundef %i.e, i64 noundef %i.bu, ptr noundef nonnull %i.b) #18 ; 6 uses
  %i.ca = load i32, ptr %i.b, align 4, !tbaa !67
  %.not90 = icmp eq i32 %i.ca, 0
  br i1 %.not90, label %.thread124, label %bb.x

bb.k:                                             ; preds = %bb.i
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !142 ; 4 uses
  store ptr %i.cc, ptr %i.bx, align 8, !tbaa !127
  %i.cd = load i32, ptr %i.br, align 4, !tbaa !285 ; 4 uses
  %.not91104 = icmp eq i32 %i.cd, 0
  br i1 %.not91104, label %._crit_edge, label %.lr.ph.split.us

.thread124:                                       ; preds = %bb.j
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !142
  store ptr %i.bz, ptr %i.bx, align 8, !tbaa !127
  %i.cg = load i32, ptr %i.br, align 4, !tbaa !285 ; 2 uses
  %.not91104127 = icmp eq i32 %i.cg, 0
  br i1 %.not91104127, label %._crit_edge.thread, label %.lr.ph.split

._crit_edge.thread:                               ; preds = %.thread124
  store ptr %i.bx, ptr %1, align 8, !tbaa !593
  br label %bb.u

.lr.ph.split.us:                                  ; preds = %bb.k
  %i.ch = load ptr, ptr %i.f, align 8, !tbaa !143 ; 3 uses
  %4 = zext i32 %i.cd to i64                      ; 2 uses
  %xtraiter = and i64 %4, 1
  %i.ci = icmp eq i32 %i.cd, 1
  br i1 %i.ci, label %.epil.preheader, label %.lr.ph.split.us.new

.lr.ph.split.us.new:                              ; preds = %.lr.ph.split.us
  %unroll_iter = and i64 %4, 4294967294
  br label %bb.l

bb.l:                                             ; preds = %bb.p, %.lr.ph.split.us.new
  %.076106.us = phi i64 [ 0, %.lr.ph.split.us.new ], [ %.0.us.1, %bb.p ] ; 2 uses
  %.077105.us = phi i64 [ 1, %.lr.ph.split.us.new ], [ %i.cy, %bb.p ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.split.us.new ], [ %niter.next.1, %bb.p ]
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %.077105.us
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !116
  %i.cl = add i64 %i.ck, -1                       ; 2 uses
  %i.cm = icmp ult i64 %i.cl, %.076106.us
  br i1 %i.cm, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cn = load i64, ptr %i.bp, align 8, !tbaa !291
  %spec.select.us = call i64 @llvm.umin.i64(i64 %i.cl, i64 %i.cn)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0.us = phi i64 [ %spec.select.us, %bb.m ], [ %.076106.us, %bb.l ] ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.0.us
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %.077105.us
  store ptr %i.co, ptr %i.cp, align 8, !tbaa !127
  %i.cq = add nuw nsw i64 %.077105.us, 1          ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cq
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !116
  %i.ct = add i64 %i.cs, -1                       ; 2 uses
  %i.cu = icmp ult i64 %i.ct, %.0.us
  br i1 %i.cu, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cv = load i64, ptr %i.bp, align 8, !tbaa !291
  %spec.select.us.1 = call i64 @llvm.umin.i64(i64 %i.ct, i64 %i.cv)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0.us.1 = phi i64 [ %spec.select.us.1, %bb.o ], [ %.0.us, %bb.n ] ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.0.us.1
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.cq
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !127
  %i.cy = add nuw nsw i64 %.077105.us, 2          ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.l, !llvm.loop !592

.lr.ph.split:                                     ; preds = %.thread124, %bb.s
  %i.cz = phi i32 [ %i.dw, %bb.s ], [ %i.cg, %.thread124 ] ; 2 uses
  %.075107 = phi i64 [ %.1, %bb.s ], [ 0, %.thread124 ] ; 5 uses
  %.076106 = phi i64 [ %.0135, %bb.s ], [ 0, %.thread124 ] ; 5 uses
  %.077105 = phi i64 [ %i.dx, %bb.s ], [ 1, %.thread124 ] ; 5 uses
  %i.da = load ptr, ptr %i.f, align 8, !tbaa !143
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %.077105
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !116
  %i.dd = add i64 %i.dc, -1                       ; 2 uses
  %i.de = icmp ult i64 %i.dd, %.076106
  br i1 %i.de, label %.thread132, label %bb.q

.thread132:                                       ; preds = %.lr.ph.split
  %i.df = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.076106
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %.075107
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %.077105
  store ptr %i.dg, ptr %i.dh, align 8, !tbaa !127
  br label %bb.s

bb.q:                                             ; preds = %.lr.ph.split
  %i.di = load i64, ptr %i.bp, align 8, !tbaa !291
  %spec.select = call i64 @llvm.umin.i64(i64 %i.dd, i64 %i.di) ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bz, i64 %spec.select
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %.075107 ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %.077105 ; 5 uses
  store ptr %i.dk, ptr %i.dl, align 8, !tbaa !127
  %.not93 = icmp eq i64 %spec.select, %.076106
  br i1 %.not93, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dm = getelementptr i8, ptr %i.dl, i64 -8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !127 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.076106
  %i.dp = ptrtoint ptr %i.dk to i64
  %i.dq = ptrtoint ptr %i.dn to i64
  %i.dr = sub i64 %i.dp, %i.dq
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dn, ptr align 1 %i.do, i64 %i.dr, i1 false)
  %i.ds = load ptr, ptr %i.dl, align 8, !tbaa !127
  store i8 0, ptr %i.ds, align 1, !tbaa !130
  %i.dt = load ptr, ptr %i.dl, align 8, !tbaa !127
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 1
  store ptr %i.du, ptr %i.dl, align 8, !tbaa !127
  %i.dv = add i64 %.075107, 1
  %.pre = load i32, ptr %i.br, align 4, !tbaa !285
  br label %bb.s

bb.s:                                             ; preds = %.thread132, %bb.q, %bb.r
  %.0135 = phi i64 [ %spec.select, %bb.r ], [ %spec.select, %bb.q ], [ %.076106, %.thread132 ]
  %i.dw = phi i32 [ %.pre, %bb.r ], [ %i.cz, %bb.q ], [ %i.cz, %.thread132 ] ; 2 uses
  %.1 = phi i64 [ %i.dv, %bb.r ], [ %.075107, %bb.q ], [ %.075107, %.thread132 ]
  %i.dx = add nuw nsw i64 %.077105, 1
  %i.dy = zext i32 %i.dw to i64
  %.not91.not = icmp samesign ult i64 %.077105, %i.dy
  br i1 %.not91.not, label %.lr.ph.split, label %._crit_edge, !llvm.loop !592

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.split.us
  %.076106.us.epil.init = phi i64 [ 0, %.lr.ph.split.us ], [ %.0.us.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.077105.us.epil.init = phi i64 [ 1, %.lr.ph.split.us ], [ %i.cy, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod151 = trunc i32 %i.cd to i1
  call void @llvm.assume(i1 %lcmp.mod151)
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %.077105.us.epil.init
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !116
  %i.eb = add i64 %i.ea, -1                       ; 2 uses
  %i.ec = icmp ult i64 %i.eb, %.076106.us.epil.init
  br i1 %i.ec, label %._crit_edge.loopexit.epilog-lcssa, label %bb.t

bb.t:                                             ; preds = %.epil.preheader
  %i.ed = load i64, ptr %i.bp, align 8, !tbaa !291
  %spec.select.us.epil = call i64 @llvm.umin.i64(i64 %i.eb, i64 %i.ed)
  br label %._crit_edge.loopexit.epilog-lcssa

._crit_edge.loopexit.epilog-lcssa:                ; preds = %bb.t, %.epil.preheader
  %.0.us.epil = phi i64 [ %spec.select.us.epil, %bb.t ], [ %.076106.us.epil.init, %.epil.preheader ]
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.0.us.epil
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %.077105.us.epil.init
  store ptr %i.ee, ptr %i.ef, align 8, !tbaa !127
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.s, %._crit_edge.loopexit.epilog-lcssa, %._crit_edge.loopexit.unr-lcssa, %bb.k
  %.078129 = phi ptr [ null, %._crit_edge.loopexit.epilog-lcssa ], [ null, %bb.k ], [ null, %._crit_edge.loopexit.unr-lcssa ], [ %i.bz, %bb.s ] ; 2 uses
  store ptr %i.bx, ptr %1, align 8, !tbaa !593
  br i1 %.not89, label %bb.v, label %bb.u

bb.u:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %.078129137 = phi ptr [ %i.bz, %._crit_edge.thread ], [ %.078129, %._crit_edge ] ; 2 uses
  store ptr %.078129137, ptr %2, align 8, !tbaa !127
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge
  %.078129138 = phi ptr [ %.078129137, %bb.u ], [ %.078129, %._crit_edge ] ; 2 uses
  %.not92 = icmp eq ptr %3, null
  br i1 %.not92, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i64 %i.bu, ptr %3, align 8, !tbaa !116
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %bb.j
  %.179 = phi ptr [ %.078129138, %bb.v ], [ %i.bz, %bb.j ], [ %.078129138, %bb.w ] ; 2 uses
  %i.eg = load i32, ptr %i.b, align 4, !tbaa !67  ; 2 uses
  %i.eh = icmp ne i32 %i.eg, 0
  %i.ei = icmp ne ptr %.179, null
  %or.cond = select i1 %i.eh, i1 %i.ei, i1 false
  br i1 %or.cond, label %bb.y, label %.thread

bb.y:                                             ; preds = %bb.x
  call void @ft_mem_free(ptr noundef %i.e, ptr noundef nonnull %.179) #18
  %.pre112 = load i32, ptr %i.b, align 4, !tbaa !67
  br label %.thread

.thread:                                          ; preds = %bb.h, %bb.y, %bb.x
  %i.ej = phi i32 [ %i.by, %bb.h ], [ %.pre112, %bb.y ], [ %i.eg, %bb.x ] ; 2 uses
  %i.ek = icmp ne i32 %i.ej, 0
  %i.el = icmp ne ptr %i.bx, null
  %or.cond3 = select i1 %i.ek, i1 %i.el, i1 false
  br i1 %or.cond3, label %bb.z, label %.thread.thread

bb.z:                                             ; preds = %.thread
  call void @ft_mem_free(ptr noundef %i.e, ptr noundef nonnull %i.bx) #18
  %.pre113 = load i32, ptr %i.b, align 4, !tbaa !67
  br label %.thread.thread

.thread.thread:                                   ; preds = %cff_index_load_offsets.exit, %bb.g, %bb.z, %.thread
  %i.em = phi i32 [ %.pre.i, %cff_index_load_offsets.exit ], [ 0, %bb.g ], [ %.pre113, %bb.z ], [ %i.ej, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  ret i32 %i.em
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @cff_subfont_load(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef range(i32 4096, 16385) %5, ptr noundef %6, ptr nofree noundef readonly captures(none) %7) unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %8 = alloca %struct.CFF_ParserRec_, align 8     ; 12 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store ptr null, ptr %i.b, align 8, !tbaa !127
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 920
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !104  ; 2 uses
  %i.f = icmp eq i32 %5, 12288
  %i.g = icmp eq i32 %5, 16384
  %i.h = or i1 %i.f, %i.g                         ; 3 uses
  %i.i = zext i1 %i.h to i8
  %i.j = select i1 %i.h, i32 513, i32 96          ; 2 uses
  %i.k = load ptr, ptr %6, align 8, !tbaa !163    ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !245
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.m, i8 0, i64 64, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 52
  store i32 %5, ptr %i.n, align 4, !tbaa !247
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 56
  store ptr %0, ptr %i.o, align 8, !tbaa !248
  store ptr %i.k, ptr %8, align 8, !tbaa !249
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 66
  store i16 0, ptr %i.p, align 2, !tbaa !282
  %i.q = zext nneg i32 %i.j to i64
  %i.r = call ptr @ft_mem_qrealloc(ptr noundef %i.l, i64 noundef 8, i64 noundef 0, i64 noundef %i.q, ptr noundef null, ptr noundef nonnull %i.a) #18 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  store ptr %i.r, ptr %i.s, align 8, !tbaa !250
  %i.t = load i32, ptr %i.a, align 4, !tbaa !67   ; 2 uses
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %bb.b, label %cff_parser_init.exit

cff_parser_init.exit:                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.v

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 48
  store i32 %i.j, ptr %i.u, align 8, !tbaa !251
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr %i.r, ptr %i.v, align 8, !tbaa !252
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %i.w, i8 0, i64 296, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i16 -100, ptr %i.x, align 8, !tbaa !596
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 42
  store i16 50, ptr %i.y, align 2, !tbaa !597
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 2, ptr %i.z, align 8, !tbaa !598
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 65536, ptr %i.aa, align 8, !tbaa !599
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 65536, ptr %i.ab, align 8, !tbaa !600
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i64 8720, ptr %i.ac, align 8, !tbaa !601
  store <4 x i32> splat (i32 65535), ptr %0, align 8, !tbaa !67
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 65535, ptr %i.ad, align 8, !tbaa !124
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 65535, ptr %i.ae, align 4, !tbaa !134
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i32 65535, ptr %i.af, align 8, !tbaa !227
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 2 uses
  store i32 65535, ptr %i.ag, align 4, !tbaa !110
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i32 65535, ptr %i.ah, align 8, !tbaa !231
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i32 65535, ptr %i.ai, align 8, !tbaa !131
  %i.aj = select i1 %i.h, i32 513, i32 48
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i32 %i.aj, ptr %i.ak, align 8, !tbaa !602
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !285
  %.not88 = icmp eq i32 %i.am, 0
  br i1 %.not88, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !290
  %i.ap = call i32 @FT_Stream_Seek(ptr noundef %3, i64 noundef %i.ao) #18 ; 2 uses
  %.not89 = icmp eq i32 %i.ap, 0
  br i1 %.not89, label %bb.d, label %bb.v

bb.d:                                             ; preds = %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !291
  %i.as = call i32 @FT_Stream_ExtractFrame(ptr noundef %3, i64 noundef %i.ar, ptr noundef nonnull %i.b) #18 ; 2 uses
  %.not90 = icmp eq i32 %i.as, 0
  br i1 %.not90, label %.thread, label %bb.v

bb.e:                                             ; preds = %bb.b
  %i.at = call fastcc i32 @cff_index_access_element(ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) ; 2 uses
  %.not91 = icmp eq i32 %i.at, 0
  br i1 %.not91, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.e, %bb.d
  %.in = phi ptr [ %i.aq, %bb.d ], [ %i.c, %bb.e ]
  %i.au = load i64, ptr %.in, align 8
  %i.av = load ptr, ptr %i.b, align 8, !tbaa !127 ; 3 uses
  %.not92 = icmp eq ptr %i.av, null
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.au
  %i.ax = select i1 %.not92, ptr null, ptr %i.aw
  %i.ay = call fastcc i32 @cff_parser_run(ptr noundef %8, ptr noundef %i.av, ptr noundef %i.ax)
  br label %bb.f

bb.f:                                             ; preds = %.thread, %bb.e
  %.1 = phi i32 [ %i.at, %bb.e ], [ %i.ay, %.thread ] ; 2 uses
  %i.az = load i32, ptr %i.al, align 4, !tbaa !285
  %.not93 = icmp eq i32 %i.az, 0
  br i1 %.not93, label %cff_index_forget_element.exit.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !142
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.h, label %cff_index_forget_element.exit

bb.h:                                             ; preds = %bb.g
  %i.bd = load ptr, ptr %1, align 8, !tbaa !139
end_hunk_0
begin_hunk_1_@cff_charset_load:bb.a
  br i1 %.not101.old, label %thread-pre-split, label %bb.x

bb.x:                                             ; preds = %.loopexit112, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 0, ptr %i.a, align 4, !tbaa !67
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !147
  %.not.i = icmp eq i32 %i.ci, 0
  br i1 %.not.i, label %iter.check156, label %cff_charset_compute_cids.exit

iter.check156:                                    ; preds = %bb.x
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !71 ; 3 uses
  %wide.trip.count.i = zext i32 %1 to i64         ; 6 uses
  %min.iters.check143 = icmp ult i32 %1, 4
  br i1 %min.iters.check143, label %vec.epilog.scalar.ph157.preheader, label %vector.main.loop.iter.check144

vector.main.loop.iter.check144:                   ; preds = %iter.check156
  %min.iters.check145 = icmp ult i32 %1, 16
  br i1 %min.iters.check145, label %vec.epilog.ph160, label %vector.ph146

vector.ph146:                                     ; preds = %vector.main.loop.iter.check144
  %i.cl = and i64 %wide.trip.count.i, 12
  %n.vec147 = and i64 %wide.trip.count.i, 4294967280 ; 4 uses
  br label %vector.body148

vector.body148:                                   ; preds = %vector.body148, %vector.ph146
  %index149 = phi i64 [ 0, %vector.ph146 ], [ %index.next152, %vector.body148 ] ; 2 uses
  %vec.phi = phi <8 x i16> [ zeroinitializer, %vector.ph146 ], [ %i.co, %vector.body148 ]
  %vec.phi150 = phi <8 x i16> [ zeroinitializer, %vector.ph146 ], [ %i.cp, %vector.body148 ]
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %i.ck, i64 %index149 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %wide.load = load <8 x i16>, ptr %i.cm, align 2, !tbaa !66
  %wide.load151 = load <8 x i16>, ptr %i.cn, align 2, !tbaa !66
  %i.co = call <8 x i16> @llvm.umax.v8i16(<8 x i16> %wide.load, <8 x i16> %vec.phi) ; 2 uses
  %i.cp = call <8 x i16> @llvm.umax.v8i16(<8 x i16> %wide.load151, <8 x i16> %vec.phi150) ; 2 uses
  %index.next152 = add nuw i64 %index149, 16      ; 2 uses
  %i.cq = icmp eq i64 %index.next152, %n.vec147
  br i1 %i.cq, label %middle.block153, label %vector.body148, !llvm.loop !617

middle.block153:                                  ; preds = %vector.body148
  %rdx.minmax = call <8 x i16> @llvm.umax.v8i16(<8 x i16> %i.co, <8 x i16> %i.cp)
  %i.cr = call i16 @llvm.vector.reduce.umax.v8i16(<8 x i16> %rdx.minmax) ; 3 uses
  %cmp.n154 = icmp eq i64 %n.vec147, %wide.trip.count.i
  br i1 %cmp.n154, label %._crit_edge.i, label %vec.epilog.iter.check158

vec.epilog.iter.check158:                         ; preds = %middle.block153
  %min.epilog.iters.check159 = icmp eq i64 %i.cl, 0
  br i1 %min.epilog.iters.check159, label %vec.epilog.scalar.ph157.preheader, label %vec.epilog.ph160, !prof !292

vec.epilog.ph160:                                 ; preds = %vector.main.loop.iter.check144, %vec.epilog.iter.check158
  %vec.epilog.resume.val155 = phi i64 [ %n.vec147, %vec.epilog.iter.check158 ], [ 0, %vector.main.loop.iter.check144 ]
  %bc.merge.rdx = phi i16 [ %i.cr, %vec.epilog.iter.check158 ], [ 0, %vector.main.loop.iter.check144 ]
  %n.vec161 = and i64 %wide.trip.count.i, 4294967292 ; 3 uses
  %broadcast.splatinsert162 = insertelement <4 x i16> poison, i16 %bc.merge.rdx, i64 0
  %broadcast.splat163 = shufflevector <4 x i16> %broadcast.splatinsert162, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body164

vec.epilog.vector.body164:                        ; preds = %vec.epilog.vector.body164, %vec.epilog.ph160
  %index165 = phi i64 [ %vec.epilog.resume.val155, %vec.epilog.ph160 ], [ %index.next168, %vec.epilog.vector.body164 ] ; 2 uses
  %vec.phi166 = phi <4 x i16> [ %broadcast.splat163, %vec.epilog.ph160 ], [ %i.ct, %vec.epilog.vector.body164 ]
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %i.ck, i64 %index165
  %wide.load167 = load <4 x i16>, ptr %i.cs, align 2, !tbaa !66
  %i.ct = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %wide.load167, <4 x i16> %vec.phi166) ; 2 uses
  %index.next168 = add nuw i64 %index165, 4       ; 2 uses
  %i.cu = icmp eq i64 %index.next168, %n.vec161
  br i1 %i.cu, label %vec.epilog.middle.block169, label %vec.epilog.vector.body164, !llvm.loop !618

vec.epilog.middle.block169:                       ; preds = %vec.epilog.vector.body164
  %i.cv = call i16 @llvm.vector.reduce.umax.v4i16(<4 x i16> %i.ct) ; 2 uses
  %cmp.n170 = icmp eq i64 %n.vec161, %wide.trip.count.i
  br i1 %cmp.n170, label %._crit_edge.i, label %vec.epilog.scalar.ph157.preheader

vec.epilog.scalar.ph157.preheader:                ; preds = %iter.check156, %vec.epilog.iter.check158, %vec.epilog.middle.block169
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check156 ], [ %n.vec147, %vec.epilog.iter.check158 ], [ %n.vec161, %vec.epilog.middle.block169 ]
  %.029.i.ph = phi i16 [ 0, %iter.check156 ], [ %i.cr, %vec.epilog.iter.check158 ], [ %i.cv, %vec.epilog.middle.block169 ]
  br label %vec.epilog.scalar.ph157

vec.epilog.scalar.ph157:                          ; preds = %vec.epilog.scalar.ph157.preheader, %vec.epilog.scalar.ph157
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph157 ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph157.preheader ] ; 2 uses
  %.029.i = phi i16 [ %spec.select.i, %vec.epilog.scalar.ph157 ], [ %.029.i.ph, %vec.epilog.scalar.ph157.preheader ]
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %i.ck, i64 %indvars.iv.i
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !66
  %spec.select.i = call i16 @llvm.umax.i16(i16 %i.cx, i16 %.029.i) ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %vec.epilog.scalar.ph157, !llvm.loop !619

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph157, %vec.epilog.middle.block169, %middle.block153
  %spec.select.i.lcssa = phi i16 [ %i.cv, %vec.epilog.middle.block169 ], [ %i.cr, %middle.block153 ], [ %spec.select.i, %vec.epilog.scalar.ph157 ] ; 2 uses
  %i.cy = zext i16 %spec.select.i.lcssa to i64
  %i.cz = add nuw nsw i64 %i.cy, 1
  %i.da = call ptr @ft_mem_realloc(ptr noundef %i.d, i64 noundef 2, i64 noundef 0, i64 noundef %i.cz, ptr noundef null, ptr noundef nonnull %i.a) #18 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.da, ptr %i.db, align 8, !tbaa !146
  %i.dc = load i32, ptr %i.a, align 4, !tbaa !67  ; 2 uses
  %.not26.i = icmp eq i32 %i.dc, 0
  br i1 %.not26.i, label %.preheader.i, label %cff_charset_compute_cids.exit

.preheader.i:                                     ; preds = %._crit_edge.i
  %.12430.i = add i32 %1, -1
  %i.dd = load ptr, ptr %i.cj, align 8, !tbaa !71
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.preheader.i
  %.12431.i = phi i32 [ %.12430.i, %.preheader.i ], [ %.124.i, %bb.y ] ; 3 uses
  %i.de = trunc i32 %.12431.i to i16
  %i.df = zext i32 %.12431.i to i64
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %i.dd, i64 %i.df
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !66
  %i.di = zext i16 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.da, i64 %i.di
  store i16 %i.de, ptr %i.dj, align 2, !tbaa !66
  %.124.i = add i32 %.12431.i, -1                 ; 2 uses
  %i.dk = icmp ult i32 %.124.i, %1
  br i1 %i.dk, label %bb.y, label %._crit_edge33.i, !llvm.loop !4

._crit_edge33.i:                                  ; preds = %bb.y
  %i.dl = zext i16 %spec.select.i.lcssa to i32
  store i32 %i.dl, ptr %i.ch, align 8, !tbaa !147
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %1, ptr %i.dm, align 4, !tbaa !293
  br label %cff_charset_compute_cids.exit

cff_charset_compute_cids.exit:                    ; preds = %bb.x, %._crit_edge.i, %._crit_edge33.i
  %i.dn = phi i32 [ %i.dc, %._crit_edge.i ], [ 0, %bb.x ], [ 0, %._crit_edge33.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  store i32 %i.dn, ptr %i.b, align 4, !tbaa !67
  br label %bb.z

thread-pre-split:                                 ; preds = %.lr.ph118, %bb.i, %bb.j, %bb.c, %bb.f, %bb.d, %bb.l, %bb.b, %bb.w, %.loopexit112
  %.pr = load i32, ptr %i.b, align 4, !tbaa !67
  br label %bb.z

bb.z:                                             ; preds = %thread-pre-split, %cff_charset_compute_cids.exit
  %i.do = phi i32 [ %.pr, %thread-pre-split ], [ %i.dn, %cff_charset_compute_cids.exit ]
  %.not102 = icmp eq i32 %i.do, 0
  br i1 %.not102, label %bb.aa, label %.thread110

.thread110.sink.split:                            ; preds = %bb.t, %bb.q, %bb.n
  store i32 3, ptr %i.b, align 4, !tbaa !67
  br label %.thread110

.thread110:                                       ; preds = %.thread110.sink.split, %bb.o, %bb.r, %bb.u, %bb.z
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !71
  call void @ft_mem_free(ptr noundef %i.d, ptr noundef %i.dq) #18
  store ptr null, ptr %i.dp, align 8, !tbaa !71
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !146
  call void @ft_mem_free(ptr noundef %i.d, ptr noundef %i.ds) #18
  store ptr null, ptr %i.dr, align 8, !tbaa !146
  store i32 0, ptr %0, align 8, !tbaa !148
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.dt, align 8, !tbaa !620
  %.pre = load i32, ptr %i.b, align 4, !tbaa !67
  br label %bb.aa

bb.aa:                                            ; preds = %.thread110, %bb.z
  %i.du = phi i32 [ %.pre, %.thread110 ], [ 0, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  ret i32 %i.du
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @cff_encoding_load(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5) unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 10 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !71
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.loopexit151, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ugt i64 %5, 1
  br i1 %i.e, label %bb.c, label %bb.ad

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 532 ; 7 uses
  %i.h = add i64 %5, %4                           ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.f, i8 0, i64 1024, i1 false)
  store i64 %i.h, ptr %i.i, align 8, !tbaa !136
  %i.j = tail call i32 @FT_Stream_Seek(ptr noundef %3, i64 noundef %i.h) #18 ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !67
  %.not130 = icmp eq i32 %i.j, 0
  br i1 %.not130, label %bb.d, label %.loopexit151

bb.d:                                             ; preds = %bb.c
  %i.k = call zeroext i8 @FT_Stream_ReadByte(ptr noundef %3, ptr noundef nonnull %i.b) #18
  %i.l = zext i8 %i.k to i32
  store i32 %i.l, ptr %0, align 8, !tbaa !144
  %i.m = load i32, ptr %i.b, align 4, !tbaa !67   ; 2 uses
  %.not131 = icmp eq i32 %i.m, 0
  br i1 %.not131, label %bb.e, label %.loopexit151

bb.e:                                             ; preds = %bb.d
  %i.n = call zeroext i8 @FT_Stream_ReadByte(ptr noundef %3, ptr noundef nonnull %i.b) #18 ; 7 uses
  %i.o = zext i8 %i.n to i32                      ; 2 uses
  %i.p = load i32, ptr %i.b, align 4, !tbaa !67   ; 2 uses
  %.not132 = icmp eq i32 %i.p, 0
  br i1 %.not132, label %bb.f, label %.loopexit151

bb.f:                                             ; preds = %bb.e
  %i.q = load i32, ptr %0, align 8, !tbaa !144
  %i.r = and i32 %i.q, 127
  switch i32 %i.r, label %.loopexit151 [
    i32 0, label %bb.g
    i32 1, label %bb.m
  ]

bb.g:                                             ; preds = %bb.f
  %i.s = add nuw nsw i32 %i.o, 1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.s, ptr %i.t, align 8, !tbaa !135
  %i.u = zext i8 %i.n to i64
  %i.v = call i32 @FT_Stream_EnterFrame(ptr noundef %3, i64 noundef %i.u) #18 ; 3 uses
  store i32 %i.v, ptr %i.b, align 4, !tbaa !67
  %.not136 = icmp eq i32 %i.v, 0
  br i1 %.not136, label %bb.h, label %.loopexit151

bb.h:                                             ; preds = %bb.g
  %.not137164 = icmp eq i8 %i.n, 0
  br i1 %.not137164, label %.thread, label %.lr.ph168.preheader

.lr.ph168.preheader:                              ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !254  ; 2 uses
  %i.y = zext i32 %2 to i64                       ; 3 uses
  %6 = zext i8 %i.n to i64                        ; 2 uses
  %xtraiter244 = and i64 %6, 1
  %i.z = icmp eq i8 %i.n, 1
  br i1 %i.z, label %.lr.ph168.epil.preheader, label %.lr.ph168.preheader.new

.lr.ph168.preheader.new:                          ; preds = %.lr.ph168.preheader
  %unroll_iter = and i64 %6, 254
  br label %.lr.ph168

.lr.ph168:                                        ; preds = %bb.k, %.lr.ph168.preheader.new
  %indvars.iv188 = phi i64 [ 1, %.lr.ph168.preheader.new ], [ %indvars.iv.next189.1, %bb.k ] ; 5 uses
  %.0116166 = phi ptr [ %i.x, %.lr.ph168.preheader.new ], [ %i.ak, %bb.k ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph168.preheader.new ], [ %niter.next.1, %bb.k ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.0116166, i64 1
  %i.ab = icmp samesign ult i64 %indvars.iv188, %i.y
  br i1 %i.ab, label %bb.i, label %.lr.ph168.1

bb.i:                                             ; preds = %.lr.ph168
  %i.ac = load i8, ptr %.0116166, align 1, !tbaa !130
  %i.ad = trunc i64 %indvars.iv188 to i16
  %i.ae = zext i8 %i.ac to i64                    ; 2 uses
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.ae
  store i16 %i.ad, ptr %i.af, align 2, !tbaa !66
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !71
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %indvars.iv188
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !66
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.ae
  store i16 %i.ai, ptr %i.aj, align 2, !tbaa !66
  br label %.lr.ph168.1

.lr.ph168.1:                                      ; preds = %.lr.ph168, %bb.i
  %indvars.iv.next189 = add nuw nsw i64 %indvars.iv188, 1 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0116166, i64 2 ; 2 uses
  %i.al = icmp samesign ult i64 %indvars.iv.next189, %i.y
  br i1 %i.al, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph168.1
  %i.am = load i8, ptr %i.aa, align 1, !tbaa !130
  %i.an = trunc i64 %indvars.iv.next189 to i16
  %i.ao = zext i8 %i.am to i64                    ; 2 uses
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.ao
  store i16 %i.an, ptr %i.ap, align 2, !tbaa !66
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !71
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %indvars.iv.next189
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !66
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.ao
  store i16 %i.as, ptr %i.at, align 2, !tbaa !66
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph168.1
  %indvars.iv.next189.1 = add nuw nsw i64 %indvars.iv188, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.thread.loopexit.unr-lcssa, label %.lr.ph168, !llvm.loop !621

.thread.loopexit.unr-lcssa:                       ; preds = %bb.k
  %lcmp.mod245.not = icmp eq i64 %xtraiter244, 0
  br i1 %lcmp.mod245.not, label %.thread, label %.lr.ph168.epil.preheader

.lr.ph168.epil.preheader:                         ; preds = %.thread.loopexit.unr-lcssa, %.lr.ph168.preheader
  %indvars.iv188.epil.init = phi i64 [ 1, %.lr.ph168.preheader ], [ %indvars.iv.next189.1, %.thread.loopexit.unr-lcssa ] ; 3 uses
  %.0116166.epil.init = phi ptr [ %i.x, %.lr.ph168.preheader ], [ %i.ak, %.thread.loopexit.unr-lcssa ]
  %lcmp.mod246 = trunc i8 %i.n to i1
  call void @llvm.assume(i1 %lcmp.mod246)
  %i.au = icmp samesign ult i64 %indvars.iv188.epil.init, %i.y
  br i1 %i.au, label %bb.l, label %.thread

bb.l:                                             ; preds = %.lr.ph168.epil.preheader
  %i.av = load i8, ptr %.0116166.epil.init, align 1, !tbaa !130
  %i.aw = trunc i64 %indvars.iv188.epil.init to i16
  %i.ax = zext i8 %i.av to i64                    ; 2 uses
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.ax
  store i16 %i.aw, ptr %i.ay, align 2, !tbaa !66
  %i.az = load ptr, ptr %i.c, align 8, !tbaa !71
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %indvars.iv188.epil.init
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !66
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.ax
  store i16 %i.bb, ptr %i.bc, align 2, !tbaa !66
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit.unr-lcssa, %bb.l, %.lr.ph168.epil.preheader, %bb.h
  call void @FT_Stream_ExitFrame(ptr noundef %3) #18
  br label %.thread146

bb.m:                                             ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store i32 0, ptr %i.bd, align 8, !tbaa !135
  %.not177 = icmp eq i8 %i.n, 0
  br i1 %.not177, label %.thread146, label %.lr.ph162.preheader

.lr.ph162.preheader:                              ; preds = %bb.m
  %i.be = zext i32 %2 to i64                      ; 2 uses
  br label %.lr.ph162

.lr.ph162:                                        ; preds = %.lr.ph162.preheader, %._crit_edge
  %.0114160 = phi i32 [ %i.bo, %._crit_edge ], [ 1, %.lr.ph162.preheader ] ; 5 uses
  %.1119159 = phi i32 [ %i.cx, %._crit_edge ], [ 0, %.lr.ph162.preheader ]
  %i.bf = call zeroext i8 @FT_Stream_ReadByte(ptr noundef %3, ptr noundef nonnull %i.b) #18 ; 2 uses
  %i.bg = zext i8 %i.bf to i32                    ; 2 uses
  %i.bh = load i32, ptr %i.b, align 4, !tbaa !67  ; 2 uses
  %.not133 = icmp eq i32 %i.bh, 0
  br i1 %.not133, label %bb.n, label %.loopexit151

bb.n:                                             ; preds = %.lr.ph162
  %i.bi = call zeroext i8 @FT_Stream_ReadByte(ptr noundef %3, ptr noundef nonnull %i.b) #18
  %i.bj = load i32, ptr %i.b, align 4, !tbaa !67  ; 2 uses
  %.not134 = icmp eq i32 %i.bj, 0
  br i1 %.not134, label %bb.o, label %.loopexit151

bb.o:                                             ; preds = %bb.n
  %i.bk = zext i8 %i.bi to i32                    ; 2 uses
  %i.bl = add nuw nsw i32 %i.bk, 1                ; 3 uses
  %i.bm = load i32, ptr %i.bd, align 8, !tbaa !135 ; 2 uses
  %.not135 = icmp ugt i32 %i.bm, %i.bk
  br i1 %.not135, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 %i.bl, ptr %i.bd, align 8, !tbaa !135
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bn = phi i32 [ %i.bl, %bb.p ], [ %i.bm, %bb.o ]
  %i.bo = add i32 %i.bl, %.0114160                ; 3 uses
  %i.bp = icmp ult i32 %.0114160, %i.bo
  br i1 %i.bp, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.q
  %i.bq = zext i32 %.0114160 to i64               ; 5 uses
  %wide.trip.count = zext i32 %i.bo to i64        ; 3 uses
  %i.br = sub nsw i64 %wide.trip.count, %i.bq
  %xtraiter = and i64 %i.br, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.bs = icmp ult i32 %.0114160, %2
  br i1 %i.bs, label %bb.r, label %.lr.ph.prol.loopexit.unr-lcssa

bb.r:                                             ; preds = %.lr.ph.prol
  %i.bt = trunc i32 %.0114160 to i16
  %i.bu = zext i8 %i.bf to i64                    ; 2 uses
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.bu
  store i16 %i.bt, ptr %i.bv, align 2, !tbaa !66
  %i.bw = load ptr, ptr %i.c, align 8, !tbaa !71
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %i.bq
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !66
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.bu
  store i16 %i.by, ptr %i.bz, align 2, !tbaa !66
  br label %.lr.ph.prol.loopexit.unr-lcssa

.lr.ph.prol.loopexit.unr-lcssa:                   ; preds = %bb.r, %.lr.ph.prol
  %indvars.iv.next184.prol = add nuw nsw i64 %i.bq, 1
  %i.ca = add nuw nsw i32 %i.bg, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv183.unr = phi i64 [ %i.bq, %.lr.ph.preheader ], [ %indvars.iv.next184.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %.0117157.unr = phi i32 [ %i.bg, %.lr.ph.preheader ], [ %i.ca, %.lr.ph.prol.loopexit.unr-lcssa ]
  %i.cb = add nsw i64 %wide.trip.count, -1
  %i.cc = icmp eq i64 %i.cb, %i.bq
  br i1 %i.cc, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %bb.u
  %indvars.iv183 = phi i64 [ %indvars.iv.next184.1, %bb.u ], [ %indvars.iv183.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.0117157 = phi i32 [ %i.cw, %bb.u ], [ %.0117157.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.cd = icmp samesign ult i64 %indvars.iv183, %i.be
  %i.ce = icmp ult i32 %.0117157, 256
  %or.cond = select i1 %i.cd, i1 %i.ce, i1 false
  br i1 %or.cond, label %bb.s, label %.lr.ph.1

bb.s:                                             ; preds = %.lr.ph
  %i.cf = trunc i64 %indvars.iv183 to i16
  %i.cg = zext nneg i32 %.0117157 to i64          ; 2 uses
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.cg
  store i16 %i.cf, ptr %i.ch, align 2, !tbaa !66
  %i.ci = load ptr, ptr %i.c, align 8, !tbaa !71
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv183
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !66
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.cg
  store i16 %i.ck, ptr %i.cl, align 2, !tbaa !66
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.s
  %indvars.iv.next184 = add nuw nsw i64 %indvars.iv183, 1 ; 3 uses
  %i.cm = add i32 %.0117157, 1                    ; 2 uses
  %i.cn = icmp samesign ult i64 %indvars.iv.next184, %i.be
  %i.co = icmp ult i32 %i.cm, 256
  %or.cond.1 = select i1 %i.cn, i1 %i.co, i1 false
  br i1 %or.cond.1, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph.1
  %i.cp = trunc i64 %indvars.iv.next184 to i16
  %i.cq = zext nneg i32 %i.cm to i64              ; 2 uses
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.cq
  store i16 %i.cp, ptr %i.cr, align 2, !tbaa !66
  %i.cs = load ptr, ptr %i.c, align 8, !tbaa !71
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %indvars.iv.next184
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !66
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.cq
  store i16 %i.cu, ptr %i.cv, align 2, !tbaa !66
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph.1
  %indvars.iv.next184.1 = add nuw nsw i64 %indvars.iv183, 2 ; 2 uses
  %i.cw = add i32 %.0117157, 2
  %exitcond186.not.1 = icmp eq i64 %indvars.iv.next184.1, %wide.trip.count
  br i1 %exitcond186.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !622

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %bb.u, %bb.q
  %i.cx = add nuw nsw i32 %.1119159, 1            ; 2 uses
  %exitcond187.not = icmp eq i32 %i.cx, %i.o
  br i1 %exitcond187.not, label %._crit_edge163, label %.lr.ph162, !llvm.loop !623

._crit_edge163:                                   ; preds = %._crit_edge
  %i.cy = icmp ugt i32 %i.bn, 256
  br i1 %i.cy, label %bb.v, label %.thread146

bb.v:                                             ; preds = %._crit_edge163
  store i32 256, ptr %i.bd, align 8, !tbaa !135
  br label %.thread146

.thread146:                                       ; preds = %bb.m, %._crit_edge163, %bb.v, %.thread
  %i.cz = load i32, ptr %0, align 8, !tbaa !144
  %i.da = and i32 %i.cz, 128
  %.not138 = icmp eq i32 %i.da, 0
  br i1 %.not138, label %.thread146..loopexit151_crit_edge, label %bb.w

.thread146..loopexit151_crit_edge:                ; preds = %.thread146
  %.pre = load i32, ptr %i.b, align 4, !tbaa !67
  br label %.loopexit151

bb.w:                                             ; preds = %.thread146
  %i.db = call zeroext i8 @FT_Stream_ReadByte(ptr noundef %3, ptr noundef nonnull %i.b) #18 ; 2 uses
  %i.dc = zext i8 %i.db to i32
  %i.dd = load i32, ptr %i.b, align 4, !tbaa !67  ; 2 uses
  %.not139 = icmp eq i32 %i.dd, 0
  %i.de = icmp ne i8 %i.db, 0
  %or.cond176 = select i1 %.not139, i1 %i.de, i1 false
  br i1 %or.cond176, label %.lr.ph173, label %.loopexit151

.lr.ph173:                                        ; preds = %bb.w
  %.not178 = icmp eq i32 %2, 0
  %wide.trip.count196 = zext i32 %2 to i64
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph173, %.loopexit
  %.2120172 = phi i32 [ 0, %.lr.ph173 ], [ %i.dr, %.loopexit ]
  %i.df = call zeroext i8 @FT_Stream_ReadByte(ptr noundef %3, ptr noundef nonnull %i.b) #18
  %i.dg = load i32, ptr %i.b, align 4, !tbaa !67  ; 2 uses
  %.not140 = icmp eq i32 %i.dg, 0
  br i1 %.not140, label %bb.y, label %.loopexit151

bb.y:                                             ; preds = %bb.x
  %i.dh = call zeroext i16 @FT_Stream_ReadUShort(ptr noundef %3, ptr noundef nonnull %i.b) #18 ; 2 uses
  %i.di = load i32, ptr %i.b, align 4, !tbaa !67  ; 2 uses
  %.not141 = icmp eq i32 %i.di, 0
  br i1 %.not141, label %bb.z, label %.loopexit151

bb.z:                                             ; preds = %bb.y
  %i.dj = zext i8 %i.df to i64                    ; 2 uses
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.dj
  store i16 %i.dh, ptr %i.dk, align 2, !tbaa !66
  br i1 %.not178, label %.loopexit, label %.lr.ph171

.lr.ph171:                                        ; preds = %bb.z
  %i.dl = load ptr, ptr %i.c, align 8, !tbaa !71
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph171, %bb.ac
  %indvars.iv193 = phi i64 [ 0, %.lr.ph171 ], [ %indvars.iv.next194, %bb.ac ] ; 3 uses
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %i.dl, i64 %indvars.iv193
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !66
  %i.do = icmp eq i16 %i.dn, %i.dh
  br i1 %i.do, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dp = trunc i64 %indvars.iv193 to i16
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.dj
  store i16 %i.dp, ptr %i.dq, align 2, !tbaa !66
  br label %.loopexit

bb.ac:                                            ; preds = %bb.aa
  %indvars.iv.next194 = add nuw nsw i64 %indvars.iv193, 1 ; 2 uses
  %exitcond197.not = icmp eq i64 %indvars.iv.next194, %wide.trip.count196
  br i1 %exitcond197.not, label %.loopexit, label %bb.aa, !llvm.loop !624

.loopexit:                                        ; preds = %bb.ac, %bb.z, %bb.ab
  %i.dr = add nuw nsw i32 %.2120172, 1            ; 2 uses
  %exitcond198.not = icmp eq i32 %i.dr, %i.dc
  br i1 %exitcond198.not, label %.loopexit151, label %bb.x, !llvm.loop !625

bb.ad:                                            ; preds = %bb.b
  %trunc = trunc nuw i64 %5 to i1
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  br i1 %trunc, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(512) %i.ds, ptr noundef nonnull align 16 dereferenceable(512) @cff_standard_encoding, i64 512, i1 false)
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(512) %i.ds, ptr noundef nonnull align 16 dereferenceable(512) @cff_expert_encoding, i64 512, i1 false)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %5, ptr %i.dt, align 8, !tbaa !136
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 0, ptr %i.du, align 8, !tbaa !135
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !141
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 0, ptr %i.a, align 4, !tbaa !67
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !147 ; 2 uses
  %.not.i = icmp eq i32 %i.dy, 0
  br i1 %.not.i, label %.preheader27.i, label %cff_charset_compute_cids.exit

.preheader27.i:                                   ; preds = %bb.ag
  %.not34.i = icmp eq i32 %2, 0                   ; 2 uses
  br i1 %.not34.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %.preheader27.i
  %i.dz = load ptr, ptr %i.c, align 8, !tbaa !71  ; 3 uses
  %wide.trip.count.i = zext i32 %2 to i64         ; 6 uses
  %min.iters.check = icmp ult i32 %2, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check227 = icmp ult i32 %2, 16
  br i1 %min.iters.check227, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
end_hunk_1
