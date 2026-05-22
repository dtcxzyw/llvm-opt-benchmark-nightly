inline.NumInlined: 10
inline.NumDeleted: 2
begin_hunk_0_@_ZN11duckdb_zstdL24HIST_count_parallel_wkspEPjS0_PKvmNS_17HIST_checkInput_eES0_:bb.a
  %i.ay = add i32 %i.ax, 1
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !3
  %i.az = lshr i32 %.098.val, 8
  %i.ba = and i32 %i.az, 255
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !3
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !3
  %i.bf = lshr i32 %.098.val, 16
  %i.bg = and i32 %i.bf, 255
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bh ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !3
  %i.bk = add i32 %i.bj, 1
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !3
  %i.bl = lshr i32 %.098.val, 24
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.bm ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !3
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !3
  %.val106 = load i32, ptr %i.at, align 1, !tbaa !3 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.pn113, i64 16 ; 4 uses
  %i.br = and i32 %.val107, 255
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.bs ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !3
  %i.bv = add i32 %i.bu, 1
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !3
  %i.bw = lshr i32 %.val107, 8
  %i.bx = and i32 %i.bw, 255
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.by ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !3
  %i.cb = add i32 %i.ca, 1
  store i32 %i.cb, ptr %i.bz, align 4, !tbaa !3
  %i.cc = lshr i32 %.val107, 16
  %i.cd = and i32 %i.cc, 255
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ce ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !3
  %i.ch = add i32 %i.cg, 1
  store i32 %i.ch, ptr %i.cf, align 4, !tbaa !3
  %i.ci = lshr i32 %.val107, 24
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.cj ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !3
  %i.cm = add i32 %i.cl, 1
  store i32 %i.cm, ptr %i.ck, align 4, !tbaa !3
  %.val = load i32, ptr %i.bq, align 1, !tbaa !3
  %i.cn = and i32 %.val106, 255
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.co ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !3
  %i.cr = add i32 %i.cq, 1
  store i32 %i.cr, ptr %i.cp, align 4, !tbaa !3
  %i.cs = lshr i32 %.val106, 8
  %i.ct = and i32 %i.cs, 255
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.cu ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !3
  %i.cx = add i32 %i.cw, 1
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !3
  %i.cy = lshr i32 %.val106, 16
  %i.cz = and i32 %i.cy, 255
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.da ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !3
  %i.dd = add i32 %i.dc, 1
  store i32 %i.dd, ptr %i.db, align 4, !tbaa !3
  %i.de = lshr i32 %.val106, 24
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.df ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !3
  %i.di = add i32 %i.dh, 1
  store i32 %i.di, ptr %i.dg, align 4, !tbaa !3
  %.098 = getelementptr inbounds nuw i8, ptr %.pn113, i64 20 ; 2 uses
  %i.dj = icmp ult ptr %.098, %i.j
  br i1 %i.dj, label %.lr.ph, label %.preheader111.loopexit, !llvm.loop !19

vector.body:                                      ; preds = %vector.body.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.body.preheader ] ; 5 uses
  %vec.phi = phi <4 x i32> [ %i.dy, %vector.body ], [ zeroinitializer, %vector.body.preheader ]
  %vec.phi124 = phi <4 x i32> [ %i.dz, %vector.body ], [ zeroinitializer, %vector.body.preheader ]
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %wide.load = load <4 x i32>, ptr %i.dk, align 4, !tbaa !3
  %wide.load125 = load <4 x i32>, ptr %i.dl, align 4, !tbaa !3
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %index ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %wide.load126 = load <4 x i32>, ptr %i.dm, align 4, !tbaa !3
  %wide.load127 = load <4 x i32>, ptr %i.dn, align 4, !tbaa !3
  %i.do = add <4 x i32> %wide.load126, %wide.load
  %i.dp = add <4 x i32> %wide.load127, %wide.load125
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %wide.load128 = load <4 x i32>, ptr %i.dq, align 4, !tbaa !3
  %wide.load129 = load <4 x i32>, ptr %i.dr, align 4, !tbaa !3
  %i.ds = add <4 x i32> %i.do, %wide.load128
  %i.dt = add <4 x i32> %i.dp, %wide.load129
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %index ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16 ; 2 uses
  %wide.load130 = load <4 x i32>, ptr %i.du, align 4, !tbaa !3
  %wide.load131 = load <4 x i32>, ptr %i.dv, align 4, !tbaa !3
  %i.dw = add <4 x i32> %i.ds, %wide.load130      ; 2 uses
  %i.dx = add <4 x i32> %i.dt, %wide.load131      ; 2 uses
  store <4 x i32> %i.dw, ptr %i.du, align 4, !tbaa !3
  store <4 x i32> %i.dx, ptr %i.dv, align 4, !tbaa !3
  %i.dy = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.dw, <4 x i32> %vec.phi) ; 2 uses
  %i.dz = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.dx, <4 x i32> %vec.phi124) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ea = icmp eq i64 %index.next, 256
  br i1 %i.ea, label %middle.block, label %vector.body, !llvm.loop !20

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.dy, <4 x i32> %i.dz)
  %i.eb = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax)
  br label %bb.d

.lr.ph117:                                        ; preds = %.lr.ph117.prol.loopexit, %.lr.ph117
  %.199116 = phi ptr [ %i.eu, %.lr.ph117 ], [ %.199116.unr, %.lr.ph117.prol.loopexit ] ; 5 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.199116, i64 1
  %i.ed = load i8, ptr %.199116, align 1, !tbaa !7
  %i.ee = zext i8 %i.ed to i64
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.ee ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !3
  %i.eh = add i32 %i.eg, 1
  store i32 %i.eh, ptr %i.ef, align 4, !tbaa !3
  %i.ei = getelementptr inbounds nuw i8, ptr %.199116, i64 2
  %i.ej = load i8, ptr %i.ec, align 1, !tbaa !7
  %i.ek = zext i8 %i.ej to i64
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.ek ; 2 uses
  %i.em = load i32, ptr %i.el, align 4, !tbaa !3
  %i.en = add i32 %i.em, 1
  store i32 %i.en, ptr %i.el, align 4, !tbaa !3
  %i.eo = getelementptr inbounds nuw i8, ptr %.199116, i64 3
  %i.ep = load i8, ptr %i.ei, align 1, !tbaa !7
  %i.eq = zext i8 %i.ep to i64
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.eq ; 2 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !3
  %i.et = add i32 %i.es, 1
  store i32 %i.et, ptr %i.er, align 4, !tbaa !3
  %i.eu = getelementptr inbounds nuw i8, ptr %.199116, i64 4 ; 2 uses
  %i.ev = load i8, ptr %i.eo, align 1, !tbaa !7
  %i.ew = zext i8 %i.ev to i64
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.ew ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !3
  %i.ez = add i32 %i.ey, 1
  store i32 %i.ez, ptr %i.ex, align 4, !tbaa !3
  %exitcond.not.3 = icmp eq ptr %i.eu, %scevgep
  br i1 %exitcond.not.3, label %vector.body.preheader, label %.lr.ph117, !llvm.loop !21

vector.body.preheader:                            ; preds = %.lr.ph117.prol.loopexit, %.lr.ph117, %.preheader111
  br label %vector.body

bb.d:                                             ; preds = %bb.d, %middle.block
  %.0 = phi i32 [ %i.fd, %bb.d ], [ 255, %middle.block ] ; 4 uses
  %i.fa = zext i32 %.0 to i64
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.fa
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !3
  %.not103 = icmp eq i32 %i.fc, 0
  %i.fd = add i32 %.0, -1
  br i1 %.not103, label %bb.d, label %bb.e, !llvm.loop !22

bb.e:                                             ; preds = %bb.d
  %.not104 = icmp eq i32 %4, 0
  br i1 %.not104, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.fe = load i32, ptr %1, align 4, !tbaa !3
  %i.ff = icmp ugt i32 %.0, %i.fe
  br i1 %i.ff, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  store i32 %.0, ptr %1, align 4, !tbaa !3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %0, ptr nonnull align 4 %5, i64 %i.f, i1 false)
  %i.fg = zext i32 %i.eb to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.b
  %.1 = phi i64 [ 0, %bb.b ], [ %i.fg, %bb.g ], [ -48, %bb.f ]
  ret i64 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef range(i64 -66, 4294967296) i64 @_ZN11duckdb_zstd15HIST_count_wkspEPjS0_PKvmPvm(ptr noundef captures(none) %0, ptr noundef captures(none) %1, ptr noundef readonly captures(address) %2, i64 noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %4 to i64
  %i.b = and i64 %i.a, 3
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %_ZN11duckdb_zstd19HIST_countFast_wkspEPjS0_PKvmPvm.exit

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult i64 %5, 4096
  br i1 %i.c, label %_ZN11duckdb_zstd19HIST_countFast_wkspEPjS0_PKvmPvm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %1, align 4, !tbaa !3
  %i.e = icmp ult i32 %i.d, 255
  br i1 %i.e, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 255, ptr %1, align 4, !tbaa !3
  %i.f = icmp ult i64 %3, 1500
  br i1 %i.f, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %0, i8 0, i64 1024, i1 false)
  %i.h = icmp eq i64 %3, 0
  br i1 %i.h, label %bb.f, label %.lr.ph.i.i

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %1, align 4, !tbaa !3
  br label %_ZN11duckdb_zstd19HIST_countFast_wkspEPjS0_PKvmPvm.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.i
  %.02933.i.i = phi ptr [ %i.i, %.lr.ph.i.i ], [ %2, %bb.e ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.02933.i.i, i64 1 ; 2 uses
  %i.j = load i8, ptr %.02933.i.i, align 1, !tbaa !7
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.k ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !3
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 4, !tbaa !3
  %i.o = icmp ult ptr %i.i, %i.g
  br i1 %i.o, label %.lr.ph.i.i, label %.preheader.i.i, !llvm.loop !8

.preheader.i.i:                                   ; preds = %.lr.ph.i.i, %.preheader.i.i
  %.027.i.i = phi i32 [ %i.s, %.preheader.i.i ], [ 255, %.lr.ph.i.i ] ; 4 uses
  %i.p = zext i32 %.027.i.i to i64                ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !3
  %.not.i.i = icmp eq i32 %i.r, 0
  %i.s = add i32 %.027.i.i, -1
  br i1 %.not.i.i, label %.preheader.i.i, label %bb.g, !llvm.loop !10

bb.g:                                             ; preds = %.preheader.i.i
  store i32 %.027.i.i, ptr %1, align 4, !tbaa !3
  %i.t = add nuw nsw i64 %i.p, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %.027.i.i, 7
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.g
  %n.vec = and i64 %i.t, 8589934584               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.w, %vector.body ]
  %vec.phi17 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.x, %vector.body ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load = load <4 x i32>, ptr %i.u, align 4, !tbaa !3
  %wide.load18 = load <4 x i32>, ptr %i.v, align 4, !tbaa !3
  %i.w = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %wide.load, <4 x i32> %vec.phi) ; 2 uses
  %i.x = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %wide.load18, <4 x i32> %vec.phi17) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !23

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.w, <4 x i32> %i.x)
  %i.z = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZN11duckdb_zstd17HIST_count_simpleEPjS0_PKvm.exit.loopexit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.g, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %bb.g ], [ %n.vec, %middle.block ]
  %.02634.i.i.ph = phi i32 [ 0, %bb.g ], [ %i.z, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %scalar.ph ], [ %indvars.iv.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %.02634.i.i = phi i32 [ %spec.select.i.i, %scalar.ph ], [ %.02634.i.i.ph, %scalar.ph.preheader ]
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i.i
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !3
  %spec.select.i.i = tail call i32 @llvm.umax.i32(i32 %i.ab, i32 %.02634.i.i) ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.i.i, %i.p
  br i1 %exitcond.not.i, label %_ZN11duckdb_zstd17HIST_count_simpleEPjS0_PKvm.exit.loopexit.i, label %scalar.ph, !llvm.loop !24

_ZN11duckdb_zstd17HIST_count_simpleEPjS0_PKvm.exit.loopexit.i: ; preds = %scalar.ph, %middle.block
  %spec.select.i.i.lcssa = phi i32 [ %i.z, %middle.block ], [ %spec.select.i.i, %scalar.ph ]
  %i.ac = zext i32 %spec.select.i.i.lcssa to i64
  br label %_ZN11duckdb_zstd19HIST_countFast_wkspEPjS0_PKvmPvm.exit

bb.h:                                             ; preds = %bb.d, %bb.c
  %.sink = phi i32 [ 1, %bb.c ], [ 0, %bb.d ]
  %i.ad = tail call fastcc noundef i64 @_ZN11duckdb_zstdL24HIST_count_parallel_wkspEPjS0_PKvmNS_17HIST_checkInput_eES0_(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i64 noundef %3, i32 noundef %.sink, ptr noundef %4)
  br label %_ZN11duckdb_zstd19HIST_countFast_wkspEPjS0_PKvmPvm.exit

_ZN11duckdb_zstd19HIST_countFast_wkspEPjS0_PKvmPvm.exit: ; preds = %bb.h, %_ZN11duckdb_zstd17HIST_count_simpleEPjS0_PKvm.exit.loopexit.i, %bb.f, %bb.b, %bb.a
  %.0 = phi i64 [ -66, %bb.b ], [ -1, %bb.a ], [ %i.ac, %_ZN11duckdb_zstd17HIST_count_simpleEPjS0_PKvm.exit.loopexit.i ], [ 0, %bb.f ], [ %i.ad, %bb.h ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef range(i64 -48, 4294967296) i64 @_ZN11duckdb_zstd14HIST_countFastEPjS0_PKvm(ptr noundef captures(none) %0, ptr noundef captures(none) %1, ptr noundef readonly captures(address) %2, i64 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [1024 x i32], align 16            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = icmp ult i64 %3, 1500
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %i.d = load i32, ptr %1, align 4, !tbaa !3      ; 2 uses
  %i.e = add i32 %i.d, 1
  %i.f = zext i32 %i.e to i64
  %i.g = shl nuw nsw i64 %i.f, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %i.g, i1 false)
  %i.h = icmp eq i64 %3, 0
  br i1 %i.h, label %bb.c, label %.lr.ph.i.i

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %1, align 4, !tbaa !3
  br label %_ZN11duckdb_zstd19HIST_countFast_wkspEPjS0_PKvmPvm.exit

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.02933.i.i = phi ptr [ %i.i, %.lr.ph.i.i ], [ %2, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.02933.i.i, i64 1 ; 2 uses
  %i.j = load i8, ptr %.02933.i.i, align 1, !tbaa !7
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.k ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !3
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 4, !tbaa !3
  %i.o = icmp ult ptr %i.i, %i.c
  br i1 %i.o, label %.lr.ph.i.i, label %.preheader.i.i, !llvm.loop !8

.preheader.i.i:                                   ; preds = %.lr.ph.i.i, %.preheader.i.i
  %.027.i.i = phi i32 [ %i.s, %.preheader.i.i ], [ %i.d, %.lr.ph.i.i ] ; 4 uses
  %i.p = zext i32 %.027.i.i to i64                ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !3
  %.not.i.i = icmp eq i32 %i.r, 0
  %i.s = add i32 %.027.i.i, -1
  br i1 %.not.i.i, label %.preheader.i.i, label %bb.d, !llvm.loop !10

bb.d:                                             ; preds = %.preheader.i.i
  store i32 %.027.i.i, ptr %1, align 4, !tbaa !3
  %i.t = add nuw nsw i64 %i.p, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %.027.i.i, 7
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.d
  %n.vec = and i64 %i.t, 8589934584               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.w, %vector.body ]
  %vec.phi3 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.x, %vector.body ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load = load <4 x i32>, ptr %i.u, align 4, !tbaa !3
  %wide.load4 = load <4 x i32>, ptr %i.v, align 4, !tbaa !3
  %i.w = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %wide.load, <4 x i32> %vec.phi) ; 2 uses
  %i.x = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %wide.load4, <4 x i32> %vec.phi3) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !25

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.w, <4 x i32> %i.x)
  %i.z = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZN11duckdb_zstd17HIST_count_simpleEPjS0_PKvm.exit.loopexit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.d, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %bb.d ], [ %n.vec, %middle.block ]
  %.02634.i.i.ph = phi i32 [ 0, %bb.d ], [ %i.z, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %scalar.ph ], [ %indvars.iv.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %.02634.i.i = phi i32 [ %spec.select.i.i, %scalar.ph ], [ %.02634.i.i.ph, %scalar.ph.preheader ]
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i.i
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !3
  %spec.select.i.i = tail call i32 @llvm.umax.i32(i32 %i.ab, i32 %.02634.i.i) ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.i.i, %i.p
  br i1 %exitcond.not.i, label %_ZN11duckdb_zstd17HIST_count_simpleEPjS0_PKvm.exit.loopexit.i, label %scalar.ph, !llvm.loop !26

_ZN11duckdb_zstd17HIST_count_simpleEPjS0_PKvm.exit.loopexit.i: ; preds = %scalar.ph, %middle.block
  %spec.select.i.i.lcssa = phi i32 [ %i.z, %middle.block ], [ %spec.select.i.i, %scalar.ph ]
  %i.ac = zext i32 %spec.select.i.i.lcssa to i64
  br label %_ZN11duckdb_zstd19HIST_countFast_wkspEPjS0_PKvmPvm.exit

bb.e:                                             ; preds = %bb.a
  %i.ad = call fastcc noundef i64 @_ZN11duckdb_zstdL24HIST_count_parallel_wkspEPjS0_PKvmNS_17HIST_checkInput_eES0_(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, i64 noundef %3, i32 noundef 0, ptr noundef nonnull %i.a)
  br label %_ZN11duckdb_zstd19HIST_countFast_wkspEPjS0_PKvmPvm.exit

_ZN11duckdb_zstd19HIST_countFast_wkspEPjS0_PKvmPvm.exit: ; preds = %bb.c, %_ZN11duckdb_zstd17HIST_count_simpleEPjS0_PKvm.exit.loopexit.i, %bb.e
  %.0.i = phi i64 [ %i.ac, %_ZN11duckdb_zstd17HIST_count_simpleEPjS0_PKvm.exit.loopexit.i ], [ %i.ad, %bb.e ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i64 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef range(i64 -48, 4294967296) i64 @_ZN11duckdb_zstd10HIST_countEPjS0_PKvm(ptr noundef captures(none) %0, ptr noundef captures(none) %1, ptr noundef readonly captures(address) %2, i64 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [1024 x i32], align 16            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = load i32, ptr %1, align 4, !tbaa !3
  %i.c = icmp ult i32 %i.b, 255
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 255, ptr %1, align 4, !tbaa !3
  %i.d = icmp ult i64 %3, 1500
  br i1 %i.d, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %0, i8 0, i64 1024, i1 false)
  %i.f = icmp eq i64 %3, 0
  br i1 %i.f, label %bb.d, label %.lr.ph.i.i.i

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %1, align 4, !tbaa !3
  br label %_ZN11duckdb_zstd15HIST_count_wkspEPjS0_PKvmPvm.exit

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.02933.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i ], [ %2, %bb.c ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.02933.i.i.i, i64 1 ; 2 uses
  %i.h = load i8, ptr %.02933.i.i.i, align 1, !tbaa !7
  %i.i = zext i8 %i.h to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.i ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !3
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 4, !tbaa !3
  %i.m = icmp ult ptr %i.g, %i.e
  br i1 %i.m, label %.lr.ph.i.i.i, label %.preheader.i.i.i, !llvm.loop !8

.preheader.i.i.i:                                 ; preds = %.lr.ph.i.i.i, %.preheader.i.i.i
  %.027.i.i.i = phi i32 [ %i.q, %.preheader.i.i.i ], [ 255, %.lr.ph.i.i.i ] ; 4 uses
  %i.n = zext i32 %.027.i.i.i to i64              ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !3
  %.not.i.i.i = icmp eq i32 %i.p, 0
  %i.q = add i32 %.027.i.i.i, -1
  br i1 %.not.i.i.i, label %.preheader.i.i.i, label %bb.e, !llvm.loop !10

bb.e:                                             ; preds = %.preheader.i.i.i
  store i32 %.027.i.i.i, ptr %1, align 4, !tbaa !3
  %i.r = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %.027.i.i.i, 7
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.e
  %n.vec = and i64 %i.r, 8589934584               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.u, %vector.body ]
  %vec.phi3 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.v, %vector.body ]
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load = load <4 x i32>, ptr %i.s, align 4, !tbaa !3
  %wide.load4 = load <4 x i32>, ptr %i.t, align 4, !tbaa !3
  %i.u = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %wide.load, <4 x i32> %vec.phi) ; 2 uses
  %i.v = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %wide.load4, <4 x i32> %vec.phi3) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !27

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.u, <4 x i32> %i.v)
  %i.x = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %_ZN11duckdb_zstd17HIST_count_simpleEPjS0_PKvm.exit.loopexit.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.e, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %bb.e ], [ %n.vec, %middle.block ]
  %.02634.i.i.i.ph = phi i32 [ 0, %bb.e ], [ %i.x, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %scalar.ph ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %.02634.i.i.i = phi i32 [ %spec.select.i.i.i, %scalar.ph ], [ %.02634.i.i.i.ph, %scalar.ph.preheader ]
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i.i.i
  %i.z = load i32, ptr %i.y, align 4, !tbaa !3
  %spec.select.i.i.i = tail call i32 @llvm.umax.i32(i32 %i.z, i32 %.02634.i.i.i) ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.i.i.i, %i.n
  br i1 %exitcond.not.i.i, label %_ZN11duckdb_zstd17HIST_count_simpleEPjS0_PKvm.exit.loopexit.i.i, label %scalar.ph, !llvm.loop !28

_ZN11duckdb_zstd17HIST_count_simpleEPjS0_PKvm.exit.loopexit.i.i: ; preds = %scalar.ph, %middle.block
  %spec.select.i.i.i.lcssa = phi i32 [ %i.x, %middle.block ], [ %spec.select.i.i.i, %scalar.ph ]
  %i.aa = zext i32 %spec.select.i.i.i.lcssa to i64
  br label %_ZN11duckdb_zstd15HIST_count_wkspEPjS0_PKvmPvm.exit

bb.f:                                             ; preds = %bb.b, %bb.a
  %.sink.i = phi i32 [ 1, %bb.a ], [ 0, %bb.b ]
  %i.ab = call fastcc noundef i64 @_ZN11duckdb_zstdL24HIST_count_parallel_wkspEPjS0_PKvmNS_17HIST_checkInput_eES0_(ptr noundef %0, ptr noundef nonnull %1, ptr noundef readonly %2, i64 noundef %3, i32 noundef %.sink.i, ptr noundef nonnull %i.a)
  br label %_ZN11duckdb_zstd15HIST_count_wkspEPjS0_PKvmPvm.exit

_ZN11duckdb_zstd15HIST_count_wkspEPjS0_PKvmPvm.exit: ; preds = %bb.d, %_ZN11duckdb_zstd17HIST_count_simpleEPjS0_PKvm.exit.loopexit.i.i, %bb.f
  %.0.i = phi i64 [ %i.ab, %bb.f ], [ 0, %bb.d ], [ %i.aa, %_ZN11duckdb_zstd17HIST_count_simpleEPjS0_PKvm.exit.loopexit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i64 %.0.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umax.v4i32(<4 x i32>, <4 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umax.v4i32(<4 x i32>) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!5, !5, i64 0}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9}
!11 = distinct !{!11, !9, !12, !13}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = distinct !{!14, !9, !13, !12}
!15 = distinct !{!15, !9, !12, !13}
!16 = distinct !{!16, !9, !13, !12}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = distinct !{!19, !9}
!20 = distinct !{!20, !9, !12, !13}
!21 = distinct !{!21, !9}
!22 = distinct !{!22, !9}
!23 = distinct !{!23, !9, !12, !13}
!24 = distinct !{!24, !9, !13, !12}
!25 = distinct !{!25, !9, !12, !13}
!26 = distinct !{!26, !9, !13, !12}
!27 = distinct !{!27, !9, !12, !13}
!28 = distinct !{!28, !9, !13, !12}
end_hunk_0
