Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_cacorrect?download=true
inline.NumInlined: 74
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 42
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 80
begin_hunk_0_@process:bb.a
  %i.bj = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.bi
  %i.bk = sext i32 %i.ah to i64                   ; 7 uses
  tail call void @dt_iop_image_scaled_copy(ptr noundef nonnull %i.av, ptr noundef %2, float noundef %i.bj, i64 noundef %i.af, i64 noundef %i.bk, i64 noundef 1) #20
  %.not1780 = icmp eq i32 %i.az, 0
  br i1 %.not1780, label %bb.d, label %bb.eq

bb.d:                                             ; preds = %bb.c
  br i1 %i.y, label %bb.e, label %.loopexit1977

bb.e:                                             ; preds = %bb.d
  %i.bl = shl i64 %i.at, 2                        ; 4 uses
  %i.bm = tail call ptr @dt_alloc_aligned(i64 noundef %i.bl) #20 ; 9 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bm, i64 64) ]
  %.not.i = icmp eq ptr %i.bm, null
  br i1 %.not.i, label %dt_calloc_align_float.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr nonnull align 64 %i.bm, i8 0, i64 %i.bl, i1 false)
  br label %dt_calloc_align_float.exit

dt_calloc_align_float.exit:                       ; preds = %bb.e, %bb.f
  %i.bn = tail call ptr @dt_alloc_aligned(i64 noundef %i.bl) #20 ; 9 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bn, i64 64) ]
  %.not.i1808 = icmp eq ptr %i.bn, null
  br i1 %.not.i1808, label %dt_calloc_align_float.exit1809, label %bb.g

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
  %i.bq = icmp ne ptr %i.bm, null
  %i.br = icmp ne ptr %i.bn, null
  %or.cond = and i1 %i.bq, %i.br
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
  %.016971990 = phi i64 [ 0, %.lr.ph1991.preheader.new ], [ %i.cr, %._crit_edge.1 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph1991.preheader.new ], [ %niter.next.1, %._crit_edge.1 ]
  %.01697.tr = trunc i64 %.016971990 to i32
  %i.bs = shl i32 %.01697.tr, 2
  %.tr.i = and i32 %i.bs, 24
  %i.bt = lshr i32 %i.q, %.tr.i
  %i.bu = and i32 %i.bt, 1                        ; 2 uses
  %i.bv = icmp ult i32 %i.bu, %i.ae
  br i1 %i.bv, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph1991
  %i.bw = zext nneg i32 %i.bu to i64
  %i.bx = mul i64 %.016971990, %i.af
  %i.by = getelementptr [4 x i8], ptr %i.av, i64 %i.bx
  %i.bz = mul i64 %.016971990, %i.ap
  %i.ca = getelementptr [4 x i8], ptr %i.bp, i64 %i.bz
  br label %bb.i

._crit_edge:                                      ; preds = %bb.i, %.lr.ph1991
  %i.cb = or disjoint i64 %.016971990, 1          ; 3 uses
  %.01697.tr.1 = trunc i64 %i.cb to i32
  %i.cc = shl i32 %.01697.tr.1, 2
  %.tr.i.1 = and i32 %i.cc, 28
  %i.cd = lshr i32 %i.q, %.tr.i.1
  %i.ce = and i32 %i.cd, 1                        ; 2 uses
  %i.cf = icmp ult i32 %i.ce, %i.ae
  br i1 %i.cf, label %.lr.ph.1, label %._crit_edge.1

.lr.ph.1:                                         ; preds = %._crit_edge
  %i.cg = zext nneg i32 %i.ce to i64
  %i.ch = mul i64 %i.cb, %i.af
  %i.ci = getelementptr [4 x i8], ptr %i.av, i64 %i.ch
  %i.cj = mul i64 %i.cb, %i.ap
  %i.ck = getelementptr [4 x i8], ptr %i.bp, i64 %i.cj
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.1
  %.016981989.1 = phi i64 [ %i.cg, %.lr.ph.1 ], [ %i.cp, %bb.h ] ; 3 uses
  %i.cl = getelementptr [4 x i8], ptr %i.ci, i64 %.016981989.1
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !33
  %i.cn = lshr i64 %.016981989.1, 1
  %i.co = getelementptr [4 x i8], ptr %i.ck, i64 %i.cn
  store float %i.cm, ptr %i.co, align 4, !tbaa !33
  %i.cp = add i64 %.016981989.1, 2                ; 2 uses
  %i.cq = icmp ult i64 %i.cp, %i.af
  br i1 %i.cq, label %bb.h, label %._crit_edge.1

._crit_edge.1:                                    ; preds = %bb.h, %._crit_edge
  %i.cr = add nuw i64 %.016971990, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit1977.loopexit.unr-lcssa, label %.lr.ph1991

bb.i:                                             ; preds = %.lr.ph, %bb.i
  %.016981989 = phi i64 [ %i.bw, %.lr.ph ], [ %i.cw, %bb.i ] ; 3 uses
  %i.cs = getelementptr [4 x i8], ptr %i.by, i64 %.016981989
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !33
  %i.cu = lshr i64 %.016981989, 1
  %i.cv = getelementptr [4 x i8], ptr %i.ca, i64 %i.cu
  store float %i.ct, ptr %i.cv, align 4, !tbaa !33
  %i.cw = add i64 %.016981989, 2                  ; 2 uses
  %i.cx = icmp ult i64 %i.cw, %i.af
  br i1 %i.cx, label %bb.i, label %._crit_edge

.loopexit1977.loopexit.unr-lcssa:                 ; preds = %._crit_edge.1
  %i.cy = and i32 %i.ah, 1
  %lcmp.mod.not = icmp eq i32 %i.cy, 0
  br i1 %lcmp.mod.not, label %.loopexit1977, label %.lr.ph1991.epil.preheader

.lr.ph1991.epil.preheader:                        ; preds = %.preheader1976, %.loopexit1977.loopexit.unr-lcssa
  %.016971990.epil.init = phi i64 [ 0, %.preheader1976 ], [ %i.cr, %.loopexit1977.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod4213 = trunc i32 %i.ah to i1
  tail call void @llvm.assume(i1 %lcmp.mod4213)
  %.01697.tr.epil = trunc i64 %.016971990.epil.init to i32
  %i.cz = shl i32 %.01697.tr.epil, 2
  %.tr.i.epil = and i32 %i.cz, 28
  %i.da = lshr i32 %i.q, %.tr.i.epil
  %i.db = and i32 %i.da, 1                        ; 2 uses
  %i.dc = icmp ult i32 %i.db, %i.ae
  br i1 %i.dc, label %.lr.ph.epil, label %.loopexit1977

.lr.ph.epil:                                      ; preds = %.lr.ph1991.epil.preheader
  %i.dd = zext nneg i32 %i.db to i64
  %i.de = mul i64 %.016971990.epil.init, %i.af
  %i.df = getelementptr [4 x i8], ptr %i.av, i64 %i.de
  %i.dg = mul i64 %.016971990.epil.init, %i.ap
  %i.dh = getelementptr [4 x i8], ptr %i.bp, i64 %i.dg
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph.epil
  %.016981989.epil = phi i64 [ %i.dd, %.lr.ph.epil ], [ %i.dm, %bb.j ] ; 3 uses
  %i.di = getelementptr [4 x i8], ptr %i.df, i64 %.016981989.epil
  %i.dj = load float, ptr %i.di, align 4, !tbaa !33
  %i.dk = lshr i64 %.016981989.epil, 1
  %i.dl = getelementptr [4 x i8], ptr %i.dh, i64 %i.dk
  store float %i.dj, ptr %i.dl, align 4, !tbaa !33
  %i.dm = add i64 %.016981989.epil, 2             ; 2 uses
  %i.dn = icmp ult i64 %i.dm, %i.af
  br i1 %i.dn, label %bb.j, label %.loopexit1977

.loopexit1977:                                    ; preds = %.loopexit1977.loopexit.unr-lcssa, %bb.j, %.lr.ph1991.epil.preheader, %.preheader1976, %bb.d
  %.01638 = phi ptr [ null, %bb.d ], [ %i.bp, %.preheader1976 ], [ %i.bp, %.lr.ph1991.epil.preheader ], [ %i.bp, %bb.j ], [ %i.bp, %.loopexit1977.loopexit.unr-lcssa ] ; 6 uses
  %.01634 = phi ptr [ null, %bb.d ], [ %i.bn, %.preheader1976 ], [ %i.bn, %.lr.ph1991.epil.preheader ], [ %i.bn, %bb.j ], [ %i.bn, %.loopexit1977.loopexit.unr-lcssa ] ; 24 uses
  %.01630 = phi ptr [ null, %bb.d ], [ %i.bm, %.preheader1976 ], [ %i.bm, %.lr.ph1991.epil.preheader ], [ %i.bm, %bb.j ], [ %i.bm, %.loopexit1977.loopexit.unr-lcssa ] ; 24 uses
  %.016343947 = ptrtoaddr ptr %.01634 to i64      ; 2 uses
  %.016303948 = ptrtoaddr ptr %.01630 to i64      ; 2 uses
  %i.do = tail call ptr @dt_alloc_aligned(i64 noundef %i.au) #20 ; 102 uses
  %i.dp = ptrtoaddr ptr %i.do to i64
  call void @llvm.assume(i1 true) [ "align"(ptr %i.do, i64 64) ]
  %.not.i1812 = icmp eq ptr %i.do, null
  br i1 %.not.i1812, label %dt_calloc_align_float.exit1813, label %bb.k

bb.k:                                             ; preds = %.loopexit1977
  tail call void @llvm.memset.p0.i64(ptr nonnull align 64 %i.do, i8 0, i64 %i.au, i1 false)
  br label %dt_calloc_align_float.exit1813

dt_calloc_align_float.exit1813:                   ; preds = %.loopexit1977, %bb.k
  %i.dq = shl i64 %i.ak, 1
  %i.dr = and i64 %i.dq, -4
  %i.ds = tail call ptr @dt_alloc_aligned(i64 noundef %i.dr) #20 ; 16 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ds, i64 64) ]
  %i.dt = icmp ne ptr %i.do, null
  %i.du = icmp ne ptr %i.ds, null
  %or.cond5 = select i1 %i.dt, i1 %i.du, i1 false
  br i1 %or.cond5, label %bb.m, label %bb.l

bb.l:                                             ; preds = %dt_calloc_align_float.exit1813
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.5) #20
  br label %bb.eq

bb.m:                                             ; preds = %dt_calloc_align_float.exit1813
  %i.dv = add nsw <2 x i32> %i.ad, splat (i32 16) ; 2 uses
  %i.dw = srem <2 x i32> %i.dv, splat (i32 112)
  %i.dx = icmp eq <2 x i32> %i.dw, zeroinitializer
  %i.dy = sitofp <2 x i32> %i.dv to <2 x float>
  %i.dz = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.dy, splat (float f0x3C124925)
  %i.ea = fadd reassoc nsz arcp contract afn <2 x float> %i.dz, splat (float 2.000000e+00)
  %i.eb = uitofp <2 x i1> %i.dx to <2 x float>
  %i.ec = fadd reassoc nsz arcp contract afn <2 x float> %i.ea, %i.eb
  %i.ed = tail call reassoc nsz arcp contract afn <2 x float> @llvm.ceil.v2f32(<2 x float> %i.ec)
  %i.ee = fptosi <2 x float> %i.ed to <2 x i32>   ; 3 uses
  %i.ef = extractelement <2 x i32> %i.ee, i64 0   ; 9 uses
  %i.eg = extractelement <2 x i32> %i.ee, i64 1   ; 4 uses
  %i.eh = mul i32 %i.eg, %i.ef                    ; 2 uses
  %i.ei = mul i32 %i.eh, 5
  %i.ej = sext i32 %i.ei to i64
  %i.ek = shl nsw i64 %i.ej, 2                    ; 2 uses
  %i.el = tail call ptr @dt_alloc_aligned(i64 noundef %i.ek) #20 ; 37 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.el, i64 64) ]
  %.not.i1814 = icmp eq ptr %i.el, null
  br i1 %.not.i1814, label %dt_calloc_align_float.exit1815, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memset.p0.i64(ptr nonnull align 64 %i.el, i8 0, i64 %i.ek, i1 false)
  br label %dt_calloc_align_float.exit1815

dt_calloc_align_float.exit1815:                   ; preds = %bb.m, %bb.n
  %i.em = sext i32 %i.eh to i64                   ; 2 uses
  %i.en = getelementptr [4 x i8], ptr %i.el, i64 %i.em ; 21 uses
  %i.eo = icmp sgt i32 %i.aa, 0
  br i1 %i.eo, label %.lr.ph2243, label %._crit_edge2244

.lr.ph2243:                                       ; preds = %dt_calloc_align_float.exit1815
  %i.ep = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.er = icmp slt i32 %i.ah, -7
  %i.es = icmp slt i32 %i.ae, -7
  %i.et = add nsw i32 %i.ah, 8                    ; 2 uses
  %i.eu = add i32 %i.ae, 8                        ; 5 uses
  %i.ev = add nsw i32 %i.ah, -2                   ; 6 uses
  %i.ew = add nsw i32 %i.ae, -2                   ; 20 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.fa = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.fb = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.fc = add i32 %i.eg, -1                       ; 3 uses
  %i.fd = icmp sgt i32 %i.ef, 0
  %i.fe = shl i32 %i.ef, 1
  %i.ff = add i32 %i.eg, -3
  %i.fg = mul i32 %i.ff, %i.ef
  %i.fh = mul i32 %i.fc, %i.ef
  %i.fi = getelementptr inbounds nuw i8, ptr %i.l, i64 4096
  %i.fj = getelementptr inbounds nuw i8, ptr %i.l, i64 6144
  %i.fk = getelementptr inbounds nuw i8, ptr %i.l, i64 2048
  %i.fl = add i32 %i.ef, -1
  %i.fm = icmp slt <2 x i32> %i.ee, splat (i32 3) ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.fo = icmp slt i32 %i.ah, -7
  %i.fp = icmp sgt i32 %i.ae, -8
  %i.fq = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.a, i64 256 ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.a, i64 384 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.fu = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.fw = icmp sgt i32 %i.ah, 0
  %i.fx = sext i32 %i.ef to i64                   ; 10 uses
  %i.fy = zext i32 %i.fe to i64                   ; 2 uses
  %i.fz = sext i32 %i.fg to i64                   ; 2 uses
  %i.ga = sext i32 %i.fh to i64                   ; 2 uses
  %brmerge2271 = or i1 %i.er, %i.es
  %i.gb = shl i32 %i.ae, 4
  %i.gc = add i32 %i.ew, %i.gb                    ; 8 uses
  %i.gd = mul i32 %i.ae, 15
  %i.ge = add i32 %i.ew, %i.gd                    ; 8 uses
  %i.gf = mul i32 %i.ae, 14
  %i.gg = add i32 %i.ew, %i.gf                    ; 8 uses
  %i.gh = mul i32 %i.ae, 13
  %i.gi = add i32 %i.ew, %i.gh                    ; 8 uses
  %i.gj = mul i32 %i.ae, 12
  %i.gk = add i32 %i.ew, %i.gj                    ; 8 uses
  %i.gl = mul i32 %i.ae, 11
  %i.gm = add i32 %i.ew, %i.gl                    ; 8 uses
  %i.gn = mul i32 %i.ae, 10
  %i.go = add i32 %i.ew, %i.gn                    ; 8 uses
  %i.gp = mul i32 %i.ae, 9
  %i.gq = add i32 %i.ew, %i.gp                    ; 8 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.gs = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  %i.gt = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  %i.gu = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %i.gv = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.gw = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %wide.trip.count2523 = zext i32 %i.fc to i64
  %invariant.gep2971 = getelementptr [16 x i8], ptr %i.en, i64 %i.fx ; 5 uses
  %wide.trip.count2534 = zext i32 %i.ef to i64    ; 6 uses
  %invariant.gep2973 = getelementptr [16 x i8], ptr %i.en, i64 %i.fy ; 13 uses
  %invariant.gep2975 = getelementptr [16 x i8], ptr %i.en, i64 %i.fz ; 14 uses
  %invariant.gep2977 = getelementptr [16 x i8], ptr %i.en, i64 %i.ga ; 13 uses
  %wide.trip.count2574 = zext nneg i32 %i.fc to i64
  %wide.trip.count2569 = zext i32 %i.fl to i64
  %i.gx = shl i32 %i.ae, 4
  %i.gy = add i32 %i.ew, %i.gx                    ; 8 uses
  %i.gz = mul i32 %i.ae, 15
  %i.ha = add i32 %i.ew, %i.gz                    ; 8 uses
  %i.hb = mul i32 %i.ae, 14
  %i.hc = add i32 %i.ew, %i.hb                    ; 8 uses
  %i.hd = mul i32 %i.ae, 13
  %i.he = add i32 %i.ew, %i.hd                    ; 8 uses
  %i.hf = mul i32 %i.ae, 12
  %i.hg = add i32 %i.ew, %i.hf                    ; 8 uses
  %i.hh = mul i32 %i.ae, 11
  %i.hi = add i32 %i.ew, %i.hh                    ; 8 uses
  %i.hj = mul i32 %i.ae, 10
  %i.hk = add i32 %i.ew, %i.hj                    ; 8 uses
  %i.hl = mul i32 %i.ae, 9
  %i.hm = add i32 %i.ew, %i.hl                    ; 8 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %wide.trip.count2756 = zext nneg i32 %i.ah to i64
  %i.hs = shl nsw i64 %i.af, 2
  %scevgep3027.a = getelementptr i8, ptr %i.ds, i64 4
  %scevgep3052.a = getelementptr i8, ptr %i.ds, i64 4
  %scevgep3139.a = getelementptr inbounds nuw i8, ptr %i.l, i64 2048
  %scevgep3188.a = getelementptr inbounds nuw i8, ptr %i.l, i64 2048
  %i.ht = shl nuw nsw i64 %wide.trip.count2534, 4 ; 16 uses
  %i.hu = shl nsw i64 %i.em, 2                    ; 28 uses
  %i.hv = getelementptr i8, ptr %i.el, i64 %i.ht
  %i.hw = getelementptr i8, ptr %i.hv, i64 %i.hu
  %i.hx = shl nsw i64 %i.ga, 4                    ; 7 uses
  %i.hy = getelementptr i8, ptr %i.el, i64 %i.hx
  %i.hz = getelementptr i8, ptr %i.hy, i64 %i.ht
  %i.ia = getelementptr i8, ptr %i.hz, i64 %i.hu  ; 2 uses
  %i.ib = getelementptr i8, ptr %i.el, i64 %i.hu  ; 2 uses
  %i.ic = getelementptr i8, ptr %i.el, i64 %i.ht
  %i.id = getelementptr i8, ptr %i.ic, i64 %i.hu  ; 3 uses
  %i.ie = insertelement <2 x ptr> poison, ptr %i.hw, i64 0
  %i.if = insertelement <2 x ptr> %i.ie, ptr %i.id, i64 1
  %i.ig = getelementptr i8, <2 x ptr> %i.if, <2 x i64> <i64 -12, i64 -8> ; 3 uses
  %i.ih = shufflevector <2 x ptr> %i.ig, <2 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ii = getelementptr i8, ptr %i.el, i64 %i.hx
  %i.ij = getelementptr i8, ptr %i.ii, i64 %i.hu  ; 3 uses
  %scevgep3337.a = getelementptr i8, ptr %i.ij, i64 4 ; 3 uses
  %i.ik = getelementptr i8, ptr %i.el, i64 %i.hx
  %i.il = getelementptr i8, ptr %i.ik, i64 %i.ht
  %i.im = getelementptr i8, ptr %i.il, i64 %i.hu  ; 5 uses
  %i.in = insertelement <2 x ptr> poison, ptr %i.ia, i64 0
  %i.io = insertelement <2 x ptr> %i.in, ptr %i.im, i64 1 ; 3 uses
  %i.ip = getelementptr i8, <2 x ptr> %i.io, <2 x i64> <i64 -12, i64 -8> ; 4 uses
  %scevgep3338 = getelementptr i8, ptr %i.im, i64 -8 ; 3 uses
  %i.iq = getelementptr i8, ptr %i.el, i64 %i.hu  ; 3 uses
  %i.ir = insertelement <2 x ptr> poison, ptr %i.ib, i64 0
  %i.is = insertelement <2 x ptr> %i.ir, ptr %i.iq, i64 1 ; 3 uses
  %i.it = getelementptr i8, <2 x ptr> %i.is, <2 x i64> <i64 4, i64 8> ; 2 uses
  %i.iu = getelementptr i8, ptr %i.el, i64 %i.ht
  %i.iv = getelementptr i8, ptr %i.iu, i64 %i.hu  ; 3 uses
  %i.iw = insertelement <2 x ptr> %i.io, ptr %i.iv, i64 1 ; 2 uses
  %i.ix = insertelement <2 x ptr> poison, ptr %i.id, i64 0
  %i.iy = insertelement <2 x ptr> %i.ix, ptr %i.iv, i64 1 ; 2 uses
  %i.iz = getelementptr i8, <2 x ptr> %i.iw, <2 x i64> <i64 -12, i64 -4> ; 5 uses
  %i.ja = getelementptr i8, <2 x ptr> %i.iy, <2 x i64> <i64 -8, i64 -4> ; 4 uses
  %i.jb = getelementptr i8, ptr %i.el, i64 %i.hx
  %i.jc = getelementptr i8, ptr %i.jb, i64 %i.hu  ; 4 uses
  %i.jd = insertelement <2 x ptr> %i.is, ptr %i.jc, i64 1 ; 2 uses
  %i.je = insertelement <2 x ptr> poison, ptr %i.ij, i64 0
  %i.jf = insertelement <2 x ptr> %i.je, ptr %i.jc, i64 1
  %i.jg = getelementptr i8, <2 x ptr> %i.jd, <2 x i64> <i64 4, i64 8>
  %i.jh = getelementptr i8, <2 x ptr> %i.jf, <2 x i64> <i64 4, i64 8> ; 4 uses
  %i.ji = getelementptr i8, ptr %i.el, i64 %i.hx
  %i.jj = getelementptr i8, ptr %i.ji, i64 %i.ht
  %i.jk = getelementptr i8, ptr %i.jj, i64 %i.hu  ; 5 uses
  %i.jl = insertelement <4 x ptr> poison, ptr %i.im, i64 0
  %i.jm = insertelement <4 x ptr> %i.jl, ptr %i.ia, i64 1
  %i.jn = insertelement <4 x ptr> %i.jm, ptr %i.jk, i64 2
  %i.jo = shufflevector <4 x ptr> %i.jn, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.jp = getelementptr i8, <4 x ptr> %i.jo, <4 x i64> <i64 -8, i64 -12, i64 -4, i64 -12> ; 4 uses
  %i.jq = insertelement <2 x ptr> %i.iy, ptr %i.jk, i64 1
  %i.jr = insertelement <2 x ptr> poison, ptr %i.im, i64 0
  %i.js = insertelement <2 x ptr> %i.jr, ptr %i.jk, i64 1
  %i.jt = getelementptr i8, <2 x ptr> %i.jq, <2 x i64> <i64 -8, i64 -4> ; 5 uses
  %i.ju = getelementptr i8, <2 x ptr> %i.js, <2 x i64> <i64 -8, i64 -4>
  %i.jv = getelementptr i8, ptr %i.el, i64 %i.hu  ; 4 uses
  %i.jw = getelementptr i8, ptr %i.el, i64 %i.ht
  %scevgep3344.a = getelementptr i8, ptr %i.jw, i64 %i.hu ; 9 uses
  %i.jx = getelementptr i8, ptr %i.el, i64 %i.hx
  %i.jy = getelementptr i8, ptr %i.jx, i64 %i.hu  ; 6 uses
  %i.jz = insertelement <2 x ptr> poison, ptr %i.jc, i64 0
  %i.ka = insertelement <2 x ptr> %i.jz, ptr %i.jy, i64 1
  %i.kb = getelementptr i8, <2 x ptr> %i.ka, <2 x i64> <i64 8, i64 12> ; 2 uses
  %i.kc = shufflevector <2 x ptr> %i.kb, <2 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.kd = insertelement <2 x ptr> %i.jd, ptr %i.jy, i64 0 ; 2 uses
  %i.ke = insertelement <2 x ptr> poison, ptr %i.jy, i64 0
  %i.kf = insertelement <2 x ptr> %i.ke, ptr %i.jv, i64 1 ; 2 uses
  %i.kg = insertelement <2 x ptr> poison, ptr %i.iq, i64 0
  %i.kh = insertelement <2 x ptr> %i.kg, ptr %i.jy, i64 1
  %i.ki = getelementptr i8, <2 x ptr> %i.kd, <2 x i64> <i64 12, i64 8> ; 2 uses
  %i.kj = getelementptr i8, <2 x ptr> %i.kf, i64 12
  %i.kk = getelementptr i8, <2 x ptr> %i.kh, <2 x i64> <i64 8, i64 12>
  %scevgep3345.a = getelementptr i8, ptr %i.jy, i64 12 ; 2 uses
  %i.kl = getelementptr i8, ptr %i.el, i64 %i.hx
  %i.km = getelementptr i8, ptr %i.kl, i64 %i.ht
  %scevgep3346.a = getelementptr i8, ptr %i.km, i64 %i.hu ; 11 uses
  %i.kn = shl nuw nsw i64 %i.fy, 4                ; 7 uses
  %i.ko = getelementptr i8, ptr %i.el, i64 %i.ht
  %i.kp = getelementptr i8, ptr %i.ko, i64 %i.kn
  %i.kq = getelementptr i8, ptr %i.kp, i64 %i.hu  ; 4 uses
  %i.kr = insertelement <2 x ptr> poison, ptr %i.jk, i64 0
  %i.ks = insertelement <2 x ptr> %i.kr, ptr %i.kq, i64 1 ; 2 uses
  %i.kt = getelementptr i8, <2 x ptr> %i.ks, <2 x i64> <i64 -4, i64 -12>
  %scevgep3347.a = getelementptr i8, ptr %i.kq, i64 -12
  %i.ku = shl nsw i64 %i.fz, 4                    ; 7 uses
  %i.kv = getelementptr i8, ptr %i.el, i64 %i.ku
  %i.kw = getelementptr i8, ptr %i.kv, i64 %i.ht
  %i.kx = getelementptr i8, ptr %i.kw, i64 %i.hu  ; 3 uses
  %scevgep3348 = getelementptr i8, ptr %i.kx, i64 -12 ; 3 uses
  %i.ky = getelementptr i8, ptr %i.el, i64 %i.kn
  %i.kz = getelementptr i8, ptr %i.ky, i64 %i.hu  ; 6 uses
  %i.la = insertelement <2 x ptr> %i.kf, ptr %i.kz, i64 0
  %i.lb = getelementptr i8, <2 x ptr> %i.la, <2 x i64> <i64 4, i64 12>
  %i.lc = getelementptr i8, ptr %i.el, i64 %i.ht
  %i.ld = getelementptr i8, ptr %i.lc, i64 %i.kn
  %i.le = getelementptr i8, ptr %i.ld, i64 %i.hu  ; 6 uses
  %i.lf = insertelement <4 x ptr> poison, ptr %i.kq, i64 0
  %i.lg = insertelement <4 x ptr> %i.lf, ptr %i.id, i64 1 ; 2 uses
  %i.lh = insertelement <4 x ptr> %i.lg, ptr %i.le, i64 2
  %i.li = shufflevector <4 x ptr> %i.lh, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.lj = getelementptr i8, <4 x ptr> %i.li, <4 x i64> <i64 -12, i64 -8, i64 -8, i64 -8> ; 2 uses
  %scevgep3350 = getelementptr i8, ptr %i.le, i64 -8 ; 3 uses
  %i.lk = getelementptr i8, ptr %i.el, i64 %i.ku
  %i.ll = getelementptr i8, ptr %i.lk, i64 %i.hu  ; 2 uses
  %i.lm = shufflevector <2 x ptr> %i.kd, <2 x ptr> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ln = insertelement <2 x ptr> %i.lm, ptr %i.ll, i64 0
  %i.lo = getelementptr i8, <2 x ptr> %i.ln, <2 x i64> <i64 4, i64 12>
  %i.lp = getelementptr i8, ptr %i.el, i64 %i.ku
  %i.lq = getelementptr i8, ptr %i.lp, i64 %i.ht
  %i.lr = getelementptr i8, ptr %i.lq, i64 %i.hu  ; 6 uses
  %i.ls = shufflevector <4 x ptr> %i.lg, <4 x ptr> poison, <4 x i32> <i32 1, i32 poison, i32 1, i32 poison>
  %i.lt = insertelement <4 x ptr> %i.ls, ptr %i.kx, i64 1
  %i.lu = insertelement <4 x ptr> %i.lt, ptr %i.lr, i64 3
  %i.lv = getelementptr i8, <4 x ptr> %i.lu, <4 x i64> <i64 -8, i64 -12, i64 -8, i64 -8> ; 4 uses
  %i.lw = insertelement <4 x ptr> poison, ptr %i.kx, i64 0 ; 4 uses
  %i.lx = insertelement <4 x ptr> %i.lw, ptr %i.im, i64 1 ; 2 uses
  %i.ly = insertelement <4 x ptr> %i.lx, ptr %i.lr, i64 2
  %i.lz = shufflevector <4 x ptr> %i.ly, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.ma = getelementptr i8, <4 x ptr> %i.lz, <4 x i64> <i64 -12, i64 -8, i64 -8, i64 -8>
  %i.mb = insertelement <4 x ptr> %i.lw, ptr %i.iv, i64 1 ; 2 uses
  %i.mc = insertelement <4 x ptr> %i.mb, ptr %i.lr, i64 2
  %i.md = shufflevector <4 x ptr> %i.mc, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.me = getelementptr i8, <4 x ptr> %i.md, <4 x i64> <i64 -12, i64 -4, i64 -8, i64 -4>
  %i.mf = insertelement <4 x ptr> %i.lw, ptr %i.jk, i64 1 ; 2 uses
  %i.mg = insertelement <4 x ptr> %i.mf, ptr %i.lr, i64 2
  %i.mh = shufflevector <4 x ptr> %i.mg, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.mi = getelementptr i8, <4 x ptr> %i.mh, <4 x i64> <i64 -12, i64 -4, i64 -8, i64 -4>
  %scevgep3352.a = getelementptr i8, ptr %i.lr, i64 -8 ; 3 uses
  %i.mj = getelementptr i8, ptr %i.el, i64 %i.kn
  %i.mk = getelementptr i8, ptr %i.mj, i64 %i.hu  ; 7 uses
  %i.ml = insertelement <4 x ptr> poison, ptr %i.ij, i64 0
  %i.mm = insertelement <4 x ptr> %i.ml, ptr %i.kz, i64 1
  %i.mn = insertelement <4 x ptr> %i.mm, ptr %i.mk, i64 3
  %i.mo = shufflevector <4 x ptr> %i.mn, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.mp = getelementptr i8, <4 x ptr> %i.mo, <4 x i64> <i64 4, i64 4, i64 4, i64 8> ; 7 uses
  %i.mq = insertelement <4 x ptr> poison, ptr %i.iq, i64 0
  %i.mr = insertelement <4 x ptr> %i.mq, ptr %i.kz, i64 1
  %i.ms = insertelement <4 x ptr> %i.mr, ptr %i.mk, i64 3
  %i.mt = shufflevector <4 x ptr> %i.ms, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.mu = getelementptr i8, <4 x ptr> %i.mt, <4 x i64> <i64 8, i64 4, i64 8, i64 8> ; 5 uses
  %i.mv = insertelement <4 x ptr> poison, ptr %i.jc, i64 0
  %i.mw = insertelement <4 x ptr> %i.mv, ptr %i.kz, i64 1
  %i.mx = insertelement <4 x ptr> %i.mw, ptr %i.mk, i64 3
  %i.my = shufflevector <4 x ptr> %i.mx, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.mz = getelementptr i8, <4 x ptr> %i.my, <4 x i64> <i64 8, i64 4, i64 8, i64 8> ; 4 uses
  %i.na = insertelement <4 x ptr> poison, ptr %i.jv, i64 0
  %i.nb = insertelement <4 x ptr> %i.na, ptr %i.kz, i64 1
  %i.nc = insertelement <4 x ptr> %i.nb, ptr %i.mk, i64 3
  %i.nd = shufflevector <4 x ptr> %i.nc, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.ne = getelementptr i8, <4 x ptr> %i.nd, <4 x i64> <i64 12, i64 4, i64 12, i64 8> ; 4 uses
  %scevgep3353 = getelementptr i8, ptr %i.mk, i64 8
  %i.nf = getelementptr i8, ptr %i.el, i64 %i.ht
  %i.ng = getelementptr i8, ptr %i.nf, i64 %i.kn
  %i.nh = getelementptr i8, ptr %i.ng, i64 %i.hu  ; 5 uses
  %i.ni = insertelement <4 x ptr> %i.lw, ptr %i.le, i64 1
  %i.nj = insertelement <4 x ptr> %i.ni, ptr %i.lr, i64 2
  %i.nk = insertelement <4 x ptr> %i.nj, ptr %i.nh, i64 3
  %i.nl = getelementptr i8, <4 x ptr> %i.nk, <4 x i64> <i64 -12, i64 -8, i64 -8, i64 -4>
  %i.nm = shufflevector <4 x ptr> %i.lx, <4 x ptr> poison, <4 x i32> <i32 1, i32 poison, i32 1, i32 poison>
  %i.nn = insertelement <4 x ptr> %i.nm, ptr %i.le, i64 1
  %i.no = insertelement <4 x ptr> %i.nn, ptr %i.nh, i64 3
  %i.np = getelementptr i8, <4 x ptr> %i.no, <4 x i64> <i64 -8, i64 -8, i64 -8, i64 -4> ; 3 uses
  %i.nq = shufflevector <4 x ptr> %i.mb, <4 x ptr> poison, <4 x i32> <i32 1, i32 poison, i32 1, i32 poison>
  %i.nr = insertelement <4 x ptr> %i.nq, ptr %i.le, i64 1
  %i.ns = insertelement <4 x ptr> %i.nr, ptr %i.nh, i64 3
  %i.nt = getelementptr i8, <4 x ptr> %i.ns, <4 x i64> <i64 -4, i64 -8, i64 -4, i64 -4> ; 4 uses
  %i.nu = shufflevector <4 x ptr> %i.mf, <4 x ptr> poison, <4 x i32> <i32 1, i32 poison, i32 1, i32 poison>
  %i.nv = insertelement <4 x ptr> %i.nu, ptr %i.le, i64 1
  %i.nw = insertelement <4 x ptr> %i.nv, ptr %i.nh, i64 3
  %i.nx = getelementptr i8, <4 x ptr> %i.nw, <4 x i64> <i64 -4, i64 -8, i64 -4, i64 -4>
  %i.ny = insertelement <2 x ptr> %i.ks, ptr %i.nh, i64 0
  %i.nz = getelementptr i8, <2 x ptr> %i.ny, <2 x i64> <i64 -4, i64 -12> ; 2 uses
  %i.oa = getelementptr i8, ptr %i.el, i64 %i.ku
  %i.ob = getelementptr i8, ptr %i.oa, i64 %i.hu  ; 5 uses
  %i.oc = insertelement <4 x ptr> poison, ptr %i.jy, i64 0
  %i.od = insertelement <4 x ptr> %i.oc, ptr %i.jv, i64 1
  %i.oe = insertelement <4 x ptr> %i.od, ptr %i.ob, i64 2
  %i.of = insertelement <4 x ptr> %i.oe, ptr %i.kz, i64 3
  %i.og = getelementptr i8, <4 x ptr> %i.of, <4 x i64> <i64 12, i64 12, i64 8, i64 4> ; 5 uses
  %i.oh = insertelement <2 x ptr> %i.is, ptr %i.ob, i64 0
  %i.oi = insertelement <2 x ptr> poison, ptr %i.jv, i64 0 ; 2 uses
  %i.oj = insertelement <2 x ptr> %i.oi, ptr %i.ob, i64 1
  %i.ok = getelementptr i8, <2 x ptr> %i.oh, i64 8 ; 3 uses
  %i.ol = getelementptr i8, <2 x ptr> %i.oj, <2 x i64> <i64 12, i64 8>
  %i.om = getelementptr i8, ptr %i.el, i64 %i.ku
  %i.on = getelementptr i8, ptr %i.om, i64 %i.ht
  %i.oo = getelementptr i8, ptr %i.on, i64 %i.hu  ; 3 uses
  %i.op = insertelement <2 x ptr> poison, ptr %i.kq, i64 0
  %i.oq = insertelement <2 x ptr> %i.op, ptr %i.oo, i64 1
  %i.or = insertelement <2 x ptr> %i.io, ptr %i.oo, i64 1
  %i.os = insertelement <2 x ptr> %i.iw, ptr %i.oo, i64 0
  %i.ot = getelementptr i8, <2 x ptr> %i.oq, <2 x i64> <i64 -12, i64 -4> ; 6 uses
  %i.ou = getelementptr i8, <2 x ptr> %i.or, <2 x i64> <i64 -12, i64 -4>
  %i.ov = getelementptr i8, <2 x ptr> %i.os, i64 -4
  %i.ow = getelementptr i8, ptr %i.el, i64 %i.kn
  %i.ox = getelementptr i8, ptr %i.ow, i64 %i.hu  ; 4 uses
  %i.oy = insertelement <4 x ptr> poison, ptr %i.mk, i64 0
  %i.oz = insertelement <4 x ptr> %i.oy, ptr %i.ib, i64 1 ; 2 uses
  %i.pa = insertelement <4 x ptr> %i.oz, ptr %i.ox, i64 2
  %i.pb = shufflevector <4 x ptr> %i.pa, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
end_hunk_0
begin_hunk_1_@process:bb.a
  %i.akt = icmp ult <8 x ptr> %i.akr, %i.aks
  %i.aku = and <8 x i1> %i.akq, %i.akt            ; 2 uses
  %i.akv = icmp ult <4 x ptr> %i.qg, %i.nl
  %i.akw = shufflevector <4 x ptr> %i.ss, <4 x ptr> %i.pc, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.akx = icmp ult <4 x ptr> %i.akw, %i.qh
  %i.aky = and <4 x i1> %i.akv, %i.akx
  %i.akz = shufflevector <4 x ptr> %i.qf, <4 x ptr> %i.pc, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.ala = insertelement <4 x ptr> %i.tl, ptr %scevgep3358.a, i64 1
  %i.alb = insertelement <4 x ptr> %i.ala, ptr %scevgep3360, i64 2
  %i.alc = shufflevector <4 x ptr> %i.alb, <4 x ptr> %i.jp, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.ald = icmp ult <4 x ptr> %i.akz, %i.alc
  %i.ale = insertelement <4 x ptr> %i.qv, ptr %invariant.gep2977, i64 3
  %i.alf = icmp ult <4 x ptr> %i.ale, %i.ih
  %i.alg = and <4 x i1> %i.alf, %i.ald
  %i.alh = shufflevector <4 x ptr> %i.ri, <4 x ptr> %i.ne, <4 x i32> <i32 0, i32 1, i32 0, i32 4>
  %i.ali = icmp ult <4 x ptr> %i.alh, %i.jp
  %i.alj = shufflevector <4 x ptr> %i.qi, <4 x ptr> %i.mz, <4 x i32> <i32 0, i32 1, i32 4, i32 1>
  %i.alk = insertelement <4 x ptr> %i.re, ptr %scevgep3344.a, i64 3
  %i.all = icmp ult <4 x ptr> %i.alj, %i.alk
  %i.alm = and <4 x i1> %i.all, %i.ali
  %i.aln = icmp ult <2 x ptr> %i.td, %i.te
  %i.alo = icmp ult <2 x ptr> %i.ki, %i.iz
  %i.alp = shufflevector <2 x ptr> %i.td, <2 x ptr> %i.jh, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.alq = icmp ult <2 x ptr> %i.alp, %i.ot
  %i.alr = icmp ult <2 x ptr> %i.tb, %i.ip
  %i.als = icmp ult <2 x ptr> %i.alp, %i.su
  %i.alt = icmp ult <2 x ptr> %i.tc, %i.ip
  %i.alu = icmp ult <2 x ptr> %i.td, %i.sw
  %i.alv = icmp ult <2 x ptr> %i.lb, %i.iz
  %i.alw = insertelement <2 x ptr> poison, ptr %scevgep3352.a, i64 0
  %i.alx = insertelement <2 x ptr> %i.alw, ptr %scevgep3346.a, i64 1
  %i.aly = icmp ult <2 x ptr> %i.td, %i.alx
  %i.alz = icmp ult <2 x ptr> %i.lo, %i.iz
  %i.ama = icmp ult <2 x ptr> %i.td, %i.nz
  %i.amb = insertelement <2 x ptr> poison, ptr %scevgep3353, i64 0
  %i.amc = insertelement <2 x ptr> %i.amb, ptr %invariant.gep2973, i64 1
  %i.amd = icmp ult <2 x ptr> %i.amc, %i.iz
  %i.ame = insertelement <2 x ptr> %i.ta, ptr %invariant.gep2977, i64 0
  %i.amf = icmp ult <2 x ptr> %i.ame, %i.ov
  %i.amg = icmp ult <2 x ptr> %i.ok, %i.ou
  %i.amh = shufflevector <4 x ptr> %i.tn, <4 x ptr> %i.np, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.ami = shufflevector <4 x ptr> %i.amh, <4 x ptr> %i.lv, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.amj = icmp ult <4 x ptr> %i.rh, %i.ami
  %i.amk = insertelement <4 x ptr> %i.qs, ptr %invariant.gep2977, i64 1
  %i.aml = shufflevector <4 x ptr> %i.amk, <4 x ptr> %i.mp, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.amm = insertelement <4 x ptr> %i.tm, ptr %scevgep3360, i64 1
  %i.amn = shufflevector <4 x ptr> %i.amm, <4 x ptr> %i.lv, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.amo = shufflevector <4 x ptr> %i.amn, <4 x ptr> %i.nt, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.amp = icmp ult <4 x ptr> %i.aml, %i.amo
  %i.amq = and <4 x i1> %i.amp, %i.amj
  %i.amr = shufflevector <2 x ptr> %i.jt, <2 x ptr> %i.su, <2 x i32> <i32 1, i32 3>
  %i.ams = icmp ult <2 x ptr> %i.it, %i.amr
  %i.amt = icmp ult <2 x ptr> %i.ph, %i.ja
  %i.amu = icmp ult <2 x ptr> %i.it, %i.sy
  %i.amv = icmp ult <2 x ptr> %i.pw, %i.ja
  %i.amw = insertelement <2 x ptr> %i.sw, ptr %scevgep3346.a, i64 0
  %i.amx = icmp ult <2 x ptr> %i.jg, %i.amw
  %i.amy = icmp ult <2 x ptr> %i.kj, %i.jt
  %i.amz = insertelement <4 x ptr> %i.qo, ptr %invariant.gep2975, i64 1
  %i.ana = shufflevector <4 x ptr> %i.amz, <4 x ptr> %i.pu, <4 x i32> <i32 0, i32 1, i32 0, i32 6>
  %i.anb = icmp ult <4 x ptr> %i.ana, %i.lj
  %i.anc = shufflevector <4 x ptr> %i.qp, <4 x ptr> %i.mp, <4 x i32> <i32 0, i32 1, i32 5, i32 1>
  %i.and = icmp ult <4 x ptr> %i.anc, %i.lv
  %i.ane = and <4 x i1> %i.and, %i.anb
  %i.anf = insertelement <4 x ptr> %i.tr, ptr %scevgep3358.a, i64 2
  %i.ang = shufflevector <4 x ptr> %i.anf, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.anh = icmp ult <4 x ptr> %i.pp, %i.ang
  %i.ani = insertelement <4 x ptr> %i.tk, ptr %scevgep3360, i64 3
  %i.anj = shufflevector <4 x ptr> %i.ani, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.ank = icmp ult <4 x ptr> %i.pc, %i.anj
  %i.anl = and <4 x i1> %i.ank, %i.anh
  %i.anm = shufflevector <2 x ptr> %i.iz, <2 x ptr> %i.te, <2 x i32> <i32 1, i32 2>
  %i.ann = icmp ult <2 x ptr> %i.jh, %i.anm
  %i.ano = icmp ult <2 x ptr> %i.kk, %i.ju
  %i.anp = icmp ult <2 x ptr> %i.jh, %i.kt
  %i.anq = shufflevector <2 x ptr> %i.ki, <2 x ptr> %i.tb, <2 x i32> <i32 1, i32 2>
  %i.anr = shufflevector <2 x ptr> %i.ip, <2 x ptr> %i.jt, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ans = icmp ult <2 x ptr> %i.anq, %i.anr
  %i.ant = icmp ult <2 x ptr> %i.jh, %i.sz
  %i.anu = icmp ult <2 x ptr> %i.ol, %i.anr
  %bound03539 = icmp ult ptr %scevgep3337.a, %scevgep3346.a
  %bound13540 = icmp ult ptr %scevgep3345.a, %scevgep3338
  %found.conflict3541 = and i1 %bound03539, %bound13540
  %bound03543 = icmp ult ptr %scevgep3337.a, %scevgep3347.a
  %bound13544 = icmp ult ptr %invariant.gep2973, %scevgep3338
  %found.conflict3545 = and i1 %bound03543, %bound13544
  %i.anv = icmp ult <4 x ptr> %i.mp, %i.ma
  %i.anw = icmp ult <4 x ptr> %i.sr, %i.np
  %i.anx = and <4 x i1> %i.anw, %i.anv
  %bound03571 = icmp ult ptr %scevgep3337.a, %scevgep3360
  %bound13572 = icmp ult ptr %scevgep3359.a, %scevgep3338
  %found.conflict3573 = and i1 %bound03571, %bound13572
  %i.any = icmp ult <4 x ptr> %i.mu, %i.me
  %i.anz = icmp ult <4 x ptr> %i.sq, %i.nt
  %i.aoa = and <4 x i1> %i.anz, %i.any
  %i.aob = icmp ult <4 x ptr> %i.mz, %i.mi
  %i.aoc = icmp ult <4 x ptr> %i.sp, %i.nx
  %i.aod = and <4 x i1> %i.aoc, %i.aob
  %i.aoe = icmp ult <4 x ptr> %i.kc, %i.tp
  %i.aof = insertelement <4 x ptr> %i.ts, ptr %scevgep3346.a, i64 1 ; 2 uses
  %i.aog = shufflevector <4 x ptr> %i.aof, <4 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.aoh = icmp ult <4 x ptr> %i.pu, %i.aog
  %i.aoi = insertelement <4 x ptr> %i.tj, ptr %scevgep3350, i64 3
  %i.aoj = icmp ult <4 x ptr> %i.sg, %i.aoi
  %i.aok = insertelement <4 x ptr> %i.tg, ptr %scevgep3346.a, i64 3
  %i.aol = shufflevector <4 x ptr> %i.aok, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.aom = icmp ult <4 x ptr> %i.og, %i.aol
  %i.aon = icmp ult <4 x ptr> %i.ne, %i.ru
  %i.aoo = shufflevector <4 x ptr> %i.rq, <4 x ptr> %i.to, <4 x i32> <i32 0, i32 1, i32 0, i32 4>
  %i.aop = icmp ult <4 x ptr> %i.so, %i.aoo
  %i.aoq = and <4 x i1> %i.aop, %i.aon
  %i.aor = insertelement <4 x ptr> %i.sn, ptr %invariant.gep2975, i64 3
  %i.aos = insertelement <4 x ptr> %i.th, ptr %scevgep3346.a, i64 3
  %i.aot = icmp ult <4 x ptr> %i.aor, %i.aos
  %i.aou = insertelement <4 x ptr> %i.sh, ptr %invariant.gep2973, i64 2
  %i.aov = icmp ult <4 x ptr> %i.aou, %i.sb
  %i.aow = and <4 x i1> %i.aov, %i.aot
  %i.aox = and <4 x i1> %i.aoj, %i.aom
  %i.aoy = insertelement <2 x ptr> %i.ti, ptr %scevgep3358.a, i64 1
  %i.aoz = icmp ult <2 x ptr> %i.sm, %i.aoy
  %i.apa = shufflevector <4 x ptr> %i.aof, <4 x ptr> poison, <2 x i32> <i32 1, i32 1>
  %i.apb = icmp ult <2 x ptr> %i.pf, %i.apa
  %bound03723 = icmp ult ptr %scevgep3345.a, %scevgep3360
  %bound13724 = icmp ult ptr %scevgep3359.a, %scevgep3346.a
  %i.apc = shufflevector <4 x i1> %i.aky, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.apd = shufflevector <4 x i1> %i.alg, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ape = or <8 x i1> %i.apc, %i.apd
  %i.apf = shufflevector <4 x i1> %i.alm, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.apg = or <8 x i1> %i.ape, %i.apf
  %i.aph = shufflevector <4 x i1> %i.amq, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.api = or <8 x i1> %i.apg, %i.aph
  %i.apj = shufflevector <4 x i1> %i.ane, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.apk = or <8 x i1> %i.api, %i.apj
  %i.apl = shufflevector <4 x i1> %i.anl, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.apm = or <8 x i1> %i.apk, %i.apl
  %i.apn = shufflevector <4 x i1> %i.anx, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.apo = or <8 x i1> %i.apm, %i.apn
  %i.app = shufflevector <4 x i1> %i.aoa, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.apq = or <8 x i1> %i.apo, %i.app
  %i.apr = shufflevector <4 x i1> %i.aod, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aps = or <8 x i1> %i.apq, %i.apr
  %i.apt = shufflevector <4 x i1> %i.aoq, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.apu = or <8 x i1> %i.aps, %i.apt
  %i.apv = shufflevector <4 x i1> %i.aow, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.apw = or <8 x i1> %i.apu, %i.apv
  %i.apx = or <8 x i1> %i.apw, %i.aku
  %i.apy = shufflevector <8 x i1> %i.apx, <8 x i1> %i.aku, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.apz = bitcast <8 x i1> %i.apy to i8
  %i.aqa = icmp ne i8 %i.apz, 0
  %i.aqb = insertelement <8 x i1> poison, i1 %bound03723, i64 6
  %i.aqc = insertelement <8 x i1> %i.aqb, i1 %i.aqa, i64 7
  %i.aqd = shufflevector <4 x i1> %i.aoe, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aqe = shufflevector <8 x i1> %i.aqd, <8 x i1> %i.aqc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.aqf = shufflevector <2 x i1> %i.aoz, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aqg = shufflevector <8 x i1> %i.aqe, <8 x i1> %i.aqf, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.aqh = insertelement <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, i1 %bound13724, i64 6
  %i.aqi = shufflevector <4 x i1> %i.aoh, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aqj = shufflevector <8 x i1> %i.aqi, <8 x i1> %i.aqh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.aqk = shufflevector <2 x i1> %i.apb, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aql = shufflevector <8 x i1> %i.aqj, <8 x i1> %i.aqk, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.aqm = and <8 x i1> %i.aqg, %i.aql
  %i.aqn = bitcast <4 x i1> %i.aox to i4
  %i.aqo = icmp ne i4 %i.aqn, 0
  %i.aqp = bitcast <8 x i1> %i.aqm to i8
  %i.aqq = icmp ne i8 %i.aqp, 0
  %op.rdx4145 = or i1 %found.conflict3541, %found.conflict3545
  %i.aqr = and <2 x i1> %i.alq, %i.alr
  %i.aqs = and <2 x i1> %i.als, %i.alt
  %i.aqt = and <2 x i1> %i.aln, %i.alo
  %i.aqu = and <2 x i1> %i.alu, %i.alv
  %i.aqv = and <2 x i1> %i.aly, %i.alz
  %i.aqw = and <2 x i1> %i.ama, %i.amd
  %i.aqx = and <2 x i1> %i.amg, %i.amf
  %i.aqy = and <2 x i1> %i.ams, %i.amt
  %i.aqz = and <2 x i1> %i.amu, %i.amv
  %i.ara = and <2 x i1> %i.amx, %i.amy
  %i.arb = and <2 x i1> %i.ann, %i.ano
  %i.arc = and <2 x i1> %i.anp, %i.ans
  %i.ard = and <2 x i1> %i.ant, %i.anu
  %i.are = or <2 x i1> %i.aqr, %i.aqs
  %i.arf = insertelement <2 x i1> poison, i1 %i.aqq, i64 0
  %i.arg = insertelement <2 x i1> %i.arf, i1 %found.conflict3573, i64 1
  %i.arh = or <2 x i1> %i.arg, %i.aqt
  %i.ari = or <2 x i1> %i.aqu, %i.aqv
  %i.arj = or <2 x i1> %i.aqw, %i.aqx
  %i.ark = or <2 x i1> %i.aqy, %i.aqz
  %i.arl = or <2 x i1> %i.ara, %i.arb
  %i.arm = or <2 x i1> %i.arc, %i.ard
  %i.arn = or <2 x i1> %i.are, %i.arh
  %i.aro = or <2 x i1> %i.ari, %i.arj
  %i.arp = or <2 x i1> %i.ark, %i.arl
  %i.arq = insertelement <2 x i1> poison, i1 %op.rdx4145, i64 0
  %i.arr = insertelement <2 x i1> %i.arq, i1 %i.aqo, i64 1
  %i.ars = or <2 x i1> %i.arm, %i.arr
  %i.art = or <2 x i1> %i.arn, %i.aro
  %i.aru = or <2 x i1> %i.arp, %i.ars
  %i.arv = or <2 x i1> %i.art, %i.aru             ; 2 uses
  %i.arw = extractelement <2 x i1> %i.arv, i64 0
  %i.arx = extractelement <2 x i1> %i.arv, i64 1
  %op.rdx4167 = or i1 %i.arw, %i.arx
  %n.vec3730 = and i64 %wide.trip.count2534, 2147483646 ; 3 uses
  %cmp.n3746 = icmp eq i64 %n.vec3730, %wide.trip.count2534
  %i.ary = getelementptr inbounds nuw i8, ptr %i.l, i64 6176
  %i.arz = getelementptr inbounds nuw i8, ptr %i.l, i64 6208
  %i.asa = getelementptr inbounds nuw i8, ptr %i.l, i64 6240
  %i.asb = getelementptr inbounds nuw i8, ptr %i.l, i64 4128
  %i.asc = getelementptr inbounds nuw i8, ptr %i.l, i64 4160
  %i.asd = getelementptr inbounds nuw i8, ptr %i.l, i64 4192
  %i.ase = getelementptr inbounds nuw i8, ptr %i.l, i64 2080
  %i.asf = getelementptr inbounds nuw i8, ptr %i.l, i64 2112
  %i.asg = getelementptr inbounds nuw i8, ptr %i.l, i64 2144
  %i.ash = getelementptr inbounds nuw i8, ptr %i.l, i64 6272
  %i.asi = getelementptr inbounds nuw i8, ptr %i.l, i64 6304
  %i.asj = getelementptr inbounds nuw i8, ptr %i.l, i64 6336
  %i.ask = getelementptr inbounds nuw i8, ptr %i.l, i64 6368
  %i.asl = getelementptr inbounds nuw i8, ptr %i.l, i64 4224
  %i.asm = getelementptr inbounds nuw i8, ptr %i.l, i64 4256
  %i.asn = getelementptr inbounds nuw i8, ptr %i.l, i64 4288
  %i.aso = getelementptr inbounds nuw i8, ptr %i.l, i64 4320
  %i.asp = getelementptr inbounds nuw i8, ptr %i.l, i64 2176
  %i.asq = getelementptr inbounds nuw i8, ptr %i.l, i64 2208
  %i.asr = getelementptr inbounds nuw i8, ptr %i.l, i64 2240
  %i.ass = getelementptr inbounds nuw i8, ptr %i.l, i64 2272
  %i.ast = getelementptr inbounds nuw i8, ptr %i.l, i64 6400
  %i.asu = getelementptr inbounds nuw i8, ptr %i.l, i64 6432
  %i.asv = getelementptr inbounds nuw i8, ptr %i.l, i64 6464
  %i.asw = getelementptr inbounds nuw i8, ptr %i.l, i64 6496
  %i.asx = getelementptr inbounds nuw i8, ptr %i.l, i64 4352
  %i.asy = getelementptr inbounds nuw i8, ptr %i.l, i64 4384
  %i.asz = getelementptr inbounds nuw i8, ptr %i.l, i64 4416
  %i.ata = getelementptr inbounds nuw i8, ptr %i.l, i64 4448
  %i.atb = getelementptr inbounds nuw i8, ptr %i.l, i64 2304
  %i.atc = getelementptr inbounds nuw i8, ptr %i.l, i64 2336
  %i.atd = getelementptr inbounds nuw i8, ptr %i.l, i64 2368
  %i.ate = getelementptr inbounds nuw i8, ptr %i.l, i64 2400
  %i.atf = getelementptr inbounds nuw i8, ptr %i.l, i64 6528
  %i.atg = getelementptr inbounds nuw i8, ptr %i.l, i64 6560
  %i.ath = getelementptr inbounds nuw i8, ptr %i.l, i64 6592
  %i.ati = getelementptr inbounds nuw i8, ptr %i.l, i64 6624
  %i.atj = getelementptr inbounds nuw i8, ptr %i.l, i64 4480
  %i.atk = getelementptr inbounds nuw i8, ptr %i.l, i64 4512
  %i.atl = getelementptr inbounds nuw i8, ptr %i.l, i64 4544
  %i.atm = getelementptr inbounds nuw i8, ptr %i.l, i64 4576
  %i.atn = getelementptr inbounds nuw i8, ptr %i.l, i64 2432
  %i.ato = getelementptr inbounds nuw i8, ptr %i.l, i64 2464
  %i.atp = getelementptr inbounds nuw i8, ptr %i.l, i64 2496
  %i.atq = getelementptr inbounds nuw i8, ptr %i.l, i64 2528
  %i.atr = getelementptr inbounds nuw i8, ptr %i.l, i64 6656
  %i.ats = getelementptr inbounds nuw i8, ptr %i.l, i64 6688
  %i.att = getelementptr inbounds nuw i8, ptr %i.l, i64 6720
  %i.atu = getelementptr inbounds nuw i8, ptr %i.l, i64 6752
  %i.atv = getelementptr inbounds nuw i8, ptr %i.l, i64 4608
  %i.atw = getelementptr inbounds nuw i8, ptr %i.l, i64 4640
  %i.atx = getelementptr inbounds nuw i8, ptr %i.l, i64 4672
  %i.aty = getelementptr inbounds nuw i8, ptr %i.l, i64 4704
  %i.atz = getelementptr inbounds nuw i8, ptr %i.l, i64 2560
  %i.aua = getelementptr inbounds nuw i8, ptr %i.l, i64 2592
  %i.aub = getelementptr inbounds nuw i8, ptr %i.l, i64 2624
  %i.auc = getelementptr inbounds nuw i8, ptr %i.l, i64 2656
  %i.aud = getelementptr inbounds nuw i8, ptr %i.l, i64 6784
  %i.aue = getelementptr inbounds nuw i8, ptr %i.l, i64 6816
  %i.auf = getelementptr inbounds nuw i8, ptr %i.l, i64 6848
  %i.aug = getelementptr inbounds nuw i8, ptr %i.l, i64 6880
  %i.auh = getelementptr inbounds nuw i8, ptr %i.l, i64 4736
  %i.aui = getelementptr inbounds nuw i8, ptr %i.l, i64 4768
  %i.auj = getelementptr inbounds nuw i8, ptr %i.l, i64 4800
  %i.auk = getelementptr inbounds nuw i8, ptr %i.l, i64 4832
  %i.aul = getelementptr inbounds nuw i8, ptr %i.l, i64 2688
  %i.aum = getelementptr inbounds nuw i8, ptr %i.l, i64 2720
  %i.aun = getelementptr inbounds nuw i8, ptr %i.l, i64 2752
  %i.auo = getelementptr inbounds nuw i8, ptr %i.l, i64 2784
  %i.aup = getelementptr inbounds nuw i8, ptr %i.l, i64 6912
  %i.auq = getelementptr inbounds nuw i8, ptr %i.l, i64 6944
  %i.aur = getelementptr inbounds nuw i8, ptr %i.l, i64 6976
  %i.aus = getelementptr inbounds nuw i8, ptr %i.l, i64 7008
  %i.aut = getelementptr inbounds nuw i8, ptr %i.l, i64 4864
  %i.auu = getelementptr inbounds nuw i8, ptr %i.l, i64 4896
  %i.auv = getelementptr inbounds nuw i8, ptr %i.l, i64 4928
  %i.auw = getelementptr inbounds nuw i8, ptr %i.l, i64 4960
  %i.aux = getelementptr inbounds nuw i8, ptr %i.l, i64 2816
  %i.auy = getelementptr inbounds nuw i8, ptr %i.l, i64 2848
  %i.auz = getelementptr inbounds nuw i8, ptr %i.l, i64 2880
  %i.ava = getelementptr inbounds nuw i8, ptr %i.l, i64 2912
  %i.avb = getelementptr inbounds nuw i8, ptr %i.l, i64 7040
  %i.avc = getelementptr inbounds nuw i8, ptr %i.l, i64 7072
  %i.avd = getelementptr inbounds nuw i8, ptr %i.l, i64 7104
  %i.ave = getelementptr inbounds nuw i8, ptr %i.l, i64 7136
  %i.avf = getelementptr inbounds nuw i8, ptr %i.l, i64 4992
  %i.avg = getelementptr inbounds nuw i8, ptr %i.l, i64 5024
  %i.avh = getelementptr inbounds nuw i8, ptr %i.l, i64 5056
  %i.avi = getelementptr inbounds nuw i8, ptr %i.l, i64 5088
  %i.avj = getelementptr inbounds nuw i8, ptr %i.l, i64 2944
  %i.avk = getelementptr inbounds nuw i8, ptr %i.l, i64 2976
  %i.avl = getelementptr inbounds nuw i8, ptr %i.l, i64 3008
  %i.avm = getelementptr inbounds nuw i8, ptr %i.l, i64 3040
  %i.avn = getelementptr inbounds nuw i8, ptr %i.l, i64 7168
  %i.avo = getelementptr inbounds nuw i8, ptr %i.l, i64 7200
  %i.avp = getelementptr inbounds nuw i8, ptr %i.l, i64 7232
  %i.avq = getelementptr inbounds nuw i8, ptr %i.l, i64 7264
  %i.avr = getelementptr inbounds nuw i8, ptr %i.l, i64 5120
  %i.avs = getelementptr inbounds nuw i8, ptr %i.l, i64 5152
  %i.avt = getelementptr inbounds nuw i8, ptr %i.l, i64 5184
  %i.avu = getelementptr inbounds nuw i8, ptr %i.l, i64 5216
  %i.avv = getelementptr inbounds nuw i8, ptr %i.l, i64 3072
  %i.avw = getelementptr inbounds nuw i8, ptr %i.l, i64 3104
  %i.avx = getelementptr inbounds nuw i8, ptr %i.l, i64 3136
  %i.avy = getelementptr inbounds nuw i8, ptr %i.l, i64 3168
  %i.avz = getelementptr inbounds nuw i8, ptr %i.l, i64 7296
  %i.awa = getelementptr inbounds nuw i8, ptr %i.l, i64 7328
  %i.awb = getelementptr inbounds nuw i8, ptr %i.l, i64 7360
  %i.awc = getelementptr inbounds nuw i8, ptr %i.l, i64 7392
  %i.awd = getelementptr inbounds nuw i8, ptr %i.l, i64 5248
  %i.awe = getelementptr inbounds nuw i8, ptr %i.l, i64 5280
  %i.awf = getelementptr inbounds nuw i8, ptr %i.l, i64 5312
  %i.awg = getelementptr inbounds nuw i8, ptr %i.l, i64 5344
  %i.awh = getelementptr inbounds nuw i8, ptr %i.l, i64 3200
  %i.awi = getelementptr inbounds nuw i8, ptr %i.l, i64 3232
  %i.awj = getelementptr inbounds nuw i8, ptr %i.l, i64 3264
  %i.awk = getelementptr inbounds nuw i8, ptr %i.l, i64 3296
  %i.awl = getelementptr inbounds nuw i8, ptr %i.l, i64 7424
  %i.awm = getelementptr inbounds nuw i8, ptr %i.l, i64 7456
  %i.awn = getelementptr inbounds nuw i8, ptr %i.l, i64 7488
  %i.awo = getelementptr inbounds nuw i8, ptr %i.l, i64 7520
  %i.awp = getelementptr inbounds nuw i8, ptr %i.l, i64 5376
  %i.awq = getelementptr inbounds nuw i8, ptr %i.l, i64 5408
  %i.awr = getelementptr inbounds nuw i8, ptr %i.l, i64 5440
  %i.aws = getelementptr inbounds nuw i8, ptr %i.l, i64 5472
  %i.awt = getelementptr inbounds nuw i8, ptr %i.l, i64 3328
  %i.awu = getelementptr inbounds nuw i8, ptr %i.l, i64 3360
  %i.awv = getelementptr inbounds nuw i8, ptr %i.l, i64 3392
  %i.aww = getelementptr inbounds nuw i8, ptr %i.l, i64 3424
  %i.awx = getelementptr inbounds nuw i8, ptr %i.l, i64 7552
  %i.awy = getelementptr inbounds nuw i8, ptr %i.l, i64 7584
  %i.awz = getelementptr inbounds nuw i8, ptr %i.l, i64 7616
  %i.axa = getelementptr inbounds nuw i8, ptr %i.l, i64 7648
  %i.axb = getelementptr inbounds nuw i8, ptr %i.l, i64 5504
  %i.axc = getelementptr inbounds nuw i8, ptr %i.l, i64 5536
  %i.axd = getelementptr inbounds nuw i8, ptr %i.l, i64 5568
  %i.axe = getelementptr inbounds nuw i8, ptr %i.l, i64 5600
  %i.axf = getelementptr inbounds nuw i8, ptr %i.l, i64 3456
  %i.axg = getelementptr inbounds nuw i8, ptr %i.l, i64 3488
  %i.axh = getelementptr inbounds nuw i8, ptr %i.l, i64 3520
  %i.axi = getelementptr inbounds nuw i8, ptr %i.l, i64 3552
  %i.axj = getelementptr inbounds nuw i8, ptr %i.l, i64 7680
  %i.axk = getelementptr inbounds nuw i8, ptr %i.l, i64 7712
  %i.axl = getelementptr inbounds nuw i8, ptr %i.l, i64 7744
  %i.axm = getelementptr inbounds nuw i8, ptr %i.l, i64 7776
  %i.axn = getelementptr inbounds nuw i8, ptr %i.l, i64 5632
  %i.axo = getelementptr inbounds nuw i8, ptr %i.l, i64 5664
  %i.axp = getelementptr inbounds nuw i8, ptr %i.l, i64 5696
  %i.axq = getelementptr inbounds nuw i8, ptr %i.l, i64 5728
  %i.axr = getelementptr inbounds nuw i8, ptr %i.l, i64 3584
  %i.axs = getelementptr inbounds nuw i8, ptr %i.l, i64 3616
  %i.axt = getelementptr inbounds nuw i8, ptr %i.l, i64 3648
  %i.axu = getelementptr inbounds nuw i8, ptr %i.l, i64 3680
  %i.axv = getelementptr inbounds nuw i8, ptr %i.l, i64 7808
  %i.axw = getelementptr inbounds nuw i8, ptr %i.l, i64 7840
  %i.axx = getelementptr inbounds nuw i8, ptr %i.l, i64 7872
  %i.axy = getelementptr inbounds nuw i8, ptr %i.l, i64 7904
  %i.axz = getelementptr inbounds nuw i8, ptr %i.l, i64 5760
  %i.aya = getelementptr inbounds nuw i8, ptr %i.l, i64 5792
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.l, i64 5824
  %i.ayc = getelementptr inbounds nuw i8, ptr %i.l, i64 5856
  %i.ayd = getelementptr inbounds nuw i8, ptr %i.l, i64 3712
  %i.aye = getelementptr inbounds nuw i8, ptr %i.l, i64 3744
  %i.ayf = getelementptr inbounds nuw i8, ptr %i.l, i64 3776
  %i.ayg = getelementptr inbounds nuw i8, ptr %i.l, i64 3808
  %i.ayh = getelementptr inbounds nuw i8, ptr %i.l, i64 7936
  %i.ayi = getelementptr inbounds nuw i8, ptr %i.l, i64 7968
  %i.ayj = getelementptr inbounds nuw i8, ptr %i.l, i64 8000
  %i.ayk = getelementptr inbounds nuw i8, ptr %i.l, i64 8032
  %i.ayl = getelementptr inbounds nuw i8, ptr %i.l, i64 5888
  %i.aym = getelementptr inbounds nuw i8, ptr %i.l, i64 5920
  %i.ayn = getelementptr inbounds nuw i8, ptr %i.l, i64 5952
  %i.ayo = getelementptr inbounds nuw i8, ptr %i.l, i64 5984
  %i.ayp = getelementptr inbounds nuw i8, ptr %i.l, i64 3840
  %i.ayq = getelementptr inbounds nuw i8, ptr %i.l, i64 3872
  %i.ayr = getelementptr inbounds nuw i8, ptr %i.l, i64 3904
  %i.ays = getelementptr inbounds nuw i8, ptr %i.l, i64 3936
  %i.ayt = getelementptr inbounds nuw i8, ptr %i.l, i64 8064
  %i.ayu = getelementptr inbounds nuw i8, ptr %i.l, i64 8096
  %i.ayv = getelementptr inbounds nuw i8, ptr %i.l, i64 8128
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.l, i64 8160
  %i.ayx = getelementptr inbounds nuw i8, ptr %i.l, i64 6016
  %i.ayy = getelementptr inbounds nuw i8, ptr %i.l, i64 6048
  %i.ayz = getelementptr inbounds nuw i8, ptr %i.l, i64 6080
  %i.aza = getelementptr inbounds nuw i8, ptr %i.l, i64 6112
  %i.azb = getelementptr inbounds nuw i8, ptr %i.l, i64 3968
  %i.azc = getelementptr inbounds nuw i8, ptr %i.l, i64 4000
  %i.azd = getelementptr inbounds nuw i8, ptr %i.l, i64 4032
  %i.aze = getelementptr inbounds nuw i8, ptr %i.l, i64 4064
  %brmerge3001 = or i1 %i.tu, %i.tt
  %i.azf = and i32 %i.q, 3
  %i.azg = zext nneg i32 %i.azf to i64
  %i.azh = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.azg
  %i.azi = lshr i32 %i.q, 4
  %i.azj = and i32 %i.azi, 3
  %i.azk = zext nneg i32 %i.azj to i64
  %i.azl = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.azk
  %i.azm = lshr i32 %i.q, 8
  %i.azn = and i32 %i.azm, 3
  %i.azo = zext nneg i32 %i.azn to i64
end_hunk_1
begin_hunk_2_@process:bb.a
  %i.esp = getelementptr inbounds [4 x i8], ptr %i.el, i64 %.pn.reass
  %i.esq = fadd reassoc nsz arcp contract afn float %.sroa.02796.2, %.sroa.02804.0
  %i.esr = fmul reassoc nnan nsz arcp contract afn float %.sroa.02804.0, %.sroa.02804.0
  %i.ess = fadd reassoc nsz arcp contract afn float %.sroa.02782.2, 1.000000e+00
  store float %.sroa.02804.0, ptr %i.eso, align 4, !tbaa !33
  %i.est = fadd reassoc nsz arcp contract afn float %.sroa.9.2, 1.000000e+00
  %i.esu = getelementptr inbounds nuw i8, ptr %i.eso, i64 4
  %i.esv = getelementptr inbounds nuw i8, ptr %i.eso, i64 8
  %i.esw = load <8 x float>, ptr %i.gr, align 4   ; 2 uses
  %i.esx = shufflevector <8 x float> %i.esw, <8 x float> poison, <2 x i32> <i32 2, i32 7> ; 2 uses
  %i.esy = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.esx, splat (float 1.000000e-10)
  %i.esz = shufflevector <8 x float> %i.esw, <8 x float> poison, <2 x i32> <i32 0, i32 5>
  %i.eta = fdiv reassoc nsz arcp contract afn <2 x float> %i.esz, %i.esx
  %i.etb = select <2 x i1> %i.esy, <2 x float> %i.eta, <2 x float> splat (float 1.700000e+01) ; 5 uses
  %i.etc = extractelement <2 x float> %i.etb, i64 1 ; 3 uses
  %i.etd = fmul reassoc nnan nsz arcp contract afn float %i.etc, %i.etc
  %i.ete = fadd reassoc nsz arcp contract afn float %.sroa.92792.2, %i.etd
  store float %i.etc, ptr %i.esu, align 4, !tbaa !33
  %i.etf = extractelement <2 x float> %i.etb, i64 0
  %foldExtExtBinop = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.etb, %i.etb
  %i.etg = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.eth = insertelement <4 x float> poison, float %.sroa.02804.0, i64 0
  %i.eti = shufflevector <2 x float> %i.etb, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison> ; 2 uses
  %i.etj = shufflevector <4 x float> %i.eti, <4 x float> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 2>
  %i.etk = shufflevector <4 x float> %i.eth, <4 x float> %i.eti, <4 x i32> <i32 0, i32 4, i32 4, i32 6>
  %i.etl = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.etk)
  %i.etm = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.etl, splat (float 2.000000e+00) ; 4 uses
  %i.etn = extractelement <4 x i1> %i.etm, i64 0  ; 2 uses
  %.sroa.02796.3 = select nsz i1 %i.etn, float %i.esq, float %.sroa.02796.2 ; 3 uses
  %i.eto = insertelement <4 x float> %i.etj, float %i.esr, i64 0
  %i.etp = shufflevector <4 x float> %i.eto, <4 x float> %i.etg, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.etq = fadd reassoc nsz arcp contract afn <4 x float> %i.bwa, %i.etp
  %.sroa.02782.3 = select nsz i1 %i.etn, float %i.ess, float %.sroa.02782.2 ; 3 uses
  %i.etr = extractelement <4 x i1> %i.etm, i64 3  ; 2 uses
  %.sroa.92792.3 = select nsz i1 %i.etr, float %i.ete, float %.sroa.92792.2 ; 3 uses
  %.sroa.9.3 = select nsz i1 %i.etr, float %i.est, float %.sroa.9.2 ; 3 uses
  %i.ets = fadd reassoc nsz arcp contract afn float %.sroa.62784.2, 1.000000e+00
  %i.ett = select <4 x i1> %i.etm, <4 x float> %i.etq, <4 x float> %i.bwa ; 3 uses
  %i.etu = extractelement <4 x i1> %i.etm, i64 1
  %.sroa.62784.3 = select nsz i1 %i.etu, float %i.ets, float %.sroa.62784.2 ; 3 uses
  store float %i.etf, ptr %i.esv, align 4, !tbaa !33
  %i.etv = load float, ptr %i.gs, align 4, !tbaa !33 ; 3 uses
  %i.etw = fcmp reassoc nsz arcp contract afn ogt float %i.etv, 1.000000e-10
  br i1 %i.etw, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.preheader1908.1
  %i.etx = load float, ptr %i.gt, align 4, !tbaa !33
  %i.ety = fdiv reassoc nsz arcp contract afn float %i.etx, %i.etv
  %i.etz = load float, ptr %i.gu, align 4, !tbaa !33
  %i.eua = fadd reassoc nsz arcp contract afn float %i.etz, f0x3727C5AC
  %i.eub = fdiv reassoc nsz arcp contract afn float %i.etv, %i.eua
  br label %bb.aj

bb.aj:                                            ; preds = %.preheader1908.1, %bb.ai
  %storemerge2934 = phi float [ %i.eub, %bb.ai ], [ 0.000000e+00, %.preheader1908.1 ]
  %.sroa.11.0 = phi nsz float [ %i.ety, %bb.ai ], [ 1.700000e+01, %.preheader1908.1 ] ; 5 uses
  store float %storemerge2934, ptr %i.esp, align 4, !tbaa !33
  %i.euc = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %.sroa.11.0)
  %i.eud = fcmp reassoc nsz arcp contract afn olt float %i.euc, 2.000000e+00 ; 3 uses
  %i.eue = fadd reassoc nsz arcp contract afn float %.sroa.122802.2, %.sroa.11.0
  %i.euf = fmul reassoc nnan nsz arcp contract afn float %.sroa.11.0, %.sroa.11.0
  %i.eug = fadd reassoc nsz arcp contract afn float %.sroa.122794.2, %i.euf
  %i.euh = fadd reassoc nsz arcp contract afn float %.sroa.12.2, 1.000000e+00
  %.sroa.122802.3 = select nsz i1 %i.eud, float %i.eue, float %.sroa.122802.2 ; 3 uses
  %.sroa.122794.3 = select nsz i1 %i.eud, float %i.eug, float %.sroa.122794.2 ; 3 uses
  %.sroa.12.3 = select nsz i1 %i.eud, float %i.euh, float %.sroa.12.2 ; 3 uses
  %i.eui = getelementptr inbounds nuw i8, ptr %i.eso, i64 12
  store float %.sroa.11.0, ptr %i.eui, align 4, !tbaa !33
  %indvars.iv.next2495 = add nsw i64 %indvars.iv2494, 112 ; 2 uses
  %i.euj = icmp slt i64 %indvars.iv.next2495, %i.af
  %indvars.iv.next2402 = add nuw i32 %indvars.iv2401, 112
  %indvars.iv.next2404 = add nsw i32 %indvars.iv2403, -112
  %indvars.iv.next2459 = add i32 %indvars.iv2458, 112
  %indvar.next3749 = add i32 %indvar3748, 1
  br i1 %i.euj, label %bb.p, label %._crit_edge2081

.preheader1973:                                   ; preds = %.loopexit1966.1
  br i1 %i.tu, label %.preheader1972, label %.preheader1964.preheader

.preheader1964.preheader:                         ; preds = %.preheader1973
  br i1 %i.akn, label %.preheader1964.epil.preheader, label %.preheader1964

bb.ak:                                            ; preds = %.preheader1975
  %i.euk = extractelement <8 x float> %i.bun, i64 0
  %i.eul = fdiv reassoc nsz arcp contract afn float %i.euk, %i.buo
  %i.eum = fdiv reassoc nsz arcp contract afn float %.sroa.02796.0, %i.buo ; 2 uses
  %i.eun = fmul reassoc nsz arcp contract afn float %i.eum, %i.eum
  %i.euo = fsub reassoc nsz arcp contract afn float %i.eul, %i.eun
  store float %i.euo, ptr %i.b, align 16, !tbaa !33
  %i.eup = fcmp reassoc nsz arcp contract afn une float %.sroa.62784.0, 0.000000e+00
  br i1 %i.eup, label %.loopexit1966.loopexit, label %bb.al

.loopexit1966.loopexit:                           ; preds = %bb.ak
  %i.euq = extractelement <8 x float> %i.bun, i64 2
  %i.eur = fdiv reassoc nsz arcp contract afn float %i.euq, %.sroa.62784.0
  %i.eus = extractelement <8 x float> %i.bun, i64 1
  %i.eut = fdiv reassoc nsz arcp contract afn float %i.eus, %.sroa.62784.0 ; 2 uses
  %i.euu = fmul reassoc nsz arcp contract afn float %i.eut, %i.eut
  %i.euv = fsub reassoc nsz arcp contract afn float %i.eur, %i.euu
  store float %i.euv, ptr %i.gv, align 4, !tbaa !33
  br label %.loopexit1966

bb.al:                                            ; preds = %bb.ak, %.preheader1975
  %i.euw = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !215
  %i.eux = and i32 %i.euw, 33554432
  %.not1790 = icmp eq i32 %i.eux, 0
  br i1 %.not1790, label %.loopexit1966, label %bb.am

bb.am:                                            ; preds = %bb.al
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.6) #20
  br label %.loopexit1966

.loopexit1966:                                    ; preds = %.loopexit1966.loopexit, %bb.al, %bb.am
  %i.euy = phi i1 [ true, %bb.al ], [ true, %bb.am ], [ false, %.loopexit1966.loopexit ]
  %i.euz = fcmp reassoc nsz arcp contract afn une float %.sroa.9.0, 0.000000e+00
  br i1 %i.euz, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %.loopexit1966
  %i.eva = extractelement <8 x float> %i.bun, i64 4
  %i.evb = fdiv reassoc nsz arcp contract afn float %i.eva, %.sroa.9.0
  %i.evc = extractelement <8 x float> %i.bun, i64 3
  %i.evd = fdiv reassoc nsz arcp contract afn float %i.evc, %.sroa.9.0 ; 2 uses
  %i.eve = fmul reassoc nsz arcp contract afn float %i.evd, %i.evd
  %i.evf = fsub reassoc nsz arcp contract afn float %i.evb, %i.eve
  store float %i.evf, ptr %i.fn, align 8, !tbaa !33
  %i.evg = fcmp reassoc nsz arcp contract afn une float %.sroa.12.0, 0.000000e+00
  br i1 %i.evg, label %.loopexit1966.1, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.loopexit1966
  %i.evh = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !215
  %i.evi = and i32 %i.evh, 33554432
  %.not1790.1 = icmp eq i32 %i.evi, 0
  br i1 %.not1790.1, label %.thread1866, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.6) #20
  br label %.thread1866

.loopexit1966.1:                                  ; preds = %bb.an
  %i.evj = extractelement <8 x float> %i.bun, i64 6
  %i.evk = fdiv reassoc nsz arcp contract afn float %i.evj, %.sroa.12.0
  %i.evl = extractelement <8 x float> %i.bun, i64 5
  %i.evm = fdiv reassoc nsz arcp contract afn float %i.evl, %.sroa.12.0 ; 2 uses
  %i.evn = fmul reassoc nsz arcp contract afn float %i.evm, %i.evm
  %i.evo = fsub reassoc nsz arcp contract afn float %i.evk, %i.evn
  store float %i.evo, ptr %i.gw, align 4, !tbaa !33
  br i1 %i.euy, label %.thread1866, label %.preheader1973

.preheader1972.loopexit.unr-lcssa:                ; preds = %.preheader1964
  br i1 %lcmp.mod4292.not, label %.preheader1972, label %.preheader1964.epil.preheader

.preheader1964.epil.preheader:                    ; preds = %.preheader1972.loopexit.unr-lcssa, %.preheader1964.preheader
  %indvars.iv2520.epil.init = phi i64 [ 1, %.preheader1964.preheader ], [ %indvars.iv.next2521.3, %.preheader1972.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod4293)
  br label %.preheader1964.epil

.preheader1964.epil:                              ; preds = %.preheader1964.epil, %.preheader1964.epil.preheader
  %indvars.iv2520.epil = phi i64 [ %indvars.iv.next2521.epil, %.preheader1964.epil ], [ %indvars.iv2520.epil.init, %.preheader1964.epil.preheader ] ; 2 uses
  %epil.iter4291 = phi i64 [ %epil.iter4291.next, %.preheader1964.epil ], [ 0, %.preheader1964.epil.preheader ]
  %i.evp = mul nsw i64 %indvars.iv2520.epil, %i.fx ; 2 uses
  %i.evq = getelementptr [16 x i8], ptr %i.en, i64 %i.evp ; 2 uses
  %i.evr = getelementptr i8, ptr %i.evq, i64 32
  %gep2972.epil = getelementptr [16 x i8], ptr %invariant.gep2971, i64 %i.evp ; 2 uses
  %i.evs = getelementptr i8, ptr %gep2972.epil, i64 -48
  %i.evt = getelementptr i8, ptr %gep2972.epil, i64 -16
  %i.evu = load <4 x float>, ptr %i.evr, align 4, !tbaa !33
  store <4 x float> %i.evu, ptr %i.evq, align 4, !tbaa !33
  %i.evv = load <4 x float>, ptr %i.evs, align 4, !tbaa !33
  store <4 x float> %i.evv, ptr %i.evt, align 4, !tbaa !33
  %indvars.iv.next2521.epil = add nuw nsw i64 %indvars.iv2520.epil, 1
  %epil.iter4291.next = add i64 %epil.iter4291, 1 ; 2 uses
  %epil.iter4291.cmp.not = icmp eq i64 %epil.iter4291.next, %xtraiter4290
  br i1 %epil.iter4291.cmp.not, label %.preheader1972, label %.preheader1964.epil, !llvm.loop !81

.preheader1972:                                   ; preds = %.preheader1972.loopexit.unr-lcssa, %.preheader1964.epil, %.preheader1973
  br i1 %i.fd, label %.preheader1963.preheader, label %._crit_edge2094

.preheader1963.preheader:                         ; preds = %.preheader1972
  %brmerge4521.a = select i1 %min.iters.check3728, i1 true, i1 %op.rdx4167
  br i1 %brmerge4521.a, label %.preheader1963.preheader4183, label %vector.body3731

vector.body3731:                                  ; preds = %.preheader1963.preheader, %vector.body3731
  %index3732 = phi i64 [ %index.next3744, %vector.body3731 ], [ 0, %.preheader1963.preheader ] ; 5 uses
  %i.evw = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep2973, i64 %index3732
  %i.evx = getelementptr inbounds nuw [16 x i8], ptr %i.en, i64 %index3732
  %i.evy = getelementptr [16 x i8], ptr %invariant.gep2975, i64 %index3732
  %i.evz = getelementptr [16 x i8], ptr %invariant.gep2977, i64 %index3732
  %wide.vec3733 = load <8 x float>, ptr %i.evw, align 4, !tbaa !33
  %wide.vec3738 = load <8 x float>, ptr %i.evy, align 4, !tbaa !33
  store <8 x float> %wide.vec3733, ptr %i.evx, align 4, !tbaa !33
  store <8 x float> %wide.vec3738, ptr %i.evz, align 4, !tbaa !33
  %index.next3744 = add nuw i64 %index3732, 2     ; 2 uses
  %i.ewa = icmp eq i64 %index.next3744, %n.vec3730
  br i1 %i.ewa, label %middle.block3745, label %vector.body3731, !llvm.loop !82

middle.block3745:                                 ; preds = %vector.body3731
  br i1 %cmp.n3746, label %._crit_edge2094, label %.preheader1963.preheader4183

.preheader1963.preheader4183:                     ; preds = %.preheader1963.preheader, %middle.block3745
  %indvars.iv2531.ph = phi i64 [ %n.vec3730, %middle.block3745 ], [ 0, %.preheader1963.preheader ] ; 4 uses
  %i.ewb = sub nsw i64 %wide.trip.count2534, %indvars.iv2531.ph
  %xtraiter4296 = and i64 %i.ewb, 3               ; 2 uses
  %lcmp.mod4297.not = icmp eq i64 %xtraiter4296, 0
  br i1 %lcmp.mod4297.not, label %.preheader1963.prol.loopexit, label %.preheader1963.prol

.preheader1963.prol:                              ; preds = %.preheader1963.preheader4183, %.preheader1963.prol
  %indvars.iv2531.prol = phi i64 [ %indvars.iv.next2532.prol, %.preheader1963.prol ], [ %indvars.iv2531.ph, %.preheader1963.preheader4183 ] ; 5 uses
  %prol.iter4298 = phi i64 [ %prol.iter4298.next, %.preheader1963.prol ], [ 0, %.preheader1963.preheader4183 ]
  %gep2974.prol = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep2973, i64 %indvars.iv2531.prol
  %i.ewc = getelementptr inbounds nuw [16 x i8], ptr %i.en, i64 %indvars.iv2531.prol
  %gep2976.prol = getelementptr [16 x i8], ptr %invariant.gep2975, i64 %indvars.iv2531.prol
  %gep2978.prol = getelementptr [16 x i8], ptr %invariant.gep2977, i64 %indvars.iv2531.prol
  %i.ewd = load <4 x float>, ptr %gep2974.prol, align 4, !tbaa !33
  store <4 x float> %i.ewd, ptr %i.ewc, align 4, !tbaa !33
  %i.ewe = load <4 x float>, ptr %gep2976.prol, align 4, !tbaa !33
  store <4 x float> %i.ewe, ptr %gep2978.prol, align 4, !tbaa !33
  %indvars.iv.next2532.prol = add nuw nsw i64 %indvars.iv2531.prol, 1 ; 2 uses
  %prol.iter4298.next = add i64 %prol.iter4298, 1 ; 2 uses
  %prol.iter4298.cmp.not = icmp eq i64 %prol.iter4298.next, %xtraiter4296
  br i1 %prol.iter4298.cmp.not, label %.preheader1963.prol.loopexit, label %.preheader1963.prol, !llvm.loop !83

.preheader1963.prol.loopexit:                     ; preds = %.preheader1963.prol, %.preheader1963.preheader4183
  %indvars.iv2531.unr = phi i64 [ %indvars.iv2531.ph, %.preheader1963.preheader4183 ], [ %indvars.iv.next2532.prol, %.preheader1963.prol ]
  %i.ewf = sub nsw i64 %indvars.iv2531.ph, %wide.trip.count2534
  %i.ewg = icmp ugt i64 %i.ewf, -4
  br i1 %i.ewg, label %._crit_edge2094, label %.preheader1963

.preheader1964:                                   ; preds = %.preheader1964.preheader, %.preheader1964
  %indvars.iv2520 = phi i64 [ %indvars.iv.next2521.3, %.preheader1964 ], [ 1, %.preheader1964.preheader ] ; 5 uses
  %niter4295 = phi i64 [ %niter4295.next.3, %.preheader1964 ], [ 0, %.preheader1964.preheader ]
  %i.ewh = mul nsw i64 %indvars.iv2520, %i.fx     ; 2 uses
  %i.ewi = getelementptr [16 x i8], ptr %i.en, i64 %i.ewh ; 2 uses
  %i.ewj = getelementptr i8, ptr %i.ewi, i64 32
  %gep2972 = getelementptr [16 x i8], ptr %invariant.gep2971, i64 %i.ewh ; 2 uses
  %i.ewk = getelementptr i8, ptr %gep2972, i64 -48
  %i.ewl = getelementptr i8, ptr %gep2972, i64 -16
  %i.ewm = load <4 x float>, ptr %i.ewj, align 4, !tbaa !33
  store <4 x float> %i.ewm, ptr %i.ewi, align 4, !tbaa !33
  %i.ewn = load <4 x float>, ptr %i.ewk, align 4, !tbaa !33
  store <4 x float> %i.ewn, ptr %i.ewl, align 4, !tbaa !33
  %indvars.iv.next2521 = add nuw nsw i64 %indvars.iv2520, 1
  %i.ewo = mul nsw i64 %indvars.iv.next2521, %i.fx ; 2 uses
  %i.ewp = getelementptr [16 x i8], ptr %i.en, i64 %i.ewo ; 2 uses
  %i.ewq = getelementptr i8, ptr %i.ewp, i64 32
  %gep2972.1 = getelementptr [16 x i8], ptr %invariant.gep2971, i64 %i.ewo ; 2 uses
  %i.ewr = getelementptr i8, ptr %gep2972.1, i64 -48
  %i.ews = getelementptr i8, ptr %gep2972.1, i64 -16
  %i.ewt = load <4 x float>, ptr %i.ewq, align 4, !tbaa !33
  store <4 x float> %i.ewt, ptr %i.ewp, align 4, !tbaa !33
  %i.ewu = load <4 x float>, ptr %i.ewr, align 4, !tbaa !33
  store <4 x float> %i.ewu, ptr %i.ews, align 4, !tbaa !33
  %indvars.iv.next2521.1 = add nuw nsw i64 %indvars.iv2520, 2
  %i.ewv = mul nsw i64 %indvars.iv.next2521.1, %i.fx ; 2 uses
  %i.eww = getelementptr [16 x i8], ptr %i.en, i64 %i.ewv ; 2 uses
  %i.ewx = getelementptr i8, ptr %i.eww, i64 32
  %gep2972.2 = getelementptr [16 x i8], ptr %invariant.gep2971, i64 %i.ewv ; 2 uses
  %i.ewy = getelementptr i8, ptr %gep2972.2, i64 -48
  %i.ewz = getelementptr i8, ptr %gep2972.2, i64 -16
  %i.exa = load <4 x float>, ptr %i.ewx, align 4, !tbaa !33
  store <4 x float> %i.exa, ptr %i.eww, align 4, !tbaa !33
  %i.exb = load <4 x float>, ptr %i.ewy, align 4, !tbaa !33
  store <4 x float> %i.exb, ptr %i.ewz, align 4, !tbaa !33
  %indvars.iv.next2521.2 = add nuw nsw i64 %indvars.iv2520, 3
  %i.exc = mul nsw i64 %indvars.iv.next2521.2, %i.fx ; 2 uses
  %i.exd = getelementptr [16 x i8], ptr %i.en, i64 %i.exc ; 2 uses
  %i.exe = getelementptr i8, ptr %i.exd, i64 32
  %gep2972.3 = getelementptr [16 x i8], ptr %invariant.gep2971, i64 %i.exc ; 2 uses
  %i.exf = getelementptr i8, ptr %gep2972.3, i64 -48
  %i.exg = getelementptr i8, ptr %gep2972.3, i64 -16
  %i.exh = load <4 x float>, ptr %i.exe, align 4, !tbaa !33
  store <4 x float> %i.exh, ptr %i.exd, align 4, !tbaa !33
  %i.exi = load <4 x float>, ptr %i.exf, align 4, !tbaa !33
  store <4 x float> %i.exi, ptr %i.exg, align 4, !tbaa !33
  %indvars.iv.next2521.3 = add nuw nsw i64 %indvars.iv2520, 4 ; 2 uses
  %niter4295.next.3 = add i64 %niter4295, 4       ; 2 uses
  %niter4295.ncmp.3 = icmp eq i64 %niter4295.next.3, %unroll_iter4294
  br i1 %niter4295.ncmp.3, label %.preheader1972.loopexit.unr-lcssa, label %.preheader1964

.preheader1963:                                   ; preds = %.preheader1963.prol.loopexit, %.preheader1963
  %indvars.iv2531 = phi i64 [ %indvars.iv.next2532.3, %.preheader1963 ], [ %indvars.iv2531.unr, %.preheader1963.prol.loopexit ] ; 8 uses
  %gep2974 = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep2973, i64 %indvars.iv2531
  %i.exj = getelementptr inbounds nuw [16 x i8], ptr %i.en, i64 %indvars.iv2531
  %gep2976 = getelementptr [16 x i8], ptr %invariant.gep2975, i64 %indvars.iv2531
  %gep2978 = getelementptr [16 x i8], ptr %invariant.gep2977, i64 %indvars.iv2531
  %i.exk = load <4 x float>, ptr %gep2974, align 4, !tbaa !33
  store <4 x float> %i.exk, ptr %i.exj, align 4, !tbaa !33
  %i.exl = load <4 x float>, ptr %gep2976, align 4, !tbaa !33
  store <4 x float> %i.exl, ptr %gep2978, align 4, !tbaa !33
  %indvars.iv.next2532 = add nuw nsw i64 %indvars.iv2531, 1 ; 4 uses
  %gep2974.1 = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep2973, i64 %indvars.iv.next2532
  %i.exm = getelementptr inbounds nuw [16 x i8], ptr %i.en, i64 %indvars.iv.next2532
  %gep2976.1 = getelementptr [16 x i8], ptr %invariant.gep2975, i64 %indvars.iv.next2532
  %gep2978.1 = getelementptr [16 x i8], ptr %invariant.gep2977, i64 %indvars.iv.next2532
  %i.exn = load <4 x float>, ptr %gep2974.1, align 4, !tbaa !33
  store <4 x float> %i.exn, ptr %i.exm, align 4, !tbaa !33
  %i.exo = load <4 x float>, ptr %gep2976.1, align 4, !tbaa !33
  store <4 x float> %i.exo, ptr %gep2978.1, align 4, !tbaa !33
  %indvars.iv.next2532.1 = add nuw nsw i64 %indvars.iv2531, 2 ; 4 uses
  %gep2974.2 = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep2973, i64 %indvars.iv.next2532.1
  %i.exp = getelementptr inbounds nuw [16 x i8], ptr %i.en, i64 %indvars.iv.next2532.1
  %gep2976.2 = getelementptr [16 x i8], ptr %invariant.gep2975, i64 %indvars.iv.next2532.1
  %gep2978.2 = getelementptr [16 x i8], ptr %invariant.gep2977, i64 %indvars.iv.next2532.1
  %i.exq = load <4 x float>, ptr %gep2974.2, align 4, !tbaa !33
  store <4 x float> %i.exq, ptr %i.exp, align 4, !tbaa !33
  %i.exr = load <4 x float>, ptr %gep2976.2, align 4, !tbaa !33
  store <4 x float> %i.exr, ptr %gep2978.2, align 4, !tbaa !33
  %indvars.iv.next2532.2 = add nuw nsw i64 %indvars.iv2531, 3 ; 4 uses
  %gep2974.3 = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep2973, i64 %indvars.iv.next2532.2
  %i.exs = getelementptr inbounds nuw [16 x i8], ptr %i.en, i64 %indvars.iv.next2532.2
  %gep2976.3 = getelementptr [16 x i8], ptr %invariant.gep2975, i64 %indvars.iv.next2532.2
  %gep2978.3 = getelementptr [16 x i8], ptr %invariant.gep2977, i64 %indvars.iv.next2532.2
  %i.ext = load <4 x float>, ptr %gep2974.3, align 4, !tbaa !33
  store <4 x float> %i.ext, ptr %i.exs, align 4, !tbaa !33
  %i.exu = load <4 x float>, ptr %gep2976.3, align 4, !tbaa !33
  store <4 x float> %i.exu, ptr %gep2978.3, align 4, !tbaa !33
  %indvars.iv.next2532.3 = add nuw nsw i64 %indvars.iv2531, 4 ; 2 uses
  %exitcond2535.not.3 = icmp eq i64 %indvars.iv.next2532.3, %wide.trip.count2534
  br i1 %exitcond2535.not.3, label %._crit_edge2094, label %.preheader1963, !llvm.loop !84

._crit_edge2094:                                  ; preds = %.preheader1963.prol.loopexit, %.preheader1963, %middle.block3745, %.preheader1972
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %i.l, i8 0, i64 2048, i1 false), !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.fj, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.ary, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.arz, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.asa, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.fi, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.asb, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.asc, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.asd, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.fk, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.ase, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.asf, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.asg, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.ash, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.asi, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.asj, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.ask, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.asl, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.asm, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.asn, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.aso, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.asp, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.asq, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.asr, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.ass, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.ast, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.asu, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.asv, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.asw, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.asx, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.asy, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.asz, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.ata, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.atb, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.atc, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.atd, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.ate, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.atf, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.atg, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.ath, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.ati, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.atj, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.atk, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.atl, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.atm, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.atn, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.ato, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.atp, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.atq, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.atr, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.ats, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.att, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.atu, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.atv, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.atw, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.atx, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.aty, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.atz, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.aua, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.aub, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.auc, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.aud, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.aue, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.auf, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.aug, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.auh, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.aui, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.auj, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.auk, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.aul, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.aum, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.aun, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.auo, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.aup, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.auq, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.aur, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.aus, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.aut, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.auu, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.auv, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.auw, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.aux, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.auy, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.auz, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.ava, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.avb, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.avc, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.avd, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.ave, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.avf, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.avg, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.avh, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.avi, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.avj, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.avk, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.avl, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.avm, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.avn, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.avo, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.avp, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.avq, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.avr, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.avs, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.avt, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.avu, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.avv, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.avw, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.avx, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.avy, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.avz, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.awa, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.awb, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.awc, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.awd, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.awe, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.awf, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.awg, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.awh, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.awi, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.awj, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.awk, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.awl, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.awm, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.awn, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.awo, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.awp, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.awq, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.awr, align 16, !tbaa !216
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
  store <4 x double> zeroinitializer, ptr %i.axx, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.axy, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.axz, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.aya, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.ayb, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.ayc, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.ayd, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.aye, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.ayf, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.ayg, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.ayh, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.ayi, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.ayj, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.ayk, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.ayl, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.aym, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.ayn, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.ayo, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.ayp, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.ayq, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.ayr, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.ays, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.ayt, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.ayu, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.ayv, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.ayw, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.ayx, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.ayy, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.ayz, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.aza, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.azb, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.azc, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.azd, align 16, !tbaa !216
  store <4 x double> zeroinitializer, ptr %i.aze, align 16, !tbaa !216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.m, i8 0, i64 512, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  store i32 0, ptr %.sroa.0, align 8
  store i32 0, ptr %.sroa.6, align 4
  br i1 %brmerge3001, label %.thread, label %.preheader1962.preheader

.preheader1962.preheader:                         ; preds = %._crit_edge2094
  %i.exv = zext i32 %.016992241 to i64            ; 5 uses
  %xtraiter4300 = and i64 %i.exv, 1
  %i.exw = icmp eq i32 %.016992241, 1
  %unroll_iter4304 = and i64 %i.exv, 4294967294
  %lcmp.mod4302.not = icmp eq i64 %xtraiter4300, 0
  %lcmp.mod4303 = trunc i32 %.016992241 to i1
  br label %.preheader1962

.preheader1962:                                   ; preds = %.preheader1962.preheader, %._crit_edge2117
  %indvars.iv2571 = phi i64 [ 1, %.preheader1962.preheader ], [ %indvars.iv.next2572, %._crit_edge2117 ] ; 4 uses
  %i.exx = add nsw i64 %indvars.iv2571, -1
  %i.exy = mul nuw nsw i64 %i.exx, %i.fx
  %6 = mul nuw nsw i64 %indvars.iv2571, %i.fx
  %indvars.iv.next2572 = add nuw nsw i64 %indvars.iv2571, 1 ; 3 uses
  %7 = mul nuw nsw i64 %indvars.iv.next2572, %i.fx
  %8 = trunc nuw nsw i64 %indvars.iv2571 to i32
  %9 = uitofp nneg i32 %8 to double               ; 2 uses
  %invariant.gep2979 = getelementptr [16 x i8], ptr %i.en, i64 %i.exy
  %invariant.gep2981 = getelementptr [16 x i8], ptr %i.en, i64 %7
  br label %.preheader1937

._crit_edge2119.split:                            ; preds = %._crit_edge2117
  %.sroa.0.0..sroa.0.0..pre2828 = load i32, ptr %.sroa.0, align 8, !tbaa !12
  %.sroa.6.0..sroa.6.4..pre2829 = load i32, ptr %.sroa.6, align 4, !tbaa !12
  %i.exz = tail call i32 @llvm.smin.i32(i32 %.sroa.0.0..sroa.0.0..pre2828, i32 %.sroa.6.0..sroa.6.4..pre2829) ; 3 uses
  %i.eya = icmp slt i32 %i.exz, 32
  br i1 %i.eya, label %bb.au, label %bb.aw

.preheader1937:                                   ; preds = %.preheader1962, %bb.aq
  %indvars.iv2566 = phi i64 [ 1, %.preheader1962 ], [ %indvars.iv.next2567, %bb.aq ] ; 5 uses
  %gep2980 = getelementptr [16 x i8], ptr %invariant.gep2979, i64 %indvars.iv2566 ; 3 uses
  %i.eyb = getelementptr i8, ptr %gep2980, i64 -16
  %i.eyc = getelementptr i8, ptr %gep2980, i64 16
  %i.eyd = add nuw nsw i64 %indvars.iv2566, %6    ; 2 uses
  %i.eye = getelementptr [16 x i8], ptr %i.en, i64 %i.eyd ; 3 uses
  %i.eyf = getelementptr i8, ptr %i.eye, i64 -16
  %i.eyg = getelementptr i8, ptr %i.eye, i64 16
  %gep2982 = getelementptr [16 x i8], ptr %invariant.gep2981, i64 %indvars.iv2566 ; 3 uses
  %i.eyh = getelementptr i8, ptr %gep2982, i64 -16
  %i.eyi = getelementptr i8, ptr %gep2982, i64 16
  %i.eyj = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.eyd
  %i.eyk = trunc nuw nsw i64 %indvars.iv2566 to i32
  %i.eyl = uitofp nneg i32 %i.eyk to double       ; 4 uses
  %factor.op.fmul = fmul reassoc nsz arcp contract afn double %i.eyl, %i.eyl
  br label %bb.ar

._crit_edge2117:                                  ; preds = %bb.aq
  %exitcond2575.not = icmp eq i64 %indvars.iv.next2572, %wide.trip.count2574
  br i1 %exitcond2575.not, label %._crit_edge2119.split, label %.preheader1962

bb.aq:                                            ; preds = %.loopexit1907
  %indvars.iv.next2567 = add nuw nsw i64 %indvars.iv2566, 1 ; 2 uses
  %exitcond2570.not = icmp eq i64 %indvars.iv.next2567, %wide.trip.count2569
  br i1 %exitcond2570.not, label %._crit_edge2117, label %.preheader1937

bb.ar:                                            ; preds = %.preheader1937, %.loopexit1907
  %i.eym = phi i1 [ true, %.preheader1937 ], [ false, %.loopexit1907 ]
  %indvars.iv2563.sroa.phi = phi ptr [ %.sroa.0, %.preheader1937 ], [ %.sroa.6, %.loopexit1907 ] ; 2 uses
  %indvars.iv2563.sroa.phi4432 = phi ptr [ %i.m, %.preheader1937 ], [ %indvars.iv2563.sroa.gep4433, %.loopexit1907 ] ; 2 uses
  %indvars.iv2563.sroa.phi4437 = phi ptr [ %i.l, %.preheader1937 ], [ %indvars.iv2563.sroa.gep4439, %.loopexit1907 ] ; 4 uses
  %indvars.iv2563.sroa.phi4440 = phi ptr [ %i.b, %.preheader1937 ], [ %indvars.iv2563.sroa.gep4442, %.loopexit1907 ]
  %indvars.iv2563 = phi i64 [ 0, %.preheader1937 ], [ 1, %.loopexit1907 ] ; 10 uses
  %i.eyn = getelementptr inbounds nuw [8 x i8], ptr %i.eyb, i64 %indvars.iv2563
  %i.eyo = getelementptr inbounds nuw [8 x i8], ptr %gep2980, i64 %indvars.iv2563
  %i.eyp = getelementptr inbounds nuw [8 x i8], ptr %i.eyc, i64 %indvars.iv2563
  %i.eyq = getelementptr inbounds nuw [8 x i8], ptr %i.eyf, i64 %indvars.iv2563
  %i.eyr = getelementptr inbounds nuw [8 x i8], ptr %i.eye, i64 %indvars.iv2563
  %i.eys = getelementptr inbounds nuw [8 x i8], ptr %i.eyg, i64 %indvars.iv2563
  %i.eyt = getelementptr inbounds nuw [8 x i8], ptr %i.eyh, i64 %indvars.iv2563
  %i.eyu = getelementptr inbounds nuw [8 x i8], ptr %gep2982, i64 %indvars.iv2563
  %i.eyv = getelementptr inbounds nuw [8 x i8], ptr %i.eyi, i64 %indvars.iv2563
  %i.eyw = load <2 x float>, ptr %i.eyr, align 4, !tbaa !33 ; 4 uses
  %i.eyx = load <2 x float>, ptr %i.eys, align 4, !tbaa !33 ; 4 uses
  %i.eyy = load <2 x float>, ptr %i.eyu, align 4, !tbaa !33 ; 4 uses
  %i.eyz = load <2 x float>, ptr %i.eyv, align 4, !tbaa !33 ; 4 uses
  %i.eza = load <2 x float>, ptr %i.eyn, align 4, !tbaa !33 ; 4 uses
  %i.ezb = load <2 x float>, ptr %i.eyo, align 4, !tbaa !33 ; 4 uses
  %i.ezc = load <2 x float>, ptr %i.eyp, align 4, !tbaa !33 ; 4 uses
  %i.ezd = load <2 x float>, ptr %i.eyq, align 4, !tbaa !33 ; 4 uses
  %i.eze = load <2 x float>, ptr %i.eyt, align 4, !tbaa !33 ; 4 uses
  %i.ezf = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.ezb, %i.ezc
  %i.ezg = select <2 x i1> %i.ezf, <2 x float> %i.ezb, <2 x float> %i.ezc ; 4 uses
  %i.ezh = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.ezb, %i.ezc
  %i.ezi = select <2 x i1> %i.ezh, <2 x float> %i.ezb, <2 x float> %i.ezc ; 4 uses
  %i.ezj = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.eyw, %i.eyx
  %i.ezk = select <2 x i1> %i.ezj, <2 x float> %i.eyw, <2 x float> %i.eyx ; 4 uses
  %i.ezl = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.eyw, %i.eyx
  %i.ezm = select <2 x i1> %i.ezl, <2 x float> %i.eyw, <2 x float> %i.eyx ; 4 uses
  %i.ezn = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.eyy, %i.eyz
  %i.ezo = select <2 x i1> %i.ezn, <2 x float> %i.eyy, <2 x float> %i.eyz ; 4 uses
  %i.ezp = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.eyy, %i.eyz
  %i.ezq = select <2 x i1> %i.ezp, <2 x float> %i.eyy, <2 x float> %i.eyz ; 4 uses
  %i.ezr = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.eza, %i.ezg
  %i.ezs = select <2 x i1> %i.ezr, <2 x float> %i.eza, <2 x float> %i.ezg ; 2 uses
  %i.ezt = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.eza, %i.ezg
  %i.ezu = select <2 x i1> %i.ezt, <2 x float> %i.eza, <2 x float> %i.ezg ; 4 uses
  %i.ezv = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.ezd, %i.ezk
  %i.ezw = select <2 x i1> %i.ezv, <2 x float> %i.ezd, <2 x float> %i.ezk ; 2 uses
  %i.ezx = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.ezd, %i.ezk
  %i.ezy = select <2 x i1> %i.ezx, <2 x float> %i.ezd, <2 x float> %i.ezk ; 4 uses
  %i.ezz = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.eze, %i.ezo
  %i.faa = select <2 x i1> %i.ezz, <2 x float> %i.eze, <2 x float> %i.ezo ; 2 uses
  %i.fab = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.eze, %i.ezo
  %i.fac = select <2 x i1> %i.fab, <2 x float> %i.eze, <2 x float> %i.ezo ; 4 uses
  %i.fad = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.ezu, %i.ezi
  %i.fae = select <2 x i1> %i.fad, <2 x float> %i.ezu, <2 x float> %i.ezi ; 2 uses
  %i.faf = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.ezu, %i.ezi
  %i.fag = select <2 x i1> %i.faf, <2 x float> %i.ezu, <2 x float> %i.ezi ; 2 uses
  %i.fah = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.ezy, %i.ezm
  %i.fai = select <2 x i1> %i.fah, <2 x float> %i.ezy, <2 x float> %i.ezm ; 4 uses
  %i.faj = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.ezy, %i.ezm
  %i.fak = select <2 x i1> %i.faj, <2 x float> %i.ezy, <2 x float> %i.ezm ; 2 uses
  %i.fal = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.fac, %i.ezq
  %i.fam = select <2 x i1> %i.fal, <2 x float> %i.fac, <2 x float> %i.ezq ; 4 uses
  %i.fan = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.fac, %i.ezq
  %i.fao = select <2 x i1> %i.fan, <2 x float> %i.fac, <2 x float> %i.ezq ; 2 uses
  %i.fap = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.ezs, %i.ezw
  %i.faq = select <2 x i1> %i.fap, <2 x float> %i.ezs, <2 x float> %i.ezw ; 2 uses
  %i.far = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.fak, %i.fao
  %i.fas = select <2 x i1> %i.far, <2 x float> %i.fak, <2 x float> %i.fao ; 2 uses
  %i.fat = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.fai, %i.fam
  %i.fau = select <2 x i1> %i.fat, <2 x float> %i.fai, <2 x float> %i.fam ; 2 uses
  %i.fav = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.fai, %i.fam
  %i.faw = select <2 x i1> %i.fav, <2 x float> %i.fai, <2 x float> %i.fam ; 2 uses
  %i.fax = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.faq, %i.faa
  %i.fay = select <2 x i1> %i.fax, <2 x float> %i.faq, <2 x float> %i.faa ; 2 uses
  %i.faz = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.fae, %i.faw
  %i.fba = select <2 x i1> %i.faz, <2 x float> %i.fae, <2 x float> %i.faw ; 2 uses
  %i.fbb = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.fag, %i.fas
  %i.fbc = select <2 x i1> %i.fbb, <2 x float> %i.fag, <2 x float> %i.fas ; 4 uses
  %i.fbd = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.fba, %i.fau
  %i.fbe = select <2 x i1> %i.fbd, <2 x float> %i.fba, <2 x float> %i.fau ; 4 uses
  %i.fbf = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.fbe, %i.fbc
  %i.fbg = select <2 x i1> %i.fbf, <2 x float> %i.fbe, <2 x float> %i.fbc ; 2 uses
  %i.fbh = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.fbe, %i.fbc
  %i.fbi = select <2 x i1> %i.fbh, <2 x float> %i.fbe, <2 x float> %i.fbc ; 2 uses
  %i.fbj = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.fay, %i.fbg
  %i.fbk = select <2 x i1> %i.fbj, <2 x float> %i.fay, <2 x float> %i.fbg ; 2 uses
  %i.fbl = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.fbi, %i.fbk
  %i.fbm = select <2 x i1> %i.fbl, <2 x float> %i.fbi, <2 x float> %i.fbk ; 5 uses
  %foldExtExtBinop4170 = fmul reassoc nsz arcp contract afn <2 x float> %i.fbm, %i.fbm
  %i.fbn = extractelement <2 x float> %foldExtExtBinop4170, i64 0
  %i.fbo = load float, ptr %indvars.iv2563.sroa.phi4440, align 4, !tbaa !33
  %i.fbp = fmul reassoc nsz arcp contract afn float %i.fbo, 4.000000e+00
  %i.fbq = fcmp reassoc nsz arcp contract afn ogt float %i.fbn, %i.fbp
  br i1 %i.fbq, label %.loopexit1907, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %foldExtExtBinop4172 = fmul reassoc nsz arcp contract afn <2 x float> %i.fbm, %i.fbm
  %i.fbr = extractelement <2 x float> %foldExtExtBinop4172, i64 1
  %i.fbs = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %indvars.iv2563
  %i.fbt = load float, ptr %i.fbs, align 4, !tbaa !33
  %i.fbu = fmul reassoc nsz arcp contract afn float %i.fbt, 4.000000e+00
  %i.fbv = fcmp reassoc nsz arcp contract afn ogt float %i.fbr, %i.fbu
  br i1 %i.fbv, label %.loopexit1907, label %.preheader1896.lr.ph

.preheader1896.lr.ph:                             ; preds = %bb.as
  %i.fbw = load i32, ptr %indvars.iv2563.sroa.phi, align 4, !tbaa !12
  %i.fbx = add nsw i32 %i.fbw, 1
  store i32 %i.fbx, ptr %indvars.iv2563.sroa.phi, align 4, !tbaa !12
  %i.fby = getelementptr inbounds nuw i8, ptr %indvars.iv2563.sroa.phi4437, i64 2048 ; 3 uses
  %i.fbz = fpext <2 x float> %i.fbm to <2 x double>
  %i.fca = getelementptr inbounds nuw i8, ptr %indvars.iv2563.sroa.phi4432, i64 128
  %i.fcb = load float, ptr %i.eyj, align 4, !tbaa !33
  %i.fcc = fpext reassoc nsz arcp contract afn float %i.fcb to double ; 2 uses
  %i.fcd = insertelement <2 x double> poison, double %i.fcc, i64 0
  br label %.preheader1896

.preheader1896:                                   ; preds = %.preheader1896.lr.ph, %._crit_edge2107.split.us
  %indvars.iv2558 = phi i64 [ 0, %.preheader1896.lr.ph ], [ %indvars.iv.next2559, %._crit_edge2107.split.us ] ; 2 uses
  %.016672112 = phi double [ 1.000000e+00, %.preheader1896.lr.ph ], [ %i.fee, %._crit_edge2107.split.us ] ; 3 uses
  %i.fce = mul nuw nsw i64 %indvars.iv2558, %i.exv
  %i.fcf = insertelement <2 x double> poison, double %.016672112, i64 0
  %i.fcg = fmul reassoc nsz arcp contract afn <2 x double> %i.fcf, %i.fcd
  br label %.preheader1895.us

.preheader1895.us:                                ; preds = %._crit_edge2104.us, %.preheader1896
  %indvars.iv2553 = phi i64 [ %indvars.iv.next2554, %._crit_edge2104.us ], [ 0, %.preheader1896 ] ; 2 uses
  %.016652105.us = phi double [ %i.fed, %._crit_edge2104.us ], [ 1.000000e+00, %.preheader1896 ] ; 4 uses
  %i.fch = add nuw nsw i64 %indvars.iv2553, %i.fce ; 3 uses
  %i.fci = trunc nuw i64 %i.fch to i32
  %i.fcj = mul nsw i32 %.017022239, %i.fci
  br label %.preheader1894.us

bb.at:                                            ; preds = %bb.at, %.preheader1894.us.new
  %indvars.iv2547 = phi i64 [ 0, %.preheader1894.us.new ], [ %indvars.iv.next2548.1, %bb.at ] ; 3 uses
  %.016612098.us = phi double [ %.016652105.us, %.preheader1894.us.new ], [ %.reass4500, %bb.at ] ; 3 uses
  %niter4305 = phi i64 [ 0, %.preheader1894.us.new ], [ %niter4305.next.1, %bb.at ]
  %.reass.us = fmul reassoc nsz arcp contract afn double %.016612098.us, %factor.op.fmul.us ; 2 uses
  %i.fck = trunc nuw nsw i64 %indvars.iv2547 to i32
  %i.fcl = add i32 %i.fde, %i.fck
  %i.fcm = sext i32 %i.fcl to i64                 ; 2 uses
  %i.fcn = getelementptr inbounds nuw [8 x i8], ptr %indvars.iv2563.sroa.phi4437, i64 %i.fcm ; 2 uses
  %i.fco = load double, ptr %i.fcn, align 8, !tbaa !216
  %i.fcp = fadd reassoc nsz arcp contract afn double %.reass.us, %i.fco
  store double %i.fcp, ptr %i.fcn, align 8, !tbaa !216
  %i.fcq = getelementptr inbounds nuw [8 x i8], ptr %i.fby, i64 %i.fcm ; 2 uses
  %i.fcr = load double, ptr %i.fcq, align 8, !tbaa !216
  %i.fcs = fadd reassoc nsz arcp contract afn double %i.fcr, %.reass.us
  store double %i.fcs, ptr %i.fcq, align 8, !tbaa !216
  %.reass4500 = fmul reassoc nsz arcp contract afn double %.016612098.us, %factor.op.fmul ; 2 uses
  %.reass.us.1.reass = fmul reassoc nsz arcp contract afn double %.016612098.us, %invariant.op4499 ; 2 uses
  %i.fct = trunc i64 %indvars.iv2547 to i32
  %i.fcu = or disjoint i32 %i.fct, 1
  %i.fcv = add i32 %i.fde, %i.fcu
  %i.fcw = sext i32 %i.fcv to i64                 ; 2 uses
  %i.fcx = getelementptr inbounds nuw [8 x i8], ptr %indvars.iv2563.sroa.phi4437, i64 %i.fcw ; 2 uses
  %i.fcy = load double, ptr %i.fcx, align 8, !tbaa !216
  %i.fcz = fadd reassoc nsz arcp contract afn double %.reass.us.1.reass, %i.fcy
  store double %i.fcz, ptr %i.fcx, align 8, !tbaa !216
  %i.fda = getelementptr inbounds nuw [8 x i8], ptr %i.fby, i64 %i.fcw ; 2 uses
  %i.fdb = load double, ptr %i.fda, align 8, !tbaa !216
  %i.fdc = fadd reassoc nsz arcp contract afn double %i.fdb, %.reass.us.1.reass
  store double %i.fdc, ptr %i.fda, align 8, !tbaa !216
  %indvars.iv.next2548.1 = add nuw nsw i64 %indvars.iv2547, 2 ; 2 uses
  %niter4305.next.1 = add i64 %niter4305, 2       ; 2 uses
  %niter4305.ncmp.1 = icmp eq i64 %niter4305.next.1, %unroll_iter4304
  br i1 %niter4305.ncmp.1, label %._crit_edge2101.us.unr-lcssa, label %bb.at

.preheader1894.us:                                ; preds = %.preheader1895.us, %._crit_edge2101.us
  %.016622103.us = phi i32 [ 0, %.preheader1895.us ], [ %i.fdp, %._crit_edge2101.us ] ; 2 uses
  %.016632102.us = phi double [ %.016672112, %.preheader1895.us ], [ %i.fdo, %._crit_edge2101.us ] ; 2 uses
  %factor.op.fmul.us = fmul reassoc nsz arcp contract afn double %.016632102.us, %i.fcc ; 3 uses
  %i.fdd = mul nuw nsw i32 %.016622103.us, %.016992241
  %i.fde = add i32 %i.fdd, %i.fcj                 ; 3 uses
  br i1 %i.exw, label %.epil.preheader4299, label %.preheader1894.us.new

.preheader1894.us.new:                            ; preds = %.preheader1894.us
  %invariant.op4499 = fmul reassoc nsz arcp contract afn double %i.eyl, %factor.op.fmul.us
  br label %bb.at

._crit_edge2101.us.unr-lcssa:                     ; preds = %bb.at
  br i1 %lcmp.mod4302.not, label %._crit_edge2101.us, label %.epil.preheader4299

.epil.preheader4299:                              ; preds = %._crit_edge2101.us.unr-lcssa, %.preheader1894.us
  %indvars.iv2547.epil.init = phi i64 [ 0, %.preheader1894.us ], [ %indvars.iv.next2548.1, %._crit_edge2101.us.unr-lcssa ]
  %.016612098.us.epil.init = phi double [ %.016652105.us, %.preheader1894.us ], [ %.reass4500, %._crit_edge2101.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod4303)
  %.reass.us.epil = fmul reassoc nsz arcp contract afn double %.016612098.us.epil.init, %factor.op.fmul.us ; 2 uses
  %i.fdf = trunc nuw nsw i64 %indvars.iv2547.epil.init to i32
  %i.fdg = add i32 %i.fde, %i.fdf
  %i.fdh = sext i32 %i.fdg to i64                 ; 2 uses
  %i.fdi = getelementptr inbounds nuw [8 x i8], ptr %indvars.iv2563.sroa.phi4437, i64 %i.fdh ; 2 uses
  %i.fdj = load double, ptr %i.fdi, align 8, !tbaa !216
  %i.fdk = fadd reassoc nsz arcp contract afn double %.reass.us.epil, %i.fdj
  store double %i.fdk, ptr %i.fdi, align 8, !tbaa !216
  %i.fdl = getelementptr inbounds nuw [8 x i8], ptr %i.fby, i64 %i.fdh ; 2 uses
  %i.fdm = load double, ptr %i.fdl, align 8, !tbaa !216
end_hunk_2
begin_hunk_3_@process:bb.a
._crit_edge144.i:                                 ; preds = %scalar.ph3311.prol.loopexit, %scalar.ph3311, %middle.block3322
  %i.fip = getelementptr inbounds nuw [8 x i8], ptr %indvars.iv2591.sroa.phi, i64 %.0121153.i ; 2 uses
  %i.fiq = load double, ptr %i.fip, align 8, !tbaa !216
  %i.fir = getelementptr inbounds [8 x i8], ptr %indvars.iv2591.sroa.phi, i64 %spec.select133.i.lcssa ; 2 uses
  %i.fis = load double, ptr %i.fir, align 8, !tbaa !216
  store double %i.fis, ptr %i.fip, align 8, !tbaa !216
  store double %i.fiq, ptr %i.fir, align 8, !tbaa !216
  %.pre.i = load double, ptr %i.ffw, align 8, !tbaa !216
  br label %bb.ax

bb.ax:                                            ; preds = %._crit_edge144.i, %._crit_edge.i
  %i.fit = phi double [ %.pre.i, %._crit_edge144.i ], [ %i.ffx, %._crit_edge.i ]
  %i.fiu = fcmp reassoc nsz arcp contract afn oeq double %i.fit, 0.000000e+00
  br i1 %i.fiu, label %bb.ay, label %.lr.ph150.i

.lr.ph150.i:                                      ; preds = %bb.ax
  %i.fiv = getelementptr inbounds nuw [8 x i8], ptr %indvars.iv2591.sroa.phi, i64 %.0121153.i
  %min.iters.check3264 = icmp ult i64 %i.ffr, 4
  %bound03260 = icmp ult ptr %scevgep3256, %scevgep3259
  %bound13261 = icmp ult ptr %i.ffw, %scevgep3258.a
  %found.conflict3262 = and i1 %bound03260, %bound13261
  %min.iters.check3266 = icmp ult i64 %i.ffr, 16
  %i.fiw = and i64 %i.ffr, 12
  %n.vec3268 = and i64 %i.ffr, -16                ; 4 uses
  %i.fix = add i64 %.0121153.i, %n.vec3268
  %cmp.n3283 = icmp eq i64 %i.ffr, %n.vec3268
  %min.epilog.iters.check3289 = icmp eq i64 %i.fiw, 0
  %n.vec3291 = and i64 %i.ffr, -4                 ; 3 uses
  %i.fiy = add i64 %.0121153.i, %n.vec3291
  %cmp.n3300 = icmp eq i64 %i.ffr, %n.vec3291
  br label %iter.check3286

iter.check3286:                                   ; preds = %._crit_edge148.us.i, %.lr.ph150.i
  %.0123149.us.i = phi i64 [ %i.ffy, %.lr.ph150.i ], [ %i.flv, %._crit_edge148.us.i ] ; 3 uses
  %i.fiz = mul nuw nsw i64 %.0123149.us.i, %i.fej
  %i.fja = getelementptr inbounds nuw [8 x i8], ptr %indvars.iv2591.sroa.phi4434, i64 %i.fiz ; 8 uses
  %i.fjb = getelementptr inbounds nuw [8 x i8], ptr %i.fja, i64 %.0121153.i
  %i.fjc = load double, ptr %i.fjb, align 8, !tbaa !216
  %i.fjd = fneg reassoc nsz arcp contract afn double %i.fjc
  %i.fje = load double, ptr %i.ffw, align 8, !tbaa !216
  %i.fjf = fdiv reassoc nsz arcp contract afn double %i.fjd, %i.fje ; 8 uses
  %brmerge4522.a = select i1 %min.iters.check3264, i1 true, i1 %found.conflict3262
  br i1 %brmerge4522.a, label %vec.epilog.scalar.ph3287.preheader, label %vector.main.loop.iter.check3265

vector.main.loop.iter.check3265:                  ; preds = %iter.check3286
  br i1 %min.iters.check3266, label %vec.epilog.ph3290, label %vector.ph3267

vector.ph3267:                                    ; preds = %vector.main.loop.iter.check3265
  %broadcast.splatinsert3269 = insertelement <4 x double> poison, double %i.fjf, i64 0
  %broadcast.splat3270 = shufflevector <4 x double> %broadcast.splatinsert3269, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body3271

vector.body3271:                                  ; preds = %vector.body3271, %vector.ph3267
  %index3272 = phi i64 [ 0, %vector.ph3267 ], [ %index.next3281, %vector.body3271 ] ; 2 uses
  %i.fjg = add nuw i64 %.0121153.i, %index3272    ; 2 uses
  %i.fjh = getelementptr inbounds nuw [8 x i8], ptr %i.fja, i64 %i.fjg ; 5 uses
  %i.fji = getelementptr inbounds nuw i8, ptr %i.fjh, i64 32 ; 2 uses
  %i.fjj = getelementptr inbounds nuw i8, ptr %i.fjh, i64 64 ; 2 uses
  %i.fjk = getelementptr inbounds nuw i8, ptr %i.fjh, i64 96 ; 2 uses
  %wide.load3273.a = load <4 x double>, ptr %i.fjh, align 8, !tbaa !216, !alias.scope !219, !noalias !220
  %wide.load3274.a = load <4 x double>, ptr %i.fji, align 8, !tbaa !216, !alias.scope !219, !noalias !220
  %wide.load3275.a = load <4 x double>, ptr %i.fjj, align 8, !tbaa !216, !alias.scope !219, !noalias !220
  %wide.load3276.a = load <4 x double>, ptr %i.fjk, align 8, !tbaa !216, !alias.scope !219, !noalias !220
  %i.fjl = getelementptr inbounds nuw [8 x i8], ptr %i.ffv, i64 %i.fjg ; 4 uses
  %i.fjm = getelementptr inbounds nuw i8, ptr %i.fjl, i64 32
  %i.fjn = getelementptr inbounds nuw i8, ptr %i.fjl, i64 64
  %i.fjo = getelementptr inbounds nuw i8, ptr %i.fjl, i64 96
  %wide.load3277.a = load <4 x double>, ptr %i.fjl, align 8, !tbaa !216, !alias.scope !220
  %wide.load3278.a = load <4 x double>, ptr %i.fjm, align 8, !tbaa !216, !alias.scope !220
  %wide.load3279.a = load <4 x double>, ptr %i.fjn, align 8, !tbaa !216, !alias.scope !220
  %wide.load3280 = load <4 x double>, ptr %i.fjo, align 8, !tbaa !216, !alias.scope !220
  %i.fjp = fmul reassoc nsz arcp contract afn <4 x double> %wide.load3277.a, %broadcast.splat3270
  %i.fjq = fmul reassoc nsz arcp contract afn <4 x double> %wide.load3278.a, %broadcast.splat3270
  %i.fjr = fmul reassoc nsz arcp contract afn <4 x double> %wide.load3279.a, %broadcast.splat3270
  %i.fjs = fmul reassoc nsz arcp contract afn <4 x double> %wide.load3280, %broadcast.splat3270
  %i.fjt = fadd reassoc nsz arcp contract afn <4 x double> %i.fjp, %wide.load3273.a
  %i.fju = fadd reassoc nsz arcp contract afn <4 x double> %i.fjq, %wide.load3274.a
  %i.fjv = fadd reassoc nsz arcp contract afn <4 x double> %i.fjr, %wide.load3275.a
  %i.fjw = fadd reassoc nsz arcp contract afn <4 x double> %i.fjs, %wide.load3276.a
  store <4 x double> %i.fjt, ptr %i.fjh, align 8, !tbaa !216, !alias.scope !219, !noalias !220
  store <4 x double> %i.fju, ptr %i.fji, align 8, !tbaa !216, !alias.scope !219, !noalias !220
  store <4 x double> %i.fjv, ptr %i.fjj, align 8, !tbaa !216, !alias.scope !219, !noalias !220
  store <4 x double> %i.fjw, ptr %i.fjk, align 8, !tbaa !216, !alias.scope !219, !noalias !220
  %index.next3281 = add nuw i64 %index3272, 16    ; 2 uses
  %i.fjx = icmp eq i64 %index.next3281, %n.vec3268
  br i1 %i.fjx, label %middle.block3282, label %vector.body3271, !llvm.loop !95

middle.block3282:                                 ; preds = %vector.body3271
  br i1 %cmp.n3283, label %._crit_edge148.us.i, label %vec.epilog.iter.check3288

vec.epilog.iter.check3288:                        ; preds = %middle.block3282
  br i1 %min.epilog.iters.check3289, label %vec.epilog.scalar.ph3287.preheader, label %vec.epilog.ph3290, !prof !221

vec.epilog.ph3290:                                ; preds = %vector.main.loop.iter.check3265, %vec.epilog.iter.check3288
  %vec.epilog.resume.val3284 = phi i64 [ %n.vec3268, %vec.epilog.iter.check3288 ], [ 0, %vector.main.loop.iter.check3265 ]
  %broadcast.splatinsert3292 = insertelement <4 x double> poison, double %i.fjf, i64 0
  %broadcast.splat3293 = shufflevector <4 x double> %broadcast.splatinsert3292, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body3294

vec.epilog.vector.body3294:                       ; preds = %vec.epilog.vector.body3294, %vec.epilog.ph3290
  %index3295 = phi i64 [ %vec.epilog.resume.val3284, %vec.epilog.ph3290 ], [ %index.next3298, %vec.epilog.vector.body3294 ] ; 2 uses
  %i.fjy = add nuw i64 %.0121153.i, %index3295    ; 2 uses
  %i.fjz = getelementptr inbounds nuw [8 x i8], ptr %i.fja, i64 %i.fjy ; 2 uses
  %wide.load3296.a = load <4 x double>, ptr %i.fjz, align 8, !tbaa !216, !alias.scope !219, !noalias !220
  %i.fka = getelementptr inbounds nuw [8 x i8], ptr %i.ffv, i64 %i.fjy
  %wide.load3297 = load <4 x double>, ptr %i.fka, align 8, !tbaa !216, !alias.scope !220
  %i.fkb = fmul reassoc nsz arcp contract afn <4 x double> %wide.load3297, %broadcast.splat3293
  %i.fkc = fadd reassoc nsz arcp contract afn <4 x double> %i.fkb, %wide.load3296.a
  store <4 x double> %i.fkc, ptr %i.fjz, align 8, !tbaa !216, !alias.scope !219, !noalias !220
  %index.next3298 = add nuw i64 %index3295, 4     ; 2 uses
  %i.fkd = icmp eq i64 %index.next3298, %n.vec3291
  br i1 %i.fkd, label %vec.epilog.middle.block3299, label %vec.epilog.vector.body3294, !llvm.loop !96

vec.epilog.middle.block3299:                      ; preds = %vec.epilog.vector.body3294
  br i1 %cmp.n3300, label %._crit_edge148.us.i, label %vec.epilog.scalar.ph3287.preheader

vec.epilog.scalar.ph3287.preheader:               ; preds = %iter.check3286, %vec.epilog.iter.check3288, %vec.epilog.middle.block3299
  %.2145.us.i.ph = phi i64 [ %.0121153.i, %iter.check3286 ], [ %i.fiy, %vec.epilog.middle.block3299 ], [ %i.fix, %vec.epilog.iter.check3288 ] ; 4 uses
  %i.fke = sub i64 %i.fej, %.2145.us.i.ph
  %i.fkf = sub i64 %i.ffc, %.2145.us.i.ph
  %xtraiter4322 = and i64 %i.fke, 3               ; 2 uses
  %lcmp.mod4323.not = icmp eq i64 %xtraiter4322, 0
  br i1 %lcmp.mod4323.not, label %vec.epilog.scalar.ph3287.prol.loopexit, label %vec.epilog.scalar.ph3287.prol

vec.epilog.scalar.ph3287.prol:                    ; preds = %vec.epilog.scalar.ph3287.preheader, %vec.epilog.scalar.ph3287.prol
  %.2145.us.i.prol = phi i64 [ %i.fkm, %vec.epilog.scalar.ph3287.prol ], [ %.2145.us.i.ph, %vec.epilog.scalar.ph3287.preheader ] ; 3 uses
  %prol.iter4324 = phi i64 [ %prol.iter4324.next, %vec.epilog.scalar.ph3287.prol ], [ 0, %vec.epilog.scalar.ph3287.preheader ]
  %i.fkg = getelementptr inbounds nuw [8 x i8], ptr %i.fja, i64 %.2145.us.i.prol ; 2 uses
  %i.fkh = load double, ptr %i.fkg, align 8, !tbaa !216
  %i.fki = getelementptr inbounds nuw [8 x i8], ptr %i.ffv, i64 %.2145.us.i.prol
  %i.fkj = load double, ptr %i.fki, align 8, !tbaa !216
  %i.fkk = fmul reassoc nsz arcp contract afn double %i.fkj, %i.fjf
  %i.fkl = fadd reassoc nsz arcp contract afn double %i.fkk, %i.fkh
  store double %i.fkl, ptr %i.fkg, align 8, !tbaa !216
  %i.fkm = add nuw nsw i64 %.2145.us.i.prol, 1    ; 2 uses
  %prol.iter4324.next = add i64 %prol.iter4324, 1 ; 2 uses
  %prol.iter4324.cmp.not = icmp eq i64 %prol.iter4324.next, %xtraiter4322
  br i1 %prol.iter4324.cmp.not, label %vec.epilog.scalar.ph3287.prol.loopexit, label %vec.epilog.scalar.ph3287.prol, !llvm.loop !97

vec.epilog.scalar.ph3287.prol.loopexit:           ; preds = %vec.epilog.scalar.ph3287.prol, %vec.epilog.scalar.ph3287.preheader
  %.2145.us.i.unr = phi i64 [ %.2145.us.i.ph, %vec.epilog.scalar.ph3287.preheader ], [ %i.fkm, %vec.epilog.scalar.ph3287.prol ]
  %i.fkn = icmp ult i64 %i.fkf, 3
  br i1 %i.fkn, label %._crit_edge148.us.i, label %vec.epilog.scalar.ph3287

vec.epilog.scalar.ph3287:                         ; preds = %vec.epilog.scalar.ph3287.prol.loopexit, %vec.epilog.scalar.ph3287
  %.2145.us.i = phi i64 [ %i.flp, %vec.epilog.scalar.ph3287 ], [ %.2145.us.i.unr, %vec.epilog.scalar.ph3287.prol.loopexit ] ; 6 uses
  %i.fko = getelementptr inbounds nuw [8 x i8], ptr %i.fja, i64 %.2145.us.i ; 2 uses
  %i.fkp = load double, ptr %i.fko, align 8, !tbaa !216
  %i.fkq = getelementptr inbounds nuw [8 x i8], ptr %i.ffv, i64 %.2145.us.i
  %i.fkr = load double, ptr %i.fkq, align 8, !tbaa !216
  %i.fks = fmul reassoc nsz arcp contract afn double %i.fkr, %i.fjf
  %i.fkt = fadd reassoc nsz arcp contract afn double %i.fks, %i.fkp
  store double %i.fkt, ptr %i.fko, align 8, !tbaa !216
  %i.fku = add nuw nsw i64 %.2145.us.i, 1         ; 2 uses
  %i.fkv = getelementptr inbounds nuw [8 x i8], ptr %i.fja, i64 %i.fku ; 2 uses
  %i.fkw = load double, ptr %i.fkv, align 8, !tbaa !216
  %i.fkx = getelementptr inbounds nuw [8 x i8], ptr %i.ffv, i64 %i.fku
  %i.fky = load double, ptr %i.fkx, align 8, !tbaa !216
  %i.fkz = fmul reassoc nsz arcp contract afn double %i.fky, %i.fjf
  %i.fla = fadd reassoc nsz arcp contract afn double %i.fkz, %i.fkw
  store double %i.fla, ptr %i.fkv, align 8, !tbaa !216
  %i.flb = add nuw nsw i64 %.2145.us.i, 2         ; 2 uses
  %i.flc = getelementptr inbounds nuw [8 x i8], ptr %i.fja, i64 %i.flb ; 2 uses
  %i.fld = load double, ptr %i.flc, align 8, !tbaa !216
  %i.fle = getelementptr inbounds nuw [8 x i8], ptr %i.ffv, i64 %i.flb
  %i.flf = load double, ptr %i.fle, align 8, !tbaa !216
  %i.flg = fmul reassoc nsz arcp contract afn double %i.flf, %i.fjf
  %i.flh = fadd reassoc nsz arcp contract afn double %i.flg, %i.fld
  store double %i.flh, ptr %i.flc, align 8, !tbaa !216
  %i.fli = add nuw nsw i64 %.2145.us.i, 3         ; 2 uses
  %i.flj = getelementptr inbounds nuw [8 x i8], ptr %i.fja, i64 %i.fli ; 2 uses
  %i.flk = load double, ptr %i.flj, align 8, !tbaa !216
  %i.fll = getelementptr inbounds nuw [8 x i8], ptr %i.ffv, i64 %i.fli
  %i.flm = load double, ptr %i.fll, align 8, !tbaa !216
  %i.fln = fmul reassoc nsz arcp contract afn double %i.flm, %i.fjf
  %i.flo = fadd reassoc nsz arcp contract afn double %i.fln, %i.flk
  store double %i.flo, ptr %i.flj, align 8, !tbaa !216
  %i.flp = add nuw nsw i64 %.2145.us.i, 4         ; 2 uses
  %exitcond167.not.i.3 = icmp eq i64 %i.flp, %i.fej
  br i1 %exitcond167.not.i.3, label %._crit_edge148.us.i, label %vec.epilog.scalar.ph3287, !llvm.loop !98

._crit_edge148.us.i:                              ; preds = %vec.epilog.scalar.ph3287.prol.loopexit, %vec.epilog.scalar.ph3287, %vec.epilog.middle.block3299, %middle.block3282
  %i.flq = getelementptr inbounds nuw [8 x i8], ptr %indvars.iv2591.sroa.phi, i64 %.0123149.us.i ; 2 uses
  %i.flr = load double, ptr %i.flq, align 8, !tbaa !216
  %i.fls = load double, ptr %i.fiv, align 8, !tbaa !216
  %i.flt = fmul reassoc nsz arcp contract afn double %i.fls, %i.fjf
  %i.flu = fadd reassoc nsz arcp contract afn double %i.flt, %i.flr
  store double %i.flu, ptr %i.flq, align 8, !tbaa !216
  %i.flv = add nuw nsw i64 %.0123149.us.i, 1      ; 2 uses
  %exitcond168.not.i = icmp eq i64 %i.flv, %i.fej
  br i1 %exitcond168.not.i, label %.loopexit135.i, label %iter.check3286

.preheader.i:                                     ; preds = %.loopexit135.i, %._crit_edge162.i
  %indvar3208 = phi i64 [ %indvar.next3209, %._crit_edge162.i ], [ 0, %.loopexit135.i ] ; 8 uses
  %.1122164.i = phi i64 [ %i.fnq, %._crit_edge162.i ], [ %i.fek, %.loopexit135.i ] ; 7 uses
  %i.flw = getelementptr inbounds nuw [8 x i8], ptr %indvars.iv2591.sroa.phi, i64 %.1122164.i
  %i.flx = load double, ptr %i.flw, align 8, !tbaa !216 ; 5 uses
  %i.fly = getelementptr inbounds nuw [8 x i8], ptr %indvars.iv2591.sroa.phi4443, i64 %.1122164.i ; 5 uses
  store double %i.flx, ptr %i.fly, align 8, !tbaa !216
  %.3157.i = add nuw nsw i64 %.1122164.i, 1       ; 6 uses
  %10 = icmp slt i64 %.3157.i, %i.fej
  br i1 %10, label %iter.check3239, label %._crit_edge162.i

iter.check3239:                                   ; preds = %.preheader.i
  %i.flz = mul nuw nsw i64 %.1122164.i, %i.fej
  %i.fma = getelementptr inbounds nuw [8 x i8], ptr %indvars.iv2591.sroa.phi4434, i64 %i.flz ; 3 uses
  %min.iters.check3211 = icmp ult i64 %indvar3208, 4
  br i1 %min.iters.check3211, label %vec.epilog.scalar.ph3240.preheader, label %vector.main.loop.iter.check3212

vector.main.loop.iter.check3212:                  ; preds = %iter.check3239
  %min.iters.check3213 = icmp ult i64 %indvar3208, 16
  br i1 %min.iters.check3213, label %vec.epilog.ph3243, label %vector.ph3214

vector.ph3214:                                    ; preds = %vector.main.loop.iter.check3212
  %i.fmb = and i64 %indvar3208, 12
  %n.vec3215 = and i64 %indvar3208, -16           ; 4 uses
  %i.fmc = add i64 %.3157.i, %n.vec3215
  %i.fmd = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %i.flx, i64 0
  br label %vector.body3216

vector.body3216:                                  ; preds = %vector.body3216, %vector.ph3214
  %index3217 = phi i64 [ 0, %vector.ph3214 ], [ %index.next3230, %vector.body3216 ] ; 2 uses
  %vec.phi3218.a = phi <4 x double> [ %i.fmd, %vector.ph3214 ], [ %i.fmr, %vector.body3216 ]
  %vec.phi3219.a = phi <4 x double> [ zeroinitializer, %vector.ph3214 ], [ %i.fms, %vector.body3216 ]
  %vec.phi3220.a = phi <4 x double> [ zeroinitializer, %vector.ph3214 ], [ %i.fmt, %vector.body3216 ]
  %vec.phi3221 = phi <4 x double> [ zeroinitializer, %vector.ph3214 ], [ %i.fmu, %vector.body3216 ]
  %i.fme = add nuw i64 %.3157.i, %index3217       ; 2 uses
  %i.fmf = getelementptr inbounds nuw [8 x i8], ptr %i.fma, i64 %i.fme ; 4 uses
  %i.fmg = getelementptr inbounds nuw i8, ptr %i.fmf, i64 32
  %i.fmh = getelementptr inbounds nuw i8, ptr %i.fmf, i64 64
  %i.fmi = getelementptr inbounds nuw i8, ptr %i.fmf, i64 96
  %wide.load3222.a = load <4 x double>, ptr %i.fmf, align 8, !tbaa !216
  %wide.load3223.a = load <4 x double>, ptr %i.fmg, align 8, !tbaa !216
  %wide.load3224.a = load <4 x double>, ptr %i.fmh, align 8, !tbaa !216
  %wide.load3225.a = load <4 x double>, ptr %i.fmi, align 8, !tbaa !216
  %i.fmj = getelementptr inbounds nuw [8 x i8], ptr %indvars.iv2591.sroa.phi4443, i64 %i.fme ; 4 uses
  %i.fmk = getelementptr inbounds nuw i8, ptr %i.fmj, i64 32
  %i.fml = getelementptr inbounds nuw i8, ptr %i.fmj, i64 64
  %i.fmm = getelementptr inbounds nuw i8, ptr %i.fmj, i64 96
  %wide.load3226.a = load <4 x double>, ptr %i.fmj, align 8, !tbaa !216
  %wide.load3227.a = load <4 x double>, ptr %i.fmk, align 8, !tbaa !216
  %wide.load3228.a = load <4 x double>, ptr %i.fml, align 8, !tbaa !216
  %wide.load3229 = load <4 x double>, ptr %i.fmm, align 8, !tbaa !216
  %i.fmn = fmul reassoc nsz arcp contract afn <4 x double> %wide.load3226.a, %wide.load3222.a
  %i.fmo = fmul reassoc nsz arcp contract afn <4 x double> %wide.load3227.a, %wide.load3223.a
  %i.fmp = fmul reassoc nsz arcp contract afn <4 x double> %wide.load3228.a, %wide.load3224.a
  %i.fmq = fmul reassoc nsz arcp contract afn <4 x double> %wide.load3229, %wide.load3225.a
  %i.fmr = fsub reassoc nsz arcp contract afn <4 x double> %vec.phi3218.a, %i.fmn ; 2 uses
  %i.fms = fsub reassoc nsz arcp contract afn <4 x double> %vec.phi3219.a, %i.fmo ; 2 uses
  %i.fmt = fsub reassoc nsz arcp contract afn <4 x double> %vec.phi3220.a, %i.fmp ; 2 uses
  %i.fmu = fsub reassoc nsz arcp contract afn <4 x double> %vec.phi3221, %i.fmq ; 2 uses
  %index.next3230 = add nuw i64 %index3217, 16    ; 2 uses
  %i.fmv = icmp eq i64 %index.next3230, %n.vec3215
  br i1 %i.fmv, label %middle.block3231, label %vector.body3216, !llvm.loop !99

middle.block3231:                                 ; preds = %vector.body3216
  %bin.rdx3232.a = fadd reassoc nsz arcp contract afn <4 x double> %i.fms, %i.fmr
  %bin.rdx3233.a = fadd reassoc nsz arcp contract afn <4 x double> %i.fmt, %bin.rdx3232.a
  %bin.rdx3234 = fadd reassoc nsz arcp contract afn <4 x double> %i.fmu, %bin.rdx3233.a
  %i.fmw = call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %bin.rdx3234) ; 4 uses
  store double %i.fmw, ptr %i.fly, align 8, !tbaa !216
  %cmp.n3235 = icmp eq i64 %indvar3208, %n.vec3215
  br i1 %cmp.n3235, label %._crit_edge162.i, label %vec.epilog.iter.check3241

vec.epilog.iter.check3241:                        ; preds = %middle.block3231
  %min.epilog.iters.check3242 = icmp eq i64 %i.fmb, 0
  br i1 %min.epilog.iters.check3242, label %vec.epilog.scalar.ph3240.preheader, label %vec.epilog.ph3243, !prof !221

vec.epilog.ph3243:                                ; preds = %vector.main.loop.iter.check3212, %vec.epilog.iter.check3241
  %vec.epilog.resume.val3236 = phi i64 [ %n.vec3215, %vec.epilog.iter.check3241 ], [ 0, %vector.main.loop.iter.check3212 ]
  %bc.merge.rdx3238 = phi double [ %i.fmw, %vec.epilog.iter.check3241 ], [ %i.flx, %vector.main.loop.iter.check3212 ]
  %n.vec3244 = and i64 %indvar3208, -4            ; 3 uses
  %i.fmx = add i64 %.3157.i, %n.vec3244
  %i.fmy = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %bc.merge.rdx3238, i64 0
  br label %vec.epilog.vector.body3245

vec.epilog.vector.body3245:                       ; preds = %vec.epilog.vector.body3245, %vec.epilog.ph3243
  %index3246 = phi i64 [ %vec.epilog.resume.val3236, %vec.epilog.ph3243 ], [ %index.next3250, %vec.epilog.vector.body3245 ] ; 2 uses
  %vec.phi3247 = phi <4 x double> [ %i.fmy, %vec.epilog.ph3243 ], [ %i.fnd, %vec.epilog.vector.body3245 ]
  %i.fmz = add nuw i64 %.3157.i, %index3246       ; 2 uses
  %i.fna = getelementptr inbounds nuw [8 x i8], ptr %i.fma, i64 %i.fmz
  %wide.load3248.a = load <4 x double>, ptr %i.fna, align 8, !tbaa !216
  %i.fnb = getelementptr inbounds nuw [8 x i8], ptr %indvars.iv2591.sroa.phi4443, i64 %i.fmz
  %wide.load3249 = load <4 x double>, ptr %i.fnb, align 8, !tbaa !216
  %i.fnc = fmul reassoc nsz arcp contract afn <4 x double> %wide.load3249, %wide.load3248.a
  %i.fnd = fsub reassoc nsz arcp contract afn <4 x double> %vec.phi3247, %i.fnc ; 2 uses
  %index.next3250 = add nuw i64 %index3246, 4     ; 2 uses
  %i.fne = icmp eq i64 %index.next3250, %n.vec3244
  br i1 %i.fne, label %vec.epilog.middle.block3251, label %vec.epilog.vector.body3245, !llvm.loop !100

vec.epilog.middle.block3251:                      ; preds = %vec.epilog.vector.body3245
  %i.fnf = call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.fnd) ; 3 uses
  store double %i.fnf, ptr %i.fly, align 8, !tbaa !216
  %cmp.n3252 = icmp eq i64 %indvar3208, %n.vec3244
  br i1 %cmp.n3252, label %._crit_edge162.i, label %vec.epilog.scalar.ph3240.preheader

vec.epilog.scalar.ph3240.preheader:               ; preds = %iter.check3239, %vec.epilog.iter.check3241, %vec.epilog.middle.block3251
  %.3159.i.ph = phi i64 [ %.3157.i, %iter.check3239 ], [ %i.fmc, %vec.epilog.iter.check3241 ], [ %i.fmx, %vec.epilog.middle.block3251 ]
  %storemerge158.i.ph = phi double [ %i.flx, %iter.check3239 ], [ %i.fmw, %vec.epilog.iter.check3241 ], [ %i.fnf, %vec.epilog.middle.block3251 ]
  br label %vec.epilog.scalar.ph3240

vec.epilog.scalar.ph3240:                         ; preds = %vec.epilog.scalar.ph3240.preheader, %vec.epilog.scalar.ph3240
  %.3159.i = phi i64 [ %.3.i, %vec.epilog.scalar.ph3240 ], [ %.3159.i.ph, %vec.epilog.scalar.ph3240.preheader ] ; 3 uses
  %storemerge158.i = phi double [ %i.fnl, %vec.epilog.scalar.ph3240 ], [ %storemerge158.i.ph, %vec.epilog.scalar.ph3240.preheader ]
  %i.fng = getelementptr inbounds nuw [8 x i8], ptr %i.fma, i64 %.3159.i
  %i.fnh = load double, ptr %i.fng, align 8, !tbaa !216
  %i.fni = getelementptr inbounds nuw [8 x i8], ptr %indvars.iv2591.sroa.phi4443, i64 %.3159.i
  %i.fnj = load double, ptr %i.fni, align 8, !tbaa !216
  %i.fnk = fmul reassoc nsz arcp contract afn double %i.fnj, %i.fnh
  %i.fnl = fsub reassoc nsz arcp contract afn double %storemerge158.i, %i.fnk ; 3 uses
  store double %i.fnl, ptr %i.fly, align 8, !tbaa !216
  %.3.i = add nuw nsw i64 %.3159.i, 1             ; 2 uses
  %exitcond170.not.i = icmp eq i64 %.3.i, %i.fej
  br i1 %exitcond170.not.i, label %._crit_edge162.i, label %vec.epilog.scalar.ph3240, !llvm.loop !101

._crit_edge162.i:                                 ; preds = %vec.epilog.scalar.ph3240, %middle.block3231, %vec.epilog.middle.block3251, %.preheader.i
  %storemerge.lcssa.i = phi double [ %i.flx, %.preheader.i ], [ %i.fnf, %vec.epilog.middle.block3251 ], [ %i.fmw, %middle.block3231 ], [ %i.fnl, %vec.epilog.scalar.ph3240 ]
  %i.fnm = mul nuw i64 %.1122164.i, %.1122132.i
  %i.fnn = getelementptr inbounds nuw [8 x i8], ptr %indvars.iv2591.sroa.phi4434, i64 %i.fnm
  %i.fno = load double, ptr %i.fnn, align 8, !tbaa !216
  %i.fnp = fdiv reassoc nsz arcp contract afn double %storemerge.lcssa.i, %i.fno
  store double %i.fnp, ptr %i.fly, align 8, !tbaa !216
  %i.fnq = add nsw i64 %.1122164.i, -1
  %i.fnr = icmp sgt i64 %.1122164.i, 0
  %indvar.next3209 = add i64 %indvar3208, 1
  br i1 %i.fnr, label %.preheader.i, label %_LinEqSolve.exit

bb.ay:                                            ; preds = %bb.ax
  %i.fns = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !215
  %i.fnt = and i32 %i.fns, 33554432
  %.not1789 = icmp eq i32 %i.fnt, 0
  br i1 %.not1789, label %_LinEqSolve.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fnu = trunc nuw nsw i64 %indvars.iv2591 to i32
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.8, i32 noundef %i.fnu, i32 noundef 0) #20
  br label %_LinEqSolve.exit

_LinEqSolve.exit:                                 ; preds = %._crit_edge162.i, %bb.ay, %bb.az
  %.6 = phi i32 [ 0, %bb.ay ], [ 0, %bb.az ], [ %.42123, %._crit_edge162.i ]
  %i.fnv = getelementptr inbounds nuw i8, ptr %indvars.iv2591.sroa.phi4434, i64 2048 ; 6 uses
  %i.fnw = getelementptr inbounds nuw i8, ptr %indvars.iv2591.sroa.phi, i64 128 ; 5 uses
  %i.fnx = getelementptr inbounds nuw i8, ptr %indvars.iv2591.sroa.phi4443, i64 128 ; 4 uses
  %i.fny = shl nuw nsw i64 %indvars.iv2591, 12    ; 5 uses
  %i.fnz = add nuw nsw i64 %i.fem, %i.fny         ; 2 uses
  %scevgep3141.a = getelementptr i8, ptr %scevgep3140.a, i64 %i.fny
  %scevgep3189.a = getelementptr i8, ptr %scevgep3188.a, i64 %i.fny
  %i.foa = getelementptr i8, ptr %i.fff, i64 %i.fny
  %i.fob = getelementptr i8, ptr %i.l, i64 %i.fny
  %i.foc = getelementptr i8, ptr %i.fob, i64 2048
  %i.fod = getelementptr i8, ptr %i.l, i64 %i.fnz
  %i.foe = getelementptr i8, ptr %i.l, i64 %i.fnz
  br label %.lr.ph.preheader.i.1

.lr.ph.preheader.i.1:                             ; preds = %.loopexit135.i.1, %_LinEqSolve.exit
  %.0121153.i.1 = phi i64 [ %i.foq, %.loopexit135.i.1 ], [ 0, %_LinEqSolve.exit ] ; 26 uses
  %i.fof = sub i64 %i.ffc, %.0121153.i.1
  %i.fog = sub i64 %i.ffb, %.0121153.i.1
  %i.foh = mul i64 %i.fes, %.0121153.i.1
  %scevgep3185.a = getelementptr i8, ptr %i.foa, i64 %i.foh
  %i.foi = shl i64 %.0121153.i.1, 3
  %scevgep3186.a = getelementptr i8, ptr %i.foc, i64 %i.foi
  %i.foj = sub nsw i64 %i.fej, %.0121153.i.1      ; 10 uses
  %i.fok = mul i64 %i.fen, %.0121153.i.1
  %scevgep3138 = getelementptr i8, ptr %i.fod, i64 %i.fok
  %i.fol = mul i64 %i.feq, %.0121153.i.1
  %scevgep3142 = getelementptr i8, ptr %i.foe, i64 %i.fol
  %i.fom = mul nuw nsw i64 %.0121153.i.1, %i.fej
  %i.fon = getelementptr inbounds nuw [8 x i8], ptr %i.fnv, i64 %i.fom ; 14 uses
  %i.foo = getelementptr inbounds nuw [8 x i8], ptr %i.fon, i64 %.0121153.i.1 ; 5 uses
  %i.fop = load double, ptr %i.foo, align 8, !tbaa !216 ; 2 uses
  %i.foq = add nuw nsw i64 %.0121153.i.1, 1       ; 5 uses
  %invariant.gep.i.1 = getelementptr inbounds nuw [8 x i8], ptr %i.fnv, i64 %.0121153.i.1 ; 5 uses
  %i.for = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.fop) ; 2 uses
  %xtraiter4327 = and i64 %i.fof, 3               ; 2 uses
  %lcmp.mod4328.not = icmp eq i64 %xtraiter4327, 0
  br i1 %lcmp.mod4328.not, label %.lr.ph.i.1.prol.loopexit, label %.lr.ph.i.1.prol

.lr.ph.i.1.prol:                                  ; preds = %.lr.ph.preheader.i.1, %.lr.ph.i.1.prol
  %.0141.i.1.prol = phi i64 [ %spec.select133.i.1.prol, %.lr.ph.i.1.prol ], [ %.0121153.i.1, %.lr.ph.preheader.i.1 ]
  %.0124140.i.1.prol = phi i64 [ %i.fow, %.lr.ph.i.1.prol ], [ %i.foq, %.lr.ph.preheader.i.1 ] ; 3 uses
  %.0126139.i.1.prol = phi double [ %spec.select.i.1.prol, %.lr.ph.i.1.prol ], [ %i.for, %.lr.ph.preheader.i.1 ] ; 2 uses
  %prol.iter4329 = phi i64 [ %prol.iter4329.next, %.lr.ph.i.1.prol ], [ 0, %.lr.ph.preheader.i.1 ]
  %i.fos = mul nuw nsw i64 %.0124140.i.1.prol, %i.fej
  %gep.i.1.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.1, i64 %i.fos
  %i.fot = load double, ptr %gep.i.1.prol, align 8, !tbaa !216 ; 2 uses
  %i.fou = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.fot)
  %i.fov = fcmp reassoc nsz arcp contract afn olt double %.0126139.i.1.prol, %i.fou ; 2 uses
  %spec.select.i.1.prol = select nsz i1 %i.fov, double %i.fot, double %.0126139.i.1.prol ; 2 uses
  %spec.select133.i.1.prol = select i1 %i.fov, i64 %.0124140.i.1.prol, i64 %.0141.i.1.prol ; 3 uses
  %i.fow = add nuw nsw i64 %.0124140.i.1.prol, 1  ; 2 uses
  %prol.iter4329.next = add i64 %prol.iter4329, 1 ; 2 uses
  %prol.iter4329.cmp.not = icmp eq i64 %prol.iter4329.next, %xtraiter4327
  br i1 %prol.iter4329.cmp.not, label %.lr.ph.i.1.prol.loopexit, label %.lr.ph.i.1.prol, !llvm.loop !102

.lr.ph.i.1.prol.loopexit:                         ; preds = %.lr.ph.i.1.prol, %.lr.ph.preheader.i.1
  %spec.select133.i.1.lcssa.unr = phi i64 [ poison, %.lr.ph.preheader.i.1 ], [ %spec.select133.i.1.prol, %.lr.ph.i.1.prol ]
  %.0141.i.1.unr = phi i64 [ %.0121153.i.1, %.lr.ph.preheader.i.1 ], [ %spec.select133.i.1.prol, %.lr.ph.i.1.prol ]
  %.0124140.i.1.unr = phi i64 [ %i.foq, %.lr.ph.preheader.i.1 ], [ %i.fow, %.lr.ph.i.1.prol ]
  %.0126139.i.1.unr = phi double [ %i.for, %.lr.ph.preheader.i.1 ], [ %spec.select.i.1.prol, %.lr.ph.i.1.prol ]
  %i.fox = icmp ult i64 %i.fog, 3
  br i1 %i.fox, label %._crit_edge.i.1, label %.lr.ph.i.1
end_hunk_3
begin_hunk_4_@process:bb.a
  %i.frk = load double, ptr %i.frj, align 8, !tbaa !216
  store double %i.frk, ptr %i.frh, align 8, !tbaa !216
  store double %i.fri, ptr %i.frj, align 8, !tbaa !216
  %.pre.i.1 = load double, ptr %i.foo, align 8, !tbaa !216
  br label %bb.ba

bb.ba:                                            ; preds = %._crit_edge144.i.1, %._crit_edge.i.1
  %i.frl = phi double [ %.pre.i.1, %._crit_edge144.i.1 ], [ %i.fop, %._crit_edge.i.1 ]
  %i.frm = fcmp reassoc nsz arcp contract afn oeq double %i.frl, 0.000000e+00
  br i1 %i.frm, label %bb.bb, label %.lr.ph150.i.1

.lr.ph150.i.1:                                    ; preds = %bb.ba
  %i.frn = getelementptr inbounds nuw [8 x i8], ptr %i.fnw, i64 %.0121153.i.1
  %min.iters.check3146 = icmp ult i64 %i.foj, 4
  %bound03143 = icmp ult ptr %scevgep3138, %scevgep3142
  %bound13144 = icmp ult ptr %i.foo, %scevgep3141.a
  %found.conflict3145 = and i1 %bound03143, %bound13144
  %min.iters.check3148 = icmp ult i64 %i.foj, 16
  %i.fro = and i64 %i.foj, 12
  %n.vec3150 = and i64 %i.foj, -16                ; 4 uses
  %i.frp = add i64 %.0121153.i.1, %n.vec3150
  %cmp.n3165 = icmp eq i64 %i.foj, %n.vec3150
  %min.epilog.iters.check3171 = icmp eq i64 %i.fro, 0
  %n.vec3173 = and i64 %i.foj, -4                 ; 3 uses
  %i.frq = add i64 %.0121153.i.1, %n.vec3173
  %cmp.n3182 = icmp eq i64 %i.foj, %n.vec3173
  br label %iter.check3168

iter.check3168:                                   ; preds = %._crit_edge148.us.i.1, %.lr.ph150.i.1
  %.0123149.us.i.1 = phi i64 [ %i.foq, %.lr.ph150.i.1 ], [ %i.fun, %._crit_edge148.us.i.1 ] ; 3 uses
  %i.frr = mul nuw nsw i64 %.0123149.us.i.1, %i.fej
  %i.frs = getelementptr inbounds nuw [8 x i8], ptr %i.fnv, i64 %i.frr ; 8 uses
  %i.frt = getelementptr inbounds nuw [8 x i8], ptr %i.frs, i64 %.0121153.i.1
  %i.fru = load double, ptr %i.frt, align 8, !tbaa !216
  %i.frv = fneg reassoc nsz arcp contract afn double %i.fru
  %i.frw = load double, ptr %i.foo, align 8, !tbaa !216
  %i.frx = fdiv reassoc nsz arcp contract afn double %i.frv, %i.frw ; 8 uses
  %brmerge4523.a = select i1 %min.iters.check3146, i1 true, i1 %found.conflict3145
  br i1 %brmerge4523.a, label %vec.epilog.scalar.ph3169.preheader, label %vector.main.loop.iter.check3147

vector.main.loop.iter.check3147:                  ; preds = %iter.check3168
  br i1 %min.iters.check3148, label %vec.epilog.ph3172, label %vector.ph3149

vector.ph3149:                                    ; preds = %vector.main.loop.iter.check3147
  %broadcast.splatinsert3151 = insertelement <4 x double> poison, double %i.frx, i64 0
  %broadcast.splat3152 = shufflevector <4 x double> %broadcast.splatinsert3151, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body3153

vector.body3153:                                  ; preds = %vector.body3153, %vector.ph3149
  %index3154 = phi i64 [ 0, %vector.ph3149 ], [ %index.next3163, %vector.body3153 ] ; 2 uses
  %i.fry = add nuw i64 %.0121153.i.1, %index3154  ; 2 uses
  %i.frz = getelementptr inbounds nuw [8 x i8], ptr %i.frs, i64 %i.fry ; 5 uses
  %i.fsa = getelementptr inbounds nuw i8, ptr %i.frz, i64 32 ; 2 uses
  %i.fsb = getelementptr inbounds nuw i8, ptr %i.frz, i64 64 ; 2 uses
  %i.fsc = getelementptr inbounds nuw i8, ptr %i.frz, i64 96 ; 2 uses
  %wide.load3155.a = load <4 x double>, ptr %i.frz, align 8, !tbaa !216, !alias.scope !224, !noalias !225
  %wide.load3156.a = load <4 x double>, ptr %i.fsa, align 8, !tbaa !216, !alias.scope !224, !noalias !225
  %wide.load3157.a = load <4 x double>, ptr %i.fsb, align 8, !tbaa !216, !alias.scope !224, !noalias !225
  %wide.load3158.a = load <4 x double>, ptr %i.fsc, align 8, !tbaa !216, !alias.scope !224, !noalias !225
  %i.fsd = getelementptr inbounds nuw [8 x i8], ptr %i.fon, i64 %i.fry ; 4 uses
  %i.fse = getelementptr inbounds nuw i8, ptr %i.fsd, i64 32
  %i.fsf = getelementptr inbounds nuw i8, ptr %i.fsd, i64 64
  %i.fsg = getelementptr inbounds nuw i8, ptr %i.fsd, i64 96
  %wide.load3159.a = load <4 x double>, ptr %i.fsd, align 8, !tbaa !216, !alias.scope !225
  %wide.load3160.a = load <4 x double>, ptr %i.fse, align 8, !tbaa !216, !alias.scope !225
  %wide.load3161.a = load <4 x double>, ptr %i.fsf, align 8, !tbaa !216, !alias.scope !225
  %wide.load3162 = load <4 x double>, ptr %i.fsg, align 8, !tbaa !216, !alias.scope !225
  %i.fsh = fmul reassoc nsz arcp contract afn <4 x double> %wide.load3159.a, %broadcast.splat3152
  %i.fsi = fmul reassoc nsz arcp contract afn <4 x double> %wide.load3160.a, %broadcast.splat3152
  %i.fsj = fmul reassoc nsz arcp contract afn <4 x double> %wide.load3161.a, %broadcast.splat3152
  %i.fsk = fmul reassoc nsz arcp contract afn <4 x double> %wide.load3162, %broadcast.splat3152
  %i.fsl = fadd reassoc nsz arcp contract afn <4 x double> %i.fsh, %wide.load3155.a
  %i.fsm = fadd reassoc nsz arcp contract afn <4 x double> %i.fsi, %wide.load3156.a
  %i.fsn = fadd reassoc nsz arcp contract afn <4 x double> %i.fsj, %wide.load3157.a
  %i.fso = fadd reassoc nsz arcp contract afn <4 x double> %i.fsk, %wide.load3158.a
  store <4 x double> %i.fsl, ptr %i.frz, align 8, !tbaa !216, !alias.scope !224, !noalias !225
  store <4 x double> %i.fsm, ptr %i.fsa, align 8, !tbaa !216, !alias.scope !224, !noalias !225
  store <4 x double> %i.fsn, ptr %i.fsb, align 8, !tbaa !216, !alias.scope !224, !noalias !225
  store <4 x double> %i.fso, ptr %i.fsc, align 8, !tbaa !216, !alias.scope !224, !noalias !225
  %index.next3163 = add nuw i64 %index3154, 16    ; 2 uses
  %i.fsp = icmp eq i64 %index.next3163, %n.vec3150
  br i1 %i.fsp, label %middle.block3164, label %vector.body3153, !llvm.loop !112

middle.block3164:                                 ; preds = %vector.body3153
  br i1 %cmp.n3165, label %._crit_edge148.us.i.1, label %vec.epilog.iter.check3170

vec.epilog.iter.check3170:                        ; preds = %middle.block3164
  br i1 %min.epilog.iters.check3171, label %vec.epilog.scalar.ph3169.preheader, label %vec.epilog.ph3172, !prof !221

vec.epilog.ph3172:                                ; preds = %vector.main.loop.iter.check3147, %vec.epilog.iter.check3170
  %vec.epilog.resume.val3166 = phi i64 [ %n.vec3150, %vec.epilog.iter.check3170 ], [ 0, %vector.main.loop.iter.check3147 ]
  %broadcast.splatinsert3174 = insertelement <4 x double> poison, double %i.frx, i64 0
  %broadcast.splat3175 = shufflevector <4 x double> %broadcast.splatinsert3174, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body3176

vec.epilog.vector.body3176:                       ; preds = %vec.epilog.vector.body3176, %vec.epilog.ph3172
  %index3177 = phi i64 [ %vec.epilog.resume.val3166, %vec.epilog.ph3172 ], [ %index.next3180, %vec.epilog.vector.body3176 ] ; 2 uses
  %i.fsq = add nuw i64 %.0121153.i.1, %index3177  ; 2 uses
  %i.fsr = getelementptr inbounds nuw [8 x i8], ptr %i.frs, i64 %i.fsq ; 2 uses
  %wide.load3178.a = load <4 x double>, ptr %i.fsr, align 8, !tbaa !216, !alias.scope !224, !noalias !225
  %i.fss = getelementptr inbounds nuw [8 x i8], ptr %i.fon, i64 %i.fsq
  %wide.load3179 = load <4 x double>, ptr %i.fss, align 8, !tbaa !216, !alias.scope !225
  %i.fst = fmul reassoc nsz arcp contract afn <4 x double> %wide.load3179, %broadcast.splat3175
  %i.fsu = fadd reassoc nsz arcp contract afn <4 x double> %i.fst, %wide.load3178.a
  store <4 x double> %i.fsu, ptr %i.fsr, align 8, !tbaa !216, !alias.scope !224, !noalias !225
  %index.next3180 = add nuw i64 %index3177, 4     ; 2 uses
  %i.fsv = icmp eq i64 %index.next3180, %n.vec3173
  br i1 %i.fsv, label %vec.epilog.middle.block3181, label %vec.epilog.vector.body3176, !llvm.loop !113

vec.epilog.middle.block3181:                      ; preds = %vec.epilog.vector.body3176
  br i1 %cmp.n3182, label %._crit_edge148.us.i.1, label %vec.epilog.scalar.ph3169.preheader

vec.epilog.scalar.ph3169.preheader:               ; preds = %iter.check3168, %vec.epilog.iter.check3170, %vec.epilog.middle.block3181
  %.2145.us.i.1.ph = phi i64 [ %.0121153.i.1, %iter.check3168 ], [ %i.frq, %vec.epilog.middle.block3181 ], [ %i.frp, %vec.epilog.iter.check3170 ] ; 4 uses
  %i.fsw = sub i64 %i.fej, %.2145.us.i.1.ph
  %xtraiter4333 = and i64 %i.fsw, 3               ; 2 uses
  %lcmp.mod4334.not = icmp eq i64 %xtraiter4333, 0
  br i1 %lcmp.mod4334.not, label %vec.epilog.scalar.ph3169.prol.loopexit, label %vec.epilog.scalar.ph3169.prol

vec.epilog.scalar.ph3169.prol:                    ; preds = %vec.epilog.scalar.ph3169.preheader, %vec.epilog.scalar.ph3169.prol
  %.2145.us.i.1.prol = phi i64 [ %i.ftd, %vec.epilog.scalar.ph3169.prol ], [ %.2145.us.i.1.ph, %vec.epilog.scalar.ph3169.preheader ] ; 3 uses
  %prol.iter4335 = phi i64 [ %prol.iter4335.next, %vec.epilog.scalar.ph3169.prol ], [ 0, %vec.epilog.scalar.ph3169.preheader ]
  %i.fsx = getelementptr inbounds nuw [8 x i8], ptr %i.frs, i64 %.2145.us.i.1.prol ; 2 uses
  %i.fsy = load double, ptr %i.fsx, align 8, !tbaa !216
  %i.fsz = getelementptr inbounds nuw [8 x i8], ptr %i.fon, i64 %.2145.us.i.1.prol
  %i.fta = load double, ptr %i.fsz, align 8, !tbaa !216
  %i.ftb = fmul reassoc nsz arcp contract afn double %i.fta, %i.frx
  %i.ftc = fadd reassoc nsz arcp contract afn double %i.ftb, %i.fsy
  store double %i.ftc, ptr %i.fsx, align 8, !tbaa !216
  %i.ftd = add nuw nsw i64 %.2145.us.i.1.prol, 1  ; 2 uses
  %prol.iter4335.next = add i64 %prol.iter4335, 1 ; 2 uses
  %prol.iter4335.cmp.not = icmp eq i64 %prol.iter4335.next, %xtraiter4333
  br i1 %prol.iter4335.cmp.not, label %vec.epilog.scalar.ph3169.prol.loopexit, label %vec.epilog.scalar.ph3169.prol, !llvm.loop !114

vec.epilog.scalar.ph3169.prol.loopexit:           ; preds = %vec.epilog.scalar.ph3169.prol, %vec.epilog.scalar.ph3169.preheader
  %.2145.us.i.1.unr = phi i64 [ %.2145.us.i.1.ph, %vec.epilog.scalar.ph3169.preheader ], [ %i.ftd, %vec.epilog.scalar.ph3169.prol ]
  %i.fte = sub i64 %.2145.us.i.1.ph, %i.fej
  %i.ftf = icmp ugt i64 %i.fte, -4
  br i1 %i.ftf, label %._crit_edge148.us.i.1, label %vec.epilog.scalar.ph3169

vec.epilog.scalar.ph3169:                         ; preds = %vec.epilog.scalar.ph3169.prol.loopexit, %vec.epilog.scalar.ph3169
  %.2145.us.i.1 = phi i64 [ %i.fuh, %vec.epilog.scalar.ph3169 ], [ %.2145.us.i.1.unr, %vec.epilog.scalar.ph3169.prol.loopexit ] ; 6 uses
  %i.ftg = getelementptr inbounds nuw [8 x i8], ptr %i.frs, i64 %.2145.us.i.1 ; 2 uses
  %i.fth = load double, ptr %i.ftg, align 8, !tbaa !216
  %i.fti = getelementptr inbounds nuw [8 x i8], ptr %i.fon, i64 %.2145.us.i.1
  %i.ftj = load double, ptr %i.fti, align 8, !tbaa !216
  %i.ftk = fmul reassoc nsz arcp contract afn double %i.ftj, %i.frx
  %i.ftl = fadd reassoc nsz arcp contract afn double %i.ftk, %i.fth
  store double %i.ftl, ptr %i.ftg, align 8, !tbaa !216
  %i.ftm = add nuw nsw i64 %.2145.us.i.1, 1       ; 2 uses
  %i.ftn = getelementptr inbounds nuw [8 x i8], ptr %i.frs, i64 %i.ftm ; 2 uses
  %i.fto = load double, ptr %i.ftn, align 8, !tbaa !216
  %i.ftp = getelementptr inbounds nuw [8 x i8], ptr %i.fon, i64 %i.ftm
  %i.ftq = load double, ptr %i.ftp, align 8, !tbaa !216
  %i.ftr = fmul reassoc nsz arcp contract afn double %i.ftq, %i.frx
  %i.fts = fadd reassoc nsz arcp contract afn double %i.ftr, %i.fto
  store double %i.fts, ptr %i.ftn, align 8, !tbaa !216
  %i.ftt = add nuw nsw i64 %.2145.us.i.1, 2       ; 2 uses
  %i.ftu = getelementptr inbounds nuw [8 x i8], ptr %i.frs, i64 %i.ftt ; 2 uses
  %i.ftv = load double, ptr %i.ftu, align 8, !tbaa !216
  %i.ftw = getelementptr inbounds nuw [8 x i8], ptr %i.fon, i64 %i.ftt
  %i.ftx = load double, ptr %i.ftw, align 8, !tbaa !216
  %i.fty = fmul reassoc nsz arcp contract afn double %i.ftx, %i.frx
  %i.ftz = fadd reassoc nsz arcp contract afn double %i.fty, %i.ftv
  store double %i.ftz, ptr %i.ftu, align 8, !tbaa !216
  %i.fua = add nuw nsw i64 %.2145.us.i.1, 3       ; 2 uses
  %i.fub = getelementptr inbounds nuw [8 x i8], ptr %i.frs, i64 %i.fua ; 2 uses
  %i.fuc = load double, ptr %i.fub, align 8, !tbaa !216
  %i.fud = getelementptr inbounds nuw [8 x i8], ptr %i.fon, i64 %i.fua
  %i.fue = load double, ptr %i.fud, align 8, !tbaa !216
  %i.fuf = fmul reassoc nsz arcp contract afn double %i.fue, %i.frx
  %i.fug = fadd reassoc nsz arcp contract afn double %i.fuf, %i.fuc
  store double %i.fug, ptr %i.fub, align 8, !tbaa !216
  %i.fuh = add nuw nsw i64 %.2145.us.i.1, 4       ; 2 uses
  %exitcond167.not.i.1.3 = icmp eq i64 %i.fuh, %i.fej
  br i1 %exitcond167.not.i.1.3, label %._crit_edge148.us.i.1, label %vec.epilog.scalar.ph3169, !llvm.loop !115

._crit_edge148.us.i.1:                            ; preds = %vec.epilog.scalar.ph3169.prol.loopexit, %vec.epilog.scalar.ph3169, %vec.epilog.middle.block3181, %middle.block3164
  %i.fui = getelementptr inbounds nuw [8 x i8], ptr %i.fnw, i64 %.0123149.us.i.1 ; 2 uses
  %i.fuj = load double, ptr %i.fui, align 8, !tbaa !216
  %i.fuk = load double, ptr %i.frn, align 8, !tbaa !216
  %i.ful = fmul reassoc nsz arcp contract afn double %i.fuk, %i.frx
  %i.fum = fadd reassoc nsz arcp contract afn double %i.ful, %i.fuj
  store double %i.fum, ptr %i.fui, align 8, !tbaa !216
  %i.fun = add nuw nsw i64 %.0123149.us.i.1, 1    ; 2 uses
  %exitcond168.not.i.1 = icmp eq i64 %i.fun, %i.fej
  br i1 %exitcond168.not.i.1, label %.loopexit135.i.1, label %iter.check3168

.loopexit135.i.1:                                 ; preds = %._crit_edge148.us.i.1
  %exitcond169.not.i.1 = icmp eq i64 %i.foq, %i.fek
  br i1 %exitcond169.not.i.1, label %.preheader.i.1, label %.lr.ph.preheader.i.1

.preheader.i.1:                                   ; preds = %.loopexit135.i.1, %._crit_edge162.i.1
  %indvar3094 = phi i64 [ %indvar.next3095, %._crit_edge162.i.1 ], [ 0, %.loopexit135.i.1 ] ; 8 uses
  %.1122164.i.1 = phi i64 [ %i.fwi, %._crit_edge162.i.1 ], [ %i.fek, %.loopexit135.i.1 ] ; 7 uses
  %i.fuo = getelementptr inbounds nuw [8 x i8], ptr %i.fnw, i64 %.1122164.i.1
  %i.fup = load double, ptr %i.fuo, align 8, !tbaa !216 ; 5 uses
  %i.fuq = getelementptr inbounds nuw [8 x i8], ptr %i.fnx, i64 %.1122164.i.1 ; 5 uses
  store double %i.fup, ptr %i.fuq, align 8, !tbaa !216
  %.3157.i.1 = add nuw nsw i64 %.1122164.i.1, 1   ; 6 uses
  %11 = icmp slt i64 %.3157.i.1, %i.fej
  br i1 %11, label %iter.check3121, label %._crit_edge162.i.1

iter.check3121:                                   ; preds = %.preheader.i.1
  %i.fur = mul nuw nsw i64 %.1122164.i.1, %i.fej
  %i.fus = getelementptr inbounds nuw [8 x i8], ptr %i.fnv, i64 %i.fur ; 3 uses
  %min.iters.check3096 = icmp ult i64 %indvar3094, 4
  br i1 %min.iters.check3096, label %vec.epilog.scalar.ph3122.preheader, label %vector.main.loop.iter.check3097

vector.main.loop.iter.check3097:                  ; preds = %iter.check3121
  %min.iters.check3098 = icmp ult i64 %indvar3094, 16
  br i1 %min.iters.check3098, label %vec.epilog.ph3125, label %vector.ph3099

vector.ph3099:                                    ; preds = %vector.main.loop.iter.check3097
  %i.fut = and i64 %indvar3094, 12
  %n.vec3100 = and i64 %indvar3094, -16           ; 4 uses
  %i.fuu = add i64 %.3157.i.1, %n.vec3100
  %i.fuv = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %i.fup, i64 0
  br label %vector.body3101

vector.body3101:                                  ; preds = %vector.body3101, %vector.ph3099
  %index3102 = phi i64 [ 0, %vector.ph3099 ], [ %index.next3114, %vector.body3101 ] ; 2 uses
  %vec.phi = phi <4 x double> [ %i.fuv, %vector.ph3099 ], [ %i.fvj, %vector.body3101 ]
  %vec.phi3103.a = phi <4 x double> [ zeroinitializer, %vector.ph3099 ], [ %i.fvk, %vector.body3101 ]
  %vec.phi3104.a = phi <4 x double> [ zeroinitializer, %vector.ph3099 ], [ %i.fvl, %vector.body3101 ]
  %vec.phi3105 = phi <4 x double> [ zeroinitializer, %vector.ph3099 ], [ %i.fvm, %vector.body3101 ]
  %i.fuw = add nuw i64 %.3157.i.1, %index3102     ; 2 uses
  %i.fux = getelementptr inbounds nuw [8 x i8], ptr %i.fus, i64 %i.fuw ; 4 uses
  %i.fuy = getelementptr inbounds nuw i8, ptr %i.fux, i64 32
  %i.fuz = getelementptr inbounds nuw i8, ptr %i.fux, i64 64
  %i.fva = getelementptr inbounds nuw i8, ptr %i.fux, i64 96
  %wide.load3106.a = load <4 x double>, ptr %i.fux, align 8, !tbaa !216
  %wide.load3107.a = load <4 x double>, ptr %i.fuy, align 8, !tbaa !216
  %wide.load3108.a = load <4 x double>, ptr %i.fuz, align 8, !tbaa !216
  %wide.load3109.a = load <4 x double>, ptr %i.fva, align 8, !tbaa !216
  %i.fvb = getelementptr inbounds nuw [8 x i8], ptr %i.fnx, i64 %i.fuw ; 4 uses
  %i.fvc = getelementptr inbounds nuw i8, ptr %i.fvb, i64 32
  %i.fvd = getelementptr inbounds nuw i8, ptr %i.fvb, i64 64
  %i.fve = getelementptr inbounds nuw i8, ptr %i.fvb, i64 96
  %wide.load3110.a = load <4 x double>, ptr %i.fvb, align 8, !tbaa !216
  %wide.load3111.a = load <4 x double>, ptr %i.fvc, align 8, !tbaa !216
  %wide.load3112.a = load <4 x double>, ptr %i.fvd, align 8, !tbaa !216
  %wide.load3113 = load <4 x double>, ptr %i.fve, align 8, !tbaa !216
  %i.fvf = fmul reassoc nsz arcp contract afn <4 x double> %wide.load3110.a, %wide.load3106.a
  %i.fvg = fmul reassoc nsz arcp contract afn <4 x double> %wide.load3111.a, %wide.load3107.a
  %i.fvh = fmul reassoc nsz arcp contract afn <4 x double> %wide.load3112.a, %wide.load3108.a
  %i.fvi = fmul reassoc nsz arcp contract afn <4 x double> %wide.load3113, %wide.load3109.a
  %i.fvj = fsub reassoc nsz arcp contract afn <4 x double> %vec.phi, %i.fvf ; 2 uses
  %i.fvk = fsub reassoc nsz arcp contract afn <4 x double> %vec.phi3103.a, %i.fvg ; 2 uses
  %i.fvl = fsub reassoc nsz arcp contract afn <4 x double> %vec.phi3104.a, %i.fvh ; 2 uses
  %i.fvm = fsub reassoc nsz arcp contract afn <4 x double> %vec.phi3105, %i.fvi ; 2 uses
  %index.next3114 = add nuw i64 %index3102, 16    ; 2 uses
  %i.fvn = icmp eq i64 %index.next3114, %n.vec3100
  br i1 %i.fvn, label %middle.block3115, label %vector.body3101, !llvm.loop !116

middle.block3115:                                 ; preds = %vector.body3101
  %bin.rdx = fadd reassoc nsz arcp contract afn <4 x double> %i.fvk, %i.fvj
  %bin.rdx3116.a = fadd reassoc nsz arcp contract afn <4 x double> %i.fvl, %bin.rdx
  %bin.rdx3117 = fadd reassoc nsz arcp contract afn <4 x double> %i.fvm, %bin.rdx3116.a
  %i.fvo = call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %bin.rdx3117) ; 4 uses
  store double %i.fvo, ptr %i.fuq, align 8, !tbaa !216
  %cmp.n3118 = icmp eq i64 %indvar3094, %n.vec3100
  br i1 %cmp.n3118, label %._crit_edge162.i.1, label %vec.epilog.iter.check3123

vec.epilog.iter.check3123:                        ; preds = %middle.block3115
  %min.epilog.iters.check3124 = icmp eq i64 %i.fut, 0
  br i1 %min.epilog.iters.check3124, label %vec.epilog.scalar.ph3122.preheader, label %vec.epilog.ph3125, !prof !221

vec.epilog.ph3125:                                ; preds = %vector.main.loop.iter.check3097, %vec.epilog.iter.check3123
  %vec.epilog.resume.val3119 = phi i64 [ %n.vec3100, %vec.epilog.iter.check3123 ], [ 0, %vector.main.loop.iter.check3097 ]
  %bc.merge.rdx = phi double [ %i.fvo, %vec.epilog.iter.check3123 ], [ %i.fup, %vector.main.loop.iter.check3097 ]
  %n.vec3126 = and i64 %indvar3094, -4            ; 3 uses
  %i.fvp = add i64 %.3157.i.1, %n.vec3126
  %i.fvq = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body3127

vec.epilog.vector.body3127:                       ; preds = %vec.epilog.vector.body3127, %vec.epilog.ph3125
  %index3128 = phi i64 [ %vec.epilog.resume.val3119, %vec.epilog.ph3125 ], [ %index.next3132, %vec.epilog.vector.body3127 ] ; 2 uses
  %vec.phi3129 = phi <4 x double> [ %i.fvq, %vec.epilog.ph3125 ], [ %i.fvv, %vec.epilog.vector.body3127 ]
  %i.fvr = add nuw i64 %.3157.i.1, %index3128     ; 2 uses
  %i.fvs = getelementptr inbounds nuw [8 x i8], ptr %i.fus, i64 %i.fvr
  %wide.load3130.a = load <4 x double>, ptr %i.fvs, align 8, !tbaa !216
  %i.fvt = getelementptr inbounds nuw [8 x i8], ptr %i.fnx, i64 %i.fvr
  %wide.load3131 = load <4 x double>, ptr %i.fvt, align 8, !tbaa !216
  %i.fvu = fmul reassoc nsz arcp contract afn <4 x double> %wide.load3131, %wide.load3130.a
  %i.fvv = fsub reassoc nsz arcp contract afn <4 x double> %vec.phi3129, %i.fvu ; 2 uses
  %index.next3132 = add nuw i64 %index3128, 4     ; 2 uses
  %i.fvw = icmp eq i64 %index.next3132, %n.vec3126
  br i1 %i.fvw, label %vec.epilog.middle.block3133, label %vec.epilog.vector.body3127, !llvm.loop !117

vec.epilog.middle.block3133:                      ; preds = %vec.epilog.vector.body3127
  %i.fvx = call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.fvv) ; 3 uses
  store double %i.fvx, ptr %i.fuq, align 8, !tbaa !216
  %cmp.n3134 = icmp eq i64 %indvar3094, %n.vec3126
  br i1 %cmp.n3134, label %._crit_edge162.i.1, label %vec.epilog.scalar.ph3122.preheader

vec.epilog.scalar.ph3122.preheader:               ; preds = %iter.check3121, %vec.epilog.iter.check3123, %vec.epilog.middle.block3133
  %.3159.i.1.ph = phi i64 [ %.3157.i.1, %iter.check3121 ], [ %i.fuu, %vec.epilog.iter.check3123 ], [ %i.fvp, %vec.epilog.middle.block3133 ]
  %storemerge158.i.1.ph = phi double [ %i.fup, %iter.check3121 ], [ %i.fvo, %vec.epilog.iter.check3123 ], [ %i.fvx, %vec.epilog.middle.block3133 ]
  br label %vec.epilog.scalar.ph3122

vec.epilog.scalar.ph3122:                         ; preds = %vec.epilog.scalar.ph3122.preheader, %vec.epilog.scalar.ph3122
  %.3159.i.1 = phi i64 [ %.3.i.1, %vec.epilog.scalar.ph3122 ], [ %.3159.i.1.ph, %vec.epilog.scalar.ph3122.preheader ] ; 3 uses
  %storemerge158.i.1 = phi double [ %i.fwd, %vec.epilog.scalar.ph3122 ], [ %storemerge158.i.1.ph, %vec.epilog.scalar.ph3122.preheader ]
  %i.fvy = getelementptr inbounds nuw [8 x i8], ptr %i.fus, i64 %.3159.i.1
  %i.fvz = load double, ptr %i.fvy, align 8, !tbaa !216
  %i.fwa = getelementptr inbounds nuw [8 x i8], ptr %i.fnx, i64 %.3159.i.1
  %i.fwb = load double, ptr %i.fwa, align 8, !tbaa !216
  %i.fwc = fmul reassoc nsz arcp contract afn double %i.fwb, %i.fvz
  %i.fwd = fsub reassoc nsz arcp contract afn double %storemerge158.i.1, %i.fwc ; 3 uses
  store double %i.fwd, ptr %i.fuq, align 8, !tbaa !216
  %.3.i.1 = add nuw nsw i64 %.3159.i.1, 1         ; 2 uses
  %exitcond170.not.i.1 = icmp eq i64 %.3.i.1, %i.fej
  br i1 %exitcond170.not.i.1, label %._crit_edge162.i.1, label %vec.epilog.scalar.ph3122, !llvm.loop !118

._crit_edge162.i.1:                               ; preds = %vec.epilog.scalar.ph3122, %middle.block3115, %vec.epilog.middle.block3133, %.preheader.i.1
  %storemerge.lcssa.i.1 = phi double [ %i.fup, %.preheader.i.1 ], [ %i.fvx, %vec.epilog.middle.block3133 ], [ %i.fvo, %middle.block3115 ], [ %i.fwd, %vec.epilog.scalar.ph3122 ]
  %i.fwe = mul nuw i64 %.1122164.i.1, %.1122132.i
  %i.fwf = getelementptr inbounds nuw [8 x i8], ptr %i.fnv, i64 %i.fwe
  %i.fwg = load double, ptr %i.fwf, align 8, !tbaa !216
  %i.fwh = fdiv reassoc nsz arcp contract afn double %storemerge.lcssa.i.1, %i.fwg
  store double %i.fwh, ptr %i.fuq, align 8, !tbaa !216
  %i.fwi = add nsw i64 %.1122164.i.1, -1
  %i.fwj = icmp sgt i64 %.1122164.i.1, 0
  %indvar.next3095 = add i64 %indvar3094, 1
  br i1 %i.fwj, label %.preheader.i.1, label %_LinEqSolve.exit.1

bb.bb:                                            ; preds = %bb.ba
  %i.fwk = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !215
  %i.fwl = and i32 %i.fwk, 33554432
  %.not1789.1 = icmp eq i32 %i.fwl, 0
  br i1 %.not1789.1, label %_LinEqSolve.exit.1, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fwm = trunc nuw nsw i64 %indvars.iv2591 to i32
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.8, i32 noundef %i.fwm, i32 noundef 1) #20
  br label %_LinEqSolve.exit.1

_LinEqSolve.exit.1:                               ; preds = %._crit_edge162.i.1, %bb.bc, %bb.bb
  %.6.1 = phi i32 [ 0, %bb.bb ], [ 0, %bb.bc ], [ %.6, %._crit_edge162.i.1 ] ; 2 uses
  br i1 %i.ffg, label %.preheader1961, label %bb.bd

bb.bd:                                            ; preds = %_LinEqSolve.exit.1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #20
  %.not1786 = icmp eq i32 %.6.1, 0                ; 2 uses
  %brmerge3003 = select i1 %.not1786, i1 true, i1 %i.fo
  %not..not1786 = xor i1 %.not1786, true
  br i1 %brmerge3003, label %.thread1866, label %.preheader1960.lr.ph

.preheader1960.lr.ph:                             ; preds = %bb.bd
  br i1 %i.fp, label %.preheader1960.preheader, label %.preheader1969

.preheader1960.preheader:                         ; preds = %.preheader1960.lr.ph
  %i.fwn = zext i32 %.11700 to i64                ; 4 uses
  %xtraiter4406 = and i64 %i.fwn, 1
  %i.fwo = icmp eq i32 %.11700, 1
  %unroll_iter4416 = and i64 %i.fwn, 4294967294
  %lcmp.mod4410.not = icmp eq i64 %xtraiter4406, 0
  %lcmp.mod4415 = trunc i32 %.11700 to i1
  br label %.preheader1960

.preheader1969:                                   ; preds = %._crit_edge2229, %.preheader1960.lr.ph
  br i1 %i.fw, label %.lr.ph2237, label %.thread1866

.preheader1960:                                   ; preds = %.preheader1960.preheader, %._crit_edge2229
  %indvars.iv2742 = phi i64 [ -8, %.preheader1960.preheader ], [ %indvars.iv.next2743, %._crit_edge2229 ] ; 9 uses
  %i.fwp = add nsw i64 %indvars.iv2742, 8
  %i.fwq = udiv i64 %i.fwp, 112
  %i.fwr = add nsw i64 %indvars.iv2742, 128       ; 2 uses
  %i.fws = trunc nuw nsw i64 %i.fwr to i32
  %i.fwt = tail call i32 @llvm.smin.i32(i32 %i.fws, i32 %i.et)
  %i.fwu = trunc nsw i64 %indvars.iv2742 to i32   ; 2 uses
  %i.fwv = sub nsw i32 %i.fwt, %i.fwu             ; 7 uses
  %i.fww = icmp sgt i64 %indvars.iv2742, -1       ; 3 uses
  %i.fwx = select i1 %i.fww, i32 0, i32 8         ; 3 uses
  %i.fwy = icmp sgt i64 %i.fwr, %i.bk
  %i.fwz = trunc i64 %indvars.iv2742 to i32
  %i.fxa = sub i32 %i.ah, %i.fwz
  %i.fxb = select i1 %i.fwy, i32 %i.fxa, i32 %i.fwv ; 8 uses
  %i.fxc = icmp slt i32 %i.fwx, %i.fxb            ; 2 uses
  %i.fxd = icmp slt i32 %i.fxb, %i.fwv            ; 3 uses
  %i.fxe = sub nsw i32 %i.fwv, %i.fxb             ; 3 uses
  %i.fxf = tail call i32 @llvm.smin.i32(i32 %i.fxe, i32 8)
  %i.fxg = icmp sgt i32 %i.fxe, 0                 ; 2 uses
  %i.fxh = icmp sge i32 %i.fwx, %i.fxb
  %.not1799 = xor i1 %i.fxd, true
  %i.fxi = icmp slt i32 %i.fxe, 1
  %i.fxj = trunc i64 %i.fwq to i32
  %i.fxk = add i32 %i.fxj, 1
  %i.fxl = sitofp reassoc nsz arcp contract afn i32 %i.fxk to float
  %i.fxm = add nsw i32 %i.fwv, -4
  %i.fxn = icmp sgt i32 %i.fwv, 8
  %i.fxo = add nsw i32 %i.fwv, -8                 ; 2 uses
  %i.fxp = icmp sgt i32 %i.fwv, 16
  %i.fxq = zext nneg i32 %i.fwx to i64            ; 3 uses
  %i.fxr = sext i32 %i.fxb to i64                 ; 3 uses
  %i.fxs = sext i32 %i.fxf to i64                 ; 3 uses
  %i.fxt = sext i32 %i.fxm to i64
  %i.fxu = sext i32 %i.fxo to i64
end_hunk_4
