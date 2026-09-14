Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/draco/original/sequential_integer_attribute_encoder?download=true
inline.NumInlined: 2377
inline.NumDeleted: 912
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_ZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEE:bb.a
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

bb.j:                                             ; preds = %_ZN5draco37PredictionSchemeWrapEncodingTransformIiiE4InitEPKiii.exit
  invoke void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %i.g)
          to label %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge505 unwind label %bb.t

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
  %i.eg = sub i64 %i.ee, %i.ef                    ; 11 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 6 uses
  %i.ej = icmp sgt i64 %i.eg, 4
  %i.ek = icmp eq i64 %i.eg, 4                    ; 2 uses
  %i.el = icmp ugt i64 %i.eg, 9223372036854775804
  %i.em = icmp samesign ugt i64 %i.eg, 4
  %i.en = ptrtoint ptr %.0.i.i.i.i.i178 to i64    ; 2 uses
  %i.eo = ptrtoint ptr %.sroa.0342.0 to i64       ; 8 uses
  %i.ep = sub i64 %i.en, %i.eo                    ; 11 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 6 uses
  %i.es = icmp sgt i64 %i.ep, 4
  %i.et = icmp eq i64 %i.ep, 4                    ; 2 uses
  %i.eu = icmp ugt i64 %i.ep, 9223372036854775804
  %i.ev = icmp samesign ugt i64 %i.ep, 4
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %11 = call i32 @llvm.umax.i32(i32 %4, i32 1)
  %12 = zext nneg i32 %11 to i64                  ; 15 uses
  %i.fb = shl nuw nsw i64 %12, 2
  %i.fc = and i64 %i.dt, 2147483647               ; 4 uses
  %i.fd = add nsw i64 %i.fc, -1
  %i.fe = mul nsw i64 %i.fd, %i.g                 ; 2 uses
  %i.ff = shl i64 %i.fe, 2
  %i.fg = add i64 %i.ff, %i.a
  %i.fh = sub i64 %i.eo, %i.fg
  %i.fi = shl nuw nsw i64 %i.g, 2
  %i.fj = mul i64 %i.fe, -4
  %i.fk = sub i64 %i.fj, %i.a
  %i.fl = shl nuw nsw i64 %12, 2                  ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.0351.0, i64 %i.fl
  %i.fm = add nsw i64 %i.fc, -1                   ; 2 uses
  %i.fn = mul nsw i64 %i.fm, %i.g
  %i.fo = shl i64 %i.fn, 2
  %i.fp = add i64 %i.fo, %i.a
  %i.fq = sub i64 %i.eo, %i.fp
  %i.fr = shl nuw nsw i64 %i.g, 2
  %i.fs = add nsw i64 %i.fc, -2                   ; 2 uses
  %i.ft = mul nsw i64 %i.fs, %i.g
  %i.fu = shl i64 %i.ft, 2
  %i.fv = add i64 %i.fu, %i.a
  %i.fw = sub i64 %i.eo, %i.fv
  %i.fx = mul nsw i64 %i.fm, %i.g
  %i.fy = mul i64 %i.fx, -4
  %i.fz = sub i64 %i.fy, %i.a
  %i.ga = mul nsw i64 %i.fs, %i.g
  %i.gb = mul i64 %i.ga, -4
  %i.gc = sub i64 %i.gb, %i.a
  %min.iters.check731 = icmp ult i32 %4, 12
  %n.vec733 = and i64 %wide.trip.count.i189, 2147483640 ; 3 uses
  %cmp.n744 = icmp eq i64 %n.vec733, %wide.trip.count.i189
  %xtraiter783.a = and i64 %wide.trip.count.i189, 1
  %lcmp.mod784.not.a = icmp eq i64 %xtraiter783.a, 0
  %i.gd = add nsw i64 %wide.trip.count.i189, -1
  %min.iters.check707 = icmp ult i32 %4, 8
  %invariant.op819.a = add i64 %i.fq, -1
  %invariant.op821.a = add i64 %i.fw, -1
  %n.vec709 = and i64 %wide.trip.count.i189, 2147483640 ; 3 uses
  %cmp.n721 = icmp eq i64 %n.vec709, %wide.trip.count.i189
  %min.iters.check683 = icmp ult i32 %4, 8
  %n.vec685 = and i64 %12, 2147483640             ; 3 uses
  %cmp.n694 = icmp eq i64 %n.vec685, %12
  %xtraiter785 = and i64 %12, 3                   ; 2 uses
  %lcmp.mod786.not = icmp eq i64 %xtraiter785, 0
  %min.iters.check670 = icmp ult i32 %4, 4
  %n.vec672 = and i64 %12, 2147483644             ; 3 uses
  %cmp.n678 = icmp eq i64 %n.vec672, %12
  %min.iters.check655 = icmp ult i32 %4, 8
  %i.ge = sub i64 %i.ef, %i.eo
  %diff.check646.a = icmp ugt i64 %i.ge, -32
  %invariant.op823 = add i64 %i.fh, -1
  %invariant.op825 = add i64 %i.fk, -1
  %n.vec657 = and i64 %wide.trip.count.i189, 2147483640 ; 3 uses
  %cmp.n667 = icmp eq i64 %n.vec657, %wide.trip.count.i189
  %min.iters.check = icmp ult i32 %4, 8
  %n.vec = and i64 %12, 2147483640                ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %12
  %xtraiter787 = and i64 %12, 1
  %lcmp.mod788.not = icmp eq i64 %xtraiter787, 0
  %i.gf = add nsw i64 %12, -1
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
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %i.ix
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !235, !noalias !439
  %i.ja = zext i32 %i.iz to i64
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.ja
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !96 ; 2 uses
  %i.jd = sext i32 %i.ij to i64
  %i.je = icmp sgt i64 %indvars.iv.next499, %i.jd
  %i.jf = sext i32 %i.iv to i64
  %i.jg = icmp sgt i64 %indvars.iv.next499, %i.jf
  %or.cond.i = select i1 %i.je, i1 %i.jg, i1 false
  %i.jh = sext i32 %i.jc to i64
  %i.ji = icmp sgt i64 %indvars.iv.next499, %i.jh
  %or.cond40.i = select i1 %or.cond.i, i1 %i.ji, i1 false
  br i1 %or.cond40.i, label %bb.af, label %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit.thread

bb.af:                                            ; preds = %_ZN5draco23GetParallelogramEntriesINS_24MeshAttributeCornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i
  br i1 %.not.i.i.i.i168, label %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit, label %.lr.ph.preheader.i188

.lr.ph.preheader.i188:                            ; preds = %bb.af
  %i.jj = mul nsw i32 %i.jc, %4
  %i.jk = mul nsw i32 %i.iv, %4
  %i.jl = mul nsw i32 %i.ij, %4
  %i.jm = sext i32 %i.jk to i64                   ; 2 uses
  %i.jn = sext i32 %i.jj to i64                   ; 2 uses
  %i.jo = sext i32 %i.jl to i64                   ; 2 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %1, i64 %i.jm ; 4 uses
  %invariant.gep48.i = getelementptr [4 x i8], ptr %1, i64 %i.jn ; 4 uses
  %invariant.gep50.i = getelementptr [4 x i8], ptr %1, i64 %i.jo ; 4 uses
  br i1 %min.iters.check731, label %.lr.ph.i190.preheader, label %vector.memcheck724

vector.memcheck724:                               ; preds = %.lr.ph.preheader.i188
  %i.jp = sub i64 %i.hn, %i.a                     ; 2 uses
  %i.jq = shl nsw i64 %i.jo, 2
  %i.jr = sub i64 %i.jq, %i.jp
  %diff.check725 = icmp ugt i64 %i.jr, -32
  %i.js = shl nsw i64 %i.jn, 2
  %i.jt = sub i64 %i.js, %i.jp
  %diff.check726 = icmp ugt i64 %i.jt, -32
  %conflict.rdx727 = or i1 %diff.check725, %diff.check726
  %i.ju = shl nsw i64 %i.jm, 2
  %i.jv = add i64 %i.ju, %i.a
  %i.jw = sub i64 %i.jv, %i.hn
  %diff.check728 = icmp ugt i64 %i.jw, -32
  %conflict.rdx729 = or i1 %conflict.rdx727, %diff.check728
  br i1 %conflict.rdx729, label %.lr.ph.i190.preheader, label %vector.body734

vector.body734:                                   ; preds = %vector.memcheck724, %vector.body734
  %index735 = phi i64 [ %index.next742, %vector.body734 ], [ 0, %vector.memcheck724 ] ; 5 uses
  %i.jx = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %index735 ; 2 uses
  %i.jy = getelementptr i8, ptr %i.jx, i64 16
  %wide.load736.a = load <4 x i32>, ptr %i.jx, align 4, !tbaa !96
  %wide.load737.a = load <4 x i32>, ptr %i.jy, align 4, !tbaa !96
  %i.jz = getelementptr [4 x i8], ptr %invariant.gep48.i, i64 %index735 ; 2 uses
  %i.ka = getelementptr i8, ptr %i.jz, i64 16
  %wide.load738 = load <4 x i32>, ptr %i.jz, align 4, !tbaa !96
  %wide.load739 = load <4 x i32>, ptr %i.ka, align 4, !tbaa !96
  %i.kb = getelementptr [4 x i8], ptr %invariant.gep50.i, i64 %index735 ; 2 uses
  %i.kc = getelementptr i8, ptr %i.kb, i64 16
  %wide.load740 = load <4 x i32>, ptr %i.kb, align 4, !tbaa !96
  %wide.load741 = load <4 x i32>, ptr %i.kc, align 4, !tbaa !96
  %i.kd = add <4 x i32> %wide.load738, %wide.load736.a
  %i.ke = add <4 x i32> %wide.load739, %wide.load737.a
  %i.kf = sub <4 x i32> %i.kd, %wide.load740
  %i.kg = sub <4 x i32> %i.ke, %wide.load741
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %index735 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 16
  store <4 x i32> %i.kf, ptr %i.kh, align 4, !tbaa !96
  store <4 x i32> %i.kg, ptr %i.ki, align 4, !tbaa !96
end_hunk_0
begin_hunk_1_@_ZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEE:bb.a
  %i.ny = add i64 %i.nx, -1
  %diff.check704 = icmp ult i64 %i.ny, 31
  %conflict.rdx705 = or i1 %conflict.rdx703, %diff.check704
  br i1 %conflict.rdx705, label %.lr.ph.i213.preheader751, label %vector.body710

vector.body710:                                   ; preds = %vector.memcheck696, %vector.body710
  %index711 = phi i64 [ %index.next718, %vector.body710 ], [ 0, %vector.memcheck696 ] ; 5 uses
  %vec.phi712 = phi <4 x i32> [ %i.oh, %vector.body710 ], [ zeroinitializer, %vector.memcheck696 ]
  %vec.phi713 = phi <4 x i32> [ %i.oi, %vector.body710 ], [ zeroinitializer, %vector.memcheck696 ]
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.nq, i64 %index711 ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 16
  %wide.load714 = load <4 x i32>, ptr %i.nz, align 4, !tbaa !96
  %wide.load715 = load <4 x i32>, ptr %i.oa, align 4, !tbaa !96
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %i.nr, i64 %index711 ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 16
  %wide.load716 = load <4 x i32>, ptr %i.ob, align 4, !tbaa !96
  %wide.load717 = load <4 x i32>, ptr %i.oc, align 4, !tbaa !96
  %i.od = sub nsw <4 x i32> %wide.load714, %wide.load716 ; 5 uses
  %i.oe = sub nsw <4 x i32> %wide.load715, %wide.load717 ; 5 uses
  %i.of = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.od, i1 true)
  %i.og = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.oe, i1 true)
  %i.oh = add <4 x i32> %i.of, %vec.phi712        ; 2 uses
  %i.oi = add <4 x i32> %i.og, %vec.phi713        ; 2 uses
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0342.0, i64 %index711 ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 16
  store <4 x i32> %i.od, ptr %i.oj, align 4, !tbaa !96
  store <4 x i32> %i.oe, ptr %i.ok, align 4, !tbaa !96
  %i.ol = shl nuw <4 x i32> %i.od, splat (i32 1)
  %i.om = shl nuw <4 x i32> %i.oe, splat (i32 1)
  %i.on = xor <4 x i32> %i.od, splat (i32 -1)
  %i.oo = xor <4 x i32> %i.oe, splat (i32 -1)
  %i.op = shl nuw <4 x i32> %i.on, splat (i32 1)
  %i.oq = shl nuw <4 x i32> %i.oo, splat (i32 1)
  %i.or = or disjoint <4 x i32> %i.op, splat (i32 1)
  %i.os = or disjoint <4 x i32> %i.oq, splat (i32 1)
  %i.ot = icmp slt <4 x i32> %i.od, zeroinitializer
  %i.ou = icmp slt <4 x i32> %i.oe, zeroinitializer
  %i.ov = select <4 x i1> %i.ot, <4 x i32> %i.or, <4 x i32> %i.ol
  %i.ow = select <4 x i1> %i.ou, <4 x i32> %i.os, <4 x i32> %i.om
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.ns, i64 %index711 ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 16
  store <4 x i32> %i.ov, ptr %i.ox, align 4, !tbaa !96
  store <4 x i32> %i.ow, ptr %i.oy, align 4, !tbaa !96
  %index.next718 = add nuw i64 %index711, 8       ; 2 uses
  %i.oz = icmp eq i64 %index.next718, %n.vec709
  br i1 %i.oz, label %middle.block719, label %vector.body710, !llvm.loop !416

middle.block719:                                  ; preds = %vector.body710
  %bin.rdx720 = add <4 x i32> %i.oi, %i.oh
  %i.pa = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx720) ; 2 uses
  br i1 %cmp.n721, label %._crit_edge.loopexit.i, label %.lr.ph.i213.preheader751

.lr.ph.i213.preheader751:                         ; preds = %vector.memcheck696, %.lr.ph.i213.preheader, %middle.block719
  %indvars.iv.i215.ph = phi i64 [ 0, %vector.memcheck696 ], [ 0, %.lr.ph.i213.preheader ], [ %n.vec709, %middle.block719 ]
  %.sroa.3.015.i.ph = phi i32 [ 0, %vector.memcheck696 ], [ 0, %.lr.ph.i213.preheader ], [ %i.pa, %middle.block719 ]
  br label %.lr.ph.i213

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i213, %middle.block719
  %.lcssa = phi i32 [ %i.pa, %middle.block719 ], [ %i.pl, %.lr.ph.i213 ]
  %i.pb = zext nneg i32 %.lcssa to i64
  %i.pc = shl nuw nsw i64 %i.pb, 32
  br label %._crit_edge.i212

._crit_edge.i212:                                 ; preds = %._crit_edge.loopexit.i, %._crit_edge
  %.sroa.3.0.lcssa.i = phi i64 [ %i.pc, %._crit_edge.loopexit.i ], [ 0, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  invoke void @_ZN5draco21ShannonEntropyTracker4PeekEPKji(ptr dead_on_unwind nonnull writable sret(%"struct.draco::ShannonEntropyTracker::EntropyData") align 8 %7, ptr noundef nonnull align 8 dereferenceable(48) %i.dz, ptr noundef %i.ns, i32 noundef %4)
          to label %.noexc218 unwind label %bb.aw

.noexc218:                                        ; preds = %._crit_edge.i212
  %i.pd = invoke noundef i64 @_ZN5draco21ShannonEntropyTracker19GetNumberOfDataBitsERKNS0_11EntropyDataE(ptr noundef nonnull align 8 dereferenceable(20) %7)
          to label %.noexc219 unwind label %bb.aw

.noexc219:                                        ; preds = %.noexc218
  %i.pe = invoke noundef i64 @_ZN5draco21ShannonEntropyTracker24GetNumberOfRAnsTableBitsERKNS0_11EntropyDataE(ptr noundef nonnull align 8 dereferenceable(20) %7)
          to label %bb.at unwind label %bb.aw

.lr.ph.i213:                                      ; preds = %.lr.ph.i213.preheader751, %.lr.ph.i213
  %indvars.iv.i215 = phi i64 [ %indvars.iv.next.i216, %.lr.ph.i213 ], [ %indvars.iv.i215.ph, %.lr.ph.i213.preheader751 ] ; 5 uses
  %.sroa.3.015.i = phi i32 [ %i.pl, %.lr.ph.i213 ], [ %.sroa.3.015.i.ph, %.lr.ph.i213.preheader751 ]
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.nq, i64 %indvars.iv.i215
  %i.pg = load i32, ptr %i.pf, align 4, !tbaa !96
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %i.nr, i64 %indvars.iv.i215
  %i.pi = load i32, ptr %i.ph, align 4, !tbaa !96
  %i.pj = sub nsw i32 %i.pg, %i.pi                ; 5 uses
  %i.pk = call i32 @llvm.abs.i32(i32 %i.pj, i1 true)
  %i.pl = add nuw nsw i32 %i.pk, %.sroa.3.015.i   ; 2 uses
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0342.0, i64 %indvars.iv.i215
  store i32 %i.pj, ptr %i.pm, align 4, !tbaa !96
  %i.pn = shl nuw i32 %i.pj, 1
  %i.po = xor i32 %i.pj, -1
  %i.pp = shl nuw i32 %i.po, 1
  %i.pq = or disjoint i32 %i.pp, 1
  %i.pr = icmp slt i32 %i.pj, 0
  %.0.i.i = select i1 %i.pr, i32 %i.pq, i32 %i.pn
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %i.ns, i64 %indvars.iv.i215
  store i32 %.0.i.i, ptr %i.ps, align 4, !tbaa !96
  %indvars.iv.next.i216 = add nuw nsw i64 %indvars.iv.i215, 1 ; 2 uses
  %exitcond.not.i217 = icmp eq i64 %indvars.iv.next.i216, %wide.trip.count.i189
  br i1 %exitcond.not.i217, label %._crit_edge.loopexit.i, label %.lr.ph.i213, !llvm.loop !417

bb.at:                                            ; preds = %.noexc219
  %i.pt = add nsw i64 %i.pe, %i.pd                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %i.pu = icmp sgt i32 %.2148, 0                  ; 3 uses
  br i1 %i.pu, label %bb.au, label %bb.ay

bb.au:                                            ; preds = %bb.at
  %i.pv = zext nneg i32 %.2148 to i64
  %i.pw = add nsw i32 %.2148, -1
  %i.px = zext nneg i32 %i.pw to i64              ; 2 uses
  %i.py = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.px ; 2 uses
  %i.pz = load i64, ptr %i.py, align 8, !tbaa !128
  %i.qa = add nsw i64 %i.pz, %i.pv                ; 3 uses
  store i64 %i.qa, ptr %i.py, align 8, !tbaa !128
  %i.qb = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.px
  %i.qc = load i64, ptr %i.qb, align 8, !tbaa !128
  %i.qd = trunc i64 %i.qa to i32
  %i.qe = trunc i64 %i.qc to i32
  %i.qf = invoke noundef double @_ZN5draco27ComputeBinaryShannonEntropyEjj(i32 noundef %i.qd, i32 noundef %i.qe)
          to label %bb.av unwind label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.qg = sitofp i64 %i.qa to double
  %i.qh = fmul double %i.qf, %i.qg
  %i.qi = call double @llvm.ceil.f64(double %i.qh)
  %i.qj = fptosi double %i.qi to i64
  %i.qk = add i64 %i.pt, %i.qj
  br label %bb.ay

bb.aw:                                            ; preds = %.noexc219, %.noexc218, %._crit_edge.i212
  %i.ql = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.ax:                                            ; preds = %bb.au
  %i.qm = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.ay:                                            ; preds = %bb.av, %bb.at
  %.sroa.0.0 = phi i64 [ %i.qk, %bb.av ], [ %i.pt, %bb.at ]
  %.sroa.0.0.insert.ext = and i64 %.sroa.0.0, 4294967295
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0.0.insert.ext, %.sroa.3.0.lcssa.i
  store i64 %.sroa.0.0.insert.insert, ptr %9, align 8
  store i8 0, ptr %i.ea, align 8, !tbaa !448
  store i32 0, ptr %i.dy, align 4, !tbaa !449
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %i.nq, i64 %i.g
  invoke void @_ZNSt6vectorIiSaIiEE13_M_assign_auxIPKiEEvT_S5_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.eb, ptr noundef %i.nq, ptr noundef %i.qn)
          to label %_ZNSt6vectorIiSaIiEE6assignIPKivEEvT_S5_.exit unwind label %bb.az

_ZNSt6vectorIiSaIiEE6assignIPKivEEvT_S5_.exit:    ; preds = %bb.ay
  invoke void @_ZNSt6vectorIiSaIiEE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPiS1_EEEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.ec, ptr %.sroa.0342.0, ptr %.0.i.i.i.i.i178)
          to label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit.preheader unwind label %bb.az

_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit.preheader: ; preds = %_ZNSt6vectorIiSaIiEE6assignIPKivEEvT_S5_.exit
  %.not424 = icmp slt i32 %.2148, 1
  br i1 %.not424, label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit._crit_edge.thread, label %.lr.ph426

.lr.ph426:                                        ; preds = %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit.preheader
  %i.qo = zext nneg i32 %.2148 to i64             ; 5 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.qo ; 5 uses
  %i.qq = add nsw i32 %.2148, -1
  %i.qr = zext nneg i32 %i.qq to i64              ; 2 uses
  %i.qs = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.qr
  %i.qt = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.qr
  %or.cond.i.i246 = icmp eq i32 %.2148, 1
  %.ptr35.i.i = getelementptr inbounds i8, ptr %i.qp, i64 -1 ; 3 uses
  %i.qu = sub nsw i64 0, %i.qo
  %.reass824 = add i64 %i.gp, %invariant.op823
  %diff.check648.a = icmp ult i64 %.reass824, 31
  %invariant.op = or i1 %diff.check646.a, %diff.check648.a
  %invariant.op818.reass = add i64 %i.gp, %invariant.op825
  br label %.lr.ph.preheader.i.i.i

_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit._crit_edge: ; preds = %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit
  br i1 %i.pu, label %bb.co, label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit._crit_edge.thread

bb.az:                                            ; preds = %_ZNSt6vectorIiSaIiEE6assignIPKivEEvT_S5_.exit, %bb.ay
  %i.qv = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

.lr.ph.preheader.i.i.i:                           ; preds = %.lr.ph426, %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit
  %indvar = phi i64 [ 0, %.lr.ph426 ], [ %i.qw, %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit ]
  %.0131425 = phi i32 [ 1, %.lr.ph426 ], [ %i.xx, %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit ] ; 5 uses
  %i.qw = add nuw nsw i64 %indvar, 1              ; 3 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.b, i8 1, i64 %i.qo, i1 false), !tbaa !239
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.b, i8 0, i64 %i.qw, i1 false), !tbaa !239
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.0131425, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %.preheader375

.preheader375:                                    ; preds = %.lr.ph.preheader.i.i.i, %_ZSt16next_permutationIPbEbT_S1_.exit
  br i1 %.not.i.i.i.i168, label %.lr.ph419.preheader, label %.lr.ph413.preheader

.lr.ph419.preheader:                              ; preds = %.lr.ph413.preheader, %.preheader375
  br label %.lr.ph419

.lr.ph413.preheader:                              ; preds = %.preheader375
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.sroa.0351.0, i8 0, i64 %i.fb, i1 false), !tbaa !96
  br label %.lr.ph419.preheader

.preheader373:                                    ; preds = %bb.ba
  br i1 %.not.i.i.i.i168, label %._crit_edge423.thread, label %.lr.ph422.preheader

.lr.ph422.preheader:                              ; preds = %.preheader373
  br i1 %min.iters.check670, label %.lr.ph422.preheader749, label %vector.body673

vector.body673:                                   ; preds = %.lr.ph422.preheader, %vector.body673
  %index674 = phi i64 [ %index.next676, %vector.body673 ], [ 0, %.lr.ph422.preheader ] ; 2 uses
  %i.qx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0351.0, i64 %index674 ; 2 uses
  %wide.load675 = load <4 x i32>, ptr %i.qx, align 4, !tbaa !96
  %i.qy = sdiv <4 x i32> %wide.load675, %broadcast.splat
  store <4 x i32> %i.qy, ptr %i.qx, align 4, !tbaa !96
  %index.next676 = add nuw i64 %index674, 4       ; 2 uses
  %i.qz = icmp eq i64 %index.next676, %n.vec672
  br i1 %i.qz, label %middle.block677, label %vector.body673, !llvm.loop !418

middle.block677:                                  ; preds = %vector.body673
  br i1 %cmp.n678, label %.lr.ph.i228.preheader, label %.lr.ph422.preheader749

.lr.ph422.preheader749:                           ; preds = %.lr.ph422.preheader, %middle.block677
  %indvars.iv483.ph = phi i64 [ 0, %.lr.ph422.preheader ], [ %n.vec672, %middle.block677 ]
  br label %.lr.ph422

._crit_edge423.thread:                            ; preds = %.preheader373
  %i.ra = load ptr, ptr %i.cs, align 8, !tbaa !236
  br label %._crit_edge.i224

.lr.ph419:                                        ; preds = %.lr.ph419.preheader, %bb.ba
  %indvars.iv479 = phi i64 [ %indvars.iv.next480, %bb.ba ], [ 0, %.lr.ph419.preheader ] ; 4 uses
  %.0127417 = phi i8 [ %.1128, %bb.ba ], [ 0, %.lr.ph419.preheader ] ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv479
  %i.rc = load i8, ptr %i.rb, align 1, !tbaa !239, !range !61, !noundef !62
  %i.rd = trunc nuw i8 %i.rc to i1
  br i1 %i.rd, label %bb.ba, label %.preheader372

.preheader372:                                    ; preds = %.lr.ph419
  br i1 %.not.i.i.i.i168, label %._crit_edge416, label %.lr.ph415

.lr.ph415:                                        ; preds = %.preheader372
  %i.re = getelementptr inbounds nuw [24 x i8], ptr %8, i64 %indvars.iv479
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !101 ; 8 uses
  br i1 %min.iters.check683, label %scalar.ph682.preheader, label %vector.memcheck680

vector.memcheck680:                               ; preds = %.lr.ph415
  %scevgep681 = getelementptr i8, ptr %i.rf, i64 %i.fl
  %bound0 = icmp ult ptr %.sroa.0351.0, %scevgep681
  %bound1 = icmp ult ptr %i.rf, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph682.preheader, label %vector.body686

vector.body686:                                   ; preds = %vector.memcheck680, %vector.body686
  %index687 = phi i64 [ %index.next692, %vector.body686 ], [ 0, %vector.memcheck680 ] ; 3 uses
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %i.rf, i64 %index687 ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 16
  %wide.load688 = load <4 x i32>, ptr %i.rg, align 4, !tbaa !96, !alias.scope !450
  %wide.load689 = load <4 x i32>, ptr %i.rh, align 4, !tbaa !96, !alias.scope !450
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0351.0, i64 %index687 ; 3 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 16 ; 2 uses
  %wide.load690 = load <4 x i32>, ptr %i.ri, align 4, !tbaa !96, !alias.scope !451, !noalias !450
  %wide.load691 = load <4 x i32>, ptr %i.rj, align 4, !tbaa !96, !alias.scope !451, !noalias !450
  %i.rk = add nsw <4 x i32> %wide.load690, %wide.load688
  %i.rl = add nsw <4 x i32> %wide.load691, %wide.load689
  store <4 x i32> %i.rk, ptr %i.ri, align 4, !tbaa !96, !alias.scope !451, !noalias !450
  store <4 x i32> %i.rl, ptr %i.rj, align 4, !tbaa !96, !alias.scope !451, !noalias !450
  %index.next692 = add nuw i64 %index687, 8       ; 2 uses
  %i.rm = icmp eq i64 %index.next692, %n.vec685
  br i1 %i.rm, label %middle.block693, label %vector.body686, !llvm.loop !422

middle.block693:                                  ; preds = %vector.body686
  br i1 %cmp.n694, label %._crit_edge416, label %scalar.ph682.preheader

scalar.ph682.preheader:                           ; preds = %vector.memcheck680, %.lr.ph415, %middle.block693
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck680 ], [ 0, %.lr.ph415 ], [ %n.vec685, %middle.block693 ] ; 3 uses
  br i1 %lcmp.mod786.not, label %scalar.ph682.prol.loopexit, label %scalar.ph682.prol

scalar.ph682.prol:                                ; preds = %scalar.ph682.preheader, %scalar.ph682.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph682.prol ], [ %indvars.iv.ph, %scalar.ph682.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph682.prol ], [ 0, %scalar.ph682.preheader ]
  %i.rn = getelementptr inbounds nuw [4 x i8], ptr %i.rf, i64 %indvars.iv.prol
  %i.ro = load i32, ptr %i.rn, align 4, !tbaa !96
  %i.rp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0351.0, i64 %indvars.iv.prol ; 2 uses
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !96
  %i.rr = add nsw i32 %i.rq, %i.ro
  store i32 %i.rr, ptr %i.rp, align 4, !tbaa !96
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter785
  br i1 %prol.iter.cmp.not, label %scalar.ph682.prol.loopexit, label %scalar.ph682.prol, !llvm.loop !423

scalar.ph682.prol.loopexit:                       ; preds = %scalar.ph682.prol, %scalar.ph682.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph682.preheader ], [ %indvars.iv.next.prol, %scalar.ph682.prol ]
  %i.rs = sub nsw i64 %indvars.iv.ph, %12
  %i.rt = icmp ugt i64 %i.rs, -4
  br i1 %i.rt, label %._crit_edge416, label %scalar.ph682

._crit_edge416:                                   ; preds = %scalar.ph682.prol.loopexit, %scalar.ph682, %middle.block693, %.preheader372
  %i.ru = trunc nuw nsw i64 %indvars.iv479 to i32
  %i.rv = shl nuw i32 1, %i.ru
  %i.rw = trunc i32 %i.rv to i8
  %i.rx = or i8 %.0127417, %i.rw
  br label %bb.ba

scalar.ph682:                                     ; preds = %scalar.ph682.prol.loopexit, %scalar.ph682
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph682 ], [ %indvars.iv.unr, %scalar.ph682.prol.loopexit ] ; 6 uses
  %i.ry = getelementptr inbounds nuw [4 x i8], ptr %i.rf, i64 %indvars.iv
  %i.rz = load i32, ptr %i.ry, align 4, !tbaa !96
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
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %12
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
  %i.su = sub i64 %i.eo, %i.st
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
  %exitcond488.not.a = icmp eq i64 %indvars.iv.next484, %12
  br i1 %exitcond488.not.a, label %.lr.ph.i228.preheader, label %.lr.ph422, !llvm.loop !428

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
  store i64 %.sroa.0.0.insert.insert317, ptr %9, align 8
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
  br i1 %i.em, label %bb.bf, label %bb.bg, !prof !140

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
  %i.wj = load ptr, ptr %i.eq, align 8, !tbaa !102
  %i.wk = load ptr, ptr %i.ec, align 8, !tbaa !101 ; 8 uses
  %i.wl = ptrtoint ptr %i.wj to i64
  %i.wm = ptrtoint ptr %i.wk to i64               ; 2 uses
  %i.wn = sub i64 %i.wl, %i.wm                    ; 2 uses
  %i.wo = icmp ugt i64 %i.ep, %i.wn
  br i1 %i.wo, label %bb.bu, label %bb.bz

bb.bu:                                            ; preds = %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit243
  br i1 %i.eu, label %.invoke, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i303

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i303: ; preds = %bb.bu
  %i.wp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ep) #18
          to label %.noexc308 unwind label %.loopexit376 ; 4 uses

.noexc308:                                        ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i303
  br i1 %i.ev, label %bb.bv, label %bb.bw, !prof !140

bb.bv:                                            ; preds = %.noexc308
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.wp, ptr align 4 %.sroa.0342.0, i64 %i.ep, i1 false)
  br label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPiS1_EEEES5_mT_S7_.exit.i304

bb.bw:                                            ; preds = %.noexc308
  br i1 %i.et, label %bb.bx, label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPiS1_EEEES5_mT_S7_.exit.i304

bb.bx:                                            ; preds = %bb.bw
  %i.wq = load i32, ptr %.sroa.0342.0, align 4, !tbaa !96
  store i32 %i.wq, ptr %i.wp, align 4, !tbaa !96
  br label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPiS1_EEEES5_mT_S7_.exit.i304

end_hunk_1
begin_hunk_2_@_ZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEE:bb.a
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit.i301

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit.i301: ; preds = %bb.cj, %bb.ci, %bb.ch
  %i.xh = getelementptr inbounds i8, ptr %i.xc, i64 %i.xd
  store ptr %i.xh, ptr %i.er, align 8, !tbaa !149
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
  %i.ye = add nsw i64 %i.yd, %i.xz
  store i64 %i.ye, ptr %i.yc, align 8, !tbaa !128
  br label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit._crit_edge.thread

_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit._crit_edge.thread: ; preds = %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit.preheader, %bb.co, %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit._crit_edge
  %.pre509 = load ptr, ptr %i.cs, align 8, !tbaa !236 ; 6 uses
  br i1 %.not.i.i.i.i168, label %._crit_edge430, label %.lr.ph429

.lr.ph429:                                        ; preds = %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit._crit_edge.thread
  %.pre509642 = ptrtoaddr ptr %.pre509 to i64
  %i.yf = load ptr, ptr %i.ec, align 8, !tbaa !101 ; 5 uses
  %i.yg = ptrtoaddr ptr %i.yf to i64
  %i.yh = sub i64 %i.yg, %.pre509642
  %diff.check = icmp ugt i64 %i.yh, -32
  %or.cond747 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond747, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph429, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph429 ] ; 3 uses
  %i.yi = getelementptr inbounds nuw [4 x i8], ptr %i.yf, i64 %index ; 2 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 16
  %wide.load = load <4 x i32>, ptr %i.yi, align 4, !tbaa !96 ; 3 uses
  %wide.load643 = load <4 x i32>, ptr %i.yj, align 4, !tbaa !96 ; 3 uses
  %i.yk = shl nuw <4 x i32> %wide.load, splat (i32 1)
  %i.yl = shl nuw <4 x i32> %wide.load643, splat (i32 1)
  %i.ym = xor <4 x i32> %wide.load, splat (i32 -1)
  %i.yn = xor <4 x i32> %wide.load643, splat (i32 -1)
  %i.yo = shl nuw <4 x i32> %i.ym, splat (i32 1)
  %i.yp = shl nuw <4 x i32> %i.yn, splat (i32 1)
  %i.yq = or disjoint <4 x i32> %i.yo, splat (i32 1)
  %i.yr = or disjoint <4 x i32> %i.yp, splat (i32 1)
  %i.ys = icmp slt <4 x i32> %wide.load, zeroinitializer
  %i.yt = icmp slt <4 x i32> %wide.load643, zeroinitializer
  %i.yu = select <4 x i1> %i.ys, <4 x i32> %i.yq, <4 x i32> %i.yk
  %i.yv = select <4 x i1> %i.yt, <4 x i32> %i.yr, <4 x i32> %i.yl
  %i.yw = getelementptr inbounds nuw [4 x i8], ptr %.pre509, i64 %index ; 2 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 16
  store <4 x i32> %i.yu, ptr %i.yw, align 4, !tbaa !96
  store <4 x i32> %i.yv, ptr %i.yx, align 4, !tbaa !96
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.yy = icmp eq i64 %index.next, %n.vec
  br i1 %i.yy, label %middle.block, label %vector.body, !llvm.loop !431

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge430, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph429, %middle.block
  %indvars.iv491.ph = phi i64 [ 0, %.lr.ph429 ], [ %n.vec, %middle.block ] ; 5 uses
  br i1 %lcmp.mod788.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.yz = getelementptr inbounds nuw [4 x i8], ptr %i.yf, i64 %indvars.iv491.ph
  %i.za = load i32, ptr %i.yz, align 4, !tbaa !96 ; 3 uses
  %i.zb = shl nuw i32 %i.za, 1
  %i.zc = xor i32 %i.za, -1
  %i.zd = shl nuw i32 %i.zc, 1
  %i.ze = or disjoint i32 %i.zd, 1
  %i.zf = icmp slt i32 %i.za, 0
  %.0.i249.prol = select i1 %i.zf, i32 %i.ze, i32 %i.zb
  %i.zg = getelementptr inbounds nuw [4 x i8], ptr %.pre509, i64 %indvars.iv491.ph
  store i32 %.0.i249.prol, ptr %i.zg, align 4, !tbaa !96
  %indvars.iv.next492.prol = or disjoint i64 %indvars.iv491.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv491.unr = phi i64 [ %indvars.iv491.ph, %scalar.ph.preheader ], [ %indvars.iv.next492.prol, %scalar.ph.prol ]
  %i.zh = icmp eq i64 %indvars.iv491.ph, %i.gf
  br i1 %i.zh, label %._crit_edge430, label %scalar.ph

._crit_edge430:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit._crit_edge.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  invoke void @_ZN5draco21ShannonEntropyTracker4PushEPKji(ptr dead_on_unwind nonnull writable sret(%"struct.draco::ShannonEntropyTracker::EntropyData") align 8 %10, ptr noundef nonnull align 8 dereferenceable(48) %i.dz, ptr noundef %.pre509, i32 noundef %4)
          to label %bb.cp unwind label %bb.da

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv491 = phi i64 [ %indvars.iv.next492.1, %scalar.ph ], [ %indvars.iv491.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.zi = getelementptr inbounds nuw [4 x i8], ptr %i.yf, i64 %indvars.iv491
  %i.zj = load i32, ptr %i.zi, align 4, !tbaa !96 ; 3 uses
  %i.zk = shl nuw i32 %i.zj, 1
  %i.zl = xor i32 %i.zj, -1
  %i.zm = shl nuw i32 %i.zl, 1
  %i.zn = or disjoint i32 %i.zm, 1
  %i.zo = icmp slt i32 %i.zj, 0
  %.0.i249 = select i1 %i.zo, i32 %i.zn, i32 %i.zk
  %i.zp = getelementptr inbounds nuw [4 x i8], ptr %.pre509, i64 %indvars.iv491
  store i32 %.0.i249, ptr %i.zp, align 4, !tbaa !96
  %indvars.iv.next492 = add nuw nsw i64 %indvars.iv491, 1 ; 2 uses
  %i.zq = getelementptr inbounds nuw [4 x i8], ptr %i.yf, i64 %indvars.iv.next492
  %i.zr = load i32, ptr %i.zq, align 4, !tbaa !96 ; 3 uses
  %i.zs = shl nuw i32 %i.zr, 1
  %i.zt = xor i32 %i.zr, -1
  %i.zu = shl nuw i32 %i.zt, 1
  %i.zv = or disjoint i32 %i.zu, 1
  %i.zw = icmp slt i32 %i.zr, 0
  %.0.i249.1 = select i1 %i.zw, i32 %i.zv, i32 %i.zs
  %i.zx = getelementptr inbounds nuw [4 x i8], ptr %.pre509, i64 %indvars.iv.next492
  store i32 %.0.i249.1, ptr %i.zx, align 4, !tbaa !96
  %indvars.iv.next492.1 = add nuw nsw i64 %indvars.iv491, 2 ; 2 uses
  %exitcond496.not.1 = icmp eq i64 %indvars.iv.next492.1, %12
  br i1 %exitcond496.not.1, label %._crit_edge430, label %scalar.ph, !llvm.loop !432

bb.cp:                                            ; preds = %._crit_edge430
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br i1 %i.pu, label %.lr.ph433, label %._crit_edge434

.lr.ph433:                                        ; preds = %bb.cp
  %i.zy = zext nneg i32 %.2148 to i64
  %i.zz = getelementptr [40 x i8], ptr %0, i64 %i.zy ; 4 uses
  %i.aaa = getelementptr i8, ptr %i.zz, i64 72    ; 3 uses
  %i.aab = getelementptr i8, ptr %i.zz, i64 88
  %.sroa.2.0..sroa_idx.i.i255 = getelementptr i8, ptr %i.zz, i64 80 ; 5 uses
  %i.aac = getelementptr i8, ptr %i.zz, i64 56
  br label %bb.db

._crit_edge434:                                   ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit, %bb.cp
  %i.aad = getelementptr inbounds [4 x i8], ptr %2, i64 %i.nn
  %i.aae = load i32, ptr %i.e, align 8, !tbaa !203
  %i.aaf = icmp sgt i32 %i.aae, 0
  br i1 %i.aaf, label %.lr.ph.i.lr.ph.i, label %_ZNK5draco37PredictionSchemeWrapEncodingTransformIiiE17ComputeCorrectionEPKiS3_Pi.exit

.lr.ph.i.lr.ph.i:                                 ; preds = %._crit_edge434
  %i.aag = load ptr, ptr %i.eb, align 8, !tbaa !101
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.cz, %.lr.ph.i.lr.ph.i
  %indvars.iv.i251 = phi i64 [ 0, %.lr.ph.i.lr.ph.i ], [ %indvars.iv.next.i252, %bb.cz ] ; 4 uses
  %.01516.i = phi ptr [ %i.aag, %.lr.ph.i.lr.ph.i ], [ %i.aah, %bb.cz ]
  %i.aah = load ptr, ptr %i.f, align 8            ; 4 uses
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cv, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.cv ] ; 4 uses
  %i.aai = getelementptr inbounds nuw [4 x i8], ptr %.01516.i, i64 %indvars.iv.i.i
  %i.aaj = load i32, ptr %i.aai, align 4, !tbaa !96 ; 3 uses
  %i.aak = load i32, ptr %i.ew, align 8, !tbaa !202 ; 2 uses
  %i.aal = icmp sgt i32 %i.aaj, %i.aak
  br i1 %i.aal, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.aam = getelementptr inbounds nuw [4 x i8], ptr %i.aah, i64 %indvars.iv.i.i
  store i32 %i.aak, ptr %i.aam, align 4, !tbaa !96
  br label %bb.cv

bb.cs:                                            ; preds = %bb.cq
  %i.aan = load i32, ptr %i.ex, align 4, !tbaa !201 ; 2 uses
  %i.aao = icmp slt i32 %i.aaj, %i.aan
  %i.aap = getelementptr inbounds nuw [4 x i8], ptr %i.aah, i64 %indvars.iv.i.i ; 2 uses
  br i1 %i.aao, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  store i32 %i.aan, ptr %i.aap, align 4, !tbaa !96
  br label %bb.cv

bb.cu:                                            ; preds = %bb.cs
  store i32 %i.aaj, ptr %i.aap, align 4, !tbaa !96
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct, %bb.cr
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.aaq = load i32, ptr %i.e, align 8, !tbaa !203
  %i.aar = sext i32 %i.aaq to i64
  %i.aas = icmp slt i64 %indvars.iv.next.i.i, %i.aar
  br i1 %i.aas, label %bb.cq, label %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.loopexit.i, !llvm.loop !2

_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.loopexit.i: ; preds = %bb.cv
  %i.aat = getelementptr inbounds nuw [4 x i8], ptr %i.nr, i64 %indvars.iv.i251
  %i.aau = load i32, ptr %i.aat, align 4, !tbaa !96
  %i.aav = getelementptr inbounds nuw [4 x i8], ptr %i.aah, i64 %indvars.iv.i251
  %i.aaw = load i32, ptr %i.aav, align 4, !tbaa !96
  %i.aax = sub nsw i32 %i.aau, %i.aaw             ; 5 uses
  %i.aay = getelementptr inbounds nuw [4 x i8], ptr %i.aad, i64 %indvars.iv.i251 ; 2 uses
  store i32 %i.aax, ptr %i.aay, align 4, !tbaa !96
  %i.aaz = load i32, ptr %i.ey, align 4, !tbaa !206
  %i.aba = icmp slt i32 %i.aax, %i.aaz
  br i1 %i.aba, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.loopexit.i
  %i.abb = load i32, ptr %i.fa, align 4, !tbaa !204
  %i.abc = add nsw i32 %i.abb, %i.aax
  br label %.sink.split.i

bb.cx:                                            ; preds = %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.loopexit.i
  %i.abd = load i32, ptr %i.ez, align 8, !tbaa !205
  %i.abe = icmp sgt i32 %i.aax, %i.abd
  br i1 %i.abe, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.abf = load i32, ptr %i.fa, align 4, !tbaa !204
  %i.abg = sub nsw i32 %i.aax, %i.abf
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.cy, %bb.cw
  %.sink.i = phi i32 [ %i.abg, %bb.cy ], [ %i.abc, %bb.cw ]
  store i32 %.sink.i, ptr %i.aay, align 4, !tbaa !96
  br label %bb.cz

bb.cz:                                            ; preds = %.sink.split.i, %bb.cx
  %indvars.iv.next.i252 = add nuw nsw i64 %indvars.iv.i251, 1 ; 2 uses
  %i.abh = load i32, ptr %i.e, align 8, !tbaa !203
  %i.abi = sext i32 %i.abh to i64
  %i.abj = icmp slt i64 %indvars.iv.next.i252, %i.abi
  br i1 %i.abj, label %.lr.ph.i.i, label %_ZNK5draco37PredictionSchemeWrapEncodingTransformIiiE17ComputeCorrectionEPKiS3_Pi.exit, !llvm.loop !3

bb.da:                                            ; preds = %._crit_edge430
  %i.abk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %bb.dl

bb.db:                                            ; preds = %.lr.ph433, %_ZNSt6vectorIbSaIbEE9push_backEb.exit
  %.0120431 = phi i32 [ 0, %.lr.ph433 ], [ %i.aci, %_ZNSt6vectorIbSaIbEE9push_backEb.exit ] ; 2 uses
  %i.abl = load i8, ptr %i.ea, align 8, !tbaa !448
  %i.abm = zext i8 %i.abl to i32
  %i.abn = shl nuw i32 1, %.0120431
  %i.abo = and i32 %i.abn, %i.abm
  %i.abp = icmp eq i32 %i.abo, 0                  ; 2 uses
  %i.abq = load ptr, ptr %i.aaa, align 8, !tbaa !174 ; 7 uses
  %i.abr = load ptr, ptr %i.aab, align 8, !tbaa !178
  %.not.i = icmp eq ptr %i.abq, %i.abr            ; 2 uses
  %.sroa.2.0.copyload.i11.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i255, align 8 ; 7 uses
  br i1 %i.abp, label %bb.dc, label %bb.dg

bb.dc:                                            ; preds = %bb.db
  br i1 %.not.i, label %.invoke617, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.abs = add i32 %.sroa.2.0.copyload.i11.i, 1
  store i32 %i.abs, ptr %.sroa.2.0..sroa_idx.i.i255, align 8, !tbaa !175
  %i.abt = icmp eq i32 %.sroa.2.0.copyload.i11.i, 63
  br i1 %i.abt, label %bb.de, label %_ZNSt13_Bit_iteratorppEi.exit.i

bb.de:                                            ; preds = %bb.dd
  store i32 0, ptr %.sroa.2.0..sroa_idx.i.i255, align 8, !tbaa !175
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abq, i64 8
  store ptr %i.abu, ptr %i.aaa, align 8, !tbaa !174
  br label %_ZNSt13_Bit_iteratorppEi.exit.i

_ZNSt13_Bit_iteratorppEi.exit.i:                  ; preds = %bb.de, %bb.dd
  %i.abv = zext nneg i32 %.sroa.2.0.copyload.i11.i to i64
  %i.abw = shl nuw i64 1, %i.abv
  %i.abx = load i64, ptr %i.abq, align 8, !tbaa !128
  %i.aby = or i64 %i.abx, %i.abw
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit.sink.split

bb.df:                                            ; preds = %.invoke617
  %i.abz = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.dg:                                            ; preds = %bb.db
  br i1 %.not.i, label %.invoke617, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.aca = add i32 %.sroa.2.0.copyload.i11.i, 1
  store i32 %i.aca, ptr %.sroa.2.0..sroa_idx.i.i255, align 8, !tbaa !175
  %i.acb = icmp eq i32 %.sroa.2.0.copyload.i11.i, 63
  br i1 %i.acb, label %bb.di, label %_ZNSt13_Bit_iteratorppEi.exit.i257

bb.di:                                            ; preds = %bb.dh
  store i32 0, ptr %.sroa.2.0..sroa_idx.i.i255, align 8, !tbaa !175
  %i.acc = getelementptr inbounds nuw i8, ptr %i.abq, i64 8
  store ptr %i.acc, ptr %i.aaa, align 8, !tbaa !174
  br label %_ZNSt13_Bit_iteratorppEi.exit.i257

_ZNSt13_Bit_iteratorppEi.exit.i257:               ; preds = %bb.di, %bb.dh
  %i.acd = zext nneg i32 %.sroa.2.0.copyload.i11.i to i64
  %i.ace = shl nuw i64 1, %i.acd
  %i.acf = xor i64 %i.ace, -1
  %i.acg = load i64, ptr %i.abq, align 8, !tbaa !128
  %i.ach = and i64 %i.acg, %i.acf
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit.sink.split

.invoke617:                                       ; preds = %bb.dc, %bb.dg
  invoke void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %i.aac, ptr %i.abq, i32 %.sroa.2.0.copyload.i11.i, i1 noundef zeroext %i.abp)
          to label %_ZNSt6vectorIbSaIbEE9push_backEb.exit unwind label %bb.df

_ZNSt6vectorIbSaIbEE9push_backEb.exit.sink.split: ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i, %_ZNSt13_Bit_iteratorppEi.exit.i257
  %.sink = phi i64 [ %i.ach, %_ZNSt13_Bit_iteratorppEi.exit.i257 ], [ %i.aby, %_ZNSt13_Bit_iteratorppEi.exit.i ]
  store i64 %.sink, ptr %i.abq, align 8, !tbaa !128
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

_ZNSt6vectorIbSaIbEE9push_backEb.exit:            ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit.sink.split, %.invoke617
  %i.aci = add nuw nsw i32 %.0120431, 1           ; 2 uses
  %exitcond497.not = icmp eq i32 %i.aci, %.2148
  br i1 %exitcond497.not, label %._crit_edge434, label %bb.db, !llvm.loop !433

_ZNK5draco37PredictionSchemeWrapEncodingTransformIiiE17ComputeCorrectionEPKiS3_Pi.exit: ; preds = %bb.cz, %._crit_edge434
  %i.acj = load ptr, ptr %i.ec, align 8, !tbaa !101 ; 3 uses
  %.not.i.i.i.i260 = icmp eq ptr %i.acj, null
  br i1 %.not.i.i.i.i260, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %bb.dj

bb.dj:                                            ; preds = %_ZNK5draco37PredictionSchemeWrapEncodingTransformIiiE17ComputeCorrectionEPKiS3_Pi.exit
  %i.ack = load ptr, ptr %i.eq, align 8, !tbaa !102
  %i.acl = ptrtoint ptr %i.ack to i64
  %i.acm = ptrtoint ptr %i.acj to i64
  %i.acn = sub i64 %i.acl, %i.acm
  call void @_ZdlPvm(ptr noundef nonnull %i.acj, i64 noundef %i.acn) #19
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

end_hunk_2
begin_hunk_3_@_ZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEE:bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

bb.j:                                             ; preds = %_ZN5draco37PredictionSchemeWrapEncodingTransformIiiE4InitEPKiii.exit
  invoke void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %i.g)
          to label %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge499 unwind label %bb.t

._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge499: ; preds = %bb.j
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %8, i64 24
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
  %i.ef = sub i64 %i.ed, %i.ee                    ; 11 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 6 uses
  %i.ei = icmp sgt i64 %i.ef, 4
  %i.ej = icmp eq i64 %i.ef, 4                    ; 2 uses
  %i.ek = icmp ugt i64 %i.ef, 9223372036854775804
  %i.el = icmp samesign ugt i64 %i.ef, 4
  %i.em = ptrtoint ptr %.0.i.i.i.i.i178 to i64    ; 2 uses
  %i.en = ptrtoint ptr %.sroa.0335.0 to i64       ; 8 uses
  %i.eo = sub i64 %i.em, %i.en                    ; 11 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 6 uses
  %i.er = icmp sgt i64 %i.eo, 4
  %i.es = icmp eq i64 %i.eo, 4                    ; 2 uses
  %i.et = icmp ugt i64 %i.eo, 9223372036854775804
  %i.eu = icmp samesign ugt i64 %i.eo, 4
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %11 = call i32 @llvm.umax.i32(i32 %4, i32 1)
  %12 = zext nneg i32 %11 to i64                  ; 15 uses
  %i.fa = shl nuw nsw i64 %12, 2
  %i.fb = and i64 %i.dt, 2147483647               ; 4 uses
  %i.fc = add nsw i64 %i.fb, -1
  %i.fd = mul nsw i64 %i.fc, %i.g                 ; 2 uses
  %i.fe = shl i64 %i.fd, 2
  %i.ff = add i64 %i.fe, %i.a
  %i.fg = sub i64 %i.en, %i.ff
  %i.fh = shl nuw nsw i64 %i.g, 2
  %i.fi = mul i64 %i.fd, -4
  %i.fj = sub i64 %i.fi, %i.a
  %i.fk = shl nuw nsw i64 %12, 2                  ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.0344.0, i64 %i.fk
  %i.fl = add nsw i64 %i.fb, -1                   ; 2 uses
  %i.fm = mul nsw i64 %i.fl, %i.g
  %i.fn = shl i64 %i.fm, 2
  %i.fo = add i64 %i.fn, %i.a
  %i.fp = sub i64 %i.en, %i.fo
  %i.fq = shl nuw nsw i64 %i.g, 2
  %i.fr = add nsw i64 %i.fb, -2                   ; 2 uses
  %i.fs = mul nsw i64 %i.fr, %i.g
  %i.ft = shl i64 %i.fs, 2
  %i.fu = add i64 %i.ft, %i.a
  %i.fv = sub i64 %i.en, %i.fu
  %i.fw = mul nsw i64 %i.fl, %i.g
  %i.fx = mul i64 %i.fw, -4
  %i.fy = sub i64 %i.fx, %i.a
  %i.fz = mul nsw i64 %i.fr, %i.g
  %i.ga = mul i64 %i.fz, -4
  %i.gb = sub i64 %i.ga, %i.a
  %min.iters.check726 = icmp ult i32 %4, 12
  %n.vec728 = and i64 %wide.trip.count.i187, 2147483640 ; 3 uses
  %cmp.n739 = icmp eq i64 %n.vec728, %wide.trip.count.i187
  %xtraiter778.a = and i64 %wide.trip.count.i187, 1
  %lcmp.mod779.not.a = icmp eq i64 %xtraiter778.a, 0
  %i.gc = add nsw i64 %wide.trip.count.i187, -1
  %min.iters.check702 = icmp ult i32 %4, 8
  %invariant.op814.a = add i64 %i.fp, -1
  %invariant.op816.a = add i64 %i.fv, -1
  %n.vec704 = and i64 %wide.trip.count.i187, 2147483640 ; 3 uses
  %cmp.n716 = icmp eq i64 %n.vec704, %wide.trip.count.i187
  %min.iters.check678 = icmp ult i32 %4, 8
  %n.vec680 = and i64 %12, 2147483640             ; 3 uses
  %cmp.n689 = icmp eq i64 %n.vec680, %12
  %xtraiter780 = and i64 %12, 3                   ; 2 uses
  %lcmp.mod781.not = icmp eq i64 %xtraiter780, 0
  %min.iters.check665 = icmp ult i32 %4, 4
  %n.vec667 = and i64 %12, 2147483644             ; 3 uses
  %cmp.n673 = icmp eq i64 %n.vec667, %12
  %min.iters.check650 = icmp ult i32 %4, 8
  %i.gd = sub i64 %i.ee, %i.en
  %diff.check641.a = icmp ugt i64 %i.gd, -32
  %invariant.op818 = add i64 %i.fg, -1
  %invariant.op820 = add i64 %i.fj, -1
  %n.vec652 = and i64 %wide.trip.count.i187, 2147483640 ; 3 uses
  %cmp.n662 = icmp eq i64 %n.vec652, %wide.trip.count.i187
  %min.iters.check = icmp ult i32 %4, 8
  %n.vec = and i64 %12, 2147483640                ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %12
  %xtraiter782 = and i64 %12, 1
  %lcmp.mod783.not = icmp eq i64 %xtraiter782, 0
  %i.ge = add nsw i64 %12, -1
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
  br label %_ZN5draco23GetParallelogramEntriesINS_11CornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i

_ZN5draco23GetParallelogramEntriesINS_11CornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i: ; preds = %bb.ag, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i
  %storemerge.i15.i.i = phi i64 [ %i.im, %bb.ag ], [ 4294967295, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i ]
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %storemerge.i15.i.i
  %i.io = load i32, ptr %i.in, align 4, !tbaa !96 ; 2 uses
  %i.ip = sext i32 %i.hu to i64
  %i.iq = icmp sgt i64 %indvars.iv.next493, %i.ip
  %i.ir = sext i32 %i.ie to i64
  %i.is = icmp sgt i64 %indvars.iv.next493, %i.ir
  %or.cond.i = select i1 %i.iq, i1 %i.is, i1 false
  %i.it = sext i32 %i.io to i64
  %i.iu = icmp sgt i64 %indvars.iv.next493, %i.it
  %or.cond40.i = select i1 %or.cond.i, i1 %i.iu, i1 false
  br i1 %or.cond40.i, label %bb.ah, label %_ZN5draco30ComputeParallelogramPredictionINS_11CornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit

bb.ah:                                            ; preds = %_ZN5draco23GetParallelogramEntriesINS_11CornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i
  br i1 %.not.i.i.i.i168, label %.loopexit371, label %.lr.ph.preheader.i186

.lr.ph.preheader.i186:                            ; preds = %bb.ah
  %i.iv = mul nsw i32 %i.io, %4
  %i.iw = mul nsw i32 %i.ie, %4
  %i.ix = mul nsw i32 %i.hu, %4
  %i.iy = sext i32 %i.iw to i64                   ; 2 uses
  %i.iz = sext i32 %i.iv to i64                   ; 2 uses
  %i.ja = sext i32 %i.ix to i64                   ; 2 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %1, i64 %i.iy ; 4 uses
  %invariant.gep49.i = getelementptr [4 x i8], ptr %1, i64 %i.iz ; 4 uses
  %invariant.gep51.i = getelementptr [4 x i8], ptr %1, i64 %i.ja ; 4 uses
  br i1 %min.iters.check726, label %.lr.ph.i188.preheader, label %vector.memcheck719

vector.memcheck719:                               ; preds = %.lr.ph.preheader.i186
  %i.jb = sub i64 %i.hi, %i.a                     ; 2 uses
  %i.jc = shl nsw i64 %i.ja, 2
  %i.jd = sub i64 %i.jc, %i.jb
  %diff.check720 = icmp ugt i64 %i.jd, -32
  %i.je = shl nsw i64 %i.iz, 2
  %i.jf = sub i64 %i.je, %i.jb
  %diff.check721 = icmp ugt i64 %i.jf, -32
  %conflict.rdx722 = or i1 %diff.check720, %diff.check721
  %i.jg = shl nsw i64 %i.iy, 2
  %i.jh = add i64 %i.jg, %i.a
  %i.ji = sub i64 %i.jh, %i.hi
  %diff.check723 = icmp ugt i64 %i.ji, -32
  %conflict.rdx724 = or i1 %conflict.rdx722, %diff.check723
  br i1 %conflict.rdx724, label %.lr.ph.i188.preheader, label %vector.body729

vector.body729:                                   ; preds = %vector.memcheck719, %vector.body729
  %index730 = phi i64 [ %index.next737, %vector.body729 ], [ 0, %vector.memcheck719 ] ; 5 uses
  %i.jj = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %index730 ; 2 uses
  %i.jk = getelementptr i8, ptr %i.jj, i64 16
  %wide.load731.a = load <4 x i32>, ptr %i.jj, align 4, !tbaa !96
  %wide.load732.a = load <4 x i32>, ptr %i.jk, align 4, !tbaa !96
  %i.jl = getelementptr [4 x i8], ptr %invariant.gep49.i, i64 %index730 ; 2 uses
  %i.jm = getelementptr i8, ptr %i.jl, i64 16
  %wide.load733 = load <4 x i32>, ptr %i.jl, align 4, !tbaa !96
  %wide.load734 = load <4 x i32>, ptr %i.jm, align 4, !tbaa !96
  %i.jn = getelementptr [4 x i8], ptr %invariant.gep51.i, i64 %index730 ; 2 uses
  %i.jo = getelementptr i8, ptr %i.jn, i64 16
  %wide.load735 = load <4 x i32>, ptr %i.jn, align 4, !tbaa !96
  %wide.load736 = load <4 x i32>, ptr %i.jo, align 4, !tbaa !96
  %i.jp = add <4 x i32> %wide.load733, %wide.load731.a
  %i.jq = add <4 x i32> %wide.load734, %wide.load732.a
  %i.jr = sub <4 x i32> %i.jp, %wide.load735
  %i.js = sub <4 x i32> %i.jq, %wide.load736
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %index730 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  store <4 x i32> %i.jr, ptr %i.jt, align 4, !tbaa !96
end_hunk_3
begin_hunk_4_@_ZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEE:bb.a
  %i.mk = add i64 %i.mj, -1
  %diff.check699 = icmp ult i64 %i.mk, 31
  %conflict.rdx700 = or i1 %conflict.rdx698, %diff.check699
  br i1 %conflict.rdx700, label %.lr.ph.i206.preheader746, label %vector.body705

vector.body705:                                   ; preds = %vector.memcheck691, %vector.body705
  %index706 = phi i64 [ %index.next713, %vector.body705 ], [ 0, %vector.memcheck691 ] ; 5 uses
  %vec.phi707 = phi <4 x i32> [ %i.mt, %vector.body705 ], [ zeroinitializer, %vector.memcheck691 ]
  %vec.phi708 = phi <4 x i32> [ %i.mu, %vector.body705 ], [ zeroinitializer, %vector.memcheck691 ]
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.mc, i64 %index706 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 16
  %wide.load709 = load <4 x i32>, ptr %i.ml, align 4, !tbaa !96
  %wide.load710 = load <4 x i32>, ptr %i.mm, align 4, !tbaa !96
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %index706 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 16
  %wide.load711 = load <4 x i32>, ptr %i.mn, align 4, !tbaa !96
  %wide.load712 = load <4 x i32>, ptr %i.mo, align 4, !tbaa !96
  %i.mp = sub nsw <4 x i32> %wide.load709, %wide.load711 ; 5 uses
  %i.mq = sub nsw <4 x i32> %wide.load710, %wide.load712 ; 5 uses
  %i.mr = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.mp, i1 true)
  %i.ms = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.mq, i1 true)
  %i.mt = add <4 x i32> %i.mr, %vec.phi707        ; 2 uses
  %i.mu = add <4 x i32> %i.ms, %vec.phi708        ; 2 uses
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0335.0, i64 %index706 ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 16
  store <4 x i32> %i.mp, ptr %i.mv, align 4, !tbaa !96
  store <4 x i32> %i.mq, ptr %i.mw, align 4, !tbaa !96
  %i.mx = shl nuw <4 x i32> %i.mp, splat (i32 1)
  %i.my = shl nuw <4 x i32> %i.mq, splat (i32 1)
  %i.mz = xor <4 x i32> %i.mp, splat (i32 -1)
  %i.na = xor <4 x i32> %i.mq, splat (i32 -1)
  %i.nb = shl nuw <4 x i32> %i.mz, splat (i32 1)
  %i.nc = shl nuw <4 x i32> %i.na, splat (i32 1)
  %i.nd = or disjoint <4 x i32> %i.nb, splat (i32 1)
  %i.ne = or disjoint <4 x i32> %i.nc, splat (i32 1)
  %i.nf = icmp slt <4 x i32> %i.mp, zeroinitializer
  %i.ng = icmp slt <4 x i32> %i.mq, zeroinitializer
  %i.nh = select <4 x i1> %i.nf, <4 x i32> %i.nd, <4 x i32> %i.mx
  %i.ni = select <4 x i1> %i.ng, <4 x i32> %i.ne, <4 x i32> %i.my
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.me, i64 %index706 ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 16
  store <4 x i32> %i.nh, ptr %i.nj, align 4, !tbaa !96
  store <4 x i32> %i.ni, ptr %i.nk, align 4, !tbaa !96
  %index.next713 = add nuw i64 %index706, 8       ; 2 uses
  %i.nl = icmp eq i64 %index.next713, %n.vec704
  br i1 %i.nl, label %middle.block714, label %vector.body705, !llvm.loop !647

middle.block714:                                  ; preds = %vector.body705
  %bin.rdx715 = add <4 x i32> %i.mu, %i.mt
  %i.nm = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx715) ; 2 uses
  br i1 %cmp.n716, label %._crit_edge.loopexit.i, label %.lr.ph.i206.preheader746

.lr.ph.i206.preheader746:                         ; preds = %vector.memcheck691, %.lr.ph.i206.preheader, %middle.block714
  %indvars.iv.i208.ph = phi i64 [ 0, %vector.memcheck691 ], [ 0, %.lr.ph.i206.preheader ], [ %n.vec704, %middle.block714 ]
  %.sroa.3.015.i.ph = phi i32 [ 0, %vector.memcheck691 ], [ 0, %.lr.ph.i206.preheader ], [ %i.nm, %middle.block714 ]
  br label %.lr.ph.i206

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i206, %middle.block714
  %.lcssa = phi i32 [ %i.nm, %middle.block714 ], [ %i.nx, %.lr.ph.i206 ]
  %i.nn = zext nneg i32 %.lcssa to i64
  %i.no = shl nuw nsw i64 %i.nn, 32
  br label %._crit_edge.i205

._crit_edge.i205:                                 ; preds = %._crit_edge.loopexit.i, %._crit_edge
  %.sroa.3.0.lcssa.i = phi i64 [ %i.no, %._crit_edge.loopexit.i ], [ 0, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  invoke void @_ZN5draco21ShannonEntropyTracker4PeekEPKji(ptr dead_on_unwind nonnull writable sret(%"struct.draco::ShannonEntropyTracker::EntropyData") align 8 %7, ptr noundef nonnull align 8 dereferenceable(48) %i.dy, ptr noundef %i.me, i32 noundef %4)
          to label %.noexc211 unwind label %bb.aw

.noexc211:                                        ; preds = %._crit_edge.i205
  %i.np = invoke noundef i64 @_ZN5draco21ShannonEntropyTracker19GetNumberOfDataBitsERKNS0_11EntropyDataE(ptr noundef nonnull align 8 dereferenceable(20) %7)
          to label %.noexc212 unwind label %bb.aw

.noexc212:                                        ; preds = %.noexc211
  %i.nq = invoke noundef i64 @_ZN5draco21ShannonEntropyTracker24GetNumberOfRAnsTableBitsERKNS0_11EntropyDataE(ptr noundef nonnull align 8 dereferenceable(20) %7)
          to label %bb.at unwind label %bb.aw

.lr.ph.i206:                                      ; preds = %.lr.ph.i206.preheader746, %.lr.ph.i206
  %indvars.iv.i208 = phi i64 [ %indvars.iv.next.i209, %.lr.ph.i206 ], [ %indvars.iv.i208.ph, %.lr.ph.i206.preheader746 ] ; 5 uses
  %.sroa.3.015.i = phi i32 [ %i.nx, %.lr.ph.i206 ], [ %.sroa.3.015.i.ph, %.lr.ph.i206.preheader746 ]
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %i.mc, i64 %indvars.iv.i208
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !96
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %indvars.iv.i208
  %i.nu = load i32, ptr %i.nt, align 4, !tbaa !96
  %i.nv = sub nsw i32 %i.ns, %i.nu                ; 5 uses
  %i.nw = call i32 @llvm.abs.i32(i32 %i.nv, i1 true)
  %i.nx = add nuw nsw i32 %i.nw, %.sroa.3.015.i   ; 2 uses
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0335.0, i64 %indvars.iv.i208
  store i32 %i.nv, ptr %i.ny, align 4, !tbaa !96
  %i.nz = shl nuw i32 %i.nv, 1
  %i.oa = xor i32 %i.nv, -1
  %i.ob = shl nuw i32 %i.oa, 1
  %i.oc = or disjoint i32 %i.ob, 1
  %i.od = icmp slt i32 %i.nv, 0
  %.0.i.i = select i1 %i.od, i32 %i.oc, i32 %i.nz
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %i.me, i64 %indvars.iv.i208
  store i32 %.0.i.i, ptr %i.oe, align 4, !tbaa !96
  %indvars.iv.next.i209 = add nuw nsw i64 %indvars.iv.i208, 1 ; 2 uses
  %exitcond.not.i210 = icmp eq i64 %indvars.iv.next.i209, %wide.trip.count.i187
  br i1 %exitcond.not.i210, label %._crit_edge.loopexit.i, label %.lr.ph.i206, !llvm.loop !648

bb.at:                                            ; preds = %.noexc212
  %i.of = add nsw i64 %i.nq, %i.np                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %i.og = icmp sgt i32 %.2148, 0                  ; 3 uses
  br i1 %i.og, label %bb.au, label %bb.ay

bb.au:                                            ; preds = %bb.at
  %i.oh = zext nneg i32 %.2148 to i64
  %i.oi = add nsw i32 %.2148, -1
  %i.oj = zext nneg i32 %i.oi to i64              ; 2 uses
  %i.ok = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.oj ; 2 uses
  %i.ol = load i64, ptr %i.ok, align 8, !tbaa !128
  %i.om = add nsw i64 %i.ol, %i.oh                ; 3 uses
  store i64 %i.om, ptr %i.ok, align 8, !tbaa !128
  %i.on = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.oj
  %i.oo = load i64, ptr %i.on, align 8, !tbaa !128
  %i.op = trunc i64 %i.om to i32
  %i.oq = trunc i64 %i.oo to i32
  %i.or = invoke noundef double @_ZN5draco27ComputeBinaryShannonEntropyEjj(i32 noundef %i.op, i32 noundef %i.oq)
          to label %bb.av unwind label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.os = sitofp i64 %i.om to double
  %i.ot = fmul double %i.or, %i.os
  %i.ou = call double @llvm.ceil.f64(double %i.ot)
  %i.ov = fptosi double %i.ou to i64
  %i.ow = add i64 %i.of, %i.ov
  br label %bb.ay

bb.aw:                                            ; preds = %.noexc212, %.noexc211, %._crit_edge.i205
  %i.ox = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.ax:                                            ; preds = %bb.au
  %i.oy = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.ay:                                            ; preds = %bb.av, %bb.at
  %.sroa.0.0 = phi i64 [ %i.ow, %bb.av ], [ %i.of, %bb.at ]
  %.sroa.0.0.insert.ext = and i64 %.sroa.0.0, 4294967295
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0.0.insert.ext, %.sroa.3.0.lcssa.i
  store i64 %.sroa.0.0.insert.insert, ptr %9, align 8
  store i8 0, ptr %i.dz, align 8, !tbaa !675
  store i32 0, ptr %i.dx, align 4, !tbaa !676
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %i.mc, i64 %i.g
  invoke void @_ZNSt6vectorIiSaIiEE13_M_assign_auxIPKiEEvT_S5_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.ea, ptr noundef %i.mc, ptr noundef %i.oz)
          to label %_ZNSt6vectorIiSaIiEE6assignIPKivEEvT_S5_.exit unwind label %bb.az

_ZNSt6vectorIiSaIiEE6assignIPKivEEvT_S5_.exit:    ; preds = %bb.ay
  invoke void @_ZNSt6vectorIiSaIiEE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPiS1_EEEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.eb, ptr %.sroa.0335.0, ptr %.0.i.i.i.i.i178)
          to label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit.preheader unwind label %bb.az

_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit.preheader: ; preds = %_ZNSt6vectorIiSaIiEE6assignIPKivEEvT_S5_.exit
  %.not418 = icmp slt i32 %.2148, 1
  br i1 %.not418, label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit._crit_edge.thread, label %.lr.ph420

.lr.ph420:                                        ; preds = %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit.preheader
  %i.pa = zext nneg i32 %.2148 to i64             ; 5 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.pa ; 5 uses
  %i.pc = add nsw i32 %.2148, -1
  %i.pd = zext nneg i32 %i.pc to i64              ; 2 uses
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.pd
  %i.pf = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.pd
  %or.cond.i.i239 = icmp eq i32 %.2148, 1
  %.ptr35.i.i = getelementptr inbounds i8, ptr %i.pb, i64 -1 ; 3 uses
  %i.pg = sub nsw i64 0, %i.pa
  %.reass819 = add i64 %i.go, %invariant.op818
  %diff.check643.a = icmp ult i64 %.reass819, 31
  %invariant.op = or i1 %diff.check641.a, %diff.check643.a
  %invariant.op813.reass = add i64 %i.go, %invariant.op820
  br label %.lr.ph.preheader.i.i.i

_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit._crit_edge: ; preds = %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit
  br i1 %i.og, label %bb.co, label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit._crit_edge.thread

bb.az:                                            ; preds = %_ZNSt6vectorIiSaIiEE6assignIPKivEEvT_S5_.exit, %bb.ay
  %i.ph = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

.lr.ph.preheader.i.i.i:                           ; preds = %.lr.ph420, %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit
  %indvar = phi i64 [ 0, %.lr.ph420 ], [ %i.pi, %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit ]
  %.0131419 = phi i32 [ 1, %.lr.ph420 ], [ %i.wj, %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit ] ; 5 uses
  %i.pi = add nuw nsw i64 %indvar, 1              ; 3 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.b, i8 1, i64 %i.pa, i1 false), !tbaa !239
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.b, i8 0, i64 %i.pi, i1 false), !tbaa !239
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.0131419, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %.preheader368

.preheader368:                                    ; preds = %.lr.ph.preheader.i.i.i, %_ZSt16next_permutationIPbEbT_S1_.exit
  br i1 %.not.i.i.i.i168, label %.lr.ph413.preheader, label %.lr.ph.preheader

.lr.ph413.preheader:                              ; preds = %.lr.ph.preheader, %.preheader368
  br label %.lr.ph413

.lr.ph.preheader:                                 ; preds = %.preheader368
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.sroa.0344.0, i8 0, i64 %i.fa, i1 false), !tbaa !96
  br label %.lr.ph413.preheader

.preheader366:                                    ; preds = %bb.ba
  br i1 %.not.i.i.i.i168, label %._crit_edge417.thread, label %.lr.ph416.preheader

.lr.ph416.preheader:                              ; preds = %.preheader366
  br i1 %min.iters.check665, label %.lr.ph416.preheader744, label %vector.body668

vector.body668:                                   ; preds = %.lr.ph416.preheader, %vector.body668
  %index669 = phi i64 [ %index.next671, %vector.body668 ], [ 0, %.lr.ph416.preheader ] ; 2 uses
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0344.0, i64 %index669 ; 2 uses
  %wide.load670 = load <4 x i32>, ptr %i.pj, align 4, !tbaa !96
  %i.pk = sdiv <4 x i32> %wide.load670, %broadcast.splat
  store <4 x i32> %i.pk, ptr %i.pj, align 4, !tbaa !96
  %index.next671 = add nuw i64 %index669, 4       ; 2 uses
  %i.pl = icmp eq i64 %index.next671, %n.vec667
  br i1 %i.pl, label %middle.block672, label %vector.body668, !llvm.loop !649

middle.block672:                                  ; preds = %vector.body668
  br i1 %cmp.n673, label %.lr.ph.i221.preheader, label %.lr.ph416.preheader744

.lr.ph416.preheader744:                           ; preds = %.lr.ph416.preheader, %middle.block672
  %indvars.iv477.ph = phi i64 [ 0, %.lr.ph416.preheader ], [ %n.vec667, %middle.block672 ]
  br label %.lr.ph416

._crit_edge417.thread:                            ; preds = %.preheader366
  %i.pm = load ptr, ptr %i.cs, align 8, !tbaa !236
  br label %._crit_edge.i217

.lr.ph413:                                        ; preds = %.lr.ph413.preheader, %bb.ba
  %indvars.iv473 = phi i64 [ %indvars.iv.next474, %bb.ba ], [ 0, %.lr.ph413.preheader ] ; 4 uses
  %.0127411 = phi i8 [ %.1128, %bb.ba ], [ 0, %.lr.ph413.preheader ] ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv473
  %i.po = load i8, ptr %i.pn, align 1, !tbaa !239, !range !61, !noundef !62
  %i.pp = trunc nuw i8 %i.po to i1
  br i1 %i.pp, label %bb.ba, label %.preheader365

.preheader365:                                    ; preds = %.lr.ph413
  br i1 %.not.i.i.i.i168, label %._crit_edge410, label %.lr.ph409

.lr.ph409:                                        ; preds = %.preheader365
  %i.pq = getelementptr inbounds nuw [24 x i8], ptr %8, i64 %indvars.iv473
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !101 ; 8 uses
  br i1 %min.iters.check678, label %scalar.ph677.preheader, label %vector.memcheck675

vector.memcheck675:                               ; preds = %.lr.ph409
  %scevgep676 = getelementptr i8, ptr %i.pr, i64 %i.fk
  %bound0 = icmp ult ptr %.sroa.0344.0, %scevgep676
  %bound1 = icmp ult ptr %i.pr, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph677.preheader, label %vector.body681

vector.body681:                                   ; preds = %vector.memcheck675, %vector.body681
  %index682 = phi i64 [ %index.next687, %vector.body681 ], [ 0, %vector.memcheck675 ] ; 3 uses
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %i.pr, i64 %index682 ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 16
  %wide.load683 = load <4 x i32>, ptr %i.ps, align 4, !tbaa !96, !alias.scope !677
  %wide.load684 = load <4 x i32>, ptr %i.pt, align 4, !tbaa !96, !alias.scope !677
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0344.0, i64 %index682 ; 3 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 16 ; 2 uses
  %wide.load685 = load <4 x i32>, ptr %i.pu, align 4, !tbaa !96, !alias.scope !678, !noalias !677
  %wide.load686 = load <4 x i32>, ptr %i.pv, align 4, !tbaa !96, !alias.scope !678, !noalias !677
  %i.pw = add nsw <4 x i32> %wide.load685, %wide.load683
  %i.px = add nsw <4 x i32> %wide.load686, %wide.load684
  store <4 x i32> %i.pw, ptr %i.pu, align 4, !tbaa !96, !alias.scope !678, !noalias !677
  store <4 x i32> %i.px, ptr %i.pv, align 4, !tbaa !96, !alias.scope !678, !noalias !677
  %index.next687 = add nuw i64 %index682, 8       ; 2 uses
  %i.py = icmp eq i64 %index.next687, %n.vec680
  br i1 %i.py, label %middle.block688, label %vector.body681, !llvm.loop !653

middle.block688:                                  ; preds = %vector.body681
  br i1 %cmp.n689, label %._crit_edge410, label %scalar.ph677.preheader

scalar.ph677.preheader:                           ; preds = %vector.memcheck675, %.lr.ph409, %middle.block688
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck675 ], [ 0, %.lr.ph409 ], [ %n.vec680, %middle.block688 ] ; 3 uses
  br i1 %lcmp.mod781.not, label %scalar.ph677.prol.loopexit, label %scalar.ph677.prol

scalar.ph677.prol:                                ; preds = %scalar.ph677.preheader, %scalar.ph677.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph677.prol ], [ %indvars.iv.ph, %scalar.ph677.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph677.prol ], [ 0, %scalar.ph677.preheader ]
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr %i.pr, i64 %indvars.iv.prol
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !96
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0344.0, i64 %indvars.iv.prol ; 2 uses
  %i.qc = load i32, ptr %i.qb, align 4, !tbaa !96
  %i.qd = add nsw i32 %i.qc, %i.qa
  store i32 %i.qd, ptr %i.qb, align 4, !tbaa !96
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter780
  br i1 %prol.iter.cmp.not, label %scalar.ph677.prol.loopexit, label %scalar.ph677.prol, !llvm.loop !654

scalar.ph677.prol.loopexit:                       ; preds = %scalar.ph677.prol, %scalar.ph677.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph677.preheader ], [ %indvars.iv.next.prol, %scalar.ph677.prol ]
  %i.qe = sub nsw i64 %indvars.iv.ph, %12
  %i.qf = icmp ugt i64 %i.qe, -4
  br i1 %i.qf, label %._crit_edge410, label %scalar.ph677

._crit_edge410:                                   ; preds = %scalar.ph677.prol.loopexit, %scalar.ph677, %middle.block688, %.preheader365
  %i.qg = trunc nuw nsw i64 %indvars.iv473 to i32
  %i.qh = shl nuw i32 1, %i.qg
  %i.qi = trunc i32 %i.qh to i8
  %i.qj = or i8 %.0127411, %i.qi
  br label %bb.ba

scalar.ph677:                                     ; preds = %scalar.ph677.prol.loopexit, %scalar.ph677
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph677 ], [ %indvars.iv.unr, %scalar.ph677.prol.loopexit ] ; 6 uses
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr %i.pr, i64 %indvars.iv
  %i.ql = load i32, ptr %i.qk, align 4, !tbaa !96
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
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %12
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
  %i.rg = sub i64 %i.en, %i.rf
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
  %exitcond482.not.a = icmp eq i64 %indvars.iv.next478, %12
  br i1 %exitcond482.not.a, label %.lr.ph.i221.preheader, label %.lr.ph416, !llvm.loop !659

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
  store i64 %.sroa.0.0.insert.insert310, ptr %9, align 8
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
  br i1 %i.el, label %bb.bf, label %bb.bg, !prof !140

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
  %i.uv = load ptr, ptr %i.ep, align 8, !tbaa !102
  %i.uw = load ptr, ptr %i.eb, align 8, !tbaa !101 ; 8 uses
  %i.ux = ptrtoint ptr %i.uv to i64
  %i.uy = ptrtoint ptr %i.uw to i64               ; 2 uses
  %i.uz = sub i64 %i.ux, %i.uy                    ; 2 uses
  %i.va = icmp ugt i64 %i.eo, %i.uz
  br i1 %i.va, label %bb.bu, label %bb.bz

bb.bu:                                            ; preds = %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit236
  br i1 %i.et, label %.invoke, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i296

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i296: ; preds = %bb.bu
  %i.vb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eo) #18
          to label %.noexc301 unwind label %.loopexit369 ; 4 uses

.noexc301:                                        ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i296
  br i1 %i.eu, label %bb.bv, label %bb.bw, !prof !140

bb.bv:                                            ; preds = %.noexc301
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.vb, ptr align 4 %.sroa.0335.0, i64 %i.eo, i1 false)
  br label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPiS1_EEEES5_mT_S7_.exit.i297

bb.bw:                                            ; preds = %.noexc301
  br i1 %i.es, label %bb.bx, label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPiS1_EEEES5_mT_S7_.exit.i297

bb.bx:                                            ; preds = %bb.bw
  %i.vc = load i32, ptr %.sroa.0335.0, align 4, !tbaa !96
  store i32 %i.vc, ptr %i.vb, align 4, !tbaa !96
  br label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPiS1_EEEES5_mT_S7_.exit.i297

end_hunk_4
begin_hunk_5_@_ZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEE:bb.a
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit.i294

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit.i294: ; preds = %bb.cj, %bb.ci, %bb.ch
  %i.vt = getelementptr inbounds i8, ptr %i.vo, i64 %i.vp
  store ptr %i.vt, ptr %i.eq, align 8, !tbaa !149
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
  %i.wq = add nsw i64 %i.wp, %i.wl
  store i64 %i.wq, ptr %i.wo, align 8, !tbaa !128
  br label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit._crit_edge.thread

_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit._crit_edge.thread: ; preds = %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit.preheader, %bb.co, %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit._crit_edge
  %.pre503 = load ptr, ptr %i.cs, align 8, !tbaa !236 ; 6 uses
  br i1 %.not.i.i.i.i168, label %._crit_edge424, label %.lr.ph423

.lr.ph423:                                        ; preds = %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit._crit_edge.thread
  %.pre503637 = ptrtoaddr ptr %.pre503 to i64
  %i.wr = load ptr, ptr %i.eb, align 8, !tbaa !101 ; 5 uses
  %i.ws = ptrtoaddr ptr %i.wr to i64
  %i.wt = sub i64 %i.ws, %.pre503637
  %diff.check = icmp ugt i64 %i.wt, -32
  %or.cond742 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond742, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph423, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph423 ] ; 3 uses
  %i.wu = getelementptr inbounds nuw [4 x i8], ptr %i.wr, i64 %index ; 2 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wu, i64 16
  %wide.load = load <4 x i32>, ptr %i.wu, align 4, !tbaa !96 ; 3 uses
  %wide.load638 = load <4 x i32>, ptr %i.wv, align 4, !tbaa !96 ; 3 uses
  %i.ww = shl nuw <4 x i32> %wide.load, splat (i32 1)
  %i.wx = shl nuw <4 x i32> %wide.load638, splat (i32 1)
  %i.wy = xor <4 x i32> %wide.load, splat (i32 -1)
  %i.wz = xor <4 x i32> %wide.load638, splat (i32 -1)
  %i.xa = shl nuw <4 x i32> %i.wy, splat (i32 1)
  %i.xb = shl nuw <4 x i32> %i.wz, splat (i32 1)
  %i.xc = or disjoint <4 x i32> %i.xa, splat (i32 1)
  %i.xd = or disjoint <4 x i32> %i.xb, splat (i32 1)
  %i.xe = icmp slt <4 x i32> %wide.load, zeroinitializer
  %i.xf = icmp slt <4 x i32> %wide.load638, zeroinitializer
  %i.xg = select <4 x i1> %i.xe, <4 x i32> %i.xc, <4 x i32> %i.ww
  %i.xh = select <4 x i1> %i.xf, <4 x i32> %i.xd, <4 x i32> %i.wx
  %i.xi = getelementptr inbounds nuw [4 x i8], ptr %.pre503, i64 %index ; 2 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xi, i64 16
  store <4 x i32> %i.xg, ptr %i.xi, align 4, !tbaa !96
  store <4 x i32> %i.xh, ptr %i.xj, align 4, !tbaa !96
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.xk = icmp eq i64 %index.next, %n.vec
  br i1 %i.xk, label %middle.block, label %vector.body, !llvm.loop !662

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge424, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph423, %middle.block
  %indvars.iv485.ph = phi i64 [ 0, %.lr.ph423 ], [ %n.vec, %middle.block ] ; 5 uses
  br i1 %lcmp.mod783.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.xl = getelementptr inbounds nuw [4 x i8], ptr %i.wr, i64 %indvars.iv485.ph
  %i.xm = load i32, ptr %i.xl, align 4, !tbaa !96 ; 3 uses
  %i.xn = shl nuw i32 %i.xm, 1
  %i.xo = xor i32 %i.xm, -1
  %i.xp = shl nuw i32 %i.xo, 1
  %i.xq = or disjoint i32 %i.xp, 1
  %i.xr = icmp slt i32 %i.xm, 0
  %.0.i242.prol = select i1 %i.xr, i32 %i.xq, i32 %i.xn
  %i.xs = getelementptr inbounds nuw [4 x i8], ptr %.pre503, i64 %indvars.iv485.ph
  store i32 %.0.i242.prol, ptr %i.xs, align 4, !tbaa !96
  %indvars.iv.next486.prol = or disjoint i64 %indvars.iv485.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv485.unr = phi i64 [ %indvars.iv485.ph, %scalar.ph.preheader ], [ %indvars.iv.next486.prol, %scalar.ph.prol ]
  %i.xt = icmp eq i64 %indvars.iv485.ph, %i.ge
  br i1 %i.xt, label %._crit_edge424, label %scalar.ph

._crit_edge424:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit._crit_edge.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  invoke void @_ZN5draco21ShannonEntropyTracker4PushEPKji(ptr dead_on_unwind nonnull writable sret(%"struct.draco::ShannonEntropyTracker::EntropyData") align 8 %10, ptr noundef nonnull align 8 dereferenceable(48) %i.dy, ptr noundef %.pre503, i32 noundef %4)
          to label %bb.cp unwind label %bb.da

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv485 = phi i64 [ %indvars.iv.next486.1, %scalar.ph ], [ %indvars.iv485.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.xu = getelementptr inbounds nuw [4 x i8], ptr %i.wr, i64 %indvars.iv485
  %i.xv = load i32, ptr %i.xu, align 4, !tbaa !96 ; 3 uses
  %i.xw = shl nuw i32 %i.xv, 1
  %i.xx = xor i32 %i.xv, -1
  %i.xy = shl nuw i32 %i.xx, 1
  %i.xz = or disjoint i32 %i.xy, 1
  %i.ya = icmp slt i32 %i.xv, 0
  %.0.i242 = select i1 %i.ya, i32 %i.xz, i32 %i.xw
  %i.yb = getelementptr inbounds nuw [4 x i8], ptr %.pre503, i64 %indvars.iv485
  store i32 %.0.i242, ptr %i.yb, align 4, !tbaa !96
  %indvars.iv.next486 = add nuw nsw i64 %indvars.iv485, 1 ; 2 uses
  %i.yc = getelementptr inbounds nuw [4 x i8], ptr %i.wr, i64 %indvars.iv.next486
  %i.yd = load i32, ptr %i.yc, align 4, !tbaa !96 ; 3 uses
  %i.ye = shl nuw i32 %i.yd, 1
  %i.yf = xor i32 %i.yd, -1
  %i.yg = shl nuw i32 %i.yf, 1
  %i.yh = or disjoint i32 %i.yg, 1
  %i.yi = icmp slt i32 %i.yd, 0
  %.0.i242.1 = select i1 %i.yi, i32 %i.yh, i32 %i.ye
  %i.yj = getelementptr inbounds nuw [4 x i8], ptr %.pre503, i64 %indvars.iv.next486
  store i32 %.0.i242.1, ptr %i.yj, align 4, !tbaa !96
  %indvars.iv.next486.1 = add nuw nsw i64 %indvars.iv485, 2 ; 2 uses
  %exitcond490.not.1 = icmp eq i64 %indvars.iv.next486.1, %12
  br i1 %exitcond490.not.1, label %._crit_edge424, label %scalar.ph, !llvm.loop !663

bb.cp:                                            ; preds = %._crit_edge424
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br i1 %i.og, label %.lr.ph427, label %._crit_edge428

.lr.ph427:                                        ; preds = %bb.cp
  %i.yk = zext nneg i32 %.2148 to i64
  %i.yl = getelementptr [40 x i8], ptr %0, i64 %i.yk ; 4 uses
  %i.ym = getelementptr i8, ptr %i.yl, i64 72     ; 3 uses
  %i.yn = getelementptr i8, ptr %i.yl, i64 88
  %.sroa.2.0..sroa_idx.i.i248 = getelementptr i8, ptr %i.yl, i64 80 ; 5 uses
  %i.yo = getelementptr i8, ptr %i.yl, i64 56
  br label %bb.db

._crit_edge428:                                   ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit, %bb.cp
  %i.yp = getelementptr inbounds [4 x i8], ptr %2, i64 %i.lz
  %i.yq = load i32, ptr %i.e, align 8, !tbaa !203
  %i.yr = icmp sgt i32 %i.yq, 0
  br i1 %i.yr, label %.lr.ph.i.lr.ph.i, label %_ZNK5draco37PredictionSchemeWrapEncodingTransformIiiE17ComputeCorrectionEPKiS3_Pi.exit

.lr.ph.i.lr.ph.i:                                 ; preds = %._crit_edge428
  %i.ys = load ptr, ptr %i.ea, align 8, !tbaa !101
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.cz, %.lr.ph.i.lr.ph.i
  %indvars.iv.i244 = phi i64 [ 0, %.lr.ph.i.lr.ph.i ], [ %indvars.iv.next.i245, %bb.cz ] ; 4 uses
  %.01516.i = phi ptr [ %i.ys, %.lr.ph.i.lr.ph.i ], [ %i.yt, %bb.cz ]
  %i.yt = load ptr, ptr %i.f, align 8             ; 4 uses
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cv, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.cv ] ; 4 uses
  %i.yu = getelementptr inbounds nuw [4 x i8], ptr %.01516.i, i64 %indvars.iv.i.i
  %i.yv = load i32, ptr %i.yu, align 4, !tbaa !96 ; 3 uses
  %i.yw = load i32, ptr %i.ev, align 8, !tbaa !202 ; 2 uses
  %i.yx = icmp sgt i32 %i.yv, %i.yw
  br i1 %i.yx, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.yy = getelementptr inbounds nuw [4 x i8], ptr %i.yt, i64 %indvars.iv.i.i
  store i32 %i.yw, ptr %i.yy, align 4, !tbaa !96
  br label %bb.cv

bb.cs:                                            ; preds = %bb.cq
  %i.yz = load i32, ptr %i.ew, align 4, !tbaa !201 ; 2 uses
  %i.za = icmp slt i32 %i.yv, %i.yz
  %i.zb = getelementptr inbounds nuw [4 x i8], ptr %i.yt, i64 %indvars.iv.i.i ; 2 uses
  br i1 %i.za, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  store i32 %i.yz, ptr %i.zb, align 4, !tbaa !96
  br label %bb.cv

bb.cu:                                            ; preds = %bb.cs
  store i32 %i.yv, ptr %i.zb, align 4, !tbaa !96
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct, %bb.cr
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.zc = load i32, ptr %i.e, align 8, !tbaa !203
  %i.zd = sext i32 %i.zc to i64
  %i.ze = icmp slt i64 %indvars.iv.next.i.i, %i.zd
  br i1 %i.ze, label %bb.cq, label %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.loopexit.i, !llvm.loop !2

_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.loopexit.i: ; preds = %bb.cv
  %i.zf = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %indvars.iv.i244
  %i.zg = load i32, ptr %i.zf, align 4, !tbaa !96
  %i.zh = getelementptr inbounds nuw [4 x i8], ptr %i.yt, i64 %indvars.iv.i244
  %i.zi = load i32, ptr %i.zh, align 4, !tbaa !96
  %i.zj = sub nsw i32 %i.zg, %i.zi                ; 5 uses
  %i.zk = getelementptr inbounds nuw [4 x i8], ptr %i.yp, i64 %indvars.iv.i244 ; 2 uses
  store i32 %i.zj, ptr %i.zk, align 4, !tbaa !96
  %i.zl = load i32, ptr %i.ex, align 4, !tbaa !206
  %i.zm = icmp slt i32 %i.zj, %i.zl
  br i1 %i.zm, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.loopexit.i
  %i.zn = load i32, ptr %i.ez, align 4, !tbaa !204
  %i.zo = add nsw i32 %i.zn, %i.zj
  br label %.sink.split.i

bb.cx:                                            ; preds = %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.loopexit.i
  %i.zp = load i32, ptr %i.ey, align 8, !tbaa !205
  %i.zq = icmp sgt i32 %i.zj, %i.zp
  br i1 %i.zq, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.zr = load i32, ptr %i.ez, align 4, !tbaa !204
  %i.zs = sub nsw i32 %i.zj, %i.zr
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.cy, %bb.cw
  %.sink.i = phi i32 [ %i.zs, %bb.cy ], [ %i.zo, %bb.cw ]
  store i32 %.sink.i, ptr %i.zk, align 4, !tbaa !96
  br label %bb.cz

bb.cz:                                            ; preds = %.sink.split.i, %bb.cx
  %indvars.iv.next.i245 = add nuw nsw i64 %indvars.iv.i244, 1 ; 2 uses
  %i.zt = load i32, ptr %i.e, align 8, !tbaa !203
  %i.zu = sext i32 %i.zt to i64
  %i.zv = icmp slt i64 %indvars.iv.next.i245, %i.zu
  br i1 %i.zv, label %.lr.ph.i.i, label %_ZNK5draco37PredictionSchemeWrapEncodingTransformIiiE17ComputeCorrectionEPKiS3_Pi.exit, !llvm.loop !3

bb.da:                                            ; preds = %._crit_edge424
  %i.zw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %bb.dl

bb.db:                                            ; preds = %.lr.ph427, %_ZNSt6vectorIbSaIbEE9push_backEb.exit
  %.0120425 = phi i32 [ 0, %.lr.ph427 ], [ %i.aau, %_ZNSt6vectorIbSaIbEE9push_backEb.exit ] ; 2 uses
  %i.zx = load i8, ptr %i.dz, align 8, !tbaa !675
  %i.zy = zext i8 %i.zx to i32
  %i.zz = shl nuw i32 1, %.0120425
  %i.aaa = and i32 %i.zz, %i.zy
  %i.aab = icmp eq i32 %i.aaa, 0                  ; 2 uses
  %i.aac = load ptr, ptr %i.ym, align 8, !tbaa !174 ; 7 uses
  %i.aad = load ptr, ptr %i.yn, align 8, !tbaa !178
  %.not.i = icmp eq ptr %i.aac, %i.aad            ; 2 uses
  %.sroa.2.0.copyload.i11.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i248, align 8 ; 7 uses
  br i1 %i.aab, label %bb.dc, label %bb.dg

bb.dc:                                            ; preds = %bb.db
  br i1 %.not.i, label %.invoke612, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.aae = add i32 %.sroa.2.0.copyload.i11.i, 1
  store i32 %i.aae, ptr %.sroa.2.0..sroa_idx.i.i248, align 8, !tbaa !175
  %i.aaf = icmp eq i32 %.sroa.2.0.copyload.i11.i, 63
  br i1 %i.aaf, label %bb.de, label %_ZNSt13_Bit_iteratorppEi.exit.i

bb.de:                                            ; preds = %bb.dd
  store i32 0, ptr %.sroa.2.0..sroa_idx.i.i248, align 8, !tbaa !175
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aac, i64 8
  store ptr %i.aag, ptr %i.ym, align 8, !tbaa !174
  br label %_ZNSt13_Bit_iteratorppEi.exit.i

_ZNSt13_Bit_iteratorppEi.exit.i:                  ; preds = %bb.de, %bb.dd
  %i.aah = zext nneg i32 %.sroa.2.0.copyload.i11.i to i64
  %i.aai = shl nuw i64 1, %i.aah
  %i.aaj = load i64, ptr %i.aac, align 8, !tbaa !128
  %i.aak = or i64 %i.aaj, %i.aai
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit.sink.split

bb.df:                                            ; preds = %.invoke612
  %i.aal = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.dg:                                            ; preds = %bb.db
  br i1 %.not.i, label %.invoke612, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.aam = add i32 %.sroa.2.0.copyload.i11.i, 1
  store i32 %i.aam, ptr %.sroa.2.0..sroa_idx.i.i248, align 8, !tbaa !175
  %i.aan = icmp eq i32 %.sroa.2.0.copyload.i11.i, 63
  br i1 %i.aan, label %bb.di, label %_ZNSt13_Bit_iteratorppEi.exit.i250

bb.di:                                            ; preds = %bb.dh
  store i32 0, ptr %.sroa.2.0..sroa_idx.i.i248, align 8, !tbaa !175
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aac, i64 8
  store ptr %i.aao, ptr %i.ym, align 8, !tbaa !174
  br label %_ZNSt13_Bit_iteratorppEi.exit.i250

_ZNSt13_Bit_iteratorppEi.exit.i250:               ; preds = %bb.di, %bb.dh
  %i.aap = zext nneg i32 %.sroa.2.0.copyload.i11.i to i64
  %i.aaq = shl nuw i64 1, %i.aap
  %i.aar = xor i64 %i.aaq, -1
  %i.aas = load i64, ptr %i.aac, align 8, !tbaa !128
  %i.aat = and i64 %i.aas, %i.aar
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit.sink.split

.invoke612:                                       ; preds = %bb.dc, %bb.dg
  invoke void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %i.yo, ptr %i.aac, i32 %.sroa.2.0.copyload.i11.i, i1 noundef zeroext %i.aab)
          to label %_ZNSt6vectorIbSaIbEE9push_backEb.exit unwind label %bb.df

_ZNSt6vectorIbSaIbEE9push_backEb.exit.sink.split: ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i, %_ZNSt13_Bit_iteratorppEi.exit.i250
  %.sink = phi i64 [ %i.aat, %_ZNSt13_Bit_iteratorppEi.exit.i250 ], [ %i.aak, %_ZNSt13_Bit_iteratorppEi.exit.i ]
  store i64 %.sink, ptr %i.aac, align 8, !tbaa !128
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

_ZNSt6vectorIbSaIbEE9push_backEb.exit:            ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit.sink.split, %.invoke612
  %i.aau = add nuw nsw i32 %.0120425, 1           ; 2 uses
  %exitcond491.not = icmp eq i32 %i.aau, %.2148
  br i1 %exitcond491.not, label %._crit_edge428, label %bb.db, !llvm.loop !664

_ZNK5draco37PredictionSchemeWrapEncodingTransformIiiE17ComputeCorrectionEPKiS3_Pi.exit: ; preds = %bb.cz, %._crit_edge428
  %i.aav = load ptr, ptr %i.eb, align 8, !tbaa !101 ; 3 uses
  %.not.i.i.i.i253 = icmp eq ptr %i.aav, null
  br i1 %.not.i.i.i.i253, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %bb.dj

bb.dj:                                            ; preds = %_ZNK5draco37PredictionSchemeWrapEncodingTransformIiiE17ComputeCorrectionEPKiS3_Pi.exit
  %i.aaw = load ptr, ptr %i.ep, align 8, !tbaa !102
  %i.aax = ptrtoint ptr %i.aaw to i64
  %i.aay = ptrtoint ptr %i.aav to i64
  %i.aaz = sub i64 %i.aax, %i.aay
  call void @_ZdlPvm(ptr noundef nonnull %i.aav, i64 noundef %i.aaz) #19
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

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
