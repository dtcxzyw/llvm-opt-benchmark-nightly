inline.NumInlined: 103
inline.NumDeleted: 31
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@ConvertARGBToUV_SSE2:bb.a
  %i.cu = shufflevector <16 x i8> %i.ct, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.cv = shufflevector <16 x i8> %i.ct, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.cw = bitcast <16 x i8> %i.co to <8 x i16>
  %i.cx = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cw, <8 x i16> splat (i16 2))
  %i.cy = bitcast <16 x i8> %i.cp to <8 x i16>
  %i.cz = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cy, <8 x i16> splat (i16 2))
  %i.da = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.cx, <4 x i32> %i.cz) ; 2 uses
  %i.db = bitcast <16 x i8> %i.cr to <8 x i16>
  %i.dc = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.db, <8 x i16> splat (i16 2))
  %i.dd = bitcast <16 x i8> %i.cs to <8 x i16>
  %i.de = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.dd, <8 x i16> splat (i16 2))
  %i.df = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.dc, <4 x i32> %i.de) ; 4 uses
  %i.dg = bitcast <16 x i8> %i.cu to <8 x i16>
  %i.dh = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.dg, <8 x i16> splat (i16 2))
  %i.di = bitcast <16 x i8> %i.cv to <8 x i16>
  %i.dj = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.di, <8 x i16> splat (i16 2))
  %i.dk = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.dh, <4 x i32> %i.dj) ; 2 uses
  %i.dl = shufflevector <8 x i16> %i.da, <8 x i16> %i.df, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.dm = shufflevector <8 x i16> %i.da, <8 x i16> %i.df, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.dn = shufflevector <8 x i16> %i.df, <8 x i16> %i.dk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.do = shufflevector <8 x i16> %i.df, <8 x i16> %i.dk, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.dp = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.dl, <8 x i16> <i16 -9719, i16 -19081, i16 -9719, i16 -19081, i16 -9719, i16 -19081, i16 -9719, i16 -19081>)
  %i.dq = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.dm, <8 x i16> <i16 -9719, i16 -19081, i16 -9719, i16 -19081, i16 -9719, i16 -19081, i16 -9719, i16 -19081>)
  %i.dr = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.dn, <8 x i16> <i16 0, i16 28800, i16 0, i16 28800, i16 0, i16 28800, i16 0, i16 28800>)
  %i.ds = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.do, <8 x i16> <i16 0, i16 28800, i16 0, i16 28800, i16 0, i16 28800, i16 0, i16 28800>)
  %i.dt = add <4 x i32> %i.dp, splat (i32 33685504)
  %i.du = add <4 x i32> %i.dt, %i.dr
  %i.dv = add <4 x i32> %i.dq, splat (i32 33685504)
  %i.dw = add <4 x i32> %i.dv, %i.ds
  %i.dx = ashr <4 x i32> %i.du, splat (i32 18)
  %i.dy = ashr <4 x i32> %i.dw, splat (i32 18)
  %i.dz = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.dx, <4 x i32> %i.dy)
  %i.ea = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.dl, <8 x i16> <i16 28800, i16 0, i16 28800, i16 0, i16 28800, i16 0, i16 28800, i16 0>)
  %i.eb = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.dm, <8 x i16> <i16 28800, i16 0, i16 28800, i16 0, i16 28800, i16 0, i16 28800, i16 0>)
  %i.ec = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.dn, <8 x i16> <i16 -24116, i16 -4684, i16 -24116, i16 -4684, i16 -24116, i16 -4684, i16 -24116, i16 -4684>)
  %i.ed = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.do, <8 x i16> <i16 -24116, i16 -4684, i16 -24116, i16 -4684, i16 -24116, i16 -4684, i16 -24116, i16 -4684>)
  %i.ee = add <4 x i32> %i.ea, splat (i32 33685504)
  %i.ef = add <4 x i32> %i.ee, %i.ec
  %i.eg = add <4 x i32> %i.eb, splat (i32 33685504)
  %i.eh = add <4 x i32> %i.eg, %i.ed
  %i.ei = ashr <4 x i32> %i.ef, splat (i32 18)
  %i.ej = ashr <4 x i32> %i.eh, splat (i32 18)
  %i.ek = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ei, <4 x i32> %i.ej)
  %i.el = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.bi, <8 x i16> %i.dz) ; 2 uses
  %i.em = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.bt, <8 x i16> %i.ek) ; 2 uses
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.en = load <16 x i8>, ptr %.093, align 1, !tbaa !7
  %i.eo = load <16 x i8>, ptr %.02592, align 1, !tbaa !7
  %i.ep = tail call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.el, <16 x i8> %i.en)
  %i.eq = tail call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.em, <16 x i8> %i.eo)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.190.in = phi <16 x i8> [ %i.ep, %bb.c ], [ %i.el, %bb.b ]
  %.1.in = phi <16 x i8> [ %i.eq, %bb.c ], [ %i.em, %bb.b ]
  store <16 x i8> %.190.in, ptr %.093, align 1, !tbaa !7
  store <16 x i8> %.1.in, ptr %.02592, align 1, !tbaa !7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 32 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.093, i64 16 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.02592, i64 16 ; 2 uses
  %i.et = icmp samesign ult i64 %indvars.iv.next, %i.c
  br i1 %i.et, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !76

._crit_edge.loopexit:                             ; preds = %bb.d
  %i.eu = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.026.lcssa = phi i32 [ 0, %bb.a ], [ %i.eu, %._crit_edge.loopexit ] ; 3 uses
  %.025.lcssa = phi ptr [ %2, %bb.a ], [ %i.es, %._crit_edge.loopexit ]
  %.0.lcssa = phi ptr [ %1, %bb.a ], [ %i.er, %._crit_edge.loopexit ]
  %i.ev = icmp slt i32 %.026.lcssa, %3
  br i1 %i.ev, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.ew = zext nneg i32 %.026.lcssa to i64
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ew
  %i.ey = sub nsw i32 %3, %.026.lcssa
  tail call void @WebPConvertARGBToUV_C(ptr noundef %i.ex, ptr noundef %.0.lcssa, ptr noundef %.025.lcssa, i32 noundef %i.ey, i32 noundef %4) #10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @ConvertRGB24ToY_SSE2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef writeonly captures(none) %1, i32 noundef %2) #5 {
bb.a:
  %i.a = alloca [6 x <2 x i64>], align 16         ; 10 uses
  %i.b = and i32 %2, -32
  %i.c = icmp sgt i32 %2, 31
  %indvars.iv.sroa.gep72 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br i1 %i.c, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  br label %bb.b

.preheader:                                       ; preds = %bb.d, %bb.a
  %.031.lcssa = phi i32 [ 0, %bb.a ], [ %i.ds, %bb.d ] ; 2 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.dt, %bb.d ] ; 5 uses
  %i.i = icmp slt i32 %.031.lcssa, %2
  br i1 %i.i, label %.lr.ph58.preheader, label %._crit_edge

.lr.ph58.preheader:                               ; preds = %.preheader
  %i.j = sext i32 %.031.lcssa to i64              ; 5 uses
  %wide.trip.count = sext i32 %2 to i64           ; 3 uses
  %i.k = sub nsw i64 %wide.trip.count, %i.j
  %xtraiter = and i64 %i.k, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph58.prol.loopexit, label %.lr.ph58.prol

.lr.ph58.prol:                                    ; preds = %.lr.ph58.preheader
  %i.l = load i8, ptr %.0.lcssa, align 1, !tbaa !7
  %i.m = zext i8 %i.l to i32
  %i.n = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !7
  %i.p = zext i8 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 2
  %i.r = load i8, ptr %i.q, align 1, !tbaa !7
  %i.s = zext i8 %i.r to i32
  %i.t = mul nuw nsw i32 %i.m, 16839
  %i.u = mul nuw nsw i32 %i.p, 33059
  %i.v = mul nuw nsw i32 %i.s, 6420
  %i.w = add nuw nsw i32 %i.t, 1081344
  %i.x = add nuw nsw i32 %i.w, %i.u
  %i.y = add nuw nsw i32 %i.x, %i.v
  %i.z = lshr i32 %i.y, 16
  %i.aa = trunc nuw i32 %i.z to i8
  %i.ab = getelementptr inbounds i8, ptr %1, i64 %i.j
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !7
  %indvars.iv.next66.prol = add nsw i64 %i.j, 1
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 3
  br label %.lr.ph58.prol.loopexit

.lr.ph58.prol.loopexit:                           ; preds = %.lr.ph58.prol, %.lr.ph58.preheader
  %indvars.iv65.unr = phi i64 [ %i.j, %.lr.ph58.preheader ], [ %indvars.iv.next66.prol, %.lr.ph58.prol ]
  %.157.unr = phi ptr [ %.0.lcssa, %.lr.ph58.preheader ], [ %i.ac, %.lr.ph58.prol ]
  %i.ad = add nsw i64 %wide.trip.count, -1
  %i.ae = icmp eq i64 %i.ad, %i.j
  br i1 %i.ae, label %._crit_edge, label %.lr.ph58

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.054 = phi ptr [ %0, %.lr.ph ], [ %i.dt, %bb.d ] ; 7 uses
  %.03153 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next61, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  %i.af = load <16 x i8>, ptr %.054, align 1, !tbaa !7, !alias.scope !77 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.054, i64 16
  %i.ah = load <16 x i8>, ptr %i.ag, align 1, !tbaa !7, !alias.scope !77 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.054, i64 32
  %i.aj = load <16 x i8>, ptr %i.ai, align 1, !tbaa !7, !alias.scope !77 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.054, i64 48
  %i.al = load <16 x i8>, ptr %i.ak, align 1, !tbaa !7, !alias.scope !77 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.054, i64 64
  %i.an = load <16 x i8>, ptr %i.am, align 1, !tbaa !7, !alias.scope !77 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.054, i64 80
  %i.ap = load <16 x i8>, ptr %i.ao, align 1, !tbaa !7, !alias.scope !77 ; 2 uses
  %i.aq = shufflevector <16 x i8> %i.af, <16 x i8> %i.al, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.ar = shufflevector <16 x i8> %i.af, <16 x i8> %i.al, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.as = shufflevector <16 x i8> %i.ah, <16 x i8> %i.an, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.at = shufflevector <16 x i8> %i.ah, <16 x i8> %i.an, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.au = shufflevector <16 x i8> %i.aj, <16 x i8> %i.ap, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.av = shufflevector <16 x i8> %i.aj, <16 x i8> %i.ap, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.aw = shufflevector <16 x i8> %i.aq, <16 x i8> %i.at, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.ax = shufflevector <16 x i8> %i.aq, <16 x i8> %i.at, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ay = shufflevector <16 x i8> %i.ar, <16 x i8> %i.au, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.az = shufflevector <16 x i8> %i.ar, <16 x i8> %i.au, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ba = shufflevector <16 x i8> %i.as, <16 x i8> %i.av, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.bb = shufflevector <16 x i8> %i.as, <16 x i8> %i.av, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bc = shufflevector <16 x i8> %i.aw, <16 x i8> %i.az, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.bd = shufflevector <16 x i8> %i.aw, <16 x i8> %i.az, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.be = shufflevector <16 x i8> %i.ax, <16 x i8> %i.ba, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.bf = shufflevector <16 x i8> %i.ax, <16 x i8> %i.ba, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bg = shufflevector <16 x i8> %i.ay, <16 x i8> %i.bb, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.bh = shufflevector <16 x i8> %i.ay, <16 x i8> %i.bb, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bi = shufflevector <16 x i8> %i.bc, <16 x i8> %i.bf, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.bj = shufflevector <16 x i8> %i.bc, <16 x i8> %i.bf, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bk = shufflevector <16 x i8> %i.bd, <16 x i8> %i.bg, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.bl = shufflevector <16 x i8> %i.bd, <16 x i8> %i.bg, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bm = shufflevector <16 x i8> %i.be, <16 x i8> %i.bh, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.bn = shufflevector <16 x i8> %i.be, <16 x i8> %i.bh, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bo = shufflevector <16 x i8> %i.bi, <16 x i8> %i.bl, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.bo, ptr %i.a, align 16, !tbaa !7, !noalias !77
  %i.bp = shufflevector <16 x i8> %i.bi, <16 x i8> %i.bl, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.bp, ptr %i.d, align 16, !tbaa !7, !noalias !77
  %i.bq = shufflevector <16 x i8> %i.bj, <16 x i8> %i.bm, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.bq, ptr %i.e, align 16, !tbaa !7, !noalias !77
  %i.br = shufflevector <16 x i8> %i.bj, <16 x i8> %i.bm, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.br, ptr %i.f, align 16, !tbaa !7, !noalias !77
  %i.bs = shufflevector <16 x i8> %i.bk, <16 x i8> %i.bn, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.bs, ptr %i.g, align 16, !tbaa !7, !noalias !77
  %i.bt = shufflevector <16 x i8> %i.bk, <16 x i8> %i.bn, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.bt, ptr %i.h, align 16, !tbaa !7, !noalias !77
  %sext = shl i64 %.03153, 32
  %3 = ashr exact i64 %sext, 32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.c
  %indvars.iv60 = phi i64 [ %3, %bb.b ], [ %indvars.iv.next61, %bb.c ] ; 2 uses
  %i.bu = phi i1 [ true, %bb.b ], [ false, %bb.c ]
  %indvars.iv.sroa.phi = phi ptr [ %i.a, %bb.b ], [ %indvars.iv.sroa.gep72, %bb.c ] ; 3 uses
  %i.bv = load <16 x i8>, ptr %indvars.iv.sroa.phi, align 16, !tbaa !7 ; 2 uses
  %i.bw = shufflevector <16 x i8> %i.bv, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.bx = getelementptr inbounds nuw i8, ptr %indvars.iv.sroa.phi, i64 32
  %i.by = load <16 x i8>, ptr %i.bx, align 16, !tbaa !7 ; 2 uses
  %i.bz = shufflevector <16 x i8> %i.by, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ca = getelementptr inbounds nuw i8, ptr %indvars.iv.sroa.phi, i64 64
  %i.cb = load <16 x i8>, ptr %i.ca, align 16, !tbaa !7 ; 2 uses
  %i.cc = shufflevector <16 x i8> %i.cb, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.cd = bitcast <16 x i8> %i.bw to <8 x i16>    ; 2 uses
  %i.ce = bitcast <16 x i8> %i.bz to <8 x i16>    ; 4 uses
  %i.cf = shufflevector <8 x i16> %i.cd, <8 x i16> %i.ce, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cg = shufflevector <8 x i16> %i.cd, <8 x i16> %i.ce, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ch = bitcast <16 x i8> %i.cc to <8 x i16>    ; 2 uses
  %i.ci = shufflevector <8 x i16> %i.ce, <8 x i16> %i.ch, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cj = shufflevector <8 x i16> %i.ce, <8 x i16> %i.ch, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ck = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cf, <8 x i16> <i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675>)
  %i.cl = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cg, <8 x i16> <i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675>)
  %i.cm = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ci, <8 x i16> <i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420>)
  %i.cn = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cj, <8 x i16> <i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420>)
  %i.co = add <4 x i32> %i.ck, splat (i32 1081344)
  %i.cp = add <4 x i32> %i.co, %i.cm
  %i.cq = add <4 x i32> %i.cl, splat (i32 1081344)
  %i.cr = add <4 x i32> %i.cq, %i.cn
  %i.cs = ashr <4 x i32> %i.cp, splat (i32 16)
  %i.ct = ashr <4 x i32> %i.cr, splat (i32 16)
  %i.cu = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.cs, <4 x i32> %i.ct)
  %i.cv = shufflevector <16 x i8> %i.bv, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.cw = shufflevector <16 x i8> %i.by, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.cx = shufflevector <16 x i8> %i.cb, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.cy = bitcast <16 x i8> %i.cv to <8 x i16>    ; 2 uses
  %i.cz = bitcast <16 x i8> %i.cw to <8 x i16>    ; 4 uses
  %i.da = shufflevector <8 x i16> %i.cy, <8 x i16> %i.cz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.db = shufflevector <8 x i16> %i.cy, <8 x i16> %i.cz, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.dc = bitcast <16 x i8> %i.cx to <8 x i16>    ; 2 uses
  %i.dd = shufflevector <8 x i16> %i.cz, <8 x i16> %i.dc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.de = shufflevector <8 x i16> %i.cz, <8 x i16> %i.dc, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.df = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.da, <8 x i16> <i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675>)
  %i.dg = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.db, <8 x i16> <i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675>)
  %i.dh = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.dd, <8 x i16> <i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420>)
  %i.di = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.de, <8 x i16> <i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420>)
  %i.dj = add <4 x i32> %i.df, splat (i32 1081344)
  %i.dk = add <4 x i32> %i.dj, %i.dh
  %i.dl = add <4 x i32> %i.dg, splat (i32 1081344)
  %i.dm = add <4 x i32> %i.dl, %i.di
  %i.dn = ashr <4 x i32> %i.dk, splat (i32 16)
  %i.do = ashr <4 x i32> %i.dm, splat (i32 16)
  %i.dp = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.dn, <4 x i32> %i.do)
  %i.dq = getelementptr inbounds i8, ptr %1, i64 %indvars.iv60
  %i.dr = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.cu, <8 x i16> %i.dp)
  store <16 x i8> %i.dr, ptr %i.dq, align 1, !tbaa !7
  %indvars.iv.next61 = add nsw i64 %indvars.iv60, 16 ; 3 uses
  br i1 %i.bu, label %bb.c, label %bb.d, !llvm.loop !80

bb.d:                                             ; preds = %bb.c
  %i.ds = trunc nsw i64 %indvars.iv.next61 to i32 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.dt = getelementptr inbounds nuw i8, ptr %.054, i64 96 ; 2 uses
  %i.du = icmp sgt i32 %i.b, %i.ds
  br i1 %i.du, label %bb.b, label %.preheader, !llvm.loop !81

.lr.ph58:                                         ; preds = %.lr.ph58.prol.loopexit, %.lr.ph58
  %indvars.iv65 = phi i64 [ %indvars.iv.next66.1, %.lr.ph58 ], [ %indvars.iv65.unr, %.lr.ph58.prol.loopexit ] ; 3 uses
  %.157 = phi ptr [ %i.ff, %.lr.ph58 ], [ %.157.unr, %.lr.ph58.prol.loopexit ] ; 7 uses
  %i.dv = load i8, ptr %.157, align 1, !tbaa !7
  %i.dw = zext i8 %i.dv to i32
  %i.dx = getelementptr inbounds nuw i8, ptr %.157, i64 1
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !7
  %i.dz = zext i8 %i.dy to i32
  %i.ea = getelementptr inbounds nuw i8, ptr %.157, i64 2
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !7
  %i.ec = zext i8 %i.eb to i32
  %i.ed = mul nuw nsw i32 %i.dw, 16839
  %i.ee = mul nuw nsw i32 %i.dz, 33059
  %i.ef = mul nuw nsw i32 %i.ec, 6420
  %i.eg = add nuw nsw i32 %i.ed, 1081344
  %i.eh = add nuw nsw i32 %i.eg, %i.ee
  %i.ei = add nuw nsw i32 %i.eh, %i.ef
  %i.ej = lshr i32 %i.ei, 16
  %i.ek = trunc nuw i32 %i.ej to i8
  %i.el = getelementptr inbounds i8, ptr %1, i64 %indvars.iv65
  store i8 %i.ek, ptr %i.el, align 1, !tbaa !7
  %i.em = getelementptr inbounds nuw i8, ptr %.157, i64 3
  %i.en = load i8, ptr %i.em, align 1, !tbaa !7
  %i.eo = zext i8 %i.en to i32
  %i.ep = getelementptr inbounds nuw i8, ptr %.157, i64 4
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !7
  %i.er = zext i8 %i.eq to i32
  %i.es = getelementptr inbounds nuw i8, ptr %.157, i64 5
  %i.et = load i8, ptr %i.es, align 1, !tbaa !7
  %i.eu = zext i8 %i.et to i32
  %i.ev = mul nuw nsw i32 %i.eo, 16839
  %i.ew = mul nuw nsw i32 %i.er, 33059
  %i.ex = mul nuw nsw i32 %i.eu, 6420
  %i.ey = add nuw nsw i32 %i.ev, 1081344
  %i.ez = add nuw nsw i32 %i.ey, %i.ew
  %i.fa = add nuw nsw i32 %i.ez, %i.ex
  %i.fb = lshr i32 %i.fa, 16
  %i.fc = trunc nuw i32 %i.fb to i8
  %i.fd = getelementptr i8, ptr %1, i64 %indvars.iv65
  %i.fe = getelementptr i8, ptr %i.fd, i64 1
  store i8 %i.fc, ptr %i.fe, align 1, !tbaa !7
  %indvars.iv.next66.1 = add nsw i64 %indvars.iv65, 2 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.157, i64 6
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next66.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph58, !llvm.loop !82

._crit_edge:                                      ; preds = %.lr.ph58.prol.loopexit, %.lr.ph58, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @ConvertBGR24ToY_SSE2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef writeonly captures(none) %1, i32 noundef %2) #5 {
bb.a:
  %i.a = alloca [6 x <2 x i64>], align 16         ; 10 uses
  %i.b = and i32 %2, -32
  %i.c = icmp sgt i32 %2, 31
  %indvars.iv.sroa.gep72 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br i1 %i.c, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  br label %bb.b

.preheader:                                       ; preds = %bb.d, %bb.a
  %.031.lcssa = phi i32 [ 0, %bb.a ], [ %i.ds, %bb.d ] ; 2 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.dt, %bb.d ] ; 5 uses
  %i.i = icmp slt i32 %.031.lcssa, %2
  br i1 %i.i, label %.lr.ph58.preheader, label %._crit_edge

.lr.ph58.preheader:                               ; preds = %.preheader
  %i.j = sext i32 %.031.lcssa to i64              ; 5 uses
  %wide.trip.count = sext i32 %2 to i64           ; 3 uses
  %i.k = sub nsw i64 %wide.trip.count, %i.j
  %xtraiter = and i64 %i.k, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph58.prol.loopexit, label %.lr.ph58.prol

.lr.ph58.prol:                                    ; preds = %.lr.ph58.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 2
  %i.m = load i8, ptr %i.l, align 1, !tbaa !7
  %i.n = zext i8 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !7
  %i.q = zext i8 %i.p to i32
  %i.r = load i8, ptr %.0.lcssa, align 1, !tbaa !7
  %i.s = zext i8 %i.r to i32
  %i.t = mul nuw nsw i32 %i.n, 16839
  %i.u = mul nuw nsw i32 %i.q, 33059
  %i.v = mul nuw nsw i32 %i.s, 6420
  %i.w = add nuw nsw i32 %i.t, 1081344
  %i.x = add nuw nsw i32 %i.w, %i.u
  %i.y = add nuw nsw i32 %i.x, %i.v
  %i.z = lshr i32 %i.y, 16
  %i.aa = trunc nuw i32 %i.z to i8
  %i.ab = getelementptr inbounds i8, ptr %1, i64 %i.j
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !7
  %indvars.iv.next66.prol = add nsw i64 %i.j, 1
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 3
  br label %.lr.ph58.prol.loopexit

.lr.ph58.prol.loopexit:                           ; preds = %.lr.ph58.prol, %.lr.ph58.preheader
  %indvars.iv65.unr = phi i64 [ %i.j, %.lr.ph58.preheader ], [ %indvars.iv.next66.prol, %.lr.ph58.prol ]
  %.157.unr = phi ptr [ %.0.lcssa, %.lr.ph58.preheader ], [ %i.ac, %.lr.ph58.prol ]
  %i.ad = add nsw i64 %wide.trip.count, -1
  %i.ae = icmp eq i64 %i.ad, %i.j
  br i1 %i.ae, label %._crit_edge, label %.lr.ph58

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.054 = phi ptr [ %0, %.lr.ph ], [ %i.dt, %bb.d ] ; 7 uses
  %.03153 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next61, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83)
  %i.af = load <16 x i8>, ptr %.054, align 1, !tbaa !7, !alias.scope !83 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.054, i64 16
  %i.ah = load <16 x i8>, ptr %i.ag, align 1, !tbaa !7, !alias.scope !83 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.054, i64 32
  %i.aj = load <16 x i8>, ptr %i.ai, align 1, !tbaa !7, !alias.scope !83 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.054, i64 48
  %i.al = load <16 x i8>, ptr %i.ak, align 1, !tbaa !7, !alias.scope !83 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.054, i64 64
  %i.an = load <16 x i8>, ptr %i.am, align 1, !tbaa !7, !alias.scope !83 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.054, i64 80
  %i.ap = load <16 x i8>, ptr %i.ao, align 1, !tbaa !7, !alias.scope !83 ; 2 uses
  %i.aq = shufflevector <16 x i8> %i.af, <16 x i8> %i.al, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.ar = shufflevector <16 x i8> %i.af, <16 x i8> %i.al, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.as = shufflevector <16 x i8> %i.ah, <16 x i8> %i.an, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.at = shufflevector <16 x i8> %i.ah, <16 x i8> %i.an, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.au = shufflevector <16 x i8> %i.aj, <16 x i8> %i.ap, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.av = shufflevector <16 x i8> %i.aj, <16 x i8> %i.ap, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.aw = shufflevector <16 x i8> %i.aq, <16 x i8> %i.at, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.ax = shufflevector <16 x i8> %i.aq, <16 x i8> %i.at, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ay = shufflevector <16 x i8> %i.ar, <16 x i8> %i.au, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.az = shufflevector <16 x i8> %i.ar, <16 x i8> %i.au, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ba = shufflevector <16 x i8> %i.as, <16 x i8> %i.av, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.bb = shufflevector <16 x i8> %i.as, <16 x i8> %i.av, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bc = shufflevector <16 x i8> %i.aw, <16 x i8> %i.az, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.bd = shufflevector <16 x i8> %i.aw, <16 x i8> %i.az, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.be = shufflevector <16 x i8> %i.ax, <16 x i8> %i.ba, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.bf = shufflevector <16 x i8> %i.ax, <16 x i8> %i.ba, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bg = shufflevector <16 x i8> %i.ay, <16 x i8> %i.bb, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.bh = shufflevector <16 x i8> %i.ay, <16 x i8> %i.bb, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bi = shufflevector <16 x i8> %i.bc, <16 x i8> %i.bf, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.bj = shufflevector <16 x i8> %i.bc, <16 x i8> %i.bf, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bk = shufflevector <16 x i8> %i.bd, <16 x i8> %i.bg, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.bl = shufflevector <16 x i8> %i.bd, <16 x i8> %i.bg, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bm = shufflevector <16 x i8> %i.be, <16 x i8> %i.bh, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.bn = shufflevector <16 x i8> %i.be, <16 x i8> %i.bh, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bo = shufflevector <16 x i8> %i.bi, <16 x i8> %i.bl, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.bo, ptr %i.a, align 16, !tbaa !7, !noalias !83
  %i.bp = shufflevector <16 x i8> %i.bi, <16 x i8> %i.bl, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.bp, ptr %i.d, align 16, !tbaa !7, !noalias !83
  %i.bq = shufflevector <16 x i8> %i.bj, <16 x i8> %i.bm, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.bq, ptr %i.e, align 16, !tbaa !7, !noalias !83
  %i.br = shufflevector <16 x i8> %i.bj, <16 x i8> %i.bm, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.br, ptr %i.f, align 16, !tbaa !7, !noalias !83
  %i.bs = shufflevector <16 x i8> %i.bk, <16 x i8> %i.bn, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.bs, ptr %i.g, align 16, !tbaa !7, !noalias !83
  %i.bt = shufflevector <16 x i8> %i.bk, <16 x i8> %i.bn, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.bt, ptr %i.h, align 16, !tbaa !7, !noalias !83
  %sext = shl i64 %.03153, 32
  %3 = ashr exact i64 %sext, 32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.c
  %indvars.iv60 = phi i64 [ %3, %bb.b ], [ %indvars.iv.next61, %bb.c ] ; 2 uses
  %i.bu = phi i1 [ true, %bb.b ], [ false, %bb.c ]
  %indvars.iv.sroa.phi = phi ptr [ %i.a, %bb.b ], [ %indvars.iv.sroa.gep72, %bb.c ] ; 3 uses
  %i.bv = load <16 x i8>, ptr %indvars.iv.sroa.phi, align 16, !tbaa !7 ; 2 uses
  %i.bw = shufflevector <16 x i8> %i.bv, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.bx = getelementptr inbounds nuw i8, ptr %indvars.iv.sroa.phi, i64 32
  %i.by = load <16 x i8>, ptr %i.bx, align 16, !tbaa !7 ; 2 uses
  %i.bz = shufflevector <16 x i8> %i.by, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ca = getelementptr inbounds nuw i8, ptr %indvars.iv.sroa.phi, i64 64
  %i.cb = load <16 x i8>, ptr %i.ca, align 16, !tbaa !7 ; 2 uses
  %i.cc = shufflevector <16 x i8> %i.cb, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.cd = bitcast <16 x i8> %i.cc to <8 x i16>    ; 2 uses
  %i.ce = bitcast <16 x i8> %i.bz to <8 x i16>    ; 4 uses
  %i.cf = shufflevector <8 x i16> %i.cd, <8 x i16> %i.ce, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cg = shufflevector <8 x i16> %i.cd, <8 x i16> %i.ce, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ch = bitcast <16 x i8> %i.bw to <8 x i16>    ; 2 uses
  %i.ci = shufflevector <8 x i16> %i.ce, <8 x i16> %i.ch, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cj = shufflevector <8 x i16> %i.ce, <8 x i16> %i.ch, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ck = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cf, <8 x i16> <i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675>)
  %i.cl = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cg, <8 x i16> <i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675>)
  %i.cm = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ci, <8 x i16> <i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420>)
  %i.cn = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cj, <8 x i16> <i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420>)
  %i.co = add <4 x i32> %i.ck, splat (i32 1081344)
  %i.cp = add <4 x i32> %i.co, %i.cm
  %i.cq = add <4 x i32> %i.cl, splat (i32 1081344)
  %i.cr = add <4 x i32> %i.cq, %i.cn
  %i.cs = ashr <4 x i32> %i.cp, splat (i32 16)
  %i.ct = ashr <4 x i32> %i.cr, splat (i32 16)
  %i.cu = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.cs, <4 x i32> %i.ct)
  %i.cv = shufflevector <16 x i8> %i.bv, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.cw = shufflevector <16 x i8> %i.by, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.cx = shufflevector <16 x i8> %i.cb, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.cy = bitcast <16 x i8> %i.cx to <8 x i16>    ; 2 uses
  %i.cz = bitcast <16 x i8> %i.cw to <8 x i16>    ; 4 uses
  %i.da = shufflevector <8 x i16> %i.cy, <8 x i16> %i.cz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.db = shufflevector <8 x i16> %i.cy, <8 x i16> %i.cz, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.dc = bitcast <16 x i8> %i.cv to <8 x i16>    ; 2 uses
  %i.dd = shufflevector <8 x i16> %i.cz, <8 x i16> %i.dc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.de = shufflevector <8 x i16> %i.cz, <8 x i16> %i.dc, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.df = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.da, <8 x i16> <i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675>)
  %i.dg = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.db, <8 x i16> <i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675>)
  %i.dh = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.dd, <8 x i16> <i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420>)
  %i.di = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.de, <8 x i16> <i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420>)
  %i.dj = add <4 x i32> %i.df, splat (i32 1081344)
  %i.dk = add <4 x i32> %i.dj, %i.dh
  %i.dl = add <4 x i32> %i.dg, splat (i32 1081344)
  %i.dm = add <4 x i32> %i.dl, %i.di
  %i.dn = ashr <4 x i32> %i.dk, splat (i32 16)
  %i.do = ashr <4 x i32> %i.dm, splat (i32 16)
  %i.dp = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.dn, <4 x i32> %i.do)
  %i.dq = getelementptr inbounds i8, ptr %1, i64 %indvars.iv60
  %i.dr = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.cu, <8 x i16> %i.dp)
  store <16 x i8> %i.dr, ptr %i.dq, align 1, !tbaa !7
  %indvars.iv.next61 = add nsw i64 %indvars.iv60, 16 ; 3 uses
  br i1 %i.bu, label %bb.c, label %bb.d, !llvm.loop !86

bb.d:                                             ; preds = %bb.c
  %i.ds = trunc nsw i64 %indvars.iv.next61 to i32 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.dt = getelementptr inbounds nuw i8, ptr %.054, i64 96 ; 2 uses
  %i.du = icmp sgt i32 %i.b, %i.ds
  br i1 %i.du, label %bb.b, label %.preheader, !llvm.loop !87

.lr.ph58:                                         ; preds = %.lr.ph58.prol.loopexit, %.lr.ph58
  %indvars.iv65 = phi i64 [ %indvars.iv.next66.1, %.lr.ph58 ], [ %indvars.iv65.unr, %.lr.ph58.prol.loopexit ] ; 3 uses
  %.157 = phi ptr [ %i.ff, %.lr.ph58 ], [ %.157.unr, %.lr.ph58.prol.loopexit ] ; 7 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.157, i64 2
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !7
  %i.dx = zext i8 %i.dw to i32
  %i.dy = getelementptr inbounds nuw i8, ptr %.157, i64 1
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !7
  %i.ea = zext i8 %i.dz to i32
  %i.eb = load i8, ptr %.157, align 1, !tbaa !7
  %i.ec = zext i8 %i.eb to i32
  %i.ed = mul nuw nsw i32 %i.dx, 16839
  %i.ee = mul nuw nsw i32 %i.ea, 33059
  %i.ef = mul nuw nsw i32 %i.ec, 6420
  %i.eg = add nuw nsw i32 %i.ed, 1081344
  %i.eh = add nuw nsw i32 %i.eg, %i.ee
  %i.ei = add nuw nsw i32 %i.eh, %i.ef
  %i.ej = lshr i32 %i.ei, 16
  %i.ek = trunc nuw i32 %i.ej to i8
  %i.el = getelementptr inbounds i8, ptr %1, i64 %indvars.iv65
  store i8 %i.ek, ptr %i.el, align 1, !tbaa !7
  %i.em = getelementptr inbounds nuw i8, ptr %.157, i64 3
  %i.en = getelementptr inbounds nuw i8, ptr %.157, i64 5
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !7
  %i.ep = zext i8 %i.eo to i32
  %i.eq = getelementptr inbounds nuw i8, ptr %.157, i64 4
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !7
  %i.es = zext i8 %i.er to i32
  %i.et = load i8, ptr %i.em, align 1, !tbaa !7
  %i.eu = zext i8 %i.et to i32
  %i.ev = mul nuw nsw i32 %i.ep, 16839
  %i.ew = mul nuw nsw i32 %i.es, 33059
  %i.ex = mul nuw nsw i32 %i.eu, 6420
  %i.ey = add nuw nsw i32 %i.ev, 1081344
  %i.ez = add nuw nsw i32 %i.ey, %i.ew
  %i.fa = add nuw nsw i32 %i.ez, %i.ex
  %i.fb = lshr i32 %i.fa, 16
  %i.fc = trunc nuw i32 %i.fb to i8
  %i.fd = getelementptr i8, ptr %1, i64 %indvars.iv65
  %i.fe = getelementptr i8, ptr %i.fd, i64 1
  store i8 %i.fc, ptr %i.fe, align 1, !tbaa !7
  %indvars.iv.next66.1 = add nsw i64 %indvars.iv65, 2 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.157, i64 6
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next66.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph58, !llvm.loop !88

._crit_edge:                                      ; preds = %.lr.ph58.prol.loopexit, %.lr.ph58, %.preheader
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ConvertRGBA32ToUV_SSE2(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, i32 noundef %3) #4 {
bb.a:
  %i.a = and i32 %3, -16                          ; 2 uses
  %i.b = shl nsw i32 %i.a, 2
  %i.c = sext i32 %i.b to i64
  %.idx = shl nsw i64 %i.c, 1
  %i.d = getelementptr inbounds i8, ptr %0, i64 %.idx
  %i.e = icmp sgt i32 %3, 15
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.046 = phi ptr [ %i.da, %.lr.ph ], [ %0, %bb.a ] ; 9 uses
  %.01845 = phi ptr [ %i.cy, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %.01944 = phi ptr [ %i.cz, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %i.f = load <8 x i16>, ptr %.046, align 1, !tbaa !7, !alias.scope !89 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.046, i64 16
  %i.h = load <8 x i16>, ptr %i.g, align 1, !tbaa !7, !alias.scope !89 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.046, i64 32
  %i.j = load <8 x i16>, ptr %i.i, align 1, !tbaa !7, !alias.scope !89 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.046, i64 48
  %i.l = load <8 x i16>, ptr %i.k, align 1, !tbaa !7, !alias.scope !89 ; 2 uses
  %i.m = shufflevector <8 x i16> %i.f, <8 x i16> %i.h, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.n = bitcast <8 x i16> %i.m to <2 x i64>      ; 2 uses
  %i.o = shufflevector <8 x i16> %i.f, <8 x i16> %i.h, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.p = bitcast <8 x i16> %i.o to <2 x i64>
  %i.q = shufflevector <8 x i16> %i.j, <8 x i16> %i.l, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.r = bitcast <8 x i16> %i.q to <2 x i64>      ; 2 uses
  %i.s = shufflevector <8 x i16> %i.j, <8 x i16> %i.l, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.t = bitcast <8 x i16> %i.s to <2 x i64>
  %i.u = shufflevector <2 x i64> %i.n, <2 x i64> %i.r, <2 x i32> <i32 0, i32 2>
  %i.v = shufflevector <2 x i64> %i.n, <2 x i64> %i.r, <2 x i32> <i32 1, i32 3>
  %i.w = shufflevector <2 x i64> %i.p, <2 x i64> %i.t, <2 x i32> <i32 0, i32 2>
  %i.x = bitcast <2 x i64> %i.u to <8 x i16>      ; 2 uses
  %i.y = bitcast <2 x i64> %i.v to <8 x i16>      ; 4 uses
  %i.z = shufflevector <8 x i16> %i.x, <8 x i16> %i.y, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.aa = shufflevector <8 x i16> %i.x, <8 x i16> %i.y, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ab = bitcast <2 x i64> %i.w to <8 x i16>     ; 2 uses
  %i.ac = shufflevector <8 x i16> %i.y, <8 x i16> %i.ab, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.ad = shufflevector <8 x i16> %i.y, <8 x i16> %i.ab, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ae = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.z, <8 x i16> <i16 -9719, i16 -19081, i16 -9719, i16 -19081, i16 -9719, i16 -19081, i16 -9719, i16 -19081>)
  %i.af = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.aa, <8 x i16> <i16 -9719, i16 -19081, i16 -9719, i16 -19081, i16 -9719, i16 -19081, i16 -9719, i16 -19081>)
  %i.ag = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ac, <8 x i16> <i16 0, i16 28800, i16 0, i16 28800, i16 0, i16 28800, i16 0, i16 28800>)
  %i.ah = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ad, <8 x i16> <i16 0, i16 28800, i16 0, i16 28800, i16 0, i16 28800, i16 0, i16 28800>)
  %i.ai = add <4 x i32> %i.ae, splat (i32 33685504)
  %i.aj = add <4 x i32> %i.ai, %i.ag
  %i.ak = add <4 x i32> %i.af, splat (i32 33685504)
  %i.al = add <4 x i32> %i.ak, %i.ah
  %i.am = ashr <4 x i32> %i.aj, splat (i32 18)
  %i.an = ashr <4 x i32> %i.al, splat (i32 18)
  %i.ao = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.am, <4 x i32> %i.an)
  %i.ap = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.z, <8 x i16> <i16 28800, i16 0, i16 28800, i16 0, i16 28800, i16 0, i16 28800, i16 0>)
  %i.aq = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.aa, <8 x i16> <i16 28800, i16 0, i16 28800, i16 0, i16 28800, i16 0, i16 28800, i16 0>)
  %i.ar = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ac, <8 x i16> <i16 -24116, i16 -4684, i16 -24116, i16 -4684, i16 -24116, i16 -4684, i16 -24116, i16 -4684>)
  %i.as = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ad, <8 x i16> <i16 -24116, i16 -4684, i16 -24116, i16 -4684, i16 -24116, i16 -4684, i16 -24116, i16 -4684>)
  %i.at = add <4 x i32> %i.ap, splat (i32 33685504)
  %i.au = add <4 x i32> %i.at, %i.ar
  %i.av = add <4 x i32> %i.aq, splat (i32 33685504)
  %i.aw = add <4 x i32> %i.av, %i.as
  %i.ax = ashr <4 x i32> %i.au, splat (i32 18)
  %i.ay = ashr <4 x i32> %i.aw, splat (i32 18)
  %i.az = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ax, <4 x i32> %i.ay)
  %i.ba = getelementptr inbounds nuw i8, ptr %.046, i64 64
  %i.bb = load <8 x i16>, ptr %i.ba, align 1, !tbaa !7, !alias.scope !92 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.046, i64 80
  %i.bd = load <8 x i16>, ptr %i.bc, align 1, !tbaa !7, !alias.scope !92 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.046, i64 96
  %i.bf = load <8 x i16>, ptr %i.be, align 1, !tbaa !7, !alias.scope !92 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.046, i64 112
  %i.bh = load <8 x i16>, ptr %i.bg, align 1, !tbaa !7, !alias.scope !92 ; 2 uses
  %i.bi = shufflevector <8 x i16> %i.bb, <8 x i16> %i.bd, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.bj = bitcast <8 x i16> %i.bi to <2 x i64>    ; 2 uses
  %i.bk = shufflevector <8 x i16> %i.bb, <8 x i16> %i.bd, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bl = bitcast <8 x i16> %i.bk to <2 x i64>
  %i.bm = shufflevector <8 x i16> %i.bf, <8 x i16> %i.bh, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.bn = bitcast <8 x i16> %i.bm to <2 x i64>    ; 2 uses
  %i.bo = shufflevector <8 x i16> %i.bf, <8 x i16> %i.bh, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bp = bitcast <8 x i16> %i.bo to <2 x i64>
  %i.bq = shufflevector <2 x i64> %i.bj, <2 x i64> %i.bn, <2 x i32> <i32 0, i32 2>
  %i.br = shufflevector <2 x i64> %i.bj, <2 x i64> %i.bn, <2 x i32> <i32 1, i32 3>
  %i.bs = shufflevector <2 x i64> %i.bl, <2 x i64> %i.bp, <2 x i32> <i32 0, i32 2>
  %i.bt = bitcast <2 x i64> %i.bq to <8 x i16>    ; 2 uses
  %i.bu = bitcast <2 x i64> %i.br to <8 x i16>    ; 4 uses
  %i.bv = shufflevector <8 x i16> %i.bt, <8 x i16> %i.bu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.bw = shufflevector <8 x i16> %i.bt, <8 x i16> %i.bu, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.bx = bitcast <2 x i64> %i.bs to <8 x i16>    ; 2 uses
  %i.by = shufflevector <8 x i16> %i.bu, <8 x i16> %i.bx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.bz = shufflevector <8 x i16> %i.bu, <8 x i16> %i.bx, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
end_hunk_0
