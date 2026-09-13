Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/diff?download=true
inline.NumInlined: 8589
inline.NumDeleted: 3289
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN5arrow12_GLOBAL__N_123QuadraticSpaceMyersDiff4DiffEv:bb.a
_ZSt22__uninitialized_copy_aIPKlPllET0_T_S4_S3_RSaIT1_E.exit.i: ; preds = %bb.i, %_ZSt4copyIPKlPlET0_T_S4_S3_.exit17.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 %gepdiff
  store ptr %i.bj, ptr %i.bc, align 8, !tbaa !221
  br label %_ZNSt6vectorIlSaIlEEaSESt16initializer_listIlE.exit

_ZNSt6vectorIlSaIlEEaSESt16initializer_listIlE.exit: ; preds = %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit.i, %bb.h, %_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i, %_ZSt22__uninitialized_copy_aIPKlPllET0_T_S4_S3_RSaIT1_E.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i8 1, ptr %i.c, align 1, !tbaa !222
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 6 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 5 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !214 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 5 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !215 ; 2 uses
  %i.bq = load ptr, ptr %i.bk, align 8, !tbaa !214 ; 6 uses
  %i.br = ptrtoint ptr %i.bn to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = shl nsw i64 %i.bt, 3
  %i.bv = zext i32 %i.bp to i64
  %i.bw = add nsw i64 %i.bu, %i.bv                ; 3 uses
  %i.bx = icmp ugt i64 %i.bw, 1
  br i1 %i.bx, label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i, label %_ZSt9__advanceIPKblEvRT_T0_St26random_access_iterator_tag.exit.i

_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i:       ; preds = %_ZNSt6vectorIlSaIlEEaSESt16initializer_listIlE.exit
  %i.by = load i64, ptr %i.bq, align 8, !tbaa !142
  %i.bz = or i64 %i.by, 1
  store i64 %i.bz, ptr %i.bq, align 8, !tbaa !142
  store ptr %i.bq, ptr %i.bm, align 8
  store i32 1, ptr %i.bo, align 8
  br label %_ZNSt6vectorIbSaIbEEaSESt16initializer_listIbE.exit

_ZSt9__advanceIPKblEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZNSt6vectorIlSaIlEEaSESt16initializer_listIlE.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bw
  %i.cb = icmp eq i64 %i.bw, 1
  br i1 %i.cb, label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i40.i, label %_ZSt4copyIPKbSt13_Bit_iteratorET0_T_S4_S3_.exit45.i

_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i40.i:     ; preds = %_ZSt9__advanceIPKblEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.cc = load i64, ptr %i.bq, align 8, !tbaa !142
  %i.cd = or i64 %i.cc, 1
  store i64 %i.cd, ptr %i.bq, align 8, !tbaa !142
  %.sroa.0.0.copyload.i.pre.i = load ptr, ptr %i.bm, align 8
  %.sroa.2.0.copyload.i.pre.i = load i32, ptr %i.bo, align 8
  br label %_ZSt4copyIPKbSt13_Bit_iteratorET0_T_S4_S3_.exit45.i

_ZSt4copyIPKbSt13_Bit_iteratorET0_T_S4_S3_.exit45.i: ; preds = %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i40.i, %_ZSt9__advanceIPKblEvRT_T0_St26random_access_iterator_tag.exit.i
  %.sroa.2.0.copyload.i.i = phi i32 [ %.sroa.2.0.copyload.i.pre.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i40.i ], [ %i.bp, %_ZSt9__advanceIPKblEvRT_T0_St26random_access_iterator_tag.exit.i ]
  %.sroa.0.0.copyload.i.i = phi ptr [ %.sroa.0.0.copyload.i.pre.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i40.i ], [ %i.bn, %_ZSt9__advanceIPKblEvRT_T0_St26random_access_iterator_tag.exit.i ]
  invoke void @_ZNSt6vectorIbSaIbEE15_M_insert_rangeIPKbEEvSt13_Bit_iteratorT_S6_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(40) %i.bk, ptr %.sroa.0.0.copyload.i.i, i32 %.sroa.2.0.copyload.i.i, ptr noundef nonnull %i.ca, ptr noundef nonnull %i.bl)
          to label %_ZNSt6vectorIbSaIbEEaSESt16initializer_listIbE.exit unwind label %bb.l

_ZNSt6vectorIbSaIbEEaSESt16initializer_listIbE.exit: ; preds = %_ZSt4copyIPKbSt13_Bit_iteratorET0_T_S4_S3_.exit45.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  %i.ce = load i64, ptr %i.j, align 8, !tbaa !210 ; 2 uses
  %i.cf = load i64, ptr %i.d, align 8, !tbaa !209
  %i.cg = sub nsw i64 %i.ce, %i.cf
  %i.ch = load i64, ptr %i.r, align 8, !tbaa !212
  %i.ci = load i64, ptr %i.k, align 8, !tbaa !211
  %i.cj = sub nsw i64 %i.ch, %i.ci
  %i.ck = icmp eq i64 %i.cg, %i.cj
  br i1 %i.ck, label %bb.j, label %bb.m

bb.j:                                             ; preds = %_ZNSt6vectorIbSaIbEEaSESt16initializer_listIbE.exit
  %i.cl = load ptr, ptr %i.am, align 8, !tbaa !220
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !142
  %i.cn = icmp eq i64 %i.cm, %i.ce
  br i1 %i.cn, label %.thread, label %bb.m

.thread:                                          ; preds = %bb.j
  store i64 0, ptr %i.ab, align 8, !tbaa !213
  %.pre69143 = load i64, ptr %i.ac, align 8, !tbaa !840
  br label %._crit_edge

bb.k:                                             ; preds = %bb.e, %_ZNSt10unique_ptrIN5arrow12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %.body

bb.l:                                             ; preds = %_ZSt4copyIPKbSt13_Bit_iteratorET0_T_S4_S3_.exit45.i
  %i.cp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %.body

bb.m:                                             ; preds = %bb.j, %_ZNSt6vectorIbSaIbEEaSESt16initializer_listIbE.exit
  %.val1260.pr = load i64, ptr %i.ab, align 8, !tbaa !213
  %.not61 = icmp eq i64 %.val1260.pr, -1
  %.pre69 = load i64, ptr %i.ac, align 8, !tbaa !840 ; 2 uses
  br i1 %.not61, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.m
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %_ZN5arrow12_GLOBAL__N_123QuadraticSpaceMyersDiff4NextEv.exit
  %i.cr = phi i64 [ %.pre69, %.lr.ph ], [ %i.fo, %_ZN5arrow12_GLOBAL__N_123QuadraticSpaceMyersDiff4NextEv.exit ] ; 3 uses
  %i.cs = add nsw i64 %i.cr, 1                    ; 4 uses
  store i64 %i.cs, ptr %i.ac, align 8, !tbaa !840
  %i.ct = add nsw i64 %i.cr, 2
  %i.cu = add nsw i64 %i.cr, 3
  %i.cv = mul nsw i64 %i.cu, %i.ct
  %i.cw = sdiv i64 %i.cv, 2                       ; 4 uses
  %i.cx = load ptr, ptr %i.cq, align 8, !tbaa !221 ; 3 uses
  %i.cy = load ptr, ptr %i.am, align 8, !tbaa !220 ; 2 uses
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = ashr exact i64 %i.db, 3                 ; 3 uses
  %i.dd = icmp ugt i64 %i.cw, %i.dc
  br i1 %i.dd, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.de = sub nuw nsw i64 %i.cw, %i.dc
  invoke void @_ZNSt6vectorIlSaIlEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPlS1_EEmRKl(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr %i.cx, i64 noundef %i.de, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc:                                           ; preds = %bb.o
  %.pre.i = load i64, ptr %i.ac, align 8, !tbaa !840
  br label %_ZNSt6vectorIlSaIlEE6resizeEmRKl.exit.i

bb.p:                                             ; preds = %bb.n
  %i.df = icmp ult i64 %i.cw, %i.dc
  br i1 %i.df, label %bb.q, label %_ZNSt6vectorIlSaIlEE6resizeEmRKl.exit.i

bb.q:                                             ; preds = %bb.p
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.cw ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cx, %i.dg
  br i1 %.not.i.i.i, label %_ZNSt6vectorIlSaIlEE6resizeEmRKl.exit.i, label %_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.q
  store ptr %i.dg, ptr %i.cq, align 8, !tbaa !221
  br label %_ZNSt6vectorIlSaIlEE6resizeEmRKl.exit.i

_ZNSt6vectorIlSaIlEE6resizeEmRKl.exit.i:          ; preds = %_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i.i, %bb.q, %bb.p, %.noexc
  %i.dh = phi i64 [ %.pre.i, %.noexc ], [ %i.cs, %bb.p ], [ %i.cs, %bb.q ], [ %i.cs, %_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i.i ] ; 3 uses
  %i.di = add nsw i64 %i.dh, 1                    ; 2 uses
  %i.dj = add nsw i64 %i.dh, 2
  %i.dk = mul nsw i64 %i.dj, %i.di                ; 2 uses
  %i.dl = sdiv i64 %i.dk, 2                       ; 4 uses
  %i.dm = load ptr, ptr %i.bm, align 8, !tbaa !214 ; 2 uses
  %i.dn = load i32, ptr %i.bo, align 8, !tbaa !215 ; 2 uses
  %i.do = load ptr, ptr %i.bk, align 8, !tbaa !214 ; 2 uses
  %i.dp = ptrtoint ptr %i.dm to i64
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = sub i64 %i.dp, %i.dq
  %i.ds = shl nsw i64 %i.dr, 3
  %i.dt = zext i32 %i.dn to i64
  %i.du = add nsw i64 %i.ds, %i.dt                ; 2 uses
  %i.dv = icmp ult i64 %i.dl, %i.du
  br i1 %i.dv, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNSt6vectorIlSaIlEE6resizeEmRKl.exit.i
  %i.dw = sdiv i64 %i.dk, 128
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.do, i64 %i.dw
  %i.dy = and i64 %i.dl, -9223372036854775745
  %i.dz = icmp ugt i64 %i.dy, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.dz, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.dx, i64 %storemerge.idx.i.i.i.i.i
  %i.ea = trunc i64 %i.dl to i32
  %i.eb = and i32 %i.ea, 63
  store ptr %storemerge.i.i.i.i.i, ptr %i.bm, align 8
  store i32 %i.eb, ptr %i.bo, align 8
  br label %_ZNSt6vectorIbSaIbEE6resizeEmb.exit.i

bb.s:                                             ; preds = %_ZNSt6vectorIlSaIlEE6resizeEmRKl.exit.i
  %i.ec = sub nuw i64 %i.dl, %i.du
  invoke void @_ZNSt6vectorIbSaIbEE14_M_fill_insertESt13_Bit_iteratormb(ptr noundef nonnull align 8 dereferenceable(40) %i.bk, ptr %i.dm, i32 %i.dn, i64 noundef %i.ec, i1 noundef zeroext false)
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc13:                                         ; preds = %bb.s
  %.pre87.i = load i64, ptr %i.ac, align 8, !tbaa !840 ; 2 uses
  %.pre89.i = add nsw i64 %.pre87.i, 1
  br label %_ZNSt6vectorIbSaIbEE6resizeEmb.exit.i

_ZNSt6vectorIbSaIbEE6resizeEmb.exit.i:            ; preds = %.noexc13, %bb.r
  %.pre-phi.i = phi i64 [ %i.di, %bb.r ], [ %.pre89.i, %.noexc13 ]
  %i.ed = phi i64 [ %i.dh, %bb.r ], [ %.pre87.i, %.noexc13 ] ; 6 uses
  %i.ee = add nsw i64 %i.ed, -1
  %i.ef = mul nsw i64 %i.ee, %i.ed
  %i.eg = sdiv i64 %i.ef, 2                       ; 2 uses
  %i.eh = mul nsw i64 %i.ed, %.pre-phi.i
  %i.ei = sdiv i64 %i.eh, 2                       ; 3 uses
  %i.ej = icmp sgt i64 %i.ed, 0
  br i1 %i.ej, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIbSaIbEE6resizeEmb.exit.i
  %.pre88.i = load ptr, ptr %i.am, align 8, !tbaa !220
  br label %bb.t

.preheader.i:                                     ; preds = %.noexc14
  %i.ek = icmp sgt i64 %i.fm, 0
  br i1 %i.ek, label %.lr.ph78.i, label %._crit_edge.i

bb.t:                                             ; preds = %.noexc14, %.lr.ph.i
  %i.el = phi ptr [ %.pre88.i, %.lr.ph.i ], [ %i.fi, %.noexc14 ]
  %i.em = phi i64 [ %i.ed, %.lr.ph.i ], [ %i.fm, %.noexc14 ] ; 3 uses
  %.04175.i = phi i64 [ 0, %.lr.ph.i ], [ %i.fl, %.noexc14 ] ; 3 uses
  %i.en = add nsw i64 %i.em, -1
  %i.eo = add nsw i64 %.04175.i, %i.eg            ; 2 uses
  %i.ep = mul nuw nsw i64 %i.en, %i.em
  %.neg.i.i = sdiv i64 %i.ep, -2
  %i.eq = add i64 %.neg.i.i, %i.eo
  %i.er = shl nsw i64 %i.eq, 1
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %i.eo
  %i.et = load i64, ptr %i.es, align 8, !tbaa !142 ; 3 uses
  %i.eu = load i64, ptr %i.k, align 8, !tbaa !211
  %i.ev = load i64, ptr %i.d, align 8, !tbaa !209
  %reass.sub = sub i64 %i.et, %i.em
  %i.ew = add i64 %reass.sub, 1
  %i.ex = add i64 %i.ew, %i.eu
  %i.ey = sub i64 %i.ex, %i.ev
  %i.ez = add i64 %i.ey, %i.er
  %i.fa = load i64, ptr %i.r, align 8, !tbaa !142 ; 2 uses
  %.sroa.speculated.i.i = call i64 @llvm.smin.i64(i64 %i.fa, i64 %i.ez)
  %i.fb = load i64, ptr %i.j, align 8, !tbaa !210 ; 2 uses
  %.not.i.i = icmp ne i64 %i.et, %i.fb
  %i.fc = zext i1 %.not.i.i to i64
  %spec.select.i.i = add nsw i64 %i.et, %i.fc     ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.w, align 8, !tbaa !218 ; 2 uses
  %i.fd = load ptr, ptr %.val.i.i.i, align 8, !tbaa !170
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  %i.ff = load ptr, ptr %i.fe, align 8
  %i.fg = invoke noundef i64 %i.ff(ptr noundef nonnull align 8 dereferenceable(8) %.val.i.i.i, i64 noundef %spec.select.i.i, i64 noundef %i.fb, i64 noundef %.sroa.speculated.i.i, i64 noundef %i.fa)
          to label %.noexc14 unwind label %.loopexit.split-lp.loopexit, !inline_history !805

.noexc14:                                         ; preds = %bb.t
  %i.fh = add nsw i64 %i.fg, %spec.select.i.i
  %i.fi = load ptr, ptr %i.am, align 8, !tbaa !220 ; 2 uses
  %i.fj = getelementptr [8 x i8], ptr %i.fi, i64 %.04175.i
  %i.fk = getelementptr [8 x i8], ptr %i.fj, i64 %i.ei
  store i64 %i.fh, ptr %i.fk, align 8, !tbaa !142
  %i.fl = add nuw nsw i64 %.04175.i, 1            ; 2 uses
  %i.fm = load i64, ptr %i.ac, align 8, !tbaa !840 ; 5 uses
  %i.fn = icmp slt i64 %i.fl, %i.fm
  br i1 %i.fn, label %bb.t, label %.preheader.i, !llvm.loop !806

._crit_edge.i:                                    ; preds = %bb.v, %.preheader.i, %_ZNSt6vectorIbSaIbEE6resizeEmb.exit.i
  %i.fo = phi i64 [ %i.fm, %.preheader.i ], [ %i.ed, %_ZNSt6vectorIbSaIbEE6resizeEmb.exit.i ], [ %i.hl, %bb.v ] ; 7 uses
  %i.fp = load i64, ptr %i.j, align 8, !tbaa !210
  %i.fq = load i64, ptr %i.r, align 8, !tbaa !212
  %.not79.i = icmp slt i64 %i.fo, 0
  br i1 %.not79.i, label %_ZN5arrow12_GLOBAL__N_123QuadraticSpaceMyersDiff4NextEv.exitthread-pre-split, label %.lr.ph82.i

.lr.ph82.i:                                       ; preds = %._crit_edge.i
  %i.fr = add nuw i64 %i.fo, 1
  %i.fs = mul nuw nsw i64 %i.fr, %i.fo
  %.neg.i6284.i = lshr i64 %i.fs, 1
  %i.ft = load ptr, ptr %i.am, align 8, !tbaa !220
  %i.fu = load i64, ptr %i.k, align 8, !tbaa !211
  %i.fv = load i64, ptr %i.d, align 8, !tbaa !209
  %i.fw = add i64 %i.fo, %i.fv
  %i.fx = sub i64 %i.fu, %i.fw
  br label %bb.x

.lr.ph78.i:                                       ; preds = %.preheader.i, %bb.v
  %i.fy = phi i64 [ %i.hl, %bb.v ], [ %i.fm, %.preheader.i ] ; 3 uses
  %.04377.i = phi i64 [ %i.hk, %bb.v ], [ 1, %.preheader.i ] ; 2 uses
  %.04476.i = phi i64 [ %i.hj, %bb.v ], [ 0, %.preheader.i ] ; 2 uses
  %i.fz = add nsw i64 %.04377.i, %i.ei            ; 5 uses
  %i.ga = load ptr, ptr %i.am, align 8, !tbaa !220 ; 2 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %i.fz
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !142
  %i.gd = load i64, ptr %i.k, align 8, !tbaa !211
  %i.ge = load i64, ptr %i.d, align 8, !tbaa !209
  %i.gf = load i64, ptr %i.r, align 8, !tbaa !142 ; 3 uses
  %i.gg = add nsw i64 %i.fy, -1
  %i.gh = add nsw i64 %.04476.i, %i.eg            ; 2 uses
  %i.gi = mul nuw nsw i64 %i.gg, %i.fy
  %.neg.i53.i = sdiv i64 %i.gi, -2
  %i.gj = add i64 %.neg.i53.i, %i.gh
  %i.gk = shl nsw i64 %i.gj, 1
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %i.gh
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !142 ; 3 uses
  %reass.sub62 = sub i64 %i.gk, %i.fy
  %i.gn = add i64 %reass.sub62, 1
  %i.go = add i64 %i.gn, %i.gd
  %i.gp = sub i64 %i.go, %i.ge
  %i.gq = add i64 %i.gp, %i.gm                    ; 2 uses
  %.sroa.speculated.i54.i = call i64 @llvm.smin.i64(i64 %i.gf, i64 %i.gq)
  %.not.i57.i = icmp sgt i64 %i.gf, %i.gq
  %i.gr = zext i1 %.not.i57.i to i64
  %spec.select.i58.i = add nsw i64 %.sroa.speculated.i54.i, %i.gr
  %.val.i.i59.i = load ptr, ptr %i.w, align 8, !tbaa !218 ; 2 uses
  %i.gs = load i64, ptr %i.j, align 8, !tbaa !210
  %i.gt = load ptr, ptr %.val.i.i59.i, align 8, !tbaa !170
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 24
  %i.gv = load ptr, ptr %i.gu, align 8
  %i.gw = invoke noundef i64 %i.gv(ptr noundef nonnull align 8 dereferenceable(8) %.val.i.i59.i, i64 noundef %i.gm, i64 noundef %i.gs, i64 noundef %spec.select.i58.i, i64 noundef %i.gf)
          to label %.noexc15 unwind label %.loopexit, !inline_history !805

.noexc15:                                         ; preds = %.lr.ph78.i
  %i.gx = add nsw i64 %i.gw, %i.gm                ; 2 uses
  %.not47.i = icmp slt i64 %i.gx, %i.gc
  br i1 %.not47.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.noexc15
  %i.gy = load ptr, ptr %i.bk, align 8, !tbaa !214
  %i.gz = sdiv i64 %i.fz, 64
  %i.ha = getelementptr inbounds [8 x i8], ptr %i.gy, i64 %i.gz
  %i.hb = and i64 %i.fz, -9223372036854775745
  %i.hc = icmp ugt i64 %i.hb, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i = select i1 %i.hc, i64 -8, i64 0
  %storemerge.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ha, i64 %storemerge.idx.i.i.i.i.i.i ; 2 uses
  %i.hd = and i64 %i.fz, 63
  %i.he = shl nuw i64 1, %i.hd
  %i.hf = load i64, ptr %storemerge.i.i.i.i.i.i, align 8, !tbaa !142
  %i.hg = or i64 %i.hf, %i.he
  store i64 %i.hg, ptr %storemerge.i.i.i.i.i.i, align 8, !tbaa !142
  %i.hh = load ptr, ptr %i.am, align 8, !tbaa !220
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %i.fz
  store i64 %i.gx, ptr %i.hi, align 8, !tbaa !142
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.noexc15
  %i.hj = add nuw nsw i64 %.04476.i, 1            ; 2 uses
  %i.hk = add nuw nsw i64 %.04377.i, 1
  %i.hl = load i64, ptr %i.ac, align 8, !tbaa !840 ; 3 uses
  %i.hm = icmp slt i64 %i.hj, %i.hl
  br i1 %i.hm, label %.lr.ph78.i, label %._crit_edge.i, !llvm.loop !807

bb.w:                                             ; preds = %bb.x
  %i.hn = add nuw i64 %.04080.i, 1
  %exitcond.not.i = icmp eq i64 %.04080.i, %i.fo
  br i1 %exitcond.not.i, label %_ZN5arrow12_GLOBAL__N_123QuadraticSpaceMyersDiff4NextEv.exitthread-pre-split, label %bb.x, !llvm.loop !808

bb.x:                                             ; preds = %bb.w, %.lr.ph82.i
  %.04080.i = phi i64 [ 0, %.lr.ph82.i ], [ %i.hn, %bb.w ] ; 3 uses
  %i.ho = add nsw i64 %.04080.i, %i.ei            ; 4 uses
  %i.hp = sub i64 %i.ho, %.neg.i6284.i
  %i.hq = shl nsw i64 %i.hp, 1
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %i.ho
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !142 ; 2 uses
  %invariant.op.i = add i64 %i.fx, %i.hs
  %.reass.i = add i64 %invariant.op.i, %i.hq
  %i.ht = icmp eq i64 %i.hs, %i.fp
  %i.hu = icmp sle i64 %i.fq, %.reass.i
  %i.hv = select i1 %i.ht, i1 %i.hu, i1 false
  br i1 %i.hv, label %bb.y, label %bb.w

bb.y:                                             ; preds = %bb.x
  store i64 %i.ho, ptr %i.ab, align 8, !tbaa !213
  br label %_ZN5arrow12_GLOBAL__N_123QuadraticSpaceMyersDiff4NextEv.exit

_ZN5arrow12_GLOBAL__N_123QuadraticSpaceMyersDiff4NextEv.exitthread-pre-split: ; preds = %bb.w, %._crit_edge.i
  %.val12.pr = load i64, ptr %i.ab, align 8, !tbaa !213
  br label %_ZN5arrow12_GLOBAL__N_123QuadraticSpaceMyersDiff4NextEv.exit

_ZN5arrow12_GLOBAL__N_123QuadraticSpaceMyersDiff4NextEv.exit: ; preds = %_ZN5arrow12_GLOBAL__N_123QuadraticSpaceMyersDiff4NextEv.exitthread-pre-split, %bb.y
  %.val12 = phi i64 [ %.val12.pr, %_ZN5arrow12_GLOBAL__N_123QuadraticSpaceMyersDiff4NextEv.exitthread-pre-split ], [ %i.ho, %bb.y ]
  %.not = icmp eq i64 %.val12, -1
  br i1 %.not, label %bb.n, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN5arrow12_GLOBAL__N_123QuadraticSpaceMyersDiff4NextEv.exit, %.thread, %bb.m
  %i.hw = phi i64 [ %.pre69143, %.thread ], [ %.pre69, %bb.m ], [ %i.fo, %_ZN5arrow12_GLOBAL__N_123QuadraticSpaceMyersDiff4NextEv.exit ]
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !208 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26, !noalias !841
  %i.hz = add nsw i64 %i.hw, 1                    ; 3 uses
  store i64 %i.hz, ptr %i.a, align 8, !tbaa !142, !noalias !841
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26, !noalias !841
  invoke void @_ZN5arrow19AllocateEmptyBitmapElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.788") align 8 %3, i64 noundef %i.hz, ptr noundef %i.hy)
          to label %.noexc26 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc26:                                         ; preds = %._crit_edge
  %i.ia = load ptr, ptr %3, align 8, !tbaa !74, !noalias !841
  %i.ib = icmp eq ptr %i.ia, null
  br i1 %i.ib, label %bb.aa, label %bb.z, !prof !75

bb.z:                                             ; preds = %.noexc26
  call void @_ZN5arrow6ResultISt10shared_ptrINS_11StructArrayEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #26
  br label %bb.fc

bb.aa:                                            ; preds = %.noexc26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26, !noalias !841
  call void @llvm.experimental.noalias.scope.decl(metadata !842)
  call void @llvm.experimental.noalias.scope.decl(metadata !843)
  %i.ic = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ie = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.if = load <2 x ptr>, ptr %i.ic, align 8, !tbaa !97, !noalias !844
  store ptr null, ptr %i.ie, align 8, !tbaa !126, !noalias !844
  store <2 x ptr> %i.if, ptr %4, align 16, !tbaa !97, !alias.scope !845, !noalias !841
  store ptr null, ptr %i.ic, align 8, !tbaa !225, !noalias !844
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26, !noalias !841
  %i.ig = shl i64 %i.hz, 3
  invoke void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.303") align 8 %5, i64 noundef %i.ig, ptr noundef %i.hy)
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.ih = load ptr, ptr %5, align 8, !tbaa !74, !noalias !841
  %i.ii = icmp eq ptr %i.ih, null
  br i1 %i.ii, label %bb.ae, label %bb.ac, !prof !75

bb.ac:                                            ; preds = %bb.ab
  call void @_ZN5arrow6ResultISt10shared_ptrINS_11StructArrayEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #26
  br label %bb.es

bb.ad:                                            ; preds = %bb.aa
  %i.ij = landingpad { ptr, i32 }
          cleanup
  br label %bb.fb

bb.ae:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26, !noalias !841
  call void @llvm.experimental.noalias.scope.decl(metadata !846)
  call void @llvm.experimental.noalias.scope.decl(metadata !847)
  %i.ik = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !226, !noalias !848 ; 2 uses
  store i64 %i.il, ptr %6, align 8, !tbaa !226, !alias.scope !849, !noalias !841
  store ptr null, ptr %i.ik, align 8, !tbaa !226, !noalias !848
  %.cast.i = inttoptr i64 %i.il to ptr
  %i.im = getelementptr inbounds nuw i8, ptr %.cast.i, i64 16
  %i.in = load ptr, ptr %i.im, align 8            ; 2 uses
  %i.io = load i64, ptr %i.ab, align 8, !tbaa !213, !noalias !841 ; 3 uses
  %i.ip = load i64, ptr %i.ac, align 8, !tbaa !840, !noalias !841 ; 5 uses
  %i.iq = load ptr, ptr %i.am, align 8, !tbaa !220, !noalias !841
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.iq, i64 %i.io
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !142 ; 3 uses
  %i.it = icmp sgt i64 %i.ip, 0
  br i1 %i.it, label %.lr.ph.i21, label %._crit_edge.i16

.lr.ph.i21:                                       ; preds = %bb.ae
  %i.iu = load i64, ptr %i.r, align 8, !tbaa !142, !noalias !841
  %i.iv = load i64, ptr %i.k, align 8, !tbaa !211, !noalias !841
  %i.iw = load i64, ptr %i.d, align 8, !tbaa !209, !noalias !841
  %i.ix = add nuw nsw i64 %i.ip, 1
  %i.iy = mul nuw nsw i64 %i.ix, %i.ip
  %.neg.i273.i = lshr i64 %i.iy, 1
  %i.iz = sub i64 %i.io, %.neg.i273.i
  %i.ja = shl nsw i64 %i.iz, 1
  %.neg41 = sub i64 %i.is, %i.ip
  %i.jb = add i64 %.neg41, %i.ja
  %i.jc = add i64 %i.jb, %i.iv
  %i.jd = sub i64 %i.jc, %i.iw
  %.sroa.speculated.i.i22 = call i64 @llvm.smin.i64(i64 %i.iu, i64 %i.jd)
  br label %bb.af

._crit_edge.i16:                                  ; preds = %bb.af, %bb.ae
  %.sroa.023.0.lcssa.i = phi i64 [ %i.is, %bb.ae ], [ %i.lb, %bb.af ]
  %i.je = load ptr, ptr %4, align 16, !tbaa !225, !noalias !841
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  %i.jg = load ptr, ptr %i.jf, align 8            ; 2 uses
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !78
  %i.ji = and i8 %i.jh, -2
  store i8 %i.ji, ptr %i.jg, align 1, !tbaa !78
  %i.jj = load i64, ptr %i.d, align 8, !tbaa !209, !noalias !841
  %i.jk = sub nsw i64 %.sroa.023.0.lcssa.i, %i.jj
  store i64 %i.jk, ptr %i.in, align 8, !tbaa !142
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26, !noalias !841
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26, !noalias !841
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26, !noalias !841
  call void @llvm.experimental.noalias.scope.decl(metadata !850)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26, !noalias !851
  store ptr null, ptr %9, align 16, !tbaa !184, !alias.scope !850, !noalias !841
  %i.jl = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  invoke void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN5arrow12BooleanArrayESaIvEJRlSt10shared_ptrINS4_6BufferEEEEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %i.jl, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr nonnull %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.ag unwind label %.thread.i

bb.af:                                            ; preds = %bb.af, %.lr.ph.i21
  %.068223.i = phi i64 [ %i.ip, %.lr.ph.i21 ], [ %i.ks, %bb.af ] ; 7 uses
end_hunk_0
