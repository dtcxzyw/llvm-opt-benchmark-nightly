Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/matmul_layer?download=true
inline.NumInlined: 937
inline.NumDeleted: 415
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN2cv3dnn12MatMulHelper7computeEbbNS_8MatShapeES2_S2_:bb.a
  br i1 %i.bl, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bm = sub nuw i64 %i.bc, %i.bk
  call void @_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.bf, i64 noundef %i.bm, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre = load i64, ptr %i.bd, align 8, !tbaa !88
  br label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit

bb.m:                                             ; preds = %bb.k
  %i.bn = icmp ult i64 %i.bc, %i.bk
  br i1 %i.bn, label %bb.n, label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit

bb.n:                                             ; preds = %bb.m
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bc ; 2 uses
  %.not.i.i = icmp eq ptr %i.bf, %i.bo
  br i1 %.not.i.i, label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.n
  store ptr %i.bo, ptr %i.be, align 8, !tbaa !87
  br label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit

_ZNSt6vectorImSaImEE6resizeEmRKm.exit:            ; preds = %bb.l, %bb.m, %bb.n, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i
  %i.bp = phi i64 [ %.pre, %bb.l ], [ %i.bc, %bb.m ], [ %i.bc, %bb.n ], [ %i.bc, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i ] ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i64 0, ptr %i.b, align 8, !tbaa !84
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !87 ; 3 uses
  %i.bt = load ptr, ptr %i.bq, align 8, !tbaa !85 ; 2 uses
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = ashr exact i64 %i.bw, 3                 ; 3 uses
  %i.by = icmp ugt i64 %i.bp, %i.bx
  br i1 %i.by, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEmRKm.exit
  %i.bz = sub nuw i64 %i.bp, %i.bx
  call void @_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, ptr %i.bs, i64 noundef %i.bz, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.pre247.a = load i64, ptr %i.bd, align 8, !tbaa !88
  br label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit100

bb.p:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEmRKm.exit
  %i.ca = icmp ult i64 %i.bp, %i.bx
  br i1 %i.ca, label %bb.q, label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit100

bb.q:                                             ; preds = %bb.p
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bp ; 2 uses
  %.not.i.i98 = icmp eq ptr %i.bs, %i.cb
  br i1 %.not.i.i98, label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit100, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i99

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i99:      ; preds = %bb.q
  store ptr %i.cb, ptr %i.br, align 8, !tbaa !87
  br label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit100

_ZNSt6vectorImSaImEE6resizeEmRKm.exit100:         ; preds = %bb.o, %bb.p, %bb.q, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i99
  %i.cc = phi i64 [ %.pre247.a, %bb.o ], [ %i.bp, %bb.p ], [ %i.bp, %bb.q ], [ %i.bp, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i99 ] ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i64 0, ptr %i.c, align 8, !tbaa !84
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !87 ; 3 uses
  %i.cg = load ptr, ptr %i.cd, align 8, !tbaa !85 ; 2 uses
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = ashr exact i64 %i.cj, 3                 ; 3 uses
  %i.cl = icmp ugt i64 %i.cc, %i.ck
  br i1 %i.cl, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEmRKm.exit100
  %i.cm = sub nuw i64 %i.cc, %i.ck
  call void @_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm(ptr noundef nonnull align 8 dereferenceable(24) %i.cd, ptr %i.cf, i64 noundef %i.cm, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %.pre248.a = load i64, ptr %i.bd, align 8, !tbaa !88
  br label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit103

bb.s:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEmRKm.exit100
  %i.cn = icmp ult i64 %i.cc, %i.ck
  br i1 %i.cn, label %bb.t, label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit103

bb.t:                                             ; preds = %bb.s
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.cc ; 2 uses
  %.not.i.i101 = icmp eq ptr %i.cf, %i.co
  br i1 %.not.i.i101, label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit103, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i102

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i102:     ; preds = %bb.t
  store ptr %i.co, ptr %i.ce, align 8, !tbaa !87
  br label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit103

_ZNSt6vectorImSaImEE6resizeEmRKm.exit103:         ; preds = %bb.r, %bb.s, %bb.t, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i102
  %i.cp = phi i64 [ %.pre248.a, %bb.r ], [ %i.cc, %bb.s ], [ %i.cc, %bb.t ], [ %i.cc, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i102 ] ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store i64 0, ptr %i.d, align 8, !tbaa !84
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !87 ; 3 uses
  %i.ct = load ptr, ptr %i.cq, align 8, !tbaa !85 ; 2 uses
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = ashr exact i64 %i.cw, 3                 ; 3 uses
  %i.cy = icmp ugt i64 %i.cp, %i.cx
  br i1 %i.cy, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEmRKm.exit103
  %i.cz = sub nuw i64 %i.cp, %i.cx
  call void @_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm(ptr noundef nonnull align 8 dereferenceable(24) %i.cq, ptr %i.cs, i64 noundef %i.cz, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %.pre249 = load i64, ptr %i.bd, align 8, !tbaa !88
  br label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit106

bb.v:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEmRKm.exit103
  %i.da = icmp ult i64 %i.cp, %i.cx
  br i1 %i.da, label %bb.w, label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit106

bb.w:                                             ; preds = %bb.v
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.cp ; 2 uses
  %.not.i.i104 = icmp eq ptr %i.cs, %i.db
  br i1 %.not.i.i104, label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit106, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i105

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i105:     ; preds = %bb.w
  store ptr %i.db, ptr %i.cr, align 8, !tbaa !87
  br label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit106

_ZNSt6vectorImSaImEE6resizeEmRKm.exit106:         ; preds = %bb.u, %bb.v, %bb.w, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i105
  %i.dc = phi i64 [ %.pre249, %bb.u ], [ %i.cp, %bb.v ], [ %i.cp, %bb.w ], [ %i.cp, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i105 ] ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  store i64 0, ptr %i.e, align 8, !tbaa !84
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !87 ; 3 uses
  %i.dg = load ptr, ptr %i.dd, align 8, !tbaa !85 ; 2 uses
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = sub i64 %i.dh, %i.di
  %i.dk = ashr exact i64 %i.dj, 3                 ; 3 uses
  %i.dl = icmp ugt i64 %i.dc, %i.dk
  br i1 %i.dl, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEmRKm.exit106
  %i.dm = sub nuw i64 %i.dc, %i.dk
  call void @_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm(ptr noundef nonnull align 8 dereferenceable(24) %i.dd, ptr %i.df, i64 noundef %i.dm, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %.pre250 = load i64, ptr %i.bd, align 8, !tbaa !88
  br label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit109

bb.y:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEmRKm.exit106
  %i.dn = icmp ult i64 %i.dc, %i.dk
  br i1 %i.dn, label %bb.z, label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit109

bb.z:                                             ; preds = %bb.y
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.dc ; 2 uses
  %.not.i.i107 = icmp eq ptr %i.df, %i.do
  br i1 %.not.i.i107, label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit109, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i108

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i108:     ; preds = %bb.z
  store ptr %i.do, ptr %i.de, align 8, !tbaa !87
  br label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit109

_ZNSt6vectorImSaImEE6resizeEmRKm.exit109:         ; preds = %bb.x, %bb.y, %bb.z, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i108
  %i.dp = phi i64 [ %.pre250, %bb.x ], [ %i.dc, %bb.y ], [ %i.dc, %bb.z ], [ %i.dc, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i108 ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  store i64 0, ptr %i.f, align 8, !tbaa !84
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !87 ; 3 uses
  %i.dt = load ptr, ptr %i.dq, align 8, !tbaa !85 ; 2 uses
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = sub i64 %i.du, %i.dv
  %i.dx = ashr exact i64 %i.dw, 3                 ; 3 uses
  %i.dy = icmp ugt i64 %i.dp, %i.dx
  br i1 %i.dy, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZNSt6vectorImSaImEE6resizeEmRKm.exit109
  %i.dz = sub nuw i64 %i.dp, %i.dx
  call void @_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm(ptr noundef nonnull align 8 dereferenceable(24) %i.dq, ptr %i.ds, i64 noundef %i.dz, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  br label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit112

bb.ab:                                            ; preds = %_ZNSt6vectorImSaImEE6resizeEmRKm.exit109
  %i.ea = icmp ult i64 %i.dp, %i.dx
  br i1 %i.ea, label %bb.ac, label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit112

bb.ac:                                            ; preds = %bb.ab
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.dp ; 2 uses
  %.not.i.i110 = icmp eq ptr %i.ds, %i.eb
  br i1 %.not.i.i110, label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit112, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i111

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i111:     ; preds = %bb.ac
  store ptr %i.eb, ptr %i.dr, align 8, !tbaa !87
  br label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit112

_ZNSt6vectorImSaImEE6resizeEmRKm.exit112:         ; preds = %bb.aa, %bb.ab, %bb.ac, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  %i.ec = call fastcc noundef i64 @_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii(ptr noundef nonnull align 4 dereferenceable(52) %5, i32 noundef %i.bb, i32 noundef -1)
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  call void @_ZN2cv8MatShapeC1EmiNS_10DataLayoutE(ptr noundef nonnull align 4 dereferenceable(52) %20, i64 noundef %spec.select.i89, i32 noundef 1, i32 noundef 0)
  %i.ed = getelementptr inbounds nuw i8, ptr %20, i64 12 ; 4 uses
  %i.ee = sub nsw i64 %spec.select.i89, %spec.select.i
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %i.ee
  %i.eg = shl nuw nsw i64 %spec.select.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ef, ptr nonnull align 4 %i.r, i64 %i.eg, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20
  %i.eh = load i32, ptr %5, align 4, !tbaa !113
  %narrow.i113 = call i32 @llvm.smax.i32(i32 %i.eh, i32 0)
  %spec.select.i114 = zext nneg i32 %narrow.i113 to i64
  call void @_ZN2cv8MatShapeC1EmiNS_10DataLayoutE(ptr noundef nonnull align 4 dereferenceable(52) %21, i64 noundef %spec.select.i114, i32 noundef 1, i32 noundef 0)
  %i.ei = getelementptr inbounds nuw i8, ptr %21, i64 12 ; 3 uses
  %i.ej = sub nsw i64 %spec.select.i89, %spec.select.i87
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.ej
  %i.el = load i32, ptr %4, align 4, !tbaa !113
  %narrow.i115 = call i32 @llvm.smax.i32(i32 %i.el, i32 0)
  %spec.select.i116 = zext nneg i32 %narrow.i115 to i64
  %i.em = shl nuw nsw i64 %spec.select.i116, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ek, ptr nonnull align 4 %i.af, i64 %i.em, i1 false)
  %.not.i.i.i.i = icmp slt i32 %i.i, 1
  br i1 %.not.i.i.i.i, label %.preheader, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorImSaImEE6resizeEmRKm.exit112
  %i.en = shl nuw nsw i64 %spec.select.i89, 3     ; 5 uses
  %i.eo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.en) #18
          to label %.noexc unwind label %bb.ae    ; 14 uses

.noexc:                                           ; preds = %bb.ad
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.en
  %i.eq = add nsw i64 %i.en, -8                   ; 3 uses
  %i.er = lshr exact i64 %i.eq, 3
  %i.es = add nuw nsw i64 %i.er, 1                ; 2 uses
  %xtraiter = and i64 %i.es, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.noexc, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.06.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.et, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %i.eo, %.noexc ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.noexc ]
  store i64 1, ptr %.06.i.i.i.i.i.i.i.i.i.prol, align 8, !tbaa !84
  %i.et = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !203

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %.noexc
  %.06.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.eo, %.noexc ], [ %i.et, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.eu = icmp ult i64 %i.eq, 56
  br i1 %i.eu, label %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i = phi ptr [ %i.fc, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  store i64 1, ptr %.06.i.i.i.i.i.i.i.i.i, align 8, !tbaa !84
  %i.ev = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 8
  store i64 1, ptr %i.ev, align 8, !tbaa !84
  %i.ew = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 16
  store i64 1, ptr %i.ew, align 8, !tbaa !84
  %i.ex = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 24
  store i64 1, ptr %i.ex, align 8, !tbaa !84
  %i.ey = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 32
  store i64 1, ptr %i.ey, align 8, !tbaa !84
  %i.ez = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 40
  store i64 1, ptr %i.ez, align 8, !tbaa !84
  %i.fa = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 48
  store i64 1, ptr %i.fa, align 8, !tbaa !84
  %i.fb = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 56
  store i64 1, ptr %i.fb, align 8, !tbaa !84
  %i.fc = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.7 = icmp eq ptr %i.fc, %i.ep
  br i1 %.not.i.i.i.i.i.i.i.i.i.7, label %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !204

_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %spec.select.i89 ; 6 uses
  %i.fe = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.en) #18
          to label %.noexc123 unwind label %_ZNSt6vectorImSaImEED2Ev.exit180.thread ; 11 uses

.noexc123:                                        ; preds = %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.en
  %xtraiter331 = and i64 %i.es, 7                 ; 2 uses
  %lcmp.mod332.not = icmp eq i64 %xtraiter331, 0
  br i1 %lcmp.mod332.not, label %.lr.ph.i.i.i.i.i.i.i.i.i118.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i118.prol

.lr.ph.i.i.i.i.i.i.i.i.i118.prol:                 ; preds = %.noexc123, %.lr.ph.i.i.i.i.i.i.i.i.i118.prol
  %.06.i.i.i.i.i.i.i.i.i119.prol = phi ptr [ %i.fg, %.lr.ph.i.i.i.i.i.i.i.i.i118.prol ], [ %i.fe, %.noexc123 ] ; 2 uses
  %prol.iter333 = phi i64 [ %prol.iter333.next, %.lr.ph.i.i.i.i.i.i.i.i.i118.prol ], [ 0, %.noexc123 ]
  store i64 1, ptr %.06.i.i.i.i.i.i.i.i.i119.prol, align 8, !tbaa !84
  %i.fg = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i119.prol, i64 8 ; 2 uses
  %prol.iter333.next = add i64 %prol.iter333, 1   ; 2 uses
  %prol.iter333.cmp.not = icmp eq i64 %prol.iter333.next, %xtraiter331
  br i1 %prol.iter333.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i118.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i118.prol, !llvm.loop !205

.lr.ph.i.i.i.i.i.i.i.i.i118.prol.loopexit:        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i118.prol, %.noexc123
  %.06.i.i.i.i.i.i.i.i.i119.unr = phi ptr [ %i.fe, %.noexc123 ], [ %i.fg, %.lr.ph.i.i.i.i.i.i.i.i.i118.prol ]
  %i.fh = icmp ult i64 %i.eq, 56
  br i1 %i.fh, label %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit124, label %.lr.ph.i.i.i.i.i.i.i.i.i118

.lr.ph.i.i.i.i.i.i.i.i.i118:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i118.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i118
  %.06.i.i.i.i.i.i.i.i.i119 = phi ptr [ %i.fp, %.lr.ph.i.i.i.i.i.i.i.i.i118 ], [ %.06.i.i.i.i.i.i.i.i.i119.unr, %.lr.ph.i.i.i.i.i.i.i.i.i118.prol.loopexit ] ; 9 uses
  store i64 1, ptr %.06.i.i.i.i.i.i.i.i.i119, align 8, !tbaa !84
  %i.fi = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i119, i64 8
  store i64 1, ptr %i.fi, align 8, !tbaa !84
  %i.fj = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i119, i64 16
  store i64 1, ptr %i.fj, align 8, !tbaa !84
  %i.fk = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i119, i64 24
  store i64 1, ptr %i.fk, align 8, !tbaa !84
  %i.fl = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i119, i64 32
  store i64 1, ptr %i.fl, align 8, !tbaa !84
  %i.fm = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i119, i64 40
  store i64 1, ptr %i.fm, align 8, !tbaa !84
  %i.fn = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i119, i64 48
  store i64 1, ptr %i.fn, align 8, !tbaa !84
  %i.fo = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i119, i64 56
  store i64 1, ptr %i.fo, align 8, !tbaa !84
  %i.fp = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i119, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i120.7 = icmp eq ptr %i.fp, %i.ff
  br i1 %.not.i.i.i.i.i.i.i.i.i120.7, label %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit124, label %.lr.ph.i.i.i.i.i.i.i.i.i118, !llvm.loop !204

_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit124:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i118, %.lr.ph.i.i.i.i.i.i.i.i.i118.prol.loopexit
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %spec.select.i89
  %i.fr = ptrtoint ptr %i.fq to i64               ; 5 uses
  %.not326 = icmp eq i32 %i.i, 1
  br i1 %.not326, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit124
  %22 = load i32, ptr %20, align 4, !tbaa !113
  %.not294 = icmp sgt i32 %narrow.i88, %22
  %23 = zext i32 %i.bb to i64                     ; 4 uses
  br i1 %.not294, label %bb.af, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %24 = load i32, ptr %21, align 4
  %.not295 = icmp sgt i32 %narrow.i88, %24
  br i1 %.not295, label %.lr.ph.split.split, label %.lr.ph.split.split.us.preheader

.lr.ph.split.split.us.preheader:                  ; preds = %.lr.ph.split
  %25 = shl nuw nsw i64 %23, 3
  %26 = add nuw nsw i64 %25, 8                    ; 2 uses
  %scevgep = getelementptr i8, ptr %i.fe, i64 %26
  %load_initial = load i64, ptr %scevgep, align 8
  %scevgep326 = getelementptr i8, ptr %i.eo, i64 %26
  %load_initial327 = load i64, ptr %scevgep326, align 8
  br label %.lr.ph.a

.lr.ph.a:                                         ; preds = %.lr.ph.split.split.us.preheader, %.lr.ph.a
  %store_forwarded328 = phi i64 [ %load_initial327, %.lr.ph.split.split.us.preheader ], [ %30, %.lr.ph.a ]
  %store_forwarded = phi i64 [ %load_initial, %.lr.ph.split.split.us.preheader ], [ %34, %.lr.ph.a ]
  %indvars.iv.us = phi i64 [ %23, %.lr.ph.split.split.us.preheader ], [ %indvars.iv.next.us, %.lr.ph.a ] ; 5 uses
  %27 = add nuw nsw i64 %indvars.iv.us, 1         ; 2 uses
  %28 = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %27
  %i.fs = load i32, ptr %28, align 4, !tbaa !114
  %29 = sext i32 %i.fs to i64
  %30 = mul i64 %store_forwarded328, %29          ; 2 uses
  %31 = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv.us
  store i64 %30, ptr %31, align 8, !tbaa !84
  %32 = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %27
  %i.ft = load i32, ptr %32, align 4, !tbaa !114
  %33 = sext i32 %i.ft to i64
  %34 = mul i64 %store_forwarded, %33             ; 2 uses
  %35 = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %indvars.iv.us
  store i64 %34, ptr %35, align 8, !tbaa !84
  %indvars.iv.next.us = add nsw i64 %indvars.iv.us, -1
  %36 = trunc nuw i64 %indvars.iv.us to i32
  %.not298 = icmp sgt i32 %36, 0
  br i1 %.not298, label %.lr.ph.a, label %.preheader, !llvm.loop !206

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %37 = add nuw nsw i64 %23, 1                    ; 2 uses
  %38 = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %37
  %39 = load i64, ptr %38, align 8, !tbaa !84
  %40 = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %37
  %41 = load i32, ptr %40, align 4, !tbaa !114
  %42 = sext i32 %41 to i64
  %43 = mul i64 %39, %42
  %44 = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %23
  store i64 %43, ptr %44, align 8, !tbaa !84
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %.noexc137 unwind label %bb.ak

.preheader:                                       ; preds = %.lr.ph.a, %_ZNSt6vectorImSaImEE6resizeEmRKm.exit112, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit124
  %.sroa.12.0314 = phi i64 [ 0, %_ZNSt6vectorImSaImEE6resizeEmRKm.exit112 ], [ %i.fr, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit124 ], [ %i.fr, %.lr.ph.a ] ; 2 uses
  %.sroa.0183.0313 = phi ptr [ null, %_ZNSt6vectorImSaImEE6resizeEmRKm.exit112 ], [ %i.fe, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit124 ], [ %i.fe, %.lr.ph.a ] ; 6 uses
  %.sroa.12197.0202307 = phi ptr [ null, %_ZNSt6vectorImSaImEE6resizeEmRKm.exit112 ], [ %i.fd, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit124 ], [ %i.fd, %.lr.ph.a ] ; 3 uses
  %.sroa.0191.0204303 = phi ptr [ null, %_ZNSt6vectorImSaImEE6resizeEmRKm.exit112 ], [ %i.eo, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit124 ], [ %i.eo, %.lr.ph.a ] ; 6 uses
  %i.fu = load i64, ptr %i.bd, align 8, !tbaa !88
  %.not = icmp eq i64 %i.fu, 0
  br i1 %.not, label %._crit_edge240, label %.lr.ph239

.lr.ph239:                                        ; preds = %.preheader
  %i.fv = load ptr, ptr %i.cd, align 8, !tbaa !85
  %i.fw = load ptr, ptr %i.dq, align 8, !tbaa !85
  %i.fx = add nsw i32 %narrow.i88, -3
  %i.fy = icmp sgt i32 %i.i, 2
  %i.fz = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.ga = zext i32 %i.fx to i64
  br label %bb.an

bb.ae:                                            ; preds = %bb.ad
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit182

_ZNSt6vectorImSaImEED2Ev.exit180.thread:          ; preds = %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.af:                                            ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %.noexc130 unwind label %bb.ak

.noexc130:                                        ; preds = %bb.af
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.14, i32 noundef 97) #22
          to label %bb.ag unwind label %bb.ah

bb.ag:                                            ; preds = %.noexc130
  unreachable

bb.ah:                                            ; preds = %.noexc130
  %i.gd = landingpad { ptr, i32 }
          cleanup
  %i.ge = load ptr, ptr %14, align 8, !tbaa !43   ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.gg = icmp eq ptr %i.ge, %i.gf
  br i1 %i.gg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i128, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i127

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i127: ; preds = %bb.ah
  %i.gh = load i64, ptr %i.gf, align 8, !tbaa !32
  %i.gi = add i64 %i.gh, 1
  call void @_ZdlPvm(ptr noundef %i.ge, i64 noundef %i.gi) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i128

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i128: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i127
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  br label %.body.thread317

.noexc137:                                        ; preds = %.lr.ph.split.split
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.14, i32 noundef 97) #22
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %.noexc137
  unreachable

bb.aj:                                            ; preds = %.noexc137
  %i.gj = landingpad { ptr, i32 }
          cleanup
  %i.gk = load ptr, ptr %12, align 8, !tbaa !43   ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.gm = icmp eq ptr %i.gk, %i.gl
  br i1 %i.gm, label %.body.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i134

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i134: ; preds = %bb.aj
  %i.gn = load i64, ptr %i.gl, align 8, !tbaa !32
  %i.go = add i64 %i.gn, 1
  call void @_ZdlPvm(ptr noundef %i.gk, i64 noundef %i.go) #19
  br label %.body.thread

.body.thread:                                     ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i134
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br label %.body.thread317

bb.ak:                                            ; preds = %.lr.ph.split.split, %bb.af
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread317

._crit_edge240:                                   ; preds = %._crit_edge, %.preheader
  %.not.i.i.i = icmp eq ptr %.sroa.0183.0313, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %._crit_edge240
  %i.gq = ptrtoint ptr %.sroa.0183.0313 to i64
  %i.gr = sub i64 %.sroa.12.0314, %i.gq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0183.0313, i64 noundef %i.gr) #19
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %._crit_edge240, %bb.al
  %.not.i.i.i141 = icmp eq ptr %.sroa.0191.0204303, null
  br i1 %.not.i.i.i141, label %_ZNSt6vectorImSaImEED2Ev.exit142, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.gs = ptrtoint ptr %.sroa.12197.0202307 to i64
  %i.gt = ptrtoint ptr %.sroa.0191.0204303 to i64
  %i.gu = sub i64 %i.gs, %i.gt
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0191.0204303, i64 noundef %i.gu) #19
  br label %_ZNSt6vectorImSaImEED2Ev.exit142

_ZNSt6vectorImSaImEED2Ev.exit142:                 ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  ret void

bb.an:                                            ; preds = %.lr.ph239, %._crit_edge
  %.072238 = phi i64 [ 0, %.lr.ph239 ], [ %i.hv, %._crit_edge ] ; 10 uses
  %i.gv = mul i64 %.072238, %i.ec
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %.072238
  store i64 %i.gv, ptr %i.gw, align 8, !tbaa !84
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %.072238
  store i64 %.072238, ptr %i.gx, align 8, !tbaa !84
  br i1 %i.fy, label %.lr.ph236, label %._crit_edge

.lr.ph236:                                        ; preds = %bb.an
  %i.gy = load i32, ptr %5, align 4, !tbaa !113
  %narrow.i143 = call i32 @llvm.smax.i32(i32 %i.gy, i32 1)
  %i.gz = load i32, ptr %20, align 4
  %narrow.i161 = call i32 @llvm.smax.i32(i32 %i.gz, i32 1)
  %i.ha = load i32, ptr %21, align 4
  %narrow.i170 = call i32 @llvm.smax.i32(i32 %i.ha, i32 1)
  %i.hb = zext nneg i32 %narrow.i170 to i64
  %i.hc = zext nneg i32 %narrow.i161 to i64
  %i.hd = zext nneg i32 %narrow.i143 to i64
  br label %bb.ao

._crit_edge:                                      ; preds = %bb.be, %bb.an
  %.071.lcssa = phi i64 [ 0, %bb.an ], [ %i.jb, %bb.be ] ; 2 uses
  %.070.lcssa = phi i64 [ 0, %bb.an ], [ %i.jr, %bb.be ] ; 2 uses
  %i.he = load ptr, ptr %0, align 8, !tbaa !85
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %.072238
  store i64 %.071.lcssa, ptr %i.hf, align 8, !tbaa !84
  %i.hg = load ptr, ptr %i.bq, align 8, !tbaa !85
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %.072238
  store i64 %.070.lcssa, ptr %i.hh, align 8, !tbaa !84
  %i.hi = load i32, ptr %i.as, align 4, !tbaa !202
  %i.hj = load i32, ptr %i.aw, align 4, !tbaa !111 ; 2 uses
  %i.hk = mul nsw i32 %i.hj, %i.hi
  %i.hl = sext i32 %i.hk to i64
  %i.hm = udiv i64 %.071.lcssa, %i.hl
  %i.hn = load ptr, ptr %i.cq, align 8, !tbaa !85
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %.072238
  store i64 %i.hm, ptr %i.ho, align 8, !tbaa !84
  %i.hp = load i32, ptr %i.au, align 8, !tbaa !110
  %i.hq = mul nsw i32 %i.hp, %i.hj
  %i.hr = sext i32 %i.hq to i64
  %i.hs = udiv i64 %.070.lcssa, %i.hr
  %i.ht = load ptr, ptr %i.dd, align 8, !tbaa !85
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %.072238
  store i64 %i.hs, ptr %i.hu, align 8, !tbaa !84
  %i.hv = add nuw i64 %.072238, 1                 ; 2 uses
  %i.hw = load i64, ptr %i.bd, align 8, !tbaa !88
  %i.hx = icmp ult i64 %i.hv, %i.hw
  br i1 %i.hx, label %bb.an, label %._crit_edge240, !llvm.loop !207

bb.ao:                                            ; preds = %.lr.ph236, %bb.be
  %indvars.iv244 = phi i64 [ %i.ga, %.lr.ph236 ], [ %indvars.iv.next245, %bb.be ] ; 10 uses
  %.070234 = phi i64 [ 0, %.lr.ph236 ], [ %i.jr, %bb.be ]
  %.071233 = phi i64 [ 0, %.lr.ph236 ], [ %i.jb, %bb.be ]
  %.073232 = phi i64 [ %.072238, %.lr.ph236 ], [ %i.ii, %bb.be ] ; 2 uses
  %i.hy = icmp ult i64 %indvars.iv244, %i.hd
  br i1 %i.hy, label %bb.as, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %.noexc148 unwind label %bb.bf

.noexc148:                                        ; preds = %bb.ap
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.14, i32 noundef 97) #22
          to label %bb.aq unwind label %bb.ar

bb.aq:                                            ; preds = %.noexc148
  unreachable

bb.ar:                                            ; preds = %.noexc148
  %i.hz = landingpad { ptr, i32 }
          cleanup
  %i.ia = load ptr, ptr %10, align 8, !tbaa !43   ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ic = icmp eq ptr %i.ia, %i.ib
  br i1 %i.ic, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i145

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i145: ; preds = %bb.ar
  %i.id = load i64, ptr %i.ib, align 8, !tbaa !32
  %i.ie = add i64 %i.id, 1
  call void @_ZdlPvm(ptr noundef %i.ia, i64 noundef %i.ie) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i146

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i146: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i145
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %.body

bb.as:                                            ; preds = %bb.ao
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %indvars.iv244
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !114 ; 2 uses
  %i.ih = sext i32 %i.ig to i64
  %i.ii = udiv i64 %.073232, %i.ih                ; 2 uses
  %i.ij = zext i32 %i.ig to i64
  %i.ik = mul i64 %i.ii, %i.ij
  %i.il = sub i64 %.073232, %i.ik                 ; 2 uses
  %i.im = icmp ult i64 %indvars.iv244, %i.hc
  br i1 %i.im, label %bb.aw, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %.noexc166 unwind label %bb.bg

.noexc166:                                        ; preds = %bb.at
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.14, i32 noundef 97) #22
          to label %bb.au unwind label %bb.av

bb.au:                                            ; preds = %.noexc166
  unreachable

bb.av:                                            ; preds = %.noexc166
  %i.in = landingpad { ptr, i32 }
          cleanup
  %i.io = load ptr, ptr %8, align 8, !tbaa !43    ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.iq = icmp eq ptr %i.io, %i.ip
  br i1 %i.iq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i164, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i163

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i163: ; preds = %bb.av
  %i.ir = load i64, ptr %i.ip, align 8, !tbaa !32
  %i.is = add i64 %i.ir, 1
  call void @_ZdlPvm(ptr noundef %i.io, i64 noundef %i.is) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i164

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i164: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i163
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %.body

bb.aw:                                            ; preds = %bb.as
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv244
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !114
  %i.iv = icmp eq i32 %i.iu, 1
  br i1 %i.iv, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %sext = shl i64 %i.il, 32
  %i.iw = ashr exact i64 %sext, 32
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0191.0204303, i64 %indvars.iv244
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !84
  %i.iz = mul i64 %i.iy, %i.iw
  br label %bb.ay

bb.ay:                                            ; preds = %bb.aw, %bb.ax
  %i.ja = phi i64 [ %i.iz, %bb.ax ], [ 0, %bb.aw ]
  %i.jb = add i64 %i.ja, %.071233                 ; 2 uses
  %i.jc = icmp ult i64 %indvars.iv244, %i.hb
  br i1 %i.jc, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %.noexc175 unwind label %bb.bg

.noexc175:                                        ; preds = %bb.az
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.14, i32 noundef 97) #22
          to label %bb.ba unwind label %bb.bb

bb.ba:                                            ; preds = %.noexc175
  unreachable

bb.bb:                                            ; preds = %.noexc175
  %i.jd = landingpad { ptr, i32 }
          cleanup
  %i.je = load ptr, ptr %6, align 8, !tbaa !43    ; 2 uses
end_hunk_0
