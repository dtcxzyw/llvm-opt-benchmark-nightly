Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_debug_image?download=true
inline.NumInlined: 375
inline.NumDeleted: 161
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN3jxl19DumpPlaneNormalizedERKNS_14CompressParamsEPKcRKNS_5PlaneIfEE:bb.a
  %i.cu = phi i32 [ %.pre48.i, %.lr.ph39.2.i ], [ %i.do, %._crit_edge.2.i ]
  %.02437.2.i = phi i64 [ 0, %.lr.ph39.2.i ], [ %i.dp, %._crit_edge.2.i ] ; 3 uses
  %i.cv = load ptr, ptr %i.bn, align 8, !tbaa !69
  %i.cw = load i64, ptr %i.bo, align 8, !tbaa !68
  %i.cx = mul i64 %i.cw, %.02437.2.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cx ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.cy, i64 64) ]
  %i.cz = load i64, ptr %i.bp, align 8, !tbaa !68
  %i.da = mul i64 %i.cz, %.02437.2.i
  %i.db = load ptr, ptr %i.cs, align 8, !tbaa !69 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.db, i64 64) ]
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.da ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.dc, i64 64) ]
  %.not42.2.i = icmp eq i32 %i.cu, 0
  br i1 %.not42.2.i, label %._crit_edge.2.i, label %.lr.ph.2.i

.lr.ph.2.i:                                       ; preds = %bb.d, %.lr.ph.2.i
  %.036.2.i = phi i64 [ %i.dj, %.lr.ph.2.i ], [ 0, %bb.d ] ; 3 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %.036.2.i
  %i.de = load float, ptr %i.dd, align 4, !tbaa !70
  %i.df = fsub float %i.de, %.032.i
  %i.dg = fmul float %i.bm, %i.df
  %i.dh = fptoui float %i.dg to i8
  %i.di = getelementptr inbounds nuw i8, ptr %i.dc, i64 %.036.2.i
  store i8 %i.dh, ptr %i.di, align 1, !tbaa !80
  %i.dj = add nuw nsw i64 %.036.2.i, 1            ; 2 uses
  %i.dk = load i32, ptr %2, align 8, !tbaa !62    ; 2 uses
  %i.dl = zext i32 %i.dk to i64
  %i.dm = icmp samesign ult i64 %i.dj, %i.dl
  br i1 %i.dm, label %.lr.ph.2.i, label %._crit_edge.loopexit.2.i, !llvm.loop !191

._crit_edge.loopexit.2.i:                         ; preds = %.lr.ph.2.i
  %.pre49.i = load i32, ptr %i.a, align 4, !tbaa !63
  br label %._crit_edge.2.i

._crit_edge.2.i:                                  ; preds = %._crit_edge.loopexit.2.i, %bb.d
  %i.dn = phi i32 [ %.pre49.i, %._crit_edge.loopexit.2.i ], [ %i.ct, %bb.d ] ; 2 uses
  %i.do = phi i32 [ %i.dk, %._crit_edge.loopexit.2.i ], [ 0, %bb.d ]
  %i.dp = add nuw nsw i64 %.02437.2.i, 1          ; 2 uses
  %i.dq = zext i32 %i.dn to i64
  %i.dr = icmp samesign ult i64 %i.dp, %i.dq
  br i1 %i.dr, label %bb.d, label %._crit_edge40.2.i, !llvm.loop !192

._crit_edge40.2.i:                                ; preds = %._crit_edge.2.i, %._crit_edge40.1.i, %._crit_edge40.i, %bb.b
  %i.ds = call noundef nonnull align 8 dereferenceable(200) ptr @_ZN3jxl13ColorEncoding4SRGBEb(i1 noundef zeroext false) #13
  %i.dt = call fastcc i32 @_ZN3jxl12_GLOBAL__N_110DumpImageTIhEENS_6StatusERKNS_14CompressParamsEPKcRKNS_13ColorEncodingERKNS_6Image3IT_EE(ptr noundef nonnull readonly align 8 dereferenceable(648) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(200) %i.ds, ptr noundef nonnull align 8 dereferenceable(168) %4) #14 ; 2 uses
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bd) #13
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.av) #13
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.an) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %.pr.i = load i32, ptr %i.ak, align 8, !tbaa !83
  %i.du = icmp eq i32 %.pr.i, 0
  br i1 %i.du, label %bb.f, label %_ZN3jxl12_GLOBAL__N_120DumpPlaneNormalizedTIfEENS_6StatusERKNS_14CompressParamsEPKcRKNS_5PlaneIT_EE.exit

bb.e:                                             ; preds = %._crit_edge.i, %.lr.ph39.i
  %.pre46.i16 = phi i32 [ %.pre44.i, %.lr.ph39.i ], [ %.pre46.i, %._crit_edge.i ]
  %i.dv = phi i32 [ %i.bq, %.lr.ph39.i ], [ %i.ef, %._crit_edge.i ]
  %i.dw = phi i32 [ %.pre44.i, %.lr.ph39.i ], [ %i.eg, %._crit_edge.i ]
  %.02437.i = phi i64 [ 0, %.lr.ph39.i ], [ %i.eh, %._crit_edge.i ] ; 3 uses
  %i.dx = load ptr, ptr %i.bn, align 8, !tbaa !69
  %i.dy = load i64, ptr %i.bo, align 8, !tbaa !68
  %i.dz = mul i64 %i.dy, %.02437.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.dz ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ea, i64 64) ]
  %i.eb = load i64, ptr %i.bp, align 8, !tbaa !68
  %i.ec = mul i64 %i.eb, %.02437.i
  %i.ed = load ptr, ptr %i.br, align 8, !tbaa !69 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ed, i64 64) ]
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.ec ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ee, i64 64) ]
  %.not42.i = icmp eq i32 %i.dw, 0
  br i1 %.not42.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre45.i = load i32, ptr %i.a, align 4, !tbaa !63
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.e
  %.pre46.i = phi i32 [ %i.er, %._crit_edge.loopexit.i ], [ %.pre46.i16, %bb.e ] ; 3 uses
  %i.ef = phi i32 [ %.pre45.i, %._crit_edge.loopexit.i ], [ %i.dv, %bb.e ] ; 4 uses
  %i.eg = phi i32 [ %i.er, %._crit_edge.loopexit.i ], [ 0, %bb.e ]
  %i.eh = add nuw nsw i64 %.02437.i, 1            ; 2 uses
  %i.ei = zext i32 %i.ef to i64
  %i.ej = icmp samesign ult i64 %i.eh, %i.ei
  br i1 %i.ej, label %bb.e, label %._crit_edge40.i, !llvm.loop !192

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %.036.i = phi i64 [ %i.eq, %.lr.ph.i ], [ 0, %bb.e ] ; 3 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %.036.i
  %i.el = load float, ptr %i.ek, align 4, !tbaa !70
  %i.em = fsub float %i.el, %.032.i
  %i.en = fmul float %i.bm, %i.em
  %i.eo = fptoui float %i.en to i8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ee, i64 %.036.i
  store i8 %i.eo, ptr %i.ep, align 1, !tbaa !80
  %i.eq = add nuw nsw i64 %.036.i, 1              ; 2 uses
  %i.er = load i32, ptr %2, align 8, !tbaa !62    ; 3 uses
  %i.es = zext i32 %i.er to i64
  %i.et = icmp samesign ult i64 %i.eq, %i.es
  br i1 %i.et, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !191

bb.f:                                             ; preds = %._crit_edge40.2.i
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.be) #13
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.aw) #13
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ao) #13
  br label %_ZN3jxl12_GLOBAL__N_120DumpPlaneNormalizedTIfEENS_6StatusERKNS_14CompressParamsEPKcRKNS_5PlaneIT_EE.exit

_ZN3jxl12_GLOBAL__N_120DumpPlaneNormalizedTIfEENS_6StatusERKNS_14CompressParamsEPKcRKNS_5PlaneIT_EE.exit: ; preds = %_ZN3jxl11ImageMinMaxIfEEvRKNS_5PlaneIT_EEPS2_S6_.exit.i, %._crit_edge40.2.i, %bb.f
  %.sroa.0.034.i = phi i32 [ %i.dt, %bb.f ], [ %i.dt, %._crit_edge40.2.i ], [ %i.al, %_ZN3jxl11ImageMinMaxIfEEvRKNS_5PlaneIT_EEPS2_S6_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret i32 %.sroa.0.034.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i32 @_ZN3jxl19DumpPlaneNormalizedERKNS_14CompressParamsEPKcRKNS_5PlaneIhEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(648) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.jxl::StatusOr.61", align 8  ; 13 uses
  %4 = alloca %"class.jxl::Image3.50", align 8    ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !63, !noalias !206 ; 2 uses
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  %.pre.i = load i32, ptr %2, align 8, !tbaa !62  ; 5 uses
  br i1 %.not.i.i, label %._ZN3jxl11ImageMinMaxIhEEvRKNS_5PlaneIT_EEPS2_S6_.exit_crit_edge.i, label %.lr.ph25.i.i

._ZN3jxl11ImageMinMaxIhEEvRKNS_5PlaneIT_EEPS2_S6_.exit_crit_edge.i: ; preds = %bb.a
  %.pre52.i = zext i32 %.pre.i to i64
  br label %_ZN3jxl11ImageMinMaxIhEEvRKNS_5PlaneIT_EEPS2_S6_.exit.i

.lr.ph25.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !69, !noalias !206
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !68, !noalias !206
  %i.h = zext i32 %.pre.i to i64                  ; 7 uses
  %.not30.i.i = icmp eq i32 %.pre.i, 0
  br i1 %.not30.i.i, label %_ZN3jxl11ImageMinMaxIhEEvRKNS_5PlaneIT_EEPS2_S6_.exit.i, label %iter.check.preheader

iter.check.preheader:                             ; preds = %.lr.ph25.i.i
  %min.iters.check = icmp ult i32 %.pre.i, 4
  %min.iters.check39 = icmp ult i32 %.pre.i, 32
  %i.i = and i64 %i.h, 28
  %n.vec = and i64 %i.h, 4294967264               ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.h
  %min.epilog.iters.check = icmp eq i64 %i.i, 0
  %n.vec48 = and i64 %i.h, 4294967292             ; 3 uses
  %cmp.n58 = icmp eq i64 %n.vec48, %i.h
  br label %iter.check

iter.check:                                       ; preds = %iter.check.preheader, %._crit_edge.us.i.i
  %.lcssa22.us29.i.i = phi i8 [ %.lcssa37, %._crit_edge.us.i.i ], [ 0, %iter.check.preheader ] ; 3 uses
  %.lcssa.us27.i.i = phi i8 [ %.lcssa38, %._crit_edge.us.i.i ], [ -1, %iter.check.preheader ] ; 3 uses
  %.01723.us.i.i = phi i64 [ %i.ah, %._crit_edge.us.i.i ], [ 0, %iter.check.preheader ] ; 2 uses
  %i.j = mul i64 %.01723.us.i.i, %i.g
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.j ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.k, i64 64) ]
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check39, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %.lcssa22.us29.i.i, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert40 = insertelement <16 x i8> poison, i8 %.lcssa.us27.i.i, i64 0
  %broadcast.splat41 = shufflevector <16 x i8> %broadcast.splatinsert40, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.p, %vector.body ]
  %vec.phi42 = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.q, %vector.body ]
  %vec.phi43 = phi <16 x i8> [ %broadcast.splat41, %vector.ph ], [ %i.n, %vector.body ]
  %vec.phi44 = phi <16 x i8> [ %broadcast.splat41, %vector.ph ], [ %i.o, %vector.body ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %wide.load = load <16 x i8>, ptr %i.l, align 32, !tbaa !80, !noalias !206 ; 2 uses
  %wide.load45 = load <16 x i8>, ptr %i.m, align 16, !tbaa !80, !noalias !206 ; 2 uses
  %i.n = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %wide.load, <16 x i8> %vec.phi43) ; 2 uses
  %i.o = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %wide.load45, <16 x i8> %vec.phi44) ; 2 uses
  %i.p = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %vec.phi, <16 x i8> %wide.load) ; 2 uses
  %i.q = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %vec.phi42, <16 x i8> %wide.load45) ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !198

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %i.p, <16 x i8> %i.q)
  %i.s = tail call i8 @llvm.vector.reduce.umax.v16i8(<16 x i8> %rdx.minmax) ; 3 uses
  %rdx.minmax46 = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %i.n, <16 x i8> %i.o)
  %i.t = tail call i8 @llvm.vector.reduce.umin.v16i8(<16 x i8> %rdx.minmax46) ; 3 uses
  br i1 %cmp.n, label %._crit_edge.us.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !207

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i8 [ %i.s, %vec.epilog.iter.check ], [ %.lcssa22.us29.i.i, %vector.main.loop.iter.check ]
  %bc.merge.rdx47 = phi i8 [ %i.t, %vec.epilog.iter.check ], [ %.lcssa.us27.i.i, %vector.main.loop.iter.check ]
  %broadcast.splatinsert49 = insertelement <4 x i8> poison, i8 %bc.merge.rdx47, i64 0
  %broadcast.splat50 = shufflevector <4 x i8> %broadcast.splatinsert49, <4 x i8> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert51 = insertelement <4 x i8> poison, i8 %bc.merge.rdx, i64 0
  %broadcast.splat52 = shufflevector <4 x i8> %broadcast.splatinsert51, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index53 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next57, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi54 = phi <4 x i8> [ %broadcast.splat52, %vec.epilog.ph ], [ %i.w, %vec.epilog.vector.body ]
  %vec.phi55 = phi <4 x i8> [ %broadcast.splat50, %vec.epilog.ph ], [ %i.v, %vec.epilog.vector.body ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 %index53
  %wide.load56 = load <4 x i8>, ptr %i.u, align 4, !tbaa !80, !noalias !206 ; 2 uses
  %i.v = tail call <4 x i8> @llvm.umin.v4i8(<4 x i8> %wide.load56, <4 x i8> %vec.phi55) ; 2 uses
  %i.w = tail call <4 x i8> @llvm.umax.v4i8(<4 x i8> %vec.phi54, <4 x i8> %wide.load56) ; 2 uses
  %index.next57 = add nuw i64 %index53, 4         ; 2 uses
  %i.x = icmp eq i64 %index.next57, %n.vec48
  br i1 %i.x, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !199

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.y = tail call i8 @llvm.vector.reduce.umax.v4i8(<4 x i8> %i.w) ; 2 uses
  %i.z = tail call i8 @llvm.vector.reduce.umin.v4i8(<4 x i8> %i.v) ; 2 uses
  br i1 %cmp.n58, label %._crit_edge.us.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i8 [ %.lcssa22.us29.i.i, %iter.check ], [ %i.s, %vec.epilog.iter.check ], [ %i.y, %vec.epilog.middle.block ]
  %.ph65 = phi i8 [ %.lcssa.us27.i.i, %iter.check ], [ %i.t, %vec.epilog.iter.check ], [ %i.z, %vec.epilog.middle.block ]
  %.020.us.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec48, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %i.aa = phi i8 [ %i.af, %vec.epilog.scalar.ph ], [ %.ph, %vec.epilog.scalar.ph.preheader ]
  %i.ab = phi i8 [ %i.ae, %vec.epilog.scalar.ph ], [ %.ph65, %vec.epilog.scalar.ph.preheader ]
  %.020.us.i.i = phi i64 [ %i.ag, %vec.epilog.scalar.ph ], [ %.020.us.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 %.020.us.i.i
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !80, !noalias !206 ; 2 uses
  %i.ae = tail call i8 @llvm.umin.i8(i8 %i.ad, i8 %i.ab) ; 2 uses
  %i.af = tail call i8 @llvm.umax.i8(i8 %i.aa, i8 %i.ad) ; 2 uses
  %i.ag = add nuw nsw i64 %.020.us.i.i, 1         ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ag, %i.h
  br i1 %exitcond.not.i.i, label %._crit_edge.us.i.i, label %vec.epilog.scalar.ph, !llvm.loop !200

._crit_edge.us.i.i:                               ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa38 = phi i8 [ %i.z, %vec.epilog.middle.block ], [ %i.t, %middle.block ], [ %i.ae, %vec.epilog.scalar.ph ] ; 2 uses
  %.lcssa37 = phi i8 [ %i.y, %vec.epilog.middle.block ], [ %i.s, %middle.block ], [ %i.af, %vec.epilog.scalar.ph ] ; 2 uses
  %i.ah = add nuw nsw i64 %.01723.us.i.i, 1       ; 2 uses
  %exitcond32.not.i.i = icmp eq i64 %i.ah, %i.c
  br i1 %exitcond32.not.i.i, label %_ZN3jxl11ImageMinMaxIhEEvRKNS_5PlaneIT_EEPS2_S6_.exit.i, label %iter.check, !llvm.loop !201

_ZN3jxl11ImageMinMaxIhEEvRKNS_5PlaneIT_EEPS2_S6_.exit.i: ; preds = %._crit_edge.us.i.i, %.lr.ph25.i.i, %._ZN3jxl11ImageMinMaxIhEEvRKNS_5PlaneIT_EEPS2_S6_.exit_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre52.i, %._ZN3jxl11ImageMinMaxIhEEvRKNS_5PlaneIT_EEPS2_S6_.exit_crit_edge.i ], [ 0, %.lr.ph25.i.i ], [ %i.h, %._crit_edge.us.i.i ]
  %.034.i = phi i8 [ -1, %._ZN3jxl11ImageMinMaxIhEEvRKNS_5PlaneIT_EEPS2_S6_.exit_crit_edge.i ], [ -1, %.lr.ph25.i.i ], [ %.lcssa38, %._crit_edge.us.i.i ] ; 2 uses
  %.033.i = phi i8 [ 0, %._ZN3jxl11ImageMinMaxIhEEvRKNS_5PlaneIT_EEPS2_S6_.exit_crit_edge.i ], [ 0, %.lr.ph25.i.i ], [ %.lcssa37, %._crit_edge.us.i.i ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @_ZN3jxl6Image3IhE6CreateEP22JxlMemoryManagerStructmm(ptr dead_on_unwind nonnull writable sret(%"class.jxl::StatusOr.61") align 8 %3, ptr noundef %i.aj, i64 noundef %.pre-phi.i, i64 noundef %i.c) #14
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 168 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !83 ; 2 uses
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.b, label %_ZN3jxl12_GLOBAL__N_120DumpPlaneNormalizedTIhEENS_6StatusERKNS_14CompressParamsEPKcRKNS_5PlaneIT_EE.exit

bb.b:                                             ; preds = %_ZN3jxl11ImageMinMaxIhEEvRKNS_5PlaneIT_EEPS2_S6_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.experimental.noalias.scope.decl(metadata !208)
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.an, i8 0, i64 144, i1 false), !alias.scope !208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %4, ptr noundef nonnull align 8 dereferenceable(172) %3, i64 24, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.ap = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.ao) #13 ; 0 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !67, !noalias !208
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !67, !alias.scope !208
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.au, ptr noundef nonnull align 8 dereferenceable(56) %i.at, i64 24, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.ax = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.aw) #13 ; 0 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !67, !noalias !208
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 104
  store i64 %i.az, ptr %i.ba, align 8, !tbaa !67, !alias.scope !208
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bc, ptr noundef nonnull align 8 dereferenceable(56) %i.bb, i64 24, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 136 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 136 ; 2 uses
  %i.bf = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %i.be) #13 ; 0 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !67, !noalias !208
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 160
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !67, !alias.scope !208
  %i.bj = icmp eq i8 %.034.i, %.033.i
  %i.bk = zext i8 %.033.i to i32
  %i.bl = zext i8 %.034.i to i32                  ; 4 uses
  %i.bm = sub nsw i32 %i.bk, %i.bl
  %i.bn = sitofp i32 %i.bm to float
  %i.bo = fdiv nnan float 2.550000e+02, %i.bn
  %i.bp = select i1 %i.bj, float 0.000000e+00, float %i.bo ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.bt = load i32, ptr %i.a, align 4, !tbaa !63  ; 2 uses
  %.not.i = icmp eq i32 %i.bt, 0
  br i1 %.not.i, label %._crit_edge42.2.i, label %.lr.ph41.i

.lr.ph41.i:                                       ; preds = %bb.b
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.pre46.i = load i32, ptr %2, align 8, !tbaa !62 ; 2 uses
  br label %bb.e

._crit_edge42.i:                                  ; preds = %._crit_edge.i
  %.not.1.i = icmp eq i32 %i.em, 0
  br i1 %.not.1.i, label %._crit_edge42.2.i, label %.lr.ph41.1.i

.lr.ph41.1.i:                                     ; preds = %._crit_edge42.i
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 96
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.1.i, %.lr.ph41.1.i
  %.pre50.i18 = phi i32 [ %.pre48.i, %.lr.ph41.1.i ], [ %.pre50.i, %._crit_edge.1.i ]
  %i.bw = phi i32 [ %i.em, %.lr.ph41.1.i ], [ %i.cs, %._crit_edge.1.i ]
  %i.bx = phi i32 [ %.pre48.i, %.lr.ph41.1.i ], [ %i.ct, %._crit_edge.1.i ]
  %.02439.1.i = phi i64 [ 0, %.lr.ph41.1.i ], [ %i.cu, %._crit_edge.1.i ] ; 3 uses
  %i.by = load ptr, ptr %i.bq, align 8, !tbaa !69
  %i.bz = load i64, ptr %i.br, align 8, !tbaa !68
  %i.ca = mul i64 %i.bz, %.02439.1.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.ca ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.cb, i64 64) ]
  %i.cc = load i64, ptr %i.bs, align 8, !tbaa !68
  %i.cd = mul i64 %i.cc, %.02439.1.i
  %i.ce = load ptr, ptr %i.bv, align 8, !tbaa !69 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ce, i64 64) ]
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cd ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.cf, i64 64) ]
  %.not44.1.i = icmp eq i32 %i.bx, 0
  br i1 %.not44.1.i, label %._crit_edge.1.i, label %.lr.ph.1.i

.lr.ph.1.i:                                       ; preds = %bb.c, %.lr.ph.1.i
  %.038.1.i = phi i64 [ %i.co, %.lr.ph.1.i ], [ 0, %bb.c ] ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.038.1.i
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !80
  %i.ci = zext i8 %i.ch to i32
  %i.cj = sub nsw i32 %i.ci, %i.bl
  %i.ck = sitofp i32 %i.cj to float
  %i.cl = fmul float %i.bp, %i.ck
  %i.cm = fptoui float %i.cl to i8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.038.1.i
  store i8 %i.cm, ptr %i.cn, align 1, !tbaa !80
  %i.co = add nuw nsw i64 %.038.1.i, 1            ; 2 uses
  %i.cp = load i32, ptr %2, align 8, !tbaa !62    ; 3 uses
  %i.cq = zext i32 %i.cp to i64
  %i.cr = icmp samesign ult i64 %i.co, %i.cq
  br i1 %i.cr, label %.lr.ph.1.i, label %._crit_edge.loopexit.1.i, !llvm.loop !204

._crit_edge.loopexit.1.i:                         ; preds = %.lr.ph.1.i
  %.pre49.i = load i32, ptr %i.a, align 4, !tbaa !63
  br label %._crit_edge.1.i

._crit_edge.1.i:                                  ; preds = %._crit_edge.loopexit.1.i, %bb.c
  %.pre50.i = phi i32 [ %i.cp, %._crit_edge.loopexit.1.i ], [ %.pre50.i18, %bb.c ] ; 2 uses
  %i.cs = phi i32 [ %.pre49.i, %._crit_edge.loopexit.1.i ], [ %i.bw, %bb.c ] ; 4 uses
  %i.ct = phi i32 [ %i.cp, %._crit_edge.loopexit.1.i ], [ 0, %bb.c ]
  %i.cu = add nuw nsw i64 %.02439.1.i, 1          ; 2 uses
  %i.cv = zext i32 %i.cs to i64
  %i.cw = icmp samesign ult i64 %i.cu, %i.cv
  br i1 %i.cw, label %bb.c, label %._crit_edge42.1.i, !llvm.loop !205

._crit_edge42.1.i:                                ; preds = %._crit_edge.1.i
  %.not.2.i = icmp eq i32 %i.cs, 0
  br i1 %.not.2.i, label %._crit_edge42.2.i, label %.lr.ph41.2.i

.lr.ph41.2.i:                                     ; preds = %._crit_edge42.1.i
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 152
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.2.i, %.lr.ph41.2.i
  %i.cy = phi i32 [ %i.cs, %.lr.ph41.2.i ], [ %i.du, %._crit_edge.2.i ]
  %i.cz = phi i32 [ %.pre50.i, %.lr.ph41.2.i ], [ %i.dv, %._crit_edge.2.i ]
  %.02439.2.i = phi i64 [ 0, %.lr.ph41.2.i ], [ %i.dw, %._crit_edge.2.i ] ; 3 uses
  %i.da = load ptr, ptr %i.bq, align 8, !tbaa !69
  %i.db = load i64, ptr %i.br, align 8, !tbaa !68
  %i.dc = mul i64 %i.db, %.02439.2.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dc ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.dd, i64 64) ]
  %i.de = load i64, ptr %i.bs, align 8, !tbaa !68
  %i.df = mul i64 %i.de, %.02439.2.i
  %i.dg = load ptr, ptr %i.cx, align 8, !tbaa !69 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.dg, i64 64) ]
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.df ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.dh, i64 64) ]
  %.not44.2.i = icmp eq i32 %i.cz, 0
  br i1 %.not44.2.i, label %._crit_edge.2.i, label %.lr.ph.2.i

.lr.ph.2.i:                                       ; preds = %bb.d, %.lr.ph.2.i
  %.038.2.i = phi i64 [ %i.dq, %.lr.ph.2.i ], [ 0, %bb.d ] ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 %.038.2.i
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !80
  %i.dk = zext i8 %i.dj to i32
  %i.dl = sub nsw i32 %i.dk, %i.bl
  %i.dm = sitofp i32 %i.dl to float
  %i.dn = fmul float %i.bp, %i.dm
  %i.do = fptoui float %i.dn to i8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dh, i64 %.038.2.i
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !80
  %i.dq = add nuw nsw i64 %.038.2.i, 1            ; 2 uses
  %i.dr = load i32, ptr %2, align 8, !tbaa !62    ; 2 uses
  %i.ds = zext i32 %i.dr to i64
  %i.dt = icmp samesign ult i64 %i.dq, %i.ds
end_hunk_0
