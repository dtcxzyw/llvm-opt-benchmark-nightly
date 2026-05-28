inline.NumInlined: 1132
inline.NumDeleted: 755
begin_hunk_0_@_ZN6Assimp11MMDImporter10CreateMeshEPKN3pmx8PmxModelEii:bb.a
.lr.ph.preheader:                                 ; preds = %.new, %.prol.loopexit
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store ptr %i.m, ptr %i.an, align 8
  %umax = tail call i32 @llvm.umax.i32(i32 %i.h, i32 1)
  %wide.trip.count = zext i32 %umax to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store ptr %i.m, ptr %i.ao, align 8
  %i.ap = zext i32 %3 to i64                      ; 2 uses
  %i.aq = mul nuw nsw i64 %i.ap, 12               ; 5 uses
  %i.ar = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.aq) #25 ; 2 uses
  %i.as = icmp eq i32 %3, 0
  br i1 %i.as, label %.thread568, label %.loopexit596.loopexit

.thread568:                                       ; preds = %._crit_edge
  store ptr %i.ar, ptr %i.d, align 8
  %i.at = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.aq) #25
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store ptr %i.at, ptr %i.au, align 8
  %i.av = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.aq) #25
  br label %.loopexit596

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %indvars.iv ; 2 uses
  store i32 3, ptr %i.aw, align 8
  %i.ax = tail call noalias noundef nonnull dereferenceable(12) ptr @_Znam(i64 noundef 12) #25 ; 4 uses
  %i.ay = trunc nuw i64 %indvars.iv to i32
  %i.az = mul i32 %i.ay, 3                        ; 3 uses
  store i32 %i.az, ptr %i.ax, align 4
  %i.ba = add i32 %i.az, 1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  store i32 %i.ba, ptr %i.bb, align 4
  %i.bc = add i32 %i.az, 2
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i32 %i.bc, ptr %i.bd, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %i.ax, ptr %i.be, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.thread, label %.lr.ph, !llvm.loop !26

._crit_edge.thread:                               ; preds = %.lr.ph
  %i.bf = zext i32 %3 to i64                      ; 2 uses
  %i.bg = mul nuw nsw i64 %i.bf, 12               ; 2 uses
  %i.bh = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bg) #25
  br label %.loopexit596.loopexit

.loopexit596.loopexit:                            ; preds = %._crit_edge.thread, %._crit_edge
  %i.bi = phi ptr [ %i.bh, %._crit_edge.thread ], [ %i.ar, %._crit_edge ] ; 2 uses
  %i.bj = phi i64 [ %i.bg, %._crit_edge.thread ], [ %i.aq, %._crit_edge ] ; 4 uses
  %i.bk = phi i64 [ %i.bf, %._crit_edge.thread ], [ %i.ap, %._crit_edge ]
  %i.bl = add nsw i64 %i.bj, -12                  ; 2 uses
  %i.bm = urem i64 %i.bl, 12
  %i.bn = sub nuw nsw i64 %i.bl, %i.bm
  %i.bo = add nsw i64 %i.bn, 12                   ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bi, i8 0, i64 %i.bo, i1 false)
  store ptr %i.bi, ptr %i.d, align 8
  %i.bp = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bj) #25 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bp, i8 0, i64 %i.bo, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store ptr %i.bp, ptr %i.bq, align 8
  %i.br = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bj) #25 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.br, i8 0, i64 %i.bo, i1 false)
  br label %.loopexit596

.loopexit596:                                     ; preds = %.loopexit596.loopexit, %.thread568
  %i.bs = phi i1 [ true, %.thread568 ], [ false, %.loopexit596.loopexit ]
  %i.bt = phi i64 [ %i.aq, %.thread568 ], [ %i.bj, %.loopexit596.loopexit ] ; 3 uses
  %i.bu = phi i64 [ 0, %.thread568 ], [ %i.bk, %.loopexit596.loopexit ]
  %i.bv = phi ptr [ %i.av, %.thread568 ], [ %i.br, %.loopexit596.loopexit ]
  %i.bw = phi ptr [ %i.au, %.thread568 ], [ %i.bq, %.loopexit596.loopexit ]
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 5 uses
  store ptr %i.bv, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 176 ; 3 uses
  store i32 2, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 5 ; 3 uses
  %i.ca = load i8, ptr %i.bz, align 1             ; 2 uses
  %i.cb = zext i8 %i.ca to i32                    ; 2 uses
  %.not640 = icmp eq i8 %i.ca, 0
  br i1 %.not640, label %._crit_edge644, label %.lr.ph643

.lr.ph643:                                        ; preds = %.loopexit596
  br i1 %i.bs, label %.lr.ph643.split.us.preheader, label %.lr.ph643.split.preheader

.lr.ph643.split.preheader:                        ; preds = %.lr.ph643
  %i.cc = add nsw i64 %i.bt, -12                  ; 2 uses
  %i.cd = urem i64 %i.cc, 12
  %i.ce = sub nuw nsw i64 %i.cc, %i.cd
  %i.cf = add nsw i64 %i.ce, 12
  %i.cg = add nuw nsw i32 %i.cb, 1
  %wide.trip.count694 = zext nneg i32 %i.cg to i64
  br label %.lr.ph643.split

.lr.ph643.split.us.preheader:                     ; preds = %.lr.ph643
  %i.ch = add nuw nsw i32 %i.cb, 1
  %wide.trip.count699 = zext nneg i32 %i.ch to i64
  br label %.lr.ph643.split.us

.lr.ph643.split.us:                               ; preds = %.lr.ph643.split.us.preheader, %.lr.ph643.split.us
  %indvars.iv696 = phi i64 [ 1, %.lr.ph643.split.us.preheader ], [ %indvars.iv.next697, %.lr.ph643.split.us ] ; 3 uses
  %i.ci = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bt) #25
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %indvars.iv696
  store ptr %i.ci, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv696
  store i32 4, ptr %i.ck, align 4
  %indvars.iv.next697 = add nuw nsw i64 %indvars.iv696, 1 ; 2 uses
  %exitcond700.not = icmp eq i64 %indvars.iv.next697, %wide.trip.count699
  br i1 %exitcond700.not, label %._crit_edge644, label %.lr.ph643.split.us, !llvm.loop !27

._crit_edge644:                                   ; preds = %.lr.ph643.split, %.lr.ph643.split.us, %.loopexit596
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #22
  %i.cl = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 44 uses
  store i32 0, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 16 uses
  store ptr null, ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %30, i64 24
  store ptr %i.cl, ptr %i.cn, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %30, i64 32
  store ptr %i.cl, ptr %i.co, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %30, i64 40
  store i64 0, ptr %i.cp, align 8
  %i.cq = icmp sgt i32 %3, 0
  br i1 %i.cq, label %.lr.ph652, label %._crit_edge653

.lr.ph652:                                        ; preds = %._crit_edge644
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ct = sext i32 %2 to i64
  br label %bb.c

.lr.ph643.split:                                  ; preds = %.lr.ph643.split.preheader, %.lr.ph643.split
  %indvars.iv691 = phi i64 [ 1, %.lr.ph643.split.preheader ], [ %indvars.iv.next692, %.lr.ph643.split ] ; 3 uses
  %i.cu = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bt) #25 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cu, i8 0, i64 %i.cf, i1 false)
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %indvars.iv691
  store ptr %i.cu, ptr %i.cv, align 8
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv691
  store i32 4, ptr %i.cw, align 4
  %indvars.iv.next692 = add nuw nsw i64 %indvars.iv691, 1 ; 2 uses
  %exitcond695.not = icmp eq i64 %indvars.iv.next692, %wide.trip.count694
  br i1 %exitcond695.not, label %._crit_edge644, label %.lr.ph643.split, !llvm.loop !27

._crit_edge653:                                   ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRifEEERS0_DpOT_.exit, %._crit_edge644
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 8            ; 5 uses
  %i.cz = sext i32 %i.cy to i64
  %i.da = icmp slt i32 %i.cy, 0
  %i.db = shl nsw i64 %i.cz, 3
  %i.dc = select i1 %i.da, i64 -1, i64 %i.db
  %i.dd = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dc) #25
          to label %bb.cn unwind label %bb.cp     ; 2 uses

bb.c:                                             ; preds = %.lr.ph652, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRifEEERS0_DpOT_.exit
  %indvars.iv704 = phi i64 [ 0, %.lr.ph652 ], [ %indvars.iv.next705, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRifEEERS0_DpOT_.exit ] ; 32 uses
  %i.de = load ptr, ptr %i.cs, align 8
  %i.df = getelementptr [4 x i8], ptr %i.de, i64 %indvars.iv704
  %i.dg = getelementptr [4 x i8], ptr %i.df, i64 %i.ct
  %i.dh = load i32, ptr %i.dg, align 4
  %i.di = sext i32 %i.dh to i64
  %i.dj = load ptr, ptr %i.cr, align 8
  %i.dk = getelementptr inbounds nuw [120 x i8], ptr %i.dj, i64 %i.di ; 9 uses
  %i.dl = load ptr, ptr %i.d, align 8
  %i.dm = getelementptr inbounds nuw [12 x i8], ptr %i.dl, i64 %indvars.iv704 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.do = load float, ptr %i.dn, align 4
  %i.dp = load <2 x float>, ptr %i.dk, align 4
  store <2 x float> %i.dp, ptr %i.dm, align 4
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store float %i.do, ptr %i.dq, align 4
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dk, i64 12
  %i.ds = load ptr, ptr %i.bw, align 8
  %i.dt = getelementptr inbounds nuw [12 x i8], ptr %i.ds, i64 %indvars.iv704 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dk, i64 20
  %i.dv = load float, ptr %i.du, align 4
  %i.dw = load <2 x float>, ptr %i.dr, align 4
  store <2 x float> %i.dw, ptr %i.dt, align 4
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store float %i.dv, ptr %i.dx, align 4
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dz = load float, ptr %i.dy, align 8
  %i.ea = load ptr, ptr %i.bx, align 8
  %i.eb = getelementptr inbounds nuw [12 x i8], ptr %i.ea, i64 %indvars.iv704 ; 2 uses
  store float %i.dz, ptr %i.eb, align 4
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dk, i64 28
  %i.ed = load float, ptr %i.ec, align 4
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  store float %i.ed, ptr %i.ee, align 4
  %i.ef = load i8, ptr %i.bz, align 1
  %.not146645 = icmp eq i8 %i.ef, 0
  br i1 %.not146645, label %._crit_edge649, label %.lr.ph648

.lr.ph648:                                        ; preds = %bb.c
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dk, i64 32
  br label %bb.d

._crit_edge649:                                   ; preds = %bb.d, %bb.c
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dk, i64 104
  %i.ei = load ptr, ptr %i.eh, align 8            ; 6 uses
  %i.ej = icmp eq ptr %i.ei, null                 ; 2 uses
  br i1 %i.ej, label %.thread571, label %bb.e

bb.d:                                             ; preds = %.lr.ph648, %bb.d
  %indvars.iv701 = phi i64 [ 1, %.lr.ph648 ], [ %indvars.iv.next702, %bb.d ] ; 4 uses
  %i.ek = getelementptr inbounds nuw [16 x i8], ptr %i.eg, i64 %indvars.iv701 ; 2 uses
  %i.el = load float, ptr %i.ek, align 8
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %indvars.iv701
  %i.en = load ptr, ptr %i.em, align 8
  %i.eo = getelementptr inbounds nuw [12 x i8], ptr %i.en, i64 %indvars.iv704 ; 2 uses
  store float %i.el, ptr %i.eo, align 4
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ek, i64 4
  %i.eq = load float, ptr %i.ep, align 4
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  store float %i.eq, ptr %i.er, align 4
  %indvars.iv.next702 = add nuw nsw i64 %indvars.iv701, 1
  %i.es = load i8, ptr %i.bz, align 1
  %i.et = zext i8 %i.es to i64
  %.not146.not = icmp samesign ult i64 %indvars.iv701, %i.et
  br i1 %.not146.not, label %bb.d, label %._crit_edge649, !llvm.loop !28

bb.e:                                             ; preds = %._crit_edge649
  %i.eu = call ptr @__dynamic_cast(ptr nonnull %i.ei, ptr nonnull @_ZTIN3pmx17PmxVertexSkinningE, ptr nonnull @_ZTIN3pmx22PmxVertexSkinningBDEF1E, i64 0) #22
  %i.ev = call ptr @__dynamic_cast(ptr nonnull %i.ei, ptr nonnull @_ZTIN3pmx17PmxVertexSkinningE, ptr nonnull @_ZTIN3pmx22PmxVertexSkinningBDEF2E, i64 0) #22
  %i.ew = call ptr @__dynamic_cast(ptr nonnull %i.ei, ptr nonnull @_ZTIN3pmx17PmxVertexSkinningE, ptr nonnull @_ZTIN3pmx22PmxVertexSkinningBDEF4E, i64 0) #22
  %i.ex = call ptr @__dynamic_cast(ptr nonnull %i.ei, ptr nonnull @_ZTIN3pmx17PmxVertexSkinningE, ptr nonnull @_ZTIN3pmx21PmxVertexSkinningSDEFE, i64 0) #22
  br label %.thread571

.thread571:                                       ; preds = %._crit_edge649, %bb.e
  %i.ey = phi ptr [ %i.ew, %bb.e ], [ null, %._crit_edge649 ] ; 8 uses
  %i.ez = phi ptr [ %i.eu, %bb.e ], [ null, %._crit_edge649 ]
  %i.fa = phi ptr [ %i.ev, %bb.e ], [ null, %._crit_edge649 ] ; 3 uses
  %i.fb = phi ptr [ %i.ex, %bb.e ], [ null, %._crit_edge649 ] ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.dk, i64 96
  %i.fd = load i8, ptr %i.fc, align 8
  switch i8 %i.fd, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRifEEERS0_DpOT_.exit [
    i8 0, label %bb.f
    i8 1, label %bb.n
    i8 2, label %bb.ab
    i8 3, label %bb.ba
    i8 4, label %31
  ]

bb.f:                                             ; preds = %.thread571
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ez, i64 8 ; 2 uses
  %i.ff = load ptr, ptr %i.cm, align 8            ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ff, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f
  %i.fg = load i32, ptr %i.fe, align 4            ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ff, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %bb.g ] ; 4 uses
  %.0811.i.i.i.i = phi ptr [ %i.cl, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %bb.g ] ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.fi = load i32, ptr %i.fh, align 4
  %i.fj = icmp slt i32 %i.fi, %i.fg               ; 3 uses
  %.19.i.i.i.i = select i1 %i.fj, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.fj, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i, label %bb.g, !llvm.loop !29

_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i: ; preds = %bb.g
  %i.fk = icmp eq ptr %.19.i.i.i.i, %i.cl
  br i1 %i.fk, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.fj, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.fl = load i32, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4
  %i.fm = icmp slt i32 %i.fg, %i.fl
  br i1 %i.fm, label %.critedge.i, label %bb.i

.critedge.i:                                      ; preds = %bb.h, %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i, %bb.f
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.h ], [ %.19.i.i.i.i, %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i ], [ %i.cl, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #22
  store ptr %i.fe, ptr %28, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #22
  %i.fn = invoke ptr @_ZNSt8_Rb_treeIiSt4pairIKiSt6vectorI14aiVertexWeightSaIS3_EEESt10_Select1stIS6_ESt4lessIiESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %30, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 1 dereferenceable(1) %29)
          to label %.noexc unwind label %.loopexit575.a

.noexc:                                           ; preds = %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  br label %bb.i

bb.i:                                             ; preds = %.noexc, %bb.h
  %.sroa.06.0.i = phi ptr [ %i.fn, %.noexc ], [ %.19.i.i.i.i, %bb.h ] ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 48 ; 4 uses
  %i.fq = load ptr, ptr %i.fp, align 8            ; 6 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 56 ; 2 uses
  %i.fs = load ptr, ptr %i.fr, align 8
  %.not.i = icmp eq ptr %i.fq, %i.fs
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ft = trunc nuw nsw i64 %indvars.iv704 to i32
  store i32 %i.ft, ptr %i.fq, align 4
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fq, i64 4
  store float 1.000000e+00, ptr %i.fu, align 4
  %i.fv = load ptr, ptr %i.fp, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  store ptr %i.fw, ptr %i.fp, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRifEEERS0_DpOT_.exit

bb.k:                                             ; preds = %bb.i
  %i.fx = load ptr, ptr %i.fo, align 8            ; 7 uses
  %i.fy = ptrtoint ptr %i.fq to i64               ; 2 uses
  %i.fz = ptrtoint ptr %i.fx to i64               ; 3 uses
  %i.ga = sub i64 %i.fy, %i.fz                    ; 4 uses
  %i.gb = icmp eq i64 %i.ga, 9223372036854775800
  br i1 %i.gb, label %bb.l, label %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #24
          to label %.noexc150 unwind label %.loopexit.split-lp591

.noexc150:                                        ; preds = %bb.l
  unreachable

_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.gc = ashr exact i64 %i.ga, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.gc, i64 1)
  %i.gd = add nsw i64 %.sroa.speculated.i.i.i, %i.gc ; 2 uses
  %i.ge = icmp ult i64 %i.gd, %i.gc
  %i.gf = call i64 @llvm.umin.i64(i64 %i.gd, i64 1152921504606846975)
  %i.gg = select i1 %i.ge, i64 1152921504606846975, i64 %i.gf ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.gg, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.gh = shl nuw nsw i64 %i.gg, 3
  %i.gi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gh) #25
          to label %.noexc151 unwind label %.loopexit590 ; 8 uses

.noexc151:                                        ; preds = %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.ga ; 2 uses
  %i.gk = trunc nuw nsw i64 %indvars.iv704 to i32
  store i32 %i.gk, ptr %i.gj, align 4
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 4
  store float 1.000000e+00, ptr %i.gl, align 4
  %.not10.i.i.i.i.i = icmp eq ptr %i.fx, %i.fq
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc151
  %i.gm = ptrtoaddr ptr %i.gi to i64
  %i.gn = add i64 %i.fy, -8
  %i.go = sub i64 %i.gn, %i.fz                    ; 2 uses
  %i.gp = lshr i64 %i.go, 3
  %i.gq = add nuw nsw i64 %i.gp, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.go, 24
  %i.gr = sub i64 %i.gm, %i.fz
  %diff.check = icmp ult i64 %i.gr, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader1096, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.gq, 4611686018427387900     ; 3 uses
  %i.gs = shl i64 %n.vec, 3                       ; 2 uses
  %i.gt = getelementptr i8, ptr %i.gi, i64 %i.gs  ; 2 uses
  %i.gu = getelementptr i8, ptr %i.fx, i64 %i.gs
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gv = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.gi, i64 %i.gv ; 2 uses
  %next.gep865 = getelementptr i8, ptr %i.fx, i64 %i.gv ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30)
  call void @llvm.experimental.noalias.scope.decl(metadata !33)
  %i.gw = getelementptr i8, ptr %next.gep865, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep865, align 4, !alias.scope !33, !noalias !30
  %wide.load866 = load <2 x i64>, ptr %i.gw, align 4, !alias.scope !33, !noalias !30
  %i.gx = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !30, !noalias !33
  store <2 x i64> %wide.load866, ptr %i.gx, align 4, !alias.scope !30, !noalias !33
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gy = icmp eq i64 %index.next, %n.vec
  br i1 %i.gy, label %middle.block, label %vector.body, !llvm.loop !35

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gq, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i, label %.lr.ph.i.i.i.i.i.preheader1096

.lr.ph.i.i.i.i.i.preheader1096:                   ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.gi, %.lr.ph.i.i.i.i.i.preheader ], [ %i.gt, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.fx, %.lr.ph.i.i.i.i.i.preheader ], [ %i.gu, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader1096, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.hb, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader1096 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ha, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader1096 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30)
  call void @llvm.experimental.noalias.scope.decl(metadata !33)
  %i.gz = load i64, ptr %.0911.i.i.i.i.i, align 4, !alias.scope !33, !noalias !30
  store i64 %i.gz, ptr %.012.i.i.i.i.i, align 4, !alias.scope !30, !noalias !33
  %i.ha = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ha, %i.fq
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !36

_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc151
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.gi, %.noexc151 ], [ %i.gt, %middle.block ], [ %i.hb, %.lr.ph.i.i.i.i.i ]
  %i.hc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i34.i.i = icmp eq ptr %i.fx, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRifEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.fx, i64 noundef %i.ga) #23
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRifEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRifEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.m, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i
  store ptr %i.gi, ptr %i.fo, align 8
  store ptr %i.hc, ptr %i.fp, align 8
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %i.gg
  store ptr %i.hd, ptr %i.fr, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRifEEERS0_DpOT_.exit

.loopexit575.a:                                   ; preds = %.critedge.i, %.critedge.i163, %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i168, %.critedge.i192, %.critedge.i223, %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i228, %.critedge.i254, %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i259, %.critedge.i285, %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i290, %.critedge.i316, %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i321, %.critedge.i347, %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i352, %.critedge.i378
  %lpad.loopexit577 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

.loopexit.split-lp576:                            ; preds = %.invoke
  %lpad.loopexit.split-lp578 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

.loopexit590:                                     ; preds = %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit592 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

.loopexit.split-lp591:                            ; preds = %bb.l
  %lpad.loopexit.split-lp593 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

end_hunk_0
begin_hunk_1_@_ZN6Assimp11MMDImporter10CreateMeshEPKN3pmx8PmxModelEii:bb.a
  call void @_ZdlPvm(ptr noundef nonnull %i.uq, i64 noundef %i.ut) #23
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i363

_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i363: ; preds = %bb.bg, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i360
  store ptr %i.vb, ptr %i.uf, align 8
  store ptr %i.vw, ptr %i.uh, align 8
  %i.vx = getelementptr inbounds nuw [8 x i8], ptr %i.vb, i64 %i.uz
  store ptr %i.vx, ptr %i.uj, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit366

_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit366: ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i363, %bb.be
  %i.vy = getelementptr inbounds nuw i8, ptr %i.fb, i64 12 ; 2 uses
  %i.vz = load ptr, ptr %i.cm, align 8            ; 2 uses
  %.not10.i.i.i.i367 = icmp eq ptr %i.vz, null
  br i1 %.not10.i.i.i.i367, label %.critedge.i378, label %.lr.ph.i.i.i.i368

.lr.ph.i.i.i.i368:                                ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit366
  %i.wa = load i32, ptr %i.vy, align 4            ; 2 uses
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bh, %.lr.ph.i.i.i.i368
  %.012.i.i.i.i369 = phi ptr [ %i.vz, %.lr.ph.i.i.i.i368 ], [ %.1.i.i.i.i374, %bb.bh ] ; 4 uses
  %.0811.i.i.i.i370 = phi ptr [ %i.cl, %.lr.ph.i.i.i.i368 ], [ %.19.i.i.i.i371, %bb.bh ] ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i369, i64 32
  %i.wc = load i32, ptr %i.wb, align 4
  %i.wd = icmp slt i32 %i.wc, %i.wa               ; 3 uses
  %.19.i.i.i.i371 = select i1 %i.wd, ptr %.0811.i.i.i.i370, ptr %.012.i.i.i.i369 ; 5 uses
  %.1.in.v.i.i.i.i372 = select i1 %i.wd, i64 24, i64 16
  %.1.in.i.i.i.i373 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i369, i64 %.1.in.v.i.i.i.i372
  %.1.i.i.i.i374 = load ptr, ptr %.1.in.i.i.i.i373, align 8 ; 2 uses
  %.not.i.i.i.i375 = icmp eq ptr %.1.i.i.i.i374, null
  br i1 %.not.i.i.i.i375, label %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i376, label %bb.bh, !llvm.loop !29

_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i376: ; preds = %bb.bh
  %i.we = icmp eq ptr %.19.i.i.i.i371, %i.cl
  br i1 %i.we, label %.critedge.i378, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i376
  %.19.i.i.i.i371.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.wd, ptr %.0811.i.i.i.i370, ptr %.012.i.i.i.i369
  %.19.i.i.i.i371.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i371.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.wf = load i32, ptr %.19.i.i.i.i371.sroa.sel.v.sroa.sel.v.sroa.sel, align 4
  %i.wg = icmp slt i32 %i.wa, %i.wf
  br i1 %i.wg, label %.critedge.i378, label %bb.bj

.critedge.i378:                                   ; preds = %bb.bi, %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i376, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit366
  %.08.lcssa.i.i.i11.i379 = phi ptr [ %.19.i.i.i.i371, %bb.bi ], [ %.19.i.i.i.i371, %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i376 ], [ %i.cl, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit366 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  store ptr %i.vy, ptr %12, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.wh = invoke ptr @_ZNSt8_Rb_treeIiSt4pairIKiSt6vectorI14aiVertexWeightSaIS3_EEESt10_Select1stIS6_ESt4lessIiESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %30, ptr %.08.lcssa.i.i.i11.i379, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %.noexc380 unwind label %.loopexit575.a

.noexc380:                                        ; preds = %.critedge.i378
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %bb.bj

bb.bj:                                            ; preds = %.noexc380, %bb.bi
  %.sroa.06.0.i377 = phi ptr [ %i.wh, %.noexc380 ], [ %.19.i.i.i.i371, %bb.bi ] ; 3 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i377, i64 40 ; 2 uses
  %i.wj = load float, ptr %i.ug, align 8
  %i.wk = fsub float 1.000000e+00, %i.wj          ; 2 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i377, i64 48 ; 4 uses
  %i.wm = load ptr, ptr %i.wl, align 8            ; 6 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i377, i64 56 ; 2 uses
  %i.wo = load ptr, ptr %i.wn, align 8
  %.not.i382 = icmp eq ptr %i.wm, %i.wo
  br i1 %.not.i382, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.wp = trunc nuw nsw i64 %indvars.iv704 to i32
  store i32 %i.wp, ptr %i.wm, align 4
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wm, i64 4
  store float %i.wk, ptr %i.wq, align 4
  %i.wr = load ptr, ptr %i.wl, align 8
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 8
  store ptr %i.ws, ptr %i.wl, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRifEEERS0_DpOT_.exit

bb.bl:                                            ; preds = %bb.bj
  %i.wt = load ptr, ptr %i.wi, align 8            ; 7 uses
  %i.wu = ptrtoint ptr %i.wm to i64               ; 2 uses
  %i.wv = ptrtoint ptr %i.wt to i64               ; 3 uses
  %i.ww = sub i64 %i.wu, %i.wv                    ; 4 uses
  %i.wx = icmp eq i64 %i.ww, 9223372036854775800
  br i1 %i.wx, label %bb.bm, label %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i383

bb.bm:                                            ; preds = %bb.bl
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #24
          to label %.noexc395 unwind label %.loopexit.split-lp581

.noexc395:                                        ; preds = %bb.bm
  unreachable

_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i383: ; preds = %bb.bl
  %i.wy = ashr exact i64 %i.ww, 3                 ; 3 uses
  %.sroa.speculated.i.i.i384 = call i64 @llvm.umax.i64(i64 %i.wy, i64 1)
  %i.wz = add nsw i64 %.sroa.speculated.i.i.i384, %i.wy ; 2 uses
  %i.xa = icmp ult i64 %i.wz, %i.wy
  %i.xb = call i64 @llvm.umin.i64(i64 %i.wz, i64 1152921504606846975)
  %i.xc = select i1 %i.xa, i64 1152921504606846975, i64 %i.xb ; 3 uses
  %.not.i.i.i385 = icmp ne i64 %i.xc, 0
  call void @llvm.assume(i1 %.not.i.i.i385)
  %i.xd = shl nuw nsw i64 %i.xc, 3
  %i.xe = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.xd) #25
          to label %.noexc396 unwind label %.loopexit580 ; 8 uses

.noexc396:                                        ; preds = %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i383
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 %i.ww ; 2 uses
  %i.xg = trunc nuw nsw i64 %indvars.iv704 to i32
  store i32 %i.xg, ptr %i.xf, align 4
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xf, i64 4
  store float %i.wk, ptr %i.xh, align 4
  %.not10.i.i.i.i.i386 = icmp eq ptr %i.wt, %i.wm
  br i1 %.not10.i.i.i.i.i386, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i391, label %.lr.ph.i.i.i.i.i387.preheader

.lr.ph.i.i.i.i.i387.preheader:                    ; preds = %.noexc396
  %i.xi = ptrtoaddr ptr %i.xe to i64
  %i.xj = add i64 %i.wu, -8
  %i.xk = sub i64 %i.xj, %i.wv                    ; 2 uses
  %i.xl = lshr i64 %i.xk, 3
  %i.xm = add nuw nsw i64 %i.xl, 1                ; 2 uses
  %min.iters.check979 = icmp ult i64 %i.xk, 24
  %i.xn = sub i64 %i.xi, %i.wv
  %diff.check977 = icmp ult i64 %i.xn, 32
  %or.cond1091 = or i1 %min.iters.check979, %diff.check977
  br i1 %or.cond1091, label %.lr.ph.i.i.i.i.i387.preheader1103, label %vector.ph980

vector.ph980:                                     ; preds = %.lr.ph.i.i.i.i.i387.preheader
  %n.vec982 = and i64 %i.xm, 4611686018427387900  ; 3 uses
  %i.xo = shl i64 %n.vec982, 3                    ; 2 uses
  %i.xp = getelementptr i8, ptr %i.xe, i64 %i.xo  ; 2 uses
  %i.xq = getelementptr i8, ptr %i.wt, i64 %i.xo
  br label %vector.body983

vector.body983:                                   ; preds = %vector.body983, %vector.ph980
  %index984 = phi i64 [ 0, %vector.ph980 ], [ %index.next989, %vector.body983 ] ; 2 uses
  %i.xr = shl i64 %index984, 3                    ; 2 uses
  %next.gep985 = getelementptr i8, ptr %i.xe, i64 %i.xr ; 2 uses
  %next.gep986 = getelementptr i8, ptr %i.wt, i64 %i.xr ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !86)
  call void @llvm.experimental.noalias.scope.decl(metadata !89)
  %i.xs = getelementptr i8, ptr %next.gep986, i64 16
  %wide.load987 = load <2 x i64>, ptr %next.gep986, align 4, !alias.scope !89, !noalias !86
  %wide.load988 = load <2 x i64>, ptr %i.xs, align 4, !alias.scope !89, !noalias !86
  %i.xt = getelementptr i8, ptr %next.gep985, i64 16
  store <2 x i64> %wide.load987, ptr %next.gep985, align 4, !alias.scope !86, !noalias !89
  store <2 x i64> %wide.load988, ptr %i.xt, align 4, !alias.scope !86, !noalias !89
  %index.next989 = add nuw i64 %index984, 4       ; 2 uses
  %i.xu = icmp eq i64 %index.next989, %n.vec982
  br i1 %i.xu, label %middle.block990, label %vector.body983, !llvm.loop !91

middle.block990:                                  ; preds = %vector.body983
  %cmp.n991 = icmp eq i64 %i.xm, %n.vec982
  br i1 %cmp.n991, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i391, label %.lr.ph.i.i.i.i.i387.preheader1103

.lr.ph.i.i.i.i.i387.preheader1103:                ; preds = %.lr.ph.i.i.i.i.i387.preheader, %middle.block990
  %.012.i.i.i.i.i388.ph = phi ptr [ %i.xe, %.lr.ph.i.i.i.i.i387.preheader ], [ %i.xp, %middle.block990 ]
  %.0911.i.i.i.i.i389.ph = phi ptr [ %i.wt, %.lr.ph.i.i.i.i.i387.preheader ], [ %i.xq, %middle.block990 ]
  br label %.lr.ph.i.i.i.i.i387

.lr.ph.i.i.i.i.i387:                              ; preds = %.lr.ph.i.i.i.i.i387.preheader1103, %.lr.ph.i.i.i.i.i387
  %.012.i.i.i.i.i388 = phi ptr [ %i.xx, %.lr.ph.i.i.i.i.i387 ], [ %.012.i.i.i.i.i388.ph, %.lr.ph.i.i.i.i.i387.preheader1103 ] ; 2 uses
  %.0911.i.i.i.i.i389 = phi ptr [ %i.xw, %.lr.ph.i.i.i.i.i387 ], [ %.0911.i.i.i.i.i389.ph, %.lr.ph.i.i.i.i.i387.preheader1103 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !86)
  call void @llvm.experimental.noalias.scope.decl(metadata !89)
  %i.xv = load i64, ptr %.0911.i.i.i.i.i389, align 4, !alias.scope !89, !noalias !86
  store i64 %i.xv, ptr %.012.i.i.i.i.i388, align 4, !alias.scope !86, !noalias !89
  %i.xw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i389, i64 8 ; 2 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i388, i64 8 ; 2 uses
  %.not.i.i.i.i.i390 = icmp eq ptr %i.xw, %i.wm
  br i1 %.not.i.i.i.i.i390, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i391, label %.lr.ph.i.i.i.i.i387, !llvm.loop !92

_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i391: ; preds = %.lr.ph.i.i.i.i.i387, %middle.block990, %.noexc396
  %.0.lcssa.i.i.i.i.i392 = phi ptr [ %i.xe, %.noexc396 ], [ %i.xp, %middle.block990 ], [ %i.xx, %.lr.ph.i.i.i.i.i387 ]
  %i.xy = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i392, i64 8
  %.not.i34.i.i393 = icmp eq ptr %i.wt, null
  br i1 %.not.i34.i.i393, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRifEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i394, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i391
  call void @_ZdlPvm(ptr noundef nonnull %i.wt, i64 noundef %i.ww) #23
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRifEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i394

_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRifEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i394: ; preds = %bb.bn, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i391
  store ptr %i.xe, ptr %i.wi, align 8
  store ptr %i.xy, ptr %i.wl, align 8
  %i.xz = getelementptr inbounds nuw [8 x i8], ptr %i.xe, i64 %i.xc
  store ptr %i.xz, ptr %i.wn, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRifEEERS0_DpOT_.exit

.loopexit580:                                     ; preds = %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i383
  %lpad.loopexit582 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

.loopexit.split-lp581:                            ; preds = %bb.bm
  %lpad.loopexit.split-lp583 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

31:                                               ; preds = %.thread571
  br i1 %i.ej, label %bb.bo, label %32

32:                                               ; preds = %31
  %33 = call ptr @__dynamic_cast(ptr nonnull %i.ei, ptr nonnull @_ZTIN3pmx17PmxVertexSkinningE, ptr nonnull @_ZTIN3pmx21PmxVertexSkinningQDEFE, i64 0) #22
  br label %bb.bo

bb.bo:                                            ; preds = %31, %32
  %34 = phi ptr [ %33, %32 ], [ null, %31 ]       ; 8 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 2 uses
  %i.yb = load ptr, ptr %i.cm, align 8            ; 2 uses
  %.not10.i.i.i.i398 = icmp eq ptr %i.yb, null
  br i1 %.not10.i.i.i.i398, label %.critedge.i409, label %.lr.ph.i.i.i.i399

.lr.ph.i.i.i.i399:                                ; preds = %bb.bo
  %i.yc = load i32, ptr %i.ya, align 4            ; 2 uses
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bp, %.lr.ph.i.i.i.i399
  %.012.i.i.i.i400 = phi ptr [ %i.yb, %.lr.ph.i.i.i.i399 ], [ %.1.i.i.i.i405, %bb.bp ] ; 4 uses
  %.0811.i.i.i.i401 = phi ptr [ %i.cl, %.lr.ph.i.i.i.i399 ], [ %.19.i.i.i.i402, %bb.bp ] ; 2 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i400, i64 32
  %i.ye = load i32, ptr %i.yd, align 4
  %i.yf = icmp slt i32 %i.ye, %i.yc               ; 3 uses
  %.19.i.i.i.i402 = select i1 %i.yf, ptr %.0811.i.i.i.i401, ptr %.012.i.i.i.i400 ; 5 uses
  %.1.in.v.i.i.i.i403 = select i1 %i.yf, i64 24, i64 16
  %.1.in.i.i.i.i404 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i400, i64 %.1.in.v.i.i.i.i403
  %.1.i.i.i.i405 = load ptr, ptr %.1.in.i.i.i.i404, align 8 ; 2 uses
  %.not.i.i.i.i406 = icmp eq ptr %.1.i.i.i.i405, null
  br i1 %.not.i.i.i.i406, label %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i407, label %bb.bp, !llvm.loop !29

_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i407: ; preds = %bb.bp
  %i.yg = icmp eq ptr %.19.i.i.i.i402, %i.cl
  br i1 %i.yg, label %.critedge.i409, label %bb.bq

bb.bq:                                            ; preds = %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i407
  %.19.i.i.i.i402.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.yf, ptr %.0811.i.i.i.i401, ptr %.012.i.i.i.i400
  %.19.i.i.i.i402.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i402.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.yh = load i32, ptr %.19.i.i.i.i402.sroa.sel.v.sroa.sel.v.sroa.sel, align 4
  %i.yi = icmp slt i32 %i.yc, %i.yh
  br i1 %i.yi, label %.critedge.i409, label %bb.br

.critedge.i409:                                   ; preds = %bb.bq, %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i407, %bb.bo
  %.08.lcssa.i.i.i11.i410 = phi ptr [ %.19.i.i.i.i402, %bb.bq ], [ %.19.i.i.i.i402, %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i407 ], [ %i.cl, %bb.bo ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  store ptr %i.ya, ptr %10, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %i.yj = invoke ptr @_ZNSt8_Rb_treeIiSt4pairIKiSt6vectorI14aiVertexWeightSaIS3_EEESt10_Select1stIS6_ESt4lessIiESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %30, ptr %.08.lcssa.i.i.i11.i410, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %.noexc411 unwind label %.loopexit574

.noexc411:                                        ; preds = %.critedge.i409
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.br

bb.br:                                            ; preds = %.noexc411, %bb.bq
  %.sroa.06.0.i408 = phi ptr [ %i.yj, %.noexc411 ], [ %.19.i.i.i.i402, %bb.bq ] ; 3 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i408, i64 40 ; 2 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %34, i64 24 ; 2 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i408, i64 48 ; 4 uses
  %i.yn = load ptr, ptr %i.ym, align 8            ; 6 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i408, i64 56 ; 2 uses
  %i.yp = load ptr, ptr %i.yo, align 8
  %.not.i413 = icmp eq ptr %i.yn, %i.yp
  br i1 %.not.i413, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.yq = load float, ptr %i.yl, align 4
  %i.yr = trunc nuw nsw i64 %indvars.iv704 to i32
  store i32 %i.yr, ptr %i.yn, align 4
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yn, i64 4
  store float %i.yq, ptr %i.ys, align 4
  %i.yt = load ptr, ptr %i.ym, align 8
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 8
  store ptr %i.yu, ptr %i.ym, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit428

bb.bt:                                            ; preds = %bb.br
  %i.yv = load ptr, ptr %i.yk, align 8            ; 7 uses
  %i.yw = ptrtoint ptr %i.yn to i64               ; 2 uses
  %i.yx = ptrtoint ptr %i.yv to i64               ; 3 uses
  %i.yy = sub i64 %i.yw, %i.yx                    ; 4 uses
  %i.yz = icmp eq i64 %i.yy, 9223372036854775800
  br i1 %i.yz, label %.invoke836, label %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i414

.invoke836:                                       ; preds = %bb.cl, %bb.cf, %bb.bz, %bb.bt
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #24
          to label %.cont837 unwind label %.loopexit.split-lp

.cont837:                                         ; preds = %.invoke836
  unreachable

_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i414: ; preds = %bb.bt
  %i.za = ashr exact i64 %i.yy, 3                 ; 3 uses
  %.sroa.speculated.i.i.i415 = call i64 @llvm.umax.i64(i64 %i.za, i64 1)
  %i.zb = add nsw i64 %.sroa.speculated.i.i.i415, %i.za ; 2 uses
  %i.zc = icmp ult i64 %i.zb, %i.za
  %i.zd = call i64 @llvm.umin.i64(i64 %i.zb, i64 1152921504606846975)
  %i.ze = select i1 %i.zc, i64 1152921504606846975, i64 %i.zd ; 3 uses
  %.not.i.i.i416 = icmp ne i64 %i.ze, 0
  call void @llvm.assume(i1 %.not.i.i.i416)
  %i.zf = shl nuw nsw i64 %i.ze, 3
  %i.zg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.zf) #25
          to label %.noexc427 unwind label %.loopexit574 ; 8 uses

.noexc427:                                        ; preds = %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i414
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zg, i64 %i.yy ; 2 uses
  %i.zi = load float, ptr %i.yl, align 4
  %i.zj = trunc nuw nsw i64 %indvars.iv704 to i32
  store i32 %i.zj, ptr %i.zh, align 4
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zh, i64 4
  store float %i.zi, ptr %i.zk, align 4
  %.not10.i.i.i.i.i417 = icmp eq ptr %i.yv, %i.yn
  br i1 %.not10.i.i.i.i.i417, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i422, label %.lr.ph.i.i.i.i.i418.preheader

.lr.ph.i.i.i.i.i418.preheader:                    ; preds = %.noexc427
  %i.zl = ptrtoaddr ptr %i.zg to i64
  %i.zm = add i64 %i.yw, -8
  %i.zn = sub i64 %i.zm, %i.yx                    ; 2 uses
  %i.zo = lshr i64 %i.zn, 3
  %i.zp = add nuw nsw i64 %i.zo, 1                ; 2 uses
  %min.iters.check1069 = icmp ult i64 %i.zn, 24
  %i.zq = sub i64 %i.zl, %i.yx
  %diff.check1067 = icmp ult i64 %i.zq, 32
  %or.cond1092 = or i1 %min.iters.check1069, %diff.check1067
  br i1 %or.cond1092, label %.lr.ph.i.i.i.i.i418.preheader1108, label %vector.ph1070

vector.ph1070:                                    ; preds = %.lr.ph.i.i.i.i.i418.preheader
  %n.vec1072 = and i64 %i.zp, 4611686018427387900 ; 3 uses
  %i.zr = shl i64 %n.vec1072, 3                   ; 2 uses
  %i.zs = getelementptr i8, ptr %i.zg, i64 %i.zr  ; 2 uses
  %i.zt = getelementptr i8, ptr %i.yv, i64 %i.zr
  br label %vector.body1073

vector.body1073:                                  ; preds = %vector.body1073, %vector.ph1070
  %index1074 = phi i64 [ 0, %vector.ph1070 ], [ %index.next1079, %vector.body1073 ] ; 2 uses
  %i.zu = shl i64 %index1074, 3                   ; 2 uses
  %next.gep1075 = getelementptr i8, ptr %i.zg, i64 %i.zu ; 2 uses
  %next.gep1076 = getelementptr i8, ptr %i.yv, i64 %i.zu ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !93)
  call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %i.zv = getelementptr i8, ptr %next.gep1076, i64 16
  %wide.load1077 = load <2 x i64>, ptr %next.gep1076, align 4, !alias.scope !96, !noalias !93
  %wide.load1078 = load <2 x i64>, ptr %i.zv, align 4, !alias.scope !96, !noalias !93
  %i.zw = getelementptr i8, ptr %next.gep1075, i64 16
  store <2 x i64> %wide.load1077, ptr %next.gep1075, align 4, !alias.scope !93, !noalias !96
  store <2 x i64> %wide.load1078, ptr %i.zw, align 4, !alias.scope !93, !noalias !96
  %index.next1079 = add nuw i64 %index1074, 4     ; 2 uses
  %i.zx = icmp eq i64 %index.next1079, %n.vec1072
  br i1 %i.zx, label %middle.block1080, label %vector.body1073, !llvm.loop !98

middle.block1080:                                 ; preds = %vector.body1073
  %cmp.n1081 = icmp eq i64 %i.zp, %n.vec1072
  br i1 %cmp.n1081, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i422, label %.lr.ph.i.i.i.i.i418.preheader1108

.lr.ph.i.i.i.i.i418.preheader1108:                ; preds = %.lr.ph.i.i.i.i.i418.preheader, %middle.block1080
  %.012.i.i.i.i.i419.ph = phi ptr [ %i.zg, %.lr.ph.i.i.i.i.i418.preheader ], [ %i.zs, %middle.block1080 ]
  %.0911.i.i.i.i.i420.ph = phi ptr [ %i.yv, %.lr.ph.i.i.i.i.i418.preheader ], [ %i.zt, %middle.block1080 ]
  br label %.lr.ph.i.i.i.i.i418

.lr.ph.i.i.i.i.i418:                              ; preds = %.lr.ph.i.i.i.i.i418.preheader1108, %.lr.ph.i.i.i.i.i418
  %.012.i.i.i.i.i419 = phi ptr [ %i.aaa, %.lr.ph.i.i.i.i.i418 ], [ %.012.i.i.i.i.i419.ph, %.lr.ph.i.i.i.i.i418.preheader1108 ] ; 2 uses
  %.0911.i.i.i.i.i420 = phi ptr [ %i.zz, %.lr.ph.i.i.i.i.i418 ], [ %.0911.i.i.i.i.i420.ph, %.lr.ph.i.i.i.i.i418.preheader1108 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !93)
  call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %i.zy = load i64, ptr %.0911.i.i.i.i.i420, align 4, !alias.scope !96, !noalias !93
  store i64 %i.zy, ptr %.012.i.i.i.i.i419, align 4, !alias.scope !93, !noalias !96
  %i.zz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i420, i64 8 ; 2 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i419, i64 8 ; 2 uses
  %.not.i.i.i.i.i421 = icmp eq ptr %i.zz, %i.yn
  br i1 %.not.i.i.i.i.i421, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i422, label %.lr.ph.i.i.i.i.i418, !llvm.loop !99

_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i422: ; preds = %.lr.ph.i.i.i.i.i418, %middle.block1080, %.noexc427
  %.0.lcssa.i.i.i.i.i423 = phi ptr [ %i.zg, %.noexc427 ], [ %i.zs, %middle.block1080 ], [ %i.aaa, %.lr.ph.i.i.i.i.i418 ]
  %i.aab = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i423, i64 8
  %.not.i34.i.i424 = icmp eq ptr %i.yv, null
  br i1 %.not.i34.i.i424, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i425, label %bb.bu

bb.bu:                                            ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i422
  call void @_ZdlPvm(ptr noundef nonnull %i.yv, i64 noundef %i.yy) #23
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i425

_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i425: ; preds = %bb.bu, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i422
  store ptr %i.zg, ptr %i.yk, align 8
  store ptr %i.aab, ptr %i.ym, align 8
  %i.aac = getelementptr inbounds nuw [8 x i8], ptr %i.zg, i64 %i.ze
  store ptr %i.aac, ptr %i.yo, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit428

_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit428: ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i425, %bb.bs
  %i.aad = getelementptr inbounds nuw i8, ptr %34, i64 12 ; 2 uses
  %i.aae = load ptr, ptr %i.cm, align 8           ; 2 uses
  %.not10.i.i.i.i429 = icmp eq ptr %i.aae, null
  br i1 %.not10.i.i.i.i429, label %.critedge.i440, label %.lr.ph.i.i.i.i430

.lr.ph.i.i.i.i430:                                ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit428
  %i.aaf = load i32, ptr %i.aad, align 4          ; 2 uses
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bv, %.lr.ph.i.i.i.i430
  %.012.i.i.i.i431 = phi ptr [ %i.aae, %.lr.ph.i.i.i.i430 ], [ %.1.i.i.i.i436, %bb.bv ] ; 4 uses
  %.0811.i.i.i.i432 = phi ptr [ %i.cl, %.lr.ph.i.i.i.i430 ], [ %.19.i.i.i.i433, %bb.bv ] ; 2 uses
  %i.aag = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i431, i64 32
  %i.aah = load i32, ptr %i.aag, align 4
  %i.aai = icmp slt i32 %i.aah, %i.aaf            ; 3 uses
  %.19.i.i.i.i433 = select i1 %i.aai, ptr %.0811.i.i.i.i432, ptr %.012.i.i.i.i431 ; 5 uses
  %.1.in.v.i.i.i.i434 = select i1 %i.aai, i64 24, i64 16
  %.1.in.i.i.i.i435 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i431, i64 %.1.in.v.i.i.i.i434
  %.1.i.i.i.i436 = load ptr, ptr %.1.in.i.i.i.i435, align 8 ; 2 uses
  %.not.i.i.i.i437 = icmp eq ptr %.1.i.i.i.i436, null
  br i1 %.not.i.i.i.i437, label %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i438, label %bb.bv, !llvm.loop !29

_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i438: ; preds = %bb.bv
  %i.aaj = icmp eq ptr %.19.i.i.i.i433, %i.cl
  br i1 %i.aaj, label %.critedge.i440, label %bb.bw

bb.bw:                                            ; preds = %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i438
  %.19.i.i.i.i433.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.aai, ptr %.0811.i.i.i.i432, ptr %.012.i.i.i.i431
  %.19.i.i.i.i433.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i433.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.aak = load i32, ptr %.19.i.i.i.i433.sroa.sel.v.sroa.sel.v.sroa.sel, align 4
  %i.aal = icmp slt i32 %i.aaf, %i.aak
  br i1 %i.aal, label %.critedge.i440, label %bb.bx

.critedge.i440:                                   ; preds = %bb.bw, %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i438, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit428
  %.08.lcssa.i.i.i11.i441 = phi ptr [ %.19.i.i.i.i433, %bb.bw ], [ %.19.i.i.i.i433, %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i438 ], [ %i.cl, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit428 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  store ptr %i.aad, ptr %8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.aam = invoke ptr @_ZNSt8_Rb_treeIiSt4pairIKiSt6vectorI14aiVertexWeightSaIS3_EEESt10_Select1stIS6_ESt4lessIiESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %30, ptr %.08.lcssa.i.i.i11.i441, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %.noexc442 unwind label %.loopexit574

.noexc442:                                        ; preds = %.critedge.i440
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.bx

bb.bx:                                            ; preds = %.noexc442, %bb.bw
  %.sroa.06.0.i439 = phi ptr [ %i.aam, %.noexc442 ], [ %.19.i.i.i.i433, %bb.bw ] ; 3 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i439, i64 40 ; 2 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %34, i64 28 ; 2 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i439, i64 48 ; 4 uses
  %i.aaq = load ptr, ptr %i.aap, align 8          ; 6 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i439, i64 56 ; 2 uses
  %i.aas = load ptr, ptr %i.aar, align 8
  %.not.i444 = icmp eq ptr %i.aaq, %i.aas
  br i1 %.not.i444, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.aat = load float, ptr %i.aao, align 4
  %i.aau = trunc nuw nsw i64 %indvars.iv704 to i32
  store i32 %i.aau, ptr %i.aaq, align 4
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aaq, i64 4
  store float %i.aat, ptr %i.aav, align 4
  %i.aaw = load ptr, ptr %i.aap, align 8
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aaw, i64 8
  store ptr %i.aax, ptr %i.aap, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit459

bb.bz:                                            ; preds = %bb.bx
  %i.aay = load ptr, ptr %i.aan, align 8          ; 7 uses
  %i.aaz = ptrtoint ptr %i.aaq to i64             ; 2 uses
  %i.aba = ptrtoint ptr %i.aay to i64             ; 3 uses
  %i.abb = sub i64 %i.aaz, %i.aba                 ; 4 uses
  %i.abc = icmp eq i64 %i.abb, 9223372036854775800
  br i1 %i.abc, label %.invoke836, label %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i445

_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i445: ; preds = %bb.bz
  %i.abd = ashr exact i64 %i.abb, 3               ; 3 uses
  %.sroa.speculated.i.i.i446 = call i64 @llvm.umax.i64(i64 %i.abd, i64 1)
  %i.abe = add nsw i64 %.sroa.speculated.i.i.i446, %i.abd ; 2 uses
  %i.abf = icmp ult i64 %i.abe, %i.abd
  %i.abg = call i64 @llvm.umin.i64(i64 %i.abe, i64 1152921504606846975)
  %i.abh = select i1 %i.abf, i64 1152921504606846975, i64 %i.abg ; 3 uses
  %.not.i.i.i447 = icmp ne i64 %i.abh, 0
  call void @llvm.assume(i1 %.not.i.i.i447)
  %i.abi = shl nuw nsw i64 %i.abh, 3
  %i.abj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.abi) #25
          to label %.noexc458 unwind label %.loopexit574 ; 8 uses

.noexc458:                                        ; preds = %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i445
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abj, i64 %i.abb ; 2 uses
  %i.abl = load float, ptr %i.aao, align 4
  %i.abm = trunc nuw nsw i64 %indvars.iv704 to i32
  store i32 %i.abm, ptr %i.abk, align 4
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abk, i64 4
  store float %i.abl, ptr %i.abn, align 4
  %.not10.i.i.i.i.i448 = icmp eq ptr %i.aay, %i.aaq
  br i1 %.not10.i.i.i.i.i448, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i453, label %.lr.ph.i.i.i.i.i449.preheader

.lr.ph.i.i.i.i.i449.preheader:                    ; preds = %.noexc458
  %i.abo = ptrtoaddr ptr %i.abj to i64
  %i.abp = add i64 %i.aaz, -8
  %i.abq = sub i64 %i.abp, %i.aba                 ; 2 uses
  %i.abr = lshr i64 %i.abq, 3
  %i.abs = add nuw nsw i64 %i.abr, 1              ; 2 uses
  %min.iters.check1051 = icmp ult i64 %i.abq, 24
  %i.abt = sub i64 %i.abo, %i.aba
  %diff.check1049 = icmp ult i64 %i.abt, 32
  %or.cond1093 = or i1 %min.iters.check1051, %diff.check1049
  br i1 %or.cond1093, label %.lr.ph.i.i.i.i.i449.preheader1107, label %vector.ph1052

vector.ph1052:                                    ; preds = %.lr.ph.i.i.i.i.i449.preheader
  %n.vec1054 = and i64 %i.abs, 4611686018427387900 ; 3 uses
  %i.abu = shl i64 %n.vec1054, 3                  ; 2 uses
  %i.abv = getelementptr i8, ptr %i.abj, i64 %i.abu ; 2 uses
  %i.abw = getelementptr i8, ptr %i.aay, i64 %i.abu
  br label %vector.body1055

vector.body1055:                                  ; preds = %vector.body1055, %vector.ph1052
  %index1056 = phi i64 [ 0, %vector.ph1052 ], [ %index.next1061, %vector.body1055 ] ; 2 uses
  %i.abx = shl i64 %index1056, 3                  ; 2 uses
  %next.gep1057 = getelementptr i8, ptr %i.abj, i64 %i.abx ; 2 uses
  %next.gep1058 = getelementptr i8, ptr %i.aay, i64 %i.abx ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !100)
  call void @llvm.experimental.noalias.scope.decl(metadata !103)
  %i.aby = getelementptr i8, ptr %next.gep1058, i64 16
  %wide.load1059 = load <2 x i64>, ptr %next.gep1058, align 4, !alias.scope !103, !noalias !100
  %wide.load1060 = load <2 x i64>, ptr %i.aby, align 4, !alias.scope !103, !noalias !100
  %i.abz = getelementptr i8, ptr %next.gep1057, i64 16
  store <2 x i64> %wide.load1059, ptr %next.gep1057, align 4, !alias.scope !100, !noalias !103
  store <2 x i64> %wide.load1060, ptr %i.abz, align 4, !alias.scope !100, !noalias !103
  %index.next1061 = add nuw i64 %index1056, 4     ; 2 uses
  %i.aca = icmp eq i64 %index.next1061, %n.vec1054
  br i1 %i.aca, label %middle.block1062, label %vector.body1055, !llvm.loop !105

middle.block1062:                                 ; preds = %vector.body1055
  %cmp.n1063 = icmp eq i64 %i.abs, %n.vec1054
  br i1 %cmp.n1063, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i453, label %.lr.ph.i.i.i.i.i449.preheader1107

.lr.ph.i.i.i.i.i449.preheader1107:                ; preds = %.lr.ph.i.i.i.i.i449.preheader, %middle.block1062
  %.012.i.i.i.i.i450.ph = phi ptr [ %i.abj, %.lr.ph.i.i.i.i.i449.preheader ], [ %i.abv, %middle.block1062 ]
  %.0911.i.i.i.i.i451.ph = phi ptr [ %i.aay, %.lr.ph.i.i.i.i.i449.preheader ], [ %i.abw, %middle.block1062 ]
  br label %.lr.ph.i.i.i.i.i449

.lr.ph.i.i.i.i.i449:                              ; preds = %.lr.ph.i.i.i.i.i449.preheader1107, %.lr.ph.i.i.i.i.i449
  %.012.i.i.i.i.i450 = phi ptr [ %i.acd, %.lr.ph.i.i.i.i.i449 ], [ %.012.i.i.i.i.i450.ph, %.lr.ph.i.i.i.i.i449.preheader1107 ] ; 2 uses
  %.0911.i.i.i.i.i451 = phi ptr [ %i.acc, %.lr.ph.i.i.i.i.i449 ], [ %.0911.i.i.i.i.i451.ph, %.lr.ph.i.i.i.i.i449.preheader1107 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !100)
  call void @llvm.experimental.noalias.scope.decl(metadata !103)
  %i.acb = load i64, ptr %.0911.i.i.i.i.i451, align 4, !alias.scope !103, !noalias !100
  store i64 %i.acb, ptr %.012.i.i.i.i.i450, align 4, !alias.scope !100, !noalias !103
  %i.acc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i451, i64 8 ; 2 uses
  %i.acd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i450, i64 8 ; 2 uses
  %.not.i.i.i.i.i452 = icmp eq ptr %i.acc, %i.aaq
  br i1 %.not.i.i.i.i.i452, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i453, label %.lr.ph.i.i.i.i.i449, !llvm.loop !106

_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i453: ; preds = %.lr.ph.i.i.i.i.i449, %middle.block1062, %.noexc458
  %.0.lcssa.i.i.i.i.i454 = phi ptr [ %i.abj, %.noexc458 ], [ %i.abv, %middle.block1062 ], [ %i.acd, %.lr.ph.i.i.i.i.i449 ]
  %i.ace = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i454, i64 8
  %.not.i34.i.i455 = icmp eq ptr %i.aay, null
  br i1 %.not.i34.i.i455, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i456, label %bb.ca

bb.ca:                                            ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i453
  call void @_ZdlPvm(ptr noundef nonnull %i.aay, i64 noundef %i.abb) #23
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i456

_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i456: ; preds = %bb.ca, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i453
  store ptr %i.abj, ptr %i.aan, align 8
  store ptr %i.ace, ptr %i.aap, align 8
  %i.acf = getelementptr inbounds nuw [8 x i8], ptr %i.abj, i64 %i.abh
  store ptr %i.acf, ptr %i.aar, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit459

_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit459: ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i456, %bb.by
  %i.acg = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  %i.ach = load ptr, ptr %i.cm, align 8           ; 2 uses
  %.not10.i.i.i.i460 = icmp eq ptr %i.ach, null
  br i1 %.not10.i.i.i.i460, label %.critedge.i471, label %.lr.ph.i.i.i.i461

.lr.ph.i.i.i.i461:                                ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit459
  %i.aci = load i32, ptr %i.acg, align 4          ; 2 uses
  br label %bb.cb

bb.cb:                                            ; preds = %bb.cb, %.lr.ph.i.i.i.i461
  %.012.i.i.i.i462 = phi ptr [ %i.ach, %.lr.ph.i.i.i.i461 ], [ %.1.i.i.i.i467, %bb.cb ] ; 4 uses
  %.0811.i.i.i.i463 = phi ptr [ %i.cl, %.lr.ph.i.i.i.i461 ], [ %.19.i.i.i.i464, %bb.cb ] ; 2 uses
  %i.acj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i462, i64 32
  %i.ack = load i32, ptr %i.acj, align 4
  %i.acl = icmp slt i32 %i.ack, %i.aci            ; 3 uses
  %.19.i.i.i.i464 = select i1 %i.acl, ptr %.0811.i.i.i.i463, ptr %.012.i.i.i.i462 ; 5 uses
  %.1.in.v.i.i.i.i465 = select i1 %i.acl, i64 24, i64 16
  %.1.in.i.i.i.i466 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i462, i64 %.1.in.v.i.i.i.i465
  %.1.i.i.i.i467 = load ptr, ptr %.1.in.i.i.i.i466, align 8 ; 2 uses
  %.not.i.i.i.i468 = icmp eq ptr %.1.i.i.i.i467, null
  br i1 %.not.i.i.i.i468, label %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i469, label %bb.cb, !llvm.loop !29

_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i469: ; preds = %bb.cb
  %i.acm = icmp eq ptr %.19.i.i.i.i464, %i.cl
  br i1 %i.acm, label %.critedge.i471, label %bb.cc

bb.cc:                                            ; preds = %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i469
  %.19.i.i.i.i464.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.acl, ptr %.0811.i.i.i.i463, ptr %.012.i.i.i.i462
  %.19.i.i.i.i464.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i464.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.acn = load i32, ptr %.19.i.i.i.i464.sroa.sel.v.sroa.sel.v.sroa.sel, align 4
  %i.aco = icmp slt i32 %i.aci, %i.acn
  br i1 %i.aco, label %.critedge.i471, label %bb.cd

.critedge.i471:                                   ; preds = %bb.cc, %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i469, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit459
  %.08.lcssa.i.i.i11.i472 = phi ptr [ %.19.i.i.i.i464, %bb.cc ], [ %.19.i.i.i.i464, %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i469 ], [ %i.cl, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit459 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store ptr %i.acg, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.acp = invoke ptr @_ZNSt8_Rb_treeIiSt4pairIKiSt6vectorI14aiVertexWeightSaIS3_EEESt10_Select1stIS6_ESt4lessIiESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %30, ptr %.08.lcssa.i.i.i11.i472, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %.noexc473 unwind label %.loopexit574

.noexc473:                                        ; preds = %.critedge.i471
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.cd

bb.cd:                                            ; preds = %.noexc473, %bb.cc
  %.sroa.06.0.i470 = phi ptr [ %i.acp, %.noexc473 ], [ %.19.i.i.i.i464, %bb.cc ] ; 3 uses
  %i.acq = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i470, i64 40 ; 2 uses
  %i.acr = getelementptr inbounds nuw i8, ptr %34, i64 32 ; 2 uses
  %i.acs = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i470, i64 48 ; 4 uses
  %i.act = load ptr, ptr %i.acs, align 8          ; 6 uses
  %i.acu = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i470, i64 56 ; 2 uses
  %i.acv = load ptr, ptr %i.acu, align 8
  %.not.i475 = icmp eq ptr %i.act, %i.acv
  br i1 %.not.i475, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.acw = load float, ptr %i.acr, align 4
  %i.acx = trunc nuw nsw i64 %indvars.iv704 to i32
  store i32 %i.acx, ptr %i.act, align 4
  %i.acy = getelementptr inbounds nuw i8, ptr %i.act, i64 4
  store float %i.acw, ptr %i.acy, align 4
  %i.acz = load ptr, ptr %i.acs, align 8
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acz, i64 8
  store ptr %i.ada, ptr %i.acs, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit490

bb.cf:                                            ; preds = %bb.cd
  %i.adb = load ptr, ptr %i.acq, align 8          ; 7 uses
  %i.adc = ptrtoint ptr %i.act to i64             ; 2 uses
  %i.add = ptrtoint ptr %i.adb to i64             ; 3 uses
  %i.ade = sub i64 %i.adc, %i.add                 ; 4 uses
  %i.adf = icmp eq i64 %i.ade, 9223372036854775800
  br i1 %i.adf, label %.invoke836, label %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i476

_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i476: ; preds = %bb.cf
  %i.adg = ashr exact i64 %i.ade, 3               ; 3 uses
  %.sroa.speculated.i.i.i477 = call i64 @llvm.umax.i64(i64 %i.adg, i64 1)
  %i.adh = add nsw i64 %.sroa.speculated.i.i.i477, %i.adg ; 2 uses
  %i.adi = icmp ult i64 %i.adh, %i.adg
  %i.adj = call i64 @llvm.umin.i64(i64 %i.adh, i64 1152921504606846975)
  %i.adk = select i1 %i.adi, i64 1152921504606846975, i64 %i.adj ; 3 uses
  %.not.i.i.i478 = icmp ne i64 %i.adk, 0
  call void @llvm.assume(i1 %.not.i.i.i478)
  %i.adl = shl nuw nsw i64 %i.adk, 3
  %i.adm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.adl) #25
          to label %.noexc489 unwind label %.loopexit574 ; 8 uses

.noexc489:                                        ; preds = %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i476
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adm, i64 %i.ade ; 2 uses
  %i.ado = load float, ptr %i.acr, align 4
  %i.adp = trunc nuw nsw i64 %indvars.iv704 to i32
  store i32 %i.adp, ptr %i.adn, align 4
  %i.adq = getelementptr inbounds nuw i8, ptr %i.adn, i64 4
  store float %i.ado, ptr %i.adq, align 4
  %.not10.i.i.i.i.i479 = icmp eq ptr %i.adb, %i.act
  br i1 %.not10.i.i.i.i.i479, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i484, label %.lr.ph.i.i.i.i.i480.preheader

.lr.ph.i.i.i.i.i480.preheader:                    ; preds = %.noexc489
  %i.adr = ptrtoaddr ptr %i.adm to i64
  %i.ads = add i64 %i.adc, -8
  %i.adt = sub i64 %i.ads, %i.add                 ; 2 uses
  %i.adu = lshr i64 %i.adt, 3
  %i.adv = add nuw nsw i64 %i.adu, 1              ; 2 uses
  %min.iters.check1033 = icmp ult i64 %i.adt, 24
  %i.adw = sub i64 %i.adr, %i.add
  %diff.check1031 = icmp ult i64 %i.adw, 32
  %or.cond1094 = or i1 %min.iters.check1033, %diff.check1031
  br i1 %or.cond1094, label %.lr.ph.i.i.i.i.i480.preheader1106, label %vector.ph1034

vector.ph1034:                                    ; preds = %.lr.ph.i.i.i.i.i480.preheader
  %n.vec1036 = and i64 %i.adv, 4611686018427387900 ; 3 uses
  %i.adx = shl i64 %n.vec1036, 3                  ; 2 uses
  %i.ady = getelementptr i8, ptr %i.adm, i64 %i.adx ; 2 uses
  %i.adz = getelementptr i8, ptr %i.adb, i64 %i.adx
  br label %vector.body1037

vector.body1037:                                  ; preds = %vector.body1037, %vector.ph1034
  %index1038 = phi i64 [ 0, %vector.ph1034 ], [ %index.next1043, %vector.body1037 ] ; 2 uses
  %i.aea = shl i64 %index1038, 3                  ; 2 uses
  %next.gep1039 = getelementptr i8, ptr %i.adm, i64 %i.aea ; 2 uses
  %next.gep1040 = getelementptr i8, ptr %i.adb, i64 %i.aea ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !107)
  call void @llvm.experimental.noalias.scope.decl(metadata !110)
  %i.aeb = getelementptr i8, ptr %next.gep1040, i64 16
  %wide.load1041 = load <2 x i64>, ptr %next.gep1040, align 4, !alias.scope !110, !noalias !107
  %wide.load1042 = load <2 x i64>, ptr %i.aeb, align 4, !alias.scope !110, !noalias !107
  %i.aec = getelementptr i8, ptr %next.gep1039, i64 16
  store <2 x i64> %wide.load1041, ptr %next.gep1039, align 4, !alias.scope !107, !noalias !110
  store <2 x i64> %wide.load1042, ptr %i.aec, align 4, !alias.scope !107, !noalias !110
  %index.next1043 = add nuw i64 %index1038, 4     ; 2 uses
  %i.aed = icmp eq i64 %index.next1043, %n.vec1036
  br i1 %i.aed, label %middle.block1044, label %vector.body1037, !llvm.loop !112

middle.block1044:                                 ; preds = %vector.body1037
  %cmp.n1045 = icmp eq i64 %i.adv, %n.vec1036
  br i1 %cmp.n1045, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i484, label %.lr.ph.i.i.i.i.i480.preheader1106

.lr.ph.i.i.i.i.i480.preheader1106:                ; preds = %.lr.ph.i.i.i.i.i480.preheader, %middle.block1044
  %.012.i.i.i.i.i481.ph = phi ptr [ %i.adm, %.lr.ph.i.i.i.i.i480.preheader ], [ %i.ady, %middle.block1044 ]
  %.0911.i.i.i.i.i482.ph = phi ptr [ %i.adb, %.lr.ph.i.i.i.i.i480.preheader ], [ %i.adz, %middle.block1044 ]
  br label %.lr.ph.i.i.i.i.i480

.lr.ph.i.i.i.i.i480:                              ; preds = %.lr.ph.i.i.i.i.i480.preheader1106, %.lr.ph.i.i.i.i.i480
  %.012.i.i.i.i.i481 = phi ptr [ %i.aeg, %.lr.ph.i.i.i.i.i480 ], [ %.012.i.i.i.i.i481.ph, %.lr.ph.i.i.i.i.i480.preheader1106 ] ; 2 uses
  %.0911.i.i.i.i.i482 = phi ptr [ %i.aef, %.lr.ph.i.i.i.i.i480 ], [ %.0911.i.i.i.i.i482.ph, %.lr.ph.i.i.i.i.i480.preheader1106 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !107)
  call void @llvm.experimental.noalias.scope.decl(metadata !110)
  %i.aee = load i64, ptr %.0911.i.i.i.i.i482, align 4, !alias.scope !110, !noalias !107
  store i64 %i.aee, ptr %.012.i.i.i.i.i481, align 4, !alias.scope !107, !noalias !110
  %i.aef = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i482, i64 8 ; 2 uses
  %i.aeg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i481, i64 8 ; 2 uses
  %.not.i.i.i.i.i483 = icmp eq ptr %i.aef, %i.act
  br i1 %.not.i.i.i.i.i483, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i484, label %.lr.ph.i.i.i.i.i480, !llvm.loop !113

_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i484: ; preds = %.lr.ph.i.i.i.i.i480, %middle.block1044, %.noexc489
  %.0.lcssa.i.i.i.i.i485 = phi ptr [ %i.adm, %.noexc489 ], [ %i.ady, %middle.block1044 ], [ %i.aeg, %.lr.ph.i.i.i.i.i480 ]
  %i.aeh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i485, i64 8
  %.not.i34.i.i486 = icmp eq ptr %i.adb, null
  br i1 %.not.i34.i.i486, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i487, label %bb.cg

bb.cg:                                            ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i484
  call void @_ZdlPvm(ptr noundef nonnull %i.adb, i64 noundef %i.ade) #23
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i487

_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i487: ; preds = %bb.cg, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i484
  store ptr %i.adm, ptr %i.acq, align 8
  store ptr %i.aeh, ptr %i.acs, align 8
  %i.aei = getelementptr inbounds nuw [8 x i8], ptr %i.adm, i64 %i.adk
  store ptr %i.aei, ptr %i.acu, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit490

_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit490: ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i487, %bb.ce
  %i.aej = getelementptr inbounds nuw i8, ptr %34, i64 20 ; 2 uses
  %i.aek = load ptr, ptr %i.cm, align 8           ; 2 uses
  %.not10.i.i.i.i491 = icmp eq ptr %i.aek, null
  br i1 %.not10.i.i.i.i491, label %.critedge.i502, label %.lr.ph.i.i.i.i492

.lr.ph.i.i.i.i492:                                ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit490
  %i.ael = load i32, ptr %i.aej, align 4          ; 2 uses
  br label %bb.ch

bb.ch:                                            ; preds = %bb.ch, %.lr.ph.i.i.i.i492
  %.012.i.i.i.i493 = phi ptr [ %i.aek, %.lr.ph.i.i.i.i492 ], [ %.1.i.i.i.i498, %bb.ch ] ; 4 uses
  %.0811.i.i.i.i494 = phi ptr [ %i.cl, %.lr.ph.i.i.i.i492 ], [ %.19.i.i.i.i495, %bb.ch ] ; 2 uses
  %i.aem = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i493, i64 32
  %i.aen = load i32, ptr %i.aem, align 4
  %i.aeo = icmp slt i32 %i.aen, %i.ael            ; 3 uses
  %.19.i.i.i.i495 = select i1 %i.aeo, ptr %.0811.i.i.i.i494, ptr %.012.i.i.i.i493 ; 5 uses
  %.1.in.v.i.i.i.i496 = select i1 %i.aeo, i64 24, i64 16
  %.1.in.i.i.i.i497 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i493, i64 %.1.in.v.i.i.i.i496
  %.1.i.i.i.i498 = load ptr, ptr %.1.in.i.i.i.i497, align 8 ; 2 uses
  %.not.i.i.i.i499 = icmp eq ptr %.1.i.i.i.i498, null
  br i1 %.not.i.i.i.i499, label %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i500, label %bb.ch, !llvm.loop !29

_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i500: ; preds = %bb.ch
  %i.aep = icmp eq ptr %.19.i.i.i.i495, %i.cl
  br i1 %i.aep, label %.critedge.i502, label %bb.ci

bb.ci:                                            ; preds = %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i500
  %.19.i.i.i.i495.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.aeo, ptr %.0811.i.i.i.i494, ptr %.012.i.i.i.i493
  %.19.i.i.i.i495.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i495.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.aeq = load i32, ptr %.19.i.i.i.i495.sroa.sel.v.sroa.sel.v.sroa.sel, align 4
  %i.aer = icmp slt i32 %i.ael, %i.aeq
  br i1 %i.aer, label %.critedge.i502, label %bb.cj

.critedge.i502:                                   ; preds = %bb.ci, %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i500, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit490
  %.08.lcssa.i.i.i11.i503 = phi ptr [ %.19.i.i.i.i495, %bb.ci ], [ %.19.i.i.i.i495, %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i500 ], [ %i.cl, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRiRfEEERS0_DpOT_.exit490 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr %i.aej, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.aes = invoke ptr @_ZNSt8_Rb_treeIiSt4pairIKiSt6vectorI14aiVertexWeightSaIS3_EEESt10_Select1stIS6_ESt4lessIiESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %30, ptr %.08.lcssa.i.i.i11.i503, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %.noexc504 unwind label %.loopexit574

.noexc504:                                        ; preds = %.critedge.i502
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.cj

bb.cj:                                            ; preds = %.noexc504, %bb.ci
  %.sroa.06.0.i501 = phi ptr [ %i.aes, %.noexc504 ], [ %.19.i.i.i.i495, %bb.ci ] ; 3 uses
  %i.aet = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i501, i64 40 ; 2 uses
  %i.aeu = getelementptr inbounds nuw i8, ptr %34, i64 36 ; 2 uses
  %i.aev = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i501, i64 48 ; 4 uses
  %i.aew = load ptr, ptr %i.aev, align 8          ; 6 uses
  %i.aex = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i501, i64 56 ; 2 uses
  %i.aey = load ptr, ptr %i.aex, align 8
  %.not.i506 = icmp eq ptr %i.aew, %i.aey
  br i1 %.not.i506, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.aez = load float, ptr %i.aeu, align 4
  %i.afa = trunc nuw nsw i64 %indvars.iv704 to i32
  store i32 %i.afa, ptr %i.aew, align 4
  %i.afb = getelementptr inbounds nuw i8, ptr %i.aew, i64 4
  store float %i.aez, ptr %i.afb, align 4
  %i.afc = load ptr, ptr %i.aev, align 8
  %i.afd = getelementptr inbounds nuw i8, ptr %i.afc, i64 8
  store ptr %i.afd, ptr %i.aev, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRifEEERS0_DpOT_.exit

bb.cl:                                            ; preds = %bb.cj
  %i.afe = load ptr, ptr %i.aet, align 8          ; 7 uses
  %i.aff = ptrtoint ptr %i.aew to i64             ; 2 uses
  %i.afg = ptrtoint ptr %i.afe to i64             ; 3 uses
  %i.afh = sub i64 %i.aff, %i.afg                 ; 4 uses
  %i.afi = icmp eq i64 %i.afh, 9223372036854775800
  br i1 %i.afi, label %.invoke836, label %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i507

_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i507: ; preds = %bb.cl
  %i.afj = ashr exact i64 %i.afh, 3               ; 3 uses
  %.sroa.speculated.i.i.i508 = call i64 @llvm.umax.i64(i64 %i.afj, i64 1)
  %i.afk = add nsw i64 %.sroa.speculated.i.i.i508, %i.afj ; 2 uses
  %i.afl = icmp ult i64 %i.afk, %i.afj
  %i.afm = call i64 @llvm.umin.i64(i64 %i.afk, i64 1152921504606846975)
  %i.afn = select i1 %i.afl, i64 1152921504606846975, i64 %i.afm ; 3 uses
  %.not.i.i.i509 = icmp ne i64 %i.afn, 0
  call void @llvm.assume(i1 %.not.i.i.i509)
  %i.afo = shl nuw nsw i64 %i.afn, 3
  %i.afp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.afo) #25
          to label %.noexc520 unwind label %.loopexit574 ; 8 uses

.noexc520:                                        ; preds = %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i507
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afp, i64 %i.afh ; 2 uses
  %i.afr = load float, ptr %i.aeu, align 4
  %i.afs = trunc nuw nsw i64 %indvars.iv704 to i32
  store i32 %i.afs, ptr %i.afq, align 4
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afq, i64 4
  store float %i.afr, ptr %i.aft, align 4
  %.not10.i.i.i.i.i510 = icmp eq ptr %i.afe, %i.aew
  br i1 %.not10.i.i.i.i.i510, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i515, label %.lr.ph.i.i.i.i.i511.preheader

.lr.ph.i.i.i.i.i511.preheader:                    ; preds = %.noexc520
  %i.afu = ptrtoaddr ptr %i.afp to i64
  %i.afv = add i64 %i.aff, -8
  %i.afw = sub i64 %i.afv, %i.afg                 ; 2 uses
  %i.afx = lshr i64 %i.afw, 3
  %i.afy = add nuw nsw i64 %i.afx, 1              ; 2 uses
  %min.iters.check1015 = icmp ult i64 %i.afw, 24
  %i.afz = sub i64 %i.afu, %i.afg
  %diff.check1013 = icmp ult i64 %i.afz, 32
  %or.cond1095 = or i1 %min.iters.check1015, %diff.check1013
  br i1 %or.cond1095, label %.lr.ph.i.i.i.i.i511.preheader1105, label %vector.ph1016

vector.ph1016:                                    ; preds = %.lr.ph.i.i.i.i.i511.preheader
  %n.vec1018 = and i64 %i.afy, 4611686018427387900 ; 3 uses
  %i.aga = shl i64 %n.vec1018, 3                  ; 2 uses
  %i.agb = getelementptr i8, ptr %i.afp, i64 %i.aga ; 2 uses
  %i.agc = getelementptr i8, ptr %i.afe, i64 %i.aga
  br label %vector.body1019

vector.body1019:                                  ; preds = %vector.body1019, %vector.ph1016
  %index1020 = phi i64 [ 0, %vector.ph1016 ], [ %index.next1025, %vector.body1019 ] ; 2 uses
  %i.agd = shl i64 %index1020, 3                  ; 2 uses
  %next.gep1021 = getelementptr i8, ptr %i.afp, i64 %i.agd ; 2 uses
  %next.gep1022 = getelementptr i8, ptr %i.afe, i64 %i.agd ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !114)
  call void @llvm.experimental.noalias.scope.decl(metadata !117)
  %i.age = getelementptr i8, ptr %next.gep1022, i64 16
  %wide.load1023 = load <2 x i64>, ptr %next.gep1022, align 4, !alias.scope !117, !noalias !114
  %wide.load1024 = load <2 x i64>, ptr %i.age, align 4, !alias.scope !117, !noalias !114
  %i.agf = getelementptr i8, ptr %next.gep1021, i64 16
  store <2 x i64> %wide.load1023, ptr %next.gep1021, align 4, !alias.scope !114, !noalias !117
  store <2 x i64> %wide.load1024, ptr %i.agf, align 4, !alias.scope !114, !noalias !117
  %index.next1025 = add nuw i64 %index1020, 4     ; 2 uses
  %i.agg = icmp eq i64 %index.next1025, %n.vec1018
  br i1 %i.agg, label %middle.block1026, label %vector.body1019, !llvm.loop !119

middle.block1026:                                 ; preds = %vector.body1019
  %cmp.n1027 = icmp eq i64 %i.afy, %n.vec1018
  br i1 %cmp.n1027, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i515, label %.lr.ph.i.i.i.i.i511.preheader1105

.lr.ph.i.i.i.i.i511.preheader1105:                ; preds = %.lr.ph.i.i.i.i.i511.preheader, %middle.block1026
  %.012.i.i.i.i.i512.ph = phi ptr [ %i.afp, %.lr.ph.i.i.i.i.i511.preheader ], [ %i.agb, %middle.block1026 ]
  %.0911.i.i.i.i.i513.ph = phi ptr [ %i.afe, %.lr.ph.i.i.i.i.i511.preheader ], [ %i.agc, %middle.block1026 ]
  br label %.lr.ph.i.i.i.i.i511

.lr.ph.i.i.i.i.i511:                              ; preds = %.lr.ph.i.i.i.i.i511.preheader1105, %.lr.ph.i.i.i.i.i511
  %.012.i.i.i.i.i512 = phi ptr [ %i.agj, %.lr.ph.i.i.i.i.i511 ], [ %.012.i.i.i.i.i512.ph, %.lr.ph.i.i.i.i.i511.preheader1105 ] ; 2 uses
  %.0911.i.i.i.i.i513 = phi ptr [ %i.agi, %.lr.ph.i.i.i.i.i511 ], [ %.0911.i.i.i.i.i513.ph, %.lr.ph.i.i.i.i.i511.preheader1105 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !114)
  call void @llvm.experimental.noalias.scope.decl(metadata !117)
  %i.agh = load i64, ptr %.0911.i.i.i.i.i513, align 4, !alias.scope !117, !noalias !114
  store i64 %i.agh, ptr %.012.i.i.i.i.i512, align 4, !alias.scope !114, !noalias !117
  %i.agi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i513, i64 8 ; 2 uses
  %i.agj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i512, i64 8 ; 2 uses
  %.not.i.i.i.i.i514 = icmp eq ptr %i.agi, %i.aew
  br i1 %.not.i.i.i.i.i514, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i515, label %.lr.ph.i.i.i.i.i511, !llvm.loop !120

_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i515: ; preds = %.lr.ph.i.i.i.i.i511, %middle.block1026, %.noexc520
  %.0.lcssa.i.i.i.i.i516 = phi ptr [ %i.afp, %.noexc520 ], [ %i.agb, %middle.block1026 ], [ %i.agj, %.lr.ph.i.i.i.i.i511 ]
  %i.agk = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i516, i64 8
  %.not.i34.i.i517 = icmp eq ptr %i.afe, null
  br i1 %.not.i34.i.i517, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i518, label %bb.cm

bb.cm:                                            ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i515
  call void @_ZdlPvm(ptr noundef nonnull %i.afe, i64 noundef %i.afh) #23
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i518

_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i518: ; preds = %bb.cm, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i515
  store ptr %i.afp, ptr %i.aet, align 8
  store ptr %i.agk, ptr %i.aev, align 8
  %i.agl = getelementptr inbounds nuw [8 x i8], ptr %i.afp, i64 %i.afn
  store ptr %i.agl, ptr %i.aex, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRifEEERS0_DpOT_.exit

.loopexit574:                                     ; preds = %.critedge.i409, %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i414, %.critedge.i440, %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i445, %.critedge.i471, %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i476, %.critedge.i502, %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i507
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

.loopexit.split-lp:                               ; preds = %.invoke836
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJRifEEERS0_DpOT_.exit: ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i518, %bb.ck, %bb.bk, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRifEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i394, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i332, %bb.ax, %bb.x, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRifEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i208, %bb.j, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJRifEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, %.thread571
  %indvars.iv.next705 = add nuw nsw i64 %indvars.iv704, 1 ; 2 uses
  %exitcond708.not = icmp eq i64 %indvars.iv.next705, %i.bu
  br i1 %exitcond708.not, label %._crit_edge653, label %bb.c, !llvm.loop !121

bb.cn:                                            ; preds = %._crit_edge653
  %i.agm = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  store i32 %i.cy, ptr %i.agm, align 8
  store ptr %i.dd, ptr %i.e, align 8
  %i.agn = icmp sgt i32 %i.cy, 0
  br i1 %i.agn, label %.lr.ph659, label %._crit_edge660

.lr.ph659:                                        ; preds = %bb.cn
  %i.ago = getelementptr inbounds nuw i8, ptr %1, i64 216
  br label %bb.cq

._crit_edge660:                                   ; preds = %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit.thread, %bb.cn
  %i.agp = load ptr, ptr %i.cm, align 8
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiSt6vectorI14aiVertexWeightSaIS3_EEESt10_Select1stIS6_ESt4lessIiESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %30, ptr noundef %i.agp)
          to label %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEED2Ev.exit unwind label %bb.co

bb.co:                                            ; preds = %._crit_edge660
  %i.agq = landingpad { ptr, i32 }
          catch ptr null
  %i.agr = extractvalue { ptr, i32 } %i.agq, 0
  call void @__clang_call_terminate(ptr %i.agr) #26
  unreachable

_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEED2Ev.exit: ; preds = %._crit_edge660
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #22
  ret ptr %i.a

bb.cp:                                            ; preds = %._crit_edge653
  %i.ags = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

bb.cq:                                            ; preds = %.lr.ph659, %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit.thread
  %i.agt = phi i32 [ %i.cy, %.lr.ph659 ], [ %i.ajf, %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit.thread ] ; 4 uses
  %indvars.iv712 = phi i64 [ 0, %.lr.ph659 ], [ %indvars.iv.next713, %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit.thread ] ; 5 uses
  %i.agu = invoke noalias noundef nonnull dereferenceable(1120) ptr @_Znwm(i64 noundef 1120) #25
          to label %bb.cr unwind label %bb.cw     ; 16 uses

bb.cr:                                            ; preds = %bb.cq
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agu, i64 1056 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1120) %i.agu, i8 0, i64 1056, i1 false)
  store float 1.000000e+00, ptr %i.agv, align 4
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agu, i64 1060 ; 2 uses
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agu, i64 1076 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.agw, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.agx, align 4
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agu, i64 1080 ; 2 uses
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agu, i64 1096 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.agy, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.agz, align 4
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agu, i64 1100 ; 2 uses
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.agu, i64 1116 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aha, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ahb, align 4
  %i.ahc = load ptr, ptr %i.ago, align 8
  %i.ahd = getelementptr inbounds nuw [176 x i8], ptr %i.ahc, i64 %indvars.iv712 ; 5 uses
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.ahd, i64 8
  %i.ahf = load i64, ptr %i.ahe, align 8          ; 4 uses
  %i.ahg = icmp ugt i64 %i.ahf, 1023
  br i1 %i.ahg, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
end_hunk_1
