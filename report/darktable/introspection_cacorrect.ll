Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_cacorrect?download=true
inline.NumInlined: 74
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 42
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 80
begin_hunk_0_@process:bb.a
  %.val1807 = load ptr, ptr %i.r, align 8, !tbaa !151 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.val1807, i64 272
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !33
  %i.bc = getelementptr inbounds nuw i8, ptr %.val1807, i64 276
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !33
  %i.be = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bb, float %i.bd)
  %i.bf = getelementptr inbounds nuw i8, ptr %.val1807, i64 280
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !33
  %i.bh = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.be, float %i.bg)
  %i.bi = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bh, float 1.000000e+00) ; 8 uses
  %i.bj = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.bi
  %i.bk = sext i32 %i.ah to i64                   ; 7 uses
  tail call void @dt_iop_image_scaled_copy(ptr noundef nonnull %i.av, ptr noundef %2, float noundef %i.bj, i64 noundef %i.af, i64 noundef %i.bk, i64 noundef 1) #20
  %.not1780 = icmp eq i32 %i.az, 0
  br i1 %.not1780, label %bb.d, label %bb.eq

bb.d:                                             ; preds = %bb.c
  br i1 %i.y, label %bb.e, label %.loopexit1977

bb.e:                                             ; preds = %bb.d
  %i.bl = shl i64 %i.at, 2                        ; 4 uses
  %i.bm = tail call ptr @dt_alloc_aligned(i64 noundef %i.bl) #20 ; 8 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bm, i64 64) ]
  %.not.i = icmp ne ptr %i.bm, null               ; 2 uses
  br i1 %.not.i, label %bb.f, label %dt_calloc_align_float.exit

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr nonnull align 64 %i.bm, i8 0, i64 %i.bl, i1 false)
  br label %dt_calloc_align_float.exit

dt_calloc_align_float.exit:                       ; preds = %bb.e, %bb.f
  %i.bn = tail call ptr @dt_alloc_aligned(i64 noundef %i.bl) #20 ; 8 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bn, i64 64) ]
  %.not.i1808 = icmp ne ptr %i.bn, null           ; 2 uses
  br i1 %.not.i1808, label %bb.g, label %dt_calloc_align_float.exit1809

bb.g:                                             ; preds = %dt_calloc_align_float.exit
  tail call void @llvm.memset.p0.i64(ptr nonnull align 64 %i.bn, i8 0, i64 %i.bl, i1 false)
  br label %dt_calloc_align_float.exit1809

dt_calloc_align_float.exit1809:                   ; preds = %dt_calloc_align_float.exit, %bb.g
  %i.bo = shl i64 %i.at, 3                        ; 2 uses
  %i.bp = tail call ptr @dt_alloc_aligned(i64 noundef %i.bo) #20 ; 11 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bp, i64 64) ]
  %.not.i1810 = icmp eq ptr %i.bp, null
  br i1 %.not.i1810, label %dt_calloc_align_float.exit1811.thread, label %dt_calloc_align_float.exit1811

dt_calloc_align_float.exit1811:                   ; preds = %dt_calloc_align_float.exit1809
  tail call void @llvm.memset.p0.i64(ptr nonnull align 64 %i.bp, i8 0, i64 %i.bo, i1 false)
  %or.cond = and i1 %.not.i, %.not.i1808
  br i1 %or.cond, label %.preheader1976, label %dt_calloc_align_float.exit1811.thread

.preheader1976:                                   ; preds = %dt_calloc_align_float.exit1811
  switch i32 %i.ah, label %.lr.ph1991.preheader.new [
    i32 0, label %.loopexit1977
    i32 1, label %.lr.ph1991.epil.preheader
  ]

.lr.ph1991.preheader.new:                         ; preds = %.preheader1976
  %unroll_iter = and i64 %i.bk, -2
  br label %.lr.ph1991

dt_calloc_align_float.exit1811.thread:            ; preds = %dt_calloc_align_float.exit1809, %dt_calloc_align_float.exit1811
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.5) #20
  br label %bb.eq

.lr.ph1991:                                       ; preds = %._crit_edge.1, %.lr.ph1991.preheader.new
  %.016971990 = phi i64 [ 0, %.lr.ph1991.preheader.new ], [ %i.cp, %._crit_edge.1 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph1991.preheader.new ], [ %niter.next.1, %._crit_edge.1 ]
  %.01697.tr = trunc i64 %.016971990 to i32
  %i.bq = shl i32 %.01697.tr, 2
  %.tr.i = and i32 %i.bq, 24
  %i.br = lshr i32 %i.q, %.tr.i
  %i.bs = and i32 %i.br, 1                        ; 2 uses
  %i.bt = icmp ult i32 %i.bs, %i.ae
  br i1 %i.bt, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph1991
  %i.bu = zext nneg i32 %i.bs to i64
  %i.bv = mul i64 %.016971990, %i.af
  %i.bw = getelementptr [4 x i8], ptr %i.av, i64 %i.bv
  %i.bx = mul i64 %.016971990, %i.ao
  %i.by = getelementptr [4 x i8], ptr %i.bp, i64 %i.bx
  br label %bb.i

._crit_edge:                                      ; preds = %bb.i, %.lr.ph1991
  %i.bz = or disjoint i64 %.016971990, 1          ; 3 uses
  %.01697.tr.1 = trunc i64 %i.bz to i32
  %i.ca = shl i32 %.01697.tr.1, 2
  %.tr.i.1 = and i32 %i.ca, 28
  %i.cb = lshr i32 %i.q, %.tr.i.1
  %i.cc = and i32 %i.cb, 1                        ; 2 uses
  %i.cd = icmp ult i32 %i.cc, %i.ae
  br i1 %i.cd, label %.lr.ph.1, label %._crit_edge.1

.lr.ph.1:                                         ; preds = %._crit_edge
  %i.ce = zext nneg i32 %i.cc to i64
  %i.cf = mul i64 %i.bz, %i.af
  %i.cg = getelementptr [4 x i8], ptr %i.av, i64 %i.cf
  %i.ch = mul i64 %i.bz, %i.ao
  %i.ci = getelementptr [4 x i8], ptr %i.bp, i64 %i.ch
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.1
  %.016981989.1 = phi i64 [ %i.ce, %.lr.ph.1 ], [ %i.cn, %bb.h ] ; 3 uses
  %i.cj = getelementptr [4 x i8], ptr %i.cg, i64 %.016981989.1
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !33
  %i.cl = lshr i64 %.016981989.1, 1
  %i.cm = getelementptr [4 x i8], ptr %i.ci, i64 %i.cl
  store float %i.ck, ptr %i.cm, align 4, !tbaa !33
  %i.cn = add i64 %.016981989.1, 2                ; 2 uses
  %i.co = icmp ult i64 %i.cn, %i.af
  br i1 %i.co, label %bb.h, label %._crit_edge.1

._crit_edge.1:                                    ; preds = %bb.h, %._crit_edge
  %i.cp = add nuw i64 %.016971990, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit1977.loopexit.unr-lcssa, label %.lr.ph1991

bb.i:                                             ; preds = %.lr.ph, %bb.i
  %.016981989 = phi i64 [ %i.bu, %.lr.ph ], [ %i.cu, %bb.i ] ; 3 uses
  %i.cq = getelementptr [4 x i8], ptr %i.bw, i64 %.016981989
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !33
  %i.cs = lshr i64 %.016981989, 1
  %i.ct = getelementptr [4 x i8], ptr %i.by, i64 %i.cs
  store float %i.cr, ptr %i.ct, align 4, !tbaa !33
  %i.cu = add i64 %.016981989, 2                  ; 2 uses
  %i.cv = icmp ult i64 %i.cu, %i.af
  br i1 %i.cv, label %bb.i, label %._crit_edge

.loopexit1977.loopexit.unr-lcssa:                 ; preds = %._crit_edge.1
  %i.cw = and i32 %i.ah, 1
  %lcmp.mod.not = icmp eq i32 %i.cw, 0
  br i1 %lcmp.mod.not, label %.loopexit1977, label %.lr.ph1991.epil.preheader

.lr.ph1991.epil.preheader:                        ; preds = %.preheader1976, %.loopexit1977.loopexit.unr-lcssa
  %.016971990.epil.init = phi i64 [ 0, %.preheader1976 ], [ %i.cp, %.loopexit1977.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod4599 = trunc i32 %i.ah to i1
  tail call void @llvm.assume(i1 %lcmp.mod4599)
  %.01697.tr.epil = trunc i64 %.016971990.epil.init to i32
  %i.cx = shl i32 %.01697.tr.epil, 2
  %.tr.i.epil = and i32 %i.cx, 28
  %i.cy = lshr i32 %i.q, %.tr.i.epil
  %i.cz = and i32 %i.cy, 1                        ; 2 uses
  %i.da = icmp ult i32 %i.cz, %i.ae
  br i1 %i.da, label %.lr.ph.epil, label %.loopexit1977

.lr.ph.epil:                                      ; preds = %.lr.ph1991.epil.preheader
  %i.db = zext nneg i32 %i.cz to i64
  %i.dc = mul i64 %.016971990.epil.init, %i.af
  %i.dd = getelementptr [4 x i8], ptr %i.av, i64 %i.dc
  %i.de = mul i64 %.016971990.epil.init, %i.ao
  %i.df = getelementptr [4 x i8], ptr %i.bp, i64 %i.de
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph.epil
  %.016981989.epil = phi i64 [ %i.db, %.lr.ph.epil ], [ %i.dk, %bb.j ] ; 3 uses
  %i.dg = getelementptr [4 x i8], ptr %i.dd, i64 %.016981989.epil
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !33
  %i.di = lshr i64 %.016981989.epil, 1
  %i.dj = getelementptr [4 x i8], ptr %i.df, i64 %i.di
  store float %i.dh, ptr %i.dj, align 4, !tbaa !33
  %i.dk = add i64 %.016981989.epil, 2             ; 2 uses
  %i.dl = icmp ult i64 %i.dk, %i.af
  br i1 %i.dl, label %bb.j, label %.loopexit1977

.loopexit1977:                                    ; preds = %.loopexit1977.loopexit.unr-lcssa, %bb.j, %.lr.ph1991.epil.preheader, %.preheader1976, %bb.d
  %.01638 = phi ptr [ null, %bb.d ], [ %i.bp, %.preheader1976 ], [ %i.bp, %.lr.ph1991.epil.preheader ], [ %i.bp, %bb.j ], [ %i.bp, %.loopexit1977.loopexit.unr-lcssa ] ; 7 uses
  %.01634 = phi ptr [ null, %bb.d ], [ %i.bn, %.preheader1976 ], [ %i.bn, %.lr.ph1991.epil.preheader ], [ %i.bn, %bb.j ], [ %i.bn, %.loopexit1977.loopexit.unr-lcssa ] ; 24 uses
  %.01630 = phi ptr [ null, %bb.d ], [ %i.bm, %.preheader1976 ], [ %i.bm, %.lr.ph1991.epil.preheader ], [ %i.bm, %bb.j ], [ %i.bm, %.loopexit1977.loopexit.unr-lcssa ] ; 24 uses
  %.016304378 = ptrtoaddr ptr %.01630 to i64      ; 2 uses
  %.016344379 = ptrtoaddr ptr %.01634 to i64      ; 2 uses
  %i.dm = tail call ptr @dt_alloc_aligned(i64 noundef %i.au) #20 ; 101 uses
  %i.dn = ptrtoaddr ptr %i.dm to i64
  call void @llvm.assume(i1 true) [ "align"(ptr %i.dm, i64 64) ]
  %.not.i1812 = icmp ne ptr %i.dm, null           ; 2 uses
  br i1 %.not.i1812, label %bb.k, label %dt_calloc_align_float.exit1813

bb.k:                                             ; preds = %.loopexit1977
  tail call void @llvm.memset.p0.i64(ptr nonnull align 64 %i.dm, i8 0, i64 %i.au, i1 false)
  br label %dt_calloc_align_float.exit1813

dt_calloc_align_float.exit1813:                   ; preds = %.loopexit1977, %bb.k
  %i.do = shl i64 %i.ak, 1
  %i.dp = and i64 %i.do, -4
  %i.dq = tail call ptr @dt_alloc_aligned(i64 noundef %i.dp) #20 ; 16 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.dq, i64 64) ]
  %i.dr = icmp ne ptr %i.dq, null
  %or.cond5 = select i1 %.not.i1812, i1 %i.dr, i1 false
  br i1 %or.cond5, label %bb.m, label %bb.l

bb.l:                                             ; preds = %dt_calloc_align_float.exit1813
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.5) #20
  br label %bb.eq

bb.m:                                             ; preds = %dt_calloc_align_float.exit1813
  %i.ds = add nsw <2 x i32> %i.ad, splat (i32 16) ; 2 uses
  %i.dt = srem <2 x i32> %i.ds, splat (i32 112)
  %i.du = icmp eq <2 x i32> %i.dt, zeroinitializer
  %i.dv = sitofp reassoc nsz arcp contract afn <2 x i32> %i.ds to <2 x float>
  %i.dw = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.dv, splat (float f0x3C124925)
  %i.dx = fadd reassoc nsz arcp contract afn <2 x float> %i.dw, splat (float 2.000000e+00)
  %i.dy = uitofp <2 x i1> %i.du to <2 x float>
  %i.dz = fadd reassoc nsz arcp contract afn <2 x float> %i.dx, %i.dy
  %i.ea = tail call reassoc nsz arcp contract afn <2 x float> @llvm.ceil.v2f32(<2 x float> %i.dz)
  %i.eb = fptosi <2 x float> %i.ea to <2 x i32>   ; 3 uses
  %i.ec = extractelement <2 x i32> %i.eb, i64 0   ; 9 uses
  %i.ed = extractelement <2 x i32> %i.eb, i64 1   ; 4 uses
  %i.ee = mul i32 %i.ed, %i.ec                    ; 2 uses
  %i.ef = mul i32 %i.ee, 5
  %i.eg = sext i32 %i.ef to i64
  %i.eh = shl nsw i64 %i.eg, 2                    ; 2 uses
  %i.ei = tail call ptr @dt_alloc_aligned(i64 noundef %i.eh) #20 ; 37 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ei, i64 64) ]
  %.not.i1814 = icmp eq ptr %i.ei, null
  br i1 %.not.i1814, label %dt_calloc_align_float.exit1815, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memset.p0.i64(ptr nonnull align 64 %i.ei, i8 0, i64 %i.eh, i1 false)
  br label %dt_calloc_align_float.exit1815

dt_calloc_align_float.exit1815:                   ; preds = %bb.m, %bb.n
  %i.ej = sext i32 %i.ee to i64                   ; 2 uses
  %i.ek = getelementptr [4 x i8], ptr %i.ei, i64 %i.ej ; 21 uses
  %i.el = icmp sgt i32 %i.aa, 0
  br i1 %i.el, label %.lr.ph2243, label %._crit_edge2244

.lr.ph2243:                                       ; preds = %dt_calloc_align_float.exit1815
  %i.em = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.eo = icmp slt i32 %i.ah, -7
  %i.ep = icmp slt i32 %i.ae, -7
  %i.eq = add nsw i32 %i.ah, 8                    ; 2 uses
  %i.er = add i32 %i.ae, 8                        ; 5 uses
  %i.es = add nsw i32 %i.ah, -2                   ; 6 uses
  %i.et = add nsw i32 %i.ae, -2                   ; 20 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.ex = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.ey = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.ez = add i32 %i.ed, -1                       ; 3 uses
  %i.fa = icmp sgt i32 %i.ec, 0
  %i.fb = shl i32 %i.ec, 1
  %i.fc = add i32 %i.ed, -3
  %i.fd = mul i32 %i.fc, %i.ec
  %i.fe = mul i32 %i.ez, %i.ec
  %i.ff = getelementptr inbounds nuw i8, ptr %i.l, i64 4096
  %i.fg = getelementptr inbounds nuw i8, ptr %i.l, i64 6144
  %i.fh = getelementptr inbounds nuw i8, ptr %i.l, i64 2048
  %i.fi = add i32 %i.ec, -1
  %i.fj = icmp slt <2 x i32> %i.eb, splat (i32 3) ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.fl = icmp slt i32 %i.ah, -7
  %i.fm = icmp sgt i32 %i.ae, -8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.a, i64 256 ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.a, i64 384 ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.fr = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.ft = icmp sgt i32 %i.ah, 0
  %i.fu = sext i32 %i.ec to i64                   ; 10 uses
  %i.fv = zext i32 %i.fb to i64                   ; 2 uses
  %i.fw = sext i32 %i.fd to i64                   ; 2 uses
  %i.fx = sext i32 %i.fe to i64                   ; 2 uses
  %brmerge2271 = or i1 %i.eo, %i.ep
  %i.fy = shl i32 %i.ae, 4
  %i.fz = add i32 %i.et, %i.fy                    ; 8 uses
  %i.ga = mul i32 %i.ae, 15
  %i.gb = add i32 %i.et, %i.ga                    ; 8 uses
  %i.gc = mul i32 %i.ae, 14
  %i.gd = add i32 %i.et, %i.gc                    ; 8 uses
  %i.ge = mul i32 %i.ae, 13
  %i.gf = add i32 %i.et, %i.ge                    ; 8 uses
  %i.gg = mul i32 %i.ae, 12
  %i.gh = add i32 %i.et, %i.gg                    ; 8 uses
  %i.gi = mul i32 %i.ae, 11
  %i.gj = add i32 %i.et, %i.gi                    ; 8 uses
  %i.gk = mul i32 %i.ae, 10
  %i.gl = add i32 %i.et, %i.gk                    ; 8 uses
  %i.gm = mul i32 %i.ae, 9
  %i.gn = add i32 %i.et, %i.gm                    ; 8 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.gp = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  %i.gq = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  %i.gr = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %i.gs = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.gt = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %wide.trip.count2523 = zext i32 %i.ez to i64
  %invariant.gep2967 = getelementptr [16 x i8], ptr %i.ek, i64 %i.fu ; 5 uses
  %wide.trip.count2534 = zext i32 %i.ec to i64    ; 6 uses
  %invariant.gep2969 = getelementptr [16 x i8], ptr %i.ek, i64 %i.fv ; 13 uses
  %invariant.gep2971 = getelementptr [16 x i8], ptr %i.ek, i64 %i.fw ; 14 uses
  %invariant.gep2973 = getelementptr [16 x i8], ptr %i.ek, i64 %i.fx ; 15 uses
  %wide.trip.count2574 = zext nneg i32 %i.ez to i64
  %wide.trip.count2569 = zext i32 %i.fi to i64
  %i.gu = shl i32 %i.ae, 4
  %i.gv = add i32 %i.et, %i.gu                    ; 8 uses
  %i.gw = mul i32 %i.ae, 15
  %i.gx = add i32 %i.et, %i.gw                    ; 8 uses
  %i.gy = mul i32 %i.ae, 14
  %i.gz = add i32 %i.et, %i.gy                    ; 8 uses
  %i.ha = mul i32 %i.ae, 13
  %i.hb = add i32 %i.et, %i.ha                    ; 8 uses
  %i.hc = mul i32 %i.ae, 12
  %i.hd = add i32 %i.et, %i.hc                    ; 8 uses
  %i.he = mul i32 %i.ae, 11
  %i.hf = add i32 %i.et, %i.he                    ; 8 uses
  %i.hg = mul i32 %i.ae, 10
  %i.hh = add i32 %i.et, %i.hg                    ; 8 uses
  %i.hi = mul i32 %i.ae, 9
  %i.hj = add i32 %i.et, %i.hi                    ; 8 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %wide.trip.count2756 = zext nneg i32 %i.ah to i64
  %i.hp = shl nsw i64 %i.af, 2
  %scevgep3139 = getelementptr inbounds nuw i8, ptr %i.l, i64 2048
  %i.hq = shl nsw i64 %i.fw, 4                    ; 7 uses
  %i.hr = shl nuw nsw i64 %wide.trip.count2534, 4 ; 16 uses
  %i.hs = shl nsw i64 %i.ej, 2                    ; 28 uses
  %i.ht = getelementptr i8, ptr %i.ei, i64 %i.hq
  %i.hu = getelementptr i8, ptr %i.ht, i64 %i.hr
  %scevgep3741 = getelementptr i8, ptr %i.hu, i64 %i.hs ; 8 uses
  %i.hv = getelementptr i8, ptr %i.ei, i64 %i.hq
  %i.hw = getelementptr i8, ptr %i.hv, i64 %i.hs  ; 2 uses
  %i.hx = shl nuw nsw i64 %i.fv, 4                ; 7 uses
  %i.hy = getelementptr i8, ptr %i.ei, i64 %i.hr
  %i.hz = getelementptr i8, ptr %i.hy, i64 %i.hx
  %scevgep3743 = getelementptr i8, ptr %i.hz, i64 %i.hs ; 4 uses
  %i.ia = getelementptr i8, ptr %i.ei, i64 %i.hx
  %i.ib = getelementptr i8, ptr %i.ia, i64 %i.hs  ; 2 uses
  %scevgep3744 = getelementptr i8, ptr %i.ib, i64 12 ; 2 uses
  %i.ic = getelementptr i8, ptr %i.ei, i64 %i.hq
  %i.id = getelementptr i8, ptr %i.ic, i64 %i.hr
  %i.ie = getelementptr i8, ptr %i.id, i64 %i.hs  ; 5 uses
  %scevgep3745 = getelementptr i8, ptr %i.ie, i64 -4
  %i.if = getelementptr i8, ptr %i.ei, i64 %i.hq
  %i.ig = getelementptr i8, ptr %i.if, i64 %i.hs  ; 7 uses
  %scevgep3746 = getelementptr i8, ptr %i.ig, i64 8
  %i.ih = getelementptr i8, ptr %i.ei, i64 %i.hr
  %i.ii = getelementptr i8, ptr %i.ih, i64 %i.hx
  %i.ij = getelementptr i8, ptr %i.ii, i64 %i.hs  ; 4 uses
  %scevgep3747 = getelementptr i8, ptr %i.ij, i64 -4
  %i.ik = getelementptr i8, ptr %i.ei, i64 %i.hx
  %i.il = getelementptr i8, ptr %i.ik, i64 %i.hs  ; 6 uses
  %scevgep3748 = getelementptr i8, ptr %i.il, i64 8
  %i.im = getelementptr i8, ptr %i.ei, i64 %i.hq
  %i.in = getelementptr i8, ptr %i.im, i64 %i.hr
  %i.io = getelementptr i8, ptr %i.in, i64 %i.hs  ; 5 uses
  %scevgep3749 = getelementptr i8, ptr %i.io, i64 -8 ; 2 uses
  %i.ip = getelementptr i8, ptr %i.ei, i64 %i.hq
  %i.iq = getelementptr i8, ptr %i.ip, i64 %i.hs  ; 3 uses
  %i.ir = getelementptr i8, ptr %i.ei, i64 %i.hr
  %i.is = getelementptr i8, ptr %i.ir, i64 %i.hx
  %i.it = getelementptr i8, ptr %i.is, i64 %i.hs  ; 6 uses
  %i.iu = getelementptr i8, ptr %i.ei, i64 %i.hx
  %i.iv = getelementptr i8, ptr %i.iu, i64 %i.hs  ; 2 uses
  %i.iw = getelementptr i8, ptr %i.ei, i64 %i.hq
  %i.ix = getelementptr i8, ptr %i.iw, i64 %i.hr
  %i.iy = getelementptr i8, ptr %i.ix, i64 %i.hs  ; 3 uses
  %scevgep3753 = getelementptr i8, ptr %i.iy, i64 -12 ; 2 uses
  %i.iz = getelementptr i8, ptr %i.ei, i64 %i.hr
  %i.ja = getelementptr i8, ptr %i.iz, i64 %i.hx
  %i.jb = getelementptr i8, ptr %i.ja, i64 %i.hs  ; 5 uses
  %scevgep3754 = getelementptr i8, ptr %i.jb, i64 -12 ; 2 uses
  %i.jc = shl nsw i64 %i.fx, 4                    ; 7 uses
  %i.jd = getelementptr i8, ptr %i.ei, i64 %i.jc
  %i.je = getelementptr i8, ptr %i.jd, i64 %i.hr
  %scevgep3755 = getelementptr i8, ptr %i.je, i64 %i.hs ; 15 uses
  %i.jf = getelementptr i8, ptr %i.ei, i64 %i.jc
  %i.jg = getelementptr i8, ptr %i.jf, i64 %i.hs  ; 3 uses
  %scevgep3756 = getelementptr i8, ptr %i.jg, i64 12 ; 5 uses
  %i.jh = getelementptr i8, ptr %i.ei, i64 %i.hr
  %scevgep3757 = getelementptr i8, ptr %i.jh, i64 %i.hs ; 11 uses
  %i.ji = getelementptr i8, ptr %i.ei, i64 %i.hs  ; 2 uses
  %i.jj = insertelement <4 x ptr> poison, ptr %i.ji, i64 0 ; 2 uses
  %i.jk = insertelement <4 x ptr> %i.jj, ptr %i.iv, i64 1
  %i.jl = insertelement <4 x ptr> %i.jk, ptr %i.il, i64 3
  %i.jm = shufflevector <4 x ptr> %i.jl, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.jn = getelementptr i8, <4 x ptr> %i.jm, <4 x i64> <i64 12, i64 4, i64 12, i64 8> ; 13 uses
  %i.jo = getelementptr i8, ptr %i.ei, i64 %i.jc
  %i.jp = getelementptr i8, ptr %i.jo, i64 %i.hr
  %i.jq = getelementptr i8, ptr %i.jp, i64 %i.hs  ; 5 uses
  %i.jr = insertelement <4 x ptr> poison, ptr %i.jq, i64 0
  %i.js = insertelement <4 x ptr> %i.jr, ptr %i.iy, i64 1
  %i.jt = insertelement <4 x ptr> %i.js, ptr %i.io, i64 3
  %i.ju = shufflevector <4 x ptr> %i.jt, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.jv = insertelement <4 x ptr> poison, ptr %i.jb, i64 0 ; 2 uses
  %i.jw = insertelement <4 x ptr> %i.jv, ptr %i.jq, i64 1
  %i.jx = insertelement <4 x ptr> %i.jw, ptr %i.it, i64 2
  %i.jy = shufflevector <4 x ptr> %i.jx, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.jz = getelementptr i8, <4 x ptr> %i.ju, <4 x i64> <i64 -4, i64 -12, i64 -4, i64 -8> ; 6 uses
  %i.ka = getelementptr i8, <4 x ptr> %i.jy, <4 x i64> <i64 -12, i64 -4, i64 -8, i64 -4>
  %i.kb = insertelement <4 x ptr> poison, ptr %i.ij, i64 0
  %i.kc = insertelement <4 x ptr> %i.kb, ptr %i.jq, i64 1
  %i.kd = insertelement <4 x ptr> %i.kc, ptr %i.ie, i64 2
end_hunk_0
begin_hunk_1_@process:bb.a
  store <4 x double> zeroinitializer, ptr %i.aws, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.awt, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.awu, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.awv, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.aww, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.awx, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.awy, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.awz, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.axa, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.axb, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.axc, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.axd, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.axe, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.axf, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.axg, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.axh, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.axi, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.axj, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.axk, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.axl, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.axm, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.axn, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.axo, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.axp, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.axq, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.axr, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.axs, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.axt, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.axu, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.axv, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.axw, align 16, !tbaa !216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.m, i8 0, i64 512, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  store i32 0, ptr %.sroa.0, align 8
  store i32 0, ptr %.sroa.6, align 4
  br i1 %brmerge2997, label %.thread, label %.preheader1962.preheader

.preheader1962.preheader:                         ; preds = %._crit_edge2094
  %i.ews = zext i32 %.016992241 to i64            ; 5 uses
  %xtraiter4686 = and i64 %i.ews, 1
  %i.ewt = icmp eq i32 %.016992241, 1
  %unroll_iter4690 = and i64 %i.ews, 4294967294
  %lcmp.mod4688.not = icmp eq i64 %xtraiter4686, 0
  %lcmp.mod4689 = trunc i32 %.016992241 to i1
  br label %.preheader1962

.preheader1962:                                   ; preds = %.preheader1962.preheader, %._crit_edge2117
  %indvars.iv2571 = phi i64 [ 1, %.preheader1962.preheader ], [ %indvars.iv.next2572, %._crit_edge2117 ] ; 4 uses
  %i.ewu = add nsw i64 %indvars.iv2571, -1
  %i.ewv = mul nuw nsw i64 %i.ewu, %i.fu
  %i.eww = mul nuw nsw i64 %indvars.iv2571, %i.fu
  %indvars.iv.next2572 = add nuw nsw i64 %indvars.iv2571, 1 ; 3 uses
  %i.ewx = mul nuw nsw i64 %indvars.iv.next2572, %i.fu
  %i.ewy = trunc nuw nsw i64 %indvars.iv2571 to i32
  %i.ewz = uitofp nsz nneg i32 %i.ewy to double   ; 2 uses
  %invariant.gep2975 = getelementptr [16 x i8], ptr %i.ek, i64 %i.ewv
  %invariant.gep2977 = getelementptr [16 x i8], ptr %i.ek, i64 %i.ewx
  br label %.preheader1937

._crit_edge2119.split:                            ; preds = %._crit_edge2117
  %.sroa.0.0..sroa.0.0..pre2830 = load i32, ptr %.sroa.0, align 8, !tbaa !12
  %.sroa.6.0..sroa.6.4..pre2831 = load i32, ptr %.sroa.6, align 4, !tbaa !12
  %i.exa = tail call i32 @llvm.smin.i32(i32 %.sroa.0.0..sroa.0.0..pre2830, i32 %.sroa.6.0..sroa.6.4..pre2831) ; 3 uses
  %i.exb = icmp slt i32 %i.exa, 32
  br i1 %i.exb, label %bb.au, label %bb.aw

.preheader1937:                                   ; preds = %.preheader1962, %bb.aq
  %indvars.iv2566 = phi i64 [ 1, %.preheader1962 ], [ %indvars.iv.next2567, %bb.aq ] ; 5 uses
  %gep2976 = getelementptr [16 x i8], ptr %invariant.gep2975, i64 %indvars.iv2566 ; 3 uses
  %i.exc = getelementptr i8, ptr %gep2976, i64 -16
  %i.exd = getelementptr i8, ptr %gep2976, i64 16
  %i.exe = add nuw nsw i64 %indvars.iv2566, %i.eww ; 2 uses
  %i.exf = getelementptr [16 x i8], ptr %i.ek, i64 %i.exe ; 3 uses
  %i.exg = getelementptr i8, ptr %i.exf, i64 -16
  %i.exh = getelementptr i8, ptr %i.exf, i64 16
  %gep2978 = getelementptr [16 x i8], ptr %invariant.gep2977, i64 %indvars.iv2566 ; 3 uses
  %i.exi = getelementptr i8, ptr %gep2978, i64 -16
  %i.exj = getelementptr i8, ptr %gep2978, i64 16
  %i.exk = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.exe
  %i.exl = trunc nuw nsw i64 %indvars.iv2566 to i32
  %i.exm = uitofp nsz nneg i32 %i.exl to double   ; 4 uses
  %factor.op.fmul = fmul reassoc nsz arcp contract afn double %i.exm, %i.exm
  br label %bb.ar

._crit_edge2117:                                  ; preds = %bb.aq
  %exitcond2575.not = icmp eq i64 %indvars.iv.next2572, %wide.trip.count2574
  br i1 %exitcond2575.not, label %._crit_edge2119.split, label %.preheader1962

bb.aq:                                            ; preds = %.loopexit1907
  %indvars.iv.next2567 = add nuw nsw i64 %indvars.iv2566, 1 ; 2 uses
  %exitcond2570.not = icmp eq i64 %indvars.iv.next2567, %wide.trip.count2569
  br i1 %exitcond2570.not, label %._crit_edge2117, label %.preheader1937

bb.ar:                                            ; preds = %.preheader1937, %.loopexit1907
  %i.exn = phi i1 [ true, %.preheader1937 ], [ false, %.loopexit1907 ]
  %indvars.iv2563.sroa.phi = phi ptr [ %.sroa.0, %.preheader1937 ], [ %.sroa.6, %.loopexit1907 ] ; 2 uses
  %indvars.iv2563.sroa.phi4818 = phi ptr [ %i.m, %.preheader1937 ], [ %indvars.iv2563.sroa.gep4819, %.loopexit1907 ] ; 2 uses
  %indvars.iv2563.sroa.phi4823 = phi ptr [ %i.l, %.preheader1937 ], [ %indvars.iv2563.sroa.gep4825, %.loopexit1907 ] ; 4 uses
  %indvars.iv2563.sroa.phi4826 = phi ptr [ %i.b, %.preheader1937 ], [ %indvars.iv2563.sroa.gep4828, %.loopexit1907 ]
  %indvars.iv2563 = phi i64 [ 0, %.preheader1937 ], [ 1, %.loopexit1907 ] ; 10 uses
  %i.exo = getelementptr inbounds nuw [8 x i8], ptr %i.exc, i64 %indvars.iv2563
  %i.exp = getelementptr inbounds nuw [8 x i8], ptr %gep2976, i64 %indvars.iv2563
  %i.exq = getelementptr inbounds nuw [8 x i8], ptr %i.exd, i64 %indvars.iv2563
  %i.exr = getelementptr inbounds nuw [8 x i8], ptr %i.exg, i64 %indvars.iv2563
  %i.exs = getelementptr inbounds nuw [8 x i8], ptr %i.exf, i64 %indvars.iv2563
  %i.ext = getelementptr inbounds nuw [8 x i8], ptr %i.exh, i64 %indvars.iv2563
  %i.exu = getelementptr inbounds nuw [8 x i8], ptr %i.exi, i64 %indvars.iv2563
  %i.exv = getelementptr inbounds nuw [8 x i8], ptr %gep2978, i64 %indvars.iv2563
  %i.exw = getelementptr inbounds nuw [8 x i8], ptr %i.exj, i64 %indvars.iv2563
  %i.exx = load <2 x float>, ptr %i.exs, align 4, !tbaa !33 ; 4 uses
  %i.exy = load <2 x float>, ptr %i.ext, align 4, !tbaa !33 ; 4 uses
  %i.exz = load <2 x float>, ptr %i.exv, align 4, !tbaa !33 ; 4 uses
  %i.eya = load <2 x float>, ptr %i.exw, align 4, !tbaa !33 ; 4 uses
  %i.eyb = load <2 x float>, ptr %i.exo, align 4, !tbaa !33 ; 4 uses
  %i.eyc = load <2 x float>, ptr %i.exp, align 4, !tbaa !33 ; 4 uses
  %i.eyd = load <2 x float>, ptr %i.exq, align 4, !tbaa !33 ; 4 uses
  %i.eye = load <2 x float>, ptr %i.exr, align 4, !tbaa !33 ; 4 uses
  %i.eyf = load <2 x float>, ptr %i.exu, align 4, !tbaa !33 ; 4 uses
  %i.eyg = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.eyc, %i.eyd
  %i.eyh = select <2 x i1> %i.eyg, <2 x float> %i.eyc, <2 x float> %i.eyd ; 4 uses
  %i.eyi = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.eyc, %i.eyd
  %i.eyj = select <2 x i1> %i.eyi, <2 x float> %i.eyc, <2 x float> %i.eyd ; 4 uses
  %i.eyk = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.exx, %i.exy
  %i.eyl = select <2 x i1> %i.eyk, <2 x float> %i.exx, <2 x float> %i.exy ; 4 uses
  %i.eym = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.exx, %i.exy
  %i.eyn = select <2 x i1> %i.eym, <2 x float> %i.exx, <2 x float> %i.exy ; 4 uses
  %i.eyo = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.exz, %i.eya
  %i.eyp = select <2 x i1> %i.eyo, <2 x float> %i.exz, <2 x float> %i.eya ; 4 uses
  %i.eyq = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.exz, %i.eya
  %i.eyr = select <2 x i1> %i.eyq, <2 x float> %i.exz, <2 x float> %i.eya ; 4 uses
  %i.eys = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.eyb, %i.eyh
  %i.eyt = select <2 x i1> %i.eys, <2 x float> %i.eyb, <2 x float> %i.eyh ; 2 uses
  %i.eyu = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.eyb, %i.eyh
  %i.eyv = select <2 x i1> %i.eyu, <2 x float> %i.eyb, <2 x float> %i.eyh ; 4 uses
  %i.eyw = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.eye, %i.eyl
  %i.eyx = select <2 x i1> %i.eyw, <2 x float> %i.eye, <2 x float> %i.eyl ; 2 uses
  %i.eyy = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.eye, %i.eyl
  %i.eyz = select <2 x i1> %i.eyy, <2 x float> %i.eye, <2 x float> %i.eyl ; 4 uses
  %i.eza = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.eyf, %i.eyp
  %i.ezb = select <2 x i1> %i.eza, <2 x float> %i.eyf, <2 x float> %i.eyp ; 2 uses
  %i.ezc = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.eyf, %i.eyp
  %i.ezd = select <2 x i1> %i.ezc, <2 x float> %i.eyf, <2 x float> %i.eyp ; 4 uses
  %i.eze = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.eyv, %i.eyj
  %i.ezf = select <2 x i1> %i.eze, <2 x float> %i.eyv, <2 x float> %i.eyj ; 2 uses
  %i.ezg = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.eyv, %i.eyj
  %i.ezh = select <2 x i1> %i.ezg, <2 x float> %i.eyv, <2 x float> %i.eyj ; 2 uses
  %i.ezi = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.eyz, %i.eyn
  %i.ezj = select <2 x i1> %i.ezi, <2 x float> %i.eyz, <2 x float> %i.eyn ; 4 uses
  %i.ezk = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.eyz, %i.eyn
  %i.ezl = select <2 x i1> %i.ezk, <2 x float> %i.eyz, <2 x float> %i.eyn ; 2 uses
  %i.ezm = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.ezd, %i.eyr
  %i.ezn = select <2 x i1> %i.ezm, <2 x float> %i.ezd, <2 x float> %i.eyr ; 4 uses
  %i.ezo = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.ezd, %i.eyr
  %i.ezp = select <2 x i1> %i.ezo, <2 x float> %i.ezd, <2 x float> %i.eyr ; 2 uses
  %i.ezq = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.eyt, %i.eyx
  %i.ezr = select <2 x i1> %i.ezq, <2 x float> %i.eyt, <2 x float> %i.eyx ; 2 uses
  %i.ezs = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.ezl, %i.ezp
  %i.ezt = select <2 x i1> %i.ezs, <2 x float> %i.ezl, <2 x float> %i.ezp ; 2 uses
  %i.ezu = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.ezj, %i.ezn
  %i.ezv = select <2 x i1> %i.ezu, <2 x float> %i.ezj, <2 x float> %i.ezn ; 2 uses
  %i.ezw = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.ezj, %i.ezn
  %i.ezx = select <2 x i1> %i.ezw, <2 x float> %i.ezj, <2 x float> %i.ezn ; 2 uses
  %i.ezy = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.ezr, %i.ezb
  %i.ezz = select <2 x i1> %i.ezy, <2 x float> %i.ezr, <2 x float> %i.ezb ; 2 uses
  %i.faa = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.ezf, %i.ezx
  %i.fab = select <2 x i1> %i.faa, <2 x float> %i.ezf, <2 x float> %i.ezx ; 2 uses
  %i.fac = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.ezh, %i.ezt
  %i.fad = select <2 x i1> %i.fac, <2 x float> %i.ezh, <2 x float> %i.ezt ; 4 uses
  %i.fae = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.fab, %i.ezv
  %i.faf = select <2 x i1> %i.fae, <2 x float> %i.fab, <2 x float> %i.ezv ; 4 uses
  %i.fag = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.faf, %i.fad
  %i.fah = select <2 x i1> %i.fag, <2 x float> %i.faf, <2 x float> %i.fad ; 2 uses
  %i.fai = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.faf, %i.fad
  %i.faj = select <2 x i1> %i.fai, <2 x float> %i.faf, <2 x float> %i.fad ; 2 uses
  %i.fak = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.ezz, %i.fah
  %i.fal = select <2 x i1> %i.fak, <2 x float> %i.ezz, <2 x float> %i.fah ; 2 uses
  %i.fam = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.faj, %i.fal
  %i.fan = select <2 x i1> %i.fam, <2 x float> %i.faj, <2 x float> %i.fal ; 5 uses
  %foldExtExtBinop = fmul reassoc nsz arcp contract afn <2 x float> %i.fan, %i.fan
  %i.fao = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.fap = load float, ptr %indvars.iv2563.sroa.phi4826, align 4, !tbaa !33
  %i.faq = fmul reassoc nsz arcp contract afn float %i.fap, 4.000000e+00
  %i.far = fcmp reassoc nsz arcp contract afn ogt float %i.fao, %i.faq
  br i1 %i.far, label %.loopexit1907, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %foldExtExtBinop4556 = fmul reassoc nsz arcp contract afn <2 x float> %i.fan, %i.fan
  %i.fas = extractelement <2 x float> %foldExtExtBinop4556, i64 1
  %i.fat = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %indvars.iv2563
  %i.fau = load float, ptr %i.fat, align 4, !tbaa !33
  %i.fav = fmul reassoc nsz arcp contract afn float %i.fau, 4.000000e+00
  %i.faw = fcmp reassoc nsz arcp contract afn ogt float %i.fas, %i.fav
  br i1 %i.faw, label %.loopexit1907, label %.preheader1896.lr.ph

.preheader1896.lr.ph:                             ; preds = %bb.as
  %i.fax = load i32, ptr %indvars.iv2563.sroa.phi, align 4, !tbaa !12
  %i.fay = add nsw i32 %i.fax, 1
  store i32 %i.fay, ptr %indvars.iv2563.sroa.phi, align 4, !tbaa !12
  %i.faz = getelementptr inbounds nuw i8, ptr %indvars.iv2563.sroa.phi4823, i64 2048 ; 3 uses
  %i.fba = fpext reassoc nsz arcp contract afn <2 x float> %i.fan to <2 x double>
  %i.fbb = getelementptr inbounds nuw i8, ptr %indvars.iv2563.sroa.phi4818, i64 128
  %i.fbc = load float, ptr %i.exk, align 4, !tbaa !33
  %i.fbd = fpext reassoc nsz arcp contract afn float %i.fbc to double ; 2 uses
  %i.fbe = insertelement <2 x double> poison, double %i.fbd, i64 0
  br label %.preheader1896

.preheader1896:                                   ; preds = %.preheader1896.lr.ph, %._crit_edge2107.split.us
  %indvars.iv2558 = phi i64 [ 0, %.preheader1896.lr.ph ], [ %indvars.iv.next2559, %._crit_edge2107.split.us ] ; 2 uses
  %.016672112 = phi double [ 1.000000e+00, %.preheader1896.lr.ph ], [ %i.fdf, %._crit_edge2107.split.us ] ; 3 uses
  %i.fbf = mul nuw nsw i64 %indvars.iv2558, %i.ews
  %i.fbg = insertelement <2 x double> poison, double %.016672112, i64 0
  %i.fbh = fmul reassoc nsz arcp contract afn <2 x double> %i.fbg, %i.fbe
  br label %.preheader1895.us

.preheader1895.us:                                ; preds = %._crit_edge2104.us, %.preheader1896
  %indvars.iv2553 = phi i64 [ %indvars.iv.next2554, %._crit_edge2104.us ], [ 0, %.preheader1896 ] ; 2 uses
  %.016652105.us = phi double [ %i.fde, %._crit_edge2104.us ], [ 1.000000e+00, %.preheader1896 ] ; 4 uses
  %i.fbi = add nuw nsw i64 %indvars.iv2553, %i.fbf ; 3 uses
  %i.fbj = trunc nuw i64 %i.fbi to i32
  %i.fbk = mul nsw i32 %.017022239, %i.fbj
  br label %.preheader1894.us

bb.at:                                            ; preds = %bb.at, %.preheader1894.us.new
  %indvars.iv2547 = phi i64 [ 0, %.preheader1894.us.new ], [ %indvars.iv.next2548.1, %bb.at ] ; 3 uses
  %.016612098.us = phi double [ %.016652105.us, %.preheader1894.us.new ], [ %.reass4888, %bb.at ] ; 3 uses
  %niter4691 = phi i64 [ 0, %.preheader1894.us.new ], [ %niter4691.next.1, %bb.at ]
  %.reass.us = fmul reassoc nsz arcp contract afn double %.016612098.us, %factor.op.fmul.us ; 2 uses
  %i.fbl = trunc nuw nsw i64 %indvars.iv2547 to i32
  %i.fbm = add i32 %i.fcf, %i.fbl
  %i.fbn = sext i32 %i.fbm to i64                 ; 2 uses
  %i.fbo = getelementptr inbounds nuw [8 x i8], ptr %indvars.iv2563.sroa.phi4823, i64 %i.fbn ; 2 uses
  %i.fbp = load double, ptr %i.fbo, align 8, !tbaa !216
  %i.fbq = fadd reassoc nsz arcp contract afn double %.reass.us, %i.fbp
  store double %i.fbq, ptr %i.fbo, align 8, !tbaa !216
  %i.fbr = getelementptr inbounds nuw [8 x i8], ptr %i.faz, i64 %i.fbn ; 2 uses
  %i.fbs = load double, ptr %i.fbr, align 8, !tbaa !216
  %i.fbt = fadd reassoc nsz arcp contract afn double %i.fbs, %.reass.us
  store double %i.fbt, ptr %i.fbr, align 8, !tbaa !216
  %.reass4888 = fmul reassoc nsz arcp contract afn double %.016612098.us, %factor.op.fmul ; 2 uses
  %.reass.us.1.reass = fmul reassoc nsz arcp contract afn double %.016612098.us, %invariant.op4887 ; 2 uses
  %i.fbu = trunc i64 %indvars.iv2547 to i32
  %i.fbv = or disjoint i32 %i.fbu, 1
  %i.fbw = add i32 %i.fcf, %i.fbv
  %i.fbx = sext i32 %i.fbw to i64                 ; 2 uses
  %i.fby = getelementptr inbounds nuw [8 x i8], ptr %indvars.iv2563.sroa.phi4823, i64 %i.fbx ; 2 uses
  %i.fbz = load double, ptr %i.fby, align 8, !tbaa !216
  %i.fca = fadd reassoc nsz arcp contract afn double %.reass.us.1.reass, %i.fbz
  store double %i.fca, ptr %i.fby, align 8, !tbaa !216
  %i.fcb = getelementptr inbounds nuw [8 x i8], ptr %i.faz, i64 %i.fbx ; 2 uses
  %i.fcc = load double, ptr %i.fcb, align 8, !tbaa !216
  %i.fcd = fadd reassoc nsz arcp contract afn double %i.fcc, %.reass.us.1.reass
  store double %i.fcd, ptr %i.fcb, align 8, !tbaa !216
  %indvars.iv.next2548.1 = add nuw nsw i64 %indvars.iv2547, 2 ; 2 uses
  %niter4691.next.1 = add i64 %niter4691, 2       ; 2 uses
  %niter4691.ncmp.1 = icmp eq i64 %niter4691.next.1, %unroll_iter4690
  br i1 %niter4691.ncmp.1, label %._crit_edge2101.us.unr-lcssa, label %bb.at

.preheader1894.us:                                ; preds = %.preheader1895.us, %._crit_edge2101.us
  %.016622103.us = phi i32 [ 0, %.preheader1895.us ], [ %i.fcq, %._crit_edge2101.us ] ; 2 uses
  %.016632102.us = phi double [ %.016672112, %.preheader1895.us ], [ %i.fcp, %._crit_edge2101.us ] ; 2 uses
  %factor.op.fmul.us = fmul reassoc nsz arcp contract afn double %.016632102.us, %i.fbd ; 3 uses
  %i.fce = mul nuw nsw i32 %.016622103.us, %.016992241
  %i.fcf = add i32 %i.fce, %i.fbk                 ; 3 uses
  br i1 %i.ewt, label %.epil.preheader4685, label %.preheader1894.us.new

.preheader1894.us.new:                            ; preds = %.preheader1894.us
  %invariant.op4887 = fmul reassoc nsz arcp contract afn double %i.exm, %factor.op.fmul.us
  br label %bb.at

._crit_edge2101.us.unr-lcssa:                     ; preds = %bb.at
  br i1 %lcmp.mod4688.not, label %._crit_edge2101.us, label %.epil.preheader4685

.epil.preheader4685:                              ; preds = %._crit_edge2101.us.unr-lcssa, %.preheader1894.us
  %indvars.iv2547.epil.init = phi i64 [ 0, %.preheader1894.us ], [ %indvars.iv.next2548.1, %._crit_edge2101.us.unr-lcssa ]
  %.016612098.us.epil.init = phi double [ %.016652105.us, %.preheader1894.us ], [ %.reass4888, %._crit_edge2101.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod4689)
  %.reass.us.epil = fmul reassoc nsz arcp contract afn double %.016612098.us.epil.init, %factor.op.fmul.us ; 2 uses
  %i.fcg = trunc nuw nsw i64 %indvars.iv2547.epil.init to i32
  %i.fch = add i32 %i.fcf, %i.fcg
  %i.fci = sext i32 %i.fch to i64                 ; 2 uses
  %i.fcj = getelementptr inbounds nuw [8 x i8], ptr %indvars.iv2563.sroa.phi4823, i64 %i.fci ; 2 uses
  %i.fck = load double, ptr %i.fcj, align 8, !tbaa !216
  %i.fcl = fadd reassoc nsz arcp contract afn double %.reass.us.epil, %i.fck
  store double %i.fcl, ptr %i.fcj, align 8, !tbaa !216
  %i.fcm = getelementptr inbounds nuw [8 x i8], ptr %i.faz, i64 %i.fci ; 2 uses
  %i.fcn = load double, ptr %i.fcm, align 8, !tbaa !216
  %i.fco = fadd reassoc nsz arcp contract afn double %i.fcn, %.reass.us.epil
  store double %i.fco, ptr %i.fcm, align 8, !tbaa !216
  br label %._crit_edge2101.us

._crit_edge2101.us:                               ; preds = %._crit_edge2101.us.unr-lcssa, %.epil.preheader4685
  %i.fcp = fmul reassoc nsz arcp contract afn double %.016632102.us, %i.ewz
  %i.fcq = add nuw nsw i32 %.016622103.us, 1      ; 2 uses
  %exitcond2552.not = icmp eq i32 %i.fcq, %.016992241
  br i1 %exitcond2552.not, label %._crit_edge2104.us, label %.preheader1894.us

._crit_edge2104.us:                               ; preds = %._crit_edge2101.us
  %i.fcr = insertelement <2 x double> poison, double %.016652105.us, i64 0
  %i.fcs = fmul reassoc nsz arcp contract afn <2 x double> %i.fcr, %i.fbh
  %i.fct = shufflevector <2 x double> %i.fcs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fcu = fmul reassoc nsz arcp contract afn <2 x double> %i.fct, %i.fba
  %i.fcv = getelementptr inbounds nuw [8 x i8], ptr %indvars.iv2563.sroa.phi4818, i64 %i.fbi ; 2 uses
  %i.fcw = load double, ptr %i.fcv, align 8, !tbaa !216
  %i.fcx = getelementptr inbounds nuw [8 x i8], ptr %i.fbb, i64 %i.fbi ; 2 uses
  %i.fcy = load double, ptr %i.fcx, align 8, !tbaa !216
  %i.fcz = insertelement <2 x double> poison, double %i.fcw, i64 0
  %i.fda = insertelement <2 x double> %i.fcz, double %i.fcy, i64 1
  %i.fdb = fadd reassoc nsz arcp contract afn <2 x double> %i.fcu, %i.fda ; 2 uses
  %i.fdc = extractelement <2 x double> %i.fdb, i64 0
  store double %i.fdc, ptr %i.fcv, align 8, !tbaa !216
  %i.fdd = extractelement <2 x double> %i.fdb, i64 1
  store double %i.fdd, ptr %i.fcx, align 8, !tbaa !216
  %i.fde = fmul reassoc nsz arcp contract afn double %.016652105.us, %i.exm
  %indvars.iv.next2554 = add nuw nsw i64 %indvars.iv2553, 1 ; 2 uses
  %exitcond2557.not = icmp eq i64 %indvars.iv.next2554, %i.ews
  br i1 %exitcond2557.not, label %._crit_edge2107.split.us, label %.preheader1895.us

._crit_edge2107.split.us:                         ; preds = %._crit_edge2104.us
  %i.fdf = fmul reassoc nsz arcp contract afn double %.016672112, %i.ewz
  %indvars.iv.next2559 = add nuw nsw i64 %indvars.iv2558, 1 ; 2 uses
  %exitcond2562.not = icmp eq i64 %indvars.iv.next2559, %i.ews
  br i1 %exitcond2562.not, label %.loopexit1907, label %.preheader1896

.loopexit1907:                                    ; preds = %._crit_edge2107.split.us, %bb.ar, %bb.as
  br i1 %i.exn, label %bb.ar, label %bb.aq

bb.au:                                            ; preds = %._crit_edge2119.split
  %i.fdg = icmp slt i32 %i.exa, 10
  br i1 %i.fdg, label %.thread, label %bb.aw

.thread:                                          ; preds = %._crit_edge2094, %bb.au
  %i.fdh = phi i32 [ %i.exa, %bb.au ], [ 0, %._crit_edge2094 ]
  %i.fdi = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !215
  %i.fdj = and i32 %i.fdi, 33554432
  %.not1784 = icmp eq i32 %i.fdj, 0
  br i1 %.not1784, label %.thread1874, label %bb.av

bb.av:                                            ; preds = %.thread
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.7, i32 noundef %i.fdh) #20
  br label %.thread1874

.thread1874:                                      ; preds = %.thread, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #20
  br label %.thread1866

bb.aw:                                            ; preds = %bb.au, %._crit_edge2119.split
  %.11703 = phi i32 [ %.017022239, %._crit_edge2119.split ], [ 4, %bb.au ] ; 4 uses
  %.11700 = phi i32 [ %.016992241, %._crit_edge2119.split ], [ 2, %bb.au ] ; 6 uses
  %i.fdk = zext i32 %.11703 to i64                ; 56 uses
  %i.fdl = add nsw i64 %i.fdk, -1                 ; 6 uses
  %.1122132.i = add nuw nsw i64 %i.fdk, 1         ; 2 uses
  %i.fdm = shl nuw nsw i64 %i.fdk, 3              ; 2 uses
  %i.fdn = add nuw nsw i64 %i.fdm, 2048
  %i.fdo = shl nuw nsw i64 %i.fdk, 3
  %i.fdp = mul nuw i64 %i.fdk, %i.fdk
  %i.fdq = shl i64 %i.fdp, 3
  %scevgep3140 = getelementptr i8, ptr %scevgep3139, i64 %i.fdq
  %i.fdr = add nuw nsw i64 %i.fdm, 8
  %i.fds = shl nuw nsw i64 %i.fdk, 3              ; 4 uses
  %i.fdt = shl nuw nsw i64 %i.fdk, 3
  %i.fdu = mul nuw i64 %i.fdk, %i.fdk
  %i.fdv = shl i64 %i.fdu, 3
  %scevgep3267 = getelementptr i8, ptr %i.l, i64 %i.fdv
  %i.fdw = add nuw nsw i64 %i.fds, 8
  %i.fdx = shl nuw nsw i64 %i.fdk, 3              ; 2 uses
  %i.fdy = add nsw i64 %i.fdk, -2                 ; 2 uses
  %i.fdz = getelementptr i8, ptr %i.l, i64 %i.fdx
  %i.fea = getelementptr i8, ptr %i.l, i64 %i.fds
  %i.feb = getelementptr i8, ptr %i.fea, i64 2048
  br label %.preheader1961

.preheader1961:                                   ; preds = %bb.aw, %_LinEqSolve.exit.1
  %i.fec = phi i1 [ true, %bb.aw ], [ false, %_LinEqSolve.exit.1 ]
  %indvars.iv2591.sroa.phi = phi ptr [ %i.m, %bb.aw ], [ %indvars.iv2591.sroa.gep4817, %_LinEqSolve.exit.1 ] ; 6 uses
  %indvars.iv2591.sroa.phi4820 = phi ptr [ %i.l, %bb.aw ], [ %indvars.iv2591.sroa.gep4822, %_LinEqSolve.exit.1 ] ; 7 uses
  %indvars.iv2591.sroa.phi4829 = phi ptr [ %i.a, %bb.aw ], [ %indvars.iv2591.sroa.gep4831, %_LinEqSolve.exit.1 ] ; 5 uses
  %indvars.iv2591 = phi i64 [ 0, %bb.aw ], [ 1, %_LinEqSolve.exit.1 ] ; 4 uses
  %.42123 = phi i32 [ 1, %bb.aw ], [ %.6.1, %_LinEqSolve.exit.1 ]
  %i.fed = shl nuw nsw i64 %indvars.iv2591, 12    ; 5 uses
  %i.fee = add nuw nsw i64 %i.fds, %i.fed         ; 2 uses
  %scevgep3268 = getelementptr i8, ptr %scevgep3267, i64 %i.fed
  %i.fef = getelementptr i8, ptr %i.l, i64 %i.fee
  %i.feg = getelementptr i8, ptr %i.l, i64 %i.fee
  %i.feh = getelementptr i8, ptr %i.fdz, i64 %i.fed
  %invariant.gep4889 = getelementptr i8, ptr %i.l, i64 %i.fed
  %invariant.gep4891 = getelementptr i8, ptr %i.l, i64 %i.fed
  br label %.lr.ph.preheader.i

.loopexit135.i:                                   ; preds = %._crit_edge148.us.i
  %exitcond169.not.i = icmp eq i64 %i.fer, %i.fdl
  br i1 %exitcond169.not.i, label %.preheader.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.loopexit135.i, %.preheader1961
  %.0121153.i = phi i64 [ %i.fer, %.loopexit135.i ], [ 0, %.preheader1961 ] ; 26 uses
  %i.fei = sub i64 %i.fdl, %.0121153.i
  %i.fej = sub i64 %i.fdy, %.0121153.i
  %i.fek = mul i64 %i.fdt, %.0121153.i
end_hunk_1
begin_hunk_2_@process:bb.a
bb.do:                                            ; preds = %bb.dn
  %i.hoi = load float, ptr %i.baq, align 4, !tbaa !33
  %i.hoj = load ptr, ptr %i.bas, align 8, !tbaa !171
  %i.hok = add nsw i64 %i.hae, 5                  ; 2 uses
  %i.hol = getelementptr inbounds [4 x i8], ptr %i.hoj, i64 %i.hok
  store float %i.hoi, ptr %i.hol, align 4, !tbaa !33
  %i.hom = load float, ptr %i.bat, align 4, !tbaa !33
  %i.hon = getelementptr inbounds [4 x i8], ptr %i.bsl, i64 %i.hok
  store float %i.hom, ptr %i.hon, align 4, !tbaa !33
  %exitcond2696.not.5 = icmp eq i32 %i.hag, 6
  br i1 %exitcond2696.not.5, label %._crit_edge2155, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.hoo = load float, ptr %i.bax, align 4, !tbaa !33
  %i.hop = load ptr, ptr %i.baz, align 8, !tbaa !171
  %i.hoq = add nsw i64 %i.hae, 6                  ; 2 uses
  %i.hor = getelementptr inbounds [4 x i8], ptr %i.hop, i64 %i.hoq
  store float %i.hoo, ptr %i.hor, align 4, !tbaa !33
  %i.hos = load float, ptr %i.bba, align 4, !tbaa !33
  %i.hot = getelementptr inbounds [4 x i8], ptr %i.bsl, i64 %i.hoq
  store float %i.hos, ptr %i.hot, align 4, !tbaa !33
  %exitcond2696.not.6 = icmp eq i32 %i.hag, 7
  br i1 %exitcond2696.not.6, label %._crit_edge2155, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.hou = load float, ptr %i.bbf, align 4, !tbaa !33
  %i.hov = load ptr, ptr %i.bbh, align 8, !tbaa !171
  %i.how = add nsw i64 %i.hae, 7                  ; 2 uses
  %i.hox = getelementptr inbounds [4 x i8], ptr %i.hov, i64 %i.how
  store float %i.hou, ptr %i.hox, align 4, !tbaa !33
  %i.hoy = load float, ptr %i.bbi, align 4, !tbaa !33
  %i.hoz = getelementptr inbounds [4 x i8], ptr %i.bsl, i64 %i.how
  store float %i.hoy, ptr %i.hoz, align 4, !tbaa !33
  br label %._crit_edge2155

.loopexit1924.split:                              ; preds = %._crit_edge2155.6, %bb.dd, %bb.de, %bb.df, %bb.dg, %bb.dh, %bb.di, %bb.dj, %.loopexit1926
  %or.cond13 = and i1 %i.fwe, %i.fxd
  %brmerge2303.not = select i1 %or.cond13, i1 %i.fwh, i1 false
  br i1 %brmerge2303.not, label %.preheader1899, label %.preheader1898.lr.ph

.preheader1899:                                   ; preds = %.loopexit1924.split, %.preheader1899
  %indvars.iv2701 = phi i64 [ %indvars.iv.next2702, %.preheader1899 ], [ 0, %.loopexit1924.split ] ; 5 uses
  %i.hpa = trunc nuw nsw i64 %indvars.iv2701 to i32
  %i.hpb = sub i32 %i.es, %i.hpa
  %i.hpc = mul nsw i32 %i.hpb, %i.ae              ; 8 uses
  %reass.sub = add i32 %i.hpc, 16
  %i.hpd = add nsw i64 %indvars.iv2701, %i.fwr
  %i.hpe = shl nsw i64 %i.hpd, 7                  ; 9 uses
  %indvars.iv2701.tr = trunc nuw nsw i64 %indvars.iv2701 to i32
  %i.hpf = shl nuw nsw i32 %indvars.iv2701.tr, 2
  %i.hpg = lshr i32 %i.q, %i.hpf
  %i.hph = and i32 %i.hpg, 3
  %i.hpi = sext i32 %reass.sub to i64             ; 2 uses
  %i.hpj = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.hpi
  %i.hpk = load float, ptr %i.hpj, align 4, !tbaa !33
  %i.hpl = zext nneg i32 %i.hph to i64
  %i.hpm = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.hpl
  %i.hpn = load ptr, ptr %i.hpm, align 8, !tbaa !171 ; 4 uses
  %i.hpo = getelementptr inbounds [4 x i8], ptr %i.hpn, i64 %i.hpe
  store float %i.hpk, ptr %i.hpo, align 4, !tbaa !33
  %i.hpp = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.hpi
  %i.hpq = load float, ptr %i.hpp, align 4, !tbaa !33
  %i.hpr = getelementptr inbounds [4 x i8], ptr %i.bsl, i64 %i.hpe
  store float %i.hpq, ptr %i.hpr, align 64, !tbaa !33
  %indvars.iv2701.tr2946 = trunc i64 %indvars.iv2701 to i32
  %i.hps = shl i32 %indvars.iv2701.tr2946, 2
  %i.hpt = or disjoint i32 %i.hps, 2
  %i.hpu = lshr i32 %i.q, %i.hpt
  %i.hpv = and i32 %i.hpu, 3
  %i.hpw = add i32 %i.hpc, 15
  %i.hpx = sext i32 %i.hpw to i64                 ; 2 uses
  %i.hpy = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.hpx
  %i.hpz = load float, ptr %i.hpy, align 4, !tbaa !33
  %i.hqa = zext nneg i32 %i.hpv to i64
  %i.hqb = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.hqa
  %i.hqc = load ptr, ptr %i.hqb, align 8, !tbaa !171 ; 4 uses
  %i.hqd = or disjoint i64 %i.hpe, 1              ; 2 uses
  %i.hqe = getelementptr inbounds [4 x i8], ptr %i.hqc, i64 %i.hqd
  store float %i.hpz, ptr %i.hqe, align 4, !tbaa !33
  %i.hqf = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.hpx
  %i.hqg = load float, ptr %i.hqf, align 4, !tbaa !33
  %i.hqh = getelementptr inbounds [4 x i8], ptr %i.bsl, i64 %i.hqd
  store float %i.hqg, ptr %i.hqh, align 4, !tbaa !33
  %i.hqi = add i32 %i.hpc, 14
  %i.hqj = sext i32 %i.hqi to i64                 ; 2 uses
  %i.hqk = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.hqj
  %i.hql = load float, ptr %i.hqk, align 4, !tbaa !33
  %i.hqm = or disjoint i64 %i.hpe, 2              ; 2 uses
  %i.hqn = getelementptr inbounds [4 x i8], ptr %i.hpn, i64 %i.hqm
  store float %i.hql, ptr %i.hqn, align 4, !tbaa !33
  %i.hqo = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.hqj
  %i.hqp = load float, ptr %i.hqo, align 4, !tbaa !33
  %i.hqq = getelementptr inbounds [4 x i8], ptr %i.bsl, i64 %i.hqm
  store float %i.hqp, ptr %i.hqq, align 8, !tbaa !33
  %i.hqr = add i32 %i.hpc, 13
  %i.hqs = sext i32 %i.hqr to i64                 ; 2 uses
  %i.hqt = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.hqs
  %i.hqu = load float, ptr %i.hqt, align 4, !tbaa !33
  %i.hqv = or disjoint i64 %i.hpe, 3              ; 2 uses
  %i.hqw = getelementptr inbounds [4 x i8], ptr %i.hqc, i64 %i.hqv
  store float %i.hqu, ptr %i.hqw, align 4, !tbaa !33
  %i.hqx = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.hqs
  %i.hqy = load float, ptr %i.hqx, align 4, !tbaa !33
  %i.hqz = getelementptr inbounds [4 x i8], ptr %i.bsl, i64 %i.hqv
  store float %i.hqy, ptr %i.hqz, align 4, !tbaa !33
  %i.hra = add i32 %i.hpc, 12
  %i.hrb = sext i32 %i.hra to i64                 ; 2 uses
  %i.hrc = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.hrb
  %i.hrd = load float, ptr %i.hrc, align 4, !tbaa !33
  %i.hre = or disjoint i64 %i.hpe, 4              ; 2 uses
  %i.hrf = getelementptr inbounds [4 x i8], ptr %i.hpn, i64 %i.hre
  store float %i.hrd, ptr %i.hrf, align 4, !tbaa !33
  %i.hrg = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.hrb
  %i.hrh = load float, ptr %i.hrg, align 4, !tbaa !33
  %i.hri = getelementptr inbounds [4 x i8], ptr %i.bsl, i64 %i.hre
  store float %i.hrh, ptr %i.hri, align 16, !tbaa !33
  %i.hrj = add i32 %i.hpc, 11
  %i.hrk = sext i32 %i.hrj to i64                 ; 2 uses
  %i.hrl = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.hrk
  %i.hrm = load float, ptr %i.hrl, align 4, !tbaa !33
  %i.hrn = or disjoint i64 %i.hpe, 5              ; 2 uses
  %i.hro = getelementptr inbounds [4 x i8], ptr %i.hqc, i64 %i.hrn
  store float %i.hrm, ptr %i.hro, align 4, !tbaa !33
  %i.hrp = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.hrk
  %i.hrq = load float, ptr %i.hrp, align 4, !tbaa !33
  %i.hrr = getelementptr inbounds [4 x i8], ptr %i.bsl, i64 %i.hrn
  store float %i.hrq, ptr %i.hrr, align 4, !tbaa !33
  %i.hrs = add i32 %i.hpc, 10
  %i.hrt = sext i32 %i.hrs to i64                 ; 2 uses
  %i.hru = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.hrt
  %i.hrv = load float, ptr %i.hru, align 4, !tbaa !33
  %i.hrw = or disjoint i64 %i.hpe, 6              ; 2 uses
  %i.hrx = getelementptr inbounds [4 x i8], ptr %i.hpn, i64 %i.hrw
  store float %i.hrv, ptr %i.hrx, align 4, !tbaa !33
  %i.hry = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.hrt
  %i.hrz = load float, ptr %i.hry, align 4, !tbaa !33
  %i.hsa = getelementptr inbounds [4 x i8], ptr %i.bsl, i64 %i.hrw
  store float %i.hrz, ptr %i.hsa, align 8, !tbaa !33
  %i.hsb = add i32 %i.hpc, 9
  %i.hsc = sext i32 %i.hsb to i64                 ; 2 uses
  %i.hsd = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.hsc
  %i.hse = load float, ptr %i.hsd, align 4, !tbaa !33
  %i.hsf = or disjoint i64 %i.hpe, 7              ; 2 uses
  %i.hsg = getelementptr inbounds [4 x i8], ptr %i.hqc, i64 %i.hsf
  store float %i.hse, ptr %i.hsg, align 4, !tbaa !33
  %i.hsh = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.hsc
  %i.hsi = load float, ptr %i.hsh, align 4, !tbaa !33
  %i.hsj = getelementptr inbounds [4 x i8], ptr %i.bsl, i64 %i.hsf
  store float %i.hsi, ptr %i.hsj, align 4, !tbaa !33
  %indvars.iv.next2702 = add nuw nsw i64 %indvars.iv2701, 1 ; 2 uses
  %i.hsk = icmp slt i64 %indvars.iv.next2702, %i.fws
  br i1 %i.hsk, label %.preheader1899, label %.preheader1898.lr.ph

.preheader1898.lr.ph:                             ; preds = %.preheader1899, %.loopexit1924.split
  %i.hsl = trunc i64 %i.fwx to i32
  %i.hsm = add i32 %i.hsl, 1
  %i.hsn = sitofp reassoc nsz arcp contract afn i32 %i.hsm to float ; 3 uses
  %invariant.op4897 = fmul reassoc nsz arcp contract afn float %i.hsn, %i.hsn
  br label %.preheader1898

.preheader1898:                                   ; preds = %.preheader1898.lr.ph, %._crit_edge2170
  %indvars.iv2709 = phi i64 [ 0, %.preheader1898.lr.ph ], [ %indvars.iv.next2710, %._crit_edge2170 ] ; 2 uses
  %.016262191 = phi float [ 1.000000e+00, %.preheader1898.lr.ph ], [ %i.hud, %._crit_edge2170 ] ; 3 uses
  %i.hso = phi <2 x float> [ zeroinitializer, %.preheader1898.lr.ph ], [ %.lcssa4594, %._crit_edge2170 ] ; 2 uses
  %i.hsp = phi <2 x float> [ zeroinitializer, %.preheader1898.lr.ph ], [ %.lcssa4596, %._crit_edge2170 ] ; 2 uses
  %i.hsq = mul nuw nsw i64 %indvars.iv2709, %i.fvo ; 3 uses
  br i1 %i.fvp, label %.epil.preheader4791, label %.preheader1898.new

._crit_edge2193:                                  ; preds = %._crit_edge2170
  %i.hsr = fcmp reassoc nsz arcp contract afn oge <2 x double> %.lcssa4597, splat (double f0xC00FEB852FFFFFFF)
  %i.hss = fcmp reassoc nsz arcp contract afn ole <2 x float> %.lcssa4596, splat (float 3.990000e+00)
  %i.hst = select <2 x i1> %i.hss, <2 x float> %.lcssa4596, <2 x float> splat (float 3.990000e+00)
  %i.hsu = select <2 x i1> %i.hsr, <2 x float> %i.hst, <2 x float> splat (float -3.990000e+00) ; 3 uses
  %i.hsv = fcmp reassoc nsz arcp contract afn oge <2 x double> %.lcssa4595, splat (double f0xC00FEB852FFFFFFF)
  %i.hsw = fcmp reassoc nsz arcp contract afn ole <2 x float> %.lcssa4594, splat (float 3.990000e+00)
  %i.hsx = select <2 x i1> %i.hsw, <2 x float> %.lcssa4594, <2 x float> splat (float 3.990000e+00)
  %i.hsy = select <2 x i1> %i.hsv, <2 x float> %i.hsx, <2 x float> splat (float -3.990000e+00) ; 3 uses
  %i.hsz = extractelement <2 x float> %i.hsu, i64 0 ; 4 uses
  %i.hta = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.hsz)
  %i.htb = fptosi float %i.hta to i32             ; 3 uses
  store i32 %i.htb, ptr %i.e, align 4, !tbaa !12
  %i.htc = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.hsz)
  %i.htd = fptosi float %i.htc to i32             ; 3 uses
  store i32 %i.htd, ptr %i.g, align 4, !tbaa !12
  %i.hte = fcmp reassoc nsz arcp contract afn olt float %i.hsz, 0.000000e+00
  br i1 %i.hte, label %bb.dr, label %bb.ds

._crit_edge2170.unr-lcssa:                        ; preds = %.preheader1898.new
  br i1 %lcmp.mod4796.not, label %._crit_edge2170, label %.epil.preheader4791

.epil.preheader4791:                              ; preds = %._crit_edge2170.unr-lcssa, %.preheader1898
  %indvars.iv2704.epil.init = phi i64 [ 0, %.preheader1898 ], [ %indvars.iv.next2705.1, %._crit_edge2170.unr-lcssa ]
  %.016242167.epil.init = phi float [ %.016262191, %.preheader1898 ], [ %.reass4898, %._crit_edge2170.unr-lcssa ]
  %.epil.init = phi <2 x float> [ %i.hso, %.preheader1898 ], [ %i.hwc, %._crit_edge2170.unr-lcssa ]
  %.epil.init4795 = phi <2 x float> [ %i.hsp, %.preheader1898 ], [ %i.hvs, %._crit_edge2170.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod4801)
  %i.htf = fpext reassoc nsz arcp contract afn float %.016242167.epil.init to double
  %i.htg = add nuw nsw i64 %indvars.iv2704.epil.init, %i.hsq ; 4 uses
  %i.hth = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.htg
  %i.hti = load double, ptr %i.hth, align 8, !tbaa !216
  %i.htj = fpext reassoc nsz arcp contract afn <2 x float> %.epil.init4795 to <2 x double>
  %i.htk = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.htg
  %i.htl = load double, ptr %i.htk, align 8, !tbaa !216
  %i.htm = insertelement <2 x double> poison, double %i.hti, i64 0
  %i.htn = insertelement <2 x double> %i.htm, double %i.htl, i64 1
  %i.hto = insertelement <2 x double> poison, double %i.htf, i64 0
  %i.htp = shufflevector <2 x double> %i.hto, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.htq = fmul reassoc nsz arcp contract afn <2 x double> %i.htn, %i.htp
  %i.htr = fadd reassoc nsz arcp contract afn <2 x double> %i.htq, %i.htj ; 2 uses
  %i.hts = fptrunc reassoc nsz arcp contract afn <2 x double> %i.htr to <2 x float>
  %i.htt = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %i.htg
  %i.htu = load double, ptr %i.htt, align 8, !tbaa !216
  %i.htv = fpext reassoc nsz arcp contract afn <2 x float> %.epil.init to <2 x double>
  %i.htw = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.htg
  %i.htx = load double, ptr %i.htw, align 8, !tbaa !216
  %i.hty = insertelement <2 x double> poison, double %i.htu, i64 0
  %i.htz = insertelement <2 x double> %i.hty, double %i.htx, i64 1
  %i.hua = fmul reassoc nsz arcp contract afn <2 x double> %i.htz, %i.htp
  %i.hub = fadd reassoc nsz arcp contract afn <2 x double> %i.hua, %i.htv ; 2 uses
  %i.huc = fptrunc reassoc nsz arcp contract afn <2 x double> %i.hub to <2 x float>
  br label %._crit_edge2170

._crit_edge2170:                                  ; preds = %._crit_edge2170.unr-lcssa, %.epil.preheader4791
  %.lcssa4597 = phi <2 x double> [ %i.hvr, %._crit_edge2170.unr-lcssa ], [ %i.htr, %.epil.preheader4791 ]
  %.lcssa4596 = phi <2 x float> [ %i.hvs, %._crit_edge2170.unr-lcssa ], [ %i.hts, %.epil.preheader4791 ] ; 3 uses
  %.lcssa4595 = phi <2 x double> [ %i.hwb, %._crit_edge2170.unr-lcssa ], [ %i.hub, %.epil.preheader4791 ]
  %.lcssa4594 = phi <2 x float> [ %i.hwc, %._crit_edge2170.unr-lcssa ], [ %i.huc, %.epil.preheader4791 ] ; 3 uses
  %i.hud = fmul reassoc nsz arcp contract afn float %.016262191, %i.fwl
  %indvars.iv.next2710 = add nuw nsw i64 %indvars.iv2709, 1 ; 2 uses
  %exitcond2713.not = icmp eq i64 %indvars.iv.next2710, %i.fvo
  br i1 %exitcond2713.not, label %._crit_edge2193, label %.preheader1898

.preheader1898.new:                               ; preds = %.preheader1898, %.preheader1898.new
  %indvars.iv2704 = phi i64 [ %indvars.iv.next2705.1, %.preheader1898.new ], [ 0, %.preheader1898 ] ; 3 uses
  %.016242167 = phi float [ %.reass4898, %.preheader1898.new ], [ %.016262191, %.preheader1898 ] ; 3 uses
  %i.hue = phi <2 x float> [ %i.hwc, %.preheader1898.new ], [ %i.hso, %.preheader1898 ]
  %i.huf = phi <2 x float> [ %i.hvs, %.preheader1898.new ], [ %i.hsp, %.preheader1898 ]
  %niter4803 = phi i64 [ %niter4803.next.1, %.preheader1898.new ], [ 0, %.preheader1898 ]
  %i.hug = fpext reassoc nsz arcp contract afn float %.016242167 to double
  %i.huh = add nuw nsw i64 %indvars.iv2704, %i.hsq ; 4 uses
  %i.hui = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.huh
  %i.huj = load double, ptr %i.hui, align 8, !tbaa !216
  %i.huk = fpext reassoc nsz arcp contract afn <2 x float> %i.huf to <2 x double>
  %i.hul = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.huh
  %i.hum = load double, ptr %i.hul, align 8, !tbaa !216
  %i.hun = insertelement <2 x double> poison, double %i.huj, i64 0
  %i.huo = insertelement <2 x double> %i.hun, double %i.hum, i64 1
  %i.hup = insertelement <2 x double> poison, double %i.hug, i64 0
  %i.huq = shufflevector <2 x double> %i.hup, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hur = fmul reassoc nsz arcp contract afn <2 x double> %i.huo, %i.huq
  %i.hus = fadd reassoc nsz arcp contract afn <2 x double> %i.hur, %i.huk
  %i.hut = fptrunc reassoc nsz arcp contract afn <2 x double> %i.hus to <2 x float>
  %i.huu = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %i.huh
  %i.huv = load double, ptr %i.huu, align 8, !tbaa !216
  %i.huw = fpext reassoc nsz arcp contract afn <2 x float> %i.hue to <2 x double>
  %i.hux = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.huh
  %i.huy = load double, ptr %i.hux, align 8, !tbaa !216
  %i.huz = insertelement <2 x double> poison, double %i.huv, i64 0
  %i.hva = insertelement <2 x double> %i.huz, double %i.huy, i64 1
  %i.hvb = fmul reassoc nsz arcp contract afn <2 x double> %i.hva, %i.huq
  %i.hvc = fadd reassoc nsz arcp contract afn <2 x double> %i.hvb, %i.huw
  %i.hvd = fptrunc reassoc nsz arcp contract afn <2 x double> %i.hvc to <2 x float>
  %i.hve = fmul reassoc nsz arcp contract afn float %.016242167, %i.hsn
  %indvars.iv.next2705 = or disjoint i64 %indvars.iv2704, 1
  %i.hvf = fpext reassoc nsz arcp contract afn float %i.hve to double
  %i.hvg = add nuw nsw i64 %indvars.iv.next2705, %i.hsq ; 4 uses
  %i.hvh = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.hvg
  %i.hvi = load double, ptr %i.hvh, align 8, !tbaa !216
  %i.hvj = fpext reassoc nsz arcp contract afn <2 x float> %i.hut to <2 x double>
  %i.hvk = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.hvg
  %i.hvl = load double, ptr %i.hvk, align 8, !tbaa !216
  %i.hvm = insertelement <2 x double> poison, double %i.hvi, i64 0
  %i.hvn = insertelement <2 x double> %i.hvm, double %i.hvl, i64 1
  %i.hvo = insertelement <2 x double> poison, double %i.hvf, i64 0
  %i.hvp = shufflevector <2 x double> %i.hvo, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hvq = fmul reassoc nsz arcp contract afn <2 x double> %i.hvn, %i.hvp
  %i.hvr = fadd reassoc nsz arcp contract afn <2 x double> %i.hvq, %i.hvj ; 2 uses
  %i.hvs = fptrunc reassoc nsz arcp contract afn <2 x double> %i.hvr to <2 x float> ; 3 uses
  %i.hvt = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %i.hvg
  %i.hvu = load double, ptr %i.hvt, align 8, !tbaa !216
  %i.hvv = fpext reassoc nsz arcp contract afn <2 x float> %i.hvd to <2 x double>
  %i.hvw = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.hvg
  %i.hvx = load double, ptr %i.hvw, align 8, !tbaa !216
  %i.hvy = insertelement <2 x double> poison, double %i.hvu, i64 0
  %i.hvz = insertelement <2 x double> %i.hvy, double %i.hvx, i64 1
  %i.hwa = fmul reassoc nsz arcp contract afn <2 x double> %i.hvz, %i.hvp
  %i.hwb = fadd reassoc nsz arcp contract afn <2 x double> %i.hwa, %i.hvv ; 2 uses
  %i.hwc = fptrunc reassoc nsz arcp contract afn <2 x double> %i.hwb to <2 x float> ; 3 uses
  %.reass4898 = fmul reassoc nsz arcp contract afn float %.016242167, %invariant.op4897 ; 2 uses
  %indvars.iv.next2705.1 = add nuw nsw i64 %indvars.iv2704, 2 ; 2 uses
  %niter4803.next.1 = add i64 %niter4803, 2       ; 2 uses
  %niter4803.ncmp.1 = icmp eq i64 %niter4803.next.1, %unroll_iter4802
  br i1 %niter4803.ncmp.1, label %._crit_edge2170.unr-lcssa, label %.preheader1898.new

.lr.ph2208:                                       ; preds = %.preheader1920
  %i.hwd = add nsw i32 %i.fxc, -4                 ; 2 uses
  %i.hwe = zext nneg i32 %i.hwd to i64
  br label %bb.dy

bb.dr:                                            ; preds = %._crit_edge2193
  store i32 %i.htd, ptr %i.e, align 4, !tbaa !12
  store i32 %i.htb, ptr %i.g, align 4, !tbaa !12
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %._crit_edge2193
  %i.hwf = phi i32 [ %i.htd, %bb.dr ], [ %i.htb, %._crit_edge2193 ]
  %i.hwg = sitofp reassoc nsz arcp contract afn i32 %i.hwf to float
  %i.hwh = fsub reassoc nsz arcp contract afn float %i.hsz, %i.hwg
  %i.hwi = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.hwh) ; 2 uses
  store float %i.hwi, ptr %i.j, align 4, !tbaa !33
  %i.hwj = extractelement <2 x float> %i.hsu, i64 1 ; 4 uses
  %i.hwk = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.hwj)
  %i.hwl = fptosi float %i.hwk to i32             ; 3 uses
  store i32 %i.hwl, ptr %i.d, align 4, !tbaa !12
  %i.hwm = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.hwj)
  %i.hwn = fptosi float %i.hwm to i32             ; 3 uses
  store i32 %i.hwn, ptr %i.f, align 4, !tbaa !12
  %i.hwo = fcmp reassoc nsz arcp contract afn olt float %i.hwj, 0.000000e+00
  br i1 %i.hwo, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  store i32 %i.hwn, ptr %i.d, align 4, !tbaa !12
  store i32 %i.hwl, ptr %i.f, align 4, !tbaa !12
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %i.hwp = phi i32 [ %i.hwn, %bb.dt ], [ %i.hwl, %bb.ds ]
  %i.hwq = sitofp reassoc nsz arcp contract afn i32 %i.hwp to float
  %i.hwr = fsub reassoc nsz arcp contract afn float %i.hwj, %i.hwq
  %i.hws = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.hwr) ; 2 uses
  store float %i.hws, ptr %i.i, align 4, !tbaa !33
  %i.hwt = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.hsu, zeroinitializer
  %i.hwu = select <2 x i1> %i.hwt, <2 x i32> splat (i32 2), <2 x i32> splat (i32 -2)
  %i.hwv = shufflevector <2 x i32> %i.hwu, <2 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 1>
  call void @llvm.masked.store.v4i32.p0(<4 x i32> %i.hwv, ptr align 16 %i.c, <4 x i1> <i1 true, i1 false, i1 false, i1 true>), !tbaa !12
  %i.hww = extractelement <2 x float> %i.hsy, i64 0 ; 4 uses
  %i.hwx = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.hww)
  %i.hwy = fptosi float %i.hwx to i32             ; 3 uses
  store i32 %i.hwy, ptr %i.hk, align 4, !tbaa !12
  %i.hwz = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.hww)
  %i.hxa = fptosi float %i.hwz to i32             ; 3 uses
  store i32 %i.hxa, ptr %i.hl, align 4, !tbaa !12
  %i.hxb = fcmp reassoc nsz arcp contract afn olt float %i.hww, 0.000000e+00
  br i1 %i.hxb, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  store i32 %i.hxa, ptr %i.hk, align 4, !tbaa !12
  store i32 %i.hwy, ptr %i.hl, align 4, !tbaa !12
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du
  %i.hxc = phi i32 [ %i.hxa, %bb.dv ], [ %i.hwy, %bb.du ]
  %i.hxd = sitofp reassoc nsz arcp contract afn i32 %i.hxc to float
  %i.hxe = fsub reassoc nsz arcp contract afn float %i.hww, %i.hxd
  %i.hxf = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.hxe) ; 2 uses
  store float %i.hxf, ptr %i.fs, align 4, !tbaa !33
  %i.hxg = extractelement <2 x float> %i.hsy, i64 1 ; 4 uses
  %i.hxh = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.hxg)
  %i.hxi = fptosi float %i.hxh to i32             ; 3 uses
  store i32 %i.hxi, ptr %i.hm, align 4, !tbaa !12
  %i.hxj = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.hxg)
  %i.hxk = fptosi float %i.hxj to i32             ; 3 uses
  store i32 %i.hxk, ptr %i.hn, align 4, !tbaa !12
  %i.hxl = fcmp reassoc nsz arcp contract afn olt float %i.hxg, 0.000000e+00
  br i1 %i.hxl, label %bb.dx, label %.preheader1920

bb.dx:                                            ; preds = %bb.dw
  store i32 %i.hxk, ptr %i.hm, align 4, !tbaa !12
  store i32 %i.hxi, ptr %i.hn, align 4, !tbaa !12
  br label %.preheader1920

.preheader1920:                                   ; preds = %bb.dx, %bb.dw
  %i.hxm = phi i32 [ %i.hxk, %bb.dx ], [ %i.hxi, %bb.dw ]
  %i.hxn = sitofp reassoc nsz arcp contract afn i32 %i.hxm to float
  %i.hxo = fsub reassoc nsz arcp contract afn float %i.hxg, %i.hxn
  %i.hxp = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.hxo) ; 2 uses
  store float %i.hxp, ptr %i.fr, align 4, !tbaa !33
  %i.hxq = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.hsy, zeroinitializer
  %i.hxr = select <2 x i1> %i.hxq, <2 x i32> splat (i32 2), <2 x i32> splat (i32 -2)
  %i.hxs = shufflevector <2 x i32> %i.hxr, <2 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 1>
  call void @llvm.masked.store.v4i32.p0(<4 x i32> %i.hxs, ptr align 8 %i.ho, <4 x i1> <i1 true, i1 false, i1 false, i1 true>), !tbaa !12
  br i1 %i.fwn, label %.lr.ph2208, label %._crit_edge2209

._crit_edge2209:                                  ; preds = %._crit_edge2206, %.preheader1920
  %i.hxt = fmul reassoc nsz arcp contract afn float %i.hws, 5.000000e-01
  store float %i.hxt, ptr %i.i, align 4, !tbaa !33
  %i.hxu = fmul reassoc nsz arcp contract afn float %i.hxp, 5.000000e-01
  store float %i.hxu, ptr %i.fr, align 4, !tbaa !33
  %i.hxv = fmul reassoc nsz arcp contract afn float %i.hwi, 5.000000e-01
  store float %i.hxv, ptr %i.j, align 4, !tbaa !33
  %i.hxw = fmul reassoc nsz arcp contract afn float %i.hxf, 5.000000e-01
  store float %i.hxw, ptr %i.fs, align 4, !tbaa !33
  br i1 %i.fwp, label %.lr.ph2217, label %._crit_edge2226

.lr.ph2217:                                       ; preds = %._crit_edge2209
  %i.hxx = add nsw i32 %i.fxc, -8                 ; 2 uses
  br label %bb.ea

bb.dy:                                            ; preds = %.lr.ph2208, %._crit_edge2206
  %indvars.iv2720 = phi i64 [ 4, %.lr.ph2208 ], [ %indvars.iv.next2721, %._crit_edge2206 ] ; 4 uses
  %indvars.iv2720.tr = trunc nuw i64 %indvars.iv2720 to i32
  %i.hxy = shl nuw i32 %indvars.iv2720.tr, 1
  %i.hxz = and i32 %i.hxy, 14                     ; 2 uses
  %i.hya = shl nuw nsw i32 %i.hxz, 1
  %i.hyb = lshr i32 %i.q, %i.hya                  ; 2 uses
  %i.hyc = and i32 %i.hyb, 1                      ; 2 uses
  %i.hyd = or disjoint i32 %i.hyc, 4
  %i.hye = icmp slt i32 %i.hyd, %i.hwd
  br i1 %i.hye, label %.lr.ph2205, label %._crit_edge2206

.lr.ph2205:                                       ; preds = %bb.dy
  %i.hyf = or disjoint i32 %i.hyc, %i.hxz
  %i.hyg = shl nuw nsw i32 %i.hyf, 1
  %i.hyh = lshr i32 %i.q, %i.hyg
  %i.hyi = and i32 %i.hyh, 3
  %i.hyj = zext nneg i32 %i.hyi to i64            ; 7 uses
  %i.hyk = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.hyj
  %i.hyl = load float, ptr %i.hyk, align 4, !tbaa !33 ; 2 uses
  %i.hym = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.hyj
  %i.hyn = load i32, ptr %i.hym, align 4, !tbaa !12
  %i.hyo = trunc nuw nsw i64 %indvars.iv2720 to i32 ; 2 uses
  %i.hyp = add nsw i32 %i.hyn, %i.hyo
  %i.hyq = shl nsw i32 %i.hyp, 7
  %i.hyr = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.hyj
  %i.hys = load i32, ptr %i.hyr, align 4, !tbaa !12
  %i.hyt = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.hyj
  %i.hyu = load i32, ptr %i.hyt, align 4, !tbaa !12
  %i.hyv = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.hyj
  %i.hyw = load i32, ptr %i.hyv, align 4, !tbaa !12
  %i.hyx = add nsw i32 %i.hyw, %i.hyo
  %i.hyy = shl nsw i32 %i.hyx, 7
  %i.hyz = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.hyj
  %i.hza = load float, ptr %i.hyz, align 4, !tbaa !33
  %i.hzb = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.hyj
  %i.hzc = load ptr, ptr %i.hzb, align 8, !tbaa !171
  %i.hzd = shl nuw nsw i64 %indvars.iv2720, 7
  %i.hze = and i32 %i.hyb, 1
  %i.hzf = or disjoint i32 %i.hze, 4
  %i.hzg = zext nneg i32 %i.hzf to i64
  %i.hzh = sext i32 %i.hyq to i64
  %i.hzi = sext i32 %i.hys to i64                 ; 2 uses
  %i.hzj = sext i32 %i.hyu to i64                 ; 2 uses
  %i.hzk = sext i32 %i.hyy to i64
  %invariant.gep2979 = getelementptr [4 x i8], ptr %i.bsl, i64 %i.hzi
  %invariant.gep2981 = getelementptr [4 x i8], ptr %i.bsl, i64 %i.hzj
  %invariant.gep2983 = getelementptr [4 x i8], ptr %i.bsl, i64 %i.hzi
  %invariant.gep2985 = getelementptr [4 x i8], ptr %i.bsl, i64 %i.hzj
  br label %bb.dz

._crit_edge2206:                                  ; preds = %bb.dz, %bb.dy
  %indvars.iv.next2721 = add nuw nsw i64 %indvars.iv2720, 1 ; 2 uses
  %i.hzl = icmp slt i64 %indvars.iv.next2721, %i.fwt
  br i1 %i.hzl, label %bb.dy, label %._crit_edge2209

bb.dz:                                            ; preds = %.lr.ph2205, %bb.dz
  %indvars.iv2717 = phi i64 [ %i.hzg, %.lr.ph2205 ], [ %indvars.iv.next2718, %bb.dz ] ; 4 uses
  %i.hzm = add nsw i64 %indvars.iv2717, %i.hzh    ; 2 uses
  %gep2980 = getelementptr [4 x i8], ptr %invariant.gep2979, i64 %i.hzm
  %i.hzn = load float, ptr %gep2980, align 4, !tbaa !33
  %gep2982 = getelementptr [4 x i8], ptr %invariant.gep2981, i64 %i.hzm
  %i.hzo = load float, ptr %gep2982, align 4, !tbaa !33 ; 2 uses
  %i.hzp = fsub reassoc nsz arcp contract afn float %i.hzn, %i.hzo
  %i.hzq = fmul reassoc nsz arcp contract afn float %i.hzp, %i.hyl
  %i.hzr = fadd reassoc nsz arcp contract afn float %i.hzq, %i.hzo ; 2 uses
  %i.hzs = add nsw i64 %indvars.iv2717, %i.hzk    ; 2 uses
  %gep2984 = getelementptr [4 x i8], ptr %invariant.gep2983, i64 %i.hzs
  %i.hzt = load float, ptr %gep2984, align 4, !tbaa !33
  %gep2986 = getelementptr [4 x i8], ptr %invariant.gep2985, i64 %i.hzs
  %i.hzu = load float, ptr %gep2986, align 4, !tbaa !33 ; 2 uses
  %i.hzv = fsub reassoc nsz arcp contract afn float %i.hzt, %i.hzu
  %i.hzw = fmul reassoc nsz arcp contract afn float %i.hzv, %i.hyl
  %i.hzx = fsub reassoc nsz arcp contract afn float %i.hzu, %i.hzr
  %i.hzy = fadd reassoc nsz arcp contract afn float %i.hzx, %i.hzw
  %i.hzz = fmul reassoc nsz arcp contract afn float %i.hzy, %i.hza
  %i.iaa = fadd reassoc nsz arcp contract afn float %i.hzz, %i.hzr ; 2 uses
  %i.iab = add nuw nsw i64 %indvars.iv2717, %i.hzd ; 2 uses
  %i.iac = getelementptr inbounds nuw [4 x i8], ptr %i.hzc, i64 %i.iab
  %i.iad = load float, ptr %i.iac, align 4, !tbaa !33
  %i.iae = fsub reassoc nsz arcp contract afn float %i.iaa, %i.iad
  %i.iaf = lshr i64 %i.iab, 1
  %i.iag = and i64 %i.iaf, 2147483647             ; 2 uses
  %i.iah = getelementptr inbounds nuw [4 x i8], ptr %i.bsn, i64 %i.iag
  store float %i.iae, ptr %i.iah, align 4, !tbaa !33
  %i.iai = getelementptr inbounds nuw [4 x i8], ptr %i.bso, i64 %i.iag
  store float %i.iaa, ptr %i.iai, align 4, !tbaa !33
  %indvars.iv.next2718 = add nuw nsw i64 %indvars.iv2717, 2 ; 2 uses
  %i.iaj = icmp samesign ult i64 %indvars.iv.next2718, %i.hwe
  br i1 %i.iaj, label %bb.dz, label %._crit_edge2206
end_hunk_2
