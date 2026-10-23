Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/fast_gemm?download=true
inline.NumInlined: 936
inline.NumDeleted: 360
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZN2cv3dnn12MatMulHelper7computeEbbNS_8MatShapeES2_S2_:bb.a
  br i1 %i.bl, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bm = sub nuw i64 %i.bc, %i.bk
  call void @_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.bf, i64 noundef %i.bm, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre = load i64, ptr %i.bd, align 8, !tbaa !92
  br label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit

bb.m:                                             ; preds = %bb.k
  %i.bn = icmp ult i64 %i.bc, %i.bk
  br i1 %i.bn, label %bb.n, label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit

bb.n:                                             ; preds = %bb.m
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bc ; 2 uses
  %.not.i.i = icmp eq ptr %i.bf, %i.bo
  br i1 %.not.i.i, label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.n
  store ptr %i.bo, ptr %i.be, align 8, !tbaa !103
  br label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit

_ZNSt6vectorImSaImEE6resizeEmRKm.exit:            ; preds = %bb.l, %bb.m, %bb.n, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i
  %i.bp = phi i64 [ %.pre, %bb.l ], [ %i.bc, %bb.m ], [ %i.bc, %bb.n ], [ %i.bc, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i ] ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 0, ptr %i.b, align 8, !tbaa !20
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !103 ; 3 uses
  %i.bt = load ptr, ptr %i.bq, align 8, !tbaa !93 ; 2 uses
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = ashr exact i64 %i.bw, 3                 ; 3 uses
  %i.by = icmp ugt i64 %i.bp, %i.bx
  br i1 %i.by, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEmRKm.exit
  %i.bz = sub nuw i64 %i.bp, %i.bx
  call void @_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, ptr %i.bs, i64 noundef %i.bz, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.pre251.a = load i64, ptr %i.bd, align 8, !tbaa !92
  br label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit99

bb.p:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEmRKm.exit
  %i.ca = icmp ult i64 %i.bp, %i.bx
  br i1 %i.ca, label %bb.q, label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit99

bb.q:                                             ; preds = %bb.p
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bp ; 2 uses
  %.not.i.i97 = icmp eq ptr %i.bs, %i.cb
  br i1 %.not.i.i97, label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit99, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i98

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i98:      ; preds = %bb.q
  store ptr %i.cb, ptr %i.br, align 8, !tbaa !103
  br label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit99

_ZNSt6vectorImSaImEE6resizeEmRKm.exit99:          ; preds = %bb.o, %bb.p, %bb.q, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i98
  %i.cc = phi i64 [ %.pre251.a, %bb.o ], [ %i.bp, %bb.p ], [ %i.bp, %bb.q ], [ %i.bp, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i98 ] ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i64 0, ptr %i.c, align 8, !tbaa !20
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !103 ; 3 uses
  %i.cg = load ptr, ptr %i.cd, align 8, !tbaa !93 ; 2 uses
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = ashr exact i64 %i.cj, 3                 ; 3 uses
  %i.cl = icmp ugt i64 %i.cc, %i.ck
  br i1 %i.cl, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEmRKm.exit99
  %i.cm = sub nuw i64 %i.cc, %i.ck
  call void @_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm(ptr noundef nonnull align 8 dereferenceable(24) %i.cd, ptr %i.cf, i64 noundef %i.cm, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %.pre252.a = load i64, ptr %i.bd, align 8, !tbaa !92
  br label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit102

bb.s:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEmRKm.exit99
  %i.cn = icmp ult i64 %i.cc, %i.ck
  br i1 %i.cn, label %bb.t, label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit102

bb.t:                                             ; preds = %bb.s
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.cc ; 2 uses
  %.not.i.i100 = icmp eq ptr %i.cf, %i.co
  br i1 %.not.i.i100, label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit102, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i101

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i101:     ; preds = %bb.t
  store ptr %i.co, ptr %i.ce, align 8, !tbaa !103
  br label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit102

_ZNSt6vectorImSaImEE6resizeEmRKm.exit102:         ; preds = %bb.r, %bb.s, %bb.t, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i101
  %i.cp = phi i64 [ %.pre252.a, %bb.r ], [ %i.cc, %bb.s ], [ %i.cc, %bb.t ], [ %i.cc, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i101 ] ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store i64 0, ptr %i.d, align 8, !tbaa !20
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !103 ; 3 uses
  %i.ct = load ptr, ptr %i.cq, align 8, !tbaa !93 ; 2 uses
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = ashr exact i64 %i.cw, 3                 ; 3 uses
  %i.cy = icmp ugt i64 %i.cp, %i.cx
  br i1 %i.cy, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEmRKm.exit102
  %i.cz = sub nuw i64 %i.cp, %i.cx
  call void @_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm(ptr noundef nonnull align 8 dereferenceable(24) %i.cq, ptr %i.cs, i64 noundef %i.cz, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %.pre253 = load i64, ptr %i.bd, align 8, !tbaa !92
  br label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit105

bb.v:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEmRKm.exit102
  %i.da = icmp ult i64 %i.cp, %i.cx
  br i1 %i.da, label %bb.w, label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit105

bb.w:                                             ; preds = %bb.v
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.cp ; 2 uses
  %.not.i.i103 = icmp eq ptr %i.cs, %i.db
  br i1 %.not.i.i103, label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit105, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i104

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i104:     ; preds = %bb.w
  store ptr %i.db, ptr %i.cr, align 8, !tbaa !103
  br label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit105

_ZNSt6vectorImSaImEE6resizeEmRKm.exit105:         ; preds = %bb.u, %bb.v, %bb.w, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i104
  %i.dc = phi i64 [ %.pre253, %bb.u ], [ %i.cp, %bb.v ], [ %i.cp, %bb.w ], [ %i.cp, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i104 ] ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  store i64 0, ptr %i.e, align 8, !tbaa !20
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !103 ; 3 uses
  %i.dg = load ptr, ptr %i.dd, align 8, !tbaa !93 ; 2 uses
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = sub i64 %i.dh, %i.di
  %i.dk = ashr exact i64 %i.dj, 3                 ; 3 uses
  %i.dl = icmp ugt i64 %i.dc, %i.dk
  br i1 %i.dl, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEmRKm.exit105
  %i.dm = sub nuw i64 %i.dc, %i.dk
  call void @_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm(ptr noundef nonnull align 8 dereferenceable(24) %i.dd, ptr %i.df, i64 noundef %i.dm, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %.pre254 = load i64, ptr %i.bd, align 8, !tbaa !92
  br label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit108

bb.y:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEmRKm.exit105
  %i.dn = icmp ult i64 %i.dc, %i.dk
  br i1 %i.dn, label %bb.z, label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit108

bb.z:                                             ; preds = %bb.y
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.dc ; 2 uses
  %.not.i.i106 = icmp eq ptr %i.df, %i.do
  br i1 %.not.i.i106, label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit108, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i107

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i107:     ; preds = %bb.z
  store ptr %i.do, ptr %i.de, align 8, !tbaa !103
  br label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit108

_ZNSt6vectorImSaImEE6resizeEmRKm.exit108:         ; preds = %bb.x, %bb.y, %bb.z, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i107
  %i.dp = phi i64 [ %.pre254, %bb.x ], [ %i.dc, %bb.y ], [ %i.dc, %bb.z ], [ %i.dc, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i107 ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  store i64 0, ptr %i.f, align 8, !tbaa !20
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !103 ; 3 uses
  %i.dt = load ptr, ptr %i.dq, align 8, !tbaa !93 ; 2 uses
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = sub i64 %i.du, %i.dv
  %i.dx = ashr exact i64 %i.dw, 3                 ; 3 uses
  %i.dy = icmp ugt i64 %i.dp, %i.dx
  br i1 %i.dy, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZNSt6vectorImSaImEE6resizeEmRKm.exit108
  %i.dz = sub nuw i64 %i.dp, %i.dx
  call void @_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm(ptr noundef nonnull align 8 dereferenceable(24) %i.dq, ptr %i.ds, i64 noundef %i.dz, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  br label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit111

bb.ab:                                            ; preds = %_ZNSt6vectorImSaImEE6resizeEmRKm.exit108
  %i.ea = icmp ult i64 %i.dp, %i.dx
  br i1 %i.ea, label %bb.ac, label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit111

bb.ac:                                            ; preds = %bb.ab
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.dp ; 2 uses
  %.not.i.i109 = icmp eq ptr %i.ds, %i.eb
  br i1 %.not.i.i109, label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit111, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i110

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i110:     ; preds = %bb.ac
  store ptr %i.eb, ptr %i.dr, align 8, !tbaa !103
  br label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit111

_ZNSt6vectorImSaImEE6resizeEmRKm.exit111:         ; preds = %bb.aa, %bb.ab, %bb.ac, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  %i.ec = call fastcc noundef i64 @_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii(ptr noundef nonnull align 4 dereferenceable(52) %5, i32 noundef %i.bb, i32 noundef -1)
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  call void @_ZN2cv8MatShapeC1EmiNS_10DataLayoutE(ptr noundef nonnull align 4 dereferenceable(52) %20, i64 noundef %spec.select.i88, i32 noundef 1, i32 noundef 0)
  %i.ed = getelementptr inbounds nuw i8, ptr %20, i64 12 ; 3 uses
  %i.ee = sub nsw i64 %spec.select.i88, %spec.select.i
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %i.ee
  %i.eg = shl nuw nsw i64 %spec.select.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ef, ptr nonnull align 4 %i.r, i64 %i.eg, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #23
  %i.eh = load i32, ptr %5, align 4, !tbaa !71
  %narrow.i112 = call i32 @llvm.smax.i32(i32 %i.eh, i32 0)
  %spec.select.i113 = zext nneg i32 %narrow.i112 to i64
  call void @_ZN2cv8MatShapeC1EmiNS_10DataLayoutE(ptr noundef nonnull align 4 dereferenceable(52) %21, i64 noundef %spec.select.i113, i32 noundef 1, i32 noundef 0)
  %i.ei = getelementptr inbounds nuw i8, ptr %21, i64 12 ; 3 uses
  %i.ej = sub nsw i64 %spec.select.i88, %spec.select.i86
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.ej
  %i.el = load i32, ptr %4, align 4, !tbaa !71
  %narrow.i114 = call i32 @llvm.smax.i32(i32 %i.el, i32 0)
  %spec.select.i115 = zext nneg i32 %narrow.i114 to i64
  %i.em = shl nuw nsw i64 %spec.select.i115, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ek, ptr nonnull align 4 %i.af, i64 %i.em, i1 false)
  %.not.i.i.i.i = icmp slt i32 %i.i, 1
  br i1 %.not.i.i.i.i, label %.preheader, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorImSaImEE6resizeEmRKm.exit111
  %i.en = shl nuw nsw i64 %spec.select.i88, 3     ; 5 uses
  %i.eo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.en) #24
          to label %.noexc unwind label %bb.ae    ; 13 uses

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
  store i64 1, ptr %.06.i.i.i.i.i.i.i.i.i.prol, align 8, !tbaa !20
  %i.et = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !220

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %.noexc
  %.06.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.eo, %.noexc ], [ %i.et, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.eu = icmp ult i64 %i.eq, 56
  br i1 %i.eu, label %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i = phi ptr [ %i.fc, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  store i64 1, ptr %.06.i.i.i.i.i.i.i.i.i, align 8, !tbaa !20
  %i.ev = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 8
  store i64 1, ptr %i.ev, align 8, !tbaa !20
  %i.ew = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 16
  store i64 1, ptr %i.ew, align 8, !tbaa !20
  %i.ex = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 24
  store i64 1, ptr %i.ex, align 8, !tbaa !20
  %i.ey = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 32
  store i64 1, ptr %i.ey, align 8, !tbaa !20
  %i.ez = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 40
  store i64 1, ptr %i.ez, align 8, !tbaa !20
  %i.fa = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 48
  store i64 1, ptr %i.fa, align 8, !tbaa !20
  %i.fb = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 56
  store i64 1, ptr %i.fb, align 8, !tbaa !20
  %i.fc = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.7 = icmp eq ptr %i.fc, %i.ep
  br i1 %.not.i.i.i.i.i.i.i.i.i.7, label %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !7

_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %spec.select.i88 ; 7 uses
  %i.fe = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.en) #24
          to label %.noexc122 unwind label %_ZNSt6vectorImSaImEED2Ev.exit179.thread ; 12 uses

.noexc122:                                        ; preds = %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.en
  %xtraiter339 = and i64 %i.es, 7                 ; 2 uses
  %lcmp.mod340.not = icmp eq i64 %xtraiter339, 0
  br i1 %lcmp.mod340.not, label %.lr.ph.i.i.i.i.i.i.i.i.i117.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i117.prol

.lr.ph.i.i.i.i.i.i.i.i.i117.prol:                 ; preds = %.noexc122, %.lr.ph.i.i.i.i.i.i.i.i.i117.prol
  %.06.i.i.i.i.i.i.i.i.i118.prol = phi ptr [ %i.fg, %.lr.ph.i.i.i.i.i.i.i.i.i117.prol ], [ %i.fe, %.noexc122 ] ; 2 uses
  %prol.iter341 = phi i64 [ %prol.iter341.next, %.lr.ph.i.i.i.i.i.i.i.i.i117.prol ], [ 0, %.noexc122 ]
  store i64 1, ptr %.06.i.i.i.i.i.i.i.i.i118.prol, align 8, !tbaa !20
  %i.fg = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i118.prol, i64 8 ; 2 uses
  %prol.iter341.next = add i64 %prol.iter341, 1   ; 2 uses
  %prol.iter341.cmp.not = icmp eq i64 %prol.iter341.next, %xtraiter339
  br i1 %prol.iter341.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i117.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i117.prol, !llvm.loop !221

.lr.ph.i.i.i.i.i.i.i.i.i117.prol.loopexit:        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i117.prol, %.noexc122
  %.06.i.i.i.i.i.i.i.i.i118.unr = phi ptr [ %i.fe, %.noexc122 ], [ %i.fg, %.lr.ph.i.i.i.i.i.i.i.i.i117.prol ]
  %i.fh = icmp ult i64 %i.eq, 56
  br i1 %i.fh, label %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit123, label %.lr.ph.i.i.i.i.i.i.i.i.i117

.lr.ph.i.i.i.i.i.i.i.i.i117:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i117.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i117
  %.06.i.i.i.i.i.i.i.i.i118 = phi ptr [ %i.fp, %.lr.ph.i.i.i.i.i.i.i.i.i117 ], [ %.06.i.i.i.i.i.i.i.i.i118.unr, %.lr.ph.i.i.i.i.i.i.i.i.i117.prol.loopexit ] ; 9 uses
  store i64 1, ptr %.06.i.i.i.i.i.i.i.i.i118, align 8, !tbaa !20
  %i.fi = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i118, i64 8
  store i64 1, ptr %i.fi, align 8, !tbaa !20
  %i.fj = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i118, i64 16
  store i64 1, ptr %i.fj, align 8, !tbaa !20
  %i.fk = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i118, i64 24
  store i64 1, ptr %i.fk, align 8, !tbaa !20
  %i.fl = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i118, i64 32
  store i64 1, ptr %i.fl, align 8, !tbaa !20
  %i.fm = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i118, i64 40
  store i64 1, ptr %i.fm, align 8, !tbaa !20
  %i.fn = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i118, i64 48
  store i64 1, ptr %i.fn, align 8, !tbaa !20
  %i.fo = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i118, i64 56
  store i64 1, ptr %i.fo, align 8, !tbaa !20
  %i.fp = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i118, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i119.7 = icmp eq ptr %i.fp, %i.ff
  br i1 %.not.i.i.i.i.i.i.i.i.i119.7, label %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit123, label %.lr.ph.i.i.i.i.i.i.i.i.i117, !llvm.loop !7

_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit123:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i117, %.lr.ph.i.i.i.i.i.i.i.i.i117.prol.loopexit
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %spec.select.i88
  %i.fr = ptrtoint ptr %i.fq to i64               ; 6 uses
  %.not334 = icmp eq i32 %i.i, 1
  br i1 %.not334, label %.preheader, label %.lr.ph.a

.lr.ph.a:                                         ; preds = %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit123
  %i.fs = load i32, ptr %20, align 4, !tbaa !71
  %i.ft = load i32, ptr %21, align 4
  %22 = zext i32 %i.bb to i64
  %.not301 = icmp sgt i32 %narrow.i87, %i.fs
  %.not302 = icmp sgt i32 %narrow.i87, %i.ft
  br label %23

.preheader:                                       ; preds = %34, %_ZNSt6vectorImSaImEE6resizeEmRKm.exit111, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit123
  %.sroa.12.0321.a = phi i64 [ 0, %_ZNSt6vectorImSaImEE6resizeEmRKm.exit111 ], [ %i.fr, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit123 ], [ %i.fr, %34 ] ; 7 uses
  %.sroa.0182.0320 = phi ptr [ null, %_ZNSt6vectorImSaImEE6resizeEmRKm.exit111 ], [ %i.fe, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit123 ], [ %i.fe, %34 ] ; 10 uses
  %.sroa.12196.0201312.a = phi ptr [ null, %_ZNSt6vectorImSaImEE6resizeEmRKm.exit111 ], [ %i.fd, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit123 ], [ %i.fd, %34 ] ; 7 uses
  %.sroa.0190.0203307.a = phi ptr [ null, %_ZNSt6vectorImSaImEE6resizeEmRKm.exit111 ], [ %i.eo, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit123 ], [ %i.eo, %34 ] ; 10 uses
  %i.fu = load i64, ptr %i.bd, align 8, !tbaa !92
  %.not = icmp eq i64 %i.fu, 0
  br i1 %.not, label %._crit_edge242, label %.lr.ph241

.lr.ph241:                                        ; preds = %.preheader
  %i.fv = load ptr, ptr %i.cd, align 8, !tbaa !93
  %i.fw = load ptr, ptr %i.dq, align 8, !tbaa !93
  %i.fx = add nsw i32 %narrow.i87, -3             ; 4 uses
  %i.fy = icmp sgt i32 %i.i, 2
  %i.fz = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.ga = zext i32 %i.fx to i64
  br label %bb.am

bb.ae:                                            ; preds = %bb.ad
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit181

_ZNSt6vectorImSaImEED2Ev.exit179.thread:          ; preds = %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

23:                                               ; preds = %.lr.ph.a, %34
  %indvars.iv = phi i64 [ %22, %.lr.ph.a ], [ %indvars.iv.next, %34 ] ; 5 uses
  %24 = add nuw nsw i64 %indvars.iv, 1            ; 4 uses
  br i1 %.not301, label %bb.af, label %25

bb.af:                                            ; preds = %23
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.72, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %.noexc129 unwind label %bb.be

.noexc129:                                        ; preds = %bb.af
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.73, i32 noundef 97) #27
          to label %bb.ag unwind label %bb.ah

bb.ag:                                            ; preds = %.noexc129
  unreachable

bb.ah:                                            ; preds = %.noexc129
  %i.gd = landingpad { ptr, i32 }
          cleanup
  %i.ge = load ptr, ptr %14, align 8, !tbaa !74   ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.gg = icmp eq ptr %i.ge, %i.gf
  br i1 %i.gg, label %.body.thread325, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i126

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i126: ; preds = %bb.ah
  %i.gh = load i64, ptr %i.gf, align 8, !tbaa !75
  %i.gi = add i64 %i.gh, 1
  call void @_ZdlPvm(ptr noundef %i.ge, i64 noundef %i.gi) #28
  br label %.body.thread325

.body.thread325:                                  ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i126
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.bf

25:                                               ; preds = %23
  %26 = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %24
  %27 = load i64, ptr %26, align 8, !tbaa !20
  %28 = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %24
  %29 = load i32, ptr %28, align 4, !tbaa !59
  %30 = sext i32 %29 to i64
  %31 = mul i64 %27, %30
  %32 = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv
  store i64 %31, ptr %32, align 8, !tbaa !20
  br i1 %.not302, label %33, label %34

33:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.72, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %.noexc136 unwind label %bb.be

.noexc136:                                        ; preds = %33
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.73, i32 noundef 97) #27
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %.noexc136
  unreachable

bb.aj:                                            ; preds = %.noexc136
  %i.gj = landingpad { ptr, i32 }
          cleanup
  %i.gk = load ptr, ptr %12, align 8, !tbaa !74   ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.gm = icmp eq ptr %i.gk, %i.gl
  br i1 %i.gm, label %.body.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i133

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i133: ; preds = %bb.aj
  %i.gn = load i64, ptr %i.gl, align 8, !tbaa !75
  %i.go = add i64 %i.gn, 1
  call void @_ZdlPvm(ptr noundef %i.gk, i64 noundef %i.go) #28
  br label %.body.thread

.body.thread:                                     ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i133
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.bf

34:                                               ; preds = %25
  %35 = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %24
  %36 = load i64, ptr %35, align 8, !tbaa !20
  %37 = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %24
  %38 = load i32, ptr %37, align 4, !tbaa !59
  %39 = sext i32 %38 to i64
  %40 = mul i64 %36, %39
  %41 = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %indvars.iv
  store i64 %40, ptr %41, align 8, !tbaa !20
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %42 = trunc nuw i64 %indvars.iv to i32
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %23, label %.preheader, !llvm.loop !222

._crit_edge242:                                   ; preds = %._crit_edge, %.preheader
  %.not.i.i.i = icmp eq ptr %.sroa.0182.0320, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %._crit_edge242
  %i.gp = ptrtoint ptr %.sroa.0182.0320 to i64
  %i.gq = sub i64 %.sroa.12.0321.a, %i.gp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0182.0320, i64 noundef %i.gq) #28
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %._crit_edge242, %bb.ak
  %.not.i.i.i140 = icmp eq ptr %.sroa.0190.0203307.a, null
  br i1 %.not.i.i.i140, label %_ZNSt6vectorImSaImEED2Ev.exit141, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.gr = ptrtoint ptr %.sroa.12196.0201312.a to i64
  %i.gs = ptrtoint ptr %.sroa.0190.0203307.a to i64
  %i.gt = sub i64 %i.gr, %i.gs
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0190.0203307.a, i64 noundef %i.gt) #28
  br label %_ZNSt6vectorImSaImEED2Ev.exit141

_ZNSt6vectorImSaImEED2Ev.exit141:                 ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  ret void

bb.am:                                            ; preds = %.lr.ph241, %._crit_edge
  %.072240 = phi i64 [ 0, %.lr.ph241 ], [ %i.hr, %._crit_edge ] ; 10 uses
  %i.gu = mul i64 %.072240, %i.ec
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %.072240
  store i64 %i.gu, ptr %i.gv, align 8, !tbaa !20
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %.072240
  store i64 %.072240, ptr %i.gw, align 8, !tbaa !20
  br i1 %i.fy, label %.lr.ph238, label %._crit_edge

.lr.ph238:                                        ; preds = %bb.am
  %i.gx = load i32, ptr %5, align 4, !tbaa !71
  %narrow.i142 = call i32 @llvm.smax.i32(i32 %i.gx, i32 1)
  %i.gy = load i32, ptr %20, align 4
  %narrow.i160 = call i32 @llvm.smax.i32(i32 %i.gy, i32 1)
  %i.gz = load i32, ptr %21, align 4
  %narrow.i169 = call i32 @llvm.smax.i32(i32 %i.gz, i32 1)
  %.first_iter = icmp ult i32 %i.fx, %narrow.i142
  %.first_iter249 = icmp samesign ult i32 %i.fx, %narrow.i160
  %.first_iter250 = icmp samesign ult i32 %i.fx, %narrow.i169
  br label %bb.an

._crit_edge:                                      ; preds = %bb.bd, %bb.am
  %.071.lcssa = phi i64 [ 0, %bb.am ], [ %i.iv, %bb.bd ] ; 2 uses
  %.070.lcssa = phi i64 [ 0, %bb.am ], [ %i.jl, %bb.bd ] ; 2 uses
  %i.ha = load ptr, ptr %0, align 8, !tbaa !93
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %.072240
  store i64 %.071.lcssa, ptr %i.hb, align 8, !tbaa !20
  %i.hc = load ptr, ptr %i.bq, align 8, !tbaa !93
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %.072240
  store i64 %.070.lcssa, ptr %i.hd, align 8, !tbaa !20
  %i.he = load i32, ptr %i.as, align 4, !tbaa !94
  %i.hf = load i32, ptr %i.aw, align 4, !tbaa !96 ; 2 uses
  %i.hg = mul nsw i32 %i.hf, %i.he
  %i.hh = sext i32 %i.hg to i64
  %i.hi = udiv i64 %.071.lcssa, %i.hh
  %i.hj = load ptr, ptr %i.cq, align 8, !tbaa !93
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.hj, i64 %.072240
  store i64 %i.hi, ptr %i.hk, align 8, !tbaa !20
  %i.hl = load i32, ptr %i.au, align 8, !tbaa !95
  %i.hm = mul nsw i32 %i.hl, %i.hf
  %i.hn = sext i32 %i.hm to i64
  %i.ho = udiv i64 %.070.lcssa, %i.hn
  %i.hp = load ptr, ptr %i.dd, align 8, !tbaa !93
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %.072240
  store i64 %i.ho, ptr %i.hq, align 8, !tbaa !20
  %i.hr = add nuw i64 %.072240, 1                 ; 2 uses
  %i.hs = load i64, ptr %i.bd, align 8, !tbaa !92
  %i.ht = icmp ult i64 %i.hr, %i.hs
  br i1 %i.ht, label %bb.am, label %._crit_edge242, !llvm.loop !223

bb.an:                                            ; preds = %.lr.ph238, %bb.bd
  %indvars.iv246 = phi i64 [ %i.ga, %.lr.ph238 ], [ %indvars.iv.next247, %bb.bd ] ; 7 uses
  %.070236 = phi i64 [ 0, %.lr.ph238 ], [ %i.jl, %bb.bd ]
  %.071235 = phi i64 [ 0, %.lr.ph238 ], [ %i.iv, %bb.bd ]
  %.073234 = phi i64 [ %.072240, %.lr.ph238 ], [ %i.id, %bb.bd ] ; 2 uses
  br i1 %.first_iter, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.72, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %.noexc147 unwind label %bb.be

.noexc147:                                        ; preds = %bb.ao
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.73, i32 noundef 97) #27
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %.noexc147
  unreachable

bb.aq:                                            ; preds = %.noexc147
  %i.hu = landingpad { ptr, i32 }
          cleanup
  %i.hv = load ptr, ptr %10, align 8, !tbaa !74   ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.hx = icmp eq ptr %i.hv, %i.hw
  br i1 %i.hx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i145, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i144: ; preds = %bb.aq
  %i.hy = load i64, ptr %i.hw, align 8, !tbaa !75
  %i.hz = add i64 %i.hy, 1
  call void @_ZdlPvm(ptr noundef %i.hv, i64 noundef %i.hz) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i145

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i145: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i144
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %.body

bb.ar:                                            ; preds = %bb.an
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %indvars.iv246
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !59 ; 2 uses
  %i.ic = sext i32 %i.ib to i64
  %i.id = udiv i64 %.073234, %i.ic                ; 2 uses
  %i.ie = zext i32 %i.ib to i64
  %i.if = mul i64 %i.id, %i.ie
  %i.ig = sub i64 %.073234, %i.if                 ; 2 uses
  br i1 %.first_iter249, label %bb.av, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.72, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %.noexc165 unwind label %bb.be

.noexc165:                                        ; preds = %bb.as
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.73, i32 noundef 97) #27
          to label %bb.at unwind label %bb.au

bb.at:                                            ; preds = %.noexc165
  unreachable

bb.au:                                            ; preds = %.noexc165
  %i.ih = landingpad { ptr, i32 }
          cleanup
  %i.ii = load ptr, ptr %8, align 8, !tbaa !74    ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ik = icmp eq ptr %i.ii, %i.ij
  br i1 %i.ik, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i163, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i162

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i162: ; preds = %bb.au
  %i.il = load i64, ptr %i.ij, align 8, !tbaa !75
  %i.im = add i64 %i.il, 1
  call void @_ZdlPvm(ptr noundef %i.ii, i64 noundef %i.im) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i163

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i163: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i162
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %.body

bb.av:                                            ; preds = %bb.ar
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv246
  %i.io = load i32, ptr %i.in, align 4, !tbaa !59
  %i.ip = icmp eq i32 %i.io, 1
  br i1 %i.ip, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %sext = shl i64 %i.ig, 32
  %i.iq = ashr exact i64 %sext, 32
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0190.0203307.a, i64 %indvars.iv246
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !20
  %i.it = mul i64 %i.is, %i.iq
  br label %bb.ax

bb.ax:                                            ; preds = %bb.av, %bb.aw
  %i.iu = phi i64 [ %i.it, %bb.aw ], [ 0, %bb.av ]
  %i.iv = add i64 %i.iu, %.071235                 ; 2 uses
  br i1 %.first_iter250, label %bb.bb, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.72, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %.noexc174 unwind label %bb.be

.noexc174:                                        ; preds = %bb.ay
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.73, i32 noundef 97) #27
          to label %bb.az unwind label %bb.ba

bb.az:                                            ; preds = %.noexc174
  unreachable

bb.ba:                                            ; preds = %.noexc174
  %i.iw = landingpad { ptr, i32 }
          cleanup
  %i.ix = load ptr, ptr %6, align 8, !tbaa !74    ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.iz = icmp eq ptr %i.ix, %i.iy
  br i1 %i.iz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i172, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i171

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i171: ; preds = %bb.ba
  %i.ja = load i64, ptr %i.iy, align 8, !tbaa !75
  %i.jb = add i64 %i.ja, 1
  call void @_ZdlPvm(ptr noundef %i.ix, i64 noundef %i.jb) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i172

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i172: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i171
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %.body

bb.bb:                                            ; preds = %bb.ax
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %indvars.iv246
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !59
  %i.je = icmp eq i32 %i.jd, 1
  br i1 %i.je, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.jf = shl i64 %i.ig, 32
  %i.jg = ashr exact i64 %i.jf, 32
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0182.0320, i64 %indvars.iv246
  %i.ji = load i64, ptr %i.jh, align 8, !tbaa !20
  %i.jj = mul i64 %i.ji, %i.jg
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bb, %bb.bc
  %i.jk = phi i64 [ %i.jj, %bb.bc ], [ 0, %bb.bb ]
  %i.jl = add i64 %i.jk, %.070236                 ; 2 uses
  %indvars.iv.next247 = add nsw i64 %indvars.iv246, -1
  %i.jm = trunc nuw i64 %indvars.iv246 to i32
  %i.jn = icmp sgt i32 %i.jm, 0
  br i1 %i.jn, label %bb.an, label %._crit_edge, !llvm.loop !224

bb.be:                                            ; preds = %bb.ay, %bb.as, %bb.ao, %33, %bb.af
  %.sroa.12.0324 = phi i64 [ %.sroa.12.0321.a, %bb.ay ], [ %.sroa.12.0321.a, %bb.as ], [ %.sroa.12.0321.a, %bb.ao ], [ %i.fr, %33 ], [ %i.fr, %bb.af ]
  %.sroa.0182.0319 = phi ptr [ %.sroa.0182.0320, %bb.ay ], [ %.sroa.0182.0320, %bb.as ], [ %.sroa.0182.0320, %bb.ao ], [ %i.fe, %33 ], [ %i.fe, %bb.af ]
  %.sroa.12196.0201316 = phi ptr [ %.sroa.12196.0201312.a, %bb.ay ], [ %.sroa.12196.0201312.a, %bb.as ], [ %.sroa.12196.0201312.a, %bb.ao ], [ %i.fd, %33 ], [ %i.fd, %bb.af ]
  %.sroa.0190.0203311 = phi ptr [ %.sroa.0190.0203307.a, %bb.ay ], [ %.sroa.0190.0203307.a, %bb.as ], [ %.sroa.0190.0203307.a, %bb.ao ], [ %i.eo, %33 ], [ %i.eo, %bb.af ]
  %i.jo = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i172, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i163, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i145
  %.sroa.12.0323 = phi i64 [ %.sroa.12.0324, %bb.be ], [ %.sroa.12.0321.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i172 ], [ %.sroa.12.0321.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i145 ], [ %.sroa.12.0321.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i163 ]
  %.sroa.0182.0318 = phi ptr [ %.sroa.0182.0319, %bb.be ], [ %.sroa.0182.0320, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i172 ], [ %.sroa.0182.0320, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i145 ], [ %.sroa.0182.0320, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i163 ] ; 2 uses
  %.sroa.12196.0201315 = phi ptr [ %.sroa.12196.0201316, %bb.be ], [ %.sroa.12196.0201312.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i172 ], [ %.sroa.12196.0201312.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i145 ], [ %.sroa.12196.0201312.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i163 ] ; 2 uses
  %.sroa.0190.0203310 = phi ptr [ %.sroa.0190.0203311, %bb.be ], [ %.sroa.0190.0203307.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i172 ], [ %.sroa.0190.0203307.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i145 ], [ %.sroa.0190.0203307.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i163 ] ; 2 uses
  %eh.lpad-body = phi { ptr, i32 } [ %i.jo, %bb.be ], [ %i.iw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i172 ], [ %i.hu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i145 ], [ %i.ih, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i163 ] ; 2 uses
  %.not.i.i.i178 = icmp eq ptr %.sroa.0182.0318, null
  br i1 %.not.i.i.i178, label %_ZNSt6vectorImSaImEED2Ev.exit179, label %bb.bf

bb.bf:                                            ; preds = %.body.thread325, %.body.thread, %.body
  %.sroa.12.0322 = phi i64 [ %i.fr, %.body.thread ], [ %.sroa.12.0323, %.body ], [ %i.fr, %.body.thread325 ]
  %.sroa.0182.0317 = phi ptr [ %i.fe, %.body.thread ], [ %.sroa.0182.0318, %.body ], [ %i.fe, %.body.thread325 ] ; 2 uses
  %.sroa.12196.0201313 = phi ptr [ %i.fd, %.body.thread ], [ %.sroa.12196.0201315, %.body ], [ %i.fd, %.body.thread325 ]
  %.sroa.0190.0203308 = phi ptr [ %i.eo, %.body.thread ], [ %.sroa.0190.0203310, %.body ], [ %i.eo, %.body.thread325 ]
  %eh.lpad-body217 = phi { ptr, i32 } [ %i.gj, %.body.thread ], [ %eh.lpad-body, %.body ], [ %i.gd, %.body.thread325 ]
  %i.jp = ptrtoint ptr %.sroa.0182.0317 to i64
  %i.jq = sub i64 %.sroa.12.0322, %i.jp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0182.0317, i64 noundef %i.jq) #28
  br label %_ZNSt6vectorImSaImEED2Ev.exit179

_ZNSt6vectorImSaImEED2Ev.exit179:                 ; preds = %bb.bf, %.body
  %.sroa.12196.0201314 = phi ptr [ %.sroa.12196.0201313, %bb.bf ], [ %.sroa.12196.0201315, %.body ]
  %.sroa.0190.0203309 = phi ptr [ %.sroa.0190.0203308, %bb.bf ], [ %.sroa.0190.0203310, %.body ] ; 2 uses
  %.pn81.pn = phi { ptr, i32 } [ %eh.lpad-body217, %bb.bf ], [ %eh.lpad-body, %.body ] ; 2 uses
  %.not.i.i.i180 = icmp eq ptr %.sroa.0190.0203309, null
  br i1 %.not.i.i.i180, label %_ZNSt6vectorImSaImEED2Ev.exit181, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit179.thread, %_ZNSt6vectorImSaImEED2Ev.exit179
  %.pn81.pn225 = phi { ptr, i32 } [ %i.gc, %_ZNSt6vectorImSaImEED2Ev.exit179.thread ], [ %.pn81.pn, %_ZNSt6vectorImSaImEED2Ev.exit179 ]
  %.sroa.12196.0200224 = phi ptr [ %i.fd, %_ZNSt6vectorImSaImEED2Ev.exit179.thread ], [ %.sroa.12196.0201314, %_ZNSt6vectorImSaImEED2Ev.exit179 ]
  %.sroa.0190.0205223 = phi ptr [ %i.eo, %_ZNSt6vectorImSaImEED2Ev.exit179.thread ], [ %.sroa.0190.0203309, %_ZNSt6vectorImSaImEED2Ev.exit179 ] ; 2 uses
  %i.jr = ptrtoint ptr %.sroa.12196.0200224 to i64
  %i.js = ptrtoint ptr %.sroa.0190.0205223 to i64
  %i.jt = sub i64 %i.jr, %i.js
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0190.0205223, i64 noundef %i.jt) #28
  br label %_ZNSt6vectorImSaImEED2Ev.exit181

_ZNSt6vectorImSaImEED2Ev.exit181:                 ; preds = %bb.bg, %_ZNSt6vectorImSaImEED2Ev.exit179, %bb.ae
  %.pn81.pn.pn = phi { ptr, i32 } [ %i.gb, %bb.ae ], [ %.pn81.pn, %_ZNSt6vectorImSaImEED2Ev.exit179 ], [ %.pn81.pn225, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  br label %common.resume
}

declare void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52), ptr noundef nonnull align 4 dereferenceable(52)) unnamed_addr #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv3dnn12MatMulHelperD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !102
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #28
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !93   ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorImSaImEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !102
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #28
  br label %_ZNSt6vectorImSaImEED2Ev.exit2

_ZNSt6vectorImSaImEED2Ev.exit2:                   ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !93   ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i3, label %_ZNSt6vectorImSaImEED2Ev.exit4, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit2
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !102
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #28
  br label %_ZNSt6vectorImSaImEED2Ev.exit4

_ZNSt6vectorImSaImEED2Ev.exit4:                   ; preds = %_ZNSt6vectorImSaImEED2Ev.exit2, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !93   ; 3 uses
  %.not.i.i.i5 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i5, label %_ZNSt6vectorImSaImEED2Ev.exit6, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !102
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #28
  br label %_ZNSt6vectorImSaImEED2Ev.exit6

_ZNSt6vectorImSaImEED2Ev.exit6:                   ; preds = %_ZNSt6vectorImSaImEED2Ev.exit4, %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !93 ; 3 uses
  %.not.i.i.i7 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i7, label %_ZNSt6vectorImSaImEED2Ev.exit8, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit6
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !102
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = sub i64 %i.ag, %i.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ai) #28
  br label %_ZNSt6vectorImSaImEED2Ev.exit8

_ZNSt6vectorImSaImEED2Ev.exit8:                   ; preds = %_ZNSt6vectorImSaImEED2Ev.exit6, %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !93 ; 3 uses
  %.not.i.i.i9 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i9, label %_ZNSt6vectorImSaImEED2Ev.exit10, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !102
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.an, %i.ao
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ap) #28
  br label %_ZNSt6vectorImSaImEED2Ev.exit10

_ZNSt6vectorImSaImEED2Ev.exit10:                  ; preds = %_ZNSt6vectorImSaImEED2Ev.exit8, %bb.g
  %i.aq = load ptr, ptr %0, align 8, !tbaa !93    ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorImSaImEED2Ev.exit12, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit10
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !102
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.av) #28
  br label %_ZNSt6vectorImSaImEED2Ev.exit12

_ZNSt6vectorImSaImEED2Ev.exit12:                  ; preds = %_ZNSt6vectorImSaImEED2Ev.exit10, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv3dnn13fastGemmBatchEmRKSt6vectorImSaImEES5_S5_iiifRKNS_3MatEiiS8_iifRS6_iRNS0_11FastGemmOptE(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, float noundef %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %8, i32 noundef %9, i32 noundef %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %11, i32 noundef %12, i32 noundef %13, float noundef %14, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %15, i32 noundef %16, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(5) %17) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  %i.c = alloca i32, align 4                      ; 2 uses
  %i.d = alloca float, align 4                    ; 2 uses
  %i.e = alloca i32, align 4                      ; 2 uses
  %i.f = alloca i32, align 4                      ; 2 uses
  %i.g = alloca i32, align 4                      ; 2 uses
  %i.h = alloca float, align 4                    ; 2 uses
  %i.i = alloca i32, align 4                      ; 2 uses
  %i.j = alloca ptr, align 8                      ; 5 uses
  %i.k = alloca ptr, align 8                      ; 5 uses
  %i.l = alloca ptr, align 8                      ; 5 uses
  %18 = alloca %"class.cv::Range", align 4        ; 6 uses
  %19 = alloca %"class.std::function", align 8    ; 9 uses
  store i32 %4, ptr %i.a, align 4, !tbaa !59
  store i32 %5, ptr %i.b, align 4, !tbaa !59
  store i32 %6, ptr %i.c, align 4, !tbaa !59
  store float %7, ptr %i.d, align 4, !tbaa !18
  store i32 %9, ptr %i.e, align 4, !tbaa !59
  store i32 %10, ptr %i.f, align 4, !tbaa !59
  store i32 %12, ptr %i.g, align 4, !tbaa !59
  store float %14, ptr %i.h, align 4, !tbaa !18
  store i32 %16, ptr %i.i, align 4, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #23
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !76   ; 3 uses
  store ptr %i.n, ptr %i.j, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #23
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !76   ; 3 uses
  store ptr %i.p, ptr %i.k, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #23
  %i.q = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !76   ; 3 uses
  store ptr %i.r, ptr %i.l, align 8, !tbaa !23
  %i.s = icmp eq i32 %13, 1
  br i1 %i.s, label %bb.b, label %._crit_edge
end_hunk_0
