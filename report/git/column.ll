Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/column?download=true
inline.NumInlined: 20
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 8
begin_hunk_0_@print_columns:bb.a
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.z = load i64, ptr %i.d, align 8, !tbaa !41
  %i.aa = icmp ugt i64 %i.z, %indvars.iv.next.i
  br i1 %i.aa, label %.lr.ph.i, label %display_plain.exit, !llvm.loop !24

bb.k:                                             ; preds = %bb.i
  %i.ab = and i32 %1, 15                          ; 4 uses
  switch i32 %i.ab, label %bb.bk [
    i32 15, label %bb.l
    i32 1, label %bb.m
    i32 0, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !41
  %.not.i31 = icmp eq i64 %i.ac, 0
  br i1 %.not.i31, label %display_plain.exit, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.l, %.lr.ph.i32
  %indvars.iv.i33 = phi i64 [ %indvars.iv.next.i34, %.lr.ph.i32 ], [ 0, %bb.l ] ; 2 uses
  %i.ad = load ptr, ptr %0, align 8, !tbaa !43
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %indvars.iv.i33
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !45
  %i.ag = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef %i.s, ptr noundef %i.af, ptr noundef %i.r) ; 0 uses
  %indvars.iv.next.i34 = add nuw nsw i64 %indvars.iv.i33, 1 ; 2 uses
  %i.ah = load i64, ptr %i.d, align 8, !tbaa !41
  %i.ai = icmp ugt i64 %i.ah, %indvars.iv.next.i34
  br i1 %i.ai, label %.lr.ph.i32, label %display_plain.exit, !llvm.loop !24

bb.m:                                             ; preds = %bb.k, %bb.k
  %i.aj = load i64, ptr %i.d, align 8, !tbaa !41  ; 3 uses
  %i.ak = icmp ugt i64 %i.aj, 4611686018427387903
  br i1 %i.ak, label %bb.n, label %st_mult.exit.i

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.14, i64 noundef 4, i64 noundef %i.aj) #11
  unreachable

st_mult.exit.i:                                   ; preds = %bb.m
  %i.al = shl nuw i64 %i.aj, 2
  %i.am = tail call ptr @xmalloc(i64 noundef %i.al) #12 ; 45 uses
  %i.an = load i64, ptr %i.d, align 8, !tbaa !41
  %.not123.i = icmp eq i64 %i.an, 0
  br i1 %.not123.i, label %layout.exit.i, label %.lr.ph.i36

.lr.ph.i36:                                       ; preds = %st_mult.exit.i, %.lr.ph.i36
  %indvars.iv.i37 = phi i64 [ %indvars.iv.next.i38, %.lr.ph.i36 ], [ 0, %st_mult.exit.i ] ; 3 uses
  %i.ao = load ptr, ptr %0, align 8, !tbaa !43
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %indvars.iv.i37
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !45 ; 2 uses
  %i.ar = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aq) #13
  %i.as = tail call i32 @utf8_strnwidth(ptr noundef nonnull %i.aq, i64 noundef %i.ar, i32 noundef 1) #12
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv.i37
  store i32 %i.as, ptr %i.at, align 4, !tbaa !20
  %indvars.iv.next.i38 = add nuw nsw i64 %indvars.iv.i37, 1 ; 2 uses
  %i.au = load i64, ptr %i.d, align 8, !tbaa !41  ; 7 uses
  %i.av = icmp ugt i64 %i.au, %indvars.iv.next.i38
  br i1 %i.av, label %.lr.ph.i36, label %._crit_edge.i, !llvm.loop !25

._crit_edge.i:                                    ; preds = %.lr.ph.i36
  %.not.i.i = icmp eq i64 %i.au, 0
  br i1 %.not.i.i, label %layout.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %._crit_edge.i
  %min.iters.check = icmp ult i64 %i.au, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader145, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.au, -8                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ay, %vector.body ]
  %vec.phi124 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.az, %vector.body ]
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %index ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %wide.load = load <4 x i32>, ptr %i.aw, align 4, !tbaa !20
  %wide.load125 = load <4 x i32>, ptr %i.ax, align 4, !tbaa !20
  %i.ay = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi, <4 x i32> %wide.load) ; 2 uses
  %i.az = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi124, <4 x i32> %wide.load125) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ay, <4 x i32> %i.az)
  %i.bb = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %layout.exit.i.loopexit, label %.lr.ph.i.i.preheader145

.lr.ph.i.i.preheader145:                          ; preds = %.lr.ph.i.i.preheader, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec, %middle.block ]
  %.ph = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %i.bb, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader145, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader145 ] ; 2 uses
  %i.bc = phi i32 [ %spec.select.i, %.lr.ph.i.i ], [ %.ph, %.lr.ph.i.i.preheader145 ]
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv.i.i
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !20
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %i.bc, i32 %i.be) ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.au
  br i1 %exitcond.not.i.i, label %layout.exit.i.loopexit, label %.lr.ph.i.i, !llvm.loop !27

layout.exit.i.loopexit:                           ; preds = %.lr.ph.i.i, %middle.block
  %spec.select.i.lcssa = phi i32 [ %i.bb, %middle.block ], [ %spec.select.i, %.lr.ph.i.i ]
  %i.bf = add i64 %i.au, -1
  br label %layout.exit.i

layout.exit.i:                                    ; preds = %layout.exit.i.loopexit, %._crit_edge.i, %st_mult.exit.i
  %.lcssa101233.i = phi i64 [ -1, %._crit_edge.i ], [ -1, %st_mult.exit.i ], [ %i.bf, %layout.exit.i.loopexit ]
  %i.bg = phi i32 [ 0, %._crit_edge.i ], [ 0, %st_mult.exit.i ], [ %spec.select.i.lcssa, %layout.exit.i.loopexit ] ; 5 uses
  %i.bh = add nsw i32 %i.bg, %.sroa.5.1           ; 5 uses
  %i.bi = sext i32 %i.t to i64
  %i.bj = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.s) #13
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = sext i32 %i.bh to i64                   ; 3 uses
  %i.bm = udiv i64 %i.bk, %i.bl
  %i.bn = trunc i64 %i.bm to i32
  %spec.select.i.i = tail call i32 @llvm.umax.i32(i32 %i.bn, i32 1) ; 5 uses
  %i.bo = sext i32 %spec.select.i.i to i64        ; 4 uses
  %i.bp = add i64 %.lcssa101233.i, %i.bo
  %i.bq = udiv i64 %i.bp, %i.bo                   ; 2 uses
  %i.br = trunc i64 %i.bq to i32
  %i.bs = and i32 %1, 128
  %.not.i39 = icmp eq i32 %i.bs, 0
  br i1 %.not.i39, label %shrink_columns.exit.i, label %bb.o

bb.o:                                             ; preds = %layout.exit.i
  %i.bt = icmp slt i32 %spec.select.i.i, 0
  br i1 %i.bt, label %bb.p, label %st_mult.exit.i.i

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.14, i64 noundef 4, i64 noundef %i.bo) #11
  unreachable

st_mult.exit.i.i:                                 ; preds = %bb.o
  %i.bu = shl nuw nsw i64 %i.bo, 2
  %i.bv = tail call ptr @xrealloc(ptr noundef null, i64 noundef %i.bu) #12 ; 6 uses
  %i.bw = icmp eq i32 %i.ab, 0                    ; 4 uses
  %sext228.i = shl i64 %i.bq, 32
  %i.bx = ashr exact i64 %sext228.i, 32           ; 5 uses
  %i.by = icmp sgt i64 %i.bx, 1
  br i1 %i.by, label %.lr.ph.preheader, label %.thread.i.i

.lr.ph.preheader:                                 ; preds = %st_mult.exit.i.i
  %i.bz = add nsw i64 %i.bx, -2
  %i.ca = add nsw i64 %i.bx, -2
  br label %.lr.ph

bb.q:                                             ; preds = %._crit_edge.i.i
  %i.cb = icmp sgt i64 %indvars.iv143.i114, 2
  %indvar.next = add i64 %indvar, 1
  br i1 %i.cb, label %.lr.ph, label %.thread.i.i

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.q
  %indvar = phi i64 [ 0, %.lr.ph.preheader ], [ %indvar.next, %bb.q ] ; 3 uses
  %i.cc = phi ptr [ %i.bv, %.lr.ph.preheader ], [ %i.hl, %bb.q ] ; 2 uses
  %i.cd = phi ptr [ %i.bv, %.lr.ph.preheader ], [ %i.hk, %bb.q ]
  %i.ce = phi ptr [ %i.bv, %.lr.ph.preheader ], [ %i.co, %bb.q ]
  %.sroa.62.1.i116 = phi ptr [ %i.bv, %.lr.ph.preheader ], [ %.sroa.62.3.i, %bb.q ]
  %.sroa.40.1.i115 = phi i32 [ %spec.select.i.i, %.lr.ph.preheader ], [ %i.cj, %bb.q ] ; 3 uses
  %indvars.iv143.i114 = phi i64 [ %i.bx, %.lr.ph.preheader ], [ %indvars.iv.next144.i, %bb.q ] ; 4 uses
  %indvars.iv.next144.i = add nsw i64 %indvars.iv143.i114, -1 ; 11 uses
  %i.cf = load i64, ptr %i.d, align 8, !tbaa !41
  %i.cg = add nsw i64 %indvars.iv143.i114, -2
  %i.ch = add i64 %i.cg, %i.cf
  %i.ci = udiv i64 %i.ch, %indvars.iv.next144.i   ; 6 uses
  %i.cj = trunc i64 %i.ci to i32                  ; 5 uses
  %.not.i23.i = icmp eq i32 %.sroa.40.1.i115, %i.cj
  br i1 %.not.i23.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %.lr.ph
  %sext.i.i = shl i64 %i.ci, 32                   ; 2 uses
  %i.ck = ashr exact i64 %sext.i.i, 32            ; 2 uses
  %i.cl = icmp ugt i64 %i.ck, 4611686018427387903
  br i1 %i.cl, label %bb.s, label %st_mult.exit38.i.i

bb.s:                                             ; preds = %bb.r
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.14, i64 noundef 4, i64 noundef %i.ck) #11
  unreachable

st_mult.exit38.i.i:                               ; preds = %bb.r
  %i.cm = ashr exact i64 %sext.i.i, 30
  %i.cn = tail call ptr @xrealloc(ptr noundef %i.cc, i64 noundef %i.cm) #12 ; 4 uses
  br label %bb.t

bb.t:                                             ; preds = %st_mult.exit38.i.i, %.lr.ph
  %.sroa.62.3.i = phi ptr [ %.sroa.62.1.i116, %.lr.ph ], [ %i.cn, %st_mult.exit38.i.i ] ; 3 uses
  %i.co = phi ptr [ %i.ce, %.lr.ph ], [ %i.cn, %st_mult.exit38.i.i ] ; 12 uses
  %i.cp = phi i32 [ %.sroa.40.1.i115, %.lr.ph ], [ %i.cj, %st_mult.exit38.i.i ]
  %i.cq = phi ptr [ %i.cd, %.lr.ph ], [ %i.cn, %st_mult.exit38.i.i ] ; 5 uses
  %i.cr = phi ptr [ %i.cc, %.lr.ph ], [ %i.cn, %st_mult.exit38.i.i ]
  %i.cs = icmp sgt i32 %i.cp, 0
  br i1 %i.cs, label %.lr.ph35.i.i.preheader.i, label %compute_column_width.exit.thread.i.i

.lr.ph35.i.i.preheader.i:                         ; preds = %bb.t
  %i.ct = trunc nuw nsw i64 %indvars.iv.next144.i to i32
  %i.cu = select i1 %i.bw, i32 %i.ct, i32 1
  %i.cv = load i64, ptr %i.d, align 8, !tbaa !41  ; 6 uses
  %sext.i = shl i64 %i.ci, 32
  %i.cw = ashr exact i64 %sext.i, 32              ; 5 uses
  br i1 %i.bw, label %.lr.ph35.i.i.us.i.preheader, label %.lr.ph35.i.i.i.preheader

.lr.ph35.i.i.i.preheader:                         ; preds = %.lr.ph35.i.i.preheader.i
  %xtraiter = and i64 %indvars.iv.next144.i, 1
  %i.cx = icmp eq i64 %i.bz, %indvar
  %unroll_iter = and i64 %indvars.iv.next144.i, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod151 = trunc i64 %indvars.iv.next144.i to i1
  br label %.lr.ph35.i.i.i

.lr.ph35.i.i.us.i.preheader:                      ; preds = %.lr.ph35.i.i.preheader.i
  %xtraiter153 = and i64 %indvars.iv.next144.i, 1
  %i.cy = icmp eq i64 %i.ca, %indvar
  %unroll_iter158 = and i64 %indvars.iv.next144.i, -2
  %lcmp.mod156.not = icmp eq i64 %xtraiter153, 0
  %lcmp.mod157 = trunc i64 %indvars.iv.next144.i to i1
  br label %.lr.ph35.i.i.us.i

.lr.ph35.i.i.us.i:                                ; preds = %.lr.ph35.i.i.us.i.preheader, %._crit_edge.i.i.split.us.us.i
  %indvars.iv.i.i.us.i = phi i64 [ %indvars.iv.next.i.i.us.i, %._crit_edge.i.i.split.us.us.i ], [ 0, %.lr.ph35.i.i.us.i.preheader ] ; 4 uses
  %i.cz = trunc nuw nsw i64 %indvars.iv.i.i.us.i to i32
  %spec.select95.us.i = mul nsw i32 %i.cu, %i.cz  ; 3 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv.i.i.us.i ; 4 uses
  store i32 %spec.select95.us.i, ptr %i.da, align 4, !tbaa !20
  %i.db = mul nuw nsw i64 %indvars.iv.i.i.us.i, %indvars.iv.next144.i ; 3 uses
  br i1 %i.cy, label %.epil.preheader152, label %.lr.ph35.i.i.us.i.new

.lr.ph35.i.i.us.i.new:                            ; preds = %.lr.ph35.i.i.us.i, %bb.z
  %indvars.iv140.i = phi i64 [ %indvars.iv.next141.i.1, %bb.z ], [ 0, %.lr.ph35.i.i.us.i ] ; 3 uses
  %i.dc = phi i32 [ %i.dw, %bb.z ], [ %spec.select95.us.i, %.lr.ph35.i.i.us.i ] ; 3 uses
  %niter159 = phi i64 [ %niter159.next.1, %bb.z ], [ 0, %.lr.ph35.i.i.us.i ]
  %i.dd = add nsw i64 %indvars.iv140.i, %i.db     ; 3 uses
  %i.de = icmp ugt i64 %i.cv, %i.dd
  br i1 %i.de, label %bb.u, label %bb.w

bb.u:                                             ; preds = %.lr.ph35.i.i.us.i.new
  %i.df = sext i32 %i.dc to i64
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.df
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !20
  %i.di = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.dd
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !20
  %i.dk = icmp slt i32 %i.dh, %i.dj
  br i1 %i.dk, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dl = trunc nsw i64 %i.dd to i32              ; 2 uses
  store i32 %i.dl, ptr %i.da, align 4, !tbaa !20
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %.lr.ph35.i.i.us.i.new
  %i.dm = phi i32 [ %i.dc, %.lr.ph35.i.i.us.i.new ], [ %i.dc, %bb.u ], [ %i.dl, %bb.v ] ; 3 uses
  %indvars.iv.next141.i = or disjoint i64 %indvars.iv140.i, 1
  %i.dn = add nsw i64 %indvars.iv.next141.i, %i.db ; 3 uses
  %i.do = icmp ugt i64 %i.cv, %i.dn
  br i1 %i.do, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.dp = sext i32 %i.dm to i64
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !20
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.dn
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !20
  %i.du = icmp slt i32 %i.dr, %i.dt
  br i1 %i.du, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dv = trunc nsw i64 %i.dn to i32              ; 2 uses
  store i32 %i.dv, ptr %i.da, align 4, !tbaa !20
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w
  %i.dw = phi i32 [ %i.dm, %bb.w ], [ %i.dm, %bb.x ], [ %i.dv, %bb.y ] ; 2 uses
  %indvars.iv.next141.i.1 = add nuw nsw i64 %indvars.iv140.i, 2 ; 2 uses
  %niter159.next.1 = add i64 %niter159, 2         ; 2 uses
  %niter159.ncmp.1.not = icmp eq i64 %niter159.next.1, %unroll_iter158
  br i1 %niter159.ncmp.1.not, label %._crit_edge.i.i.split.us.us.i.unr-lcssa, label %.lr.ph35.i.i.us.i.new, !llvm.loop !28

._crit_edge.i.i.split.us.us.i.unr-lcssa:          ; preds = %bb.z
  br i1 %lcmp.mod156.not, label %._crit_edge.i.i.split.us.us.i, label %.epil.preheader152

.epil.preheader152:                               ; preds = %._crit_edge.i.i.split.us.us.i.unr-lcssa, %.lr.ph35.i.i.us.i
  %indvars.iv140.i.epil.init = phi i64 [ 0, %.lr.ph35.i.i.us.i ], [ %indvars.iv.next141.i.1, %._crit_edge.i.i.split.us.us.i.unr-lcssa ]
  %.epil.init155 = phi i32 [ %spec.select95.us.i, %.lr.ph35.i.i.us.i ], [ %i.dw, %._crit_edge.i.i.split.us.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod157)
  %i.dx = add nsw i64 %indvars.iv140.i.epil.init, %i.db ; 3 uses
  %i.dy = icmp ugt i64 %i.cv, %i.dx
  br i1 %i.dy, label %bb.aa, label %._crit_edge.i.i.split.us.us.i

bb.aa:                                            ; preds = %.epil.preheader152
  %i.dz = sext i32 %.epil.init155 to i64
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.dz
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !20
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.dx
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !20
  %i.ee = icmp slt i32 %i.eb, %i.ed
  br i1 %i.ee, label %bb.ab, label %._crit_edge.i.i.split.us.us.i

bb.ab:                                            ; preds = %bb.aa
  %i.ef = trunc nsw i64 %i.dx to i32
  store i32 %i.ef, ptr %i.da, align 4, !tbaa !20
  br label %._crit_edge.i.i.split.us.us.i

._crit_edge.i.i.split.us.us.i:                    ; preds = %.epil.preheader152, %bb.aa, %bb.ab, %._crit_edge.i.i.split.us.us.i.unr-lcssa
  %indvars.iv.next.i.i.us.i = add nuw nsw i64 %indvars.iv.i.i.us.i, 1 ; 2 uses
  %i.eg = icmp slt i64 %indvars.iv.next.i.i.us.i, %i.cw
  br i1 %i.eg, label %.lr.ph35.i.i.us.i, label %compute_column_width.exit.i.i, !llvm.loop !29

compute_column_width.exit.thread.i.i:             ; preds = %bb.t
  %i.eh = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.s) #13
  %i.ei = trunc i64 %i.eh to i32
  br label %._crit_edge.i.i

.lr.ph35.i.i.i:                                   ; preds = %.lr.ph35.i.i.i.preheader, %._crit_edge.i.i.split.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %._crit_edge.i.i.split.i ], [ 0, %.lr.ph35.i.i.i.preheader ] ; 6 uses
  %i.ej = trunc nuw nsw i64 %indvars.iv.i.i.i to i32 ; 3 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv.i.i.i ; 4 uses
  store i32 %i.ej, ptr %i.ek, align 4, !tbaa !20
  br i1 %i.cx, label %.epil.preheader, label %.lr.ph35.i.i.i.new

.lr.ph35.i.i.i.new:                               ; preds = %.lr.ph35.i.i.i, %bb.ah
  %indvars.iv137.i = phi i64 [ %indvars.iv.next138.i.1, %bb.ah ], [ 0, %.lr.ph35.i.i.i ] ; 3 uses
  %i.el = phi i32 [ %i.fh, %bb.ah ], [ %i.ej, %.lr.ph35.i.i.i ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %bb.ah ], [ 0, %.lr.ph35.i.i.i ]
  %i.em = mul nsw i64 %indvars.iv137.i, %i.cw
  %i.en = add nsw i64 %i.em, %indvars.iv.i.i.i    ; 3 uses
  %i.eo = icmp ugt i64 %i.cv, %i.en
  br i1 %i.eo, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %.lr.ph35.i.i.i.new
  %i.ep = sext i32 %i.el to i64
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !20
  %i.es = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.en
  %i.et = load i32, ptr %i.es, align 4, !tbaa !20
  %i.eu = icmp slt i32 %i.er, %i.et
  br i1 %i.eu, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ev = trunc nsw i64 %i.en to i32              ; 2 uses
  store i32 %i.ev, ptr %i.ek, align 4, !tbaa !20
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %.lr.ph35.i.i.i.new
  %i.ew = phi i32 [ %i.el, %.lr.ph35.i.i.i.new ], [ %i.el, %bb.ac ], [ %i.ev, %bb.ad ] ; 3 uses
  %indvars.iv.next138.i = or disjoint i64 %indvars.iv137.i, 1
  %i.ex = mul nsw i64 %indvars.iv.next138.i, %i.cw
  %i.ey = add nsw i64 %i.ex, %indvars.iv.i.i.i    ; 3 uses
  %i.ez = icmp ugt i64 %i.cv, %i.ey
  br i1 %i.ez, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.fa = sext i32 %i.ew to i64
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.fa
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !20
  %i.fd = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.ey
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !20
  %i.ff = icmp slt i32 %i.fc, %i.fe
  br i1 %i.ff, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.fg = trunc nsw i64 %i.ey to i32              ; 2 uses
  store i32 %i.fg, ptr %i.ek, align 4, !tbaa !20
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae
  %i.fh = phi i32 [ %i.ew, %bb.ae ], [ %i.ew, %bb.af ], [ %i.fg, %bb.ag ] ; 2 uses
  %indvars.iv.next138.i.1 = add nuw nsw i64 %indvars.iv137.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.i.i.split.i.unr-lcssa, label %.lr.ph35.i.i.i.new, !llvm.loop !28

._crit_edge.i.i.split.i.unr-lcssa:                ; preds = %bb.ah
  br i1 %lcmp.mod.not, label %._crit_edge.i.i.split.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.split.i.unr-lcssa, %.lr.ph35.i.i.i
  %indvars.iv137.i.epil.init = phi i64 [ 0, %.lr.ph35.i.i.i ], [ %indvars.iv.next138.i.1, %._crit_edge.i.i.split.i.unr-lcssa ]
  %.epil.init = phi i32 [ %i.ej, %.lr.ph35.i.i.i ], [ %i.fh, %._crit_edge.i.i.split.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod151)
  %i.fi = mul nsw i64 %indvars.iv137.i.epil.init, %i.cw
  %i.fj = add nsw i64 %i.fi, %indvars.iv.i.i.i    ; 3 uses
  %i.fk = icmp ugt i64 %i.cv, %i.fj
  br i1 %i.fk, label %bb.ai, label %._crit_edge.i.i.split.i

bb.ai:                                            ; preds = %.epil.preheader
  %i.fl = sext i32 %.epil.init to i64
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.fl
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !20
  %i.fo = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.fj
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !20
  %i.fq = icmp slt i32 %i.fn, %i.fp
  br i1 %i.fq, label %bb.aj, label %._crit_edge.i.i.split.i

bb.aj:                                            ; preds = %bb.ai
  %i.fr = trunc nsw i64 %i.fj to i32
  store i32 %i.fr, ptr %i.ek, align 4, !tbaa !20
  br label %._crit_edge.i.i.split.i

._crit_edge.i.i.split.i:                          ; preds = %.epil.preheader, %bb.ai, %bb.aj, %._crit_edge.i.i.split.i.unr-lcssa
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.fs = icmp slt i64 %indvars.iv.next.i.i.i, %i.cw
  br i1 %i.fs, label %.lr.ph35.i.i.i, label %compute_column_width.exit.i.i, !llvm.loop !29

compute_column_width.exit.i.i:                    ; preds = %._crit_edge.i.i.split.i, %._crit_edge.i.i.split.us.us.i
  %i.ft = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.s) #13
  %i.fu = trunc i64 %i.ft to i32                  ; 3 uses
  %i.fv = icmp sgt i32 %i.cj, 0
  br i1 %i.fv, label %.lr.ph.i24.i, label %._crit_edge.i.i

.lr.ph.i24.i:                                     ; preds = %compute_column_width.exit.i.i
  %wide.trip.count.i.i = and i64 %i.ci, 2147483647
  %i.fw = add nsw i64 %wide.trip.count.i.i, -1
  %xtraiter161 = and i64 %i.ci, 3                 ; 3 uses
  %i.fx = icmp ult i64 %i.fw, 3
  br i1 %i.fx, label %.epil.preheader160, label %.lr.ph.i24.i.new

.lr.ph.i24.i.new:                                 ; preds = %.lr.ph.i24.i
  %unroll_iter165 = and i64 %i.ci, 2147483644
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %.lr.ph.i24.i.new
  %indvars.iv.i25.i = phi i64 [ 0, %.lr.ph.i24.i.new ], [ %indvars.iv.next.i26.i.3, %bb.ak ] ; 5 uses
  %.03460.i.i = phi i32 [ %i.fu, %.lr.ph.i24.i.new ], [ %i.hc, %bb.ak ]
  %niter166 = phi i64 [ 0, %.lr.ph.i24.i.new ], [ %niter166.next.3, %bb.ak ]
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv.i25.i
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !20
  %i.ga = sext i32 %i.fz to i64
  %i.gb = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.ga
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !20
  %i.gd = add i32 %.03460.i.i, %.sroa.5.1
  %i.ge = add i32 %i.gd, %i.gc
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv.i25.i
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 4
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !20
  %i.gi = sext i32 %i.gh to i64
  %i.gj = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.gi
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !20
  %i.gl = add i32 %i.ge, %.sroa.5.1
  %i.gm = add i32 %i.gl, %i.gk
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv.i25.i
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !20
  %i.gq = sext i32 %i.gp to i64
  %i.gr = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.gq
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !20
  %i.gt = add i32 %i.gm, %.sroa.5.1
  %i.gu = add i32 %i.gt, %i.gs
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv.i25.i
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 12
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !20
  %i.gy = sext i32 %i.gx to i64
  %i.gz = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.gy
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !20
  %i.hb = add i32 %i.gu, %.sroa.5.1
  %i.hc = add i32 %i.hb, %i.ha                    ; 3 uses
  %indvars.iv.next.i26.i.3 = add nuw nsw i64 %indvars.iv.i25.i, 4 ; 2 uses
  %niter166.next.3 = add i64 %niter166, 4         ; 2 uses
  %niter166.ncmp.3 = icmp eq i64 %niter166.next.3, %unroll_iter165
  br i1 %niter166.ncmp.3, label %._crit_edge.i.i.loopexit.unr-lcssa, label %bb.ak, !llvm.loop !30

._crit_edge.i.i.loopexit.unr-lcssa:               ; preds = %bb.ak
  %lcmp.mod162.not = icmp eq i64 %xtraiter161, 0
  br i1 %lcmp.mod162.not, label %._crit_edge.i.i, label %.epil.preheader160

.epil.preheader160:                               ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %.lr.ph.i24.i
  %indvars.iv.i25.i.epil.init = phi i64 [ 0, %.lr.ph.i24.i ], [ %indvars.iv.next.i26.i.3, %._crit_edge.i.i.loopexit.unr-lcssa ]
  %.03460.i.i.epil.init = phi i32 [ %i.fu, %.lr.ph.i24.i ], [ %i.hc, %._crit_edge.i.i.loopexit.unr-lcssa ]
  %lcmp.mod164 = icmp ne i64 %xtraiter161, 0
  tail call void @llvm.assume(i1 %lcmp.mod164)
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %.epil.preheader160
  %indvars.iv.i25.i.epil = phi i64 [ %indvars.iv.i25.i.epil.init, %.epil.preheader160 ], [ %indvars.iv.next.i26.i.epil, %bb.al ] ; 2 uses
  %.03460.i.i.epil = phi i32 [ %.03460.i.i.epil.init, %.epil.preheader160 ], [ %i.hj, %bb.al ]
  %epil.iter = phi i64 [ 0, %.epil.preheader160 ], [ %epil.iter.next, %bb.al ]
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv.i25.i.epil
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !20
  %i.hf = sext i32 %i.he to i64
  %i.hg = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.hf
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !20
  %i.hi = add i32 %.03460.i.i.epil, %.sroa.5.1
  %i.hj = add i32 %i.hi, %i.hh                    ; 2 uses
  %indvars.iv.next.i26.i.epil = add nuw nsw i64 %indvars.iv.i25.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter161
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i, label %bb.al, !llvm.loop !31

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %bb.al, %compute_column_width.exit.i.i, %compute_column_width.exit.thread.i.i
  %i.hk = phi ptr [ %i.cq, %compute_column_width.exit.i.i ], [ %i.cq, %compute_column_width.exit.thread.i.i ], [ %i.co, %bb.al ], [ %i.co, %._crit_edge.i.i.loopexit.unr-lcssa ]
  %i.hl = phi ptr [ %i.cq, %compute_column_width.exit.i.i ], [ %i.cr, %compute_column_width.exit.thread.i.i ], [ %i.co, %bb.al ], [ %i.co, %._crit_edge.i.i.loopexit.unr-lcssa ]
  %.034.lcssa.i.i = phi i32 [ %i.fu, %compute_column_width.exit.i.i ], [ %i.ei, %compute_column_width.exit.thread.i.i ], [ %i.hc, %._crit_edge.i.i.loopexit.unr-lcssa ], [ %i.hj, %bb.al ]
  %i.hm = icmp sgt i32 %.034.lcssa.i.i, %i.t
  br i1 %i.hm, label %.thread.i.i, label %bb.q

.thread.i.i:                                      ; preds = %bb.q, %._crit_edge.i.i, %st_mult.exit.i.i
  %indvars.iv143.i.lcssa = phi i64 [ %i.bx, %st_mult.exit.i.i ], [ %indvars.iv.next144.i, %bb.q ], [ %indvars.iv143.i114, %._crit_edge.i.i ] ; 11 uses
  %.sroa.40.1.i.lcssa = phi i32 [ %spec.select.i.i, %st_mult.exit.i.i ], [ %i.cj, %bb.q ], [ %.sroa.40.1.i115, %._crit_edge.i.i ] ; 8 uses
  %.sroa.62.2.i = phi ptr [ %i.bv, %st_mult.exit.i.i ], [ %.sroa.62.3.i, %._crit_edge.i.i ], [ %.sroa.62.3.i, %bb.q ] ; 5 uses
  %i.hn = phi ptr [ %i.bv, %st_mult.exit.i.i ], [ %i.co, %._crit_edge.i.i ], [ %i.co, %bb.q ] ; 4 uses
  %i.ho = trunc nsw i64 %indvars.iv143.i.lcssa to i32 ; 6 uses
  %i.hp = icmp sgt i32 %.sroa.40.1.i.lcssa, 0
  br i1 %i.hp, label %.lr.ph35.i39.i.preheader.i, label %shrink_columns.exit.i

.lr.ph35.i39.i.preheader.i:                       ; preds = %.thread.i.i
  %i.hq = select i1 %i.bw, i32 %i.ho, i32 1       ; 4 uses
  %i.hr = icmp sgt i64 %indvars.iv143.i.lcssa, 0
  %i.hs = zext nneg i32 %.sroa.40.1.i.lcssa to i64 ; 8 uses
  br i1 %i.hr, label %.lr.ph35.i39.i.preheader.split.us.i, label %.lr.ph35.i39.i.i.preheader

.lr.ph35.i39.i.i.preheader:                       ; preds = %.lr.ph35.i39.i.preheader.i
  %min.iters.check127 = icmp ult i32 %.sroa.40.1.i.lcssa, 8
  br i1 %min.iters.check127, label %.lr.ph35.i39.i.i.preheader140, label %vector.ph128

vector.ph128:                                     ; preds = %.lr.ph35.i39.i.i.preheader
  %n.vec129 = and i64 %i.hs, 2147483640           ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.hq, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body130

vector.body130:                                   ; preds = %vector.body130, %vector.ph128
  %index131 = phi i64 [ 0, %vector.ph128 ], [ %index.next132, %vector.body130 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph128 ], [ %vec.ind.next, %vector.body130 ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.ht = mul nsw <4 x i32> %broadcast.splat, %vec.ind
  %i.hu = mul nsw <4 x i32> %broadcast.splat, %step.add
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %index131 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 16
  store <4 x i32> %i.ht, ptr %i.hv, align 4, !tbaa !20
  store <4 x i32> %i.hu, ptr %i.hw, align 4, !tbaa !20
  %index.next132 = add nuw i64 %index131, 8       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.hx = icmp eq i64 %index.next132, %n.vec129
  br i1 %i.hx, label %middle.block133, label %vector.body130, !llvm.loop !32

middle.block133:                                  ; preds = %vector.body130
  %cmp.n134 = icmp eq i64 %n.vec129, %i.hs
  br i1 %cmp.n134, label %shrink_columns.exit.i, label %.lr.ph35.i39.i.i.preheader140

.lr.ph35.i39.i.i.preheader140:                    ; preds = %.lr.ph35.i39.i.i.preheader, %middle.block133
  %indvars.iv.i40.i.i.ph = phi i64 [ 0, %.lr.ph35.i39.i.i.preheader ], [ %n.vec129, %middle.block133 ]
  br label %.lr.ph35.i39.i.i

.lr.ph35.i39.i.preheader.split.us.i:              ; preds = %.lr.ph35.i39.i.preheader.i
  %i.hy = load i64, ptr %i.d, align 8, !tbaa !41  ; 6 uses
  br i1 %i.bw, label %.lr.ph35.i39.i.us.us.i.preheader, label %.lr.ph35.i39.i.us.i.preheader

.lr.ph35.i39.i.us.i.preheader:                    ; preds = %.lr.ph35.i39.i.preheader.split.us.i
  %xtraiter168 = and i64 %indvars.iv143.i.lcssa, 1
  %i.hz = icmp eq i64 %indvars.iv143.i.lcssa, 1
  %unroll_iter174 = and i64 %indvars.iv143.i.lcssa, 9223372036854775806
  %lcmp.mod172.not = icmp eq i64 %xtraiter168, 0
  %lcmp.mod173 = trunc i64 %indvars.iv143.i.lcssa to i1
  br label %.lr.ph35.i39.i.us.i

.lr.ph35.i39.i.us.us.i.preheader:                 ; preds = %.lr.ph35.i39.i.preheader.split.us.i
  %i.ia = shl nuw nsw i64 %indvars.iv143.i.lcssa, 32
  %xtraiter177 = and i64 %indvars.iv143.i.lcssa, 1
  %i.ib = icmp eq i64 %indvars.iv143.i.lcssa, 1
  %unroll_iter183 = and i64 %indvars.iv143.i.lcssa, 9223372036854775806
  %lcmp.mod181.not = icmp eq i64 %xtraiter177, 0
  %lcmp.mod182 = trunc i64 %indvars.iv143.i.lcssa to i1
  br label %.lr.ph35.i39.i.us.us.i

.lr.ph35.i39.i.us.us.i:                           ; preds = %.lr.ph35.i39.i.us.us.i.preheader, %._crit_edge.i41.i.loopexit.split.us.us.us.i
  %indvars.iv.i40.i.us.us.i = phi i64 [ %indvars.iv.next.i42.i.us.us.i, %._crit_edge.i41.i.loopexit.split.us.us.us.i ], [ 0, %.lr.ph35.i39.i.us.us.i.preheader ] ; 4 uses
  %i.ic = trunc nuw nsw i64 %indvars.iv.i40.i.us.us.i to i32
  %i.id = mul nsw i32 %i.hq, %i.ic                ; 3 uses
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %indvars.iv.i40.i.us.us.i ; 4 uses
  store i32 %i.id, ptr %i.ie, align 4, !tbaa !20
  %sext230.i = mul i64 %i.ia, %indvars.iv.i40.i.us.us.i
  %i.if = ashr exact i64 %sext230.i, 32           ; 3 uses
  br i1 %i.ib, label %.epil.preheader176, label %.lr.ph35.i39.i.us.us.i.new

.lr.ph35.i39.i.us.us.i.new:                       ; preds = %.lr.ph35.i39.i.us.us.i, %bb.ar
  %indvars.iv150.i = phi i64 [ %indvars.iv.next151.i.1, %bb.ar ], [ 0, %.lr.ph35.i39.i.us.us.i ] ; 3 uses
  %i.ig = phi i32 [ %i.ja, %bb.ar ], [ %i.id, %.lr.ph35.i39.i.us.us.i ] ; 3 uses
  %niter184 = phi i64 [ %niter184.next.1, %bb.ar ], [ 0, %.lr.ph35.i39.i.us.us.i ]
  %i.ih = add nsw i64 %indvars.iv150.i, %i.if     ; 3 uses
end_hunk_0
