Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/psd?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@decode_frame:bb.a
  %i.ae = load i16, ptr %i.ac, align 1, !tbaa !44 ; 2 uses
  %i.af = tail call i16 @llvm.bswap.i16(i16 %i.ae) ; 3 uses
  store i16 %i.af, ptr %i.e, align 8, !tbaa !45
  %i.ag = icmp eq i16 %i.ae, 0
  %i.ah = icmp ugt i16 %i.af, 56
  %or.cond.i311 = or i1 %i.ag, %i.ah
  br i1 %or.cond.i311, label %bb.f, label %bytestream2_get_be32.exit138.i

bb.f:                                             ; preds = %bytestream2_get_be16.exit123.i
  %i.ai = zext i16 %i.af to i32
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.19, i32 noundef %i.ai) #7
  br label %decode_header.exit.thread

bytestream2_get_be32.exit138.i:                   ; preds = %bytestream2_get_be16.exit123.i
  %i.aj = getelementptr i8, ptr %i.m, i64 18      ; 2 uses
  store ptr %i.aj, ptr %i.k, align 8, !tbaa !43
  %i.ak = load i32, ptr %i.ad, align 1, !tbaa !44
  %i.al = tail call i32 @llvm.bswap.i32(i32 %i.ak) ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 92
  store i32 %i.al, ptr %i.am, align 4, !tbaa !46
  %i.an = icmp sgt i32 %i.al, 30000
  br i1 %i.an, label %bb.g, label %bytestream2_get_be32.exit136.i

bb.g:                                             ; preds = %bytestream2_get_be32.exit138.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !47
  %i.aq = icmp sgt i32 %i.ap, -2
  br i1 %i.aq, label %bb.h, label %bytestream2_get_be32.exit136.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.20, i32 noundef -2) #7
  br label %decode_header.exit.thread

bytestream2_get_be32.exit136.i:                   ; preds = %bytestream2_get_be32.exit138.i, %bb.g
  %i.ar = getelementptr i8, ptr %i.m, i64 22
  store ptr %i.ar, ptr %i.k, align 8, !tbaa !43
  %i.as = load i32, ptr %i.aj, align 1, !tbaa !44
  %i.at = tail call i32 @llvm.bswap.i32(i32 %i.as) ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store i32 %i.at, ptr %i.au, align 8, !tbaa !48
  %i.av = icmp sgt i32 %i.at, 30000
  br i1 %i.av, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bytestream2_get_be32.exit136.i
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !47
  %i.ay = icmp sgt i32 %i.ax, -2
  br i1 %i.ay, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.21, i32 noundef -2) #7
  br label %decode_header.exit.thread

bb.k:                                             ; preds = %bb.i, %bytestream2_get_be32.exit136.i
  %i.az = tail call i32 @ff_set_dimensions(ptr noundef nonnull %0, i32 noundef %i.at, i32 noundef %i.al) #7 ; 2 uses
  %i.ba = icmp slt i32 %i.az, 0
  br i1 %i.ba, label %decode_header.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = load ptr, ptr %i.u, align 8, !tbaa !42  ; 8 uses
  %i.bc = load ptr, ptr %i.k, align 8, !tbaa !40  ; 3 uses
  %i.bd = ptrtoint ptr %i.bb to i64               ; 7 uses
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = icmp slt i64 %i.bf, 2
  br i1 %i.bg, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store ptr %i.bb, ptr %i.k, align 8, !tbaa !40
  br label %bytestream2_get_be16.exit121.i

bb.n:                                             ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 2 ; 3 uses
  store ptr %i.bh, ptr %i.k, align 8, !tbaa !43
  %i.bi = load i16, ptr %i.bc, align 1, !tbaa !44
  %i.bj = tail call i16 @llvm.bswap.i16(i16 %i.bi)
  %.pre178.i = ptrtoint ptr %i.bh to i64
  br label %bytestream2_get_be16.exit121.i

bytestream2_get_be16.exit121.i:                   ; preds = %bb.n, %bb.m
  %.pre-phi.i = phi i64 [ %i.bd, %bb.m ], [ %.pre178.i, %bb.n ]
  %i.bk = phi ptr [ %i.bb, %bb.m ], [ %i.bh, %bb.n ] ; 2 uses
  %.0.i120.i = phi i16 [ 0, %bb.m ], [ %i.bj, %bb.n ]
  store i16 %.0.i120.i, ptr %i.f, align 2, !tbaa !49
  %i.bl = sub i64 %i.bd, %.pre-phi.i
  %i.bm = icmp slt i64 %i.bl, 2
  br i1 %i.bm, label %bytestream2_get_be16.exit119.thread.i, label %bytestream2_get_be16.exit119.i

bytestream2_get_be16.exit119.thread.i:            ; preds = %bytestream2_get_be16.exit121.i
  store ptr %i.bb, ptr %i.k, align 8, !tbaa !40
  br label %bb.w

bytestream2_get_be16.exit119.i:                   ; preds = %bytestream2_get_be16.exit121.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 2 ; 9 uses
  store ptr %i.bn, ptr %i.k, align 8, !tbaa !43
  %i.bo = load i16, ptr %i.bk, align 1, !tbaa !44
  %i.bp = tail call i16 @llvm.bswap.i16(i16 %i.bo) ; 2 uses
  switch i16 %i.bp, label %bb.v [
    i16 0, label %bb.w
    i16 1, label %bb.o
    i16 2, label %bb.p
    i16 3, label %bb.q
    i16 4, label %bb.r
    i16 7, label %bb.s
    i16 8, label %bb.t
    i16 9, label %bb.u
  ]

bb.o:                                             ; preds = %bytestream2_get_be16.exit119.i
  br label %bb.w

bb.p:                                             ; preds = %bytestream2_get_be16.exit119.i
  br label %bb.w

bb.q:                                             ; preds = %bytestream2_get_be16.exit119.i
  br label %bb.w

bb.r:                                             ; preds = %bytestream2_get_be16.exit119.i
  br label %bb.w

bb.s:                                             ; preds = %bytestream2_get_be16.exit119.i
  br label %bb.w

bb.t:                                             ; preds = %bytestream2_get_be16.exit119.i
  br label %bb.w

bb.u:                                             ; preds = %bytestream2_get_be16.exit119.i
  br label %bb.w

bb.v:                                             ; preds = %bytestream2_get_be16.exit119.i
  %i.bq = zext i16 %i.bp to i32
  %i.br = load ptr, ptr %i.d, align 8, !tbaa !29
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.br, i32 noundef 16, ptr noundef nonnull @.str.22, i32 noundef %i.bq) #7
  br label %decode_header.exit.thread

bb.w:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bytestream2_get_be16.exit119.i, %bytestream2_get_be16.exit119.thread.i
  %.sink.i = phi i32 [ 7, %bb.u ], [ 6, %bb.t ], [ 5, %bb.s ], [ 4, %bb.r ], [ 3, %bb.q ], [ 2, %bb.p ], [ 1, %bb.o ], [ 0, %bytestream2_get_be16.exit119.thread.i ], [ 0, %bytestream2_get_be16.exit119.i ]
  %i.bs = phi ptr [ %i.bn, %bb.u ], [ %i.bn, %bb.t ], [ %i.bn, %bb.s ], [ %i.bn, %bb.r ], [ %i.bn, %bb.q ], [ %i.bn, %bb.p ], [ %i.bn, %bb.o ], [ %i.bb, %bytestream2_get_be16.exit119.thread.i ], [ %i.bn, %bytestream2_get_be16.exit119.i ] ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 104 ; 4 uses
  store i32 %.sink.i, ptr %i.bt, align 8, !tbaa !50
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bd, %i.bu
  %i.bw = icmp slt i64 %i.bv, 4
  br i1 %i.bw, label %bytestream2_get_be32.exit134.thread.i, label %bytestream2_get_be32.exit134.i

bytestream2_get_be32.exit134.i:                   ; preds = %bb.w
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 4 ; 4 uses
  store ptr %i.bx, ptr %i.k, align 8, !tbaa !43
  %i.by = load i32, ptr %i.bs, align 1, !tbaa !44 ; 2 uses
  %i.bz = tail call i32 @llvm.bswap.i32(i32 %i.by) ; 4 uses
  %i.ca = zext i32 %i.bz to i64
  %i.cb = ptrtoint ptr %i.bx to i64
  %i.cc = sub i64 %i.bd, %i.cb                    ; 3 uses
  %sext.i = shl i64 %i.cc, 32
  %i.cd = ashr exact i64 %sext.i, 32
  %i.ce = add nuw nsw i64 %i.ca, 4
  %i.cf = icmp sgt i64 %i.ce, %i.cd
  br i1 %i.cf, label %bb.x, label %bb.y

bytestream2_get_be32.exit134.thread.i:            ; preds = %bb.w
  store ptr %i.bb, ptr %i.k, align 8, !tbaa !40
  br label %bb.x

bb.x:                                             ; preds = %bytestream2_get_be32.exit134.thread.i, %bytestream2_get_be32.exit134.i
  %i.cg = load ptr, ptr %i.d, align 8, !tbaa !29
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.cg, i32 noundef 16, ptr noundef nonnull @.str.24) #7
  br label %decode_header.exit.thread

bb.y:                                             ; preds = %bytestream2_get_be32.exit134.i
  %.not113.i = icmp eq i32 %i.by, 0
  br i1 %.not113.i, label %.thread.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ch = getelementptr inbounds nuw i8, ptr %i.c, i64 108 ; 10 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.ch, i8 -1, i64 1024, i1 false)
  %i.ci = icmp ult i32 %i.bz, 768
  %i.cj = udiv i32 %i.bz, 3
  %narrow.i = select i1 %i.ci, i32 %i.cj, i32 256 ; 6 uses
  %i.ck = zext nneg i32 %narrow.i to i64          ; 7 uses
  %.not167.i = icmp eq i32 %narrow.i, 0
  br i1 %.not167.i, label %.split166.us.i, label %.preheader.us.preheader.i.preheader

.preheader.us.preheader.i.preheader:              ; preds = %bb.z
  %i.cl = add nsw i64 %i.ck, -1                   ; 3 uses
  %xtraiter = and i64 %i.ck, 1
  %i.cm = icmp eq i64 %i.cl, 0
  br i1 %i.cm, label %.preheader.us.preheader.i.epil.preheader, label %.preheader.us.preheader.i.preheader.new

.preheader.us.preheader.i.preheader.new:          ; preds = %.preheader.us.preheader.i.preheader
  %unroll_iter = and i64 %i.ck, 2147483646
  br label %.preheader.us.preheader.i

.preheader.us.preheader.i:                        ; preds = %.preheader.us.preheader.i, %.preheader.us.preheader.i.preheader.new
  %indvars.iv.i = phi i64 [ 0, %.preheader.us.preheader.i.preheader.new ], [ %indvars.iv.next.i.1, %.preheader.us.preheader.i ] ; 3 uses
  %niter = phi i64 [ 0, %.preheader.us.preheader.i.preheader.new ], [ %niter.next.1, %.preheader.us.preheader.i ]
  %i.cn = load ptr, ptr %i.k, align 8, !tbaa !43  ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 1
  store ptr %i.co, ptr %i.k, align 8, !tbaa !43
  %i.cp = load i8, ptr %i.cn, align 1, !tbaa !44
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %i.cq = shl i32 %indvars.iv.tr.i, 2
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr i8, ptr %i.ch, i64 %i.cr
  %i.ct = getelementptr i8, ptr %i.cs, i64 2
  store i8 %i.cp, ptr %i.ct, align 1, !tbaa !44
  %i.cu = load ptr, ptr %i.k, align 8, !tbaa !43  ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 1
  store ptr %i.cv, ptr %i.k, align 8, !tbaa !43
  %i.cw = load i8, ptr %i.cu, align 1, !tbaa !44
  %i.cx = trunc i64 %indvars.iv.i to i32
  %indvars.iv.tr.i.1 = shl i32 %i.cx, 2
  %i.cy = sext i32 %indvars.iv.tr.i.1 to i64
  %i.cz = getelementptr i8, ptr %i.ch, i64 %i.cy
  %i.da = getelementptr i8, ptr %i.cz, i64 6
  store i8 %i.cw, ptr %i.da, align 1, !tbaa !44
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.i.preheader.unr-lcssa, label %.preheader.us.preheader.i, !llvm.loop !51

._crit_edge.us.i.preheader.unr-lcssa:             ; preds = %.preheader.us.preheader.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.us.i.preheader, label %.preheader.us.preheader.i.epil.preheader

.preheader.us.preheader.i.epil.preheader:         ; preds = %._crit_edge.us.i.preheader.unr-lcssa, %.preheader.us.preheader.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader.us.preheader.i.preheader ], [ %indvars.iv.next.i.1, %._crit_edge.us.i.preheader.unr-lcssa ]
  %lcmp.mod586 = trunc i32 %narrow.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod586)
  %i.db = load ptr, ptr %i.k, align 8, !tbaa !43  ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 1
  store ptr %i.dc, ptr %i.k, align 8, !tbaa !43
  %i.dd = load i8, ptr %i.db, align 1, !tbaa !44
  %indvars.iv.tr.i.epil = trunc i64 %indvars.iv.i.epil.init to i32
  %i.de = shl i32 %indvars.iv.tr.i.epil, 2
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr i8, ptr %i.ch, i64 %i.df
  %i.dh = getelementptr i8, ptr %i.dg, i64 2
  store i8 %i.dd, ptr %i.dh, align 1, !tbaa !44
  br label %._crit_edge.us.i.preheader

._crit_edge.us.i.preheader:                       ; preds = %._crit_edge.us.i.preheader.unr-lcssa, %.preheader.us.preheader.i.epil.preheader
  %xtraiter587 = and i64 %i.ck, 1
  %i.di = icmp eq i64 %i.cl, 0
  br i1 %i.di, label %._crit_edge.us.i.epil.preheader, label %._crit_edge.us.i.preheader.new

._crit_edge.us.i.preheader.new:                   ; preds = %._crit_edge.us.i.preheader
  %unroll_iter590 = and i64 %i.ck, 2147483646
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %._crit_edge.us.i, %._crit_edge.us.i.preheader.new
  %indvars.iv.1.i = phi i64 [ 0, %._crit_edge.us.i.preheader.new ], [ %indvars.iv.next.1.i.1, %._crit_edge.us.i ] ; 3 uses
  %niter591 = phi i64 [ 0, %._crit_edge.us.i.preheader.new ], [ %niter591.next.1, %._crit_edge.us.i ]
  %i.dj = load ptr, ptr %i.k, align 8, !tbaa !43  ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 1
  store ptr %i.dk, ptr %i.k, align 8, !tbaa !43
  %i.dl = load i8, ptr %i.dj, align 1, !tbaa !44
  %indvars.iv.1.tr.i = trunc i64 %indvars.iv.1.i to i32
  %i.dm = shl i32 %indvars.iv.1.tr.i, 2
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr i8, ptr %i.ch, i64 %i.dn
  %i.dp = getelementptr i8, ptr %i.do, i64 1
  store i8 %i.dl, ptr %i.dp, align 1, !tbaa !44
  %i.dq = load ptr, ptr %i.k, align 8, !tbaa !43  ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 1
  store ptr %i.dr, ptr %i.k, align 8, !tbaa !43
  %i.ds = load i8, ptr %i.dq, align 1, !tbaa !44
  %i.dt = trunc i64 %indvars.iv.1.i to i32
  %indvars.iv.1.tr.i.1 = shl i32 %i.dt, 2
  %i.du = sext i32 %indvars.iv.1.tr.i.1 to i64
  %i.dv = getelementptr i8, ptr %i.ch, i64 %i.du
  %i.dw = getelementptr i8, ptr %i.dv, i64 5
  store i8 %i.ds, ptr %i.dw, align 1, !tbaa !44
  %indvars.iv.next.1.i.1 = add nuw nsw i64 %indvars.iv.1.i, 2 ; 2 uses
  %niter591.next.1 = add i64 %niter591, 2         ; 2 uses
  %niter591.ncmp.1 = icmp eq i64 %niter591.next.1, %unroll_iter590
  br i1 %niter591.ncmp.1, label %._crit_edge.us.1.i.preheader.unr-lcssa, label %._crit_edge.us.i, !llvm.loop !51

._crit_edge.us.1.i.preheader.unr-lcssa:           ; preds = %._crit_edge.us.i
  %lcmp.mod588.not = icmp eq i64 %xtraiter587, 0
  br i1 %lcmp.mod588.not, label %._crit_edge.us.1.i.preheader, label %._crit_edge.us.i.epil.preheader

._crit_edge.us.i.epil.preheader:                  ; preds = %._crit_edge.us.1.i.preheader.unr-lcssa, %._crit_edge.us.i.preheader
  %indvars.iv.1.i.epil.init = phi i64 [ 0, %._crit_edge.us.i.preheader ], [ %indvars.iv.next.1.i.1, %._crit_edge.us.1.i.preheader.unr-lcssa ]
  %lcmp.mod589 = trunc i32 %narrow.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod589)
  %i.dx = load ptr, ptr %i.k, align 8, !tbaa !43  ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 1
  store ptr %i.dy, ptr %i.k, align 8, !tbaa !43
  %i.dz = load i8, ptr %i.dx, align 1, !tbaa !44
  %indvars.iv.1.tr.i.epil = trunc i64 %indvars.iv.1.i.epil.init to i32
  %i.ea = shl i32 %indvars.iv.1.tr.i.epil, 2
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr i8, ptr %i.ch, i64 %i.eb
  %i.ed = getelementptr i8, ptr %i.ec, i64 1
  store i8 %i.dz, ptr %i.ed, align 1, !tbaa !44
  br label %._crit_edge.us.1.i.preheader

._crit_edge.us.1.i.preheader:                     ; preds = %._crit_edge.us.1.i.preheader.unr-lcssa, %._crit_edge.us.i.epil.preheader
  %xtraiter592 = and i64 %i.ck, 1
  %i.ee = icmp eq i64 %i.cl, 0
  br i1 %i.ee, label %._crit_edge.us.1.i.epil.preheader, label %._crit_edge.us.1.i.preheader.new

._crit_edge.us.1.i.preheader.new:                 ; preds = %._crit_edge.us.1.i.preheader
  %unroll_iter595 = and i64 %i.ck, 2147483646
  br label %._crit_edge.us.1.i

._crit_edge.us.1.i:                               ; preds = %._crit_edge.us.1.i, %._crit_edge.us.1.i.preheader.new
  %indvars.iv.2.i = phi i64 [ 0, %._crit_edge.us.1.i.preheader.new ], [ %indvars.iv.next.2.i.1, %._crit_edge.us.1.i ] ; 3 uses
  %niter596 = phi i64 [ 0, %._crit_edge.us.1.i.preheader.new ], [ %niter596.next.1, %._crit_edge.us.1.i ]
  %i.ef = load ptr, ptr %i.k, align 8, !tbaa !43  ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 1
  store ptr %i.eg, ptr %i.k, align 8, !tbaa !43
  %i.eh = load i8, ptr %i.ef, align 1, !tbaa !44
  %indvars.iv.2.tr.i = trunc i64 %indvars.iv.2.i to i32
  %i.ei = shl i32 %indvars.iv.2.tr.i, 2
  %i.ej = sext i32 %i.ei to i64
  %i.ek = getelementptr inbounds i8, ptr %i.ch, i64 %i.ej
  store i8 %i.eh, ptr %i.ek, align 1, !tbaa !44
  %i.el = load ptr, ptr %i.k, align 8, !tbaa !43  ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 1
  store ptr %i.em, ptr %i.k, align 8, !tbaa !43
  %i.en = load i8, ptr %i.el, align 1, !tbaa !44
  %i.eo = trunc i64 %indvars.iv.2.i to i32
  %indvars.iv.2.tr.i.1 = shl i32 %i.eo, 2
  %i.ep = sext i32 %indvars.iv.2.tr.i.1 to i64
  %i.eq = getelementptr i8, ptr %i.ch, i64 %i.ep
  %i.er = getelementptr i8, ptr %i.eq, i64 4
  store i8 %i.en, ptr %i.er, align 1, !tbaa !44
  %indvars.iv.next.2.i.1 = add nuw nsw i64 %indvars.iv.2.i, 2 ; 2 uses
  %niter596.next.1 = add i64 %niter596, 2         ; 2 uses
  %niter596.ncmp.1 = icmp eq i64 %niter596.next.1, %unroll_iter595
  br i1 %niter596.ncmp.1, label %._crit_edge.us.2.i.unr-lcssa, label %._crit_edge.us.1.i, !llvm.loop !51

._crit_edge.us.2.i.unr-lcssa:                     ; preds = %._crit_edge.us.1.i
  %lcmp.mod593.not = icmp eq i64 %xtraiter592, 0
  br i1 %lcmp.mod593.not, label %._crit_edge.us.2.i, label %._crit_edge.us.1.i.epil.preheader

._crit_edge.us.1.i.epil.preheader:                ; preds = %._crit_edge.us.2.i.unr-lcssa, %._crit_edge.us.1.i.preheader
  %indvars.iv.2.i.epil.init = phi i64 [ 0, %._crit_edge.us.1.i.preheader ], [ %indvars.iv.next.2.i.1, %._crit_edge.us.2.i.unr-lcssa ]
  %lcmp.mod594 = trunc i32 %narrow.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod594)
  %i.es = load ptr, ptr %i.k, align 8, !tbaa !43  ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 1
  store ptr %i.et, ptr %i.k, align 8, !tbaa !43
  %i.eu = load i8, ptr %i.es, align 1, !tbaa !44
  %indvars.iv.2.tr.i.epil = trunc i64 %indvars.iv.2.i.epil.init to i32
  %i.ev = shl i32 %indvars.iv.2.tr.i.epil, 2
  %i.ew = sext i32 %i.ev to i64
  %i.ex = getelementptr inbounds i8, ptr %i.ch, i64 %i.ew
  store i8 %i.eu, ptr %i.ex, align 1, !tbaa !44
  br label %._crit_edge.us.2.i

._crit_edge.us.2.i:                               ; preds = %._crit_edge.us.2.i.unr-lcssa, %._crit_edge.us.1.i.epil.preheader
  %.pre.pre.i = load ptr, ptr %i.u, align 8, !tbaa !42 ; 2 uses
  %.pre175.pre.i = load ptr, ptr %i.k, align 8, !tbaa !40 ; 2 uses
  %.pre187.i = ptrtoint ptr %.pre.pre.i to i64    ; 2 uses
  %.pre188.i = ptrtoint ptr %.pre175.pre.i to i64
  %.pre189.i = sub i64 %.pre187.i, %.pre188.i
  %i.ey = mul nsw i32 %narrow.i, -3
  br label %.split166.us.i

.split166.us.i:                                   ; preds = %._crit_edge.us.2.i, %bb.z
  %.pre183.pre-phi.i = phi i64 [ %.pre189.i, %._crit_edge.us.2.i ], [ %i.cc, %bb.z ]
  %.pre179.pre-phi.i = phi i64 [ %.pre187.i, %._crit_edge.us.2.i ], [ %i.bd, %bb.z ]
  %.pre175.i = phi ptr [ %.pre175.pre.i, %._crit_edge.us.2.i ], [ %i.bx, %bb.z ]
  %.pre.i = phi ptr [ %.pre.pre.i, %._crit_edge.us.2.i ], [ %i.bb, %bb.z ]
  %.us-phi.i = phi i32 [ %i.ey, %._crit_edge.us.2.i ], [ 0, %bb.z ]
  %i.ez = add i32 %.us-phi.i, %i.bz
  %i.fa = zext i32 %i.ez to i64
  br label %.thread.i

.thread.i:                                        ; preds = %.split166.us.i, %bb.y
  %.pre-phi184.i = phi i64 [ %.pre183.pre-phi.i, %.split166.us.i ], [ %i.cc, %bb.y ]
  %.pre-phi180.i = phi i64 [ %.pre179.pre-phi.i, %.split166.us.i ], [ %i.bd, %bb.y ] ; 8 uses
  %i.fb = phi ptr [ %.pre175.i, %.split166.us.i ], [ %i.bx, %bb.y ]
  %i.fc = phi ptr [ %.pre.i, %.split166.us.i ], [ %i.bb, %bb.y ] ; 7 uses
  %.099.i = phi i64 [ %i.fa, %.split166.us.i ], [ 0, %bb.y ]
  %..i128.i = tail call i64 @llvm.smin.i64(i64 %.pre-phi184.i, i64 %.099.i)
  %i.fd = getelementptr inbounds i8, ptr %i.fb, i64 %..i128.i ; 3 uses
  %i.fe = ptrtoint ptr %i.fd to i64
  %i.ff = sub i64 %.pre-phi180.i, %i.fe
  %i.fg = icmp slt i64 %i.ff, 4
  br i1 %i.fg, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.thread.i
  store ptr %i.fc, ptr %i.k, align 8, !tbaa !40
  br label %bytestream2_get_be32.exit132.i

bb.ab:                                            ; preds = %.thread.i
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fd, i64 4 ; 3 uses
  store ptr %i.fh, ptr %i.k, align 8, !tbaa !43
  %i.fi = load i32, ptr %i.fd, align 1, !tbaa !44
  %i.fj = tail call i32 @llvm.bswap.i32(i32 %i.fi)
  %i.fk = zext i32 %i.fj to i64
  %.pre185.i = ptrtoint ptr %i.fh to i64
  br label %bytestream2_get_be32.exit132.i

bytestream2_get_be32.exit132.i:                   ; preds = %bb.ab, %bb.aa
  %.pre-phi186.i = phi i64 [ %.pre-phi180.i, %bb.aa ], [ %.pre185.i, %bb.ab ]
  %i.fl = phi ptr [ %i.fc, %bb.aa ], [ %i.fh, %bb.ab ]
  %.0.i131.i = phi i64 [ 0, %bb.aa ], [ %i.fk, %bb.ab ] ; 2 uses
  %i.fm = sub i64 %.pre-phi180.i, %.pre-phi186.i  ; 2 uses
  %sext161.i = shl i64 %i.fm, 32
  %i.fn = ashr exact i64 %sext161.i, 32
  %i.fo = add nuw nsw i64 %.0.i131.i, 4
  %i.fp = icmp sgt i64 %i.fo, %i.fn
  br i1 %i.fp, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bytestream2_get_be32.exit132.i
  %i.fq = load ptr, ptr %i.d, align 8, !tbaa !29
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.fq, i32 noundef 16, ptr noundef nonnull @.str.24) #7
  br label %decode_header.exit.thread

bb.ad:                                            ; preds = %bytestream2_get_be32.exit132.i
  %..i127.i = tail call i64 @llvm.smin.i64(i64 %i.fm, i64 %.0.i131.i)
  %i.fr = getelementptr inbounds i8, ptr %i.fl, i64 %..i127.i ; 3 uses
  %i.fs = ptrtoint ptr %i.fr to i64
  %i.ft = sub i64 %.pre-phi180.i, %i.fs
  %i.fu = icmp slt i64 %i.ft, 4
  br i1 %i.fu, label %bytestream2_get_be32.exit.thread.i, label %bytestream2_get_be32.exit.i

bytestream2_get_be32.exit.thread.i:               ; preds = %bb.ad
  store ptr %i.fc, ptr %i.k, align 8, !tbaa !40
  br label %bb.ah

bytestream2_get_be32.exit.i:                      ; preds = %bb.ad
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fr, i64 4 ; 4 uses
  store ptr %i.fv, ptr %i.k, align 8, !tbaa !43
  %i.fw = load i32, ptr %i.fr, align 1, !tbaa !44
  %i.fx = tail call i32 @llvm.bswap.i32(i32 %i.fw) ; 2 uses
  %i.fy = zext i32 %i.fx to i64                   ; 2 uses
  %i.fz = icmp ugt i32 %i.fx, 5
  br i1 %i.fz, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bytestream2_get_be32.exit.i
  %i.ga = ptrtoint ptr %i.fv to i64
  %i.gb = sub i64 %.pre-phi180.i, %i.ga
  %..i126.i = tail call i64 @llvm.smin.i64(i64 %i.gb, i64 4)
  %i.gc = getelementptr inbounds i8, ptr %i.fv, i64 %..i126.i ; 3 uses
  %i.gd = ptrtoint ptr %i.gc to i64
  %i.ge = sub i64 %.pre-phi180.i, %i.gd
  %i.gf = icmp slt i64 %i.ge, 2
  br i1 %i.gf, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store ptr %i.fc, ptr %i.k, align 8, !tbaa !40
  br label %bytestream2_get_be16.exit117.i

bb.ag:                                            ; preds = %bb.ae
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gc, i64 2 ; 2 uses
  store ptr %i.gg, ptr %i.k, align 8, !tbaa !43
  %i.gh = load i16, ptr %i.gc, align 1, !tbaa !44
  %i.gi = tail call i16 @llvm.bswap.i16(i16 %i.gh)
  br label %bytestream2_get_be16.exit117.i

bytestream2_get_be16.exit117.i:                   ; preds = %bb.ag, %bb.af
  %i.gj = phi ptr [ %i.fc, %bb.af ], [ %i.gg, %bb.ag ]
  %.0.i116.i = phi i16 [ 0, %bb.af ], [ %i.gi, %bb.ag ]
  store i16 %.0.i116.i, ptr %i.j, align 8, !tbaa !36
  %i.gk = add nsw i64 %i.fy, -6
  br label %bb.ah

bb.ah:                                            ; preds = %bytestream2_get_be16.exit117.i, %bytestream2_get_be32.exit.i, %bytestream2_get_be32.exit.thread.i
  %i.gl = phi ptr [ %i.gj, %bytestream2_get_be16.exit117.i ], [ %i.fv, %bytestream2_get_be32.exit.i ], [ %i.fc, %bytestream2_get_be32.exit.thread.i ] ; 2 uses
  %.1100.i = phi i64 [ %i.gk, %bytestream2_get_be16.exit117.i ], [ %i.fy, %bytestream2_get_be32.exit.i ], [ 0, %bytestream2_get_be32.exit.thread.i ] ; 2 uses
  %i.gm = ptrtoint ptr %i.gl to i64
  %i.gn = sub i64 %.pre-phi180.i, %i.gm           ; 2 uses
  %sext162.i = shl i64 %i.gn, 32
  %i.go = ashr exact i64 %sext162.i, 32
  %i.gp = icmp sgt i64 %.1100.i, %i.go
  br i1 %i.gp, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.gq = load ptr, ptr %i.d, align 8, !tbaa !29
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.gq, i32 noundef 16, ptr noundef nonnull @.str.24) #7
  br label %decode_header.exit.thread

bb.aj:                                            ; preds = %bb.ah
  %..i.i = tail call i64 @llvm.smin.i64(i64 %i.gn, i64 %.1100.i)
  %i.gr = getelementptr inbounds i8, ptr %i.gl, i64 %..i.i ; 4 uses
  store ptr %i.gr, ptr %i.k, align 8, !tbaa !40
  %i.gs = ptrtoint ptr %i.gr to i64
  %i.gt = sub i64 %.pre-phi180.i, %i.gs           ; 2 uses
  %i.gu = trunc i64 %i.gt to i32
  %i.gv = icmp slt i32 %i.gu, 2
  br i1 %i.gv, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.gw = load ptr, ptr %i.d, align 8, !tbaa !29
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.gw, i32 noundef 16, ptr noundef nonnull @.str.27) #7
  br label %decode_header.exit.thread

bb.al:                                            ; preds = %bb.aj
  %i.gx = icmp slt i64 %i.gt, 2
  br i1 %i.gx, label %bytestream2_get_be16.exit.thread.i, label %bytestream2_get_be16.exit.i

bytestream2_get_be16.exit.thread.i:               ; preds = %bb.al
  store ptr %i.fc, ptr %i.k, align 8, !tbaa !40
  %i.gy = getelementptr inbounds nuw i8, ptr %i.c, i64 100
  store i32 0, ptr %i.gy, align 4, !tbaa !53
  br label %decode_header.exit

bytestream2_get_be16.exit.i:                      ; preds = %bb.al
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gr, i64 2
  store ptr %i.gz, ptr %i.k, align 8, !tbaa !43
  %i.ha = load i16, ptr %i.gr, align 1, !tbaa !44
  %i.hb = tail call i16 @llvm.bswap.i16(i16 %i.ha) ; 2 uses
  %i.hc = zext i16 %i.hb to i32                   ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.c, i64 100
  store i32 %i.hc, ptr %i.hd, align 4, !tbaa !53
  switch i16 %i.hb, label %bb.ao [
    i16 0, label %decode_header.exit
    i16 1, label %decode_header.exit
    i16 2, label %bb.am
    i16 3, label %bb.an
end_hunk_0
