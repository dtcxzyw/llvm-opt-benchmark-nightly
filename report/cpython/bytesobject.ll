inline.NumInlined: 679
inline.NumDeleted: 129
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 16
begin_hunk_0_@PyIndex_Check
declare i32 @PyIndex_Check(ptr noundef) local_unnamed_addr #2

declare i64 @PyLong_AsLongAndOverflow(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @fastsearch(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef range(i64 1, 0) %3, i64 noundef range(i64 -1, -9223372036854775808) %4, i32 noundef range(i32 0, 3) %5) unnamed_addr #14 {
bb.a:
  %i.a = icmp slt i64 %1, %3
  br i1 %i.a, label %stringlib_find_char.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %5, 0                        ; 3 uses
  %i.c = icmp eq i64 %4, 0
  %or.cond = and i1 %i.c, %i.b
  br i1 %or.cond, label %stringlib_find_char.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp slt i64 %3, 2
  br i1 %i.d, label %bb.d, label %bb.t

bb.d:                                             ; preds = %bb.c
  %.not66 = icmp eq i64 %3, 1
  br i1 %.not66, label %bb.e, label %stringlib_find_char.exit

bb.e:                                             ; preds = %bb.d
  switch i32 %5, label %bb.q [
    i32 1, label %bb.f
    i32 2, label %bb.k
  ]

bb.f:                                             ; preds = %bb.e
  %i.e = load i8, ptr %2, align 1, !tbaa !14      ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 %1         ; 2 uses
  %i.g = icmp sgt i64 %1, 15
  br i1 %i.g, label %bb.g, label %.preheader.i

.preheader.i:                                     ; preds = %bb.f
  %i.h = icmp ult ptr %0, %i.f
  br i1 %i.h, label %.lr.ph.i, label %stringlib_find_char.exit

bb.g:                                             ; preds = %bb.f
  %i.i = sext i8 %i.e to i32
  %i.j = tail call ptr @memchr(ptr noundef %0, i32 noundef %i.i, i64 noundef %1) #20 ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %stringlib_find_char.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %0 to i64
  %i.m = sub i64 %i.k, %i.l
  br label %stringlib_find_char.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.j
  %.01721.i = phi ptr [ %i.s, %bb.j ], [ %0, %.preheader.i ] ; 3 uses
  %i.n = load i8, ptr %.01721.i, align 1, !tbaa !14
  %i.o = icmp eq i8 %i.n, %i.e
  br i1 %i.o, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i
  %i.p = ptrtoint ptr %.01721.i to i64
  %i.q = ptrtoint ptr %0 to i64
  %i.r = sub i64 %i.p, %i.q
  br label %stringlib_find_char.exit

bb.j:                                             ; preds = %.lr.ph.i
  %i.s = getelementptr i8, ptr %.01721.i, i64 1   ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.s, %i.f
  br i1 %exitcond.not.i, label %stringlib_find_char.exit, label %.lr.ph.i, !llvm.loop !143

bb.k:                                             ; preds = %bb.e
  %i.t = load i8, ptr %2, align 1, !tbaa !14      ; 2 uses
  %i.u = icmp sgt i64 %1, 15
  br i1 %i.u, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.v = sext i8 %i.t to i32
  %i.w = tail call ptr @memrchr(ptr noundef %0, i32 noundef %i.v, i64 noundef %1) #20 ; 2 uses
  %.not.i68 = icmp eq ptr %i.w, null
  br i1 %.not.i68, label %stringlib_find_char.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %0 to i64
  %i.z = sub i64 %i.x, %i.y
  br label %stringlib_find_char.exit

bb.n:                                             ; preds = %bb.k
  %i.aa = getelementptr i8, ptr %0, i64 %1        ; 2 uses
  %i.ab = icmp ugt ptr %i.aa, %0
  br i1 %i.ab, label %.lr.ph, label %stringlib_find_char.exit

bb.o:                                             ; preds = %.lr.ph
  %i.ac = icmp ugt ptr %i.ad, %0
  br i1 %i.ac, label %.lr.ph, label %stringlib_find_char.exit, !llvm.loop !73

.lr.ph:                                           ; preds = %bb.n, %bb.o
  %.0.i67148 = phi ptr [ %i.ad, %bb.o ], [ %i.aa, %bb.n ]
  %i.ad = getelementptr i8, ptr %.0.i67148, i64 -1 ; 4 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !14
  %i.af = icmp eq i8 %i.ae, %i.t
  br i1 %i.af, label %bb.p, label %bb.o, !llvm.loop !73

bb.p:                                             ; preds = %.lr.ph
  %i.ag = ptrtoint ptr %i.ad to i64
  %i.ah = ptrtoint ptr %0 to i64
  %i.ai = sub i64 %i.ag, %i.ah
  br label %stringlib_find_char.exit

bb.q:                                             ; preds = %bb.e
  %i.aj = icmp eq i64 %4, 9223372036854775807
  %i.ak = load i8, ptr %2, align 1, !tbaa !14     ; 3 uses
  br i1 %i.aj, label %.lr.ph.i69.preheader, label %.lr.ph.i71

.lr.ph.i69.preheader:                             ; preds = %bb.q
  %min.iters.check = icmp ult i64 %1, 4
  br i1 %min.iters.check, label %.lr.ph.i69.preheader151, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i69.preheader
  %n.vec = and i64 %1, -4                         ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i8> poison, i8 %i.ak, i64 0
  %broadcast.splat = shufflevector <2 x i8> %broadcast.splatinsert, <2 x i8> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ar, %vector.body ]
  %vec.phi149 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.as, %vector.body ]
  %i.al = getelementptr i8, ptr %0, i64 %index    ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 2
  %wide.load = load <2 x i8>, ptr %i.al, align 1, !tbaa !14
  %wide.load150 = load <2 x i8>, ptr %i.am, align 1, !tbaa !14
  %i.an = icmp eq <2 x i8> %wide.load, %broadcast.splat
  %i.ao = icmp eq <2 x i8> %wide.load150, %broadcast.splat
  %i.ap = zext <2 x i1> %i.an to <2 x i64>
  %i.aq = zext <2 x i1> %i.ao to <2 x i64>
  %i.ar = add <2 x i64> %vec.phi, %i.ap           ; 2 uses
  %i.as = add <2 x i64> %vec.phi149, %i.aq        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !144

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.as, %i.ar
  %i.au = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %stringlib_find_char.exit, label %.lr.ph.i69.preheader151

.lr.ph.i69.preheader151:                          ; preds = %.lr.ph.i69.preheader, %middle.block
  %.09.i.ph = phi i64 [ 0, %.lr.ph.i69.preheader ], [ %n.vec, %middle.block ]
  %.078.i.ph = phi i64 [ 0, %.lr.ph.i69.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i69

.lr.ph.i69:                                       ; preds = %.lr.ph.i69.preheader151, %.lr.ph.i69
  %.09.i = phi i64 [ %i.az, %.lr.ph.i69 ], [ %.09.i.ph, %.lr.ph.i69.preheader151 ] ; 2 uses
  %.078.i = phi i64 [ %spec.select.i, %.lr.ph.i69 ], [ %.078.i.ph, %.lr.ph.i69.preheader151 ]
  %i.av = getelementptr i8, ptr %0, i64 %.09.i
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !14
  %i.ax = icmp eq i8 %i.aw, %i.ak
  %i.ay = zext i1 %i.ax to i64
  %spec.select.i = add i64 %.078.i, %i.ay         ; 2 uses
  %i.az = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %exitcond.not.i70 = icmp eq i64 %i.az, %1
  br i1 %exitcond.not.i70, label %stringlib_find_char.exit, label %.lr.ph.i69, !llvm.loop !147

.lr.ph.i71:                                       ; preds = %bb.q, %bb.s
  %.016.i72 = phi i64 [ %.1.i, %bb.s ], [ 0, %bb.q ] ; 2 uses
  %.01115.i = phi i64 [ %i.bf, %bb.s ], [ 0, %bb.q ] ; 2 uses
  %i.ba = getelementptr i8, ptr %0, i64 %.01115.i
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !14
  %i.bc = icmp eq i8 %i.bb, %i.ak
  br i1 %i.bc, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.i71
  %i.bd = add i64 %.016.i72, 1                    ; 2 uses
  %i.be = icmp eq i64 %i.bd, %4
  br i1 %i.be, label %stringlib_find_char.exit, label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i71
  %.1.i = phi i64 [ %i.bd, %bb.r ], [ %.016.i72, %.lr.ph.i71 ] ; 2 uses
  %i.bf = add nuw nsw i64 %.01115.i, 1            ; 2 uses
  %exitcond.not.i73 = icmp eq i64 %i.bf, %1
  br i1 %exitcond.not.i73, label %stringlib_find_char.exit, label %.lr.ph.i71, !llvm.loop !148

bb.t:                                             ; preds = %bb.c
  %.not = icmp eq i32 %5, 2
  br i1 %.not, label %bb.an, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bg = icmp slt i64 %1, 2500
  br i1 %i.bg, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bh = icmp samesign ult i64 %3, 100
  %i.bi = icmp samesign ult i64 %1, 30000
  %or.cond3 = and i1 %i.bi, %i.bh
  %i.bj = icmp samesign ult i64 %3, 6
  %or.cond5 = or i1 %i.bj, %or.cond3
  br i1 %or.cond5, label %bb.w, label %bb.ai

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bk = add nsw i64 %3, -1                      ; 12 uses
  %i.bl = getelementptr i8, ptr %2, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !14  ; 5 uses
  %xtraiter = and i64 %i.bk, 1
  %i.bn = icmp eq i64 %3, 2
  br i1 %i.bn, label %.lr.ph.i74.epil.preheader, label %.new

.new:                                             ; preds = %bb.w
  %unroll_iter = and i64 %i.bk, -2
  br label %.lr.ph.i74

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph.i74
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i74.epil.preheader

.lr.ph.i74.epil.preheader:                        ; preds = %._crit_edge.i.unr-lcssa, %bb.w
  %.068100.i.epil.init = phi i64 [ 0, %bb.w ], [ %i.dy, %._crit_edge.i.unr-lcssa ] ; 2 uses
  %.06999.i.epil.init = phi i64 [ 0, %bb.w ], [ %i.du, %._crit_edge.i.unr-lcssa ]
  %.07898.i.epil.init = phi i64 [ %i.bk, %bb.w ], [ %.179.i.1, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod169 = trunc i64 %i.bk to i1
  tail call void @llvm.assume(i1 %lcmp.mod169)
  %i.bo = getelementptr i8, ptr %2, i64 %.068100.i.epil.init
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !14  ; 2 uses
  %i.bq = and i8 %i.bp, 63
  %i.br = zext nneg i8 %i.bq to i64
  %i.bs = shl nuw i64 1, %i.br
  %i.bt = or i64 %i.bs, %.06999.i.epil.init
  %i.bu = icmp eq i8 %i.bp, %i.bm
  %i.bv = xor i64 %.068100.i.epil.init, -1
  %i.bw = add nsw i64 %i.bk, %i.bv
  %.179.i.epil = select i1 %i.bu, i64 %i.bw, i64 %.07898.i.epil.init
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i74.epil.preheader
  %.lcssa166 = phi i64 [ %i.du, %._crit_edge.i.unr-lcssa ], [ %i.bt, %.lr.ph.i74.epil.preheader ]
  %.179.i.lcssa = phi i64 [ %.179.i.1, %._crit_edge.i.unr-lcssa ], [ %.179.i.epil, %.lr.ph.i74.epil.preheader ]
  %i.bx = sub i64 %1, %3                          ; 4 uses
  %i.by = getelementptr i8, ptr %0, i64 %i.bk     ; 3 uses
  %i.bz = and i8 %i.bm, 63
  %i.ca = zext nneg i8 %i.bz to i64
  %i.cb = shl nuw i64 1, %i.ca
  %i.cc = or i64 %.lcssa166, %i.cb                ; 2 uses
  %.not108.i = icmp slt i64 %i.bx, 0
  br i1 %.not108.i, label %.loopexit.i, label %.lr.ph113.split.us.i

.lr.ph113.split.us.i:                             ; preds = %._crit_edge.i, %bb.ag
  %.066110.us.i = phi i64 [ %i.dc, %bb.ag ], [ 0, %._crit_edge.i ] ; 9 uses
  %.074109.us.i = phi i64 [ %.276.us.i, %bb.ag ], [ 0, %._crit_edge.i ] ; 4 uses
  %i.cd = getelementptr i8, ptr %i.by, i64 %.066110.us.i
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !14
  %i.cf = icmp eq i8 %i.ce, %i.bm
  br i1 %i.cf, label %.preheader.us.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph113.split.us.i
  %i.cg = add i64 %.066110.us.i, 1                ; 2 uses
  %.not88.us.i = icmp sgt i64 %i.cg, %i.bx
  br i1 %.not88.us.i, label %bb.ag, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ch = getelementptr i8, ptr %i.by, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !14
  %i.cj = and i8 %i.ci, 63
  %i.ck = zext nneg i8 %i.cj to i64
  %i.cl = shl nuw i64 1, %i.ck
  %i.cm = and i64 %i.cl, %i.cc
  %.not89.us.i = icmp eq i64 %i.cm, 0
  %i.cn = select i1 %.not89.us.i, i64 %3, i64 0
  %spec.select.us.i = add i64 %i.cn, %.066110.us.i
  br label %bb.ag

bb.z:                                             ; preds = %.preheader.us.i, %bb.ah
  %.0102.us.i = phi i64 [ 0, %.preheader.us.i ], [ %i.dd, %bb.ah ] ; 3 uses
  %i.co = getelementptr i8, ptr %i.de, i64 %.0102.us.i
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !14
  %i.cq = getelementptr i8, ptr %2, i64 %.0102.us.i
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !14
  %.not90.us.i = icmp eq i8 %i.cp, %i.cr
  br i1 %.not90.us.i, label %bb.ah, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cs = add i64 %.066110.us.i, 1                ; 2 uses
  %.not91.us.i = icmp sgt i64 %i.cs, %i.bx
  br i1 %.not91.us.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ct = getelementptr i8, ptr %i.by, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !14
  %i.cv = and i8 %i.cu, 63
  %i.cw = zext nneg i8 %i.cv to i64
  %i.cx = shl nuw i64 1, %i.cw
  %i.cy = and i64 %i.cx, %i.cc
  %.not92.us.i = icmp eq i64 %i.cy, 0
  br i1 %.not92.us.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.078.pn.us.i = phi i64 [ %.179.i.lcssa, %bb.ac ], [ %3, %bb.ab ]
  %.167.us.i = add i64 %.078.pn.us.i, %.066110.us.i
  br label %bb.ag

._crit_edge104.us.thread.i:                       ; preds = %bb.ah
  br i1 %i.b, label %bb.ae, label %stringlib_find_char.exit

bb.ae:                                            ; preds = %._crit_edge104.us.thread.i
  %i.cz = add i64 %.074109.us.i, 1                ; 2 uses
  %i.da = icmp eq i64 %i.cz, %4
  br i1 %i.da, label %stringlib_find_char.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.db = add i64 %.066110.us.i, %i.bk
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ad, %bb.y, %bb.x
  %.276.us.i = phi i64 [ %.074109.us.i, %bb.x ], [ %.074109.us.i, %bb.y ], [ %.074109.us.i, %bb.ad ], [ %i.cz, %bb.af ] ; 2 uses
  %.3.us.i = phi i64 [ %.066110.us.i, %bb.x ], [ %spec.select.us.i, %bb.y ], [ %.167.us.i, %bb.ad ], [ %i.db, %bb.af ]
  %i.dc = add i64 %.3.us.i, 1                     ; 2 uses
  %.not.us.i = icmp sgt i64 %i.dc, %i.bx
  br i1 %.not.us.i, label %.loopexit.i, label %.lr.ph113.split.us.i, !llvm.loop !149

bb.ah:                                            ; preds = %bb.z
  %i.dd = add nuw nsw i64 %.0102.us.i, 1          ; 2 uses
  %exitcond179.not.i = icmp eq i64 %i.dd, %i.bk
  br i1 %exitcond179.not.i, label %._crit_edge104.us.thread.i, label %bb.z, !llvm.loop !150

.preheader.us.i:                                  ; preds = %.lr.ph113.split.us.i
  %i.de = getelementptr i8, ptr %0, i64 %.066110.us.i
  br label %bb.z

.lr.ph.i74:                                       ; preds = %.lr.ph.i74, %.new
  %.068100.i = phi i64 [ 0, %.new ], [ %i.dy, %.lr.ph.i74 ] ; 5 uses
  %.06999.i = phi i64 [ 0, %.new ], [ %i.du, %.lr.ph.i74 ]
  %.07898.i = phi i64 [ %i.bk, %.new ], [ %.179.i.1, %.lr.ph.i74 ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %.lr.ph.i74 ]
  %i.df = getelementptr i8, ptr %2, i64 %.068100.i
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !14  ; 2 uses
  %i.dh = and i8 %i.dg, 63
  %i.di = zext nneg i8 %i.dh to i64
  %i.dj = shl nuw i64 1, %i.di
  %i.dk = or i64 %i.dj, %.06999.i
  %i.dl = icmp eq i8 %i.dg, %i.bm
  %i.dm = xor i64 %.068100.i, -1
  %i.dn = add nsw i64 %i.bk, %i.dm
  %.179.i = select i1 %i.dl, i64 %i.dn, i64 %.07898.i
  %i.do = getelementptr i8, ptr %2, i64 %.068100.i
  %i.dp = getelementptr i8, ptr %i.do, i64 1
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !14  ; 2 uses
  %i.dr = and i8 %i.dq, 63
  %i.ds = zext nneg i8 %i.dr to i64
  %i.dt = shl nuw i64 1, %i.ds
  %i.du = or i64 %i.dt, %i.dk                     ; 3 uses
  %i.dv = icmp eq i8 %i.dq, %i.bm
  %i.dw = xor i64 %.068100.i, -2
  %i.dx = add nsw i64 %i.bk, %i.dw
  %.179.i.1 = select i1 %i.dv, i64 %i.dx, i64 %.179.i ; 3 uses
  %i.dy = add nuw nsw i64 %.068100.i, 2           ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i74, !llvm.loop !151

.loopexit.i:                                      ; preds = %bb.ag, %._crit_edge.i
  %.377.ph.i = phi i64 [ 0, %._crit_edge.i ], [ %.276.us.i, %bb.ag ]
  %i.dz = select i1 %i.b, i64 %.377.ph.i, i64 -1
  br label %stringlib_find_char.exit

bb.ai:                                            ; preds = %bb.v
  %i.ea = lshr i64 %3, 2
  %i.eb = mul nuw nsw i64 %i.ea, 3
  %i.ec = lshr i64 %1, 2
  %i.ed = icmp samesign ult i64 %i.eb, %i.ec
  br i1 %i.ed, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.ee = icmp eq i32 %5, 1
  br i1 %i.ee, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ef = tail call fastcc i64 @stringlib__two_way_find(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3)
  br label %stringlib_find_char.exit

bb.al:                                            ; preds = %bb.aj
  %i.eg = tail call fastcc i64 @stringlib__two_way_count(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4)
  br label %stringlib_find_char.exit

bb.am:                                            ; preds = %bb.ai
  %i.eh = tail call fastcc i64 @stringlib_adaptive_find(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5)
  br label %stringlib_find_char.exit

bb.an:                                            ; preds = %bb.t
  %i.ei = add nsw i64 %3, -1                      ; 6 uses
  %i.ej = load i8, ptr %2, align 1, !tbaa !14     ; 5 uses
  %i.ek = and i8 %i.ej, 63
  %i.el = zext nneg i8 %i.ek to i64
  %i.em = shl nuw i64 1, %i.el                    ; 2 uses
  %xtraiter171 = and i64 %i.ei, 1
  %lcmp.mod172.not = icmp eq i64 %xtraiter171, 0
  br i1 %lcmp.mod172.not, label %.lr.ph.i76.prol.loopexit, label %.lr.ph.i76.prol

.lr.ph.i76.prol:                                  ; preds = %bb.an
  %i.en = getelementptr i8, ptr %2, i64 %i.ei
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !14  ; 2 uses
  %i.ep = and i8 %i.eo, 63
  %i.eq = zext nneg i8 %i.ep to i64
  %i.er = shl nuw i64 1, %i.eq
  %i.es = or i64 %i.er, %i.em                     ; 2 uses
  %i.et = icmp eq i8 %i.eo, %i.ej
  %i.eu = add nsw i64 %3, -2                      ; 2 uses
  %spec.select.i77.prol = select i1 %i.et, i64 %i.eu, i64 %i.ei ; 2 uses
  br label %.lr.ph.i76.prol.loopexit

.lr.ph.i76.prol.loopexit:                         ; preds = %.lr.ph.i76.prol, %bb.an
  %.04660.i.unr = phi i64 [ %i.ei, %bb.an ], [ %spec.select.i77.prol, %.lr.ph.i76.prol ]
  %.04759.i.unr = phi i64 [ %i.em, %bb.an ], [ %i.es, %.lr.ph.i76.prol ]
  %.04958.i.unr = phi i64 [ %i.ei, %bb.an ], [ %i.eu, %.lr.ph.i76.prol ]
  %.lcssa162.unr = phi i64 [ poison, %bb.an ], [ %i.es, %.lr.ph.i76.prol ]
  %spec.select.i77.lcssa.unr = phi i64 [ poison, %bb.an ], [ %spec.select.i77.prol, %.lr.ph.i76.prol ]
  %i.ev = icmp eq i64 %3, 2
  br i1 %i.ev, label %.preheader56.i, label %.lr.ph.i76

.preheader56.i:                                   ; preds = %.lr.ph.i76, %.lr.ph.i76.prol.loopexit
  %.lcssa162 = phi i64 [ %.lcssa162.unr, %.lr.ph.i76.prol.loopexit ], [ %i.gk, %.lr.ph.i76 ] ; 2 uses
  %spec.select.i77.lcssa = phi i64 [ %spec.select.i77.lcssa.unr, %.lr.ph.i76.prol.loopexit ], [ %spec.select.i77.1, %.lr.ph.i76 ]
  %i.ew = sub i64 %1, %3                          ; 2 uses
  %i.ex = icmp sgt i64 %i.ew, -1
  br i1 %i.ex, label %.lr.ph66.split.us.i, label %stringlib_find_char.exit

.lr.ph66.split.us.i:                              ; preds = %.preheader56.i, %bb.as
  %.15065.us.i = phi i64 [ %i.ft, %bb.as ], [ %i.ew, %.preheader56.i ] ; 5 uses
  %i.ey = getelementptr i8, ptr %0, i64 %.15065.us.i ; 4 uses
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !14
  %i.fa = icmp eq i8 %i.ez, %i.ej
  br i1 %i.fa, label %.preheader.us.i80, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph66.split.us.i
  %.not.us.i79 = icmp eq i64 %.15065.us.i, 0
  br i1 %.not.us.i79, label %stringlib_find_char.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fb = getelementptr i8, ptr %i.ey, i64 -1
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !14
  %i.fd = and i8 %i.fc, 63
  %i.fe = zext nneg i8 %i.fd to i64
  %i.ff = shl nuw i64 1, %i.fe
  %i.fg = and i64 %i.ff, %.lcssa162
  %.not51.us.i = icmp eq i64 %i.fg, 0
  %i.fh = select i1 %.not51.us.i, i64 %3, i64 0
  br label %bb.as

.preheader.us.i80:                                ; preds = %.lr.ph66.split.us.i, %bb.at
  %.04862.us.i = phi i64 [ %i.fv, %bb.at ], [ %i.ei, %.lr.ph66.split.us.i ] ; 4 uses
  %i.fi = getelementptr i8, ptr %i.ey, i64 %.04862.us.i
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !14
  %i.fk = getelementptr i8, ptr %2, i64 %.04862.us.i
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !14
  %.not52.us.i = icmp eq i8 %i.fj, %i.fl
  br i1 %.not52.us.i, label %bb.at, label %.thread.us.i

.thread.us.i:                                     ; preds = %.preheader.us.i80
  %.not53.us.i = icmp eq i64 %.15065.us.i, 0
  br i1 %.not53.us.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.thread.us.i
  %i.fm = getelementptr i8, ptr %i.ey, i64 -1
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !14
  %i.fo = and i8 %i.fn, 63
  %i.fp = zext nneg i8 %i.fo to i64
  %i.fq = shl nuw i64 1, %i.fp
  %i.fr = and i64 %i.fq, %.lcssa162
  %.not54.us.i = icmp eq i64 %i.fr, 0
  br i1 %.not54.us.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.thread.us.i
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap
  %spec.select.lcssa.sink.i = phi i64 [ %spec.select.i77.lcssa, %bb.ar ], [ %i.fh, %bb.ap ], [ %3, %bb.aq ]
  %i.fs = sub nsw i64 %.15065.us.i, %spec.select.lcssa.sink.i ; 2 uses
  %i.ft = add nsw i64 %i.fs, -1
  %i.fu = icmp sgt i64 %i.fs, 0
  br i1 %i.fu, label %.lr.ph66.split.us.i, label %stringlib_find_char.exit, !llvm.loop !74

bb.at:                                            ; preds = %.preheader.us.i80
  %i.fv = add nsw i64 %.04862.us.i, -1
  %i.fw = icmp sgt i64 %.04862.us.i, 1
  br i1 %i.fw, label %.preheader.us.i80, label %stringlib_find_char.exit, !llvm.loop !75

.lr.ph.i76:                                       ; preds = %.lr.ph.i76.prol.loopexit, %.lr.ph.i76
  %.04660.i = phi i64 [ %spec.select.i77.1, %.lr.ph.i76 ], [ %.04660.i.unr, %.lr.ph.i76.prol.loopexit ]
  %.04759.i = phi i64 [ %i.gk, %.lr.ph.i76 ], [ %.04759.i.unr, %.lr.ph.i76.prol.loopexit ]
  %.04958.i = phi i64 [ %i.gm, %.lr.ph.i76 ], [ %.04958.i.unr, %.lr.ph.i76.prol.loopexit ] ; 4 uses
  %i.fx = getelementptr i8, ptr %2, i64 %.04958.i
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !14  ; 2 uses
  %i.fz = and i8 %i.fy, 63
  %i.ga = zext nneg i8 %i.fz to i64
  %i.gb = shl nuw i64 1, %i.ga
  %i.gc = or i64 %i.gb, %.04759.i
  %i.gd = icmp eq i8 %i.fy, %i.ej
  %i.ge = add nsw i64 %.04958.i, -1               ; 2 uses
  %spec.select.i77 = select i1 %i.gd, i64 %i.ge, i64 %.04660.i
  %i.gf = getelementptr i8, ptr %2, i64 %i.ge
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !14  ; 2 uses
  %i.gh = and i8 %i.gg, 63
end_hunk_0
begin_hunk_1_@bytes_endswith:bb.a

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = load ptr, ptr %1, align 8, !tbaa !11
  %i.f = icmp slt i64 %2, 2
  br i1 %i.f, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !11
  %i.i = call i32 @_PyEval_SliceIndex(ptr noundef %i.h, ptr noundef nonnull %i.a) #19
  %.not12 = icmp eq i32 %i.i, 0
  br i1 %.not12, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = icmp eq i64 %2, 2
  br i1 %i.j, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !11
  %i.m = call i32 @_PyEval_SliceIndex(ptr noundef %i.l, ptr noundef nonnull %i.b) #19
  %.not13 = icmp eq i32 %i.m, 0
  br i1 %.not13, label %bb.h, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f
  %.pre = load i64, ptr %i.b, align 8, !tbaa !43
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.e, %bb.c
  %i.n = phi i64 [ %.pre, %._crit_edge ], [ 9223372036854775807, %bb.e ], [ 9223372036854775807, %bb.c ]
  %i.o = load i64, ptr %i.a, align 8, !tbaa !43
  %i.p = getelementptr i8, ptr %0, i64 32
  %i.q = getelementptr i8, ptr %0, i64 16
  %.val.i = load i64, ptr %i.q, align 8, !tbaa !20
  %i.r = call ptr @_Py_bytes_endswith(ptr noundef %i.p, i64 noundef %.val.i, ptr noundef %i.e, i64 noundef %i.o, i64 noundef %i.n) #19
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.d, %bb.b, %bb.g
  %.0 = phi ptr [ %i.r, %bb.g ], [ null, %bb.f ], [ null, %bb.d ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @stringlib_expandtabs(ptr nofree noundef readonly captures(address) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.b = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.b, align 8, !tbaa !20
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult i64 %2, 2
  %i.d = icmp ne ptr %1, null
  %or.cond5 = and i1 %i.d, %i.c
  br i1 %or.cond5, label %.thread32, label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %i.e = phi i64 [ %.val, %.thread ], [ 0, %bb.b ]
  %i.f = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @stringlib_expandtabs._parser, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #19 ; 2 uses
  %.not27 = icmp eq ptr %i.f, null
  br i1 %.not27, label %stringlib_expandtabs_impl.exit, label %.thread32

.thread32:                                        ; preds = %bb.b, %bb.c
  %i.g = phi ptr [ %i.f, %bb.c ], [ %1, %bb.b ]
  %i.h = phi i64 [ %i.e, %bb.c ], [ 0, %bb.b ]
  %i.i = sub i64 0, %i.h
  %.not28 = icmp eq i64 %2, %i.i
  br i1 %.not28, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.thread32
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !11
  %i.k = call i32 @PyLong_AsInt(ptr noundef %i.j) #19 ; 2 uses
  %i.l = icmp eq i32 %i.k, -1
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = call ptr @PyErr_Occurred() #19
  %.not29 = icmp eq ptr %i.m, null
  br i1 %.not29, label %.thread56, label %stringlib_expandtabs_impl.exit

bb.f:                                             ; preds = %bb.d, %.thread32
  %.0 = phi i32 [ 8, %.thread32 ], [ %i.k, %bb.d ] ; 5 uses
  %i.n = getelementptr i8, ptr %0, i64 32         ; 6 uses
  %i.o = getelementptr i8, ptr %0, i64 16
  %.val.i = load i64, ptr %i.o, align 8, !tbaa !20
  %i.p = getelementptr i8, ptr %i.n, i64 %.val.i  ; 5 uses
  %.not67 = icmp ult ptr %i.n, %i.p
  br i1 %.not67, label %.lr.ph.i, label %._crit_edge.i

.thread56:                                        ; preds = %bb.e
  %i.q = getelementptr i8, ptr %0, i64 32         ; 4 uses
  %i.r = getelementptr i8, ptr %0, i64 16
  %.val.i58 = load i64, ptr %i.r, align 8, !tbaa !20
  %i.s = getelementptr i8, ptr %i.q, i64 %.val.i58 ; 3 uses
  %.not66 = icmp ult ptr %i.q, %i.s
  br i1 %.not66, label %.lr.ph.split.i.preheader, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.t = icmp sgt i32 %.0, 0
  %i.u = zext nneg i32 %.0 to i64                 ; 2 uses
  br i1 %i.t, label %.lr.ph.split.us.i, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %.thread56, %.lr.ph.i
  %.05962 = phi i32 [ %.0, %.lr.ph.i ], [ -1, %.thread56 ]
  %i.v = phi ptr [ %i.n, %.lr.ph.i ], [ %i.q, %.thread56 ] ; 2 uses
  %i.w = phi ptr [ %i.p, %.lr.ph.i ], [ %i.s, %.thread56 ] ; 2 uses
  br label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.l
  %.05073.us.i = phi ptr [ %i.aj, %bb.l ], [ %i.n, %.lr.ph.i ] ; 2 uses
  %.05172.us.i = phi i64 [ %.2.us.i, %bb.l ], [ 0, %.lr.ph.i ] ; 6 uses
  %.05371.us.i = phi i64 [ %.154.us.i, %bb.l ], [ 0, %.lr.ph.i ] ; 4 uses
  %i.x = load i8, ptr %.05073.us.i, align 1, !tbaa !14 ; 2 uses
  %i.y = icmp eq i8 %i.x, 9
  br i1 %i.y, label %bb.k, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.us.i
  %i.z = icmp eq i64 %.05172.us.i, 9223372036854775807
  br i1 %i.z, label %.loopexit68.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = add nsw i64 %.05172.us.i, 1             ; 2 uses
  switch i8 %i.x, label %bb.l [
    i8 10, label %bb.i
    i8 13, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h
  %i.ab = sub i64 9223372036854775806, %.05172.us.i
  %i.ac = icmp sgt i64 %.05371.us.i, %i.ab
  br i1 %i.ac, label %.loopexit68.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = add i64 %i.aa, %.05371.us.i
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph.split.us.i
  %i.ae = srem i64 %.05172.us.i, %i.u
  %i.af = sub nsw i64 %i.u, %i.ae                 ; 2 uses
  %i.ag = sub i64 9223372036854775807, %i.af
  %i.ah = icmp sgt i64 %.05172.us.i, %i.ag
  %i.ai = add i64 %i.af, %.05172.us.i
  br i1 %i.ah, label %.loopexit68.i, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.h
  %.154.us.i = phi i64 [ %.05371.us.i, %bb.k ], [ %.05371.us.i, %bb.h ], [ %i.ad, %bb.j ] ; 2 uses
  %.2.us.i = phi i64 [ %i.ai, %bb.k ], [ %i.aa, %bb.h ], [ 0, %bb.j ] ; 2 uses
  %i.aj = getelementptr i8, ptr %.05073.us.i, i64 1 ; 2 uses
  %exitcond90.not.i = icmp eq ptr %i.aj, %i.p
  br i1 %exitcond90.not.i, label %._crit_edge.i, label %.lr.ph.split.us.i, !llvm.loop !177

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.preheader, %bb.q
  %.05073.i = phi ptr [ %i.ar, %bb.q ], [ %i.v, %.lr.ph.split.i.preheader ] ; 2 uses
  %.05172.i = phi i64 [ %.2.i, %bb.q ], [ 0, %.lr.ph.split.i.preheader ] ; 4 uses
  %.05371.i = phi i64 [ %.154.i, %bb.q ], [ 0, %.lr.ph.split.i.preheader ] ; 4 uses
  %i.ak = load i8, ptr %.05073.i, align 1, !tbaa !14 ; 2 uses
  %i.al = icmp eq i8 %i.ak, 9
  br i1 %i.al, label %bb.q, label %bb.m

bb.m:                                             ; preds = %.lr.ph.split.i
  %i.am = icmp eq i64 %.05172.i, 9223372036854775807
  br i1 %i.am, label %.loopexit68.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = add nsw i64 %.05172.i, 1                ; 2 uses
  switch i8 %i.ak, label %bb.q [
    i8 10, label %bb.o
    i8 13, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n, %bb.n
  %i.ao = sub i64 9223372036854775806, %.05172.i
  %i.ap = icmp sgt i64 %.05371.i, %i.ao
  br i1 %i.ap, label %.loopexit68.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aq = add i64 %i.an, %.05371.i
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n, %.lr.ph.split.i
  %.154.i = phi i64 [ %.05371.i, %bb.n ], [ %i.aq, %bb.p ], [ %.05371.i, %.lr.ph.split.i ] ; 2 uses
  %.2.i = phi i64 [ %i.an, %bb.n ], [ 0, %bb.p ], [ %.05172.i, %.lr.ph.split.i ] ; 2 uses
  %i.ar = getelementptr i8, ptr %.05073.i, i64 1  ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.ar, %i.w
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.split.i, !llvm.loop !177

._crit_edge.i:                                    ; preds = %bb.q, %bb.l, %.thread56, %bb.f
  %i.as = phi i1 [ true, %bb.f ], [ true, %.thread56 ], [ false, %bb.l ], [ false, %bb.q ]
  %i.at = phi ptr [ %i.p, %bb.f ], [ %i.s, %.thread56 ], [ %i.p, %bb.l ], [ %i.w, %bb.q ] ; 3 uses
  %i.au = phi ptr [ %i.n, %bb.f ], [ %i.q, %.thread56 ], [ %i.n, %bb.l ], [ %i.v, %bb.q ] ; 4 uses
  %.060 = phi i32 [ %.0, %bb.f ], [ -1, %.thread56 ], [ %.0, %bb.l ], [ %.05962, %bb.q ] ; 2 uses
  %.053.lcssa.i = phi i64 [ 0, %bb.f ], [ 0, %.thread56 ], [ %.154.us.i, %bb.l ], [ %.154.i, %bb.q ] ; 2 uses
  %.051.lcssa.i = phi i64 [ 0, %bb.f ], [ 0, %.thread56 ], [ %.2.us.i, %bb.l ], [ %.2.i, %bb.q ] ; 2 uses
  %4 = ptrtoaddr ptr %i.at to i64                 ; 2 uses
  %5 = ptrtoaddr ptr %i.au to i64                 ; 2 uses
  %i.av = sub i64 9223372036854775807, %.051.lcssa.i
  %i.aw = icmp sgt i64 %.053.lcssa.i, %i.av
  br i1 %i.aw, label %.loopexit68.i, label %bb.r

bb.r:                                             ; preds = %._crit_edge.i
  %i.ax = add i64 %.051.lcssa.i, %.053.lcssa.i
  %i.ay = call ptr @PyBytes_FromStringAndSize(ptr noundef null, i64 noundef %i.ax), !inline_history !178 ; 6 uses
  %.not.i = icmp eq ptr %i.ay, null
  %brmerge.i = or i1 %i.as, %.not.i
  br i1 %brmerge.i, label %stringlib_expandtabs_impl.exit, label %.lr.ph86.i

.lr.ph86.i:                                       ; preds = %bb.r
  %i.az = getelementptr i8, ptr %i.ay, i64 32     ; 3 uses
  %i.ba = icmp sgt i32 %.060, 0
  %i.bb = zext i32 %.060 to i64                   ; 3 uses
  br i1 %i.ba, label %.lr.ph86.split.us.i, label %.lr.ph86.split.i.preheader

.lr.ph86.split.i.preheader:                       ; preds = %.lr.ph86.i
  %i.bc = sub i64 %4, %5
  %xtraiter = and i64 %i.bc, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph86.split.i.prol.loopexit, label %.lr.ph86.split.i.prol

.lr.ph86.split.i.prol:                            ; preds = %.lr.ph86.split.i.preheader, %bb.t
  %.184.i.prol = phi ptr [ %i.bg, %bb.t ], [ %i.au, %.lr.ph86.split.i.preheader ] ; 2 uses
  %.05682.i.prol = phi ptr [ %.258.i.prol, %bb.t ], [ %i.az, %.lr.ph86.split.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.t ], [ 0, %.lr.ph86.split.i.preheader ]
  %i.bd = load i8, ptr %.184.i.prol, align 1, !tbaa !14 ; 2 uses
  %i.be = icmp eq i8 %i.bd, 9
  br i1 %i.be, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph86.split.i.prol
  %i.bf = getelementptr i8, ptr %.05682.i.prol, i64 1
  store i8 %i.bd, ptr %.05682.i.prol, align 1, !tbaa !14
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph86.split.i.prol
  %.258.i.prol = phi ptr [ %i.bf, %bb.s ], [ %.05682.i.prol, %.lr.ph86.split.i.prol ] ; 2 uses
  %i.bg = getelementptr i8, ptr %.184.i.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph86.split.i.prol.loopexit, label %.lr.ph86.split.i.prol, !llvm.loop !179

.lr.ph86.split.i.prol.loopexit:                   ; preds = %bb.t, %.lr.ph86.split.i.preheader
  %.184.i.unr = phi ptr [ %i.au, %.lr.ph86.split.i.preheader ], [ %i.bg, %bb.t ]
  %.05682.i.unr = phi ptr [ %i.az, %.lr.ph86.split.i.preheader ], [ %.258.i.prol, %bb.t ]
  %i.bh = sub i64 %5, %4
  %i.bi = icmp ugt i64 %i.bh, -4
  br i1 %i.bi, label %stringlib_expandtabs_impl.exit, label %.lr.ph86.split.i

.lr.ph86.split.us.i:                              ; preds = %.lr.ph86.i, %.loopexit.us.i
  %.184.us.i = phi ptr [ %i.bs, %.loopexit.us.i ], [ %i.au, %.lr.ph86.i ] ; 3 uses
  %.383.us.i = phi i64 [ %.4.us.i, %.loopexit.us.i ], [ 0, %.lr.ph86.i ] ; 3 uses
  %.05682.us.i = phi ptr [ %.258.us.i, %.loopexit.us.i ], [ %i.az, %.lr.ph86.i ] ; 4 uses
  %i.bj = load i8, ptr %.184.us.i, align 1, !tbaa !14 ; 2 uses
  %i.bk = icmp eq i8 %i.bj, 9
  br i1 %i.bk, label %.lr.ph80.us.preheader.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph86.split.us.i
  %i.bl = getelementptr i8, ptr %.05682.us.i, i64 1 ; 2 uses
  store i8 %i.bj, ptr %.05682.us.i, align 1, !tbaa !14
  %i.bm = load i8, ptr %.184.us.i, align 1, !tbaa !14
  %i.bn = add i64 %.383.us.i, 1
  switch i8 %i.bm, label %.loopexit.us.i [
    i8 13, label %bb.v
    i8 10, label %bb.v
  ]

bb.v:                                             ; preds = %bb.u, %bb.u
  br label %.loopexit.us.i

.lr.ph80.us.preheader.i:                          ; preds = %.lr.ph86.split.us.i
  %i.bo = srem i64 %.383.us.i, %i.bb              ; 2 uses
  %i.bp = sub nsw i64 %i.bb, %i.bo                ; 2 uses
  %i.bq = add i64 %i.bp, %.383.us.i
  call void @llvm.memset.p0.i64(ptr align 1 %.05682.us.i, i8 32, i64 %i.bp, i1 false), !tbaa !14
  %scevgep.i = getelementptr i8, ptr %.05682.us.i, i64 %i.bb
  %i.br = sub nsw i64 0, %i.bo
  %scevgep92.i = getelementptr i8, ptr %scevgep.i, i64 %i.br
  br label %.loopexit.us.i

.loopexit.us.i:                                   ; preds = %.lr.ph80.us.preheader.i, %bb.v, %bb.u
  %.258.us.i = phi ptr [ %i.bl, %bb.u ], [ %i.bl, %bb.v ], [ %scevgep92.i, %.lr.ph80.us.preheader.i ]
  %.4.us.i = phi i64 [ %i.bn, %bb.u ], [ 0, %bb.v ], [ %i.bq, %.lr.ph80.us.preheader.i ]
  %i.bs = getelementptr i8, ptr %.184.us.i, i64 1 ; 2 uses
  %exitcond93.not.i = icmp eq ptr %i.bs, %i.at
  br i1 %exitcond93.not.i, label %stringlib_expandtabs_impl.exit, label %.lr.ph86.split.us.i, !llvm.loop !180

.lr.ph86.split.i:                                 ; preds = %.lr.ph86.split.i.prol.loopexit, %bb.aa
  %.184.i = phi ptr [ %i.ci, %bb.aa ], [ %.184.i.unr, %.lr.ph86.split.i.prol.loopexit ] ; 5 uses
  %.05682.i = phi ptr [ %.258.i.3, %bb.aa ], [ %.05682.i.unr, %.lr.ph86.split.i.prol.loopexit ] ; 3 uses
  %i.bt = load i8, ptr %.184.i, align 1, !tbaa !14 ; 2 uses
  %i.bu = icmp eq i8 %i.bt, 9
  br i1 %i.bu, label %.lr.ph86.split.i.1, label %bb.w

bb.w:                                             ; preds = %.lr.ph86.split.i
  %i.bv = getelementptr i8, ptr %.05682.i, i64 1
  store i8 %i.bt, ptr %.05682.i, align 1, !tbaa !14
  br label %.lr.ph86.split.i.1

.lr.ph86.split.i.1:                               ; preds = %bb.w, %.lr.ph86.split.i
  %.258.i = phi ptr [ %i.bv, %bb.w ], [ %.05682.i, %.lr.ph86.split.i ] ; 3 uses
  %i.bw = getelementptr i8, ptr %.184.i, i64 1
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !14  ; 2 uses
  %i.by = icmp eq i8 %i.bx, 9
  br i1 %i.by, label %.lr.ph86.split.i.2, label %bb.x

bb.x:                                             ; preds = %.lr.ph86.split.i.1
  %i.bz = getelementptr i8, ptr %.258.i, i64 1
  store i8 %i.bx, ptr %.258.i, align 1, !tbaa !14
  br label %.lr.ph86.split.i.2

.lr.ph86.split.i.2:                               ; preds = %bb.x, %.lr.ph86.split.i.1
  %.258.i.1 = phi ptr [ %i.bz, %bb.x ], [ %.258.i, %.lr.ph86.split.i.1 ] ; 3 uses
  %i.ca = getelementptr i8, ptr %.184.i, i64 2
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !14  ; 2 uses
  %i.cc = icmp eq i8 %i.cb, 9
  br i1 %i.cc, label %.lr.ph86.split.i.3, label %bb.y

bb.y:                                             ; preds = %.lr.ph86.split.i.2
  %i.cd = getelementptr i8, ptr %.258.i.1, i64 1
  store i8 %i.cb, ptr %.258.i.1, align 1, !tbaa !14
  br label %.lr.ph86.split.i.3

.lr.ph86.split.i.3:                               ; preds = %bb.y, %.lr.ph86.split.i.2
  %.258.i.2 = phi ptr [ %i.cd, %bb.y ], [ %.258.i.1, %.lr.ph86.split.i.2 ] ; 3 uses
  %i.ce = getelementptr i8, ptr %.184.i, i64 3
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !14  ; 2 uses
  %i.cg = icmp eq i8 %i.cf, 9
  br i1 %i.cg, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.lr.ph86.split.i.3
  %i.ch = getelementptr i8, ptr %.258.i.2, i64 1
  store i8 %i.cf, ptr %.258.i.2, align 1, !tbaa !14
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph86.split.i.3
  %.258.i.3 = phi ptr [ %i.ch, %bb.z ], [ %.258.i.2, %.lr.ph86.split.i.3 ]
  %i.ci = getelementptr i8, ptr %.184.i, i64 4    ; 2 uses
  %exitcond91.not.i.3 = icmp eq ptr %i.ci, %i.at
  br i1 %exitcond91.not.i.3, label %stringlib_expandtabs_impl.exit, label %.lr.ph86.split.i, !llvm.loop !180

.loopexit68.i:                                    ; preds = %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %._crit_edge.i
  %i.cj = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !11
  call void @PyErr_SetString(ptr noundef %i.cj, ptr noundef nonnull @.str.152) #19, !inline_history !178
  br label %stringlib_expandtabs_impl.exit

stringlib_expandtabs_impl.exit:                   ; preds = %.lr.ph86.split.i.prol.loopexit, %bb.aa, %.loopexit.us.i, %.loopexit68.i, %bb.r, %bb.e, %bb.c
  %.022 = phi ptr [ null, %bb.e ], [ null, %bb.c ], [ %i.ay, %bb.r ], [ null, %.loopexit68.i ], [ %i.ay, %.loopexit.us.i ], [ %i.ay, %bb.aa ], [ %i.ay, %.lr.ph86.split.i.prol.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret ptr %.022
}

; Function Attrs: nounwind uwtable
define internal ptr @bytes_find(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 0, ptr %i.a, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i64 9223372036854775807, ptr %i.b, align 8, !tbaa !43
  %i.c = add i64 %2, -1
  %or.cond = icmp ult i64 %i.c, 3
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.104, i64 noundef %2, i64 noundef 1, i64 noundef 3) #19
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = load ptr, ptr %1, align 8, !tbaa !11
  %i.f = icmp slt i64 %2, 2
  br i1 %i.f, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !11
  %i.i = call i32 @_PyEval_SliceIndex(ptr noundef %i.h, ptr noundef nonnull %i.a) #19
  %.not12 = icmp eq i32 %i.i, 0
  br i1 %.not12, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = icmp eq i64 %2, 2
  br i1 %i.j, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !11
  %i.m = call i32 @_PyEval_SliceIndex(ptr noundef %i.l, ptr noundef nonnull %i.b) #19
  %.not13 = icmp eq i32 %i.m, 0
  br i1 %.not13, label %bb.h, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f
  %.pre = load i64, ptr %i.b, align 8, !tbaa !43
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.e, %bb.c
  %i.n = phi i64 [ %.pre, %._crit_edge ], [ 9223372036854775807, %bb.e ], [ 9223372036854775807, %bb.c ]
end_hunk_1
