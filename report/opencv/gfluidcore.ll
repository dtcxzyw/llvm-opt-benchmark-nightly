inline.NumInlined: 7926
inline.NumDeleted: 1201
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 198
loop-unroll.NumUnrolled: 207
begin_hunk_0_@_ZN2cv4gapi5fluid10GFluidMulC3runERKNS1_4ViewERKNS_7Scalar_IdEEiRNS1_6BufferESB_:bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.w = load i32, ptr %i.v, align 8, !tbaa !128  ; 4 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph.preheader, label %_ZN2cv4gapi5fluid17scalar_to_scratchERKNS_7Scalar_IdEEPfii.exit

.lr.ph.preheader:                                 ; preds = %bb.h
  %wide.trip.count = zext nneg i32 %i.w to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.y = icmp eq i32 %i.w, 1
  br i1 %i.y, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.z = trunc nuw nsw i64 %indvars.iv to i32
  %i.aa = srem i32 %i.z, %i.q
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ab
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !390
  %i.ae = fptrunc double %i.ad to float
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv
  store float %i.ae, ptr %i.af, align 4, !tbaa !162
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ag = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.ah = srem i32 %i.ag, %i.q
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ai
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !390
  %i.al = fptrunc double %i.ak to float
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next
  store float %i.al, ptr %i.am, align 4, !tbaa !162
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN2cv4gapi5fluid17scalar_to_scratchERKNS_7Scalar_IdEEPfii.exit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !1402

_ZN2cv4gapi5fluid17scalar_to_scratchERKNS_7Scalar_IdEEPfii.exit.loopexit.unr-lcssa: ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN2cv4gapi5fluid17scalar_to_scratchERKNS_7Scalar_IdEEPfii.exit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %_ZN2cv4gapi5fluid17scalar_to_scratchERKNS_7Scalar_IdEEPfii.exit.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %_ZN2cv4gapi5fluid17scalar_to_scratchERKNS_7Scalar_IdEEPfii.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod815 = trunc i32 %i.w to i1
  tail call void @llvm.assume(i1 %lcmp.mod815)
  %i.an = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %i.ao = srem i32 %i.an, %i.q
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ap
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !390
  %i.as = fptrunc double %i.ar to float
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.epil.init
  store float %i.as, ptr %i.at, align 4, !tbaa !162
  br label %_ZN2cv4gapi5fluid17scalar_to_scratchERKNS_7Scalar_IdEEPfii.exit

_ZN2cv4gapi5fluid17scalar_to_scratchERKNS_7Scalar_IdEEPfii.exit: ; preds = %.lr.ph.epil.preheader, %_ZN2cv4gapi5fluid17scalar_to_scratchERKNS_7Scalar_IdEEPfii.exit.loopexit.unr-lcssa, %._ZN2cv4gapi5fluid17scalar_to_scratchERKNS_7Scalar_IdEEPfii.exit_crit_edge, %bb.h
  %i.au = phi ptr [ %.pre450, %._ZN2cv4gapi5fluid17scalar_to_scratchERKNS_7Scalar_IdEEPfii.exit_crit_edge ], [ %i.u, %bb.h ], [ %i.u, %_ZN2cv4gapi5fluid17scalar_to_scratchERKNS_7Scalar_IdEEPfii.exit.loopexit.unr-lcssa ], [ %i.u, %.lr.ph.epil.preheader ] ; 55 uses
  %i.av = ptrtoaddr ptr %i.au to i64              ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !89 ; 49 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !99
  switch i32 %i.az, label %.thread160 [
    i32 0, label %bb.i
    i32 2, label %bb.n
    i32 3, label %bb.s
    i32 5, label %bb.x
  ]

bb.i:                                             ; preds = %_ZN2cv4gapi5fluid17scalar_to_scratchERKNS_7Scalar_IdEEPfii.exit
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !107 ; 9 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !99
  switch i32 %i.bc, label %.thread160 [
    i32 0, label %bb.j
    i32 2, label %bb.k
    i32 3, label %bb.l
    i32 5, label %bb.m
  ]

bb.j:                                             ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 72
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !117
  %i.bf = sext i32 %i.be to i64
  %i.bg = load ptr, ptr %i.ba, align 8, !tbaa !124
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bf
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !125 ; 4 uses
  %i.bj = load ptr, ptr %i.ax, align 8, !tbaa !126
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !125 ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !128 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ax, i64 28
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !133 ; 3 uses
  %i.bp = icmp sgt i32 %i.bm, 0
  %i.bq = icmp sgt i32 %i.bo, 0
  %or.cond = select i1 %i.bp, i1 %i.bq, i1 false
  br i1 %or.cond, label %.preheader.preheader, label %_ZN2cv4gapi5fluid12run_arithm_sIhhEEvRNS1_6BufferERKNS1_4ViewEPKfNS1_6ArithmEf.exit

.preheader.preheader:                             ; preds = %bb.j
  %i.br = zext nneg i32 %i.bo to i64              ; 6 uses
  %wide.trip.count447 = zext nneg i32 %i.bm to i64 ; 2 uses
  %i.bs = mul nuw nsw i64 %wide.trip.count447, %i.br ; 2 uses
  %scevgep774 = getelementptr i8, ptr %i.bk, i64 %i.bs ; 2 uses
  %scevgep775 = getelementptr i8, ptr %i.bi, i64 %i.bs
  %i.bt = shl nuw nsw i64 %i.br, 2
  %scevgep776 = getelementptr i8, ptr %i.au, i64 %i.bt
  %min.iters.check785 = icmp ult i32 %i.bo, 4
  %bound0777 = icmp ult ptr %i.bk, %scevgep775
  %bound1778 = icmp ult ptr %i.bi, %scevgep774
  %found.conflict779 = and i1 %bound0777, %bound1778
  %bound0780 = icmp ult ptr %i.bk, %scevgep776
  %bound1781 = icmp ult ptr %i.au, %scevgep774
  %found.conflict782 = and i1 %bound0780, %bound1781
  %conflict.rdx783 = or i1 %found.conflict779, %found.conflict782
  %n.vec787 = and i64 %i.br, 2147483644           ; 3 uses
  %cmp.n794 = icmp eq i64 %n.vec787, %i.br
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge256
  %indvars.iv444 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next445, %._crit_edge256 ] ; 2 uses
  %i.bu = mul nuw nsw i64 %indvars.iv444, %i.br   ; 2 uses
  %brmerge = select i1 %min.iters.check785, i1 true, i1 %conflict.rdx783
  br i1 %brmerge, label %scalar.ph784.preheader, label %vector.body788

vector.body788:                                   ; preds = %.preheader, %vector.body788
  %index789 = phi i64 [ %index.next792, %vector.body788 ], [ 0, %.preheader ] ; 3 uses
  %i.bv = add nuw nsw i64 %index789, %i.bu        ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bv
  %wide.load790 = load <4 x i8>, ptr %i.bw, align 1, !tbaa !39, !alias.scope !1473
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %index789
  %wide.load791 = load <4 x float>, ptr %i.bx, align 4, !tbaa !162, !alias.scope !1476
  %i.by = uitofp <4 x i8> %wide.load790 to <4 x float>
  %i.bz = fmul <4 x float> %wide.load791, %i.by
  %i.ca = tail call <4 x float> @llvm.rint.v4f32(<4 x float> %i.bz)
  %i.cb = fptosi <4 x float> %i.ca to <4 x i32>   ; 2 uses
  %i.cc = icmp slt <4 x i32> %i.cb, zeroinitializer
  %i.cd = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.cb, <4 x i32> splat (i32 255))
  %i.ce = trunc nuw <4 x i32> %i.cd to <4 x i8>
  %i.cf = select <4 x i1> %i.cc, <4 x i8> zeroinitializer, <4 x i8> %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bv
  store <4 x i8> %i.cf, ptr %i.cg, align 1, !tbaa !39, !alias.scope !1478, !noalias !1480
  %index.next792 = add nuw i64 %index789, 4       ; 2 uses
  %i.ch = icmp eq i64 %index.next792, %n.vec787
  br i1 %i.ch, label %middle.block793, label %vector.body788, !llvm.loop !1481

middle.block793:                                  ; preds = %vector.body788
  br i1 %cmp.n794, label %._crit_edge256, label %scalar.ph784.preheader

scalar.ph784.preheader:                           ; preds = %.preheader, %middle.block793
  %indvars.iv439.ph = phi i64 [ %n.vec787, %middle.block793 ], [ 0, %.preheader ]
  br label %scalar.ph784

._crit_edge256:                                   ; preds = %scalar.ph784, %middle.block793
  %indvars.iv.next445 = add nuw nsw i64 %indvars.iv444, 1 ; 2 uses
  %exitcond448.not = icmp eq i64 %indvars.iv.next445, %wide.trip.count447
  br i1 %exitcond448.not, label %_ZN2cv4gapi5fluid12run_arithm_sIhhEEvRNS1_6BufferERKNS1_4ViewEPKfNS1_6ArithmEf.exit, label %.preheader, !llvm.loop !1482

scalar.ph784:                                     ; preds = %scalar.ph784.preheader, %scalar.ph784
  %indvars.iv439 = phi i64 [ %indvars.iv.next440, %scalar.ph784 ], [ %indvars.iv439.ph, %scalar.ph784.preheader ] ; 3 uses
  %i.ci = add nuw nsw i64 %indvars.iv439, %i.bu   ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !39
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv439
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !162
  %i.cn = uitofp i8 %i.ck to float
  %i.co = fmul float %i.cm, %i.cn
  %i.cp = tail call noundef float @rintf(float noundef %i.co) #25, !callees !172, !inline_history !173
  %i.cq = fptosi float %i.cp to i32               ; 2 uses
  %i.cr = icmp slt i32 %i.cq, 0
  %spec.select3.i = tail call i32 @llvm.umin.i32(i32 %i.cq, i32 255)
  %spec.select.i = trunc nuw i32 %spec.select3.i to i8
  %i.cs = select i1 %i.cr, i8 0, i8 %spec.select.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.ci
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !39
  %indvars.iv.next440 = add nuw nsw i64 %indvars.iv439, 1 ; 2 uses
  %exitcond443.not = icmp eq i64 %indvars.iv.next440, %i.br
  br i1 %exitcond443.not, label %._crit_edge256, label %scalar.ph784, !llvm.loop !1483

bb.k:                                             ; preds = %bb.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ba, i64 72
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !117
  %i.cw = sext i32 %i.cv to i64
  %i.cx = load ptr, ptr %i.ba, align 8, !tbaa !124
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.cw
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !125 ; 4 uses
  %i.da = load ptr, ptr %i.ax, align 8, !tbaa !126
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !125 ; 5 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !128 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.ax, i64 28
  %i.df = load i32, ptr %i.de, align 4, !tbaa !133 ; 3 uses
  %i.dg = icmp sgt i32 %i.dd, 0
  %i.dh = icmp sgt i32 %i.df, 0
  %or.cond258 = select i1 %i.dg, i1 %i.dh, i1 false
  br i1 %or.cond258, label %.preheader164.preheader, label %_ZN2cv4gapi5fluid12run_arithm_sIhhEEvRNS1_6BufferERKNS1_4ViewEPKfNS1_6ArithmEf.exit

.preheader164.preheader:                          ; preds = %bb.k
  %i.di = zext nneg i32 %i.df to i64              ; 6 uses
  %wide.trip.count437 = zext nneg i32 %i.dd to i64 ; 2 uses
  %i.dj = mul nuw nsw i64 %wide.trip.count437, %i.di ; 2 uses
  %scevgep751 = getelementptr i8, ptr %i.db, i64 %i.dj ; 2 uses
  %i.dk = shl nuw nsw i64 %i.dj, 1
  %scevgep752 = getelementptr i8, ptr %i.cz, i64 %i.dk
  %i.dl = shl nuw nsw i64 %i.di, 2
  %scevgep753 = getelementptr i8, ptr %i.au, i64 %i.dl
  %min.iters.check762 = icmp ult i32 %i.df, 4
  %bound0754 = icmp ult ptr %i.db, %scevgep752
  %bound1755 = icmp ult ptr %i.cz, %scevgep751
  %found.conflict756 = and i1 %bound0754, %bound1755
  %bound0757 = icmp ult ptr %i.db, %scevgep753
  %bound1758 = icmp ult ptr %i.au, %scevgep751
  %found.conflict759 = and i1 %bound0757, %bound1758
  %conflict.rdx760 = or i1 %found.conflict756, %found.conflict759
  %n.vec764 = and i64 %i.di, 2147483644           ; 3 uses
  %cmp.n771 = icmp eq i64 %n.vec764, %i.di
  br label %.preheader164

.preheader164:                                    ; preds = %.preheader164.preheader, %._crit_edge252
  %indvars.iv434 = phi i64 [ 0, %.preheader164.preheader ], [ %indvars.iv.next435, %._crit_edge252 ] ; 2 uses
  %i.dm = mul nuw nsw i64 %indvars.iv434, %i.di   ; 2 uses
  %brmerge828 = select i1 %min.iters.check762, i1 true, i1 %conflict.rdx760
  br i1 %brmerge828, label %scalar.ph761.preheader, label %vector.body765

vector.body765:                                   ; preds = %.preheader164, %vector.body765
  %index766 = phi i64 [ %index.next769, %vector.body765 ], [ 0, %.preheader164 ] ; 3 uses
  %i.dn = add nuw nsw i64 %index766, %i.dm        ; 2 uses
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %i.dn
  %wide.load767 = load <4 x i16>, ptr %i.do, align 2, !tbaa !140, !alias.scope !1484
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %index766
  %wide.load768 = load <4 x float>, ptr %i.dp, align 4, !tbaa !162, !alias.scope !1487
  %i.dq = uitofp <4 x i16> %wide.load767 to <4 x float>
  %i.dr = fmul <4 x float> %wide.load768, %i.dq
  %i.ds = tail call <4 x float> @llvm.rint.v4f32(<4 x float> %i.dr)
  %i.dt = fptosi <4 x float> %i.ds to <4 x i32>   ; 2 uses
  %i.du = icmp slt <4 x i32> %i.dt, zeroinitializer
  %i.dv = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.dt, <4 x i32> splat (i32 255))
  %i.dw = trunc nuw <4 x i32> %i.dv to <4 x i8>
  %i.dx = select <4 x i1> %i.du, <4 x i8> zeroinitializer, <4 x i8> %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.dn
  store <4 x i8> %i.dx, ptr %i.dy, align 1, !tbaa !39, !alias.scope !1489, !noalias !1491
  %index.next769 = add nuw i64 %index766, 4       ; 2 uses
  %i.dz = icmp eq i64 %index.next769, %n.vec764
  br i1 %i.dz, label %middle.block770, label %vector.body765, !llvm.loop !1492

middle.block770:                                  ; preds = %vector.body765
  br i1 %cmp.n771, label %._crit_edge252, label %scalar.ph761.preheader

scalar.ph761.preheader:                           ; preds = %.preheader164, %middle.block770
  %indvars.iv429.ph = phi i64 [ %n.vec764, %middle.block770 ], [ 0, %.preheader164 ]
  br label %scalar.ph761

._crit_edge252:                                   ; preds = %scalar.ph761, %middle.block770
  %indvars.iv.next435 = add nuw nsw i64 %indvars.iv434, 1 ; 2 uses
  %exitcond438.not = icmp eq i64 %indvars.iv.next435, %wide.trip.count437
  br i1 %exitcond438.not, label %_ZN2cv4gapi5fluid12run_arithm_sIhhEEvRNS1_6BufferERKNS1_4ViewEPKfNS1_6ArithmEf.exit, label %.preheader164, !llvm.loop !1493

scalar.ph761:                                     ; preds = %scalar.ph761.preheader, %scalar.ph761
  %indvars.iv429 = phi i64 [ %indvars.iv.next430, %scalar.ph761 ], [ %indvars.iv429.ph, %scalar.ph761.preheader ] ; 3 uses
  %i.ea = add nuw nsw i64 %indvars.iv429, %i.dm   ; 2 uses
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %i.ea
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !140
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv429
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !162
  %i.ef = uitofp i16 %i.ec to float
  %i.eg = fmul float %i.ee, %i.ef
  %i.eh = tail call noundef float @rintf(float noundef %i.eg) #25, !callees !172, !inline_history !173
  %i.ei = fptosi float %i.eh to i32               ; 2 uses
  %i.ej = icmp slt i32 %i.ei, 0
  %spec.select3.i127 = tail call i32 @llvm.umin.i32(i32 %i.ei, i32 255)
  %spec.select.i128 = trunc nuw i32 %spec.select3.i127 to i8
  %i.ek = select i1 %i.ej, i8 0, i8 %spec.select.i128
  %i.el = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.ea
  store i8 %i.ek, ptr %i.el, align 1, !tbaa !39
  %indvars.iv.next430 = add nuw nsw i64 %indvars.iv429, 1 ; 2 uses
  %exitcond433.not = icmp eq i64 %indvars.iv.next430, %i.di
  br i1 %exitcond433.not, label %._crit_edge252, label %scalar.ph761, !llvm.loop !1494

bb.l:                                             ; preds = %bb.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.ba, i64 72
  %i.en = load i32, ptr %i.em, align 8, !tbaa !117
  %i.eo = sext i32 %i.en to i64
  %i.ep = load ptr, ptr %i.ba, align 8, !tbaa !124
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %i.eo
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !125 ; 4 uses
  %i.es = load ptr, ptr %i.ax, align 8, !tbaa !126
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !125 ; 5 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !128 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ax, i64 28
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !133 ; 3 uses
  %i.ey = icmp sgt i32 %i.ev, 0
  %i.ez = icmp sgt i32 %i.ex, 0
  %or.cond259 = select i1 %i.ey, i1 %i.ez, i1 false
  br i1 %or.cond259, label %.preheader166.preheader, label %_ZN2cv4gapi5fluid12run_arithm_sIhhEEvRNS1_6BufferERKNS1_4ViewEPKfNS1_6ArithmEf.exit

.preheader166.preheader:                          ; preds = %bb.l
  %i.fa = zext nneg i32 %i.ex to i64              ; 6 uses
  %wide.trip.count427 = zext nneg i32 %i.ev to i64 ; 2 uses
  %i.fb = mul nuw nsw i64 %wide.trip.count427, %i.fa ; 2 uses
  %scevgep728 = getelementptr i8, ptr %i.et, i64 %i.fb ; 2 uses
  %i.fc = shl nuw nsw i64 %i.fb, 1
  %scevgep729 = getelementptr i8, ptr %i.er, i64 %i.fc
  %i.fd = shl nuw nsw i64 %i.fa, 2
  %scevgep730 = getelementptr i8, ptr %i.au, i64 %i.fd
  %min.iters.check739 = icmp ult i32 %i.ex, 4
  %bound0731 = icmp ult ptr %i.et, %scevgep729
  %bound1732 = icmp ult ptr %i.er, %scevgep728
  %found.conflict733 = and i1 %bound0731, %bound1732
  %bound0734 = icmp ult ptr %i.et, %scevgep730
  %bound1735 = icmp ult ptr %i.au, %scevgep728
  %found.conflict736 = and i1 %bound0734, %bound1735
  %conflict.rdx737 = or i1 %found.conflict733, %found.conflict736
  %n.vec741 = and i64 %i.fa, 2147483644           ; 3 uses
  %cmp.n748 = icmp eq i64 %n.vec741, %i.fa
  br label %.preheader166

.preheader166:                                    ; preds = %.preheader166.preheader, %._crit_edge248
  %indvars.iv424 = phi i64 [ 0, %.preheader166.preheader ], [ %indvars.iv.next425, %._crit_edge248 ] ; 2 uses
  %i.fe = mul nuw nsw i64 %indvars.iv424, %i.fa   ; 2 uses
  %brmerge829 = select i1 %min.iters.check739, i1 true, i1 %conflict.rdx737
  br i1 %brmerge829, label %scalar.ph738.preheader, label %vector.body742

vector.body742:                                   ; preds = %.preheader166, %vector.body742
  %index743 = phi i64 [ %index.next746, %vector.body742 ], [ 0, %.preheader166 ] ; 3 uses
  %i.ff = add nuw nsw i64 %index743, %i.fe        ; 2 uses
  %i.fg = getelementptr inbounds nuw [2 x i8], ptr %i.er, i64 %i.ff
  %wide.load744 = load <4 x i16>, ptr %i.fg, align 2, !tbaa !140, !alias.scope !1495
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %index743
  %wide.load745 = load <4 x float>, ptr %i.fh, align 4, !tbaa !162, !alias.scope !1498
  %i.fi = sitofp <4 x i16> %wide.load744 to <4 x float>
  %i.fj = fmul <4 x float> %wide.load745, %i.fi
  %i.fk = tail call <4 x float> @llvm.rint.v4f32(<4 x float> %i.fj)
  %i.fl = fptosi <4 x float> %i.fk to <4 x i32>   ; 2 uses
  %i.fm = icmp slt <4 x i32> %i.fl, zeroinitializer
  %i.fn = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.fl, <4 x i32> splat (i32 255))
  %i.fo = trunc nuw <4 x i32> %i.fn to <4 x i8>
  %i.fp = select <4 x i1> %i.fm, <4 x i8> zeroinitializer, <4 x i8> %i.fo
  %i.fq = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.ff
  store <4 x i8> %i.fp, ptr %i.fq, align 1, !tbaa !39, !alias.scope !1500, !noalias !1502
  %index.next746 = add nuw i64 %index743, 4       ; 2 uses
  %i.fr = icmp eq i64 %index.next746, %n.vec741
  br i1 %i.fr, label %middle.block747, label %vector.body742, !llvm.loop !1503

middle.block747:                                  ; preds = %vector.body742
  br i1 %cmp.n748, label %._crit_edge248, label %scalar.ph738.preheader

scalar.ph738.preheader:                           ; preds = %.preheader166, %middle.block747
  %indvars.iv419.ph = phi i64 [ %n.vec741, %middle.block747 ], [ 0, %.preheader166 ]
  br label %scalar.ph738

._crit_edge248:                                   ; preds = %scalar.ph738, %middle.block747
  %indvars.iv.next425 = add nuw nsw i64 %indvars.iv424, 1 ; 2 uses
  %exitcond428.not = icmp eq i64 %indvars.iv.next425, %wide.trip.count427
  br i1 %exitcond428.not, label %_ZN2cv4gapi5fluid12run_arithm_sIhhEEvRNS1_6BufferERKNS1_4ViewEPKfNS1_6ArithmEf.exit, label %.preheader166, !llvm.loop !1504

scalar.ph738:                                     ; preds = %scalar.ph738.preheader, %scalar.ph738
  %indvars.iv419 = phi i64 [ %indvars.iv.next420, %scalar.ph738 ], [ %indvars.iv419.ph, %scalar.ph738.preheader ] ; 3 uses
  %i.fs = add nuw nsw i64 %indvars.iv419, %i.fe   ; 2 uses
  %i.ft = getelementptr inbounds nuw [2 x i8], ptr %i.er, i64 %i.fs
  %i.fu = load i16, ptr %i.ft, align 2, !tbaa !140
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv419
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !162
  %i.fx = sitofp i16 %i.fu to float
  %i.fy = fmul float %i.fw, %i.fx
  %i.fz = tail call noundef float @rintf(float noundef %i.fy) #25, !callees !172, !inline_history !173
  %i.ga = fptosi float %i.fz to i32               ; 2 uses
  %i.gb = icmp slt i32 %i.ga, 0
  %spec.select3.i129 = tail call i32 @llvm.umin.i32(i32 %i.ga, i32 255)
  %spec.select.i130 = trunc nuw i32 %spec.select3.i129 to i8
  %i.gc = select i1 %i.gb, i8 0, i8 %spec.select.i130
  %i.gd = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.fs
  store i8 %i.gc, ptr %i.gd, align 1, !tbaa !39
  %indvars.iv.next420 = add nuw nsw i64 %indvars.iv419, 1 ; 2 uses
  %exitcond423.not = icmp eq i64 %indvars.iv.next420, %i.fa
  br i1 %exitcond423.not, label %._crit_edge248, label %scalar.ph738, !llvm.loop !1505

bb.m:                                             ; preds = %bb.i
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ba, i64 72
  %i.gf = load i32, ptr %i.ge, align 8, !tbaa !117
  %i.gg = sext i32 %i.gf to i64
  %i.gh = load ptr, ptr %i.ba, align 8, !tbaa !124
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %i.gg
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !125 ; 4 uses
  %i.gk = load ptr, ptr %i.ax, align 8, !tbaa !126
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !125 ; 5 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.gn = load i32, ptr %i.gm, align 8, !tbaa !128 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.ax, i64 28
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !133 ; 3 uses
  %i.gq = icmp sgt i32 %i.gn, 0
  %i.gr = icmp sgt i32 %i.gp, 0
  %or.cond260 = select i1 %i.gq, i1 %i.gr, i1 false
  br i1 %or.cond260, label %.preheader168.preheader, label %_ZN2cv4gapi5fluid12run_arithm_sIhhEEvRNS1_6BufferERKNS1_4ViewEPKfNS1_6ArithmEf.exit

.preheader168.preheader:                          ; preds = %bb.m
  %i.gs = zext nneg i32 %i.gp to i64              ; 6 uses
  %wide.trip.count417 = zext nneg i32 %i.gn to i64 ; 2 uses
  %i.gt = mul nuw nsw i64 %wide.trip.count417, %i.gs ; 2 uses
  %scevgep705 = getelementptr i8, ptr %i.gl, i64 %i.gt ; 2 uses
  %i.gu = shl nuw i64 %i.gt, 2
  %scevgep706 = getelementptr i8, ptr %i.gj, i64 %i.gu
  %i.gv = shl nuw nsw i64 %i.gs, 2
  %scevgep707 = getelementptr i8, ptr %i.au, i64 %i.gv
  %min.iters.check716 = icmp ult i32 %i.gp, 4
  %bound0708 = icmp ult ptr %i.gl, %scevgep706
  %bound1709 = icmp ult ptr %i.gj, %scevgep705
  %found.conflict710 = and i1 %bound0708, %bound1709
  %bound0711 = icmp ult ptr %i.gl, %scevgep707
  %bound1712 = icmp ult ptr %i.au, %scevgep705
  %found.conflict713 = and i1 %bound0711, %bound1712
  %conflict.rdx714 = or i1 %found.conflict710, %found.conflict713
  %n.vec718 = and i64 %i.gs, 2147483644           ; 3 uses
  %cmp.n725 = icmp eq i64 %n.vec718, %i.gs
  br label %.preheader168

.preheader168:                                    ; preds = %.preheader168.preheader, %._crit_edge244
  %indvars.iv414 = phi i64 [ 0, %.preheader168.preheader ], [ %indvars.iv.next415, %._crit_edge244 ] ; 2 uses
  %i.gw = mul nuw nsw i64 %indvars.iv414, %i.gs   ; 2 uses
  %brmerge830 = select i1 %min.iters.check716, i1 true, i1 %conflict.rdx714
  br i1 %brmerge830, label %scalar.ph715.preheader, label %vector.body719

vector.body719:                                   ; preds = %.preheader168, %vector.body719
  %index720 = phi i64 [ %index.next723, %vector.body719 ], [ 0, %.preheader168 ] ; 3 uses
  %i.gx = add nuw nsw i64 %index720, %i.gw        ; 2 uses
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %i.gx
  %wide.load721 = load <4 x float>, ptr %i.gy, align 4, !tbaa !162, !alias.scope !1506
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %index720
  %wide.load722 = load <4 x float>, ptr %i.gz, align 4, !tbaa !162, !alias.scope !1509
  %i.ha = fmul <4 x float> %wide.load721, %wide.load722
  %i.hb = tail call <4 x float> @llvm.rint.v4f32(<4 x float> %i.ha)
  %i.hc = fptosi <4 x float> %i.hb to <4 x i32>   ; 2 uses
  %i.hd = icmp slt <4 x i32> %i.hc, zeroinitializer
  %i.he = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.hc, <4 x i32> splat (i32 255))
  %i.hf = trunc nuw <4 x i32> %i.he to <4 x i8>
  %i.hg = select <4 x i1> %i.hd, <4 x i8> zeroinitializer, <4 x i8> %i.hf
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.gx
  store <4 x i8> %i.hg, ptr %i.hh, align 1, !tbaa !39, !alias.scope !1511, !noalias !1513
  %index.next723 = add nuw i64 %index720, 4       ; 2 uses
  %i.hi = icmp eq i64 %index.next723, %n.vec718
  br i1 %i.hi, label %middle.block724, label %vector.body719, !llvm.loop !1514

middle.block724:                                  ; preds = %vector.body719
  br i1 %cmp.n725, label %._crit_edge244, label %scalar.ph715.preheader

scalar.ph715.preheader:                           ; preds = %.preheader168, %middle.block724
  %indvars.iv409.ph = phi i64 [ %n.vec718, %middle.block724 ], [ 0, %.preheader168 ]
  br label %scalar.ph715

._crit_edge244:                                   ; preds = %scalar.ph715, %middle.block724
  %indvars.iv.next415 = add nuw nsw i64 %indvars.iv414, 1 ; 2 uses
  %exitcond418.not = icmp eq i64 %indvars.iv.next415, %wide.trip.count417
  br i1 %exitcond418.not, label %_ZN2cv4gapi5fluid12run_arithm_sIhhEEvRNS1_6BufferERKNS1_4ViewEPKfNS1_6ArithmEf.exit, label %.preheader168, !llvm.loop !1515

scalar.ph715:                                     ; preds = %scalar.ph715.preheader, %scalar.ph715
  %indvars.iv409 = phi i64 [ %indvars.iv.next410, %scalar.ph715 ], [ %indvars.iv409.ph, %scalar.ph715.preheader ] ; 3 uses
  %i.hj = add nuw nsw i64 %indvars.iv409, %i.gw   ; 2 uses
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %i.hj
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !162
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv409
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !162
  %i.ho = fmul float %i.hl, %i.hn
  %i.hp = tail call noundef float @rintf(float noundef %i.ho) #25, !callees !172, !inline_history !173
  %i.hq = fptosi float %i.hp to i32               ; 2 uses
  %i.hr = icmp slt i32 %i.hq, 0
  %spec.select4.i = tail call i32 @llvm.umin.i32(i32 %i.hq, i32 255)
  %spec.select.i131 = trunc nuw i32 %spec.select4.i to i8
  %i.hs = select i1 %i.hr, i8 0, i8 %spec.select.i131
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.hj
  store i8 %i.hs, ptr %i.ht, align 1, !tbaa !39
  %indvars.iv.next410 = add nuw nsw i64 %indvars.iv409, 1 ; 2 uses
  %exitcond413.not = icmp eq i64 %indvars.iv.next410, %i.gs
  br i1 %exitcond413.not, label %._crit_edge244, label %scalar.ph715, !llvm.loop !1516

bb.n:                                             ; preds = %_ZN2cv4gapi5fluid17scalar_to_scratchERKNS_7Scalar_IdEEPfii.exit
  %i.hu = load ptr, ptr %i.a, align 8, !tbaa !107 ; 9 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 24
  %i.hw = load i32, ptr %i.hv, align 8, !tbaa !99
  switch i32 %i.hw, label %.thread160 [
    i32 2, label %bb.o
    i32 3, label %bb.p
    i32 0, label %bb.q
    i32 5, label %bb.r
  ]

bb.o:                                             ; preds = %bb.n
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hu, i64 72
  %i.hy = load i32, ptr %i.hx, align 8, !tbaa !117
  %i.hz = sext i32 %i.hy to i64
  %i.ia = load ptr, ptr %i.hu, align 8, !tbaa !124
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %i.hz
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !125 ; 3 uses
  %i.id = load ptr, ptr %i.ax, align 8, !tbaa !126
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !125 ; 3 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.ig = load i32, ptr %i.if, align 8, !tbaa !128 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ax, i64 28
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !133 ; 3 uses
  %i.ij = icmp sgt i32 %i.ig, 0
  %i.ik = icmp sgt i32 %i.ii, 0
  %or.cond261 = select i1 %i.ij, i1 %i.ik, i1 false
  br i1 %or.cond261, label %.preheader170.preheader, label %_ZN2cv4gapi5fluid12run_arithm_sIhhEEvRNS1_6BufferERKNS1_4ViewEPKfNS1_6ArithmEf.exit

.preheader170.preheader:                          ; preds = %bb.o
  %i.il = ptrtoaddr ptr %i.ie to i64
  %i.im = ptrtoaddr ptr %i.ic to i64
  %i.in = zext nneg i32 %i.ii to i64              ; 4 uses
  %wide.trip.count407 = zext nneg i32 %i.ig to i64
  %min.iters.check693 = icmp ult i32 %i.ii, 4
  %i.io = sub i64 %i.im, %i.il
  %diff.check691 = icmp ugt i64 %i.io, -8
  %or.cond796 = select i1 %min.iters.check693, i1 true, i1 %diff.check691
  %n.vec695 = and i64 %i.in, 2147483644           ; 3 uses
  %cmp.n702 = icmp eq i64 %n.vec695, %i.in
  br label %.preheader170

.preheader170:                                    ; preds = %.preheader170.preheader, %._crit_edge240
  %indvars.iv404 = phi i64 [ 0, %.preheader170.preheader ], [ %indvars.iv.next405, %._crit_edge240 ] ; 2 uses
  %i.ip = mul nuw nsw i64 %indvars.iv404, %i.in   ; 2 uses
  br i1 %or.cond796, label %scalar.ph692.preheader, label %vector.body696

vector.body696:                                   ; preds = %.preheader170, %vector.body696
  %index697 = phi i64 [ %index.next700, %vector.body696 ], [ 0, %.preheader170 ] ; 3 uses
  %i.iq = add nuw nsw i64 %index697, %i.ip        ; 2 uses
  %i.ir = getelementptr inbounds nuw [2 x i8], ptr %i.ic, i64 %i.iq
  %wide.load698 = load <4 x i16>, ptr %i.ir, align 2, !tbaa !140
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %index697
  %wide.load699 = load <4 x float>, ptr %i.is, align 4, !tbaa !162
  %i.it = uitofp <4 x i16> %wide.load698 to <4 x float>
  %i.iu = fmul <4 x float> %wide.load699, %i.it
  %i.iv = tail call <4 x float> @llvm.rint.v4f32(<4 x float> %i.iu)
  %i.iw = fptosi <4 x float> %i.iv to <4 x i32>   ; 2 uses
  %i.ix = icmp slt <4 x i32> %i.iw, zeroinitializer
  %i.iy = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.iw, <4 x i32> splat (i32 65535))
  %i.iz = trunc nuw <4 x i32> %i.iy to <4 x i16>
  %i.ja = select <4 x i1> %i.ix, <4 x i16> zeroinitializer, <4 x i16> %i.iz
  %i.jb = getelementptr inbounds nuw [2 x i8], ptr %i.ie, i64 %i.iq
  store <4 x i16> %i.ja, ptr %i.jb, align 2, !tbaa !140
  %index.next700 = add nuw i64 %index697, 4       ; 2 uses
  %i.jc = icmp eq i64 %index.next700, %n.vec695
  br i1 %i.jc, label %middle.block701, label %vector.body696, !llvm.loop !1517

middle.block701:                                  ; preds = %vector.body696
  br i1 %cmp.n702, label %._crit_edge240, label %scalar.ph692.preheader

scalar.ph692.preheader:                           ; preds = %.preheader170, %middle.block701
  %indvars.iv399.ph = phi i64 [ 0, %.preheader170 ], [ %n.vec695, %middle.block701 ]
  br label %scalar.ph692

._crit_edge240:                                   ; preds = %scalar.ph692, %middle.block701
  %indvars.iv.next405 = add nuw nsw i64 %indvars.iv404, 1 ; 2 uses
  %exitcond408.not = icmp eq i64 %indvars.iv.next405, %wide.trip.count407
  br i1 %exitcond408.not, label %_ZN2cv4gapi5fluid12run_arithm_sIhhEEvRNS1_6BufferERKNS1_4ViewEPKfNS1_6ArithmEf.exit, label %.preheader170, !llvm.loop !1518

scalar.ph692:                                     ; preds = %scalar.ph692.preheader, %scalar.ph692
  %indvars.iv399 = phi i64 [ %indvars.iv.next400, %scalar.ph692 ], [ %indvars.iv399.ph, %scalar.ph692.preheader ] ; 3 uses
  %i.jd = add nuw nsw i64 %indvars.iv399, %i.ip   ; 2 uses
  %i.je = getelementptr inbounds nuw [2 x i8], ptr %i.ic, i64 %i.jd
  %i.jf = load i16, ptr %i.je, align 2, !tbaa !140
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv399
  %i.jh = load float, ptr %i.jg, align 4, !tbaa !162
  %i.ji = uitofp i16 %i.jf to float
  %i.jj = fmul float %i.jh, %i.ji
  %i.jk = tail call noundef float @rintf(float noundef %i.jj) #25, !callees !172, !inline_history !215
  %i.jl = fptosi float %i.jk to i32               ; 2 uses
  %i.jm = icmp slt i32 %i.jl, 0
  %spec.select3.i132 = tail call i32 @llvm.umin.i32(i32 %i.jl, i32 65535)
  %spec.select.i133 = trunc nuw i32 %spec.select3.i132 to i16
  %i.jn = select i1 %i.jm, i16 0, i16 %spec.select.i133
  %i.jo = getelementptr inbounds nuw [2 x i8], ptr %i.ie, i64 %i.jd
  store i16 %i.jn, ptr %i.jo, align 2, !tbaa !140
  %indvars.iv.next400 = add nuw nsw i64 %indvars.iv399, 1 ; 2 uses
  %exitcond403.not = icmp eq i64 %indvars.iv.next400, %i.in
  br i1 %exitcond403.not, label %._crit_edge240, label %scalar.ph692, !llvm.loop !1519

bb.p:                                             ; preds = %bb.n
  %i.jp = getelementptr inbounds nuw i8, ptr %i.hu, i64 72
  %i.jq = load i32, ptr %i.jp, align 8, !tbaa !117
  %i.jr = sext i32 %i.jq to i64
  %i.js = load ptr, ptr %i.hu, align 8, !tbaa !124
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %i.jr
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !125 ; 3 uses
  %i.jv = load ptr, ptr %i.ax, align 8, !tbaa !126
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !125 ; 3 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.jy = load i32, ptr %i.jx, align 8, !tbaa !128 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.ax, i64 28
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !133 ; 3 uses
  %i.kb = icmp sgt i32 %i.jy, 0
  %i.kc = icmp sgt i32 %i.ka, 0
  %or.cond262 = select i1 %i.kb, i1 %i.kc, i1 false
  br i1 %or.cond262, label %.preheader172.preheader, label %_ZN2cv4gapi5fluid12run_arithm_sIhhEEvRNS1_6BufferERKNS1_4ViewEPKfNS1_6ArithmEf.exit

.preheader172.preheader:                          ; preds = %bb.p
  %i.kd = ptrtoaddr ptr %i.jw to i64
  %i.ke = ptrtoaddr ptr %i.ju to i64
  %i.kf = zext nneg i32 %i.ka to i64              ; 4 uses
  %wide.trip.count397 = zext nneg i32 %i.jy to i64
  %min.iters.check679 = icmp ult i32 %i.ka, 4
  %i.kg = sub i64 %i.ke, %i.kd
  %diff.check677 = icmp ugt i64 %i.kg, -8
  %or.cond797 = select i1 %min.iters.check679, i1 true, i1 %diff.check677
  %n.vec681 = and i64 %i.kf, 2147483644           ; 3 uses
  %cmp.n688 = icmp eq i64 %n.vec681, %i.kf
  br label %.preheader172

.preheader172:                                    ; preds = %.preheader172.preheader, %._crit_edge236
  %indvars.iv394 = phi i64 [ 0, %.preheader172.preheader ], [ %indvars.iv.next395, %._crit_edge236 ] ; 2 uses
  %i.kh = mul nuw nsw i64 %indvars.iv394, %i.kf   ; 2 uses
  br i1 %or.cond797, label %scalar.ph678.preheader, label %vector.body682

vector.body682:                                   ; preds = %.preheader172, %vector.body682
  %index683 = phi i64 [ %index.next686, %vector.body682 ], [ 0, %.preheader172 ] ; 3 uses
  %i.ki = add nuw nsw i64 %index683, %i.kh        ; 2 uses
  %i.kj = getelementptr inbounds nuw [2 x i8], ptr %i.ju, i64 %i.ki
  %wide.load684 = load <4 x i16>, ptr %i.kj, align 2, !tbaa !140
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %index683
  %wide.load685 = load <4 x float>, ptr %i.kk, align 4, !tbaa !162
  %i.kl = sitofp <4 x i16> %wide.load684 to <4 x float>
  %i.km = fmul <4 x float> %wide.load685, %i.kl
  %i.kn = tail call <4 x float> @llvm.rint.v4f32(<4 x float> %i.km)
  %i.ko = fptosi <4 x float> %i.kn to <4 x i32>   ; 2 uses
  %i.kp = icmp slt <4 x i32> %i.ko, zeroinitializer
  %i.kq = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ko, <4 x i32> splat (i32 65535))
  %i.kr = trunc nuw <4 x i32> %i.kq to <4 x i16>
  %i.ks = select <4 x i1> %i.kp, <4 x i16> zeroinitializer, <4 x i16> %i.kr
  %i.kt = getelementptr inbounds nuw [2 x i8], ptr %i.jw, i64 %i.ki
  store <4 x i16> %i.ks, ptr %i.kt, align 2, !tbaa !140
  %index.next686 = add nuw i64 %index683, 4       ; 2 uses
  %i.ku = icmp eq i64 %index.next686, %n.vec681
  br i1 %i.ku, label %middle.block687, label %vector.body682, !llvm.loop !1520

middle.block687:                                  ; preds = %vector.body682
  br i1 %cmp.n688, label %._crit_edge236, label %scalar.ph678.preheader

scalar.ph678.preheader:                           ; preds = %.preheader172, %middle.block687
  %indvars.iv389.ph = phi i64 [ 0, %.preheader172 ], [ %n.vec681, %middle.block687 ]
  br label %scalar.ph678

._crit_edge236:                                   ; preds = %scalar.ph678, %middle.block687
  %indvars.iv.next395 = add nuw nsw i64 %indvars.iv394, 1 ; 2 uses
  %exitcond398.not = icmp eq i64 %indvars.iv.next395, %wide.trip.count397
  br i1 %exitcond398.not, label %_ZN2cv4gapi5fluid12run_arithm_sIhhEEvRNS1_6BufferERKNS1_4ViewEPKfNS1_6ArithmEf.exit, label %.preheader172, !llvm.loop !1521

scalar.ph678:                                     ; preds = %scalar.ph678.preheader, %scalar.ph678
  %indvars.iv389 = phi i64 [ %indvars.iv.next390, %scalar.ph678 ], [ %indvars.iv389.ph, %scalar.ph678.preheader ] ; 3 uses
  %i.kv = add nuw nsw i64 %indvars.iv389, %i.kh   ; 2 uses
  %i.kw = getelementptr inbounds nuw [2 x i8], ptr %i.ju, i64 %i.kv
  %i.kx = load i16, ptr %i.kw, align 2, !tbaa !140
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv389
  %i.kz = load float, ptr %i.ky, align 4, !tbaa !162
  %i.la = sitofp i16 %i.kx to float
  %i.lb = fmul float %i.kz, %i.la
  %i.lc = tail call noundef float @rintf(float noundef %i.lb) #25, !callees !172, !inline_history !215
  %i.ld = fptosi float %i.lc to i32               ; 2 uses
  %i.le = icmp slt i32 %i.ld, 0
  %spec.select3.i134 = tail call i32 @llvm.umin.i32(i32 %i.ld, i32 65535)
  %spec.select.i135 = trunc nuw i32 %spec.select3.i134 to i16
  %i.lf = select i1 %i.le, i16 0, i16 %spec.select.i135
  %i.lg = getelementptr inbounds nuw [2 x i8], ptr %i.jw, i64 %i.kv
  store i16 %i.lf, ptr %i.lg, align 2, !tbaa !140
  %indvars.iv.next390 = add nuw nsw i64 %indvars.iv389, 1 ; 2 uses
  %exitcond393.not = icmp eq i64 %indvars.iv.next390, %i.kf
  br i1 %exitcond393.not, label %._crit_edge236, label %scalar.ph678, !llvm.loop !1522

bb.q:                                             ; preds = %bb.n
  %i.lh = getelementptr inbounds nuw i8, ptr %i.hu, i64 72
  %i.li = load i32, ptr %i.lh, align 8, !tbaa !117
  %i.lj = sext i32 %i.li to i64
  %i.lk = load ptr, ptr %i.hu, align 8, !tbaa !124
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.lk, i64 %i.lj
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !125 ; 4 uses
  %i.ln = load ptr, ptr %i.ax, align 8, !tbaa !126
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !125 ; 5 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.lq = load i32, ptr %i.lp, align 8, !tbaa !128 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ax, i64 28
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !133 ; 3 uses
  %i.lt = icmp sgt i32 %i.lq, 0
  %i.lu = icmp sgt i32 %i.ls, 0
  %or.cond263 = select i1 %i.lt, i1 %i.lu, i1 false
  br i1 %or.cond263, label %.preheader174.preheader, label %_ZN2cv4gapi5fluid12run_arithm_sIhhEEvRNS1_6BufferERKNS1_4ViewEPKfNS1_6ArithmEf.exit

.preheader174.preheader:                          ; preds = %bb.q
  %i.lv = zext nneg i32 %i.ls to i64              ; 6 uses
  %wide.trip.count387 = zext nneg i32 %i.lq to i64 ; 2 uses
  %i.lw = mul nuw nsw i64 %wide.trip.count387, %i.lv ; 2 uses
  %i.lx = shl nuw nsw i64 %i.lw, 1
  %scevgep654 = getelementptr i8, ptr %i.lo, i64 %i.lx ; 2 uses
  %scevgep655 = getelementptr i8, ptr %i.lm, i64 %i.lw
  %i.ly = shl nuw nsw i64 %i.lv, 2
  %scevgep656 = getelementptr i8, ptr %i.au, i64 %i.ly
  %min.iters.check665 = icmp ult i32 %i.ls, 4
  %bound0657 = icmp ult ptr %i.lo, %scevgep655
  %bound1658 = icmp ult ptr %i.lm, %scevgep654
  %found.conflict659 = and i1 %bound0657, %bound1658
  %bound0660 = icmp ult ptr %i.lo, %scevgep656
  %bound1661 = icmp ult ptr %i.au, %scevgep654
  %found.conflict662 = and i1 %bound0660, %bound1661
  %conflict.rdx663 = or i1 %found.conflict659, %found.conflict662
  %n.vec667 = and i64 %i.lv, 2147483644           ; 3 uses
  %cmp.n674 = icmp eq i64 %n.vec667, %i.lv
  br label %.preheader174

.preheader174:                                    ; preds = %.preheader174.preheader, %._crit_edge232
  %indvars.iv384 = phi i64 [ 0, %.preheader174.preheader ], [ %indvars.iv.next385, %._crit_edge232 ] ; 2 uses
  %i.lz = mul nuw nsw i64 %indvars.iv384, %i.lv   ; 2 uses
  %brmerge831 = select i1 %min.iters.check665, i1 true, i1 %conflict.rdx663
  br i1 %brmerge831, label %scalar.ph664.preheader, label %vector.body668

vector.body668:                                   ; preds = %.preheader174, %vector.body668
  %index669 = phi i64 [ %index.next672, %vector.body668 ], [ 0, %.preheader174 ] ; 3 uses
  %i.ma = add nuw nsw i64 %index669, %i.lz        ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lm, i64 %i.ma
  %wide.load670 = load <4 x i8>, ptr %i.mb, align 1, !tbaa !39, !alias.scope !1523
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %index669
  %wide.load671 = load <4 x float>, ptr %i.mc, align 4, !tbaa !162, !alias.scope !1526
  %i.md = uitofp <4 x i8> %wide.load670 to <4 x float>
  %i.me = fmul <4 x float> %wide.load671, %i.md
  %i.mf = tail call <4 x float> @llvm.rint.v4f32(<4 x float> %i.me)
  %i.mg = fptosi <4 x float> %i.mf to <4 x i32>   ; 2 uses
  %i.mh = icmp slt <4 x i32> %i.mg, zeroinitializer
  %i.mi = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.mg, <4 x i32> splat (i32 65535))
  %i.mj = trunc nuw <4 x i32> %i.mi to <4 x i16>
  %i.mk = select <4 x i1> %i.mh, <4 x i16> zeroinitializer, <4 x i16> %i.mj
  %i.ml = getelementptr inbounds nuw [2 x i8], ptr %i.lo, i64 %i.ma
  store <4 x i16> %i.mk, ptr %i.ml, align 2, !tbaa !140, !alias.scope !1528, !noalias !1530
  %index.next672 = add nuw i64 %index669, 4       ; 2 uses
  %i.mm = icmp eq i64 %index.next672, %n.vec667
  br i1 %i.mm, label %middle.block673, label %vector.body668, !llvm.loop !1531

middle.block673:                                  ; preds = %vector.body668
  br i1 %cmp.n674, label %._crit_edge232, label %scalar.ph664.preheader

scalar.ph664.preheader:                           ; preds = %.preheader174, %middle.block673
  %indvars.iv379.ph = phi i64 [ %n.vec667, %middle.block673 ], [ 0, %.preheader174 ]
  br label %scalar.ph664

._crit_edge232:                                   ; preds = %scalar.ph664, %middle.block673
  %indvars.iv.next385 = add nuw nsw i64 %indvars.iv384, 1 ; 2 uses
  %exitcond388.not = icmp eq i64 %indvars.iv.next385, %wide.trip.count387
  br i1 %exitcond388.not, label %_ZN2cv4gapi5fluid12run_arithm_sIhhEEvRNS1_6BufferERKNS1_4ViewEPKfNS1_6ArithmEf.exit, label %.preheader174, !llvm.loop !1532

scalar.ph664:                                     ; preds = %scalar.ph664.preheader, %scalar.ph664
  %indvars.iv379 = phi i64 [ %indvars.iv.next380, %scalar.ph664 ], [ %indvars.iv379.ph, %scalar.ph664.preheader ] ; 3 uses
  %i.mn = add nuw nsw i64 %indvars.iv379, %i.lz   ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.lm, i64 %i.mn
  %i.mp = load i8, ptr %i.mo, align 1, !tbaa !39
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv379
  %i.mr = load float, ptr %i.mq, align 4, !tbaa !162
  %i.ms = uitofp i8 %i.mp to float
  %i.mt = fmul float %i.mr, %i.ms
  %i.mu = tail call noundef float @rintf(float noundef %i.mt) #25, !callees !172, !inline_history !215
  %i.mv = fptosi float %i.mu to i32               ; 2 uses
  %i.mw = icmp slt i32 %i.mv, 0
  %spec.select3.i136 = tail call i32 @llvm.umin.i32(i32 %i.mv, i32 65535)
  %spec.select.i137 = trunc nuw i32 %spec.select3.i136 to i16
  %i.mx = select i1 %i.mw, i16 0, i16 %spec.select.i137
  %i.my = getelementptr inbounds nuw [2 x i8], ptr %i.lo, i64 %i.mn
  store i16 %i.mx, ptr %i.my, align 2, !tbaa !140
  %indvars.iv.next380 = add nuw nsw i64 %indvars.iv379, 1 ; 2 uses
  %exitcond383.not = icmp eq i64 %indvars.iv.next380, %i.lv
  br i1 %exitcond383.not, label %._crit_edge232, label %scalar.ph664, !llvm.loop !1533

bb.r:                                             ; preds = %bb.n
  %i.mz = getelementptr inbounds nuw i8, ptr %i.hu, i64 72
  %i.na = load i32, ptr %i.mz, align 8, !tbaa !117
  %i.nb = sext i32 %i.na to i64
  %i.nc = load ptr, ptr %i.hu, align 8, !tbaa !124
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %i.nc, i64 %i.nb
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !125 ; 2 uses
  %i.nf = load ptr, ptr %i.ax, align 8, !tbaa !126
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !125 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.ni = load i32, ptr %i.nh, align 8, !tbaa !128 ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ax, i64 28
  %i.nk = load i32, ptr %i.nj, align 4, !tbaa !133 ; 3 uses
  %i.nl = icmp sgt i32 %i.ni, 0
  %i.nm = icmp sgt i32 %i.nk, 0
  %or.cond264 = select i1 %i.nl, i1 %i.nm, i1 false
  br i1 %or.cond264, label %.preheader176.preheader, label %_ZN2cv4gapi5fluid12run_arithm_sIhhEEvRNS1_6BufferERKNS1_4ViewEPKfNS1_6ArithmEf.exit

.preheader176.preheader:                          ; preds = %bb.r
  %i.nn = zext nneg i32 %i.nk to i64              ; 4 uses
  %wide.trip.count377 = zext nneg i32 %i.ni to i64
  %min.iters.check642 = icmp ult i32 %i.nk, 4
  %n.vec644 = and i64 %i.nn, 2147483644           ; 3 uses
  %cmp.n651 = icmp eq i64 %n.vec644, %i.nn
  br label %.preheader176

.preheader176:                                    ; preds = %.preheader176.preheader, %._crit_edge228
  %indvars.iv374 = phi i64 [ 0, %.preheader176.preheader ], [ %indvars.iv.next375, %._crit_edge228 ] ; 2 uses
  %i.no = mul nuw nsw i64 %indvars.iv374, %i.nn   ; 2 uses
  br i1 %min.iters.check642, label %scalar.ph641.preheader, label %vector.body645

vector.body645:                                   ; preds = %.preheader176, %vector.body645
  %index646 = phi i64 [ %index.next649, %vector.body645 ], [ 0, %.preheader176 ] ; 3 uses
  %i.np = add nuw nsw i64 %index646, %i.no        ; 2 uses
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.ne, i64 %i.np
  %wide.load647 = load <4 x float>, ptr %i.nq, align 4, !tbaa !162
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %index646
  %wide.load648 = load <4 x float>, ptr %i.nr, align 4, !tbaa !162
  %i.ns = fmul <4 x float> %wide.load647, %wide.load648
  %i.nt = tail call <4 x float> @llvm.rint.v4f32(<4 x float> %i.ns)
  %i.nu = fptosi <4 x float> %i.nt to <4 x i32>   ; 2 uses
  %i.nv = icmp slt <4 x i32> %i.nu, zeroinitializer
  %i.nw = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.nu, <4 x i32> splat (i32 65535))
  %i.nx = trunc nuw <4 x i32> %i.nw to <4 x i16>
  %i.ny = select <4 x i1> %i.nv, <4 x i16> zeroinitializer, <4 x i16> %i.nx
  %i.nz = getelementptr inbounds nuw [2 x i8], ptr %i.ng, i64 %i.np
  store <4 x i16> %i.ny, ptr %i.nz, align 2, !tbaa !140
  %index.next649 = add nuw i64 %index646, 4       ; 2 uses
  %i.oa = icmp eq i64 %index.next649, %n.vec644
  br i1 %i.oa, label %middle.block650, label %vector.body645, !llvm.loop !1534

middle.block650:                                  ; preds = %vector.body645
  br i1 %cmp.n651, label %._crit_edge228, label %scalar.ph641.preheader

scalar.ph641.preheader:                           ; preds = %.preheader176, %middle.block650
  %indvars.iv369.ph = phi i64 [ 0, %.preheader176 ], [ %n.vec644, %middle.block650 ]
  br label %scalar.ph641

._crit_edge228:                                   ; preds = %scalar.ph641, %middle.block650
  %indvars.iv.next375 = add nuw nsw i64 %indvars.iv374, 1 ; 2 uses
  %exitcond378.not = icmp eq i64 %indvars.iv.next375, %wide.trip.count377
  br i1 %exitcond378.not, label %_ZN2cv4gapi5fluid12run_arithm_sIhhEEvRNS1_6BufferERKNS1_4ViewEPKfNS1_6ArithmEf.exit, label %.preheader176, !llvm.loop !1535

scalar.ph641:                                     ; preds = %scalar.ph641.preheader, %scalar.ph641
  %indvars.iv369 = phi i64 [ %indvars.iv.next370, %scalar.ph641 ], [ %indvars.iv369.ph, %scalar.ph641.preheader ] ; 3 uses
  %i.ob = add nuw nsw i64 %indvars.iv369, %i.no   ; 2 uses
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.ne, i64 %i.ob
  %i.od = load float, ptr %i.oc, align 4, !tbaa !162
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv369
  %i.of = load float, ptr %i.oe, align 4, !tbaa !162
  %i.og = fmul float %i.od, %i.of
  %i.oh = tail call noundef float @rintf(float noundef %i.og) #25, !callees !172, !inline_history !215
  %i.oi = fptosi float %i.oh to i32               ; 2 uses
  %i.oj = icmp slt i32 %i.oi, 0
  %spec.select4.i138 = tail call i32 @llvm.umin.i32(i32 %i.oi, i32 65535)
  %spec.select.i139 = trunc nuw i32 %spec.select4.i138 to i16
  %i.ok = select i1 %i.oj, i16 0, i16 %spec.select.i139
  %i.ol = getelementptr inbounds nuw [2 x i8], ptr %i.ng, i64 %i.ob
  store i16 %i.ok, ptr %i.ol, align 2, !tbaa !140
  %indvars.iv.next370 = add nuw nsw i64 %indvars.iv369, 1 ; 2 uses
  %exitcond373.not = icmp eq i64 %indvars.iv.next370, %i.nn
  br i1 %exitcond373.not, label %._crit_edge228, label %scalar.ph641, !llvm.loop !1536

bb.s:                                             ; preds = %_ZN2cv4gapi5fluid17scalar_to_scratchERKNS_7Scalar_IdEEPfii.exit
  %i.om = load ptr, ptr %i.a, align 8, !tbaa !107 ; 9 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 24
  %i.oo = load i32, ptr %i.on, align 8, !tbaa !99
  switch i32 %i.oo, label %.thread160 [
    i32 3, label %bb.t
    i32 2, label %bb.u
    i32 0, label %bb.v
    i32 5, label %bb.w
  ]

bb.t:                                             ; preds = %bb.s
  %i.op = getelementptr inbounds nuw i8, ptr %i.om, i64 72
  %i.oq = load i32, ptr %i.op, align 8, !tbaa !117
  %i.or = sext i32 %i.oq to i64
  %i.os = load ptr, ptr %i.om, align 8, !tbaa !124
  %i.ot = getelementptr inbounds nuw [8 x i8], ptr %i.os, i64 %i.or
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !125 ; 3 uses
  %i.ov = load ptr, ptr %i.ax, align 8, !tbaa !126
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !125 ; 3 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.oy = load i32, ptr %i.ox, align 8, !tbaa !128 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ax, i64 28
  %i.pa = load i32, ptr %i.oz, align 4, !tbaa !133 ; 3 uses
  %i.pb = icmp sgt i32 %i.oy, 0
  %i.pc = icmp sgt i32 %i.pa, 0
  %or.cond265 = select i1 %i.pb, i1 %i.pc, i1 false
  br i1 %or.cond265, label %.preheader178.preheader, label %_ZN2cv4gapi5fluid12run_arithm_sIhhEEvRNS1_6BufferERKNS1_4ViewEPKfNS1_6ArithmEf.exit

.preheader178.preheader:                          ; preds = %bb.t
  %i.pd = ptrtoaddr ptr %i.ow to i64
  %i.pe = ptrtoaddr ptr %i.ou to i64
  %i.pf = zext nneg i32 %i.pa to i64              ; 4 uses
  %wide.trip.count367 = zext nneg i32 %i.oy to i64
  %min.iters.check630 = icmp ult i32 %i.pa, 4
  %i.pg = sub i64 %i.pe, %i.pd
  %diff.check628 = icmp ugt i64 %i.pg, -8
  %or.cond798 = select i1 %min.iters.check630, i1 true, i1 %diff.check628
  %n.vec632 = and i64 %i.pf, 2147483644           ; 3 uses
  %cmp.n639 = icmp eq i64 %n.vec632, %i.pf
  br label %.preheader178

.preheader178:                                    ; preds = %.preheader178.preheader, %._crit_edge224
  %indvars.iv364 = phi i64 [ 0, %.preheader178.preheader ], [ %indvars.iv.next365, %._crit_edge224 ] ; 2 uses
  %i.ph = mul nuw nsw i64 %indvars.iv364, %i.pf   ; 2 uses
  br i1 %or.cond798, label %scalar.ph629.preheader, label %vector.body633

vector.body633:                                   ; preds = %.preheader178, %vector.body633
  %index634 = phi i64 [ %index.next637, %vector.body633 ], [ 0, %.preheader178 ] ; 3 uses
  %i.pi = add nuw nsw i64 %index634, %i.ph        ; 2 uses
  %i.pj = getelementptr inbounds nuw [2 x i8], ptr %i.ou, i64 %i.pi
  %wide.load635 = load <4 x i16>, ptr %i.pj, align 2, !tbaa !140
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %index634
  %wide.load636 = load <4 x float>, ptr %i.pk, align 4, !tbaa !162
  %i.pl = sitofp <4 x i16> %wide.load635 to <4 x float>
  %i.pm = fmul <4 x float> %wide.load636, %i.pl
  %i.pn = tail call <4 x float> @llvm.rint.v4f32(<4 x float> %i.pm)
  %i.po = tail call <4 x i16> @llvm.fptosi.sat.v4i16.v4f32(<4 x float> %i.pn)
  %i.pp = getelementptr inbounds nuw [2 x i8], ptr %i.ow, i64 %i.pi
  store <4 x i16> %i.po, ptr %i.pp, align 2, !tbaa !140
  %index.next637 = add nuw i64 %index634, 4       ; 2 uses
  %i.pq = icmp eq i64 %index.next637, %n.vec632
  br i1 %i.pq, label %middle.block638, label %vector.body633, !llvm.loop !1537

middle.block638:                                  ; preds = %vector.body633
  br i1 %cmp.n639, label %._crit_edge224, label %scalar.ph629.preheader

scalar.ph629.preheader:                           ; preds = %.preheader178, %middle.block638
  %indvars.iv359.ph = phi i64 [ 0, %.preheader178 ], [ %n.vec632, %middle.block638 ]
  br label %scalar.ph629

._crit_edge224:                                   ; preds = %scalar.ph629, %middle.block638
  %indvars.iv.next365 = add nuw nsw i64 %indvars.iv364, 1 ; 2 uses
  %exitcond368.not = icmp eq i64 %indvars.iv.next365, %wide.trip.count367
  br i1 %exitcond368.not, label %_ZN2cv4gapi5fluid12run_arithm_sIhhEEvRNS1_6BufferERKNS1_4ViewEPKfNS1_6ArithmEf.exit, label %.preheader178, !llvm.loop !1538

scalar.ph629:                                     ; preds = %scalar.ph629.preheader, %scalar.ph629
  %indvars.iv359 = phi i64 [ %indvars.iv.next360, %scalar.ph629 ], [ %indvars.iv359.ph, %scalar.ph629.preheader ] ; 3 uses
  %i.pr = add nuw nsw i64 %indvars.iv359, %i.ph   ; 2 uses
  %i.ps = getelementptr inbounds nuw [2 x i8], ptr %i.ou, i64 %i.pr
  %i.pt = load i16, ptr %i.ps, align 2, !tbaa !140
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv359
  %i.pv = load float, ptr %i.pu, align 4, !tbaa !162
  %i.pw = sitofp i16 %i.pt to float
  %i.px = fmul float %i.pv, %i.pw
  %i.py = tail call noundef float @rintf(float noundef %i.px) #25, !callees !172, !inline_history !195
  %i.pz = tail call noundef i16 @llvm.fptosi.sat.i16.f32(float %i.py)
  %i.qa = getelementptr inbounds nuw [2 x i8], ptr %i.ow, i64 %i.pr
  store i16 %i.pz, ptr %i.qa, align 2, !tbaa !140
  %indvars.iv.next360 = add nuw nsw i64 %indvars.iv359, 1 ; 2 uses
  %exitcond363.not = icmp eq i64 %indvars.iv.next360, %i.pf
  br i1 %exitcond363.not, label %._crit_edge224, label %scalar.ph629, !llvm.loop !1539

bb.u:                                             ; preds = %bb.s
  %i.qb = getelementptr inbounds nuw i8, ptr %i.om, i64 72
  %i.qc = load i32, ptr %i.qb, align 8, !tbaa !117
  %i.qd = sext i32 %i.qc to i64
  %i.qe = load ptr, ptr %i.om, align 8, !tbaa !124
  %i.qf = getelementptr inbounds nuw [8 x i8], ptr %i.qe, i64 %i.qd
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !125 ; 3 uses
  %i.qh = load ptr, ptr %i.ax, align 8, !tbaa !126
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !125 ; 3 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.qk = load i32, ptr %i.qj, align 8, !tbaa !128 ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.ax, i64 28
  %i.qm = load i32, ptr %i.ql, align 4, !tbaa !133 ; 3 uses
  %i.qn = icmp sgt i32 %i.qk, 0
  %i.qo = icmp sgt i32 %i.qm, 0
  %or.cond266 = select i1 %i.qn, i1 %i.qo, i1 false
  br i1 %or.cond266, label %.preheader180.preheader, label %_ZN2cv4gapi5fluid12run_arithm_sIhhEEvRNS1_6BufferERKNS1_4ViewEPKfNS1_6ArithmEf.exit

.preheader180.preheader:                          ; preds = %bb.u
  %i.qp = ptrtoaddr ptr %i.qi to i64
  %i.qq = ptrtoaddr ptr %i.qg to i64
  %i.qr = zext nneg i32 %i.qm to i64              ; 4 uses
  %wide.trip.count357 = zext nneg i32 %i.qk to i64
  %min.iters.check616 = icmp ult i32 %i.qm, 4
  %i.qs = sub i64 %i.qq, %i.qp
  %diff.check614 = icmp ugt i64 %i.qs, -8
  %or.cond799 = select i1 %min.iters.check616, i1 true, i1 %diff.check614
  %n.vec618 = and i64 %i.qr, 2147483644           ; 3 uses
  %cmp.n625 = icmp eq i64 %n.vec618, %i.qr
  br label %.preheader180

.preheader180:                                    ; preds = %.preheader180.preheader, %._crit_edge220
  %indvars.iv354 = phi i64 [ 0, %.preheader180.preheader ], [ %indvars.iv.next355, %._crit_edge220 ] ; 2 uses
  %i.qt = mul nuw nsw i64 %indvars.iv354, %i.qr   ; 2 uses
  br i1 %or.cond799, label %scalar.ph615.preheader, label %vector.body619

vector.body619:                                   ; preds = %.preheader180, %vector.body619
  %index620 = phi i64 [ %index.next623, %vector.body619 ], [ 0, %.preheader180 ] ; 3 uses
  %i.qu = add nuw nsw i64 %index620, %i.qt        ; 2 uses
  %i.qv = getelementptr inbounds nuw [2 x i8], ptr %i.qg, i64 %i.qu
  %wide.load621 = load <4 x i16>, ptr %i.qv, align 2, !tbaa !140
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %index620
  %wide.load622 = load <4 x float>, ptr %i.qw, align 4, !tbaa !162
  %i.qx = uitofp <4 x i16> %wide.load621 to <4 x float>
  %i.qy = fmul <4 x float> %wide.load622, %i.qx
  %i.qz = tail call <4 x float> @llvm.rint.v4f32(<4 x float> %i.qy)
  %i.ra = tail call <4 x i16> @llvm.fptosi.sat.v4i16.v4f32(<4 x float> %i.qz)
  %i.rb = getelementptr inbounds nuw [2 x i8], ptr %i.qi, i64 %i.qu
  store <4 x i16> %i.ra, ptr %i.rb, align 2, !tbaa !140
  %index.next623 = add nuw i64 %index620, 4       ; 2 uses
  %i.rc = icmp eq i64 %index.next623, %n.vec618
  br i1 %i.rc, label %middle.block624, label %vector.body619, !llvm.loop !1540

middle.block624:                                  ; preds = %vector.body619
  br i1 %cmp.n625, label %._crit_edge220, label %scalar.ph615.preheader

scalar.ph615.preheader:                           ; preds = %.preheader180, %middle.block624
  %indvars.iv349.ph = phi i64 [ 0, %.preheader180 ], [ %n.vec618, %middle.block624 ]
  br label %scalar.ph615

._crit_edge220:                                   ; preds = %scalar.ph615, %middle.block624
  %indvars.iv.next355 = add nuw nsw i64 %indvars.iv354, 1 ; 2 uses
  %exitcond358.not = icmp eq i64 %indvars.iv.next355, %wide.trip.count357
  br i1 %exitcond358.not, label %_ZN2cv4gapi5fluid12run_arithm_sIhhEEvRNS1_6BufferERKNS1_4ViewEPKfNS1_6ArithmEf.exit, label %.preheader180, !llvm.loop !1541

scalar.ph615:                                     ; preds = %scalar.ph615.preheader, %scalar.ph615
  %indvars.iv349 = phi i64 [ %indvars.iv.next350, %scalar.ph615 ], [ %indvars.iv349.ph, %scalar.ph615.preheader ] ; 3 uses
  %i.rd = add nuw nsw i64 %indvars.iv349, %i.qt   ; 2 uses
  %i.re = getelementptr inbounds nuw [2 x i8], ptr %i.qg, i64 %i.rd
  %i.rf = load i16, ptr %i.re, align 2, !tbaa !140
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv349
  %i.rh = load float, ptr %i.rg, align 4, !tbaa !162
  %i.ri = uitofp i16 %i.rf to float
  %i.rj = fmul float %i.rh, %i.ri
  %i.rk = tail call noundef float @rintf(float noundef %i.rj) #25, !callees !172, !inline_history !195
  %i.rl = tail call noundef i16 @llvm.fptosi.sat.i16.f32(float %i.rk)
  %i.rm = getelementptr inbounds nuw [2 x i8], ptr %i.qi, i64 %i.rd
  store i16 %i.rl, ptr %i.rm, align 2, !tbaa !140
  %indvars.iv.next350 = add nuw nsw i64 %indvars.iv349, 1 ; 2 uses
  %exitcond353.not = icmp eq i64 %indvars.iv.next350, %i.qr
  br i1 %exitcond353.not, label %._crit_edge220, label %scalar.ph615, !llvm.loop !1542

bb.v:                                             ; preds = %bb.s
  %i.rn = getelementptr inbounds nuw i8, ptr %i.om, i64 72
  %i.ro = load i32, ptr %i.rn, align 8, !tbaa !117
  %i.rp = sext i32 %i.ro to i64
  %i.rq = load ptr, ptr %i.om, align 8, !tbaa !124
  %i.rr = getelementptr inbounds nuw [8 x i8], ptr %i.rq, i64 %i.rp
  %i.rs = load ptr, ptr %i.rr, align 8, !tbaa !125 ; 4 uses
  %i.rt = load ptr, ptr %i.ax, align 8, !tbaa !126
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !125 ; 5 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.rw = load i32, ptr %i.rv, align 8, !tbaa !128 ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.ax, i64 28
  %i.ry = load i32, ptr %i.rx, align 4, !tbaa !133 ; 3 uses
  %i.rz = icmp sgt i32 %i.rw, 0
  %i.sa = icmp sgt i32 %i.ry, 0
  %or.cond267 = select i1 %i.rz, i1 %i.sa, i1 false
  br i1 %or.cond267, label %.preheader182.preheader, label %_ZN2cv4gapi5fluid12run_arithm_sIhhEEvRNS1_6BufferERKNS1_4ViewEPKfNS1_6ArithmEf.exit

.preheader182.preheader:                          ; preds = %bb.v
  %i.sb = zext nneg i32 %i.ry to i64              ; 6 uses
  %wide.trip.count347 = zext nneg i32 %i.rw to i64 ; 2 uses
  %i.sc = mul nuw nsw i64 %wide.trip.count347, %i.sb ; 2 uses
  %i.sd = shl nuw nsw i64 %i.sc, 1
  %scevgep591 = getelementptr i8, ptr %i.ru, i64 %i.sd ; 2 uses
  %scevgep592 = getelementptr i8, ptr %i.rs, i64 %i.sc
  %i.se = shl nuw nsw i64 %i.sb, 2
  %scevgep593 = getelementptr i8, ptr %i.au, i64 %i.se
  %min.iters.check602 = icmp ult i32 %i.ry, 4
  %bound0594 = icmp ult ptr %i.ru, %scevgep592
  %bound1595 = icmp ult ptr %i.rs, %scevgep591
  %found.conflict596 = and i1 %bound0594, %bound1595
  %bound0597 = icmp ult ptr %i.ru, %scevgep593
  %bound1598 = icmp ult ptr %i.au, %scevgep591
  %found.conflict599 = and i1 %bound0597, %bound1598
  %conflict.rdx600 = or i1 %found.conflict596, %found.conflict599
  %n.vec604 = and i64 %i.sb, 2147483644           ; 3 uses
  %cmp.n611 = icmp eq i64 %n.vec604, %i.sb
  br label %.preheader182

.preheader182:                                    ; preds = %.preheader182.preheader, %._crit_edge216
  %indvars.iv344 = phi i64 [ 0, %.preheader182.preheader ], [ %indvars.iv.next345, %._crit_edge216 ] ; 2 uses
  %i.sf = mul nuw nsw i64 %indvars.iv344, %i.sb   ; 2 uses
  %brmerge832 = select i1 %min.iters.check602, i1 true, i1 %conflict.rdx600
  br i1 %brmerge832, label %scalar.ph601.preheader, label %vector.body605

vector.body605:                                   ; preds = %.preheader182, %vector.body605
  %index606 = phi i64 [ %index.next609, %vector.body605 ], [ 0, %.preheader182 ] ; 3 uses
  %i.sg = add nuw nsw i64 %index606, %i.sf        ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %i.rs, i64 %i.sg
  %wide.load607 = load <4 x i8>, ptr %i.sh, align 1, !tbaa !39, !alias.scope !1543
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %index606
  %wide.load608 = load <4 x float>, ptr %i.si, align 4, !tbaa !162, !alias.scope !1546
  %i.sj = uitofp <4 x i8> %wide.load607 to <4 x float>
  %i.sk = fmul <4 x float> %wide.load608, %i.sj
  %i.sl = tail call <4 x float> @llvm.rint.v4f32(<4 x float> %i.sk)
  %i.sm = tail call <4 x i16> @llvm.fptosi.sat.v4i16.v4f32(<4 x float> %i.sl)
  %i.sn = getelementptr inbounds nuw [2 x i8], ptr %i.ru, i64 %i.sg
  store <4 x i16> %i.sm, ptr %i.sn, align 2, !tbaa !140, !alias.scope !1548, !noalias !1550
  %index.next609 = add nuw i64 %index606, 4       ; 2 uses
  %i.so = icmp eq i64 %index.next609, %n.vec604
  br i1 %i.so, label %middle.block610, label %vector.body605, !llvm.loop !1551

middle.block610:                                  ; preds = %vector.body605
  br i1 %cmp.n611, label %._crit_edge216, label %scalar.ph601.preheader

scalar.ph601.preheader:                           ; preds = %.preheader182, %middle.block610
  %indvars.iv339.ph = phi i64 [ %n.vec604, %middle.block610 ], [ 0, %.preheader182 ]
  br label %scalar.ph601

._crit_edge216:                                   ; preds = %scalar.ph601, %middle.block610
  %indvars.iv.next345 = add nuw nsw i64 %indvars.iv344, 1 ; 2 uses
  %exitcond348.not = icmp eq i64 %indvars.iv.next345, %wide.trip.count347
  br i1 %exitcond348.not, label %_ZN2cv4gapi5fluid12run_arithm_sIhhEEvRNS1_6BufferERKNS1_4ViewEPKfNS1_6ArithmEf.exit, label %.preheader182, !llvm.loop !1552

scalar.ph601:                                     ; preds = %scalar.ph601.preheader, %scalar.ph601
  %indvars.iv339 = phi i64 [ %indvars.iv.next340, %scalar.ph601 ], [ %indvars.iv339.ph, %scalar.ph601.preheader ] ; 3 uses
  %i.sp = add nuw nsw i64 %indvars.iv339, %i.sf   ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.rs, i64 %i.sp
  %i.sr = load i8, ptr %i.sq, align 1, !tbaa !39
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv339
  %i.st = load float, ptr %i.ss, align 4, !tbaa !162
  %i.su = uitofp i8 %i.sr to float
  %i.sv = fmul float %i.st, %i.su
  %i.sw = tail call noundef float @rintf(float noundef %i.sv) #25, !callees !172, !inline_history !195
  %i.sx = tail call noundef i16 @llvm.fptosi.sat.i16.f32(float %i.sw)
  %i.sy = getelementptr inbounds nuw [2 x i8], ptr %i.ru, i64 %i.sp
  store i16 %i.sx, ptr %i.sy, align 2, !tbaa !140
  %indvars.iv.next340 = add nuw nsw i64 %indvars.iv339, 1 ; 2 uses
  %exitcond343.not = icmp eq i64 %indvars.iv.next340, %i.sb
  br i1 %exitcond343.not, label %._crit_edge216, label %scalar.ph601, !llvm.loop !1553

bb.w:                                             ; preds = %bb.s
  %i.sz = getelementptr inbounds nuw i8, ptr %i.om, i64 72
  %i.ta = load i32, ptr %i.sz, align 8, !tbaa !117
  %i.tb = sext i32 %i.ta to i64
  %i.tc = load ptr, ptr %i.om, align 8, !tbaa !124
  %i.td = getelementptr inbounds nuw [8 x i8], ptr %i.tc, i64 %i.tb
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !125 ; 2 uses
  %i.tf = load ptr, ptr %i.ax, align 8, !tbaa !126
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !125 ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.ti = load i32, ptr %i.th, align 8, !tbaa !128 ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ax, i64 28
  %i.tk = load i32, ptr %i.tj, align 4, !tbaa !133 ; 3 uses
  %i.tl = icmp sgt i32 %i.ti, 0
  %i.tm = icmp sgt i32 %i.tk, 0
  %or.cond268 = select i1 %i.tl, i1 %i.tm, i1 false
  br i1 %or.cond268, label %.preheader184.preheader, label %_ZN2cv4gapi5fluid12run_arithm_sIhhEEvRNS1_6BufferERKNS1_4ViewEPKfNS1_6ArithmEf.exit

.preheader184.preheader:                          ; preds = %bb.w
  %i.tn = zext nneg i32 %i.tk to i64              ; 4 uses
  %wide.trip.count337 = zext nneg i32 %i.ti to i64
  %min.iters.check579 = icmp ult i32 %i.tk, 4
  %n.vec581 = and i64 %i.tn, 2147483644           ; 3 uses
  %cmp.n588 = icmp eq i64 %n.vec581, %i.tn
  br label %.preheader184

.preheader184:                                    ; preds = %.preheader184.preheader, %._crit_edge212
  %indvars.iv334 = phi i64 [ 0, %.preheader184.preheader ], [ %indvars.iv.next335, %._crit_edge212 ] ; 2 uses
  %i.to = mul nuw nsw i64 %indvars.iv334, %i.tn   ; 2 uses
  br i1 %min.iters.check579, label %scalar.ph578.preheader, label %vector.body582

vector.body582:                                   ; preds = %.preheader184, %vector.body582
  %index583 = phi i64 [ %index.next586, %vector.body582 ], [ 0, %.preheader184 ] ; 3 uses
  %i.tp = add nuw nsw i64 %index583, %i.to        ; 2 uses
  %i.tq = getelementptr inbounds nuw [4 x i8], ptr %i.te, i64 %i.tp
  %wide.load584 = load <4 x float>, ptr %i.tq, align 4, !tbaa !162
  %i.tr = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %index583
  %wide.load585 = load <4 x float>, ptr %i.tr, align 4, !tbaa !162
  %i.ts = fmul <4 x float> %wide.load584, %wide.load585
  %i.tt = tail call <4 x float> @llvm.rint.v4f32(<4 x float> %i.ts)
  %i.tu = tail call <4 x i16> @llvm.fptosi.sat.v4i16.v4f32(<4 x float> %i.tt)
  %i.tv = getelementptr inbounds nuw [2 x i8], ptr %i.tg, i64 %i.tp
  store <4 x i16> %i.tu, ptr %i.tv, align 2, !tbaa !140
  %index.next586 = add nuw i64 %index583, 4       ; 2 uses
  %i.tw = icmp eq i64 %index.next586, %n.vec581
  br i1 %i.tw, label %middle.block587, label %vector.body582, !llvm.loop !1554

middle.block587:                                  ; preds = %vector.body582
  br i1 %cmp.n588, label %._crit_edge212, label %scalar.ph578.preheader

scalar.ph578.preheader:                           ; preds = %.preheader184, %middle.block587
  %indvars.iv329.ph = phi i64 [ 0, %.preheader184 ], [ %n.vec581, %middle.block587 ]
  br label %scalar.ph578

._crit_edge212:                                   ; preds = %scalar.ph578, %middle.block587
  %indvars.iv.next335 = add nuw nsw i64 %indvars.iv334, 1 ; 2 uses
  %exitcond338.not = icmp eq i64 %indvars.iv.next335, %wide.trip.count337
  br i1 %exitcond338.not, label %_ZN2cv4gapi5fluid12run_arithm_sIhhEEvRNS1_6BufferERKNS1_4ViewEPKfNS1_6ArithmEf.exit, label %.preheader184, !llvm.loop !1555

scalar.ph578:                                     ; preds = %scalar.ph578.preheader, %scalar.ph578
  %indvars.iv329 = phi i64 [ %indvars.iv.next330, %scalar.ph578 ], [ %indvars.iv329.ph, %scalar.ph578.preheader ] ; 3 uses
  %i.tx = add nuw nsw i64 %indvars.iv329, %i.to   ; 2 uses
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %i.te, i64 %i.tx
  %i.tz = load float, ptr %i.ty, align 4, !tbaa !162
  %i.ua = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv329
  %i.ub = load float, ptr %i.ua, align 4, !tbaa !162
  %i.uc = fmul float %i.tz, %i.ub
  %i.ud = tail call noundef float @rintf(float noundef %i.uc) #25, !callees !172, !inline_history !195
  %i.ue = tail call noundef i16 @llvm.fptosi.sat.i16.f32(float %i.ud)
  %i.uf = getelementptr inbounds nuw [2 x i8], ptr %i.tg, i64 %i.tx
  store i16 %i.ue, ptr %i.uf, align 2, !tbaa !140
  %indvars.iv.next330 = add nuw nsw i64 %indvars.iv329, 1 ; 2 uses
  %exitcond333.not = icmp eq i64 %indvars.iv.next330, %i.tn
  br i1 %exitcond333.not, label %._crit_edge212, label %scalar.ph578, !llvm.loop !1556

bb.x:                                             ; preds = %_ZN2cv4gapi5fluid17scalar_to_scratchERKNS_7Scalar_IdEEPfii.exit
  %i.ug = load ptr, ptr %i.a, align 8, !tbaa !107 ; 9 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 24
  %i.ui = load i32, ptr %i.uh, align 8, !tbaa !99
  switch i32 %i.ui, label %.thread160 [
    i32 0, label %bb.y
    i32 2, label %bb.z
    i32 3, label %bb.aa
    i32 5, label %bb.ab
  ]

bb.y:                                             ; preds = %bb.x
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ug, i64 72
  %i.uk = load i32, ptr %i.uj, align 8, !tbaa !117
  %i.ul = sext i32 %i.uk to i64
  %i.um = load ptr, ptr %i.ug, align 8, !tbaa !124
  %i.un = getelementptr inbounds nuw [8 x i8], ptr %i.um, i64 %i.ul
  %i.uo = load ptr, ptr %i.un, align 8, !tbaa !125 ; 6 uses
  %i.up = load ptr, ptr %i.ax, align 8, !tbaa !126
  %i.uq = load ptr, ptr %i.up, align 8, !tbaa !125 ; 7 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.us = load i32, ptr %i.ur, align 8, !tbaa !128 ; 2 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %i.ax, i64 28
  %i.uu = load i32, ptr %i.ut, align 4, !tbaa !133 ; 3 uses
  %i.uv = icmp sgt i32 %i.us, 0
  %i.uw = icmp sgt i32 %i.uu, 0
  %or.cond269 = select i1 %i.uv, i1 %i.uw, i1 false
  br i1 %or.cond269, label %.preheader186.preheader, label %_ZN2cv4gapi5fluid12run_arithm_sIhhEEvRNS1_6BufferERKNS1_4ViewEPKfNS1_6ArithmEf.exit

.preheader186.preheader:                          ; preds = %bb.y
  %i.ux = zext nneg i32 %i.uu to i64              ; 8 uses
  %wide.trip.count327 = zext nneg i32 %i.us to i64 ; 2 uses
  %i.uy = mul nuw nsw i64 %wide.trip.count327, %i.ux ; 2 uses
  %i.uz = shl nuw i64 %i.uy, 2
  %scevgep = getelementptr i8, ptr %i.uq, i64 %i.uz ; 2 uses
  %scevgep558 = getelementptr i8, ptr %i.uo, i64 %i.uy
  %i.va = shl nuw nsw i64 %i.ux, 2
  %scevgep559 = getelementptr i8, ptr %i.au, i64 %i.va
  %min.iters.check565 = icmp ult i32 %i.uu, 8
  %bound0 = icmp ult ptr %i.uq, %scevgep558
  %bound1 = icmp ult ptr %i.uo, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0560 = icmp ult ptr %i.uq, %scevgep559
  %bound1561 = icmp ult ptr %i.au, %scevgep
  %found.conflict562 = and i1 %bound0560, %bound1561
  %conflict.rdx563 = or i1 %found.conflict, %found.conflict562
  %n.vec567 = and i64 %i.ux, 2147483640           ; 3 uses
  %cmp.n576 = icmp eq i64 %n.vec567, %i.ux
  %xtraiter822 = and i64 %i.ux, 1
  %lcmp.mod823.not = icmp eq i64 %xtraiter822, 0
  %i.vb = add nsw i64 %i.ux, -1
  br label %.preheader186

.preheader186:                                    ; preds = %.preheader186.preheader, %._crit_edge208
  %indvars.iv324 = phi i64 [ 0, %.preheader186.preheader ], [ %indvars.iv.next325, %._crit_edge208 ] ; 2 uses
  %i.vc = mul nuw nsw i64 %indvars.iv324, %i.ux   ; 4 uses
  %brmerge833 = select i1 %min.iters.check565, i1 true, i1 %conflict.rdx563
  br i1 %brmerge833, label %scalar.ph564.preheader, label %vector.body568

vector.body568:                                   ; preds = %.preheader186, %vector.body568
  %index569 = phi i64 [ %index.next574, %vector.body568 ], [ 0, %.preheader186 ] ; 3 uses
  %i.vd = add nuw nsw i64 %index569, %i.vc        ; 2 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %i.uo, i64 %i.vd ; 2 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 4
  %wide.load570 = load <4 x i8>, ptr %i.ve, align 1, !tbaa !39, !alias.scope !1557
  %wide.load571 = load <4 x i8>, ptr %i.vf, align 1, !tbaa !39, !alias.scope !1557
  %i.vg = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %index569 ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 16
  %wide.load572 = load <4 x float>, ptr %i.vg, align 4, !tbaa !162, !alias.scope !1560
  %wide.load573 = load <4 x float>, ptr %i.vh, align 4, !tbaa !162, !alias.scope !1560
  %i.vi = uitofp <4 x i8> %wide.load570 to <4 x float>
  %i.vj = uitofp <4 x i8> %wide.load571 to <4 x float>
  %i.vk = fmul <4 x float> %wide.load572, %i.vi
  %i.vl = fmul <4 x float> %wide.load573, %i.vj
  %i.vm = getelementptr inbounds nuw [4 x i8], ptr %i.uq, i64 %i.vd ; 2 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 16
  store <4 x float> %i.vk, ptr %i.vm, align 4, !tbaa !162, !alias.scope !1562, !noalias !1564
  store <4 x float> %i.vl, ptr %i.vn, align 4, !tbaa !162, !alias.scope !1562, !noalias !1564
  %index.next574 = add nuw i64 %index569, 8       ; 2 uses
  %i.vo = icmp eq i64 %index.next574, %n.vec567
  br i1 %i.vo, label %middle.block575, label %vector.body568, !llvm.loop !1565

middle.block575:                                  ; preds = %vector.body568
  br i1 %cmp.n576, label %._crit_edge208, label %scalar.ph564.preheader

scalar.ph564.preheader:                           ; preds = %.preheader186, %middle.block575
  %indvars.iv319.ph = phi i64 [ %n.vec567, %middle.block575 ], [ 0, %.preheader186 ] ; 5 uses
  br i1 %lcmp.mod823.not, label %scalar.ph564.prol.loopexit, label %scalar.ph564.prol

scalar.ph564.prol:                                ; preds = %scalar.ph564.preheader
  %i.vp = add nuw nsw i64 %indvars.iv319.ph, %i.vc ; 2 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %i.uo, i64 %i.vp
  %i.vr = load i8, ptr %i.vq, align 1, !tbaa !39
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv319.ph
  %i.vt = load float, ptr %i.vs, align 4, !tbaa !162
  %i.vu = uitofp i8 %i.vr to float
  %i.vv = fmul float %i.vt, %i.vu
  %i.vw = getelementptr inbounds nuw [4 x i8], ptr %i.uq, i64 %i.vp
  store float %i.vv, ptr %i.vw, align 4, !tbaa !162
  %indvars.iv.next320.prol = or disjoint i64 %indvars.iv319.ph, 1
  br label %scalar.ph564.prol.loopexit

scalar.ph564.prol.loopexit:                       ; preds = %scalar.ph564.prol, %scalar.ph564.preheader
  %indvars.iv319.unr = phi i64 [ %indvars.iv319.ph, %scalar.ph564.preheader ], [ %indvars.iv.next320.prol, %scalar.ph564.prol ]
  %i.vx = icmp eq i64 %indvars.iv319.ph, %i.vb
  br i1 %i.vx, label %._crit_edge208, label %scalar.ph564

._crit_edge208:                                   ; preds = %scalar.ph564.prol.loopexit, %scalar.ph564, %middle.block575
  %indvars.iv.next325 = add nuw nsw i64 %indvars.iv324, 1 ; 2 uses
  %exitcond328.not = icmp eq i64 %indvars.iv.next325, %wide.trip.count327
  br i1 %exitcond328.not, label %_ZN2cv4gapi5fluid12run_arithm_sIhhEEvRNS1_6BufferERKNS1_4ViewEPKfNS1_6ArithmEf.exit, label %.preheader186, !llvm.loop !1566

scalar.ph564:                                     ; preds = %scalar.ph564.prol.loopexit, %scalar.ph564
  %indvars.iv319 = phi i64 [ %indvars.iv.next320.1, %scalar.ph564 ], [ %indvars.iv319.unr, %scalar.ph564.prol.loopexit ] ; 4 uses
  %i.vy = add nuw nsw i64 %indvars.iv319, %i.vc   ; 2 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %i.uo, i64 %i.vy
  %i.wa = load i8, ptr %i.vz, align 1, !tbaa !39
  %i.wb = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv319
  %i.wc = load float, ptr %i.wb, align 4, !tbaa !162
  %i.wd = uitofp i8 %i.wa to float
  %i.we = fmul float %i.wc, %i.wd
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr %i.uq, i64 %i.vy
  store float %i.we, ptr %i.wf, align 4, !tbaa !162
  %indvars.iv.next320 = add nuw nsw i64 %indvars.iv319, 1 ; 2 uses
  %i.wg = add nuw nsw i64 %indvars.iv.next320, %i.vc ; 2 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %i.uo, i64 %i.wg
  %i.wi = load i8, ptr %i.wh, align 1, !tbaa !39
  %i.wj = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv.next320
  %i.wk = load float, ptr %i.wj, align 4, !tbaa !162
  %i.wl = uitofp i8 %i.wi to float
  %i.wm = fmul float %i.wk, %i.wl
  %i.wn = getelementptr inbounds nuw [4 x i8], ptr %i.uq, i64 %i.wg
  store float %i.wm, ptr %i.wn, align 4, !tbaa !162
  %indvars.iv.next320.1 = add nuw nsw i64 %indvars.iv319, 2 ; 2 uses
  %exitcond323.not.1 = icmp eq i64 %indvars.iv.next320.1, %i.ux
  br i1 %exitcond323.not.1, label %._crit_edge208, label %scalar.ph564, !llvm.loop !1567

bb.z:                                             ; preds = %bb.x
  %i.wo = getelementptr inbounds nuw i8, ptr %i.ug, i64 72
  %i.wp = load i32, ptr %i.wo, align 8, !tbaa !117
  %i.wq = sext i32 %i.wp to i64
  %i.wr = load ptr, ptr %i.ug, align 8, !tbaa !124
  %i.ws = getelementptr inbounds nuw [8 x i8], ptr %i.wr, i64 %i.wq
  %i.wt = load ptr, ptr %i.ws, align 8, !tbaa !125 ; 4 uses
  %i.wu = load ptr, ptr %i.ax, align 8, !tbaa !126
  %i.wv = load ptr, ptr %i.wu, align 8, !tbaa !125 ; 5 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.wx = load i32, ptr %i.ww, align 8, !tbaa !128 ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %i.ax, i64 28
  %i.wz = load i32, ptr %i.wy, align 4, !tbaa !133 ; 3 uses
  %i.xa = icmp sgt i32 %i.wx, 0
  %i.xb = icmp sgt i32 %i.wz, 0
  %or.cond270 = select i1 %i.xa, i1 %i.xb, i1 false
  br i1 %or.cond270, label %.preheader188.preheader, label %_ZN2cv4gapi5fluid12run_arithm_sIhhEEvRNS1_6BufferERKNS1_4ViewEPKfNS1_6ArithmEf.exit

.preheader188.preheader:                          ; preds = %bb.z
  %i.xc = ptrtoaddr ptr %i.wv to i64
  %i.xd = zext nneg i32 %i.wz to i64              ; 7 uses
  %wide.trip.count317 = zext nneg i32 %i.wx to i64
  %i.xe = sub i64 %i.xc, %i.av
  %i.xf = shl nuw nsw i64 %i.xd, 2
  %min.iters.check544 = icmp ult i32 %i.wz, 8
  %invariant.op826 = add i64 %i.xe, -1
  %n.vec546 = and i64 %i.xd, 2147483640           ; 3 uses
  %cmp.n555 = icmp eq i64 %n.vec546, %i.xd
  %xtraiter820 = and i64 %i.xd, 1
  %lcmp.mod821.not = icmp eq i64 %xtraiter820, 0
  %i.xg = add nsw i64 %i.xd, -1
  br label %.preheader188

.preheader188:                                    ; preds = %.preheader188.preheader, %._crit_edge204
  %indvars.iv314 = phi i64 [ 0, %.preheader188.preheader ], [ %indvars.iv.next315, %._crit_edge204 ] ; 3 uses
  %i.xh = mul nuw nsw i64 %indvars.iv314, %i.xd   ; 4 uses
  br i1 %min.iters.check544, label %scalar.ph543.preheader, label %vector.memcheck541

vector.memcheck541:                               ; preds = %.preheader188
  %i.xi = mul i64 %i.xf, %indvars.iv314
  %.reass827 = add i64 %i.xi, %invariant.op826
  %diff.check542 = icmp ult i64 %.reass827, 31
  br i1 %diff.check542, label %scalar.ph543.preheader, label %vector.body547

vector.body547:                                   ; preds = %vector.memcheck541, %vector.body547
  %index548 = phi i64 [ %index.next553, %vector.body547 ], [ 0, %vector.memcheck541 ] ; 3 uses
  %i.xj = add nuw nsw i64 %index548, %i.xh        ; 2 uses
  %i.xk = getelementptr inbounds nuw [2 x i8], ptr %i.wt, i64 %i.xj ; 2 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 8
  %wide.load549 = load <4 x i16>, ptr %i.xk, align 2, !tbaa !140
  %wide.load550 = load <4 x i16>, ptr %i.xl, align 2, !tbaa !140
  %i.xm = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %index548 ; 2 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 16
  %wide.load551 = load <4 x float>, ptr %i.xm, align 4, !tbaa !162
  %wide.load552 = load <4 x float>, ptr %i.xn, align 4, !tbaa !162
  %i.xo = uitofp <4 x i16> %wide.load549 to <4 x float>
  %i.xp = uitofp <4 x i16> %wide.load550 to <4 x float>
  %i.xq = fmul <4 x float> %wide.load551, %i.xo
  %i.xr = fmul <4 x float> %wide.load552, %i.xp
  %i.xs = getelementptr inbounds nuw [4 x i8], ptr %i.wv, i64 %i.xj ; 2 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 16
  store <4 x float> %i.xq, ptr %i.xs, align 4, !tbaa !162
  store <4 x float> %i.xr, ptr %i.xt, align 4, !tbaa !162
  %index.next553 = add nuw i64 %index548, 8       ; 2 uses
  %i.xu = icmp eq i64 %index.next553, %n.vec546
  br i1 %i.xu, label %middle.block554, label %vector.body547, !llvm.loop !1568

middle.block554:                                  ; preds = %vector.body547
  br i1 %cmp.n555, label %._crit_edge204, label %scalar.ph543.preheader

scalar.ph543.preheader:                           ; preds = %vector.memcheck541, %.preheader188, %middle.block554
  %indvars.iv309.ph = phi i64 [ 0, %vector.memcheck541 ], [ 0, %.preheader188 ], [ %n.vec546, %middle.block554 ] ; 5 uses
  br i1 %lcmp.mod821.not, label %scalar.ph543.prol.loopexit, label %scalar.ph543.prol

scalar.ph543.prol:                                ; preds = %scalar.ph543.preheader
  %i.xv = add nuw nsw i64 %indvars.iv309.ph, %i.xh ; 2 uses
  %i.xw = getelementptr inbounds nuw [2 x i8], ptr %i.wt, i64 %i.xv
  %i.xx = load i16, ptr %i.xw, align 2, !tbaa !140
  %i.xy = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv309.ph
  %i.xz = load float, ptr %i.xy, align 4, !tbaa !162
  %i.ya = uitofp i16 %i.xx to float
  %i.yb = fmul float %i.xz, %i.ya
  %i.yc = getelementptr inbounds nuw [4 x i8], ptr %i.wv, i64 %i.xv
  store float %i.yb, ptr %i.yc, align 4, !tbaa !162
  %indvars.iv.next310.prol = or disjoint i64 %indvars.iv309.ph, 1
  br label %scalar.ph543.prol.loopexit

scalar.ph543.prol.loopexit:                       ; preds = %scalar.ph543.prol, %scalar.ph543.preheader
  %indvars.iv309.unr = phi i64 [ %indvars.iv309.ph, %scalar.ph543.preheader ], [ %indvars.iv.next310.prol, %scalar.ph543.prol ]
  %i.yd = icmp eq i64 %indvars.iv309.ph, %i.xg
  br i1 %i.yd, label %._crit_edge204, label %scalar.ph543

._crit_edge204:                                   ; preds = %scalar.ph543.prol.loopexit, %scalar.ph543, %middle.block554
  %indvars.iv.next315 = add nuw nsw i64 %indvars.iv314, 1 ; 2 uses
  %exitcond318.not = icmp eq i64 %indvars.iv.next315, %wide.trip.count317
  br i1 %exitcond318.not, label %_ZN2cv4gapi5fluid12run_arithm_sIhhEEvRNS1_6BufferERKNS1_4ViewEPKfNS1_6ArithmEf.exit, label %.preheader188, !llvm.loop !1569

scalar.ph543:                                     ; preds = %scalar.ph543.prol.loopexit, %scalar.ph543
  %indvars.iv309 = phi i64 [ %indvars.iv.next310.1, %scalar.ph543 ], [ %indvars.iv309.unr, %scalar.ph543.prol.loopexit ] ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN2cv4gapi5fluid13GFluidMulCOld3runERKNS1_4ViewEdiRNS1_6BufferES7_:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.g, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.w

bb.g:                                             ; preds = %bb.a
  %i.m = tail call noundef i32 @_ZNK2cv4gapi5fluid6Buffer1yEv(ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.n = icmp eq i32 %i.m, 0
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !89   ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !126
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !125  ; 31 uses
  %i.s = ptrtoaddr ptr %i.r to i64                ; 2 uses
  br i1 %i.n, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.u = load i32, ptr %i.t, align 8, !tbaa !128  ; 3 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.h
  %i.w = fptrunc double %1 to float               ; 2 uses
  %wide.trip.count = zext nneg i32 %i.u to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.u, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.w, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <4 x float> %broadcast.splat, ptr %i.x, align 4, !tbaa !162
  store <4 x float> %broadcast.splat, ptr %i.y, align 4, !tbaa !162
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !1580

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv
  store float %i.w, ptr %i.aa, align 4, !tbaa !162
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !1581

.loopexit:                                        ; preds = %scalar.ph, %middle.block, %bb.g, %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !89 ; 22 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !99
  switch i32 %i.ae, label %.thread78 [
    i32 0, label %bb.i
    i32 3, label %bb.m
    i32 5, label %bb.o
  ]

bb.i:                                             ; preds = %.loopexit
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !107 ; 7 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !99
  switch i32 %i.ah, label %.thread78 [
    i32 0, label %bb.j
    i32 3, label %bb.k
    i32 5, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !117
  %i.ak = sext i32 %i.aj to i64
  %i.al = load ptr, ptr %i.af, align 8, !tbaa !124
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ak
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !125 ; 4 uses
  %i.ao = load ptr, ptr %i.ac, align 8, !tbaa !126
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !125 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !128 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 28
  %i.at = load i32, ptr %i.as, align 4, !tbaa !133 ; 3 uses
  %i.au = icmp sgt i32 %i.ar, 0
  %i.av = icmp sgt i32 %i.at, 0
  %or.cond = select i1 %i.au, i1 %i.av, i1 false
  br i1 %or.cond, label %.preheader.preheader, label %_ZN2cv4gapi5fluid12run_arithm_sIhhEEvRNS1_6BufferERKNS1_4ViewEPKfNS1_6ArithmEf.exit

.preheader.preheader:                             ; preds = %bb.j
  %i.aw = zext nneg i32 %i.at to i64              ; 6 uses
  %wide.trip.count200 = zext nneg i32 %i.ar to i64 ; 2 uses
  %i.ax = mul nuw nsw i64 %wide.trip.count200, %i.aw ; 2 uses
  %scevgep348 = getelementptr i8, ptr %i.ap, i64 %i.ax ; 2 uses
  %scevgep349 = getelementptr i8, ptr %i.an, i64 %i.ax
  %i.ay = shl nuw nsw i64 %i.aw, 2
  %scevgep350 = getelementptr i8, ptr %i.r, i64 %i.ay
  %min.iters.check359 = icmp ult i32 %i.at, 4
  %bound0351 = icmp ult ptr %i.ap, %scevgep349
  %bound1352 = icmp ult ptr %i.an, %scevgep348
  %found.conflict353 = and i1 %bound0351, %bound1352
  %bound0354 = icmp ult ptr %i.ap, %scevgep350
  %bound1355 = icmp ult ptr %i.r, %scevgep348
  %found.conflict356 = and i1 %bound0354, %bound1355
  %conflict.rdx357 = or i1 %found.conflict353, %found.conflict356
  %n.vec361 = and i64 %i.aw, 2147483644           ; 3 uses
  %cmp.n368 = icmp eq i64 %n.vec361, %i.aw
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge117
  %indvars.iv197 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next198, %._crit_edge117 ] ; 2 uses
  %i.az = mul nuw nsw i64 %indvars.iv197, %i.aw   ; 2 uses
  %brmerge = select i1 %min.iters.check359, i1 true, i1 %conflict.rdx357
  br i1 %brmerge, label %scalar.ph358.preheader, label %vector.body362

vector.body362:                                   ; preds = %.preheader, %vector.body362
  %index363 = phi i64 [ %index.next366, %vector.body362 ], [ 0, %.preheader ] ; 3 uses
  %i.ba = add nuw nsw i64 %index363, %i.az        ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ba
  %wide.load364 = load <4 x i8>, ptr %i.bb, align 1, !tbaa !39, !alias.scope !1582
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %index363
  %wide.load365 = load <4 x float>, ptr %i.bc, align 4, !tbaa !162, !alias.scope !1585
  %i.bd = uitofp <4 x i8> %wide.load364 to <4 x float>
  %i.be = fmul <4 x float> %wide.load365, %i.bd
  %i.bf = tail call <4 x float> @llvm.rint.v4f32(<4 x float> %i.be)
  %i.bg = fptosi <4 x float> %i.bf to <4 x i32>   ; 2 uses
  %i.bh = icmp slt <4 x i32> %i.bg, zeroinitializer
  %i.bi = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.bg, <4 x i32> splat (i32 255))
  %i.bj = trunc nuw <4 x i32> %i.bi to <4 x i8>
  %i.bk = select <4 x i1> %i.bh, <4 x i8> zeroinitializer, <4 x i8> %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ba
  store <4 x i8> %i.bk, ptr %i.bl, align 1, !tbaa !39, !alias.scope !1587, !noalias !1589
  %index.next366 = add nuw i64 %index363, 4       ; 2 uses
  %i.bm = icmp eq i64 %index.next366, %n.vec361
  br i1 %i.bm, label %middle.block367, label %vector.body362, !llvm.loop !1590

middle.block367:                                  ; preds = %vector.body362
  br i1 %cmp.n368, label %._crit_edge117, label %scalar.ph358.preheader

scalar.ph358.preheader:                           ; preds = %.preheader, %middle.block367
  %indvars.iv192.ph = phi i64 [ %n.vec361, %middle.block367 ], [ 0, %.preheader ]
  br label %scalar.ph358

._crit_edge117:                                   ; preds = %scalar.ph358, %middle.block367
  %indvars.iv.next198 = add nuw nsw i64 %indvars.iv197, 1 ; 2 uses
  %exitcond201.not = icmp eq i64 %indvars.iv.next198, %wide.trip.count200
  br i1 %exitcond201.not, label %_ZN2cv4gapi5fluid12run_arithm_sIhhEEvRNS1_6BufferERKNS1_4ViewEPKfNS1_6ArithmEf.exit, label %.preheader, !llvm.loop !1482

scalar.ph358:                                     ; preds = %scalar.ph358.preheader, %scalar.ph358
  %indvars.iv192 = phi i64 [ %indvars.iv.next193, %scalar.ph358 ], [ %indvars.iv192.ph, %scalar.ph358.preheader ] ; 3 uses
  %i.bn = add nuw nsw i64 %indvars.iv192, %i.az   ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !39
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv192
  %i.br = load float, ptr %i.bq, align 4, !tbaa !162
  %i.bs = uitofp i8 %i.bp to float
  %i.bt = fmul float %i.br, %i.bs
  %i.bu = tail call noundef float @rintf(float noundef %i.bt) #25, !callees !172, !inline_history !173
  %i.bv = fptosi float %i.bu to i32               ; 2 uses
  %i.bw = icmp slt i32 %i.bv, 0
  %spec.select3.i = tail call i32 @llvm.umin.i32(i32 %i.bv, i32 255)
  %spec.select.i = trunc nuw i32 %spec.select3.i to i8
  %i.bx = select i1 %i.bw, i8 0, i8 %spec.select.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bn
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !39
  %indvars.iv.next193 = add nuw nsw i64 %indvars.iv192, 1 ; 2 uses
  %exitcond196.not = icmp eq i64 %indvars.iv.next193, %i.aw
  br i1 %exitcond196.not, label %._crit_edge117, label %scalar.ph358, !llvm.loop !1591

bb.k:                                             ; preds = %bb.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !117
  %i.cb = sext i32 %i.ca to i64
  %i.cc = load ptr, ptr %i.af, align 8, !tbaa !124
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cb
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !125 ; 4 uses
  %i.cf = load ptr, ptr %i.ac, align 8, !tbaa !126
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !125 ; 5 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !128 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ac, i64 28
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !133 ; 3 uses
  %i.cl = icmp sgt i32 %i.ci, 0
  %i.cm = icmp sgt i32 %i.ck, 0
  %or.cond119 = select i1 %i.cl, i1 %i.cm, i1 false
  br i1 %or.cond119, label %.preheader79.preheader, label %_ZN2cv4gapi5fluid12run_arithm_sIhhEEvRNS1_6BufferERKNS1_4ViewEPKfNS1_6ArithmEf.exit

.preheader79.preheader:                           ; preds = %bb.k
  %i.cn = zext nneg i32 %i.ck to i64              ; 6 uses
  %wide.trip.count190 = zext nneg i32 %i.ci to i64 ; 2 uses
  %i.co = mul nuw nsw i64 %wide.trip.count190, %i.cn ; 2 uses
  %scevgep325 = getelementptr i8, ptr %i.cg, i64 %i.co ; 2 uses
  %i.cp = shl nuw nsw i64 %i.co, 1
  %scevgep326 = getelementptr i8, ptr %i.ce, i64 %i.cp
  %i.cq = shl nuw nsw i64 %i.cn, 2
  %scevgep327 = getelementptr i8, ptr %i.r, i64 %i.cq
  %min.iters.check336 = icmp ult i32 %i.ck, 4
  %bound0328 = icmp ult ptr %i.cg, %scevgep326
  %bound1329 = icmp ult ptr %i.ce, %scevgep325
  %found.conflict330 = and i1 %bound0328, %bound1329
  %bound0331 = icmp ult ptr %i.cg, %scevgep327
  %bound1332 = icmp ult ptr %i.r, %scevgep325
  %found.conflict333 = and i1 %bound0331, %bound1332
  %conflict.rdx334 = or i1 %found.conflict330, %found.conflict333
  %n.vec338 = and i64 %i.cn, 2147483644           ; 3 uses
  %cmp.n345 = icmp eq i64 %n.vec338, %i.cn
  br label %.preheader79

.preheader79:                                     ; preds = %.preheader79.preheader, %._crit_edge113
  %indvars.iv187 = phi i64 [ 0, %.preheader79.preheader ], [ %indvars.iv.next188, %._crit_edge113 ] ; 2 uses
  %i.cr = mul nuw nsw i64 %indvars.iv187, %i.cn   ; 2 uses
  %brmerge383 = select i1 %min.iters.check336, i1 true, i1 %conflict.rdx334
  br i1 %brmerge383, label %scalar.ph335.preheader, label %vector.body339

vector.body339:                                   ; preds = %.preheader79, %vector.body339
  %index340 = phi i64 [ %index.next343, %vector.body339 ], [ 0, %.preheader79 ] ; 3 uses
  %i.cs = add nuw nsw i64 %index340, %i.cr        ; 2 uses
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %i.ce, i64 %i.cs
  %wide.load341 = load <4 x i16>, ptr %i.ct, align 2, !tbaa !140, !alias.scope !1592
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %index340
  %wide.load342 = load <4 x float>, ptr %i.cu, align 4, !tbaa !162, !alias.scope !1595
  %i.cv = sitofp <4 x i16> %wide.load341 to <4 x float>
  %i.cw = fmul <4 x float> %wide.load342, %i.cv
  %i.cx = tail call <4 x float> @llvm.rint.v4f32(<4 x float> %i.cw)
  %i.cy = fptosi <4 x float> %i.cx to <4 x i32>   ; 2 uses
  %i.cz = icmp slt <4 x i32> %i.cy, zeroinitializer
  %i.da = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.cy, <4 x i32> splat (i32 255))
  %i.db = trunc nuw <4 x i32> %i.da to <4 x i8>
  %i.dc = select <4 x i1> %i.cz, <4 x i8> zeroinitializer, <4 x i8> %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cs
  store <4 x i8> %i.dc, ptr %i.dd, align 1, !tbaa !39, !alias.scope !1597, !noalias !1599
  %index.next343 = add nuw i64 %index340, 4       ; 2 uses
  %i.de = icmp eq i64 %index.next343, %n.vec338
  br i1 %i.de, label %middle.block344, label %vector.body339, !llvm.loop !1600

middle.block344:                                  ; preds = %vector.body339
  br i1 %cmp.n345, label %._crit_edge113, label %scalar.ph335.preheader

scalar.ph335.preheader:                           ; preds = %.preheader79, %middle.block344
  %indvars.iv182.ph = phi i64 [ %n.vec338, %middle.block344 ], [ 0, %.preheader79 ]
  br label %scalar.ph335

._crit_edge113:                                   ; preds = %scalar.ph335, %middle.block344
  %indvars.iv.next188 = add nuw nsw i64 %indvars.iv187, 1 ; 2 uses
  %exitcond191.not = icmp eq i64 %indvars.iv.next188, %wide.trip.count190
  br i1 %exitcond191.not, label %_ZN2cv4gapi5fluid12run_arithm_sIhhEEvRNS1_6BufferERKNS1_4ViewEPKfNS1_6ArithmEf.exit, label %.preheader79, !llvm.loop !1504

scalar.ph335:                                     ; preds = %scalar.ph335.preheader, %scalar.ph335
  %indvars.iv182 = phi i64 [ %indvars.iv.next183, %scalar.ph335 ], [ %indvars.iv182.ph, %scalar.ph335.preheader ] ; 3 uses
  %i.df = add nuw nsw i64 %indvars.iv182, %i.cr   ; 2 uses
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %i.ce, i64 %i.df
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !140
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv182
  %i.dj = load float, ptr %i.di, align 4, !tbaa !162
  %i.dk = sitofp i16 %i.dh to float
  %i.dl = fmul float %i.dj, %i.dk
  %i.dm = tail call noundef float @rintf(float noundef %i.dl) #25, !callees !172, !inline_history !173
  %i.dn = fptosi float %i.dm to i32               ; 2 uses
  %i.do = icmp slt i32 %i.dn, 0
  %spec.select3.i66 = tail call i32 @llvm.umin.i32(i32 %i.dn, i32 255)
  %spec.select.i67 = trunc nuw i32 %spec.select3.i66 to i8
  %i.dp = select i1 %i.do, i8 0, i8 %spec.select.i67
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.df
  store i8 %i.dp, ptr %i.dq, align 1, !tbaa !39
  %indvars.iv.next183 = add nuw nsw i64 %indvars.iv182, 1 ; 2 uses
  %exitcond186.not = icmp eq i64 %indvars.iv.next183, %i.cn
  br i1 %exitcond186.not, label %._crit_edge113, label %scalar.ph335, !llvm.loop !1601

bb.l:                                             ; preds = %bb.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !117
  %i.dt = sext i32 %i.ds to i64
  %i.du = load ptr, ptr %i.af, align 8, !tbaa !124
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.dt
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !125 ; 4 uses
  %i.dx = load ptr, ptr %i.ac, align 8, !tbaa !126
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !125 ; 5 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !128 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ac, i64 28
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !133 ; 3 uses
  %i.ed = icmp sgt i32 %i.ea, 0
  %i.ee = icmp sgt i32 %i.ec, 0
  %or.cond120 = select i1 %i.ed, i1 %i.ee, i1 false
  br i1 %or.cond120, label %.preheader81.preheader, label %_ZN2cv4gapi5fluid12run_arithm_sIhhEEvRNS1_6BufferERKNS1_4ViewEPKfNS1_6ArithmEf.exit

.preheader81.preheader:                           ; preds = %bb.l
  %i.ef = zext nneg i32 %i.ec to i64              ; 6 uses
  %wide.trip.count180 = zext nneg i32 %i.ea to i64 ; 2 uses
  %i.eg = mul nuw nsw i64 %wide.trip.count180, %i.ef ; 2 uses
  %scevgep302 = getelementptr i8, ptr %i.dy, i64 %i.eg ; 2 uses
  %i.eh = shl nuw i64 %i.eg, 2
  %scevgep303 = getelementptr i8, ptr %i.dw, i64 %i.eh
  %i.ei = shl nuw nsw i64 %i.ef, 2
  %scevgep304 = getelementptr i8, ptr %i.r, i64 %i.ei
  %min.iters.check313 = icmp ult i32 %i.ec, 4
  %bound0305 = icmp ult ptr %i.dy, %scevgep303
  %bound1306 = icmp ult ptr %i.dw, %scevgep302
  %found.conflict307 = and i1 %bound0305, %bound1306
  %bound0308 = icmp ult ptr %i.dy, %scevgep304
  %bound1309 = icmp ult ptr %i.r, %scevgep302
  %found.conflict310 = and i1 %bound0308, %bound1309
  %conflict.rdx311 = or i1 %found.conflict307, %found.conflict310
  %n.vec315 = and i64 %i.ef, 2147483644           ; 3 uses
  %cmp.n322 = icmp eq i64 %n.vec315, %i.ef
  br label %.preheader81

.preheader81:                                     ; preds = %.preheader81.preheader, %._crit_edge109
  %indvars.iv177 = phi i64 [ 0, %.preheader81.preheader ], [ %indvars.iv.next178, %._crit_edge109 ] ; 2 uses
  %i.ej = mul nuw nsw i64 %indvars.iv177, %i.ef   ; 2 uses
  %brmerge384 = select i1 %min.iters.check313, i1 true, i1 %conflict.rdx311
  br i1 %brmerge384, label %scalar.ph312.preheader, label %vector.body316

vector.body316:                                   ; preds = %.preheader81, %vector.body316
  %index317 = phi i64 [ %index.next320, %vector.body316 ], [ 0, %.preheader81 ] ; 3 uses
  %i.ek = add nuw nsw i64 %index317, %i.ej        ; 2 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.ek
  %wide.load318 = load <4 x float>, ptr %i.el, align 4, !tbaa !162, !alias.scope !1602
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %index317
  %wide.load319 = load <4 x float>, ptr %i.em, align 4, !tbaa !162, !alias.scope !1605
  %i.en = fmul <4 x float> %wide.load318, %wide.load319
  %i.eo = tail call <4 x float> @llvm.rint.v4f32(<4 x float> %i.en)
  %i.ep = fptosi <4 x float> %i.eo to <4 x i32>   ; 2 uses
  %i.eq = icmp slt <4 x i32> %i.ep, zeroinitializer
  %i.er = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ep, <4 x i32> splat (i32 255))
  %i.es = trunc nuw <4 x i32> %i.er to <4 x i8>
  %i.et = select <4 x i1> %i.eq, <4 x i8> zeroinitializer, <4 x i8> %i.es
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.ek
  store <4 x i8> %i.et, ptr %i.eu, align 1, !tbaa !39, !alias.scope !1607, !noalias !1609
  %index.next320 = add nuw i64 %index317, 4       ; 2 uses
  %i.ev = icmp eq i64 %index.next320, %n.vec315
  br i1 %i.ev, label %middle.block321, label %vector.body316, !llvm.loop !1610

middle.block321:                                  ; preds = %vector.body316
  br i1 %cmp.n322, label %._crit_edge109, label %scalar.ph312.preheader

scalar.ph312.preheader:                           ; preds = %.preheader81, %middle.block321
  %indvars.iv172.ph = phi i64 [ %n.vec315, %middle.block321 ], [ 0, %.preheader81 ]
  br label %scalar.ph312

._crit_edge109:                                   ; preds = %scalar.ph312, %middle.block321
  %indvars.iv.next178 = add nuw nsw i64 %indvars.iv177, 1 ; 2 uses
  %exitcond181.not = icmp eq i64 %indvars.iv.next178, %wide.trip.count180
  br i1 %exitcond181.not, label %_ZN2cv4gapi5fluid12run_arithm_sIhhEEvRNS1_6BufferERKNS1_4ViewEPKfNS1_6ArithmEf.exit, label %.preheader81, !llvm.loop !1515

scalar.ph312:                                     ; preds = %scalar.ph312.preheader, %scalar.ph312
  %indvars.iv172 = phi i64 [ %indvars.iv.next173, %scalar.ph312 ], [ %indvars.iv172.ph, %scalar.ph312.preheader ] ; 3 uses
  %i.ew = add nuw nsw i64 %indvars.iv172, %i.ej   ; 2 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.ew
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !162
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv172
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !162
  %i.fb = fmul float %i.ey, %i.fa
  %i.fc = tail call noundef float @rintf(float noundef %i.fb) #25, !callees !172, !inline_history !173
  %i.fd = fptosi float %i.fc to i32               ; 2 uses
  %i.fe = icmp slt i32 %i.fd, 0
  %spec.select4.i = tail call i32 @llvm.umin.i32(i32 %i.fd, i32 255)
  %spec.select.i68 = trunc nuw i32 %spec.select4.i to i8
  %i.ff = select i1 %i.fe, i8 0, i8 %spec.select.i68
  %i.fg = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.ew
  store i8 %i.ff, ptr %i.fg, align 1, !tbaa !39
  %indvars.iv.next173 = add nuw nsw i64 %indvars.iv172, 1 ; 2 uses
  %exitcond176.not = icmp eq i64 %indvars.iv.next173, %i.ef
  br i1 %exitcond176.not, label %._crit_edge109, label %scalar.ph312, !llvm.loop !1611

bb.m:                                             ; preds = %.loopexit
  %i.fh = load ptr, ptr %i.a, align 8, !tbaa !107 ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 24
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !99
  %i.fk = icmp eq i32 %i.fj, 3
  br i1 %i.fk, label %bb.n, label %.thread78

bb.n:                                             ; preds = %bb.m
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fh, i64 72
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !117
  %i.fn = sext i32 %i.fm to i64
  %i.fo = load ptr, ptr %i.fh, align 8, !tbaa !124
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %i.fn
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !125 ; 3 uses
  %i.fr = load ptr, ptr %i.ac, align 8, !tbaa !126
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !125 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.fu = load i32, ptr %i.ft, align 8, !tbaa !128 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ac, i64 28
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !133 ; 3 uses
  %i.fx = icmp sgt i32 %i.fu, 0
  %i.fy = icmp sgt i32 %i.fw, 0
  %or.cond121 = select i1 %i.fx, i1 %i.fy, i1 false
  br i1 %or.cond121, label %.preheader83.preheader, label %_ZN2cv4gapi5fluid12run_arithm_sIhhEEvRNS1_6BufferERKNS1_4ViewEPKfNS1_6ArithmEf.exit

.preheader83.preheader:                           ; preds = %bb.n
  %i.fz = ptrtoaddr ptr %i.fs to i64
  %i.ga = ptrtoaddr ptr %i.fq to i64
  %i.gb = zext nneg i32 %i.fw to i64              ; 4 uses
  %wide.trip.count170 = zext nneg i32 %i.fu to i64
  %min.iters.check290 = icmp ult i32 %i.fw, 4
  %i.gc = sub i64 %i.ga, %i.fz
  %diff.check288 = icmp ugt i64 %i.gc, -8
  %or.cond370 = select i1 %min.iters.check290, i1 true, i1 %diff.check288
  %n.vec292 = and i64 %i.gb, 2147483644           ; 3 uses
  %cmp.n299 = icmp eq i64 %n.vec292, %i.gb
  br label %.preheader83

.preheader83:                                     ; preds = %.preheader83.preheader, %._crit_edge105
  %indvars.iv167 = phi i64 [ 0, %.preheader83.preheader ], [ %indvars.iv.next168, %._crit_edge105 ] ; 2 uses
  %i.gd = mul nuw nsw i64 %indvars.iv167, %i.gb   ; 2 uses
  br i1 %or.cond370, label %scalar.ph289.preheader, label %vector.body293

vector.body293:                                   ; preds = %.preheader83, %vector.body293
  %index294 = phi i64 [ %index.next297, %vector.body293 ], [ 0, %.preheader83 ] ; 3 uses
  %i.ge = add nuw nsw i64 %index294, %i.gd        ; 2 uses
  %i.gf = getelementptr inbounds nuw [2 x i8], ptr %i.fq, i64 %i.ge
  %wide.load295 = load <4 x i16>, ptr %i.gf, align 2, !tbaa !140
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %index294
  %wide.load296 = load <4 x float>, ptr %i.gg, align 4, !tbaa !162
  %i.gh = sitofp <4 x i16> %wide.load295 to <4 x float>
  %i.gi = fmul <4 x float> %wide.load296, %i.gh
  %i.gj = tail call <4 x float> @llvm.rint.v4f32(<4 x float> %i.gi)
  %i.gk = tail call <4 x i16> @llvm.fptosi.sat.v4i16.v4f32(<4 x float> %i.gj)
  %i.gl = getelementptr inbounds nuw [2 x i8], ptr %i.fs, i64 %i.ge
  store <4 x i16> %i.gk, ptr %i.gl, align 2, !tbaa !140
  %index.next297 = add nuw i64 %index294, 4       ; 2 uses
  %i.gm = icmp eq i64 %index.next297, %n.vec292
  br i1 %i.gm, label %middle.block298, label %vector.body293, !llvm.loop !1612

middle.block298:                                  ; preds = %vector.body293
  br i1 %cmp.n299, label %._crit_edge105, label %scalar.ph289.preheader

scalar.ph289.preheader:                           ; preds = %.preheader83, %middle.block298
  %indvars.iv162.ph = phi i64 [ 0, %.preheader83 ], [ %n.vec292, %middle.block298 ]
  br label %scalar.ph289

._crit_edge105:                                   ; preds = %scalar.ph289, %middle.block298
  %indvars.iv.next168 = add nuw nsw i64 %indvars.iv167, 1 ; 2 uses
  %exitcond171.not = icmp eq i64 %indvars.iv.next168, %wide.trip.count170
  br i1 %exitcond171.not, label %_ZN2cv4gapi5fluid12run_arithm_sIhhEEvRNS1_6BufferERKNS1_4ViewEPKfNS1_6ArithmEf.exit, label %.preheader83, !llvm.loop !1538

scalar.ph289:                                     ; preds = %scalar.ph289.preheader, %scalar.ph289
  %indvars.iv162 = phi i64 [ %indvars.iv.next163, %scalar.ph289 ], [ %indvars.iv162.ph, %scalar.ph289.preheader ] ; 3 uses
  %i.gn = add nuw nsw i64 %indvars.iv162, %i.gd   ; 2 uses
  %i.go = getelementptr inbounds nuw [2 x i8], ptr %i.fq, i64 %i.gn
  %i.gp = load i16, ptr %i.go, align 2, !tbaa !140
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv162
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !162
  %i.gs = sitofp i16 %i.gp to float
  %i.gt = fmul float %i.gr, %i.gs
  %i.gu = tail call noundef float @rintf(float noundef %i.gt) #25, !callees !172, !inline_history !195
  %i.gv = tail call noundef i16 @llvm.fptosi.sat.i16.f32(float %i.gu)
  %i.gw = getelementptr inbounds nuw [2 x i8], ptr %i.fs, i64 %i.gn
  store i16 %i.gv, ptr %i.gw, align 2, !tbaa !140
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1 ; 2 uses
  %exitcond166.not = icmp eq i64 %indvars.iv.next163, %i.gb
  br i1 %exitcond166.not, label %._crit_edge105, label %scalar.ph289, !llvm.loop !1613

bb.o:                                             ; preds = %.loopexit
  %i.gx = load ptr, ptr %i.a, align 8, !tbaa !107 ; 7 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 24
  %i.gz = load i32, ptr %i.gy, align 8, !tbaa !99
  switch i32 %i.gz, label %.thread78 [
    i32 0, label %bb.p
    i32 3, label %bb.q
    i32 5, label %bb.r
  ]

bb.p:                                             ; preds = %bb.o
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 72
  %i.hb = load i32, ptr %i.ha, align 8, !tbaa !117
  %i.hc = sext i32 %i.hb to i64
  %i.hd = load ptr, ptr %i.gx, align 8, !tbaa !124
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %i.hc
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !125 ; 6 uses
  %i.hg = load ptr, ptr %i.ac, align 8, !tbaa !126
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !125 ; 7 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.hj = load i32, ptr %i.hi, align 8, !tbaa !128 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.ac, i64 28
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !133 ; 3 uses
  %i.hm = icmp sgt i32 %i.hj, 0
  %i.hn = icmp sgt i32 %i.hl, 0
  %or.cond122 = select i1 %i.hm, i1 %i.hn, i1 false
  br i1 %or.cond122, label %.preheader85.preheader, label %_ZN2cv4gapi5fluid12run_arithm_sIhhEEvRNS1_6BufferERKNS1_4ViewEPKfNS1_6ArithmEf.exit

.preheader85.preheader:                           ; preds = %bb.p
  %i.ho = zext nneg i32 %i.hl to i64              ; 8 uses
  %wide.trip.count160 = zext nneg i32 %i.hj to i64 ; 2 uses
  %i.hp = mul nuw nsw i64 %wide.trip.count160, %i.ho ; 2 uses
  %i.hq = shl nuw i64 %i.hp, 2
  %scevgep = getelementptr i8, ptr %i.hh, i64 %i.hq ; 2 uses
  %scevgep267 = getelementptr i8, ptr %i.hf, i64 %i.hp
  %i.hr = shl nuw nsw i64 %i.ho, 2
  %scevgep268 = getelementptr i8, ptr %i.r, i64 %i.hr
  %min.iters.check274 = icmp ult i32 %i.hl, 8
  %bound0 = icmp ult ptr %i.hh, %scevgep267
  %bound1 = icmp ult ptr %i.hf, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0269 = icmp ult ptr %i.hh, %scevgep268
  %bound1270 = icmp ult ptr %i.r, %scevgep
  %found.conflict271 = and i1 %bound0269, %bound1270
  %conflict.rdx272 = or i1 %found.conflict, %found.conflict271
  %n.vec276 = and i64 %i.ho, 2147483640           ; 3 uses
  %cmp.n285 = icmp eq i64 %n.vec276, %i.ho
  %xtraiter379 = and i64 %i.ho, 1
  %lcmp.mod380.not = icmp eq i64 %xtraiter379, 0
  %i.hs = add nsw i64 %i.ho, -1
  br label %.preheader85

.preheader85:                                     ; preds = %.preheader85.preheader, %._crit_edge101
  %indvars.iv157 = phi i64 [ 0, %.preheader85.preheader ], [ %indvars.iv.next158, %._crit_edge101 ] ; 2 uses
  %i.ht = mul nuw nsw i64 %indvars.iv157, %i.ho   ; 4 uses
  %brmerge385 = select i1 %min.iters.check274, i1 true, i1 %conflict.rdx272
  br i1 %brmerge385, label %scalar.ph273.preheader, label %vector.body277

vector.body277:                                   ; preds = %.preheader85, %vector.body277
  %index278 = phi i64 [ %index.next283, %vector.body277 ], [ 0, %.preheader85 ] ; 3 uses
  %i.hu = add nuw nsw i64 %index278, %i.ht        ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.hu ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 4
  %wide.load279 = load <4 x i8>, ptr %i.hv, align 1, !tbaa !39, !alias.scope !1614
  %wide.load280 = load <4 x i8>, ptr %i.hw, align 1, !tbaa !39, !alias.scope !1614
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %index278 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  %wide.load281 = load <4 x float>, ptr %i.hx, align 4, !tbaa !162, !alias.scope !1617
  %wide.load282 = load <4 x float>, ptr %i.hy, align 4, !tbaa !162, !alias.scope !1617
  %i.hz = uitofp <4 x i8> %wide.load279 to <4 x float>
  %i.ia = uitofp <4 x i8> %wide.load280 to <4 x float>
  %i.ib = fmul <4 x float> %wide.load281, %i.hz
  %i.ic = fmul <4 x float> %wide.load282, %i.ia
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.hu ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  store <4 x float> %i.ib, ptr %i.id, align 4, !tbaa !162, !alias.scope !1619, !noalias !1621
  store <4 x float> %i.ic, ptr %i.ie, align 4, !tbaa !162, !alias.scope !1619, !noalias !1621
  %index.next283 = add nuw i64 %index278, 8       ; 2 uses
  %i.if = icmp eq i64 %index.next283, %n.vec276
  br i1 %i.if, label %middle.block284, label %vector.body277, !llvm.loop !1622

middle.block284:                                  ; preds = %vector.body277
  br i1 %cmp.n285, label %._crit_edge101, label %scalar.ph273.preheader

scalar.ph273.preheader:                           ; preds = %.preheader85, %middle.block284
  %indvars.iv152.ph = phi i64 [ %n.vec276, %middle.block284 ], [ 0, %.preheader85 ] ; 5 uses
  br i1 %lcmp.mod380.not, label %scalar.ph273.prol.loopexit, label %scalar.ph273.prol

scalar.ph273.prol:                                ; preds = %scalar.ph273.preheader
  %i.ig = add nuw nsw i64 %indvars.iv152.ph, %i.ht ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.ig
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !39
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv152.ph
  %i.ik = load float, ptr %i.ij, align 4, !tbaa !162
  %i.il = uitofp i8 %i.ii to float
  %i.im = fmul float %i.ik, %i.il
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.ig
  store float %i.im, ptr %i.in, align 4, !tbaa !162
  %indvars.iv.next153.prol = or disjoint i64 %indvars.iv152.ph, 1
  br label %scalar.ph273.prol.loopexit

scalar.ph273.prol.loopexit:                       ; preds = %scalar.ph273.prol, %scalar.ph273.preheader
  %indvars.iv152.unr = phi i64 [ %indvars.iv152.ph, %scalar.ph273.preheader ], [ %indvars.iv.next153.prol, %scalar.ph273.prol ]
  %i.io = icmp eq i64 %indvars.iv152.ph, %i.hs
  br i1 %i.io, label %._crit_edge101, label %scalar.ph273

._crit_edge101:                                   ; preds = %scalar.ph273.prol.loopexit, %scalar.ph273, %middle.block284
  %indvars.iv.next158 = add nuw nsw i64 %indvars.iv157, 1 ; 2 uses
  %exitcond161.not = icmp eq i64 %indvars.iv.next158, %wide.trip.count160
  br i1 %exitcond161.not, label %_ZN2cv4gapi5fluid12run_arithm_sIhhEEvRNS1_6BufferERKNS1_4ViewEPKfNS1_6ArithmEf.exit, label %.preheader85, !llvm.loop !1566

scalar.ph273:                                     ; preds = %scalar.ph273.prol.loopexit, %scalar.ph273
  %indvars.iv152 = phi i64 [ %indvars.iv.next153.1, %scalar.ph273 ], [ %indvars.iv152.unr, %scalar.ph273.prol.loopexit ] ; 4 uses
  %i.ip = add nuw nsw i64 %indvars.iv152, %i.ht   ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.ip
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !39
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv152
  %i.it = load float, ptr %i.is, align 4, !tbaa !162
  %i.iu = uitofp i8 %i.ir to float
  %i.iv = fmul float %i.it, %i.iu
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.ip
  store float %i.iv, ptr %i.iw, align 4, !tbaa !162
  %indvars.iv.next153 = add nuw nsw i64 %indvars.iv152, 1 ; 2 uses
  %i.ix = add nuw nsw i64 %indvars.iv.next153, %i.ht ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.ix
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !39
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.next153
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !162
  %i.jc = uitofp i8 %i.iz to float
  %i.jd = fmul float %i.jb, %i.jc
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.ix
  store float %i.jd, ptr %i.je, align 4, !tbaa !162
  %indvars.iv.next153.1 = add nuw nsw i64 %indvars.iv152, 2 ; 2 uses
  %exitcond156.not.1 = icmp eq i64 %indvars.iv.next153.1, %i.ho
  br i1 %exitcond156.not.1, label %._crit_edge101, label %scalar.ph273, !llvm.loop !1623

bb.q:                                             ; preds = %bb.o
  %i.jf = getelementptr inbounds nuw i8, ptr %i.gx, i64 72
  %i.jg = load i32, ptr %i.jf, align 8, !tbaa !117
  %i.jh = sext i32 %i.jg to i64
  %i.ji = load ptr, ptr %i.gx, align 8, !tbaa !124
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %i.jh
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !125 ; 4 uses
  %i.jl = load ptr, ptr %i.ac, align 8, !tbaa !126
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !125 ; 5 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.jo = load i32, ptr %i.jn, align 8, !tbaa !128 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ac, i64 28
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !133 ; 3 uses
  %i.jr = icmp sgt i32 %i.jo, 0
  %i.js = icmp sgt i32 %i.jq, 0
  %or.cond123 = select i1 %i.jr, i1 %i.js, i1 false
  br i1 %or.cond123, label %.preheader87.preheader, label %_ZN2cv4gapi5fluid12run_arithm_sIhhEEvRNS1_6BufferERKNS1_4ViewEPKfNS1_6ArithmEf.exit

.preheader87.preheader:                           ; preds = %bb.q
  %i.jt = ptrtoaddr ptr %i.jm to i64
  %i.ju = zext nneg i32 %i.jq to i64              ; 7 uses
  %wide.trip.count150 = zext nneg i32 %i.jo to i64
  %i.jv = sub i64 %i.jt, %i.s
  %i.jw = shl nuw nsw i64 %i.ju, 2
  %min.iters.check253 = icmp ult i32 %i.jq, 8
  %invariant.op381 = add i64 %i.jv, -1
  %n.vec255 = and i64 %i.ju, 2147483640           ; 3 uses
  %cmp.n264 = icmp eq i64 %n.vec255, %i.ju
  %xtraiter377 = and i64 %i.ju, 1
  %lcmp.mod378.not = icmp eq i64 %xtraiter377, 0
  %i.jx = add nsw i64 %i.ju, -1
  br label %.preheader87

.preheader87:                                     ; preds = %.preheader87.preheader, %._crit_edge97
  %indvars.iv147 = phi i64 [ 0, %.preheader87.preheader ], [ %indvars.iv.next148, %._crit_edge97 ] ; 3 uses
  %i.jy = mul nuw nsw i64 %indvars.iv147, %i.ju   ; 4 uses
  br i1 %min.iters.check253, label %scalar.ph252.preheader, label %vector.memcheck250

vector.memcheck250:                               ; preds = %.preheader87
  %i.jz = mul i64 %i.jw, %indvars.iv147
  %.reass382 = add i64 %i.jz, %invariant.op381
  %diff.check251 = icmp ult i64 %.reass382, 31
  br i1 %diff.check251, label %scalar.ph252.preheader, label %vector.body256

vector.body256:                                   ; preds = %vector.memcheck250, %vector.body256
  %index257 = phi i64 [ %index.next262, %vector.body256 ], [ 0, %vector.memcheck250 ] ; 3 uses
  %i.ka = add nuw nsw i64 %index257, %i.jy        ; 2 uses
  %i.kb = getelementptr inbounds nuw [2 x i8], ptr %i.jk, i64 %i.ka ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 8
  %wide.load258 = load <4 x i16>, ptr %i.kb, align 2, !tbaa !140
  %wide.load259 = load <4 x i16>, ptr %i.kc, align 2, !tbaa !140
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %index257 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 16
  %wide.load260 = load <4 x float>, ptr %i.kd, align 4, !tbaa !162
  %wide.load261 = load <4 x float>, ptr %i.ke, align 4, !tbaa !162
  %i.kf = sitofp <4 x i16> %wide.load258 to <4 x float>
  %i.kg = sitofp <4 x i16> %wide.load259 to <4 x float>
  %i.kh = fmul <4 x float> %wide.load260, %i.kf
  %i.ki = fmul <4 x float> %wide.load261, %i.kg
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %i.ka ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 16
  store <4 x float> %i.kh, ptr %i.kj, align 4, !tbaa !162
  store <4 x float> %i.ki, ptr %i.kk, align 4, !tbaa !162
  %index.next262 = add nuw i64 %index257, 8       ; 2 uses
  %i.kl = icmp eq i64 %index.next262, %n.vec255
  br i1 %i.kl, label %middle.block263, label %vector.body256, !llvm.loop !1624

middle.block263:                                  ; preds = %vector.body256
  br i1 %cmp.n264, label %._crit_edge97, label %scalar.ph252.preheader

scalar.ph252.preheader:                           ; preds = %vector.memcheck250, %.preheader87, %middle.block263
  %indvars.iv142.ph = phi i64 [ 0, %vector.memcheck250 ], [ 0, %.preheader87 ], [ %n.vec255, %middle.block263 ] ; 5 uses
  br i1 %lcmp.mod378.not, label %scalar.ph252.prol.loopexit, label %scalar.ph252.prol

scalar.ph252.prol:                                ; preds = %scalar.ph252.preheader
  %i.km = add nuw nsw i64 %indvars.iv142.ph, %i.jy ; 2 uses
  %i.kn = getelementptr inbounds nuw [2 x i8], ptr %i.jk, i64 %i.km
  %i.ko = load i16, ptr %i.kn, align 2, !tbaa !140
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv142.ph
  %i.kq = load float, ptr %i.kp, align 4, !tbaa !162
  %i.kr = sitofp i16 %i.ko to float
  %i.ks = fmul float %i.kq, %i.kr
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %i.km
  store float %i.ks, ptr %i.kt, align 4, !tbaa !162
  %indvars.iv.next143.prol = or disjoint i64 %indvars.iv142.ph, 1
  br label %scalar.ph252.prol.loopexit

scalar.ph252.prol.loopexit:                       ; preds = %scalar.ph252.prol, %scalar.ph252.preheader
  %indvars.iv142.unr = phi i64 [ %indvars.iv142.ph, %scalar.ph252.preheader ], [ %indvars.iv.next143.prol, %scalar.ph252.prol ]
  %i.ku = icmp eq i64 %indvars.iv142.ph, %i.jx
  br i1 %i.ku, label %._crit_edge97, label %scalar.ph252

._crit_edge97:                                    ; preds = %scalar.ph252.prol.loopexit, %scalar.ph252, %middle.block263
  %indvars.iv.next148 = add nuw nsw i64 %indvars.iv147, 1 ; 2 uses
  %exitcond151.not = icmp eq i64 %indvars.iv.next148, %wide.trip.count150
  br i1 %exitcond151.not, label %_ZN2cv4gapi5fluid12run_arithm_sIhhEEvRNS1_6BufferERKNS1_4ViewEPKfNS1_6ArithmEf.exit, label %.preheader87, !llvm.loop !1572

scalar.ph252:                                     ; preds = %scalar.ph252.prol.loopexit, %scalar.ph252
  %indvars.iv142 = phi i64 [ %indvars.iv.next143.1, %scalar.ph252 ], [ %indvars.iv142.unr, %scalar.ph252.prol.loopexit ] ; 4 uses
end_hunk_1
