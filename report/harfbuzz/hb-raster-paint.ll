Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-raster-paint?download=true
inline.NumInlined: 583
inline.NumDeleted: 258
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZL35hb_raster_paint_push_clip_rectangleP16hb_paint_funcs_tPvffffS1_:bb.a
  %i.db = zext i32 %i.da to i64
  %.not614 = icmp ugt i64 %i.cy, %i.db
  br i1 %.not614, label %_ZNK16hb_raster_clip_t20has_valid_alpha_maskEv.exit.thread, label %.thread544, !prof !210

_ZNK16hb_raster_clip_t20has_valid_alpha_maskEv.exit.thread: ; preds = %bb.f, %bb.g, %_ZNK16hb_raster_clip_t20has_valid_alpha_maskEv.exit
  %i.dc = extractelement <2 x i32> %i.ad, i64 0
  %i.dd = extractelement <2 x i32> %i.ad, i64 1
  tail call fastcc void @_ZL31hb_raster_paint_push_empty_clipP17hb_raster_paint_tjj(ptr noundef nonnull %1, i32 noundef %i.dc, i32 noundef %i.dd)
  br label %_ZN16hb_raster_clip_tD2Ev.exit

_ZNK16hb_raster_clip_t20has_valid_alpha_maskEv.exit.thread542: ; preds = %_ZN17hb_raster_paint_t12current_clipEv.exit
  br i1 %i.bc, label %bb.h, label %.thread544

.thread544:                                       ; preds = %_ZNK16hb_raster_clip_t20has_valid_alpha_maskEv.exit, %_ZNK16hb_raster_clip_t20has_valid_alpha_maskEv.exit.thread542
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !39 ; 2 uses
  %i.dg = icmp sgt i64 %i.df, 0
  br i1 %i.dg, label %_ZN17hb_raster_paint_t11charge_workEl.exit.thread, label %_ZN17hb_raster_paint_t11charge_workEl.exit, !prof !47

_ZN17hb_raster_paint_t11charge_workEl.exit.thread: ; preds = %.thread544
  %i.dh = extractelement <2 x i32> %i.ad, i64 0
  %i.di = zext i32 %i.dh to i64
  %i.dj = extractelement <2 x i32> %i.ad, i64 1
  %i.dk = zext i32 %i.dj to i64
  %i.dl = mul nuw nsw i64 %i.dk, %i.di
  %i.dm = sub nsw i64 %i.df, %i.dl
  store i64 %i.dm, ptr %i.de, align 8, !tbaa !39
  br label %bb.h

_ZN17hb_raster_paint_t11charge_workEl.exit:       ; preds = %.thread544
  %i.dn = extractelement <2 x i32> %i.ad, i64 0
  %i.do = extractelement <2 x i32> %i.ad, i64 1
  tail call fastcc void @_ZL31hb_raster_paint_push_empty_clipP17hb_raster_paint_tjj(ptr noundef nonnull %1, i32 noundef %i.dn, i32 noundef %i.do)
  br label %_ZN16hb_raster_clip_tD2Ev.exit

bb.h:                                             ; preds = %_ZNK16hb_raster_clip_t20has_valid_alpha_maskEv.exit.thread542, %_ZN17hb_raster_paint_t11charge_workEl.exit.thread
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 132 ; 4 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !113, !noalias !211 ; 2 uses
  %.not.i241 = icmp eq i32 %i.dq, 0
  br i1 %.not.i241, label %_ZN17hb_raster_paint_t12acquire_clipEjj.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !80, !noalias !212
  %i.dt = add i32 %i.dq, -1
  %i.du = zext i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [64 x i8], ptr %i.ds, i64 %i.du ; 5 uses
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !83, !noalias !212
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !86, !noalias !212
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !84, !noalias !212
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.dv, i8 0, i64 16, i1 false), !noalias !212
  %.sroa.19.i.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.19.i.sroa.7, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.19.i.sroa.7.0..sroa_idx, i64 3, i1 false)
  %i.eb = load ptr, ptr %i.dr, align 8, !tbaa !80, !noalias !212
  %i.ec = load i32, ptr %i.dp, align 4, !tbaa !85, !noalias !212
  %i.ed = add i32 %i.ec, -1                       ; 2 uses
  %i.ee = zext i32 %i.ed to i64
  %i.ef = getelementptr inbounds nuw [64 x i8], ptr %i.eb, i64 %i.ee ; 3 uses
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !83, !noalias !212
  %i.eh = add i32 %i.eg, -1
  %spec.select.i.i.i.i.i.i = icmp ult i32 %i.eh, -2
  br i1 %spec.select.i.i.i.i.i.i, label %bb.j, label %_ZN16hb_raster_clip_tD2Ev.exit.i

bb.j:                                             ; preds = %bb.i
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  store i32 0, ptr %i.ei, align 4, !tbaa !86, !noalias !212
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !84, !noalias !212
  tail call void @hb_free(ptr noundef %i.ek) #17, !noalias !212
  %.pre.i.i = load i32, ptr %i.dp, align 4, !tbaa !85, !noalias !212
  %.pre3.i.i = add i32 %.pre.i.i, -1
  br label %_ZN16hb_raster_clip_tD2Ev.exit.i

_ZN16hb_raster_clip_tD2Ev.exit.i:                 ; preds = %bb.j, %bb.i
  %.pre-phi.i.i = phi i32 [ %i.ed, %bb.i ], [ %.pre3.i.i, %bb.j ]
  store i32 %.pre-phi.i.i, ptr %i.dp, align 4, !tbaa !85, !noalias !212
  br label %_ZN17hb_raster_paint_t12acquire_clipEjj.exit

_ZN17hb_raster_paint_t12acquire_clipEjj.exit:     ; preds = %bb.h, %_ZN16hb_raster_clip_tD2Ev.exit.i
  %.sroa.0.4 = phi i32 [ 0, %bb.h ], [ %i.dw, %_ZN16hb_raster_clip_tD2Ev.exit.i ] ; 17 uses
  %.sroa.15.3 = phi i32 [ 0, %bb.h ], [ %i.dy, %_ZN16hb_raster_clip_tD2Ev.exit.i ] ; 11 uses
  %.sroa.26.4 = phi ptr [ null, %bb.h ], [ %i.ea, %_ZN16hb_raster_clip_tD2Ev.exit.i ] ; 11 uses
  %i.el = extractelement <2 x i32> %i.ad, i64 0   ; 4 uses
  %i.em = add i32 %i.el, 3
  %i.en = and i32 %i.em, -4                       ; 9 uses
  br i1 %i.bc, label %bb.k, label %.critedge

bb.k:                                             ; preds = %_ZN17hb_raster_paint_t12acquire_clipEjj.exit
  %i.eo = load i8, ptr %i.ck, align 4, !tbaa !90, !range !71, !noundef !72
  %i.ep = trunc nuw i8 %i.eo to i1
  br i1 %i.ep, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.eq = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 32
  %i.er = load <2 x i32>, ptr %i.eq, align 4, !tbaa !66
  %i.es = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.cb, <2 x i32> %i.er) ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 40
  %i.eu = load <2 x i32>, ptr %i.et, align 4, !tbaa !66
  %i.ev = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.cc, <2 x i32> %i.eu) ; 3 uses
  %i.ew = extractelement <2 x i32> %i.ev, i64 0
  %.sroa.speculated16.i = tail call i32 @llvm.smin.i32(i32 %i.ew, i32 %i.el)
  %.sroa.speculated12.i = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated16.i, i32 0)
  %i.ex = extractelement <2 x i32> %i.ev, i64 1
  %i.ey = extractelement <2 x i32> %i.ad, i64 1
  %.sroa.speculated7.i = tail call i32 @llvm.smin.i32(i32 %i.ex, i32 %i.ey)
  %.sroa.speculated.i246 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated7.i, i32 0)
  %i.ez = extractelement <2 x i32> %i.es, i64 0
  %i.fa = extractelement <2 x i32> %i.es, i64 1
  br label %.thread561

bb.m:                                             ; preds = %bb.k
  %i.fb = zext i32 %i.en to i64
  %i.fc = extractelement <2 x i32> %i.ad, i64 1   ; 2 uses
  %i.fd = zext i32 %i.fc to i64
  %i.fe = mul nuw i64 %i.fb, %i.fd                ; 4 uses
  %i.ff = icmp ugt i64 %i.fe, 1073741824
  br i1 %i.ff, label %.thread545, label %bb.n, !prof !13

bb.n:                                             ; preds = %bb.m
  %i.fg = trunc nuw nsw i64 %i.fe to i32          ; 7 uses
  %i.fh = icmp slt i32 %.sroa.0.4, 0
  br i1 %i.fh, label %.thread545, label %bb.o, !prof !13

bb.o:                                             ; preds = %bb.n
  %.not.i.i247 = icmp samesign ult i32 %.sroa.0.4, %i.fg
  br i1 %.not.i.i247, label %.preheader.i.i, label %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread.i, !prof !13

.preheader.i.i:                                   ; preds = %bb.o, %.preheader.i.i
  %.053.i.i = phi i32 [ %i.fk, %.preheader.i.i ], [ %.sroa.0.4, %bb.o ] ; 2 uses
  %i.fi = lshr i32 %.053.i.i, 1
  %i.fj = add nuw nsw i32 %.053.i.i, 8
  %i.fk = add nuw nsw i32 %i.fj, %i.fi            ; 7 uses
  %i.fl = icmp samesign ult i32 %i.fk, %i.fg
  br i1 %i.fl, label %.preheader.i.i, label %.thread39.i.i, !llvm.loop !3

.thread39.i.i:                                    ; preds = %.preheader.i.i
  %.not8.i.i.i.i = icmp eq i32 %.sroa.0.4, 0
  br i1 %.not8.i.i.i.i, label %bb.p, label %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i.i

bb.p:                                             ; preds = %.thread39.i.i
  %.not9.i.i.i.i = icmp eq ptr %.sroa.26.4, null
  br i1 %.not9.i.i.i.i, label %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fm = zext nneg i32 %i.fk to i64
  %i.fn = tail call ptr @hb_malloc(i64 noundef %i.fm) #17 ; 4 uses
  %.not10.i.i.i.i = icmp eq ptr %i.fn, null
  br i1 %.not10.i.i.i.i, label %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.i, label %bb.r, !prof !13

bb.r:                                             ; preds = %bb.q
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.15.3, 0
  br i1 %.not.i.i.i.i.i, label %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread.i, label %bb.s, !prof !13

bb.s:                                             ; preds = %bb.r
  %i.fo = zext i32 %.sroa.15.3 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fn, ptr nonnull readonly align 1 %.sroa.26.4, i64 range(i64 0, 103079215081) %i.fo, i1 false), !alias.scope !213
  br label %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread.i

_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i.i: ; preds = %bb.p, %.thread39.i.i
  %i.fp = phi ptr [ null, %bb.p ], [ %.sroa.26.4, %.thread39.i.i ]
  %i.fq = zext nneg i32 %i.fk to i64
  %i.fr = tail call ptr @hb_realloc(ptr noundef %i.fp, i64 noundef %i.fq) #17 ; 2 uses
  %.not22.i.i = icmp eq ptr %i.fr, null
  br i1 %.not22.i.i, label %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.i, label %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread.i, !prof !114

_ZN11hb_vector_tIhLb0EE5allocEjb.exit.i:          ; preds = %bb.q, %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i.i
  %i.fs = xor i32 %.sroa.0.4, -1
  br label %.thread545

_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread.i:   ; preds = %bb.r, %bb.s, %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i.i, %bb.o
  %.sroa.0.5 = phi i32 [ %i.fk, %bb.r ], [ %.sroa.0.4, %bb.o ], [ %i.fk, %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i.i ], [ %i.fk, %bb.s ] ; 3 uses
  %.sroa.26.5 = phi ptr [ %i.fn, %bb.r ], [ %.sroa.26.4, %bb.o ], [ %i.fr, %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i.i ], [ %i.fn, %bb.s ] ; 6 uses
  %i.ft = icmp ult i32 %.sroa.15.3, %i.fg
  br i1 %i.ft, label %_ZN11hb_vector_tIhLb0EE11grow_vectorIhTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i, label %bb.t

_ZN11hb_vector_tIhLb0EE11grow_vectorIhTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i: ; preds = %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread.i
  %i.fu = sub nuw nsw i32 %i.fg, %.sroa.15.3
  %i.fv = zext nneg i32 %.sroa.15.3 to i64
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.26.5, i64 %i.fv
  %i.fx = zext nneg i32 %i.fu to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.fw, i8 0, i64 %i.fx, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread.i, %_ZN11hb_vector_tIhLb0EE11grow_vectorIhTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i
  %.not.i248 = icmp eq i64 %i.fe, 0
  br i1 %.not.i248, label %_ZL9hb_memsetPvij.exit, label %bb.u, !prof !13

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.memset.p0.i64(ptr align 1 %.sroa.26.5, i8 0, i64 %i.fe, i1 false)
  br label %_ZL9hb_memsetPvij.exit

_ZL9hb_memsetPvij.exit:                           ; preds = %bb.t, %bb.u
  %i.fy = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 48
  %i.fz = load <2 x i32>, ptr %i.fy, align 8, !tbaa !66
  %i.ga = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.cb, <2 x i32> %i.fz) ; 5 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 56
  %i.gc = load <2 x i32>, ptr %i.gb, align 8, !tbaa !66
  %i.gd = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.cc, <2 x i32> %i.gc) ; 3 uses
  %i.ge = icmp slt <2 x i32> %i.ga, %i.gd         ; 2 uses
  %7 = extractelement <2 x i1> %i.ge, i64 0
  %8 = extractelement <2 x i1> %i.ge, i64 1
  %or.cond = select i1 %7, i1 %8, i1 false
  br i1 %or.cond, label %_ZL9hb_memcpyPvPKvm.exit.lr.ph, label %.thread561

_ZL9hb_memcpyPvPKvm.exit.lr.ph:                   ; preds = %_ZL9hb_memsetPvij.exit
  %i.gf = extractelement <2 x i32> %i.ga, i64 0   ; 2 uses
  %i.gg = extractelement <2 x i32> %i.gd, i64 0   ; 3 uses
  %i.gh = sub nuw nsw i32 %i.gg, %i.gf
  %i.gi = zext nneg i32 %i.gh to i64              ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8 ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24 ; 3 uses
  %i.gl = zext nneg i32 %i.gf to i64              ; 4 uses
  %invariant.gep = getelementptr inbounds nuw i8, ptr %.sroa.26.5, i64 %i.gl ; 3 uses
  %i.gm = extractelement <2 x i32> %i.ga, i64 1   ; 3 uses
  %i.gn = zext nneg i32 %i.gm to i64              ; 4 uses
  %i.go = extractelement <2 x i32> %i.gd, i64 1   ; 3 uses
  %wide.trip.count809 = zext nneg i32 %i.go to i64 ; 3 uses
  %i.gp = sub nsw i64 %wide.trip.count809, %i.gn
  %xtraiter = and i64 %i.gp, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZL9hb_memcpyPvPKvm.exit.prol.loopexit, label %_ZL9hb_memcpyPvPKvm.exit.prol

_ZL9hb_memcpyPvPKvm.exit.prol:                    ; preds = %_ZL9hb_memcpyPvPKvm.exit.lr.ph
  %i.gq = load ptr, ptr %i.gj, align 8, !tbaa !107
  %i.gr = load i32, ptr %i.gk, align 8, !tbaa !109
  %i.gs = mul i32 %i.gr, %i.gm
  %i.gt = zext i32 %i.gs to i64
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.gt
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.gl
  %i.gw = mul i32 %i.en, %i.gm
  %i.gx = zext i32 %i.gw to i64
  %gep.prol = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %i.gx
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %gep.prol, ptr readonly align 1 %i.gv, i64 range(i64 0, 103079215081) %i.gi, i1 false), !alias.scope !214
  %indvars.iv.next807.prol = add nuw nsw i64 %i.gn, 1
  br label %_ZL9hb_memcpyPvPKvm.exit.prol.loopexit

_ZL9hb_memcpyPvPKvm.exit.prol.loopexit:           ; preds = %_ZL9hb_memcpyPvPKvm.exit.prol, %_ZL9hb_memcpyPvPKvm.exit.lr.ph
  %indvars.iv806.unr = phi i64 [ %i.gn, %_ZL9hb_memcpyPvPKvm.exit.lr.ph ], [ %indvars.iv.next807.prol, %_ZL9hb_memcpyPvPKvm.exit.prol ]
  %i.gy = add nsw i64 %wide.trip.count809, -1
  %i.gz = icmp eq i64 %i.gy, %i.gn
  br i1 %i.gz, label %.thread561, label %_ZL9hb_memcpyPvPKvm.exit

_ZL9hb_memcpyPvPKvm.exit:                         ; preds = %_ZL9hb_memcpyPvPKvm.exit.prol.loopexit, %_ZL9hb_memcpyPvPKvm.exit
  %indvars.iv806 = phi i64 [ %indvars.iv.next807.1, %_ZL9hb_memcpyPvPKvm.exit ], [ %indvars.iv806.unr, %_ZL9hb_memcpyPvPKvm.exit.prol.loopexit ] ; 3 uses
  %i.ha = load ptr, ptr %i.gj, align 8, !tbaa !107
  %i.hb = load i32, ptr %i.gk, align 8, !tbaa !109
  %i.hc = trunc nuw i64 %indvars.iv806 to i32     ; 2 uses
  %i.hd = mul i32 %i.hb, %i.hc
  %i.he = zext i32 %i.hd to i64
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.he
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.gl
  %i.hh = mul i32 %i.en, %i.hc
  %i.hi = zext i32 %i.hh to i64
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %i.hi
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %gep, ptr readonly align 1 %i.hg, i64 range(i64 0, 103079215081) %i.gi, i1 false), !alias.scope !214
  %i.hj = load ptr, ptr %i.gj, align 8, !tbaa !107
  %i.hk = load i32, ptr %i.gk, align 8, !tbaa !109
  %i.hl = trunc i64 %indvars.iv806 to i32
  %i.hm = add i32 %i.hl, 1                        ; 2 uses
  %i.hn = mul i32 %i.hk, %i.hm
  %i.ho = zext i32 %i.hn to i64
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hj, i64 %i.ho
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.gl
  %i.hr = mul i32 %i.en, %i.hm
  %i.hs = zext i32 %i.hr to i64
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %i.hs
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %gep.1, ptr readonly align 1 %i.hq, i64 range(i64 0, 103079215081) %i.gi, i1 false), !alias.scope !214
  %indvars.iv.next807.1 = add nuw nsw i64 %indvars.iv806, 2 ; 2 uses
  %exitcond810.not.1 = icmp eq i64 %indvars.iv.next807.1, %wide.trip.count809
  br i1 %exitcond810.not.1, label %.thread561, label %_ZL9hb_memcpyPvPKvm.exit, !llvm.loop !199

.thread545:                                       ; preds = %bb.n, %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.i, %bb.m
  %.sroa.0.0550 = phi i32 [ %.sroa.0.4, %bb.m ], [ %i.fs, %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.i ], [ %.sroa.0.4, %bb.n ]
  tail call fastcc void @_ZL31hb_raster_paint_push_empty_clipP17hb_raster_paint_tjj(ptr noundef nonnull %1, i32 noundef %i.el, i32 noundef %i.fc)
  br label %bb.ay

.critedge:                                        ; preds = %_ZN17hb_raster_paint_t12acquire_clipEjj.exit
  %i.ht = zext i32 %i.en to i64
  %i.hu = extractelement <2 x i32> %i.ad, i64 1   ; 2 uses
  %i.hv = zext i32 %i.hu to i64
  %i.hw = mul nuw i64 %i.ht, %i.hv                ; 4 uses
  %i.hx = icmp ugt i64 %i.hw, 1073741824
  br i1 %i.hx, label %.thread597, label %bb.v, !prof !13

bb.v:                                             ; preds = %.critedge
  %i.hy = trunc nuw nsw i64 %i.hw to i32          ; 14 uses
  %i.hz = icmp slt i32 %.sroa.0.4, 0
  br i1 %i.hz, label %.thread597, label %bb.w, !prof !13

bb.w:                                             ; preds = %bb.v
  %.not.i.i254 = icmp samesign ult i32 %.sroa.0.4, %i.hy
  br i1 %.not.i.i254, label %.preheader.i.i258, label %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread.i255, !prof !13

.preheader.i.i258:                                ; preds = %bb.w, %.preheader.i.i258
  %.053.i.i259 = phi i32 [ %i.ic, %.preheader.i.i258 ], [ %.sroa.0.4, %bb.w ] ; 2 uses
  %i.ia = lshr i32 %.053.i.i259, 1
  %i.ib = add nuw nsw i32 %.053.i.i259, 8
  %i.ic = add nuw nsw i32 %i.ib, %i.ia            ; 7 uses
  %i.id = icmp samesign ult i32 %i.ic, %i.hy
  br i1 %i.id, label %.preheader.i.i258, label %.thread39.i.i260, !llvm.loop !3

.thread39.i.i260:                                 ; preds = %.preheader.i.i258
  %.not8.i.i.i.i261 = icmp eq i32 %.sroa.0.4, 0
  br i1 %.not8.i.i.i.i261, label %bb.x, label %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i.i262

bb.x:                                             ; preds = %.thread39.i.i260
  %.not9.i.i.i.i269 = icmp eq ptr %.sroa.26.4, null
  br i1 %.not9.i.i.i.i269, label %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i.i262, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ie = zext nneg i32 %i.ic to i64
  %i.if = tail call ptr @hb_malloc(i64 noundef %i.ie) #17 ; 4 uses
  %.not10.i.i.i.i270 = icmp eq ptr %i.if, null
  br i1 %.not10.i.i.i.i270, label %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.i268, label %bb.z, !prof !13

bb.z:                                             ; preds = %bb.y
  %.not.i.i.i.i.i271 = icmp eq i32 %.sroa.15.3, 0
  br i1 %.not.i.i.i.i.i271, label %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread.i255, label %bb.aa, !prof !13

bb.aa:                                            ; preds = %bb.z
  %i.ig = zext i32 %.sroa.15.3 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.if, ptr nonnull readonly align 1 %.sroa.26.4, i64 range(i64 0, 103079215081) %i.ig, i1 false), !alias.scope !215
  br label %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread.i255

_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i.i262: ; preds = %bb.x, %.thread39.i.i260
  %i.ih = phi ptr [ null, %bb.x ], [ %.sroa.26.4, %.thread39.i.i260 ]
  %i.ii = zext nneg i32 %i.ic to i64
  %i.ij = tail call ptr @hb_realloc(ptr noundef %i.ih, i64 noundef %i.ii) #17 ; 2 uses
  %.not22.i.i263 = icmp eq ptr %i.ij, null
  br i1 %.not22.i.i263, label %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.i268, label %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread.i255, !prof !114

_ZN11hb_vector_tIhLb0EE5allocEjb.exit.i268:       ; preds = %bb.y, %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i.i262
  %i.ik = xor i32 %.sroa.0.4, -1
  br label %.thread597

_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread.i255: ; preds = %bb.z, %bb.aa, %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i.i262, %bb.w
  %.sroa.0.7 = phi i32 [ %i.ic, %bb.z ], [ %.sroa.0.4, %bb.w ], [ %i.ic, %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i.i262 ], [ %i.ic, %bb.aa ] ; 6 uses
  %.sroa.26.7 = phi ptr [ %i.if, %bb.z ], [ %.sroa.26.4, %bb.w ], [ %i.ij, %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i.i262 ], [ %i.if, %bb.aa ] ; 12 uses
  %i.il = icmp ult i32 %.sroa.15.3, %i.hy
  br i1 %i.il, label %_ZN11hb_vector_tIhLb0EE11grow_vectorIhTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i257, label %bb.ab

_ZN11hb_vector_tIhLb0EE11grow_vectorIhTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i257: ; preds = %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread.i255
  %i.im = sub nuw nsw i32 %i.hy, %.sroa.15.3
  %i.in = zext nneg i32 %.sroa.15.3 to i64
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.26.7, i64 %i.in
  %i.ip = zext nneg i32 %i.im to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.io, i8 0, i64 %i.ip, i1 false)
  br label %bb.ab

.thread597:                                       ; preds = %.critedge, %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.i268, %bb.v
  %.sroa.0.1574 = phi i32 [ %.sroa.0.4, %.critedge ], [ %i.ik, %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.i268 ], [ %.sroa.0.4, %bb.v ]
  tail call fastcc void @_ZL31hb_raster_paint_push_empty_clipP17hb_raster_paint_tjj(ptr noundef nonnull %1, i32 noundef %i.el, i32 noundef %i.hu)
  br label %bb.ay

bb.ab:                                            ; preds = %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread.i255, %_ZN11hb_vector_tIhLb0EE11grow_vectorIhTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i257
  %.not.i273 = icmp eq i64 %i.hw, 0
  br i1 %.not.i273, label %_ZL9hb_memsetPvij.exit274, label %bb.ac, !prof !13

bb.ac:                                            ; preds = %bb.ab
  tail call void @llvm.memset.p0.i64(ptr align 1 %.sroa.26.7, i8 0, i64 %i.hw, i1 false)
  br label %_ZL9hb_memsetPvij.exit274

_ZL9hb_memsetPvij.exit274:                        ; preds = %bb.ab, %bb.ac
  %i.iq = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 48
  %i.ir = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 56
  %i.is = load <2 x i32>, ptr %i.iq, align 8, !tbaa !66
  %i.it = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.cb, <2 x i32> %i.is) ; 5 uses
  %i.iu = load <2 x i32>, ptr %i.ir, align 8, !tbaa !66
  %i.iv = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.cc, <2 x i32> %i.iu) ; 6 uses
  %i.iw = icmp slt <2 x i32> %i.it, %i.iv         ; 2 uses
  %9 = extractelement <2 x i1> %i.iw, i64 0
  %10 = extractelement <2 x i1> %i.iw, i64 1
  %or.cond232 = select i1 %9, i1 %10, i1 false
  br i1 %or.cond232, label %.preheader620.preheader, label %.thread561

.preheader620.preheader:                          ; preds = %_ZL9hb_memsetPvij.exit274
  %i.ix = load <2 x i32>, ptr %i.y, align 8, !tbaa !66
  %i.iy = sitofp <2 x i32> %i.ix to <2 x float>   ; 4 uses
  %i.iz = shufflevector <2 x float> %i.aq, <2 x float> %i.ar, <2 x i32> <i32 1, i32 3>
  %i.ja = shufflevector <2 x float> %i.iy, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.jb = fsub <2 x float> %i.iz, %i.ja           ; 4 uses
  %i.jc = shufflevector <2 x float> %i.aq, <2 x float> %i.ar, <2 x i32> <i32 0, i32 2>
  %i.jd = shufflevector <2 x float> %i.iy, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.je = fsub <2 x float> %i.jc, %i.jd           ; 5 uses
  %i.jf = shufflevector <2 x float> %i.an, <2 x float> %i.aq, <2 x i32> <i32 1, i32 3>
  %i.jg = fsub <2 x float> %i.jf, %i.ja           ; 5 uses
  %i.jh = shufflevector <2 x float> %i.an, <2 x float> %i.aq, <2 x i32> <i32 0, i32 2>
  %i.ji = fsub <2 x float> %i.jh, %i.jd           ; 5 uses
  %foldExtExtBinop = fsub <2 x float> %i.aj, %i.iy ; 4 uses
  %i.jj = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.jk = fsub <2 x float> %i.je, %i.ji
  %i.jl = fsub <2 x float> %i.jb, %i.jg           ; 5 uses
  %i.jm = fneg <2 x float> %i.jk                  ; 4 uses
  %i.jn = fmul <2 x float> %i.jg, %i.jm
  %i.jo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jl, <2 x float> %i.ji, <2 x float> %i.jn) ; 4 uses
  %foldExtExtBinop980 = fsub <2 x float> %i.aj, %i.iy ; 5 uses
  %i.jp = shufflevector <2 x float> %foldExtExtBinop980, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.jq = shufflevector <2 x float> %i.ji, <2 x float> %foldExtExtBinop980, <2 x i32> <i32 0, i32 2>
  %i.jr = shufflevector <2 x float> %foldExtExtBinop980, <2 x float> %i.je, <2 x i32> <i32 0, i32 3>
  %i.js = fsub <2 x float> %i.jq, %i.jr
  %i.jt = fneg <2 x float> %i.js                  ; 4 uses
  %i.ju = shufflevector <2 x float> %i.jb, <2 x float> %foldExtExtBinop, <2 x i32> <i32 3, i32 1> ; 2 uses
  %i.jv = fmul <2 x float> %i.ju, %i.jt
  %i.jw = shufflevector <2 x float> %i.jg, <2 x float> %foldExtExtBinop, <2 x i32> <i32 0, i32 3>
  %i.jx = fsub <2 x float> %i.jw, %i.ju           ; 6 uses
  %i.jy = extractelement <2 x float> %i.jx, i64 1 ; 2 uses
  %i.jz = extractelement <2 x float> %i.jx, i64 0 ; 2 uses
  %i.ka = shufflevector <2 x float> %i.jx, <2 x float> %i.je, <2 x i32> <i32 0, i32 3>
  %i.kb = shufflevector <2 x float> %foldExtExtBinop980, <2 x float> %i.jx, <2 x i32> <i32 0, i32 3>
  %i.kc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kb, <2 x float> %i.ka, <2 x float> %i.jv) ; 6 uses
  %i.kd = shufflevector <2 x float> %i.jg, <2 x float> %i.jb, <4 x i32> <i32 poison, i32 0, i32 2, i32 3>
  %i.ke = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.kf = shufflevector <4 x float> %i.ke, <4 x float> %i.kd, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.kg = fneg <4 x float> %i.kf
  %i.kh = shufflevector <2 x float> %i.ji, <2 x float> %i.je, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.ki = shufflevector <4 x float> %i.kh, <4 x float> %i.jp, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.kj = fmul <4 x float> %i.ki, %i.kg
  %i.kk = shufflevector <2 x float> %i.ji, <2 x float> %i.je, <4 x i32> <i32 poison, i32 0, i32 2, i32 3>
  %i.kl = shufflevector <2 x float> %foldExtExtBinop980, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.km = shufflevector <4 x float> %i.kl, <4 x float> %i.kk, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.kn = shufflevector <2 x float> %i.jg, <2 x float> %i.jb, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.ko = shufflevector <4 x float> %i.kn, <4 x float> %i.jj, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.kp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.km, <4 x float> %i.ko, <4 x float> %i.kj) ; 4 uses
  %i.kq = extractelement <4 x float> %i.kp, i64 0
  %i.kr = fadd float %i.kq, 0.000000e+00
  %i.ks = extractelement <4 x float> %i.kp, i64 1
  %i.kt = fadd float %i.kr, %i.ks
  %i.ku = extractelement <4 x float> %i.kp, i64 2
  %i.kv = fadd float %i.kt, %i.ku
  %i.kw = extractelement <4 x float> %i.kp, i64 3
  %i.kx = fadd float %i.kv, %i.kw
  %i.ky = fcmp oge float %i.kx, 0.000000e+00      ; 2 uses
  %i.kz = load i8, ptr %i.ck, align 4, !tbaa !90, !range !71, !noundef !72
  %i.la = trunc nuw i8 %i.kz to i1
  br i1 %i.la, label %.preheader616.lr.ph, label %.lr.ph654

.lr.ph654:                                        ; preds = %.preheader620.preheader
  %i.lb = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  %i.lc = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  %i.ld = extractelement <2 x i32> %i.it, i64 0   ; 2 uses
  %i.le = extractelement <2 x i32> %i.iv, i64 0   ; 3 uses
  %i.lf = icmp samesign ult i32 %i.ld, %i.le
  %i.lg = load i8, ptr @_hb_NullPool, align 16    ; 2 uses
  br i1 %i.lf, label %.lr.ph.us.preheader, label %.thread561

.lr.ph.us.preheader:                              ; preds = %.lr.ph654
  %i.lh = zext nneg i32 %i.ld to i64              ; 2 uses
  %wide.trip.count = zext nneg i32 %i.le to i64
  %wide.trip.count783 = zext nneg i32 %i.le to i64
  %i.li = extractelement <2 x i32> %i.it, i64 1
  %i.lj = shufflevector <2 x float> %i.jt, <2 x float> %i.jm, <4 x i32> <i32 0, i32 2, i32 3, i32 1>
  %i.lk = extractelement <2 x i32> %i.iv, i64 1
  %i.ll = shufflevector <2 x float> %i.jx, <2 x float> %i.jl, <4 x i32> <i32 0, i32 2, i32 3, i32 1>
  %i.lm = shufflevector <2 x float> %i.kc, <2 x float> %i.jo, <4 x i32> <i32 0, i32 2, i32 3, i32 1>
  %i.ln = shufflevector <2 x float> %i.jx, <2 x float> %i.jl, <4 x i32> <i32 0, i32 2, i32 3, i32 1>
  %i.lo = shufflevector <2 x float> %i.kc, <2 x float> %i.jo, <4 x i32> <i32 0, i32 2, i32 3, i32 1>
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %storemerge652.us = phi i32 [ %i.ly, %._crit_edge.us ], [ %i.li, %.lr.ph.us.preheader ] ; 6 uses
  %.sroa.94.4651.us = phi i32 [ %.us-phi647.us, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 2 uses
  %.sroa.85.4650.us = phi i32 [ %.us-phi646.us, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 2 uses
  %i.lp = phi <2 x i32> [ %i.nu, %._crit_edge.us ], [ %i.ad, %.lr.ph.us.preheader ] ; 2 uses
  %i.lq = load ptr, ptr %i.lb, align 8, !tbaa !107
  %i.lr = load i32, ptr %i.lc, align 8, !tbaa !109
  %i.ls = mul i32 %i.lr, %storemerge652.us
  %i.lt = zext i32 %i.ls to i64
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lq, i64 %i.lt ; 2 uses
  %i.lv = uitofp i32 %storemerge652.us to float
  %i.lw = fadd nnan float %i.lv, 5.000000e-01
  %i.lx = mul i32 %storemerge652.us, %i.en        ; 2 uses
  %i.ly = add nuw i32 %storemerge652.us, 1        ; 4 uses
  %i.lz = insertelement <4 x float> poison, float %i.lw, i64 0
  %i.ma = shufflevector <4 x float> %i.lz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mb = fmul <4 x float> %i.ma, %i.lj           ; 2 uses
  br i1 %i.ky, label %.split.us.us.us.preheader, label %.split.us.preheader

.split.us.preheader:                              ; preds = %.lr.ph.us
  %i.mc = insertelement <2 x i32> poison, i32 %storemerge652.us, i64 1
  br label %.split.us

.split.us.us.us.preheader:                        ; preds = %.lr.ph.us
  %i.md = insertelement <2 x i32> poison, i32 %storemerge652.us, i64 1
  br label %.split.us.us.us

.split.us:                                        ; preds = %.split.us.preheader, %bb.ag
  %indvars.iv = phi i64 [ %indvars.iv.next.pre-phi, %bb.ag ], [ %i.lh, %.split.us.preheader ] ; 4 uses
  %.sroa.94.5640.us661 = phi i32 [ %.sroa.94.6.us677, %bb.ag ], [ %.sroa.94.4651.us, %.split.us.preheader ] ; 2 uses
  %.sroa.85.5639.us662 = phi i32 [ %.sroa.85.6.us676, %bb.ag ], [ %.sroa.85.4650.us, %.split.us.preheader ] ; 2 uses
  %i.me = phi <2 x i32> [ %i.my, %bb.ag ], [ %i.lp, %.split.us.preheader ] ; 2 uses
  %i.mf = trunc i64 %indvars.iv to i32            ; 3 uses
  %i.mg = uitofp i32 %i.mf to float
  %i.mh = fadd float %i.mg, 5.000000e-01
  %i.mi = insertelement <4 x float> poison, float %i.mh, i64 0
  %i.mj = shufflevector <4 x float> %i.mi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ll, <4 x float> %i.mj, <4 x float> %i.mb)
  %i.ml = fcmp ogt <4 x float> %i.mk, %i.lm
  %i.mm = freeze <4 x i1> %i.ml
  %i.mn = bitcast <4 x i1> %i.mm to i4
  %.not982 = icmp eq i4 %i.mn, 0
  br i1 %.not982, label %.split636.us, label %.thread595.us665

.split636.us:                                     ; preds = %.split.us
  %i.mo = getelementptr inbounds nuw i8, ptr %i.lu, i64 %indvars.iv
  %i.mp = load i8, ptr %i.mo, align 1, !tbaa !115
  br label %.thread595.us665

.thread595.us665:                                 ; preds = %.split.us, %.split636.us
  %i.mq = phi i8 [ %i.mp, %.split636.us ], [ 0, %.split.us ] ; 2 uses
  %i.mr = add i32 %i.lx, %i.mf                    ; 2 uses
  %.not.i285.us666 = icmp ult i32 %i.mr, %i.hy
  br i1 %.not.i285.us666, label %bb.ae, label %bb.ad, !prof !47

bb.ad:                                            ; preds = %.thread595.us665
  store i8 %i.lg, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIhLb0EEixEi.exit287.us667

bb.ae:                                            ; preds = %.thread595.us665
  %i.ms = zext nneg i32 %i.mr to i64
  %i.mt = getelementptr inbounds nuw i8, ptr %.sroa.26.7, i64 %i.ms
  br label %_ZN11hb_vector_tIhLb0EEixEi.exit287.us667

_ZN11hb_vector_tIhLb0EEixEi.exit287.us667:        ; preds = %bb.ae, %bb.ad
  %.0.i286.us668 = phi ptr [ @_hb_CrapPool, %bb.ad ], [ %i.mt, %bb.ae ]
  store i8 %i.mq, ptr %.0.i286.us668, align 1, !tbaa !115
  %.not228.us669 = icmp eq i8 %i.mq, 0
  br i1 %.not228.us669, label %_ZN11hb_vector_tIhLb0EEixEi.exit287.us667._crit_edge, label %bb.af

_ZN11hb_vector_tIhLb0EEixEi.exit287.us667._crit_edge: ; preds = %_ZN11hb_vector_tIhLb0EEixEi.exit287.us667
  %.pre913 = add nuw nsw i64 %indvars.iv, 1
  br label %bb.ag

bb.af:                                            ; preds = %_ZN11hb_vector_tIhLb0EEixEi.exit287.us667
  %i.mu = insertelement <2 x i32> %i.mc, i32 %i.mf, i64 0
  %i.mv = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.me, <2 x i32> %i.mu)
  %i.mw = add nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.mx = trunc nuw i64 %i.mw to i32
  %.sroa.speculated295.us672 = tail call i32 @llvm.umax.i32(i32 %.sroa.85.5639.us662, i32 %i.mx)
  %.sroa.speculated.us673 = tail call i32 @llvm.umax.i32(i32 %.sroa.94.5640.us661, i32 %i.ly)
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN11hb_vector_tIhLb0EEixEi.exit287.us667._crit_edge, %bb.af
  %indvars.iv.next.pre-phi = phi i64 [ %.pre913, %_ZN11hb_vector_tIhLb0EEixEi.exit287.us667._crit_edge ], [ %i.mw, %bb.af ] ; 2 uses
  %.sroa.85.6.us676 = phi i32 [ %.sroa.85.5639.us662, %_ZN11hb_vector_tIhLb0EEixEi.exit287.us667._crit_edge ], [ %.sroa.speculated295.us672, %bb.af ] ; 2 uses
  %.sroa.94.6.us677 = phi i32 [ %.sroa.94.5640.us661, %_ZN11hb_vector_tIhLb0EEixEi.exit287.us667._crit_edge ], [ %.sroa.speculated.us673, %bb.af ] ; 2 uses
  %i.my = phi <2 x i32> [ %i.me, %_ZN11hb_vector_tIhLb0EEixEi.exit287.us667._crit_edge ], [ %i.mv, %bb.af ] ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.pre-phi, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %.split.us, !llvm.loop !203

.split.us.us.us:                                  ; preds = %.split.us.us.us.preheader, %bb.ak
  %indvars.iv780 = phi i64 [ %indvars.iv.next781.pre-phi, %bb.ak ], [ %i.lh, %.split.us.us.us.preheader ] ; 4 uses
  %.sroa.94.5640.us.us = phi i32 [ %.sroa.94.6.us.us, %bb.ak ], [ %.sroa.94.4651.us, %.split.us.us.us.preheader ] ; 2 uses
  %.sroa.85.5639.us.us = phi i32 [ %.sroa.85.6.us.us, %bb.ak ], [ %.sroa.85.4650.us, %.split.us.us.us.preheader ] ; 2 uses
  %i.mz = phi <2 x i32> [ %i.nt, %bb.ak ], [ %i.lp, %.split.us.us.us.preheader ] ; 2 uses
  %i.na = trunc i64 %indvars.iv780 to i32         ; 3 uses
  %i.nb = uitofp i32 %i.na to float
  %i.nc = fadd float %i.nb, 5.000000e-01
  %i.nd = insertelement <4 x float> poison, float %i.nc, i64 0
  %i.ne = shufflevector <4 x float> %i.nd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ln, <4 x float> %i.ne, <4 x float> %i.mb)
  %i.ng = fcmp olt <4 x float> %i.nf, %i.lo
  %i.nh = freeze <4 x i1> %i.ng
  %i.ni = bitcast <4 x i1> %i.nh to i4
  %.not983 = icmp eq i4 %i.ni, 0
  br i1 %.not983, label %.split636.us.us.us, label %.thread595.us.us

.split636.us.us.us:                               ; preds = %.split.us.us.us
  %i.nj = getelementptr inbounds nuw i8, ptr %i.lu, i64 %indvars.iv780
  %i.nk = load i8, ptr %i.nj, align 1, !tbaa !115
  br label %.thread595.us.us

.thread595.us.us:                                 ; preds = %.split.us.us.us, %.split636.us.us.us
  %i.nl = phi i8 [ %i.nk, %.split636.us.us.us ], [ 0, %.split.us.us.us ] ; 2 uses
  %i.nm = add i32 %i.lx, %i.na                    ; 2 uses
  %.not.i285.us.us = icmp ult i32 %i.nm, %i.hy
  br i1 %.not.i285.us.us, label %bb.ai, label %bb.ah, !prof !47

bb.ah:                                            ; preds = %.thread595.us.us
  store i8 %i.lg, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIhLb0EEixEi.exit287.us.us

bb.ai:                                            ; preds = %.thread595.us.us
  %i.nn = zext nneg i32 %i.nm to i64
  %i.no = getelementptr inbounds nuw i8, ptr %.sroa.26.7, i64 %i.nn
  br label %_ZN11hb_vector_tIhLb0EEixEi.exit287.us.us

_ZN11hb_vector_tIhLb0EEixEi.exit287.us.us:        ; preds = %bb.ai, %bb.ah
  %.0.i286.us.us = phi ptr [ @_hb_CrapPool, %bb.ah ], [ %i.no, %bb.ai ]
  store i8 %i.nl, ptr %.0.i286.us.us, align 1, !tbaa !115
  %.not228.us.us = icmp eq i8 %i.nl, 0
  br i1 %.not228.us.us, label %_ZN11hb_vector_tIhLb0EEixEi.exit287.us.us._crit_edge, label %bb.aj

_ZN11hb_vector_tIhLb0EEixEi.exit287.us.us._crit_edge: ; preds = %_ZN11hb_vector_tIhLb0EEixEi.exit287.us.us
  %.pre912 = add nuw nsw i64 %indvars.iv780, 1
  br label %bb.ak

bb.aj:                                            ; preds = %_ZN11hb_vector_tIhLb0EEixEi.exit287.us.us
  %i.np = insertelement <2 x i32> %i.md, i32 %i.na, i64 0
  %i.nq = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.mz, <2 x i32> %i.np)
  %i.nr = add nuw nsw i64 %indvars.iv780, 1       ; 2 uses
  %i.ns = trunc nuw i64 %i.nr to i32
  %.sroa.speculated295.us.us = tail call i32 @llvm.umax.i32(i32 %.sroa.85.5639.us.us, i32 %i.ns)
  %.sroa.speculated.us.us = tail call i32 @llvm.umax.i32(i32 %.sroa.94.5640.us.us, i32 %i.ly)
  br label %bb.ak

bb.ak:                                            ; preds = %_ZN11hb_vector_tIhLb0EEixEi.exit287.us.us._crit_edge, %bb.aj
  %indvars.iv.next781.pre-phi = phi i64 [ %.pre912, %_ZN11hb_vector_tIhLb0EEixEi.exit287.us.us._crit_edge ], [ %i.nr, %bb.aj ] ; 2 uses
  %.sroa.85.6.us.us = phi i32 [ %.sroa.85.5639.us.us, %_ZN11hb_vector_tIhLb0EEixEi.exit287.us.us._crit_edge ], [ %.sroa.speculated295.us.us, %bb.aj ] ; 2 uses
  %.sroa.94.6.us.us = phi i32 [ %.sroa.94.5640.us.us, %_ZN11hb_vector_tIhLb0EEixEi.exit287.us.us._crit_edge ], [ %.sroa.speculated.us.us, %bb.aj ] ; 2 uses
  %i.nt = phi <2 x i32> [ %i.mz, %_ZN11hb_vector_tIhLb0EEixEi.exit287.us.us._crit_edge ], [ %i.nq, %bb.aj ] ; 2 uses
  %exitcond784.not = icmp eq i64 %indvars.iv.next781.pre-phi, %wide.trip.count783
  br i1 %exitcond784.not, label %._crit_edge.us, label %.split.us.us.us, !llvm.loop !203

._crit_edge.us:                                   ; preds = %bb.ag, %bb.ak
  %.us-phi646.us = phi i32 [ %.sroa.85.6.us.us, %bb.ak ], [ %.sroa.85.6.us676, %bb.ag ] ; 2 uses
  %.us-phi647.us = phi i32 [ %.sroa.94.6.us.us, %bb.ak ], [ %.sroa.94.6.us677, %bb.ag ] ; 2 uses
  %i.nu = phi <2 x i32> [ %i.nt, %bb.ak ], [ %i.my, %bb.ag ] ; 2 uses
  %exitcond785.not = icmp eq i32 %i.ly, %i.lk
  br i1 %exitcond785.not, label %.thread561, label %.lr.ph.us, !llvm.loop !204

.preheader616.lr.ph:                              ; preds = %.preheader620.preheader
  %i.nv = extractelement <2 x i32> %i.it, i64 0   ; 2 uses
  %i.nw = extractelement <2 x i32> %i.iv, i64 0   ; 2 uses
  %i.nx = icmp samesign ult i32 %i.nv, %i.nw
  %i.ny = load i8, ptr @_hb_NullPool, align 16    ; 2 uses
  br i1 %i.nx, label %.preheader616.lr.ph.split.us, label %.thread561

.preheader616.lr.ph.split.us:                     ; preds = %.preheader616.lr.ph
  %i.nz = zext nneg i32 %i.nv to i64              ; 2 uses
  %wide.trip.count803 = zext nneg i32 %i.nw to i64 ; 2 uses
  %i.oa = extractelement <2 x i32> %i.it, i64 1   ; 2 uses
  br i1 %i.ky, label %.preheader616.us.us.preheader, label %.preheader616.us.preheader

.preheader616.us.preheader:                       ; preds = %.preheader616.lr.ph.split.us
  %i.ob = extractelement <2 x i32> %i.iv, i64 1
  %i.oc = extractelement <2 x float> %i.kc, i64 0
  %i.od = extractelement <2 x float> %i.kc, i64 1
  br label %.preheader616.us

.preheader616.us.us.preheader:                    ; preds = %.preheader616.lr.ph.split.us
  %i.oe = extractelement <2 x i32> %i.iv, i64 1
  %i.of = extractelement <2 x float> %i.kc, i64 0
  %i.og = extractelement <2 x float> %i.kc, i64 1
  br label %.preheader616.us.us

.preheader616.us.us:                              ; preds = %.preheader616.us.us.preheader, %._crit_edge.split.us.us751.us
  %storemerge229721.us.us = phi i32 [ %i.ol, %._crit_edge.split.us.us751.us ], [ %i.oa, %.preheader616.us.us.preheader ] ; 4 uses
  %.sroa.94.1720.us.us = phi i32 [ %.sroa.94.3.us.us.us, %._crit_edge.split.us.us751.us ], [ 0, %.preheader616.us.us.preheader ]
  %.sroa.85.1719.us.us = phi i32 [ %.sroa.85.3.us.us.us, %._crit_edge.split.us.us751.us ], [ 0, %.preheader616.us.us.preheader ]
  %i.oh = phi <2 x i32> [ %i.pm, %._crit_edge.split.us.us751.us ], [ %i.ad, %.preheader616.us.us.preheader ]
  %i.oi = uitofp i32 %storemerge229721.us.us to float
  %i.oj = fadd nnan float %i.oi, 5.000000e-01
  %i.ok = mul i32 %storemerge229721.us.us, %i.en
  %i.ol = add nuw i32 %storemerge229721.us.us, 1  ; 3 uses
  %i.om = insertelement <2 x float> poison, float %i.oj, i64 0
  %i.on = shufflevector <2 x float> %i.om, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.oo = fmul <2 x float> %i.on, %i.jm
  %i.op = fmul <2 x float> %i.on, %i.jt           ; 2 uses
  %i.oq = extractelement <2 x float> %i.op, i64 0
  %i.or = extractelement <2 x float> %i.op, i64 1
  %i.os = insertelement <2 x i32> poison, i32 %storemerge229721.us.us, i64 1
  br label %.split.us688.us.us.us

.split.us688.us.us.us:                            ; preds = %bb.ao, %.preheader616.us.us
  %indvars.iv800 = phi i64 [ %indvars.iv.next801.pre-phi, %bb.ao ], [ %i.nz, %.preheader616.us.us ] ; 3 uses
  %.sroa.94.2705.us.us.us = phi i32 [ %.sroa.94.3.us.us.us, %bb.ao ], [ %.sroa.94.1720.us.us, %.preheader616.us.us ] ; 2 uses
  %.sroa.85.2704.us.us.us = phi i32 [ %.sroa.85.3.us.us.us, %bb.ao ], [ %.sroa.85.1719.us.us, %.preheader616.us.us ] ; 2 uses
  %i.ot = phi <2 x i32> [ %i.pm, %bb.ao ], [ %i.oh, %.preheader616.us.us ] ; 2 uses
  %i.ou = trunc i64 %indvars.iv800 to i32         ; 3 uses
  %i.ov = uitofp i32 %i.ou to float
  %i.ow = fadd float %i.ov, 5.000000e-01          ; 3 uses
  %i.ox = tail call float @llvm.fmuladd.f32(float %i.jz, float %i.ow, float %i.oq)
  %i.oy = fcmp olt float %i.ox, %i.of
  br i1 %i.oy, label %.thread588.split.us.us.us.us, label %.lr.ph696.us.us.us.preheader

.lr.ph696.us.us.us.preheader:                     ; preds = %.split.us688.us.us.us
  %i.oz = insertelement <2 x float> poison, float %i.ow, i64 0
  %i.pa = shufflevector <2 x float> %i.oz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jl, <2 x float> %i.pa, <2 x float> %i.oo)
  %i.pc = fcmp olt <2 x float> %i.pb, %i.jo       ; 2 uses
  %11 = extractelement <2 x i1> %i.pc, i64 0
  %12 = extractelement <2 x i1> %i.pc, i64 1
  %or.cond963 = select i1 %11, i1 true, i1 %12
  %i.pd = tail call float @llvm.fmuladd.f32(float %i.jy, float %i.ow, float %i.or)
  %i.pe = fcmp olt float %i.pd, %i.og
  %or.cond965 = select i1 %or.cond963, i1 true, i1 %i.pe ; 2 uses
  %not.or.cond965 = xor i1 %or.cond965, true
  %spec.select970 = sext i1 %not.or.cond965 to i8
  br label %.thread588.split.us.us.us.us, !llvm.loop !205

.thread588.split.us.us.us.us:                     ; preds = %.lr.ph696.us.us.us.preheader, %.split.us688.us.us.us
  %.lcssa622.us.us.us.us = phi i1 [ true, %.split.us688.us.us.us ], [ %or.cond965, %.lr.ph696.us.us.us.preheader ]
  %.2202.neg.us.us.us.us = phi i8 [ 0, %.split.us688.us.us.us ], [ %spec.select970, %.lr.ph696.us.us.us.preheader ]
  %i.pf = add i32 %i.ok, %i.ou                    ; 2 uses
  %.not.i279.us.us.us = icmp ult i32 %i.pf, %i.hy
  br i1 %.not.i279.us.us.us, label %bb.am, label %bb.al, !prof !47

bb.al:                                            ; preds = %.thread588.split.us.us.us.us
  store i8 %i.ny, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIhLb0EEixEi.exit.us.us.us

bb.am:                                            ; preds = %.thread588.split.us.us.us.us
  %i.pg = zext nneg i32 %i.pf to i64
  %i.ph = getelementptr inbounds nuw i8, ptr %.sroa.26.7, i64 %i.pg
  br label %_ZN11hb_vector_tIhLb0EEixEi.exit.us.us.us

_ZN11hb_vector_tIhLb0EEixEi.exit.us.us.us:        ; preds = %bb.am, %bb.al
  %.0.i280.us.us.us = phi ptr [ @_hb_CrapPool, %bb.al ], [ %i.ph, %bb.am ]
  store i8 %.2202.neg.us.us.us.us, ptr %.0.i280.us.us.us, align 1, !tbaa !115
  br i1 %.lcssa622.us.us.us.us, label %_ZN11hb_vector_tIhLb0EEixEi.exit.us.us.us._crit_edge, label %bb.an

_ZN11hb_vector_tIhLb0EEixEi.exit.us.us.us._crit_edge: ; preds = %_ZN11hb_vector_tIhLb0EEixEi.exit.us.us.us
  %.pre = add nuw nsw i64 %indvars.iv800, 1
  br label %bb.ao

bb.an:                                            ; preds = %_ZN11hb_vector_tIhLb0EEixEi.exit.us.us.us
  %i.pi = insertelement <2 x i32> %i.os, i32 %i.ou, i64 0
  %i.pj = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.ot, <2 x i32> %i.pi)
  %i.pk = add nuw nsw i64 %indvars.iv800, 1       ; 2 uses
  %i.pl = trunc nuw i64 %i.pk to i32
  %.sroa.speculated327.us.us.us = tail call i32 @llvm.umax.i32(i32 %.sroa.85.2704.us.us.us, i32 %i.pl)
  %.sroa.speculated323.us.us.us = tail call i32 @llvm.umax.i32(i32 %.sroa.94.2705.us.us.us, i32 %i.ol)
  br label %bb.ao

bb.ao:                                            ; preds = %_ZN11hb_vector_tIhLb0EEixEi.exit.us.us.us._crit_edge, %bb.an
  %indvars.iv.next801.pre-phi = phi i64 [ %.pre, %_ZN11hb_vector_tIhLb0EEixEi.exit.us.us.us._crit_edge ], [ %i.pk, %bb.an ] ; 2 uses
  %.sroa.85.3.us.us.us = phi i32 [ %.sroa.85.2704.us.us.us, %_ZN11hb_vector_tIhLb0EEixEi.exit.us.us.us._crit_edge ], [ %.sroa.speculated327.us.us.us, %bb.an ] ; 3 uses
  %.sroa.94.3.us.us.us = phi i32 [ %.sroa.94.2705.us.us.us, %_ZN11hb_vector_tIhLb0EEixEi.exit.us.us.us._crit_edge ], [ %.sroa.speculated323.us.us.us, %bb.an ] ; 3 uses
  %i.pm = phi <2 x i32> [ %i.ot, %_ZN11hb_vector_tIhLb0EEixEi.exit.us.us.us._crit_edge ], [ %i.pj, %bb.an ] ; 3 uses
  %exitcond804.not = icmp eq i64 %indvars.iv.next801.pre-phi, %wide.trip.count803
  br i1 %exitcond804.not, label %._crit_edge.split.us.us751.us, label %.split.us688.us.us.us, !llvm.loop !206

._crit_edge.split.us.us751.us:                    ; preds = %bb.ao
  %exitcond805.not = icmp eq i32 %i.ol, %i.oe
  br i1 %exitcond805.not, label %.thread561, label %.preheader616.us.us, !llvm.loop !207

.preheader616.us:                                 ; preds = %.preheader616.us.preheader, %._crit_edge.split.us746
  %storemerge229721.us = phi i32 [ %i.pr, %._crit_edge.split.us746 ], [ %i.oa, %.preheader616.us.preheader ] ; 4 uses
  %.sroa.94.1720.us = phi i32 [ %.sroa.94.3.us745, %._crit_edge.split.us746 ], [ 0, %.preheader616.us.preheader ]
  %.sroa.85.1719.us = phi i32 [ %.sroa.85.3.us744, %._crit_edge.split.us746 ], [ 0, %.preheader616.us.preheader ]
  %i.pn = phi <2 x i32> [ %i.qs, %._crit_edge.split.us746 ], [ %i.ad, %.preheader616.us.preheader ]
  %i.po = uitofp i32 %storemerge229721.us to float
  %i.pp = fadd nnan float %i.po, 5.000000e-01
  %i.pq = mul i32 %storemerge229721.us, %i.en
  %i.pr = add nuw i32 %storemerge229721.us, 1     ; 3 uses
  %i.ps = insertelement <2 x float> poison, float %i.pp, i64 0
  %i.pt = shufflevector <2 x float> %i.ps, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.pu = fmul <2 x float> %i.pt, %i.jm
  %i.pv = fmul <2 x float> %i.pt, %i.jt           ; 2 uses
  %i.pw = extractelement <2 x float> %i.pv, i64 0
  %i.px = extractelement <2 x float> %i.pv, i64 1
  %i.py = insertelement <2 x i32> poison, i32 %storemerge229721.us, i64 1
  br label %.split.us728

.split.us728:                                     ; preds = %bb.as, %.preheader616.us
  %indvars.iv790 = phi i64 [ %indvars.iv.next791.pre-phi, %bb.as ], [ %i.nz, %.preheader616.us ] ; 3 uses
  %.sroa.94.2705.us730 = phi i32 [ %.sroa.94.3.us745, %bb.as ], [ %.sroa.94.1720.us, %.preheader616.us ] ; 2 uses
  %.sroa.85.2704.us731 = phi i32 [ %.sroa.85.3.us744, %bb.as ], [ %.sroa.85.1719.us, %.preheader616.us ] ; 2 uses
  %i.pz = phi <2 x i32> [ %i.qs, %bb.as ], [ %i.pn, %.preheader616.us ] ; 2 uses
  %i.qa = trunc i64 %indvars.iv790 to i32         ; 3 uses
  %i.qb = uitofp i32 %i.qa to float
  %i.qc = fadd float %i.qb, 5.000000e-01          ; 3 uses
  %i.qd = tail call float @llvm.fmuladd.f32(float %i.jz, float %i.qc, float %i.pw)
  %i.qe = fcmp ogt float %i.qd, %i.oc
  br i1 %i.qe, label %.thread588.split.us, label %.lr.ph.us734.preheader

.lr.ph.us734.preheader:                           ; preds = %.split.us728
  %i.qf = insertelement <2 x float> poison, float %i.qc, i64 0
  %i.qg = shufflevector <2 x float> %i.qf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jl, <2 x float> %i.qg, <2 x float> %i.pu)
  %i.qi = fcmp ogt <2 x float> %i.qh, %i.jo       ; 2 uses
  %13 = extractelement <2 x i1> %i.qi, i64 0
  %14 = extractelement <2 x i1> %i.qi, i64 1
  %or.cond967 = select i1 %13, i1 true, i1 %14
  %i.qj = tail call float @llvm.fmuladd.f32(float %i.jy, float %i.qc, float %i.px)
  %i.qk = fcmp ogt float %i.qj, %i.od
  %or.cond969 = select i1 %or.cond967, i1 true, i1 %i.qk ; 2 uses
  %not.or.cond969 = xor i1 %or.cond969, true
  %spec.select972 = sext i1 %not.or.cond969 to i8
  br label %.thread588.split.us, !llvm.loop !205

.thread588.split.us:                              ; preds = %.lr.ph.us734.preheader, %.split.us728
  %.lcssa622.us = phi i1 [ %or.cond969, %.lr.ph.us734.preheader ], [ true, %.split.us728 ]
  %.2202.neg.us = phi i8 [ %spec.select972, %.lr.ph.us734.preheader ], [ 0, %.split.us728 ]
  %i.ql = add i32 %i.pq, %i.qa                    ; 2 uses
  %.not.i279.us735 = icmp ult i32 %i.ql, %i.hy
  br i1 %.not.i279.us735, label %bb.aq, label %bb.ap, !prof !47

bb.ap:                                            ; preds = %.thread588.split.us
  store i8 %i.ny, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIhLb0EEixEi.exit.us736

bb.aq:                                            ; preds = %.thread588.split.us
  %i.qm = zext nneg i32 %i.ql to i64
  %i.qn = getelementptr inbounds nuw i8, ptr %.sroa.26.7, i64 %i.qm
  br label %_ZN11hb_vector_tIhLb0EEixEi.exit.us736

_ZN11hb_vector_tIhLb0EEixEi.exit.us736:           ; preds = %bb.aq, %bb.ap
  %.0.i280.us737 = phi ptr [ @_hb_CrapPool, %bb.ap ], [ %i.qn, %bb.aq ]
  store i8 %.2202.neg.us, ptr %.0.i280.us737, align 1, !tbaa !115
  br i1 %.lcssa622.us, label %_ZN11hb_vector_tIhLb0EEixEi.exit.us736._crit_edge, label %bb.ar

_ZN11hb_vector_tIhLb0EEixEi.exit.us736._crit_edge: ; preds = %_ZN11hb_vector_tIhLb0EEixEi.exit.us736
  %.pre911 = add nuw nsw i64 %indvars.iv790, 1
  br label %bb.as

bb.ar:                                            ; preds = %_ZN11hb_vector_tIhLb0EEixEi.exit.us736
  %i.qo = insertelement <2 x i32> %i.py, i32 %i.qa, i64 0
  %i.qp = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.pz, <2 x i32> %i.qo)
  %i.qq = add nuw nsw i64 %indvars.iv790, 1       ; 2 uses
  %i.qr = trunc nuw i64 %i.qq to i32
  %.sroa.speculated327.us740 = tail call i32 @llvm.umax.i32(i32 %.sroa.85.2704.us731, i32 %i.qr)
  %.sroa.speculated323.us741 = tail call i32 @llvm.umax.i32(i32 %.sroa.94.2705.us730, i32 %i.pr)
  br label %bb.as

bb.as:                                            ; preds = %_ZN11hb_vector_tIhLb0EEixEi.exit.us736._crit_edge, %bb.ar
  %indvars.iv.next791.pre-phi = phi i64 [ %.pre911, %_ZN11hb_vector_tIhLb0EEixEi.exit.us736._crit_edge ], [ %i.qq, %bb.ar ] ; 2 uses
  %.sroa.85.3.us744 = phi i32 [ %.sroa.85.2704.us731, %_ZN11hb_vector_tIhLb0EEixEi.exit.us736._crit_edge ], [ %.sroa.speculated327.us740, %bb.ar ] ; 3 uses
  %.sroa.94.3.us745 = phi i32 [ %.sroa.94.2705.us730, %_ZN11hb_vector_tIhLb0EEixEi.exit.us736._crit_edge ], [ %.sroa.speculated323.us741, %bb.ar ] ; 3 uses
  %i.qs = phi <2 x i32> [ %i.pz, %_ZN11hb_vector_tIhLb0EEixEi.exit.us736._crit_edge ], [ %i.qp, %bb.ar ] ; 3 uses
  %exitcond794.not = icmp eq i64 %indvars.iv.next791.pre-phi, %wide.trip.count803
  br i1 %exitcond794.not, label %._crit_edge.split.us746, label %.split.us728, !llvm.loop !206

._crit_edge.split.us746:                          ; preds = %bb.as
  %exitcond795.not = icmp eq i32 %i.pr, %i.ob
  br i1 %exitcond795.not, label %.thread561, label %.preheader616.us, !llvm.loop !207

.thread561:                                       ; preds = %._crit_edge.us, %._crit_edge.split.us746, %._crit_edge.split.us.us751.us, %_ZL9hb_memcpyPvPKvm.exit.prol.loopexit, %_ZL9hb_memcpyPvPKvm.exit, %_ZL9hb_memsetPvij.exit274, %.preheader616.lr.ph, %.lr.ph654, %_ZL9hb_memsetPvij.exit, %bb.l
  %.sroa.0.2 = phi i32 [ %.sroa.0.4, %bb.l ], [ %.sroa.0.7, %_ZL9hb_memsetPvij.exit274 ], [ %.sroa.0.5, %_ZL9hb_memsetPvij.exit ], [ %.sroa.0.7, %._crit_edge.split.us.us751.us ], [ %.sroa.0.5, %_ZL9hb_memcpyPvPKvm.exit.prol.loopexit ], [ %.sroa.0.7, %._crit_edge.split.us746 ], [ %.sroa.0.7, %.lr.ph654 ], [ %.sroa.0.7, %.preheader616.lr.ph ], [ %.sroa.0.5, %_ZL9hb_memcpyPvPKvm.exit ], [ %.sroa.0.7, %._crit_edge.us ] ; 2 uses
  %.sroa.15.2 = phi i32 [ %.sroa.15.3, %bb.l ], [ %i.hy, %_ZL9hb_memsetPvij.exit274 ], [ %i.fg, %_ZL9hb_memsetPvij.exit ], [ %i.hy, %._crit_edge.split.us.us751.us ], [ %i.fg, %_ZL9hb_memcpyPvPKvm.exit.prol.loopexit ], [ %i.hy, %._crit_edge.split.us746 ], [ %i.hy, %.lr.ph654 ], [ %i.hy, %.preheader616.lr.ph ], [ %i.fg, %_ZL9hb_memcpyPvPKvm.exit ], [ %i.hy, %._crit_edge.us ]
  %.sroa.58415.0 = phi i32 [ %i.ez, %bb.l ], [ 0, %_ZL9hb_memsetPvij.exit274 ], [ 0, %_ZL9hb_memsetPvij.exit ], [ 0, %._crit_edge.split.us.us751.us ], [ 0, %_ZL9hb_memcpyPvPKvm.exit.prol.loopexit ], [ 0, %._crit_edge.split.us746 ], [ 0, %.lr.ph654 ], [ 0, %.preheader616.lr.ph ], [ 0, %_ZL9hb_memcpyPvPKvm.exit ], [ 0, %._crit_edge.us ]
  %.sroa.61.0 = phi i32 [ %i.fa, %bb.l ], [ 0, %_ZL9hb_memsetPvij.exit274 ], [ 0, %_ZL9hb_memsetPvij.exit ], [ 0, %._crit_edge.split.us.us751.us ], [ 0, %_ZL9hb_memcpyPvPKvm.exit.prol.loopexit ], [ 0, %._crit_edge.split.us746 ], [ 0, %.lr.ph654 ], [ 0, %.preheader616.lr.ph ], [ 0, %_ZL9hb_memcpyPvPKvm.exit ], [ 0, %._crit_edge.us ]
  %.sroa.85.10 = phi i32 [ %.sroa.speculated12.i, %bb.l ], [ 0, %_ZL9hb_memsetPvij.exit274 ], [ 0, %_ZL9hb_memsetPvij.exit ], [ %.sroa.85.3.us.us.us, %._crit_edge.split.us.us751.us ], [ %i.gg, %_ZL9hb_memcpyPvPKvm.exit.prol.loopexit ], [ %.sroa.85.3.us744, %._crit_edge.split.us746 ], [ 0, %.lr.ph654 ], [ 0, %.preheader616.lr.ph ], [ %i.gg, %_ZL9hb_memcpyPvPKvm.exit ], [ %.us-phi646.us, %._crit_edge.us ]
  %.sroa.94.10 = phi i32 [ %.sroa.speculated.i246, %bb.l ], [ 0, %_ZL9hb_memsetPvij.exit274 ], [ 0, %_ZL9hb_memsetPvij.exit ], [ %.sroa.94.3.us.us.us, %._crit_edge.split.us.us751.us ], [ %i.go, %_ZL9hb_memcpyPvPKvm.exit.prol.loopexit ], [ %.sroa.94.3.us745, %._crit_edge.split.us746 ], [ 0, %.lr.ph654 ], [ 0, %.preheader616.lr.ph ], [ %i.go, %_ZL9hb_memcpyPvPKvm.exit ], [ %.us-phi647.us, %._crit_edge.us ]
  %.sroa.54.0 = phi i8 [ 1, %bb.l ], [ 0, %_ZL9hb_memsetPvij.exit274 ], [ 0, %_ZL9hb_memsetPvij.exit ], [ 0, %._crit_edge.split.us.us751.us ], [ 0, %_ZL9hb_memcpyPvPKvm.exit.prol.loopexit ], [ 0, %._crit_edge.split.us746 ], [ 0, %.lr.ph654 ], [ 0, %.preheader616.lr.ph ], [ 0, %_ZL9hb_memcpyPvPKvm.exit ], [ 0, %._crit_edge.us ]
  %.sroa.26.2 = phi ptr [ %.sroa.26.4, %bb.l ], [ %.sroa.26.7, %_ZL9hb_memsetPvij.exit274 ], [ %.sroa.26.5, %_ZL9hb_memsetPvij.exit ], [ %.sroa.26.7, %._crit_edge.split.us.us751.us ], [ %.sroa.26.5, %_ZL9hb_memcpyPvPKvm.exit.prol.loopexit ], [ %.sroa.26.7, %._crit_edge.split.us746 ], [ %.sroa.26.7, %.lr.ph654 ], [ %.sroa.26.7, %.preheader616.lr.ph ], [ %.sroa.26.5, %_ZL9hb_memcpyPvPKvm.exit ], [ %.sroa.26.7, %._crit_edge.us ] ; 2 uses
  %i.qt = phi <2 x i32> [ %i.ev, %bb.l ], [ zeroinitializer, %_ZL9hb_memsetPvij.exit274 ], [ zeroinitializer, %_ZL9hb_memsetPvij.exit ], [ zeroinitializer, %._crit_edge.split.us.us751.us ], [ zeroinitializer, %_ZL9hb_memcpyPvPKvm.exit.prol.loopexit ], [ zeroinitializer, %._crit_edge.split.us746 ], [ zeroinitializer, %.lr.ph654 ], [ zeroinitializer, %.preheader616.lr.ph ], [ zeroinitializer, %_ZL9hb_memcpyPvPKvm.exit ], [ zeroinitializer, %._crit_edge.us ]
  %i.qu = phi <2 x i32> [ %i.es, %bb.l ], [ %i.ad, %_ZL9hb_memsetPvij.exit274 ], [ zeroinitializer, %_ZL9hb_memsetPvij.exit ], [ %i.pm, %._crit_edge.split.us.us751.us ], [ %i.ga, %_ZL9hb_memcpyPvPKvm.exit.prol.loopexit ], [ %i.qs, %._crit_edge.split.us746 ], [ %i.ad, %.lr.ph654 ], [ %i.ad, %.preheader616.lr.ph ], [ %i.ga, %_ZL9hb_memcpyPvPKvm.exit ], [ %i.nu, %._crit_edge.us ]
  %i.qv = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 5 uses
  %i.qw = load i32, ptr %i.cd, align 4, !tbaa !85 ; 2 uses
  %i.qx = load i32, ptr %i.qv, align 8, !tbaa !87 ; 5 uses
  %.not.i.i292 = icmp slt i32 %i.qw, %i.qx
  br i1 %.not.i.i292, label %_ZN11hb_vector_tI16hb_raster_clip_tLb0EE12push_or_failIJS0_EEEbDpOT_.exit, label %bb.at

bb.at:                                            ; preds = %.thread561
  %i.qy = add i32 %i.qw, 1                        ; 2 uses
  %i.qz = icmp slt i32 %i.qx, 0
  br i1 %i.qz, label %_ZN11hb_vector_tI16hb_raster_clip_tLb0EE12push_or_failIJS0_EEEbDpOT_.exit.thread, label %bb.au, !prof !13

bb.au:                                            ; preds = %bb.at
  %.not.i.i.i = icmp ugt i32 %i.qy, %i.qx
  br i1 %.not.i.i.i, label %.preheader.i.i.i, label %_ZN11hb_vector_tI16hb_raster_clip_tLb0EE12push_or_failIJS0_EEEbDpOT_.exit, !prof !13

.preheader.i.i.i:                                 ; preds = %bb.au, %.preheader.i.i.i
  %.039.i.i.i = phi i32 [ %i.rc, %.preheader.i.i.i ], [ %i.qx, %bb.au ] ; 2 uses
  %i.ra = lshr i32 %.039.i.i.i, 1
  %i.rb = add i32 %.039.i.i.i, 8
  %i.rc = add i32 %i.rb, %i.ra                    ; 6 uses
  %i.rd = icmp ugt i32 %i.qy, %i.rc
  br i1 %i.rd, label %.preheader.i.i.i, label %.thread.i.i.i, !llvm.loop !1

.thread.i.i.i:                                    ; preds = %.preheader.i.i.i
  %i.re = icmp ugt i32 %i.rc, 67108863
  br i1 %i.re, label %_ZN11hb_vector_tI16hb_raster_clip_tLb0EE5allocEjb.exit.thread8.i.i, label %bb.av, !prof !13

bb.av:                                            ; preds = %.thread.i.i.i
  %i.rf = tail call noundef ptr @_ZN11hb_vector_tI16hb_raster_clip_tLb0EE12_malloc_moveEj(ptr noundef nonnull align 8 dereferenceable(16) %i.qv, i32 noundef %i.rc) ; 2 uses
  %.not22.i.i.i = icmp eq ptr %i.rf, null
  br i1 %.not22.i.i.i, label %bb.aw, label %_ZN11hb_vector_tI16hb_raster_clip_tLb0EE5allocEjb.exit.i.i, !prof !13

bb.aw:                                            ; preds = %bb.av
  %i.rg = load i32, ptr %i.qv, align 8, !tbaa !87 ; 2 uses
  %.not23.i.i.i = icmp ugt i32 %i.rc, %i.rg
  br i1 %.not23.i.i.i, label %_ZN11hb_vector_tI16hb_raster_clip_tLb0EE5allocEjb.exit.thread8.i.i, label %_ZN11hb_vector_tI16hb_raster_clip_tLb0EE12push_or_failIJS0_EEEbDpOT_.exit

_ZN11hb_vector_tI16hb_raster_clip_tLb0EE5allocEjb.exit.thread8.i.i: ; preds = %bb.aw, %.thread.i.i.i
  %.sink.i.ph.in.i.i = phi i32 [ %i.qx, %.thread.i.i.i ], [ %i.rg, %bb.aw ]
  %.sink.i.ph.i.i = xor i32 %.sink.i.ph.in.i.i, -1
  store i32 %.sink.i.ph.i.i, ptr %i.qv, align 8, !tbaa !87
  br label %_ZN11hb_vector_tI16hb_raster_clip_tLb0EE12push_or_failIJS0_EEEbDpOT_.exit.thread

_ZN11hb_vector_tI16hb_raster_clip_tLb0EE5allocEjb.exit.i.i: ; preds = %bb.av
  %i.rh = getelementptr inbounds nuw i8, ptr %1, i64 120
  store ptr %i.rf, ptr %i.rh, align 8, !tbaa !80
  store i32 %i.rc, ptr %i.qv, align 8, !tbaa !87
  br label %_ZN11hb_vector_tI16hb_raster_clip_tLb0EE12push_or_failIJS0_EEEbDpOT_.exit

_ZN11hb_vector_tI16hb_raster_clip_tLb0EE12push_or_failIJS0_EEEbDpOT_.exit.thread: ; preds = %_ZN11hb_vector_tI16hb_raster_clip_tLb0EE5allocEjb.exit.thread8.i.i, %bb.at
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(64) @_hb_NullPool, i64 64, i1 false)
  br label %bb.ax

_ZN11hb_vector_tI16hb_raster_clip_tLb0EE12push_or_failIJS0_EEEbDpOT_.exit: ; preds = %.thread561, %bb.au, %bb.aw, %_ZN11hb_vector_tI16hb_raster_clip_tLb0EE5allocEjb.exit.i.i
  %i.ri = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !80
  %i.rk = load i32, ptr %i.cd, align 4, !tbaa !85 ; 2 uses
  %i.rl = add i32 %i.rk, 1
  store i32 %i.rl, ptr %i.cd, align 4, !tbaa !85
  %i.rm = zext i32 %i.rk to i64
  %i.rn = getelementptr inbounds nuw [64 x i8], ptr %i.rj, i64 %i.rm ; 14 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 4
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rn, i64 8
  store i32 %.sroa.0.2, ptr %i.rn, align 8, !tbaa !83
  store i32 %.sroa.15.2, ptr %i.ro, align 4, !tbaa !86
  store ptr %.sroa.26.2, ptr %i.rp, align 8, !tbaa !84
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rn, i64 16
  store <2 x i32> %i.ad, ptr %i.rq, align 8
  %.sroa.48.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rn, i64 24
  store i32 %i.en, ptr %.sroa.48.16..sroa_idx, align 8
  %.sroa.54.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rn, i64 28
  store i8 %.sroa.54.0, ptr %.sroa.54.16..sroa_idx, align 4
  %.sroa.58.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rn, i64 29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.58.16..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.19.i.sroa.7, i64 3, i1 false)
  %.sroa.58415.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rn, i64 32
  store i32 %.sroa.58415.0, ptr %.sroa.58415.16..sroa_idx, align 8
  %.sroa.61.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rn, i64 36
  store i32 %.sroa.61.0, ptr %.sroa.61.16..sroa_idx, align 4
  %.sroa.63.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rn, i64 40
  store <2 x i32> %i.qt, ptr %.sroa.63.16..sroa_idx, align 8
  %.sroa.67.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rn, i64 48
  store <2 x i32> %i.qu, ptr %.sroa.67.16..sroa_idx, align 8
  %.sroa.85.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rn, i64 56
  store i32 %.sroa.85.10, ptr %.sroa.85.16..sroa_idx, align 8
  %.sroa.94.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rn, i64 60
  store i32 %.sroa.94.10, ptr %.sroa.94.16..sroa_idx, align 4
  %.not615 = icmp eq ptr %i.rn, @_hb_CrapPool
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(64) @_hb_NullPool, i64 64, i1 false)
  br i1 %.not615, label %bb.ax, label %_ZN16hb_raster_clip_tD2Ev.exit, !prof !116

bb.ax:                                            ; preds = %_ZN11hb_vector_tI16hb_raster_clip_tLb0EE12push_or_failIJS0_EEEbDpOT_.exit.thread, %_ZN11hb_vector_tI16hb_raster_clip_tLb0EE12push_or_failIJS0_EEEbDpOT_.exit
  %.sroa.26.9609 = phi ptr [ %.sroa.26.2, %_ZN11hb_vector_tI16hb_raster_clip_tLb0EE12push_or_failIJS0_EEEbDpOT_.exit.thread ], [ null, %_ZN11hb_vector_tI16hb_raster_clip_tLb0EE12push_or_failIJS0_EEEbDpOT_.exit ]
  %.sroa.0.9608 = phi i32 [ %.sroa.0.2, %_ZN11hb_vector_tI16hb_raster_clip_tLb0EE12push_or_failIJS0_EEEbDpOT_.exit.thread ], [ 0, %_ZN11hb_vector_tI16hb_raster_clip_tLb0EE12push_or_failIJS0_EEEbDpOT_.exit ]
  %i.rr = load i32, ptr %i.w, align 8, !tbaa !106
  %i.rs = load i32, ptr %i.x, align 4, !tbaa !103
  tail call fastcc void @_ZL31hb_raster_paint_push_empty_clipP17hb_raster_paint_tjj(ptr noundef nonnull %1, i32 noundef %i.rr, i32 noundef %i.rs)
  br label %bb.ay

bb.ay:                                            ; preds = %.thread597, %.thread545, %bb.ax
  %.sroa.0.3 = phi i32 [ %.sroa.0.1574, %.thread597 ], [ %.sroa.0.9608, %bb.ax ], [ %.sroa.0.0550, %.thread545 ]
  %.sroa.26.3 = phi ptr [ %.sroa.26.4, %.thread597 ], [ %.sroa.26.9609, %bb.ax ], [ %.sroa.26.4, %.thread545 ]
  %i.rt = add i32 %.sroa.0.3, -1
  %spec.select.i.i.i.i = icmp ult i32 %i.rt, -2
  br i1 %spec.select.i.i.i.i, label %bb.az, label %_ZN16hb_raster_clip_tD2Ev.exit

bb.az:                                            ; preds = %bb.ay
  tail call void @hb_free(ptr noundef %.sroa.26.3) #17
  br label %_ZN16hb_raster_clip_tD2Ev.exit

_ZN16hb_raster_clip_tD2Ev.exit:                   ; preds = %bb.az, %bb.ay, %_ZN11hb_vector_tI16hb_raster_clip_tLb0EE12push_or_failIJS0_EEEbDpOT_.exit, %_ZNK16hb_raster_clip_t20has_valid_alpha_maskEv.exit.thread, %_ZN17hb_raster_paint_t11charge_workEl.exit, %_ZN17hb_raster_paint_t15current_surfaceEv.exit, %bb.a
  ret void
}

declare void @hb_paint_funcs_set_push_clip_path_start_func(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal noundef ptr @_ZL36hb_raster_paint_push_clip_path_startP16hb_paint_funcs_tPvPS1_S1_(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  tail call fastcc void @_ZL18ensure_initializedP17hb_raster_paint_t(ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.b = load i32, ptr %i.a, align 4, !tbaa !75
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.critedge, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !40   ; 4 uses
  %.not12 = icmp eq ptr %i.d, null
  br i1 %.not12, label %.critedge, label %bb.c, !prof !13

.critedge:                                        ; preds = %bb.a, %bb.b
  store ptr null, ptr %2, align 8, !tbaa !57
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 100
end_hunk_0
begin_hunk_1_@_ZL21hb_raster_paint_colorP16hb_paint_funcs_tPvijS1_:bb.a
  br i1 %.not.i, label %_ZN17hb_raster_paint_t15current_surfaceEv.exit.thread, label %_ZN17hb_raster_paint_t15current_surfaceEv.exit

_ZN17hb_raster_paint_t15current_surfaceEv.exit:   ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !42
  %i.e = add i32 %i.b, -1
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !45   ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %_ZN17hb_raster_paint_t15current_surfaceEv.exit.thread, label %bb.b, !prof !100

bb.b:                                             ; preds = %_ZN17hb_raster_paint_t15current_surfaceEv.exit
  tail call fastcc void @_ZL21hb_raster_paint_solidP17hb_raster_paint_tP17hb_raster_image_tjS2_(ptr noundef nonnull %1, ptr noundef nonnull %i.h, i32 noundef %3, ptr noundef null)
  br label %_ZN17hb_raster_paint_t15current_surfaceEv.exit.thread

_ZN17hb_raster_paint_t15current_surfaceEv.exit.thread: ; preds = %bb.a, %_ZN17hb_raster_paint_t15current_surfaceEv.exit, %bb.b
  ret void
}

declare void @hb_paint_funcs_set_image_func(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal noundef range(i32 0, 2) i32 @_ZL21hb_raster_paint_imageP16hb_paint_funcs_tPvP9hb_blob_tjjjfP18hb_glyph_extents_tS1_(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, float %6, ptr nofree noundef readonly captures(address_is_null) %7, ptr nofree readnone captures(none) %8) #0 {
bb.a:
  %9 = alloca %struct.hb_raster_image_t, align 8  ; 12 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  tail call fastcc void @_ZL18ensure_initializedP17hb_raster_paint_t(ptr noundef %1)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !39
  %i.d = icmp slt i64 %i.c, 1
  br i1 %i.d, label %bb.ac, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  store i32 0, ptr %9, align 8, !tbaa !233
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i8 0, ptr %i.e, align 4, !tbaa !234
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, i8 0, i64 48, i1 false)
  switch i32 %5, label %_ZN17hb_raster_paint_t11charge_workEl.exit [
    i32 1111970369, label %bb.c
    i32 1886283552, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ne i32 %3, 0
  %i.h = icmp ne i32 %4, 0
  %or.cond.not265 = and i1 %i.g, %i.h
  %i.i = or i32 %4, %3
  %or.cond4.not = icmp sgt i32 %i.i, -1
  %or.cond246 = and i1 %or.cond.not265, %or.cond4.not
  br i1 %or.cond246, label %bb.d, label %_ZN17hb_raster_paint_t11charge_workEl.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.j = call ptr @hb_blob_get_data(ptr noundef %2, ptr noundef nonnull %i.a) #17 ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = zext nneg i32 %3 to i64
  %i.l = zext nneg i32 %4 to i64
  %i.m = shl nuw nsw i64 %i.k, 2
  %i.n = mul nuw i64 %i.m, %i.l
  %i.o = load i32, ptr %i.a, align 4, !tbaa !66
  %i.p = zext i32 %i.o to i64
  %i.q = icmp ugt i64 %i.n, %i.p
  br i1 %i.q, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.i

bb.g:                                             ; preds = %bb.b
  %i.r = call noundef zeroext i1 @_ZN17hb_raster_image_t20deserialize_from_pngEP9hb_blob_t(ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef %2) #17
  br i1 %i.r, label %bb.h, label %_ZN17hb_raster_paint_t11charge_workEl.exit

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 44
  %i.u = load i32, ptr %i.s, align 8, !tbaa !106
  %i.v = load i32, ptr %i.t, align 4, !tbaa !103
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !119
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h
  %.0222 = phi i32 [ %3, %bb.f ], [ %i.u, %bb.h ] ; 4 uses
  %.0221 = phi i32 [ %4, %bb.f ], [ %i.v, %bb.h ] ; 4 uses
  %.2220 = phi ptr [ %i.j, %bb.f ], [ %i.x, %bb.h ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.z = load i32, ptr %i.y, align 4, !tbaa !75   ; 2 uses
  %.not.i = icmp eq i32 %i.z, 0
  br i1 %.not.i, label %_ZN17hb_raster_paint_t11charge_workEl.exit, label %_ZN17hb_raster_paint_t15current_surfaceEv.exit

_ZN17hb_raster_paint_t15current_surfaceEv.exit:   ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !42
  %i.ac = add i32 %i.z, -1
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !45 ; 6 uses
  %.not240 = icmp eq ptr %i.af, null
  %.not241 = icmp eq ptr %7, null
  %or.cond247 = or i1 %.not241, %.not240
  br i1 %or.cond247, label %_ZN17hb_raster_paint_t11charge_workEl.exit, label %bb.j, !prof !235

bb.j:                                             ; preds = %_ZN17hb_raster_paint_t15current_surfaceEv.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !85 ; 2 uses
  %.not.i.not.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i.not.i.i, label %bb.k, label %bb.l, !prof !13

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(64) @_hb_NullPool, i64 64, i1 false)
  br label %_ZN17hb_raster_paint_t12current_clipEv.exit

bb.l:                                             ; preds = %bb.j
  %i.ai = add i32 %i.ah, -1
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !80
  %i.al = zext i32 %i.ai to i64
  %i.am = getelementptr inbounds nuw [64 x i8], ptr %i.ak, i64 %i.al
  br label %_ZN17hb_raster_paint_t12current_clipEv.exit

_ZN17hb_raster_paint_t12current_clipEv.exit:      ; preds = %bb.k, %bb.l
  %.0.i.i.i = phi ptr [ @_hb_CrapPool, %bb.k ], [ %i.am, %bb.l ] ; 7 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !99, !noalias !236 ; 2 uses
  %.not.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i, label %_ZN17hb_raster_paint_t27current_effective_transformEv.exit, label %_ZN11hb_vector_tI14hb_transform_tIfELb0EE4tailEv.exit.i.i, !prof !13

_ZN11hb_vector_tI14hb_transform_tIfELb0EE4tailEv.exit.i.i: ; preds = %_ZN17hb_raster_paint_t12current_clipEv.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !95, !noalias !236
  %i.ar = add i32 %i.ao, -1
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %i.as ; 4 uses
  %.sroa.0254.0.copyload = load float, ptr %i.at, align 4, !tbaa !16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  %.sroa.12.0.copyload = load float, ptr %.sroa.12.0..sroa_idx, align 4, !tbaa !16
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.au = load <2 x float>, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !16
  %i.av = load <2 x float>, ptr %.sroa.15.0..sroa_idx, align 4, !tbaa !16
  %i.aw = insertelement <2 x float> poison, float %.sroa.0254.0.copyload, i64 0
  %i.ax = insertelement <2 x float> %i.aw, float %.sroa.12.0.copyload, i64 1
  br label %_ZN17hb_raster_paint_t27current_effective_transformEv.exit

_ZN17hb_raster_paint_t27current_effective_transformEv.exit: ; preds = %_ZN17hb_raster_paint_t12current_clipEv.exit, %_ZN11hb_vector_tI14hb_transform_tIfELb0EE4tailEv.exit.i.i
  %i.ay = phi <2 x float> [ %i.au, %_ZN11hb_vector_tI14hb_transform_tIfELb0EE4tailEv.exit.i.i ], [ zeroinitializer, %_ZN17hb_raster_paint_t12current_clipEv.exit ]
  %i.az = phi <2 x float> [ %i.av, %_ZN11hb_vector_tI14hb_transform_tIfELb0EE4tailEv.exit.i.i ], [ zeroinitializer, %_ZN17hb_raster_paint_t12current_clipEv.exit ]
  %i.ba = phi <2 x float> [ %i.ax, %_ZN11hb_vector_tI14hb_transform_tIfELb0EE4tailEv.exit.i.i ], [ splat (float 1.000000e+00), %_ZN17hb_raster_paint_t12current_clipEv.exit ]
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bc = load <2 x float>, ptr %i.bb, align 8, !tbaa !16, !noalias !237 ; 3 uses
  %i.bd = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.be = fdiv <2 x float> %i.ay, %i.bd           ; 4 uses
  %i.bf = fdiv <2 x float> %i.ba, %i.bc           ; 5 uses
  %i.bg = extractelement <2 x float> %i.be, i64 0
  %i.bh = fneg float %i.bg                        ; 2 uses
  %i.bi = extractelement <2 x float> %i.be, i64 1
  %i.bj = fmul float %i.bi, %i.bh
  %i.bk = extractelement <2 x float> %i.bf, i64 0
  %i.bl = extractelement <2 x float> %i.bf, i64 1
  %i.bm = call float @llvm.fmuladd.f32(float %i.bk, float %i.bl, float %i.bj) ; 2 uses
  %i.bn = call float @llvm.fabs.f32(float %i.bm)
  %i.bo = fcmp olt float %i.bn, 1.000000e-10
  br i1 %i.bo, label %_ZN17hb_raster_paint_t11charge_workEl.exit, label %bb.m

bb.m:                                             ; preds = %_ZN17hb_raster_paint_t27current_effective_transformEv.exit
  %i.bp = fdiv <2 x float> %i.az, %i.bc           ; 2 uses
  %i.bq = fdiv float 1.000000e+00, %i.bm
  %i.br = insertelement <2 x float> poison, float %i.bq, i64 0
  %i.bs = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bt = insertelement <2 x float> %i.bf, float %i.bh, i64 0
  %i.bu = fmul <2 x float> %i.bs, %i.bt           ; 4 uses
  %i.bv = fneg <2 x float> %i.be
  %i.bw = shufflevector <2 x float> %i.bf, <2 x float> %i.bv, <2 x i32> <i32 0, i32 3>
  %i.bx = fmul <2 x float> %i.bw, %i.bs           ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.bz = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !120 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.af, i64 36
  %i.cc = fneg <2 x float> %i.bp
  %i.cd = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ce = fmul <2 x float> %i.bf, %i.cd
  %i.cf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.be, <2 x float> %i.bp, <2 x float> %i.ce)
  %i.cg = fmul <2 x float> %i.cf, %i.bs           ; 2 uses
  %i.ch = load i32, ptr %i.by, align 8, !tbaa !121 ; 2 uses
  %i.ci = load i32, ptr %i.cb, align 4, !tbaa !122 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ck = uitofp i32 %.0222 to float
  %i.cl = uitofp i32 %.0221 to float
  %i.cm = load <2 x i32>, ptr %7, align 4, !tbaa !66
  %i.cn = sitofp <2 x i32> %i.cm to <2 x float>   ; 2 uses
  %i.co = load <2 x i32>, ptr %i.cj, align 4, !tbaa !66
  %i.cp = sitofp <2 x i32> %i.co to <2 x float>
  %i.cq = insertelement <2 x float> poison, float %i.ck, i64 0
  %i.cr = insertelement <2 x float> %i.cq, float %i.cl, i64 1
  %i.cs = fdiv <2 x float> %i.cp, %i.cr           ; 3 uses
  %10 = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.cs)
  %11 = fcmp olt <2 x float> %10, splat (float 1.000000e-10) ; 2 uses
  %12 = extractelement <2 x i1> %11, i64 0
  %13 = extractelement <2 x i1> %11, i64 1
  %or.cond243 = select i1 %12, i1 true, i1 %13
  br i1 %or.cond243, label %_ZN17hb_raster_paint_t11charge_workEl.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 56 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 48 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 60 ; 3 uses
  %i.cw = zext i32 %.0222 to i64                  ; 5 uses
  %i.cx = load i64, ptr %i.b, align 8, !tbaa !39  ; 2 uses
  %i.cy = icmp sgt i64 %i.cx, 0
  br i1 %i.cy, label %bb.o, label %_ZN17hb_raster_paint_t11charge_workEl.exit, !prof !47

bb.o:                                             ; preds = %bb.n
  %i.cz = load i32, ptr %i.cv, align 4, !tbaa !123 ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 52
  %i.db = load i32, ptr %i.da, align 4, !tbaa !124 ; 4 uses
  %i.dc = icmp ugt i32 %i.cz, %i.db               ; 3 uses
  %i.dd = load i32, ptr %i.ct, align 8, !tbaa !125 ; 7 uses
  %i.de = load i32, ptr %i.cu, align 8, !tbaa !126 ; 3 uses
  %narrow = call i32 @llvm.usub.sat.i32(i32 %i.dd, i32 %i.de)
  %i.df = zext i32 %narrow to i64
  %i.dg = sub nuw i32 %i.cz, %i.db
  %i.dh = zext i32 %i.dg to i64
  %i.di = mul nuw nsw i64 %i.df, %i.dh
  %i.dj = select i1 %i.dc, i64 %i.di, i64 0
  %i.dk = zext i32 %.0221 to i64
  %i.dl = mul nuw nsw i64 %i.dk, %i.cw
  %i.dm = add nuw i64 %i.dl, %i.dj
  %i.dn = sub i64 %i.cx, %i.dm
  store i64 %i.dn, ptr %i.b, align 8, !tbaa !39
  %i.do = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 28
  %i.dp = load i8, ptr %i.do, align 4, !tbaa !90, !range !71, !noundef !72
  %i.dq = trunc nuw i8 %i.dp to i1
  br i1 %i.dq, label %.preheader, label %.preheader269

.preheader269:                                    ; preds = %bb.o
  br i1 %i.dc, label %.lr.ph275, label %_ZN17hb_raster_paint_t11charge_workEl.exit

.lr.ph275:                                        ; preds = %.preheader269
  %i.dr = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !119
  %i.dt = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !107
  %i.dv = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  %i.dw = add i32 %.0221, -1                      ; 2 uses
  %i.dx = uitofp i32 %i.dw to float               ; 2 uses
  %i.dy = add i32 %.0222, -1                      ; 2 uses
  %i.dz = uitofp i32 %i.dy to float
  %i.ea = icmp ult i32 %i.de, %i.dd
  br i1 %i.ea, label %.lr.ph275.split.preheader, label %_ZN17hb_raster_paint_t11charge_workEl.exit

.lr.ph275.split.preheader:                        ; preds = %.lr.ph275
  %i.eb = zext i32 %i.db to i64
  %i.ec = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ed = shufflevector <2 x float> %i.cs, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %.lr.ph275.split

.preheader:                                       ; preds = %bb.o
  br i1 %i.dc, label %.lr.ph283, label %_ZN17hb_raster_paint_t11charge_workEl.exit

.lr.ph283:                                        ; preds = %.preheader
  %i.ee = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !119
  %i.eg = add i32 %.0221, -1                      ; 2 uses
  %i.eh = uitofp i32 %i.eg to float               ; 2 uses
  %i.ei = add i32 %.0222, -1                      ; 2 uses
  %i.ej = uitofp i32 %i.ei to float
  %i.ek = icmp ult i32 %i.de, %i.dd
  br i1 %i.ek, label %.lr.ph283.split.preheader, label %_ZN17hb_raster_paint_t11charge_workEl.exit

.lr.ph283.split.preheader:                        ; preds = %.lr.ph283
  %i.el = zext i32 %i.db to i64
  br label %.lr.ph283.split

.lr.ph283.split:                                  ; preds = %.lr.ph283.split.preheader, %._crit_edge281
  %i.em = phi i32 [ %i.cz, %.lr.ph283.split.preheader ], [ %i.fh, %._crit_edge281 ]
  %i.en = phi i32 [ %i.dd, %.lr.ph283.split.preheader ], [ %i.fi, %._crit_edge281 ] ; 2 uses
  %i.eo = phi i32 [ %i.dd, %.lr.ph283.split.preheader ], [ %i.fj, %._crit_edge281 ] ; 2 uses
  %indvars.iv294 = phi i64 [ %i.el, %.lr.ph283.split.preheader ], [ %indvars.iv.next295, %._crit_edge281 ] ; 2 uses
  %i.ep = trunc nuw i64 %indvars.iv294 to i32     ; 2 uses
  %i.eq = mul i32 %i.ca, %i.ep
  %i.er = zext i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.er
  %i.et = load i32, ptr %i.cu, align 8, !tbaa !126 ; 3 uses
  %i.eu = icmp ult i32 %i.et, %i.eo
  br i1 %i.eu, label %.lr.ph280.preheader, label %._crit_edge281

.lr.ph280.preheader:                              ; preds = %.lr.ph283.split
  %i.ev = add nsw i32 %i.et, %i.ch
  %i.ew = add nsw i32 %i.ci, %i.ep
  %i.ex = sitofp i32 %i.ev to float
  %i.ey = sitofp i32 %i.ew to float
  %i.ez = insertelement <2 x float> poison, float %i.ey, i64 0
  %i.fa = shufflevector <2 x float> %i.ez, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fb = fmul <2 x float> %i.bx, %i.fa
  %i.fc = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.fd = shufflevector <2 x float> %i.fc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fe = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %i.fd, <2 x float> %i.fb)
  %i.ff = fadd <2 x float> %i.cg, %i.fe
  %i.fg = zext i32 %i.et to i64
  br label %.lr.ph280

._crit_edge281.loopexit:                          ; preds = %.thread
  %.pre299 = load i32, ptr %i.cv, align 4, !tbaa !123
  br label %._crit_edge281

._crit_edge281:                                   ; preds = %._crit_edge281.loopexit, %.lr.ph283.split
  %i.fh = phi i32 [ %.pre299, %._crit_edge281.loopexit ], [ %i.em, %.lr.ph283.split ] ; 2 uses
  %i.fi = phi i32 [ %i.jm, %._crit_edge281.loopexit ], [ %i.en, %.lr.ph283.split ]
  %i.fj = phi i32 [ %i.jm, %._crit_edge281.loopexit ], [ %i.eo, %.lr.ph283.split ]
  %indvars.iv.next295 = add nuw nsw i64 %indvars.iv294, 1 ; 2 uses
  %i.fk = zext i32 %i.fh to i64
  %i.fl = icmp samesign ult i64 %indvars.iv.next295, %i.fk
  br i1 %i.fl, label %.lr.ph283.split, label %_ZN17hb_raster_paint_t11charge_workEl.exit, !llvm.loop !229

.lr.ph280:                                        ; preds = %.lr.ph280.preheader, %.thread
  %i.fm = phi i32 [ %i.en, %.lr.ph280.preheader ], [ %i.jm, %.thread ] ; 3 uses
  %indvars.iv291 = phi i64 [ %i.fg, %.lr.ph280.preheader ], [ %indvars.iv.next292, %.thread ] ; 2 uses
  %i.fn = phi <2 x float> [ %i.ff, %.lr.ph280.preheader ], [ %i.jn, %.thread ] ; 2 uses
  %i.fo = shufflevector <2 x float> %i.fn, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fp = fsub <2 x float> %i.fo, %i.cn
  %i.fq = fdiv <2 x float> %i.fp, %i.cs           ; 2 uses
  %i.fr = extractelement <2 x float> %i.fq, i64 1
  %i.fs = fsub float %i.eh, %i.fr                 ; 5 uses
  %i.ft = extractelement <2 x float> %i.fq, i64 0 ; 5 uses
  %i.fu = call float @llvm.fabs.f32(float %i.ft)
  %i.fv = fcmp ueq float %i.fu, +inf
  br i1 %i.fv, label %.thread, label %bb.p, !prof !13

bb.p:                                             ; preds = %.lr.ph280
  %i.fw = call float @llvm.fabs.f32(float %i.fs)
  %i.fx = fcmp ueq float %i.fw, +inf
  %i.fy = fcmp olt float %i.ft, 0.000000e+00
  %or.cond6 = or i1 %i.fy, %i.fx
  %i.fz = fcmp olt float %i.fs, 0.000000e+00
  %or.cond8 = select i1 %or.cond6, i1 true, i1 %i.fz, !prof !238
  br i1 %or.cond8, label %.thread, label %bb.q, !prof !239

bb.q:                                             ; preds = %bb.p
  %i.ga = fcmp ogt float %i.ft, %i.ej
  %i.gb = fcmp ogt float %i.fs, %i.eh
  %or.cond244 = select i1 %i.ga, i1 true, i1 %i.gb
  br i1 %or.cond244, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gc = call float @llvm.floor.f32(float %i.ft)
  %i.gd = fptosi float %i.gc to i32               ; 3 uses
  %i.ge = call float @llvm.floor.f32(float %i.fs)
  %i.gf = fptosi float %i.ge to i32               ; 3 uses
  %i.gg = add nuw nsw i32 %i.gd, 1
  %i.gh = add nuw nsw i32 %i.gf, 1
  %spec.select.i = call i32 @llvm.smin.i32(i32 %i.gg, i32 %i.ei)
  %.075.i = call i32 @llvm.smin.i32(i32 %i.gh, i32 %i.eg)
  %i.gi = sitofp i32 %i.gd to float
  %i.gj = fsub float %i.ft, %i.gi                 ; 3 uses
  %i.gk = sitofp i32 %i.gf to float
  %i.gl = fsub float %i.fs, %i.gk                 ; 3 uses
  %i.gm = fsub float 1.000000e+00, %i.gj          ; 2 uses
  %i.gn = fsub float 1.000000e+00, %i.gl          ; 2 uses
  %i.go = zext nneg i32 %i.gf to i64
  %i.gp = mul nuw nsw i64 %i.go, %i.cw
  %i.gq = zext nneg i32 %i.gd to i64              ; 2 uses
  %i.gr = getelementptr [4 x i8], ptr %.2220, i64 %i.gp ; 2 uses
  %i.gs = getelementptr [4 x i8], ptr %i.gr, i64 %i.gq
  %i.gt = load <4 x i8>, ptr %i.gs, align 1, !tbaa !129
  %i.gu = sext i32 %spec.select.i to i64          ; 2 uses
  %i.gv = getelementptr [4 x i8], ptr %i.gr, i64 %i.gu
  %i.gw = load <4 x i8>, ptr %i.gv, align 1, !tbaa !129
  %i.gx = sext i32 %.075.i to i64
  %i.gy = mul nsw i64 %i.gx, %i.cw
  %i.gz = getelementptr [4 x i8], ptr %.2220, i64 %i.gy ; 2 uses
  %i.ha = getelementptr [4 x i8], ptr %i.gz, i64 %i.gq
  %i.hb = load <4 x i8>, ptr %i.ha, align 1, !tbaa !129
  %i.hc = getelementptr [4 x i8], ptr %i.gz, i64 %i.gu
  %i.hd = load <4 x i8>, ptr %i.hc, align 1, !tbaa !129
  %i.he = fmul float %i.gm, %i.gn
  %i.hf = fmul float %i.gj, %i.gn
  %i.hg = fmul float %i.gm, %i.gl
  %i.hh = fmul float %i.gj, %i.gl
  %i.hi = shufflevector <4 x i8> %i.gt, <4 x i8> poison, <4 x i32> <i32 0, i32 1, i32 3, i32 2>
  %i.hj = uitofp <4 x i8> %i.hi to <4 x float>
  %i.hk = shufflevector <4 x i8> %i.gw, <4 x i8> poison, <4 x i32> <i32 0, i32 1, i32 3, i32 2>
  %i.hl = uitofp <4 x i8> %i.hk to <4 x float>
  %i.hm = insertelement <4 x float> poison, float %i.hf, i64 0
  %i.hn = shufflevector <4 x float> %i.hm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ho = fmul <4 x float> %i.hn, %i.hl
  %i.hp = insertelement <4 x float> poison, float %i.he, i64 0
  %i.hq = shufflevector <4 x float> %i.hp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hj, <4 x float> %i.hq, <4 x float> %i.ho)
  %i.hs = shufflevector <4 x i8> %i.hb, <4 x i8> poison, <4 x i32> <i32 0, i32 1, i32 3, i32 2>
  %i.ht = uitofp <4 x i8> %i.hs to <4 x float>
  %i.hu = insertelement <4 x float> poison, float %i.hg, i64 0
  %i.hv = shufflevector <4 x float> %i.hu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ht, <4 x float> %i.hv, <4 x float> %i.hr)
  %i.hx = shufflevector <4 x i8> %i.hd, <4 x i8> poison, <4 x i32> <i32 0, i32 1, i32 3, i32 2>
  %i.hy = uitofp <4 x i8> %i.hx to <4 x float>
  %i.hz = insertelement <4 x float> poison, float %i.hh, i64 0
  %i.ia = shufflevector <4 x float> %i.hz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ib = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hy, <4 x float> %i.ia, <4 x float> %i.hw)
  %i.ic = fadd <4 x float> %i.ib, splat (float 5.000000e-01)
  %i.id = fptoui <4 x float> %i.ic to <4 x i32>   ; 2 uses
  %i.ie = shl <4 x i32> %i.id, <i32 0, i32 8, i32 24, i32 16>
  %i.if = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.ie) ; 4 uses
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %indvars.iv291 ; 2 uses
  %i.ih = load i32, ptr %i.ig, align 1, !tbaa !129 ; 4 uses
  %i.ii = lshr i32 %i.if, 24                      ; 3 uses
  %trunc266 = trunc nuw i32 %i.ii to i8
  switch i8 %trunc266, label %bb.t [
    i8 -1, label %_ZL18hb_raster_src_overjj.exit249
    i8 0, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r
  br label %_ZL18hb_raster_src_overjj.exit249

bb.t:                                             ; preds = %bb.r
  %i.ij = xor i32 %i.ii, 255                      ; 4 uses
  %i.ik = and i32 %i.ih, 255
  %i.il = mul nuw nsw i32 %i.ij, %i.ik
  %i.im = add nuw nsw i32 %i.il, 255
  %i.in = lshr i32 %i.im, 8
  %i.io = extractelement <4 x i32> %i.id, i64 0
  %i.ip = add i32 %i.in, %i.io
  %i.iq = lshr i32 %i.ih, 8                       ; 2 uses
  %i.ir = and i32 %i.iq, 255
  %i.is = mul nuw nsw i32 %i.ij, %i.ir
  %i.it = or i32 %i.if, 255
  %i.iu = add i32 %i.it, %i.is
  %i.iv = lshr i32 %i.ih, 24
  %i.iw = mul nuw nsw i32 %i.ij, %i.iv
  %i.ix = add nuw nsw i32 %i.iw, 255
  %i.iy = lshr i32 %i.ix, 8
  %i.iz = add nuw nsw i32 %i.iy, %i.ii
  %i.ja = and i32 %i.ip, 255
  %i.jb = and i32 %i.iu, 65280
  %i.jc = and i32 %i.iq, 65280
  %i.jd = mul nuw nsw i32 %i.jc, %i.ij
  %i.je = add nuw nsw i32 %i.jd, 65280
  %i.jf = and i32 %i.je, 16711680
  %i.jg = add i32 %i.jf, %i.if
  %i.jh = and i32 %i.jg, 16711680
  %i.ji = shl i32 %i.iz, 24
  %i.jj = or disjoint i32 %i.ja, %i.jb
  %i.jk = or disjoint i32 %i.jj, %i.jh
  %i.jl = or disjoint i32 %i.jk, %i.ji
  br label %_ZL18hb_raster_src_overjj.exit249

_ZL18hb_raster_src_overjj.exit249:                ; preds = %bb.r, %bb.s, %bb.t
  %.0.i248 = phi i32 [ %i.jl, %bb.t ], [ %i.ih, %bb.s ], [ %i.if, %bb.r ]
  store i32 %.0.i248, ptr %i.ig, align 1, !tbaa !66
  %.pre298 = load i32, ptr %i.ct, align 8, !tbaa !125
  br label %.thread

.thread:                                          ; preds = %.lr.ph280, %bb.p, %bb.q, %_ZL18hb_raster_src_overjj.exit249
  %i.jm = phi i32 [ %i.fm, %.lr.ph280 ], [ %i.fm, %bb.p ], [ %i.fm, %bb.q ], [ %.pre298, %_ZL18hb_raster_src_overjj.exit249 ] ; 4 uses
  %i.jn = fadd <2 x float> %i.bu, %i.fn
  %indvars.iv.next292 = add nuw nsw i64 %indvars.iv291, 1 ; 2 uses
  %i.jo = zext i32 %i.jm to i64
  %i.jp = icmp samesign ult i64 %indvars.iv.next292, %i.jo
  br i1 %i.jp, label %.lr.ph280, label %._crit_edge281.loopexit, !llvm.loop !230

.lr.ph275.split:                                  ; preds = %.lr.ph275.split.preheader, %._crit_edge
  %i.jq = phi i32 [ %i.cz, %.lr.ph275.split.preheader ], [ %i.kp, %._crit_edge ]
  %i.jr = phi i32 [ %i.dd, %.lr.ph275.split.preheader ], [ %i.kq, %._crit_edge ] ; 2 uses
  %i.js = phi i32 [ %i.dd, %.lr.ph275.split.preheader ], [ %i.kr, %._crit_edge ] ; 2 uses
  %indvars.iv288 = phi i64 [ %i.eb, %.lr.ph275.split.preheader ], [ %indvars.iv.next289, %._crit_edge ] ; 2 uses
  %i.jt = trunc nuw i64 %indvars.iv288 to i32     ; 3 uses
  %i.ju = mul i32 %i.ca, %i.jt
  %i.jv = zext i32 %i.ju to i64
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.jv
  %i.jx = load i32, ptr %i.dv, align 8, !tbaa !109
  %i.jy = mul i32 %i.jx, %i.jt
  %i.jz = zext i32 %i.jy to i64
  %i.ka = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.jz
  %i.kb = load i32, ptr %i.cu, align 8, !tbaa !126 ; 3 uses
  %i.kc = icmp ult i32 %i.kb, %i.js
  br i1 %i.kc, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph275.split
  %i.kd = add nsw i32 %i.kb, %i.ch
  %i.ke = add nsw i32 %i.ci, %i.jt
  %i.kf = sitofp i32 %i.kd to float
  %i.kg = sitofp i32 %i.ke to float
  %i.kh = insertelement <2 x float> poison, float %i.kg, i64 0
  %i.ki = shufflevector <2 x float> %i.kh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kj = fmul <2 x float> %i.bx, %i.ki
  %i.kk = insertelement <2 x float> poison, float %i.kf, i64 0
  %i.kl = shufflevector <2 x float> %i.kk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.km = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %i.kl, <2 x float> %i.kj)
  %i.kn = fadd <2 x float> %i.cg, %i.km
  %i.ko = zext i32 %i.kb to i64
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.thread260
  %.pre297 = load i32, ptr %i.cv, align 4, !tbaa !123
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph275.split
  %i.kp = phi i32 [ %.pre297, %._crit_edge.loopexit ], [ %i.jq, %.lr.ph275.split ] ; 2 uses
  %i.kq = phi i32 [ %i.px, %._crit_edge.loopexit ], [ %i.jr, %.lr.ph275.split ]
  %i.kr = phi i32 [ %i.px, %._crit_edge.loopexit ], [ %i.js, %.lr.ph275.split ]
  %indvars.iv.next289 = add nuw nsw i64 %indvars.iv288, 1 ; 2 uses
  %i.ks = zext i32 %i.kp to i64
  %i.kt = icmp samesign ult i64 %indvars.iv.next289, %i.ks
  br i1 %i.kt, label %.lr.ph275.split, label %_ZN17hb_raster_paint_t11charge_workEl.exit, !llvm.loop !231

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.thread260
  %i.ku = phi i32 [ %i.jr, %.lr.ph.preheader ], [ %i.px, %.thread260 ] ; 4 uses
  %indvars.iv = phi i64 [ %i.ko, %.lr.ph.preheader ], [ %indvars.iv.next, %.thread260 ] ; 3 uses
  %i.kv = phi <2 x float> [ %i.kn, %.lr.ph.preheader ], [ %i.py, %.thread260 ] ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ka, i64 %indvars.iv
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !115 ; 3 uses
  %i.ky = zext i8 %i.kx to i32                    ; 4 uses
  %i.kz = icmp eq i8 %i.kx, 0
  br i1 %i.kz, label %.thread260, label %bb.u

bb.u:                                             ; preds = %.lr.ph
  %i.la = fsub <2 x float> %i.kv, %i.ec
  %i.lb = fdiv <2 x float> %i.la, %i.ed           ; 2 uses
  %i.lc = extractelement <2 x float> %i.lb, i64 0
  %i.ld = fsub float %i.dx, %i.lc                 ; 5 uses
  %i.le = extractelement <2 x float> %i.lb, i64 1 ; 5 uses
end_hunk_1
