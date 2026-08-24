Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/exclusionchecker?download=true
inline.NumInlined: 239
inline.NumDeleted: 137
begin_hunk_0_@_ZN16ExclusionChecker4ImplC2ERKN3gmx7MpiCommERK10gmx_mtop_t:bb.a
  %i.w = getelementptr inbounds nuw [2408 x i8], ptr %i.g, i64 %i.v ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 2360
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 2368
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !20
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !17  ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 2                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %.lr.ph137.i, label %._crit_edge138.i

.lr.ph137.i:                                      ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !31 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 2384
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !17 ; 2 uses
  %i.ak = add nsw i64 %i.ae, -2
  br label %bb.c

._crit_edge138.i:                                 ; preds = %._crit_edge.i, %bb.b
  %.055.lcssa.i = phi i32 [ 0, %bb.b ], [ %.156.lcssa.i, %._crit_edge.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0109.0141.i, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !40
  %i.an = mul nsw i32 %i.am, %.055.lcssa.i
  %i.ao = add nsw i32 %i.an, %.0142.i             ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0109.0141.i, i64 56 ; 2 uses
  %.not117.i = icmp eq ptr %i.ap, %i.e
  br i1 %.not117.i, label %._crit_edge145.i, label %bb.b

bb.c:                                             ; preds = %._crit_edge.i, %.lr.ph137.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph137.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 8 uses
  %.055135.i = phi i32 [ 0, %.lr.ph137.i ], [ %.156.lcssa.i, %._crit_edge.i ] ; 5 uses
  %i.aq = getelementptr inbounds nuw [36 x i8], ptr %i.ah, i64 %indvars.iv.i ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load float, ptr %i.ar, align 4, !tbaa !41
  %i.at = load float, ptr %i.aq, align 4, !tbaa !46
  %i.au = fcmp une float %i.as, %i.at
  br i1 %i.au, label %_Z9PERTURBEDRK6t_atom.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  %i.aw = load float, ptr %i.av, align 4, !tbaa !47
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !48
  %i.az = fcmp une float %i.aw, %i.ay
  br i1 %i.az, label %_Z9PERTURBEDRK6t_atom.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 18
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !49
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.bd = load i16, ptr %i.bc, align 4, !tbaa !50
  %i.be = icmp ne i16 %i.bb, %i.bd
  %i.bf = freeze i1 %i.be
  br label %_Z9PERTURBEDRK6t_atom.exit.i

_Z9PERTURBEDRK6t_atom.exit.i:                     ; preds = %bb.e, %bb.d, %bb.c
  %.fr.i = phi i1 [ true, %bb.d ], [ true, %bb.c ], [ %i.bf, %bb.e ]
  %i.bg = getelementptr [4 x i8], ptr %i.aa, i64 %indvars.iv.i ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !51 ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bg, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !51 ; 2 uses
  %i.bk = sext i32 %i.bj to i64                   ; 2 uses
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.bk ; 2 uses
  %.not124130.i = icmp eq i32 %i.bh, %i.bj
  br i1 %.not124130.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_Z9PERTURBEDRK6t_atom.exit.i
  %i.bm = sext i32 %i.bh to i64                   ; 2 uses
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.bm ; 6 uses
  br i1 %.fr.i, label %iter.check, label %.lr.ph.split.i

iter.check:                                       ; preds = %.lr.ph.i
  %i.bo = shl nsw i64 %i.bk, 2
  %i.bp = add nsw i64 %i.bo, -4
  %i.bq = shl nsw i64 %i.bm, 2
  %i.br = sub nsw i64 %i.bp, %i.bq                ; 3 uses
  %i.bs = lshr exact i64 %i.br, 2
  %i.bt = add nuw nsw i64 %i.bs, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.br, 28
  br i1 %min.iters.check, label %.lr.ph.split.us.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check70 = icmp ult i64 %i.br, 124
  br i1 %min.iters.check70, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bu = and i64 %i.bt, 24
  %n.vec = and i64 %i.bt, 9223372036854775776     ; 4 uses
  %i.bv = shl i64 %n.vec, 2
  %i.bw = getelementptr i8, ptr %i.bn, i64 %i.bv
  %i.bx = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.055135.i, i64 0
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %indvars.iv.i, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i32> [ %i.bx, %vector.ph ], [ %i.co, %vector.body ]
  %vec.phi71.a = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.cp, %vector.body ]
  %vec.phi72.a = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.cq, %vector.body ]
  %vec.phi73 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.cr, %vector.body ]
  %i.by = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.bn, i64 %i.by ; 4 uses
  %i.bz = getelementptr i8, ptr %next.gep, i64 32
  %i.ca = getelementptr i8, ptr %next.gep, i64 64
  %i.cb = getelementptr i8, ptr %next.gep, i64 96
  %wide.load = load <8 x i32>, ptr %next.gep, align 4, !tbaa !51
  %wide.load74.a = load <8 x i32>, ptr %i.bz, align 4, !tbaa !51
  %wide.load75.a = load <8 x i32>, ptr %i.ca, align 4, !tbaa !51
  %wide.load76 = load <8 x i32>, ptr %i.cb, align 4, !tbaa !51
  %i.cc = sext <8 x i32> %wide.load to <8 x i64>
  %i.cd = sext <8 x i32> %wide.load74.a to <8 x i64>
  %i.ce = sext <8 x i32> %wide.load75.a to <8 x i64>
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
  br i1 %i.cs, label %middle.block, label %vector.body, !llvm.loop !52

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i32> %i.cp, %i.co
  %bin.rdx77.a = add <8 x i32> %i.cq, %bin.rdx
  %bin.rdx78 = add <8 x i32> %i.cr, %bin.rdx77.a
  %i.ct = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx78) ; 3 uses
  %cmp.n = icmp eq i64 %i.bt, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bu, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.split.us.i.preheader, label %vec.epilog.ph, !prof !55

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
  %wide.load85 = load <8 x i32>, ptr %next.gep84, align 4, !tbaa !51
  %i.cy = sext <8 x i32> %wide.load85 to <8 x i64>
  %i.cz = icmp sle <8 x i64> %broadcast.splat81, %i.cy
  %i.da = zext <8 x i1> %i.cz to <8 x i32>
  %i.db = add <8 x i32> %vec.phi83, %i.da         ; 2 uses
  %index.next86 = add nuw i64 %index82, 8         ; 2 uses
  %i.dc = icmp eq i64 %index.next86, %n.vec79
  br i1 %i.dc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !56

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
  %i.de = load i32, ptr %.sroa.0104.0131.us.i, align 4, !tbaa !51
  %i.df = sext i32 %i.de to i64
  %.not62.us.i = icmp sle i64 %indvars.iv.i, %i.df
  %i.dg = zext i1 %.not62.us.i to i32
  %spec.select.i = add nsw i32 %.156132.us.i, %i.dg ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0104.0131.us.i, i64 4 ; 2 uses
  %.not124.us.i = icmp eq ptr %i.dh, %i.bl
  br i1 %.not124.us.i, label %._crit_edge.i, label %.lr.ph.split.us.i, !llvm.loop !57

._crit_edge.i:                                    ; preds = %bb.h, %.lr.ph.split.us.i, %middle.block, %vec.epilog.middle.block, %_Z9PERTURBEDRK6t_atom.exit.i
  %.156.lcssa.i = phi i32 [ %.055135.i, %_Z9PERTURBEDRK6t_atom.exit.i ], [ %spec.select.i, %.lr.ph.split.us.i ], [ %i.dd, %vec.epilog.middle.block ], [ %i.ct, %middle.block ], [ %.257.i, %bb.h ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %i.ak
  br i1 %exitcond.not.i, label %._crit_edge138.i, label %bb.c, !llvm.loop !58

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.h
  %.156132.i = phi i32 [ %.257.i, %bb.h ], [ %.055135.i, %.lr.ph.i ] ; 3 uses
  %.sroa.0104.0131.i = phi ptr [ %i.dz, %bb.h ], [ %i.bn, %.lr.ph.i ] ; 2 uses
  %i.di = load i32, ptr %.sroa.0104.0131.i, align 4, !tbaa !51
  %i.dj = sext i32 %i.di to i64                   ; 2 uses
  %.not62.i = icmp sgt i64 %indvars.iv.i, %i.dj
  br i1 %.not62.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.i
  %i.dk = getelementptr inbounds [36 x i8], ptr %i.ah, i64 %i.dj ; 6 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !41
  %i.dn = load float, ptr %i.dk, align 4, !tbaa !46
  %i.do = fcmp une float %i.dm, %i.dn
  br i1 %i.do, label %_Z9PERTURBEDRK6t_atom.exit66.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 12
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !47
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !48
  %i.dt = fcmp une float %i.dq, %i.ds
  br i1 %i.dt, label %_Z9PERTURBEDRK6t_atom.exit66.thread.i, label %_Z9PERTURBEDRK6t_atom.exit66.i

_Z9PERTURBEDRK6t_atom.exit66.i:                   ; preds = %bb.g
  %i.du = getelementptr inbounds nuw i8, ptr %i.dk, i64 18
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !49
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dx = load i16, ptr %i.dw, align 4, !tbaa !50
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
  %.sroa.0101.0163.i = phi ptr [ %i.i, %.lr.ph166.i ], [ %i.gc, %._crit_edge160.i ] ; 2 uses
  %i.ea = load i32, ptr %.sroa.0101.0163.i, align 4, !tbaa !51 ; 4 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %bb.i
  %.0115.i = phi i32 [ 0, %bb.i ], [ %i.ek, %bb.l ] ; 6 uses
  %.026.i.i = phi i32 [ -1, %bb.i ], [ %.127.i.i, %bb.l ]
  %.0.i.i = phi i32 [ %i.p, %bb.i ], [ %.1.i.i, %bb.l ]
  %i.eb = sext i32 %.0115.i to i64                ; 2 uses
  %i.ec = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %i.eb ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !60 ; 2 uses
  %i.ef = icmp slt i32 %i.ea, %i.ee
  br i1 %i.ef, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !62
  %.not.i.i = icmp slt i32 %i.ea, %i.eh
  br i1 %.not.i.i, label %_ZL20mtopGetMolblockIndexRK10gmx_mtop_tiPiS2_S2_.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.127.i.i = phi i32 [ %.026.i.i, %bb.j ], [ %.0115.i, %bb.k ] ; 2 uses
  %.1.i.i = phi i32 [ %.0115.i, %bb.j ], [ %.0.i.i, %bb.k ] ; 2 uses
  %i.ei = add nsw i32 %.127.i.i, 1
  %i.ej = add i32 %i.ei, %.1.i.i
  %i.ek = ashr i32 %i.ej, 1
  br label %bb.j, !llvm.loop !63

_ZL20mtopGetMolblockIndexRK10gmx_mtop_tiPiS2_S2_.exit.i: ; preds = %bb.k
  %i.el = sub nsw i32 %i.ea, %i.ee                ; 2 uses
  %i.em = load i32, ptr %i.ec, align 4, !tbaa !64 ; 3 uses
  %i.en = sdiv i32 %i.el, %i.em                   ; 2 uses
  %i.eo = mul nsw i32 %i.en, %i.em                ; 0 uses
  %.recomposed = srem i32 %i.el, %i.em
  %i.ep = getelementptr inbounds nuw [56 x i8], ptr %i.c, i64 %i.eb
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !24
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw [2408 x i8], ptr %i.t, i64 %i.er ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !65 ; 2 uses
  %i.ev = sext i32 %.recomposed to i64            ; 2 uses
  %i.ew = getelementptr inbounds [36 x i8], ptr %i.eu, i64 %i.ev ; 6 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !41
  %i.ez = load float, ptr %i.ew, align 4, !tbaa !46
  %i.fa = fcmp une float %i.ey, %i.ez
  br i1 %i.fa, label %.lr.ph159.i, label %bb.m

bb.m:                                             ; preds = %_ZL20mtopGetMolblockIndexRK10gmx_mtop_tiPiS2_S2_.exit.i
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ew, i64 12
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !47
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ew, i64 4
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !48
  %i.ff = fcmp une float %i.fc, %i.fe
  br i1 %i.ff, label %.lr.ph159.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ew, i64 18
  %i.fh = load i16, ptr %i.fg, align 2, !tbaa !49
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.fj = load i16, ptr %i.fi, align 4, !tbaa !50
  %i.fk = icmp ne i16 %i.fh, %i.fj
  br label %.lr.ph159.i

.lr.ph159.i:                                      ; preds = %bb.n, %bb.m, %_ZL20mtopGetMolblockIndexRK10gmx_mtop_tiPiS2_S2_.exit.i
  %i.fl = phi i1 [ true, %bb.m ], [ true, %_ZL20mtopGetMolblockIndexRK10gmx_mtop_tiPiS2_S2_.exit.i ], [ %i.fk, %bb.n ]
  %i.fm = getelementptr inbounds nuw i8, ptr %i.es, i64 2360
  %i.fn = getelementptr inbounds nuw i8, ptr %i.es, i64 2384
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !17 ; 2 uses
  %i.fp = load ptr, ptr %i.fm, align 8, !tbaa !17
  %i.fq = getelementptr [4 x i8], ptr %i.fp, i64 %i.ev ; 2 uses
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !51
  %i.fs = sext i32 %i.fr to i64
  %.idx121.i = shl nsw i64 %i.fs, 2               ; 3 uses
  %i.ft = getelementptr inbounds i8, ptr %i.fo, i64 %.idx121.i ; 3 uses
  %i.fu = getelementptr i8, ptr %i.fq, i64 4
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !51
  %i.fw = sext i32 %i.fv to i64
  %.idx.i = shl nsw i64 %i.fw, 2                  ; 3 uses
  %i.fx = getelementptr inbounds i8, ptr %i.fo, i64 %.idx.i ; 2 uses
  %gepdiff.i = sub nsw i64 %.idx.i, %.idx121.i    ; 3 uses
  %i.fy = ashr i64 %gepdiff.i, 4                  ; 2 uses
  %i.fz = icmp sgt i64 %i.fy, 0
  %i.ga = and i64 %gepdiff.i, -16                 ; 2 uses
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.ft, i64 %i.ga
  %i.gb = add nsw i64 %.idx121.i, %i.ga
  %gepdiff122.i = sub nsw i64 %.idx.i, %i.gb
  br label %bb.o

._crit_edge160.i:                                 ; preds = %bb.ab
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.0101.0163.i, i64 4 ; 2 uses
  %.not118.i = icmp eq ptr %i.gc, %i.k
  br i1 %.not118.i, label %_ZL35computeNumGlobalPerturbedExclusionsRK10gmx_mtop_t.exit, label %bb.i

bb.o:                                             ; preds = %bb.ab, %.lr.ph159.i
  %.2158.i = phi i32 [ %.1164.i, %.lr.ph159.i ], [ %.4.i, %bb.ab ] ; 4 uses
  %.sroa.0.0157.i = phi ptr [ %i.i, %.lr.ph159.i ], [ %i.ik, %bb.ab ] ; 2 uses
  %.0112156.i = phi i32 [ %.0115.i, %.lr.ph159.i ], [ %.1113.i, %bb.ab ] ; 2 uses
  %i.gd = load i32, ptr %.sroa.0.0157.i, align 4, !tbaa !51 ; 4 uses
  %.not.i = icmp sgt i32 %i.gd, %i.ea
  br i1 %.not.i, label %.preheader.i, label %bb.ab

.preheader.i:                                     ; preds = %bb.o, %bb.q
  %.2114.i = phi i32 [ %i.gn, %bb.q ], [ %.0112156.i, %bb.o ] ; 6 uses
  %.026.i73.i = phi i32 [ %.127.i76.i, %bb.q ], [ -1, %bb.o ]
  %.0.i74.i = phi i32 [ %.1.i77.i, %bb.q ], [ %i.p, %bb.o ]
  %i.ge = sext i32 %.2114.i to i64
  %i.gf = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %i.ge ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 4
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !60 ; 2 uses
  %i.gi = icmp slt i32 %i.gd, %i.gh
  br i1 %i.gi, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.preheader.i
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !62
  %.not.i75.i = icmp slt i32 %i.gd, %i.gk
  br i1 %.not.i75.i, label %_ZL20mtopGetMolblockIndexRK10gmx_mtop_tiPiS2_S2_.exit78.i, label %bb.q

bb.q:                                             ; preds = %bb.p, %.preheader.i
  %.127.i76.i = phi i32 [ %.026.i73.i, %.preheader.i ], [ %.2114.i, %bb.p ] ; 2 uses
  %.1.i77.i = phi i32 [ %.2114.i, %.preheader.i ], [ %.0.i74.i, %bb.p ] ; 2 uses
  %i.gl = add nsw i32 %.127.i76.i, 1
  %i.gm = add i32 %i.gl, %.1.i77.i
  %i.gn = ashr i32 %i.gm, 1
  br label %.preheader.i, !llvm.loop !63

_ZL20mtopGetMolblockIndexRK10gmx_mtop_tiPiS2_S2_.exit78.i: ; preds = %bb.p
  %i.go = sub nsw i32 %i.gd, %i.gh                ; 2 uses
  %i.gp = load i32, ptr %i.gf, align 4, !tbaa !64 ; 3 uses
  %i.gq = sdiv i32 %i.go, %i.gp                   ; 2 uses
  %i.gr = mul nsw i32 %i.gq, %i.gp                ; 0 uses
  %.recomposed119 = srem i32 %i.go, %i.gp         ; 8 uses
  br i1 %i.fl, label %_Z9PERTURBEDRK6t_atom.exit79.thread.i, label %bb.r

bb.r:                                             ; preds = %_ZL20mtopGetMolblockIndexRK10gmx_mtop_tiPiS2_S2_.exit78.i
  %i.gs = sext i32 %.recomposed119 to i64
  %i.gt = getelementptr inbounds [36 x i8], ptr %i.eu, i64 %i.gs ; 6 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !41
  %i.gw = load float, ptr %i.gt, align 4, !tbaa !46
  %i.gx = fcmp une float %i.gv, %i.gw
  br i1 %i.gx, label %_Z9PERTURBEDRK6t_atom.exit79.thread.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gt, i64 12
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !47
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gt, i64 4
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !48
  %i.hc = fcmp une float %i.gz, %i.hb
  br i1 %i.hc, label %_Z9PERTURBEDRK6t_atom.exit79.thread.i, label %_Z9PERTURBEDRK6t_atom.exit79.i

_Z9PERTURBEDRK6t_atom.exit79.i:                   ; preds = %bb.s
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gt, i64 18
  %i.he = load i16, ptr %i.hd, align 2, !tbaa !49
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  %i.hg = load i16, ptr %i.hf, align 4, !tbaa !50
  %.not120.i = icmp eq i16 %i.he, %i.hg
  br i1 %.not120.i, label %bb.ab, label %_Z9PERTURBEDRK6t_atom.exit79.thread.i

_Z9PERTURBEDRK6t_atom.exit79.thread.i:            ; preds = %_Z9PERTURBEDRK6t_atom.exit79.i, %bb.s, %bb.r, %_ZL20mtopGetMolblockIndexRK10gmx_mtop_tiPiS2_S2_.exit78.i
  %i.hh = icmp eq i32 %.2114.i, %.0115.i
  %i.hi = icmp eq i32 %i.gq, %i.en
  %or.cond.i = select i1 %i.hh, i1 %i.hi, i1 false
  br i1 %or.cond.i, label %bb.t, label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit.thread.i
end_hunk_0
