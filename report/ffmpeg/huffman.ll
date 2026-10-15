Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/huffman?download=true
inline.NumInlined: 4
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@ff_huff_build_tree:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !17
  %i.l = zext i32 %i.k to i64
  %i.m = add nuw nsw i64 %.0185223, %i.l
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.n = trunc i64 %indvars.iv.next to i16
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next ; 3 uses
  store i16 %i.n, ptr %i.o, align 4, !tbaa !15
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  store i16 -2, ptr %i.p, align 2, !tbaa !16
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !17
  %i.s = zext i32 %i.r to i64
  %i.t = add nuw nsw i64 %i.m, %i.s
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.u = trunc i64 %indvars.iv.next.1 to i16
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next.1 ; 3 uses
  store i16 %i.u, ptr %i.v, align 4, !tbaa !15
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  store i16 -2, ptr %i.w, align 2, !tbaa !16
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !17
  %i.z = zext i32 %i.y to i64
  %i.aa = add nuw nsw i64 %i.t, %i.z
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.ab = trunc i64 %indvars.iv.next.2 to i16
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next.2 ; 3 uses
  store i16 %i.ab, ptr %i.ac, align 4, !tbaa !15
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 2
  store i16 -2, ptr %i.ad, align 2, !tbaa !16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !17
  %i.ag = zext i32 %i.af to i64
  %i.ah = add nuw nsw i64 %i.aa, %i.ag            ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !42

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  %.0185223.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ah, %._crit_edge.unr-lcssa ]
  %lcmp.mod354 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod354)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 3 uses
  %.0185223.epil = phi i64 [ %.0185223.epil.init, %.lr.ph.epil.preheader ], [ %i.ao, %.lr.ph.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.ai = trunc i64 %indvars.iv.epil to i16
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.epil ; 3 uses
  store i16 %i.ai, ptr %i.aj, align 4, !tbaa !15
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  store i16 -2, ptr %i.ak, align 2, !tbaa !16
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !17
  %i.an = zext i32 %i.am to i64
  %i.ao = add nuw nsw i64 %.0185223.epil, %i.an   ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !43

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %.lcssa352 = phi i64 [ %i.ah, %._crit_edge.unr-lcssa ], [ %i.ao, %.lr.ph.epil ]
  %i.ap = icmp samesign ult i64 %.lcssa352, 2147483648
  br i1 %i.ap, label %._crit_edge.thread, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str) #6
  br label %bb.ac

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store ptr %4, ptr %i.d, align 16, !tbaa !52
  %i.aq = sext i32 %2 to i64                      ; 3 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %4, i64 %i.aq
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -8
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.as, ptr %i.at, align 8, !tbaa !52
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread, %.thread
  %.0181244 = phi i32 [ 1, %._crit_edge.thread ], [ %.1182221, %.thread ] ; 2 uses
  %i.au = add nsw i32 %.0181244, -1               ; 2 uses
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.av ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 16, !tbaa !52 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !52 ; 2 uses
  %i.ba = icmp ult ptr %i.ax, %i.az
  br i1 %i.ba, label %.lr.ph239.preheader, label %.thread

.lr.ph239.preheader:                              ; preds = %bb.c
  %i.bb = sext i32 %.0181244 to i64
  %i.bc = add nsw i64 %i.bb, -1
  br label %.lr.ph239

.lr.ph239:                                        ; preds = %.lr.ph239.preheader, %bb.v
  %indvars.iv280 = phi i64 [ %i.bc, %.lr.ph239.preheader ], [ %indvars.iv.next281, %bb.v ] ; 6 uses
  %.0175237 = phi ptr [ %i.az, %.lr.ph239.preheader ], [ %.1176, %bb.v ] ; 17 uses
  %.0178236 = phi ptr [ %i.ax, %.lr.ph239.preheader ], [ %.1179, %bb.v ] ; 16 uses
  %i.bd = getelementptr inbounds i8, ptr %.0175237, i64 -8 ; 7 uses
  %i.be = icmp ult ptr %.0178236, %i.bd
  br i1 %i.be, label %bb.d, label %bb.w

bb.d:                                             ; preds = %.lr.ph239
  %i.bf = getelementptr inbounds i8, ptr %.0175237, i64 -16 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0178236, i64 8 ; 3 uses
  %i.bh = ptrtoint ptr %.0175237 to i64           ; 2 uses
  %i.bi = ptrtoint ptr %.0178236 to i64           ; 2 uses
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = ashr i64 %i.bj, 4
  %i.bl = getelementptr inbounds [8 x i8], ptr %.0178236, i64 %i.bk ; 13 uses
  %i.bm = tail call i32 %5(ptr noundef %.0178236, ptr noundef nonnull %.0175237) #6
  %i.bn = icmp sgt i32 %i.bm, 0
  br i1 %i.bn, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.bo = tail call i32 %5(ptr noundef nonnull %.0175237, ptr noundef %i.bl) #6
  %i.bp = icmp sgt i32 %i.bo, 0
  %i.bq = load i64, ptr %.0178236, align 4        ; 2 uses
  br i1 %i.bp, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.br = load i64, ptr %i.bl, align 4
  store i64 %i.bq, ptr %i.bl, align 4
  br label %.sink.split

bb.g:                                             ; preds = %bb.e
  %i.bs = load i64, ptr %.0175237, align 4
  store i64 %i.bq, ptr %.0175237, align 4
  br label %.sink.split

bb.h:                                             ; preds = %bb.d
  %i.bt = tail call i32 %5(ptr noundef %.0178236, ptr noundef %i.bl) #6
  %i.bu = icmp sgt i32 %i.bt, 0
  br i1 %i.bu, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bv = load i64, ptr %i.bl, align 4
  %i.bw = load i64, ptr %.0178236, align 4
  store i64 %i.bw, ptr %i.bl, align 4
  br label %.sink.split

.sink.split:                                      ; preds = %bb.g, %bb.f, %bb.i
  %.sink = phi i64 [ %i.bv, %bb.i ], [ %i.br, %bb.f ], [ %i.bs, %bb.g ]
  store i64 %.sink, ptr %.0178236, align 4
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.h
  %.0173 = phi i32 [ 1, %bb.h ], [ 0, %.sink.split ]
  %i.bx = tail call i32 %5(ptr noundef %i.bl, ptr noundef nonnull %.0175237) #6
  %i.by = icmp sgt i32 %i.bx, 0
  br i1 %i.by, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bz = load i64, ptr %.0175237, align 4
  %i.ca = load i64, ptr %i.bl, align 4
  store i64 %i.ca, ptr %.0175237, align 4
  store i64 %i.bz, ptr %i.bl, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.1174 = phi i32 [ 0, %bb.k ], [ %.0173, %bb.j ]
  %i.cb = icmp eq ptr %.0178236, %i.bf
  br i1 %i.cb, label %.thread.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cc = load i64, ptr %i.bl, align 4            ; 2 uses
  %i.cd = load i64, ptr %i.bd, align 4
  store i64 %i.cd, ptr %i.bl, align 4
  store i64 %i.cc, ptr %i.bd, align 4
  %.not199229 = icmp ugt ptr %i.bg, %i.bf
  br i1 %.not199229, label %._crit_edge232, label %.preheader

.preheader:                                       ; preds = %bb.m, %.critedge203
  %.0169231 = phi ptr [ %.2, %.critedge203 ], [ %i.bg, %bb.m ]
  %.0170230 = phi ptr [ %.2172, %.critedge203 ], [ %i.bf, %bb.m ] ; 4 uses
  br label %bb.n

bb.n:                                             ; preds = %.preheader, %bb.o
  %.1224 = phi ptr [ %.0169231, %.preheader ], [ %i.cg, %bb.o ] ; 3 uses
  %i.ce = tail call i32 %5(ptr noundef %.1224, ptr noundef nonnull %i.bd) #6
  %i.cf = icmp slt i32 %i.ce, 0
  br i1 %i.cf, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.cg = getelementptr inbounds nuw i8, ptr %.1224, i64 8 ; 3 uses
  %.not201 = icmp ugt ptr %i.cg, %.0170230
  br i1 %.not201, label %.critedge, label %bb.n, !llvm.loop !44

.critedge:                                        ; preds = %bb.o, %bb.n
  %.1.lcssa = phi ptr [ %i.cg, %bb.o ], [ %.1224, %bb.n ] ; 7 uses
  %.not202225 = icmp ugt ptr %.1.lcssa, %.0170230
  br i1 %.not202225, label %._crit_edge232.loopexit, label %.lr.ph227

.lr.ph227:                                        ; preds = %.critedge, %bb.p
  %.1171226 = phi ptr [ %i.cj, %bb.p ], [ %.0170230, %.critedge ] ; 5 uses
  %i.ch = tail call i32 %5(ptr noundef %.1171226, ptr noundef nonnull %i.bd) #6
  %i.ci = icmp sgt i32 %i.ch, 0
  br i1 %i.ci, label %bb.p, label %.critedge2

bb.p:                                             ; preds = %.lr.ph227
  %i.cj = getelementptr inbounds i8, ptr %.1171226, i64 -8 ; 3 uses
  %.not202 = icmp ugt ptr %.1.lcssa, %i.cj
  br i1 %.not202, label %.critedge203, label %.lr.ph227, !llvm.loop !45

.critedge2:                                       ; preds = %.lr.ph227
  %i.ck = load i64, ptr %.1171226, align 4
  %i.cl = load i64, ptr %.1.lcssa, align 4
  store i64 %i.cl, ptr %.1171226, align 4
  store i64 %i.ck, ptr %.1.lcssa, align 4
  %i.cm = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 8
  %i.cn = getelementptr inbounds i8, ptr %.1171226, i64 -8
  br label %.critedge203

.critedge203:                                     ; preds = %bb.p, %.critedge2
  %.2172 = phi ptr [ %i.cn, %.critedge2 ], [ %i.cj, %bb.p ] ; 3 uses
  %.2 = phi ptr [ %i.cm, %.critedge2 ], [ %.1.lcssa, %bb.p ] ; 3 uses
  %.not199 = icmp ugt ptr %.2, %.2172
  br i1 %.not199, label %._crit_edge232.loopexit, label %.preheader, !llvm.loop !46

._crit_edge232.loopexit:                          ; preds = %.critedge, %.critedge203
  %.2331 = phi ptr [ %.2, %.critedge203 ], [ %.1.lcssa, %.critedge ]
  %.2172330 = phi ptr [ %.2172, %.critedge203 ], [ %.0170230, %.critedge ]
  %.pre = load i64, ptr %i.bd, align 4
  br label %._crit_edge232

._crit_edge232:                                   ; preds = %._crit_edge232.loopexit, %bb.m
  %i.co = phi i64 [ %i.cc, %bb.m ], [ %.pre, %._crit_edge232.loopexit ]
  %.0170.lcssa = phi ptr [ %i.bf, %bb.m ], [ %.2172330, %._crit_edge232.loopexit ] ; 2 uses
  %.0169.lcssa = phi ptr [ %i.bg, %bb.m ], [ %.2331, %._crit_edge232.loopexit ] ; 7 uses
  %i.cp = load i64, ptr %.0169.lcssa, align 4
  store i64 %i.co, ptr %.0169.lcssa, align 4
  store i64 %i.cp, ptr %i.bd, align 4
  %.not200 = icmp eq i32 %.1174, 0
  br i1 %.not200, label %bb.s, label %bb.q

bb.q:                                             ; preds = %._crit_edge232
  %i.cq = getelementptr inbounds i8, ptr %.0169.lcssa, i64 -8
  %i.cr = icmp eq ptr %i.bl, %i.cq
  %i.cs = icmp eq ptr %i.bl, %.0169.lcssa
  %or.cond = or i1 %i.cs, %i.cr
  br i1 %or.cond, label %.preheader216, label %bb.s

.preheader216:                                    ; preds = %bb.q, %bb.r
  %.0 = phi ptr [ %i.cu, %bb.r ], [ %.0178236, %bb.q ] ; 4 uses
  %i.ct = icmp ult ptr %.0, %.0175237
  br i1 %i.ct, label %bb.r, label %.critedge4

bb.r:                                             ; preds = %.preheader216
  %i.cu = getelementptr inbounds nuw i8, ptr %.0, i64 8 ; 2 uses
  %i.cv = tail call i32 %5(ptr noundef %.0, ptr noundef nonnull %i.cu) #6
  %i.cw = icmp slt i32 %i.cv, 1
  br i1 %i.cw, label %.preheader216, label %.critedge4, !llvm.loop !47

.critedge4:                                       ; preds = %.preheader216, %bb.r
  %i.cx = icmp eq ptr %.0, %.0175237
  br i1 %i.cx, label %.thread.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.q, %.critedge4, %._crit_edge232
  %i.cy = ptrtoint ptr %.0169.lcssa to i64        ; 2 uses
  %i.cz = sub i64 %i.bh, %i.cy
  %i.da = sub i64 %i.cy, %i.bi
  %i.db = icmp slt i64 %i.cz, %i.da
  br i1 %i.db, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dc = getelementptr inbounds [16 x i8], ptr %i.d, i64 %indvars.iv280 ; 2 uses
  store ptr %.0178236, ptr %i.dc, align 16, !tbaa !52
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store ptr %.0170.lcssa, ptr %i.dd, align 8, !tbaa !52
  %i.de = getelementptr inbounds nuw i8, ptr %.0169.lcssa, i64 8
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.df = getelementptr inbounds nuw i8, ptr %.0169.lcssa, i64 8
  %i.dg = getelementptr inbounds [16 x i8], ptr %i.d, i64 %indvars.iv280 ; 2 uses
  store ptr %i.df, ptr %i.dg, align 16, !tbaa !52
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store ptr %.0175237, ptr %i.dh, align 8, !tbaa !52
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %.1179 = phi ptr [ %i.de, %bb.t ], [ %.0178236, %bb.u ] ; 2 uses
  %.1176 = phi ptr [ %.0175237, %bb.t ], [ %.0170.lcssa, %bb.u ] ; 2 uses
  %indvars.iv.next281 = add nsw i64 %indvars.iv280, 1 ; 2 uses
  %i.di = icmp ult ptr %.1179, %.1176
  br i1 %i.di, label %.lr.ph239, label %.thread.loopexit

bb.w:                                             ; preds = %.lr.ph239
  %i.dj = trunc nsw i64 %indvars.iv280 to i32     ; 2 uses
  %i.dk = tail call i32 %5(ptr noundef %.0178236, ptr noundef nonnull %.0175237) #6
  %i.dl = icmp sgt i32 %i.dk, 0
  br i1 %i.dl, label %bb.x, label %.thread

bb.x:                                             ; preds = %bb.w
  %i.dm = load i64, ptr %.0175237, align 4
  %i.dn = load i64, ptr %.0178236, align 4
  store i64 %i.dn, ptr %.0175237, align 4
  store i64 %i.dm, ptr %.0178236, align 4
  br label %.thread

.thread.loopexit:                                 ; preds = %.critedge4, %bb.l, %bb.v
  %.1182221.ph.in = phi i64 [ %indvars.iv280, %.critedge4 ], [ %indvars.iv280, %bb.l ], [ %indvars.iv.next281, %bb.v ]
  %.1182221.ph = trunc i64 %.1182221.ph.in to i32
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.c, %bb.w, %bb.x
  %.1182221 = phi i32 [ %i.dj, %bb.x ], [ %i.dj, %bb.w ], [ %i.au, %bb.c ], [ %.1182221.ph, %.thread.loopexit ] ; 2 uses
  %.not197 = icmp eq i32 %.1182221, 0
  br i1 %.not197, label %bb.y, label %bb.c, !llvm.loop !48

bb.y:                                             ; preds = %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  %i.do = shl nsw i32 %2, 1                       ; 2 uses
  %i.dp = add nsw i32 %i.do, -1
  %i.dq = sext i32 %i.dp to i64                   ; 3 uses
  %i.dr = getelementptr inbounds [8 x i8], ptr %4, i64 %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  store i32 0, ptr %i.ds, align 4, !tbaa !17
  br i1 %i.e, label %.lr.ph264, label %._crit_edge265

.lr.ph264:                                        ; preds = %bb.y
  %i.dt = and i32 %6, 1
  %.not198 = icmp eq i32 %i.dt, 0
  br i1 %.not198, label %.lr.ph264.split.us, label %.lr.ph264.split

.lr.ph264.split.us:                               ; preds = %.lr.ph264, %._crit_edge254.split.us268
  %indvars.iv305 = phi i64 [ %indvars.iv.next306, %._crit_edge254.split.us268 ], [ 0, %.lr.ph264 ] ; 3 uses
  %indvars.iv301 = phi i32 [ %indvars.iv.next302, %._crit_edge254.split.us268 ], [ 2, %.lr.ph264 ] ; 2 uses
  %indvars.iv297 = phi i64 [ %indvars.iv.next298, %._crit_edge254.split.us268 ], [ %i.aq, %.lr.ph264 ] ; 3 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv305 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 4
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !17
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 12
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !17
  %i.dz = add i32 %i.dy, %i.dw                    ; 2 uses
  %indvars.iv.next306 = add nuw nsw i64 %indvars.iv305, 2 ; 4 uses
  %i.ea = shl i64 %indvars.iv297, 32
  %i.eb = ashr exact i64 %i.ea, 32                ; 2 uses
  %i.ec = icmp sgt i64 %i.eb, %indvars.iv.next306
  br i1 %i.ec, label %.lr.ph247.us, label %._crit_edge254.split.us268

.lr.ph247.us:                                     ; preds = %.lr.ph264.split.us, %bb.z
  %indvars.iv299 = phi i64 [ %indvars.iv.next300, %bb.z ], [ %indvars.iv297, %.lr.ph264.split.us ] ; 3 uses
  %i.ed = getelementptr [8 x i8], ptr %4, i64 %indvars.iv299 ; 3 uses
  %i.ee = getelementptr i8, ptr %i.ed, i64 -4
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !17
  %or.cond272.not = icmp ult i32 %i.dz, %i.ef
  br i1 %or.cond272.not, label %bb.z, label %._crit_edge254.split.us268

bb.z:                                             ; preds = %.lr.ph247.us
  %i.eg = getelementptr i8, ptr %i.ed, i64 -8
  %i.eh = load i64, ptr %i.eg, align 4
  store i64 %i.eh, ptr %i.ed, align 4
  %indvars.iv.next300 = add nsw i64 %indvars.iv299, -1 ; 2 uses
  %i.ei = icmp sgt i64 %indvars.iv.next300, %indvars.iv.next306
  br i1 %i.ei, label %.lr.ph247.us, label %._crit_edge254.split.us268.loopexit.loopexit, !llvm.loop !49

._crit_edge254.split.us268.loopexit.loopexit:     ; preds = %bb.z
  %i.ej = sext i32 %indvars.iv301 to i64
  br label %._crit_edge254.split.us268

._crit_edge254.split.us268:                       ; preds = %.lr.ph247.us, %._crit_edge254.split.us268.loopexit.loopexit, %.lr.ph264.split.us
  %.pre-phi = phi i64 [ %i.eb, %.lr.ph264.split.us ], [ %i.ej, %._crit_edge254.split.us268.loopexit.loopexit ], [ %indvars.iv299, %.lr.ph247.us ]
  %i.ek = getelementptr inbounds [8 x i8], ptr %4, i64 %.pre-phi ; 3 uses
  store i16 -1, ptr %i.ek, align 4, !tbaa !15
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 4
  store i32 %i.dz, ptr %i.el, align 4, !tbaa !17
  %i.em = trunc i64 %indvars.iv305 to i16
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 2
  store i16 %i.em, ptr %i.en, align 2, !tbaa !16
  %indvars.iv.next298 = add nuw nsw i64 %indvars.iv297, 1
  %i.eo = icmp slt i64 %indvars.iv.next306, %i.dq
  %indvars.iv.next302 = add nuw i32 %indvars.iv301, 2
  br i1 %i.eo, label %.lr.ph264.split.us, label %._crit_edge265, !llvm.loop !50

.lr.ph264.split:                                  ; preds = %.lr.ph264, %._crit_edge251.split.us
  %indvars.iv291 = phi i64 [ %indvars.iv.next292, %._crit_edge251.split.us ], [ 0, %.lr.ph264 ] ; 3 uses
  %indvars.iv287 = phi i32 [ %indvars.iv.next288, %._crit_edge251.split.us ], [ 2, %.lr.ph264 ] ; 2 uses
  %indvars.iv283 = phi i64 [ %indvars.iv.next284, %._crit_edge251.split.us ], [ %i.aq, %.lr.ph264 ] ; 3 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv291 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !17
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 12
  %i.et = load i32, ptr %i.es, align 4, !tbaa !17
  %i.eu = add i32 %i.et, %i.er                    ; 2 uses
  %indvars.iv.next292 = add nuw nsw i64 %indvars.iv291, 2 ; 4 uses
  %i.ev = shl i64 %indvars.iv283, 32
  %i.ew = ashr exact i64 %i.ev, 32                ; 2 uses
  %i.ex = icmp sgt i64 %i.ew, %indvars.iv.next292
  br i1 %i.ex, label %.lr.ph247, label %._crit_edge251.split.us

.lr.ph247:                                        ; preds = %.lr.ph264.split, %bb.aa
  %indvars.iv285 = phi i64 [ %indvars.iv.next286, %bb.aa ], [ %indvars.iv283, %.lr.ph264.split ] ; 3 uses
  %i.ey = getelementptr [8 x i8], ptr %4, i64 %indvars.iv285 ; 3 uses
  %i.ez = getelementptr i8, ptr %i.ey, i64 -4
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !17
  %i.fb = icmp ugt i32 %i.eu, %i.fa
  br i1 %i.fb, label %._crit_edge251.split.us, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph247
  %i.fc = getelementptr i8, ptr %i.ey, i64 -8
  %i.fd = load i64, ptr %i.fc, align 4
  store i64 %i.fd, ptr %i.ey, align 4
  %indvars.iv.next286 = add nsw i64 %indvars.iv285, -1 ; 2 uses
  %i.fe = icmp sgt i64 %indvars.iv.next286, %indvars.iv.next292
  br i1 %i.fe, label %.lr.ph247, label %._crit_edge251.split.us.loopexit.loopexit, !llvm.loop !49

._crit_edge251.split.us.loopexit.loopexit:        ; preds = %bb.aa
  %i.ff = sext i32 %indvars.iv287 to i64
  br label %._crit_edge251.split.us

._crit_edge251.split.us:                          ; preds = %.lr.ph247, %._crit_edge251.split.us.loopexit.loopexit, %.lr.ph264.split
  %.pre-phi313 = phi i64 [ %i.ew, %.lr.ph264.split ], [ %i.ff, %._crit_edge251.split.us.loopexit.loopexit ], [ %indvars.iv285, %.lr.ph247 ]
  %i.fg = getelementptr inbounds [8 x i8], ptr %4, i64 %.pre-phi313 ; 3 uses
  store i16 -1, ptr %i.fg, align 4, !tbaa !15
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 4
  store i32 %i.eu, ptr %i.fh, align 4, !tbaa !17
  %i.fi = trunc i64 %indvars.iv291 to i16
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 2
  store i16 %i.fi, ptr %i.fj, align 2, !tbaa !16
  %indvars.iv.next284 = add nuw nsw i64 %indvars.iv283, 1
  %i.fk = icmp slt i64 %indvars.iv.next292, %i.dq
  %indvars.iv.next288 = add nuw i32 %indvars.iv287, 2
  br i1 %i.fk, label %.lr.ph264.split, label %._crit_edge265, !llvm.loop !50

._crit_edge265:                                   ; preds = %._crit_edge251.split.us, %._crit_edge254.split.us268, %bb.y
  %i.fl = add nsw i32 %i.do, -2
  %i.fm = lshr i32 %6, 1
  %.lobit.i = and i32 %i.fm, 1
end_hunk_0
