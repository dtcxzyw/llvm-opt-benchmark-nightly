Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/bfrop_base_macro_backers?download=true
inline.NumInlined: 556
inline.NumDeleted: 143
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 43
begin_hunk_0_@pmix_bfrops_base_tma_value_xfer:bb.a
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !8
  %i.cz = tail call fastcc i32 @pmix_bfrops_base_tma_copy_darray(ptr noundef nonnull %i.cw, ptr noundef %i.cy)
  br label %bb.bk

bb.ak:                                            ; preds = %bb.a
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !8
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !8
  br label %bb.bk

bb.al:                                            ; preds = %bb.a
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.df = load i8, ptr %i.de, align 8
  store i8 %i.df, ptr %i.dd, align 8
  br label %bb.bk

bb.am:                                            ; preds = %bb.a
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.dg, i8 0, i64 17, i1 false)
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !8  ; 2 uses
  %.not = icmp eq ptr %i.di, null
  br i1 %.not, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dj = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.di) #40
  store ptr %i.dj, ptr %i.dg, align 8, !tbaa !8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !8  ; 2 uses
  %.not160 = icmp eq ptr %i.dl, null
  br i1 %.not160, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dm = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.dl) #40
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.dm, ptr %i.dn, align 8, !tbaa !8
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dp = load i8, ptr %i.do, align 8, !tbaa !8
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.dp, ptr %i.dq, align 8, !tbaa !8
  br label %bb.bk

bb.ar:                                            ; preds = %bb.a
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !8
  %i.du = tail call fastcc i32 @pmix_bfrops_base_tma_copy_coord(ptr noundef nonnull %i.dr, ptr noundef %i.dt)
  br label %bb.bk

bb.as:                                            ; preds = %bb.a
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dx = load i8, ptr %i.dw, align 8
  store i8 %i.dx, ptr %i.dv, align 8
  br label %bb.bk

bb.at:                                            ; preds = %bb.a
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ea = load i8, ptr %i.dz, align 8
  store i8 %i.ea, ptr %i.dy, align 8
  br label %bb.bk

bb.au:                                            ; preds = %bb.a
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !8
  %i.ee = tail call fastcc i32 @pmix_bfrops_base_tma_copy_topology(ptr noundef nonnull %i.eb, ptr noundef %i.ed)
  switch i32 %i.ee, label %bb.bk [
    i32 -31, label %bb.av
    i32 -47, label %bb.av
  ]

bb.av:                                            ; preds = %bb.au, %bb.au
  %i.ef = load ptr, ptr %i.ec, align 8, !tbaa !8
  store ptr %i.ef, ptr %i.eb, align 8, !tbaa !8
  br label %bb.bk

bb.aw:                                            ; preds = %bb.a
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !8
  %i.ej = tail call fastcc i32 @pmix_bfrops_base_tma_copy_cpuset(ptr noundef nonnull %i.eg, ptr noundef %i.ei)
  switch i32 %i.ej, label %bb.bk [
    i32 -31, label %bb.ax
    i32 -47, label %bb.ax
  ]

bb.ax:                                            ; preds = %bb.aw, %bb.aw
  %i.ek = load ptr, ptr %i.eh, align 8, !tbaa !8
  store ptr %i.ek, ptr %i.eg, align 8, !tbaa !8
  br label %bb.bk

bb.ay:                                            ; preds = %bb.a
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.en = load i16, ptr %i.em, align 8
  store i16 %i.en, ptr %i.el, align 8
  br label %bb.bk

bb.az:                                            ; preds = %bb.a
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !8
  %i.er = tail call fastcc i32 @pmix_bfrops_base_tma_copy_geometry(ptr noundef nonnull %i.eo, ptr noundef %i.eq)
  br label %bb.bk

bb.ba:                                            ; preds = %bb.a
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.eu = load i64, ptr %i.et, align 8
  store i64 %i.eu, ptr %i.es, align 8
  br label %bb.bk

bb.bb:                                            ; preds = %bb.a
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !8
  %i.ey = tail call fastcc i32 @pmix_bfrops_base_tma_copy_devdist(ptr noundef nonnull %i.ev, ptr noundef %i.ex)
  br label %bb.bk

bb.bc:                                            ; preds = %bb.a
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !8
  %i.fc = tail call fastcc i32 @pmix_bfrops_base_tma_copy_endpoint(ptr noundef nonnull %i.ez, ptr noundef %i.fb)
  br label %bb.bk

bb.bd:                                            ; preds = %bb.a
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !8
  %i.fg = tail call fastcc i32 @pmix_bfrops_base_tma_copy_regattr(ptr noundef nonnull %i.fd, ptr noundef %i.ff)
  br label %bb.bk

bb.be:                                            ; preds = %bb.a
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !8
  %i.fk = tail call fastcc i32 @pmix_bfrops_base_tma_copy_dbuf(ptr noundef nonnull %i.fh, ptr noundef %i.fj)
  br label %bb.bk

bb.bf:                                            ; preds = %bb.a
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !8
  %i.fo = tail call fastcc i32 @pmix_bfrops_base_tma_copy_pstats(ptr noundef nonnull %i.fl, ptr noundef %i.fn)
  br label %bb.bk

bb.bg:                                            ; preds = %bb.a
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !8
  %i.fs = tail call fastcc i32 @pmix_bfrops_base_tma_copy_dkstats(ptr noundef nonnull %i.fp, ptr noundef %i.fr)
  br label %bb.bk

bb.bh:                                            ; preds = %bb.a
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !8
  %i.fw = tail call fastcc i32 @pmix_bfrops_base_tma_copy_netstats(ptr noundef nonnull %i.ft, ptr noundef %i.fv)
  br label %bb.bk

bb.bi:                                            ; preds = %bb.a
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !8
  %i.ga = tail call fastcc i32 @pmix_bfrops_base_tma_copy_ndstats(ptr noundef nonnull %i.fx, ptr noundef %i.fz)
  br label %bb.bk

bb.bj:                                            ; preds = %bb.a
  %i.gb = zext i16 %i.a to i32
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef nonnull @.str.8, i32 noundef %i.gb) #40
  br label %bb.bk

bb.bk:                                            ; preds = %pmix_bfrops_base_tma_proc_create.exit.thread, %bb.a, %bb.b, %bb.c, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %.preheader.i, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ak, %bb.al, %bb.aq, %bb.as, %bb.at, %bb.ay, %bb.ba, %bb.f, %bb.e, %bb.ad, %bb.ac, %bb.av, %bb.ax, %bb.au, %bb.aw, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.az, %bb.ar, %bb.aj, %bb.ai, %bb.y
  %.0 = phi i32 [ -1, %bb.bj ], [ -32, %pmix_bfrops_base_tma_proc_create.exit.thread ], [ %i.bq, %bb.y ], [ %i.ga, %bb.bi ], [ %i.cv, %bb.ai ], [ %i.cz, %bb.aj ], [ %i.du, %bb.ar ], [ %i.er, %bb.az ], [ %i.ey, %bb.bb ], [ %i.fc, %bb.bc ], [ %i.fg, %bb.bd ], [ %i.fk, %bb.be ], [ %i.fo, %bb.bf ], [ %i.fs, %bb.bg ], [ %i.fw, %bb.bh ], [ 0, %bb.aw ], [ 0, %bb.au ], [ 0, %bb.ax ], [ 0, %bb.av ], [ 0, %bb.ac ], [ 0, %bb.ad ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %bb.ba ], [ 0, %bb.ay ], [ 0, %bb.at ], [ 0, %bb.as ], [ 0, %bb.aq ], [ 0, %bb.al ], [ 0, %bb.ak ], [ 0, %bb.ah ], [ 0, %bb.ag ], [ 0, %bb.af ], [ 0, %bb.ae ], [ 0, %.preheader.i ], [ 0, %bb.x ], [ 0, %bb.w ], [ 0, %bb.v ], [ 0, %bb.u ], [ 0, %bb.t ], [ 0, %bb.s ], [ 0, %bb.r ], [ 0, %bb.q ], [ 0, %bb.p ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %bb.m ], [ 0, %bb.l ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @PMIx_Value_compare(ptr noundef %0, ptr noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call i32 @pmix_bfrops_base_value_cmp(ptr noundef %0, ptr noundef %1) #40
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @PMIx_Info_construct(ptr nofree noundef writeonly captures(none) initializes((0, 516), (520, 552)) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(516) %0, i8 0, i64 516, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define void @PMIx_Info_destruct(ptr nofree noundef captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 512
  %.val.i = load i32, ptr %i.a, align 8, !tbaa !80
  %i.b = and i32 %.val.i, 16
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.b, label %pmix_bfrops_base_tma_info_destruct.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 520
  tail call fastcc void @pmix_bfrops_base_tma_value_destruct(ptr noundef nonnull %i.c), !inline_history !82
  br label %pmix_bfrops_base_tma_info_destruct.exit

pmix_bfrops_base_tma_info_destruct.exit:          ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nofree nounwind memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define noundef ptr @PMIx_Info_create(i64 noundef %0) local_unnamed_addr #12 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %pmix_bfrops_base_tma_info_create.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = mul i64 %0, 552
  %i.c = tail call noalias noundef ptr @malloc(i64 noundef %i.b) #41 ; 8 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %pmix_bfrops_base_tma_info_create.exit, label %.preheader.i.preheader, !prof !79

.preheader.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %0, 3                       ; 3 uses
  %i.e = icmp ult i64 %0, 4
  br i1 %i.e, label %.preheader.i.epil.preheader, label %.preheader.i.preheader.new

.preheader.i.preheader.new:                       ; preds = %.preheader.i.preheader
  %unroll_iter = and i64 %0, -4
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.i.preheader.new
  %.01.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %i.q, %.preheader.i ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader.i.preheader.new ], [ %niter.next.3, %.preheader.i ]
  %i.f = getelementptr inbounds nuw [552 x i8], ptr %i.c, i64 %.01.i ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 520
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(516) %i.f, i8 0, i64 516, i1 false)
  %i.h = getelementptr inbounds nuw [552 x i8], ptr %i.c, i64 %.01.i ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 552
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 1072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(516) %i.i, i8 0, i64 516, i1 false)
  %i.k = getelementptr inbounds nuw [552 x i8], ptr %i.c, i64 %.01.i ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1104
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 1624
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(516) %i.l, i8 0, i64 516, i1 false)
  %i.n = getelementptr inbounds nuw [552 x i8], ptr %i.c, i64 %.01.i ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1656
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 2176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(516) %i.o, i8 0, i64 516, i1 false)
  %i.q = add nuw i64 %.01.i, 4                    ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %pmix_bfrops_base_tma_info_create.exit.loopexit.unr-lcssa, label %.preheader.i, !llvm.loop !83

pmix_bfrops_base_tma_info_create.exit.loopexit.unr-lcssa: ; preds = %.preheader.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %pmix_bfrops_base_tma_info_create.exit, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %pmix_bfrops_base_tma_info_create.exit.loopexit.unr-lcssa, %.preheader.i.preheader
  %.01.i.epil.init = phi i64 [ 0, %.preheader.i.preheader ], [ %i.q, %pmix_bfrops_base_tma_info_create.exit.loopexit.unr-lcssa ]
  %lcmp.mod2 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod2)
  br label %.preheader.i.epil

.preheader.i.epil:                                ; preds = %.preheader.i.epil, %.preheader.i.epil.preheader
  %.01.i.epil = phi i64 [ %i.t, %.preheader.i.epil ], [ %.01.i.epil.init, %.preheader.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.epil ], [ 0, %.preheader.i.epil.preheader ]
  %i.r = getelementptr inbounds nuw [552 x i8], ptr %i.c, i64 %.01.i.epil ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 520
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(516) %i.r, i8 0, i64 516, i1 false)
  %i.t = add nuw i64 %.01.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %pmix_bfrops_base_tma_info_create.exit, label %.preheader.i.epil, !llvm.loop !84

pmix_bfrops_base_tma_info_create.exit:            ; preds = %pmix_bfrops_base_tma_info_create.exit.loopexit.unr-lcssa, %.preheader.i.epil, %bb.a, %bb.b
  %.1.i = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.c, %.preheader.i.epil ], [ %i.c, %pmix_bfrops_base_tma_info_create.exit.loopexit.unr-lcssa ]
  ret ptr %.1.i
}

; Function Attrs: inlinehint nofree nounwind memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef ptr @pmix_bfrops_base_tma_info_create(i64 noundef %0) unnamed_addr #13 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = mul i64 %0, 552
  %i.c = tail call noalias noundef ptr @malloc(i64 noundef %i.b) #41 ; 8 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.loopexit, label %.preheader.preheader, !prof !79

.preheader.preheader:                             ; preds = %bb.b
  %xtraiter = and i64 %0, 3                       ; 3 uses
  %i.e = icmp ult i64 %0, 4
  br i1 %i.e, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %0, -4
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.01 = phi i64 [ 0, %.preheader.preheader.new ], [ %i.q, %.preheader ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.3, %.preheader ]
  %i.f = getelementptr inbounds nuw [552 x i8], ptr %i.c, i64 %.01 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 520
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(516) %i.f, i8 0, i64 516, i1 false)
  %i.h = getelementptr inbounds nuw [552 x i8], ptr %i.c, i64 %.01 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 552
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 1072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(516) %i.i, i8 0, i64 516, i1 false)
  %i.k = getelementptr inbounds nuw [552 x i8], ptr %i.c, i64 %.01 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1104
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 1624
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(516) %i.l, i8 0, i64 516, i1 false)
  %i.n = getelementptr inbounds nuw [552 x i8], ptr %i.c, i64 %.01 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1656
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 2176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(516) %i.o, i8 0, i64 516, i1 false)
  %i.q = add nuw i64 %.01, 4                      ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.preheader, !llvm.loop !83

.loopexit.loopexit.unr-lcssa:                     ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %.loopexit.loopexit.unr-lcssa, %.preheader.preheader
  %.01.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.q, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod3 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod3)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %.01.epil = phi i64 [ %i.t, %.preheader.epil ], [ %.01.epil.init, %.preheader.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %i.r = getelementptr inbounds nuw [552 x i8], ptr %i.c, i64 %.01.epil ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 520
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(516) %i.r, i8 0, i64 516, i1 false)
  %i.t = add nuw i64 %.01.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.preheader.epil, !llvm.loop !86

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.preheader.epil, %bb.b, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.c, %.preheader.epil ], [ %i.c, %.loopexit.loopexit.unr-lcssa ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define void @PMIx_Info_free(ptr noundef captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #8 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %pmix_bfrops_base_tma_info_free.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %.not2.i = icmp eq i64 %1, 0
  br i1 %.not2.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %pmix_bfrops_base_tma_info_destruct.exit.i, %.preheader.i
  tail call void @free(ptr noundef nonnull %0) #40, !inline_history !87
  br label %pmix_bfrops_base_tma_info_free.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %pmix_bfrops_base_tma_info_destruct.exit.i
  %.01.i = phi i64 [ %i.e, %pmix_bfrops_base_tma_info_destruct.exit.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.a = getelementptr inbounds nuw [552 x i8], ptr %0, i64 %.01.i ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 512
  %.val.i.i = load i32, ptr %i.b, align 8, !tbaa !80
  %i.c = and i32 %.val.i.i, 16
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %bb.b, label %pmix_bfrops_base_tma_info_destruct.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 520
  tail call fastcc void @pmix_bfrops_base_tma_value_destruct(ptr noundef nonnull %i.d), !inline_history !88
  br label %pmix_bfrops_base_tma_info_destruct.exit.i

pmix_bfrops_base_tma_info_destruct.exit.i:        ; preds = %bb.b, %.lr.ph.i
  %i.e = add nuw i64 %.01.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.e, %1
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !89

pmix_bfrops_base_tma_info_free.exit:              ; preds = %bb.a, %._crit_edge.i
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 3) i32 @PMIx_Info_true(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.b = tail call fastcc range(i32 0, 3) i32 @pmix_bfrops_base_tma_value_true(ptr noundef nonnull readonly %i.a)
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define range(i32 -27, 1) i32 @PMIx_Info_load(ptr noundef initializes((0, 516), (520, 552)) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2, i16 noundef zeroext %3) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(516) %0, i8 0, i64 516, i1 false)
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %pmix_bfrops_base_tma_info_load.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(512) %0, i8 0, i64 512, i1 false)
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %bb.b
  %.012.i.i.i = phi i64 [ 0, %bb.b ], [ %i.q, %bb.d ] ; 2 uses
  %.0811.i.i.i = phi ptr [ %0, %bb.b ], [ %i.s, %bb.d ] ; 8 uses
  %.0910.i.i.i = phi ptr [ %1, %bb.b ], [ %i.r, %bb.d ] ; 5 uses
  %i.c = load i8, ptr %.0910.i.i.i, align 1, !tbaa !8 ; 2 uses
  store i8 %i.c, ptr %.0811.i.i.i, align 1, !tbaa !8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %pmix_bfrops_base_tma_load_key.exit.i, label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %.lr.ph.i.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.0910.i.i.i, i64 1
  %i.f = getelementptr inbounds nuw i8, ptr %.0811.i.i.i, i64 1
  %i.g = load i8, ptr %i.e, align 1, !tbaa !8     ; 2 uses
  store i8 %i.g, ptr %i.f, align 1, !tbaa !8
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %pmix_bfrops_base_tma_load_key.exit.i.split.loop.exit8, label %.lr.ph.i.i.i.2

.lr.ph.i.i.i.2:                                   ; preds = %.lr.ph.i.i.i.1
  %i.i = getelementptr inbounds nuw i8, ptr %.0910.i.i.i, i64 2
  %i.j = getelementptr inbounds nuw i8, ptr %.0811.i.i.i, i64 2
  %i.k = load i8, ptr %i.i, align 1, !tbaa !8     ; 2 uses
  store i8 %i.k, ptr %i.j, align 1, !tbaa !8
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %pmix_bfrops_base_tma_load_key.exit.i.split.loop.exit6, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.2
  %i.m = getelementptr inbounds nuw i8, ptr %.0811.i.i.i, i64 3 ; 3 uses
  %exitcond.not.i.i.i.2 = icmp eq i64 %.012.i.i.i, 508
  br i1 %exitcond.not.i.i.i.2, label %pmix_bfrops_base_tma_load_key.exit.i, label %.lr.ph.i.i.i.3

.lr.ph.i.i.i.3:                                   ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.0910.i.i.i, i64 3
  %i.o = load i8, ptr %i.n, align 1, !tbaa !8     ; 2 uses
  store i8 %i.o, ptr %i.m, align 1, !tbaa !8
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %pmix_bfrops_base_tma_load_key.exit.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.3
  %i.q = add nuw nsw i64 %.012.i.i.i, 4
  %i.r = getelementptr inbounds nuw i8, ptr %.0910.i.i.i, i64 4
  %i.s = getelementptr inbounds nuw i8, ptr %.0811.i.i.i, i64 4
  br label %.lr.ph.i.i.i

pmix_bfrops_base_tma_load_key.exit.i.split.loop.exit6: ; preds = %.lr.ph.i.i.i.2
  %i.t = getelementptr inbounds nuw i8, ptr %.0811.i.i.i, i64 2
  br label %pmix_bfrops_base_tma_load_key.exit.i

pmix_bfrops_base_tma_load_key.exit.i.split.loop.exit8: ; preds = %.lr.ph.i.i.i.1
  %i.u = getelementptr inbounds nuw i8, ptr %.0811.i.i.i, i64 1
  br label %pmix_bfrops_base_tma_load_key.exit.i

pmix_bfrops_base_tma_load_key.exit.i:             ; preds = %.lr.ph.i.i.i, %bb.c, %.lr.ph.i.i.i.3, %pmix_bfrops_base_tma_load_key.exit.i.split.loop.exit8, %pmix_bfrops_base_tma_load_key.exit.i.split.loop.exit6
  %.08.lcssa.i.i.i = phi ptr [ %i.m, %bb.c ], [ %i.u, %pmix_bfrops_base_tma_load_key.exit.i.split.loop.exit8 ], [ %i.t, %pmix_bfrops_base_tma_load_key.exit.i.split.loop.exit6 ], [ %i.m, %.lr.ph.i.i.i.3 ], [ %.0811.i.i.i, %.lr.ph.i.i.i ]
  store i8 0, ptr %.08.lcssa.i.i.i, align 1, !tbaa !8
  tail call void @pmix_bfrops_base_value_load(ptr noundef nonnull %i.a, ptr noundef %2, i16 noundef zeroext %3) #40
  br label %pmix_bfrops_base_tma_info_load.exit

pmix_bfrops_base_tma_info_load.exit:              ; preds = %bb.a, %pmix_bfrops_base_tma_load_key.exit.i
  %.0.i = phi i32 [ 0, %pmix_bfrops_base_tma_load_key.exit.i ], [ -27, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @PMIx_Info_required(ptr nofree noundef captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !80
  %i.c = or i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !80
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define zeroext i1 @PMIx_Info_is_required(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 512
  %.val = load i32, ptr %i.a, align 8, !tbaa !80
  %i.b = trunc i32 %.val to i1
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @PMIx_Info_optional(ptr nofree noundef captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !80
  %i.c = and i32 %i.b, -2
  store i32 %i.c, ptr %i.a, align 8, !tbaa !80
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define zeroext i1 @PMIx_Info_is_optional(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 512
  %.val = load i32, ptr %i.a, align 8, !tbaa !80
  %i.b = and i32 %.val, 1
  %.not.i = icmp eq i32 %i.b, 0
  ret i1 %.not.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @PMIx_Info_processed(ptr nofree noundef captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !80
  %i.c = or i32 %i.b, 4
  store i32 %i.c, ptr %i.a, align 8, !tbaa !80
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define zeroext i1 @PMIx_Info_was_processed(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 512
  %.val = load i32, ptr %i.a, align 8, !tbaa !80
  %i.b = and i32 %.val, 4
  %i.c = icmp ne i32 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @PMIx_Info_set_end(ptr nofree noundef captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !80
  %i.c = or i32 %i.b, 2
  store i32 %i.c, ptr %i.a, align 8, !tbaa !80
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define zeroext i1 @PMIx_Info_is_end(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 512
  %.val = load i32, ptr %i.a, align 8, !tbaa !80
  %i.b = and i32 %.val, 2
  %i.c = icmp ne i32 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @PMIx_Info_qualifier(ptr nofree noundef captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !80
  %i.c = or i32 %i.b, 8
  store i32 %i.c, ptr %i.a, align 8, !tbaa !80
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define zeroext i1 @PMIx_Info_is_qualifier(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 512
  %.val = load i32, ptr %i.a, align 8, !tbaa !80
  %i.b = and i32 %.val, 8
  %i.c = icmp ne i32 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @PMIx_Info_persistent(ptr nofree noundef captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !80
  %i.c = or i32 %i.b, 16
  store i32 %i.c, ptr %i.a, align 8, !tbaa !80
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define zeroext i1 @PMIx_Info_is_persistent(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 512
  %.val = load i32, ptr %i.a, align 8, !tbaa !80
  %i.b = and i32 %.val, 16
  %i.c = icmp ne i32 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: nounwind uwtable
define i32 @PMIx_Info_xfer(ptr noundef %0, ptr noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %i.c = or i1 %i.a, %i.b
  br i1 %i.c, label %pmix_bfrops_base_tma_info_xfer.exit, label %bb.b, !prof !79

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(512) %0, i8 0, i64 512, i1 false)
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %bb.b
  %.012.i.i.i = phi i64 [ 0, %bb.b ], [ %i.r, %bb.d ] ; 2 uses
  %.0811.i.i.i = phi ptr [ %0, %bb.b ], [ %i.t, %bb.d ] ; 8 uses
  %.0910.i.i.i = phi ptr [ %1, %bb.b ], [ %i.s, %bb.d ] ; 5 uses
  %i.d = load i8, ptr %.0910.i.i.i, align 1, !tbaa !8 ; 2 uses
end_hunk_0
begin_hunk_1_@PMIx_Proc_create:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 516
  store i32 -1, ptr %i.i, align 4, !tbaa !12
  %i.j = getelementptr inbounds nuw [260 x i8], ptr %i.c, i64 %.01.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 520
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %i.k, i8 0, i64 256, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 776
  store i32 -1, ptr %i.l, align 4, !tbaa !12
  %i.m = getelementptr inbounds nuw [260 x i8], ptr %i.c, i64 %.01.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 780
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %i.n, i8 0, i64 256, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 1036
  store i32 -1, ptr %i.o, align 4, !tbaa !12
  %i.p = add nuw i64 %.01.i, 4                    ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %pmix_bfrops_base_tma_proc_create.exit.loopexit.unr-lcssa, label %.preheader.i, !llvm.loop !114

pmix_bfrops_base_tma_proc_create.exit.loopexit.unr-lcssa: ; preds = %.preheader.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %pmix_bfrops_base_tma_proc_create.exit, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %pmix_bfrops_base_tma_proc_create.exit.loopexit.unr-lcssa, %.preheader.i.preheader
  %.01.i.epil.init = phi i64 [ 0, %.preheader.i.preheader ], [ %i.p, %pmix_bfrops_base_tma_proc_create.exit.loopexit.unr-lcssa ]
  %lcmp.mod2 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod2)
  br label %.preheader.i.epil

.preheader.i.epil:                                ; preds = %.preheader.i.epil, %.preheader.i.epil.preheader
  %.01.i.epil = phi i64 [ %i.s, %.preheader.i.epil ], [ %.01.i.epil.init, %.preheader.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.epil ], [ 0, %.preheader.i.epil.preheader ]
  %i.q = getelementptr inbounds nuw [260 x i8], ptr %i.c, i64 %.01.i.epil ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %i.q, i8 0, i64 256, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 256
  store i32 -1, ptr %i.r, align 4, !tbaa !12
  %i.s = add nuw i64 %.01.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %pmix_bfrops_base_tma_proc_create.exit, label %.preheader.i.epil, !llvm.loop !115

pmix_bfrops_base_tma_proc_create.exit:            ; preds = %pmix_bfrops_base_tma_proc_create.exit.loopexit.unr-lcssa, %.preheader.i.epil, %bb.a, %bb.b
  %.011.i = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.c, %.preheader.i.epil ], [ %i.c, %pmix_bfrops_base_tma_proc_create.exit.loopexit.unr-lcssa ]
  ret ptr %.011.i
}

; Function Attrs: inlinehint nofree nounwind memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef ptr @pmix_bfrops_base_tma_proc_create(i64 noundef %0) unnamed_addr #13 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = mul i64 %0, 260
  %i.c = tail call noalias noundef ptr @malloc(i64 noundef %i.b) #41 ; 8 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.loopexit, label %.preheader.preheader, !prof !79

.preheader.preheader:                             ; preds = %bb.b
  %xtraiter = and i64 %0, 3                       ; 3 uses
  %i.d = icmp ult i64 %0, 4
  br i1 %i.d, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %0, -4
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.01 = phi i64 [ 0, %.preheader.preheader.new ], [ %i.p, %.preheader ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.3, %.preheader ]
  %i.e = getelementptr inbounds nuw [260 x i8], ptr %i.c, i64 %.01 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %i.e, i8 0, i64 256, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 256
  store i32 -1, ptr %i.f, align 4, !tbaa !12
  %i.g = getelementptr inbounds nuw [260 x i8], ptr %i.c, i64 %.01 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 260
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %i.h, i8 0, i64 256, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 516
  store i32 -1, ptr %i.i, align 4, !tbaa !12
  %i.j = getelementptr inbounds nuw [260 x i8], ptr %i.c, i64 %.01 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 520
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %i.k, i8 0, i64 256, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 776
  store i32 -1, ptr %i.l, align 4, !tbaa !12
  %i.m = getelementptr inbounds nuw [260 x i8], ptr %i.c, i64 %.01 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 780
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %i.n, i8 0, i64 256, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 1036
  store i32 -1, ptr %i.o, align 4, !tbaa !12
  %i.p = add nuw i64 %.01, 4                      ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.preheader, !llvm.loop !114

.loopexit.loopexit.unr-lcssa:                     ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %.loopexit.loopexit.unr-lcssa, %.preheader.preheader
  %.01.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.p, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod3 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod3)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %.01.epil = phi i64 [ %i.s, %.preheader.epil ], [ %.01.epil.init, %.preheader.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %i.q = getelementptr inbounds nuw [260 x i8], ptr %i.c, i64 %.01.epil ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %i.q, i8 0, i64 256, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 256
  store i32 -1, ptr %i.r, align 4, !tbaa !12
  %i.s = add nuw i64 %.01.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.preheader.epil, !llvm.loop !116

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.preheader.epil, %bb.b, %bb.a
  %.011 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.c, %.preheader.epil ], [ %i.c, %.loopexit.loopexit.unr-lcssa ]
  ret ptr %.011
}

; Function Attrs: nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @PMIx_Proc_free(ptr noundef captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #17 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %pmix_bfrops_base_tma_proc_free.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %.not2.i = icmp eq i64 %1, 0
  br i1 %.not2.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %xtraiter = and i64 %1, 3                       ; 3 uses
  %i.a = icmp ult i64 %1, 4
  br i1 %i.a, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %1, -4
  br label %.lr.ph.i

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.01.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.p, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod2 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod2)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.01.i.epil = phi i64 [ %i.d, %.lr.ph.i.epil ], [ %.01.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.b = getelementptr inbounds nuw [260 x i8], ptr %0, i64 %.01.i.epil ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %i.b, i8 0, i64 256, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  store i32 -1, ptr %i.c, align 4, !tbaa !12
  %i.d = add nuw i64 %.01.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %.lr.ph.i.epil, !llvm.loop !117

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %.preheader.i
  tail call void @free(ptr noundef nonnull %0) #40
  br label %pmix_bfrops_base_tma_proc_free.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.01.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.p, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.e = getelementptr inbounds nuw [260 x i8], ptr %0, i64 %.01.i ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %i.e, i8 0, i64 256, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 256
  store i32 -1, ptr %i.f, align 4, !tbaa !12
  %i.g = getelementptr inbounds nuw [260 x i8], ptr %0, i64 %.01.i ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 260
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %i.h, i8 0, i64 256, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 516
  store i32 -1, ptr %i.i, align 4, !tbaa !12
  %i.j = getelementptr inbounds nuw [260 x i8], ptr %0, i64 %.01.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 520
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %i.k, i8 0, i64 256, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 776
  store i32 -1, ptr %i.l, align 4, !tbaa !12
  %i.m = getelementptr inbounds nuw [260 x i8], ptr %0, i64 %.01.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 780
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %i.n, i8 0, i64 256, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 1036
  store i32 -1, ptr %i.o, align 4, !tbaa !12
  %i.p = add nuw i64 %.01.i, 4                    ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !118

pmix_bfrops_base_tma_proc_free.exit:              ; preds = %bb.a, %._crit_edge.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @PMIx_Proc_load(ptr nofree noundef writeonly captures(none) initializes((0, 260)) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  store i32 -1, ptr %i.a, align 4, !tbaa !12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %0, i8 0, i64 256, i1 false)
  %.not.i.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i.i, label %pmix_bfrops_base_tma_proc_load.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %bb.b
  %.012.i.i.i.i = phi i64 [ %i.t, %bb.b ], [ 0, %bb.a ]
  %.0811.i.i.i.i = phi ptr [ %i.v, %bb.b ], [ %0, %bb.a ] ; 11 uses
  %.0910.i.i.i.i = phi ptr [ %i.u, %bb.b ], [ %1, %bb.a ] ; 6 uses
  %i.b = load i8, ptr %.0910.i.i.i.i, align 1, !tbaa !8 ; 2 uses
  store i8 %i.b, ptr %.0811.i.i.i.i, align 1, !tbaa !8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %pmix_strncpy.exit.i.i.i, label %.lr.ph.i.i.i.i.1

.lr.ph.i.i.i.i.1:                                 ; preds = %.lr.ph.i.i.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i, i64 1
  %i.e = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i, i64 1
  %i.f = load i8, ptr %i.d, align 1, !tbaa !8     ; 2 uses
  store i8 %i.f, ptr %i.e, align 1, !tbaa !8
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %pmix_strncpy.exit.i.i.i.split.loop.exit9, label %.lr.ph.i.i.i.i.2

.lr.ph.i.i.i.i.2:                                 ; preds = %.lr.ph.i.i.i.i.1
  %i.h = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i, i64 2
  %i.i = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i, i64 2
  %i.j = load i8, ptr %i.h, align 1, !tbaa !8     ; 2 uses
  store i8 %i.j, ptr %i.i, align 1, !tbaa !8
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %pmix_strncpy.exit.i.i.i.split.loop.exit7, label %.lr.ph.i.i.i.i.3

.lr.ph.i.i.i.i.3:                                 ; preds = %.lr.ph.i.i.i.i.2
  %i.l = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i, i64 3
  %i.m = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i, i64 3
  %i.n = load i8, ptr %i.l, align 1, !tbaa !8     ; 2 uses
  store i8 %i.n, ptr %i.m, align 1, !tbaa !8
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %pmix_strncpy.exit.i.i.i.split.loop.exit5, label %.lr.ph.i.i.i.i.4

.lr.ph.i.i.i.i.4:                                 ; preds = %.lr.ph.i.i.i.i.3
  %i.p = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i, i64 4
  %i.r = load i8, ptr %i.p, align 1, !tbaa !8     ; 2 uses
  store i8 %i.r, ptr %i.q, align 1, !tbaa !8
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %pmix_strncpy.exit.i.i.i.split.loop.exit3, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.4
  %i.t = add nuw nsw i64 %.012.i.i.i.i, 5         ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i, i64 5
  %i.v = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i, i64 5 ; 2 uses
  %exitcond.not.i.i.i.i.4 = icmp eq i64 %i.t, 255
  br i1 %exitcond.not.i.i.i.i.4, label %pmix_strncpy.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !9

pmix_strncpy.exit.i.i.i.split.loop.exit3:         ; preds = %.lr.ph.i.i.i.i.4
  %i.w = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i, i64 4
  br label %pmix_strncpy.exit.i.i.i

pmix_strncpy.exit.i.i.i.split.loop.exit5:         ; preds = %.lr.ph.i.i.i.i.3
  %i.x = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i, i64 3
  br label %pmix_strncpy.exit.i.i.i

pmix_strncpy.exit.i.i.i.split.loop.exit7:         ; preds = %.lr.ph.i.i.i.i.2
  %i.y = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i, i64 2
  br label %pmix_strncpy.exit.i.i.i

pmix_strncpy.exit.i.i.i.split.loop.exit9:         ; preds = %.lr.ph.i.i.i.i.1
  %i.z = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i, i64 1
  br label %pmix_strncpy.exit.i.i.i

pmix_strncpy.exit.i.i.i:                          ; preds = %.lr.ph.i.i.i.i, %bb.b, %pmix_strncpy.exit.i.i.i.split.loop.exit9, %pmix_strncpy.exit.i.i.i.split.loop.exit7, %pmix_strncpy.exit.i.i.i.split.loop.exit5, %pmix_strncpy.exit.i.i.i.split.loop.exit3
  %.08.lcssa.i.i.i.i = phi ptr [ %i.w, %pmix_strncpy.exit.i.i.i.split.loop.exit3 ], [ %i.z, %pmix_strncpy.exit.i.i.i.split.loop.exit9 ], [ %i.y, %pmix_strncpy.exit.i.i.i.split.loop.exit7 ], [ %i.v, %bb.b ], [ %i.x, %pmix_strncpy.exit.i.i.i.split.loop.exit5 ], [ %.0811.i.i.i.i, %.lr.ph.i.i.i.i ]
  store i8 0, ptr %.08.lcssa.i.i.i.i, align 1, !tbaa !8
  br label %pmix_bfrops_base_tma_proc_load.exit

pmix_bfrops_base_tma_proc_load.exit:              ; preds = %bb.a, %pmix_strncpy.exit.i.i.i
  store i32 %2, ptr %i.a, align 4, !tbaa !12
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @PMIx_Multicluster_nspace_construct(ptr nofree noundef writeonly captures(none) initializes((0, 256)) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %0, i8 0, i64 256, i1 false)
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %pmix_nslen.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.a, %bb.b
  %.011.i.i = phi i64 [ %i.m, %bb.b ], [ 0, %bb.a ] ; 5 uses
  %.0710.i.i = phi ptr [ %i.n, %bb.b ], [ %1, %bb.a ] ; 5 uses
  %i.b = load i8, ptr %.0710.i.i, align 1, !tbaa !8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %pmix_nslen.exit.i, label %.preheader.i.i.1

.preheader.i.i.1:                                 ; preds = %.preheader.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %.0710.i.i, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %pmix_nslen.exit.i.loopexit.split.loop.exit12, label %.preheader.i.i.2

.preheader.i.i.2:                                 ; preds = %.preheader.i.i.1
  %i.g = getelementptr inbounds nuw i8, ptr %.0710.i.i, i64 2
  %i.h = load i8, ptr %i.g, align 1, !tbaa !8
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %pmix_nslen.exit.i.loopexit.split.loop.exit10, label %.preheader.i.i.3

.preheader.i.i.3:                                 ; preds = %.preheader.i.i.2
  %i.j = getelementptr inbounds nuw i8, ptr %.0710.i.i, i64 3
  %i.k = load i8, ptr %i.j, align 1, !tbaa !8
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %pmix_nslen.exit.i.loopexit.split.loop.exit8, label %bb.b

bb.b:                                             ; preds = %.preheader.i.i.3
  %i.m = add nuw nsw i64 %.011.i.i, 4             ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0710.i.i, i64 4
  %exitcond.not.i.i.3 = icmp eq i64 %i.m, 256
  br i1 %exitcond.not.i.i.3, label %pmix_nslen.exit.i, label %.preheader.i.i, !llvm.loop !11

pmix_nslen.exit.i.loopexit.split.loop.exit8:      ; preds = %.preheader.i.i.3
  %i.o = or disjoint i64 %.011.i.i, 3
  br label %pmix_nslen.exit.i

pmix_nslen.exit.i.loopexit.split.loop.exit10:     ; preds = %.preheader.i.i.2
  %i.p = or disjoint i64 %.011.i.i, 2
  br label %pmix_nslen.exit.i

pmix_nslen.exit.i.loopexit.split.loop.exit12:     ; preds = %.preheader.i.i.1
  %i.q = or disjoint i64 %.011.i.i, 1
  br label %pmix_nslen.exit.i

pmix_nslen.exit.i:                                ; preds = %pmix_nslen.exit.i.loopexit.split.loop.exit8, %pmix_nslen.exit.i.loopexit.split.loop.exit10, %pmix_nslen.exit.i.loopexit.split.loop.exit12, %bb.b, %.preheader.i.i, %bb.a
  %.08.i.i = phi i64 [ 0, %bb.a ], [ %i.q, %pmix_nslen.exit.i.loopexit.split.loop.exit12 ], [ %i.o, %pmix_nslen.exit.i.loopexit.split.loop.exit8 ], [ %i.p, %pmix_nslen.exit.i.loopexit.split.loop.exit10 ], [ 256, %bb.b ], [ %.011.i.i, %.preheader.i.i ] ; 3 uses
  %i.r = icmp eq ptr %2, null
  br i1 %i.r, label %pmix_nslen.exit17.i, label %.preheader.i12.i

.preheader.i12.i:                                 ; preds = %pmix_nslen.exit.i, %bb.c
  %.011.i13.i = phi i64 [ %i.ad, %bb.c ], [ 0, %pmix_nslen.exit.i ] ; 5 uses
  %.0710.i14.i = phi ptr [ %i.ae, %bb.c ], [ %2, %pmix_nslen.exit.i ] ; 5 uses
  %i.s = load i8, ptr %.0710.i14.i, align 1, !tbaa !8
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %pmix_nslen.exit17.i, label %.preheader.i12.i.1

.preheader.i12.i.1:                               ; preds = %.preheader.i12.i
  %i.u = getelementptr inbounds nuw i8, ptr %.0710.i14.i, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !8
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %pmix_nslen.exit17.i.loopexit.split.loop.exit22, label %.preheader.i12.i.2

.preheader.i12.i.2:                               ; preds = %.preheader.i12.i.1
  %i.x = getelementptr inbounds nuw i8, ptr %.0710.i14.i, i64 2
  %i.y = load i8, ptr %i.x, align 1, !tbaa !8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %pmix_nslen.exit17.i.loopexit.split.loop.exit20, label %.preheader.i12.i.3

.preheader.i12.i.3:                               ; preds = %.preheader.i12.i.2
  %i.aa = getelementptr inbounds nuw i8, ptr %.0710.i14.i, i64 3
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !8
  %i.ac = icmp eq i8 %i.ab, 0
  br i1 %i.ac, label %pmix_nslen.exit17.i.loopexit.split.loop.exit18, label %bb.c

bb.c:                                             ; preds = %.preheader.i12.i.3
  %i.ad = add nuw nsw i64 %.011.i13.i, 4          ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0710.i14.i, i64 4
  %exitcond.not.i15.i.3 = icmp eq i64 %i.ad, 256
  br i1 %exitcond.not.i15.i.3, label %pmix_nslen.exit17.i, label %.preheader.i12.i, !llvm.loop !11

pmix_nslen.exit17.i.loopexit.split.loop.exit18:   ; preds = %.preheader.i12.i.3
  %i.af = or disjoint i64 %.011.i13.i, 3
  br label %pmix_nslen.exit17.i

pmix_nslen.exit17.i.loopexit.split.loop.exit20:   ; preds = %.preheader.i12.i.2
  %i.ag = or disjoint i64 %.011.i13.i, 2
  br label %pmix_nslen.exit17.i

pmix_nslen.exit17.i.loopexit.split.loop.exit22:   ; preds = %.preheader.i12.i.1
  %i.ah = or disjoint i64 %.011.i13.i, 1
  br label %pmix_nslen.exit17.i

pmix_nslen.exit17.i:                              ; preds = %pmix_nslen.exit17.i.loopexit.split.loop.exit18, %pmix_nslen.exit17.i.loopexit.split.loop.exit20, %pmix_nslen.exit17.i.loopexit.split.loop.exit22, %bb.c, %.preheader.i12.i, %pmix_nslen.exit.i
  %.08.i16.i = phi i64 [ 0, %pmix_nslen.exit.i ], [ %i.ah, %pmix_nslen.exit17.i.loopexit.split.loop.exit22 ], [ %i.af, %pmix_nslen.exit17.i.loopexit.split.loop.exit18 ], [ %i.ag, %pmix_nslen.exit17.i.loopexit.split.loop.exit20 ], [ 256, %bb.c ], [ %.011.i13.i, %.preheader.i12.i ]
  %i.ai = add nuw i64 %.08.i16.i, %.08.i.i
  %i.aj = icmp ult i64 %i.ai, 255
  br i1 %i.aj, label %.lr.ph.i.i, label %pmix_bfrops_base_tma_multicluster_nspace_construct.exit

.lr.ph.i.i:                                       ; preds = %pmix_nslen.exit17.i, %bb.d
  %.012.i.i = phi i64 [ %i.bc, %bb.d ], [ 0, %pmix_nslen.exit17.i ]
  %.0811.i.i = phi ptr [ %i.be, %bb.d ], [ %0, %pmix_nslen.exit17.i ] ; 11 uses
  %.0910.i.i = phi ptr [ %i.bd, %bb.d ], [ %1, %pmix_nslen.exit17.i ] ; 6 uses
  %i.ak = load i8, ptr %.0910.i.i, align 1, !tbaa !8 ; 2 uses
  store i8 %i.ak, ptr %.0811.i.i, align 1, !tbaa !8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %pmix_strncpy.exit.i, label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %.lr.ph.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.0910.i.i, i64 1
  %i.an = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 1
  %i.ao = load i8, ptr %i.am, align 1, !tbaa !8   ; 2 uses
  store i8 %i.ao, ptr %i.an, align 1, !tbaa !8
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %pmix_strncpy.exit.i.split.loop.exit34, label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %.lr.ph.i.i.1
  %i.aq = getelementptr inbounds nuw i8, ptr %.0910.i.i, i64 2
end_hunk_1
begin_hunk_2_@PMIx_Pdata_create:bb.a

; Function Attrs: nounwind uwtable
define void @PMIx_Pdata_free(ptr noundef captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #8 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %pmix_bfrops_base_tma_pdata_free.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %.not2.i = icmp eq i64 %1, 0
  br i1 %.not2.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  tail call void @free(ptr noundef nonnull %0) #40, !inline_history !133
  br label %pmix_bfrops_base_tma_pdata_free.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.01.i = phi i64 [ %i.c, %.lr.ph.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.a = getelementptr inbounds nuw [808 x i8], ptr %0, i64 %.01.i
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 776
  tail call fastcc void @pmix_bfrops_base_tma_value_destruct(ptr noundef nonnull %i.b), !inline_history !134
  %i.c = add nuw i64 %.01.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.c, %1
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !135

pmix_bfrops_base_tma_pdata_free.exit:             ; preds = %bb.a, %._crit_edge.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @PMIx_App_construct(ptr nofree noundef writeonly captures(none) initializes((0, 56)) %0) local_unnamed_addr #9 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, i8 0, i64 56, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define void @PMIx_App_destruct(ptr nofree noundef captures(none) %0) local_unnamed_addr #8 {
bb.a:
  tail call fastcc void @pmix_bfrops_base_tma_app_destruct(ptr noundef %0)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @pmix_bfrops_base_tma_app_destruct(ptr nofree noundef captures(none) %0) unnamed_addr #10 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !136    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.a) #40
  store ptr null, ptr %0, align 8, !tbaa !136
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !139  ; 4 uses
  %.not26 = icmp eq ptr %i.c, null
  br i1 %.not26, label %bb.d, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14   ; 2 uses
  %.not101.i = icmp eq ptr %i.d, null
  br i1 %.not101.i, label %pmix_bfrops_base_tma_argv_free.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %i.e = phi ptr [ %i.g, %.lr.ph.i ], [ %i.d, %.preheader.i ]
  %.02.i = phi ptr [ %i.f, %.lr.ph.i ], [ %i.c, %.preheader.i ]
  tail call void @free(ptr noundef nonnull %i.e) #40
  %i.f = getelementptr inbounds nuw i8, ptr %.02.i, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !14   ; 2 uses
  %.not10.i = icmp eq ptr %i.g, null
  br i1 %.not10.i, label %pmix_bfrops_base_tma_argv_free.exit, label %.lr.ph.i, !llvm.loop !22

pmix_bfrops_base_tma_argv_free.exit:              ; preds = %.lr.ph.i, %.preheader.i
  tail call void @free(ptr noundef nonnull %i.c) #40
  store ptr null, ptr %i.b, align 8, !tbaa !139
  br label %bb.d

bb.d:                                             ; preds = %pmix_bfrops_base_tma_argv_free.exit, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !140  ; 4 uses
  %.not27 = icmp eq ptr %i.i, null
  br i1 %.not27, label %bb.e, label %.preheader.i31

.preheader.i31:                                   ; preds = %bb.d
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !14   ; 2 uses
  %.not101.i32 = icmp eq ptr %i.j, null
  br i1 %.not101.i32, label %pmix_bfrops_base_tma_argv_free.exit37, label %.lr.ph.i33

.lr.ph.i33:                                       ; preds = %.preheader.i31, %.lr.ph.i33
  %i.k = phi ptr [ %i.m, %.lr.ph.i33 ], [ %i.j, %.preheader.i31 ]
  %.02.i34 = phi ptr [ %i.l, %.lr.ph.i33 ], [ %i.i, %.preheader.i31 ]
  tail call void @free(ptr noundef nonnull %i.k) #40
  %i.l = getelementptr inbounds nuw i8, ptr %.02.i34, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !14   ; 2 uses
  %.not10.i35 = icmp eq ptr %i.m, null
  br i1 %.not10.i35, label %pmix_bfrops_base_tma_argv_free.exit37, label %.lr.ph.i33, !llvm.loop !22

pmix_bfrops_base_tma_argv_free.exit37:            ; preds = %.lr.ph.i33, %.preheader.i31
  tail call void @free(ptr noundef nonnull %i.i) #40
  store ptr null, ptr %i.h, align 8, !tbaa !140
  br label %bb.e

bb.e:                                             ; preds = %pmix_bfrops_base_tma_argv_free.exit37, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !141  ; 2 uses
  %.not28 = icmp eq ptr %i.o, null
  br i1 %.not28, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.o) #40
  store ptr null, ptr %i.n, align 8, !tbaa !141
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !142  ; 3 uses
  %.not29 = icmp eq ptr %i.q, null
  br i1 %.not29, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = load i64, ptr %i.r, align 8, !tbaa !143  ; 2 uses
  %.not3 = icmp eq i64 %i.s, 0
  br i1 %.not3, label %pmix_bfrops_base_tma_info_free.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h, %pmix_bfrops_base_tma_info_destruct.exit
  %.0.i2 = phi i64 [ %i.x, %pmix_bfrops_base_tma_info_destruct.exit ], [ 0, %bb.h ] ; 2 uses
  %i.t = getelementptr inbounds nuw [552 x i8], ptr %i.q, i64 %.0.i2 ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 512
  %.val.i = load i32, ptr %i.u, align 8, !tbaa !80
  %i.v = and i32 %.val.i, 16
  %.not1 = icmp eq i32 %i.v, 0
  br i1 %.not1, label %bb.i, label %pmix_bfrops_base_tma_info_destruct.exit

bb.i:                                             ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 520
  tail call fastcc void @pmix_bfrops_base_tma_value_destruct(ptr noundef nonnull %i.w)
  br label %pmix_bfrops_base_tma_info_destruct.exit

pmix_bfrops_base_tma_info_destruct.exit:          ; preds = %.lr.ph, %bb.i
  %i.x = add nuw i64 %.0.i2, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.x, %i.s
  br i1 %exitcond.not, label %pmix_bfrops_base_tma_info_free.exit, label %.lr.ph, !llvm.loop !89

pmix_bfrops_base_tma_info_free.exit:              ; preds = %pmix_bfrops_base_tma_info_destruct.exit, %bb.h
  tail call void @free(ptr noundef nonnull %i.q) #40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %pmix_bfrops_base_tma_info_free.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable
define noalias noundef ptr @PMIx_App_create(i64 noundef %0) local_unnamed_addr #11 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %pmix_bfrops_base_tma_app_create.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = mul i64 %0, 56
  %calloc.i = tail call ptr @calloc(i64 1, i64 %i.b)
  br label %pmix_bfrops_base_tma_app_create.exit

pmix_bfrops_base_tma_app_create.exit:             ; preds = %bb.a, %bb.b
  %.011.i = phi ptr [ null, %bb.a ], [ %calloc.i, %bb.b ]
  ret ptr %.011.i
}

; Function Attrs: nofree nounwind memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @PMIx_App_info_create(ptr nofree noundef writeonly captures(none) initializes((48, 56)) %0, i64 noundef %1) local_unnamed_addr #18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %1, ptr %i.a, align 8, !tbaa !143
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %pmix_bfrops_base_tma_app_info_create.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = mul i64 %1, 552
  %i.d = tail call noalias noundef ptr @malloc(i64 noundef %i.c) #41 ; 8 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %pmix_bfrops_base_tma_app_info_create.exit, label %.preheader.i.i.preheader, !prof !79

.preheader.i.i.preheader:                         ; preds = %bb.b
  %xtraiter = and i64 %1, 3                       ; 3 uses
  %i.f = icmp ult i64 %1, 4
  br i1 %i.f, label %.preheader.i.i.epil.preheader, label %.preheader.i.i.preheader.new

.preheader.i.i.preheader.new:                     ; preds = %.preheader.i.i.preheader
  %unroll_iter = and i64 %1, -4
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i, %.preheader.i.i.preheader.new
  %.01.i.i = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %i.r, %.preheader.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %niter.next.3, %.preheader.i.i ]
  %i.g = getelementptr inbounds nuw [552 x i8], ptr %i.d, i64 %.01.i.i ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 520
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(516) %i.g, i8 0, i64 516, i1 false)
  %i.i = getelementptr inbounds nuw [552 x i8], ptr %i.d, i64 %.01.i.i ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 552
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 1072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(516) %i.j, i8 0, i64 516, i1 false)
  %i.l = getelementptr inbounds nuw [552 x i8], ptr %i.d, i64 %.01.i.i ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1104
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 1624
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(516) %i.m, i8 0, i64 516, i1 false)
  %i.o = getelementptr inbounds nuw [552 x i8], ptr %i.d, i64 %.01.i.i ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1656
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 2176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(516) %i.p, i8 0, i64 516, i1 false)
  %i.r = add nuw i64 %.01.i.i, 4                  ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %pmix_bfrops_base_tma_app_info_create.exit.loopexit.unr-lcssa, label %.preheader.i.i, !llvm.loop !83

pmix_bfrops_base_tma_app_info_create.exit.loopexit.unr-lcssa: ; preds = %.preheader.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %pmix_bfrops_base_tma_app_info_create.exit, label %.preheader.i.i.epil.preheader

.preheader.i.i.epil.preheader:                    ; preds = %pmix_bfrops_base_tma_app_info_create.exit.loopexit.unr-lcssa, %.preheader.i.i.preheader
  %.01.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.preheader ], [ %i.r, %pmix_bfrops_base_tma_app_info_create.exit.loopexit.unr-lcssa ]
  %lcmp.mod2 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod2)
  br label %.preheader.i.i.epil

.preheader.i.i.epil:                              ; preds = %.preheader.i.i.epil, %.preheader.i.i.epil.preheader
  %.01.i.i.epil = phi i64 [ %i.u, %.preheader.i.i.epil ], [ %.01.i.i.epil.init, %.preheader.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.i.epil ], [ 0, %.preheader.i.i.epil.preheader ]
  %i.s = getelementptr inbounds nuw [552 x i8], ptr %i.d, i64 %.01.i.i.epil ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 520
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(516) %i.s, i8 0, i64 516, i1 false)
  %i.u = add nuw i64 %.01.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %pmix_bfrops_base_tma_app_info_create.exit, label %.preheader.i.i.epil, !llvm.loop !144

pmix_bfrops_base_tma_app_info_create.exit:        ; preds = %pmix_bfrops_base_tma_app_info_create.exit.loopexit.unr-lcssa, %.preheader.i.i.epil, %bb.a, %bb.b
  %.1.i.i = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.d, %.preheader.i.i.epil ], [ %i.d, %pmix_bfrops_base_tma_app_info_create.exit.loopexit.unr-lcssa ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.1.i.i, ptr %i.v, align 8, !tbaa !142
  ret void
}

; Function Attrs: nounwind uwtable
define void @PMIx_App_free(ptr noundef captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #8 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %pmix_bfrops_base_tma_app_free.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %.not2.i = icmp eq i64 %1, 0
  br i1 %.not2.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  tail call void @free(ptr noundef nonnull %0) #40, !inline_history !145
  br label %pmix_bfrops_base_tma_app_free.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.01.i = phi i64 [ %i.b, %.lr.ph.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.a = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %.01.i
  tail call fastcc void @pmix_bfrops_base_tma_app_destruct(ptr noundef nonnull %i.a), !inline_history !145
  %i.b = add nuw i64 %.01.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.b, %1
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !146

pmix_bfrops_base_tma_app_free.exit:               ; preds = %bb.a, %._crit_edge.i
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @pmix_bfrops_base_tma_app_free(ptr noundef captures(address_is_null) %0, i64 noundef %1) unnamed_addr #10 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not2 = icmp eq i64 %1, 0
  br i1 %.not2, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  tail call void @free(ptr noundef nonnull %0) #40
  br label %bb.b

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.01 = phi i64 [ %i.b, %.lr.ph ], [ 0, %.preheader ] ; 2 uses
  %i.a = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %.01
  tail call fastcc void @pmix_bfrops_base_tma_app_destruct(ptr noundef nonnull %i.a)
  %i.b = add nuw i64 %.01, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.b, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !146

bb.b:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @PMIx_App_release(ptr noundef captures(address_is_null) %0) local_unnamed_addr #8 {
bb.a:
  %.not.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i, label %pmix_bfrops_base_tma_app_release.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.a
  tail call fastcc void @pmix_bfrops_base_tma_app_destruct(ptr noundef nonnull %0), !inline_history !145
  tail call void @free(ptr noundef nonnull %0) #40, !inline_history !145
  br label %pmix_bfrops_base_tma_app_release.exit

pmix_bfrops_base_tma_app_release.exit:            ; preds = %bb.a, %.lr.ph.i.preheader.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @PMIx_Query_construct(ptr nofree noundef writeonly captures(none) initializes((0, 24)) %0) local_unnamed_addr #9 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define void @PMIx_Query_destruct(ptr nofree noundef captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !147    ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %.not101.i.i = icmp eq ptr %i.b, null
  br i1 %.not101.i.i, label %pmix_bfrops_base_tma_argv_free.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %i.c = phi ptr [ %i.e, %.lr.ph.i.i ], [ %i.b, %.preheader.i.i ]
  %.02.i.i = phi ptr [ %i.d, %.lr.ph.i.i ], [ %i.a, %.preheader.i.i ]
  tail call void @free(ptr noundef nonnull %i.c) #40, !inline_history !149
  %i.d = getelementptr inbounds nuw i8, ptr %.02.i.i, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14   ; 2 uses
  %.not10.i.i = icmp eq ptr %i.e, null
  br i1 %.not10.i.i, label %pmix_bfrops_base_tma_argv_free.exit.i, label %.lr.ph.i.i, !llvm.loop !22

pmix_bfrops_base_tma_argv_free.exit.i:            ; preds = %.lr.ph.i.i, %.preheader.i.i
  tail call void @free(ptr noundef nonnull %i.a) #40, !inline_history !149
  store ptr null, ptr %0, align 8, !tbaa !147
  br label %bb.b

bb.b:                                             ; preds = %pmix_bfrops_base_tma_argv_free.exit.i, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !150  ; 3 uses
  %.not11.i = icmp eq ptr %i.g, null
  br i1 %.not11.i, label %pmix_bfrops_base_tma_query_destruct.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !151  ; 2 uses
  %.not2.i = icmp eq i64 %i.i, 0
  br i1 %.not2.i, label %pmix_bfrops_base_tma_info_free.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %pmix_bfrops_base_tma_info_destruct.exit.i
  %.0.i1.i = phi i64 [ %i.n, %pmix_bfrops_base_tma_info_destruct.exit.i ], [ 0, %bb.c ] ; 2 uses
  %i.j = getelementptr inbounds nuw [552 x i8], ptr %i.g, i64 %.0.i1.i ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 512
  %.val.i.i = load i32, ptr %i.k, align 8, !tbaa !80
  %i.l = and i32 %.val.i.i, 16
  %.not.i13.i = icmp eq i32 %i.l, 0
  br i1 %.not.i13.i, label %bb.d, label %pmix_bfrops_base_tma_info_destruct.exit.i

bb.d:                                             ; preds = %.lr.ph.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 520
  tail call fastcc void @pmix_bfrops_base_tma_value_destruct(ptr noundef nonnull %i.m), !inline_history !152
  br label %pmix_bfrops_base_tma_info_destruct.exit.i

pmix_bfrops_base_tma_info_destruct.exit.i:        ; preds = %bb.d, %.lr.ph.i
  %i.n = add nuw i64 %.0.i1.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.n, %i.i
  br i1 %exitcond.not.i, label %pmix_bfrops_base_tma_info_free.exit.i, label %.lr.ph.i, !llvm.loop !89

pmix_bfrops_base_tma_info_free.exit.i:            ; preds = %pmix_bfrops_base_tma_info_destruct.exit.i, %bb.c
  tail call void @free(ptr noundef nonnull %i.g) #40, !inline_history !149
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  br label %pmix_bfrops_base_tma_query_destruct.exit

pmix_bfrops_base_tma_query_destruct.exit:         ; preds = %bb.b, %pmix_bfrops_base_tma_info_free.exit.i
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable
define noalias noundef ptr @PMIx_Query_create(i64 noundef %0) local_unnamed_addr #11 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %pmix_bfrops_base_tma_query_create.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = mul i64 %0, 24
  %calloc.i = tail call ptr @calloc(i64 1, i64 %i.b)
  br label %pmix_bfrops_base_tma_query_create.exit

pmix_bfrops_base_tma_query_create.exit:           ; preds = %bb.a, %bb.b
  %.011.i = phi ptr [ null, %bb.a ], [ %calloc.i, %bb.b ]
  ret ptr %.011.i
}

; Function Attrs: nofree nounwind memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @PMIx_Query_qualifiers_create(ptr nofree noundef writeonly captures(none) initializes((16, 24)) %0, i64 noundef %1) local_unnamed_addr #18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %1, ptr %i.a, align 8, !tbaa !151
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %pmix_bfrops_base_tma_query_qualifiers_create.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = mul i64 %1, 552
  %i.d = tail call noalias noundef ptr @malloc(i64 noundef %i.c) #41 ; 8 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %pmix_bfrops_base_tma_query_qualifiers_create.exit, label %.preheader.i.i.preheader, !prof !79

.preheader.i.i.preheader:                         ; preds = %bb.b
  %xtraiter = and i64 %1, 3                       ; 3 uses
  %i.f = icmp ult i64 %1, 4
  br i1 %i.f, label %.preheader.i.i.epil.preheader, label %.preheader.i.i.preheader.new

.preheader.i.i.preheader.new:                     ; preds = %.preheader.i.i.preheader
  %unroll_iter = and i64 %1, -4
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i, %.preheader.i.i.preheader.new
  %.01.i.i = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %i.r, %.preheader.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %niter.next.3, %.preheader.i.i ]
  %i.g = getelementptr inbounds nuw [552 x i8], ptr %i.d, i64 %.01.i.i ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 520
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(516) %i.g, i8 0, i64 516, i1 false)
  %i.i = getelementptr inbounds nuw [552 x i8], ptr %i.d, i64 %.01.i.i ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 552
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 1072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(516) %i.j, i8 0, i64 516, i1 false)
  %i.l = getelementptr inbounds nuw [552 x i8], ptr %i.d, i64 %.01.i.i ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1104
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 1624
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(516) %i.m, i8 0, i64 516, i1 false)
  %i.o = getelementptr inbounds nuw [552 x i8], ptr %i.d, i64 %.01.i.i ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1656
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 2176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(516) %i.p, i8 0, i64 516, i1 false)
  %i.r = add nuw i64 %.01.i.i, 4                  ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %pmix_bfrops_base_tma_query_qualifiers_create.exit.loopexit.unr-lcssa, label %.preheader.i.i, !llvm.loop !83

pmix_bfrops_base_tma_query_qualifiers_create.exit.loopexit.unr-lcssa: ; preds = %.preheader.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %pmix_bfrops_base_tma_query_qualifiers_create.exit, label %.preheader.i.i.epil.preheader

.preheader.i.i.epil.preheader:                    ; preds = %pmix_bfrops_base_tma_query_qualifiers_create.exit.loopexit.unr-lcssa, %.preheader.i.i.preheader
  %.01.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.preheader ], [ %i.r, %pmix_bfrops_base_tma_query_qualifiers_create.exit.loopexit.unr-lcssa ]
  %lcmp.mod2 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod2)
  br label %.preheader.i.i.epil

.preheader.i.i.epil:                              ; preds = %.preheader.i.i.epil, %.preheader.i.i.epil.preheader
  %.01.i.i.epil = phi i64 [ %i.u, %.preheader.i.i.epil ], [ %.01.i.i.epil.init, %.preheader.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.i.epil ], [ 0, %.preheader.i.i.epil.preheader ]
  %i.s = getelementptr inbounds nuw [552 x i8], ptr %i.d, i64 %.01.i.i.epil ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 520
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(516) %i.s, i8 0, i64 516, i1 false)
  %i.u = add nuw i64 %.01.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %pmix_bfrops_base_tma_query_qualifiers_create.exit, label %.preheader.i.i.epil, !llvm.loop !153

pmix_bfrops_base_tma_query_qualifiers_create.exit: ; preds = %pmix_bfrops_base_tma_query_qualifiers_create.exit.loopexit.unr-lcssa, %.preheader.i.i.epil, %bb.a, %bb.b
  %.1.i.i = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.d, %.preheader.i.i.epil ], [ %i.d, %pmix_bfrops_base_tma_query_qualifiers_create.exit.loopexit.unr-lcssa ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.1.i.i, ptr %i.v, align 8, !tbaa !150
  ret void
}

; Function Attrs: nounwind uwtable
define void @PMIx_Query_free(ptr noundef captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #8 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %pmix_bfrops_base_tma_query_free.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %.not2.i = icmp eq i64 %1, 0
  br i1 %.not2.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %pmix_bfrops_base_tma_query_destruct.exit.i, %.preheader.i
  tail call void @free(ptr noundef nonnull %0) #40, !inline_history !154
  br label %pmix_bfrops_base_tma_query_free.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %pmix_bfrops_base_tma_query_destruct.exit.i
  %.01.i = phi i64 [ %i.p, %pmix_bfrops_base_tma_query_destruct.exit.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.a = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.01.i ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !147  ; 4 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.b, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.lr.ph.i
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14   ; 2 uses
  %.not101.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not101.i.i.i, label %pmix_bfrops_base_tma_argv_free.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %.lr.ph.i.i.i
  %i.d = phi ptr [ %i.f, %.lr.ph.i.i.i ], [ %i.c, %.preheader.i.i.i ]
  %.02.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i ], [ %i.b, %.preheader.i.i.i ]
  tail call void @free(ptr noundef nonnull %i.d) #40, !inline_history !155
  %i.e = getelementptr inbounds nuw i8, ptr %.02.i.i.i, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14   ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not10.i.i.i, label %pmix_bfrops_base_tma_argv_free.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !22

pmix_bfrops_base_tma_argv_free.exit.i.i:          ; preds = %.lr.ph.i.i.i, %.preheader.i.i.i
  tail call void @free(ptr noundef nonnull %i.b) #40, !inline_history !155
  store ptr null, ptr %i.a, align 8, !tbaa !147
  br label %bb.b

bb.b:                                             ; preds = %pmix_bfrops_base_tma_argv_free.exit.i.i, %.lr.ph.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !150  ; 3 uses
  %.not11.i.i = icmp eq ptr %i.h, null
  br i1 %.not11.i.i, label %pmix_bfrops_base_tma_query_destruct.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !151  ; 2 uses
  %.not2.i.i = icmp eq i64 %i.j, 0
  br i1 %.not2.i.i, label %pmix_bfrops_base_tma_info_free.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %pmix_bfrops_base_tma_info_destruct.exit.i.i
  %.0.i1.i.i = phi i64 [ %i.o, %pmix_bfrops_base_tma_info_destruct.exit.i.i ], [ 0, %bb.c ] ; 2 uses
  %i.k = getelementptr inbounds nuw [552 x i8], ptr %i.h, i64 %.0.i1.i.i ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 512
  %.val.i.i.i = load i32, ptr %i.l, align 8, !tbaa !80
  %i.m = and i32 %.val.i.i.i, 16
  %.not.i13.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i13.i.i, label %bb.d, label %pmix_bfrops_base_tma_info_destruct.exit.i.i

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 520
  tail call fastcc void @pmix_bfrops_base_tma_value_destruct(ptr noundef nonnull %i.n), !inline_history !156
  br label %pmix_bfrops_base_tma_info_destruct.exit.i.i

pmix_bfrops_base_tma_info_destruct.exit.i.i:      ; preds = %bb.d, %.lr.ph.i.i
  %i.o = add nuw i64 %.0.i1.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.o, %i.j
  br i1 %exitcond.not.i.i, label %pmix_bfrops_base_tma_info_free.exit.i.i, label %.lr.ph.i.i, !llvm.loop !89

pmix_bfrops_base_tma_info_free.exit.i.i:          ; preds = %pmix_bfrops_base_tma_info_destruct.exit.i.i, %bb.c
  tail call void @free(ptr noundef nonnull %i.h) #40, !inline_history !155
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  br label %pmix_bfrops_base_tma_query_destruct.exit.i

pmix_bfrops_base_tma_query_destruct.exit.i:       ; preds = %pmix_bfrops_base_tma_info_free.exit.i.i, %bb.b
  %i.p = add nuw i64 %.01.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.p, %1
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !157

pmix_bfrops_base_tma_query_free.exit:             ; preds = %bb.a, %._crit_edge.i
  ret void
}

; Function Attrs: nounwind uwtable
define void @PMIx_Query_release(ptr noundef captures(address_is_null) %0) local_unnamed_addr #8 {
bb.a:
  %.not.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i, label %pmix_bfrops_base_tma_query_release.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !147    ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i, label %bb.b, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.lr.ph.i.preheader.i
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %.not101.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not101.i.i.i.i, label %pmix_bfrops_base_tma_argv_free.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %.lr.ph.i.i.i.i
  %i.c = phi ptr [ %i.e, %.lr.ph.i.i.i.i ], [ %i.b, %.preheader.i.i.i.i ]
  %.02.i.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i.i ], [ %i.a, %.preheader.i.i.i.i ]
  tail call void @free(ptr noundef nonnull %i.c) #40, !inline_history !155
  %i.d = getelementptr inbounds nuw i8, ptr %.02.i.i.i.i, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14   ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not10.i.i.i.i, label %pmix_bfrops_base_tma_argv_free.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !22

pmix_bfrops_base_tma_argv_free.exit.i.i.i:        ; preds = %.lr.ph.i.i.i.i, %.preheader.i.i.i.i
  tail call void @free(ptr noundef nonnull %i.a) #40, !inline_history !155
  store ptr null, ptr %0, align 8, !tbaa !147
  br label %bb.b

bb.b:                                             ; preds = %pmix_bfrops_base_tma_argv_free.exit.i.i.i, %.lr.ph.i.preheader.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !150  ; 3 uses
  %.not11.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not11.i.i.i, label %pmix_bfrops_base_tma_query_destruct.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !151  ; 2 uses
  %.not2.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not2.i.i.i, label %pmix_bfrops_base_tma_info_free.exit.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %pmix_bfrops_base_tma_info_destruct.exit.i.i.i
  %.0.i1.i.i.i = phi i64 [ %i.n, %pmix_bfrops_base_tma_info_destruct.exit.i.i.i ], [ 0, %bb.c ] ; 2 uses
  %i.j = getelementptr inbounds nuw [552 x i8], ptr %i.g, i64 %.0.i1.i.i.i ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 512
  %.val.i.i.i.i = load i32, ptr %i.k, align 8, !tbaa !80
  %i.l = and i32 %.val.i.i.i.i, 16
  %.not.i13.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i13.i.i.i, label %bb.d, label %pmix_bfrops_base_tma_info_destruct.exit.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 520
  tail call fastcc void @pmix_bfrops_base_tma_value_destruct(ptr noundef nonnull %i.m), !inline_history !156
  br label %pmix_bfrops_base_tma_info_destruct.exit.i.i.i

pmix_bfrops_base_tma_info_destruct.exit.i.i.i:    ; preds = %bb.d, %.lr.ph.i.i.i
  %i.n = add nuw i64 %.0.i1.i.i.i, 1              ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.n, %i.i
  br i1 %exitcond.not.i.i.i, label %pmix_bfrops_base_tma_info_free.exit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !89

pmix_bfrops_base_tma_info_free.exit.i.i.i:        ; preds = %pmix_bfrops_base_tma_info_destruct.exit.i.i.i, %bb.c
  tail call void @free(ptr noundef nonnull %i.g) #40, !inline_history !155
  br label %pmix_bfrops_base_tma_query_destruct.exit.i.i

pmix_bfrops_base_tma_query_destruct.exit.i.i:     ; preds = %pmix_bfrops_base_tma_info_free.exit.i.i.i, %bb.b
  tail call void @free(ptr noundef nonnull %0) #40, !inline_history !154
  br label %pmix_bfrops_base_tma_query_release.exit

pmix_bfrops_base_tma_query_release.exit:          ; preds = %bb.a, %pmix_bfrops_base_tma_query_destruct.exit.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @PMIx_Regattr_construct(ptr nofree noundef writeonly captures(none) initializes((0, 522), (528, 536)) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 528
  store ptr null, ptr %i.a, align 8, !tbaa !56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(522) %0, i8 0, i64 522, i1 false)
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @PMIx_Regattr_destruct(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #5 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %pmix_bfrops_base_tma_regattr_destruct.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !54     ; 2 uses
  %.not11.i = icmp eq ptr %i.a, null
  br i1 %.not11.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.a) #40
  store ptr null, ptr %0, align 8, !tbaa !54
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !56   ; 4 uses
  %.not12.i = icmp eq ptr %i.c, null
  br i1 %.not12.i, label %pmix_bfrops_base_tma_regattr_destruct.exit, label %.preheader.i.i
end_hunk_2
begin_hunk_3_@PMIx_Regattr_free:bb.a
  %.01.i = phi i64 [ %i.i, %pmix_bfrops_base_tma_regattr_destruct.exit.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.a = getelementptr inbounds nuw [536 x i8], ptr %0, i64 %.01.i ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 2 uses
  %.not11.i.i = icmp eq ptr %i.b, null
  br i1 %.not11.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  tail call void @free(ptr noundef nonnull %i.b) #40
  store ptr null, ptr %i.a, align 8, !tbaa !54
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 528 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !56   ; 4 uses
  %.not12.i.i = icmp eq ptr %i.d, null
  br i1 %.not12.i.i, label %pmix_bfrops_base_tma_regattr_destruct.exit.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14   ; 2 uses
  %.not101.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not101.i.i.i, label %pmix_bfrops_base_tma_argv_free.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %.lr.ph.i.i.i
  %i.f = phi ptr [ %i.h, %.lr.ph.i.i.i ], [ %i.e, %.preheader.i.i.i ]
  %.02.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i ], [ %i.d, %.preheader.i.i.i ]
  tail call void @free(ptr noundef nonnull %i.f) #40
  %i.g = getelementptr inbounds nuw i8, ptr %.02.i.i.i, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14   ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not10.i.i.i, label %pmix_bfrops_base_tma_argv_free.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !22

pmix_bfrops_base_tma_argv_free.exit.i.i:          ; preds = %.lr.ph.i.i.i, %.preheader.i.i.i
  tail call void @free(ptr noundef nonnull %i.d) #40
  store ptr null, ptr %i.c, align 8, !tbaa !56
  br label %pmix_bfrops_base_tma_regattr_destruct.exit.i

pmix_bfrops_base_tma_regattr_destruct.exit.i:     ; preds = %pmix_bfrops_base_tma_argv_free.exit.i.i, %bb.c
  %i.i = add nuw i64 %.01.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.i, %1
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !161

pmix_bfrops_base_tma_regattr_free.exit:           ; preds = %bb.a, %._crit_edge.i
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @PMIx_Regattr_load(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, i16 noundef zeroext %3, ptr nofree noundef readonly captures(address_is_null) %4) local_unnamed_addr #5 {
bb.a:
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noalias ptr @strdup(ptr noundef nonnull readonly %1) #40
  store ptr %i.a, ptr %0, align 8, !tbaa !54
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not15.i = icmp eq ptr %2, null
  br i1 %.not15.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(512) %i.b, i8 0, i64 512, i1 false)
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %bb.d
  %.012.i.i.i = phi i64 [ 0, %bb.d ], [ %i.q, %bb.f ] ; 2 uses
  %.0811.i.i.i = phi ptr [ %i.b, %bb.d ], [ %i.s, %bb.f ] ; 8 uses
  %.0910.i.i.i = phi ptr [ %2, %bb.d ], [ %i.r, %bb.f ] ; 5 uses
  %i.c = load i8, ptr %.0910.i.i.i, align 1, !tbaa !8 ; 2 uses
  store i8 %i.c, ptr %.0811.i.i.i, align 1, !tbaa !8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %pmix_bfrops_base_tma_load_key.exit.i, label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %.lr.ph.i.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.0910.i.i.i, i64 1
  %i.f = getelementptr inbounds nuw i8, ptr %.0811.i.i.i, i64 1
  %i.g = load i8, ptr %i.e, align 1, !tbaa !8     ; 2 uses
  store i8 %i.g, ptr %i.f, align 1, !tbaa !8
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %pmix_bfrops_base_tma_load_key.exit.i.split.loop.exit13, label %.lr.ph.i.i.i.2

.lr.ph.i.i.i.2:                                   ; preds = %.lr.ph.i.i.i.1
  %i.i = getelementptr inbounds nuw i8, ptr %.0910.i.i.i, i64 2
  %i.j = getelementptr inbounds nuw i8, ptr %.0811.i.i.i, i64 2
  %i.k = load i8, ptr %i.i, align 1, !tbaa !8     ; 2 uses
  store i8 %i.k, ptr %i.j, align 1, !tbaa !8
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %pmix_bfrops_base_tma_load_key.exit.i.split.loop.exit11, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.2
  %i.m = getelementptr inbounds nuw i8, ptr %.0811.i.i.i, i64 3 ; 3 uses
  %exitcond.not.i.i.i.2 = icmp eq i64 %.012.i.i.i, 508
  br i1 %exitcond.not.i.i.i.2, label %pmix_bfrops_base_tma_load_key.exit.i, label %.lr.ph.i.i.i.3

.lr.ph.i.i.i.3:                                   ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %.0910.i.i.i, i64 3
  %i.o = load i8, ptr %i.n, align 1, !tbaa !8     ; 2 uses
  store i8 %i.o, ptr %i.m, align 1, !tbaa !8
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %pmix_bfrops_base_tma_load_key.exit.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.3
  %i.q = add nuw nsw i64 %.012.i.i.i, 4
  %i.r = getelementptr inbounds nuw i8, ptr %.0910.i.i.i, i64 4
  %i.s = getelementptr inbounds nuw i8, ptr %.0811.i.i.i, i64 4
  br label %.lr.ph.i.i.i

pmix_bfrops_base_tma_load_key.exit.i.split.loop.exit11: ; preds = %.lr.ph.i.i.i.2
  %i.t = getelementptr inbounds nuw i8, ptr %.0811.i.i.i, i64 2
  br label %pmix_bfrops_base_tma_load_key.exit.i

pmix_bfrops_base_tma_load_key.exit.i.split.loop.exit13: ; preds = %.lr.ph.i.i.i.1
  %i.u = getelementptr inbounds nuw i8, ptr %.0811.i.i.i, i64 1
  br label %pmix_bfrops_base_tma_load_key.exit.i

pmix_bfrops_base_tma_load_key.exit.i:             ; preds = %.lr.ph.i.i.i, %bb.e, %.lr.ph.i.i.i.3, %pmix_bfrops_base_tma_load_key.exit.i.split.loop.exit13, %pmix_bfrops_base_tma_load_key.exit.i.split.loop.exit11
  %.08.lcssa.i.i.i = phi ptr [ %i.m, %bb.e ], [ %i.u, %pmix_bfrops_base_tma_load_key.exit.i.split.loop.exit13 ], [ %i.t, %pmix_bfrops_base_tma_load_key.exit.i.split.loop.exit11 ], [ %i.m, %.lr.ph.i.i.i.3 ], [ %.0811.i.i.i, %.lr.ph.i.i.i ]
  store i8 0, ptr %.08.lcssa.i.i.i, align 1, !tbaa !8
  br label %bb.g

bb.g:                                             ; preds = %pmix_bfrops_base_tma_load_key.exit.i, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 520
  store i16 %3, ptr %i.v, align 8, !tbaa !162
  %.not16.i = icmp eq ptr %4, null
  br i1 %.not16.i, label %pmix_bfrops_base_tma_regattr_load.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !18   ; 4 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.i, label %.preheader.i.i.i

bb.i:                                             ; preds = %bb.h
  %calloc.i.i = tail call dereferenceable_or_null(16) ptr @calloc(i64 1, i64 16) ; 3 uses
  store ptr %calloc.i.i, ptr %i.w, align 8, !tbaa !18
  %i.z = icmp eq ptr %calloc.i.i, null
  br i1 %i.z, label %pmix_bfrops_base_tma_regattr_load.exit, label %bb.j

.preheader.i.i.i:                                 ; preds = %bb.h
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !14
  %.not1.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not1.i.i.i, label %pmix_bfrops_base_tma_argv_count.exit.i.i, label %.lr.ph.i.i17.i

.lr.ph.i.i17.i:                                   ; preds = %.preheader.i.i.i, %.lr.ph.i.i17.i
  %.03.i.i.i = phi i32 [ %i.ab, %.lr.ph.i.i17.i ], [ 0, %.preheader.i.i.i ]
  %.062.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i17.i ], [ %i.x, %.preheader.i.i.i ]
  %i.ab = add nuw nsw i32 %.03.i.i.i, 1           ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.062.i.i.i, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !14
  %.not.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i, label %pmix_bfrops_base_tma_argv_count.exit.i.i, label %.lr.ph.i.i17.i, !llvm.loop !17

pmix_bfrops_base_tma_argv_count.exit.i.i:         ; preds = %.lr.ph.i.i17.i, %.preheader.i.i.i
  %.07.i.i.i = phi i32 [ 0, %.preheader.i.i.i ], [ %i.ab, %.lr.ph.i.i17.i ] ; 2 uses
  %i.ae = add nsw i32 %.07.i.i.i, 2
  %i.af = sext i32 %i.ae to i64
  %i.ag = shl nsw i64 %i.af, 3
  %i.ah = tail call noalias noundef ptr @realloc(ptr noundef nonnull %i.x, i64 noundef %i.ag) #39 ; 3 uses
  store ptr %i.ah, ptr %i.w, align 8, !tbaa !18
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %pmix_bfrops_base_tma_regattr_load.exit, label %bb.j

bb.j:                                             ; preds = %pmix_bfrops_base_tma_argv_count.exit.i.i, %bb.i
  %i.aj = phi ptr [ %i.ah, %pmix_bfrops_base_tma_argv_count.exit.i.i ], [ %calloc.i.i, %bb.i ]
  %.0.i.i = phi i32 [ %.07.i.i.i, %pmix_bfrops_base_tma_argv_count.exit.i.i ], [ 0, %bb.i ]
  %i.ak = tail call noalias ptr @strdup(ptr noundef nonnull readonly %4) #40 ; 2 uses
  %i.al = sext i32 %.0.i.i to i64
  %i.am = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.al ; 2 uses
  store ptr %i.ak, ptr %i.am, align 8, !tbaa !14
  %i.an = icmp eq ptr %i.ak, null
  br i1 %i.an, label %pmix_bfrops_base_tma_regattr_load.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr i8, ptr %i.am, i64 8
  store ptr null, ptr %i.ao, align 8, !tbaa !14
  br label %pmix_bfrops_base_tma_regattr_load.exit

pmix_bfrops_base_tma_regattr_load.exit:           ; preds = %bb.g, %bb.i, %pmix_bfrops_base_tma_argv_count.exit.i.i, %bb.j, %bb.k
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @PMIx_Regattr_xfer(ptr nofree noundef writeonly captures(none) initializes((0, 522), (528, 536)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  store ptr null, ptr %i.a, align 8, !tbaa !56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(522) %0, i8 0, i64 522, i1 false)
  %i.b = load ptr, ptr %1, align 8, !tbaa !54     ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.b) #40
  store ptr %i.c, ptr %0, align 8, !tbaa !54
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(512) %i.d, i8 0, i64 512, i1 false)
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %bb.c
  %.012.i.i.i = phi i64 [ 0, %bb.c ], [ %i.t, %bb.e ] ; 2 uses
  %.0811.i.i.i = phi ptr [ %i.d, %bb.c ], [ %i.v, %bb.e ] ; 8 uses
  %.0910.i.i.i = phi ptr [ %i.e, %bb.c ], [ %i.u, %bb.e ] ; 5 uses
  %i.f = load i8, ptr %.0910.i.i.i, align 1, !tbaa !8 ; 2 uses
  store i8 %i.f, ptr %.0811.i.i.i, align 1, !tbaa !8
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %pmix_bfrops_base_tma_load_key.exit.i, label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %.lr.ph.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.0910.i.i.i, i64 1
  %i.i = getelementptr inbounds nuw i8, ptr %.0811.i.i.i, i64 1
  %i.j = load i8, ptr %i.h, align 1, !tbaa !8     ; 2 uses
  store i8 %i.j, ptr %i.i, align 1, !tbaa !8
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %pmix_bfrops_base_tma_load_key.exit.i.split.loop.exit24, label %.lr.ph.i.i.i.2

.lr.ph.i.i.i.2:                                   ; preds = %.lr.ph.i.i.i.1
  %i.l = getelementptr inbounds nuw i8, ptr %.0910.i.i.i, i64 2
  %i.m = getelementptr inbounds nuw i8, ptr %.0811.i.i.i, i64 2
  %i.n = load i8, ptr %i.l, align 1, !tbaa !8     ; 2 uses
  store i8 %i.n, ptr %i.m, align 1, !tbaa !8
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %pmix_bfrops_base_tma_load_key.exit.i.split.loop.exit22, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.2
  %i.p = getelementptr inbounds nuw i8, ptr %.0811.i.i.i, i64 3 ; 3 uses
  %exitcond.not.i.i.i.2 = icmp eq i64 %.012.i.i.i, 508
  br i1 %exitcond.not.i.i.i.2, label %pmix_bfrops_base_tma_load_key.exit.i, label %.lr.ph.i.i.i.3

.lr.ph.i.i.i.3:                                   ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.0910.i.i.i, i64 3
  %i.r = load i8, ptr %i.q, align 1, !tbaa !8     ; 2 uses
  store i8 %i.r, ptr %i.p, align 1, !tbaa !8
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %pmix_bfrops_base_tma_load_key.exit.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.3
  %i.t = add nuw nsw i64 %.012.i.i.i, 4
  %i.u = getelementptr inbounds nuw i8, ptr %.0910.i.i.i, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %.0811.i.i.i, i64 4
  br label %.lr.ph.i.i.i

pmix_bfrops_base_tma_load_key.exit.i.split.loop.exit22: ; preds = %.lr.ph.i.i.i.2
  %i.w = getelementptr inbounds nuw i8, ptr %.0811.i.i.i, i64 2
  br label %pmix_bfrops_base_tma_load_key.exit.i

pmix_bfrops_base_tma_load_key.exit.i.split.loop.exit24: ; preds = %.lr.ph.i.i.i.1
  %i.x = getelementptr inbounds nuw i8, ptr %.0811.i.i.i, i64 1
  br label %pmix_bfrops_base_tma_load_key.exit.i

pmix_bfrops_base_tma_load_key.exit.i:             ; preds = %.lr.ph.i.i.i, %bb.d, %.lr.ph.i.i.i.3, %pmix_bfrops_base_tma_load_key.exit.i.split.loop.exit24, %pmix_bfrops_base_tma_load_key.exit.i.split.loop.exit22
  %.08.lcssa.i.i.i = phi ptr [ %i.p, %bb.d ], [ %i.x, %pmix_bfrops_base_tma_load_key.exit.i.split.loop.exit24 ], [ %i.w, %pmix_bfrops_base_tma_load_key.exit.i.split.loop.exit22 ], [ %i.p, %.lr.ph.i.i.i.3 ], [ %.0811.i.i.i, %.lr.ph.i.i.i ]
  store i8 0, ptr %.08.lcssa.i.i.i, align 1, !tbaa !8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 520
  %i.z = load i16, ptr %i.y, align 8, !tbaa !162
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 520
  store i16 %i.z, ptr %i.aa, align 8, !tbaa !162
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 528
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !56 ; 3 uses
  %.not16.i = icmp eq ptr %i.ac, null
  br i1 %.not16.i, label %pmix_bfrops_base_tma_regattr_xfer.exit, label %bb.f

bb.f:                                             ; preds = %pmix_bfrops_base_tma_load_key.exit.i
  %i.ad = tail call noalias noundef dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #41 ; 3 uses
  store ptr null, ptr %i.ad, align 8, !tbaa !14
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !14 ; 2 uses
  %.not12.i.i = icmp eq ptr %i.ae, null
  br i1 %.not12.i.i, label %pmix_bfrops_base_tma_argv_copy.exit.i, label %.preheader.i.i.i.i

.preheader.i.ithread-pre-split.i.i:               ; preds = %bb.h
  %.pr.i.i = load ptr, ptr %i.an, align 8, !tbaa !14
  br label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.f, %.preheader.i.ithread-pre-split.i.i
  %i.af = phi ptr [ %.pr.i.i, %.preheader.i.ithread-pre-split.i.i ], [ null, %bb.f ]
  %i.ag = phi ptr [ %i.az, %.preheader.i.ithread-pre-split.i.i ], [ %i.ae, %bb.f ]
  %.0814.i.i = phi ptr [ %i.ay, %.preheader.i.ithread-pre-split.i.i ], [ %i.ac, %bb.f ]
  %.0313.i.i = phi ptr [ %i.an, %.preheader.i.ithread-pre-split.i.i ], [ %i.ad, %bb.f ] ; 2 uses
  %.not1.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not1.i.i.i.i, label %pmix_bfrops_base_tma_argv_count.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %.lr.ph.i.i.i.i
  %.03.i.i.i.i = phi i32 [ %i.ah, %.lr.ph.i.i.i.i ], [ 0, %.preheader.i.i.i.i ]
  %.062.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i ], [ %.0313.i.i, %.preheader.i.i.i.i ]
  %i.ah = add nuw nsw i32 %.03.i.i.i.i, 1         ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.062.i.i.i.i, i64 8 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !14
  %.not.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i, label %pmix_bfrops_base_tma_argv_count.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !17

pmix_bfrops_base_tma_argv_count.exit.i.i.i:       ; preds = %.lr.ph.i.i.i.i, %.preheader.i.i.i.i
  %.07.i.i.i.i = phi i32 [ 0, %.preheader.i.i.i.i ], [ %i.ah, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ak = add nsw i32 %.07.i.i.i.i, 2
  %i.al = sext i32 %i.ak to i64
  %i.am = shl nsw i64 %i.al, 3
  %i.an = tail call noalias noundef ptr @realloc(ptr noundef nonnull %.0313.i.i, i64 noundef %i.am) #39 ; 8 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %pmix_bfrops_base_tma_argv_copy.exit.i, label %bb.g

bb.g:                                             ; preds = %pmix_bfrops_base_tma_argv_count.exit.i.i.i
  %i.ap = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.ag) #40 ; 2 uses
  %i.aq = sext i32 %.07.i.i.i.i to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.aq ; 2 uses
  store ptr %i.ap, ptr %i.ar, align 8, !tbaa !14
  %i.as = icmp eq ptr %i.ap, null
  br i1 %i.as, label %.preheader.i.i.i, label %bb.h

.preheader.i.i.i:                                 ; preds = %bb.g
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !14 ; 2 uses
  %.not101.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not101.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i17.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i17.i, %.preheader.i.i.i
  tail call void @free(ptr noundef nonnull %i.an) #40
  br label %pmix_bfrops_base_tma_argv_copy.exit.i

.lr.ph.i.i17.i:                                   ; preds = %.preheader.i.i.i, %.lr.ph.i.i17.i
  %i.au = phi ptr [ %i.aw, %.lr.ph.i.i17.i ], [ %i.at, %.preheader.i.i.i ]
  %.02.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i17.i ], [ %i.an, %.preheader.i.i.i ]
  tail call void @free(ptr noundef nonnull %i.au) #40
  %i.av = getelementptr inbounds nuw i8, ptr %.02.i.i.i, i64 8 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !14 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not10.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i17.i, !llvm.loop !22

bb.h:                                             ; preds = %bb.g
  %i.ax = getelementptr i8, ptr %i.ar, i64 8
  store ptr null, ptr %i.ax, align 8, !tbaa !14
  %i.ay = getelementptr inbounds nuw i8, ptr %.0814.i.i, i64 8 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !14 ; 2 uses
  %.not.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i, label %pmix_bfrops_base_tma_argv_copy.exit.i, label %.preheader.i.ithread-pre-split.i.i, !llvm.loop !26

pmix_bfrops_base_tma_argv_copy.exit.i:            ; preds = %bb.h, %pmix_bfrops_base_tma_argv_count.exit.i.i.i, %._crit_edge.i.i.i, %bb.f
  %.1.i.i = phi ptr [ %i.ad, %bb.f ], [ null, %._crit_edge.i.i.i ], [ null, %pmix_bfrops_base_tma_argv_count.exit.i.i.i ], [ %i.an, %bb.h ]
  store ptr %.1.i.i, ptr %i.a, align 8, !tbaa !56
  br label %pmix_bfrops_base_tma_regattr_xfer.exit

pmix_bfrops_base_tma_regattr_xfer.exit:           ; preds = %pmix_bfrops_base_tma_load_key.exit.i, %pmix_bfrops_base_tma_argv_copy.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @PMIx_Data_array_init(ptr nofree noundef writeonly captures(none) initializes((0, 2), (8, 24)) %0, i16 noundef zeroext %1) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.a, align 8, !tbaa !163
  store i16 %1, ptr %0, align 8, !tbaa !165
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !166
  ret void
}

; Function Attrs: nofree nounwind memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @PMIx_Data_array_construct(ptr nofree noundef writeonly captures(none) initializes((0, 2), (8, 24)) %0, i64 noundef %1, i16 noundef zeroext %2) local_unnamed_addr #18 {
bb.a:
  tail call fastcc void @pmix_bfrops_base_tma_data_array_construct(ptr noundef %0, i64 noundef %1, i16 noundef zeroext %2)
  ret void
}

; Function Attrs: inlinehint nofree nounwind memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc void @pmix_bfrops_base_tma_data_array_construct(ptr nofree noundef writeonly captures(none) initializes((0, 2), (8, 24)) %0, i64 noundef %1, i16 noundef zeroext %2) unnamed_addr #19 {
bb.a:
  store i16 %2, ptr %0, align 8, !tbaa !165
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !166
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.y, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i16 %2, label %bb.x [
    i16 24, label %bb.c
    i16 22, label %bb.d
    i16 38, label %pmix_bfrops_base_tma_proc_info_create.exit
    i16 46, label %bb.e
    i16 21, label %pmix_bfrops_base_tma_value_create.exit
    i16 25, label %pmix_bfrops_base_tma_pdata_create.exit
    i16 41, label %pmix_bfrops_base_tma_query_create.exit
    i16 23, label %pmix_bfrops_base_tma_app_create.exit
    i16 42, label %pmix_bfrops_base_tma_byte_object_create.exit
    i16 27, label %pmix_bfrops_base_tma_byte_object_create.exit
    i16 43, label %bb.f
    i16 37, label %bb.f
    i16 33, label %bb.f
    i16 32, label %bb.f
    i16 31, label %bb.f
    i16 30, label %bb.f
    i16 12, label %bb.f
    i16 7, label %bb.f
    i16 2, label %bb.f
    i16 3, label %bb.g
    i16 4, label %bb.h
    i16 5, label %bb.i
    i16 20, label %bb.j
    i16 11, label %bb.j
    i16 6, label %bb.j
    i16 45, label %bb.k
end_hunk_3
begin_hunk_4_@pmix_bfrops_base_tma_copy_darray:bb.a
  %i.cy = phi ptr [ %i.dr, %.preheader.i.ithread-pre-split.i ], [ %i.cw, %bb.ap ]
  %.0814.i = phi ptr [ %i.dq, %.preheader.i.ithread-pre-split.i ], [ %i.cu, %bb.ap ]
  %.0313.i = phi ptr [ %i.df, %.preheader.i.ithread-pre-split.i ], [ %i.cv, %bb.ap ] ; 2 uses
  %.not1.i.i.i = icmp eq ptr %i.cx, null
  br i1 %.not1.i.i.i, label %pmix_bfrops_base_tma_argv_count.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %.lr.ph.i.i.i
  %.03.i.i.i = phi i32 [ %i.cz, %.lr.ph.i.i.i ], [ 0, %.preheader.i.i.i ]
  %.062.i.i.i = phi ptr [ %i.da, %.lr.ph.i.i.i ], [ %.0313.i, %.preheader.i.i.i ]
  %i.cz = add nuw nsw i32 %.03.i.i.i, 1           ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.062.i.i.i, i64 8 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !14
  %.not.i.i.i = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i, label %pmix_bfrops_base_tma_argv_count.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !17

pmix_bfrops_base_tma_argv_count.exit.i.i:         ; preds = %.lr.ph.i.i.i, %.preheader.i.i.i
  %.07.i.i.i = phi i32 [ 0, %.preheader.i.i.i ], [ %i.cz, %.lr.ph.i.i.i ] ; 2 uses
  %i.dc = add nsw i32 %.07.i.i.i, 2
  %i.dd = sext i32 %i.dc to i64
  %i.de = shl nsw i64 %i.dd, 3
  %i.df = tail call noalias noundef ptr @realloc(ptr noundef nonnull %.0313.i, i64 noundef %i.de) #39 ; 8 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %pmix_bfrops_base_tma_argv_copy.exit, label %bb.aq

bb.aq:                                            ; preds = %pmix_bfrops_base_tma_argv_count.exit.i.i
  %i.dh = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.cy) #40 ; 2 uses
  %i.di = sext i32 %.07.i.i.i to i64
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.df, i64 %i.di ; 2 uses
  store ptr %i.dh, ptr %i.dj, align 8, !tbaa !14
  %i.dk = icmp eq ptr %i.dh, null
  br i1 %i.dk, label %.preheader.i.i, label %bb.ar

.preheader.i.i:                                   ; preds = %bb.aq
  %i.dl = load ptr, ptr %i.df, align 8, !tbaa !14 ; 2 uses
  %.not101.i.i = icmp eq ptr %i.dl, null
  br i1 %.not101.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %.preheader.i.i
  tail call void @free(ptr noundef nonnull %i.df) #40
  br label %pmix_bfrops_base_tma_argv_copy.exit

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %i.dm = phi ptr [ %i.do, %.lr.ph.i.i ], [ %i.dl, %.preheader.i.i ]
  %.02.i.i = phi ptr [ %i.dn, %.lr.ph.i.i ], [ %i.df, %.preheader.i.i ]
  tail call void @free(ptr noundef nonnull %i.dm) #40
  %i.dn = getelementptr inbounds nuw i8, ptr %.02.i.i, i64 8 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !14 ; 2 uses
  %.not10.i.i = icmp eq ptr %i.do, null
  br i1 %.not10.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !22

bb.ar:                                            ; preds = %bb.aq
  %i.dp = getelementptr i8, ptr %i.dj, i64 8
  store ptr null, ptr %i.dp, align 8, !tbaa !14
  %i.dq = getelementptr inbounds nuw i8, ptr %.0814.i, i64 8 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !14 ; 2 uses
  %.not.i = icmp eq ptr %i.dr, null
  br i1 %.not.i, label %pmix_bfrops_base_tma_argv_copy.exit, label %.preheader.i.ithread-pre-split.i, !llvm.loop !26

pmix_bfrops_base_tma_argv_copy.exit:              ; preds = %pmix_bfrops_base_tma_argv_count.exit.i.i, %bb.ar, %bb.ap, %._crit_edge.i.i
  %.1.i = phi ptr [ %i.cv, %bb.ap ], [ null, %._crit_edge.i.i ], [ %i.df, %bb.ar ], [ null, %pmix_bfrops_base_tma_argv_count.exit.i.i ]
  %i.ds = getelementptr inbounds nuw [56 x i8], ptr %calloc.i911, i64 %.0796133
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store ptr %.1.i, ptr %i.dt, align 8, !tbaa !139
  br label %bb.as

bb.as:                                            ; preds = %pmix_bfrops_base_tma_argv_copy.exit, %bb.ao
  %i.du = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !140 ; 3 uses
  %.not903 = icmp eq ptr %i.dv, null
  br i1 %.not903, label %bb.aw, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dw = tail call noalias noundef dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #41 ; 3 uses
  store ptr null, ptr %i.dw, align 8, !tbaa !14
  %i.dx = load ptr, ptr %i.dv, align 8, !tbaa !14 ; 2 uses
  %.not12.i913 = icmp eq ptr %i.dx, null
  br i1 %.not12.i913, label %pmix_bfrops_base_tma_argv_copy.exit934, label %.preheader.i.i.i914

.preheader.i.ithread-pre-split.i925:              ; preds = %bb.av
  %.pr.i926 = load ptr, ptr %i.eg, align 8, !tbaa !14
  br label %.preheader.i.i.i914

.preheader.i.i.i914:                              ; preds = %bb.at, %.preheader.i.ithread-pre-split.i925
  %i.dy = phi ptr [ %.pr.i926, %.preheader.i.ithread-pre-split.i925 ], [ null, %bb.at ]
  %i.dz = phi ptr [ %i.es, %.preheader.i.ithread-pre-split.i925 ], [ %i.dx, %bb.at ]
  %.0814.i915 = phi ptr [ %i.er, %.preheader.i.ithread-pre-split.i925 ], [ %i.dv, %bb.at ]
  %.0313.i916 = phi ptr [ %i.eg, %.preheader.i.ithread-pre-split.i925 ], [ %i.dw, %bb.at ] ; 2 uses
  %.not1.i.i.i917 = icmp eq ptr %i.dy, null
  br i1 %.not1.i.i.i917, label %pmix_bfrops_base_tma_argv_count.exit.i.i922, label %.lr.ph.i.i.i918

.lr.ph.i.i.i918:                                  ; preds = %.preheader.i.i.i914, %.lr.ph.i.i.i918
  %.03.i.i.i919 = phi i32 [ %i.ea, %.lr.ph.i.i.i918 ], [ 0, %.preheader.i.i.i914 ]
  %.062.i.i.i920 = phi ptr [ %i.eb, %.lr.ph.i.i.i918 ], [ %.0313.i916, %.preheader.i.i.i914 ]
  %i.ea = add nuw nsw i32 %.03.i.i.i919, 1        ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.062.i.i.i920, i64 8 ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !14
  %.not.i.i.i921 = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.i921, label %pmix_bfrops_base_tma_argv_count.exit.i.i922, label %.lr.ph.i.i.i918, !llvm.loop !17

pmix_bfrops_base_tma_argv_count.exit.i.i922:      ; preds = %.lr.ph.i.i.i918, %.preheader.i.i.i914
  %.07.i.i.i923 = phi i32 [ 0, %.preheader.i.i.i914 ], [ %i.ea, %.lr.ph.i.i.i918 ] ; 2 uses
  %i.ed = add nsw i32 %.07.i.i.i923, 2
  %i.ee = sext i32 %i.ed to i64
  %i.ef = shl nsw i64 %i.ee, 3
  %i.eg = tail call noalias noundef ptr @realloc(ptr noundef nonnull %.0313.i916, i64 noundef %i.ef) #39 ; 8 uses
  %i.eh = icmp eq ptr %i.eg, null
  br i1 %i.eh, label %pmix_bfrops_base_tma_argv_copy.exit934, label %bb.au

bb.au:                                            ; preds = %pmix_bfrops_base_tma_argv_count.exit.i.i922
  %i.ei = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.dz) #40 ; 2 uses
  %i.ej = sext i32 %.07.i.i.i923 to i64
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.eg, i64 %i.ej ; 2 uses
  store ptr %i.ei, ptr %i.ek, align 8, !tbaa !14
  %i.el = icmp eq ptr %i.ei, null
  br i1 %i.el, label %.preheader.i.i928, label %bb.av

.preheader.i.i928:                                ; preds = %bb.au
  %i.em = load ptr, ptr %i.eg, align 8, !tbaa !14 ; 2 uses
  %.not101.i.i929 = icmp eq ptr %i.em, null
  br i1 %.not101.i.i929, label %._crit_edge.i.i933, label %.lr.ph.i.i930

._crit_edge.i.i933:                               ; preds = %.lr.ph.i.i930, %.preheader.i.i928
  tail call void @free(ptr noundef nonnull %i.eg) #40
  br label %pmix_bfrops_base_tma_argv_copy.exit934

.lr.ph.i.i930:                                    ; preds = %.preheader.i.i928, %.lr.ph.i.i930
  %i.en = phi ptr [ %i.ep, %.lr.ph.i.i930 ], [ %i.em, %.preheader.i.i928 ]
  %.02.i.i931 = phi ptr [ %i.eo, %.lr.ph.i.i930 ], [ %i.eg, %.preheader.i.i928 ]
  tail call void @free(ptr noundef nonnull %i.en) #40
  %i.eo = getelementptr inbounds nuw i8, ptr %.02.i.i931, i64 8 ; 2 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !14 ; 2 uses
  %.not10.i.i932 = icmp eq ptr %i.ep, null
  br i1 %.not10.i.i932, label %._crit_edge.i.i933, label %.lr.ph.i.i930, !llvm.loop !22

bb.av:                                            ; preds = %bb.au
  %i.eq = getelementptr i8, ptr %i.ek, i64 8
  store ptr null, ptr %i.eq, align 8, !tbaa !14
  %i.er = getelementptr inbounds nuw i8, ptr %.0814.i915, i64 8 ; 2 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !14 ; 2 uses
  %.not.i924 = icmp eq ptr %i.es, null
  br i1 %.not.i924, label %pmix_bfrops_base_tma_argv_copy.exit934, label %.preheader.i.ithread-pre-split.i925, !llvm.loop !26

pmix_bfrops_base_tma_argv_copy.exit934:           ; preds = %pmix_bfrops_base_tma_argv_count.exit.i.i922, %bb.av, %bb.at, %._crit_edge.i.i933
  %.1.i927 = phi ptr [ %i.dw, %bb.at ], [ null, %._crit_edge.i.i933 ], [ %i.eg, %bb.av ], [ null, %pmix_bfrops_base_tma_argv_count.exit.i.i922 ]
  %i.et = getelementptr inbounds nuw [56 x i8], ptr %calloc.i911, i64 %.0796133
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  store ptr %.1.i927, ptr %i.eu, align 8, !tbaa !140
  br label %bb.aw

bb.aw:                                            ; preds = %pmix_bfrops_base_tma_argv_copy.exit934, %bb.as
  %i.ev = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !141 ; 2 uses
  %.not904 = icmp eq ptr %i.ew, null
  br i1 %.not904, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ex = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.ew) #40
  %i.ey = getelementptr inbounds nuw [56 x i8], ptr %calloc.i911, i64 %.0796133
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  store ptr %i.ex, ptr %i.ez, align 8, !tbaa !141
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.fa = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !196
  %i.fc = getelementptr inbounds nuw [56 x i8], ptr %calloc.i911, i64 %.0796133 ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 32
  store i32 %i.fb, ptr %i.fd, align 8, !tbaa !196
  %i.fe = getelementptr inbounds nuw i8, ptr %i.cp, i64 48 ; 2 uses
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !143 ; 5 uses
  %.not905 = icmp eq i64 %i.ff, 0
  br i1 %.not905, label %.loopexit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fg = getelementptr inbounds nuw i8, ptr %i.cp, i64 40 ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !142
  %.not906 = icmp eq ptr %i.fh, null
  br i1 %.not906, label %.loopexit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fi = mul i64 %i.ff, 552
  %i.fj = tail call noalias noundef ptr @malloc(i64 noundef %i.fi) #41 ; 7 uses
  %i.fk = icmp eq ptr %i.fj, null
  br i1 %i.fk, label %bb.bb, label %.preheader.i.preheader, !prof !79

.preheader.i.preheader:                           ; preds = %bb.ba
  %xtraiter96 = and i64 %i.ff, 3                  ; 3 uses
  %i.fl = icmp ult i64 %i.ff, 4
  br i1 %i.fl, label %.preheader.i.epil.preheader, label %.preheader.i.preheader.new

.preheader.i.preheader.new:                       ; preds = %.preheader.i.preheader
  %unroll_iter100 = and i64 %i.ff, -4
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.i.preheader.new
  %.01.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %i.fx, %.preheader.i ] ; 5 uses
  %niter101 = phi i64 [ 0, %.preheader.i.preheader.new ], [ %niter101.next.3, %.preheader.i ]
  %i.fm = getelementptr inbounds nuw [552 x i8], ptr %i.fj, i64 %.01.i ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 520
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fn, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(516) %i.fm, i8 0, i64 516, i1 false)
  %i.fo = getelementptr inbounds nuw [552 x i8], ptr %i.fj, i64 %.01.i ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 552
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 1072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fq, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(516) %i.fp, i8 0, i64 516, i1 false)
  %i.fr = getelementptr inbounds nuw [552 x i8], ptr %i.fj, i64 %.01.i ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 1104
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 1624
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ft, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(516) %i.fs, i8 0, i64 516, i1 false)
  %i.fu = getelementptr inbounds nuw [552 x i8], ptr %i.fj, i64 %.01.i ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 1656
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 2176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fw, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(516) %i.fv, i8 0, i64 516, i1 false)
  %i.fx = add nuw i64 %.01.i, 4                   ; 2 uses
  %niter101.next.3 = add nuw i64 %niter101, 4     ; 2 uses
  %niter101.ncmp.3 = icmp eq i64 %niter101.next.3, %unroll_iter100
  br i1 %niter101.ncmp.3, label %.unr-lcssa, label %.preheader.i, !llvm.loop !83

bb.bb:                                            ; preds = %bb.ba
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fc, i64 40
  store ptr null, ptr %i.fy, align 8, !tbaa !142
  %i.fz = load i64, ptr %i.f, align 8, !tbaa !166
  tail call fastcc void @pmix_bfrops_base_tma_app_free(ptr noundef nonnull %calloc.i911, i64 noundef %i.fz)
  br label %.thread10

.unr-lcssa:                                       ; preds = %.preheader.i
  %lcmp.mod98.not = icmp eq i64 %xtraiter96, 0
  br i1 %lcmp.mod98.not, label %.epilog-lcssa, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %.unr-lcssa, %.preheader.i.preheader
  %.01.i.epil.init = phi i64 [ 0, %.preheader.i.preheader ], [ %i.fx, %.unr-lcssa ]
  %lcmp.mod99 = icmp ne i64 %xtraiter96, 0
  tail call void @llvm.assume(i1 %lcmp.mod99)
  br label %.preheader.i.epil

.preheader.i.epil:                                ; preds = %.preheader.i.epil, %.preheader.i.epil.preheader
  %.01.i.epil = phi i64 [ %i.gc, %.preheader.i.epil ], [ %.01.i.epil.init, %.preheader.i.epil.preheader ] ; 2 uses
  %epil.iter97 = phi i64 [ %epil.iter97.next, %.preheader.i.epil ], [ 0, %.preheader.i.epil.preheader ]
  %i.ga = getelementptr inbounds nuw [552 x i8], ptr %i.fj, i64 %.01.i.epil ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 520
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gb, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(516) %i.ga, i8 0, i64 516, i1 false)
  %i.gc = add nuw i64 %.01.i.epil, 1
  %epil.iter97.next = add i64 %epil.iter97, 1     ; 2 uses
  %epil.iter97.cmp.not = icmp eq i64 %epil.iter97.next, %xtraiter96
  br i1 %epil.iter97.cmp.not, label %.epilog-lcssa, label %.preheader.i.epil, !llvm.loop !197

.epilog-lcssa:                                    ; preds = %.preheader.i.epil, %.unr-lcssa
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fc, i64 40 ; 2 uses
  store ptr %i.fj, ptr %i.gd, align 8, !tbaa !142
  %i.ge = load i64, ptr %i.fe, align 8, !tbaa !143 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fc, i64 48 ; 2 uses
  store i64 %i.ge, ptr %i.gf, align 8, !tbaa !143
  %.not153 = icmp eq i64 %i.ge, 0
  br i1 %.not153, label %.loopexit, label %.lr.ph132

.lr.ph132:                                        ; preds = %.epilog-lcssa, %pmix_bfrops_base_tma_info_xfer.exit
  %.0795130 = phi i64 [ %i.hn, %pmix_bfrops_base_tma_info_xfer.exit ], [ 0, %.epilog-lcssa ] ; 3 uses
  %i.gg = load ptr, ptr %i.gd, align 8, !tbaa !142 ; 2 uses
  %i.gh = getelementptr inbounds nuw [552 x i8], ptr %i.gg, i64 %.0795130 ; 4 uses
  %i.gi = load ptr, ptr %i.fg, align 8, !tbaa !142 ; 2 uses
  %i.gj = getelementptr inbounds nuw [552 x i8], ptr %i.gi, i64 %.0795130 ; 3 uses
  %i.gk = icmp eq ptr %i.gg, null
  %i.gl = icmp eq ptr %i.gi, null
  %i.gm = or i1 %i.gk, %i.gl
  br i1 %i.gm, label %pmix_bfrops_base_tma_info_xfer.exit, label %bb.bc, !prof !79

bb.bc:                                            ; preds = %.lr.ph132
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(512) %i.gh, i8 0, i64 512, i1 false)
  br label %.lr.ph.i.i1033

.lr.ph.i.i1033:                                   ; preds = %bb.be, %bb.bc
  %.012.i.i1034 = phi i64 [ 0, %bb.bc ], [ %i.hb, %bb.be ] ; 2 uses
  %.0811.i.i1035 = phi ptr [ %i.gh, %bb.bc ], [ %i.hd, %bb.be ] ; 8 uses
  %.0910.i.i1036 = phi ptr [ %i.gj, %bb.bc ], [ %i.hc, %bb.be ] ; 5 uses
  %i.gn = load i8, ptr %.0910.i.i1036, align 1, !tbaa !8 ; 2 uses
  store i8 %i.gn, ptr %.0811.i.i1035, align 1, !tbaa !8
  %i.go = icmp eq i8 %i.gn, 0
  br i1 %i.go, label %pmix_bfrops_base_tma_load_key.exit1040, label %.lr.ph.i.i1033.1

.lr.ph.i.i1033.1:                                 ; preds = %.lr.ph.i.i1033
  %i.gp = getelementptr inbounds nuw i8, ptr %.0910.i.i1036, i64 1
  %i.gq = getelementptr inbounds nuw i8, ptr %.0811.i.i1035, i64 1
  %i.gr = load i8, ptr %i.gp, align 1, !tbaa !8   ; 2 uses
  store i8 %i.gr, ptr %i.gq, align 1, !tbaa !8
  %i.gs = icmp eq i8 %i.gr, 0
  br i1 %i.gs, label %pmix_bfrops_base_tma_load_key.exit1040.split.loop.exit192, label %.lr.ph.i.i1033.2

.lr.ph.i.i1033.2:                                 ; preds = %.lr.ph.i.i1033.1
  %i.gt = getelementptr inbounds nuw i8, ptr %.0910.i.i1036, i64 2
  %i.gu = getelementptr inbounds nuw i8, ptr %.0811.i.i1035, i64 2
  %i.gv = load i8, ptr %i.gt, align 1, !tbaa !8   ; 2 uses
  store i8 %i.gv, ptr %i.gu, align 1, !tbaa !8
  %i.gw = icmp eq i8 %i.gv, 0
  br i1 %i.gw, label %pmix_bfrops_base_tma_load_key.exit1040.split.loop.exit190, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph.i.i1033.2
  %i.gx = getelementptr inbounds nuw i8, ptr %.0811.i.i1035, i64 3 ; 3 uses
  %exitcond.not.i.i1037.2 = icmp eq i64 %.012.i.i1034, 508
  br i1 %exitcond.not.i.i1037.2, label %pmix_bfrops_base_tma_load_key.exit1040, label %.lr.ph.i.i1033.3

.lr.ph.i.i1033.3:                                 ; preds = %bb.bd
  %i.gy = getelementptr inbounds nuw i8, ptr %.0910.i.i1036, i64 3
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !8   ; 2 uses
  store i8 %i.gz, ptr %i.gx, align 1, !tbaa !8
  %i.ha = icmp eq i8 %i.gz, 0
  br i1 %i.ha, label %pmix_bfrops_base_tma_load_key.exit1040, label %bb.be

bb.be:                                            ; preds = %.lr.ph.i.i1033.3
  %i.hb = add nuw nsw i64 %.012.i.i1034, 4
  %i.hc = getelementptr inbounds nuw i8, ptr %.0910.i.i1036, i64 4
  %i.hd = getelementptr inbounds nuw i8, ptr %.0811.i.i1035, i64 4
  br label %.lr.ph.i.i1033

pmix_bfrops_base_tma_load_key.exit1040.split.loop.exit190: ; preds = %.lr.ph.i.i1033.2
  %i.he = getelementptr inbounds nuw i8, ptr %.0811.i.i1035, i64 2
  br label %pmix_bfrops_base_tma_load_key.exit1040

pmix_bfrops_base_tma_load_key.exit1040.split.loop.exit192: ; preds = %.lr.ph.i.i1033.1
  %i.hf = getelementptr inbounds nuw i8, ptr %.0811.i.i1035, i64 1
  br label %pmix_bfrops_base_tma_load_key.exit1040

pmix_bfrops_base_tma_load_key.exit1040:           ; preds = %.lr.ph.i.i1033, %bb.bd, %.lr.ph.i.i1033.3, %pmix_bfrops_base_tma_load_key.exit1040.split.loop.exit192, %pmix_bfrops_base_tma_load_key.exit1040.split.loop.exit190
  %.08.lcssa.i.i1039 = phi ptr [ %i.gx, %bb.bd ], [ %i.hf, %pmix_bfrops_base_tma_load_key.exit1040.split.loop.exit192 ], [ %i.he, %pmix_bfrops_base_tma_load_key.exit1040.split.loop.exit190 ], [ %i.gx, %.lr.ph.i.i1033.3 ], [ %.0811.i.i1035, %.lr.ph.i.i1033 ]
  store i8 0, ptr %.08.lcssa.i.i1039, align 1, !tbaa !8
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gj, i64 512
  %i.hh = load i32, ptr %i.hg, align 8, !tbaa !80 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gh, i64 512
  store i32 %i.hh, ptr %i.hi, align 8, !tbaa !80
  %i.hj = and i32 %i.hh, 16
  %.not20 = icmp eq i32 %i.hj, 0
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gh, i64 520 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gj, i64 520 ; 2 uses
  br i1 %.not20, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %pmix_bfrops_base_tma_load_key.exit1040
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hk, ptr noundef nonnull align 8 dereferenceable(32) %i.hl, i64 32, i1 false)
  br label %pmix_bfrops_base_tma_info_xfer.exit

bb.bg:                                            ; preds = %pmix_bfrops_base_tma_load_key.exit1040
  %i.hm = tail call fastcc i32 @pmix_bfrops_base_tma_value_xfer(ptr noundef nonnull %i.hk, ptr noundef nonnull %i.hl) ; 0 uses
  br label %pmix_bfrops_base_tma_info_xfer.exit

pmix_bfrops_base_tma_info_xfer.exit:              ; preds = %.lr.ph132, %bb.bf, %bb.bg
  %i.hn = add nuw i64 %.0795130, 1                ; 2 uses
  %i.ho = load i64, ptr %i.gf, align 8, !tbaa !143
  %i.hp = icmp ult i64 %i.hn, %i.ho
  br i1 %i.hp, label %.lr.ph132, label %.loopexit, !llvm.loop !198

.loopexit:                                        ; preds = %pmix_bfrops_base_tma_info_xfer.exit, %.epilog-lcssa, %bb.ay, %bb.az
  %i.hq = add nuw i64 %.0796133, 1                ; 2 uses
  %i.hr = load i64, ptr %i.d, align 8, !tbaa !166
  %i.hs = icmp ult i64 %i.hq, %i.hr
  br i1 %i.hs, label %.lr.ph134, label %.sink.split, !llvm.loop !199

bb.bh:                                            ; preds = %bb.d
  %i.ht = tail call fastcc ptr @pmix_bfrops_base_tma_info_create(i64 noundef %i.e) ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.ht, ptr %i.hu, align 8, !tbaa !163
  %i.hv = icmp eq ptr %i.ht, null
  br i1 %i.hv, label %.thread10, label %bb.bi, !prof !79

bb.bi:                                            ; preds = %bb.bh
  %i.hw = load ptr, ptr %i.h, align 8, !tbaa !163 ; 2 uses
  %i.hx = load i64, ptr %i.d, align 8, !tbaa !166
  %i.hy = icmp eq i64 %i.hx, 0
  %i.hz = icmp eq ptr %i.hw, null
  %or.cond = select i1 %i.hy, i1 true, i1 %i.hz, !prof !200
  br i1 %or.cond, label %.sink.split, label %.lr.ph129.split, !prof !200

.lr.ph129.split:                                  ; preds = %bb.bi, %pmix_bfrops_base_tma_info_xfer.exit938
  %.0794127 = phi i64 [ %i.jc, %pmix_bfrops_base_tma_info_xfer.exit938 ], [ 0, %bb.bi ] ; 3 uses
  %i.ia = getelementptr inbounds nuw [552 x i8], ptr %i.ht, i64 %.0794127 ; 4 uses
  %i.ib = getelementptr inbounds nuw [552 x i8], ptr %i.hw, i64 %.0794127 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(512) %i.ia, i8 0, i64 512, i1 false)
  br label %.lr.ph.i.i1042

.lr.ph.i.i1042:                                   ; preds = %bb.bk, %.lr.ph129.split
  %.012.i.i1043 = phi i64 [ 0, %.lr.ph129.split ], [ %i.iq, %bb.bk ] ; 2 uses
  %.0811.i.i1044 = phi ptr [ %i.ia, %.lr.ph129.split ], [ %i.is, %bb.bk ] ; 8 uses
  %.0910.i.i1045 = phi ptr [ %i.ib, %.lr.ph129.split ], [ %i.ir, %bb.bk ] ; 5 uses
  %i.ic = load i8, ptr %.0910.i.i1045, align 1, !tbaa !8 ; 2 uses
  store i8 %i.ic, ptr %.0811.i.i1044, align 1, !tbaa !8
  %i.id = icmp eq i8 %i.ic, 0
  br i1 %i.id, label %pmix_bfrops_base_tma_load_key.exit1049, label %.lr.ph.i.i1042.1

.lr.ph.i.i1042.1:                                 ; preds = %.lr.ph.i.i1042
  %i.ie = getelementptr inbounds nuw i8, ptr %.0910.i.i1045, i64 1
  %i.if = getelementptr inbounds nuw i8, ptr %.0811.i.i1044, i64 1
  %i.ig = load i8, ptr %i.ie, align 1, !tbaa !8   ; 2 uses
  store i8 %i.ig, ptr %i.if, align 1, !tbaa !8
  %i.ih = icmp eq i8 %i.ig, 0
  br i1 %i.ih, label %pmix_bfrops_base_tma_load_key.exit1049.split.loop.exit183, label %.lr.ph.i.i1042.2

.lr.ph.i.i1042.2:                                 ; preds = %.lr.ph.i.i1042.1
  %i.ii = getelementptr inbounds nuw i8, ptr %.0910.i.i1045, i64 2
  %i.ij = getelementptr inbounds nuw i8, ptr %.0811.i.i1044, i64 2
  %i.ik = load i8, ptr %i.ii, align 1, !tbaa !8   ; 2 uses
  store i8 %i.ik, ptr %i.ij, align 1, !tbaa !8
  %i.il = icmp eq i8 %i.ik, 0
  br i1 %i.il, label %pmix_bfrops_base_tma_load_key.exit1049.split.loop.exit181, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph.i.i1042.2
  %i.im = getelementptr inbounds nuw i8, ptr %.0811.i.i1044, i64 3 ; 3 uses
  %exitcond.not.i.i1046.2 = icmp eq i64 %.012.i.i1043, 508
  br i1 %exitcond.not.i.i1046.2, label %pmix_bfrops_base_tma_load_key.exit1049, label %.lr.ph.i.i1042.3

.lr.ph.i.i1042.3:                                 ; preds = %bb.bj
  %i.in = getelementptr inbounds nuw i8, ptr %.0910.i.i1045, i64 3
  %i.io = load i8, ptr %i.in, align 1, !tbaa !8   ; 2 uses
  store i8 %i.io, ptr %i.im, align 1, !tbaa !8
  %i.ip = icmp eq i8 %i.io, 0
  br i1 %i.ip, label %pmix_bfrops_base_tma_load_key.exit1049, label %bb.bk

bb.bk:                                            ; preds = %.lr.ph.i.i1042.3
  %i.iq = add nuw nsw i64 %.012.i.i1043, 4
  %i.ir = getelementptr inbounds nuw i8, ptr %.0910.i.i1045, i64 4
  %i.is = getelementptr inbounds nuw i8, ptr %.0811.i.i1044, i64 4
  br label %.lr.ph.i.i1042

pmix_bfrops_base_tma_load_key.exit1049.split.loop.exit181: ; preds = %.lr.ph.i.i1042.2
  %i.it = getelementptr inbounds nuw i8, ptr %.0811.i.i1044, i64 2
  br label %pmix_bfrops_base_tma_load_key.exit1049

pmix_bfrops_base_tma_load_key.exit1049.split.loop.exit183: ; preds = %.lr.ph.i.i1042.1
  %i.iu = getelementptr inbounds nuw i8, ptr %.0811.i.i1044, i64 1
  br label %pmix_bfrops_base_tma_load_key.exit1049

pmix_bfrops_base_tma_load_key.exit1049:           ; preds = %.lr.ph.i.i1042, %bb.bj, %.lr.ph.i.i1042.3, %pmix_bfrops_base_tma_load_key.exit1049.split.loop.exit183, %pmix_bfrops_base_tma_load_key.exit1049.split.loop.exit181
  %.08.lcssa.i.i1048 = phi ptr [ %i.im, %bb.bj ], [ %i.iu, %pmix_bfrops_base_tma_load_key.exit1049.split.loop.exit183 ], [ %i.it, %pmix_bfrops_base_tma_load_key.exit1049.split.loop.exit181 ], [ %i.im, %.lr.ph.i.i1042.3 ], [ %.0811.i.i1044, %.lr.ph.i.i1042 ]
  store i8 0, ptr %.08.lcssa.i.i1048, align 1, !tbaa !8
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ib, i64 512
  %i.iw = load i32, ptr %i.iv, align 8, !tbaa !80 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ia, i64 512
  store i32 %i.iw, ptr %i.ix, align 8, !tbaa !80
  %i.iy = and i32 %i.iw, 16
  %.not19 = icmp eq i32 %i.iy, 0
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ia, i64 520 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ib, i64 520 ; 2 uses
  br i1 %.not19, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %pmix_bfrops_base_tma_load_key.exit1049
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.iz, ptr noundef nonnull align 8 dereferenceable(32) %i.ja, i64 32, i1 false)
  br label %pmix_bfrops_base_tma_info_xfer.exit938

bb.bm:                                            ; preds = %pmix_bfrops_base_tma_load_key.exit1049
  %i.jb = tail call fastcc i32 @pmix_bfrops_base_tma_value_xfer(ptr noundef nonnull %i.iz, ptr noundef nonnull %i.ja) ; 0 uses
  br label %pmix_bfrops_base_tma_info_xfer.exit938

pmix_bfrops_base_tma_info_xfer.exit938:           ; preds = %bb.bl, %bb.bm
  %i.jc = add nuw i64 %.0794127, 1                ; 2 uses
  %i.jd = load i64, ptr %i.d, align 8, !tbaa !166
  %i.je = icmp ult i64 %i.jc, %i.jd
  br i1 %i.je, label %.lr.ph129.split, label %.sink.split, !llvm.loop !201

pmix_bfrops_base_tma_pdata_create.exit:           ; preds = %bb.d
  %i.jf = mul i64 %i.e, 808
  %calloc.i939 = tail call ptr @calloc(i64 1, i64 %i.jf) ; 3 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %calloc.i939, ptr %i.jg, align 8, !tbaa !163
  %i.jh = icmp eq ptr %calloc.i939, null
  br i1 %i.jh, label %.thread10, label %.lr.ph126, !prof !79

.lr.ph126:                                        ; preds = %pmix_bfrops_base_tma_pdata_create.exit, %pmix_bfrops_base_tma_load_key.exit1058
  %.0793125 = phi i64 [ %i.lk, %pmix_bfrops_base_tma_load_key.exit1058 ], [ 0, %pmix_bfrops_base_tma_pdata_create.exit ] ; 3 uses
  %i.ji = getelementptr inbounds nuw [808 x i8], ptr %calloc.i939, i64 %.0793125 ; 5 uses
  %i.jj = getelementptr inbounds nuw [808 x i8], ptr %i.i, i64 %.0793125 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(808) %i.ji, i8 0, i64 808, i1 false)
  br label %.lr.ph.i.i1060

.lr.ph.i.i1060:                                   ; preds = %bb.bn, %.lr.ph126
  %.012.i.i1061 = phi i64 [ 0, %.lr.ph126 ], [ %i.kc, %bb.bn ]
  %.0811.i.i1062 = phi ptr [ %i.ji, %.lr.ph126 ], [ %i.ke, %bb.bn ] ; 11 uses
  %.0910.i.i1063 = phi ptr [ %i.jj, %.lr.ph126 ], [ %i.kd, %bb.bn ] ; 6 uses
  %i.jk = load i8, ptr %.0910.i.i1063, align 1, !tbaa !8 ; 2 uses
  store i8 %i.jk, ptr %.0811.i.i1062, align 1, !tbaa !8
  %i.jl = icmp eq i8 %i.jk, 0
  br i1 %i.jl, label %pmix_bfrops_base_tma_load_nspace.exit1067, label %.lr.ph.i.i1060.1

.lr.ph.i.i1060.1:                                 ; preds = %.lr.ph.i.i1060
  %i.jm = getelementptr inbounds nuw i8, ptr %.0910.i.i1063, i64 1
  %i.jn = getelementptr inbounds nuw i8, ptr %.0811.i.i1062, i64 1
  %i.jo = load i8, ptr %i.jm, align 1, !tbaa !8   ; 2 uses
  store i8 %i.jo, ptr %i.jn, align 1, !tbaa !8
  %i.jp = icmp eq i8 %i.jo, 0
  br i1 %i.jp, label %pmix_bfrops_base_tma_load_nspace.exit1067.split.loop.exit163, label %.lr.ph.i.i1060.2

.lr.ph.i.i1060.2:                                 ; preds = %.lr.ph.i.i1060.1
  %i.jq = getelementptr inbounds nuw i8, ptr %.0910.i.i1063, i64 2
  %i.jr = getelementptr inbounds nuw i8, ptr %.0811.i.i1062, i64 2
  %i.js = load i8, ptr %i.jq, align 1, !tbaa !8   ; 2 uses
  store i8 %i.js, ptr %i.jr, align 1, !tbaa !8
  %i.jt = icmp eq i8 %i.js, 0
  br i1 %i.jt, label %pmix_bfrops_base_tma_load_nspace.exit1067.split.loop.exit161, label %.lr.ph.i.i1060.3

.lr.ph.i.i1060.3:                                 ; preds = %.lr.ph.i.i1060.2
  %i.ju = getelementptr inbounds nuw i8, ptr %.0910.i.i1063, i64 3
  %i.jv = getelementptr inbounds nuw i8, ptr %.0811.i.i1062, i64 3
  %i.jw = load i8, ptr %i.ju, align 1, !tbaa !8   ; 2 uses
  store i8 %i.jw, ptr %i.jv, align 1, !tbaa !8
  %i.jx = icmp eq i8 %i.jw, 0
  br i1 %i.jx, label %pmix_bfrops_base_tma_load_nspace.exit1067.split.loop.exit159, label %.lr.ph.i.i1060.4

.lr.ph.i.i1060.4:                                 ; preds = %.lr.ph.i.i1060.3
  %i.jy = getelementptr inbounds nuw i8, ptr %.0910.i.i1063, i64 4
  %i.jz = getelementptr inbounds nuw i8, ptr %.0811.i.i1062, i64 4
  %i.ka = load i8, ptr %i.jy, align 1, !tbaa !8   ; 2 uses
  store i8 %i.ka, ptr %i.jz, align 1, !tbaa !8
  %i.kb = icmp eq i8 %i.ka, 0
  br i1 %i.kb, label %pmix_bfrops_base_tma_load_nspace.exit1067.split.loop.exit157, label %bb.bn

bb.bn:                                            ; preds = %.lr.ph.i.i1060.4
  %i.kc = add nuw nsw i64 %.012.i.i1061, 5        ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %.0910.i.i1063, i64 5
  %i.ke = getelementptr inbounds nuw i8, ptr %.0811.i.i1062, i64 5 ; 2 uses
  %exitcond.not.i.i1064.4 = icmp eq i64 %i.kc, 255
  br i1 %exitcond.not.i.i1064.4, label %pmix_bfrops_base_tma_load_nspace.exit1067, label %.lr.ph.i.i1060, !llvm.loop !9

pmix_bfrops_base_tma_load_nspace.exit1067.split.loop.exit157: ; preds = %.lr.ph.i.i1060.4
  %i.kf = getelementptr inbounds nuw i8, ptr %.0811.i.i1062, i64 4
  br label %pmix_bfrops_base_tma_load_nspace.exit1067

pmix_bfrops_base_tma_load_nspace.exit1067.split.loop.exit159: ; preds = %.lr.ph.i.i1060.3
  %i.kg = getelementptr inbounds nuw i8, ptr %.0811.i.i1062, i64 3
  br label %pmix_bfrops_base_tma_load_nspace.exit1067

pmix_bfrops_base_tma_load_nspace.exit1067.split.loop.exit161: ; preds = %.lr.ph.i.i1060.2
  %i.kh = getelementptr inbounds nuw i8, ptr %.0811.i.i1062, i64 2
  br label %pmix_bfrops_base_tma_load_nspace.exit1067

pmix_bfrops_base_tma_load_nspace.exit1067.split.loop.exit163: ; preds = %.lr.ph.i.i1060.1
  %i.ki = getelementptr inbounds nuw i8, ptr %.0811.i.i1062, i64 1
  br label %pmix_bfrops_base_tma_load_nspace.exit1067

pmix_bfrops_base_tma_load_nspace.exit1067:        ; preds = %.lr.ph.i.i1060, %bb.bn, %pmix_bfrops_base_tma_load_nspace.exit1067.split.loop.exit163, %pmix_bfrops_base_tma_load_nspace.exit1067.split.loop.exit161, %pmix_bfrops_base_tma_load_nspace.exit1067.split.loop.exit159, %pmix_bfrops_base_tma_load_nspace.exit1067.split.loop.exit157
  %.08.lcssa.i.i1066 = phi ptr [ %i.kf, %pmix_bfrops_base_tma_load_nspace.exit1067.split.loop.exit157 ], [ %i.ki, %pmix_bfrops_base_tma_load_nspace.exit1067.split.loop.exit163 ], [ %i.kh, %pmix_bfrops_base_tma_load_nspace.exit1067.split.loop.exit161 ], [ %i.ke, %bb.bn ], [ %i.kg, %pmix_bfrops_base_tma_load_nspace.exit1067.split.loop.exit159 ], [ %.0811.i.i1062, %.lr.ph.i.i1060 ]
  store i8 0, ptr %.08.lcssa.i.i1066, align 1, !tbaa !8
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jj, i64 256
  %i.kk = load i32, ptr %i.kj, align 8, !tbaa !202
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ji, i64 256
  store i32 %i.kk, ptr %i.kl, align 8, !tbaa !202
  %i.km = getelementptr inbounds nuw i8, ptr %i.ji, i64 260 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.jj, i64 260
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(512) %i.km, i8 0, i64 512, i1 false)
  br label %.lr.ph.i.i1051

.lr.ph.i.i1051:                                   ; preds = %bb.bp, %pmix_bfrops_base_tma_load_nspace.exit1067
  %.012.i.i1052 = phi i64 [ 0, %pmix_bfrops_base_tma_load_nspace.exit1067 ], [ %i.lc, %bb.bp ] ; 2 uses
  %.0811.i.i1053 = phi ptr [ %i.km, %pmix_bfrops_base_tma_load_nspace.exit1067 ], [ %i.le, %bb.bp ] ; 8 uses
  %.0910.i.i1054 = phi ptr [ %i.kn, %pmix_bfrops_base_tma_load_nspace.exit1067 ], [ %i.ld, %bb.bp ] ; 5 uses
  %i.ko = load i8, ptr %.0910.i.i1054, align 1, !tbaa !8 ; 2 uses
  store i8 %i.ko, ptr %.0811.i.i1053, align 1, !tbaa !8
  %i.kp = icmp eq i8 %i.ko, 0
  br i1 %i.kp, label %pmix_bfrops_base_tma_load_key.exit1058, label %.lr.ph.i.i1051.1

.lr.ph.i.i1051.1:                                 ; preds = %.lr.ph.i.i1051
  %i.kq = getelementptr inbounds nuw i8, ptr %.0910.i.i1054, i64 1
  %i.kr = getelementptr inbounds nuw i8, ptr %.0811.i.i1053, i64 1
  %i.ks = load i8, ptr %i.kq, align 1, !tbaa !8   ; 2 uses
  store i8 %i.ks, ptr %i.kr, align 1, !tbaa !8
  %i.kt = icmp eq i8 %i.ks, 0
  br i1 %i.kt, label %pmix_bfrops_base_tma_load_key.exit1058.split.loop.exit174, label %.lr.ph.i.i1051.2

.lr.ph.i.i1051.2:                                 ; preds = %.lr.ph.i.i1051.1
  %i.ku = getelementptr inbounds nuw i8, ptr %.0910.i.i1054, i64 2
  %i.kv = getelementptr inbounds nuw i8, ptr %.0811.i.i1053, i64 2
  %i.kw = load i8, ptr %i.ku, align 1, !tbaa !8   ; 2 uses
  store i8 %i.kw, ptr %i.kv, align 1, !tbaa !8
  %i.kx = icmp eq i8 %i.kw, 0
  br i1 %i.kx, label %pmix_bfrops_base_tma_load_key.exit1058.split.loop.exit172, label %bb.bo

bb.bo:                                            ; preds = %.lr.ph.i.i1051.2
  %i.ky = getelementptr inbounds nuw i8, ptr %.0811.i.i1053, i64 3 ; 3 uses
  %exitcond.not.i.i1055.2 = icmp eq i64 %.012.i.i1052, 508
  br i1 %exitcond.not.i.i1055.2, label %pmix_bfrops_base_tma_load_key.exit1058, label %.lr.ph.i.i1051.3

.lr.ph.i.i1051.3:                                 ; preds = %bb.bo
  %i.kz = getelementptr inbounds nuw i8, ptr %.0910.i.i1054, i64 3
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !8   ; 2 uses
  store i8 %i.la, ptr %i.ky, align 1, !tbaa !8
  %i.lb = icmp eq i8 %i.la, 0
  br i1 %i.lb, label %pmix_bfrops_base_tma_load_key.exit1058, label %bb.bp

bb.bp:                                            ; preds = %.lr.ph.i.i1051.3
  %i.lc = add nuw nsw i64 %.012.i.i1052, 4
  %i.ld = getelementptr inbounds nuw i8, ptr %.0910.i.i1054, i64 4
  %i.le = getelementptr inbounds nuw i8, ptr %.0811.i.i1053, i64 4
  br label %.lr.ph.i.i1051

pmix_bfrops_base_tma_load_key.exit1058.split.loop.exit172: ; preds = %.lr.ph.i.i1051.2
  %i.lf = getelementptr inbounds nuw i8, ptr %.0811.i.i1053, i64 2
  br label %pmix_bfrops_base_tma_load_key.exit1058

pmix_bfrops_base_tma_load_key.exit1058.split.loop.exit174: ; preds = %.lr.ph.i.i1051.1
  %i.lg = getelementptr inbounds nuw i8, ptr %.0811.i.i1053, i64 1
  br label %pmix_bfrops_base_tma_load_key.exit1058

pmix_bfrops_base_tma_load_key.exit1058:           ; preds = %.lr.ph.i.i1051, %bb.bo, %.lr.ph.i.i1051.3, %pmix_bfrops_base_tma_load_key.exit1058.split.loop.exit174, %pmix_bfrops_base_tma_load_key.exit1058.split.loop.exit172
  %.08.lcssa.i.i1057 = phi ptr [ %i.ky, %bb.bo ], [ %i.lg, %pmix_bfrops_base_tma_load_key.exit1058.split.loop.exit174 ], [ %i.lf, %pmix_bfrops_base_tma_load_key.exit1058.split.loop.exit172 ], [ %i.ky, %.lr.ph.i.i1051.3 ], [ %.0811.i.i1053, %.lr.ph.i.i1051 ]
  store i8 0, ptr %.08.lcssa.i.i1057, align 1, !tbaa !8
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ji, i64 776
  %i.li = getelementptr inbounds nuw i8, ptr %i.jj, i64 776
  %i.lj = tail call fastcc i32 @pmix_bfrops_base_tma_value_xfer(ptr noundef nonnull %i.lh, ptr noundef nonnull %i.li) ; 0 uses
  %i.lk = add nuw i64 %.0793125, 1                ; 2 uses
  %i.ll = load i64, ptr %i.d, align 8, !tbaa !166
  %i.lm = icmp ult i64 %i.lk, %i.ll
  br i1 %i.lm, label %.lr.ph126, label %.sink.split, !llvm.loop !204

bb.bq:                                            ; preds = %bb.d
  %i.ln = mul i64 %i.e, 168
  %i.lo = tail call noalias noundef ptr @malloc(i64 noundef %i.ln) #41 ; 3 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.lo, ptr %i.lp, align 8, !tbaa !163
  %i.lq = icmp eq ptr %i.lo, null
  br i1 %i.lq, label %.thread10, label %.lr.ph124, !prof !79

.lr.ph124:                                        ; preds = %bb.bq, %pmix_bfrops_base_tma_copy_payload.exit
  %.0792123 = phi i64 [ %i.oq, %pmix_bfrops_base_tma_copy_payload.exit ], [ 0, %bb.bq ] ; 3 uses
  %i.lr = load i32, ptr @pmix_class_init_epoch, align 4, !tbaa !205
  %i.ls = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_buffer_t_class, i64 32), align 8, !tbaa !206
  %.not900 = icmp eq i32 %i.lr, %i.ls
  br i1 %.not900, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %.lr.ph124
  tail call void @pmix_class_initialize(ptr noundef nonnull @pmix_buffer_t_class) #40
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %.lr.ph124
  %i.lt = getelementptr inbounds nuw [168 x i8], ptr %i.lo, i64 %.0792123 ; 15 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 40
  store ptr @pmix_buffer_t_class, ptr %i.lu, align 8, !tbaa !168
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lt, i64 48
  store i32 1, ptr %i.lv, align 8, !tbaa !207
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lt, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.lw, i8 0, i64 64, i1 false)
  %i.lx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_buffer_t_class, i64 40), align 8, !tbaa !208 ; 2 uses
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !174 ; 2 uses
  %.not6.i = icmp eq ptr %i.ly, null
  br i1 %.not6.i, label %pmix_obj_run_constructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bs, %.lr.ph.i
  %i.lz = phi ptr [ %i.mb, %.lr.ph.i ], [ %i.ly, %bb.bs ]
  %.07.i = phi ptr [ %i.ma, %.lr.ph.i ], [ %i.lx, %bb.bs ]
  tail call void %i.lz(ptr noundef nonnull %i.lt) #40, !inline_history !209
  %i.ma = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !174 ; 2 uses
  %.not.i941 = icmp eq ptr %i.mb, null
  br i1 %.not.i941, label %pmix_obj_run_constructors.exit, label %.lr.ph.i, !llvm.loop !210

pmix_obj_run_constructors.exit:                   ; preds = %.lr.ph.i, %bb.bs
  %i.mc = getelementptr inbounds nuw [168 x i8], ptr %i.i, i64 %.0792123 ; 5 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.lt, i64 128 ; 2 uses
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !211 ; 3 uses
  %i.mf = icmp eq ptr %i.me, null                 ; 2 uses
  br i1 %i.mf, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %pmix_obj_run_constructors.exit
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mc, i64 120
  %i.mh = load i8, ptr %i.mg, align 8, !tbaa !213
  %i.mi = getelementptr inbounds nuw i8, ptr %i.lt, i64 120
  store i8 %i.mh, ptr %i.mi, align 8, !tbaa !213
  br label %bb.bw

bb.bu:                                            ; preds = %pmix_obj_run_constructors.exit
  %i.mj = getelementptr inbounds nuw i8, ptr %i.lt, i64 120
  %i.mk = load i8, ptr %i.mj, align 8, !tbaa !213
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mc, i64 120
  %i.mm = load i8, ptr %i.ml, align 8, !tbaa !213
  %.not.i942 = icmp eq i8 %i.mk, %i.mm
  br i1 %.not.i942, label %bb.bw, label %bb.bv, !prof !214

bb.bv:                                            ; preds = %bb.bu
  %i.mn = tail call ptr @PMIx_Error_string(i32 noundef -27) #40
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef nonnull @.str.9, ptr noundef %i.mn, ptr noundef nonnull @.str.10, i32 noundef 124) #40
  br label %pmix_bfrops_base_tma_copy_payload.exit

bb.bw:                                            ; preds = %bb.bu, %bb.bt
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mc, i64 160
  %i.mp = load i64, ptr %i.mo, align 8, !tbaa !215
  %i.mq = icmp eq i64 %i.mp, 0
  br i1 %i.mq, label %pmix_bfrops_base_tma_copy_payload.exit, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mc, i64 136
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !216 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mc, i64 144 ; 2 uses
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !217 ; 2 uses
  %i.mv = icmp eq ptr %i.ms, %i.mu
  br i1 %i.mv, label %pmix_bfrops_base_tma_copy_payload.exit, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.mw = ptrtoint ptr %i.ms to i64
  %i.mx = ptrtoint ptr %i.mu to i64
  %i.my = sub i64 %i.mw, %i.mx                    ; 5 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.lt, i64 152 ; 3 uses
  %i.na = load i64, ptr %i.mz, align 8, !tbaa !218 ; 3 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.lt, i64 160 ; 4 uses
  %i.nc = load i64, ptr %i.nb, align 8, !tbaa !215 ; 2 uses
  %i.nd = sub i64 %i.na, %i.nc
  %.not.i.i = icmp ult i64 %i.nd, %i.my
  br i1 %.not.i.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ne = getelementptr inbounds nuw i8, ptr %i.lt, i64 136
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !216
  br label %pmix_bfrops_base_tma_buffer_extend.exit.i

bb.ca:                                            ; preds = %bb.by
  %i.ng = add i64 %i.nc, %i.my                    ; 3 uses
  %i.nh = load i64, ptr getelementptr inbounds nuw (i8, ptr @pmix_bfrops_globals, i64 288), align 8, !tbaa !219 ; 3 uses
  %.not54.i.i = icmp ult i64 %i.ng, %i.nh
  br i1 %.not54.i.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ni = add i64 %i.nh, %i.ng
  %.fr55.i.i = freeze i64 %i.ni
  %i.nj = add i64 %.fr55.i.i, -1                  ; 2 uses
  %i.nk = urem i64 %i.nj, %i.nh
  %i.nl = sub nuw i64 %i.nj, %i.nk
  br label %.loopexit.i.i

bb.cc:                                            ; preds = %bb.ca
  %i.nm = icmp eq i64 %i.na, 0
  %i.nn = load i64, ptr getelementptr inbounds nuw (i8, ptr @pmix_bfrops_globals, i64 280), align 8
  %spec.select.i.i = select i1 %i.nm, i64 %i.nn, i64 %i.na
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cd, %bb.cc
  %.1.i.i = phi i64 [ %spec.select.i.i, %bb.cc ], [ %i.np, %bb.cd ] ; 3 uses
  %i.no = icmp ult i64 %.1.i.i, %i.ng
  %i.np = shl i64 %.1.i.i, 1
  br i1 %i.no, label %bb.cd, label %.loopexit.i.i, !llvm.loop !223

.loopexit.i.i:                                    ; preds = %bb.cd, %bb.cb
  %.2.i.i = phi i64 [ %i.nl, %bb.cb ], [ %.1.i.i, %bb.cd ] ; 4 uses
  br i1 %i.mf, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %.loopexit.i.i
  %i.nq = getelementptr inbounds nuw i8, ptr %i.lt, i64 136
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !216
  %i.ns = ptrtoint ptr %i.nr to i64
  %i.nt = ptrtoint ptr %i.me to i64               ; 2 uses
  %i.nu = sub i64 %i.ns, %i.nt                    ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.lt, i64 144
end_hunk_4
begin_hunk_5_@pmix_bfrops_base_tma_copy_darray:bb.a
  br i1 %i.rs, label %.thread10, label %bb.dc, !prof !79

bb.dc:                                            ; preds = %bb.db
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.rq, ptr nonnull align 1 %i.i, i64 %i.e, i1 false)
  br label %.sink.split

bb.dd:                                            ; preds = %bb.d
  %i.rt = shl i64 %i.e, 2                         ; 2 uses
  %i.ru = tail call noalias noundef ptr @malloc(i64 noundef %i.rt) #41 ; 3 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.ru, ptr %i.rv, align 8, !tbaa !163
  %i.rw = icmp eq ptr %i.ru, null
  br i1 %i.rw, label %.thread10, label %bb.de, !prof !79

bb.de:                                            ; preds = %bb.dd
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ru, ptr nonnull align 1 %i.i, i64 %i.rt, i1 false)
  br label %.sink.split

pmix_bfrops_base_tma_proc_info_create.exit:       ; preds = %bb.d
  %i.rx = mul i64 %i.e, 296
  %calloc.i945 = tail call ptr @calloc(i64 1, i64 %i.rx) ; 3 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %calloc.i945, ptr %i.ry, align 8, !tbaa !163
  %i.rz = icmp eq ptr %calloc.i945, null
  br i1 %i.rz, label %.thread10, label %.lr.ph113, !prof !79

.lr.ph113:                                        ; preds = %pmix_bfrops_base_tma_proc_info_create.exit, %bb.di
  %.0788112 = phi i64 [ %i.sq, %bb.di ], [ 0, %pmix_bfrops_base_tma_proc_info_create.exit ] ; 3 uses
  %i.sa = getelementptr inbounds nuw [296 x i8], ptr %calloc.i945, i64 %.0788112 ; 5 uses
  %i.sb = getelementptr inbounds nuw [296 x i8], ptr %i.i, i64 %.0788112 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(260) %i.sa, ptr noundef nonnull align 8 dereferenceable(260) %i.sb, i64 260, i1 false)
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 264
  %i.sd = load ptr, ptr %i.sc, align 8, !tbaa !31 ; 2 uses
  %.not893 = icmp eq ptr %i.sd, null
  br i1 %.not893, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %.lr.ph113
  %i.se = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.sd) #40
  br label %bb.dg

bb.dg:                                            ; preds = %.lr.ph113, %bb.df
  %.sink = phi ptr [ %i.se, %bb.df ], [ null, %.lr.ph113 ]
  %i.sf = getelementptr inbounds nuw i8, ptr %i.sa, i64 264
  store ptr %.sink, ptr %i.sf, align 8, !tbaa !31
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sb, i64 272
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !33 ; 2 uses
  %.not894 = icmp eq ptr %i.sh, null
  br i1 %.not894, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.si = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.sh) #40
  br label %bb.di

bb.di:                                            ; preds = %bb.dg, %bb.dh
  %.sink211 = phi ptr [ %i.si, %bb.dh ], [ null, %bb.dg ]
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sa, i64 272
  store ptr %.sink211, ptr %i.sj, align 8, !tbaa !33
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sb, i64 280
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sa, i64 280
  %i.sm = load <2 x i32>, ptr %i.sk, align 8, !tbaa !205
  store <2 x i32> %i.sm, ptr %i.sl, align 8, !tbaa !205
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sb, i64 288
  %i.so = load i8, ptr %i.sn, align 8, !tbaa !232
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sa, i64 288
  store i8 %i.so, ptr %i.sp, align 8, !tbaa !232
  %i.sq = add nuw i64 %.0788112, 1                ; 2 uses
  %exitcond207.not = icmp eq i64 %i.sq, %i.e
  br i1 %exitcond207.not, label %.sink.split, label %.lr.ph113, !llvm.loop !233

pmix_bfrops_base_tma_query_create.exit:           ; preds = %bb.d
  %i.sr = mul i64 %i.e, 24
  %calloc.i947 = tail call ptr @calloc(i64 1, i64 %i.sr) ; 6 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %calloc.i947, ptr %i.ss, align 8, !tbaa !163
  %i.st = icmp eq ptr %calloc.i947, null
  br i1 %i.st, label %.thread10, label %.lr.ph111, !prof !79

.lr.ph111:                                        ; preds = %pmix_bfrops_base_tma_query_create.exit, %bb.dv
  %.0787109 = phi i64 [ %i.wj, %bb.dv ], [ 0, %pmix_bfrops_base_tma_query_create.exit ] ; 6 uses
  %i.su = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %.0787109 ; 3 uses
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !147 ; 3 uses
  %.not890 = icmp eq ptr %i.sv, null
  br i1 %.not890, label %bb.dm, label %bb.dj

bb.dj:                                            ; preds = %.lr.ph111
  %i.sw = tail call noalias noundef dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #41 ; 3 uses
  store ptr null, ptr %i.sw, align 8, !tbaa !14
  %i.sx = load ptr, ptr %i.sv, align 8, !tbaa !14 ; 2 uses
  %.not12.i949 = icmp eq ptr %i.sx, null
  br i1 %.not12.i949, label %pmix_bfrops_base_tma_argv_copy.exit970, label %.preheader.i.i.i950

.preheader.i.ithread-pre-split.i961:              ; preds = %bb.dl
  %.pr.i962 = load ptr, ptr %i.tg, align 8, !tbaa !14
  br label %.preheader.i.i.i950

.preheader.i.i.i950:                              ; preds = %bb.dj, %.preheader.i.ithread-pre-split.i961
  %i.sy = phi ptr [ %.pr.i962, %.preheader.i.ithread-pre-split.i961 ], [ null, %bb.dj ]
  %i.sz = phi ptr [ %i.ts, %.preheader.i.ithread-pre-split.i961 ], [ %i.sx, %bb.dj ]
  %.0814.i951 = phi ptr [ %i.tr, %.preheader.i.ithread-pre-split.i961 ], [ %i.sv, %bb.dj ]
  %.0313.i952 = phi ptr [ %i.tg, %.preheader.i.ithread-pre-split.i961 ], [ %i.sw, %bb.dj ] ; 2 uses
  %.not1.i.i.i953 = icmp eq ptr %i.sy, null
  br i1 %.not1.i.i.i953, label %pmix_bfrops_base_tma_argv_count.exit.i.i958, label %.lr.ph.i.i.i954

.lr.ph.i.i.i954:                                  ; preds = %.preheader.i.i.i950, %.lr.ph.i.i.i954
  %.03.i.i.i955 = phi i32 [ %i.ta, %.lr.ph.i.i.i954 ], [ 0, %.preheader.i.i.i950 ]
  %.062.i.i.i956 = phi ptr [ %i.tb, %.lr.ph.i.i.i954 ], [ %.0313.i952, %.preheader.i.i.i950 ]
  %i.ta = add nuw nsw i32 %.03.i.i.i955, 1        ; 2 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %.062.i.i.i956, i64 8 ; 2 uses
  %i.tc = load ptr, ptr %i.tb, align 8, !tbaa !14
  %.not.i.i.i957 = icmp eq ptr %i.tc, null
  br i1 %.not.i.i.i957, label %pmix_bfrops_base_tma_argv_count.exit.i.i958, label %.lr.ph.i.i.i954, !llvm.loop !17

pmix_bfrops_base_tma_argv_count.exit.i.i958:      ; preds = %.lr.ph.i.i.i954, %.preheader.i.i.i950
  %.07.i.i.i959 = phi i32 [ 0, %.preheader.i.i.i950 ], [ %i.ta, %.lr.ph.i.i.i954 ] ; 2 uses
  %i.td = add nsw i32 %.07.i.i.i959, 2
  %i.te = sext i32 %i.td to i64
  %i.tf = shl nsw i64 %i.te, 3
  %i.tg = tail call noalias noundef ptr @realloc(ptr noundef nonnull %.0313.i952, i64 noundef %i.tf) #39 ; 8 uses
  %i.th = icmp eq ptr %i.tg, null
  br i1 %i.th, label %pmix_bfrops_base_tma_argv_copy.exit970, label %bb.dk

bb.dk:                                            ; preds = %pmix_bfrops_base_tma_argv_count.exit.i.i958
  %i.ti = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.sz) #40 ; 2 uses
  %i.tj = sext i32 %.07.i.i.i959 to i64
  %i.tk = getelementptr inbounds [8 x i8], ptr %i.tg, i64 %i.tj ; 2 uses
  store ptr %i.ti, ptr %i.tk, align 8, !tbaa !14
  %i.tl = icmp eq ptr %i.ti, null
  br i1 %i.tl, label %.preheader.i.i964, label %bb.dl

.preheader.i.i964:                                ; preds = %bb.dk
  %i.tm = load ptr, ptr %i.tg, align 8, !tbaa !14 ; 2 uses
  %.not101.i.i965 = icmp eq ptr %i.tm, null
  br i1 %.not101.i.i965, label %._crit_edge.i.i969, label %.lr.ph.i.i966

._crit_edge.i.i969:                               ; preds = %.lr.ph.i.i966, %.preheader.i.i964
  tail call void @free(ptr noundef nonnull %i.tg) #40
  br label %pmix_bfrops_base_tma_argv_copy.exit970

.lr.ph.i.i966:                                    ; preds = %.preheader.i.i964, %.lr.ph.i.i966
  %i.tn = phi ptr [ %i.tp, %.lr.ph.i.i966 ], [ %i.tm, %.preheader.i.i964 ]
  %.02.i.i967 = phi ptr [ %i.to, %.lr.ph.i.i966 ], [ %i.tg, %.preheader.i.i964 ]
  tail call void @free(ptr noundef nonnull %i.tn) #40
  %i.to = getelementptr inbounds nuw i8, ptr %.02.i.i967, i64 8 ; 2 uses
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !14 ; 2 uses
  %.not10.i.i968 = icmp eq ptr %i.tp, null
  br i1 %.not10.i.i968, label %._crit_edge.i.i969, label %.lr.ph.i.i966, !llvm.loop !22

bb.dl:                                            ; preds = %bb.dk
  %i.tq = getelementptr i8, ptr %i.tk, i64 8
  store ptr null, ptr %i.tq, align 8, !tbaa !14
  %i.tr = getelementptr inbounds nuw i8, ptr %.0814.i951, i64 8 ; 2 uses
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !14 ; 2 uses
  %.not.i960 = icmp eq ptr %i.ts, null
  br i1 %.not.i960, label %pmix_bfrops_base_tma_argv_copy.exit970, label %.preheader.i.ithread-pre-split.i961, !llvm.loop !26

pmix_bfrops_base_tma_argv_copy.exit970:           ; preds = %pmix_bfrops_base_tma_argv_count.exit.i.i958, %bb.dl, %bb.dj, %._crit_edge.i.i969
  %.1.i963 = phi ptr [ %i.sw, %bb.dj ], [ null, %._crit_edge.i.i969 ], [ %i.tg, %bb.dl ], [ null, %pmix_bfrops_base_tma_argv_count.exit.i.i958 ]
  %i.tt = getelementptr inbounds nuw [24 x i8], ptr %calloc.i947, i64 %.0787109
  store ptr %.1.i963, ptr %i.tt, align 8, !tbaa !147
  br label %bb.dm

bb.dm:                                            ; preds = %pmix_bfrops_base_tma_argv_copy.exit970, %.lr.ph111
  %i.tu = getelementptr inbounds nuw i8, ptr %i.su, i64 8 ; 2 uses
  %i.tv = load ptr, ptr %i.tu, align 8, !tbaa !150
  %.not891 = icmp eq ptr %i.tv, null
  br i1 %.not891, label %bb.du, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.tw = getelementptr inbounds nuw i8, ptr %i.su, i64 16 ; 3 uses
  %i.tx = load i64, ptr %i.tw, align 8, !tbaa !151 ; 5 uses
  %.not892 = icmp eq i64 %i.tx, 0
  br i1 %.not892, label %bb.du, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.ty = mul i64 %i.tx, 552
  %i.tz = tail call noalias noundef ptr @malloc(i64 noundef %i.ty) #41 ; 7 uses
  %i.ua = icmp eq ptr %i.tz, null
  br i1 %i.ua, label %pmix_bfrops_base_tma_info_create.exit975.thread, label %.preheader.i971.preheader, !prof !79

.preheader.i971.preheader:                        ; preds = %bb.do
  %xtraiter = and i64 %i.tx, 3                    ; 3 uses
  %i.ub = icmp ult i64 %i.tx, 4
  br i1 %i.ub, label %.preheader.i971.epil.preheader, label %.preheader.i971.preheader.new

.preheader.i971.preheader.new:                    ; preds = %.preheader.i971.preheader
  %unroll_iter = and i64 %i.tx, -4
  br label %.preheader.i971

pmix_bfrops_base_tma_info_create.exit975.thread:  ; preds = %bb.do
  %i.uc = getelementptr inbounds nuw [24 x i8], ptr %calloc.i947, i64 %.0787109
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 8
  store ptr null, ptr %i.ud, align 8, !tbaa !150
  br label %.thread10

.preheader.i971:                                  ; preds = %.preheader.i971, %.preheader.i971.preheader.new
  %.01.i972 = phi i64 [ 0, %.preheader.i971.preheader.new ], [ %i.up, %.preheader.i971 ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader.i971.preheader.new ], [ %niter.next.3, %.preheader.i971 ]
  %i.ue = getelementptr inbounds nuw [552 x i8], ptr %i.tz, i64 %.01.i972 ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 520
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.uf, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(516) %i.ue, i8 0, i64 516, i1 false)
  %i.ug = getelementptr inbounds nuw [552 x i8], ptr %i.tz, i64 %.01.i972 ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 552
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ug, i64 1072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ui, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(516) %i.uh, i8 0, i64 516, i1 false)
  %i.uj = getelementptr inbounds nuw [552 x i8], ptr %i.tz, i64 %.01.i972 ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 1104
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uj, i64 1624
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ul, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(516) %i.uk, i8 0, i64 516, i1 false)
  %i.um = getelementptr inbounds nuw [552 x i8], ptr %i.tz, i64 %.01.i972 ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 1656
  %i.uo = getelementptr inbounds nuw i8, ptr %i.um, i64 2176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.uo, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(516) %i.un, i8 0, i64 516, i1 false)
  %i.up = add nuw i64 %.01.i972, 4                ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %pmix_bfrops_base_tma_info_create.exit975.unr-lcssa, label %.preheader.i971, !llvm.loop !83

pmix_bfrops_base_tma_info_create.exit975.unr-lcssa: ; preds = %.preheader.i971
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %pmix_bfrops_base_tma_info_create.exit975, label %.preheader.i971.epil.preheader

.preheader.i971.epil.preheader:                   ; preds = %pmix_bfrops_base_tma_info_create.exit975.unr-lcssa, %.preheader.i971.preheader
  %.01.i972.epil.init = phi i64 [ 0, %.preheader.i971.preheader ], [ %i.up, %pmix_bfrops_base_tma_info_create.exit975.unr-lcssa ]
  %lcmp.mod93 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod93)
  br label %.preheader.i971.epil

.preheader.i971.epil:                             ; preds = %.preheader.i971.epil, %.preheader.i971.epil.preheader
  %.01.i972.epil = phi i64 [ %i.us, %.preheader.i971.epil ], [ %.01.i972.epil.init, %.preheader.i971.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i971.epil ], [ 0, %.preheader.i971.epil.preheader ]
  %i.uq = getelementptr inbounds nuw [552 x i8], ptr %i.tz, i64 %.01.i972.epil ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uq, i64 520
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ur, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(516) %i.uq, i8 0, i64 516, i1 false)
  %i.us = add nuw i64 %.01.i972.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %pmix_bfrops_base_tma_info_create.exit975, label %.preheader.i971.epil, !llvm.loop !234

pmix_bfrops_base_tma_info_create.exit975:         ; preds = %.preheader.i971.epil, %pmix_bfrops_base_tma_info_create.exit975.unr-lcssa
  %i.ut = getelementptr inbounds nuw [24 x i8], ptr %calloc.i947, i64 %.0787109 ; 2 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 8 ; 2 uses
  store ptr %i.tz, ptr %i.uu, align 8, !tbaa !150
  %i.uv = load i64, ptr %i.tw, align 8, !tbaa !151
  %.not148 = icmp eq i64 %i.uv, 0
  br i1 %.not148, label %._crit_edge, label %.lr.ph108

._crit_edge:                                      ; preds = %pmix_bfrops_base_tma_info_xfer.exit978, %pmix_bfrops_base_tma_info_create.exit975
  %.lcssa74 = phi i64 [ 0, %pmix_bfrops_base_tma_info_create.exit975 ], [ %i.wf, %pmix_bfrops_base_tma_info_xfer.exit978 ]
  %i.uw = getelementptr inbounds nuw i8, ptr %i.ut, i64 16
  store i64 %.lcssa74, ptr %i.uw, align 8, !tbaa !151
  br label %bb.dv

.lr.ph108:                                        ; preds = %pmix_bfrops_base_tma_info_create.exit975, %pmix_bfrops_base_tma_info_xfer.exit978
  %.0786107 = phi i64 [ %i.we, %pmix_bfrops_base_tma_info_xfer.exit978 ], [ 0, %pmix_bfrops_base_tma_info_create.exit975 ] ; 3 uses
  %i.ux = load ptr, ptr %i.uu, align 8, !tbaa !150 ; 2 uses
  %i.uy = getelementptr inbounds nuw [552 x i8], ptr %i.ux, i64 %.0786107 ; 4 uses
  %i.uz = load ptr, ptr %i.tu, align 8, !tbaa !150 ; 2 uses
  %i.va = getelementptr inbounds nuw [552 x i8], ptr %i.uz, i64 %.0786107 ; 3 uses
  %i.vb = icmp eq ptr %i.ux, null
  %i.vc = icmp eq ptr %i.uz, null
  %i.vd = or i1 %i.vb, %i.vc
  br i1 %i.vd, label %pmix_bfrops_base_tma_info_xfer.exit978, label %bb.dp, !prof !79

bb.dp:                                            ; preds = %.lr.ph108
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(512) %i.uy, i8 0, i64 512, i1 false)
  br label %.lr.ph.i.i1069

.lr.ph.i.i1069:                                   ; preds = %bb.dr, %bb.dp
  %.012.i.i1070 = phi i64 [ 0, %bb.dp ], [ %i.vs, %bb.dr ] ; 2 uses
  %.0811.i.i1071 = phi ptr [ %i.uy, %bb.dp ], [ %i.vu, %bb.dr ] ; 8 uses
  %.0910.i.i1072 = phi ptr [ %i.va, %bb.dp ], [ %i.vt, %bb.dr ] ; 5 uses
  %i.ve = load i8, ptr %.0910.i.i1072, align 1, !tbaa !8 ; 2 uses
  store i8 %i.ve, ptr %.0811.i.i1071, align 1, !tbaa !8
  %i.vf = icmp eq i8 %i.ve, 0
  br i1 %i.vf, label %pmix_bfrops_base_tma_load_key.exit1076, label %.lr.ph.i.i1069.1

.lr.ph.i.i1069.1:                                 ; preds = %.lr.ph.i.i1069
  %i.vg = getelementptr inbounds nuw i8, ptr %.0910.i.i1072, i64 1
  %i.vh = getelementptr inbounds nuw i8, ptr %.0811.i.i1071, i64 1
  %i.vi = load i8, ptr %i.vg, align 1, !tbaa !8   ; 2 uses
  store i8 %i.vi, ptr %i.vh, align 1, !tbaa !8
  %i.vj = icmp eq i8 %i.vi, 0
  br i1 %i.vj, label %pmix_bfrops_base_tma_load_key.exit1076.split.loop.exit152, label %.lr.ph.i.i1069.2

.lr.ph.i.i1069.2:                                 ; preds = %.lr.ph.i.i1069.1
  %i.vk = getelementptr inbounds nuw i8, ptr %.0910.i.i1072, i64 2
  %i.vl = getelementptr inbounds nuw i8, ptr %.0811.i.i1071, i64 2
  %i.vm = load i8, ptr %i.vk, align 1, !tbaa !8   ; 2 uses
  store i8 %i.vm, ptr %i.vl, align 1, !tbaa !8
  %i.vn = icmp eq i8 %i.vm, 0
  br i1 %i.vn, label %pmix_bfrops_base_tma_load_key.exit1076.split.loop.exit150, label %bb.dq

bb.dq:                                            ; preds = %.lr.ph.i.i1069.2
  %i.vo = getelementptr inbounds nuw i8, ptr %.0811.i.i1071, i64 3 ; 3 uses
  %exitcond.not.i.i1073.2 = icmp eq i64 %.012.i.i1070, 508
  br i1 %exitcond.not.i.i1073.2, label %pmix_bfrops_base_tma_load_key.exit1076, label %.lr.ph.i.i1069.3

.lr.ph.i.i1069.3:                                 ; preds = %bb.dq
  %i.vp = getelementptr inbounds nuw i8, ptr %.0910.i.i1072, i64 3
  %i.vq = load i8, ptr %i.vp, align 1, !tbaa !8   ; 2 uses
  store i8 %i.vq, ptr %i.vo, align 1, !tbaa !8
  %i.vr = icmp eq i8 %i.vq, 0
  br i1 %i.vr, label %pmix_bfrops_base_tma_load_key.exit1076, label %bb.dr

bb.dr:                                            ; preds = %.lr.ph.i.i1069.3
  %i.vs = add nuw nsw i64 %.012.i.i1070, 4
  %i.vt = getelementptr inbounds nuw i8, ptr %.0910.i.i1072, i64 4
  %i.vu = getelementptr inbounds nuw i8, ptr %.0811.i.i1071, i64 4
  br label %.lr.ph.i.i1069

pmix_bfrops_base_tma_load_key.exit1076.split.loop.exit150: ; preds = %.lr.ph.i.i1069.2
  %i.vv = getelementptr inbounds nuw i8, ptr %.0811.i.i1071, i64 2
  br label %pmix_bfrops_base_tma_load_key.exit1076

pmix_bfrops_base_tma_load_key.exit1076.split.loop.exit152: ; preds = %.lr.ph.i.i1069.1
  %i.vw = getelementptr inbounds nuw i8, ptr %.0811.i.i1071, i64 1
  br label %pmix_bfrops_base_tma_load_key.exit1076

pmix_bfrops_base_tma_load_key.exit1076:           ; preds = %.lr.ph.i.i1069, %bb.dq, %.lr.ph.i.i1069.3, %pmix_bfrops_base_tma_load_key.exit1076.split.loop.exit152, %pmix_bfrops_base_tma_load_key.exit1076.split.loop.exit150
  %.08.lcssa.i.i1075 = phi ptr [ %i.vo, %bb.dq ], [ %i.vw, %pmix_bfrops_base_tma_load_key.exit1076.split.loop.exit152 ], [ %i.vv, %pmix_bfrops_base_tma_load_key.exit1076.split.loop.exit150 ], [ %i.vo, %.lr.ph.i.i1069.3 ], [ %.0811.i.i1071, %.lr.ph.i.i1069 ]
  store i8 0, ptr %.08.lcssa.i.i1075, align 1, !tbaa !8
  %i.vx = getelementptr inbounds nuw i8, ptr %i.va, i64 512
  %i.vy = load i32, ptr %i.vx, align 8, !tbaa !80 ; 2 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %i.uy, i64 512
  store i32 %i.vy, ptr %i.vz, align 8, !tbaa !80
  %i.wa = and i32 %i.vy, 16
  %.not18 = icmp eq i32 %i.wa, 0
  %i.wb = getelementptr inbounds nuw i8, ptr %i.uy, i64 520 ; 2 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %i.va, i64 520 ; 2 uses
  br i1 %.not18, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %pmix_bfrops_base_tma_load_key.exit1076
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.wb, ptr noundef nonnull align 8 dereferenceable(32) %i.wc, i64 32, i1 false)
  br label %pmix_bfrops_base_tma_info_xfer.exit978

bb.dt:                                            ; preds = %pmix_bfrops_base_tma_load_key.exit1076
  %i.wd = tail call fastcc i32 @pmix_bfrops_base_tma_value_xfer(ptr noundef nonnull %i.wb, ptr noundef nonnull %i.wc) ; 0 uses
  br label %pmix_bfrops_base_tma_info_xfer.exit978

pmix_bfrops_base_tma_info_xfer.exit978:           ; preds = %.lr.ph108, %bb.ds, %bb.dt
  %i.we = add nuw i64 %.0786107, 1                ; 2 uses
  %i.wf = load i64, ptr %i.tw, align 8, !tbaa !151 ; 2 uses
  %i.wg = icmp ult i64 %i.we, %i.wf
  br i1 %i.wg, label %.lr.ph108, label %._crit_edge, !llvm.loop !235

bb.du:                                            ; preds = %bb.dn, %bb.dm
  %i.wh = getelementptr inbounds nuw [24 x i8], ptr %calloc.i947, i64 %.0787109
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.wi, i8 0, i64 16, i1 false)
  br label %bb.dv

bb.dv:                                            ; preds = %._crit_edge, %bb.du
  %i.wj = add nuw i64 %.0787109, 1                ; 2 uses
  %i.wk = load i64, ptr %i.d, align 8, !tbaa !166
  %i.wl = icmp ult i64 %i.wj, %i.wk
  br i1 %i.wl, label %.lr.ph111, label %.sink.split, !llvm.loop !236

bb.dw:                                            ; preds = %bb.d
  %i.wm = tail call fastcc ptr @pmix_bfrops_base_tma_envar_create(i64 noundef %i.e) ; 5 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.wm, ptr %i.wn, align 8, !tbaa !163
  %i.wo = icmp eq ptr %i.wm, null
  br i1 %i.wo, label %.thread10, label %bb.dx, !prof !79

bb.dx:                                            ; preds = %bb.dw
  %i.wp = load ptr, ptr %i.h, align 8, !tbaa !163
  %i.wq = load i64, ptr %i.d, align 8, !tbaa !166 ; 2 uses
  %.not146 = icmp eq i64 %i.wq, 0
  br i1 %.not146, label %.sink.split, label %.lr.ph106

.lr.ph106:                                        ; preds = %bb.dx, %bb.eb
  %.0785105 = phi i64 [ %i.xe, %bb.eb ], [ 0, %bb.dx ] ; 5 uses
  %i.wr = getelementptr inbounds nuw [24 x i8], ptr %i.wp, i64 %.0785105 ; 3 uses
  %i.ws = load ptr, ptr %i.wr, align 8, !tbaa !105 ; 2 uses
  %.not888 = icmp eq ptr %i.ws, null
  br i1 %.not888, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %.lr.ph106
  %i.wt = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.ws) #40
  %i.wu = getelementptr inbounds nuw [24 x i8], ptr %i.wm, i64 %.0785105
  store ptr %i.wt, ptr %i.wu, align 8, !tbaa !105
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %.lr.ph106
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wr, i64 8
  %i.ww = load ptr, ptr %i.wv, align 8, !tbaa !107 ; 2 uses
  %.not889 = icmp eq ptr %i.ww, null
  br i1 %.not889, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.wx = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.ww) #40
  %i.wy = getelementptr inbounds nuw [24 x i8], ptr %i.wm, i64 %.0785105
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 8
  store ptr %i.wx, ptr %i.wz, align 8, !tbaa !107
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wr, i64 16
  %i.xb = load i8, ptr %i.xa, align 8, !tbaa !112
  %i.xc = getelementptr inbounds nuw [24 x i8], ptr %i.wm, i64 %.0785105
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xc, i64 16
  store i8 %i.xb, ptr %i.xd, align 8, !tbaa !112
  %i.xe = add nuw i64 %.0785105, 1                ; 2 uses
  %exitcond206.not = icmp eq i64 %i.xe, %i.wq
  br i1 %exitcond206.not, label %.sink.split, label %.lr.ph106, !llvm.loop !237

bb.ec:                                            ; preds = %bb.d
  %i.xf = mul i64 %i.e, 24
  %i.xg = tail call noalias noundef ptr @malloc(i64 noundef %i.xf) #41 ; 4 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.xg, ptr %i.xh, align 8, !tbaa !163
  %i.xi = icmp eq ptr %i.xg, null
  br i1 %i.xi, label %.thread10, label %.lr.ph104, !prof !79

.lr.ph104:                                        ; preds = %bb.ec, %bb.ef
  %.0784103 = phi i64 [ %i.xv, %bb.ef ], [ 0, %bb.ec ] ; 3 uses
  %i.xj = getelementptr inbounds nuw [24 x i8], ptr %i.xg, i64 %.0784103 ; 3 uses
  %i.xk = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %.0784103 ; 3 uses
  %i.xl = load i8, ptr %i.xk, align 8, !tbaa !34
  store i8 %i.xl, ptr %i.xj, align 8, !tbaa !34
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xk, i64 16
  %i.xn = load i64, ptr %i.xm, align 8, !tbaa !91 ; 3 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xj, i64 16
  store i64 %i.xn, ptr %i.xo, align 8, !tbaa !91
  %.not.i979 = icmp eq i64 %i.xn, 0
  br i1 %.not.i979, label %bb.ef, label %bb.ed

bb.ed:                                            ; preds = %.lr.ph104
  %i.xp = shl i64 %i.xn, 2                        ; 2 uses
  %i.xq = tail call noalias noundef ptr @malloc(i64 noundef %i.xp) #41 ; 3 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xj, i64 8
  store ptr %i.xq, ptr %i.xr, align 8, !tbaa !38
  %i.xs = icmp eq ptr %i.xq, null
end_hunk_5
begin_hunk_6_@pmix_bfrops_base_tma_copy_geometry:bb.a
  %.not45 = icmp eq ptr %i.h, null
  br i1 %.not45, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.h) #40
  %i.j = getelementptr inbounds nuw i8, ptr %calloc.i, i64 16
  store ptr %i.i, ptr %i.j, align 8, !tbaa !42
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !43   ; 2 uses
  %.not46 = icmp eq ptr %i.l, null
  br i1 %.not46, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load i64, ptr %i.m, align 8, !tbaa !44   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %calloc.i, i64 32
  store i64 %i.n, ptr %i.o, align 8, !tbaa !44
  %i.p = tail call noalias noundef ptr @calloc(i64 noundef %i.n, i64 noundef 24) #43 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %calloc.i, i64 24
  store ptr %i.p, ptr %i.q, align 8, !tbaa !43
  %.not4812.not = icmp eq i64 %i.n, 0
  br i1 %.not4812.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %bb.j
  %.013 = phi i64 [ %i.ad, %bb.j ], [ 0, %bb.g ]  ; 3 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %.013 ; 3 uses
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %.013 ; 3 uses
  %i.t = load i8, ptr %i.s, align 8, !tbaa !34
  store i8 %i.t, ptr %i.r, align 8, !tbaa !34
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !91   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %i.v, ptr %i.w, align 8, !tbaa !91
  %.not.i = icmp eq i64 %i.v, 0
  br i1 %.not.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.x = shl i64 %i.v, 2                          ; 2 uses
  %i.y = tail call noalias noundef ptr @malloc(i64 noundef %i.x) #41 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.y, ptr %i.z, align 8, !tbaa !38
  %i.aa = icmp eq ptr %i.y, null
  br i1 %i.aa, label %.thread9, label %bb.i, !prof !79

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !38
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.y, ptr align 4 %i.ac, i64 %i.x, i1 false)
  br label %bb.j

.thread9:                                         ; preds = %bb.h
  tail call void @PMIx_Geometry_free(ptr noundef nonnull %calloc.i, i64 noundef 1)
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %.lr.ph
  %i.ad = add nuw i64 %.013, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ad, %i.n
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !263

.loopexit:                                        ; preds = %bb.j, %bb.g, %bb.f
  store ptr %calloc.i, ptr %0, align 8, !tbaa !264
  br label %bb.k

bb.k:                                             ; preds = %.thread9, %bb.a, %.loopexit
  %.340 = phi i32 [ -32, %.thread9 ], [ 0, %.loopexit ], [ -32, %bb.a ]
  ret i32 %.340
}

; Function Attrs: inlinehint mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 -32, 1) i32 @pmix_bfrops_base_tma_copy_devdist(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #33 {
bb.a:
  %calloc = tail call dereferenceable_or_null(32) ptr @calloc(i64 1, i64 32) ; 6 uses
  %.not.i = icmp eq ptr %calloc, null
  br i1 %.not.i, label %pmix_bfrops_base_tma_device_distance_create.exit.thread, label %.preheader.i, !prof !79

.preheader.i:                                     ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %calloc, i64 24
  %i.b = load ptr, ptr %1, align 8, !tbaa !46     ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader.i
  %i.c = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.b) #40
  store ptr %i.c, ptr %calloc, align 8, !tbaa !46
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.preheader.i
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !48   ; 2 uses
  %.not21 = icmp eq ptr %i.e, null
  br i1 %.not21, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.e) #40
  %i.g = getelementptr inbounds nuw i8, ptr %calloc, i64 8
  store ptr %i.f, ptr %i.g, align 8, !tbaa !48
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !244
  %i.j = getelementptr inbounds nuw i8, ptr %calloc, i64 16
  store i64 %i.i, ptr %i.j, align 8, !tbaa !244
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load <2 x i16>, ptr %i.k, align 8, !tbaa !76
  store <2 x i16> %i.l, ptr %i.a, align 8, !tbaa !76
  store ptr %calloc, ptr %0, align 8, !tbaa !266
  br label %pmix_bfrops_base_tma_device_distance_create.exit.thread

pmix_bfrops_base_tma_device_distance_create.exit.thread: ; preds = %bb.a, %bb.e
  %.0 = phi i32 [ 0, %bb.e ], [ -32, %bb.a ]
  ret i32 %.0
}

; Function Attrs: inlinehint mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 -32, 1) i32 @pmix_bfrops_base_tma_copy_endpoint(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #33 {
bb.a:
  %calloc.i = tail call dereferenceable_or_null(32) ptr @calloc(i64 1, i64 32) ; 6 uses
  %i.a = icmp eq ptr %calloc.i, null
  br i1 %i.a, label %bb.i, label %bb.b, !prof !79

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !49     ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.b) #40
  store ptr %i.c, ptr %calloc.i, align 8, !tbaa !49
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !52   ; 2 uses
  %.not24 = icmp eq ptr %i.e, null
  br i1 %.not24, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.e) #40
  %i.g = getelementptr inbounds nuw i8, ptr %calloc.i, i64 8
  store ptr %i.f, ptr %i.g, align 8, !tbaa !52
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !53   ; 2 uses
  %.not25 = icmp eq ptr %i.i, null
  br i1 %.not25, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !246  ; 3 uses
  %i.l = tail call noalias noundef ptr @malloc(i64 noundef %i.k) #41 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %calloc.i, i64 16
  store ptr %i.l, ptr %i.m, align 8, !tbaa !53
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr nonnull align 1 %i.i, i64 %i.k, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %calloc.i, i64 24
  store i64 %i.k, ptr %i.n, align 8, !tbaa !246
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store ptr %calloc.i, ptr %0, align 8, !tbaa !268
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h
  %.0 = phi i32 [ 0, %bb.h ], [ -32, %bb.a ]
  ret i32 %.0
}

; Function Attrs: inlinehint nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 -32, 1) i32 @pmix_bfrops_base_tma_copy_regattr(ptr nofree noundef captures(none) initializes((0, 8)) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #6 {
bb.a:
  %i.a = tail call noalias noundef dereferenceable_or_null(536) ptr @malloc(i64 noundef 536) #41 ; 6 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %pmix_bfrops_base_tma_regattr_create.exit.thread, label %.preheader.i, !prof !79

pmix_bfrops_base_tma_regattr_create.exit.thread:  ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !270
  br label %bb.i

.preheader.i:                                     ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 528
  store ptr null, ptr %i.b, align 8, !tbaa !56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(522) %i.a, i8 0, i64 522, i1 false)
  store ptr %i.a, ptr %0, align 8, !tbaa !270
  %i.c = load ptr, ptr %1, align 8, !tbaa !54     ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader.i
  %i.d = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.c) #40
  store ptr %i.d, ptr %i.a, align 8, !tbaa !54
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.preheader.i
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(512) %i.e, i8 0, i64 512, i1 false)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.c
  %.012.i.i = phi i64 [ 0, %bb.c ], [ %i.u, %bb.e ] ; 2 uses
  %.0811.i.i = phi ptr [ %i.e, %bb.c ], [ %i.w, %bb.e ] ; 8 uses
  %.0910.i.i = phi ptr [ %i.f, %bb.c ], [ %i.v, %bb.e ] ; 5 uses
  %i.g = load i8, ptr %.0910.i.i, align 1, !tbaa !8 ; 2 uses
  store i8 %i.g, ptr %.0811.i.i, align 1, !tbaa !8
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %pmix_bfrops_base_tma_load_key.exit, label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %.lr.ph.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.0910.i.i, i64 1
  %i.j = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 1
  %i.k = load i8, ptr %i.i, align 1, !tbaa !8     ; 2 uses
  store i8 %i.k, ptr %i.j, align 1, !tbaa !8
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %pmix_bfrops_base_tma_load_key.exit.split.loop.exit11, label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %.lr.ph.i.i.1
  %i.m = getelementptr inbounds nuw i8, ptr %.0910.i.i, i64 2
  %i.n = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 2
  %i.o = load i8, ptr %i.m, align 1, !tbaa !8     ; 2 uses
  store i8 %i.o, ptr %i.n, align 1, !tbaa !8
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %pmix_bfrops_base_tma_load_key.exit.split.loop.exit9, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.2
  %i.q = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 3 ; 3 uses
  %exitcond.not.i.i.2 = icmp eq i64 %.012.i.i, 508
  br i1 %exitcond.not.i.i.2, label %pmix_bfrops_base_tma_load_key.exit, label %.lr.ph.i.i.3

.lr.ph.i.i.3:                                     ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.0910.i.i, i64 3
  %i.s = load i8, ptr %i.r, align 1, !tbaa !8     ; 2 uses
  store i8 %i.s, ptr %i.q, align 1, !tbaa !8
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %pmix_bfrops_base_tma_load_key.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.3
  %i.u = add nuw nsw i64 %.012.i.i, 4
  %i.v = getelementptr inbounds nuw i8, ptr %.0910.i.i, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 4
  br label %.lr.ph.i.i

pmix_bfrops_base_tma_load_key.exit.split.loop.exit9: ; preds = %.lr.ph.i.i.2
  %i.x = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 2
  br label %pmix_bfrops_base_tma_load_key.exit

pmix_bfrops_base_tma_load_key.exit.split.loop.exit11: ; preds = %.lr.ph.i.i.1
  %i.y = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 1
  br label %pmix_bfrops_base_tma_load_key.exit

pmix_bfrops_base_tma_load_key.exit:               ; preds = %.lr.ph.i.i, %bb.d, %.lr.ph.i.i.3, %pmix_bfrops_base_tma_load_key.exit.split.loop.exit11, %pmix_bfrops_base_tma_load_key.exit.split.loop.exit9
  %.08.lcssa.i.i = phi ptr [ %i.q, %bb.d ], [ %i.y, %pmix_bfrops_base_tma_load_key.exit.split.loop.exit11 ], [ %i.x, %pmix_bfrops_base_tma_load_key.exit.split.loop.exit9 ], [ %i.q, %.lr.ph.i.i.3 ], [ %.0811.i.i, %.lr.ph.i.i ]
  store i8 0, ptr %.08.lcssa.i.i, align 1, !tbaa !8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 520
  %i.aa = load i16, ptr %i.z, align 8, !tbaa !162
  %i.ab = load ptr, ptr %0, align 8, !tbaa !270   ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 520
  store i16 %i.aa, ptr %i.ac, align 8, !tbaa !162
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 528
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !56 ; 3 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %pmix_bfrops_base_tma_argv_copy.exit, label %bb.f

bb.f:                                             ; preds = %pmix_bfrops_base_tma_load_key.exit
  %i.ag = tail call noalias noundef dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #41 ; 3 uses
  store ptr null, ptr %i.ag, align 8, !tbaa !14
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !14 ; 2 uses
  %.not12.i = icmp eq ptr %i.ah, null
  br i1 %.not12.i, label %pmix_bfrops_base_tma_argv_copy.exit, label %.preheader.i.i.i

.preheader.i.ithread-pre-split.i:                 ; preds = %bb.h
  %.pr.i = load ptr, ptr %i.aq, align 8, !tbaa !14
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.f, %.preheader.i.ithread-pre-split.i
  %i.ai = phi ptr [ %.pr.i, %.preheader.i.ithread-pre-split.i ], [ null, %bb.f ]
  %i.aj = phi ptr [ %i.bc, %.preheader.i.ithread-pre-split.i ], [ %i.ah, %bb.f ]
  %.0814.i = phi ptr [ %i.bb, %.preheader.i.ithread-pre-split.i ], [ %i.ae, %bb.f ]
  %.0313.i = phi ptr [ %i.aq, %.preheader.i.ithread-pre-split.i ], [ %i.ag, %bb.f ] ; 2 uses
  %.not1.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not1.i.i.i, label %pmix_bfrops_base_tma_argv_count.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %.lr.ph.i.i.i
  %.03.i.i.i = phi i32 [ %i.ak, %.lr.ph.i.i.i ], [ 0, %.preheader.i.i.i ]
  %.062.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %.0313.i, %.preheader.i.i.i ]
  %i.ak = add nuw nsw i32 %.03.i.i.i, 1           ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.062.i.i.i, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !14
  %.not.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i, label %pmix_bfrops_base_tma_argv_count.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !17

pmix_bfrops_base_tma_argv_count.exit.i.i:         ; preds = %.lr.ph.i.i.i, %.preheader.i.i.i
  %.07.i.i.i = phi i32 [ 0, %.preheader.i.i.i ], [ %i.ak, %.lr.ph.i.i.i ] ; 2 uses
  %i.an = add nsw i32 %.07.i.i.i, 2
  %i.ao = sext i32 %i.an to i64
  %i.ap = shl nsw i64 %i.ao, 3
  %i.aq = tail call noalias noundef ptr @realloc(ptr noundef nonnull %.0313.i, i64 noundef %i.ap) #39 ; 8 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %pmix_bfrops_base_tma_argv_copy.exit, label %bb.g

bb.g:                                             ; preds = %pmix_bfrops_base_tma_argv_count.exit.i.i
  %i.as = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.aj) #40 ; 2 uses
  %i.at = sext i32 %.07.i.i.i to i64
  %i.au = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.at ; 2 uses
  store ptr %i.as, ptr %i.au, align 8, !tbaa !14
  %i.av = icmp eq ptr %i.as, null
  br i1 %i.av, label %.preheader.i.i, label %bb.h

.preheader.i.i:                                   ; preds = %bb.g
  %i.aw = load ptr, ptr %i.aq, align 8, !tbaa !14 ; 2 uses
  %.not101.i.i = icmp eq ptr %i.aw, null
  br i1 %.not101.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i18

._crit_edge.i.i.loopexit:                         ; preds = %.lr.ph.i.i18
  %.pre.pre = load ptr, ptr %0, align 8, !tbaa !270
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.loopexit, %.preheader.i.i
  %.pre = phi ptr [ %.pre.pre, %._crit_edge.i.i.loopexit ], [ %i.ab, %.preheader.i.i ]
  tail call void @free(ptr noundef nonnull %i.aq) #40
  br label %pmix_bfrops_base_tma_argv_copy.exit

.lr.ph.i.i18:                                     ; preds = %.preheader.i.i, %.lr.ph.i.i18
  %i.ax = phi ptr [ %i.az, %.lr.ph.i.i18 ], [ %i.aw, %.preheader.i.i ]
  %.02.i.i = phi ptr [ %i.ay, %.lr.ph.i.i18 ], [ %i.aq, %.preheader.i.i ]
  tail call void @free(ptr noundef nonnull %i.ax) #40
  %i.ay = getelementptr inbounds nuw i8, ptr %.02.i.i, i64 8 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !14 ; 2 uses
  %.not10.i.i = icmp eq ptr %i.az, null
  br i1 %.not10.i.i, label %._crit_edge.i.i.loopexit, label %.lr.ph.i.i18, !llvm.loop !22

bb.h:                                             ; preds = %bb.g
  %i.ba = getelementptr i8, ptr %i.au, i64 8
  store ptr null, ptr %i.ba, align 8, !tbaa !14
  %i.bb = getelementptr inbounds nuw i8, ptr %.0814.i, i64 8 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !14 ; 2 uses
  %.not.i17 = icmp eq ptr %i.bc, null
  br i1 %.not.i17, label %pmix_bfrops_base_tma_argv_copy.exit, label %.preheader.i.ithread-pre-split.i, !llvm.loop !26

pmix_bfrops_base_tma_argv_copy.exit:              ; preds = %pmix_bfrops_base_tma_argv_count.exit.i.i, %bb.h, %pmix_bfrops_base_tma_load_key.exit, %bb.f, %._crit_edge.i.i
  %i.bd = phi ptr [ %i.ab, %pmix_bfrops_base_tma_load_key.exit ], [ %.pre, %._crit_edge.i.i ], [ %i.ab, %bb.f ], [ %i.ab, %bb.h ], [ %i.ab, %pmix_bfrops_base_tma_argv_count.exit.i.i ]
  %.1.i = phi ptr [ null, %pmix_bfrops_base_tma_load_key.exit ], [ null, %._crit_edge.i.i ], [ %i.ag, %bb.f ], [ null, %pmix_bfrops_base_tma_argv_count.exit.i.i ], [ %i.aq, %bb.h ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 528
  store ptr %.1.i, ptr %i.be, align 8, !tbaa !56
  br label %bb.i

bb.i:                                             ; preds = %pmix_bfrops_base_tma_regattr_create.exit.thread, %pmix_bfrops_base_tma_argv_copy.exit
  %.0 = phi i32 [ 0, %pmix_bfrops_base_tma_argv_copy.exit ], [ -32, %pmix_bfrops_base_tma_regattr_create.exit.thread ]
  ret i32 %.0
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @pmix_bfrops_base_tma_copy_dbuf(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1) unnamed_addr #10 {
bb.a:
  %calloc.i = tail call noalias noundef dereferenceable_or_null(40) ptr @calloc(i64 1, i64 40) ; 3 uses
  %i.a = icmp eq ptr %calloc.i, null
  br i1 %i.a, label %bb.c, label %bb.b, !prof !79

bb.b:                                             ; preds = %bb.a
  store ptr %calloc.i, ptr %0, align 8, !tbaa !272
  %i.b = tail call i32 @PMIx_Data_copy_payload(ptr noundef nonnull %calloc.i, ptr noundef %1) #40
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ -32, %bb.a ]
  ret i32 %.0
}

; Function Attrs: inlinehint mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 -32, 1) i32 @pmix_bfrops_base_tma_copy_pstats(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #33 {
bb.a:
  %calloc.i = tail call dereferenceable_or_null(352) ptr @calloc(i64 1, i64 352) ; 13 uses
  %i.a = icmp eq ptr %calloc.i, null
  br i1 %i.a, label %bb.f, label %bb.b, !prof !79

bb.b:                                             ; preds = %bb.a
  store ptr %calloc.i, ptr %0, align 8, !tbaa !274
  %i.b = load ptr, ptr %1, align 8, !tbaa !61     ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.b) #40
  store ptr %i.c, ptr %calloc.i, align 8, !tbaa !61
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %calloc.i, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(260) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(260) %i.e, i64 260, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 268
  %i.g = load i32, ptr %i.f, align 4, !tbaa !249
  %i.h = getelementptr inbounds nuw i8, ptr %calloc.i, i64 268
  store i32 %i.g, ptr %i.h, align 4, !tbaa !249
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !65   ; 2 uses
  %.not35.i = icmp eq ptr %i.j, null
end_hunk_6
