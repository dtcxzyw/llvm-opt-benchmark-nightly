Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meshoptimizer/original/spatialorder?download=true
inline.NumInlined: 27
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 39
begin_hunk_0_@meshopt_spatialClusterPoints:bb.a
  %i.sy = load i32, ptr %gep.i.2, align 8, !tbaa !20 ; 2 uses
  %i.sz = add i32 %i.sy, 1
  store i32 %i.sz, ptr %gep.i.2, align 8, !tbaa !20
  %i.ta = zext i32 %i.sy to i64
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.ta
  store i32 %i.ss, ptr %i.tb, align 4, !tbaa !20
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %i.so, i64 %.013.i.2
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 4
  %i.te = load i32, ptr %i.td, align 4, !tbaa !20 ; 2 uses
  %i.tf = zext i32 %i.te to i64
  %i.tg = getelementptr inbounds nuw [2 x i8], ptr %i.dm, i64 %i.tf
  %i.th = load i16, ptr %i.tg, align 2, !tbaa !25
  %i.ti = and i16 %i.th, 255
  %i.tj = zext nneg i16 %i.ti to i64
  %gep.i.2.1 = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.tj ; 2 uses
  %i.tk = load i32, ptr %gep.i.2.1, align 8, !tbaa !20 ; 2 uses
  %i.tl = add i32 %i.tk, 1
  store i32 %i.tl, ptr %gep.i.2.1, align 8, !tbaa !20
  %i.tm = zext i32 %i.tk to i64
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.tm
  store i32 %i.te, ptr %i.tn, align 4, !tbaa !20
  %i.to = add nuw i64 %.013.i.2, 2                ; 2 uses
  %niter236.next.1 = add i64 %niter236, 2         ; 2 uses
  %niter236.ncmp.1 = icmp eq i64 %niter236.next.1, %unroll_iter235
  br i1 %niter236.ncmp.1, label %.lr.ph.i71.2.preheader.unr-lcssa, label %.lr.ph.i67.2, !llvm.loop !68

.lr.ph.i71.2.preheader.unr-lcssa:                 ; preds = %.lr.ph.i67.2
  %lcmp.mod233.not = icmp eq i64 %xtraiter232, 0
  br i1 %lcmp.mod233.not, label %.lr.ph.i71.2.preheader, label %.lr.ph.i67.2.epil.preheader

.lr.ph.i67.2.epil.preheader:                      ; preds = %.lr.ph.i71.2.preheader.unr-lcssa, %.lr.ph.i67.preheader.2
  %.013.i.2.epil.init = phi i64 [ 0, %.lr.ph.i67.preheader.2 ], [ %i.to, %.lr.ph.i71.2.preheader.unr-lcssa ]
  %lcmp.mod234 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod234)
  %i.tp = getelementptr inbounds nuw [4 x i8], ptr %i.so, i64 %.013.i.2.epil.init
  %i.tq = load i32, ptr %i.tp, align 4, !tbaa !20 ; 2 uses
  %i.tr = zext i32 %i.tq to i64
  %i.ts = getelementptr inbounds nuw [2 x i8], ptr %i.dm, i64 %i.tr
  %i.tt = load i16, ptr %i.ts, align 2, !tbaa !25
  %i.tu = and i16 %i.tt, 255
  %i.tv = zext nneg i16 %i.tu to i64
  %gep.i.2.epil = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.tv ; 2 uses
  %i.tw = load i32, ptr %gep.i.2.epil, align 8, !tbaa !20 ; 2 uses
  %i.tx = add i32 %i.tw, 1
  store i32 %i.tx, ptr %gep.i.2.epil, align 8, !tbaa !20
  %i.ty = zext i32 %i.tw to i64
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.ty
  store i32 %i.tq, ptr %i.tz, align 4, !tbaa !20
  br label %.lr.ph.i71.2.preheader

.lr.ph.i71.2.preheader:                           ; preds = %.lr.ph.i71.2.preheader.unr-lcssa, %.lr.ph.i67.2.epil.preheader
  %xtraiter237 = and i64 %2, 1
  %i.ua = icmp eq i64 %i.sp, 0
  br i1 %i.ua, label %.lr.ph.i71.2.epil.preheader, label %.lr.ph.i71.2.preheader.new

.lr.ph.i71.2.preheader.new:                       ; preds = %.lr.ph.i71.2.preheader
  %unroll_iter240 = and i64 %2, -2
  br label %.lr.ph.i71.2

.lr.ph.i71.2:                                     ; preds = %.lr.ph.i71.2, %.lr.ph.i71.2.preheader.new
  %.013.i72.2 = phi i64 [ 0, %.lr.ph.i71.2.preheader.new ], [ %i.uy, %.lr.ph.i71.2 ] ; 3 uses
  %niter241 = phi i64 [ 0, %.lr.ph.i71.2.preheader.new ], [ %niter241.next.1, %.lr.ph.i71.2 ]
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %.013.i72.2
  %i.uc = load i32, ptr %i.ub, align 4, !tbaa !20 ; 2 uses
  %i.ud = zext i32 %i.uc to i64
  %i.ue = getelementptr inbounds nuw [2 x i8], ptr %i.dm, i64 %i.ud
  %i.uf = load i16, ptr %i.ue, align 2, !tbaa !25
  %i.ug = lshr i16 %i.uf, 8
  %i.uh = zext nneg i16 %i.ug to i64
  %gep.i73.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %i.uh ; 2 uses
  %i.ui = load i32, ptr %gep.i73.2, align 4, !tbaa !20 ; 2 uses
  %i.uj = add i32 %i.ui, 1
  store i32 %i.uj, ptr %gep.i73.2, align 4, !tbaa !20
  %i.uk = zext i32 %i.ui to i64
  %i.ul = getelementptr inbounds nuw [4 x i8], ptr %i.so, i64 %i.uk
  store i32 %i.uc, ptr %i.ul, align 4, !tbaa !20
  %i.um = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %.013.i72.2
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 4
  %i.uo = load i32, ptr %i.un, align 4, !tbaa !20 ; 2 uses
  %i.up = zext i32 %i.uo to i64
  %i.uq = getelementptr inbounds nuw [2 x i8], ptr %i.dm, i64 %i.up
  %i.ur = load i16, ptr %i.uq, align 2, !tbaa !25
  %i.us = lshr i16 %i.ur, 8
  %i.ut = zext nneg i16 %i.us to i64
  %gep.i73.2.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %i.ut ; 2 uses
  %i.uu = load i32, ptr %gep.i73.2.1, align 4, !tbaa !20 ; 2 uses
  %i.uv = add i32 %i.uu, 1
  store i32 %i.uv, ptr %gep.i73.2.1, align 4, !tbaa !20
  %i.uw = zext i32 %i.uu to i64
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr %i.so, i64 %i.uw
  store i32 %i.uo, ptr %i.ux, align 4, !tbaa !20
  %i.uy = add nuw i64 %.013.i72.2, 2              ; 2 uses
  %niter241.next.1 = add i64 %niter241, 2         ; 2 uses
  %niter241.ncmp.1 = icmp eq i64 %niter241.next.1, %unroll_iter240
  br i1 %niter241.ncmp.1, label %.lr.ph.i77.preheader.loopexit.unr-lcssa, label %.lr.ph.i71.2, !llvm.loop !68

_ZN7meshoptL16computeHistogramERA256_A2_jPKtm.exit: ; preds = %_ZN7meshoptL16computeHistogramERA256_A2_jPKtm.exit.preheader178, %_ZN7meshoptL16computeHistogramERA256_A2_jPKtm.exit
  %.083 = phi i64 [ %i.vb, %_ZN7meshoptL16computeHistogramERA256_A2_jPKtm.exit ], [ %.083.ph, %_ZN7meshoptL16computeHistogramERA256_A2_jPKtm.exit.preheader178 ] ; 3 uses
  %i.uz = trunc i64 %.083 to i32
  %i.va = getelementptr [4 x i8], ptr %i.de, i64 %.083
  store i32 %i.uz, ptr %i.va, align 4, !tbaa !20
  %i.vb = add nuw i64 %.083, 1                    ; 2 uses
  %exitcond89.not = icmp eq i64 %i.vb, %2
  br i1 %exitcond89.not, label %.lr.ph.i67.preheader, label %_ZN7meshoptL16computeHistogramERA256_A2_jPKtm.exit, !llvm.loop !77

.lr.ph.i77.1:                                     ; preds = %.lr.ph.i77.preheader
  %i.vc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !29
  %i.vd = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ve = load ptr, ptr %i.vd, align 8, !tbaa !19
  invoke void %i.vc(ptr noundef %i.ve)
          to label %.lr.ph.i77.2 unwind label %bb.h

.lr.ph.i77.2:                                     ; preds = %.lr.ph.i77.1
  %i.vf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !29
  %i.vg = load ptr, ptr %5, align 8, !tbaa !19
  invoke void %i.vf(ptr noundef %i.vg)
          to label %_ZN17meshopt_AllocatorD2Ev.exit unwind label %bb.h

_ZN17meshopt_AllocatorD2Ev.exit:                  ; preds = %.lr.ph.i77.2
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  ret void

bb.h:                                             ; preds = %.lr.ph.i77.2, %.lr.ph.i77.1, %.lr.ph.i77.preheader
  %i.vh = landingpad { ptr, i32 }
          catch ptr null
  %i.vi = extractvalue { ptr, i32 } %i.vh, 0
  tail call void @__clang_call_terminate(ptr %i.vi) #13
  unreachable

bb.i:                                             ; preds = %bb.e, %bb.f, %bb.d
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ej, %bb.d ], [ %i.ek, %bb.e ], [ %i.el, %bb.f ]
  call void @_ZN17meshopt_AllocatorD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN7meshoptL11splitPointsEPjS0_S0_S0_PKymPvm(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5, ptr nofree noundef captures(none) %6, i64 noundef %7) unnamed_addr #4 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 7 uses
  %.not102 = icmp ugt i64 %5, %7
  br i1 %.not102, label %.lr.ph108, label %tailrecurse._crit_edge

.lr.ph108:                                        ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = add i64 %7, -1
  br label %bb.b

tailrecurse._crit_edge:                           ; preds = %_ZN7meshoptL15partitionPointsEPjPKjPKhmm.exit.2, %bb.a
  %.tr.lcssa = phi ptr [ %0, %bb.a ], [ %i.gp, %_ZN7meshoptL15partitionPointsEPjPKjPKhmm.exit.2 ]
  %.tr87.lcssa = phi ptr [ %1, %bb.a ], [ %i.gq, %_ZN7meshoptL15partitionPointsEPjPKjPKhmm.exit.2 ]
  %.tr91.lcssa = phi i64 [ %5, %bb.a ], [ %i.gt, %_ZN7meshoptL15partitionPointsEPjPKjPKhmm.exit.2 ]
  %i.e = shl i64 %.tr91.lcssa, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.tr.lcssa, ptr align 4 %.tr87.lcssa, i64 %i.e, i1 false)
  ret void

bb.b:                                             ; preds = %.lr.ph108, %_ZN7meshoptL15partitionPointsEPjPKjPKhmm.exit.2
  %.tr91107 = phi i64 [ %5, %.lr.ph108 ], [ %i.gt, %_ZN7meshoptL15partitionPointsEPjPKjPKhmm.exit.2 ] ; 20 uses
  %.tr89106 = phi ptr [ %3, %.lr.ph108 ], [ %i.gs, %_ZN7meshoptL15partitionPointsEPjPKjPKhmm.exit.2 ] ; 9 uses
  %.tr88105 = phi ptr [ %2, %.lr.ph108 ], [ %i.gr, %_ZN7meshoptL15partitionPointsEPjPKjPKhmm.exit.2 ] ; 9 uses
  %.tr87104 = phi ptr [ %1, %.lr.ph108 ], [ %i.gq, %_ZN7meshoptL15partitionPointsEPjPKjPKhmm.exit.2 ] ; 9 uses
  %.tr103 = phi ptr [ %0, %.lr.ph108 ], [ %i.gp, %_ZN7meshoptL15partitionPointsEPjPKjPKhmm.exit.2 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store ptr %.tr87104, ptr %i.a, align 16, !tbaa !83
  store ptr %.tr88105, ptr %i.b, align 8, !tbaa !83
  store ptr %.tr89106, ptr %i.c, align 16, !tbaa !83
  %i.f = getelementptr [4 x i8], ptr %.tr87104, i64 %.tr91107
  %i.g = getelementptr i8, ptr %i.f, i64 -4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !20
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !28
  %i.l = trunc i64 %i.k to i32
  %i.m = and i32 %i.l, 1048575
  %i.n = load i32, ptr %.tr87104, align 4, !tbaa !20
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.o
  %i.q = load i64, ptr %i.p, align 8, !tbaa !28
  %i.r = trunc i64 %i.q to i32
  %i.s = and i32 %i.r, 1048575
  %i.t = sub nsw i32 %i.m, %i.s                   ; 2 uses
  %i.u = getelementptr [4 x i8], ptr %.tr88105, i64 %.tr91107
  %i.v = getelementptr i8, ptr %i.u, i64 -4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !20
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.x
  %i.z = load i64, ptr %i.y, align 8, !tbaa !28
  %i.aa = lshr i64 %i.z, 20
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = and i32 %i.ab, 1048575
  %i.ad = load i32, ptr %.tr88105, align 4, !tbaa !20
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !28
  %i.ah = lshr i64 %i.ag, 20
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = and i32 %i.ai, 1048575
  %i.ak = sub nsw i32 %i.ac, %i.aj                ; 2 uses
  %.not85.1 = icmp uge i32 %i.ak, %i.t            ; 2 uses
  %spec.select.1 = tail call i32 @llvm.umax.i32(i32 %i.ak, i32 %i.t) ; 2 uses
  %spec.select86.1 = zext i1 %.not85.1 to i32
  %i.al = getelementptr [4 x i8], ptr %.tr89106, i64 %.tr91107
  %i.am = getelementptr i8, ptr %i.al, i64 -4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !20
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !28
  %i.ar = lshr i64 %i.aq, 40
  %i.as = trunc nuw nsw i64 %i.ar to i32
  %i.at = and i32 %i.as, 1048575
  %i.au = load i32, ptr %.tr89106, align 4, !tbaa !20
  %i.av = zext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !28
  %i.ay = lshr i64 %i.ax, 40
  %i.az = trunc nuw nsw i64 %i.ay to i32
  %i.ba = and i32 %i.az, 1048575
  %i.bb = sub nsw i32 %i.at, %i.ba                ; 2 uses
  %.not85.2 = icmp ult i32 %i.bb, %spec.select.1  ; 2 uses
  %spec.select86.2 = select i1 %.not85.2, i32 %spec.select86.1, i32 2 ; 3 uses
  %i.bc = lshr i64 %.tr91107, 1
  %i.bd = add i64 %i.d, %i.bc                     ; 2 uses
  %i.be = urem i64 %i.bd, %7
  %i.bf = sub nuw i64 %i.bd, %i.be                ; 18 uses
  %i.bg = shl i64 %.tr91107, 2                    ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 %i.bg ; 15 uses
  %.not111 = icmp eq i64 %i.bf, 0
  br i1 %.not111, label %.preheader94, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.bi = zext nneg i32 %spec.select86.2 to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bi
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !83 ; 5 uses
  %xtraiter = and i64 %i.bf, 3                    ; 3 uses
  %i.bl = icmp ult i64 %i.bf, 4
  br i1 %i.bl, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.bf, -4
  br label %bb.d

.preheader94.loopexit.unr-lcssa:                  ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader94, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader94.loopexit.unr-lcssa, %.lr.ph
  %.07698.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.co, %.preheader94.loopexit.unr-lcssa ]
  %lcmp.mod127 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod127)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %.07698.epil = phi i64 [ %.07698.epil.init, %.epil.preheader ], [ %i.bq, %bb.c ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.07698.epil
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !20
  %i.bo = zext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bo
  store i8 0, ptr %i.bp, align 1, !tbaa !84
  %i.bq = add nuw i64 %.07698.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader94, label %bb.c, !llvm.loop !78

.preheader94:                                     ; preds = %.preheader94.loopexit.unr-lcssa, %bb.c, %bb.b
  %i.br = icmp ult i64 %i.bf, %.tr91107
  br i1 %i.br, label %.lr.ph100, label %.preheader

.lr.ph100:                                        ; preds = %.preheader94
  %i.bs = zext nneg i32 %spec.select86.2 to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bs
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !83
  br label %bb.e

bb.d:                                             ; preds = %bb.d, %.lr.ph.new
  %.07698 = phi i64 [ 0, %.lr.ph.new ], [ %i.co, %bb.d ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.d ]
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.07698
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !20
  %i.bx = zext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bx
  store i8 0, ptr %i.by, align 1, !tbaa !84
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.07698
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !20
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.cc
  store i8 0, ptr %i.cd, align 1, !tbaa !84
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.07698
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !20
  %i.ch = zext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ch
  store i8 0, ptr %i.ci, align 1, !tbaa !84
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.07698
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 12
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !20
  %i.cm = zext i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.cm
  store i8 0, ptr %i.cn, align 1, !tbaa !84
  %i.co = add nuw i64 %.07698, 4                  ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.preheader94.loopexit.unr-lcssa, label %bb.d, !llvm.loop !79

.preheader:                                       ; preds = %bb.e, %.preheader94
  %i.cp = icmp eq i32 %spec.select86.2, 0
  br i1 %i.cp, label %_ZN7meshoptL15partitionPointsEPjPKjPKhmm.exit, label %bb.f

bb.e:                                             ; preds = %.lr.ph100, %bb.e
  %.07599 = phi i64 [ %i.bf, %.lr.ph100 ], [ %i.cu, %bb.e ] ; 2 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %.07599
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !20
  %i.cs = zext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.cs
  store i8 1, ptr %i.ct, align 1, !tbaa !84
  %i.cu = add nuw i64 %.07599, 1                  ; 2 uses
  %i.cv = icmp ult i64 %i.cu, %.tr91107
  br i1 %i.cv, label %bb.e, label %.preheader, !llvm.loop !80

bb.f:                                             ; preds = %.preheader
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %6, ptr nonnull align 4 %.tr87104, i64 %i.bg, i1 false)
  %xtraiter128 = and i64 %.tr91107, 1
  %i.cw = icmp eq i64 %.tr91107, 1
  br i1 %i.cw, label %.lr.ph.i.epil.preheader, label %.new

.new:                                             ; preds = %bb.f
  %unroll_iter132 = and i64 %.tr91107, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.new
  %.021.i = phi i64 [ 0, %.new ], [ %i.ds, %.lr.ph.i ] ; 2 uses
  %.01720.i = phi i64 [ 0, %.new ], [ %i.du, %.lr.ph.i ] ; 3 uses
  %.01819.i = phi i64 [ %i.bf, %.new ], [ %i.dt, %.lr.ph.i ] ; 2 uses
  %niter133 = phi i64 [ 0, %.new ], [ %niter133.next.1, %.lr.ph.i ]
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.01720.i
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !20 ; 2 uses
  %i.cz = zext i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !84  ; 2 uses
  %.not.i = icmp eq i8 %i.db, 0
  %i.dc = select i1 %.not.i, i64 %.021.i, i64 %.01819.i
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %.tr87104, i64 %i.dc
  store i32 %i.cy, ptr %i.dd, align 4, !tbaa !20
  %i.de = add i64 %.021.i, 1
  %i.df = zext i8 %i.db to i64                    ; 2 uses
  %i.dg = sub i64 %i.de, %i.df                    ; 2 uses
  %i.dh = add i64 %.01819.i, %i.df                ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.01720.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !20 ; 2 uses
  %i.dl = zext i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !84  ; 2 uses
  %.not.i.1137 = icmp eq i8 %i.dn, 0
  %i.do = select i1 %.not.i.1137, i64 %i.dg, i64 %i.dh
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %.tr87104, i64 %i.do
  store i32 %i.dk, ptr %i.dp, align 4, !tbaa !20
  %i.dq = add i64 %i.dg, 1
  %i.dr = zext i8 %i.dn to i64                    ; 2 uses
  %i.ds = sub i64 %i.dq, %i.dr                    ; 2 uses
  %i.dt = add i64 %i.dh, %i.dr                    ; 2 uses
  %i.du = add nuw i64 %.01720.i, 2                ; 2 uses
  %niter133.next.1 = add i64 %niter133, 2         ; 2 uses
  %niter133.ncmp.1 = icmp eq i64 %niter133.next.1, %unroll_iter132
  br i1 %niter133.ncmp.1, label %_ZN7meshoptL15partitionPointsEPjPKjPKhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !81

_ZN7meshoptL15partitionPointsEPjPKjPKhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod130.not = icmp eq i64 %xtraiter128, 0
  br i1 %lcmp.mod130.not, label %_ZN7meshoptL15partitionPointsEPjPKjPKhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN7meshoptL15partitionPointsEPjPKjPKhmm.exit.loopexit.unr-lcssa, %bb.f
  %.021.i.epil.init = phi i64 [ 0, %bb.f ], [ %i.ds, %_ZN7meshoptL15partitionPointsEPjPKjPKhmm.exit.loopexit.unr-lcssa ]
  %.01720.i.epil.init = phi i64 [ 0, %bb.f ], [ %i.du, %_ZN7meshoptL15partitionPointsEPjPKjPKhmm.exit.loopexit.unr-lcssa ]
  %.01819.i.epil.init = phi i64 [ %i.bf, %bb.f ], [ %i.dt, %_ZN7meshoptL15partitionPointsEPjPKjPKhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod131 = trunc i64 %.tr91107 to i1
  tail call void @llvm.assume(i1 %lcmp.mod131)
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.01720.i.epil.init
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !20 ; 2 uses
  %i.dx = zext i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !84
  %.not.i.epil = icmp eq i8 %i.dz, 0
  %i.ea = select i1 %.not.i.epil, i64 %.021.i.epil.init, i64 %.01819.i.epil.init
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %.tr87104, i64 %i.ea
  store i32 %i.dw, ptr %i.eb, align 4, !tbaa !20
  br label %_ZN7meshoptL15partitionPointsEPjPKjPKhmm.exit

_ZN7meshoptL15partitionPointsEPjPKjPKhmm.exit:    ; preds = %.lr.ph.i.epil.preheader, %_ZN7meshoptL15partitionPointsEPjPKjPKhmm.exit.loopexit.unr-lcssa, %.preheader
  %i.ec = and i1 %.not85.2, %.not85.1
  br i1 %i.ec, label %_ZN7meshoptL15partitionPointsEPjPKjPKhmm.exit.1, label %bb.g

bb.g:                                             ; preds = %_ZN7meshoptL15partitionPointsEPjPKjPKhmm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %6, ptr nonnull align 4 %.tr88105, i64 %i.bg, i1 false)
  %xtraiter141 = and i64 %.tr91107, 1
  %i.ed = icmp eq i64 %.tr91107, 1
  br i1 %i.ed, label %.lr.ph.i.1.epil.preheader, label %.new140

.new140:                                          ; preds = %bb.g
  %unroll_iter145 = and i64 %.tr91107, -2
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i.1, %.new140
  %.021.i.1 = phi i64 [ 0, %.new140 ], [ %i.ez, %.lr.ph.i.1 ] ; 2 uses
  %.01720.i.1 = phi i64 [ 0, %.new140 ], [ %i.fb, %.lr.ph.i.1 ] ; 3 uses
  %.01819.i.1 = phi i64 [ %i.bf, %.new140 ], [ %i.fa, %.lr.ph.i.1 ] ; 2 uses
  %niter146 = phi i64 [ 0, %.new140 ], [ %niter146.next.1, %.lr.ph.i.1 ]
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.01720.i.1
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !20 ; 2 uses
  %i.eg = zext i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.eg
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !84  ; 2 uses
  %.not.i.1 = icmp eq i8 %i.ei, 0
  %i.ej = select i1 %.not.i.1, i64 %.021.i.1, i64 %.01819.i.1
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %.tr88105, i64 %i.ej
  store i32 %i.ef, ptr %i.ek, align 4, !tbaa !20
  %i.el = add i64 %.021.i.1, 1
  %i.em = zext i8 %i.ei to i64                    ; 2 uses
  %i.en = sub i64 %i.el, %i.em                    ; 2 uses
  %i.eo = add i64 %.01819.i.1, %i.em              ; 2 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.01720.i.1
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !20 ; 2 uses
  %i.es = zext i32 %i.er to i64
  %i.et = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.es
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !84  ; 2 uses
  %.not.i.1.1 = icmp eq i8 %i.eu, 0
  %i.ev = select i1 %.not.i.1.1, i64 %i.en, i64 %i.eo
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %.tr88105, i64 %i.ev
  store i32 %i.er, ptr %i.ew, align 4, !tbaa !20
  %i.ex = add i64 %i.en, 1
  %i.ey = zext i8 %i.eu to i64                    ; 2 uses
  %i.ez = sub i64 %i.ex, %i.ey                    ; 2 uses
  %i.fa = add i64 %i.eo, %i.ey                    ; 2 uses
  %i.fb = add nuw i64 %.01720.i.1, 2              ; 2 uses
  %niter146.next.1 = add i64 %niter146, 2         ; 2 uses
  %niter146.ncmp.1 = icmp eq i64 %niter146.next.1, %unroll_iter145
  br i1 %niter146.ncmp.1, label %_ZN7meshoptL15partitionPointsEPjPKjPKhmm.exit.1.loopexit.unr-lcssa, label %.lr.ph.i.1, !llvm.loop !81

_ZN7meshoptL15partitionPointsEPjPKjPKhmm.exit.1.loopexit.unr-lcssa: ; preds = %.lr.ph.i.1
  %lcmp.mod143.not = icmp eq i64 %xtraiter141, 0
  br i1 %lcmp.mod143.not, label %_ZN7meshoptL15partitionPointsEPjPKjPKhmm.exit.1, label %.lr.ph.i.1.epil.preheader

.lr.ph.i.1.epil.preheader:                        ; preds = %_ZN7meshoptL15partitionPointsEPjPKjPKhmm.exit.1.loopexit.unr-lcssa, %bb.g
  %.021.i.1.epil.init = phi i64 [ 0, %bb.g ], [ %i.ez, %_ZN7meshoptL15partitionPointsEPjPKjPKhmm.exit.1.loopexit.unr-lcssa ]
  %.01720.i.1.epil.init = phi i64 [ 0, %bb.g ], [ %i.fb, %_ZN7meshoptL15partitionPointsEPjPKjPKhmm.exit.1.loopexit.unr-lcssa ]
  %.01819.i.1.epil.init = phi i64 [ %i.bf, %bb.g ], [ %i.fa, %_ZN7meshoptL15partitionPointsEPjPKjPKhmm.exit.1.loopexit.unr-lcssa ]
  %lcmp.mod144 = trunc i64 %.tr91107 to i1
  tail call void @llvm.assume(i1 %lcmp.mod144)
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.01720.i.1.epil.init
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !20 ; 2 uses
  %i.fe = zext i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.fe
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !84
  %.not.i.1.epil = icmp eq i8 %i.fg, 0
  %i.fh = select i1 %.not.i.1.epil, i64 %.021.i.1.epil.init, i64 %.01819.i.1.epil.init
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %.tr88105, i64 %i.fh
  store i32 %i.fd, ptr %i.fi, align 4, !tbaa !20
  br label %_ZN7meshoptL15partitionPointsEPjPKjPKhmm.exit.1

_ZN7meshoptL15partitionPointsEPjPKjPKhmm.exit.1:  ; preds = %.lr.ph.i.1.epil.preheader, %_ZN7meshoptL15partitionPointsEPjPKjPKhmm.exit.1.loopexit.unr-lcssa, %_ZN7meshoptL15partitionPointsEPjPKjPKhmm.exit
  %not..not85.2.not = icmp ult i32 %i.bb, %spec.select.1
  br i1 %not..not85.2.not, label %bb.h, label %_ZN7meshoptL15partitionPointsEPjPKjPKhmm.exit.2

bb.h:                                             ; preds = %_ZN7meshoptL15partitionPointsEPjPKjPKhmm.exit.1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %6, ptr nonnull align 4 %.tr89106, i64 %i.bg, i1 false)
  %xtraiter148 = and i64 %.tr91107, 1
  %i.fj = icmp eq i64 %.tr91107, 1
  br i1 %i.fj, label %.lr.ph.i.2.epil.preheader, label %.new147

.new147:                                          ; preds = %bb.h
  %unroll_iter152 = and i64 %.tr91107, -2
  br label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.2, %.new147
  %.021.i.2 = phi i64 [ 0, %.new147 ], [ %i.gf, %.lr.ph.i.2 ] ; 2 uses
  %.01720.i.2 = phi i64 [ 0, %.new147 ], [ %i.gh, %.lr.ph.i.2 ] ; 3 uses
  %.01819.i.2 = phi i64 [ %i.bf, %.new147 ], [ %i.gg, %.lr.ph.i.2 ] ; 2 uses
  %niter153 = phi i64 [ 0, %.new147 ], [ %niter153.next.1, %.lr.ph.i.2 ]
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.01720.i.2
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !20 ; 2 uses
  %i.fm = zext i32 %i.fl to i64
  %i.fn = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.fm
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !84  ; 2 uses
  %.not.i.2 = icmp eq i8 %i.fo, 0
  %i.fp = select i1 %.not.i.2, i64 %.021.i.2, i64 %.01819.i.2
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %.tr89106, i64 %i.fp
  store i32 %i.fl, ptr %i.fq, align 4, !tbaa !20
  %i.fr = add i64 %.021.i.2, 1
  %i.fs = zext i8 %i.fo to i64                    ; 2 uses
  %i.ft = sub i64 %i.fr, %i.fs                    ; 2 uses
  %i.fu = add i64 %.01819.i.2, %i.fs              ; 2 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.01720.i.2
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 4
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !20 ; 2 uses
  %i.fy = zext i32 %i.fx to i64
  %i.fz = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.fy
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !84  ; 2 uses
  %.not.i.2.1 = icmp eq i8 %i.ga, 0
  %i.gb = select i1 %.not.i.2.1, i64 %i.ft, i64 %i.fu
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %.tr89106, i64 %i.gb
  store i32 %i.fx, ptr %i.gc, align 4, !tbaa !20
  %i.gd = add i64 %i.ft, 1
  %i.ge = zext i8 %i.ga to i64                    ; 2 uses
  %i.gf = sub i64 %i.gd, %i.ge                    ; 2 uses
  %i.gg = add i64 %i.fu, %i.ge                    ; 2 uses
  %i.gh = add nuw i64 %.01720.i.2, 2              ; 2 uses
  %niter153.next.1 = add i64 %niter153, 2         ; 2 uses
  %niter153.ncmp.1 = icmp eq i64 %niter153.next.1, %unroll_iter152
  br i1 %niter153.ncmp.1, label %_ZN7meshoptL15partitionPointsEPjPKjPKhmm.exit.2.loopexit.unr-lcssa, label %.lr.ph.i.2, !llvm.loop !81

_ZN7meshoptL15partitionPointsEPjPKjPKhmm.exit.2.loopexit.unr-lcssa: ; preds = %.lr.ph.i.2
  %lcmp.mod150.not = icmp eq i64 %xtraiter148, 0
  br i1 %lcmp.mod150.not, label %_ZN7meshoptL15partitionPointsEPjPKjPKhmm.exit.2, label %.lr.ph.i.2.epil.preheader

.lr.ph.i.2.epil.preheader:                        ; preds = %_ZN7meshoptL15partitionPointsEPjPKjPKhmm.exit.2.loopexit.unr-lcssa, %bb.h
  %.021.i.2.epil.init = phi i64 [ 0, %bb.h ], [ %i.gf, %_ZN7meshoptL15partitionPointsEPjPKjPKhmm.exit.2.loopexit.unr-lcssa ]
  %.01720.i.2.epil.init = phi i64 [ 0, %bb.h ], [ %i.gh, %_ZN7meshoptL15partitionPointsEPjPKjPKhmm.exit.2.loopexit.unr-lcssa ]
  %.01819.i.2.epil.init = phi i64 [ %i.bf, %bb.h ], [ %i.gg, %_ZN7meshoptL15partitionPointsEPjPKjPKhmm.exit.2.loopexit.unr-lcssa ]
  %lcmp.mod151 = trunc i64 %.tr91107 to i1
  tail call void @llvm.assume(i1 %lcmp.mod151)
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.01720.i.2.epil.init
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !20 ; 2 uses
  %i.gk = zext i32 %i.gj to i64
  %i.gl = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.gk
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !84
  %.not.i.2.epil = icmp eq i8 %i.gm, 0
  %i.gn = select i1 %.not.i.2.epil, i64 %.021.i.2.epil.init, i64 %.01819.i.2.epil.init
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %.tr89106, i64 %i.gn
  store i32 %i.gj, ptr %i.go, align 4, !tbaa !20
  br label %_ZN7meshoptL15partitionPointsEPjPKjPKhmm.exit.2

_ZN7meshoptL15partitionPointsEPjPKjPKhmm.exit.2:  ; preds = %.lr.ph.i.2.epil.preheader, %_ZN7meshoptL15partitionPointsEPjPKjPKhmm.exit.2.loopexit.unr-lcssa, %_ZN7meshoptL15partitionPointsEPjPKjPKhmm.exit.1
  tail call fastcc void @_ZN7meshoptL11splitPointsEPjS0_S0_S0_PKymPvm(ptr noundef %.tr103, ptr noundef nonnull %.tr87104, ptr noundef nonnull %.tr88105, ptr noundef nonnull %.tr89106, ptr noundef nonnull %4, i64 noundef %i.bf, ptr noundef %6, i64 noundef %7)
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %.tr103, i64 %i.bf ; 2 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %.tr87104, i64 %i.bf ; 2 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %.tr88105, i64 %i.bf
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %.tr89106, i64 %i.bf
  %i.gt = sub i64 %.tr91107, %i.bf                ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %.not = icmp ugt i64 %i.gt, %7
  br i1 %.not, label %bb.b, label %tailrecurse._crit_edge
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #12 ; 0 uses
  tail call void @_ZSt9terminatev() #13
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #6

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = distinct !{!2, !21}
!3 = distinct !{!3, !21}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!"_ZTSN17meshopt_Allocator7StorageE", !13, i64 0, !13, i64 8}
!15 = !{!14, !13, i64 0}
!16 = !{!"long", !9, i64 0}
!17 = !{!"_ZTS17meshopt_Allocator", !9, i64 0, !16, i64 192}
!18 = !{!17, !16, i64 192}
!19 = !{!13, !13, i64 0}
!20 = !{!10, !10, i64 0}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!"llvm.loop.isvectorized", i32 1}
!23 = !{!"llvm.loop.unroll.runtime.disable"}
!24 = !{!"short", !9, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!"llvm.loop.unroll.disable"}
!27 = !{!"long long", !9, i64 0}
!28 = !{!27, !27, i64 0}
!29 = !{!14, !13, i64 8}
!30 = !{!"float", !9, i64 0}
!31 = !{!30, !30, i64 0}
!32 = distinct !{!32, !21, !22, !23}
!33 = distinct !{!33, !26}
!34 = distinct !{!34, !21, !23, !22}
!35 = distinct !{!35, !21, !22, !23}
!36 = distinct !{!36, !21}
!37 = distinct !{!37, !21}
!38 = distinct !{!38, !21}
!39 = distinct !{!39, !21, !22, !23}
!40 = distinct !{!40, !21, !23, !22}
!41 = distinct !{!41, !26}
!42 = distinct !{!42, !21, !22, !23}
!43 = distinct !{!43, !21, !23, !22}
!44 = distinct !{!44, !26}
!45 = distinct !{!45, !21, !22, !23}
!46 = distinct !{!46, !21, !23, !22}
!47 = distinct !{!47, !26}
!48 = distinct !{!48, !21, !22, !23}
!49 = distinct !{!49, !21, !23, !22}
!50 = distinct !{!50, !26}
!51 = distinct !{!51, !26}
!52 = distinct !{!52, !21, !23, !22}
!53 = distinct !{!53, !21}
!54 = distinct !{!54, !21, !22, !23}
!55 = distinct !{!55, !21, !22, !23}
!56 = distinct !{!56, !21, !23, !22}
!57 = distinct !{!57, !21, !23, !22}
!58 = distinct !{null}
!59 = distinct !{!59, !21}
!60 = distinct !{!60, !21}
!61 = distinct !{!61, !21, !22, !23}
!62 = distinct !{!62, !21, !23, !22}
!63 = distinct !{!63, !21, !22, !23}
!64 = distinct !{!64, !21}
!65 = distinct !{!65, !21}
end_hunk_0
