Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/IndexIVFFastScan?download=true
inline.NumInlined: 1899
inline.NumDeleted: 771
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZNK5faiss16IndexIVFFastScan15search_implem_2INS_4CMaxItlEEEEvlPKflPfPlRKNS0_15CoarseQuantizedERKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFE.omp_outlined:bb.a

bb.k:                                             ; preds = %_ZN5faiss4CMaxItlE4cmp2Ettll.exit61.i.i, %_ZN5faiss4CMaxItlE4cmp2Ettll.exit60.i.i
  %.sink79.i.i = phi i16 [ %i.bz, %_ZN5faiss4CMaxItlE4cmp2Ettll.exit60.i.i ], [ %i.bq, %_ZN5faiss4CMaxItlE4cmp2Ettll.exit61.i.i ]
  %.sink.i.i = phi i64 [ %i.cc, %_ZN5faiss4CMaxItlE4cmp2Ettll.exit60.i.i ], [ %i.bs, %_ZN5faiss4CMaxItlE4cmp2Ettll.exit61.i.i ]
  %.1.i.i = phi i64 [ %i.bl, %_ZN5faiss4CMaxItlE4cmp2Ettll.exit60.i.i ], [ %i.bk, %_ZN5faiss4CMaxItlE4cmp2Ettll.exit61.i.i ] ; 3 uses
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %.062.i.i
  store i16 %.sink79.i.i, ptr %i.ck, align 2, !tbaa !159
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.062.i.i
  store i64 %.sink.i.i, ptr %i.cl, align 8, !tbaa !72
  %i.cm = shl i64 %.1.i.i, 1                      ; 3 uses
  %i.cn = or disjoint i64 %i.cm, 1
  %i.co = icmp ugt i64 %i.cm, %i.be
  br i1 %i.co, label %_ZN5faiss4CMaxItlE4cmp2Ettll.exit60.thread.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !306

_ZN5faiss4CMaxItlE4cmp2Ettll.exit60.thread.loopexit.i.i: ; preds = %bb.k, %_ZN5faiss4CMaxItlE4cmp2Ettll.exit61.i.i, %bb.j, %_ZN5faiss4CMaxItlE4cmp2Ettll.exit60.i.i, %_ZN5faiss4CMaxItlE4cmp2Ettll.exit.thread.i.i
  %.0.lcssa.ph.i.i = phi i64 [ %.1.i.i, %bb.k ], [ %.062.i.i, %_ZN5faiss4CMaxItlE4cmp2Ettll.exit60.i.i ], [ %.062.i.i, %_ZN5faiss4CMaxItlE4cmp2Ettll.exit61.i.i ], [ %.062.i.i, %_ZN5faiss4CMaxItlE4cmp2Ettll.exit.thread.i.i ], [ %.062.i.i, %bb.j ]
  %.pre68.i.i = load i16, ptr %i.bf, align 2, !tbaa !159
  %.pre69.i.i = load i64, ptr %i.bh, align 8, !tbaa !72
  br label %_ZN5faiss8heap_popINS_4CMaxItlEEEEvmPNT_1TEPNS3_2TIE.exit.i

_ZN5faiss8heap_popINS_4CMaxItlEEEEvmPNT_1TEPNS3_2TIE.exit.i: ; preds = %_ZN5faiss4CMaxItlE4cmp2Ettll.exit60.thread.loopexit.i.i, %bb.h
  %i.cp = phi i64 [ %i.bi, %bb.h ], [ %.pre69.i.i, %_ZN5faiss4CMaxItlE4cmp2Ettll.exit60.thread.loopexit.i.i ]
  %i.cq = phi i16 [ %i.bg, %bb.h ], [ %.pre68.i.i, %_ZN5faiss4CMaxItlE4cmp2Ettll.exit60.thread.loopexit.i.i ]
  %.0.lcssa.i.i = phi i64 [ 1, %bb.h ], [ %.0.lcssa.ph.i.i, %_ZN5faiss4CMaxItlE4cmp2Ettll.exit60.thread.loopexit.i.i ] ; 2 uses
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %.0.lcssa.i.i
  store i16 %i.cq, ptr %i.cr, align 2, !tbaa !159
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.0.lcssa.i.i
  store i64 %i.cp, ptr %i.cs, align 8, !tbaa !72
  %i.ct = xor i64 %.041.i, -1
  %i.cu = add i64 %i.az, %i.ct                    ; 2 uses
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0102.0182, i64 %i.cu
  store i16 %i.bc, ptr %i.cv, align 2, !tbaa !159
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.cu
  store i64 %i.bd, ptr %i.cw, align 8, !tbaa !72
  %.not.i = icmp ne i64 %i.bd, -1
  %i.cx = zext i1 %.not.i to i64
  %spec.select.i = add i64 %.041.i, %i.cx         ; 2 uses
  %i.cy = add nuw i64 %.03740.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cy, %i.az
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.h, !llvm.loop !307

._crit_edge.i:                                    ; preds = %_ZN5faiss8heap_popINS_4CMaxItlEEEEvmPNT_1TEPNS3_2TIE.exit.i, %._crit_edge
  %.0.lcssa.i = phi i64 [ 0, %._crit_edge ], [ %spec.select.i, %_ZN5faiss8heap_popINS_4CMaxItlEEEEvmPNT_1TEPNS3_2TIE.exit.i ] ; 5 uses
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0102.0182, i64 %i.az
  %i.da = sub i64 0, %.0.lcssa.i                  ; 2 uses
  %i.db = getelementptr inbounds [2 x i8], ptr %i.cz, i64 %i.da
  %i.dc = shl i64 %.0.lcssa.i, 1                  ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr align 2 %.sroa.0102.0182, ptr align 2 %i.db, i64 %i.dc, i1 false)
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.az
  %i.de = getelementptr inbounds [8 x i8], ptr %i.dd, i64 %i.da
  %i.df = shl i64 %.0.lcssa.i, 3                  ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.an, ptr align 8 %i.de, i64 %i.df, i1 false)
  %i.dg = icmp ult i64 %.0.lcssa.i, %i.az
  br i1 %i.dg, label %.lr.ph44.preheader.i, label %_ZN5faiss12heap_reorderINS_4CMaxItlEEEEmmPNT_1TEPNS3_2TIE.exit

.lr.ph44.preheader.i:                             ; preds = %._crit_edge.i
  %scevgep.i = getelementptr i8, ptr %.sroa.0102.0182, i64 %i.dc
  %i.dh = sub nuw i64 %i.az, %.0.lcssa.i          ; 2 uses
  %i.di = shl i64 %i.dh, 1
  call void @llvm.memset.p0.i64(ptr align 2 %scevgep.i, i8 -1, i64 %i.di, i1 false), !tbaa !159
  %scevgep47.i = getelementptr i8, ptr %i.an, i64 %i.df
  %i.dj = shl i64 %i.dh, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep47.i, i8 -1, i64 %i.dj, i1 false), !tbaa !72
  br label %_ZN5faiss12heap_reorderINS_4CMaxItlEEEEmmPNT_1TEPNS3_2TIE.exit

_ZN5faiss12heap_reorderINS_4CMaxItlEEEEmmPNT_1TEPNS3_2TIE.exit: ; preds = %._crit_edge.i, %.lr.ph44.preheader.i
  %i.dk = load ptr, ptr %15, align 8, !tbaa !99
  %.idx = shl nsw i64 %.067121, 3
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %.idx ; 2 uses
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !136
  %i.dn = fdiv float 1.000000e+00, %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  %i.dp = load float, ptr %i.do, align 4, !tbaa !136
  %i.dq = load i32, ptr %i.u, align 4, !tbaa !156
  %i.dr = and i32 %i.dq, 16
  %.not71 = icmp eq i32 %i.dr, 0                  ; 2 uses
  %.064 = select i1 %.not71, float %i.dn, float 1.000000e+00 ; 2 uses
  %.063 = select i1 %.not71, float %i.dp, float 0.000000e+00 ; 2 uses
  %i.ds = load ptr, ptr %16, align 8, !tbaa !99
  %i.dt = load i64, ptr %3, align 8, !tbaa !72    ; 6 uses
  %i.du = mul nsw i64 %i.dt, %.067121
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.ds, i64 %i.du ; 2 uses
  %i.dw = icmp sgt i64 %i.dt, 0
  br i1 %i.dw, label %.lr.ph118.preheader, label %._crit_edge119

.lr.ph118.preheader:                              ; preds = %_ZN5faiss12heap_reorderINS_4CMaxItlEEEEmmPNT_1TEPNS3_2TIE.exit
  %min.iters.check = icmp ult i64 %i.dt, 8
  br i1 %min.iters.check, label %.lr.ph118.preheader201, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph118.preheader
  %n.vec = and i64 %i.dt, 9223372036854775800     ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.064, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert198 = insertelement <4 x float> poison, float %.063, i64 0
  %broadcast.splat199 = shufflevector <4 x float> %broadcast.splatinsert198, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0102.0182, i64 %index ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %wide.load = load <4 x i16>, ptr %i.dx, align 2, !tbaa !159
  %wide.load200 = load <4 x i16>, ptr %i.dy, align 2, !tbaa !159
  %i.dz = uitofp <4 x i16> %wide.load to <4 x float>
  %i.ea = uitofp <4 x i16> %wide.load200 to <4 x float>
  %i.eb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dz, <4 x float> %broadcast.splat, <4 x float> %broadcast.splat199)
  %i.ec = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ea, <4 x float> %broadcast.splat, <4 x float> %broadcast.splat199)
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %index ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  store <4 x float> %i.eb, ptr %i.ed, align 4, !tbaa !136
  store <4 x float> %i.ec, ptr %i.ee, align 4, !tbaa !136
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ef = icmp eq i64 %index.next, %n.vec
  br i1 %i.ef, label %middle.block, label %vector.body, !llvm.loop !308

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dt, %n.vec
  br i1 %cmp.n, label %._crit_edge119.thread, label %.lr.ph118.preheader201

.lr.ph118.preheader201:                           ; preds = %.lr.ph118.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph118.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph118

bb.l:                                             ; preds = %.lr.ph, %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit
  %i.eg = phi i64 [ %i.v, %.lr.ph ], [ %i.nj, %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit ] ; 3 uses
  %i.eh = phi i64 [ %i.w, %.lr.ph ], [ %i.nk, %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit ] ; 3 uses
  %i.ei = phi i64 [ %i.au, %.lr.ph ], [ %i.nm, %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit ] ; 2 uses
  %.065115 = phi i64 [ 0, %.lr.ph ], [ %i.nl, %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit ] ; 4 uses
  %.1114 = phi ptr [ %.066, %.lr.ph ], [ %.2, %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit ]
  %i.ej = load i8, ptr %5, align 1, !tbaa !105, !range !38, !noundef !39
  %i.ek = trunc nuw i8 %i.ej to i1
  br i1 %i.ek, label %._crit_edge132, label %bb.m

._crit_edge132:                                   ; preds = %bb.l
  %.pre = mul i64 %i.ei, %.067121
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.el = load ptr, ptr %6, align 8, !tbaa !85
  %i.em = mul i64 %i.ei, %.067121                 ; 2 uses
  %i.en = add i64 %i.em, %.065115
  %i.eo = load i64, ptr %7, align 8, !tbaa !72
  %i.ep = mul i64 %i.eo, %i.en
  %i.eq = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ep
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge132, %bb.m
  %.pre-phi = phi i64 [ %.pre, %._crit_edge132 ], [ %i.em, %bb.m ]
  %.2 = phi ptr [ %.1114, %._crit_edge132 ], [ %i.eq, %bb.m ] ; 4 uses
  %i.er = load ptr, ptr %i.o, align 8, !tbaa !103
  %i.es = getelementptr [8 x i8], ptr %i.er, i64 %.pre-phi
  %i.et = getelementptr [8 x i8], ptr %i.es, i64 %.065115
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !72 ; 6 uses
  %i.ev = icmp slt i64 %i.eu, 0
  br i1 %i.ev, label %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ew = load ptr, ptr %i.p, align 8, !tbaa !139 ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !25
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.ez = load ptr, ptr %i.ey, align 8
  %i.fa = invoke noundef i64 %i.ez(ptr noundef nonnull align 8 dereferenceable(25) %i.ew, i64 noundef %i.eu)
          to label %bb.p unwind label %.loopexit  ; 3 uses

bb.p:                                             ; preds = %bb.o
  %i.fb = icmp eq i64 %i.fa, 0
  br i1 %i.fb, label %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fc = load ptr, ptr %i.p, align 8, !tbaa !139 ; 4 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !25
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  %i.ff = load ptr, ptr %i.fe, align 8
  %i.fg = invoke noundef ptr %i.ff(ptr noundef nonnull align 8 dereferenceable(25) %i.fc, i64 noundef %i.eu)
          to label %_ZN5faiss13InvertedLists11ScopedCodesC2EPKS0_m.exit unwind label %.loopexit, !inline_history !1 ; 2 uses

_ZN5faiss13InvertedLists11ScopedCodesC2EPKS0_m.exit: ; preds = %bb.q
  %i.fh = load ptr, ptr %i.p, align 8, !tbaa !139 ; 4 uses
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !25
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 32
  %i.fk = load ptr, ptr %i.fj, align 8
  %i.fl = invoke noundef ptr %i.fk(ptr noundef nonnull align 8 dereferenceable(25) %i.fh, i64 noundef %i.eu)
          to label %bb.r unwind label %.loopexit, !inline_history !9 ; 3 uses

bb.r:                                             ; preds = %_ZN5faiss13InvertedLists11ScopedCodesC2EPKS0_m.exit
  %i.fm = load ptr, ptr %11, align 8, !tbaa !114  ; 2 uses
  %.not72 = icmp eq ptr %i.fm, null
  br i1 %.not72, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fn = load i64, ptr %8, align 8, !tbaa !72
  %i.fo = mul i64 %i.fn, %.067121
  %i.fp = getelementptr [2 x i8], ptr %i.fm, i64 %i.fo
  %i.fq = getelementptr [2 x i8], ptr %i.fp, i64 %.065115
  %i.fr = load i16, ptr %i.fq, align 2, !tbaa !159
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.fs = phi i16 [ %i.fr, %bb.s ], [ 0, %bb.r ]  ; 2 uses
  %i.ft = load i64, ptr %3, align 8, !tbaa !72    ; 7 uses
  %.val = load i32, ptr %12, align 8, !tbaa !142  ; 3 uses
  %.not.i76 = icmp eq i32 %.val, 0                ; 2 uses
  %i.fu = select i1 %.not.i76, i64 0, i64 2       ; 2 uses
  %i.fv = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %i.ft ; 3 uses
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ft ; 2 uses
  %i.fx = icmp ult i64 %i.ft, 2
  br label %bb.u

bb.u:                                             ; preds = %bb.ag, %bb.t
  %.04121.i = phi i64 [ 0, %bb.t ], [ %i.mw, %bb.ag ] ; 4 uses
  %i.fy = load i64, ptr %i.q, align 8, !tbaa !69
  %i.fz = mul i64 %i.fy, %.04121.i
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.fz ; 9 uses
  %i.gb = load i64, ptr %i.r, align 8, !tbaa !79  ; 2 uses
  %i.gc = sub i64 %i.gb, %i.fu                    ; 2 uses
  %.not25.i = icmp eq i64 %i.gb, %i.fu
  br i1 %.not25.i, label %._crit_edge.i80, label %.lr.ph.i77

.lr.ph.i77:                                       ; preds = %bb.u
  %i.gd = load i64, ptr %i.s, align 8, !tbaa !104 ; 3 uses
  %i.ge = trunc i64 %i.gd to i32                  ; 3 uses
  %notmask30.i.i = shl nsw i32 -1, %i.ge
  %i.gf = xor i32 %notmask30.i.i, -1
  %sext4.i = shl i64 %i.gd, 32
  %i.gg = ashr exact i64 %sext4.i, 32
  %i.gh = and i64 %i.gd, 4294967295
  %i.gi = load i64, ptr %i.t, align 8, !tbaa !106 ; 2 uses
  br label %bb.v

._crit_edge.loopexit.i:                           ; preds = %_ZN5faiss15BitstringReader4readEi.exit.i
  %i.gj = mul i64 %i.gi, %i.gc
  %scevgep.i79 = getelementptr i8, ptr %.2, i64 %i.gj
  br label %._crit_edge.i80

._crit_edge.i80:                                  ; preds = %._crit_edge.loopexit.i, %bb.u
  %.sroa.6.0.lcssa.i = phi i64 [ 0, %bb.u ], [ %.sroa.6.1.i, %._crit_edge.loopexit.i ] ; 3 uses
  %.044.lcssa.i = phi i16 [ %i.fs, %bb.u ], [ %i.ig, %._crit_edge.loopexit.i ] ; 2 uses
  %.043.lcssa.i = phi ptr [ %.2, %bb.u ], [ %scevgep.i79, %._crit_edge.loopexit.i ] ; 2 uses
  br i1 %.not.i76, label %.loopexit.i, label %.lr.ph19.i

.lr.ph19.i:                                       ; preds = %._crit_edge.i80
  %i.gk = load i64, ptr %i.s, align 8, !tbaa !104 ; 3 uses
  %i.gl = trunc i64 %i.gk to i32                  ; 5 uses
  %notmask30.i47.i = shl nsw i32 -1, %i.gl
  %i.gm = xor i32 %notmask30.i47.i, -1            ; 2 uses
  %sext.i = shl i64 %i.gk, 32
  %i.gn = ashr exact i64 %sext.i, 32
  %i.go = and i64 %i.gk, 4294967295
  %i.gp = load i64, ptr %i.t, align 8, !tbaa !106
  %i.gq = trunc i64 %.sroa.6.0.lcssa.i to i32
  %i.gr = and i32 %i.gq, 7                        ; 2 uses
  %i.gs = sub nuw nsw i32 8, %i.gr                ; 4 uses
  %i.gt = lshr i64 %.sroa.6.0.lcssa.i, 3          ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.gt
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !32
  %i.gw = zext i8 %i.gv to i32
  %i.gx = lshr i32 %i.gw, %i.gr                   ; 2 uses
  %.not.i46.i = icmp slt i32 %i.gs, %i.gl
  br i1 %.not.i46.i, label %bb.z, label %bb.y

bb.v:                                             ; preds = %_ZN5faiss15BitstringReader4readEi.exit.i, %.lr.ph.i77
  %.04212.i = phi i64 [ 0, %.lr.ph.i77 ], [ %i.ii, %_ZN5faiss15BitstringReader4readEi.exit.i ]
  %.04311.i = phi ptr [ %.2, %.lr.ph.i77 ], [ %i.ih, %_ZN5faiss15BitstringReader4readEi.exit.i ] ; 2 uses
  %.04410.i = phi i16 [ %i.fs, %.lr.ph.i77 ], [ %i.ig, %_ZN5faiss15BitstringReader4readEi.exit.i ]
  %.sroa.6.09.i = phi i64 [ 0, %.lr.ph.i77 ], [ %.sroa.6.1.i, %_ZN5faiss15BitstringReader4readEi.exit.i ] ; 3 uses
  %i.gy = trunc i64 %.sroa.6.09.i to i32
  %i.gz = and i32 %i.gy, 7                        ; 2 uses
  %i.ha = sub nuw nsw i32 8, %i.gz                ; 4 uses
  %i.hb = lshr i64 %.sroa.6.09.i, 3               ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.hb
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !32
  %i.he = zext i8 %i.hd to i32
  %i.hf = lshr i32 %i.he, %i.gz                   ; 2 uses
  %.not.i.i = icmp slt i32 %i.ha, %i.ge
  br i1 %.not.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.hg = and i32 %i.hf, %i.gf
  %i.hh = zext nneg i32 %i.hg to i64
  br label %_ZN5faiss15BitstringReader4readEi.exit.i

bb.x:                                             ; preds = %bb.v
  %i.hi = zext nneg i32 %i.hf to i64              ; 2 uses
  %i.hj = sub nuw nsw i32 %i.ge, %i.ha            ; 3 uses
  %.02431.i.i = add nuw nsw i64 %i.hb, 1          ; 2 uses
  %i.hk = icmp samesign ugt i32 %i.hj, 8
  br i1 %i.hk, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.x
  %i.hl = zext nneg i32 %i.ha to i64
  br label %.lr.ph.i.i95

.lr.ph.i.i95:                                     ; preds = %.lr.ph.i.i95, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.hl, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %.lr.ph.i.i95 ] ; 2 uses
  %.02435.i.i = phi i64 [ %.02431.i.i, %.lr.ph.preheader.i.i ], [ %.024.i.i, %.lr.ph.i.i95 ] ; 2 uses
  %.02633.i.i = phi i64 [ %i.hi, %.lr.ph.preheader.i.i ], [ %i.hq, %.lr.ph.i.i95 ]
  %.02732.i.i = phi i32 [ %i.hj, %.lr.ph.preheader.i.i ], [ %i.hr, %.lr.ph.i.i95 ] ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.ga, i64 %.02435.i.i
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !32
  %i.ho = zext i8 %i.hn to i64
  %i.hp = shl i64 %i.ho, %indvars.iv.i.i
  %i.hq = or i64 %i.hp, %.02633.i.i               ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 8 ; 2 uses
  %i.hr = add nsw i32 %.02732.i.i, -8             ; 2 uses
  %.024.i.i = add nuw nsw i64 %.02435.i.i, 1      ; 2 uses
  %i.hs = icmp samesign ugt i32 %.02732.i.i, 16
  br i1 %i.hs, label %.lr.ph.i.i95, label %._crit_edge.loopexit.i.i, !llvm.loop !12

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i95
  %i.ht = trunc nuw i64 %indvars.iv.next.i.i to i32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.x
  %.027.lcssa.i.i = phi i32 [ %i.hj, %bb.x ], [ %i.hr, %._crit_edge.loopexit.i.i ]
  %.026.lcssa.i.i = phi i64 [ %i.hi, %bb.x ], [ %i.hq, %._crit_edge.loopexit.i.i ]
  %.025.lcssa.i.i = phi i32 [ %i.ha, %bb.x ], [ %i.ht, %._crit_edge.loopexit.i.i ]
  %.024.lcssa.i.i = phi i64 [ %.02431.i.i, %bb.x ], [ %.024.i.i, %._crit_edge.loopexit.i.i ]
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ga, i64 %.024.lcssa.i.i
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !32
  %notmask.i.i = shl nsw i32 -1, %.027.lcssa.i.i
  %i.hw = xor i32 %notmask.i.i, -1
  %i.hx = zext i8 %i.hv to i32
  %i.hy = and i32 %i.hx, %i.hw
  %i.hz = zext nneg i32 %i.hy to i64
  %i.ia = zext nneg i32 %.025.lcssa.i.i to i64
  %i.ib = shl i64 %i.hz, %i.ia
  %i.ic = or i64 %i.ib, %.026.lcssa.i.i
  br label %_ZN5faiss15BitstringReader4readEi.exit.i

_ZN5faiss15BitstringReader4readEi.exit.i:         ; preds = %._crit_edge.i.i, %bb.w
  %.pn5.i = phi i64 [ %i.gh, %._crit_edge.i.i ], [ %i.gg, %bb.w ]
  %.0.i.i = phi i64 [ %i.ic, %._crit_edge.i.i ], [ %i.hh, %bb.w ]
  %.sroa.6.1.i = add i64 %.pn5.i, %.sroa.6.09.i   ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.04311.i, i64 %.0.i.i
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !32
  %i.if = zext i8 %i.ie to i16
  %i.ig = add i16 %.04410.i, %i.if                ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.04311.i, i64 %i.gi
  %i.ii = add nuw i64 %.04212.i, 1                ; 2 uses
  %exitcond.not.i78 = icmp eq i64 %i.ii, %i.gc
  br i1 %exitcond.not.i78, label %._crit_edge.loopexit.i, label %bb.v, !llvm.loop !309

bb.y:                                             ; preds = %.lr.ph19.i
  %i.ij = and i32 %i.gx, %i.gm
  %i.ik = zext nneg i32 %i.ij to i64
  br label %_ZN5faiss15BitstringReader4readEi.exit65.i

bb.z:                                             ; preds = %.lr.ph19.i
  %i.il = zext nneg i32 %i.gx to i64              ; 2 uses
  %i.im = sub nuw nsw i32 %i.gl, %i.gs            ; 3 uses
  %.02431.i49.i = add nuw nsw i64 %i.gt, 1        ; 2 uses
  %i.in = icmp samesign ugt i32 %i.im, 8
  br i1 %i.in, label %.lr.ph.preheader.i56.i, label %._crit_edge.i50.i

.lr.ph.preheader.i56.i:                           ; preds = %bb.z
  %i.io = zext nneg i32 %i.gs to i64
  br label %.lr.ph.i57.i

.lr.ph.i57.i:                                     ; preds = %.lr.ph.i57.i, %.lr.ph.preheader.i56.i
  %indvars.iv.i58.i = phi i64 [ %i.io, %.lr.ph.preheader.i56.i ], [ %indvars.iv.next.i62.i, %.lr.ph.i57.i ] ; 2 uses
  %.02435.i59.i = phi i64 [ %.02431.i49.i, %.lr.ph.preheader.i56.i ], [ %.024.i63.i, %.lr.ph.i57.i ] ; 2 uses
  %.02633.i60.i = phi i64 [ %i.il, %.lr.ph.preheader.i56.i ], [ %i.it, %.lr.ph.i57.i ]
  %.02732.i61.i = phi i32 [ %i.im, %.lr.ph.preheader.i56.i ], [ %i.iu, %.lr.ph.i57.i ] ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ga, i64 %.02435.i59.i
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !32
  %i.ir = zext i8 %i.iq to i64
  %i.is = shl i64 %i.ir, %indvars.iv.i58.i
  %i.it = or i64 %i.is, %.02633.i60.i             ; 2 uses
  %indvars.iv.next.i62.i = add nuw nsw i64 %indvars.iv.i58.i, 8 ; 2 uses
  %i.iu = add nsw i32 %.02732.i61.i, -8           ; 2 uses
  %.024.i63.i = add nuw nsw i64 %.02435.i59.i, 1  ; 2 uses
  %i.iv = icmp samesign ugt i32 %.02732.i61.i, 16
  br i1 %i.iv, label %.lr.ph.i57.i, label %._crit_edge.loopexit.i64.i, !llvm.loop !12

._crit_edge.loopexit.i64.i:                       ; preds = %.lr.ph.i57.i
  %i.iw = trunc nuw i64 %indvars.iv.next.i62.i to i32
  br label %._crit_edge.i50.i

._crit_edge.i50.i:                                ; preds = %._crit_edge.loopexit.i64.i, %bb.z
  %.027.lcssa.i51.i = phi i32 [ %i.im, %bb.z ], [ %i.iu, %._crit_edge.loopexit.i64.i ]
  %.026.lcssa.i52.i = phi i64 [ %i.il, %bb.z ], [ %i.it, %._crit_edge.loopexit.i64.i ]
  %.025.lcssa.i53.i = phi i32 [ %i.gs, %bb.z ], [ %i.iw, %._crit_edge.loopexit.i64.i ]
  %.024.lcssa.i54.i = phi i64 [ %.02431.i49.i, %bb.z ], [ %.024.i63.i, %._crit_edge.loopexit.i64.i ]
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ga, i64 %.024.lcssa.i54.i
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !32
  %notmask.i55.i = shl nsw i32 -1, %.027.lcssa.i51.i
  %i.iz = xor i32 %notmask.i55.i, -1
  %i.ja = zext i8 %i.iy to i32
  %i.jb = and i32 %i.ja, %i.iz
  %i.jc = zext nneg i32 %i.jb to i64
  %i.jd = zext nneg i32 %.025.lcssa.i53.i to i64
  %i.je = shl i64 %i.jc, %i.jd
  %i.jf = or i64 %i.je, %.026.lcssa.i52.i
  br label %_ZN5faiss15BitstringReader4readEi.exit65.i

_ZN5faiss15BitstringReader4readEi.exit65.i:       ; preds = %._crit_edge.i50.i, %bb.y
  %.pn.i = phi i64 [ %i.go, %._crit_edge.i50.i ], [ %i.gn, %bb.y ]
  %.0.i48.i = phi i64 [ %i.jf, %._crit_edge.i50.i ], [ %i.ik, %bb.y ]
  %i.jg = getelementptr inbounds nuw i8, ptr %.043.lcssa.i, i64 %.0.i48.i
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !32
  %17 = zext i8 %i.jh to i32
  %18 = mul nsw i32 %.val, %17
  %19 = trunc i32 %18 to i16
  %i.ji = add i16 %.044.lcssa.i, %19
  %i.jj = getelementptr inbounds nuw i8, ptr %.043.lcssa.i, i64 %i.gp
  %.sroa.6.3.i = add i64 %.pn.i, %.sroa.6.0.lcssa.i ; 2 uses
  %i.jk = trunc i64 %.sroa.6.3.i to i32
  %i.jl = and i32 %i.jk, 7                        ; 2 uses
  %i.jm = sub nuw nsw i32 8, %i.jl                ; 4 uses
  %i.jn = lshr i64 %.sroa.6.3.i, 3                ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.jn
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !32
  %i.jq = zext i8 %i.jp to i32
  %i.jr = lshr i32 %i.jq, %i.jl                   ; 2 uses
  %.not.i46.i.1 = icmp slt i32 %i.jm, %i.gl
  br i1 %.not.i46.i.1, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZN5faiss15BitstringReader4readEi.exit65.i
  %i.js = and i32 %i.jr, %i.gm
  %i.jt = zext nneg i32 %i.js to i64
  br label %_ZN5faiss15BitstringReader4readEi.exit65.i.1

bb.ab:                                            ; preds = %_ZN5faiss15BitstringReader4readEi.exit65.i
  %i.ju = zext nneg i32 %i.jr to i64              ; 2 uses
  %i.jv = sub nuw nsw i32 %i.gl, %i.jm            ; 3 uses
  %.02431.i49.i.1 = add nuw nsw i64 %i.jn, 1      ; 2 uses
  %i.jw = icmp samesign ugt i32 %i.jv, 8
  br i1 %i.jw, label %.lr.ph.preheader.i56.i.1, label %._crit_edge.i50.i.1

.lr.ph.preheader.i56.i.1:                         ; preds = %bb.ab
  %i.jx = zext nneg i32 %i.jm to i64
  br label %.lr.ph.i57.i.1

.lr.ph.i57.i.1:                                   ; preds = %.lr.ph.i57.i.1, %.lr.ph.preheader.i56.i.1
  %indvars.iv.i58.i.1 = phi i64 [ %i.jx, %.lr.ph.preheader.i56.i.1 ], [ %indvars.iv.next.i62.i.1, %.lr.ph.i57.i.1 ] ; 2 uses
  %.02435.i59.i.1 = phi i64 [ %.02431.i49.i.1, %.lr.ph.preheader.i56.i.1 ], [ %.024.i63.i.1, %.lr.ph.i57.i.1 ] ; 2 uses
  %.02633.i60.i.1 = phi i64 [ %i.ju, %.lr.ph.preheader.i56.i.1 ], [ %i.kc, %.lr.ph.i57.i.1 ]
  %.02732.i61.i.1 = phi i32 [ %i.jv, %.lr.ph.preheader.i56.i.1 ], [ %i.kd, %.lr.ph.i57.i.1 ] ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.ga, i64 %.02435.i59.i.1
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !32
  %i.ka = zext i8 %i.jz to i64
  %i.kb = shl i64 %i.ka, %indvars.iv.i58.i.1
  %i.kc = or i64 %i.kb, %.02633.i60.i.1           ; 2 uses
  %indvars.iv.next.i62.i.1 = add nuw nsw i64 %indvars.iv.i58.i.1, 8 ; 2 uses
  %i.kd = add nsw i32 %.02732.i61.i.1, -8         ; 2 uses
  %.024.i63.i.1 = add nuw nsw i64 %.02435.i59.i.1, 1 ; 2 uses
  %i.ke = icmp samesign ugt i32 %.02732.i61.i.1, 16
  br i1 %i.ke, label %.lr.ph.i57.i.1, label %._crit_edge.loopexit.i64.i.1, !llvm.loop !12

._crit_edge.loopexit.i64.i.1:                     ; preds = %.lr.ph.i57.i.1
  %i.kf = trunc nuw i64 %indvars.iv.next.i62.i.1 to i32
  br label %._crit_edge.i50.i.1

._crit_edge.i50.i.1:                              ; preds = %._crit_edge.loopexit.i64.i.1, %bb.ab
  %.027.lcssa.i51.i.1 = phi i32 [ %i.jv, %bb.ab ], [ %i.kd, %._crit_edge.loopexit.i64.i.1 ]
  %.026.lcssa.i52.i.1 = phi i64 [ %i.ju, %bb.ab ], [ %i.kc, %._crit_edge.loopexit.i64.i.1 ]
  %.025.lcssa.i53.i.1 = phi i32 [ %i.jm, %bb.ab ], [ %i.kf, %._crit_edge.loopexit.i64.i.1 ]
  %.024.lcssa.i54.i.1 = phi i64 [ %.02431.i49.i.1, %bb.ab ], [ %.024.i63.i.1, %._crit_edge.loopexit.i64.i.1 ]
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ga, i64 %.024.lcssa.i54.i.1
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !32
  %notmask.i55.i.1 = shl nsw i32 -1, %.027.lcssa.i51.i.1
  %i.ki = xor i32 %notmask.i55.i.1, -1
  %i.kj = zext i8 %i.kh to i32
  %i.kk = and i32 %i.kj, %i.ki
  %i.kl = zext nneg i32 %i.kk to i64
  %i.km = zext nneg i32 %.025.lcssa.i53.i.1 to i64
  %i.kn = shl i64 %i.kl, %i.km
  %i.ko = or i64 %i.kn, %.026.lcssa.i52.i.1
  br label %_ZN5faiss15BitstringReader4readEi.exit65.i.1

_ZN5faiss15BitstringReader4readEi.exit65.i.1:     ; preds = %._crit_edge.i50.i.1, %bb.aa
  %.0.i48.i.1 = phi i64 [ %i.ko, %._crit_edge.i50.i.1 ], [ %i.jt, %bb.aa ]
  %i.kp = getelementptr inbounds nuw i8, ptr %i.jj, i64 %.0.i48.i.1
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !32
  %20 = zext i8 %i.kq to i32
  %21 = mul nsw i32 %.val, %20
  %22 = trunc i32 %21 to i16
  %i.kr = add i16 %i.ji, %22
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %_ZN5faiss15BitstringReader4readEi.exit65.i.1, %._crit_edge.i80
  %.2.i = phi i16 [ %.044.lcssa.i, %._crit_edge.i80 ], [ %i.kr, %_ZN5faiss15BitstringReader4readEi.exit65.i.1 ] ; 4 uses
  %i.ks = load i16, ptr %.sroa.0102.0182, align 2, !tbaa !159
  %i.kt = icmp ugt i16 %i.ks, %.2.i
  br i1 %i.kt, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %.loopexit.i
  %i.ku = load i16, ptr %i.fv, align 2, !tbaa !159 ; 5 uses
  %i.kv = load i64, ptr %i.fw, align 8, !tbaa !72 ; 3 uses
  br i1 %i.fx, label %_ZN5faiss8heap_popINS_4CMaxItlEEEEvmPNT_1TEPNS3_2TIE.exit.thread.i, label %.lr.ph.i66.i

_ZN5faiss8heap_popINS_4CMaxItlEEEEvmPNT_1TEPNS3_2TIE.exit.thread.i: ; preds = %bb.ac
  store i16 %i.ku, ptr %.sroa.0102.0182, align 2, !tbaa !159
  store i64 %i.kv, ptr %i.an, align 8, !tbaa !72
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %.04121.i
  %i.kx = load i64, ptr %i.kw, align 8, !tbaa !72
  br label %_ZN5faiss9heap_pushINS_4CMaxItlEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i

.lr.ph.i66.i:                                     ; preds = %bb.ac, %bb.af
  %i.ky = phi i64 [ %i.mb, %bb.af ], [ 3, %bb.ac ]
  %i.kz = phi i64 [ %i.ma, %bb.af ], [ 2, %bb.ac ] ; 7 uses
  %.062.i.i81 = phi i64 [ %.1.i.i86, %bb.af ], [ 1, %bb.ac ] ; 6 uses
  %i.la = icmp eq i64 %i.kz, %i.ft
  br i1 %i.la, label %.lr.ph._ZN5faiss4CMaxItlE4cmp2Ettll.exit.thread_crit_edge.i.i93, label %bb.ad

.lr.ph._ZN5faiss4CMaxItlE4cmp2Ettll.exit.thread_crit_edge.i.i93: ; preds = %.lr.ph.i66.i
  %.pre.i.i94 = load i16, ptr %i.fv, align 2, !tbaa !159
  br label %_ZN5faiss4CMaxItlE4cmp2Ettll.exit.thread.i.i91

bb.ad:                                            ; preds = %.lr.ph.i66.i
  %i.lb = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %i.kz
  %i.lc = load i16, ptr %i.lb, align 2, !tbaa !159 ; 4 uses
  %i.ld = getelementptr [2 x i8], ptr %.sroa.0102.0182, i64 %i.kz
  %i.le = load i16, ptr %i.ld, align 2, !tbaa !159 ; 5 uses
  %i.lf = getelementptr [8 x i8], ptr %i.an, i64 %i.kz
  %i.lg = load i64, ptr %i.lf, align 8, !tbaa !72 ; 3 uses
  %i.lh = icmp ugt i16 %i.lc, %i.le
  br i1 %i.lh, label %_ZN5faiss4CMaxItlE4cmp2Ettll.exit.thread.i.i91, label %_ZN5faiss4CMaxItlE4cmp2Ettll.exit.i.i82

_ZN5faiss4CMaxItlE4cmp2Ettll.exit.i.i82:          ; preds = %bb.ad
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.kz
  %i.lj = load i64, ptr %i.li, align 8, !tbaa !72
  %i.lk = icmp eq i16 %i.lc, %i.le
  %i.ll = icmp sgt i64 %i.lj, %i.lg
  %i.lm = and i1 %i.lk, %i.ll
  br i1 %i.lm, label %_ZN5faiss4CMaxItlE4cmp2Ettll.exit.thread.i.i91, label %bb.ae

_ZN5faiss4CMaxItlE4cmp2Ettll.exit.thread.i.i91:   ; preds = %_ZN5faiss4CMaxItlE4cmp2Ettll.exit.i.i82, %bb.ad, %.lr.ph._ZN5faiss4CMaxItlE4cmp2Ettll.exit.thread_crit_edge.i.i93
  %i.ln = phi i16 [ %.pre.i.i94, %.lr.ph._ZN5faiss4CMaxItlE4cmp2Ettll.exit.thread_crit_edge.i.i93 ], [ %i.lc, %bb.ad ], [ %i.lc, %_ZN5faiss4CMaxItlE4cmp2Ettll.exit.i.i82 ] ; 3 uses
  %i.lo = icmp ugt i16 %i.ku, %i.ln
  br i1 %i.lo, label %_ZN5faiss8heap_popINS_4CMaxItlEEEEvmPNT_1TEPNS3_2TIE.exit.i87, label %_ZN5faiss4CMaxItlE4cmp2Ettll.exit60.i.i92

_ZN5faiss4CMaxItlE4cmp2Ettll.exit60.i.i92:        ; preds = %_ZN5faiss4CMaxItlE4cmp2Ettll.exit.thread.i.i91
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.kz
  %i.lq = load i64, ptr %i.lp, align 8, !tbaa !72 ; 2 uses
  %i.lr = icmp eq i16 %i.ku, %i.ln
  %i.ls = icmp sgt i64 %i.kv, %i.lq
  %i.lt = and i1 %i.lr, %i.ls
  br i1 %i.lt, label %_ZN5faiss8heap_popINS_4CMaxItlEEEEvmPNT_1TEPNS3_2TIE.exit.i87, label %bb.af

bb.ae:                                            ; preds = %_ZN5faiss4CMaxItlE4cmp2Ettll.exit.i.i82
  %i.lu = icmp ugt i16 %i.ku, %i.le
  br i1 %i.lu, label %_ZN5faiss8heap_popINS_4CMaxItlEEEEvmPNT_1TEPNS3_2TIE.exit.i87, label %_ZN5faiss4CMaxItlE4cmp2Ettll.exit61.i.i83

_ZN5faiss4CMaxItlE4cmp2Ettll.exit61.i.i83:        ; preds = %bb.ae
  %i.lv = icmp eq i16 %i.ku, %i.le
  %i.lw = icmp sgt i64 %i.kv, %i.lg
  %i.lx = and i1 %i.lv, %i.lw
  br i1 %i.lx, label %_ZN5faiss8heap_popINS_4CMaxItlEEEEvmPNT_1TEPNS3_2TIE.exit.i87, label %bb.af

bb.af:                                            ; preds = %_ZN5faiss4CMaxItlE4cmp2Ettll.exit61.i.i83, %_ZN5faiss4CMaxItlE4cmp2Ettll.exit60.i.i92
  %.sink79.i.i84 = phi i16 [ %i.ln, %_ZN5faiss4CMaxItlE4cmp2Ettll.exit60.i.i92 ], [ %i.le, %_ZN5faiss4CMaxItlE4cmp2Ettll.exit61.i.i83 ]
  %.sink.i.i85 = phi i64 [ %i.lq, %_ZN5faiss4CMaxItlE4cmp2Ettll.exit60.i.i92 ], [ %i.lg, %_ZN5faiss4CMaxItlE4cmp2Ettll.exit61.i.i83 ]
  %.1.i.i86 = phi i64 [ %i.kz, %_ZN5faiss4CMaxItlE4cmp2Ettll.exit60.i.i92 ], [ %i.ky, %_ZN5faiss4CMaxItlE4cmp2Ettll.exit61.i.i83 ] ; 3 uses
  %i.ly = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %.062.i.i81
  store i16 %.sink79.i.i84, ptr %i.ly, align 2, !tbaa !159
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.062.i.i81
  store i64 %.sink.i.i85, ptr %i.lz, align 8, !tbaa !72
  %i.ma = shl i64 %.1.i.i86, 1                    ; 3 uses
  %i.mb = or disjoint i64 %i.ma, 1
  %i.mc = icmp ugt i64 %i.ma, %i.ft
  br i1 %i.mc, label %_ZN5faiss8heap_popINS_4CMaxItlEEEEvmPNT_1TEPNS3_2TIE.exit.i87, label %.lr.ph.i66.i, !llvm.loop !306

_ZN5faiss8heap_popINS_4CMaxItlEEEEvmPNT_1TEPNS3_2TIE.exit.i87: ; preds = %bb.af, %_ZN5faiss4CMaxItlE4cmp2Ettll.exit61.i.i83, %bb.ae, %_ZN5faiss4CMaxItlE4cmp2Ettll.exit60.i.i92, %_ZN5faiss4CMaxItlE4cmp2Ettll.exit.thread.i.i91
  %.0.lcssa.ph.i.i88 = phi i64 [ %.1.i.i86, %bb.af ], [ %.062.i.i81, %_ZN5faiss4CMaxItlE4cmp2Ettll.exit60.i.i92 ], [ %.062.i.i81, %_ZN5faiss4CMaxItlE4cmp2Ettll.exit61.i.i83 ], [ %.062.i.i81, %_ZN5faiss4CMaxItlE4cmp2Ettll.exit.thread.i.i91 ], [ %.062.i.i81, %bb.ae ] ; 2 uses
  %.pre68.i.i89 = load i16, ptr %i.fv, align 2, !tbaa !159
  %.pre69.i.i90 = load i64, ptr %i.fw, align 8, !tbaa !72
  %i.md = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %.0.lcssa.ph.i.i88
  store i16 %.pre68.i.i89, ptr %i.md, align 2, !tbaa !159
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.0.lcssa.ph.i.i88
  store i64 %.pre69.i.i90, ptr %i.me, align 8, !tbaa !72
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %.04121.i
  %i.mg = load i64, ptr %i.mf, align 8, !tbaa !72 ; 3 uses
  br label %.lr.ph.i68.i

.lr.ph.i68.i:                                     ; preds = %_ZN5faiss4CMaxItlE4cmp2Ettll.exit.thread.i70.i, %_ZN5faiss8heap_popINS_4CMaxItlEEEEvmPNT_1TEPNS3_2TIE.exit.i87
  %.025.i.i = phi i64 [ %i.mh, %_ZN5faiss4CMaxItlE4cmp2Ettll.exit.thread.i70.i ], [ %i.ft, %_ZN5faiss8heap_popINS_4CMaxItlEEEEvmPNT_1TEPNS3_2TIE.exit.i87 ] ; 5 uses
  %i.mh = lshr i64 %.025.i.i, 1                   ; 4 uses
  %i.mi = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %i.mh
  %i.mj = load i16, ptr %i.mi, align 2, !tbaa !159 ; 3 uses
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.mh
  %i.ml = load i64, ptr %i.mk, align 8, !tbaa !72 ; 2 uses
  %i.mm = icmp ugt i16 %.2.i, %i.mj
  br i1 %i.mm, label %_ZN5faiss4CMaxItlE4cmp2Ettll.exit.thread.i70.i, label %_ZN5faiss4CMaxItlE4cmp2Ettll.exit.i69.i

_ZN5faiss4CMaxItlE4cmp2Ettll.exit.i69.i:          ; preds = %.lr.ph.i68.i
  %i.mn = icmp eq i16 %.2.i, %i.mj
  %i.mo = icmp sgt i64 %i.mg, %i.ml
  %i.mp = and i1 %i.mn, %i.mo
  br i1 %i.mp, label %_ZN5faiss4CMaxItlE4cmp2Ettll.exit.thread.i70.i, label %_ZN5faiss9heap_pushINS_4CMaxItlEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i

_ZN5faiss4CMaxItlE4cmp2Ettll.exit.thread.i70.i:   ; preds = %_ZN5faiss4CMaxItlE4cmp2Ettll.exit.i69.i, %.lr.ph.i68.i
  %i.mq = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %.025.i.i
  store i16 %i.mj, ptr %i.mq, align 2, !tbaa !159
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.025.i.i
  store i64 %i.ml, ptr %i.mr, align 8, !tbaa !72
  %i.ms = icmp ugt i64 %.025.i.i, 3
  br i1 %i.ms, label %.lr.ph.i68.i, label %_ZN5faiss9heap_pushINS_4CMaxItlEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i, !llvm.loop !310

_ZN5faiss9heap_pushINS_4CMaxItlEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i: ; preds = %_ZN5faiss4CMaxItlE4cmp2Ettll.exit.thread.i70.i, %_ZN5faiss4CMaxItlE4cmp2Ettll.exit.i69.i, %_ZN5faiss8heap_popINS_4CMaxItlEEEEvmPNT_1TEPNS3_2TIE.exit.thread.i
  %i.mt = phi i64 [ %i.kx, %_ZN5faiss8heap_popINS_4CMaxItlEEEEvmPNT_1TEPNS3_2TIE.exit.thread.i ], [ %i.mg, %_ZN5faiss4CMaxItlE4cmp2Ettll.exit.i69.i ], [ %i.mg, %_ZN5faiss4CMaxItlE4cmp2Ettll.exit.thread.i70.i ]
  %.0.lcssa.i67.i = phi i64 [ %i.ft, %_ZN5faiss8heap_popINS_4CMaxItlEEEEvmPNT_1TEPNS3_2TIE.exit.thread.i ], [ %i.mh, %_ZN5faiss4CMaxItlE4cmp2Ettll.exit.thread.i70.i ], [ %.025.i.i, %_ZN5faiss4CMaxItlE4cmp2Ettll.exit.i69.i ] ; 2 uses
  %i.mu = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %.0.lcssa.i67.i
  store i16 %.2.i, ptr %i.mu, align 2, !tbaa !159
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.0.lcssa.i67.i
  store i64 %i.mt, ptr %i.mv, align 8, !tbaa !72
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN5faiss9heap_pushINS_4CMaxItlEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i, %.loopexit.i
  %i.mw = add nuw i64 %.04121.i, 1                ; 2 uses
  %exitcond33.not.i = icmp eq i64 %i.mw, %i.fa
  br i1 %exitcond33.not.i, label %_ZN5faiss12_GLOBAL__N_130estimators_from_tables_genericINS_4CMaxItlEEhEEvRKNS_16IndexIVFFastScanEPKhmPKT0_PKlfmPNT_1TEPlRKNS_30FastScanDistancePostProcessingE.exit, label %bb.u, !llvm.loop !311

_ZN5faiss12_GLOBAL__N_130estimators_from_tables_genericINS_4CMaxItlEEhEEvRKNS_16IndexIVFFastScanEPKhmPKT0_PKlfmPNT_1TEPlRKNS_30FastScanDistancePostProcessingE.exit: ; preds = %bb.ag
  %i.mx = add i64 %i.eh, 1                        ; 2 uses
  store i64 %i.mx, ptr %i.f, align 8, !tbaa !72
  %i.my = add i64 %i.eg, %i.fa                    ; 2 uses
  store i64 %i.my, ptr %i.e, align 8, !tbaa !72
  %i.mz = load ptr, ptr %i.fh, align 8, !tbaa !25
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 48
  %i.nb = load ptr, ptr %i.na, align 8
  invoke void %i.nb(ptr noundef nonnull align 8 dereferenceable(25) %i.fh, i64 noundef %i.eu, ptr noundef %i.fl)
          to label %_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit unwind label %bb.ah

bb.ah:                                            ; preds = %_ZN5faiss12_GLOBAL__N_130estimators_from_tables_genericINS_4CMaxItlEEhEEvRKNS_16IndexIVFFastScanEPKhmPKT0_PKlfmPNT_1TEPlRKNS_30FastScanDistancePostProcessingE.exit
  %i.nc = landingpad { ptr, i32 }
          catch ptr null
  %i.nd = extractvalue { ptr, i32 } %i.nc, 0
  call void @__clang_call_terminate(ptr %i.nd) #37
  unreachable

_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit:      ; preds = %_ZN5faiss12_GLOBAL__N_130estimators_from_tables_genericINS_4CMaxItlEEhEEvRKNS_16IndexIVFFastScanEPKhmPKT0_PKlfmPNT_1TEPlRKNS_30FastScanDistancePostProcessingE.exit
  %i.ne = load ptr, ptr %i.fc, align 8, !tbaa !25
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 40
  %i.ng = load ptr, ptr %i.nf, align 8
  invoke void %i.ng(ptr noundef nonnull align 8 dereferenceable(25) %i.fc, i64 noundef %i.eu, ptr noundef %i.fg)
          to label %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit unwind label %bb.ai

bb.ai:                                            ; preds = %_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit
  %i.nh = landingpad { ptr, i32 }
          catch ptr null
  %i.ni = extractvalue { ptr, i32 } %i.nh, 0
  call void @__clang_call_terminate(ptr %i.ni) #37
  unreachable

_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit:   ; preds = %_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit, %bb.p, %bb.n
  %i.nj = phi i64 [ %i.my, %_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit ], [ %i.eg, %bb.p ], [ %i.eg, %bb.n ] ; 2 uses
  %i.nk = phi i64 [ %i.mx, %_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit ], [ %i.eh, %bb.p ], [ %i.eh, %bb.n ] ; 2 uses
  %i.nl = add nuw i64 %.065115, 1                 ; 2 uses
  %i.nm = load i64, ptr %8, align 8, !tbaa !72    ; 2 uses
  %i.nn = icmp ult i64 %i.nl, %i.nm
  br i1 %i.nn, label %bb.l, label %._crit_edge, !llvm.loop !312

._crit_edge119:                                   ; preds = %_ZN5faiss12heap_reorderINS_4CMaxItlEEEEmmPNT_1TEPNS3_2TIE.exit
  %.not.i.i.i = icmp eq ptr %.sroa.0102.0182, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorItSaItEED2Ev.exit, label %._crit_edge119.thread

._crit_edge119.thread:                            ; preds = %.lr.ph118, %middle.block, %._crit_edge119
  %i.no = ptrtoint ptr %.sroa.8.0181 to i64
  %i.np = ptrtoint ptr %.sroa.0102.0182 to i64
  %i.nq = sub i64 %i.no, %i.np
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0102.0182, i64 noundef %i.nq) #39
  br label %_ZNSt6vectorItSaItEED2Ev.exit

_ZNSt6vectorItSaItEED2Ev.exit:                    ; preds = %._crit_edge119, %._crit_edge119.thread
  %i.nr = add nsw i64 %.067121, 1
  %i.ns = load i64, ptr %i.b, align 8, !tbaa !72
  %.not.not = icmp slt i64 %.067121, %i.ns
  br i1 %.not.not, label %bb.c, label %._crit_edge124

.lr.ph118:                                        ; preds = %.lr.ph118.preheader201, %.lr.ph118
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph118 ], [ %indvars.iv.ph, %.lr.ph118.preheader201 ] ; 3 uses
  %i.nt = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0102.0182, i64 %indvars.iv
  %i.nu = load i16, ptr %i.nt, align 2, !tbaa !159
  %i.nv = uitofp i16 %i.nu to float
  %i.nw = call float @llvm.fmuladd.f32(float %i.nv, float %.064, float %.063)
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv
  store float %i.nw, ptr %i.nx, align 4, !tbaa !136
end_hunk_0
begin_hunk_1_@_ZNK5faiss16IndexIVFFastScan15search_implem_2INS_4CMinItlEEEEvlPKflPfPlRKNS0_15CoarseQuantizedERKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFE.omp_outlined:bb.a
  store i64 %i.bj, ptr %i.dc, align 8, !tbaa !72
  %.not.i = icmp ne i64 %i.bj, -1
  %i.dd = zext i1 %.not.i to i64
  %spec.select.i = add i64 %.041.i, %i.dd         ; 2 uses
  %i.de = add nuw i64 %.03740.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.de, %i.bf
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.h, !llvm.loop !317

._crit_edge.i:                                    ; preds = %_ZN5faiss8heap_popINS_4CMinItlEEEEvmPNT_1TEPNS3_2TIE.exit.i, %._crit_edge
  %.0.lcssa.i = phi i64 [ 0, %._crit_edge ], [ %spec.select.i, %_ZN5faiss8heap_popINS_4CMinItlEEEEvmPNT_1TEPNS3_2TIE.exit.i ] ; 8 uses
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0101.0181, i64 %i.bf
  %i.dg = sub i64 0, %.0.lcssa.i                  ; 2 uses
  %i.dh = getelementptr inbounds [2 x i8], ptr %i.df, i64 %i.dg
  %i.di = shl i64 %.0.lcssa.i, 1
  call void @llvm.memmove.p0.p0.i64(ptr align 2 %.sroa.0101.0181, ptr align 2 %i.dh, i64 %i.di, i1 false)
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.bf
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.dj, i64 %i.dg
  %i.dl = shl i64 %.0.lcssa.i, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.at, ptr align 8 %i.dk, i64 %i.dl, i1 false)
  %i.dm = icmp ult i64 %.0.lcssa.i, %i.bf
  br i1 %i.dm, label %.lr.ph44.i.preheader, label %_ZN5faiss12heap_reorderINS_4CMinItlEEEEmmPNT_1TEPNS3_2TIE.exit

.lr.ph44.i.preheader:                             ; preds = %._crit_edge.i
  %i.dn = sub nuw i64 %i.bf, %.0.lcssa.i          ; 3 uses
  %min.iters.check201 = icmp ult i64 %i.dn, 4
  br i1 %min.iters.check201, label %.lr.ph44.i.preheader221, label %vector.ph202

vector.ph202:                                     ; preds = %.lr.ph44.i.preheader
  %n.vec203 = and i64 %i.dn, -4                   ; 3 uses
  %i.do = add i64 %.0.lcssa.i, %n.vec203
  br label %vector.body204

vector.body204:                                   ; preds = %vector.body204, %vector.ph202
  %index205 = phi i64 [ 0, %vector.ph202 ], [ %index.next206, %vector.body204 ] ; 2 uses
  %i.dp = add nuw i64 %.0.lcssa.i, %index205      ; 2 uses
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0101.0181, i64 %i.dp ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  store <2 x i16> zeroinitializer, ptr %i.dq, align 2, !tbaa !159
  store <2 x i16> zeroinitializer, ptr %i.dr, align 2, !tbaa !159
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.dp ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  store <2 x i64> splat (i64 -1), ptr %i.ds, align 8, !tbaa !72
  store <2 x i64> splat (i64 -1), ptr %i.dt, align 8, !tbaa !72
  %index.next206 = add nuw i64 %index205, 4       ; 2 uses
  %i.du = icmp eq i64 %index.next206, %n.vec203
  br i1 %i.du, label %middle.block207, label %vector.body204, !llvm.loop !318

middle.block207:                                  ; preds = %vector.body204
  %cmp.n208 = icmp eq i64 %i.dn, %n.vec203
  br i1 %cmp.n208, label %_ZN5faiss12heap_reorderINS_4CMinItlEEEEmmPNT_1TEPNS3_2TIE.exit, label %.lr.ph44.i.preheader221

.lr.ph44.i.preheader221:                          ; preds = %.lr.ph44.i.preheader, %middle.block207
  %.242.i.ph = phi i64 [ %.0.lcssa.i, %.lr.ph44.i.preheader ], [ %i.do, %middle.block207 ]
  br label %.lr.ph44.i

.lr.ph44.i:                                       ; preds = %.lr.ph44.i.preheader221, %.lr.ph44.i
  %.242.i = phi i64 [ %i.dx, %.lr.ph44.i ], [ %.242.i.ph, %.lr.ph44.i.preheader221 ] ; 3 uses
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0101.0181, i64 %.242.i
  store i16 0, ptr %i.dv, align 2, !tbaa !159
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.242.i
  store i64 -1, ptr %i.dw, align 8, !tbaa !72
  %i.dx = add nuw i64 %.242.i, 1                  ; 2 uses
  %exitcond47.not.i = icmp eq i64 %i.dx, %i.bf
  br i1 %exitcond47.not.i, label %_ZN5faiss12heap_reorderINS_4CMinItlEEEEmmPNT_1TEPNS3_2TIE.exit, label %.lr.ph44.i, !llvm.loop !319

_ZN5faiss12heap_reorderINS_4CMinItlEEEEmmPNT_1TEPNS3_2TIE.exit: ; preds = %.lr.ph44.i, %middle.block207, %._crit_edge.i
  %i.dy = load ptr, ptr %15, align 8, !tbaa !99
  %.idx = shl nsw i64 %.067120, 3
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %.idx ; 2 uses
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !136
  %i.eb = fdiv float 1.000000e+00, %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !136
  %i.ee = load i32, ptr %i.u, align 4, !tbaa !156
  %i.ef = and i32 %i.ee, 16
  %.not71 = icmp eq i32 %i.ef, 0                  ; 2 uses
  %.064 = select i1 %.not71, float %i.eb, float 1.000000e+00 ; 2 uses
  %.063 = select i1 %.not71, float %i.ed, float 0.000000e+00 ; 2 uses
  %i.eg = load ptr, ptr %16, align 8, !tbaa !99
  %i.eh = load i64, ptr %3, align 8, !tbaa !72    ; 6 uses
  %i.ei = mul nsw i64 %i.eh, %.067120
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.ei ; 2 uses
  %i.ek = icmp sgt i64 %i.eh, 0
  br i1 %i.ek, label %.lr.ph117.preheader, label %._crit_edge118

.lr.ph117.preheader:                              ; preds = %_ZN5faiss12heap_reorderINS_4CMinItlEEEEmmPNT_1TEPNS3_2TIE.exit
  %min.iters.check = icmp ult i64 %i.eh, 8
  br i1 %min.iters.check, label %.lr.ph117.preheader220, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph117.preheader
  %n.vec = and i64 %i.eh, 9223372036854775800     ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.064, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert197 = insertelement <4 x float> poison, float %.063, i64 0
  %broadcast.splat198 = shufflevector <4 x float> %broadcast.splatinsert197, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0101.0181, i64 %index ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %wide.load = load <4 x i16>, ptr %i.el, align 2, !tbaa !159
  %wide.load199 = load <4 x i16>, ptr %i.em, align 2, !tbaa !159
  %i.en = uitofp <4 x i16> %wide.load to <4 x float>
  %i.eo = uitofp <4 x i16> %wide.load199 to <4 x float>
  %i.ep = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.en, <4 x float> %broadcast.splat, <4 x float> %broadcast.splat198)
  %i.eq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eo, <4 x float> %broadcast.splat, <4 x float> %broadcast.splat198)
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %index ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  store <4 x float> %i.ep, ptr %i.er, align 4, !tbaa !136
  store <4 x float> %i.eq, ptr %i.es, align 4, !tbaa !136
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.et = icmp eq i64 %index.next, %n.vec
  br i1 %i.et, label %middle.block, label %vector.body, !llvm.loop !320

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.eh, %n.vec
  br i1 %cmp.n, label %._crit_edge118.thread, label %.lr.ph117.preheader220

.lr.ph117.preheader220:                           ; preds = %.lr.ph117.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph117.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph117

bb.l:                                             ; preds = %.lr.ph, %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit
  %i.eu = phi i64 [ %i.v, %.lr.ph ], [ %i.nx, %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit ] ; 3 uses
  %i.ev = phi i64 [ %i.w, %.lr.ph ], [ %i.ny, %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit ] ; 3 uses
  %i.ew = phi i64 [ %i.ba, %.lr.ph ], [ %i.oa, %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit ] ; 2 uses
  %.065114 = phi i64 [ 0, %.lr.ph ], [ %i.nz, %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit ] ; 4 uses
  %.1113 = phi ptr [ %.066, %.lr.ph ], [ %.2, %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit ]
  %i.ex = load i8, ptr %5, align 1, !tbaa !105, !range !38, !noundef !39
  %i.ey = trunc nuw i8 %i.ex to i1
  br i1 %i.ey, label %._crit_edge131, label %bb.m

._crit_edge131:                                   ; preds = %bb.l
  %.pre = mul i64 %i.ew, %.067120
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ez = load ptr, ptr %6, align 8, !tbaa !85
  %i.fa = mul i64 %i.ew, %.067120                 ; 2 uses
  %i.fb = add i64 %i.fa, %.065114
  %i.fc = load i64, ptr %7, align 8, !tbaa !72
  %i.fd = mul i64 %i.fc, %i.fb
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.fd
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge131, %bb.m
  %.pre-phi = phi i64 [ %.pre, %._crit_edge131 ], [ %i.fa, %bb.m ]
  %.2 = phi ptr [ %.1113, %._crit_edge131 ], [ %i.fe, %bb.m ] ; 4 uses
  %i.ff = load ptr, ptr %i.o, align 8, !tbaa !103
  %i.fg = getelementptr [8 x i8], ptr %i.ff, i64 %.pre-phi
  %i.fh = getelementptr [8 x i8], ptr %i.fg, i64 %.065114
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !72 ; 6 uses
  %i.fj = icmp slt i64 %i.fi, 0
  br i1 %i.fj, label %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fk = load ptr, ptr %i.p, align 8, !tbaa !139 ; 2 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !25
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fn = load ptr, ptr %i.fm, align 8
  %i.fo = invoke noundef i64 %i.fn(ptr noundef nonnull align 8 dereferenceable(25) %i.fk, i64 noundef %i.fi)
          to label %bb.p unwind label %.loopexit  ; 3 uses

bb.p:                                             ; preds = %bb.o
  %i.fp = icmp eq i64 %i.fo, 0
  br i1 %i.fp, label %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fq = load ptr, ptr %i.p, align 8, !tbaa !139 ; 4 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !25
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 24
  %i.ft = load ptr, ptr %i.fs, align 8
  %i.fu = invoke noundef ptr %i.ft(ptr noundef nonnull align 8 dereferenceable(25) %i.fq, i64 noundef %i.fi)
          to label %_ZN5faiss13InvertedLists11ScopedCodesC2EPKS0_m.exit unwind label %.loopexit, !inline_history !1 ; 2 uses

_ZN5faiss13InvertedLists11ScopedCodesC2EPKS0_m.exit: ; preds = %bb.q
  %i.fv = load ptr, ptr %i.p, align 8, !tbaa !139 ; 4 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !25
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 32
  %i.fy = load ptr, ptr %i.fx, align 8
  %i.fz = invoke noundef ptr %i.fy(ptr noundef nonnull align 8 dereferenceable(25) %i.fv, i64 noundef %i.fi)
          to label %bb.r unwind label %.loopexit, !inline_history !9 ; 3 uses

bb.r:                                             ; preds = %_ZN5faiss13InvertedLists11ScopedCodesC2EPKS0_m.exit
  %i.ga = load ptr, ptr %11, align 8, !tbaa !114  ; 2 uses
  %.not72 = icmp eq ptr %i.ga, null
  br i1 %.not72, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gb = load i64, ptr %8, align 8, !tbaa !72
  %i.gc = mul i64 %i.gb, %.067120
  %i.gd = getelementptr [2 x i8], ptr %i.ga, i64 %i.gc
  %i.ge = getelementptr [2 x i8], ptr %i.gd, i64 %.065114
  %i.gf = load i16, ptr %i.ge, align 2, !tbaa !159
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.gg = phi i16 [ %i.gf, %bb.s ], [ 0, %bb.r ]  ; 2 uses
  %i.gh = load i64, ptr %3, align 8, !tbaa !72    ; 7 uses
  %.val = load i32, ptr %12, align 8, !tbaa !142  ; 3 uses
  %.not.i76 = icmp eq i32 %.val, 0                ; 2 uses
  %i.gi = select i1 %.not.i76, i64 0, i64 2       ; 2 uses
  %i.gj = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %i.gh ; 3 uses
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.gh ; 2 uses
  %i.gl = icmp ult i64 %i.gh, 2
  br label %bb.u

bb.u:                                             ; preds = %bb.ag, %bb.t
  %.04121.i = phi i64 [ 0, %bb.t ], [ %i.nk, %bb.ag ] ; 4 uses
  %i.gm = load i64, ptr %i.q, align 8, !tbaa !69
  %i.gn = mul i64 %i.gm, %.04121.i
  %i.go = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.gn ; 9 uses
  %i.gp = load i64, ptr %i.r, align 8, !tbaa !79  ; 2 uses
  %i.gq = sub i64 %i.gp, %i.gi                    ; 2 uses
  %.not25.i = icmp eq i64 %i.gp, %i.gi
  br i1 %.not25.i, label %._crit_edge.i79, label %.lr.ph.i77

.lr.ph.i77:                                       ; preds = %bb.u
  %i.gr = load i64, ptr %i.s, align 8, !tbaa !104 ; 3 uses
  %i.gs = trunc i64 %i.gr to i32                  ; 3 uses
  %notmask30.i.i = shl nsw i32 -1, %i.gs
  %i.gt = xor i32 %notmask30.i.i, -1
  %sext4.i = shl i64 %i.gr, 32
  %i.gu = ashr exact i64 %sext4.i, 32
  %i.gv = and i64 %i.gr, 4294967295
  %i.gw = load i64, ptr %i.t, align 8, !tbaa !106 ; 2 uses
  br label %bb.v

._crit_edge.loopexit.i:                           ; preds = %_ZN5faiss15BitstringReader4readEi.exit.i
  %i.gx = mul i64 %i.gw, %i.gq
  %scevgep.i = getelementptr i8, ptr %.2, i64 %i.gx
  br label %._crit_edge.i79

._crit_edge.i79:                                  ; preds = %._crit_edge.loopexit.i, %bb.u
  %.sroa.6.0.lcssa.i = phi i64 [ 0, %bb.u ], [ %.sroa.6.1.i, %._crit_edge.loopexit.i ] ; 3 uses
  %.044.lcssa.i = phi i16 [ %i.gg, %bb.u ], [ %i.iu, %._crit_edge.loopexit.i ] ; 2 uses
  %.043.lcssa.i = phi ptr [ %.2, %bb.u ], [ %scevgep.i, %._crit_edge.loopexit.i ] ; 2 uses
  br i1 %.not.i76, label %.loopexit.i, label %.lr.ph19.i

.lr.ph19.i:                                       ; preds = %._crit_edge.i79
  %i.gy = load i64, ptr %i.s, align 8, !tbaa !104 ; 3 uses
  %i.gz = trunc i64 %i.gy to i32                  ; 5 uses
  %notmask30.i47.i = shl nsw i32 -1, %i.gz
  %i.ha = xor i32 %notmask30.i47.i, -1            ; 2 uses
  %sext.i = shl i64 %i.gy, 32
  %i.hb = ashr exact i64 %sext.i, 32
  %i.hc = and i64 %i.gy, 4294967295
  %i.hd = load i64, ptr %i.t, align 8, !tbaa !106
  %i.he = trunc i64 %.sroa.6.0.lcssa.i to i32
  %i.hf = and i32 %i.he, 7                        ; 2 uses
  %i.hg = sub nuw nsw i32 8, %i.hf                ; 4 uses
  %i.hh = lshr i64 %.sroa.6.0.lcssa.i, 3          ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.hh
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !32
  %i.hk = zext i8 %i.hj to i32
  %i.hl = lshr i32 %i.hk, %i.hf                   ; 2 uses
  %.not.i46.i = icmp slt i32 %i.hg, %i.gz
  br i1 %.not.i46.i, label %bb.z, label %bb.y

bb.v:                                             ; preds = %_ZN5faiss15BitstringReader4readEi.exit.i, %.lr.ph.i77
  %.04212.i = phi i64 [ 0, %.lr.ph.i77 ], [ %i.iw, %_ZN5faiss15BitstringReader4readEi.exit.i ]
  %.04311.i = phi ptr [ %.2, %.lr.ph.i77 ], [ %i.iv, %_ZN5faiss15BitstringReader4readEi.exit.i ] ; 2 uses
  %.04410.i = phi i16 [ %i.gg, %.lr.ph.i77 ], [ %i.iu, %_ZN5faiss15BitstringReader4readEi.exit.i ]
  %.sroa.6.09.i = phi i64 [ 0, %.lr.ph.i77 ], [ %.sroa.6.1.i, %_ZN5faiss15BitstringReader4readEi.exit.i ] ; 3 uses
  %i.hm = trunc i64 %.sroa.6.09.i to i32
  %i.hn = and i32 %i.hm, 7                        ; 2 uses
  %i.ho = sub nuw nsw i32 8, %i.hn                ; 4 uses
  %i.hp = lshr i64 %.sroa.6.09.i, 3               ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.hp
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !32
  %i.hs = zext i8 %i.hr to i32
  %i.ht = lshr i32 %i.hs, %i.hn                   ; 2 uses
  %.not.i.i = icmp slt i32 %i.ho, %i.gs
  br i1 %.not.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.hu = and i32 %i.ht, %i.gt
  %i.hv = zext nneg i32 %i.hu to i64
  br label %_ZN5faiss15BitstringReader4readEi.exit.i

bb.x:                                             ; preds = %bb.v
  %i.hw = zext nneg i32 %i.ht to i64              ; 2 uses
  %i.hx = sub nuw nsw i32 %i.gs, %i.ho            ; 3 uses
  %.02431.i.i = add nuw nsw i64 %i.hp, 1          ; 2 uses
  %i.hy = icmp samesign ugt i32 %i.hx, 8
  br i1 %i.hy, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.x
  %i.hz = zext nneg i32 %i.ho to i64
  br label %.lr.ph.i.i94

.lr.ph.i.i94:                                     ; preds = %.lr.ph.i.i94, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.hz, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %.lr.ph.i.i94 ] ; 2 uses
  %.02435.i.i = phi i64 [ %.02431.i.i, %.lr.ph.preheader.i.i ], [ %.024.i.i, %.lr.ph.i.i94 ] ; 2 uses
  %.02633.i.i = phi i64 [ %i.hw, %.lr.ph.preheader.i.i ], [ %i.ie, %.lr.ph.i.i94 ]
  %.02732.i.i = phi i32 [ %i.hx, %.lr.ph.preheader.i.i ], [ %i.if, %.lr.ph.i.i94 ] ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.go, i64 %.02435.i.i
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !32
  %i.ic = zext i8 %i.ib to i64
  %i.id = shl i64 %i.ic, %indvars.iv.i.i
  %i.ie = or i64 %i.id, %.02633.i.i               ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 8 ; 2 uses
  %i.if = add nsw i32 %.02732.i.i, -8             ; 2 uses
  %.024.i.i = add nuw nsw i64 %.02435.i.i, 1      ; 2 uses
  %i.ig = icmp samesign ugt i32 %.02732.i.i, 16
  br i1 %i.ig, label %.lr.ph.i.i94, label %._crit_edge.loopexit.i.i, !llvm.loop !12

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i94
  %i.ih = trunc nuw i64 %indvars.iv.next.i.i to i32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.x
  %.027.lcssa.i.i = phi i32 [ %i.hx, %bb.x ], [ %i.if, %._crit_edge.loopexit.i.i ]
  %.026.lcssa.i.i = phi i64 [ %i.hw, %bb.x ], [ %i.ie, %._crit_edge.loopexit.i.i ]
  %.025.lcssa.i.i = phi i32 [ %i.ho, %bb.x ], [ %i.ih, %._crit_edge.loopexit.i.i ]
  %.024.lcssa.i.i = phi i64 [ %.02431.i.i, %bb.x ], [ %.024.i.i, %._crit_edge.loopexit.i.i ]
  %i.ii = getelementptr inbounds nuw i8, ptr %i.go, i64 %.024.lcssa.i.i
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !32
  %notmask.i.i = shl nsw i32 -1, %.027.lcssa.i.i
  %i.ik = xor i32 %notmask.i.i, -1
  %i.il = zext i8 %i.ij to i32
  %i.im = and i32 %i.il, %i.ik
  %i.in = zext nneg i32 %i.im to i64
  %i.io = zext nneg i32 %.025.lcssa.i.i to i64
  %i.ip = shl i64 %i.in, %i.io
  %i.iq = or i64 %i.ip, %.026.lcssa.i.i
  br label %_ZN5faiss15BitstringReader4readEi.exit.i

_ZN5faiss15BitstringReader4readEi.exit.i:         ; preds = %._crit_edge.i.i, %bb.w
  %.pn5.i = phi i64 [ %i.gv, %._crit_edge.i.i ], [ %i.gu, %bb.w ]
  %.0.i.i = phi i64 [ %i.iq, %._crit_edge.i.i ], [ %i.hv, %bb.w ]
  %.sroa.6.1.i = add i64 %.pn5.i, %.sroa.6.09.i   ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.04311.i, i64 %.0.i.i
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !32
  %i.it = zext i8 %i.is to i16
  %i.iu = add i16 %.04410.i, %i.it                ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.04311.i, i64 %i.gw
  %i.iw = add nuw i64 %.04212.i, 1                ; 2 uses
  %exitcond.not.i78 = icmp eq i64 %i.iw, %i.gq
  br i1 %exitcond.not.i78, label %._crit_edge.loopexit.i, label %bb.v, !llvm.loop !321

bb.y:                                             ; preds = %.lr.ph19.i
  %i.ix = and i32 %i.hl, %i.ha
  %i.iy = zext nneg i32 %i.ix to i64
  br label %_ZN5faiss15BitstringReader4readEi.exit65.i

bb.z:                                             ; preds = %.lr.ph19.i
  %i.iz = zext nneg i32 %i.hl to i64              ; 2 uses
  %i.ja = sub nuw nsw i32 %i.gz, %i.hg            ; 3 uses
  %.02431.i49.i = add nuw nsw i64 %i.hh, 1        ; 2 uses
  %i.jb = icmp samesign ugt i32 %i.ja, 8
  br i1 %i.jb, label %.lr.ph.preheader.i56.i, label %._crit_edge.i50.i

.lr.ph.preheader.i56.i:                           ; preds = %bb.z
  %i.jc = zext nneg i32 %i.hg to i64
  br label %.lr.ph.i57.i

.lr.ph.i57.i:                                     ; preds = %.lr.ph.i57.i, %.lr.ph.preheader.i56.i
  %indvars.iv.i58.i = phi i64 [ %i.jc, %.lr.ph.preheader.i56.i ], [ %indvars.iv.next.i62.i, %.lr.ph.i57.i ] ; 2 uses
  %.02435.i59.i = phi i64 [ %.02431.i49.i, %.lr.ph.preheader.i56.i ], [ %.024.i63.i, %.lr.ph.i57.i ] ; 2 uses
  %.02633.i60.i = phi i64 [ %i.iz, %.lr.ph.preheader.i56.i ], [ %i.jh, %.lr.ph.i57.i ]
  %.02732.i61.i = phi i32 [ %i.ja, %.lr.ph.preheader.i56.i ], [ %i.ji, %.lr.ph.i57.i ] ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.go, i64 %.02435.i59.i
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !32
  %i.jf = zext i8 %i.je to i64
  %i.jg = shl i64 %i.jf, %indvars.iv.i58.i
  %i.jh = or i64 %i.jg, %.02633.i60.i             ; 2 uses
  %indvars.iv.next.i62.i = add nuw nsw i64 %indvars.iv.i58.i, 8 ; 2 uses
  %i.ji = add nsw i32 %.02732.i61.i, -8           ; 2 uses
  %.024.i63.i = add nuw nsw i64 %.02435.i59.i, 1  ; 2 uses
  %i.jj = icmp samesign ugt i32 %.02732.i61.i, 16
  br i1 %i.jj, label %.lr.ph.i57.i, label %._crit_edge.loopexit.i64.i, !llvm.loop !12

._crit_edge.loopexit.i64.i:                       ; preds = %.lr.ph.i57.i
  %i.jk = trunc nuw i64 %indvars.iv.next.i62.i to i32
  br label %._crit_edge.i50.i

._crit_edge.i50.i:                                ; preds = %._crit_edge.loopexit.i64.i, %bb.z
  %.027.lcssa.i51.i = phi i32 [ %i.ja, %bb.z ], [ %i.ji, %._crit_edge.loopexit.i64.i ]
  %.026.lcssa.i52.i = phi i64 [ %i.iz, %bb.z ], [ %i.jh, %._crit_edge.loopexit.i64.i ]
  %.025.lcssa.i53.i = phi i32 [ %i.hg, %bb.z ], [ %i.jk, %._crit_edge.loopexit.i64.i ]
  %.024.lcssa.i54.i = phi i64 [ %.02431.i49.i, %bb.z ], [ %.024.i63.i, %._crit_edge.loopexit.i64.i ]
  %i.jl = getelementptr inbounds nuw i8, ptr %i.go, i64 %.024.lcssa.i54.i
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !32
  %notmask.i55.i = shl nsw i32 -1, %.027.lcssa.i51.i
  %i.jn = xor i32 %notmask.i55.i, -1
  %i.jo = zext i8 %i.jm to i32
  %i.jp = and i32 %i.jo, %i.jn
  %i.jq = zext nneg i32 %i.jp to i64
  %i.jr = zext nneg i32 %.025.lcssa.i53.i to i64
  %i.js = shl i64 %i.jq, %i.jr
  %i.jt = or i64 %i.js, %.026.lcssa.i52.i
  br label %_ZN5faiss15BitstringReader4readEi.exit65.i

_ZN5faiss15BitstringReader4readEi.exit65.i:       ; preds = %._crit_edge.i50.i, %bb.y
  %.pn.i = phi i64 [ %i.hc, %._crit_edge.i50.i ], [ %i.hb, %bb.y ]
  %.0.i48.i = phi i64 [ %i.jt, %._crit_edge.i50.i ], [ %i.iy, %bb.y ]
  %i.ju = getelementptr inbounds nuw i8, ptr %.043.lcssa.i, i64 %.0.i48.i
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !32
  %17 = zext i8 %i.jv to i32
  %18 = mul nsw i32 %.val, %17
  %19 = trunc i32 %18 to i16
  %i.jw = add i16 %.044.lcssa.i, %19
  %i.jx = getelementptr inbounds nuw i8, ptr %.043.lcssa.i, i64 %i.hd
  %.sroa.6.3.i = add i64 %.pn.i, %.sroa.6.0.lcssa.i ; 2 uses
  %i.jy = trunc i64 %.sroa.6.3.i to i32
  %i.jz = and i32 %i.jy, 7                        ; 2 uses
  %i.ka = sub nuw nsw i32 8, %i.jz                ; 4 uses
  %i.kb = lshr i64 %.sroa.6.3.i, 3                ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.kb
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !32
  %i.ke = zext i8 %i.kd to i32
  %i.kf = lshr i32 %i.ke, %i.jz                   ; 2 uses
  %.not.i46.i.1 = icmp slt i32 %i.ka, %i.gz
  br i1 %.not.i46.i.1, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZN5faiss15BitstringReader4readEi.exit65.i
  %i.kg = and i32 %i.kf, %i.ha
  %i.kh = zext nneg i32 %i.kg to i64
  br label %_ZN5faiss15BitstringReader4readEi.exit65.i.1

bb.ab:                                            ; preds = %_ZN5faiss15BitstringReader4readEi.exit65.i
  %i.ki = zext nneg i32 %i.kf to i64              ; 2 uses
  %i.kj = sub nuw nsw i32 %i.gz, %i.ka            ; 3 uses
  %.02431.i49.i.1 = add nuw nsw i64 %i.kb, 1      ; 2 uses
  %i.kk = icmp samesign ugt i32 %i.kj, 8
  br i1 %i.kk, label %.lr.ph.preheader.i56.i.1, label %._crit_edge.i50.i.1

.lr.ph.preheader.i56.i.1:                         ; preds = %bb.ab
  %i.kl = zext nneg i32 %i.ka to i64
  br label %.lr.ph.i57.i.1

.lr.ph.i57.i.1:                                   ; preds = %.lr.ph.i57.i.1, %.lr.ph.preheader.i56.i.1
  %indvars.iv.i58.i.1 = phi i64 [ %i.kl, %.lr.ph.preheader.i56.i.1 ], [ %indvars.iv.next.i62.i.1, %.lr.ph.i57.i.1 ] ; 2 uses
  %.02435.i59.i.1 = phi i64 [ %.02431.i49.i.1, %.lr.ph.preheader.i56.i.1 ], [ %.024.i63.i.1, %.lr.ph.i57.i.1 ] ; 2 uses
  %.02633.i60.i.1 = phi i64 [ %i.ki, %.lr.ph.preheader.i56.i.1 ], [ %i.kq, %.lr.ph.i57.i.1 ]
  %.02732.i61.i.1 = phi i32 [ %i.kj, %.lr.ph.preheader.i56.i.1 ], [ %i.kr, %.lr.ph.i57.i.1 ] ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.go, i64 %.02435.i59.i.1
  %i.kn = load i8, ptr %i.km, align 1, !tbaa !32
  %i.ko = zext i8 %i.kn to i64
  %i.kp = shl i64 %i.ko, %indvars.iv.i58.i.1
  %i.kq = or i64 %i.kp, %.02633.i60.i.1           ; 2 uses
  %indvars.iv.next.i62.i.1 = add nuw nsw i64 %indvars.iv.i58.i.1, 8 ; 2 uses
  %i.kr = add nsw i32 %.02732.i61.i.1, -8         ; 2 uses
  %.024.i63.i.1 = add nuw nsw i64 %.02435.i59.i.1, 1 ; 2 uses
  %i.ks = icmp samesign ugt i32 %.02732.i61.i.1, 16
  br i1 %i.ks, label %.lr.ph.i57.i.1, label %._crit_edge.loopexit.i64.i.1, !llvm.loop !12

._crit_edge.loopexit.i64.i.1:                     ; preds = %.lr.ph.i57.i.1
  %i.kt = trunc nuw i64 %indvars.iv.next.i62.i.1 to i32
  br label %._crit_edge.i50.i.1

._crit_edge.i50.i.1:                              ; preds = %._crit_edge.loopexit.i64.i.1, %bb.ab
  %.027.lcssa.i51.i.1 = phi i32 [ %i.kj, %bb.ab ], [ %i.kr, %._crit_edge.loopexit.i64.i.1 ]
  %.026.lcssa.i52.i.1 = phi i64 [ %i.ki, %bb.ab ], [ %i.kq, %._crit_edge.loopexit.i64.i.1 ]
  %.025.lcssa.i53.i.1 = phi i32 [ %i.ka, %bb.ab ], [ %i.kt, %._crit_edge.loopexit.i64.i.1 ]
  %.024.lcssa.i54.i.1 = phi i64 [ %.02431.i49.i.1, %bb.ab ], [ %.024.i63.i.1, %._crit_edge.loopexit.i64.i.1 ]
  %i.ku = getelementptr inbounds nuw i8, ptr %i.go, i64 %.024.lcssa.i54.i.1
  %i.kv = load i8, ptr %i.ku, align 1, !tbaa !32
  %notmask.i55.i.1 = shl nsw i32 -1, %.027.lcssa.i51.i.1
  %i.kw = xor i32 %notmask.i55.i.1, -1
  %i.kx = zext i8 %i.kv to i32
  %i.ky = and i32 %i.kx, %i.kw
  %i.kz = zext nneg i32 %i.ky to i64
  %i.la = zext nneg i32 %.025.lcssa.i53.i.1 to i64
  %i.lb = shl i64 %i.kz, %i.la
  %i.lc = or i64 %i.lb, %.026.lcssa.i52.i.1
  br label %_ZN5faiss15BitstringReader4readEi.exit65.i.1

_ZN5faiss15BitstringReader4readEi.exit65.i.1:     ; preds = %._crit_edge.i50.i.1, %bb.aa
  %.0.i48.i.1 = phi i64 [ %i.lc, %._crit_edge.i50.i.1 ], [ %i.kh, %bb.aa ]
  %i.ld = getelementptr inbounds nuw i8, ptr %i.jx, i64 %.0.i48.i.1
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !32
  %20 = zext i8 %i.le to i32
  %21 = mul nsw i32 %.val, %20
  %22 = trunc i32 %21 to i16
  %i.lf = add i16 %i.jw, %22
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %_ZN5faiss15BitstringReader4readEi.exit65.i.1, %._crit_edge.i79
  %.2.i = phi i16 [ %.044.lcssa.i, %._crit_edge.i79 ], [ %i.lf, %_ZN5faiss15BitstringReader4readEi.exit65.i.1 ] ; 4 uses
  %i.lg = load i16, ptr %.sroa.0101.0181, align 2, !tbaa !159
  %i.lh = icmp ult i16 %i.lg, %.2.i
  br i1 %i.lh, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %.loopexit.i
  %i.li = load i16, ptr %i.gj, align 2, !tbaa !159 ; 5 uses
  %i.lj = load i64, ptr %i.gk, align 8, !tbaa !72 ; 3 uses
  br i1 %i.gl, label %_ZN5faiss8heap_popINS_4CMinItlEEEEvmPNT_1TEPNS3_2TIE.exit.thread.i, label %.lr.ph.i66.i

_ZN5faiss8heap_popINS_4CMinItlEEEEvmPNT_1TEPNS3_2TIE.exit.thread.i: ; preds = %bb.ac
  store i16 %i.li, ptr %.sroa.0101.0181, align 2, !tbaa !159
  store i64 %i.lj, ptr %i.at, align 8, !tbaa !72
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %.04121.i
  %i.ll = load i64, ptr %i.lk, align 8, !tbaa !72
  br label %_ZN5faiss9heap_pushINS_4CMinItlEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i

.lr.ph.i66.i:                                     ; preds = %bb.ac, %bb.af
  %i.lm = phi i64 [ %i.mp, %bb.af ], [ 3, %bb.ac ]
  %i.ln = phi i64 [ %i.mo, %bb.af ], [ 2, %bb.ac ] ; 7 uses
  %.062.i.i80 = phi i64 [ %.1.i.i85, %bb.af ], [ 1, %bb.ac ] ; 6 uses
  %i.lo = icmp eq i64 %i.ln, %i.gh
  br i1 %i.lo, label %.lr.ph._ZN5faiss4CMinItlE4cmp2Ettll.exit.thread_crit_edge.i.i92, label %bb.ad

.lr.ph._ZN5faiss4CMinItlE4cmp2Ettll.exit.thread_crit_edge.i.i92: ; preds = %.lr.ph.i66.i
  %.pre.i.i93 = load i16, ptr %i.gj, align 2, !tbaa !159
  br label %_ZN5faiss4CMinItlE4cmp2Ettll.exit.thread.i.i90

bb.ad:                                            ; preds = %.lr.ph.i66.i
  %i.lp = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %i.ln
  %i.lq = load i16, ptr %i.lp, align 2, !tbaa !159 ; 4 uses
  %i.lr = getelementptr [2 x i8], ptr %.sroa.0101.0181, i64 %i.ln
  %i.ls = load i16, ptr %i.lr, align 2, !tbaa !159 ; 5 uses
  %i.lt = getelementptr [8 x i8], ptr %i.at, i64 %i.ln
  %i.lu = load i64, ptr %i.lt, align 8, !tbaa !72 ; 3 uses
  %i.lv = icmp ult i16 %i.lq, %i.ls
  br i1 %i.lv, label %_ZN5faiss4CMinItlE4cmp2Ettll.exit.thread.i.i90, label %_ZN5faiss4CMinItlE4cmp2Ettll.exit.i.i81

_ZN5faiss4CMinItlE4cmp2Ettll.exit.i.i81:          ; preds = %bb.ad
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.ln
  %i.lx = load i64, ptr %i.lw, align 8, !tbaa !72
  %i.ly = icmp eq i16 %i.lq, %i.ls
  %i.lz = icmp slt i64 %i.lx, %i.lu
  %i.ma = and i1 %i.ly, %i.lz
  br i1 %i.ma, label %_ZN5faiss4CMinItlE4cmp2Ettll.exit.thread.i.i90, label %bb.ae

_ZN5faiss4CMinItlE4cmp2Ettll.exit.thread.i.i90:   ; preds = %_ZN5faiss4CMinItlE4cmp2Ettll.exit.i.i81, %bb.ad, %.lr.ph._ZN5faiss4CMinItlE4cmp2Ettll.exit.thread_crit_edge.i.i92
  %i.mb = phi i16 [ %.pre.i.i93, %.lr.ph._ZN5faiss4CMinItlE4cmp2Ettll.exit.thread_crit_edge.i.i92 ], [ %i.lq, %bb.ad ], [ %i.lq, %_ZN5faiss4CMinItlE4cmp2Ettll.exit.i.i81 ] ; 3 uses
  %i.mc = icmp ult i16 %i.li, %i.mb
  br i1 %i.mc, label %_ZN5faiss8heap_popINS_4CMinItlEEEEvmPNT_1TEPNS3_2TIE.exit.i86, label %_ZN5faiss4CMinItlE4cmp2Ettll.exit60.i.i91

_ZN5faiss4CMinItlE4cmp2Ettll.exit60.i.i91:        ; preds = %_ZN5faiss4CMinItlE4cmp2Ettll.exit.thread.i.i90
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.ln
  %i.me = load i64, ptr %i.md, align 8, !tbaa !72 ; 2 uses
  %i.mf = icmp eq i16 %i.li, %i.mb
  %i.mg = icmp slt i64 %i.lj, %i.me
  %i.mh = and i1 %i.mf, %i.mg
  br i1 %i.mh, label %_ZN5faiss8heap_popINS_4CMinItlEEEEvmPNT_1TEPNS3_2TIE.exit.i86, label %bb.af

bb.ae:                                            ; preds = %_ZN5faiss4CMinItlE4cmp2Ettll.exit.i.i81
  %i.mi = icmp ult i16 %i.li, %i.ls
  br i1 %i.mi, label %_ZN5faiss8heap_popINS_4CMinItlEEEEvmPNT_1TEPNS3_2TIE.exit.i86, label %_ZN5faiss4CMinItlE4cmp2Ettll.exit61.i.i82

_ZN5faiss4CMinItlE4cmp2Ettll.exit61.i.i82:        ; preds = %bb.ae
  %i.mj = icmp eq i16 %i.li, %i.ls
  %i.mk = icmp slt i64 %i.lj, %i.lu
  %i.ml = and i1 %i.mj, %i.mk
  br i1 %i.ml, label %_ZN5faiss8heap_popINS_4CMinItlEEEEvmPNT_1TEPNS3_2TIE.exit.i86, label %bb.af

bb.af:                                            ; preds = %_ZN5faiss4CMinItlE4cmp2Ettll.exit61.i.i82, %_ZN5faiss4CMinItlE4cmp2Ettll.exit60.i.i91
  %.sink79.i.i83 = phi i16 [ %i.mb, %_ZN5faiss4CMinItlE4cmp2Ettll.exit60.i.i91 ], [ %i.ls, %_ZN5faiss4CMinItlE4cmp2Ettll.exit61.i.i82 ]
  %.sink.i.i84 = phi i64 [ %i.me, %_ZN5faiss4CMinItlE4cmp2Ettll.exit60.i.i91 ], [ %i.lu, %_ZN5faiss4CMinItlE4cmp2Ettll.exit61.i.i82 ]
  %.1.i.i85 = phi i64 [ %i.ln, %_ZN5faiss4CMinItlE4cmp2Ettll.exit60.i.i91 ], [ %i.lm, %_ZN5faiss4CMinItlE4cmp2Ettll.exit61.i.i82 ] ; 3 uses
  %i.mm = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %.062.i.i80
  store i16 %.sink79.i.i83, ptr %i.mm, align 2, !tbaa !159
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.062.i.i80
  store i64 %.sink.i.i84, ptr %i.mn, align 8, !tbaa !72
  %i.mo = shl i64 %.1.i.i85, 1                    ; 3 uses
  %i.mp = or disjoint i64 %i.mo, 1
  %i.mq = icmp ugt i64 %i.mo, %i.gh
  br i1 %i.mq, label %_ZN5faiss8heap_popINS_4CMinItlEEEEvmPNT_1TEPNS3_2TIE.exit.i86, label %.lr.ph.i66.i, !llvm.loop !316

_ZN5faiss8heap_popINS_4CMinItlEEEEvmPNT_1TEPNS3_2TIE.exit.i86: ; preds = %bb.af, %_ZN5faiss4CMinItlE4cmp2Ettll.exit61.i.i82, %bb.ae, %_ZN5faiss4CMinItlE4cmp2Ettll.exit60.i.i91, %_ZN5faiss4CMinItlE4cmp2Ettll.exit.thread.i.i90
  %.0.lcssa.ph.i.i87 = phi i64 [ %.1.i.i85, %bb.af ], [ %.062.i.i80, %_ZN5faiss4CMinItlE4cmp2Ettll.exit60.i.i91 ], [ %.062.i.i80, %_ZN5faiss4CMinItlE4cmp2Ettll.exit61.i.i82 ], [ %.062.i.i80, %_ZN5faiss4CMinItlE4cmp2Ettll.exit.thread.i.i90 ], [ %.062.i.i80, %bb.ae ] ; 2 uses
  %.pre68.i.i88 = load i16, ptr %i.gj, align 2, !tbaa !159
  %.pre69.i.i89 = load i64, ptr %i.gk, align 8, !tbaa !72
  %i.mr = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %.0.lcssa.ph.i.i87
  store i16 %.pre68.i.i88, ptr %i.mr, align 2, !tbaa !159
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.0.lcssa.ph.i.i87
  store i64 %.pre69.i.i89, ptr %i.ms, align 8, !tbaa !72
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %.04121.i
  %i.mu = load i64, ptr %i.mt, align 8, !tbaa !72 ; 3 uses
  br label %.lr.ph.i68.i

.lr.ph.i68.i:                                     ; preds = %_ZN5faiss4CMinItlE4cmp2Ettll.exit.thread.i70.i, %_ZN5faiss8heap_popINS_4CMinItlEEEEvmPNT_1TEPNS3_2TIE.exit.i86
  %.025.i.i = phi i64 [ %i.mv, %_ZN5faiss4CMinItlE4cmp2Ettll.exit.thread.i70.i ], [ %i.gh, %_ZN5faiss8heap_popINS_4CMinItlEEEEvmPNT_1TEPNS3_2TIE.exit.i86 ] ; 5 uses
  %i.mv = lshr i64 %.025.i.i, 1                   ; 4 uses
  %i.mw = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %i.mv
  %i.mx = load i16, ptr %i.mw, align 2, !tbaa !159 ; 3 uses
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.mv
  %i.mz = load i64, ptr %i.my, align 8, !tbaa !72 ; 2 uses
  %i.na = icmp ult i16 %.2.i, %i.mx
  br i1 %i.na, label %_ZN5faiss4CMinItlE4cmp2Ettll.exit.thread.i70.i, label %_ZN5faiss4CMinItlE4cmp2Ettll.exit.i69.i

_ZN5faiss4CMinItlE4cmp2Ettll.exit.i69.i:          ; preds = %.lr.ph.i68.i
  %i.nb = icmp eq i16 %.2.i, %i.mx
  %i.nc = icmp slt i64 %i.mu, %i.mz
  %i.nd = and i1 %i.nb, %i.nc
  br i1 %i.nd, label %_ZN5faiss4CMinItlE4cmp2Ettll.exit.thread.i70.i, label %_ZN5faiss9heap_pushINS_4CMinItlEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i

_ZN5faiss4CMinItlE4cmp2Ettll.exit.thread.i70.i:   ; preds = %_ZN5faiss4CMinItlE4cmp2Ettll.exit.i69.i, %.lr.ph.i68.i
  %i.ne = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %.025.i.i
  store i16 %i.mx, ptr %i.ne, align 2, !tbaa !159
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.025.i.i
  store i64 %i.mz, ptr %i.nf, align 8, !tbaa !72
  %i.ng = icmp ugt i64 %.025.i.i, 3
  br i1 %i.ng, label %.lr.ph.i68.i, label %_ZN5faiss9heap_pushINS_4CMinItlEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i, !llvm.loop !322

_ZN5faiss9heap_pushINS_4CMinItlEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i: ; preds = %_ZN5faiss4CMinItlE4cmp2Ettll.exit.thread.i70.i, %_ZN5faiss4CMinItlE4cmp2Ettll.exit.i69.i, %_ZN5faiss8heap_popINS_4CMinItlEEEEvmPNT_1TEPNS3_2TIE.exit.thread.i
  %i.nh = phi i64 [ %i.ll, %_ZN5faiss8heap_popINS_4CMinItlEEEEvmPNT_1TEPNS3_2TIE.exit.thread.i ], [ %i.mu, %_ZN5faiss4CMinItlE4cmp2Ettll.exit.i69.i ], [ %i.mu, %_ZN5faiss4CMinItlE4cmp2Ettll.exit.thread.i70.i ]
  %.0.lcssa.i67.i = phi i64 [ %i.gh, %_ZN5faiss8heap_popINS_4CMinItlEEEEvmPNT_1TEPNS3_2TIE.exit.thread.i ], [ %i.mv, %_ZN5faiss4CMinItlE4cmp2Ettll.exit.thread.i70.i ], [ %.025.i.i, %_ZN5faiss4CMinItlE4cmp2Ettll.exit.i69.i ] ; 2 uses
  %i.ni = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %.0.lcssa.i67.i
  store i16 %.2.i, ptr %i.ni, align 2, !tbaa !159
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.0.lcssa.i67.i
  store i64 %i.nh, ptr %i.nj, align 8, !tbaa !72
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN5faiss9heap_pushINS_4CMinItlEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i, %.loopexit.i
  %i.nk = add nuw i64 %.04121.i, 1                ; 2 uses
  %exitcond33.not.i = icmp eq i64 %i.nk, %i.fo
  br i1 %exitcond33.not.i, label %_ZN5faiss12_GLOBAL__N_130estimators_from_tables_genericINS_4CMinItlEEhEEvRKNS_16IndexIVFFastScanEPKhmPKT0_PKlfmPNT_1TEPlRKNS_30FastScanDistancePostProcessingE.exit, label %bb.u, !llvm.loop !323

_ZN5faiss12_GLOBAL__N_130estimators_from_tables_genericINS_4CMinItlEEhEEvRKNS_16IndexIVFFastScanEPKhmPKT0_PKlfmPNT_1TEPlRKNS_30FastScanDistancePostProcessingE.exit: ; preds = %bb.ag
  %i.nl = add i64 %i.ev, 1                        ; 2 uses
  store i64 %i.nl, ptr %i.f, align 8, !tbaa !72
  %i.nm = add i64 %i.eu, %i.fo                    ; 2 uses
  store i64 %i.nm, ptr %i.e, align 8, !tbaa !72
  %i.nn = load ptr, ptr %i.fv, align 8, !tbaa !25
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 48
  %i.np = load ptr, ptr %i.no, align 8
  invoke void %i.np(ptr noundef nonnull align 8 dereferenceable(25) %i.fv, i64 noundef %i.fi, ptr noundef %i.fz)
          to label %_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit unwind label %bb.ah

bb.ah:                                            ; preds = %_ZN5faiss12_GLOBAL__N_130estimators_from_tables_genericINS_4CMinItlEEhEEvRKNS_16IndexIVFFastScanEPKhmPKT0_PKlfmPNT_1TEPlRKNS_30FastScanDistancePostProcessingE.exit
  %i.nq = landingpad { ptr, i32 }
          catch ptr null
  %i.nr = extractvalue { ptr, i32 } %i.nq, 0
  call void @__clang_call_terminate(ptr %i.nr) #37
  unreachable

_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit:      ; preds = %_ZN5faiss12_GLOBAL__N_130estimators_from_tables_genericINS_4CMinItlEEhEEvRKNS_16IndexIVFFastScanEPKhmPKT0_PKlfmPNT_1TEPlRKNS_30FastScanDistancePostProcessingE.exit
  %i.ns = load ptr, ptr %i.fq, align 8, !tbaa !25
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 40
  %i.nu = load ptr, ptr %i.nt, align 8
  invoke void %i.nu(ptr noundef nonnull align 8 dereferenceable(25) %i.fq, i64 noundef %i.fi, ptr noundef %i.fu)
          to label %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit unwind label %bb.ai

bb.ai:                                            ; preds = %_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit
  %i.nv = landingpad { ptr, i32 }
          catch ptr null
  %i.nw = extractvalue { ptr, i32 } %i.nv, 0
  call void @__clang_call_terminate(ptr %i.nw) #37
  unreachable

_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit:   ; preds = %_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit, %bb.p, %bb.n
  %i.nx = phi i64 [ %i.nm, %_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit ], [ %i.eu, %bb.p ], [ %i.eu, %bb.n ] ; 2 uses
  %i.ny = phi i64 [ %i.nl, %_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit ], [ %i.ev, %bb.p ], [ %i.ev, %bb.n ] ; 2 uses
  %i.nz = add nuw i64 %.065114, 1                 ; 2 uses
  %i.oa = load i64, ptr %8, align 8, !tbaa !72    ; 2 uses
  %i.ob = icmp ult i64 %i.nz, %i.oa
  br i1 %i.ob, label %bb.l, label %._crit_edge, !llvm.loop !324

._crit_edge118:                                   ; preds = %_ZN5faiss12heap_reorderINS_4CMinItlEEEEmmPNT_1TEPNS3_2TIE.exit
  %.not.i.i.i = icmp eq ptr %.sroa.0101.0181, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorItSaItEED2Ev.exit, label %._crit_edge118.thread

._crit_edge118.thread:                            ; preds = %.lr.ph117, %middle.block, %._crit_edge118
  %i.oc = ptrtoint ptr %.sroa.8.0180 to i64
  %i.od = ptrtoint ptr %.sroa.0101.0181 to i64
  %i.oe = sub i64 %i.oc, %i.od
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0101.0181, i64 noundef %i.oe) #39
  br label %_ZNSt6vectorItSaItEED2Ev.exit

_ZNSt6vectorItSaItEED2Ev.exit:                    ; preds = %._crit_edge118, %._crit_edge118.thread
  %i.of = add nsw i64 %.067120, 1
  %i.og = load i64, ptr %i.b, align 8, !tbaa !72
  %.not.not = icmp slt i64 %.067120, %i.og
  br i1 %.not.not, label %bb.c, label %._crit_edge123

.lr.ph117:                                        ; preds = %.lr.ph117.preheader220, %.lr.ph117
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph117 ], [ %indvars.iv.ph, %.lr.ph117.preheader220 ] ; 3 uses
  %i.oh = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0101.0181, i64 %indvars.iv
  %i.oi = load i16, ptr %i.oh, align 2, !tbaa !159
  %i.oj = uitofp i16 %i.oi to float
  %i.ok = call float @llvm.fmuladd.f32(float %i.oj, float %.064, float %.063)
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %indvars.iv
  store float %i.ok, ptr %i.ol, align 4, !tbaa !136
end_hunk_1
