inline.NumInlined: 1999
inline.NumDeleted: 608
loop-unroll.NumCompletelyUnrolled: 51
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_ZN2cv15computeThetaPhiIfEEviiRKNS_4MatxIT_Li3ELi3EEERNS_3MatES7_S7_S7_:bb.a
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !121, !noalias !182 ; 3 uses
  invoke void @_ZN2cv3MatC2Eiii(ptr noundef nonnull align 8 dereferenceable(208) %22, i32 noundef %i.ak, i32 noundef %i.ai, i32 noundef 5)
          to label %.noexc96 unwind label %bb.ac

.noexc96:                                         ; preds = %bb.k
  %i.al = load i32, ptr %12, align 8, !tbaa !31, !noalias !182
  %i.am = and i32 %i.al, 16384
  %.not23.i = icmp eq i32 %i.am, 0
  br i1 %.not23.i, label %bb.l, label %.thread.i

.thread.i:                                        ; preds = %.noexc96
  %i.an = load i32, ptr %i.ah, align 4, !tbaa !120, !noalias !182
  %i.ao = load i32, ptr %i.aj, align 8, !tbaa !121, !noalias !182
  %i.ap = mul nsw i32 %i.ao, %i.an
  br label %.lr.ph29.i

bb.l:                                             ; preds = %.noexc96
  %i.aq = icmp sgt i32 %i.ak, 0
  br i1 %i.aq, label %.lr.ph29.i, label %_ZN2cv13computeRadiusIfEENS_4Mat_IT_EERKNS_3MatE.exit

.lr.ph29.i:                                       ; preds = %bb.l, %.thread.i
  %.sroa.7.035.i = phi i32 [ 1, %.thread.i ], [ %i.ak, %bb.l ]
  %.sroa.022.034.i = phi i32 [ %i.ap, %.thread.i ], [ %i.ai, %bb.l ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !137, !noalias !182 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %12, i64 128
  %i.au = load i64, ptr %i.at, align 8, !tbaa !108, !noalias !182 ; 3 uses
  %i.av = sext i32 %.sroa.022.034.i to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %22, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !137, !alias.scope !182 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %22, i64 128
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !108, !alias.scope !182 ; 3 uses
  %wide.trip.count.i = zext nneg i32 %.sroa.7.035.i to i64 ; 2 uses
  %.idx.i = shl nsw i64 %i.av, 4                  ; 4 uses
  %.not24.i = icmp eq i32 %.sroa.022.034.i, 0
  br i1 %.not24.i, label %_ZN2cv13computeRadiusIfEENS_4Mat_IT_EERKNS_3MatE.exit, label %.lr.ph.preheader.i.preheader

.lr.ph.preheader.i.preheader:                     ; preds = %.lr.ph29.i
  %i.ba = add nsw i64 %.idx.i, -16
  %i.bb = lshr exact i64 %i.ba, 2
  %i.bc = add nsw i64 %wide.trip.count.i, -1      ; 2 uses
  %i.bd = mul i64 %i.az, %i.bc
  %i.be = getelementptr i8, ptr %i.ax, i64 %i.bb
  %i.bf = getelementptr i8, ptr %i.be, i64 %i.bd
  %scevgep = getelementptr i8, ptr %i.bf, i64 4
  %i.bg = mul i64 %i.au, %i.bc
  %i.bh = getelementptr i8, ptr %i.as, i64 %i.bg
  %i.bi = getelementptr i8, ptr %i.bh, i64 %.idx.i
  %scevgep108 = getelementptr i8, ptr %i.bi, i64 -4
  %i.bj = add nsw i64 %.idx.i, -16                ; 2 uses
  %i.bk = lshr exact i64 %i.bj, 4
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bj, 64
  %bound0 = icmp ult ptr %i.ax, %scevgep108
  %bound1 = icmp ult ptr %i.as, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.bm = or i64 %i.au, %i.az
  %i.bn = icmp slt i64 %i.bm, 0
  %i.bo = or i1 %found.conflict, %i.bn
  %i.bp = and i64 %i.bl, 3                        ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 0
  %i.br = select i1 %i.bq, i64 4, i64 %i.bp
  %n.vec = sub nsw i64 %i.bl, %i.br               ; 3 uses
  %i.bs = shl i64 %n.vec, 2
  %i.bt = shl i64 %n.vec, 4
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph.preheader.i.preheader, %._crit_edge.i.loopexit
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge.i.loopexit ], [ 0, %.lr.ph.preheader.i.preheader ] ; 3 uses
  %i.bu = mul i64 %indvars.iv.i, %i.au
  %i.bv = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bu ; 7 uses
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 %.idx.i
  %i.bx = mul i64 %indvars.iv.i, %i.az
  %i.by = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bx ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.bo
  br i1 %brmerge, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %i.bz = getelementptr i8, ptr %i.by, i64 %i.bs
  %i.ca = getelementptr i8, ptr %i.bv, i64 %i.bt
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cb = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.by, i64 %i.cb
  %i.cc = shl i64 %index, 4                       ; 4 uses
  %next.gep110 = getelementptr i8, ptr %i.bv, i64 %i.cc ; 3 uses
  %i.cd = getelementptr i8, ptr %i.bv, i64 %i.cc  ; 3 uses
  %next.gep111 = getelementptr i8, ptr %i.cd, i64 16
  %i.ce = getelementptr i8, ptr %i.bv, i64 %i.cc  ; 3 uses
  %next.gep112 = getelementptr i8, ptr %i.ce, i64 32
  %i.cf = getelementptr i8, ptr %i.bv, i64 %i.cc  ; 3 uses
  %next.gep113 = getelementptr i8, ptr %i.cf, i64 48
  %i.cg = load float, ptr %next.gep110, align 4, !tbaa !138, !alias.scope !185
  %i.ch = load float, ptr %next.gep111, align 4, !tbaa !138, !alias.scope !185
  %i.ci = load float, ptr %next.gep112, align 4, !tbaa !138, !alias.scope !185
  %i.cj = load float, ptr %next.gep113, align 4, !tbaa !138, !alias.scope !185
  %i.ck = insertelement <4 x float> poison, float %i.cg, i64 0
  %i.cl = insertelement <4 x float> %i.ck, float %i.ch, i64 1
  %i.cm = insertelement <4 x float> %i.cl, float %i.ci, i64 2
  %i.cn = insertelement <4 x float> %i.cm, float %i.cj, i64 3 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %next.gep110, i64 4
  %i.cp = getelementptr i8, ptr %i.cd, i64 20
  %i.cq = getelementptr i8, ptr %i.ce, i64 36
  %i.cr = getelementptr i8, ptr %i.cf, i64 52
  %i.cs = load float, ptr %i.co, align 4, !tbaa !138, !alias.scope !185
  %i.ct = load float, ptr %i.cp, align 4, !tbaa !138, !alias.scope !185
  %i.cu = load float, ptr %i.cq, align 4, !tbaa !138, !alias.scope !185
  %i.cv = load float, ptr %i.cr, align 4, !tbaa !138, !alias.scope !185
  %i.cw = insertelement <4 x float> poison, float %i.cs, i64 0
  %i.cx = insertelement <4 x float> %i.cw, float %i.ct, i64 1
  %i.cy = insertelement <4 x float> %i.cx, float %i.cu, i64 2
  %i.cz = insertelement <4 x float> %i.cy, float %i.cv, i64 3 ; 2 uses
  %i.da = fmul <4 x float> %i.cz, %i.cz
  %i.db = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cn, <4 x float> %i.cn, <4 x float> %i.da)
  %i.dc = getelementptr inbounds nuw i8, ptr %next.gep110, i64 8
  %i.dd = getelementptr i8, ptr %i.cd, i64 24
  %i.de = getelementptr i8, ptr %i.ce, i64 40
  %i.df = getelementptr i8, ptr %i.cf, i64 56
  %i.dg = load float, ptr %i.dc, align 4, !tbaa !138, !alias.scope !185
  %i.dh = load float, ptr %i.dd, align 4, !tbaa !138, !alias.scope !185
  %i.di = load float, ptr %i.de, align 4, !tbaa !138, !alias.scope !185
  %i.dj = load float, ptr %i.df, align 4, !tbaa !138, !alias.scope !185
  %i.dk = insertelement <4 x float> poison, float %i.dg, i64 0
  %i.dl = insertelement <4 x float> %i.dk, float %i.dh, i64 1
  %i.dm = insertelement <4 x float> %i.dl, float %i.di, i64 2
  %i.dn = insertelement <4 x float> %i.dm, float %i.dj, i64 3 ; 2 uses
  %i.do = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dn, <4 x float> %i.dn, <4 x float> %i.db)
  %i.dp = call <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.do)
  store <4 x float> %i.dp, ptr %next.gep, align 4, !tbaa !138, !alias.scope !188, !noalias !185
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dq = icmp eq i64 %index.next, %n.vec
  br i1 %i.dq, label %.lr.ph.i.preheader, label %vector.body, !llvm.loop !190

.lr.ph.i.preheader:                               ; preds = %vector.body, %.lr.ph.preheader.i
  %.026.i.ph = phi ptr [ %i.by, %.lr.ph.preheader.i ], [ %i.bz, %vector.body ]
  %.02025.i.ph = phi ptr [ %i.bv, %.lr.ph.preheader.i ], [ %i.ca, %vector.body ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.026.i = phi ptr [ %i.ea, %.lr.ph.i ], [ %.026.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.02025.i = phi ptr [ %i.dz, %.lr.ph.i ], [ %.02025.i.ph, %.lr.ph.i.preheader ] ; 4 uses
  %i.dr = load float, ptr %.02025.i, align 4, !tbaa !138 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.02025.i, i64 4
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !138 ; 2 uses
  %i.du = fmul float %i.dt, %i.dt
  %i.dv = call float @llvm.fmuladd.f32(float %i.dr, float %i.dr, float %i.du)
  %i.dw = getelementptr inbounds nuw i8, ptr %.02025.i, i64 8
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !138 ; 2 uses
  %i.dy = call float @llvm.fmuladd.f32(float %i.dx, float %i.dx, float %i.dv)
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.dy)
  store float %sqrt.i.i, ptr %.026.i, align 4, !tbaa !138
  %i.dz = getelementptr inbounds nuw i8, ptr %.02025.i, i64 16 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.026.i, i64 4
  %.not.i = icmp eq ptr %i.dz, %i.bw
  br i1 %.not.i, label %._crit_edge.i.loopexit, label %.lr.ph.i, !llvm.loop !191

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN2cv13computeRadiusIfEENS_4Mat_IT_EERKNS_3MatE.exit, label %.lr.ph.preheader.i, !llvm.loop !150

_ZN2cv13computeRadiusIfEENS_4Mat_IT_EERKNS_3MatE.exit: ; preds = %._crit_edge.i.loopexit, %.lr.ph29.i, %bb.l
  call void @_ZN2cv3MatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(208) %21, ptr noundef nonnull align 8 dereferenceable(208) %22) #20
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %22) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  %i.eb = icmp sgt i32 %0, 0
  br i1 %i.eb, label %.lr.ph104, label %._crit_edge105

.lr.ph104:                                        ; preds = %_ZN2cv13computeRadiusIfEENS_4Mat_IT_EERKNS_3MatE.exit
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !137
  %i.ee = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !108
  %i.eg = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !137
  %i.ei = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !108
  %i.ek = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !137
  %i.em = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.en = load i64, ptr %i.em, align 8, !tbaa !108
  %i.eo = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !137
  %i.eq = getelementptr inbounds nuw i8, ptr %6, i64 128
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !108
  %i.es = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !137
  %i.eu = getelementptr inbounds nuw i8, ptr %12, i64 128
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !108
  %i.ew = load i32, ptr %i.ah, align 4, !tbaa !120 ; 2 uses
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw i8, ptr %21, i64 24
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !137
  %i.fa = getelementptr inbounds nuw i8, ptr %21, i64 128
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !108
  %wide.trip.count = zext nneg i32 %0 to i64
  %.idx = shl nuw nsw i64 %i.ex, 4
  %i.fc = icmp sgt i32 %i.ew, 0
  br i1 %i.fc, label %.lr.ph.preheader, label %._crit_edge105

._crit_edge105:                                   ; preds = %._crit_edge, %.lr.ph104, %_ZN2cv13computeRadiusIfEENS_4Mat_IT_EERKNS_3MatE.exit
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  ret void

bb.m:                                             ; preds = %bb.a
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %.body, %bb.m
  %.pn = phi { ptr, i32 } [ %i.g, %.body ], [ %i.fd, %bb.m ]
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %bb.ae

bb.o:                                             ; preds = %.noexc, %bb.c
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %.body87

bb.p:                                             ; preds = %bb.f, %bb.e
  %i.ff = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #20
  br label %.body87

.body87:                                          ; preds = %bb.o, %bb.d, %bb.p
  %.pn70.pn.pn = phi { ptr, i32 } [ %i.ff, %bb.p ], [ %i.fe, %bb.o ], [ %i.w, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %bb.ad

bb.q:                                             ; preds = %bb.g
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %_ZN2cv4Mat_IfEC2Eii.exit
  %i.fh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #20
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn75 = phi { ptr, i32 } [ %i.fh, %bb.r ], [ %i.fg, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  br label %bb.ad

bb.t:                                             ; preds = %bb.h
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %_ZN2cv4Mat_IfEC2Eii.exit91
  %i.fj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #20
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn77 = phi { ptr, i32 } [ %i.fj, %bb.u ], [ %i.fi, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  br label %bb.ad

bb.w:                                             ; preds = %bb.i
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %_ZN2cv4Mat_IfEC2Eii.exit93
  %i.fl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #20
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.pn79 = phi { ptr, i32 } [ %i.fl, %bb.x ], [ %i.fk, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  br label %bb.ad

bb.z:                                             ; preds = %bb.j
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.aa:                                            ; preds = %_ZN2cv4Mat_IfEC2Eii.exit95
  %i.fn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #20
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.pn81 = phi { ptr, i32 } [ %i.fn, %bb.aa ], [ %i.fm, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  br label %bb.ad

bb.ac:                                            ; preds = %bb.k
  %i.fo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  br label %bb.ad

.lr.ph.preheader:                                 ; preds = %.lr.ph104, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %.lr.ph104 ] ; 7 uses
  %23 = mul i64 %i.ev, %indvars.iv
  %24 = getelementptr inbounds nuw i8, ptr %i.et, i64 %23 ; 2 uses
  %25 = getelementptr inbounds nuw i8, ptr %24, i64 %.idx
  %i.fp = mul i64 %i.fb, %indvars.iv
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.fp
  %i.fr = mul i64 %i.er, %indvars.iv
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.fr
  %i.ft = mul i64 %i.en, %indvars.iv
  %i.fu = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ft
  %i.fv = mul i64 %i.ej, %indvars.iv
  %i.fw = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.fv
  %i.fx = mul i64 %i.ef, %indvars.iv
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.fx
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.062102 = phi ptr [ %i.gr, %.lr.ph ], [ %i.fq, %.lr.ph.preheader ] ; 2 uses
  %.064101 = phi ptr [ %i.gq, %.lr.ph ], [ %24, %.lr.ph.preheader ] ; 4 uses
  %.065100 = phi ptr [ %i.gp, %.lr.ph ], [ %i.fs, %.lr.ph.preheader ] ; 2 uses
  %.06699 = phi ptr [ %i.go, %.lr.ph ], [ %i.fu, %.lr.ph.preheader ] ; 2 uses
  %.06798 = phi ptr [ %i.gn, %.lr.ph ], [ %i.fw, %.lr.ph.preheader ] ; 2 uses
  %.06897 = phi ptr [ %i.gm, %.lr.ph ], [ %i.fy, %.lr.ph.preheader ] ; 2 uses
  %i.fz = load float, ptr %.064101, align 4, !tbaa !138
  %i.ga = getelementptr inbounds nuw i8, ptr %.064101, i64 8
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !138
  %i.gc = call noundef float @atan2f(float noundef %i.fz, float noundef %i.gb) #20 ; 2 uses
  %i.gd = call noundef float @cosf(float noundef %i.gc) #20
  store float %i.gd, ptr %.06897, align 4, !tbaa !138
  %i.ge = call noundef float @sinf(float noundef %i.gc) #20
  store float %i.ge, ptr %.06798, align 4, !tbaa !138
  %i.gf = getelementptr inbounds nuw i8, ptr %.064101, i64 4
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !138
  %i.gh = load float, ptr %.062102, align 4, !tbaa !138
  %i.gi = fdiv float %i.gg, %i.gh
  %i.gj = call noundef float @asinf(float noundef %i.gi) #20 ; 2 uses
  %i.gk = call noundef float @cosf(float noundef %i.gj) #20
  store float %i.gk, ptr %.06699, align 4, !tbaa !138
  %i.gl = call noundef float @sinf(float noundef %i.gj) #20
  store float %i.gl, ptr %.065100, align 4, !tbaa !138
  %i.gm = getelementptr inbounds nuw i8, ptr %.06897, i64 4
  %i.gn = getelementptr inbounds nuw i8, ptr %.06798, i64 4
  %i.go = getelementptr inbounds nuw i8, ptr %.06699, i64 4
  %i.gp = getelementptr inbounds nuw i8, ptr %.065100, i64 4
  %i.gq = getelementptr inbounds nuw i8, ptr %.064101, i64 16 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.062102, i64 4
  %i.gs = icmp ult ptr %i.gq, %25
  br i1 %i.gs, label %.lr.ph, label %._crit_edge, !llvm.loop !192

._crit_edge:                                      ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge105, label %.lr.ph.preheader, !llvm.loop !193

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.y, %bb.v, %bb.s, %.body87
  %.pn83 = phi { ptr, i32 } [ %i.fo, %bb.ac ], [ %.pn81, %bb.ab ], [ %.pn79, %bb.y ], [ %.pn77, %bb.v ], [ %.pn75, %bb.s ], [ %.pn70.pn.pn, %.body87 ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #20
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.n
  %.pn83.pn = phi { ptr, i32 } [ %.pn83, %bb.ad ], [ %.pn, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  resume { ptr, i32 } %.pn83.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv3MatcvNS_4MatxIT_XT0_EXT1_EEEIfLi3ELi3EEEv(ptr dead_on_unwind noalias writable sret(%"class.cv::Matx.38") align 4 %0, ptr noundef nonnull align 8 dereferenceable(208) %1) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %4 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %5 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !137  ; 10 uses
  %.not = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp slt i32 %i.d, 3
  %or.cond = select i1 %.not, i1 %i.e, i1 false
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp eq i32 %i.g, 3
  %or.cond17 = select i1 %or.cond, i1 %i.h, i1 false
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.j = load i32, ptr %i.i, align 4
  %i.k = icmp eq i32 %i.j, 3
  %or.cond20 = select i1 %or.cond17, i1 %i.k, i1 false
  br i1 %or.cond20, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = load i32, ptr %1, align 8, !tbaa !31     ; 2 uses
  %i.m = and i32 %i.l, 4064
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.15, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZNK2cv3MatcvNS_4MatxIT_XT0_EXT1_EEEIfLi3ELi3EEEv, ptr noundef nonnull @.str.13, i32 noundef 1314) #21
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %2, align 8, !tbaa !8      ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.t = load i64, ptr %i.r, align 8, !tbaa !14
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.o, %bb.f ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.p, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.n

bb.h:                                             ; preds = %bb.b
  %i.v = and i32 %i.l, 16415
  %or.cond12 = icmp eq i32 %i.v, 16389
  br i1 %or.cond12, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.w = load float, ptr %i.b, align 4, !tbaa !138
  store float %i.w, ptr %0, align 4, !tbaa !138
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.y = load float, ptr %i.x, align 4, !tbaa !138
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.y, ptr %i.z, align 4, !tbaa !138
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !138
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.ab, ptr %i.ac, align 4, !tbaa !138
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !138
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.ae, ptr %i.af, align 4, !tbaa !138
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !138
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.ah, ptr %i.ai, align 4, !tbaa !138
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !138
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.ak, ptr %i.al, align 4, !tbaa !138
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.an = load float, ptr %i.am, align 4, !tbaa !138
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.an, ptr %i.ao, align 4, !tbaa !138
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !138
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %i.aq, ptr %i.ar, align 4, !tbaa !138
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.at = load float, ptr %i.as, align 4, !tbaa !138
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.at, ptr %i.au, align 4, !tbaa !138
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %0, i8 0, i64 36, i1 false), !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %4, i32 noundef 3, i32 noundef 3, i32 noundef 5, ptr noundef nonnull %0, i64 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 0, ptr %i.aw, align 8
  store i32 33619968, ptr %5, align 8, !tbaa !122
  store ptr %4, ptr %i.av, align 8, !tbaa !18
  %i.ax = load i32, ptr %4, align 8, !tbaa !31
  %i.ay = and i32 %i.ax, 4095
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %i.ay, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.n

bb.m:                                             ; preds = %bb.k, %bb.i
  ret void

bb.n:                                             ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn6.pn = phi { ptr, i32 } [ %i.az, %bb.l ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn6.pn
}

declare void @_ZNK2cv3Mat3mulERKNS_11_InputArrayEd(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), double noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %0) unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 432
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.c) #20
  ret void
}

declare void @_ZN2cv5mergeERKNS_11_InputArrayERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare void @_ZN2cv9boxFilterERKNS_11_InputArrayERKNS_12_OutputArrayEiNS_5Size_IiEENS_6Point_IiEEbi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i64, i64, i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

declare noundef double @_ZN2cv6invertERKNS_11_InputArrayERKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !153    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !157  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.d, %.lr.ph.i.i ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i) #20
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 208 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !169

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !153
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit
end_hunk_0
begin_hunk_1_@_ZN2cv15computeThetaPhiIdEEviiRKNS_4MatxIT_Li3ELi3EEERNS_3MatES7_S7_S7_:bb.a
bb.j:                                             ; preds = %_ZN2cv4Mat_IdEC2Eii.exit93
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  invoke void @_ZN2cv3MatC2Eiii(ptr noundef nonnull align 8 dereferenceable(208) %20, i32 noundef %0, i32 noundef %1, i32 noundef 6)
          to label %_ZN2cv4Mat_IdEC2Eii.exit95 unwind label %bb.z

_ZN2cv4Mat_IdEC2Eii.exit95:                       ; preds = %bb.j
  %i.af = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(208) %20)
          to label %bb.k unwind label %bb.aa      ; 0 uses

bb.k:                                             ; preds = %_ZN2cv4Mat_IdEC2Eii.exit95
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !237)
  %i.ag = getelementptr inbounds nuw i8, ptr %12, i64 12 ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !120, !noalias !237 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !121, !noalias !237 ; 3 uses
  invoke void @_ZN2cv3MatC2Eiii(ptr noundef nonnull align 8 dereferenceable(208) %22, i32 noundef %i.aj, i32 noundef %i.ah, i32 noundef 6)
          to label %.noexc96 unwind label %bb.ac

.noexc96:                                         ; preds = %bb.k
  %i.ak = load i32, ptr %12, align 8, !tbaa !31, !noalias !237
  %i.al = and i32 %i.ak, 16384
  %.not23.i = icmp eq i32 %i.al, 0
  br i1 %.not23.i, label %bb.l, label %.thread.i

.thread.i:                                        ; preds = %.noexc96
  %i.am = load i32, ptr %i.ag, align 4, !tbaa !120, !noalias !237
  %i.an = load i32, ptr %i.ai, align 8, !tbaa !121, !noalias !237
  %i.ao = mul nsw i32 %i.an, %i.am
  br label %.lr.ph29.i

bb.l:                                             ; preds = %.noexc96
  %i.ap = icmp sgt i32 %i.aj, 0
  br i1 %i.ap, label %.lr.ph29.i, label %_ZN2cv13computeRadiusIdEENS_4Mat_IT_EERKNS_3MatE.exit

.lr.ph29.i:                                       ; preds = %bb.l, %.thread.i
  %.sroa.7.035.i = phi i32 [ 1, %.thread.i ], [ %i.aj, %bb.l ]
  %.sroa.022.034.i = phi i32 [ %i.ao, %.thread.i ], [ %i.ah, %bb.l ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !137, !noalias !237 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 128
  %i.at = load i64, ptr %i.as, align 8, !tbaa !108, !noalias !237 ; 3 uses
  %i.au = sext i32 %.sroa.022.034.i to i64
  %i.av = getelementptr inbounds nuw i8, ptr %22, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !137, !alias.scope !237 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %22, i64 128
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !108, !alias.scope !237 ; 3 uses
  %wide.trip.count.i = zext nneg i32 %.sroa.7.035.i to i64 ; 2 uses
  %.idx.i = shl nsw i64 %i.au, 5                  ; 4 uses
  %.not24.i = icmp eq i32 %.sroa.022.034.i, 0
  br i1 %.not24.i, label %_ZN2cv13computeRadiusIdEENS_4Mat_IT_EERKNS_3MatE.exit, label %.lr.ph.preheader.i.preheader

.lr.ph.preheader.i.preheader:                     ; preds = %.lr.ph29.i
  %i.az = add nsw i64 %.idx.i, -32
  %i.ba = lshr exact i64 %i.az, 2
  %i.bb = add nsw i64 %wide.trip.count.i, -1      ; 2 uses
  %i.bc = mul i64 %i.ay, %i.bb
  %i.bd = getelementptr i8, ptr %i.aw, i64 %i.ba
  %i.be = getelementptr i8, ptr %i.bd, i64 %i.bc
  %scevgep = getelementptr i8, ptr %i.be, i64 8
  %i.bf = mul i64 %i.at, %i.bb
  %i.bg = getelementptr i8, ptr %i.ar, i64 %i.bf
  %i.bh = getelementptr i8, ptr %i.bg, i64 %.idx.i
  %scevgep108 = getelementptr i8, ptr %i.bh, i64 -8
  %i.bi = add nsw i64 %.idx.i, -32                ; 3 uses
  %i.bj = lshr exact i64 %i.bi, 5
  %i.bk = add nuw nsw i64 %i.bj, 1
  %min.iters.check = icmp ult i64 %i.bi, 64
  %bound0 = icmp ult ptr %i.aw, %scevgep108
  %bound1 = icmp ult ptr %i.ar, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.bl = or i64 %i.at, %i.ay
  %i.bm = icmp slt i64 %i.bl, 0
  %i.bn = or i1 %found.conflict, %i.bm
  %i.bo = and i64 %i.bi, 32
  %.not = icmp eq i64 %i.bo, 0
  %.neg = select i1 %.not, i64 -1, i64 -2
  %n.vec = add nsw i64 %.neg, %i.bk               ; 3 uses
  %i.bp = shl i64 %n.vec, 3
  %i.bq = shl i64 %n.vec, 5
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph.preheader.i.preheader, %._crit_edge.i.loopexit
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge.i.loopexit ], [ 0, %.lr.ph.preheader.i.preheader ] ; 3 uses
  %i.br = mul i64 %indvars.iv.i, %i.at
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.br ; 5 uses
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 %.idx.i
  %i.bu = mul i64 %indvars.iv.i, %i.ay
  %i.bv = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bu ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.bn
  br i1 %brmerge, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %i.bw = getelementptr i8, ptr %i.bv, i64 %i.bp
  %i.bx = getelementptr i8, ptr %i.bs, i64 %i.bq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.by = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.bv, i64 %i.by
  %i.bz = shl i64 %index, 5                       ; 2 uses
  %next.gep110 = getelementptr i8, ptr %i.bs, i64 %i.bz ; 3 uses
  %i.ca = getelementptr i8, ptr %i.bs, i64 %i.bz  ; 3 uses
  %next.gep111 = getelementptr i8, ptr %i.ca, i64 32
  %i.cb = load double, ptr %next.gep110, align 8, !tbaa !212, !alias.scope !240
  %i.cc = load double, ptr %next.gep111, align 8, !tbaa !212, !alias.scope !240
  %i.cd = insertelement <2 x double> poison, double %i.cb, i64 0
  %i.ce = insertelement <2 x double> %i.cd, double %i.cc, i64 1 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %next.gep110, i64 8
  %i.cg = getelementptr i8, ptr %i.ca, i64 40
  %i.ch = load double, ptr %i.cf, align 8, !tbaa !212, !alias.scope !240
  %i.ci = load double, ptr %i.cg, align 8, !tbaa !212, !alias.scope !240
  %i.cj = insertelement <2 x double> poison, double %i.ch, i64 0
  %i.ck = insertelement <2 x double> %i.cj, double %i.ci, i64 1 ; 2 uses
  %i.cl = fmul <2 x double> %i.ck, %i.ck
  %i.cm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ce, <2 x double> %i.ce, <2 x double> %i.cl)
  %i.cn = getelementptr inbounds nuw i8, ptr %next.gep110, i64 16
  %i.co = getelementptr i8, ptr %i.ca, i64 48
  %i.cp = load double, ptr %i.cn, align 8, !tbaa !212, !alias.scope !240
  %i.cq = load double, ptr %i.co, align 8, !tbaa !212, !alias.scope !240
  %i.cr = insertelement <2 x double> poison, double %i.cp, i64 0
  %i.cs = insertelement <2 x double> %i.cr, double %i.cq, i64 1 ; 2 uses
  %i.ct = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cs, <2 x double> %i.cs, <2 x double> %i.cm)
  %i.cu = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.ct)
  store <2 x double> %i.cu, ptr %next.gep, align 8, !tbaa !212, !alias.scope !243, !noalias !240
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.cv = icmp eq i64 %index.next, %n.vec
  br i1 %i.cv, label %.lr.ph.i.preheader, label %vector.body, !llvm.loop !245

.lr.ph.i.preheader:                               ; preds = %vector.body, %.lr.ph.preheader.i
  %.026.i.ph = phi ptr [ %i.bv, %.lr.ph.preheader.i ], [ %i.bw, %vector.body ]
  %.02025.i.ph = phi ptr [ %i.bs, %.lr.ph.preheader.i ], [ %i.bx, %vector.body ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.026.i = phi ptr [ %i.df, %.lr.ph.i ], [ %.026.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.02025.i = phi ptr [ %i.de, %.lr.ph.i ], [ %.02025.i.ph, %.lr.ph.i.preheader ] ; 4 uses
  %i.cw = load double, ptr %.02025.i, align 8, !tbaa !212 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.02025.i, i64 8
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !212 ; 2 uses
  %i.cz = fmul double %i.cy, %i.cy
  %i.da = call double @llvm.fmuladd.f64(double %i.cw, double %i.cw, double %i.cz)
  %i.db = getelementptr inbounds nuw i8, ptr %.02025.i, i64 16
  %i.dc = load double, ptr %i.db, align 8, !tbaa !212 ; 2 uses
  %i.dd = call double @llvm.fmuladd.f64(double %i.dc, double %i.dc, double %i.da)
  %sqrt.i.i = call noundef double @llvm.sqrt.f64(double %i.dd)
  store double %sqrt.i.i, ptr %.026.i, align 8, !tbaa !212
  %i.de = getelementptr inbounds nuw i8, ptr %.02025.i, i64 32 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.026.i, i64 8
  %.not.i = icmp eq ptr %i.de, %i.bt
  br i1 %.not.i, label %._crit_edge.i.loopexit, label %.lr.ph.i, !llvm.loop !246

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN2cv13computeRadiusIdEENS_4Mat_IT_EERKNS_3MatE.exit, label %.lr.ph.preheader.i, !llvm.loop !220

_ZN2cv13computeRadiusIdEENS_4Mat_IT_EERKNS_3MatE.exit: ; preds = %._crit_edge.i.loopexit, %.lr.ph29.i, %bb.l
  call void @_ZN2cv3MatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(208) %21, ptr noundef nonnull align 8 dereferenceable(208) %22) #20
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %22) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  %i.dg = icmp sgt i32 %0, 0
  br i1 %i.dg, label %.lr.ph104, label %._crit_edge105

.lr.ph104:                                        ; preds = %_ZN2cv13computeRadiusIdEENS_4Mat_IT_EERKNS_3MatE.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !137
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !108
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !137
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !108
  %i.dp = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !137
  %i.dr = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !108
  %i.dt = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !137
  %i.dv = getelementptr inbounds nuw i8, ptr %6, i64 128
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !108
  %i.dx = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !137
  %i.dz = getelementptr inbounds nuw i8, ptr %12, i64 128
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !108
  %i.eb = load i32, ptr %i.ag, align 4, !tbaa !120 ; 2 uses
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw i8, ptr %21, i64 24
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !137
  %i.ef = getelementptr inbounds nuw i8, ptr %21, i64 128
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !108
  %wide.trip.count = zext nneg i32 %0 to i64
  %.idx = shl nuw nsw i64 %i.ec, 5
  %i.eh = icmp sgt i32 %i.eb, 0
  br i1 %i.eh, label %.lr.ph.preheader, label %._crit_edge105

._crit_edge105:                                   ; preds = %._crit_edge, %.lr.ph104, %_ZN2cv13computeRadiusIdEENS_4Mat_IT_EERKNS_3MatE.exit
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  ret void

bb.m:                                             ; preds = %bb.a
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %.body, %bb.m
  %.pn = phi { ptr, i32 } [ %i.f, %.body ], [ %i.ei, %bb.m ]
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %bb.ae

bb.o:                                             ; preds = %.noexc, %bb.c
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %.body87

bb.p:                                             ; preds = %bb.f, %bb.e
  %i.ek = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #20
  br label %.body87

.body87:                                          ; preds = %bb.o, %bb.d, %bb.p
  %.pn70.pn.pn = phi { ptr, i32 } [ %i.ek, %bb.p ], [ %i.ej, %bb.o ], [ %i.v, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %bb.ad

bb.q:                                             ; preds = %bb.g
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %_ZN2cv4Mat_IdEC2Eii.exit
  %i.em = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #20
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn75 = phi { ptr, i32 } [ %i.em, %bb.r ], [ %i.el, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  br label %bb.ad

bb.t:                                             ; preds = %bb.h
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %_ZN2cv4Mat_IdEC2Eii.exit91
  %i.eo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #20
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn77 = phi { ptr, i32 } [ %i.eo, %bb.u ], [ %i.en, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  br label %bb.ad

bb.w:                                             ; preds = %bb.i
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %_ZN2cv4Mat_IdEC2Eii.exit93
  %i.eq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #20
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.pn79 = phi { ptr, i32 } [ %i.eq, %bb.x ], [ %i.ep, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  br label %bb.ad

bb.z:                                             ; preds = %bb.j
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.aa:                                            ; preds = %_ZN2cv4Mat_IdEC2Eii.exit95
  %i.es = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #20
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.pn81 = phi { ptr, i32 } [ %i.es, %bb.aa ], [ %i.er, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  br label %bb.ad

bb.ac:                                            ; preds = %bb.k
  %i.et = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  br label %bb.ad

.lr.ph.preheader:                                 ; preds = %.lr.ph104, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %.lr.ph104 ] ; 7 uses
  %23 = mul i64 %i.ea, %indvars.iv
  %24 = getelementptr inbounds nuw i8, ptr %i.dy, i64 %23 ; 2 uses
  %25 = getelementptr inbounds nuw i8, ptr %24, i64 %.idx
  %i.eu = mul i64 %i.eg, %indvars.iv
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.eu
  %i.ew = mul i64 %i.dw, %indvars.iv
  %i.ex = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.ew
  %i.ey = mul i64 %i.ds, %indvars.iv
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.ey
  %i.fa = mul i64 %i.do, %indvars.iv
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.fa
  %i.fc = mul i64 %i.dk, %indvars.iv
  %i.fd = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.fc
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.062102 = phi ptr [ %i.gc, %.lr.ph ], [ %i.ev, %.lr.ph.preheader ] ; 2 uses
  %.064101 = phi ptr [ %i.gb, %.lr.ph ], [ %24, %.lr.ph.preheader ] ; 4 uses
  %.065100 = phi ptr [ %i.ga, %.lr.ph ], [ %i.ex, %.lr.ph.preheader ] ; 2 uses
  %.06699 = phi ptr [ %i.fz, %.lr.ph ], [ %i.ez, %.lr.ph.preheader ] ; 2 uses
  %.06798 = phi ptr [ %i.fy, %.lr.ph ], [ %i.fb, %.lr.ph.preheader ] ; 2 uses
  %.06897 = phi ptr [ %i.fx, %.lr.ph ], [ %i.fd, %.lr.ph.preheader ] ; 2 uses
  %i.fe = load double, ptr %.064101, align 8, !tbaa !212
  %i.ff = getelementptr inbounds nuw i8, ptr %.064101, i64 16
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !212
  %i.fh = call double @atan2(double noundef %i.fe, double noundef %i.fg) #20
  %i.fi = fptrunc double %i.fh to float           ; 2 uses
  %i.fj = call noundef float @cosf(float noundef %i.fi) #20
  %i.fk = fpext float %i.fj to double
  store double %i.fk, ptr %.06897, align 8, !tbaa !212
  %i.fl = call noundef float @sinf(float noundef %i.fi) #20
  %i.fm = fpext float %i.fl to double
  store double %i.fm, ptr %.06798, align 8, !tbaa !212
  %i.fn = getelementptr inbounds nuw i8, ptr %.064101, i64 8
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !212
  %i.fp = load double, ptr %.062102, align 8, !tbaa !212
  %i.fq = fdiv double %i.fo, %i.fp
  %i.fr = call double @asin(double noundef %i.fq) #20
  %i.fs = fptrunc double %i.fr to float           ; 2 uses
  %i.ft = call noundef float @cosf(float noundef %i.fs) #20
  %i.fu = fpext float %i.ft to double
  store double %i.fu, ptr %.06699, align 8, !tbaa !212
  %i.fv = call noundef float @sinf(float noundef %i.fs) #20
  %i.fw = fpext float %i.fv to double
  store double %i.fw, ptr %.065100, align 8, !tbaa !212
  %i.fx = getelementptr inbounds nuw i8, ptr %.06897, i64 8
  %i.fy = getelementptr inbounds nuw i8, ptr %.06798, i64 8
  %i.fz = getelementptr inbounds nuw i8, ptr %.06699, i64 8
  %i.ga = getelementptr inbounds nuw i8, ptr %.065100, i64 8
  %i.gb = getelementptr inbounds nuw i8, ptr %.064101, i64 32 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.062102, i64 8
  %i.gd = icmp ult ptr %i.gb, %25
  br i1 %i.gd, label %.lr.ph, label %._crit_edge, !llvm.loop !247

._crit_edge:                                      ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge105, label %.lr.ph.preheader, !llvm.loop !248

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.y, %bb.v, %bb.s, %.body87
  %.pn83 = phi { ptr, i32 } [ %i.et, %bb.ac ], [ %.pn81, %bb.ab ], [ %.pn79, %bb.y ], [ %.pn77, %bb.v ], [ %.pn75, %bb.s ], [ %.pn70.pn.pn, %.body87 ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #20
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.n
  %.pn83.pn = phi { ptr, i32 } [ %.pn83, %bb.ad ], [ %.pn, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  resume { ptr, i32 } %.pn83.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv3MatcvNS_4MatxIT_XT0_EXT1_EEEIdLi3ELi3EEEv(ptr dead_on_unwind noalias writable sret(%"class.cv::Matx.61") align 8 %0, ptr noundef nonnull align 8 dereferenceable(208) %1) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %4 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %5 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !137  ; 10 uses
  %.not = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp slt i32 %i.d, 3
  %or.cond = select i1 %.not, i1 %i.e, i1 false
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp eq i32 %i.g, 3
  %or.cond17 = select i1 %or.cond, i1 %i.h, i1 false
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.j = load i32, ptr %i.i, align 4
  %i.k = icmp eq i32 %i.j, 3
  %or.cond20 = select i1 %or.cond17, i1 %i.k, i1 false
  br i1 %or.cond20, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = load i32, ptr %1, align 8, !tbaa !31     ; 2 uses
  %i.m = and i32 %i.l, 4064
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.15, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZNK2cv3MatcvNS_4MatxIT_XT0_EXT1_EEEIfLi3ELi3EEEv, ptr noundef nonnull @.str.13, i32 noundef 1314) #21
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %2, align 8, !tbaa !8      ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.t = load i64, ptr %i.r, align 8, !tbaa !14
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.o, %bb.f ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.p, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.n

bb.h:                                             ; preds = %bb.b
  %i.v = and i32 %i.l, 16415
  %or.cond12 = icmp eq i32 %i.v, 16390
  br i1 %or.cond12, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.w = load double, ptr %i.b, align 8, !tbaa !212
  store double %i.w, ptr %0, align 8, !tbaa !212
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.y = load double, ptr %i.x, align 8, !tbaa !212
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.y, ptr %i.z, align 8, !tbaa !212
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !212
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.ab, ptr %i.ac, align 8, !tbaa !212
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !212
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.ae, ptr %i.af, align 8, !tbaa !212
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !212
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %i.ah, ptr %i.ai, align 8, !tbaa !212
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !212
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %i.ak, ptr %i.al, align 8, !tbaa !212
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.an = load double, ptr %i.am, align 8, !tbaa !212
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double %i.an, ptr %i.ao, align 8, !tbaa !212
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !212
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %i.aq, ptr %i.ar, align 8, !tbaa !212
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.at = load double, ptr %i.as, align 8, !tbaa !212
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double %i.at, ptr %i.au, align 8, !tbaa !212
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 72, i1 false), !tbaa !212
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %4, i32 noundef 3, i32 noundef 3, i32 noundef 6, ptr noundef nonnull %0, i64 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 0, ptr %i.aw, align 8
  store i32 33619968, ptr %5, align 8, !tbaa !122
  store ptr %4, ptr %i.av, align 8, !tbaa !18
  %i.ax = load i32, ptr %4, align 8, !tbaa !31
  %i.ay = and i32 %i.ax, 4095
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %i.ay, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.n

bb.m:                                             ; preds = %bb.k, %bb.i
  ret void

bb.n:                                             ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn6.pn = phi { ptr, i32 } [ %i.az, %bb.l ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn6.pn
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @asin(double noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv7LINEMODIfEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(472) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 472) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv7LINEMODIfEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(472) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(456) dereferenceable(456) %i.a) #20, !inline_history !249
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv7LINEMODIfEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(472) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv7LINEMODIfEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 472) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv7LINEMODIfEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(472) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_1
