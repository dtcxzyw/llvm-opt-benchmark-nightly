Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btSoftBodyHelpers?download=true
inline.NumInlined: 1764
inline.NumDeleted: 610
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 50
begin_hunk_0_@_ZN17btSoftBodyHelpers29extrapolateBarycentricWeightsEP10btSoftBody:bb.a
  %n.vec300 = and i64 %wide.trip.count.i.i.i.i.i, 2147483644 ; 3 uses
  br label %vector.body301

vector.body301:                                   ; preds = %vector.body301, %vector.ph299
  %index302 = phi i64 [ 0, %vector.ph299 ], [ %index.next305, %vector.body301 ] ; 3 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i, i64 %index302 ; 2 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %index302 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %wide.load303 = load <2 x ptr>, ptr %i.ed, align 8, !tbaa !45
  %wide.load304 = load <2 x ptr>, ptr %i.ee, align 8, !tbaa !45
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  store <2 x ptr> %wide.load303, ptr %i.ec, align 8, !tbaa !45
  store <2 x ptr> %wide.load304, ptr %i.ef, align 8, !tbaa !45
  %index.next305 = add nuw i64 %index302, 4       ; 2 uses
  %i.eg = icmp eq i64 %index.next305, %n.vec300
  br i1 %i.eg, label %middle.block306, label %vector.body301, !llvm.loop !478

middle.block306:                                  ; preds = %vector.body301
  %cmp.n307 = icmp eq i64 %n.vec300, %wide.trip.count.i.i.i.i.i
  br i1 %cmp.n307, label %_ZNK20btAlignedObjectArrayIPKN10btSoftBody4NodeEE4copyEiiPS3_.exit.thread.i.i.i.i, label %scalar.ph297.preheader

scalar.ph297.preheader:                           ; preds = %.lr.ph.i.i.i.i.i, %middle.block306
  %indvars.iv.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i ], [ %n.vec300, %middle.block306 ] ; 3 uses
  %xtraiter353 = and i64 %wide.trip.count.i.i.i.i.i, 3 ; 2 uses
  %lcmp.mod354.not = icmp eq i64 %xtraiter353, 0
  br i1 %lcmp.mod354.not, label %scalar.ph297.prol.loopexit, label %scalar.ph297.prol

scalar.ph297.prol:                                ; preds = %scalar.ph297.preheader, %scalar.ph297.prol
  %indvars.iv.i.i.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.i.i.prol, %scalar.ph297.prol ], [ %indvars.iv.i.i.i.i.i.ph, %scalar.ph297.preheader ] ; 3 uses
  %prol.iter355 = phi i64 [ %prol.iter355.next, %scalar.ph297.prol ], [ 0, %scalar.ph297.preheader ]
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.i.i.i.i.i.prol
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %indvars.iv.i.i.i.i.i.prol
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !45
  store ptr %i.ej, ptr %i.eh, align 8, !tbaa !45
  %indvars.iv.next.i.i.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter355.next = add i64 %prol.iter355, 1   ; 2 uses
  %prol.iter355.cmp.not = icmp eq i64 %prol.iter355.next, %xtraiter353
  br i1 %prol.iter355.cmp.not, label %scalar.ph297.prol.loopexit, label %scalar.ph297.prol, !llvm.loop !479

scalar.ph297.prol.loopexit:                       ; preds = %scalar.ph297.prol, %scalar.ph297.preheader
  %indvars.iv.i.i.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.i.i.ph, %scalar.ph297.preheader ], [ %indvars.iv.next.i.i.i.i.i.prol, %scalar.ph297.prol ]
  %i.ek = sub nsw i64 %indvars.iv.i.i.i.i.i.ph, %wide.trip.count.i.i.i.i.i
  %i.el = icmp ugt i64 %i.ek, -4
  br i1 %i.el, label %_ZNK20btAlignedObjectArrayIPKN10btSoftBody4NodeEE4copyEiiPS3_.exit.thread.i.i.i.i, label %scalar.ph297

scalar.ph297:                                     ; preds = %scalar.ph297.prol.loopexit, %scalar.ph297
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.3, %scalar.ph297 ], [ %indvars.iv.i.i.i.i.i.unr, %scalar.ph297.prol.loopexit ] ; 6 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.i.i.i.i.i
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %indvars.iv.i.i.i.i.i
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !45
  store ptr %i.eo, ptr %i.em, align 8, !tbaa !45
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.next.i.i.i.i.i
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %indvars.iv.next.i.i.i.i.i
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !45
  store ptr %i.er, ptr %i.ep, align 8, !tbaa !45
  %indvars.iv.next.i.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 2 ; 2 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.next.i.i.i.i.i.1
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %indvars.iv.next.i.i.i.i.i.1
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !45
  store ptr %i.eu, ptr %i.es, align 8, !tbaa !45
  %indvars.iv.next.i.i.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 3 ; 2 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.next.i.i.i.i.i.2
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %indvars.iv.next.i.i.i.i.i.2
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !45
  store ptr %i.ex, ptr %i.ev, align 8, !tbaa !45
  %indvars.iv.next.i.i.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.3, %wide.trip.count.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.3, label %_ZNK20btAlignedObjectArrayIPKN10btSoftBody4NodeEE4copyEiiPS3_.exit.thread.i.i.i.i, label %scalar.ph297, !llvm.loop !480

_ZNK20btAlignedObjectArrayIPKN10btSoftBody4NodeEE4copyEiiPS3_.exit.i.i.i.i: ; preds = %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE8allocateEi.exit.i.i.i.i
  %.not.i5.i.i.i.i = icmp eq ptr %i.dz, null
  br i1 %.not.i5.i.i.i.i, label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE10deallocateEv.exit.i.i.i.i, label %_ZNK20btAlignedObjectArrayIPKN10btSoftBody4NodeEE4copyEiiPS3_.exit.thread.i.i.i.i

_ZNK20btAlignedObjectArrayIPKN10btSoftBody4NodeEE4copyEiiPS3_.exit.thread.i.i.i.i: ; preds = %scalar.ph297.prol.loopexit, %scalar.ph297, %middle.block306, %_ZNK20btAlignedObjectArrayIPKN10btSoftBody4NodeEE4copyEiiPS3_.exit.i.i.i.i
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.ez = load i8, ptr %i.ey, align 8, !tbaa !244, !range !37, !noundef !38
  %i.fa = trunc nuw i8 %i.ez to i1
  br i1 %i.fa, label %bb.t, label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE10deallocateEv.exit.i.i.i.i

bb.t:                                             ; preds = %_ZNK20btAlignedObjectArrayIPKN10btSoftBody4NodeEE4copyEiiPS3_.exit.thread.i.i.i.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.dz)
          to label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE10deallocateEv.exit.i.i.i.i unwind label %bb.am

_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE10deallocateEv.exit.i.i.i.i: ; preds = %bb.t, %_ZNK20btAlignedObjectArrayIPKN10btSoftBody4NodeEE4copyEiiPS3_.exit.thread.i.i.i.i, %_ZNK20btAlignedObjectArrayIPKN10btSoftBody4NodeEE4copyEiiPS3_.exit.i.i.i.i
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  store i8 1, ptr %i.fb, align 8, !tbaa !244
  store ptr %.0.i.i.i.i.i, ptr %i.dy, align 8, !tbaa !245
  store i32 %i.dh, ptr %i.dq, align 8, !tbaa !247
  br label %.lr.ph.i.i.i86

.lr.ph.i.i.i86:                                   ; preds = %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE10deallocateEv.exit.i.i.i.i, %..lr.ph.i_crit_edge.i.i
  %i.fc = phi ptr [ %.pre.i.i, %..lr.ph.i_crit_edge.i.i ], [ %.0.i.i.i.i.i, %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE10deallocateEv.exit.i.i.i.i ] ; 2 uses
  %i.fd = sext i32 %i.do to i64                   ; 2 uses
  %wide.trip.count.i.i.i87 = sext i32 %i.dh to i64
  %i.fe = shl nsw i64 %i.fd, 3
  %scevgep.i.i = getelementptr i8, ptr %i.fc, i64 %i.fe
  %i.ff = sub nsw i64 %wide.trip.count.i.i.i87, %i.fd
  %i.fg = shl nuw nsw i64 %i.ff, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i.i, i8 0, i64 %i.fg, i1 false), !tbaa !45
  br label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE6resizeEiRKS3_.exit.i.i

_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE6resizeEiRKS3_.exit.i.i: ; preds = %.lr.ph.i.i.i86, %._ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE6resizeEiRKS3_.exit_crit_edge.i.i
  %i.fh = phi ptr [ %.pre10.i.i, %._ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE6resizeEiRKS3_.exit_crit_edge.i.i ], [ %i.fc, %.lr.ph.i.i.i86 ] ; 7 uses
  store i32 %i.dh, ptr %i.dn, align 4, !tbaa !246
  %i.fi = icmp sgt i32 %i.dh, 0
  %.pre258 = load ptr, ptr %i.co, align 8, !tbaa !245 ; 9 uses
  br i1 %i.fi, label %.lr.ph.i4.i.i, label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEEaSERKS4_.exit

.lr.ph.i4.i.i:                                    ; preds = %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE6resizeEiRKS3_.exit.i.i
  %.pre258280 = ptrtoaddr ptr %.pre258 to i64
  %i.fj = ptrtoaddr ptr %i.fh to i64
  %wide.trip.count.i5.i.i = zext nneg i32 %i.dh to i64 ; 5 uses
  %min.iters.check283 = icmp ult i32 %i.dh, 4
  %i.fk = sub i64 %.pre258280, %i.fj
  %diff.check281 = icmp ugt i64 %i.fk, -32
  %or.cond340 = select i1 %min.iters.check283, i1 true, i1 %diff.check281
  br i1 %or.cond340, label %scalar.ph282.preheader, label %vector.ph284

vector.ph284:                                     ; preds = %.lr.ph.i4.i.i
  %n.vec285 = and i64 %wide.trip.count.i5.i.i, 2147483644 ; 3 uses
  br label %vector.body286

vector.body286:                                   ; preds = %vector.body286, %vector.ph284
  %index287 = phi i64 [ 0, %vector.ph284 ], [ %index.next290, %vector.body286 ] ; 3 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %index287 ; 2 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %.pre258, i64 %index287 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %wide.load288 = load <2 x ptr>, ptr %i.fm, align 8, !tbaa !45
  %wide.load289 = load <2 x ptr>, ptr %i.fn, align 8, !tbaa !45
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  store <2 x ptr> %wide.load288, ptr %i.fl, align 8, !tbaa !45
  store <2 x ptr> %wide.load289, ptr %i.fo, align 8, !tbaa !45
  %index.next290 = add nuw i64 %index287, 4       ; 2 uses
  %i.fp = icmp eq i64 %index.next290, %n.vec285
  br i1 %i.fp, label %middle.block291, label %vector.body286, !llvm.loop !481

middle.block291:                                  ; preds = %vector.body286
  %cmp.n292 = icmp eq i64 %n.vec285, %wide.trip.count.i5.i.i
  br i1 %cmp.n292, label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEEaSERKS4_.exit, label %scalar.ph282.preheader

scalar.ph282.preheader:                           ; preds = %.lr.ph.i4.i.i, %middle.block291
  %indvars.iv.i6.i.i.ph = phi i64 [ 0, %.lr.ph.i4.i.i ], [ %n.vec285, %middle.block291 ] ; 3 uses
  %xtraiter356 = and i64 %wide.trip.count.i5.i.i, 3 ; 2 uses
  %lcmp.mod357.not = icmp eq i64 %xtraiter356, 0
  br i1 %lcmp.mod357.not, label %scalar.ph282.prol.loopexit, label %scalar.ph282.prol

scalar.ph282.prol:                                ; preds = %scalar.ph282.preheader, %scalar.ph282.prol
  %indvars.iv.i6.i.i.prol = phi i64 [ %indvars.iv.next.i7.i.i.prol, %scalar.ph282.prol ], [ %indvars.iv.i6.i.i.ph, %scalar.ph282.preheader ] ; 3 uses
  %prol.iter358 = phi i64 [ %prol.iter358.next, %scalar.ph282.prol ], [ 0, %scalar.ph282.preheader ]
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %indvars.iv.i6.i.i.prol
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %.pre258, i64 %indvars.iv.i6.i.i.prol
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !45
  store ptr %i.fs, ptr %i.fq, align 8, !tbaa !45
  %indvars.iv.next.i7.i.i.prol = add nuw nsw i64 %indvars.iv.i6.i.i.prol, 1 ; 2 uses
  %prol.iter358.next = add i64 %prol.iter358, 1   ; 2 uses
  %prol.iter358.cmp.not = icmp eq i64 %prol.iter358.next, %xtraiter356
  br i1 %prol.iter358.cmp.not, label %scalar.ph282.prol.loopexit, label %scalar.ph282.prol, !llvm.loop !482

scalar.ph282.prol.loopexit:                       ; preds = %scalar.ph282.prol, %scalar.ph282.preheader
  %indvars.iv.i6.i.i.unr = phi i64 [ %indvars.iv.i6.i.i.ph, %scalar.ph282.preheader ], [ %indvars.iv.next.i7.i.i.prol, %scalar.ph282.prol ]
  %i.ft = sub nsw i64 %indvars.iv.i6.i.i.ph, %wide.trip.count.i5.i.i
  %i.fu = icmp ugt i64 %i.ft, -4
  br i1 %i.fu, label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEEaSERKS4_.exit, label %scalar.ph282

scalar.ph282:                                     ; preds = %scalar.ph282.prol.loopexit, %scalar.ph282
  %indvars.iv.i6.i.i = phi i64 [ %indvars.iv.next.i7.i.i.3, %scalar.ph282 ], [ %indvars.iv.i6.i.i.unr, %scalar.ph282.prol.loopexit ] ; 6 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %indvars.iv.i6.i.i
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %.pre258, i64 %indvars.iv.i6.i.i
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !45
  store ptr %i.fx, ptr %i.fv, align 8, !tbaa !45
  %indvars.iv.next.i7.i.i = add nuw nsw i64 %indvars.iv.i6.i.i, 1 ; 2 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %indvars.iv.next.i7.i.i
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %.pre258, i64 %indvars.iv.next.i7.i.i
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !45
  store ptr %i.ga, ptr %i.fy, align 8, !tbaa !45
  %indvars.iv.next.i7.i.i.1 = add nuw nsw i64 %indvars.iv.i6.i.i, 2 ; 2 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %indvars.iv.next.i7.i.i.1
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %.pre258, i64 %indvars.iv.next.i7.i.i.1
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !45
  store ptr %i.gd, ptr %i.gb, align 8, !tbaa !45
  %indvars.iv.next.i7.i.i.2 = add nuw nsw i64 %indvars.iv.i6.i.i, 3 ; 2 uses
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %indvars.iv.next.i7.i.i.2
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %.pre258, i64 %indvars.iv.next.i7.i.i.2
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !45
  store ptr %i.gg, ptr %i.ge, align 8, !tbaa !45
  %indvars.iv.next.i7.i.i.3 = add nuw nsw i64 %indvars.iv.i6.i.i, 4 ; 2 uses
  %exitcond.not.i8.i.i.3 = icmp eq i64 %indvars.iv.next.i7.i.i.3, %wide.trip.count.i5.i.i
  br i1 %exitcond.not.i8.i.i.3, label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEEaSERKS4_.exit, label %scalar.ph282, !llvm.loop !483

bb.u:                                             ; preds = %.lr.ph, %bb.aj
  %.sroa.0219.sroa.0.1 = phi float [ undef, %.lr.ph ], [ %.sroa.0219.sroa.0.2, %bb.aj ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.aj ] ; 2 uses
  %.050239 = phi float [ 0.000000e+00, %.lr.ph ], [ %.1, %bb.aj ] ; 3 uses
  %.051238 = phi float [ f0xFF7FFFFF, %.lr.ph ], [ %.152, %bb.aj ] ; 5 uses
  %i.gh = phi <2 x float> [ undef, %.lr.ph ], [ %i.ne, %bb.aj ] ; 2 uses
  %i.gi = load ptr, ptr %i.cs, align 8, !tbaa !82
  %i.gj = getelementptr inbounds nuw [144 x i8], ptr %i.gi, i64 %indvars.iv ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 16 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 24 ; 2 uses
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !45 ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  %i.go = load ptr, ptr %i.gk, align 8, !tbaa !45 ; 3 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gm, i64 20
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 20
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gm, i64 24
  %i.gs = getelementptr inbounds nuw i8, ptr %i.go, i64 24
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gj, i64 32 ; 2 uses
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !45 ; 3 uses
  %5 = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 20
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 24
  %i.gx = load float, ptr %i.dc, align 4, !tbaa !19 ; 2 uses
  %i.gy = load float, ptr %i.df, align 4, !tbaa !19 ; 2 uses
  %i.gz = load float, ptr %i.dg, align 4, !tbaa !19 ; 2 uses
  %6 = load float, ptr %i.gn, align 4, !tbaa !19
  %7 = load float, ptr %i.gr, align 4, !tbaa !19
  %i.ha = load float, ptr %i.gp, align 4, !tbaa !19
  %i.hb = load float, ptr %i.gq, align 4, !tbaa !19 ; 3 uses
  %i.hc = load float, ptr %4, align 4, !tbaa !19  ; 3 uses
  %8 = load float, ptr %i.gs, align 4, !tbaa !19  ; 3 uses
  %9 = load float, ptr %5, align 4, !tbaa !19
  %10 = insertelement <2 x float> poison, float %9, i64 0
  %i.hd = insertelement <2 x float> %10, float %6, i64 1
  %i.he = insertelement <2 x float> poison, float %i.hc, i64 0
  %11 = shufflevector <2 x float> %i.he, <2 x float> poison, <2 x i32> zeroinitializer
  %12 = fsub <2 x float> %i.hd, %11               ; 5 uses
  %13 = load float, ptr %i.gw, align 4, !tbaa !19
  %14 = load float, ptr %i.gv, align 4, !tbaa !19
  %15 = insertelement <2 x float> poison, float %14, i64 0
  %16 = insertelement <2 x float> %15, float %i.ha, i64 1
  %17 = insertelement <2 x float> poison, float %i.hb, i64 0
  %18 = shufflevector <2 x float> %17, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hf = fsub <2 x float> %16, %18               ; 5 uses
  %19 = insertelement <2 x float> poison, float %13, i64 0
  %20 = insertelement <2 x float> %19, float %7, i64 1
  %21 = insertelement <2 x float> poison, float %8, i64 0
  %22 = shufflevector <2 x float> %21, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hg = fsub <2 x float> %20, %22               ; 5 uses
  %i.hh = extractelement <2 x float> %i.hg, i64 0 ; 3 uses
  %i.hi = fneg float %i.hh
  %i.hj = extractelement <2 x float> %12, i64 1   ; 3 uses
  %i.hk = fmul float %i.hj, %i.hi
  %i.hl = extractelement <2 x float> %i.hg, i64 1 ; 3 uses
  %i.hm = extractelement <2 x float> %12, i64 0   ; 3 uses
  %i.hn = call float @llvm.fmuladd.f32(float %i.hl, float %i.hm, float %i.hk) ; 3 uses
  %23 = extractelement <2 x float> %i.hf, i64 0   ; 3 uses
  %24 = fneg float %23
  %25 = fneg float %i.hm
  %i.ho = fmul float %i.hl, %24
  %i.hp = extractelement <2 x float> %i.hf, i64 1 ; 3 uses
  %26 = fmul float %i.hp, %25
  %27 = call float @llvm.fmuladd.f32(float %i.hp, float %i.hh, float %i.ho) ; 3 uses
  %i.hq = call float @llvm.fmuladd.f32(float %i.hj, float %23, float %26) ; 3 uses
  %28 = fmul float %i.hn, %i.hn
  %29 = call float @llvm.fmuladd.f32(float %27, float %27, float %28)
  %i.hr = call noundef float @llvm.fmuladd.f32(float %i.hq, float %i.hq, float %29)
  %sqrt.i.i.i = call noundef float @llvm.sqrt.f32(float %i.hr)
  %i.hs = fdiv float 1.000000e+00, %sqrt.i.i.i    ; 3 uses
  %i.ht = fmul float %i.hn, %i.hs                 ; 2 uses
  %30 = fmul float %27, %i.hs                     ; 2 uses
  %31 = fmul float %i.hq, %i.hs                   ; 2 uses
  %i.hu = fsub float %i.gx, %i.hc
  %i.hv = fsub float %i.gy, %i.hb
  %i.hw = fsub float %i.gz, %8
  %i.hx = fmul float %i.hv, %i.ht
  %i.hy = call float @llvm.fmuladd.f32(float %i.hu, float %30, float %i.hx)
  %i.hz = call noundef float @llvm.fmuladd.f32(float %i.hw, float %31, float %i.hy) ; 5 uses
  %i.ia = fmul float %i.ht, %i.hz
  %32 = fmul float %30, %i.hz
  %33 = fmul float %31, %i.hz
  %i.ib = fsub float %i.gy, %i.ia
  %i.ic = fsub float %i.gx, %32
  %34 = fsub float %i.gz, %33
  %35 = fsub float %i.ib, %i.hb                   ; 2 uses
  %36 = fsub float %i.ic, %i.hc
  %37 = fsub float %34, %8
  %38 = fmul float %i.hp, %23
  %i.id = call float @llvm.fmuladd.f32(float %i.hj, float %i.hm, float %38)
  %i.ie = call noundef float @llvm.fmuladd.f32(float %i.hl, float %i.hh, float %i.id) ; 3 uses
  %i.if = fmul <2 x float> %i.hf, %i.hf
  %i.ig = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %12, <2 x float> %12, <2 x float> %i.if)
  %i.ih = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hg, <2 x float> %i.hg, <2 x float> %i.ig) ; 3 uses
  %i.ii = shufflevector <2 x float> %i.hf, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ij = insertelement <2 x float> %i.ii, float %35, i64 0
  %i.ik = insertelement <2 x float> %i.ii, float %35, i64 1
  %i.il = fmul <2 x float> %i.ij, %i.ik
  %39 = insertelement <2 x float> poison, float %36, i64 0
  %40 = shufflevector <2 x float> %39, <2 x float> poison, <2 x i32> zeroinitializer
  %i.im = shufflevector <2 x float> %12, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.in = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %40, <2 x float> %i.im, <2 x float> %i.il)
  %41 = insertelement <2 x float> poison, float %37, i64 0
  %i.io = shufflevector <2 x float> %41, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ip = shufflevector <2 x float> %i.hg, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.iq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.io, <2 x float> %i.ip, <2 x float> %i.in) ; 2 uses
  %i.ir = fneg float %i.ie
  %i.is = fmul float %i.ie, %i.ir
  %i.it = extractelement <2 x float> %i.ih, i64 0
  %i.iu = extractelement <2 x float> %i.ih, i64 1
  %i.iv = call float @llvm.fmuladd.f32(float %i.iu, float %i.it, float %i.is)
  %i.iw = fdiv float 1.000000e+00, %i.iv
  %i.ix = fneg <2 x float> %i.iq
  %i.iy = insertelement <2 x float> poison, float %i.ie, i64 0
  %i.iz = shufflevector <2 x float> %i.iy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ja = shufflevector <2 x float> %i.ix, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.jb = fmul <2 x float> %i.iz, %i.ja
  %i.jc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ih, <2 x float> %i.iq, <2 x float> %i.jb)
  %i.jd = insertelement <2 x float> poison, float %i.iw, i64 0
  %i.je = shufflevector <2 x float> %i.jd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jf = fmul <2 x float> %i.je, %i.jc           ; 3 uses
  %i.jg = extractelement <2 x float> %i.jf, i64 0 ; 3 uses
  %i.jh = fpext float %i.jg to double
  %i.ji = fsub double 1.000000e+00, %i.jh
  %i.jj = extractelement <2 x float> %i.jf, i64 1 ; 3 uses
  %i.jk = fpext float %i.jj to double
  %i.jl = fsub double %i.ji, %i.jk
  %i.jm = fptrunc double %i.jl to float           ; 3 uses
  %i.jn = fcmp ogt float %i.jg, %i.jm
  %.sroa.speculated = select i1 %i.jn, float %i.jm, float %i.jg ; 2 uses
  %i.jo = fcmp olt float %.sroa.speculated, %i.jj
  %.sroa.speculated.1 = select i1 %i.jo, float %.sroa.speculated, float %i.jj ; 3 uses
  %i.jp = fcmp ogt float %.sroa.speculated.1, %.051238
  %i.jq = fcmp olt float %.051238, 0.000000e+00
  %i.jr = and i1 %i.jq, %i.jp                     ; 2 uses
  %i.js = fcmp oge float %.sroa.speculated.1, 0.000000e+00
  %i.jt = fcmp oge float %.051238, 0.000000e+00
  %or.cond = select i1 %i.js, i1 %i.jt, i1 false
  br i1 %or.cond, label %.split, label %bb.v

.split:                                           ; preds = %bb.u
  %i.ju = call noundef float @llvm.fabs.f32(float %i.hz)
  %i.jv = call noundef float @llvm.fabs.f32(float %.050239)
  %i.jw = fcmp olt float %i.ju, %i.jv
  %i.jx = or i1 %i.jw, %i.jr
  br i1 %i.jx, label %bb.w, label %bb.aj

bb.v:                                             ; preds = %bb.u
  br i1 %i.jr, label %bb.w, label %bb.aj

bb.w:                                             ; preds = %.split, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store i8 1, ptr %i.ct, align 8, !tbaa !244
  store ptr null, ptr %i.cu, align 8, !tbaa !245
  store i32 0, ptr %i.cv, align 4, !tbaa !246
  store i32 0, ptr %i.cw, align 8, !tbaa !247
  %i.jy = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 8, i32 noundef 16)
          to label %bb.x unwind label %bb.ai      ; 4 uses

bb.x:                                             ; preds = %bb.w
  %.pre253 = load ptr, ptr %i.gk, align 8, !tbaa !45
  store i8 1, ptr %i.ct, align 8, !tbaa !244
  store ptr %i.jy, ptr %i.cu, align 8, !tbaa !245
  store i32 1, ptr %i.cw, align 8, !tbaa !247
  store ptr %.pre253, ptr %i.jy, align 8, !tbaa !45
  store i32 1, ptr %i.cv, align 4, !tbaa !246
  %i.jz = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 16, i32 noundef 16)
          to label %bb.y unwind label %bb.ai      ; 6 uses

bb.y:                                             ; preds = %bb.x
  %i.ka = load ptr, ptr %i.jy, align 8, !tbaa !45
  store ptr %i.ka, ptr %i.jz, align 8, !tbaa !45
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.jy)
          to label %bb.z unwind label %bb.ai

bb.z:                                             ; preds = %bb.y
  store i8 1, ptr %i.ct, align 8, !tbaa !244
  store ptr %i.jz, ptr %i.cu, align 8, !tbaa !245
  store i32 2, ptr %i.cw, align 8, !tbaa !247
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  %i.kc = load ptr, ptr %i.gl, align 8, !tbaa !45
  store ptr %i.kc, ptr %i.kb, align 8, !tbaa !45
  store i32 2, ptr %i.cv, align 4, !tbaa !246
  %i.kd = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 32, i32 noundef 16)
          to label %.lr.ph.i.i.i154.preheader unwind label %bb.ai ; 12 uses

.lr.ph.i.i.i154.preheader:                        ; preds = %bb.z
  %i.ke = ptrtoaddr ptr %i.kd to i64
  %i.kf = load ptr, ptr %i.jz, align 8, !tbaa !45
  store ptr %i.kf, ptr %i.kd, align 8, !tbaa !45
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !45
  store ptr %i.ki, ptr %i.kg, align 8, !tbaa !45
  %.old227 = load i8, ptr %i.ct, align 8, !tbaa !244, !range !37, !noundef !38
  %.old228 = trunc nuw i8 %.old227 to i1
  br i1 %.old228, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.i.i.i154.preheader
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.jz)
          to label %.noexc160 unwind label %bb.ai

.noexc160:                                        ; preds = %bb.aa
  %.pre2.pre.pre.i153 = load i32, ptr %i.cv, align 4, !tbaa !246
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i.i154.preheader, %.noexc160
  %.pre2.i152 = phi i32 [ 2, %.lr.ph.i.i.i154.preheader ], [ %.pre2.pre.pre.i153, %.noexc160 ] ; 5 uses
  store i8 1, ptr %i.ct, align 8, !tbaa !244
  store ptr %i.kd, ptr %i.cu, align 8, !tbaa !245
  store i32 4, ptr %i.cw, align 8, !tbaa !247
  %i.kj = sext i32 %.pre2.i152 to i64
  %i.kk = getelementptr inbounds [8 x i8], ptr %i.kd, i64 %i.kj
  %i.kl = load ptr, ptr %i.gt, align 8, !tbaa !45
  store ptr %i.kl, ptr %i.kk, align 8, !tbaa !45
  %i.km = add i32 %.pre2.i152, 1                  ; 8 uses
  store i32 %i.km, ptr %i.cv, align 4, !tbaa !246
  %i.kn = load i32, ptr %i.cp, align 4, !tbaa !246 ; 5 uses
  %.not = icmp slt i32 %.pre2.i152, %i.kn
  br i1 %.not, label %._ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE6resizeEiRKS3_.exit_crit_edge.i.i162, label %bb.ac

._ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE6resizeEiRKS3_.exit_crit_edge.i.i162: ; preds = %bb.ab
  %.pre10.i.i164 = load ptr, ptr %i.co, align 8, !tbaa !245
  br label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE6resizeEiRKS3_.exit.i.i165

bb.ac:                                            ; preds = %bb.ab
  %i.ko = load i32, ptr %i.cq, align 8, !tbaa !247
  %.not233 = icmp sgt i32 %i.ko, %.pre2.i152
  br i1 %.not233, label %..lr.ph.i_crit_edge.i.i171, label %bb.ad

..lr.ph.i_crit_edge.i.i171:                       ; preds = %bb.ac
  %.pre.i.i173 = load ptr, ptr %i.co, align 8, !tbaa !245
  br label %.lr.ph.i.i.i174

bb.ad:                                            ; preds = %bb.ac
  %.not.i.i.i.i.i177 = icmp eq i32 %i.km, 0
  br i1 %.not.i.i.i.i.i177, label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE8allocateEi.exit.i.i.i.i179, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.kp = sext i32 %i.km to i64
  %i.kq = shl nsw i64 %i.kp, 3
  %i.kr = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.kq, i32 noundef 16)
          to label %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE8allocateEi.exit.i.i.i.i179 unwind label %bb.ai

_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE8allocateEi.exit.i.i.i.i179: ; preds = %bb.ae, %bb.ad
  %.0.i.i.i.i.i180 = phi ptr [ null, %bb.ad ], [ %i.kr, %bb.ae ] ; 9 uses
  %i.ks = icmp sgt i32 %i.kn, 0
  %i.kt = load ptr, ptr %i.co, align 8, !tbaa !245 ; 9 uses
  br i1 %i.ks, label %.lr.ph.i.i.i.i.i185, label %_ZNK20btAlignedObjectArrayIPKN10btSoftBody4NodeEE4copyEiiPS3_.exit.i.i.i.i181

.lr.ph.i.i.i.i.i185:                              ; preds = %_ZN20btAlignedObjectArrayIPKN10btSoftBody4NodeEE8allocateEi.exit.i.i.i.i179
  %i.ku = ptrtoaddr ptr %i.kt to i64
  %.0.i.i.i.i.i180324 = ptrtoaddr ptr %.0.i.i.i.i.i180 to i64
  %wide.trip.count.i.i.i.i.i186 = zext nneg i32 %i.kn to i64 ; 5 uses
  %min.iters.check327 = icmp ult i32 %i.kn, 4
  %i.kv = sub i64 %i.ku, %.0.i.i.i.i.i180324
  %diff.check325 = icmp ugt i64 %i.kv, -32
  %or.cond341 = select i1 %min.iters.check327, i1 true, i1 %diff.check325
  br i1 %or.cond341, label %scalar.ph326.preheader, label %vector.ph328

vector.ph328:                                     ; preds = %.lr.ph.i.i.i.i.i185
  %n.vec329 = and i64 %wide.trip.count.i.i.i.i.i186, 2147483644 ; 3 uses
  br label %vector.body330

vector.body330:                                   ; preds = %vector.body330, %vector.ph328
  %index331 = phi i64 [ 0, %vector.ph328 ], [ %index.next334, %vector.body330 ] ; 3 uses
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i180, i64 %index331 ; 2 uses
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.kt, i64 %index331 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 16
  %wide.load332 = load <2 x ptr>, ptr %i.kx, align 8, !tbaa !45
  %wide.load333 = load <2 x ptr>, ptr %i.ky, align 8, !tbaa !45
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kw, i64 16
  store <2 x ptr> %wide.load332, ptr %i.kw, align 8, !tbaa !45
  store <2 x ptr> %wide.load333, ptr %i.kz, align 8, !tbaa !45
  %index.next334 = add nuw i64 %index331, 4       ; 2 uses
  %i.la = icmp eq i64 %index.next334, %n.vec329
  br i1 %i.la, label %middle.block335, label %vector.body330, !llvm.loop !484

middle.block335:                                  ; preds = %vector.body330
  %cmp.n336 = icmp eq i64 %n.vec329, %wide.trip.count.i.i.i.i.i186
  br i1 %cmp.n336, label %_ZNK20btAlignedObjectArrayIPKN10btSoftBody4NodeEE4copyEiiPS3_.exit.thread.i.i.i.i183, label %scalar.ph326.preheader

scalar.ph326.preheader:                           ; preds = %.lr.ph.i.i.i.i.i185, %middle.block335
  %indvars.iv.i.i.i.i.i187.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i185 ], [ %n.vec329, %middle.block335 ] ; 3 uses
  %xtraiter347 = and i64 %wide.trip.count.i.i.i.i.i186, 3 ; 2 uses
  %lcmp.mod348.not = icmp eq i64 %xtraiter347, 0
  br i1 %lcmp.mod348.not, label %scalar.ph326.prol.loopexit, label %scalar.ph326.prol

scalar.ph326.prol:                                ; preds = %scalar.ph326.preheader, %scalar.ph326.prol
  %indvars.iv.i.i.i.i.i187.prol = phi i64 [ %indvars.iv.next.i.i.i.i.i188.prol, %scalar.ph326.prol ], [ %indvars.iv.i.i.i.i.i187.ph, %scalar.ph326.preheader ] ; 3 uses
  %prol.iter349 = phi i64 [ %prol.iter349.next, %scalar.ph326.prol ], [ 0, %scalar.ph326.preheader ]
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i180, i64 %indvars.iv.i.i.i.i.i187.prol
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.kt, i64 %indvars.iv.i.i.i.i.i187.prol
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !45
  store ptr %i.ld, ptr %i.lb, align 8, !tbaa !45
  %indvars.iv.next.i.i.i.i.i188.prol = add nuw nsw i64 %indvars.iv.i.i.i.i.i187.prol, 1 ; 2 uses
  %prol.iter349.next = add i64 %prol.iter349, 1   ; 2 uses
  %prol.iter349.cmp.not = icmp eq i64 %prol.iter349.next, %xtraiter347
  br i1 %prol.iter349.cmp.not, label %scalar.ph326.prol.loopexit, label %scalar.ph326.prol, !llvm.loop !485

scalar.ph326.prol.loopexit:                       ; preds = %scalar.ph326.prol, %scalar.ph326.preheader
  %indvars.iv.i.i.i.i.i187.unr = phi i64 [ %indvars.iv.i.i.i.i.i187.ph, %scalar.ph326.preheader ], [ %indvars.iv.next.i.i.i.i.i188.prol, %scalar.ph326.prol ]
  %i.le = sub nsw i64 %indvars.iv.i.i.i.i.i187.ph, %wide.trip.count.i.i.i.i.i186
  %i.lf = icmp ugt i64 %i.le, -4
  br i1 %i.lf, label %_ZNK20btAlignedObjectArrayIPKN10btSoftBody4NodeEE4copyEiiPS3_.exit.thread.i.i.i.i183, label %scalar.ph326
end_hunk_0
