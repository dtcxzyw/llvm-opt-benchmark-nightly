Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/draco/original/sequential_integer_attribute_encoder?download=true
inline.NumInlined: 2377
inline.NumDeleted: 912
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_ZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEE:bb.a

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc169
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.bd, 2  ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.bc, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !96
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

bb.j:                                             ; preds = %_ZN5draco37PredictionSchemeWrapEncodingTransformIiiE4InitEPKiii.exit
  invoke void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %i.g)
          to label %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge511 unwind label %.loopexit.split-lp385.loopexit.split-lp

._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge511: ; preds = %bb.j
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %8, i64 24
  %.phi.trans.insert512 = getelementptr inbounds nuw i8, ptr %8, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert512, align 16, !tbaa !149
  %.pre514 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !101
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %_ZN5draco37PredictionSchemeWrapEncodingTransformIiiE4InitEPKiii.exit, %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge511
  %i.bg = phi ptr [ %.pre514, %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge511 ], [ null, %_ZN5draco37PredictionSchemeWrapEncodingTransformIiiE4InitEPKiii.exit ] ; 2 uses
  %i.bh = phi ptr [ %.pre, %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge511 ], [ null, %_ZN5draco37PredictionSchemeWrapEncodingTransformIiiE4InitEPKiii.exit ] ; 2 uses
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
  %wide.trip.count.i189 = zext nneg i32 %4 to i64 ; 11 uses
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
  %11 = call i32 @llvm.umax.i32(i32 %4, i32 1)
  %12 = zext nneg i32 %11 to i64                  ; 15 uses
  %i.ey = shl nuw nsw i64 %12, 2
  %i.ez = and i64 %i.ds, 2147483647               ; 4 uses
  %i.fa = add nsw i64 %i.ez, -1
  %i.fb = mul nsw i64 %i.fa, %i.g                 ; 2 uses
  %i.fc = shl i64 %i.fb, 2
  %i.fd = add i64 %i.fc, %i.a
  %i.fe = sub i64 %i.em, %i.fd
  %i.ff = shl nuw nsw i64 %i.g, 2
  %i.fg = mul i64 %i.fb, -4
  %i.fh = sub i64 %i.fg, %i.a
  %i.fi = shl nuw nsw i64 %12, 2                  ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.0351.0, i64 %i.fi
  %i.fj = add nsw i64 %i.ez, -1                   ; 2 uses
  %i.fk = mul nsw i64 %i.fj, %i.g
  %i.fl = shl i64 %i.fk, 2
  %i.fm = add i64 %i.fl, %i.a
  %i.fn = sub i64 %i.em, %i.fm
  %i.fo = shl nuw nsw i64 %i.g, 2
  %i.fp = add nsw i64 %i.ez, -2                   ; 2 uses
  %i.fq = mul nsw i64 %i.fp, %i.g
  %i.fr = shl i64 %i.fq, 2
  %i.fs = add i64 %i.fr, %i.a
  %i.ft = sub i64 %i.em, %i.fs
  %i.fu = mul nsw i64 %i.fj, %i.g
  %i.fv = mul i64 %i.fu, -4
  %i.fw = sub i64 %i.fv, %i.a
  %i.fx = mul nsw i64 %i.fp, %i.g
  %i.fy = mul i64 %i.fx, -4
  %i.fz = sub i64 %i.fy, %i.a
  %min.iters.check732 = icmp ult i32 %4, 12
  %n.vec734 = and i64 %wide.trip.count.i189, 2147483640 ; 3 uses
  %cmp.n745 = icmp eq i64 %n.vec734, %wide.trip.count.i189
  %xtraiter785.a = and i64 %wide.trip.count.i189, 1
  %lcmp.mod786.not.a = icmp eq i64 %xtraiter785.a, 0
  %i.ga = add nsw i64 %wide.trip.count.i189, -1
  %min.iters.check708 = icmp ult i32 %4, 8
  %invariant.op815.a = add i64 %i.fn, -1
  %invariant.op817.a = add i64 %i.ft, -1
  %n.vec710 = and i64 %wide.trip.count.i189, 2147483640 ; 3 uses
  %cmp.n722 = icmp eq i64 %n.vec710, %wide.trip.count.i189
  %min.iters.check684 = icmp ult i32 %4, 8
  %n.vec686 = and i64 %12, 2147483640             ; 3 uses
  %cmp.n695 = icmp eq i64 %n.vec686, %12
  %xtraiter787 = and i64 %12, 3                   ; 2 uses
  %lcmp.mod788.not = icmp eq i64 %xtraiter787, 0
  %min.iters.check671 = icmp ult i32 %4, 4
  %n.vec673 = and i64 %12, 2147483644             ; 3 uses
  %cmp.n679 = icmp eq i64 %n.vec673, %12
  %min.iters.check656 = icmp ult i32 %4, 8
  %i.gb = sub i64 %i.ee, %i.em
  %diff.check647.a = icmp ugt i64 %i.gb, -32
  %invariant.op819 = add i64 %i.fe, -1
  %invariant.op821 = add i64 %i.fh, -1
  %n.vec658 = and i64 %wide.trip.count.i189, 2147483640 ; 3 uses
  %cmp.n668 = icmp eq i64 %n.vec658, %wide.trip.count.i189
  %min.iters.check = icmp ult i32 %4, 8
  %n.vec = and i64 %12, 2147483640                ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %12
  %xtraiter789 = and i64 %12, 1
  %lcmp.mod790.not = icmp eq i64 %xtraiter789, 0
  %i.gc = add nsw i64 %12, -1
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
  %indvar648 = phi i64 [ 0, %.lr.ph442 ], [ %indvar.next, %_ZZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEEEN23PredictionConfigurationD2Ev.exit ] ; 3 uses
  %indvars.iv504 = phi i64 [ %i.ez, %.lr.ph442 ], [ %indvars.iv.next505, %_ZZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEEEN23PredictionConfigurationD2Ev.exit ] ; 3 uses
  %i.gi = mul i64 %i.fo, %indvar648               ; 4 uses
  %i.gj = add i64 %i.fw, %i.gi
  %i.gk = add i64 %i.fz, %i.gi
  %i.gl = mul i64 %i.ff, %indvar648               ; 2 uses
  %indvars.iv.next505 = add nsw i64 %indvars.iv504, -1 ; 8 uses
  %i.gm = load ptr, ptr %i.dk, align 8, !tbaa !159 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !209
  %i.gp = load ptr, ptr %i.gm, align 8, !tbaa !210 ; 2 uses
  %i.gq = ptrtoint ptr %i.go to i64
  %i.gr = ptrtoint ptr %i.gp to i64
  %i.gs = sub i64 %i.gq, %i.gr
  %i.gt = ashr exact i64 %i.gs, 2                 ; 2 uses
  %.not.i.i183 = icmp ugt i64 %i.gt, %indvars.iv.next505
  br i1 %.not.i.i183, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.6, i64 noundef %indvars.iv.next505, i64 noundef %i.gt) #20
          to label %.noexc184 unwind label %bb.ae

.noexc184:                                        ; preds = %bb.aa
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %indvars.iv.next505
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !212 ; 6 uses
  %.not369408 = icmp eq i32 %i.gv, -1
  br i1 %.not369408, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ab
  %i.gw = load ptr, ptr %i.aw, align 8, !tbaa !174, !noalias !435
  %i.gx = urem i32 %i.gv, 3
  %.not.i.i.i202 = icmp ne i32 %i.gx, 0           ; 2 uses
  %i.gy = add i32 %i.gv, -1
  %i.gz = add i32 %i.gv, 2                        ; 2 uses
  %i.ha = icmp ne i32 %i.gz, -1
  %brmerge = or i1 %.not.i.i.i202, %i.ha
  %.mux = select i1 %.not.i.i.i202, i32 %i.gy, i32 %i.gz ; 3 uses
  %i.hb = lshr i32 %.mux, 6
  %.zext.i.i.i205 = zext nneg i32 %i.hb to i64
  %i.hc = and i32 %.mux, 63
  %i.hd = zext nneg i32 %i.hc to i64
  %i.he = shl nuw i64 1, %i.hd
  %i.hf = zext i32 %.mux to i64
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph, %_ZNK5draco24MeshAttributeCornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit211
  %.0144411 = phi i1 [ true, %.lr.ph ], [ %.1145, %_ZNK5draco24MeshAttributeCornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit211 ] ; 3 uses
  %.0146410 = phi i32 [ 0, %.lr.ph ], [ %.1147, %_ZNK5draco24MeshAttributeCornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit211 ] ; 5 uses
  %.sroa.0332.0409 = phi i32 [ %i.gv, %.lr.ph ], [ %.sroa.0332.2, %_ZNK5draco24MeshAttributeCornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit211 ] ; 8 uses
  %i.hg = sext i32 %.0146410 to i64
  %i.hh = getelementptr inbounds [24 x i8], ptr %8, i64 %i.hg
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !101 ; 5 uses
  %i.hj = ptrtoaddr ptr %i.hi to i64              ; 2 uses
  %i.hk = lshr i32 %.sroa.0332.0409, 6
  %.zext.i.i.i = zext nneg i32 %i.hk to i64
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %.zext.i.i.i
  %i.hm = and i32 %.sroa.0332.0409, 63
  %i.hn = zext nneg i32 %i.hm to i64
  %i.ho = shl nuw i64 1, %i.hn
  %i.hp = load i64, ptr %i.hl, align 8, !tbaa !128, !noalias !435
  %i.hq = and i64 %i.hp, %i.ho
  %.not.i.i185 = icmp eq i64 %i.hq, 0
  br i1 %.not.i.i185, label %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, label %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit.thread

_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i: ; preds = %bb.ac
  %i.hr = load ptr, ptr %i.dv, align 8, !tbaa !232, !noalias !435
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 24
  %i.ht = zext i32 %.sroa.0332.0409 to i64
  %i.hu = load ptr, ptr %i.hs, align 8, !tbaa !210, !noalias !436
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.hu, i64 %i.ht
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !212, !noalias !436 ; 5 uses
  %i.hx = icmp eq i32 %i.hw, -1
  br i1 %i.hx, label %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit.thread, label %_ZN5draco23GetParallelogramEntriesINS_24MeshAttributeCornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i

_ZN5draco23GetParallelogramEntriesINS_24MeshAttributeCornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i: ; preds = %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i
  %i.hy = zext i32 %i.hw to i64
  %i.hz = load ptr, ptr %i.dw, align 8, !tbaa !233, !noalias !437 ; 3 uses
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %i.hy
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !235, !noalias !437
  %i.ic = zext i32 %i.ib to i64
  %i.id = load ptr, ptr %i.ay, align 8, !tbaa !101 ; 3 uses
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %i.ic
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !96 ; 2 uses
  %i.ig = insertelement <2 x i32> poison, i32 %i.hw, i64 0
  %i.ih = shufflevector <2 x i32> %i.ig, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ii = add nuw <2 x i32> %i.ih, <i32 0, i32 1>
  %i.ij = urem <2 x i32> %i.ii, splat (i32 3)
  %i.ik = icmp eq <2 x i32> %i.ij, zeroinitializer ; 2 uses
  %i.il = extractelement <2 x i1> %i.ik, i64 1
  %spec.select.i.i.i.i.v = select i1 %i.il, i32 -2, i32 1
  %spec.select.i.i.i.i = add i32 %i.hw, %spec.select.i.i.i.i.v
  %i.im = zext i32 %spec.select.i.i.i.i to i64
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %i.im
  %i.io = load i32, ptr %i.in, align 4, !tbaa !235, !noalias !438
  %i.ip = zext i32 %i.io to i64
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %i.ip
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !96 ; 2 uses
  %i.is = extractelement <2 x i1> %i.ik, i64 0
  %.sink.i.i12.i.v.i = select i1 %i.is, i32 2, i32 -1
  %.sink.i.i12.i.i = add i32 %.sink.i.i12.i.v.i, %i.hw
  %i.it = zext i32 %.sink.i.i12.i.i to i64
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %i.it
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !235, !noalias !439
  %i.iw = zext i32 %i.iv to i64
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %i.iw
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !96 ; 2 uses
  %i.iz = sext i32 %i.if to i64
  %i.ja = icmp sgt i64 %indvars.iv.next505, %i.iz
  %i.jb = sext i32 %i.ir to i64
  %i.jc = icmp sgt i64 %indvars.iv.next505, %i.jb
  %or.cond.i = select i1 %i.ja, i1 %i.jc, i1 false
  %i.jd = sext i32 %i.iy to i64
  %i.je = icmp sgt i64 %indvars.iv.next505, %i.jd
  %or.cond40.i = select i1 %or.cond.i, i1 %i.je, i1 false
  br i1 %or.cond40.i, label %bb.ad, label %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit.thread

bb.ad:                                            ; preds = %_ZN5draco23GetParallelogramEntriesINS_24MeshAttributeCornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i
  br i1 %.not.i.i.i.i168, label %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit, label %.lr.ph.preheader.i188

.lr.ph.preheader.i188:                            ; preds = %bb.ad
  %i.jf = mul nsw i32 %i.iy, %4
  %i.jg = mul nsw i32 %i.ir, %4
  %i.jh = mul nsw i32 %i.if, %4
  %i.ji = sext i32 %i.jg to i64                   ; 2 uses
  %i.jj = sext i32 %i.jf to i64                   ; 2 uses
  %i.jk = sext i32 %i.jh to i64                   ; 2 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %1, i64 %i.ji ; 4 uses
  %invariant.gep48.i = getelementptr [4 x i8], ptr %1, i64 %i.jj ; 4 uses
  %invariant.gep50.i = getelementptr [4 x i8], ptr %1, i64 %i.jk ; 4 uses
  br i1 %min.iters.check732, label %.lr.ph.i190.preheader, label %vector.memcheck725

vector.memcheck725:                               ; preds = %.lr.ph.preheader.i188
  %i.jl = sub i64 %i.hj, %i.a                     ; 2 uses
  %i.jm = shl nsw i64 %i.jk, 2
  %i.jn = sub i64 %i.jm, %i.jl
  %diff.check726 = icmp ugt i64 %i.jn, -32
  %i.jo = shl nsw i64 %i.jj, 2
  %i.jp = sub i64 %i.jo, %i.jl
  %diff.check727 = icmp ugt i64 %i.jp, -32
  %conflict.rdx728 = or i1 %diff.check726, %diff.check727
  %i.jq = shl nsw i64 %i.ji, 2
  %i.jr = add i64 %i.jq, %i.a
  %i.js = sub i64 %i.jr, %i.hj
  %diff.check729 = icmp ugt i64 %i.js, -32
  %conflict.rdx730 = or i1 %conflict.rdx728, %diff.check729
  br i1 %conflict.rdx730, label %.lr.ph.i190.preheader, label %vector.body735

vector.body735:                                   ; preds = %vector.memcheck725, %vector.body735
  %index736 = phi i64 [ %index.next743, %vector.body735 ], [ 0, %vector.memcheck725 ] ; 5 uses
  %i.jt = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %index736 ; 2 uses
  %i.ju = getelementptr i8, ptr %i.jt, i64 16
  %wide.load737.a = load <4 x i32>, ptr %i.jt, align 4, !tbaa !96
  %wide.load738.a = load <4 x i32>, ptr %i.ju, align 4, !tbaa !96
  %i.jv = getelementptr [4 x i8], ptr %invariant.gep48.i, i64 %index736 ; 2 uses
  %i.jw = getelementptr i8, ptr %i.jv, i64 16
  %wide.load739 = load <4 x i32>, ptr %i.jv, align 4, !tbaa !96
  %wide.load740 = load <4 x i32>, ptr %i.jw, align 4, !tbaa !96
  %i.jx = getelementptr [4 x i8], ptr %invariant.gep50.i, i64 %index736 ; 2 uses
  %i.jy = getelementptr i8, ptr %i.jx, i64 16
  %wide.load741 = load <4 x i32>, ptr %i.jx, align 4, !tbaa !96
  %wide.load742 = load <4 x i32>, ptr %i.jy, align 4, !tbaa !96
  %i.jz = add <4 x i32> %wide.load739, %wide.load737.a
  %i.ka = add <4 x i32> %wide.load740, %wide.load738.a
  %i.kb = sub <4 x i32> %i.jz, %wide.load741
  %i.kc = sub <4 x i32> %i.ka, %wide.load742
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %index736 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 16
  store <4 x i32> %i.kb, ptr %i.kd, align 4, !tbaa !96
  store <4 x i32> %i.kc, ptr %i.ke, align 4, !tbaa !96
end_hunk_0
begin_hunk_1_@_ZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEE:bb.a

vector.memcheck697:                               ; preds = %.lr.ph.i213.preheader
  %i.nq = sub i64 %i.em, %i.np
  %diff.check698 = icmp ugt i64 %i.nq, -32
  %.reass816.a = add i64 %i.gi, %invariant.op815.a
  %diff.check699.a = icmp ult i64 %.reass816.a, 31
  %conflict.rdx700.a = or i1 %diff.check698, %diff.check699.a
  %.reass818 = add i64 %i.gi, %invariant.op817.a
  %diff.check701.a = icmp ult i64 %.reass818, 31
  %conflict.rdx702.a = or i1 %conflict.rdx700.a, %diff.check701.a
  %i.nr = add i64 %i.gj, %i.np
  %i.ns = add i64 %i.nr, -1
  %diff.check703 = icmp ult i64 %i.ns, 31
  %conflict.rdx704 = or i1 %conflict.rdx702.a, %diff.check703
  %i.nt = add i64 %i.gk, %i.np
  %i.nu = add i64 %i.nt, -1
  %diff.check705 = icmp ult i64 %i.nu, 31
  %conflict.rdx706 = or i1 %conflict.rdx704, %diff.check705
  br i1 %conflict.rdx706, label %.lr.ph.i213.preheader756, label %vector.body711

vector.body711:                                   ; preds = %vector.memcheck697, %vector.body711
  %index712 = phi i64 [ %index.next719, %vector.body711 ], [ 0, %vector.memcheck697 ] ; 5 uses
  %vec.phi713 = phi <4 x i32> [ %i.od, %vector.body711 ], [ zeroinitializer, %vector.memcheck697 ]
  %vec.phi714 = phi <4 x i32> [ %i.oe, %vector.body711 ], [ zeroinitializer, %vector.memcheck697 ]
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.nm, i64 %index712 ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 16
  %wide.load715 = load <4 x i32>, ptr %i.nv, align 4, !tbaa !96
  %wide.load716 = load <4 x i32>, ptr %i.nw, align 4, !tbaa !96
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.nn, i64 %index712 ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 16
  %wide.load717 = load <4 x i32>, ptr %i.nx, align 4, !tbaa !96
  %wide.load718 = load <4 x i32>, ptr %i.ny, align 4, !tbaa !96
  %i.nz = sub nsw <4 x i32> %wide.load715, %wide.load717 ; 5 uses
  %i.oa = sub nsw <4 x i32> %wide.load716, %wide.load718 ; 5 uses
  %i.ob = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.nz, i1 true)
  %i.oc = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.oa, i1 true)
  %i.od = add <4 x i32> %i.ob, %vec.phi713        ; 2 uses
  %i.oe = add <4 x i32> %i.oc, %vec.phi714        ; 2 uses
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0342.0, i64 %index712 ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 16
  store <4 x i32> %i.nz, ptr %i.of, align 4, !tbaa !96
  store <4 x i32> %i.oa, ptr %i.og, align 4, !tbaa !96
  %i.oh = shl nuw <4 x i32> %i.nz, splat (i32 1)
  %i.oi = shl nuw <4 x i32> %i.oa, splat (i32 1)
  %i.oj = xor <4 x i32> %i.nz, splat (i32 -1)
  %i.ok = xor <4 x i32> %i.oa, splat (i32 -1)
  %i.ol = shl nuw <4 x i32> %i.oj, splat (i32 1)
  %i.om = shl nuw <4 x i32> %i.ok, splat (i32 1)
  %i.on = or disjoint <4 x i32> %i.ol, splat (i32 1)
  %i.oo = or disjoint <4 x i32> %i.om, splat (i32 1)
  %i.op = icmp slt <4 x i32> %i.nz, zeroinitializer
  %i.oq = icmp slt <4 x i32> %i.oa, zeroinitializer
  %i.or = select <4 x i1> %i.op, <4 x i32> %i.on, <4 x i32> %i.oh
  %i.os = select <4 x i1> %i.oq, <4 x i32> %i.oo, <4 x i32> %i.oi
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %i.no, i64 %index712 ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 16
  store <4 x i32> %i.or, ptr %i.ot, align 4, !tbaa !96
  store <4 x i32> %i.os, ptr %i.ou, align 4, !tbaa !96
  %index.next719 = add nuw i64 %index712, 8       ; 2 uses
  %i.ov = icmp eq i64 %index.next719, %n.vec710
  br i1 %i.ov, label %middle.block720, label %vector.body711, !llvm.loop !416

middle.block720:                                  ; preds = %vector.body711
  %bin.rdx721 = add <4 x i32> %i.oe, %i.od
  %i.ow = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx721) ; 2 uses
  br i1 %cmp.n722, label %._crit_edge.loopexit.i, label %.lr.ph.i213.preheader756

.lr.ph.i213.preheader756:                         ; preds = %vector.memcheck697, %.lr.ph.i213.preheader, %middle.block720
  %indvars.iv.i215.ph = phi i64 [ 0, %vector.memcheck697 ], [ 0, %.lr.ph.i213.preheader ], [ %n.vec710, %middle.block720 ]
  %.sroa.3.015.i.ph = phi i32 [ 0, %vector.memcheck697 ], [ 0, %.lr.ph.i213.preheader ], [ %i.ow, %middle.block720 ]
  br label %.lr.ph.i213

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i213, %middle.block720
  %.lcssa = phi i32 [ %i.ow, %middle.block720 ], [ %i.ph, %.lr.ph.i213 ]
  %i.ox = zext nneg i32 %.lcssa to i64
  %i.oy = shl nuw nsw i64 %i.ox, 32
  br label %._crit_edge.i212

._crit_edge.i212:                                 ; preds = %._crit_edge.loopexit.i, %._crit_edge
  %.sroa.3.0.lcssa.i = phi i64 [ %i.oy, %._crit_edge.loopexit.i ], [ 0, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  invoke void @_ZN5draco21ShannonEntropyTracker4PeekEPKji(ptr dead_on_unwind nonnull writable sret(%"struct.draco::ShannonEntropyTracker::EntropyData") align 8 %7, ptr noundef nonnull align 8 dereferenceable(48) %i.dy, ptr noundef %i.no, i32 noundef %4)
          to label %.noexc218 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc218:                                        ; preds = %._crit_edge.i212
  %i.oz = invoke noundef i64 @_ZN5draco21ShannonEntropyTracker19GetNumberOfDataBitsERKNS0_11EntropyDataE(ptr noundef nonnull align 8 dereferenceable(20) %7)
          to label %.noexc219 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc219:                                        ; preds = %.noexc218
  %i.pa = invoke noundef i64 @_ZN5draco21ShannonEntropyTracker24GetNumberOfRAnsTableBitsERKNS0_11EntropyDataE(ptr noundef nonnull align 8 dereferenceable(20) %7)
          to label %bb.ar unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph.i213:                                      ; preds = %.lr.ph.i213.preheader756, %.lr.ph.i213
  %indvars.iv.i215 = phi i64 [ %indvars.iv.next.i216, %.lr.ph.i213 ], [ %indvars.iv.i215.ph, %.lr.ph.i213.preheader756 ] ; 5 uses
  %.sroa.3.015.i = phi i32 [ %i.ph, %.lr.ph.i213 ], [ %.sroa.3.015.i.ph, %.lr.ph.i213.preheader756 ]
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.nm, i64 %indvars.iv.i215
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !96
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %i.nn, i64 %indvars.iv.i215
  %i.pe = load i32, ptr %i.pd, align 4, !tbaa !96
  %i.pf = sub nsw i32 %i.pc, %i.pe                ; 5 uses
  %i.pg = call i32 @llvm.abs.i32(i32 %i.pf, i1 true)
  %i.ph = add nuw nsw i32 %i.pg, %.sroa.3.015.i   ; 2 uses
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0342.0, i64 %indvars.iv.i215
  store i32 %i.pf, ptr %i.pi, align 4, !tbaa !96
  %i.pj = shl nuw i32 %i.pf, 1
  %i.pk = xor i32 %i.pf, -1
  %i.pl = shl nuw i32 %i.pk, 1
  %i.pm = or disjoint i32 %i.pl, 1
  %i.pn = icmp slt i32 %i.pf, 0
  %.0.i.i = select i1 %i.pn, i32 %i.pm, i32 %i.pj
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %i.no, i64 %indvars.iv.i215
  store i32 %.0.i.i, ptr %i.po, align 4, !tbaa !96
  %indvars.iv.next.i216 = add nuw nsw i64 %indvars.iv.i215, 1 ; 2 uses
  %exitcond.not.i217 = icmp eq i64 %indvars.iv.next.i216, %wide.trip.count.i189
  br i1 %exitcond.not.i217, label %._crit_edge.loopexit.i, label %.lr.ph.i213, !llvm.loop !417

bb.ar:                                            ; preds = %.noexc219
  %i.pp = add nsw i64 %i.pa, %i.oz                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %i.pq = icmp sgt i32 %.2148, 0                  ; 3 uses
  br i1 %i.pq, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.pr = zext nneg i32 %.2148 to i64
  %i.ps = add nsw i32 %.2148, -1
  %i.pt = zext nneg i32 %i.ps to i64              ; 2 uses
  %i.pu = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.pt ; 2 uses
  %i.pv = load i64, ptr %i.pu, align 8, !tbaa !128
  %i.pw = add nsw i64 %i.pv, %i.pr                ; 3 uses
  store i64 %i.pw, ptr %i.pu, align 8, !tbaa !128
  %i.px = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.pt
  %i.py = load i64, ptr %i.px, align 8, !tbaa !128
  %i.pz = trunc i64 %i.pw to i32
  %i.qa = trunc i64 %i.py to i32
  %i.qb = invoke noundef double @_ZN5draco27ComputeBinaryShannonEntropyEjj(i32 noundef %i.pz, i32 noundef %i.qa)
          to label %bb.at unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.at:                                            ; preds = %bb.as
  %i.qc = sitofp i64 %i.pw to double
  %i.qd = fmul double %i.qb, %i.qc
  %i.qe = call double @llvm.ceil.f64(double %i.qd)
  %i.qf = fptosi double %i.qe to i64
  %i.qg = add i64 %i.pp, %i.qf
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.ar
  %.sroa.0.0 = phi i64 [ %i.qg, %bb.at ], [ %i.pp, %bb.ar ]
  %.sroa.0.0.insert.ext = and i64 %.sroa.0.0, 4294967295
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0.0.insert.ext, %.sroa.3.0.lcssa.i
  store i64 %.sroa.0.0.insert.insert, ptr %9, align 8, !tbaa !96
  store i8 0, ptr %i.dz, align 8, !tbaa !448
  store i32 0, ptr %i.dx, align 4, !tbaa !449
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.nm, i64 %i.g
  invoke void @_ZNSt6vectorIiSaIiEE13_M_assign_auxIPKiEEvT_S5_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.ea, ptr noundef %i.nm, ptr noundef %i.qh)
          to label %_ZNSt6vectorIiSaIiEE6assignIPKivEEvT_S5_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorIiSaIiEE6assignIPKivEEvT_S5_.exit:    ; preds = %bb.au
  invoke void @_ZNSt6vectorIiSaIiEE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPiS1_EEEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.eb, ptr %.sroa.0342.0, ptr %.0.i.i.i.i.i178)
          to label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit.preheader: ; preds = %_ZNSt6vectorIiSaIiEE6assignIPKivEEvT_S5_.exit
  %.not428 = icmp slt i32 %.2148, 1
  br i1 %.not428, label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit._crit_edge.thread, label %.lr.ph430

.lr.ph430:                                        ; preds = %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit.preheader
  %i.qi = zext nneg i32 %.2148 to i64             ; 5 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.qi ; 5 uses
  %i.qk = add nsw i32 %.2148, -1
  %i.ql = zext nneg i32 %i.qk to i64              ; 2 uses
  %i.qm = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.ql
  %i.qn = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ql
  %or.cond.i.i246 = icmp eq i32 %.2148, 1
  %.ptr35.i.i = getelementptr inbounds i8, ptr %i.qj, i64 -1 ; 3 uses
  %i.qo = sub nsw i64 0, %i.qi
  %.reass820 = add i64 %i.gl, %invariant.op819
  %diff.check649.a = icmp ult i64 %.reass820, 31
  %invariant.op = or i1 %diff.check647.a, %diff.check649.a
  %invariant.op814.reass = add i64 %i.gl, %invariant.op821
  br label %.lr.ph.preheader.i.i.i

_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit._crit_edge: ; preds = %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit
  br i1 %i.pq, label %bb.ci, label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit._crit_edge.thread

.lr.ph.preheader.i.i.i:                           ; preds = %.lr.ph430, %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit
  %indvar = phi i64 [ 0, %.lr.ph430 ], [ %i.qp, %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit ]
  %.0131429 = phi i32 [ 1, %.lr.ph430 ], [ %i.xp, %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit ] ; 5 uses
  %i.qp = add nuw nsw i64 %indvar, 1              ; 3 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.b, i8 1, i64 %i.qi, i1 false), !tbaa !239
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.b, i8 0, i64 %i.qp, i1 false), !tbaa !239
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.0131429, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %.preheader375

.preheader375:                                    ; preds = %.lr.ph.preheader.i.i.i, %_ZSt16next_permutationIPbEbT_S1_.exit
  br i1 %.not.i.i.i.i168, label %.lr.ph423.preheader, label %.lr.ph417.preheader

.lr.ph423.preheader:                              ; preds = %.lr.ph417.preheader, %.preheader375
  br label %.lr.ph423

.lr.ph417.preheader:                              ; preds = %.preheader375
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.sroa.0351.0, i8 0, i64 %i.ey, i1 false), !tbaa !96
  br label %.lr.ph423.preheader

.preheader373:                                    ; preds = %bb.av
  br i1 %.not.i.i.i.i168, label %._crit_edge427.thread, label %.lr.ph426.preheader

.lr.ph426.preheader:                              ; preds = %.preheader373
  br i1 %min.iters.check671, label %.lr.ph426.preheader750, label %vector.body674

vector.body674:                                   ; preds = %.lr.ph426.preheader, %vector.body674
  %index675 = phi i64 [ %index.next677, %vector.body674 ], [ 0, %.lr.ph426.preheader ] ; 2 uses
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0351.0, i64 %index675 ; 2 uses
  %wide.load676 = load <4 x i32>, ptr %i.qq, align 4, !tbaa !96
  %i.qr = sdiv <4 x i32> %wide.load676, %broadcast.splat
  store <4 x i32> %i.qr, ptr %i.qq, align 4, !tbaa !96
  %index.next677 = add nuw i64 %index675, 4       ; 2 uses
  %i.qs = icmp eq i64 %index.next677, %n.vec673
  br i1 %i.qs, label %middle.block678, label %vector.body674, !llvm.loop !418

middle.block678:                                  ; preds = %vector.body674
  br i1 %cmp.n679, label %.lr.ph.i228.preheader, label %.lr.ph426.preheader750

.lr.ph426.preheader750:                           ; preds = %.lr.ph426.preheader, %middle.block678
  %indvars.iv489.ph = phi i64 [ 0, %.lr.ph426.preheader ], [ %n.vec673, %middle.block678 ]
  br label %.lr.ph426

._crit_edge427.thread:                            ; preds = %.preheader373
  %i.qt = load ptr, ptr %i.cr, align 8, !tbaa !236
  br label %._crit_edge.i224

.lr.ph423:                                        ; preds = %.lr.ph423.preheader, %bb.av
  %indvars.iv485 = phi i64 [ %indvars.iv.next486, %bb.av ], [ 0, %.lr.ph423.preheader ] ; 4 uses
  %.0127421 = phi i8 [ %.1128, %bb.av ], [ 0, %.lr.ph423.preheader ] ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv485
  %i.qv = load i8, ptr %i.qu, align 1, !tbaa !239, !range !61, !noundef !62
  %i.qw = trunc nuw i8 %i.qv to i1
  br i1 %i.qw, label %bb.av, label %.preheader372

.preheader372:                                    ; preds = %.lr.ph423
  br i1 %.not.i.i.i.i168, label %._crit_edge420, label %.lr.ph419

.lr.ph419:                                        ; preds = %.preheader372
  %i.qx = getelementptr inbounds nuw [24 x i8], ptr %8, i64 %indvars.iv485
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !101 ; 8 uses
  br i1 %min.iters.check684, label %scalar.ph683.preheader, label %vector.memcheck681

vector.memcheck681:                               ; preds = %.lr.ph419
  %scevgep682 = getelementptr i8, ptr %i.qy, i64 %i.fi
  %bound0 = icmp ult ptr %.sroa.0351.0, %scevgep682
  %bound1 = icmp ult ptr %i.qy, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph683.preheader, label %vector.body687

vector.body687:                                   ; preds = %vector.memcheck681, %vector.body687
  %index688 = phi i64 [ %index.next693, %vector.body687 ], [ 0, %vector.memcheck681 ] ; 3 uses
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %i.qy, i64 %index688 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 16
  %wide.load689 = load <4 x i32>, ptr %i.qz, align 4, !tbaa !96, !alias.scope !450
  %wide.load690 = load <4 x i32>, ptr %i.ra, align 4, !tbaa !96, !alias.scope !450
  %i.rb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0351.0, i64 %index688 ; 3 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 16 ; 2 uses
  %wide.load691 = load <4 x i32>, ptr %i.rb, align 4, !tbaa !96, !alias.scope !451, !noalias !450
  %wide.load692 = load <4 x i32>, ptr %i.rc, align 4, !tbaa !96, !alias.scope !451, !noalias !450
  %i.rd = add nsw <4 x i32> %wide.load691, %wide.load689
  %i.re = add nsw <4 x i32> %wide.load692, %wide.load690
  store <4 x i32> %i.rd, ptr %i.rb, align 4, !tbaa !96, !alias.scope !451, !noalias !450
  store <4 x i32> %i.re, ptr %i.rc, align 4, !tbaa !96, !alias.scope !451, !noalias !450
  %index.next693 = add nuw i64 %index688, 8       ; 2 uses
  %i.rf = icmp eq i64 %index.next693, %n.vec686
  br i1 %i.rf, label %middle.block694, label %vector.body687, !llvm.loop !422

middle.block694:                                  ; preds = %vector.body687
  br i1 %cmp.n695, label %._crit_edge420, label %scalar.ph683.preheader

scalar.ph683.preheader:                           ; preds = %vector.memcheck681, %.lr.ph419, %middle.block694
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck681 ], [ 0, %.lr.ph419 ], [ %n.vec686, %middle.block694 ] ; 3 uses
  br i1 %lcmp.mod788.not, label %scalar.ph683.prol.loopexit, label %scalar.ph683.prol

scalar.ph683.prol:                                ; preds = %scalar.ph683.preheader, %scalar.ph683.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph683.prol ], [ %indvars.iv.ph, %scalar.ph683.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph683.prol ], [ 0, %scalar.ph683.preheader ]
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %i.qy, i64 %indvars.iv.prol
  %i.rh = load i32, ptr %i.rg, align 4, !tbaa !96
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0351.0, i64 %indvars.iv.prol ; 2 uses
  %i.rj = load i32, ptr %i.ri, align 4, !tbaa !96
  %i.rk = add nsw i32 %i.rj, %i.rh
  store i32 %i.rk, ptr %i.ri, align 4, !tbaa !96
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter787
  br i1 %prol.iter.cmp.not, label %scalar.ph683.prol.loopexit, label %scalar.ph683.prol, !llvm.loop !423

scalar.ph683.prol.loopexit:                       ; preds = %scalar.ph683.prol, %scalar.ph683.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph683.preheader ], [ %indvars.iv.next.prol, %scalar.ph683.prol ]
  %i.rl = sub nsw i64 %indvars.iv.ph, %12
  %i.rm = icmp ugt i64 %i.rl, -4
  br i1 %i.rm, label %._crit_edge420, label %scalar.ph683

._crit_edge420:                                   ; preds = %scalar.ph683.prol.loopexit, %scalar.ph683, %middle.block694, %.preheader372
  %i.rn = trunc nuw nsw i64 %indvars.iv485 to i32
  %i.ro = shl nuw i32 1, %i.rn
  %i.rp = trunc i32 %i.ro to i8
  %i.rq = or i8 %.0127421, %i.rp
  br label %bb.av

scalar.ph683:                                     ; preds = %scalar.ph683.prol.loopexit, %scalar.ph683
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph683 ], [ %indvars.iv.unr, %scalar.ph683.prol.loopexit ] ; 6 uses
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %i.qy, i64 %indvars.iv
  %i.rs = load i32, ptr %i.rr, align 4, !tbaa !96
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0351.0, i64 %indvars.iv ; 2 uses
  %i.ru = load i32, ptr %i.rt, align 4, !tbaa !96
  %i.rv = add nsw i32 %i.ru, %i.rs
  store i32 %i.rv, ptr %i.rt, align 4, !tbaa !96
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %i.qy, i64 %indvars.iv.next
  %i.rx = load i32, ptr %i.rw, align 4, !tbaa !96
  %i.ry = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0351.0, i64 %indvars.iv.next ; 2 uses
  %i.rz = load i32, ptr %i.ry, align 4, !tbaa !96
  %i.sa = add nsw i32 %i.rz, %i.rx
  store i32 %i.sa, ptr %i.ry, align 4, !tbaa !96
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %i.qy, i64 %indvars.iv.next.1
  %i.sc = load i32, ptr %i.sb, align 4, !tbaa !96
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0351.0, i64 %indvars.iv.next.1 ; 2 uses
  %i.se = load i32, ptr %i.sd, align 4, !tbaa !96
  %i.sf = add nsw i32 %i.se, %i.sc
  store i32 %i.sf, ptr %i.sd, align 4, !tbaa !96
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %i.qy, i64 %indvars.iv.next.2
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !96
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0351.0, i64 %indvars.iv.next.2 ; 2 uses
  %i.sj = load i32, ptr %i.si, align 4, !tbaa !96
  %i.sk = add nsw i32 %i.sj, %i.sh
  store i32 %i.sk, ptr %i.si, align 4, !tbaa !96
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %12
  br i1 %exitcond.not.3, label %._crit_edge420, label %scalar.ph683, !llvm.loop !424

bb.av:                                            ; preds = %.lr.ph423, %._crit_edge420
  %.1128 = phi i8 [ %.0127421, %.lr.ph423 ], [ %i.rq, %._crit_edge420 ] ; 2 uses
  %indvars.iv.next486 = add nuw nsw i64 %indvars.iv485, 1 ; 2 uses
  %exitcond488.not = icmp eq i64 %indvars.iv.next486, %i.qi
  br i1 %exitcond488.not, label %.preheader373, label %.lr.ph423, !llvm.loop !425

.lr.ph.i228.preheader:                            ; preds = %.lr.ph426, %middle.block678
  %i.sl = load ptr, ptr %i.cr, align 8, !tbaa !236 ; 5 uses
  br i1 %min.iters.check656, label %.lr.ph.i228.preheader749, label %vector.memcheck645

vector.memcheck645:                               ; preds = %.lr.ph.i228.preheader
  %i.sm = ptrtoaddr ptr %i.sl to i64              ; 3 uses
  %i.sn = sub i64 %i.em, %i.sm
  %diff.check646 = icmp ugt i64 %i.sn, -32
  %conflict.rdx650.reass = or i1 %diff.check646, %invariant.op
  %i.so = sub i64 %i.ee, %i.sm
  %diff.check651 = icmp ugt i64 %i.so, -32
  %conflict.rdx652 = or i1 %conflict.rdx650.reass, %diff.check651
  %.reass = add i64 %i.sm, %invariant.op814.reass
  %diff.check653 = icmp ult i64 %.reass, 31
  %conflict.rdx654 = or i1 %conflict.rdx652, %diff.check653
  br i1 %conflict.rdx654, label %.lr.ph.i228.preheader749, label %vector.body659

vector.body659:                                   ; preds = %vector.memcheck645, %vector.body659
  %index660 = phi i64 [ %index.next666, %vector.body659 ], [ 0, %vector.memcheck645 ] ; 5 uses
  %vec.phi = phi <4 x i32> [ %i.sx, %vector.body659 ], [ zeroinitializer, %vector.memcheck645 ]
  %vec.phi661 = phi <4 x i32> [ %i.sy, %vector.body659 ], [ zeroinitializer, %vector.memcheck645 ]
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0351.0, i64 %index660 ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 16
  %wide.load662 = load <4 x i32>, ptr %i.sp, align 4, !tbaa !96
  %wide.load663 = load <4 x i32>, ptr %i.sq, align 4, !tbaa !96
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %i.nn, i64 %index660 ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 16
  %wide.load664 = load <4 x i32>, ptr %i.sr, align 4, !tbaa !96
  %wide.load665 = load <4 x i32>, ptr %i.ss, align 4, !tbaa !96
  %i.st = sub nsw <4 x i32> %wide.load662, %wide.load664 ; 5 uses
  %i.su = sub nsw <4 x i32> %wide.load663, %wide.load665 ; 5 uses
  %i.sv = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.st, i1 true)
  %i.sw = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.su, i1 true)
  %i.sx = add <4 x i32> %i.sv, %vec.phi           ; 2 uses
  %i.sy = add <4 x i32> %i.sw, %vec.phi661        ; 2 uses
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0342.0, i64 %index660 ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 16
  store <4 x i32> %i.st, ptr %i.sz, align 4, !tbaa !96
  store <4 x i32> %i.su, ptr %i.ta, align 4, !tbaa !96
  %i.tb = shl nuw <4 x i32> %i.st, splat (i32 1)
  %i.tc = shl nuw <4 x i32> %i.su, splat (i32 1)
  %i.td = xor <4 x i32> %i.st, splat (i32 -1)
  %i.te = xor <4 x i32> %i.su, splat (i32 -1)
  %i.tf = shl nuw <4 x i32> %i.td, splat (i32 1)
  %i.tg = shl nuw <4 x i32> %i.te, splat (i32 1)
  %i.th = or disjoint <4 x i32> %i.tf, splat (i32 1)
  %i.ti = or disjoint <4 x i32> %i.tg, splat (i32 1)
  %i.tj = icmp slt <4 x i32> %i.st, zeroinitializer
  %i.tk = icmp slt <4 x i32> %i.su, zeroinitializer
  %i.tl = select <4 x i1> %i.tj, <4 x i32> %i.th, <4 x i32> %i.tb
  %i.tm = select <4 x i1> %i.tk, <4 x i32> %i.ti, <4 x i32> %i.tc
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %i.sl, i64 %index660 ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 16
  store <4 x i32> %i.tl, ptr %i.tn, align 4, !tbaa !96
  store <4 x i32> %i.tm, ptr %i.to, align 4, !tbaa !96
  %index.next666 = add nuw i64 %index660, 8       ; 2 uses
  %i.tp = icmp eq i64 %index.next666, %n.vec658
  br i1 %i.tp, label %middle.block667, label %vector.body659, !llvm.loop !426

middle.block667:                                  ; preds = %vector.body659
  %bin.rdx = add <4 x i32> %i.sy, %i.sx
  %i.tq = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n668, label %._crit_edge.i224, label %.lr.ph.i228.preheader749

.lr.ph.i228.preheader749:                         ; preds = %vector.memcheck645, %.lr.ph.i228.preheader, %middle.block667
  %indvars.iv.i230.ph = phi i64 [ 0, %vector.memcheck645 ], [ 0, %.lr.ph.i228.preheader ], [ %n.vec658, %middle.block667 ]
  %.sroa.3.015.i231.ph = phi i32 [ 0, %vector.memcheck645 ], [ 0, %.lr.ph.i228.preheader ], [ %i.tq, %middle.block667 ]
  br label %.lr.ph.i228

._crit_edge.i224:                                 ; preds = %.lr.ph.i228, %middle.block667, %._crit_edge427.thread
  %i.tr = phi ptr [ %i.qt, %._crit_edge427.thread ], [ %i.sl, %middle.block667 ], [ %i.sl, %.lr.ph.i228 ]
  %.sroa.3.0.lcssa.i225 = phi i32 [ 0, %._crit_edge427.thread ], [ %i.tq, %middle.block667 ], [ %i.ua, %.lr.ph.i228 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  invoke void @_ZN5draco21ShannonEntropyTracker4PeekEPKji(ptr dead_on_unwind nonnull writable sret(%"struct.draco::ShannonEntropyTracker::EntropyData") align 8 %6, ptr noundef nonnull align 8 dereferenceable(48) %i.dy, ptr noundef %i.tr, i32 noundef %4)
          to label %.noexc236 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc236:                                        ; preds = %._crit_edge.i224
  %i.ts = invoke noundef i64 @_ZN5draco21ShannonEntropyTracker19GetNumberOfDataBitsERKNS0_11EntropyDataE(ptr noundef nonnull align 8 dereferenceable(20) %6)
          to label %.noexc237 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc237:                                        ; preds = %.noexc236
  %i.tt = invoke noundef i64 @_ZN5draco21ShannonEntropyTracker24GetNumberOfRAnsTableBitsERKNS0_11EntropyDataE(ptr noundef nonnull align 8 dereferenceable(20) %6)
          to label %bb.aw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph.i228:                                      ; preds = %.lr.ph.i228.preheader749, %.lr.ph.i228
  %indvars.iv.i230 = phi i64 [ %indvars.iv.next.i233, %.lr.ph.i228 ], [ %indvars.iv.i230.ph, %.lr.ph.i228.preheader749 ] ; 5 uses
  %.sroa.3.015.i231 = phi i32 [ %i.ua, %.lr.ph.i228 ], [ %.sroa.3.015.i231.ph, %.lr.ph.i228.preheader749 ]
  %i.tu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0351.0, i64 %indvars.iv.i230
  %i.tv = load i32, ptr %i.tu, align 4, !tbaa !96
  %i.tw = getelementptr inbounds nuw [4 x i8], ptr %i.nn, i64 %indvars.iv.i230
  %i.tx = load i32, ptr %i.tw, align 4, !tbaa !96
  %i.ty = sub nsw i32 %i.tv, %i.tx                ; 5 uses
  %i.tz = call i32 @llvm.abs.i32(i32 %i.ty, i1 true)
  %i.ua = add nuw nsw i32 %i.tz, %.sroa.3.015.i231 ; 2 uses
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0342.0, i64 %indvars.iv.i230
  store i32 %i.ty, ptr %i.ub, align 4, !tbaa !96
  %i.uc = shl nuw i32 %i.ty, 1
  %i.ud = xor i32 %i.ty, -1
  %i.ue = shl nuw i32 %i.ud, 1
  %i.uf = or disjoint i32 %i.ue, 1
  %i.ug = icmp slt i32 %i.ty, 0
  %.0.i.i232 = select i1 %i.ug, i32 %i.uf, i32 %i.uc
  %i.uh = getelementptr inbounds nuw [4 x i8], ptr %i.sl, i64 %indvars.iv.i230
  store i32 %.0.i.i232, ptr %i.uh, align 4, !tbaa !96
  %indvars.iv.next.i233 = add nuw nsw i64 %indvars.iv.i230, 1 ; 2 uses
  %exitcond.not.i234 = icmp eq i64 %indvars.iv.next.i233, %wide.trip.count.i189
  br i1 %exitcond.not.i234, label %._crit_edge.i224, label %.lr.ph.i228, !llvm.loop !427

.lr.ph426:                                        ; preds = %.lr.ph426.preheader750, %.lr.ph426
  %indvars.iv489 = phi i64 [ %indvars.iv.next490, %.lr.ph426 ], [ %indvars.iv489.ph, %.lr.ph426.preheader750 ] ; 2 uses
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0351.0, i64 %indvars.iv489 ; 2 uses
  %i.uj = load i32, ptr %i.ui, align 4, !tbaa !96
  %i.uk = sdiv i32 %i.uj, %.0131429
  store i32 %i.uk, ptr %i.ui, align 4, !tbaa !96
  %indvars.iv.next490 = add nuw nsw i64 %indvars.iv489, 1 ; 2 uses
  %exitcond494.not.a = icmp eq i64 %indvars.iv.next490, %12
  br i1 %exitcond494.not.a, label %.lr.ph.i228.preheader, label %.lr.ph426, !llvm.loop !428

bb.aw:                                            ; preds = %.noexc237
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.ul = load i64, ptr %i.qm, align 8, !tbaa !128
  %i.um = load i64, ptr %i.qn, align 8, !tbaa !128 ; 2 uses
  %i.un = trunc i64 %i.um to i32
  %i.uo = trunc i64 %i.ul to i32
  %i.up = add i32 %.0131429, %i.uo
  %i.uq = invoke noundef double @_ZN5draco27ComputeBinaryShannonEntropyEjj(i32 noundef %i.un, i32 noundef %i.up)
          to label %bb.ax unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ax:                                            ; preds = %bb.aw
  %i.ur = add nsw i64 %i.tt, %i.ts
  %.sroa.0.0.extract.trunc = trunc i64 %i.ur to i32
  %i.us = sitofp i64 %i.um to double
  %i.ut = fmul double %i.uq, %i.us
  %i.uu = call double @llvm.ceil.f64(double %i.ut)
  %i.uv = fptosi double %i.uu to i64
  %i.uw = trunc i64 %i.uv to i32
  %i.ux = add i32 %i.uw, %.sroa.0.0.extract.trunc ; 3 uses
  %i.uy = load i32, ptr %9, align 8, !tbaa !452   ; 2 uses
  %i.uz = icmp slt i32 %i.ux, %i.uy
  br i1 %i.uz, label %_ZNK5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE5ErrorltERKS7_.exit.thread, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.va = icmp sle i32 %i.ux, %i.uy
  %i.vb = load i32, ptr %i.ec, align 4
  %i.vc = icmp slt i32 %.sroa.3.0.lcssa.i225, %i.vb
  %or.cond368 = select i1 %i.va, i1 %i.vc, i1 false
  br i1 %or.cond368, label %_ZNK5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE5ErrorltERKS7_.exit.thread, label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit245

_ZNK5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE5ErrorltERKS7_.exit.thread: ; preds = %bb.ay, %bb.ax
  %.sroa.13.0.insert.ext321 = zext nneg i32 %.sroa.3.0.lcssa.i225 to i64
  %.sroa.13.0.insert.shift322 = shl nuw nsw i64 %.sroa.13.0.insert.ext321, 32
  %.sroa.0.0.insert.ext315 = zext i32 %i.ux to i64
  %.sroa.0.0.insert.insert317 = or disjoint i64 %.sroa.13.0.insert.shift322, %.sroa.0.0.insert.ext315
  store i64 %.sroa.0.0.insert.insert317, ptr %9, align 8, !tbaa !96
  store i8 %.1128, ptr %i.dz, align 8, !tbaa !448
  store i32 %.0131429, ptr %i.dx, align 4, !tbaa !449
  %i.vd = load ptr, ptr %i.eg, align 8, !tbaa !102
  %i.ve = load ptr, ptr %i.ea, align 8, !tbaa !101 ; 8 uses
  %i.vf = ptrtoint ptr %i.vd to i64
  %i.vg = ptrtoint ptr %i.ve to i64               ; 2 uses
  %i.vh = sub i64 %i.vf, %i.vg                    ; 2 uses
  %i.vi = icmp ugt i64 %i.ef, %i.vh
  br i1 %i.vi, label %bb.az, label %bb.be

bb.az:                                            ; preds = %_ZNK5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE5ErrorltERKS7_.exit.thread
  br i1 %i.ek, label %.invoke617, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i: ; preds = %bb.az
  %i.vj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ef) #18
          to label %.noexc292 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc292:                                        ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i
  br i1 %i.ei, label %bb.ba, label %bb.bb, !prof !140

bb.ba:                                            ; preds = %.noexc292
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.vj, ptr align 4 %.sroa.0351.0, i64 %i.ef, i1 false)
  br label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPiS1_EEEES5_mT_S7_.exit.i

bb.bb:                                            ; preds = %.noexc292
  br i1 %i.ej, label %bb.bc, label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPiS1_EEEES5_mT_S7_.exit.i

bb.bc:                                            ; preds = %bb.bb
  %i.vk = load i32, ptr %.sroa.0351.0, align 4, !tbaa !96
  store i32 %i.vk, ptr %i.vj, align 4, !tbaa !96
  br label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPiS1_EEEES5_mT_S7_.exit.i

_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPiS1_EEEES5_mT_S7_.exit.i: ; preds = %bb.bc, %bb.bb, %bb.ba
  %.not.i.i290 = icmp eq ptr %i.ve, null
  br i1 %.not.i.i290, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i, label %bb.bd

bb.bd:                                            ; preds = %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPiS1_EEEES5_mT_S7_.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ve, i64 noundef %i.vh) #19
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i: ; preds = %bb.bd, %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPiS1_EEEES5_mT_S7_.exit.i
  store ptr %i.vj, ptr %i.ea, align 8, !tbaa !101
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vj, i64 %i.ef ; 2 uses
  store ptr %i.vl, ptr %i.eh, align 8, !tbaa !149
  store ptr %i.vl, ptr %i.eg, align 8, !tbaa !102
  br label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit243

bb.be:                                            ; preds = %_ZNK5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE5ErrorltERKS7_.exit.thread
  %i.vm = load ptr, ptr %i.eh, align 8, !tbaa !149 ; 5 uses
  %i.vn = ptrtoint ptr %i.vm to i64
  %i.vo = sub i64 %i.vn, %i.vg                    ; 5 uses
  %.not.i288 = icmp ult i64 %i.vo, %i.ef
  br i1 %.not.i288, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  br i1 %i.ei, label %bb.bg, label %bb.bh, !prof !140

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ve, ptr align 4 %.sroa.0351.0, i64 %i.ef, i1 false)
  %.pre.i = load ptr, ptr %i.eh, align 8, !tbaa !149
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

bb.bh:                                            ; preds = %bb.bf
  br i1 %i.ej, label %bb.bi, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

bb.bi:                                            ; preds = %bb.bh
  %i.vp = load i32, ptr %.sroa.0351.0, align 4, !tbaa !96
  store i32 %i.vp, ptr %i.ve, align 4, !tbaa !96
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i: ; preds = %bb.bi, %bb.bh, %bb.bg
  %i.vq = phi ptr [ %.pre.i, %bb.bg ], [ %i.vm, %bb.bh ], [ %i.vm, %bb.bi ]
  %i.vr = getelementptr inbounds i8, ptr %i.ve, i64 %i.ef ; 2 uses
  %.not.i18.i = icmp eq ptr %i.vq, %i.vr
  br i1 %.not.i18.i, label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit243, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i289

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i289:     ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i
  store ptr %i.vr, ptr %i.eh, align 8, !tbaa !149
  br label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit243

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %bb.be
  %.sink.i.i = getelementptr inbounds i8, ptr %.sroa.0351.0, i64 %i.vo ; 3 uses
  %i.vs = ptrtoint ptr %.sink.i.i to i64
  %i.vt = icmp sgt i64 %i.vo, 4
  br i1 %i.vt, label %bb.bj, label %bb.bk, !prof !140

bb.bj:                                            ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ve, ptr align 4 %.sroa.0351.0, i64 %i.vo, i1 false)
  %.pre24.i = load ptr, ptr %i.eh, align 8, !tbaa !149
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit19.i

bb.bk:                                            ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.vu = icmp eq i64 %i.vo, 4
  br i1 %i.vu, label %bb.bl, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit19.i

bb.bl:                                            ; preds = %bb.bk
  %i.vv = load i32, ptr %.sroa.0351.0, align 4, !tbaa !96
  store i32 %i.vv, ptr %i.ve, align 4, !tbaa !96
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit19.i

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit19.i: ; preds = %bb.bl, %bb.bk, %bb.bj
  %i.vw = phi ptr [ %.pre24.i, %bb.bj ], [ %i.vm, %bb.bk ], [ %i.vm, %bb.bl ] ; 3 uses
  %i.vx = sub i64 %i.ed, %i.vs                    ; 4 uses
  %i.vy = icmp sgt i64 %i.vx, 4
  br i1 %i.vy, label %bb.bm, label %bb.bn, !prof !140

bb.bm:                                            ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit19.i
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.vw, ptr align 4 %.sink.i.i, i64 %i.vx, i1 false)
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit.i

bb.bn:                                            ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit19.i
  %i.vz = icmp eq i64 %i.vx, 4
  br i1 %i.vz, label %bb.bo, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit.i

bb.bo:                                            ; preds = %bb.bn
  %i.wa = load i32, ptr %.sink.i.i, align 4, !tbaa !96
  store i32 %i.wa, ptr %i.vw, align 4, !tbaa !96
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit.i

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit.i: ; preds = %bb.bo, %bb.bn, %bb.bm
  %i.wb = getelementptr inbounds i8, ptr %i.vw, i64 %i.vx
  store ptr %i.wb, ptr %i.eh, align 8, !tbaa !149
  br label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit243

_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit243: ; preds = %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i289, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit.i
  %i.wc = load ptr, ptr %i.eo, align 8, !tbaa !102
  %i.wd = load ptr, ptr %i.eb, align 8, !tbaa !101 ; 8 uses
  %i.we = ptrtoint ptr %i.wc to i64
  %i.wf = ptrtoint ptr %i.wd to i64               ; 2 uses
  %i.wg = sub i64 %i.we, %i.wf                    ; 2 uses
  %i.wh = icmp ugt i64 %i.en, %i.wg
  br i1 %i.wh, label %bb.bp, label %bb.bu

bb.bp:                                            ; preds = %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit243
  br i1 %i.es, label %.invoke617, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i303

.invoke617:                                       ; preds = %bb.bp, %bb.az
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #20
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke617
  unreachable

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i303: ; preds = %bb.bp
  %i.wi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.en) #18
          to label %.noexc308 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc308:                                        ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i303
  br i1 %i.eq, label %bb.bq, label %bb.br, !prof !140

bb.bq:                                            ; preds = %.noexc308
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.wi, ptr align 4 %.sroa.0342.0, i64 %i.en, i1 false)
  br label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPiS1_EEEES5_mT_S7_.exit.i304

bb.br:                                            ; preds = %.noexc308
  br i1 %i.er, label %bb.bs, label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPiS1_EEEES5_mT_S7_.exit.i304

bb.bs:                                            ; preds = %bb.br
  %i.wj = load i32, ptr %.sroa.0342.0, align 4, !tbaa !96
  store i32 %i.wj, ptr %i.wi, align 4, !tbaa !96
  br label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPiS1_EEEES5_mT_S7_.exit.i304

end_hunk_1
begin_hunk_2_@_ZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEE:bb.a
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.wv, ptr align 4 %.sink.i.i299, i64 %i.ww, i1 false)
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit.i301

bb.cd:                                            ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit19.i300
  %i.wy = icmp eq i64 %i.ww, 4
  br i1 %i.wy, label %bb.ce, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit.i301

bb.ce:                                            ; preds = %bb.cd
  %i.wz = load i32, ptr %.sink.i.i299, align 4, !tbaa !96
  store i32 %i.wz, ptr %i.wv, align 4, !tbaa !96
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit.i301

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit.i301: ; preds = %bb.ce, %bb.cd, %bb.cc
  %i.xa = getelementptr inbounds i8, ptr %i.wv, i64 %i.ww
  store ptr %i.xa, ptr %i.ep, align 8, !tbaa !149
  br label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit245

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke, %._crit_edge.i224, %.noexc236, %.noexc237, %bb.aw, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i303, %_ZNSt6vectorIiSaIiEE6assignIPKivEEvT_S5_.exit, %bb.au, %bb.as, %.noexc219, %.noexc218, %._crit_edge.i212, %.invoke617
  %lpad.loopexit.split-lp758 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit245: ; preds = %bb.ay, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i306, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i294, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i296, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit.i301
  br i1 %or.cond.i.i246, label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit, label %bb.cf

bb.cf:                                            ; preds = %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit245
  %.pre.i.i = load i8, ptr %.ptr35.i.i, align 1, !tbaa !239, !range !61
  br label %_ZSt9__reverseIPbEvT_S1_St26random_access_iterator_tag.exit.i.i

_ZSt9__reverseIPbEvT_S1_St26random_access_iterator_tag.exit.i.i: ; preds = %bb.ch, %bb.cf
  %i.xb = phi i8 [ %.pre.i.i, %bb.cf ], [ %i.xc, %bb.ch ]
  %.021.idx.i.i = phi i64 [ -1, %bb.cf ], [ %.021.add.i.i, %bb.ch ] ; 3 uses
  %.021.add.i.i = add nsw i64 %.021.idx.i.i, -1   ; 4 uses
  %.ptr.i.i = getelementptr inbounds i8, ptr %i.qj, i64 %.021.add.i.i
  %i.xc = load i8, ptr %.ptr.i.i, align 1, !tbaa !239, !range !61, !noundef !62 ; 2 uses
  %i.xd = icmp samesign ult i8 %i.xc, %i.xb
  br i1 %i.xd, label %.preheader.i.i.preheader, label %bb.ch

.preheader.i.i.preheader:                         ; preds = %_ZSt9__reverseIPbEvT_S1_St26random_access_iterator_tag.exit.i.i
  %.ptr.i.i.le = getelementptr inbounds i8, ptr %i.qj, i64 %.021.add.i.i
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.0.i.i247 = phi ptr [ %i.xe, %.preheader.i.i ], [ %i.qj, %.preheader.i.i.preheader ]
  %i.xe = getelementptr inbounds i8, ptr %.0.i.i247, i64 -1 ; 3 uses
  %i.xf = load i8, ptr %i.xe, align 1, !tbaa !239, !range !61, !noundef !62
  %.not54.i.i = icmp eq i8 %i.xf, 0
  br i1 %.not54.i.i, label %.preheader.i.i, label %bb.cg, !llvm.loop !4

bb.cg:                                            ; preds = %.preheader.i.i
  store i8 1, ptr %.ptr.i.i.le, align 1, !tbaa !239
  store i8 0, ptr %i.xe, align 1, !tbaa !239
  %.not.i.i248 = icmp eq i64 %.021.idx.i.i, -1
  br i1 %.not.i.i248, label %_ZSt16next_permutationIPbEbT_S1_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.cg
  %.021.ptr.le.i.i = getelementptr inbounds i8, ptr %i.qj, i64 %.021.idx.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.preheader.i
  %.014.i.i.i = phi ptr [ %.0.i.i.i, %.lr.ph.i.i.i ], [ %.ptr35.i.i, %.lr.ph.i.i.preheader.i ] ; 3 uses
  %.0913.i.i.i = phi ptr [ %i.xi, %.lr.ph.i.i.i ], [ %.021.ptr.le.i.i, %.lr.ph.i.i.preheader.i ] ; 3 uses
  %i.xg = load i8, ptr %.0913.i.i.i, align 1, !tbaa !239, !range !61, !noundef !62
  %i.xh = load i8, ptr %.014.i.i.i, align 1, !tbaa !239, !range !61, !noundef !62
  store i8 %i.xh, ptr %.0913.i.i.i, align 1, !tbaa !239
  store i8 %i.xg, ptr %.014.i.i.i, align 1, !tbaa !239
  %i.xi = getelementptr inbounds nuw i8, ptr %.0913.i.i.i, i64 1 ; 2 uses
  %.0.i.i.i = getelementptr inbounds i8, ptr %.014.i.i.i, i64 -1 ; 2 uses
  %i.xj = icmp ult ptr %i.xi, %.0.i.i.i
  br i1 %i.xj, label %.lr.ph.i.i.i, label %_ZSt16next_permutationIPbEbT_S1_.exit, !llvm.loop !5

bb.ch:                                            ; preds = %_ZSt9__reverseIPbEvT_S1_St26random_access_iterator_tag.exit.i.i
  %i.xk = icmp eq i64 %.021.add.i.i, %i.qo
  br i1 %i.xk, label %.lr.ph.i28.i.i, label %_ZSt9__reverseIPbEvT_S1_St26random_access_iterator_tag.exit.i.i, !llvm.loop !6

.lr.ph.i28.i.i:                                   ; preds = %bb.ch, %.lr.ph.i28.i.i
  %.014.i29.i.i = phi ptr [ %.0.i31.i.i, %.lr.ph.i28.i.i ], [ %.ptr35.i.i, %bb.ch ] ; 3 uses
  %.0913.i30.i.i = phi ptr [ %i.xn, %.lr.ph.i28.i.i ], [ %i.b, %bb.ch ] ; 3 uses
  %i.xl = load i8, ptr %.0913.i30.i.i, align 1, !tbaa !239, !range !61, !noundef !62
  %i.xm = load i8, ptr %.014.i29.i.i, align 1, !tbaa !239, !range !61, !noundef !62
  store i8 %i.xm, ptr %.0913.i30.i.i, align 1, !tbaa !239
  store i8 %i.xl, ptr %.014.i29.i.i, align 1, !tbaa !239
  %i.xn = getelementptr inbounds nuw i8, ptr %.0913.i30.i.i, i64 1 ; 2 uses
  %.0.i31.i.i = getelementptr inbounds i8, ptr %.014.i29.i.i, i64 -1 ; 2 uses
  %i.xo = icmp ult ptr %i.xn, %.0.i31.i.i
  br i1 %i.xo, label %.lr.ph.i28.i.i, label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit, !llvm.loop !5

_ZSt16next_permutationIPbEbT_S1_.exit:            ; preds = %.lr.ph.i.i.i, %bb.cg
  br label %.preheader375, !llvm.loop !429

_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit: ; preds = %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit245, %.lr.ph.i28.i.i
  %i.xp = add nuw nsw i32 %.0131429, 1
  %exitcond496.not = icmp eq i64 %i.qp, %i.qi
  br i1 %exitcond496.not, label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit._crit_edge, label %.lr.ph.preheader.i.i.i, !llvm.loop !430

bb.ci:                                            ; preds = %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit._crit_edge
  %i.xq = load i32, ptr %i.dx, align 4, !tbaa !449
  %i.xr = sext i32 %i.xq to i64
  %i.xs = zext nneg i32 %.2148 to i64
  %i.xt = getelementptr [8 x i8], ptr %i.c, i64 %i.xs
  %i.xu = getelementptr i8, ptr %i.xt, i64 -8     ; 2 uses
  %i.xv = load i64, ptr %i.xu, align 8, !tbaa !128
  %i.xw = add nsw i64 %i.xv, %i.xr
  store i64 %i.xw, ptr %i.xu, align 8, !tbaa !128
  br label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit._crit_edge.thread

_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit._crit_edge.thread: ; preds = %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit.preheader, %bb.ci, %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit._crit_edge
  %.pre515 = load ptr, ptr %i.cr, align 8, !tbaa !236 ; 6 uses
  br i1 %.not.i.i.i.i168, label %._crit_edge434, label %.lr.ph433

.lr.ph433:                                        ; preds = %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit._crit_edge.thread
  %.pre515643 = ptrtoaddr ptr %.pre515 to i64
  %i.xx = load ptr, ptr %i.eb, align 8, !tbaa !101 ; 5 uses
  %i.xy = ptrtoaddr ptr %i.xx to i64
  %i.xz = sub i64 %i.xy, %.pre515643
  %diff.check = icmp ugt i64 %i.xz, -32
  %or.cond748 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond748, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph433, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph433 ] ; 3 uses
  %i.ya = getelementptr inbounds nuw [4 x i8], ptr %i.xx, i64 %index ; 2 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 16
  %wide.load = load <4 x i32>, ptr %i.ya, align 4, !tbaa !96 ; 3 uses
  %wide.load644 = load <4 x i32>, ptr %i.yb, align 4, !tbaa !96 ; 3 uses
  %i.yc = shl nuw <4 x i32> %wide.load, splat (i32 1)
  %i.yd = shl nuw <4 x i32> %wide.load644, splat (i32 1)
  %i.ye = xor <4 x i32> %wide.load, splat (i32 -1)
  %i.yf = xor <4 x i32> %wide.load644, splat (i32 -1)
  %i.yg = shl nuw <4 x i32> %i.ye, splat (i32 1)
  %i.yh = shl nuw <4 x i32> %i.yf, splat (i32 1)
  %i.yi = or disjoint <4 x i32> %i.yg, splat (i32 1)
  %i.yj = or disjoint <4 x i32> %i.yh, splat (i32 1)
  %i.yk = icmp slt <4 x i32> %wide.load, zeroinitializer
  %i.yl = icmp slt <4 x i32> %wide.load644, zeroinitializer
  %i.ym = select <4 x i1> %i.yk, <4 x i32> %i.yi, <4 x i32> %i.yc
  %i.yn = select <4 x i1> %i.yl, <4 x i32> %i.yj, <4 x i32> %i.yd
  %i.yo = getelementptr inbounds nuw [4 x i8], ptr %.pre515, i64 %index ; 2 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yo, i64 16
  store <4 x i32> %i.ym, ptr %i.yo, align 4, !tbaa !96
  store <4 x i32> %i.yn, ptr %i.yp, align 4, !tbaa !96
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.yq = icmp eq i64 %index.next, %n.vec
  br i1 %i.yq, label %middle.block, label %vector.body, !llvm.loop !431

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge434, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph433, %middle.block
  %indvars.iv497.ph = phi i64 [ 0, %.lr.ph433 ], [ %n.vec, %middle.block ] ; 5 uses
  br i1 %lcmp.mod790.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.yr = getelementptr inbounds nuw [4 x i8], ptr %i.xx, i64 %indvars.iv497.ph
  %i.ys = load i32, ptr %i.yr, align 4, !tbaa !96 ; 3 uses
  %i.yt = shl nuw i32 %i.ys, 1
  %i.yu = xor i32 %i.ys, -1
  %i.yv = shl nuw i32 %i.yu, 1
  %i.yw = or disjoint i32 %i.yv, 1
  %i.yx = icmp slt i32 %i.ys, 0
  %.0.i249.prol = select i1 %i.yx, i32 %i.yw, i32 %i.yt
  %i.yy = getelementptr inbounds nuw [4 x i8], ptr %.pre515, i64 %indvars.iv497.ph
  store i32 %.0.i249.prol, ptr %i.yy, align 4, !tbaa !96
  %indvars.iv.next498.prol = or disjoint i64 %indvars.iv497.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv497.unr = phi i64 [ %indvars.iv497.ph, %scalar.ph.preheader ], [ %indvars.iv.next498.prol, %scalar.ph.prol ]
  %i.yz = icmp eq i64 %indvars.iv497.ph, %i.gc
  br i1 %i.yz, label %._crit_edge434, label %scalar.ph

._crit_edge434:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit._crit_edge.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  invoke void @_ZN5draco21ShannonEntropyTracker4PushEPKji(ptr dead_on_unwind nonnull writable sret(%"struct.draco::ShannonEntropyTracker::EntropyData") align 8 %10, ptr noundef nonnull align 8 dereferenceable(48) %i.dy, ptr noundef %.pre515, i32 noundef %4)
          to label %bb.cj unwind label %bb.cu

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv497 = phi i64 [ %indvars.iv.next498.1, %scalar.ph ], [ %indvars.iv497.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.za = getelementptr inbounds nuw [4 x i8], ptr %i.xx, i64 %indvars.iv497
  %i.zb = load i32, ptr %i.za, align 4, !tbaa !96 ; 3 uses
  %i.zc = shl nuw i32 %i.zb, 1
  %i.zd = xor i32 %i.zb, -1
  %i.ze = shl nuw i32 %i.zd, 1
  %i.zf = or disjoint i32 %i.ze, 1
  %i.zg = icmp slt i32 %i.zb, 0
  %.0.i249 = select i1 %i.zg, i32 %i.zf, i32 %i.zc
  %i.zh = getelementptr inbounds nuw [4 x i8], ptr %.pre515, i64 %indvars.iv497
  store i32 %.0.i249, ptr %i.zh, align 4, !tbaa !96
  %indvars.iv.next498 = add nuw nsw i64 %indvars.iv497, 1 ; 2 uses
  %i.zi = getelementptr inbounds nuw [4 x i8], ptr %i.xx, i64 %indvars.iv.next498
  %i.zj = load i32, ptr %i.zi, align 4, !tbaa !96 ; 3 uses
  %i.zk = shl nuw i32 %i.zj, 1
  %i.zl = xor i32 %i.zj, -1
  %i.zm = shl nuw i32 %i.zl, 1
  %i.zn = or disjoint i32 %i.zm, 1
  %i.zo = icmp slt i32 %i.zj, 0
  %.0.i249.1 = select i1 %i.zo, i32 %i.zn, i32 %i.zk
  %i.zp = getelementptr inbounds nuw [4 x i8], ptr %.pre515, i64 %indvars.iv.next498
  store i32 %.0.i249.1, ptr %i.zp, align 4, !tbaa !96
  %indvars.iv.next498.1 = add nuw nsw i64 %indvars.iv497, 2 ; 2 uses
  %exitcond502.not.1 = icmp eq i64 %indvars.iv.next498.1, %12
  br i1 %exitcond502.not.1, label %._crit_edge434, label %scalar.ph, !llvm.loop !432

bb.cj:                                            ; preds = %._crit_edge434
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br i1 %i.pq, label %.lr.ph437, label %._crit_edge438

.lr.ph437:                                        ; preds = %bb.cj
  %i.zq = zext nneg i32 %.2148 to i64
  %i.zr = getelementptr [40 x i8], ptr %0, i64 %i.zq ; 4 uses
  %i.zs = getelementptr i8, ptr %i.zr, i64 72     ; 3 uses
  %i.zt = getelementptr i8, ptr %i.zr, i64 88
  %.sroa.2.0..sroa_idx.i.i255 = getelementptr i8, ptr %i.zr, i64 80 ; 5 uses
  %i.zu = getelementptr i8, ptr %i.zr, i64 56
  br label %bb.cv

._crit_edge438:                                   ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit, %bb.cj
  %i.zv = getelementptr inbounds [4 x i8], ptr %2, i64 %i.nj
  %i.zw = load i32, ptr %i.e, align 8, !tbaa !203
  %i.zx = icmp sgt i32 %i.zw, 0
  br i1 %i.zx, label %.lr.ph.i.lr.ph.i, label %_ZNK5draco37PredictionSchemeWrapEncodingTransformIiiE17ComputeCorrectionEPKiS3_Pi.exit

.lr.ph.i.lr.ph.i:                                 ; preds = %._crit_edge438
  %i.zy = load ptr, ptr %i.ea, align 8, !tbaa !101
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ct, %.lr.ph.i.lr.ph.i
  %indvars.iv.i251 = phi i64 [ 0, %.lr.ph.i.lr.ph.i ], [ %indvars.iv.next.i252, %bb.ct ] ; 4 uses
  %.01516.i = phi ptr [ %i.zy, %.lr.ph.i.lr.ph.i ], [ %i.zz, %bb.ct ]
  %i.zz = load ptr, ptr %i.f, align 8             ; 4 uses
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cp, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.cp ] ; 4 uses
  %i.aaa = getelementptr inbounds nuw [4 x i8], ptr %.01516.i, i64 %indvars.iv.i.i
  %i.aab = load i32, ptr %i.aaa, align 4, !tbaa !96 ; 3 uses
  %i.aac = load i32, ptr %i.et, align 8, !tbaa !202 ; 2 uses
  %i.aad = icmp sgt i32 %i.aab, %i.aac
  br i1 %i.aad, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.aae = getelementptr inbounds nuw [4 x i8], ptr %i.zz, i64 %indvars.iv.i.i
  store i32 %i.aac, ptr %i.aae, align 4, !tbaa !96
  br label %bb.cp

bb.cm:                                            ; preds = %bb.ck
  %i.aaf = load i32, ptr %i.eu, align 4, !tbaa !201 ; 2 uses
  %i.aag = icmp slt i32 %i.aab, %i.aaf
  %i.aah = getelementptr inbounds nuw [4 x i8], ptr %i.zz, i64 %indvars.iv.i.i ; 2 uses
  br i1 %i.aag, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  store i32 %i.aaf, ptr %i.aah, align 4, !tbaa !96
  br label %bb.cp

bb.co:                                            ; preds = %bb.cm
  store i32 %i.aab, ptr %i.aah, align 4, !tbaa !96
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn, %bb.cl
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.aai = load i32, ptr %i.e, align 8, !tbaa !203
  %i.aaj = sext i32 %i.aai to i64
  %i.aak = icmp slt i64 %indvars.iv.next.i.i, %i.aaj
  br i1 %i.aak, label %bb.ck, label %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.loopexit.i, !llvm.loop !2

_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.loopexit.i: ; preds = %bb.cp
  %i.aal = getelementptr inbounds nuw [4 x i8], ptr %i.nn, i64 %indvars.iv.i251
  %i.aam = load i32, ptr %i.aal, align 4, !tbaa !96
  %i.aan = getelementptr inbounds nuw [4 x i8], ptr %i.zz, i64 %indvars.iv.i251
  %i.aao = load i32, ptr %i.aan, align 4, !tbaa !96
  %i.aap = sub nsw i32 %i.aam, %i.aao             ; 5 uses
  %i.aaq = getelementptr inbounds nuw [4 x i8], ptr %i.zv, i64 %indvars.iv.i251 ; 2 uses
  store i32 %i.aap, ptr %i.aaq, align 4, !tbaa !96
  %i.aar = load i32, ptr %i.ev, align 4, !tbaa !206
  %i.aas = icmp slt i32 %i.aap, %i.aar
  br i1 %i.aas, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.loopexit.i
  %i.aat = load i32, ptr %i.ex, align 4, !tbaa !204
  %i.aau = add nsw i32 %i.aat, %i.aap
  br label %.sink.split.i

bb.cr:                                            ; preds = %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.loopexit.i
  %i.aav = load i32, ptr %i.ew, align 8, !tbaa !205
  %i.aaw = icmp sgt i32 %i.aap, %i.aav
  br i1 %i.aaw, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.aax = load i32, ptr %i.ex, align 4, !tbaa !204
  %i.aay = sub nsw i32 %i.aap, %i.aax
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.cs, %bb.cq
  %.sink.i = phi i32 [ %i.aay, %bb.cs ], [ %i.aau, %bb.cq ]
  store i32 %.sink.i, ptr %i.aaq, align 4, !tbaa !96
  br label %bb.ct

bb.ct:                                            ; preds = %.sink.split.i, %bb.cr
  %indvars.iv.next.i252 = add nuw nsw i64 %indvars.iv.i251, 1 ; 2 uses
  %i.aaz = load i32, ptr %i.e, align 8, !tbaa !203
  %i.aba = sext i32 %i.aaz to i64
  %i.abb = icmp slt i64 %indvars.iv.next.i252, %i.aba
  br i1 %i.abb, label %.lr.ph.i.i, label %_ZNK5draco37PredictionSchemeWrapEncodingTransformIiiE17ComputeCorrectionEPKiS3_Pi.exit, !llvm.loop !3

bb.cu:                                            ; preds = %._crit_edge434
  %i.abc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %.loopexit.split-lp

bb.cv:                                            ; preds = %.lr.ph437, %_ZNSt6vectorIbSaIbEE9push_backEb.exit
  %.0120435 = phi i32 [ 0, %.lr.ph437 ], [ %i.abz, %_ZNSt6vectorIbSaIbEE9push_backEb.exit ] ; 2 uses
  %i.abd = load i8, ptr %i.dz, align 8, !tbaa !448
  %i.abe = zext i8 %i.abd to i32
  %i.abf = shl nuw i32 1, %.0120435
  %i.abg = and i32 %i.abf, %i.abe
  %i.abh = icmp eq i32 %i.abg, 0                  ; 2 uses
  %i.abi = load ptr, ptr %i.zs, align 8, !tbaa !174 ; 7 uses
  %i.abj = load ptr, ptr %i.zt, align 8, !tbaa !178
  %.not.i = icmp eq ptr %i.abi, %i.abj            ; 2 uses
  %.sroa.2.0.copyload.i11.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i255, align 8 ; 7 uses
  br i1 %i.abh, label %bb.cw, label %bb.cz

bb.cw:                                            ; preds = %bb.cv
  br i1 %.not.i, label %.invoke, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.abk = add i32 %.sroa.2.0.copyload.i11.i, 1
  store i32 %i.abk, ptr %.sroa.2.0..sroa_idx.i.i255, align 8, !tbaa !175
  %i.abl = icmp eq i32 %.sroa.2.0.copyload.i11.i, 63
  br i1 %i.abl, label %bb.cy, label %_ZNSt13_Bit_iteratorppEi.exit.i

bb.cy:                                            ; preds = %bb.cx
  store i32 0, ptr %.sroa.2.0..sroa_idx.i.i255, align 8, !tbaa !175
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abi, i64 8
  store ptr %i.abm, ptr %i.zs, align 8, !tbaa !174
  br label %_ZNSt13_Bit_iteratorppEi.exit.i

_ZNSt13_Bit_iteratorppEi.exit.i:                  ; preds = %bb.cy, %bb.cx
  %i.abn = zext nneg i32 %.sroa.2.0.copyload.i11.i to i64
  %i.abo = shl nuw i64 1, %i.abn
  %i.abp = load i64, ptr %i.abi, align 8, !tbaa !128
  %i.abq = or i64 %i.abp, %i.abo
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit.sink.split

.invoke:                                          ; preds = %bb.cz, %bb.cw
  invoke void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %i.zu, ptr %i.abi, i32 %.sroa.2.0.copyload.i11.i, i1 noundef zeroext %i.abh)
          to label %_ZNSt6vectorIbSaIbEE9push_backEb.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cz:                                            ; preds = %bb.cv
  br i1 %.not.i, label %.invoke, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.abr = add i32 %.sroa.2.0.copyload.i11.i, 1
  store i32 %i.abr, ptr %.sroa.2.0..sroa_idx.i.i255, align 8, !tbaa !175
  %i.abs = icmp eq i32 %.sroa.2.0.copyload.i11.i, 63
  br i1 %i.abs, label %bb.db, label %_ZNSt13_Bit_iteratorppEi.exit.i257

bb.db:                                            ; preds = %bb.da
  store i32 0, ptr %.sroa.2.0..sroa_idx.i.i255, align 8, !tbaa !175
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abi, i64 8
  store ptr %i.abt, ptr %i.zs, align 8, !tbaa !174
  br label %_ZNSt13_Bit_iteratorppEi.exit.i257

_ZNSt13_Bit_iteratorppEi.exit.i257:               ; preds = %bb.db, %bb.da
  %i.abu = zext nneg i32 %.sroa.2.0.copyload.i11.i to i64
  %i.abv = shl nuw i64 1, %i.abu
  %i.abw = xor i64 %i.abv, -1
  %i.abx = load i64, ptr %i.abi, align 8, !tbaa !128
  %i.aby = and i64 %i.abx, %i.abw
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit.sink.split

_ZNSt6vectorIbSaIbEE9push_backEb.exit.sink.split: ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i, %_ZNSt13_Bit_iteratorppEi.exit.i257
  %.sink = phi i64 [ %i.aby, %_ZNSt13_Bit_iteratorppEi.exit.i257 ], [ %i.abq, %_ZNSt13_Bit_iteratorppEi.exit.i ]
  store i64 %.sink, ptr %i.abi, align 8, !tbaa !128
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

_ZNSt6vectorIbSaIbEE9push_backEb.exit:            ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit.sink.split, %.invoke
  %i.abz = add nuw nsw i32 %.0120435, 1           ; 2 uses
  %exitcond503.not = icmp eq i32 %i.abz, %.2148
  br i1 %exitcond503.not, label %._crit_edge438, label %bb.cv, !llvm.loop !433

_ZNK5draco37PredictionSchemeWrapEncodingTransformIiiE17ComputeCorrectionEPKiS3_Pi.exit: ; preds = %bb.ct, %._crit_edge438
  %i.aca = load ptr, ptr %i.eb, align 8, !tbaa !101 ; 3 uses
  %.not.i.i.i.i260 = icmp eq ptr %i.aca, null
  br i1 %.not.i.i.i.i260, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %bb.dc

bb.dc:                                            ; preds = %_ZNK5draco37PredictionSchemeWrapEncodingTransformIiiE17ComputeCorrectionEPKiS3_Pi.exit
  %i.acb = load ptr, ptr %i.eo, align 8, !tbaa !102
  %i.acc = ptrtoint ptr %i.acb to i64
  %i.acd = ptrtoint ptr %i.aca to i64
  %i.ace = sub i64 %i.acc, %i.acd
  call void @_ZdlPvm(ptr noundef nonnull %i.aca, i64 noundef %i.ace) #19
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %bb.dc, %_ZNK5draco37PredictionSchemeWrapEncodingTransformIiiE17ComputeCorrectionEPKiS3_Pi.exit
  %i.acf = load ptr, ptr %i.ea, align 8, !tbaa !101 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.acf, null
  br i1 %.not.i.i.i1.i, label %_ZZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEEEN23PredictionConfigurationD2Ev.exit, label %bb.dd

end_hunk_2
begin_hunk_3_@_ZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEE:bb.a
  br i1 %i.be, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc169
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.bd, 2  ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.bc, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !96
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

bb.j:                                             ; preds = %_ZN5draco37PredictionSchemeWrapEncodingTransformIiiE4InitEPKiii.exit
  invoke void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %i.g)
          to label %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge505 unwind label %.loopexit.split-lp379.loopexit.split-lp

._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge505: ; preds = %bb.j
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %8, i64 24
  %.phi.trans.insert506 = getelementptr inbounds nuw i8, ptr %8, i64 32
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
  %wide.trip.count.i187 = zext nneg i32 %4 to i64 ; 11 uses
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
  %11 = call i32 @llvm.umax.i32(i32 %4, i32 1)
  %12 = zext nneg i32 %11 to i64                  ; 15 uses
  %i.ex = shl nuw nsw i64 %12, 2
  %i.ey = and i64 %i.ds, 2147483647               ; 4 uses
  %i.ez = add nsw i64 %i.ey, -1
  %i.fa = mul nsw i64 %i.ez, %i.g                 ; 2 uses
  %i.fb = shl i64 %i.fa, 2
  %i.fc = add i64 %i.fb, %i.a
  %i.fd = sub i64 %i.el, %i.fc
  %i.fe = shl nuw nsw i64 %i.g, 2
  %i.ff = mul i64 %i.fa, -4
  %i.fg = sub i64 %i.ff, %i.a
  %i.fh = shl nuw nsw i64 %12, 2                  ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.0344.0, i64 %i.fh
  %i.fi = add nsw i64 %i.ey, -1                   ; 2 uses
  %i.fj = mul nsw i64 %i.fi, %i.g
  %i.fk = shl i64 %i.fj, 2
  %i.fl = add i64 %i.fk, %i.a
  %i.fm = sub i64 %i.el, %i.fl
  %i.fn = shl nuw nsw i64 %i.g, 2
  %i.fo = add nsw i64 %i.ey, -2                   ; 2 uses
  %i.fp = mul nsw i64 %i.fo, %i.g
  %i.fq = shl i64 %i.fp, 2
  %i.fr = add i64 %i.fq, %i.a
  %i.fs = sub i64 %i.el, %i.fr
  %i.ft = mul nsw i64 %i.fi, %i.g
  %i.fu = mul i64 %i.ft, -4
  %i.fv = sub i64 %i.fu, %i.a
  %i.fw = mul nsw i64 %i.fo, %i.g
  %i.fx = mul i64 %i.fw, -4
  %i.fy = sub i64 %i.fx, %i.a
  %min.iters.check727 = icmp ult i32 %4, 12
  %n.vec729 = and i64 %wide.trip.count.i187, 2147483640 ; 3 uses
  %cmp.n740 = icmp eq i64 %n.vec729, %wide.trip.count.i187
  %xtraiter780.a = and i64 %wide.trip.count.i187, 1
  %lcmp.mod781.not.a = icmp eq i64 %xtraiter780.a, 0
  %i.fz = add nsw i64 %wide.trip.count.i187, -1
  %min.iters.check703 = icmp ult i32 %4, 8
  %invariant.op810.a = add i64 %i.fm, -1
  %invariant.op812.a = add i64 %i.fs, -1
  %n.vec705 = and i64 %wide.trip.count.i187, 2147483640 ; 3 uses
  %cmp.n717 = icmp eq i64 %n.vec705, %wide.trip.count.i187
  %min.iters.check679 = icmp ult i32 %4, 8
  %n.vec681 = and i64 %12, 2147483640             ; 3 uses
  %cmp.n690 = icmp eq i64 %n.vec681, %12
  %xtraiter782 = and i64 %12, 3                   ; 2 uses
  %lcmp.mod783.not = icmp eq i64 %xtraiter782, 0
  %min.iters.check666 = icmp ult i32 %4, 4
  %n.vec668 = and i64 %12, 2147483644             ; 3 uses
  %cmp.n674 = icmp eq i64 %n.vec668, %12
  %min.iters.check651 = icmp ult i32 %4, 8
  %i.ga = sub i64 %i.ed, %i.el
  %diff.check642.a = icmp ugt i64 %i.ga, -32
  %invariant.op814 = add i64 %i.fd, -1
  %invariant.op816 = add i64 %i.fg, -1
  %n.vec653 = and i64 %wide.trip.count.i187, 2147483640 ; 3 uses
  %cmp.n663 = icmp eq i64 %n.vec653, %wide.trip.count.i187
  %min.iters.check = icmp ult i32 %4, 8
  %n.vec = and i64 %12, 2147483640                ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %12
  %xtraiter784 = and i64 %12, 1
  %lcmp.mod785.not = icmp eq i64 %xtraiter784, 0
  %i.gb = add nsw i64 %12, -1
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
  %indvar643 = phi i64 [ 0, %.lr.ph436 ], [ %indvar.next, %_ZZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEEEN23PredictionConfigurationD2Ev.exit ] ; 3 uses
  %indvars.iv498 = phi i64 [ %i.ey, %.lr.ph436 ], [ %indvars.iv.next499, %_ZZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEEEN23PredictionConfigurationD2Ev.exit ] ; 3 uses
  %i.gh = mul i64 %i.fn, %indvar643               ; 4 uses
  %i.gi = add i64 %i.fv, %i.gh
  %i.gj = add i64 %i.fy, %i.gh
  %i.gk = mul i64 %i.fe, %indvar643               ; 2 uses
  %indvars.iv.next499 = add nsw i64 %indvars.iv498, -1 ; 8 uses
  %i.gl = load ptr, ptr %i.dk, align 8, !tbaa !165 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !209
  %i.go = load ptr, ptr %i.gl, align 8, !tbaa !210 ; 2 uses
  %i.gp = ptrtoint ptr %i.gn to i64
  %i.gq = ptrtoint ptr %i.go to i64
  %i.gr = sub i64 %i.gp, %i.gq
  %i.gs = ashr exact i64 %i.gr, 2                 ; 2 uses
  %.not.i.i183 = icmp ugt i64 %i.gs, %indvars.iv.next499
  br i1 %.not.i.i183, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.6, i64 noundef %indvars.iv.next499, i64 noundef %i.gs) #20
          to label %.noexc184 unwind label %bb.ag

.noexc184:                                        ; preds = %bb.aa
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %indvars.iv.next499
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !212 ; 6 uses
  %.not362402 = icmp eq i32 %i.gu, -1
  br i1 %.not362402, label %._crit_edge, label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.lr.ph

_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.lr.ph: ; preds = %bb.ab
  %i.gv = load ptr, ptr %i.dv, align 8, !tbaa !210, !noalias !666
  %i.gw = urem i32 %i.gu, 3
  %.not.i.i197 = icmp ne i32 %i.gw, 0             ; 2 uses
  %i.gx = add i32 %i.gu, -1
  %i.gy = add i32 %i.gu, 2                        ; 2 uses
  %i.gz = icmp ne i32 %i.gy, -1
  %.mux = select i1 %.not.i.i197, i32 %i.gx, i32 %i.gy
  %i.ha = zext i32 %.mux to i64
  %brmerge = or i1 %.not.i.i197, %i.gz
  br label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i

_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i: ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.lr.ph, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit204
  %.0144405 = phi i1 [ true, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.lr.ph ], [ %.1145, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit204 ] ; 3 uses
  %.0146404 = phi i32 [ 0, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.lr.ph ], [ %.1147, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit204 ] ; 4 uses
  %.sroa.0325.0403 = phi i32 [ %i.gu, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.lr.ph ], [ %.sroa.0325.2, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit204 ] ; 6 uses
  %i.hb = sext i32 %.0146404 to i64
  %i.hc = getelementptr inbounds [24 x i8], ptr %8, i64 %i.hb
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !101 ; 5 uses
  %i.he = ptrtoaddr ptr %i.hd to i64              ; 2 uses
  %i.hf = zext i32 %.sroa.0325.0403 to i64
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %i.hf
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !212, !noalias !666 ; 7 uses
  %i.hi = icmp eq i32 %i.hh, -1
  br i1 %i.hi, label %_ZN5draco30ComputeParallelogramPredictionINS_11CornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit, label %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i

_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i: ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i
  %i.hj = zext i32 %i.hh to i64
  %i.hk = load ptr, ptr %i.aw, align 8, !tbaa !233, !noalias !667 ; 3 uses
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %i.hj
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !235, !noalias !667
  %i.hn = zext i32 %i.hm to i64
  %i.ho = load ptr, ptr %i.ay, align 8, !tbaa !101 ; 3 uses
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %i.hn
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !96 ; 2 uses
  %i.hr = add nuw i32 %i.hh, 1                    ; 2 uses
  %i.hs = urem i32 %i.hr, 3
  %.not.i.i.i = icmp eq i32 %i.hs, 0
  %i.ht = add i32 %i.hh, -2
  %spec.select.i.i.i = select i1 %.not.i.i.i, i32 %i.ht, i32 %i.hr ; 2 uses
  %i.hu = icmp eq i32 %spec.select.i.i.i, -1
  br i1 %i.hu, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i
  %i.hv = zext i32 %spec.select.i.i.i to i64
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %i.hv
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !235, !noalias !668
  %i.hy = zext i32 %i.hx to i64
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i
  %storemerge.i11.i.i = phi i64 [ %i.hy, %bb.ac ], [ 4294967295, %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i ]
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %storemerge.i11.i.i
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !96 ; 2 uses
  %i.ib = urem i32 %i.hh, 3
  %.not.i13.i.i = icmp eq i32 %i.ib, 0
  br i1 %.not.i13.i.i, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread26.i.i

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread26.i.i: ; preds = %bb.ad
  %i.ic = add i32 %i.hh, -1
  br label %bb.ae

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i: ; preds = %bb.ad
  %i.id = add i32 %i.hh, 2                        ; 2 uses
  %i.ie = icmp eq i32 %i.id, -1
  br i1 %i.ie, label %_ZN5draco23GetParallelogramEntriesINS_11CornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i, label %bb.ae

bb.ae:                                            ; preds = %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread26.i.i
  %.sink.i1428.i.i = phi i32 [ %i.ic, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread26.i.i ], [ %i.id, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i ]
  %i.if = zext i32 %.sink.i1428.i.i to i64
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %i.if
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !235, !noalias !669
  %i.ii = zext i32 %i.ih to i64
  br label %_ZN5draco23GetParallelogramEntriesINS_11CornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i

_ZN5draco23GetParallelogramEntriesINS_11CornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i: ; preds = %bb.ae, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i
  %storemerge.i15.i.i = phi i64 [ %i.ii, %bb.ae ], [ 4294967295, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i ]
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %storemerge.i15.i.i
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !96 ; 2 uses
  %i.il = sext i32 %i.hq to i64
  %i.im = icmp sgt i64 %indvars.iv.next499, %i.il
  %i.in = sext i32 %i.ia to i64
  %i.io = icmp sgt i64 %indvars.iv.next499, %i.in
  %or.cond.i = select i1 %i.im, i1 %i.io, i1 false
  %i.ip = sext i32 %i.ik to i64
  %i.iq = icmp sgt i64 %indvars.iv.next499, %i.ip
  %or.cond40.i = select i1 %or.cond.i, i1 %i.iq, i1 false
  br i1 %or.cond40.i, label %bb.af, label %_ZN5draco30ComputeParallelogramPredictionINS_11CornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit

bb.af:                                            ; preds = %_ZN5draco23GetParallelogramEntriesINS_11CornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i
  br i1 %.not.i.i.i.i168, label %.loopexit371, label %.lr.ph.preheader.i186

.lr.ph.preheader.i186:                            ; preds = %bb.af
  %i.ir = mul nsw i32 %i.ik, %4
  %i.is = mul nsw i32 %i.ia, %4
  %i.it = mul nsw i32 %i.hq, %4
  %i.iu = sext i32 %i.is to i64                   ; 2 uses
  %i.iv = sext i32 %i.ir to i64                   ; 2 uses
  %i.iw = sext i32 %i.it to i64                   ; 2 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %1, i64 %i.iu ; 4 uses
  %invariant.gep49.i = getelementptr [4 x i8], ptr %1, i64 %i.iv ; 4 uses
  %invariant.gep51.i = getelementptr [4 x i8], ptr %1, i64 %i.iw ; 4 uses
  br i1 %min.iters.check727, label %.lr.ph.i188.preheader, label %vector.memcheck720

vector.memcheck720:                               ; preds = %.lr.ph.preheader.i186
  %i.ix = sub i64 %i.he, %i.a                     ; 2 uses
  %i.iy = shl nsw i64 %i.iw, 2
  %i.iz = sub i64 %i.iy, %i.ix
  %diff.check721 = icmp ugt i64 %i.iz, -32
  %i.ja = shl nsw i64 %i.iv, 2
  %i.jb = sub i64 %i.ja, %i.ix
  %diff.check722 = icmp ugt i64 %i.jb, -32
  %conflict.rdx723 = or i1 %diff.check721, %diff.check722
  %i.jc = shl nsw i64 %i.iu, 2
  %i.jd = add i64 %i.jc, %i.a
  %i.je = sub i64 %i.jd, %i.he
  %diff.check724 = icmp ugt i64 %i.je, -32
  %conflict.rdx725 = or i1 %conflict.rdx723, %diff.check724
  br i1 %conflict.rdx725, label %.lr.ph.i188.preheader, label %vector.body730

vector.body730:                                   ; preds = %vector.memcheck720, %vector.body730
  %index731 = phi i64 [ %index.next738, %vector.body730 ], [ 0, %vector.memcheck720 ] ; 5 uses
  %i.jf = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %index731 ; 2 uses
  %i.jg = getelementptr i8, ptr %i.jf, i64 16
  %wide.load732.a = load <4 x i32>, ptr %i.jf, align 4, !tbaa !96
  %wide.load733.a = load <4 x i32>, ptr %i.jg, align 4, !tbaa !96
  %i.jh = getelementptr [4 x i8], ptr %invariant.gep49.i, i64 %index731 ; 2 uses
  %i.ji = getelementptr i8, ptr %i.jh, i64 16
  %wide.load734 = load <4 x i32>, ptr %i.jh, align 4, !tbaa !96
  %wide.load735 = load <4 x i32>, ptr %i.ji, align 4, !tbaa !96
  %i.jj = getelementptr [4 x i8], ptr %invariant.gep51.i, i64 %index731 ; 2 uses
  %i.jk = getelementptr i8, ptr %i.jj, i64 16
  %wide.load736 = load <4 x i32>, ptr %i.jj, align 4, !tbaa !96
  %wide.load737 = load <4 x i32>, ptr %i.jk, align 4, !tbaa !96
  %i.jl = add <4 x i32> %wide.load734, %wide.load732.a
  %i.jm = add <4 x i32> %wide.load735, %wide.load733.a
  %i.jn = sub <4 x i32> %i.jl, %wide.load736
  %i.jo = sub <4 x i32> %i.jm, %wide.load737
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %index731 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 16
  store <4 x i32> %i.jn, ptr %i.jp, align 4, !tbaa !96
end_hunk_3
begin_hunk_4_@_ZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEE:bb.a

vector.memcheck692:                               ; preds = %.lr.ph.i206.preheader
  %i.mc = sub i64 %i.el, %i.mb
  %diff.check693 = icmp ugt i64 %i.mc, -32
  %.reass811.a = add i64 %i.gh, %invariant.op810.a
  %diff.check694.a = icmp ult i64 %.reass811.a, 31
  %conflict.rdx695.a = or i1 %diff.check693, %diff.check694.a
  %.reass813 = add i64 %i.gh, %invariant.op812.a
  %diff.check696.a = icmp ult i64 %.reass813, 31
  %conflict.rdx697.a = or i1 %conflict.rdx695.a, %diff.check696.a
  %i.md = add i64 %i.gi, %i.mb
  %i.me = add i64 %i.md, -1
  %diff.check698 = icmp ult i64 %i.me, 31
  %conflict.rdx699 = or i1 %conflict.rdx697.a, %diff.check698
  %i.mf = add i64 %i.gj, %i.mb
  %i.mg = add i64 %i.mf, -1
  %diff.check700 = icmp ult i64 %i.mg, 31
  %conflict.rdx701 = or i1 %conflict.rdx699, %diff.check700
  br i1 %conflict.rdx701, label %.lr.ph.i206.preheader751, label %vector.body706

vector.body706:                                   ; preds = %vector.memcheck692, %vector.body706
  %index707 = phi i64 [ %index.next714, %vector.body706 ], [ 0, %vector.memcheck692 ] ; 5 uses
  %vec.phi708 = phi <4 x i32> [ %i.mp, %vector.body706 ], [ zeroinitializer, %vector.memcheck692 ]
  %vec.phi709 = phi <4 x i32> [ %i.mq, %vector.body706 ], [ zeroinitializer, %vector.memcheck692 ]
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.ly, i64 %index707 ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 16
  %wide.load710 = load <4 x i32>, ptr %i.mh, align 4, !tbaa !96
  %wide.load711 = load <4 x i32>, ptr %i.mi, align 4, !tbaa !96
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.lz, i64 %index707 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 16
  %wide.load712 = load <4 x i32>, ptr %i.mj, align 4, !tbaa !96
  %wide.load713 = load <4 x i32>, ptr %i.mk, align 4, !tbaa !96
  %i.ml = sub nsw <4 x i32> %wide.load710, %wide.load712 ; 5 uses
  %i.mm = sub nsw <4 x i32> %wide.load711, %wide.load713 ; 5 uses
  %i.mn = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.ml, i1 true)
  %i.mo = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.mm, i1 true)
  %i.mp = add <4 x i32> %i.mn, %vec.phi708        ; 2 uses
  %i.mq = add <4 x i32> %i.mo, %vec.phi709        ; 2 uses
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0335.0, i64 %index707 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 16
  store <4 x i32> %i.ml, ptr %i.mr, align 4, !tbaa !96
  store <4 x i32> %i.mm, ptr %i.ms, align 4, !tbaa !96
  %i.mt = shl nuw <4 x i32> %i.ml, splat (i32 1)
  %i.mu = shl nuw <4 x i32> %i.mm, splat (i32 1)
  %i.mv = xor <4 x i32> %i.ml, splat (i32 -1)
  %i.mw = xor <4 x i32> %i.mm, splat (i32 -1)
  %i.mx = shl nuw <4 x i32> %i.mv, splat (i32 1)
  %i.my = shl nuw <4 x i32> %i.mw, splat (i32 1)
  %i.mz = or disjoint <4 x i32> %i.mx, splat (i32 1)
  %i.na = or disjoint <4 x i32> %i.my, splat (i32 1)
  %i.nb = icmp slt <4 x i32> %i.ml, zeroinitializer
  %i.nc = icmp slt <4 x i32> %i.mm, zeroinitializer
  %i.nd = select <4 x i1> %i.nb, <4 x i32> %i.mz, <4 x i32> %i.mt
  %i.ne = select <4 x i1> %i.nc, <4 x i32> %i.na, <4 x i32> %i.mu
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %index707 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 16
  store <4 x i32> %i.nd, ptr %i.nf, align 4, !tbaa !96
  store <4 x i32> %i.ne, ptr %i.ng, align 4, !tbaa !96
  %index.next714 = add nuw i64 %index707, 8       ; 2 uses
  %i.nh = icmp eq i64 %index.next714, %n.vec705
  br i1 %i.nh, label %middle.block715, label %vector.body706, !llvm.loop !647

middle.block715:                                  ; preds = %vector.body706
  %bin.rdx716 = add <4 x i32> %i.mq, %i.mp
  %i.ni = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx716) ; 2 uses
  br i1 %cmp.n717, label %._crit_edge.loopexit.i, label %.lr.ph.i206.preheader751

.lr.ph.i206.preheader751:                         ; preds = %vector.memcheck692, %.lr.ph.i206.preheader, %middle.block715
  %indvars.iv.i208.ph = phi i64 [ 0, %vector.memcheck692 ], [ 0, %.lr.ph.i206.preheader ], [ %n.vec705, %middle.block715 ]
  %.sroa.3.015.i.ph = phi i32 [ 0, %vector.memcheck692 ], [ 0, %.lr.ph.i206.preheader ], [ %i.ni, %middle.block715 ]
  br label %.lr.ph.i206

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i206, %middle.block715
  %.lcssa = phi i32 [ %i.ni, %middle.block715 ], [ %i.nt, %.lr.ph.i206 ]
  %i.nj = zext nneg i32 %.lcssa to i64
  %i.nk = shl nuw nsw i64 %i.nj, 32
  br label %._crit_edge.i205

._crit_edge.i205:                                 ; preds = %._crit_edge.loopexit.i, %._crit_edge
  %.sroa.3.0.lcssa.i = phi i64 [ %i.nk, %._crit_edge.loopexit.i ], [ 0, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  invoke void @_ZN5draco21ShannonEntropyTracker4PeekEPKji(ptr dead_on_unwind nonnull writable sret(%"struct.draco::ShannonEntropyTracker::EntropyData") align 8 %7, ptr noundef nonnull align 8 dereferenceable(48) %i.dx, ptr noundef %i.ma, i32 noundef %4)
          to label %.noexc211 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc211:                                        ; preds = %._crit_edge.i205
  %i.nl = invoke noundef i64 @_ZN5draco21ShannonEntropyTracker19GetNumberOfDataBitsERKNS0_11EntropyDataE(ptr noundef nonnull align 8 dereferenceable(20) %7)
          to label %.noexc212 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc212:                                        ; preds = %.noexc211
  %i.nm = invoke noundef i64 @_ZN5draco21ShannonEntropyTracker24GetNumberOfRAnsTableBitsERKNS0_11EntropyDataE(ptr noundef nonnull align 8 dereferenceable(20) %7)
          to label %bb.ar unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph.i206:                                      ; preds = %.lr.ph.i206.preheader751, %.lr.ph.i206
  %indvars.iv.i208 = phi i64 [ %indvars.iv.next.i209, %.lr.ph.i206 ], [ %indvars.iv.i208.ph, %.lr.ph.i206.preheader751 ] ; 5 uses
  %.sroa.3.015.i = phi i32 [ %i.nt, %.lr.ph.i206 ], [ %.sroa.3.015.i.ph, %.lr.ph.i206.preheader751 ]
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.ly, i64 %indvars.iv.i208
  %i.no = load i32, ptr %i.nn, align 4, !tbaa !96
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.lz, i64 %indvars.iv.i208
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !96
  %i.nr = sub nsw i32 %i.no, %i.nq                ; 5 uses
  %i.ns = call i32 @llvm.abs.i32(i32 %i.nr, i1 true)
  %i.nt = add nuw nsw i32 %i.ns, %.sroa.3.015.i   ; 2 uses
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0335.0, i64 %indvars.iv.i208
  store i32 %i.nr, ptr %i.nu, align 4, !tbaa !96
  %i.nv = shl nuw i32 %i.nr, 1
  %i.nw = xor i32 %i.nr, -1
  %i.nx = shl nuw i32 %i.nw, 1
  %i.ny = or disjoint i32 %i.nx, 1
  %i.nz = icmp slt i32 %i.nr, 0
  %.0.i.i = select i1 %i.nz, i32 %i.ny, i32 %i.nv
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %indvars.iv.i208
  store i32 %.0.i.i, ptr %i.oa, align 4, !tbaa !96
  %indvars.iv.next.i209 = add nuw nsw i64 %indvars.iv.i208, 1 ; 2 uses
  %exitcond.not.i210 = icmp eq i64 %indvars.iv.next.i209, %wide.trip.count.i187
  br i1 %exitcond.not.i210, label %._crit_edge.loopexit.i, label %.lr.ph.i206, !llvm.loop !648

bb.ar:                                            ; preds = %.noexc212
  %i.ob = add nsw i64 %i.nm, %i.nl                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %i.oc = icmp sgt i32 %.2148, 0                  ; 3 uses
  br i1 %i.oc, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.od = zext nneg i32 %.2148 to i64
  %i.oe = add nsw i32 %.2148, -1
  %i.of = zext nneg i32 %i.oe to i64              ; 2 uses
  %i.og = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.of ; 2 uses
  %i.oh = load i64, ptr %i.og, align 8, !tbaa !128
  %i.oi = add nsw i64 %i.oh, %i.od                ; 3 uses
  store i64 %i.oi, ptr %i.og, align 8, !tbaa !128
  %i.oj = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.of
  %i.ok = load i64, ptr %i.oj, align 8, !tbaa !128
  %i.ol = trunc i64 %i.oi to i32
  %i.om = trunc i64 %i.ok to i32
  %i.on = invoke noundef double @_ZN5draco27ComputeBinaryShannonEntropyEjj(i32 noundef %i.ol, i32 noundef %i.om)
          to label %bb.at unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.at:                                            ; preds = %bb.as
  %i.oo = sitofp i64 %i.oi to double
  %i.op = fmul double %i.on, %i.oo
  %i.oq = call double @llvm.ceil.f64(double %i.op)
  %i.or = fptosi double %i.oq to i64
  %i.os = add i64 %i.ob, %i.or
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.ar
  %.sroa.0.0 = phi i64 [ %i.os, %bb.at ], [ %i.ob, %bb.ar ]
  %.sroa.0.0.insert.ext = and i64 %.sroa.0.0, 4294967295
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0.0.insert.ext, %.sroa.3.0.lcssa.i
  store i64 %.sroa.0.0.insert.insert, ptr %9, align 8, !tbaa !96
  store i8 0, ptr %i.dy, align 8, !tbaa !675
  store i32 0, ptr %i.dw, align 4, !tbaa !676
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %i.ly, i64 %i.g
  invoke void @_ZNSt6vectorIiSaIiEE13_M_assign_auxIPKiEEvT_S5_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.dz, ptr noundef %i.ly, ptr noundef %i.ot)
          to label %_ZNSt6vectorIiSaIiEE6assignIPKivEEvT_S5_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorIiSaIiEE6assignIPKivEEvT_S5_.exit:    ; preds = %bb.au
  invoke void @_ZNSt6vectorIiSaIiEE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPiS1_EEEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.ea, ptr %.sroa.0335.0, ptr %.0.i.i.i.i.i178)
          to label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit.preheader: ; preds = %_ZNSt6vectorIiSaIiEE6assignIPKivEEvT_S5_.exit
  %.not422 = icmp slt i32 %.2148, 1
  br i1 %.not422, label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit._crit_edge.thread, label %.lr.ph424

.lr.ph424:                                        ; preds = %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit.preheader
  %i.ou = zext nneg i32 %.2148 to i64             ; 5 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ou ; 5 uses
  %i.ow = add nsw i32 %.2148, -1
  %i.ox = zext nneg i32 %i.ow to i64              ; 2 uses
  %i.oy = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.ox
  %i.oz = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ox
  %or.cond.i.i239 = icmp eq i32 %.2148, 1
  %.ptr35.i.i = getelementptr inbounds i8, ptr %i.ov, i64 -1 ; 3 uses
  %i.pa = sub nsw i64 0, %i.ou
  %.reass815 = add i64 %i.gk, %invariant.op814
  %diff.check644.a = icmp ult i64 %.reass815, 31
  %invariant.op = or i1 %diff.check642.a, %diff.check644.a
  %invariant.op809.reass = add i64 %i.gk, %invariant.op816
  br label %.lr.ph.preheader.i.i.i

_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit._crit_edge: ; preds = %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit
  br i1 %i.oc, label %bb.ci, label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit._crit_edge.thread

.lr.ph.preheader.i.i.i:                           ; preds = %.lr.ph424, %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit
  %indvar = phi i64 [ 0, %.lr.ph424 ], [ %i.pb, %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit ]
  %.0131423 = phi i32 [ 1, %.lr.ph424 ], [ %i.wb, %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit ] ; 5 uses
  %i.pb = add nuw nsw i64 %indvar, 1              ; 3 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.b, i8 1, i64 %i.ou, i1 false), !tbaa !239
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.b, i8 0, i64 %i.pb, i1 false), !tbaa !239
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.0131423, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %.preheader368

.preheader368:                                    ; preds = %.lr.ph.preheader.i.i.i, %_ZSt16next_permutationIPbEbT_S1_.exit
  br i1 %.not.i.i.i.i168, label %.lr.ph417.preheader, label %.lr.ph.preheader

.lr.ph417.preheader:                              ; preds = %.lr.ph.preheader, %.preheader368
  br label %.lr.ph417

.lr.ph.preheader:                                 ; preds = %.preheader368
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.sroa.0344.0, i8 0, i64 %i.ex, i1 false), !tbaa !96
  br label %.lr.ph417.preheader

.preheader366:                                    ; preds = %bb.av
  br i1 %.not.i.i.i.i168, label %._crit_edge421.thread, label %.lr.ph420.preheader

.lr.ph420.preheader:                              ; preds = %.preheader366
  br i1 %min.iters.check666, label %.lr.ph420.preheader745, label %vector.body669

vector.body669:                                   ; preds = %.lr.ph420.preheader, %vector.body669
  %index670 = phi i64 [ %index.next672, %vector.body669 ], [ 0, %.lr.ph420.preheader ] ; 2 uses
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0344.0, i64 %index670 ; 2 uses
  %wide.load671 = load <4 x i32>, ptr %i.pc, align 4, !tbaa !96
  %i.pd = sdiv <4 x i32> %wide.load671, %broadcast.splat
  store <4 x i32> %i.pd, ptr %i.pc, align 4, !tbaa !96
  %index.next672 = add nuw i64 %index670, 4       ; 2 uses
  %i.pe = icmp eq i64 %index.next672, %n.vec668
  br i1 %i.pe, label %middle.block673, label %vector.body669, !llvm.loop !649

middle.block673:                                  ; preds = %vector.body669
  br i1 %cmp.n674, label %.lr.ph.i221.preheader, label %.lr.ph420.preheader745

.lr.ph420.preheader745:                           ; preds = %.lr.ph420.preheader, %middle.block673
  %indvars.iv483.ph = phi i64 [ 0, %.lr.ph420.preheader ], [ %n.vec668, %middle.block673 ]
  br label %.lr.ph420

._crit_edge421.thread:                            ; preds = %.preheader366
  %i.pf = load ptr, ptr %i.cr, align 8, !tbaa !236
  br label %._crit_edge.i217

.lr.ph417:                                        ; preds = %.lr.ph417.preheader, %bb.av
  %indvars.iv479 = phi i64 [ %indvars.iv.next480, %bb.av ], [ 0, %.lr.ph417.preheader ] ; 4 uses
  %.0127415 = phi i8 [ %.1128, %bb.av ], [ 0, %.lr.ph417.preheader ] ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv479
  %i.ph = load i8, ptr %i.pg, align 1, !tbaa !239, !range !61, !noundef !62
  %i.pi = trunc nuw i8 %i.ph to i1
  br i1 %i.pi, label %bb.av, label %.preheader365

.preheader365:                                    ; preds = %.lr.ph417
  br i1 %.not.i.i.i.i168, label %._crit_edge414, label %.lr.ph413

.lr.ph413:                                        ; preds = %.preheader365
  %i.pj = getelementptr inbounds nuw [24 x i8], ptr %8, i64 %indvars.iv479
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !101 ; 8 uses
  br i1 %min.iters.check679, label %scalar.ph678.preheader, label %vector.memcheck676

vector.memcheck676:                               ; preds = %.lr.ph413
  %scevgep677 = getelementptr i8, ptr %i.pk, i64 %i.fh
  %bound0 = icmp ult ptr %.sroa.0344.0, %scevgep677
  %bound1 = icmp ult ptr %i.pk, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph678.preheader, label %vector.body682

vector.body682:                                   ; preds = %vector.memcheck676, %vector.body682
  %index683 = phi i64 [ %index.next688, %vector.body682 ], [ 0, %vector.memcheck676 ] ; 3 uses
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.pk, i64 %index683 ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 16
  %wide.load684 = load <4 x i32>, ptr %i.pl, align 4, !tbaa !96, !alias.scope !677
  %wide.load685 = load <4 x i32>, ptr %i.pm, align 4, !tbaa !96, !alias.scope !677
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0344.0, i64 %index683 ; 3 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 16 ; 2 uses
  %wide.load686 = load <4 x i32>, ptr %i.pn, align 4, !tbaa !96, !alias.scope !678, !noalias !677
  %wide.load687 = load <4 x i32>, ptr %i.po, align 4, !tbaa !96, !alias.scope !678, !noalias !677
  %i.pp = add nsw <4 x i32> %wide.load686, %wide.load684
  %i.pq = add nsw <4 x i32> %wide.load687, %wide.load685
  store <4 x i32> %i.pp, ptr %i.pn, align 4, !tbaa !96, !alias.scope !678, !noalias !677
  store <4 x i32> %i.pq, ptr %i.po, align 4, !tbaa !96, !alias.scope !678, !noalias !677
  %index.next688 = add nuw i64 %index683, 8       ; 2 uses
  %i.pr = icmp eq i64 %index.next688, %n.vec681
  br i1 %i.pr, label %middle.block689, label %vector.body682, !llvm.loop !653

middle.block689:                                  ; preds = %vector.body682
  br i1 %cmp.n690, label %._crit_edge414, label %scalar.ph678.preheader

scalar.ph678.preheader:                           ; preds = %vector.memcheck676, %.lr.ph413, %middle.block689
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck676 ], [ 0, %.lr.ph413 ], [ %n.vec681, %middle.block689 ] ; 3 uses
  br i1 %lcmp.mod783.not, label %scalar.ph678.prol.loopexit, label %scalar.ph678.prol

scalar.ph678.prol:                                ; preds = %scalar.ph678.preheader, %scalar.ph678.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph678.prol ], [ %indvars.iv.ph, %scalar.ph678.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph678.prol ], [ 0, %scalar.ph678.preheader ]
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %i.pk, i64 %indvars.iv.prol
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !96
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0344.0, i64 %indvars.iv.prol ; 2 uses
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !96
  %i.pw = add nsw i32 %i.pv, %i.pt
  store i32 %i.pw, ptr %i.pu, align 4, !tbaa !96
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter782
  br i1 %prol.iter.cmp.not, label %scalar.ph678.prol.loopexit, label %scalar.ph678.prol, !llvm.loop !654

scalar.ph678.prol.loopexit:                       ; preds = %scalar.ph678.prol, %scalar.ph678.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph678.preheader ], [ %indvars.iv.next.prol, %scalar.ph678.prol ]
  %i.px = sub nsw i64 %indvars.iv.ph, %12
  %i.py = icmp ugt i64 %i.px, -4
  br i1 %i.py, label %._crit_edge414, label %scalar.ph678

._crit_edge414:                                   ; preds = %scalar.ph678.prol.loopexit, %scalar.ph678, %middle.block689, %.preheader365
  %i.pz = trunc nuw nsw i64 %indvars.iv479 to i32
  %i.qa = shl nuw i32 1, %i.pz
  %i.qb = trunc i32 %i.qa to i8
  %i.qc = or i8 %.0127415, %i.qb
  br label %bb.av

scalar.ph678:                                     ; preds = %scalar.ph678.prol.loopexit, %scalar.ph678
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph678 ], [ %indvars.iv.unr, %scalar.ph678.prol.loopexit ] ; 6 uses
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %i.pk, i64 %indvars.iv
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !96
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0344.0, i64 %indvars.iv ; 2 uses
  %i.qg = load i32, ptr %i.qf, align 4, !tbaa !96
  %i.qh = add nsw i32 %i.qg, %i.qe
  store i32 %i.qh, ptr %i.qf, align 4, !tbaa !96
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.pk, i64 %indvars.iv.next
  %i.qj = load i32, ptr %i.qi, align 4, !tbaa !96
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0344.0, i64 %indvars.iv.next ; 2 uses
  %i.ql = load i32, ptr %i.qk, align 4, !tbaa !96
  %i.qm = add nsw i32 %i.ql, %i.qj
  store i32 %i.qm, ptr %i.qk, align 4, !tbaa !96
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %i.pk, i64 %indvars.iv.next.1
  %i.qo = load i32, ptr %i.qn, align 4, !tbaa !96
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0344.0, i64 %indvars.iv.next.1 ; 2 uses
  %i.qq = load i32, ptr %i.qp, align 4, !tbaa !96
  %i.qr = add nsw i32 %i.qq, %i.qo
  store i32 %i.qr, ptr %i.qp, align 4, !tbaa !96
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.pk, i64 %indvars.iv.next.2
  %i.qt = load i32, ptr %i.qs, align 4, !tbaa !96
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0344.0, i64 %indvars.iv.next.2 ; 2 uses
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !96
  %i.qw = add nsw i32 %i.qv, %i.qt
  store i32 %i.qw, ptr %i.qu, align 4, !tbaa !96
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %12
  br i1 %exitcond.not.3, label %._crit_edge414, label %scalar.ph678, !llvm.loop !655

bb.av:                                            ; preds = %.lr.ph417, %._crit_edge414
  %.1128 = phi i8 [ %.0127415, %.lr.ph417 ], [ %i.qc, %._crit_edge414 ] ; 2 uses
  %indvars.iv.next480 = add nuw nsw i64 %indvars.iv479, 1 ; 2 uses
  %exitcond482.not = icmp eq i64 %indvars.iv.next480, %i.ou
  br i1 %exitcond482.not, label %.preheader366, label %.lr.ph417, !llvm.loop !656

.lr.ph.i221.preheader:                            ; preds = %.lr.ph420, %middle.block673
  %i.qx = load ptr, ptr %i.cr, align 8, !tbaa !236 ; 5 uses
  br i1 %min.iters.check651, label %.lr.ph.i221.preheader744, label %vector.memcheck640

vector.memcheck640:                               ; preds = %.lr.ph.i221.preheader
  %i.qy = ptrtoaddr ptr %i.qx to i64              ; 3 uses
  %i.qz = sub i64 %i.el, %i.qy
  %diff.check641 = icmp ugt i64 %i.qz, -32
  %conflict.rdx645.reass = or i1 %diff.check641, %invariant.op
  %i.ra = sub i64 %i.ed, %i.qy
  %diff.check646 = icmp ugt i64 %i.ra, -32
  %conflict.rdx647 = or i1 %conflict.rdx645.reass, %diff.check646
  %.reass = add i64 %i.qy, %invariant.op809.reass
  %diff.check648 = icmp ult i64 %.reass, 31
  %conflict.rdx649 = or i1 %conflict.rdx647, %diff.check648
  br i1 %conflict.rdx649, label %.lr.ph.i221.preheader744, label %vector.body654

vector.body654:                                   ; preds = %vector.memcheck640, %vector.body654
  %index655 = phi i64 [ %index.next661, %vector.body654 ], [ 0, %vector.memcheck640 ] ; 5 uses
  %vec.phi = phi <4 x i32> [ %i.rj, %vector.body654 ], [ zeroinitializer, %vector.memcheck640 ]
  %vec.phi656 = phi <4 x i32> [ %i.rk, %vector.body654 ], [ zeroinitializer, %vector.memcheck640 ]
  %i.rb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0344.0, i64 %index655 ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 16
  %wide.load657 = load <4 x i32>, ptr %i.rb, align 4, !tbaa !96
  %wide.load658 = load <4 x i32>, ptr %i.rc, align 4, !tbaa !96
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %i.lz, i64 %index655 ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 16
  %wide.load659 = load <4 x i32>, ptr %i.rd, align 4, !tbaa !96
  %wide.load660 = load <4 x i32>, ptr %i.re, align 4, !tbaa !96
  %i.rf = sub nsw <4 x i32> %wide.load657, %wide.load659 ; 5 uses
  %i.rg = sub nsw <4 x i32> %wide.load658, %wide.load660 ; 5 uses
  %i.rh = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.rf, i1 true)
  %i.ri = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.rg, i1 true)
  %i.rj = add <4 x i32> %i.rh, %vec.phi           ; 2 uses
  %i.rk = add <4 x i32> %i.ri, %vec.phi656        ; 2 uses
  %i.rl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0335.0, i64 %index655 ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 16
  store <4 x i32> %i.rf, ptr %i.rl, align 4, !tbaa !96
  store <4 x i32> %i.rg, ptr %i.rm, align 4, !tbaa !96
  %i.rn = shl nuw <4 x i32> %i.rf, splat (i32 1)
  %i.ro = shl nuw <4 x i32> %i.rg, splat (i32 1)
  %i.rp = xor <4 x i32> %i.rf, splat (i32 -1)
  %i.rq = xor <4 x i32> %i.rg, splat (i32 -1)
  %i.rr = shl nuw <4 x i32> %i.rp, splat (i32 1)
  %i.rs = shl nuw <4 x i32> %i.rq, splat (i32 1)
  %i.rt = or disjoint <4 x i32> %i.rr, splat (i32 1)
  %i.ru = or disjoint <4 x i32> %i.rs, splat (i32 1)
  %i.rv = icmp slt <4 x i32> %i.rf, zeroinitializer
  %i.rw = icmp slt <4 x i32> %i.rg, zeroinitializer
  %i.rx = select <4 x i1> %i.rv, <4 x i32> %i.rt, <4 x i32> %i.rn
  %i.ry = select <4 x i1> %i.rw, <4 x i32> %i.ru, <4 x i32> %i.ro
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %i.qx, i64 %index655 ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 16
  store <4 x i32> %i.rx, ptr %i.rz, align 4, !tbaa !96
  store <4 x i32> %i.ry, ptr %i.sa, align 4, !tbaa !96
  %index.next661 = add nuw i64 %index655, 8       ; 2 uses
  %i.sb = icmp eq i64 %index.next661, %n.vec653
  br i1 %i.sb, label %middle.block662, label %vector.body654, !llvm.loop !657

middle.block662:                                  ; preds = %vector.body654
  %bin.rdx = add <4 x i32> %i.rk, %i.rj
  %i.sc = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n663, label %._crit_edge.i217, label %.lr.ph.i221.preheader744

.lr.ph.i221.preheader744:                         ; preds = %vector.memcheck640, %.lr.ph.i221.preheader, %middle.block662
  %indvars.iv.i223.ph = phi i64 [ 0, %vector.memcheck640 ], [ 0, %.lr.ph.i221.preheader ], [ %n.vec653, %middle.block662 ]
  %.sroa.3.015.i224.ph = phi i32 [ 0, %vector.memcheck640 ], [ 0, %.lr.ph.i221.preheader ], [ %i.sc, %middle.block662 ]
  br label %.lr.ph.i221

._crit_edge.i217:                                 ; preds = %.lr.ph.i221, %middle.block662, %._crit_edge421.thread
  %i.sd = phi ptr [ %i.pf, %._crit_edge421.thread ], [ %i.qx, %middle.block662 ], [ %i.qx, %.lr.ph.i221 ]
  %.sroa.3.0.lcssa.i218 = phi i32 [ 0, %._crit_edge421.thread ], [ %i.sc, %middle.block662 ], [ %i.sm, %.lr.ph.i221 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  invoke void @_ZN5draco21ShannonEntropyTracker4PeekEPKji(ptr dead_on_unwind nonnull writable sret(%"struct.draco::ShannonEntropyTracker::EntropyData") align 8 %6, ptr noundef nonnull align 8 dereferenceable(48) %i.dx, ptr noundef %i.sd, i32 noundef %4)
          to label %.noexc229 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc229:                                        ; preds = %._crit_edge.i217
  %i.se = invoke noundef i64 @_ZN5draco21ShannonEntropyTracker19GetNumberOfDataBitsERKNS0_11EntropyDataE(ptr noundef nonnull align 8 dereferenceable(20) %6)
          to label %.noexc230 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc230:                                        ; preds = %.noexc229
  %i.sf = invoke noundef i64 @_ZN5draco21ShannonEntropyTracker24GetNumberOfRAnsTableBitsERKNS0_11EntropyDataE(ptr noundef nonnull align 8 dereferenceable(20) %6)
          to label %bb.aw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph.i221:                                      ; preds = %.lr.ph.i221.preheader744, %.lr.ph.i221
  %indvars.iv.i223 = phi i64 [ %indvars.iv.next.i226, %.lr.ph.i221 ], [ %indvars.iv.i223.ph, %.lr.ph.i221.preheader744 ] ; 5 uses
  %.sroa.3.015.i224 = phi i32 [ %i.sm, %.lr.ph.i221 ], [ %.sroa.3.015.i224.ph, %.lr.ph.i221.preheader744 ]
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0344.0, i64 %indvars.iv.i223
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !96
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %i.lz, i64 %indvars.iv.i223
  %i.sj = load i32, ptr %i.si, align 4, !tbaa !96
  %i.sk = sub nsw i32 %i.sh, %i.sj                ; 5 uses
  %i.sl = call i32 @llvm.abs.i32(i32 %i.sk, i1 true)
  %i.sm = add nuw nsw i32 %i.sl, %.sroa.3.015.i224 ; 2 uses
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0335.0, i64 %indvars.iv.i223
  store i32 %i.sk, ptr %i.sn, align 4, !tbaa !96
  %i.so = shl nuw i32 %i.sk, 1
  %i.sp = xor i32 %i.sk, -1
  %i.sq = shl nuw i32 %i.sp, 1
  %i.sr = or disjoint i32 %i.sq, 1
  %i.ss = icmp slt i32 %i.sk, 0
  %.0.i.i225 = select i1 %i.ss, i32 %i.sr, i32 %i.so
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %i.qx, i64 %indvars.iv.i223
  store i32 %.0.i.i225, ptr %i.st, align 4, !tbaa !96
  %indvars.iv.next.i226 = add nuw nsw i64 %indvars.iv.i223, 1 ; 2 uses
  %exitcond.not.i227 = icmp eq i64 %indvars.iv.next.i226, %wide.trip.count.i187
  br i1 %exitcond.not.i227, label %._crit_edge.i217, label %.lr.ph.i221, !llvm.loop !658

.lr.ph420:                                        ; preds = %.lr.ph420.preheader745, %.lr.ph420
  %indvars.iv483 = phi i64 [ %indvars.iv.next484, %.lr.ph420 ], [ %indvars.iv483.ph, %.lr.ph420.preheader745 ] ; 2 uses
  %i.su = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0344.0, i64 %indvars.iv483 ; 2 uses
  %i.sv = load i32, ptr %i.su, align 4, !tbaa !96
  %i.sw = sdiv i32 %i.sv, %.0131423
  store i32 %i.sw, ptr %i.su, align 4, !tbaa !96
  %indvars.iv.next484 = add nuw nsw i64 %indvars.iv483, 1 ; 2 uses
  %exitcond488.not.a = icmp eq i64 %indvars.iv.next484, %12
  br i1 %exitcond488.not.a, label %.lr.ph.i221.preheader, label %.lr.ph420, !llvm.loop !659

bb.aw:                                            ; preds = %.noexc230
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.sx = load i64, ptr %i.oy, align 8, !tbaa !128
  %i.sy = load i64, ptr %i.oz, align 8, !tbaa !128 ; 2 uses
  %i.sz = trunc i64 %i.sy to i32
  %i.ta = trunc i64 %i.sx to i32
  %i.tb = add i32 %.0131423, %i.ta
  %i.tc = invoke noundef double @_ZN5draco27ComputeBinaryShannonEntropyEjj(i32 noundef %i.sz, i32 noundef %i.tb)
          to label %bb.ax unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ax:                                            ; preds = %bb.aw
  %i.td = add nsw i64 %i.sf, %i.se
  %.sroa.0.0.extract.trunc = trunc i64 %i.td to i32
  %i.te = sitofp i64 %i.sy to double
  %i.tf = fmul double %i.tc, %i.te
  %i.tg = call double @llvm.ceil.f64(double %i.tf)
  %i.th = fptosi double %i.tg to i64
  %i.ti = trunc i64 %i.th to i32
  %i.tj = add i32 %i.ti, %.sroa.0.0.extract.trunc ; 3 uses
  %i.tk = load i32, ptr %9, align 8, !tbaa !679   ; 2 uses
  %i.tl = icmp slt i32 %i.tj, %i.tk
  br i1 %i.tl, label %_ZNK5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE5ErrorltERKS7_.exit.thread, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.tm = icmp sle i32 %i.tj, %i.tk
  %i.tn = load i32, ptr %i.eb, align 4
  %i.to = icmp slt i32 %.sroa.3.0.lcssa.i218, %i.tn
  %or.cond361 = select i1 %i.tm, i1 %i.to, i1 false
  br i1 %or.cond361, label %_ZNK5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE5ErrorltERKS7_.exit.thread, label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit238

_ZNK5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE5ErrorltERKS7_.exit.thread: ; preds = %bb.ay, %bb.ax
  %.sroa.13.0.insert.ext314 = zext nneg i32 %.sroa.3.0.lcssa.i218 to i64
  %.sroa.13.0.insert.shift315 = shl nuw nsw i64 %.sroa.13.0.insert.ext314, 32
  %.sroa.0.0.insert.ext308 = zext i32 %i.tj to i64
  %.sroa.0.0.insert.insert310 = or disjoint i64 %.sroa.13.0.insert.shift315, %.sroa.0.0.insert.ext308
  store i64 %.sroa.0.0.insert.insert310, ptr %9, align 8, !tbaa !96
  store i8 %.1128, ptr %i.dy, align 8, !tbaa !675
  store i32 %.0131423, ptr %i.dw, align 4, !tbaa !676
  %i.tp = load ptr, ptr %i.ef, align 8, !tbaa !102
  %i.tq = load ptr, ptr %i.dz, align 8, !tbaa !101 ; 8 uses
  %i.tr = ptrtoint ptr %i.tp to i64
  %i.ts = ptrtoint ptr %i.tq to i64               ; 2 uses
  %i.tt = sub i64 %i.tr, %i.ts                    ; 2 uses
  %i.tu = icmp ugt i64 %i.ee, %i.tt
  br i1 %i.tu, label %bb.az, label %bb.be

bb.az:                                            ; preds = %_ZNK5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE5ErrorltERKS7_.exit.thread
  br i1 %i.ej, label %.invoke612, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i: ; preds = %bb.az
  %i.tv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ee) #18
          to label %.noexc285 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc285:                                        ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i
  br i1 %i.eh, label %bb.ba, label %bb.bb, !prof !140

bb.ba:                                            ; preds = %.noexc285
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.tv, ptr align 4 %.sroa.0344.0, i64 %i.ee, i1 false)
  br label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPiS1_EEEES5_mT_S7_.exit.i

bb.bb:                                            ; preds = %.noexc285
  br i1 %i.ei, label %bb.bc, label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPiS1_EEEES5_mT_S7_.exit.i

bb.bc:                                            ; preds = %bb.bb
  %i.tw = load i32, ptr %.sroa.0344.0, align 4, !tbaa !96
  store i32 %i.tw, ptr %i.tv, align 4, !tbaa !96
  br label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPiS1_EEEES5_mT_S7_.exit.i

_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPiS1_EEEES5_mT_S7_.exit.i: ; preds = %bb.bc, %bb.bb, %bb.ba
  %.not.i.i283 = icmp eq ptr %i.tq, null
  br i1 %.not.i.i283, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i, label %bb.bd

bb.bd:                                            ; preds = %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPiS1_EEEES5_mT_S7_.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.tq, i64 noundef %i.tt) #19
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i: ; preds = %bb.bd, %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPiS1_EEEES5_mT_S7_.exit.i
  store ptr %i.tv, ptr %i.dz, align 8, !tbaa !101
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tv, i64 %i.ee ; 2 uses
  store ptr %i.tx, ptr %i.eg, align 8, !tbaa !149
  store ptr %i.tx, ptr %i.ef, align 8, !tbaa !102
  br label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit236

bb.be:                                            ; preds = %_ZNK5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE5ErrorltERKS7_.exit.thread
  %i.ty = load ptr, ptr %i.eg, align 8, !tbaa !149 ; 5 uses
  %i.tz = ptrtoint ptr %i.ty to i64
  %i.ua = sub i64 %i.tz, %i.ts                    ; 5 uses
  %.not.i281 = icmp ult i64 %i.ua, %i.ee
  br i1 %.not.i281, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  br i1 %i.eh, label %bb.bg, label %bb.bh, !prof !140

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.tq, ptr align 4 %.sroa.0344.0, i64 %i.ee, i1 false)
  %.pre.i = load ptr, ptr %i.eg, align 8, !tbaa !149
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

bb.bh:                                            ; preds = %bb.bf
  br i1 %i.ei, label %bb.bi, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

bb.bi:                                            ; preds = %bb.bh
  %i.ub = load i32, ptr %.sroa.0344.0, align 4, !tbaa !96
  store i32 %i.ub, ptr %i.tq, align 4, !tbaa !96
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i: ; preds = %bb.bi, %bb.bh, %bb.bg
  %i.uc = phi ptr [ %.pre.i, %bb.bg ], [ %i.ty, %bb.bh ], [ %i.ty, %bb.bi ]
  %i.ud = getelementptr inbounds i8, ptr %i.tq, i64 %i.ee ; 2 uses
  %.not.i18.i = icmp eq ptr %i.uc, %i.ud
  br i1 %.not.i18.i, label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit236, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i282

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i282:     ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i
  store ptr %i.ud, ptr %i.eg, align 8, !tbaa !149
  br label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit236

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %bb.be
  %.sink.i.i = getelementptr inbounds i8, ptr %.sroa.0344.0, i64 %i.ua ; 3 uses
  %i.ue = ptrtoint ptr %.sink.i.i to i64
  %i.uf = icmp sgt i64 %i.ua, 4
  br i1 %i.uf, label %bb.bj, label %bb.bk, !prof !140

bb.bj:                                            ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.tq, ptr align 4 %.sroa.0344.0, i64 %i.ua, i1 false)
  %.pre24.i = load ptr, ptr %i.eg, align 8, !tbaa !149
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit19.i

bb.bk:                                            ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.ug = icmp eq i64 %i.ua, 4
  br i1 %i.ug, label %bb.bl, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit19.i

bb.bl:                                            ; preds = %bb.bk
  %i.uh = load i32, ptr %.sroa.0344.0, align 4, !tbaa !96
  store i32 %i.uh, ptr %i.tq, align 4, !tbaa !96
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit19.i

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit19.i: ; preds = %bb.bl, %bb.bk, %bb.bj
  %i.ui = phi ptr [ %.pre24.i, %bb.bj ], [ %i.ty, %bb.bk ], [ %i.ty, %bb.bl ] ; 3 uses
  %i.uj = sub i64 %i.ec, %i.ue                    ; 4 uses
  %i.uk = icmp sgt i64 %i.uj, 4
  br i1 %i.uk, label %bb.bm, label %bb.bn, !prof !140

bb.bm:                                            ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit19.i
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ui, ptr align 4 %.sink.i.i, i64 %i.uj, i1 false)
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit.i

bb.bn:                                            ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit19.i
  %i.ul = icmp eq i64 %i.uj, 4
  br i1 %i.ul, label %bb.bo, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit.i

bb.bo:                                            ; preds = %bb.bn
  %i.um = load i32, ptr %.sink.i.i, align 4, !tbaa !96
  store i32 %i.um, ptr %i.ui, align 4, !tbaa !96
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit.i

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit.i: ; preds = %bb.bo, %bb.bn, %bb.bm
  %i.un = getelementptr inbounds i8, ptr %i.ui, i64 %i.uj
  store ptr %i.un, ptr %i.eg, align 8, !tbaa !149
  br label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit236

_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit236: ; preds = %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i282, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit.i
  %i.uo = load ptr, ptr %i.en, align 8, !tbaa !102
  %i.up = load ptr, ptr %i.ea, align 8, !tbaa !101 ; 8 uses
  %i.uq = ptrtoint ptr %i.uo to i64
  %i.ur = ptrtoint ptr %i.up to i64               ; 2 uses
  %i.us = sub i64 %i.uq, %i.ur                    ; 2 uses
  %i.ut = icmp ugt i64 %i.em, %i.us
  br i1 %i.ut, label %bb.bp, label %bb.bu

bb.bp:                                            ; preds = %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit236
  br i1 %i.er, label %.invoke612, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i296

.invoke612:                                       ; preds = %bb.bp, %bb.az
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #20
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke612
  unreachable

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i296: ; preds = %bb.bp
  %i.uu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.em) #18
          to label %.noexc301 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc301:                                        ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i296
  br i1 %i.ep, label %bb.bq, label %bb.br, !prof !140

bb.bq:                                            ; preds = %.noexc301
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.uu, ptr align 4 %.sroa.0335.0, i64 %i.em, i1 false)
  br label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPiS1_EEEES5_mT_S7_.exit.i297

bb.br:                                            ; preds = %.noexc301
  br i1 %i.eq, label %bb.bs, label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPiS1_EEEES5_mT_S7_.exit.i297

bb.bs:                                            ; preds = %bb.br
  %i.uv = load i32, ptr %.sroa.0335.0, align 4, !tbaa !96
  store i32 %i.uv, ptr %i.uu, align 4, !tbaa !96
  br label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPiS1_EEEES5_mT_S7_.exit.i297

end_hunk_4
begin_hunk_5_@_ZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEE:bb.a
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.vh, ptr align 4 %.sink.i.i292, i64 %i.vi, i1 false)
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit.i294

bb.cd:                                            ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit19.i293
  %i.vk = icmp eq i64 %i.vi, 4
  br i1 %i.vk, label %bb.ce, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit.i294

bb.ce:                                            ; preds = %bb.cd
  %i.vl = load i32, ptr %.sink.i.i292, align 4, !tbaa !96
  store i32 %i.vl, ptr %i.vh, align 4, !tbaa !96
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit.i294

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit.i294: ; preds = %bb.ce, %bb.cd, %bb.cc
  %i.vm = getelementptr inbounds i8, ptr %i.vh, i64 %i.vi
  store ptr %i.vm, ptr %i.eo, align 8, !tbaa !149
  br label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit238

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke, %._crit_edge.i217, %.noexc229, %.noexc230, %bb.aw, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i296, %_ZNSt6vectorIiSaIiEE6assignIPKivEEvT_S5_.exit, %bb.au, %bb.as, %.noexc212, %.noexc211, %._crit_edge.i205, %.invoke612
  %lpad.loopexit.split-lp753 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit238: ; preds = %bb.ay, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i299, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i287, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i289, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit.i294
  br i1 %or.cond.i.i239, label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit, label %bb.cf

bb.cf:                                            ; preds = %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit238
  %.pre.i.i = load i8, ptr %.ptr35.i.i, align 1, !tbaa !239, !range !61
  br label %_ZSt9__reverseIPbEvT_S1_St26random_access_iterator_tag.exit.i.i

_ZSt9__reverseIPbEvT_S1_St26random_access_iterator_tag.exit.i.i: ; preds = %bb.ch, %bb.cf
  %i.vn = phi i8 [ %.pre.i.i, %bb.cf ], [ %i.vo, %bb.ch ]
  %.021.idx.i.i = phi i64 [ -1, %bb.cf ], [ %.021.add.i.i, %bb.ch ] ; 3 uses
  %.021.add.i.i = add nsw i64 %.021.idx.i.i, -1   ; 4 uses
  %.ptr.i.i = getelementptr inbounds i8, ptr %i.ov, i64 %.021.add.i.i
  %i.vo = load i8, ptr %.ptr.i.i, align 1, !tbaa !239, !range !61, !noundef !62 ; 2 uses
  %i.vp = icmp samesign ult i8 %i.vo, %i.vn
  br i1 %i.vp, label %.preheader.i.i.preheader, label %bb.ch

.preheader.i.i.preheader:                         ; preds = %_ZSt9__reverseIPbEvT_S1_St26random_access_iterator_tag.exit.i.i
  %.ptr.i.i.le = getelementptr inbounds i8, ptr %i.ov, i64 %.021.add.i.i
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.0.i.i240 = phi ptr [ %i.vq, %.preheader.i.i ], [ %i.ov, %.preheader.i.i.preheader ]
  %i.vq = getelementptr inbounds i8, ptr %.0.i.i240, i64 -1 ; 3 uses
  %i.vr = load i8, ptr %i.vq, align 1, !tbaa !239, !range !61, !noundef !62
  %.not54.i.i = icmp eq i8 %i.vr, 0
  br i1 %.not54.i.i, label %.preheader.i.i, label %bb.cg, !llvm.loop !4

bb.cg:                                            ; preds = %.preheader.i.i
  store i8 1, ptr %.ptr.i.i.le, align 1, !tbaa !239
  store i8 0, ptr %i.vq, align 1, !tbaa !239
  %.not.i.i241 = icmp eq i64 %.021.idx.i.i, -1
  br i1 %.not.i.i241, label %_ZSt16next_permutationIPbEbT_S1_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.cg
  %.021.ptr.le.i.i = getelementptr inbounds i8, ptr %i.ov, i64 %.021.idx.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.preheader.i
  %.014.i.i.i = phi ptr [ %.0.i.i.i, %.lr.ph.i.i.i ], [ %.ptr35.i.i, %.lr.ph.i.i.preheader.i ] ; 3 uses
  %.0913.i.i.i = phi ptr [ %i.vu, %.lr.ph.i.i.i ], [ %.021.ptr.le.i.i, %.lr.ph.i.i.preheader.i ] ; 3 uses
  %i.vs = load i8, ptr %.0913.i.i.i, align 1, !tbaa !239, !range !61, !noundef !62
  %i.vt = load i8, ptr %.014.i.i.i, align 1, !tbaa !239, !range !61, !noundef !62
  store i8 %i.vt, ptr %.0913.i.i.i, align 1, !tbaa !239
  store i8 %i.vs, ptr %.014.i.i.i, align 1, !tbaa !239
  %i.vu = getelementptr inbounds nuw i8, ptr %.0913.i.i.i, i64 1 ; 2 uses
  %.0.i.i.i = getelementptr inbounds i8, ptr %.014.i.i.i, i64 -1 ; 2 uses
  %i.vv = icmp ult ptr %i.vu, %.0.i.i.i
  br i1 %i.vv, label %.lr.ph.i.i.i, label %_ZSt16next_permutationIPbEbT_S1_.exit, !llvm.loop !5

bb.ch:                                            ; preds = %_ZSt9__reverseIPbEvT_S1_St26random_access_iterator_tag.exit.i.i
  %i.vw = icmp eq i64 %.021.add.i.i, %i.pa
  br i1 %i.vw, label %.lr.ph.i28.i.i, label %_ZSt9__reverseIPbEvT_S1_St26random_access_iterator_tag.exit.i.i, !llvm.loop !6

.lr.ph.i28.i.i:                                   ; preds = %bb.ch, %.lr.ph.i28.i.i
  %.014.i29.i.i = phi ptr [ %.0.i31.i.i, %.lr.ph.i28.i.i ], [ %.ptr35.i.i, %bb.ch ] ; 3 uses
  %.0913.i30.i.i = phi ptr [ %i.vz, %.lr.ph.i28.i.i ], [ %i.b, %bb.ch ] ; 3 uses
  %i.vx = load i8, ptr %.0913.i30.i.i, align 1, !tbaa !239, !range !61, !noundef !62
  %i.vy = load i8, ptr %.014.i29.i.i, align 1, !tbaa !239, !range !61, !noundef !62
  store i8 %i.vy, ptr %.0913.i30.i.i, align 1, !tbaa !239
  store i8 %i.vx, ptr %.014.i29.i.i, align 1, !tbaa !239
  %i.vz = getelementptr inbounds nuw i8, ptr %.0913.i30.i.i, i64 1 ; 2 uses
  %.0.i31.i.i = getelementptr inbounds i8, ptr %.014.i29.i.i, i64 -1 ; 2 uses
  %i.wa = icmp ult ptr %i.vz, %.0.i31.i.i
  br i1 %i.wa, label %.lr.ph.i28.i.i, label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit, !llvm.loop !5

_ZSt16next_permutationIPbEbT_S1_.exit:            ; preds = %.lr.ph.i.i.i, %bb.cg
  br label %.preheader368, !llvm.loop !660

_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit: ; preds = %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit238, %.lr.ph.i28.i.i
  %i.wb = add nuw nsw i32 %.0131423, 1
  %exitcond490.not = icmp eq i64 %i.pb, %i.ou
  br i1 %exitcond490.not, label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit._crit_edge, label %.lr.ph.preheader.i.i.i, !llvm.loop !661

bb.ci:                                            ; preds = %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit._crit_edge
  %i.wc = load i32, ptr %i.dw, align 4, !tbaa !676
  %i.wd = sext i32 %i.wc to i64
  %i.we = zext nneg i32 %.2148 to i64
  %i.wf = getelementptr [8 x i8], ptr %i.c, i64 %i.we
  %i.wg = getelementptr i8, ptr %i.wf, i64 -8     ; 2 uses
  %i.wh = load i64, ptr %i.wg, align 8, !tbaa !128
  %i.wi = add nsw i64 %i.wh, %i.wd
  store i64 %i.wi, ptr %i.wg, align 8, !tbaa !128
  br label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit._crit_edge.thread

_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit._crit_edge.thread: ; preds = %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit.preheader, %bb.ci, %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit._crit_edge
  %.pre509 = load ptr, ptr %i.cr, align 8, !tbaa !236 ; 6 uses
  br i1 %.not.i.i.i.i168, label %._crit_edge428, label %.lr.ph427

.lr.ph427:                                        ; preds = %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit._crit_edge.thread
  %.pre509638 = ptrtoaddr ptr %.pre509 to i64
  %i.wj = load ptr, ptr %i.ea, align 8, !tbaa !101 ; 5 uses
  %i.wk = ptrtoaddr ptr %i.wj to i64
  %i.wl = sub i64 %i.wk, %.pre509638
  %diff.check = icmp ugt i64 %i.wl, -32
  %or.cond743 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond743, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph427, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph427 ] ; 3 uses
  %i.wm = getelementptr inbounds nuw [4 x i8], ptr %i.wj, i64 %index ; 2 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 16
  %wide.load = load <4 x i32>, ptr %i.wm, align 4, !tbaa !96 ; 3 uses
  %wide.load639 = load <4 x i32>, ptr %i.wn, align 4, !tbaa !96 ; 3 uses
  %i.wo = shl nuw <4 x i32> %wide.load, splat (i32 1)
  %i.wp = shl nuw <4 x i32> %wide.load639, splat (i32 1)
  %i.wq = xor <4 x i32> %wide.load, splat (i32 -1)
  %i.wr = xor <4 x i32> %wide.load639, splat (i32 -1)
  %i.ws = shl nuw <4 x i32> %i.wq, splat (i32 1)
  %i.wt = shl nuw <4 x i32> %i.wr, splat (i32 1)
  %i.wu = or disjoint <4 x i32> %i.ws, splat (i32 1)
  %i.wv = or disjoint <4 x i32> %i.wt, splat (i32 1)
  %i.ww = icmp slt <4 x i32> %wide.load, zeroinitializer
  %i.wx = icmp slt <4 x i32> %wide.load639, zeroinitializer
  %i.wy = select <4 x i1> %i.ww, <4 x i32> %i.wu, <4 x i32> %i.wo
  %i.wz = select <4 x i1> %i.wx, <4 x i32> %i.wv, <4 x i32> %i.wp
  %i.xa = getelementptr inbounds nuw [4 x i8], ptr %.pre509, i64 %index ; 2 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %i.xa, i64 16
  store <4 x i32> %i.wy, ptr %i.xa, align 4, !tbaa !96
  store <4 x i32> %i.wz, ptr %i.xb, align 4, !tbaa !96
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.xc = icmp eq i64 %index.next, %n.vec
  br i1 %i.xc, label %middle.block, label %vector.body, !llvm.loop !662

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge428, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph427, %middle.block
  %indvars.iv491.ph = phi i64 [ 0, %.lr.ph427 ], [ %n.vec, %middle.block ] ; 5 uses
  br i1 %lcmp.mod785.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.xd = getelementptr inbounds nuw [4 x i8], ptr %i.wj, i64 %indvars.iv491.ph
  %i.xe = load i32, ptr %i.xd, align 4, !tbaa !96 ; 3 uses
  %i.xf = shl nuw i32 %i.xe, 1
  %i.xg = xor i32 %i.xe, -1
  %i.xh = shl nuw i32 %i.xg, 1
  %i.xi = or disjoint i32 %i.xh, 1
  %i.xj = icmp slt i32 %i.xe, 0
  %.0.i242.prol = select i1 %i.xj, i32 %i.xi, i32 %i.xf
  %i.xk = getelementptr inbounds nuw [4 x i8], ptr %.pre509, i64 %indvars.iv491.ph
  store i32 %.0.i242.prol, ptr %i.xk, align 4, !tbaa !96
  %indvars.iv.next492.prol = or disjoint i64 %indvars.iv491.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv491.unr = phi i64 [ %indvars.iv491.ph, %scalar.ph.preheader ], [ %indvars.iv.next492.prol, %scalar.ph.prol ]
  %i.xl = icmp eq i64 %indvars.iv491.ph, %i.gb
  br i1 %i.xl, label %._crit_edge428, label %scalar.ph

._crit_edge428:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit._crit_edge.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  invoke void @_ZN5draco21ShannonEntropyTracker4PushEPKji(ptr dead_on_unwind nonnull writable sret(%"struct.draco::ShannonEntropyTracker::EntropyData") align 8 %10, ptr noundef nonnull align 8 dereferenceable(48) %i.dx, ptr noundef %.pre509, i32 noundef %4)
          to label %bb.cj unwind label %bb.cu

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv491 = phi i64 [ %indvars.iv.next492.1, %scalar.ph ], [ %indvars.iv491.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.xm = getelementptr inbounds nuw [4 x i8], ptr %i.wj, i64 %indvars.iv491
  %i.xn = load i32, ptr %i.xm, align 4, !tbaa !96 ; 3 uses
  %i.xo = shl nuw i32 %i.xn, 1
  %i.xp = xor i32 %i.xn, -1
  %i.xq = shl nuw i32 %i.xp, 1
  %i.xr = or disjoint i32 %i.xq, 1
  %i.xs = icmp slt i32 %i.xn, 0
  %.0.i242 = select i1 %i.xs, i32 %i.xr, i32 %i.xo
  %i.xt = getelementptr inbounds nuw [4 x i8], ptr %.pre509, i64 %indvars.iv491
  store i32 %.0.i242, ptr %i.xt, align 4, !tbaa !96
  %indvars.iv.next492 = add nuw nsw i64 %indvars.iv491, 1 ; 2 uses
  %i.xu = getelementptr inbounds nuw [4 x i8], ptr %i.wj, i64 %indvars.iv.next492
  %i.xv = load i32, ptr %i.xu, align 4, !tbaa !96 ; 3 uses
  %i.xw = shl nuw i32 %i.xv, 1
  %i.xx = xor i32 %i.xv, -1
  %i.xy = shl nuw i32 %i.xx, 1
  %i.xz = or disjoint i32 %i.xy, 1
  %i.ya = icmp slt i32 %i.xv, 0
  %.0.i242.1 = select i1 %i.ya, i32 %i.xz, i32 %i.xw
  %i.yb = getelementptr inbounds nuw [4 x i8], ptr %.pre509, i64 %indvars.iv.next492
  store i32 %.0.i242.1, ptr %i.yb, align 4, !tbaa !96
  %indvars.iv.next492.1 = add nuw nsw i64 %indvars.iv491, 2 ; 2 uses
  %exitcond496.not.1 = icmp eq i64 %indvars.iv.next492.1, %12
  br i1 %exitcond496.not.1, label %._crit_edge428, label %scalar.ph, !llvm.loop !663

bb.cj:                                            ; preds = %._crit_edge428
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br i1 %i.oc, label %.lr.ph431, label %._crit_edge432

.lr.ph431:                                        ; preds = %bb.cj
  %i.yc = zext nneg i32 %.2148 to i64
  %i.yd = getelementptr [40 x i8], ptr %0, i64 %i.yc ; 4 uses
  %i.ye = getelementptr i8, ptr %i.yd, i64 72     ; 3 uses
  %i.yf = getelementptr i8, ptr %i.yd, i64 88
  %.sroa.2.0..sroa_idx.i.i248 = getelementptr i8, ptr %i.yd, i64 80 ; 5 uses
  %i.yg = getelementptr i8, ptr %i.yd, i64 56
  br label %bb.cv

._crit_edge432:                                   ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit, %bb.cj
  %i.yh = getelementptr inbounds [4 x i8], ptr %2, i64 %i.lv
  %i.yi = load i32, ptr %i.e, align 8, !tbaa !203
  %i.yj = icmp sgt i32 %i.yi, 0
  br i1 %i.yj, label %.lr.ph.i.lr.ph.i, label %_ZNK5draco37PredictionSchemeWrapEncodingTransformIiiE17ComputeCorrectionEPKiS3_Pi.exit

.lr.ph.i.lr.ph.i:                                 ; preds = %._crit_edge432
  %i.yk = load ptr, ptr %i.dz, align 8, !tbaa !101
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ct, %.lr.ph.i.lr.ph.i
  %indvars.iv.i244 = phi i64 [ 0, %.lr.ph.i.lr.ph.i ], [ %indvars.iv.next.i245, %bb.ct ] ; 4 uses
  %.01516.i = phi ptr [ %i.yk, %.lr.ph.i.lr.ph.i ], [ %i.yl, %bb.ct ]
  %i.yl = load ptr, ptr %i.f, align 8             ; 4 uses
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cp, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.cp ] ; 4 uses
  %i.ym = getelementptr inbounds nuw [4 x i8], ptr %.01516.i, i64 %indvars.iv.i.i
  %i.yn = load i32, ptr %i.ym, align 4, !tbaa !96 ; 3 uses
  %i.yo = load i32, ptr %i.es, align 8, !tbaa !202 ; 2 uses
  %i.yp = icmp sgt i32 %i.yn, %i.yo
  br i1 %i.yp, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.yq = getelementptr inbounds nuw [4 x i8], ptr %i.yl, i64 %indvars.iv.i.i
  store i32 %i.yo, ptr %i.yq, align 4, !tbaa !96
  br label %bb.cp

bb.cm:                                            ; preds = %bb.ck
  %i.yr = load i32, ptr %i.et, align 4, !tbaa !201 ; 2 uses
  %i.ys = icmp slt i32 %i.yn, %i.yr
  %i.yt = getelementptr inbounds nuw [4 x i8], ptr %i.yl, i64 %indvars.iv.i.i ; 2 uses
  br i1 %i.ys, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  store i32 %i.yr, ptr %i.yt, align 4, !tbaa !96
  br label %bb.cp

bb.co:                                            ; preds = %bb.cm
  store i32 %i.yn, ptr %i.yt, align 4, !tbaa !96
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn, %bb.cl
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.yu = load i32, ptr %i.e, align 8, !tbaa !203
  %i.yv = sext i32 %i.yu to i64
  %i.yw = icmp slt i64 %indvars.iv.next.i.i, %i.yv
  br i1 %i.yw, label %bb.ck, label %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.loopexit.i, !llvm.loop !2

_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.loopexit.i: ; preds = %bb.cp
  %i.yx = getelementptr inbounds nuw [4 x i8], ptr %i.lz, i64 %indvars.iv.i244
  %i.yy = load i32, ptr %i.yx, align 4, !tbaa !96
  %i.yz = getelementptr inbounds nuw [4 x i8], ptr %i.yl, i64 %indvars.iv.i244
  %i.za = load i32, ptr %i.yz, align 4, !tbaa !96
  %i.zb = sub nsw i32 %i.yy, %i.za                ; 5 uses
  %i.zc = getelementptr inbounds nuw [4 x i8], ptr %i.yh, i64 %indvars.iv.i244 ; 2 uses
  store i32 %i.zb, ptr %i.zc, align 4, !tbaa !96
  %i.zd = load i32, ptr %i.eu, align 4, !tbaa !206
  %i.ze = icmp slt i32 %i.zb, %i.zd
  br i1 %i.ze, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.loopexit.i
  %i.zf = load i32, ptr %i.ew, align 4, !tbaa !204
  %i.zg = add nsw i32 %i.zf, %i.zb
  br label %.sink.split.i

bb.cr:                                            ; preds = %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.loopexit.i
  %i.zh = load i32, ptr %i.ev, align 8, !tbaa !205
  %i.zi = icmp sgt i32 %i.zb, %i.zh
  br i1 %i.zi, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.zj = load i32, ptr %i.ew, align 4, !tbaa !204
  %i.zk = sub nsw i32 %i.zb, %i.zj
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.cs, %bb.cq
  %.sink.i = phi i32 [ %i.zk, %bb.cs ], [ %i.zg, %bb.cq ]
  store i32 %.sink.i, ptr %i.zc, align 4, !tbaa !96
  br label %bb.ct

bb.ct:                                            ; preds = %.sink.split.i, %bb.cr
  %indvars.iv.next.i245 = add nuw nsw i64 %indvars.iv.i244, 1 ; 2 uses
  %i.zl = load i32, ptr %i.e, align 8, !tbaa !203
  %i.zm = sext i32 %i.zl to i64
  %i.zn = icmp slt i64 %indvars.iv.next.i245, %i.zm
  br i1 %i.zn, label %.lr.ph.i.i, label %_ZNK5draco37PredictionSchemeWrapEncodingTransformIiiE17ComputeCorrectionEPKiS3_Pi.exit, !llvm.loop !3

bb.cu:                                            ; preds = %._crit_edge428
  %i.zo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %.loopexit.split-lp

bb.cv:                                            ; preds = %.lr.ph431, %_ZNSt6vectorIbSaIbEE9push_backEb.exit
  %.0120429 = phi i32 [ 0, %.lr.ph431 ], [ %i.aal, %_ZNSt6vectorIbSaIbEE9push_backEb.exit ] ; 2 uses
  %i.zp = load i8, ptr %i.dy, align 8, !tbaa !675
  %i.zq = zext i8 %i.zp to i32
  %i.zr = shl nuw i32 1, %.0120429
  %i.zs = and i32 %i.zr, %i.zq
  %i.zt = icmp eq i32 %i.zs, 0                    ; 2 uses
  %i.zu = load ptr, ptr %i.ye, align 8, !tbaa !174 ; 7 uses
  %i.zv = load ptr, ptr %i.yf, align 8, !tbaa !178
  %.not.i = icmp eq ptr %i.zu, %i.zv              ; 2 uses
  %.sroa.2.0.copyload.i11.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i248, align 8 ; 7 uses
  br i1 %i.zt, label %bb.cw, label %bb.cz

bb.cw:                                            ; preds = %bb.cv
  br i1 %.not.i, label %.invoke, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.zw = add i32 %.sroa.2.0.copyload.i11.i, 1
  store i32 %i.zw, ptr %.sroa.2.0..sroa_idx.i.i248, align 8, !tbaa !175
  %i.zx = icmp eq i32 %.sroa.2.0.copyload.i11.i, 63
  br i1 %i.zx, label %bb.cy, label %_ZNSt13_Bit_iteratorppEi.exit.i

bb.cy:                                            ; preds = %bb.cx
  store i32 0, ptr %.sroa.2.0..sroa_idx.i.i248, align 8, !tbaa !175
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zu, i64 8
  store ptr %i.zy, ptr %i.ye, align 8, !tbaa !174
  br label %_ZNSt13_Bit_iteratorppEi.exit.i

_ZNSt13_Bit_iteratorppEi.exit.i:                  ; preds = %bb.cy, %bb.cx
  %i.zz = zext nneg i32 %.sroa.2.0.copyload.i11.i to i64
  %i.aaa = shl nuw i64 1, %i.zz
  %i.aab = load i64, ptr %i.zu, align 8, !tbaa !128
  %i.aac = or i64 %i.aab, %i.aaa
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit.sink.split

.invoke:                                          ; preds = %bb.cz, %bb.cw
  invoke void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %i.yg, ptr %i.zu, i32 %.sroa.2.0.copyload.i11.i, i1 noundef zeroext %i.zt)
          to label %_ZNSt6vectorIbSaIbEE9push_backEb.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cz:                                            ; preds = %bb.cv
  br i1 %.not.i, label %.invoke, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.aad = add i32 %.sroa.2.0.copyload.i11.i, 1
  store i32 %i.aad, ptr %.sroa.2.0..sroa_idx.i.i248, align 8, !tbaa !175
  %i.aae = icmp eq i32 %.sroa.2.0.copyload.i11.i, 63
  br i1 %i.aae, label %bb.db, label %_ZNSt13_Bit_iteratorppEi.exit.i250

bb.db:                                            ; preds = %bb.da
  store i32 0, ptr %.sroa.2.0..sroa_idx.i.i248, align 8, !tbaa !175
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.zu, i64 8
  store ptr %i.aaf, ptr %i.ye, align 8, !tbaa !174
  br label %_ZNSt13_Bit_iteratorppEi.exit.i250

_ZNSt13_Bit_iteratorppEi.exit.i250:               ; preds = %bb.db, %bb.da
  %i.aag = zext nneg i32 %.sroa.2.0.copyload.i11.i to i64
  %i.aah = shl nuw i64 1, %i.aag
  %i.aai = xor i64 %i.aah, -1
  %i.aaj = load i64, ptr %i.zu, align 8, !tbaa !128
  %i.aak = and i64 %i.aaj, %i.aai
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit.sink.split

_ZNSt6vectorIbSaIbEE9push_backEb.exit.sink.split: ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i, %_ZNSt13_Bit_iteratorppEi.exit.i250
  %.sink = phi i64 [ %i.aak, %_ZNSt13_Bit_iteratorppEi.exit.i250 ], [ %i.aac, %_ZNSt13_Bit_iteratorppEi.exit.i ]
  store i64 %.sink, ptr %i.zu, align 8, !tbaa !128
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

_ZNSt6vectorIbSaIbEE9push_backEb.exit:            ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit.sink.split, %.invoke
  %i.aal = add nuw nsw i32 %.0120429, 1           ; 2 uses
  %exitcond497.not = icmp eq i32 %i.aal, %.2148
  br i1 %exitcond497.not, label %._crit_edge432, label %bb.cv, !llvm.loop !664

_ZNK5draco37PredictionSchemeWrapEncodingTransformIiiE17ComputeCorrectionEPKiS3_Pi.exit: ; preds = %bb.ct, %._crit_edge432
  %i.aam = load ptr, ptr %i.ea, align 8, !tbaa !101 ; 3 uses
  %.not.i.i.i.i253 = icmp eq ptr %i.aam, null
  br i1 %.not.i.i.i.i253, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %bb.dc

bb.dc:                                            ; preds = %_ZNK5draco37PredictionSchemeWrapEncodingTransformIiiE17ComputeCorrectionEPKiS3_Pi.exit
  %i.aan = load ptr, ptr %i.en, align 8, !tbaa !102
  %i.aao = ptrtoint ptr %i.aan to i64
  %i.aap = ptrtoint ptr %i.aam to i64
  %i.aaq = sub i64 %i.aao, %i.aap
  call void @_ZdlPvm(ptr noundef nonnull %i.aam, i64 noundef %i.aaq) #19
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %bb.dc, %_ZNK5draco37PredictionSchemeWrapEncodingTransformIiiE17ComputeCorrectionEPKiS3_Pi.exit
  %i.aar = load ptr, ptr %i.dz, align 8, !tbaa !101 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.aar, null
  br i1 %.not.i.i.i1.i, label %_ZZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEEEN23PredictionConfigurationD2Ev.exit, label %bb.dd

end_hunk_5
begin_hunk_6_@_ZNK5draco17GeometryAttribute17ConvertTypedValueIfiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_:bb.a
  %or.cond13.i = fcmp one float %i.al, +inf
  %i.am = fcmp uge float %i.ak, f0xCF000000
  %or.cond14.not16.i = and i1 %i.am, %or.cond13.i
  %i.an = fcmp ult float %i.ak, f0x4F000000
  %or.cond15.i = and i1 %i.an, %or.cond14.not16.i
  br i1 %or.cond15.i, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %.lr.ph44
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.ap = fptosi float %i.ak to i32
  store i32 %i.ap, ptr %i.ao, align 4, !tbaa !96
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aq = load i8, ptr %i.l, align 8, !tbaa !105  ; 2 uses
  %.sroa.speculated = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.aq)
  %i.ar = zext i8 %.sroa.speculated to i64
  %.not.not = icmp samesign ult i64 %indvars.iv.next, %i.ar
  br i1 %.not.not, label %bb.e, label %.critedge, !llvm.loop !807

.critedge:                                        ; preds = %bb.f, %bb.d, %bb.a
  %.lcssa = phi i8 [ %i.m, %bb.a ], [ %i.ag, %bb.d ], [ %i.aq, %bb.f ] ; 3 uses
  %i.as = icmp ult i8 %.lcssa, %2
  br i1 %i.as, label %.lr.ph58.preheader, label %.loopexit

.lr.ph58.preheader:                               ; preds = %.critedge
  %i.at = zext i8 %2 to i64
  %i.au = zext i8 %.lcssa to i64
  %i.av = zext i8 %.lcssa to i64
  %i.aw = shl nuw nsw i64 %i.av, 2
  %scevgep = getelementptr i8, ptr %3, i64 %i.aw
  %i.ax = xor i64 %i.au, -1
  %i.ay = add nsw i64 %i.ax, %i.at
  %i.az = shl nsw i64 %i.ay, 2
  %i.ba = and i64 %i.az, 17179869180
  %i.bb = add nuw nsw i64 %i.ba, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.bb, i1 false), !tbaa !96
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %.lr.ph44, %bb.b, %.lr.ph51, %bb.c, %.lr.ph58.preheader, %.lr.ph.split.us, %.lr.ph.split, %.critedge
  %.not30 = phi i1 [ true, %.critedge ], [ true, %.lr.ph58.preheader ], [ false, %.lr.ph.split ], [ false, %.lr.ph.split.us ], [ false, %bb.b ], [ false, %bb.c ], [ false, %.lr.ph51 ], [ false, %.lr.ph44 ], [ false, %bb.e ]
  ret i1 %.not30
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5draco17GeometryAttribute17ConvertTypedValueIdiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nofreeobj noundef align 4 dead_on_return dereferenceable(4) %1, i8 noundef zeroext %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !86
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load i64, ptr %i.b, align 8, !tbaa !122
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !243
  %i.f = zext i32 %i.a to i64
  %i.g = mul nsw i64 %i.e, %i.f
  %i.h = load ptr, ptr %0, align 8, !tbaa !123    ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !125
  %i.j = getelementptr i8, ptr %i.i, i64 %i.g
  %i.k = getelementptr i8, ptr %i.j, i64 %i.c     ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !105   ; 2 uses
  %.sroa.speculated32 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.m)
  %.not33 = icmp eq i8 %.sroa.speculated32, 0
  br i1 %.not33, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !244  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load i8, ptr %i.p, align 8, !range !61
  %.fr59 = freeze i8 %i.q
  %i.r = trunc i8 %.fr59 to i1
  %i.s = icmp ugt ptr %i.o, %i.k                  ; 2 uses
  br i1 %i.r, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %i.s, label %.lr.ph51, label %.loopexit

bb.b:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.01734.us50, i64 8 ; 2 uses
  %i.u = icmp ugt ptr %i.o, %i.t
  br i1 %i.u, label %.lr.ph51, label %.loopexit, !llvm.loop !808

.lr.ph51:                                         ; preds = %.lr.ph.split.us, %bb.b
  %indvars.iv66 = phi i64 [ %indvars.iv.next67, %bb.b ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %.01734.us50 = phi ptr [ %i.t, %bb.b ], [ %i.k, %.lr.ph.split.us ] ; 2 uses
  %i.v = load double, ptr %.01734.us50, align 8, !tbaa !248 ; 6 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv66
  %i.x = tail call double @llvm.fabs.f64(double %i.v)
  %or.cond13.i.us = fcmp one double %i.x, +inf
  %i.y = fcmp uge double %i.v, f0xC1E0000000000000
  %or.cond14.not16.i.us = and i1 %i.y, %or.cond13.i.us
  %i.z = fcmp ult double %i.v, f0x41DFFFFFFFC00000
  %or.cond15.i.us = and i1 %i.z, %or.cond14.not16.i.us
  br i1 %or.cond15.i.us, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.lr.ph51
  %i.aa = fcmp ogt double %i.v, 1.000000e+00
  %i.ab = fcmp olt double %i.v, 0.000000e+00
  %or.cond.i.us = or i1 %i.aa, %i.ab
  br i1 %or.cond.i.us, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = tail call double @llvm.fmuladd.f64(double %i.v, double f0x41DFFFFFFFC00000, double 5.000000e-01)
  %i.ad = tail call double @llvm.floor.f64(double %i.ac)
  %storemerge.i.us = fptosi double %i.ad to i32
  store i32 %storemerge.i.us, ptr %i.w, align 4, !tbaa !96
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1 ; 2 uses
  %i.ae = load i8, ptr %i.l, align 8, !tbaa !105  ; 2 uses
  %.sroa.speculated.us = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.ae)
  %i.af = zext i8 %.sroa.speculated.us to i64
  %.not.us.not = icmp samesign ult i64 %indvars.iv.next67, %i.af
  br i1 %.not.us.not, label %bb.b, label %.critedge, !llvm.loop !808

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %i.s, label %.lr.ph44, label %.loopexit

bb.e:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %.0173443, i64 8 ; 2 uses
  %i.ah = icmp ugt ptr %i.o, %i.ag
  br i1 %i.ah, label %.lr.ph44, label %.loopexit, !llvm.loop !808

.lr.ph44:                                         ; preds = %.lr.ph.split, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %.lr.ph.split ] ; 2 uses
  %.0173443 = phi ptr [ %i.ag, %bb.e ], [ %i.k, %.lr.ph.split ] ; 2 uses
  %i.ai = load double, ptr %.0173443, align 8, !tbaa !248 ; 4 uses
  %i.aj = tail call double @llvm.fabs.f64(double %i.ai)
  %or.cond13.i = fcmp one double %i.aj, +inf
  %i.ak = fcmp uge double %i.ai, f0xC1E0000000000000
  %or.cond14.not16.i = and i1 %i.ak, %or.cond13.i
  %i.al = fcmp ult double %i.ai, f0x41DFFFFFFFC00000
  %or.cond15.i = and i1 %i.al, %or.cond14.not16.i
  br i1 %or.cond15.i, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %.lr.ph44
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %storemerge.i = fptosi double %i.ai to i32
  store i32 %storemerge.i, ptr %i.am, align 4, !tbaa !96
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.an = load i8, ptr %i.l, align 8, !tbaa !105  ; 2 uses
  %.sroa.speculated = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.an)
  %i.ao = zext i8 %.sroa.speculated to i64
  %.not.not = icmp samesign ult i64 %indvars.iv.next, %i.ao
  br i1 %.not.not, label %bb.e, label %.critedge, !llvm.loop !808

.critedge:                                        ; preds = %bb.f, %bb.d, %bb.a
  %.lcssa = phi i8 [ %i.m, %bb.a ], [ %i.ae, %bb.d ], [ %i.an, %bb.f ] ; 3 uses
  %i.ap = icmp ult i8 %.lcssa, %2
  br i1 %i.ap, label %.lr.ph58.preheader, label %.loopexit

.lr.ph58.preheader:                               ; preds = %.critedge
  %i.aq = zext i8 %2 to i64
  %i.ar = zext i8 %.lcssa to i64
  %i.as = zext i8 %.lcssa to i64
  %i.at = shl nuw nsw i64 %i.as, 2
  %scevgep = getelementptr i8, ptr %3, i64 %i.at
  %i.au = xor i64 %i.ar, -1
  %i.av = add nsw i64 %i.au, %i.aq
  %i.aw = shl nsw i64 %i.av, 2
  %i.ax = and i64 %i.aw, 17179869180
  %i.ay = add nuw nsw i64 %i.ax, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.ay, i1 false), !tbaa !96
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %.lr.ph44, %bb.b, %.lr.ph51, %bb.c, %.lr.ph58.preheader, %.lr.ph.split.us, %.lr.ph.split, %.critedge
  %.not30 = phi i1 [ true, %.critedge ], [ true, %.lr.ph58.preheader ], [ false, %.lr.ph.split ], [ false, %.lr.ph.split.us ], [ false, %bb.b ], [ false, %bb.c ], [ false, %.lr.ph51 ], [ false, %.lr.ph44 ], [ false, %bb.e ]
  ret i1 %.not30
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.abs.v4i32(<4 x i32>, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #14

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #17 = { nounwind }
attributes #18 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }
attributes #19 = { builtin nounwind }
attributes #20 = { noreturn }
attributes #21 = { noreturn nounwind }

!llvm.module.flags = !{!9, !10}
!llvm.ident = !{!11}
!llvm.errno.tbaa = !{!16}

!0 = distinct !{null, null}
!1 = distinct !{!1, !94}
!2 = distinct !{!2, !94}
!3 = distinct !{!3, !94}
!4 = distinct !{!4, !94}
!5 = distinct !{!5, !94}
!6 = distinct !{!6, !94}
!7 = distinct !{!7, !94}
!8 = distinct !{!8, !94}
!9 = !{i32 8, !"PIC Level", i32 2}
!10 = !{i32 7, !"uwtable", i32 2}
!11 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!12 = !{!"Simple C++ TBAA"}
!13 = !{!"omnipotent char", !12, i64 0}
!14 = !{!"int", !13, i64 0}
!15 = !{!"__libc_errno", !14, i64 0}
!16 = !{!15, !14, i64 0}
!17 = !{!"vtable pointer", !12, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"any pointer", !13, i64 0}
!20 = !{!"p1 _ZTSN5draco37PredictionSchemeTypedEncoderInterfaceIiiEE", !19, i64 0}
!21 = !{!"_ZTSSt10_Head_baseILm0EPN5draco37PredictionSchemeTypedEncoderInterfaceIiiEELb0EE", !20, i64 0}
!22 = !{!21, !20, i64 0}
!23 = !{!"p1 _ZTSN5draco17PointCloudEncoderE", !19, i64 0}
!24 = !{!"p1 _ZTSN5draco14PointAttributeE", !19, i64 0}
!25 = !{!"p1 int", !19, i64 0}
!26 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !25, i64 0, !25, i64 8, !25, i64 16}
!27 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !26, i64 0}
!28 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !27, i64 0}
!29 = !{!"_ZTSSt6vectorIiSaIiEE", !28, i64 0}
!30 = !{!"bool", !13, i64 0}
!31 = !{!"_ZTSSt10_Head_baseILm0EPN5draco14PointAttributeELb0EE", !24, i64 0}
!32 = !{!"_ZTSSt11_Tuple_implILm0EJPN5draco14PointAttributeESt14default_deleteIS1_EEE", !31, i64 0}
!33 = !{!"_ZTSSt5tupleIJPN5draco14PointAttributeESt14default_deleteIS1_EEE", !32, i64 0}
!34 = !{!"_ZTSSt15__uniq_ptr_implIN5draco14PointAttributeESt14default_deleteIS1_EE", !33, i64 0}
!35 = !{!"_ZTSSt15__uniq_ptr_dataIN5draco14PointAttributeESt14default_deleteIS1_ELb1ELb1EE", !34, i64 0}
!36 = !{!"_ZTSSt10unique_ptrIN5draco14PointAttributeESt14default_deleteIS1_EE", !35, i64 0}
!37 = !{!"_ZTSN5draco26SequentialAttributeEncoderE", !23, i64 8, !24, i64 16, !14, i64 24, !29, i64 32, !30, i64 56, !36, i64 64}
!38 = !{!37, !24, i64 16}
!39 = !{!"p1 _ZTSN5draco10DataBufferE", !19, i64 0}
!40 = !{!"long", !13, i64 0}
!41 = !{!"_ZTSN5draco20DataBufferDescriptorE", !40, i64 0, !40, i64 8}
!42 = !{!"_ZTSN5draco8DataTypeE", !13, i64 0}
!43 = !{!"_ZTSN5draco17GeometryAttribute4TypeE", !13, i64 0}
!44 = !{!"_ZTSN5draco17GeometryAttributeE", !39, i64 0, !41, i64 8, !13, i64 24, !42, i64 28, !30, i64 32, !40, i64 40, !40, i64 48, !43, i64 56, !14, i64 60}
!45 = !{!44, !42, i64 28}
!46 = !{!"p1 _ZTSN5draco10PointCloudE", !19, i64 0}
!47 = !{!"p1 _ZTSSt10unique_ptrIN5draco17AttributesEncoderESt14default_deleteIS1_EE", !19, i64 0}
!48 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN5draco17AttributesEncoderESt14default_deleteIS2_EESaIS5_EE17_Vector_impl_dataE", !47, i64 0, !47, i64 8, !47, i64 16}
!49 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN5draco17AttributesEncoderESt14default_deleteIS2_EESaIS5_EE12_Vector_implE", !48, i64 0}
!50 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIN5draco17AttributesEncoderESt14default_deleteIS2_EESaIS5_EE", !49, i64 0}
!51 = !{!"_ZTSSt6vectorISt10unique_ptrIN5draco17AttributesEncoderESt14default_deleteIS2_EESaIS5_EE", !50, i64 0}
!52 = !{!"p1 _ZTSN5draco13EncoderBufferE", !19, i64 0}
!53 = !{!"p1 _ZTSN5draco18EncoderOptionsBaseIiEE", !19, i64 0}
!54 = !{!"_ZTSN5draco17PointCloudEncoderE", !46, i64 8, !51, i64 16, !29, i64 40, !29, i64 64, !52, i64 88, !53, i64 96, !40, i64 104}
!55 = !{!54, !53, i64 96}
!56 = !{!20, !20, i64 0}
!57 = !{!37, !23, i64 8}
!58 = !{!54, !46, i64 8}
!59 = !{!"p1 _ZTSSt10unique_ptrIN5draco14PointAttributeESt14default_deleteIS1_EE", !19, i64 0}
!60 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN5draco14PointAttributeESt14default_deleteIS2_EESaIS5_EE17_Vector_impl_dataE", !59, i64 0, !59, i64 8, !59, i64 16}
!61 = !{i8 0, i8 2}
!62 = !{}
!63 = !{!24, !24, i64 0}
!64 = !{!"_ZTSSt10_Head_baseILm0EPN5draco10DataBufferELb0EE", !39, i64 0}
!65 = !{!"_ZTSSt11_Tuple_implILm0EJPN5draco10DataBufferESt14default_deleteIS1_EEE", !64, i64 0}
!66 = !{!"_ZTSSt5tupleIJPN5draco10DataBufferESt14default_deleteIS1_EEE", !65, i64 0}
!67 = !{!"_ZTSSt15__uniq_ptr_implIN5draco10DataBufferESt14default_deleteIS1_EE", !66, i64 0}
!68 = !{!"_ZTSSt15__uniq_ptr_dataIN5draco10DataBufferESt14default_deleteIS1_ELb1ELb1EE", !67, i64 0}
!69 = !{!"_ZTSSt10unique_ptrIN5draco10DataBufferESt14default_deleteIS1_EE", !68, i64 0}
!70 = !{!"p1 _ZTSN5draco9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEE", !19, i64 0}
!71 = !{!"_ZTSNSt12_Vector_baseIN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEESaIS3_EE17_Vector_impl_dataE", !70, i64 0, !70, i64 8, !70, i64 16}
!72 = !{!"_ZTSNSt12_Vector_baseIN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEESaIS3_EE12_Vector_implE", !71, i64 0}
!73 = !{!"_ZTSSt12_Vector_baseIN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEESaIS3_EE", !72, i64 0}
!74 = !{!"_ZTSSt6vectorIN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEESaIS3_EE", !73, i64 0}
!75 = !{!"_ZTSN5draco15IndexTypeVectorINS_9IndexTypeIjNS_20PointIndex_tag_type_EEENS1_IjNS_29AttributeValueIndex_tag_type_EEEEE", !74, i64 0}
!76 = !{!"p1 _ZTSN5draco22AttributeTransformDataE", !19, i64 0}
!77 = !{!"_ZTSSt10_Head_baseILm0EPN5draco22AttributeTransformDataELb0EE", !76, i64 0}
!78 = !{!"_ZTSSt11_Tuple_implILm0EJPN5draco22AttributeTransformDataESt14default_deleteIS1_EEE", !77, i64 0}
!79 = !{!"_ZTSSt5tupleIJPN5draco22AttributeTransformDataESt14default_deleteIS1_EEE", !78, i64 0}
!80 = !{!"_ZTSSt15__uniq_ptr_implIN5draco22AttributeTransformDataESt14default_deleteIS1_EE", !79, i64 0}
!81 = !{!"_ZTSSt15__uniq_ptr_dataIN5draco22AttributeTransformDataESt14default_deleteIS1_ELb1ELb1EE", !80, i64 0}
!82 = !{!"_ZTSSt10unique_ptrIN5draco22AttributeTransformDataESt14default_deleteIS1_EE", !81, i64 0}
!83 = !{!"_ZTSN5draco14PointAttributeE", !44, i64 0, !69, i64 64, !75, i64 72, !14, i64 96, !30, i64 100, !82, i64 104}
!84 = !{!83, !14, i64 96}
!85 = !{!"_ZTSN5draco9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEE", !14, i64 0}
!86 = !{!85, !14, i64 0}
!87 = !{!"p1 _ZTSN5draco9IndexTypeIjNS_20PointIndex_tag_type_EEE", !19, i64 0}
!88 = !{!"_ZTSNSt12_Vector_baseIN5draco9IndexTypeIjNS0_20PointIndex_tag_type_EEESaIS3_EE17_Vector_impl_dataE", !87, i64 0, !87, i64 8, !87, i64 16}
!89 = !{!88, !87, i64 8}
!90 = !{!88, !87, i64 0}
!91 = !{!83, !30, i64 100}
!92 = !{!"_ZTSN5draco9IndexTypeIjNS_20PointIndex_tag_type_EEE", !14, i64 0}
!93 = !{!92, !14, i64 0}
!94 = !{!"llvm.loop.mustprogress"}
!95 = !{!"llvm.loop.unroll.disable"}
!96 = !{!14, !14, i64 0}
!97 = !{!71, !70, i64 8}
!98 = !{!71, !70, i64 0}
!99 = !{!"llvm.loop.isvectorized", i32 1}
!100 = !{!"llvm.loop.unroll.runtime.disable"}
!101 = !{!26, !25, i64 0}
!102 = !{!26, !25, i64 16}
!103 = !{!"p1 _ZTSN5draco23PredictionSchemeEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEEEE", !19, i64 0}
!104 = !{!103, !103, i64 0}
!105 = !{!13, !13, i64 0}
!106 = !{!"p1 omnipotent char", !19, i64 0}
!107 = !{!"_ZTSNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataE", !106, i64 0, !106, i64 8, !106, i64 16}
!108 = !{!"_ZTSNSt12_Vector_baseIcSaIcEE12_Vector_implE", !107, i64 0}
!109 = !{!"_ZTSSt12_Vector_baseIcSaIcEE", !108, i64 0}
!110 = !{!"_ZTSSt6vectorIcSaIcEE", !109, i64 0}
!111 = !{!"p1 _ZTSN5draco13EncoderBuffer10BitEncoderE", !19, i64 0}
!112 = !{!"_ZTSSt10_Head_baseILm0EPN5draco13EncoderBuffer10BitEncoderELb0EE", !111, i64 0}
!113 = !{!"_ZTSSt11_Tuple_implILm0EJPN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EEE", !112, i64 0}
!114 = !{!"_ZTSSt5tupleIJPN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EEE", !113, i64 0}
!115 = !{!"_ZTSSt15__uniq_ptr_implIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EE", !114, i64 0}
!116 = !{!"_ZTSSt15__uniq_ptr_dataIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_ELb1ELb1EE", !115, i64 0}
!117 = !{!"_ZTSSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EE", !116, i64 0}
!118 = !{!"_ZTSN5draco13EncoderBufferE", !110, i64 0, !117, i64 24, !40, i64 32, !30, i64 40}
!119 = !{!118, !40, i64 32}
!120 = !{!106, !106, i64 0}
!121 = !{!44, !13, i64 24}
!122 = !{!44, !40, i64 48}
!123 = !{!44, !39, i64 0}
!124 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !106, i64 0, !106, i64 8, !106, i64 16}
!125 = !{!124, !106, i64 0}
!126 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !106, i64 0}
!127 = !{!126, !106, i64 0}
!128 = !{!40, !40, i64 0}
!129 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !126, i64 0, !40, i64 8, !13, i64 16}
!130 = !{!129, !106, i64 0}
!131 = !{!129, !40, i64 8}
!132 = !{!"_ZTSSt14_Rb_tree_color", !13, i64 0}
!133 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !19, i64 0}
!134 = !{!"_ZTSSt18_Rb_tree_node_base", !132, i64 0, !133, i64 8, !133, i64 16, !133, i64 24}
!135 = !{!"_ZTSSt15_Rb_tree_header", !134, i64 0, !40, i64 32}
!136 = !{!135, !133, i64 8}
!137 = !{!"llvm.loop.unswitch.partial.disable"}
!138 = !{!44, !43, i64 56}
!139 = !{!71, !70, i64 16}
!140 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!141 = !{!60, !59, i64 0}
!142 = !{!"_ZTSN5draco25PredictionSchemeInterfaceE"}
!143 = !{!"_ZTSN5draco32PredictionSchemeEncoderInterfaceE", !142, i64 0}
!144 = !{!"_ZTSN5draco37PredictionSchemeTypedEncoderInterfaceIiiEE", !143, i64 0}
!145 = !{!"_ZTSN5draco33PredictionSchemeWrapTransformBaseIiEE", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20, !29, i64 24}
!146 = !{!"_ZTSN5draco37PredictionSchemeWrapEncodingTransformIiiEE", !145, i64 0}
!147 = !{!"_ZTSN5draco23PredictionSchemeEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEEEE", !144, i64 0, !24, i64 8, !146, i64 16}
!148 = !{!147, !24, i64 8}
!149 = !{!26, !25, i64 8}
!150 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!151 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!152 = !{!"p1 _ZTSN5draco4MeshE", !19, i64 0}
!153 = !{!"p1 _ZTSN5draco24MeshAttributeCornerTableE", !19, i64 0}
!154 = !{!"p1 _ZTSSt6vectorIiSaIiEE", !19, i64 0}
!155 = !{!"p1 _ZTSSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE", !19, i64 0}
!156 = !{!"_ZTSN5draco24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEE", !152, i64 0, !153, i64 8, !154, i64 16, !155, i64 24}
!157 = !{!156, !152, i64 0}
!158 = !{!156, !153, i64 8}
!159 = !{!156, !155, i64 24}
!160 = !{!156, !154, i64 16}
!161 = !{!"p1 _ZTSN5draco11CornerTableE", !19, i64 0}
!162 = !{!"_ZTSN5draco24MeshPredictionSchemeDataINS_11CornerTableEEE", !152, i64 0, !161, i64 8, !154, i64 16, !155, i64 24}
!163 = !{!162, !152, i64 0}
!164 = !{!162, !161, i64 8}
end_hunk_6
