Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/bn_gf2m?download=true
inline.NumInlined: 14
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@BN_GF2m_mod_inv:bb.a

.critedge.thread.i:                               ; preds = %._crit_edge188.i, %bb.n
  %.pr.i = load i64, ptr %.0135.i, align 8, !tbaa !17
  br label %bb.p

.lr.ph194.i:                                      ; preds = %.lr.ph194.i.preheader, %._crit_edge188.i
  %.1140192.i = phi i32 [ %i.dn, %._crit_edge188.i ], [ %.0139.i, %.lr.ph194.i.preheader ] ; 4 uses
  %i.ba = load i64, ptr %.0135.i, align 8, !tbaa !17 ; 6 uses
  %i.bb = and i64 %i.ba, 1
  %.not165.i = icmp eq i64 %i.bb, 0
  br i1 %.not165.i, label %bb.o, label %.critedge.i

bb.o:                                             ; preds = %.lr.ph194.i
  %i.bc = load i64, ptr %.0133.i, align 8, !tbaa !17 ; 2 uses
  %i.bd = and i64 %i.bc, 1
  %i.be = sub nsw i64 0, %i.bd                    ; 5 uses
  %i.bf = load ptr, ptr %2, align 8, !tbaa !15    ; 7 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !17
  %i.bh = and i64 %i.bg, %i.be
  %i.bi = xor i64 %i.bh, %i.bc                    ; 4 uses
  br i1 %i.ai, label %.lr.ph187.i.preheader, label %._crit_edge188.i

.lr.ph187.i.preheader:                            ; preds = %bb.o
  br i1 %min.iters.check117, label %.lr.ph187.i.preheader145, label %vector.memcheck118

vector.memcheck118:                               ; preds = %.lr.ph187.i.preheader
  %i.bj = getelementptr i8, ptr %i.bf, i64 8      ; 2 uses
  %i.bk = getelementptr i8, ptr %i.bf, i64 %i.ax  ; 2 uses
  %bound0122 = icmp ult ptr %.0135.i, %i.bk
  %bound1123 = icmp ult ptr %i.bj, %scevgep115
  %found.conflict124 = and i1 %bound0122, %bound1123
  %conflict.rdx125 = or i1 %found.conflict121, %found.conflict124
  %bound0126 = icmp ult ptr %.0133.i, %i.bk
  %bound1127 = icmp ult ptr %i.bj, %scevgep
  %found.conflict128 = and i1 %bound0126, %bound1127
  %conflict.rdx129 = or i1 %conflict.rdx125, %found.conflict128
  br i1 %conflict.rdx129, label %.lr.ph187.i.preheader145, label %vector.ph130

vector.ph130:                                     ; preds = %vector.memcheck118
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.be, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %vector.recur.init = insertelement <2 x i64> poison, i64 %i.bi, i64 1
  %vector.recur.init134 = insertelement <2 x i64> poison, i64 %i.ba, i64 1
  br label %vector.body132

vector.body132:                                   ; preds = %vector.body132, %vector.ph130
  %index133 = phi i64 [ 0, %vector.ph130 ], [ %index.next139, %vector.body132 ] ; 4 uses
  %vector.recur = phi <2 x i64> [ %vector.recur.init, %vector.ph130 ], [ %i.bt, %vector.body132 ]
  %vector.recur135 = phi <2 x i64> [ %vector.recur.init134, %vector.ph130 ], [ %wide.load136, %vector.body132 ]
  %i.bl = or disjoint i64 %index133, 1            ; 3 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.0135.i, i64 %i.bl
  %wide.load136 = load <2 x i64>, ptr %i.bm, align 8, !tbaa !17, !alias.scope !61, !noalias !62 ; 4 uses
  %i.bn = shufflevector <2 x i64> %vector.recur135, <2 x i64> %wide.load136, <2 x i32> <i32 1, i32 2>
  %i.bo = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %wide.load136, <2 x i64> %i.bn, <2 x i64> splat (i64 63))
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %.0135.i, i64 %index133
  store <2 x i64> %i.bo, ptr %i.bp, align 8, !tbaa !17, !alias.scope !61, !noalias !62
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %.0133.i, i64 %i.bl
  %wide.load137 = load <2 x i64>, ptr %i.bq, align 8, !tbaa !17, !alias.scope !63, !noalias !64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bl
  %wide.load138 = load <2 x i64>, ptr %i.br, align 8, !tbaa !17, !alias.scope !64
  %i.bs = and <2 x i64> %wide.load138, %broadcast.splat
  %i.bt = xor <2 x i64> %i.bs, %wide.load137      ; 4 uses
  %i.bu = shufflevector <2 x i64> %vector.recur, <2 x i64> %i.bt, <2 x i32> <i32 1, i32 2>
  %i.bv = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %i.bt, <2 x i64> %i.bu, <2 x i64> splat (i64 63))
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %.0133.i, i64 %index133
  store <2 x i64> %i.bv, ptr %i.bw, align 8, !tbaa !17, !alias.scope !63, !noalias !64
  %index.next139 = add nuw i64 %index133, 2       ; 2 uses
  %i.bx = icmp eq i64 %index.next139, %n.vec131
  br i1 %i.bx, label %middle.block140, label %vector.body132, !llvm.loop !50

middle.block140:                                  ; preds = %vector.body132
  %vector.recur.extract = extractelement <2 x i64> %i.bt, i64 1 ; 2 uses
  %vector.recur.extract141 = extractelement <2 x i64> %wide.load136, i64 1 ; 2 uses
  br i1 %cmp.n142, label %._crit_edge188.i, label %.lr.ph187.i.preheader145

.lr.ph187.i.preheader145:                         ; preds = %vector.memcheck118, %.lr.ph187.i.preheader, %middle.block140
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck118 ], [ 0, %.lr.ph187.i.preheader ], [ %n.vec131, %middle.block140 ] ; 5 uses
  %.0128185.i.ph = phi i64 [ %i.bi, %vector.memcheck118 ], [ %i.bi, %.lr.ph187.i.preheader ], [ %vector.recur.extract, %middle.block140 ] ; 2 uses
  %.0129184.i.ph = phi i64 [ %i.ba, %vector.memcheck118 ], [ %i.ba, %.lr.ph187.i.preheader ], [ %vector.recur.extract141, %middle.block140 ] ; 2 uses
  br i1 %lcmp.mod.not, label %.lr.ph187.i.prol.loopexit, label %.lr.ph187.i.prol

.lr.ph187.i.prol:                                 ; preds = %.lr.ph187.i.preheader145
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1 ; 4 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %.0135.i, i64 %indvars.iv.next.i.prol
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !17 ; 3 uses
  %i.ca = tail call i64 @llvm.fshl.i64(i64 %i.bz, i64 %.0129184.i.ph, i64 63)
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %.0135.i, i64 %indvars.iv.i.ph
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !17
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %.0133.i, i64 %indvars.iv.next.i.prol
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !17
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.next.i.prol
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !17
  %i.cg = and i64 %i.cf, %i.be
  %i.ch = xor i64 %i.cg, %i.cd                    ; 3 uses
  %i.ci = tail call i64 @llvm.fshl.i64(i64 %i.ch, i64 %.0128185.i.ph, i64 63)
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %.0133.i, i64 %indvars.iv.i.ph
  store i64 %i.ci, ptr %i.cj, align 8, !tbaa !17
  br label %.lr.ph187.i.prol.loopexit

.lr.ph187.i.prol.loopexit:                        ; preds = %.lr.ph187.i.prol, %.lr.ph187.i.preheader145
  %.lcssa148.unr = phi i64 [ poison, %.lr.ph187.i.preheader145 ], [ %i.bz, %.lr.ph187.i.prol ]
  %.lcssa147.unr = phi i64 [ poison, %.lr.ph187.i.preheader145 ], [ %i.ch, %.lr.ph187.i.prol ]
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph187.i.preheader145 ], [ %indvars.iv.next.i.prol, %.lr.ph187.i.prol ]
  %.0128185.i.unr = phi i64 [ %.0128185.i.ph, %.lr.ph187.i.preheader145 ], [ %i.ch, %.lr.ph187.i.prol ]
  %.0129184.i.unr = phi i64 [ %.0129184.i.ph, %.lr.ph187.i.preheader145 ], [ %i.bz, %.lr.ph187.i.prol ]
  %i.ck = icmp eq i64 %indvars.iv.i.ph, %i.ay
  br i1 %i.ck, label %._crit_edge188.i, label %.lr.ph187.i

.lr.ph187.i:                                      ; preds = %.lr.ph187.i.prol.loopexit, %.lr.ph187.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph187.i ], [ %indvars.iv.i.unr, %.lr.ph187.i.prol.loopexit ] ; 4 uses
  %.0128185.i = phi i64 [ %i.dg, %.lr.ph187.i ], [ %.0128185.i.unr, %.lr.ph187.i.prol.loopexit ]
  %.0129184.i = phi i64 [ %i.cy, %.lr.ph187.i ], [ %.0129184.i.unr, %.lr.ph187.i.prol.loopexit ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 5 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %.0135.i, i64 %indvars.iv.next.i
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !17 ; 2 uses
  %i.cn = tail call i64 @llvm.fshl.i64(i64 %i.cm, i64 %.0129184.i, i64 63)
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %.0135.i, i64 %indvars.iv.i
  store i64 %i.cn, ptr %i.co, align 8, !tbaa !17
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.0133.i, i64 %indvars.iv.next.i
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !17
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.next.i
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !17
  %i.ct = and i64 %i.cs, %i.be
  %i.cu = xor i64 %i.ct, %i.cq                    ; 2 uses
  %i.cv = tail call i64 @llvm.fshl.i64(i64 %i.cu, i64 %.0128185.i, i64 63)
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %.0133.i, i64 %indvars.iv.i
  store i64 %i.cv, ptr %i.cw, align 8, !tbaa !17
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 5 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %.0135.i, i64 %indvars.iv.next.i.1
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !17 ; 3 uses
  %i.cz = tail call i64 @llvm.fshl.i64(i64 %i.cy, i64 %i.cm, i64 63)
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.0135.i, i64 %indvars.iv.next.i
  store i64 %i.cz, ptr %i.da, align 8, !tbaa !17
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.0133.i, i64 %indvars.iv.next.i.1
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !17
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.next.i.1
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !17
  %i.df = and i64 %i.de, %i.be
  %i.dg = xor i64 %i.df, %i.dc                    ; 3 uses
  %i.dh = tail call i64 @llvm.fshl.i64(i64 %i.dg, i64 %i.cu, i64 63)
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %.0133.i, i64 %indvars.iv.next.i
  store i64 %i.dh, ptr %i.di, align 8, !tbaa !17
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %._crit_edge188.i, label %.lr.ph187.i, !llvm.loop !51

._crit_edge188.i:                                 ; preds = %.lr.ph187.i.prol.loopexit, %.lr.ph187.i, %middle.block140, %bb.o
  %.3144.lcssa.i = phi i64 [ 0, %bb.o ], [ %wide.trip.count.i, %middle.block140 ], [ %wide.trip.count.i, %.lr.ph187.i ], [ %wide.trip.count.i, %.lr.ph187.i.prol.loopexit ] ; 2 uses
  %.0129.lcssa.i = phi i64 [ %i.ba, %bb.o ], [ %vector.recur.extract141, %middle.block140 ], [ %.lcssa148.unr, %.lr.ph187.i.prol.loopexit ], [ %i.cy, %.lr.ph187.i ]
  %.0128.lcssa.i = phi i64 [ %i.bi, %bb.o ], [ %vector.recur.extract, %middle.block140 ], [ %.lcssa147.unr, %.lr.ph187.i.prol.loopexit ], [ %i.dg, %.lr.ph187.i ]
  %i.dj = lshr i64 %.0129.lcssa.i, 1
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %.0135.i, i64 %.3144.lcssa.i
  store i64 %i.dj, ptr %i.dk, align 8, !tbaa !17
  %i.dl = lshr i64 %.0128.lcssa.i, 1
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %.0133.i, i64 %.3144.lcssa.i
  store i64 %i.dl, ptr %i.dm, align 8, !tbaa !17
  %i.dn = add nsw i32 %.1140192.i, -1             ; 2 uses
  %.not164.i = icmp eq i32 %i.dn, 0
  br i1 %.not164.i, label %.critedge.thread.i, label %.lr.ph194.i, !llvm.loop !52

.critedge.i:                                      ; preds = %.lr.ph194.i
  %i.do = icmp slt i32 %.1140192.i, 65
  br i1 %i.do, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.critedge.i, %.critedge.thread.i
  %.1140171.i = phi i32 [ 0, %.critedge.thread.i ], [ %.1140192.i, %.critedge.i ]
  %i.dp = phi i64 [ %.pr.i, %.critedge.thread.i ], [ %i.ba, %.critedge.i ]
  switch i64 %i.dp, label %bb.q [
    i64 0, label %BN_GF2m_mod_inv_vartime.exit.thread
    i64 1, label %BN_GF2m_mod_inv_vartime.exit
  ]

bb.q:                                             ; preds = %bb.p, %.critedge.i
  %.1140170.i = phi i32 [ %.1140171.i, %bb.p ], [ %.1140192.i, %.critedge.i ] ; 4 uses
  %i.dq = icmp slt i32 %.1140170.i, %.0137.i
  br i1 %i.dq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dr = load ptr, ptr %.0148.i, align 8, !tbaa !15
  %i.ds = load ptr, ptr %.0152.i, align 8, !tbaa !15
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.1153.i = phi ptr [ %.0150.i, %bb.r ], [ %.0152.i, %bb.q ]
  %.1151.i = phi ptr [ %.0152.i, %bb.r ], [ %.0150.i, %bb.q ]
  %.1149.i = phi ptr [ %.0146.i, %bb.r ], [ %.0148.i, %bb.q ]
  %.1147.i = phi ptr [ %.0148.i, %bb.r ], [ %.0146.i, %bb.q ]
  %.2.i = phi i32 [ %.0137.i, %bb.r ], [ %.1140170.i, %bb.q ] ; 2 uses
  %.1138.i = phi i32 [ %.1140170.i, %bb.r ], [ %.0137.i, %bb.q ]
  %.1136.i = phi ptr [ %.0131.i, %bb.r ], [ %.0135.i, %bb.q ] ; 10 uses
  %.1134.i = phi ptr [ %.0130.i, %bb.r ], [ %.0133.i, %bb.q ] ; 9 uses
  %.1132.i = phi ptr [ %i.dr, %bb.r ], [ %.0131.i, %bb.q ] ; 8 uses
  %.1.i = phi ptr [ %i.ds, %bb.r ], [ %.0130.i, %bb.q ] ; 8 uses
  br i1 %i.ap, label %.lr.ph198.i.preheader, label %._crit_edge199.i

.lr.ph198.i.preheader:                            ; preds = %bb.s
  br i1 %min.iters.check, label %.lr.ph198.i.preheader146, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph198.i.preheader
  %i.dt = getelementptr i8, ptr %.1136.i, i64 %i.av ; 3 uses
  %i.du = getelementptr i8, ptr %.1134.i, i64 %i.av ; 3 uses
  %bound0 = icmp ult ptr %.1136.i, %i.du
  %bound0.a = icmp ult ptr %.1134.i, %i.dt
  %found.conflict = and i1 %bound0, %bound0.a
  %4 = getelementptr i8, ptr %.1132.i, i64 %i.av  ; 2 uses
  %bound078 = icmp ult ptr %.1136.i, %4
  %bound179 = icmp ult ptr %.1132.i, %i.dt
  %found.conflict80 = and i1 %bound078, %bound179
  %conflict.rdx = or i1 %found.conflict, %found.conflict80
  %5 = getelementptr i8, ptr %.1.i, i64 %i.av     ; 2 uses
  %bound081 = icmp ult ptr %.1136.i, %5
  %bound182 = icmp ult ptr %.1.i, %i.dt
  %found.conflict83 = and i1 %bound081, %bound182
  %conflict.rdx84 = or i1 %conflict.rdx, %found.conflict83
  %bound085 = icmp ult ptr %.1134.i, %4
  %bound186 = icmp ult ptr %.1132.i, %i.du
  %found.conflict87 = and i1 %bound085, %bound186
  %conflict.rdx88 = or i1 %conflict.rdx84, %found.conflict87
  %bound089 = icmp ult ptr %.1134.i, %5
  %bound190 = icmp ult ptr %.1.i, %i.du
  %found.conflict91 = and i1 %bound089, %bound190
  %conflict.rdx92 = or i1 %conflict.rdx88, %found.conflict91
  br i1 %conflict.rdx92, label %.lr.ph198.i.preheader146, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 5 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %.1132.i, i64 %index ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %wide.load = load <2 x i64>, ptr %i.dv, align 8, !tbaa !17, !alias.scope !65
  %wide.load93 = load <2 x i64>, ptr %i.dw, align 8, !tbaa !17, !alias.scope !65
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %.1136.i, i64 %index ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16 ; 2 uses
  %wide.load94 = load <2 x i64>, ptr %i.dx, align 8, !tbaa !17, !alias.scope !66, !noalias !67
  %wide.load95 = load <2 x i64>, ptr %i.dy, align 8, !tbaa !17, !alias.scope !66, !noalias !67
  %i.dz = xor <2 x i64> %wide.load94, %wide.load
  %i.ea = xor <2 x i64> %wide.load95, %wide.load93
  store <2 x i64> %i.dz, ptr %i.dx, align 8, !tbaa !17, !alias.scope !66, !noalias !67
  store <2 x i64> %i.ea, ptr %i.dy, align 8, !tbaa !17, !alias.scope !66, !noalias !67
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %.1.i, i64 %index ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %wide.load96 = load <2 x i64>, ptr %i.eb, align 8, !tbaa !17, !alias.scope !68
  %wide.load97 = load <2 x i64>, ptr %i.ec, align 8, !tbaa !17, !alias.scope !68
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %.1134.i, i64 %index ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16 ; 2 uses
  %wide.load98 = load <2 x i64>, ptr %i.ed, align 8, !tbaa !17, !alias.scope !69, !noalias !70
  %wide.load99 = load <2 x i64>, ptr %i.ee, align 8, !tbaa !17, !alias.scope !69, !noalias !70
  %i.ef = xor <2 x i64> %wide.load98, %wide.load96
  %i.eg = xor <2 x i64> %wide.load99, %wide.load97
  store <2 x i64> %i.ef, ptr %i.ed, align 8, !tbaa !17, !alias.scope !69, !noalias !70
  store <2 x i64> %i.eg, ptr %i.ee, align 8, !tbaa !17, !alias.scope !69, !noalias !70
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.eh = icmp eq i64 %index.next, %n.vec
  br i1 %i.eh, label %middle.block, label %vector.body, !llvm.loop !58

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge199.i, label %.lr.ph198.i.preheader146

.lr.ph198.i.preheader146:                         ; preds = %vector.memcheck, %.lr.ph198.i.preheader, %middle.block
  %indvars.iv213.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph198.i.preheader ], [ %n.vec, %middle.block ] ; 7 uses
  br i1 %lcmp.mod155.not, label %.lr.ph198.i.prol.loopexit, label %.lr.ph198.i.prol

.lr.ph198.i.prol:                                 ; preds = %.lr.ph198.i.preheader146
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %.1132.i, i64 %indvars.iv213.i.ph
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !17
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %.1136.i, i64 %indvars.iv213.i.ph ; 2 uses
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !17
  %i.em = xor i64 %i.el, %i.ej
  store i64 %i.em, ptr %i.ek, align 8, !tbaa !17
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %.1.i, i64 %indvars.iv213.i.ph
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !17
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %.1134.i, i64 %indvars.iv213.i.ph ; 2 uses
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !17
  %i.er = xor i64 %i.eq, %i.eo
  store i64 %i.er, ptr %i.ep, align 8, !tbaa !17
  %indvars.iv.next214.i.prol = or disjoint i64 %indvars.iv213.i.ph, 1
  br label %.lr.ph198.i.prol.loopexit

.lr.ph198.i.prol.loopexit:                        ; preds = %.lr.ph198.i.prol, %.lr.ph198.i.preheader146
  %indvars.iv213.i.unr = phi i64 [ %indvars.iv213.i.ph, %.lr.ph198.i.preheader146 ], [ %indvars.iv.next214.i.prol, %.lr.ph198.i.prol ]
  %i.es = icmp eq i64 %indvars.iv213.i.ph, %i.az
  br i1 %i.es, label %._crit_edge199.i, label %.lr.ph198.i

.lr.ph198.i:                                      ; preds = %.lr.ph198.i.prol.loopexit, %.lr.ph198.i
  %indvars.iv213.i = phi i64 [ %indvars.iv.next214.i.1, %.lr.ph198.i ], [ %indvars.iv213.i.unr, %.lr.ph198.i.prol.loopexit ] ; 6 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %.1132.i, i64 %indvars.iv213.i
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !17
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %.1136.i, i64 %indvars.iv213.i ; 2 uses
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !17
  %i.ex = xor i64 %i.ew, %i.eu
  store i64 %i.ex, ptr %i.ev, align 8, !tbaa !17
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %.1.i, i64 %indvars.iv213.i
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !17
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %.1134.i, i64 %indvars.iv213.i ; 2 uses
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !17
  %i.fc = xor i64 %i.fb, %i.ez
  store i64 %i.fc, ptr %i.fa, align 8, !tbaa !17
  %indvars.iv.next214.i = add nuw nsw i64 %indvars.iv213.i, 1 ; 4 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %.1132.i, i64 %indvars.iv.next214.i
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !17
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %.1136.i, i64 %indvars.iv.next214.i ; 2 uses
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !17
  %i.fh = xor i64 %i.fg, %i.fe
  store i64 %i.fh, ptr %i.ff, align 8, !tbaa !17
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %.1.i, i64 %indvars.iv.next214.i
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !17
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %.1134.i, i64 %indvars.iv.next214.i ; 2 uses
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !17
  %i.fm = xor i64 %i.fl, %i.fj
  store i64 %i.fm, ptr %i.fk, align 8, !tbaa !17
  %indvars.iv.next214.i.1 = add nuw nsw i64 %indvars.iv213.i, 2 ; 2 uses
  %exitcond217.not.i.1 = icmp eq i64 %indvars.iv.next214.i.1, %i.aq
  br i1 %exitcond217.not.i.1, label %._crit_edge199.i, label %.lr.ph198.i, !llvm.loop !59

._crit_edge199.i:                                 ; preds = %.lr.ph198.i.prol.loopexit, %.lr.ph198.i, %middle.block, %bb.s
  %i.fn = icmp eq i32 %.0137.i, %.1140170.i
  br i1 %i.fn, label %bb.t, label %.backedge

bb.t:                                             ; preds = %._crit_edge199.i
  %i.fo = add nsw i32 %.2.i, -1
  %i.fp = sdiv i32 %i.fo, 64
  %i.fq = sext i32 %i.fp to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %bb.t
  %indvars.iv218.i = phi i64 [ %indvars.iv.next219.i, %bb.u ], [ %i.fq, %bb.t ] ; 4 uses
  %i.fr = getelementptr inbounds [8 x i8], ptr %.1136.i, i64 %indvars.iv218.i
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !17 ; 2 uses
  %i.ft = icmp eq i64 %i.fs, 0
  %i.fu = icmp ne i64 %indvars.iv218.i, 0
  %i.fv = and i1 %i.fu, %i.ft
  %indvars.iv.next219.i = add nsw i64 %indvars.iv218.i, -1
  br i1 %i.fv, label %bb.u, label %bb.v, !llvm.loop !60

bb.v:                                             ; preds = %bb.u
  %i.fw = trunc nsw i64 %indvars.iv218.i to i32
  %i.fx = shl nsw i32 %i.fw, 6
  %i.fy = tail call i32 @BN_num_bits_word(i64 noundef %i.fs) #5
  %i.fz = add nsw i32 %i.fy, %i.fx
  br label %.backedge

.backedge:                                        ; preds = %bb.v, %._crit_edge199.i
  %.0139.i.be = phi i32 [ %i.fz, %bb.v ], [ %.2.i, %._crit_edge199.i ]
  br label %bb.n

BN_GF2m_mod_inv_vartime.exit.thread:              ; preds = %bb.p, %bb.f, %bb.h, %bb.g, %bb.i, %._crit_edge178.i, %._crit_edge.i, %bb.j
  tail call void @BN_CTX_end(ptr noundef %3) #5
  br label %.loopexit

BN_GF2m_mod_inv_vartime.exit:                     ; preds = %bb.p
  tail call void @bn_correct_top(ptr noundef %.0152.i) #5
  %i.ga = tail call ptr @BN_copy(ptr noundef %0, ptr noundef %.0152.i) #5
  %.not166.i.not = icmp eq ptr %i.ga, null
  tail call void @BN_CTX_end(ptr noundef %3) #5
  br i1 %.not166.i.not, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %BN_GF2m_mod_inv_vartime.exit
  %i.gb = tail call i32 @BN_GF2m_mod_mul(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef %2, ptr noundef %3)
  %.not27 = icmp ne i32 %i.gb, 0
  %spec.select = zext i1 %.not27 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %BN_GF2m_mod_inv_vartime.exit.thread, %bb.w, %BN_GF2m_mod_inv_vartime.exit, %bb.e, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %BN_GF2m_mod_inv_vartime.exit.thread ], [ %spec.select, %bb.w ], [ 0, %BN_GF2m_mod_inv_vartime.exit ], [ 0, %bb.e ], [ 0, %bb.c ]
  tail call void @BN_CTX_end(ptr noundef %3) #5
  ret i32 %.0
}

declare i32 @BN_priv_rand_ex(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BN_is_zero(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @BN_GF2m_mod_inv_arr(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  tail call void @BN_CTX_start(ptr noundef %3) #5
  %i.a = tail call ptr @BN_CTX_get(ptr noundef %3) #5 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %BN_GF2m_arr2poly.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @BN_zero_ex(ptr noundef nonnull %i.a) #5
  %i.c = load i32, ptr %2, align 4, !tbaa !22     ; 2 uses
  %.not9.i = icmp eq i32 %i.c, -1
  br i1 %.not9.i, label %.loopexit, label %.lr.ph.i

bb.c:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.i
  %i.e = load i32, ptr %i.d, align 4, !tbaa !22   ; 2 uses
  %.not.i = icmp eq i32 %i.e, -1
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !2

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.c ], [ 0, %bb.b ]
  %i.f = phi i32 [ %i.e, %bb.c ], [ %i.c, %bb.b ]
  %i.g = tail call i32 @BN_set_bit(ptr noundef nonnull %i.a, i32 noundef %i.f) #5
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %BN_GF2m_arr2poly.exit, label %bb.c

.loopexit:                                        ; preds = %bb.c, %bb.b
  %i.i = tail call i32 @BN_GF2m_mod_inv(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef %3)
  br label %BN_GF2m_arr2poly.exit

BN_GF2m_arr2poly.exit:                            ; preds = %.lr.ph.i, %bb.a, %.loopexit
  %.0 = phi i32 [ 0, %bb.a ], [ %i.i, %.loopexit ], [ 0, %.lr.ph.i ]
  tail call void @BN_CTX_end(ptr noundef %3) #5
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
end_hunk_0
