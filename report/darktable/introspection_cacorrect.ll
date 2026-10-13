Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_cacorrect?download=true
inline.NumInlined: 74
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 42
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 80
begin_hunk_0_@process:bb.a
  %i.an = extractelement <2 x i32> %i.am, i64 0   ; 17 uses
  %i.ao = sext i32 %i.an to i64                   ; 7 uses
  %i.ap = tail call i64 @dt_round_size(i64 noundef %i.ao, i64 noundef 16) #20
  %i.aq = extractelement <2 x i32> %i.am, i64 1   ; 7 uses
  %i.ar = add nsw i32 %i.aq, 2
  %i.as = sext i32 %i.ar to i64
  %i.at = mul i64 %i.ap, %i.as                    ; 2 uses
  %i.au = shl i64 %i.ak, 2                        ; 3 uses
  %i.av = tail call ptr @dt_alloc_aligned(i64 noundef %i.au) #20 ; 199 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.av, i64 64) ]
  %.not1779 = icmp eq ptr %i.av, null
  %indvars.iv2591.sroa.gep4493 = getelementptr inbounds nuw i8, ptr %i.m, i64 256
  %indvars.iv2563.sroa.gep4495 = getelementptr inbounds nuw i8, ptr %i.m, i64 256
  %indvars.iv2591.sroa.gep4498 = getelementptr inbounds nuw i8, ptr %i.l, i64 4096
  %indvars.iv2563.sroa.gep4501 = getelementptr inbounds nuw i8, ptr %i.l, i64 4096
  %indvars.iv2563.sroa.gep4504 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %indvars.iv2591.sroa.gep4507 = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  br i1 %.not1779, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !170
  %i.ay = sext i32 %i.ax to i64
  tail call void @dt_iop_copy_image_roi(ptr noundef %3, ptr noundef %2, i64 noundef %i.ay, ptr noundef nonnull %4, ptr noundef %5) #20
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.5) #20
  br label %bb.ey

bb.c:                                             ; preds = %bb.a
  %i.az = and i32 %.val, 256
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
  %lcmp.mod4275 = trunc i32 %i.ah to i1
  tail call void @llvm.assume(i1 %lcmp.mod4275)
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
  %.01638 = phi ptr [ null, %bb.d ], [ %i.bp, %.preheader1976 ], [ %i.bp, %.lr.ph1991.epil.preheader ], [ %i.bp, %bb.j ], [ %i.bp, %.loopexit1977.loopexit.unr-lcssa ] ; 6 uses
  %.01634 = phi ptr [ null, %bb.d ], [ %i.bn, %.preheader1976 ], [ %i.bn, %.lr.ph1991.epil.preheader ], [ %i.bn, %bb.j ], [ %i.bn, %.loopexit1977.loopexit.unr-lcssa ] ; 24 uses
  %.01630 = phi ptr [ null, %bb.d ], [ %i.bm, %.preheader1976 ], [ %i.bm, %.lr.ph1991.epil.preheader ], [ %i.bm, %bb.j ], [ %i.bm, %.loopexit1977.loopexit.unr-lcssa ] ; 24 uses
  %.016343943 = ptrtoaddr ptr %.01634 to i64      ; 2 uses
  %.016303944 = ptrtoaddr ptr %.01630 to i64      ; 2 uses
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
  %i.dv = sitofp <2 x i32> %i.ds to <2 x float>
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
  %i.ek = getelementptr [4 x i8], ptr %i.ei, i64 %i.ej ; 22 uses
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
  %invariant.gep2969 = getelementptr [16 x i8], ptr %i.ek, i64 %i.fv ; 14 uses
  %invariant.gep2971 = getelementptr [16 x i8], ptr %i.ek, i64 %i.fw ; 14 uses
  %invariant.gep2973 = getelementptr [16 x i8], ptr %i.ek, i64 %i.fx ; 16 uses
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
  %scevgep3023 = getelementptr i8, ptr %i.dq, i64 4
  %scevgep3048 = getelementptr i8, ptr %i.dq, i64 4
  %scevgep3135 = getelementptr inbounds nuw i8, ptr %i.l, i64 2048
  %scevgep3184 = getelementptr inbounds nuw i8, ptr %i.l, i64 2048
  %i.hq = shl nuw nsw i64 %wide.trip.count2534, 4 ; 16 uses
  %i.hr = shl nsw i64 %i.ej, 2                    ; 28 uses
  %i.hs = getelementptr i8, ptr %i.ei, i64 %i.hq
  %i.ht = getelementptr i8, ptr %i.hs, i64 %i.hr  ; 2 uses
  %scevgep3329 = getelementptr i8, ptr %i.ht, i64 -12
  %i.hu = shl nsw i64 %i.fx, 4                    ; 7 uses
  %i.hv = getelementptr i8, ptr %i.ei, i64 %i.hu
  %i.hw = getelementptr i8, ptr %i.hv, i64 %i.hq
  %i.hx = getelementptr i8, ptr %i.hw, i64 %i.hr  ; 2 uses
  %scevgep3330 = getelementptr i8, ptr %i.hx, i64 -12 ; 7 uses
  %i.hy = getelementptr i8, ptr %i.ei, i64 %i.hr  ; 2 uses
  %i.hz = getelementptr i8, ptr %i.ei, i64 %i.hq
  %i.ia = getelementptr i8, ptr %i.hz, i64 %i.hr  ; 2 uses
  %i.ib = getelementptr i8, ptr %i.ei, i64 %i.hu
  %i.ic = getelementptr i8, ptr %i.ib, i64 %i.hr  ; 4 uses
  %i.id = insertelement <2 x ptr> poison, ptr %i.hy, i64 0
  %i.ie = insertelement <2 x ptr> %i.id, ptr %i.ic, i64 1
  %i.if = getelementptr i8, <2 x ptr> %i.ie, i64 4 ; 2 uses
  %i.ig = shufflevector <2 x ptr> %i.if, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %scevgep3333 = getelementptr i8, ptr %i.ic, i64 4 ; 2 uses
  %i.ih = getelementptr i8, ptr %i.ei, i64 %i.hu
  %i.ii = getelementptr i8, ptr %i.ih, i64 %i.hq
  %i.ij = getelementptr i8, ptr %i.ii, i64 %i.hr  ; 5 uses
  %i.ik = insertelement <4 x ptr> poison, ptr %i.ht, i64 0
  %i.il = insertelement <4 x ptr> %i.ik, ptr %i.hx, i64 2
  %i.im = insertelement <4 x ptr> %i.il, ptr %i.ij, i64 3
  %i.in = shufflevector <4 x ptr> %i.im, <4 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.io = getelementptr i8, <4 x ptr> %i.in, <4 x i64> <i64 -12, i64 -12, i64 -12, i64 -8> ; 5 uses
  %i.ip = insertelement <2 x ptr> poison, ptr %i.ia, i64 0
  %i.iq = insertelement <2 x ptr> %i.ip, ptr %i.ij, i64 1
  %i.ir = getelementptr i8, <2 x ptr> %i.iq, i64 -8 ; 2 uses
  %i.is = shufflevector <2 x ptr> %i.ir, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1> ; 3 uses
  %scevgep3334 = getelementptr i8, ptr %i.ij, i64 -8 ; 3 uses
  %i.it = getelementptr i8, ptr %i.ei, i64 %i.hr  ; 5 uses
  %i.iu = insertelement <2 x ptr> poison, ptr %i.ic, i64 0
  %i.iv = insertelement <2 x ptr> %i.iu, ptr %i.it, i64 1
  %i.iw = getelementptr i8, <2 x ptr> %i.iv, <2 x i64> <i64 4, i64 8> ; 2 uses
  %i.ix = shufflevector <2 x ptr> %i.iw, <2 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %scevgep3335 = getelementptr i8, ptr %i.it, i64 8 ; 2 uses
  %i.iy = getelementptr i8, ptr %i.ei, i64 %i.hq
  %i.iz = getelementptr i8, ptr %i.iy, i64 %i.hr  ; 4 uses
  %i.ja = insertelement <2 x ptr> poison, ptr %i.ij, i64 0
  %i.jb = insertelement <2 x ptr> %i.ja, ptr %i.iz, i64 1
  %i.jc = getelementptr i8, <2 x ptr> %i.jb, <2 x i64> <i64 -8, i64 -4>
  %i.jd = shufflevector <2 x ptr> %i.jc, <2 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %scevgep3336 = getelementptr i8, ptr %i.iz, i64 -4 ; 4 uses
  %i.je = getelementptr i8, ptr %i.ei, i64 %i.hu
  %i.jf = getelementptr i8, ptr %i.je, i64 %i.hr  ; 5 uses
end_hunk_0
begin_hunk_1_@process:bb.a
  %i.iik = load float, ptr %gep2988, align 4, !tbaa !33
  %i.iil = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %indvars.iv2728
  store float %i.iik, ptr %i.iil, align 4, !tbaa !33
  %indvars.iv.next2731 = add nuw nsw i64 %indvars.iv2730, 2 ; 2 uses
  %indvars.iv.next2729 = add nsw i64 %indvars.iv2728, 1
  %i.iim = icmp samesign ult i64 %indvars.iv.next2731, %i.ibc
  br i1 %i.iim, label %vec.epilog.scalar.ph3077, label %._crit_edge2223, !llvm.loop !124

.lr.ph2237:                                       ; preds = %.preheader1969, %._crit_edge2235
  %indvars.iv2753 = phi i64 [ %indvars.iv.next2754, %._crit_edge2235 ], [ 0, %.preheader1969 ] ; 4 uses
  %i.iin = mul i64 %i.hp, %indvars.iv2753
  %i.iio = getelementptr i8, ptr %i.av, i64 %i.iin
  %scevgep3020 = getelementptr i8, ptr %i.iio, i64 4
  %i.iip = trunc nuw nsw i64 %indvars.iv2753 to i32
  %i.iiq = shl i32 %i.iip, 2
  %i.iir = and i32 %i.iiq, 28
  %i.iis = lshr i32 %i.q, %i.iir                  ; 2 uses
  %i.iit = and i32 %i.iis, 1                      ; 2 uses
  %i.iiu = icmp slt i32 %i.iit, %i.ae
  br i1 %i.iiu, label %iter.check, label %._crit_edge2235

iter.check:                                       ; preds = %.lr.ph2237
  %i.iiv = mul nsw i64 %indvars.iv2753, %i.af     ; 2 uses
  %i.iiw = trunc nsw i64 %i.iiv to i32
  %i.iix = add nsw i32 %i.iit, %i.iiw
  %i.iiy = ashr i32 %i.iix, 1
  %i.iiz = sext i32 %i.iiy to i64                 ; 8 uses
  %i.ija = and i32 %i.iis, 1
  %i.ijb = zext nneg i32 %i.ija to i64            ; 9 uses
  %invariant.gep2989 = getelementptr [4 x i8], ptr %i.av, i64 %i.iiv ; 7 uses
  %i.ijc = xor i64 %i.ijb, -1
  %i.ijd = add nsw i64 %i.ijc, %i.af              ; 3 uses
  %i.ije = lshr i64 %i.ijd, 1
  %i.ijf = add nuw i64 %i.ije, 1                  ; 5 uses
  %min.iters.check = icmp ult i64 %i.ijd, 14
  br i1 %min.iters.check, label %.lr.ph2234.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ijg = shl nuw nsw i64 %i.ijb, 2              ; 2 uses
  %scevgep = getelementptr i8, ptr %invariant.gep2989, i64 %i.ijg
  %i.ijh = xor i64 %i.ijb, -1
  %i.iji = add nsw i64 %i.ijh, %i.af
  %i.ijj = lshr i64 %i.iji, 1                     ; 2 uses
  %i.ijk = shl i64 %i.ijj, 3
  %i.ijl = getelementptr i8, ptr %scevgep3020, i64 %i.ijk
  %scevgep3021 = getelementptr i8, ptr %i.ijl, i64 %i.ijg
  %i.ijm = shl nsw i64 %i.iiz, 2
  %scevgep3022 = getelementptr i8, ptr %i.dq, i64 %i.ijm
  %i.ijn = add i64 %i.ijj, %i.iiz
  %i.ijo = shl i64 %i.ijn, 2
  %scevgep3024 = getelementptr i8, ptr %scevgep3023, i64 %i.ijo
  %bound0 = icmp ult ptr %scevgep, %scevgep3024
  %bound1 = icmp ult ptr %scevgep3022, %scevgep3021
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph2234.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check3025 = icmp ult i64 %i.ijd, 62
  br i1 %min.iters.check3025, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ijp = and i64 %i.ijf, 24
  %n.vec = and i64 %i.ijf, -32                    ; 5 uses
  %i.ijq = shl i64 %n.vec, 1
  %i.ijr = or disjoint i64 %i.ijq, %i.ijb         ; 2 uses
  %i.ijs = add i64 %n.vec, %i.iiz
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %i.ijb, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = or disjoint <8 x i64> %broadcast.splat, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>
  %invariant.gep4573 = getelementptr [4 x i8], ptr %i.dq, i64 %i.iiz
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %step.add = add nuw nsw <8 x i64> %vec.ind, splat (i64 16)
  %step.add.2 = add nuw nsw <8 x i64> %vec.ind, splat (i64 32)
  %step.add.3 = add nuw nsw <8 x i64> %vec.ind, splat (i64 48)
  %gep4574 = getelementptr [4 x i8], ptr %invariant.gep4573, i64 %index ; 4 uses
  %i.ijt = getelementptr inbounds nuw i8, ptr %gep4574, i64 32
  %i.iju = getelementptr inbounds nuw i8, ptr %gep4574, i64 64
  %i.ijv = getelementptr inbounds nuw i8, ptr %gep4574, i64 96
  %wide.load = load <8 x float>, ptr %gep4574, align 4, !tbaa !33, !alias.scope !228
  %wide.load3026 = load <8 x float>, ptr %i.ijt, align 4, !tbaa !33, !alias.scope !228
  %wide.load3027 = load <8 x float>, ptr %i.iju, align 4, !tbaa !33, !alias.scope !228
  %wide.load3028 = load <8 x float>, ptr %i.ijv, align 4, !tbaa !33, !alias.scope !228
  %wide.gep = getelementptr [4 x i8], ptr %invariant.gep2989, <8 x i64> %vec.ind
  %wide.gep3029 = getelementptr [4 x i8], ptr %invariant.gep2989, <8 x i64> %step.add
  %wide.gep3030 = getelementptr [4 x i8], ptr %invariant.gep2989, <8 x i64> %step.add.2
  %wide.gep3031 = getelementptr [4 x i8], ptr %invariant.gep2989, <8 x i64> %step.add.3
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %wide.load, <8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true)), !tbaa !33, !alias.scope !229, !noalias !228
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %wide.load3026, <8 x ptr> align 4 %wide.gep3029, <8 x i1> splat (i1 true)), !tbaa !33, !alias.scope !229, !noalias !228
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %wide.load3027, <8 x ptr> align 4 %wide.gep3030, <8 x i1> splat (i1 true)), !tbaa !33, !alias.scope !229, !noalias !228
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %wide.load3028, <8 x ptr> align 4 %wide.gep3031, <8 x i1> splat (i1 true)), !tbaa !33, !alias.scope !229, !noalias !228
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 64)
  %i.ijw = icmp eq i64 %index.next, %n.vec
  br i1 %i.ijw, label %middle.block, label %vector.body, !llvm.loop !128

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ijf, %n.vec
  br i1 %cmp.n, label %._crit_edge2235, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ijp, 0
  br i1 %min.epilog.iters.check, label %.lr.ph2234.preheader, label %vec.epilog.ph, !prof !177

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i64 [ %i.ijr, %vec.epilog.iter.check ], [ %i.ijb, %vector.main.loop.iter.check ]
  %n.vec3033 = and i64 %i.ijf, -8                 ; 4 uses
  %i.ijx = shl i64 %n.vec3033, 1
  %i.ijy = or disjoint i64 %i.ijx, %i.ijb
  %i.ijz = add i64 %n.vec3033, %i.iiz
  %broadcast.splatinsert3034 = insertelement <8 x i64> poison, i64 %bc.resume.val, i64 0
  %broadcast.splat3035 = shufflevector <8 x i64> %broadcast.splatinsert3034, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction3036 = add nuw nsw <8 x i64> %broadcast.splat3035, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>
  %invariant.gep4575 = getelementptr [4 x i8], ptr %i.dq, i64 %i.iiz
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index3037 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next3041, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind3038 = phi <8 x i64> [ %induction3036, %vec.epilog.ph ], [ %vec.ind.next3042, %vec.epilog.vector.body ] ; 2 uses
  %gep4576 = getelementptr [4 x i8], ptr %invariant.gep4575, i64 %index3037
  %wide.load3039 = load <8 x float>, ptr %gep4576, align 4, !tbaa !33, !alias.scope !228
  %wide.gep3040 = getelementptr [4 x i8], ptr %invariant.gep2989, <8 x i64> %vec.ind3038
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %wide.load3039, <8 x ptr> align 4 %wide.gep3040, <8 x i1> splat (i1 true)), !tbaa !33, !alias.scope !229, !noalias !228
  %index.next3041 = add nuw i64 %index3037, 8     ; 2 uses
  %vec.ind.next3042 = add nuw nsw <8 x i64> %vec.ind3038, splat (i64 16)
  %i.ika = icmp eq i64 %index.next3041, %n.vec3033
  br i1 %i.ika, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !129

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n3043 = icmp eq i64 %i.ijf, %n.vec3033
  br i1 %cmp.n3043, label %._crit_edge2235, label %.lr.ph2234.preheader

.lr.ph2234.preheader:                             ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv2748.ph = phi i64 [ %i.ijb, %iter.check ], [ %i.ijb, %vector.memcheck ], [ %i.ijr, %vec.epilog.iter.check ], [ %i.ijy, %vec.epilog.middle.block ]
  %indvars.iv2746.ph = phi i64 [ %i.iiz, %iter.check ], [ %i.iiz, %vector.memcheck ], [ %i.ijs, %vec.epilog.iter.check ], [ %i.ijz, %vec.epilog.middle.block ]
  br label %.lr.ph2234

._crit_edge2235:                                  ; preds = %.lr.ph2234, %middle.block, %vec.epilog.middle.block, %.lr.ph2237
  %indvars.iv.next2754 = add nuw nsw i64 %indvars.iv2753, 1 ; 2 uses
  %exitcond2757.not = icmp eq i64 %indvars.iv.next2754, %wide.trip.count2756
  br i1 %exitcond2757.not, label %.thread1866, label %.lr.ph2237

.lr.ph2234:                                       ; preds = %.lr.ph2234.preheader, %.lr.ph2234
  %indvars.iv2748 = phi i64 [ %indvars.iv.next2749, %.lr.ph2234 ], [ %indvars.iv2748.ph, %.lr.ph2234.preheader ] ; 2 uses
  %indvars.iv2746 = phi i64 [ %indvars.iv.next2747, %.lr.ph2234 ], [ %indvars.iv2746.ph, %.lr.ph2234.preheader ] ; 2 uses
  %i.ikb = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %indvars.iv2746
  %i.ikc = load float, ptr %i.ikb, align 4, !tbaa !33
  %gep2990 = getelementptr [4 x i8], ptr %invariant.gep2989, i64 %indvars.iv2748
  store float %i.ikc, ptr %gep2990, align 4, !tbaa !33
  %indvars.iv.next2749 = add nuw nsw i64 %indvars.iv2748, 2 ; 2 uses
  %indvars.iv.next2747 = add nsw i64 %indvars.iv2746, 1
  %i.ikd = icmp slt i64 %indvars.iv.next2749, %i.af
  br i1 %i.ikd, label %.lr.ph2234, label %._crit_edge2235, !llvm.loop !130

.thread1866:                                      ; preds = %._crit_edge2235, %bb.bd, %bb.ap, %bb.ao, %.preheader1969, %.loopexit1966.1, %.thread1874
  %i.ike = phi i1 [ false, %.thread1874 ], [ false, %.loopexit1966.1 ], [ %not..not1786, %bb.bd ], [ true, %.preheader1969 ], [ false, %bb.ap ], [ false, %bb.ao ], [ true, %._crit_edge2235 ] ; 2 uses
  %.217011872 = phi i32 [ 2, %.thread1874 ], [ %.016992241, %.loopexit1966.1 ], [ %.11700, %bb.bd ], [ %.11700, %.preheader1969 ], [ %.016992241, %bb.ap ], [ %.016992241, %bb.ao ], [ %.11700, %._crit_edge2235 ]
  %.217041871 = phi i32 [ 4, %.thread1874 ], [ %.017022239, %.loopexit1966.1 ], [ %.11703, %bb.bd ], [ %.11703, %.preheader1969 ], [ %.017022239, %bb.ap ], [ %.017022239, %bb.ao ], [ %.11703, %._crit_edge2235 ]
  tail call void @free(ptr noundef %i.btf) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  %i.ikf = add nuw nsw i32 %.017082238, 1         ; 2 uses
  %i.ikg = icmp slt i32 %i.ikf, %i.aa
  %i.ikh = and i1 %i.ikg, %i.ike
  br i1 %i.ikh, label %bb.o, label %._crit_edge2244.loopexit

._crit_edge2251:                                  ; preds = %._crit_edge2248, %.preheader1893
  %.not1781 = trunc i32 %i.ah to i1
  %i.iki = icmp sgt i32 %i.ae, 0
  %or.cond2304 = and i1 %i.iki, %.not1781
  br i1 %or.cond2304, label %iter.check3968, label %.loopexit1892

iter.check3968:                                   ; preds = %._crit_edge2251
  %i.ikj = add nsw i32 %i.aq, -2
  %i.ikk = mul nsw i32 %i.ikj, %i.an
  %i.ikl = add nsw i32 %i.aq, -1
  %i.ikm = mul nsw i32 %i.ikl, %i.an
  %i.ikn = sext i32 %i.ikk to i64                 ; 8 uses
  %i.iko = sext i32 %i.ikm to i64                 ; 8 uses
  %smax2769 = call i32 @llvm.smax.i32(i32 %i.an, i32 1)
  %wide.trip.count2770 = zext nneg i32 %smax2769 to i64 ; 8 uses
  %min.iters.check3953 = icmp slt i32 %i.ae, 7
  br i1 %min.iters.check3953, label %vec.epilog.scalar.ph3969.preheader, label %vector.memcheck3942

vector.memcheck3942:                              ; preds = %iter.check3968
  %i.ikp = shl nsw i64 %i.iko, 2                  ; 3 uses
  %i.ikq = shl nsw i64 %i.ikn, 2                  ; 3 uses
  %i.ikr = sub nsw i64 %i.ikq, %i.ikp
  %diff.check3946 = icmp ugt i64 %i.ikr, -64
  %i.iks = add i64 %i.ikq, %.016343943
  %i.ikt = add i64 %i.ikp, %.016303944
  %i.iku = sub i64 %i.ikt, %i.iks
  %diff.check3948 = icmp ugt i64 %i.iku, -64
  %conflict.rdx3949 = or i1 %diff.check3946, %diff.check3948
  %i.ikv = add i64 %i.ikp, %.016343943
  %i.ikw = add i64 %i.ikq, %.016303944
  %i.ikx = sub i64 %i.ikw, %i.ikv
  %diff.check3950 = icmp ugt i64 %i.ikx, -64
  %conflict.rdx3951 = or i1 %conflict.rdx3949, %diff.check3950
  br i1 %conflict.rdx3951, label %vec.epilog.scalar.ph3969.preheader, label %vector.main.loop.iter.check3954

vector.main.loop.iter.check3954:                  ; preds = %vector.memcheck3942
  %min.iters.check3955 = icmp slt i32 %i.ae, 31
  br i1 %min.iters.check3955, label %vec.epilog.ph3972, label %vector.ph3956

vector.ph3956:                                    ; preds = %vector.main.loop.iter.check3954
  %i.iky = and i64 %wide.trip.count2770, 12
  %n.vec3957 = and i64 %wide.trip.count2770, 1073741808 ; 4 uses
  br label %vector.body3958

vector.body3958:                                  ; preds = %vector.ph3956, %vector.body3958
  %index3959 = phi i64 [ 0, %vector.ph3956 ], [ %index.next3964, %vector.body3958 ] ; 3 uses
  %i.ikz = add nsw i64 %index3959, %i.ikn         ; 2 uses
  %i.ila = getelementptr inbounds [4 x i8], ptr %.01630, i64 %i.ikz ; 2 uses
  %i.ilb = getelementptr inbounds nuw i8, ptr %i.ila, i64 32
  %wide.load3960 = load <8 x float>, ptr %i.ila, align 4, !tbaa !33
  %wide.load3961 = load <8 x float>, ptr %i.ilb, align 4, !tbaa !33
  %i.ilc = add nsw i64 %index3959, %i.iko         ; 2 uses
  %i.ild = getelementptr inbounds [4 x i8], ptr %.01630, i64 %i.ilc ; 2 uses
  %i.ile = getelementptr inbounds nuw i8, ptr %i.ild, i64 32
  store <8 x float> %wide.load3960, ptr %i.ild, align 4, !tbaa !33
  store <8 x float> %wide.load3961, ptr %i.ile, align 4, !tbaa !33
  %i.ilf = getelementptr inbounds [4 x i8], ptr %.01634, i64 %i.ikz ; 2 uses
  %i.ilg = getelementptr inbounds nuw i8, ptr %i.ilf, i64 32
  %wide.load3962 = load <8 x float>, ptr %i.ilf, align 4, !tbaa !33
  %wide.load3963 = load <8 x float>, ptr %i.ilg, align 4, !tbaa !33
  %i.ilh = getelementptr inbounds [4 x i8], ptr %.01634, i64 %i.ilc ; 2 uses
  %i.ili = getelementptr inbounds nuw i8, ptr %i.ilh, i64 32
  store <8 x float> %wide.load3962, ptr %i.ilh, align 4, !tbaa !33
  store <8 x float> %wide.load3963, ptr %i.ili, align 4, !tbaa !33
  %index.next3964 = add nuw i64 %index3959, 16    ; 2 uses
  %i.ilj = icmp eq i64 %index.next3964, %n.vec3957
  br i1 %i.ilj, label %middle.block3965, label %vector.body3958, !llvm.loop !131

middle.block3965:                                 ; preds = %vector.body3958
  %cmp.n3966 = icmp eq i64 %n.vec3957, %wide.trip.count2770
  br i1 %cmp.n3966, label %.loopexit1892, label %vec.epilog.iter.check3970

vec.epilog.iter.check3970:                        ; preds = %middle.block3965
  %min.epilog.iters.check3971 = icmp eq i64 %i.iky, 0
  br i1 %min.epilog.iters.check3971, label %vec.epilog.scalar.ph3969.preheader, label %vec.epilog.ph3972, !prof !221

vec.epilog.ph3972:                                ; preds = %vector.main.loop.iter.check3954, %vec.epilog.iter.check3970
  %vec.epilog.resume.val3967 = phi i64 [ %n.vec3957, %vec.epilog.iter.check3970 ], [ 0, %vector.main.loop.iter.check3954 ]
  %n.vec3973 = and i64 %wide.trip.count2770, 1073741820 ; 3 uses
  br label %vec.epilog.vector.body3974

vec.epilog.vector.body3974:                       ; preds = %vec.epilog.vector.body3974, %vec.epilog.ph3972
  %index3975 = phi i64 [ %vec.epilog.resume.val3967, %vec.epilog.ph3972 ], [ %index.next3978, %vec.epilog.vector.body3974 ] ; 3 uses
  %i.ilk = add nsw i64 %index3975, %i.ikn         ; 2 uses
  %i.ill = getelementptr inbounds [4 x i8], ptr %.01630, i64 %i.ilk
  %wide.load3976 = load <4 x float>, ptr %i.ill, align 4, !tbaa !33
  %i.ilm = add nsw i64 %index3975, %i.iko         ; 2 uses
  %i.iln = getelementptr inbounds [4 x i8], ptr %.01630, i64 %i.ilm
  store <4 x float> %wide.load3976, ptr %i.iln, align 4, !tbaa !33
  %i.ilo = getelementptr inbounds [4 x i8], ptr %.01634, i64 %i.ilk
  %wide.load3977 = load <4 x float>, ptr %i.ilo, align 4, !tbaa !33
  %i.ilp = getelementptr inbounds [4 x i8], ptr %.01634, i64 %i.ilm
  store <4 x float> %wide.load3977, ptr %i.ilp, align 4, !tbaa !33
  %index.next3978 = add nuw i64 %index3975, 4     ; 2 uses
  %i.ilq = icmp eq i64 %index.next3978, %n.vec3973
  br i1 %i.ilq, label %vec.epilog.middle.block3979, label %vec.epilog.vector.body3974, !llvm.loop !132

vec.epilog.middle.block3979:                      ; preds = %vec.epilog.vector.body3974
  %cmp.n3980 = icmp eq i64 %n.vec3973, %wide.trip.count2770
  br i1 %cmp.n3980, label %.loopexit1892, label %vec.epilog.scalar.ph3969.preheader

vec.epilog.scalar.ph3969.preheader:               ; preds = %iter.check3968, %vector.memcheck3942, %vec.epilog.iter.check3970, %vec.epilog.middle.block3979
  %indvars.iv2766.ph = phi i64 [ 0, %iter.check3968 ], [ 0, %vector.memcheck3942 ], [ %n.vec3957, %vec.epilog.iter.check3970 ], [ %n.vec3973, %vec.epilog.middle.block3979 ] ; 3 uses
  %xtraiter4480 = and i64 %wide.trip.count2770, 3 ; 2 uses
  %lcmp.mod4481.not = icmp eq i64 %xtraiter4480, 0
  br i1 %lcmp.mod4481.not, label %vec.epilog.scalar.ph3969.prol.loopexit, label %vec.epilog.scalar.ph3969.prol

vec.epilog.scalar.ph3969.prol:                    ; preds = %vec.epilog.scalar.ph3969.preheader, %vec.epilog.scalar.ph3969.prol
  %indvars.iv2766.prol = phi i64 [ %indvars.iv.next2767.prol, %vec.epilog.scalar.ph3969.prol ], [ %indvars.iv2766.ph, %vec.epilog.scalar.ph3969.preheader ] ; 3 uses
  %prol.iter4482 = phi i64 [ %prol.iter4482.next, %vec.epilog.scalar.ph3969.prol ], [ 0, %vec.epilog.scalar.ph3969.preheader ]
  %i.ilr = add nsw i64 %indvars.iv2766.prol, %i.ikn ; 2 uses
  %i.ils = getelementptr inbounds [4 x i8], ptr %.01630, i64 %i.ilr
  %i.ilt = load float, ptr %i.ils, align 4, !tbaa !33
  %i.ilu = add nsw i64 %indvars.iv2766.prol, %i.iko ; 2 uses
  %i.ilv = getelementptr inbounds [4 x i8], ptr %.01630, i64 %i.ilu
  store float %i.ilt, ptr %i.ilv, align 4, !tbaa !33
  %i.ilw = getelementptr inbounds [4 x i8], ptr %.01634, i64 %i.ilr
  %i.ilx = load float, ptr %i.ilw, align 4, !tbaa !33
  %i.ily = getelementptr inbounds [4 x i8], ptr %.01634, i64 %i.ilu
  store float %i.ilx, ptr %i.ily, align 4, !tbaa !33
  %indvars.iv.next2767.prol = add nuw nsw i64 %indvars.iv2766.prol, 1 ; 2 uses
  %prol.iter4482.next = add i64 %prol.iter4482, 1 ; 2 uses
  %prol.iter4482.cmp.not = icmp eq i64 %prol.iter4482.next, %xtraiter4480
  br i1 %prol.iter4482.cmp.not, label %vec.epilog.scalar.ph3969.prol.loopexit, label %vec.epilog.scalar.ph3969.prol, !llvm.loop !133

vec.epilog.scalar.ph3969.prol.loopexit:           ; preds = %vec.epilog.scalar.ph3969.prol, %vec.epilog.scalar.ph3969.preheader
  %indvars.iv2766.unr = phi i64 [ %indvars.iv2766.ph, %vec.epilog.scalar.ph3969.preheader ], [ %indvars.iv.next2767.prol, %vec.epilog.scalar.ph3969.prol ]
  %i.ilz = sub nsw i64 %indvars.iv2766.ph, %wide.trip.count2770
  %i.ima = icmp ugt i64 %i.ilz, -4
  br i1 %i.ima, label %.loopexit1892, label %vec.epilog.scalar.ph3969

.lr.ph2250:                                       ; preds = %.lr.ph2250.preheader, %._crit_edge2248
  %indvars.iv2761 = phi i64 [ 0, %.lr.ph2250.preheader ], [ %indvars.iv.next2762, %._crit_edge2248 ] ; 8 uses
  %i.imb = trunc i64 %indvars.iv2761 to i32
  %i.imc = lshr i32 %i.imb, 1
  %i.imd = mul i32 %i.an, %i.imc
  %i.ime = sext i32 %i.imd to i64
  %i.imf = shl nsw i64 %i.ime, 2                  ; 2 uses
  %i.img = mul i64 %i.btb, %indvars.iv2761
  %i.imh = getelementptr i8, ptr %.01638, i64 %i.img
  %scevgep3898 = getelementptr i8, ptr %i.imh, i64 4
  %i.imi = mul i64 %i.btc, %indvars.iv2761
  %i.imj = getelementptr i8, ptr %i.av, i64 %i.imi
  %scevgep3901 = getelementptr i8, ptr %i.imj, i64 4
  %indvars.iv2761.tr = trunc i64 %indvars.iv2761 to i32
  %i.imk = shl i32 %indvars.iv2761.tr, 1
  %.tr.i1851 = and i32 %i.imk, 14                 ; 2 uses
  %i.iml = shl nuw nsw i32 %.tr.i1851, 1
  %i.imm = lshr i32 %i.q, %i.iml                  ; 2 uses
  %i.imn = and i32 %i.imm, 1                      ; 2 uses
  %i.imo = icmp slt i32 %i.imn, %i.ae
  br i1 %i.imo, label %iter.check3928, label %._crit_edge2248

iter.check3928:                                   ; preds = %.lr.ph2250
  %.tr.i1852 = or disjoint i32 %i.imn, %.tr.i1851
  %i.imp = shl nuw nsw i32 %.tr.i1852, 1
  %i.imq = shl nuw i32 3, %i.imp
  %i.imr = and i32 %i.imq, %i.q
  %i.ims = icmp eq i32 %i.imr, 0
  %i.imt = select i1 %i.ims, ptr %.01630, ptr %.01634 ; 3 uses
  %i.imu = mul nuw nsw i64 %indvars.iv2761, %i.af
  %i.imv = mul nsw i64 %indvars.iv2761, %i.ao
  %i.imw = getelementptr [4 x i8], ptr %.01638, i64 %i.imv ; 4 uses
  %i.imx = getelementptr [4 x i8], ptr %i.av, i64 %i.imu ; 5 uses
  %i.imy = trunc nuw nsw i64 %indvars.iv2761 to i32
  %i.imz = lshr i32 %i.imy, 1
  %i.ina = mul nsw i32 %i.imz, %i.an
  %i.inb = and i32 %i.imm, 1
  %i.inc = zext nneg i32 %i.inb to i64            ; 9 uses
  %i.ind = sext i32 %i.ina to i64
  %invariant.gep2991 = getelementptr [4 x i8], ptr %i.imt, i64 %i.ind ; 3 uses
  %i.ine = xor i64 %i.inc, -1
  %i.inf = add nsw i64 %i.ine, %i.af              ; 3 uses
  %i.ing = lshr i64 %i.inf, 1
  %i.inh = add nuw i64 %i.ing, 1                  ; 4 uses
  %min.iters.check3911 = icmp ult i64 %i.inf, 8
  br i1 %min.iters.check3911, label %vec.epilog.scalar.ph3929.preheader, label %vector.memcheck3893

vector.memcheck3893:                              ; preds = %iter.check3928
  %scevgep3894 = getelementptr i8, ptr %i.imt, i64 %i.imf ; 2 uses
  %scevgep3895 = getelementptr i8, ptr %i.imt, i64 4
  %i.ini = xor i64 %i.inc, -1
  %i.inj = add nsw i64 %i.ini, %i.af
  %i.ink = lshr i64 %i.inj, 1                     ; 2 uses
  %i.inl = shl i64 %i.ink, 2                      ; 2 uses
  %i.inm = getelementptr i8, ptr %scevgep3895, i64 %i.inl
  %scevgep3896 = getelementptr i8, ptr %i.inm, i64 %i.imf ; 2 uses
  %scevgep3899 = getelementptr i8, ptr %scevgep3898, i64 %i.inl
  %i.inn = shl nuw nsw i64 %i.inc, 2              ; 2 uses
  %scevgep3900 = getelementptr i8, ptr %i.imx, i64 %i.inn
  %i.ino = shl i64 %i.ink, 3
  %i.inp = getelementptr i8, ptr %scevgep3901, i64 %i.ino
  %scevgep3902 = getelementptr i8, ptr %i.inp, i64 %i.inn
  %bound03903 = icmp ult ptr %scevgep3894, %scevgep3899
  %bound13904 = icmp ult ptr %i.imw, %scevgep3896
  %found.conflict3905 = and i1 %bound03903, %bound13904
  %bound03906 = icmp ult ptr %scevgep3894, %scevgep3902
  %bound13907 = icmp ult ptr %scevgep3900, %scevgep3896
  %found.conflict3908 = and i1 %bound03906, %bound13907
  %conflict.rdx3909 = or i1 %found.conflict3905, %found.conflict3908
  br i1 %conflict.rdx3909, label %vec.epilog.scalar.ph3929.preheader, label %vector.main.loop.iter.check3912

vector.main.loop.iter.check3912:                  ; preds = %vector.memcheck3893
  %min.iters.check3913 = icmp ult i64 %i.inf, 32
  br i1 %min.iters.check3913, label %vec.epilog.ph3932, label %vector.ph3914

vector.ph3914:                                    ; preds = %vector.main.loop.iter.check3912
  %i.inq = and i64 %i.inh, 15                     ; 2 uses
  %i.inr = icmp eq i64 %i.inq, 0
  %i.ins = select i1 %i.inr, i64 16, i64 %i.inq   ; 2 uses
  %n.vec3915 = sub i64 %i.inh, %i.ins             ; 3 uses
  %i.int = shl i64 %n.vec3915, 1
  %i.inu = or disjoint i64 %i.int, %i.inc
  br label %vector.body3916

vector.body3916:                                  ; preds = %vector.ph3914, %vector.body3916
  %index3917 = phi i64 [ 0, %vector.ph3914 ], [ %index.next3924, %vector.body3916 ] ; 4 uses
  %i.inv = shl nuw i64 %index3917, 1
  %i.inw = or disjoint i64 %i.inv, %i.inc         ; 2 uses
  %i.inx = getelementptr [4 x i8], ptr %i.imw, i64 %index3917 ; 2 uses
  %i.iny = getelementptr i8, ptr %i.inx, i64 32
  %wide.load3918 = load <8 x float>, ptr %i.inx, align 4, !tbaa !33, !alias.scope !230
  %wide.load3919 = load <8 x float>, ptr %i.iny, align 4, !tbaa !33, !alias.scope !230
  %i.inz = getelementptr [4 x i8], ptr %i.imx, i64 %i.inw
  %i.ioa = getelementptr [4 x i8], ptr %i.imx, i64 %i.inw
  %i.iob = getelementptr i8, ptr %i.ioa, i64 64
  %wide.vec3920 = load <16 x float>, ptr %i.inz, align 4, !tbaa !33, !alias.scope !231
  %strided.vec3921 = shufflevector <16 x float> %wide.vec3920, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %wide.vec3922 = load <16 x float>, ptr %i.iob, align 4, !tbaa !33, !alias.scope !231
  %strided.vec3923 = shufflevector <16 x float> %wide.vec3922, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
end_hunk_1
