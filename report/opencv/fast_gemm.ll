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
  %.pre248.a = load i64, ptr %i.bd, align 8, !tbaa !92
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
  %i.cc = phi i64 [ %.pre248.a, %bb.o ], [ %i.bp, %bb.p ], [ %i.bp, %bb.q ], [ %i.bp, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i98 ] ; 7 uses
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
  %.pre249.a = load i64, ptr %i.bd, align 8, !tbaa !92
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
  %i.cp = phi i64 [ %.pre249.a, %bb.r ], [ %i.cc, %bb.s ], [ %i.cc, %bb.t ], [ %i.cc, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i101 ] ; 7 uses
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
  %.pre250 = load i64, ptr %i.bd, align 8, !tbaa !92
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
  %i.dc = phi i64 [ %.pre250, %bb.u ], [ %i.cp, %bb.v ], [ %i.cp, %bb.w ], [ %i.cp, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i104 ] ; 7 uses
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
  %.pre251 = load i64, ptr %i.bd, align 8, !tbaa !92
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
  %i.dp = phi i64 [ %.pre251, %bb.x ], [ %i.dc, %bb.y ], [ %i.dc, %bb.z ], [ %i.dc, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i107 ] ; 4 uses
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
          to label %.noexc unwind label %bb.ae    ; 12 uses

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
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %spec.select.i88 ; 6 uses
  %i.fe = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.en) #24
          to label %.noexc122 unwind label %_ZNSt6vectorImSaImEED2Ev.exit179.thread ; 11 uses

.noexc122:                                        ; preds = %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.en
  %xtraiter332 = and i64 %i.es, 7                 ; 2 uses
  %lcmp.mod333.not = icmp eq i64 %xtraiter332, 0
  br i1 %lcmp.mod333.not, label %.lr.ph.i.i.i.i.i.i.i.i.i117.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i117.prol

.lr.ph.i.i.i.i.i.i.i.i.i117.prol:                 ; preds = %.noexc122, %.lr.ph.i.i.i.i.i.i.i.i.i117.prol
  %.06.i.i.i.i.i.i.i.i.i118.prol = phi ptr [ %i.fg, %.lr.ph.i.i.i.i.i.i.i.i.i117.prol ], [ %i.fe, %.noexc122 ] ; 2 uses
  %prol.iter334 = phi i64 [ %prol.iter334.next, %.lr.ph.i.i.i.i.i.i.i.i.i117.prol ], [ 0, %.noexc122 ]
  store i64 1, ptr %.06.i.i.i.i.i.i.i.i.i118.prol, align 8, !tbaa !20
  %i.fg = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i118.prol, i64 8 ; 2 uses
  %prol.iter334.next = add i64 %prol.iter334, 1   ; 2 uses
  %prol.iter334.cmp.not = icmp eq i64 %prol.iter334.next, %xtraiter332
  br i1 %prol.iter334.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i117.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i117.prol, !llvm.loop !221

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
  %i.fr = ptrtoint ptr %i.fq to i64               ; 5 uses
  %.not327 = icmp eq i32 %i.i, 1
  br i1 %.not327, label %.preheader, label %.lr.ph.a

.lr.ph.a:                                         ; preds = %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit123
  %i.fs = load i32, ptr %20, align 4, !tbaa !71
  %i.ft = load i32, ptr %21, align 4
  %22 = zext i32 %i.bb to i64
  %.not298 = icmp sgt i32 %narrow.i87, %i.fs
  %.not299 = icmp sgt i32 %narrow.i87, %i.ft
  br label %23

.preheader:                                       ; preds = %34, %_ZNSt6vectorImSaImEE6resizeEmRKm.exit111, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit123
  %.sroa.12.0315 = phi i64 [ 0, %_ZNSt6vectorImSaImEE6resizeEmRKm.exit111 ], [ %i.fr, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit123 ], [ %i.fr, %34 ] ; 2 uses
  %.sroa.0182.0314 = phi ptr [ null, %_ZNSt6vectorImSaImEE6resizeEmRKm.exit111 ], [ %i.fe, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit123 ], [ %i.fe, %34 ] ; 6 uses
  %.sroa.12196.0201308 = phi ptr [ null, %_ZNSt6vectorImSaImEE6resizeEmRKm.exit111 ], [ %i.fd, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit123 ], [ %i.fd, %34 ] ; 3 uses
  %.sroa.0190.0203304 = phi ptr [ null, %_ZNSt6vectorImSaImEE6resizeEmRKm.exit111 ], [ %i.eo, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit123 ], [ %i.eo, %34 ] ; 6 uses
  %i.fu = load i64, ptr %i.bd, align 8, !tbaa !92
  %.not = icmp eq i64 %i.fu, 0
  br i1 %.not, label %._crit_edge239, label %.lr.ph238

.lr.ph238:                                        ; preds = %.preheader
  %i.fv = load ptr, ptr %i.cd, align 8, !tbaa !93
  %i.fw = load ptr, ptr %i.dq, align 8, !tbaa !93
  %i.fx = add nsw i32 %narrow.i87, -3             ; 4 uses
  %i.fy = icmp sgt i32 %i.i, 2
  %i.fz = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.ga = zext i32 %i.fx to i64
  br label %bb.an

bb.ae:                                            ; preds = %bb.ad
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit181

_ZNSt6vectorImSaImEED2Ev.exit179.thread:          ; preds = %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

23:                                               ; preds = %.lr.ph.a, %34
  %indvars.iv = phi i64 [ %22, %.lr.ph.a ], [ %indvars.iv.next, %34 ] ; 5 uses
  %24 = add nuw nsw i64 %indvars.iv, 1            ; 4 uses
  br i1 %.not298, label %bb.af, label %25

bb.af:                                            ; preds = %23
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.72, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %.noexc129 unwind label %bb.ak

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
  br i1 %i.gg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i127, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i126

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i126: ; preds = %bb.ah
  %i.gh = load i64, ptr %i.gf, align 8, !tbaa !75
  %i.gi = add i64 %i.gh, 1
  call void @_ZdlPvm(ptr noundef %i.ge, i64 noundef %i.gi) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i127

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i127: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i126
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %.body.thread318

25:                                               ; preds = %23
  %26 = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %24
  %27 = load i64, ptr %26, align 8, !tbaa !20
  %28 = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %24
  %29 = load i32, ptr %28, align 4, !tbaa !59
  %30 = sext i32 %29 to i64
  %31 = mul i64 %27, %30
  %32 = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv
  store i64 %31, ptr %32, align 8, !tbaa !20
  br i1 %.not299, label %33, label %34

33:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.72, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %.noexc136 unwind label %bb.ak

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
  br label %.body.thread318

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

bb.ak:                                            ; preds = %33, %bb.af
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread318

._crit_edge239:                                   ; preds = %._crit_edge, %.preheader
  %.not.i.i.i = icmp eq ptr %.sroa.0182.0314, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %._crit_edge239
  %i.gq = ptrtoint ptr %.sroa.0182.0314 to i64
  %i.gr = sub i64 %.sroa.12.0315, %i.gq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0182.0314, i64 noundef %i.gr) #28
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %._crit_edge239, %bb.al
  %.not.i.i.i140 = icmp eq ptr %.sroa.0190.0203304, null
  br i1 %.not.i.i.i140, label %_ZNSt6vectorImSaImEED2Ev.exit141, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.gs = ptrtoint ptr %.sroa.12196.0201308 to i64
  %i.gt = ptrtoint ptr %.sroa.0190.0203304 to i64
  %i.gu = sub i64 %i.gs, %i.gt
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0190.0203304, i64 noundef %i.gu) #28
  br label %_ZNSt6vectorImSaImEED2Ev.exit141

_ZNSt6vectorImSaImEED2Ev.exit141:                 ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  ret void

bb.an:                                            ; preds = %.lr.ph238, %._crit_edge
  %.072237 = phi i64 [ 0, %.lr.ph238 ], [ %i.hs, %._crit_edge ] ; 10 uses
  %i.gv = mul i64 %.072237, %i.ec
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %.072237
  store i64 %i.gv, ptr %i.gw, align 8, !tbaa !20
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %.072237
  store i64 %.072237, ptr %i.gx, align 8, !tbaa !20
  br i1 %i.fy, label %.lr.ph235, label %._crit_edge

.lr.ph235:                                        ; preds = %bb.an
  %i.gy = load i32, ptr %5, align 4, !tbaa !71
  %narrow.i142 = call i32 @llvm.smax.i32(i32 %i.gy, i32 1)
  %i.gz = load i32, ptr %20, align 4
  %narrow.i160 = call i32 @llvm.smax.i32(i32 %i.gz, i32 1)
  %i.ha = load i32, ptr %21, align 4
  %narrow.i169 = call i32 @llvm.smax.i32(i32 %i.ha, i32 1)
  %.first_iter = icmp ult i32 %i.fx, %narrow.i142
  %.first_iter246 = icmp samesign ult i32 %i.fx, %narrow.i160
  %.first_iter247 = icmp samesign ult i32 %i.fx, %narrow.i169
  br label %bb.ao

._crit_edge:                                      ; preds = %bb.be, %bb.an
  %.071.lcssa = phi i64 [ 0, %bb.an ], [ %i.iw, %bb.be ] ; 2 uses
  %.070.lcssa = phi i64 [ 0, %bb.an ], [ %i.jm, %bb.be ] ; 2 uses
  %i.hb = load ptr, ptr %0, align 8, !tbaa !93
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %.072237
  store i64 %.071.lcssa, ptr %i.hc, align 8, !tbaa !20
  %i.hd = load ptr, ptr %i.bq, align 8, !tbaa !93
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %.072237
  store i64 %.070.lcssa, ptr %i.he, align 8, !tbaa !20
  %i.hf = load i32, ptr %i.as, align 4, !tbaa !94
  %i.hg = load i32, ptr %i.aw, align 4, !tbaa !96 ; 2 uses
  %i.hh = mul nsw i32 %i.hg, %i.hf
  %i.hi = sext i32 %i.hh to i64
  %i.hj = udiv i64 %.071.lcssa, %i.hi
  %i.hk = load ptr, ptr %i.cq, align 8, !tbaa !93
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %.072237
  store i64 %i.hj, ptr %i.hl, align 8, !tbaa !20
  %i.hm = load i32, ptr %i.au, align 8, !tbaa !95
  %i.hn = mul nsw i32 %i.hm, %i.hg
  %i.ho = sext i32 %i.hn to i64
  %i.hp = udiv i64 %.070.lcssa, %i.ho
  %i.hq = load ptr, ptr %i.dd, align 8, !tbaa !93
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %.072237
  store i64 %i.hp, ptr %i.hr, align 8, !tbaa !20
  %i.hs = add nuw i64 %.072237, 1                 ; 2 uses
  %i.ht = load i64, ptr %i.bd, align 8, !tbaa !92
  %i.hu = icmp ult i64 %i.hs, %i.ht
  br i1 %i.hu, label %bb.an, label %._crit_edge239, !llvm.loop !223

bb.ao:                                            ; preds = %.lr.ph235, %bb.be
  %indvars.iv243 = phi i64 [ %i.ga, %.lr.ph235 ], [ %indvars.iv.next244, %bb.be ] ; 7 uses
  %.070233 = phi i64 [ 0, %.lr.ph235 ], [ %i.jm, %bb.be ]
  %.071232 = phi i64 [ 0, %.lr.ph235 ], [ %i.iw, %bb.be ]
  %.073231 = phi i64 [ %.072237, %.lr.ph235 ], [ %i.ie, %bb.be ] ; 2 uses
  br i1 %.first_iter, label %bb.as, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.72, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %.noexc147 unwind label %bb.bf

.noexc147:                                        ; preds = %bb.ap
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.73, i32 noundef 97) #27
          to label %bb.aq unwind label %bb.ar

bb.aq:                                            ; preds = %.noexc147
  unreachable

bb.ar:                                            ; preds = %.noexc147
  %i.hv = landingpad { ptr, i32 }
          cleanup
  %i.hw = load ptr, ptr %10, align 8, !tbaa !74   ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.hy = icmp eq ptr %i.hw, %i.hx
  br i1 %i.hy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i145, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i144: ; preds = %bb.ar
  %i.hz = load i64, ptr %i.hx, align 8, !tbaa !75
  %i.ia = add i64 %i.hz, 1
  call void @_ZdlPvm(ptr noundef %i.hw, i64 noundef %i.ia) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i145

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i145: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i144
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %.body

bb.as:                                            ; preds = %bb.ao
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %indvars.iv243
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !59 ; 2 uses
  %i.id = sext i32 %i.ic to i64
  %i.ie = udiv i64 %.073231, %i.id                ; 2 uses
  %i.if = zext i32 %i.ic to i64
  %i.ig = mul i64 %i.ie, %i.if
  %i.ih = sub i64 %.073231, %i.ig                 ; 2 uses
  br i1 %.first_iter246, label %bb.aw, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.72, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %.noexc165 unwind label %bb.bg

.noexc165:                                        ; preds = %bb.at
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.73, i32 noundef 97) #27
          to label %bb.au unwind label %bb.av

bb.au:                                            ; preds = %.noexc165
  unreachable

bb.av:                                            ; preds = %.noexc165
  %i.ii = landingpad { ptr, i32 }
          cleanup
  %i.ij = load ptr, ptr %8, align 8, !tbaa !74    ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.il = icmp eq ptr %i.ij, %i.ik
  br i1 %i.il, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i163, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i162

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i162: ; preds = %bb.av
  %i.im = load i64, ptr %i.ik, align 8, !tbaa !75
  %i.in = add i64 %i.im, 1
  call void @_ZdlPvm(ptr noundef %i.ij, i64 noundef %i.in) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i163

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i163: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i162
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %.body

bb.aw:                                            ; preds = %bb.as
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv243
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !59
  %i.iq = icmp eq i32 %i.ip, 1
  br i1 %i.iq, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %sext = shl i64 %i.ih, 32
  %i.ir = ashr exact i64 %sext, 32
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0190.0203304, i64 %indvars.iv243
  %i.it = load i64, ptr %i.is, align 8, !tbaa !20
  %i.iu = mul i64 %i.it, %i.ir
  br label %bb.ay

bb.ay:                                            ; preds = %bb.aw, %bb.ax
  %i.iv = phi i64 [ %i.iu, %bb.ax ], [ 0, %bb.aw ]
  %i.iw = add i64 %i.iv, %.071232                 ; 2 uses
  br i1 %.first_iter247, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.72, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %.noexc174 unwind label %bb.bg

.noexc174:                                        ; preds = %bb.az
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.73, i32 noundef 97) #27
          to label %bb.ba unwind label %bb.bb

bb.ba:                                            ; preds = %.noexc174
  unreachable

bb.bb:                                            ; preds = %.noexc174
  %i.ix = landingpad { ptr, i32 }
          cleanup
  %i.iy = load ptr, ptr %6, align 8, !tbaa !74    ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ja = icmp eq ptr %i.iy, %i.iz
  br i1 %i.ja, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i172, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i171
end_hunk_0
