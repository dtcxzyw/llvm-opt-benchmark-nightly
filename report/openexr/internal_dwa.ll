Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/internal_dwa?download=true
inline.NumInlined: 252
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 30
begin_hunk_0_@DwaCompressor_construct:bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !133 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !36
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !134
  %i.bb = add i32 %i.au, -1
  %i.bc = add i32 %i.bb, %i.ba
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.bc, ptr %i.bd, align 8, !tbaa !36
  %i.be = load i32, ptr %i.aq, align 4, !tbaa !131
  %i.bf = add i32 %i.ax, -1
  %i.bg = add i32 %i.bf, %i.be
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !36
  %i.bi = load ptr, ptr %i.t, align 8, !tbaa !29
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !135
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bm = tail call i32 @exr_get_zip_compression_level(ptr noundef %i.bi, i32 noundef %i.bk, ptr noundef nonnull %i.bl) #21 ; 2 uses
  %.not120 = icmp eq i32 %i.bm, 0
  br i1 %.not120, label %bb.k, label %.critedge

bb.j:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 3 uses
  %i.bn = load ptr, ptr %i.ap, align 8, !tbaa !136
  %i.bo = getelementptr inbounds nuw [48 x i8], ptr %i.bn, i64 %indvars.iv ; 2 uses
  %i.bp = load ptr, ptr %i.ai, align 8, !tbaa !33
  %i.bq = getelementptr inbounds nuw [576 x i8], ptr %i.bp, i64 %indvars.iv ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 448
  store ptr %i.bo, ptr %i.br, align 32, !tbaa !41
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 548
  store i32 0, ptr %i.bs, align 4, !tbaa !42
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 26
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !44
  %i.bv = zext i16 %i.bu to i32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(448) %i.bq, i8 0, i64 448, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 416
  store i32 %i.bv, ptr %i.bw, align 32, !tbaa !45
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bx = load i16, ptr %i.ad, align 8, !tbaa !130
  %i.by = sext i16 %i.bx to i64
  %i.bz = icmp slt i64 %indvars.iv.next, %i.by
  br i1 %i.bz, label %bb.j, label %._crit_edge, !llvm.loop !114

bb.k:                                             ; preds = %._crit_edge
  %i.ca = load ptr, ptr %i.t, align 8, !tbaa !29
  %i.cb = load i32, ptr %i.bj, align 4, !tbaa !135
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.cd = tail call i32 @exr_get_dwa_compression_level(ptr noundef %i.ca, i32 noundef %i.cb, ptr noundef nonnull %i.cc) #21
  br label %.critedge

bb.l:                                             ; preds = %initializeFuncs.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !48 ; 3 uses
  %.not116 = icmp eq ptr %i.cf, null
  br i1 %.not116, label %.thread128, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 88
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !128
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 96
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !129
  br label %.thread128

.thread128:                                       ; preds = %bb.l, %bb.m
  %.sink138 = phi ptr [ %i.ch, %bb.m ], [ @internal_exr_alloc, %bb.l ] ; 2 uses
  %i.ck = phi ptr [ %i.cj, %bb.m ], [ @internal_exr_free, %bb.l ]
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %.sink138, ptr %i.cl, align 8, !tbaa !31
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %i.ck, ptr %i.cm, align 8, !tbaa !32
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.cp = load i16, ptr %i.co, align 8, !tbaa !137
  %i.cq = sext i16 %i.cp to i64
  %i.cr = mul nsw i64 %i.cq, 576
  %i.cs = tail call noalias ptr @internal_exr_alloc_aligned(ptr noundef %.sink138, ptr noundef nonnull %i.cn, i64 noundef %i.cr, i64 noundef 32) #21 ; 8 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !33
  %.not117.not = icmp eq ptr %i.cs, null
  br i1 %.not117.not, label %.critedge, label %bb.n

bb.n:                                             ; preds = %.thread128
  %i.cu = load i16, ptr %i.co, align 8, !tbaa !137 ; 4 uses
  %i.cv = sext i16 %i.cu to i64
  %i.cw = mul nsw i64 %i.cv, 576
  tail call void @llvm.memset.p0.i64(ptr nonnull align 32 %i.cs, i8 0, i64 %i.cw, i1 false)
  %i.cx = sext i16 %i.cu to i32                   ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.cx, ptr %i.cy, align 8, !tbaa !34
  %i.cz = icmp sgt i16 %i.cu, 0
  br i1 %i.cz, label %.lr.ph132, label %._crit_edge133

.lr.ph132:                                        ; preds = %bb.n
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !138 ; 5 uses
  %wide.trip.count = zext nneg i32 %i.cx to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.dc = icmp ult i16 %i.cu, 4
  br i1 %i.dc, label %.epil.preheader, label %.lr.ph132.new

.lr.ph132.new:                                    ; preds = %.lr.ph132
  %unroll_iter = and i64 %wide.trip.count, 32764
  br label %bb.p

._crit_edge133.loopexit.unr-lcssa:                ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge133, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge133.loopexit.unr-lcssa, %.lr.ph132
  %indvars.iv135.epil.init = phi i64 [ 0, %.lr.ph132 ], [ %indvars.iv.next136.3, %._crit_edge133.loopexit.unr-lcssa ]
  %lcmp.mod144 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod144)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader
  %indvars.iv135.epil = phi i64 [ %indvars.iv135.epil.init, %.epil.preheader ], [ %indvars.iv.next136.epil, %bb.o ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.o ]
  %i.dd = getelementptr inbounds nuw [48 x i8], ptr %i.db, i64 %indvars.iv135.epil
  %i.de = getelementptr inbounds nuw [576 x i8], ptr %i.cs, i64 %indvars.iv135.epil ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 448
  store ptr %i.dd, ptr %i.df, align 32, !tbaa !41
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 548
  store i32 0, ptr %i.dg, align 4, !tbaa !42
  %indvars.iv.next136.epil = add nuw nsw i64 %indvars.iv135.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge133, label %bb.o, !llvm.loop !115

._crit_edge133:                                   ; preds = %._crit_edge133.loopexit.unr-lcssa, %bb.o, %bb.n
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !139
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.di, ptr %i.dj, align 4, !tbaa !35
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !140 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.dl, ptr %i.dm, align 8, !tbaa !36
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !141 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.do, ptr %i.dp, align 4, !tbaa !36
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !142
  %i.ds = add i32 %i.dl, -1
  %i.dt = add i32 %i.ds, %i.dr
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.dt, ptr %i.du, align 8, !tbaa !36
  %i.dv = load i32, ptr %i.dh, align 4, !tbaa !139
  %i.dw = add i32 %i.do, -1
  %i.dx = add i32 %i.dw, %i.dv
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.dx, ptr %i.dy, align 4, !tbaa !36
  br label %.critedge

bb.p:                                             ; preds = %bb.p, %.lr.ph132.new
  %indvars.iv135 = phi i64 [ 0, %.lr.ph132.new ], [ %indvars.iv.next136.3, %bb.p ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph132.new ], [ %niter.next.3, %bb.p ]
  %i.dz = getelementptr inbounds nuw [48 x i8], ptr %i.db, i64 %indvars.iv135
  %i.ea = getelementptr inbounds nuw [576 x i8], ptr %i.cs, i64 %indvars.iv135 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 448
  store ptr %i.dz, ptr %i.eb, align 32, !tbaa !41
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 548
  store i32 0, ptr %i.ec, align 4, !tbaa !42
  %indvars.iv.next136 = or disjoint i64 %indvars.iv135, 1 ; 2 uses
  %i.ed = getelementptr inbounds nuw [48 x i8], ptr %i.db, i64 %indvars.iv.next136
  %i.ee = getelementptr inbounds nuw [576 x i8], ptr %i.cs, i64 %indvars.iv.next136 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 448
  store ptr %i.ed, ptr %i.ef, align 32, !tbaa !41
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 548
  store i32 0, ptr %i.eg, align 4, !tbaa !42
  %indvars.iv.next136.1 = or disjoint i64 %indvars.iv135, 2 ; 2 uses
  %i.eh = getelementptr inbounds nuw [48 x i8], ptr %i.db, i64 %indvars.iv.next136.1
  %i.ei = getelementptr inbounds nuw [576 x i8], ptr %i.cs, i64 %indvars.iv.next136.1 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 448
  store ptr %i.eh, ptr %i.ej, align 32, !tbaa !41
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 548
  store i32 0, ptr %i.ek, align 4, !tbaa !42
  %indvars.iv.next136.2 = or disjoint i64 %indvars.iv135, 3 ; 2 uses
  %i.el = getelementptr inbounds nuw [48 x i8], ptr %i.db, i64 %indvars.iv.next136.2
  %i.em = getelementptr inbounds nuw [576 x i8], ptr %i.cs, i64 %indvars.iv.next136.2 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 448
  store ptr %i.el, ptr %i.en, align 32, !tbaa !41
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 548
  store i32 0, ptr %i.eo, align 4, !tbaa !42
  %indvars.iv.next136.3 = add nuw nsw i64 %indvars.iv135, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge133.loopexit.unr-lcssa, label %bb.p, !llvm.loop !116

.critedge:                                        ; preds = %bb.k, %._crit_edge, %.thread, %._crit_edge133, %.thread128
  %.2 = phi i32 [ 1, %.thread128 ], [ 1, %.thread ], [ 0, %._crit_edge133 ], [ %i.cd, %bb.k ], [ %i.bm, %._crit_edge ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @DwaCompressor_compress(ptr nofree noundef nonnull captures(none) initializes((72, 88)) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %struct._LossyDctEncoder, align 8   ; 9 uses
  %2 = alloca %struct._LossyDctEncoder, align 8   ; 7 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 0, ptr %i.b, align 8, !tbaa !50
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr @sDefaultChannelRules, ptr %i.g, align 8, !tbaa !51
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  store i64 15, ptr %i.h, align 8, !tbaa !52
  %i.i = call fastcc i32 @DwaCompressor_initializeBuffers(ptr noundef %0, ptr noundef %i.b) ; 0 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !27     ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 184 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !157
  %i.m = icmp ult i64 %i.l, 88
  br i1 %i.m, label %DwaCompressor_writeRelevantChannelRules.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 168
  %i.o = load i64, ptr %i.b, align 8, !tbaa !50   ; 4 uses
  %i.p = tail call i32 @internal_encode_alloc_buffer(ptr noundef nonnull %i.j, i32 noundef 3, ptr noundef nonnull %i.n, ptr noundef nonnull %i.k, i64 noundef %i.o) #21 ; 2 uses
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.c, label %DwaCompressor_writeRelevantChannelRules.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 168
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !158  ; 15 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 184
  %i.u = load i64, ptr %i.t, align 8, !tbaa !157
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.s, i8 0, i64 %i.u, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 56 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 64 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 88
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 90 ; 3 uses
  %i.ah = icmp ult i64 %i.o, 2
  br i1 %i.ah, label %DwaCompressor_writeRelevantChannelRules.exit.thread, label %.preheader73.i

.preheader73.i:                                   ; preds = %bb.c
  %i.ai = load i64, ptr %i.h, align 8, !tbaa !52  ; 2 uses
  %.not4777.not.i = icmp eq i64 %i.ai, 0
  br i1 %.not4777.not.i, label %._crit_edge.i.thread, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %.preheader73.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.al = load i32, ptr %i.aj, align 8, !tbaa !34 ; 2 uses
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %.preheader.i, label %._crit_edge.i.thread

.preheaderthread-pre-split.i:                     ; preds = %.loopexit.i
  %.pr.i = load i32, ptr %i.aj, align 8, !tbaa !34
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.lr.ph.i, %.preheaderthread-pre-split.i
  %i.an = phi i32 [ %.pr.i, %.preheaderthread-pre-split.i ], [ %i.al, %.preheader.lr.ph.i ] ; 2 uses
  %i.ao = phi i64 [ %i.ch, %.preheaderthread-pre-split.i ], [ %i.ai, %.preheader.lr.ph.i ] ; 2 uses
  %.03680.i = phi i64 [ %i.ci, %.preheaderthread-pre-split.i ], [ 0, %.preheader.lr.ph.i ] ; 2 uses
  %.03879.i = phi i64 [ %.3.ph.i, %.preheaderthread-pre-split.i ], [ 2, %.preheader.lr.ph.i ] ; 3 uses
  %.05178.i = phi ptr [ %.353.ph.i, %.preheaderthread-pre-split.i ], [ %i.ag, %.preheader.lr.ph.i ] ; 4 uses
  %i.ap = icmp sgt i32 %i.an, 0
  br i1 %i.ap, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.aq = load ptr, ptr %i.ak, align 8, !tbaa !33
  %i.ar = load ptr, ptr %i.g, align 8, !tbaa !51
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.ar, i64 %.03680.i ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 12 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !54
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 20 ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.an to i64
  br label %bb.d

bb.d:                                             ; preds = %Classifier_match.exit.thread.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %Classifier_match.exit.thread.i ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [576 x i8], ptr %i.aq, i64 %indvars.iv.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 448
  %i.ay = load ptr, ptr %i.ax, align 32, !tbaa !41 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !55 ; 2 uses
  %i.ba = tail call ptr @strrchr(ptr noundef nonnull readonly dereferenceable(1) %i.az, i32 noundef 46) #23 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ba, null
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  %.0.i.i = select i1 %.not.i.i, ptr %i.az, ptr %i.bb ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 26
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !44
  %i.be = zext i16 %i.bd to i32
  %.not.i48.i = icmp eq i32 %i.au, %i.be
  br i1 %.not.i48.i, label %bb.e, label %Classifier_match.exit.thread.i

bb.e:                                             ; preds = %bb.d
  %i.bf = load i16, ptr %i.av, align 4, !tbaa !56
  %.not7.i.i = icmp eq i16 %i.bf, 0
  %i.bg = load ptr, ptr %i.as, align 8, !tbaa !57 ; 4 uses
  br i1 %.not7.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bh = tail call i32 @strcasecmp(ptr noundef nonnull readonly %.0.i.i, ptr noundef %i.bg) #23
  br label %Classifier_match.exit.i

bb.g:                                             ; preds = %bb.e
  %i.bi = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %.0.i.i, ptr noundef nonnull dereferenceable(1) %i.bg) #23
  br label %Classifier_match.exit.i

Classifier_match.exit.i:                          ; preds = %bb.g, %bb.f
  %.0.shrunk.i.in.i = phi i32 [ %i.bi, %bb.g ], [ %i.bh, %bb.f ]
  %.0.shrunk.i.not.i = icmp eq i32 %.0.shrunk.i.in.i, 0
  br i1 %.0.shrunk.i.not.i, label %bb.h, label %Classifier_match.exit.thread.i

bb.h:                                             ; preds = %Classifier_match.exit.i
  %i.bj = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bg) #23 ; 2 uses
  %i.bk = add i64 %.03879.i, 3
  %i.bl = add i64 %i.bk, %i.bj                    ; 2 uses
  %i.bm = icmp ult i64 %i.o, %i.bl
  br i1 %i.bm, label %DwaCompressor_writeRelevantChannelRules.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bn = add i64 %i.bj, 1                        ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.05178.i, ptr nonnull align 1 %i.bg, i64 %i.bn, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %.05178.i, i64 %i.bn ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !58
  %i.br = shl i32 %i.bq, 4
  %i.bs = add i32 %i.br, 16
  %i.bt = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !59
  %i.bv = shl i32 %i.bu, 2
  %i.bw = and i32 %i.bv, 12
  %i.bx = load i16, ptr %i.av, align 4, !tbaa !56
  %i.by = and i16 %i.bx, 1
  %i.bz = zext nneg i16 %i.by to i32
  %i.ca = or disjoint i32 %i.bw, %i.bs
  %i.cb = or disjoint i32 %i.ca, %i.bz
  %i.cc = trunc i32 %i.cb to i8
  store i8 %i.cc, ptr %i.bo, align 1, !tbaa !60
  %i.cd = load i32, ptr %i.at, align 4, !tbaa !54
  %i.ce = trunc i32 %i.cd to i8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !60
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bo, i64 2
  %.pre.i = load i64, ptr %i.h, align 8, !tbaa !52
  br label %.loopexit.i

Classifier_match.exit.thread.i:                   ; preds = %Classifier_match.exit.i, %bb.d
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit.i, label %bb.d, !llvm.loop !143

.loopexit.i:                                      ; preds = %Classifier_match.exit.thread.i, %bb.i, %.preheader.i
  %i.ch = phi i64 [ %.pre.i, %bb.i ], [ %i.ao, %.preheader.i ], [ %i.ao, %Classifier_match.exit.thread.i ] ; 2 uses
  %.353.ph.i = phi ptr [ %i.cg, %bb.i ], [ %.05178.i, %.preheader.i ], [ %.05178.i, %Classifier_match.exit.thread.i ] ; 2 uses
  %.3.ph.i = phi i64 [ %i.bl, %bb.i ], [ %.03879.i, %.preheader.i ], [ %.03879.i, %Classifier_match.exit.thread.i ] ; 3 uses
  %i.ci = add nuw i64 %.03680.i, 1                ; 2 uses
  %.not47.i = icmp ult i64 %i.ci, %i.ch
  br i1 %.not47.i, label %.preheaderthread-pre-split.i, label %._crit_edge.i, !llvm.loop !144

._crit_edge.i:                                    ; preds = %.loopexit.i
  %i.cj = icmp ugt i64 %.3.ph.i, 65535
  br i1 %i.cj, label %DwaCompressor_writeRelevantChannelRules.exit.thread, label %._crit_edge.i.thread

._crit_edge.i.thread:                             ; preds = %.preheader.lr.ph.i, %.preheader73.i, %._crit_edge.i
  %.038.lcssa.i420 = phi i64 [ %.3.ph.i, %._crit_edge.i ], [ 2, %.preheader73.i ], [ 2, %.preheader.lr.ph.i ] ; 2 uses
  %.051.lcssa.i419 = phi ptr [ %.353.ph.i, %._crit_edge.i ], [ %i.ag, %.preheader73.i ], [ %i.ag, %.preheader.lr.ph.i ] ; 3 uses
  %i.ck = trunc nuw i64 %.038.lcssa.i420 to i16
  store i16 %i.ck, ptr %i.af, align 2, !tbaa !62
  %i.cl = add nuw nsw i64 %.038.lcssa.i420, 88    ; 3 uses
  %i.cm = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 184
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !157
  %.not367 = icmp ult i64 %i.cl, %i.co
  br i1 %.not367, label %bb.j, label %DwaCompressor_writeRelevantChannelRules.exit.thread

bb.j:                                             ; preds = %._crit_edge.i.thread
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !63 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !64 ; 2 uses
  store i64 2, ptr %i.s, align 8, !tbaa !50
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !26
  %i.cv = zext i32 %i.cu to i64
  store i64 %i.cv, ptr %i.ae, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.cx = load <2 x ptr>, ptr %i.cw, align 8, !tbaa !65
  store <2 x ptr> %i.cx, ptr %i.a, align 16, !tbaa !65
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !65
  store ptr %i.da, ptr %i.cy, align 16, !tbaa !65
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !34 ; 6 uses
  %i.dd = icmp sgt i32 %i.dc, 0
  br i1 %i.dd, label %.lr.ph67.i, label %DwaCompressor_setupChannelData.exit.thread

DwaCompressor_setupChannelData.exit.thread:       ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %.preheader475

.lr.ph67.i:                                       ; preds = %bb.j
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !33 ; 2 uses
  %wide.trip.count76.i = zext nneg i32 %i.dc to i64 ; 3 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.n, %.lr.ph67.i
  %indvar.i = phi i64 [ 0, %.lr.ph67.i ], [ %indvar.next.i, %bb.n ] ; 3 uses
  %i.dg = mul nuw nsw i64 %indvar.i, 576
  %i.dh = getelementptr i8, ptr %i.df, i64 %i.dg  ; 2 uses
  %scevgep71.i = getelementptr i8, ptr %i.dh, i64 512
  %scevgep.i = getelementptr i8, ptr %i.dh, i64 480
  %i.di = getelementptr inbounds nuw [576 x i8], ptr %i.df, i64 %indvar.i ; 8 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 448
end_hunk_0
begin_hunk_1_@DwaCompressor_compress:bb.a
  %i.mi = getelementptr inbounds nuw i8, ptr %i.lm, i64 24
  %i.mj = load i8, ptr %i.mi, align 8, !tbaa !85
  %.not377 = icmp eq i8 %i.mj, 0
  %i.mk = load ptr, ptr @exrcore_dwaToNonLinearTable, align 8
  %spec.select392 = select i1 %.not377, ptr %i.mk, ptr null
  %i.ml = load float, ptr %i.je, align 4, !tbaa !161
  %i.mm = fdiv float %i.ml, 1.000000e+05
  %i.mn = getelementptr inbounds nuw i8, ptr %i.lm, i64 12
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !66
  %i.mp = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  %i.mq = load i32, ptr %i.mp, align 8, !tbaa !67
  call fastcc void @LossyDctEncoder_base_construct(ptr noundef nonnull %2, float noundef %i.mm, ptr noundef %.3309523, ptr noundef %.3303524, ptr noundef %spec.select392, i32 noundef %i.mo, i32 noundef %i.mq)
  store ptr %i.lk, ptr %i.jf, align 8, !tbaa !82
  store i32 1, ptr %i.jg, align 8, !tbaa !84
  %i.mr = load ptr, ptr %i.jh, align 8, !tbaa !31
  %i.ms = load ptr, ptr %i.ji, align 8, !tbaa !32
  %i.mt = call fastcc i32 @LossyDctEncoder_execute(ptr noundef %i.mr, ptr noundef %i.ms, ptr noundef %2)
  %i.mu = load <2 x i64>, ptr %i.ac, align 8, !tbaa !50
  %i.mv = load <2 x i64>, ptr %i.jj, align 8, !tbaa !50 ; 3 uses
  %i.mw = add <2 x i64> %i.mv, %i.mu
  store <2 x i64> %i.mw, ptr %i.ac, align 8, !tbaa !50
  %i.mx = extractelement <2 x i64> %i.mv, i64 0
  %i.my = shl i64 %i.mx, 1
  %i.mz = getelementptr inbounds nuw i8, ptr %.3309523, i64 %i.my
  %i.na = extractelement <2 x i64> %i.mv, i64 1
  %i.nb = shl i64 %i.na, 1
  %i.nc = getelementptr inbounds nuw i8, ptr %.3303524, i64 %i.nb
  %.not378 = icmp eq i32 %i.mt, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br i1 %.not378, label %.loopexit, label %DwaCompressor_writeRelevantChannelRules.exit.thread

.lr.ph520.split:                                  ; preds = %.lr.ph520.split.preheader, %._crit_edge517
  %.pre560 = phi i8 [ %.pre560569, %._crit_edge517 ], [ %.pre560.pre, %.lr.ph520.split.preheader ] ; 4 uses
  %i.nd = phi i32 [ %i.nn, %._crit_edge517 ], [ %i.lx, %.lr.ph520.split.preheader ] ; 2 uses
  %i.ne = phi i32 [ %i.no, %._crit_edge517 ], [ %i.lx, %.lr.ph520.split.preheader ] ; 2 uses
  %.0280519 = phi i64 [ %i.nu, %._crit_edge517 ], [ 0, %.lr.ph520.split.preheader ] ; 2 uses
  %i.nf = icmp sgt i32 %i.ne, 0
  br i1 %i.nf, label %.preheader.preheader, label %._crit_edge517

.preheader.preheader:                             ; preds = %.lr.ph520.split
  %i.ng = load ptr, ptr %i.lt, align 8, !tbaa !77
  %i.nh = getelementptr inbounds nuw [8 x i8], ptr %i.ng, i64 %.0280519
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !65
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge513
  %.pre560571 = phi i8 [ %.pre560570, %._crit_edge513 ], [ %.pre560, %.preheader.preheader ]
  %i.nj = phi i32 [ %i.nx, %._crit_edge513 ], [ %i.nd, %.preheader.preheader ]
  %i.nk = phi i8 [ %i.ny, %._crit_edge513 ], [ %.pre560, %.preheader.preheader ] ; 2 uses
  %.0278516 = phi i32 [ %i.nz, %._crit_edge513 ], [ 0, %.preheader.preheader ]
  %.0279515 = phi ptr [ %.1.lcssa, %._crit_edge513 ], [ %i.ni, %.preheader.preheader ] ; 2 uses
  %i.nl = icmp sgt i8 %i.nk, 0
  br i1 %i.nl, label %.lr.ph512, label %._crit_edge513

._crit_edge517:                                   ; preds = %._crit_edge513, %.lr.ph520.split
  %.pre560569 = phi i8 [ %.pre560, %.lr.ph520.split ], [ %.pre560570, %._crit_edge513 ]
  %i.nm = phi i8 [ %.pre560, %.lr.ph520.split ], [ %i.ny, %._crit_edge513 ]
  %i.nn = phi i32 [ %i.nd, %.lr.ph520.split ], [ %i.nx, %._crit_edge513 ]
  %i.no = phi i32 [ %i.ne, %.lr.ph520.split ], [ %i.nx, %._crit_edge513 ] ; 2 uses
  %i.np = sext i32 %i.no to i64
  %i.nq = sext i8 %i.nm to i64
  %i.nr = mul nsw i64 %i.nq, %i.np
  %i.ns = load i64, ptr %i.ab, align 8, !tbaa !50
  %i.nt = add i64 %i.nr, %i.ns
  store i64 %i.nt, ptr %i.ab, align 8, !tbaa !50
  %i.nu = add nuw i64 %.0280519, 1                ; 2 uses
  %i.nv = load i64, ptr %i.lr, align 8, !tbaa !75
  %i.nw = icmp ult i64 %i.nu, %i.nv
  br i1 %i.nw, label %.lr.ph520.split, label %.loopexit, !llvm.loop !152

._crit_edge513.loopexit:                          ; preds = %.lr.ph512
  %.pre559 = load i32, ptr %i.lu, align 4, !tbaa !66
  br label %._crit_edge513

._crit_edge513:                                   ; preds = %._crit_edge513.loopexit, %.preheader
  %.pre560570 = phi i8 [ %.pre560571, %.preheader ], [ %i.og, %._crit_edge513.loopexit ] ; 2 uses
  %i.nx = phi i32 [ %i.nj, %.preheader ], [ %.pre559, %._crit_edge513.loopexit ] ; 4 uses
  %i.ny = phi i8 [ %i.nk, %.preheader ], [ %i.og, %._crit_edge513.loopexit ] ; 2 uses
  %.1.lcssa = phi ptr [ %.0279515, %.preheader ], [ %i.ob, %._crit_edge513.loopexit ]
  %i.nz = add nuw nsw i32 %.0278516, 1            ; 2 uses
  %i.oa = icmp slt i32 %i.nz, %i.nx
  br i1 %i.oa, label %.preheader, label %._crit_edge517, !llvm.loop !153

.lr.ph512:                                        ; preds = %.preheader, %.lr.ph512
  %indvars.iv548 = phi i64 [ %indvars.iv.next549, %.lr.ph512 ], [ 0, %.preheader ] ; 2 uses
  %.1510 = phi ptr [ %i.ob, %.lr.ph512 ], [ %.0279515, %.preheader ] ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %.1510, i64 1 ; 2 uses
  %i.oc = load i8, ptr %.1510, align 1, !tbaa !60
  %i.od = getelementptr inbounds nuw [8 x i8], ptr %i.lw, i64 %indvars.iv548 ; 2 uses
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !65 ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 1
  store ptr %i.of, ptr %i.od, align 8, !tbaa !65
  store i8 %i.oc, ptr %i.oe, align 1, !tbaa !60
  %indvars.iv.next549 = add nuw nsw i64 %indvars.iv548, 1 ; 2 uses
  %i.og = load i8, ptr %i.lv, align 1, !tbaa !68  ; 3 uses
  %i.oh = sext i8 %i.og to i64
  %i.oi = icmp slt i64 %indvars.iv.next549, %i.oh
  br i1 %i.oi, label %.lr.ph512, label %._crit_edge513.loopexit, !llvm.loop !154

bb.ac:                                            ; preds = %bb.z
  %i.oj = getelementptr inbounds nuw i8, ptr %i.lm, i64 12
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !66
  %i.ol = sext i32 %i.ok to i64
  %i.om = getelementptr inbounds nuw i8, ptr %i.lm, i64 25
  %i.on = load i8, ptr %i.om, align 1, !tbaa !68
  %i.oo = sext i8 %i.on to i64
  %i.op = mul nsw i64 %i.oo, %i.ol                ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.lk, i64 408 ; 2 uses
  %i.or = load i64, ptr %i.oq, align 8, !tbaa !75
  %.not529 = icmp eq i64 %i.or, 0
  br i1 %.not529, label %._crit_edge509, label %.lr.ph508

.lr.ph508:                                        ; preds = %bb.ac
  %i.os = getelementptr inbounds nuw i8, ptr %i.lk, i64 464 ; 3 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.lk, i64 392
  %.pre556 = load ptr, ptr %i.os, align 16, !tbaa !71
  br label %bb.ad

._crit_edge509:                                   ; preds = %bb.ad, %bb.ac
  %i.ou = getelementptr inbounds nuw i8, ptr %i.lk, i64 536
  %i.ov = load i64, ptr %i.ou, align 8, !tbaa !69
  %i.ow = load i64, ptr %i.v, align 8, !tbaa !50
  %i.ox = add i64 %i.ow, %i.ov
  store i64 %i.ox, ptr %i.v, align 8, !tbaa !50
  br label %.loopexit

bb.ad:                                            ; preds = %.lr.ph508, %bb.ad
  %i.oy = phi ptr [ %.pre556, %.lr.ph508 ], [ %i.pd, %bb.ad ]
  %.0506 = phi i64 [ 0, %.lr.ph508 ], [ %i.pe, %bb.ad ] ; 2 uses
  %i.oz = load ptr, ptr %i.ot, align 8, !tbaa !77
  %i.pa = getelementptr inbounds nuw [8 x i8], ptr %i.oz, i64 %.0506
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !65
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.oy, ptr align 1 %i.pb, i64 %i.op, i1 false)
  %i.pc = load ptr, ptr %i.os, align 16, !tbaa !71
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 %i.op ; 2 uses
  store ptr %i.pd, ptr %i.os, align 16, !tbaa !71
  %i.pe = add nuw i64 %.0506, 1                   ; 2 uses
  %i.pf = load i64, ptr %i.oq, align 8, !tbaa !75
  %i.pg = icmp ult i64 %i.pe, %i.pf
  br i1 %i.pg, label %bb.ad, label %._crit_edge509, !llvm.loop !155

.loopexit:                                        ; preds = %bb.aa, %._crit_edge517, %.preheader473, %bb.ab, %._crit_edge509
  %.4310 = phi ptr [ %i.mz, %bb.ab ], [ %.3309523, %._crit_edge509 ], [ %.3309523, %._crit_edge517 ], [ %.3309523, %.preheader473 ], [ %.3309523, %bb.aa ]
  %.4304 = phi ptr [ %i.nc, %bb.ab ], [ %.3303524, %._crit_edge509 ], [ %.3303524, %._crit_edge517 ], [ %.3303524, %.preheader473 ], [ %.3303524, %bb.aa ]
  store i32 1, ptr %i.ln, align 32, !tbaa !73
  %.pre561 = load i32, ptr %i.db, align 8, !tbaa !34
  br label %bb.ae

bb.ae:                                            ; preds = %.loopexit, %bb.y
  %i.ph = phi i32 [ %.pre561, %.loopexit ], [ %i.li, %bb.y ] ; 2 uses
  %.5311 = phi ptr [ %.4310, %.loopexit ], [ %.3309523, %bb.y ]
  %.5305 = phi ptr [ %.4304, %.loopexit ], [ %.3303524, %bb.y ]
  %indvars.iv.next552 = add nuw nsw i64 %indvars.iv551, 1 ; 2 uses
  %i.pi = sext i32 %i.ph to i64
  %.not379 = icmp slt i64 %indvars.iv.next552, %i.pi
  br i1 %.not379, label %bb.y, label %._crit_edge527, !llvm.loop !156

._crit_edge527:                                   ; preds = %bb.ae, %.preheader474
  %i.pj = load i64, ptr %i.v, align 8, !tbaa !50  ; 3 uses
  %.not380 = icmp eq i64 %i.pj, 0
  br i1 %.not380, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %._crit_edge527
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  %i.pk = load ptr, ptr %0, align 8, !tbaa !27
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 24
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !29
  %i.pn = load ptr, ptr %i.cw, align 8, !tbaa !65
  %i.po = tail call i64 @exr_compress_max_buffer_size(i64 noundef %i.pj) #21
  %i.pp = call i32 @exr_compress_buffer(ptr noundef %i.pm, i32 noundef 9, ptr noundef %i.pn, i64 noundef %i.pj, ptr noundef %.051.lcssa.i419, i64 noundef %i.po, ptr noundef nonnull %i.c) #21 ; 2 uses
  %.not381 = icmp eq i32 %i.pp, 0
  br i1 %.not381, label %.thread452, label %bb.ag

.thread452:                                       ; preds = %bb.af
  %i.pq = load i64, ptr %i.c, align 8, !tbaa !50  ; 3 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %.051.lcssa.i419, i64 %i.pq
  store i64 %i.pq, ptr %i.w, align 8, !tbaa !50
  %i.ps = add i64 %i.pq, %i.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %bb.ah

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %DwaCompressor_writeRelevantChannelRules.exit.thread

bb.ah:                                            ; preds = %.thread452, %._crit_edge527
  %.1414 = phi i64 [ %i.cl, %._crit_edge527 ], [ %i.ps, %.thread452 ] ; 2 uses
  %.1294 = phi ptr [ %.051.lcssa.i419, %._crit_edge527 ], [ %i.pr, %.thread452 ] ; 5 uses
  %i.pt = load i64, ptr %i.ac, align 8, !tbaa !50 ; 3 uses
  %.not382 = icmp eq i64 %i.pt, 0
  br i1 %.not382, label %bb.ao, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.pu = load i32, ptr %i.ct, align 8, !tbaa !26
  switch i32 %i.pu, label %DwaCompressor_writeRelevantChannelRules.exit.thread [
    i32 0, label %bb.aj
    i32 1, label %bb.al
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.pv = ptrtoint ptr %.1294 to i64
  %i.pw = ptrtoint ptr %i.s to i64
  %.neg = add i64 %i.o, %i.pw
  %3 = sub i64 %.neg, %i.pv
  %i.px = load ptr, ptr %i.cp, align 8, !tbaa !63
  %i.py = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 192
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !162
  %i.qb = getelementptr inbounds nuw i8, ptr %i.py, i64 200
  %i.qc = load i64, ptr %i.qb, align 8, !tbaa !163
  %i.qd = call i32 @internal_huf_compress(ptr noundef nonnull %i.x, ptr noundef %.1294, i64 noundef %3, ptr noundef %i.px, i64 noundef %i.pt, ptr noundef %i.qa, i64 noundef %i.qc) #21 ; 2 uses
  switch i32 %i.qd, label %DwaCompressor_writeRelevantChannelRules.exit.thread [
    i32 0, label %._crit_edge562
    i32 4, label %bb.ak
  ]

._crit_edge562:                                   ; preds = %bb.aj
  %.pre563 = load i64, ptr %i.x, align 8, !tbaa !50
  br label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.qe = load ptr, ptr %0, align 8, !tbaa !27    ; 3 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 168
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !158
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qe, i64 104
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !159
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qe, i64 120
  %i.qk = load i64, ptr %i.qj, align 8, !tbaa !164
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qg, ptr align 1 %i.qi, i64 %i.qk, i1 false)
  %i.ql = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 120
  %i.qn = load i64, ptr %i.qm, align 8, !tbaa !164
  %i.qo = getelementptr inbounds nuw i8, ptr %i.ql, i64 176
  store i64 %i.qn, ptr %i.qo, align 8, !tbaa !165
  br label %DwaCompressor_writeRelevantChannelRules.exit.thread

bb.al:                                            ; preds = %bb.ai
  %i.qp = shl i64 %i.pt, 1                        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  %i.qq = load ptr, ptr %0, align 8, !tbaa !27
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 24
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !29
  %i.qt = load ptr, ptr %i.cp, align 8, !tbaa !63
  %i.qu = call i64 @exr_compress_max_buffer_size(i64 noundef %i.qp) #21
  %i.qv = call i32 @exr_compress_buffer(ptr noundef %i.qs, i32 noundef 9, ptr noundef %i.qt, i64 noundef %i.qp, ptr noundef %.1294, i64 noundef %i.qu, ptr noundef nonnull %i.d) #21 ; 2 uses
  %.not383 = icmp eq i32 %i.qv, 0
  br i1 %.not383, label %.thread459, label %bb.am

.thread459:                                       ; preds = %bb.al
  %i.qw = load i64, ptr %i.d, align 8, !tbaa !50  ; 2 uses
  store i64 %i.qw, ptr %i.x, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  br label %bb.an

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  br label %DwaCompressor_writeRelevantChannelRules.exit.thread

bb.an:                                            ; preds = %._crit_edge562, %.thread459
  %i.qx = phi i64 [ %.pre563, %._crit_edge562 ], [ %i.qw, %.thread459 ] ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %.1294, i64 %i.qx
  %i.qz = add i64 %i.qx, %.1414
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.ah
  %.2 = phi i64 [ %.1414, %bb.ah ], [ %i.qz, %bb.an ] ; 2 uses
  %.2295 = phi ptr [ %.1294, %bb.ah ], [ %i.qy, %bb.an ] ; 3 uses
  %i.ra = load i64, ptr %i.ad, align 8, !tbaa !50 ; 2 uses
  %.not385 = icmp eq i64 %i.ra, 0
  br i1 %.not385, label %bb.as, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #21
  %i.rb = shl i64 %i.ra, 1                        ; 4 uses
  %i.rc = load ptr, ptr %0, align 8, !tbaa !27    ; 3 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 192
  %i.re = getelementptr inbounds nuw i8, ptr %i.rc, i64 200
  %i.rf = call i32 @internal_encode_alloc_buffer(ptr noundef %i.rc, i32 noundef 3, ptr noundef nonnull %i.rd, ptr noundef nonnull %i.re, i64 noundef %i.rb) #21 ; 2 uses
  %.not386 = icmp eq i32 %i.rf, 0
  br i1 %.not386, label %bb.aq, label %.thread462

bb.aq:                                            ; preds = %bb.ap
  %i.rg = load ptr, ptr %0, align 8, !tbaa !27
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 192
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !162
  %i.rj = load ptr, ptr %i.cr, align 8, !tbaa !64
  call void @internal_zip_deconstruct_bytes(ptr noundef %i.ri, ptr noundef %i.rj, i64 noundef %i.rb) #21
  %i.rk = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 24
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !29
  %i.rn = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ro = load i32, ptr %i.rn, align 8, !tbaa !166
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rk, i64 192
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !162
  %i.rr = call i64 @exr_compress_max_buffer_size(i64 noundef %i.rb) #21
  %i.rs = call i32 @exr_compress_buffer(ptr noundef %i.rm, i32 noundef %i.ro, ptr noundef %i.rq, i64 noundef %i.rb, ptr noundef %.2295, i64 noundef %i.rr, ptr noundef nonnull %i.e) #21 ; 2 uses
  %.not387 = icmp eq i32 %i.rs, 0
  br i1 %.not387, label %bb.ar, label %.thread462

.thread462:                                       ; preds = %bb.ap, %bb.aq
  %.19344.ph = phi i32 [ %i.rs, %bb.aq ], [ %i.rf, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  br label %DwaCompressor_writeRelevantChannelRules.exit.thread

bb.ar:                                            ; preds = %bb.aq
  %i.rt = load i64, ptr %i.e, align 8, !tbaa !50  ; 3 uses
  store i64 %i.rt, ptr %i.y, align 8, !tbaa !50
  %i.ru = getelementptr inbounds nuw i8, ptr %.2295, i64 %i.rt
  %i.rv = add i64 %i.rt, %.2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.ao
  %.4 = phi i64 [ %.2, %bb.ao ], [ %i.rv, %bb.ar ] ; 2 uses
  %.4297 = phi ptr [ %.2295, %bb.ao ], [ %i.ru, %bb.ar ] ; 3 uses
  %i.rw = load i64, ptr %i.ab, align 8, !tbaa !50 ; 2 uses
  %.not388 = icmp eq i64 %i.rw, 0
  br i1 %.not388, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #21
  %i.rx = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ry = load ptr, ptr %i.rx, align 8, !tbaa !86
  %i.rz = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.sa = load i64, ptr %i.rz, align 8, !tbaa !87
  %i.sb = load ptr, ptr %i.cz, align 8, !tbaa !65
  %i.sc = call i64 @internal_rle_compress(ptr noundef %i.ry, i64 noundef %i.sa, ptr noundef %i.sb, i64 noundef %i.rw) #21 ; 3 uses
  store i64 %i.sc, ptr %i.aa, align 8, !tbaa !50
  %i.sd = load ptr, ptr %0, align 8, !tbaa !27
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 24
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !29
  %i.sg = load ptr, ptr %i.rx, align 8, !tbaa !86
  %i.sh = call i64 @exr_compress_max_buffer_size(i64 noundef %i.sc) #21
  %i.si = call i32 @exr_compress_buffer(ptr noundef %i.sf, i32 noundef 9, ptr noundef %i.sg, i64 noundef %i.sc, ptr noundef %.4297, i64 noundef %i.sh, ptr noundef nonnull %i.f) #21 ; 2 uses
  %.not389 = icmp eq i32 %i.si, 0
  br i1 %.not389, label %.thread468, label %bb.au

.thread468:                                       ; preds = %bb.at
  %i.sj = load i64, ptr %i.f, align 8, !tbaa !50  ; 3 uses
  store i64 %i.sj, ptr %i.z, align 8, !tbaa !50
  %i.sk = getelementptr inbounds nuw i8, ptr %.4297, i64 %i.sj
  %i.sl = add i64 %i.sj, %.4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #21
  br label %bb.av

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #21
  br label %DwaCompressor_writeRelevantChannelRules.exit.thread

bb.av:                                            ; preds = %.thread468, %bb.as
  %.6415 = phi i64 [ %.4, %bb.as ], [ %i.sl, %.thread468 ] ; 3 uses
  %.6299 = phi ptr [ %.4297, %bb.as ], [ %i.sk, %.thread468 ]
  %i.sm = ptrtoint ptr %.6299 to i64
  %i.sn = load ptr, ptr %0, align 8, !tbaa !27    ; 4 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 168
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !158 ; 2 uses
  %i.sq = ptrtoint ptr %i.sp to i64
  %i.sr = sub i64 %i.sm, %i.sq
  %.not390 = icmp eq i64 %.6415, %i.sr
  br i1 %.not390, label %bb.aw, label %DwaCompressor_writeRelevantChannelRules.exit.thread

bb.aw:                                            ; preds = %bb.av
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sn, i64 112
  %i.st = load i64, ptr %i.ss, align 8, !tbaa !167 ; 2 uses
  %.not391 = icmp ult i64 %.6415, %i.st
  br i1 %.not391, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.su = getelementptr inbounds nuw i8, ptr %i.sn, i64 104
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !159
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.sp, ptr align 1 %i.sv, i64 %i.st, i1 false)
  %i.sw = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 112
  %i.sy = load i64, ptr %i.sx, align 8, !tbaa !167
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sw, i64 176
  store i64 %i.sy, ptr %i.sz, align 8, !tbaa !165
  br label %DwaCompressor_writeRelevantChannelRules.exit.thread

bb.ay:                                            ; preds = %bb.aw
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sn, i64 176
  store i64 %.6415, ptr %i.ta, align 8, !tbaa !165
  br label %DwaCompressor_writeRelevantChannelRules.exit.thread

DwaCompressor_writeRelevantChannelRules.exit.thread: ; preds = %bb.h, %bb.r, %bb.w, %bb.ab, %bb.z, %bb.aj, %bb.ak, %bb.c, %._crit_edge.i, %bb.au, %.thread462, %bb.am, %bb.ag, %bb.ax, %bb.ay, %bb.av, %bb.ai, %._crit_edge.i.thread, %bb.b, %bb.a
  %.22 = phi i32 [ 1, %bb.ab ], [ 1, %bb.a ], [ %i.p, %bb.b ], [ 1, %bb.w ], [ 0, %bb.ax ], [ 3, %bb.ai ], [ 23, %bb.av ], [ %i.si, %bb.au ], [ %.19344.ph, %.thread462 ], [ %i.qd, %bb.aj ], [ %i.qv, %bb.am ], [ %i.pp, %bb.ag ], [ 1, %bb.r ], [ 1, %._crit_edge.i.thread ], [ 0, %bb.ay ], [ 1, %._crit_edge.i ], [ 1, %bb.c ], [ 0, %bb.ak ], [ 3, %bb.z ], [ 1, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  ret i32 %.22
}

; Function Attrs: nounwind uwtable
define internal fastcc void @DwaCompressor_destroy(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !63   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32
  tail call void %i.d(ptr noundef nonnull %i.b) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !64   ; 2 uses
  %.not45 = icmp eq ptr %i.f, null
  br i1 %.not45, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 192
end_hunk_1
begin_hunk_2_@DwaCompressor_setupChannelData:.preheader61
  %i.x = mul nsw i64 %i.w, %i.t                   ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 25
  %i.z = load i8, ptr %i.y, align 1, !tbaa !68    ; 5 uses
  %i.aa = sext i8 %i.z to i64
  %i.ab = mul i64 %i.x, %i.aa                     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 536
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !69
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 548
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !42 ; 2 uses
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.af ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !65 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 456
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !70
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 464
  store ptr %i.ah, ptr %i.aj, align 16, !tbaa !71
  %i.ak = getelementptr inbounds nuw i8, ptr %i.o, i64 472 ; 6 uses
  store ptr %i.ah, ptr %i.ak, align 8, !tbaa !65
  %i.al = getelementptr inbounds nuw i8, ptr %i.o, i64 504 ; 6 uses
  store ptr %i.ah, ptr %i.al, align 8, !tbaa !65
  %.not = icmp eq ptr %i.ah, null
  %i.am = icmp sgt i8 %i.z, 1                     ; 2 uses
  br i1 %.not, label %.preheader, label %.preheader59

.preheader59:                                     ; preds = %bb.a
  br i1 %i.am, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader59
  %wide.trip.count = zext nneg i8 %i.z to i64
  %i.an = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %xtraiter = and i64 %i.an, 3                    ; 3 uses
  %i.ao = add nsw i8 %i.z, -2
  %i.ap = icmp ult i8 %i.ao, 3
  br i1 %i.ap, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.an, -4
  br label %.lr.ph

.preheader:                                       ; preds = %bb.a
  br i1 %i.am, label %.lr.ph65.preheader, label %.loopexit

.lr.ph65.preheader:                               ; preds = %.preheader
  %narrow = add nsw i8 %i.z, -1
  %i.aq = zext nneg i8 %narrow to i64
  %i.ar = shl nuw nsw i64 %i.aq, 3                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep, i8 0, i64 %i.ar, i1 false), !tbaa !65
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep71, i8 0, i64 %i.ar, i1 false), !tbaa !65
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.as = getelementptr [8 x i8], ptr %i.ak, i64 %indvars.iv ; 2 uses
  %i.at = getelementptr i8, ptr %i.as, i64 -8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !65
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.x ; 2 uses
  store ptr %i.av, ptr %i.as, align 8, !tbaa !65
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !65
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ax = getelementptr [8 x i8], ptr %i.ak, i64 %indvars.iv.next ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 -8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !65
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.x ; 2 uses
  store ptr %i.ba, ptr %i.ax, align 8, !tbaa !65
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !65
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bc = getelementptr [8 x i8], ptr %i.ak, i64 %indvars.iv.next.1 ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 -8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !65
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.x ; 2 uses
  store ptr %i.bf, ptr %i.bc, align 8, !tbaa !65
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next.1
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !65
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bh = getelementptr [8 x i8], ptr %i.ak, i64 %indvars.iv.next.2 ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 -8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !65
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.x ; 2 uses
  store ptr %i.bk, ptr %i.bh, align 8, !tbaa !65
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next.2
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !65
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !0

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod1 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod1)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.bm = getelementptr [8 x i8], ptr %i.ak, i64 %indvars.iv.epil ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bm, i64 -8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !65
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.x ; 2 uses
  store ptr %i.bp, ptr %i.bm, align 8, !tbaa !65
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.epil
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !65
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.epil, !llvm.loop !218

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.epil, %.lr.ph65.preheader, %.preheader59, %.preheader
  %i.br = getelementptr inbounds nuw i8, ptr %i.q, i64 26
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !44
  %i.bt = zext i16 %i.bs to i32
  %i.bu = getelementptr inbounds nuw i8, ptr %i.o, i64 552 ; 2 uses
  store i32 %i.bt, ptr %i.bu, align 8, !tbaa !72
  %i.bv = icmp eq i32 %i.ae, 1
  br i1 %i.bv, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.loopexit
  store i32 2, ptr %i.bu, align 8, !tbaa !72
  br label %bb.d

bb.c:                                             ; preds = %.loopexit
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ab
  store ptr %i.bw, ptr %i.ag, align 8, !tbaa !65
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %exitcond77.not = icmp eq i64 %indvar.next, %wide.trip.count76
  br i1 %exitcond77.not, label %._crit_edge, label %bb.a, !llvm.loop !1
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @DctCoderChannelData_push_row(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 408 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !75   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 400 ; 2 uses
  %i.d = load i64, ptr %i.c, align 16, !tbaa !76
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 392
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !77
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %i.b, 0
  %i.g = mul i64 %i.b, 3
  %i.h = lshr i64 %i.g, 1
  %i.i = select i1 %i.f, i64 16, i64 %i.h         ; 2 uses
  %i.j = shl i64 %i.i, 3
  %i.k = tail call ptr %0(i64 noundef %i.j) #21   ; 4 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 392 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !77   ; 2 uses
  %.not26 = icmp eq ptr %i.m, null
  br i1 %.not26, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load i64, ptr %i.a, align 8, !tbaa !75
  %i.o = shl i64 %i.n, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.k, ptr nonnull align 8 %i.m, i64 %i.o, i1 false)
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !77
  tail call void %1(ptr noundef %i.p) #21
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  store ptr %i.k, ptr %i.l, align 8, !tbaa !77
  store i64 %i.i, ptr %i.c, align 16, !tbaa !76
  %.pre27 = load i64, ptr %i.a, align 8, !tbaa !75
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %.thread
  %i.q = phi i64 [ %i.b, %._crit_edge ], [ %.pre27, %.thread ] ; 2 uses
  %i.r = phi ptr [ %.pre, %._crit_edge ], [ %i.k, %.thread ]
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.q
  store ptr %3, ptr %i.s, align 8, !tbaa !65
  %i.t = add i64 %i.q, 1
  store i64 %i.t, ptr %i.a, align 8, !tbaa !75
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e
  %.1 = phi i32 [ 0, %bb.e ], [ 1, %bb.b ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @LossyDctEncoder_execute(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull captures(none) initializes((8, 24)) %2) unnamed_addr #12 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 15 uses
  %i.b = alloca [64 x i16], align 16              ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !84   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 52 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !106  ; 2 uses
  %i.g = sitofp i32 %i.f to float
  %i.h = fmul nnan float %i.g, 1.250000e-01
  %i.i = tail call float @llvm.ceil.f32(float %i.h)
  %i.j = fptosi float %i.i to i32                 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !107  ; 2 uses
  %i.m = sitofp i32 %i.l to float
  %i.n = fmul nnan float %i.m, 1.250000e-01
  %i.o = tail call float @llvm.ceil.f32(float %i.n)
  %i.p = fptosi float %i.o to i32                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !108
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.u = icmp sgt i32 %i.d, 0                     ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  br i1 %i.u, label %.lr.ph, label %._crit_edge196.thread

._crit_edge196.thread:                            ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !109
  %i.x = load ptr, ptr %i.a, align 16, !tbaa !82  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 384
  store ptr %i.w, ptr %i.y, align 32, !tbaa !246
  br label %.preheader163

.lr.ph:                                           ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 6 uses
  %i.aa = sext i32 %i.f to i64
  %i.ab = sext i32 %i.l to i64
  %i.ac = mul nsw i64 %i.ab, %i.aa                ; 5 uses
  %i.ad = zext nneg i32 %i.d to i64               ; 4 uses
  %i.ae = shl nuw nsw i64 %i.ad, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 8 %i.z, i64 %i.ae, i1 false), !tbaa !82
  %i.af = add nsw i64 %i.ad, -1                   ; 2 uses
  %xtraiter = and i64 %i.ad, 3                    ; 3 uses
  %i.ag = icmp ult i32 %i.d, 4
  br i1 %i.ag, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.ad, 2147483644
  br label %bb.c

._crit_edge.unr-lcssa:                            ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  %.0133181.epil.init = phi i64 [ 0, %.lr.ph ], [ %.1134.3, %._crit_edge.unr-lcssa ]
  %lcmp.mod405 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod405)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 2 uses
  %.0133181.epil = phi i64 [ %.0133181.epil.init, %.epil.preheader ], [ %.1134.epil, %bb.b ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.epil
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !82
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 416
  %i.ak = load i32, ptr %i.aj, align 32, !tbaa !45
  %i.al = icmp eq i32 %i.ak, 2
  %i.am = select i1 %i.al, i64 %i.ac, i64 0
  %.1134.epil = add i64 %i.am, %.0133181.epil     ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.b, !llvm.loop !219

._crit_edge:                                      ; preds = %bb.b, %._crit_edge.unr-lcssa
  %.1134.lcssa = phi i64 [ %.1134.3, %._crit_edge.unr-lcssa ], [ %.1134.epil, %bb.b ] ; 2 uses
  %.not = icmp eq i64 %.1134.lcssa, 0
  br i1 %.not, label %.lr.ph195.preheader, label %bb.d

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.c ] ; 5 uses
  %.0133181 = phi i64 [ 0, %.lr.ph.new ], [ %.1134.3, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.c ]
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !82
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 416
  %i.aq = load i32, ptr %i.ap, align 32, !tbaa !45
  %i.ar = icmp eq i32 %i.aq, 2
  %i.as = select i1 %i.ar, i64 %i.ac, i64 0
  %.1134 = add i64 %i.as, %.0133181
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !82
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 416
  %i.ax = load i32, ptr %i.aw, align 32, !tbaa !45
  %i.ay = icmp eq i32 %i.ax, 2
  %i.az = select i1 %i.ay, i64 %i.ac, i64 0
  %.1134.1 = add i64 %i.az, %.1134
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !82
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 416
  %i.be = load i32, ptr %i.bd, align 32, !tbaa !45
  %i.bf = icmp eq i32 %i.be, 2
  %i.bg = select i1 %i.bf, i64 %i.ac, i64 0
  %.1134.2 = add i64 %i.bg, %.1134.1
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !82
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 416
  %i.bl = load i32, ptr %i.bk, align 32, !tbaa !45
  %i.bm = icmp eq i32 %i.bl, 2
  %i.bn = select i1 %i.bm, i64 %i.ac, i64 0
  %.1134.3 = add i64 %i.bn, %.1134.2              ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %bb.c, !llvm.loop !220

bb.d:                                             ; preds = %._crit_edge
  %i.bo = shl i64 %.1134.lcssa, 1
  %i.bp = tail call ptr %0(i64 noundef %i.bo) #21 ; 2 uses
  %.not146 = icmp eq ptr %i.bp, null
  br i1 %.not146, label %bb.fg, label %.lr.ph195.preheader

.lr.ph195.preheader:                              ; preds = %bb.d, %._crit_edge
  %.0130.ph = phi ptr [ %i.bp, %bb.d ], [ null, %._crit_edge ] ; 4 uses
  %wide.trip.count260 = zext nneg i32 %i.d to i64
  br label %.lr.ph195

._crit_edge196:                                   ; preds = %.loopexit
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !109
  %i.bs = load ptr, ptr %i.a, align 16, !tbaa !82 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 384
  store ptr %i.br, ptr %i.bt, align 32, !tbaa !246
  %.not385 = icmp eq i32 %i.d, 1
  br i1 %.not385, label %.preheader163, label %.lr.ph199

.lr.ph199:                                        ; preds = %._crit_edge196
  %i.bu = mul nsw i32 %i.p, %i.j
  %i.bv = sext i32 %i.bu to i64                   ; 5 uses
  %xtraiter414 = and i64 %i.af, 3                 ; 3 uses
  %i.bw = add nsw i32 %i.d, -2
  %i.bx = icmp ult i32 %i.bw, 3
  br i1 %i.bx, label %.epil.preheader413, label %.lr.ph199.new

.lr.ph199.new:                                    ; preds = %.lr.ph199
  %unroll_iter418 = and i64 %i.af, -4
  br label %bb.q

.lr.ph195:                                        ; preds = %.lr.ph195.preheader, %.loopexit
  %indvars.iv257 = phi i64 [ 0, %.lr.ph195.preheader ], [ %indvars.iv.next258, %.loopexit ] ; 2 uses
  %.1131192 = phi ptr [ %.0130.ph, %.lr.ph195.preheader ], [ %.3, %.loopexit ] ; 5 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv257
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !82 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 416
  %i.cb = load i32, ptr %i.ca, align 32, !tbaa !45
  %.not152 = icmp eq i32 %i.cb, 2
  br i1 %.not152, label %.preheader164, label %.loopexit

.preheader164:                                    ; preds = %.lr.ph195
  %i.cc = load i32, ptr %i.k, align 8, !tbaa !107 ; 3 uses
  %i.cd = icmp sgt i32 %i.cc, 0
  br i1 %i.cd, label %.lr.ph190, label %.loopexit

.lr.ph190:                                        ; preds = %.preheader164
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 392
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !77 ; 10 uses
  %i.cg = load i32, ptr %i.e, align 4, !tbaa !106 ; 3 uses
  %i.ch = icmp sgt i32 %i.cg, 0
  %i.ci = sext i32 %i.cg to i64                   ; 10 uses
  %wide.trip.count255 = zext nneg i32 %i.cc to i64 ; 3 uses
  br i1 %i.ch, label %.lr.ph185.us.preheader, label %.lr.ph190.split.preheader

.lr.ph190.split.preheader:                        ; preds = %.lr.ph190
  %xtraiter406 = and i64 %wide.trip.count255, 7   ; 3 uses
  %i.cj = icmp ult i32 %i.cc, 8
  br i1 %i.cj, label %.lr.ph190.split.epil.preheader, label %.lr.ph190.split.preheader.new

.lr.ph190.split.preheader.new:                    ; preds = %.lr.ph190.split.preheader
  %unroll_iter411 = and i64 %wide.trip.count255, 2147483640
  br label %.lr.ph190.split

.lr.ph185.us.preheader:                           ; preds = %.lr.ph190
  %wide.trip.count250 = zext nneg i32 %i.cg to i64
  br label %.lr.ph185.us

.lr.ph185.us:                                     ; preds = %.lr.ph185.us.preheader, %._crit_edge186.us
  %indvars.iv252 = phi i64 [ 0, %.lr.ph185.us.preheader ], [ %indvars.iv.next253, %._crit_edge186.us ] ; 2 uses
  %.2188.us = phi ptr [ %.1131192, %.lr.ph185.us.preheader ], [ %i.eh, %._crit_edge186.us ] ; 3 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv252 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !65
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph185.us, %float_to_half.exit.us
  %indvars.iv247 = phi i64 [ 0, %.lr.ph185.us ], [ %indvars.iv.next248, %float_to_half.exit.us ] ; 3 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv247
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !103 ; 3 uses
  %i.co = fcmp ogt float %i.cn, 6.550400e+04
  %i.cp = fcmp olt float %i.cn, -6.550400e+04
  %spec.store.select.us = select i1 %i.cp, float -6.550400e+04, float %i.cn
  %.0125.us = select i1 %i.co, float 6.550400e+04, float %spec.store.select.us ; 2 uses
  %i.cq = bitcast float %.0125.us to i32
  %i.cr = tail call float @llvm.fabs.f32(float %.0125.us)
  %i.cs = bitcast float %i.cr to i32              ; 10 uses
  %i.ct = lshr i32 %i.cq, 16                      ; 3 uses
  %i.cu = trunc nuw i32 %i.ct to i16
  %i.cv = and i16 %i.cu, -32768                   ; 3 uses
  %i.cw = icmp samesign ugt i32 %i.cs, 947912703
  br i1 %i.cw, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cx = icmp samesign ult i32 %i.cs, 855638017
  br i1 %i.cx, label %float_to_half.exit.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cy = lshr i32 %i.cs, 23                      ; 2 uses
  %i.cz = sub nuw nsw i32 126, %i.cy
  %i.da = and i32 %i.cs, 8388607
  %i.db = or disjoint i32 %i.da, 8388608          ; 2 uses
  %i.dc = add nsw i32 %i.cy, -94
  %i.dd = shl i32 %i.db, %i.dc                    ; 2 uses
  %i.de = lshr i32 %i.db, %i.cz                   ; 2 uses
  %i.df = and i32 %i.ct, 32768
  %i.dg = or i32 %i.de, %i.df
  %i.dh = trunc nuw i32 %i.dg to i16              ; 2 uses
  %i.di = icmp ugt i32 %i.dd, -2147483648
  br i1 %i.di, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dj = icmp ne i32 %i.dd, -2147483648
  %i.dk = and i32 %i.de, 1
  %.not.i.i.us = icmp eq i32 %i.dk, 0
  %or.cond.i.i.us = select i1 %i.dj, i1 true, i1 %.not.i.i.us
  br i1 %or.cond.i.i.us, label %float_to_half.exit.us, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.dl = add nuw i16 %i.dh, 1
  br label %float_to_half.exit.us

bb.j:                                             ; preds = %bb.e
  %i.dm = icmp samesign ugt i32 %i.cs, 2139095039
  br i1 %i.dm, label %bb.n, label %bb.k, !prof !104

bb.k:                                             ; preds = %bb.j
  %i.dn = icmp samesign ugt i32 %i.cs, 1199566847
  br i1 %i.dn, label %bb.m, label %bb.l, !prof !104

bb.l:                                             ; preds = %bb.k
  %i.do = add nuw nsw i32 %i.cs, 134221823
  %i.dp = lshr i32 %i.cs, 13
  %i.dq = and i32 %i.dp, 1
  %i.dr = add nuw nsw i32 %i.do, %i.dq
  %i.ds = lshr i32 %i.dr, 13
  %i.dt = and i32 %i.ct, 32768
  %i.du = or i32 %i.ds, %i.dt
  %i.dv = trunc i32 %i.du to i16
  br label %float_to_half.exit.us

bb.m:                                             ; preds = %bb.k
  %i.dw = or disjoint i16 %i.cv, 31744
  br label %float_to_half.exit.us

bb.n:                                             ; preds = %bb.j
  %i.dx = or disjoint i16 %i.cv, 31744            ; 2 uses
  %i.dy = icmp eq i32 %i.cs, 2139095040
  br i1 %i.dy, label %float_to_half.exit.us, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dz = lshr i32 %i.cs, 13
  %i.ea = and i32 %i.dz, 1023                     ; 2 uses
  %i.eb = icmp eq i32 %i.ea, 0
  %i.ec = zext i1 %i.eb to i16
  %i.ed = trunc nuw nsw i32 %i.ea to i16
  %i.ee = or i16 %i.ed, %i.ec
  %i.ef = or disjoint i16 %i.ee, %i.dx
  br label %float_to_half.exit.us

float_to_half.exit.us:                            ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.i, %bb.h, %bb.f
  %.033.i.i.us = phi i16 [ %i.cv, %bb.f ], [ %i.ef, %bb.o ], [ %i.dw, %bb.m ], [ %i.dv, %bb.l ], [ %i.dx, %bb.n ], [ %i.dl, %bb.i ], [ %i.dh, %bb.h ]
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %.2188.us, i64 %indvars.iv247
  store i16 %.033.i.i.us, ptr %i.eg, align 2, !tbaa !62
  %indvars.iv.next248 = add nuw nsw i64 %indvars.iv247, 1 ; 2 uses
  %exitcond251.not = icmp eq i64 %indvars.iv.next248, %wide.trip.count250
  br i1 %exitcond251.not, label %._crit_edge186.us, label %bb.e, !llvm.loop !221

._crit_edge186.us:                                ; preds = %float_to_half.exit.us
  store ptr %.2188.us, ptr %i.ck, align 8, !tbaa !65
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr %.2188.us, i64 %i.ci ; 2 uses
  %indvars.iv.next253 = add nuw nsw i64 %indvars.iv252, 1 ; 2 uses
  %exitcond256.not = icmp eq i64 %indvars.iv.next253, %wide.trip.count255
  br i1 %exitcond256.not, label %.loopexit, label %.lr.ph185.us, !llvm.loop !222

.lr.ph190.split:                                  ; preds = %.lr.ph190.split, %.lr.ph190.split.preheader.new
  %indvars.iv242 = phi i64 [ 0, %.lr.ph190.split.preheader.new ], [ %indvars.iv.next243.7, %.lr.ph190.split ] ; 9 uses
  %.2188 = phi ptr [ %.1131192, %.lr.ph190.split.preheader.new ], [ %i.fe, %.lr.ph190.split ] ; 2 uses
  %niter412 = phi i64 [ 0, %.lr.ph190.split.preheader.new ], [ %niter412.next.7, %.lr.ph190.split ]
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv242
  store ptr %.2188, ptr %i.ei, align 8, !tbaa !65
  %i.ej = getelementptr inbounds [2 x i8], ptr %.2188, i64 %i.ci ; 2 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv242
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  store ptr %i.ej, ptr %i.el, align 8, !tbaa !65
  %i.em = getelementptr inbounds [2 x i8], ptr %i.ej, i64 %i.ci ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv242
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  store ptr %i.em, ptr %i.eo, align 8, !tbaa !65
  %i.ep = getelementptr inbounds [2 x i8], ptr %i.em, i64 %i.ci ; 2 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv242
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  store ptr %i.ep, ptr %i.er, align 8, !tbaa !65
  %i.es = getelementptr inbounds [2 x i8], ptr %i.ep, i64 %i.ci ; 2 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv242
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 32
  store ptr %i.es, ptr %i.eu, align 8, !tbaa !65
  %i.ev = getelementptr inbounds [2 x i8], ptr %i.es, i64 %i.ci ; 2 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv242
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 40
  store ptr %i.ev, ptr %i.ex, align 8, !tbaa !65
  %i.ey = getelementptr inbounds [2 x i8], ptr %i.ev, i64 %i.ci ; 2 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv242
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 48
  store ptr %i.ey, ptr %i.fa, align 8, !tbaa !65
  %i.fb = getelementptr inbounds [2 x i8], ptr %i.ey, i64 %i.ci ; 2 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv242
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 56
  store ptr %i.fb, ptr %i.fd, align 8, !tbaa !65
  %i.fe = getelementptr inbounds [2 x i8], ptr %i.fb, i64 %i.ci ; 3 uses
  %indvars.iv.next243.7 = add nuw nsw i64 %indvars.iv242, 8 ; 2 uses
  %niter412.next.7 = add i64 %niter412, 8         ; 2 uses
  %niter412.ncmp.7 = icmp eq i64 %niter412.next.7, %unroll_iter411
  br i1 %niter412.ncmp.7, label %.loopexit.loopexit402.unr-lcssa, label %.lr.ph190.split, !llvm.loop !222

.loopexit.loopexit402.unr-lcssa:                  ; preds = %.lr.ph190.split
  %lcmp.mod408.not = icmp eq i64 %xtraiter406, 0
  br i1 %lcmp.mod408.not, label %.loopexit, label %.lr.ph190.split.epil.preheader

.lr.ph190.split.epil.preheader:                   ; preds = %.loopexit.loopexit402.unr-lcssa, %.lr.ph190.split.preheader
  %indvars.iv242.epil.init = phi i64 [ 0, %.lr.ph190.split.preheader ], [ %indvars.iv.next243.7, %.loopexit.loopexit402.unr-lcssa ]
  %.2188.epil.init = phi ptr [ %.1131192, %.lr.ph190.split.preheader ], [ %i.fe, %.loopexit.loopexit402.unr-lcssa ]
  %lcmp.mod410 = icmp ne i64 %xtraiter406, 0
  tail call void @llvm.assume(i1 %lcmp.mod410)
  br label %.lr.ph190.split.epil

.lr.ph190.split.epil:                             ; preds = %.lr.ph190.split.epil, %.lr.ph190.split.epil.preheader
  %indvars.iv242.epil = phi i64 [ %indvars.iv.next243.epil, %.lr.ph190.split.epil ], [ %indvars.iv242.epil.init, %.lr.ph190.split.epil.preheader ] ; 2 uses
  %.2188.epil = phi ptr [ %i.fg, %.lr.ph190.split.epil ], [ %.2188.epil.init, %.lr.ph190.split.epil.preheader ] ; 2 uses
  %epil.iter407 = phi i64 [ %epil.iter407.next, %.lr.ph190.split.epil ], [ 0, %.lr.ph190.split.epil.preheader ]
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv242.epil
  store ptr %.2188.epil, ptr %i.ff, align 8, !tbaa !65
  %i.fg = getelementptr inbounds [2 x i8], ptr %.2188.epil, i64 %i.ci ; 2 uses
  %indvars.iv.next243.epil = add nuw nsw i64 %indvars.iv242.epil, 1
  %epil.iter407.next = add i64 %epil.iter407, 1   ; 2 uses
  %epil.iter407.cmp.not = icmp eq i64 %epil.iter407.next, %xtraiter406
  br i1 %epil.iter407.cmp.not, label %.loopexit, label %.lr.ph190.split.epil, !llvm.loop !223

.loopexit:                                        ; preds = %.loopexit.loopexit402.unr-lcssa, %.lr.ph190.split.epil, %._crit_edge186.us, %.preheader164, %.lr.ph195
  %.3 = phi ptr [ %.1131192, %.lr.ph195 ], [ %.1131192, %.preheader164 ], [ %i.eh, %._crit_edge186.us ], [ %i.fe, %.loopexit.loopexit402.unr-lcssa ], [ %i.fg, %.lr.ph190.split.epil ]
  %indvars.iv.next258 = add nuw nsw i64 %indvars.iv257, 1 ; 2 uses
  %exitcond261.not = icmp eq i64 %indvars.iv.next258, %wide.trip.count260
  br i1 %exitcond261.not, label %._crit_edge196, label %.lr.ph195, !llvm.loop !224

.preheader163.loopexit.unr-lcssa:                 ; preds = %bb.q
  %lcmp.mod416.not = icmp eq i64 %xtraiter414, 0
  br i1 %lcmp.mod416.not, label %.preheader163, label %.epil.preheader413

.epil.preheader413:                               ; preds = %.preheader163.loopexit.unr-lcssa, %.lr.ph199
  %indvars.iv262.epil.init = phi i64 [ 1, %.lr.ph199 ], [ %indvars.iv.next263.3, %.preheader163.loopexit.unr-lcssa ]
  %lcmp.mod417 = icmp ne i64 %xtraiter414, 0
  tail call void @llvm.assume(i1 %lcmp.mod417)
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.epil.preheader413
  %indvars.iv262.epil = phi i64 [ %indvars.iv262.epil.init, %.epil.preheader413 ], [ %indvars.iv.next263.epil, %bb.p ] ; 2 uses
  %epil.iter415 = phi i64 [ 0, %.epil.preheader413 ], [ %epil.iter415.next, %bb.p ]
  %i.fh = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv262.epil ; 2 uses
  %i.fi = getelementptr i8, ptr %i.fh, i64 -8
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !82
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 384
  %i.fl = load ptr, ptr %i.fk, align 32, !tbaa !246
  %i.fm = getelementptr inbounds [2 x i8], ptr %i.fl, i64 %i.bv
  %i.fn = load ptr, ptr %i.fh, align 8, !tbaa !82
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 384
  store ptr %i.fm, ptr %i.fo, align 32, !tbaa !246
  %indvars.iv.next263.epil = add nuw nsw i64 %indvars.iv262.epil, 1
  %epil.iter415.next = add i64 %epil.iter415, 1   ; 2 uses
  %epil.iter415.cmp.not = icmp eq i64 %epil.iter415.next, %xtraiter414
  br i1 %epil.iter415.cmp.not, label %.preheader163, label %bb.p, !llvm.loop !225

.preheader163:                                    ; preds = %.preheader163.loopexit.unr-lcssa, %bb.p, %._crit_edge196.thread, %._crit_edge196
  %i.fp = phi ptr [ %i.x, %._crit_edge196.thread ], [ %i.bs, %._crit_edge196 ], [ %i.bs, %bb.p ], [ %i.bs, %.preheader163.loopexit.unr-lcssa ] ; 4 uses
  %.0130377380 = phi ptr [ null, %._crit_edge196.thread ], [ %.0130.ph, %._crit_edge196 ], [ %.0130.ph, %bb.p ], [ %.0130.ph, %.preheader163.loopexit.unr-lcssa ] ; 2 uses
  %i.fq = icmp sgt i32 %i.p, 0
  br i1 %i.fq, label %.preheader162.lr.ph, label %._crit_edge220.split

.preheader162.lr.ph:                              ; preds = %.preheader163
  %i.fr = icmp sgt i32 %i.j, 0
  %i.fs = icmp eq i32 %i.d, 3
  %i.ft = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %3 = load <2 x ptr>, ptr %i.ft, align 8         ; 4 uses
  %4 = extractelement <2 x ptr> %3, i64 1         ; 4 uses
  %5 = extractelement <2 x ptr> %3, i64 0         ; 4 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.fv = getelementptr inbounds nuw i8, ptr %2, i64 336
  %i.fw = getelementptr inbounds nuw i8, ptr %2, i64 464
  %i.fx = getelementptr inbounds nuw i8, ptr %2, i64 720
  br i1 %i.fr, label %.preheader162.preheader, label %._crit_edge220.split

.preheader162.preheader:                          ; preds = %.preheader162.lr.ph
  %wide.trip.count306 = zext nneg i32 %i.p to i64
  %wide.trip.count301 = zext nneg i32 %i.j to i64
  %wide.trip.count278 = zext nneg i32 %i.d to i64
  %wide.trip.count291 = zext nneg i32 %i.d to i64
  %wide.trip.count296 = zext nneg i32 %i.d to i64
  %scevgep = getelementptr i8, ptr %i.fp, i64 256
  %scevgep389 = getelementptr i8, ptr %5, i64 256
  %6 = getelementptr i8, <2 x ptr> %3, i64 256
  %scevgep390 = getelementptr i8, ptr %4, i64 256
  %7 = insertelement <2 x ptr> poison, ptr %i.fp, i64 0
  %8 = shufflevector <2 x ptr> %7, <2 x ptr> poison, <2 x i32> zeroinitializer
  %9 = insertelement <2 x ptr> poison, ptr %scevgep, i64 0
  %10 = shufflevector <2 x ptr> %9, <2 x ptr> poison, <2 x i32> zeroinitializer
  %11 = icmp ult <2 x ptr> %8, %6
  %12 = icmp ult <2 x ptr> %3, %10
  %13 = and <2 x i1> %11, %12
  %14 = bitcast <2 x i1> %13 to i2
  %15 = icmp ne i2 %14, 0
  %bound0394 = icmp ult ptr %5, %scevgep390
  %bound1395 = icmp ult ptr %4, %scevgep389
  %found.conflict396 = and i1 %bound0394, %bound1395
  %conflict.rdx397 = or i1 %15, %found.conflict396
  br label %.preheader162

bb.q:                                             ; preds = %bb.q, %.lr.ph199.new
  %indvars.iv262 = phi i64 [ 1, %.lr.ph199.new ], [ %indvars.iv.next263.3, %bb.q ] ; 5 uses
  %niter419 = phi i64 [ 0, %.lr.ph199.new ], [ %niter419.next.3, %bb.q ]
  %i.fy = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv262 ; 2 uses
  %i.fz = getelementptr i8, ptr %i.fy, i64 -8
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !82
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 384
  %i.gc = load ptr, ptr %i.gb, align 32, !tbaa !246
  %i.gd = getelementptr inbounds [2 x i8], ptr %i.gc, i64 %i.bv ; 2 uses
  %i.ge = load ptr, ptr %i.fy, align 8, !tbaa !82
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 384
  store ptr %i.gd, ptr %i.gf, align 32, !tbaa !246
  %i.gg = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv262
  %i.gh = getelementptr i8, ptr %i.gg, i64 8
  %i.gi = getelementptr inbounds [2 x i8], ptr %i.gd, i64 %i.bv ; 2 uses
  %i.gj = load ptr, ptr %i.gh, align 8, !tbaa !82
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 384
  store ptr %i.gi, ptr %i.gk, align 32, !tbaa !246
  %i.gl = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv262
  %i.gm = getelementptr i8, ptr %i.gl, i64 16
  %i.gn = getelementptr inbounds [2 x i8], ptr %i.gi, i64 %i.bv ; 2 uses
  %i.go = load ptr, ptr %i.gm, align 8, !tbaa !82
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 384
  store ptr %i.gn, ptr %i.gp, align 32, !tbaa !246
  %i.gq = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv262
  %i.gr = getelementptr i8, ptr %i.gq, i64 24
  %i.gs = getelementptr inbounds [2 x i8], ptr %i.gn, i64 %i.bv
  %i.gt = load ptr, ptr %i.gr, align 8, !tbaa !82
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 384
  store ptr %i.gs, ptr %i.gu, align 32, !tbaa !246
  %indvars.iv.next263.3 = add nuw nsw i64 %indvars.iv262, 4 ; 2 uses
  %niter419.next.3 = add i64 %niter419, 4         ; 2 uses
  %niter419.ncmp.3 = icmp eq i64 %niter419.next.3, %unroll_iter418
  br i1 %niter419.ncmp.3, label %.preheader163.loopexit.unr-lcssa, label %bb.q, !llvm.loop !226

.preheader162:                                    ; preds = %.preheader162.preheader, %._crit_edge216
  %indvars.iv303 = phi i64 [ 0, %.preheader162.preheader ], [ %indvars.iv.next304, %._crit_edge216 ] ; 2 uses
  %.0157218 = phi ptr [ %i.r, %.preheader162.preheader ], [ %.2159.lcssa, %._crit_edge216 ]
  %i.gv = shl nuw nsw i64 %indvars.iv303, 3       ; 2 uses
  br label %.preheader161

._crit_edge220.split:                             ; preds = %._crit_edge216, %.preheader162.lr.ph, %.preheader163
  %.not147 = icmp eq ptr %.0130377380, null
  br i1 %.not147, label %bb.fg, label %bb.ff

.preheader161:                                    ; preds = %.preheader162, %._crit_edge212
  %indvars.iv298 = phi i64 [ 0, %.preheader162 ], [ %indvars.iv.next299, %._crit_edge212 ] ; 2 uses
  %.1158214 = phi ptr [ %.0157218, %.preheader162 ], [ %.2159.lcssa, %._crit_edge212 ] ; 2 uses
  br i1 %i.u, label %.preheader160.lr.ph, label %._crit_edge212

.preheader160.lr.ph:                              ; preds = %.preheader161
  %i.gw = load i32, ptr %i.e, align 4, !tbaa !106 ; 3 uses
  %reass.add = shl i32 %i.gw, 1
  %i.gx = add nsw i32 %i.gw, -1
  %i.gy = load i32, ptr %i.k, align 8, !tbaa !107 ; 4 uses
  %reass.add150 = shl i32 %i.gy, 1                ; 2 uses
  %i.gz = add nsw i32 %i.gy, -1                   ; 2 uses
  %i.ha = load ptr, ptr %2, align 8, !tbaa !110   ; 9 uses
  %.not151 = icmp eq ptr %i.ha, null
  %indvars.iv298.tr = trunc i64 %indvars.iv298 to i32
  %i.hb = shl i32 %indvars.iv298.tr, 3
  %i.hc = insertelement <8 x i32> poison, i32 %i.hb, i64 0
  %i.hd = shufflevector <8 x i32> %i.hc, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.he = or disjoint <8 x i32> %i.hd, <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0> ; 2 uses
  %i.hf = insertelement <8 x i32> poison, i32 %i.gw, i64 0
  %i.hg = shufflevector <8 x i32> %i.hf, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.hh = icmp slt <8 x i32> %i.he, %i.hg
  %i.hi = xor <8 x i32> %i.hd, <i32 -8, i32 -7, i32 -6, i32 -5, i32 -4, i32 -3, i32 -2, i32 -1>
  %i.hj = insertelement <8 x i32> poison, i32 %reass.add, i64 0
  %i.hk = shufflevector <8 x i32> %i.hj, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.hl = add <8 x i32> %i.hk, %i.hi
  %i.hm = select <8 x i1> %i.hh, <8 x i32> %i.he, <8 x i32> %i.hl ; 3 uses
  %i.hn = icmp slt <8 x i32> %i.hm, zeroinitializer ; 2 uses
  %i.ho = shufflevector <8 x i1> %i.hn, <8 x i1> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.hp = insertelement <4 x i32> poison, i32 %i.gx, i64 0
  %i.hq = shufflevector <4 x i32> %i.hp, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.hr = shufflevector <8 x i32> %i.hm, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.hs = select <4 x i1> %i.ho, <4 x i32> %i.hq, <4 x i32> %i.hr ; 4 uses
  %i.ht = extractelement <4 x i32> %i.hs, i64 3
  %i.hu = sext i32 %i.ht to i64                   ; 2 uses
  %i.hv = extractelement <4 x i32> %i.hs, i64 2
  %i.hw = sext i32 %i.hv to i64                   ; 2 uses
  %i.hx = extractelement <4 x i32> %i.hs, i64 1
  %i.hy = sext i32 %i.hx to i64                   ; 2 uses
  %i.hz = extractelement <4 x i32> %i.hs, i64 0
  %i.ia = sext i32 %i.hz to i64                   ; 2 uses
  %i.ib = shufflevector <8 x i1> %i.hn, <8 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ic = shufflevector <8 x i32> %i.hm, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.id = select <4 x i1> %i.ib, <4 x i32> %i.hq, <4 x i32> %i.ic ; 4 uses
  %i.ie = extractelement <4 x i32> %i.id, i64 3
  %i.if = sext i32 %i.ie to i64                   ; 2 uses
  %i.ig = extractelement <4 x i32> %i.id, i64 2
  %i.ih = sext i32 %i.ig to i64                   ; 2 uses
  %i.ii = extractelement <4 x i32> %i.id, i64 1
  %i.ij = sext i32 %i.ii to i64                   ; 2 uses
  %i.ik = extractelement <4 x i32> %i.id, i64 0
  %i.il = sext i32 %i.ik to i64                   ; 2 uses
  br i1 %.not151, label %.preheader160.us, label %.preheader160

.preheader160.us:                                 ; preds = %.preheader160.lr.ph, %.split203.us.us
  %indvars.iv288 = phi i64 [ %indvars.iv.next289, %.split203.us.us ], [ 0, %.preheader160.lr.ph ] ; 2 uses
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv288
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !82 ; 9 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 392
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !77
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %half_to_float.exit.us.us.us.7, %.preheader160.us
  %indvars.iv284 = phi i64 [ %indvars.iv.next285, %half_to_float.exit.us.us.us.7 ], [ 0, %.preheader160.us ] ; 3 uses
  %i.iq = add nuw nsw i64 %indvars.iv284, %i.gv
  %i.ir = trunc nuw i64 %i.iq to i32              ; 3 uses
  %.not149.us.us = icmp sgt i32 %i.gy, %i.ir
  %i.is = xor i32 %i.ir, -1
  %i.it = add i32 %reass.add150, %i.is
  %.0113.us.us = select i1 %.not149.us.us, i32 %i.ir, i32 %i.it ; 2 uses
  %i.iu = icmp slt i32 %.0113.us.us, 0
  %.1.us.us = select i1 %i.iu, i32 %i.gz, i32 %.0113.us.us
  %i.iv = sext i32 %.1.us.us to i64
  %i.iw = getelementptr inbounds [8 x i8], ptr %i.ip, i64 %i.iv
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !65 ; 8 uses
  %i.iy = shl nuw nsw i64 %indvars.iv284, 3       ; 8 uses
  %i.iz = getelementptr inbounds [2 x i8], ptr %i.ix, i64 %i.hu
  %i.ja = load i16, ptr %i.iz, align 2, !tbaa !62 ; 2 uses
  %i.jb = zext i16 %i.ja to i32
  %i.jc = shl nuw nsw i32 %i.jb, 13
  %i.jd = and i32 %i.jc, 268427264                ; 6 uses
  %.signext.i.i.us.us.us = sext i16 %i.ja to i32
  %i.je = and i32 %.signext.i.i.us.us.us, -2147483648 ; 3 uses
  %i.jf = icmp samesign ugt i32 %i.jd, 8388607
  br i1 %i.jf, label %bb.t, label %bb.r, !prof !105

bb.r:                                             ; preds = %.preheader.us.us
  %.not.i.i153.us.us.us = icmp eq i32 %i.jd, 0
  br i1 %.not.i.i153.us.us.us, label %half_to_float.exit.us.us.us, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.jg = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.jd, i1 true)
  %i.jh = add nsw i32 %i.jg, -8                   ; 2 uses
  %i.ji = shl i32 %i.jd, %i.jh
  %i.jj = or i32 %i.je, %i.ji
  %i.jk = or i32 %i.jj, 947912704
  %i.jl = shl nuw nsw i32 %i.jh, 23
  %i.jm = sub nuw i32 %i.jk, %i.jl
  br label %half_to_float.exit.us.us.us

bb.t:                                             ; preds = %.preheader.us.us
  %i.jn = or disjoint i32 %i.jd, %i.je            ; 2 uses
  %i.jo = icmp samesign ult i32 %i.jd, 260046848
  br i1 %i.jo, label %bb.v, label %bb.u, !prof !105

bb.u:                                             ; preds = %bb.t
  %i.jp = or i32 %i.jn, 2139095040
  br label %half_to_float.exit.us.us.us

bb.v:                                             ; preds = %bb.t
  %i.jq = add nuw nsw i32 %i.jn, 939524096
  br label %half_to_float.exit.us.us.us

half_to_float.exit.us.us.us:                      ; preds = %bb.v, %bb.u, %bb.s, %bb.r
  %.sroa.0.0.i.i.us.us.us = phi i32 [ %i.jq, %bb.v ], [ %i.jp, %bb.u ], [ %i.jm, %bb.s ], [ %i.je, %bb.r ]
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %i.iy
  store i32 %.sroa.0.0.i.i.us.us.us, ptr %i.jr, align 4, !tbaa !103
  %i.js = getelementptr inbounds [2 x i8], ptr %i.ix, i64 %i.hw
  %i.jt = load i16, ptr %i.js, align 2, !tbaa !62 ; 2 uses
  %i.ju = zext i16 %i.jt to i32
  %i.jv = shl nuw nsw i32 %i.ju, 13
  %i.jw = and i32 %i.jv, 268427264                ; 6 uses
  %.signext.i.i.us.us.us.1 = sext i16 %i.jt to i32
  %i.jx = and i32 %.signext.i.i.us.us.us.1, -2147483648 ; 3 uses
  %i.jy = icmp samesign ugt i32 %i.jw, 8388607
  br i1 %i.jy, label %bb.y, label %bb.w, !prof !105

bb.w:                                             ; preds = %half_to_float.exit.us.us.us
  %.not.i.i153.us.us.us.1 = icmp eq i32 %i.jw, 0
  br i1 %.not.i.i153.us.us.us.1, label %half_to_float.exit.us.us.us.1, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.jz = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.jw, i1 true)
  %i.ka = add nsw i32 %i.jz, -8                   ; 2 uses
  %i.kb = shl i32 %i.jw, %i.ka
  %i.kc = or i32 %i.jx, %i.kb
  %i.kd = or i32 %i.kc, 947912704
  %i.ke = shl nuw nsw i32 %i.ka, 23
  %i.kf = sub nuw i32 %i.kd, %i.ke
  br label %half_to_float.exit.us.us.us.1

bb.y:                                             ; preds = %half_to_float.exit.us.us.us
  %i.kg = or disjoint i32 %i.jw, %i.jx            ; 2 uses
  %i.kh = icmp samesign ult i32 %i.jw, 260046848
  br i1 %i.kh, label %bb.aa, label %bb.z, !prof !105

bb.z:                                             ; preds = %bb.y
  %i.ki = or i32 %i.kg, 2139095040
  br label %half_to_float.exit.us.us.us.1

bb.aa:                                            ; preds = %bb.y
  %i.kj = add nuw nsw i32 %i.kg, 939524096
  br label %half_to_float.exit.us.us.us.1

half_to_float.exit.us.us.us.1:                    ; preds = %bb.aa, %bb.z, %bb.x, %bb.w
  %.sroa.0.0.i.i.us.us.us.1 = phi i32 [ %i.kj, %bb.aa ], [ %i.ki, %bb.z ], [ %i.kf, %bb.x ], [ %i.jx, %bb.w ]
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %i.iy
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 4
  store i32 %.sroa.0.0.i.i.us.us.us.1, ptr %i.kl, align 4, !tbaa !103
  %i.km = getelementptr inbounds [2 x i8], ptr %i.ix, i64 %i.hy
  %i.kn = load i16, ptr %i.km, align 2, !tbaa !62 ; 2 uses
  %i.ko = zext i16 %i.kn to i32
  %i.kp = shl nuw nsw i32 %i.ko, 13
  %i.kq = and i32 %i.kp, 268427264                ; 6 uses
  %.signext.i.i.us.us.us.2 = sext i16 %i.kn to i32
  %i.kr = and i32 %.signext.i.i.us.us.us.2, -2147483648 ; 3 uses
  %i.ks = icmp samesign ugt i32 %i.kq, 8388607
  br i1 %i.ks, label %bb.ad, label %bb.ab, !prof !105

bb.ab:                                            ; preds = %half_to_float.exit.us.us.us.1
  %.not.i.i153.us.us.us.2 = icmp eq i32 %i.kq, 0
  br i1 %.not.i.i153.us.us.us.2, label %half_to_float.exit.us.us.us.2, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.kt = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.kq, i1 true)
  %i.ku = add nsw i32 %i.kt, -8                   ; 2 uses
  %i.kv = shl i32 %i.kq, %i.ku
  %i.kw = or i32 %i.kr, %i.kv
  %i.kx = or i32 %i.kw, 947912704
  %i.ky = shl nuw nsw i32 %i.ku, 23
  %i.kz = sub nuw i32 %i.kx, %i.ky
  br label %half_to_float.exit.us.us.us.2

bb.ad:                                            ; preds = %half_to_float.exit.us.us.us.1
  %i.la = or disjoint i32 %i.kq, %i.kr            ; 2 uses
  %i.lb = icmp samesign ult i32 %i.kq, 260046848
  br i1 %i.lb, label %bb.af, label %bb.ae, !prof !105

bb.ae:                                            ; preds = %bb.ad
  %i.lc = or i32 %i.la, 2139095040
  br label %half_to_float.exit.us.us.us.2

bb.af:                                            ; preds = %bb.ad
  %i.ld = add nuw nsw i32 %i.la, 939524096
end_hunk_2
begin_hunk_3_@LossyDctEncoder_execute:bb.a
  %i.md = shl nuw nsw i32 %i.mc, 13
  %i.me = and i32 %i.md, 268427264                ; 6 uses
  %.signext.i.i.us.us.us.4 = sext i16 %i.mb to i32
  %i.mf = and i32 %.signext.i.i.us.us.us.4, -2147483648 ; 3 uses
  %i.mg = icmp samesign ugt i32 %i.me, 8388607
  br i1 %i.mg, label %bb.an, label %bb.al, !prof !105

bb.al:                                            ; preds = %half_to_float.exit.us.us.us.3
  %.not.i.i153.us.us.us.4 = icmp eq i32 %i.me, 0
  br i1 %.not.i.i153.us.us.us.4, label %half_to_float.exit.us.us.us.4, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.mh = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.me, i1 true)
  %i.mi = add nsw i32 %i.mh, -8                   ; 2 uses
  %i.mj = shl i32 %i.me, %i.mi
  %i.mk = or i32 %i.mf, %i.mj
  %i.ml = or i32 %i.mk, 947912704
  %i.mm = shl nuw nsw i32 %i.mi, 23
  %i.mn = sub nuw i32 %i.ml, %i.mm
  br label %half_to_float.exit.us.us.us.4

bb.an:                                            ; preds = %half_to_float.exit.us.us.us.3
  %i.mo = or disjoint i32 %i.me, %i.mf            ; 2 uses
  %i.mp = icmp samesign ult i32 %i.me, 260046848
  br i1 %i.mp, label %bb.ap, label %bb.ao, !prof !105

bb.ao:                                            ; preds = %bb.an
  %i.mq = or i32 %i.mo, 2139095040
  br label %half_to_float.exit.us.us.us.4

bb.ap:                                            ; preds = %bb.an
  %i.mr = add nuw nsw i32 %i.mo, 939524096
  br label %half_to_float.exit.us.us.us.4

half_to_float.exit.us.us.us.4:                    ; preds = %bb.ap, %bb.ao, %bb.am, %bb.al
  %.sroa.0.0.i.i.us.us.us.4 = phi i32 [ %i.mr, %bb.ap ], [ %i.mq, %bb.ao ], [ %i.mn, %bb.am ], [ %i.mf, %bb.al ]
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %i.iy
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 16
  store i32 %.sroa.0.0.i.i.us.us.us.4, ptr %i.mt, align 4, !tbaa !103
  %i.mu = getelementptr inbounds [2 x i8], ptr %i.ix, i64 %i.ih
  %i.mv = load i16, ptr %i.mu, align 2, !tbaa !62 ; 2 uses
  %i.mw = zext i16 %i.mv to i32
  %i.mx = shl nuw nsw i32 %i.mw, 13
  %i.my = and i32 %i.mx, 268427264                ; 6 uses
  %.signext.i.i.us.us.us.5 = sext i16 %i.mv to i32
  %i.mz = and i32 %.signext.i.i.us.us.us.5, -2147483648 ; 3 uses
  %i.na = icmp samesign ugt i32 %i.my, 8388607
  br i1 %i.na, label %bb.as, label %bb.aq, !prof !105

bb.aq:                                            ; preds = %half_to_float.exit.us.us.us.4
  %.not.i.i153.us.us.us.5 = icmp eq i32 %i.my, 0
  br i1 %.not.i.i153.us.us.us.5, label %half_to_float.exit.us.us.us.5, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.nb = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.my, i1 true)
  %i.nc = add nsw i32 %i.nb, -8                   ; 2 uses
  %i.nd = shl i32 %i.my, %i.nc
  %i.ne = or i32 %i.mz, %i.nd
  %i.nf = or i32 %i.ne, 947912704
  %i.ng = shl nuw nsw i32 %i.nc, 23
  %i.nh = sub nuw i32 %i.nf, %i.ng
  br label %half_to_float.exit.us.us.us.5

bb.as:                                            ; preds = %half_to_float.exit.us.us.us.4
  %i.ni = or disjoint i32 %i.my, %i.mz            ; 2 uses
  %i.nj = icmp samesign ult i32 %i.my, 260046848
  br i1 %i.nj, label %bb.au, label %bb.at, !prof !105

bb.at:                                            ; preds = %bb.as
  %i.nk = or i32 %i.ni, 2139095040
  br label %half_to_float.exit.us.us.us.5

bb.au:                                            ; preds = %bb.as
  %i.nl = add nuw nsw i32 %i.ni, 939524096
  br label %half_to_float.exit.us.us.us.5

half_to_float.exit.us.us.us.5:                    ; preds = %bb.au, %bb.at, %bb.ar, %bb.aq
  %.sroa.0.0.i.i.us.us.us.5 = phi i32 [ %i.nl, %bb.au ], [ %i.nk, %bb.at ], [ %i.nh, %bb.ar ], [ %i.mz, %bb.aq ]
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %i.iy
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 20
  store i32 %.sroa.0.0.i.i.us.us.us.5, ptr %i.nn, align 4, !tbaa !103
  %i.no = getelementptr inbounds [2 x i8], ptr %i.ix, i64 %i.ij
  %i.np = load i16, ptr %i.no, align 2, !tbaa !62 ; 2 uses
  %i.nq = zext i16 %i.np to i32
  %i.nr = shl nuw nsw i32 %i.nq, 13
  %i.ns = and i32 %i.nr, 268427264                ; 6 uses
  %.signext.i.i.us.us.us.6 = sext i16 %i.np to i32
  %i.nt = and i32 %.signext.i.i.us.us.us.6, -2147483648 ; 3 uses
  %i.nu = icmp samesign ugt i32 %i.ns, 8388607
  br i1 %i.nu, label %bb.ax, label %bb.av, !prof !105

bb.av:                                            ; preds = %half_to_float.exit.us.us.us.5
  %.not.i.i153.us.us.us.6 = icmp eq i32 %i.ns, 0
  br i1 %.not.i.i153.us.us.us.6, label %half_to_float.exit.us.us.us.6, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.nv = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.ns, i1 true)
  %i.nw = add nsw i32 %i.nv, -8                   ; 2 uses
  %i.nx = shl i32 %i.ns, %i.nw
  %i.ny = or i32 %i.nt, %i.nx
  %i.nz = or i32 %i.ny, 947912704
  %i.oa = shl nuw nsw i32 %i.nw, 23
  %i.ob = sub nuw i32 %i.nz, %i.oa
  br label %half_to_float.exit.us.us.us.6

bb.ax:                                            ; preds = %half_to_float.exit.us.us.us.5
  %i.oc = or disjoint i32 %i.ns, %i.nt            ; 2 uses
  %i.od = icmp samesign ult i32 %i.ns, 260046848
  br i1 %i.od, label %bb.az, label %bb.ay, !prof !105

bb.ay:                                            ; preds = %bb.ax
  %i.oe = or i32 %i.oc, 2139095040
  br label %half_to_float.exit.us.us.us.6

bb.az:                                            ; preds = %bb.ax
  %i.of = add nuw nsw i32 %i.oc, 939524096
  br label %half_to_float.exit.us.us.us.6

half_to_float.exit.us.us.us.6:                    ; preds = %bb.az, %bb.ay, %bb.aw, %bb.av
  %.sroa.0.0.i.i.us.us.us.6 = phi i32 [ %i.of, %bb.az ], [ %i.oe, %bb.ay ], [ %i.ob, %bb.aw ], [ %i.nt, %bb.av ]
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %i.iy
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 24
  store i32 %.sroa.0.0.i.i.us.us.us.6, ptr %i.oh, align 4, !tbaa !103
  %i.oi = getelementptr inbounds [2 x i8], ptr %i.ix, i64 %i.il
  %i.oj = load i16, ptr %i.oi, align 2, !tbaa !62 ; 2 uses
  %i.ok = zext i16 %i.oj to i32
  %i.ol = shl nuw nsw i32 %i.ok, 13
  %i.om = and i32 %i.ol, 268427264                ; 6 uses
  %.signext.i.i.us.us.us.7 = sext i16 %i.oj to i32
  %i.on = and i32 %.signext.i.i.us.us.us.7, -2147483648 ; 3 uses
  %i.oo = icmp samesign ugt i32 %i.om, 8388607
  br i1 %i.oo, label %bb.bc, label %bb.ba, !prof !105

bb.ba:                                            ; preds = %half_to_float.exit.us.us.us.6
  %.not.i.i153.us.us.us.7 = icmp eq i32 %i.om, 0
  br i1 %.not.i.i153.us.us.us.7, label %half_to_float.exit.us.us.us.7, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.op = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.om, i1 true)
  %i.oq = add nsw i32 %i.op, -8                   ; 2 uses
  %i.or = shl i32 %i.om, %i.oq
  %i.os = or i32 %i.on, %i.or
  %i.ot = or i32 %i.os, 947912704
  %i.ou = shl nuw nsw i32 %i.oq, 23
  %i.ov = sub nuw i32 %i.ot, %i.ou
  br label %half_to_float.exit.us.us.us.7

bb.bc:                                            ; preds = %half_to_float.exit.us.us.us.6
  %i.ow = or disjoint i32 %i.om, %i.on            ; 2 uses
  %i.ox = icmp samesign ult i32 %i.om, 260046848
  br i1 %i.ox, label %bb.be, label %bb.bd, !prof !105

bb.bd:                                            ; preds = %bb.bc
  %i.oy = or i32 %i.ow, 2139095040
  br label %half_to_float.exit.us.us.us.7

bb.be:                                            ; preds = %bb.bc
  %i.oz = add nuw nsw i32 %i.ow, 939524096
  br label %half_to_float.exit.us.us.us.7

half_to_float.exit.us.us.us.7:                    ; preds = %bb.be, %bb.bd, %bb.bb, %bb.ba
  %.sroa.0.0.i.i.us.us.us.7 = phi i32 [ %i.oz, %bb.be ], [ %i.oy, %bb.bd ], [ %i.ov, %bb.bb ], [ %i.on, %bb.ba ]
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %i.iy
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 28
  store i32 %.sroa.0.0.i.i.us.us.us.7, ptr %i.pb, align 4, !tbaa !103
  %indvars.iv.next285 = add nuw nsw i64 %indvars.iv284, 1 ; 2 uses
  %exitcond287.not = icmp eq i64 %indvars.iv.next285, 8
  br i1 %exitcond287.not, label %.split203.us.us, label %.preheader.us.us, !llvm.loop !227

.split203.us.us:                                  ; preds = %half_to_float.exit.us.us.us.7
  %indvars.iv.next289 = add nuw nsw i64 %indvars.iv288, 1 ; 2 uses
  %exitcond292.not = icmp eq i64 %indvars.iv.next289, %wide.trip.count291
  br i1 %exitcond292.not, label %._crit_edge205, label %.preheader160.us, !llvm.loop !228

._crit_edge216:                                   ; preds = %._crit_edge212
  %indvars.iv.next304 = add nuw nsw i64 %indvars.iv303, 1 ; 2 uses
  %exitcond307.not = icmp eq i64 %indvars.iv.next304, %wide.trip.count306
  br i1 %exitcond307.not, label %._crit_edge220.split, label %.preheader162, !llvm.loop !229

.preheader160:                                    ; preds = %.preheader160.lr.ph, %.split203
  %indvars.iv275 = phi i64 [ %indvars.iv.next276, %.split203 ], [ 0, %.preheader160.lr.ph ] ; 2 uses
  %i.pc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv275
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !82 ; 9 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 392
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !77
  br label %.preheader

._crit_edge205:                                   ; preds = %.split203, %.split203.us.us
  br i1 %i.fs, label %vector.memcheck, label %.lr.ph211.preheader

.lr.ph211.preheader:                              ; preds = %vector.body, %.preheader221, %._crit_edge205
  br label %.lr.ph211

vector.memcheck:                                  ; preds = %._crit_edge205
  br i1 %conflict.rdx397, label %.preheader221, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 4 uses
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %index ; 2 uses
  %wide.load = load <4 x float>, ptr %i.pg, align 4, !tbaa !103, !alias.scope !247, !noalias !248 ; 3 uses
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %index ; 2 uses
  %wide.load398 = load <4 x float>, ptr %i.ph, align 4, !tbaa !103, !alias.scope !249, !noalias !250 ; 3 uses
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index ; 2 uses
  %wide.load399 = load <4 x float>, ptr %i.pi, align 4, !tbaa !103, !alias.scope !250 ; 3 uses
  %i.pj = fmul <4 x float> %wide.load398, splat (float 7.152000e-01)
  %i.pk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> splat (float 2.126000e-01), <4 x float> %i.pj)
  %i.pl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load399, <4 x float> splat (float 7.220000e-02), <4 x float> %i.pk)
  store <4 x float> %i.pl, ptr %i.pg, align 4, !tbaa !103, !alias.scope !247, !noalias !248
  %i.pm = fmul <4 x float> %wide.load398, splat (float -3.854000e-01)
  %i.pn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> splat (float -1.146000e-01), <4 x float> %i.pm)
  %i.po = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load399, <4 x float> splat (float 5.000000e-01), <4 x float> %i.pn)
  store <4 x float> %i.po, ptr %i.ph, align 4, !tbaa !103, !alias.scope !249, !noalias !250
  %i.pp = fmul <4 x float> %wide.load398, splat (float -4.542000e-01)
  %i.pq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> splat (float 5.000000e-01), <4 x float> %i.pp)
  %i.pr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load399, <4 x float> splat (float -4.580000e-02), <4 x float> %i.pq)
  store <4 x float> %i.pr, ptr %i.pi, align 4, !tbaa !103, !alias.scope !250
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ps = icmp eq i64 %index.next, 64
  br i1 %i.ps, label %.lr.ph211.preheader, label %vector.body, !llvm.loop !234

.preheader:                                       ; preds = %.preheader160, %half_to_float.exit.7
  %indvars.iv271 = phi i64 [ 0, %.preheader160 ], [ %indvars.iv.next272, %half_to_float.exit.7 ] ; 3 uses
  %i.pt = add nuw nsw i64 %indvars.iv271, %i.gv
  %i.pu = trunc nuw i64 %i.pt to i32              ; 3 uses
  %.not149 = icmp sgt i32 %i.gy, %i.pu
  %i.pv = xor i32 %i.pu, -1
  %i.pw = add i32 %reass.add150, %i.pv
  %.0113 = select i1 %.not149, i32 %i.pu, i32 %i.pw ; 2 uses
  %i.px = icmp slt i32 %.0113, 0
  %.1 = select i1 %i.px, i32 %i.gz, i32 %.0113
  %i.py = sext i32 %.1 to i64
  %i.pz = getelementptr inbounds [8 x i8], ptr %i.pf, i64 %i.py
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !65 ; 8 uses
  %i.qb = shl nuw nsw i64 %indvars.iv271, 3       ; 8 uses
  %i.qc = getelementptr inbounds [2 x i8], ptr %i.qa, i64 %i.hu
  %i.qd = load i16, ptr %i.qc, align 2, !tbaa !62
  %i.qe = zext i16 %i.qd to i64
  %i.qf = getelementptr inbounds nuw [2 x i8], ptr %i.ha, i64 %i.qe
  %i.qg = load i16, ptr %i.qf, align 2, !tbaa !62 ; 2 uses
  %i.qh = zext i16 %i.qg to i32
  %i.qi = shl nuw nsw i32 %i.qh, 13
  %i.qj = and i32 %i.qi, 268427264                ; 6 uses
  %.signext.i.i = sext i16 %i.qg to i32
  %i.qk = and i32 %.signext.i.i, -2147483648      ; 3 uses
  %i.ql = icmp samesign ugt i32 %i.qj, 8388607
  br i1 %i.ql, label %bb.bf, label %bb.bi, !prof !105

.split203:                                        ; preds = %half_to_float.exit.7
  %indvars.iv.next276 = add nuw nsw i64 %indvars.iv275, 1 ; 2 uses
  %exitcond279.not = icmp eq i64 %indvars.iv.next276, %wide.trip.count278
  br i1 %exitcond279.not, label %._crit_edge205, label %.preheader160, !llvm.loop !228

bb.bf:                                            ; preds = %.preheader
  %i.qm = or disjoint i32 %i.qj, %i.qk            ; 2 uses
  %i.qn = icmp samesign ult i32 %i.qj, 260046848
  br i1 %i.qn, label %bb.bg, label %bb.bh, !prof !105

bb.bg:                                            ; preds = %bb.bf
  %i.qo = add nuw nsw i32 %i.qm, 939524096
  br label %half_to_float.exit

bb.bh:                                            ; preds = %bb.bf
  %i.qp = or i32 %i.qm, 2139095040
  br label %half_to_float.exit

bb.bi:                                            ; preds = %.preheader
  %.not.i.i153 = icmp eq i32 %i.qj, 0
  br i1 %.not.i.i153, label %half_to_float.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.qq = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.qj, i1 true)
  %i.qr = add nsw i32 %i.qq, -8                   ; 2 uses
  %i.qs = shl i32 %i.qj, %i.qr
  %i.qt = or i32 %i.qk, %i.qs
  %i.qu = or i32 %i.qt, 947912704
  %i.qv = shl nuw nsw i32 %i.qr, 23
  %i.qw = sub nuw i32 %i.qu, %i.qv
  br label %half_to_float.exit

half_to_float.exit:                               ; preds = %bb.bg, %bb.bh, %bb.bi, %bb.bj
  %.sroa.0.0.i.i = phi i32 [ %i.qo, %bb.bg ], [ %i.qp, %bb.bh ], [ %i.qw, %bb.bj ], [ %i.qk, %bb.bi ]
  %i.qx = getelementptr inbounds nuw [4 x i8], ptr %i.pd, i64 %i.qb
  store i32 %.sroa.0.0.i.i, ptr %i.qx, align 4, !tbaa !103
  %i.qy = getelementptr inbounds [2 x i8], ptr %i.qa, i64 %i.hw
  %i.qz = load i16, ptr %i.qy, align 2, !tbaa !62
  %i.ra = zext i16 %i.qz to i64
  %i.rb = getelementptr inbounds nuw [2 x i8], ptr %i.ha, i64 %i.ra
  %i.rc = load i16, ptr %i.rb, align 2, !tbaa !62 ; 2 uses
  %i.rd = zext i16 %i.rc to i32
  %i.re = shl nuw nsw i32 %i.rd, 13
  %i.rf = and i32 %i.re, 268427264                ; 6 uses
  %.signext.i.i.1 = sext i16 %i.rc to i32
  %i.rg = and i32 %.signext.i.i.1, -2147483648    ; 3 uses
  %i.rh = icmp samesign ugt i32 %i.rf, 8388607
  br i1 %i.rh, label %bb.bm, label %bb.bk, !prof !105

bb.bk:                                            ; preds = %half_to_float.exit
  %.not.i.i153.1 = icmp eq i32 %i.rf, 0
  br i1 %.not.i.i153.1, label %half_to_float.exit.1, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ri = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.rf, i1 true)
  %i.rj = add nsw i32 %i.ri, -8                   ; 2 uses
  %i.rk = shl i32 %i.rf, %i.rj
  %i.rl = or i32 %i.rg, %i.rk
  %i.rm = or i32 %i.rl, 947912704
  %i.rn = shl nuw nsw i32 %i.rj, 23
  %i.ro = sub nuw i32 %i.rm, %i.rn
  br label %half_to_float.exit.1

bb.bm:                                            ; preds = %half_to_float.exit
  %i.rp = or disjoint i32 %i.rf, %i.rg            ; 2 uses
  %i.rq = icmp samesign ult i32 %i.rf, 260046848
  br i1 %i.rq, label %bb.bo, label %bb.bn, !prof !105

bb.bn:                                            ; preds = %bb.bm
  %i.rr = or i32 %i.rp, 2139095040
  br label %half_to_float.exit.1

bb.bo:                                            ; preds = %bb.bm
  %i.rs = add nuw nsw i32 %i.rp, 939524096
  br label %half_to_float.exit.1

half_to_float.exit.1:                             ; preds = %bb.bo, %bb.bn, %bb.bl, %bb.bk
  %.sroa.0.0.i.i.1 = phi i32 [ %i.rs, %bb.bo ], [ %i.rr, %bb.bn ], [ %i.ro, %bb.bl ], [ %i.rg, %bb.bk ]
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %i.pd, i64 %i.qb
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 4
  store i32 %.sroa.0.0.i.i.1, ptr %i.ru, align 4, !tbaa !103
  %i.rv = getelementptr inbounds [2 x i8], ptr %i.qa, i64 %i.hy
  %i.rw = load i16, ptr %i.rv, align 2, !tbaa !62
  %i.rx = zext i16 %i.rw to i64
  %i.ry = getelementptr inbounds nuw [2 x i8], ptr %i.ha, i64 %i.rx
  %i.rz = load i16, ptr %i.ry, align 2, !tbaa !62 ; 2 uses
  %i.sa = zext i16 %i.rz to i32
  %i.sb = shl nuw nsw i32 %i.sa, 13
  %i.sc = and i32 %i.sb, 268427264                ; 6 uses
  %.signext.i.i.2 = sext i16 %i.rz to i32
  %i.sd = and i32 %.signext.i.i.2, -2147483648    ; 3 uses
  %i.se = icmp samesign ugt i32 %i.sc, 8388607
  br i1 %i.se, label %bb.br, label %bb.bp, !prof !105

bb.bp:                                            ; preds = %half_to_float.exit.1
  %.not.i.i153.2 = icmp eq i32 %i.sc, 0
  br i1 %.not.i.i153.2, label %half_to_float.exit.2, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.sf = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.sc, i1 true)
  %i.sg = add nsw i32 %i.sf, -8                   ; 2 uses
  %i.sh = shl i32 %i.sc, %i.sg
  %i.si = or i32 %i.sd, %i.sh
  %i.sj = or i32 %i.si, 947912704
  %i.sk = shl nuw nsw i32 %i.sg, 23
  %i.sl = sub nuw i32 %i.sj, %i.sk
  br label %half_to_float.exit.2

bb.br:                                            ; preds = %half_to_float.exit.1
  %i.sm = or disjoint i32 %i.sc, %i.sd            ; 2 uses
  %i.sn = icmp samesign ult i32 %i.sc, 260046848
  br i1 %i.sn, label %bb.bt, label %bb.bs, !prof !105

bb.bs:                                            ; preds = %bb.br
  %i.so = or i32 %i.sm, 2139095040
  br label %half_to_float.exit.2

bb.bt:                                            ; preds = %bb.br
  %i.sp = add nuw nsw i32 %i.sm, 939524096
  br label %half_to_float.exit.2

half_to_float.exit.2:                             ; preds = %bb.bt, %bb.bs, %bb.bq, %bb.bp
  %.sroa.0.0.i.i.2 = phi i32 [ %i.sp, %bb.bt ], [ %i.so, %bb.bs ], [ %i.sl, %bb.bq ], [ %i.sd, %bb.bp ]
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %i.pd, i64 %i.qb
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 8
  store i32 %.sroa.0.0.i.i.2, ptr %i.sr, align 4, !tbaa !103
  %i.ss = getelementptr inbounds [2 x i8], ptr %i.qa, i64 %i.ia
  %i.st = load i16, ptr %i.ss, align 2, !tbaa !62
  %i.su = zext i16 %i.st to i64
  %i.sv = getelementptr inbounds nuw [2 x i8], ptr %i.ha, i64 %i.su
  %i.sw = load i16, ptr %i.sv, align 2, !tbaa !62 ; 2 uses
  %i.sx = zext i16 %i.sw to i32
  %i.sy = shl nuw nsw i32 %i.sx, 13
  %i.sz = and i32 %i.sy, 268427264                ; 6 uses
  %.signext.i.i.3 = sext i16 %i.sw to i32
  %i.ta = and i32 %.signext.i.i.3, -2147483648    ; 3 uses
  %i.tb = icmp samesign ugt i32 %i.sz, 8388607
  br i1 %i.tb, label %bb.bw, label %bb.bu, !prof !105

bb.bu:                                            ; preds = %half_to_float.exit.2
  %.not.i.i153.3 = icmp eq i32 %i.sz, 0
  br i1 %.not.i.i153.3, label %half_to_float.exit.3, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.tc = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.sz, i1 true)
  %i.td = add nsw i32 %i.tc, -8                   ; 2 uses
  %i.te = shl i32 %i.sz, %i.td
  %i.tf = or i32 %i.ta, %i.te
  %i.tg = or i32 %i.tf, 947912704
  %i.th = shl nuw nsw i32 %i.td, 23
  %i.ti = sub nuw i32 %i.tg, %i.th
  br label %half_to_float.exit.3

bb.bw:                                            ; preds = %half_to_float.exit.2
  %i.tj = or disjoint i32 %i.sz, %i.ta            ; 2 uses
  %i.tk = icmp samesign ult i32 %i.sz, 260046848
end_hunk_3
begin_hunk_4_@LossyDctEncoder_execute:bb.a
  %i.tl = or i32 %i.tj, 2139095040
  br label %half_to_float.exit.3

bb.by:                                            ; preds = %bb.bw
  %i.tm = add nuw nsw i32 %i.tj, 939524096
  br label %half_to_float.exit.3

half_to_float.exit.3:                             ; preds = %bb.by, %bb.bx, %bb.bv, %bb.bu
  %.sroa.0.0.i.i.3 = phi i32 [ %i.tm, %bb.by ], [ %i.tl, %bb.bx ], [ %i.ti, %bb.bv ], [ %i.ta, %bb.bu ]
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %i.pd, i64 %i.qb
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 12
  store i32 %.sroa.0.0.i.i.3, ptr %i.to, align 4, !tbaa !103
  %i.tp = getelementptr inbounds [2 x i8], ptr %i.qa, i64 %i.if
  %i.tq = load i16, ptr %i.tp, align 2, !tbaa !62
  %i.tr = zext i16 %i.tq to i64
  %i.ts = getelementptr inbounds nuw [2 x i8], ptr %i.ha, i64 %i.tr
  %i.tt = load i16, ptr %i.ts, align 2, !tbaa !62 ; 2 uses
  %i.tu = zext i16 %i.tt to i32
  %i.tv = shl nuw nsw i32 %i.tu, 13
  %i.tw = and i32 %i.tv, 268427264                ; 6 uses
  %.signext.i.i.4 = sext i16 %i.tt to i32
  %i.tx = and i32 %.signext.i.i.4, -2147483648    ; 3 uses
  %i.ty = icmp samesign ugt i32 %i.tw, 8388607
  br i1 %i.ty, label %bb.cb, label %bb.bz, !prof !105

bb.bz:                                            ; preds = %half_to_float.exit.3
  %.not.i.i153.4 = icmp eq i32 %i.tw, 0
  br i1 %.not.i.i153.4, label %half_to_float.exit.4, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.tz = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.tw, i1 true)
  %i.ua = add nsw i32 %i.tz, -8                   ; 2 uses
  %i.ub = shl i32 %i.tw, %i.ua
  %i.uc = or i32 %i.tx, %i.ub
  %i.ud = or i32 %i.uc, 947912704
  %i.ue = shl nuw nsw i32 %i.ua, 23
  %i.uf = sub nuw i32 %i.ud, %i.ue
  br label %half_to_float.exit.4

bb.cb:                                            ; preds = %half_to_float.exit.3
  %i.ug = or disjoint i32 %i.tw, %i.tx            ; 2 uses
  %i.uh = icmp samesign ult i32 %i.tw, 260046848
  br i1 %i.uh, label %bb.cd, label %bb.cc, !prof !105

bb.cc:                                            ; preds = %bb.cb
  %i.ui = or i32 %i.ug, 2139095040
  br label %half_to_float.exit.4

bb.cd:                                            ; preds = %bb.cb
  %i.uj = add nuw nsw i32 %i.ug, 939524096
  br label %half_to_float.exit.4

half_to_float.exit.4:                             ; preds = %bb.cd, %bb.cc, %bb.ca, %bb.bz
  %.sroa.0.0.i.i.4 = phi i32 [ %i.uj, %bb.cd ], [ %i.ui, %bb.cc ], [ %i.uf, %bb.ca ], [ %i.tx, %bb.bz ]
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %i.pd, i64 %i.qb
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 16
  store i32 %.sroa.0.0.i.i.4, ptr %i.ul, align 4, !tbaa !103
  %i.um = getelementptr inbounds [2 x i8], ptr %i.qa, i64 %i.ih
  %i.un = load i16, ptr %i.um, align 2, !tbaa !62
  %i.uo = zext i16 %i.un to i64
  %i.up = getelementptr inbounds nuw [2 x i8], ptr %i.ha, i64 %i.uo
  %i.uq = load i16, ptr %i.up, align 2, !tbaa !62 ; 2 uses
  %i.ur = zext i16 %i.uq to i32
  %i.us = shl nuw nsw i32 %i.ur, 13
  %i.ut = and i32 %i.us, 268427264                ; 6 uses
  %.signext.i.i.5 = sext i16 %i.uq to i32
  %i.uu = and i32 %.signext.i.i.5, -2147483648    ; 3 uses
  %i.uv = icmp samesign ugt i32 %i.ut, 8388607
  br i1 %i.uv, label %bb.cg, label %bb.ce, !prof !105

bb.ce:                                            ; preds = %half_to_float.exit.4
  %.not.i.i153.5 = icmp eq i32 %i.ut, 0
  br i1 %.not.i.i153.5, label %half_to_float.exit.5, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.uw = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.ut, i1 true)
  %i.ux = add nsw i32 %i.uw, -8                   ; 2 uses
  %i.uy = shl i32 %i.ut, %i.ux
  %i.uz = or i32 %i.uu, %i.uy
  %i.va = or i32 %i.uz, 947912704
  %i.vb = shl nuw nsw i32 %i.ux, 23
  %i.vc = sub nuw i32 %i.va, %i.vb
  br label %half_to_float.exit.5

bb.cg:                                            ; preds = %half_to_float.exit.4
  %i.vd = or disjoint i32 %i.ut, %i.uu            ; 2 uses
  %i.ve = icmp samesign ult i32 %i.ut, 260046848
  br i1 %i.ve, label %bb.ci, label %bb.ch, !prof !105

bb.ch:                                            ; preds = %bb.cg
  %i.vf = or i32 %i.vd, 2139095040
  br label %half_to_float.exit.5

bb.ci:                                            ; preds = %bb.cg
  %i.vg = add nuw nsw i32 %i.vd, 939524096
  br label %half_to_float.exit.5

half_to_float.exit.5:                             ; preds = %bb.ci, %bb.ch, %bb.cf, %bb.ce
  %.sroa.0.0.i.i.5 = phi i32 [ %i.vg, %bb.ci ], [ %i.vf, %bb.ch ], [ %i.vc, %bb.cf ], [ %i.uu, %bb.ce ]
  %i.vh = getelementptr inbounds nuw [4 x i8], ptr %i.pd, i64 %i.qb
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 20
  store i32 %.sroa.0.0.i.i.5, ptr %i.vi, align 4, !tbaa !103
  %i.vj = getelementptr inbounds [2 x i8], ptr %i.qa, i64 %i.ij
  %i.vk = load i16, ptr %i.vj, align 2, !tbaa !62
  %i.vl = zext i16 %i.vk to i64
  %i.vm = getelementptr inbounds nuw [2 x i8], ptr %i.ha, i64 %i.vl
  %i.vn = load i16, ptr %i.vm, align 2, !tbaa !62 ; 2 uses
  %i.vo = zext i16 %i.vn to i32
  %i.vp = shl nuw nsw i32 %i.vo, 13
  %i.vq = and i32 %i.vp, 268427264                ; 6 uses
  %.signext.i.i.6 = sext i16 %i.vn to i32
  %i.vr = and i32 %.signext.i.i.6, -2147483648    ; 3 uses
  %i.vs = icmp samesign ugt i32 %i.vq, 8388607
  br i1 %i.vs, label %bb.cl, label %bb.cj, !prof !105

bb.cj:                                            ; preds = %half_to_float.exit.5
  %.not.i.i153.6 = icmp eq i32 %i.vq, 0
  br i1 %.not.i.i153.6, label %half_to_float.exit.6, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.vt = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.vq, i1 true)
  %i.vu = add nsw i32 %i.vt, -8                   ; 2 uses
  %i.vv = shl i32 %i.vq, %i.vu
  %i.vw = or i32 %i.vr, %i.vv
  %i.vx = or i32 %i.vw, 947912704
  %i.vy = shl nuw nsw i32 %i.vu, 23
  %i.vz = sub nuw i32 %i.vx, %i.vy
  br label %half_to_float.exit.6

bb.cl:                                            ; preds = %half_to_float.exit.5
  %i.wa = or disjoint i32 %i.vq, %i.vr            ; 2 uses
  %i.wb = icmp samesign ult i32 %i.vq, 260046848
  br i1 %i.wb, label %bb.cn, label %bb.cm, !prof !105

bb.cm:                                            ; preds = %bb.cl
  %i.wc = or i32 %i.wa, 2139095040
  br label %half_to_float.exit.6

bb.cn:                                            ; preds = %bb.cl
  %i.wd = add nuw nsw i32 %i.wa, 939524096
  br label %half_to_float.exit.6

half_to_float.exit.6:                             ; preds = %bb.cn, %bb.cm, %bb.ck, %bb.cj
  %.sroa.0.0.i.i.6 = phi i32 [ %i.wd, %bb.cn ], [ %i.wc, %bb.cm ], [ %i.vz, %bb.ck ], [ %i.vr, %bb.cj ]
  %i.we = getelementptr inbounds nuw [4 x i8], ptr %i.pd, i64 %i.qb
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 24
  store i32 %.sroa.0.0.i.i.6, ptr %i.wf, align 4, !tbaa !103
  %i.wg = getelementptr inbounds [2 x i8], ptr %i.qa, i64 %i.il
  %i.wh = load i16, ptr %i.wg, align 2, !tbaa !62
  %i.wi = zext i16 %i.wh to i64
  %i.wj = getelementptr inbounds nuw [2 x i8], ptr %i.ha, i64 %i.wi
  %i.wk = load i16, ptr %i.wj, align 2, !tbaa !62 ; 2 uses
  %i.wl = zext i16 %i.wk to i32
  %i.wm = shl nuw nsw i32 %i.wl, 13
  %i.wn = and i32 %i.wm, 268427264                ; 6 uses
  %.signext.i.i.7 = sext i16 %i.wk to i32
  %i.wo = and i32 %.signext.i.i.7, -2147483648    ; 3 uses
  %i.wp = icmp samesign ugt i32 %i.wn, 8388607
  br i1 %i.wp, label %bb.cq, label %bb.co, !prof !105

bb.co:                                            ; preds = %half_to_float.exit.6
  %.not.i.i153.7 = icmp eq i32 %i.wn, 0
  br i1 %.not.i.i153.7, label %half_to_float.exit.7, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.wq = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.wn, i1 true)
  %i.wr = add nsw i32 %i.wq, -8                   ; 2 uses
  %i.ws = shl i32 %i.wn, %i.wr
  %i.wt = or i32 %i.wo, %i.ws
  %i.wu = or i32 %i.wt, 947912704
  %i.wv = shl nuw nsw i32 %i.wr, 23
  %i.ww = sub nuw i32 %i.wu, %i.wv
  br label %half_to_float.exit.7

bb.cq:                                            ; preds = %half_to_float.exit.6
  %i.wx = or disjoint i32 %i.wn, %i.wo            ; 2 uses
  %i.wy = icmp samesign ult i32 %i.wn, 260046848
  br i1 %i.wy, label %bb.cs, label %bb.cr, !prof !105

bb.cr:                                            ; preds = %bb.cq
  %i.wz = or i32 %i.wx, 2139095040
  br label %half_to_float.exit.7

bb.cs:                                            ; preds = %bb.cq
  %i.xa = add nuw nsw i32 %i.wx, 939524096
  br label %half_to_float.exit.7

half_to_float.exit.7:                             ; preds = %bb.cs, %bb.cr, %bb.cp, %bb.co
  %.sroa.0.0.i.i.7 = phi i32 [ %i.xa, %bb.cs ], [ %i.wz, %bb.cr ], [ %i.ww, %bb.cp ], [ %i.wo, %bb.co ]
  %i.xb = getelementptr inbounds nuw [4 x i8], ptr %i.pd, i64 %i.qb
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xb, i64 28
  store i32 %.sroa.0.0.i.i.7, ptr %i.xc, align 4, !tbaa !103
  %indvars.iv.next272 = add nuw nsw i64 %indvars.iv271, 1 ; 2 uses
  %exitcond274.not = icmp eq i64 %indvars.iv.next272, 8
  br i1 %exitcond274.not, label %.split203, label %.preheader, !llvm.loop !227

.preheader221:                                    ; preds = %vector.memcheck, %.preheader221
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader221 ], [ 0, %vector.memcheck ] ; 4 uses
  %i.xd = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %indvars.iv.i ; 2 uses
  %i.xe = load float, ptr %i.xd, align 4, !tbaa !103 ; 3 uses
  %i.xf = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.i ; 2 uses
  %i.xg = load float, ptr %i.xf, align 4, !tbaa !103 ; 3 uses
  %i.xh = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.i ; 2 uses
  %i.xi = load float, ptr %i.xh, align 4, !tbaa !103 ; 3 uses
  %i.xj = fmul float %i.xg, 7.152000e-01
  %i.xk = tail call float @llvm.fmuladd.f32(float %i.xe, float 2.126000e-01, float %i.xj)
  %i.xl = tail call float @llvm.fmuladd.f32(float %i.xi, float 7.220000e-02, float %i.xk)
  store float %i.xl, ptr %i.xd, align 4, !tbaa !103
  %i.xm = fmul float %i.xg, -3.854000e-01
  %i.xn = tail call float @llvm.fmuladd.f32(float %i.xe, float -1.146000e-01, float %i.xm)
  %i.xo = tail call float @llvm.fmuladd.f32(float %i.xi, float 5.000000e-01, float %i.xn)
  store float %i.xo, ptr %i.xf, align 4, !tbaa !103
  %i.xp = fmul float %i.xg, -4.542000e-01
  %i.xq = tail call float @llvm.fmuladd.f32(float %i.xe, float 5.000000e-01, float %i.xp)
  %i.xr = tail call float @llvm.fmuladd.f32(float %i.xi, float -4.580000e-02, float %i.xq)
  store float %i.xr, ptr %i.xh, align 4, !tbaa !103
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 64
  br i1 %exitcond.not.i, label %.lr.ph211.preheader, label %.preheader221, !llvm.loop !235

._crit_edge212:                                   ; preds = %LossyDctEncoder_rleAc.exit, %.preheader161
  %.2159.lcssa = phi ptr [ %.1158214, %.preheader161 ], [ %.2.i, %LossyDctEncoder_rleAc.exit ] ; 2 uses
  %indvars.iv.next299 = add nuw nsw i64 %indvars.iv298, 1 ; 2 uses
  %exitcond302.not = icmp eq i64 %indvars.iv.next299, %wide.trip.count301
  br i1 %exitcond302.not, label %._crit_edge216, label %.preheader161, !llvm.loop !236

.lr.ph211:                                        ; preds = %.lr.ph211.preheader, %LossyDctEncoder_rleAc.exit
  %indvars.iv293 = phi i64 [ %indvars.iv.next294, %LossyDctEncoder_rleAc.exit ], [ 0, %.lr.ph211.preheader ] ; 2 uses
  %.0119209 = phi ptr [ %i.fx, %LossyDctEncoder_rleAc.exit ], [ %i.fv, %.lr.ph211.preheader ] ; 4 uses
  %.0120208 = phi ptr [ %i.fw, %LossyDctEncoder_rleAc.exit ], [ %i.fu, %.lr.ph211.preheader ] ; 4 uses
  %.2159207 = phi ptr [ %.2.i, %LossyDctEncoder_rleAc.exit ], [ %.1158214, %.lr.ph211.preheader ]
  %i.xs = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv293
  %i.xt = load ptr, ptr %i.xs, align 8, !tbaa !82 ; 22 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 32 ; 2 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xt, i64 64 ; 2 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xt, i64 96 ; 2 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xt, i64 16 ; 2 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xt, i64 128 ; 2 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xt, i64 160 ; 2 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xt, i64 192 ; 2 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xt, i64 224 ; 2 uses
  %.pre.i = load <4 x float>, ptr %i.xt, align 16, !tbaa !60 ; 2 uses
  %.pre196.i = load <4 x float>, ptr %i.yb, align 16, !tbaa !60 ; 2 uses
  %.pre197.i = load <4 x float>, ptr %i.xu, align 16, !tbaa !60 ; 2 uses
  %.pre198.i = load <4 x float>, ptr %i.xv, align 16, !tbaa !60 ; 2 uses
  %.pre199.i = load <4 x float>, ptr %i.xw, align 16, !tbaa !60 ; 2 uses
  %.pre200.i = load <4 x float>, ptr %i.xy, align 16, !tbaa !60 ; 2 uses
  %.pre201.i = load <4 x float>, ptr %i.xz, align 16, !tbaa !60 ; 2 uses
  %.pre202.i = load <4 x float>, ptr %i.ya, align 16, !tbaa !60 ; 2 uses
  %.pre203.i = load <4 x float>, ptr %i.xx, align 16, !tbaa !60 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.xt, i64 240 ; 2 uses
  %.pre204.i = load <4 x float>, ptr %.phi.trans.insert.i, align 16, !tbaa !60 ; 2 uses
  %.phi.trans.insert205.i = getelementptr inbounds nuw i8, ptr %i.xt, i64 48 ; 2 uses
  %.pre206.i = load <4 x float>, ptr %.phi.trans.insert205.i, align 16, !tbaa !60 ; 2 uses
  %.phi.trans.insert207.i = getelementptr inbounds nuw i8, ptr %i.xt, i64 80 ; 2 uses
  %.pre208.i = load <4 x float>, ptr %.phi.trans.insert207.i, align 16, !tbaa !60 ; 2 uses
  %.phi.trans.insert209.i = getelementptr inbounds nuw i8, ptr %i.xt, i64 112 ; 2 uses
  %.pre210.i = load <4 x float>, ptr %.phi.trans.insert209.i, align 16, !tbaa !60 ; 2 uses
  %.phi.trans.insert211.i = getelementptr inbounds nuw i8, ptr %i.xt, i64 144 ; 2 uses
  %.pre212.i = load <4 x float>, ptr %.phi.trans.insert211.i, align 16, !tbaa !60 ; 2 uses
  %.phi.trans.insert213.i = getelementptr inbounds nuw i8, ptr %i.xt, i64 176 ; 2 uses
  %.pre214.i = load <4 x float>, ptr %.phi.trans.insert213.i, align 16, !tbaa !60 ; 2 uses
  %.phi.trans.insert215.i = getelementptr inbounds nuw i8, ptr %i.xt, i64 208 ; 2 uses
  %.pre216.i = load <4 x float>, ptr %.phi.trans.insert215.i, align 16, !tbaa !60 ; 2 uses
  %i.yc = fadd <4 x float> %.pre196.i, %.pre.i    ; 2 uses
  %i.yd = fadd <4 x float> %.pre198.i, %.pre197.i ; 2 uses
  %i.ye = fadd <4 x float> %.pre200.i, %.pre199.i ; 2 uses
  %i.yf = fadd <4 x float> %.pre202.i, %.pre201.i ; 2 uses
  %i.yg = fsub <4 x float> %.pre.i, %.pre196.i    ; 2 uses
  %i.yh = fsub <4 x float> %.pre197.i, %.pre198.i ; 2 uses
  %i.yi = fsub <4 x float> %.pre199.i, %.pre200.i ; 2 uses
  %i.yj = fsub <4 x float> %.pre201.i, %.pre202.i ; 2 uses
  %i.yk = fadd <4 x float> %i.ye, %i.yc
  %i.yl = fadd <4 x float> %i.yf, %i.yd
  %i.ym = fmul <4 x float> %i.yk, splat (float f0x3F3504F3) ; 2 uses
  %i.yn = fmul <4 x float> %i.yl, splat (float f0x3F3504F3) ; 2 uses
  %i.yo = fadd <4 x float> %i.yn, %i.ym
  %i.yp = fsub <4 x float> %i.ym, %i.yn
  %i.yq = fmul <4 x float> %i.yo, splat (float 5.000000e-01) ; 2 uses
  %i.yr = fmul <4 x float> %i.yp, splat (float 5.000000e-01) ; 2 uses
  %i.ys = fsub <4 x float> %i.yh, %i.yj           ; 2 uses
  %i.yt = fsub <4 x float> %i.yc, %i.ye           ; 2 uses
  %i.yu = fmul <4 x float> %i.ys, splat (float f0x3E43EF15)
  %i.yv = fmul <4 x float> %i.yt, splat (float f0x3EEC835F)
  %i.yw = fadd <4 x float> %i.yu, %i.yv           ; 2 uses
  %i.yx = fmul <4 x float> %i.yt, splat (float f0x3E43EF15)
  %i.yy = fmul <4 x float> %i.ys, splat (float f0x3EEC835F)
  %i.yz = fsub <4 x float> %i.yx, %i.yy           ; 2 uses
  %i.za = fsub <4 x float> %i.yd, %i.yf
  %i.zb = fmul <4 x float> %i.za, splat (float f0x3F3504F3) ; 2 uses
  %i.zc = fadd <4 x float> %i.yj, %i.yh
  %i.zd = fmul <4 x float> %i.zc, splat (float f0xBF3504F3) ; 2 uses
  %i.ze = fsub <4 x float> %i.yg, %i.zb           ; 2 uses
  %i.zf = fadd <4 x float> %i.yi, %i.zd           ; 2 uses
  %i.zg = fmul <4 x float> %i.ze, splat (float f0x3ED4DB31)
  %i.zh = fmul <4 x float> %i.zf, splat (float f0x3E8E39DA)
  %i.zi = fsub <4 x float> %i.zg, %i.zh           ; 2 uses
  %i.zj = fmul <4 x float> %i.ze, splat (float f0x3E8E39DA)
  %i.zk = fmul <4 x float> %i.zf, splat (float f0x3ED4DB31)
  %i.zl = fadd <4 x float> %i.zj, %i.zk           ; 2 uses
  %i.zm = fadd <4 x float> %i.yg, %i.zb           ; 2 uses
  %i.zn = fsub <4 x float> %i.zd, %i.yi           ; 2 uses
  %i.zo = fmul <4 x float> %i.zm, splat (float f0x3EFB14BE)
  %i.zp = fmul <4 x float> %i.zn, splat (float f0x3DC7C5C2)
  %i.zq = fsub <4 x float> %i.zo, %i.zp           ; 2 uses
  %i.zr = fmul <4 x float> %i.zm, splat (float f0x3DC7C5C2)
  %i.zs = fmul <4 x float> %i.zn, splat (float f0x3EFB14BE)
  %i.zt = fadd <4 x float> %i.zr, %i.zs           ; 2 uses
  %i.zu = fadd <4 x float> %.pre204.i, %.pre203.i ; 2 uses
  %i.zv = fadd <4 x float> %.pre208.i, %.pre206.i ; 2 uses
  %i.zw = fadd <4 x float> %.pre212.i, %.pre210.i ; 2 uses
  %i.zx = fadd <4 x float> %.pre216.i, %.pre214.i ; 2 uses
  %i.zy = fsub <4 x float> %.pre203.i, %.pre204.i ; 2 uses
  %i.zz = fsub <4 x float> %.pre206.i, %.pre208.i ; 2 uses
  %i.aaa = fsub <4 x float> %.pre210.i, %.pre212.i ; 2 uses
  %i.aab = fsub <4 x float> %.pre214.i, %.pre216.i ; 2 uses
  %i.aac = fadd <4 x float> %i.zw, %i.zu
  %i.aad = fadd <4 x float> %i.zx, %i.zv
  %i.aae = fmul <4 x float> %i.aac, splat (float f0x3F3504F3) ; 2 uses
  %i.aaf = fmul <4 x float> %i.aad, splat (float f0x3F3504F3) ; 2 uses
  %i.aag = fadd <4 x float> %i.aaf, %i.aae
  %i.aah = fsub <4 x float> %i.aae, %i.aaf
  %i.aai = fmul <4 x float> %i.aag, splat (float 5.000000e-01) ; 2 uses
  %i.aaj = fmul <4 x float> %i.aah, splat (float 5.000000e-01) ; 2 uses
  %i.aak = fsub <4 x float> %i.zz, %i.aab         ; 2 uses
  %i.aal = fsub <4 x float> %i.zu, %i.zw          ; 2 uses
  %i.aam = fmul <4 x float> %i.aak, splat (float f0x3E43EF15)
  %i.aan = fmul <4 x float> %i.aal, splat (float f0x3EEC835F)
  %i.aao = fadd <4 x float> %i.aam, %i.aan        ; 2 uses
  %i.aap = fmul <4 x float> %i.aal, splat (float f0x3E43EF15)
  %i.aaq = fmul <4 x float> %i.aak, splat (float f0x3EEC835F)
  %i.aar = fsub <4 x float> %i.aap, %i.aaq        ; 2 uses
  %i.aas = fsub <4 x float> %i.zv, %i.zx
  %i.aat = fmul <4 x float> %i.aas, splat (float f0x3F3504F3) ; 2 uses
  %i.aau = fadd <4 x float> %i.aab, %i.zz
  %i.aav = fmul <4 x float> %i.aau, splat (float f0xBF3504F3) ; 2 uses
  %i.aaw = fsub <4 x float> %i.zy, %i.aat         ; 2 uses
  %i.aax = fadd <4 x float> %i.aaa, %i.aav        ; 2 uses
  %i.aay = fmul <4 x float> %i.aaw, splat (float f0x3ED4DB31)
  %i.aaz = fmul <4 x float> %i.aax, splat (float f0x3E8E39DA)
  %i.aba = fsub <4 x float> %i.aay, %i.aaz        ; 2 uses
  %i.abb = fmul <4 x float> %i.aaw, splat (float f0x3E8E39DA)
  %i.abc = fmul <4 x float> %i.aax, splat (float f0x3ED4DB31)
  %i.abd = fadd <4 x float> %i.abb, %i.abc        ; 2 uses
  %i.abe = fadd <4 x float> %i.zy, %i.aat         ; 2 uses
  %i.abf = fsub <4 x float> %i.aav, %i.aaa        ; 2 uses
  %i.abg = fmul <4 x float> %i.abe, splat (float f0x3EFB14BE)
  %i.abh = fmul <4 x float> %i.abf, splat (float f0x3DC7C5C2)
  %i.abi = fsub <4 x float> %i.abg, %i.abh        ; 2 uses
  %i.abj = fmul <4 x float> %i.abe, splat (float f0x3DC7C5C2)
  %i.abk = fmul <4 x float> %i.abf, splat (float f0x3EFB14BE)
  %i.abl = fadd <4 x float> %i.abj, %i.abk        ; 2 uses
  %i.abm = shufflevector <4 x float> %i.yq, <4 x float> %i.zq, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.abn = shufflevector <4 x float> %i.yw, <4 x float> %i.zi, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.abo = shufflevector <4 x float> %i.yw, <4 x float> %i.zi, <4 x i32> <i32 2, i32 3, i32 6, i32 7> ; 2 uses
  %i.abp = shufflevector <4 x float> %i.yq, <4 x float> %i.zq, <4 x i32> <i32 2, i32 3, i32 6, i32 7> ; 2 uses
  %i.abq = shufflevector <4 x float> %i.aaj, <4 x float> %i.abd, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.abr = shufflevector <4 x float> %i.aar, <4 x float> %i.abl, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.abs = shufflevector <4 x float> %i.aaj, <4 x float> %i.abd, <4 x i32> <i32 2, i32 3, i32 6, i32 7> ; 2 uses
  %i.abt = shufflevector <4 x float> %i.aar, <4 x float> %i.abl, <4 x i32> <i32 2, i32 3, i32 6, i32 7> ; 2 uses
  %i.abu = shufflevector <4 x float> %i.abm, <4 x float> %i.abn, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.abv = shufflevector <4 x float> %i.abp, <4 x float> %i.abo, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.abw = shufflevector <4 x float> %i.abm, <4 x float> %i.abn, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.abx = shufflevector <4 x float> %i.abp, <4 x float> %i.abo, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.aby = shufflevector <4 x float> %i.abq, <4 x float> %i.abr, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.abz = shufflevector <4 x float> %i.abs, <4 x float> %i.abt, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.aca = shufflevector <4 x float> %i.abq, <4 x float> %i.abr, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.acb = shufflevector <4 x float> %i.abs, <4 x float> %i.abt, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.acc = shufflevector <4 x float> %i.aai, <4 x float> %i.abi, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.acd = shufflevector <4 x float> %i.aao, <4 x float> %i.aba, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.ace = shufflevector <4 x float> %i.aai, <4 x float> %i.abi, <4 x i32> <i32 2, i32 3, i32 6, i32 7> ; 2 uses
  %i.acf = shufflevector <4 x float> %i.aao, <4 x float> %i.aba, <4 x i32> <i32 2, i32 3, i32 6, i32 7> ; 2 uses
  %i.acg = shufflevector <4 x float> %i.yr, <4 x float> %i.zl, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.ach = shufflevector <4 x float> %i.yz, <4 x float> %i.zt, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.aci = shufflevector <4 x float> %i.yr, <4 x float> %i.zl, <4 x i32> <i32 2, i32 3, i32 6, i32 7> ; 2 uses
  %i.acj = shufflevector <4 x float> %i.yz, <4 x float> %i.zt, <4 x i32> <i32 2, i32 3, i32 6, i32 7> ; 2 uses
  %i.ack = shufflevector <4 x float> %i.acc, <4 x float> %i.acd, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.acl = shufflevector <4 x float> %i.ace, <4 x float> %i.acf, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.acm = shufflevector <4 x float> %i.acc, <4 x float> %i.acd, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.acn = shufflevector <4 x float> %i.ace, <4 x float> %i.acf, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.aco = shufflevector <4 x float> %i.acg, <4 x float> %i.ach, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.acp = shufflevector <4 x float> %i.aci, <4 x float> %i.acj, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.acq = shufflevector <4 x float> %i.acg, <4 x float> %i.ach, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.acr = shufflevector <4 x float> %i.aci, <4 x float> %i.acj, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.acs = fadd <4 x float> %i.acn, %i.abu        ; 2 uses
  %i.act = fadd <4 x float> %i.abv, %i.abw        ; 2 uses
  %i.acu = fadd <4 x float> %i.ack, %i.abx        ; 2 uses
  %i.acv = fadd <4 x float> %i.acl, %i.acm        ; 2 uses
  %i.acw = fsub <4 x float> %i.abu, %i.acn        ; 2 uses
  %i.acx = fsub <4 x float> %i.abw, %i.abv        ; 2 uses
  %i.acy = fsub <4 x float> %i.abx, %i.ack        ; 2 uses
  %i.acz = fsub <4 x float> %i.acm, %i.acl        ; 2 uses
  %i.ada = fadd <4 x float> %i.acu, %i.acs
  %i.adb = fadd <4 x float> %i.acv, %i.act
  %i.adc = fmul <4 x float> %i.ada, splat (float f0x3F3504F3) ; 2 uses
  %i.add = fmul <4 x float> %i.adb, splat (float f0x3F3504F3) ; 2 uses
  %i.ade = fadd <4 x float> %i.add, %i.adc
  %i.adf = fsub <4 x float> %i.adc, %i.add
  %i.adg = fmul <4 x float> %i.ade, splat (float 5.000000e-01) ; 2 uses
  %i.adh = fmul <4 x float> %i.adf, splat (float 5.000000e-01) ; 2 uses
  %i.adi = fsub <4 x float> %i.acx, %i.acz        ; 2 uses
  %i.adj = fsub <4 x float> %i.acs, %i.acu        ; 2 uses
  %i.adk = fmul <4 x float> %i.adi, splat (float f0x3E43EF15)
end_hunk_4
