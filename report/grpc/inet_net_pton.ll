Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/inet_net_pton?download=true
inline.NumInlined: 4
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@ares_inet_net_pton:bb.a

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  store i8 0, ptr %i.h, align 1, !tbaa !9
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0.i = phi ptr [ %i.i, %bb.f ], [ null, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 6 uses
  %i.j = load i8, ptr %i.b, align 16, !tbaa !9    ; 2 uses
  switch i8 %i.j, label %.lr.ph.i.outer.i.preheader [
    i8 58, label %bb.h
    i8 0, label %ares_inet_pton6.exit.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !9
  %.not.i.i = icmp eq i8 %i.l, 58
  br i1 %.not.i.i, label %.lr.ph.i.outer.i.preheader, label %ares_inet_pton6.exit.i

.lr.ph.i.outer.i.preheader:                       ; preds = %bb.h, %bb.g
  %.pn.i.ph.i.ph = phi ptr [ %i.b, %bb.g ], [ %i.k, %bb.h ]
  br label %.lr.ph.i.outer.i

.lr.ph.i.outer.i:                                 ; preds = %.lr.ph.i.outer.i.preheader, %select.unfold.i.i
  %.ph.i = phi i8 [ %i.aq, %select.unfold.i.i ], [ %i.j, %.lr.ph.i.outer.i.preheader ] ; 2 uses
  %.pn.i.ph.i = phi ptr [ %.lcssa.i, %select.unfold.i.i ], [ %.pn.i.ph.i.ph, %.lr.ph.i.outer.i.preheader ] ; 2 uses
  %.077.ptr.ptr155.i.ph.i = phi ptr [ %.077.ptr.ptr.i.i, %select.unfold.i.i ], [ %i.a, %.lr.ph.i.outer.i.preheader ]
  %.064154.i.ph.i = phi i32 [ %.165.i.i, %select.unfold.i.i ], [ 0, %.lr.ph.i.outer.i.preheader ] ; 2 uses
  %.066153.i.ph.i = phi i32 [ %.167.i.i, %select.unfold.i.i ], [ 0, %.lr.ph.i.outer.i.preheader ] ; 4 uses
  %.074150.i.ph.i = phi ptr [ %.175.i.i, %select.unfold.i.i ], [ null, %.lr.ph.i.outer.i.preheader ] ; 4 uses
  %.077.idx149.i.ph.i = phi i64 [ %.178.idx.i.i, %select.unfold.i.i ], [ 0, %.lr.ph.i.outer.i.preheader ] ; 8 uses
  %.077.ptr.ptr.i27.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %.077.idx149.i.ph.i ; 3 uses
  %smax.i = call i32 @llvm.smax.i32(i32 %.066153.i.ph.i, i32 4)
  %i.m = getelementptr inbounds nuw i8, ptr %.pn.i.ph.i, i64 1 ; 3 uses
  %i.n = sext i8 %.ph.i to i32                    ; 2 uses
  %memchr.i.peel.i = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @ares_inet_pton6.xdigits_l, i32 %i.n, i64 17) ; 2 uses
  %i.o = icmp eq ptr %memchr.i.peel.i, null
  br i1 %i.o, label %bb.i, label %.thread.i.peel.i

bb.i:                                             ; preds = %.lr.ph.i.outer.i
  %memchr91.i.peel.i = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @ares_inet_pton6.xdigits_u, i32 %i.n, i64 17) ; 2 uses
  %.not92.i.peel.i = icmp eq ptr %memchr91.i.peel.i, null
  br i1 %.not92.i.peel.i, label %.loopexit113.i, label %.thread.i.peel.i

.thread.i.peel.i:                                 ; preds = %bb.i, %.lr.ph.i.outer.i
  %.063107.i.peel.i = phi ptr [ %memchr91.i.peel.i, %bb.i ], [ %memchr.i.peel.i, %.lr.ph.i.outer.i ]
  %.073106.i.peel.i = phi ptr [ @ares_inet_pton6.xdigits_u, %bb.i ], [ @ares_inet_pton6.xdigits_l, %.lr.ph.i.outer.i ]
  %exitcond.peel.i = icmp sgt i32 %.066153.i.ph.i, 3
  br i1 %exitcond.peel.i, label %ares_inet_pton6.exit.i, label %bb.j

bb.j:                                             ; preds = %.thread.i.peel.i
  %i.p = shl nuw nsw i32 %.064154.i.ph.i, 4
  %i.q = ptrtoint ptr %.063107.i.peel.i to i64
  %i.r = ptrtoint ptr %.073106.i.peel.i to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = trunc i64 %i.s to i32
  %i.u = or i32 %i.p, %i.t                        ; 3 uses
  %i.v = icmp ugt i32 %i.u, 65535
  br i1 %i.v, label %ares_inet_pton6.exit.i, label %select.unfold.i.thread.peel.i

select.unfold.i.thread.peel.i:                    ; preds = %bb.j
  %i.w = load i8, ptr %i.m, align 1, !tbaa !9     ; 2 uses
  %.not90.i28.peel.i = icmp eq i8 %i.w, 0
  br i1 %.not90.i28.peel.i, label %.loopexit114.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %select.unfold.i.thread.peel.i, %select.unfold.i.thread.i
  %i.x = phi i8 [ %i.ar, %select.unfold.i.thread.i ], [ %i.w, %select.unfold.i.thread.peel.i ] ; 2 uses
  %.pn.i.i = phi ptr [ %i.y, %select.unfold.i.thread.i ], [ %i.m, %select.unfold.i.thread.peel.i ]
  %.064154.i.i = phi i32 [ %i.ag, %select.unfold.i.thread.i ], [ %i.u, %select.unfold.i.thread.peel.i ] ; 2 uses
  %.066153.i.in.i = phi i32 [ %.066153.i.i, %select.unfold.i.thread.i ], [ %.066153.i.ph.i, %select.unfold.i.thread.peel.i ]
  %.066153.i.i = add i32 %.066153.i.in.i, 1       ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 1 ; 3 uses
  %i.z = sext i8 %i.x to i32                      ; 2 uses
  %memchr.i.i = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @ares_inet_pton6.xdigits_l, i32 %i.z, i64 17) ; 2 uses
  %i.aa = icmp eq ptr %memchr.i.i, null
  br i1 %i.aa, label %bb.k, label %.thread.i.i

bb.k:                                             ; preds = %.lr.ph.i.i
  %memchr91.i.i = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @ares_inet_pton6.xdigits_u, i32 %i.z, i64 17) ; 2 uses
  %.not92.i.i = icmp eq ptr %memchr91.i.i, null
  br i1 %.not92.i.i, label %.loopexit113.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.k, %.lr.ph.i.i
  %.063107.i.i = phi ptr [ %memchr91.i.i, %bb.k ], [ %memchr.i.i, %.lr.ph.i.i ]
  %.073106.i.i = phi ptr [ @ares_inet_pton6.xdigits_u, %bb.k ], [ @ares_inet_pton6.xdigits_l, %.lr.ph.i.i ]
  %exitcond.i = icmp eq i32 %.066153.i.i, %smax.i
  br i1 %exitcond.i, label %ares_inet_pton6.exit.i, label %bb.l

bb.l:                                             ; preds = %.thread.i.i
  %i.ab = shl nuw nsw i32 %.064154.i.i, 4
  %i.ac = ptrtoint ptr %.063107.i.i to i64
  %i.ad = ptrtoint ptr %.073106.i.i to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = trunc i64 %i.ae to i32
  %i.ag = or i32 %i.ab, %i.af                     ; 3 uses
  %i.ah = icmp ugt i32 %i.ag, 65535
  br i1 %i.ah, label %ares_inet_pton6.exit.i, label %select.unfold.i.thread.i

.loopexit113.i:                                   ; preds = %bb.k, %bb.i
  %.lcssa92.i = phi i8 [ %.ph.i, %bb.i ], [ %i.x, %bb.k ]
  %.077.ptr.ptr155.i.lcssa.i = phi ptr [ %.077.ptr.ptr155.i.ph.i, %bb.i ], [ %.077.ptr.ptr.i27.i, %bb.k ] ; 4 uses
  %.064154.i.lcssa.i = phi i32 [ %.064154.i.ph.i, %bb.i ], [ %.064154.i.i, %bb.k ] ; 3 uses
  %.066153.i.lcssa.i = phi i32 [ %.066153.i.ph.i, %bb.i ], [ %.066153.i.i, %bb.k ]
  %.not97.i.lcssa.i = phi i1 [ true, %bb.i ], [ false, %bb.k ]
  %.lcssa.i = phi ptr [ %i.m, %bb.i ], [ %i.y, %bb.k ] ; 3 uses
  switch i8 %.lcssa92.i, label %ares_inet_pton6.exit.i [
    i8 58, label %bb.m
    i8 46, label %bb.q
  ]

bb.m:                                             ; preds = %.loopexit113.i
  br i1 %.not97.i.lcssa.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %.not98.i.i = icmp eq ptr %.074150.i.ph.i, null
  br i1 %.not98.i.i, label %select.unfold.i.i, label %ares_inet_pton6.exit.i

bb.o:                                             ; preds = %bb.m
  %i.ai = load i8, ptr %.lcssa.i, align 1, !tbaa !9
  %i.aj = icmp eq i8 %i.ai, 0
  %i.ak = icmp ugt i64 %.077.idx149.i.ph.i, 14
  %or.cond.i.i = select i1 %i.aj, i1 true, i1 %i.ak
  br i1 %or.cond.i.i, label %ares_inet_pton6.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = lshr i32 %.064154.i.lcssa.i, 8
  %i.am = trunc nuw i32 %i.al to i8
  %.ptr95.i.i = getelementptr inbounds nuw i8, ptr %.077.ptr.ptr155.i.lcssa.i, i64 1
  store i8 %i.am, ptr %.077.ptr.ptr155.i.lcssa.i, align 1, !tbaa !9
  %i.an = trunc i32 %.064154.i.lcssa.i to i8
  %.add.i.i = add nuw nsw i64 %.077.idx149.i.ph.i, 2
  store i8 %i.an, ptr %.ptr95.i.i, align 1, !tbaa !9
  br label %select.unfold.i.i

bb.q:                                             ; preds = %.loopexit113.i
  %.not93.i.i = icmp sgt i64 %.077.idx149.i.ph.i, 12
  br i1 %.not93.i.i, label %ares_inet_pton6.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.077.add.i.i = add nuw nsw i64 %.077.idx149.i.ph.i, 4
  %i.ao = call fastcc i32 @ares_inet_net_pton_ipv4(ptr noundef nonnull %.pn.i.ph.i, ptr noundef nonnull %.077.ptr.ptr155.i.lcssa.i, i64 noundef 4)
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %.thread124.i.i, label %ares_inet_pton6.exit.i

select.unfold.i.i:                                ; preds = %bb.p, %bb.n
  %.178.idx.i.i = phi i64 [ %.077.idx149.i.ph.i, %bb.n ], [ %.add.i.i, %bb.p ] ; 3 uses
  %.175.i.i = phi ptr [ %.077.ptr.ptr155.i.lcssa.i, %bb.n ], [ %.074150.i.ph.i, %bb.p ] ; 2 uses
  %.167.i.i = phi i32 [ %.066153.i.lcssa.i, %bb.n ], [ 0, %bb.p ]
  %.165.i.i = phi i32 [ %.064154.i.lcssa.i, %bb.n ], [ 0, %bb.p ]
  %.077.ptr.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %.178.idx.i.i
  %i.aq = load i8, ptr %.lcssa.i, align 1, !tbaa !9 ; 2 uses
  %.not90.i.i = icmp eq i8 %i.aq, 0
  br i1 %.not90.i.i, label %.thread124.i.i, label %.lr.ph.i.outer.i

select.unfold.i.thread.i:                         ; preds = %bb.l
  %i.ar = load i8, ptr %i.y, align 1, !tbaa !9    ; 2 uses
  %.not90.i28.i = icmp eq i8 %i.ar, 0
  br i1 %.not90.i28.i, label %.loopexit114.i, label %.lr.ph.i.i, !llvm.loop !12

.loopexit114.i:                                   ; preds = %select.unfold.i.thread.peel.i, %select.unfold.i.thread.i
  %.lcssa95.i = phi i32 [ %i.ag, %select.unfold.i.thread.i ], [ %i.u, %select.unfold.i.thread.peel.i ] ; 2 uses
  %i.as = icmp sgt i64 %.077.idx149.i.ph.i, 14
  br i1 %i.as, label %ares_inet_pton6.exit.i, label %bb.s

bb.s:                                             ; preds = %.loopexit114.i
  %i.at = lshr i32 %.lcssa95.i, 8
  %i.au = trunc nuw i32 %i.at to i8
  %i.av = getelementptr inbounds nuw i8, ptr %.077.ptr.ptr.i27.i, i64 1
  store i8 %i.au, ptr %.077.ptr.ptr.i27.i, align 1, !tbaa !9
  %i.aw = trunc i32 %.lcssa95.i to i8
  %.279.ptr.add.i.i = add nuw nsw i64 %.077.idx149.i.ph.i, 2
  store i8 %i.aw, ptr %i.av, align 1, !tbaa !9
  br label %.thread124.i.i

.thread124.i.i:                                   ; preds = %select.unfold.i.i, %bb.s, %bb.r
  %.074145.i.i = phi ptr [ %.074150.i.ph.i, %bb.s ], [ %.074150.i.ph.i, %bb.r ], [ %.175.i.i, %select.unfold.i.i ] ; 9 uses
  %.3.idx.i.i = phi i64 [ %.279.ptr.add.i.i, %bb.s ], [ %.077.add.i.i, %bb.r ], [ %.178.idx.i.i, %select.unfold.i.i ] ; 3 uses
  %.not100.i.i = icmp eq ptr %.074145.i.i, null
  br i1 %.not100.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.thread124.i.i
  %.3.ptr.ptr.i.i = getelementptr i8, ptr %i.a, i64 %.3.idx.i.i
  %i.ax = ptrtoint ptr %.3.ptr.ptr.i.i to i64
  %i.ay = ptrtoint ptr %.074145.i.i to i64
  %i.az = sub i64 %i.ax, %i.ay                    ; 4 uses
  %i.ba = icmp eq i64 %.3.idx.i.i, 16
  br i1 %i.ba, label %ares_inet_pton6.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.t
  %i.bb = trunc i64 %i.az to i32
  %.not101159.i.i = icmp slt i32 %i.bb, 1
  br i1 %.not101159.i.i, label %.loopexit45.i, label %iter.check

iter.check:                                       ; preds = %.preheader.i.i
  %i.bc = and i64 %i.az, 2147483647               ; 7 uses
  %i.bd = add nuw nsw i64 %i.az, 1
  %wide.trip.count.i.i = and i64 %i.bd, 4294967295 ; 4 uses
  %i.be = add nsw i64 %wide.trip.count.i.i, -1    ; 8 uses
  %min.iters.check = icmp ult i64 %i.be, 8
  br i1 %min.iters.check, label %.lr.ph161.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bf = sub nsw i64 17, %wide.trip.count.i.i
  %scevgep = getelementptr i8, ptr %i.a, i64 %i.bf
  %i.bg = add nuw nsw i64 %i.bc, 1
  %i.bh = sub nsw i64 %i.bg, %wide.trip.count.i.i
  %scevgep180 = getelementptr i8, ptr %.074145.i.i, i64 %i.bh
  %scevgep181 = getelementptr i8, ptr %.074145.i.i, i64 %i.bc
  %bound0 = icmp ult ptr %scevgep, %scevgep181
  %bound1 = icmp ult ptr %scevgep180, %.ptr.i.i
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph161.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check182 = icmp ult i64 %i.be, 32
  br i1 %min.iters.check182, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bi = and i64 %i.be, 24
  %n.vec = and i64 %i.be, -32                     ; 4 uses
  %i.bj = or disjoint i64 %n.vec, 1
  %i.bk = getelementptr i8, ptr %.074145.i.i, i64 %i.bc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %.neg = xor i64 %index, -1
  %i.bl = getelementptr i8, ptr %i.bk, i64 %.neg  ; 2 uses
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -15 ; 2 uses
  %i.bn = getelementptr inbounds i8, ptr %i.bl, i64 -31 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.bm, align 1, !tbaa !9, !alias.scope !20
  %wide.load183 = load <16 x i8>, ptr %i.bn, align 1, !tbaa !9, !alias.scope !20
  %i.bo = xor i64 %index, -1
  %i.bp = getelementptr inbounds i8, ptr %.ptr.i.i, i64 %i.bo ; 2 uses
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 -15
  %i.br = getelementptr inbounds i8, ptr %i.bp, i64 -31
  store <16 x i8> %wide.load, ptr %i.bq, align 16, !tbaa !9, !alias.scope !21, !noalias !20
  store <16 x i8> %wide.load183, ptr %i.br, align 16, !tbaa !9, !alias.scope !21, !noalias !20
  store <16 x i8> zeroinitializer, ptr %i.bm, align 1, !tbaa !9, !alias.scope !20
  store <16 x i8> zeroinitializer, ptr %i.bn, align 1, !tbaa !9, !alias.scope !20
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.be, %n.vec
  br i1 %cmp.n, label %.loopexit45.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bi, 0
  br i1 %min.epilog.iters.check, label %.lr.ph161.i.i.preheader, label %vec.epilog.ph, !prof !22

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec184 = and i64 %i.be, -8                   ; 3 uses
  %i.bt = or disjoint i64 %n.vec184, 1
  %i.bu = getelementptr i8, ptr %.074145.i.i, i64 %i.bc
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index185 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next187, %vec.epilog.vector.body ] ; 3 uses
  %.neg190 = xor i64 %index185, -1
  %i.bv = getelementptr i8, ptr %i.bu, i64 %.neg190
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -7 ; 2 uses
  %wide.load186 = load <8 x i8>, ptr %i.bw, align 1, !tbaa !9, !alias.scope !20
  %i.bx = xor i64 %index185, -1
  %i.by = getelementptr inbounds i8, ptr %.ptr.i.i, i64 %i.bx
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 -7
  store <8 x i8> %wide.load186, ptr %i.bz, align 8, !tbaa !9, !alias.scope !21, !noalias !20
  store <8 x i8> zeroinitializer, ptr %i.bw, align 1, !tbaa !9, !alias.scope !20
  %index.next187 = add nuw i64 %index185, 8       ; 2 uses
  %i.ca = icmp eq i64 %index.next187, %n.vec184
  br i1 %i.ca, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !17

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n188 = icmp eq i64 %i.be, %n.vec184
  br i1 %cmp.n188, label %.loopexit45.i, label %.lr.ph161.i.i.preheader

.lr.ph161.i.i.preheader:                          ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.ph = phi i64 [ 1, %iter.check ], [ 1, %vector.memcheck ], [ %i.bj, %vec.epilog.iter.check ], [ %i.bt, %vec.epilog.middle.block ] ; 5 uses
  %xtraiter = and i64 %i.az, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph161.i.i.prol.loopexit, label %.lr.ph161.i.i.prol

.lr.ph161.i.i.prol:                               ; preds = %.lr.ph161.i.i.preheader
  %i.cb = sub nuw nsw i64 %i.bc, %indvars.iv.i.i.ph
  %i.cc = getelementptr inbounds nuw i8, ptr %.074145.i.i, i64 %i.cb ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !9
  %i.ce = sub nsw i64 0, %indvars.iv.i.i.ph
  %i.cf = getelementptr inbounds i8, ptr %.ptr.i.i, i64 %i.ce
  store i8 %i.cd, ptr %i.cf, align 1, !tbaa !9
  store i8 0, ptr %i.cc, align 1, !tbaa !9
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.ph, 1
  br label %.lr.ph161.i.i.prol.loopexit

.lr.ph161.i.i.prol.loopexit:                      ; preds = %.lr.ph161.i.i.prol, %.lr.ph161.i.i.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.lr.ph161.i.i.preheader ], [ %indvars.iv.next.i.i.prol, %.lr.ph161.i.i.prol ]
  %i.cg = icmp eq i64 %i.be, %indvars.iv.i.i.ph
  br i1 %i.cg, label %.loopexit45.i, label %.lr.ph161.i.i.preheader.new

.lr.ph161.i.i.preheader.new:                      ; preds = %.lr.ph161.i.i.prol.loopexit
  %i.ch = getelementptr i8, ptr %.074145.i.i, i64 %i.bc
  br label %.lr.ph161.i.i

.lr.ph161.i.i:                                    ; preds = %.lr.ph161.i.i, %.lr.ph161.i.i.preheader.new
  %indvars.iv.i.i = phi i64 [ %indvars.iv.i.i.unr, %.lr.ph161.i.i.preheader.new ], [ %indvars.iv.next.i.i.1, %.lr.ph161.i.i ] ; 5 uses
  %i.ci = sub nuw nsw i64 %i.bc, %indvars.iv.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %.074145.i.i, i64 %i.ci ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !9
  %i.cl = sub nsw i64 0, %indvars.iv.i.i
  %i.cm = getelementptr inbounds i8, ptr %.ptr.i.i, i64 %i.cl
  store i8 %i.ck, ptr %i.cm, align 1, !tbaa !9
  store i8 0, ptr %i.cj, align 1, !tbaa !9
  %indvars.iv.next.i.i.neg = xor i64 %indvars.iv.i.i, -1
  %i.cn = getelementptr i8, ptr %i.ch, i64 %indvars.iv.next.i.i.neg ; 2 uses
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !9
  %i.cp = xor i64 %indvars.iv.i.i, -1
  %i.cq = getelementptr inbounds i8, ptr %.ptr.i.i, i64 %i.cp
  store i8 %i.co, ptr %i.cq, align 1, !tbaa !9
  store i8 0, ptr %i.cn, align 1, !tbaa !9
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.1, label %.loopexit45.i, label %.lr.ph161.i.i, !llvm.loop !18

bb.u:                                             ; preds = %.thread124.i.i
  %.not102.i.i = icmp eq i64 %.3.idx.i.i, 16
  br i1 %.not102.i.i, label %.loopexit45.i, label %ares_inet_pton6.exit.i

ares_inet_pton6.exit.i:                           ; preds = %bb.o, %bb.n, %.loopexit113.i, %bb.j, %.thread.i.peel.i, %bb.l, %.thread.i.i, %bb.u, %bb.t, %.loopexit114.i, %bb.r, %bb.q, %bb.h, %bb.g
  %i.cr = tail call ptr @__errno_location() #9
  store i32 2, ptr %i.cr, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %ares_inet_net_pton_ipv6.exit

.loopexit45.i:                                    ; preds = %.lr.ph161.i.i.prol.loopexit, %.lr.ph161.i.i, %middle.block, %vec.epilog.middle.block, %bb.u, %.preheader.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.0.i, ptr noundef nonnull align 16 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.cs = icmp eq ptr %.0.i, null
  br i1 %i.cs, label %getbits.exit.i, label %.preheader.i

.preheader.i:                                     ; preds = %.loopexit45.i, %bb.x
  %.019.i.i = phi ptr [ %i.ct, %bb.x ], [ %.0.i, %.loopexit45.i ] ; 2 uses
  %.015.i.i = phi i64 [ %i.cy, %bb.x ], [ 0, %.loopexit45.i ] ; 3 uses
  %.014.i.i = phi i64 [ %i.dc, %bb.x ], [ 0, %.loopexit45.i ] ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 1
  %i.cu = load i8, ptr %.019.i.i, align 1, !tbaa !9 ; 2 uses
  %.not.i16.i = icmp eq i8 %i.cu, 0
  br i1 %.not.i16.i, label %bb.y, label %bb.v

bb.v:                                             ; preds = %.preheader.i
  %i.cv = sext i8 %i.cu to i32
  %memchr.i17.i = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @getbits.digits, i32 %i.cv, i64 11) ; 2 uses
  %.not24.i.i = icmp eq ptr %memchr.i17.i, null
  br i1 %.not24.i.i, label %.loopexit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cw = icmp ne i64 %.015.i.i, 0
  %i.cx = icmp eq i64 %.014.i.i, 0
  %or.cond.i18.i = and i1 %i.cw, %i.cx
  br i1 %or.cond.i18.i, label %.loopexit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cy = add i64 %.015.i.i, 1
  %i.cz = mul nuw nsw i64 %.014.i.i, 10
  %i.da = ptrtoint ptr %memchr.i17.i to i64
  %i.db = sub i64 %i.da, ptrtoint (ptr @getbits.digits to i64)
  %i.dc = add i64 %i.db, %i.cz                    ; 2 uses
  %i.dd = icmp ult i64 %i.dc, 129
  br i1 %i.dd, label %.preheader.i, label %.loopexit.i

bb.y:                                             ; preds = %.preheader.i
  %i.de = icmp eq i64 %.015.i.i, 0
  br i1 %i.de, label %.loopexit.i, label %getbits.exit.i

.loopexit.i:                                      ; preds = %bb.x, %bb.w, %bb.v, %bb.y
  %i.df = tail call ptr @__errno_location() #9
  store i32 2, ptr %i.df, align 4, !tbaa !8
  br label %ares_inet_net_pton_ipv6.exit

getbits.exit.i:                                   ; preds = %bb.y, %.loopexit45.i
  %.020.i = phi i64 [ 128, %.loopexit45.i ], [ %.014.i.i, %bb.y ] ; 2 uses
  %i.dg = add nuw nsw i64 %.020.i, 7
  %i.dh = lshr i64 %i.dg, 3                       ; 2 uses
  %i.di = icmp ugt i64 %i.dh, %3
  br i1 %i.di, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %getbits.exit.i
  %i.dj = tail call ptr @__errno_location() #9
  store i32 90, ptr %i.dj, align 4, !tbaa !8
  br label %ares_inet_net_pton_ipv6.exit

bb.aa:                                            ; preds = %getbits.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr nonnull align 1 %.sroa.0.i, i64 %i.dh, i1 false)
  %i.dk = trunc nuw nsw i64 %.020.i to i32
  br label %ares_inet_net_pton_ipv6.exit

ares_inet_net_pton_ipv6.exit:                     ; preds = %bb.d, %ares_inet_pton6.exit.i, %.loopexit.i, %bb.z, %bb.aa
  %.011.i = phi i32 [ -1, %bb.d ], [ -1, %.loopexit.i ], [ -1, %bb.z ], [ %i.dk, %bb.aa ], [ -1, %ares_inet_pton6.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.a, %ares_inet_net_pton_ipv6.exit, %bb.b
  %.0 = phi i32 [ %.011.i, %ares_inet_net_pton_ipv6.exit ], [ %i.c, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 2147483641) i32 @ares_inet_net_pton_ipv4(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.b = load i8, ptr %0, align 1, !tbaa !9       ; 3 uses
  %i.c = icmp eq i8 %i.b, 48
  br i1 %i.c, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.a, align 1, !tbaa !9
  switch i8 %i.d, label %.preheader197.preheader [
    i8 120, label %bb.c
    i8 88, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.f = load i8, ptr %i.e, align 1, !tbaa !9
  %.fr245 = freeze i8 %i.f                        ; 5 uses
  %i.g = icmp sgt i8 %.fr245, -1
  br i1 %i.g, label %bb.d, label %.preheader197.preheader

bb.d:                                             ; preds = %bb.c
  %i.h = add nsw i8 %.fr245, -48
  %or.cond165 = icmp ult i8 %i.h, 10
  br i1 %or.cond165, label %bb.e, label %switch.early.test

switch.early.test:                                ; preds = %bb.d
  switch i8 %.fr245, label %.preheader197.preheader [
    i8 102, label %bb.e
    i8 101, label %bb.e
    i8 100, label %bb.e
    i8 99, label %bb.e
    i8 98, label %bb.e
    i8 97, label %bb.e
    i8 70, label %bb.e
    i8 69, label %bb.e
    i8 68, label %bb.e
    i8 67, label %bb.e
    i8 66, label %bb.e
    i8 65, label %bb.e
  ]

bb.e:                                             ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %bb.d
  %.not156 = icmp eq i64 %2, 0
  br i1 %.not156, label %.loopexit.sink.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.j = zext nneg i8 %.fr245 to i32
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %i.k = phi i32 [ %i.af, %bb.j ], [ %i.j, %.lr.ph.preheader ] ; 3 uses
  %i.l = phi i8 [ %i.ae, %bb.j ], [ %.fr245, %.lr.ph.preheader ] ; 4 uses
  %i.m = phi ptr [ %i.ad, %bb.j ], [ %i.i, %.lr.ph.preheader ] ; 3 uses
  %.0108229 = phi i32 [ %.1109, %bb.j ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.0110228 = phi i32 [ %.1111, %bb.j ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.0118227 = phi i64 [ %.1119, %bb.j ], [ %2, %.lr.ph.preheader ] ; 4 uses
  %.0123226 = phi ptr [ %.1124, %bb.j ], [ %1, %.lr.ph.preheader ] ; 4 uses
  %i.n = add nsw i8 %i.l, -48
  %or.cond169 = icmp ult i8 %i.n, 10
  br i1 %or.cond169, label %.critedge2.thread, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.o = and i8 %i.l, 95
  %i.p = add nsw i8 %i.o, -65
  %or.cond172 = icmp ult i8 %i.p, 6
  br i1 %or.cond172, label %.critedge2, label %.critedge

.critedge2:                                       ; preds = %bb.f
  %i.q = icmp samesign ult i8 %i.l, 91
  br i1 %i.q, label %bb.g, label %.critedge2.thread

bb.g:                                             ; preds = %.critedge2
  %i.r = tail call zeroext i8 @ares_tolower(i8 noundef zeroext %i.l) #8
  %i.s = zext i8 %i.r to i32
  br label %.critedge2.thread

.critedge2.thread:                                ; preds = %.lr.ph, %bb.g, %.critedge2
  %.0113 = phi i32 [ %i.s, %bb.g ], [ %i.k, %.critedge2 ], [ %i.k, %.lr.ph ]
  %memchr163 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @ares_inet_net_pton_ipv4.xdigits, i32 %.0113, i64 17)
  %i.t = ptrtoint ptr %memchr163 to i64
  %i.u = trunc i64 %i.t to i32
  %i.v = sub i32 %i.u, ptrtoint (ptr @ares_inet_net_pton_ipv4.xdigits to i32) ; 2 uses
  %i.w = icmp eq i32 %.0108229, 0
  %i.x = shl i32 %.0110228, 4
  %i.y = or i32 %i.v, %i.x                        ; 2 uses
  %.1111 = select i1 %i.w, i32 %i.v, i32 %i.y     ; 2 uses
  %i.z = icmp eq i32 %.0108229, 1
  br i1 %i.z, label %bb.h, label %bb.j
end_hunk_0
