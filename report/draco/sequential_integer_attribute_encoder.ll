Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/draco/original/sequential_integer_attribute_encoder?download=true
inline.NumInlined: 2377
inline.NumDeleted: 912
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 55
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
  %.sroa.0351.0 = phi ptr [ %i.ba, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ba, %.noexc169 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 28 uses
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
  %11 = call i32 @llvm.umax.i32(i32 %4, i32 1)    ; 2 uses
  %12 = zext nneg i32 %11 to i64                  ; 14 uses
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
  %i.gd = add nsw i64 %12, -1                     ; 2 uses
  %min.iters.check720 = icmp ult i32 %4, 12
  %n.vec722 = and i64 %wide.trip.count.i189, 2147483640 ; 3 uses
  %cmp.n733 = icmp eq i64 %n.vec722, %wide.trip.count.i189
  %xtraiter771.a = and i64 %wide.trip.count.i189, 1
  %lcmp.mod772.not.a = icmp eq i64 %xtraiter771.a, 0
  %13 = add nsw i64 %wide.trip.count.i189, -1
  %min.iters.check696 = icmp ult i32 %4, 8
  %invariant.op812.a = add i64 %i.fq, -1
  %invariant.op814.a = add i64 %i.fw, -1
  %n.vec698 = and i64 %wide.trip.count.i189, 2147483640 ; 3 uses
  %cmp.n710 = icmp eq i64 %n.vec698, %wide.trip.count.i189
  %min.iters.check672 = icmp ult i32 %4, 8
  %n.vec674 = and i64 %12, 2147483640             ; 3 uses
  %cmp.n683 = icmp eq i64 %n.vec674, %12
  %xtraiter773 = and i64 %12, 3                   ; 2 uses
  %lcmp.mod774.not = icmp eq i64 %xtraiter773, 0
  %xtraiter775 = and i64 %12, 1
  %i.ge = icmp eq i64 %i.gd, 0
  %unroll_iter778 = and i64 %12, 2147483646
  %lcmp.mod776.not = icmp eq i64 %xtraiter775, 0
  %lcmp.mod777 = trunc i32 %11 to i1
  %min.iters.check655 = icmp ult i32 %4, 8
  %i.gf = sub i64 %i.ef, %i.eo
  %diff.check646.a = icmp ugt i64 %i.gf, -32
  %invariant.op816 = add i64 %i.fh, -1
  %invariant.op818 = add i64 %i.fk, -1
  %n.vec657 = and i64 %wide.trip.count.i189, 2147483640 ; 3 uses
  %cmp.n667 = icmp eq i64 %n.vec657, %wide.trip.count.i189
  %min.iters.check = icmp ult i32 %4, 8
  %n.vec = and i64 %12, 2147483640                ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %12
  %xtraiter780 = and i64 %12, 1
  %lcmp.mod781.not = icmp eq i64 %xtraiter780, 0
  %i.gg = add nsw i64 %12, -1
  br label %bb.ab

.preheader:                                       ; preds = %_ZZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEEEN23PredictionConfigurationD2Ev.exit, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit182
  br i1 %.not.i.i.i.i168, label %._crit_edge441, label %.lr.ph440

.lr.ph440:                                        ; preds = %.preheader
  %i.gh = load ptr, ptr %8, align 16, !tbaa !101
  %i.gi = zext nneg i32 %4 to i64
  %i.gj = shl nuw nsw i64 %i.gi, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.gh, i8 0, i64 %i.gj, i1 false), !tbaa !96
  br label %._crit_edge441

bb.y:                                             ; preds = %bb.i, %bb.h
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit283

bb.z:                                             ; preds = %bb.u
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ec

bb.aa:                                            ; preds = %bb.x
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit281

bb.ab:                                            ; preds = %.lr.ph438, %_ZZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEEEN23PredictionConfigurationD2Ev.exit
  %indvar647 = phi i64 [ 0, %.lr.ph438 ], [ %indvar.next, %_ZZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEEEN23PredictionConfigurationD2Ev.exit ] ; 3 uses
  %indvars.iv498 = phi i64 [ %i.fc, %.lr.ph438 ], [ %indvars.iv.next499, %_ZZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEEEN23PredictionConfigurationD2Ev.exit ] ; 3 uses
  %i.gn = mul i64 %i.fr, %indvar647               ; 4 uses
  %i.go = add i64 %i.fz, %i.gn
  %i.gp = add i64 %i.gc, %i.gn
  %i.gq = mul i64 %i.fi, %indvar647               ; 2 uses
  %indvars.iv.next499 = add nsw i64 %indvars.iv498, -1 ; 8 uses
  %i.gr = load ptr, ptr %i.dl, align 8, !tbaa !159 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !209
  %i.gu = load ptr, ptr %i.gr, align 8, !tbaa !210 ; 2 uses
  %i.gv = ptrtoint ptr %i.gt to i64
  %i.gw = ptrtoint ptr %i.gu to i64
  %i.gx = sub i64 %i.gv, %i.gw
  %i.gy = ashr exact i64 %i.gx, 2                 ; 2 uses
  %.not.i.i183 = icmp ugt i64 %i.gy, %indvars.iv.next499
  br i1 %.not.i.i183, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.6, i64 noundef %indvars.iv.next499, i64 noundef %i.gy) #20
          to label %.noexc184 unwind label %bb.ag

.noexc184:                                        ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv.next499
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !212 ; 6 uses
  %.not369404 = icmp eq i32 %i.ha, -1
  br i1 %.not369404, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ad
  %i.hb = load ptr, ptr %i.aw, align 8, !tbaa !174, !noalias !434
  %i.hc = urem i32 %i.ha, 3
  %.not.i.i.i202 = icmp ne i32 %i.hc, 0           ; 2 uses
  %i.hd = add i32 %i.ha, -1
  %i.he = add i32 %i.ha, 2                        ; 2 uses
  %i.hf = icmp ne i32 %i.he, -1
  %brmerge = or i1 %.not.i.i.i202, %i.hf
  %.mux = select i1 %.not.i.i.i202, i32 %i.hd, i32 %i.he ; 3 uses
  %i.hg = lshr i32 %.mux, 6
  %.zext.i.i.i205 = zext nneg i32 %i.hg to i64
  %i.hh = and i32 %.mux, 63
  %i.hi = zext nneg i32 %i.hh to i64
  %i.hj = shl nuw i64 1, %i.hi
  %i.hk = zext i32 %.mux to i64
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph, %_ZNK5draco24MeshAttributeCornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit211
  %.0144407 = phi i1 [ true, %.lr.ph ], [ %.1145, %_ZNK5draco24MeshAttributeCornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit211 ] ; 3 uses
  %.0146406 = phi i32 [ 0, %.lr.ph ], [ %.1147, %_ZNK5draco24MeshAttributeCornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit211 ] ; 5 uses
  %.sroa.0332.0405 = phi i32 [ %i.ha, %.lr.ph ], [ %.sroa.0332.2, %_ZNK5draco24MeshAttributeCornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit211 ] ; 8 uses
  %i.hl = sext i32 %.0146406 to i64
  %i.hm = getelementptr inbounds [24 x i8], ptr %8, i64 %i.hl
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !101 ; 5 uses
  %i.ho = ptrtoaddr ptr %i.hn to i64              ; 2 uses
  %i.hp = lshr i32 %.sroa.0332.0405, 6
  %.zext.i.i.i = zext nneg i32 %i.hp to i64
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %.zext.i.i.i
  %i.hr = and i32 %.sroa.0332.0405, 63
  %i.hs = zext nneg i32 %i.hr to i64
  %i.ht = shl nuw i64 1, %i.hs
  %i.hu = load i64, ptr %i.hq, align 8, !tbaa !128, !noalias !434
  %i.hv = and i64 %i.hu, %i.ht
  %.not.i.i185 = icmp eq i64 %i.hv, 0
  br i1 %.not.i.i185, label %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, label %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit.thread

_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i: ; preds = %bb.ae
  %i.hw = load ptr, ptr %i.dw, align 8, !tbaa !232, !noalias !434
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 24
  %i.hy = zext i32 %.sroa.0332.0405 to i64
  %i.hz = load ptr, ptr %i.hx, align 8, !tbaa !210, !noalias !435
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %i.hy
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !212, !noalias !435 ; 5 uses
  %i.ic = icmp eq i32 %i.ib, -1
  br i1 %i.ic, label %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit.thread, label %_ZN5draco23GetParallelogramEntriesINS_24MeshAttributeCornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i

_ZN5draco23GetParallelogramEntriesINS_24MeshAttributeCornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i: ; preds = %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i
  %i.id = zext i32 %i.ib to i64
  %i.ie = load ptr, ptr %i.dx, align 8, !tbaa !233, !noalias !436 ; 3 uses
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %i.id
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !235, !noalias !436
  %i.ih = zext i32 %i.ig to i64
  %i.ii = load ptr, ptr %i.ay, align 8, !tbaa !101 ; 3 uses
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %i.ih
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !96 ; 2 uses
  %i.il = insertelement <2 x i32> poison, i32 %i.ib, i64 0
  %i.im = shufflevector <2 x i32> %i.il, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.in = add nuw <2 x i32> %i.im, <i32 0, i32 1>
  %i.io = urem <2 x i32> %i.in, splat (i32 3)
  %i.ip = icmp eq <2 x i32> %i.io, zeroinitializer ; 2 uses
  %i.iq = extractelement <2 x i1> %i.ip, i64 1
  %spec.select.i.i.i.i.v = select i1 %i.iq, i32 -2, i32 1
  %spec.select.i.i.i.i = add i32 %i.ib, %spec.select.i.i.i.i.v
  %i.ir = zext i32 %spec.select.i.i.i.i to i64
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %i.ir
  %i.it = load i32, ptr %i.is, align 4, !tbaa !235, !noalias !437
  %i.iu = zext i32 %i.it to i64
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %i.iu
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !96 ; 2 uses
  %i.ix = extractelement <2 x i1> %i.ip, i64 0
  %.sink.i.i12.i.v.i = select i1 %i.ix, i32 2, i32 -1
  %.sink.i.i12.i.i = add i32 %.sink.i.i12.i.v.i, %i.ib
  %i.iy = zext i32 %.sink.i.i12.i.i to i64
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %i.iy
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !235, !noalias !438
  %i.jb = zext i32 %i.ja to i64
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %i.jb
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !96 ; 2 uses
  %i.je = sext i32 %i.ik to i64
  %i.jf = icmp sgt i64 %indvars.iv.next499, %i.je
  %i.jg = sext i32 %i.iw to i64
  %i.jh = icmp sgt i64 %indvars.iv.next499, %i.jg
  %or.cond.i = select i1 %i.jf, i1 %i.jh, i1 false
  %i.ji = sext i32 %i.jd to i64
  %i.jj = icmp sgt i64 %indvars.iv.next499, %i.ji
  %or.cond40.i = select i1 %or.cond.i, i1 %i.jj, i1 false
  br i1 %or.cond40.i, label %bb.af, label %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit.thread

bb.af:                                            ; preds = %_ZN5draco23GetParallelogramEntriesINS_24MeshAttributeCornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i
  br i1 %.not.i.i.i.i168, label %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit, label %.lr.ph.preheader.i188

.lr.ph.preheader.i188:                            ; preds = %bb.af
  %i.jk = mul nsw i32 %i.jd, %4
  %i.jl = mul nsw i32 %i.iw, %4
  %i.jm = mul nsw i32 %i.ik, %4
  %i.jn = sext i32 %i.jl to i64                   ; 2 uses
  %i.jo = sext i32 %i.jk to i64                   ; 2 uses
  %i.jp = sext i32 %i.jm to i64                   ; 2 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %1, i64 %i.jn ; 4 uses
  %invariant.gep48.i = getelementptr [4 x i8], ptr %1, i64 %i.jo ; 4 uses
  %invariant.gep50.i = getelementptr [4 x i8], ptr %1, i64 %i.jp ; 4 uses
  br i1 %min.iters.check720, label %.lr.ph.i190.preheader, label %vector.memcheck713

vector.memcheck713:                               ; preds = %.lr.ph.preheader.i188
  %i.jq = sub i64 %i.ho, %i.a                     ; 2 uses
  %i.jr = shl nsw i64 %i.jp, 2
  %i.js = sub i64 %i.jr, %i.jq
  %diff.check714 = icmp ugt i64 %i.js, -32
  %i.jt = shl nsw i64 %i.jo, 2
  %i.ju = sub i64 %i.jt, %i.jq
  %diff.check715 = icmp ugt i64 %i.ju, -32
  %conflict.rdx716 = or i1 %diff.check714, %diff.check715
  %i.jv = shl nsw i64 %i.jn, 2
  %i.jw = add i64 %i.jv, %i.a
  %i.jx = sub i64 %i.jw, %i.ho
  %diff.check717 = icmp ugt i64 %i.jx, -32
  %conflict.rdx718 = or i1 %conflict.rdx716, %diff.check717
  br i1 %conflict.rdx718, label %.lr.ph.i190.preheader, label %vector.body723

vector.body723:                                   ; preds = %vector.memcheck713, %vector.body723
  %index724 = phi i64 [ %index.next731, %vector.body723 ], [ 0, %vector.memcheck713 ] ; 5 uses
  %i.jy = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %index724 ; 2 uses
  %i.jz = getelementptr i8, ptr %i.jy, i64 16
  %wide.load725.a = load <4 x i32>, ptr %i.jy, align 4, !tbaa !96
  %wide.load726.a = load <4 x i32>, ptr %i.jz, align 4, !tbaa !96
  %i.ka = getelementptr [4 x i8], ptr %invariant.gep48.i, i64 %index724 ; 2 uses
  %i.kb = getelementptr i8, ptr %i.ka, i64 16
  %wide.load727 = load <4 x i32>, ptr %i.ka, align 4, !tbaa !96
  %wide.load728 = load <4 x i32>, ptr %i.kb, align 4, !tbaa !96
  %i.kc = getelementptr [4 x i8], ptr %invariant.gep50.i, i64 %index724 ; 2 uses
  %i.kd = getelementptr i8, ptr %i.kc, i64 16
  %wide.load729 = load <4 x i32>, ptr %i.kc, align 4, !tbaa !96
  %wide.load730 = load <4 x i32>, ptr %i.kd, align 4, !tbaa !96
  %i.ke = add <4 x i32> %wide.load727, %wide.load725.a
  %i.kf = add <4 x i32> %wide.load728, %wide.load726.a
  %i.kg = sub <4 x i32> %i.ke, %wide.load729
  %i.kh = sub <4 x i32> %i.kf, %wide.load730
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %index724 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 16
  store <4 x i32> %i.kg, ptr %i.ki, align 4, !tbaa !96
  store <4 x i32> %i.kh, ptr %i.kj, align 4, !tbaa !96
  %index.next731 = add nuw i64 %index724, 8       ; 2 uses
  %i.kk = icmp eq i64 %index.next731, %n.vec722
  br i1 %i.kk, label %middle.block732, label %vector.body723, !llvm.loop !395

middle.block732:                                  ; preds = %vector.body723
  br i1 %cmp.n733, label %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit, label %.lr.ph.i190.preheader

.lr.ph.i190.preheader:                            ; preds = %vector.memcheck713, %.lr.ph.preheader.i188, %middle.block732
  %indvars.iv.i191.ph = phi i64 [ 0, %vector.memcheck713 ], [ 0, %.lr.ph.preheader.i188 ], [ %n.vec722, %middle.block732 ] ; 7 uses
  br i1 %lcmp.mod772.not.a, label %.lr.ph.i190.prol.loopexit, label %.lr.ph.i190.prol

.lr.ph.i190.prol:                                 ; preds = %.lr.ph.i190.preheader
  %gep.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i191.ph
  %i.kl = load i32, ptr %gep.i.prol, align 4, !tbaa !96
  %gep49.i.prol = getelementptr [4 x i8], ptr %invariant.gep48.i, i64 %indvars.iv.i191.ph
  %i.km = load i32, ptr %gep49.i.prol, align 4, !tbaa !96
  %gep51.i.prol = getelementptr [4 x i8], ptr %invariant.gep50.i, i64 %indvars.iv.i191.ph
  %i.kn = load i32, ptr %gep51.i.prol, align 4, !tbaa !96
  %i.ko = add i32 %i.km, %i.kl
  %i.kp = sub i32 %i.ko, %i.kn
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %indvars.iv.i191.ph
  store i32 %i.kp, ptr %i.kq, align 4, !tbaa !96
  %indvars.iv.next.i192.prol = or disjoint i64 %indvars.iv.i191.ph, 1
  br label %.lr.ph.i190.prol.loopexit

.lr.ph.i190.prol.loopexit:                        ; preds = %.lr.ph.i190.prol, %.lr.ph.i190.preheader
  %indvars.iv.i191.unr = phi i64 [ %indvars.iv.i191.ph, %.lr.ph.i190.preheader ], [ %indvars.iv.next.i192.prol, %.lr.ph.i190.prol ]
  %i.kr = icmp eq i64 %indvars.iv.i191.ph, %13
  br i1 %i.kr, label %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit, label %.lr.ph.i190

.lr.ph.i190:                                      ; preds = %.lr.ph.i190.prol.loopexit, %.lr.ph.i190
  %indvars.iv.i191 = phi i64 [ %indvars.iv.next.i192.1, %.lr.ph.i190 ], [ %indvars.iv.i191.unr, %.lr.ph.i190.prol.loopexit ] ; 6 uses
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i191
  %i.ks = load i32, ptr %gep.i, align 4, !tbaa !96
  %gep49.i = getelementptr [4 x i8], ptr %invariant.gep48.i, i64 %indvars.iv.i191
  %i.kt = load i32, ptr %gep49.i, align 4, !tbaa !96
  %gep51.i = getelementptr [4 x i8], ptr %invariant.gep50.i, i64 %indvars.iv.i191
  %i.ku = load i32, ptr %gep51.i, align 4, !tbaa !96
  %i.kv = add i32 %i.kt, %i.ks
  %i.kw = sub i32 %i.kv, %i.ku
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %indvars.iv.i191
  store i32 %i.kw, ptr %i.kx, align 4, !tbaa !96
  %indvars.iv.next.i192 = add nuw nsw i64 %indvars.iv.i191, 1 ; 4 uses
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i192
  %i.ky = load i32, ptr %gep.i.1, align 4, !tbaa !96
  %gep49.i.1 = getelementptr [4 x i8], ptr %invariant.gep48.i, i64 %indvars.iv.next.i192
  %i.kz = load i32, ptr %gep49.i.1, align 4, !tbaa !96
  %gep51.i.1 = getelementptr [4 x i8], ptr %invariant.gep50.i, i64 %indvars.iv.next.i192
  %i.la = load i32, ptr %gep51.i.1, align 4, !tbaa !96
  %i.lb = add i32 %i.kz, %i.ky
  %i.lc = sub i32 %i.lb, %i.la
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %indvars.iv.next.i192
  store i32 %i.lc, ptr %i.ld, align 4, !tbaa !96
  %indvars.iv.next.i192.1 = add nuw nsw i64 %indvars.iv.i191, 2 ; 2 uses
  %exitcond.not.i193.1 = icmp eq i64 %indvars.iv.next.i192.1, %wide.trip.count.i189
  br i1 %exitcond.not.i193.1, label %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit, label %.lr.ph.i190, !llvm.loop !396

_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit: ; preds = %.lr.ph.i190.prol.loopexit, %.lr.ph.i190, %middle.block732, %bb.af
  %i.le = add nsw i32 %.0146406, 1                ; 2 uses
  %i.lf = icmp eq i32 %i.le, 4
  br i1 %i.lf, label %._crit_edge, label %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit.thread

bb.ag:                                            ; preds = %bb.ac
  %i.lg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit.thread: ; preds = %bb.ae, %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %_ZN5draco23GetParallelogramEntriesINS_24MeshAttributeCornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i, %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit
  %.1147 = phi i32 [ %i.le, %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit ], [ %.0146406, %_ZN5draco23GetParallelogramEntriesINS_24MeshAttributeCornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i ], [ %.0146406, %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i ], [ %.0146406, %bb.ae ] ; 6 uses
  br i1 %.0144407, label %_ZNK5draco24MeshAttributeCornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, label %bb.aj

_ZNK5draco24MeshAttributeCornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i: ; preds = %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit.thread
  %i.lh = add nuw i32 %.sroa.0332.0405, 1         ; 2 uses
  %i.li = urem i32 %i.lh, 3
  %.not.i.i.i = icmp eq i32 %i.li, 0
  %i.lj = add i32 %.sroa.0332.0405, -2
  %spec.select.i.i.i = select i1 %.not.i.i.i, i32 %i.lj, i32 %i.lh ; 4 uses
  %i.lk = icmp eq i32 %spec.select.i.i.i, -1
  br i1 %i.lk, label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZNK5draco24MeshAttributeCornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i
  %i.ll = load ptr, ptr %i.aw, align 8, !tbaa !174, !noalias !439
  %i.lm = lshr i32 %spec.select.i.i.i, 6
  %.zext.i.i.i194 = zext nneg i32 %i.lm to i64
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %i.ll, i64 %.zext.i.i.i194
  %i.lo = and i32 %spec.select.i.i.i, 63
  %i.lp = zext nneg i32 %i.lo to i64
  %i.lq = shl nuw i64 1, %i.lp
  %i.lr = load i64, ptr %i.ln, align 8, !tbaa !128, !noalias !439
  %i.ls = and i64 %i.lr, %i.lq
  %.not.i.i195 = icmp eq i64 %i.ls, 0
  br i1 %.not.i.i195, label %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i196, label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i196: ; preds = %bb.ah
  %i.lt = load ptr, ptr %i.dw, align 8, !tbaa !232, !noalias !439
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 24
  %i.lv = zext i32 %spec.select.i.i.i to i64
  %i.lw = load ptr, ptr %i.lu, align 8, !tbaa !210, !noalias !440
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.lw, i64 %i.lv
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !212, !noalias !440 ; 3 uses
  %i.lz = icmp eq i32 %i.ly, -1
  br i1 %i.lz, label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i196
  %i.ma = add nuw i32 %i.ly, 1                    ; 2 uses
  %i.mb = urem i32 %i.ma, 3
  %.not.i.i1.i = icmp eq i32 %i.mb, 0
  %i.mc = add i32 %i.ly, -2
  %spec.select.i.i2.i = select i1 %.not.i.i1.i, i32 %i.mc, i32 %i.ma
  br label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

bb.aj:                                            ; preds = %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit.thread
  %i.md = urem i32 %.sroa.0332.0405, 3
  %.not.i.i.i197 = icmp eq i32 %i.md, 0
  br i1 %.not.i.i.i197, label %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, label %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i

_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i: ; preds = %bb.aj
  %i.me = add i32 %.sroa.0332.0405, -1
  br label %bb.ak

_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i: ; preds = %bb.aj
  %i.mf = add i32 %.sroa.0332.0405, 2             ; 2 uses
  %i.mg = icmp eq i32 %i.mf, -1
  br i1 %i.mg, label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i
  %.sink.i.i9.i = phi i32 [ %i.me, %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i ], [ %i.mf, %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i ] ; 3 uses
  %i.mh = load ptr, ptr %i.aw, align 8, !tbaa !174, !noalias !441
  %i.mi = lshr i32 %.sink.i.i9.i, 6
  %.zext.i.i.i198 = zext nneg i32 %i.mi to i64
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %i.mh, i64 %.zext.i.i.i198
  %i.mk = and i32 %.sink.i.i9.i, 63
  %i.ml = zext nneg i32 %i.mk to i64
  %i.mm = shl nuw i64 1, %i.ml
  %i.mn = load i64, ptr %i.mj, align 8, !tbaa !128, !noalias !441
  %i.mo = and i64 %i.mm, %i.mn
  %.not.i.i199 = icmp eq i64 %i.mo, 0
  br i1 %.not.i.i199, label %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i200, label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i200: ; preds = %bb.ak
  %i.mp = load ptr, ptr %i.dw, align 8, !tbaa !232, !noalias !441
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 24
  %i.mr = zext i32 %.sink.i.i9.i to i64
  %i.ms = load ptr, ptr %i.mq, align 8, !tbaa !210, !noalias !442
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.ms, i64 %i.mr
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !212, !noalias !442 ; 4 uses
  %i.mv = icmp eq i32 %i.mu, -1
  br i1 %i.mv, label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %bb.al

bb.al:                                            ; preds = %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i200
  %i.mw = urem i32 %i.mu, 3
  %.not.i.i1.i201 = icmp eq i32 %i.mw, 0
  br i1 %.not.i.i1.i201, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.mx = add i32 %i.mu, -1
  br label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

bb.an:                                            ; preds = %bb.al
  %i.my = add i32 %i.mu, 2
  br label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit: ; preds = %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %bb.ak, %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i200, %bb.am, %bb.an, %_ZNK5draco24MeshAttributeCornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %bb.ah, %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i196, %bb.ai
  %.sroa.0332.1 = phi i32 [ -1, %bb.ah ], [ -1, %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i196 ], [ %spec.select.i.i2.i, %bb.ai ], [ -1, %_ZNK5draco24MeshAttributeCornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i ], [ %i.mx, %bb.am ], [ %i.my, %bb.an ], [ -1, %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i200 ], [ -1, %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i ], [ -1, %bb.ak ] ; 3 uses
  %i.mz = icmp eq i32 %.sroa.0332.1, %i.ha
  br i1 %i.mz, label %._crit_edge, label %bb.ao

bb.ao:                                            ; preds = %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %i.na = icmp eq i32 %.sroa.0332.1, -1
  %or.cond = and i1 %.0144407, %i.na
  br i1 %or.cond, label %bb.ap, label %_ZNK5draco24MeshAttributeCornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit211

bb.ap:                                            ; preds = %bb.ao
  br i1 %brmerge, label %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i203, label %._crit_edge

_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i203: ; preds = %bb.ap
  %i.nb = load ptr, ptr %i.aw, align 8, !tbaa !174, !noalias !443
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.nb, i64 %.zext.i.i.i205
  %i.nd = load i64, ptr %i.nc, align 8, !tbaa !128, !noalias !443
  %i.ne = and i64 %i.hj, %i.nd
  %.not.i.i206 = icmp eq i64 %i.ne, 0
  br i1 %.not.i.i206, label %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i208, label %._crit_edge

_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i208: ; preds = %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i203
  %i.nf = load ptr, ptr %i.dw, align 8, !tbaa !232, !noalias !443
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 24
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !210, !noalias !444
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %i.hk
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !212, !noalias !444 ; 4 uses
  %i.nk = icmp eq i32 %i.nj, -1
  br i1 %i.nk, label %._crit_edge, label %bb.aq

bb.aq:                                            ; preds = %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i208
  %i.nl = urem i32 %i.nj, 3
  %.not.i.i1.i209 = icmp eq i32 %i.nl, 0
  br i1 %.not.i.i1.i209, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.nm = add i32 %i.nj, -1
  br label %_ZNK5draco24MeshAttributeCornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit211

bb.as:                                            ; preds = %bb.aq
  %i.nn = add i32 %i.nj, 2
  br label %_ZNK5draco24MeshAttributeCornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit211

_ZNK5draco24MeshAttributeCornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit211: ; preds = %bb.ar, %bb.as, %bb.ao
  %.sroa.0332.2 = phi i32 [ %.sroa.0332.1, %bb.ao ], [ %i.nm, %bb.ar ], [ %i.nn, %bb.as ] ; 2 uses
  %.1145 = phi i1 [ %.0144407, %bb.ao ], [ false, %bb.ar ], [ false, %bb.as ]
  %.not369 = icmp eq i32 %.sroa.0332.2, -1
  br i1 %.not369, label %._crit_edge, label %bb.ae, !llvm.loop !415

._crit_edge:                                      ; preds = %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i203, %bb.ap, %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i208, %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit, %_ZNK5draco24MeshAttributeCornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit211, %bb.ad
  %.2148 = phi i32 [ 0, %bb.ad ], [ %.1147, %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i203 ], [ %.1147, %bb.ap ], [ %.1147, %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i208 ], [ %.1147, %_ZNK5draco24MeshAttributeCornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit211 ], [ 4, %_ZN5draco30ComputeParallelogramPredictionINS_24MeshAttributeCornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit ], [ %.1147, %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %9, i8 0, i64 9, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.dy, i8 0, i64 52, i1 false)
  %i.no = mul nuw nsw i64 %indvars.iv.next499, %i.g ; 2 uses
  %i.np = add nsw i64 %indvars.iv498, -2
  %i.nq = mul nuw nsw i64 %i.np, %i.g
  %i.nr = getelementptr inbounds [4 x i8], ptr %1, i64 %i.nq ; 4 uses
  %i.ns = getelementptr inbounds [4 x i8], ptr %1, i64 %i.no ; 5 uses
  %i.nt = load ptr, ptr %i.cs, align 8, !tbaa !236 ; 4 uses
  %i.nu = ptrtoaddr ptr %i.nt to i64              ; 3 uses
  br i1 %.not.i.i.i.i168, label %._crit_edge.i212, label %.lr.ph.i213.preheader

.lr.ph.i213.preheader:                            ; preds = %._crit_edge
  br i1 %min.iters.check696, label %.lr.ph.i213.preheader739, label %vector.memcheck685

end_hunk_0
begin_hunk_1_@_ZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEE:bb.a
  %conflict.rdx692 = or i1 %conflict.rdx690.a, %diff.check691
  %i.ny = add i64 %i.gp, %i.nu
  %i.nz = add i64 %i.ny, -1
  %diff.check693 = icmp ult i64 %i.nz, 31
  %conflict.rdx694 = or i1 %conflict.rdx692, %diff.check693
  br i1 %conflict.rdx694, label %.lr.ph.i213.preheader739, label %vector.body699

vector.body699:                                   ; preds = %vector.memcheck685, %vector.body699
  %index700 = phi i64 [ %index.next707, %vector.body699 ], [ 0, %vector.memcheck685 ] ; 5 uses
  %vec.phi701 = phi <4 x i32> [ %i.oi, %vector.body699 ], [ zeroinitializer, %vector.memcheck685 ]
  %vec.phi702 = phi <4 x i32> [ %i.oj, %vector.body699 ], [ zeroinitializer, %vector.memcheck685 ]
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.nr, i64 %index700 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 16
  %wide.load703 = load <4 x i32>, ptr %i.oa, align 4, !tbaa !96
  %wide.load704 = load <4 x i32>, ptr %i.ob, align 4, !tbaa !96
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.ns, i64 %index700 ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 16
  %wide.load705 = load <4 x i32>, ptr %i.oc, align 4, !tbaa !96
  %wide.load706 = load <4 x i32>, ptr %i.od, align 4, !tbaa !96
  %i.oe = sub nsw <4 x i32> %wide.load703, %wide.load705 ; 5 uses
  %i.of = sub nsw <4 x i32> %wide.load704, %wide.load706 ; 5 uses
  %i.og = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.oe, i1 true)
  %i.oh = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.of, i1 true)
  %i.oi = add <4 x i32> %i.og, %vec.phi701        ; 2 uses
  %i.oj = add <4 x i32> %i.oh, %vec.phi702        ; 2 uses
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0342.0, i64 %index700 ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 16
  store <4 x i32> %i.oe, ptr %i.ok, align 4, !tbaa !96
  store <4 x i32> %i.of, ptr %i.ol, align 4, !tbaa !96
  %i.om = shl nuw <4 x i32> %i.oe, splat (i32 1)
  %i.on = shl nuw <4 x i32> %i.of, splat (i32 1)
  %i.oo = xor <4 x i32> %i.oe, splat (i32 -1)
  %i.op = xor <4 x i32> %i.of, splat (i32 -1)
  %i.oq = shl nuw <4 x i32> %i.oo, splat (i32 1)
  %i.or = shl nuw <4 x i32> %i.op, splat (i32 1)
  %i.os = or disjoint <4 x i32> %i.oq, splat (i32 1)
  %i.ot = or disjoint <4 x i32> %i.or, splat (i32 1)
  %i.ou = icmp slt <4 x i32> %i.oe, zeroinitializer
  %i.ov = icmp slt <4 x i32> %i.of, zeroinitializer
  %i.ow = select <4 x i1> %i.ou, <4 x i32> %i.os, <4 x i32> %i.om
  %i.ox = select <4 x i1> %i.ov, <4 x i32> %i.ot, <4 x i32> %i.on
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.nt, i64 %index700 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 16
  store <4 x i32> %i.ow, ptr %i.oy, align 4, !tbaa !96
  store <4 x i32> %i.ox, ptr %i.oz, align 4, !tbaa !96
  %index.next707 = add nuw i64 %index700, 8       ; 2 uses
  %i.pa = icmp eq i64 %index.next707, %n.vec698
  br i1 %i.pa, label %middle.block708, label %vector.body699, !llvm.loop !416

middle.block708:                                  ; preds = %vector.body699
  %bin.rdx709 = add <4 x i32> %i.oj, %i.oi
  %i.pb = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx709) ; 2 uses
  br i1 %cmp.n710, label %._crit_edge.loopexit.i, label %.lr.ph.i213.preheader739

.lr.ph.i213.preheader739:                         ; preds = %vector.memcheck685, %.lr.ph.i213.preheader, %middle.block708
  %indvars.iv.i215.ph = phi i64 [ 0, %vector.memcheck685 ], [ 0, %.lr.ph.i213.preheader ], [ %n.vec698, %middle.block708 ]
  %.sroa.3.015.i.ph = phi i32 [ 0, %vector.memcheck685 ], [ 0, %.lr.ph.i213.preheader ], [ %i.pb, %middle.block708 ]
  br label %.lr.ph.i213

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i213, %middle.block708
  %.lcssa = phi i32 [ %i.pb, %middle.block708 ], [ %i.pm, %.lr.ph.i213 ]
  %i.pc = zext nneg i32 %.lcssa to i64
  %i.pd = shl nuw nsw i64 %i.pc, 32
  br label %._crit_edge.i212

._crit_edge.i212:                                 ; preds = %._crit_edge.loopexit.i, %._crit_edge
  %.sroa.3.0.lcssa.i = phi i64 [ %i.pd, %._crit_edge.loopexit.i ], [ 0, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  invoke void @_ZN5draco21ShannonEntropyTracker4PeekEPKji(ptr dead_on_unwind nonnull writable sret(%"struct.draco::ShannonEntropyTracker::EntropyData") align 8 %7, ptr noundef nonnull align 8 dereferenceable(48) %i.dz, ptr noundef %i.nt, i32 noundef %4)
          to label %.noexc218 unwind label %bb.aw

.noexc218:                                        ; preds = %._crit_edge.i212
  %i.pe = invoke noundef i64 @_ZN5draco21ShannonEntropyTracker19GetNumberOfDataBitsERKNS0_11EntropyDataE(ptr noundef nonnull align 8 dereferenceable(20) %7)
          to label %.noexc219 unwind label %bb.aw

.noexc219:                                        ; preds = %.noexc218
  %i.pf = invoke noundef i64 @_ZN5draco21ShannonEntropyTracker24GetNumberOfRAnsTableBitsERKNS0_11EntropyDataE(ptr noundef nonnull align 8 dereferenceable(20) %7)
          to label %bb.at unwind label %bb.aw

.lr.ph.i213:                                      ; preds = %.lr.ph.i213.preheader739, %.lr.ph.i213
  %indvars.iv.i215 = phi i64 [ %indvars.iv.next.i216, %.lr.ph.i213 ], [ %indvars.iv.i215.ph, %.lr.ph.i213.preheader739 ] ; 5 uses
  %.sroa.3.015.i = phi i32 [ %i.pm, %.lr.ph.i213 ], [ %.sroa.3.015.i.ph, %.lr.ph.i213.preheader739 ]
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.nr, i64 %indvars.iv.i215
  %i.ph = load i32, ptr %i.pg, align 4, !tbaa !96
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.ns, i64 %indvars.iv.i215
  %i.pj = load i32, ptr %i.pi, align 4, !tbaa !96
  %i.pk = sub nsw i32 %i.ph, %i.pj                ; 5 uses
  %i.pl = call i32 @llvm.abs.i32(i32 %i.pk, i1 true)
  %i.pm = add nuw nsw i32 %i.pl, %.sroa.3.015.i   ; 2 uses
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0342.0, i64 %indvars.iv.i215
  store i32 %i.pk, ptr %i.pn, align 4, !tbaa !96
  %i.po = shl nuw i32 %i.pk, 1
  %i.pp = xor i32 %i.pk, -1
  %i.pq = shl nuw i32 %i.pp, 1
  %i.pr = or disjoint i32 %i.pq, 1
  %i.ps = icmp slt i32 %i.pk, 0
  %.0.i.i = select i1 %i.ps, i32 %i.pr, i32 %i.po
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.nt, i64 %indvars.iv.i215
  store i32 %.0.i.i, ptr %i.pt, align 4, !tbaa !96
  %indvars.iv.next.i216 = add nuw nsw i64 %indvars.iv.i215, 1 ; 2 uses
  %exitcond.not.i217 = icmp eq i64 %indvars.iv.next.i216, %wide.trip.count.i189
  br i1 %exitcond.not.i217, label %._crit_edge.loopexit.i, label %.lr.ph.i213, !llvm.loop !417

bb.at:                                            ; preds = %.noexc219
  %i.pu = add nsw i64 %i.pf, %i.pe                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %i.pv = icmp sgt i32 %.2148, 0                  ; 3 uses
  br i1 %i.pv, label %bb.au, label %bb.ay

bb.au:                                            ; preds = %bb.at
  %i.pw = zext nneg i32 %.2148 to i64
  %i.px = add nsw i32 %.2148, -1
  %i.py = zext nneg i32 %i.px to i64              ; 2 uses
  %i.pz = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.py ; 2 uses
  %i.qa = load i64, ptr %i.pz, align 8, !tbaa !128
  %i.qb = add nsw i64 %i.qa, %i.pw                ; 3 uses
  store i64 %i.qb, ptr %i.pz, align 8, !tbaa !128
  %i.qc = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.py
  %i.qd = load i64, ptr %i.qc, align 8, !tbaa !128
  %i.qe = trunc i64 %i.qb to i32
  %i.qf = trunc i64 %i.qd to i32
  %i.qg = invoke noundef double @_ZN5draco27ComputeBinaryShannonEntropyEjj(i32 noundef %i.qe, i32 noundef %i.qf)
          to label %bb.av unwind label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.qh = sitofp i64 %i.qb to double
  %i.qi = fmul double %i.qg, %i.qh
  %i.qj = call double @llvm.ceil.f64(double %i.qi)
  %i.qk = fptosi double %i.qj to i64
  %i.ql = add i64 %i.pu, %i.qk
  br label %bb.ay

bb.aw:                                            ; preds = %.noexc219, %.noexc218, %._crit_edge.i212
  %i.qm = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.ax:                                            ; preds = %bb.au
  %i.qn = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.ay:                                            ; preds = %bb.av, %bb.at
  %.sroa.0.0 = phi i64 [ %i.ql, %bb.av ], [ %i.pu, %bb.at ]
  %.sroa.0.0.insert.ext = and i64 %.sroa.0.0, 4294967295
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0.0.insert.ext, %.sroa.3.0.lcssa.i
  store i64 %.sroa.0.0.insert.insert, ptr %9, align 8
  store i8 0, ptr %i.ea, align 8, !tbaa !447
  store i32 0, ptr %i.dy, align 4, !tbaa !448
  %i.qo = getelementptr inbounds nuw [4 x i8], ptr %i.nr, i64 %i.g
  invoke void @_ZNSt6vectorIiSaIiEE13_M_assign_auxIPKiEEvT_S5_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.eb, ptr noundef %i.nr, ptr noundef %i.qo)
          to label %_ZNSt6vectorIiSaIiEE6assignIPKivEEvT_S5_.exit unwind label %bb.az

_ZNSt6vectorIiSaIiEE6assignIPKivEEvT_S5_.exit:    ; preds = %bb.ay
  invoke void @_ZNSt6vectorIiSaIiEE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPiS1_EEEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.ec, ptr %.sroa.0342.0, ptr %.0.i.i.i.i.i178)
          to label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit.preheader unwind label %bb.az

_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit.preheader: ; preds = %_ZNSt6vectorIiSaIiEE6assignIPKivEEvT_S5_.exit
  %.not424 = icmp slt i32 %.2148, 1
  br i1 %.not424, label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit._crit_edge.thread, label %.lr.ph426

.lr.ph426:                                        ; preds = %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit.preheader
  %i.qp = zext nneg i32 %.2148 to i64             ; 5 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.qp ; 5 uses
  %i.qr = add nsw i32 %.2148, -1
  %i.qs = zext nneg i32 %i.qr to i64              ; 2 uses
  %i.qt = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.qs
  %i.qu = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.qs
  %or.cond.i.i246 = icmp eq i32 %.2148, 1
  %.ptr35.i.i = getelementptr inbounds i8, ptr %i.qq, i64 -1 ; 3 uses
  %i.qv = sub nsw i64 0, %i.qp
  %.reass817 = add i64 %i.gq, %invariant.op816
  %diff.check648.a = icmp ult i64 %.reass817, 31
  %invariant.op = or i1 %diff.check646.a, %diff.check648.a
  %invariant.op811.reass = add i64 %i.gq, %invariant.op818
  br label %.lr.ph.preheader.i.i.i

_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit._crit_edge: ; preds = %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit
  br i1 %i.pv, label %bb.co, label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit._crit_edge.thread

bb.az:                                            ; preds = %_ZNSt6vectorIiSaIiEE6assignIPKivEEvT_S5_.exit, %bb.ay
  %i.qw = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

.lr.ph.preheader.i.i.i:                           ; preds = %.lr.ph426, %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit
  %indvar = phi i64 [ 0, %.lr.ph426 ], [ %i.qx, %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit ]
  %.0131425 = phi i32 [ 1, %.lr.ph426 ], [ %i.ya, %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit ] ; 6 uses
  %i.qx = add nuw nsw i64 %indvar, 1              ; 3 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.b, i8 1, i64 %i.qp, i1 false), !tbaa !239
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.b, i8 0, i64 %i.qx, i1 false), !tbaa !239
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
  br i1 %i.ge, label %.lr.ph422.epil.preheader, label %.lr.ph422

._crit_edge423.thread:                            ; preds = %.preheader373
  %i.qy = load ptr, ptr %i.cs, align 8, !tbaa !236
  br label %._crit_edge.i224

.lr.ph419:                                        ; preds = %.lr.ph419.preheader, %bb.ba
  %indvars.iv479 = phi i64 [ %indvars.iv.next480, %bb.ba ], [ 0, %.lr.ph419.preheader ] ; 4 uses
  %.0127417 = phi i8 [ %.1128, %bb.ba ], [ 0, %.lr.ph419.preheader ] ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv479
  %i.ra = load i8, ptr %i.qz, align 1, !tbaa !239, !range !61, !noundef !62
  %i.rb = trunc nuw i8 %i.ra to i1
  br i1 %i.rb, label %bb.ba, label %.preheader372

.preheader372:                                    ; preds = %.lr.ph419
  br i1 %.not.i.i.i.i168, label %._crit_edge416, label %.lr.ph415

.lr.ph415:                                        ; preds = %.preheader372
  %i.rc = getelementptr inbounds nuw [24 x i8], ptr %8, i64 %indvars.iv479
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !101 ; 8 uses
  br i1 %min.iters.check672, label %scalar.ph671.preheader, label %vector.memcheck669

vector.memcheck669:                               ; preds = %.lr.ph415
  %scevgep670 = getelementptr i8, ptr %i.rd, i64 %i.fl
  %bound0 = icmp ult ptr %.sroa.0351.0, %scevgep670
  %bound1 = icmp ult ptr %i.rd, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph671.preheader, label %vector.body675

vector.body675:                                   ; preds = %vector.memcheck669, %vector.body675
  %index676 = phi i64 [ %index.next681, %vector.body675 ], [ 0, %vector.memcheck669 ] ; 3 uses
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %i.rd, i64 %index676 ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 16
  %wide.load677 = load <4 x i32>, ptr %i.re, align 4, !tbaa !96, !alias.scope !449
  %wide.load678 = load <4 x i32>, ptr %i.rf, align 4, !tbaa !96, !alias.scope !449
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0351.0, i64 %index676 ; 3 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 16 ; 2 uses
  %wide.load679 = load <4 x i32>, ptr %i.rg, align 4, !tbaa !96, !alias.scope !450, !noalias !449
  %wide.load680 = load <4 x i32>, ptr %i.rh, align 4, !tbaa !96, !alias.scope !450, !noalias !449
  %i.ri = add nsw <4 x i32> %wide.load679, %wide.load677
  %i.rj = add nsw <4 x i32> %wide.load680, %wide.load678
  store <4 x i32> %i.ri, ptr %i.rg, align 4, !tbaa !96, !alias.scope !450, !noalias !449
  store <4 x i32> %i.rj, ptr %i.rh, align 4, !tbaa !96, !alias.scope !450, !noalias !449
  %index.next681 = add nuw i64 %index676, 8       ; 2 uses
  %i.rk = icmp eq i64 %index.next681, %n.vec674
  br i1 %i.rk, label %middle.block682, label %vector.body675, !llvm.loop !421

middle.block682:                                  ; preds = %vector.body675
  br i1 %cmp.n683, label %._crit_edge416, label %scalar.ph671.preheader

scalar.ph671.preheader:                           ; preds = %vector.memcheck669, %.lr.ph415, %middle.block682
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck669 ], [ 0, %.lr.ph415 ], [ %n.vec674, %middle.block682 ] ; 3 uses
  %14 = sub nsw i64 %i.gd, %indvars.iv.ph
  br i1 %lcmp.mod774.not, label %scalar.ph671.prol.loopexit, label %scalar.ph671.prol

scalar.ph671.prol:                                ; preds = %scalar.ph671.preheader, %scalar.ph671.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph671.prol ], [ %indvars.iv.ph, %scalar.ph671.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph671.prol ], [ 0, %scalar.ph671.preheader ]
  %i.rl = getelementptr inbounds nuw [4 x i8], ptr %i.rd, i64 %indvars.iv.prol
  %i.rm = load i32, ptr %i.rl, align 4, !tbaa !96
  %i.rn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0351.0, i64 %indvars.iv.prol ; 2 uses
  %i.ro = load i32, ptr %i.rn, align 4, !tbaa !96
  %i.rp = add nsw i32 %i.ro, %i.rm
  store i32 %i.rp, ptr %i.rn, align 4, !tbaa !96
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter773
  br i1 %prol.iter.cmp.not, label %scalar.ph671.prol.loopexit, label %scalar.ph671.prol, !llvm.loop !422

scalar.ph671.prol.loopexit:                       ; preds = %scalar.ph671.prol, %scalar.ph671.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph671.preheader ], [ %indvars.iv.next.prol, %scalar.ph671.prol ]
  %15 = icmp ult i64 %14, 3
  br i1 %15, label %._crit_edge416, label %scalar.ph671

._crit_edge416:                                   ; preds = %scalar.ph671.prol.loopexit, %scalar.ph671, %middle.block682, %.preheader372
  %i.rq = trunc nuw nsw i64 %indvars.iv479 to i32
  %i.rr = shl nuw i32 1, %i.rq
  %i.rs = trunc i32 %i.rr to i8
  %i.rt = or i8 %.0127417, %i.rs
  br label %bb.ba

scalar.ph671:                                     ; preds = %scalar.ph671.prol.loopexit, %scalar.ph671
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph671 ], [ %indvars.iv.unr, %scalar.ph671.prol.loopexit ] ; 6 uses
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %i.rd, i64 %indvars.iv
  %i.rv = load i32, ptr %i.ru, align 4, !tbaa !96
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0351.0, i64 %indvars.iv ; 2 uses
  %i.rx = load i32, ptr %i.rw, align 4, !tbaa !96
  %i.ry = add nsw i32 %i.rx, %i.rv
  store i32 %i.ry, ptr %i.rw, align 4, !tbaa !96
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %i.rd, i64 %indvars.iv.next
  %i.sa = load i32, ptr %i.rz, align 4, !tbaa !96
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0351.0, i64 %indvars.iv.next ; 2 uses
  %i.sc = load i32, ptr %i.sb, align 4, !tbaa !96
  %i.sd = add nsw i32 %i.sc, %i.sa
  store i32 %i.sd, ptr %i.sb, align 4, !tbaa !96
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.se = getelementptr inbounds nuw [4 x i8], ptr %i.rd, i64 %indvars.iv.next.1
  %i.sf = load i32, ptr %i.se, align 4, !tbaa !96
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0351.0, i64 %indvars.iv.next.1 ; 2 uses
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !96
  %i.si = add nsw i32 %i.sh, %i.sf
  store i32 %i.si, ptr %i.sg, align 4, !tbaa !96
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.sj = getelementptr inbounds nuw [4 x i8], ptr %i.rd, i64 %indvars.iv.next.2
  %i.sk = load i32, ptr %i.sj, align 4, !tbaa !96
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0351.0, i64 %indvars.iv.next.2 ; 2 uses
  %i.sm = load i32, ptr %i.sl, align 4, !tbaa !96
  %i.sn = add nsw i32 %i.sm, %i.sk
  store i32 %i.sn, ptr %i.sl, align 4, !tbaa !96
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %12
  br i1 %exitcond.not.3, label %._crit_edge416, label %scalar.ph671, !llvm.loop !423

bb.ba:                                            ; preds = %.lr.ph419, %._crit_edge416
  %.1128 = phi i8 [ %.0127417, %.lr.ph419 ], [ %i.rt, %._crit_edge416 ] ; 2 uses
  %indvars.iv.next480 = add nuw nsw i64 %indvars.iv479, 1 ; 2 uses
  %exitcond482.not = icmp eq i64 %indvars.iv.next480, %i.qp
  br i1 %exitcond482.not, label %.preheader373, label %.lr.ph419, !llvm.loop !424

.lr.ph.i228.preheader.unr-lcssa:                  ; preds = %.lr.ph422
  br i1 %lcmp.mod776.not, label %.lr.ph.i228.preheader, label %.lr.ph422.epil.preheader

.lr.ph422.epil.preheader:                         ; preds = %.lr.ph.i228.preheader.unr-lcssa, %.lr.ph422.preheader
  %indvars.iv483.epil.init = phi i64 [ 0, %.lr.ph422.preheader ], [ %indvars.iv.next484.1, %.lr.ph.i228.preheader.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod777)
  %i.so = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0351.0, i64 %indvars.iv483.epil.init ; 2 uses
  %i.sp = load i32, ptr %i.so, align 4, !tbaa !96
  %i.sq = sdiv i32 %i.sp, %.0131425
  store i32 %i.sq, ptr %i.so, align 4, !tbaa !96
  br label %.lr.ph.i228.preheader

.lr.ph.i228.preheader:                            ; preds = %.lr.ph.i228.preheader.unr-lcssa, %.lr.ph422.epil.preheader
  %i.sr = load ptr, ptr %i.cs, align 8, !tbaa !236 ; 5 uses
  br i1 %min.iters.check655, label %.lr.ph.i228.preheader737, label %vector.memcheck644

vector.memcheck644:                               ; preds = %.lr.ph.i228.preheader
  %i.ss = ptrtoaddr ptr %i.sr to i64              ; 3 uses
  %i.st = sub i64 %i.eo, %i.ss
  %diff.check645 = icmp ugt i64 %i.st, -32
  %conflict.rdx649.reass = or i1 %diff.check645, %invariant.op
  %i.su = sub i64 %i.ef, %i.ss
  %diff.check650 = icmp ugt i64 %i.su, -32
  %conflict.rdx651 = or i1 %conflict.rdx649.reass, %diff.check650
  %.reass = add i64 %i.ss, %invariant.op811.reass
  %diff.check652 = icmp ult i64 %.reass, 31
  %conflict.rdx653 = or i1 %conflict.rdx651, %diff.check652
  br i1 %conflict.rdx653, label %.lr.ph.i228.preheader737, label %vector.body658

vector.body658:                                   ; preds = %vector.memcheck644, %vector.body658
  %index659 = phi i64 [ %index.next665, %vector.body658 ], [ 0, %vector.memcheck644 ] ; 5 uses
  %vec.phi = phi <4 x i32> [ %i.td, %vector.body658 ], [ zeroinitializer, %vector.memcheck644 ]
  %vec.phi660 = phi <4 x i32> [ %i.te, %vector.body658 ], [ zeroinitializer, %vector.memcheck644 ]
  %i.sv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0351.0, i64 %index659 ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 16
  %wide.load661 = load <4 x i32>, ptr %i.sv, align 4, !tbaa !96
  %wide.load662 = load <4 x i32>, ptr %i.sw, align 4, !tbaa !96
  %i.sx = getelementptr inbounds nuw [4 x i8], ptr %i.ns, i64 %index659 ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 16
  %wide.load663 = load <4 x i32>, ptr %i.sx, align 4, !tbaa !96
  %wide.load664 = load <4 x i32>, ptr %i.sy, align 4, !tbaa !96
  %i.sz = sub nsw <4 x i32> %wide.load661, %wide.load663 ; 5 uses
  %i.ta = sub nsw <4 x i32> %wide.load662, %wide.load664 ; 5 uses
  %i.tb = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.sz, i1 true)
  %i.tc = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.ta, i1 true)
  %i.td = add <4 x i32> %i.tb, %vec.phi           ; 2 uses
  %i.te = add <4 x i32> %i.tc, %vec.phi660        ; 2 uses
  %i.tf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0342.0, i64 %index659 ; 2 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 16
  store <4 x i32> %i.sz, ptr %i.tf, align 4, !tbaa !96
  store <4 x i32> %i.ta, ptr %i.tg, align 4, !tbaa !96
  %i.th = shl nuw <4 x i32> %i.sz, splat (i32 1)
  %i.ti = shl nuw <4 x i32> %i.ta, splat (i32 1)
  %i.tj = xor <4 x i32> %i.sz, splat (i32 -1)
  %i.tk = xor <4 x i32> %i.ta, splat (i32 -1)
  %i.tl = shl nuw <4 x i32> %i.tj, splat (i32 1)
  %i.tm = shl nuw <4 x i32> %i.tk, splat (i32 1)
  %i.tn = or disjoint <4 x i32> %i.tl, splat (i32 1)
  %i.to = or disjoint <4 x i32> %i.tm, splat (i32 1)
  %i.tp = icmp slt <4 x i32> %i.sz, zeroinitializer
  %i.tq = icmp slt <4 x i32> %i.ta, zeroinitializer
  %i.tr = select <4 x i1> %i.tp, <4 x i32> %i.tn, <4 x i32> %i.th
  %i.ts = select <4 x i1> %i.tq, <4 x i32> %i.to, <4 x i32> %i.ti
  %i.tt = getelementptr inbounds nuw [4 x i8], ptr %i.sr, i64 %index659 ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 16
  store <4 x i32> %i.tr, ptr %i.tt, align 4, !tbaa !96
  store <4 x i32> %i.ts, ptr %i.tu, align 4, !tbaa !96
  %index.next665 = add nuw i64 %index659, 8       ; 2 uses
  %i.tv = icmp eq i64 %index.next665, %n.vec657
  br i1 %i.tv, label %middle.block666, label %vector.body658, !llvm.loop !425

middle.block666:                                  ; preds = %vector.body658
  %bin.rdx = add <4 x i32> %i.te, %i.td
  %i.tw = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n667, label %._crit_edge.i224, label %.lr.ph.i228.preheader737

.lr.ph.i228.preheader737:                         ; preds = %vector.memcheck644, %.lr.ph.i228.preheader, %middle.block666
  %indvars.iv.i230.ph = phi i64 [ 0, %vector.memcheck644 ], [ 0, %.lr.ph.i228.preheader ], [ %n.vec657, %middle.block666 ]
  %.sroa.3.015.i231.ph = phi i32 [ 0, %vector.memcheck644 ], [ 0, %.lr.ph.i228.preheader ], [ %i.tw, %middle.block666 ]
  br label %.lr.ph.i228

._crit_edge.i224:                                 ; preds = %.lr.ph.i228, %middle.block666, %._crit_edge423.thread
  %i.tx = phi ptr [ %i.qy, %._crit_edge423.thread ], [ %i.sr, %middle.block666 ], [ %i.sr, %.lr.ph.i228 ]
  %.sroa.3.0.lcssa.i225 = phi i32 [ 0, %._crit_edge423.thread ], [ %i.tw, %middle.block666 ], [ %i.ug, %.lr.ph.i228 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  invoke void @_ZN5draco21ShannonEntropyTracker4PeekEPKji(ptr dead_on_unwind nonnull writable sret(%"struct.draco::ShannonEntropyTracker::EntropyData") align 8 %6, ptr noundef nonnull align 8 dereferenceable(48) %i.dz, ptr noundef %i.tx, i32 noundef %4)
          to label %.noexc236 unwind label %bb.ck

.noexc236:                                        ; preds = %._crit_edge.i224
  %i.ty = invoke noundef i64 @_ZN5draco21ShannonEntropyTracker19GetNumberOfDataBitsERKNS0_11EntropyDataE(ptr noundef nonnull align 8 dereferenceable(20) %6)
          to label %.noexc237 unwind label %bb.ck

.noexc237:                                        ; preds = %.noexc236
  %i.tz = invoke noundef i64 @_ZN5draco21ShannonEntropyTracker24GetNumberOfRAnsTableBitsERKNS0_11EntropyDataE(ptr noundef nonnull align 8 dereferenceable(20) %6)
          to label %bb.bb unwind label %bb.ck

.lr.ph.i228:                                      ; preds = %.lr.ph.i228.preheader737, %.lr.ph.i228
  %indvars.iv.i230 = phi i64 [ %indvars.iv.next.i233, %.lr.ph.i228 ], [ %indvars.iv.i230.ph, %.lr.ph.i228.preheader737 ] ; 5 uses
  %.sroa.3.015.i231 = phi i32 [ %i.ug, %.lr.ph.i228 ], [ %.sroa.3.015.i231.ph, %.lr.ph.i228.preheader737 ]
  %i.ua = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0351.0, i64 %indvars.iv.i230
  %i.ub = load i32, ptr %i.ua, align 4, !tbaa !96
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %i.ns, i64 %indvars.iv.i230
  %i.ud = load i32, ptr %i.uc, align 4, !tbaa !96
  %i.ue = sub nsw i32 %i.ub, %i.ud                ; 5 uses
  %i.uf = call i32 @llvm.abs.i32(i32 %i.ue, i1 true)
  %i.ug = add nuw nsw i32 %i.uf, %.sroa.3.015.i231 ; 2 uses
  %i.uh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0342.0, i64 %indvars.iv.i230
  store i32 %i.ue, ptr %i.uh, align 4, !tbaa !96
  %i.ui = shl nuw i32 %i.ue, 1
  %i.uj = xor i32 %i.ue, -1
  %i.uk = shl nuw i32 %i.uj, 1
  %i.ul = or disjoint i32 %i.uk, 1
  %i.um = icmp slt i32 %i.ue, 0
  %.0.i.i232 = select i1 %i.um, i32 %i.ul, i32 %i.ui
  %i.un = getelementptr inbounds nuw [4 x i8], ptr %i.sr, i64 %indvars.iv.i230
  store i32 %.0.i.i232, ptr %i.un, align 4, !tbaa !96
  %indvars.iv.next.i233 = add nuw nsw i64 %indvars.iv.i230, 1 ; 2 uses
  %exitcond.not.i234 = icmp eq i64 %indvars.iv.next.i233, %wide.trip.count.i189
  br i1 %exitcond.not.i234, label %._crit_edge.i224, label %.lr.ph.i228, !llvm.loop !426

.lr.ph422:                                        ; preds = %.lr.ph422.preheader, %.lr.ph422
  %indvars.iv483 = phi i64 [ %indvars.iv.next484.1, %.lr.ph422 ], [ 0, %.lr.ph422.preheader ] ; 3 uses
  %niter779 = phi i64 [ %niter779.next.1, %.lr.ph422 ], [ 0, %.lr.ph422.preheader ]
  %i.uo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0351.0, i64 %indvars.iv483 ; 2 uses
  %i.up = load i32, ptr %i.uo, align 4, !tbaa !96
  %i.uq = sdiv i32 %i.up, %.0131425
  store i32 %i.uq, ptr %i.uo, align 4, !tbaa !96
  %i.ur = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0351.0, i64 %indvars.iv483
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 4 ; 2 uses
  %i.ut = load i32, ptr %i.us, align 4, !tbaa !96
  %i.uu = sdiv i32 %i.ut, %.0131425
  store i32 %i.uu, ptr %i.us, align 4, !tbaa !96
  %indvars.iv.next484.1 = add nuw nsw i64 %indvars.iv483, 2 ; 2 uses
  %niter779.next.1 = add i64 %niter779, 2         ; 2 uses
  %niter779.ncmp.1 = icmp eq i64 %niter779.next.1, %unroll_iter778
  br i1 %niter779.ncmp.1, label %.lr.ph.i228.preheader.unr-lcssa, label %.lr.ph422, !llvm.loop !427

bb.bb:                                            ; preds = %.noexc237
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.uv = load i64, ptr %i.qt, align 8, !tbaa !128
  %i.uw = load i64, ptr %i.qu, align 8, !tbaa !128 ; 2 uses
  %i.ux = trunc i64 %i.uw to i32
  %i.uy = trunc i64 %i.uv to i32
  %i.uz = add i32 %.0131425, %i.uy
  %i.va = invoke noundef double @_ZN5draco27ComputeBinaryShannonEntropyEjj(i32 noundef %i.ux, i32 noundef %i.uz)
          to label %bb.bc unwind label %.loopexit376

bb.bc:                                            ; preds = %bb.bb
  %i.vb = add nsw i64 %i.tz, %i.ty
  %.sroa.0.0.extract.trunc = trunc i64 %i.vb to i32
  %i.vc = sitofp i64 %i.uw to double
  %i.vd = fmul double %i.va, %i.vc
  %i.ve = call double @llvm.ceil.f64(double %i.vd)
  %i.vf = fptosi double %i.ve to i64
  %i.vg = trunc i64 %i.vf to i32
  %i.vh = add i32 %i.vg, %.sroa.0.0.extract.trunc ; 3 uses
  %i.vi = load i32, ptr %9, align 8, !tbaa !451   ; 2 uses
  %i.vj = icmp slt i32 %i.vh, %i.vi
  br i1 %i.vj, label %_ZNK5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE5ErrorltERKS7_.exit.thread, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.vk = icmp sle i32 %i.vh, %i.vi
  %i.vl = load i32, ptr %i.ed, align 4
  %i.vm = icmp slt i32 %.sroa.3.0.lcssa.i225, %i.vl
  %or.cond368 = select i1 %i.vk, i1 %i.vm, i1 false
  br i1 %or.cond368, label %_ZNK5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE5ErrorltERKS7_.exit.thread, label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit245

_ZNK5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE5ErrorltERKS7_.exit.thread: ; preds = %bb.bd, %bb.bc
  %.sroa.13.0.insert.ext321 = zext nneg i32 %.sroa.3.0.lcssa.i225 to i64
  %.sroa.13.0.insert.shift322 = shl nuw nsw i64 %.sroa.13.0.insert.ext321, 32
  %.sroa.0.0.insert.ext315 = zext i32 %i.vh to i64
  %.sroa.0.0.insert.insert317 = or disjoint i64 %.sroa.13.0.insert.shift322, %.sroa.0.0.insert.ext315
  store i64 %.sroa.0.0.insert.insert317, ptr %9, align 8
  store i8 %.1128, ptr %i.ea, align 8, !tbaa !447
  store i32 %.0131425, ptr %i.dy, align 4, !tbaa !448
  %i.vn = load ptr, ptr %i.eh, align 8, !tbaa !102
  %i.vo = load ptr, ptr %i.eb, align 8, !tbaa !101 ; 8 uses
  %i.vp = ptrtoint ptr %i.vn to i64
  %i.vq = ptrtoint ptr %i.vo to i64               ; 2 uses
  %i.vr = sub i64 %i.vp, %i.vq                    ; 2 uses
  %i.vs = icmp ugt i64 %i.eg, %i.vr
  br i1 %i.vs, label %bb.be, label %bb.bj

bb.be:                                            ; preds = %_ZNK5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE5ErrorltERKS7_.exit.thread
  br i1 %i.el, label %.invoke, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i

.invoke:                                          ; preds = %bb.bu, %bb.be
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #20
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable
end_hunk_1
begin_hunk_2_@_ZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEE:bb.a
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit.i301

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit.i301: ; preds = %bb.cj, %bb.ci, %bb.ch
  %i.xk = getelementptr inbounds i8, ptr %i.xf, i64 %i.xg
  store ptr %i.xk, ptr %i.er, align 8, !tbaa !149
  br label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit245

bb.ck:                                            ; preds = %.noexc237, %.noexc236, %._crit_edge.i224
  %i.xl = landingpad { ptr, i32 }
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
  %i.xm = phi i8 [ %.pre.i.i, %bb.cl ], [ %i.xn, %bb.cn ]
  %.021.idx.i.i = phi i64 [ -1, %bb.cl ], [ %.021.add.i.i, %bb.cn ] ; 3 uses
  %.021.add.i.i = add nsw i64 %.021.idx.i.i, -1   ; 4 uses
  %.ptr.i.i = getelementptr inbounds i8, ptr %i.qq, i64 %.021.add.i.i
  %i.xn = load i8, ptr %.ptr.i.i, align 1, !tbaa !239, !range !61, !noundef !62 ; 2 uses
  %i.xo = icmp samesign ult i8 %i.xn, %i.xm
  br i1 %i.xo, label %.preheader.i.i.preheader, label %bb.cn

.preheader.i.i.preheader:                         ; preds = %_ZSt9__reverseIPbEvT_S1_St26random_access_iterator_tag.exit.i.i
  %.ptr.i.i.le = getelementptr inbounds i8, ptr %i.qq, i64 %.021.add.i.i
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.0.i.i247 = phi ptr [ %i.xp, %.preheader.i.i ], [ %i.qq, %.preheader.i.i.preheader ]
  %i.xp = getelementptr inbounds i8, ptr %.0.i.i247, i64 -1 ; 3 uses
  %i.xq = load i8, ptr %i.xp, align 1, !tbaa !239, !range !61, !noundef !62
  %.not54.i.i = icmp eq i8 %i.xq, 0
  br i1 %.not54.i.i, label %.preheader.i.i, label %bb.cm, !llvm.loop !4

bb.cm:                                            ; preds = %.preheader.i.i
  store i8 1, ptr %.ptr.i.i.le, align 1, !tbaa !239
  store i8 0, ptr %i.xp, align 1, !tbaa !239
  %.not.i.i248 = icmp eq i64 %.021.idx.i.i, -1
  br i1 %.not.i.i248, label %_ZSt16next_permutationIPbEbT_S1_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.cm
  %.021.ptr.le.i.i = getelementptr inbounds i8, ptr %i.qq, i64 %.021.idx.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.preheader.i
  %.014.i.i.i = phi ptr [ %.0.i.i.i, %.lr.ph.i.i.i ], [ %.ptr35.i.i, %.lr.ph.i.i.preheader.i ] ; 3 uses
  %.0913.i.i.i = phi ptr [ %i.xt, %.lr.ph.i.i.i ], [ %.021.ptr.le.i.i, %.lr.ph.i.i.preheader.i ] ; 3 uses
  %i.xr = load i8, ptr %.0913.i.i.i, align 1, !tbaa !239, !range !61, !noundef !62
  %i.xs = load i8, ptr %.014.i.i.i, align 1, !tbaa !239, !range !61, !noundef !62
  store i8 %i.xs, ptr %.0913.i.i.i, align 1, !tbaa !239
  store i8 %i.xr, ptr %.014.i.i.i, align 1, !tbaa !239
  %i.xt = getelementptr inbounds nuw i8, ptr %.0913.i.i.i, i64 1 ; 2 uses
  %.0.i.i.i = getelementptr inbounds i8, ptr %.014.i.i.i, i64 -1 ; 2 uses
  %i.xu = icmp ult ptr %i.xt, %.0.i.i.i
  br i1 %i.xu, label %.lr.ph.i.i.i, label %_ZSt16next_permutationIPbEbT_S1_.exit, !llvm.loop !5

bb.cn:                                            ; preds = %_ZSt9__reverseIPbEvT_S1_St26random_access_iterator_tag.exit.i.i
  %i.xv = icmp eq i64 %.021.add.i.i, %i.qv
  br i1 %i.xv, label %.lr.ph.i28.i.i, label %_ZSt9__reverseIPbEvT_S1_St26random_access_iterator_tag.exit.i.i, !llvm.loop !6

.lr.ph.i28.i.i:                                   ; preds = %bb.cn, %.lr.ph.i28.i.i
  %.014.i29.i.i = phi ptr [ %.0.i31.i.i, %.lr.ph.i28.i.i ], [ %.ptr35.i.i, %bb.cn ] ; 3 uses
  %.0913.i30.i.i = phi ptr [ %i.xy, %.lr.ph.i28.i.i ], [ %i.b, %bb.cn ] ; 3 uses
  %i.xw = load i8, ptr %.0913.i30.i.i, align 1, !tbaa !239, !range !61, !noundef !62
  %i.xx = load i8, ptr %.014.i29.i.i, align 1, !tbaa !239, !range !61, !noundef !62
  store i8 %i.xx, ptr %.0913.i30.i.i, align 1, !tbaa !239
  store i8 %i.xw, ptr %.014.i29.i.i, align 1, !tbaa !239
  %i.xy = getelementptr inbounds nuw i8, ptr %.0913.i30.i.i, i64 1 ; 2 uses
  %.0.i31.i.i = getelementptr inbounds i8, ptr %.014.i29.i.i, i64 -1 ; 2 uses
  %i.xz = icmp ult ptr %i.xy, %.0.i31.i.i
  br i1 %i.xz, label %.lr.ph.i28.i.i, label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit, !llvm.loop !5

_ZSt16next_permutationIPbEbT_S1_.exit:            ; preds = %.lr.ph.i.i.i, %bb.cm
  br label %.preheader375, !llvm.loop !428

_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit: ; preds = %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit245, %.lr.ph.i28.i.i
  %i.ya = add nuw nsw i32 %.0131425, 1
  %exitcond490.not = icmp eq i64 %i.qx, %i.qp
  br i1 %exitcond490.not, label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit._crit_edge, label %.lr.ph.preheader.i.i.i, !llvm.loop !429

bb.co:                                            ; preds = %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit._crit_edge
  %i.yb = load i32, ptr %i.dy, align 4, !tbaa !448
  %i.yc = sext i32 %i.yb to i64
  %i.yd = zext nneg i32 %.2148 to i64
  %i.ye = getelementptr [8 x i8], ptr %i.c, i64 %i.yd
  %i.yf = getelementptr i8, ptr %i.ye, i64 -8     ; 2 uses
  %i.yg = load i64, ptr %i.yf, align 8, !tbaa !128
  %i.yh = add nsw i64 %i.yg, %i.yc
  store i64 %i.yh, ptr %i.yf, align 8, !tbaa !128
  br label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit._crit_edge.thread

_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit._crit_edge.thread: ; preds = %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit.preheader, %bb.co, %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit._crit_edge
  %.pre509 = load ptr, ptr %i.cs, align 8, !tbaa !236 ; 6 uses
  br i1 %.not.i.i.i.i168, label %._crit_edge430, label %.lr.ph429

.lr.ph429:                                        ; preds = %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit._crit_edge.thread
  %.pre509642 = ptrtoaddr ptr %.pre509 to i64
  %i.yi = load ptr, ptr %i.ec, align 8, !tbaa !101 ; 5 uses
  %i.yj = ptrtoaddr ptr %i.yi to i64
  %i.yk = sub i64 %i.yj, %.pre509642
  %diff.check = icmp ugt i64 %i.yk, -32
  %or.cond736 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond736, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph429, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph429 ] ; 3 uses
  %i.yl = getelementptr inbounds nuw [4 x i8], ptr %i.yi, i64 %index ; 2 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 16
  %wide.load = load <4 x i32>, ptr %i.yl, align 4, !tbaa !96 ; 3 uses
  %wide.load643 = load <4 x i32>, ptr %i.ym, align 4, !tbaa !96 ; 3 uses
  %i.yn = shl nuw <4 x i32> %wide.load, splat (i32 1)
  %i.yo = shl nuw <4 x i32> %wide.load643, splat (i32 1)
  %i.yp = xor <4 x i32> %wide.load, splat (i32 -1)
  %i.yq = xor <4 x i32> %wide.load643, splat (i32 -1)
  %i.yr = shl nuw <4 x i32> %i.yp, splat (i32 1)
  %i.ys = shl nuw <4 x i32> %i.yq, splat (i32 1)
  %i.yt = or disjoint <4 x i32> %i.yr, splat (i32 1)
  %i.yu = or disjoint <4 x i32> %i.ys, splat (i32 1)
  %i.yv = icmp slt <4 x i32> %wide.load, zeroinitializer
  %i.yw = icmp slt <4 x i32> %wide.load643, zeroinitializer
  %i.yx = select <4 x i1> %i.yv, <4 x i32> %i.yt, <4 x i32> %i.yn
  %i.yy = select <4 x i1> %i.yw, <4 x i32> %i.yu, <4 x i32> %i.yo
  %i.yz = getelementptr inbounds nuw [4 x i8], ptr %.pre509, i64 %index ; 2 uses
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 16
  store <4 x i32> %i.yx, ptr %i.yz, align 4, !tbaa !96
  store <4 x i32> %i.yy, ptr %i.za, align 4, !tbaa !96
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.zb = icmp eq i64 %index.next, %n.vec
  br i1 %i.zb, label %middle.block, label %vector.body, !llvm.loop !430

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge430, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph429, %middle.block
  %indvars.iv491.ph = phi i64 [ 0, %.lr.ph429 ], [ %n.vec, %middle.block ] ; 5 uses
  br i1 %lcmp.mod781.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.zc = getelementptr inbounds nuw [4 x i8], ptr %i.yi, i64 %indvars.iv491.ph
  %i.zd = load i32, ptr %i.zc, align 4, !tbaa !96 ; 3 uses
  %i.ze = shl nuw i32 %i.zd, 1
  %i.zf = xor i32 %i.zd, -1
  %i.zg = shl nuw i32 %i.zf, 1
  %i.zh = or disjoint i32 %i.zg, 1
  %i.zi = icmp slt i32 %i.zd, 0
  %.0.i249.prol = select i1 %i.zi, i32 %i.zh, i32 %i.ze
  %i.zj = getelementptr inbounds nuw [4 x i8], ptr %.pre509, i64 %indvars.iv491.ph
  store i32 %.0.i249.prol, ptr %i.zj, align 4, !tbaa !96
  %indvars.iv.next492.prol = or disjoint i64 %indvars.iv491.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv491.unr = phi i64 [ %indvars.iv491.ph, %scalar.ph.preheader ], [ %indvars.iv.next492.prol, %scalar.ph.prol ]
  %i.zk = icmp eq i64 %indvars.iv491.ph, %i.gg
  br i1 %i.zk, label %._crit_edge430, label %scalar.ph

._crit_edge430:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit._crit_edge.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  invoke void @_ZN5draco21ShannonEntropyTracker4PushEPKji(ptr dead_on_unwind nonnull writable sret(%"struct.draco::ShannonEntropyTracker::EntropyData") align 8 %10, ptr noundef nonnull align 8 dereferenceable(48) %i.dz, ptr noundef %.pre509, i32 noundef %4)
          to label %bb.cp unwind label %bb.da

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv491 = phi i64 [ %indvars.iv.next492.1, %scalar.ph ], [ %indvars.iv491.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.zl = getelementptr inbounds nuw [4 x i8], ptr %i.yi, i64 %indvars.iv491
  %i.zm = load i32, ptr %i.zl, align 4, !tbaa !96 ; 3 uses
  %i.zn = shl nuw i32 %i.zm, 1
  %i.zo = xor i32 %i.zm, -1
  %i.zp = shl nuw i32 %i.zo, 1
  %i.zq = or disjoint i32 %i.zp, 1
  %i.zr = icmp slt i32 %i.zm, 0
  %.0.i249 = select i1 %i.zr, i32 %i.zq, i32 %i.zn
  %i.zs = getelementptr inbounds nuw [4 x i8], ptr %.pre509, i64 %indvars.iv491
  store i32 %.0.i249, ptr %i.zs, align 4, !tbaa !96
  %indvars.iv.next492 = add nuw nsw i64 %indvars.iv491, 1 ; 2 uses
  %i.zt = getelementptr inbounds nuw [4 x i8], ptr %i.yi, i64 %indvars.iv.next492
  %i.zu = load i32, ptr %i.zt, align 4, !tbaa !96 ; 3 uses
  %i.zv = shl nuw i32 %i.zu, 1
  %i.zw = xor i32 %i.zu, -1
  %i.zx = shl nuw i32 %i.zw, 1
  %i.zy = or disjoint i32 %i.zx, 1
  %i.zz = icmp slt i32 %i.zu, 0
  %.0.i249.1 = select i1 %i.zz, i32 %i.zy, i32 %i.zv
  %i.aaa = getelementptr inbounds nuw [4 x i8], ptr %.pre509, i64 %indvars.iv.next492
  store i32 %.0.i249.1, ptr %i.aaa, align 4, !tbaa !96
  %indvars.iv.next492.1 = add nuw nsw i64 %indvars.iv491, 2 ; 2 uses
  %exitcond496.not.1 = icmp eq i64 %indvars.iv.next492.1, %12
  br i1 %exitcond496.not.1, label %._crit_edge430, label %scalar.ph, !llvm.loop !431

bb.cp:                                            ; preds = %._crit_edge430
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br i1 %i.pv, label %.lr.ph433, label %._crit_edge434

.lr.ph433:                                        ; preds = %bb.cp
  %i.aab = zext nneg i32 %.2148 to i64
  %i.aac = getelementptr [40 x i8], ptr %0, i64 %i.aab ; 4 uses
  %i.aad = getelementptr i8, ptr %i.aac, i64 72   ; 3 uses
  %i.aae = getelementptr i8, ptr %i.aac, i64 88
  %.sroa.2.0..sroa_idx.i.i255 = getelementptr i8, ptr %i.aac, i64 80 ; 5 uses
  %i.aaf = getelementptr i8, ptr %i.aac, i64 56
  br label %bb.db

._crit_edge434:                                   ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit, %bb.cp
  %i.aag = getelementptr inbounds [4 x i8], ptr %2, i64 %i.no
  %i.aah = load i32, ptr %i.e, align 8, !tbaa !203
  %i.aai = icmp sgt i32 %i.aah, 0
  br i1 %i.aai, label %.lr.ph.i.lr.ph.i, label %_ZNK5draco37PredictionSchemeWrapEncodingTransformIiiE17ComputeCorrectionEPKiS3_Pi.exit

.lr.ph.i.lr.ph.i:                                 ; preds = %._crit_edge434
  %i.aaj = load ptr, ptr %i.eb, align 8, !tbaa !101
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.cz, %.lr.ph.i.lr.ph.i
  %indvars.iv.i251 = phi i64 [ 0, %.lr.ph.i.lr.ph.i ], [ %indvars.iv.next.i252, %bb.cz ] ; 4 uses
  %.01516.i = phi ptr [ %i.aaj, %.lr.ph.i.lr.ph.i ], [ %i.aak, %bb.cz ]
  %i.aak = load ptr, ptr %i.f, align 8            ; 4 uses
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cv, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.cv ] ; 4 uses
  %i.aal = getelementptr inbounds nuw [4 x i8], ptr %.01516.i, i64 %indvars.iv.i.i
  %i.aam = load i32, ptr %i.aal, align 4, !tbaa !96 ; 3 uses
  %i.aan = load i32, ptr %i.ew, align 8, !tbaa !202 ; 2 uses
  %i.aao = icmp sgt i32 %i.aam, %i.aan
  br i1 %i.aao, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.aap = getelementptr inbounds nuw [4 x i8], ptr %i.aak, i64 %indvars.iv.i.i
  store i32 %i.aan, ptr %i.aap, align 4, !tbaa !96
  br label %bb.cv

bb.cs:                                            ; preds = %bb.cq
  %i.aaq = load i32, ptr %i.ex, align 4, !tbaa !201 ; 2 uses
  %i.aar = icmp slt i32 %i.aam, %i.aaq
  %i.aas = getelementptr inbounds nuw [4 x i8], ptr %i.aak, i64 %indvars.iv.i.i ; 2 uses
  br i1 %i.aar, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  store i32 %i.aaq, ptr %i.aas, align 4, !tbaa !96
  br label %bb.cv

bb.cu:                                            ; preds = %bb.cs
  store i32 %i.aam, ptr %i.aas, align 4, !tbaa !96
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct, %bb.cr
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.aat = load i32, ptr %i.e, align 8, !tbaa !203
  %i.aau = sext i32 %i.aat to i64
  %i.aav = icmp slt i64 %indvars.iv.next.i.i, %i.aau
  br i1 %i.aav, label %bb.cq, label %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.loopexit.i, !llvm.loop !2

_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.loopexit.i: ; preds = %bb.cv
  %i.aaw = getelementptr inbounds nuw [4 x i8], ptr %i.ns, i64 %indvars.iv.i251
  %i.aax = load i32, ptr %i.aaw, align 4, !tbaa !96
  %i.aay = getelementptr inbounds nuw [4 x i8], ptr %i.aak, i64 %indvars.iv.i251
  %i.aaz = load i32, ptr %i.aay, align 4, !tbaa !96
  %i.aba = sub nsw i32 %i.aax, %i.aaz             ; 5 uses
  %i.abb = getelementptr inbounds nuw [4 x i8], ptr %i.aag, i64 %indvars.iv.i251 ; 2 uses
  store i32 %i.aba, ptr %i.abb, align 4, !tbaa !96
  %i.abc = load i32, ptr %i.ey, align 4, !tbaa !206
  %i.abd = icmp slt i32 %i.aba, %i.abc
  br i1 %i.abd, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.loopexit.i
  %i.abe = load i32, ptr %i.fa, align 4, !tbaa !204
  %i.abf = add nsw i32 %i.abe, %i.aba
  br label %.sink.split.i

bb.cx:                                            ; preds = %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.loopexit.i
  %i.abg = load i32, ptr %i.ez, align 8, !tbaa !205
  %i.abh = icmp sgt i32 %i.aba, %i.abg
  br i1 %i.abh, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.abi = load i32, ptr %i.fa, align 4, !tbaa !204
  %i.abj = sub nsw i32 %i.aba, %i.abi
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.cy, %bb.cw
  %.sink.i = phi i32 [ %i.abj, %bb.cy ], [ %i.abf, %bb.cw ]
  store i32 %.sink.i, ptr %i.abb, align 4, !tbaa !96
  br label %bb.cz

bb.cz:                                            ; preds = %.sink.split.i, %bb.cx
  %indvars.iv.next.i252 = add nuw nsw i64 %indvars.iv.i251, 1 ; 2 uses
  %i.abk = load i32, ptr %i.e, align 8, !tbaa !203
  %i.abl = sext i32 %i.abk to i64
  %i.abm = icmp slt i64 %indvars.iv.next.i252, %i.abl
  br i1 %i.abm, label %.lr.ph.i.i, label %_ZNK5draco37PredictionSchemeWrapEncodingTransformIiiE17ComputeCorrectionEPKiS3_Pi.exit, !llvm.loop !3

bb.da:                                            ; preds = %._crit_edge430
  %i.abn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %bb.dl

bb.db:                                            ; preds = %.lr.ph433, %_ZNSt6vectorIbSaIbEE9push_backEb.exit
  %.0120431 = phi i32 [ 0, %.lr.ph433 ], [ %i.acl, %_ZNSt6vectorIbSaIbEE9push_backEb.exit ] ; 2 uses
  %i.abo = load i8, ptr %i.ea, align 8, !tbaa !447
  %i.abp = zext i8 %i.abo to i32
  %i.abq = shl nuw i32 1, %.0120431
  %i.abr = and i32 %i.abq, %i.abp
  %i.abs = icmp eq i32 %i.abr, 0                  ; 2 uses
  %i.abt = load ptr, ptr %i.aad, align 8, !tbaa !174 ; 7 uses
  %i.abu = load ptr, ptr %i.aae, align 8, !tbaa !178
  %.not.i = icmp eq ptr %i.abt, %i.abu            ; 2 uses
  %.sroa.2.0.copyload.i11.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i255, align 8 ; 7 uses
  br i1 %i.abs, label %bb.dc, label %bb.dg

bb.dc:                                            ; preds = %bb.db
  br i1 %.not.i, label %.invoke617, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.abv = add i32 %.sroa.2.0.copyload.i11.i, 1
  store i32 %i.abv, ptr %.sroa.2.0..sroa_idx.i.i255, align 8, !tbaa !175
  %i.abw = icmp eq i32 %.sroa.2.0.copyload.i11.i, 63
  br i1 %i.abw, label %bb.de, label %_ZNSt13_Bit_iteratorppEi.exit.i

bb.de:                                            ; preds = %bb.dd
  store i32 0, ptr %.sroa.2.0..sroa_idx.i.i255, align 8, !tbaa !175
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abt, i64 8
  store ptr %i.abx, ptr %i.aad, align 8, !tbaa !174
  br label %_ZNSt13_Bit_iteratorppEi.exit.i

_ZNSt13_Bit_iteratorppEi.exit.i:                  ; preds = %bb.de, %bb.dd
  %i.aby = zext nneg i32 %.sroa.2.0.copyload.i11.i to i64
  %i.abz = shl nuw i64 1, %i.aby
  %i.aca = load i64, ptr %i.abt, align 8, !tbaa !128
  %i.acb = or i64 %i.aca, %i.abz
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit.sink.split

bb.df:                                            ; preds = %.invoke617
  %i.acc = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.dg:                                            ; preds = %bb.db
  br i1 %.not.i, label %.invoke617, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.acd = add i32 %.sroa.2.0.copyload.i11.i, 1
  store i32 %i.acd, ptr %.sroa.2.0..sroa_idx.i.i255, align 8, !tbaa !175
  %i.ace = icmp eq i32 %.sroa.2.0.copyload.i11.i, 63
  br i1 %i.ace, label %bb.di, label %_ZNSt13_Bit_iteratorppEi.exit.i257

bb.di:                                            ; preds = %bb.dh
  store i32 0, ptr %.sroa.2.0..sroa_idx.i.i255, align 8, !tbaa !175
  %i.acf = getelementptr inbounds nuw i8, ptr %i.abt, i64 8
  store ptr %i.acf, ptr %i.aad, align 8, !tbaa !174
  br label %_ZNSt13_Bit_iteratorppEi.exit.i257

_ZNSt13_Bit_iteratorppEi.exit.i257:               ; preds = %bb.di, %bb.dh
  %i.acg = zext nneg i32 %.sroa.2.0.copyload.i11.i to i64
  %i.ach = shl nuw i64 1, %i.acg
  %i.aci = xor i64 %i.ach, -1
  %i.acj = load i64, ptr %i.abt, align 8, !tbaa !128
  %i.ack = and i64 %i.acj, %i.aci
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit.sink.split

.invoke617:                                       ; preds = %bb.dc, %bb.dg
  invoke void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %i.aaf, ptr %i.abt, i32 %.sroa.2.0.copyload.i11.i, i1 noundef zeroext %i.abs)
          to label %_ZNSt6vectorIbSaIbEE9push_backEb.exit unwind label %bb.df

_ZNSt6vectorIbSaIbEE9push_backEb.exit.sink.split: ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i, %_ZNSt13_Bit_iteratorppEi.exit.i257
  %.sink = phi i64 [ %i.ack, %_ZNSt13_Bit_iteratorppEi.exit.i257 ], [ %i.acb, %_ZNSt13_Bit_iteratorppEi.exit.i ]
  store i64 %.sink, ptr %i.abt, align 8, !tbaa !128
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

_ZNSt6vectorIbSaIbEE9push_backEb.exit:            ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit.sink.split, %.invoke617
  %i.acl = add nuw nsw i32 %.0120431, 1           ; 2 uses
  %exitcond497.not = icmp eq i32 %i.acl, %.2148
  br i1 %exitcond497.not, label %._crit_edge434, label %bb.db, !llvm.loop !432

_ZNK5draco37PredictionSchemeWrapEncodingTransformIiiE17ComputeCorrectionEPKiS3_Pi.exit: ; preds = %bb.cz, %._crit_edge434
  %i.acm = load ptr, ptr %i.ec, align 8, !tbaa !101 ; 3 uses
  %.not.i.i.i.i260 = icmp eq ptr %i.acm, null
  br i1 %.not.i.i.i.i260, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %bb.dj

bb.dj:                                            ; preds = %_ZNK5draco37PredictionSchemeWrapEncodingTransformIiiE17ComputeCorrectionEPKiS3_Pi.exit
  %i.acn = load ptr, ptr %i.eq, align 8, !tbaa !102
  %i.aco = ptrtoint ptr %i.acn to i64
  %i.acp = ptrtoint ptr %i.acm to i64
  %i.acq = sub i64 %i.aco, %i.acp
  call void @_ZdlPvm(ptr noundef nonnull %i.acm, i64 noundef %i.acq) #19
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
  %.sroa.0344.0 = phi ptr [ %i.ba, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ba, %.noexc169 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 28 uses
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
  %11 = call i32 @llvm.umax.i32(i32 %4, i32 1)    ; 2 uses
  %12 = zext nneg i32 %11 to i64                  ; 14 uses
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
  %i.gc = add nsw i64 %12, -1                     ; 2 uses
  %min.iters.check715 = icmp ult i32 %4, 12
  %n.vec717 = and i64 %wide.trip.count.i187, 2147483640 ; 3 uses
  %cmp.n728 = icmp eq i64 %n.vec717, %wide.trip.count.i187
  %xtraiter766.a = and i64 %wide.trip.count.i187, 1
  %lcmp.mod767.not.a = icmp eq i64 %xtraiter766.a, 0
  %13 = add nsw i64 %wide.trip.count.i187, -1
  %min.iters.check691 = icmp ult i32 %4, 8
  %invariant.op807.a = add i64 %i.fp, -1
  %invariant.op809.a = add i64 %i.fv, -1
  %n.vec693 = and i64 %wide.trip.count.i187, 2147483640 ; 3 uses
  %cmp.n705 = icmp eq i64 %n.vec693, %wide.trip.count.i187
  %min.iters.check667 = icmp ult i32 %4, 8
  %n.vec669 = and i64 %12, 2147483640             ; 3 uses
  %cmp.n678 = icmp eq i64 %n.vec669, %12
  %xtraiter768 = and i64 %12, 3                   ; 2 uses
  %lcmp.mod769.not = icmp eq i64 %xtraiter768, 0
  %xtraiter770 = and i64 %12, 1
  %i.gd = icmp eq i64 %i.gc, 0
  %unroll_iter773 = and i64 %12, 2147483646
  %lcmp.mod771.not = icmp eq i64 %xtraiter770, 0
  %lcmp.mod772 = trunc i32 %11 to i1
  %min.iters.check650 = icmp ult i32 %4, 8
  %i.ge = sub i64 %i.ee, %i.en
  %diff.check641.a = icmp ugt i64 %i.ge, -32
  %invariant.op811 = add i64 %i.fg, -1
  %invariant.op813 = add i64 %i.fj, -1
  %n.vec652 = and i64 %wide.trip.count.i187, 2147483640 ; 3 uses
  %cmp.n662 = icmp eq i64 %n.vec652, %wide.trip.count.i187
  %min.iters.check = icmp ult i32 %4, 8
  %n.vec = and i64 %12, 2147483640                ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %12
  %xtraiter775 = and i64 %12, 1
  %lcmp.mod776.not = icmp eq i64 %xtraiter775, 0
  %i.gf = add nsw i64 %12, -1
  br label %bb.ab

.preheader:                                       ; preds = %_ZZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEEEN23PredictionConfigurationD2Ev.exit, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit182
  br i1 %.not.i.i.i.i168, label %._crit_edge435, label %.lr.ph434

.lr.ph434:                                        ; preds = %.preheader
  %i.gg = load ptr, ptr %8, align 16, !tbaa !101
  %i.gh = zext nneg i32 %4 to i64
  %i.gi = shl nuw nsw i64 %i.gh, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.gg, i8 0, i64 %i.gi, i1 false), !tbaa !96
  br label %._crit_edge435

bb.y:                                             ; preds = %bb.i, %bb.h
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit276

bb.z:                                             ; preds = %bb.u
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ec

bb.aa:                                            ; preds = %bb.x
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit274

bb.ab:                                            ; preds = %.lr.ph432, %_ZZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEEEN23PredictionConfigurationD2Ev.exit
  %indvar642 = phi i64 [ 0, %.lr.ph432 ], [ %indvar.next, %_ZZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEEEN23PredictionConfigurationD2Ev.exit ] ; 3 uses
  %indvars.iv492 = phi i64 [ %i.fb, %.lr.ph432 ], [ %indvars.iv.next493, %_ZZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEEEN23PredictionConfigurationD2Ev.exit ] ; 3 uses
  %i.gm = mul i64 %i.fq, %indvar642               ; 4 uses
  %i.gn = add i64 %i.fy, %i.gm
  %i.go = add i64 %i.gb, %i.gm
  %i.gp = mul i64 %i.fh, %indvar642               ; 2 uses
  %indvars.iv.next493 = add nsw i64 %indvars.iv492, -1 ; 8 uses
  %i.gq = load ptr, ptr %i.dl, align 8, !tbaa !165 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !209
  %i.gt = load ptr, ptr %i.gq, align 8, !tbaa !210 ; 2 uses
  %i.gu = ptrtoint ptr %i.gs to i64
  %i.gv = ptrtoint ptr %i.gt to i64
  %i.gw = sub i64 %i.gu, %i.gv
  %i.gx = ashr exact i64 %i.gw, 2                 ; 2 uses
  %.not.i.i183 = icmp ugt i64 %i.gx, %indvars.iv.next493
  br i1 %.not.i.i183, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.6, i64 noundef %indvars.iv.next493, i64 noundef %i.gx) #20
          to label %.noexc184 unwind label %bb.ai

.noexc184:                                        ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %indvars.iv.next493
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !212 ; 6 uses
  %.not362398 = icmp eq i32 %i.gz, -1
  br i1 %.not362398, label %._crit_edge, label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.lr.ph

_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.lr.ph: ; preds = %bb.ad
  %i.ha = load ptr, ptr %i.dw, align 8, !tbaa !210, !noalias !664
  %i.hb = urem i32 %i.gz, 3
  %.not.i.i197 = icmp ne i32 %i.hb, 0             ; 2 uses
  %i.hc = add i32 %i.gz, -1
  %i.hd = add i32 %i.gz, 2                        ; 2 uses
  %i.he = icmp ne i32 %i.hd, -1
  %.mux = select i1 %.not.i.i197, i32 %i.hc, i32 %i.hd
  %i.hf = zext i32 %.mux to i64
  %brmerge = or i1 %.not.i.i197, %i.he
  br label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i

_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i: ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.lr.ph, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit204
  %.0144401 = phi i1 [ true, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.lr.ph ], [ %.1145, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit204 ] ; 3 uses
  %.0146400 = phi i32 [ 0, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.lr.ph ], [ %.1147, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit204 ] ; 4 uses
  %.sroa.0325.0399 = phi i32 [ %i.gz, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.lr.ph ], [ %.sroa.0325.2, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit204 ] ; 6 uses
  %i.hg = sext i32 %.0146400 to i64
  %i.hh = getelementptr inbounds [24 x i8], ptr %8, i64 %i.hg
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !101 ; 5 uses
  %i.hj = ptrtoaddr ptr %i.hi to i64              ; 2 uses
  %i.hk = zext i32 %.sroa.0325.0399 to i64
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %i.hk
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !212, !noalias !664 ; 7 uses
  %i.hn = icmp eq i32 %i.hm, -1
  br i1 %i.hn, label %_ZN5draco30ComputeParallelogramPredictionINS_11CornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit, label %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i

_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i: ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i
  %i.ho = zext i32 %i.hm to i64
  %i.hp = load ptr, ptr %i.aw, align 8, !tbaa !233, !noalias !665 ; 3 uses
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %i.ho
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !235, !noalias !665
  %i.hs = zext i32 %i.hr to i64
  %i.ht = load ptr, ptr %i.ay, align 8, !tbaa !101 ; 3 uses
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %i.hs
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !96 ; 2 uses
  %i.hw = add nuw i32 %i.hm, 1                    ; 2 uses
  %i.hx = urem i32 %i.hw, 3
  %.not.i.i.i = icmp eq i32 %i.hx, 0
  %i.hy = add i32 %i.hm, -2
  %spec.select.i.i.i = select i1 %.not.i.i.i, i32 %i.hy, i32 %i.hw ; 2 uses
  %i.hz = icmp eq i32 %spec.select.i.i.i, -1
  br i1 %i.hz, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i
  %i.ia = zext i32 %spec.select.i.i.i to i64
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %i.ia
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !235, !noalias !666
  %i.id = zext i32 %i.ic to i64
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i
  %storemerge.i11.i.i = phi i64 [ %i.id, %bb.ae ], [ 4294967295, %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i ]
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %storemerge.i11.i.i
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !96 ; 2 uses
  %i.ig = urem i32 %i.hm, 3
  %.not.i13.i.i = icmp eq i32 %i.ig, 0
  br i1 %.not.i13.i.i, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread26.i.i

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread26.i.i: ; preds = %bb.af
  %i.ih = add i32 %i.hm, -1
  br label %bb.ag

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i: ; preds = %bb.af
  %i.ii = add i32 %i.hm, 2                        ; 2 uses
  %i.ij = icmp eq i32 %i.ii, -1
  br i1 %i.ij, label %_ZN5draco23GetParallelogramEntriesINS_11CornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i, label %bb.ag

bb.ag:                                            ; preds = %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread26.i.i
  %.sink.i1428.i.i = phi i32 [ %i.ih, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread26.i.i ], [ %i.ii, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i ]
  %i.ik = zext i32 %.sink.i1428.i.i to i64
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %i.ik
  %i.im = load i32, ptr %i.il, align 4, !tbaa !235, !noalias !667
  %i.in = zext i32 %i.im to i64
  br label %_ZN5draco23GetParallelogramEntriesINS_11CornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i

_ZN5draco23GetParallelogramEntriesINS_11CornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i: ; preds = %bb.ag, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i
  %storemerge.i15.i.i = phi i64 [ %i.in, %bb.ag ], [ 4294967295, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i.i ]
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %storemerge.i15.i.i
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !96 ; 2 uses
  %i.iq = sext i32 %i.hv to i64
  %i.ir = icmp sgt i64 %indvars.iv.next493, %i.iq
  %i.is = sext i32 %i.if to i64
  %i.it = icmp sgt i64 %indvars.iv.next493, %i.is
  %or.cond.i = select i1 %i.ir, i1 %i.it, i1 false
  %i.iu = sext i32 %i.ip to i64
  %i.iv = icmp sgt i64 %indvars.iv.next493, %i.iu
  %or.cond40.i = select i1 %or.cond.i, i1 %i.iv, i1 false
  br i1 %or.cond40.i, label %bb.ah, label %_ZN5draco30ComputeParallelogramPredictionINS_11CornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit

bb.ah:                                            ; preds = %_ZN5draco23GetParallelogramEntriesINS_11CornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i
  br i1 %.not.i.i.i.i168, label %.loopexit371, label %.lr.ph.preheader.i186

.lr.ph.preheader.i186:                            ; preds = %bb.ah
  %i.iw = mul nsw i32 %i.ip, %4
  %i.ix = mul nsw i32 %i.if, %4
  %i.iy = mul nsw i32 %i.hv, %4
  %i.iz = sext i32 %i.ix to i64                   ; 2 uses
  %i.ja = sext i32 %i.iw to i64                   ; 2 uses
  %i.jb = sext i32 %i.iy to i64                   ; 2 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %1, i64 %i.iz ; 4 uses
  %invariant.gep49.i = getelementptr [4 x i8], ptr %1, i64 %i.ja ; 4 uses
  %invariant.gep51.i = getelementptr [4 x i8], ptr %1, i64 %i.jb ; 4 uses
  br i1 %min.iters.check715, label %.lr.ph.i188.preheader, label %vector.memcheck708

vector.memcheck708:                               ; preds = %.lr.ph.preheader.i186
  %i.jc = sub i64 %i.hj, %i.a                     ; 2 uses
  %i.jd = shl nsw i64 %i.jb, 2
  %i.je = sub i64 %i.jd, %i.jc
  %diff.check709 = icmp ugt i64 %i.je, -32
  %i.jf = shl nsw i64 %i.ja, 2
  %i.jg = sub i64 %i.jf, %i.jc
  %diff.check710 = icmp ugt i64 %i.jg, -32
  %conflict.rdx711 = or i1 %diff.check709, %diff.check710
  %i.jh = shl nsw i64 %i.iz, 2
  %i.ji = add i64 %i.jh, %i.a
  %i.jj = sub i64 %i.ji, %i.hj
  %diff.check712 = icmp ugt i64 %i.jj, -32
  %conflict.rdx713 = or i1 %conflict.rdx711, %diff.check712
  br i1 %conflict.rdx713, label %.lr.ph.i188.preheader, label %vector.body718

vector.body718:                                   ; preds = %vector.memcheck708, %vector.body718
  %index719 = phi i64 [ %index.next726, %vector.body718 ], [ 0, %vector.memcheck708 ] ; 5 uses
  %i.jk = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %index719 ; 2 uses
  %i.jl = getelementptr i8, ptr %i.jk, i64 16
  %wide.load720.a = load <4 x i32>, ptr %i.jk, align 4, !tbaa !96
  %wide.load721.a = load <4 x i32>, ptr %i.jl, align 4, !tbaa !96
  %i.jm = getelementptr [4 x i8], ptr %invariant.gep49.i, i64 %index719 ; 2 uses
  %i.jn = getelementptr i8, ptr %i.jm, i64 16
  %wide.load722 = load <4 x i32>, ptr %i.jm, align 4, !tbaa !96
  %wide.load723 = load <4 x i32>, ptr %i.jn, align 4, !tbaa !96
  %i.jo = getelementptr [4 x i8], ptr %invariant.gep51.i, i64 %index719 ; 2 uses
  %i.jp = getelementptr i8, ptr %i.jo, i64 16
  %wide.load724 = load <4 x i32>, ptr %i.jo, align 4, !tbaa !96
  %wide.load725 = load <4 x i32>, ptr %i.jp, align 4, !tbaa !96
  %i.jq = add <4 x i32> %wide.load722, %wide.load720.a
  %i.jr = add <4 x i32> %wide.load723, %wide.load721.a
  %i.js = sub <4 x i32> %i.jq, %wide.load724
  %i.jt = sub <4 x i32> %i.jr, %wide.load725
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %index719 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  store <4 x i32> %i.js, ptr %i.ju, align 4, !tbaa !96
  store <4 x i32> %i.jt, ptr %i.jv, align 4, !tbaa !96
  %index.next726 = add nuw i64 %index719, 8       ; 2 uses
  %i.jw = icmp eq i64 %index.next726, %n.vec717
  br i1 %i.jw, label %middle.block727, label %vector.body718, !llvm.loop !631

middle.block727:                                  ; preds = %vector.body718
  br i1 %cmp.n728, label %.loopexit371, label %.lr.ph.i188.preheader

.lr.ph.i188.preheader:                            ; preds = %vector.memcheck708, %.lr.ph.preheader.i186, %middle.block727
  %indvars.iv.i189.ph = phi i64 [ 0, %vector.memcheck708 ], [ 0, %.lr.ph.preheader.i186 ], [ %n.vec717, %middle.block727 ] ; 7 uses
  br i1 %lcmp.mod767.not.a, label %.lr.ph.i188.prol.loopexit, label %.lr.ph.i188.prol

.lr.ph.i188.prol:                                 ; preds = %.lr.ph.i188.preheader
  %gep.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i189.ph
  %i.jx = load i32, ptr %gep.i.prol, align 4, !tbaa !96
  %gep50.i.prol = getelementptr [4 x i8], ptr %invariant.gep49.i, i64 %indvars.iv.i189.ph
  %i.jy = load i32, ptr %gep50.i.prol, align 4, !tbaa !96
  %gep52.i.prol = getelementptr [4 x i8], ptr %invariant.gep51.i, i64 %indvars.iv.i189.ph
  %i.jz = load i32, ptr %gep52.i.prol, align 4, !tbaa !96
  %i.ka = add i32 %i.jy, %i.jx
  %i.kb = sub i32 %i.ka, %i.jz
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %indvars.iv.i189.ph
  store i32 %i.kb, ptr %i.kc, align 4, !tbaa !96
  %indvars.iv.next.i190.prol = or disjoint i64 %indvars.iv.i189.ph, 1
  br label %.lr.ph.i188.prol.loopexit

.lr.ph.i188.prol.loopexit:                        ; preds = %.lr.ph.i188.prol, %.lr.ph.i188.preheader
  %indvars.iv.i189.unr = phi i64 [ %indvars.iv.i189.ph, %.lr.ph.i188.preheader ], [ %indvars.iv.next.i190.prol, %.lr.ph.i188.prol ]
  %i.kd = icmp eq i64 %indvars.iv.i189.ph, %13
  br i1 %i.kd, label %.loopexit371, label %.lr.ph.i188

.lr.ph.i188:                                      ; preds = %.lr.ph.i188.prol.loopexit, %.lr.ph.i188
  %indvars.iv.i189 = phi i64 [ %indvars.iv.next.i190.1, %.lr.ph.i188 ], [ %indvars.iv.i189.unr, %.lr.ph.i188.prol.loopexit ] ; 6 uses
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i189
  %i.ke = load i32, ptr %gep.i, align 4, !tbaa !96
  %gep50.i = getelementptr [4 x i8], ptr %invariant.gep49.i, i64 %indvars.iv.i189
  %i.kf = load i32, ptr %gep50.i, align 4, !tbaa !96
  %gep52.i = getelementptr [4 x i8], ptr %invariant.gep51.i, i64 %indvars.iv.i189
  %i.kg = load i32, ptr %gep52.i, align 4, !tbaa !96
  %i.kh = add i32 %i.kf, %i.ke
  %i.ki = sub i32 %i.kh, %i.kg
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %indvars.iv.i189
  store i32 %i.ki, ptr %i.kj, align 4, !tbaa !96
  %indvars.iv.next.i190 = add nuw nsw i64 %indvars.iv.i189, 1 ; 4 uses
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i190
  %i.kk = load i32, ptr %gep.i.1, align 4, !tbaa !96
  %gep50.i.1 = getelementptr [4 x i8], ptr %invariant.gep49.i, i64 %indvars.iv.next.i190
  %i.kl = load i32, ptr %gep50.i.1, align 4, !tbaa !96
  %gep52.i.1 = getelementptr [4 x i8], ptr %invariant.gep51.i, i64 %indvars.iv.next.i190
  %i.km = load i32, ptr %gep52.i.1, align 4, !tbaa !96
  %i.kn = add i32 %i.kl, %i.kk
  %i.ko = sub i32 %i.kn, %i.km
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %indvars.iv.next.i190
  store i32 %i.ko, ptr %i.kp, align 4, !tbaa !96
  %indvars.iv.next.i190.1 = add nuw nsw i64 %indvars.iv.i189, 2 ; 2 uses
  %exitcond.not.i191.1 = icmp eq i64 %indvars.iv.next.i190.1, %wide.trip.count.i187
  br i1 %exitcond.not.i191.1, label %.loopexit371, label %.lr.ph.i188, !llvm.loop !632

.loopexit371:                                     ; preds = %.lr.ph.i188.prol.loopexit, %.lr.ph.i188, %middle.block727, %bb.ah
  %i.kq = add nsw i32 %.0146400, 1                ; 2 uses
  %i.kr = icmp eq i32 %i.kq, 4
  br i1 %i.kr, label %._crit_edge, label %_ZN5draco30ComputeParallelogramPredictionINS_11CornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit

bb.ai:                                            ; preds = %bb.ac
  %i.ks = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

_ZN5draco30ComputeParallelogramPredictionINS_11CornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit: ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %_ZN5draco23GetParallelogramEntriesINS_11CornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i, %.loopexit371
  %.1147 = phi i32 [ %i.kq, %.loopexit371 ], [ %.0146400, %_ZN5draco23GetParallelogramEntriesINS_11CornerTableEEEvNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPiSD_SD_.exit.i ], [ %.0146400, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i ] ; 5 uses
  br i1 %.0144401, label %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, label %bb.ak

_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i: ; preds = %_ZN5draco30ComputeParallelogramPredictionINS_11CornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit
  %i.kt = add nuw i32 %.sroa.0325.0399, 1         ; 2 uses
  %i.ku = urem i32 %i.kt, 3
  %.not.i.i192 = icmp eq i32 %i.ku, 0
  %i.kv = add i32 %.sroa.0325.0399, -2
  %spec.select.i.i = select i1 %.not.i.i192, i32 %i.kv, i32 %i.kt ; 2 uses
  %i.kw = icmp eq i32 %spec.select.i.i, -1
  br i1 %i.kw, label %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i193

_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i193: ; preds = %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i
  %i.kx = zext i32 %spec.select.i.i to i64
  %i.ky = load ptr, ptr %i.dw, align 8, !tbaa !210, !noalias !668
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %i.kx
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !212, !noalias !668 ; 3 uses
  %i.lb = icmp eq i32 %i.la, -1
  br i1 %i.lb, label %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i193
  %i.lc = add nuw i32 %i.la, 1                    ; 2 uses
  %i.ld = urem i32 %i.lc, 3
  %.not.i1.i = icmp eq i32 %i.ld, 0
  %i.le = add i32 %i.la, -2
  %spec.select.i2.i = select i1 %.not.i1.i, i32 %i.le, i32 %i.lc
  br label %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

bb.ak:                                            ; preds = %_ZN5draco30ComputeParallelogramPredictionINS_11CornerTableEiEEbiNS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKT_RKSt6vectorIiSaIiEEPKT0_iPSD_.exit
  %i.lf = urem i32 %.sroa.0325.0399, 3
  %.not.i.i194 = icmp eq i32 %i.lf, 0
  br i1 %.not.i.i194, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i: ; preds = %bb.ak
  %i.lg = add i32 %.sroa.0325.0399, -1
  br label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i195

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i: ; preds = %bb.ak
  %i.lh = add i32 %.sroa.0325.0399, 2             ; 2 uses
  %i.li = icmp eq i32 %i.lh, -1
  br i1 %i.li, label %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i195

_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i195: ; preds = %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i
  %.sink.i9.i = phi i32 [ %i.lg, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i ], [ %i.lh, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i ]
  %i.lj = zext i32 %.sink.i9.i to i64
  %i.lk = load ptr, ptr %i.dw, align 8, !tbaa !210, !noalias !669
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.lk, i64 %i.lj
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !212, !noalias !669 ; 4 uses
  %i.ln = icmp eq i32 %i.lm, -1
  br i1 %i.ln, label %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %bb.al

bb.al:                                            ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i195
  %i.lo = urem i32 %i.lm, 3
  %.not.i1.i196 = icmp eq i32 %i.lo, 0
  br i1 %.not.i1.i196, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.lp = add i32 %i.lm, -1
  br label %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

bb.an:                                            ; preds = %bb.al
  %i.lq = add i32 %i.lm, 2
  br label %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit: ; preds = %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i195, %bb.am, %bb.an, %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i193, %bb.aj
  %.sroa.0325.1 = phi i32 [ -1, %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i ], [ -1, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i193 ], [ %spec.select.i2.i, %bb.aj ], [ %i.lp, %bb.am ], [ %i.lq, %bb.an ], [ -1, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i195 ], [ -1, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i ] ; 3 uses
  %i.lr = icmp eq i32 %.sroa.0325.1, %i.gz
  br i1 %i.lr, label %._crit_edge, label %bb.ao

bb.ao:                                            ; preds = %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %i.ls = icmp eq i32 %.sroa.0325.1, -1
  %or.cond = and i1 %.0144401, %i.ls
  br i1 %or.cond, label %bb.ap, label %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit204

bb.ap:                                            ; preds = %bb.ao
  br i1 %brmerge, label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i199, label %._crit_edge

_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i199: ; preds = %bb.ap
  %i.lt = load ptr, ptr %i.dw, align 8, !tbaa !210, !noalias !670
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %i.hf
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !212, !noalias !670 ; 4 uses
  %i.lw = icmp eq i32 %i.lv, -1
  br i1 %i.lw, label %._crit_edge, label %bb.aq

bb.aq:                                            ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i199
  %i.lx = urem i32 %i.lv, 3
  %.not.i1.i201 = icmp eq i32 %i.lx, 0
  br i1 %.not.i1.i201, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ly = add i32 %i.lv, -1
  br label %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit204

bb.as:                                            ; preds = %bb.aq
  %i.lz = add i32 %i.lv, 2
  br label %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit204

_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit204: ; preds = %bb.ar, %bb.as, %bb.ao
  %.sroa.0325.2 = phi i32 [ %.sroa.0325.1, %bb.ao ], [ %i.ly, %bb.ar ], [ %i.lz, %bb.as ] ; 2 uses
  %.1145 = phi i1 [ %.0144401, %bb.ao ], [ false, %bb.ar ], [ false, %bb.as ]
  %.not362 = icmp eq i32 %.sroa.0325.2, -1
  br i1 %.not362, label %._crit_edge, label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, !llvm.loop !645

._crit_edge:                                      ; preds = %bb.ap, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i199, %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, %.loopexit371, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit204, %bb.ad
  %.2148 = phi i32 [ 0, %bb.ad ], [ %.1147, %bb.ap ], [ %.1147, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i199 ], [ %.1147, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit204 ], [ 4, %.loopexit371 ], [ %.1147, %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %9, i8 0, i64 9, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.dx, i8 0, i64 52, i1 false)
  %i.ma = mul nuw nsw i64 %indvars.iv.next493, %i.g ; 2 uses
  %i.mb = add nsw i64 %indvars.iv492, -2
  %i.mc = mul nuw nsw i64 %i.mb, %i.g
  %i.md = getelementptr inbounds [4 x i8], ptr %1, i64 %i.mc ; 4 uses
  %i.me = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ma ; 5 uses
  %i.mf = load ptr, ptr %i.cs, align 8, !tbaa !236 ; 4 uses
  %i.mg = ptrtoaddr ptr %i.mf to i64              ; 3 uses
  br i1 %.not.i.i.i.i168, label %._crit_edge.i205, label %.lr.ph.i206.preheader

.lr.ph.i206.preheader:                            ; preds = %._crit_edge
  br i1 %min.iters.check691, label %.lr.ph.i206.preheader734, label %vector.memcheck680

vector.memcheck680:                               ; preds = %.lr.ph.i206.preheader
  %i.mh = sub i64 %i.en, %i.mg
  %diff.check681 = icmp ugt i64 %i.mh, -32
  %.reass808.a = add i64 %i.gm, %invariant.op807.a
  %diff.check682.a = icmp ult i64 %.reass808.a, 31
  %conflict.rdx683.a = or i1 %diff.check681, %diff.check682.a
  %.reass810 = add i64 %i.gm, %invariant.op809.a
  %diff.check684.a = icmp ult i64 %.reass810, 31
  %conflict.rdx685.a = or i1 %conflict.rdx683.a, %diff.check684.a
  %i.mi = add i64 %i.gn, %i.mg
  %i.mj = add i64 %i.mi, -1
  %diff.check686 = icmp ult i64 %i.mj, 31
  %conflict.rdx687 = or i1 %conflict.rdx685.a, %diff.check686
  %i.mk = add i64 %i.go, %i.mg
  %i.ml = add i64 %i.mk, -1
  %diff.check688 = icmp ult i64 %i.ml, 31
  %conflict.rdx689 = or i1 %conflict.rdx687, %diff.check688
  br i1 %conflict.rdx689, label %.lr.ph.i206.preheader734, label %vector.body694

vector.body694:                                   ; preds = %vector.memcheck680, %vector.body694
  %index695 = phi i64 [ %index.next702, %vector.body694 ], [ 0, %vector.memcheck680 ] ; 5 uses
  %vec.phi696 = phi <4 x i32> [ %i.mu, %vector.body694 ], [ zeroinitializer, %vector.memcheck680 ]
  %vec.phi697 = phi <4 x i32> [ %i.mv, %vector.body694 ], [ zeroinitializer, %vector.memcheck680 ]
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %index695 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 16
  %wide.load698 = load <4 x i32>, ptr %i.mm, align 4, !tbaa !96
  %wide.load699 = load <4 x i32>, ptr %i.mn, align 4, !tbaa !96
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.me, i64 %index695 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 16
  %wide.load700 = load <4 x i32>, ptr %i.mo, align 4, !tbaa !96
  %wide.load701 = load <4 x i32>, ptr %i.mp, align 4, !tbaa !96
  %i.mq = sub nsw <4 x i32> %wide.load698, %wide.load700 ; 5 uses
  %i.mr = sub nsw <4 x i32> %wide.load699, %wide.load701 ; 5 uses
  %i.ms = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.mq, i1 true)
  %i.mt = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.mr, i1 true)
  %i.mu = add <4 x i32> %i.ms, %vec.phi696        ; 2 uses
  %i.mv = add <4 x i32> %i.mt, %vec.phi697        ; 2 uses
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0335.0, i64 %index695 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 16
  store <4 x i32> %i.mq, ptr %i.mw, align 4, !tbaa !96
  store <4 x i32> %i.mr, ptr %i.mx, align 4, !tbaa !96
  %i.my = shl nuw <4 x i32> %i.mq, splat (i32 1)
  %i.mz = shl nuw <4 x i32> %i.mr, splat (i32 1)
  %i.na = xor <4 x i32> %i.mq, splat (i32 -1)
  %i.nb = xor <4 x i32> %i.mr, splat (i32 -1)
  %i.nc = shl nuw <4 x i32> %i.na, splat (i32 1)
  %i.nd = shl nuw <4 x i32> %i.nb, splat (i32 1)
  %i.ne = or disjoint <4 x i32> %i.nc, splat (i32 1)
  %i.nf = or disjoint <4 x i32> %i.nd, splat (i32 1)
  %i.ng = icmp slt <4 x i32> %i.mq, zeroinitializer
  %i.nh = icmp slt <4 x i32> %i.mr, zeroinitializer
  %i.ni = select <4 x i1> %i.ng, <4 x i32> %i.ne, <4 x i32> %i.my
  %i.nj = select <4 x i1> %i.nh, <4 x i32> %i.nf, <4 x i32> %i.mz
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %index695 ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 16
  store <4 x i32> %i.ni, ptr %i.nk, align 4, !tbaa !96
  store <4 x i32> %i.nj, ptr %i.nl, align 4, !tbaa !96
  %index.next702 = add nuw i64 %index695, 8       ; 2 uses
  %i.nm = icmp eq i64 %index.next702, %n.vec693
  br i1 %i.nm, label %middle.block703, label %vector.body694, !llvm.loop !646

middle.block703:                                  ; preds = %vector.body694
  %bin.rdx704 = add <4 x i32> %i.mv, %i.mu
  %i.nn = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx704) ; 2 uses
  br i1 %cmp.n705, label %._crit_edge.loopexit.i, label %.lr.ph.i206.preheader734

.lr.ph.i206.preheader734:                         ; preds = %vector.memcheck680, %.lr.ph.i206.preheader, %middle.block703
  %indvars.iv.i208.ph = phi i64 [ 0, %vector.memcheck680 ], [ 0, %.lr.ph.i206.preheader ], [ %n.vec693, %middle.block703 ]
  %.sroa.3.015.i.ph = phi i32 [ 0, %vector.memcheck680 ], [ 0, %.lr.ph.i206.preheader ], [ %i.nn, %middle.block703 ]
  br label %.lr.ph.i206

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i206, %middle.block703
  %.lcssa = phi i32 [ %i.nn, %middle.block703 ], [ %i.ny, %.lr.ph.i206 ]
  %i.no = zext nneg i32 %.lcssa to i64
  %i.np = shl nuw nsw i64 %i.no, 32
  br label %._crit_edge.i205

._crit_edge.i205:                                 ; preds = %._crit_edge.loopexit.i, %._crit_edge
  %.sroa.3.0.lcssa.i = phi i64 [ %i.np, %._crit_edge.loopexit.i ], [ 0, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  invoke void @_ZN5draco21ShannonEntropyTracker4PeekEPKji(ptr dead_on_unwind nonnull writable sret(%"struct.draco::ShannonEntropyTracker::EntropyData") align 8 %7, ptr noundef nonnull align 8 dereferenceable(48) %i.dy, ptr noundef %i.mf, i32 noundef %4)
          to label %.noexc211 unwind label %bb.aw

.noexc211:                                        ; preds = %._crit_edge.i205
  %i.nq = invoke noundef i64 @_ZN5draco21ShannonEntropyTracker19GetNumberOfDataBitsERKNS0_11EntropyDataE(ptr noundef nonnull align 8 dereferenceable(20) %7)
          to label %.noexc212 unwind label %bb.aw

.noexc212:                                        ; preds = %.noexc211
  %i.nr = invoke noundef i64 @_ZN5draco21ShannonEntropyTracker24GetNumberOfRAnsTableBitsERKNS0_11EntropyDataE(ptr noundef nonnull align 8 dereferenceable(20) %7)
          to label %bb.at unwind label %bb.aw

.lr.ph.i206:                                      ; preds = %.lr.ph.i206.preheader734, %.lr.ph.i206
  %indvars.iv.i208 = phi i64 [ %indvars.iv.next.i209, %.lr.ph.i206 ], [ %indvars.iv.i208.ph, %.lr.ph.i206.preheader734 ] ; 5 uses
  %.sroa.3.015.i = phi i32 [ %i.ny, %.lr.ph.i206 ], [ %.sroa.3.015.i.ph, %.lr.ph.i206.preheader734 ]
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %indvars.iv.i208
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !96
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.me, i64 %indvars.iv.i208
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !96
  %i.nw = sub nsw i32 %i.nt, %i.nv                ; 5 uses
  %i.nx = call i32 @llvm.abs.i32(i32 %i.nw, i1 true)
  %i.ny = add nuw nsw i32 %i.nx, %.sroa.3.015.i   ; 2 uses
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0335.0, i64 %indvars.iv.i208
  store i32 %i.nw, ptr %i.nz, align 4, !tbaa !96
  %i.oa = shl nuw i32 %i.nw, 1
  %i.ob = xor i32 %i.nw, -1
  %i.oc = shl nuw i32 %i.ob, 1
  %i.od = or disjoint i32 %i.oc, 1
  %i.oe = icmp slt i32 %i.nw, 0
  %.0.i.i = select i1 %i.oe, i32 %i.od, i32 %i.oa
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %indvars.iv.i208
  store i32 %.0.i.i, ptr %i.of, align 4, !tbaa !96
  %indvars.iv.next.i209 = add nuw nsw i64 %indvars.iv.i208, 1 ; 2 uses
  %exitcond.not.i210 = icmp eq i64 %indvars.iv.next.i209, %wide.trip.count.i187
  br i1 %exitcond.not.i210, label %._crit_edge.loopexit.i, label %.lr.ph.i206, !llvm.loop !647

bb.at:                                            ; preds = %.noexc212
  %i.og = add nsw i64 %i.nr, %i.nq                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %i.oh = icmp sgt i32 %.2148, 0                  ; 3 uses
  br i1 %i.oh, label %bb.au, label %bb.ay

bb.au:                                            ; preds = %bb.at
  %i.oi = zext nneg i32 %.2148 to i64
  %i.oj = add nsw i32 %.2148, -1
  %i.ok = zext nneg i32 %i.oj to i64              ; 2 uses
  %i.ol = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ok ; 2 uses
  %i.om = load i64, ptr %i.ol, align 8, !tbaa !128
  %i.on = add nsw i64 %i.om, %i.oi                ; 3 uses
  store i64 %i.on, ptr %i.ol, align 8, !tbaa !128
  %i.oo = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.ok
  %i.op = load i64, ptr %i.oo, align 8, !tbaa !128
  %i.oq = trunc i64 %i.on to i32
  %i.or = trunc i64 %i.op to i32
  %i.os = invoke noundef double @_ZN5draco27ComputeBinaryShannonEntropyEjj(i32 noundef %i.oq, i32 noundef %i.or)
          to label %bb.av unwind label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.ot = sitofp i64 %i.on to double
  %i.ou = fmul double %i.os, %i.ot
  %i.ov = call double @llvm.ceil.f64(double %i.ou)
  %i.ow = fptosi double %i.ov to i64
  %i.ox = add i64 %i.og, %i.ow
  br label %bb.ay

bb.aw:                                            ; preds = %.noexc212, %.noexc211, %._crit_edge.i205
  %i.oy = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.ax:                                            ; preds = %bb.au
  %i.oz = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.ay:                                            ; preds = %bb.av, %bb.at
  %.sroa.0.0 = phi i64 [ %i.ox, %bb.av ], [ %i.og, %bb.at ]
  %.sroa.0.0.insert.ext = and i64 %.sroa.0.0, 4294967295
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0.0.insert.ext, %.sroa.3.0.lcssa.i
  store i64 %.sroa.0.0.insert.insert, ptr %9, align 8
  store i8 0, ptr %i.dz, align 8, !tbaa !673
  store i32 0, ptr %i.dx, align 4, !tbaa !674
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %i.g
  invoke void @_ZNSt6vectorIiSaIiEE13_M_assign_auxIPKiEEvT_S5_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.ea, ptr noundef %i.md, ptr noundef %i.pa)
          to label %_ZNSt6vectorIiSaIiEE6assignIPKivEEvT_S5_.exit unwind label %bb.az

_ZNSt6vectorIiSaIiEE6assignIPKivEEvT_S5_.exit:    ; preds = %bb.ay
  invoke void @_ZNSt6vectorIiSaIiEE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPiS1_EEEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.eb, ptr %.sroa.0335.0, ptr %.0.i.i.i.i.i178)
          to label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit.preheader unwind label %bb.az

_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit.preheader: ; preds = %_ZNSt6vectorIiSaIiEE6assignIPKivEEvT_S5_.exit
  %.not418 = icmp slt i32 %.2148, 1
  br i1 %.not418, label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit._crit_edge.thread, label %.lr.ph420

.lr.ph420:                                        ; preds = %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit.preheader
  %i.pb = zext nneg i32 %.2148 to i64             ; 5 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.pb ; 5 uses
  %i.pd = add nsw i32 %.2148, -1
  %i.pe = zext nneg i32 %i.pd to i64              ; 2 uses
  %i.pf = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.pe
  %i.pg = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.pe
  %or.cond.i.i239 = icmp eq i32 %.2148, 1
  %.ptr35.i.i = getelementptr inbounds i8, ptr %i.pc, i64 -1 ; 3 uses
  %i.ph = sub nsw i64 0, %i.pb
  %.reass812 = add i64 %i.gp, %invariant.op811
  %diff.check643.a = icmp ult i64 %.reass812, 31
  %invariant.op = or i1 %diff.check641.a, %diff.check643.a
  %invariant.op806.reass = add i64 %i.gp, %invariant.op813
  br label %.lr.ph.preheader.i.i.i

_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit._crit_edge: ; preds = %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit
  br i1 %i.oh, label %bb.co, label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit._crit_edge.thread

bb.az:                                            ; preds = %_ZNSt6vectorIiSaIiEE6assignIPKivEEvT_S5_.exit, %bb.ay
  %i.pi = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

.lr.ph.preheader.i.i.i:                           ; preds = %.lr.ph420, %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit
  %indvar = phi i64 [ 0, %.lr.ph420 ], [ %i.pj, %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit ]
  %.0131419 = phi i32 [ 1, %.lr.ph420 ], [ %i.wm, %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit ] ; 6 uses
  %i.pj = add nuw nsw i64 %indvar, 1              ; 3 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.b, i8 1, i64 %i.pb, i1 false), !tbaa !239
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.b, i8 0, i64 %i.pj, i1 false), !tbaa !239
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
  br i1 %i.gd, label %.lr.ph416.epil.preheader, label %.lr.ph416

._crit_edge417.thread:                            ; preds = %.preheader366
  %i.pk = load ptr, ptr %i.cs, align 8, !tbaa !236
  br label %._crit_edge.i217

.lr.ph413:                                        ; preds = %.lr.ph413.preheader, %bb.ba
  %indvars.iv473 = phi i64 [ %indvars.iv.next474, %bb.ba ], [ 0, %.lr.ph413.preheader ] ; 4 uses
  %.0127411 = phi i8 [ %.1128, %bb.ba ], [ 0, %.lr.ph413.preheader ] ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv473
  %i.pm = load i8, ptr %i.pl, align 1, !tbaa !239, !range !61, !noundef !62
  %i.pn = trunc nuw i8 %i.pm to i1
  br i1 %i.pn, label %bb.ba, label %.preheader365

.preheader365:                                    ; preds = %.lr.ph413
  br i1 %.not.i.i.i.i168, label %._crit_edge410, label %.lr.ph409

.lr.ph409:                                        ; preds = %.preheader365
  %i.po = getelementptr inbounds nuw [24 x i8], ptr %8, i64 %indvars.iv473
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !101 ; 8 uses
  br i1 %min.iters.check667, label %scalar.ph666.preheader, label %vector.memcheck664

vector.memcheck664:                               ; preds = %.lr.ph409
  %scevgep665 = getelementptr i8, ptr %i.pp, i64 %i.fk
  %bound0 = icmp ult ptr %.sroa.0344.0, %scevgep665
  %bound1 = icmp ult ptr %i.pp, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph666.preheader, label %vector.body670

vector.body670:                                   ; preds = %vector.memcheck664, %vector.body670
  %index671 = phi i64 [ %index.next676, %vector.body670 ], [ 0, %vector.memcheck664 ] ; 3 uses
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.pp, i64 %index671 ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 16
  %wide.load672 = load <4 x i32>, ptr %i.pq, align 4, !tbaa !96, !alias.scope !675
  %wide.load673 = load <4 x i32>, ptr %i.pr, align 4, !tbaa !96, !alias.scope !675
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0344.0, i64 %index671 ; 3 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 16 ; 2 uses
  %wide.load674 = load <4 x i32>, ptr %i.ps, align 4, !tbaa !96, !alias.scope !676, !noalias !675
  %wide.load675 = load <4 x i32>, ptr %i.pt, align 4, !tbaa !96, !alias.scope !676, !noalias !675
  %i.pu = add nsw <4 x i32> %wide.load674, %wide.load672
  %i.pv = add nsw <4 x i32> %wide.load675, %wide.load673
  store <4 x i32> %i.pu, ptr %i.ps, align 4, !tbaa !96, !alias.scope !676, !noalias !675
  store <4 x i32> %i.pv, ptr %i.pt, align 4, !tbaa !96, !alias.scope !676, !noalias !675
  %index.next676 = add nuw i64 %index671, 8       ; 2 uses
  %i.pw = icmp eq i64 %index.next676, %n.vec669
  br i1 %i.pw, label %middle.block677, label %vector.body670, !llvm.loop !651

middle.block677:                                  ; preds = %vector.body670
  br i1 %cmp.n678, label %._crit_edge410, label %scalar.ph666.preheader

scalar.ph666.preheader:                           ; preds = %vector.memcheck664, %.lr.ph409, %middle.block677
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck664 ], [ 0, %.lr.ph409 ], [ %n.vec669, %middle.block677 ] ; 3 uses
  %14 = sub nsw i64 %i.gc, %indvars.iv.ph
  br i1 %lcmp.mod769.not, label %scalar.ph666.prol.loopexit, label %scalar.ph666.prol

scalar.ph666.prol:                                ; preds = %scalar.ph666.preheader, %scalar.ph666.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph666.prol ], [ %indvars.iv.ph, %scalar.ph666.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph666.prol ], [ 0, %scalar.ph666.preheader ]
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %i.pp, i64 %indvars.iv.prol
  %i.py = load i32, ptr %i.px, align 4, !tbaa !96
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0344.0, i64 %indvars.iv.prol ; 2 uses
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !96
  %i.qb = add nsw i32 %i.qa, %i.py
  store i32 %i.qb, ptr %i.pz, align 4, !tbaa !96
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter768
  br i1 %prol.iter.cmp.not, label %scalar.ph666.prol.loopexit, label %scalar.ph666.prol, !llvm.loop !652

scalar.ph666.prol.loopexit:                       ; preds = %scalar.ph666.prol, %scalar.ph666.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph666.preheader ], [ %indvars.iv.next.prol, %scalar.ph666.prol ]
  %15 = icmp ult i64 %14, 3
  br i1 %15, label %._crit_edge410, label %scalar.ph666

._crit_edge410:                                   ; preds = %scalar.ph666.prol.loopexit, %scalar.ph666, %middle.block677, %.preheader365
  %i.qc = trunc nuw nsw i64 %indvars.iv473 to i32
  %i.qd = shl nuw i32 1, %i.qc
  %i.qe = trunc i32 %i.qd to i8
  %i.qf = or i8 %.0127411, %i.qe
  br label %bb.ba

scalar.ph666:                                     ; preds = %scalar.ph666.prol.loopexit, %scalar.ph666
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph666 ], [ %indvars.iv.unr, %scalar.ph666.prol.loopexit ] ; 6 uses
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.pp, i64 %indvars.iv
  %i.qh = load i32, ptr %i.qg, align 4, !tbaa !96
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0344.0, i64 %indvars.iv ; 2 uses
  %i.qj = load i32, ptr %i.qi, align 4, !tbaa !96
  %i.qk = add nsw i32 %i.qj, %i.qh
  store i32 %i.qk, ptr %i.qi, align 4, !tbaa !96
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.pp, i64 %indvars.iv.next
  %i.qm = load i32, ptr %i.ql, align 4, !tbaa !96
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0344.0, i64 %indvars.iv.next ; 2 uses
  %i.qo = load i32, ptr %i.qn, align 4, !tbaa !96
  %i.qp = add nsw i32 %i.qo, %i.qm
  store i32 %i.qp, ptr %i.qn, align 4, !tbaa !96
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %i.pp, i64 %indvars.iv.next.1
  %i.qr = load i32, ptr %i.qq, align 4, !tbaa !96
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0344.0, i64 %indvars.iv.next.1 ; 2 uses
  %i.qt = load i32, ptr %i.qs, align 4, !tbaa !96
  %i.qu = add nsw i32 %i.qt, %i.qr
  store i32 %i.qu, ptr %i.qs, align 4, !tbaa !96
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %i.pp, i64 %indvars.iv.next.2
  %i.qw = load i32, ptr %i.qv, align 4, !tbaa !96
  %i.qx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0344.0, i64 %indvars.iv.next.2 ; 2 uses
  %i.qy = load i32, ptr %i.qx, align 4, !tbaa !96
  %i.qz = add nsw i32 %i.qy, %i.qw
  store i32 %i.qz, ptr %i.qx, align 4, !tbaa !96
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %12
  br i1 %exitcond.not.3, label %._crit_edge410, label %scalar.ph666, !llvm.loop !653

bb.ba:                                            ; preds = %.lr.ph413, %._crit_edge410
  %.1128 = phi i8 [ %.0127411, %.lr.ph413 ], [ %i.qf, %._crit_edge410 ] ; 2 uses
  %indvars.iv.next474 = add nuw nsw i64 %indvars.iv473, 1 ; 2 uses
  %exitcond476.not = icmp eq i64 %indvars.iv.next474, %i.pb
  br i1 %exitcond476.not, label %.preheader366, label %.lr.ph413, !llvm.loop !654

.lr.ph.i221.preheader.unr-lcssa:                  ; preds = %.lr.ph416
  br i1 %lcmp.mod771.not, label %.lr.ph.i221.preheader, label %.lr.ph416.epil.preheader

.lr.ph416.epil.preheader:                         ; preds = %.lr.ph.i221.preheader.unr-lcssa, %.lr.ph416.preheader
  %indvars.iv477.epil.init = phi i64 [ 0, %.lr.ph416.preheader ], [ %indvars.iv.next478.1, %.lr.ph.i221.preheader.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod772)
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0344.0, i64 %indvars.iv477.epil.init ; 2 uses
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !96
  %i.rc = sdiv i32 %i.rb, %.0131419
  store i32 %i.rc, ptr %i.ra, align 4, !tbaa !96
  br label %.lr.ph.i221.preheader

.lr.ph.i221.preheader:                            ; preds = %.lr.ph.i221.preheader.unr-lcssa, %.lr.ph416.epil.preheader
  %i.rd = load ptr, ptr %i.cs, align 8, !tbaa !236 ; 5 uses
  br i1 %min.iters.check650, label %.lr.ph.i221.preheader732, label %vector.memcheck639

vector.memcheck639:                               ; preds = %.lr.ph.i221.preheader
  %i.re = ptrtoaddr ptr %i.rd to i64              ; 3 uses
  %i.rf = sub i64 %i.en, %i.re
  %diff.check640 = icmp ugt i64 %i.rf, -32
  %conflict.rdx644.reass = or i1 %diff.check640, %invariant.op
  %i.rg = sub i64 %i.ee, %i.re
  %diff.check645 = icmp ugt i64 %i.rg, -32
  %conflict.rdx646 = or i1 %conflict.rdx644.reass, %diff.check645
  %.reass = add i64 %i.re, %invariant.op806.reass
  %diff.check647 = icmp ult i64 %.reass, 31
  %conflict.rdx648 = or i1 %conflict.rdx646, %diff.check647
  br i1 %conflict.rdx648, label %.lr.ph.i221.preheader732, label %vector.body653

vector.body653:                                   ; preds = %vector.memcheck639, %vector.body653
  %index654 = phi i64 [ %index.next660, %vector.body653 ], [ 0, %vector.memcheck639 ] ; 5 uses
  %vec.phi = phi <4 x i32> [ %i.rp, %vector.body653 ], [ zeroinitializer, %vector.memcheck639 ]
  %vec.phi655 = phi <4 x i32> [ %i.rq, %vector.body653 ], [ zeroinitializer, %vector.memcheck639 ]
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0344.0, i64 %index654 ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 16
  %wide.load656 = load <4 x i32>, ptr %i.rh, align 4, !tbaa !96
  %wide.load657 = load <4 x i32>, ptr %i.ri, align 4, !tbaa !96
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %i.me, i64 %index654 ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 16
  %wide.load658 = load <4 x i32>, ptr %i.rj, align 4, !tbaa !96
  %wide.load659 = load <4 x i32>, ptr %i.rk, align 4, !tbaa !96
  %i.rl = sub nsw <4 x i32> %wide.load656, %wide.load658 ; 5 uses
  %i.rm = sub nsw <4 x i32> %wide.load657, %wide.load659 ; 5 uses
  %i.rn = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.rl, i1 true)
  %i.ro = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.rm, i1 true)
  %i.rp = add <4 x i32> %i.rn, %vec.phi           ; 2 uses
  %i.rq = add <4 x i32> %i.ro, %vec.phi655        ; 2 uses
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0335.0, i64 %index654 ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 16
  store <4 x i32> %i.rl, ptr %i.rr, align 4, !tbaa !96
  store <4 x i32> %i.rm, ptr %i.rs, align 4, !tbaa !96
  %i.rt = shl nuw <4 x i32> %i.rl, splat (i32 1)
  %i.ru = shl nuw <4 x i32> %i.rm, splat (i32 1)
  %i.rv = xor <4 x i32> %i.rl, splat (i32 -1)
  %i.rw = xor <4 x i32> %i.rm, splat (i32 -1)
  %i.rx = shl nuw <4 x i32> %i.rv, splat (i32 1)
  %i.ry = shl nuw <4 x i32> %i.rw, splat (i32 1)
  %i.rz = or disjoint <4 x i32> %i.rx, splat (i32 1)
  %i.sa = or disjoint <4 x i32> %i.ry, splat (i32 1)
  %i.sb = icmp slt <4 x i32> %i.rl, zeroinitializer
  %i.sc = icmp slt <4 x i32> %i.rm, zeroinitializer
  %i.sd = select <4 x i1> %i.sb, <4 x i32> %i.rz, <4 x i32> %i.rt
  %i.se = select <4 x i1> %i.sc, <4 x i32> %i.sa, <4 x i32> %i.ru
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %i.rd, i64 %index654 ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 16
  store <4 x i32> %i.sd, ptr %i.sf, align 4, !tbaa !96
  store <4 x i32> %i.se, ptr %i.sg, align 4, !tbaa !96
  %index.next660 = add nuw i64 %index654, 8       ; 2 uses
  %i.sh = icmp eq i64 %index.next660, %n.vec652
  br i1 %i.sh, label %middle.block661, label %vector.body653, !llvm.loop !655

middle.block661:                                  ; preds = %vector.body653
  %bin.rdx = add <4 x i32> %i.rq, %i.rp
  %i.si = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n662, label %._crit_edge.i217, label %.lr.ph.i221.preheader732

.lr.ph.i221.preheader732:                         ; preds = %vector.memcheck639, %.lr.ph.i221.preheader, %middle.block661
  %indvars.iv.i223.ph = phi i64 [ 0, %vector.memcheck639 ], [ 0, %.lr.ph.i221.preheader ], [ %n.vec652, %middle.block661 ]
  %.sroa.3.015.i224.ph = phi i32 [ 0, %vector.memcheck639 ], [ 0, %.lr.ph.i221.preheader ], [ %i.si, %middle.block661 ]
  br label %.lr.ph.i221

._crit_edge.i217:                                 ; preds = %.lr.ph.i221, %middle.block661, %._crit_edge417.thread
  %i.sj = phi ptr [ %i.pk, %._crit_edge417.thread ], [ %i.rd, %middle.block661 ], [ %i.rd, %.lr.ph.i221 ]
  %.sroa.3.0.lcssa.i218 = phi i32 [ 0, %._crit_edge417.thread ], [ %i.si, %middle.block661 ], [ %i.ss, %.lr.ph.i221 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  invoke void @_ZN5draco21ShannonEntropyTracker4PeekEPKji(ptr dead_on_unwind nonnull writable sret(%"struct.draco::ShannonEntropyTracker::EntropyData") align 8 %6, ptr noundef nonnull align 8 dereferenceable(48) %i.dy, ptr noundef %i.sj, i32 noundef %4)
          to label %.noexc229 unwind label %bb.ck

.noexc229:                                        ; preds = %._crit_edge.i217
  %i.sk = invoke noundef i64 @_ZN5draco21ShannonEntropyTracker19GetNumberOfDataBitsERKNS0_11EntropyDataE(ptr noundef nonnull align 8 dereferenceable(20) %6)
          to label %.noexc230 unwind label %bb.ck

.noexc230:                                        ; preds = %.noexc229
  %i.sl = invoke noundef i64 @_ZN5draco21ShannonEntropyTracker24GetNumberOfRAnsTableBitsERKNS0_11EntropyDataE(ptr noundef nonnull align 8 dereferenceable(20) %6)
          to label %bb.bb unwind label %bb.ck

.lr.ph.i221:                                      ; preds = %.lr.ph.i221.preheader732, %.lr.ph.i221
  %indvars.iv.i223 = phi i64 [ %indvars.iv.next.i226, %.lr.ph.i221 ], [ %indvars.iv.i223.ph, %.lr.ph.i221.preheader732 ] ; 5 uses
  %.sroa.3.015.i224 = phi i32 [ %i.ss, %.lr.ph.i221 ], [ %.sroa.3.015.i224.ph, %.lr.ph.i221.preheader732 ]
  %i.sm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0344.0, i64 %indvars.iv.i223
  %i.sn = load i32, ptr %i.sm, align 4, !tbaa !96
  %i.so = getelementptr inbounds nuw [4 x i8], ptr %i.me, i64 %indvars.iv.i223
  %i.sp = load i32, ptr %i.so, align 4, !tbaa !96
  %i.sq = sub nsw i32 %i.sn, %i.sp                ; 5 uses
  %i.sr = call i32 @llvm.abs.i32(i32 %i.sq, i1 true)
  %i.ss = add nuw nsw i32 %i.sr, %.sroa.3.015.i224 ; 2 uses
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0335.0, i64 %indvars.iv.i223
  store i32 %i.sq, ptr %i.st, align 4, !tbaa !96
  %i.su = shl nuw i32 %i.sq, 1
  %i.sv = xor i32 %i.sq, -1
  %i.sw = shl nuw i32 %i.sv, 1
  %i.sx = or disjoint i32 %i.sw, 1
  %i.sy = icmp slt i32 %i.sq, 0
  %.0.i.i225 = select i1 %i.sy, i32 %i.sx, i32 %i.su
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %i.rd, i64 %indvars.iv.i223
  store i32 %.0.i.i225, ptr %i.sz, align 4, !tbaa !96
  %indvars.iv.next.i226 = add nuw nsw i64 %indvars.iv.i223, 1 ; 2 uses
  %exitcond.not.i227 = icmp eq i64 %indvars.iv.next.i226, %wide.trip.count.i187
  br i1 %exitcond.not.i227, label %._crit_edge.i217, label %.lr.ph.i221, !llvm.loop !656

.lr.ph416:                                        ; preds = %.lr.ph416.preheader, %.lr.ph416
  %indvars.iv477 = phi i64 [ %indvars.iv.next478.1, %.lr.ph416 ], [ 0, %.lr.ph416.preheader ] ; 3 uses
  %niter774 = phi i64 [ %niter774.next.1, %.lr.ph416 ], [ 0, %.lr.ph416.preheader ]
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0344.0, i64 %indvars.iv477 ; 2 uses
  %i.tb = load i32, ptr %i.ta, align 4, !tbaa !96
  %i.tc = sdiv i32 %i.tb, %.0131419
  store i32 %i.tc, ptr %i.ta, align 4, !tbaa !96
  %i.td = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0344.0, i64 %indvars.iv477
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 4 ; 2 uses
  %i.tf = load i32, ptr %i.te, align 4, !tbaa !96
  %i.tg = sdiv i32 %i.tf, %.0131419
  store i32 %i.tg, ptr %i.te, align 4, !tbaa !96
  %indvars.iv.next478.1 = add nuw nsw i64 %indvars.iv477, 2 ; 2 uses
  %niter774.next.1 = add i64 %niter774, 2         ; 2 uses
  %niter774.ncmp.1 = icmp eq i64 %niter774.next.1, %unroll_iter773
  br i1 %niter774.ncmp.1, label %.lr.ph.i221.preheader.unr-lcssa, label %.lr.ph416, !llvm.loop !657

bb.bb:                                            ; preds = %.noexc230
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.th = load i64, ptr %i.pf, align 8, !tbaa !128
  %i.ti = load i64, ptr %i.pg, align 8, !tbaa !128 ; 2 uses
  %i.tj = trunc i64 %i.ti to i32
  %i.tk = trunc i64 %i.th to i32
  %i.tl = add i32 %.0131419, %i.tk
  %i.tm = invoke noundef double @_ZN5draco27ComputeBinaryShannonEntropyEjj(i32 noundef %i.tj, i32 noundef %i.tl)
          to label %bb.bc unwind label %.loopexit369

bb.bc:                                            ; preds = %bb.bb
  %i.tn = add nsw i64 %i.sl, %i.sk
  %.sroa.0.0.extract.trunc = trunc i64 %i.tn to i32
  %i.to = sitofp i64 %i.ti to double
  %i.tp = fmul double %i.tm, %i.to
  %i.tq = call double @llvm.ceil.f64(double %i.tp)
  %i.tr = fptosi double %i.tq to i64
  %i.ts = trunc i64 %i.tr to i32
  %i.tt = add i32 %i.ts, %.sroa.0.0.extract.trunc ; 3 uses
  %i.tu = load i32, ptr %9, align 8, !tbaa !677   ; 2 uses
  %i.tv = icmp slt i32 %i.tt, %i.tu
  br i1 %i.tv, label %_ZNK5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE5ErrorltERKS7_.exit.thread, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.tw = icmp sle i32 %i.tt, %i.tu
  %i.tx = load i32, ptr %i.ec, align 4
  %i.ty = icmp slt i32 %.sroa.3.0.lcssa.i218, %i.tx
  %or.cond361 = select i1 %i.tw, i1 %i.ty, i1 false
  br i1 %or.cond361, label %_ZNK5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE5ErrorltERKS7_.exit.thread, label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit238

_ZNK5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE5ErrorltERKS7_.exit.thread: ; preds = %bb.bd, %bb.bc
  %.sroa.13.0.insert.ext314 = zext nneg i32 %.sroa.3.0.lcssa.i218 to i64
  %.sroa.13.0.insert.shift315 = shl nuw nsw i64 %.sroa.13.0.insert.ext314, 32
  %.sroa.0.0.insert.ext308 = zext i32 %i.tt to i64
  %.sroa.0.0.insert.insert310 = or disjoint i64 %.sroa.13.0.insert.shift315, %.sroa.0.0.insert.ext308
  store i64 %.sroa.0.0.insert.insert310, ptr %9, align 8
  store i8 %.1128, ptr %i.dz, align 8, !tbaa !673
  store i32 %.0131419, ptr %i.dx, align 4, !tbaa !674
  %i.tz = load ptr, ptr %i.eg, align 8, !tbaa !102
  %i.ua = load ptr, ptr %i.ea, align 8, !tbaa !101 ; 8 uses
  %i.ub = ptrtoint ptr %i.tz to i64
  %i.uc = ptrtoint ptr %i.ua to i64               ; 2 uses
  %i.ud = sub i64 %i.ub, %i.uc                    ; 2 uses
  %i.ue = icmp ugt i64 %i.ef, %i.ud
  br i1 %i.ue, label %bb.be, label %bb.bj

bb.be:                                            ; preds = %_ZNK5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE5ErrorltERKS7_.exit.thread
  br i1 %i.ek, label %.invoke, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i

.invoke:                                          ; preds = %bb.bu, %bb.be
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #20
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable
end_hunk_3
begin_hunk_4_@_ZN5draco56MeshPredictionSchemeConstrainedMultiParallelogramEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEE:bb.a
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit.i294

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit.i294: ; preds = %bb.cj, %bb.ci, %bb.ch
  %i.vw = getelementptr inbounds i8, ptr %i.vr, i64 %i.vs
  store ptr %i.vw, ptr %i.eq, align 8, !tbaa !149
  br label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit238

bb.ck:                                            ; preds = %.noexc230, %.noexc229, %._crit_edge.i217
  %i.vx = landingpad { ptr, i32 }
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
  %i.vy = phi i8 [ %.pre.i.i, %bb.cl ], [ %i.vz, %bb.cn ]
  %.021.idx.i.i = phi i64 [ -1, %bb.cl ], [ %.021.add.i.i, %bb.cn ] ; 3 uses
  %.021.add.i.i = add nsw i64 %.021.idx.i.i, -1   ; 4 uses
  %.ptr.i.i = getelementptr inbounds i8, ptr %i.pc, i64 %.021.add.i.i
  %i.vz = load i8, ptr %.ptr.i.i, align 1, !tbaa !239, !range !61, !noundef !62 ; 2 uses
  %i.wa = icmp samesign ult i8 %i.vz, %i.vy
  br i1 %i.wa, label %.preheader.i.i.preheader, label %bb.cn

.preheader.i.i.preheader:                         ; preds = %_ZSt9__reverseIPbEvT_S1_St26random_access_iterator_tag.exit.i.i
  %.ptr.i.i.le = getelementptr inbounds i8, ptr %i.pc, i64 %.021.add.i.i
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.0.i.i240 = phi ptr [ %i.wb, %.preheader.i.i ], [ %i.pc, %.preheader.i.i.preheader ]
  %i.wb = getelementptr inbounds i8, ptr %.0.i.i240, i64 -1 ; 3 uses
  %i.wc = load i8, ptr %i.wb, align 1, !tbaa !239, !range !61, !noundef !62
  %.not54.i.i = icmp eq i8 %i.wc, 0
  br i1 %.not54.i.i, label %.preheader.i.i, label %bb.cm, !llvm.loop !4

bb.cm:                                            ; preds = %.preheader.i.i
  store i8 1, ptr %.ptr.i.i.le, align 1, !tbaa !239
  store i8 0, ptr %i.wb, align 1, !tbaa !239
  %.not.i.i241 = icmp eq i64 %.021.idx.i.i, -1
  br i1 %.not.i.i241, label %_ZSt16next_permutationIPbEbT_S1_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.cm
  %.021.ptr.le.i.i = getelementptr inbounds i8, ptr %i.pc, i64 %.021.idx.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.preheader.i
  %.014.i.i.i = phi ptr [ %.0.i.i.i, %.lr.ph.i.i.i ], [ %.ptr35.i.i, %.lr.ph.i.i.preheader.i ] ; 3 uses
  %.0913.i.i.i = phi ptr [ %i.wf, %.lr.ph.i.i.i ], [ %.021.ptr.le.i.i, %.lr.ph.i.i.preheader.i ] ; 3 uses
  %i.wd = load i8, ptr %.0913.i.i.i, align 1, !tbaa !239, !range !61, !noundef !62
  %i.we = load i8, ptr %.014.i.i.i, align 1, !tbaa !239, !range !61, !noundef !62
  store i8 %i.we, ptr %.0913.i.i.i, align 1, !tbaa !239
  store i8 %i.wd, ptr %.014.i.i.i, align 1, !tbaa !239
  %i.wf = getelementptr inbounds nuw i8, ptr %.0913.i.i.i, i64 1 ; 2 uses
  %.0.i.i.i = getelementptr inbounds i8, ptr %.014.i.i.i, i64 -1 ; 2 uses
  %i.wg = icmp ult ptr %i.wf, %.0.i.i.i
  br i1 %i.wg, label %.lr.ph.i.i.i, label %_ZSt16next_permutationIPbEbT_S1_.exit, !llvm.loop !5

bb.cn:                                            ; preds = %_ZSt9__reverseIPbEvT_S1_St26random_access_iterator_tag.exit.i.i
  %i.wh = icmp eq i64 %.021.add.i.i, %i.ph
  br i1 %i.wh, label %.lr.ph.i28.i.i, label %_ZSt9__reverseIPbEvT_S1_St26random_access_iterator_tag.exit.i.i, !llvm.loop !6

.lr.ph.i28.i.i:                                   ; preds = %bb.cn, %.lr.ph.i28.i.i
  %.014.i29.i.i = phi ptr [ %.0.i31.i.i, %.lr.ph.i28.i.i ], [ %.ptr35.i.i, %bb.cn ] ; 3 uses
  %.0913.i30.i.i = phi ptr [ %i.wk, %.lr.ph.i28.i.i ], [ %i.b, %bb.cn ] ; 3 uses
  %i.wi = load i8, ptr %.0913.i30.i.i, align 1, !tbaa !239, !range !61, !noundef !62
  %i.wj = load i8, ptr %.014.i29.i.i, align 1, !tbaa !239, !range !61, !noundef !62
  store i8 %i.wj, ptr %.0913.i30.i.i, align 1, !tbaa !239
  store i8 %i.wi, ptr %.014.i29.i.i, align 1, !tbaa !239
  %i.wk = getelementptr inbounds nuw i8, ptr %.0913.i30.i.i, i64 1 ; 2 uses
  %.0.i31.i.i = getelementptr inbounds i8, ptr %.014.i29.i.i, i64 -1 ; 2 uses
  %i.wl = icmp ult ptr %i.wk, %.0.i31.i.i
  br i1 %i.wl, label %.lr.ph.i28.i.i, label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit, !llvm.loop !5

_ZSt16next_permutationIPbEbT_S1_.exit:            ; preds = %.lr.ph.i.i.i, %bb.cm
  br label %.preheader368, !llvm.loop !658

_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit: ; preds = %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit238, %.lr.ph.i28.i.i
  %i.wm = add nuw nsw i32 %.0131419, 1
  %exitcond484.not = icmp eq i64 %i.pj, %i.pb
  br i1 %exitcond484.not, label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit._crit_edge, label %.lr.ph.preheader.i.i.i, !llvm.loop !659

bb.co:                                            ; preds = %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit._crit_edge
  %i.wn = load i32, ptr %i.dx, align 4, !tbaa !674
  %i.wo = sext i32 %i.wn to i64
  %i.wp = zext nneg i32 %.2148 to i64
  %i.wq = getelementptr [8 x i8], ptr %i.c, i64 %i.wp
  %i.wr = getelementptr i8, ptr %i.wq, i64 -8     ; 2 uses
  %i.ws = load i64, ptr %i.wr, align 8, !tbaa !128
  %i.wt = add nsw i64 %i.ws, %i.wo
  store i64 %i.wt, ptr %i.wr, align 8, !tbaa !128
  br label %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit._crit_edge.thread

_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit._crit_edge.thread: ; preds = %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit.preheader, %bb.co, %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit._crit_edge
  %.pre503 = load ptr, ptr %i.cs, align 8, !tbaa !236 ; 6 uses
  br i1 %.not.i.i.i.i168, label %._crit_edge424, label %.lr.ph423

.lr.ph423:                                        ; preds = %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit._crit_edge.thread
  %.pre503637 = ptrtoaddr ptr %.pre503 to i64
  %i.wu = load ptr, ptr %i.eb, align 8, !tbaa !101 ; 5 uses
  %i.wv = ptrtoaddr ptr %i.wu to i64
  %i.ww = sub i64 %i.wv, %.pre503637
  %diff.check = icmp ugt i64 %i.ww, -32
  %or.cond731 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond731, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph423, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph423 ] ; 3 uses
  %i.wx = getelementptr inbounds nuw [4 x i8], ptr %i.wu, i64 %index ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wx, i64 16
  %wide.load = load <4 x i32>, ptr %i.wx, align 4, !tbaa !96 ; 3 uses
  %wide.load638 = load <4 x i32>, ptr %i.wy, align 4, !tbaa !96 ; 3 uses
  %i.wz = shl nuw <4 x i32> %wide.load, splat (i32 1)
  %i.xa = shl nuw <4 x i32> %wide.load638, splat (i32 1)
  %i.xb = xor <4 x i32> %wide.load, splat (i32 -1)
  %i.xc = xor <4 x i32> %wide.load638, splat (i32 -1)
  %i.xd = shl nuw <4 x i32> %i.xb, splat (i32 1)
  %i.xe = shl nuw <4 x i32> %i.xc, splat (i32 1)
  %i.xf = or disjoint <4 x i32> %i.xd, splat (i32 1)
  %i.xg = or disjoint <4 x i32> %i.xe, splat (i32 1)
  %i.xh = icmp slt <4 x i32> %wide.load, zeroinitializer
  %i.xi = icmp slt <4 x i32> %wide.load638, zeroinitializer
  %i.xj = select <4 x i1> %i.xh, <4 x i32> %i.xf, <4 x i32> %i.wz
  %i.xk = select <4 x i1> %i.xi, <4 x i32> %i.xg, <4 x i32> %i.xa
  %i.xl = getelementptr inbounds nuw [4 x i8], ptr %.pre503, i64 %index ; 2 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xl, i64 16
  store <4 x i32> %i.xj, ptr %i.xl, align 4, !tbaa !96
  store <4 x i32> %i.xk, ptr %i.xm, align 4, !tbaa !96
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.xn = icmp eq i64 %index.next, %n.vec
  br i1 %i.xn, label %middle.block, label %vector.body, !llvm.loop !660

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge424, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph423, %middle.block
  %indvars.iv485.ph = phi i64 [ 0, %.lr.ph423 ], [ %n.vec, %middle.block ] ; 5 uses
  br i1 %lcmp.mod776.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.xo = getelementptr inbounds nuw [4 x i8], ptr %i.wu, i64 %indvars.iv485.ph
  %i.xp = load i32, ptr %i.xo, align 4, !tbaa !96 ; 3 uses
  %i.xq = shl nuw i32 %i.xp, 1
  %i.xr = xor i32 %i.xp, -1
  %i.xs = shl nuw i32 %i.xr, 1
  %i.xt = or disjoint i32 %i.xs, 1
  %i.xu = icmp slt i32 %i.xp, 0
  %.0.i242.prol = select i1 %i.xu, i32 %i.xt, i32 %i.xq
  %i.xv = getelementptr inbounds nuw [4 x i8], ptr %.pre503, i64 %indvars.iv485.ph
  store i32 %.0.i242.prol, ptr %i.xv, align 4, !tbaa !96
  %indvars.iv.next486.prol = or disjoint i64 %indvars.iv485.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv485.unr = phi i64 [ %indvars.iv485.ph, %scalar.ph.preheader ], [ %indvars.iv.next486.prol, %scalar.ph.prol ]
  %i.xw = icmp eq i64 %indvars.iv485.ph, %i.gf
  br i1 %i.xw, label %._crit_edge424, label %scalar.ph

._crit_edge424:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNSt6vectorIiSaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiS1_EEvEEvT_S7_.exit._crit_edge.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  invoke void @_ZN5draco21ShannonEntropyTracker4PushEPKji(ptr dead_on_unwind nonnull writable sret(%"struct.draco::ShannonEntropyTracker::EntropyData") align 8 %10, ptr noundef nonnull align 8 dereferenceable(48) %i.dy, ptr noundef %.pre503, i32 noundef %4)
          to label %bb.cp unwind label %bb.da

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv485 = phi i64 [ %indvars.iv.next486.1, %scalar.ph ], [ %indvars.iv485.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.xx = getelementptr inbounds nuw [4 x i8], ptr %i.wu, i64 %indvars.iv485
  %i.xy = load i32, ptr %i.xx, align 4, !tbaa !96 ; 3 uses
  %i.xz = shl nuw i32 %i.xy, 1
  %i.ya = xor i32 %i.xy, -1
  %i.yb = shl nuw i32 %i.ya, 1
  %i.yc = or disjoint i32 %i.yb, 1
  %i.yd = icmp slt i32 %i.xy, 0
  %.0.i242 = select i1 %i.yd, i32 %i.yc, i32 %i.xz
  %i.ye = getelementptr inbounds nuw [4 x i8], ptr %.pre503, i64 %indvars.iv485
  store i32 %.0.i242, ptr %i.ye, align 4, !tbaa !96
  %indvars.iv.next486 = add nuw nsw i64 %indvars.iv485, 1 ; 2 uses
  %i.yf = getelementptr inbounds nuw [4 x i8], ptr %i.wu, i64 %indvars.iv.next486
  %i.yg = load i32, ptr %i.yf, align 4, !tbaa !96 ; 3 uses
  %i.yh = shl nuw i32 %i.yg, 1
  %i.yi = xor i32 %i.yg, -1
  %i.yj = shl nuw i32 %i.yi, 1
  %i.yk = or disjoint i32 %i.yj, 1
  %i.yl = icmp slt i32 %i.yg, 0
  %.0.i242.1 = select i1 %i.yl, i32 %i.yk, i32 %i.yh
  %i.ym = getelementptr inbounds nuw [4 x i8], ptr %.pre503, i64 %indvars.iv.next486
  store i32 %.0.i242.1, ptr %i.ym, align 4, !tbaa !96
  %indvars.iv.next486.1 = add nuw nsw i64 %indvars.iv485, 2 ; 2 uses
  %exitcond490.not.1 = icmp eq i64 %indvars.iv.next486.1, %12
  br i1 %exitcond490.not.1, label %._crit_edge424, label %scalar.ph, !llvm.loop !661

bb.cp:                                            ; preds = %._crit_edge424
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br i1 %i.oh, label %.lr.ph427, label %._crit_edge428

.lr.ph427:                                        ; preds = %bb.cp
  %i.yn = zext nneg i32 %.2148 to i64
  %i.yo = getelementptr [40 x i8], ptr %0, i64 %i.yn ; 4 uses
  %i.yp = getelementptr i8, ptr %i.yo, i64 72     ; 3 uses
  %i.yq = getelementptr i8, ptr %i.yo, i64 88
  %.sroa.2.0..sroa_idx.i.i248 = getelementptr i8, ptr %i.yo, i64 80 ; 5 uses
  %i.yr = getelementptr i8, ptr %i.yo, i64 56
  br label %bb.db

._crit_edge428:                                   ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit, %bb.cp
  %i.ys = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ma
  %i.yt = load i32, ptr %i.e, align 8, !tbaa !203
  %i.yu = icmp sgt i32 %i.yt, 0
  br i1 %i.yu, label %.lr.ph.i.lr.ph.i, label %_ZNK5draco37PredictionSchemeWrapEncodingTransformIiiE17ComputeCorrectionEPKiS3_Pi.exit

.lr.ph.i.lr.ph.i:                                 ; preds = %._crit_edge428
  %i.yv = load ptr, ptr %i.ea, align 8, !tbaa !101
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.cz, %.lr.ph.i.lr.ph.i
  %indvars.iv.i244 = phi i64 [ 0, %.lr.ph.i.lr.ph.i ], [ %indvars.iv.next.i245, %bb.cz ] ; 4 uses
  %.01516.i = phi ptr [ %i.yv, %.lr.ph.i.lr.ph.i ], [ %i.yw, %bb.cz ]
  %i.yw = load ptr, ptr %i.f, align 8             ; 4 uses
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cv, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.cv ] ; 4 uses
  %i.yx = getelementptr inbounds nuw [4 x i8], ptr %.01516.i, i64 %indvars.iv.i.i
  %i.yy = load i32, ptr %i.yx, align 4, !tbaa !96 ; 3 uses
  %i.yz = load i32, ptr %i.ev, align 8, !tbaa !202 ; 2 uses
  %i.za = icmp sgt i32 %i.yy, %i.yz
  br i1 %i.za, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.zb = getelementptr inbounds nuw [4 x i8], ptr %i.yw, i64 %indvars.iv.i.i
  store i32 %i.yz, ptr %i.zb, align 4, !tbaa !96
  br label %bb.cv

bb.cs:                                            ; preds = %bb.cq
  %i.zc = load i32, ptr %i.ew, align 4, !tbaa !201 ; 2 uses
  %i.zd = icmp slt i32 %i.yy, %i.zc
  %i.ze = getelementptr inbounds nuw [4 x i8], ptr %i.yw, i64 %indvars.iv.i.i ; 2 uses
  br i1 %i.zd, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  store i32 %i.zc, ptr %i.ze, align 4, !tbaa !96
  br label %bb.cv

bb.cu:                                            ; preds = %bb.cs
  store i32 %i.yy, ptr %i.ze, align 4, !tbaa !96
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct, %bb.cr
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.zf = load i32, ptr %i.e, align 8, !tbaa !203
  %i.zg = sext i32 %i.zf to i64
  %i.zh = icmp slt i64 %indvars.iv.next.i.i, %i.zg
  br i1 %i.zh, label %bb.cq, label %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.loopexit.i, !llvm.loop !2

_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.loopexit.i: ; preds = %bb.cv
  %i.zi = getelementptr inbounds nuw [4 x i8], ptr %i.me, i64 %indvars.iv.i244
  %i.zj = load i32, ptr %i.zi, align 4, !tbaa !96
  %i.zk = getelementptr inbounds nuw [4 x i8], ptr %i.yw, i64 %indvars.iv.i244
  %i.zl = load i32, ptr %i.zk, align 4, !tbaa !96
  %i.zm = sub nsw i32 %i.zj, %i.zl                ; 5 uses
  %i.zn = getelementptr inbounds nuw [4 x i8], ptr %i.ys, i64 %indvars.iv.i244 ; 2 uses
  store i32 %i.zm, ptr %i.zn, align 4, !tbaa !96
  %i.zo = load i32, ptr %i.ex, align 4, !tbaa !206
  %i.zp = icmp slt i32 %i.zm, %i.zo
  br i1 %i.zp, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.loopexit.i
  %i.zq = load i32, ptr %i.ez, align 4, !tbaa !204
  %i.zr = add nsw i32 %i.zq, %i.zm
  br label %.sink.split.i

bb.cx:                                            ; preds = %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.loopexit.i
  %i.zs = load i32, ptr %i.ey, align 8, !tbaa !205
  %i.zt = icmp sgt i32 %i.zm, %i.zs
  br i1 %i.zt, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.zu = load i32, ptr %i.ez, align 4, !tbaa !204
  %i.zv = sub nsw i32 %i.zm, %i.zu
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.cy, %bb.cw
  %.sink.i = phi i32 [ %i.zv, %bb.cy ], [ %i.zr, %bb.cw ]
  store i32 %.sink.i, ptr %i.zn, align 4, !tbaa !96
  br label %bb.cz

bb.cz:                                            ; preds = %.sink.split.i, %bb.cx
  %indvars.iv.next.i245 = add nuw nsw i64 %indvars.iv.i244, 1 ; 2 uses
  %i.zw = load i32, ptr %i.e, align 8, !tbaa !203
  %i.zx = sext i32 %i.zw to i64
  %i.zy = icmp slt i64 %indvars.iv.next.i245, %i.zx
  br i1 %i.zy, label %.lr.ph.i.i, label %_ZNK5draco37PredictionSchemeWrapEncodingTransformIiiE17ComputeCorrectionEPKiS3_Pi.exit, !llvm.loop !3

bb.da:                                            ; preds = %._crit_edge424
  %i.zz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %bb.dl

bb.db:                                            ; preds = %.lr.ph427, %_ZNSt6vectorIbSaIbEE9push_backEb.exit
  %.0120425 = phi i32 [ 0, %.lr.ph427 ], [ %i.aax, %_ZNSt6vectorIbSaIbEE9push_backEb.exit ] ; 2 uses
  %i.aaa = load i8, ptr %i.dz, align 8, !tbaa !673
  %i.aab = zext i8 %i.aaa to i32
  %i.aac = shl nuw i32 1, %.0120425
  %i.aad = and i32 %i.aac, %i.aab
  %i.aae = icmp eq i32 %i.aad, 0                  ; 2 uses
  %i.aaf = load ptr, ptr %i.yp, align 8, !tbaa !174 ; 7 uses
  %i.aag = load ptr, ptr %i.yq, align 8, !tbaa !178
  %.not.i = icmp eq ptr %i.aaf, %i.aag            ; 2 uses
  %.sroa.2.0.copyload.i11.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i248, align 8 ; 7 uses
  br i1 %i.aae, label %bb.dc, label %bb.dg

bb.dc:                                            ; preds = %bb.db
  br i1 %.not.i, label %.invoke612, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.aah = add i32 %.sroa.2.0.copyload.i11.i, 1
  store i32 %i.aah, ptr %.sroa.2.0..sroa_idx.i.i248, align 8, !tbaa !175
  %i.aai = icmp eq i32 %.sroa.2.0.copyload.i11.i, 63
  br i1 %i.aai, label %bb.de, label %_ZNSt13_Bit_iteratorppEi.exit.i

bb.de:                                            ; preds = %bb.dd
  store i32 0, ptr %.sroa.2.0..sroa_idx.i.i248, align 8, !tbaa !175
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aaf, i64 8
  store ptr %i.aaj, ptr %i.yp, align 8, !tbaa !174
  br label %_ZNSt13_Bit_iteratorppEi.exit.i

_ZNSt13_Bit_iteratorppEi.exit.i:                  ; preds = %bb.de, %bb.dd
  %i.aak = zext nneg i32 %.sroa.2.0.copyload.i11.i to i64
  %i.aal = shl nuw i64 1, %i.aak
  %i.aam = load i64, ptr %i.aaf, align 8, !tbaa !128
  %i.aan = or i64 %i.aam, %i.aal
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit.sink.split

bb.df:                                            ; preds = %.invoke612
  %i.aao = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.dg:                                            ; preds = %bb.db
  br i1 %.not.i, label %.invoke612, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.aap = add i32 %.sroa.2.0.copyload.i11.i, 1
  store i32 %i.aap, ptr %.sroa.2.0..sroa_idx.i.i248, align 8, !tbaa !175
  %i.aaq = icmp eq i32 %.sroa.2.0.copyload.i11.i, 63
  br i1 %i.aaq, label %bb.di, label %_ZNSt13_Bit_iteratorppEi.exit.i250

bb.di:                                            ; preds = %bb.dh
  store i32 0, ptr %.sroa.2.0..sroa_idx.i.i248, align 8, !tbaa !175
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aaf, i64 8
  store ptr %i.aar, ptr %i.yp, align 8, !tbaa !174
  br label %_ZNSt13_Bit_iteratorppEi.exit.i250

_ZNSt13_Bit_iteratorppEi.exit.i250:               ; preds = %bb.di, %bb.dh
  %i.aas = zext nneg i32 %.sroa.2.0.copyload.i11.i to i64
  %i.aat = shl nuw i64 1, %i.aas
  %i.aau = xor i64 %i.aat, -1
  %i.aav = load i64, ptr %i.aaf, align 8, !tbaa !128
  %i.aaw = and i64 %i.aav, %i.aau
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit.sink.split

.invoke612:                                       ; preds = %bb.dc, %bb.dg
  invoke void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %i.yr, ptr %i.aaf, i32 %.sroa.2.0.copyload.i11.i, i1 noundef zeroext %i.aae)
          to label %_ZNSt6vectorIbSaIbEE9push_backEb.exit unwind label %bb.df

_ZNSt6vectorIbSaIbEE9push_backEb.exit.sink.split: ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i, %_ZNSt13_Bit_iteratorppEi.exit.i250
  %.sink = phi i64 [ %i.aaw, %_ZNSt13_Bit_iteratorppEi.exit.i250 ], [ %i.aan, %_ZNSt13_Bit_iteratorppEi.exit.i ]
  store i64 %.sink, ptr %i.aaf, align 8, !tbaa !128
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

_ZNSt6vectorIbSaIbEE9push_backEb.exit:            ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit.sink.split, %.invoke612
  %i.aax = add nuw nsw i32 %.0120425, 1           ; 2 uses
  %exitcond491.not = icmp eq i32 %i.aax, %.2148
  br i1 %exitcond491.not, label %._crit_edge428, label %bb.db, !llvm.loop !662

_ZNK5draco37PredictionSchemeWrapEncodingTransformIiiE17ComputeCorrectionEPKiS3_Pi.exit: ; preds = %bb.cz, %._crit_edge428
  %i.aay = load ptr, ptr %i.eb, align 8, !tbaa !101 ; 3 uses
  %.not.i.i.i.i253 = icmp eq ptr %i.aay, null
  br i1 %.not.i.i.i.i253, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %bb.dj

bb.dj:                                            ; preds = %_ZNK5draco37PredictionSchemeWrapEncodingTransformIiiE17ComputeCorrectionEPKiS3_Pi.exit
  %i.aaz = load ptr, ptr %i.ep, align 8, !tbaa !102
  %i.aba = ptrtoint ptr %i.aaz to i64
  %i.abb = ptrtoint ptr %i.aay to i64
  %i.abc = sub i64 %i.aba, %i.abb
  call void @_ZdlPvm(ptr noundef nonnull %i.aay, i64 noundef %i.abc) #19
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

end_hunk_4
begin_hunk_5_@_ZNK5draco17GeometryAttribute17ConvertTypedValueIfiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_:bb.a
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
  br i1 %.not.not, label %bb.e, label %.critedge, !llvm.loop !805

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
  br i1 %i.u, label %.lr.ph51, label %.loopexit, !llvm.loop !806

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
  br i1 %.not.us.not, label %bb.b, label %.critedge, !llvm.loop !806

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %i.s, label %.lr.ph44, label %.loopexit

bb.e:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %.0173443, i64 8 ; 2 uses
  %i.ah = icmp ugt ptr %i.o, %i.ag
  br i1 %i.ah, label %.lr.ph44, label %.loopexit, !llvm.loop !806

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
  br i1 %.not.not, label %bb.e, label %.critedge, !llvm.loop !806

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
end_hunk_5
