Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/truetype?download=true
inline.NumInlined: 310
inline.NumDeleted: 164
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 49
begin_hunk_0_@tt_check_trickyness:bb.a

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.01928.i.i.i = phi ptr [ %i.ch, %.lr.ph.i.i.i.preheader.new ], [ %i.df, %.lr.ph.i.i.i ] ; 5 uses
  %.02027.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %i.di, %.lr.ph.i.i.i ]
  %.02226.i.i.i = phi i64 [ %i.ce, %.lr.ph.i.i.i.preheader.new ], [ %i.dj, %.lr.ph.i.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.01928.i.i.i, i64 4
  %i.cu = load i32, ptr %.01928.i.i.i, align 1
  %i.cv = tail call i32 @llvm.bswap.i32(i32 %i.cu)
  %i.cw = add i32 %i.cv, %.02027.i.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %.01928.i.i.i, i64 8
  %i.cy = load i32, ptr %i.ct, align 1
  %i.cz = tail call i32 @llvm.bswap.i32(i32 %i.cy)
  %i.da = add i32 %i.cz, %i.cw
  %i.db = getelementptr inbounds nuw i8, ptr %.01928.i.i.i, i64 12
  %i.dc = load i32, ptr %i.cx, align 1
  %i.dd = tail call i32 @llvm.bswap.i32(i32 %i.dc)
  %i.de = add i32 %i.dd, %i.da
  %i.df = getelementptr inbounds nuw i8, ptr %.01928.i.i.i, i64 16 ; 3 uses
  %i.dg = load i32, ptr %i.db, align 1
  %i.dh = tail call i32 @llvm.bswap.i32(i32 %i.dg)
  %i.di = add i32 %i.dh, %i.de                    ; 3 uses
  %i.dj = add i64 %.02226.i.i.i, -16              ; 3 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.preheader.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !880

.lr.ph36.i.i.i:                                   ; preds = %.lr.ph36.i.i.i, %.lr.ph36.i.i.i.preheader.new
  %.035.i.i.i = phi i32 [ 24, %.lr.ph36.i.i.i.preheader.new ], [ %i.eh, %.lr.ph36.i.i.i ] ; 5 uses
  %.134.i.i.i = phi ptr [ %.019.lcssa.i.i.i, %.lr.ph36.i.i.i.preheader.new ], [ %i.ec, %.lr.ph36.i.i.i ] ; 5 uses
  %.12133.i.i.i = phi i32 [ %.020.lcssa.i.i.i, %.lr.ph36.i.i.i.preheader.new ], [ %i.eg, %.lr.ph36.i.i.i ]
  %niter76 = phi i64 [ 0, %.lr.ph36.i.i.i.preheader.new ], [ %niter76.next.3, %.lr.ph36.i.i.i ]
  %i.dk = getelementptr inbounds nuw i8, ptr %.134.i.i.i, i64 1
  %i.dl = load i8, ptr %.134.i.i.i, align 1, !tbaa !186
  %i.dm = zext i8 %i.dl to i32
  %i.dn = shl i32 %i.dm, %.035.i.i.i
  %i.do = add i32 %i.dn, %.12133.i.i.i
  %i.dp = add nsw i32 %.035.i.i.i, -8
  %i.dq = getelementptr inbounds nuw i8, ptr %.134.i.i.i, i64 2
  %i.dr = load i8, ptr %i.dk, align 1, !tbaa !186
  %i.ds = zext i8 %i.dr to i32
  %i.dt = shl i32 %i.ds, %i.dp
  %i.du = add i32 %i.dt, %i.do
  %i.dv = add nsw i32 %.035.i.i.i, -16
  %i.dw = getelementptr inbounds nuw i8, ptr %.134.i.i.i, i64 3
  %i.dx = load i8, ptr %i.dq, align 1, !tbaa !186
  %i.dy = zext i8 %i.dx to i32
  %i.dz = shl i32 %i.dy, %i.dv
  %i.ea = add i32 %i.dz, %i.du
  %i.eb = add nsw i32 %.035.i.i.i, -24
  %i.ec = getelementptr inbounds nuw i8, ptr %.134.i.i.i, i64 4 ; 2 uses
  %i.ed = load i8, ptr %i.dw, align 1, !tbaa !186
  %i.ee = zext i8 %i.ed to i32
  %i.ef = shl i32 %i.ee, %i.eb
  %i.eg = add i32 %i.ef, %i.ea                    ; 3 uses
  %i.eh = add nsw i32 %.035.i.i.i, -32            ; 2 uses
  %niter76.next.3 = add nuw i64 %niter76, 4       ; 2 uses
  %niter76.ncmp.3 = icmp eq i64 %niter76.next.3, %unroll_iter75
  br i1 %niter76.ncmp.3, label %._crit_edge.i.i.i.loopexit.unr-lcssa, label %.lr.ph36.i.i.i, !llvm.loop !881

._crit_edge.i.i.i.loopexit.unr-lcssa:             ; preds = %.lr.ph36.i.i.i
  %lcmp.mod72.not = icmp eq i64 %xtraiter70, 0
  br i1 %lcmp.mod72.not, label %._crit_edge.i.i.i, label %.lr.ph36.i.i.i.epil.preheader

.lr.ph36.i.i.i.epil.preheader:                    ; preds = %._crit_edge.i.i.i.loopexit.unr-lcssa, %.lr.ph36.i.i.i.preheader
  %.035.i.i.i.epil.init = phi i32 [ 24, %.lr.ph36.i.i.i.preheader ], [ %i.eh, %._crit_edge.i.i.i.loopexit.unr-lcssa ]
  %.134.i.i.i.epil.init = phi ptr [ %.019.lcssa.i.i.i, %.lr.ph36.i.i.i.preheader ], [ %i.ec, %._crit_edge.i.i.i.loopexit.unr-lcssa ]
  %.12133.i.i.i.epil.init = phi i32 [ %.020.lcssa.i.i.i, %.lr.ph36.i.i.i.preheader ], [ %i.eg, %._crit_edge.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod74 = icmp ne i64 %xtraiter70, 0
  tail call void @llvm.assume(i1 %lcmp.mod74)
  br label %.lr.ph36.i.i.i.epil

.lr.ph36.i.i.i.epil:                              ; preds = %.lr.ph36.i.i.i.epil, %.lr.ph36.i.i.i.epil.preheader
  %.035.i.i.i.epil = phi i32 [ %i.en, %.lr.ph36.i.i.i.epil ], [ %.035.i.i.i.epil.init, %.lr.ph36.i.i.i.epil.preheader ] ; 2 uses
  %.134.i.i.i.epil = phi ptr [ %i.ei, %.lr.ph36.i.i.i.epil ], [ %.134.i.i.i.epil.init, %.lr.ph36.i.i.i.epil.preheader ] ; 2 uses
  %.12133.i.i.i.epil = phi i32 [ %i.em, %.lr.ph36.i.i.i.epil ], [ %.12133.i.i.i.epil.init, %.lr.ph36.i.i.i.epil.preheader ]
  %epil.iter71 = phi i64 [ %epil.iter71.next, %.lr.ph36.i.i.i.epil ], [ 0, %.lr.ph36.i.i.i.epil.preheader ]
  %i.ei = getelementptr inbounds nuw i8, ptr %.134.i.i.i.epil, i64 1
  %i.ej = load i8, ptr %.134.i.i.i.epil, align 1, !tbaa !186
  %i.ek = zext i8 %i.ej to i32
  %i.el = shl i32 %i.ek, %.035.i.i.i.epil
  %i.em = add i32 %i.el, %.12133.i.i.i.epil       ; 2 uses
  %i.en = add nsw i32 %.035.i.i.i.epil, -8
  %epil.iter71.next = add i64 %epil.iter71, 1     ; 2 uses
  %epil.iter71.cmp.not = icmp eq i64 %epil.iter71.next, %xtraiter70
  br i1 %epil.iter71.cmp.not, label %._crit_edge.i.i.i, label %.lr.ph36.i.i.i.epil, !llvm.loop !882

._crit_edge.i.i.i:                                ; preds = %._crit_edge.i.i.i.loopexit.unr-lcssa, %.lr.ph36.i.i.i.epil, %.preheader.i.i.i
  %.121.lcssa.i.i.i = phi i32 [ %.020.lcssa.i.i.i, %.preheader.i.i.i ], [ %i.eg, %._crit_edge.i.i.i.loopexit.unr-lcssa ], [ %i.em, %.lr.ph36.i.i.i.epil ]
  tail call void @FT_Stream_ExitFrame(ptr noundef nonnull %i.ca) #21
  %i.eo = zext i32 %.121.lcssa.i.i.i to i64
  br label %tt_get_sfnt_checksum.exit.i

tt_get_sfnt_checksum.exit.i:                      ; preds = %._crit_edge.i.i.i, %bb.am, %bb.al, %bb.ak, %bb.aj
  %.142.i = phi i64 [ %.04157.i, %bb.aj ], [ 0, %bb.ak ], [ 0, %bb.al ], [ %i.eo, %._crit_edge.i.i.i ], [ 0, %bb.am ] ; 2 uses
  %i.ep = load i64, ptr %gep.i, align 16, !tbaa !890
  %i.eq = icmp eq i64 %i.ep, %.142.i
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i ; 2 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !152 ; 2 uses
  br i1 %i.eq, label %bb.ao, label %tt_get_sfnt_checksum.exit._crit_edge.i

bb.ao:                                            ; preds = %tt_get_sfnt_checksum.exit.i
  %i.et = add nsw i32 %i.es, 1                    ; 2 uses
  store i32 %i.et, ptr %i.er, align 4, !tbaa !152
  br label %tt_get_sfnt_checksum.exit._crit_edge.i

tt_get_sfnt_checksum.exit._crit_edge.i:           ; preds = %bb.ao, %tt_get_sfnt_checksum.exit.i
  %i.eu = phi i32 [ %i.et, %bb.ao ], [ %i.es, %tt_get_sfnt_checksum.exit.i ]
  %i.ev = icmp eq i32 %i.eu, 3
  br i1 %i.ev, label %tt_check_trickyness_sfnt_ids.exit.thread, label %bb.ap

bb.ap:                                            ; preds = %tt_get_sfnt_checksum.exit._crit_edge.i, %bb.ai
  %.243.i = phi i64 [ %.142.i, %tt_get_sfnt_checksum.exit._crit_edge.i ], [ %.04157.i, %bb.ai ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 31
  br i1 %exitcond.not.i, label %.loopexit51.loopexit.i, label %bb.ai, !llvm.loop !883

.loopexit51.loopexit.i:                           ; preds = %bb.ap
  %.pre80.i = load i16, ptr %i.bf, align 8, !tbaa !473
  br label %.loopexit51.i

.loopexit51.i:                                    ; preds = %.loopexit51.loopexit.i, %bb.ae
  %i.ew = phi i16 [ %i.bl, %bb.ae ], [ %.pre80.i, %.loopexit51.loopexit.i ] ; 2 uses
  %.240.i = phi i8 [ %.03859.i, %bb.ae ], [ %.139.i, %.loopexit51.loopexit.i ] ; 2 uses
  %indvars.iv.next71.i = add nuw nsw i64 %indvars.iv70.i, 1 ; 2 uses
  %i.ex = zext i16 %i.ew to i64
  %i.ey = icmp samesign ult i64 %indvars.iv.next71.i, %i.ex
  br i1 %i.ey, label %bb.ae, label %.preheader.i, !llvm.loop !884

bb.aq:                                            ; preds = %.preheader.split._crit_edge.i
  %exitcond79.not.i = icmp eq i64 %indvars.iv76.i, 30
  br i1 %exitcond79.not.i, label %tt_check_trickyness_sfnt_ids.exit.thread16, label %.preheader.split.i.1

.preheader.split.i.1:                             ; preds = %bb.aq
  %i.ez = trunc i64 %indvars.iv76.i to i32
  %i.fa = add nsw i32 %i.ez, -16
  %.not45.i.1 = icmp ult i32 %i.fa, 12
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv76.i
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 4 ; 2 uses
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !152 ; 2 uses
  br i1 %.not45.i.1, label %bb.ar, label %.preheader.split._crit_edge.i.1

bb.ar:                                            ; preds = %.preheader.split.i.1
  %i.fe = add nsw i32 %i.fd, 1                    ; 2 uses
  store i32 %i.fe, ptr %i.fc, align 4, !tbaa !152
  br label %.preheader.split._crit_edge.i.1

.preheader.split._crit_edge.i.1:                  ; preds = %bb.ar, %.preheader.split.i.1
  %i.ff = phi i32 [ %i.fe, %bb.ar ], [ %i.fd, %.preheader.split.i.1 ]
  %i.fg = icmp eq i32 %i.ff, 3
  br i1 %i.fg, label %tt_check_trickyness_sfnt_ids.exit.thread, label %bb.as

bb.as:                                            ; preds = %.preheader.split._crit_edge.i.1
  %indvars.iv.next77.i.1 = add nuw nsw i64 %indvars.iv76.i, 2
  br label %.preheader.split.i

tt_check_trickyness_sfnt_ids.exit.thread16:       ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.au

.preheader.split.i:                               ; preds = %bb.as, %.preheader.split.i.preheader
  %indvars.iv76.i = phi i64 [ 0, %.preheader.split.i.preheader ], [ %indvars.iv.next77.i.1, %bb.as ] ; 6 uses
  %i.fh = trunc i64 %indvars.iv76.i to i32
  %i.fi = add nsw i32 %i.fh, -16
  %.not45.i = icmp ult i32 %i.fi, 12
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv76.i ; 2 uses
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !152 ; 2 uses
  br i1 %.not45.i, label %bb.at, label %.preheader.split._crit_edge.i

bb.at:                                            ; preds = %.preheader.split.i
  %i.fl = add nsw i32 %i.fk, 1                    ; 2 uses
  store i32 %i.fl, ptr %i.fj, align 8, !tbaa !152
  br label %.preheader.split._crit_edge.i

.preheader.split._crit_edge.i:                    ; preds = %bb.at, %.preheader.split.i
  %i.fm = phi i32 [ %i.fl, %bb.at ], [ %i.fk, %.preheader.split.i ]
  %i.fn = icmp eq i32 %i.fm, 3
  br i1 %i.fn, label %tt_check_trickyness_sfnt_ids.exit.thread, label %bb.aq

tt_check_trickyness_sfnt_ids.exit.thread:         ; preds = %tt_get_sfnt_checksum.exit._crit_edge.i, %.preheader.split._crit_edge.i, %.preheader.split._crit_edge.i.1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %tt_check_trickyness_family.exit.thread

tt_check_trickyness_sfnt_ids.exit:                ; preds = %.preheader.i
  %i.fo = load <16 x i32>, ptr %i.a, align 16
  %.fr = freeze <16 x i32> %i.fo
  %i.fp = icmp ne <16 x i32> %.fr, splat (i32 3)  ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.fr = load <8 x i32>, ptr %i.fq, align 16
  %.fr57 = freeze <8 x i32> %i.fr
  %i.fs = icmp ne <8 x i32> %.fr57, splat (i32 3)
  %i.ft = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.fu = load <4 x i32>, ptr %i.ft, align 16
  %.fr58 = freeze <4 x i32> %i.fu
  %i.fv = icmp ne <4 x i32> %.fr58, splat (i32 3)
  %i.fw = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.fx = load i32, ptr %i.fw, align 16
  %i.fy = icmp ne i32 %i.fx, 3
  %i.fz = getelementptr inbounds nuw i8, ptr %i.a, i64 116
  %i.ga = load i32, ptr %i.fz, align 4
  %.fr59 = freeze i32 %i.ga
  %i.gb = icmp ne i32 %.fr59, 3
  %i.gc = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.gd = load i32, ptr %i.gc, align 8
  %.fr61 = freeze i32 %i.gd
  %i.ge = icmp ne i32 %.fr61, 3
  %i.gf = shufflevector <16 x i1> %i.fp, <16 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %rdx.op = and <8 x i1> %i.gf, %i.fs             ; 2 uses
  %i.gg = shufflevector <8 x i1> %rdx.op, <8 x i1> poison, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gh = shufflevector <16 x i1> %i.gg, <16 x i1> %i.fp, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 5, i32 6, i32 7, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.gi = shufflevector <8 x i1> %rdx.op, <8 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op54 = and <4 x i1> %i.gi, %i.fv
  %i.gj = shufflevector <4 x i1> %rdx.op54, <4 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gk = shufflevector <16 x i1> %i.gj, <16 x i1> %i.gh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.gl = bitcast <16 x i1> %i.gk to i16
  %i.gm = icmp eq i16 %i.gl, -1
  %op.rdx = select i1 %i.gm, i1 %i.fy, i1 false
  %1 = freeze i1 %op.rdx
  %2 = and i1 %1, %i.gb
  %op.rdx56 = and i1 %2, %i.ge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br i1 %op.rdx56, label %bb.au, label %tt_check_trickyness_family.exit.thread

bb.au:                                            ; preds = %tt_check_trickyness_sfnt_ids.exit.thread16, %tt_check_trickyness_sfnt_ids.exit
  br label %tt_check_trickyness_family.exit.thread

tt_check_trickyness_family.exit.thread:           ; preds = %bb.z, %bb.t, %bb.w, %bb.s, %bb.aa, %bb.r, %bb.y, %bb.q, %bb.ab, %bb.p, %bb.v, %bb.o, %bb.ac, %bb.n, %bb.x, %bb.m, %bb.l, %bb.u, %tt_skip_pdffont_random_tag.exit.i, %bb.au, %tt_check_trickyness_sfnt_ids.exit, %tt_check_trickyness_sfnt_ids.exit.thread, %tt_check_trickyness_family.exit, %bb.a
  %.0 = phi i8 [ 0, %bb.a ], [ 1, %tt_check_trickyness_sfnt_ids.exit.thread ], [ 1, %tt_check_trickyness_family.exit ], [ 0, %bb.au ], [ 1, %tt_check_trickyness_sfnt_ids.exit ], [ 1, %tt_skip_pdffont_random_tag.exit.i ], [ 1, %bb.u ], [ 1, %bb.l ], [ 1, %bb.m ], [ 1, %bb.x ], [ 1, %bb.n ], [ 1, %bb.ac ], [ 1, %bb.o ], [ 1, %bb.v ], [ 1, %bb.p ], [ 1, %bb.ab ], [ 1, %bb.q ], [ 1, %bb.y ], [ 1, %bb.r ], [ 1, %bb.aa ], [ 1, %bb.s ], [ 1, %bb.w ], [ 1, %bb.t ], [ 1, %bb.z ]
  ret i8 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @tt_face_load_hdmx(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !323
  %i.g = call i32 %i.f(ptr noundef %0, i64 noundef 1751412088, ptr noundef %1, ptr noundef nonnull %i.b) #21
  %i.h = icmp ne i32 %i.g, 0
  %i.i = load i64, ptr %i.b, align 8              ; 2 uses
  %i.j = icmp ult i64 %i.i, 8
  %or.cond = select i1 %i.h, i1 true, i1 %i.j
  br i1 %or.cond, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1280 ; 3 uses
  %i.l = call i32 @FT_Stream_ExtractFrame(ptr noundef nonnull %1, i64 noundef %i.i, ptr noundef nonnull %i.k) #21 ; 2 uses
  store i32 %i.l, ptr %i.a, align 4, !tbaa !152
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !892  ; 8 uses
  %i.n = load i64, ptr %i.b, align 8, !tbaa !185
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.q = load i8, ptr %i.p, align 1, !tbaa !186   ; 2 uses
  %i.r = zext i8 %i.q to i32
  %i.s = shl nuw nsw i32 %i.r, 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 3
  %i.u = load i8, ptr %i.t, align 1, !tbaa !186   ; 2 uses
  %i.v = zext i8 %i.u to i32                      ; 2 uses
  %i.w = or disjoint i32 %i.s, %i.v               ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.z = load i8, ptr %i.y, align 1, !tbaa !186
  %i.aa = zext i8 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.aa, 24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 5
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !186
  %i.ae = zext i8 %i.ad to i64
  %i.af = shl nuw nsw i64 %i.ae, 16
  %i.ag = or disjoint i64 %i.af, %i.ab            ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 6
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !186
  %i.aj = zext i8 %i.ai to i64
  %i.ak = shl nuw nsw i64 %i.aj, 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.m, i64 7
  %i.am = load i8, ptr %i.al, align 1, !tbaa !186
  %i.an = zext i8 %i.am to i64
  %i.ao = or disjoint i64 %i.ak, %i.an
  %i.ap = icmp eq i64 %i.ag, 4294901760
  %i.aq = select i1 %i.ap, i64 0, i64 %i.ag
  %spec.select = or disjoint i64 %i.ao, %i.aq     ; 3 uses
  %i.ar = icmp ne i8 %i.q, 0
  %i.as = icmp eq i32 %i.w, 0
  %or.cond3 = select i1 %i.ar, i1 true, i1 %i.as
  br i1 %or.cond3, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load i64, ptr %i.at, align 8, !tbaa !457
  %i.av = add nsw i64 %i.au, 5
  %i.aw = and i64 %i.av, -4
  %.not57 = icmp eq i64 %spec.select, %i.aw
  br i1 %.not57, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ax = zext nneg i32 %i.w to i64
  %i.ay = call ptr @ft_mem_qrealloc(ptr noundef %i.d, i64 noundef 8, i64 noundef 0, i64 noundef %i.ax, ptr noundef null, ptr noundef nonnull %i.a) #21 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1312
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !91
  %i.ba = load i32, ptr %i.a, align 4, !tbaa !152
  %.not58 = icmp eq i32 %i.ba, 0
  br i1 %.not58, label %.lr.ph.preheader, label %bb.h

.lr.ph.preheader:                                 ; preds = %bb.e
  %wide.trip.count = zext i8 %i.u to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %.060 = phi ptr [ %i.x, %.lr.ph.preheader ], [ %i.bb, %bb.f ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.060, i64 %spec.select ; 2 uses
  %i.bc = icmp ugt ptr %i.bb, %i.o
  br i1 %i.bc, label %._crit_edge.split.loop.exit67, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv
  store ptr %.060, ptr %i.bd, align 8, !tbaa !198
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !891

._crit_edge.split.loop.exit67:                    ; preds = %.lr.ph
  %i.be = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.f, %._crit_edge.split.loop.exit67
  %.051.lcssa.ph = phi i32 [ %i.be, %._crit_edge.split.loop.exit67 ], [ %i.v, %bb.f ] ; 2 uses
  %i.bf = zext nneg i32 %.051.lcssa.ph to i64
  call void @qsort(ptr noundef %i.ay, i64 noundef %i.bf, i64 noundef 8, ptr noundef nonnull @compare_ppem) #21
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1296
  store i32 %.051.lcssa.ph, ptr %i.bg, align 8, !tbaa !472
  %i.bh = load i64, ptr %i.b, align 8, !tbaa !185
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 1288
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !893
  br label %.sink.split

.sink.split:                                      ; preds = %._crit_edge, %bb.h
  %.sink70 = phi i64 [ 1288, %bb.h ], [ 1304, %._crit_edge ]
  %.sink = phi i64 [ 0, %bb.h ], [ %spec.select, %._crit_edge ]
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 %.sink70
  store i64 %.sink, ptr %i.bj, align 8, !tbaa !185
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.b
  %i.bk = load i32, ptr %i.a, align 4, !tbaa !152
  br label %bb.i

bb.h:                                             ; preds = %bb.e, %bb.d, %bb.c
  call void @FT_Stream_ReleaseFrame(ptr noundef nonnull %1, ptr noundef nonnull %i.k) #21
  br label %.sink.split

bb.i:                                             ; preds = %bb.a, %bb.g
  %.052 = phi i32 [ %i.bk, %bb.g ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i32 %.052
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @tt_face_load_loca(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !323
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1184 ; 2 uses
  %i.e = tail call i32 %i.c(ptr noundef %0, i64 noundef 1735162214, ptr noundef %1, ptr noundef nonnull %i.d) #21 ; 3 uses
  %i.f = and i32 %i.e, 255
  %i.g = icmp eq i32 %i.f, 142
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.p

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !418
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !77
  %.not64 = icmp eq ptr %i.k, null
  br i1 %.not64, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1192
  store i64 0, ptr %i.l, align 8, !tbaa !426
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.m = tail call i64 @FT_Stream_Pos(ptr noundef %1) #21
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1192
  store i64 %i.m, ptr %i.n, align 8, !tbaa !426
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.e, %bb.f
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !323
  %i.p = call i32 %i.o(ptr noundef nonnull %0, i64 noundef 1819239265, ptr noundef %1, ptr noundef nonnull %i.a) #21
  %.not65 = icmp eq i32 %i.p, 0
  br i1 %.not65, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 390
  %i.r = load i16, ptr %i.q, align 2, !tbaa !415
  %.not66 = icmp eq i16 %i.r, 0
  %i.s = load i64, ptr %i.a, align 8, !tbaa !185  ; 2 uses
  %i.t = select i1 %.not66, i64 1, i64 2          ; 3 uses
  %i.u = shl nuw nsw i64 65536, %i.t              ; 3 uses
  %i.v = icmp ugt i64 %i.s, %i.u
  br i1 %i.v, label %bb.i, label %bb.j

end_hunk_0
