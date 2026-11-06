Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rtextures?download=true
inline.NumInlined: 812
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 82
loop-unroll.NumUnrolled: 114
begin_hunk_0_@rl_load_dds_from_memory:bb.a
  br i1 %i.co, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.ac
  %i.cp = add nsw i64 %i.cm, -1
  %i.cq = lshr i64 %i.cp, 2
  %i.cr = add nuw nsw i64 %i.cq, 1                ; 2 uses
  %xtraiter = and i64 %i.cr, 3                    ; 3 uses
  %i.cs = icmp ult i32 %.0130, 13
  br i1 %i.cs, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.cr, 9223372036854775804
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod212 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod212)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %.lr.ph.epil ], [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cn, i64 %indvars.iv.epil ; 3 uses
  %i.cu = load i8, ptr %i.ct, align 1
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 2 ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 1
  store i8 %i.cw, ptr %i.ct, align 1
  store i8 %i.cu, ptr %i.cv, align 1
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 4
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !49

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.ac
  store i32 7, ptr %4, align 4
  br label %.thread

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cn, i64 %indvars.iv ; 3 uses
  %i.cy = load i8, ptr %i.cx, align 1
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 2 ; 2 uses
  %i.da = load i8, ptr %i.cz, align 1
  store i8 %i.da, ptr %i.cx, align 1
  store i8 %i.cy, ptr %i.cz, align 1
  %i.db = getelementptr inbounds nuw i8, ptr %i.cn, i64 %indvars.iv ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 4 ; 2 uses
  %i.dd = load i8, ptr %i.dc, align 1
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 6 ; 2 uses
  %i.df = load i8, ptr %i.de, align 1
  store i8 %i.df, ptr %i.dc, align 1
  store i8 %i.dd, ptr %i.de, align 1
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cn, i64 %indvars.iv ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 2 uses
  %i.di = load i8, ptr %i.dh, align 1
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 10 ; 2 uses
  %i.dk = load i8, ptr %i.dj, align 1
  store i8 %i.dk, ptr %i.dh, align 1
  store i8 %i.di, ptr %i.dj, align 1
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cn, i64 %indvars.iv ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 12 ; 2 uses
  %i.dn = load i8, ptr %i.dm, align 1
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 14 ; 2 uses
  %i.dp = load i8, ptr %i.do, align 1
  store i8 %i.dp, ptr %i.dm, align 1
  store i8 %i.dn, ptr %i.do, align 1
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 16 ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

bb.ad:                                            ; preds = %bb.y
  %i.dq = and i32 %i.z, -2
  %switch = icmp eq i32 %i.dq, 4
  br i1 %switch, label %bb.ae, label %.thread

bb.ae:                                            ; preds = %bb.ad
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4
  %.not152 = icmp eq i32 %i.ds, 0
  br i1 %.not152, label %.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dt = load i32, ptr %i.t, align 4
  %i.du = icmp ugt i32 %i.dt, 1
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.dw = load i32, ptr %i.dv, align 4            ; 3 uses
  br i1 %i.du, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dx = udiv i32 %i.dw, 3
  %i.dy = add i32 %i.dx, %i.dw
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %.0 = phi i32 [ %i.dy, %bb.ag ], [ %i.dw, %bb.af ]
  %i.dz = sext i32 %.0 to i64                     ; 2 uses
  %i.ea = tail call noalias ptr @malloc(i64 noundef %i.dz) #53 ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ea, ptr nonnull align 4 %i.h, i64 %i.dz, i1 false)
  %i.eb = load i32, ptr %i.dr, align 4
  switch i32 %i.eb, label %.thread [
    i32 827611204, label %bb.ai
    i32 861165636, label %bb.al
    i32 894720068, label %bb.am
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.ec = load i32, ptr %i.y, align 4
  %i.ed = icmp eq i32 %i.ec, 4
  br i1 %i.ed, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i32 14, ptr %4, align 4
  br label %.thread

bb.ak:                                            ; preds = %bb.ai
  store i32 15, ptr %4, align 4
  br label %.thread

bb.al:                                            ; preds = %bb.ah
  store i32 16, ptr %4, align 4
  br label %.thread

bb.am:                                            ; preds = %bb.ah
  store i32 17, ptr %4, align 4
  br label %.thread

.thread:                                          ; preds = %bb.z, %bb.ad, %bb.f, %bb.al, %bb.am, %bb.ak, %bb.aj, %bb.ah, %bb.p, %bb.l, %bb.x, %bb.ae, %._crit_edge, %bb.o, %._crit_edge163, %._crit_edge159, %bb.a
  %.2 = phi ptr [ null, %bb.a ], [ null, %bb.f ], [ %i.ag, %bb.o ], [ %i.ap, %._crit_edge163 ], [ %i.bj, %._crit_edge159 ], [ null, %bb.p ], [ null, %bb.l ], [ %i.ce, %bb.x ], [ %i.cn, %._crit_edge ], [ null, %bb.ad ], [ null, %bb.ae ], [ %i.ea, %bb.ah ], [ %i.ea, %bb.aj ], [ %i.ea, %bb.ak ], [ %i.ea, %bb.am ], [ %i.ea, %bb.al ], [ null, %bb.z ]
  ret ptr %.2
}

declare void @TraceLog(i32 noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @get_gl_texture_formats(i32 noundef %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #7 {
bb.a:
  ret void
}

; Function Attrs: nofree nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noalias noundef ptr @qoi_encode(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #12 {
bb.a:
  %3 = alloca [64 x %union.qoi_rgba_t], align 16  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #52
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %2, null
  %or.cond = or i1 %i.a, %i.b
  %i.c = icmp eq ptr %1, null
  %or.cond3 = or i1 %i.c, %or.cond
  br i1 %or.cond3, label %bb.z, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %1, align 4                ; 3 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.z, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4              ; 3 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.z, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load i8, ptr %i.i, align 4               ; 2 uses
  %i.k = add i8 %i.j, -5
  %or.cond186 = icmp ult i8 %i.k, -2
  br i1 %or.cond186, label %bb.z, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1
  %i.n = icmp ugt i8 %i.m, 1
  br i1 %i.n, label %bb.z, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = udiv i32 400000000, %i.d
  %.not = icmp ult i32 %i.g, %i.o
  br i1 %.not, label %bb.g, label %bb.z

bb.g:                                             ; preds = %bb.f
  %i.p = mul i32 %i.g, %i.d
  %narrow = add nuw nsw i8 %i.j, 1
  %i.q = zext nneg i8 %narrow to i32
  %i.r = mul i32 %i.p, %i.q
  %i.s = add i32 %i.r, 22
  %i.t = sext i32 %i.s to i64
  %i.u = tail call noalias ptr @malloc(i64 noundef %i.t) #53 ; 15 uses
  %.not185 = icmp eq ptr %i.u, null
  br i1 %.not185, label %bb.z, label %bb.h

bb.h:                                             ; preds = %bb.g
  store <4 x i8> <i8 113, i8 111, i8 105, i8 102>, ptr %i.u, align 1
  %i.v = load i32, ptr %1, align 4                ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %i.v)
  store i32 %4, ptr %i.w, align 1
  %i.x = load i32, ptr %i.f, align 4              ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %5 = tail call i32 @llvm.bswap.i32(i32 %i.x)
  store i32 %5, ptr %i.y, align 1
  %i.z = load i8, ptr %i.i, align 4               ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i8 %i.z, ptr %i.aa, align 1
  %i.ab = load i8, ptr %i.l, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 13
  store i8 %i.ab, ptr %i.ac, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %3, i8 0, i64 256, i1 false)
  %i.ad = mul i32 %i.x, %i.v
  %i.ae = zext i8 %i.z to i32                     ; 2 uses
  %i.af = mul i32 %i.ad, %i.ae                    ; 3 uses
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.h
  %i.ah = sub nsw i32 %i.af, %i.ae
  %i.ai = icmp eq i8 %i.z, 4
  %i.aj = zext i8 %i.z to i64
  %i.ak = zext i32 %i.ah to i64
  %i.al = zext nneg i32 %i.af to i64
  br label %bb.i

.preheader.loopexit:                              ; preds = %bb.y
  %i.am = sext i32 %.2212 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.h
  %.0210.lcssa = phi i64 [ 14, %bb.h ], [ %i.am, %.preheader.loopexit ] ; 2 uses
  %scevgep = getelementptr i8, ptr %i.u, i64 %.0210.lcssa
  store i64 72057594037927936, ptr %scevgep, align 1
  %i.an = trunc nsw i64 %.0210.lcssa to i32
  %i.ao = add i32 %i.an, 8
  store i32 %i.ao, ptr %2, align 4
  br label %bb.z

bb.i:                                             ; preds = %.lr.ph, %bb.y
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.y ] ; 3 uses
  %.sroa.0.0219 = phi i8 [ 0, %.lr.ph ], [ %i.aq, %bb.y ] ; 2 uses
  %.sroa.7.0218 = phi i8 [ 0, %.lr.ph ], [ %i.as, %bb.y ] ; 2 uses
  %.sroa.9.0217 = phi i8 [ 0, %.lr.ph ], [ %i.au, %bb.y ] ; 2 uses
  %.sroa.11.0216 = phi i8 [ -1, %.lr.ph ], [ %.sroa.26.1, %bb.y ] ; 3 uses
  %.0170214 = phi i32 [ 0, %.lr.ph ], [ %.2, %bb.y ] ; 5 uses
  %.0210213 = phi i32 [ 14, %.lr.ph ], [ %.2212, %bb.y ] ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv ; 4 uses
  %i.aq = load i8, ptr %i.ap, align 1             ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  %i.as = load i8, ptr %i.ar, align 1             ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  %i.au = load i8, ptr %i.at, align 1             ; 6 uses
  br i1 %i.ai, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 3
  %i.aw = load i8, ptr %i.av, align 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.26.1 = phi i8 [ %i.aw, %bb.j ], [ %.sroa.11.0216, %bb.i ] ; 5 uses
  %.sroa.26.0.insert.ext = zext i8 %.sroa.26.1 to i32 ; 2 uses
  %.sroa.26.0.insert.shift = shl nuw i32 %.sroa.26.0.insert.ext, 24
  %.sroa.19.0.insert.ext = zext i8 %i.au to i32   ; 2 uses
  %.sroa.19.0.insert.shift = shl nuw nsw i32 %.sroa.19.0.insert.ext, 16
  %.sroa.19.0.insert.insert = or disjoint i32 %.sroa.26.0.insert.shift, %.sroa.19.0.insert.shift
  %.sroa.12.0.insert.ext = zext i8 %i.as to i32   ; 2 uses
  %.sroa.12.0.insert.shift = shl nuw nsw i32 %.sroa.12.0.insert.ext, 8
  %.sroa.12.0.insert.insert = or disjoint i32 %.sroa.19.0.insert.insert, %.sroa.12.0.insert.shift
  %.sroa.066.0.insert.ext = zext i8 %i.aq to i32  ; 2 uses
  %.sroa.066.0.insert.insert = or disjoint i32 %.sroa.12.0.insert.insert, %.sroa.066.0.insert.ext ; 2 uses
  %.sroa.11.0.insert.ext = zext i8 %.sroa.11.0216 to i32
  %.sroa.11.0.insert.shift = shl nuw i32 %.sroa.11.0.insert.ext, 24
  %.sroa.9.0.insert.ext = zext i8 %.sroa.9.0217 to i32
  %.sroa.9.0.insert.shift = shl nuw nsw i32 %.sroa.9.0.insert.ext, 16
  %.sroa.9.0.insert.insert = or disjoint i32 %.sroa.9.0.insert.shift, %.sroa.11.0.insert.shift
  %.sroa.7.0.insert.ext = zext i8 %.sroa.7.0218 to i32
  %.sroa.7.0.insert.shift = shl nuw nsw i32 %.sroa.7.0.insert.ext, 8
  %.sroa.7.0.insert.insert = or disjoint i32 %.sroa.9.0.insert.insert, %.sroa.7.0.insert.shift
  %.sroa.0.0.insert.ext = zext i8 %.sroa.0.0219 to i32
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.7.0.insert.insert, %.sroa.0.0.insert.ext
  %i.ax = icmp eq i32 %.sroa.066.0.insert.insert, %.sroa.0.0.insert.insert
  br i1 %i.ax, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ay = add nsw i32 %.0170214, 1                ; 2 uses
  %i.az = icmp eq i32 %i.ay, 62
  %i.ba = icmp eq i64 %indvars.iv, %i.ak
  %or.cond187 = select i1 %i.az, i1 true, i1 %i.ba
  br i1 %or.cond187, label %bb.m, label %bb.y

bb.m:                                             ; preds = %bb.l
  %i.bb = trunc i32 %.0170214 to i8
  %i.bc = or i8 %i.bb, -64
  %i.bd = add nsw i32 %.0210213, 1
  %i.be = sext i32 %.0210213 to i64
  %i.bf = getelementptr inbounds i8, ptr %i.u, i64 %i.be
  store i8 %i.bc, ptr %i.bf, align 1
  br label %bb.y

bb.n:                                             ; preds = %bb.k
  %i.bg = icmp sgt i32 %.0170214, 0
  br i1 %i.bg, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bh = trunc i32 %.0170214 to i8
  %i.bi = add i8 %i.bh, 63
  %i.bj = or i8 %i.bi, -64
  %i.bk = add nsw i32 %.0210213, 1
  %i.bl = sext i32 %.0210213 to i64
  %i.bm = getelementptr inbounds i8, ptr %i.u, i64 %i.bl
  store i8 %i.bj, ptr %i.bm, align 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.1211 = phi i32 [ %i.bk, %bb.o ], [ %.0210213, %bb.n ] ; 10 uses
  %.1 = phi i32 [ 0, %bb.o ], [ %.0170214, %bb.n ] ; 5 uses
  %i.bn = mul nuw nsw i32 %.sroa.066.0.insert.ext, 3
  %i.bo = mul nuw nsw i32 %.sroa.12.0.insert.ext, 5
  %i.bp = add nuw nsw i32 %i.bo, %i.bn
  %i.bq = mul nuw nsw i32 %.sroa.19.0.insert.ext, 7
  %i.br = add nuw nsw i32 %i.bp, %i.bq
  %i.bs = mul nuw nsw i32 %.sroa.26.0.insert.ext, 11
  %i.bt = add nuw nsw i32 %i.br, %i.bs
  %i.bu = and i32 %i.bt, 63                       ; 2 uses
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bv ; 5 uses
  %i.bx = load i32, ptr %i.bw, align 4
  %i.by = icmp eq i32 %i.bx, %.sroa.066.0.insert.insert
  br i1 %i.by, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bz = trunc nuw nsw i32 %i.bu to i8
  %i.ca = add nsw i32 %.1211, 1
  %i.cb = sext i32 %.1211 to i64
  %i.cc = getelementptr inbounds i8, ptr %i.u, i64 %i.cb
  store i8 %i.bz, ptr %i.cc, align 1
  br label %bb.y

bb.r:                                             ; preds = %bb.p
  store i8 %i.aq, ptr %i.bw, align 4
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 1
  store i8 %i.as, ptr %.sroa.12.0..sroa_idx, align 1
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 2
  store i8 %i.au, ptr %.sroa.19.0..sroa_idx, align 2
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 3
  store i8 %.sroa.26.1, ptr %.sroa.26.0..sroa_idx, align 1
  %i.cd = icmp eq i8 %.sroa.26.1, %.sroa.11.0216
  br i1 %i.cd, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  %i.ce = sub i8 %i.aq, %.sroa.0.0219             ; 3 uses
  %i.cf = sub i8 %i.as, %.sroa.7.0218             ; 5 uses
  %i.cg = sub i8 %i.au, %.sroa.9.0217             ; 2 uses
  %i.ch = add i8 %i.ce, 2
  %or.cond6 = icmp ult i8 %i.ch, 4
  %i.ci = add i8 %i.cf, 2
  %i.cj = icmp ult i8 %i.ci, 4
  %or.cond12 = select i1 %or.cond6, i1 %i.cj, i1 false
  %i.ck = add i8 %i.cg, 2                         ; 2 uses
  %i.cl = icmp ult i8 %i.ck, 4
  %or.cond18 = select i1 %or.cond12, i1 %i.cl, i1 false
  br i1 %or.cond18, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cm = shl nsw i8 %i.ce, 4
  %i.cn = add nsw i8 %i.cm, 32
  %i.co = shl nsw i8 %i.cf, 2
  %i.cp = add nsw i8 %i.co, 8
  %i.cq = or i8 %i.cn, %i.cp
  %i.cr = or disjoint i8 %i.cq, %i.ck
  %i.cs = or i8 %i.cr, 64
  %i.ct = add nsw i32 %.1211, 1
  %i.cu = sext i32 %.1211 to i64
  %i.cv = getelementptr inbounds i8, ptr %i.u, i64 %i.cu
  store i8 %i.cs, ptr %i.cv, align 1
  br label %bb.y

bb.u:                                             ; preds = %bb.s
  %i.cw = sub i8 %i.cg, %i.cf
  %i.cx = sub i8 %i.ce, %i.cf                     ; 2 uses
  %i.cy = add i8 %i.cx, 8
  %or.cond21 = icmp ult i8 %i.cy, 16
  %i.cz = add i8 %i.cf, 32                        ; 2 uses
  %i.da = icmp ult i8 %i.cz, 64
  %or.cond27 = select i1 %or.cond21, i1 %i.da, i1 false
  %i.db = add i8 %i.cw, 8                         ; 2 uses
  %i.dc = icmp ult i8 %i.db, 16
  %or.cond33 = select i1 %or.cond27, i1 %i.dc, i1 false
  br i1 %or.cond33, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dd = or disjoint i8 %i.cz, -128
  %i.de = sext i32 %.1211 to i64
  %i.df = getelementptr i8, ptr %i.u, i64 %i.de   ; 2 uses
  store i8 %i.dd, ptr %i.df, align 1
  %i.dg = shl nsw i8 %i.cx, 4
  %i.dh = or disjoint i8 %i.db, %i.dg
  %i.di = xor i8 %i.dh, -128
  %i.dj = add nsw i32 %.1211, 2
  %i.dk = getelementptr i8, ptr %i.df, i64 1
  store i8 %i.di, ptr %i.dk, align 1
  br label %bb.y

end_hunk_0
begin_hunk_1_@stbi_write_png_to_mem:bb.a
  %.092182.us.us.1 = phi i32 [ %i.ba, %scalar.ph270 ], [ %.092182.us.us.1.ph, %scalar.ph270.preheader ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv200.1
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = tail call i8 @llvm.abs.i8(i8 %i.ax, i1 false)
  %i.az = zext i8 %i.ay to i32
  %i.ba = add nuw nsw i32 %.092182.us.us.1, %i.az ; 2 uses
  %indvars.iv.next201.1 = add nuw nsw i64 %indvars.iv200.1, 1 ; 2 uses
  %exitcond204.1.not = icmp eq i64 %indvars.iv.next201.1, %wide.trip.count203
  br i1 %exitcond204.1.not, label %._crit_edge.us.us.1, label %scalar.ph270, !llvm.loop !61

._crit_edge.us.us.1:                              ; preds = %scalar.ph270, %middle.block281
  %.lcssa232 = phi i32 [ %i.av, %middle.block281 ], [ %i.ba, %scalar.ph270 ] ; 2 uses
  tail call fastcc void @stbiw__encode_png_line(ptr noundef %0, i32 noundef %spec.select, i32 noundef %2, i32 noundef %3, i32 noundef %i.w, i32 noundef %4, i32 noundef 2, ptr noundef %i.k)
  br i1 %min.iters.check255, label %scalar.ph254.preheader, label %vector.body258

vector.body258:                                   ; preds = %._crit_edge.us.us.1, %vector.body258
  %index259 = phi i64 [ %index.next264, %vector.body258 ], [ 0, %._crit_edge.us.us.1 ] ; 2 uses
  %vec.phi260 = phi <4 x i32> [ %i.bh, %vector.body258 ], [ zeroinitializer, %._crit_edge.us.us.1 ]
  %vec.phi261 = phi <4 x i32> [ %i.bi, %vector.body258 ], [ zeroinitializer, %._crit_edge.us.us.1 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.k, i64 %index259 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %wide.load262 = load <4 x i8>, ptr %i.bb, align 1
  %wide.load263 = load <4 x i8>, ptr %i.bc, align 1
  %i.bd = tail call <4 x i8> @llvm.abs.v4i8(<4 x i8> %wide.load262, i1 false)
  %i.be = tail call <4 x i8> @llvm.abs.v4i8(<4 x i8> %wide.load263, i1 false)
  %i.bf = zext <4 x i8> %i.bd to <4 x i32>
  %i.bg = zext <4 x i8> %i.be to <4 x i32>
  %i.bh = add <4 x i32> %vec.phi260, %i.bf        ; 2 uses
  %i.bi = add <4 x i32> %vec.phi261, %i.bg        ; 2 uses
  %index.next264 = add nuw i64 %index259, 8       ; 2 uses
  %i.bj = icmp eq i64 %index.next264, %n.vec257
  br i1 %i.bj, label %middle.block265, label %vector.body258, !llvm.loop !62

middle.block265:                                  ; preds = %vector.body258
  %bin.rdx266 = add <4 x i32> %i.bi, %i.bh
  %i.bk = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx266) ; 2 uses
  br i1 %cmp.n267, label %._crit_edge.us.us.2, label %scalar.ph254.preheader

scalar.ph254.preheader:                           ; preds = %._crit_edge.us.us.1, %middle.block265
  %indvars.iv200.2.ph = phi i64 [ 0, %._crit_edge.us.us.1 ], [ %n.vec257, %middle.block265 ]
  %.092182.us.us.2.ph = phi i32 [ 0, %._crit_edge.us.us.1 ], [ %i.bk, %middle.block265 ]
  br label %scalar.ph254

scalar.ph254:                                     ; preds = %scalar.ph254.preheader, %scalar.ph254
  %indvars.iv200.2 = phi i64 [ %indvars.iv.next201.2, %scalar.ph254 ], [ %indvars.iv200.2.ph, %scalar.ph254.preheader ] ; 2 uses
  %.092182.us.us.2 = phi i32 [ %i.bp, %scalar.ph254 ], [ %.092182.us.us.2.ph, %scalar.ph254.preheader ]
  %i.bl = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv200.2
  %i.bm = load i8, ptr %i.bl, align 1
  %i.bn = tail call i8 @llvm.abs.i8(i8 %i.bm, i1 false)
  %i.bo = zext i8 %i.bn to i32
  %i.bp = add nuw nsw i32 %.092182.us.us.2, %i.bo ; 2 uses
  %indvars.iv.next201.2 = add nuw nsw i64 %indvars.iv200.2, 1 ; 2 uses
  %exitcond204.2.not = icmp eq i64 %indvars.iv.next201.2, %wide.trip.count203
  br i1 %exitcond204.2.not, label %._crit_edge.us.us.2, label %scalar.ph254, !llvm.loop !63

._crit_edge.us.us.2:                              ; preds = %scalar.ph254, %middle.block265
  %.lcssa233 = phi i32 [ %i.bk, %middle.block265 ], [ %i.bp, %scalar.ph254 ] ; 2 uses
  %i.bq = icmp samesign ult i32 %.lcssa232, %.lcssa231
  %spec.select112.us.us.1 = zext i1 %i.bq to i32
  %spec.select113.us.us.1 = tail call i32 @llvm.smin.i32(i32 %.lcssa232, i32 %.lcssa231) ; 2 uses
  tail call fastcc void @stbiw__encode_png_line(ptr noundef %0, i32 noundef %spec.select, i32 noundef %2, i32 noundef %3, i32 noundef %i.w, i32 noundef %4, i32 noundef 3, ptr noundef %i.k)
  br i1 %min.iters.check239, label %scalar.ph238.preheader, label %vector.body242

vector.body242:                                   ; preds = %._crit_edge.us.us.2, %vector.body242
  %index243 = phi i64 [ %index.next248, %vector.body242 ], [ 0, %._crit_edge.us.us.2 ] ; 2 uses
  %vec.phi244 = phi <4 x i32> [ %i.bx, %vector.body242 ], [ zeroinitializer, %._crit_edge.us.us.2 ]
  %vec.phi245 = phi <4 x i32> [ %i.by, %vector.body242 ], [ zeroinitializer, %._crit_edge.us.us.2 ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.k, i64 %index243 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %wide.load246 = load <4 x i8>, ptr %i.br, align 1
  %wide.load247 = load <4 x i8>, ptr %i.bs, align 1
  %i.bt = tail call <4 x i8> @llvm.abs.v4i8(<4 x i8> %wide.load246, i1 false)
  %i.bu = tail call <4 x i8> @llvm.abs.v4i8(<4 x i8> %wide.load247, i1 false)
  %i.bv = zext <4 x i8> %i.bt to <4 x i32>
  %i.bw = zext <4 x i8> %i.bu to <4 x i32>
  %i.bx = add <4 x i32> %vec.phi244, %i.bv        ; 2 uses
  %i.by = add <4 x i32> %vec.phi245, %i.bw        ; 2 uses
  %index.next248 = add nuw i64 %index243, 8       ; 2 uses
  %i.bz = icmp eq i64 %index.next248, %n.vec241
  br i1 %i.bz, label %middle.block249, label %vector.body242, !llvm.loop !64

middle.block249:                                  ; preds = %vector.body242
  %bin.rdx250 = add <4 x i32> %i.by, %i.bx
  %i.ca = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx250) ; 2 uses
  br i1 %cmp.n251, label %._crit_edge.us.us.3, label %scalar.ph238.preheader

scalar.ph238.preheader:                           ; preds = %._crit_edge.us.us.2, %middle.block249
  %indvars.iv200.3.ph = phi i64 [ 0, %._crit_edge.us.us.2 ], [ %n.vec241, %middle.block249 ]
  %.092182.us.us.3.ph = phi i32 [ 0, %._crit_edge.us.us.2 ], [ %i.ca, %middle.block249 ]
  br label %scalar.ph238

scalar.ph238:                                     ; preds = %scalar.ph238.preheader, %scalar.ph238
  %indvars.iv200.3 = phi i64 [ %indvars.iv.next201.3, %scalar.ph238 ], [ %indvars.iv200.3.ph, %scalar.ph238.preheader ] ; 2 uses
  %.092182.us.us.3 = phi i32 [ %i.cf, %scalar.ph238 ], [ %.092182.us.us.3.ph, %scalar.ph238.preheader ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv200.3
  %i.cc = load i8, ptr %i.cb, align 1
  %i.cd = tail call i8 @llvm.abs.i8(i8 %i.cc, i1 false)
  %i.ce = zext i8 %i.cd to i32
  %i.cf = add nuw nsw i32 %.092182.us.us.3, %i.ce ; 2 uses
  %indvars.iv.next201.3 = add nuw nsw i64 %indvars.iv200.3, 1 ; 2 uses
  %exitcond204.3.not = icmp eq i64 %indvars.iv.next201.3, %wide.trip.count203
  br i1 %exitcond204.3.not, label %._crit_edge.us.us.3, label %scalar.ph238, !llvm.loop !65

._crit_edge.us.us.3:                              ; preds = %scalar.ph238, %middle.block249
  %.lcssa234 = phi i32 [ %i.ca, %middle.block249 ], [ %i.cf, %scalar.ph238 ] ; 2 uses
  %i.cg = icmp samesign ult i32 %.lcssa233, %spec.select113.us.us.1
  %spec.select112.us.us.2 = select i1 %i.cg, i32 2, i32 %spec.select112.us.us.1
  %spec.select113.us.us.2 = tail call i32 @llvm.smin.i32(i32 %.lcssa233, i32 %spec.select113.us.us.1) ; 2 uses
  tail call fastcc void @stbiw__encode_png_line(ptr noundef %0, i32 noundef %spec.select, i32 noundef %2, i32 noundef %3, i32 noundef %i.w, i32 noundef %4, i32 noundef 4, ptr noundef %i.k)
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %._crit_edge.us.us.3, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %._crit_edge.us.us.3 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.cn, %vector.body ], [ zeroinitializer, %._crit_edge.us.us.3 ]
  %vec.phi236 = phi <4 x i32> [ %i.co, %vector.body ], [ zeroinitializer, %._crit_edge.us.us.3 ]
  %i.ch = getelementptr inbounds nuw i8, ptr %i.k, i64 %index ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %wide.load = load <4 x i8>, ptr %i.ch, align 1
  %wide.load237 = load <4 x i8>, ptr %i.ci, align 1
  %i.cj = tail call <4 x i8> @llvm.abs.v4i8(<4 x i8> %wide.load, i1 false)
  %i.ck = tail call <4 x i8> @llvm.abs.v4i8(<4 x i8> %wide.load237, i1 false)
  %i.cl = zext <4 x i8> %i.cj to <4 x i32>
  %i.cm = zext <4 x i8> %i.ck to <4 x i32>
  %i.cn = add <4 x i32> %vec.phi, %i.cl           ; 2 uses
  %i.co = add <4 x i32> %vec.phi236, %i.cm        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cp = icmp eq i64 %index.next, %n.vec
  br i1 %i.cp, label %middle.block, label %vector.body, !llvm.loop !66

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.co, %i.cn
  %i.cq = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %._crit_edge.us.us.3, %middle.block
  %indvars.iv200.4.ph = phi i64 [ 0, %._crit_edge.us.us.3 ], [ %n.vec, %middle.block ]
  %.092182.us.us.4.ph = phi i32 [ 0, %._crit_edge.us.us.3 ], [ %i.cq, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv200.4 = phi i64 [ %indvars.iv.next201.4, %scalar.ph ], [ %indvars.iv200.4.ph, %scalar.ph.preheader ] ; 2 uses
  %.092182.us.us.4 = phi i32 [ %i.cv, %scalar.ph ], [ %.092182.us.us.4.ph, %scalar.ph.preheader ]
  %i.cr = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv200.4
  %i.cs = load i8, ptr %i.cr, align 1
  %i.ct = tail call i8 @llvm.abs.i8(i8 %i.cs, i1 false)
  %i.cu = zext i8 %i.ct to i32
  %i.cv = add nuw nsw i32 %.092182.us.us.4, %i.cu ; 2 uses
  %indvars.iv.next201.4 = add nuw nsw i64 %indvars.iv200.4, 1 ; 2 uses
  %exitcond204.4.not = icmp eq i64 %indvars.iv.next201.4, %wide.trip.count203
  br i1 %exitcond204.4.not, label %.loopexit, label %scalar.ph, !llvm.loop !67

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %.lcssa235 = phi i32 [ %i.cq, %middle.block ], [ %i.cv, %scalar.ph ]
  %i.cw = icmp samesign ult i32 %.lcssa234, %spec.select113.us.us.2
  %spec.select112.us.us.3 = select i1 %i.cw, i32 3, i32 %spec.select112.us.us.2
  %spec.select113.us.us.3 = tail call i32 @llvm.smin.i32(i32 %.lcssa234, i32 %spec.select113.us.us.2)
  %i.cx = icmp samesign ult i32 %.lcssa235, %spec.select113.us.us.3
  %spec.select112.us.us.4 = select i1 %i.cx, i32 4, i32 %spec.select112.us.us.3 ; 2 uses
  tail call fastcc void @stbiw__encode_png_line(ptr noundef %0, i32 noundef %spec.select, i32 noundef %2, i32 noundef %3, i32 noundef %i.w, i32 noundef %4, i32 noundef %spec.select112.us.us.4, ptr noundef %i.k)
  %i.cy = trunc nuw nsw i32 %spec.select112.us.us.4 to i8
  %i.cz = mul nuw nsw i64 %indvars.iv206, %i.v
  %i.da = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.cz ; 2 uses
  store i8 %i.cy, ptr %i.da, align 1
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.db, ptr nonnull align 1 %i.k, i64 %i.j, i1 false)
  %indvars.iv.next207 = add nuw nsw i64 %indvars.iv206, 1 ; 2 uses
  %exitcond210.not = icmp eq i64 %indvars.iv.next207, %wide.trip.count209
  br i1 %exitcond210.not, label %._crit_edge, label %.preheader.us

bb.d:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.i) #52
  br label %bb.g

bb.e:                                             ; preds = %.preheader.preheader, %bb.e
  %indvars.iv = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.dc = trunc nuw nsw i64 %indvars.iv to i32    ; 6 uses
  tail call fastcc void @stbiw__encode_png_line(ptr noundef %0, i32 noundef %spec.select, i32 noundef %2, i32 noundef %3, i32 noundef %i.dc, i32 noundef %4, i32 noundef 0, ptr noundef %i.k)
  tail call fastcc void @stbiw__encode_png_line(ptr noundef %0, i32 noundef %spec.select, i32 noundef %2, i32 noundef %3, i32 noundef %i.dc, i32 noundef %4, i32 noundef 1, ptr noundef %i.k)
  tail call fastcc void @stbiw__encode_png_line(ptr noundef %0, i32 noundef %spec.select, i32 noundef %2, i32 noundef %3, i32 noundef %i.dc, i32 noundef %4, i32 noundef 2, ptr noundef %i.k)
  tail call fastcc void @stbiw__encode_png_line(ptr noundef %0, i32 noundef %spec.select, i32 noundef %2, i32 noundef %3, i32 noundef %i.dc, i32 noundef %4, i32 noundef 3, ptr noundef %i.k)
  tail call fastcc void @stbiw__encode_png_line(ptr noundef %0, i32 noundef %spec.select, i32 noundef %2, i32 noundef %3, i32 noundef %i.dc, i32 noundef %4, i32 noundef 4, ptr noundef %i.k)
  tail call fastcc void @stbiw__encode_png_line(ptr noundef %0, i32 noundef %spec.select, i32 noundef %2, i32 noundef %3, i32 noundef %i.dc, i32 noundef %4, i32 noundef 0, ptr noundef %i.k)
  %i.dd = mul nsw i64 %indvars.iv, %i.u
  %i.de = getelementptr inbounds i8, ptr %i.i, i64 %i.dd ; 2 uses
  store i8 0, ptr %i.de, align 1
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.df, ptr nonnull align 1 %i.k, i64 %i.j, i1 false)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count209
  br i1 %exitcond.not, label %._crit_edge, label %bb.e

._crit_edge:                                      ; preds = %bb.e, %.loopexit, %bb.c, %.preheader179
  tail call void @free(ptr noundef nonnull %i.k) #52
  %i.dg = load i32, ptr @stbi_write_png_compression_level, align 4
  %i.dh = call ptr @stbi_zlib_compress(ptr noundef nonnull %i.i, i32 noundef %i.g, ptr noundef nonnull %i.a, i32 noundef %i.dg) ; 3 uses
  tail call void @free(ptr noundef nonnull %i.i) #52
  %.not109 = icmp eq ptr %i.dh, null
  br i1 %.not109, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.di = load i32, ptr %i.a, align 4             ; 6 uses
  %i.dj = add nsw i32 %i.di, 57                   ; 2 uses
  %i.dk = sext i32 %i.dj to i64
  %i.dl = tail call noalias ptr @malloc(i64 noundef %i.dk) #53 ; 16 uses
  %.not110 = icmp eq ptr %i.dl, null
  br i1 %.not110, label %bb.g, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f
  store i32 %i.dj, ptr %5, align 4
  store i64 727905341920923785, ptr %i.dl, align 1
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store <8 x i8> <i8 0, i8 0, i8 0, i8 13, i8 73, i8 72, i8 68, i8 82>, ptr %i.dm, align 1
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.do = lshr i32 %2, 24
  %i.dp = lshr i32 %2, 16
  %i.dq = lshr i32 %2, 8
  %6 = tail call i32 @llvm.bswap.i32(i32 %2)
  store i32 %6, ptr %i.dn, align 1
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dl, i64 20
  %i.ds = lshr i32 %3, 24
  %i.dt = lshr i32 %3, 16
  %i.du = lshr i32 %3, 8
  %7 = tail call i32 @llvm.bswap.i32(i32 %3)
  store i32 %7, ptr %i.dr, align 1
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dl, i64 25
  store i8 8, ptr %i.dv, align 1
  %i.dx = sext i32 %4 to i64
  %i.dy = getelementptr inbounds [4 x i8], ptr @__const.stbi_write_png_to_mem.ctype, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 4            ; 2 uses
  %i.ea = trunc i32 %i.dz to i8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dl, i64 26
  store i8 %i.ea, ptr %i.dw, align 1
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dl, i64 27
  store i8 0, ptr %i.eb, align 1
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dl, i64 28
  store i8 0, ptr %i.ec, align 1
  store i8 0, ptr %i.ed, align 1
  %i.ee = xor i32 %i.do, 245
  %i.ef = zext nneg i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr @stbiw__crc32.crc_table, i64 %i.ef
  %i.eh = load i32, ptr %i.eg, align 4
  %i.ei = xor i32 %i.eh, 5725777                  ; 2 uses
  %i.ej = lshr i32 %i.ei, 8
  %i.ek = xor i32 %i.ei, %i.dp
  %i.el = and i32 %i.ek, 255
  %i.em = zext nneg i32 %i.el to i64
  %i.en = getelementptr inbounds nuw [4 x i8], ptr @stbiw__crc32.crc_table, i64 %i.em
  %i.eo = load i32, ptr %i.en, align 4
  %i.ep = xor i32 %i.eo, %i.ej                    ; 2 uses
  %i.eq = lshr i32 %i.ep, 8
  %i.er = xor i32 %i.ep, %i.dq
  %i.es = and i32 %i.er, 255
  %i.et = zext nneg i32 %i.es to i64
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr @stbiw__crc32.crc_table, i64 %i.et
  %i.ev = load i32, ptr %i.eu, align 4
  %i.ew = xor i32 %i.ev, %i.eq                    ; 2 uses
  %i.ex = lshr i32 %i.ew, 8
  %i.ey = xor i32 %i.ew, %2
  %i.ez = and i32 %i.ey, 255
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr @stbiw__crc32.crc_table, i64 %i.fa
  %i.fc = load i32, ptr %i.fb, align 4
  %i.fd = xor i32 %i.fc, %i.ex                    ; 2 uses
  %i.fe = lshr i32 %i.fd, 8
  %i.ff = and i32 %i.fd, 255
  %i.fg = xor i32 %i.ff, %i.ds
  %i.fh = zext nneg i32 %i.fg to i64
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr @stbiw__crc32.crc_table, i64 %i.fh
  %i.fj = load i32, ptr %i.fi, align 4
  %i.fk = xor i32 %i.fj, %i.fe                    ; 2 uses
  %i.fl = lshr i32 %i.fk, 8
  %i.fm = xor i32 %i.fk, %i.dt
  %i.fn = and i32 %i.fm, 255
  %i.fo = zext nneg i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr @stbiw__crc32.crc_table, i64 %i.fo
  %i.fq = load i32, ptr %i.fp, align 4
  %i.fr = xor i32 %i.fq, %i.fl                    ; 2 uses
  %i.fs = lshr i32 %i.fr, 8
  %i.ft = xor i32 %i.fr, %i.du
  %i.fu = and i32 %i.ft, 255
  %i.fv = zext nneg i32 %i.fu to i64
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr @stbiw__crc32.crc_table, i64 %i.fv
  %i.fx = load i32, ptr %i.fw, align 4
  %i.fy = xor i32 %i.fx, %i.fs                    ; 2 uses
  %i.fz = lshr i32 %i.fy, 8
  %i.ga = xor i32 %i.fy, %3
  %i.gb = and i32 %i.ga, 255
  %i.gc = zext nneg i32 %i.gb to i64
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr @stbiw__crc32.crc_table, i64 %i.gc
  %i.ge = load i32, ptr %i.gd, align 4
  %i.gf = xor i32 %i.ge, %i.fz                    ; 2 uses
  %i.gg = lshr i32 %i.gf, 8
  %i.gh = and i32 %i.gf, 255
  %i.gi = xor i32 %i.gh, 8
  %i.gj = zext nneg i32 %i.gi to i64
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr @stbiw__crc32.crc_table, i64 %i.gj
  %i.gl = load i32, ptr %i.gk, align 4
  %i.gm = xor i32 %i.gl, %i.gg                    ; 2 uses
  %i.gn = lshr i32 %i.gm, 8
  %i.go = xor i32 %i.gm, %i.dz
  %i.gp = and i32 %i.go, 255
  %i.gq = zext nneg i32 %i.gp to i64
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr @stbiw__crc32.crc_table, i64 %i.gq
  %i.gs = load i32, ptr %i.gr, align 4
  %i.gt = xor i32 %i.gs, %i.gn                    ; 2 uses
  %i.gu = lshr i32 %i.gt, 8
  %i.gv = and i32 %i.gt, 255
  %i.gw = zext nneg i32 %i.gv to i64
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr @stbiw__crc32.crc_table, i64 %i.gw
  %i.gy = load i32, ptr %i.gx, align 4
  %i.gz = xor i32 %i.gy, %i.gu                    ; 2 uses
  %i.ha = lshr i32 %i.gz, 8
  %i.hb = and i32 %i.gz, 255
  %i.hc = zext nneg i32 %i.hb to i64
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr @stbiw__crc32.crc_table, i64 %i.hc
  %i.he = load i32, ptr %i.hd, align 4
  %i.hf = xor i32 %i.he, %i.ha                    ; 2 uses
  %i.hg = lshr i32 %i.hf, 8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.dl, i64 28
  %i.hi = load i8, ptr %i.hh, align 1
  %i.hj = zext i8 %i.hi to i32
  %i.hk = and i32 %i.hf, 255
  %i.hl = xor i32 %i.hk, %i.hj
  %i.hm = zext nneg i32 %i.hl to i64
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr @stbiw__crc32.crc_table, i64 %i.hm
  %i.ho = load i32, ptr %i.hn, align 4
  %i.hp = xor i32 %i.ho, %i.hg
  %i.hq = getelementptr inbounds nuw i8, ptr %i.dl, i64 29
  %i.hr = xor i32 %i.hp, -1
  %8 = tail call i32 @llvm.bswap.i32(i32 %i.hr)
  store i32 %8, ptr %i.hq, align 1
  %i.hs = getelementptr inbounds nuw i8, ptr %i.dl, i64 33
  %9 = tail call i32 @llvm.bswap.i32(i32 %i.di)
  store i32 %9, ptr %i.hs, align 1
  %i.ht = getelementptr inbounds nuw i8, ptr %i.dl, i64 37 ; 4 uses
  store <4 x i8> <i8 73, i8 68, i8 65, i8 84>, ptr %i.ht, align 1
  %i.hu = getelementptr inbounds nuw i8, ptr %i.dl, i64 41 ; 2 uses
  %i.hv = sext i32 %i.di to i64                   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hu, ptr nonnull align 1 %i.dh, i64 %i.hv, i1 false)
  %i.hw = getelementptr inbounds i8, ptr %i.hu, i64 %i.hv ; 3 uses
  tail call void @free(ptr noundef nonnull %i.dh) #52
  %i.hx = icmp sgt i32 %i.di, -4
  br i1 %i.hx, label %.lr.ph.preheader.i.i, label %stbiw__wpcrc.exit119

.lr.ph.preheader.i.i:                             ; preds = %.lr.ph.i.i
  %i.hy = add nsw i32 %i.di, 4                    ; 2 uses
  %wide.trip.count.i.i = zext nneg i32 %i.hy to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %i.hz = icmp eq i32 %i.hy, 1
  br i1 %i.hz, label %.lr.ph.i.i114.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 2147483646
  br label %.lr.ph.i.i114

.lr.ph.i.i114:                                    ; preds = %.lr.ph.i.i114, %.lr.ph.preheader.i.i.new
  %indvars.iv.i.i115 = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next.i.i117.1, %.lr.ph.i.i114 ] ; 3 uses
  %.078.i.i116 = phi i32 [ -1, %.lr.ph.preheader.i.i.new ], [ %i.iu, %.lr.ph.i.i114 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter.next.1, %.lr.ph.i.i114 ]
  %i.ia = lshr i32 %.078.i.i116, 8
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ht, i64 %indvars.iv.i.i115
  %i.ic = load i8, ptr %i.ib, align 1
  %i.id = zext i8 %i.ic to i32
  %i.ie = and i32 %.078.i.i116, 255
  %i.if = xor i32 %i.ie, %i.id
  %i.ig = zext nneg i32 %i.if to i64
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr @stbiw__crc32.crc_table, i64 %i.ig
  %i.ii = load i32, ptr %i.ih, align 4
  %i.ij = xor i32 %i.ii, %i.ia                    ; 2 uses
  %i.ik = lshr i32 %i.ij, 8
  %i.il = getelementptr inbounds nuw i8, ptr %i.ht, i64 %indvars.iv.i.i115
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 1
  %i.in = load i8, ptr %i.im, align 1
  %i.io = zext i8 %i.in to i32
  %i.ip = and i32 %i.ij, 255
  %i.iq = xor i32 %i.ip, %i.io
  %i.ir = zext nneg i32 %i.iq to i64
  %i.is = getelementptr inbounds nuw [4 x i8], ptr @stbiw__crc32.crc_table, i64 %i.ir
  %i.it = load i32, ptr %i.is, align 4
  %i.iu = xor i32 %i.it, %i.ik                    ; 3 uses
  %indvars.iv.next.i.i117.1 = add nuw nsw i64 %indvars.iv.i.i115, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i.i114

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i.i114
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i114.epil.preheader

.lr.ph.i.i114.epil.preheader:                     ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv.i.i115.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i117.1, %._crit_edge.loopexit.i.i.unr-lcssa ]
  %.078.i.i116.epil.init = phi i32 [ -1, %.lr.ph.preheader.i.i ], [ %i.iu, %._crit_edge.loopexit.i.i.unr-lcssa ] ; 2 uses
  %lcmp.mod320 = trunc i32 %i.di to i1
  tail call void @llvm.assume(i1 %lcmp.mod320)
  %i.iv = lshr i32 %.078.i.i116.epil.init, 8
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ht, i64 %indvars.iv.i.i115.epil.init
  %i.ix = load i8, ptr %i.iw, align 1
  %i.iy = zext i8 %i.ix to i32
  %i.iz = and i32 %.078.i.i116.epil.init, 255
  %i.ja = xor i32 %i.iz, %i.iy
  %i.jb = zext nneg i32 %i.ja to i64
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr @stbiw__crc32.crc_table, i64 %i.jb
  %i.jd = load i32, ptr %i.jc, align 4
  %i.je = xor i32 %i.jd, %i.iv
  br label %._crit_edge.loopexit.i.i

._crit_edge.loopexit.i.i:                         ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i.i114.epil.preheader
  %.lcssa = phi i32 [ %i.iu, %._crit_edge.loopexit.i.i.unr-lcssa ], [ %i.je, %.lr.ph.i.i114.epil.preheader ]
  %i.jf = xor i32 %.lcssa, -1
  %10 = tail call i32 @llvm.bswap.i32(i32 %i.jf)
  %11 = bitcast i32 %10 to <4 x i8>
  br label %stbiw__wpcrc.exit119

stbiw__wpcrc.exit119:                             ; preds = %.lr.ph.i.i, %._crit_edge.loopexit.i.i
  %.07.lcssa.i.i = phi <4 x i8> [ zeroinitializer, %.lr.ph.i.i ], [ %11, %._crit_edge.loopexit.i.i ]
  store <4 x i8> %.07.lcssa.i.i, ptr %i.hw, align 1
  %i.jg = getelementptr inbounds nuw i8, ptr %i.hw, i64 4
  %i.jh = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  store i32 0, ptr %i.jg, align 1
  store <8 x i8> <i8 73, i8 69, i8 78, i8 68, i8 -82, i8 66, i8 96, i8 -126>, ptr %i.jh, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge, %bb.a, %stbiw__wpcrc.exit119, %bb.d
  %.099 = phi ptr [ %i.dl, %stbiw__wpcrc.exit119 ], [ null, %._crit_edge ], [ null, %bb.a ], [ null, %bb.d ], [ null, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #52
  ret ptr %.099
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @stbiw__encode_png_line(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr nofree noundef nonnull writeonly captures(none) %7) unnamed_addr #15 {
bb.a:
  %i.a = ptrtoaddr ptr %7 to i64                  ; 14 uses
  %i.b = ptrtoaddr ptr %0 to i64                  ; 7 uses
  %.not = icmp eq i32 %4, 0
  %i.c = select i1 %.not, ptr @stbiw__encode_png_line.firstmap, ptr @stbiw__encode_png_line.mapping
  %i.d = sext i32 %6 to i64
  %i.e = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4              ; 3 uses
  %i.g = load i32, ptr @stbi__flip_vertically_on_write, align 4
  %.not136 = icmp eq i32 %i.g, 0                  ; 2 uses
  %i.h = xor i32 %4, -1
  %i.i = add i32 %3, %i.h
  %i.j = select i1 %.not136, i32 %4, i32 %i.i
  %i.k = mul i32 %i.j, %1
  %i.l = sext i32 %i.k to i64                     ; 8 uses
  %i.m = getelementptr inbounds i8, ptr %0, i64 %i.l ; 77 uses
  %i.n = sub nsw i32 0, %1
  %i.o = select i1 %.not136, i32 %1, i32 %i.n     ; 4 uses
  %i.p = icmp eq i32 %i.f, 0
  br i1 %i.p, label %bb.b, label %.preheader160

.preheader160:                                    ; preds = %bb.a
  %i.q = icmp sgt i32 %5, 0
  br i1 %i.q, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader160
  %i.r = sext i32 %i.o to i64                     ; 3 uses
  %wide.trip.count = zext nneg i32 %5 to i64
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.s = mul nsw i32 %5, %2
  %i.t = sext i32 %i.s to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %7, ptr align 1 %i.m, i64 %i.t, i1 false)
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.i ] ; 11 uses
  switch i32 %i.f, label %bb.i [
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 6, label %bb.h
  ]

bb.c:                                             ; preds = %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv
  %i.v = load i8, ptr %i.u, align 1
  br label %.sink.split

bb.d:                                             ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv
  %i.x = load i8, ptr %i.w, align 1
  %i.y = sub nsw i64 %indvars.iv, %i.r
  %i.z = getelementptr inbounds i8, ptr %i.m, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = sub i8 %i.x, %i.aa
  br label %.sink.split

bb.e:                                             ; preds = %.lr.ph
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = sub nsw i64 %indvars.iv, %i.r
  %i.af = getelementptr inbounds i8, ptr %i.m, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = lshr i8 %i.ag, 1
  %i.ai = sub i8 %i.ad, %i.ah
  br label %.sink.split

bb.f:                                             ; preds = %.lr.ph
  %i.aj = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = sub nsw i64 %indvars.iv, %i.r
  %i.am = getelementptr inbounds i8, ptr %i.m, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = sub i8 %i.ak, %i.an
  br label %.sink.split

bb.g:                                             ; preds = %.lr.ph
  %i.ap = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv
  %i.aq = load i8, ptr %i.ap, align 1
  br label %.sink.split

bb.h:                                             ; preds = %.lr.ph
  %i.ar = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv
  %i.as = load i8, ptr %i.ar, align 1
  br label %.sink.split

.sink.split:                                      ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sink = phi i8 [ %i.v, %bb.c ], [ %i.ab, %bb.d ], [ %i.ai, %bb.e ], [ %i.ao, %bb.f ], [ %i.aq, %bb.g ], [ %i.as, %bb.h ]
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 %indvars.iv
  store i8 %.sink, ptr %i.at, align 1
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.i, %.preheader160
  switch i32 %i.f, label %.loopexit [
    i32 1, label %.preheader
    i32 2, label %.preheader150
    i32 3, label %.preheader152
    i32 4, label %.preheader154
    i32 5, label %.preheader156
    i32 6, label %.preheader158
  ]

.preheader158:                                    ; preds = %._crit_edge
  %i.au = mul nsw i32 %5, %2                      ; 2 uses
  %i.av = icmp slt i32 %5, %i.au
  br i1 %i.av, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %.preheader158
  %i.aw = sext i32 %5 to i64                      ; 11 uses
  %wide.trip.count183 = sext i32 %i.au to i64     ; 4 uses
  %i.ax = sub nsw i64 %wide.trip.count183, %i.aw  ; 7 uses
  %min.iters.check = icmp ult i64 %i.ax, 8
  br i1 %min.iters.check, label %.lr.ph163.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ay = add i64 %i.b, %i.l                      ; 2 uses
  %i.az = add i64 %i.a, %i.aw
  %i.ba = sub i64 %i.ay, %i.az
  %diff.check = icmp ugt i64 %i.ba, -32
  %i.bb = sub i64 %i.ay, %i.a
  %diff.check229 = icmp ugt i64 %i.bb, -32
  %conflict.rdx = or i1 %diff.check, %diff.check229
  br i1 %conflict.rdx, label %.lr.ph163.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check230 = icmp ult i64 %i.ax, 32
  br i1 %min.iters.check230, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bc = and i64 %i.ax, 24
  %n.vec = and i64 %i.ax, -32                     ; 4 uses
  %i.bd = add nsw i64 %n.vec, %i.aw
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.be = add i64 %index, %i.aw                   ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr %i.m, i64 %i.be ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %wide.load = load <16 x i8>, ptr %i.bf, align 1
  %wide.load231 = load <16 x i8>, ptr %i.bg, align 1
  %i.bh = getelementptr inbounds i8, ptr %i.m, i64 %index ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %wide.load232 = load <16 x i8>, ptr %i.bh, align 1
  %wide.load233 = load <16 x i8>, ptr %i.bi, align 1
  %i.bj = sub <16 x i8> %wide.load, %wide.load232
  %i.bk = sub <16 x i8> %wide.load231, %wide.load233
  %i.bl = getelementptr inbounds i8, ptr %7, i64 %i.be ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store <16 x i8> %i.bj, ptr %i.bl, align 1
  store <16 x i8> %i.bk, ptr %i.bm, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !68

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ax, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bc, 0
  br i1 %min.epilog.iters.check, label %.lr.ph163.preheader, label %vec.epilog.ph, !prof !17

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec234 = and i64 %i.ax, -8                   ; 3 uses
  %i.bo = add nsw i64 %n.vec234, %i.aw
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index235 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next238, %vec.epilog.vector.body ] ; 3 uses
  %i.bp = add i64 %index235, %i.aw                ; 2 uses
  %i.bq = getelementptr inbounds i8, ptr %i.m, i64 %i.bp
  %wide.load236 = load <8 x i8>, ptr %i.bq, align 1
  %i.br = getelementptr inbounds i8, ptr %i.m, i64 %index235
  %wide.load237 = load <8 x i8>, ptr %i.br, align 1
  %i.bs = sub <8 x i8> %wide.load236, %wide.load237
end_hunk_1
begin_hunk_2_@ImageResizeCanvas:bb.a
  %xtraiter140 = and i64 %wide.trip.count120, 1
  %i.cn = icmp eq i32 %i.bx, 1
  br i1 %i.cn, label %.epil.preheader139, label %.lr.ph105.new

.lr.ph105.new:                                    ; preds = %.lr.ph105
  %unroll_iter144 = and i64 %wide.trip.count120, 2147483646
  br label %bb.u

bb.t:                                             ; preds = %bb.t, %.lr.ph101.new
  %indvars.iv108 = phi i64 [ 1, %.lr.ph101.new ], [ %indvars.iv.next109.1, %bb.t ] ; 3 uses
  %niter138 = phi i64 [ 0, %.lr.ph101.new ], [ %niter138.next.1, %bb.t ]
  %i.co = trunc nuw nsw i64 %indvars.iv108 to i32
  %i.cp = mul i32 %i.bh, %i.co
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds i8, ptr %i.ax, i64 %i.cq
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cr, ptr align 1 %i.ax, i64 %i.bi, i1 false)
  %i.cs = trunc i64 %indvars.iv108 to i32
  %i.ct = add i32 %i.cs, 1
  %i.cu = mul i32 %i.bh, %i.ct
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds i8, ptr %i.ax, i64 %i.cv
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cw, ptr align 1 %i.ax, i64 %i.bi, i1 false)
  %indvars.iv.next109.1 = add nuw nsw i64 %indvars.iv108, 2 ; 2 uses
  %niter138.next.1 = add i64 %niter138, 2         ; 2 uses
  %niter138.ncmp.1 = icmp eq i64 %niter138.next.1, %unroll_iter137
  br i1 %niter138.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.t

._crit_edge106.loopexit.unr-lcssa:                ; preds = %bb.u
  %lcmp.mod142.not = icmp eq i64 %xtraiter140, 0
  br i1 %lcmp.mod142.not, label %._crit_edge106, label %.epil.preheader139

.epil.preheader139:                               ; preds = %._crit_edge106.loopexit.unr-lcssa, %.lr.ph105
  %indvars.iv115.epil.init = phi i64 [ %i.cl, %.lr.ph105 ], [ %indvars.iv.next116.1, %._crit_edge106.loopexit.unr-lcssa ]
  %indvars.iv113.epil.init = phi i64 [ 0, %.lr.ph105 ], [ %indvars.iv.next114.1, %._crit_edge106.loopexit.unr-lcssa ]
  %lcmp.mod143 = trunc i32 %i.bx to i1
  tail call void @llvm.assume(i1 %lcmp.mod143)
  %i.cx = getelementptr inbounds i8, ptr %i.ax, i64 %indvars.iv115.epil.init
  %i.cy = add nuw nsw i64 %indvars.iv113.epil.init, %.sroa.527.0
  %i.cz = mul nsw i64 %i.cy, %i.cj
  %i.da = add nsw i64 %i.cz, %.sroa.026.0
  %i.db = mul nsw i64 %i.da, %i.ck
  %i.dc = getelementptr inbounds i8, ptr %.pre122, i64 %i.db
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cx, ptr align 1 %i.dc, i64 %i.ch, i1 false)
  br label %._crit_edge106

._crit_edge106:                                   ; preds = %.epil.preheader139, %._crit_edge106.loopexit.unr-lcssa, %._crit_edge
  tail call void @free(ptr noundef %.pre122) #52
  store ptr %i.ax, ptr %0, align 8
  store i32 %1, ptr %i.c, align 8
  store i32 %2, ptr %i.f, align 4
  br label %bb.v

bb.u:                                             ; preds = %bb.u, %.lr.ph105.new
  %indvars.iv115 = phi i64 [ %i.cl, %.lr.ph105.new ], [ %indvars.iv.next116.1, %bb.u ] ; 2 uses
  %indvars.iv113 = phi i64 [ 0, %.lr.ph105.new ], [ %indvars.iv.next114.1, %bb.u ] ; 3 uses
  %niter145 = phi i64 [ 0, %.lr.ph105.new ], [ %niter145.next.1, %bb.u ]
  %i.dd = getelementptr inbounds i8, ptr %i.ax, i64 %indvars.iv115
  %i.de = add nuw nsw i64 %indvars.iv113, %.sroa.527.0
  %i.df = mul nsw i64 %i.de, %i.cj
  %i.dg = add nsw i64 %i.df, %.sroa.026.0
  %i.dh = mul nsw i64 %i.dg, %i.ck
  %i.di = getelementptr inbounds i8, ptr %.pre122, i64 %i.dh
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dd, ptr align 1 %i.di, i64 %i.ch, i1 false)
  %indvars.iv.next116 = add nsw i64 %indvars.iv115, %i.cm ; 2 uses
  %indvars.iv.next114 = or disjoint i64 %indvars.iv113, 1
  %i.dj = getelementptr inbounds i8, ptr %i.ax, i64 %indvars.iv.next116
  %i.dk = add nuw nsw i64 %indvars.iv.next114, %.sroa.527.0
  %i.dl = mul nsw i64 %i.dk, %i.cj
  %i.dm = add nsw i64 %i.dl, %.sroa.026.0
  %i.dn = mul nsw i64 %i.dm, %i.ck
  %i.do = getelementptr inbounds i8, ptr %.pre122, i64 %i.dn
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dj, ptr align 1 %i.do, i64 %i.ch, i1 false)
  %indvars.iv.next116.1 = add nsw i64 %indvars.iv.next116, %i.cm ; 2 uses
  %indvars.iv.next114.1 = add nuw nsw i64 %indvars.iv113, 2 ; 2 uses
  %niter145.next.1 = add i64 %niter145, 2         ; 2 uses
  %niter145.ncmp.1 = icmp eq i64 %niter145.next.1, %unroll_iter144
  br i1 %niter145.ncmp.1, label %._crit_edge106.loopexit.unr-lcssa, label %bb.u

bb.v:                                             ; preds = %bb.h, %._crit_edge106, %bb.a, %bb.b, %bb.c, %bb.g
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @SetPixelColor(ptr nofree noundef writeonly captures(none) %0, i32 %1, i32 noundef %2) local_unnamed_addr #19 {
bb.a:
  %.sroa.039.0.extract.trunc = trunc i32 %1 to i8 ; 2 uses
  %.sroa.846.0.extract.shift = lshr i32 %1, 8
  %.sroa.846.0.extract.trunc = trunc i32 %.sroa.846.0.extract.shift to i8 ; 2 uses
  %.sroa.15.0.extract.shift = lshr i32 %1, 16     ; 2 uses
  %.sroa.15.0.extract.trunc = trunc i32 %.sroa.15.0.extract.shift to i8 ; 2 uses
  %.sroa.22.0.extract.shift = lshr i32 %1, 24     ; 2 uses
  switch i32 %2, label %bb.i [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 5, label %bb.e
    i32 6, label %bb.f
    i32 4, label %bb.g
    i32 7, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = trunc i32 %.sroa.15.0.extract.shift to i8
  %i.b = trunc i32 %1 to i8
  %i.c = insertelement <2 x i8> poison, i8 %i.a, i64 0
  %i.d = insertelement <2 x i8> %i.c, i8 %i.b, i64 1
  %i.e = uitofp <2 x i8> %i.d to <2 x float>
  %i.f = uitofp i8 %.sroa.846.0.extract.trunc to float
  %i.g = fdiv nnan float %i.f, 2.550000e+02
  %i.h = fmul nnan float %i.g, 5.870000e-01
  %i.i = fdiv nnan <2 x float> %i.e, splat (float 2.550000e+02)
  %i.j = fmul nnan <2 x float> %i.i, <float 1.140000e-01, float 2.990000e-01> ; 2 uses
  %i.k = extractelement <2 x float> %i.j, i64 1
  %i.l = fadd float %i.k, %i.h
  %i.m = extractelement <2 x float> %i.j, i64 0
  %i.n = fadd float %i.m, %i.l
  %i.o = fmul float %i.n, 2.550000e+02
  %i.p = fptoui float %i.o to i8
  store i8 %i.p, ptr %0, align 1
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %.sroa.22.0.extract.trunc = trunc nuw i32 %.sroa.22.0.extract.shift to i8
  %i.q = uitofp i8 %.sroa.039.0.extract.trunc to float
  %i.r = fdiv nnan float %i.q, 2.550000e+02
  %i.s = bitcast i32 %1 to <4 x i8>
  %i.t = shufflevector <4 x i8> %i.s, <4 x i8> poison, <2 x i32> <i32 1, i32 2>
  %i.u = uitofp <2 x i8> %i.t to <2 x float>
  %i.v = fdiv nnan <2 x float> %i.u, splat (float 2.550000e+02) ; 2 uses
  %i.w = fmul nnan float %i.r, 2.990000e-01
  %i.x = extractelement <2 x float> %i.v, i64 0
  %i.y = fmul nnan float %i.x, 5.870000e-01
  %i.z = fadd float %i.w, %i.y
  %i.aa = extractelement <2 x float> %i.v, i64 1
  %i.ab = fmul nnan float %i.aa, 1.140000e-01
  %i.ac = fadd float %i.ab, %i.z
  %i.ad = fmul float %i.ac, 2.550000e+02
  %i.ae = fptoui float %i.ad to i8
  store i8 %i.ae, ptr %0, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.22.0.extract.trunc, ptr %i.af, align 1
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.ag = bitcast i32 %1 to <4 x i8>
  %i.ah = shufflevector <4 x i8> %i.ag, <4 x i8> poison, <2 x i32> <i32 0, i32 1>
  %i.ai = uitofp <2 x i8> %i.ah to <2 x float>
  %i.aj = uitofp i8 %.sroa.15.0.extract.trunc to float
  %i.ak = fdiv nnan float %i.aj, 2.550000e+02
  %i.al = fmul nnan float %i.ak, 3.100000e+01
  %i.am = tail call float @llvm.round.f32(float %i.al)
  %i.an = fptoui float %i.am to i8
  %i.ao = fdiv nnan <2 x float> %i.ai, splat (float 2.550000e+02)
  %i.ap = fmul nnan <2 x float> %i.ao, <float 3.100000e+01, float 6.300000e+01>
  %i.aq = tail call <2 x float> @llvm.round.v2f32(<2 x float> %i.ap)
  %i.ar = fptoui <2 x float> %i.aq to <2 x i8>
  %i.as = zext <2 x i8> %i.ar to <2 x i16>
  %i.at = shl <2 x i16> %i.as, <i16 11, i16 5>    ; 2 uses
  %i.au = zext i8 %i.an to i16
  %i.av = extractelement <2 x i16> %i.at, i64 0
  %i.aw = or disjoint i16 %i.av, %i.au
  %i.ax = extractelement <2 x i16> %i.at, i64 1
  %i.ay = or i16 %i.aw, %i.ax
  store i16 %i.ay, ptr %0, align 2
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.az = trunc i32 %1 to i8
  %i.ba = insertelement <2 x i8> poison, i8 %i.az, i64 0
  %i.bb = trunc nuw i32 %.sroa.22.0.extract.shift to i8
  %i.bc = insertelement <2 x i8> %i.ba, i8 %i.bb, i64 1
  %i.bd = uitofp <2 x i8> %i.bc to <2 x float>
  %i.be = bitcast i32 %1 to <4 x i8>
  %i.bf = shufflevector <4 x i8> %i.be, <4 x i8> poison, <2 x i32> <i32 1, i32 2>
  %i.bg = uitofp <2 x i8> %i.bf to <2 x float>
  %i.bh = fdiv <2 x float> %i.bd, splat (float 2.550000e+02) ; 2 uses
  %i.bi = extractelement <2 x float> %i.bh, i64 0
  %i.bj = fmul nnan float %i.bi, 3.100000e+01
  %i.bk = tail call float @llvm.round.f32(float %i.bj)
  %i.bl = fptoui float %i.bk to i8
  %i.bm = extractelement <2 x float> %i.bh, i64 1
  %i.bn = fcmp ogt float %i.bm, f0x3E48C8C9
  %i.bo = zext i8 %i.bl to i16
  %i.bp = shl i16 %i.bo, 11
  %i.bq = fdiv nnan <2 x float> %i.bg, splat (float 2.550000e+02)
  %i.br = fmul nnan <2 x float> %i.bq, splat (float 3.100000e+01)
  %i.bs = tail call <2 x float> @llvm.round.v2f32(<2 x float> %i.br)
  %i.bt = fptoui <2 x float> %i.bs to <2 x i8>
  %i.bu = zext <2 x i8> %i.bt to <2 x i16>
  %i.bv = shl nuw nsw <2 x i16> %i.bu, <i16 6, i16 1> ; 2 uses
  %i.bw = zext i1 %i.bn to i16
  %i.bx = or disjoint i16 %i.bp, %i.bw
  %i.by = extractelement <2 x i16> %i.bv, i64 0
  %i.bz = or i16 %i.bx, %i.by
  %i.ca = extractelement <2 x i16> %i.bv, i64 1
  %i.cb = or i16 %i.bz, %i.ca
  store i16 %i.cb, ptr %0, align 2
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  %3 = tail call i32 @llvm.bswap.i32(i32 %1)
  %4 = bitcast i32 %3 to <4 x i8>
  %i.cc = uitofp <4 x i8> %4 to <4 x float>
  %i.cd = fdiv nnan <4 x float> %i.cc, splat (float 2.550000e+02)
  %i.ce = fmul nnan <4 x float> %i.cd, splat (float 1.500000e+01)
  %i.cf = tail call <4 x float> @llvm.round.v4f32(<4 x float> %i.ce)
  %i.cg = fptoui <4 x float> %i.cf to <4 x i8>
  %i.ch = zext <4 x i8> %i.cg to <4 x i16>
  %i.ci = shl <4 x i16> %i.ch, <i16 0, i16 4, i16 8, i16 12>
  %i.cj = tail call i16 @llvm.vector.reduce.or.v4i16(<4 x i16> %i.ci)
  store i16 %i.cj, ptr %0, align 2
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  store i8 %.sroa.039.0.extract.trunc, ptr %0, align 1
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.846.0.extract.trunc, ptr %i.ck, align 1
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %.sroa.15.0.extract.trunc, ptr %i.cl, align 1
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  store i32 %1, ptr %0, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @ImageToPOT(ptr nofree noundef captures(none) %0, i32 %1) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = sitofp i32 %i.d to float
  %i.j = tail call float @logf(float noundef %i.i) #52
  %i.k = fdiv float %i.j, f0x3F317218
  %i.l = tail call float @llvm.ceil.f32(float %i.k)
  %exp2f = tail call float @exp2f(float %i.l) #52
  %i.m = fptosi float %exp2f to i32               ; 2 uses
  %i.n = load i32, ptr %i.f, align 4
  %i.o = sitofp i32 %i.n to float
  %i.p = tail call float @logf(float noundef %i.o) #52
  %i.q = fdiv float %i.p, f0x3F317218
  %i.r = tail call float @llvm.ceil.f32(float %i.q)
  %exp2f11 = tail call float @exp2f(float %i.r) #52
  %i.s = fptosi float %exp2f11 to i32             ; 2 uses
  %i.t = load i32, ptr %i.c, align 8
  %.not = icmp eq i32 %i.t, %i.m
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = load i32, ptr %i.f, align 4
  %.not12 = icmp eq i32 %i.u, %i.s
  br i1 %.not12, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @ImageResizeCanvas(ptr noundef nonnull %0, i32 noundef %i.m, i32 noundef %i.s, i32 noundef 0, i32 noundef 0, i32 %1)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @logf(float noundef) local_unnamed_addr #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #17

; Function Attrs: nounwind uwtable
define void @ImageAlphaCrop(ptr nofree noundef captures(none) %0, float noundef %1) local_unnamed_addr #34 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 8 ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4 ; 2 uses
  %i.i = tail call ptr @LoadImageColors(ptr noundef nonnull byval(%struct.Image) align 8 %0) ; 3 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %GetImageAlphaBorder.exit, label %.preheader50.i

.preheader50.i:                                   ; preds = %bb.d
  %i.j = icmp sgt i32 %.sroa.4.0.copyload, 0
  br i1 %i.j, label %.preheader.lr.ph.i, label %._crit_edge64.thread.i

.preheader.lr.ph.i:                               ; preds = %.preheader50.i
  %i.k = icmp sgt i32 %.sroa.3.0.copyload, 0
  %i.l = fmul float %1, 2.550000e+02
  %i.m = fptoui float %i.l to i8                  ; 3 uses
  br i1 %i.k, label %.preheader.us.preheader.i, label %._crit_edge64.thread.i

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.i
  %i.n = zext nneg i32 %.sroa.3.0.copyload to i64 ; 3 uses
  %wide.trip.count77.i = zext nneg i32 %.sroa.4.0.copyload to i64
  %xtraiter = and i64 %i.n, 1
  %i.o = icmp eq i32 %.sroa.3.0.copyload, 1
  %unroll_iter = and i64 %i.n, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod14 = trunc i32 %.sroa.3.0.copyload to i1
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %._crit_edge.us.i, %.preheader.us.preheader.i
  %indvars.iv74.i = phi i64 [ 0, %.preheader.us.preheader.i ], [ %indvars.iv.next75.i, %._crit_edge.us.i ] ; 3 uses
  %.063.us.i = phi i32 [ 65536, %.preheader.us.preheader.i ], [ %.3.us.i.lcssa, %._crit_edge.us.i ] ; 2 uses
  %.03661.us.i = phi i32 [ 0, %.preheader.us.preheader.i ], [ %.238.us.i.lcssa, %._crit_edge.us.i ] ; 2 uses
  %.03960.us.i = phi i32 [ 65536, %.preheader.us.preheader.i ], [ %.342.us.i.lcssa, %._crit_edge.us.i ] ; 2 uses
  %.04359.us.i = phi i32 [ 0, %.preheader.us.preheader.i ], [ %.346.us.i.lcssa, %._crit_edge.us.i ] ; 2 uses
  %i.p = mul nuw nsw i64 %indvars.iv74.i, %i.n
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.p ; 3 uses
  %i.r = trunc nuw nsw i64 %indvars.iv74.i to i32 ; 6 uses
  br i1 %i.o, label %.epil.preheader, label %.preheader.us.i.new

.preheader.us.i.new:                              ; preds = %.preheader.us.i, %bb.h
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %bb.h ], [ 0, %.preheader.us.i ] ; 4 uses
  %.155.us.i = phi i32 [ %.3.us.i.1, %bb.h ], [ %.063.us.i, %.preheader.us.i ] ; 2 uses
  %.13753.us.i = phi i32 [ %.238.us.i.1, %bb.h ], [ %.03661.us.i, %.preheader.us.i ] ; 2 uses
  %.14052.us.i = phi i32 [ %.342.us.i.1, %bb.h ], [ %.03960.us.i, %.preheader.us.i ] ; 2 uses
  %.14451.us.i = phi i32 [ %.346.us.i.1, %bb.h ], [ %.04359.us.i, %.preheader.us.i ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %bb.h ], [ 0, %.preheader.us.i ]
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 3
  %i.u = load i8, ptr %i.t, align 1
  %i.v = icmp ugt i8 %i.u, %i.m
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.preheader.us.i.new
  %i.w = trunc nuw nsw i64 %indvars.iv.i to i32   ; 2 uses
  %spec.select.us.i = tail call i32 @llvm.smin.i32(i32 %i.w, i32 %.155.us.i)
  %.245.us.i = tail call i32 @llvm.smax.i32(i32 %i.w, i32 %.14451.us.i)
  %.241.us.i = tail call i32 @llvm.smin.i32(i32 %i.r, i32 %.14052.us.i)
  %spec.select49.us.i = tail call i32 @llvm.smax.i32(i32 %i.r, i32 %.13753.us.i)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.preheader.us.i.new
  %.346.us.i = phi i32 [ %.14451.us.i, %.preheader.us.i.new ], [ %.245.us.i, %bb.e ] ; 2 uses
  %.342.us.i = phi i32 [ %.14052.us.i, %.preheader.us.i.new ], [ %.241.us.i, %bb.e ] ; 2 uses
  %.238.us.i = phi i32 [ %.13753.us.i, %.preheader.us.i.new ], [ %spec.select49.us.i, %bb.e ] ; 2 uses
  %.3.us.i = phi i32 [ %.155.us.i, %.preheader.us.i.new ], [ %spec.select.us.i, %bb.e ] ; 2 uses
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 3
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = icmp ugt i8 %i.z, %i.m
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = trunc nuw nsw i64 %indvars.iv.next.i to i32 ; 2 uses
  %spec.select.us.i.1 = tail call i32 @llvm.smin.i32(i32 %i.ab, i32 %.3.us.i)
  %.245.us.i.1 = tail call i32 @llvm.smax.i32(i32 %i.ab, i32 %.346.us.i)
  %.241.us.i.1 = tail call i32 @llvm.smin.i32(i32 %i.r, i32 %.342.us.i)
  %spec.select49.us.i.1 = tail call i32 @llvm.smax.i32(i32 %i.r, i32 %.238.us.i)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.346.us.i.1 = phi i32 [ %.346.us.i, %bb.f ], [ %.245.us.i.1, %bb.g ] ; 3 uses
  %.342.us.i.1 = phi i32 [ %.342.us.i, %bb.f ], [ %.241.us.i.1, %bb.g ] ; 3 uses
  %.238.us.i.1 = phi i32 [ %.238.us.i, %bb.f ], [ %spec.select49.us.i.1, %bb.g ] ; 3 uses
  %.3.us.i.1 = phi i32 [ %.3.us.i, %bb.f ], [ %spec.select.us.i.1, %bb.g ] ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.i.unr-lcssa, label %.preheader.us.i.new

._crit_edge.us.i.unr-lcssa:                       ; preds = %bb.h
  br i1 %lcmp.mod.not, label %._crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.preheader.us.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader.us.i ], [ %indvars.iv.next.i.1, %._crit_edge.us.i.unr-lcssa ] ; 2 uses
  %.155.us.i.epil.init = phi i32 [ %.063.us.i, %.preheader.us.i ], [ %.3.us.i.1, %._crit_edge.us.i.unr-lcssa ] ; 2 uses
  %.13753.us.i.epil.init = phi i32 [ %.03661.us.i, %.preheader.us.i ], [ %.238.us.i.1, %._crit_edge.us.i.unr-lcssa ] ; 2 uses
end_hunk_2
begin_hunk_3_@GetImageAlphaBorder:bb.a
  %i.k = icmp eq i32 %i.f, 1
  %unroll_iter = and i64 %i.j, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod90 = trunc i32 %i.f to i1
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv74 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next75, %._crit_edge.us ] ; 3 uses
  %.063.us = phi i32 [ 65536, %.preheader.us.preheader ], [ %.3.us.lcssa, %._crit_edge.us ] ; 2 uses
  %.03661.us = phi i32 [ 0, %.preheader.us.preheader ], [ %.238.us.lcssa, %._crit_edge.us ] ; 2 uses
  %.03960.us = phi i32 [ 65536, %.preheader.us.preheader ], [ %.342.us.lcssa, %._crit_edge.us ] ; 2 uses
  %.04359.us = phi i32 [ 0, %.preheader.us.preheader ], [ %.346.us.lcssa, %._crit_edge.us ] ; 2 uses
  %i.l = mul nuw nsw i64 %indvars.iv74, %i.j
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.l ; 3 uses
  %i.n = trunc nuw nsw i64 %indvars.iv74 to i32   ; 6 uses
  br i1 %i.k, label %.epil.preheader, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %bb.e ], [ 0, %.preheader.us ] ; 4 uses
  %.155.us = phi i32 [ %.3.us.1, %bb.e ], [ %.063.us, %.preheader.us ] ; 2 uses
  %.13753.us = phi i32 [ %.238.us.1, %bb.e ], [ %.03661.us, %.preheader.us ] ; 2 uses
  %.14052.us = phi i32 [ %.342.us.1, %bb.e ], [ %.03960.us, %.preheader.us ] ; 2 uses
  %.14451.us = phi i32 [ %.346.us.1, %bb.e ], [ %.04359.us, %.preheader.us ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %bb.e ], [ 0, %.preheader.us ]
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 3
  %i.q = load i8, ptr %i.p, align 1
  %i.r = icmp ugt i8 %i.q, %i.i
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.preheader.us.new
  %i.s = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %spec.select.us = tail call i32 @llvm.smin.i32(i32 %i.s, i32 %.155.us)
  %.245.us = tail call i32 @llvm.smax.i32(i32 %i.s, i32 %.14451.us)
  %.241.us = tail call i32 @llvm.smin.i32(i32 %i.n, i32 %.14052.us)
  %spec.select49.us = tail call i32 @llvm.smax.i32(i32 %i.n, i32 %.13753.us)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.preheader.us.new
  %.346.us = phi i32 [ %.14451.us, %.preheader.us.new ], [ %.245.us, %bb.b ] ; 2 uses
  %.342.us = phi i32 [ %.14052.us, %.preheader.us.new ], [ %.241.us, %bb.b ] ; 2 uses
  %.238.us = phi i32 [ %.13753.us, %.preheader.us.new ], [ %spec.select49.us, %bb.b ] ; 2 uses
  %.3.us = phi i32 [ %.155.us, %.preheader.us.new ], [ %spec.select.us, %bb.b ] ; 2 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 3
  %i.v = load i8, ptr %i.u, align 1
  %i.w = icmp ugt i8 %i.v, %i.i
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = trunc nuw nsw i64 %indvars.iv.next to i32 ; 2 uses
  %spec.select.us.1 = tail call i32 @llvm.smin.i32(i32 %i.x, i32 %.3.us)
  %.245.us.1 = tail call i32 @llvm.smax.i32(i32 %i.x, i32 %.346.us)
  %.241.us.1 = tail call i32 @llvm.smin.i32(i32 %i.n, i32 %.342.us)
  %spec.select49.us.1 = tail call i32 @llvm.smax.i32(i32 %i.n, i32 %.238.us)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.346.us.1 = phi i32 [ %.346.us, %bb.c ], [ %.245.us.1, %bb.d ] ; 3 uses
  %.342.us.1 = phi i32 [ %.342.us, %bb.c ], [ %.241.us.1, %bb.d ] ; 3 uses
  %.238.us.1 = phi i32 [ %.238.us, %bb.c ], [ %spec.select49.us.1, %bb.d ] ; 3 uses
  %.3.us.1 = phi i32 [ %.3.us, %bb.c ], [ %spec.select.us.1, %bb.d ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new

._crit_edge.us.unr-lcssa:                         ; preds = %bb.e
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next.1, %._crit_edge.us.unr-lcssa ] ; 2 uses
  %.155.us.epil.init = phi i32 [ %.063.us, %.preheader.us ], [ %.3.us.1, %._crit_edge.us.unr-lcssa ] ; 2 uses
  %.13753.us.epil.init = phi i32 [ %.03661.us, %.preheader.us ], [ %.238.us.1, %._crit_edge.us.unr-lcssa ] ; 2 uses
  %.14052.us.epil.init = phi i32 [ %.03960.us, %.preheader.us ], [ %.342.us.1, %._crit_edge.us.unr-lcssa ] ; 2 uses
  %.14451.us.epil.init = phi i32 [ %.04359.us, %.preheader.us ], [ %.346.us.1, %._crit_edge.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod90)
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.epil.init
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 3
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = icmp ugt i8 %i.aa, %i.i
  br i1 %i.ab, label %bb.f, label %._crit_edge.us

bb.f:                                             ; preds = %.epil.preheader
  %i.ac = trunc nuw nsw i64 %indvars.iv.epil.init to i32 ; 2 uses
  %spec.select.us.epil = tail call i32 @llvm.smin.i32(i32 %i.ac, i32 %.155.us.epil.init)
  %.245.us.epil = tail call i32 @llvm.smax.i32(i32 %i.ac, i32 %.14451.us.epil.init)
  %.241.us.epil = tail call i32 @llvm.smin.i32(i32 %i.n, i32 %.14052.us.epil.init)
  %spec.select49.us.epil = tail call i32 @llvm.smax.i32(i32 %i.n, i32 %.13753.us.epil.init)
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %.epil.preheader, %bb.f, %._crit_edge.us.unr-lcssa
  %.346.us.lcssa = phi i32 [ %.346.us.1, %._crit_edge.us.unr-lcssa ], [ %.14451.us.epil.init, %.epil.preheader ], [ %.245.us.epil, %bb.f ] ; 3 uses
  %.342.us.lcssa = phi i32 [ %.342.us.1, %._crit_edge.us.unr-lcssa ], [ %.14052.us.epil.init, %.epil.preheader ], [ %.241.us.epil, %bb.f ] ; 3 uses
  %.238.us.lcssa = phi i32 [ %.238.us.1, %._crit_edge.us.unr-lcssa ], [ %.13753.us.epil.init, %.epil.preheader ], [ %spec.select49.us.epil, %bb.f ] ; 2 uses
  %.3.us.lcssa = phi i32 [ %.3.us.1, %._crit_edge.us.unr-lcssa ], [ %.155.us.epil.init, %.epil.preheader ], [ %spec.select.us.epil, %bb.f ] ; 4 uses
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 2 uses
  %exitcond78.not = icmp eq i64 %indvars.iv.next75, %wide.trip.count77
  br i1 %exitcond78.not, label %._crit_edge64, label %.preheader.us

._crit_edge64:                                    ; preds = %._crit_edge.us
  %i.ad = icmp ne i32 %.3.us.lcssa, 65536
  %i.ae = icmp ne i32 %.346.us.lcssa, 65536
  %or.cond = select i1 %i.ad, i1 %i.ae, i1 false
  br i1 %or.cond, label %bb.g, label %._crit_edge64.thread

bb.g:                                             ; preds = %._crit_edge64
  %i.af = add nuw nsw i32 %.346.us.lcssa, 1
  %i.ag = sub i32 %i.af, %.3.us.lcssa
  %reass.sub = sub i32 %.238.us.lcssa, %.342.us.lcssa
  %i.ah = add i32 %reass.sub, 1
  %i.ai = insertelement <4 x i32> poison, i32 %i.ah, i64 0
  %i.aj = insertelement <4 x i32> %i.ai, i32 %i.ag, i64 1
  %i.ak = insertelement <4 x i32> %i.aj, i32 %.342.us.lcssa, i64 2
  %i.al = insertelement <4 x i32> %i.ak, i32 %.3.us.lcssa, i64 3
  %i.am = sitofp <4 x i32> %i.al to <4 x float>   ; 2 uses
  %i.an = shufflevector <4 x float> %i.am, <4 x float> poison, <2 x i32> <i32 3, i32 2>
  %i.ao = shufflevector <4 x float> %i.am, <4 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %._crit_edge64.thread

._crit_edge64.thread:                             ; preds = %.preheader.lr.ph, %.preheader50, %bb.g, %._crit_edge64
  %.sroa.030.0 = phi <2 x float> [ %i.an, %bb.g ], [ zeroinitializer, %._crit_edge64 ], [ zeroinitializer, %.preheader50 ], [ zeroinitializer, %.preheader.lr.ph ]
  %.sroa.432.0 = phi <2 x float> [ %i.ao, %bb.g ], [ zeroinitializer, %._crit_edge64 ], [ zeroinitializer, %.preheader50 ], [ zeroinitializer, %.preheader.lr.ph ]
  tail call void @free(ptr noundef nonnull %i.a) #52
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge64.thread, %bb.a
  %.sroa.030.1 = phi <2 x float> [ %.sroa.030.0, %._crit_edge64.thread ], [ zeroinitializer, %bb.a ]
  %.sroa.432.1 = phi <2 x float> [ %.sroa.432.0, %._crit_edge64.thread ], [ zeroinitializer, %bb.a ]
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.030.1, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.432.1, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define void @ImageAlphaClear(ptr nofree noundef readonly captures(none) %0, i32 %1, float noundef %2) local_unnamed_addr #4 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i32 %1 to i8   ; 3 uses
  %.sroa.7.0.extract.shift = lshr i32 %1, 8
  %.sroa.7.0.extract.trunc = trunc i32 %.sroa.7.0.extract.shift to i8 ; 2 uses
  %.sroa.12.0.extract.shift = lshr i32 %1, 16
  %.sroa.12.0.extract.trunc = trunc i32 %.sroa.12.0.extract.shift to i8 ; 2 uses
  %.sroa.17.0.extract.shift = lshr i32 %1, 24
  %.sroa.17.0.extract.trunc = trunc nuw i32 %.sroa.17.0.extract.shift to i8 ; 2 uses
  %i.a = load ptr, ptr %0, align 8
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 13 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 13 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i32, ptr %i.i, align 8
  %i.k = icmp sgt i32 %i.j, 1
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.50) #52
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.m = load i32, ptr %i.l, align 4              ; 2 uses
  %i.n = icmp sgt i32 %i.m, 13
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.51) #52
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  switch i32 %i.m, label %.loopexit [
    i32 2, label %bb.i
    i32 5, label %bb.l
    i32 6, label %bb.p
    i32 7, label %bb.t
    i32 10, label %.preheader
    i32 13, label %.preheader122
  ]

.preheader122:                                    ; preds = %bb.h
  %i.o = load i32, ptr %i.c, align 8
  %i.p = load i32, ptr %i.f, align 4
  %i.q = shl i32 %i.o, 2
  %i.r = mul i32 %i.q, %i.p
  %i.s = icmp sgt i32 %i.r, 3
  br i1 %i.s, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader122
  %3 = tail call i32 @llvm.bswap.i32(i32 %1)
  %4 = bitcast i32 %3 to <4 x i8>
  %i.t = uitofp <4 x i8> %4 to <4 x float>
  %i.u = fdiv <4 x float> %i.t, splat (float 2.550000e+02)
  %i.v = bitcast <4 x float> %i.u to <4 x i32>
  %i.w = add nuw <4 x i32> %i.v, splat (i32 4096) ; 3 uses
  %i.x = lshr <4 x i32> %i.w, splat (i32 23)      ; 2 uses
  %i.y = and <4 x i32> %i.x, splat (i32 255)      ; 4 uses
  %i.z = add nsw <4 x i32> %i.y, splat (i32 -102)
  %i.aa = icmp ult <4 x i32> %i.z, splat (i32 11)
  %i.ab = and <4 x i32> %i.w, splat (i32 8388607) ; 2 uses
  %i.ac = lshr <4 x i32> %i.w, splat (i32 16)
  %i.ad = and <4 x i32> %i.ac, splat (i32 32768)
  %i.ae = icmp samesign ugt <4 x i32> %i.y, splat (i32 112)
  %i.af = shl nuw nsw <4 x i32> %i.x, splat (i32 10)
  %i.ag = and <4 x i32> %i.af, splat (i32 31744)
  %i.ah = lshr <4 x i32> %i.ab, splat (i32 13)
  %i.ai = or disjoint <4 x i32> %i.ag, %i.ah
  %i.aj = xor <4 x i32> %i.ai, splat (i32 16384)
  %i.ak = select <4 x i1> %i.ae, <4 x i32> %i.aj, <4 x i32> zeroinitializer
  %i.al = add nuw nsw <4 x i32> %i.ab, splat (i32 8384512)
  %i.am = sub nsw <4 x i32> splat (i32 125), %i.y
  %i.an = lshr <4 x i32> %i.al, %i.am
  %i.ao = add nuw nsw <4 x i32> %i.an, splat (i32 1)
  %i.ap = lshr <4 x i32> %i.ao, splat (i32 1)
  %i.aq = select <4 x i1> %i.aa, <4 x i32> %i.ap, <4 x i32> zeroinitializer
  %i.ar = icmp samesign ugt <4 x i32> %i.y, splat (i32 143)
  %i.as = select <4 x i1> %i.ar, <4 x i32> splat (i32 32767), <4 x i32> zeroinitializer
  %i.at = or disjoint <4 x i32> %i.as, %i.ad
  %i.au = or <4 x i32> %i.at, %i.ak
  %i.av = or <4 x i32> %i.au, %i.aq
  %i.aw = trunc <4 x i32> %i.av to <4 x i16>      ; 4 uses
  %i.ax = extractelement <4 x i16> %i.aw, i64 0
  %i.ay = extractelement <4 x i16> %i.aw, i64 1
  %i.az = extractelement <4 x i16> %i.aw, i64 2
  %i.ba = extractelement <4 x i16> %i.aw, i64 3
  br label %bb.z

.preheader:                                       ; preds = %bb.h
  %i.bb = load i32, ptr %i.c, align 8             ; 2 uses
  %i.bc = load i32, ptr %i.f, align 4             ; 2 uses
  %i.bd = shl i32 %i.bb, 2
  %i.be = mul i32 %i.bd, %i.bc
  %i.bf = icmp sgt i32 %i.be, 3
  br i1 %i.bf, label %.lr.ph126, label %.loopexit

.lr.ph126:                                        ; preds = %.preheader
  %i.bg = bitcast i32 %1 to <4 x i8>
  %i.bh = uitofp <4 x i8> %i.bg to <4 x float>
  %i.bi = fdiv <4 x float> %i.bh, splat (float 2.550000e+02) ; 4 uses
  %.pre156 = load ptr, ptr %0, align 8
  %i.bj = extractelement <4 x float> %i.bi, i64 0
  %i.bk = extractelement <4 x float> %i.bi, i64 1
  %i.bl = extractelement <4 x float> %i.bi, i64 2
  %i.bm = extractelement <4 x float> %i.bi, i64 3
  br label %bb.w

bb.i:                                             ; preds = %bb.h
  %i.bn = fmul float %2, 2.550000e+02
  %i.bo = fptoui float %i.bn to i8
  %i.bp = load i32, ptr %i.c, align 8             ; 2 uses
  %i.bq = load i32, ptr %i.f, align 4             ; 2 uses
  %i.br = shl i32 %i.bp, 1
  %i.bs = mul i32 %i.br, %i.bq
  %i.bt = icmp sgt i32 %i.bs, 1
  br i1 %i.bt, label %.lr.ph134.preheader, label %.loopexit

.lr.ph134.preheader:                              ; preds = %bb.i
  %.pre172 = load ptr, ptr %0, align 8
  br label %.lr.ph134

.lr.ph134:                                        ; preds = %.lr.ph134.preheader, %bb.k
  %i.bu = phi i32 [ %i.bq, %.lr.ph134.preheader ], [ %i.cc, %bb.k ]
  %i.bv = phi i32 [ %i.bp, %.lr.ph134.preheader ], [ %i.cd, %bb.k ]
  %i.bw = phi ptr [ %.pre172, %.lr.ph134.preheader ], [ %i.ce, %bb.k ] ; 2 uses
  %indvars.iv153 = phi i64 [ 1, %.lr.ph134.preheader ], [ %indvars.iv.next154, %bb.k ] ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %indvars.iv153 ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1
  %.not117 = icmp ugt i8 %i.by, %i.bo
  br i1 %.not117, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph134
  %i.bz = getelementptr i8, ptr %i.bx, i64 -1
  store i8 %.sroa.0.0.extract.trunc, ptr %i.bz, align 1
  %i.ca = load ptr, ptr %0, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %indvars.iv153
  store i8 %.sroa.17.0.extract.trunc, ptr %i.cb, align 1
  %.pre171 = load ptr, ptr %0, align 8
  %.pre173 = load i32, ptr %i.c, align 8
  %.pre174 = load i32, ptr %i.f, align 4
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph134, %bb.j
  %i.cc = phi i32 [ %i.bu, %.lr.ph134 ], [ %.pre174, %bb.j ] ; 2 uses
  %i.cd = phi i32 [ %i.bv, %.lr.ph134 ], [ %.pre173, %bb.j ] ; 2 uses
  %i.ce = phi ptr [ %i.bw, %.lr.ph134 ], [ %.pre171, %bb.j ]
  %indvars.iv.next154 = add nuw nsw i64 %indvars.iv153, 2 ; 2 uses
  %i.cf = shl i32 %i.cd, 1
  %i.cg = mul i32 %i.cf, %i.cc
  %i.ch = sext i32 %i.cg to i64
  %i.ci = icmp slt i64 %indvars.iv.next154, %i.ch
  br i1 %i.ci, label %.lr.ph134, label %.loopexit

bb.l:                                             ; preds = %bb.h
  %i.cj = load i32, ptr %i.c, align 8             ; 2 uses
  %i.ck = load i32, ptr %i.f, align 4             ; 2 uses
  %i.cl = mul nsw i32 %i.ck, %i.cj
  %i.cm = icmp sgt i32 %i.cl, 0
  br i1 %i.cm, label %.lr.ph132, label %.loopexit

.lr.ph132:                                        ; preds = %bb.l
  %.lobit = lshr i32 %1, 31
  %i.cn = uitofp i8 %.sroa.12.0.extract.trunc to float
  %i.co = fmul nnan float %i.cn, 3.100000e+01
  %i.cp = tail call float @llvm.round.f32(float %i.co)
  %i.cq = fptoui float %i.cp to i8
  %i.cr = uitofp i8 %.sroa.7.0.extract.trunc to float
  %i.cs = fmul nnan float %i.cr, 3.100000e+01
  %i.ct = tail call float @llvm.round.f32(float %i.cs)
  %i.cu = fptoui float %i.ct to i8
  %i.cv = uitofp i8 %.sroa.0.0.extract.trunc to float
  %i.cw = fmul nnan float %i.cv, 3.100000e+01
  %i.cx = tail call float @llvm.round.f32(float %i.cw)
  %i.cy = fptoui float %i.cx to i8
  %i.cz = fcmp uge float %2, 5.000000e-01
  %i.da = zext i1 %i.cz to i16
  %i.db = zext i8 %i.cy to i32
  %i.dc = shl nuw nsw i32 %i.db, 11
  %i.dd = zext i8 %i.cu to i32
  %i.de = shl nuw nsw i32 %i.dd, 6
  %i.df = zext i8 %i.cq to i32
  %i.dg = shl nuw nsw i32 %i.df, 1
  %i.dh = or disjoint i32 %i.dc, %.lobit
  %i.di = or i32 %i.dh, %i.de
  %i.dj = or i32 %i.di, %i.dg
  %i.dk = trunc i32 %i.dj to i16
  %.pre168 = load ptr, ptr %0, align 8
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph132, %bb.o
  %i.dl = phi i32 [ %i.ck, %.lr.ph132 ], [ %i.dr, %bb.o ]
  %i.dm = phi i32 [ %i.cj, %.lr.ph132 ], [ %i.ds, %bb.o ]
  %i.dn = phi ptr [ %.pre168, %.lr.ph132 ], [ %i.dt, %bb.o ] ; 2 uses
  %indvars.iv150 = phi i64 [ 0, %.lr.ph132 ], [ %indvars.iv.next151, %bb.o ] ; 2 uses
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.dn, i64 %indvars.iv150 ; 2 uses
  %i.dp = load i16, ptr %i.do, align 2
  %i.dq = and i16 %i.dp, 1
  %.not116 = icmp samesign ugt i16 %i.dq, %i.da
  br i1 %.not116, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i16 %i.dk, ptr %i.do, align 2
  %.pre167 = load ptr, ptr %0, align 8
  %.pre169 = load i32, ptr %i.c, align 8
  %.pre170 = load i32, ptr %i.f, align 4
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.dr = phi i32 [ %i.dl, %bb.m ], [ %.pre170, %bb.n ] ; 2 uses
  %i.ds = phi i32 [ %i.dm, %bb.m ], [ %.pre169, %bb.n ] ; 2 uses
  %i.dt = phi ptr [ %i.dn, %bb.m ], [ %.pre167, %bb.n ]
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1 ; 2 uses
  %i.du = mul nsw i32 %i.dr, %i.ds
  %i.dv = sext i32 %i.du to i64
  %i.dw = icmp slt i64 %indvars.iv.next151, %i.dv
  br i1 %i.dw, label %bb.m, label %.loopexit

bb.p:                                             ; preds = %bb.h
  %i.dx = load i32, ptr %i.c, align 8             ; 2 uses
  %i.dy = load i32, ptr %i.f, align 4             ; 2 uses
  %i.dz = mul nsw i32 %i.dy, %i.dx
  %i.ea = icmp sgt i32 %i.dz, 0
  br i1 %i.ea, label %.lr.ph130, label %.loopexit

.lr.ph130:                                        ; preds = %bb.p
  %5 = tail call i32 @llvm.bswap.i32(i32 %1)
  %6 = bitcast i32 %5 to <4 x i8>
  %i.eb = uitofp <4 x i8> %6 to <4 x float>
  %i.ec = fmul nnan <4 x float> %i.eb, splat (float 1.500000e+01) ; 3 uses
  %i.ed = extractelement <4 x float> %i.ec, i64 0
  %i.ee = tail call float @llvm.round.f32(float %i.ed)
  %i.ef = fptoui float %i.ee to i8
  %i.eg = extractelement <4 x float> %i.ec, i64 3
  %i.eh = tail call float @llvm.round.f32(float %i.eg)
  %i.ei = fptoui float %i.eh to i8
  %i.ej = fmul float %2, 1.500000e+01
  %i.ek = fptoui float %i.ej to i8
  %i.el = zext i8 %i.ek to i16
  %i.em = zext i8 %i.ei to i16
  %i.en = shl i16 %i.em, 12
  %i.eo = tail call <4 x float> @llvm.round.v4f32(<4 x float> %i.ec)
  %i.ep = shufflevector <4 x float> %i.eo, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.eq = fptoui <2 x float> %i.ep to <2 x i8>
  %i.er = zext <2 x i8> %i.eq to <2 x i16>
  %i.es = shl nuw <2 x i16> %i.er, <i16 4, i16 8> ; 2 uses
  %i.et = zext i8 %i.ef to i16
  %i.eu = or disjoint i16 %i.en, %i.et
  %i.ev = extractelement <2 x i16> %i.es, i64 1
  %i.ew = or i16 %i.eu, %i.ev
  %i.ex = extractelement <2 x i16> %i.es, i64 0
  %i.ey = or i16 %i.ew, %i.ex
  %.pre164 = load ptr, ptr %0, align 8
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph130, %bb.s
  %i.ez = phi i32 [ %i.dy, %.lr.ph130 ], [ %i.ff, %bb.s ]
  %i.fa = phi i32 [ %i.dx, %.lr.ph130 ], [ %i.fg, %bb.s ]
  %i.fb = phi ptr [ %.pre164, %.lr.ph130 ], [ %i.fh, %bb.s ] ; 2 uses
  %indvars.iv147 = phi i64 [ 0, %.lr.ph130 ], [ %indvars.iv.next148, %bb.s ] ; 2 uses
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %i.fb, i64 %indvars.iv147 ; 2 uses
  %i.fd = load i16, ptr %i.fc, align 2
  %i.fe = and i16 %i.fd, 15
  %.not115 = icmp samesign ugt i16 %i.fe, %i.el
  br i1 %.not115, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i16 %i.ey, ptr %i.fc, align 2
  %.pre163 = load ptr, ptr %0, align 8
  %.pre165 = load i32, ptr %i.c, align 8
  %.pre166 = load i32, ptr %i.f, align 4
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.ff = phi i32 [ %i.ez, %bb.q ], [ %.pre166, %bb.r ] ; 2 uses
  %i.fg = phi i32 [ %i.fa, %bb.q ], [ %.pre165, %bb.r ] ; 2 uses
  %i.fh = phi ptr [ %i.fb, %bb.q ], [ %.pre163, %bb.r ]
  %indvars.iv.next148 = add nuw nsw i64 %indvars.iv147, 1 ; 2 uses
  %i.fi = mul nsw i32 %i.ff, %i.fg
  %i.fj = sext i32 %i.fi to i64
  %i.fk = icmp slt i64 %indvars.iv.next148, %i.fj
  br i1 %i.fk, label %bb.q, label %.loopexit

bb.t:                                             ; preds = %bb.h
  %i.fl = fmul float %2, 2.550000e+02
  %i.fm = fptoui float %i.fl to i8
  %i.fn = load i32, ptr %i.c, align 8             ; 2 uses
  %i.fo = load i32, ptr %i.f, align 4             ; 2 uses
  %i.fp = shl i32 %i.fn, 2
  %i.fq = mul i32 %i.fp, %i.fo
  %i.fr = icmp sgt i32 %i.fq, 3
  br i1 %i.fr, label %.lr.ph128.preheader, label %.loopexit

.lr.ph128.preheader:                              ; preds = %bb.t
  %.pre160 = load ptr, ptr %0, align 8
  br label %.lr.ph128

.lr.ph128:                                        ; preds = %.lr.ph128.preheader, %bb.v
  %i.fs = phi i32 [ %i.fo, %.lr.ph128.preheader ], [ %i.gg, %bb.v ]
  %i.ft = phi i32 [ %i.fn, %.lr.ph128.preheader ], [ %i.gh, %bb.v ]
  %i.fu = phi ptr [ %.pre160, %.lr.ph128.preheader ], [ %i.gi, %bb.v ] ; 2 uses
  %indvars.iv144 = phi i64 [ 3, %.lr.ph128.preheader ], [ %indvars.iv.next145, %bb.v ] ; 5 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 %indvars.iv144 ; 2 uses
  %i.fw = load i8, ptr %i.fv, align 1
  %.not = icmp ugt i8 %i.fw, %i.fm
  br i1 %.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph128
  %i.fx = getelementptr i8, ptr %i.fv, i64 -3
  store i8 %.sroa.0.0.extract.trunc, ptr %i.fx, align 1
  %i.fy = load ptr, ptr %0, align 8
  %i.fz = getelementptr i8, ptr %i.fy, i64 %indvars.iv144
  %i.ga = getelementptr i8, ptr %i.fz, i64 -2
  store i8 %.sroa.7.0.extract.trunc, ptr %i.ga, align 1
  %i.gb = load ptr, ptr %0, align 8
  %i.gc = getelementptr i8, ptr %i.gb, i64 %indvars.iv144
  %i.gd = getelementptr i8, ptr %i.gc, i64 -1
  store i8 %.sroa.12.0.extract.trunc, ptr %i.gd, align 1
  %i.ge = load ptr, ptr %0, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 %indvars.iv144
  store i8 %.sroa.17.0.extract.trunc, ptr %i.gf, align 1
  %.pre159 = load ptr, ptr %0, align 8
  %.pre161 = load i32, ptr %i.c, align 8
  %.pre162 = load i32, ptr %i.f, align 4
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph128, %bb.u
  %i.gg = phi i32 [ %i.fs, %.lr.ph128 ], [ %.pre162, %bb.u ] ; 2 uses
  %i.gh = phi i32 [ %i.ft, %.lr.ph128 ], [ %.pre161, %bb.u ] ; 2 uses
  %i.gi = phi ptr [ %i.fu, %.lr.ph128 ], [ %.pre159, %bb.u ]
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, 4 ; 2 uses
  %i.gj = shl i32 %i.gh, 2
  %i.gk = mul i32 %i.gj, %i.gg
  %i.gl = sext i32 %i.gk to i64
  %i.gm = icmp slt i64 %indvars.iv.next145, %i.gl
  br i1 %i.gm, label %.lr.ph128, label %.loopexit

bb.w:                                             ; preds = %.lr.ph126, %bb.y
  %i.gn = phi i32 [ %i.bc, %.lr.ph126 ], [ %i.hc, %bb.y ]
  %i.go = phi i32 [ %i.bb, %.lr.ph126 ], [ %i.hd, %bb.y ]
  %i.gp = phi ptr [ %.pre156, %.lr.ph126 ], [ %i.he, %bb.y ] ; 2 uses
  %indvars.iv141 = phi i64 [ 3, %.lr.ph126 ], [ %indvars.iv.next142, %bb.y ] ; 5 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %indvars.iv141 ; 2 uses
  %i.gr = load float, ptr %i.gq, align 4
  %i.gs = fcmp ugt float %i.gr, %2
  br i1 %i.gs, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gt = getelementptr i8, ptr %i.gq, i64 -12
  store float %i.bj, ptr %i.gt, align 4
  %i.gu = load ptr, ptr %0, align 8
  %i.gv = getelementptr [4 x i8], ptr %i.gu, i64 %indvars.iv141
  %i.gw = getelementptr i8, ptr %i.gv, i64 -8
  store float %i.bk, ptr %i.gw, align 4
  %i.gx = load ptr, ptr %0, align 8
  %i.gy = getelementptr [4 x i8], ptr %i.gx, i64 %indvars.iv141
  %i.gz = getelementptr i8, ptr %i.gy, i64 -4
  store float %i.bl, ptr %i.gz, align 4
  %i.ha = load ptr, ptr %0, align 8
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %indvars.iv141
  store float %i.bm, ptr %i.hb, align 4
  %.pre = load ptr, ptr %0, align 8
  %.pre157 = load i32, ptr %i.c, align 8
  %.pre158 = load i32, ptr %i.f, align 4
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %i.hc = phi i32 [ %i.gn, %bb.w ], [ %.pre158, %bb.x ] ; 2 uses
  %i.hd = phi i32 [ %i.go, %bb.w ], [ %.pre157, %bb.x ] ; 2 uses
  %i.he = phi ptr [ %i.gp, %bb.w ], [ %.pre, %bb.x ]
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 4 ; 2 uses
  %i.hf = shl i32 %i.hd, 2
  %i.hg = mul i32 %i.hf, %i.hc
  %i.hh = sext i32 %i.hg to i64
  %i.hi = icmp slt i64 %indvars.iv.next142, %i.hh
  br i1 %i.hi, label %bb.w, label %.loopexit

bb.z:                                             ; preds = %.lr.ph, %bb.ab
  %indvars.iv = phi i64 [ 3, %.lr.ph ], [ %indvars.iv.next, %bb.ab ] ; 5 uses
  %i.hj = load ptr, ptr %0, align 8
  %i.hk = getelementptr inbounds nuw [2 x i8], ptr %i.hj, i64 %indvars.iv ; 2 uses
  %i.hl = load i16, ptr %i.hk, align 2            ; 2 uses
  %i.hm = zext i16 %i.hl to i32                   ; 2 uses
  %i.hn = lshr i32 %i.hm, 10
  %i.ho = and i32 %i.hn, 31                       ; 2 uses
  %i.hp = shl nuw nsw i32 %i.hm, 13               ; 2 uses
  %i.hq = and i32 %i.hp, 8380416                  ; 3 uses
  %i.hr = uitofp nneg i32 %i.hq to float
  %i.hs = bitcast float %i.hr to i32              ; 2 uses
  %i.ht = lshr i32 %i.hs, 23
  %.signext.i = sext i16 %i.hl to i32
  %i.hu = and i32 %.signext.i, -2147483648
  %.not.i = icmp eq i32 %i.ho, 0                  ; 2 uses
  %i.hv = shl nuw nsw i32 %i.ho, 23
  %i.hw = add nuw nsw i32 %i.hv, 939524096
  %i.hx = or disjoint i32 %i.hw, %i.hq
  %i.hy = select i1 %.not.i, i32 0, i32 %i.hx
  %i.hz = or disjoint i32 %i.hy, %i.hu
  %i.ia = icmp ne i32 %i.hq, 0
  %i.ib = and i1 %.not.i, %i.ia
  %i.ic = and i32 %i.hs, 2139095040
  %i.id = add nsw i32 %i.ic, -310378496
  %i.ie = sub nsw i32 150, %i.ht
  %i.if = shl i32 %i.hp, %i.ie
  %i.ig = and i32 %i.if, 8380416
  %i.ih = or disjoint i32 %i.ig, %i.id
  %i.ii = select i1 %i.ib, i32 %i.ih, i32 0
  %i.ij = or i32 %i.hz, %i.ii
  %i.ik = bitcast i32 %i.ij to float
  %i.il = fcmp ult float %2, %i.ik
  br i1 %i.il, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.im = getelementptr i8, ptr %i.hk, i64 -6
  store i16 %i.ba, ptr %i.im, align 2
  %i.in = load ptr, ptr %0, align 8
  %i.io = getelementptr [2 x i8], ptr %i.in, i64 %indvars.iv
  %i.ip = getelementptr i8, ptr %i.io, i64 -4
  store i16 %i.az, ptr %i.ip, align 2
  %i.iq = load ptr, ptr %0, align 8
  %i.ir = getelementptr [2 x i8], ptr %i.iq, i64 %indvars.iv
  %i.is = getelementptr i8, ptr %i.ir, i64 -2
  store i16 %i.ay, ptr %i.is, align 2
  %i.it = load ptr, ptr %0, align 8
  %i.iu = getelementptr inbounds nuw [2 x i8], ptr %i.it, i64 %indvars.iv
  store i16 %i.ax, ptr %i.iu, align 2
  br label %bb.ab

end_hunk_3
begin_hunk_4_@ImageClearBackground:bb.a
  br i1 %i.r, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %GetPixelDataSize.exit, %.lr.ph
  %.025 = phi i32 [ %i.z, %.lr.ph ], [ 1, %GetPixelDataSize.exit ] ; 4 uses
  %i.s = sub nsw i32 %i.q, %.025
  %i.t = tail call i32 @llvm.smin.i32(i32 %.025, i32 %i.s)
  %i.u = mul nsw i32 %.025, %.016.i
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds i8, ptr %i.i, i64 %i.v
  %i.x = mul nsw i32 %i.t, %.016.i
  %i.y = sext i32 %i.x to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %i.i, i64 %i.y, i1 false)
  %i.z = shl nsw i32 %.025, 1                     ; 2 uses
  %i.aa = icmp slt i32 %i.z, %i.q
  br i1 %i.aa, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %GetPixelDataSize.exit, %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ImageDrawPixel(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 %3) local_unnamed_addr #22 {
bb.a:
  %.sroa.0172.0.extract.trunc = trunc i32 %3 to i8 ; 4 uses
  %.sroa.14.0.extract.shift = lshr i32 %3, 8
  %.sroa.14.0.extract.trunc = trunc i32 %.sroa.14.0.extract.shift to i8 ; 6 uses
  %.sroa.27.0.extract.shift = lshr i32 %3, 16     ; 5 uses
  %i.a = trunc i32 %3 to i8
  %i.b = trunc i32 %.sroa.27.0.extract.shift to i8
  %i.c = insertelement <2 x i8> poison, i8 %i.b, i64 0
  %i.d = insertelement <2 x i8> %i.c, i8 %i.a, i64 1
  %i.e = trunc i32 %3 to i8
  %i.f = trunc i32 %.sroa.27.0.extract.shift to i8
  %i.g = insertelement <2 x i8> poison, i8 %i.f, i64 0
  %i.h = insertelement <2 x i8> %i.g, i8 %i.e, i64 1
  %i.i = trunc i32 %3 to i8
  %i.j = trunc i32 %.sroa.27.0.extract.shift to i8
  %i.k = insertelement <2 x i8> poison, i8 %i.j, i64 0
  %i.l = insertelement <2 x i8> %i.k, i8 %i.i, i64 1
  %i.m = trunc i32 %3 to i8
  %i.n = trunc i32 %.sroa.27.0.extract.shift to i8
  %i.o = insertelement <2 x i8> poison, i8 %i.n, i64 0
  %i.p = insertelement <2 x i8> %i.o, i8 %i.m, i64 1
  %.sroa.27.0.extract.trunc = trunc i32 %.sroa.27.0.extract.shift to i8 ; 3 uses
  %.sroa.40.0.extract.shift = lshr i32 %3, 24     ; 2 uses
  %i.q = trunc i32 %3 to i8
  %i.r = insertelement <2 x i8> poison, i8 %i.q, i64 0
  %i.s = trunc nuw i32 %.sroa.40.0.extract.shift to i8
  %i.t = insertelement <2 x i8> %i.r, i8 %i.s, i64 1
  %.sroa.40.0.extract.trunc = trunc nuw i32 %.sroa.40.0.extract.shift to i8 ; 2 uses
  %i.u = load ptr, ptr %0, align 8                ; 14 uses
  %i.v = icmp eq ptr %i.u, null
  %i.w = icmp slt i32 %1, 0
  %or.cond = or i1 %i.w, %i.v
  br i1 %or.cond, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 17 uses
  %i.y = load i32, ptr %i.x, align 8              ; 14 uses
  %i.z = icmp sge i32 %1, %i.y
  %i.aa = icmp slt i32 %2, 0
  %or.cond3 = or i1 %i.aa, %i.z
  br i1 %or.cond3, label %bb.r, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ac = load i32, ptr %i.ab, align 4
  %.not = icmp slt i32 %2, %i.ac
  br i1 %.not, label %bb.d, label %bb.r

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4
  switch i32 %i.ae, label %bb.r [
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.g
    i32 5, label %bb.h
    i32 6, label %bb.i
    i32 4, label %bb.j
    i32 7, label %bb.k
    i32 8, label %bb.l
    i32 9, label %bb.m
    i32 10, label %bb.n
    i32 11, label %bb.o
    i32 12, label %bb.p
    i32 13, label %bb.q
  ]

bb.e:                                             ; preds = %bb.d
  %i.af = uitofp <2 x i8> %i.d to <2 x float>
  %i.ag = uitofp i8 %.sroa.14.0.extract.trunc to float
  %i.ah = fdiv nnan float %i.ag, 2.550000e+02
  %i.ai = fmul nnan float %i.ah, 5.870000e-01
  %i.aj = fdiv nnan <2 x float> %i.af, splat (float 2.550000e+02)
  %i.ak = fmul nnan <2 x float> %i.aj, <float 1.140000e-01, float 2.990000e-01> ; 2 uses
  %i.al = extractelement <2 x float> %i.ak, i64 1
  %i.am = fadd float %i.al, %i.ai
  %i.an = extractelement <2 x float> %i.ak, i64 0
  %i.ao = fadd float %i.an, %i.am
  %i.ap = fmul float %i.ao, 2.550000e+02
  %i.aq = fptoui float %i.ap to i8
  %i.ar = mul nuw nsw i32 %i.y, %2
  %i.as = add nuw nsw i32 %i.ar, %1
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.at
  store i8 %i.aq, ptr %i.au, align 1
  br label %bb.r

bb.f:                                             ; preds = %bb.d
  %i.av = uitofp <2 x i8> %i.h to <2 x float>
  %i.aw = uitofp i8 %.sroa.14.0.extract.trunc to float
  %i.ax = fdiv nnan float %i.aw, 2.550000e+02
  %i.ay = fmul nnan float %i.ax, 5.870000e-01
  %i.az = fdiv nnan <2 x float> %i.av, splat (float 2.550000e+02)
  %i.ba = fmul nnan <2 x float> %i.az, <float 1.140000e-01, float 2.990000e-01> ; 2 uses
  %i.bb = extractelement <2 x float> %i.ba, i64 1
  %i.bc = fadd float %i.bb, %i.ay
  %i.bd = extractelement <2 x float> %i.ba, i64 0
  %i.be = fadd float %i.bd, %i.bc
  %i.bf = fmul float %i.be, 2.550000e+02
  %i.bg = fptoui float %i.bf to i8
  %i.bh = mul nuw nsw i32 %i.y, %2
  %i.bi = add nuw nsw i32 %i.bh, %1
  %i.bj = shl nuw nsw i32 %i.bi, 1
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bk
  store i8 %i.bg, ptr %i.bl, align 1
  %i.bm = load ptr, ptr %0, align 8
  %i.bn = load i32, ptr %i.x, align 8
  %i.bo = mul nsw i32 %i.bn, %2
  %i.bp = add nsw i32 %i.bo, %1
  %i.bq = shl nsw i32 %i.bp, 1
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr i8, ptr %i.bm, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.bs, i64 1
  store i8 %.sroa.40.0.extract.trunc, ptr %i.bt, align 1
  br label %bb.r

bb.g:                                             ; preds = %bb.d
  %i.bu = bitcast i32 %3 to <4 x i8>
  %i.bv = shufflevector <4 x i8> %i.bu, <4 x i8> poison, <2 x i32> <i32 0, i32 1>
  %i.bw = uitofp <2 x i8> %i.bv to <2 x float>
  %i.bx = uitofp i8 %.sroa.27.0.extract.trunc to float
  %i.by = fdiv nnan float %i.bx, 2.550000e+02
  %i.bz = fmul nnan float %i.by, 3.100000e+01
  %i.ca = tail call float @llvm.round.f32(float %i.bz)
  %i.cb = fptoui float %i.ca to i8
  %i.cc = fdiv nnan <2 x float> %i.bw, splat (float 2.550000e+02)
  %i.cd = fmul nnan <2 x float> %i.cc, <float 3.100000e+01, float 6.300000e+01>
  %i.ce = tail call <2 x float> @llvm.round.v2f32(<2 x float> %i.cd)
  %i.cf = fptoui <2 x float> %i.ce to <2 x i8>
  %i.cg = zext <2 x i8> %i.cf to <2 x i16>
  %i.ch = shl <2 x i16> %i.cg, <i16 11, i16 5>    ; 2 uses
  %i.ci = zext i8 %i.cb to i16
  %i.cj = extractelement <2 x i16> %i.ch, i64 0
  %i.ck = or disjoint i16 %i.cj, %i.ci
  %i.cl = extractelement <2 x i16> %i.ch, i64 1
  %i.cm = or i16 %i.ck, %i.cl
  %i.cn = mul nuw nsw i32 %i.y, %2
  %i.co = add nuw nsw i32 %i.cn, %1
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %i.cp
  store i16 %i.cm, ptr %i.cq, align 2
  br label %bb.r

bb.h:                                             ; preds = %bb.d
  %i.cr = uitofp <2 x i8> %i.t to <2 x float>
  %i.cs = bitcast i32 %3 to <4 x i8>
  %i.ct = shufflevector <4 x i8> %i.cs, <4 x i8> poison, <2 x i32> <i32 1, i32 2>
  %i.cu = uitofp <2 x i8> %i.ct to <2 x float>
  %i.cv = fdiv <2 x float> %i.cr, splat (float 2.550000e+02) ; 2 uses
  %i.cw = extractelement <2 x float> %i.cv, i64 0
  %i.cx = fmul nnan float %i.cw, 3.100000e+01
  %i.cy = tail call float @llvm.round.f32(float %i.cx)
  %i.cz = fptoui float %i.cy to i8
  %i.da = extractelement <2 x float> %i.cv, i64 1
  %i.db = fcmp ogt float %i.da, f0x3E48C8C9
  %i.dc = zext i8 %i.cz to i16
  %i.dd = shl i16 %i.dc, 11
  %i.de = fdiv nnan <2 x float> %i.cu, splat (float 2.550000e+02)
  %i.df = fmul nnan <2 x float> %i.de, splat (float 3.100000e+01)
  %i.dg = tail call <2 x float> @llvm.round.v2f32(<2 x float> %i.df)
  %i.dh = fptoui <2 x float> %i.dg to <2 x i8>
  %i.di = zext <2 x i8> %i.dh to <2 x i16>
  %i.dj = shl nuw nsw <2 x i16> %i.di, <i16 6, i16 1> ; 2 uses
  %i.dk = zext i1 %i.db to i16
  %i.dl = or disjoint i16 %i.dd, %i.dk
  %i.dm = extractelement <2 x i16> %i.dj, i64 0
  %i.dn = or i16 %i.dl, %i.dm
  %i.do = extractelement <2 x i16> %i.dj, i64 1
  %i.dp = or i16 %i.dn, %i.do
  %i.dq = mul nuw nsw i32 %i.y, %2
  %i.dr = add nuw nsw i32 %i.dq, %1
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %i.ds
  store i16 %i.dp, ptr %i.dt, align 2
  br label %bb.r

bb.i:                                             ; preds = %bb.d
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = bitcast i32 %4 to <4 x i8>
  %i.du = uitofp <4 x i8> %5 to <4 x float>
  %i.dv = fdiv nnan <4 x float> %i.du, splat (float 2.550000e+02)
  %i.dw = fmul nnan <4 x float> %i.dv, splat (float 1.500000e+01)
  %i.dx = tail call <4 x float> @llvm.round.v4f32(<4 x float> %i.dw)
  %i.dy = fptoui <4 x float> %i.dx to <4 x i8>
  %i.dz = zext <4 x i8> %i.dy to <4 x i16>
  %i.ea = shl <4 x i16> %i.dz, <i16 0, i16 4, i16 8, i16 12>
  %i.eb = tail call i16 @llvm.vector.reduce.or.v4i16(<4 x i16> %i.ea)
  %i.ec = mul nuw nsw i32 %i.y, %2
  %i.ed = add nuw nsw i32 %i.ec, %1
  %i.ee = zext nneg i32 %i.ed to i64
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %i.ee
  store i16 %i.eb, ptr %i.ef, align 2
  br label %bb.r

bb.j:                                             ; preds = %bb.d
  %i.eg = mul nuw nsw i32 %i.y, %2
  %i.eh = add nuw nsw i32 %i.eg, %1
  %i.ei = mul nsw i32 %i.eh, 3
  %i.ej = zext nneg i32 %i.ei to i64
  %i.ek = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.ej
  store i8 %.sroa.0172.0.extract.trunc, ptr %i.ek, align 1
  %i.el = load ptr, ptr %0, align 8
  %i.em = load i32, ptr %i.x, align 8
  %i.en = mul nsw i32 %i.em, %2
  %i.eo = add nsw i32 %i.en, %1
  %i.ep = mul nsw i32 %i.eo, 3
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr i8, ptr %i.el, i64 %i.eq
  %i.es = getelementptr i8, ptr %i.er, i64 1
  store i8 %.sroa.14.0.extract.trunc, ptr %i.es, align 1
  %i.et = load ptr, ptr %0, align 8
  %i.eu = load i32, ptr %i.x, align 8
  %i.ev = mul nsw i32 %i.eu, %2
  %i.ew = add nsw i32 %i.ev, %1
  %i.ex = mul nsw i32 %i.ew, 3
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr i8, ptr %i.et, i64 %i.ey
  %i.fa = getelementptr i8, ptr %i.ez, i64 2
  store i8 %.sroa.27.0.extract.trunc, ptr %i.fa, align 1
  br label %bb.r

bb.k:                                             ; preds = %bb.d
  %i.fb = mul nuw nsw i32 %i.y, %2
  %i.fc = add nuw nsw i32 %i.fb, %1
  %i.fd = shl nsw i32 %i.fc, 2
  %i.fe = zext nneg i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.fe
  store i8 %.sroa.0172.0.extract.trunc, ptr %i.ff, align 1
  %i.fg = load ptr, ptr %0, align 8
  %i.fh = load i32, ptr %i.x, align 8
  %i.fi = mul nsw i32 %i.fh, %2
  %i.fj = add nsw i32 %i.fi, %1
  %i.fk = shl nsw i32 %i.fj, 2
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr i8, ptr %i.fg, i64 %i.fl
  %i.fn = getelementptr i8, ptr %i.fm, i64 1
  store i8 %.sroa.14.0.extract.trunc, ptr %i.fn, align 1
  %i.fo = load ptr, ptr %0, align 8
  %i.fp = load i32, ptr %i.x, align 8
  %i.fq = mul nsw i32 %i.fp, %2
  %i.fr = add nsw i32 %i.fq, %1
  %i.fs = shl nsw i32 %i.fr, 2
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr i8, ptr %i.fo, i64 %i.ft
  %i.fv = getelementptr i8, ptr %i.fu, i64 2
  store i8 %.sroa.27.0.extract.trunc, ptr %i.fv, align 1
  %i.fw = load ptr, ptr %0, align 8
  %i.fx = load i32, ptr %i.x, align 8
  %i.fy = mul nsw i32 %i.fx, %2
  %i.fz = add nsw i32 %i.fy, %1
  %i.ga = shl nsw i32 %i.fz, 2
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr i8, ptr %i.fw, i64 %i.gb
  %i.gd = getelementptr i8, ptr %i.gc, i64 3
  store i8 %.sroa.40.0.extract.trunc, ptr %i.gd, align 1
  br label %bb.r

bb.l:                                             ; preds = %bb.d
  %i.ge = uitofp <2 x i8> %i.l to <2 x float>
  %i.gf = uitofp i8 %.sroa.14.0.extract.trunc to float
  %i.gg = fdiv nnan float %i.gf, 2.550000e+02
  %i.gh = fmul nnan float %i.gg, 5.870000e-01
  %i.gi = fdiv nnan <2 x float> %i.ge, splat (float 2.550000e+02)
  %i.gj = fmul nnan <2 x float> %i.gi, <float 1.140000e-01, float 2.990000e-01> ; 2 uses
  %i.gk = extractelement <2 x float> %i.gj, i64 1
  %i.gl = fadd float %i.gk, %i.gh
  %i.gm = extractelement <2 x float> %i.gj, i64 0
  %i.gn = fadd float %i.gm, %i.gl
  %i.go = mul nuw nsw i32 %i.y, %2
  %i.gp = add nuw nsw i32 %i.go, %1
  %i.gq = zext nneg i32 %i.gp to i64
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.gq
  store float %i.gn, ptr %i.gr, align 4
  br label %bb.r

bb.m:                                             ; preds = %bb.d
  %i.gs = uitofp i8 %.sroa.0172.0.extract.trunc to float
  %i.gt = fdiv float %i.gs, 2.550000e+02
  %i.gu = bitcast i32 %3 to <4 x i8>
  %i.gv = shufflevector <4 x i8> %i.gu, <4 x i8> poison, <2 x i32> <i32 1, i32 2>
  %i.gw = uitofp <2 x i8> %i.gv to <2 x float>
  %i.gx = fdiv <2 x float> %i.gw, splat (float 2.550000e+02) ; 2 uses
  %i.gy = mul nuw nsw i32 %i.y, %2
  %i.gz = add nuw nsw i32 %i.gy, %1
  %i.ha = mul nsw i32 %i.gz, 3
  %i.hb = zext nneg i32 %i.ha to i64
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.hb
  store float %i.gt, ptr %i.hc, align 4
  %i.hd = load ptr, ptr %0, align 8
  %i.he = load i32, ptr %i.x, align 8
  %i.hf = mul nsw i32 %i.he, %2
  %i.hg = add nsw i32 %i.hf, %1
  %i.hh = mul nsw i32 %i.hg, 3
  %i.hi = sext i32 %i.hh to i64
  %i.hj = getelementptr [4 x i8], ptr %i.hd, i64 %i.hi
  %i.hk = getelementptr i8, ptr %i.hj, i64 4
  %i.hl = extractelement <2 x float> %i.gx, i64 0
  store float %i.hl, ptr %i.hk, align 4
  %i.hm = load ptr, ptr %0, align 8
  %i.hn = load i32, ptr %i.x, align 8
  %i.ho = mul nsw i32 %i.hn, %2
  %i.hp = add nsw i32 %i.ho, %1
  %i.hq = mul nsw i32 %i.hp, 3
  %i.hr = sext i32 %i.hq to i64
  %i.hs = getelementptr [4 x i8], ptr %i.hm, i64 %i.hr
  %i.ht = getelementptr i8, ptr %i.hs, i64 8
  %i.hu = extractelement <2 x float> %i.gx, i64 1
  store float %i.hu, ptr %i.ht, align 4
  br label %bb.r

bb.n:                                             ; preds = %bb.d
  %i.hv = bitcast i32 %3 to <4 x i8>
  %i.hw = uitofp <4 x i8> %i.hv to <4 x float>
  %i.hx = fdiv <4 x float> %i.hw, splat (float 2.550000e+02) ; 4 uses
  %i.hy = mul nuw nsw i32 %i.y, %2
  %i.hz = add nuw nsw i32 %i.hy, %1
  %i.ia = shl nsw i32 %i.hz, 2
  %i.ib = zext nneg i32 %i.ia to i64
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.ib
  %i.id = extractelement <4 x float> %i.hx, i64 0
  store float %i.id, ptr %i.ic, align 4
  %i.ie = load ptr, ptr %0, align 8
  %i.if = load i32, ptr %i.x, align 8
  %i.ig = mul nsw i32 %i.if, %2
  %i.ih = add nsw i32 %i.ig, %1
  %i.ii = shl nsw i32 %i.ih, 2
  %i.ij = sext i32 %i.ii to i64
  %i.ik = getelementptr [4 x i8], ptr %i.ie, i64 %i.ij
  %i.il = getelementptr i8, ptr %i.ik, i64 4
  %i.im = extractelement <4 x float> %i.hx, i64 1
  store float %i.im, ptr %i.il, align 4
  %i.in = load ptr, ptr %0, align 8
  %i.io = load i32, ptr %i.x, align 8
  %i.ip = mul nsw i32 %i.io, %2
  %i.iq = add nsw i32 %i.ip, %1
  %i.ir = shl nsw i32 %i.iq, 2
  %i.is = sext i32 %i.ir to i64
  %i.it = getelementptr [4 x i8], ptr %i.in, i64 %i.is
  %i.iu = getelementptr i8, ptr %i.it, i64 8
  %i.iv = extractelement <4 x float> %i.hx, i64 2
  store float %i.iv, ptr %i.iu, align 4
  %i.iw = load ptr, ptr %0, align 8
  %i.ix = load i32, ptr %i.x, align 8
  %i.iy = mul nsw i32 %i.ix, %2
  %i.iz = add nsw i32 %i.iy, %1
  %i.ja = shl nsw i32 %i.iz, 2
  %i.jb = sext i32 %i.ja to i64
  %i.jc = getelementptr [4 x i8], ptr %i.iw, i64 %i.jb
  %i.jd = getelementptr i8, ptr %i.jc, i64 12
  %i.je = extractelement <4 x float> %i.hx, i64 3
  store float %i.je, ptr %i.jd, align 4
  br label %bb.r

bb.o:                                             ; preds = %bb.d
  %i.jf = uitofp <2 x i8> %i.p to <2 x float>
  %i.jg = uitofp i8 %.sroa.14.0.extract.trunc to float
  %i.jh = fdiv nnan float %i.jg, 2.550000e+02
  %i.ji = fmul nnan float %i.jh, 5.870000e-01
  %i.jj = fdiv nnan <2 x float> %i.jf, splat (float 2.550000e+02)
  %i.jk = fmul nnan <2 x float> %i.jj, <float 1.140000e-01, float 2.990000e-01> ; 2 uses
  %i.jl = extractelement <2 x float> %i.jk, i64 1
  %i.jm = fadd float %i.jl, %i.ji
  %i.jn = extractelement <2 x float> %i.jk, i64 0
  %i.jo = fadd float %i.jn, %i.jm
  %i.jp = tail call fastcc zeroext i16 @FloatToHalf(float noundef %i.jo)
  %i.jq = mul nuw nsw i32 %i.y, %2
  %i.jr = add nuw nsw i32 %i.jq, %1
  %i.js = zext nneg i32 %i.jr to i64
  %i.jt = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %i.js
  store i16 %i.jp, ptr %i.jt, align 2
  br label %bb.r

bb.p:                                             ; preds = %bb.d
  %i.ju = uitofp i8 %.sroa.0172.0.extract.trunc to float
  %i.jv = fdiv float %i.ju, 2.550000e+02
  %i.jw = bitcast i32 %3 to <4 x i8>
  %i.jx = shufflevector <4 x i8> %i.jw, <4 x i8> poison, <2 x i32> <i32 1, i32 2>
  %i.jy = uitofp <2 x i8> %i.jx to <2 x float>
  %i.jz = fdiv <2 x float> %i.jy, splat (float 2.550000e+02) ; 2 uses
end_hunk_4
