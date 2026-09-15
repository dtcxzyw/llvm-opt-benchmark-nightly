Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib-ng/original/deflate?download=true
inline.NumInlined: 41
inline.NumDeleted: 11
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@zng_deflateCopy:bb.a
bb.k:                                             ; preds = %bb.j
  %i.cg = load ptr, ptr %i.bo, align 8, !tbaa !40 ; 4 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %zng_deflateEnd.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 6000
  %i.cj = load ptr, ptr %i.ci, align 16, !tbaa !37 ; 3 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %zng_deflateEnd.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cl = load ptr, ptr %i.cg, align 64, !tbaa !41
  %.not.i.i = icmp eq ptr %i.cl, %0
  br i1 %.not.i.i, label %deflateStateCheck.exit.i, label %zng_deflateEnd.exit

deflateStateCheck.exit.i:                         ; preds = %bb.m
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cg, i64 48
  %i.cn = load i32, ptr %i.cm, align 16, !tbaa !42
  %i.co = add i32 %i.cn, -1
  %or.cond.i.i = icmp ult i32 %i.co, 8
  br i1 %or.cond.i.i, label %free_deflate.exit.i, label %zng_deflateEnd.exit

free_deflate.exit.i:                              ; preds = %deflateStateCheck.exit.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !19
  %i.cr = load ptr, ptr %i.am, align 8, !tbaa !14
  %i.cs = load ptr, ptr %i.cj, align 8, !tbaa !17
  tail call void %i.cq(ptr noundef %i.cr, ptr noundef %i.cs) #11, !inline_history !134
  store ptr null, ptr %i.bo, align 8, !tbaa !40
  br label %zng_deflateEnd.exit

bb.n:                                             ; preds = %bb.h
  %i.ct = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !38
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bn, i64 64 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 64, !tbaa !46
  %i.cx = shl i32 %i.cw, 1
  %i.cy = zext i32 %i.cx to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bq, ptr align 1 %i.cu, i64 %i.cy, i1 false)
  %i.cz = load ptr, ptr %i.bt, align 32, !tbaa !135
  %i.da = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.db = load ptr, ptr %i.da, align 32, !tbaa !135
  %i.dc = load i32, ptr %i.cv, align 64, !tbaa !46
  %i.dd = zext i32 %i.dc to i64
  %i.de = shl nuw nsw i64 %i.dd, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cz, ptr align 1 %i.db, i64 %i.de, i1 false)
  %i.df = load ptr, ptr %i.bv, align 8, !tbaa !63
  %i.dg = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !63
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(131072) %i.df, ptr noundef nonnull align 1 dereferenceable(131072) %i.dh, i64 131072, i1 false)
  %i.di = load ptr, ptr %i.bx, align 8, !tbaa !39
  %i.dj = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !39
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bn, i64 5932 ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !48
  %i.dn = mul i32 %i.dm, 5
  %i.do = zext i32 %i.dn to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.di, ptr align 1 %i.dk, i64 %i.do, i1 false)
  %i.dp = load ptr, ptr %i.bx, align 8, !tbaa !39 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.dr = load ptr, ptr %i.dq, align 16, !tbaa !58
  %i.ds = load ptr, ptr %i.dj, align 8, !tbaa !39
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = sub i64 %i.dt, %i.du
  %i.dw = getelementptr inbounds i8, ptr %i.dp, i64 %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store ptr %i.dw, ptr %i.dx, align 16, !tbaa !58
  %i.dy = load i32, ptr %i.dl, align 4, !tbaa !48 ; 2 uses
  %i.dz = shl i32 %i.dy, 1
  %i.ea = zext i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.bn, i64 5936
  store ptr %i.eb, ptr %i.ec, align 16, !tbaa !50
  %i.ed = shl i32 %i.dy, 2
  %i.ee = zext i32 %i.ed to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bn, i64 5944
  store ptr %i.ef, ptr %i.eg, align 8, !tbaa !51
  %i.eh = getelementptr inbounds nuw i8, ptr %i.bn, i64 260
  %i.ei = getelementptr inbounds nuw i8, ptr %i.bn, i64 2952
  store ptr %i.eh, ptr %i.ei, align 8, !tbaa !136
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bn, i64 2552
  %i.ek = getelementptr inbounds nuw i8, ptr %i.bn, i64 2976
  store ptr %i.ej, ptr %i.ek, align 32, !tbaa !137
  %i.el = getelementptr inbounds nuw i8, ptr %i.bn, i64 2796
  %i.em = getelementptr inbounds nuw i8, ptr %i.bn, i64 3000
  store ptr %i.el, ptr %i.em, align 8, !tbaa !138
  br label %zng_deflateEnd.exit

zng_deflateEnd.exit:                              ; preds = %bb.g, %bb.e, %bb.f, %bb.b, %bb.c, %bb.a, %bb.d, %free_deflate.exit.i, %deflateStateCheck.exit.i, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.n, %deflateStateCheck.exit
  %.1 = phi i32 [ -2, %deflateStateCheck.exit ], [ 0, %bb.n ], [ -2, %bb.e ], [ -4, %bb.g ], [ -4, %free_deflate.exit.i ], [ -4, %bb.i ], [ -4, %bb.j ], [ -4, %bb.k ], [ -4, %bb.l ], [ -4, %bb.m ], [ -4, %deflateStateCheck.exit.i ], [ -2, %bb.d ], [ -2, %bb.a ], [ -2, %bb.c ], [ -2, %bb.b ], [ -2, %bb.f ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -6, 1) i32 @zng_deflateSetParams(ptr noundef %0, ptr nofree noundef captures(address) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %2, 0                       ; 2 uses
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %2, 7                       ; 3 uses
  %i.a = icmp ult i64 %2, 8
  br i1 %i.a, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %2, -8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.039101 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.r, %.lr.ph ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.b = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.039101
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 0, ptr %i.c, align 8, !tbaa !100
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.039101
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i32 0, ptr %i.e, align 8, !tbaa !100
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.039101
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  store i32 0, ptr %i.g, align 8, !tbaa !100
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.039101
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  store i32 0, ptr %i.i, align 8, !tbaa !100
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.039101
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 152
  store i32 0, ptr %i.k, align 8, !tbaa !100
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.039101
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 184
  store i32 0, ptr %i.m, align 8, !tbaa !100
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.039101
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 216
  store i32 0, ptr %i.o, align 8, !tbaa !100
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.039101
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 248
  store i32 0, ptr %i.q, align 8, !tbaa !100
  %i.r = add nuw i64 %.039101, 8                  ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !139

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.039101.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.r, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod224 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod224)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.039101.epil = phi i64 [ %i.u, %.lr.ph.epil ], [ %.039101.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.039101.epil
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i32 0, ptr %i.t, align 8, !tbaa !100
  %i.u = add nuw i64 %.039101.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !140

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %i.v = icmp eq ptr %0, null
  br i1 %i.v, label %deflateStateCheck.exit.thread, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !13
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %deflateStateCheck.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !18
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %deflateStateCheck.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !40 ; 7 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %deflateStateCheck.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 6000
  %i.ag = load ptr, ptr %i.af, align 16, !tbaa !37
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %deflateStateCheck.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = load ptr, ptr %i.ad, align 64, !tbaa !41
  %.not.i = icmp eq ptr %i.ai, %0
  br i1 %.not.i, label %deflateStateCheck.exit, label %deflateStateCheck.exit.thread

deflateStateCheck.exit:                           ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.ak = load i32, ptr %i.aj, align 16, !tbaa !42
  %i.al = add i32 %i.ak, -1
  %or.cond.i = icmp ult i32 %i.al, 8
  br i1 %or.cond.i, label %3, label %deflateStateCheck.exit.thread

3:                                                ; preds = %deflateStateCheck.exit
  br i1 %.not, label %bb.k, label %.lr.ph109.outer

.lr.ph109.outer:                                  ; preds = %3, %.thread
  %i.am = phi i1 [ false, %.thread ], [ true, %3 ]
  %.036106.ph = phi i32 [ %.036106, %.thread ], [ 0, %3 ]
  %.140105.ph = phi i64 [ %i.at, %.thread ], [ 0, %3 ]
  %.072104.ph = phi ptr [ %.17390, %.thread ], [ null, %3 ]
  %.074103.ph = phi ptr [ %.17588, %.thread ], [ null, %3 ]
  %.076102.ph = phi ptr [ %.17786, %.thread ], [ null, %3 ]
  br label %.lr.ph109

.lr.ph109:                                        ; preds = %.lr.ph109.outer, %bb.j
  %.036106 = phi i32 [ %.13793, %bb.j ], [ %.036106.ph, %.lr.ph109.outer ] ; 2 uses
  %.140105 = phi i64 [ %i.aq, %bb.j ], [ %.140105.ph, %.lr.ph109.outer ] ; 3 uses
  %.072104 = phi ptr [ %.17391, %bb.j ], [ %.072104.ph, %.lr.ph109.outer ] ; 7 uses
  %.074103 = phi ptr [ %.17589, %bb.j ], [ %.074103.ph, %.lr.ph109.outer ] ; 7 uses
  %.076102 = phi ptr [ %.17787, %bb.j ], [ %.076102.ph, %.lr.ph109.outer ] ; 7 uses
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.140105 ; 10 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !102
  switch i32 %i.ao, label %deflateSetParamPre.exit.thread94 [
    i32 0, label %bb.g
    i32 1, label %bb.h
    i32 2, label %bb.i
  ]

bb.g:                                             ; preds = %.lr.ph109
  %.not.i56 = icmp eq ptr %.076102, null
  br i1 %.not.i56, label %deflateSetParamPre.exit, label %.thread.sink.split

bb.h:                                             ; preds = %.lr.ph109
  %.not.i58 = icmp eq ptr %.074103, null
  br i1 %.not.i58, label %deflateSetParamPre.exit, label %.thread.sink.split

bb.i:                                             ; preds = %.lr.ph109
  %.not.i61 = icmp eq ptr %.072104, null
  br i1 %.not.i61, label %deflateSetParamPre.exit, label %.thread.sink.split

deflateSetParamPre.exit.thread94:                 ; preds = %.lr.ph109
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store i32 -6, ptr %i.ap, align 8, !tbaa !100
  br label %bb.j

deflateSetParamPre.exit:                          ; preds = %bb.i, %bb.h, %bb.g
  %.177 = phi ptr [ %i.an, %bb.g ], [ %.076102, %bb.h ], [ %.076102, %bb.i ] ; 2 uses
  %.175 = phi ptr [ %.074103, %bb.g ], [ %i.an, %bb.h ], [ %.074103, %bb.i ] ; 2 uses
  %.173 = phi ptr [ %.072104, %bb.g ], [ %.072104, %bb.h ], [ %i.an, %bb.i ] ; 2 uses
  %.038.in.in.in = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %.038.in.in = load i64, ptr %.038.in.in.in, align 8, !tbaa !103
  %.038.in = icmp ugt i64 %.038.in.in, 3
  br i1 %.038.in, label %bb.j, label %.thread

bb.j:                                             ; preds = %deflateSetParamPre.exit.thread94, %deflateSetParamPre.exit
  %.13793 = phi i32 [ 1, %deflateSetParamPre.exit.thread94 ], [ %.036106, %deflateSetParamPre.exit ] ; 2 uses
  %.17391 = phi ptr [ %.072104, %deflateSetParamPre.exit.thread94 ], [ %.173, %deflateSetParamPre.exit ] ; 2 uses
  %.17589 = phi ptr [ %.074103, %deflateSetParamPre.exit.thread94 ], [ %.175, %deflateSetParamPre.exit ] ; 2 uses
  %.17787 = phi ptr [ %.076102, %deflateSetParamPre.exit.thread94 ], [ %.177, %deflateSetParamPre.exit ] ; 2 uses
  %i.aq = add nuw i64 %.140105, 1                 ; 2 uses
  %exitcond116.not = icmp eq i64 %i.aq, %2
  br i1 %exitcond116.not, label %._crit_edge110, label %.lr.ph109, !llvm.loop !141

.thread.sink.split:                               ; preds = %bb.i, %bb.h, %bb.g
  %.076102.lcssa182.sink = phi ptr [ %.074103, %bb.h ], [ %.076102, %bb.g ], [ %.072104, %bb.i ]
  %.17390.ph = phi ptr [ %.072104, %bb.h ], [ %.072104, %bb.g ], [ %i.an, %bb.i ]
  %.17588.ph = phi ptr [ %i.an, %bb.h ], [ %.074103, %bb.g ], [ %.074103, %bb.i ]
  %.17786.ph = phi ptr [ %.076102, %bb.h ], [ %i.an, %bb.g ], [ %.076102, %bb.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.076102.lcssa182.sink, i64 24
  store i32 -5, ptr %i.ar, align 8, !tbaa !100
  br label %.thread

.thread:                                          ; preds = %deflateSetParamPre.exit, %.thread.sink.split
  %.17390 = phi ptr [ %.17390.ph, %.thread.sink.split ], [ %.173, %deflateSetParamPre.exit ]
  %.17588 = phi ptr [ %.17588.ph, %.thread.sink.split ], [ %.175, %deflateSetParamPre.exit ]
  %.17786 = phi ptr [ %.17786.ph, %.thread.sink.split ], [ %.177, %deflateSetParamPre.exit ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store i32 -5, ptr %i.as, align 8, !tbaa !100
  %i.at = add nuw i64 %.140105, 1                 ; 2 uses
  %exitcond116.not136 = icmp eq i64 %i.at, %2
  br i1 %exitcond116.not136, label %deflateStateCheck.exit.thread, label %.lr.ph109.outer, !llvm.loop !141

._crit_edge110:                                   ; preds = %bb.j
  %i.au = icmp eq i32 %.13793, 0
  %i.av = select i1 %i.au, i32 0, i32 -6
  br i1 %i.am, label %bb.k, label %deflateStateCheck.exit.thread

bb.k:                                             ; preds = %3, %._crit_edge110
  %.036.lcssa132 = phi i32 [ %i.av, %._crit_edge110 ], [ 0, %3 ] ; 2 uses
  %.072.lcssa131 = phi ptr [ %.17391, %._crit_edge110 ], [ null, %3 ] ; 2 uses
  %.074.lcssa130 = phi ptr [ %.17589, %._crit_edge110 ], [ null, %3 ] ; 3 uses
  %.076.lcssa129 = phi ptr [ %.17787, %._crit_edge110 ], [ null, %3 ] ; 3 uses
  %i.aw = icmp ne ptr %.076.lcssa129, null        ; 3 uses
  %i.ax = icmp ne ptr %.074.lcssa130, null        ; 3 uses
  %or.cond = select i1 %i.aw, i1 true, i1 %i.ax
  br i1 %or.cond, label %bb.l, label %bb.w

bb.l:                                             ; preds = %bb.k
  br i1 %i.aw, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ad, i64 176
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %.076.lcssa129, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !104
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.in = phi ptr [ %i.ay, %bb.m ], [ %i.ba, %bb.n ]
  %i.bb = load i32, ptr %.in, align 4, !tbaa !87
  br i1 %i.ax, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ad, i64 180
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bd = getelementptr inbounds nuw i8, ptr %.074.lcssa130, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !104
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.in48 = phi ptr [ %i.bc, %bb.p ], [ %i.be, %bb.q ]
  %i.bf = load i32, ptr %.in48, align 4, !tbaa !87
  %i.bg = tail call i32 @zng_deflateParams(ptr noundef nonnull %0, i32 noundef %i.bb, i32 noundef %i.bf)
  %.not49 = icmp eq i32 %i.bg, 0
  br i1 %.not49, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  br i1 %i.aw, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bh = getelementptr inbounds nuw i8, ptr %.076.lcssa129, i64 24
  store i32 -2, ptr %i.bh, align 8, !tbaa !100
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  br i1 %i.ax, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bi = getelementptr inbounds nuw i8, ptr %.074.lcssa130, i64 24
  store i32 -2, ptr %i.bi, align 8, !tbaa !100
  br label %bb.w

bb.w:                                             ; preds = %bb.r, %bb.v, %bb.u, %bb.k
  %.1 = phi i32 [ %.036.lcssa132, %bb.k ], [ -2, %bb.u ], [ -2, %bb.v ], [ %.036.lcssa132, %bb.r ] ; 2 uses
  %.not52 = icmp eq ptr %.072.lcssa131, null
  br i1 %.not52, label %deflateStateCheck.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bj = getelementptr inbounds nuw i8, ptr %.072.lcssa131, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !104
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !87
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  store i32 %i.bl, ptr %i.bm, align 8, !tbaa !54
  br label %deflateStateCheck.exit.thread

deflateStateCheck.exit.thread:                    ; preds = %.thread, %bb.w, %bb.x, %bb.e, %bb.f, %bb.b, %bb.c, %._crit_edge, %bb.d, %._crit_edge110, %deflateStateCheck.exit
  %.0 = phi i32 [ %.1, %bb.w ], [ -2, %deflateStateCheck.exit ], [ -5, %._crit_edge110 ], [ -2, %bb.d ], [ -2, %._crit_edge ], [ -2, %bb.c ], [ -2, %bb.b ], [ -2, %bb.f ], [ -2, %bb.e ], [ %.1, %bb.x ], [ -5, %.thread ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -6, 1) i32 @zng_deflateGetParams(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef captures(none) %1, i64 noundef %2) local_unnamed_addr #8 {
bb.a:
  %.not = icmp eq i64 %2, 0                       ; 2 uses
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %2, 7                       ; 3 uses
  %i.a = icmp ult i64 %2, 8
  br i1 %i.a, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %2, -8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.04149 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.r, %.lr.ph ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.b = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.04149
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 0, ptr %i.c, align 8, !tbaa !100
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.04149
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i32 0, ptr %i.e, align 8, !tbaa !100
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.04149
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  store i32 0, ptr %i.g, align 8, !tbaa !100
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.04149
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  store i32 0, ptr %i.i, align 8, !tbaa !100
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.04149
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 152
  store i32 0, ptr %i.k, align 8, !tbaa !100
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.04149
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 184
  store i32 0, ptr %i.m, align 8, !tbaa !100
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.04149
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 216
  store i32 0, ptr %i.o, align 8, !tbaa !100
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.04149
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 248
  store i32 0, ptr %i.q, align 8, !tbaa !100
  %i.r = add nuw i64 %.04149, 8                   ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !142

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.04149.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.r, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod63 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod63)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.04149.epil = phi i64 [ %i.u, %.lr.ph.epil ], [ %.04149.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.04149.epil
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i32 0, ptr %i.t, align 8, !tbaa !100
  %i.u = add nuw i64 %.04149.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !143

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %i.v = icmp eq ptr %0, null
  br i1 %i.v, label %deflateStateCheck.exit.thread, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !13
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %deflateStateCheck.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !18
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %deflateStateCheck.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !40 ; 7 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %deflateStateCheck.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 6000
  %i.ag = load ptr, ptr %i.af, align 16, !tbaa !37
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %deflateStateCheck.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = load ptr, ptr %i.ad, align 64, !tbaa !41
  %.not.i = icmp eq ptr %i.ai, %0
  br i1 %.not.i, label %deflateStateCheck.exit, label %deflateStateCheck.exit.thread

deflateStateCheck.exit:                           ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.ak = load i32, ptr %i.aj, align 16, !tbaa !42
  %i.al = add i32 %i.ak, -9
  %or.cond.i = icmp ult i32 %i.al, -8             ; 2 uses
  %brmerge = or i1 %or.cond.i, %.not
  %.mux = select i1 %or.cond.i, i32 -2, i32 0
  br i1 %brmerge, label %deflateStateCheck.exit.thread, label %.lr.ph54

.lr.ph54:                                         ; preds = %deflateStateCheck.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 180
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 176
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph54, %bb.r
  %.052 = phi i32 [ 0, %.lr.ph54 ], [ %.1, %bb.r ] ; 6 uses
  %.03951 = phi i32 [ 0, %.lr.ph54 ], [ %spec.select, %bb.r ]
  %.14250 = phi i64 [ 0, %.lr.ph54 ], [ %i.bq, %bb.r ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.14250 ; 12 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !102
  switch i32 %i.aq, label %bb.q [
    i32 0, label %bb.h
    i32 1, label %bb.k
    i32 2, label %bb.n
  ]

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !103
  %i.at = icmp ult i64 %i.as, 4
  br i1 %i.at, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store i32 -5, ptr %i.au, align 8, !tbaa !100
  br label %bb.r

bb.j:                                             ; preds = %bb.h
  %i.av = load i32, ptr %i.ao, align 16, !tbaa !52
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !104
  store i32 %i.av, ptr %i.ax, align 4, !tbaa !87
  br label %bb.r

bb.k:                                             ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !103
  %i.ba = icmp ult i64 %i.az, 4
  br i1 %i.ba, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store i32 -5, ptr %i.bb, align 8, !tbaa !100
  br label %bb.r

bb.m:                                             ; preds = %bb.k
  %i.bc = load i32, ptr %i.an, align 4, !tbaa !53
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !104
  store i32 %i.bc, ptr %i.be, align 4, !tbaa !87
  br label %bb.r

bb.n:                                             ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !103
  %i.bh = icmp ult i64 %i.bg, 4
  br i1 %i.bh, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store i32 -5, ptr %i.bi, align 8, !tbaa !100
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.bj = load i32, ptr %i.am, align 8, !tbaa !54
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !104
  store i32 %i.bj, ptr %i.bl, align 4, !tbaa !87
  br label %bb.r

bb.q:                                             ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store i32 -6, ptr %i.bm, align 8, !tbaa !100
  br label %bb.r

bb.r:                                             ; preds = %bb.o, %bb.p, %bb.l, %bb.m, %bb.i, %bb.j, %bb.q
  %.1 = phi i32 [ 1, %bb.q ], [ %.052, %bb.i ], [ %.052, %bb.j ], [ %.052, %bb.l ], [ %.052, %bb.m ], [ %.052, %bb.o ], [ %.052, %bb.p ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !100
  %i.bp = icmp eq i32 %i.bo, -5
  %spec.select = select i1 %i.bp, i32 1, i32 %.03951 ; 2 uses
  %i.bq = add nuw i64 %.14250, 1                  ; 2 uses
  %exitcond58.not = icmp eq i64 %i.bq, %2
  br i1 %exitcond58.not, label %._crit_edge55.loopexit, label %bb.g, !llvm.loop !144

end_hunk_0
