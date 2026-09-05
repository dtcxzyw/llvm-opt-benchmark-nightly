Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jq/original/decNumber?download=true
begin_hunk_0_@decApplyRound:bb.a
  %i.e = load i16, ptr %i.d, align 2, !tbaa !21
  %i.f = urem i16 %i.e, 5                         ; 2 uses
  %i.g = icmp slt i32 %2, 0
  %i.h = icmp ne i16 %i.f, 1
  %or.cond = select i1 %i.g, i1 %i.h, i1 false
  br i1 %or.cond, label %select.unfold123, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = icmp sgt i32 %2, 0
  %i.j = icmp eq i16 %i.f, 0
  %or.cond4 = select i1 %i.i, i1 %i.j, i1 false
  br i1 %or.cond4, label %select.unfold, label %.critedge

bb.e:                                             ; preds = %bb.b
  %i.k = icmp slt i32 %2, 0
  br i1 %i.k, label %select.unfold123, label %.critedge

bb.f:                                             ; preds = %bb.b
  %i.l = icmp sgt i32 %2, 5
  br i1 %i.l, label %select.unfold, label %.critedge

bb.g:                                             ; preds = %bb.b
  %i.m = icmp sgt i32 %2, 5
  br i1 %i.m, label %select.unfold, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = icmp eq i32 %2, 5
  br i1 %i.n, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.p = load i16, ptr %i.o, align 2, !tbaa !21
  %i.q = and i16 %i.p, 1
  %.not96 = icmp eq i16 %i.q, 0
  br i1 %.not96, label %.critedge, label %select.unfold

bb.j:                                             ; preds = %bb.b
  %i.r = icmp sgt i32 %2, 4
  br i1 %i.r, label %select.unfold, label %.critedge

bb.k:                                             ; preds = %bb.b
  %i.s = icmp sgt i32 %2, 0
  br i1 %i.s, label %select.unfold, label %.critedge

bb.l:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load i8, ptr %i.t, align 4, !tbaa !17
  %.not95 = icmp sgt i8 %i.u, -1
  br i1 %.not95, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.v = icmp slt i32 %2, 0
  br i1 %i.v, label %select.unfold123, label %.critedge

bb.n:                                             ; preds = %bb.l
  %i.w = icmp sgt i32 %2, 0
  br i1 %i.w, label %select.unfold, label %.critedge

bb.o:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i8, ptr %i.x, align 4, !tbaa !17
  %.not = icmp sgt i8 %i.y, -1
  br i1 %.not, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.z = icmp slt i32 %2, 0
  br i1 %i.z, label %select.unfold123, label %.critedge

bb.q:                                             ; preds = %bb.o
  %i.aa = icmp sgt i32 %2, 0
  br i1 %i.aa, label %select.unfold, label %.critedge

bb.r:                                             ; preds = %bb.b
  %i.ab = load i32, ptr %3, align 4, !tbaa !23
  %i.ac = or i32 %i.ab, 64
  store i32 %i.ac, ptr %3, align 4, !tbaa !23
  br label %.critedge

select.unfold:                                    ; preds = %bb.j, %bb.q, %bb.f, %bb.d, %bb.k, %bb.n, %bb.g, %bb.i
  %i.ad = load i32, ptr %0, align 4, !tbaa !19    ; 7 uses
  %.086.ptr145 = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.ae = icmp ult i32 %i.ad, 4
  br i1 %i.ae, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %select.unfold
  %i.af = add i32 %i.ad, -4
  %i.ag = udiv i32 %i.af, 3
  %i.ah = shl nuw i32 %i.ag, 1
  %i.ai = zext i32 %i.ah to i64
  %i.aj = add nuw nsw i64 %i.ai, 12
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.u, %select.unfold
  %.086.idx.lcssa = phi i64 [ 10, %select.unfold ], [ %i.aj, %bb.u ] ; 3 uses
  %.085.lcssa = phi i32 [ %i.ad, %select.unfold ], [ %i.bj, %bb.u ] ; 2 uses
  %.086.ptr.lcssa = phi ptr [ %.086.ptr145, %select.unfold ], [ %.086.ptr, %bb.u ] ; 2 uses
  %i.ak = load i16, ptr %.086.ptr.lcssa, align 2, !tbaa !21
  %i.al = zext i16 %i.ak to i32
  %i.am = zext nneg i32 %.085.lcssa to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr @DECPOWERS, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !23
  %i.ap = add i32 %i.ao, -1
  %.not105 = icmp eq i32 %i.ap, %i.al
  br i1 %.not105, label %bb.s, label %.loopexit

bb.s:                                             ; preds = %._crit_edge
  %i.aq = add nsw i32 %.085.lcssa, -1
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr @DECPOWERS, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !23
  %i.au = trunc i32 %i.at to i16
  store i16 %i.au, ptr %.086.ptr.lcssa, align 2, !tbaa !21
  %.not106151 = icmp slt i64 %.086.idx.lcssa, 11
  br i1 %.not106151, label %._crit_edge155, label %.lr.ph154.preheader

.lr.ph154.preheader:                              ; preds = %bb.s
  %i.av = add nsw i64 %.086.idx.lcssa, -2
  %i.aw = add nsw i64 %.086.idx.lcssa, -11
  %i.ax = and i64 %i.aw, -2                       ; 2 uses
  %i.ay = sub nsw i64 %i.av, %i.ax
  %scevgep = getelementptr i8, ptr %0, i64 %i.ay
  %i.az = add nuw nsw i64 %i.ax, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep, i8 0, i64 %i.az, i1 false), !tbaa !21
  br label %._crit_edge155

._crit_edge155:                                   ; preds = %.lr.ph154.preheader, %bb.s
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !18
  %i.bc = add nsw i32 %i.bb, 1                    ; 2 uses
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !18
  %i.bd = add nsw i32 %i.bc, %i.ad
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !30
  %i.bg = add nsw i32 %i.bf, 1
  %i.bh = icmp sgt i32 %i.bd, %i.bg
  br i1 %i.bh, label %bb.t, label %.critedge

bb.t:                                             ; preds = %._crit_edge155
  tail call fastcc void @decSetOverflow(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %3)
  br label %.critedge

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.u
  %.086.ptr148 = phi ptr [ %.086.ptr, %bb.u ], [ %.086.ptr145, %.lr.ph.preheader ]
  %.085147 = phi i32 [ %i.bj, %bb.u ], [ %i.ad, %.lr.ph.preheader ]
  %.086.idx146 = phi i64 [ %.086.add107, %bb.u ], [ 10, %.lr.ph.preheader ]
  %i.bi = load i16, ptr %.086.ptr148, align 2, !tbaa !21
  %.not104 = icmp eq i16 %i.bi, 999
  br i1 %.not104, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %.lr.ph
  %i.bj = add i32 %.085147, -3                    ; 3 uses
  %.086.add107 = add nuw nsw i64 %.086.idx146, 2  ; 2 uses
  %.086.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.086.add107 ; 2 uses
  %i.bk = icmp ult i32 %i.bj, 4
  br i1 %i.bk, label %._crit_edge, label %.lr.ph

select.unfold123:                                 ; preds = %bb.p, %bb.m, %bb.e, %bb.c
  %i.bl = load i32, ptr %0, align 4, !tbaa !19    ; 8 uses
  %.084.ptr156 = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.bm = icmp ult i32 %i.bl, 4
  br i1 %i.bm, label %._crit_edge161, label %.lr.ph160.preheader

.lr.ph160.preheader:                              ; preds = %select.unfold123
  %i.bn = add i32 %i.bl, -4
  %i.bo = udiv i32 %i.bn, 3
  %i.bp = shl nuw i32 %i.bo, 1
  %i.bq = zext i32 %i.bp to i64
  %i.br = add nuw nsw i64 %i.bq, 12
  br label %.lr.ph160

._crit_edge161:                                   ; preds = %bb.z, %select.unfold123
  %.084.idx.lcssa = phi i64 [ 10, %select.unfold123 ], [ %i.br, %bb.z ] ; 7 uses
  %.0.lcssa = phi i32 [ %i.bl, %select.unfold123 ], [ %i.dp, %bb.z ] ; 3 uses
  %.084.ptr.lcssa = phi ptr [ %.084.ptr156, %select.unfold123 ], [ %.084.ptr, %bb.z ] ; 3 uses
  %i.bs = load i16, ptr %.084.ptr.lcssa, align 2, !tbaa !21 ; 2 uses
  %i.bt = zext i16 %i.bs to i32
  %i.bu = add nsw i32 %.0.lcssa, -1
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr @DECPOWERS, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !23
  %.not98 = icmp eq i32 %i.bx, %i.bt
  br i1 %.not98, label %bb.v, label %.loopexit

bb.v:                                             ; preds = %._crit_edge161
  %i.by = zext nneg i32 %.0.lcssa to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr @DECPOWERS, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !23
  %i.cb = trunc i32 %i.ca to i16
  %i.cc = add i16 %i.cb, -1
  store i16 %i.cc, ptr %.084.ptr.lcssa, align 2, !tbaa !21
  %.not99165 = icmp slt i64 %.084.idx.lcssa, 11
  br i1 %.not99165, label %._crit_edge169, label %iter.check

iter.check:                                       ; preds = %bb.v
  %i.cd = load i32, ptr getelementptr inbounds nuw (i8, ptr @DECPOWERS, i64 12), align 4, !tbaa !23
  %i.ce = trunc i32 %i.cd to i16
  %i.cf = add i16 %i.ce, -1                       ; 3 uses
  %i.cg = add nsw i64 %.084.idx.lcssa, -11        ; 3 uses
  %i.ch = lshr i64 %i.cg, 1
  %i.ci = add nuw i64 %i.ch, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.cg, 6
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check192 = icmp ult i64 %i.cg, 30
  br i1 %min.iters.check192, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cj = and i64 %i.ci, 12
  %n.vec = and i64 %i.ci, -16                     ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.cf, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.ck = shl i64 %n.vec, 1
  %i.cl = sub i64 %.084.idx.lcssa, %i.ck
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cm = shl i64 %index, 1
  %i.cn = sub i64 %.084.idx.lcssa, %i.cm
  %i.co = getelementptr i8, ptr %0, i64 %i.cn     ; 2 uses
  %i.cp = getelementptr i8, ptr %i.co, i64 -16
  %i.cq = getelementptr i8, ptr %i.co, i64 -32
  store <8 x i16> %broadcast.splat, ptr %i.cp, align 2, !tbaa !21
  store <8 x i16> %broadcast.splat, ptr %i.cq, align 2, !tbaa !21
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cr = icmp eq i64 %index.next, %n.vec
  br i1 %i.cr, label %middle.block, label %vector.body, !llvm.loop !152

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ci, %n.vec
  br i1 %cmp.n, label %._crit_edge169, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cj, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !33

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec193 = and i64 %i.ci, -4                   ; 3 uses
  %broadcast.splatinsert194 = insertelement <4 x i16> poison, i16 %i.cf, i64 0
  %broadcast.splat195 = shufflevector <4 x i16> %broadcast.splatinsert194, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.cs = shl i64 %n.vec193, 1
  %i.ct = sub i64 %.084.idx.lcssa, %i.cs
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index197 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next198, %vec.epilog.vector.body ] ; 2 uses
  %i.cu = shl i64 %index197, 1
  %i.cv = sub i64 %.084.idx.lcssa, %i.cu
  %i.cw = getelementptr i8, ptr %0, i64 %i.cv
  %i.cx = getelementptr i8, ptr %i.cw, i64 -8
  store <4 x i16> %broadcast.splat195, ptr %i.cx, align 2, !tbaa !21
  %index.next198 = add nuw i64 %index197, 4       ; 2 uses
  %i.cy = icmp eq i64 %index.next198, %n.vec193
  br i1 %i.cy, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !153

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n199 = icmp eq i64 %i.ci, %n.vec193
  br i1 %cmp.n199, label %._crit_edge169, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.1.idx.in166.ph = phi i64 [ %.084.idx.lcssa, %iter.check ], [ %i.cl, %vec.epilog.iter.check ], [ %i.ct, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.1.idx.in166 = phi i64 [ %.1.idx, %vec.epilog.scalar.ph ], [ %.1.idx.in166.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.1.idx = add nsw i64 %.1.idx.in166, -2         ; 2 uses
  %.1.ptr = getelementptr inbounds i8, ptr %0, i64 %.1.idx
  store i16 %i.cf, ptr %.1.ptr, align 2, !tbaa !21
  %.not99 = icmp samesign ult i64 %.1.idx.in166, 13
  br i1 %.not99, label %._crit_edge169, label %vec.epilog.scalar.ph, !llvm.loop !154

._crit_edge169:                                   ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.v
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !18 ; 3 uses
  %i.db = add nsw i32 %i.da, -1
  store i32 %i.db, ptr %i.cz, align 4, !tbaa !18
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !29
  %i.de = load i32, ptr %1, align 4, !tbaa !27
  %i.df = add i32 %i.dd, 1
  %i.dg = sub i32 %i.df, %i.de
  %i.dh = icmp eq i32 %i.da, %i.dg
  br i1 %i.dh, label %bb.w, label %.critedge

bb.w:                                             ; preds = %._crit_edge169
  %i.di = icmp eq i32 %.0.lcssa, 1
  %i.dj = icmp eq i32 %i.bl, 1
  %or.cond137 = and i1 %i.di, %i.dj
  br i1 %or.cond137, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dk = add i16 %i.bs, -1
  %i.dl = add nsw i32 %i.bl, -1
  store i32 %i.dl, ptr %0, align 4, !tbaa !19
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %.sink = phi i16 [ %i.dk, %bb.x ], [ 0, %bb.w ]
  store i16 %.sink, ptr %.084.ptr.lcssa, align 2, !tbaa !21
  store i32 %i.da, ptr %i.cz, align 4, !tbaa !18
  %i.dm = load i32, ptr %3, align 4, !tbaa !23
  %i.dn = or i32 %i.dm, 14368
  store i32 %i.dn, ptr %3, align 4, !tbaa !23
  br label %.critedge

.lr.ph160:                                        ; preds = %.lr.ph160.preheader, %bb.z
  %.084.ptr159 = phi ptr [ %.084.ptr, %bb.z ], [ %.084.ptr156, %.lr.ph160.preheader ]
  %.0158 = phi i32 [ %i.dp, %bb.z ], [ %i.bl, %.lr.ph160.preheader ]
  %.084.idx157 = phi i64 [ %.084.add100, %bb.z ], [ 10, %.lr.ph160.preheader ]
  %i.do = load i16, ptr %.084.ptr159, align 2, !tbaa !21
  %.not97 = icmp eq i16 %i.do, 0
  br i1 %.not97, label %bb.z, label %.loopexit

bb.z:                                             ; preds = %.lr.ph160
  %i.dp = add i32 %.0158, -3                      ; 3 uses
  %.084.add100 = add nuw nsw i64 %.084.idx157, 2  ; 2 uses
  %.084.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.084.add100 ; 2 uses
  %i.dq = icmp ult i32 %i.dp, 4
  br i1 %i.dq, label %._crit_edge161, label %.lr.ph160

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph160, %._crit_edge161, %._crit_edge
  %i.dr = phi i32 [ %i.ad, %._crit_edge ], [ %i.bl, %._crit_edge161 ], [ %i.bl, %.lr.ph160 ], [ %i.ad, %.lr.ph ] ; 3 uses
  %.191135 = phi i32 [ 1, %._crit_edge ], [ -1, %._crit_edge161 ], [ -1, %.lr.ph160 ], [ 1, %.lr.ph ]
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.dt = icmp slt i32 %i.dr, 50
  br i1 %i.dt, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.loopexit
  %i.du = sext i32 %i.dr to i64
  %i.dv = getelementptr inbounds i8, ptr @d2utable, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !24
  %i.dx = zext i8 %i.dw to i32
  br label %bb.ac

bb.ab:                                            ; preds = %.loopexit
  %i.dy = add nuw nsw i32 %i.dr, 2
  %i.dz = udiv i32 %i.dy, 3
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.ea = phi i32 [ %i.dx, %bb.aa ], [ %i.dz, %bb.ab ]
  %i.eb = tail call fastcc i32 @decUnitAddSub(ptr noundef nonnull %i.ds, i32 noundef %i.ea, ptr noundef nonnull @uarrone, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.ds, i32 noundef %.191135) ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.i, %bb.p, %bb.j, %bb.q, %bb.h, %bb.m, %bb.f, %bb.d, %bb.e, %bb.k, %bb.n, %bb.r, %._crit_edge169, %bb.y, %._crit_edge155, %bb.t, %bb.a, %bb.ac
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @decSetOverflow(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !17    ; 2 uses
  %i.c = and i8 %i.b, -128                        ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 8 uses
  %i.e = load i16, ptr %i.d, align 2, !tbaa !21
  %i.f = icmp eq i16 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %0, align 4, !tbaa !19
  %i.h = icmp eq i32 %i.g, 1
  %i.i = and i8 %i.b, 112
  %i.j = icmp eq i8 %i.i, 0
  %or.cond = select i1 %i.h, i1 %i.j, i1 false
  br i1 %or.cond, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !30   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load i8, ptr %i.m, align 4, !tbaa !28
  %.not27 = icmp eq i8 %i.n, 0
  br i1 %.not27, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load i32, ptr %1, align 4, !tbaa !27
  %.neg33 = add i32 %i.l, 1
  %i.p = sub i32 %.neg33, %i.o
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i32 [ %i.p, %bb.d ], [ %i.l, %bb.c ]  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !18
  %i.s = icmp sgt i32 %i.r, %.0
  br i1 %i.s, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  store i32 %.0, ptr %i.q, align 4, !tbaa !18
  br label %.sink.split

bb.g:                                             ; preds = %bb.b, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  store i32 0, ptr %i.t, align 4, !tbaa !18
  store i32 1, ptr %0, align 4, !tbaa !19
  store i16 0, ptr %i.d, align 2, !tbaa !21
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !34
  switch i32 %i.v, label %.critedge [
    i32 5, label %.critedge31
    i32 7, label %.critedge31
    i32 0, label %.split
    i32 6, label %bb.h
  ]

.split:                                           ; preds = %bb.g
  %.not25 = icmp eq i8 %i.c, 0
  br i1 %.not25, label %.critedge, label %.critedge31

bb.h:                                             ; preds = %bb.g
  %.not.not = icmp eq i8 %i.c, 0
  br i1 %.not.not, label %.critedge31, label %.critedge

.critedge31:                                      ; preds = %.split, %bb.g, %bb.g, %bb.h
  %i.w = load i32, ptr %1, align 4, !tbaa !27     ; 8 uses
  store i32 %i.w, ptr %0, align 4, !tbaa !19
  %i.x = icmp sgt i32 %i.w, 3
  br i1 %i.x, label %iter.check, label %decSetMaxValue.exit

iter.check:                                       ; preds = %.critedge31
  %i.y = add nsw i32 %i.w, -4                     ; 3 uses
  %i.z = udiv i32 %i.y, 3
  %narrow = add nuw nsw i32 %i.z, 1
  %i.aa = zext nneg i32 %narrow to i64            ; 5 uses
  %min.iters.check = icmp ult i32 %i.y, 9
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check41 = icmp ult i32 %i.y, 45
  br i1 %min.iters.check41, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ab = and i64 %i.aa, 12
  %n.vec = and i64 %i.aa, 2147483632              ; 5 uses
  %i.ac = trunc nuw nsw i64 %n.vec to i32
  %i.ad = mul i32 %i.ac, -3
  %i.ae = add i32 %i.w, %i.ad                     ; 2 uses
  %i.af = shl nuw nsw i64 %n.vec, 1
  %i.ag = getelementptr i8, ptr %i.d, i64 %i.af   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.ah ; 2 uses
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> splat (i16 999), ptr %next.gep, align 2, !tbaa !21
  store <8 x i16> splat (i16 999), ptr %i.ai, align 2, !tbaa !21
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !155

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.aa
  br i1 %cmp.n, label %decSetMaxValue.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ab, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !33

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec43 = and i64 %i.aa, 2147483644            ; 4 uses
  %i.ak = trunc nuw nsw i64 %n.vec43 to i32
  %i.al = mul i32 %i.ak, -3
  %i.am = add i32 %i.w, %i.al                     ; 2 uses
  %i.an = shl nuw nsw i64 %n.vec43, 1
  %i.ao = getelementptr i8, ptr %i.d, i64 %i.an   ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index44 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next46, %vec.epilog.vector.body ] ; 2 uses
  %i.ap = shl i64 %index44, 1
  %next.gep45 = getelementptr i8, ptr %i.d, i64 %i.ap
  store <4 x i16> splat (i16 999), ptr %next.gep45, align 2, !tbaa !21
  %index.next46 = add nuw i64 %index44, 4         ; 2 uses
  %i.aq = icmp eq i64 %index.next46, %n.vec43
  br i1 %i.aq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !156

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n47 = icmp eq i64 %n.vec43, %i.aa
  br i1 %cmp.n47, label %decSetMaxValue.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.015.i.ph = phi i32 [ %i.w, %iter.check ], [ %i.ae, %vec.epilog.iter.check ], [ %i.am, %vec.epilog.middle.block ]
  %.01314.i.ph = phi ptr [ %i.d, %iter.check ], [ %i.ag, %vec.epilog.iter.check ], [ %i.ao, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.015.i = phi i32 [ %i.ar, %.lr.ph.i ], [ %.015.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.01314.i = phi ptr [ %i.as, %.lr.ph.i ], [ %.01314.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  store i16 999, ptr %.01314.i, align 2, !tbaa !21
  %i.ar = add nsw i32 %.015.i, -3                 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.01314.i, i64 2 ; 2 uses
  %i.at = icmp samesign ugt i32 %.015.i, 6
  br i1 %i.at, label %.lr.ph.i, label %decSetMaxValue.exit, !llvm.loop !157

decSetMaxValue.exit:                              ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %.critedge31
  %.013.lcssa.i = phi ptr [ %i.d, %.critedge31 ], [ %i.ao, %vec.epilog.middle.block ], [ %i.ag, %middle.block ], [ %i.as, %.lr.ph.i ]
  %.0.lcssa.i = phi i32 [ %i.w, %.critedge31 ], [ %i.am, %vec.epilog.middle.block ], [ %i.ae, %middle.block ], [ %i.ar, %.lr.ph.i ]
  %i.au = sext i32 %.0.lcssa.i to i64
  %i.av = getelementptr inbounds [4 x i8], ptr @DECPOWERS, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !23
  %i.ax = trunc i32 %i.aw to i16
  %i.ay = add i16 %i.ax, -1
  store i16 %i.ay, ptr %.013.lcssa.i, align 2, !tbaa !21
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !30
  %reass.sub = sub i32 %i.ba, %i.w
  %i.bb = add i32 %reass.sub, 1
  store i32 %i.bb, ptr %i.t, align 4, !tbaa !18
  br label %bb.i

.critedge:                                        ; preds = %.split, %bb.g, %bb.h
  %i.bc = or disjoint i8 %i.c, 64
  br label %bb.i

bb.i:                                             ; preds = %.critedge, %decSetMaxValue.exit
  %storemerge = phi i8 [ %i.bc, %.critedge ], [ %i.c, %decSetMaxValue.exit ]
  store i8 %storemerge, ptr %i.a, align 4, !tbaa !17
  br label %.sink.split

.sink.split:                                      ; preds = %bb.i, %bb.f
  %.sink39 = phi i32 [ 1024, %bb.f ], [ 2592, %bb.i ]
  %i.bd = load i32, ptr %2, align 4, !tbaa !23
  %i.be = or i32 %i.bd, %.sink39
  store i32 %i.be, ptr %2, align 4, !tbaa !23
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.e
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @decSetSubnormal(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull captures(none) %3) unnamed_addr #15 {
bb.a:
  %4 = alloca %struct.decContext, align 4         ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !29
  %i.c = load i32, ptr %1, align 4, !tbaa !27
  %.neg41 = add i32 %i.b, 1
  %i.d = sub i32 %.neg41, %i.c                    ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 4 uses
  %i.f = load i16, ptr %i.e, align 2, !tbaa !21
  %i.g = icmp eq i16 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %0, align 4, !tbaa !19
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i8, ptr %i.j, align 4, !tbaa !17
  %i.l = and i8 %i.k, 112
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !18
  %i.p = icmp slt i32 %i.o, %i.d
  br i1 %i.p, label %bb.e, label %bb.q

bb.e:                                             ; preds = %bb.d
  store i32 %i.d, ptr %i.n, align 4, !tbaa !18
  %i.q = load i32, ptr %3, align 4, !tbaa !23
  %i.r = or i32 %i.q, 1024
  br label %.sink.split

bb.f:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.s = load i32, ptr %3, align 4, !tbaa !23     ; 3 uses
  %i.t = or i32 %i.s, 4096
  store i32 %i.t, ptr %3, align 4, !tbaa !23
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !18
  %i.w = sub nsw i32 %i.d, %i.v                   ; 3 uses
  %i.x = icmp slt i32 %i.w, 1
  br i1 %i.x, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.y = and i32 %i.s, 32
  %.not40 = icmp eq i32 %i.y, 0
  br i1 %.not40, label %bb.q, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = or i32 %i.s, 12288
  br label %.sink.split

bb.i:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %4, ptr noundef nonnull align 4 dereferenceable(28) %1, i64 28, i1 false), !tbaa.struct !35
  %i.aa = load i32, ptr %0, align 4, !tbaa !19    ; 2 uses
  %i.ab = sub nsw i32 %i.aa, %i.w
  store i32 %i.ab, ptr %4, align 4, !tbaa !27
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !29
  %i.ae = sub nsw i32 %i.ad, %i.w
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !29
  call fastcc void @decSetCoeff(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef nonnull %i.e, i32 noundef %i.aa, ptr noundef %2, ptr noundef %3)
  %i.af = load i32, ptr %2, align 4, !tbaa !23
  call fastcc void @decApplyRound(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef %i.af, ptr noundef %3)
  %i.ag = load i32, ptr %3, align 4, !tbaa !23    ; 2 uses
  %i.ah = and i32 %i.ag, 32
  %.not = icmp eq i32 %i.ah, 0
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = or i32 %i.ag, 8192
  store i32 %i.ai, ptr %3, align 4, !tbaa !23
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.aj = load i32, ptr %i.u, align 4, !tbaa !18
  %i.ak = icmp sgt i32 %i.aj, %i.d
  br i1 %i.ak, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.al = load i32, ptr %0, align 4, !tbaa !19
  %i.am = tail call fastcc i32 @decShiftToMost(ptr noundef nonnull %i.e, i32 noundef %i.al, i32 noundef 1)
  store i32 %i.am, ptr %0, align 4, !tbaa !19
  %i.an = load i32, ptr %i.u, align 4, !tbaa !18
  %i.ao = add nsw i32 %i.an, -1
  store i32 %i.ao, ptr %i.u, align 4, !tbaa !18
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ap = load i16, ptr %i.e, align 2, !tbaa !21
  %i.aq = icmp eq i16 %i.ap, 0
  br i1 %i.aq, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.ar = load i32, ptr %0, align 4, !tbaa !19
  %i.as = icmp eq i32 %i.ar, 1
  br i1 %i.as, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.au = load i8, ptr %i.at, align 4, !tbaa !17
  %i.av = and i8 %i.au, 112
  %i.aw = icmp eq i8 %i.av, 0
  br i1 %i.aw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ax = load i32, ptr %3, align 4, !tbaa !23
  %i.ay = or i32 %i.ax, 1024
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.h, %bb.p
  %.sink = phi i32 [ %i.ay, %bb.p ], [ %i.z, %bb.h ], [ %i.r, %bb.e ]
  store i32 %.sink, ptr %3, align 4, !tbaa !23
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %bb.m, %bb.n, %bb.o, %bb.g, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.experimental.vector.extract.last.active.v4i32(<4 x i32>, <4 x i1>, i32) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nounwind }
attributes #20 = { nounwind allocsize(0) }

!llvm.module.flags = !{!4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}
!llvm.errno.tbaa = !{!15}

!0 = distinct !{!0, !22}
!1 = distinct !{!1, !22}
!2 = distinct !{!2, !22}
!3 = distinct !{!3, !22}
!4 = !{i32 7, !"Dwarf Version", i32 5}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{i32 7, !"uwtable", i32 2}
!9 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!"omnipotent char", !11, i64 0}
!13 = !{!"int", !12, i64 0}
!14 = !{!"__libc_errno", !13, i64 0}
!15 = !{!14, !13, i64 0}
!16 = !{!"", !13, i64 0, !13, i64 4, !12, i64 8, !12, i64 10}
!17 = !{!16, !12, i64 8}
!18 = !{!16, !13, i64 4}
!19 = !{!16, !13, i64 0}
!20 = !{!"short", !12, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!13, !13, i64 0}
!24 = !{!12, !12, i64 0}
!25 = !{!"llvm.loop.peeled.count", i32 1}
!26 = !{!"", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !12, i64 24}
!27 = !{!26, !13, i64 0}
!28 = !{!26, !12, i64 24}
!29 = !{!26, !13, i64 8}
!30 = !{!26, !13, i64 4}
!31 = !{!"llvm.loop.isvectorized", i32 1}
!32 = !{!"llvm.loop.unroll.runtime.disable"}
!33 = !{!"branch_weights", i32 4, i32 12}
!34 = !{!26, !13, i64 12}
!35 = !{i64 0, i64 4, !23, i64 4, i64 4, !23, i64 8, i64 4, !23, i64 12, i64 4, !23, i64 16, i64 4, !23, i64 20, i64 4, !23, i64 24, i64 1, !24}
!36 = !{!26, !13, i64 16}
!37 = !{!26, !13, i64 20}
!38 = distinct !{!38, !22}
!39 = distinct !{!39, !22}
!40 = distinct !{!40, !22}
!41 = distinct !{!41, !22}
!42 = distinct !{!42, !22}
!43 = distinct !{!43, !25}
!44 = distinct !{!44, !22}
!45 = distinct !{!45, !22}
!46 = distinct !{!46, !22}
!47 = distinct !{!47, !22, !31, !32}
!48 = distinct !{!48, !22, !31, !32}
!49 = distinct !{!49, !22, !31}
!50 = distinct !{!50, !"LVerDomain"}
!51 = distinct !{!51, !50}
!52 = distinct !{!52, !50}
!53 = distinct !{!53, !31, !32}
!54 = distinct !{!54, !22}
!55 = distinct !{!55, !31}
!56 = distinct !{!56, !22, !31, !32}
!57 = distinct !{!57, !22, !31, !32}
!58 = distinct !{!58, !22, !31}
!59 = !{!51}
!60 = !{!52}
!61 = distinct !{!61, !22}
!62 = distinct !{!62, !22, !31, !32}
!63 = distinct !{!63, !22, !31, !32}
!64 = distinct !{!64, !22, !31}
!65 = distinct !{!65, !22}
!66 = distinct !{!66, !22}
!67 = distinct !{!67, !22}
!68 = distinct !{!68, !22}
!69 = distinct !{!69, !22}
!70 = distinct !{!70, !22}
!71 = distinct !{!71, !22, !31, !32}
!72 = distinct !{!72, !22, !31, !32}
!73 = distinct !{!73, !22, !31}
!74 = distinct !{!74, !22}
!75 = distinct !{!75, !22}
!76 = distinct !{!76, !22, !31, !32}
!77 = distinct !{!77, !22, !32, !31}
!78 = distinct !{!78, !22}
!79 = distinct !{!79, !22}
!80 = distinct !{!80, !22}
!81 = distinct !{!81, !22}
!82 = !{!"long", !12, i64 0}
!83 = !{!82, !82, i64 0}
!84 = distinct !{!84, !22}
!85 = distinct !{!85, !22, !31, !32}
!86 = distinct !{!86, !22, !31, !32}
!87 = distinct !{!87, !22, !31}
!88 = distinct !{!88, !22, !31, !32}
!89 = distinct !{!89, !22, !31, !32}
!90 = distinct !{!90, !22, !31}
!91 = distinct !{!91, !22, !31, !32}
!92 = distinct !{!92, !22, !31, !32}
!93 = distinct !{!93, !22, !31}
!94 = distinct !{!94, !22, !31, !32}
!95 = distinct !{!95, !22, !31, !32}
!96 = distinct !{!96, !22, !31}
!97 = distinct !{!97, !22, !31, !32}
!98 = distinct !{!98, !22, !31, !32}
!99 = distinct !{!99, !22, !31}
!100 = distinct !{!100, !31, !32}
!101 = distinct !{!101, !31, !32}
!102 = distinct !{!102, !32, !31}
!103 = distinct !{!103, !31, !32}
!104 = distinct !{!104, !31, !32}
!105 = distinct !{!105, !32, !31}
!106 = distinct !{!106, !31, !32}
!107 = distinct !{!107, !31, !32}
!108 = distinct !{!108, !32, !31}
!109 = distinct !{!109, !22, !31, !32}
!110 = distinct !{!110, !22, !31, !32}
!111 = distinct !{!111, !22, !31}
!112 = distinct !{!112, !22, !31, !32}
!113 = distinct !{!113, !22, !31, !32}
!114 = distinct !{!114, !22, !31}
!115 = distinct !{!115, !22}
!116 = distinct !{!116, !22}
!117 = distinct !{!117, !22}
!118 = distinct !{!118, !22, !25}
!119 = distinct !{!119, !22}
!120 = distinct !{!120, !22}
!121 = distinct !{!121, !22, !31, !32}
!122 = distinct !{!122, !22, !31, !32}
!123 = distinct !{!123, !22, !31}
!124 = distinct !{!124, !22}
!125 = distinct !{!125, !22, !31, !32}
!126 = distinct !{!126, !22, !31, !32}
!127 = distinct !{!127, !22, !32, !31}
!128 = distinct !{!128, !22, !31, !32}
!129 = distinct !{!129, !22, !31, !32}
!130 = distinct !{!130, !22, !31}
!131 = distinct !{!131, !22}
!132 = distinct !{!132, !22, !31, !32}
!133 = distinct !{!133, !22, !31, !32}
!134 = distinct !{!134, !22, !31}
!135 = distinct !{!135, !22, !31, !32}
!136 = distinct !{!136, !22, !31, !32}
!137 = distinct !{!137, !22, !31}
!138 = distinct !{!138, !22}
!139 = distinct !{!139, !22, !31, !32}
!140 = distinct !{!140, !22, !31, !32}
!141 = distinct !{!141, !22, !31}
!142 = distinct !{!142, !22}
!143 = distinct !{!143, !22}
!144 = distinct !{!144, !146}
!145 = distinct !{!145, !22}
!146 = !{!"llvm.loop.unroll.disable"}
!147 = distinct !{!147, !22}
!148 = distinct !{!148, !22}
!149 = distinct !{!149, !22}
!150 = distinct !{!150, !22}
!151 = distinct !{!151, !22}
!152 = distinct !{!152, !22, !31, !32}
!153 = distinct !{!153, !22, !31, !32}
!154 = distinct !{!154, !22, !32, !31}
!155 = distinct !{!155, !31, !32}
!156 = distinct !{!156, !31, !32}
!157 = distinct !{!157, !32, !31}
end_hunk_0
