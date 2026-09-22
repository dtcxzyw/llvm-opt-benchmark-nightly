Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/DXFLoader?download=true
inline.NumInlined: 1765
inline.NumDeleted: 766
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6Assimp11DXFImporter11Parse3DFaceERNS_3DXF10LineReaderERNS1_8FileDataE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #26
  br label %bb.ad

bb.s:                                             ; preds = %bb.n
  %i.cv = load ptr, ptr %i.bo, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #26
  store float 0.000000e+00, ptr %i.j, align 4
  %i.cw = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %i.cv, ptr noundef nonnull align 4 dereferenceable(4) %i.j, i1 noundef zeroext true) ; 0 uses
  %i.cx = load float, ptr %i.j, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #26
  br label %bb.ad

bb.t:                                             ; preds = %bb.n
  %i.cy = load ptr, ptr %i.bo, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #26
  store float 0.000000e+00, ptr %i.i, align 4
  %i.cz = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %i.cy, ptr noundef nonnull align 4 dereferenceable(4) %i.i, i1 noundef zeroext true) ; 0 uses
  %i.da = load float, ptr %i.i, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #26
  br label %bb.ad

bb.u:                                             ; preds = %bb.n
  %i.db = load ptr, ptr %i.bo, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #26
  store float 0.000000e+00, ptr %i.h, align 4
  %i.dc = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %i.db, ptr noundef nonnull align 4 dereferenceable(4) %i.h, i1 noundef zeroext true) ; 0 uses
  %i.dd = load float, ptr %i.h, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26
  br label %bb.ad

bb.v:                                             ; preds = %bb.n
  %i.de = load ptr, ptr %i.bo, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #26
  store float 0.000000e+00, ptr %i.g, align 4
  %i.df = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %i.de, ptr noundef nonnull align 4 dereferenceable(4) %i.g, i1 noundef zeroext true) ; 0 uses
  %i.dg = load float, ptr %i.g, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  br label %bb.ad

bb.w:                                             ; preds = %bb.n
  %i.dh = load ptr, ptr %i.bo, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26
  store float 0.000000e+00, ptr %i.f, align 4
  %i.di = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %i.dh, ptr noundef nonnull align 4 dereferenceable(4) %i.f, i1 noundef zeroext true) ; 0 uses
  %i.dj = load float, ptr %i.f, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  br label %bb.ad

bb.x:                                             ; preds = %bb.n
  %i.dk = load ptr, ptr %i.bo, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  store float 0.000000e+00, ptr %i.e, align 4
  %i.dl = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %i.dk, ptr noundef nonnull align 4 dereferenceable(4) %i.e, i1 noundef zeroext true) ; 0 uses
  %i.dm = load float, ptr %i.e, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  br label %bb.ad

bb.y:                                             ; preds = %bb.n
  %i.dn = load ptr, ptr %i.bo, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  store float 0.000000e+00, ptr %i.d, align 4
  %i.do = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %i.dn, ptr noundef nonnull align 4 dereferenceable(4) %i.d, i1 noundef zeroext true) ; 0 uses
  %i.dp = load float, ptr %i.d, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  br label %bb.ad

bb.z:                                             ; preds = %bb.n
  %i.dq = load ptr, ptr %i.bo, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store float 0.000000e+00, ptr %i.c, align 4
  %i.dr = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %i.dq, ptr noundef nonnull align 4 dereferenceable(4) %i.c, i1 noundef zeroext true) ; 0 uses
  %i.ds = load float, ptr %i.c, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %bb.ad

bb.aa:                                            ; preds = %bb.n
  %i.dt = load ptr, ptr %i.bo, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store float 0.000000e+00, ptr %i.b, align 4
  %i.du = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %i.dt, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i1 noundef zeroext true) ; 0 uses
  %i.dv = load float, ptr %i.b, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %bb.ad

bb.ab:                                            ; preds = %bb.n
  %i.dw = load ptr, ptr %i.bo, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store float 0.000000e+00, ptr %i.a, align 4
  %i.dx = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %i.dw, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i1 noundef zeroext true) ; 0 uses
  %i.dy = load float, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.ad

bb.ac:                                            ; preds = %bb.n
  %i.dz = load ptr, ptr %i.bo, align 8            ; 2 uses
  %i.ea = load i8, ptr %i.dz, align 1             ; 2 uses
  %i.eb = add i8 %i.ea, -58
  %or.cond11.i.i = icmp ult i8 %i.eb, -10
  br i1 %or.cond11.i.i, label %_ZNK6Assimp3DXF10LineReader18ValueAsUnsignedIntEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ac, %.lr.ph.i.i
  %i.ec = phi i8 [ %i.eh, %.lr.ph.i.i ], [ %i.ea, %bb.ac ]
  %.013.i.i = phi i32 [ %i.ef, %.lr.ph.i.i ], [ 0, %bb.ac ]
  %.0812.i.i = phi ptr [ %i.eg, %.lr.ph.i.i ], [ %i.dz, %bb.ac ]
  %i.ed = mul i32 %.013.i.i, 10
  %narrow.i.i = add nsw i8 %i.ec, -48
  %i.ee = zext nneg i8 %narrow.i.i to i32
  %i.ef = add i32 %i.ed, %i.ee                    ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.0812.i.i, i64 1 ; 2 uses
  %i.eh = load i8, ptr %i.eg, align 1             ; 2 uses
  %i.ei = add i8 %i.eh, -58
  %or.cond.i.i = icmp ult i8 %i.ei, -10
  br i1 %or.cond.i.i, label %_ZNK6Assimp3DXF10LineReader18ValueAsUnsignedIntEv.exit.loopexit, label %.lr.ph.i.i, !llvm.loop !5

_ZNK6Assimp3DXF10LineReader18ValueAsUnsignedIntEv.exit.loopexit: ; preds = %.lr.ph.i.i
  %i.ej = and i32 %i.ef, 255
  %i.ek = zext nneg i32 %i.ej to i64
  br label %_ZNK6Assimp3DXF10LineReader18ValueAsUnsignedIntEv.exit

_ZNK6Assimp3DXF10LineReader18ValueAsUnsignedIntEv.exit: ; preds = %_ZNK6Assimp3DXF10LineReader18ValueAsUnsignedIntEv.exit.loopexit, %bb.ac
  %.0.lcssa.i.i = phi i64 [ 0, %bb.ac ], [ %i.ek, %_ZNK6Assimp3DXF10LineReader18ValueAsUnsignedIntEv.exit.loopexit ]
  %i.el = getelementptr inbounds nuw [16 x i8], ptr @_ZL20g_aclrDxfIndexColors, i64 %.0.lcssa.i.i
  %.sroa.0.0.copyload249 = load <4 x float>, ptr %i.el, align 16
  br label %bb.ad

bb.ad:                                            ; preds = %bb.n, %_ZNK6Assimp3DXF10LineReader18ValueAsUnsignedIntEv.exit, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p
  %.sroa.0.1252 = phi <4 x float> [ %.sroa.0.0, %bb.n ], [ %.sroa.0.0, %bb.p ], [ %.sroa.0.0, %bb.q ], [ %.sroa.0.0, %bb.r ], [ %.sroa.0.0, %bb.s ], [ %.sroa.0.0, %bb.t ], [ %.sroa.0.0, %bb.u ], [ %.sroa.0.0, %bb.v ], [ %.sroa.0.0, %bb.w ], [ %.sroa.0.0, %bb.x ], [ %.sroa.0.0, %bb.y ], [ %.sroa.0.0, %bb.z ], [ %.sroa.0.0, %bb.aa ], [ %.sroa.0.0, %bb.ab ], [ %.sroa.0.0.copyload249, %_ZNK6Assimp3DXF10LineReader18ValueAsUnsignedIntEv.exit ] ; 2 uses
  %i.em = phi float [ %i.cb, %bb.n ], [ %i.cb, %bb.p ], [ %i.cb, %bb.q ], [ %i.cu, %bb.r ], [ %i.cb, %bb.s ], [ %i.cb, %bb.t ], [ %i.cb, %bb.u ], [ %i.cb, %bb.v ], [ %i.cb, %bb.w ], [ %i.cb, %bb.x ], [ %i.cb, %bb.y ], [ %i.cb, %bb.z ], [ %i.cb, %bb.aa ], [ %i.cb, %bb.ab ], [ %i.cb, %_ZNK6Assimp3DXF10LineReader18ValueAsUnsignedIntEv.exit ] ; 2 uses
  %i.en = phi float [ %i.cc, %bb.n ], [ %i.cc, %bb.p ], [ %i.cc, %bb.q ], [ %i.cc, %bb.r ], [ %i.cx, %bb.s ], [ %i.cc, %bb.t ], [ %i.cc, %bb.u ], [ %i.cc, %bb.v ], [ %i.cc, %bb.w ], [ %i.cc, %bb.x ], [ %i.cc, %bb.y ], [ %i.cc, %bb.z ], [ %i.cc, %bb.aa ], [ %i.cc, %bb.ab ], [ %i.cc, %_ZNK6Assimp3DXF10LineReader18ValueAsUnsignedIntEv.exit ] ; 2 uses
  %i.eo = phi float [ %i.cd, %bb.n ], [ %i.cd, %bb.p ], [ %i.cd, %bb.q ], [ %i.cd, %bb.r ], [ %i.cd, %bb.s ], [ %i.da, %bb.t ], [ %i.cd, %bb.u ], [ %i.cd, %bb.v ], [ %i.cd, %bb.w ], [ %i.cd, %bb.x ], [ %i.cd, %bb.y ], [ %i.cd, %bb.z ], [ %i.cd, %bb.aa ], [ %i.cd, %bb.ab ], [ %i.cd, %_ZNK6Assimp3DXF10LineReader18ValueAsUnsignedIntEv.exit ] ; 2 uses
  %i.ep = phi float [ %i.ce, %bb.n ], [ %i.ce, %bb.p ], [ %i.ce, %bb.q ], [ %i.ce, %bb.r ], [ %i.ce, %bb.s ], [ %i.ce, %bb.t ], [ %i.dd, %bb.u ], [ %i.ce, %bb.v ], [ %i.ce, %bb.w ], [ %i.ce, %bb.x ], [ %i.ce, %bb.y ], [ %i.ce, %bb.z ], [ %i.ce, %bb.aa ], [ %i.ce, %bb.ab ], [ %i.ce, %_ZNK6Assimp3DXF10LineReader18ValueAsUnsignedIntEv.exit ] ; 2 uses
  %i.eq = phi float [ %i.cf, %bb.n ], [ %i.cf, %bb.p ], [ %i.cf, %bb.q ], [ %i.cf, %bb.r ], [ %i.cf, %bb.s ], [ %i.cf, %bb.t ], [ %i.cf, %bb.u ], [ %i.dg, %bb.v ], [ %i.cf, %bb.w ], [ %i.cf, %bb.x ], [ %i.cf, %bb.y ], [ %i.cf, %bb.z ], [ %i.cf, %bb.aa ], [ %i.cf, %bb.ab ], [ %i.cf, %_ZNK6Assimp3DXF10LineReader18ValueAsUnsignedIntEv.exit ] ; 2 uses
  %i.er = phi float [ %i.cg, %bb.n ], [ %i.cg, %bb.p ], [ %i.cg, %bb.q ], [ %i.cg, %bb.r ], [ %i.cg, %bb.s ], [ %i.cg, %bb.t ], [ %i.cg, %bb.u ], [ %i.cg, %bb.v ], [ %i.dj, %bb.w ], [ %i.cg, %bb.x ], [ %i.cg, %bb.y ], [ %i.cg, %bb.z ], [ %i.cg, %bb.aa ], [ %i.cg, %bb.ab ], [ %i.cg, %_ZNK6Assimp3DXF10LineReader18ValueAsUnsignedIntEv.exit ] ; 2 uses
  %i.es = phi float [ %i.ch, %bb.n ], [ %i.ch, %bb.p ], [ %i.ch, %bb.q ], [ %i.ch, %bb.r ], [ %i.ch, %bb.s ], [ %i.ch, %bb.t ], [ %i.ch, %bb.u ], [ %i.ch, %bb.v ], [ %i.ch, %bb.w ], [ %i.dm, %bb.x ], [ %i.ch, %bb.y ], [ %i.ch, %bb.z ], [ %i.ch, %bb.aa ], [ %i.ch, %bb.ab ], [ %i.ch, %_ZNK6Assimp3DXF10LineReader18ValueAsUnsignedIntEv.exit ] ; 2 uses
  %i.et = phi float [ %i.ci, %bb.n ], [ %i.ci, %bb.p ], [ %i.ci, %bb.q ], [ %i.ci, %bb.r ], [ %i.ci, %bb.s ], [ %i.ci, %bb.t ], [ %i.ci, %bb.u ], [ %i.ci, %bb.v ], [ %i.ci, %bb.w ], [ %i.ci, %bb.x ], [ %i.dp, %bb.y ], [ %i.ci, %bb.z ], [ %i.ci, %bb.aa ], [ %i.ci, %bb.ab ], [ %i.ci, %_ZNK6Assimp3DXF10LineReader18ValueAsUnsignedIntEv.exit ] ; 2 uses
  %i.eu = phi float [ %i.cj, %bb.n ], [ %i.cj, %bb.p ], [ %i.cj, %bb.q ], [ %i.cj, %bb.r ], [ %i.cj, %bb.s ], [ %i.cj, %bb.t ], [ %i.cj, %bb.u ], [ %i.cj, %bb.v ], [ %i.cj, %bb.w ], [ %i.cj, %bb.x ], [ %i.cj, %bb.y ], [ %i.ds, %bb.z ], [ %i.cj, %bb.aa ], [ %i.cj, %bb.ab ], [ %i.cj, %_ZNK6Assimp3DXF10LineReader18ValueAsUnsignedIntEv.exit ] ; 2 uses
  %i.ev = phi float [ %i.ck, %bb.n ], [ %i.ck, %bb.p ], [ %i.ck, %bb.q ], [ %i.ck, %bb.r ], [ %i.ck, %bb.s ], [ %i.ck, %bb.t ], [ %i.ck, %bb.u ], [ %i.ck, %bb.v ], [ %i.ck, %bb.w ], [ %i.ck, %bb.x ], [ %i.ck, %bb.y ], [ %i.ck, %bb.z ], [ %i.dv, %bb.aa ], [ %i.ck, %bb.ab ], [ %i.ck, %_ZNK6Assimp3DXF10LineReader18ValueAsUnsignedIntEv.exit ] ; 2 uses
  %i.ew = phi float [ %i.cl, %bb.n ], [ %i.cl, %bb.p ], [ %i.cl, %bb.q ], [ %i.cl, %bb.r ], [ %i.cl, %bb.s ], [ %i.cl, %bb.t ], [ %i.cl, %bb.u ], [ %i.cl, %bb.v ], [ %i.cl, %bb.w ], [ %i.cl, %bb.x ], [ %i.cl, %bb.y ], [ %i.cl, %bb.z ], [ %i.cl, %bb.aa ], [ %i.dy, %bb.ab ], [ %i.cl, %_ZNK6Assimp3DXF10LineReader18ValueAsUnsignedIntEv.exit ] ; 2 uses
  %i.ex = phi float [ %i.cm, %bb.n ], [ %i.cm, %bb.p ], [ %i.cr, %bb.q ], [ %i.cm, %bb.r ], [ %i.cm, %bb.s ], [ %i.cm, %bb.t ], [ %i.cm, %bb.u ], [ %i.cm, %bb.v ], [ %i.cm, %bb.w ], [ %i.cm, %bb.x ], [ %i.cm, %bb.y ], [ %i.cm, %bb.z ], [ %i.cm, %bb.aa ], [ %i.cm, %bb.ab ], [ %i.cm, %_ZNK6Assimp3DXF10LineReader18ValueAsUnsignedIntEv.exit ] ; 2 uses
  %.sroa.0.1 = phi i8 [ %.sroa.0.071, %bb.n ], [ %.sroa.0.071, %bb.p ], [ %.sroa.0.071, %bb.q ], [ %.sroa.0.071, %bb.r ], [ %.sroa.0.071, %bb.s ], [ %.sroa.0.071, %bb.t ], [ %.sroa.0.071, %bb.u ], [ %.sroa.0.071, %bb.v ], [ 1, %bb.w ], [ 1, %bb.x ], [ 1, %bb.y ], [ %.sroa.0.071, %bb.z ], [ %.sroa.0.071, %bb.aa ], [ %.sroa.0.071, %bb.ab ], [ %.sroa.0.071, %_ZNK6Assimp3DXF10LineReader18ValueAsUnsignedIntEv.exit ] ; 2 uses
  %.sroa.8.1 = phi i8 [ %.sroa.8.072, %bb.n ], [ %.sroa.8.072, %bb.p ], [ %.sroa.8.072, %bb.q ], [ %.sroa.8.072, %bb.r ], [ %.sroa.8.072, %bb.s ], [ %.sroa.8.072, %bb.t ], [ %.sroa.8.072, %bb.u ], [ %.sroa.8.072, %bb.v ], [ %.sroa.8.072, %bb.w ], [ %.sroa.8.072, %bb.x ], [ %.sroa.8.072, %bb.y ], [ 1, %bb.z ], [ 1, %bb.aa ], [ 1, %bb.ab ], [ %.sroa.8.072, %_ZNK6Assimp3DXF10LineReader18ValueAsUnsignedIntEv.exit ] ; 2 uses
  %.sroa.14.1 = phi i1 [ %.sroa.14.073, %bb.n ], [ %.sroa.14.073, %bb.p ], [ true, %bb.q ], [ true, %bb.r ], [ true, %bb.s ], [ %.sroa.14.073, %bb.t ], [ %.sroa.14.073, %bb.u ], [ %.sroa.14.073, %bb.v ], [ %.sroa.14.073, %bb.w ], [ %.sroa.14.073, %bb.x ], [ %.sroa.14.073, %bb.y ], [ %.sroa.14.073, %bb.z ], [ %.sroa.14.073, %bb.aa ], [ %.sroa.14.073, %bb.ab ], [ %.sroa.14.073, %_ZNK6Assimp3DXF10LineReader18ValueAsUnsignedIntEv.exit ] ; 2 uses
  %.sroa.18.1 = phi i1 [ %.sroa.18.074, %bb.n ], [ %.sroa.18.074, %bb.p ], [ %.sroa.18.074, %bb.q ], [ %.sroa.18.074, %bb.r ], [ %.sroa.18.074, %bb.s ], [ true, %bb.t ], [ true, %bb.u ], [ true, %bb.v ], [ %.sroa.18.074, %bb.w ], [ %.sroa.18.074, %bb.x ], [ %.sroa.18.074, %bb.y ], [ %.sroa.18.074, %bb.z ], [ %.sroa.18.074, %bb.aa ], [ %.sroa.18.074, %bb.ab ], [ %.sroa.18.074, %_ZNK6Assimp3DXF10LineReader18ValueAsUnsignedIntEv.exit ] ; 2 uses
  %i.ey = call noundef nonnull align 8 dereferenceable(108) ptr @_ZN6Assimp3DXF10LineReaderppEv(ptr noundef nonnull align 8 dereferenceable(108) %1) ; 0 uses
  %i.ez = load i32, ptr %i.bk, align 8
  %i.fa = icmp sgt i32 %i.ez, 1
  br i1 %i.fa, label %._crit_edge, label %bb.n, !llvm.loop !58

._crit_edge:                                      ; preds = %bb.ad, %bb.n
  %.sroa.0.2 = phi <4 x float> [ %.sroa.0.1252, %bb.ad ], [ %.sroa.0.0, %bb.n ] ; 2 uses
  %.lcssa233.sink.a = phi float [ %i.ew, %bb.ad ], [ %i.cl, %bb.n ] ; 2 uses
  %.lcssa234.sink.a = phi float [ %i.ev, %bb.ad ], [ %i.ck, %bb.n ] ; 2 uses
  %.lcssa235.sink.a = phi float [ %i.eu, %bb.ad ], [ %i.cj, %bb.n ] ; 2 uses
  %.lcssa236.sink.a = phi float [ %i.et, %bb.ad ], [ %i.ci, %bb.n ] ; 2 uses
  %.lcssa237.sink.a = phi float [ %i.es, %bb.ad ], [ %i.ch, %bb.n ] ; 2 uses
  %.lcssa238.sink.a = phi float [ %i.er, %bb.ad ], [ %i.cg, %bb.n ] ; 2 uses
  %.lcssa239.sink.a = phi float [ %i.eq, %bb.ad ], [ %i.cf, %bb.n ]
  %.lcssa240.sink.a = phi float [ %i.ep, %bb.ad ], [ %i.ce, %bb.n ]
  %.lcssa241.sink.a = phi float [ %i.eo, %bb.ad ], [ %i.cd, %bb.n ]
  %.lcssa242.sink.a = phi float [ %i.en, %bb.ad ], [ %i.cc, %bb.n ]
  %.lcssa243.sink = phi float [ %i.em, %bb.ad ], [ %i.cb, %bb.n ]
  %.lcssa70 = phi float [ %i.ex, %bb.ad ], [ %i.cm, %bb.n ]
  %.sroa.0.0.lcssa = phi i8 [ %.sroa.0.1, %bb.ad ], [ %.sroa.0.071, %bb.n ] ; 2 uses
  %.sroa.8.0.lcssa = phi i8 [ %.sroa.8.1, %bb.ad ], [ %.sroa.8.072, %bb.n ] ; 2 uses
  %.sroa.14.0.lcssa = phi i1 [ %.sroa.14.1, %bb.ad ], [ %.sroa.14.073, %bb.n ] ; 2 uses
  %.sroa.18.0.lcssa = phi i1 [ %.sroa.18.1, %bb.ad ], [ %.sroa.18.074, %bb.n ] ; 2 uses
  store float %.lcssa233.sink.a, ptr %i.bp, align 4
  store float %.lcssa234.sink.a, ptr %i.bq, align 8
  store float %.lcssa235.sink.a, ptr %i.br, align 4
  store float %.lcssa236.sink.a, ptr %i.bs, align 16
  store float %.lcssa237.sink.a, ptr %i.bt, align 4
  store float %.lcssa238.sink.a, ptr %i.bu, align 8
  store float %.lcssa239.sink.a, ptr %i.bv, align 4
  store float %.lcssa240.sink.a, ptr %i.bw, align 16
  store float %.lcssa241.sink.a, ptr %i.bx, align 4
  store float %.lcssa242.sink.a, ptr %i.by, align 8
  store float %.lcssa243.sink, ptr %i.bz, align 4
  store float %.lcssa70, ptr %4, align 16
  %i.fb = fcmp oeq float %.lcssa235.sink.a, %.lcssa238.sink.a
  %i.fc = fcmp oeq float %.lcssa234.sink.a, %.lcssa237.sink.a
  %or.cond244 = select i1 %i.fb, i1 %i.fc, i1 false
  br i1 %or.cond244, label %_ZNK10aiVector3tIfEeqERKS0_.exit, label %_ZNK10aiVector3tIfEeqERKS0_.exit.thread

_ZNK10aiVector3tIfEeqERKS0_.exit:                 ; preds = %._crit_edge, %.thread193
  %.sroa.0.3 = phi <4 x float> [ splat (float 6.000000e-01), %.thread193 ], [ %.sroa.0.2, %._crit_edge ]
  %i.fd = phi float [ 0.000000e+00, %.thread193 ], [ %.lcssa236.sink.a, %._crit_edge ]
  %i.fe = phi float [ 0.000000e+00, %.thread193 ], [ %.lcssa233.sink.a, %._crit_edge ]
  %.sroa.0.0.lcssa187201 = phi i8 [ 0, %.thread193 ], [ %.sroa.0.0.lcssa, %._crit_edge ]
  %.sroa.8.0.lcssa188200 = phi i8 [ 0, %.thread193 ], [ %.sroa.8.0.lcssa, %._crit_edge ]
  %.sroa.14.0.lcssa190199 = phi i1 [ false, %.thread193 ], [ %.sroa.14.0.lcssa, %._crit_edge ]
  %.sroa.18.0.lcssa192198 = phi i1 [ false, %.thread193 ], [ %.sroa.18.0.lcssa, %._crit_edge ]
  %i.ff = fcmp oeq float %i.fe, %i.fd
  %cond.fr = freeze i1 %i.ff
  %spec.select = select i1 %cond.fr, i8 0, i8 %.sroa.8.0.lcssa188200
  br label %_ZNK10aiVector3tIfEeqERKS0_.exit.thread

_ZNK10aiVector3tIfEeqERKS0_.exit.thread:          ; preds = %_ZNK10aiVector3tIfEeqERKS0_.exit, %._crit_edge
  %.sroa.0.4 = phi <4 x float> [ %.sroa.0.3, %_ZNK10aiVector3tIfEeqERKS0_.exit ], [ %.sroa.0.2, %._crit_edge ] ; 2 uses
  %.sroa.18.0.lcssa191 = phi i1 [ %.sroa.18.0.lcssa192198, %_ZNK10aiVector3tIfEeqERKS0_.exit ], [ %.sroa.18.0.lcssa, %._crit_edge ]
  %.sroa.14.0.lcssa189 = phi i1 [ %.sroa.14.0.lcssa190199, %_ZNK10aiVector3tIfEeqERKS0_.exit ], [ %.sroa.14.0.lcssa, %._crit_edge ]
  %.sroa.0.0.lcssa186 = phi i8 [ %.sroa.0.0.lcssa187201, %_ZNK10aiVector3tIfEeqERKS0_.exit ], [ %.sroa.0.0.lcssa, %._crit_edge ] ; 3 uses
  %i.fg = phi i8 [ %spec.select, %_ZNK10aiVector3tIfEeqERKS0_.exit ], [ %.sroa.8.0.lcssa, %._crit_edge ] ; 3 uses
  %i.fh = trunc nuw i8 %i.fg to i1
  %.not = xor i1 %i.fh, true
  %i.fi = trunc nuw i8 %.sroa.0.0.lcssa186 to i1
  %or.cond = select i1 %.not, i1 true, i1 %i.fi
  %or.cond5 = select i1 %or.cond, i1 %.sroa.14.0.lcssa189, i1 false
  %or.cond8 = select i1 %or.cond5, i1 %.sroa.18.0.lcssa191, i1 false
  br i1 %or.cond8, label %bb.al, label %bb.ae

bb.ae:                                            ; preds = %_ZNK10aiVector3tIfEeqERKS0_.exit.thread
  %i.fj = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.fj, ptr noundef nonnull @.str.54)
  %i.fk = load ptr, ptr %i.m, align 8
  %i.fl = getelementptr inbounds i8, ptr %i.fk, i64 -88 ; 2 uses
  %i.fm = load ptr, ptr %i.fl, align 8            ; 2 uses
  %i.fn = getelementptr inbounds i8, ptr %i.fm, i64 -16
  store ptr %i.fn, ptr %i.fl, align 8
  %i.fo = getelementptr inbounds i8, ptr %i.fm, i64 -8
  %i.fp = load ptr, ptr %i.fo, align 8            ; 8 uses
  %.not.i.i.i46.a = icmp eq ptr %i.fp, null
  br i1 %.not.i.i.i46.a, label %_ZNSt6vectorISt10shared_ptrIN6Assimp3DXF8PolyLineEESaIS4_EE8pop_backEv.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8 ; 4 uses
  %i.fr = load atomic i64, ptr %i.fq acquire, align 8 ; 2 uses
  %i.fs = icmp eq i64 %i.fr, 4294967297
  %i.ft = trunc i64 %i.fr to i32                  ; 2 uses
  br i1 %i.fs, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.fq, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fp, i64 12
  store i32 0, ptr %i.fu, align 4
  %i.fv = load ptr, ptr %i.fp, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %i.fx = load ptr, ptr %i.fw, align 8
  call void %i.fx(ptr noundef nonnull align 8 dereferenceable(16) %i.fp) #26, !inline_history !11
  %i.fy = load ptr, ptr %i.fp, align 8
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 24
  %i.ga = load ptr, ptr %i.fz, align 8
  call void %i.ga(ptr noundef nonnull align 8 dereferenceable(16) %i.fp) #26, !inline_history !11
  br label %_ZNSt6vectorISt10shared_ptrIN6Assimp3DXF8PolyLineEESaIS4_EE8pop_backEv.exit

bb.ah:                                            ; preds = %bb.af
  %i.gb = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i = icmp eq i8 %i.gb, 0
  br i1 %.not.i.i.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gc = add nsw i32 %i.ft, -1
  store i32 %i.gc, ptr %i.fq, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.gd = atomicrmw volatile add ptr %i.fq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.aj, %bb.ai
  %.0.i.i.i.i.i = phi i32 [ %i.ft, %bb.ai ], [ %i.gd, %bb.aj ]
  %i.ge = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ge, label %bb.ak, label %_ZNSt6vectorISt10shared_ptrIN6Assimp3DXF8PolyLineEESaIS4_EE8pop_backEv.exit, !prof !16

bb.ak:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fp) #26
  br label %_ZNSt6vectorISt10shared_ptrIN6Assimp3DXF8PolyLineEESaIS4_EE8pop_backEv.exit

bb.al:                                            ; preds = %_ZNK10aiVector3tIfEeqERKS0_.exit.thread
  %5 = or disjoint i8 %.sroa.0.0.lcssa186, 2
  %narrow = add nuw nsw i8 %5, %i.fg
  %i.gf = zext nneg i8 %narrow to i32             ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.bj, i64 72 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.bj, i64 80 ; 4 uses
  %i.gi = load ptr, ptr %i.gh, align 8            ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.bj, i64 88 ; 3 uses
  %i.gk = load ptr, ptr %i.gj, align 8
  %.not.i = icmp eq ptr %i.gi, %i.gk
  br i1 %.not.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  store i32 %i.gf, ptr %i.gi, align 4
  %i.gl = load ptr, ptr %i.gh, align 8
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 4
  store ptr %i.gm, ptr %i.gh, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.an:                                            ; preds = %bb.al
  %i.gn = load ptr, ptr %i.gg, align 8            ; 4 uses
  %i.go = ptrtoint ptr %i.gi to i64
  %i.gp = ptrtoint ptr %i.gn to i64               ; 2 uses
  %i.gq = sub i64 %i.go, %i.gp                    ; 5 uses
  %i.gr = icmp eq i64 %i.gq, 9223372036854775804
  br i1 %i.gr, label %bb.ao, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.ao:                                            ; preds = %bb.an
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.78) #28
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.an
  %i.gs = ashr exact i64 %i.gq, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.gs, i64 1)
  %i.gt = add nsw i64 %.sroa.speculated.i.i.i, %i.gs ; 2 uses
  %i.gu = icmp ult i64 %i.gt, %i.gs
  %i.gv = call i64 @llvm.umin.i64(i64 %i.gt, i64 2305843009213693951)
  %i.gw = select i1 %i.gu, i64 2305843009213693951, i64 %i.gv ; 3 uses
  %.not.i.i.i47 = icmp ne i64 %i.gw, 0
  call void @llvm.assume(i1 %.not.i.i.i47)
  %i.gx = shl nuw nsw i64 %i.gw, 2
  %i.gy = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gx) #27 ; 4 uses
  %i.gz = getelementptr inbounds i8, ptr %i.gy, i64 %i.gq ; 2 uses
  store i32 %i.gf, ptr %i.gz, align 4
  %i.ha = icmp sgt i64 %i.gq, 0
  br i1 %i.ha, label %bb.ap, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.ap:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.gy, ptr align 4 %i.gn, i64 %i.gq, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.ap, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 4
  %.not.i17.i.i = icmp eq ptr %i.gn, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  %i.hc = load ptr, ptr %i.gj, align 8
  %i.hd = ptrtoint ptr %i.hc to i64
  %i.he = sub i64 %i.hd, %i.gp
  call void @_ZdlPvm(ptr noundef nonnull %i.gn, i64 noundef %i.he) #30
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.aq, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  store ptr %i.gy, ptr %i.gg, align 8
  store ptr %i.hb, ptr %i.gh, align 8
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %i.gw
  store ptr %i.hf, ptr %i.gj, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %bb.am, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i
  %i.hg = getelementptr inbounds nuw i8, ptr %i.bj, i64 48 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 5 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.bj, i64 56 ; 4 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.bj, i64 64 ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.bj, i64 24 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.bj, i64 32 ; 4 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.bj, i64 40 ; 3 uses
  %6 = add nuw nsw i8 %.sroa.0.0.lcssa186, %i.fg
  %7 = add nuw nsw i8 %6, 2
  %wide.trip.count = zext i8 %7 to i64
  br label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit
  %indvars.iv = phi i64 [ 0, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %indvars.iv.next, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %i.ho = load ptr, ptr %i.hh, align 8
  %i.hp = load ptr, ptr %i.bj, align 8
  %i.hq = ptrtoint ptr %i.ho to i64
  %i.hr = ptrtoint ptr %i.hp to i64
  %i.hs = sub i64 %i.hq, %i.hr
  %i.ht = sdiv exact i64 %i.hs, 12
  %i.hu = trunc i64 %i.ht to i32                  ; 2 uses
  %i.hv = load ptr, ptr %i.hi, align 8            ; 3 uses
  %i.hw = load ptr, ptr %i.hj, align 8
  %.not.i.i48 = icmp eq ptr %i.hv, %i.hw
  br i1 %.not.i.i48, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  store i32 %i.hu, ptr %i.hv, align 4
  %i.hx = load ptr, ptr %i.hi, align 8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 4
  store ptr %i.hy, ptr %i.hi, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.at:                                            ; preds = %bb.ar
  %i.hz = load ptr, ptr %i.hg, align 8            ; 4 uses
  %i.ia = ptrtoint ptr %i.hv to i64
  %i.ib = ptrtoint ptr %i.hz to i64               ; 2 uses
  %i.ic = sub i64 %i.ia, %i.ib                    ; 5 uses
  %i.id = icmp eq i64 %i.ic, 9223372036854775804
  br i1 %i.id, label %bb.au, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i

bb.au:                                            ; preds = %bb.at
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.78) #28
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.at
  %i.ie = ashr exact i64 %i.ic, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ie, i64 1)
  %i.if = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ie ; 2 uses
  %i.ig = icmp ult i64 %i.if, %i.ie
  %i.ih = call i64 @llvm.umin.i64(i64 %i.if, i64 2305843009213693951)
  %i.ii = select i1 %i.ig, i64 2305843009213693951, i64 %i.ih ; 3 uses
  %.not.i.i.i.i49 = icmp ne i64 %i.ii, 0
  call void @llvm.assume(i1 %.not.i.i.i.i49)
  %i.ij = shl nuw nsw i64 %i.ii, 2
  %i.ik = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ij) #27 ; 4 uses
  %i.il = getelementptr inbounds i8, ptr %i.ik, i64 %i.ic ; 2 uses
  store i32 %i.hu, ptr %i.il, align 4
  %i.im = icmp sgt i64 %i.ic, 0
  br i1 %i.im, label %bb.av, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

bb.av:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ik, ptr align 4 %i.hz, i64 %i.ic, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.av, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %i.in = getelementptr inbounds nuw i8, ptr %i.il, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.hz, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  %i.io = load ptr, ptr %i.hj, align 8
  %i.ip = ptrtoint ptr %i.io to i64
  %i.iq = sub i64 %i.ip, %i.ib
  call void @_ZdlPvm(ptr noundef nonnull %i.hz, i64 noundef %i.iq) #30
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i: ; preds = %bb.aw, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ik, ptr %i.hg, align 8
  store ptr %i.in, ptr %i.hi, align 8
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %i.ii
  store ptr %i.ir, ptr %i.hj, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

_ZNSt6vectorIjSaIjEE9push_backEOj.exit:           ; preds = %bb.as, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i
  %i.is = getelementptr inbounds nuw [12 x i8], ptr %4, i64 %indvars.iv ; 2 uses
  %i.it = load ptr, ptr %i.hh, align 8            ; 5 uses
  %i.iu = load ptr, ptr %i.hk, align 8
  %.not.i50 = icmp eq ptr %i.it, %i.iu
  br i1 %.not.i50, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.it, ptr noundef nonnull align 4 dereferenceable(12) %i.is, i64 12, i1 false)
  %i.iv = load ptr, ptr %i.hh, align 8
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 12
  store ptr %i.iw, ptr %i.hh, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit

bb.ay:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  %i.ix = load ptr, ptr %i.bj, align 8            ; 5 uses
  %i.iy = ptrtoint ptr %i.it to i64
  %i.iz = ptrtoint ptr %i.ix to i64               ; 2 uses
  %i.ja = sub i64 %i.iy, %i.iz                    ; 3 uses
  %i.jb = icmp eq i64 %i.ja, 9223372036854775800
  br i1 %i.jb, label %bb.az, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.az:                                            ; preds = %bb.ay
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.78) #28
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ay
  %i.jc = sdiv exact i64 %i.ja, 12                ; 3 uses
  %.sroa.speculated.i.i.i51 = call i64 @llvm.umax.i64(i64 %i.jc, i64 1)
  %i.jd = add nsw i64 %.sroa.speculated.i.i.i51, %i.jc ; 2 uses
  %i.je = icmp ult i64 %i.jd, %i.jc
  %i.jf = call i64 @llvm.umin.i64(i64 %i.jd, i64 768614336404564650)
  %i.jg = select i1 %i.je, i64 768614336404564650, i64 %i.jf ; 3 uses
  %.not.i.i.i52 = icmp ne i64 %i.jg, 0
  call void @llvm.assume(i1 %.not.i.i.i52)
  %i.jh = mul nuw nsw i64 %i.jg, 12
  %i.ji = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jh) #27 ; 5 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 %i.ja
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.jj, ptr noundef nonnull align 4 dereferenceable(12) %i.is, i64 12, i1 false)
  %.not10.i.i.i.i.i = icmp eq ptr %i.ix, %i.it
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.jl, %.lr.ph.i.i.i.i.i ], [ %i.ji, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.jk, %.lr.ph.i.i.i.i.i ], [ %i.ix, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i, i64 12, i1 false), !alias.scope !66
  %i.jk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 12 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.jk, %i.it
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !10

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ji, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.jl, %.lr.ph.i.i.i.i.i ]
  %i.jm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 12
  %.not.i23.i.i = icmp eq ptr %i.ix, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  %i.jn = load ptr, ptr %i.hk, align 8
  %i.jo = ptrtoint ptr %i.jn to i64
  %i.jp = sub i64 %i.jo, %i.iz
  call void @_ZdlPvm(ptr noundef nonnull %i.ix, i64 noundef %i.jp) #30
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.ba, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.ji, ptr %i.bj, align 8
  store ptr %i.jm, ptr %i.hh, align 8
  %i.jq = getelementptr inbounds nuw [12 x i8], ptr %i.ji, i64 %i.jg
  store ptr %i.jq, ptr %i.hk, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.ax, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.jr = load ptr, ptr %i.hm, align 8            ; 5 uses
  %i.js = load ptr, ptr %i.hn, align 8
  %.not.i53 = icmp eq ptr %i.jr, %i.js
  br i1 %.not.i53, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit
  store <4 x float> %.sroa.0.4, ptr %i.jr, align 4
  %i.jt = load ptr, ptr %i.hm, align 8
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  store ptr %i.ju, ptr %i.hm, align 8
  br label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit

bb.bc:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit
  %i.jv = load ptr, ptr %i.hl, align 8            ; 5 uses
  %i.jw = ptrtoint ptr %i.jr to i64
  %i.jx = ptrtoint ptr %i.jv to i64               ; 2 uses
  %i.jy = sub i64 %i.jw, %i.jx                    ; 3 uses
  %i.jz = icmp eq i64 %i.jy, 9223372036854775792
  br i1 %i.jz, label %bb.bd, label %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.bd:                                            ; preds = %bb.bc
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.78) #28
  unreachable

_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bc
  %i.ka = ashr exact i64 %i.jy, 4                 ; 3 uses
  %.sroa.speculated.i.i.i54 = call i64 @llvm.umax.i64(i64 %i.ka, i64 1)
  %i.kb = add nsw i64 %.sroa.speculated.i.i.i54, %i.ka ; 2 uses
  %i.kc = icmp ult i64 %i.kb, %i.ka
  %i.kd = call i64 @llvm.umin.i64(i64 %i.kb, i64 576460752303423487)
  %i.ke = select i1 %i.kc, i64 576460752303423487, i64 %i.kd ; 3 uses
  %.not.i.i.i55 = icmp ne i64 %i.ke, 0
  call void @llvm.assume(i1 %.not.i.i.i55)
  %i.kf = shl nuw nsw i64 %i.ke, 4
  %i.kg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kf) #27 ; 5 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 %i.jy
  store <4 x float> %.sroa.0.4, ptr %i.kh, align 4
  %.not10.i.i.i.i.i56 = icmp eq ptr %i.jv, %i.jr
  br i1 %.not10.i.i.i.i.i56, label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i57

.lr.ph.i.i.i.i.i57:                               ; preds = %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i57
  %.012.i.i.i.i.i58 = phi ptr [ %i.kj, %.lr.ph.i.i.i.i.i57 ], [ %i.kg, %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i59 = phi ptr [ %i.ki, %.lr.ph.i.i.i.i.i57 ], [ %i.jv, %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.012.i.i.i.i.i58, ptr noundef nonnull align 4 dereferenceable(16) %.0911.i.i.i.i.i59, i64 16, i1 false), !alias.scope !67
  %i.ki = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i59, i64 16 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i58, i64 16 ; 2 uses
  %.not.i.i.i.i.i60 = icmp eq ptr %i.ki, %i.jr
  br i1 %.not.i.i.i.i.i60, label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i57, !llvm.loop !12

_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i57, %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i61 = phi ptr [ %i.kg, %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.kj, %.lr.ph.i.i.i.i.i57 ]
  %i.kk = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i61, i64 16
  %.not.i23.i.i62 = icmp eq ptr %i.jv, null
  br i1 %.not.i23.i.i62, label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.be
end_hunk_0
