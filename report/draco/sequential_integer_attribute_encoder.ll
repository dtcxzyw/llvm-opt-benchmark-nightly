Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/draco/original/sequential_integer_attribute_encoder?download=true
inline.NumInlined: 2377
inline.NumDeleted: 912
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_ZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEE:bb.a
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.1

bb.m:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.br = sub nuw nsw i64 %i.g, %i.bm
  invoke void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, i64 noundef %i.br)
          to label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.1 unwind label %.loopexit.split-lp385.loopexit.split-lp

_ZNSt6vectorIiSaIiEE6resizeEm.exit.1:             ; preds = %bb.m, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.1, %bb.l, %bb.k
  %i.bs = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !149 ; 2 uses
  %i.bv = load ptr, ptr %i.bs, align 16, !tbaa !101 ; 2 uses
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = ashr exact i64 %i.by, 2                 ; 3 uses
  %i.ca = icmp ult i64 %i.bz, %i.g
  br i1 %i.ca, label %bb.p, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.1
  %i.cb = icmp ugt i64 %i.bz, %i.g
  br i1 %i.cb, label %bb.o, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.2

bb.o:                                             ; preds = %bb.n
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.g ; 2 uses
  %.not.i.i170.2 = icmp eq ptr %i.bu, %i.cc
  br i1 %.not.i.i170.2, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.2, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.2

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.2:      ; preds = %bb.o
  store ptr %i.cc, ptr %i.bt, align 8, !tbaa !149
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.2

bb.p:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.1
  %i.cd = sub nuw nsw i64 %i.g, %i.bz
  invoke void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i64 noundef %i.cd)
          to label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.2 unwind label %.loopexit.split-lp385.loopexit.split-lp

_ZNSt6vectorIiSaIiEE6resizeEm.exit.2:             ; preds = %bb.p, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.2, %bb.o, %bb.n
  %i.ce = getelementptr inbounds nuw i8, ptr %8, i64 72 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %8, i64 80 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 16, !tbaa !149 ; 2 uses
  %i.ch = load ptr, ptr %i.ce, align 8, !tbaa !101 ; 2 uses
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = ashr exact i64 %i.ck, 2                 ; 3 uses
  %i.cm = icmp ult i64 %i.cl, %i.g
  br i1 %i.cm, label %bb.s, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.2
  %i.cn = icmp ugt i64 %i.cl, %i.g
  br i1 %i.cn, label %bb.r, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.3

bb.r:                                             ; preds = %bb.q
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.g ; 2 uses
  %.not.i.i170.3 = icmp eq ptr %i.cg, %i.co
  br i1 %.not.i.i170.3, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.3, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.3

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.3:      ; preds = %bb.r
  store ptr %i.co, ptr %i.cf, align 16, !tbaa !149
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.3

bb.s:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.2
  %i.cp = sub nuw nsw i64 %i.g, %i.cl
  invoke void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ce, i64 noundef %i.cp)
          to label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.3 unwind label %.loopexit.split-lp385.loopexit.split-lp

_ZNSt6vectorIiSaIiEE6resizeEm.exit.3:             ; preds = %bb.s, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.3, %bb.r, %bb.q
  %i.cq = icmp slt i32 %4, 0
  br i1 %i.cq, label %bb.h, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc169, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.15359.0 = phi ptr [ %i.bb, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.bb, %.noexc169 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.0351.0 = phi ptr [ %i.ba, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ba, %.noexc169 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 27 uses
  %.0.i.i.i.i.i = phi ptr [ %i.bf, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.bc, %.noexc169 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ]
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 6 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !238 ; 2 uses
  %i.cu = load ptr, ptr %i.cr, align 8, !tbaa !236 ; 2 uses
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = ashr exact i64 %i.cx, 2                 ; 3 uses
  %i.cz = icmp ult i64 %i.cy, %i.g
  br i1 %i.cz, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.da = sub nuw nsw i64 %i.g, %i.cy
  invoke void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cr, i64 noundef %i.da)
          to label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174.thread unwind label %bb.x

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174.thread: ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  br label %bb.w

bb.u:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.db = icmp ugt i64 %i.cy, %i.g
  br i1 %i.db, label %bb.v, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174

bb.v:                                             ; preds = %bb.u
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.g ; 2 uses
  %.not.i.i172 = icmp eq ptr %i.ct, %i.dc
  br i1 %.not.i.i172, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.v
  store ptr %i.dc, ptr %i.cs, align 8, !tbaa !238
  br label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174: ; preds = %bb.u, %bb.v, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  br i1 %.not.i.i.i.i168, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit182, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174.thread, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174
  %i.dd = shl nuw nsw i64 %i.g, 2
  %i.de = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dd) #18
          to label %.noexc181 unwind label %bb.y  ; 5 uses

.noexc181:                                        ; preds = %bb.w
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.g ; 2 uses
  store i32 0, ptr %i.de, align 4, !tbaa !96
  %i.dg = getelementptr i8, ptr %i.de, i64 4      ; 3 uses
  %i.dh = add nsw i64 %i.g, -1                    ; 2 uses
  %i.di = icmp eq i64 %i.dh, 0
  br i1 %i.di, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit182, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i176

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i176: ; preds = %.noexc181
  %.idx.i.i.i.i.i.i.i177 = shl nuw nsw i64 %i.dh, 2 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.dg, i8 0, i64 %.idx.i.i.i.i.i.i.i177, i1 false), !tbaa !96
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.idx.i.i.i.i.i.i.i177
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit182

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit182:            ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i176, %.noexc181, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174
  %.sroa.15.0 = phi ptr [ %i.df, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i176 ], [ %i.df, %.noexc181 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174 ] ; 2 uses
  %.sroa.0342.0 = phi ptr [ %i.de, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i176 ], [ %i.de, %.noexc181 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174 ] ; 18 uses
  %.0.i.i.i.i.i178 = phi ptr [ %i.dj, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i176 ], [ %i.dg, %.noexc181 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174 ] ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !159 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !209
  %i.do = load ptr, ptr %i.dl, align 8, !tbaa !210
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = sub i64 %i.dp, %i.dq
  %i.ds = lshr exact i64 %i.dr, 2                 ; 2 uses
  %i.dt = trunc i64 %i.ds to i32
  %i.du = icmp sgt i32 %i.dt, 1
  br i1 %i.du, label %.lr.ph442, label %.preheader

.lr.ph442:                                        ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit182
  %i.dv = getelementptr inbounds nuw i8, ptr %i.aw, i64 160 ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.aw, i64 88
  %wide.trip.count.i189 = zext nneg i32 %4 to i64 ; 26 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 6 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.ed = ptrtoint ptr %.0.i.i.i.i.i to i64       ; 2 uses
  %i.ee = ptrtoint ptr %.sroa.0351.0 to i64       ; 3 uses
  %i.ef = sub i64 %i.ed, %i.ee                    ; 10 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 6 uses
  %i.ei = icmp sgt i64 %i.ef, 4                   ; 2 uses
  %i.ej = icmp eq i64 %i.ef, 4                    ; 2 uses
  %i.ek = icmp ugt i64 %i.ef, 9223372036854775804
  %i.el = ptrtoint ptr %.0.i.i.i.i.i178 to i64    ; 2 uses
  %i.em = ptrtoint ptr %.sroa.0342.0 to i64       ; 8 uses
  %i.en = sub i64 %i.el, %i.em                    ; 10 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 6 uses
  %i.eq = icmp sgt i64 %i.en, 4                   ; 2 uses
  %i.er = icmp eq i64 %i.en, 4                    ; 2 uses
  %i.es = icmp ugt i64 %i.en, 9223372036854775804
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.ey = shl nuw nsw i64 %wide.trip.count.i189, 2
  %i.ez = and i64 %i.ds, 2147483647               ; 4 uses
  %i.fa = add nsw i64 %i.ez, -1
  %i.fb = mul nsw i64 %i.fa, %i.g                 ; 2 uses
  %i.fc = mul i64 %i.fb, -4
  %i.fd = sub i64 %i.fc, %i.a
  %i.fe = shl nuw nsw i64 %i.g, 2
  %i.ff = shl i64 %i.fb, 2
  %i.fg = add i64 %i.ff, %i.a
  %i.fh = sub i64 %i.em, %i.fg
  %i.fi = shl nuw nsw i64 %wide.trip.count.i189, 2 ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.0351.0, i64 %i.fi
  %i.fj = add nsw i64 %i.ez, -1                   ; 2 uses
  %i.fk = mul nsw i64 %i.fj, %i.g
  %i.fl = mul i64 %i.fk, -4
  %i.fm = sub i64 %i.fl, %i.a
  %i.fn = add nsw i64 %i.ez, -2                   ; 2 uses
  %i.fo = mul nsw i64 %i.fn, %i.g
  %i.fp = mul i64 %i.fo, -4
  %i.fq = sub i64 %i.fp, %i.a
  %i.fr = mul nsw i64 %i.fj, %i.g
  %i.fs = shl i64 %i.fr, 2
  %i.ft = add i64 %i.fs, %i.a
  %i.fu = sub i64 %i.em, %i.ft
  %i.fv = shl nuw nsw i64 %i.g, 2
  %i.fw = mul nsw i64 %i.fn, %i.g
  %i.fx = shl i64 %i.fw, 2
  %i.fy = add i64 %i.fx, %i.a
  %i.fz = sub i64 %i.em, %i.fy
  %min.iters.check750 = icmp ult i32 %4, 12
  %n.vec758 = and i64 %wide.trip.count.i189, 2147483640 ; 3 uses
  %cmp.n769 = icmp eq i64 %n.vec758, %wide.trip.count.i189
  %xtraiter809 = and i64 %wide.trip.count.i189, 1
  %lcmp.mod810.not = icmp eq i64 %xtraiter809, 0
  %i.ga = add nsw i64 %wide.trip.count.i189, -1
  %min.iters.check716 = icmp ult i32 %4, 8
  %invariant.op839 = add i64 %i.fz, -1
  %invariant.op841 = add i64 %i.fu, -1
  %n.vec728 = and i64 %wide.trip.count.i189, 2147483640 ; 3 uses
  %cmp.n740 = icmp eq i64 %n.vec728, %wide.trip.count.i189
  %min.iters.check691 = icmp ult i32 %4, 8
  %n.vec694 = and i64 %wide.trip.count.i189, 2147483640 ; 3 uses
  %cmp.n703 = icmp eq i64 %n.vec694, %wide.trip.count.i189
  %xtraiter811 = and i64 %wide.trip.count.i189, 3 ; 2 uses
  %lcmp.mod812.not = icmp eq i64 %xtraiter811, 0
  %min.iters.check678 = icmp ult i32 %4, 4
  %n.vec680 = and i64 %wide.trip.count.i189, 2147483644 ; 3 uses
  %cmp.n686 = icmp eq i64 %n.vec680, %wide.trip.count.i189
  %min.iters.check654 = icmp ult i32 %4, 8
  %i.gb = sub i64 %i.ee, %i.em
  %diff.check657 = icmp ugt i64 %i.gb, -32
  %invariant.op843 = add i64 %i.fh, -1
  %invariant.op845 = add i64 %i.fd, -1
  %n.vec665 = and i64 %wide.trip.count.i189, 2147483640 ; 3 uses
  %cmp.n675 = icmp eq i64 %n.vec665, %wide.trip.count.i189
  %min.iters.check = icmp ult i32 %4, 8
  %n.vec = and i64 %wide.trip.count.i189, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i189
  %xtraiter813 = and i64 %wide.trip.count.i189, 1
  %lcmp.mod814.not = icmp eq i64 %xtraiter813, 0
  %i.gc = add nsw i64 %wide.trip.count.i189, -1
  br label %bb.z

.preheader:                                       ; preds = %_ZZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEEEN23PredictionConfigurationD2Ev.exit, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit182
  br i1 %.not.i.i.i.i168, label %._crit_edge445, label %.lr.ph444

.lr.ph444:                                        ; preds = %.preheader
  %i.gd = load ptr, ptr %8, align 16, !tbaa !101
  %i.ge = zext nneg i32 %4 to i64
  %i.gf = shl nuw nsw i64 %i.ge, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.gd, i8 0, i64 %i.gf, i1 false), !tbaa !96
  br label %._crit_edge445

.loopexit.split-lp385.loopexit.split-lp:          ; preds = %bb.j, %bb.m, %bb.p, %bb.s, %bb.i, %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit283

bb.x:                                             ; preds = %bb.t
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

bb.y:                                             ; preds = %bb.w
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit281

bb.z:                                             ; preds = %.lr.ph442, %_ZZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEEEN23PredictionConfigurationD2Ev.exit
  %indvar652 = phi i64 [ 0, %.lr.ph442 ], [ %indvar.next, %_ZZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEEEN23PredictionConfigurationD2Ev.exit ] ; 3 uses
  %indvars.iv501 = phi i64 [ %i.ez, %.lr.ph442 ], [ %indvars.iv.next502, %_ZZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEEEN23PredictionConfigurationD2Ev.exit ] ; 3 uses
  %i.gi = mul i64 %i.fe, %indvar652               ; 2 uses
  %indvars.iv.next502 = add nsw i64 %indvars.iv501, -1 ; 8 uses
  %i.gj = load ptr, ptr %i.dk, align 8, !tbaa !159 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !209
  %i.gm = load ptr, ptr %i.gj, align 8, !tbaa !210 ; 2 uses
  %i.gn = ptrtoint ptr %i.gl to i64
  %i.go = ptrtoint ptr %i.gm to i64
  %i.gp = sub i64 %i.gn, %i.go
  %i.gq = ashr exact i64 %i.gp, 2                 ; 2 uses
  %.not.i.i183 = icmp ugt i64 %i.gq, %indvars.iv.next502
  br i1 %.not.i.i183, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.6, i64 noundef %indvars.iv.next502, i64 noundef %i.gq) #20
          to label %.noexc184 unwind label %bb.ae

.noexc184:                                        ; preds = %bb.aa
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %indvars.iv.next502
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !212 ; 6 uses
  %.not369408 = icmp eq i32 %i.gs, -1
  br i1 %.not369408, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ab
  %i.gt = load ptr, ptr %i.aw, align 8, !tbaa !174, !noalias !435
  %i.gu = urem i32 %i.gs, 3
  %.not.i.i.i202 = icmp ne i32 %i.gu, 0           ; 2 uses
  %i.gv = add i32 %i.gs, -1
  %i.gw = add i32 %i.gs, 2                        ; 2 uses
  %i.gx = icmp ne i32 %i.gw, -1
  %brmerge = or i1 %.not.i.i.i202, %i.gx
  %.mux = select i1 %.not.i.i.i202, i32 %i.gv, i32 %i.gw ; 3 uses
  %i.gy = lshr i32 %.mux, 6
  %.zext.i.i.i205 = zext nneg i32 %i.gy to i64
  %i.gz = and i32 %.mux, 63
  %i.ha = zext nneg i32 %i.gz to i64
  %i.hb = shl nuw i64 1, %i.ha
  %i.hc = zext i32 %.mux to i64
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph, %_ZNK5draco24MeshAttributeCornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit211
  %.0144411 = phi i1 [ true, %.lr.ph ], [ %.1145, %_ZNK5draco24MeshAttributeCornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit211 ] ; 3 uses
  %.0146410 = phi i32 [ 0, %.lr.ph ], [ %.1147, %_ZNK5draco24MeshAttributeCornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit211 ] ; 5 uses
  %.sroa.0332.0409 = phi i32 [ %i.gs, %.lr.ph ], [ %.sroa.0332.2, %_ZNK5draco24MeshAttributeCornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit211 ] ; 8 uses
  %i.hd = sext i32 %.0146410 to i64
  %i.he = getelementptr inbounds [24 x i8], ptr %8, i64 %i.hd
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !101 ; 5 uses
  %i.hg = ptrtoaddr ptr %i.hf to i64
  %i.hh = lshr i32 %.sroa.0332.0409, 6
  %.zext.i.i.i = zext nneg i32 %i.hh to i64
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %.zext.i.i.i
  %i.hj = and i32 %.sroa.0332.0409, 63
  %i.hk = zext nneg i32 %i.hj to i64
  %i.hl = shl nuw i64 1, %i.hk
  %i.hm = load i64, ptr %i.hi, align 8, !tbaa !128, !noalias !435
  %i.hn = and i64 %i.hm, %i.hl
  %.not.i.i185 = icmp eq i64 %i.hn, 0
  br i1 %.not.i.i185, label %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, label %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit.thread

_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i: ; preds = %bb.ac
  %i.ho = load ptr, ptr %i.dv, align 8, !tbaa !232, !noalias !435
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 24
  %i.hq = zext i32 %.sroa.0332.0409 to i64
  %i.hr = load ptr, ptr %i.hp, align 8, !tbaa !210, !noalias !436
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %i.hq
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !212, !noalias !436 ; 5 uses
  %i.hu = icmp eq i32 %i.ht, -1
  br i1 %i.hu, label %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit.thread, label %_ZN5draco23GetParallelogramEntriesINS_24MeshAttributeCornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i

_ZN5draco23GetParallelogramEntriesINS_24MeshAttributeCornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i: ; preds = %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i
  %i.hv = zext i32 %i.ht to i64
  %i.hw = load ptr, ptr %i.dw, align 8, !tbaa !233, !noalias !437 ; 3 uses
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %i.hv
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !235, !noalias !437
  %i.hz = zext i32 %i.hy to i64
  %i.ia = load ptr, ptr %i.ay, align 8, !tbaa !101 ; 3 uses
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %i.hz
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !96 ; 2 uses
  %i.id = insertelement <2 x i32> poison, i32 %i.ht, i64 0
  %i.ie = shufflevector <2 x i32> %i.id, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.if = add nuw <2 x i32> %i.ie, <i32 0, i32 1>
  %i.ig = urem <2 x i32> %i.if, splat (i32 3)
  %i.ih = icmp eq <2 x i32> %i.ig, zeroinitializer ; 2 uses
  %i.ii = extractelement <2 x i1> %i.ih, i64 1
  %spec.select.i.i.i.i.v = select i1 %i.ii, i32 -2, i32 1
  %spec.select.i.i.i.i = add i32 %i.ht, %spec.select.i.i.i.i.v
  %i.ij = zext i32 %spec.select.i.i.i.i to i64
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %i.ij
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !235, !noalias !438
  %i.im = zext i32 %i.il to i64
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %i.im
  %i.io = load i32, ptr %i.in, align 4, !tbaa !96 ; 2 uses
  %i.ip = extractelement <2 x i1> %i.ih, i64 0
  %.sink.i.i12.i.v.i = select i1 %i.ip, i32 2, i32 -1
  %.sink.i.i12.i.i = add i32 %.sink.i.i12.i.v.i, %i.ht
  %i.iq = zext i32 %.sink.i.i12.i.i to i64
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %i.iq
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !235, !noalias !439
  %i.it = zext i32 %i.is to i64
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %i.it
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !96 ; 2 uses
  %i.iw = sext i32 %i.ic to i64
  %i.ix = icmp sgt i64 %indvars.iv.next502, %i.iw
  %i.iy = sext i32 %i.io to i64
  %i.iz = icmp sgt i64 %indvars.iv.next502, %i.iy
  %or.cond.i = select i1 %i.ix, i1 %i.iz, i1 false
  %i.ja = sext i32 %i.iv to i64
  %i.jb = icmp sgt i64 %indvars.iv.next502, %i.ja
  %or.cond40.i = select i1 %or.cond.i, i1 %i.jb, i1 false
  br i1 %or.cond40.i, label %bb.ad, label %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit.thread

bb.ad:                                            ; preds = %_ZN5draco23GetParallelogramEntriesINS_24MeshAttributeCornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i
  br i1 %.not.i.i.i.i168, label %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit, label %.lr.ph.preheader.i188

.lr.ph.preheader.i188:                            ; preds = %bb.ad
  %i.jc = mul nsw i32 %i.iv, %4
  %i.jd = mul nsw i32 %i.io, %4
  %i.je = mul nsw i32 %i.ic, %4
  %i.jf = sext i32 %i.jd to i64                   ; 2 uses
  %i.jg = sext i32 %i.jc to i64                   ; 2 uses
  %i.jh = sext i32 %i.je to i64                   ; 2 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %1, i64 %i.jf ; 4 uses
  %invariant.gep48.i = getelementptr [4 x i8], ptr %1, i64 %i.jg ; 4 uses
  %invariant.gep50.i = getelementptr [4 x i8], ptr %1, i64 %i.jh ; 4 uses
  br i1 %min.iters.check750, label %.lr.ph.i190.preheader, label %vector.memcheck751

vector.memcheck751:                               ; preds = %.lr.ph.preheader.i188
  %i.ji = shl nsw i64 %i.jf, 2
  %i.jj = sub i64 %i.hg, %i.a                     ; 3 uses
  %i.jk = sub i64 %i.ji, %i.jj
  %diff.check752 = icmp ugt i64 %i.jk, -32
  %i.jl = shl nsw i64 %i.jg, 2
  %i.jm = sub i64 %i.jl, %i.jj
  %diff.check753 = icmp ugt i64 %i.jm, -32
  %conflict.rdx754 = or i1 %diff.check752, %diff.check753
  %i.jn = shl nsw i64 %i.jh, 2
  %i.jo = sub i64 %i.jn, %i.jj
  %diff.check755 = icmp ugt i64 %i.jo, -32
  %conflict.rdx756 = or i1 %conflict.rdx754, %diff.check755
  br i1 %conflict.rdx756, label %.lr.ph.i190.preheader, label %vector.body759

vector.body759:                                   ; preds = %vector.memcheck751, %vector.body759
  %index760 = phi i64 [ %index.next767, %vector.body759 ], [ 0, %vector.memcheck751 ] ; 5 uses
  %i.jp = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %index760 ; 2 uses
  %i.jq = getelementptr i8, ptr %i.jp, i64 16
  %wide.load761 = load <4 x i32>, ptr %i.jp, align 4, !tbaa !96
  %wide.load762 = load <4 x i32>, ptr %i.jq, align 4, !tbaa !96
  %i.jr = getelementptr [4 x i8], ptr %invariant.gep48.i, i64 %index760 ; 2 uses
  %i.js = getelementptr i8, ptr %i.jr, i64 16
  %wide.load763 = load <4 x i32>, ptr %i.jr, align 4, !tbaa !96
  %wide.load764 = load <4 x i32>, ptr %i.js, align 4, !tbaa !96
  %i.jt = getelementptr [4 x i8], ptr %invariant.gep50.i, i64 %index760 ; 2 uses
  %i.ju = getelementptr i8, ptr %i.jt, i64 16
  %wide.load765 = load <4 x i32>, ptr %i.jt, align 4, !tbaa !96
  %wide.load766 = load <4 x i32>, ptr %i.ju, align 4, !tbaa !96
  %i.jv = add <4 x i32> %wide.load763, %wide.load761
  %i.jw = add <4 x i32> %wide.load764, %wide.load762
  %i.jx = sub <4 x i32> %i.jv, %wide.load765
  %i.jy = sub <4 x i32> %i.jw, %wide.load766
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %index760 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 16
  store <4 x i32> %i.jx, ptr %i.jz, align 4, !tbaa !96
  store <4 x i32> %i.jy, ptr %i.ka, align 4, !tbaa !96
  %index.next767 = add nuw i64 %index760, 8       ; 2 uses
  %i.kb = icmp eq i64 %index.next767, %n.vec758
  br i1 %i.kb, label %middle.block768, label %vector.body759, !llvm.loop !395

middle.block768:                                  ; preds = %vector.body759
  br i1 %cmp.n769, label %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit, label %.lr.ph.i190.preheader

.lr.ph.i190.preheader:                            ; preds = %vector.memcheck751, %.lr.ph.preheader.i188, %middle.block768
  %indvars.iv.i191.ph = phi i64 [ 0, %vector.memcheck751 ], [ 0, %.lr.ph.preheader.i188 ], [ %n.vec758, %middle.block768 ] ; 7 uses
  br i1 %lcmp.mod810.not, label %.lr.ph.i190.prol.loopexit, label %.lr.ph.i190.prol

.lr.ph.i190.prol:                                 ; preds = %.lr.ph.i190.preheader
  %gep.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i191.ph
  %i.kc = load i32, ptr %gep.i.prol, align 4, !tbaa !96
  %gep49.i.prol = getelementptr [4 x i8], ptr %invariant.gep48.i, i64 %indvars.iv.i191.ph
  %i.kd = load i32, ptr %gep49.i.prol, align 4, !tbaa !96
  %gep51.i.prol = getelementptr [4 x i8], ptr %invariant.gep50.i, i64 %indvars.iv.i191.ph
  %i.ke = load i32, ptr %gep51.i.prol, align 4, !tbaa !96
  %i.kf = add i32 %i.kd, %i.kc
  %i.kg = sub i32 %i.kf, %i.ke
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %indvars.iv.i191.ph
  store i32 %i.kg, ptr %i.kh, align 4, !tbaa !96
  %indvars.iv.next.i192.prol = or disjoint i64 %indvars.iv.i191.ph, 1
  br label %.lr.ph.i190.prol.loopexit

.lr.ph.i190.prol.loopexit:                        ; preds = %.lr.ph.i190.prol, %.lr.ph.i190.preheader
  %indvars.iv.i191.unr = phi i64 [ %indvars.iv.i191.ph, %.lr.ph.i190.preheader ], [ %indvars.iv.next.i192.prol, %.lr.ph.i190.prol ]
  %i.ki = icmp eq i64 %indvars.iv.i191.ph, %i.ga
  br i1 %i.ki, label %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit, label %.lr.ph.i190

.lr.ph.i190:                                      ; preds = %.lr.ph.i190.prol.loopexit, %.lr.ph.i190
  %indvars.iv.i191 = phi i64 [ %indvars.iv.next.i192.1, %.lr.ph.i190 ], [ %indvars.iv.i191.unr, %.lr.ph.i190.prol.loopexit ] ; 6 uses
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i191
  %i.kj = load i32, ptr %gep.i, align 4, !tbaa !96
  %gep49.i = getelementptr [4 x i8], ptr %invariant.gep48.i, i64 %indvars.iv.i191
  %i.kk = load i32, ptr %gep49.i, align 4, !tbaa !96
  %gep51.i = getelementptr [4 x i8], ptr %invariant.gep50.i, i64 %indvars.iv.i191
  %i.kl = load i32, ptr %gep51.i, align 4, !tbaa !96
  %i.km = add i32 %i.kk, %i.kj
  %i.kn = sub i32 %i.km, %i.kl
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %indvars.iv.i191
  store i32 %i.kn, ptr %i.ko, align 4, !tbaa !96
  %indvars.iv.next.i192 = add nuw nsw i64 %indvars.iv.i191, 1 ; 4 uses
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i192
  %i.kp = load i32, ptr %gep.i.1, align 4, !tbaa !96
  %gep49.i.1 = getelementptr [4 x i8], ptr %invariant.gep48.i, i64 %indvars.iv.next.i192
  %i.kq = load i32, ptr %gep49.i.1, align 4, !tbaa !96
  %gep51.i.1 = getelementptr [4 x i8], ptr %invariant.gep50.i, i64 %indvars.iv.next.i192
  %i.kr = load i32, ptr %gep51.i.1, align 4, !tbaa !96
  %i.ks = add i32 %i.kq, %i.kp
  %i.kt = sub i32 %i.ks, %i.kr
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %indvars.iv.next.i192
  store i32 %i.kt, ptr %i.ku, align 4, !tbaa !96
  %indvars.iv.next.i192.1 = add nuw nsw i64 %indvars.iv.i191, 2 ; 2 uses
  %exitcond.not.i193.1 = icmp eq i64 %indvars.iv.next.i192.1, %wide.trip.count.i189
  br i1 %exitcond.not.i193.1, label %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit, label %.lr.ph.i190, !llvm.loop !396

_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit: ; preds = %.lr.ph.i190.prol.loopexit, %.lr.ph.i190, %middle.block768, %bb.ad
  %i.kv = add nsw i32 %.0146410, 1                ; 2 uses
  %i.kw = icmp eq i32 %i.kv, 4
  br i1 %i.kw, label %._crit_edge, label %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit.thread

bb.ae:                                            ; preds = %bb.aa
  %i.kx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ds

_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit.thread: ; preds = %bb.ac, %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %_ZN5draco23GetParallelogramEntriesINS_24MeshAttributeCornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i, %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit
  %.1147 = phi i32 [ %i.kv, %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit ], [ %.0146410, %_ZN5draco23GetParallelogramEntriesINS_24MeshAttributeCornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i ], [ %.0146410, %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i ], [ %.0146410, %bb.ac ] ; 6 uses
  br i1 %.0144411, label %_ZNK5draco24MeshAttributeCornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, label %bb.ah

_ZNK5draco24MeshAttributeCornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i: ; preds = %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit.thread
  %i.ky = add nuw i32 %.sroa.0332.0409, 1         ; 2 uses
  %i.kz = urem i32 %i.ky, 3
  %.not.i.i.i = icmp eq i32 %i.kz, 0
  %i.la = add i32 %.sroa.0332.0409, -2
  %spec.select.i.i.i = select i1 %.not.i.i.i, i32 %i.la, i32 %i.ky ; 4 uses
  %i.lb = icmp eq i32 %spec.select.i.i.i, -1
  br i1 %i.lb, label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %bb.af

bb.af:                                            ; preds = %_ZNK5draco24MeshAttributeCornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i
  %i.lc = load ptr, ptr %i.aw, align 8, !tbaa !174, !noalias !440
  %i.ld = lshr i32 %spec.select.i.i.i, 6
  %.zext.i.i.i194 = zext nneg i32 %i.ld to i64
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %.zext.i.i.i194
  %i.lf = and i32 %spec.select.i.i.i, 63
  %i.lg = zext nneg i32 %i.lf to i64
  %i.lh = shl nuw i64 1, %i.lg
  %i.li = load i64, ptr %i.le, align 8, !tbaa !128, !noalias !440
  %i.lj = and i64 %i.li, %i.lh
  %.not.i.i195 = icmp eq i64 %i.lj, 0
  br i1 %.not.i.i195, label %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i196, label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i196: ; preds = %bb.af
  %i.lk = load ptr, ptr %i.dv, align 8, !tbaa !232, !noalias !440
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 24
  %i.lm = zext i32 %spec.select.i.i.i to i64
  %i.ln = load ptr, ptr %i.ll, align 8, !tbaa !210, !noalias !441
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.ln, i64 %i.lm
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !212, !noalias !441 ; 3 uses
  %i.lq = icmp eq i32 %i.lp, -1
  br i1 %i.lq, label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i196
  %i.lr = add nuw i32 %i.lp, 1                    ; 2 uses
  %i.ls = urem i32 %i.lr, 3
  %.not.i.i1.i = icmp eq i32 %i.ls, 0
  %i.lt = add i32 %i.lp, -2
  %spec.select.i.i2.i = select i1 %.not.i.i1.i, i32 %i.lt, i32 %i.lr
  br label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

bb.ah:                                            ; preds = %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit.thread
  %i.lu = urem i32 %.sroa.0332.0409, 3
  %.not.i.i.i197 = icmp eq i32 %i.lu, 0
  br i1 %.not.i.i.i197, label %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, label %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i

_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i: ; preds = %bb.ah
  %i.lv = add i32 %.sroa.0332.0409, -1
  br label %bb.ai

_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i: ; preds = %bb.ah
  %i.lw = add i32 %.sroa.0332.0409, 2             ; 2 uses
  %i.lx = icmp eq i32 %i.lw, -1
  br i1 %i.lx, label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i
  %.sink.i.i9.i = phi i32 [ %i.lv, %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i ], [ %i.lw, %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i ] ; 3 uses
  %i.ly = load ptr, ptr %i.aw, align 8, !tbaa !174, !noalias !442
  %i.lz = lshr i32 %.sink.i.i9.i, 6
  %.zext.i.i.i198 = zext nneg i32 %i.lz to i64
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %i.ly, i64 %.zext.i.i.i198
  %i.mb = and i32 %.sink.i.i9.i, 63
  %i.mc = zext nneg i32 %i.mb to i64
  %i.md = shl nuw i64 1, %i.mc
  %i.me = load i64, ptr %i.ma, align 8, !tbaa !128, !noalias !442
  %i.mf = and i64 %i.md, %i.me
  %.not.i.i199 = icmp eq i64 %i.mf, 0
  br i1 %.not.i.i199, label %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i200, label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i200: ; preds = %bb.ai
  %i.mg = load ptr, ptr %i.dv, align 8, !tbaa !232, !noalias !442
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 24
  %i.mi = zext i32 %.sink.i.i9.i to i64
  %i.mj = load ptr, ptr %i.mh, align 8, !tbaa !210, !noalias !443
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.mj, i64 %i.mi
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !212, !noalias !443 ; 4 uses
  %i.mm = icmp eq i32 %i.ml, -1
  br i1 %i.mm, label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i200
  %i.mn = urem i32 %i.ml, 3
  %.not.i.i1.i201 = icmp eq i32 %i.mn, 0
  br i1 %.not.i.i1.i201, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.mo = add i32 %i.ml, -1
  br label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

bb.al:                                            ; preds = %bb.aj
  %i.mp = add i32 %i.ml, 2
  br label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit: ; preds = %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %bb.ai, %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i200, %bb.ak, %bb.al, %_ZNK5draco24MeshAttributeCornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %bb.af, %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i196, %bb.ag
  %.sroa.0332.1 = phi i32 [ -1, %bb.af ], [ -1, %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i196 ], [ %spec.select.i.i2.i, %bb.ag ], [ -1, %_ZNK5draco24MeshAttributeCornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i ], [ %i.mo, %bb.ak ], [ %i.mp, %bb.al ], [ -1, %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i200 ], [ -1, %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i ], [ -1, %bb.ai ] ; 3 uses
  %i.mq = icmp eq i32 %.sroa.0332.1, %i.gs
  br i1 %i.mq, label %._crit_edge, label %bb.am

bb.am:                                            ; preds = %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %i.mr = icmp eq i32 %.sroa.0332.1, -1
  %or.cond = and i1 %.0144411, %i.mr
  br i1 %or.cond, label %bb.an, label %_ZNK5draco24MeshAttributeCornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit211

bb.an:                                            ; preds = %bb.am
end_hunk_0
begin_hunk_1_@_ZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEE:bb.a
  store ptr %i.bp, ptr %i.bi, align 16, !tbaa !149
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.1

bb.m:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.br = sub nuw nsw i64 %i.g, %i.bm
  invoke void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, i64 noundef %i.br)
          to label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.1 unwind label %.loopexit.split-lp379.loopexit.split-lp

_ZNSt6vectorIiSaIiEE6resizeEm.exit.1:             ; preds = %bb.m, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.1, %bb.l, %bb.k
  %i.bs = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !149 ; 2 uses
  %i.bv = load ptr, ptr %i.bs, align 16, !tbaa !101 ; 2 uses
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = ashr exact i64 %i.by, 2                 ; 3 uses
  %i.ca = icmp ult i64 %i.bz, %i.g
  br i1 %i.ca, label %bb.p, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.1
  %i.cb = icmp ugt i64 %i.bz, %i.g
  br i1 %i.cb, label %bb.o, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.2

bb.o:                                             ; preds = %bb.n
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.g ; 2 uses
  %.not.i.i170.2 = icmp eq ptr %i.bu, %i.cc
  br i1 %.not.i.i170.2, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.2, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.2

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.2:      ; preds = %bb.o
  store ptr %i.cc, ptr %i.bt, align 8, !tbaa !149
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.2

bb.p:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.1
  %i.cd = sub nuw nsw i64 %i.g, %i.bz
  invoke void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i64 noundef %i.cd)
          to label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.2 unwind label %.loopexit.split-lp379.loopexit.split-lp

_ZNSt6vectorIiSaIiEE6resizeEm.exit.2:             ; preds = %bb.p, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.2, %bb.o, %bb.n
  %i.ce = getelementptr inbounds nuw i8, ptr %8, i64 72 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %8, i64 80 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 16, !tbaa !149 ; 2 uses
  %i.ch = load ptr, ptr %i.ce, align 8, !tbaa !101 ; 2 uses
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = ashr exact i64 %i.ck, 2                 ; 3 uses
  %i.cm = icmp ult i64 %i.cl, %i.g
  br i1 %i.cm, label %bb.s, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.2
  %i.cn = icmp ugt i64 %i.cl, %i.g
  br i1 %i.cn, label %bb.r, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.3

bb.r:                                             ; preds = %bb.q
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.g ; 2 uses
  %.not.i.i170.3 = icmp eq ptr %i.cg, %i.co
  br i1 %.not.i.i170.3, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.3, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.3

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.3:      ; preds = %bb.r
  store ptr %i.co, ptr %i.cf, align 16, !tbaa !149
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.3

bb.s:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.2
  %i.cp = sub nuw nsw i64 %i.g, %i.cl
  invoke void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ce, i64 noundef %i.cp)
          to label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.3 unwind label %.loopexit.split-lp379.loopexit.split-lp

_ZNSt6vectorIiSaIiEE6resizeEm.exit.3:             ; preds = %bb.s, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.3, %bb.r, %bb.q
  %i.cq = icmp slt i32 %4, 0
  br i1 %i.cq, label %bb.h, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc169, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.15352.0 = phi ptr [ %i.bb, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.bb, %.noexc169 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.0344.0 = phi ptr [ %i.ba, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ba, %.noexc169 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 27 uses
  %.0.i.i.i.i.i = phi ptr [ %i.bf, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.bc, %.noexc169 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ]
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 6 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !238 ; 2 uses
  %i.cu = load ptr, ptr %i.cr, align 8, !tbaa !236 ; 2 uses
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = ashr exact i64 %i.cx, 2                 ; 3 uses
  %i.cz = icmp ult i64 %i.cy, %i.g
  br i1 %i.cz, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.da = sub nuw nsw i64 %i.g, %i.cy
  invoke void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cr, i64 noundef %i.da)
          to label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174.thread unwind label %bb.x

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174.thread: ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  br label %bb.w

bb.u:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.db = icmp ugt i64 %i.cy, %i.g
  br i1 %i.db, label %bb.v, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174

bb.v:                                             ; preds = %bb.u
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.g ; 2 uses
  %.not.i.i172 = icmp eq ptr %i.ct, %i.dc
  br i1 %.not.i.i172, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.v
  store ptr %i.dc, ptr %i.cs, align 8, !tbaa !238
  br label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174: ; preds = %bb.u, %bb.v, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  br i1 %.not.i.i.i.i168, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit182, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174.thread, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174
  %i.dd = shl nuw nsw i64 %i.g, 2
  %i.de = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dd) #18
          to label %.noexc181 unwind label %bb.y  ; 5 uses

.noexc181:                                        ; preds = %bb.w
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.g ; 2 uses
  store i32 0, ptr %i.de, align 4, !tbaa !96
  %i.dg = getelementptr i8, ptr %i.de, i64 4      ; 3 uses
  %i.dh = add nsw i64 %i.g, -1                    ; 2 uses
  %i.di = icmp eq i64 %i.dh, 0
  br i1 %i.di, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit182, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i176

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i176: ; preds = %.noexc181
  %.idx.i.i.i.i.i.i.i177 = shl nuw nsw i64 %i.dh, 2 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.dg, i8 0, i64 %.idx.i.i.i.i.i.i.i177, i1 false), !tbaa !96
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.idx.i.i.i.i.i.i.i177
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit182

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit182:            ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i176, %.noexc181, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174
  %.sroa.15.0 = phi ptr [ %i.df, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i176 ], [ %i.df, %.noexc181 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174 ] ; 2 uses
  %.sroa.0335.0 = phi ptr [ %i.de, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i176 ], [ %i.de, %.noexc181 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174 ] ; 18 uses
  %.0.i.i.i.i.i178 = phi ptr [ %i.dj, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i176 ], [ %i.dg, %.noexc181 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174 ] ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !165 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !209
  %i.do = load ptr, ptr %i.dl, align 8, !tbaa !210
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = sub i64 %i.dp, %i.dq
  %i.ds = lshr exact i64 %i.dr, 2                 ; 2 uses
  %i.dt = trunc i64 %i.ds to i32
  %i.du = icmp sgt i32 %i.dt, 1
  br i1 %i.du, label %.lr.ph436, label %.preheader

.lr.ph436:                                        ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit182
  %i.dv = getelementptr inbounds nuw i8, ptr %i.aw, i64 24 ; 4 uses
  %wide.trip.count.i187 = zext nneg i32 %4 to i64 ; 26 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 6 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.ec = ptrtoint ptr %.0.i.i.i.i.i to i64       ; 2 uses
  %i.ed = ptrtoint ptr %.sroa.0344.0 to i64       ; 3 uses
  %i.ee = sub i64 %i.ec, %i.ed                    ; 10 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 6 uses
  %i.eh = icmp sgt i64 %i.ee, 4                   ; 2 uses
  %i.ei = icmp eq i64 %i.ee, 4                    ; 2 uses
  %i.ej = icmp ugt i64 %i.ee, 9223372036854775804
  %i.ek = ptrtoint ptr %.0.i.i.i.i.i178 to i64    ; 2 uses
  %i.el = ptrtoint ptr %.sroa.0335.0 to i64       ; 8 uses
  %i.em = sub i64 %i.ek, %i.el                    ; 10 uses
  %i.en = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 6 uses
  %i.ep = icmp sgt i64 %i.em, 4                   ; 2 uses
  %i.eq = icmp eq i64 %i.em, 4                    ; 2 uses
  %i.er = icmp ugt i64 %i.em, 9223372036854775804
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.ex = shl nuw nsw i64 %wide.trip.count.i187, 2
  %i.ey = and i64 %i.ds, 2147483647               ; 4 uses
  %i.ez = add nsw i64 %i.ey, -1
  %i.fa = mul nsw i64 %i.ez, %i.g                 ; 2 uses
  %i.fb = mul i64 %i.fa, -4
  %i.fc = sub i64 %i.fb, %i.a
  %i.fd = shl nuw nsw i64 %i.g, 2
  %i.fe = shl i64 %i.fa, 2
  %i.ff = add i64 %i.fe, %i.a
  %i.fg = sub i64 %i.el, %i.ff
  %i.fh = shl nuw nsw i64 %wide.trip.count.i187, 2 ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.0344.0, i64 %i.fh
  %i.fi = add nsw i64 %i.ey, -1                   ; 2 uses
  %i.fj = mul nsw i64 %i.fi, %i.g
  %i.fk = mul i64 %i.fj, -4
  %i.fl = sub i64 %i.fk, %i.a
  %i.fm = add nsw i64 %i.ey, -2                   ; 2 uses
  %i.fn = mul nsw i64 %i.fm, %i.g
  %i.fo = mul i64 %i.fn, -4
  %i.fp = sub i64 %i.fo, %i.a
  %i.fq = mul nsw i64 %i.fi, %i.g
  %i.fr = shl i64 %i.fq, 2
  %i.fs = add i64 %i.fr, %i.a
  %i.ft = sub i64 %i.el, %i.fs
  %i.fu = shl nuw nsw i64 %i.g, 2
  %i.fv = mul nsw i64 %i.fm, %i.g
  %i.fw = shl i64 %i.fv, 2
  %i.fx = add i64 %i.fw, %i.a
  %i.fy = sub i64 %i.el, %i.fx
  %min.iters.check745 = icmp ult i32 %4, 12
  %n.vec753 = and i64 %wide.trip.count.i187, 2147483640 ; 3 uses
  %cmp.n764 = icmp eq i64 %n.vec753, %wide.trip.count.i187
  %xtraiter804 = and i64 %wide.trip.count.i187, 1
  %lcmp.mod805.not = icmp eq i64 %xtraiter804, 0
  %i.fz = add nsw i64 %wide.trip.count.i187, -1
  %min.iters.check711 = icmp ult i32 %4, 8
  %invariant.op834 = add i64 %i.fy, -1
  %invariant.op836 = add i64 %i.ft, -1
  %n.vec723 = and i64 %wide.trip.count.i187, 2147483640 ; 3 uses
  %cmp.n735 = icmp eq i64 %n.vec723, %wide.trip.count.i187
  %min.iters.check686 = icmp ult i32 %4, 8
  %n.vec689 = and i64 %wide.trip.count.i187, 2147483640 ; 3 uses
  %cmp.n698 = icmp eq i64 %n.vec689, %wide.trip.count.i187
  %xtraiter806 = and i64 %wide.trip.count.i187, 3 ; 2 uses
  %lcmp.mod807.not = icmp eq i64 %xtraiter806, 0
  %min.iters.check673 = icmp ult i32 %4, 4
  %n.vec675 = and i64 %wide.trip.count.i187, 2147483644 ; 3 uses
  %cmp.n681 = icmp eq i64 %n.vec675, %wide.trip.count.i187
  %min.iters.check649 = icmp ult i32 %4, 8
  %i.ga = sub i64 %i.ed, %i.el
  %diff.check652 = icmp ugt i64 %i.ga, -32
  %invariant.op838 = add i64 %i.fg, -1
  %invariant.op840 = add i64 %i.fc, -1
  %n.vec660 = and i64 %wide.trip.count.i187, 2147483640 ; 3 uses
  %cmp.n670 = icmp eq i64 %n.vec660, %wide.trip.count.i187
  %min.iters.check = icmp ult i32 %4, 8
  %n.vec = and i64 %wide.trip.count.i187, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i187
  %xtraiter808 = and i64 %wide.trip.count.i187, 1
  %lcmp.mod809.not = icmp eq i64 %xtraiter808, 0
  %i.gb = add nsw i64 %wide.trip.count.i187, -1
  br label %bb.z

.preheader:                                       ; preds = %_ZZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEEEN23PredictionConfigurationD2Ev.exit, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit182
  br i1 %.not.i.i.i.i168, label %._crit_edge439, label %.lr.ph438

.lr.ph438:                                        ; preds = %.preheader
  %i.gc = load ptr, ptr %8, align 16, !tbaa !101
  %i.gd = zext nneg i32 %4 to i64
  %i.ge = shl nuw nsw i64 %i.gd, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.gc, i8 0, i64 %i.ge, i1 false), !tbaa !96
  br label %._crit_edge439

.loopexit.split-lp379.loopexit.split-lp:          ; preds = %bb.j, %bb.m, %bb.p, %bb.s, %bb.i, %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit276

bb.x:                                             ; preds = %bb.t
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

bb.y:                                             ; preds = %bb.w
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit274

bb.z:                                             ; preds = %.lr.ph436, %_ZZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEEEN23PredictionConfigurationD2Ev.exit
  %indvar647 = phi i64 [ 0, %.lr.ph436 ], [ %indvar.next, %_ZZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEEEN23PredictionConfigurationD2Ev.exit ] ; 3 uses
  %indvars.iv495 = phi i64 [ %i.ey, %.lr.ph436 ], [ %indvars.iv.next496, %_ZZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEEEN23PredictionConfigurationD2Ev.exit ] ; 3 uses
  %i.gh = mul i64 %i.fd, %indvar647               ; 2 uses
  %indvars.iv.next496 = add nsw i64 %indvars.iv495, -1 ; 8 uses
  %i.gi = load ptr, ptr %i.dk, align 8, !tbaa !165 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !209
  %i.gl = load ptr, ptr %i.gi, align 8, !tbaa !210 ; 2 uses
  %i.gm = ptrtoint ptr %i.gk to i64
  %i.gn = ptrtoint ptr %i.gl to i64
  %i.go = sub i64 %i.gm, %i.gn
  %i.gp = ashr exact i64 %i.go, 2                 ; 2 uses
  %.not.i.i183 = icmp ugt i64 %i.gp, %indvars.iv.next496
  br i1 %.not.i.i183, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.6, i64 noundef %indvars.iv.next496, i64 noundef %i.gp) #20
          to label %.noexc184 unwind label %bb.ag

.noexc184:                                        ; preds = %bb.aa
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %indvars.iv.next496
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !212 ; 6 uses
  %.not362402 = icmp eq i32 %i.gr, -1
  br i1 %.not362402, label %._crit_edge, label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.lr.ph

_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.lr.ph: ; preds = %bb.ab
  %i.gs = load ptr, ptr %i.dv, align 8, !tbaa !210, !noalias !666
  %i.gt = urem i32 %i.gr, 3
  %.not.i.i197 = icmp ne i32 %i.gt, 0             ; 2 uses
  %i.gu = add i32 %i.gr, -1
  %i.gv = add i32 %i.gr, 2                        ; 2 uses
  %i.gw = icmp ne i32 %i.gv, -1
  %.mux = select i1 %.not.i.i197, i32 %i.gu, i32 %i.gv
  %i.gx = zext i32 %.mux to i64
  %brmerge = or i1 %.not.i.i197, %i.gw
  br label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i

_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i: ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.lr.ph, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit204
  %.0144405 = phi i1 [ true, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.lr.ph ], [ %.1145, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit204 ] ; 3 uses
  %.0146404 = phi i32 [ 0, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.lr.ph ], [ %.1147, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit204 ] ; 4 uses
  %.sroa.0325.0403 = phi i32 [ %i.gr, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.lr.ph ], [ %.sroa.0325.2, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit204 ] ; 6 uses
  %i.gy = sext i32 %.0146404 to i64
  %i.gz = getelementptr inbounds [24 x i8], ptr %8, i64 %i.gy
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !101 ; 5 uses
  %i.hb = ptrtoaddr ptr %i.ha to i64
  %i.hc = zext i32 %.sroa.0325.0403 to i64
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %i.hc
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !212, !noalias !666 ; 7 uses
  %i.hf = icmp eq i32 %i.he, -1
  br i1 %i.hf, label %_ZN5draco30ComputeParallelogramPredictionINS_11CornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit, label %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i

_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i: ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i
  %i.hg = zext i32 %i.he to i64
  %i.hh = load ptr, ptr %i.aw, align 8, !tbaa !233, !noalias !667 ; 3 uses
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.hg
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !235, !noalias !667
  %i.hk = zext i32 %i.hj to i64
  %i.hl = load ptr, ptr %i.ay, align 8, !tbaa !101 ; 3 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %i.hk
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !96 ; 2 uses
  %i.ho = add nuw i32 %i.he, 1                    ; 2 uses
  %i.hp = urem i32 %i.ho, 3
  %.not.i.i.i = icmp eq i32 %i.hp, 0
  %i.hq = add i32 %i.he, -2
  %spec.select.i.i.i = select i1 %.not.i.i.i, i32 %i.hq, i32 %i.ho ; 2 uses
  %i.hr = icmp eq i32 %spec.select.i.i.i, -1
  br i1 %i.hr, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i
  %i.hs = zext i32 %spec.select.i.i.i to i64
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.hs
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !235, !noalias !668
  %i.hv = zext i32 %i.hu to i64
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i
  %storemerge.i11.i.i = phi i64 [ %i.hv, %bb.ac ], [ 4294967295, %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i ]
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %storemerge.i11.i.i
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !96 ; 2 uses
  %i.hy = urem i32 %i.he, 3
  %.not.i13.i.i = icmp eq i32 %i.hy, 0
  br i1 %.not.i13.i.i, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread26.i.i

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread26.i.i: ; preds = %bb.ad
  %i.hz = add i32 %i.he, -1
  br label %bb.ae

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i: ; preds = %bb.ad
  %i.ia = add i32 %i.he, 2                        ; 2 uses
  %i.ib = icmp eq i32 %i.ia, -1
  br i1 %i.ib, label %_ZN5draco23GetParallelogramEntriesINS_11CornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i, label %bb.ae

bb.ae:                                            ; preds = %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread26.i.i
  %.sink.i1428.i.i = phi i32 [ %i.hz, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread26.i.i ], [ %i.ia, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i ]
  %i.ic = zext i32 %.sink.i1428.i.i to i64
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.ic
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !235, !noalias !669
  %i.if = zext i32 %i.ie to i64
  br label %_ZN5draco23GetParallelogramEntriesINS_11CornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i

_ZN5draco23GetParallelogramEntriesINS_11CornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i: ; preds = %bb.ae, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i
  %storemerge.i15.i.i = phi i64 [ %i.if, %bb.ae ], [ 4294967295, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i ]
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %storemerge.i15.i.i
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !96 ; 2 uses
  %i.ii = sext i32 %i.hn to i64
  %i.ij = icmp sgt i64 %indvars.iv.next496, %i.ii
  %i.ik = sext i32 %i.hx to i64
  %i.il = icmp sgt i64 %indvars.iv.next496, %i.ik
  %or.cond.i = select i1 %i.ij, i1 %i.il, i1 false
  %i.im = sext i32 %i.ih to i64
  %i.in = icmp sgt i64 %indvars.iv.next496, %i.im
  %or.cond40.i = select i1 %or.cond.i, i1 %i.in, i1 false
  br i1 %or.cond40.i, label %bb.af, label %_ZN5draco30ComputeParallelogramPredictionINS_11CornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit

bb.af:                                            ; preds = %_ZN5draco23GetParallelogramEntriesINS_11CornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i
  br i1 %.not.i.i.i.i168, label %.loopexit371, label %.lr.ph.preheader.i186

.lr.ph.preheader.i186:                            ; preds = %bb.af
  %i.io = mul nsw i32 %i.ih, %4
  %i.ip = mul nsw i32 %i.hx, %4
  %i.iq = mul nsw i32 %i.hn, %4
  %i.ir = sext i32 %i.ip to i64                   ; 2 uses
  %i.is = sext i32 %i.io to i64                   ; 2 uses
  %i.it = sext i32 %i.iq to i64                   ; 2 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %1, i64 %i.ir ; 4 uses
  %invariant.gep49.i = getelementptr [4 x i8], ptr %1, i64 %i.is ; 4 uses
  %invariant.gep51.i = getelementptr [4 x i8], ptr %1, i64 %i.it ; 4 uses
  br i1 %min.iters.check745, label %.lr.ph.i188.preheader, label %vector.memcheck746

vector.memcheck746:                               ; preds = %.lr.ph.preheader.i186
  %i.iu = shl nsw i64 %i.ir, 2
  %i.iv = sub i64 %i.hb, %i.a                     ; 3 uses
  %i.iw = sub i64 %i.iu, %i.iv
  %diff.check747 = icmp ugt i64 %i.iw, -32
  %i.ix = shl nsw i64 %i.is, 2
  %i.iy = sub i64 %i.ix, %i.iv
  %diff.check748 = icmp ugt i64 %i.iy, -32
  %conflict.rdx749 = or i1 %diff.check747, %diff.check748
  %i.iz = shl nsw i64 %i.it, 2
  %i.ja = sub i64 %i.iz, %i.iv
  %diff.check750 = icmp ugt i64 %i.ja, -32
  %conflict.rdx751 = or i1 %conflict.rdx749, %diff.check750
  br i1 %conflict.rdx751, label %.lr.ph.i188.preheader, label %vector.body754

vector.body754:                                   ; preds = %vector.memcheck746, %vector.body754
  %index755 = phi i64 [ %index.next762, %vector.body754 ], [ 0, %vector.memcheck746 ] ; 5 uses
  %i.jb = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %index755 ; 2 uses
  %i.jc = getelementptr i8, ptr %i.jb, i64 16
  %wide.load756 = load <4 x i32>, ptr %i.jb, align 4, !tbaa !96
  %wide.load757 = load <4 x i32>, ptr %i.jc, align 4, !tbaa !96
  %i.jd = getelementptr [4 x i8], ptr %invariant.gep49.i, i64 %index755 ; 2 uses
  %i.je = getelementptr i8, ptr %i.jd, i64 16
  %wide.load758 = load <4 x i32>, ptr %i.jd, align 4, !tbaa !96
  %wide.load759 = load <4 x i32>, ptr %i.je, align 4, !tbaa !96
  %i.jf = getelementptr [4 x i8], ptr %invariant.gep51.i, i64 %index755 ; 2 uses
  %i.jg = getelementptr i8, ptr %i.jf, i64 16
  %wide.load760 = load <4 x i32>, ptr %i.jf, align 4, !tbaa !96
  %wide.load761 = load <4 x i32>, ptr %i.jg, align 4, !tbaa !96
  %i.jh = add <4 x i32> %wide.load758, %wide.load756
  %i.ji = add <4 x i32> %wide.load759, %wide.load757
  %i.jj = sub <4 x i32> %i.jh, %wide.load760
  %i.jk = sub <4 x i32> %i.ji, %wide.load761
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %index755 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 16
  store <4 x i32> %i.jj, ptr %i.jl, align 4, !tbaa !96
  store <4 x i32> %i.jk, ptr %i.jm, align 4, !tbaa !96
  %index.next762 = add nuw i64 %index755, 8       ; 2 uses
  %i.jn = icmp eq i64 %index.next762, %n.vec753
  br i1 %i.jn, label %middle.block763, label %vector.body754, !llvm.loop !632

middle.block763:                                  ; preds = %vector.body754
  br i1 %cmp.n764, label %.loopexit371, label %.lr.ph.i188.preheader

.lr.ph.i188.preheader:                            ; preds = %vector.memcheck746, %.lr.ph.preheader.i186, %middle.block763
  %indvars.iv.i189.ph = phi i64 [ 0, %vector.memcheck746 ], [ 0, %.lr.ph.preheader.i186 ], [ %n.vec753, %middle.block763 ] ; 7 uses
  br i1 %lcmp.mod805.not, label %.lr.ph.i188.prol.loopexit, label %.lr.ph.i188.prol

.lr.ph.i188.prol:                                 ; preds = %.lr.ph.i188.preheader
  %gep.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i189.ph
  %i.jo = load i32, ptr %gep.i.prol, align 4, !tbaa !96
  %gep50.i.prol = getelementptr [4 x i8], ptr %invariant.gep49.i, i64 %indvars.iv.i189.ph
  %i.jp = load i32, ptr %gep50.i.prol, align 4, !tbaa !96
  %gep52.i.prol = getelementptr [4 x i8], ptr %invariant.gep51.i, i64 %indvars.iv.i189.ph
  %i.jq = load i32, ptr %gep52.i.prol, align 4, !tbaa !96
  %i.jr = add i32 %i.jp, %i.jo
  %i.js = sub i32 %i.jr, %i.jq
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %indvars.iv.i189.ph
  store i32 %i.js, ptr %i.jt, align 4, !tbaa !96
  %indvars.iv.next.i190.prol = or disjoint i64 %indvars.iv.i189.ph, 1
  br label %.lr.ph.i188.prol.loopexit

.lr.ph.i188.prol.loopexit:                        ; preds = %.lr.ph.i188.prol, %.lr.ph.i188.preheader
  %indvars.iv.i189.unr = phi i64 [ %indvars.iv.i189.ph, %.lr.ph.i188.preheader ], [ %indvars.iv.next.i190.prol, %.lr.ph.i188.prol ]
  %i.ju = icmp eq i64 %indvars.iv.i189.ph, %i.fz
  br i1 %i.ju, label %.loopexit371, label %.lr.ph.i188

.lr.ph.i188:                                      ; preds = %.lr.ph.i188.prol.loopexit, %.lr.ph.i188
  %indvars.iv.i189 = phi i64 [ %indvars.iv.next.i190.1, %.lr.ph.i188 ], [ %indvars.iv.i189.unr, %.lr.ph.i188.prol.loopexit ] ; 6 uses
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i189
  %i.jv = load i32, ptr %gep.i, align 4, !tbaa !96
  %gep50.i = getelementptr [4 x i8], ptr %invariant.gep49.i, i64 %indvars.iv.i189
  %i.jw = load i32, ptr %gep50.i, align 4, !tbaa !96
  %gep52.i = getelementptr [4 x i8], ptr %invariant.gep51.i, i64 %indvars.iv.i189
  %i.jx = load i32, ptr %gep52.i, align 4, !tbaa !96
  %i.jy = add i32 %i.jw, %i.jv
  %i.jz = sub i32 %i.jy, %i.jx
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %indvars.iv.i189
  store i32 %i.jz, ptr %i.ka, align 4, !tbaa !96
  %indvars.iv.next.i190 = add nuw nsw i64 %indvars.iv.i189, 1 ; 4 uses
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i190
  %i.kb = load i32, ptr %gep.i.1, align 4, !tbaa !96
  %gep50.i.1 = getelementptr [4 x i8], ptr %invariant.gep49.i, i64 %indvars.iv.next.i190
  %i.kc = load i32, ptr %gep50.i.1, align 4, !tbaa !96
  %gep52.i.1 = getelementptr [4 x i8], ptr %invariant.gep51.i, i64 %indvars.iv.next.i190
  %i.kd = load i32, ptr %gep52.i.1, align 4, !tbaa !96
  %i.ke = add i32 %i.kc, %i.kb
  %i.kf = sub i32 %i.ke, %i.kd
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %indvars.iv.next.i190
  store i32 %i.kf, ptr %i.kg, align 4, !tbaa !96
  %indvars.iv.next.i190.1 = add nuw nsw i64 %indvars.iv.i189, 2 ; 2 uses
  %exitcond.not.i191.1 = icmp eq i64 %indvars.iv.next.i190.1, %wide.trip.count.i187
  br i1 %exitcond.not.i191.1, label %.loopexit371, label %.lr.ph.i188, !llvm.loop !633

.loopexit371:                                     ; preds = %.lr.ph.i188.prol.loopexit, %.lr.ph.i188, %middle.block763, %bb.af
  %i.kh = add nsw i32 %.0146404, 1                ; 2 uses
  %i.ki = icmp eq i32 %i.kh, 4
  br i1 %i.ki, label %._crit_edge, label %_ZN5draco30ComputeParallelogramPredictionINS_11CornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit

bb.ag:                                            ; preds = %bb.aa
  %i.kj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ds

_ZN5draco30ComputeParallelogramPredictionINS_11CornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit: ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %_ZN5draco23GetParallelogramEntriesINS_11CornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i, %.loopexit371
  %.1147 = phi i32 [ %i.kh, %.loopexit371 ], [ %.0146404, %_ZN5draco23GetParallelogramEntriesINS_11CornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i ], [ %.0146404, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i ] ; 5 uses
  br i1 %.0144405, label %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, label %bb.ai

_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i: ; preds = %_ZN5draco30ComputeParallelogramPredictionINS_11CornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit
  %i.kk = add nuw i32 %.sroa.0325.0403, 1         ; 2 uses
  %i.kl = urem i32 %i.kk, 3
  %.not.i.i192 = icmp eq i32 %i.kl, 0
  %i.km = add i32 %.sroa.0325.0403, -2
  %spec.select.i.i = select i1 %.not.i.i192, i32 %i.km, i32 %i.kk ; 2 uses
  %i.kn = icmp eq i32 %spec.select.i.i, -1
  br i1 %i.kn, label %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i193

_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i193: ; preds = %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i
  %i.ko = zext i32 %spec.select.i.i to i64
  %i.kp = load ptr, ptr %i.dv, align 8, !tbaa !210, !noalias !670
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %i.ko
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !212, !noalias !670 ; 3 uses
  %i.ks = icmp eq i32 %i.kr, -1
  br i1 %i.ks, label %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i193
  %i.kt = add nuw i32 %i.kr, 1                    ; 2 uses
  %i.ku = urem i32 %i.kt, 3
  %.not.i1.i = icmp eq i32 %i.ku, 0
  %i.kv = add i32 %i.kr, -2
  %spec.select.i2.i = select i1 %.not.i1.i, i32 %i.kv, i32 %i.kt
  br label %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

bb.ai:                                            ; preds = %_ZN5draco30ComputeParallelogramPredictionINS_11CornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit
  %i.kw = urem i32 %.sroa.0325.0403, 3
  %.not.i.i194 = icmp eq i32 %i.kw, 0
  br i1 %.not.i.i194, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i: ; preds = %bb.ai
  %i.kx = add i32 %.sroa.0325.0403, -1
  br label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i195

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i: ; preds = %bb.ai
  %i.ky = add i32 %.sroa.0325.0403, 2             ; 2 uses
  %i.kz = icmp eq i32 %i.ky, -1
  br i1 %i.kz, label %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i195

_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i195: ; preds = %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i
  %.sink.i9.i = phi i32 [ %i.kx, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i ], [ %i.ky, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i ]
  %i.la = zext i32 %.sink.i9.i to i64
  %i.lb = load ptr, ptr %i.dv, align 8, !tbaa !210, !noalias !671
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %i.la
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !212, !noalias !671 ; 4 uses
  %i.le = icmp eq i32 %i.ld, -1
  br i1 %i.le, label %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i195
  %i.lf = urem i32 %i.ld, 3
  %.not.i1.i196 = icmp eq i32 %i.lf, 0
  br i1 %.not.i1.i196, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.lg = add i32 %i.ld, -1
  br label %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

bb.al:                                            ; preds = %bb.aj
  %i.lh = add i32 %i.ld, 2
  br label %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit: ; preds = %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i195, %bb.ak, %bb.al, %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i193, %bb.ah
  %.sroa.0325.1 = phi i32 [ -1, %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i ], [ -1, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i193 ], [ %spec.select.i2.i, %bb.ah ], [ %i.lg, %bb.ak ], [ %i.lh, %bb.al ], [ -1, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i195 ], [ -1, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i ] ; 3 uses
  %i.li = icmp eq i32 %.sroa.0325.1, %i.gr
  br i1 %i.li, label %._crit_edge, label %bb.am

bb.am:                                            ; preds = %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %i.lj = icmp eq i32 %.sroa.0325.1, -1
  %or.cond = and i1 %.0144405, %i.lj
  br i1 %or.cond, label %bb.an, label %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit204

bb.an:                                            ; preds = %bb.am
  br i1 %brmerge, label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i199, label %._crit_edge

_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i199: ; preds = %bb.an
  %i.lk = load ptr, ptr %i.dv, align 8, !tbaa !210, !noalias !672
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.lk, i64 %i.gx
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !212, !noalias !672 ; 4 uses
  %i.ln = icmp eq i32 %i.lm, -1
  br i1 %i.ln, label %._crit_edge, label %bb.ao

bb.ao:                                            ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i199
  %i.lo = urem i32 %i.lm, 3
  %.not.i1.i201 = icmp eq i32 %i.lo, 0
  br i1 %.not.i1.i201, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.lp = add i32 %i.lm, -1
  br label %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit204

bb.aq:                                            ; preds = %bb.ao
  %i.lq = add i32 %i.lm, 2
  br label %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit204

_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit204: ; preds = %bb.ap, %bb.aq, %bb.am
  %.sroa.0325.2 = phi i32 [ %.sroa.0325.1, %bb.am ], [ %i.lp, %bb.ap ], [ %i.lq, %bb.aq ] ; 2 uses
  %.1145 = phi i1 [ %.0144405, %bb.am ], [ false, %bb.ap ], [ false, %bb.aq ]
  %.not362 = icmp eq i32 %.sroa.0325.2, -1
  br i1 %.not362, label %._crit_edge, label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, !llvm.loop !646

._crit_edge:                                      ; preds = %bb.an, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i199, %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, %.loopexit371, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit204, %bb.ab
  %.2148 = phi i32 [ 0, %bb.ab ], [ %.1147, %bb.an ], [ %.1147, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i199 ], [ %.1147, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit204 ], [ 4, %.loopexit371 ], [ %.1147, %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit ] ; 10 uses
end_hunk_1
