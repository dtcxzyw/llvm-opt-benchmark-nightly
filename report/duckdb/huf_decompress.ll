inline.NumInlined: 722
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN11duckdb_zstd21HUF_readDTableX2_wkspEPjPKvmPvmi:bb.a
  store i32 %i.af, ptr %i.ak, align 4, !tbaa !3
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next.1
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3
  %i.an = add i32 %i.am, %i.aj                    ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next.1
  store i32 %i.aj, ptr %i.ao, align 4, !tbaa !3
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next.2
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !3
  %i.ar = add i32 %i.aq, %i.an                    ; 3 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next.2
  store i32 %i.an, ptr %i.as, align 4, !tbaa !3
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !41

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.094115.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.ar, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod334 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod334)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 3 uses
  %.094115.epil = phi i32 [ %.094115.epil.init, %.lr.ph.epil.preheader ], [ %i.av, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.epil
  %i.au = load i32, ptr %i.at, align 4, !tbaa !3
  %i.av = add i32 %i.au, %.094115.epil            ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.epil
  store i32 %.094115.epil, ptr %i.aw, align 4, !tbaa !3
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !42

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %.preheader
  %.094.lcssa = phi i32 [ 0, %.preheader ], [ %i.ar, %._crit_edge.loopexit.unr-lcssa ], [ %i.av, %.lr.ph.epil ] ; 2 uses
  store i32 %.094.lcssa, ptr %i.h, align 4, !tbaa !3
  %i.ax = zext i32 %i.y to i64                    ; 3 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ax
  store i32 %.094.lcssa, ptr %i.ay, align 4, !tbaa !3
  %i.az = load i32, ptr %i.c, align 4, !tbaa !3   ; 4 uses
  %.not = icmp eq i32 %i.az, 0
  br i1 %.not, label %._crit_edge121, label %.lr.ph120

.lr.ph120:                                        ; preds = %._crit_edge
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 736 ; 3 uses
  %wide.trip.count163 = zext i32 %i.az to i64     ; 2 uses
  %xtraiter335 = and i64 %wide.trip.count163, 1
  %i.bb = icmp eq i32 %i.az, 1
  br i1 %i.bb, label %.epil.preheader, label %.lr.ph120.new

.lr.ph120.new:                                    ; preds = %.lr.ph120
  %unroll_iter339 = and i64 %wide.trip.count163, 4294967294
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph120.new
  %indvars.iv160 = phi i64 [ 0, %.lr.ph120.new ], [ %indvars.iv.next161.1, %bb.g ] ; 4 uses
  %niter340 = phi i64 [ 0, %.lr.ph120.new ], [ %niter340.next.1, %bb.g ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv160
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !7
  %i.be = zext i8 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.be ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !3  ; 2 uses
  %i.bh = add i32 %i.bg, 1
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !3
  %i.bi = trunc i64 %indvars.iv160 to i8
  %i.bj = zext i32 %i.bg to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bj
  store i8 %i.bi, ptr %i.bk, align 1, !tbaa !43
  %indvars.iv.next161 = or disjoint i64 %indvars.iv160, 1 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv.next161
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !7
  %i.bn = zext i8 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bn ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !3  ; 2 uses
  %i.bq = add i32 %i.bp, 1
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !3
  %i.br = trunc i64 %indvars.iv.next161 to i8
  %i.bs = zext i32 %i.bp to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bs
  store i8 %i.br, ptr %i.bt, align 1, !tbaa !43
  %indvars.iv.next161.1 = add nuw nsw i64 %indvars.iv160, 2 ; 2 uses
  %niter340.next.1 = add i64 %niter340, 2         ; 2 uses
  %niter340.ncmp.1 = icmp eq i64 %niter340.next.1, %unroll_iter339
  br i1 %niter340.ncmp.1, label %._crit_edge121.loopexit.unr-lcssa, label %bb.g, !llvm.loop !45

._crit_edge121.loopexit.unr-lcssa:                ; preds = %bb.g
  %lcmp.mod337.not = icmp eq i64 %xtraiter335, 0
  br i1 %lcmp.mod337.not, label %._crit_edge121, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge121.loopexit.unr-lcssa, %.lr.ph120
  %indvars.iv160.epil.init = phi i64 [ 0, %.lr.ph120 ], [ %indvars.iv.next161.1, %._crit_edge121.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod338 = trunc i32 %i.az to i1
  call void @llvm.assume(i1 %lcmp.mod338)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv160.epil.init
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !7
  %i.bw = zext i8 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bw ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !3  ; 2 uses
  %i.bz = add i32 %i.by, 1
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !3
  %i.ca = trunc i64 %indvars.iv160.epil.init to i8
  %i.cb = zext i32 %i.by to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.cb
  store i8 %i.ca, ptr %i.cc, align 1, !tbaa !43
  br label %._crit_edge121

._crit_edge121:                                   ; preds = %.epil.preheader, %._crit_edge121.loopexit.unr-lcssa, %._crit_edge
  store i32 0, ptr %i.h, align 4, !tbaa !3
  %i.cd = xor i32 %i.o, -1
  %i.ce = add nsw i32 %spec.store.select, %i.cd   ; 2 uses
  br i1 %i.z, label %.lr.ph125.preheader, label %_ZN11duckdb_zstdL16HUF_fillDTableX2EPNS_10HUF_DEltX2EjPKNS_14sortedSymbol_tEPKjPA13_jjj.exit

.lr.ph125.preheader:                              ; preds = %._crit_edge121
  %wide.trip.count169 = zext i32 %indvars.iv158 to i64 ; 4 uses
  %i.cf = add nsw i64 %wide.trip.count169, -1     ; 3 uses
  %xtraiter341 = and i64 %i.cf, 1
  %i.cg = icmp eq i32 %indvars.iv158, 2
  br i1 %i.cg, label %.lr.ph125.epil.preheader, label %.lr.ph125.preheader.new

.lr.ph125.preheader.new:                          ; preds = %.lr.ph125.preheader
  %unroll_iter345 = and i64 %i.cf, -2
  br label %.lr.ph125

.lr.ph125:                                        ; preds = %.lr.ph125, %.lr.ph125.preheader.new
  %indvars.iv165 = phi i64 [ 1, %.lr.ph125.preheader.new ], [ %indvars.iv.next166.1, %.lr.ph125 ] ; 5 uses
  %.091122 = phi i32 [ 0, %.lr.ph125.preheader.new ], [ %i.ct, %.lr.ph125 ] ; 2 uses
  %niter346 = phi i64 [ 0, %.lr.ph125.preheader.new ], [ %niter346.next.1, %.lr.ph125 ]
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv165
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !3
  %i.cj = trunc nuw i64 %indvars.iv165 to i32
  %i.ck = add i32 %i.ce, %i.cj
  %i.cl = shl i32 %i.ci, %i.ck
  %i.cm = add i32 %i.cl, %.091122                 ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv165
  store i32 %.091122, ptr %i.cn, align 4, !tbaa !3
  %indvars.iv.next166 = add nuw nsw i64 %indvars.iv165, 1 ; 3 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next166
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !3
  %i.cq = trunc nuw i64 %indvars.iv.next166 to i32
  %i.cr = add i32 %i.ce, %i.cq
  %i.cs = shl i32 %i.cp, %i.cr
  %i.ct = add i32 %i.cs, %i.cm                    ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next166
  store i32 %i.cm, ptr %i.cu, align 4, !tbaa !3
  %indvars.iv.next166.1 = add nuw nsw i64 %indvars.iv165, 2 ; 2 uses
  %niter346.next.1 = add nuw i64 %niter346, 2     ; 2 uses
  %niter346.ncmp.1 = icmp eq i64 %niter346.next.1, %unroll_iter345
  br i1 %niter346.ncmp.1, label %._crit_edge126.unr-lcssa, label %.lr.ph125, !llvm.loop !46

._crit_edge126.unr-lcssa:                         ; preds = %.lr.ph125
  %lcmp.mod343.not = icmp eq i64 %xtraiter341, 0
  br i1 %lcmp.mod343.not, label %._crit_edge126, label %.lr.ph125.epil.preheader

.lr.ph125.epil.preheader:                         ; preds = %._crit_edge126.unr-lcssa, %.lr.ph125.preheader
  %indvars.iv165.epil.init = phi i64 [ 1, %.lr.ph125.preheader ], [ %indvars.iv.next166.1, %._crit_edge126.unr-lcssa ]
  %.091122.epil.init = phi i32 [ 0, %.lr.ph125.preheader ], [ %i.ct, %._crit_edge126.unr-lcssa ]
  %lcmp.mod344 = trunc i64 %i.cf to i1
  call void @llvm.assume(i1 %lcmp.mod344)
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv165.epil.init
  store i32 %.091122.epil.init, ptr %i.cv, align 4, !tbaa !3
  br label %._crit_edge126

._crit_edge126:                                   ; preds = %._crit_edge126.unr-lcssa, %.lr.ph125.epil.preheader
  %i.cw = sub i32 %i.q, %.089                     ; 3 uses
  %i.cx = add nuw nsw i32 %spec.store.select, 1
  %i.cy = sub i32 %i.cx, %i.cw
  %i.cz = icmp ult i32 %i.cw, %i.cy
  br i1 %i.cz, label %.lr.ph129.preheader, label %._crit_edge134.split

.lr.ph129.preheader:                              ; preds = %._crit_edge126
  %i.da = zext i32 %indvars.iv177 to i64          ; 2 uses
  %i.db = add i32 %spec.store.select, %indvars.iv182
  %wide.trip.count175 = zext i32 %indvars.iv158 to i64
  %i.dc = add nsw i64 %wide.trip.count169, -1     ; 3 uses
  %min.iters.check = icmp ult i64 %i.dc, 8
  %n.vec = and i64 %i.dc, -8                      ; 3 uses
  %i.dd = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.dc, %n.vec
  br label %.lr.ph129

.lr.ph129:                                        ; preds = %.lr.ph129.preheader, %._crit_edge130
  %indvar = phi i64 [ 0, %.lr.ph129.preheader ], [ %indvar.next, %._crit_edge130 ] ; 2 uses
  %indvars.iv179 = phi i64 [ %i.da, %.lr.ph129.preheader ], [ %indvars.iv.next180, %._crit_edge130 ] ; 3 uses
  %i.de = getelementptr inbounds nuw [52 x i8], ptr %3, i64 %indvars.iv179 ; 6 uses
  %i.df = trunc nuw i64 %indvars.iv179 to i32     ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph129
  %i.dg = add i64 %indvar, %i.da
  %i.dh = mul i64 %i.dg, 52
  %6 = add i64 %i.dh, -1
  %diff.check = icmp ult i64 %6, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.df, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.di = or disjoint i64 %index, 1               ; 2 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.di ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %wide.load = load <4 x i32>, ptr %i.dj, align 4, !tbaa !3
  %wide.load224 = load <4 x i32>, ptr %i.dk, align 4, !tbaa !3
  %i.dl = lshr <4 x i32> %wide.load, %broadcast.splat
  %i.dm = lshr <4 x i32> %wide.load224, %broadcast.splat
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.di ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  store <4 x i32> %i.dl, ptr %i.dn, align 4, !tbaa !3
  store <4 x i32> %i.dm, ptr %i.do, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dp = icmp eq i64 %index.next, %n.vec
  br i1 %i.dp, label %middle.block, label %vector.body, !llvm.loop !47

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge130, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph129, %middle.block
  %indvars.iv171.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph129 ], [ %i.dd, %middle.block ] ; 4 uses
  %i.dq = sub nsw i64 %wide.trip.count169, %indvars.iv171.ph
  %xtraiter347 = and i64 %i.dq, 3                 ; 2 uses
  %lcmp.mod348.not = icmp eq i64 %xtraiter347, 0
  br i1 %lcmp.mod348.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv171.prol = phi i64 [ %indvars.iv.next172.prol, %scalar.ph.prol ], [ %indvars.iv171.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv171.prol
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !3
  %i.dt = lshr i32 %i.ds, %i.df
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv171.prol
  store i32 %i.dt, ptr %i.du, align 4, !tbaa !3
  %indvars.iv.next172.prol = add nuw nsw i64 %indvars.iv171.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter347
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !48

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv171.unr = phi i64 [ %indvars.iv171.ph, %scalar.ph.preheader ], [ %indvars.iv.next172.prol, %scalar.ph.prol ]
  %i.dv = sub nsw i64 %indvars.iv171.ph, %wide.trip.count169
  %i.dw = icmp ugt i64 %i.dv, -4
  br i1 %i.dw, label %._crit_edge130, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv171 = phi i64 [ %indvars.iv.next172.3, %scalar.ph ], [ %indvars.iv171.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv171
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !3
  %i.dz = lshr i32 %i.dy, %i.df
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv171
  store i32 %i.dz, ptr %i.ea, align 4, !tbaa !3
  %indvars.iv.next172 = add nuw nsw i64 %indvars.iv171, 1 ; 2 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next172
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !3
  %i.ed = lshr i32 %i.ec, %i.df
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.next172
  store i32 %i.ed, ptr %i.ee, align 4, !tbaa !3
  %indvars.iv.next172.1 = add nuw nsw i64 %indvars.iv171, 2 ; 2 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next172.1
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !3
  %i.eh = lshr i32 %i.eg, %i.df
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.next172.1
  store i32 %i.eh, ptr %i.ei, align 4, !tbaa !3
  %indvars.iv.next172.2 = add nuw nsw i64 %indvars.iv171, 3 ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next172.2
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !3
  %i.el = lshr i32 %i.ek, %i.df
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.next172.2
  store i32 %i.el, ptr %i.em, align 4, !tbaa !3
  %indvars.iv.next172.3 = add nuw nsw i64 %indvars.iv171, 4 ; 2 uses
  %exitcond176.not.3 = icmp eq i64 %indvars.iv.next172.3, %wide.trip.count175
  br i1 %exitcond176.not.3, label %._crit_edge130, label %scalar.ph, !llvm.loop !49

._crit_edge130:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next180 = add nuw nsw i64 %indvars.iv179, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next180 to i32
  %exitcond184.not = icmp eq i32 %i.db, %lftr.wideiv
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond184.not, label %._crit_edge134.split, label %.lr.ph129, !llvm.loop !50

._crit_edge134.split:                             ; preds = %._crit_edge130, %._crit_edge126
  %i.en = getelementptr i8, ptr %3, i64 736       ; 12 uses
  %i.eo = sub nsw i32 %i.q, %spec.store.select
  %.not76.i = icmp slt i32 %.089, 1
  br i1 %.not76.i, label %_ZN11duckdb_zstdL16HUF_fillDTableX2EPNS_10HUF_DEltX2EjPKNS_14sortedSymbol_tEPKjPA13_jjj.exit, label %.lr.ph78.i.preheader

.lr.ph78.i.preheader:                             ; preds = %._crit_edge134.split
  %scevgep = getelementptr i8, ptr %0, i64 4
  %scevgep245 = getelementptr i8, ptr %0, i64 4
  %scevgep271 = getelementptr i8, ptr %0, i64 4
  %scevgep295 = getelementptr i8, ptr %0, i64 4
  %i.ep = add i64 %i.a, 735
  %i.eq = add i64 %i.a, 735
  %i.er = add i64 %i.a, 735
  %i.es = add i64 %i.a, 735
  br label %.lr.ph78.i

.lr.ph78.i:                                       ; preds = %.lr.ph78.i.preheader, %.loopexit.i
  %indvars.iv96.i = phi i64 [ %indvars.iv.next97.i, %.loopexit.i ], [ 1, %.lr.ph78.i.preheader ] ; 4 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv96.i
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !3  ; 8 uses
  %indvars.iv.next97.i = add nuw nsw i64 %indvars.iv96.i, 1 ; 3 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next97.i
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !3  ; 11 uses
  %i.ex = trunc nuw nsw i64 %indvars.iv96.i to i32
  %i.ey = sub i32 %i.q, %i.ex                     ; 10 uses
  %i.ez = sub i32 %spec.store.select, %i.ey       ; 3 uses
  %.not56.i = icmp ult i32 %i.ez, %i.cw
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv96.i
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !3  ; 9 uses
  br i1 %.not56.i, label %bb.m, label %bb.h

bb.h:                                             ; preds = %.lr.ph78.i
  %i.fc = and i32 %i.ez, 31
  %i.fd = shl nuw i32 1, %i.fc                    ; 4 uses
  %.not5766.i = icmp eq i32 %i.eu, %i.ew
  br i1 %.not5766.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h
  %i.fe = add i32 %i.ey, %i.eo                    ; 3 uses
  %spec.store.select.i = call i32 @llvm.smax.i32(i32 %i.fe, i32 1)
  %i.ff = zext i32 %i.ey to i64
  %i.fg = getelementptr inbounds nuw [52 x i8], ptr %3, i64 %i.ff ; 2 uses
  %i.fh = icmp sgt i32 %i.fe, 1
  %i.fi = shl i32 %i.ey, 16
  %i.fj = add i32 %i.fi, 16777216                 ; 8 uses
  %i.fk = zext nneg i32 %spec.store.select.i to i64 ; 2 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.fk ; 2 uses
  %.not61.i = icmp sgt i32 %i.fe, %.089
  %i.fm = add i32 %i.ey, %i.q
  %i.fn = sext i32 %i.eu to i64                   ; 8 uses
  br i1 %.not61.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  switch i32 %i.fd, label %.preheader.i.us.i [
    i32 2, label %.loopexit.i.us.us.i.preheader
    i32 4, label %.loopexit.i.us.us74.i.preheader
  ]

.loopexit.i.us.us74.i.preheader:                  ; preds = %.lr.ph.split.us.i
  %i.fo = sub i32 %i.ew, %i.eu
  %.neg = add i32 %i.eu, 1
  %xtraiter374 = and i32 %i.fo, 1
  %lcmp.mod375.not = icmp eq i32 %xtraiter374, 0
  br i1 %lcmp.mod375.not, label %.loopexit.i.us.us74.i.prol.loopexit, label %.loopexit.i.us.us74.i.prol

.loopexit.i.us.us74.i.prol:                       ; preds = %.loopexit.i.us.us74.i.preheader
  %i.fp = sext i32 %i.fb to i64
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.fp ; 2 uses
  %i.fr = getelementptr inbounds i8, ptr %i.en, i64 %i.fn
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !43
  %i.ft = zext i8 %i.fs to i32
  %i.fu = or disjoint i32 %i.fj, %i.ft
  %i.fv = zext i32 %i.fu to i64
  %i.fw = mul nuw i64 %i.fv, 4294967297           ; 2 uses
  store i64 %i.fw, ptr %i.fq, align 2
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  store i64 %i.fw, ptr %i.fx, align 2
  %i.fy = add i32 %i.fb, 4
  %indvars.iv.next88.i.prol = add nsw i64 %i.fn, 1
  br label %.loopexit.i.us.us74.i.prol.loopexit

.loopexit.i.us.us74.i.prol.loopexit:              ; preds = %.loopexit.i.us.us74.i.prol, %.loopexit.i.us.us74.i.preheader
  %indvars.iv87.i.unr = phi i64 [ %i.fn, %.loopexit.i.us.us74.i.preheader ], [ %indvars.iv.next88.i.prol, %.loopexit.i.us.us74.i.prol ]
  %.05367.us.us73.i.unr = phi i32 [ %i.fb, %.loopexit.i.us.us74.i.preheader ], [ %i.fy, %.loopexit.i.us.us74.i.prol ]
  %i.fz = icmp eq i32 %i.ew, %.neg
  br i1 %i.fz, label %.loopexit.i, label %.loopexit.i.us.us74.i

.loopexit.i.us.us.i.preheader:                    ; preds = %.lr.ph.split.us.i
  %i.ga = sub i32 %i.ew, %i.eu
  %.neg403 = add i32 %i.eu, 1
  %xtraiter377 = and i32 %i.ga, 1
  %lcmp.mod378.not = icmp eq i32 %xtraiter377, 0
  br i1 %lcmp.mod378.not, label %.loopexit.i.us.us.i.prol.loopexit, label %.loopexit.i.us.us.i.prol

.loopexit.i.us.us.i.prol:                         ; preds = %.loopexit.i.us.us.i.preheader
  %i.gb = sext i32 %i.fb to i64
  %i.gc = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.gb
  %i.gd = getelementptr inbounds i8, ptr %i.en, i64 %i.fn
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !43
  %i.gf = zext i8 %i.ge to i32
  %i.gg = or disjoint i32 %i.fj, %i.gf
  %i.gh = zext i32 %i.gg to i64
  %i.gi = mul nuw i64 %i.gh, 4294967297
  store i64 %i.gi, ptr %i.gc, align 2
  %i.gj = add i32 %i.fb, 2
  %indvars.iv.next91.i.prol = add nsw i64 %i.fn, 1
  br label %.loopexit.i.us.us.i.prol.loopexit

.loopexit.i.us.us.i.prol.loopexit:                ; preds = %.loopexit.i.us.us.i.prol, %.loopexit.i.us.us.i.preheader
  %indvars.iv90.i.unr = phi i64 [ %i.fn, %.loopexit.i.us.us.i.preheader ], [ %indvars.iv.next91.i.prol, %.loopexit.i.us.us.i.prol ]
end_hunk_0
