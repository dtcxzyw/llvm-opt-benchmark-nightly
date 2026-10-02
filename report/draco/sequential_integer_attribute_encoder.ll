Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/draco/original/sequential_integer_attribute_encoder?download=true
inline.NumInlined: 2377
inline.NumDeleted: 912
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_ZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEE:bb.a
  %.pre = load ptr, ptr %.phi.trans.insert506, align 16, !tbaa !149
  %.pre508 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !101
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %_ZN5draco37PredictionSchemeWrapEncodingTransformIiiE4InitEPKiii.exit, %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge505
  %i.bg = phi ptr [ %.pre508, %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge505 ], [ null, %_ZN5draco37PredictionSchemeWrapEncodingTransformIiiE4InitEPKiii.exit ] ; 2 uses
  %i.bh = phi ptr [ %.pre, %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge505 ], [ null, %_ZN5draco37PredictionSchemeWrapEncodingTransformIiiE4InitEPKiii.exit ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = ashr exact i64 %i.bl, 2                 ; 3 uses
  %i.bn = icmp ult i64 %i.bm, %i.g
  br i1 %i.bn, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.bo = icmp ugt i64 %i.bm, %i.g
  br i1 %i.bo, label %bb.l, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.1

bb.l:                                             ; preds = %bb.k
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.g ; 2 uses
  %.not.i.i170.1 = icmp eq ptr %i.bh, %i.bp
  br i1 %.not.i.i170.1, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.1, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.1

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.1:      ; preds = %bb.l
  store ptr %i.bp, ptr %i.bi, align 16, !tbaa !149
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.1

bb.m:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.br = sub nuw nsw i64 %i.g, %i.bm
  invoke void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, i64 noundef %i.br)
          to label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.1 unwind label %bb.t

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
          to label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.2 unwind label %bb.t

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
          to label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.3 unwind label %bb.t

_ZNSt6vectorIiSaIiEE6resizeEm.exit.3:             ; preds = %bb.s, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.3, %bb.r, %bb.q
  %i.cq = icmp slt i32 %4, 0
  br i1 %i.cq, label %bb.h, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.t:                                             ; preds = %bb.s, %bb.p, %bb.m, %bb.j
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit283

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc169, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.15359.0 = phi ptr [ %i.bb, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.bb, %.noexc169 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.0351.0 = phi ptr [ %i.ba, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ba, %.noexc169 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 27 uses
  %.0.i.i.i.i.i = phi ptr [ %i.bf, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.bc, %.noexc169 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ]
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 6 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !238 ; 2 uses
  %i.cv = load ptr, ptr %i.cs, align 8, !tbaa !236 ; 2 uses
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = ashr exact i64 %i.cy, 2                 ; 3 uses
  %i.da = icmp ult i64 %i.cz, %i.g
  br i1 %i.da, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.db = sub nuw nsw i64 %i.g, %i.cz
  invoke void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, i64 noundef %i.db)
          to label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174.thread unwind label %bb.z

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174.thread: ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  br label %bb.x

bb.v:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.dc = icmp ugt i64 %i.cz, %i.g
  br i1 %i.dc, label %bb.w, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174

bb.w:                                             ; preds = %bb.v
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.g ; 2 uses
  %.not.i.i172 = icmp eq ptr %i.cu, %i.dd
  br i1 %.not.i.i172, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.w
  store ptr %i.dd, ptr %i.ct, align 8, !tbaa !238
  br label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174: ; preds = %bb.v, %bb.w, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  br i1 %.not.i.i.i.i168, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit182, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174.thread, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174
  %i.de = shl nuw nsw i64 %i.g, 2
  %i.df = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.de) #18
          to label %.noexc181 unwind label %bb.aa ; 5 uses

.noexc181:                                        ; preds = %bb.x
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.g ; 2 uses
  store i32 0, ptr %i.df, align 4, !tbaa !96
  %i.dh = getelementptr i8, ptr %i.df, i64 4      ; 3 uses
  %i.di = add nsw i64 %i.g, -1                    ; 2 uses
  %i.dj = icmp eq i64 %i.di, 0
  br i1 %i.dj, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit182, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i176

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i176: ; preds = %.noexc181
  %.idx.i.i.i.i.i.i.i177 = shl nuw nsw i64 %i.di, 2 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.dh, i8 0, i64 %.idx.i.i.i.i.i.i.i177, i1 false), !tbaa !96
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 %.idx.i.i.i.i.i.i.i177
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit182

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit182:            ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i176, %.noexc181, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174
  %.sroa.15.0 = phi ptr [ %i.dg, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i176 ], [ %i.dg, %.noexc181 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174 ] ; 2 uses
  %.sroa.0342.0 = phi ptr [ %i.df, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i176 ], [ %i.df, %.noexc181 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174 ] ; 18 uses
  %.0.i.i.i.i.i178 = phi ptr [ %i.dk, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i176 ], [ %i.dh, %.noexc181 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174 ] ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !159 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !209
  %i.dp = load ptr, ptr %i.dm, align 8, !tbaa !210
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = sub i64 %i.dq, %i.dr
  %i.dt = lshr exact i64 %i.ds, 2                 ; 2 uses
  %i.du = trunc i64 %i.dt to i32
  %i.dv = icmp sgt i32 %i.du, 1
  br i1 %i.dv, label %.lr.ph438, label %.preheader

.lr.ph438:                                        ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit182
  %i.dw = getelementptr inbounds nuw i8, ptr %i.aw, i64 160 ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.aw, i64 88
  %wide.trip.count.i189 = zext nneg i32 %4 to i64 ; 11 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 6 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.ee = ptrtoint ptr %.0.i.i.i.i.i to i64       ; 2 uses
  %i.ef = ptrtoint ptr %.sroa.0351.0 to i64       ; 3 uses
  %i.eg = sub i64 %i.ee, %i.ef                    ; 10 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 6 uses
  %i.ej = icmp sgt i64 %i.eg, 4                   ; 2 uses
  %i.ek = icmp eq i64 %i.eg, 4                    ; 2 uses
  %i.el = icmp ugt i64 %i.eg, 9223372036854775804
  %i.em = ptrtoint ptr %.0.i.i.i.i.i178 to i64    ; 2 uses
  %i.en = ptrtoint ptr %.sroa.0342.0 to i64       ; 8 uses
  %i.eo = sub i64 %i.em, %i.en                    ; 10 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 6 uses
  %i.er = icmp sgt i64 %i.eo, 4                   ; 2 uses
  %i.es = icmp eq i64 %i.eo, 4                    ; 2 uses
  %i.et = icmp ugt i64 %i.eo, 9223372036854775804
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.ez = call i32 @llvm.umax.i32(i32 %4, i32 1)
  %i.fa = zext nneg i32 %i.ez to i64              ; 15 uses
  %i.fb = shl nuw nsw i64 %i.fa, 2
  %i.fc = and i64 %i.dt, 2147483647               ; 4 uses
  %i.fd = add nsw i64 %i.fc, -1
  %i.fe = mul nsw i64 %i.fd, %i.g                 ; 2 uses
  %i.ff = shl i64 %i.fe, 2
  %i.fg = add i64 %i.ff, %i.a
  %i.fh = sub i64 %i.en, %i.fg
  %i.fi = shl nuw nsw i64 %i.g, 2
  %i.fj = mul i64 %i.fe, -4
  %i.fk = sub i64 %i.fj, %i.a
  %i.fl = shl nuw nsw i64 %i.fa, 2                ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.0351.0, i64 %i.fl
  %i.fm = add nsw i64 %i.fc, -1                   ; 2 uses
  %i.fn = mul nsw i64 %i.fm, %i.g
  %i.fo = shl i64 %i.fn, 2
  %i.fp = add i64 %i.fo, %i.a
  %i.fq = sub i64 %i.en, %i.fp
  %i.fr = shl nuw nsw i64 %i.g, 2
  %i.fs = add nsw i64 %i.fc, -2                   ; 2 uses
  %i.ft = mul nsw i64 %i.fs, %i.g
  %i.fu = shl i64 %i.ft, 2
  %i.fv = add i64 %i.fu, %i.a
  %i.fw = sub i64 %i.en, %i.fv
  %i.fx = mul nsw i64 %i.fm, %i.g
  %i.fy = mul i64 %i.fx, -4
  %i.fz = sub i64 %i.fy, %i.a
  %i.ga = mul nsw i64 %i.fs, %i.g
  %i.gb = mul i64 %i.ga, -4
  %i.gc = sub i64 %i.gb, %i.a
  %min.iters.check731 = icmp ult i32 %4, 12
  %n.vec733 = and i64 %wide.trip.count.i189, 2147483640 ; 3 uses
  %cmp.n744 = icmp eq i64 %n.vec733, %wide.trip.count.i189
  %xtraiter783 = and i64 %wide.trip.count.i189, 1
  %lcmp.mod784.not = icmp eq i64 %xtraiter783, 0
  %i.gd = add nsw i64 %wide.trip.count.i189, -1
  %min.iters.check707 = icmp ult i32 %4, 8
  %invariant.op819 = add i64 %i.fq, -1
  %invariant.op821 = add i64 %i.fw, -1
  %n.vec709 = and i64 %wide.trip.count.i189, 2147483640 ; 3 uses
  %cmp.n721 = icmp eq i64 %n.vec709, %wide.trip.count.i189
  %min.iters.check683 = icmp ult i32 %4, 8
  %n.vec685 = and i64 %i.fa, 2147483640           ; 3 uses
  %cmp.n694 = icmp eq i64 %n.vec685, %i.fa
  %xtraiter785 = and i64 %i.fa, 3                 ; 2 uses
  %lcmp.mod786.not = icmp eq i64 %xtraiter785, 0
  %min.iters.check670 = icmp ult i32 %4, 4
  %n.vec672 = and i64 %i.fa, 2147483644           ; 3 uses
  %cmp.n678 = icmp eq i64 %n.vec672, %i.fa
  %min.iters.check655 = icmp ult i32 %4, 8
  %i.ge = sub i64 %i.ef, %i.en
  %diff.check646 = icmp ugt i64 %i.ge, -32
  %invariant.op823 = add i64 %i.fh, -1
  %invariant.op825 = add i64 %i.fk, -1
  %n.vec657 = and i64 %wide.trip.count.i189, 2147483640 ; 3 uses
  %cmp.n667 = icmp eq i64 %n.vec657, %wide.trip.count.i189
  %min.iters.check = icmp ult i32 %4, 8
  %n.vec = and i64 %i.fa, 2147483640              ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.fa
  %xtraiter787 = and i64 %i.fa, 1
  %lcmp.mod788.not = icmp eq i64 %xtraiter787, 0
  %i.gf = add nsw i64 %i.fa, -1
  br label %bb.ab

.preheader:                                       ; preds = %_ZZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEEEN23PredictionConfigurationD2Ev.exit, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit182
  br i1 %.not.i.i.i.i168, label %._crit_edge441, label %.lr.ph440

.lr.ph440:                                        ; preds = %.preheader
  %i.gg = load ptr, ptr %8, align 16, !tbaa !101
  %i.gh = zext nneg i32 %4 to i64
  %i.gi = shl nuw nsw i64 %i.gh, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.gg, i8 0, i64 %i.gi, i1 false), !tbaa !96
  br label %._crit_edge441

bb.y:                                             ; preds = %bb.i, %bb.h
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit283

bb.z:                                             ; preds = %bb.u
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ec

bb.aa:                                            ; preds = %bb.x
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit281

bb.ab:                                            ; preds = %.lr.ph438, %_ZZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEEEN23PredictionConfigurationD2Ev.exit
  %indvar647 = phi i64 [ 0, %.lr.ph438 ], [ %indvar.next, %_ZZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEEEN23PredictionConfigurationD2Ev.exit ] ; 3 uses
  %indvars.iv498 = phi i64 [ %i.fc, %.lr.ph438 ], [ %indvars.iv.next499, %_ZZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEEEN23PredictionConfigurationD2Ev.exit ] ; 3 uses
  %i.gm = mul i64 %i.fr, %indvar647               ; 4 uses
  %i.gn = add i64 %i.fz, %i.gm
  %i.go = add i64 %i.gc, %i.gm
  %i.gp = mul i64 %i.fi, %indvar647               ; 2 uses
  %indvars.iv.next499 = add nsw i64 %indvars.iv498, -1 ; 8 uses
  %i.gq = load ptr, ptr %i.dl, align 8, !tbaa !159 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !209
  %i.gt = load ptr, ptr %i.gq, align 8, !tbaa !210 ; 2 uses
  %i.gu = ptrtoint ptr %i.gs to i64
  %i.gv = ptrtoint ptr %i.gt to i64
  %i.gw = sub i64 %i.gu, %i.gv
  %i.gx = ashr exact i64 %i.gw, 2                 ; 2 uses
  %.not.i.i183 = icmp ugt i64 %i.gx, %indvars.iv.next499
  br i1 %.not.i.i183, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.6, i64 noundef %indvars.iv.next499, i64 noundef %i.gx) #20
          to label %.noexc184 unwind label %bb.ag

.noexc184:                                        ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %indvars.iv.next499
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !212 ; 6 uses
  %.not369404 = icmp eq i32 %i.gz, -1
  br i1 %.not369404, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ad
  %i.ha = load ptr, ptr %i.aw, align 8, !tbaa !174, !noalias !435
  %i.hb = urem i32 %i.gz, 3
  %.not.i.i.i202 = icmp ne i32 %i.hb, 0           ; 2 uses
  %i.hc = add i32 %i.gz, -1
  %i.hd = add i32 %i.gz, 2                        ; 2 uses
  %i.he = icmp ne i32 %i.hd, -1
  %brmerge = or i1 %.not.i.i.i202, %i.he
  %.mux = select i1 %.not.i.i.i202, i32 %i.hc, i32 %i.hd ; 3 uses
  %i.hf = lshr i32 %.mux, 6
  %.zext.i.i.i205 = zext nneg i32 %i.hf to i64
  %i.hg = and i32 %.mux, 63
  %i.hh = zext nneg i32 %i.hg to i64
  %i.hi = shl nuw i64 1, %i.hh
  %i.hj = zext i32 %.mux to i64
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph, %_ZNK5draco24MeshAttributeCornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit211
  %.0144407 = phi i1 [ true, %.lr.ph ], [ %.1145, %_ZNK5draco24MeshAttributeCornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit211 ] ; 3 uses
  %.0146406 = phi i32 [ 0, %.lr.ph ], [ %.1147, %_ZNK5draco24MeshAttributeCornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit211 ] ; 5 uses
  %.sroa.0332.0405 = phi i32 [ %i.gz, %.lr.ph ], [ %.sroa.0332.2, %_ZNK5draco24MeshAttributeCornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit211 ] ; 8 uses
  %i.hk = sext i32 %.0146406 to i64
  %i.hl = getelementptr inbounds [24 x i8], ptr %8, i64 %i.hk
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !101 ; 5 uses
  %i.hn = ptrtoaddr ptr %i.hm to i64              ; 2 uses
  %i.ho = lshr i32 %.sroa.0332.0405, 6
  %.zext.i.i.i = zext nneg i32 %i.ho to i64
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %.zext.i.i.i
  %i.hq = and i32 %.sroa.0332.0405, 63
  %i.hr = zext nneg i32 %i.hq to i64
  %i.hs = shl nuw i64 1, %i.hr
  %i.ht = load i64, ptr %i.hp, align 8, !tbaa !128, !noalias !435
  %i.hu = and i64 %i.ht, %i.hs
  %.not.i.i185 = icmp eq i64 %i.hu, 0
  br i1 %.not.i.i185, label %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, label %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit.thread

_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i: ; preds = %bb.ae
  %i.hv = load ptr, ptr %i.dw, align 8, !tbaa !232, !noalias !435
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 24
  %i.hx = zext i32 %.sroa.0332.0405 to i64
  %i.hy = load ptr, ptr %i.hw, align 8, !tbaa !210, !noalias !436
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %i.hx
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !212, !noalias !436 ; 5 uses
  %i.ib = icmp eq i32 %i.ia, -1
  br i1 %i.ib, label %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit.thread, label %_ZN5draco23GetParallelogramEntriesINS_24MeshAttributeCornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i

_ZN5draco23GetParallelogramEntriesINS_24MeshAttributeCornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i: ; preds = %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i
  %i.ic = zext i32 %i.ia to i64
  %i.id = load ptr, ptr %i.dx, align 8, !tbaa !233, !noalias !437 ; 3 uses
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %i.ic
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !235, !noalias !437
  %i.ig = zext i32 %i.if to i64
  %i.ih = load ptr, ptr %i.ay, align 8, !tbaa !101 ; 3 uses
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.ig
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !96 ; 2 uses
  %i.ik = insertelement <2 x i32> poison, i32 %i.ia, i64 0
  %i.il = shufflevector <2 x i32> %i.ik, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.im = add nuw <2 x i32> %i.il, <i32 0, i32 1>
  %i.in = urem <2 x i32> %i.im, splat (i32 3)
  %i.io = icmp eq <2 x i32> %i.in, zeroinitializer ; 2 uses
  %i.ip = extractelement <2 x i1> %i.io, i64 1
  %spec.select.i.i.i.i.v = select i1 %i.ip, i32 -2, i32 1
  %spec.select.i.i.i.i = add i32 %i.ia, %spec.select.i.i.i.i.v
  %i.iq = zext i32 %spec.select.i.i.i.i to i64
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %i.iq
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !235, !noalias !438
  %i.it = zext i32 %i.is to i64
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.it
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !96 ; 2 uses
  %i.iw = extractelement <2 x i1> %i.io, i64 0
  %.sink.i.i12.i.v.i = select i1 %i.iw, i32 2, i32 -1
  %.sink.i.i12.i.i = add i32 %.sink.i.i12.i.v.i, %i.ia
  %i.ix = zext i32 %.sink.i.i12.i.i to i64
end_hunk_0
begin_hunk_1_@_ZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEE:bb.a
  %i.sa = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0351.0, i64 %indvars.iv ; 2 uses
  %i.sb = load i32, ptr %i.sa, align 4, !tbaa !96
  %i.sc = add nsw i32 %i.sb, %i.rz
  store i32 %i.sc, ptr %i.sa, align 4, !tbaa !96
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %i.rf, i64 %indvars.iv.next
  %i.se = load i32, ptr %i.sd, align 4, !tbaa !96
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0351.0, i64 %indvars.iv.next ; 2 uses
  %i.sg = load i32, ptr %i.sf, align 4, !tbaa !96
  %i.sh = add nsw i32 %i.sg, %i.se
  store i32 %i.sh, ptr %i.sf, align 4, !tbaa !96
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %i.rf, i64 %indvars.iv.next.1
  %i.sj = load i32, ptr %i.si, align 4, !tbaa !96
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0351.0, i64 %indvars.iv.next.1 ; 2 uses
  %i.sl = load i32, ptr %i.sk, align 4, !tbaa !96
  %i.sm = add nsw i32 %i.sl, %i.sj
  store i32 %i.sm, ptr %i.sk, align 4, !tbaa !96
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %i.rf, i64 %indvars.iv.next.2
  %i.so = load i32, ptr %i.sn, align 4, !tbaa !96
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0351.0, i64 %indvars.iv.next.2 ; 2 uses
  %i.sq = load i32, ptr %i.sp, align 4, !tbaa !96
  %i.sr = add nsw i32 %i.sq, %i.so
  store i32 %i.sr, ptr %i.sp, align 4, !tbaa !96
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %i.fa
  br i1 %exitcond.not.3, label %._crit_edge416, label %scalar.ph682, !llvm.loop !424

bb.ba:                                            ; preds = %.lr.ph419, %._crit_edge416
  %.1128 = phi i8 [ %.0127417, %.lr.ph419 ], [ %i.rx, %._crit_edge416 ] ; 2 uses
  %indvars.iv.next480 = add nuw nsw i64 %indvars.iv479, 1 ; 2 uses
  %exitcond482.not = icmp eq i64 %indvars.iv.next480, %i.qo
  br i1 %exitcond482.not, label %.preheader373, label %.lr.ph419, !llvm.loop !425

.lr.ph.i228.preheader:                            ; preds = %.lr.ph422, %middle.block677
  %i.ss = load ptr, ptr %i.cs, align 8, !tbaa !236 ; 5 uses
  br i1 %min.iters.check655, label %.lr.ph.i228.preheader748, label %vector.memcheck644

vector.memcheck644:                               ; preds = %.lr.ph.i228.preheader
  %i.st = ptrtoaddr ptr %i.ss to i64              ; 3 uses
  %i.su = sub i64 %i.en, %i.st
  %diff.check645 = icmp ugt i64 %i.su, -32
  %conflict.rdx649.reass = or i1 %diff.check645, %invariant.op
  %i.sv = sub i64 %i.ef, %i.st
  %diff.check650 = icmp ugt i64 %i.sv, -32
  %conflict.rdx651 = or i1 %conflict.rdx649.reass, %diff.check650
  %.reass = add i64 %i.st, %invariant.op818.reass
  %diff.check652 = icmp ult i64 %.reass, 31
  %conflict.rdx653 = or i1 %conflict.rdx651, %diff.check652
  br i1 %conflict.rdx653, label %.lr.ph.i228.preheader748, label %vector.body658

vector.body658:                                   ; preds = %vector.memcheck644, %vector.body658
  %index659 = phi i64 [ %index.next665, %vector.body658 ], [ 0, %vector.memcheck644 ] ; 5 uses
  %vec.phi = phi <4 x i32> [ %i.te, %vector.body658 ], [ zeroinitializer, %vector.memcheck644 ]
  %vec.phi660 = phi <4 x i32> [ %i.tf, %vector.body658 ], [ zeroinitializer, %vector.memcheck644 ]
  %i.sw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0351.0, i64 %index659 ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 16
  %wide.load661 = load <4 x i32>, ptr %i.sw, align 4, !tbaa !96
  %wide.load662 = load <4 x i32>, ptr %i.sx, align 4, !tbaa !96
  %i.sy = getelementptr inbounds nuw [4 x i8], ptr %i.nr, i64 %index659 ; 2 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 16
  %wide.load663 = load <4 x i32>, ptr %i.sy, align 4, !tbaa !96
  %wide.load664 = load <4 x i32>, ptr %i.sz, align 4, !tbaa !96
  %i.ta = sub nsw <4 x i32> %wide.load661, %wide.load663 ; 5 uses
  %i.tb = sub nsw <4 x i32> %wide.load662, %wide.load664 ; 5 uses
  %i.tc = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.ta, i1 true)
  %i.td = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.tb, i1 true)
  %i.te = add <4 x i32> %i.tc, %vec.phi           ; 2 uses
  %i.tf = add <4 x i32> %i.td, %vec.phi660        ; 2 uses
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0342.0, i64 %index659 ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 16
  store <4 x i32> %i.ta, ptr %i.tg, align 4, !tbaa !96
  store <4 x i32> %i.tb, ptr %i.th, align 4, !tbaa !96
  %i.ti = shl nuw <4 x i32> %i.ta, splat (i32 1)
  %i.tj = shl nuw <4 x i32> %i.tb, splat (i32 1)
  %i.tk = xor <4 x i32> %i.ta, splat (i32 -1)
  %i.tl = xor <4 x i32> %i.tb, splat (i32 -1)
  %i.tm = shl nuw <4 x i32> %i.tk, splat (i32 1)
  %i.tn = shl nuw <4 x i32> %i.tl, splat (i32 1)
  %i.to = or disjoint <4 x i32> %i.tm, splat (i32 1)
  %i.tp = or disjoint <4 x i32> %i.tn, splat (i32 1)
  %i.tq = icmp slt <4 x i32> %i.ta, zeroinitializer
  %i.tr = icmp slt <4 x i32> %i.tb, zeroinitializer
  %i.ts = select <4 x i1> %i.tq, <4 x i32> %i.to, <4 x i32> %i.ti
  %i.tt = select <4 x i1> %i.tr, <4 x i32> %i.tp, <4 x i32> %i.tj
  %i.tu = getelementptr inbounds nuw [4 x i8], ptr %i.ss, i64 %index659 ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 16
  store <4 x i32> %i.ts, ptr %i.tu, align 4, !tbaa !96
  store <4 x i32> %i.tt, ptr %i.tv, align 4, !tbaa !96
  %index.next665 = add nuw i64 %index659, 8       ; 2 uses
  %i.tw = icmp eq i64 %index.next665, %n.vec657
  br i1 %i.tw, label %middle.block666, label %vector.body658, !llvm.loop !426

middle.block666:                                  ; preds = %vector.body658
  %bin.rdx = add <4 x i32> %i.tf, %i.te
  %i.tx = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n667, label %._crit_edge.i224, label %.lr.ph.i228.preheader748

.lr.ph.i228.preheader748:                         ; preds = %vector.memcheck644, %.lr.ph.i228.preheader, %middle.block666
  %indvars.iv.i230.ph = phi i64 [ 0, %vector.memcheck644 ], [ 0, %.lr.ph.i228.preheader ], [ %n.vec657, %middle.block666 ]
  %.sroa.3.015.i231.ph = phi i32 [ 0, %vector.memcheck644 ], [ 0, %.lr.ph.i228.preheader ], [ %i.tx, %middle.block666 ]
  br label %.lr.ph.i228

._crit_edge.i224:                                 ; preds = %.lr.ph.i228, %middle.block666, %._crit_edge423.thread
  %i.ty = phi ptr [ %i.ra, %._crit_edge423.thread ], [ %i.ss, %middle.block666 ], [ %i.ss, %.lr.ph.i228 ]
  %.sroa.3.0.lcssa.i225 = phi i32 [ 0, %._crit_edge423.thread ], [ %i.tx, %middle.block666 ], [ %i.uh, %.lr.ph.i228 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  invoke void @_ZN5draco21ShannonEntropyTracker4PeekEPKji(ptr dead_on_unwind nonnull writable sret(%"struct.draco::ShannonEntropyTracker::EntropyData") align 8 %6, ptr noundef nonnull align 8 dereferenceable(48) %i.dz, ptr noundef %i.ty, i32 noundef %4)
          to label %.noexc236 unwind label %bb.ck

.noexc236:                                        ; preds = %._crit_edge.i224
  %i.tz = invoke noundef i64 @_ZN5draco21ShannonEntropyTracker19GetNumberOfDataBitsERKNS0_11EntropyDataE(ptr noundef nonnull align 8 dereferenceable(20) %6)
          to label %.noexc237 unwind label %bb.ck

.noexc237:                                        ; preds = %.noexc236
  %i.ua = invoke noundef i64 @_ZN5draco21ShannonEntropyTracker24GetNumberOfRAnsTableBitsERKNS0_11EntropyDataE(ptr noundef nonnull align 8 dereferenceable(20) %6)
          to label %bb.bb unwind label %bb.ck

.lr.ph.i228:                                      ; preds = %.lr.ph.i228.preheader748, %.lr.ph.i228
  %indvars.iv.i230 = phi i64 [ %indvars.iv.next.i233, %.lr.ph.i228 ], [ %indvars.iv.i230.ph, %.lr.ph.i228.preheader748 ] ; 5 uses
  %.sroa.3.015.i231 = phi i32 [ %i.uh, %.lr.ph.i228 ], [ %.sroa.3.015.i231.ph, %.lr.ph.i228.preheader748 ]
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0351.0, i64 %indvars.iv.i230
  %i.uc = load i32, ptr %i.ub, align 4, !tbaa !96
  %i.ud = getelementptr inbounds nuw [4 x i8], ptr %i.nr, i64 %indvars.iv.i230
  %i.ue = load i32, ptr %i.ud, align 4, !tbaa !96
  %i.uf = sub nsw i32 %i.uc, %i.ue                ; 5 uses
  %i.ug = call i32 @llvm.abs.i32(i32 %i.uf, i1 true)
  %i.uh = add nuw nsw i32 %i.ug, %.sroa.3.015.i231 ; 2 uses
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0342.0, i64 %indvars.iv.i230
  store i32 %i.uf, ptr %i.ui, align 4, !tbaa !96
  %i.uj = shl nuw i32 %i.uf, 1
  %i.uk = xor i32 %i.uf, -1
  %i.ul = shl nuw i32 %i.uk, 1
  %i.um = or disjoint i32 %i.ul, 1
  %i.un = icmp slt i32 %i.uf, 0
  %.0.i.i232 = select i1 %i.un, i32 %i.um, i32 %i.uj
  %i.uo = getelementptr inbounds nuw [4 x i8], ptr %i.ss, i64 %indvars.iv.i230
  store i32 %.0.i.i232, ptr %i.uo, align 4, !tbaa !96
  %indvars.iv.next.i233 = add nuw nsw i64 %indvars.iv.i230, 1 ; 2 uses
  %exitcond.not.i234 = icmp eq i64 %indvars.iv.next.i233, %wide.trip.count.i189
  br i1 %exitcond.not.i234, label %._crit_edge.i224, label %.lr.ph.i228, !llvm.loop !427

.lr.ph422:                                        ; preds = %.lr.ph422.preheader749, %.lr.ph422
  %indvars.iv483 = phi i64 [ %indvars.iv.next484, %.lr.ph422 ], [ %indvars.iv483.ph, %.lr.ph422.preheader749 ] ; 2 uses
  %i.up = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0351.0, i64 %indvars.iv483 ; 2 uses
  %i.uq = load i32, ptr %i.up, align 4, !tbaa !96
  %i.ur = sdiv i32 %i.uq, %.0131425
  store i32 %i.ur, ptr %i.up, align 4, !tbaa !96
  %indvars.iv.next484 = add nuw nsw i64 %indvars.iv483, 1 ; 2 uses
  %exitcond488.not = icmp eq i64 %indvars.iv.next484, %i.fa
  br i1 %exitcond488.not, label %.lr.ph.i228.preheader, label %.lr.ph422, !llvm.loop !428

bb.bb:                                            ; preds = %.noexc237
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.us = load i64, ptr %i.qs, align 8, !tbaa !128
  %i.ut = load i64, ptr %i.qt, align 8, !tbaa !128 ; 2 uses
  %i.uu = trunc i64 %i.ut to i32
  %i.uv = trunc i64 %i.us to i32
  %i.uw = add i32 %.0131425, %i.uv
  %i.ux = invoke noundef double @_ZN5draco27ComputeBinaryShannonEntropyEjj(i32 noundef %i.uu, i32 noundef %i.uw)
          to label %bb.bc unwind label %.loopexit376

bb.bc:                                            ; preds = %bb.bb
  %i.uy = add nsw i64 %i.ua, %i.tz
  %.sroa.0.0.extract.trunc = trunc i64 %i.uy to i32
  %i.uz = sitofp i64 %i.ut to double
  %i.va = fmul double %i.ux, %i.uz
  %i.vb = call double @llvm.ceil.f64(double %i.va)
  %i.vc = fptosi double %i.vb to i64
  %i.vd = trunc i64 %i.vc to i32
  %i.ve = add i32 %i.vd, %.sroa.0.0.extract.trunc ; 3 uses
  %i.vf = load i32, ptr %9, align 8, !tbaa !452   ; 2 uses
  %i.vg = icmp slt i32 %i.ve, %i.vf
  br i1 %i.vg, label %_ZNK5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE5ErrorltERKS7_.exit.thread, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.vh = icmp sle i32 %i.ve, %i.vf
  %i.vi = load i32, ptr %i.ed, align 4
  %i.vj = icmp slt i32 %.sroa.3.0.lcssa.i225, %i.vi
  %or.cond368 = select i1 %i.vh, i1 %i.vj, i1 false
  br i1 %or.cond368, label %_ZNK5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE5ErrorltERKS7_.exit.thread, label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit245

_ZNK5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE5ErrorltERKS7_.exit.thread: ; preds = %bb.bd, %bb.bc
  %.sroa.13.0.insert.ext321 = zext nneg i32 %.sroa.3.0.lcssa.i225 to i64
  %.sroa.13.0.insert.shift322 = shl nuw nsw i64 %.sroa.13.0.insert.ext321, 32
  %.sroa.0.0.insert.ext315 = zext i32 %i.ve to i64
  %.sroa.0.0.insert.insert317 = or disjoint i64 %.sroa.13.0.insert.shift322, %.sroa.0.0.insert.ext315
  store i64 %.sroa.0.0.insert.insert317, ptr %9, align 8, !tbaa !96
  store i8 %.1128, ptr %i.ea, align 8, !tbaa !448
  store i32 %.0131425, ptr %i.dy, align 4, !tbaa !449
  %i.vk = load ptr, ptr %i.eh, align 8, !tbaa !102
  %i.vl = load ptr, ptr %i.eb, align 8, !tbaa !101 ; 8 uses
  %i.vm = ptrtoint ptr %i.vk to i64
  %i.vn = ptrtoint ptr %i.vl to i64               ; 2 uses
  %i.vo = sub i64 %i.vm, %i.vn                    ; 2 uses
  %i.vp = icmp ugt i64 %i.eg, %i.vo
  br i1 %i.vp, label %bb.be, label %bb.bj

bb.be:                                            ; preds = %_ZNK5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE5ErrorltERKS7_.exit.thread
  br i1 %i.el, label %.invoke, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i

.invoke:                                          ; preds = %bb.bu, %bb.be
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #20
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i: ; preds = %bb.be
  %i.vq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eg) #18
          to label %.noexc292 unwind label %.loopexit376 ; 4 uses

.noexc292:                                        ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i
  br i1 %i.ej, label %bb.bf, label %bb.bg, !prof !140

bb.bf:                                            ; preds = %.noexc292
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.vq, ptr align 4 %.sroa.0351.0, i64 %i.eg, i1 false)
  br label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPiS1_EEEES5_mT_S7_.exit.i

bb.bg:                                            ; preds = %.noexc292
  br i1 %i.ek, label %bb.bh, label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPiS1_EEEES5_mT_S7_.exit.i

bb.bh:                                            ; preds = %bb.bg
  %i.vr = load i32, ptr %.sroa.0351.0, align 4, !tbaa !96
  store i32 %i.vr, ptr %i.vq, align 4, !tbaa !96
  br label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPiS1_EEEES5_mT_S7_.exit.i

_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPiS1_EEEES5_mT_S7_.exit.i: ; preds = %bb.bh, %bb.bg, %bb.bf
  %.not.i.i290 = icmp eq ptr %i.vl, null
  br i1 %.not.i.i290, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPiS1_EEEES5_mT_S7_.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.vl, i64 noundef %i.vo) #19
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i: ; preds = %bb.bi, %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPiS1_EEEES5_mT_S7_.exit.i
  store ptr %i.vq, ptr %i.eb, align 8, !tbaa !101
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vq, i64 %i.eg ; 2 uses
  store ptr %i.vs, ptr %i.ei, align 8, !tbaa !149
  store ptr %i.vs, ptr %i.eh, align 8, !tbaa !102
  br label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit243

bb.bj:                                            ; preds = %_ZNK5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE5ErrorltERKS7_.exit.thread
  %i.vt = load ptr, ptr %i.ei, align 8, !tbaa !149 ; 5 uses
  %i.vu = ptrtoint ptr %i.vt to i64
  %i.vv = sub i64 %i.vu, %i.vn                    ; 5 uses
  %.not.i288 = icmp ult i64 %i.vv, %i.eg
  br i1 %.not.i288, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  br i1 %i.ej, label %bb.bl, label %bb.bm, !prof !140

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.vl, ptr align 4 %.sroa.0351.0, i64 %i.eg, i1 false)
  %.pre.i = load ptr, ptr %i.ei, align 8, !tbaa !149
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

bb.bm:                                            ; preds = %bb.bk
  br i1 %i.ek, label %bb.bn, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

bb.bn:                                            ; preds = %bb.bm
  %i.vw = load i32, ptr %.sroa.0351.0, align 4, !tbaa !96
  store i32 %i.vw, ptr %i.vl, align 4, !tbaa !96
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i: ; preds = %bb.bn, %bb.bm, %bb.bl
  %i.vx = phi ptr [ %.pre.i, %bb.bl ], [ %i.vt, %bb.bm ], [ %i.vt, %bb.bn ]
  %i.vy = getelementptr inbounds i8, ptr %i.vl, i64 %i.eg ; 2 uses
  %.not.i18.i = icmp eq ptr %i.vx, %i.vy
  br i1 %.not.i18.i, label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit243, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i289

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i289:     ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i
  store ptr %i.vy, ptr %i.ei, align 8, !tbaa !149
  br label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit243

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %bb.bj
  %.sink.i.i = getelementptr inbounds i8, ptr %.sroa.0351.0, i64 %i.vv ; 3 uses
  %i.vz = ptrtoint ptr %.sink.i.i to i64
  %i.wa = icmp sgt i64 %i.vv, 4
  br i1 %i.wa, label %bb.bo, label %bb.bp, !prof !140

bb.bo:                                            ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.vl, ptr align 4 %.sroa.0351.0, i64 %i.vv, i1 false)
  %.pre24.i = load ptr, ptr %i.ei, align 8, !tbaa !149
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit19.i

bb.bp:                                            ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.wb = icmp eq i64 %i.vv, 4
  br i1 %i.wb, label %bb.bq, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit19.i

bb.bq:                                            ; preds = %bb.bp
  %i.wc = load i32, ptr %.sroa.0351.0, align 4, !tbaa !96
  store i32 %i.wc, ptr %i.vl, align 4, !tbaa !96
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit19.i

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit19.i: ; preds = %bb.bq, %bb.bp, %bb.bo
  %i.wd = phi ptr [ %.pre24.i, %bb.bo ], [ %i.vt, %bb.bp ], [ %i.vt, %bb.bq ] ; 3 uses
  %i.we = sub i64 %i.ee, %i.vz                    ; 4 uses
  %i.wf = icmp sgt i64 %i.we, 4
  br i1 %i.wf, label %bb.br, label %bb.bs, !prof !140

bb.br:                                            ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit19.i
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.wd, ptr align 4 %.sink.i.i, i64 %i.we, i1 false)
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit.i

bb.bs:                                            ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit19.i
  %i.wg = icmp eq i64 %i.we, 4
  br i1 %i.wg, label %bb.bt, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit.i

bb.bt:                                            ; preds = %bb.bs
  %i.wh = load i32, ptr %.sink.i.i, align 4, !tbaa !96
  store i32 %i.wh, ptr %i.wd, align 4, !tbaa !96
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit.i

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit.i: ; preds = %bb.bt, %bb.bs, %bb.br
  %i.wi = getelementptr inbounds i8, ptr %i.wd, i64 %i.we
  store ptr %i.wi, ptr %i.ei, align 8, !tbaa !149
  br label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit243

_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit243: ; preds = %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i289, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit.i
  %i.wj = load ptr, ptr %i.ep, align 8, !tbaa !102
  %i.wk = load ptr, ptr %i.ec, align 8, !tbaa !101 ; 8 uses
  %i.wl = ptrtoint ptr %i.wj to i64
  %i.wm = ptrtoint ptr %i.wk to i64               ; 2 uses
  %i.wn = sub i64 %i.wl, %i.wm                    ; 2 uses
  %i.wo = icmp ugt i64 %i.eo, %i.wn
  br i1 %i.wo, label %bb.bu, label %bb.bz

bb.bu:                                            ; preds = %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit243
  br i1 %i.et, label %.invoke, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i303

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i303: ; preds = %bb.bu
  %i.wp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eo) #18
          to label %.noexc308 unwind label %.loopexit376 ; 4 uses

.noexc308:                                        ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i303
  br i1 %i.er, label %bb.bv, label %bb.bw, !prof !140

bb.bv:                                            ; preds = %.noexc308
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.wp, ptr align 4 %.sroa.0342.0, i64 %i.eo, i1 false)
  br label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPiS1_EEEES5_mT_S7_.exit.i304

bb.bw:                                            ; preds = %.noexc308
  br i1 %i.es, label %bb.bx, label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPiS1_EEEES5_mT_S7_.exit.i304

bb.bx:                                            ; preds = %bb.bw
  %i.wq = load i32, ptr %.sroa.0342.0, align 4, !tbaa !96
  store i32 %i.wq, ptr %i.wp, align 4, !tbaa !96
  br label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPiS1_EEEES5_mT_S7_.exit.i304

_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPiS1_EEEES5_mT_S7_.exit.i304: ; preds = %bb.bx, %bb.bw, %bb.bv
  %.not.i.i305 = icmp eq ptr %i.wk, null
  br i1 %.not.i.i305, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i306, label %bb.by

bb.by:                                            ; preds = %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPiS1_EEEES5_mT_S7_.exit.i304
  call void @_ZdlPvm(ptr noundef nonnull %i.wk, i64 noundef %i.wn) #19
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i306

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i306: ; preds = %bb.by, %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPiS1_EEEES5_mT_S7_.exit.i304
  store ptr %i.wp, ptr %i.ec, align 8, !tbaa !101
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wp, i64 %i.eo ; 2 uses
  store ptr %i.wr, ptr %i.eq, align 8, !tbaa !149
  store ptr %i.wr, ptr %i.ep, align 8, !tbaa !102
  br label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit245

bb.bz:                                            ; preds = %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit243
  %i.ws = load ptr, ptr %i.eq, align 8, !tbaa !149 ; 5 uses
  %i.wt = ptrtoint ptr %i.ws to i64
  %i.wu = sub i64 %i.wt, %i.wm                    ; 5 uses
  %.not.i293 = icmp ult i64 %i.wu, %i.eo
  br i1 %.not.i293, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i298, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  br i1 %i.er, label %bb.cb, label %bb.cc, !prof !140

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.wk, ptr align 4 %.sroa.0342.0, i64 %i.eo, i1 false)
  %.pre.i297 = load ptr, ptr %i.eq, align 8, !tbaa !149
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i294

bb.cc:                                            ; preds = %bb.ca
  br i1 %i.es, label %bb.cd, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i294

bb.cd:                                            ; preds = %bb.cc
  %i.wv = load i32, ptr %.sroa.0342.0, align 4, !tbaa !96
  store i32 %i.wv, ptr %i.wk, align 4, !tbaa !96
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i294

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i294: ; preds = %bb.cd, %bb.cc, %bb.cb
  %i.ww = phi ptr [ %.pre.i297, %bb.cb ], [ %i.ws, %bb.cc ], [ %i.ws, %bb.cd ]
  %i.wx = getelementptr inbounds i8, ptr %i.wk, i64 %i.eo ; 2 uses
  %.not.i18.i295 = icmp eq ptr %i.ww, %i.wx
  br i1 %.not.i18.i295, label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit245, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i296

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i296:     ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i294
  store ptr %i.wx, ptr %i.eq, align 8, !tbaa !149
  br label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit245

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i298: ; preds = %bb.bz
  %.sink.i.i299 = getelementptr inbounds i8, ptr %.sroa.0342.0, i64 %i.wu ; 3 uses
  %i.wy = ptrtoint ptr %.sink.i.i299 to i64
  %i.wz = icmp sgt i64 %i.wu, 4
  br i1 %i.wz, label %bb.ce, label %bb.cf, !prof !140

bb.ce:                                            ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i298
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.wk, ptr align 4 %.sroa.0342.0, i64 %i.wu, i1 false)
  %.pre24.i302 = load ptr, ptr %i.eq, align 8, !tbaa !149
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit19.i300

bb.cf:                                            ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i298
  %i.xa = icmp eq i64 %i.wu, 4
  br i1 %i.xa, label %bb.cg, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit19.i300

bb.cg:                                            ; preds = %bb.cf
  %i.xb = load i32, ptr %.sroa.0342.0, align 4, !tbaa !96
  store i32 %i.xb, ptr %i.wk, align 4, !tbaa !96
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit19.i300

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit19.i300: ; preds = %bb.cg, %bb.cf, %bb.ce
  %i.xc = phi ptr [ %.pre24.i302, %bb.ce ], [ %i.ws, %bb.cf ], [ %i.ws, %bb.cg ] ; 3 uses
  %i.xd = sub i64 %i.em, %i.wy                    ; 4 uses
  %i.xe = icmp sgt i64 %i.xd, 4
  br i1 %i.xe, label %bb.ch, label %bb.ci, !prof !140

bb.ch:                                            ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit19.i300
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.xc, ptr align 4 %.sink.i.i299, i64 %i.xd, i1 false)
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit.i301

bb.ci:                                            ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit19.i300
  %i.xf = icmp eq i64 %i.xd, 4
  br i1 %i.xf, label %bb.cj, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit.i301

bb.cj:                                            ; preds = %bb.ci
  %i.xg = load i32, ptr %.sink.i.i299, align 4, !tbaa !96
  store i32 %i.xg, ptr %i.xc, align 4, !tbaa !96
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit.i301

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit.i301: ; preds = %bb.cj, %bb.ci, %bb.ch
  %i.xh = getelementptr inbounds i8, ptr %i.xc, i64 %i.xd
  store ptr %i.xh, ptr %i.eq, align 8, !tbaa !149
  br label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit245

bb.ck:                                            ; preds = %.noexc237, %.noexc236, %._crit_edge.i224
  %i.xi = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

.loopexit376:                                     ; preds = %bb.bb, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i303
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit245: ; preds = %bb.bd, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i306, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i294, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i296, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit.i301
  br i1 %or.cond.i.i246, label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit, label %bb.cl

bb.cl:                                            ; preds = %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit245
  %.pre.i.i = load i8, ptr %.ptr35.i.i, align 1, !tbaa !239, !range !61
  br label %_ZSt9__reverseIPbEvT_S1_St26random_access_iterator_tag.exit.i.i

_ZSt9__reverseIPbEvT_S1_St26random_access_iterator_tag.exit.i.i: ; preds = %bb.cn, %bb.cl
  %i.xj = phi i8 [ %.pre.i.i, %bb.cl ], [ %i.xk, %bb.cn ]
  %.021.idx.i.i = phi i64 [ -1, %bb.cl ], [ %.021.add.i.i, %bb.cn ] ; 3 uses
  %.021.add.i.i = add nsw i64 %.021.idx.i.i, -1   ; 4 uses
  %.ptr.i.i = getelementptr inbounds i8, ptr %i.qp, i64 %.021.add.i.i
  %i.xk = load i8, ptr %.ptr.i.i, align 1, !tbaa !239, !range !61, !noundef !62 ; 2 uses
  %i.xl = icmp samesign ult i8 %i.xk, %i.xj
  br i1 %i.xl, label %.preheader.i.i.preheader, label %bb.cn

.preheader.i.i.preheader:                         ; preds = %_ZSt9__reverseIPbEvT_S1_St26random_access_iterator_tag.exit.i.i
  %.ptr.i.i.le = getelementptr inbounds i8, ptr %i.qp, i64 %.021.add.i.i
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.0.i.i247 = phi ptr [ %i.xm, %.preheader.i.i ], [ %i.qp, %.preheader.i.i.preheader ]
  %i.xm = getelementptr inbounds i8, ptr %.0.i.i247, i64 -1 ; 3 uses
  %i.xn = load i8, ptr %i.xm, align 1, !tbaa !239, !range !61, !noundef !62
  %.not54.i.i = icmp eq i8 %i.xn, 0
  br i1 %.not54.i.i, label %.preheader.i.i, label %bb.cm, !llvm.loop !4

bb.cm:                                            ; preds = %.preheader.i.i
  store i8 1, ptr %.ptr.i.i.le, align 1, !tbaa !239
  store i8 0, ptr %i.xm, align 1, !tbaa !239
  %.not.i.i248 = icmp eq i64 %.021.idx.i.i, -1
  br i1 %.not.i.i248, label %_ZSt16next_permutationIPbEbT_S1_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.cm
  %.021.ptr.le.i.i = getelementptr inbounds i8, ptr %i.qp, i64 %.021.idx.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.preheader.i
  %.014.i.i.i = phi ptr [ %.0.i.i.i, %.lr.ph.i.i.i ], [ %.ptr35.i.i, %.lr.ph.i.i.preheader.i ] ; 3 uses
  %.0913.i.i.i = phi ptr [ %i.xq, %.lr.ph.i.i.i ], [ %.021.ptr.le.i.i, %.lr.ph.i.i.preheader.i ] ; 3 uses
  %i.xo = load i8, ptr %.0913.i.i.i, align 1, !tbaa !239, !range !61, !noundef !62
  %i.xp = load i8, ptr %.014.i.i.i, align 1, !tbaa !239, !range !61, !noundef !62
  store i8 %i.xp, ptr %.0913.i.i.i, align 1, !tbaa !239
  store i8 %i.xo, ptr %.014.i.i.i, align 1, !tbaa !239
  %i.xq = getelementptr inbounds nuw i8, ptr %.0913.i.i.i, i64 1 ; 2 uses
  %.0.i.i.i = getelementptr inbounds i8, ptr %.014.i.i.i, i64 -1 ; 2 uses
  %i.xr = icmp ult ptr %i.xq, %.0.i.i.i
  br i1 %i.xr, label %.lr.ph.i.i.i, label %_ZSt16next_permutationIPbEbT_S1_.exit, !llvm.loop !5

bb.cn:                                            ; preds = %_ZSt9__reverseIPbEvT_S1_St26random_access_iterator_tag.exit.i.i
  %i.xs = icmp eq i64 %.021.add.i.i, %i.qu
  br i1 %i.xs, label %.lr.ph.i28.i.i, label %_ZSt9__reverseIPbEvT_S1_St26random_access_iterator_tag.exit.i.i, !llvm.loop !6

.lr.ph.i28.i.i:                                   ; preds = %bb.cn, %.lr.ph.i28.i.i
  %.014.i29.i.i = phi ptr [ %.0.i31.i.i, %.lr.ph.i28.i.i ], [ %.ptr35.i.i, %bb.cn ] ; 3 uses
  %.0913.i30.i.i = phi ptr [ %i.xv, %.lr.ph.i28.i.i ], [ %i.b, %bb.cn ] ; 3 uses
  %i.xt = load i8, ptr %.0913.i30.i.i, align 1, !tbaa !239, !range !61, !noundef !62
  %i.xu = load i8, ptr %.014.i29.i.i, align 1, !tbaa !239, !range !61, !noundef !62
  store i8 %i.xu, ptr %.0913.i30.i.i, align 1, !tbaa !239
  store i8 %i.xt, ptr %.014.i29.i.i, align 1, !tbaa !239
  %i.xv = getelementptr inbounds nuw i8, ptr %.0913.i30.i.i, i64 1 ; 2 uses
  %.0.i31.i.i = getelementptr inbounds i8, ptr %.014.i29.i.i, i64 -1 ; 2 uses
  %i.xw = icmp ult ptr %i.xv, %.0.i31.i.i
  br i1 %i.xw, label %.lr.ph.i28.i.i, label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit, !llvm.loop !5

_ZSt16next_permutationIPbEbT_S1_.exit:            ; preds = %.lr.ph.i.i.i, %bb.cm
  br label %.preheader375, !llvm.loop !429

_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit: ; preds = %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit245, %.lr.ph.i28.i.i
  %i.xx = add nuw nsw i32 %.0131425, 1
  %exitcond490.not = icmp eq i64 %i.qw, %i.qo
  br i1 %exitcond490.not, label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit._crit_edge, label %.lr.ph.preheader.i.i.i, !llvm.loop !430

bb.co:                                            ; preds = %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit._crit_edge
  %i.xy = load i32, ptr %i.dy, align 4, !tbaa !449
  %i.xz = sext i32 %i.xy to i64
  %i.ya = zext nneg i32 %.2148 to i64
  %i.yb = getelementptr [8 x i8], ptr %i.c, i64 %i.ya
  %i.yc = getelementptr i8, ptr %i.yb, i64 -8     ; 2 uses
  %i.yd = load i64, ptr %i.yc, align 8, !tbaa !128
end_hunk_1
begin_hunk_2_@_ZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEE:bb.a
  %.phi.trans.insert500 = getelementptr inbounds nuw i8, ptr %8, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert500, align 16, !tbaa !149
  %.pre502 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !101
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %_ZN5draco37PredictionSchemeWrapEncodingTransformIiiE4InitEPKiii.exit, %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge499
  %i.bg = phi ptr [ %.pre502, %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge499 ], [ null, %_ZN5draco37PredictionSchemeWrapEncodingTransformIiiE4InitEPKiii.exit ] ; 2 uses
  %i.bh = phi ptr [ %.pre, %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge499 ], [ null, %_ZN5draco37PredictionSchemeWrapEncodingTransformIiiE4InitEPKiii.exit ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = ashr exact i64 %i.bl, 2                 ; 3 uses
  %i.bn = icmp ult i64 %i.bm, %i.g
  br i1 %i.bn, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.bo = icmp ugt i64 %i.bm, %i.g
  br i1 %i.bo, label %bb.l, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.1

bb.l:                                             ; preds = %bb.k
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.g ; 2 uses
  %.not.i.i170.1 = icmp eq ptr %i.bh, %i.bp
  br i1 %.not.i.i170.1, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.1, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.1

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.1:      ; preds = %bb.l
  store ptr %i.bp, ptr %i.bi, align 16, !tbaa !149
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.1

bb.m:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.br = sub nuw nsw i64 %i.g, %i.bm
  invoke void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, i64 noundef %i.br)
          to label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.1 unwind label %bb.t

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
          to label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.2 unwind label %bb.t

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
          to label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.3 unwind label %bb.t

_ZNSt6vectorIiSaIiEE6resizeEm.exit.3:             ; preds = %bb.s, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.3, %bb.r, %bb.q
  %i.cq = icmp slt i32 %4, 0
  br i1 %i.cq, label %bb.h, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.t:                                             ; preds = %bb.s, %bb.p, %bb.m, %bb.j
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit276

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc169, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.15352.0 = phi ptr [ %i.bb, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.bb, %.noexc169 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.0344.0 = phi ptr [ %i.ba, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ba, %.noexc169 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 27 uses
  %.0.i.i.i.i.i = phi ptr [ %i.bf, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.bc, %.noexc169 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ]
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 6 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !238 ; 2 uses
  %i.cv = load ptr, ptr %i.cs, align 8, !tbaa !236 ; 2 uses
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = ashr exact i64 %i.cy, 2                 ; 3 uses
  %i.da = icmp ult i64 %i.cz, %i.g
  br i1 %i.da, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.db = sub nuw nsw i64 %i.g, %i.cz
  invoke void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, i64 noundef %i.db)
          to label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174.thread unwind label %bb.z

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174.thread: ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  br label %bb.x

bb.v:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.dc = icmp ugt i64 %i.cz, %i.g
  br i1 %i.dc, label %bb.w, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174

bb.w:                                             ; preds = %bb.v
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.g ; 2 uses
  %.not.i.i172 = icmp eq ptr %i.cu, %i.dd
  br i1 %.not.i.i172, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.w
  store ptr %i.dd, ptr %i.ct, align 8, !tbaa !238
  br label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174: ; preds = %bb.v, %bb.w, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  br i1 %.not.i.i.i.i168, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit182, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174.thread, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174
  %i.de = shl nuw nsw i64 %i.g, 2
  %i.df = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.de) #18
          to label %.noexc181 unwind label %bb.aa ; 5 uses

.noexc181:                                        ; preds = %bb.x
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.g ; 2 uses
  store i32 0, ptr %i.df, align 4, !tbaa !96
  %i.dh = getelementptr i8, ptr %i.df, i64 4      ; 3 uses
  %i.di = add nsw i64 %i.g, -1                    ; 2 uses
  %i.dj = icmp eq i64 %i.di, 0
  br i1 %i.dj, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit182, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i176

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i176: ; preds = %.noexc181
  %.idx.i.i.i.i.i.i.i177 = shl nuw nsw i64 %i.di, 2 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.dh, i8 0, i64 %.idx.i.i.i.i.i.i.i177, i1 false), !tbaa !96
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 %.idx.i.i.i.i.i.i.i177
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit182

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit182:            ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i176, %.noexc181, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174
  %.sroa.15.0 = phi ptr [ %i.dg, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i176 ], [ %i.dg, %.noexc181 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174 ] ; 2 uses
  %.sroa.0335.0 = phi ptr [ %i.df, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i176 ], [ %i.df, %.noexc181 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174 ] ; 18 uses
  %.0.i.i.i.i.i178 = phi ptr [ %i.dk, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i176 ], [ %i.dh, %.noexc181 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i174 ] ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !165 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !209
  %i.dp = load ptr, ptr %i.dm, align 8, !tbaa !210
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = sub i64 %i.dq, %i.dr
  %i.dt = lshr exact i64 %i.ds, 2                 ; 2 uses
  %i.du = trunc i64 %i.dt to i32
  %i.dv = icmp sgt i32 %i.du, 1
  br i1 %i.dv, label %.lr.ph432, label %.preheader

.lr.ph432:                                        ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit182
  %i.dw = getelementptr inbounds nuw i8, ptr %i.aw, i64 24 ; 4 uses
  %wide.trip.count.i187 = zext nneg i32 %4 to i64 ; 11 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 6 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.ed = ptrtoint ptr %.0.i.i.i.i.i to i64       ; 2 uses
  %i.ee = ptrtoint ptr %.sroa.0344.0 to i64       ; 3 uses
  %i.ef = sub i64 %i.ed, %i.ee                    ; 10 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 6 uses
  %i.ei = icmp sgt i64 %i.ef, 4                   ; 2 uses
  %i.ej = icmp eq i64 %i.ef, 4                    ; 2 uses
  %i.ek = icmp ugt i64 %i.ef, 9223372036854775804
  %i.el = ptrtoint ptr %.0.i.i.i.i.i178 to i64    ; 2 uses
  %i.em = ptrtoint ptr %.sroa.0335.0 to i64       ; 8 uses
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
  %i.ey = call i32 @llvm.umax.i32(i32 %4, i32 1)
  %i.ez = zext nneg i32 %i.ey to i64              ; 15 uses
  %i.fa = shl nuw nsw i64 %i.ez, 2
  %i.fb = and i64 %i.dt, 2147483647               ; 4 uses
  %i.fc = add nsw i64 %i.fb, -1
  %i.fd = mul nsw i64 %i.fc, %i.g                 ; 2 uses
  %i.fe = shl i64 %i.fd, 2
  %i.ff = add i64 %i.fe, %i.a
  %i.fg = sub i64 %i.em, %i.ff
  %i.fh = shl nuw nsw i64 %i.g, 2
  %i.fi = mul i64 %i.fd, -4
  %i.fj = sub i64 %i.fi, %i.a
  %i.fk = shl nuw nsw i64 %i.ez, 2                ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.0344.0, i64 %i.fk
  %i.fl = add nsw i64 %i.fb, -1                   ; 2 uses
  %i.fm = mul nsw i64 %i.fl, %i.g
  %i.fn = shl i64 %i.fm, 2
  %i.fo = add i64 %i.fn, %i.a
  %i.fp = sub i64 %i.em, %i.fo
  %i.fq = shl nuw nsw i64 %i.g, 2
  %i.fr = add nsw i64 %i.fb, -2                   ; 2 uses
  %i.fs = mul nsw i64 %i.fr, %i.g
  %i.ft = shl i64 %i.fs, 2
  %i.fu = add i64 %i.ft, %i.a
  %i.fv = sub i64 %i.em, %i.fu
  %i.fw = mul nsw i64 %i.fl, %i.g
  %i.fx = mul i64 %i.fw, -4
  %i.fy = sub i64 %i.fx, %i.a
  %i.fz = mul nsw i64 %i.fr, %i.g
  %i.ga = mul i64 %i.fz, -4
  %i.gb = sub i64 %i.ga, %i.a
  %min.iters.check726 = icmp ult i32 %4, 12
  %n.vec728 = and i64 %wide.trip.count.i187, 2147483640 ; 3 uses
  %cmp.n739 = icmp eq i64 %n.vec728, %wide.trip.count.i187
  %xtraiter778 = and i64 %wide.trip.count.i187, 1
  %lcmp.mod779.not = icmp eq i64 %xtraiter778, 0
  %i.gc = add nsw i64 %wide.trip.count.i187, -1
  %min.iters.check702 = icmp ult i32 %4, 8
  %invariant.op814 = add i64 %i.fp, -1
  %invariant.op816 = add i64 %i.fv, -1
  %n.vec704 = and i64 %wide.trip.count.i187, 2147483640 ; 3 uses
  %cmp.n716 = icmp eq i64 %n.vec704, %wide.trip.count.i187
  %min.iters.check678 = icmp ult i32 %4, 8
  %n.vec680 = and i64 %i.ez, 2147483640           ; 3 uses
  %cmp.n689 = icmp eq i64 %n.vec680, %i.ez
  %xtraiter780 = and i64 %i.ez, 3                 ; 2 uses
  %lcmp.mod781.not = icmp eq i64 %xtraiter780, 0
  %min.iters.check665 = icmp ult i32 %4, 4
  %n.vec667 = and i64 %i.ez, 2147483644           ; 3 uses
  %cmp.n673 = icmp eq i64 %n.vec667, %i.ez
  %min.iters.check650 = icmp ult i32 %4, 8
  %i.gd = sub i64 %i.ee, %i.em
  %diff.check641 = icmp ugt i64 %i.gd, -32
  %invariant.op818 = add i64 %i.fg, -1
  %invariant.op820 = add i64 %i.fj, -1
  %n.vec652 = and i64 %wide.trip.count.i187, 2147483640 ; 3 uses
  %cmp.n662 = icmp eq i64 %n.vec652, %wide.trip.count.i187
  %min.iters.check = icmp ult i32 %4, 8
  %n.vec = and i64 %i.ez, 2147483640              ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.ez
  %xtraiter782 = and i64 %i.ez, 1
  %lcmp.mod783.not = icmp eq i64 %xtraiter782, 0
  %i.ge = add nsw i64 %i.ez, -1
  br label %bb.ab

.preheader:                                       ; preds = %_ZZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEEEN23PredictionConfigurationD2Ev.exit, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit182
  br i1 %.not.i.i.i.i168, label %._crit_edge435, label %.lr.ph434

.lr.ph434:                                        ; preds = %.preheader
  %i.gf = load ptr, ptr %8, align 16, !tbaa !101
  %i.gg = zext nneg i32 %4 to i64
  %i.gh = shl nuw nsw i64 %i.gg, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.gf, i8 0, i64 %i.gh, i1 false), !tbaa !96
  br label %._crit_edge435

bb.y:                                             ; preds = %bb.i, %bb.h
  %i.gi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit276

bb.z:                                             ; preds = %bb.u
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ec

bb.aa:                                            ; preds = %bb.x
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit274

bb.ab:                                            ; preds = %.lr.ph432, %_ZZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEEEN23PredictionConfigurationD2Ev.exit
  %indvar642 = phi i64 [ 0, %.lr.ph432 ], [ %indvar.next, %_ZZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEEEN23PredictionConfigurationD2Ev.exit ] ; 3 uses
  %indvars.iv492 = phi i64 [ %i.fb, %.lr.ph432 ], [ %indvars.iv.next493, %_ZZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEEEN23PredictionConfigurationD2Ev.exit ] ; 3 uses
  %i.gl = mul i64 %i.fq, %indvar642               ; 4 uses
  %i.gm = add i64 %i.fy, %i.gl
  %i.gn = add i64 %i.gb, %i.gl
  %i.go = mul i64 %i.fh, %indvar642               ; 2 uses
  %indvars.iv.next493 = add nsw i64 %indvars.iv492, -1 ; 8 uses
  %i.gp = load ptr, ptr %i.dl, align 8, !tbaa !165 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !209
  %i.gs = load ptr, ptr %i.gp, align 8, !tbaa !210 ; 2 uses
  %i.gt = ptrtoint ptr %i.gr to i64
  %i.gu = ptrtoint ptr %i.gs to i64
  %i.gv = sub i64 %i.gt, %i.gu
  %i.gw = ashr exact i64 %i.gv, 2                 ; 2 uses
  %.not.i.i183 = icmp ugt i64 %i.gw, %indvars.iv.next493
  br i1 %.not.i.i183, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.6, i64 noundef %indvars.iv.next493, i64 noundef %i.gw) #20
          to label %.noexc184 unwind label %bb.ai

.noexc184:                                        ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %indvars.iv.next493
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !212 ; 6 uses
  %.not362398 = icmp eq i32 %i.gy, -1
  br i1 %.not362398, label %._crit_edge, label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.lr.ph

_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.lr.ph: ; preds = %bb.ad
  %i.gz = load ptr, ptr %i.dw, align 8, !tbaa !210, !noalias !666
  %i.ha = urem i32 %i.gy, 3
  %.not.i.i197 = icmp ne i32 %i.ha, 0             ; 2 uses
  %i.hb = add i32 %i.gy, -1
  %i.hc = add i32 %i.gy, 2                        ; 2 uses
  %i.hd = icmp ne i32 %i.hc, -1
  %.mux = select i1 %.not.i.i197, i32 %i.hb, i32 %i.hc
  %i.he = zext i32 %.mux to i64
  %brmerge = or i1 %.not.i.i197, %i.hd
  br label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i

_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i: ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.lr.ph, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit204
  %.0144401 = phi i1 [ true, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.lr.ph ], [ %.1145, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit204 ] ; 3 uses
  %.0146400 = phi i32 [ 0, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.lr.ph ], [ %.1147, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit204 ] ; 4 uses
  %.sroa.0325.0399 = phi i32 [ %i.gy, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.lr.ph ], [ %.sroa.0325.2, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit204 ] ; 6 uses
  %i.hf = sext i32 %.0146400 to i64
  %i.hg = getelementptr inbounds [24 x i8], ptr %8, i64 %i.hf
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !101 ; 5 uses
  %i.hi = ptrtoaddr ptr %i.hh to i64              ; 2 uses
  %i.hj = zext i32 %.sroa.0325.0399 to i64
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.hj
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !212, !noalias !666 ; 7 uses
  %i.hm = icmp eq i32 %i.hl, -1
  br i1 %i.hm, label %_ZN5draco30ComputeParallelogramPredictionINS_11CornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit, label %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i

_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i: ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i
  %i.hn = zext i32 %i.hl to i64
  %i.ho = load ptr, ptr %i.aw, align 8, !tbaa !233, !noalias !667 ; 3 uses
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %i.hn
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !235, !noalias !667
  %i.hr = zext i32 %i.hq to i64
  %i.hs = load ptr, ptr %i.ay, align 8, !tbaa !101 ; 3 uses
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %i.hr
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !96 ; 2 uses
  %i.hv = add nuw i32 %i.hl, 1                    ; 2 uses
  %i.hw = urem i32 %i.hv, 3
  %.not.i.i.i = icmp eq i32 %i.hw, 0
  %i.hx = add i32 %i.hl, -2
  %spec.select.i.i.i = select i1 %.not.i.i.i, i32 %i.hx, i32 %i.hv ; 2 uses
  %i.hy = icmp eq i32 %spec.select.i.i.i, -1
  br i1 %i.hy, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i
  %i.hz = zext i32 %spec.select.i.i.i to i64
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %i.hz
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !235, !noalias !668
  %i.ic = zext i32 %i.ib to i64
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i
  %storemerge.i11.i.i = phi i64 [ %i.ic, %bb.ae ], [ 4294967295, %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i ]
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %storemerge.i11.i.i
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !96 ; 2 uses
  %i.if = urem i32 %i.hl, 3
  %.not.i13.i.i = icmp eq i32 %i.if, 0
  br i1 %.not.i13.i.i, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread26.i.i

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread26.i.i: ; preds = %bb.af
  %i.ig = add i32 %i.hl, -1
  br label %bb.ag

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i: ; preds = %bb.af
  %i.ih = add i32 %i.hl, 2                        ; 2 uses
  %i.ii = icmp eq i32 %i.ih, -1
  br i1 %i.ii, label %_ZN5draco23GetParallelogramEntriesINS_11CornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i, label %bb.ag

bb.ag:                                            ; preds = %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread26.i.i
  %.sink.i1428.i.i = phi i32 [ %i.ig, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread26.i.i ], [ %i.ih, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i ]
  %i.ij = zext i32 %.sink.i1428.i.i to i64
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %i.ij
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !235, !noalias !669
  %i.im = zext i32 %i.il to i64
end_hunk_2
begin_hunk_3_@_ZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEE:bb.a
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0344.0, i64 %indvars.iv ; 2 uses
  %i.qn = load i32, ptr %i.qm, align 4, !tbaa !96
  %i.qo = add nsw i32 %i.qn, %i.ql
  store i32 %i.qo, ptr %i.qm, align 4, !tbaa !96
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %i.pr, i64 %indvars.iv.next
  %i.qq = load i32, ptr %i.qp, align 4, !tbaa !96
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0344.0, i64 %indvars.iv.next ; 2 uses
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !96
  %i.qt = add nsw i32 %i.qs, %i.qq
  store i32 %i.qt, ptr %i.qr, align 4, !tbaa !96
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %i.pr, i64 %indvars.iv.next.1
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !96
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0344.0, i64 %indvars.iv.next.1 ; 2 uses
  %i.qx = load i32, ptr %i.qw, align 4, !tbaa !96
  %i.qy = add nsw i32 %i.qx, %i.qv
  store i32 %i.qy, ptr %i.qw, align 4, !tbaa !96
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %i.pr, i64 %indvars.iv.next.2
  %i.ra = load i32, ptr %i.qz, align 4, !tbaa !96
  %i.rb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0344.0, i64 %indvars.iv.next.2 ; 2 uses
  %i.rc = load i32, ptr %i.rb, align 4, !tbaa !96
  %i.rd = add nsw i32 %i.rc, %i.ra
  store i32 %i.rd, ptr %i.rb, align 4, !tbaa !96
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %i.ez
  br i1 %exitcond.not.3, label %._crit_edge410, label %scalar.ph677, !llvm.loop !655

bb.ba:                                            ; preds = %.lr.ph413, %._crit_edge410
  %.1128 = phi i8 [ %.0127411, %.lr.ph413 ], [ %i.qj, %._crit_edge410 ] ; 2 uses
  %indvars.iv.next474 = add nuw nsw i64 %indvars.iv473, 1 ; 2 uses
  %exitcond476.not = icmp eq i64 %indvars.iv.next474, %i.pa
  br i1 %exitcond476.not, label %.preheader366, label %.lr.ph413, !llvm.loop !656

.lr.ph.i221.preheader:                            ; preds = %.lr.ph416, %middle.block672
  %i.re = load ptr, ptr %i.cs, align 8, !tbaa !236 ; 5 uses
  br i1 %min.iters.check650, label %.lr.ph.i221.preheader743, label %vector.memcheck639

vector.memcheck639:                               ; preds = %.lr.ph.i221.preheader
  %i.rf = ptrtoaddr ptr %i.re to i64              ; 3 uses
  %i.rg = sub i64 %i.em, %i.rf
  %diff.check640 = icmp ugt i64 %i.rg, -32
  %conflict.rdx644.reass = or i1 %diff.check640, %invariant.op
  %i.rh = sub i64 %i.ee, %i.rf
  %diff.check645 = icmp ugt i64 %i.rh, -32
  %conflict.rdx646 = or i1 %conflict.rdx644.reass, %diff.check645
  %.reass = add i64 %i.rf, %invariant.op813.reass
  %diff.check647 = icmp ult i64 %.reass, 31
  %conflict.rdx648 = or i1 %conflict.rdx646, %diff.check647
  br i1 %conflict.rdx648, label %.lr.ph.i221.preheader743, label %vector.body653

vector.body653:                                   ; preds = %vector.memcheck639, %vector.body653
  %index654 = phi i64 [ %index.next660, %vector.body653 ], [ 0, %vector.memcheck639 ] ; 5 uses
  %vec.phi = phi <4 x i32> [ %i.rq, %vector.body653 ], [ zeroinitializer, %vector.memcheck639 ]
  %vec.phi655 = phi <4 x i32> [ %i.rr, %vector.body653 ], [ zeroinitializer, %vector.memcheck639 ]
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0344.0, i64 %index654 ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 16
  %wide.load656 = load <4 x i32>, ptr %i.ri, align 4, !tbaa !96
  %wide.load657 = load <4 x i32>, ptr %i.rj, align 4, !tbaa !96
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %index654 ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 16
  %wide.load658 = load <4 x i32>, ptr %i.rk, align 4, !tbaa !96
  %wide.load659 = load <4 x i32>, ptr %i.rl, align 4, !tbaa !96
  %i.rm = sub nsw <4 x i32> %wide.load656, %wide.load658 ; 5 uses
  %i.rn = sub nsw <4 x i32> %wide.load657, %wide.load659 ; 5 uses
  %i.ro = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.rm, i1 true)
  %i.rp = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.rn, i1 true)
  %i.rq = add <4 x i32> %i.ro, %vec.phi           ; 2 uses
  %i.rr = add <4 x i32> %i.rp, %vec.phi655        ; 2 uses
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0335.0, i64 %index654 ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 16
  store <4 x i32> %i.rm, ptr %i.rs, align 4, !tbaa !96
  store <4 x i32> %i.rn, ptr %i.rt, align 4, !tbaa !96
  %i.ru = shl nuw <4 x i32> %i.rm, splat (i32 1)
  %i.rv = shl nuw <4 x i32> %i.rn, splat (i32 1)
  %i.rw = xor <4 x i32> %i.rm, splat (i32 -1)
  %i.rx = xor <4 x i32> %i.rn, splat (i32 -1)
  %i.ry = shl nuw <4 x i32> %i.rw, splat (i32 1)
  %i.rz = shl nuw <4 x i32> %i.rx, splat (i32 1)
  %i.sa = or disjoint <4 x i32> %i.ry, splat (i32 1)
  %i.sb = or disjoint <4 x i32> %i.rz, splat (i32 1)
  %i.sc = icmp slt <4 x i32> %i.rm, zeroinitializer
  %i.sd = icmp slt <4 x i32> %i.rn, zeroinitializer
  %i.se = select <4 x i1> %i.sc, <4 x i32> %i.sa, <4 x i32> %i.ru
  %i.sf = select <4 x i1> %i.sd, <4 x i32> %i.sb, <4 x i32> %i.rv
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %i.re, i64 %index654 ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 16
  store <4 x i32> %i.se, ptr %i.sg, align 4, !tbaa !96
  store <4 x i32> %i.sf, ptr %i.sh, align 4, !tbaa !96
  %index.next660 = add nuw i64 %index654, 8       ; 2 uses
  %i.si = icmp eq i64 %index.next660, %n.vec652
  br i1 %i.si, label %middle.block661, label %vector.body653, !llvm.loop !657

middle.block661:                                  ; preds = %vector.body653
  %bin.rdx = add <4 x i32> %i.rr, %i.rq
  %i.sj = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n662, label %._crit_edge.i217, label %.lr.ph.i221.preheader743

.lr.ph.i221.preheader743:                         ; preds = %vector.memcheck639, %.lr.ph.i221.preheader, %middle.block661
  %indvars.iv.i223.ph = phi i64 [ 0, %vector.memcheck639 ], [ 0, %.lr.ph.i221.preheader ], [ %n.vec652, %middle.block661 ]
  %.sroa.3.015.i224.ph = phi i32 [ 0, %vector.memcheck639 ], [ 0, %.lr.ph.i221.preheader ], [ %i.sj, %middle.block661 ]
  br label %.lr.ph.i221

._crit_edge.i217:                                 ; preds = %.lr.ph.i221, %middle.block661, %._crit_edge417.thread
  %i.sk = phi ptr [ %i.pm, %._crit_edge417.thread ], [ %i.re, %middle.block661 ], [ %i.re, %.lr.ph.i221 ]
  %.sroa.3.0.lcssa.i218 = phi i32 [ 0, %._crit_edge417.thread ], [ %i.sj, %middle.block661 ], [ %i.st, %.lr.ph.i221 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  invoke void @_ZN5draco21ShannonEntropyTracker4PeekEPKji(ptr dead_on_unwind nonnull writable sret(%"struct.draco::ShannonEntropyTracker::EntropyData") align 8 %6, ptr noundef nonnull align 8 dereferenceable(48) %i.dy, ptr noundef %i.sk, i32 noundef %4)
          to label %.noexc229 unwind label %bb.ck

.noexc229:                                        ; preds = %._crit_edge.i217
  %i.sl = invoke noundef i64 @_ZN5draco21ShannonEntropyTracker19GetNumberOfDataBitsERKNS0_11EntropyDataE(ptr noundef nonnull align 8 dereferenceable(20) %6)
          to label %.noexc230 unwind label %bb.ck

.noexc230:                                        ; preds = %.noexc229
  %i.sm = invoke noundef i64 @_ZN5draco21ShannonEntropyTracker24GetNumberOfRAnsTableBitsERKNS0_11EntropyDataE(ptr noundef nonnull align 8 dereferenceable(20) %6)
          to label %bb.bb unwind label %bb.ck

.lr.ph.i221:                                      ; preds = %.lr.ph.i221.preheader743, %.lr.ph.i221
  %indvars.iv.i223 = phi i64 [ %indvars.iv.next.i226, %.lr.ph.i221 ], [ %indvars.iv.i223.ph, %.lr.ph.i221.preheader743 ] ; 5 uses
  %.sroa.3.015.i224 = phi i32 [ %i.st, %.lr.ph.i221 ], [ %.sroa.3.015.i224.ph, %.lr.ph.i221.preheader743 ]
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0344.0, i64 %indvars.iv.i223
  %i.so = load i32, ptr %i.sn, align 4, !tbaa !96
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %indvars.iv.i223
  %i.sq = load i32, ptr %i.sp, align 4, !tbaa !96
  %i.sr = sub nsw i32 %i.so, %i.sq                ; 5 uses
  %i.ss = call i32 @llvm.abs.i32(i32 %i.sr, i1 true)
  %i.st = add nuw nsw i32 %i.ss, %.sroa.3.015.i224 ; 2 uses
  %i.su = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0335.0, i64 %indvars.iv.i223
  store i32 %i.sr, ptr %i.su, align 4, !tbaa !96
  %i.sv = shl nuw i32 %i.sr, 1
  %i.sw = xor i32 %i.sr, -1
  %i.sx = shl nuw i32 %i.sw, 1
  %i.sy = or disjoint i32 %i.sx, 1
  %i.sz = icmp slt i32 %i.sr, 0
  %.0.i.i225 = select i1 %i.sz, i32 %i.sy, i32 %i.sv
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %i.re, i64 %indvars.iv.i223
  store i32 %.0.i.i225, ptr %i.ta, align 4, !tbaa !96
  %indvars.iv.next.i226 = add nuw nsw i64 %indvars.iv.i223, 1 ; 2 uses
  %exitcond.not.i227 = icmp eq i64 %indvars.iv.next.i226, %wide.trip.count.i187
  br i1 %exitcond.not.i227, label %._crit_edge.i217, label %.lr.ph.i221, !llvm.loop !658

.lr.ph416:                                        ; preds = %.lr.ph416.preheader744, %.lr.ph416
  %indvars.iv477 = phi i64 [ %indvars.iv.next478, %.lr.ph416 ], [ %indvars.iv477.ph, %.lr.ph416.preheader744 ] ; 2 uses
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0344.0, i64 %indvars.iv477 ; 2 uses
  %i.tc = load i32, ptr %i.tb, align 4, !tbaa !96
  %i.td = sdiv i32 %i.tc, %.0131419
  store i32 %i.td, ptr %i.tb, align 4, !tbaa !96
  %indvars.iv.next478 = add nuw nsw i64 %indvars.iv477, 1 ; 2 uses
  %exitcond482.not = icmp eq i64 %indvars.iv.next478, %i.ez
  br i1 %exitcond482.not, label %.lr.ph.i221.preheader, label %.lr.ph416, !llvm.loop !659

bb.bb:                                            ; preds = %.noexc230
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.te = load i64, ptr %i.pe, align 8, !tbaa !128
  %i.tf = load i64, ptr %i.pf, align 8, !tbaa !128 ; 2 uses
  %i.tg = trunc i64 %i.tf to i32
  %i.th = trunc i64 %i.te to i32
  %i.ti = add i32 %.0131419, %i.th
  %i.tj = invoke noundef double @_ZN5draco27ComputeBinaryShannonEntropyEjj(i32 noundef %i.tg, i32 noundef %i.ti)
          to label %bb.bc unwind label %.loopexit369

bb.bc:                                            ; preds = %bb.bb
  %i.tk = add nsw i64 %i.sm, %i.sl
  %.sroa.0.0.extract.trunc = trunc i64 %i.tk to i32
  %i.tl = sitofp i64 %i.tf to double
  %i.tm = fmul double %i.tj, %i.tl
  %i.tn = call double @llvm.ceil.f64(double %i.tm)
  %i.to = fptosi double %i.tn to i64
  %i.tp = trunc i64 %i.to to i32
  %i.tq = add i32 %i.tp, %.sroa.0.0.extract.trunc ; 3 uses
  %i.tr = load i32, ptr %9, align 8, !tbaa !679   ; 2 uses
  %i.ts = icmp slt i32 %i.tq, %i.tr
  br i1 %i.ts, label %_ZNK5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE5ErrorltERKS7_.exit.thread, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.tt = icmp sle i32 %i.tq, %i.tr
  %i.tu = load i32, ptr %i.ec, align 4
  %i.tv = icmp slt i32 %.sroa.3.0.lcssa.i218, %i.tu
  %or.cond361 = select i1 %i.tt, i1 %i.tv, i1 false
  br i1 %or.cond361, label %_ZNK5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE5ErrorltERKS7_.exit.thread, label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit238

_ZNK5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE5ErrorltERKS7_.exit.thread: ; preds = %bb.bd, %bb.bc
  %.sroa.13.0.insert.ext314 = zext nneg i32 %.sroa.3.0.lcssa.i218 to i64
  %.sroa.13.0.insert.shift315 = shl nuw nsw i64 %.sroa.13.0.insert.ext314, 32
  %.sroa.0.0.insert.ext308 = zext i32 %i.tq to i64
  %.sroa.0.0.insert.insert310 = or disjoint i64 %.sroa.13.0.insert.shift315, %.sroa.0.0.insert.ext308
  store i64 %.sroa.0.0.insert.insert310, ptr %9, align 8, !tbaa !96
  store i8 %.1128, ptr %i.dz, align 8, !tbaa !675
  store i32 %.0131419, ptr %i.dx, align 4, !tbaa !676
  %i.tw = load ptr, ptr %i.eg, align 8, !tbaa !102
  %i.tx = load ptr, ptr %i.ea, align 8, !tbaa !101 ; 8 uses
  %i.ty = ptrtoint ptr %i.tw to i64
  %i.tz = ptrtoint ptr %i.tx to i64               ; 2 uses
  %i.ua = sub i64 %i.ty, %i.tz                    ; 2 uses
  %i.ub = icmp ugt i64 %i.ef, %i.ua
  br i1 %i.ub, label %bb.be, label %bb.bj

bb.be:                                            ; preds = %_ZNK5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE5ErrorltERKS7_.exit.thread
  br i1 %i.ek, label %.invoke, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i

.invoke:                                          ; preds = %bb.bu, %bb.be
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #20
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i: ; preds = %bb.be
  %i.uc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ef) #18
          to label %.noexc285 unwind label %.loopexit369 ; 4 uses

.noexc285:                                        ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i
  br i1 %i.ei, label %bb.bf, label %bb.bg, !prof !140

bb.bf:                                            ; preds = %.noexc285
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.uc, ptr align 4 %.sroa.0344.0, i64 %i.ef, i1 false)
  br label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPiS1_EEEES5_mT_S7_.exit.i

bb.bg:                                            ; preds = %.noexc285
  br i1 %i.ej, label %bb.bh, label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPiS1_EEEES5_mT_S7_.exit.i

bb.bh:                                            ; preds = %bb.bg
  %i.ud = load i32, ptr %.sroa.0344.0, align 4, !tbaa !96
  store i32 %i.ud, ptr %i.uc, align 4, !tbaa !96
  br label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPiS1_EEEES5_mT_S7_.exit.i

_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPiS1_EEEES5_mT_S7_.exit.i: ; preds = %bb.bh, %bb.bg, %bb.bf
  %.not.i.i283 = icmp eq ptr %i.tx, null
  br i1 %.not.i.i283, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPiS1_EEEES5_mT_S7_.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.tx, i64 noundef %i.ua) #19
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i: ; preds = %bb.bi, %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPiS1_EEEES5_mT_S7_.exit.i
  store ptr %i.uc, ptr %i.ea, align 8, !tbaa !101
  %i.ue = getelementptr inbounds nuw i8, ptr %i.uc, i64 %i.ef ; 2 uses
  store ptr %i.ue, ptr %i.eh, align 8, !tbaa !149
  store ptr %i.ue, ptr %i.eg, align 8, !tbaa !102
  br label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit236

bb.bj:                                            ; preds = %_ZNK5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE5ErrorltERKS7_.exit.thread
  %i.uf = load ptr, ptr %i.eh, align 8, !tbaa !149 ; 5 uses
  %i.ug = ptrtoint ptr %i.uf to i64
  %i.uh = sub i64 %i.ug, %i.tz                    ; 5 uses
  %.not.i281 = icmp ult i64 %i.uh, %i.ef
  br i1 %.not.i281, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  br i1 %i.ei, label %bb.bl, label %bb.bm, !prof !140

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.tx, ptr align 4 %.sroa.0344.0, i64 %i.ef, i1 false)
  %.pre.i = load ptr, ptr %i.eh, align 8, !tbaa !149
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

bb.bm:                                            ; preds = %bb.bk
  br i1 %i.ej, label %bb.bn, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

bb.bn:                                            ; preds = %bb.bm
  %i.ui = load i32, ptr %.sroa.0344.0, align 4, !tbaa !96
  store i32 %i.ui, ptr %i.tx, align 4, !tbaa !96
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i: ; preds = %bb.bn, %bb.bm, %bb.bl
  %i.uj = phi ptr [ %.pre.i, %bb.bl ], [ %i.uf, %bb.bm ], [ %i.uf, %bb.bn ]
  %i.uk = getelementptr inbounds i8, ptr %i.tx, i64 %i.ef ; 2 uses
  %.not.i18.i = icmp eq ptr %i.uj, %i.uk
  br i1 %.not.i18.i, label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit236, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i282

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i282:     ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i
  store ptr %i.uk, ptr %i.eh, align 8, !tbaa !149
  br label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit236

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %bb.bj
  %.sink.i.i = getelementptr inbounds i8, ptr %.sroa.0344.0, i64 %i.uh ; 3 uses
  %i.ul = ptrtoint ptr %.sink.i.i to i64
  %i.um = icmp sgt i64 %i.uh, 4
  br i1 %i.um, label %bb.bo, label %bb.bp, !prof !140

bb.bo:                                            ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.tx, ptr align 4 %.sroa.0344.0, i64 %i.uh, i1 false)
  %.pre24.i = load ptr, ptr %i.eh, align 8, !tbaa !149
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit19.i

bb.bp:                                            ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.un = icmp eq i64 %i.uh, 4
  br i1 %i.un, label %bb.bq, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit19.i

bb.bq:                                            ; preds = %bb.bp
  %i.uo = load i32, ptr %.sroa.0344.0, align 4, !tbaa !96
  store i32 %i.uo, ptr %i.tx, align 4, !tbaa !96
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit19.i

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit19.i: ; preds = %bb.bq, %bb.bp, %bb.bo
  %i.up = phi ptr [ %.pre24.i, %bb.bo ], [ %i.uf, %bb.bp ], [ %i.uf, %bb.bq ] ; 3 uses
  %i.uq = sub i64 %i.ed, %i.ul                    ; 4 uses
  %i.ur = icmp sgt i64 %i.uq, 4
  br i1 %i.ur, label %bb.br, label %bb.bs, !prof !140

bb.br:                                            ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit19.i
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.up, ptr align 4 %.sink.i.i, i64 %i.uq, i1 false)
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit.i

bb.bs:                                            ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit19.i
  %i.us = icmp eq i64 %i.uq, 4
  br i1 %i.us, label %bb.bt, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit.i

bb.bt:                                            ; preds = %bb.bs
  %i.ut = load i32, ptr %.sink.i.i, align 4, !tbaa !96
  store i32 %i.ut, ptr %i.up, align 4, !tbaa !96
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit.i

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit.i: ; preds = %bb.bt, %bb.bs, %bb.br
  %i.uu = getelementptr inbounds i8, ptr %i.up, i64 %i.uq
  store ptr %i.uu, ptr %i.eh, align 8, !tbaa !149
  br label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit236

_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit236: ; preds = %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i282, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit.i
  %i.uv = load ptr, ptr %i.eo, align 8, !tbaa !102
  %i.uw = load ptr, ptr %i.eb, align 8, !tbaa !101 ; 8 uses
  %i.ux = ptrtoint ptr %i.uv to i64
  %i.uy = ptrtoint ptr %i.uw to i64               ; 2 uses
  %i.uz = sub i64 %i.ux, %i.uy                    ; 2 uses
  %i.va = icmp ugt i64 %i.en, %i.uz
  br i1 %i.va, label %bb.bu, label %bb.bz

bb.bu:                                            ; preds = %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit236
  br i1 %i.es, label %.invoke, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i296

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i296: ; preds = %bb.bu
  %i.vb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.en) #18
          to label %.noexc301 unwind label %.loopexit369 ; 4 uses

.noexc301:                                        ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i296
  br i1 %i.eq, label %bb.bv, label %bb.bw, !prof !140

bb.bv:                                            ; preds = %.noexc301
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.vb, ptr align 4 %.sroa.0335.0, i64 %i.en, i1 false)
  br label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPiS1_EEEES5_mT_S7_.exit.i297

bb.bw:                                            ; preds = %.noexc301
  br i1 %i.er, label %bb.bx, label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPiS1_EEEES5_mT_S7_.exit.i297

bb.bx:                                            ; preds = %bb.bw
  %i.vc = load i32, ptr %.sroa.0335.0, align 4, !tbaa !96
  store i32 %i.vc, ptr %i.vb, align 4, !tbaa !96
  br label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPiS1_EEEES5_mT_S7_.exit.i297

_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPiS1_EEEES5_mT_S7_.exit.i297: ; preds = %bb.bx, %bb.bw, %bb.bv
  %.not.i.i298 = icmp eq ptr %i.uw, null
  br i1 %.not.i.i298, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i299, label %bb.by

bb.by:                                            ; preds = %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPiS1_EEEES5_mT_S7_.exit.i297
  call void @_ZdlPvm(ptr noundef nonnull %i.uw, i64 noundef %i.uz) #19
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i299

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i299: ; preds = %bb.by, %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPiS1_EEEES5_mT_S7_.exit.i297
  store ptr %i.vb, ptr %i.eb, align 8, !tbaa !101
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vb, i64 %i.en ; 2 uses
  store ptr %i.vd, ptr %i.ep, align 8, !tbaa !149
  store ptr %i.vd, ptr %i.eo, align 8, !tbaa !102
  br label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit238

bb.bz:                                            ; preds = %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit236
  %i.ve = load ptr, ptr %i.ep, align 8, !tbaa !149 ; 5 uses
  %i.vf = ptrtoint ptr %i.ve to i64
  %i.vg = sub i64 %i.vf, %i.uy                    ; 5 uses
  %.not.i286 = icmp ult i64 %i.vg, %i.en
  br i1 %.not.i286, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i291, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  br i1 %i.eq, label %bb.cb, label %bb.cc, !prof !140

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.uw, ptr align 4 %.sroa.0335.0, i64 %i.en, i1 false)
  %.pre.i290 = load ptr, ptr %i.ep, align 8, !tbaa !149
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i287

bb.cc:                                            ; preds = %bb.ca
  br i1 %i.er, label %bb.cd, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i287

bb.cd:                                            ; preds = %bb.cc
  %i.vh = load i32, ptr %.sroa.0335.0, align 4, !tbaa !96
  store i32 %i.vh, ptr %i.uw, align 4, !tbaa !96
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i287

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i287: ; preds = %bb.cd, %bb.cc, %bb.cb
  %i.vi = phi ptr [ %.pre.i290, %bb.cb ], [ %i.ve, %bb.cc ], [ %i.ve, %bb.cd ]
  %i.vj = getelementptr inbounds i8, ptr %i.uw, i64 %i.en ; 2 uses
  %.not.i18.i288 = icmp eq ptr %i.vi, %i.vj
  br i1 %.not.i18.i288, label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit238, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i289

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i289:     ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i287
  store ptr %i.vj, ptr %i.ep, align 8, !tbaa !149
  br label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit238

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i291: ; preds = %bb.bz
  %.sink.i.i292 = getelementptr inbounds i8, ptr %.sroa.0335.0, i64 %i.vg ; 3 uses
  %i.vk = ptrtoint ptr %.sink.i.i292 to i64
  %i.vl = icmp sgt i64 %i.vg, 4
  br i1 %i.vl, label %bb.ce, label %bb.cf, !prof !140

bb.ce:                                            ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i291
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.uw, ptr align 4 %.sroa.0335.0, i64 %i.vg, i1 false)
  %.pre24.i295 = load ptr, ptr %i.ep, align 8, !tbaa !149
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit19.i293

bb.cf:                                            ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i291
  %i.vm = icmp eq i64 %i.vg, 4
  br i1 %i.vm, label %bb.cg, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit19.i293

bb.cg:                                            ; preds = %bb.cf
  %i.vn = load i32, ptr %.sroa.0335.0, align 4, !tbaa !96
  store i32 %i.vn, ptr %i.uw, align 4, !tbaa !96
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit19.i293

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit19.i293: ; preds = %bb.cg, %bb.cf, %bb.ce
  %i.vo = phi ptr [ %.pre24.i295, %bb.ce ], [ %i.ve, %bb.cf ], [ %i.ve, %bb.cg ] ; 3 uses
  %i.vp = sub i64 %i.el, %i.vk                    ; 4 uses
  %i.vq = icmp sgt i64 %i.vp, 4
  br i1 %i.vq, label %bb.ch, label %bb.ci, !prof !140

bb.ch:                                            ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit19.i293
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.vo, ptr align 4 %.sink.i.i292, i64 %i.vp, i1 false)
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit.i294

bb.ci:                                            ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit19.i293
  %i.vr = icmp eq i64 %i.vp, 4
  br i1 %i.vr, label %bb.cj, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit.i294

bb.cj:                                            ; preds = %bb.ci
  %i.vs = load i32, ptr %.sink.i.i292, align 4, !tbaa !96
  store i32 %i.vs, ptr %i.vo, align 4, !tbaa !96
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit.i294

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit.i294: ; preds = %bb.cj, %bb.ci, %bb.ch
  %i.vt = getelementptr inbounds i8, ptr %i.vo, i64 %i.vp
  store ptr %i.vt, ptr %i.ep, align 8, !tbaa !149
  br label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit238

bb.ck:                                            ; preds = %.noexc230, %.noexc229, %._crit_edge.i217
  %i.vu = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

.loopexit369:                                     ; preds = %bb.bb, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i296
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit238: ; preds = %bb.bd, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i299, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i287, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i289, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit.i294
  br i1 %or.cond.i.i239, label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit, label %bb.cl

bb.cl:                                            ; preds = %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit238
  %.pre.i.i = load i8, ptr %.ptr35.i.i, align 1, !tbaa !239, !range !61
  br label %_ZSt9__reverseIPbEvT_S1_St26random_access_iterator_tag.exit.i.i

_ZSt9__reverseIPbEvT_S1_St26random_access_iterator_tag.exit.i.i: ; preds = %bb.cn, %bb.cl
  %i.vv = phi i8 [ %.pre.i.i, %bb.cl ], [ %i.vw, %bb.cn ]
  %.021.idx.i.i = phi i64 [ -1, %bb.cl ], [ %.021.add.i.i, %bb.cn ] ; 3 uses
  %.021.add.i.i = add nsw i64 %.021.idx.i.i, -1   ; 4 uses
  %.ptr.i.i = getelementptr inbounds i8, ptr %i.pb, i64 %.021.add.i.i
  %i.vw = load i8, ptr %.ptr.i.i, align 1, !tbaa !239, !range !61, !noundef !62 ; 2 uses
  %i.vx = icmp samesign ult i8 %i.vw, %i.vv
  br i1 %i.vx, label %.preheader.i.i.preheader, label %bb.cn

.preheader.i.i.preheader:                         ; preds = %_ZSt9__reverseIPbEvT_S1_St26random_access_iterator_tag.exit.i.i
  %.ptr.i.i.le = getelementptr inbounds i8, ptr %i.pb, i64 %.021.add.i.i
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.0.i.i240 = phi ptr [ %i.vy, %.preheader.i.i ], [ %i.pb, %.preheader.i.i.preheader ]
  %i.vy = getelementptr inbounds i8, ptr %.0.i.i240, i64 -1 ; 3 uses
  %i.vz = load i8, ptr %i.vy, align 1, !tbaa !239, !range !61, !noundef !62
  %.not54.i.i = icmp eq i8 %i.vz, 0
  br i1 %.not54.i.i, label %.preheader.i.i, label %bb.cm, !llvm.loop !4

bb.cm:                                            ; preds = %.preheader.i.i
  store i8 1, ptr %.ptr.i.i.le, align 1, !tbaa !239
  store i8 0, ptr %i.vy, align 1, !tbaa !239
  %.not.i.i241 = icmp eq i64 %.021.idx.i.i, -1
  br i1 %.not.i.i241, label %_ZSt16next_permutationIPbEbT_S1_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.cm
  %.021.ptr.le.i.i = getelementptr inbounds i8, ptr %i.pb, i64 %.021.idx.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.preheader.i
  %.014.i.i.i = phi ptr [ %.0.i.i.i, %.lr.ph.i.i.i ], [ %.ptr35.i.i, %.lr.ph.i.i.preheader.i ] ; 3 uses
  %.0913.i.i.i = phi ptr [ %i.wc, %.lr.ph.i.i.i ], [ %.021.ptr.le.i.i, %.lr.ph.i.i.preheader.i ] ; 3 uses
  %i.wa = load i8, ptr %.0913.i.i.i, align 1, !tbaa !239, !range !61, !noundef !62
  %i.wb = load i8, ptr %.014.i.i.i, align 1, !tbaa !239, !range !61, !noundef !62
  store i8 %i.wb, ptr %.0913.i.i.i, align 1, !tbaa !239
  store i8 %i.wa, ptr %.014.i.i.i, align 1, !tbaa !239
  %i.wc = getelementptr inbounds nuw i8, ptr %.0913.i.i.i, i64 1 ; 2 uses
  %.0.i.i.i = getelementptr inbounds i8, ptr %.014.i.i.i, i64 -1 ; 2 uses
  %i.wd = icmp ult ptr %i.wc, %.0.i.i.i
  br i1 %i.wd, label %.lr.ph.i.i.i, label %_ZSt16next_permutationIPbEbT_S1_.exit, !llvm.loop !5

bb.cn:                                            ; preds = %_ZSt9__reverseIPbEvT_S1_St26random_access_iterator_tag.exit.i.i
  %i.we = icmp eq i64 %.021.add.i.i, %i.pg
  br i1 %i.we, label %.lr.ph.i28.i.i, label %_ZSt9__reverseIPbEvT_S1_St26random_access_iterator_tag.exit.i.i, !llvm.loop !6

.lr.ph.i28.i.i:                                   ; preds = %bb.cn, %.lr.ph.i28.i.i
  %.014.i29.i.i = phi ptr [ %.0.i31.i.i, %.lr.ph.i28.i.i ], [ %.ptr35.i.i, %bb.cn ] ; 3 uses
  %.0913.i30.i.i = phi ptr [ %i.wh, %.lr.ph.i28.i.i ], [ %i.b, %bb.cn ] ; 3 uses
  %i.wf = load i8, ptr %.0913.i30.i.i, align 1, !tbaa !239, !range !61, !noundef !62
  %i.wg = load i8, ptr %.014.i29.i.i, align 1, !tbaa !239, !range !61, !noundef !62
  store i8 %i.wg, ptr %.0913.i30.i.i, align 1, !tbaa !239
  store i8 %i.wf, ptr %.014.i29.i.i, align 1, !tbaa !239
  %i.wh = getelementptr inbounds nuw i8, ptr %.0913.i30.i.i, i64 1 ; 2 uses
  %.0.i31.i.i = getelementptr inbounds i8, ptr %.014.i29.i.i, i64 -1 ; 2 uses
  %i.wi = icmp ult ptr %i.wh, %.0.i31.i.i
  br i1 %i.wi, label %.lr.ph.i28.i.i, label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit, !llvm.loop !5

_ZSt16next_permutationIPbEbT_S1_.exit:            ; preds = %.lr.ph.i.i.i, %bb.cm
  br label %.preheader368, !llvm.loop !660

_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit: ; preds = %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit238, %.lr.ph.i28.i.i
  %i.wj = add nuw nsw i32 %.0131419, 1
  %exitcond484.not = icmp eq i64 %i.pi, %i.pa
  br i1 %exitcond484.not, label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit._crit_edge, label %.lr.ph.preheader.i.i.i, !llvm.loop !661

bb.co:                                            ; preds = %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit._crit_edge
  %i.wk = load i32, ptr %i.dx, align 4, !tbaa !676
  %i.wl = sext i32 %i.wk to i64
  %i.wm = zext nneg i32 %.2148 to i64
  %i.wn = getelementptr [8 x i8], ptr %i.c, i64 %i.wm
  %i.wo = getelementptr i8, ptr %i.wn, i64 -8     ; 2 uses
  %i.wp = load i64, ptr %i.wo, align 8, !tbaa !128
end_hunk_3
