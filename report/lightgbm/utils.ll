Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/utils?download=true
inline.NumInlined: 18
inline.NumDeleted: 11
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@ArrowDecimalAppendDigitsToBuffer:bb.a
  br label %bb.x

bb.g:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !29
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ac
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !9
  %i.af = icmp slt i64 %i.ae, 0                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !21
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.h, label %.preheader134

.preheader134:                                    ; preds = %bb.g
  %i.aj = icmp sgt i32 %i.d, 0
  br i1 %i.aj, label %.lr.ph.preheader, label %.loopexit135..loopexit133_crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader134
  %i.ak = zext nneg i32 %i.d to i64
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 3 uses
  %i.al = getelementptr [8 x i8], ptr %0, i64 %i.ak ; 2 uses
  %min.iters.check = icmp ult i32 %i.d, 4
  br i1 %min.iters.check, label %.lr.ph.preheader191, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.am = xor i64 %index, -1
  %i.an = getelementptr [8 x i8], ptr %i.al, i64 %i.am ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 -8
  %i.ap = getelementptr i8, ptr %i.an, i64 -24
  %wide.load = load <2 x i64>, ptr %i.ao, align 8, !tbaa !9
  %wide.load187 = load <2 x i64>, ptr %i.ap, align 8, !tbaa !9
  %reverse = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse188 = shufflevector <2 x i64> %wide.load187, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store <2 x i64> %reverse, ptr %i.aq, align 16, !tbaa !9
  store <2 x i64> %reverse188, ptr %i.ar, align 16, !tbaa !9
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !30

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit135, label %.lr.ph.preheader191

.lr.ph.preheader191:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

bb.h:                                             ; preds = %bb.g
  %i.at = sext i32 %i.d to i64
  %i.au = shl nsw i64 %i.at, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 8 %0, i64 %i.au, i1 false)
  br label %.loopexit135

.lr.ph:                                           ; preds = %.lr.ph.preheader191, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader191 ] ; 3 uses
  %i.av = xor i64 %indvars.iv, -1
  %i.aw = getelementptr [8 x i8], ptr %i.al, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !9
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit135, label %.lr.ph, !llvm.loop !33

.loopexit135:                                     ; preds = %.lr.ph, %middle.block, %bb.h
  %i.az = icmp sgt i32 %i.d, 0
  %or.cond = and i1 %i.af, %i.az
  br i1 %or.cond, label %.lr.ph141.preheader, label %.loopexit135..loopexit133_crit_edge

.loopexit135..loopexit133_crit_edge:              ; preds = %.preheader134, %.loopexit135
  %.pre171 = zext i32 %i.d to i64
  br label %.loopexit133

.lr.ph141.preheader:                              ; preds = %.loopexit135
  %wide.trip.count150 = zext nneg i32 %i.d to i64 ; 4 uses
  %xtraiter = and i64 %wide.trip.count150, 1
  %i.ba = icmp eq i32 %i.d, 1
  br i1 %i.ba, label %.lr.ph141.epil.preheader, label %.lr.ph141.preheader.new

.lr.ph141.preheader.new:                          ; preds = %.lr.ph141.preheader
  %unroll_iter = and i64 %wide.trip.count150, 2147483646
  br label %.lr.ph141

.lr.ph141:                                        ; preds = %.lr.ph141, %.lr.ph141.preheader.new
  %indvars.iv147 = phi i64 [ 0, %.lr.ph141.preheader.new ], [ %indvars.iv.next148.1, %.lr.ph141 ] ; 3 uses
  %.0101140 = phi i64 [ 1, %.lr.ph141.preheader.new ], [ %i.bn, %.lr.ph141 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph141.preheader.new ], [ %niter.next.1, %.lr.ph141 ]
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv147 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 16, !tbaa !9
  %i.bd = xor i64 %i.bc, -1
  %i.be = add i64 %.0101140, %i.bd                ; 2 uses
  %i.bf = icmp eq i64 %i.be, 0
  %i.bg = select i1 %i.bf, i64 %.0101140, i64 0   ; 2 uses
  store i64 %i.be, ptr %i.bb, align 16, !tbaa !9
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv147
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !9
  %i.bk = xor i64 %i.bj, -1
  %i.bl = add i64 %i.bg, %i.bk                    ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 0
  %i.bn = select i1 %i.bm, i64 %i.bg, i64 0       ; 2 uses
  store i64 %i.bl, ptr %i.bi, align 8, !tbaa !9
  %indvars.iv.next148.1 = add nuw nsw i64 %indvars.iv147, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit133.loopexit.unr-lcssa, label %.lr.ph141

.loopexit133.loopexit.unr-lcssa:                  ; preds = %.lr.ph141
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit133, label %.lr.ph141.epil.preheader

.lr.ph141.epil.preheader:                         ; preds = %.loopexit133.loopexit.unr-lcssa, %.lr.ph141.preheader
  %indvars.iv147.epil.init = phi i64 [ 0, %.lr.ph141.preheader ], [ %indvars.iv.next148.1, %.loopexit133.loopexit.unr-lcssa ]
  %.0101140.epil.init = phi i64 [ 1, %.lr.ph141.preheader ], [ %i.bn, %.loopexit133.loopexit.unr-lcssa ]
  %lcmp.mod192 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod192)
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv147.epil.init ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !9
  %i.bq = xor i64 %i.bp, -1
  %i.br = add i64 %.0101140.epil.init, %i.bq
  store i64 %i.br, ptr %i.bo, align 8, !tbaa !9
  br label %.loopexit133

.loopexit133:                                     ; preds = %.lr.ph141.epil.preheader, %.loopexit133.loopexit.unr-lcssa, %.loopexit135..loopexit133_crit_edge
  %.pre-phi = phi i64 [ %.pre171, %.loopexit135..loopexit133_crit_edge ], [ %wide.trip.count150, %.loopexit133.loopexit.unr-lcssa ], [ %wide.trip.count150, %.lr.ph141.epil.preheader ] ; 2 uses
  %i.bs = trunc nuw i64 %.pre-phi to i32
  %i.bt = icmp sgt i32 %i.bs, 0
  br i1 %i.bt, label %.lr.ph186, label %._crit_edge

bb.i:                                             ; preds = %.lr.ph186
  %i.bu = trunc nuw i64 %i.bw to i32
  %i.bv = icmp sgt i32 %i.bu, 0
  br i1 %i.bv, label %.lr.ph186, label %._crit_edge

.lr.ph186:                                        ; preds = %.loopexit133, %bb.i
  %indvars.iv152185 = phi i64 [ %i.bw, %bb.i ], [ %.pre-phi, %.loopexit133 ]
  %i.bw = add nsw i64 %indvars.iv152185, -1       ; 4 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bw
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !9
  %.not = icmp eq i64 %i.by, 0
  br i1 %.not, label %bb.i, label %bb.m

._crit_edge:                                      ; preds = %bb.i, %.loopexit133
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !22 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !25 ; 3 uses
  %.not.i.not.i.i = icmp slt i64 %i.ca, %i.cc
  %.pre.i.i = load ptr, ptr %1, align 8, !tbaa !26 ; 2 uses
  br i1 %.not.i.not.i.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.cd = add nsw i64 %i.ca, 1
  %i.ce = shl nsw i64 %i.cc, 1
  %..i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.ce, i64 %i.cd) ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !27
  %i.ch = tail call ptr %i.cg(ptr noundef nonnull %i.cf, ptr noundef %.pre.i.i, i64 noundef %i.cc, i64 noundef %..i.i.i.i) #19, !inline_history !34 ; 3 uses
  store ptr %i.ch, ptr %1, align 8, !tbaa !26
  %i.ci = icmp eq ptr %i.ch, null
  %i.cj = icmp sgt i64 %..i.i.i.i, 0
  %or.cond.i.i.i = and i1 %i.cj, %i.ci
  br i1 %or.cond.i.i.i, label %ArrowBufferReserve.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i64 %..i.i.i.i, ptr %i.cb, align 8, !tbaa !25
  %.pre3.i.i = load i64, ptr %i.bz, align 8, !tbaa !22
  br label %bb.l

ArrowBufferReserve.exit.i.i:                      ; preds = %bb.j
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i8 0, i64 16, i1 false)
  br label %ArrowBufferAppendInt8.exit

bb.l:                                             ; preds = %bb.k, %._crit_edge
  %i.ck = phi i64 [ %i.ca, %._crit_edge ], [ %.pre3.i.i, %bb.k ]
  %i.cl = phi ptr [ %.pre.i.i, %._crit_edge ], [ %i.ch, %bb.k ]
  %i.cm = getelementptr inbounds i8, ptr %i.cl, i64 %i.ck
  store i8 48, ptr %i.cm, align 1
  %i.cn = load i64, ptr %i.bz, align 8, !tbaa !22
  %i.co = add nsw i64 %i.cn, 1
  store i64 %i.co, ptr %i.bz, align 8, !tbaa !22
  br label %ArrowBufferAppendInt8.exit

bb.m:                                             ; preds = %.lr.ph186
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(36) %i.b, i8 0, i64 36, i1 false)
  %i.cp = and i64 %i.bw, 4294967295
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.cp
  br label %.critedge.outer

.critedge.outer:                                  ; preds = %bb.p, %bb.m
  %.0104.ph = phi i32 [ %i.dh, %bb.p ], [ 0, %bb.m ] ; 2 uses
  %.0103.ph = phi ptr [ %i.di, %bb.p ], [ %i.cq, %bb.m ] ; 4 uses
  %i.cr = sext i32 %.0104.ph to i64
  br label %.critedge

.critedge:                                        ; preds = %.critedge.outer, %bb.o
  %indvars.iv159 = phi i32 [ %.0104.ph, %.critedge.outer ], [ %indvars.iv.next160, %bb.o ] ; 2 uses
  %indvars.iv156 = phi i64 [ %i.cr, %.critedge.outer ], [ %indvars.iv.next157, %bb.o ] ; 3 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.critedge
  %.0109 = phi i64 [ 0, %.critedge ], [ %i.da, %bb.n ]
  %.0108 = phi ptr [ %.0103.ph, %.critedge ], [ %i.dd, %bb.n ] ; 4 uses
  %i.cs = load i64, ptr %.0108, align 8, !tbaa !9 ; 2 uses
  %i.ct = call i64 @llvm.fshl.i64(i64 %.0109, i64 %i.cs, i64 32) ; 2 uses
  %i.cu = udiv i64 %i.ct, 1000000000
  %i.cv = urem i64 %i.ct, 1000000000
  %i.cw = shl nuw nsw i64 %i.cv, 32
  %i.cx = and i64 %i.cs, 4294967295
  %i.cy = or disjoint i64 %i.cw, %i.cx            ; 2 uses
  %i.cz = udiv i64 %i.cy, 1000000000
  %i.da = urem i64 %i.cy, 1000000000              ; 3 uses
  %i.db = shl nuw i64 %i.cu, 32
  %i.dc = or i64 %i.cz, %i.db
  store i64 %i.dc, ptr %.0108, align 8, !tbaa !9
  %i.dd = getelementptr inbounds i8, ptr %.0108, i64 -8
  %.not116 = icmp eq ptr %.0108, %i.a
  br i1 %.not116, label %bb.o, label %bb.n

bb.o:                                             ; preds = %bb.n
  %i.de = trunc nuw nsw i64 %i.da to i32
  %indvars.iv.next157 = add nsw i64 %indvars.iv156, 1 ; 3 uses
  %i.df = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv156
  store i32 %i.de, ptr %i.df, align 4, !tbaa !8
  %i.dg = load i64, ptr %.0103.ph, align 8, !tbaa !9
  %.not117 = icmp eq i64 %i.dg, 0
  %indvars.iv.next160 = add i32 %indvars.iv159, 1
  br i1 %.not117, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  %i.dh = trunc nsw i64 %indvars.iv.next157 to i32
  %i.di = getelementptr inbounds i8, ptr %.0103.ph, i64 -8
  %.not118 = icmp eq ptr %.0103.ph, %i.a
  br i1 %.not118, label %bb.q, label %.critedge.outer

bb.q:                                             ; preds = %bb.p
  %i.dj = mul i64 %indvars.iv.next157, 38654705664
  %sext = add i64 %i.dj, 55834574848
  %i.dk = ashr exact i64 %sext, 32
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !22 ; 2 uses
  %i.dn = add nsw i64 %i.dm, %i.dk                ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !25 ; 3 uses
  %.not.i123 = icmp sgt i64 %i.dn, %i.dp
  %.pre164.pre = load ptr, ptr %1, align 8, !tbaa !26 ; 2 uses
  br i1 %.not.i123, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.dq = shl nsw i64 %i.dp, 1
  %..i.i125 = call i64 @llvm.smax.i64(i64 %i.dq, i64 %i.dn) ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !27
  %i.dt = call ptr %i.ds(ptr noundef nonnull %i.dr, ptr noundef %.pre164.pre, i64 noundef %i.dp, i64 noundef %..i.i125) #19, !inline_history !28 ; 3 uses
  store ptr %i.dt, ptr %1, align 8, !tbaa !26
  %i.du = icmp eq ptr %i.dt, null
  %i.dv = icmp sgt i64 %..i.i125, 0
  %or.cond.i126 = and i1 %i.dv, %i.du
  br i1 %or.cond.i126, label %ArrowBufferReserve.exit127, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i64 %..i.i125, ptr %i.do, align 8, !tbaa !25
  %.pre166.pre = load i64, ptr %i.dl, align 8, !tbaa !22
  br label %bb.t

ArrowBufferReserve.exit127:                       ; preds = %bb.r
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dl, i8 0, i64 16, i1 false)
  br label %.loopexit

bb.t:                                             ; preds = %bb.q, %bb.s
  %.pre166 = phi i64 [ %i.dm, %bb.q ], [ %.pre166.pre, %bb.s ] ; 3 uses
  %.pre164 = phi ptr [ %.pre164.pre, %bb.q ], [ %i.dt, %bb.s ] ; 2 uses
  br i1 %i.af, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dw = add nsw i64 %.pre166, 1
  store i64 %i.dw, ptr %i.dl, align 8, !tbaa !22
  %i.dx = getelementptr inbounds i8, ptr %.pre164, i64 %.pre166
  store i8 45, ptr %i.dx, align 1, !tbaa !18
  %.pre = load ptr, ptr %1, align 8, !tbaa !26
  %.pre165 = load i64, ptr %i.dl, align 8, !tbaa !22
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.dy = phi i64 [ %.pre165, %bb.u ], [ %.pre166, %bb.t ]
  %i.dz = phi ptr [ %.pre, %bb.u ], [ %.pre164, %bb.t ]
  %i.ea = getelementptr inbounds i8, ptr %i.dz, i64 %i.dy
  %i.eb = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ea, i64 noundef 21, ptr noundef nonnull @.str.2, i64 noundef %i.da) #19 ; 2 uses
  %i.ec = icmp slt i32 %i.eb, 0
  br i1 %i.ec, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ed = zext nneg i32 %i.eb to i64
  %i.ee = load i64, ptr %i.dl, align 8, !tbaa !22
  %i.ef = add nsw i64 %i.ee, %i.ed                ; 2 uses
  store i64 %i.ef, ptr %i.dl, align 8, !tbaa !22
  %i.eg = icmp sgt i64 %indvars.iv156, 0
  br i1 %i.eg, label %.lr.ph144.preheader, label %.loopexit

.lr.ph144.preheader:                              ; preds = %bb.w
  %i.eh = zext i32 %indvars.iv159 to i64
  br label %.lr.ph144

.lr.ph144:                                        ; preds = %.lr.ph144.preheader, %.lr.ph144
  %indvars.iv161 = phi i64 [ %i.eh, %.lr.ph144.preheader ], [ %indvars.iv.next162, %.lr.ph144 ] ; 2 uses
  %storemerge142 = phi i64 [ %i.ef, %.lr.ph144.preheader ], [ %i.eq, %.lr.ph144 ]
  %indvars.iv.next162 = add nsw i64 %indvars.iv161, -1 ; 2 uses
  %i.ei = load ptr, ptr %1, align 8, !tbaa !26
  %i.ej = getelementptr inbounds i8, ptr %i.ei, i64 %storemerge142
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next162
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !8
  %i.em = zext i32 %i.el to i64
  %i.en = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ej, i64 noundef 21, ptr noundef nonnull @.str.3, i64 noundef %i.em) #19
  %i.eo = sext i32 %i.en to i64
  %i.ep = load i64, ptr %i.dl, align 8, !tbaa !22
  %i.eq = add nsw i64 %i.ep, %i.eo                ; 2 uses
  store i64 %i.eq, ptr %i.dl, align 8, !tbaa !22
  %i.er = icmp samesign ugt i64 %indvars.iv161, 1
  br i1 %i.er, label %.lr.ph144, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph144, %bb.w, %ArrowBufferReserve.exit127, %bb.v
  %.6 = phi i32 [ 12, %ArrowBufferReserve.exit127 ], [ 34, %bb.v ], [ 0, %bb.w ], [ 0, %.lr.ph144 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %ArrowBufferAppendInt8.exit

ArrowBufferAppendInt8.exit:                       ; preds = %bb.l, %ArrowBufferReserve.exit.i.i, %.loopexit
  %.7 = phi i32 [ %.6, %.loopexit ], [ 0, %bb.l ], [ 12, %ArrowBufferReserve.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.x

bb.x:                                             ; preds = %ArrowBufferReserve.exit, %bb.e, %bb.f, %ArrowBufferAppendInt8.exit
  %.8 = phi i32 [ %.7, %ArrowBufferAppendInt8.exit ], [ 12, %ArrowBufferReserve.exit ], [ 0, %bb.f ], [ 22, %bb.e ]
  ret i32 %.8
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define range(i32 0, 35) i32 @ArrowDecimalAppendStringToBuffer(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 10 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !22
  %i.c = tail call i32 @ArrowDecimalAppendDigitsToBuffer(ptr noundef %0, ptr noundef %1) ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.a, align 8, !tbaa !22   ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !35   ; 5 uses
  %i.g = icmp slt i32 %i.f, 1
  br i1 %i.g, label %.preheader, label %bb.g

.preheader:                                       ; preds = %bb.b
  %i.h = icmp sgt i32 %i.f, -1
  br i1 %i.h, label %.critedge, label %.lr.ph100

.lr.ph100:                                        ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph100, %bb.f
  %i.k = phi i64 [ %i.d, %.lr.ph100 ], [ %i.w, %bb.f ] ; 3 uses
  %.06899 = phi i32 [ %i.f, %.lr.ph100 ], [ %i.x, %bb.f ]
  %i.l = load i64, ptr %i.i, align 8, !tbaa !25   ; 3 uses
  %.not.i.not.i.i = icmp slt i64 %i.k, %i.l
  %.pre.i.i = load ptr, ptr %1, align 8, !tbaa !26 ; 2 uses
  br i1 %.not.i.not.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = add nsw i64 %i.k, 1
  %i.n = shl nsw i64 %i.l, 1
  %..i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.n, i64 %i.m) ; 3 uses
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !27
  %i.p = tail call ptr %i.o(ptr noundef nonnull %i.j, ptr noundef %.pre.i.i, i64 noundef %i.l, i64 noundef %..i.i.i.i) #19, !inline_history !34 ; 3 uses
  store ptr %i.p, ptr %1, align 8, !tbaa !26
  %i.q = icmp eq ptr %i.p, null
  %i.r = icmp sgt i64 %..i.i.i.i, 0
  %or.cond.i.i.i = and i1 %i.r, %i.q
  br i1 %or.cond.i.i.i, label %ArrowBufferAppendInt8.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %..i.i.i.i, ptr %i.i, align 8, !tbaa !25
  %.pre3.i.i = load i64, ptr %i.a, align 8, !tbaa !22
  br label %bb.f

ArrowBufferAppendInt8.exit:                       ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br label %.critedge

bb.f:                                             ; preds = %bb.c, %bb.e
  %i.s = phi i64 [ %i.k, %bb.c ], [ %.pre3.i.i, %bb.e ]
  %i.t = phi ptr [ %.pre.i.i, %bb.c ], [ %i.p, %bb.e ]
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 %i.s
  store i8 48, ptr %i.u, align 1
  %i.v = load i64, ptr %i.a, align 8, !tbaa !22
  %i.w = add nsw i64 %i.v, 1                      ; 2 uses
  store i64 %i.w, ptr %i.a, align 8, !tbaa !22
  %i.x = add nsw i32 %.06899, 1                   ; 2 uses
  %exitcond = icmp eq i32 %i.x, 0
  br i1 %exitcond, label %.critedge, label %bb.c

bb.g:                                             ; preds = %bb.b
  %i.y = load ptr, ptr %1, align 8, !tbaa !26     ; 5 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !18
  %i.aa = icmp eq i8 %i.z, 45                     ; 2 uses
  %.neg101 = sext i1 %i.aa to i64
  %i.ab = zext i1 %i.aa to i64
  %.neg95 = sub i64 %i.d, %i.b
  %i.ac = add i64 %.neg95, %.neg101               ; 3 uses
  %i.ad = zext nneg i32 %i.f to i64               ; 2 uses
  %.not75 = icmp sgt i64 %i.ac, %i.ad
  br i1 %.not75, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = sub nsw i64 %i.ad, %i.ac                ; 4 uses
  %i.af = add nsw i64 %i.ae, %i.d                 ; 2 uses
  %i.ag = add nsw i64 %i.af, 2                    ; 5 uses
  %i.ah = icmp slt i64 %i.af, -2
  br i1 %i.ah, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !25 ; 2 uses
  %i.ak = icmp sgt i64 %i.ag, %i.aj
  br i1 %i.ak, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !27
  %i.an = tail call ptr %i.am(ptr noundef nonnull %i.al, ptr noundef nonnull %i.y, i64 noundef %i.aj, i64 noundef range(i64 -9223372036854775807, -9223372036854775808) %i.ag) #19, !inline_history !36 ; 3 uses
end_hunk_0
