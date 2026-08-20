inline.NumInlined: 275
inline.NumDeleted: 152
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN19maximize_ac_sharing10reduce_appEP9func_decljPKP4exprR7obj_refIS2_11ast_managerERS6_I3appS7_E:bb.a

_ZN6bufferIP4exprLb0ELj128EE6expandEv.exit.i:     ; preds = %.noexc95, %._crit_edge.i.i
  %.pre2.i = phi i32 [ %i.bt, %._crit_edge.i.i ], [ %.pre2.pre.i, %.noexc95 ]
  store ptr %i.bs, ptr %8, align 8, !tbaa !21
  store i32 %i.bp, ptr %i.be, align 4, !tbaa !26
  br label %bb.o

bb.o:                                             ; preds = %_ZN6bufferIP4exprLb0ELj128EE6expandEv.exit.i, %._crit_edge.i
  %i.ct = phi i32 [ %i.bm, %._crit_edge.i ], [ %i.bp, %_ZN6bufferIP4exprLb0ELj128EE6expandEv.exit.i ]
  %i.cu = phi i32 [ %i.bn, %._crit_edge.i ], [ %.pre2.i, %_ZN6bufferIP4exprLb0ELj128EE6expandEv.exit.i ] ; 2 uses
  %i.cv = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.bs, %_ZN6bufferIP4exprLb0ELj128EE6expandEv.exit.i ]
  %i.cw = zext i32 %i.cu to i64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.cw
  %i.cy = load ptr, ptr %i.bo, align 8, !tbaa !27
  store ptr %i.cy, ptr %i.cx, align 8, !tbaa !27
  %i.cz = add i32 %i.cu, 1                        ; 2 uses
  store i32 %i.cz, ptr %i.bd, align 8, !tbaa !25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !37

bb.p:                                             ; preds = %bb.n, %bb.m
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph.i.i96:                                     ; preds = %bb.l
  %i.db = zext i32 %2 to i64
  %.idx.i.i = shl nuw nsw i64 %i.db, 3
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 %.idx.i.i
  %.pre.i.i97 = load i32, ptr %i.bd, align 8, !tbaa !25
  %.pre9.i.i = load i32, ptr %i.be, align 4, !tbaa !26
  br label %bb.q

bb.q:                                             ; preds = %_ZN6bufferIP4exprLb0ELj128EE9push_backERKS1_.exit.i.i, %.lr.ph.i.i96
  %i.dd = phi i32 [ %.pre9.i.i, %.lr.ph.i.i96 ], [ %i.ek, %_ZN6bufferIP4exprLb0ELj128EE9push_backERKS1_.exit.i.i ] ; 3 uses
  %i.de = phi i32 [ %.pre.i.i97, %.lr.ph.i.i96 ], [ %i.ep, %_ZN6bufferIP4exprLb0ELj128EE9push_backERKS1_.exit.i.i ] ; 2 uses
  %.sroa.03.08.i.i = phi ptr [ %3, %.lr.ph.i.i96 ], [ %i.eq, %_ZN6bufferIP4exprLb0ELj128EE9push_backERKS1_.exit.i.i ] ; 2 uses
  %i.df = load ptr, ptr %.sroa.03.08.i.i, align 8, !tbaa !27
  %.not.i.i.i98 = icmp ult i32 %i.de, %i.dd
  br i1 %.not.i.i.i98, label %._crit_edge.i.i.i99, label %bb.r

._crit_edge.i.i.i99:                              ; preds = %bb.q
  %.pre.i.i.i100 = load ptr, ptr %8, align 8, !tbaa !21
  br label %_ZN6bufferIP4exprLb0ELj128EE9push_backERKS1_.exit.i.i

bb.r:                                             ; preds = %bb.q
  %i.dg = shl i32 %i.dd, 1                        ; 3 uses
  %i.dh = zext i32 %i.dg to i64
  %i.di = shl nuw nsw i64 %i.dh, 3
  %i.dj = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.di)
          to label %.noexc101 unwind label %.loopexit170 ; 9 uses

.noexc101:                                        ; preds = %bb.r
  %i.dk = load i32, ptr %i.bd, align 8, !tbaa !25 ; 4 uses
  %.not.i.i.i.i = icmp eq i32 %i.dk, 0
  %.pre.i.i.i.i = load ptr, ptr %8, align 8, !tbaa !21 ; 10 uses
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc101
  %.pre.i.i.i.i356 = ptrtoaddr ptr %.pre.i.i.i.i to i64
  %i.dl = ptrtoaddr ptr %i.dj to i64
  %wide.trip.count.i.i.i.i = zext i32 %i.dk to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.dk, 4
  %i.dm = sub i64 %.pre.i.i.i.i356, %i.dl
  %diff.check = icmp ugt i64 %i.dm, -32
  %or.cond374 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond374, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i.i, 4294967292 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %index ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i, i64 %index ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %wide.load = load <2 x ptr>, ptr %i.do, align 8, !tbaa !27
  %wide.load357 = load <2 x ptr>, ptr %i.dp, align 8, !tbaa !27
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  store <2 x ptr> %wide.load, ptr %i.dn, align 8, !tbaa !27
  store <2 x ptr> %wide.load357, ptr %i.dq, align 8, !tbaa !27
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dr = icmp eq i64 %index.next, %n.vec
  br i1 %i.dr, label %middle.block, label %vector.body, !llvm.loop !38

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i.i
  br i1 %cmp.n, label %._crit_edge.i.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i.i, %middle.block
  %indvars.iv.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i.i, 3 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv.i.i.i.i.prol
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i, i64 %indvars.iv.i.i.i.i.prol
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !27
  store ptr %i.du, ptr %i.ds, align 8, !tbaa !27
  %indvars.iv.next.i.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !39

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.i.prol, %scalar.ph.prol ]
  %i.dv = sub nsw i64 %indvars.iv.i.i.i.i.ph, %wide.trip.count.i.i.i.i
  %i.dw = icmp ugt i64 %i.dv, -4
  br i1 %i.dw, label %._crit_edge.i.i.i.i, label %scalar.ph

._crit_edge.i.i.i.i:                              ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.noexc101
  %.not.i.i.i.i.i = icmp eq ptr %.pre.i.i.i.i, %i.bc
  %i.dx = icmp eq ptr %.pre.i.i.i.i, null
  %or.cond.i.i.i.i.i = or i1 %.not.i.i.i.i.i, %i.dx
  br i1 %or.cond.i.i.i.i.i, label %_ZN6bufferIP4exprLb0ELj128EE6expandEv.exit.i.i.i, label %bb.s

bb.s:                                             ; preds = %._crit_edge.i.i.i.i
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.pre.i.i.i.i)
          to label %.noexc102 unwind label %.loopexit170

.noexc102:                                        ; preds = %bb.s
  %.pre2.pre.i.i.i = load i32, ptr %i.bd, align 8, !tbaa !25
  br label %_ZN6bufferIP4exprLb0ELj128EE6expandEv.exit.i.i.i

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv.i.i.i.i
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i, i64 %indvars.iv.i.i.i.i
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !27
  store ptr %i.ea, ptr %i.dy, align 8, !tbaa !27
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv.next.i.i.i.i
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i, i64 %indvars.iv.next.i.i.i.i
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !27
  store ptr %i.ed, ptr %i.eb, align 8, !tbaa !27
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i, 2 ; 2 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv.next.i.i.i.i.1
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i, i64 %indvars.iv.next.i.i.i.i.1
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !27
  store ptr %i.eg, ptr %i.ee, align 8, !tbaa !27
  %indvars.iv.next.i.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i.i, 3 ; 2 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv.next.i.i.i.i.2
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i, i64 %indvars.iv.next.i.i.i.i.2
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !27
  store ptr %i.ej, ptr %i.eh, align 8, !tbaa !27
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.3, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge.i.i.i.i, label %scalar.ph, !llvm.loop !40

_ZN6bufferIP4exprLb0ELj128EE6expandEv.exit.i.i.i: ; preds = %.noexc102, %._crit_edge.i.i.i.i
  %.pre2.i.i.i = phi i32 [ %i.dk, %._crit_edge.i.i.i.i ], [ %.pre2.pre.i.i.i, %.noexc102 ]
  store ptr %i.dj, ptr %8, align 8, !tbaa !21
  store i32 %i.dg, ptr %i.be, align 4, !tbaa !26
  br label %_ZN6bufferIP4exprLb0ELj128EE9push_backERKS1_.exit.i.i

_ZN6bufferIP4exprLb0ELj128EE9push_backERKS1_.exit.i.i: ; preds = %_ZN6bufferIP4exprLb0ELj128EE6expandEv.exit.i.i.i, %._crit_edge.i.i.i99
  %i.ek = phi i32 [ %i.dd, %._crit_edge.i.i.i99 ], [ %i.dg, %_ZN6bufferIP4exprLb0ELj128EE6expandEv.exit.i.i.i ]
  %i.el = phi i32 [ %i.de, %._crit_edge.i.i.i99 ], [ %.pre2.i.i.i, %_ZN6bufferIP4exprLb0ELj128EE6expandEv.exit.i.i.i ] ; 2 uses
  %i.em = phi ptr [ %.pre.i.i.i100, %._crit_edge.i.i.i99 ], [ %i.dj, %_ZN6bufferIP4exprLb0ELj128EE6expandEv.exit.i.i.i ]
  %i.en = zext i32 %i.el to i64
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.en
  store ptr %i.df, ptr %i.eo, align 8, !tbaa !27
  %i.ep = add i32 %i.el, 1                        ; 2 uses
  store i32 %i.ep, ptr %i.bd, align 8, !tbaa !25
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i.i, i64 8 ; 2 uses
  %i.er = icmp eq ptr %i.eq, %i.dc
  br i1 %i.er, label %_ZN10ptr_bufferI4exprLj128EE6appendEjPKPS0_.exit, label %bb.q

_ZN10ptr_bufferI4exprLj128EE6appendEjPKPS0_.exit: ; preds = %_ZN6bufferIP4exprLb0ELj128EE9push_backERKS1_.exit.i.i, %._crit_edge
  %.080 = phi i32 [ %i.bl, %._crit_edge ], [ %2, %_ZN6bufferIP4exprLb0ELj128EE9push_backERKS1_.exit.i.i ] ; 7 uses
  %.074 = phi ptr [ %i.bk, %._crit_edge ], [ null, %_ZN6bufferIP4exprLb0ELj128EE9push_backERKS1_.exit.i.i ] ; 2 uses
  %i.es = icmp ult i32 %.080, 128
  br i1 %i.es, label %.preheader167.lr.ph, label %.thread138

.preheader167.lr.ph:                              ; preds = %_ZN10ptr_bufferI4exprLj128EE6appendEjPKPS0_.exit
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ex = icmp ugt i32 %.080, 1
  br i1 %i.ex, label %.preheader.lr.ph.preheader, label %.thread138

.preheader.lr.ph.preheader:                       ; preds = %.preheader167.lr.ph
  %i.ey = add nsw i32 %.080, -2
  br label %.preheader.lr.ph

.loopexit168:                                     ; preds = %.lr.ph203.prol.loopexit, %.lr.ph203, %bb.ad
  %i.ez = add i32 %.181206354, -1                 ; 2 uses
  %i.fa = add i32 %.181206354, -3
  %or.cond375 = icmp ult i32 %i.fa, 126
  %indvar.next = add i32 %indvar, 1
  br i1 %or.cond375, label %.preheader.lr.ph, label %.thread138, !llvm.loop !41

.preheader.lr.ph:                                 ; preds = %.preheader.lr.ph.preheader, %.loopexit168
  %indvar = phi i32 [ 0, %.preheader.lr.ph.preheader ], [ %indvar.next, %.loopexit168 ] ; 3 uses
  %.181206354 = phi i32 [ %.080, %.preheader.lr.ph.preheader ], [ %i.ez, %.loopexit168 ] ; 6 uses
  %i.fb = xor i32 %indvar, -1
  %i.fc = add i32 %.080, %i.fb
  %i.fd = zext i32 %.181206354 to i64             ; 2 uses
  %i.fe = load ptr, ptr %8, align 8               ; 2 uses
  %i.ff = load i32, ptr %1, align 8, !tbaa !42
  %i.fg = load i32, ptr %i.eu, align 8, !tbaa !43 ; 3 uses
  %i.fh = add i32 %i.fg, -1
  %i.fi = load ptr, ptr %i.et, align 8, !tbaa !46 ; 3 uses
  %i.fj = zext i32 %i.fg to i64
  %i.fk = getelementptr inbounds nuw [16 x i8], ptr %i.fi, i64 %i.fj
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.loopexit166
  %indvars.iv.next241352 = phi i64 [ 1, %.preheader.lr.ph ], [ %indvars.iv.next241, %.loopexit166 ] ; 2 uses
  %indvars.iv229351 = phi i64 [ 1, %.preheader.lr.ph ], [ %indvars.iv.next230, %.loopexit166 ] ; 2 uses
  %indvars.iv240350 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next241352, %.loopexit166 ] ; 2 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %indvars.iv240350
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !27 ; 6 uses
  %i.fn = icmp ne ptr %i.fm, null
  %i.fo = load i32, ptr %i.fm, align 4, !tbaa !42 ; 4 uses
  br label %bb.t

bb.t:                                             ; preds = %.preheader, %.loopexit163
  %indvars.iv231 = phi i64 [ %indvars.iv229351, %.preheader ], [ %indvars.iv.next232, %.loopexit163 ] ; 4 uses
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %indvars.iv231
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !27 ; 6 uses
  %i.fr = icmp ne ptr %i.fq, null
  %or.cond.i.i = and i1 %i.fn, %i.fr
  %i.fs = load i32, ptr %i.fq, align 4, !tbaa !42 ; 4 uses
  br i1 %or.cond.i.i, label %bb.u, label %_ZN19maximize_ac_sharing5entryC2EP9func_declP4exprS4_.exit.i

bb.u:                                             ; preds = %bb.t
  %i.ft = icmp ugt i32 %i.fo, %i.fs               ; 2 uses
  %spec.select = select i1 %i.ft, ptr %i.fm, ptr %i.fq
  %spec.select142 = select i1 %i.ft, ptr %i.fq, ptr %i.fm
  %i.fu = call i32 @llvm.umin.i32(i32 %i.fo, i32 %i.fs)
  %i.fv = call i32 @llvm.umax.i32(i32 %i.fo, i32 %i.fs)
  br label %_ZN19maximize_ac_sharing5entryC2EP9func_declP4exprS4_.exit.i

_ZN19maximize_ac_sharing5entryC2EP9func_declP4exprS4_.exit.i: ; preds = %bb.t, %bb.u
  %i.fw = phi i32 [ %i.fv, %bb.u ], [ %i.fs, %bb.t ] ; 4 uses
  %i.fx = phi i32 [ %i.fu, %bb.u ], [ %i.fo, %bb.t ] ; 2 uses
  %.sroa.7.0 = phi ptr [ %spec.select, %bb.u ], [ %i.fq, %bb.t ] ; 2 uses
  %.sroa.4.0 = phi ptr [ %spec.select142, %bb.u ], [ %i.fm, %bb.t ] ; 2 uses
  %i.fy = add i32 %i.fx, %i.fw
  %i.fz = sub i32 %i.ff, %i.fy
  %i.ga = lshr i32 %i.fw, 13
  %i.gb = xor i32 %i.fz, %i.ga                    ; 4 uses
  %i.gc = add i32 %i.fw, %i.gb
  %i.gd = sub i32 %i.fx, %i.gc
  %i.ge = shl i32 %i.gb, 8
  %i.gf = xor i32 %i.gd, %i.ge                    ; 4 uses
  %i.gg = add i32 %i.gb, %i.gf
  %i.gh = sub i32 %i.fw, %i.gg
  %i.gi = lshr i32 %i.gf, 13
  %i.gj = xor i32 %i.gh, %i.gi                    ; 4 uses
  %i.gk = add i32 %i.gf, %i.gj
  %i.gl = sub i32 %i.gb, %i.gk
  %i.gm = lshr i32 %i.gj, 12
  %i.gn = xor i32 %i.gl, %i.gm                    ; 4 uses
  %i.go = add i32 %i.gj, %i.gn
  %i.gp = sub i32 %i.gf, %i.go
  %i.gq = shl i32 %i.gn, 16
  %i.gr = xor i32 %i.gp, %i.gq                    ; 4 uses
  %i.gs = add i32 %i.gn, %i.gr
  %i.gt = sub i32 %i.gj, %i.gs
  %i.gu = lshr i32 %i.gr, 5
  %i.gv = xor i32 %i.gt, %i.gu                    ; 4 uses
  %i.gw = add i32 %i.gr, %i.gv
  %i.gx = sub i32 %i.gn, %i.gw
  %i.gy = lshr i32 %i.gv, 3
  %i.gz = xor i32 %i.gx, %i.gy                    ; 3 uses
  %i.ha = add i32 %i.gv, %i.gz
  %i.hb = sub i32 %i.gr, %i.ha
  %i.hc = shl i32 %i.gz, 10
  %i.hd = xor i32 %i.hb, %i.hc                    ; 2 uses
  %i.he = add i32 %i.gz, %i.hd
  %i.hf = sub i32 %i.gv, %i.he
  %i.hg = lshr i32 %i.hd, 15
  %i.hh = xor i32 %i.hf, %i.hg                    ; 3 uses
  %i.hi = and i32 %i.hh, %i.fh                    ; 3 uses
  %i.hj = zext i32 %i.hi to i64
  %.idx.i = shl nuw nsw i64 %i.hj, 4
  %i.hk = getelementptr inbounds nuw i8, ptr %i.fi, i64 %.idx.i ; 3 uses
  %.not52.i = icmp eq i32 %i.hi, %i.fg
  br i1 %.not52.i, label %.preheader.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %_ZNK14core_hashtableI14ptr_hash_entryIN19maximize_ac_sharing5entryEE12obj_ptr_hashIS2_E8deref_eqIS2_EE6equalsERKPS2_SB_.exit.thread.i, %_ZN19maximize_ac_sharing5entryC2EP9func_declP4exprS4_.exit.i
  %.not2754.i = icmp eq i32 %i.hi, 0
  br i1 %.not2754.i, label %.loopexit163, label %.lr.ph56.i

.lr.ph.i:                                         ; preds = %_ZN19maximize_ac_sharing5entryC2EP9func_declP4exprS4_.exit.i, %_ZNK14core_hashtableI14ptr_hash_entryIN19maximize_ac_sharing5entryEE12obj_ptr_hashIS2_E8deref_eqIS2_EE6equalsERKPS2_SB_.exit.thread.i
  %.053.i = phi ptr [ %i.hz, %_ZNK14core_hashtableI14ptr_hash_entryIN19maximize_ac_sharing5entryEE12obj_ptr_hashIS2_E8deref_eqIS2_EE6equalsERKPS2_SB_.exit.thread.i ], [ %i.hk, %_ZN19maximize_ac_sharing5entryC2EP9func_declP4exprS4_.exit.i ] ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.053.i, i64 8
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !47 ; 5 uses
  %i.hn = icmp ult ptr %i.hm, inttoptr (i64 2 to ptr)
  br i1 %i.hn, label %bb.y, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i
  %i.ho = load i32, ptr %.053.i, align 8, !tbaa !50
  %i.hp = icmp eq i32 %i.ho, %i.hh
  br i1 %i.hp, label %bb.w, label %_ZNK14core_hashtableI14ptr_hash_entryIN19maximize_ac_sharing5entryEE12obj_ptr_hashIS2_E8deref_eqIS2_EE6equalsERKPS2_SB_.exit.thread.i

bb.w:                                             ; preds = %bb.v
  %i.hq = load ptr, ptr %i.hm, align 8, !tbaa !51
  %i.hr = icmp eq ptr %i.hq, %1
  br i1 %i.hr, label %bb.x, label %_ZNK14core_hashtableI14ptr_hash_entryIN19maximize_ac_sharing5entryEE12obj_ptr_hashIS2_E8deref_eqIS2_EE6equalsERKPS2_SB_.exit.thread.i

bb.x:                                             ; preds = %bb.w
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !54
  %i.hu = icmp eq ptr %i.ht, %.sroa.4.0
  br i1 %i.hu, label %_ZNK14core_hashtableI14ptr_hash_entryIN19maximize_ac_sharing5entryEE12obj_ptr_hashIS2_E8deref_eqIS2_EE6equalsERKPS2_SB_.exit.i, label %_ZNK14core_hashtableI14ptr_hash_entryIN19maximize_ac_sharing5entryEE12obj_ptr_hashIS2_E8deref_eqIS2_EE6equalsERKPS2_SB_.exit.thread.i

_ZNK14core_hashtableI14ptr_hash_entryIN19maximize_ac_sharing5entryEE12obj_ptr_hashIS2_E8deref_eqIS2_EE6equalsERKPS2_SB_.exit.i: ; preds = %bb.x
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !55
  %i.hx = icmp eq ptr %i.hw, %.sroa.7.0
  br i1 %i.hx, label %.loopexit, label %_ZNK14core_hashtableI14ptr_hash_entryIN19maximize_ac_sharing5entryEE12obj_ptr_hashIS2_E8deref_eqIS2_EE6equalsERKPS2_SB_.exit.thread.i

bb.y:                                             ; preds = %.lr.ph.i
  %i.hy = icmp eq ptr %i.hm, null
  br i1 %i.hy, label %.loopexit163, label %_ZNK14core_hashtableI14ptr_hash_entryIN19maximize_ac_sharing5entryEE12obj_ptr_hashIS2_E8deref_eqIS2_EE6equalsERKPS2_SB_.exit.thread.i

_ZNK14core_hashtableI14ptr_hash_entryIN19maximize_ac_sharing5entryEE12obj_ptr_hashIS2_E8deref_eqIS2_EE6equalsERKPS2_SB_.exit.thread.i: ; preds = %bb.y, %_ZNK14core_hashtableI14ptr_hash_entryIN19maximize_ac_sharing5entryEE12obj_ptr_hashIS2_E8deref_eqIS2_EE6equalsERKPS2_SB_.exit.i, %bb.x, %bb.w, %bb.v
  %i.hz = getelementptr inbounds nuw i8, ptr %.053.i, i64 16 ; 2 uses
  %.not.i126 = icmp eq ptr %i.hz, %i.fk
  br i1 %.not.i126, label %.preheader.i, label %.lr.ph.i, !llvm.loop !56

.lr.ph56.i:                                       ; preds = %.preheader.i, %.lr.ph56.i.backedge
  %.155.i = phi ptr [ %.155.i.be, %.lr.ph56.i.backedge ], [ %i.fi, %.preheader.i ] ; 4 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.155.i, i64 8
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !47 ; 5 uses
  %i.ic = icmp ult ptr %i.ib, inttoptr (i64 2 to ptr)
  br i1 %i.ic, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %.lr.ph56.i
  %i.id = load i32, ptr %.155.i, align 8, !tbaa !50
  %i.ie = icmp eq i32 %i.id, %i.hh
  br i1 %i.ie, label %bb.aa, label %_ZNK14core_hashtableI14ptr_hash_entryIN19maximize_ac_sharing5entryEE12obj_ptr_hashIS2_E8deref_eqIS2_EE6equalsERKPS2_SB_.exit30.thread.i

bb.aa:                                            ; preds = %bb.z
  %i.if = load ptr, ptr %i.ib, align 8, !tbaa !51
  %i.ig = icmp eq ptr %i.if, %1
  br i1 %i.ig, label %bb.ab, label %_ZNK14core_hashtableI14ptr_hash_entryIN19maximize_ac_sharing5entryEE12obj_ptr_hashIS2_E8deref_eqIS2_EE6equalsERKPS2_SB_.exit30.thread.i

bb.ab:                                            ; preds = %bb.aa
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !54
  %i.ij = icmp eq ptr %i.ii, %.sroa.4.0
  br i1 %i.ij, label %_ZNK14core_hashtableI14ptr_hash_entryIN19maximize_ac_sharing5entryEE12obj_ptr_hashIS2_E8deref_eqIS2_EE6equalsERKPS2_SB_.exit30.i, label %_ZNK14core_hashtableI14ptr_hash_entryIN19maximize_ac_sharing5entryEE12obj_ptr_hashIS2_E8deref_eqIS2_EE6equalsERKPS2_SB_.exit30.thread.i

_ZNK14core_hashtableI14ptr_hash_entryIN19maximize_ac_sharing5entryEE12obj_ptr_hashIS2_E8deref_eqIS2_EE6equalsERKPS2_SB_.exit30.i: ; preds = %bb.ab
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !55
  %i.im = icmp eq ptr %i.il, %.sroa.7.0
  br i1 %i.im, label %.loopexit, label %_ZNK14core_hashtableI14ptr_hash_entryIN19maximize_ac_sharing5entryEE12obj_ptr_hashIS2_E8deref_eqIS2_EE6equalsERKPS2_SB_.exit30.thread.i

bb.ac:                                            ; preds = %.lr.ph56.i
  %i.in = icmp eq ptr %i.ib, null
  %i.io = getelementptr inbounds nuw i8, ptr %.155.i, i64 16 ; 2 uses
  %.not27.i = icmp eq ptr %i.io, %i.hk
  %or.cond.i = select i1 %i.in, i1 true, i1 %.not27.i
  br i1 %or.cond.i, label %.loopexit163, label %.lr.ph56.i.backedge

_ZNK14core_hashtableI14ptr_hash_entryIN19maximize_ac_sharing5entryEE12obj_ptr_hashIS2_E8deref_eqIS2_EE6equalsERKPS2_SB_.exit30.thread.i: ; preds = %_ZNK14core_hashtableI14ptr_hash_entryIN19maximize_ac_sharing5entryEE12obj_ptr_hashIS2_E8deref_eqIS2_EE6equalsERKPS2_SB_.exit30.i, %bb.ab, %bb.aa, %bb.z
  %.old.i = getelementptr inbounds nuw i8, ptr %.155.i, i64 16 ; 2 uses
  %.not27.old.i = icmp eq ptr %.old.i, %i.hk
  br i1 %.not27.old.i, label %.loopexit163, label %.lr.ph56.i.backedge

.lr.ph56.i.backedge:                              ; preds = %_ZNK14core_hashtableI14ptr_hash_entryIN19maximize_ac_sharing5entryEE12obj_ptr_hashIS2_E8deref_eqIS2_EE6equalsERKPS2_SB_.exit30.thread.i, %bb.ac
  %.155.i.be = phi ptr [ %i.io, %bb.ac ], [ %.old.i, %_ZNK14core_hashtableI14ptr_hash_entryIN19maximize_ac_sharing5entryEE12obj_ptr_hashIS2_E8deref_eqIS2_EE6equalsERKPS2_SB_.exit30.thread.i ]
  br label %.lr.ph56.i, !llvm.loop !57

.loopexit:                                        ; preds = %_ZNK14core_hashtableI14ptr_hash_entryIN19maximize_ac_sharing5entryEE12obj_ptr_hashIS2_E8deref_eqIS2_EE6equalsERKPS2_SB_.exit.i, %_ZNK14core_hashtableI14ptr_hash_entryIN19maximize_ac_sharing5entryEE12obj_ptr_hashIS2_E8deref_eqIS2_EE6equalsERKPS2_SB_.exit30.i
  %i.ip = load ptr, ptr %i.ev, align 8, !tbaa !58, !nonnull !71, !align !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store ptr %i.fm, ptr %i.d, align 16, !tbaa !27
  store ptr %i.fq, ptr %i.ew, align 8, !tbaa !27
  %i.iq = invoke noundef ptr @_ZN11ast_manager6mk_appEP9func_decljPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.ip, ptr noundef nonnull %1, i32 noundef 2, ptr noundef nonnull %i.d)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %.loopexit
  %.068198221 = trunc i64 %indvars.iv231 to i32   ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  %i.ir = load ptr, ptr %8, align 8, !tbaa !21    ; 11 uses
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %indvars.iv240350
  store ptr %i.iq, ptr %i.is, align 8, !tbaa !27
  %i.it = add i32 %.068198221, 1                  ; 2 uses
  %i.iu = icmp ult i32 %i.it, %.181206354
  br i1 %i.iu, label %.lr.ph203.preheader, label %.loopexit168

.lr.ph203.preheader:                              ; preds = %bb.ad
  %i.iv = zext i32 %i.it to i64                   ; 2 uses
  %i.iw = and i64 %indvars.iv231, 4294967295      ; 2 uses
  %i.ix = sub i32 %i.fc, %.068198221
  %i.iy = add i32 %indvar, %.068198221
  %i.iz = sub i32 %i.ey, %i.iy
  %xtraiter401 = and i32 %i.ix, 3                 ; 2 uses
  %lcmp.mod402.not = icmp eq i32 %xtraiter401, 0
  br i1 %lcmp.mod402.not, label %.lr.ph203.prol.loopexit, label %.lr.ph203.prol

.lr.ph203.prol:                                   ; preds = %.lr.ph203.preheader, %.lr.ph203.prol
  %indvars.iv235.prol = phi i64 [ %indvars.iv.next236.prol, %.lr.ph203.prol ], [ %i.iv, %.lr.ph203.preheader ] ; 4 uses
  %.067201.prol = phi i64 [ %indvars.iv235.prol, %.lr.ph203.prol ], [ %i.iw, %.lr.ph203.preheader ]
  %prol.iter403 = phi i32 [ %prol.iter403.next, %.lr.ph203.prol ], [ 0, %.lr.ph203.preheader ]
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %indvars.iv235.prol
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !27
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %.067201.prol
  store ptr %i.jb, ptr %i.jc, align 8, !tbaa !27
  %indvars.iv.next236.prol = add nuw nsw i64 %indvars.iv235.prol, 1 ; 2 uses
  %prol.iter403.next = add i32 %prol.iter403, 1   ; 2 uses
  %prol.iter403.cmp.not = icmp eq i32 %prol.iter403.next, %xtraiter401
  br i1 %prol.iter403.cmp.not, label %.lr.ph203.prol.loopexit, label %.lr.ph203.prol, !llvm.loop !73

.lr.ph203.prol.loopexit:                          ; preds = %.lr.ph203.prol, %.lr.ph203.preheader
  %indvars.iv235.unr = phi i64 [ %i.iv, %.lr.ph203.preheader ], [ %indvars.iv.next236.prol, %.lr.ph203.prol ]
  %.067201.unr = phi i64 [ %i.iw, %.lr.ph203.preheader ], [ %indvars.iv235.prol, %.lr.ph203.prol ]
  %i.jd = icmp ult i32 %i.iz, 3
  br i1 %i.jd, label %.loopexit168, label %.lr.ph203

bb.ae:                                            ; preds = %.loopexit
  %i.je = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph203:                                        ; preds = %.lr.ph203.prol.loopexit, %.lr.ph203
  %indvars.iv235 = phi i64 [ %indvars.iv.next236.3, %.lr.ph203 ], [ %indvars.iv235.unr, %.lr.ph203.prol.loopexit ] ; 6 uses
  %.067201 = phi i64 [ %indvars.iv.next236.2, %.lr.ph203 ], [ %.067201.unr, %.lr.ph203.prol.loopexit ]
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %indvars.iv235
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !27
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %.067201
  store ptr %i.jg, ptr %i.jh, align 8, !tbaa !27
  %indvars.iv.next236 = add nuw nsw i64 %indvars.iv235, 1 ; 2 uses
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %indvars.iv.next236
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !27
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %indvars.iv235
  store ptr %i.jj, ptr %i.jk, align 8, !tbaa !27
  %indvars.iv.next236.1 = add nuw nsw i64 %indvars.iv235, 2 ; 2 uses
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %indvars.iv.next236.1
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !27
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %indvars.iv.next236
  store ptr %i.jm, ptr %i.jn, align 8, !tbaa !27
  %indvars.iv.next236.2 = add nuw nsw i64 %indvars.iv235, 3 ; 2 uses
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %indvars.iv.next236.2
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !27
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %indvars.iv.next236.1
  store ptr %i.jp, ptr %i.jq, align 8, !tbaa !27
  %indvars.iv.next236.3 = add nuw nsw i64 %indvars.iv235, 4 ; 2 uses
  %lftr.wideiv238.3 = trunc i64 %indvars.iv.next236.3 to i32
  %exitcond239.not.3 = icmp eq i32 %.181206354, %lftr.wideiv238.3
  br i1 %exitcond239.not.3, label %.loopexit168, label %.lr.ph203, !llvm.loop !74

.loopexit163:                                     ; preds = %bb.y, %_ZNK14core_hashtableI14ptr_hash_entryIN19maximize_ac_sharing5entryEE12obj_ptr_hashIS2_E8deref_eqIS2_EE6equalsERKPS2_SB_.exit30.thread.i, %bb.ac, %.preheader.i
  %indvars.iv.next232 = add nuw nsw i64 %indvars.iv231, 1 ; 2 uses
  %exitcond234.not = icmp eq i64 %indvars.iv.next232, %i.fd
  br i1 %exitcond234.not, label %.loopexit166, label %bb.t, !llvm.loop !75

.loopexit166:                                     ; preds = %.loopexit163
  %indvars.iv.next230 = add nuw nsw i64 %indvars.iv229351, 1
  %indvars.iv.next241 = add nuw nsw i64 %indvars.iv.next241352, 1 ; 2 uses
  %i.jr = icmp samesign ult i64 %indvars.iv.next241, %i.fd
  br i1 %i.jr, label %.preheader, label %.thread138, !llvm.loop !41

.thread138:                                       ; preds = %.loopexit168, %.loopexit166, %.preheader167.lr.ph, %_ZN10ptr_bufferI4exprLj128EE6appendEjPKPS0_.exit
  %.5 = phi i32 [ %.080, %.preheader167.lr.ph ], [ %.080, %_ZN10ptr_bufferI4exprLj128EE6appendEjPKPS0_.exit ], [ %.181206354, %.loopexit166 ], [ %i.ez, %.loopexit168 ]
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %.critedge

.critedge:                                        ; preds = %._crit_edge210, %.thread138
  %.6 = phi i32 [ %.5, %.thread138 ], [ %.066.lcssa, %._crit_edge210 ] ; 3 uses
  %.not212 = icmp eq i32 %.6, 0
  br i1 %.not212, label %._crit_edge210, label %.lr.ph209

.lr.ph209:                                        ; preds = %.critedge
  %i.jw = add i32 %.6, -1                         ; 2 uses
  %i.jx = zext i32 %i.jw to i64
  br label %bb.af

._crit_edge210:                                   ; preds = %bb.az, %.critedge
  %.066.lcssa = phi i32 [ 0, %.critedge ], [ %i.nb, %bb.az ] ; 2 uses
  %.not86 = icmp eq i32 %.066.lcssa, 1
  br i1 %.not86, label %bb.ba, label %.critedge

bb.af:                                            ; preds = %.lr.ph209, %bb.az
  %.0208 = phi i32 [ 0, %.lr.ph209 ], [ %i.na, %bb.az ] ; 4 uses
  %.066207 = phi i32 [ 0, %.lr.ph209 ], [ %i.nb, %bb.az ] ; 2 uses
  %i.jy = icmp eq i32 %.0208, %i.jw
  %i.jz = load ptr, ptr %8, align 8, !tbaa !21    ; 4 uses
  br i1 %i.jy, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %i.jx
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !27
  br label %bb.az

bb.ah:                                            ; preds = %bb.au, %bb.am, %_ZN19maximize_ac_sharing6insertEP9func_declP4exprS3_.exit, %_ZN6vectorIPN19maximize_ac_sharing5entryELb0EjE9push_backERKS2_.exit.i, %bb.ai
  %i.kc = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ai:                                            ; preds = %bb.af
  %i.kd = zext i32 %.0208 to i64                  ; 2 uses
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %i.kd
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !27 ; 6 uses
  %i.kg = or disjoint i32 %.0208, 1
  %i.kh = zext i32 %i.kg to i64
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %i.kh
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !27 ; 6 uses
  %i.kk = invoke noundef ptr @_ZN6region8allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %i.js, i64 noundef 24)
          to label %.noexc109 unwind label %bb.ah ; 5 uses

.noexc109:                                        ; preds = %bb.ai
  store ptr %1, ptr %i.kk, align 8, !tbaa !51
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 8 ; 2 uses
  store ptr %i.kf, ptr %i.kl, align 8, !tbaa !54
  %i.km = getelementptr inbounds nuw i8, ptr %i.kk, i64 16 ; 2 uses
  store ptr %i.kj, ptr %i.km, align 8, !tbaa !55
  %i.kn = icmp ne ptr %i.kf, null
  %i.ko = icmp ne ptr %i.kj, null
  %or.cond.i.i105 = and i1 %i.kn, %i.ko
  br i1 %or.cond.i.i105, label %bb.aj, label %_ZN19maximize_ac_sharing5entryC2EP9func_declP4exprS4_.exit.i106

bb.aj:                                            ; preds = %.noexc109
  %i.kp = load i32, ptr %i.kf, align 4, !tbaa !42
  %i.kq = load i32, ptr %i.kj, align 4, !tbaa !42
  %i.kr = icmp ugt i32 %i.kp, %i.kq
  br i1 %i.kr, label %bb.ak, label %_ZN19maximize_ac_sharing5entryC2EP9func_declP4exprS4_.exit.i106

bb.ak:                                            ; preds = %bb.aj
  store ptr %i.kj, ptr %i.kl, align 8, !tbaa !27
  store ptr %i.kf, ptr %i.km, align 8, !tbaa !27
  br label %_ZN19maximize_ac_sharing5entryC2EP9func_declP4exprS4_.exit.i106

_ZN19maximize_ac_sharing5entryC2EP9func_declP4exprS4_.exit.i106: ; preds = %bb.ak, %bb.aj, %.noexc109
  %i.ks = load ptr, ptr %i.jt, align 8, !tbaa !76 ; 4 uses
  %i.kt = icmp eq ptr %i.ks, null
  br i1 %i.kt, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_ZN19maximize_ac_sharing5entryC2EP9func_declP4exprS4_.exit.i106
  %i.ku = getelementptr inbounds i8, ptr %i.ks, i64 -4
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !12 ; 5 uses
  %i.kw = getelementptr inbounds i8, ptr %i.ks, i64 -8 ; 2 uses
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !12
  %i.ky = icmp eq i32 %i.kv, %i.kx
  br i1 %i.ky, label %bb.an, label %_ZN6vectorIPN19maximize_ac_sharing5entryELb0EjE9push_backERKS2_.exit.i

bb.am:                                            ; preds = %_ZN19maximize_ac_sharing5entryC2EP9func_declP4exprS4_.exit.i106
  %i.kz = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24)
          to label %.noexc130 unwind label %bb.ah ; 3 uses

.noexc130:                                        ; preds = %bb.am
  store i32 2, ptr %i.kz, align 4, !tbaa !12
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 4
  store i32 0, ptr %i.la, align 4, !tbaa !12
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kz, i64 8 ; 2 uses
  store ptr %i.lb, ptr %i.jt, align 8, !tbaa !76
  br label %.noexc110

bb.an:                                            ; preds = %bb.al
  %i.lc = mul i32 %i.kv, 3
  %i.ld = add i32 %i.lc, 1
  %i.le = lshr i32 %i.ld, 1                       ; 3 uses
  %i.lf = shl i32 %i.le, 3
  %i.lg = add i32 %i.lf, 8                        ; 2 uses
  %.not.i127 = icmp ugt i32 %i.le, %i.kv
  br i1 %.not.i127, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.lh = shl i32 %i.kv, 3
  %i.li = add i32 %i.lh, 8
  %.not27.i129 = icmp ugt i32 %i.lg, %i.li
  br i1 %.not27.i129, label %bb.au, label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.lj = call ptr @__cxa_allocate_exception(i64 40) #19 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.aq unwind label %bb.at

bb.aq:                                            ; preds = %bb.ap
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.lj, align 8, !tbaa !29
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 8 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lj, i64 24 ; 3 uses
  store ptr %i.ll, ptr %i.lk, align 8, !tbaa !77
  %i.lm = load ptr, ptr %6, align 8, !tbaa !79    ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.lo = icmp eq ptr %i.lm, %i.ln
  br i1 %i.lo, label %bb.ar, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.ar:                                            ; preds = %bb.aq
  %i.lp = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.lq = load i64, ptr %i.lp, align 8, !tbaa !82 ; 3 uses
  %i.lr = icmp ult i64 %i.lq, 16
  call void @llvm.assume(i1 %i.lr)
  %i.ls = add nuw nsw i64 %i.lq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ll, ptr noundef nonnull align 8 dereferenceable(1) %i.ln, i64 %i.ls, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.aq
  store ptr %i.lm, ptr %i.lk, align 8, !tbaa !79
  %i.lt = load i64, ptr %i.ln, align 8, !tbaa !83
  store i64 %i.lt, ptr %i.ll, align 8, !tbaa !83
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.pre.i128 = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !82
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.ar
  %i.lu = phi i64 [ %i.lq, %bb.ar ], [ %.pre.i128, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.lv = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lj, i64 16
  store i64 %i.lu, ptr %i.lw, align 8, !tbaa !82
  store ptr %i.ln, ptr %6, align 8, !tbaa !79
  store i64 0, ptr %i.lv, align 8, !tbaa !82
  store i8 0, ptr %i.ln, align 8, !tbaa !83
  invoke void @__cxa_throw(ptr nonnull %i.lj, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #20
          to label %bb.av unwind label %bb.as

bb.as:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.lx = landingpad { ptr, i32 }
          cleanup
  %i.ly = load ptr, ptr %6, align 8, !tbaa !79    ; 2 uses
  %i.lz = icmp eq ptr %i.ly, %i.ln
  br i1 %i.lz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i: ; preds = %bb.as
  %i.ma = load i64, ptr %i.ln, align 8, !tbaa !83
  %i.mb = add i64 %i.ma, 1
  call void @_ZdlPvm(ptr noundef %i.ly, i64 noundef %i.mb) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %.body

bb.at:                                            ; preds = %bb.ap
  %i.mc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @__cxa_free_exception(ptr %i.lj) #19
  br label %.body

bb.au:                                            ; preds = %bb.ao
  %i.md = zext i32 %i.lg to i64
  %i.me = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.kw, i64 noundef %i.md)
          to label %.noexc131 unwind label %bb.ah ; 2 uses

.noexc131:                                        ; preds = %bb.au
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 8 ; 2 uses
  store ptr %i.mf, ptr %i.jt, align 8, !tbaa !76
end_hunk_0
begin_hunk_1_@_ZN14core_hashtableI14ptr_hash_entryIN19maximize_ac_sharing5entryEE12obj_ptr_hashIS2_E8deref_eqIS2_EE6removeERKPS2_:bb.a
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.ax, i64 %i.ba ; 2 uses
  %.not61 = icmp eq i32 %i.aw, %i.au
  br i1 %.not61, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %_ZNK14core_hashtableI14ptr_hash_entryIN19maximize_ac_sharing5entryEE12obj_ptr_hashIS2_E8deref_eqIS2_EE6equalsERKPS2_SB_.exit.thread, %bb.a
  %.not3263 = icmp eq i32 %i.aw, 0
  br i1 %.not3263, label %.loopexit, label %.lr.ph65

.lr.ph:                                           ; preds = %bb.a, %_ZNK14core_hashtableI14ptr_hash_entryIN19maximize_ac_sharing5entryEE12obj_ptr_hashIS2_E8deref_eqIS2_EE6equalsERKPS2_SB_.exit.thread
  %.02962 = phi ptr [ %i.bq, %_ZNK14core_hashtableI14ptr_hash_entryIN19maximize_ac_sharing5entryEE12obj_ptr_hashIS2_E8deref_eqIS2_EE6equalsERKPS2_SB_.exit.thread ], [ %i.az, %bb.a ] ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.02962, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !47 ; 5 uses
  %i.be = icmp ult ptr %i.bd, inttoptr (i64 2 to ptr)
  br i1 %i.be, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.bf = load i32, ptr %.02962, align 8, !tbaa !50
  %i.bg = icmp eq i32 %i.bf, %i.as
  br i1 %i.bg, label %bb.c, label %_ZNK14core_hashtableI14ptr_hash_entryIN19maximize_ac_sharing5entryEE12obj_ptr_hashIS2_E8deref_eqIS2_EE6equalsERKPS2_SB_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.bh = load ptr, ptr %i.bd, align 8, !tbaa !51
  %i.bi = icmp eq ptr %i.bh, %i.b
  br i1 %i.bi, label %bb.d, label %_ZNK14core_hashtableI14ptr_hash_entryIN19maximize_ac_sharing5entryEE12obj_ptr_hashIS2_E8deref_eqIS2_EE6equalsERKPS2_SB_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !54
  %i.bl = icmp eq ptr %i.bk, %i.e
  br i1 %i.bl, label %_ZNK14core_hashtableI14ptr_hash_entryIN19maximize_ac_sharing5entryEE12obj_ptr_hashIS2_E8deref_eqIS2_EE6equalsERKPS2_SB_.exit, label %_ZNK14core_hashtableI14ptr_hash_entryIN19maximize_ac_sharing5entryEE12obj_ptr_hashIS2_E8deref_eqIS2_EE6equalsERKPS2_SB_.exit.thread

_ZNK14core_hashtableI14ptr_hash_entryIN19maximize_ac_sharing5entryEE12obj_ptr_hashIS2_E8deref_eqIS2_EE6equalsERKPS2_SB_.exit: ; preds = %bb.d
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !55
  %i.bo = icmp eq ptr %i.bn, %i.h
  br i1 %i.bo, label %.loopexit55, label %_ZNK14core_hashtableI14ptr_hash_entryIN19maximize_ac_sharing5entryEE12obj_ptr_hashIS2_E8deref_eqIS2_EE6equalsERKPS2_SB_.exit.thread

bb.e:                                             ; preds = %.lr.ph
  %i.bp = icmp eq ptr %i.bd, null
  br i1 %i.bp, label %.loopexit, label %_ZNK14core_hashtableI14ptr_hash_entryIN19maximize_ac_sharing5entryEE12obj_ptr_hashIS2_E8deref_eqIS2_EE6equalsERKPS2_SB_.exit.thread

_ZNK14core_hashtableI14ptr_hash_entryIN19maximize_ac_sharing5entryEE12obj_ptr_hashIS2_E8deref_eqIS2_EE6equalsERKPS2_SB_.exit.thread: ; preds = %bb.c, %bb.d, %_ZNK14core_hashtableI14ptr_hash_entryIN19maximize_ac_sharing5entryEE12obj_ptr_hashIS2_E8deref_eqIS2_EE6equalsERKPS2_SB_.exit, %bb.b, %bb.e
  %i.bq = getelementptr inbounds nuw i8, ptr %.02962, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.bq, %i.bb
  br i1 %.not, label %.preheader, label %.lr.ph, !llvm.loop !99

.lr.ph65:                                         ; preds = %.preheader, %.lr.ph65.backedge
  %.164 = phi ptr [ %.164.be, %.lr.ph65.backedge ], [ %i.ax, %.preheader ] ; 5 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.164, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !47 ; 5 uses
  %i.bt = icmp ult ptr %i.bs, inttoptr (i64 2 to ptr)
  br i1 %i.bt, label %bb.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph65
  %i.bu = load i32, ptr %.164, align 8, !tbaa !50
  %i.bv = icmp eq i32 %i.bu, %i.as
  br i1 %i.bv, label %bb.g, label %_ZNK14core_hashtableI14ptr_hash_entryIN19maximize_ac_sharing5entryEE12obj_ptr_hashIS2_E8deref_eqIS2_EE6equalsERKPS2_SB_.exit35.thread

bb.g:                                             ; preds = %bb.f
  %i.bw = load ptr, ptr %i.bs, align 8, !tbaa !51
  %i.bx = icmp eq ptr %i.bw, %i.b
  br i1 %i.bx, label %bb.h, label %_ZNK14core_hashtableI14ptr_hash_entryIN19maximize_ac_sharing5entryEE12obj_ptr_hashIS2_E8deref_eqIS2_EE6equalsERKPS2_SB_.exit35.thread

bb.h:                                             ; preds = %bb.g
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !54
  %i.ca = icmp eq ptr %i.bz, %i.e
  br i1 %i.ca, label %_ZNK14core_hashtableI14ptr_hash_entryIN19maximize_ac_sharing5entryEE12obj_ptr_hashIS2_E8deref_eqIS2_EE6equalsERKPS2_SB_.exit35, label %_ZNK14core_hashtableI14ptr_hash_entryIN19maximize_ac_sharing5entryEE12obj_ptr_hashIS2_E8deref_eqIS2_EE6equalsERKPS2_SB_.exit35.thread

_ZNK14core_hashtableI14ptr_hash_entryIN19maximize_ac_sharing5entryEE12obj_ptr_hashIS2_E8deref_eqIS2_EE6equalsERKPS2_SB_.exit35: ; preds = %bb.h
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !55
  %i.cd = icmp eq ptr %i.cc, %i.h
  br i1 %i.cd, label %.loopexit55, label %_ZNK14core_hashtableI14ptr_hash_entryIN19maximize_ac_sharing5entryEE12obj_ptr_hashIS2_E8deref_eqIS2_EE6equalsERKPS2_SB_.exit35.thread

bb.i:                                             ; preds = %.lr.ph65
  %i.ce = icmp eq ptr %i.bs, null
  %i.cf = getelementptr inbounds nuw i8, ptr %.164, i64 16 ; 2 uses
  %.not32 = icmp eq ptr %i.cf, %i.az
  %or.cond67 = select i1 %i.ce, i1 true, i1 %.not32
  br i1 %or.cond67, label %.loopexit, label %.lr.ph65.backedge

_ZNK14core_hashtableI14ptr_hash_entryIN19maximize_ac_sharing5entryEE12obj_ptr_hashIS2_E8deref_eqIS2_EE6equalsERKPS2_SB_.exit35.thread: ; preds = %bb.g, %bb.h, %_ZNK14core_hashtableI14ptr_hash_entryIN19maximize_ac_sharing5entryEE12obj_ptr_hashIS2_E8deref_eqIS2_EE6equalsERKPS2_SB_.exit35, %bb.f
  %.old = getelementptr inbounds nuw i8, ptr %.164, i64 16 ; 2 uses
  %.not32.old = icmp eq ptr %.old, %i.az
  br i1 %.not32.old, label %.loopexit, label %.lr.ph65.backedge

.lr.ph65.backedge:                                ; preds = %_ZNK14core_hashtableI14ptr_hash_entryIN19maximize_ac_sharing5entryEE12obj_ptr_hashIS2_E8deref_eqIS2_EE6equalsERKPS2_SB_.exit35.thread, %bb.i
  %.164.be = phi ptr [ %i.cf, %bb.i ], [ %.old, %_ZNK14core_hashtableI14ptr_hash_entryIN19maximize_ac_sharing5entryEE12obj_ptr_hashIS2_E8deref_eqIS2_EE6equalsERKPS2_SB_.exit35.thread ]
  br label %.lr.ph65, !llvm.loop !100

.loopexit55:                                      ; preds = %_ZNK14core_hashtableI14ptr_hash_entryIN19maximize_ac_sharing5entryEE12obj_ptr_hashIS2_E8deref_eqIS2_EE6equalsERKPS2_SB_.exit, %_ZNK14core_hashtableI14ptr_hash_entryIN19maximize_ac_sharing5entryEE12obj_ptr_hashIS2_E8deref_eqIS2_EE6equalsERKPS2_SB_.exit35
  %.2 = phi ptr [ %.164, %_ZNK14core_hashtableI14ptr_hash_entryIN19maximize_ac_sharing5entryEE12obj_ptr_hashIS2_E8deref_eqIS2_EE6equalsERKPS2_SB_.exit35 ], [ %.02962, %_ZNK14core_hashtableI14ptr_hash_entryIN19maximize_ac_sharing5entryEE12obj_ptr_hashIS2_E8deref_eqIS2_EE6equalsERKPS2_SB_.exit ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.2, i64 16 ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.bb
  %spec.select = select i1 %i.ch, ptr %i.ax, ptr %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %spec.select, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !47
  %i.ck = icmp eq ptr %i.cj, null
  %i.cl = getelementptr inbounds nuw i8, ptr %.2, i64 8 ; 2 uses
  br i1 %i.ck, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.loopexit55
  store ptr null, ptr %i.cl, align 8, !tbaa !47
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !92
  %i.co = add i32 %i.cn, -1
  store i32 %i.co, ptr %i.cm, align 4, !tbaa !92
  br label %.loopexit

bb.k:                                             ; preds = %.loopexit55
  store ptr inttoptr (i64 1 to ptr), ptr %i.cl, align 8, !tbaa !47
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !93
  %i.cr = add i32 %i.cq, 1                        ; 3 uses
  store i32 %i.cr, ptr %i.cp, align 8, !tbaa !93
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !92
  %i.cu = add i32 %i.ct, -1                       ; 2 uses
  store i32 %i.cu, ptr %i.cs, align 4, !tbaa !92
  %i.cv = icmp ugt i32 %i.cr, %i.cu
  %i.cw = icmp ugt i32 %i.cr, 64
  %or.cond = and i1 %i.cw, %i.cv
  br i1 %or.cond, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN14core_hashtableI14ptr_hash_entryIN19maximize_ac_sharing5entryEE12obj_ptr_hashIS2_E8deref_eqIS2_EE22remove_deleted_entriesEv(ptr noundef nonnull align 8 dereferenceable(20) %0)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.i, %_ZNK14core_hashtableI14ptr_hash_entryIN19maximize_ac_sharing5entryEE12obj_ptr_hashIS2_E8deref_eqIS2_EE6equalsERKPS2_SB_.exit35.thread, %.preheader, %bb.j, %bb.l, %bb.k
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN19maximize_ac_sharing5resetEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !92
  %i.d = icmp eq i32 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = icmp eq i32 %i.f, 0
  %or.cond.i = select i1 %i.d, i1 %i.g, i1 false
  br i1 %or.cond.i, label %_ZN14core_hashtableI14ptr_hash_entryIN19maximize_ac_sharing5entryEE12obj_ptr_hashIS2_E8deref_eqIS2_EE5resetEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !46   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !43   ; 5 uses
  %.not11.i = icmp eq i32 %i.j, 0
  br i1 %.not11.i, label %._crit_edge.thread.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.k = zext i32 %i.j to i64
  %i.l = add nuw nsw i64 %i.k, 1152921504606846975 ; 2 uses
  %i.m = and i64 %i.l, 1152921504606846975        ; 2 uses
  %i.n = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %i.o = icmp eq i64 %i.m, 0
  br i1 %i.o, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.n, 2305843009213693950
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i.preheader.new
  %.013.i = phi ptr [ %i.h, %.lr.ph.i.preheader.new ], [ %i.x, %bb.g ] ; 3 uses
  %.0712.i = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %.1.i.1, %bb.g ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %bb.g ]
  %i.p = getelementptr inbounds nuw i8, ptr %.013.i, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !47
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  store ptr null, ptr %i.p, align 8, !tbaa !47
  br label %.lr.ph.i.1

bb.d:                                             ; preds = %.lr.ph.i
  %i.s = add i32 %.0712.i, 1
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.d, %bb.c
  %.1.i = phi i32 [ %i.s, %bb.d ], [ %.0712.i, %bb.c ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.013.i, i64 24 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !47
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.1
  store ptr null, ptr %i.t, align 8, !tbaa !47
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph.i.1
  %i.w = add i32 %.1.i, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.i.1 = phi i32 [ %i.w, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.013.i, i64 32 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !101

._crit_edge.i.unr-lcssa:                          ; preds = %bb.g
  %i.y = and i64 %i.l, 1
  %lcmp.mod.not.not = icmp eq i64 %i.y, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.epil.preheader, label %._crit_edge.i

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i.preheader
  %.013.i.epil.init = phi ptr [ %i.h, %.lr.ph.i.preheader ], [ %i.x, %._crit_edge.i.unr-lcssa ]
  %.0712.i.epil.init = phi i32 [ 0, %.lr.ph.i.preheader ], [ %.1.i.1, %._crit_edge.i.unr-lcssa ] ; 2 uses
  %lcmp.mod5 = trunc i64 %i.n to i1
  tail call void @llvm.assume(i1 %lcmp.mod5)
  %i.z = getelementptr inbounds nuw i8, ptr %.013.i.epil.init, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !47
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.epil.preheader
  store ptr null, ptr %i.z, align 8, !tbaa !47
  br label %._crit_edge.i

bb.i:                                             ; preds = %.lr.ph.i.epil.preheader
  %i.ac = add i32 %.0712.i.epil.init, 1
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.h, %bb.i, %._crit_edge.i.unr-lcssa
  %.1.i.lcssa = phi i32 [ %.1.i.1, %._crit_edge.i.unr-lcssa ], [ %i.ac, %bb.i ], [ %.0712.i.epil.init, %bb.h ]
  %i.ad = shl i32 %.1.i.lcssa, 2
  %i.ae = icmp ugt i32 %i.j, 16
  %i.af = mul i32 %i.j, 3
  %i.ag = icmp ugt i32 %i.ad, %i.af
  %or.cond19.i = select i1 %i.ae, i1 %i.ag, i1 false
  br i1 %or.cond19.i, label %bb.j, label %._crit_edge.thread.i

bb.j:                                             ; preds = %._crit_edge.i
  %i.ah = icmp eq ptr %i.h, null
  br i1 %i.ah, label %_ZN14core_hashtableI14ptr_hash_entryIN19maximize_ac_sharing5entryEE12obj_ptr_hashIS2_E8deref_eqIS2_EE12delete_tableEv.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.h)
  %.pre.i = load i32, ptr %i.i, align 8, !tbaa !43
  br label %_ZN14core_hashtableI14ptr_hash_entryIN19maximize_ac_sharing5entryEE12obj_ptr_hashIS2_E8deref_eqIS2_EE12delete_tableEv.exit.i

_ZN14core_hashtableI14ptr_hash_entryIN19maximize_ac_sharing5entryEE12obj_ptr_hashIS2_E8deref_eqIS2_EE12delete_tableEv.exit.i: ; preds = %bb.k, %bb.j
  %i.ai = phi i32 [ %i.j, %bb.j ], [ %.pre.i, %bb.k ] ; 2 uses
  store ptr null, ptr %i.a, align 8, !tbaa !46
  %i.aj = lshr i32 %i.ai, 1                       ; 6 uses
  store i32 %i.aj, ptr %i.i, align 8, !tbaa !43
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = shl nuw nsw i64 %i.ak, 4
  %i.am = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.al) ; 3 uses
  %.not6.i.i.i.i.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not6.i.i.i.i.i.i, label %_ZN14core_hashtableI14ptr_hash_entryIN19maximize_ac_sharing5entryEE12obj_ptr_hashIS2_E8deref_eqIS2_EE11alloc_tableEj.exit.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZN14core_hashtableI14ptr_hash_entryIN19maximize_ac_sharing5entryEE12obj_ptr_hashIS2_E8deref_eqIS2_EE12delete_tableEv.exit.i
  %xtraiter6 = and i32 %i.aj, 7                   ; 2 uses
  %lcmp.mod7.not = icmp eq i32 %xtraiter6, 0
  br i1 %lcmp.mod7.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.08.i.i.i.i.i.i.prol = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.am, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.057.i.i.i.i.i.i.prol = phi i32 [ %i.ao, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.aj, %.lr.ph.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.an = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.prol, i64 8
  store ptr null, ptr %i.an, align 8, !tbaa !47
  %i.ao = add nsw i32 %.057.i.i.i.i.i.i.prol, -1  ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter6
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !102

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.08.i.i.i.i.i.i.unr = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.i.unr = phi i32 [ %i.aj, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ao, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.aq = icmp ult i32 %i.ai, 16
  br i1 %i.aq, label %_ZN14core_hashtableI14ptr_hash_entryIN19maximize_ac_sharing5entryEE12obj_ptr_hashIS2_E8deref_eqIS2_EE11alloc_tableEj.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.08.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i ], [ %.08.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.057.i.i.i.i.i.i = phi i32 [ %i.az, %.lr.ph.i.i.i.i.i.i ], [ %.057.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 8
  store ptr null, ptr %i.ar, align 8, !tbaa !47
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 24
  store ptr null, ptr %i.as, align 8, !tbaa !47
  %i.at = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 40
  store ptr null, ptr %i.at, align 8, !tbaa !47
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 56
  store ptr null, ptr %i.au, align 8, !tbaa !47
  %i.av = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 72
  store ptr null, ptr %i.av, align 8, !tbaa !47
  %i.aw = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 88
  store ptr null, ptr %i.aw, align 8, !tbaa !47
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 104
  store ptr null, ptr %i.ax, align 8, !tbaa !47
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 120
  store ptr null, ptr %i.ay, align 8, !tbaa !47
  %i.az = add nsw i32 %.057.i.i.i.i.i.i, -8       ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 128
  %.not.i.i.i.i.i.i.7 = icmp eq i32 %i.az, 0
  br i1 %.not.i.i.i.i.i.i.7, label %_ZN14core_hashtableI14ptr_hash_entryIN19maximize_ac_sharing5entryEE12obj_ptr_hashIS2_E8deref_eqIS2_EE11alloc_tableEj.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !103

_ZN14core_hashtableI14ptr_hash_entryIN19maximize_ac_sharing5entryEE12obj_ptr_hashIS2_E8deref_eqIS2_EE11alloc_tableEj.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %_ZN14core_hashtableI14ptr_hash_entryIN19maximize_ac_sharing5entryEE12obj_ptr_hashIS2_E8deref_eqIS2_EE12delete_tableEv.exit.i
  store ptr %i.am, ptr %i.a, align 8, !tbaa !46
  br label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %_ZN14core_hashtableI14ptr_hash_entryIN19maximize_ac_sharing5entryEE12obj_ptr_hashIS2_E8deref_eqIS2_EE11alloc_tableEj.exit.i, %._crit_edge.i, %bb.b
  store i32 0, ptr %i.b, align 4, !tbaa !92
  store i32 0, ptr %i.e, align 8, !tbaa !93
  br label %_ZN14core_hashtableI14ptr_hash_entryIN19maximize_ac_sharing5entryEE12obj_ptr_hashIS2_E8deref_eqIS2_EE5resetEv.exit

_ZN14core_hashtableI14ptr_hash_entryIN19maximize_ac_sharing5entryEE12obj_ptr_hashIS2_E8deref_eqIS2_EE5resetEv.exit: ; preds = %bb.a, %._crit_edge.thread.i
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN19maximize_bv_sharing9init_coreEv(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 9 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !12   ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !12
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN6vectorIiLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !8 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = phi i32 [ %.pre2.i.i, %bb.c ], [ %i.e, %bb.b ] ; 2 uses
  %i.j = phi ptr [ %.pre.i.i, %bb.c ], [ %i.b, %bb.b ] ; 4 uses
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -4
  %i.l = zext i32 %i.i to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.l
  store i32 4, ptr %i.m, align 4, !tbaa !12
  %i.n = add i32 %i.i, 1                          ; 3 uses
  store i32 %i.n, ptr %i.k, align 4, !tbaa !12
  %i.o = getelementptr inbounds i8, ptr %i.j, i64 -8
  %i.p = load i32, ptr %i.o, align 4, !tbaa !12
  %i.q = icmp eq i32 %i.n, %i.p
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN6vectorIiLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre.i.i1 = load ptr, ptr %i.a, align 8, !tbaa !8 ; 2 uses
  %.phi.trans.insert.i.i2 = getelementptr inbounds i8, ptr %.pre.i.i1, i64 -4
  %.pre2.i.i3 = load i32, ptr %.phi.trans.insert.i.i2, align 4, !tbaa !12
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.r = phi i32 [ %.pre2.i.i3, %bb.e ], [ %i.n, %bb.d ] ; 2 uses
  %i.s = phi ptr [ %.pre.i.i1, %bb.e ], [ %i.j, %bb.d ] ; 4 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -4
  %i.u = zext i32 %i.r to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.u
  store i32 6, ptr %i.v, align 4, !tbaa !12
  %i.w = add i32 %i.r, 1                          ; 3 uses
  store i32 %i.w, ptr %i.t, align 4, !tbaa !12
  %i.x = getelementptr inbounds i8, ptr %i.s, i64 -8
  %i.y = load i32, ptr %i.x, align 4, !tbaa !12
  %i.z = icmp eq i32 %i.w, %i.y
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN6vectorIiLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre.i.i5 = load ptr, ptr %i.a, align 8, !tbaa !8 ; 2 uses
  %.phi.trans.insert.i.i6 = getelementptr inbounds i8, ptr %.pre.i.i5, i64 -4
  %.pre2.i.i7 = load i32, ptr %.phi.trans.insert.i.i6, align 4, !tbaa !12
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aa = phi i32 [ %.pre2.i.i7, %bb.g ], [ %i.w, %bb.f ] ; 2 uses
  %i.ab = phi ptr [ %.pre.i.i5, %bb.g ], [ %i.s, %bb.f ] ; 4 uses
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -4
  %i.ad = zext i32 %i.aa to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ad
  store i32 31, ptr %i.ae, align 4, !tbaa !12
  %i.af = add i32 %i.aa, 1                        ; 3 uses
  store i32 %i.af, ptr %i.ac, align 4, !tbaa !12
  %i.ag = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !12
  %i.ai = icmp eq i32 %i.af, %i.ah
  br i1 %i.ai, label %bb.i, label %_ZN19maximize_ac_sharing13register_kindEi.exit12

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN6vectorIiLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre.i.i9 = load ptr, ptr %i.a, align 8, !tbaa !8 ; 2 uses
  %.phi.trans.insert.i.i10 = getelementptr inbounds i8, ptr %.pre.i.i9, i64 -4
  %.pre2.i.i11 = load i32, ptr %.phi.trans.insert.i.i10, align 4, !tbaa !12
  br label %_ZN19maximize_ac_sharing13register_kindEi.exit12
end_hunk_1
