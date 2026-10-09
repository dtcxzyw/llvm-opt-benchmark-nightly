Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/exclusionchecker?download=true
inline.NumInlined: 239
inline.NumDeleted: 137
begin_hunk_0_@_ZN16ExclusionChecker4ImplC2ERKN3gmx7MpiCommERK10gmx_mtop_t:bb.a
  %i.cf = sext <8 x i32> %wide.load76 to <8 x i64>
  %i.cg = icmp sle <8 x i64> %broadcast.splat, %i.cc
  %i.ch = icmp sle <8 x i64> %broadcast.splat, %i.cd
  %i.ci = icmp sle <8 x i64> %broadcast.splat, %i.ce
  %i.cj = icmp sle <8 x i64> %broadcast.splat, %i.cf
  %i.ck = zext <8 x i1> %i.cg to <8 x i32>
  %i.cl = zext <8 x i1> %i.ch to <8 x i32>
  %i.cm = zext <8 x i1> %i.ci to <8 x i32>
  %i.cn = zext <8 x i1> %i.cj to <8 x i32>
  %i.co = add <8 x i32> %vec.phi, %i.ck           ; 2 uses
  %i.cp = add <8 x i32> %vec.phi71.a, %i.cl       ; 2 uses
  %i.cq = add <8 x i32> %vec.phi72.a, %i.cm       ; 2 uses
  %i.cr = add <8 x i32> %vec.phi73, %i.cn         ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cs = icmp eq i64 %index.next, %n.vec
  br i1 %i.cs, label %middle.block, label %vector.body, !llvm.loop !41

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i32> %i.cp, %i.co
  %bin.rdx77.a = add <8 x i32> %i.cq, %bin.rdx
  %bin.rdx78 = add <8 x i32> %i.cr, %bin.rdx77.a
  %i.ct = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx78) ; 3 uses
  %cmp.n = icmp eq i64 %i.bt, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bu, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.split.us.i.preheader, label %vec.epilog.ph, !prof !90

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.ct, %vec.epilog.iter.check ], [ %.055135.i, %vector.main.loop.iter.check ]
  %n.vec79 = and i64 %i.bt, 9223372036854775800   ; 3 uses
  %i.cu = shl i64 %n.vec79, 2
  %i.cv = getelementptr i8, ptr %i.bn, i64 %i.cu
  %i.cw = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  %broadcast.splatinsert80 = insertelement <8 x i64> poison, i64 %indvars.iv.i, i64 0
  %broadcast.splat81 = shufflevector <8 x i64> %broadcast.splatinsert80, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index82 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next86, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi83 = phi <8 x i32> [ %i.cw, %vec.epilog.ph ], [ %i.db, %vec.epilog.vector.body ]
  %i.cx = shl i64 %index82, 2
  %next.gep84 = getelementptr i8, ptr %i.bn, i64 %i.cx
  %wide.load85 = load <8 x i32>, ptr %next.gep84, align 4, !tbaa !87
  %i.cy = sext <8 x i32> %wide.load85 to <8 x i64>
  %i.cz = icmp sle <8 x i64> %broadcast.splat81, %i.cy
  %i.da = zext <8 x i1> %i.cz to <8 x i32>
  %i.db = add <8 x i32> %vec.phi83, %i.da         ; 2 uses
  %index.next86 = add nuw i64 %index82, 8         ; 2 uses
  %i.dc = icmp eq i64 %index.next86, %n.vec79
  br i1 %i.dc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !42

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.dd = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.db) ; 2 uses
  %cmp.n87 = icmp eq i64 %i.bt, %n.vec79
  br i1 %cmp.n87, label %._crit_edge.i, label %.lr.ph.split.us.i.preheader

.lr.ph.split.us.i.preheader:                      ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.156132.us.i.ph = phi i32 [ %.055135.i, %iter.check ], [ %i.ct, %vec.epilog.iter.check ], [ %i.dd, %vec.epilog.middle.block ]
  %.sroa.0104.0131.us.i.ph = phi ptr [ %i.bn, %iter.check ], [ %i.bw, %vec.epilog.iter.check ], [ %i.cv, %vec.epilog.middle.block ]
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.preheader, %.lr.ph.split.us.i
  %.156132.us.i = phi i32 [ %spec.select.i, %.lr.ph.split.us.i ], [ %.156132.us.i.ph, %.lr.ph.split.us.i.preheader ]
  %.sroa.0104.0131.us.i = phi ptr [ %i.dh, %.lr.ph.split.us.i ], [ %.sroa.0104.0131.us.i.ph, %.lr.ph.split.us.i.preheader ] ; 2 uses
  %i.de = load i32, ptr %.sroa.0104.0131.us.i, align 4, !tbaa !87
  %i.df = sext i32 %i.de to i64
  %.not62.us.i = icmp sle i64 %indvars.iv.i, %i.df
  %i.dg = zext i1 %.not62.us.i to i32
  %spec.select.i = add nsw i32 %.156132.us.i, %i.dg ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0104.0131.us.i, i64 4 ; 2 uses
  %.not124.us.i = icmp eq ptr %i.dh, %i.bl
  br i1 %.not124.us.i, label %._crit_edge.i, label %.lr.ph.split.us.i, !llvm.loop !43

._crit_edge.i:                                    ; preds = %bb.h, %.lr.ph.split.us.i, %middle.block, %vec.epilog.middle.block, %_Z9PERTURBEDRK6t_atom.exit.i
  %.156.lcssa.i = phi i32 [ %.055135.i, %_Z9PERTURBEDRK6t_atom.exit.i ], [ %spec.select.i, %.lr.ph.split.us.i ], [ %i.dd, %vec.epilog.middle.block ], [ %i.ct, %middle.block ], [ %.257.i, %bb.h ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %i.ak
  br i1 %exitcond.not.i, label %._crit_edge138.i, label %bb.c, !llvm.loop !44

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.h
  %.156132.i = phi i32 [ %.257.i, %bb.h ], [ %.055135.i, %.lr.ph.i ] ; 3 uses
  %.sroa.0104.0131.i = phi ptr [ %i.dz, %bb.h ], [ %i.bn, %.lr.ph.i ] ; 2 uses
  %i.di = load i32, ptr %.sroa.0104.0131.i, align 4, !tbaa !87
  %i.dj = sext i32 %i.di to i64                   ; 2 uses
  %.not62.i = icmp sgt i64 %indvars.iv.i, %i.dj
  br i1 %.not62.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.i
  %i.dk = getelementptr inbounds [36 x i8], ptr %i.ah, i64 %i.dj ; 6 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !81
  %i.dn = load float, ptr %i.dk, align 4, !tbaa !82
  %i.do = fcmp une float %i.dm, %i.dn
  br i1 %i.do, label %_Z9PERTURBEDRK6t_atom.exit66.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 12
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !83
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !84
  %i.dt = fcmp une float %i.dq, %i.ds
  br i1 %i.dt, label %_Z9PERTURBEDRK6t_atom.exit66.thread.i, label %_Z9PERTURBEDRK6t_atom.exit66.i

_Z9PERTURBEDRK6t_atom.exit66.i:                   ; preds = %bb.g
  %i.du = getelementptr inbounds nuw i8, ptr %i.dk, i64 18
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !85
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dx = load i16, ptr %i.dw, align 4, !tbaa !86
  %.not125.i = icmp eq i16 %i.dv, %i.dx
  br i1 %.not125.i, label %bb.h, label %_Z9PERTURBEDRK6t_atom.exit66.thread.i

_Z9PERTURBEDRK6t_atom.exit66.thread.i:            ; preds = %_Z9PERTURBEDRK6t_atom.exit66.i, %bb.g, %bb.f
  %i.dy = add nsw i32 %.156132.i, 1
  br label %bb.h

bb.h:                                             ; preds = %_Z9PERTURBEDRK6t_atom.exit66.thread.i, %_Z9PERTURBEDRK6t_atom.exit66.i, %.lr.ph.split.i
  %.257.i = phi i32 [ %i.dy, %_Z9PERTURBEDRK6t_atom.exit66.thread.i ], [ %.156132.i, %_Z9PERTURBEDRK6t_atom.exit66.i ], [ %.156132.i, %.lr.ph.split.i ] ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.0104.0131.i, i64 4 ; 2 uses
  %.not124.i = icmp eq ptr %i.dz, %i.bl
  br i1 %.not124.i, label %._crit_edge.i, label %.lr.ph.split.i

bb.i:                                             ; preds = %._crit_edge160.i, %.lr.ph166.i
  %.1164.i = phi i32 [ %.0.lcssa.i, %.lr.ph166.i ], [ %.4.i, %._crit_edge160.i ]
  %.sroa.0101.0163.i = phi ptr [ %i.i, %.lr.ph166.i ], [ %i.gb, %._crit_edge160.i ] ; 2 uses
  %i.ea = load i32, ptr %.sroa.0101.0163.i, align 4, !tbaa !87 ; 4 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %bb.i
  %.0115.i = phi i32 [ 0, %bb.i ], [ %i.ek, %bb.l ] ; 6 uses
  %.026.i.i = phi i32 [ -1, %bb.i ], [ %.127.i.i, %bb.l ]
  %.0.i.i = phi i32 [ %i.p, %bb.i ], [ %.1.i.i, %bb.l ]
  %i.eb = sext i32 %.0115.i to i64                ; 2 uses
  %i.ec = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %i.eb ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !93 ; 2 uses
  %i.ef = icmp slt i32 %i.ea, %i.ee
  br i1 %i.ef, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !94
  %.not.i.i = icmp slt i32 %i.ea, %i.eh
  br i1 %.not.i.i, label %_ZL20mtopGetMolblockIndexRK10gmx_mtop_tiPiS2_S2_.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.127.i.i = phi i32 [ %.026.i.i, %bb.j ], [ %.0115.i, %bb.k ] ; 2 uses
  %.1.i.i = phi i32 [ %.0115.i, %bb.j ], [ %.0.i.i, %bb.k ] ; 2 uses
  %i.ei = add nsw i32 %.127.i.i, 1
  %i.ej = add i32 %i.ei, %.1.i.i
  %i.ek = ashr i32 %i.ej, 1
  br label %bb.j, !llvm.loop !45

_ZL20mtopGetMolblockIndexRK10gmx_mtop_tiPiS2_S2_.exit.i: ; preds = %bb.k
  %i.el = sub nsw i32 %i.ea, %i.ee                ; 2 uses
  %i.em = load i32, ptr %i.ec, align 4, !tbaa !95 ; 3 uses
  %i.en = sdiv i32 %i.el, %i.em                   ; 2 uses
  %i.eo = mul nsw i32 %i.en, %i.em                ; 0 uses
  %.recomposed = srem i32 %i.el, %i.em
  %i.ep = getelementptr inbounds nuw [56 x i8], ptr %i.c, i64 %i.eb
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !66
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw [2408 x i8], ptr %i.t, i64 %i.er ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !103 ; 2 uses
  %i.ev = sext i32 %.recomposed to i64            ; 2 uses
  %i.ew = getelementptr inbounds [36 x i8], ptr %i.eu, i64 %i.ev ; 6 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !81
  %i.ez = load float, ptr %i.ew, align 4, !tbaa !82
  %i.fa = fcmp une float %i.ey, %i.ez
  br i1 %i.fa, label %.lr.ph159.i, label %bb.m

bb.m:                                             ; preds = %_ZL20mtopGetMolblockIndexRK10gmx_mtop_tiPiS2_S2_.exit.i
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ew, i64 12
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !83
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ew, i64 4
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !84
  %i.ff = fcmp une float %i.fc, %i.fe
  br i1 %i.ff, label %.lr.ph159.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ew, i64 18
  %i.fh = load i16, ptr %i.fg, align 2, !tbaa !85
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.fj = load i16, ptr %i.fi, align 4, !tbaa !86
  %i.fk = icmp ne i16 %i.fh, %i.fj
  br label %.lr.ph159.i

.lr.ph159.i:                                      ; preds = %bb.n, %bb.m, %_ZL20mtopGetMolblockIndexRK10gmx_mtop_tiPiS2_S2_.exit.i
  %i.fl = phi i1 [ true, %bb.m ], [ true, %_ZL20mtopGetMolblockIndexRK10gmx_mtop_tiPiS2_S2_.exit.i ], [ %i.fk, %bb.n ]
  %i.fm = getelementptr inbounds nuw i8, ptr %i.es, i64 2360
  %i.fn = getelementptr inbounds nuw i8, ptr %i.es, i64 2384
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !55 ; 2 uses
  %i.fp = load ptr, ptr %i.fm, align 8, !tbaa !55
  %i.fq = getelementptr [4 x i8], ptr %i.fp, i64 %i.ev ; 2 uses
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !87
  %i.fs = sext i32 %i.fr to i64
  %.idx121.i = shl nsw i64 %i.fs, 2               ; 3 uses
  %i.ft = getelementptr inbounds i8, ptr %i.fo, i64 %.idx121.i ; 3 uses
  %i.fu = getelementptr i8, ptr %i.fq, i64 4
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !87
  %i.fw = sext i32 %i.fv to i64
  %.idx.i = shl nsw i64 %i.fw, 2                  ; 3 uses
  %i.fx = getelementptr inbounds i8, ptr %i.fo, i64 %.idx.i ; 2 uses
  %gepdiff.i = sub nsw i64 %.idx.i, %.idx121.i    ; 3 uses
  %i.fy = ashr i64 %gepdiff.i, 4                  ; 2 uses
  %i.fz = icmp sgt i64 %i.fy, 0
  %i.ga = and i64 %gepdiff.i, -16                 ; 2 uses
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.ft, i64 %i.ga
  %3 = add nsw i64 %.idx121.i, %i.ga
  %gepdiff122.i = sub nsw i64 %.idx.i, %3
  br label %bb.o

._crit_edge160.i:                                 ; preds = %bb.ab
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.0101.0163.i, i64 4 ; 2 uses
  %.not118.i = icmp eq ptr %i.gb, %i.k
  br i1 %.not118.i, label %_ZL35computeNumGlobalPerturbedExclusionsRK10gmx_mtop_t.exit, label %bb.i

bb.o:                                             ; preds = %bb.ab, %.lr.ph159.i
  %.2158.i = phi i32 [ %.1164.i, %.lr.ph159.i ], [ %.4.i, %bb.ab ] ; 4 uses
  %.sroa.0.0157.i = phi ptr [ %i.i, %.lr.ph159.i ], [ %i.ij, %bb.ab ] ; 2 uses
  %.0112156.i = phi i32 [ %.0115.i, %.lr.ph159.i ], [ %.1113.i, %bb.ab ] ; 2 uses
  %i.gc = load i32, ptr %.sroa.0.0157.i, align 4, !tbaa !87 ; 4 uses
  %.not.i = icmp sgt i32 %i.gc, %i.ea
  br i1 %.not.i, label %.preheader.i, label %bb.ab

.preheader.i:                                     ; preds = %bb.o, %bb.q
  %.2114.i = phi i32 [ %i.gm, %bb.q ], [ %.0112156.i, %bb.o ] ; 6 uses
  %.026.i73.i = phi i32 [ %.127.i76.i, %bb.q ], [ -1, %bb.o ]
  %.0.i74.i = phi i32 [ %.1.i77.i, %bb.q ], [ %i.p, %bb.o ]
  %i.gd = sext i32 %.2114.i to i64
  %i.ge = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %i.gd ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 4
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !93 ; 2 uses
  %i.gh = icmp slt i32 %i.gc, %i.gg
  br i1 %i.gh, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.preheader.i
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !94
  %.not.i75.i = icmp slt i32 %i.gc, %i.gj
  br i1 %.not.i75.i, label %_ZL20mtopGetMolblockIndexRK10gmx_mtop_tiPiS2_S2_.exit78.i, label %bb.q

bb.q:                                             ; preds = %bb.p, %.preheader.i
  %.127.i76.i = phi i32 [ %.026.i73.i, %.preheader.i ], [ %.2114.i, %bb.p ] ; 2 uses
  %.1.i77.i = phi i32 [ %.2114.i, %.preheader.i ], [ %.0.i74.i, %bb.p ] ; 2 uses
  %i.gk = add nsw i32 %.127.i76.i, 1
  %i.gl = add i32 %i.gk, %.1.i77.i
  %i.gm = ashr i32 %i.gl, 1
  br label %.preheader.i, !llvm.loop !45

_ZL20mtopGetMolblockIndexRK10gmx_mtop_tiPiS2_S2_.exit78.i: ; preds = %bb.p
  %i.gn = sub nsw i32 %i.gc, %i.gg                ; 2 uses
  %i.go = load i32, ptr %i.ge, align 4, !tbaa !95 ; 3 uses
  %i.gp = sdiv i32 %i.gn, %i.go                   ; 2 uses
  %i.gq = mul nsw i32 %i.gp, %i.go                ; 0 uses
  %.recomposed119 = srem i32 %i.gn, %i.go         ; 8 uses
  br i1 %i.fl, label %_Z9PERTURBEDRK6t_atom.exit79.thread.i, label %bb.r

bb.r:                                             ; preds = %_ZL20mtopGetMolblockIndexRK10gmx_mtop_tiPiS2_S2_.exit78.i
  %i.gr = sext i32 %.recomposed119 to i64
  %i.gs = getelementptr inbounds [36 x i8], ptr %i.eu, i64 %i.gr ; 6 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.gu = load float, ptr %i.gt, align 4, !tbaa !81
  %i.gv = load float, ptr %i.gs, align 4, !tbaa !82
  %i.gw = fcmp une float %i.gu, %i.gv
  br i1 %i.gw, label %_Z9PERTURBEDRK6t_atom.exit79.thread.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gs, i64 12
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !83
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gs, i64 4
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !84
  %i.hb = fcmp une float %i.gy, %i.ha
  br i1 %i.hb, label %_Z9PERTURBEDRK6t_atom.exit79.thread.i, label %_Z9PERTURBEDRK6t_atom.exit79.i

_Z9PERTURBEDRK6t_atom.exit79.i:                   ; preds = %bb.s
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gs, i64 18
  %i.hd = load i16, ptr %i.hc, align 2, !tbaa !85
  %i.he = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %i.hf = load i16, ptr %i.he, align 4, !tbaa !86
  %.not120.i = icmp eq i16 %i.hd, %i.hf
  br i1 %.not120.i, label %bb.ab, label %_Z9PERTURBEDRK6t_atom.exit79.thread.i

_Z9PERTURBEDRK6t_atom.exit79.thread.i:            ; preds = %_Z9PERTURBEDRK6t_atom.exit79.i, %bb.s, %bb.r, %_ZL20mtopGetMolblockIndexRK10gmx_mtop_tiPiS2_S2_.exit78.i
  %i.hg = icmp eq i32 %.2114.i, %.0115.i
  %i.hh = icmp eq i32 %i.gp, %i.en
  %or.cond.i = select i1 %i.hg, i1 %i.hh, i1 false
  br i1 %or.cond.i, label %bb.t, label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.thread.i

bb.t:                                             ; preds = %_Z9PERTURBEDRK6t_atom.exit79.thread.i
  br i1 %i.fz, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.t, %bb.x
  %.052.i.i.i.i = phi i64 [ %i.hu, %bb.x ], [ %i.fy, %bb.t ] ; 2 uses
  %.sroa.034.051.i.i.i.i = phi ptr [ %i.ht, %bb.x ], [ %i.ft, %bb.t ] ; 9 uses
  %i.hi = load i32, ptr %.sroa.034.051.i.i.i.i, align 4, !tbaa !87
  %i.hj = icmp eq i32 %i.hi, %.recomposed119
  br i1 %i.hj, label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i.i.i
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.034.051.i.i.i.i, i64 4
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !87
  %i.hm = icmp eq i32 %i.hl, %.recomposed119
  br i1 %i.hm, label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.i.loopexit.split.loop.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.034.051.i.i.i.i, i64 8
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !87
  %i.hp = icmp eq i32 %i.ho, %.recomposed119
  br i1 %i.hp, label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.i.loopexit.split.loop.exit52, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.034.051.i.i.i.i, i64 12
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !87
  %i.hs = icmp eq i32 %i.hr, %.recomposed119
  br i1 %i.hs, label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.i.loopexit.split.loop.exit54, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.034.051.i.i.i.i, i64 16
  %i.hu = add nsw i64 %.052.i.i.i.i, -1
  %i.hv = icmp sgt i64 %.052.i.i.i.i, 1
  br i1 %i.hv, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !46

._crit_edge.i.i.i.i:                              ; preds = %bb.x, %bb.t
  %.pre-phi61.i.i.i.i = phi i64 [ %gepdiff.i, %bb.t ], [ %gepdiff122.i, %bb.x ]
  %.sroa.034.0.lcssa.i.i.i.i = phi ptr [ %i.ft, %bb.t ], [ %scevgep.i.i.i.i, %bb.x ] ; 5 uses
  %i.hw = ashr exact i64 %.pre-phi61.i.i.i.i, 2
  switch i64 %i.hw, label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.thread.i [
    i64 3, label %bb.y
    i64 2, label %._crit_edge._crit_edge.i.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i.i
  ]

bb.y:                                             ; preds = %._crit_edge.i.i.i.i
  %i.hx = load i32, ptr %.sroa.034.0.lcssa.i.i.i.i, align 4, !tbaa !87
  %i.hy = icmp eq i32 %i.hx, %.recomposed119
  br i1 %i.hy, label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.hz = getelementptr inbounds nuw i8, ptr %.sroa.034.0.lcssa.i.i.i.i, i64 4
  br label %._crit_edge._crit_edge.i.i.i.i

._crit_edge._crit_edge.i.i.i.i:                   ; preds = %bb.z, %._crit_edge.i.i.i.i
  %.sroa.034.1.i.i.i.i = phi ptr [ %i.hz, %bb.z ], [ %.sroa.034.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.ia = load i32, ptr %.sroa.034.1.i.i.i.i, align 4, !tbaa !87
  %i.ib = icmp eq i32 %i.ia, %.recomposed119
  br i1 %i.ib, label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.i, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge._crit_edge.i.i.i.i
  %i.ic = getelementptr inbounds nuw i8, ptr %.sroa.034.1.i.i.i.i, i64 4
  br label %._crit_edge._crit_edge57.i.i.i.i

._crit_edge._crit_edge57.i.i.i.i:                 ; preds = %bb.aa, %._crit_edge.i.i.i.i
  %.sroa.034.2.i.i.i.i = phi ptr [ %i.ic, %bb.aa ], [ %.sroa.034.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.id = load i32, ptr %.sroa.034.2.i.i.i.i, align 4, !tbaa !87
  %i.ie = icmp eq i32 %i.id, %.recomposed119
  %spec.select.i.i.i.i = select i1 %i.ie, ptr %.sroa.034.2.i.i.i.i, ptr %i.fx
  br label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.i

_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.i.loopexit.split.loop.exit: ; preds = %bb.u
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.034.051.i.i.i.i, i64 4
  br label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.i

_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.i.loopexit.split.loop.exit52: ; preds = %bb.v
  %i.ig = getelementptr inbounds nuw i8, ptr %.sroa.034.051.i.i.i.i, i64 8
  br label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.i

_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.i.loopexit.split.loop.exit54: ; preds = %bb.w
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.034.051.i.i.i.i, i64 12
  br label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.i

_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.i.loopexit.split.loop.exit, %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.i.loopexit.split.loop.exit52, %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.i.loopexit.split.loop.exit54, %._crit_edge._crit_edge57.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i, %bb.y
  %.sroa.010.0.in.sroa.speculated.i.i.i.i = phi ptr [ %.sroa.034.1.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ], [ %spec.select.i.i.i.i, %._crit_edge._crit_edge57.i.i.i.i ], [ %.sroa.034.0.lcssa.i.i.i.i, %bb.y ], [ %i.ih, %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.i.loopexit.split.loop.exit54 ], [ %i.if, %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.i.loopexit.split.loop.exit ], [ %i.ig, %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.i.loopexit.split.loop.exit52 ], [ %.sroa.034.051.i.i.i.i, %.lr.ph.i.i.i.i ]
  %.not123.i = icmp eq ptr %.sroa.010.0.in.sroa.speculated.i.i.i.i, %i.fx
  br i1 %.not123.i, label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.thread.i, label %bb.ab

_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.thread.i: ; preds = %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.i, %._crit_edge.i.i.i.i, %_Z9PERTURBEDRK6t_atom.exit79.thread.i
  %i.ii = add nsw i32 %.2158.i, 1
  br label %bb.ab

bb.ab:                                            ; preds = %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.thread.i, %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.i, %_Z9PERTURBEDRK6t_atom.exit79.i, %bb.o
  %.1113.i = phi i32 [ %.0112156.i, %bb.o ], [ %.2114.i, %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.thread.i ], [ %.0115.i, %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.i ], [ %.2114.i, %_Z9PERTURBEDRK6t_atom.exit79.i ]
  %.4.i = phi i32 [ %.2158.i, %bb.o ], [ %i.ii, %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.thread.i ], [ %.2158.i, %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.i ], [ %.2158.i, %_Z9PERTURBEDRK6t_atom.exit79.i ] ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.0.0157.i, i64 4 ; 2 uses
  %.not119.i = icmp eq ptr %i.ij, %i.k
  br i1 %.not119.i, label %._crit_edge160.i, label %bb.o

_ZL35computeNumGlobalPerturbedExclusionsRK10gmx_mtop_t.exit: ; preds = %._crit_edge160.i, %._crit_edge145.i
  %.1.lcssa.i = phi i32 [ %.0.lcssa.i, %._crit_edge145.i ], [ %.4.i, %._crit_edge160.i ]
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %.1.lcssa.i, ptr %i.ik, align 8, !tbaa !17
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #3 comdat {
end_hunk_0
