inline.NumInlined: 3484
inline.NumDeleted: 1208
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 55
loop-unroll.NumUnrolled: 66
begin_hunk_0_@_ZN8DecGraph10TruthTable12swapVariableEii:bb.a
  %invariant.op243 = and <2 x i64> %broadcast.splat224, %broadcast.splat228
  br label %vector.body229

vector.body229:                                   ; preds = %vector.body229, %vector.ph217
  %index230 = phi i64 [ 0, %vector.ph217 ], [ %index.next233, %vector.body229 ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %index230 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %wide.load231 = load <2 x i64>, ptr %i.ag, align 8, !tbaa !27 ; 3 uses
  %wide.load232 = load <2 x i64>, ptr %i.ah, align 8, !tbaa !27 ; 3 uses
  %i.ai = and <2 x i64> %broadcast.splat220, %wide.load231
  %i.aj = and <2 x i64> %broadcast.splat220, %wide.load232
  %i.ak = shl <2 x i64> %i.ai, %broadcast.splat222
  %i.al = shl <2 x i64> %i.aj, %broadcast.splat222
  %.reass = and <2 x i64> %wide.load231, %invariant.op
  %.reass240 = and <2 x i64> %wide.load232, %invariant.op239
  %i.am = lshr <2 x i64> %.reass, %broadcast.splat222
  %i.an = lshr <2 x i64> %.reass240, %broadcast.splat222
  %.reass242 = and <2 x i64> %wide.load231, %invariant.op241
  %.reass244 = and <2 x i64> %wide.load232, %invariant.op243
  %i.ao = or <2 x i64> %.reass242, %i.ak
  %i.ap = or <2 x i64> %.reass244, %i.al
  %i.aq = or <2 x i64> %i.ao, %i.am
  %i.ar = or <2 x i64> %i.ap, %i.an
  store <2 x i64> %i.aq, ptr %i.ag, align 8, !tbaa !27
  store <2 x i64> %i.ar, ptr %i.ah, align 8, !tbaa !27
  %index.next233 = add nuw i64 %index230, 4       ; 2 uses
  %i.as = icmp eq i64 %index.next233, %n.vec218
  br i1 %i.as, label %middle.block234, label %vector.body229, !llvm.loop !59

middle.block234:                                  ; preds = %vector.body229
  %cmp.n235 = icmp eq i64 %i.af, %n.vec218
  br i1 %cmp.n235, label %.loopexit, label %scalar.ph215.preheader

scalar.ph215.preheader:                           ; preds = %.lr.ph, %middle.block234
  %indvars.iv170.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec218, %middle.block234 ]
  br label %scalar.ph215

scalar.ph215:                                     ; preds = %scalar.ph215.preheader, %scalar.ph215
  %indvars.iv170 = phi i64 [ %indvars.iv.next171, %scalar.ph215 ], [ %indvars.iv170.ph, %scalar.ph215.preheader ] ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv170 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !27 ; 2 uses
  %i.av = and i64 %i.aa, %i.au
  %i.aw = shl i64 %i.av, %i.ab
  %i.ax = and i64 %i.au, %i.ac                    ; 2 uses
  %i.ay = and i64 %i.ax, %i.ad
  %i.az = lshr i64 %i.ay, %i.ab
  %i.ba = and i64 %i.ax, %i.ae
  %i.bb = or i64 %i.ba, %i.aw
  %i.bc = or i64 %i.bb, %i.az
  store i64 %i.bc, ptr %i.at, align 8, !tbaa !27
  %indvars.iv.next171 = add nuw nsw i64 %indvars.iv170, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next171, %i.af
  br i1 %.not, label %.loopexit, label %scalar.ph215, !llvm.loop !60

bb.c:                                             ; preds = %_ZNK8DecGraph10TruthTable4dataEv.exit
  %i.bd = icmp slt i32 %spec.select, 6
  br i1 %i.bd, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.be = add nsw i32 %spec.select131, -5         ; 2 uses
  %i.bf = shl nuw i32 1, %i.be                    ; 2 uses
  %i.bg = sdiv i32 %i.bf, 2                       ; 2 uses
  %i.bh = icmp sgt i32 %i.o, 0
  br i1 %i.bh, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %bb.d
  %i.bi = shl nuw nsw i32 1, %spec.select
  %i.bj = icmp sgt i32 %i.bf, 1
  %i.bk = zext nneg i32 %i.bi to i64              ; 4 uses
  br i1 %i.bj, label %.preheader.lr.ph.split, label %.loopexit

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.bl = shl nuw nsw i32 %i.bg, 1
  %i.bm = sext i32 %spec.select to i64
  %i.bn = getelementptr inbounds [48 x i8], ptr @_ZN8DecGraphL9swap_maskE, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !27 ; 4 uses
  %i.bq = lshr i64 %i.bp, %i.bk                   ; 3 uses
  %i.br = xor i64 %i.bq, -1                       ; 2 uses
  %i.bs = xor i64 %i.bp, -1                       ; 2 uses
  %i.bt = zext nneg i32 %i.bl to i64
  %i.bu = zext nneg i32 %i.bg to i64              ; 4 uses
  %invariant.gep182 = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.bu
  %min.iters.check194 = icmp ult i32 %i.be, 2
  %n.vec196 = and i64 %i.bu, 1073741822           ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.bq, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert197 = insertelement <2 x i64> poison, i64 %i.bk, i64 0
  %broadcast.splat198 = shufflevector <2 x i64> %broadcast.splatinsert197, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert199 = insertelement <2 x i64> poison, i64 %i.br, i64 0
  %broadcast.splat200 = shufflevector <2 x i64> %broadcast.splatinsert199, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert201 = insertelement <2 x i64> poison, i64 %i.bp, i64 0
  %broadcast.splat202 = shufflevector <2 x i64> %broadcast.splatinsert201, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert203 = insertelement <2 x i64> poison, i64 %i.bs, i64 0
  %broadcast.splat204 = shufflevector <2 x i64> %broadcast.splatinsert203, <2 x i64> poison, <2 x i32> zeroinitializer
  %cmp.n213 = icmp eq i64 %n.vec196, %i.bu
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge142
  %indvars.iv167 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvars.iv.next168, %._crit_edge142 ] ; 3 uses
  %invariant.gep180 = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv167 ; 2 uses
  %gep183 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep182, i64 %indvars.iv167 ; 2 uses
  br i1 %min.iters.check194, label %scalar.ph193.preheader, label %vector.body205

vector.body205:                                   ; preds = %.preheader, %vector.body205
  %index206 = phi i64 [ %index.next211, %vector.body205 ], [ 0, %.preheader ] ; 3 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep180, i64 %index206 ; 4 uses
  %wide.load207 = load <2 x i64>, ptr %i.bv, align 8, !tbaa !27 ; 2 uses
  %i.bw = and <2 x i64> %broadcast.splat, %wide.load207
  %i.bx = shl <2 x i64> %i.bw, %broadcast.splat198
  %i.by = and <2 x i64> %wide.load207, %broadcast.splat200
  store <2 x i64> %i.by, ptr %i.bv, align 8, !tbaa !27
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %gep183, i64 %index206 ; 4 uses
  %wide.load208 = load <2 x i64>, ptr %i.bz, align 8, !tbaa !27 ; 2 uses
  %i.ca = and <2 x i64> %wide.load208, %broadcast.splat202
  %i.cb = lshr <2 x i64> %i.ca, %broadcast.splat198
  %i.cc = and <2 x i64> %wide.load208, %broadcast.splat204
  store <2 x i64> %i.cc, ptr %i.bz, align 8, !tbaa !27
  %wide.load209 = load <2 x i64>, ptr %i.bv, align 8, !tbaa !27
  %i.cd = or <2 x i64> %wide.load209, %i.cb
  store <2 x i64> %i.cd, ptr %i.bv, align 8, !tbaa !27
  %wide.load210 = load <2 x i64>, ptr %i.bz, align 8, !tbaa !27
  %i.ce = or <2 x i64> %wide.load210, %i.bx
  store <2 x i64> %i.ce, ptr %i.bz, align 8, !tbaa !27
  %index.next211 = add nuw i64 %index206, 2       ; 2 uses
  %i.cf = icmp eq i64 %index.next211, %n.vec196
  br i1 %i.cf, label %middle.block212, label %vector.body205, !llvm.loop !61

middle.block212:                                  ; preds = %vector.body205
  br i1 %cmp.n213, label %._crit_edge142, label %scalar.ph193.preheader

scalar.ph193.preheader:                           ; preds = %.preheader, %middle.block212
  %indvars.iv162.ph = phi i64 [ 0, %.preheader ], [ %n.vec196, %middle.block212 ]
  br label %scalar.ph193

._crit_edge142:                                   ; preds = %scalar.ph193, %middle.block212
  %indvars.iv.next168 = add nuw nsw i64 %indvars.iv167, %i.bt ; 2 uses
  %i.cg = trunc nuw i64 %indvars.iv.next168 to i32
  %i.ch = icmp slt i32 %i.cg, %i.o
  br i1 %i.ch, label %.preheader, label %.loopexit, !llvm.loop !62

scalar.ph193:                                     ; preds = %scalar.ph193.preheader, %scalar.ph193
  %indvars.iv162 = phi i64 [ %indvars.iv.next163, %scalar.ph193 ], [ %indvars.iv162.ph, %scalar.ph193.preheader ] ; 3 uses
  %gep181 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep180, i64 %indvars.iv162 ; 4 uses
  %i.ci = load i64, ptr %gep181, align 8, !tbaa !27 ; 2 uses
  %i.cj = and i64 %i.bq, %i.ci
  %i.ck = shl i64 %i.cj, %i.bk
  %i.cl = and i64 %i.ci, %i.br
  store i64 %i.cl, ptr %gep181, align 8, !tbaa !27
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %gep183, i64 %indvars.iv162 ; 4 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !27 ; 2 uses
  %i.co = and i64 %i.cn, %i.bp
  %i.cp = lshr i64 %i.co, %i.bk
  %i.cq = and i64 %i.cn, %i.bs
  store i64 %i.cq, ptr %i.cm, align 8, !tbaa !27
  %i.cr = load i64, ptr %gep181, align 8, !tbaa !27
  %i.cs = or i64 %i.cr, %i.cp
  store i64 %i.cs, ptr %gep181, align 8, !tbaa !27
  %i.ct = load i64, ptr %i.cm, align 8, !tbaa !27
  %i.cu = or i64 %i.ct, %i.ck
  store i64 %i.cu, ptr %i.cm, align 8, !tbaa !27
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1 ; 2 uses
  %exitcond166.not = icmp eq i64 %indvars.iv.next163, %i.bu
  br i1 %exitcond166.not, label %._crit_edge142, label %scalar.ph193, !llvm.loop !63

bb.e:                                             ; preds = %bb.c
  %i.cv = add nsw i32 %spec.select, -5            ; 2 uses
  %i.cw = shl nuw i32 1, %i.cv                    ; 2 uses
  %i.cx = sdiv i32 %i.cw, 2                       ; 3 uses
  %i.cy = add nsw i32 %spec.select131, -5
  %i.cz = shl nuw i32 1, %i.cy                    ; 2 uses
  %i.da = sdiv i32 %i.cz, 2                       ; 3 uses
  %i.db = icmp sgt i32 %i.o, 0
  br i1 %i.db, label %.preheader134.lr.ph, label %.loopexit

.preheader134.lr.ph:                              ; preds = %bb.e
  %i.dc = icmp slt i32 %i.cz, 2
  %i.dd = icmp slt i32 %i.cw, 2
  %brmerge = select i1 %i.dc, i1 true, i1 %i.dd
  br i1 %brmerge, label %.loopexit, label %.preheader134.preheader

.preheader134.preheader:                          ; preds = %.preheader134.lr.ph
  %i.de = shl nuw nsw i32 %i.da, 1
  %i.df = shl nuw nsw i32 %i.cx, 1                ; 2 uses
  %i.dg = zext nneg i32 %i.df to i64              ; 5 uses
  %i.dh = zext nneg i32 %i.da to i64              ; 4 uses
  %i.di = zext nneg i32 %i.de to i64              ; 2 uses
  %i.dj = zext nneg i32 %i.cx to i64              ; 3 uses
  %i.dk = and i64 %i.n, 2147483647
  %wide.trip.count = zext nneg i32 %i.cx to i64   ; 5 uses
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.dj
  %invariant.gep178 = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.dh
  %i.dl = shl nuw nsw i64 %wide.trip.count, 3     ; 2 uses
  %i.dm = shl nuw nsw i64 %i.di, 3
  %umax = tail call i64 @llvm.umax.i64(i64 %i.dh, i64 %i.dg)
  %i.dn = icmp ult i32 %i.df, %i.da
  %umin = zext i1 %i.dn to i64                    ; 2 uses
  %i.do = or disjoint i64 %umin, %i.dg
  %i.dp = sub nsw i64 %umax, %i.do
  %umax186 = tail call i64 @llvm.umax.i64(i64 %i.dg, i64 1)
  %i.dq = shl nuw nsw i64 %wide.trip.count, 4
  %i.dr = shl nuw nsw i64 %i.dh, 3                ; 2 uses
  %i.ds = getelementptr i8, ptr %i.j, i64 %i.dl
  %i.dt = getelementptr i8, ptr %i.j, i64 %i.dr
  %min.iters.check = icmp ult i32 %i.cv, 5
  %i.du = getelementptr i8, ptr %i.j, i64 %i.dq
  %i.dv = getelementptr i8, ptr %i.j, i64 %i.dr
  %i.dw = getelementptr i8, ptr %i.dv, i64 %i.dl
  %n.vec = and i64 %wide.trip.count, 1073741820   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %i.dj, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.dx = add nsw i64 %i.dj, -1
  br label %.preheader134

.preheader134:                                    ; preds = %.preheader134.preheader, %._crit_edge138
  %indvar = phi i64 [ 0, %.preheader134.preheader ], [ %indvar.next, %._crit_edge138 ] ; 2 uses
  %indvars.iv159 = phi i64 [ 0, %.preheader134.preheader ], [ %indvars.iv.next160, %._crit_edge138 ] ; 3 uses
  %i.dy = mul i64 %i.dm, %indvar                  ; 4 uses
  %scevgep = getelementptr i8, ptr %i.ds, i64 %i.dy
  %scevgep188 = getelementptr i8, ptr %i.dt, i64 %i.dy
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv159
  %gep179 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep178, i64 %indvars.iv159
  %scevgep187 = getelementptr i8, ptr %i.du, i64 %i.dy
  %scevgep189 = getelementptr i8, ptr %i.dw, i64 %i.dy
  br label %.preheader133

.preheader133:                                    ; preds = %.preheader134, %._crit_edge
  %indvars.iv156 = phi i64 [ 0, %.preheader134 ], [ %indvars.iv.next157, %._crit_edge ] ; 3 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %gep, i64 %indvars.iv156 ; 4 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %gep179, i64 %indvars.iv156 ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader133
  %3 = udiv i64 %i.dp, %umax186
  %4 = add i64 %3, %umin
  %5 = mul i64 %4, %i.dg
  %6 = shl i64 %5, 3                              ; 2 uses
  %gep240 = getelementptr i8, ptr %scevgep187, i64 %6
  %gep244 = getelementptr i8, ptr %scevgep189, i64 %6
  %bound0 = icmp ult ptr %scevgep, %gep244
  %bound1 = icmp ult ptr %scevgep188, %gep240
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %index ; 3 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %index ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.eb, align 8, !tbaa !27, !alias.scope !64, !noalias !67
  %wide.load190 = load <2 x i64>, ptr %i.ed, align 8, !tbaa !27, !alias.scope !64, !noalias !67
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 16 ; 2 uses
  %wide.load191 = load <2 x i64>, ptr %i.ec, align 8, !tbaa !27, !alias.scope !67
  %wide.load192 = load <2 x i64>, ptr %i.ee, align 8, !tbaa !27, !alias.scope !67
  store <2 x i64> %wide.load191, ptr %i.eb, align 8, !tbaa !27, !alias.scope !64, !noalias !67
  store <2 x i64> %wide.load192, ptr %i.ed, align 8, !tbaa !27, !alias.scope !64, !noalias !67
  store <2 x i64> %wide.load, ptr %i.ec, align 8, !tbaa !27, !alias.scope !67
  store <2 x i64> %wide.load190, ptr %i.ee, align 8, !tbaa !27, !alias.scope !67
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ef = icmp eq i64 %index.next, %n.vec
  br i1 %i.ef, label %middle.block, label %vector.body, !llvm.loop !69

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader133, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader133 ], [ %n.vec, %middle.block ] ; 5 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %indvars.iv.ph ; 2 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %indvars.iv.ph ; 2 uses
  %i.ei = load i64, ptr %i.eg, align 8, !tbaa !27
  %i.ej = load i64, ptr %i.eh, align 8, !tbaa !27
  store i64 %i.ej, ptr %i.eg, align 8, !tbaa !27
  store i64 %i.ei, ptr %i.eh, align 8, !tbaa !27
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ek = icmp eq i64 %indvars.iv.ph, %i.dx
  br i1 %i.ek, label %._crit_edge, label %scalar.ph

._crit_edge138:                                   ; preds = %._crit_edge
  %indvars.iv.next160 = add nuw nsw i64 %indvars.iv159, %i.di ; 2 uses
  %i.el = icmp samesign ult i64 %indvars.iv.next160, %i.dk
  %indvar.next = add i64 %indvar, 1
  br i1 %i.el, label %.preheader134, label %.loopexit, !llvm.loop !70

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next157 = add nuw nsw i64 %indvars.iv156, %i.dg ; 2 uses
  %i.em = icmp samesign ult i64 %indvars.iv.next157, %i.dh
  br i1 %i.em, label %.preheader133, label %._crit_edge138, !llvm.loop !71

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %indvars.iv ; 2 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %indvars.iv ; 2 uses
  %i.ep = load i64, ptr %i.en, align 8, !tbaa !27
  %i.eq = load i64, ptr %i.eo, align 8, !tbaa !27
  store i64 %i.eq, ptr %i.en, align 8, !tbaa !27
  store i64 %i.ep, ptr %i.eo, align 8, !tbaa !27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %indvars.iv.next ; 2 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %indvars.iv.next ; 2 uses
  %i.et = load i64, ptr %i.er, align 8, !tbaa !27
  %i.eu = load i64, ptr %i.es, align 8, !tbaa !27
  store i64 %i.eu, ptr %i.er, align 8, !tbaa !27
  store i64 %i.et, ptr %i.es, align 8, !tbaa !27
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !72

.loopexit:                                        ; preds = %._crit_edge138, %._crit_edge142, %scalar.ph215, %middle.block234, %.preheader134.lr.ph, %bb.e, %bb.d, %.preheader.lr.ph, %bb.b
  %i.ev = sext i32 %spec.select131 to i64         ; 2 uses
  %i.ew = sext i32 %spec.select to i64            ; 2 uses
  %i.ex = load ptr, ptr %i.q, align 8, !tbaa !24  ; 2 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %i.ew ; 3 uses
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !27
  %i.fa = load ptr, ptr %i.r, align 8, !tbaa !24  ; 2 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.ez
  store i64 %i.ev, ptr %i.fb, align 8, !tbaa !27
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %i.ev ; 3 uses
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !27
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.fd
  store i64 %i.ew, ptr %i.fe, align 8, !tbaa !27
  %i.ff = load i64, ptr %i.ey, align 8, !tbaa !27
  %i.fg = load i64, ptr %i.fc, align 8, !tbaa !27
  store i64 %i.fg, ptr %i.ey, align 8, !tbaa !27
  store i64 %i.ff, ptr %i.fc, align 8, !tbaa !27
  br label %bb.f

bb.f:                                             ; preds = %.loopexit, %_ZNK8DecGraph10TruthTable6nWordsEv.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN8DecGraph10TruthTable12swapAdjacentEPmS1_i(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 11 uses
  %i.b = ptrtoaddr ptr %2 to i64                  ; 11 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !8      ; 3 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %.loopexit, label %_ZNK8DecGraph10TruthTable6nWordsEv.exit

_ZNK8DecGraph10TruthTable6nWordsEv.exit:          ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !32
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !24
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  %i.k = lshr exact i64 %i.j, 3                   ; 3 uses
  %i.l = trunc i64 %i.k to i32                    ; 4 uses
  %i.m = icmp slt i32 %3, 5
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNK8DecGraph10TruthTable6nWordsEv.exit
  %.not118132 = icmp slt i32 %i.l, 1
  br i1 %.not118132, label %.loopexit, label %.lr.ph135

.lr.ph135:                                        ; preds = %bb.b
  %i.n = shl nuw nsw i32 1, %3
  %i.o = sext i32 %3 to i64
  %i.p = getelementptr inbounds [24 x i8], ptr @_ZN8DecGraphL16permutation_maskE, i64 %i.o ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !27   ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !27   ; 4 uses
  %i.t = zext nneg i32 %i.n to i64                ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !27   ; 4 uses
  %i.w = and i64 %i.k, 2147483647                 ; 4 uses
  %min.iters.check201 = icmp samesign ult i64 %i.w, 4
  %i.x = sub i64 %i.b, %i.a
  %diff.check199 = icmp ugt i64 %i.x, -32
  %or.cond = or i1 %min.iters.check201, %diff.check199
  br i1 %or.cond, label %scalar.ph200.preheader, label %vector.ph202

vector.ph202:                                     ; preds = %.lr.ph135
  %n.vec203 = and i64 %i.k, 2147483644            ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.q, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert204 = insertelement <2 x i64> poison, i64 %i.s, i64 0
  %broadcast.splat205 = shufflevector <2 x i64> %broadcast.splatinsert204, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert206 = insertelement <2 x i64> poison, i64 %i.t, i64 0
  %broadcast.splat207 = shufflevector <2 x i64> %broadcast.splatinsert206, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert208 = insertelement <2 x i64> poison, i64 %i.v, i64 0
  %broadcast.splat209 = shufflevector <2 x i64> %broadcast.splatinsert208, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body210

vector.body210:                                   ; preds = %vector.body210, %vector.ph202
  %index211 = phi i64 [ 0, %vector.ph202 ], [ %index.next214, %vector.body210 ] ; 3 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index211 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %wide.load212 = load <2 x i64>, ptr %i.y, align 8, !tbaa !27 ; 3 uses
  %wide.load213 = load <2 x i64>, ptr %i.z, align 8, !tbaa !27 ; 3 uses
  %i.aa = and <2 x i64> %broadcast.splat, %wide.load212
  %i.ab = and <2 x i64> %broadcast.splat, %wide.load213
  %i.ac = and <2 x i64> %broadcast.splat205, %wide.load212
  %i.ad = and <2 x i64> %broadcast.splat205, %wide.load213
  %i.ae = shl <2 x i64> %i.ac, %broadcast.splat207
  %i.af = shl <2 x i64> %i.ad, %broadcast.splat207
  %i.ag = or <2 x i64> %i.ae, %i.aa
  %i.ah = or <2 x i64> %i.af, %i.ab
  %i.ai = and <2 x i64> %broadcast.splat209, %wide.load212
  %i.aj = and <2 x i64> %broadcast.splat209, %wide.load213
  %i.ak = lshr <2 x i64> %i.ai, %broadcast.splat207
  %i.al = lshr <2 x i64> %i.aj, %broadcast.splat207
  %i.am = or <2 x i64> %i.ag, %i.ak
  %i.an = or <2 x i64> %i.ah, %i.al
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index211 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store <2 x i64> %i.am, ptr %i.ao, align 8, !tbaa !27
  store <2 x i64> %i.an, ptr %i.ap, align 8, !tbaa !27
  %index.next214 = add nuw i64 %index211, 4       ; 2 uses
  %i.aq = icmp eq i64 %index.next214, %n.vec203
  br i1 %i.aq, label %middle.block215, label %vector.body210, !llvm.loop !73

middle.block215:                                  ; preds = %vector.body210
  %cmp.n216 = icmp eq i64 %i.w, %n.vec203
  br i1 %cmp.n216, label %.loopexit, label %scalar.ph200.preheader

scalar.ph200.preheader:                           ; preds = %.lr.ph135, %middle.block215
  %indvars.iv142.ph = phi i64 [ 0, %.lr.ph135 ], [ %n.vec203, %middle.block215 ] ; 5 uses
  %.neg = or disjoint i64 %indvars.iv142.ph, 1
  %i.ar = and i64 %i.j, 8
  %lcmp.mod.not = icmp eq i64 %i.ar, 0
  br i1 %lcmp.mod.not, label %scalar.ph200.prol.loopexit, label %scalar.ph200.prol

scalar.ph200.prol:                                ; preds = %scalar.ph200.preheader
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv142.ph
  %i.at = load i64, ptr %i.as, align 8, !tbaa !27 ; 3 uses
  %i.au = and i64 %i.q, %i.at
  %i.av = and i64 %i.s, %i.at
  %i.aw = shl i64 %i.av, %i.t
  %i.ax = or i64 %i.aw, %i.au
  %i.ay = and i64 %i.v, %i.at
  %i.az = lshr i64 %i.ay, %i.t
  %i.ba = or i64 %i.ax, %i.az
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv142.ph
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !27
  %indvars.iv.next143.prol = or disjoint i64 %indvars.iv142.ph, 1
  br label %scalar.ph200.prol.loopexit

scalar.ph200.prol.loopexit:                       ; preds = %scalar.ph200.prol, %scalar.ph200.preheader
  %indvars.iv142.unr = phi i64 [ %indvars.iv142.ph, %scalar.ph200.preheader ], [ %indvars.iv.next143.prol, %scalar.ph200.prol ]
  %i.bc = icmp eq i64 %i.w, %.neg
  br i1 %i.bc, label %.loopexit, label %scalar.ph200

scalar.ph200:                                     ; preds = %scalar.ph200.prol.loopexit, %scalar.ph200
  %indvars.iv142 = phi i64 [ %indvars.iv.next143.1, %scalar.ph200 ], [ %indvars.iv142.unr, %scalar.ph200.prol.loopexit ] ; 4 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv142
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !27 ; 3 uses
  %i.bf = and i64 %i.q, %i.be
  %i.bg = and i64 %i.s, %i.be
  %i.bh = shl i64 %i.bg, %i.t
  %i.bi = or i64 %i.bh, %i.bf
  %i.bj = and i64 %i.v, %i.be
  %i.bk = lshr i64 %i.bj, %i.t
  %i.bl = or i64 %i.bi, %i.bk
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv142
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !27
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142, 1 ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next143
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !27 ; 3 uses
end_hunk_0
